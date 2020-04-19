local zgRage = CreateFrame("Frame");
local mcRage = CreateFrame("Frame");

NOISE_AMP = 10

zgRage:RegisterEvent("PLAYER_TARGET_CHANGED")
mcRage:RegisterEvent("PLAYER_DEAD")


local function zgRageEvent(self, event, ...)
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


zgRage:SetScript("OnEvent", zgRageEvent)
mcRage:SetScript("OnEvent", mcRageEvent)
