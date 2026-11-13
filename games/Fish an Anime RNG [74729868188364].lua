local Constants
local A5
local BC
local BQ
local BT
local B3
local A3
local BW
local BA
local Options
local BO
local BL
local Library
local Toggles
local Be
local Bn
local LocalPlayer
local BZ
local Bq
local B7
local Bk
local Bi
local BP
local BG
local Ba
local Bl
local Bf
local function fn78()
    local EO = BT()
    if not EO then
        return
    end
    local EQ = Options.AutoFeedMode and Options.AutoFeedMode.Value
    local E2 = if EQ then 1 else 0
    local E0 = 113 * E2 + 2003 * (1 - E2)
    local E1 = 3906 * E2 + 1775 * (1 - E2)
    if not ((E0 * 3136 + E1 * 109 + E0 * E1) % 16777213 == 1221500) then
        EQ = "Level Up"
    end
    local EP_2 = Be[EQ] or "LevelUpPrompt"
    local EQ_2 = EP_2 == "LevelUp10Prompt" and LocalPlayer:GetAttribute("Rsh_B9") ~= true
    if EQ_2 then
        EP_2 = "LevelUpPrompt"
    end
    local EQ_3 = B3("AutoFeedRarities")
    local ER = next(EQ_3) ~= nil
    local ES = Bk()
    local ET = Bq()
    if not ET then
        return
    end
    local CFrame = ET.CFrame
    BO = true
    for i, descendant in EO:GetDescendants() do
        if descendant:GetAttribute("IsPlacedCharacter") == true then
            local EV = descendant:GetAttribute("Rarity") or ""
            local EW = tostring(EV)
            if not ER or EQ_3[EW] then
                local EV_2 = Bf(EO, descendant:GetAttribute("StandId"))
                local EW_1 = EV_2 and EV_2:FindFirstChild("PromptNode_Pickup")
                local EX = EW_1
                if EW_1 then
                    EW_1 = EX:FindFirstChild(EP_2)
                end
                local EY = EW_1
                if EW_1 then
                    EW_1 = EY:IsA("ProximityPrompt")
                end
                if EW_1 then
                    EW_1 = EY:GetAttribute("ServerEnabled") ~= false
                end
                if EW_1 then
                    local EW_2 = BG(EY.ActionText)
                    if EW_2 <= 0 or ES >= EW_2 then
                        local EZ_1 = EV_2:FindFirstChild("PromptPart")
                        local EV_3 = EZ_1 and EZ_1:IsA("BasePart")
                        if not EV_3 then
                            EZ_1 = EX:FindFirstChildWhichIsA("BasePart")
                        end
                        local EV_4 = EZ_1 and EZ_1:IsA("BasePart")
                        local EX_1 = not EV_4
                        if EX_1 ~= false then
                            EX_1 = EY.Parent
                        end
                        if EX_1 then
                            EX_1 = EY.Parent:IsA("BasePart")
                        end
                        if EX_1 then
                            EZ_1 = EY.Parent
                        end
                        if EZ_1 then
                            ET.CFrame = EZ_1.CFrame + Vector3.new(0, 3, 0)
                            task.wait(0.05)
                        end
                        BZ(EY, true)
                        if EW_2 > 0 then
                            ES -= EW_2
                        end
                        task.wait(0.15)
                    end
                end
            end
        end
    end
    if ET.Parent then
        ET.CFrame = CFrame
    end
    BO = false
end
local function fn98(g0)
    local DiscordGroup = g0:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = BW })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = BW })
end
local function fn122(bO)
    local Touch = bO:FindFirstChild("Touch", true)
    local D_ = Touch and Touch:IsA("BasePart")
    if D_ then
        return Touch
    end
    local Part = bO:FindFirstChild("Part", true)
    local D__1 = Part and Part:IsA("BasePart")
    if D__1 then
        return Part
    end
    return nil
end
local function fn153(bU, bV)
    local D1 = bV
    local D7 = if D1 then 1 else 0
    local D5 = 1145 * D7 + 3459 * (1 - D7)
    local D6 = 716 * D7 + 3948 * (1 - D7)
    if not ((D5 * 1746 + D6 * 2564 + D5 * D6) % 16777213 == 4654814) then
        D1 = ""
    end
    local D2 = tostring(D1)
    if D2 == "" then
        return true
    elseif bU:FindFirstChild(D2, true) then
        return true
    else
        local Purchases = bU:FindFirstChild("Purchases")
        local D3 = Purchases and Purchases:FindFirstChild(D2)
        if D3 then
            return true
        end
        return false
    end
end
local function fn185()
    local Es = tonumber(LocalPlayer:GetAttribute("FoodNumber")) or 0
    return Es
