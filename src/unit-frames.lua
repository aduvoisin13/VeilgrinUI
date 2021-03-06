local addonName, addonTable = ...

local PLAYER_FRAME_OFFSET_X = -120
local PLAYER_FRAME_OFFSET_Y = -180

local TARGET_FRAME_OFFSET_X = 120
local TARGET_FRAME_OFFSET_Y = -180

local FOCUS_FRAME_OFFSET_X = 340
local FOCUS_FRAME_OFFSET_Y = -180

local function MoveUnitFrame(frame, offsetX, offsetY)
    frame:ClearAllPoints()
    frame:SetPoint("CENTER", UIParent, "CENTER", offsetX, offsetY)
    frame.ClearAllPoints = function() end
    frame.SetPoint = function() end
end

local function RemovePrestige()
    PlayerPrestigeBadge:SetAlpha(0)
    PlayerPrestigePortrait:SetAlpha(0)

    TargetFrameTextureFramePrestigeBadge:SetAlpha(0)
    TargetFrameTextureFramePrestigePortrait:SetAlpha(0)

    FocusFrameTextureFramePrestigeBadge:SetAlpha(0)
    FocusFrameTextureFramePrestigePortrait:SetAlpha(0)
end

local function InitializeUnitFrames()
    MoveUnitFrame(PlayerFrame, PLAYER_FRAME_OFFSET_X, PLAYER_FRAME_OFFSET_Y)
    MoveUnitFrame(TargetFrame, TARGET_FRAME_OFFSET_X, TARGET_FRAME_OFFSET_Y)
    MoveUnitFrame(FocusFrame, FOCUS_FRAME_OFFSET_X, FOCUS_FRAME_OFFSET_Y)

    RemovePrestige()
end

addonTable.InitializeUnitFrames = InitializeUnitFrames