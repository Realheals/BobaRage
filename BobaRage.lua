local zgRage = CreateFrame("Frame");
local mcRage = CreateFrame("Frame");
local loot = CreateFrame("Frame");

NOISE_AMP = 8

zgRage:RegisterEvent("PLAYER_TARGET_CHANGED")
mcRage:RegisterEvent("PLAYER_DEAD")
loot:RegisterEvent("START_LOOT_ROLL")


local function zgRageEvent(self, event, ...)
	name = GetInstanceInfo()
	if UnitName("target") == "Gurubashi Berserker" then
 		for i=0,NOISE_AMP,1 do 
 			PlaySoundFile("Interface/AddOns/BobaRage/BlueBerry.mp3", "Master")
 		end
 	end
end

local function mcRageEvent(self, event, ...)
	instanceName = GetInstanceInfo()
	if instanceName == "Molten Core" then
		for i=0,NOISE_AMP,1 do 	
			PlaySoundFile("Interface/AddOns/BobaRage/Reagents.mp3", "Master")
		end
	end 
end

local function lootEvent(self, event, roll)
	name = GetInstanceInfo()
	_, info = GetLootRollItemInfo(roll)
	if name == "Zul'Gurub" and (string.match(info, ".*Coin$") or string.match(info, ".*Bijou$")) then
		RollOnLoot(roll, 2)
	end
end


zgRage:SetScript("OnEvent", zgRageEvent)
mcRage:SetScript("OnEvent", mcRageEvent)
loot:SetScript("OnEvent", lootEvent)
