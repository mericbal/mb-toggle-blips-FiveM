# mb-toggle-blips-FiveM

Here is a small script for toggling on &amp; off in game blips.

You can manage all blips with this script. but you need to turn off the original qb-core blips on your own.
For example , I went ahead and turned off all blip for qb-banking in my server and I added them in this script to make them toggleable.. 
I have done the same thing for qb-clothing, qb-garages, qb-shops, jim-mechanic and so on.


Dependencies 

qb-core,
qb-radialmenu


Here is the preview

https://youtu.be/GBiDRLcp8Yo


Credits to me and all FiveM community.


Here is how to add in your qb-radialmenu/config.lua

![image](https://user-images.githubusercontent.com/16532389/236545252-f35b2b6d-b4f9-4aa2-9f88-56f68f46f7a6.png)

--

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
