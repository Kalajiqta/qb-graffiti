Config = {}
Config.Graffitis = {}
QBCore = exports['qb-core']:GetCoreObject()

Config.BlacklistedZones = {
    {coords = vector3(455.81, -997.04, 43.69), radius = 200.0}, -- Police
    {coords = vector3(324.76, -585.72, 59.15), radius = 300.0}, -- Hospital
    {coords = vector3(-376.73, -119.47, 40.73), radius = 400.0}, -- Mechanic
}

Config.Sprays = {
    [GetHashKey('sprays_angels')] = {
        name = 'Spray Angels',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_ballas')] = {
        name = 'Spray Ballas',
        price = 5000,
        blip = true,
        blipcolor = 27,
        gang = 'ballas'
    },

    [GetHashKey('sprays_bbmc')] = {
        name = 'Spray BBMC',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_bcf')] = {
        name = 'Spray BCF',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_bsk')] = {
        name = 'Spray BSK',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_cerberus')] = {
        name = 'Spray Cerberus',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_cg')] = {
        name = 'Spray CG',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_gg')] = {
        name = 'Spray GG',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_gsf')] = {
        name = 'Spray GSF',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_guild')] = {
        name = 'Spray Guild',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_hoa')] = {
        name = 'Spray Hoa',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_hydra')] = {
        name = 'Spray Hydra',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_kingz')] = {
        name = 'Spray Kingz',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_lost')] = {
        name = 'Spray Lost',
        price = 5000,
        blip = true,
        blipcolor = 22,
        gang = 'lost'
    },

    [GetHashKey('sprays_mandem')] = {
        name = 'Spray Mandem',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_mayhem')] = {
        name = 'Spray Mayhem',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_nbc')] = {
        name = 'Spray NBC',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_ramee')] = {
        name = 'Spray Ramee',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_ron')] = {
        name = 'Spray Ron',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_rust')] = {
        name = 'Spray Rust',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_scu')] = {
        name = 'Spray SCU',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_seaside')] = {
        name = 'Spray Seaside',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_st')] = {
        name = 'Spray ST',
        price = 5000,
        blip = false,
        blipcolor = 1,
        gang = nil
    },

    [GetHashKey('sprays_vagos')] = {
        name = 'Spray Vagos',
        price = 5000,
        blip = true,
        blipcolor = 28,
        gang = 'vagos'
    },
}