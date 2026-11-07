-- This file is loaded from "ClassIconNotPortrait.toc"

local CLASS_ICON_TEXTURE = "Interface\\TargetingFrame\\UI-Classes-Circles"

local function UpdatePortrait(self)
    -- guard against frames without unit/portrait (e.g. partially built frames)
    if not (self and self.portrait and self.unit) then
        return
    end

    if UnitIsPlayer(self.unit) then
        local classToken = select(2, UnitClass(self.unit))
        local coords = classToken and CLASS_ICON_TCOORDS[classToken]
        if coords then
            self.portrait:SetTexture(CLASS_ICON_TEXTURE)
            self.portrait:SetTexCoord(unpack(coords))
        end
    else
        -- undo class-circle crop if the portrait texture object was recycled
        -- from a previously shown player frame
        self.portrait:SetTexCoord(0, 1, 0, 1)
    end
end

hooksecurefunc("UnitFramePortrait_Update", UpdatePortrait)
