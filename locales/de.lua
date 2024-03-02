local Translations = {
    error = {
        not_information = 'Der Artikel hat keine Informationen. Kaufe Graffiti im Geschäft!',
        not_found = 'Graffiti nicht gefunden.',
        gang_only = 'Dieses Graffiti ist nur für Gangs.',
        exist_graffiti = 'Jemand hat bereits Graffiti in der Nähe angebracht.',
        blacklist_location = 'Du kannst an diesem Ort kein Graffiti anbringen.',
        not_have_money = 'Du hast nicht genug Geld. Du benötigst mehr (%{value}$)'
    },

    success = {
        buy_spraycan = 'Du hast eine Graffiti-Dose für %{value}$ mit dem Namen: %{value2} gekauft.',
    },

    blip = {
        graffiti_shop = 'Graffiti-Geschäft'
    },

    target = {
        graffiti_shop = 'Graffiti-Geschäft'
    },

    menu = {
        graffiti_shop = 'Graffiti-Geschäft'
    },

    progressbar = {
        spraying_on_wall = 'Sprühe mit Farbe',
        washing_the_wall = 'Wasche die Wand' 
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})