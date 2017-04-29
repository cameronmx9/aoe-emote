SLASH_RELOADUI1 = "/r1" -- For quicker reloading
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- for quicker access to frame stack
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end


-- to be able to use the left and right arrows in the edit box
-- without rotating your character
for i = 1, NUM_CHAT_WINDOWS do
	_G["ChatFrame"..i.."EditBox"]:SetAltArrowKeyMode(false) 
end

--------------------------------------------------------------

--[[
CreateFrame Arguments:
1. The type of frame - "Frame"
2. The global frame name - "AoeEmote"
3. The Parent frame (NOT a string)
4. The comma separated List<String> of XML templates to inherit from
	-- this does not need to be comma separated list though, but
	-- we are only using one here "BasicFrameTemplateWithInset"

]]
-- returns a new instance of a frame
local UIConfig = CreateFrame("Frame", "AoeEmote", UIParent, "BasicFrameTemplateWithInset");

-- set UI size
UIConfig:SetSize(300, 360);  -- width, height

-- set UI position: point, relativeFrame, relativePoint, xOffset, yOffset
UIConfig:SetPoint("CENTER", UIParent, "LEFT", 150, 0);

--[[
 "CENTER could instead have been any of the following"
 "TOPLEFT"
 "TOP"
 "TOPRIGHT"
 "LEFT"
 "CENTER"
 "RIGHT"
 "BOTTOMlEFT"

]]

-- UIConfig is the parent frame for all other child frames and layers
-- regions we will ad on to it, to make it graphical

-- Child frames and regions:

UIConfig.title = UIConfig:CreateFontString(nil, "OVERLAY");
UIConfig.title:SetFontObject("GameFontHighlight");
UIConfig.title:SetPoint("LEFT", UIConfig.TitleBg, "LEFT", 5, 0);
UIConfig.title:SetText("Tilter 9000");

-- UI Spit Button:
UIConfig.spitButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.spitButton:SetPoint("CENTER", UIConfig, "TOP", 0, -70);
UIConfig.spitButton:SetSize(140, 40);
UIConfig.spitButton:SetText("Spit");
UIConfig.spitButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.spitButton:SetHighlightFontObject("GameFontHighlightLarge");
UIConfig.spitButton:SetScript("OnClick", function()
    SendChatMessage("spits on you.", "EMOTE", nil, name)
end
)
    
-- UI Cringe Button:
UIConfig.cringeButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.cringeButton:SetPoint("CENTER", UIConfig, "TOP", 0, -140);
UIConfig.cringeButton:SetSize(140, 40);
UIConfig.cringeButton:SetText("Cringe");
UIConfig.cringeButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.cringeButton:SetHighlightFontObject("GameFontHighlightLarge");
UIConfig.cringeButton:SetScript("OnClick", function()
    SendChatMessage("cringes at you.", "EMOTE", nil, name)
end
)

-- UI Laugh Button:
UIConfig.laughButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.laughButton:SetPoint("CENTER", UIConfig, "TOP", 0, -210);
UIConfig.laughButton:SetSize(140, 40);
UIConfig.laughButton:SetText("Laugh");
UIConfig.laughButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.laughButton:SetHighlightFontObject("GameFontHighlightLarge");
UIConfig.laughButton:SetScript("OnClick", function()
    SendChatMessage("laughs at you.", "EMOTE", nil, name)
end
)

-- UI Fart Button:
UIConfig.fartButton = CreateFrame("Button", nil, UIConfig, "GameMenuButtonTemplate");
UIConfig.fartButton:SetPoint("CENTER", UIConfig, "TOP", 0, -280);
UIConfig.fartButton:SetSize(140, 40);
UIConfig.fartButton:SetText("Fart");
UIConfig.fartButton:SetNormalFontObject("GameFontNormalLarge");
UIConfig.fartButton:SetHighlightFontObject("GameFontHighlightLarge");
UIConfig.fartButton:SetScript("OnClick", function()
    SendChatMessage("farts on you.", "EMOTE", nil, name)
end
)
