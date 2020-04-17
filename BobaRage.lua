local frame = CreateFrame("Frame");
frame:RegisterEvent("PLAYER_TARGET_CHANGED");

NOISE_AMP = 15


local function eventHandler(self, event, ...)
	if UnitName("target") == "Gurubashi Berserker" then
 		for i=0,NOISE_AMP,1 do 
 			PlaySoundFile("Interface/AddOns/BobaRage/BlueBerry.mp3", "Master")
 		end
 	end
end

frame:SetScript("OnEvent", eventHandler)

