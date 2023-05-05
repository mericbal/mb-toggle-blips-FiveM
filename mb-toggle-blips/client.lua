-- mb

local QBCore = exports['qb-core']:GetCoreObject()

local time = Config.NotifyTime * 1000

local garage_blips	 	= {} 	local garage_blips_on	 	 = false
local market_blips 		= {} 	local market_blips_on	 	 = false
local shop_blips   		= {} 	local shop_blips_on  	 	 = false
local bank_blips   		= {} 	local bank_blips_on  		 = false
local clothing_blips  	= {} 	local clothing_blips_on  	 = false
local mechanic_blips  	= {} 	local mechanic_blips_on  	 = false


function BlipsOn(input, tbl)
	for k,val in pairs(input) do
		local blip = AddBlipForCoord(val.Coords.x, val.Coords.y, val.Coords.z)
		SetBlipSprite(blip, val.sprite)
		SetBlipDisplay(blip, 6)
		SetBlipScale(blip, val.size)
		SetBlipColour(blip, val.color)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(val.name)
		EndTextCommandSetBlipName(blip)
		-- SetBlipHighDetail(blip, true)
		table.insert(tbl, blip)
	end
end

function BlipsOff(input)
	for k,val in pairs(input) do
		RemoveBlip(val)
	end
end

RegisterNetEvent("mb-toggle-blips:client:ToggleGarages", function()
	if not garage_blips_on then
		BlipsOn(Config.GarageBlips, garage_blips)
		garage_blips_on = true
		QBCore.Functions.Notify(Config.GarageNotifyOn[1], Config.GarageNotifyOn[2], time)
	else
		BlipsOff(garage_blips)
		garage_blips = {}
		garage_blips_on = false
		QBCore.Functions.Notify(Config.GarageNotifyOff[1], Config.GarageNotifyOff[2], time)
	end
end)

RegisterNetEvent("mb-toggle-blips:client:ToggleMarkets", function()
	if not market_blips_on then
		BlipsOn(Config.MarketBlips, market_blips)
		market_blips_on = true
		QBCore.Functions.Notify(Config.MarketNotifyOn[1], Config.MarketNotifyOn[2], time)
	else
		BlipsOff(market_blips)
		market_blips = {}
		market_blips_on = false
		QBCore.Functions.Notify(Config.MarketNotifyOff[1], Config.MarketNotifyOff[2], time)
	end
end)

RegisterNetEvent("mb-toggle-blips:client:ToggleShops", function()
	if not shop_blips_on then
		BlipsOn(Config.ShopBlips, shop_blips)
		shop_blips_on = true
		QBCore.Functions.Notify(Config.ShopNotifyOn[1], Config.ShopNotifyOn[2], time)
	else
		BlipsOff(shop_blips)
		shop_blips = {}
		shop_blips_on = false
		QBCore.Functions.Notify(Config.ShopNotifyOff[1], Config.ShopNotifyOff[2], time)
	end
end)

RegisterNetEvent("mb-toggle-blips:client:ToggleBanks", function()
	if not bank_blips_on then
		BlipsOn(Config.BankBlips, bank_blips)
		bank_blips_on = true
		QBCore.Functions.Notify(Config.BankNotifyOn[1], Config.BankNotifyOn[2], time)
	else
		BlipsOff(bank_blips)
		bank_blips = {}
		bank_blips_on = false
		QBCore.Functions.Notify(Config.BankNotifyOff[1], Config.BankNotifyOff[2], time)
	end
end)

RegisterNetEvent("mb-toggle-blips:client:ToggleClothings", function()
	if not clothing_blips_on then
		BlipsOn(Config.ClothingBlips, clothing_blips)
		clothing_blips_on = true
		QBCore.Functions.Notify(Config.ClothingNotifyOn[1], Config.ClothingNotifyOn[2], time)
	else
		BlipsOff(clothing_blips)
		clothing_blips = {}
		clothing_blips_on = false
		QBCore.Functions.Notify(Config.ClothingNotifyOff[1], Config.ClothingNotifyOff[2], time)
	end
end)

RegisterNetEvent("mb-toggle-blips:client:ToggleMechanics", function()
	if not mechanic_blips_on then
		BlipsOn(Config.MechanicBlips, mechanic_blips)
		mechanic_blips_on = true
		QBCore.Functions.Notify(Config.MechanicNotifyOn[1], Config.MechanicNotifyOn[2], time)
	else
		BlipsOff(mechanic_blips)
		mechanic_blips = {}
		mechanic_blips_on = false
		QBCore.Functions.Notify(Config.MechanicNotifyOff[1], Config.MechanicNotifyOff[2], time)
	end
end)




-- Commands - You can activate or make your new commands.
---------------------------------------------------------------------

-- RegisterCommand("blips-on", function()
-- 	TriggerEvent("mb-toggle-blips:client:ToggleOn")
-- end)

-- RegisterCommand("blips-off", function()
-- 	TriggerEvent("mb-toggle-blips:client:ToggleOff")
-- end)

--