SLASH_RELOADUI1 = "/r1" -- For quicker reloading
SlashCmdList.RELOADUI = ReloadUI

SLASH_FRAMESTK1 = "/fs" -- for quicker access to frame stack
SlashCmdList.FRAMESTK = function()
	LoadAddOn('Blizzard_DebugTools')
	FrameStackTooltip_Toggle()
end

SLASH_SHOWTILTER = "/tilter"

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
local tilterFrame = CreateFrame("Frame", "AoeEmote", UIParent, "BasicFrameTemplateWithInset");

-- set UI size
tilterFrame:SetSize(300, 360);  -- width, height

-- set UI position: point, relativeFrame, relativePoint, xOffset, yOffset
tilterFrame:SetPoint("CENTER", UIParent, "LEFT", 150, 0);

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

-- tilterFrame is the parent frame for all other child frames and layers
-- regions we will ad on to it, to make it graphical

-- Child frames and regions:

tilterFrame.title = tilterFrame:CreateFontString(nil, "OVERLAY");
tilterFrame.title:SetFontObject("GameFontHighlight");
tilterFrame.title:SetPoint("LEFT", tilterFrame.TitleBg, "LEFT", 5, 0);
tilterFrame.title:SetText("Tilter 9000");

-- UI Spit Button:
tilterFrame.spitButton = CreateFrame("Button", nil, tilterFrame, "GameMenuButtonTemplate");
tilterFrame.spitButton:SetPoint("CENTER", tilterFrame, "TOP", 0, -70);
tilterFrame.spitButton:SetSize(140, 40);
tilterFrame.spitButton:SetText("Spit");
tilterFrame.spitButton:SetNormalFontObject("GameFontNormalLarge");
tilterFrame.spitButton:SetHighlightFontObject("GameFontHighlightLarge");
tilterFrame.spitButton:SetScript("OnClick", function()
    SendChatMessage("spits on you.", "EMOTE", nil, name)
end
)
    
-- UI Cringe Button:
tilterFrame.cringeButton = CreateFrame("Button", nil, tilterFrame, "GameMenuButtonTemplate");
tilterFrame.cringeButton:SetPoint("CENTER", tilterFrame, "TOP", 0, -140);
tilterFrame.cringeButton:SetSize(140, 40);
tilterFrame.cringeButton:SetText("Cringe");
tilterFrame.cringeButton:SetNormalFontObject("GameFontNormalLarge");
tilterFrame.cringeButton:SetHighlightFontObject("GameFontHighlightLarge");
tilterFrame.cringeButton:SetScript("OnClick", function()
    SendChatMessage("cringes at you.", "EMOTE", nil, name)
end
)

-- UI Laugh Button:
tilterFrame.laughButton = CreateFrame("Button", nil, tilterFrame, "GameMenuButtonTemplate");
tilterFrame.laughButton:SetPoint("CENTER", tilterFrame, "TOP", 0, -210);
tilterFrame.laughButton:SetSize(140, 40);
tilterFrame.laughButton:SetText("Laugh");
tilterFrame.laughButton:SetNormalFontObject("GameFontNormalLarge");
tilterFrame.laughButton:SetHighlightFontObject("GameFontHighlightLarge");
tilterFrame.laughButton:SetScript("OnClick", function()
    SendChatMessage("laughs at you.", "EMOTE", nil, name)
end
)

-- UI Fart Button:
tilterFrame.fartButton = CreateFrame("Button", nil, tilterFrame, "GameMenuButtonTemplate");
tilterFrame.fartButton:SetPoint("CENTER", tilterFrame, "TOP", 0, -280);
tilterFrame.fartButton:SetSize(140, 40);
tilterFrame.fartButton:SetText("Fart");
tilterFrame.fartButton:SetNormalFontObject("GameFontNormalLarge");
tilterFrame.fartButton:SetHighlightFontObject("GameFontHighlightLarge");
tilterFrame.fartButton:SetScript("OnClick", function()
    SendChatMessage("farts on you.", "EMOTE", nil, name)
end
)
