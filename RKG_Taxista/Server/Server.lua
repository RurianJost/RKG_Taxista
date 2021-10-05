local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local vRP = Proxy.getInterface("vRP")
local vRPclient = Tunnel.getInterface("vRP")

local oRP = {}
Tunnel.bindInterface(GetCurrentResourceName(),oRP)
local vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

function oRP.checkPaymentTaxi()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local value = math.random(RKGConfig.Payment[1],RKGConfig.Payment[2])
        --vRP.giveMoney(user_id,parseInt(value))
        vRP.giveBankMoney(user_id,parseInt(value))
		TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>$"..parseInt(value).." dólares</b>.")
	end
end