end
local function fn284(ab)
    local CX = {}
    local CY = {}
    local C0 = (Constants[ab] or {}).Offers or {}
    local C0_2
    local C1 = (Constants.Potions or {}).Definitions or {}
    for k, v in C0 do
        if v.Kind == "Potion" and v.PotionKey then
            local CZ_4 = C1[v.PotionKey]
            C0_2 = CZ_4 and CZ_4.ToolName or v.PotionKey
        elseif v.Kind == "Character" then
            C0_2 = "Random Character"
        elseif v.Kind == "Ability" then
            C0_2 = v.AbilityName or v.RodName or k
        elseif v.Kind == "BackpackStorage" then
            C0_2 = "Backpack Storage"
        elseif v.Kind == "Crate" then
            C0_2 = v.CrateKey or "Crate"
        else
            C0_2 = v.Kind or k
        end
        if CX[C0_2] then
            C0_2 = C0_2 .. " (" .. tostring(k) .. ")"
        end
        CY[#CY + 1] = C0_2
        CX[C0_2] = k
    end
    table.sort(CY)
    return CY, CX
end
local function fn350(a0)
    local Dd = Toggles[a0]
    return Dd and Dd.Value == true
end
local function fn353()
    local Character = LocalPlayer.Character
    local Dt = Character and Character:FindFirstChild("HumanoidRootPart")
    return Dt
end
local function fn416(aM, aN)
    return string.format('<font color="%s">%s</font>', aN, aM)
end
local function fn446(eX, eY)
    local GG = not eY or not eY:IsA("BasePart")
    local GM = if GG then 1 else 0
    local GK = 2570 * GM + 2677 * (1 - GM)
    local GL = 1708 * GM + 2267 * (1 - GM)
    if not ((GK * 2186 + GL * 2695 + GK * GL) % 16777213 == 14610640) then
        GG = typeof(eX) ~= "Vector3"
    end
    if GG then
        return math.huge
    end
    local GG_1 = eY.CFrame:PointToObjectSpace(eX)
    local GH = eY.Size * 0.5
    local GI = Vector3.new(math.clamp(GG_1.X, -GH.X, GH.X), math.clamp(GG_1.Y, -GH.Y, GH.Y), math.clamp(GG_1.Z, -GH.Z, GH.Z))
    return (GG_1 - GI).Magnitude
end
local function fn456(b0)
    local D8 = A5(b0)
    local D9 = Bq()
    if not D8 or not D9 or not b0.Parent then
        return false
    end
    local TimeToUnlock = b0:FindFirstChild("TimeToUnlock")
    local Eb = TimeToUnlock and TimeToUnlock.Value
    local Ea_2 = Bi(Eb) + 5
    BO = true
    local Eb_1 = os.clock()
    while true do
        local Ec = b0.Parent and not Library.Unloaded and A3("AutoBuyUnlockButtons") and os.clock() - Eb_1 < Ea_2
        if Ec then
            local D9_1 = Bq()
            if not D9_1 then
                break
            end
            local Ec_1 = BA()
            if Ec_1 then
                Ec_1.Sit = false
                Ec_1.PlatformStand = false
            end
            D9_1.CFrame = CFrame.new(D8.Position + Vector3.new(0, 3, 0))
            D9_1.AssemblyLinearVelocity = Vector3.zero
            if firetouchinterest then
                pcall(firetouchinterest, D9_1, D8, 0)
                pcall(firetouchinterest, D9_1, D8, 1)
            end
            task.wait(0.15)
            continue
        end
        break
    end
    local D8_1 = b0.Parent == nil
    BO = false
    return D8_1
end
local function fn476(bE)
    local DN = Bq()
    local DO = not DN
    local DS = if DO then 1 else 0
    local DQ = 1497 * DS + 3231 * (1 - DS)
    local DR = 868 * DS + 3898 * (1 - DS)
    if not ((DQ * 3583 + DR * 3198 + DQ * DR) % 16777213 == 9439011) then
        DO = not bE
    end
    if not DO then
        DO = not bE:IsA("BasePart")
    end
    if DO then
        return
    end
    if firetouchinterest then
        pcall(firetouchinterest, DN, bE, 0)
        pcall(firetouchinterest, DN, bE, 1)
        return
    end
    local CFrame = DN.CFrame
    DN.CFrame = bE.CFrame + Vector3.new(0, 3, 0)
    task.wait(0.05)
    DN.CFrame = CFrame
end
local function fn578()
    local PlayerPlots = BP:FindFirstChild("PlayerPlots")
    if not PlayerPlots then
        return nil
    end
    for i, child in PlayerPlots:GetChildren() do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function fn643(fg)
    local GY = fg
    while true do
        if not (GY and GY ~= BP) then
            return false
        end
        local GZ_1 = string.lower(GY.Name)
        local G__1 = string.find(GZ_1, "lava", 1, true) or string.find(GZ_1, "kill", 1, true)
        if G__1 then
            break
        end
        GY = GY.Parent
    end
    return true
end
local function fn644()
    pcall(function()
        Bn.FishingAutoFishEnabledSync:FireServer(false)
    end)
    pcall(function()
        if type(_G.__AF_SetForcedAutoFish) == "function" then
            _G.__AF_SetForcedAutoFish(false)
        end
    end)
end
local function fn675(cq)
    local Eo_1
    local Em = cq or ""
    local Em_1
    local En = tostring(Em)
    Eo_1, Em_1 = En:match("(%d+%.?%d*)([KMBkmb]?)%s*Food")
    if not Eo_1 then
        return 0
    end
    local En_1 = 1
    local Eq = Em_1 or ""
    local Em_2 = string.upper(Eq)
    if Em_2 == "K" then
        En_1 = 1000
    elseif Em_2 == "M" then
        En_1 = 1000000
    elseif Em_2 == "B" then
        En_1 = 1000000000
    end
    local Em_3 = tonumber(Eo_1) or 0
    return Em_3 * En_1
end
local function fn756()
    local F0_1
    local F__1
    local FY = Bq()
    local FY_1 = FY and FY.Position or Vector3.zero
    F0_1, F__1 = nil, nil
    local Scripted = BP:FindFirstChild("Scripted")
    local F1 = Scripted and Scripted:FindFirstChild("PondAreas")
    if F1 then
        for i, descendant in F1:GetDescendants() do
            local FY_4 = descendant:IsA("BasePart") and Bl[descendant.Name]
            if FY_4 then
                local Magnitude = (descendant.Position - FY_1).Magnitude
                if not F__1 or Magnitude < F__1 then
                    F0_1 = descendant
                    F__1 = Magnitude
                end
            end
        end
    end
    if F0_1 then
        return F0_1
    end
    for i, descendant in BP:GetDescendants() do
        local FY_6 = descendant:IsA("BasePart") and Bl[descendant.Name]
        if FY_6 then
            local Magnitude = (descendant.Position - FY_1).Magnitude
            if not F__1 or Magnitude < F__1 then
                F0_1 = descendant
                F__1 = Magnitude
            end
        end
    end
    return F0_1
end
local function fn837()
    return Bn.GemStoreGetState:InvokeServer()
end
local function fn841(dk)
    if not dk then
        return 0
    end
    local E9 = tonumber(dk:GetAttribute("RodStrength"))
    if E9 then
        return E9
    end
    local E9_3 = ((Constants.Fishing or {}).Rods or {})[dk.Name]
    local Fa_1 = E9_3 and E9_3.Strength
    local E9_4 = tonumber(Fa_1) or 0
    return E9_4
end
local function fn869(bt)
    if type(bt) == "number" then
        return bt
    end
    local DB = bt or ""
    local DC = tostring(DB):gsub(",", ""):gsub("%s", ""):upper()
    if DC == "" then
        return 0
    end
    local DB_1 = 1
    local DD = DC:sub(-1)
    if DD == "K" then
        DB_1 = 1000
        DC = DC:sub(1, -2)
    elseif DD == "M" then
        DB_1 = 1000000
        DC = DC:sub(1, -2)
    elseif DD == "B" then
        DB_1 = 1000000000
        DC = DC:sub(1, -2)
    elseif DD == "T" then
        DB_1 = 1000000000000
        DC = DC:sub(1, -2)
    end
    local DD_1 = tonumber(DC) or 0
    return DD_1 * DB_1
end
local function fn925(cz, cA)
    local Eu = cA or ""
    local Ev = tostring(Eu)
    if Ev == "" or not cz then
        return nil
    end
    local Eu_2 = cz:FindFirstChild(Ev)
    local Ew_1 = Eu_2 and Eu_2:FindFirstChild("PromptNode_Pickup")
    if Ew_1 then
        return Eu_2
    end
    local Purchases = cz:FindFirstChild("Purchases")
    if Purchases then
        local Ew_2 = Purchases:FindFirstChild(Ev)
        local Ex_1 = Ew_2 and Ew_2:FindFirstChild("PromptNode_Pickup")
        if Ex_1 then
            return Ew_2
        end
        for i, child in Purchases:GetChildren() do
            if child:FindFirstChild("PromptNode_Pickup") then
                local Eu_4 = child:GetAttribute("StandId") or child.Name
                local Ew_3 = tostring(Eu_4)
                if Ew_3 == Ev or child.Name == Ev then
                    return child
                end
            end
        end
        for i, descendant in cz:GetDescendants() do
            if descendant.Name == "PromptNode_Pickup" then
                local Parent = descendant.Parent
                local Ew_4 = Parent
                if Ew_4 then
                    local Ex_2 = Parent:GetAttribute("StandId") or Parent.Name
                    Ew_4 = tostring(Ex_2) == Ev
                end
                if Ew_4 then
                    return Parent
                end
            end
        end
        return nil
    end
    for i, descendant in cz:GetDescendants() do
        if descendant.Name == "PromptNode_Pickup" then
            local Parent = descendant.Parent
            local Ew_5 = Parent
            if Ew_5 then
                local Ex_3 = Parent:GetAttribute("StandId") or Parent.Name
                Ew_5 = tostring(Ex_3) == Ev
            end
            if Ew_5 then
                return Parent
            end
        end
    end
    return nil
end
local function fn933(aP, aQ, aR)
    return string.format("<b>%s</b> %s %s", aP, BQ("-", "#5a6070"), BQ(aQ, aR))
end
local function fn969(gJ, gK)
    if not gJ then
        return nil
    end
    local H0 = gK + 1
    if gJ.MaxLevels and H0 > gJ.MaxLevels then
        return nil
    elseif gJ.Costs then
        local H1_1 = gJ.Costs[tostring(H0)] or gJ.Costs[H0]
        return H1_1
    else
        local H1_2 = type(gJ.CostAnchors) == "table" and #gJ.CostAnchors >= 2
        if H1_2 then
            local CostAnchors = gJ.CostAnchors
            local H2_1 = 1
            while true do
                if H2_1 < #CostAnchors - 1 and CostAnchors[H2_1 + 1][1] < H0 then
                    H2_1 += 1
                    continue
                end
                break
            end
            local H3_2 = CostAnchors[H2_1][1]
            local H4 = CostAnchors[H2_1][2]
            local H5 = CostAnchors[H2_1 + 1][1]
            local H6 = CostAnchors[H2_1 + 1][2]
            if H3_2 < H5 and H4 > 0 then
                return math.floor(H4 * ((H6 / H4) ^ (1 / (H5 - H3_2))) ^ (H0 - H3_2))
            elseif gJ.CostBase then
                local H1_5 = gJ.CostScale or 2
                return math.floor(gJ.CostBase * H1_5 ^ (H0 - 1))
            else
                return nil
            end
        elseif gJ.CostBase then
            local H1_6 = gJ.CostScale or 2
            return math.floor(gJ.CostBase * H1_6 ^ (H0 - 1))
        else
            return nil
        end
    end
end
local function fn1043()
    local Dz = tonumber(LocalPlayer:GetAttribute("Rebirths")) or 0
    return Dz
end
local function fn1053()
    local Character = LocalPlayer.Character
    local Dq = Character and Character:FindFirstChildOfClass("Humanoid")
    return Dq
end
local function fn1109()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    for i, child in Character:GetChildren() do
        local Fe_1 = child:IsA("Tool") and child:GetAttribute("IsFishingRod") == true
        if Fe_1 then
            return child
        end
    end
    local Ff = Constants.Fishing or {}
    local Fe_3 = {}
    local Fg = Ff.Rods
    local Fq = if Fg then 1 else 0
    local Fo = 952 * Fq + 384 * (1 - Fq)
    local Fp = 3462 * Fq + 3449 * (1 - Fq)
    if not ((Fo * 2397 + Fp * 2637 + Fo * Fp) % 16777213 == 14707062) then
        Fg = Fe_3
    end
    local Fe_4 = Fg
    for i, child in Character:GetChildren() do
        local Fd_1 = child:IsA("Tool") and Fe_4[child.Name] ~= nil
        if Fd_1 then
            return child
        end
    end
    return nil
end
local function fn1129()
    local Dv = tonumber(LocalPlayer:GetAttribute("CashNumber")) or 0
    return Dv
end
local function fn1191(bK)
    local DT = bK or ""
    local DU = tostring(DT):gsub("%s", ""):lower()
    if DU == "" then
        return 5
    end
    local DT_1 = tonumber((DU:match("^(%d+%.?%d*)")))
    if not DT_1 then
        return 5
    end
    local DY = if DU:find("h", 1, true) then 1 else 0
    if DY == 1 then
        return math.max(1, DT_1 * 3600)
    elseif DU:find("m", 1, true) then
        return math.max(1, DT_1 * 60)
    else
        return math.max(1, DT_1)
    end
end
local function fn1220(a5)
    local Dg = Options[a5]
    local Dh = Dg and Dg.Value
    if type(Dh) ~= "table" then
        return {}
    end
    local Dh_1 = {}
    for k, v in Dh do
        if v == true then
            Dh_1[k] = true
        else
            local Dg_2 = type(k) == "number" and type(v) == "string"
            if Dg_2 then
                Dh_1[v] = true
            end
        end
    end
    return Dh_1
end
local function fn1222()
    B7(BC, "Copied Discord invite to clipboard")
end
local function fn1269(aF, aG)
    if setclipboard then
        setclipboard(aF)
    elseif toclipboard then
        toclipboard(aF)
    end
    Library:Notify(aG)
end
local function fn1270(gD)
    local HY = Bq()
    local HY_1 = HY and HY.Position or nil
    return Ba(gD, HY_1)
end
local function fn1303(e7, e8)
    if not e7 then
        return nil
    end
    local GN = e8
    local GU = if GN then 1 else 0
    local GS = 2145 * GU + 3320 * (1 - GU)
    local GT = 1931 * GU + 3857 * (1 - GU)
    if not ((GS * 430 + GT * 588 + GS * GT) % 16777213 == 6199773) then
        GN = e7.Position
    end
    local GO = GN
    local GN_1 = e7.CFrame:PointToObjectSpace(GO)
    local GO_1 = e7.Size * 0.5
    local GP = math.clamp(GN_1.X, -GO_1.X * 0.85, GO_1.X * 0.85)
    local GQ = math.clamp(GN_1.Z, -GO_1.Z * 0.85, GO_1.Z * 0.85)
    if math.abs(GN_1.X) > GO_1.X then
        GP = math.clamp(GN_1.X, -GO_1.X, GO_1.X) * 0.7
    end
    if math.abs(GN_1.Z) > GO_1.Z then
        GQ = math.clamp(GN_1.Z, -GO_1.Z, GO_1.Z) * 0.7
    end
    return e7.CFrame:PointToWorldSpace(Vector3.new(GP, GO_1.Y + 0.5, GQ))
end
local function fn1428(dY)
    local FU_2 = ((Constants.Fishing or {}).Ponds or {})[dY.Name]
    local FV_1 = FU_2 and FU_2.RequiredStrength
    local FU_3 = tonumber(FV_1) or 0
    return FU_3
end
local function fn1479()
    local Dx = tonumber(LocalPlayer:GetAttribute("GemsNumber")) or 0
    return Dx
end
Options = nil
Toggles = nil
A3 = nil
A5 = nil
Library = nil
Ba = nil
Be = nil
Bf = nil
Bi = nil
Bk = nil
Bl = nil
Bn = nil
Bq = nil
Constants = nil
BA = nil
BC = nil
BG = nil
local Players, AV, AX, AY, A_, A0, A1, SaveManager, A4, ThemeManager, A7, A8, Bb, Bc, Bd, Bg, Bh, Bj, Bm, Bo, Bp, Bs, Bt, Bu, Bv, Bw, Bx, By, Bz, BB, BD, BE, BF
LocalPlayer = nil
BL = nil
BO = nil
BP = nil
BQ = nil
BT = nil
BW = nil
BZ = nil
B3 = nil
B7 = nil
local BH, BI, BK, BM, Lighting, BR, BS, GuiService, HttpService, BX, VirtualUser, B_, UserInputService, B1, B2, B4, RunService, B6, Cg, Ch, Ci
local Cf_1
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, BR, BP, Lighting, LocalPlayer, BE, BC, Bz, Bx, Constants, Bn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (BR and BR and (Players or not LocalPlayer) or "https://rscripts.net/@Ouroboros" and (not Players and not BR)) and not (BR and BR and (Players or not LocalPlayer) or "https://rscripts.net/@Ouroboros" and (not Players and not BR)) then
    game:GetService("Players")
else
    Players = game:GetService("Players")
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
if Players and not VirtualUser or "https://discord.gg/ehKVq7pf7v" or not Players and VirtualUser and (false and not VirtualUser) or (not Players and LocalPlayer and (false or LocalPlayer) or (BC or LocalPlayer) and (not LocalPlayer and not VirtualUser)) or "https://discord.gg/ehKVq7pf7v" and (not VirtualUser or VirtualUser) and (LocalPlayer or not Players or BC and VirtualUser) and (VirtualUser and false and (not Players and Players) and (not Players and BC or Players and LocalPlayer)) or not (Players and not VirtualUser or "https://discord.gg/ehKVq7pf7v" or not Players and VirtualUser and (false and not VirtualUser) or (not Players and LocalPlayer and (false or LocalPlayer) or (BC or LocalPlayer) and (not LocalPlayer and not VirtualUser)) or "https://discord.gg/ehKVq7pf7v" and (not VirtualUser or VirtualUser) and (LocalPlayer or not Players or BC and VirtualUser) and (VirtualUser and false and (not Players and Players) and (not Players and BC or Players and LocalPlayer))) then
    BR = game:GetService("TeleportService")
    BP = game:GetService("Workspace")
else
    BP = game:GetService("TeleportService")
    BR = game:GetService("Workspace")
end
Lighting = game:GetService("Lighting")
LocalPlayer = Players.LocalPlayer
BE = "Fish an Anime RNG"
BC = "https://discord.gg/ehKVq7pf7v"
Bz = "https://rscripts.net/@Ouroboros"
Bx = "https://ouroboros-hub-rbx.web.app/"
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
Constants = require(ReplicatedStorage:WaitForChild("Constants"))
Bn = {
    FishingRequestStart = Remotes:WaitForChild("FishingRequestStart"),
    FishingClick = Remotes:WaitForChild("FishingClick"),
    FishingAutoFishEnabledSync = Remotes:WaitForChild("FishingAutoFishEnabledSync"),
    FishingAutoFishPurchase = Remotes:WaitForChild("FishingAutoFishPurchase"),
    FishingStoreGetState = Remotes:WaitForChild("FishingStoreGetState"),
    FishingStorePurchase = Remotes:WaitForChild("FishingStorePurchase"),
    SetAutoCollectState = Remotes:WaitForChild("SetAutoCollectState"),
    UpgradesStoreGetState = Remotes:WaitForChild("UpgradesStoreGetState"),
    UpgradesStorePurchase = Remotes:WaitForChild("UpgradesStorePurchase"),
    GemStoreGetState = Remotes:WaitForChild("GemStoreGetState"),
    GemStorePurchase = Remotes:WaitForChild("GemStorePurchase"),
    BoostsStoreGetState = Remotes:WaitForChild("BoostsStoreGetState"),
    BoostsStorePurchase = Remotes:WaitForChild("BoostsStorePurchase"),
    PotionGetState = Remotes:WaitForChild("PotionGetState"),
    PotionUse = Remotes:WaitForChild("PotionUse"),
    SecretStoreGetState = Remotes:WaitForChild("SecretStoreGetState"),
    SecretStorePurchase = Remotes:WaitForChild("SecretStorePurchase"),
    SecretStore2GetState = Remotes:WaitForChild("SecretStore2GetState"),
    SecretStore2Purchase = Remotes:WaitForChild("SecretStore2Purchase"),
    SecretStore3GetState = Remotes:WaitForChild("SecretStore3GetState"),
    SecretStore3Purchase = Remotes:WaitForChild("SecretStore3Purchase"),
    ResearchGetData = Remotes:WaitForChild("ResearchGetData"),
    ResearchStart = Remotes:WaitForChild("ResearchStart"),
    RarityAutoSellGetState = Remotes:WaitForChild("RarityAutoSellGetState"),
    RarityAutoSellSet = Remotes:WaitForChild("RarityAutoSellSet"),
    BackpackSellAllRequest = Remotes:WaitForChild("BackpackSellAllRequest"),
    BackpackSellRarityRequest = Remotes:WaitForChild("BackpackSellRarityRequest"),
    BackpackSellSelectedRequest = Remotes:WaitForChild("BackpackSellSelectedRequest"),
    BackpackCharSummaryGet = Remotes:WaitForChild("BackpackCharSummaryGet"),
    BackpackEquipBest = Remotes:WaitForChild("BackpackEquipBest"),
    BackpackHoldCharacter = Remotes:WaitForChild("BackpackHoldCharacter"),
    RebirthGetState = Remotes:WaitForChild("RebirthGetState"),
    RebirthPurchase = Remotes:WaitForChild("RebirthPurchase"),
    IndexGetData = Remotes:WaitForChild("IndexGetData"),
    IndexClaimAllRewards = Remotes:WaitForChild("IndexClaimAllRewards"),
    DepolarizrConfirm = Remotes:WaitForChild("DepolarizrConfirm"),
    DepolarizrUI = Remotes:WaitForChild("DepolarizrUI"),
    SacrificeRequest = Remotes:WaitForChild("SacrificeRequest"),
    Spin = Remotes:WaitForChild("Spin"),
    ShowCatchReward = Remotes:WaitForChild("ShowCatchReward"),
    FishingState = Remotes:WaitForChild("FishingState"),
    TeleportRequest = Remotes:WaitForChild("TeleportRequest"),
    GetSettingsData = Remotes:WaitForChild("GetSettingsData"),
    SetPerformanceModeSetting = Remotes:WaitForChild("SetPerformanceModeSetting"),
    SetCharacterVfxSetting = Remotes:WaitForChild("SetCharacterVfxSetting"),
    SetStarsSetting = Remotes:WaitForChild("SetStarsSetting"),
    SetViewportsSetting = Remotes:WaitForChild("SetViewportsSetting"),
    SetCharacterRenderSetting = Remotes:WaitForChild("SetCharacterRenderSetting")
}
local B9 = Constants.RarityOrder or {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Cosmic",
    "Secret",
    "Rainbow",
    "Ascended",
    "Divine",
    "Supreme",
    "Celestial",
    "Ancient",
    "God",
    "Omniscient",
    "Exclusive"
}
local B9_3
Be, A8, A1 = nil, nil, nil
local Cd = { "Level Up", "Level Up 10", "Max Level Up" }
Be = {
    ["Level Up"] = "LevelUpPrompt",
    ["Level Up 10"] = "LevelUp10Prompt",
    ["Max Level Up"] = "MaxLevelUpPrompt"
}
A8 = {
    Common = 9807270,
    Uncommon = 5763719,
    Rare = 3447003,
    Epic = 10181046,
    Legendary = 15844367,
    Mythical = 15105570,
    Cosmic = 1752220,
    Secret = 10038562,
    Rainbow = 15277667,
    God = 16766720
}
local Cc = {}
A1 = {}
local Cb = (Constants.UpgradesStore or {}).Offers or {}
for k, v in Cb do
    local B8_5 = v.Label or k
    Cc[#Cc + 1] = B8_5
    A1[B8_5] = k
end
table.sort(Cc)
local B8_6 = {}
Ch, B9_3, Cg, Cf_1 = nil, nil, nil, nil
local Cb_1 = 9
repeat
    Ci = (Cb_1 * 1 + 1) % 3 + 1
    if Ci <= 2 then
        if Ci <= 1 then
            Ci = (vector.create((Cb_1 * 5 + 7) % 11 + 1, (Cb_1 * 7 + 3) % 13 + 1, (Cb_1 * 2 + 9) % 17 + 1))
            local Ug = vector.floor(Ci) + vector.ceil(Ci * -1)
            if vector.dot(Ug, Ug) == 4 then
                B9_3 = Cf_1
            else
                Cf_1 = B9_3
            end
            Cb_1 = (Cb_1 + 13) % 24
        else
            Ci = (vector.create((Cb_1 * 1 + 9) % 11 + 1, (Cb_1 * 4 + 4) % 13 + 1, (Cb_1 * 11 + 13) % 17 + 1))
            local Ul = vector.floor(Ci) + vector.ceil(Ci * -1)
            if vector.dot(Ul, Ul) == 0 then
                Ch = {}
            else
                B9_3 = {}
            end
            Cb_1 = (Cb_1 + 19) % 24
        end
    else
        if (Cb_1 * 2 + 6) * 7 % 3 == ((Cb_1 * 2 + 6) * 7 + 3) % 3 then
            B9_3, Cg = pcall(fn837)
        else
            Cg, B9_3 = pcall(fn837)
        end
        Cb_1 = (Cb_1 + 19) % 24
    end
until (Cb_1 * 11 + 13) % 24 == 1
if Cf_1 then
    local B9_4 = 0
    repeat
        local Cb_2 = {
            "xxdbnbcuse",
            "ozwziydwlwe",
            "vletz",
            "wotrzsolp",
            "tfivt",
            "rfqebfkgfmf",
            "wmqs",
            "remj",
            "iqksvviqc"
        }
        local VU = B9_4
        Ci = Cb_2[VU % 9 + 1]
        if Ci:len() >= Ci:gsub("(.)", "%1%1", VU % 3 % 2 + 1):len() then
            Cg = type(Cf_1) == "table"
        else
            Cf_1 = type(Cg) == "table"
        end
        B9_4 = (B9_4 + 3) % 4
    until (B9_4 * 3 + 0) % 4 == 1
end
if Cf_1 then
    local B9_5 = 2
    repeat
        if B9_5 * 12964453 + 2 + 5 <= B9_5 * 12964453 + 2 + 5 + 1 then
            Cf_1 = type(Cg.prices) == "table"
        else
            Cg = type(Cf_1.prices) == "table"
        end
        B9_5 = (B9_5 + 5) % 8
    until (B9_5 * 7 + 1) % 8 == 2
end
if Cf_1 then
    Ch = Cg.prices
end
if not next(Ch) then
    local B9_6 = 7
    repeat
        if (B9_6 * 2 + 9) * 7 % 3 == ((B9_6 * 2 + 9) * 7 + 1) % 3 then
            Ch = {
                Platform10 = true,
                Platform5 = true,
                AutoCollect = true,
                EquipPlusOne = true,
                Researcher2 = true,
                InfiniteBackpack = true,
                AutoFish = true,
                SellAll = true,
                RainbowCatch = true,
                DoubleOfflineEarnings = true,
                PotionTimeBoost = true,
                GodCatch = true,
                VIP = true,
                FasterCatch = true,
                TripleHook = true,
                QuintupleHook = true,
                CheaperLevelUp = true,
                Researcher3 = true
            }
        else
            Ch = {
                AutoFish = true,
                Platform5 = true,
                FasterCatch = true,
                EquipPlusOne = true,
                DoubleOfflineEarnings = true,
                Platform10 = true,
                AutoCollect = true,
                RainbowCatch = true,
                VIP = true,
                SellAll = true,
                Researcher2 = true,
                PotionTimeBoost = true,
                CheaperLevelUp = true,
                GodCatch = true,
                InfiniteBackpack = true,
                TripleHook = true,
                Researcher3 = true,
                QuintupleHook = true
            }
        end
        B9_6 = (B9_6 + 7) % 8
    until (B9_6 * 7 + 3) % 8 == 5
end
for k in Ch do
    B8_6[#B8_6 + 1] = k
end
table.sort(B8_6)
BF = {}
local B9_7 = {}
Cg = (Constants.BoostsStore or {}).Offers or {}
local Cb_5 = Cg
for k, v in Cb_5 do
    local Cb_6 = v.Title or k
    B9_7[#B9_7 + 1] = Cb_6
    BF[Cb_6] = k
end
table.sort(B9_7)
local Cb_7 = {}
Ch = ReplicatedStorage:FindFirstChild("Assets")
Cg = Ch and Ch:FindFirstChild("Potions")
Ch = Cg
if Ch then
    for i, child in Ch:GetChildren() do
        Cb_7[#Cb_7 + 1] = child.Name
    end
    table.sort(Cb_7)
end
BD, By, Bt = nil, nil, nil
Ci, BD = fn284("SecretStore")
Ch, By = fn284("SecretStore2")
Cg, Bt = fn284("SecretStore3")
local Cf_4 = Constants.Sacrifice or {}
local Ca_3 = tonumber(Cf_4.RebirthRequirement) or 250
Bl = {}
Bo = Ca_3
local Ca_4 = {}
local Cf_5 = Constants.Fishing
local CE = if Cf_5 then 1 else 0
local CC = 489 * CE + 3361 * (1 - CE)
local CD = 2428 * CE + 2986 * (1 - CE)
if not ((CC * 4025 + CD * 407 + CC * CD) % 16777213 == 4143713) then
    Cf_5 = Ca_4
end
local Cj = Cf_5.Ponds or {}
for k in Cj do
    Bl[k] = true
end
Library, ThemeManager, SaveManager, Toggles, Options, Bu, Bp, Bm, Bh, Bg, Bb, A7, BO, B7, BW, BQ, BH, A3, B3, BA, Bq, Bc, A4, AX, B6, BT, BB, Bi, A5, B1, BK, BZ, BG, Bk, Bf, Bv = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
B7 = fn1269
BW = fn1222
BQ = fn416
BH = fn933
Bu = "#7fd47f"
Bp = "#6ec1ff"
Bm = "#e8a34d"
Bh = "#8b93a3"
Bg = "#e05a5a"
Bb = {
    LTC = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
    BTC = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
    ETH = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
    USDT = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
    SOL = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
    PayPal = "https://paypal.me/TheTruckerGOD",
    Venmo = "https://venmo.com/u/miserablemusic"
}
A7 = {
    LTC = "#345d9d",
    BTC = "#f7931a",
    ETH = "#627eea",
    USDT = "#26a17b",
    SOL = "#14f195",
    PayPal = "#0070ba",
    Venmo = "#008cff"
}
A3 = fn350
B3 = fn1220
BA = fn1053
Bq = fn353
Bc = fn1129
A4 = fn1479
AX = fn1043
B6 = fn869
BT = fn578
BB = fn476
Bi = fn1191
A5 = fn122
B1 = fn153
BO = false
BK = fn456
BZ = function(cj, ck)
    local Eh = not cj or not cj:IsA("ProximityPrompt")
    if Eh then
        return
    end
    local Eh_1 = not ck
    if Eh_1 ~= false then
        Eh_1 = not cj.Enabled
    end
    if Eh_1 then
        return
    end
    local Enabled = cj.Enabled
    if ck then
        cj.Enabled = true
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, cj)
    else
        pcall(function()
            cj:InputHoldBegin()
            local Ef = cj.HoldDuration or 0
            task.wait(Ef)
            cj:InputHoldEnd()
        end)
    end
    if ck then
        cj.Enabled = Enabled
    end
end
BG = fn675
Bk = fn185
Bf = fn925
Bv = fn78
Cj = (Constants.Fishing or {}).Distances or {}
local Ca_8 = tonumber(Cj.MaxStartDistance) or 50
B4, Bs, B_, BM, Bd, Bw, A_, B2, AV, BL, Ba, BX, BI, A0, Bj, AY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
B4 = Ca_8
B_ = fn841
BM = fn1109
Bd = function()
    local FG, FH, FI
    FI = nil
    FH = -1
    FG = (Constants.Fishing or {}).Rods or {}
    local function FJ_2(dE)
        if not dE then
            return
        end
        for i, child in dE:GetChildren() do
            local Fx = (child:IsA("Tool"))
            if Fx then
                local Fy = child:GetAttribute("IsFishingRod") == true or FG[child.Name] ~= nil
                Fx = Fy
            end
            if Fx then
                local Fx_1 = B_(child)
                if Fx_1 > FH then
                    FI = child
                    FH = Fx_1
                end
            end
        end
    end
    FJ_2(LocalPlayer.Character)
    FJ_2(LocalPlayer:FindFirstChild("Backpack"))
    return FI
end
Bw = function()
    local FP = BM()
    if FP then
        return FP
    end
    local FO = Bd()
    local FN = BA()
    if FO and FN then
        pcall(function()
            FN:EquipTool(FO)
        end)
        return FO
    end
    return nil
end
A_ = fn1428
B2 = fn756
AV = function(eo)
    local Gj, Gk, Gl, Gm
    Gk = B_(eo)
    local Gn = Bq()
    Gj = Gn and Gn.Position or Vector3.zero
    Gm = nil
    Gl = nil
    local function Gn_2(ez)
        local Gf = ez:IsA("BasePart") and Bl[ez.Name]
        if not Gf then
            return
        end
        local Gf_1 = A_(ez)
        if Gf_1 > Gk then
            return
        end
        local Gh = Gf_1 * 1000000000 - (ez.Position - Gj).Magnitude
        if not Gl or Gh > Gl then
            Gm = ez
            Gl = Gh
        end
    end
    local Scripted = BP:FindFirstChild("Scripted")
    local Gp = Scripted and Scripted:FindFirstChild("PondAreas")
    if Gp then
        for i, descendant in Gp:GetDescendants() do
            Gn_2(descendant)
        end
    end
    if Gm then
        return Gm
    end
    for i, descendant in BP:GetDescendants() do
        Gn_2(descendant)
    end
    local Go_3 = Gm or B2()
    return Go_3
end
BL = fn446
Ba = fn1303
BX = fn643
BI = function(fm)
    local G5, G6, G7
    G7 = B4 * 0.75
    G6 = nil
    G5 = nil
    local function G8(fs, ft)
        if not fs then
            return
        end
        local G1 = BL(fs, fm)
        if G1 > G7 then
            return
        end
        local G3 = G1 - (ft or 0)
        if not G5 or G3 < G5 then
            G6 = fs
            G5 = G3
        end
    end
    local Scripted = BP:FindFirstChild("Scripted")
    if Scripted then
        local AFK = Scripted:FindFirstChild("AFK")
        if AFK then
            for i, descendant in AFK:GetDescendants() do
                if descendant:IsA("BasePart") then
                    local Ha_2 = string.lower(descendant.Name)
                    local Hb_1 = string.find(Ha_2, "castafk", 1, true) or string.find(Ha_2, "afk", 1, true)
                    if Hb_1 then
                        G8(descendant.Position + Vector3.new(0, 3, 0), 8)
                    end
                end
            end
        end
        local PondAreasTeleports = Scripted:FindFirstChild("PondAreasTeleports")
        if PondAreasTeleports then
            local Hb_2 = PondAreasTeleports:FindFirstChild("TP" .. fm.Name) or PondAreasTeleports:FindFirstChild(fm.Name)
            local Hc_1 = Hb_2
            if Hb_2 then
                Hb_2 = Hc_1:IsA("BasePart")
            end
            if Hb_2 then
                G8(Hc_1.Position + Vector3.new(0, 3, 0), 12)
            end
            for i, descendant in PondAreasTeleports:GetDescendants() do
                local Ha_4 = descendant:IsA("BasePart") and BL(descendant.Position, fm) <= G7
                if Ha_4 then
                    G8(descendant.Position + Vector3.new(0, 3, 0), 10)
                end
            end
        end
    end
    local Map = BP:FindFirstChild("Map")
    local Hb_3 = Map or BP
    for i, descendant in Hb_3:GetDescendants() do
        local Ha_7 = descendant:IsA("BasePart") and descendant.CanCollide
        if Ha_7 then
            local Ha_8 = string.lower(descendant.Name)
            local Hb_4 = string.find(Ha_8, "dock", 1, true) and not BX(descendant)
            if Hb_4 then
                if BL(descendant.Position, fm) <= G7 then
                    G8(descendant.Position + Vector3.new(0, descendant.Size.Y * 0.5 + 3, 0), 6)
                end
            end
        end
    end
    if G6 then
        return G6
    end
    local Ha_9 = RaycastParams.new()
    Ha_9.FilterType = Enum.RaycastFilterType.Exclude
    local Hb_5 = {}
    if LocalPlayer.Character then
        Hb_5[1] = LocalPlayer.Character
    end
    local Hc_2 = Scripted and Scripted:FindFirstChild("PondAreas")
    if Hc_2 then
        Hb_5[#Hb_5 + 1] = Hc_2
    end
    Ha_9.FilterDescendantsInstances = Hb_5
    local G9_2 = fm.Size * 0.5
    local Hb_6 = {
        { Vector3.new(1, 0, 0), G9_2.X },
        { Vector3.new(-1, 0, 0), G9_2.X },
        { Vector3.new(0, 0, 1), G9_2.Z },
        { Vector3.new(0, 0, -1), G9_2.Z }
    }
    table.sort(Hb_6, function(f2, f3)
        return f2[2] < f3[2]
    end)
    for k, v in Hb_6 do
        local G9_3 = fm.CFrame:VectorToWorldSpace(v[1])
        for k, v2 in { 3, 6, 10, 14 } do
            local Hc_3 = fm.Position + G9_3 * (v[2] + v2)
            local Hd = Hc_3 + Vector3.new(0, 80, 0)
            local Hc_4 = BP:Raycast(Hd, Vector3.new(0, -160, 0), Ha_9)
            local Hd_1 = Hc_4 and not BX(Hc_4.Instance)
            if Hd_1 then
                local Hd_2 = Hc_4.Position.Y
                if Hd_2 >= fm.Position.Y - 2 and Hd_2 <= fm.Position.Y + 35 then
                    local Hd_3 = Hc_4.Position + Vector3.new(0, 3, 0)
                    local Hf = v2 == 6 and 2 or 0
                    G8(Hd_3, Hf)
                end
            end
        end
    end
    if G6 then
        return G6
    end
    G8 = Hb_6[1]
    local G9_4 = fm.CFrame:VectorToWorldSpace(G8[1])
    local Ha_10 = fm.Position + G9_4 * (G8[2] + 5)
    return Vector3.new(Ha_10.X, fm.Position.Y + 4, Ha_10.Z)
end
A0 = function(gj)
    local HK = Bq()
    local HM = not HK or not gj
    local HM_6
    if HM then
        return false
    end
    local HL_1 = B4 * 0.8
    if BL(HK.Position, gj) <= HL_1 then
        return true
    end
    pcall(function()
        Bn.TeleportRequest:FireServer("AreaPond:" .. gj.Name)
    end)
    local HM_1 = os.clock() + 1.5
    while os.clock() < HM_1 do
        local HK_1 = Bq()
        if not HK_1 then
            return false
        end
        if BL(HK_1.Position, gj) <= HL_1 then
            HK_1.AssemblyLinearVelocity = Vector3.zero
            return true
        end
        task.wait(0.1)
    end
    local HS = 1
    while true do
        if not (HS <= 3) then
            local HK_2 = Bq()
            local HL_2 = HK_2 ~= nil and BL(HK_2.Position, gj) <= B4
            return HL_2
        end
        local HK_3 = Bq()
        if not HK_3 then
            break
        end
        local HM_2 = BI(gj)
        if not HM_2 then
            local HK_4 = Bq()
            local HL_3 = HK_4 ~= nil and BL(HK_4.Position, gj) <= B4
            return HL_3
        end
        HK_3.CFrame = CFrame.new(HM_2)
        HK_3.AssemblyLinearVelocity = Vector3.zero
        task.wait(0.12)
        local HK_5 = Bq()
        local HM_3 = HK_5 and BL(HK_5.Position, gj) <= HL_1
        if HM_3 then
            return true
        end
        if HK_5 then
            local HM_4 = gj.CFrame:PointToObjectSpace(HK_5.Position)
            local HN = gj.Size * 0.5
            local HO = gj.CFrame:PointToWorldSpace(Vector3.new(math.clamp(HM_4.X, -HN.X, HN.X), HN.Y + 3, math.clamp(HM_4.Z, -HN.Z, HN.Z)))
            local HM_5 = HK_5.Position - gj.Position
            if HM_5.Magnitude > 1 then
                HM_6 = Vector3.new(HM_5.X, 0, HM_5.Z).Unit
            else
                HM_6 = gj.CFrame.RightVector
            end
            HK_5.CFrame = CFrame.new(HO + HM_6 * 4)
            HK_5.AssemblyLinearVelocity = Vector3.zero
            task.wait(0.1)
            if BL(HK_5.Position, gj) <= HL_1 then
                return true
            end
        end
        HS += 1
    end
    return false
end
Bj = fn1270
AY = fn969
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = BC, Copyable = true }, "|", BE },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
Bs = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "fish"),
    Player = Window:AddTab("Player", "person-standing"),
    Webhook = Window:AddTab("Webhook", "webhook"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in Bs do
    if k ~= "Info" then
        fn98(v)
    end
end
BS = nil
local function Cf_7()
    local I9
    local I8
    I8 = nil
    I9 = nil
    local Label, Label2, Label3, Jd, Je
    local function Jf()
        local Ie = hookfunction ~= nil
        local If = hookmetamethod ~= nil
        local Ig = getrawmetatable ~= nil
        local Ih = setrawmetatable ~= nil
        local Ii = getgc ~= nil
        local Ij = getgenv ~= nil
        local Ik = getreg ~= nil
        local Il = getconnections ~= nil
        local Im = firesignal ~= nil
        local In = getcallbackvalue ~= nil
        local Io = setclipboard ~= nil
        local Ip = getcustomasset ~= nil
        local Iq = getnamecallmethod ~= nil
        local Ir = isexecutorclosure ~= nil
        local Is = fireproximityprompt ~= nil
        local It = firetouchinterest ~= nil
        local Iu = WebSocket ~= nil
        local Iv = readfile ~= nil
        local Iw = writefile ~= nil
        local Ix = request
        local II = if Ix then 1 else 0
        local IG = 973 * II + 3442 * (1 - II)
        local IH = 1585 * II + 3404 * (1 - II)
        if not ((IG * 2933 + IH * 760 + IG * IH) % 16777213 == 5600614) then
            Ix = http_request
        end
        local Iy = Ix ~= nil
        local IA = (debug and debug.getupvalues) ~= nil
        local IC = (debug and debug.setupvalue) ~= nil
        local ID = 0
        local IE = { Ie, If, Ig, Ih, Ii, Ij, Ik, Il, Im, In, Io, Ip, Iq, Ir, Is, It, Iu, Iv, Iw, Iy, IA, IC }
        for k, v in IE do
            if v then
                ID += 1
            end
        end
        local Ie_1 = ID / #IE
        if Ie_1 >= 0.9 then
            return BQ("Full Support", Bu)
        elseif Ie_1 >= 0.6 then
            return BQ("Half Support", Bm)
        else
            return BQ("Low Support", Bg)
        end
    end
    I8 = "Unknown"
    pcall(function()
        local IT_1
        local IS_1
        if identifyexecutor then
            IT_1, IS_1 = identifyexecutor()
            local IU = IT_1 ~= ""
            local IV = type(IT_1) == "string" and IU
            if IV then
                local IU_1 = type(IS_1) == "string" and IS_1 ~= "" and IT_1 .. " " .. IS_1
                local IS_2 = IU_1
                local IZ = if IS_2 then 1 else 0
                local IX = 987 * IZ + 2787 * (1 - IZ)
                local IY = 212 * IZ + 29 * (1 - IZ)
                if not ((IX * 681 + IY * 2632 + IX * IY) % 16777213 == 1439375) then
                    IS_2 = IT_1
                end
                I8 = IS_2
            end
        end
    end)
    local Jg = Jf()
    I9 = os.clock()
    Jd = function()
        local I_ = math.floor(os.clock() - I9)
        if I_ < 60 then
            return I_ .. "s"
        elseif I_ < 3600 then
            return string.format("%dm %ds", I_ // 60, I_ % 60)
        else
            return string.format("%dh %dm", I_ // 3600, I_ % 3600 // 60)
        end
    end
    local UserGroup = Bs.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(BH("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Bu), true)
    UserGroup:AddLabel(BH("UserId", tostring(LocalPlayer.UserId), Bp), true)
    UserGroup:AddLabel(BH("Executor", I8 .. "  " .. Jg, Bu), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(BH("Session", Jd(), Bm), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            B7(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            B7("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = Bs.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(BH("Game", BE, Bp), true)
    Label2 = SessionGroup:AddLabel(BH("Players", "0/0", Bu), true)
    Je = tostring(game.JobId)
    local Jg_1 = #Je > 18 and string.sub(Je, 1, 18) .. "..."
    local Jg_2 = Jg_1 or Je
    SessionGroup:AddLabel(BH("Job", Jg_2, Bh), true)
    Label = SessionGroup:AddLabel(BH("Ping", "0 ms", Bm), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            BR:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            B7(Je, "Copied Job ID")
        end
    })
    task.spawn(function()
        local I5_1
        local I4_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(BH("Session", Jd(), Bm))
            Label2:SetText(BH("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Bu))
            I4_1, I5_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local I4_2 = I4_1 and I5_1 .. " ms" or "n/a"
            Label:SetText(BH("Ping", I4_2, Bm))
        end
    end)
    local SocialsGroup = Bs.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = BW })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            B7(Bz, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            B7(Bx, "Copied website link")
        end
    })
    local OuroborosHubGroup = Bs.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = BW })
    local DonationsGroup = Bs.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(BQ("All donations are optional but appreciated.", Bm), true)
    DonationsGroup:AddLabel(BQ("If you donate you get a special role, just PING after you donate.", Bu), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(BQ("LTC / Litecoin", A7.LTC), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            B7(Bb.LTC, "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(BQ("BTC / Bitcoin", A7.BTC), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            B7(Bb.BTC, "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(BQ("ETH / Ethereum", A7.ETH), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            B7(Bb.ETH, "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(BQ("USDT", A7.USDT), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            B7(Bb.USDT, "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(BQ("Solana", A7.SOL), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            B7(Bb.SOL, "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(BQ("PayPal", A7.PayPal), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            B7(Bb.PayPal, "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(BQ("Venmo", A7.Venmo), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            B7(Bb.Venmo, "Copied Venmo link")
        end
    })
end
Cf_7()
local AutomationGroup = Bs.Main:AddLeftGroupbox("Automation", "fish")
AutomationGroup:AddToggle("AutoFish", { Text = "Auto Fish", Default = false })
AutomationGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
AutomationGroup:AddToggle("AutoCollectFood", { Text = "Auto Collect Food", Default = false })
AutomationGroup:AddToggle("AutoSpinWheel", { Text = "Auto Spin Wheel", Default = false })
AutomationGroup:AddToggle("AutoPlaceBest", { Text = "Auto Place Best", Default = false })
AutomationGroup:AddSlider("PlaceBestDelay", { Text = "Place Best Delay", Default = 5, Min = 1, Max = 60, Rounding = 0 })
AutomationGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddToggle("AutoBuyUnlockButtons", { Text = "Auto Buy Unlock Buttons in Base", Default = false })
AutomationGroup:AddToggle("AutoFeedPlaced", { Text = "Auto Feed Placed", Default = false })
AutomationGroup:AddDropdown("AutoFeedMode", { Text = "Feed Mode", Values = Cd, Default = "Level Up" })
AutomationGroup:AddDropdown("AutoFeedRarities", { Text = "Feed Rarities", Values = B9, Default = {}, Multi = true, AllowNull = true })
AutomationGroup:AddToggle("AutoDepolarizer", { Text = "Auto Depolarizer", Default = false })
AutomationGroup:AddToggle("AutoSacrifice", { Text = "Auto Sacrifice", Default = false })
AutomationGroup:AddToggle("AutoUsePotion", { Text = "Auto Use Potion", Default = false })
AutomationGroup:AddDropdown("AutoUsePotionList", { Text = "Potions", Values = Cb_7, Default = {}, Multi = true, AllowNull = true })
local AutoSellGroup = Bs.Main:AddLeftGroupbox("Auto Sell", "hand-coins")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
AutoSellGroup:AddDropdown("AutoSellRarities", { Text = "Sell Rarities", Values = B9, Default = {}, Multi = true, AllowNull = true })
local ShopGroup = Bs.Main:AddRightGroupbox("Shop", "shopping-cart")
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("AutoBuyUpgradeList", { Text = "Upgrades", Values = Cc, Default = {}, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyRods", { Text = "Auto Buy Rods", Default = false })
ShopGroup:AddToggle("AutoBuyResearch", { Text = "Auto Buy Affordable Research Nodes", Default = false })
ShopGroup:AddToggle("AutoBuyGemStore", { Text = "Auto Buy Gem Store", Default = false })
ShopGroup:AddDropdown("AutoBuyGemList", { Text = "Gem Store", Values = B8_6, Default = {}, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyBoosts", { Text = "Auto Buy Boosts", Default = false })
ShopGroup:AddDropdown("AutoBuyBoostList", { Text = "Boosts", Values = B9_7, Default = {}, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuySeleneStore", { Text = "Auto Buy Selene Store", Default = false })
ShopGroup:AddDropdown("AutoBuySeleneList", { Text = "Selene Store", Values = Ci, Default = {}, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyAngeliaStore", { Text = "Auto Buy Angelia Store", Default = false })
ShopGroup:AddDropdown("AutoBuyAngeliaList", { Text = "Angelia Store", Values = Ch, Default = {}, Multi = true, AllowNull = true })
ShopGroup:AddToggle("AutoBuyYangStore", { Text = "Auto Buy Yang Store", Default = false })
ShopGroup:AddDropdown("AutoBuyYangList", { Text = "Yang Store", Values = Cg, Default = {}, Multi = true, AllowNull = true })
Cj = function()
    local iF = 0
    local iH = {}
    local iG = 0
    local function iI(iJ)
        pcall(function()
            Bn.FishingAutoFishEnabledSync:FireServer(iJ)
        end)
        pcall(function()
            if type(_G.__AF_SetForcedAutoFish) == "function" then
                _G.__AF_SetForcedAutoFish(iJ)
            end
        end)
        if iJ then
            pcall(function()
                Bn.FishingAutoFishPurchase:InvokeServer("SetQuickFishEnabled", true)
            end)
        end
    end
    Toggles.AutoFish:OnChanged(function()
        iI(Toggles.AutoFish.Value)
    end)
    task.spawn(function()
        local Jv = false
        repeat
            if not Library.Unloaded then
                local Jq = not BO
                local Jr = A3("AutoFish") and Jq
                if Jr then
                    iI(true)
                    local Jq_1 = Bq()
                    if not Jq_1 then
                        task.wait(0.35)
                    else
                        local Jr_1 = Bw()
                        local Jo = AV(Jr_1)
                        local Js = Jo and A0(Jo)
                        if Js then
                            local Jq_2 = Bq()
                            local Jp = Bj(Jo)
                            local Js_1 = Jq_2 and Jp and Jr_1 and BL(Jq_2.Position, Jo) <= B4
                            if Js_1 then
                                pcall(function()
                                    Bn.FishingRequestStart:FireServer(Jo, Jp)
                                end)
                            end
                        end
                        pcall(function()
                            Bn.FishingClick:FireServer()
                        end)
                        task.wait(0.2)
                    end
                else
                    task.wait(0.35)
                end
            else
                Jv = true
            end
        until Jv
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if A3("AutoCollectMoney") then
                if LocalPlayer:GetAttribute("GP_AutoCollect") == true then
                    if LocalPlayer:GetAttribute("AutoCollectEnabled") ~= true then
                        pcall(function()
                            Bn.SetAutoCollectState:FireServer(true)
                        end)
                    end
                else
                    local Jw = BT()
                    if Jw then
                        for i, descendant in Jw:GetDescendants() do
                            local Jw_1 = descendant.Name == "Collect" and descendant:IsA("BasePart")
                            if Jw_1 then
                                BB(descendant)
                                task.wait(0.05)
                            end
                        end
                    end
                end
            end
            task.wait(0.6)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            local JP = if A3("AutoCollectFood") then 1 else 0
            if JP == 1 then
                local JE = BT()
                if JE then
                    local Purchases = JE:FindFirstChild("Purchases")
                    if Purchases then
                        for i, descendant in Purchases:GetDescendants() do
                            local JE_1 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Collect" and descendant.Enabled
                            if JE_1 then
                                BZ(descendant)
                                task.wait(0.05)
                            end
                        end
                    end
                end
            end
            task.wait(0.75)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if A3("AutoSpinWheel") then
                local PlayerStats = LocalPlayer:FindFirstChild("PlayerStats")
                local JR = PlayerStats and PlayerStats:FindFirstChild("Spin")
                local JQ_1 = JR
                if JR then
                    JR = JQ_1.Value >= 1
                end
                if JR then
                    pcall(function()
                        Bn.Spin:FireServer()
                    end)
                    task.wait(6)
                end
            end
            task.wait(1)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if A3("AutoPlaceBest") then
                local JT_1 = Options.PlaceBestDelay and Options.PlaceBestDelay.Value or 5
                local JY = if os.clock() - iF >= JT_1 then 1 else 0
                if JY == 1 then
                    iF = os.clock()
                    pcall(function()
                        Bn.BackpackEquipBest:FireServer()
                    end)
                end
            end
            task.wait(0.25)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if A3("AutoClaimIndex") then
                pcall(function()
                    Bn.IndexGetData:InvokeServer()
                end)
                pcall(function()
                    Bn.IndexClaimAllRewards:InvokeServer()
                end)
            end
            task.wait(2)
        end
    end)
    task.spawn(function()
        local J0_1
        local J__1
        while not Library.Unloaded do
            local J5 = if A3("AutoRebirth") then 1 else 0
            if J5 == 1 then
                J__1, J0_1 = pcall(function()
                    return Bn.RebirthGetState:InvokeServer(true)
                end)
                local J1 = J__1 and type(J0_1) == "table"
                if J1 then
                    local J__2 = tonumber(J0_1.nextCost) or 0
                    local J__3 = J__2 > 0 and Bc() >= J__2
                    if J__3 then
                        pcall(function()
                            Bn.RebirthPurchase:InvokeServer("Cash")
                        end)
                    end
                end
            end
            task.wait(1.5)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            local J6 = not BO
            local J7 = A3("AutoBuyUnlockButtons") and J6
            if J7 then
                local J6_1 = BT()
                local J7_1 = Bc()
                local J8 = AX()
                local J9 = J6_1 and J6_1:FindFirstChild("UnlockButtons")
                if J9 then
                    local J9_1 = {}
                    for i, child in J9:GetChildren() do
                        if child:IsA("Model") then
                            local IsPaid = child:FindFirstChild("IsPaid")
                            if not (IsPaid and IsPaid.Value == true) then
                                local StructureDepend = child:FindFirstChild("StructureDepend")
                                local Kb_1 = StructureDepend and StructureDepend.Value
                                if B1(J6_1, Kb_1) then
                                    local RebirthNeeded = child:FindFirstChild("RebirthNeeded")
                                    local RebirthCost = child:FindFirstChild("RebirthCost")
                                    local Kc = RebirthCost and RebirthCost.Value
                                    local Kb_3 = tonumber(Kc) or 0
                                    local Kc_1 = RebirthNeeded
                                    if Kc_1 then
                                        Kc_1 = RebirthNeeded.Value == true
                                    end
                                    if Kc_1 then
                                        Kc_1 = J8 < Kb_3
                                    end
                                    local Ka_4 = not Kc_1
                                    local Kb_4 = child:FindFirstChild("Cost") and child.Cost.Value
                                    local Kc_2 = B6(Kb_4)
                                    local Kb_5 = Ka_4 and J7_1 >= Kc_2 and A5(child)
                                    if Kb_5 then
                                        J9_1[#J9_1 + 1] = { button = child, cost = Kc_2 }
                                    end
                                end
                            end
                        end
                    end
                    table.sort(J9_1, function(kH, kI)
                        return kH.cost < kI.cost
                    end)
                    if J9_1[1] then
                        BK(J9_1[1].button)
                    end
                end
            end
            task.wait(0.5)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            if A3("AutoSell") then
                local Ko = B3("AutoSellRarities")
                local Kp = 0
                local Kp_1, Kp_4
                for k in Ko do
                    Kp += 1
                end
                local Kq = LocalPlayer:GetAttribute("GP_SellAll") == true and os.clock() - iG >= 1.5
                local Kq_1, Kq_4
                if Kq then
                    iG = os.clock()
                    for k in Ko do
                        local KB = k
                        if not iH[KB] then
                            iH[KB] = true
                            pcall(function()
                                Bn.RarityAutoSellSet:InvokeServer(KB, true)
                            end)
                        end
                    end
                    for k in iH do
                        local KD = k
                        if not Ko[KD] then
                            iH[KD] = nil
                            pcall(function()
                                Bn.RarityAutoSellSet:InvokeServer(KD, false)
                            end)
                        end
                    end
                end
                if Kp == 0 then
                    pcall(function()
                        Bn.BackpackSellAllRequest:InvokeServer()
                    end)
                elseif LocalPlayer:GetAttribute("Rsh_B10") == true then
                    for k in Ko do
                        local KF = k
                        pcall(function()
                            Bn.BackpackSellRarityRequest:InvokeServer(KF)
                        end)
                        task.wait(0.1)
                    end
                else
                    Kp_1, Kq_1 = pcall(function()
                        return Bn.BackpackCharSummaryGet:InvokeServer()
                    end)
                    local Kr = Kp_1 and type(Kq_1) == "table"
                    if Kr then
                        for k, v in Kq_1 do
                            local KH = k
                            local Kp_2 = type(v) == "table"
                            if Kp_2 then
                                local Kq_2 = v.ra or ""
                                Kp_2 = Ko[tostring(Kq_2)]
                            end
                            if Kp_2 then
                                local max = math.max
                                local floor = math.floor
                                local Kr_1 = tonumber(v.c) or 1
                                local Ks = max(1, floor(Kr_1))
                                local KM = 1
                                while KM <= Ks do
                                    Kp_4, Kq_4 = pcall(function()
                                        return Bn.BackpackSellSelectedRequest:InvokeServer(KH)
                                    end)
                                    local Kr_2 = Kp_4 and type(Kq_4) == "table" and Kq_4.ok == true
                                    if not Kr_2 then
                                        break
                                    end
                                    task.wait(0.05)
                                    KM += 1
                                end
                            end
                        end
                    end
                end
            end
            task.wait(1.25)
        end
    end)
    task.spawn(function()
        local KS_1
        local KR_1
        while not Library.Unloaded do
            if A3("AutoBuyUpgrades") then
                local KQ = B3("AutoBuyUpgradeList")
                KR_1, KS_1 = pcall(function()
                    return Bn.UpgradesStoreGetState:InvokeServer()
                end)
                local KS_2 = KR_1 and KS_1 and KS_1.levels or {}
                local KS_3 = Bc()
                local KV = (Constants.UpgradesStore or {}).Offers or {}
                for k in KQ do
                    local KP = A1[k]
                    local KU_1 = KP and KV[KP]
                    local KQ_2 = tonumber(KS_2[KP]) or 0
                    local KQ_3 = AY(KU_1, KQ_2)
                    if KQ_3 and KS_3 >= KQ_3 then
                        pcall(function()
                            Bn.UpgradesStorePurchase:InvokeServer(KP)
                        end)
                        task.wait(0.15)
                    end
                end
            end
            task.wait(1)
        end
    end)
    task.spawn(function()
        local K2_1
        local K1_1
        local K9 = false
        repeat
            if not Library.Unloaded then
                if A3("AutoBuyRods") then
                    K1_1, K2_1 = pcall(function()
                        return Bn.FishingStoreGetState:InvokeServer()
                    end)
                    local K3 = K1_1 and type(K2_1) == "table"
                    if K3 then
                        local K3_1 = K2_1.owned or {}
                        local K3_2 = Bc()
                        local K4 = tonumber(K2_1.rebirths) or AX()
                        local K0
                        local K6 = (Constants.FishingStore or {}).Offers or {}
                        for k, v in K6 do
                            local RodName = v.RodName
                            if RodName and not K3_1[RodName] then
                                local K4_4 = tonumber(v.RebirthRequired) or 0
                                local K4_5 = tonumber(v.CashCost) or 0
                                if K4 >= K4_4 and K3_2 >= K4_5 then
                                    if not K0 or K4_5 < K0.cost then
                                        K0 = { id = k, cost = K4_5 }
                                    end
                                end
                            end
                        end
                        if K0 then
                            pcall(function()
                                Bn.FishingStorePurchase:InvokeServer(K0.id, "Cash")
                            end)
                        end
                    end
                end
                task.wait(1.5)
            else
                K9 = true
            end
        until K9
    end)
    task.spawn(function()
        local Lh_1
        local Li_1
        local Ls = false
        repeat
            if not Library.Unloaded then
                if A3("AutoBuyResearch") then
                    Lh_1, Li_1 = pcall(function()
                        return Bn.ResearchGetData:InvokeServer()
                    end)
                    local Lj = Lh_1 and type(Li_1) == "table"
                    if Lj then
                        local Lh_2 = {}
                        local Lk = Li_1.owned or {}
                        for k, v in Lk do
                            Lh_2[tostring(v)] = true
                        end
                        local Lk_1 = Li_1.completed or {}
                        for k, v in Lk_1 do
                            Lh_2[tostring(v)] = true
                        end
                        local Lj_3 = {}
                        local Ll = Li_1.active or {}
                        for k, v in Ll do
                            if type(k) == "string" then
                                Lj_3[k] = true
                            else
                                local Lk_3 = type(v) == "table" and v.id
                                if Lk_3 then
                                    Lj_3[tostring(v.id)] = true
                                elseif type(v) == "string" then
                                    Lj_3[v] = true
                                end
                            end
                        end
                        local Lk_4 = tonumber(Li_1.slots) or 1
                        local Li_2 = 0
                        for k in Lj_3 do
                            Li_2 += 1
                        end
                        if Li_2 < Lk_4 then
                            local Li_3 = Bc()
                            local Lk_5 = A4()
                            local WorldsFolder = BP:FindFirstChild("WorldsFolder")
                            local Lm = WorldsFolder and WorldsFolder:FindFirstChild("Research")
                            local Ll_3 = Lm
                            if Lm then
                                Lm = Ll_3:FindFirstChild("Nodes")
                            end
                            local Ll_4 = Lm
                            if Ll_4 then
                                local Lg = {}
                                for i, child in Ll_4:GetChildren() do
                                    local Name = child.Name
                                    local Ln = not Lh_2[Name]
                                    if Ln ~= false then
                                        Ln = not Lj_3[Name]
                                    end
                                    if Ln then
                                        local Ln_1 = child:GetAttribute("SnapTo") or ""
                                        local Lo = tostring(Ln_1)
                                        local Ln_2 = Lo == "" or Lh_2[Lo] or Ll_4:FindFirstChild(Lo) == nil
                                        if Ln_2 then
                                            local Ln_3 = tonumber(child:GetAttribute("CostCash")) or 0
                                            local Ln_4 = tonumber(child:GetAttribute("CostGems")) or 0
                                            if Li_3 >= Ln_3 and Lk_5 >= Ln_4 then
                                                Lg[#Lg + 1] = { id = Name, score = Ln_3 + Ln_4 * 1000 }
                                            end
                                        end
                                    end
                                end
                                table.sort(Lg, function(mL, mM)
                                    return mL.score < mM.score
                                end)
                                if Lg[1] then
                                    pcall(function()
                                        Bn.ResearchStart:InvokeServer(Lg[1].id)
                                    end)
                                end
                            end
                        end
                    end
                end
                task.wait(2)
            else
                Ls = true
            end
        until Ls
    end)
    task.spawn(function()
        local LR_1
        local LQ_1
        while not Library.Unloaded do
            if A3("AutoBuyGemStore") then
                local LP = B3("AutoBuyGemList")
                LQ_1, LR_1 = pcall(function()
                    return Bn.GemStoreGetState:InvokeServer()
                end)
                local LS = LQ_1 and type(LR_1) == "table"
                if LS then
                    local LQ_2 = tonumber(LR_1.gems) or A4()
                    local LS_1 = LQ_2
                    local LT = LR_1.owned or {}
                    local LR_2 = LR_1.prices or {}
                    for k in LP do
                        local LZ = k
                        if LT[LZ] ~= true then
                            local LP_1 = tonumber(LR_2[LZ]) or 0
                            if LP_1 > 0 and LS_1 >= LP_1 then
                                pcall(function()
                                    Bn.GemStorePurchase:InvokeServer(LZ)
                                end)
                                LS_1 -= LP_1
                                task.wait(0.2)
                            end
                        end
                    end
                end
            end
            task.wait(1.5)
        end
    end)
    task.spawn(function()
        local L1_1
        local L2_1
        while not Library.Unloaded do
            if A3("AutoBuyBoosts") then
                local L0 = B3("AutoBuyBoostList")
                L1_1, L2_1 = pcall(function()
                    return Bn.BoostsStoreGetState:InvokeServer()
                end)
                local L2_2 = L1_1 and L2_1 and L2_1.stock or {}
                local L4 = (Constants.BoostsStore or {}).Offers or {}
                local L3_2 = Bc()
                local L4_1 = A4()
                for k in L0 do
                    local L_ = BF[k]
                    local L0_1 = L_ and L4[L_]
                    local L5 = L0_1
                    if L0_1 then
                        local L6_1 = tonumber(L2_2[L_]) or 0
                        L0_1 = L6_1 > 0
                    end
                    if L0_1 then
                        local L0_2 = tonumber(L5.CashCost) or 0
                        local L0_3 = tonumber(L5.GemsCost) or 0
                        if L3_2 >= L0_2 and L0_2 > 0 then
                            pcall(function()
                                Bn.BoostsStorePurchase:InvokeServer(L_, "Cash")
                            end)
                            task.wait(0.2)
                        else
                            if L4_1 >= L0_3 and L0_3 > 0 then
                                pcall(function()
                                    Bn.BoostsStorePurchase:InvokeServer(L_, "Gems")
                                end)
                                task.wait(0.2)
                            end
                        end
                    end
                end
            end
            task.wait(1.5)
        end
    end)
    task.spawn(function()
        local Mh_1
        local Mi_1
        while not Library.Unloaded do
            if A3("AutoBuySeleneStore") then
                local Mg = B3("AutoBuySeleneList")
                Mh_1, Mi_1 = pcall(function()
                    return Bn.SecretStoreGetState:InvokeServer()
                end)
                local Mj = Mh_1 and type(Mi_1) == "table"
                if Mj then
                    local Mj_1 = Mi_1.offers or {}
                    local Mk = (Constants.SecretStore or {}).Offers or {}
                    local Mj_3 = Bc()
                    local Mk_1 = A4()
                    for k in Mg do
                        local Mf = BD[k]
                        local Mg_1 = Mf and Mj_1[Mf]
                        local Ml = Mf
                        local Mm = Mg_1
                        if Ml then
                            Ml = Mk[Mf]
                        end
                        local Mn = Ml
                        if Mg_1 then
                            Mg_1 = Mn
                        end
                        if Mg_1 then
                            local Ml_1 = tonumber(Mm.stock) or 0
                            Mg_1 = Ml_1 > 0
                        end
                        if Mg_1 then
                            local Mg_2 = tonumber(Mm.cashCost) or tonumber(Mn.CashCost)
                            local Ml_2 = Mg_2 or 0
                            local Ml_3 = tonumber(Mm.gemsCost) or tonumber(Mn.GemsCost)
                            local Mm_1 = Ml_3 or 0
                            if Ml_2 > 0 and Mj_3 >= Ml_2 then
                                pcall(function()
                                    Bn.SecretStorePurchase:InvokeServer(Mf, "Cash")
                                end)
                                Mj_3 -= Ml_2
                                task.wait(0.2)
                            else
                                if Mm_1 > 0 and Mk_1 >= Mm_1 then
                                    pcall(function()
                                        Bn.SecretStorePurchase:InvokeServer(Mf, "Gems")
                                    end)
                                    Mk_1 -= Mm_1
                                    task.wait(0.2)
                                end
                            end
                        end
                    end
                end
            end
            task.wait(1.5)
        end
    end)
    local function oa(ob, oc, od, oe, of, og)
        local Mz_1
        local My_1
        local MJ = if not A3(ob) then 1 else 0
        if MJ == 1 then
            return
        end
        local Mx = B3(oc)
        if not next(Mx) then
            return
        end
        My_1, Mz_1 = pcall(function()
            return oe:InvokeServer()
        end)
        local MA = My_1 and type(Mz_1) == "table"
        if not MA then
            return
        end
        local MA_1 = Mz_1.offers or {}
        if not next(MA_1) then
            return
        end
        local MC = (Constants[og] or {}).Offers or {}
        local MB_1 = Bc()
        local MC_1 = A4()
        local MD = tonumber(Mz_1.rebirths) or AX()
        for k in Mx do
            local Mw = od[k]
            local Mx_1 = Mw and MA_1[Mw]
            local MD_1 = Mw
            local ME = Mx_1
            if MD_1 then
                MD_1 = MC[Mw]
            end
            local MF = MD_1
            if Mx_1 then
                Mx_1 = ME.visible ~= false
            end
            if Mx_1 then
                Mx_1 = ME.owned ~= true
            end
            if Mx_1 then
                local MD_2 = tonumber(ME.stock) or 0
                Mx_1 = MD_2 > 0
            end
            if Mx_1 then
                local Mx_2 = MF and MF.RebirthRequirement
                local MD_3 = tonumber(Mx_2) or 0
                if MD >= MD_3 then
                    local Mx_4 = (tonumber(ME.cashCost))
                    if not Mx_4 then
                        local MD_4 = MF and MF.CashCost
                        Mx_4 = tonumber(MD_4)
                    end
                    local MD_5 = Mx_4 or 0
                    local MD_6 = (tonumber(ME.gemsCost))
                    if not MD_6 then
                        local ME_1 = MF and MF.GemsCost
                        MD_6 = tonumber(ME_1)
                    end
                    local ME_2 = MD_6 or 0
                    if MD_5 > 0 and MB_1 >= MD_5 then
                        pcall(function()
                            of:InvokeServer(Mw, "Cash")
                        end)
                        MB_1 -= MD_5
                        task.wait(0.2)
                    else
                        if ME_2 > 0 and MC_1 >= ME_2 then
                            pcall(function()
                                of:InvokeServer(Mw, "Gems")
                            end)
                            MC_1 -= ME_2
                            task.wait(0.2)
                        end
                    end
                end
            end
        end
    end
    task.spawn(function()
        while not Library.Unloaded do
            oa("AutoBuyAngeliaStore", "AutoBuyAngeliaList", By, Bn.SecretStore2GetState, Bn.SecretStore2Purchase, "SecretStore2")
            oa("AutoBuyYangStore", "AutoBuyYangList", Bt, Bn.SecretStore3GetState, Bn.SecretStore3Purchase, "SecretStore3")
            task.wait(0.75)
        end
    end)
    task.spawn(function()
        local M6_1
        local M5_1
        local Nb = false
        repeat
            local M4, M3
            if not Library.Unloaded then
                if A3("AutoUsePotion") then
                    M4 = B3("AutoUsePotionList")
                    M3 = {}
                    M5_1, M6_1 = pcall(function()
                        return Bn.PotionGetState:InvokeServer()
                    end)
                    local M7 = M5_1 and type(M6_1) == "table"
                    if M7 then
                        local M5_2 = tonumber(M6_1.serverTime) or os.time()
                        local M8 = M6_1.potions or {}
                        for k, v in M8 do
                            local M5_4 = type(v) == "table" and v.key
                            if M5_4 then
                                local M5_5 = tonumber(v.endTime) or 0
                                if M5_5 > M5_2 then
                                    M3[v.key] = true
                                end
                            end
                        end
                    end
                    local function M5_6(po)
                        local MR_1
                        if not po then
                            return
                        end
                        for i, child in po:GetChildren() do
                            local M_ = child
                            local MP = M_:IsA("Tool") and M4[M_.Name]
                            if MP then
                                local attr = M_:GetAttribute("PotionKey")
                                local MQ = type(attr) == "string" and M3[attr]
                                local MQ_1
                                if not MQ then
                                    MQ_1, MR_1 = pcall(function()
                                        return Bn.PotionUse:InvokeServer(M_)
                                    end)
                                    if MQ_1 and MR_1 == true then
                                        if type(attr) == "string" then
                                            M3[attr] = true
                                        end
                                        task.wait(0.15)
                                    end
                                end
                            end
                        end
                    end
                    M5_6(LocalPlayer:FindFirstChild("Backpack"))
                    M5_6(LocalPlayer.Character)
                end
                task.wait(1)
            else
                Nb = true
            end
        until Nb
    end)
    task.spawn(function()
        while not Library.Unloaded do
            local Ni = not BO
            local Nj = A3("AutoFeedPlaced") and Ni
            if Nj then
                Bv()
            end
            task.wait(0.75)
        end
    end)
    local pH = false
    Bn.DepolarizrUI.OnClientEvent:Connect(function()
        if Library.Unloaded then
            return
        end
        if A3("AutoDepolarizer") then
            pH = true
            pcall(function()
                Bn.DepolarizrConfirm:FireServer(true)
            end)
            task.delay(0.5, function()
                pH = false
            end)
        end
    end)
    task.spawn(function()
        local Ns_1, Ns_2
        local Ny = false
        repeat
            if not Library.Unloaded then
                local Nn = not BO
                local No = A3("AutoDepolarizer") and Nn
                if No and not pH then
                    local Nn_2 = BT()
                    local No_1 = Nn_2 and Nn_2:FindFirstChild("Purchases") and Nn_2.Purchases:FindFirstChild("Depolarizer") and Nn_2.Purchases.Depolarizer:FindFirstChild("CharacterInsert")
                    local Np_1 = No_1
                    if No_1 then
                        No_1 = Np_1:FindFirstChild("PromptPart")
                    end
                    local Np_2 = No_1
                    if No_1 then
                        No_1 = Np_2:FindFirstChildWhichIsA("ProximityPrompt")
                    end
                    local Nq = No_1
                    local No_2 = Bq()
                    local Nr = Nq and No_2
                    local Nr_1, Nr_2
                    if Nr then
                        local Nm
                        Nr_1, Ns_1 = pcall(function()
                            return Bn.BackpackCharSummaryGet:InvokeServer()
                        end)
                        local Nt = Nr_1 and type(Ns_1) == "table"
                        if Nt then
                            for k, v in Ns_1 do
                                local Nt_1 = type(v) == "table" and type(v.ty) == "string" and v.ty ~= ""
                                if Nt_1 then
                                    Nm = k
                                    break
                                end
                            end
                        end
                        if not Nm then
                            for i, descendant in Nn_2:GetDescendants() do
                                if descendant:GetAttribute("IsPlacedCharacter") == true then
                                    local Nt_2 = descendant:GetAttribute("CharacterType") or ""
                                    local Nu = tostring(Nt_2)
                                    if Nu ~= "" then
                                        local Nt_3 = Bf(Nn_2, descendant:GetAttribute("StandId"))
                                        local Nu_1 = Nt_3 and Nt_3:FindFirstChild("PromptNode_Pickup") and Nt_3.PromptNode_Pickup:FindFirstChild("PickupOwnerPrompt")
                                        if Nu_1 then
                                            local Nu_2 = Nt_3:FindFirstChild("PromptPart") or Nu_1.Parent
                                            local Nt_4 = Nu_2
                                            if Nu_2 then
                                                Nu_2 = Nt_4:IsA("BasePart")
                                            end
                                            if Nu_2 then
                                                No_2.CFrame = Nt_4.CFrame + Vector3.new(0, 3, 0)
                                                task.wait(0.05)
                                            end
                                            BZ(Nu_1, true)
                                            task.wait(0.35)
                                        end
                                        break
                                    end
                                end
                            end
                            Nr_2, Ns_2 = pcall(function()
                                return Bn.BackpackCharSummaryGet:InvokeServer()
                            end)
                            local Nn_3 = Nr_2 and type(Ns_2) == "table"
                            if Nn_3 then
                                for k, v in Ns_2 do
                                    local Nn_4 = type(v) == "table" and type(v.ty) == "string" and v.ty ~= ""
                                    if Nn_4 then
                                        Nm = k
                                        break
                                    end
                                end
                            end
                        end
                        if Nm then
                            pcall(function()
                                Bn.BackpackHoldCharacter:FireServer(Nm)
                            end)
                            task.wait(0.35)
                            local No_3 = Bq()
                            if No_3 then
                                No_3.CFrame = Np_2.CFrame + Vector3.new(0, 3, 0)
                                task.wait(0.1)
                                BZ(Nq, true)
                                task.wait(0.35)
                                pcall(function()
                                    Bn.DepolarizrConfirm:FireServer(true)
                                end)
                            end
                        end
                    end
                end
                task.wait(1.25)
            else
                Ny = true
            end
        until Ny
    end)
    task.spawn(function()
        local NT_1, NT_2
        while not Library.Unloaded do
            local NS = A3("AutoSacrifice") and AX() >= Bo
            local NS_1, NS_2
            if NS then
                NS_1, NT_1 = pcall(function()
                    return Bn.SacrificeRequest:InvokeServer("offer")
                end)
                local NU = NS_1 and type(NT_1) == "table" and NT_1.ok == true
                if NU then
                    NS_2, NT_2 = pcall(function()
                        return Bn.SacrificeRequest:InvokeServer("confirm")
                    end)
                    local NU_1 = NS_2 and type(NT_2) == "table" and NT_2.ok == true
                    if NU_1 then
                        pcall(function()
                            Bn.SacrificeRequest:InvokeServer("cutsceneDone")
                        end)
                    end
                end
            end
            task.wait(3)
        end
    end)
end
Cj()
BS = fn644
local function Cp()
    local MovementGroup = Bs.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = Bs.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function qR(qS)
        local N_ = if not qS:IsA("ProximityPrompt") then 1 else 0
        if N_ == 1 then
            return
        end
        qS.HoldDuration = 0
        qS.MaxActivationDistance = 50
        qS.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in BP:GetDescendants() do
                pcall(qR, descendant)
            end
            connection = BP.DescendantAdded:Connect(function(q1)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(qR, q1)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local Ob_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if Ob_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local Om_1 = BA()
            if Om_1 then
                Om_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    RunService.RenderStepped:Connect(function(rm)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local Oo_1 = BA()
            if Oo_1 then
                Oo_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local Oo_3 = Bq()
            local Op = BA()
            if Oo_3 and Op then
                Op.PlatformStand = true
                local Op_1 = Vector3.zero
                local CurrentCamera = BP.CurrentCamera
                if CurrentCamera then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Op_1 += CurrentCamera.CFrame.LookVector
                    end
                    local Ou = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                    if Ou == 1 then
                        Op_1 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Op_1 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Op_1 += CurrentCamera.CFrame.RightVector
                    end
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    Op_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    Op_1 -= Vector3.new(0, 1, 0)
                end
                Oo_3.AssemblyLinearVelocity = Vector3.zero
                if Op_1.Magnitude > 0 then
                    Oo_3.CFrame = Oo_3.CFrame + Op_1.Unit * Options.FlySpeed.Value * rm
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local Oy = BA()
            if Oy then
                Oy.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local OA = BA()
            if OA then
                OA.WalkSpeed = 16
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        BS()
        local OC = BA()
        if OC then
            OC.PlatformStand = false
            OC.WalkSpeed = 16
        end
    end)
end
Cp()
local function Ca_9()
    local Pl, Pm, Pn, Po, Pp
    local Pr = syn and syn.request
    if not Pr then
        Pr = http and http.request
    end
    if not Pr then
        Pr = http_request
    end
    if not Pr then
        Pr = request
    end
    Pn = Pr
    Pl = function(rU)
        local OH
        local OJ_4
        local OI = Options.WebhookUrl
        local OI_2
        if OI then
            local OJ_1 = Options.WebhookUrl.Value or ""
            OI = tostring(OJ_1)
        end
        local OJ_2 = OI
        local OO = if OJ_2 then 1 else 0
        local OM = 671 * OO + 2392 * (1 - OO)
        local ON = 680 * OO + 1944 * (1 - OO)
        if not ((OM * 2572 + ON * 2085 + OM * ON) % 16777213 == 3599892) then
            OJ_2 = ""
        end
        OH = OJ_2
        if not Pn or OH == "" then
            return false
        end
        OI_2, OJ_4 = pcall(function()
            return Pn({
                Url = OH,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = HttpService:JSONEncode(rU)
            })
        end)
        if not OI_2 then
            return false
        end
        local OI_3 = OJ_4
        if OI_3 then
            OI_3 = OJ_4.StatusCode or OJ_4.Status
        end
        local OJ_5 = OI_3
        local OI_4 = OJ_5 == nil
        if not OI_4 then
            OI_4 = OJ_5 >= 200 and OJ_5 < 300
        end
        return OI_4
    end
    Pm = function()
        if A3("WebhookPingEveryone") then
            return "@everyone"
        end
        local OP = Options.WebhookPingId
        if OP then
            local OQ_1 = Options.WebhookPingId.Value or ""
            OP = tostring(OQ_1):gsub("%D", "")
        end
        local OQ_2 = OP or ""
        if OQ_2 ~= "" then
            return "<@" .. OQ_2 .. ">"
        end
        return nil
    end
    Po = function(sl, sm)
        if not A3("WebhookEnabled") then
            return false
        end
        local OS = sm and Pm()
        local OT = OS or nil
        return Pl({ username = "Ouroboros Hub", content = OT, embeds = { sl } })
    end
    Pp = function(sp)
        local OY = Library.Unloaded or not A3("WebhookEnabled") or not A3("WebhookFishObtained")
        if OY then
            return
        end
        if type(sp) ~= "table" then
            return
        end
        for k, v in sp do
            if type(v) == "table" then
                local OY_1 = v.name or "Unknown"
                local OZ = tostring(OY_1)
                local OY_2 = v.rarity or "Unknown"
                local O_ = tostring(OY_2)
                local OY_3 = tonumber(v.level) or 0
                local OY_4 = v.typeName or ""
                local O1 = tostring(OY_4)
                local OY_5 = {
                    { name = "Character", value = OZ, inline = true },
                    { name = "Rarity", value = O_, inline = true },
                    { name = "Player", value = LocalPlayer.Name, inline = true }
                }
                if OY_3 > 0 then
                    OY_5[#OY_5 + 1] = { name = "Level", value = tostring(OY_3), inline = true }
                end
                if O1 ~= "" then
                    OY_5[#OY_5 + 1] = { name = "Type", value = O1, inline = true }
                end
                local O0_1 = {
                    title = "Character Obtained",
                    color = A8[O_] or 5793266,
                    fields = OY_5,
                    footer = { text = "Fish an Anime RNG | Ouroboros Hub" }
                }
                local O3 = O_ == "God" or O_ == "Secret" or O_ == "Omniscient"
                Po(O0_1, O3)
            end
        end
    end
    local WebhookGroup = Bs.Webhook:AddLeftGroupbox("Webhook", "webhook")
    WebhookGroup:AddToggle("WebhookEnabled", { Text = "Enable Webhook", Default = false })
    WebhookGroup:AddInput("WebhookUrl", {
        Text = "Webhook URL",
        Default = "",
        Placeholder = "https://discord.com/api/webhooks/...",
        Finished = true
    })
    WebhookGroup:AddInput("WebhookPingId", { Text = "Ping User ID", Default = "", Placeholder = "Discord user id (optional)", Finished = true })
    WebhookGroup:AddToggle("WebhookPingEveryone", { Text = "Ping @everyone", Default = false })
    WebhookGroup:AddButton({
        Text = "Send Test Message",
        Func = function()
            local Pb = Options.WebhookUrl
            if Pb then
                local Pc_1 = Options.WebhookUrl.Value or ""
                Pb = tostring(Pc_1)
            end
            if (Pb or "") == "" then
                Library:Notify("Set a webhook URL first")
                return
            end
            if Pl({
                username = "Ouroboros Hub",
                content = Pm(),
                embeds = {
                    {
                        title = "Webhook Connected",
                        description = "Fish an Anime RNG webhook is working.",
                        color = 5793266,
                        fields = {
                            { name = "Player", value = LocalPlayer.Name, inline = true },
                            { name = "Place", value = tostring(game.PlaceId), inline = true }
                        },
                        footer = { text = "Fish an Anime RNG | Ouroboros Hub" }
                    }
                }
            }) then
                Library:Notify("Webhook test sent")
            else
                Library:Notify("Webhook test failed")
            end
        end
    })
    local ConfigurationGroup = Bs.Webhook:AddRightGroupbox("Configuration", "list-filter")
    ConfigurationGroup:AddToggle("WebhookFishObtained", { Text = "Character Obtained", Default = true })
    Bn.ShowCatchReward.OnClientEvent:Connect(function(sC)
        if Library.Unloaded then
            return
        end
        Pp(sC)
    end)
    Bn.FishingState.OnClientEvent:Connect(function(sF)
        local Pi = Library.Unloaded or type(sF) ~= "table"
        if Pi then
            return
        end
        local Pi_1 = sF.kind or ""
        local Pj = tostring(Pi_1)
        if Pj == "Completed" then
            if sF.suppressReveal == true then
                return
            end
            Pp(sF.rewards)
        elseif Pj == "GodRevealRewards" then
            Pp(sF.rewards)
        end
    end)
end
Ca_9()
local function Cq()
    local RV, connection2, RX, RY, RZ, Label, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, Sa, Sb, Sc, Sd, Se, connection, Sg
    local MenuGroup = Bs.Settings:AddLeftGroupbox("Menu", "logs")
    R6 = 0
    Se = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    Sb = function()
        local CurrentCamera = BP.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        R6 += 1
        Se = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. R6)
        end)
    end
    connection2 = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(Sb)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Pw = Toggles.AntiAfk.Value and tick() - Se >= 60
            if Pw then
                pcall(Sb)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = Bs.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Sc = function(tf)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not tf)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not tf
            end
        end)
        if not tf then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(LocalPlayer, "GameplayPaused", false)
            else
                LocalPlayer.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        Sc(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                Sc(true)
            end
        end
    end)
    RZ = false
    R8 = function()
        local PlaceId, JobId
        if RZ then
            return
        end
        RZ = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local PI = pcall(function()
            BR:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not PI then
            pcall(function()
                BR:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = game:GetService("CoreGui"):WaitForChild("RobloxPromptGui", 30)
        local PQ = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not PQ then
            return
        end
        PQ.ChildAdded:Connect(function(tL)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and tL.Name == "ErrorPrompt" then
                R8()
            end
        end)
    end)
    BR.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            RZ = false
            R8()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            RunService:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    R7 = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true,
        PointLight = true,
        SpotLight = true,
        SurfaceLight = true,
        PostEffect = true
    }
    connection = nil
    Sa = nil
    R1 = {}
    RV = setmetatable({}, { __mode = "k" })
    R3 = function(t6, t7, t8)
        local PY_1
        local PX_1
        local PW = RV[t6]
        if not PW then
            PW = {}
            RV[t6] = PW
        end
        if PW[t7] == nil then
            PX_1, PY_1 = pcall(function()
                return t6[t7]
            end)
            if not PX_1 then
                return
            end
            PW[t7] = PY_1
        end
        pcall(function()
            t6[t7] = t8
        end)
    end
    RY = function(uj)
        if R7[uj.ClassName] then
            pcall(function()
                uj.Enabled = false
            end)
        else
            local P3 = if uj:IsA("BasePart") then 1 else 0
            if P3 == 1 then
                R3(uj, "CastShadow", false)
                R3(uj, "Reflectance", 0)
                R3(uj, "Material", Enum.Material.SmoothPlastic)
                local P3_1 = if uj:IsA("MeshPart") then 1 else 0
                if P3_1 == 1 then
                    R3(uj, "TextureID", "")
                end
            else
                local P_ = uj:IsA("Decal") or uj:IsA("Texture")
                if P_ then
                    R3(uj, "Transparency", 1)
                elseif uj:IsA("SpecialMesh") then
                    R3(uj, "TextureId", "")
                elseif uj:IsA("Atmosphere") then
                    R3(uj, "Density", 0)
                end
            end
        end
    end
    R2 = function(up)
        local P4
        local P6_1
        local P5_1
        if up then
            if not Sa then
                P5_1, P6_1 = pcall(function()
                    return Bn.GetSettingsData:InvokeServer()
                end)
                local P7 = P5_1 and type(P6_1) == "table"
                if P7 then
                    Sa = {
                        performanceMode = P6_1.performanceMode == true,
                        disableCharVfx = P6_1.disableCharVfx == true,
                        starsEnabled = P6_1.starsEnabled ~= false,
                        charViewports = P6_1.charViewports ~= false,
                        characterRenderAll = P6_1.characterRenderAll == true
                    }
                else
                    Sa = {
                        performanceMode = false,
                        disableCharVfx = false,
                        starsEnabled = true,
                        charViewports = true,
                        characterRenderAll = false
                    }
                end
            end
            pcall(function()
                Bn.SetPerformanceModeSetting:FireServer(true)
            end)
            pcall(function()
                Bn.SetCharacterVfxSetting:FireServer(true)
            end)
            pcall(function()
                Bn.SetStarsSetting:FireServer(false)
            end)
            pcall(function()
                Bn.SetViewportsSetting:FireServer(false)
            end)
            pcall(function()
                Bn.SetCharacterRenderSetting:FireServer(false)
            end)
            return
        end
        P4 = Sa
        Sa = nil
        if not P4 then
            return
        end
        pcall(function()
            Bn.SetPerformanceModeSetting:FireServer(P4.performanceMode)
        end)
        pcall(function()
            Bn.SetCharacterVfxSetting:FireServer(P4.disableCharVfx)
        end)
        pcall(function()
            Bn.SetStarsSetting:FireServer(P4.starsEnabled)
        end)
        pcall(function()
            Bn.SetViewportsSetting:FireServer(P4.charViewports)
        end)
        pcall(function()
            Bn.SetCharacterRenderSetting:FireServer(P4.characterRenderAll)
        end)
    end
    R4 = function(uO)
        if not uO then
            for k, v in R1 do
                local Qi = k
                local Qk = v
                if Qi and Qk and Qi.Parent == nil and Qk.Parent then
                    pcall(function()
                        Qi.Parent = Qk
                    end)
                end
            end
            table.clear(R1)
            return
        end
        for i, player in Players:GetPlayers() do
            if player ~= LocalPlayer then
                local Character = player.Character
                if Character and Character.Parent and not R1[Character] then
                    R1[Character] = Character.Parent
                    pcall(function()
                        Character.Parent = nil
                    end)
                end
            end
        end
    end
    R0 = function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
        R2(false)
        R4(false)
        for k, v in RV do
            local Qy = k
            for k, v in v do
                local QE = k
                local QG = v
                pcall(function()
                    Qy[QE] = QG
                end)
            end
        end
        table.clear(RV)
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
        end)
        pcall(function()
            Lighting.GlobalShadows = true
        end)
    end
    Sd = function(vi)
        R0()
        if not vi then
            return
        end
        R2(true)
        pcall(function()
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end)
        pcall(function()
            UserSettings():GetService("UserGameSettings").SavedQualityLevel = Enum.SavedQualitySetting.QualityLevel1
        end)
        R3(Lighting, "GlobalShadows", false)
        R3(Lighting, "EnvironmentDiffuseScale", 0)
        R3(Lighting, "EnvironmentSpecularScale", 0)
        R3(Lighting, "FogEnd", 9000000000)
        R3(Lighting, "Brightness", 1)
        local Terrain = BP.Terrain
        R3(Terrain, "Decoration", false)
        R3(Terrain, "WaterWaveSize", 0)
        R3(Terrain, "WaterWaveSpeed", 0)
        R3(Terrain, "WaterReflectance", 0)
        R3(Terrain, "WaterTransparency", 1)
        R4(true)
        task.spawn(function()
            local descendants = BP:GetDescendants()
            for k, v in descendants do
                if Library.Unloaded or not Toggles.FpsBoost.Value then
                    return
                end
                pcall(RY, v)
                if k % 400 == 0 then
                    task.wait()
                end
            end
            for i, descendant in Lighting:GetDescendants() do
                pcall(RY, descendant)
            end
        end)
        connection = game.DescendantAdded:Connect(function(vF)
            if not Toggles.FpsBoost.Value then
                return
            end
            pcall(RY, vF)
            if vF:IsA("Model") then
                local QV = Players:GetPlayerFromCharacter(vF)
                if QV and QV ~= LocalPlayer then
                    R4(true)
                end
            end
        end)
    end
    Toggles.FpsBoost:OnChanged(function()
        Sd(Toggles.FpsBoost.Value)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(Bs.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/FishAnAnimeRNG")
    local Sh_2 = SaveManager:BuildConfigSection(Bs.Settings)
    SaveManager:LoadAutoloadConfig()
    R9 = function(vU, vV)
        local Q4_1 = (vU == "Toggle" and Toggles or Options)[vV]
        local Q3_2 = type(Q4_1) == "table" and Q4_1.Type == vU
        return Q3_2 and Q4_1 or nil
    end
    R5 = function(v1, v2)
        local Type = v2.Type
        if Type == "Toggle" then
            return { idx = v1, type = "Toggle", value = v2.Value == true }
        elseif Type == "Slider" then
            return { idx = v1, type = "Slider", value = tostring(v2.Value) }
        elseif Type == "Dropdown" then
            return { idx = v1, type = "Dropdown", multi = v2.Multi == true, value = v2.Value }
        elseif Type == "Input" then
            local Q8 = v2.Value or ""
            return { idx = v1, type = "Input", text = tostring(Q8) }
        elseif Type == "ColorPicker" then
            return { idx = v1, type = "ColorPicker", value = v2.Value:ToHex(), transparency = v2.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = v1,
                type = "KeyPicker",
                mode = v2.Mode,
                key = v2.Value,
                modifiers = v2.Modifiers,
                toggled = v2.Toggled
            }
        else
            return nil
        end
    end
    Sg = function()
        local Re = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local Rf = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if Rf then
                    local Rf_1 = R5(k, v)
                    if Rf_1 then
                        Re[#Re + 1] = Rf_1
                    end
                end
            end
        end
        table.sort(Re, function(we, wf)
            if we.type ~= wf.type then
                return we.type < wf.type
            end
            return we.idx < wf.idx
        end)
        return { objects = Re }
    end
    RX = function(wh)
        local Ry
        Ry = nil
        local Rz = type(wh) ~= "table" or type(wh.idx) ~= "string"
        local RD = if Rz then 1 else 0
        local RB = 957 * RD + 2953 * (1 - RD)
        local RC = 577 * RD + 2214 * (1 - RD)
        if not ((RB * 3999 + RC * 1565 + RB * RC) % 16777213 == 5282237) then
            Rz = type(wh.type) ~= "string"
        end
        local RD_1 = if Rz then 1 else 0
        local RB_1 = 3690 * RD_1 + 757 * (1 - RD_1)
        local RC_1 = 3011 * RD_1 + 1417 * (1 - RD_1)
        if not ((RB_1 * 388 + RC_1 * 1616 + RB_1 * RC_1) % 16777213 == 630873) then
            Rz = SaveManager.Ignore[wh.idx]
        end
        if Rz then
            return false
        end
        Ry = R9(wh.type, wh.idx)
        if not Ry then
            return false
        end
        local Rz_1 = pcall(function()
            if wh.type == "Input" then
                if type(wh.text) ~= "string" then
                    return
                end
                Ry:SetValue(wh.text)
            elseif wh.type == "ColorPicker" then
                Ry:SetValueRGB(Color3.fromHex(wh.value), wh.transparency)
            elseif wh.type == "KeyPicker" then
                Ry:SetValue({ wh.key, wh.mode, wh.modifiers })
                if wh.mode == "Toggle" and wh.toggled ~= nil then
                    Ry.Toggled = wh.toggled
                    Ry:Update()
                end
            else
                Ry:SetValue(wh.value)
            end
        end)
        return Rz_1
    end
    Sh_2:AddDivider()
    Sh_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    Sh_2:AddButton("Export Config to Clipboard", function()
        local RF_1
        local RE_1
        RE_1, RF_1 = pcall(HttpService.JSONEncode, HttpService, Sg())
        if not RE_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local RE_2 = setclipboard or toclipboard
        local RE_3 = type(RE_2) ~= "function" or not pcall(RE_2, RF_1)
        if RE_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    Sh_2:AddButton("Import Config from Clipboard Text", function()
        local RK_1
        local RI = Options.SaveManager_ImportSource.Value or ""
        local RI_1
        local RJ = tostring(RI):match("^%s*(.-)%s*$")
        if RJ == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        RI_1, RK_1 = pcall(HttpService.JSONDecode, HttpService, RJ)
        local RJ_1 = not RI_1 or type(RK_1) ~= "table" or type(RK_1.objects) ~= "table"
        if RJ_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local RI_2 = 0
        for k, v in RK_1.objects do
            if RX(v) then
                RI_2 += 1
            end
        end
        if RI_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local RK_2 = RI_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(RI_2, RK_2), 6)
    end)
    if Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
    if Toggles.FpsBoost.Value then
        Sd(true)
    end
    Sc(Toggles.AntiGameplayPause.Value)
    Library:OnUnload(function()
        connection2:Disconnect()
        Sc(false)
        R0()
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
    end)
end
Cq()
