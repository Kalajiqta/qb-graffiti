local Translations = {
    error = {
        not_information = 'The item has no information. Buy graffiti from the shop!',
        not_found = 'Not found graffitis.',
        gang_only = 'This graffiti is for gangs only.',
        exist_graffiti = 'Someone has already put graffiti nearby.',
        blacklist_location = 'You cannot put graffiti on this place.',
        not_have_money = 'You not have enough money. You need more (%{value}$)'
    },

    success = {
        buy_spraycan = 'You bought a graffiti can for %{value}$ with the name: %{value2}',
    },

    blip = {
        graffiti_shop = 'Graffiti Shop'
    },

    target = {
        graffiti_shop = 'Graffiti Shop'
    },

    menu = {
        graffiti_shop = 'Graffiti Shop'
    },

    progressbar = {
        spraying_on_wall = 'Spraying with paint',
        washing_the_wall = 'Washing the wall' 
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})