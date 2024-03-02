isLoaded = false

CreateThread(function()
    MySQL.query('Select `key`, `owner`, `model`, `coords`, `rotation` from `graffitis`', {}, function(result)
        for k,v in pairs(result) do
            if v then
                local coords = json.decode(v.coords)
                local rotation = json.decode(v.rotation)

                Config.Graffitis[tonumber(v.key)] = {
                    key = tonumber(v.key),
                    model = tonumber(v.model),
                    coords = vector3(QBCore.Shared.Round(coords.x, 2), QBCore.Shared.Round(coords.y, 2), QBCore.Shared.Round(coords.z, 2)),
                    rotation = vector3(QBCore.Shared.Round(rotation.x, 2), QBCore.Shared.Round(rotation.y, 2), QBCore.Shared.Round(rotation.z, 2)),
                    entity = nil,
                    blip = nil
                }
            end
        end

        isLoaded = true
    end)
end)

QBCore.Functions.CreateCallback('qb-graffiti:server:getGraffitiData', function(source, cb)
    while not isLoaded do
        Wait(0)
    end

    cb(Config.Graffitis)
end)

RegisterServerEvent('qb-graffiti:client:addServerGraffiti', function(model, coords, rotation)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player and isLoaded then
        MySQL.insert('Insert into `graffitis` (owner, model, `coords`, `rotation`) values (@owner, @model, @coords, @rotation)', {
            ['@owner'] = Player.PlayerData.citizenid,
            ['@model'] = tostring(model),
            ['@coords'] = json.encode(vector3(QBCore.Shared.Round(coords.x, 2), QBCore.Shared.Round(coords.y, 2), QBCore.Shared.Round(coords.z, 2))),
            ['@rotation'] = json.encode(vector3(QBCore.Shared.Round(rotation.x, 2), QBCore.Shared.Round(rotation.y, 2), QBCore.Shared.Round(rotation.z, 2)))
        }, function(key)
            Config.Graffitis[tonumber(key)] = {
                key = tonumber(key),
                model = tonumber(model),
                coords = vector3(QBCore.Shared.Round(coords.x, 2), QBCore.Shared.Round(coords.y, 2), QBCore.Shared.Round(coords.z, 2)),
                rotation = vector3(QBCore.Shared.Round(rotation.x, 2), QBCore.Shared.Round(rotation.y, 2), QBCore.Shared.Round(rotation.z, 2)),
                entity = nil,
                blip = nil
            }

            UpdateGraffitiData()
        end)
    end
end)

RegisterServerEvent('qb-graffiti:server:removeServerGraffitiByKey', function(key)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player and isLoaded then
        MySQL.query('Delete from `graffitis` where `key` = @key', {
            ['@key'] = tonumber(key)
        }, function()
            Config.Graffitis[key] = nil
            UpdateGraffitiData()
        end)
    end
end)

RegisterServerEvent('qb-graffiti:server:graffitiShop', function(data)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player and isLoaded then
        if Player.Functions.RemoveMoney('cash', data.price) then
            Player.Functions.AddItem('spraycan', 1, false, {
                model = data.model,
                name = data.name
            })

            TriggerClientEvent('QBCore:Notify', source, Lang:t('success.buy_spraycan', {value = data.price, value2 = data.name}), 'success')
        else
            local morePrice = data.price - Player.PlayerData.money.cash 
            TriggerClientEvent('QBCore:Notify', source, Lang:t('error.not_have_money', {value = morePrice}), 'error')
        end
    end
end)

RegisterServerEvent('qb-graffiti:server:removeServerItem', function(item, amount, slot)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player and isLoaded then
        local itemData = QBCore.Shared.Items[item]

        if slot then
            Player.Functions.RemoveItem(item, amount, slot)
        else
            Player.Functions.RemoveItem(item, amount)
        end

        if itemData then
            TriggerClientEvent('inventory:client:ItemBox', source, itemData, 'remove')
        end
    end
end)

QBCore.Functions.CreateUseableItem('spraycan', function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player and isLoaded then
        if item.info then
            TriggerClientEvent('qb-graffiti:client:placeGraffiti', source, item.info.model, item.slot)
        else
            TriggerClientEvent('QBCore:Notify', source, Lang:t('error.not_information'), 'error')         
        end
    end
end)

QBCore.Functions.CreateUseableItem('sprayremover', function(source, item)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)

    if Player and isLoaded then
        TriggerClientEvent('qb-graffiti:client:removeClosestGraffiti', source, item.slot)
    end
end)
