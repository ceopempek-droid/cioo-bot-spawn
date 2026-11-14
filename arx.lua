local HttpService = game:GetService("HttpService")
local WEBHOOK_URL = "https://arx-spawn-bot2-production-c0788293.up.railway.app/webhook/spawn"

local function kirimSpawn(egg, rarity, biome)
	local data = {egg = egg, rarity = rarity, biome = biome, player = "Auto Tracker"}
	local json = HttpService:JSONEncode(data)
	pcall(function() HttpService:PostAsync(WEBHOOK_URL, json, Enum.HttpContentType.ApplicationJson) end)
	print("ARX: KIRIM " .. egg)
end

task.wait(5)
kirimSpawn("Crystal Egg", "Divine", "Alien Biome")
print("ARX LOADSTRING UDAH JALAN!")
