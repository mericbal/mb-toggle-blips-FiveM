-- Add this lines to your qb-radialmenu - config file

[3] = {
        id = 'allblips',
        title = 'Blips',
        icon = 'box',
        items = {
        {
            id = 'toggle-market-blips',
            title = 'Markets ✅',
            icon = 'bag-shopping',
            type = 'client',
            event = 'mb-toggle-blips:client:ToggleMarkets',
            shouldClose = false
        }, {
            id = 'toggle-garage-blips',
            title = 'Garages ✅',
            icon = 'car',
            type = 'client',
            event = 'mb-toggle-blips:client:ToggleGarages',
            shouldClose = false
        }, {
            id = 'toggle-bank-blips',
            title = 'Banks ✅',
            icon = 'list',
            type = 'client',
            event = 'mb-toggle-blips:client:ToggleBanks',
            shouldClose = false
        }, {
            id = 'toggle-shop-blips',
            title = 'Shops ✅',
            icon = 'bag-shopping',
            type = 'client',
            event = 'mb-toggle-blips:client:ToggleShops',
            shouldClose = false
        }, {
            id = 'toggle-mechanic-blips',
            title = 'Mechanics ✅',
            icon = 'wrench',
            type = 'client',
            event = 'mb-toggle-blips:client:ToggleMechanics',
            shouldClose = false
        }, {
            id = 'toggle-clothing-blips',
            title = 'Clothings ✅',
            icon = 'shirt',
            type = 'client',
            event = 'mb-toggle-blips:client:ToggleClothings',
            shouldClose = false
            },
        },
    },

--
