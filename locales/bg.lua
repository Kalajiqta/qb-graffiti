local Translations = {
    error = {
        not_information = 'Информацията за този артикул липсва. Купете си графити от магазина!',
        not_found = 'Графитите не са намерени.',
        gang_only = 'Тези графити са само за генгове.',
        exist_graffiti = 'Някой вече е поставил графити наблизо.',
        blacklist_location = 'Не можете да поставяте графити на това място.',
        not_have_money = 'Нямате достатъчно пари. Необходими са ви още (%{value}$)'
    },

    success = {
        buy_spraycan = 'Купихте графити боя за %{value}$ с името: %{value2}',
    },

    blip = {
        graffiti_shop = 'Магазин за графити'
    },

    target = {
        graffiti_shop = 'Магазин за графити'
    },

    menu = {
        graffiti_shop = 'Магазин за графити'
    },

    progressbar = {
        spraying_on_wall = 'Пръскане с боя',
        washing_the_wall = 'Измиване на стената' 
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})