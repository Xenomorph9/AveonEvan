local fns = {}
local aCe_34, aCe_36, aCe_37, aCe_38, aCe_39, aCe_40, aCe_42, aCe_44, aCe_45, aCe_46, aCe_47, aCe_48, aCe_50, aCe_51, aCe_52, aCe_53, aCe_54, aCe_56, aCe_57, aCe_58, aCe_59, aCe_60, aCe_62, ClientTool, aCe_65, aCe_66, aCe_67, aCe_68, aCe_70, aCe_71, aCe_72, aCe_73, ClientDataManager, aCe_76, aCe_77, aCe_78, aCe_79, aCe_80, aCe_81, aCe_82, aCe_83, aCe_85, aCe_86, aCe_88, aCe_89, aCe_91, aCe_92, aCe_94, aCe_100
fns.aCe_1 = nil
fns.aCe_3 = nil
fns.aCe_5 = nil
fns.aCe_6 = nil
fns.aCe_7 = nil
fns.aCe_9 = nil
fns.aCe_11 = nil
fns.aCe_12 = nil
fns.aCe_14 = nil
fns.aCe_15 = nil
fns.aCe_17 = nil
fns.aCe_18 = nil
fns.aCe_20 = nil
fns.aCe_21 = nil
fns.aCe_23 = nil
fns.Options = nil
fns.aCe_26 = nil
fns.aCe_27 = nil
fns.aCe_28 = nil
fns.aCe_30 = nil
fns.aCe_32 = nil
fns.aCe_33 = nil
aCe_34 = nil
aCe_36 = nil
aCe_38 = nil
aCe_39 = nil
aCe_40 = nil
aCe_42 = nil
aCe_44 = nil
aCe_45 = nil
aCe_46 = nil
aCe_47 = nil
aCe_48 = nil
aCe_50 = nil
aCe_51 = nil
aCe_52 = nil
aCe_53 = nil
aCe_54 = nil
aCe_56 = nil
aCe_57 = nil
aCe_59 = nil
aCe_60 = nil
aCe_62 = nil
ClientTool = nil
aCe_65 = nil
aCe_66 = nil
aCe_67 = nil
aCe_68 = nil
aCe_70 = nil
aCe_71 = nil
aCe_72 = nil
aCe_73 = nil
ClientDataManager = nil
aCe_76 = nil
aCe_77 = nil
aCe_79 = nil
aCe_80 = nil
aCe_81 = nil
aCe_82 = nil
aCe_83 = nil
aCe_85 = nil
aCe_86 = nil
aCe_88 = nil
aCe_89 = nil
aCe_91 = nil
aCe_92 = nil
local VY
local WF
local Wm
local UF
local W3
local V3
local Vm
local WL
local U3
local ItemInfo
local V9
local DateTimeManager
local WR
local Vy
local Uy
local Uf
local DungeonUpgradeShop
local Label3
local Wl
local ElementsInfo
local U2
local Vr
function fns.fn5()
    local aeq = {}
    local aer = {}
    local aex = 1
    while aex <= 4 do
        local aes = fns.Options["PriorityRank" .. aex]
        local aet = aes and aes.Value
        local aet_1 = type(aet) == "string" and aet ~= "" and aet ~= "None" and not aeq[aet]
        if aet_1 then
            aeq[aet] = true
            aer[#aer + 1] = aet
        end
        aex += 1
    end
    if #aer == 0 then
        return aCe_67
    end
    return aer
end
function fns.fn17()
    local agx = WR()
    if not agx then
        return
    end
    if aCe_38.CheckIsOwner(V3, agx) then
        fns.aCe_28("DungeonGroupAction", "Start")
    end
end
function fns.fn32(f7, f8)
    local ab_ = {}
    if type(f8) ~= "table" then
        return ab_
    end
    local ab0 = {}
    for i, v in ipairs(f8) do
        local ab1 = fns.aCe_7(f7, v)
        if ab1 then
            ab0[#ab0 + 1] = ab1
        end
    end
    if #ab0 == 0 then
        return ab_
    end
    for i, v in ipairs(fns.aCe_12:GetTagged("Mob")) do
        if fns.aCe_1(v) then
            for i, v2 in ipairs(ab0) do
                if v:IsDescendantOf(v2) then
                    ab_[#ab_ + 1] = v
                    break
                end
            end
        end
    end
    return ab_
end
function fns.fn43(iw)
    local ad2 = fns.Options.ClanQuestTypes and fns.Options.ClanQuestTypes.Value
    if type(ad2) ~= "table" then
        return true
    end
    for k, v in pairs(ad2) do
        if v == true and fns.aCe_32.labelToType[k] == iw then
            return true
        end
    end
    return false
end
function fns.fn63()
    if not fns.aCe_27() then
        return false
    elseif aCe_79() then
        return true
    else
        local agq = aCe_70()
        local agq_3
        if agq then
            local DungeonRewards = agq:FindFirstChild("DungeonRewards")
            if DungeonRewards and DungeonRewards.Visible then
                return true
            end
            local EggIncubatorReplacePopup = agq:FindFirstChild("EggIncubatorReplacePopup")
            if EggIncubatorReplacePopup and EggIncubatorReplacePopup.Visible then
                return true
            end
            local agq_2 = U2.AutoStartSelectedDungeon and U2.AutoStartSelectedDungeon.Value and not fns.aCe_14()
            if agq_3 then
                return true
            end
            return false
        end
        agq_3 = U2.AutoStartSelectedDungeon and U2.AutoStartSelectedDungeon.Value and not fns.aCe_14()
        if agq_3 then
            return true
        end
        return false
    end
end
function fns.fn71(jK)
    local ae1 = aCe_91()
    local ae1_1 = ae1 and ae1.CodesUsed
    if type(ae1_1) ~= "table" then
        return false
    elseif ae1_1[jK] ~= nil then
        return true
    else
        for k, v in pairs(ae1_1) do
            if v == jK then
                return true
            end
        end
        return false
    end
end
function fns.fn116(bo)
    if bo >= 1 and bo <= 5 then
        return bo
    end
    return nil
end
function fns.fn173(ee)
    local aai = aCe_91()
    local aaj = aai and aai.ElementLevels
    local aai_1 = aaj
    if aaj then
        aaj = aai_1[ee]
    end
    local aai_2 = (tonumber(aaj))
    local aan = if aai_2 then 1 else 0
    local aal = 1160 * aan + 1371 * (1 - aan)
    local aam = 1595 * aan + 248 * (1 - aan)
    if not ((aal * 954 + aam * 856 + aal * aam) % 16777213 == 4322160) then
        aai_2 = 0
    end
    return aai_2
end
function fns.fn248()
    local af1 = aCe_38.GetPlayersGroup(V3)
    local af2 = aCe_77()
    local af3 = aCe_40()
    local af4 = aCe_39()
    if not af1 then
        fns.aCe_28("DungeonGroupAction", "Create", af4, af2, af3)
        task.wait(0.35)
        af1 = aCe_38.GetPlayersGroup(V3)
    end
    local af5 = af1 and aCe_38.CheckIsOwner(V3, af1)
    if af5 then
        local af5_1 = af1.DungeonType.Value ~= af2
        local af9 = if af5_1 then 1 else 0
        local af7 = 914 * af9 + 317 * (1 - af9)
        local af8 = 1646 * af9 + 2499 * (1 - af9)
        if not ((af7 * 2055 + af8 * 3825 + af7 * af8) % 16777213 == 9678664) then
            af5_1 = af1.DungeonDifficulty.Value ~= af3
        end
        if af5_1 then
            fns.aCe_28("DungeonGroupAction", "SwitchDungeonType", af2, af3)
        end
        if af1.JoinType.Value ~= af4 then
            fns.aCe_28("DungeonGroupAction", "SwitchJoinType")
        end
    end
    return af1
end
function fns.fn326(Ak)
    local asf_1
    local asa = aCe_91()
    local asb = asa and asa.ElementLevels
    local asc = asa
    if asc then
        asc = asa.ElementPoints
    end
    local asa_1 = asb
    local asb_1 = asc
    if asa_1 then
        asa_1 = asb[Ak]
    end
    local asc_1 = tonumber(asa_1) or 0
    local asa_2 = asb_1
    if asa_2 then
        asa_2 = asb_1[Ak]
    end
    local asb_2 = tonumber(asa_2) or 0
    local asb_3 = ElementsInfo[Ak]
    local asc_2 = 0
    local ase = type(asb_3) == "table" and type(asb_3.getPointForLevelUp) == "function"
    local ase_1
    if ase then
        ase_1, asf_1 = pcall(asb_3.getPointForLevelUp, asc_1)
        if ase_1 then
            local asb_4 = tonumber(asf_1) or 0
            asc_2 = asb_4
        end
    end
    return string.format("Lv %s | %s / %s", tostring(asc_1), tostring(asb_2), tostring(asc_2))
end
function fns.fn427(bW)
    for i, v in ipairs(Vr) do
        if v.EggName == bW then
            return v, i
        end
    end
    return nil, nil
end
function fns.fn437()
    local YL = {}
    local YP = 1
    local YN = fns.aCe_17
    while YP <= YN do
        local YQ = YP
        YL[YQ] = tostring(YQ)
        YP += 1
    end
    return YL
end
function fns.fn502(fx)
    local abn = fx.PrimaryPart or fx:FindFirstChild("HumanoidRootPart") or fx:FindFirstChildWhichIsA("BasePart", true)
    if not abn then
        return false
    end
    local abn_1 = fns.aCe_33(fx)
    if abn_1 then
        return abn.Position.Y >= abn_1.Y - 2
    end
    local abn_2 = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
    if abn_2 then
        return abn.Position.Y >= abn_2.Position.Y - 1
    end
    return true
end
function fns.fn509()
    local ahm = aCe_91()
    local ahn = ahm and ahm.DungeonUpgrades
    print("[Saber Simulator] Dungeon upgrade levels:")
    for i, v in ipairs(fns.aCe_20) do
        local ahn_1 = ahn and ahn[v.key]
        local aho = tonumber(ahn_1) or 0
        print((" - %s: %d"):format(v.text, aho))
    end
    aCe_62:Notify("Printed dungeon upgrade levels")
end
function fns.fn543(ab, ac)
    if setclipboard then
        setclipboard(ab)
    elseif toclipboard then
        toclipboard(ab)
    end
    aCe_62:Notify(ac)
end
function fns.fn565(cM)
    local Zm = U2.IgnoreSecretPets and U2.IgnoreSecretPets.Value
    local Zm_1 = aCe_48(cM, Zm, WF())
    return #Zm_1 == 0
end
function fns.fn567(f2)
    local abS = not f2
    local abW = if abS then 1 else 0
    local abU = 2809 * abW + 2475 * (1 - abW)
    local abV = 154 * abW + 1019 * (1 - abW)
    if not ((abU * 334 + abV * 2169 + abU * abV) % 16777213 == 1704818) then
        abS = not f2.Parent
    end
    if abS then
        return false
    end
    local abZ = if not fns.aCe_12:HasTag(f2, "Mob") then 1 else 0
    if abZ == 1 then
        return false
    end
    local abS_1 = f2:GetAttribute("Health") or 0
    if abS_1 <= 0 then
        return false
    elseif string.find(f2.Name, "Boss", 1, true) then
        return false
    else
        return aCe_92(f2)
    end
end
function fns.fn575()
    local aeR = V3:FindFirstChild("PlayerGui") and V3.PlayerGui:FindFirstChild("MainGui")
    return aeR
end
function fns.fn579(lB)
    local agz = aCe_45.Eggs and aCe_45.Eggs[lB]
    if type(agz) ~= "table" then
        return 0
    end
    local agz_1 = tonumber(agz.PetRarityToReward) or tonumber(agz.TimeToHatch)
    return agz_1 or 0
end
function fns.fn627(cp, cq, cr)
    local Y3 = {}
    local Y4 = Uy.Eggs[cp]
    local Y5 = type(Y4) ~= "table" or type(Y4.Odds) ~= "table"
    if Y5 then
        return Y3
    end
    local Y5_1 = nil
    if cr and cr > 0 then
        local Y6_1 = {}
        for k in pairs(Y4.Odds) do
            local Y7_1 = cq and aCe_83(k)
            if not Y7_1 then
                Y6_1[#Y6_1 + 1] = k
            end
        end
        table.sort(Y6_1, function(cC, cD)
            return Wl(cC) > Wl(cD)
        end)
        Y5_1 = {}
        local Y7_2 = math.min(cr, #Y6_1)
        local Zf = 1
        while Zf <= Y7_2 do
            local Zg = Zf
            Y5_1[Y6_1[Zg]] = true
            Zf += 1
        end
    end
    for k in pairs(Y4.Odds) do
        local Y4_1 = cq and aCe_83(k)
        if not Y4_1 then
            if not (Y5_1 and Y5_1[k]) then
                if not aCe_71(k) then
                    Y3[#Y3 + 1] = k
                end
            end
        end
    end
    return Y3
end
function fns.fn637()
    local ahd = fns.Options.DungeonAutoBuyUpgradesList and fns.Options.DungeonAutoBuyUpgradesList.Value
    if type(ahd) ~= "table" then
        return
    end
    for k, v in pairs(ahd) do
        if v then
            local ahd_1 = aCe_82[k]
            if ahd_1 then
                fns.aCe_15(ahd_1)
            end
        end
    end
end
function fns.fn648(eM, eN, eO)
    if not eM then
        return nil
    end
    local aax = tostring(eM) .. "|" .. tostring(eN) .. "|" .. tostring(eO)
    local aay = aCe_42[aax]
    if aay and aay.Parent then
        return aay
    end
    local aaz_1 = nil
    for i, descendant in ipairs(eM:GetDescendants()) do
        if descendant:IsA("BasePart") then
            local attr = descendant:GetAttribute("ZoneType")
            if attr ~= nil then
                local aaA_1 = tostring(attr)
                if aaA_1:find(eN, 1, true) then
                    if eO == "Normal" then
                        if aaA_1 == eN then
                            aCe_42[aax] = descendant
                            return descendant
                        end
                    elseif eO == "Advanced" then
                        if aaA_1:find("Advanced", 1, true) then
                            aCe_42[aax] = descendant
                            return descendant
                        end
                    elseif eO == "Master" then
                        local aay_2 = aaA_1:find("Master", 1, true) and not aaA_1:find("Grandmaster", 1, true)
                        if aay_2 then
                            aCe_42[aax] = descendant
                            return descendant
                        end
                    else
                        if not (eO == "Grandmaster") then
                            aCe_42[aax] = descendant
                            return descendant
                        end
                        if aaA_1:find("Grandmaster", 1, true) then
                            aCe_42[aax] = descendant
                            return descendant
                        end
                    end
                    aaz_1 = aaz_1 or descendant
                end
            end
        end
    end
    local aay_4 = aaz_1
    if not aay_4 then
        local aaz_2 = eM:FindFirstChild(eN, true)
        if aaz_2 then
            if aaz_2:IsA("BasePart") then
                aay_4 = aaz_2
            else
                aay_4 = aaz_2:FindFirstChildWhichIsA("BasePart", true)
            end
        end
    end
    if not aay_4 then
        local Important = eM:FindFirstChild("Important")
        local aaA_2 = Important and Important:FindFirstChild("Floor")
        if aaA_2 then
            if aaA_2:IsA("BasePart") then
                aay_4 = aaA_2
            else
                aay_4 = aaA_2:FindFirstChildWhichIsA("BasePart", true)
            end
        end
    end
    if not aay_4 then
        aay_4 = eM:FindFirstChildWhichIsA("BasePart", true)
    end
    if aay_4 then
        aCe_42[aax] = aay_4
    end
    return aay_4
end
function fns.fn729()
    pcall(function()
        ClientTool:Swing()
    end)
end
function fns.fn734(nH)
    local ail = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
    if not ail then
        return
    end
    local ail_1 = math.huge
    local ain
    local aio = {}
    for i, v in ipairs(V9.mobs()) do
        local Magnitude = (v.part.Position - ail.Position).Magnitude
        if Magnitude < ail_1 then
            ail_1 = Magnitude
            ain = v
        end
        if Magnitude <= nH then
            aio[#aio + 1] = { part = v.part, dist = Magnitude }
        end
    end
    table.sort(aio, function(nS, nT)
        return nS.dist < nT.dist
    end)
    if #aio >= 2 and (aio[1].part.Position - aio[2].part.Position).Magnitude <= aCe_56 then
        local ail_3 = (aio[1].part.Position + aio[2].part.Position) * 0.5
        V9.apply(ail, aio[1].part, ail_3)
    elseif #aio >= 1 then
        V9.apply(ail, aio[1].part, aio[1].part.Position)
    elseif ain then
        V9.apply(ail, ain.part, ain.part.Position)
    end
end
function fns.fn768()
    fns.aCe_28("CombineAllPets")
end
function fns.fn825(al, am, an)
    return string.format("<b>%s</b> %s %s", al, W3("-", "#5a6070"), W3(am, an))
end
function fns.fn835(AB)
    local ask = aCe_91()
    local asl = ask and ask.DungeonHatchery
    local ask_1 = asl
    if asl then
        asl = ask_1[AB]
    end
    local ask_2 = asl
    if type(ask_2) ~= "table" then
        return "Empty"
    end
    local asl_1 = ask_2.Type or "Unknown"
    local asm = tostring(asl_1)
    local max = math.max
    local asn = tonumber(ask_2.HatchDT) or 0
    local ask_3 = DateTimeManager:Now() or 0
    local aso = max(0, asn - ask_3)
    if aso <= 0 then
        return asm .. " | Ready"
    end
    return asm .. " | " .. aCe_76(aso)
end
function fns.fn841(gR, gS, gT, gU)
    local Character = V3.Character
    local acU = Character and Character:FindFirstChild("HumanoidRootPart")
    local acV = Character
    if acV then
        acV = Character:FindFirstChildOfClass("Humanoid")
    end
    local acT_1 = acV
    if not acU or not acT_1 then
        return false
    end
    if type(gS) == "string" then
        gS = { gS }
    end
    local acU_2 = type(gS) ~= "table"
    local ac3 = if acU_2 then 1 else 0
    local ac1 = 2147 * ac3 + 2899 * (1 - ac3)
    local ac2 = 1541 * ac3 + 2043 * (1 - ac3)
    if not ((ac1 * 2008 + ac2 * 3217 + ac1 * ac2) % 16777213 == 12577100) then
        acU_2 = #gS == 0
    end
    if acU_2 then
        return false
    end
    local acU_3 = gT
    if type(acU_3) ~= "table" then
        acU_3 = WL(gR, gS)
    end
    local acV_2 = nil
    local acX = math.huge
    local Position
    local acZ = gS[1]
    for i, v in ipairs(acU_3) do
        local acU_4 = v.PrimaryPart or v:FindFirstChild("HumanoidRootPart") or v:FindFirstChildWhichIsA("BasePart", true)
        if acU_4 then
            local Magnitude = (acU_4.Position - acU.Position).Magnitude
            if Magnitude < acX then
                acX = Magnitude
                acV_2 = v
                Position = acU_4.Position
                for i, v2 in ipairs(gS) do
                    local acU_6 = fns.aCe_7(gR, v2)
                    local ac__2 = acU_6 and v:IsDescendantOf(acU_6)
                    if ac__2 then
                        acZ = v2
                        break
                    end
                end
            end
        end
    end
    if not acV_2 or not Position then
        return false
    elseif gU ~= false then
        local acU_8 = fns.aCe_7(gR, acZ)
        local acV_3 = Vm(acU_8, gR, acZ)
        local acU_9 = acX <= 150
        local acW_1 = not (acV_3 and (acU.Position - acV_3.Position).Magnitude <= 100)
        local acX_2 = not acU_9
        if acX_2 ~= false then
            acX_2 = acW_1
        end
        if acX_2 then
            fns.aCe_21(gR, acZ)
            return true
        end
        if acT_1.MoveDirection.Magnitude < 0.01 then
            acT_1:MoveTo(Position)
        end
        return true
    else
        if acT_1.MoveDirection.Magnitude < 0.01 then
            acT_1:MoveTo(Position)
        end
        return true
    end
end
function fns.fn884()
    local afX = fns.Options.DungeonPartyPlayer and fns.Options.DungeonPartyPlayer.Value
    local afX_1 = afX == ""
    local afZ = type(afX) ~= "string" or afX_1
    if afZ or afX == "None" then
        return false
    end
    local afX_3 = aCe_88:FindFirstChild(afX)
    if not afX_3 then
        return false
    end
    local afY_1 = aCe_38.GetPlayersGroup(afX_3)
    if not afY_1 then
        return false
    elseif aCe_38.GetPlayersGroup(V3) == afY_1 then
        return true
    elseif not aCe_38.CanJoinGroup(V3, afY_1) then
        return false
    else
        fns.aCe_28("DungeonGroupAction", "Join", afY_1)
        return true
    end
end
function fns.fn905()
    if U2.Fly and U2.Fly.Value then
        return
    end
    local ah1_1 = V3.Character and V3.Character:FindFirstChildOfClass("Humanoid")
    if ah1_1 then
        ah1_1.PlatformStand = false
    end
end
function fns.fn922()
    if not fns.Options.DungeonPartyPlayer then
        return
    end
    local afP = UF()
    fns.Options.DungeonPartyPlayer:SetValues(afP)
    local Value = fns.Options.DungeonPartyPlayer.Value
    local afR = type(Value) ~= "string" or not table.find(afP, Value)
    if afR then
        fns.Options.DungeonPartyPlayer:SetValue("None")
    end
end
function fns.fn928(...)
    pcall(function(...)
        aCe_50:FireServer(...)
    end, ...)
end
function fns.fn937()
    local afr_1 = aCe_54[fns.Options.SelectDungeon and fns.Options.SelectDungeon.Value]
    local afw = if afr_1 then 1 else 0
    local afu = 3859 * afw + 960 * (1 - afw)
    local afv = 456 * afw + 357 * (1 - afw)
    if not ((afu * 3822 + afv * 1983 + afu * afv) % 16777213 == 635837) then
        afr_1 = "Space"
    end
    return afr_1
end
function fns.fn965()
    local afH = { "None" }
    for i, player in ipairs(aCe_88:GetPlayers()) do
        if player ~= V3 then
            afH[#afH + 1] = player.Name
        end
    end
    table.sort(afH, function(kp, kq)
        if kp == "None" then
            return true
        elseif kq == "None" then
            return false
        else
            return kp:lower() < kq:lower()
        end
    end)
    return afH
end
function fns.fn1009(a6)
    local XV = aCe_91()
    local XW = not XV or type(XV.Index) ~= "table"
    if XW then
        return false
    end
    return table.find(XV.Index, a6) ~= nil
end
function fns.fn1016()
    for i, v in ipairs(fns.aCe_26()) do
        local aeQ = if fns.aCe_23(v) then 1 else 0
        if aeQ == 1 then
            return v
        end
    end
    return nil
end
function fns.fn1043()
    local ame = aCe_91()
    if not ame then
        return
    end
    local amf = select(1, aCe_46:GetNumPetsDiscovered(ame))
    local amg = select(1, aCe_46:GetNumEggsCompleted(ame))
    local ami = ame.PetdexRewardsClaimed or {}
    local ami_1 = aCe_46.Items or {}
    for k, v in pairs(ami_1) do
        if table.find(ami, k) == nil then
            local amh_2 = false
            if v.PetsNeeded then
                amh_2 = amf >= v.PetsNeeded
            elseif v.EggsNeeded then
                amh_2 = amg >= v.EggsNeeded
            end
            if amh_2 then
                fns.aCe_28("ClaimPetdexReward", k)
            end
        end
    end
end
function fns.fn1046(iT)
    local ael = fns.Options["Stop" .. iT .. "AtLevel"]
    local aem = ael and tonumber(ael.Value)
    return aem or 0
end
function fns.fn1069()
    local agc_1
    local aga = aCe_91()
    local agb = aga and tonumber(aga.DungeonCooldownEndDT)
    local agb_1
    if not agb then
        return false
    end
    agb_1, agc_1 = pcall(function()
        return DateTimeManager:Now()
    end)
    if not agb_1 then
        return false
    end
    return agb - agc_1 > 0
end
function fns.fn1080(ml)
    local ag5 = aCe_91()
    if not ag5 then
        return false
    end
    local ag6 = DungeonUpgradeShop[ml]
    local ag7 = type(ag6) ~= "table" or type(ag6.Upgrades) ~= "table"
    if ag7 then
        return false
    end
    local ag7_1 = ag5.DungeonUpgrades and ag5.DungeonUpgrades[ml]
    local ag8 = tonumber(ag7_1) or 0
    local ag8_1 = ag6.Upgrades[ag8 + 1]
    if type(ag8_1) ~= "table" then
        return false
    end
    local ag6_1 = tonumber(ag5.DungeonShards) or 0
    local ag6_2 = tonumber(ag8_1.Price) or 0
    if ag6_1 < ag6_2 then
        return false
    end
    fns.aCe_28("BuyDungeonUpgrade", ml, ag8 + 1)
    return true
end
function fns.fn1109()
    local MovementGroup = U3.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local CodesGroup = U3.Player:AddRightGroupbox("Codes", "ticket")
    CodesGroup:AddButton({
        Text = "Redeem Codes",
        Func = function()
            aCe_59(false)
        end
    })
    CodesGroup:AddToggle("AutoRedeemCodes", { Text = "Auto Redeem Codes", Default = false })
    local MenuGroup = U3.Settings:AddLeftGroupbox("Menu")
    local Label = MenuGroup:AddLabel("Menu bind")
    Label:AddKeyPicker("MenuKeybind", { Default = "LeftAlt", NoUI = true, Text = "Menu keybind" })
    aCe_62.ToggleKeybind = fns.Options.MenuKeybind
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("AutoHideUI", { Text = "Auto Hide UI", Default = false })
    MenuGroup:AddButton({
        Text = "Unload",
        Func = function()
            aCe_62:Unload()
        end
    })
end
function fns.fn1126()
    if (fns.Options.DungeonGroupType and fns.Options.DungeonGroupType.Value) == "Friends" then
        return "Friends"
    end
    return "Public"
end
function fns.fn1132(sm, sn, so, sp, sq)
    local alD, alE, alF, alG, alH, alI, alJ, alN
    local alK = 23
    while true do
        local alK_1 = 11994 - alK
        do
            if alK_1 < 11976 then
                if alK_1 < 11965 then
                    if alK_1 < 11959 then
                        if alK_1 < 11957 then
                            if alK_1 < 11956 then
                                if alK_1 < 11367 then
                                    break
                                elseif alK_1 < 11954 then
                                    break
                                elseif alK_1 < 11955 then
                                    if alK_1 == 11954 then
                                        alF = aCe_91()
                                        alK = if not alF then 8 else 10
                                    else
                                        alK = 12021
                                        continue
                                    end
                                elseif alK_1 == 11955 then
                                    alK = 12
                                else
                                    alK = 11990
                                    continue
                                end
                            elseif alK_1 == 11956 then
                                return
                            else
                                alK = 11986
                                continue
                            end
                        elseif alK_1 < 11958 then
                            alK = 3
                        elseif alK_1 == 11958 then
                            alK = if alG < 1 then 1 else 30
                        else
                            alK = 11988
                            continue
                        end
                    elseif alK_1 < 11963 then
                        if alK_1 < 11960 then
                            if alK_1 == 11959 then
                                alK = if alI then 16 else 9
                            else
                                alK = 11991
                                continue
                            end
                        elseif alK_1 < 11961 then
                            if alK_1 == 11960 then
                                return
                            end
                            alK = 11986
                            continue
                        elseif alK_1 < 11962 then
                            alK = 25
                        else
                            alF = alG
                            alG = alD[alF + 1]
                            alK = if not alG then 18 else 7
                        end
                    elseif alK_1 < 11964 then
                        if alK_1 == 11963 then
                            alI = alH.Currency
                            alK = if alI then 17 else 0
                        else
                            alK = 2862
                            continue
                        end
                    else
                        alK = 20
                    end
                elseif alK_1 < 11971 then
                    if alK_1 < 11968 then
                        if alK_1 < 11967 then
                            if alK_1 < 11966 then
                                alI = 0
                                alK = 26
                            elseif alK_1 == 11966 then
                                return
                            else
                                alK = 11984
                                continue
                            end
                        else
                            alK = if alN <= 1000 then 15 else 33
                        end
                    elseif alK_1 < 11969 then
                        if alK_1 == 11968 then
                            alG = alI <= alF
                            alK = 13
                        else
                            alK = 11982
                            continue
                        end
                    elseif alK_1 < 11970 then
                        break
                    elseif alK_1 == 11970 then
                        alJ = 0
                        alK = 19
                    else
                        alK = 2862
                        continue
                    end
                elseif alK_1 < 11973 then
                    if alK_1 < 11972 then
                        alD = ItemInfo[sm]
                        alE = ItemInfo[so]
                        alF = type(alD) ~= "table"
                        alK = if alF then 6 else 2
                    else
                        return
                    end
                elseif alK_1 < 11974 then
                    if alK_1 == 11973 then
                        alI = alH[sn]
                        alK = if alI then 26 else 29
                    else
                        alK = 11969
                        continue
                    end
                elseif alK_1 < 11975 then
                    alH = aCe_91()
                    alG = not alH
                    alK = if alG then 13 else 21
                elseif alK_1 == 11975 then
                    alI = alJ > alF
                    alK = 35
                else
                    alK = 2862
                    continue
                end
            elseif alK_1 < 11986 then
                if alK_1 < 11983 then
                    if alK_1 < 11980 then
                        if alK_1 < 11979 then
                            if alK_1 < 11977 then
                                if alK_1 == 11976 then
                                    return
                                end
                                alK = 11971
                                continue
                            elseif alK_1 < 11978 then
                                if alK_1 == 11977 then
                                    alK = if not aCe_34(alI, alH.Price) then 28 else 4
                                else
                                    alK = 11957
                                    continue
                                end
                            else
                                alK = 20
                            end
                        else
                            alK = 40
                        end
                    elseif alK_1 < 11981 then
                        if alK_1 == 11980 then
                            alN = 1
                            alK = 27
                        else
                            alK = 11994
                            continue
                        end
                    elseif alK_1 < 11982 then
                        alK = if alG then 38 else 37
                    else
                        alK = 36
                    end
                elseif alK_1 < 11984 then
                    if alK_1 == 11983 then
                        alG = 0
                        alK = 32
                    else
                        alK = 11986
                        continue
                    end
                elseif alK_1 < 11985 then
                    if alK_1 == 11984 then
                        alG = alF[sn]
                        alK = if alG then 32 else 11
                    else
                        alK = 11964
                        continue
                    end
                else
                    alK = 39
                end
            elseif alK_1 < 11991 then
                if alK_1 < 11990 then
                    if alK_1 < 11988 then
                        if alK_1 < 11987 then
                            if alK_1 == 11986 then
                                return
                            end
                            alK = 11981
                            continue
                        end
                        alH = alE[alG]
                        alK = if type(alH) ~= "table" then 22 else 31
                    elseif alK_1 < 11989 then
                        alK = if alF then 34 else 14
                    else
                        alJ = alH[sn]
                        alK = if alJ then 19 else 24
                    end
                else
                    fns.aCe_28(sp, alG)
                    alG = 0
                    alK = 12
                end
            elseif alK_1 < 11994 then
                if alK_1 < 11992 then
                    if alK_1 == 11991 then
                        alN += 1
                        alK = 27
                    else
                        alK = 11958
                        continue
                    end
                elseif alK_1 < 11993 then
                    alF = type(alE) ~= "table"
                    alK = 6
                elseif alK_1 == 11993 then
                    task.wait(0.05)
                    alG += 0.05
                    alH = aCe_91()
                    alI = alH
                    alK = if alI then 5 else 35
                else
                    alK = 11957
                    continue
                end
            elseif alK_1 < 12021 then
                if alK_1 == 11994 then
                    alI = sq
                    alK = 17
                else
                    break
                end
            else
                break
            end
        end
    end
end
function fns.fn1156()
    local amr = aCe_91()
    local ams = not amr or type(amr.Pets) ~= "table"
    if ams then
        return
    end
    local ams_1 = {}
    for k, v in pairs(amr.Pets) do
        local amr_1 = type(v) == "table" and type(v.Type) == "string" and not v.Locked
        if amr_1 then
            local amr_2 = v.Type .. "|" .. aCe_73(v.Class)
            local amt_1 = ams_1[amr_2]
            if not amt_1 then
                amt_1 = { Type = v.Type, Class = v.Class, pets = {} }
                ams_1[amr_2] = amt_1
            end
            local pets = amt_1.pets
            local amu_1 = #amt_1.pets + 1
            local amv = tonumber(v.Rank) or 0
            local amw = tonumber(v.XP) or 0
            pets[amu_1] = { id = k, pet = v, rank = amv, xp = amw, strength = aCe_51(v), rarity = Wl(v.Type) }
        end
    end
    local amr_4 = -1
    local amt_2 = nil
    for k, v in pairs(ams_1) do
        if #v.pets >= aCe_68 then
            table.sort(v.pets, function(tp, tq)
                if tp.rank ~= tq.rank then
                    return tp.rank > tq.rank
                elseif tp.xp ~= tq.xp then
                    return tp.xp > tq.xp
                else
                    return tp.strength > tq.strength
                end
            end)
            local ams_2 = v.pets[1]
            local amu_2 = ams_2.rarity * 1000000000 + ams_2.strength * 1000 + ams_2.rank
            if amu_2 > amr_4 then
                amr_4 = amu_2
                amt_2 = v
            end
        end
    end
    if amt_2 and amt_2.pets[1] then
        fns.aCe_28("CombinePet", amt_2.pets[1].id)
    end
end
function fns.fn1209()
    local ah7 = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
    if not ah7 then
        return
    end
    local ah7_1 = math.huge
    local ah9
    for i, v in ipairs(V9.mobs()) do
        local Magnitude = (v.part.Position - ah7.Position).Magnitude
        if Magnitude < ah7_1 then
            ah7_1 = Magnitude
            ah9 = v
        end
    end
    if not ah9 then
        return
    end
    V9.apply(ah7, ah9.part, ah9.part.Position)
end
function fns.fn1211(ff, fg)
    local abb = fns.aCe_7(ff, fg)
    local abc = Vm(abb, ff, fg)
    local Character = V3.Character
    local abb_1 = Character and Character:FindFirstChild("HumanoidRootPart")
    local aba_2 = abb_1
    if abb_1 then
        abb_1 = abc
    end
    if abb_1 then
        aba_2.CFrame = abc.CFrame + Vector3.new(0, 6, 0)
    end
end
function fns.fn1213()
    local Z4 = U2.AutoCompletePetdex and U2.AutoCompletePetdex.Value and aCe_36
    if not Z4 then
        Z4 = fns.Options.EggName and fns.Options.EggName.Value
    end
    local Z3_2 = Z4
    local Z4_1 = Z3_2 == ""
    local Z5 = type(Z3_2) ~= "string"
    local aab = if Z5 then 1 else 0
    local Z9 = 1024 * aab + 1228 * (1 - aab)
    local aaa = 3982 * aab + 2241 * (1 - aab)
    if not ((Z9 * 392 + aaa * 3080 + Z9 * aaa) % 16777213 == 16743536) then
        Z5 = Z4_1
    end
    if Z5 then
        return aCe_52("Status", "No egg selected", fns.aCe_30)
    end
    local Z5_1 = U2.IgnoreSecretPets and U2.IgnoreSecretPets.Value
    local Z4_3 = aCe_48(Z3_2, Z5_1, WF())
    local Z5_2 = aCe_91()
    local Z6 = Z5_2
    local Z7 = 0
    if Z6 then
        Z6 = type(Z5_2.Index) == "table"
    end
    if Z6 then
        Z7 = #Z5_2.Index
    end
    if #Z4_3 == 0 then
        return aCe_52("Status", string.format("%s complete | %d discovered", Z3_2, Z7), aCe_57)
    elseif aCe_66(Z3_2) then
        return aCe_52("Status", string.format("%s | %d missing (skip) | %d discovered", Z3_2, #Z4_3, Z7), aCe_65)
    else
        return aCe_52("Status", string.format("%s | %d missing | %d discovered", Z3_2, #Z4_3, Z7), VY)
    end
end
function fns.fn1224(gs, gt, gu)
    if type(gt) ~= "table" then
        return nil
    end
    local act = gu
    if type(act) ~= "table" then
        act = WL(gs, gt)
    end
    if #act == 0 then
        return nil
    end
    for i, v in ipairs(gt) do
        local acu = fns.aCe_7(gs, v)
        if acu then
            for i, v2 in ipairs(act) do
                if v2:IsDescendantOf(acu) then
                    return v
                end
            end
        end
    end
    return gt[1]
end
function fns.fn1300(br)
    if br >= 6 and br <= 8 then
        return br - 5
    end
    return nil
end
function fns.fn1348(iY)
    local aeo = fns.aCe_3(iY)
    if aeo <= 0 then
        return true
    end
    return aCe_89(iY) < aeo
end
function fns.fn1394(dc, dd)
    local ZE = dc == ""
    local ZF = type(dc) ~= "string" or ZE
    if ZF then
        return
    elseif Uf(dc) == dd then
        return false
    else
        fns.aCe_28("ToggleAutoDelete", dc)
        return true
    end
end
function fns.fn1413(fr)
    local abk_1, abk_2
    local abj_1, abj_2
    local abi_1, abi_2
    local attr = fr:GetAttribute("MoveTo")
    if typeof(attr) == "Vector3" then
        return attr
    elseif type(attr) == "string" then
        abj_1, abk_1, abi_1 = string.match(attr, "([^,]+),%s*([^,]+),%s*([^,]+)")
        abj_2, abk_2, abi_2 = tonumber(abj_1), tonumber(abk_1), tonumber(abi_1)
        if abj_2 and abk_2 and abi_2 then
            return Vector3.new(abj_2, abk_2, abi_2)
        end
        return nil
    else
        return nil
    end
end
function fns.fn1459(r8, r9, sa, sb, sc)
    local als = aCe_91()
    if not als then
        return
    end
    local alt = ItemInfo[r8]
    local alu = ItemInfo[sa]
    local alv = type(alt) ~= "table" or type(alu) ~= "table"
    if alv then
        return
    end
    local alv_1 = als[r9]
    local alz = if alv_1 then 1 else 0
    local alx = 2714 * alz + 3667 * (1 - alz)
    local aly = 289 * alz + 4087 * (1 - alz)
    if not ((alx * 2791 + aly * 2669 + alx * aly) % 16777213 == 9130461) then
        alv_1 = 0
    end
    local als_1 = alt[alv_1 + 1]
    if not als_1 then
        return
    end
    local alt_1 = alu[als_1]
    if type(alt_1) ~= "table" then
        return
    end
    local alu_1 = alt_1.Currency or sc
    if aCe_34(alu_1, alt_1.Price) then
        fns.aCe_28(sb, als_1)
    end
end
function fns.fn1532()
    local Y0 = fns.Options.PetdexSkipBest and math.floor(fns.Options.PetdexSkipBest.Value)
    return Y0 or 0
end
function fns.fn1548()
    local ahD = V9.folder()
    if not ahD then
        return {}
    end
    local ahE = {}
    for i, v in ipairs(fns.aCe_12:GetTagged("DungeonEnemy")) do
        local ahF = v:IsA("Model") and v.Parent and v:IsDescendantOf(ahD)
        if ahF then
            local ahG_1 = v:GetAttribute("Health") or 0
            ahF = ahG_1 > 0
        end
        if ahF then
            local ahF_1 = (v:FindFirstChild("HumanoidRootPart"))
            local ahQ = if ahF_1 then 1 else 0
            local ahO = 2852 * ahQ + 526 * (1 - ahQ)
            local ahP = 1168 * ahQ + 1809 * (1 - ahQ)
            if not ((ahO * 3707 + ahP * 1653 + ahO * ahP) % 16777213 == 15834204) then
                ahF_1 = v.PrimaryPart
            end
            if not ahF_1 then
                ahF_1 = v:FindFirstChildWhichIsA("BasePart", true)
            end
            local ahG_2 = ahF_1
            if ahG_2 then
                ahE[#ahE + 1] = { model = v, part = ahG_2 }
            end
        end
    end
    return ahE
end
function fns.fn1553()
    if Label3 then
        Label3:SetText(Vy())
    end
end
function fns.fn1558(bb)
    local XY = Uy.Pets[bb]
    local XZ = XY and tonumber(XY.Rarity)
    return XZ or 0
end
function fns.fn1580(gm, gn)
    if type(gn) ~= "table" then
        return
    end
    for i, v in ipairs(gn) do
        fns.aCe_7(gm, v)
    end
end
function fns.fn1616(c5)
    local Zy = aCe_91()
    local Zz = Zy and Zy.AutoDelete
    local Zz_1 = type(Zz) == "table" and Zz[c5] ~= nil
    return Zz_1
end
function fns.fn1627()
    local agC = aCe_91()
    local agD = agC and agC.DungeonHatchery
    local agE = agC
    if agE then
        agE = agC.DungeonEggSlots
    end
    local agC_1 = tonumber(agE) or 1
    local agC_2 = DateTimeManager:Now()
    if type(agD) ~= "table" then
        return
    end
    local agK = 1
    while agK <= agC_1 do
        local agL = agK
        local agD_2 = agD[agL]
        local agE_1 = type(agD_2) == "table"
        if agE_1 then
            local agG = tonumber(agD_2.HatchDT) or 0
            agE_1 = agG <= agC_2
        end
        if agE_1 then
            fns.aCe_28("HatchDungeonEgg", agL)
        end
        agK += 1
    end
end
function fns.fn1669(ne, nf)
    local ahW = fns.Options.DungeonFarmMethod and fns.Options.DungeonFarmMethod.Value or "Above"
    local ahX = fns.Options.DungeonFarmMethodOffset and fns.Options.DungeonFarmMethodOffset.Value
    local ah0 = if ahX then 1 else 0
    local ahZ = 1026 * ah0 + 496 * (1 - ah0)
    local ah_ = 3151 * ah0 + 348 * (1 - ah0)
    if not ((ahZ * 3871 + ah_ * 3035 + ahZ * ah_) % 16777213 == 16767857) then
        ahX = 5
    end
    local ahW_2 = ahX
    if ahW == "Orbit" then
        aCe_44 += 0.12
        return nf + Vector3.new(math.cos(aCe_44) * ahW_2, 2, math.sin(aCe_44) * ahW_2)
    elseif ahW == "Behind" then
        return nf - ne.CFrame.LookVector * ahW_2 + Vector3.new(0, 2, 0)
    elseif ahW == "Below" then
        return nf - Vector3.new(0, ahW_2, 0)
    else
        return nf + Vector3.new(0, ahW_2, 0)
    end
end
function fns.fn1694(nm, nn, no)
    V9.hold(nm, V9.methodPosition(nn, no), no)
end
function fns.fn1724()
    local Character = V3.Character
    local acM = Character and Character:FindFirstChild("HumanoidRootPart")
    if not acM then
        return
    end
    local Gameplay = workspace:FindFirstChild("Gameplay")
    local acN = Gameplay and Gameplay:FindFirstChild("KOTH")
    local acM_2 = acN
    if acN then
        local acO = acM_2:FindFirstChild("KOH_BOUNDARY") or acM_2:FindFirstChild("KingGui")
        acN = acO
    end
    local acM_3 = acN
    if acN then
        acN = acM_3:IsA("BasePart")
    end
    if acN then
        acN = (acM.Position - acM_3.Position).Magnitude > 6
    end
    if acN then
        acM.CFrame = acM_3.CFrame + Vector3.new(0, 3, 0)
    end
end
function fns.fn1797(iJ)
    local aeb = fns.Options[iJ] and fns.Options[iJ].Value
    local aec = {}
    if type(aeb) ~= "table" then
        return aec
    end
    for k, v in pairs(aeb) do
        if v then
            local aeb_1 = aCe_86[k]
            if aeb_1 then
                aec[#aec + 1] = aeb_1
            end
        end
    end
    return aec
end
function fns.fn1802(ai, aj)
    return string.format('<font color="%s">%s</font>', aj, ai)
end
function fns.fn1850(ez, eA)
    if eA == "Normal" then
        local Gameplay = workspace:FindFirstChild("Gameplay")
        local aav_1 = Gameplay and Gameplay:FindFirstChild("Map")
        local aau_2 = aav_1
        if aav_1 then
            aav_1 = aau_2:FindFirstChild("ElementZones")
        end
        local aau_3 = aav_1
        if aav_1 then
            aav_1 = aau_3:FindFirstChild(ez)
        end
        return aav_1
    end
    local aau_4 = fns.aCe_11[ez]
    local aav_2 = aau_4 and aau_4[eA]
    return aCe_85(aav_2)
end
function fns.fn1857()
    for k in pairs(fns.aCe_9) do
        Wm(k, false)
        fns.aCe_9[k] = nil
    end
end
function fns.fn1890(m6, m7, m8)
    if (m7 - m8).Magnitude < 0.1 then
        m8 = m7 + Vector3.new(0, 0, -1)
    end
    m6.AssemblyLinearVelocity = Vector3.zero
    m6.AssemblyAngularVelocity = Vector3.zero
    m6.CFrame = CFrame.lookAt(m7, m8)
    local ahR = V3.Character and V3.Character:FindFirstChildOfClass("Humanoid")
    local ahS = ahR
    if ahR then
        ahR = not (U2.Fly and U2.Fly.Value)
    end
    if ahR then
        ahS.PlatformStand = true
    end
end
function fns.fn1894(bu)
    local X9 = bu == ""
    local Ya = bu == nil
    local Yf = if Ya then 1 else 0
    local Yd = 2850 * Yf + 738 * (1 - Yf)
    local Ye = 539 * Yf + 3822 * (1 - Yf)
    if not ((Yd * 2486 + Ye * 1872 + Yd * Ye) % 16777213 == 9630258) then
        Ya = X9
    end
    if Ya or bu == "Normal" then
        return "Normal"
    end
    return tostring(bu)
end
function fns.fn1895(cg)
    local YS = aCe_53(cg)
    local YT = {}
    local YU = #YS
    local YY = 1
    while YY <= YU do
        local YZ = YY
        YT[YZ] = tostring(YZ)
        YY += 1
    end
    if #YT == 0 then
        YT[1] = "1"
    end
    return YT
end
function fns.fn1964()
    local RenderingGroup = U3.Performance:AddLeftGroupbox("Rendering", "monitor")
    RenderingGroup:AddToggle("FPSCap", { Text = "FPS Cap", Default = false })
    RenderingGroup:AddSlider("FPSCapValue", { Text = "FPS Cap Value", Default = 60, Min = 10, Max = 360, Rounding = 0 })
    RenderingGroup:AddToggle("BoostFPS", { Text = "Boost FPS", Default = false })
    RenderingGroup:AddToggle("HidePets", { Text = "Hide Pets", Default = false })
    RenderingGroup:AddToggle("BlackScreen", { Text = "Black Screen", Default = false })
    local Mass_AccountFarmingGroup = U3.Performance:AddRightGroupbox("Mass-Account Farming", "users")
    Mass_AccountFarmingGroup:AddToggle("HideOtherPlayers", { Text = "Hide Other Players", Default = false })
    Mass_AccountFarmingGroup:AddToggle("HideMyCharacter", { Text = "Hide My Character", Default = false })
    Mass_AccountFarmingGroup:AddToggle("DisablePopups", { Text = "Disable Popups", Default = false })
    Mass_AccountFarmingGroup:AddButton({
        Text = "Reset Rendering",
        Func = function()
            for i, v in ipairs({ "FPSCap", "BoostFPS", "HideOtherPlayers", "HideMyCharacter", "HidePets", "BlackScreen" }) do
                if U2[v] then
                    U2[v]:SetValue(false)
                end
            end
            aCe_62:Notify("Rendering restored")
        end
    })
end
function fns.fn2004()
    local agN = aCe_91()
    local agO = agN and agN.DungeonEggToReplace
    local agO_1 = agO == ""
    local agQ = type(agO) ~= "string"
    local agW = if agQ then 1 else 0
    local agU = 967 * agW + 407 * (1 - agW)
    local agV = 4001 * agW + 3031 * (1 - agW)
    if not ((agU * 1240 + agV * 350 + agU * agV) % 16777213 == 6468397) then
        agQ = agO_1
    end
    if agQ then
        return
    end
    local agO_2 = aCe_81(agO)
    local DungeonHatchery = agN.DungeonHatchery
    local agQ_1 = tonumber(agN.DungeonEggSlots) or 1
    local agN_1 = math.huge
    local agR
    local agZ = 1
    while agZ <= agQ_1 do
        local ag_ = agZ
        local agQ_2 = DungeonHatchery
        if agQ_2 then
            agQ_2 = DungeonHatchery[ag_]
        end
        local agS_1 = agQ_2
        if type(agS_1) ~= "table" then
            fns.aCe_28("ReplaceEggInSlot", ag_)
            return
        end
        local agQ_3 = aCe_81(agS_1.Type)
        if agQ_3 < agN_1 then
            agN_1 = agQ_3
            agR = ag_
        end
        agZ += 1
    end
    if agR and agO_2 > agN_1 then
        fns.aCe_28("ReplaceEggInSlot", agR)
    end
end
function fns.fn2010()
    local ZM = {}
    if U2.PetdexAutoDelete and U2.PetdexAutoDelete.Value then
        local ZO = fns.Options.EggName and fns.Options.EggName.Value
        if U2.AutoCompletePetdex and U2.AutoCompletePetdex.Value and aCe_36 then
            ZO = aCe_36
        end
        local ZN_3 = ZO ~= ""
        local ZP_1 = type(ZO) == "string" and ZN_3
        if ZP_1 then
            local ZN_4 = Uy.Eggs[ZO]
            local ZO_1 = ZN_4 and ZN_4.Odds
            if type(ZO_1) == "table" then
                local ZO_2 = U2.IgnoreSecretPets and U2.IgnoreSecretPets.Value
                for k in pairs(ZO_1) do
                    if type(k) == "string" then
                        local ZN_6 = ZO_2 and aCe_83(k)
                        if not ZN_6 then
                            ZM[k] = true
                        end
                    end
                end
            end
        end
    end
    for k in pairs(fns.aCe_9) do
        if not ZM[k] then
            Wm(k, false)
            fns.aCe_9[k] = nil
        end
    end
    for k in pairs(ZM) do
        if not fns.aCe_9[k] then
            if Wm(k, true) then
                fns.aCe_9[k] = true
            end
        end
    end
end
function fns.fn2012()
    pcall(function()
        aCe_80:ToPetShop()
    end)
end
function fns.fn2024()
    local attr = V3:GetAttribute("DungeonId")
    local ahA = attr == ""
    local ahB = type(attr) ~= "string" or ahA
    if ahB then
        return nil
    end
    local DungeonStorage = workspace:FindFirstChild("DungeonStorage")
    local ahB_1 = DungeonStorage and DungeonStorage:FindFirstChild(attr)
    return ahB_1
end
function fns.fn2103()
    local aeT = fns.aCe_5()
    local aeU = aeT and aeT:FindFirstChild("OtherFrames")
    return aeU
end
function fns.fn2109()
    return ClientDataManager.Data
end
function fns.fn2112()
    local Zp = U2.IgnoreSecretPets and U2.IgnoreSecretPets.Value
    local Zp_1 = WF()
    for i, v in ipairs(fns.aCe_6) do
        if #aCe_48(v.EggName, Zp, Zp_1) > 0 then
            return v.EggName
        end
    end
    return nil
end
function fns.fn2162()
    aCe_60(fns.aCe_18, "Copied Discord invite to clipboard")
end
function fns.fn2216(aN, aO)
    local XG = aCe_91()
    local XG_1 = XG and XG.Settings
    if type(XG_1) ~= "table" then
        return
    end
    if XG_1[aN] == aO then
        return
    end
    fns.aCe_28("ChangeSetting", aN)
end
function fns.fn2268(bM)
    local Yn = {}
    local Yo = (bM - 1) * aCe_72 + 1
    local Yp = math.min(#Vr, bM * aCe_72)
    local Yt = Yo
    while Yt <= Yp do
        local Yo_1 = Vr[Yt]
        if Yo_1 and Yo_1.EggName then
            Yn[#Yn + 1] = Yo_1.EggName
        end
        Yt += 1
    end
    return Yn
end
function fns.fn2278()
    if not (U2.OnlyThisFarmZone and U2.OnlyThisFarmZone.Value) then
        return nil
    end
    local aeD_1 = fns.Options.OnlyFarmZone and fns.Options.OnlyFarmZone.Value
    local aeD_2 = aeD_1 ~= ""
    local aeF = type(aeD_1) == "string" and aeD_2
    if aeF then
        return aeD_1
    end
    return nil
end
function fns.fn2339()
    local agi = U2.AutoStartSelectedDungeon and U2.AutoStartSelectedDungeon.Value
    if not agi then
        agi = U2.AutoFarmDungeonV1 and U2.AutoFarmDungeonV1.Value
    end
    local agp = if agi then 1 else 0
    local agn = 2811 * agp + 2756 * (1 - agp)
    local ago = 974 * agp + 395 * (1 - agp)
    if not ((agn * 970 + ago * 322 + agn * ago) % 16777213 == 5778212) then
        agi = U2.AutoFarmDungeonV2 and U2.AutoFarmDungeonV2.Value
    end
    return agi
end
function fns.fn2371()
    local aeW = fns.aCe_5()
    local aeX = aeW and aeW:FindFirstChild("StartFrame")
    local aeW_1 = aeX
    if aeX then
        aeX = aeW_1:FindFirstChild("RightSideButtons")
    end
    local aeW_2 = aeX
    if aeX then
        aeX = aeW_2:FindFirstChild("LeaveDungeon")
    end
    local aeW_3 = aeX
    return aeW_3 ~= nil and aeW_3.Visible == true
end
function fns.fn2413(Ae)
    local max = math.max
    local floor = math.floor
    local ar7 = tonumber(Ae) or 0
    Ae = max(0, floor(ar7))
    if Ae <= 0 then
        return "Ready"
    end
    local ar5_1 = Ae // 86400
    local ar6_1 = Ae % 86400 // 3600
    local ar7_1 = Ae % 3600 // 60
    local ar8 = Ae % 60
    if ar5_1 > 0 then
        return string.format("%dd %dh %dm", ar5_1, ar6_1, ar7_1)
    elseif ar6_1 > 0 then
        return string.format("%dh %dm %ds", ar6_1, ar7_1, ar8)
    elseif ar7_1 > 0 then
        return string.format("%dm %ds", ar7_1, ar8)
    else
        return ar8 .. "s"
    end
end
function fns.fn2415()
    for i, v in ipairs(fns.aCe_12:GetTagged("Boss")) do
        local adB = v.Parent
        if adB then
            local adC = v:GetAttribute("Health") or 0
            adB = adC > 0
        end
        if adB then
            return v
        end
    end
    return nil
end
function fns.fn2421()
    local afx_1 = aCe_47[fns.Options.SelectDungeonDifficulty and fns.Options.SelectDungeonDifficulty.Value]
    local afC = if afx_1 then 1 else 0
    local afA = 882 * afC + 3948 * (1 - afC)
    local afB = 191 * afC + 138 * (1 - afC)
    if not ((afA * 1408 + afB * 3009 + afA * afB) % 16777213 == 1985037) then
        afx_1 = 1
    end
    return afx_1
end
aCe_88 = nil
aCe_67 = nil
aCe_46 = nil
Uf = nil
aCe_73 = nil
fns.aCe_27 = nil
aCe_81 = nil
aCe_36 = nil
fns.aCe_15 = nil
fns.aCe_1 = nil
ItemInfo = nil
fns.aCe_21 = nil
fns.aCe_9 = nil
Uy = nil
aCe_70 = nil
UF = nil
aCe_60 = nil
fns.aCe_5 = nil
fns.Options = nil
local Ud, Ue, Ug, Ui, Uk, Ul, Um, Uo, Ut, Uu, Uv, Uz, UB, UC, UD, UE, UG, CheckCode, UI, UJ, UK, UL, UM, UO, UP, UR, US, UT, UU, UW, UX
aCe_53 = nil
U2 = nil
U3 = nil
aCe_59 = nil
aCe_39 = nil
fns.aCe_17 = nil
aCe_92 = nil
aCe_72 = nil
aCe_50 = nil
fns.aCe_26 = nil
Vm = nil
aCe_82 = nil
aCe_34 = nil
fns.aCe_14 = nil
Vr = nil
aCe_85 = nil
aCe_62 = nil
aCe_42 = nil
fns.aCe_20 = nil
Vy = nil
aCe_68 = nil
aCe_47 = nil
Label3 = nil
aCe_54 = nil
fns.aCe_30 = nil
local UY, UZ, U0, U1, U4, Label2, U9, Va, Vb, Vc, Vd, Ve, Vf, Vk, Vl, Vo, Vs, Vx, Vz, VC, VD, VF, VG, VJ, VK
aCe_83 = nil
aCe_40 = nil
fns.aCe_18 = nil
DateTimeManager = nil
aCe_65 = nil
fns.aCe_23 = nil
VY = nil
fns.aCe_33 = nil
V3 = nil
aCe_80 = nil
aCe_57 = nil
V9 = nil
ClientTool = nil
aCe_44 = nil
fns.aCe_6 = nil
aCe_89 = nil
ClientDataManager = nil
aCe_48 = nil
Wl = nil
Wm = nil
aCe_77 = nil
aCe_56 = nil
fns.aCe_32 = nil
fns.aCe_12 = nil
fns.aCe_3 = nil
local VL, VN, VQ, VS, VU, VW, VX, VZ, V_, V1, V2, V6, V7, V8, Wa, Wd, Wf, Wj, Wk, Wr, Ws, Wt, Wu, Wv, Ww
aCe_66 = nil
DungeonUpgradeShop = nil
WF = nil
aCe_76 = nil
aCe_52 = nil
fns.aCe_28 = nil
WL = nil
aCe_38 = nil
WR = nil
aCe_86 = nil
aCe_45 = nil
fns.aCe_7 = nil
aCe_91 = nil
aCe_71 = nil
aCe_51 = nil
fns.aCe_11 = nil
ElementsInfo = nil
W3 = nil
aCe_79 = nil
local QuestInfo, Wz, WB, WC, WD, WJ, WK, UserInputService, WN, WP, WQ, WT, RunService, WX, W0, W5
QuestInfo = nil
Wz = nil
WB = nil
WC = nil
WD = nil
WJ = nil
WK = nil
UserInputService = nil
WN = nil
WP = nil
WQ = nil
WT = nil
RunService = nil
WX = nil
W0 = nil
W5 = nil
aCe_88, W0, RunService, UserInputService, WC, Ww, fns.aCe_12, Wf, Wa, V3, VU, fns.aCe_18, VF, aCe_68, aCe_100, aCe_50, U9, U1, UU, UL, CheckCode, fns.aCe_13, Uy, ItemInfo, Uk, aCe_46, ElementsInfo, aCe_45, aCe_38, DungeonUpgradeShop, QuestInfo, Ws, ClientDataManager, ClientTool, aCe_80, VW, DateTimeManager, VG, aCe_94, aCe_62, Vl, Vb, U2, fns.Options, aCe_57, VY, aCe_65, fns.aCe_30, VC, Vx, Vo, Ve, U4, UX, UP, UI, UC, Uz, Uv, Uo, Ue, W5, Vr, aCe_72, fns.aCe_17, fns.aCe_6, aCe_60, Uu, W3, aCe_52, aCe_91, fns.aCe_28, Wj, aCe_34, aCe_71, Wl, aCe_83, UR, UB, aCe_73, aCe_51, aCe_53, WT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local aCe_31 = 5
repeat
    aCe_78 = (aCe_31 * 17 + 20) % 38 + 1
    if aCe_78 <= 19 then
        if aCe_78 <= 10 then
            if aCe_78 <= 5 then
                if aCe_78 <= 3 then
                    if aCe_78 <= 2 then
                        if aCe_78 <= 1 then
                            if (aCe_31 * 3 + 4) * 13 % 4 == ((aCe_31 * 3 + 4) * 13 + 0) % 4 then
                                aCe_100 = W0:WaitForChild("Events")
                            else
                                W0 = aCe_100:WaitForChild("Events")
                            end
                            aCe_31 = (aCe_31 + 85) % 152
                        else
                            aCe_58 = (vector.create((aCe_31 * 7 + 4) % 11 + 1, (aCe_31 * 11 + 1) % 13 + 1, (aCe_31 * 11 + 11) % 17 + 1))
                            local aHP = vector.floor(aCe_58) + vector.ceil(aCe_58 * -1)
                            if vector.dot(aHP, aHP) == 3 then
                                UU = U9:WaitForChild("UIAction")
                                aCe_100 = U9:WaitForChild("SwingSaber")
                                aCe_50 = U9:WaitForChild("SellStrength")
                                U1 = U9:WaitForChild("CollectCurrencyPickup")
                            else
                                aCe_50 = aCe_100:WaitForChild("UIAction")
                                U9 = aCe_100:WaitForChild("SwingSaber")
                                U1 = aCe_100:WaitForChild("SellStrength")
                                UU = aCe_100:WaitForChild("CollectCurrencyPickup")
                            end
                            aCe_31 = (aCe_31 + 85) % 152
                        end
                    else
                        aCe_58 = (vector.create((aCe_31 * 7 + 5) % 11 + 1, (aCe_31 * 11 + 13) % 13 + 1, (aCe_31 * 6 + 9) % 17 + 1))
                        aCe_37 = (vector.create((aCe_31 * 2 + 9) % 11 + 1, (aCe_31 * 7 + 2) % 13 + 1, (aCe_31 * 9 + 17) % 17 + 1))
                        fns.aCe_19 = (vector.create((aCe_31 * 4 + 3) % 11 + 1, (aCe_31 * 9 + 7) % 13 + 1, (aCe_31 * 2 + 5) % 17 + 1))
                        fns.aCe_4 = (vector.create((aCe_31 * 2 + 2) % 5 + 1, (aCe_31 * 1 + 6) % 7 + 1, (aCe_31 * 1 + 1) % 9 + 1))
                        if vector.dot(vector.cross(aCe_58, (vector.cross(aCe_37, fns.aCe_19))), fns.aCe_4) == vector.dot(aCe_37 * vector.dot(aCe_58, fns.aCe_19) - fns.aCe_19 * vector.dot(aCe_58, aCe_37), fns.aCe_4) then
                            UL = aCe_100:WaitForChild("EggHatchResult")
                            CheckCode = aCe_100:WaitForChild("CheckCode")
                        else
                            aCe_100 = CheckCode:WaitForChild("EggHatchResult")
                            UL = CheckCode:WaitForChild("CheckCode")
                        end
                        aCe_31 = (aCe_31 + 47) % 152
                    end
                elseif aCe_78 <= 4 then
                    aCe_58 = {
                        "yfmymeunpyb",
                        "rebmukj",
                        "hwf",
                        "gqzvvivcot",
                        "kjpvhhqg",
                        "vdsfdchjlfwx",
                        "qkaewsx",
                        "fjanyw",
                        "cilhkqdkzm",
                        "mmacjfzacpl"
                    }
                    if aCe_58[(aCe_31 * 20 + 50) % 10 + 1] < aCe_58[(aCe_31 * 20 + 50) % 10 + 1] then
                        W0 = fns.aCe_13:WaitForChild("Modules")
                    else
                        fns.aCe_13 = W0:WaitForChild("Modules")
                    end
                    aCe_31 = (aCe_31 + 47) % 152
                else
                    if (not aCe_45 or W5) and (Vb and not VY) and (false and W5 or not VY and false) or not ((not aCe_45 or W5) and (Vb and not VY) and (false and W5 or not VY and false)) then
                        Uy = require(fns.aCe_13:WaitForChild("PetsInfo"))
                    else
                        fns.aCe_13 = require(Uy:WaitForChild("PetsInfo"))
                    end
                    aCe_31 = (aCe_31 + 47) % 152
                end
            elseif aCe_78 <= 8 then
                if aCe_78 <= 7 then
                    if aCe_78 <= 6 then
                        if aCe_31 * 2953307 + 8 + 1 >= aCe_31 * 2953307 + 8 + 1 + 2 then
                            fns.aCe_13 = require(ItemInfo:WaitForChild("ItemInfo"))
                        else
                            ItemInfo = require(fns.aCe_13:WaitForChild("ItemInfo"))
                        end
                        aCe_31 = (aCe_31 + 85) % 152
                    else
                        aCe_58 = (vector.create((aCe_31 * 7 + 4) % 11 + 1, (aCe_31 * 3 + 7) % 13 + 1, (aCe_31 * 6 + 14) % 17 + 1))
                        aCe_37 = (vector.create((aCe_31 * 2 + 1) % 11 + 1, (aCe_31 * 11 + 12) % 13 + 1, (aCe_31 * 3 + 2) % 17 + 1))
                        fns.aCe_19 = (vector.create((aCe_31 * 5 + 7) % 5 + 1, (aCe_31 * 4 + 5) % 7 + 1, (aCe_31 * 1 + 2) % 9 + 1))
                        if math.abs((vector.angle(aCe_58, aCe_37, fns.aCe_19))) - math.abs((vector.angle(aCe_37, aCe_58, fns.aCe_19))) == 2 then
                            fns.aCe_13 = require(ElementsInfo:WaitForChild("InfiniteMath"))
                            Uk = require(ElementsInfo:WaitForChild("PetdexRewardInfo"))
                            aCe_46 = require(ElementsInfo:WaitForChild("ElementsInfo"))
                        else
                            Uk = require(fns.aCe_13:WaitForChild("InfiniteMath"))
                            aCe_46 = require(fns.aCe_13:WaitForChild("PetdexRewardInfo"))
                            ElementsInfo = require(fns.aCe_13:WaitForChild("ElementsInfo"))
                        end
                        aCe_31 = (aCe_31 + 47) % 152
                    end
                else
                    aCe_58 = {
                        "zmnjvrc",
                        "gicvtnk",
                        "ztsnrkf",
                        "mfkscaou",
                        "nxzrhgrire",
                        "quw",
                        "nivmoal",
                        "yqfkx",
                        "fadvufzb",
                        "mod",
                        "eoypnoiz"
                    }
                    local aHQ = aCe_31
                    aCe_37 = aCe_58[aHQ % 11 + 1]
                    if aCe_37:len() <= aCe_37:reverse():rep(aHQ % 3 + 2):len() then
                        aCe_45 = require(fns.aCe_13:WaitForChild("DungeonInfo"))
                        aCe_38 = require(fns.aCe_13:WaitForChild("DungeonGroupModule"))
                        DungeonUpgradeShop = require(fns.aCe_13:WaitForChild("DungeonUpgradeShop"))
                    else
                        fns.aCe_13 = require(DungeonUpgradeShop:WaitForChild("DungeonInfo"))
                        aCe_45 = require(DungeonUpgradeShop:WaitForChild("DungeonGroupModule"))
                        aCe_38 = require(DungeonUpgradeShop:WaitForChild("DungeonUpgradeShop"))
                    end
                    aCe_31 = (aCe_31 + 47) % 152
                end
            elseif aCe_78 <= 9 then
                aCe_58 = { "mbbnt", "yhz", "ayw", "kncygpxje", "fzm", "sazvcstrdv", "fqpszejrh", "dfzussoulpq", "witrieoeu" }
                local aJ3 = aCe_31
                aCe_37 = aCe_58[aJ3 % 9 + 1]
                if aCe_37:len() >= aCe_37:reverse():rep(aJ3 % 3 + 2):len() then
                    fns.aCe_13 = require(QuestInfo:WaitForChild("QuestInfo"))
                else
                    QuestInfo = require(fns.aCe_13:WaitForChild("QuestInfo"))
                end
                aCe_31 = (aCe_31 + 85) % 152
            else
                aCe_58 = (vector.create((aCe_31 * 4 + 7) % 11 + 1, (aCe_31 * 1 + 6) % 13 + 1, (aCe_31 * 2 + 10) % 17 + 1))
                aCe_37 = (vector.create((aCe_31 * 3 + 5) % 11 + 1, (aCe_31 * 10 + 9) % 13 + 1, (aCe_31 * 9 + 17) % 17 + 1))
                local aKK = vector.cross(aCe_58, aCe_37)
                local aKL = vector.dot(aCe_58, aCe_37)
                if vector.dot(aKK, aKK) + aKL * aKL == vector.dot(aCe_58, aCe_58) * vector.dot(aCe_37, aCe_37) + 2 then
                    V3 = Ws:WaitForChild("PlayerScripts"):WaitForChild("MainClient")
                else
                    Ws = V3:WaitForChild("PlayerScripts"):WaitForChild("MainClient")
                end
                aCe_31 = (aCe_31 + 9) % 152
            end
        elseif aCe_78 <= 15 then
            if aCe_78 <= 13 then
                if aCe_78 <= 12 then
                    if aCe_78 <= 11 then
                        if ((W5 and UU or UU and not CheckCode) and (QuestInfo or CheckCode or CheckCode and not QuestInfo) and (UU and not CheckCode and (not W5 and not UU) and (not QuestInfo and CheckCode or not CheckCode and not W5)) or ((QuestInfo or CheckCode) and (QuestInfo or not QuestInfo) and (not CheckCode and not CheckCode or UU and QuestInfo) or W5 and CheckCode and (UU and UU) and (UU and CheckCode or not UU and W5))) and not ((W5 and UU or UU and not CheckCode) and (QuestInfo or CheckCode or CheckCode and not QuestInfo) and (UU and not CheckCode and (not W5 and not UU) and (not QuestInfo and CheckCode or not CheckCode and not W5)) or ((QuestInfo or CheckCode) and (QuestInfo or not QuestInfo) and (not CheckCode and not CheckCode or UU and QuestInfo) or W5 and CheckCode and (UU and UU) and (UU and CheckCode or not UU and W5))) then
                            Ws = require(ClientDataManager:WaitForChild("ClientDataManager"))
                        else
                            ClientDataManager = require(Ws:WaitForChild("ClientDataManager"))
                        end
                        aCe_31 = (aCe_31 + 85) % 152
                    else
                        local aKH = bit32.rrotate(bit32.bxor(bit32.lrotate(aCe_31, 22), string.byte(tostring(aCe_52))), 6)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(aKH, 2025165284), 20), 508005209) == bit32.lrotate(aKH, 20) then
                            ClientTool = require(Ws:WaitForChild("ClientTool"))
                        else
                            Ws = require(ClientTool:WaitForChild("ClientTool"))
                        end
                        aCe_31 = (aCe_31 + 123) % 152
                    end
                else
                    local aJi = bit32.rrotate(bit32.bxor(bit32.lrotate(aCe_31, 10), string.byte(tostring(Vr))), 1)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(aJi, 3421606201), 24), 969666961) == bit32.lrotate(aJi, 24) then
                        aCe_80 = require(Ws:WaitForChild("Locations"))
                        VW = require(Ws:WaitForChild("RegionLoader"))
                        DateTimeManager = require(Ws:WaitForChild("DateTimeManager"))
                        VG = require(Ws:WaitForChild("Gui"):WaitForChild("MenuNav"))
                    else
                        Ws = require(DateTimeManager:WaitForChild("Locations"))
                        VG = require(DateTimeManager:WaitForChild("RegionLoader"))
                        VW = require(DateTimeManager:WaitForChild("DateTimeManager"))
                        aCe_80 = require(DateTimeManager:WaitForChild("Gui"):WaitForChild("MenuNav"))
                    end
                    aCe_31 = (aCe_31 + 47) % 152
                end
            elseif aCe_78 <= 14 then
                if (aCe_31 * 3 + 1) * 9 % 4 == ((aCe_31 * 3 + 1) * 9 + 0) % 4 then
                    aCe_94 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    Uu = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                aCe_31 = (aCe_31 + 85) % 152
            else
                local aJ4 = bit32.rrotate(bit32.bxor(bit32.lrotate(aCe_31, 10), string.byte(tostring(aCe_50))), 5)
                if bit32.bxor(bit32.lrotate(bit32.bxor(aJ4, 1848541469), 20), 299295464) == bit32.lrotate(aJ4, 20) then
                    aCe_62 = loadstring(game:HttpGet(aCe_94 .. "Library.lua"))()
                    Vl = loadstring(game:HttpGet(aCe_94 .. "addons/ThemeManager.lua"))()
                    Vb = loadstring(game:HttpGet(aCe_94 .. "addons/SaveManager.lua"))()
                    U2 = aCe_62.Toggles
                    fns.Options = aCe_62.Options
                else
                    aCe_94 = loadstring(game:HttpGet(fns.Options .. "Library.lua"))()
                    U2 = loadstring(game:HttpGet(fns.Options .. "addons/ThemeManager.lua"))()
                    aCe_62 = loadstring(game:HttpGet(fns.Options .. "addons/SaveManager.lua"))()
                    Vb = aCe_94.Toggles
                    Vl = aCe_94.Options
                end
                aCe_31 = (aCe_31 + 123) % 152
            end
        elseif aCe_78 <= 17 then
            if aCe_78 <= 16 then
                aCe_58 = (vector.create((aCe_31 * 2 + 6) % 11 + 1, (aCe_31 * 9 + 6) % 13 + 1, (aCe_31 * 8 + 5) % 17 + 1))
                local aHR = vector.floor(aCe_58) + vector.ceil(aCe_58 * -1)
                if vector.dot(aHR, aHR) == 0 then
                    aCe_60 = fns.fn543
                    Uu = fns.fn2162
                    W3 = fns.fn1802
                else
                    W3 = fns.fn543
                    aCe_60 = fns.fn2162
                    Uu = fns.fn1802
                end
                aCe_31 = (aCe_31 + 85) % 152
            else
                if (aCe_31 * 2 + 1) * 10 % 3 == ((aCe_31 * 2 + 1) * 10 + 3) % 3 then
                    aCe_52 = fns.fn825
                    aCe_57 = "#7fd47f"
                else
                    aCe_57 = fns.fn825
                    aCe_52 = "#7fd47f"
                end
                aCe_31 = (aCe_31 + 47) % 152
            end
        elseif aCe_78 <= 18 then
            if (not aCe_91 and not aCe_91 or (aCe_100 or not Vl) or Uz and not aCe_100 and (DungeonUpgradeShop and Uz) or ((not aCe_91 or DungeonUpgradeShop) and (aCe_91 and aCe_100) or (not aCe_100 or not aCe_91 or (aCe_100 or not Uz)))) and ((aCe_100 and Vl or not Vl and not aCe_91 or (not Vl or not DungeonUpgradeShop) and (aCe_100 or Vl)) and ((DungeonUpgradeShop or aCe_100) and (aCe_91 and Uz) or Vl and not Uz and (not DungeonUpgradeShop and Vl))) or not ((not aCe_91 and not aCe_91 or (aCe_100 or not Vl) or Uz and not aCe_100 and (DungeonUpgradeShop and Uz) or ((not aCe_91 or DungeonUpgradeShop) and (aCe_91 and aCe_100) or (not aCe_100 or not aCe_91 or (aCe_100 or not Uz)))) and ((aCe_100 and Vl or not Vl and not aCe_91 or (not Vl or not DungeonUpgradeShop) and (aCe_100 or Vl)) and ((DungeonUpgradeShop or aCe_100) and (aCe_91 and Uz) or Vl and not Uz and (not DungeonUpgradeShop and Vl)))) then
                VY = "#6ec1ff"
                aCe_65 = "#e8a34d"
                fns.aCe_30 = "#8b93a3"
                VC = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                Vx = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            else
                Vx = "#6ec1ff"
                VY = "#e8a34d"
                VC = "#8b93a3"
                fns.aCe_30 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                aCe_65 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            end
            aCe_31 = (aCe_31 + 9) % 152
        else
            aCe_58 = (vector.create((aCe_31 * 5 + 6) % 11 + 1, (aCe_31 * 11 + 12) % 13 + 1, (aCe_31 * 15 + 9) % 17 + 1))
            local aId = vector.floor(aCe_58) + vector.ceil(aCe_58 * -1)
            if vector.dot(aId, aId) == 0 then
                Vo = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                Ve = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                U4 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
            else
                U4 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                Vo = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                Ve = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
            end
            aCe_31 = (aCe_31 + 47) % 152
        end
    elseif aCe_78 <= 29 then
        if aCe_78 <= 24 then
            if aCe_78 <= 22 then
                if aCe_78 <= 21 then
                    if aCe_78 <= 20 then
                        if aCe_31 * 55121581 + 8 + 6 >= aCe_31 * 55121581 + 8 + 6 + 3 then
                            UP = "https://paypal.me/TheTruckerGOD"
                            UX = "https://venmo.com/u/miserablemusic"
                        else
                            UX = "https://paypal.me/TheTruckerGOD"
                            UP = "https://venmo.com/u/miserablemusic"
                        end
                        aCe_31 = (aCe_31 + 47) % 152
                    else
                        if aCe_31 * 79874679 + 12 + 7 >= aCe_31 * 79874679 + 12 + 7 + 6 then
                            UC = "#345d9d"
                            Uz = "#f7931a"
                            Uv = "#627eea"
                            Uo = "#26a17b"
                            UI = "#14f195"
                        else
                            UI = "#345d9d"
                            UC = "#f7931a"
                            Uz = "#627eea"
                            Uv = "#26a17b"
                            Uo = "#14f195"
                        end
                        aCe_31 = (aCe_31 + 85) % 152
                    end
                else
                    if (aCe_31 * 3 + 1) * 9 % 4 == ((aCe_31 * 3 + 1) * 9 + 15) % 4 then
                        aCe_91 = "#0070ba"
                        Ue = "#008cff"
                        W5 = fns.fn2109
                    else
                        Ue = "#0070ba"
                        W5 = "#008cff"
                        aCe_91 = fns.fn2109
                    end
                    aCe_31 = (aCe_31 + 85) % 152
                end
            elseif aCe_78 <= 23 then
                local aIC = bit32.rrotate(bit32.bxor(bit32.lrotate(aCe_31, 28), string.byte(tostring(fns.aCe_18))), 7)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aIC, 791293311), 1667748824), (bit32.bxor(bit32.band(aIC, 3503673984), 3675789341))), 1667748824), 3675789341) ~= aIC then
                    Wj = fns.fn928
                    aCe_71 = fns.fn2216
                    fns.aCe_28 = function(aV, aW)
                        local XM
                        local XN = aCe_91()
                        local XN_2
                        local XO = aW == nil
                        local XO_4
                        if not XN or XO then
                            return false
                        end
                        local XO_3 = aV
                        local XU = if XO_3 then 1 else 0
                        local XS = 779 * XU + 1531 * (1 - XU)
                        local XT = 362 * XU + 1539 * (1 - XU)
                        if not ((XS * 586 + XT * 3230 + XS * XT) % 16777213 == 1907752) then
                            XO_3 = "Coins"
                        end
                        XM = XN[XO_3]
                        if XM == nil then
                            return false
                        end
                        XN_2, XO_4 = pcall(function()
                            return Uk.new(XM) >= Uk.new(aW)
                        end)
                        return XN_2 and XO_4 == true
                    end
                    aCe_34 = fns.fn1009
                else
                    fns.aCe_28 = fns.fn928
                    Wj = fns.fn2216
                    aCe_34 = function(aV, aW)
                        local XM
                        local XN = aCe_91()
                        local XN_1
                        local XO = aW == nil
                        local XO_2
                        if not XN or XO then
                            return false
                        end
                        local XO_1 = aV
                        local XU = if XO_1 then 1 else 0
                        local XS = 779 * XU + 1531 * (1 - XU)
                        local XT = 362 * XU + 1539 * (1 - XU)
                        if not ((XS * 586 + XT * 3230 + XS * XT) % 16777213 == 1907752) then
                            XO_1 = "Coins"
                        end
                        XM = XN[XO_1]
                        if XM == nil then
                            return false
                        end
                        XN_1, XO_2 = pcall(function()
                            return Uk.new(XM) >= Uk.new(aW)
                        end)
                        return XN_1 and XO_2 == true
                    end
                    aCe_71 = fns.fn1009
                end
                aCe_31 = (aCe_31 + 85) % 152
            else
                if aCe_31 * 21744131 + 2 + 1 <= aCe_31 * 21744131 + 2 + 1 + 5 then
                    Wl = fns.fn1558
                else
                    UR = fns.fn1558
                end
                aCe_31 = (aCe_31 + 9) % 152
            end
        elseif aCe_78 <= 27 then
            if aCe_78 <= 26 then
                if aCe_78 <= 25 then
                    aCe_58 = { "ogrqtksiupb", "cdlssphmg", "oefkpijdcp", "jznogj", "cixqenmcxvq", "hxh", "gqpd", "jojf" }
                    local aFi = aCe_31
                    aCe_37 = aCe_58[aFi % 8 + 1]
                    local aCe_29 = if aCe_37:len() <= aCe_37:reverse():rep(aFi % 3 + 2):len() then 1 else 0
                    if aCe_29 == 1 then
                        aCe_83 = function(bh)
                            local X1_2
                            local X0_2
                            X0_2, X1_2 = pcall(function()
                                return Uy:IsSecretPet(bh)
                            end)
                            return X0_2 and X1_2 == true
                        end
                        UR = fns.fn116
                        UB = fns.fn1300
                    else
                        UB = function(bh)
                            local X1_1
                            local X0_1
                            X0_1, X1_1 = pcall(function()
                                return Uy:IsSecretPet(bh)
                            end)
                            return X0_1 and X1_1 == true
                        end
                        aCe_83 = fns.fn116
                        UR = fns.fn1300
                    end
                    aCe_31 = (aCe_31 + 9) % 152
                else
                    aCe_58 = (vector.create((aCe_31 * 2 + 1) % 11 + 1, (aCe_31 * 11 + 10) % 13 + 1, (aCe_31 * 7 + 17) % 17 + 1))
                    aCe_37 = (vector.create((aCe_31 * 5 + 1) % 11 + 1, (aCe_31 * 7 + 4) % 13 + 1, (aCe_31 * 11 + 11) % 17 + 1))
                    local aIA = vector.cross(aCe_58, aCe_37)
                    local aIB = vector.dot(aCe_58, aCe_37)
                    if vector.dot(aIA, aIA) + aIB * aIB == vector.dot(aCe_58, aCe_58) * vector.dot(aCe_37, aCe_37) + 5 then
                        aCe_51 = fns.fn1894
                        aCe_73 = function(bw)
                            local Yg
                            local Yi_2
                            local Yh_5, Yh_7
                            Yh_5, Yg = pcall(function()
                                return Uy:GetStrengthMulti(bw)
                            end)
                            if Yh_5 then
                                local Yh_6 = tonumber(Yg)
                                if Yh_6 then
                                    return Yh_6
                                end
                                Yh_7, Yi_2 = pcall(function()
                                    return Uk.new(Yg):GetSuffix(false)
                                end)
                                if Yh_7 then
                                    local Yh_8 = tonumber(Yi_2) or 0
                                    return Yh_8
                                end
                                return 0
                            end
                            return 0
                        end
                    else
                        aCe_73 = fns.fn1894
                        aCe_51 = function(bw)
                            local Yg
                            local Yi_1
                            local Yh_1, Yh_3
                            Yh_1, Yg = pcall(function()
                                return Uy:GetStrengthMulti(bw)
                            end)
                            if Yh_1 then
                                local Yh_2 = tonumber(Yg)
                                if Yh_2 then
                                    return Yh_2
                                end
                                Yh_3, Yi_1 = pcall(function()
                                    return Uk.new(Yg):GetSuffix(false)
                                end)
                                if Yh_3 then
                                    local Yh_4 = tonumber(Yi_1) or 0
                                    return Yh_4
                                end
                                return 0
                            end
                            return 0
                        end
                    end
                    aCe_31 = (aCe_31 + 9) % 152
                end
            else
                if aCe_31 * 35906925 + 6 + 3 >= aCe_31 * 35906925 + 6 + 3 + 4 then
                    Uy = Vr.PetShopInfo
                else
                    Vr = Uy.PetShopInfo
                end
                aCe_31 = (aCe_31 + 123) % 152
            end
        elseif aCe_78 <= 28 then
            aCe_58 = (vector.create((aCe_31 * 2 + 5) % 11 + 1, (aCe_31 * 2 + 9) % 13 + 1, (aCe_31 * 10 + 11) % 17 + 1))
            aCe_37 = (vector.create((aCe_31 * 5 + 8) % 11 + 1, (aCe_31 * 2 + 13) % 13 + 1, (aCe_31 * 1 + 12) % 17 + 1))
            local aJ5 = vector.dot(aCe_58, aCe_37)
            if aJ5 * aJ5 >= vector.dot(aCe_58, aCe_58) * vector.dot(aCe_37, aCe_37) + 1 then
                fns.aCe_17 = 12
                Vr = math.max(1, math.ceil(#aCe_53 / fns.aCe_17))
                aCe_72 = fns.fn2268
            else
                aCe_72 = 12
                fns.aCe_17 = math.max(1, math.ceil(#Vr / aCe_72))
                aCe_53 = fns.fn2268
            end
            aCe_31 = (aCe_31 + 85) % 152
        else
            aCe_58 = (vector.create((aCe_31 * 4 + 3) % 11 + 1, (aCe_31 * 6 + 5) % 13 + 1, (aCe_31 * 11 + 14) % 17 + 1))
            aCe_37 = (vector.create((aCe_31 * 5 + 1) % 11 + 1, (aCe_31 * 2 + 4) % 13 + 1, (aCe_31 * 12 + 17) % 17 + 1))
            fns.aCe_19 = (vector.create((aCe_31 * 4 + 7) % 5 + 1, (aCe_31 * 5 + 3) % 7 + 1, (aCe_31 * 3 + 4) % 9 + 1))
            if math.abs((vector.angle(aCe_58, aCe_37, fns.aCe_19))) - math.abs((vector.angle(aCe_37, aCe_58, fns.aCe_19))) == 0 then
                WT = fns.fn427
                fns.aCe_6 = {}
            else
                fns.aCe_6 = fns.fn427
                WT = {}
            end
            aCe_31 = (aCe_31 + 123) % 152
        end
    elseif aCe_78 <= 34 then
        if aCe_78 <= 32 then
            if aCe_78 <= 31 then
                if aCe_78 <= 30 then
                    local aHZ = bit32.rrotate(bit32.bxor(bit32.lrotate(aCe_31, 29), string.byte(tostring(QuestInfo))), 29)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aHZ, 1746543619), 3566053985), (bit32.bxor(bit32.band(aHZ, 2548423676), 845553480))), 3566053985), 845553480) ~= aHZ then
                        aCe_100 = game:GetService("Players")
                    else
                        aCe_88 = game:GetService("Players")
                    end
                    aCe_31 = (aCe_31 + 9) % 152
                else
                    aCe_58 = { "hdmnjrxxp", "eukm", "ttkqatujhefl", "jgjvyr", "dnzornkqva", "gio", "brck", "ixejxhw" }
                    if aCe_58[(aCe_31 * 71 + 112) % 8 + 1] <= aCe_58[(aCe_31 * 71 + 112) % 8 + 1] then
                        W0 = game:GetService("ReplicatedStorage")
                    else
                        fns.aCe_30 = game:GetService("ReplicatedStorage")
                    end
                    aCe_31 = (aCe_31 + 85) % 152
                end
            else
                aCe_58 = (vector.create((aCe_31 * 6 + 6) % 11 + 1, (aCe_31 * 2 + 6) % 13 + 1, (aCe_31 * 7 + 6) % 17 + 1))
                aCe_37 = (vector.create((aCe_31 * 6 + 2) % 11 + 1, (aCe_31 * 3 + 5) % 13 + 1, (aCe_31 * 15 + 5) % 17 + 1))
                local aIy = vector.dot(aCe_58, aCe_37)
                if aIy * aIy >= vector.dot(aCe_58, aCe_58) * vector.dot(aCe_37, aCe_37) + 1 then
                    aCe_72 = game:GetService("RunService")
                else
                    RunService = game:GetService("RunService")
                end
                aCe_31 = (aCe_31 + 9) % 152
            end
        elseif aCe_78 <= 33 then
            local aFT = bit32.rrotate(bit32.bxor(bit32.lrotate(aCe_31, 11), string.byte(tostring(WC))), 7)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aFT, 1905028601), 2167281223), (bit32.bxor(bit32.band(aFT, 2389938694), 1946493760))), 2167281223), 1946493760) ~= aFT then
                U9 = game:GetService("UserInputService")
            else
                UserInputService = game:GetService("UserInputService")
            end
            aCe_31 = (aCe_31 + 47) % 152
        else
            aCe_58 = (vector.create((aCe_31 * 1 + 1) % 11 + 1, (aCe_31 * 1 + 10) % 13 + 1, (aCe_31 * 2 + 16) % 17 + 1))
            aCe_37 = (vector.create((aCe_31 * 4 + 8) % 11 + 1, (aCe_31 * 2 + 11) % 13 + 1, (aCe_31 * 7 + 5) % 17 + 1))
            fns.aCe_19 = (vector.create((aCe_31 * 7 + 3) % 11 + 1, (aCe_31 * 1 + 5) % 13 + 1, (aCe_31 * 12 + 6) % 17 + 1))
            fns.aCe_4 = (vector.create((aCe_31 * 6 + 7) % 11 + 1, (aCe_31 * 5 + 12) % 13 + 1, (aCe_31 * 5 + 2) % 17 + 1))
            if vector.dot(vector.cross(aCe_58, aCe_37), (vector.cross(fns.aCe_19, fns.aCe_4))) == vector.dot(aCe_58, fns.aCe_19) * vector.dot(aCe_37, fns.aCe_4) - vector.dot(aCe_58, fns.aCe_4) * vector.dot(aCe_37, fns.aCe_19) then
                WC = game:GetService("VirtualUser")
                Ww = game:GetService("HttpService")
                fns.aCe_12 = game:GetService("CollectionService")
            else
                fns.aCe_12 = game:GetService("VirtualUser")
                WC = game:GetService("HttpService")
                Ww = game:GetService("CollectionService")
            end
            aCe_31 = (aCe_31 + 85) % 152
        end
    elseif aCe_78 <= 36 then
        if aCe_78 <= 35 then
            aCe_58 = (vector.create((aCe_31 * 6 + 2) % 11 + 1, (aCe_31 * 1 + 12) % 13 + 1, (aCe_31 * 8 + 9) % 17 + 1))
            aCe_37 = (vector.create((aCe_31 * 1 + 8) % 11 + 1, (aCe_31 * 4 + 12) % 13 + 1, (aCe_31 * 4 + 7) % 17 + 1))
            fns.aCe_19 = (vector.create((aCe_31 * 3 + 3) % 11 + 1, (aCe_31 * 2 + 10) % 13 + 1, (aCe_31 * 2 + 6) % 17 + 1))
            fns.aCe_4 = (vector.create((aCe_31 * 2 + 6) % 5 + 1, (aCe_31 * 4 + 7) % 7 + 1, (aCe_31 * 2 + 6) % 9 + 1))
            if vector.dot(vector.cross(aCe_58, (vector.cross(aCe_37, fns.aCe_19))), fns.aCe_4) == vector.dot(aCe_37 * vector.dot(aCe_58, fns.aCe_19) - fns.aCe_19 * vector.dot(aCe_58, aCe_37), fns.aCe_4) + 2 then
                Wa = game:GetService("GuiService")
                Wf = game:GetService("CoreGui")
            else
                Wf = game:GetService("GuiService")
                Wa = game:GetService("CoreGui")
            end
            aCe_31 = (aCe_31 + 47) % 152
        else
            aCe_58 = (vector.create((aCe_31 * 7 + 8) % 11 + 1, (aCe_31 * 4 + 4) % 13 + 1, (aCe_31 * 1 + 8) % 17 + 1))
            local aKM = vector.floor(aCe_58) + vector.ceil(aCe_58 * -1)
            if vector.dot(aKM, aKM) == 0 then
                V3 = aCe_88.LocalPlayer
            else
                aCe_88 = V3.LocalPlayer
            end
            aCe_31 = (aCe_31 + 85) % 152
        end
    elseif aCe_78 <= 37 then
        aCe_78 = (vector.create((aCe_31 * 1 + 9) % 11 + 1, (aCe_31 * 9 + 8) % 13 + 1, (aCe_31 * 3 + 4) % 17 + 1))
        local aIg = vector.floor(aCe_78) + vector.ceil(aCe_78 * -1)
        if vector.dot(aIg, aIg) == 0 then
            VU = "Saber Simulator"
            fns.aCe_18 = "https://discord.gg/ehKVq7pf7v"
            VF = "https://rscripts.net/@Ouroboros"
        else
            fns.aCe_18 = "Saber Simulator"
            VF = "https://discord.gg/ehKVq7pf7v"
            VU = "https://rscripts.net/@Ouroboros"
        end
        aCe_31 = (aCe_31 + 123) % 152
    else
        aCe_78 = { "stpsabsqf", "xldicfpsnw", "kpvzayzh", "xbdykzbqrsq", "dsgrasyke", "owbip", "kkzqufsz" }
        local aKI = aCe_31
        aCe_58 = aCe_78[aKI % 7 + 1]
        if aCe_58:len() >= aCe_58:reverse():rep(aKI % 3 + 2):len() then
            Ve = 10
        else
            aCe_68 = 10
        end
        aCe_31 = (aCe_31 + 123) % 152
    end
until (aCe_31 * 71 + 111) % 152 == 86
for i, v in ipairs(Vr) do
    aCe_31 = type(v) == "table" and type(v.EggName) == "string" and v.EggName ~= ""
    if aCe_31 then
        fns.aCe_6[#fns.aCe_6 + 1] = v
    end
end
fns.aCe_9, aCe_36, Label3, aCe_67, fns.aCe_11, aCe_86, WN, WD, Wz, Wr, aCe_42, fns.aCe_32, Label2, U0, UT, UK, VS, aCe_54, aCe_47, fns.aCe_20, aCe_82, Vd, UM, Ut, WF, aCe_48, aCe_66, VD, Uf, Wm, VJ, Vf, Vy, Vz, Va, UJ, aCe_89, aCe_85, fns.aCe_7, Vm, V6, fns.aCe_21, fns.aCe_33, aCe_92, Ug, fns.aCe_1, WL, US, Ui, VQ, Ul, V7, Wk, VK, Wv, Wd, UG, fns.aCe_3, fns.aCe_23, fns.aCe_26, Ud, Wt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(fns.aCe_6, function(b3, b4)
    local YJ_1
    local YI_1
    YI_1, YJ_1 = pcall(function()
        local new2 = Uk.new
        local YE = b3.Price or 0
        local YF = new2(YE)
        local new = Uk.new
        local YG = b4.Price or 0
        return YF < new(YG)
    end)
    if YI_1 then
        return YJ_1
    end
    local YI_2 = tonumber(b3.Price) or 0
    local YJ_2 = tonumber(b4.Price) or 0
    return YI_2 < YJ_2
end)
UM = fns.fn437
Ut = fns.fn1895
WF = fns.fn1532
aCe_48 = fns.fn627
aCe_66 = fns.fn565
VD = fns.fn2112
fns.aCe_9 = {}
aCe_36 = nil
Uf = fns.fn1616
Wm = fns.fn1394
VJ = fns.fn1857
Vf = fns.fn2010
Label3 = nil
Vy = fns.fn1213
Vz = fns.fn1553
Va = fns.fn2012
UJ = function()
    local aad
    aad = false
    pcall(function()
        aad = aCe_80:IsInPetShop() == true
    end)
    if not aad then
        Va()
    end
end
aCe_67 = { "Fire", "Water", "Earth", "Plasma" }
fns.aCe_11 = {
    Fire = { Advanced = "AdvancedFireArea", Master = "MasterFireArea", Grandmaster = "GrandmasterFireArea" },
    Water = { Advanced = "AdvancedWaterArea", Master = "MasterWaterArea", Grandmaster = "GrandmasterWaterArea" },
    Earth = { Advanced = "AdvancedEarthArea", Master = "MasterEarthArea", Grandmaster = "GrandmasterEarthArea" },
    Plasma = {
        Advanced = "AdvancedPlasmaArea",
        Master = "MasterPlasmaArea",
        Grandmaster = "GrandmasterPlasmaArea"
    }
}
aCe_86 = { Normal = "Normal", Advance = "Advanced", Master = "Master", ["G-Master"] = "Grandmaster" }
WN = { "Normal", "Advanced", "Master", "Grandmaster" }
aCe_89 = fns.fn173
aCe_85 = function(em)
    local aao = em == ""
    local aap = type(em) ~= "string" or aao
    if aap then
        return nil
    end
    pcall(function()
        VW:Load(em)
    end)
    local Gameplay = workspace:FindFirstChild("Gameplay")
    local aap_1 = Gameplay and Gameplay:FindFirstChild("RegionsLoaded")
    local aao_2 = aap_1
    if aap_1 then
        aap_1 = aao_2:FindFirstChild(em)
    end
    local aao_3 = aap_1
    if aao_3 then
        return aao_3
    end
    local HiddenRegions = W0:FindFirstChild("HiddenRegions")
    local aap_2 = HiddenRegions and HiddenRegions:FindFirstChild(em)
    return aap_2
end
fns.aCe_7 = fns.fn1850
aCe_42 = {}
Vm = fns.fn648
V6 = function(e4)
    local aaS
    local aaT
    aaS = nil
    aaT = nil
    aaT = {}
    aaS = {}
    local function aaU(e8)
        local aaN = e8 == "Normal" or e8 == "Advanced" or e8 == "Master"
        local aaL_2 = e8 == "Grandmaster"
        local aaM_1 = aaN
        local aaR = if aaM_1 then 1 else 0
        local aaP = 1542 * aaR + 1954 * (1 - aaR)
        local aaQ = 1674 * aaR + 1514 * (1 - aaR)
        if not ((aaP * 3964 + aaQ * 3895 + aaP * aaQ) % 16777213 == 15214026) then
            aaM_1 = aaL_2
        end
        if aaM_1 and not aaT[e8] then
            aaT[e8] = true
            aaS[#aaS + 1] = e8
        end
    end
    if type(e4) == "string" then
        aaU(e4)
    elseif type(e4) == "table" then
        if e4[1] ~= nil then
            for i, v in ipairs(e4) do
                aaU(v)
            end
        else
            for i, v in ipairs(WN) do
                if e4[v] == true then
                    aaU(v)
                end
            end
        end
    end
    if #aaS == 0 then
        return { "Normal" }
    end
    return aaS
end
fns.aCe_21 = fns.fn1211
fns.aCe_33 = fns.fn1413
aCe_92 = fns.fn502
Ug = function(fF, fG)
    local Character = V3.Character
    local abt = Character and Character:FindFirstChild("HumanoidRootPart")
    local abr = abt
    local abs_1 = not abr or type(fG) ~= "table"
    if abs_1 then
        return
    end
    local abs_2 = {}
    for i, v in ipairs(fG) do
        local abt_1 = fns.aCe_7(fF, v)
        if abt_1 then
            abs_2[#abs_2 + 1] = abt_1
        end
    end
    if #abs_2 == 0 then
        return
    end
    local abt_2 = 0
    for i, v in ipairs(fns.aCe_12:GetTagged("Mob")) do
        local abL = v
        if abt_2 >= 30 then
            break
        else
            local abu = abL:GetAttribute("Health") or 0
            local abv = abu > 0 and not string.find(abL.Name, "Boss", 1, true) and aCe_92(abL)
            if abv then
                local abu_1 = false
                for i, v in ipairs(abs_2) do
                    if abL:IsDescendantOf(v) then
                        abu_1 = true
                        break
                    end
                end
                if abu_1 then
                    pcall(function()
                        abL:PivotTo(abr.CFrame * CFrame.new(0, 0, -6))
                    end)
                    abt_2 += 1
                end
            end
        end
    end
end
fns.aCe_1 = fns.fn567
if (Wk and not Wk or (VS or not Wk)) and (Wk and Wk or Wk and VS) or not ((Wk and not Wk or (VS or not Wk)) and (Wk and Wk or Wk and VS)) then
    WL = fns.fn32
    US = fns.fn1580
    Ui = fns.fn1224
    VQ = fns.fn1724
else
    Ui = fns.fn32
    WL = fns.fn1580
    VQ = fns.fn1224
    US = fns.fn1724
end
Ul = fns.fn841
V7 = function(hm, hn, ho)
    local adg
    local adh = ho
    if type(adh) ~= "table" then
        adh = WL(hm, hn)
    end
    if U2.ElementMultiHit and U2.ElementMultiHit.Value and #adh > 0 then
        local adi_1 = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
        local adj = adi_1
        adg = adh
        if adi_1 then
            adi_1 = #adh > 12
        end
        if adi_1 then
            adg = {}
            for i, v in ipairs(adh) do
                local adi_2 = v.PrimaryPart or v:FindFirstChild("HumanoidRootPart")
                local adk = adi_2
                if adi_2 then
                    adi_2 = (adk.Position - adj.Position).Magnitude <= 150
                end
                if adi_2 then
                    adg[#adg + 1] = v
                    if #adg >= 40 then
                        break
                    end
                end
            end
            if #adg == 0 then
                adg = { adh[1] }
            end
        end
        pcall(function()
            U9:FireServer(adg)
        end)
        return
    end
    pcall(function()
        ClientTool:Swing()
    end)
end
Wk = fns.fn2415
VK = function()
    local adM_1, adM_4, adM_5
    local adL_1
    local adK = Wk()
    if adK then
        adL_1, adM_1 = pcall(function()
            return adK:GetPivot()
        end)
        if adL_1 and adM_1 then
            return adM_1 * CFrame.new(0, 0, 8)
        end
        local Gameplay = workspace:FindFirstChild("Gameplay")
        local adM_2 = Gameplay and Gameplay:FindFirstChild("Boss")
        local adN_2 = adM_2
        if adM_4 then
            local adO_1 = adN_2:FindFirstChild("ArenaBase") or adN_2:FindFirstChild("Base")
            adM_2 = adO_1
        end
        local adN_3 = adM_2
        if adM_4 then
            adN_3:IsA("BasePart")
        end
        if adM_4 then
            return adN_3.CFrame + Vector3.new(0, 5, 0)
        end
        local adM_3 = Gameplay and Gameplay:FindFirstChild("SafeZoneParts")
        local adL_3 = adM_3
        if adM_3 then
            adM_3 = adL_3:FindFirstChild("BossPath")
        end
        local adL_4 = adM_3
        if adM_5 then
            adL_4:IsA("BasePart")
        end
        if adM_5 then
            return adL_4.CFrame + Vector3.new(0, 3, 0)
        end
        return nil
    end
    local Gameplay = workspace:FindFirstChild("Gameplay")
    adM_4 = Gameplay and Gameplay:FindFirstChild("Boss")
    local adN_4 = adM_4
    if adM_4 then
        local adO_2 = adN_4:FindFirstChild("ArenaBase") or adN_4:FindFirstChild("Base")
        adM_4 = adO_2
    end
    local adN_5 = adM_4
    if adM_4 then
        adM_4 = adN_5:IsA("BasePart")
    end
    if adM_4 then
        return adN_5.CFrame + Vector3.new(0, 5, 0)
    end
    adM_5 = Gameplay and Gameplay:FindFirstChild("SafeZoneParts")
    local adL_6 = adM_5
    if adM_5 then
        adM_5 = adL_6:FindFirstChild("BossPath")
    end
    local adL_7 = adM_5
    if adM_5 then
        adM_5 = adL_7:IsA("BasePart")
    end
    if adM_5 then
        return adL_7.CFrame + Vector3.new(0, 3, 0)
    end
    return nil
end
Wv = function(h3)
    local adV_4
    local adU = not h3
    if adU ~= false then
        adU = not (U2.WalkToBoss and U2.WalkToBoss.Value)
    end
    if adU then
        return
    end
    local Character = V3.Character
    local adV_2 = Character and Character:FindFirstChild("HumanoidRootPart")
    local adW = Character
    local adW_2
    if adW then
        adW = Character:FindFirstChildOfClass("Humanoid")
    end
    local adU_2 = adW
    if not adV_2 or not adU_2 then
        return
    end
    local adT = Wk()
    if adT then
        adV_4, adW_2 = pcall(function()
            return adT:GetPivot()
        end)
        local adV_5 = adV_4 and adW_2 and adW_2.Position
        if adV_5 then
            if (adV_2.Position - adV_5).Magnitude > 60 then
                local adW_3 = VK()
                if adW_3 then
                    adV_2.CFrame = adW_3
                end
            end
            if adU_2.MoveDirection.Magnitude < 0.01 then
                adU_2:MoveTo(adV_5)
            end
            Wj("AutoFarmingMobs", true)
            pcall(function()
                ClientTool:Swing()
            end)
            return
        end
    end
    local adU_3 = VK()
    if adU_3 and (adV_2.Position - adU_3.Position).Magnitude > 20 then
        adV_2.CFrame = adU_3
    end
end
fns.aCe_32 = {
    labels = {
        "Swing Saber",
        "Lobby Boss",
        "Element Enemy",
        "Element Boss",
        "Hatch Pets",
        "Flag Reward",
        "King of the Hill",
        "Beat Dungeon"
    },
    labelToType = {
        ["Swing Saber"] = "SwingSaber",
        ["Lobby Boss"] = "Boss",
        ["Element Enemy"] = "ElementEnemy",
        ["Element Boss"] = "ElementBoss",
        ["Hatch Pets"] = "PetsHatched",
        ["Flag Reward"] = "FlagReward",
        ["King of the Hill"] = "KOTHReward",
        ["Beat Dungeon"] = "BeatDungeon"
    }
}
Wd = fns.fn43
Label2 = nil
UG = fns.fn1797
fns.aCe_3 = fns.fn1046
if (not fns.aCe_1 or fns.aCe_20) and (not fns.aCe_20 or fns.aCe_1) and (fns.aCe_20 or fns.aCe_20 or fns.aCe_1 and not fns.aCe_1) and not ((not fns.aCe_1 or fns.aCe_20) and (not fns.aCe_20 or fns.aCe_1) and (fns.aCe_20 or fns.aCe_20 or fns.aCe_1 and not fns.aCe_1)) then
    Ud = fns.fn1348
    fns.aCe_23 = fns.fn5
    Wt = fns.fn2278
    fns.aCe_26 = fns.fn1016
else
    fns.aCe_23 = fns.fn1348
    fns.aCe_26 = fns.fn5
    Ud = fns.fn2278
    Wt = fns.fn1016
end
VS = {
    "CODE78",
    "WATCH35",
    "ENCHANTER",
    "ABC",
    "RETRO",
    "USA250",
    "TRIDENT",
    "TROUT",
    "SCUBA",
    "RAIN",
    "HORIZON35",
    "CRISPY",
    "GALAXY",
    "FRIED",
    "FREECHARMS",
    "BRUH",
    "CODEEE",
    "CLASH",
    "DUNGEONS",
    "BOSS",
    "MASTERY",
    "STPATTY",
    "AWARE",
    "500M",
    "ASLEEP",
    "oioi",
    "VoidGG",
    "PetBoost",
    "EASTERBUNNY",
    "PLAZA",
    "ISLANDS",
    "JS",
    "mmistaken",
    "calixo",
    "ALIENPLS",
    "DEC25",
    "600MY",
    "HAPPY4TH",
    "release",
    "Airstudio",
    "CURSED20",
    "HEART26",
    "SANDY",
    "grim",
    "NEWYEAR26",
    "telanthric",
    "prez",
    "weekend",
    "MIRRAWRXD",
    "CLANS",
    "Legend",
    "SEASHORE",
    "raven",
    "cookieclix",
    "2020",
    "GOLDEN",
    "EASTER26",
    "VALENTINESDAY26",
    "100M",
    "5000Followers",
    "HAPPY26",
    "SUMMERPT2",
    "robzi",
    "straw",
    "gravy",
    "defild",
    "WINT3R",
    "mirrorrs",
    "Update100",
    "CLASSIC",
    "BEACH",
    "SABERFEB",
    "Saber",
    "subtoaustin",
    "GOBBLE",
    "BOMBCYCLONE",
    "PUMPKIN",
    "melihkardes",
    "ELEMENTS",
    "erick",
    "Slayer",
    "BOSSING",
    "cookie",
    "henrydev",
    "WINTER",
    "razor",
    "SNOWDAY",
    "AUTOCRAFT",
    "LUCKYLUCKY",
    "REVAMP",
    "DIFFICULTY",
    "Yippee"
}
aCe_54 = { Space = "Space", ["Toxic Lab"] = "Lab" }
aCe_47 = { Easy = 1, Medium = 2, Hard = 3, Impossible = 4 }
fns.aCe_20 = {
    { key = "DungeonHealth", text = "Health" },
    { key = "DungeonDamage", text = "Damage" },
    { key = "DungeonCritChance", text = "Crit Chance" },
    { key = "DungeonEggSlots", text = "Egg Slots" },
    { key = "IncubatorSpeed", text = "Incubator Speed" },
    { key = "DungeonCoins", text = "Coins" },
    { key = "DungeonCrowns", text = "Crowns" },
    { key = "DungeonSprint", text = "Sprint" }
}
aCe_82 = {}
Vd = {}
for i, v in ipairs(fns.aCe_20) do
    aCe_82[v.text] = v.key
    Vd[#Vd + 1] = v.text
end
aCe_56, aCe_44, V9, Vk, U3, WP, UO, fns.aCe_5, aCe_70, aCe_79, V8, aCe_59, aCe_77, aCe_40, aCe_39, UF, WJ, V2, UZ, WR, fns.aCe_14, fns.aCe_27, Wu, UW, aCe_81, WB, UY, V_, fns.aCe_15, VN, UE, Um, VX, WX, UD, VL, V1, WK, Vs, Vc, aCe_76, VZ, WQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.aCe_5 = fns.fn575
aCe_70 = fns.fn2103
aCe_79 = fns.fn2371
V8 = fns.fn71
aCe_59 = function(jS)
    local afh_1
    local afg_1
    local afd = 0
    local afe = 0
    local aff = 0
    for i, v in ipairs(VS) do
        local afq = v
        if V8(afq) then
            afd += 1
        else
            afg_1, afh_1 = pcall(function()
                return CheckCode:InvokeServer(afq)
            end)
            if afg_1 and afh_1 == "Accepted!" then
                afe += 1
            else
                aff += 1
            end
            task.wait(0.15)
        end
    end
    if jS then
        if afe > 0 then
            local afh_2 = afe == 1 and "" or "s"
            aCe_62:Notify(("Auto redeemed %d code%s"):format(afe, afh_2))
        end
        return
    end
    aCe_62:Notify(("Codes: %d accepted, %d skipped, %d failed"):format(afe, afd, aff))
end
aCe_77 = fns.fn937
aCe_40 = fns.fn2421
aCe_39 = fns.fn1126
UF = fns.fn965
WJ = fns.fn922
V2 = function()
    local afU = aCe_70()
    local afV = afU and afU:FindFirstChild("DungeonQueue")
    local afT = afV
    if afT then
        pcall(function()
            VG:ToggleMenu(afT)
        end)
    end
end
UZ = fns.fn884
WR = fns.fn248
fns.aCe_14 = fns.fn1069
fns.aCe_27 = fns.fn2339
Wu = fns.fn63
UW = fns.fn17
aCe_81 = fns.fn579
WB = fns.fn1627
UY = fns.fn2004
V_ = function()
    local ag2 = aCe_70()
    local ag3 = ag2 and ag2:FindFirstChild("DungeonRewards")
    local ag1 = ag3
    if ag1 and ag1.Visible then
        pcall(function()
            VG:ToggleMenu(ag1)
        end)
    end
    local ag3_2 = ag2 and ag2:FindFirstChild("EggIncubatorReplacePopup")
    local ag2_1 = ag3_2
    if ag3_2 then
        ag3_2 = ag2_1.Visible
    end
    if ag3_2 then
        ag3_2 = U2.AutoIncubateBetterEgg
    end
    if ag3_2 then
        ag3_2 = U2.AutoIncubateBetterEgg.Value
    end
    if ag3_2 then
        UY()
    end
end
fns.aCe_15 = fns.fn1080
VN = fns.fn637
UE = fns.fn509
aCe_56 = 10
aCe_44 = 0
V9 = {}
V9.folder = fns.fn2024
V9.mobs = fns.fn1548
V9.hold = fns.fn1890
V9.methodPosition = fns.fn1669
V9.apply = fns.fn1694
V9.clearFreeze = fns.fn905
Um = fns.fn1209
VX = fns.fn734
WX = fns.fn729
function fns.aCe_96()
    local function n0(n1)
        local aiy = n1 and n1.Name or ""
        local aix_1 = nil
        for i, v in ipairs(aCe_67) do
            if string.find(aiy, v, 1, true) then
                aix_1 = v
                break
            end
        end
        local aiy_1 = "Normal"
        if string.find(aiy, "Grandmaster", 1, true) then
            aiy_1 = "Grandmaster"
        elseif string.find(aiy, "Master", 1, true) then
            aiy_1 = "Master"
        elseif string.find(aiy, "Advanced", 1, true) then
            aiy_1 = "Advanced"
        end
        return aix_1, aiy_1
    end
    Wz = function(ob, oc)
        local aiR_2, aiR_3
        local aiN = ob == ""
        local aiO = type(ob) ~= "string"
        local aiW = if aiO then 1 else 0
        local aiU = 993 * aiW + 2639 * (1 - aiW)
        local aiV = 3669 * aiW + 2375 * (1 - aiW)
        if not ((aiU * 909 + aiV * 2965 + aiU * aiV) % 16777213 == 15424539) then
            aiO = aiN
        end
        if aiO then
            return nil
        end
        local aiN_1 = math.huge
        local aiO_1 = nil
        local Character = V3.Character
        local aiQ = Character and Character:FindFirstChild("HumanoidRootPart")
        local aiQ_2, aiQ_4
        local aiP_1 = aiQ
        if aiQ then
            aiQ = aiP_1.Position
        end
        local aiP_2 = aiQ
        for i, v in ipairs(fns.aCe_12:GetTagged("Mob")) do
            local ai1 = v
            local aiQ_1 = ai1.Parent
            if aiQ_1 then
                local aiR_1 = ai1:GetAttribute("Health") or 0
                aiQ_1 = aiR_1 > 0
            end
            if aiQ_1 then
                if string.find(ai1.Name, "Boss", 1, true) then
                    aiQ_2, aiR_2 = n0(ai1)
                    local aiS = aiQ_2 == ob
                    if aiS then
                        local aiQ_3 = not oc
                        local aiW_1 = if aiQ_3 then 1 else 0
                        local aiU_1 = 1594 * aiW_1 + 1055 * (1 - aiW_1)
                        local aiV_1 = 2631 * aiW_1 + 339 * (1 - aiW_1)
                        if not ((aiU_1 * 2100 + aiV_1 * 3899 + aiU_1 * aiV_1) % 16777213 == 1022270) then
                            aiQ_3 = oc[aiR_2]
                        end
                        aiS = aiQ_3
                    end
                    if aiS then
                        US(ob, { aiR_2 })
                        if not aiP_2 then
                            return ai1
                        end
                        aiQ_4, aiR_3 = pcall(function()
                            return ai1:GetPivot()
                        end)
                        if aiQ_4 and aiR_3 then
                            local Magnitude = (aiR_3.Position - aiP_2).Magnitude
                            if Magnitude < aiN_1 then
                                aiN_1 = Magnitude
                                aiO_1 = ai1
                            end
                        end
                    end
                end
            end
        end
        return aiO_1
    end
    local function oE()
        local ai7_1
        local ai3 = math.huge
        local ai4
        local Character = V3.Character
        local ai6 = Character and Character:FindFirstChild("HumanoidRootPart")
        local ai6_1
        local ai5_1 = ai6
        if ai6 then
            ai6 = ai5_1.Position
        end
        local ai5_2 = ai6
        for i, v in ipairs(aCe_67) do
            local ai2 = Wz(v)
            if ai2 then
                if not ai5_2 then
                    return ai2
                end
                ai6_1, ai7_1 = pcall(function()
                    return ai2:GetPivot()
                end)
                if ai6_1 and ai7_1 then
                    local Magnitude = (ai7_1.Position - ai5_2).Magnitude
                    if Magnitude < ai3 then
                        ai3 = Magnitude
                        ai4 = ai2
                    end
                end
            end
        end
        return ai4
    end
    Wr = function(oX)
        local ajo_1
        local Character = V3.Character
        local ajk = Character and Character:FindFirstChild("HumanoidRootPart")
        local ajk_3
        local ajl = Character
        local ajl_2
        if ajl then
            ajl = Character:FindFirstChildOfClass("Humanoid")
        end
        local ajj_1 = ajl
        local ajl_1 = not ajk or not ajj_1
        local ajk_2 = not oX
        local ajn = ajl_1
        local ajn_1
        local ajt = if ajn then 1 else 0
        local ajr = 1657 * ajt + 2815 * (1 - ajt)
        local ajs = 761 * ajt + 3728 * (1 - ajt)
        if not ((ajr * 1564 + ajs * 2694 + ajr * ajs) % 16777213 == 5902659) then
            ajn = ajk_2
        end
        if ajn then
            return
        end
        ajk_3, ajl_2 = n0(oX)
        if not ajk_3 then
            return
        end
        ajn_1, ajo_1 = pcall(function()
            return oX:GetPivot()
        end)
        local ajn_2 = ajn_1 and ajo_1 and ajo_1.Position
        if not ajn_2 then
            return
        end
        local Magnitude = (ajk.Position - ajn_2).Magnitude
        if Magnitude > 180 then
            fns.aCe_21(ajk_3, ajl_2)
            return
        end
        if Magnitude > 12 and ajj_1.MoveDirection.Magnitude < 0.01 then
            ajj_1:MoveTo(ajn_2)
        end
        Wj("AutoFarmingMobs", true)
        pcall(function()
            ClientTool:Swing()
        end)
    end
    WD = function(pl)
        local aju = oE()
        if aju then
            Wr(aju)
            return true
        elseif pl then
            return false
        else
            if U2.ElementHillHopFarm and U2.ElementHillHopFarm.Value then
                VQ()
            else
                local aju_2 = (Wt())
                local ajz = if aju_2 then 1 else 0
                local ajx = 2001 * ajz + 3117 * (1 - ajz)
                local ajy = 2057 * ajz + 3770 * (1 - ajz)
                if not ((ajx * 4091 + ajy * 3721 + ajx * ajy) % 16777213 == 3179032) then
                    aju_2 = "Fire"
                end
                local ajv = aju_2
                fns.aCe_21(ajv, "Normal")
            end
            return false
        end
    end
end
fns.aCe_96()
function fns.aCe_84()
    local pz = {
        SwingSaber = 1,
        Boss = 2,
        ElementEnemy = 3,
        ElementBoss = 4,
        PetsHatched = 5,
        FlagReward = 6,
        KOTHReward = 7,
        BeatDungeon = 8
    }
    local function pA()
        local Character = V3.Character
        local ajB = Character and Character:FindFirstChild("HumanoidRootPart")
        return ajB
    end
    local function pF()
        local ajD = aCe_91()
        local ajE = ajD and ajD.ClanQuests
        local ajD_1 = {}
        if type(ajE) ~= "table" then
            return ajD_1
        end
        for k, v in pairs(ajE) do
            local ajE_1 = QuestInfo.ClanQuests[v.Id]
            local ajF_1 = type(v) == "table" and type(ajE_1) == "table"
            if ajF_1 then
                ajD_1[#ajD_1 + 1] = { idx = k, quest = v, def = ajE_1 }
            end
        end
        return ajD_1
    end
    local function pS()
        for i, v in ipairs(pF()) do
            local ajN = tonumber(v.quest.Amount) or 0
            local ajN_1 = tonumber(v.def.GoalAmount) or 0
            local ajN_2 = not v.quest.ClaimedReward
            if ajN_2 ~= false then
                ajN_2 = ajN >= ajN_1
            end
            if ajN_2 then
                fns.aCe_28("ClaimClanQuest", v.idx)
            end
        end
    end
    local function p0()
        local ajX
        local ajY
        for i, v in ipairs(pF()) do
            if not v.quest.ClaimedReward then
                local ajZ = tonumber(v.quest.Amount) or 0
                local ajZ_1 = tonumber(v.def.GoalAmount) or 0
                if not (ajZ >= ajZ_1) then
                    if not not Wd(v.def.QuestType) then
                        local ajZ_2 = pz[v.def.QuestType] or 99
                        local aj__1 = not ajX
                        if not aj__1 then
                            aj__1 = ajZ_2 < ajX
                        end
                        if aj__1 then
                            ajX = ajZ_2
                            ajY = v
                        end
                    end
                end
            end
        end
        return ajY
    end
    U0 = function()
        local akc_2
        local akb_3
        local aj8 = aCe_91()
        local aj9 = aj8 and aj8.ClanQuests
        local aka = type(aj9) ~= "table" or #aj8.ClanQuests == 0
        if aka then
            return aCe_52("Quest", "No clan quests", fns.aCe_30)
        end
        local aj8_1 = p0()
        if not aj8_1 then
            local aj9_1 = false
            for i, v in ipairs(pF()) do
                local aka_1 = tonumber(v.quest.Amount) or 0
                local aka_2 = tonumber(v.def.GoalAmount) or 0
                local aka_3 = not v.quest.ClaimedReward
                if aka_3 ~= false then
                    aka_3 = aka_1 >= aka_2
                end
                if aka_3 then
                    aj9_1 = true
                    break
                end
            end
            if aj9_1 then
                return aCe_52("Quest", "Ready to claim", aCe_57)
            end
            return aCe_52("Quest", "All claimed", aCe_57)
        end
        local aj9_2 = QuestInfo.QuestTypes[aj8_1.def.QuestType]
        local aka_4 = aj8_1.def.QuestType
        local akb_2 = aj9_2 and type(aj9_2.InfoText) == "function"
        if akb_2 then
            akb_3, akc_2 = pcall(aj9_2.InfoText, aj8_1.quest.Amount, aj8_1.def.GoalAmount, aj8_1.def)
            local aj9_3 = akb_3 and type(akc_2) == "string"
            if aj9_3 then
                aka_4 = akc_2
            end
        end
        local aj9_4 = tonumber(aj8_1.quest.Amount) or 0
        local aj9_5 = tonumber(aj8_1.def.GoalAmount) or 0
        return aCe_52("Quest", string.format("%s (%d/%d)", aka_4, aj9_4, aj9_5), VY)
    end
    UT = function()
        if not Label2 then
            return
        end
        pcall(function()
            Label2:SetText(U0())
        end)
    end
    local function qF()
        local akr = pA()
        if not akr then
            return
        end
        local aks
        local akt
        local aku
        for i, v in ipairs(fns.aCe_12:GetTagged("Flag")) do
            local Base = v:FindFirstChild("Base")
            local akw = Base and Base:IsA("BasePart")
            if akw then
                if v:GetAttribute("OwnerName") == V3.Name then
                    akt = Base
                else
                    local akw_1 = tonumber(v:GetAttribute("CapValue")) or 10
                    local akw_2 = 100 - akw_1
                    if not aks or akw_2 > aks then
                        aks = akw_2
                        aku = Base
                    end
                end
            end
        end
        local aks_1 = akt or aku
        if not aks_1 then
            return
        end
        if (akr.Position - aks_1.Position).Magnitude > 8 then
            akr.CFrame = aks_1.CFrame + Vector3.new(0, 5, 0)
        end
    end
    local function qW()
        local akF = pA()
        if not akF then
            return
        end
        local Gameplay = workspace:FindFirstChild("Gameplay")
        local akH = Gameplay and Gameplay:FindFirstChild("KOTH")
        local akG_1 = akH
        if akH then
            local akI = (akG_1:FindFirstChild("KOH_BOUNDARY"))
            local akM = if akI then 1 else 0
            local akK = 3107 * akM + 3285 * (1 - akM)
            local akL = 2030 * akM + 2941 * (1 - akM)
            if not ((akK * 3369 + akL * 2337 + akK * akL) % 16777213 == 4741590) then
                akI = akG_1:FindFirstChild("KingGui")
            end
            akH = akI
        end
        local akG_2 = akH
        if akH then
            akH = akG_2:IsA("BasePart")
        end
        if akH then
            akH = (akF.Position - akG_2.Position).Magnitude > 6
        end
        if akH then
            akF.CFrame = akG_2.CFrame + Vector3.new(0, 3, 0)
        end
    end
    local function q5(q6)
        if q6 then
            local akN_1 = WD and WD(true)
            if akN_1 then
                return
            end
        end
        local akN_2 = Wt() or "Fire"
        local akN_3 = Ud()
        local akN_4 = akN_3 and { akN_3 }
        if not akN_4 then
            local akP_1 = fns.Options[akN_2 .. "FarmZone"] and fns.Options[akN_2 .. "FarmZone"].Value
            akN_4 = V6(akP_1)
        end
        local akP_2 = akN_4
        local akN_5 = UG(akN_2 .. "BringElements")
        local akQ_1 = #akN_5 > 0
        if akQ_1 then
            akQ_1 = not (U2.ElementMultiHit and U2.ElementMultiHit.Value)
        end
        local akR_2 = akQ_1
        local akS = #akN_5 > 0 and akN_5 or akP_2
        local akS_1 = akP_2[1]
        Wj("AutoFarmingMobs", true)
        if akR_2 then
            local akR_3 = WL(akN_2, akS)
            if #akR_3 == 0 then
                if U2.ElementHillHopFarm and U2.ElementHillHopFarm.Value then
                    VQ()
                end
                return
            end
            local akR_5 = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
            local akR_6 = Vm(fns.aCe_7(akN_2, akS_1), akN_2, akS_1)
            if akR_5 and akR_6 and (akR_5.Position - akR_6.Position).Magnitude > 100 then
                fns.aCe_21(akN_2, akS_1)
            end
            Ug(akN_2, akN_5)
        elseif not Ul(akN_2, akP_2) then
            if U2.ElementHillHopFarm and U2.ElementHillHopFarm.Value then
                VQ()
            else
                local akN_7 = Ui(akN_2, akP_2) or akS_1
                fns.aCe_21(akN_2, akN_7)
            end
            return
        end
        V7(akN_2, akS)
    end
    local function rG()
        UJ()
        local ak_ = fns.Options.EggName and fns.Options.EggName.Value
        local akZ_1 = ak_ == ""
        local ak0 = type(ak_) ~= "string" or akZ_1
        if ak0 then
            local akZ_2 = Vr[1]
            ak_ = akZ_2 and akZ_2.EggName
        end
        local akZ_3 = ak_ ~= ""
        local ak0_2 = type(ak_) == "string" and akZ_3
        if ak0_2 then
            fns.aCe_28("BuyEgg", ak_)
        end
    end
    local function rL(rM)
        if aCe_79() then
            if U2.AutoFarmDungeonV2 and U2.AutoFarmDungeonV2.Value then
                local ak6_2 = fns.Options.DungeonFarmDistanceV2 and fns.Options.DungeonFarmDistanceV2.Value or 150
                VX(ak6_2)
            else
                local ak6_3 = fns.Options.DungeonFarmDistanceV1 and fns.Options.DungeonFarmDistanceV1.Value or 120
                Um(ak6_3)
            end
            WX()
            return
        end
        local ak5_4 = aCe_77()
        local clamp = math.clamp
        local ak7 = tonumber(rM.RequirementMinimum) or 1
        local ak8 = clamp(ak7, 1, 4)
        local ak6_5 = aCe_39()
        local ak7_1 = aCe_38.GetPlayersGroup(V3)
        if not ak7_1 then
            fns.aCe_28("DungeonGroupAction", "Create", ak6_5, ak5_4, ak8)
            return
        end
        local ali = if not aCe_38.CheckIsOwner(V3, ak7_1) then 1 else 0
        if ali == 1 then
            return
        end
        if ak7_1.DungeonType.Value ~= ak5_4 or ak7_1.DungeonDifficulty.Value ~= ak8 then
            fns.aCe_28("DungeonGroupAction", "SwitchDungeonType", ak5_4, ak8)
        end
        fns.aCe_28("DungeonGroupAction", "Start")
    end
    UK = function()
        pS()
        UT()
        local alj = p0()
        if not alj then
            return
        end
        local QuestType = alj.def.QuestType
        if QuestType == "SwingSaber" then
            pcall(function()
                ClientTool:Swing()
            end)
        elseif QuestType == "Boss" then
            Wv(true)
        elseif QuestType == "ElementEnemy" then
            q5(false)
        elseif QuestType == "ElementBoss" then
            q5(true)
        elseif QuestType == "PetsHatched" then
            rG()
        elseif QuestType == "FlagReward" then
            qF()
        elseif QuestType == "KOTHReward" then
            qW()
        elseif QuestType == "BeatDungeon" then
            rL(alj.def)
        end
    end
end
fns.aCe_84()
UD = fns.fn1459
VL = fns.fn1132
V1 = function()
    local alS = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
    local alQ = alS
    if not alQ then
        return
    end
    local alS_1 = {}
    for i, v in ipairs(fns.aCe_12:GetTagged("CurrencyPickup")) do
        local al1 = v
        local alT = al1 and al1.Parent and al1.Name == "Crown" and al1:IsA("BasePart")
        if alT then
            pcall(function()
                al1.CFrame = alQ.CFrame * CFrame.new(0, 2, -2)
            end)
            alS_1[#alS_1 + 1] = al1
        end
    end
    if #alS_1 == 0 then
        return
    end
    local alU = #alS_1
    for i = 1, alU, 12 do
        local alR
        alR = table.create(math.min(12, #alS_1 - i + 1))
        local alU_1 = 0
        local alV = math.min(i + 12 - 1, #alS_1)
        local amb = i
        while amb <= alV do
            local amc = amb
            alU_1 += 1
            alR[alU_1] = alS_1[amc]
            amb += 1
        end
        pcall(function()
            UU:FireServer(alR)
        end)
    end
end
WK = fns.fn1043
Vs = fns.fn768
Vc = fns.fn1156
aCe_78 = function()
    local aqW
    local aqH
    local worker
    local aqG
    local aqK
    local aqr
    local aqU
    local aqI
    local aqP
    aqr = nil
    aqG = nil
    aqH = nil
    aqI = nil
    aqK = nil
    aqP = nil
    aqU = nil
    worker = nil
    aqW = nil
    local aqs, aqt, aqu, aqv, aqw, aqx, aqy, aqz, aqA, aqB, aqD, aqE, aqJ, aqM, aqN, aqO, aqQ, aqR, aqS, aqT
    local aqY = syn and syn.request
    if not aqY then
        aqY = http and http.request
    end
    if not aqY then
        aqY = http_request
    end
    if not aqY then
        aqY = request
    end
    aqT = 3
    aqA = {
        [1] = 12370373,
        [2] = 9298238,
        [3] = 3400959,
        [4] = 16156159,
        [5] = 16761154,
        [6] = 15516436,
        [7] = 16412091,
        [8] = 10068408,
        [9] = 16412020
    }
    aqG = {}
    aqv = nil
    aqP = { "Normal", "Golden", "Shiny", "Rainbow", "Void" }
    aqs = { Golden = 16766720, Shiny = 15263976, Rainbow = 16740039, Void = 8084735 }
    aqD = { Golden = true, Shiny = true, Rainbow = true, Void = true }
    aqM = aqY
    aqu = { Normal = "", Golden = "🥇", Shiny = "✨", Rainbow = "🌈", Void = "🌑" }
    aqQ = { Hatch = "🥚", ["Auto Crafted"] = "🛠️", Crafted = "⚒️" }
    Vk = function(tL)
        local amN
        local amP_4
        local amO = fns.Options.WebhookUrl
        local amO_3
        if amO then
            local amP_1 = fns.Options.WebhookUrl.Value
            local amU_1 = if amP_1 then 1 else 0
            local amS_1 = 3427 * amU_1 + 3308 * (1 - amU_1)
            local amT_1 = 2842 * amU_1 + 1409 * (1 - amU_1)
            if not ((amS_1 * 1613 + amT_1 * 2535 + amS_1 * amT_1) % 16777213 == 5694542) then
                amP_1 = ""
            end
            amO = tostring(amP_1)
        end
        amN = amO or ""
        local amO_1 = amN == ""
        local amP_3 = not aqM
        local amU_2 = if amP_3 then 1 else 0
        local amS_2 = 1573 * amU_2 + 599 * (1 - amU_2)
        local amT_2 = 3863 * amU_2 + 2541 * (1 - amU_2)
        if not ((amS_2 * 966 + amT_2 * 220 + amS_2 * amT_2) % 16777213 == 8445877) then
            amP_3 = amO_1
        end
        if amP_3 then
            return false
        end
        local amO_2 = not string.find(amN, "discord.com/api/webhooks/", 1, true) and not string.find(amN, "discordapp.com/api/webhooks/", 1, true)
        if amO_2 then
            return false
        end
        amO_3, amP_4 = pcall(function()
            return aqM({
                Url = amN,
                Method = "POST",
                Headers = { ["Content-Type"] = "application/json" },
                Body = Ww:JSONEncode(tL)
            })
        end)
        if not amO_3 then
            return false
        end
        local amO_4 = amP_4
        if amO_4 then
            amO_4 = amP_4.StatusCode or amP_4.Status
        end
        local amP_5 = amO_4
        local amO_5 = amP_5 == nil
        if not amO_5 then
            amO_5 = amP_5 >= 200 and amP_5 < 300
        end
        return amO_5
    end
    aqw = function(t6, t7)
        local amV = t6 and t6.Value
        if type(amV) ~= "table" then
            return false
        end
        local amV_1 = tostring(t7)
        if amV[amV_1] == true or amV[t7] == true then
            return true
        end
        for k, v in pairs(amV) do
            local amW_1 = v == true and tostring(k) == amV_1
            if amW_1 then
                return true
            end
            if v == amV_1 or k == amV_1 then
                return true
            end
        end
        return false
    end
    aqr = function(ug)
        local am7 = ug == ""
        local am8 = type(ug) ~= "string" or am7
        if am8 then
            return "Normal"
        end
        return ug
    end
    aqz = function(vg)
        local aoh = aqr(vg)
        local aoi = table.find(aqP, aoh) or 1
        return aqP[math.min(aoi + 1, #aqP)]
    end
    aqH = function(vm, vn)
        if not (U2.EnablePetLogger and U2.EnablePetLogger.Value) then
            return false
        end
        local aok_1 = vm == ""
        local aol = type(vm) ~= "string"
        local aop = if aol then 1 else 0
        local aon = 3878 * aop + 2542 * (1 - aop)
        local aoo = 2932 * aop + 1374 * (1 - aop)
        if not ((aon * 1880 + aoo * 2119 + aon * aoo) % 16777213 == 8096631) then
            aol = aok_1
        end
        if aol then
            return false
        elseif aqD[aqr(vn)] then
            return true
        else
            local aok_2 = Wl(vm)
            if aok_2 <= 0 then
                return false
            end
            local aol_1 = aCe_83(vm) or aok_2 >= 9
            if aol_1 then
                return U2.LogSecrets and U2.LogSecrets.Value
            end
            local aol_3 = UR(aok_2)
            if aol_3 then
                return aqw(fns.Options.LogStars, aol_3)
            end
            local aol_4 = UB(aok_2)
            if aol_4 then
                return aqw(fns.Options.LogMoons, aol_4)
            end
            return false
        end
    end
    aqR = function(vF)
        local aoq = Wl(vF)
        local aor = aCe_83(vF) or aoq >= 9
        if aor then
            return "Secret"
        end
        local aor_1 = UR(aoq)
        if aor_1 then
            return string.format("%d★ Star", aor_1)
        end
        local aor_2 = UB(aoq)
        if aor_2 then
            return string.format("%d☽ Moon", aor_2)
        end
        local aor_3 = Uy.Rarities[aoq]
        local aor_4 = aor_3 and aor_3.Name
        local aow = if aor_4 then 1 else 0
        local aou = 789 * aow + 1524 * (1 - aow)
        local aov = 221 * aow + 190 * (1 - aow)
        if not ((aou * 1411 + aov * 681 + aou * aov) % 16777213 == 1438149) then
            aor_4 = tostring(aoq)
        end
        return aor_4
    end
    aqt = function(vO)
        local aox = Uy.Pets[vO]
        local aoy = aox and aox.Image
        if type(aoy) ~= "string" then
            return nil
        end
        local aoy_1 = string.match(aoy, "(%d+)$")
        if not aoy_1 then
            return nil
        end
        return "https://www.roblox.com/asset-thumbnail/image?assetId=" .. aoy_1 .. "&width=420&height=420&format=png"
    end
    aqS = function(vV, vW)
        local aoD = aqr(vW)
        if aoD == "Normal" then
            return vV
        end
        return aoD .. " " .. vV
    end
    aqx = function(v_)
        aqG[v_] = tick() + 45
    end
    aqy = function(v2)
        local aoF = aqG[v2]
        local aoG = aoF ~= nil and tick() < aoF
        return aoG
    end
    aqK = function(v7)
        local aoI = tick()
        local aoJ = v7
        local aoN = if aoJ then 1 else 0
        local aoL = 612 * aoN + 3199 * (1 - aoN)
        local aoM = 1969 * aoN + 2429 * (1 - aoN)
        if not ((aoL * 1984 + aoM * 640 + aoL * aoM) % 16777213 == 3679396) then
            aoJ = 45
        end
        aqG.__ALL__ = aoI + aoJ
    end
    aqN = function()
        local __ALL__ = aqG.__ALL__
        local aoP = __ALL__ ~= nil and tick() < __ALL__
        return aoP
    end
    aqE = function(we, wf)
        local aoR = aqr(wf)
        if aqs[aoR] then
            return aqs[aoR]
        end
        local aoR_1 = aqA[Wl(we)] or 5793266
        return aoR_1
    end
    aqU = function(wm)
        local petName = wm.petName
        local aoU = aqr(wm.className)
        local aoV = wm.source or "Hatch"
        local aoV_1 = aqR(petName)
        local aoX = aqS(petName, aoU)
        local aoY = aqu[aoU] or ""
        local aoY_1 = aqQ[aoV] or "🐾"
        local aoY_2 = string.format("%s %s", aoY_1, aoX)
        if aoY ~= "" then
            aoY_2 = string.format("%s %s %s", aoY_1, aoY, aoX)
        end
        local ao2_1 = aoV == "Hatch" and "_Pulled from an egg_" or (aoV == "Auto Crafted" and "_Auto crafted on hatch_" or "_Crafted from combining pets_")
        local ao1_1 = string.format("**%s**\n`%s` · **%s**\n%s", aoX, aoV_1, aoU, ao2_1)
        local aoX_1 = {
            { name = "Pet", value = string.format("```%s```", petName), inline = true },
            { name = "Class", value = string.format("**%s** %s", aoU, aoY), inline = true },
            { name = "Rarity", value = string.format("**%s**", aoV_1), inline = true },
            { name = "Source", value = string.format("%s **%s**", aoY_1, aoV), inline = true },
            { name = "Player", value = string.format("`%s`", V3.Name), inline = true }
        }
        local aoV_2 = type(wm.eggName) == "string" and wm.eggName ~= ""
        if aoV_2 then
            aoX_1[#aoX_1 + 1] = { name = "Egg", value = string.format("`%s`", wm.eggName), inline = true }
        end
        if wm.secret then
            aoX_1[#aoX_1 + 1] = { name = "Special", value = "**Secret Pet**", inline = true }
        end
        local aoV_3 = {
            title = aoY_2,
            description = ao1_1,
            color = aqE(petName, aoU),
            fields = aoX_1,
            timestamp = DateTime.now():ToIsoDate(),
            footer = { text = string.format("Ouroboros Hub  •  %s", VU) },
            author = {
                name = "Pet Logger",
                icon_url = "https://www.roblox.com/asset-thumbnail/image?assetId=12645376577&width=150&height=150&format=png"
            }
        }
        local aoU_1 = aqt(petName)
        if aoU_1 then
            aoV_3.thumbnail = { url = aoU_1 }
        end
        return aoV_3
    end
    worker = function(wG)
        local ao8 = #wG
        local apd = 1
        while apd <= ao8 do
            local ape = apd
            local ao8_1 = {}
            local api = 0
            while api <= 9 do
                local ao9 = wG[ape + api]
                if ao9 then
                    ao8_1[#ao8_1 + 1] = ao9
                end
                api += 1
            end
            if #ao8_1 > 0 then
                Vk({ username = "Ouroboros Pet Logger", embeds = ao8_1 })
                task.wait(0.75)
            end
            apd += 10
        end
    end
    aqO = function(wN)
        local apl = type(wN) ~= "table"
        local apq = if apl then 1 else 0
        local apo = 3821 * apq + 1944 * (1 - apq)
        local app = 807 * apq + 2591 * (1 - apq)
        if not ((apo * 2404 + app * 3701 + apo * app) % 16777213 == 15255938) then
            apl = #wN == 0
        end
        if apl then
            return
        end
        local apl_1 = {}
        for i, v in ipairs(wN) do
            local apm = type(v) == "table" and aqH(v.petName, v.className)
            if apm then
                apl_1[#apl_1 + 1] = aqU(v)
            end
        end
        if #apl_1 > 0 then
            task.spawn(worker, apl_1)
        end
    end
    aqI = function(wX, wY, wZ, w_, w0)
        if type(wX) ~= "table" then
            return
        end
        local apA = {}
        for k, v in pairs(wX) do
            if type(v) == "string" then
                aqx(v)
                local apB = type(wY) == "table" and wY[k]
                local apC = apB or "Normal"
                local apB_1 = aqr(apC)
                local apC_1 = type(w_) == "table" and w_[k] == true
                local apC_2 = type(wZ) == "table" and wZ[k] == true
                if not apC_2 then
                    local apC_3 = "Hatch"
                    local apE_1 = apB_1
                    if apC_1 then
                        apE_1 = aqz(apB_1)
                        apC_3 = "Auto Crafted"
                    end
                    apA[#apA + 1] = { petName = v, className = apE_1, source = apC_3, eggName = w0, secret = aCe_83(v) }
                end
            end
        end
        aqO(apA)
    end
    aqJ = function()
        local apM = {}
        local apN = aCe_91()
        local apO = apN and apN.Pets
        if type(apO) ~= "table" then
            return apM
        end
        for k, v in pairs(apO) do
            local apN_2 = type(v) == "table" and type(v.Type) == "string"
            if apN_2 then
                local Type = v.Type
                local apO_1 = aqr(v.Class)
                local apP = tonumber(v.Rank) or 0
                apM[k] = { Type = Type, Class = apO_1, Rank = apP }
            end
        end
        return apM
    end
    aqB = function(xq, xr)
        local apX = type(xq) ~= "table" or type(xr) ~= "table"
        if apX then
            return
        end
        if aqN() then
            return
        end
        local apX_1 = nil
        local apY = {}
        for k, v in pairs(xr) do
            local apZ = xq[k]
            local ap_ = aqr(v.Class)
            if not not aqD[ap_] then
                if not aqy(v.Type) then
                    if not apZ then
                        if not apX_1 then
                            apX_1 = {}
                            for k, v in pairs(xq) do
                                if not xr[k] then
                                    local Type = v.Type
                                    local ap1 = apX_1[v.Type] or 0
                                    apX_1[Type] = ap1 + 1
                                end
                            end
                        end
                        if not ((apX_1[v.Type] or 0) < 2) then
                            if aqH(v.Type, ap_) then
                                apY[#apY + 1] = { petName = v.Type, className = ap_, source = "Crafted", secret = aCe_83(v.Type) }
                            end
                        end
                    else
                        local ap0_3 = apZ.Class ~= ap_ and aqH(v.Type, ap_)
                        if ap0_3 then
                            apY[#apY + 1] = { petName = v.Type, className = ap_, source = "Crafted", secret = aCe_83(v.Type) }
                        end
                    end
                end
            end
        end
        aqO(apY)
    end
    aqW = function()
        return U2.EnablePetLogger ~= nil and U2.EnablePetLogger.Value == true
    end
    UL.OnClientEvent:Connect(function(xF, xG, xH, xI, xJ, xK)
        if not aqW() then
            return
        end
        aqK(45)
        aqI(xF, xG, xH, xI, xK)
    end)
    task.defer(function()
        local xP = 0
        local xO = false
        pcall(function()
            ClientDataManager:AddFunctionToTag("Pets", function()
                if not aqW() then
                    aqv = nil
                    return
                end
                if xO then
                    return
                end
                xO = true
                task.delay(math.max(0, aqT - (os.clock() - xP)), function()
                    xO = false
                    xP = os.clock()
                    if not aqW() then
                        aqv = nil
                        return
                    end
                    local aql = aqJ()
                    if aqv then
                        aqB(aqv, aql)
                    end
                    aqv = aql
                end)
            end)
        end)
    end)
end
aCe_78()
aCe_58 = aCe_62:CreateWindow({
    Title = "Ouroboros Hub [Beta]",
    Footer = { { Text = fns.aCe_18, Copyable = true }, "|", VU },
    Icon = 12645376577,
    NotifySide = "Right",
    EnableSidebarResize = true,
    ShowCustomCursor = false,
    CornerRadius = 10,
    Size = UDim2.fromOffset(912, 513),
    Minimizable = true,
    ShowMobileButtons = false
})
U3 = {
    Info = aCe_58:AddTab("Info", "info"),
    Main = aCe_58:AddTab("Main", "swords"),
    Elements = aCe_58:AddTab("Elements", "flame"),
    Dungeon = aCe_58:AddTab("Dungeon", "swords"),
    Eggs = aCe_58:AddTab("Eggs", "package"),
    GameInfo = aCe_58:AddTab("Game Info", "gamepad-2"),
    Webhook = aCe_58:AddTab("Webhook", "link"),
    Performance = aCe_58:AddTab("Performance", "gauge"),
    Settings = aCe_58:AddTab("Settings", "settings")
}
U3.Farm = U3.Main:AddSubTab("Farm", "gavel")
U3.Shop = U3.Main:AddSubTab("Shop", "package")
U3.Player = U3.Main:AddSubTab("Player", "person-standing")
U3.ElementsFarm = U3.Elements:AddSubTab("Farm", "list")
U3.DungeonParty = U3.Dungeon:AddSubTab("Party", "person-standing")
U3.DungeonFarm = U3.Dungeon:AddSubTab("Farm", "swords")
U3.DungeonUpgrades = U3.Dungeon:AddSubTab("Upgrades", "package")
aCe_94 = function()
    local ara
    ara = nil
    local Label, arc, ard
    ara = "Unknown"
    pcall(function()
        local aq0_1
        local aq__1
        if identifyexecutor then
            aq0_1, aq__1 = identifyexecutor()
            local aq1 = aq0_1 ~= ""
            local aq2 = type(aq0_1) == "string" and aq1
            if aq2 then
                local aq1_1 = type(aq__1) == "string" and aq__1 ~= "" and aq0_1 .. " " .. aq__1
                ara = aq1_1 or aq0_1
            end
        end
    end)
    local AccountGroup = U3.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(aCe_52("User", V3.Name, aCe_57), true)
    AccountGroup:AddLabel(aCe_52("Status", "Keyless", aCe_57), true)
    AccountGroup:AddLabel(aCe_52("Executor", ara, aCe_57), true)
    local GameInfoGroup = U3.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(W3(VU .. " [" .. tostring(game.PlaceId) .. "]", VY), true)
    GameInfoGroup:AddLabel(aCe_52("Place ID", tostring(game.PlaceId), VY), true)
    Label = GameInfoGroup:AddLabel(aCe_52("Session time", "0s", aCe_65), true)
    ard = tostring(game.JobId)
    local arf = #ard > 18 and string.sub(ard, 1, 18) .. "..."
    local arf_1 = arf or ard
    GameInfoGroup:AddLabel(aCe_52("Server", arf_1, fns.aCe_30), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local yz = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ard)
            aCe_60(yz, "Copied join script to clipboard")
        end
    })
    arc = os.clock()
    task.spawn(function()
        local aq5_1
        while true do
            task.wait(1)
            if aCe_62.Unloaded then
                break
            end
            local aq4 = math.floor(os.clock() - arc)
            if aq4 < 60 then
                aq5_1 = aq4 .. "s"
            elseif aq4 < 3600 then
                aq5_1 = string.format("%dm %ds", aq4 // 60, aq4 % 60)
            else
                aq5_1 = string.format("%dh %dm", aq4 // 3600, aq4 % 3600 // 60)
            end
            Label:SetText(aCe_52("Session time", aq5_1, aCe_65))
        end
    end)
    local ScriptsGroup = U3.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(W3("Included in this hub", fns.aCe_30), true)
    ScriptsGroup:AddLabel(W3(VU, VY), true)
    local FeaturesGroup = U3.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(W3("Auto Farm", VY), true)
    FeaturesGroup:AddLabel(W3("Element Farm", aCe_65), true)
    FeaturesGroup:AddLabel(W3("Hill Hop Farm", aCe_57), true)
    FeaturesGroup:AddLabel(W3("Dungeon Farm", VY), true)
    FeaturesGroup:AddLabel(W3("Auto Shop", aCe_65), true)
    FeaturesGroup:AddLabel(W3("Egg Opening", aCe_57), true)
    FeaturesGroup:AddLabel(W3("Petdex & Crafting", VY), true)
    FeaturesGroup:AddLabel(W3("Game Info Logs", aCe_57), true)
    FeaturesGroup:AddLabel(W3("Webhook Logger", aCe_65), true)
    FeaturesGroup:AddLabel(W3("Clan Quests", VY), true)
    FeaturesGroup:AddLabel(W3("Player Utilities", fns.aCe_30), true)
    local SocialsGroup = U3.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = Uu })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            aCe_60(VF, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = U3.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = Uu })
    local DonationsGroup = U3.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(W3("All donations are optional but appreciated.", aCe_65), true)
    DonationsGroup:AddLabel(W3("If you donate you get a special role, just PING after you donate.", aCe_57), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(W3("LTC / Litecoin", UI), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            aCe_60(VC, "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(W3("BTC / Bitcoin", UC), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            aCe_60(Vx, "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(W3("ETH / Ethereum", Uz), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            aCe_60(Vo, "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(W3("USDT", Uv), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            aCe_60(Ve, "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(W3("Solana", Uo), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            aCe_60(U4, "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(W3("PayPal", Ue), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            aCe_60(UX, "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(W3("Venmo", W5), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            aCe_60(UP, "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(W3("Don't have any of the listed currencies but still wanna donate?", fns.aCe_30), true)
    DonationsGroup:AddLabel(W3("DM me and we'll work something out.", VY), true)
    local FaqGroup = U3.Info:AddRightGroupbox("FAQ", "circle-help")
    FaqGroup:AddLabel("Where do I get a good config?", true)
    FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    FaqGroup:AddLabel("How do I import / export configs?", true)
    FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    FaqGroup:AddLabel("How do I report bugs?", true)
    FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
    FaqGroup:AddLabel("How do I make suggestions?", true)
    FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    FaqGroup:AddLabel("How do I get help or updates?", true)
    FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
    local function are_8(zj)
        local DiscordGroup = zj:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = Uu })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = Uu })
    end
    for k, v in pairs(U3) do
        if v ~= U3.Info and v ~= U3.Main and v ~= U3.Elements and v ~= U3.Dungeon then
            are_8(v)
        end
    end
end
aCe_94()
aCe_31 = fns.fn1964
aCe_31()
fns.aCe_4 = function()
    local Label, arS
    local FarmGroup = U3.Farm:AddLeftGroupbox("Farm", "swords")
    FarmGroup:AddToggle("AutoSwing", { Text = "Auto Swing", Default = false })
    FarmGroup:AddToggle("AutoCollectCrowns", { Text = "Auto Collect Crowns", Default = false })
    FarmGroup:AddToggle("AutoSellDNA", { Text = "Auto Sell DNA", Default = false })
    FarmGroup:AddToggle("WalkToBoss", { Text = "Walk to Boss", Default = false })
    FarmGroup:AddToggle("AutoClanQuest", { Text = "Auto Clan Quest", Default = false })
    FarmGroup:AddDropdown("ClanQuestTypes", {
        Text = "Clan Quest Types",
        Values = fns.aCe_32.labels,
        Default = fns.aCe_32.labels,
        Multi = true,
        AllowNull = true
    })
    Label2 = FarmGroup:AddLabel(U0(), true)
    local TimingGroup = U3.Farm:AddRightGroupbox("Timing", "clock")
    TimingGroup:AddSlider("FarmDelay", { Text = "Farm Delay", Default = 0.35, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
    TimingGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
    local ShopBuysGroup = U3.Shop:AddLeftGroupbox("Shop Buys", "package")
    ShopBuysGroup:AddToggle("AutoBuySaber", { Text = "Auto Buy Saber", Default = false })
    ShopBuysGroup:AddToggle("AutoBuyDNA", { Text = "Auto Buy DNA", Default = false })
    ShopBuysGroup:AddToggle("AutoBuyClass", { Text = "Auto Buy Class", Default = false })
    ShopBuysGroup:AddToggle("AutoBuyBossDamage", { Text = "Auto Buy Boss Damage", Default = false })
    ShopBuysGroup:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
    ShopBuysGroup:AddToggle("AutoBuyPetAura", { Text = "Auto Buy Pet Aura", Default = false })
    ShopBuysGroup:AddToggle("BuyMaxPerTick", { Text = "Buy Max Each Tick", Default = true })
    local ShopTimingGroup = U3.Shop:AddRightGroupbox("Shop Timing", "clock")
    ShopTimingGroup:AddSlider("ShopDelay", { Text = "Shop Delay", Default = 1.5, Min = 0.25, Max = 30, Rounding = 2, Suffix = "s" })
    local PriorityFarmGroup = U3.ElementsFarm:AddLeftGroupbox("Priority Farm", "swords")
    PriorityFarmGroup:AddToggle("AutoPriorityElementFarm", { Text = "Priority Auto Farm", Default = false })
    PriorityFarmGroup:AddToggle("ElementHillHopFarm", { Text = "Hill Hop Farm", Default = false })
    local arU = { "Fire", "Water", "Earth", "Plasma" }
    local arY = 1
    while arY <= 4 do
        local arZ = arY
        PriorityFarmGroup:AddDropdown("PriorityRank" .. arZ, {
            Text = "Priority " .. arZ,
            Values = { "Fire", "Water", "Earth", "Plasma", "None" },
            Default = arU[arZ],
            AllowNull = true
        })
        arY += 1
    end
    PriorityFarmGroup:AddToggle("OnlyThisFarmZone", { Text = "Only This Farm Zone", Default = false })
    PriorityFarmGroup:AddDropdown("OnlyFarmZone", {
        Text = "Farm Zone",
        Values = { "Normal", "Advanced", "Master", "Grandmaster" },
        Default = "Normal",
        AllowNull = true
    })
    PriorityFarmGroup:AddToggle("ElementMultiHit", { Text = "Multi-Hit", Default = true })
    Label = PriorityFarmGroup:AddLabel("", true)
    local function arU_1()
        local arv = {}
        local arw = {}
        local arC = 1
        while arC <= 4 do
            local arE = arC
            local arx = fns.Options["PriorityRank" .. arE] and fns.Options["PriorityRank" .. arE].Value
            local arx_1 = type(arx) == "string" and arx ~= "" and arx ~= "None" and not arv[arx]
            if arx_1 then
                arv[arx] = true
                arw[#arw + 1] = arx
            end
            arC += 1
        end
        local arv_1 = #arw > 0 and table.concat(arw, " > ")
        local arw_1 = arv_1
        local arH = if arw_1 then 1 else 0
        local arF = 521 * arH + 1556 * (1 - arH)
        local arG = 3351 * arH + 3190 * (1 - arH)
        if not ((arF * 4087 + arG * 3340 + arF * arG) % 16777213 == 15067538) then
            arw_1 = "None"
        end
        Label:SetText(W3("Order: " .. arw_1, fns.aCe_30))
    end
    local ar2 = 1
    while ar2 <= 4 do
        local ar3 = ar2
        fns.Options["PriorityRank" .. ar3]:OnChanged(arU_1)
        ar2 += 1
    end
    arU_1()
    PriorityFarmGroup:AddSlider("ElementFarmDelay", { Text = "Element Farm Delay", Default = 0.35, Min = 0.05, Max = 5, Rounding = 2, Suffix = "s" })
    local LevelCapsGroup = U3.ElementsFarm:AddRightGroupbox("Level Caps", "list")
    LevelCapsGroup:AddSlider("StopFireAtLevel", { Text = "Stop Fire At Level", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
    LevelCapsGroup:AddSlider("StopWaterAtLevel", { Text = "Stop Water At Level", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
    LevelCapsGroup:AddSlider("StopEarthAtLevel", { Text = "Stop Earth At Level", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
    LevelCapsGroup:AddSlider("StopPlasmaAtLevel", { Text = "Stop Plasma At Level", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
    arS = {
        { "Normal", "Normal" },
        { "Advance", "Advanced" },
        { "Master", "Master" },
        { "GrandMaster", "Grandmaster" }
    }
    local function arT_6(z_, z0, z1)
        local arI = z_ == "Right" and U3.ElementsFarm:AddRightGroupbox(z0 .. " Farm", z1)
        local arJ = arI or U3.ElementsFarm:AddLeftGroupbox(z0 .. " Farm", z1)
        arJ:AddToggle("AutoFarm" .. z0, { Text = "Auto Farm " .. z0, Default = false })
        arJ:AddDropdown(z0 .. "FarmZone", {
            Text = "Farm Zone",
            Values = { "Normal", "Advanced", "Master", "Grandmaster" },
            Default = { "Normal" },
            Multi = true,
            AllowNull = true
        })
        arJ:AddDropdown(z0 .. "BringElements", {
            Text = "Bring Elements",
            Values = { "Normal", "Advance", "Master", "G-Master" },
            Default = {},
            Multi = true,
            AllowNull = true
        })
        arJ:AddDivider()
        for i, v in ipairs(arS) do
            local arQ = v
            arJ:AddButton({
                Text = arQ[1] .. " Teleport",
                Func = function()
                    fns.aCe_21(z0, arQ[2])
                end
            })
        end
    end
    arT_6("Left", "Fire", "flame")
    arT_6("Right", "Water", "droplet")
    arT_6("Left", "Earth", "mountain")
    arT_6("Right", "Plasma", "zap")
end
fns.aCe_4()
WP = {
    elementOrder = { "Earth", "Fire", "Plasma", "Water" },
    elementLabels = {},
    slotLabels = {},
    slotsInfo = nil
}
aCe_76 = fns.fn2413
VZ = fns.fn326
WQ = fns.fn835
aCe_37 = function()
    local as3
    as3 = nil
    local PartyGroup = U3.DungeonParty:AddLeftGroupbox("Party", "person-standing")
    PartyGroup:AddDropdown("DungeonPartyPlayer", { Text = "Select Player To Join Party", Values = UF(), Default = "None", AllowNull = true })
    PartyGroup:AddButton({
        Text = "Refresh",
        Func = function()
            WJ()
            aCe_62:Notify("Party player list refreshed")
        end
    })
    PartyGroup:AddToggle("AutoJoinPlayerParty", { Text = "Auto Join Player Party", Default = false })
    PartyGroup:AddDropdown("DungeonGroupType", { Text = "Group Type", Values = { "Public", "Friends" }, Default = "Public", AllowNull = true })
    PartyGroup:AddButton({
        Text = "Open Dungeon Queue",
        Func = function()
            V2()
        end
    })
    local DungeonSelectGroup = U3.DungeonParty:AddRightGroupbox("Dungeon Select", "list")
    DungeonSelectGroup:AddDropdown("SelectDungeon", { Text = "Select Dungeon", Values = { "Space", "Toxic Lab" }, Default = "Space", AllowNull = true })
    DungeonSelectGroup:AddDropdown("SelectDungeonDifficulty", {
        Text = "Select Difficulty",
        Values = { "Easy", "Medium", "Hard", "Impossible" },
        Default = "Easy",
        AllowNull = true
    })
    DungeonSelectGroup:AddToggle("AutoStartSelectedDungeon", { Text = "Auto Join / Start Selected Dungeon", Default = false })
    local AutoFarmGroup = U3.DungeonFarm:AddLeftGroupbox("Auto Farm", "swords")
    AutoFarmGroup:AddToggle("AutoFarmDungeonV1", { Text = "Auto Farm Dungeon V1", Default = false })
    AutoFarmGroup:AddSlider("DungeonFarmDistanceV1", { Text = "Farming Distance", Default = 120, Min = 10, Max = 500, Rounding = 0 })
    AutoFarmGroup:AddToggle("AutoFarmDungeonV2", { Text = "Auto Farm Dungeon V2", Default = false })
    AutoFarmGroup:AddSlider("DungeonFarmDistanceV2", { Text = "V2 Distance", Default = 150, Min = 10, Max = 500, Rounding = 0 })
    AutoFarmGroup:AddDropdown("DungeonFarmMethod", {
        Text = "Farm Method",
        Values = { "Above", "Orbit", "Behind", "Below" },
        Default = "Above",
        AllowNull = true
    })
    AutoFarmGroup:AddSlider("DungeonFarmMethodOffset", { Text = "Method Offset", Default = 5, Min = 2, Max = 20, Rounding = 0 })
    local AutomationGroup = U3.DungeonFarm:AddRightGroupbox("Automation", "package")
    AutomationGroup:AddToggle("AutoClaimIncubatedEgg", { Text = "Auto Claim Incubated Egg/Pet", Default = false })
    AutomationGroup:AddToggle("AutoIncubateBetterEgg", { Text = "Auto Incubate Better Egg/Pets", Default = false })
    AutomationGroup:AddToggle("AutoCollectDungeonReward", { Text = "Auto Collect Reward", Default = false })
    local UpgradesGroup = U3.DungeonUpgrades:AddLeftGroupbox("Upgrades", "package")
    UpgradesGroup:AddToggle("AutoBuyDungeonUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    UpgradesGroup:AddDropdown("DungeonAutoBuyUpgradesList", { Text = "Upgrades", Values = Vd, Default = {}, Multi = true, AllowNull = true })
    local InfoGroup = U3.DungeonUpgrades:AddRightGroupbox("Info", "list")
    InfoGroup:AddButton({ Text = "Print Upgrade Levels", Func = UE })
    local as4_6 = aCe_53(1)
    local SelectEggGroup = U3.Eggs:AddLeftGroupbox("Select Egg", "list")
    SelectEggGroup:AddDropdown("EggPage", { Text = "Page", Values = UM(), Default = "1", Multi = false, AllowNull = true })
    SelectEggGroup:AddDropdown("EggNumber", { Text = "Number", Values = Ut(1), Default = "1", Multi = false, AllowNull = true })
    local as6 = #as4_6 > 0 and as4_6
    local as7 = { "Basic Egg" }
    local as8 = as6
    local atc = if as8 then 1 else 0
    local ata = 2754 * atc + 1940 * (1 - atc)
    local atb = 1458 * atc + 754 * (1 - atc)
    if not ((ata * 2176 + atb * 2750 + ata * atb) % 16777213 == 14017536) then
        as8 = as7
    end
    local as6_1 = as4_6[1] or "Basic Egg"
    SelectEggGroup:AddDropdown("EggName", { Text = "Name", Values = as8, Default = as6_1, Multi = false, AllowNull = true })
    as3 = function(A4)
        local ast = (tonumber(fns.Options.EggPage.Value))
        local asC = if ast then 1 else 0
        local asA = 3785 * asC + 252 * (1 - asC)
        local asB = 3193 * asC + 1174 * (1 - asC)
        if not ((asA * 1617 + asB * 3592 + asA * asB) % 16777213 == 12897893) then
            ast = 1
        end
        local asu = ast
        local asu_1 = math.clamp(asu, 1, fns.aCe_17)
        local ast_1 = aCe_53(asu_1)
        local asv = Ut(asu_1)
        fns.Options.EggNumber:SetValues(asv)
        local asu_2 = (tonumber(fns.Options.EggNumber.Value))
        local asF = if asu_2 then 1 else 0
        local asD = 1328 * asF + 296 * (1 - asF)
        local asE = 3221 * asF + 98 * (1 - asF)
        if not ((asD * 2506 + asE * 1556 + asD * asE) % 16777213 == 12617332) then
            asu_2 = 1
        end
        local asv_1 = asu_2
        local asv_2 = math.clamp(asv_1, 1, math.max(1, #ast_1))
        fns.Options.EggNumber:SetValue(tostring(asv_2))
        local EggName = fns.Options.EggName
        local asy = #ast_1 > 0 and ast_1 or { "Basic Egg" }
        EggName:SetValues(asy)
        local asu_4 = A4
        local asw_1 = not asu_4 or not table.find(ast_1, asu_4)
        if asw_1 then
            local asw_2 = ast_1[asv_2]
            local asI = if asw_2 then 1 else 0
            local asG = 3266 * asI + 3799 * (1 - asI)
            local asH = 1905 * asI + 1427 * (1 - asI)
            if not ((asG * 369 + asH * 70 + asG * asH) % 16777213 == 7560234) then
                asw_2 = ast_1[1]
            end
            asu_4 = asw_2 or "Basic Egg"
        end
        fns.Options.EggName:SetValue(asu_4)
    end
    fns.Options.EggPage:OnChanged(function()
        as3(nil)
    end)
    fns.Options.EggNumber:OnChanged(function()
        local asJ = tonumber(fns.Options.EggPage.Value) or 1
        local asJ_1 = aCe_53(asJ)
        local asK_1 = tonumber(fns.Options.EggNumber.Value) or 1
        local asK_2 = asJ_1[asK_1]
        if asK_2 then
            fns.Options.EggName:SetValue(asK_2)
        end
    end)
    fns.Options.EggName:OnChanged(function()
        local asP_1
        local asO_1
        local Value = fns.Options.EggName.Value
        asO_1, asP_1 = WT(Value)
        if not asP_1 then
            return
        end
        local asN_1 = math.ceil(asP_1 / aCe_72)
        local asO_2 = (asP_1 - 1) % aCe_72 + 1
        if tostring(fns.Options.EggPage.Value) ~= tostring(asN_1) then
            fns.Options.EggPage:SetValue(tostring(asN_1))
        end
        if tostring(fns.Options.EggNumber.Value) ~= tostring(asO_2) then
            fns.Options.EggNumber:SetValue(tostring(asO_2))
        end
        Vz()
    end)
    local EggOpeningGroup = U3.Eggs:AddRightGroupbox("Egg Opening", "package")
    EggOpeningGroup:AddToggle("AutoOpenEgg", { Text = "Auto Open Selected Egg", Default = false })
    EggOpeningGroup:AddToggle("AutoHatchBestEgg", { Text = "Auto Hatch Best Unlocked Egg", Default = false })
    EggOpeningGroup:AddToggle("RemoveHatchAnimation", { Text = "Remove Hatch Animation", Default = false })
    EggOpeningGroup:AddToggle("AutoTeleportEggShop", { Text = "Auto Teleport to Egg Shop", Default = false })
    EggOpeningGroup:AddToggle("AutoGoEggEvent", { Text = "Auto Go to Egg Event", Default = false })
    EggOpeningGroup:AddToggle("IgnoreSecretPets", { Text = "Ignore Secret Pets", Default = true })
    EggOpeningGroup:AddSlider("EggDelay", { Text = "Egg Delay", Default = 1, Min = 0.2, Max = 20, Rounding = 2, Suffix = "s" })
    local PetdexGroup = U3.Eggs:AddLeftGroupbox("Petdex", "book")
    Label3 = PetdexGroup:AddLabel(Vy(), true)
    PetdexGroup:AddToggle("AutoCompletePetdex", { Text = "Auto Complete Petdex", Default = false })
    PetdexGroup:AddToggle("PetdexAutoDelete", { Text = "Auto Delete After Petdex Collect", Default = false })
    PetdexGroup:AddToggle("AutoRedeemPetdex", { Text = "Auto Redeem Petdex Rewards", Default = false })
    PetdexGroup:AddButton({
        Text = "Auto Teleport To Pet Shop",
        Func = function()
            Va()
            aCe_62:Notify("Teleported to Pet Shop")
        end
    })
    PetdexGroup:AddSlider("PetdexSkipBest", { Text = "Skip Best Pets", Default = 0, Min = 0, Max = 10, Rounding = 0 })
    PetdexGroup:AddSlider("PetdexDelay", { Text = "Petdex Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 2, Suffix = "s" })
    if U2.PetdexAutoDelete then
        U2.PetdexAutoDelete:OnChanged(function()
            Vf()
        end)
    end
    if fns.Options.PetdexSkipBest then
        fns.Options.PetdexSkipBest:OnChanged(function()
            Vz()
        end)
    end
    if U2.IgnoreSecretPets then
        U2.IgnoreSecretPets:OnChanged(function()
            if U2.PetdexAutoDelete and U2.PetdexAutoDelete.Value then
                Vf()
            end
        end)
    end
    if fns.Options.EggName then
        fns.Options.EggName:OnChanged(function()
            if U2.PetdexAutoDelete and U2.PetdexAutoDelete.Value then
                Vf()
            end
        end)
    end
    local CraftingGroup = U3.Eggs:AddRightGroupbox("Crafting", "hammer")
    CraftingGroup:AddToggle("AutoCraftAllPets", { Text = "Craft All Pets Free & Premium", Default = false })
    CraftingGroup:AddToggle("AutoEvolveStrongest", { Text = "Evolve Strongest Pet Without Losing Level", Default = false })
    CraftingGroup:AddToggle("AutoEquipBestPets", { Text = "Equip Best Pets", Default = false })
    CraftingGroup:AddToggle("AutoEquipBestEventPets", { Text = "Equip Best Event Pets", Default = false })
    CraftingGroup:AddToggle("AutoSellPets", { Text = "Auto Sell Pets", Default = false })
    CraftingGroup:AddSlider("KeepBestPets", { Text = "Keep Best Pets", Default = 10, Min = 0, Max = 200, Rounding = 0 })
    CraftingGroup:AddSlider("CraftDelay", { Text = "Craft Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 2, Suffix = "s" })
    local ElementsGroup = U3.GameInfo:AddLeftGroupbox("Elements", "flame")
    ElementsGroup:AddToggle("LogElements", { Text = "Log Elements", Default = true })
    for i, v in ipairs(WP.elementOrder) do
        WP.elementLabels[v] = ElementsGroup:AddLabel(aCe_52(v, VZ(v), VY), true)
    end
    local IncubationGroup = U3.GameInfo:AddRightGroupbox("Incubation", "package")
    IncubationGroup:AddToggle("LogIncubation", { Text = "Log Incubation", Default = true })
    WP.slotsInfo = IncubationGroup:AddLabel(aCe_52("Egg Slots", "1", fns.aCe_30), true)
    local atl = 1
    while atl <= 8 do
        local atm = atl
        WP.slotLabels[atm] = IncubationGroup:AddLabel(aCe_52("Slot " .. tostring(atm), "Empty", fns.aCe_30), true)
        atl += 1
    end
    local PetLoggerGroup = U3.Webhook:AddLeftGroupbox("Pet Logger", "link")
    PetLoggerGroup:AddInput("WebhookUrl", {
        Text = "Discord Webhook URL",
        Default = "",
        Placeholder = "https://discord.com/api/webhooks/...",
        Finished = true
    })
    PetLoggerGroup:AddToggle("EnablePetLogger", { Text = "Enable Pet Logger", Default = false })
    PetLoggerGroup:AddButton({
        Text = "Send Test Message",
        Func = function()
            local as0 = Vk({
                username = "Ouroboros Pet Logger",
                embeds = {
                    {
                        title = "✨ Webhook Connected",
                        description = "**Pet Logger is online.**\nHatches, crafts, and special classes will post here.",
                        color = 5793266,
                        fields = {
                            { name = "Player", value = string.format("`%s`", V3.Name), inline = true },
                            { name = "Game", value = string.format("`%s`", VU), inline = true }
                        },
                        timestamp = DateTime.now():ToIsoDate(),
                        footer = { text = string.format("Ouroboros Hub  •  %s", VU) },
                        author = {
                            name = "Pet Logger",
                            icon_url = "https://www.roblox.com/asset-thumbnail/image?assetId=12645376577&width=150&height=150&format=png"
                        }
                    }
                }
            })
            local as0_1 = as0 and "Webhook test sent" or "Webhook test failed"
            aCe_62:Notify(as0_1)
        end
    })
    local RarityFiltersGroup = U3.Webhook:AddRightGroupbox("Rarity Filters", "list")
    RarityFiltersGroup:AddDropdown("LogStars", {
        Text = "Log Stars",
        Values = { "1", "2", "3", "4", "5" },
        Default = { "4", "5" },
        Multi = true,
        AllowNull = true
    })
    RarityFiltersGroup:AddDropdown("LogMoons", {
        Text = "Log Moons",
        Values = { "1", "2", "3" },
        Default = { "1", "2", "3" },
        Multi = true,
        AllowNull = true
    })
    RarityFiltersGroup:AddToggle("LogSecrets", { Text = "Log Secrets", Default = true })
end
aCe_37()
fns.aCe_19 = fns.fn1109
fns.aCe_19()
UO = {}
aCe_100 = function()
    local aAj
    local aAx
    local Lighting
    local aAA
    local aAD
    local aAk
    local OpenEggs
    local Position2
    local Position
    local imageButton
    local aAg
    local NewHatchResult
    OpenEggs = nil
    Lighting = nil
    aAg = nil
    aAj = nil
    aAk = nil
    imageButton = nil
    aAx = nil
    Position = nil
    aAA = nil
    NewHatchResult = nil
    aAD = nil
    Position2 = nil
    local aAb, aAd, aAh, aAi, aAl, aAm, aAn, aAp, aAq, aAr, aAt, aAu, aAv, aAz, aAE, aAF, aAG, aAI, aAK, aAL
    OpenEggs = require(Ws.Gui:WaitForChild("GuiScripts"):WaitForChild("OpenEggs"))
    NewHatchResult = OpenEggs.NewHatchResult
    local function aAs(Cp)
        if Cp then
            OpenEggs.NewHatchResult = function() end
            pcall(function()
                local ato = aCe_70()
                local atp = ato and ato.OpenEggs
                local ato_1 = atp
                if atp then
                    atp = ato_1.Visible
                end
                if atp then
                    VG:ToggleMenu(ato_1)
                end
                local atp_1 = ato_1 and ato_1:FindFirstChild("Eggs")
                if atp_1 then
                    for i, child in ipairs(atp_1:GetChildren()) do
                        local ato_3 = child:IsA("Frame") and child.Name ~= "Example"
                        if ato_3 then
                            child:Destroy()
                        end
                    end
                end
            end)
        else
            OpenEggs.NewHatchResult = NewHatchResult
        end
    end
    UO.applyRemoveHatchAnimation = aAs
    UO.restoreHatchAnimation = function()
        OpenEggs.NewHatchResult = NewHatchResult
    end
    if U2.RemoveHatchAnimation then
        U2.RemoveHatchAnimation:OnChanged(function()
            aAs(U2.RemoveHatchAnimation.Value)
        end)
        if U2.RemoveHatchAnimation.Value then
            aAs(true)
        end
    end
    UO.ToggleGui = Instance.new("ScreenGui")
    UO.ToggleGui.Name = "OuroborosToggle"
    UO.ToggleGui.ResetOnSpawn = false
    UO.ToggleGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    UO.ToggleGui.DisplayOrder = 999
    if syn and syn.protect_gui then
        syn.protect_gui(UO.ToggleGui)
    end
    local ToggleGui = UO.ToggleGui
    local aAN = gethui and gethui()
    local aAO = aAN
    local aAS = if aAO then 1 else 0
    local aAQ = 2908 * aAS + 921 * (1 - aAS)
    local aAR = 3947 * aAS + 301 * (1 - aAS)
    if not ((aAQ * 1083 + aAR * 896 + aAQ * aAR) % 16777213 == 1386539) then
        aAO = Wa
    end
    ToggleGui.Parent = aAO
    imageButton = Instance.new("ImageButton")
    imageButton.Name = "Toggle"
    imageButton.Size = UDim2.fromOffset(56, 56)
    imageButton.Position = UDim2.fromOffset(20, 20)
    imageButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    imageButton.BorderSizePixel = 0
    imageButton.AutoButtonColor = false
    imageButton.Image = "rbxthumb://type=Asset&id=774125543&w=150&h=150"
    imageButton.ImageColor3 = Color3.fromRGB(255, 255, 255)
    imageButton.ScaleType = Enum.ScaleType.Fit
    imageButton.Parent = UO.ToggleGui
    local uIPadding2 = Instance.new("UIPadding")
    uIPadding2.PaddingTop = UDim.new(0, 10)
    uIPadding2.PaddingBottom = UDim.new(0, 10)
    uIPadding2.PaddingLeft = UDim.new(0, 10)
    uIPadding2.PaddingRight = UDim.new(0, 10)
    uIPadding2.Parent = imageButton
    local uIStroke2 = Instance.new("UIStroke")
    uIStroke2.Color = Color3.fromRGB(60, 60, 60)
    uIStroke2.Thickness = 1
    uIStroke2.Parent = imageButton
    aAx = nil
    aAj = false
    Position2 = nil
    Position = nil
    aAl = function()
        local atC = aCe_62.Toggled and 0 or 0.45
        imageButton.ImageTransparency = atC
    end
    imageButton.InputBegan:Connect(function(C0)
        if C0.UserInputType ~= Enum.UserInputType.MouseButton1 and C0.UserInputType ~= Enum.UserInputType.Touch then
            return
        end
        aAx = C0
        aAj = false
        Position2 = C0.Position
        Position = imageButton.Position
    end)
    UO.toggleMoveConnection = UserInputService.InputChanged:Connect(function(C8)
        if not aAx then
            return
        end
        if C8.UserInputType ~= Enum.UserInputType.MouseMovement and C8.UserInputType ~= Enum.UserInputType.Touch then
            return
        end
        local atG_1 = C8.Position - Position2
        if atG_1.Magnitude > 4 then
            aAj = true
        end
        if aAj then
            imageButton.Position = UDim2.fromOffset(Position.X.Offset + atG_1.X, Position.Y.Offset + atG_1.Y)
        end
    end)
    UO.toggleEndConnection = UserInputService.InputEnded:Connect(function(Dg)
        if not aAx or Dg.UserInputType ~= aAx.UserInputType then
            return
        end
        aAx = nil
        if not aAj then
            aCe_62:Toggle()
            aAl()
        end
    end)
    aAl()
    aAb = function()
        local Character = V3.Character
        local atR = Character and Character:FindFirstChildOfClass("Humanoid")
        return atR
    end
    UO.getHumanoid = aAb
    aAt = function(Ds)
        pcall(function()
            Wf:SetGameplayPausedNotificationEnabled(not Ds)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = Wa:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not Ds
            end
        end)
        if not Ds then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(V3, "GameplayPaused", false)
            else
                V3.GameplayPaused = false
            end
        end)
    end
    UO.applyAntiGameplayPause = aAt
    U2.AntiGameplayPause:OnChanged(function()
        aAt(U2.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(1)
            if U2.AntiGameplayPause.Value then
                aAt(true)
            end
        end
    end)
    RunService.Stepped:Connect(function()
        local Character
        Character = nil
        if aCe_62.Unloaded then
            return
        end
        if not (U2.NoClip and U2.NoClip.Value) then
            return
        end
        Character = V3.Character
        if not Character then
            return
        end
        pcall(function()
            for i, descendant in ipairs(Character:GetDescendants()) do
                local at0 = descendant:IsA("BasePart") and descendant.CanCollide
                if at0 then
                    descendant.CanCollide = false
                end
            end
        end)
    end)
    UserInputService.JumpRequest:Connect(function()
        if aCe_62.Unloaded then
            return
        end
        if U2.InfJump and U2.InfJump.Value then
            local aub_1 = aAb()
            if aub_1 then
                aub_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    aAk = tick()
    aAL = tick()
    aAz = tick()
    aAm = function()
        pcall(function()
            for i, v in ipairs(getconnections(V3.Idled)) do
                local aun = v
                pcall(function()
                    if typeof(aun.Disable) == "function" then
                        aun:Disable()
                    else
                        aun:Disconnect()
                    end
                end)
            end
        end)
    end
    aAm()
    aAr = function()
        if not workspace.CurrentCamera then
            return
        end
        pcall(function()
            WC:CaptureController()
        end)
        WC:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        task.wait(0.1)
        WC:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        aAL = tick()
    end
    aAv = function()
        pcall(function()
            ClientTool:Swing()
        end)
        aAz = tick()
    end
    UO.antiAfkIdledConnection = V3.Idled:Connect(function()
        if aCe_62.Unloaded then
            return
        end
        if U2.AntiAfk and U2.AntiAfk.Value then
            pcall(aAr)
            pcall(aAv)
        end
    end)
    UO.antiAfkBeganConnection = UserInputService.InputBegan:Connect(function()
        aAk = tick()
    end)
    UO.antiAfkChangedConnection = UserInputService.InputChanged:Connect(function(Em)
        local UserInputType = Em.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            aAk = tick()
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(2)
            if U2.AntiAfk.Value then
                aAm()
                local auy = tick() - aAk
                local auz = tick() - aAL
                if auy >= 60 and auz >= 60 then
                    pcall(aAr)
                end
                local auz_1 = auy >= 60 and tick() - aAz >= 100
                if auz_1 then
                    pcall(aAv)
                end
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            local auC_1 = fns.Options.FarmDelay and fns.Options.FarmDelay.Value or 0.35
            task.wait(auC_1)
            local auC_2 = U2.WalkToBoss and U2.WalkToBoss.Value and not eggEventHasPriority()
            if auC_2 then
                Wv()
            end
            if U2.AutoSwing and U2.AutoSwing.Value then
                pcall(function()
                    ClientTool:Swing()
                end)
            end
            if U2.AutoClanQuest and U2.AutoClanQuest.Value then
                pcall(UK)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(0.35)
            if U2.AutoCollectCrowns and U2.AutoCollectCrowns.Value then
                pcall(V1)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            local auK_1 = fns.Options.SellDelay and fns.Options.SellDelay.Value or 0.5
            task.wait(auK_1)
            if U2.AutoSellDNA and U2.AutoSellDNA.Value then
                pcall(function()
                    U1:FireServer()
                end)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            local auR = fns.Options.ShopDelay and fns.Options.ShopDelay.Value or 1.5
            task.wait(auR)
            local auR_1 = U2.AutoBuySaber and U2.AutoBuySaber.Value
            if not auR_1 then
                auR_1 = U2.AutoBuyDNA and U2.AutoBuyDNA.Value
            end
            if not auR_1 then
                auR_1 = U2.AutoBuyClass and U2.AutoBuyClass.Value
            end
            if not auR_1 then
                auR_1 = U2.AutoBuyBossDamage and U2.AutoBuyBossDamage.Value
            end
            if not auR_1 then
                auR_1 = U2.AutoBuyAura and U2.AutoBuyAura.Value
            end
            if not auR_1 then
                auR_1 = U2.AutoBuyPetAura and U2.AutoBuyPetAura.Value
            end
            if not auR_1 then
                continue
            end
            local auQ_10 = U2.BuyMaxPerTick and U2.BuyMaxPerTick.Value and VL or UD
            if U2.AutoBuySaber and U2.AutoBuySaber.Value then
                auQ_10("Swords_Order", "Best_Saber_Index", "Swords", "BuyWeapon", "Coins")
            end
            if U2.AutoBuyDNA and U2.AutoBuyDNA.Value then
                auQ_10("DNAs_Order", "Best_DNA_Index", "DNAs", "BuyDNA", "Coins")
            end
            if U2.AutoBuyClass and U2.AutoBuyClass.Value then
                auQ_10("Classes_Order", "Best_Class_Index", "Classes", "BuyClass", "Coins")
            end
            if U2.AutoBuyBossDamage and U2.AutoBuyBossDamage.Value then
                auQ_10("BossBoosts_Order", "Best_BossBoost_Index", "BossBoosts", "BuyBossBoost", "Crowns")
            end
            if U2.AutoBuyAura and U2.AutoBuyAura.Value then
                auQ_10("Auras_Order", "Best_Aura_Index", "Auras", "BuyAura", "Crowns")
            end
            if U2.AutoBuyPetAura and U2.AutoBuyPetAura.Value then
                auQ_10("PetAuras_Order", "Best_PetAura_Index", "PetAuras", "BuyPetAura", "Crowns")
            end
        end
    end)
    task.spawn(function()
        local au3 = false
        repeat
            local auV
            if not aCe_62.Unloaded then
                local auW = fns.Options.EggDelay and fns.Options.EggDelay.Value
                local auW_5
                local auX = auW or 1
                local auX_1
                task.wait(auX)
                if U2.AutoGoEggEvent and U2.AutoGoEggEvent.Value then
                    pcall(goToEggEvent)
                end
                if U2.AutoTeleportEggShop and U2.AutoTeleportEggShop.Value then
                    UJ()
                end
                if U2.AutoHatchBestEgg and U2.AutoHatchBestEgg.Value then
                    auV = aCe_91()
                    auW_5, auX_1 = pcall(function()
                        local auT = auV and Uy:GetBestNonEventEggCanOpenName(auV)
                        return auT
                    end)
                    local auY_1 = auW_5 and type(auX_1) == "string"
                    if auY_1 and auX_1 ~= "" then
                        local auW_7 = auV
                        if auW_7 then
                            local find = table.find
                            local au__1 = auV.Passes or {}
                            auW_7 = find(au__1, "AutoHatch")
                        end
                        if auW_7 then
                            Wj("AutoHatch", true)
                        end
                        fns.aCe_28("BuyEgg", auX_1)
                    end
                end
                if not not (U2.AutoOpenEgg and U2.AutoOpenEgg.Value) then
                    local auX_2 = fns.Options.EggName and fns.Options.EggName.Value
                    local auW_10 = auX_2 == ""
                    local auY_3 = type(auX_2) ~= "string" or auW_10
                    if not auY_3 then
                        if not aCe_66(auX_2) then
                            local auW_11 = aCe_91()
                            local auY_4 = auW_11
                            if auY_4 then
                                local find = table.find
                                local au0 = auW_11.Passes or {}
                                auY_4 = find(au0, "AutoHatch")
                            end
                            if auY_4 then
                                Wj("AutoHatch", true)
                            end
                            fns.aCe_28("BuyEgg", auX_2)
                        end
                    end
                end
            else
                au3 = true
            end
        until au3
    end)
    V3.CharacterAdded:Connect(function(FQ)
        if aCe_62.Unloaded then
            return
        end
        if not (U2.AutoGoEggEvent and U2.AutoGoEggEvent.Value) then
            return
        end
        FQ:WaitForChild("HumanoidRootPart", 10)
        task.wait(1)
        pcall(goToEggEvent)
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            local au6_1 = fns.Options.PetdexDelay and fns.Options.PetdexDelay.Value or 2
            task.wait(au6_1)
            Vz()
            Vf()
            if U2.AutoCompletePetdex and U2.AutoCompletePetdex.Value then
                Wj("AutoFarmIndex", true)
                local au6_3 = VD()
                aCe_36 = au6_3
                if au6_3 then
                    fns.aCe_28("BuyEgg", au6_3)
                end
            else
                aCe_36 = nil
            end
            if U2.AutoRedeemPetdex and U2.AutoRedeemPetdex.Value then
                WK()
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            local au9_1 = fns.Options.CraftDelay and fns.Options.CraftDelay.Value or 3
            task.wait(au9_1)
            if U2.AutoCraftAllPets and U2.AutoCraftAllPets.Value then
                Vs()
            end
            if U2.AutoEvolveStrongest and U2.AutoEvolveStrongest.Value then
                Vc()
            end
            if U2.AutoEquipBestPets and U2.AutoEquipBestPets.Value then
                fns.aCe_28("EquipBestPets")
            end
            if U2.AutoEquipBestEventPets and U2.AutoEquipBestEventPets.Value then
                fns.aCe_28("EquipBestPets", true)
            end
            if U2.AutoSellPets and U2.AutoSellPets.Value then
                pcall(sellWorstPets)
            end
        end
    end)
    task.spawn(function()
        local awf
        local awb
        awb = nil
        awf = nil
        local awc, awd, awe, awg
        local awt_1, awt_2
        local aws_1, aws_2
        local awu_1
        local awr_1, awr_4
        local awq_1, awq_5
        local awv_1
        local awh = false
        local awi = 0
        awg = 0
        local awj = 0
        awc = nil
        awe = nil
        local function awk()
            local avc = {}
            if U2.AutoPriorityElementFarm and U2.AutoPriorityElementFarm.Value then
                for i, v in ipairs(fns.aCe_26()) do
                    if fns.aCe_23(v) then
                        avc[#avc + 1] = v
                    end
                end
                return avc
            end
            for i, v in ipairs(aCe_67) do
                local avd_1 = U2["AutoFarm" .. v]
                local ave = avd_1 and avd_1.Value and fns.aCe_23(v)
                if ave then
                    avc[#avc + 1] = v
                end
            end
            return avc
        end
        awd = function(GC)
            local avs = Ud()
            if avs then
                return { avs }
            end
            local avs_1 = fns.Options[GC .. "FarmZone"] and fns.Options[GC .. "FarmZone"].Value
            return V6(avs_1)
        end
        awf = function(GO, GP)
            local avu = awd(GO)
            local avv = UG(GO .. "BringElements")
            local avw = #avv > 0
            if avw then
                avw = not (U2.ElementMultiHit and U2.ElementMultiHit.Value)
            end
            local avx_2 = avw
            if avw then
                avw = avv
            end
            local avy = avw or avu
            if GP then
                US(GO, avu)
                US(GO, avy)
            end
            local avy_1 = WL(GO, avy)
            return avu, avv, avx_2, avy, avu[1], avy_1
        end
        local function awl(G9, Ha)
            local avD = os.clock()
            if awe == G9 and awc == Ha and avD - awg < 2 then
                return
            end
            local avE_1 = V3.Character and V3.Character:FindFirstChild("HumanoidRootPart")
            local avE_2 = Vm(fns.aCe_7(G9, Ha), G9, Ha)
            if avE_1 and avE_2 and (avE_1.Position - avE_2.Position).Magnitude <= 90 then
                awe = G9
                awc = Ha
                return
            end
            fns.aCe_21(G9, Ha)
            awg = avD
            awe = G9
            awc = Ha
        end
        awb = function(Hl)
            if not Wz then
                return nil
            end
            local avL = {}
            for i, v in ipairs(awd(Hl)) do
                avL[v] = true
            end
            return Wz(Hl, avL)
        end
        local function awm(Hu)
            local avY_1
            local avX_1
            local avW_1
            local avV_1
            local avU_1
            local avT_1
            for i, v in ipairs(Hu) do
                if awb(v) then
                    return v
                end
            end
            for i, v in ipairs(Hu) do
                avU_1, avX_1, avV_1, avW_1, avT_1, avY_1 = awf(v, false)
                if #avY_1 > 0 then
                    return v
                end
            end
            return Hu[1]
        end
        while not aCe_62.Unloaded do
            local awn = fns.Options.ElementFarmDelay and fns.Options.ElementFarmDelay.Value
            local awn_3, awn_7
            local awo = awn or 0.35
            local awo_4, awo_7
            task.wait(awo)
            if Wu() then
                continue
            end
            local awn_2 = awk()
            if #awn_2 == 0 then
                awe = nil
                awc = nil
                awj = 0
                awi = 0
                awh = false
                continue
            end
            local awo_1 = false
            local awp = awe
            if awp then
                for i, v in ipairs(awn_2) do
                    if v == awp then
                        awo_1 = true
                        break
                    end
                end
            end
            if not awo_1 then
                awp = nil
                awe = nil
                awc = nil
            end
            local awo_2 = false
            if awp then
                if awb(awp) then
                    awo_2 = true
                else
                    aws_1, awq_1, awu_1, awt_1, awr_1, awv_1 = awf(awp, false)
                    awo_2 = #awv_1 > 0
                end
            end
            if not awo_2 then
                for i, v in ipairs(awn_2) do
                    if v == awp then
                        break
                    elseif awb(v) then
                        awp = v
                        awe = v
                        awc = nil
                        awj = os.clock() + 4
                        awi = 0
                        break
                    end
                end
            end
            local awq_2 = not awp
            if not awq_2 then
                local awr_2 = not awo_2
                if awr_2 ~= false then
                    awr_2 = os.clock() >= awj
                end
                awq_2 = awr_2
            end
            if awq_2 then
                local awo_3 = awm(awn_2)
                if awo_3 and awo_3 ~= awp then
                    awp = awo_3
                    awe = awo_3
                    awc = nil
                    awj = os.clock() + 4
                    awi = 0
                elseif not awp then
                    awp = awo_3 or awn_2[1]
                    awe = awp
                    awc = nil
                    awj = os.clock() + 4
                    awi = 0
                else
                    awj = os.clock() + 4
                end
            end
            awn_3, awr_4, awo_4, awt_2, awq_5, aws_2 = awf(awp, true)
            local awu_2 = U2.ElementHillHopFarm and U2.ElementHillHopFarm.Value
            local awu_3 = awb(awp)
            if awu_3 and Wr then
                Wr(awu_3)
                awi = 0
                awj = os.clock() + 4
            elseif #aws_2 == 0 then
                awi += 1
                if awi < 6 then
                    continue
                end
                awe = nil
                awc = nil
                awj = 0
                awi = 0
                if awu_2 then
                    awh = true
                    VQ()
                end
            else
                awi = 0
                local awu_4 = awq_5
                if awo_4 then
                elseif awc then
                    local awv_3 = fns.aCe_7(awp, awc)
                    local aww_1 = false
                    if awv_3 then
                        for i, v in ipairs(aws_2) do
                            if v:IsDescendantOf(awv_3) then
                                aww_1 = true
                                break
                            end
                        end
                    end
                    if aww_1 then
                        awu_4 = awc
                    else
                        local aww_2 = awt_2 == awn_3 and aws_2 or nil
                        local awv_5 = Ui(awp, awn_3, aww_2) or awq_5
                        awu_4 = awv_5
                    end
                else
                    local aww_3 = awt_2 == awn_3 and aws_2 or nil
                    local awv_7 = Ui(awp, awn_3, aww_3) or awq_5
                    awu_4 = awv_7
                end
                if awh or awc ~= awu_4 then
                    awh = false
                    awl(awp, awu_4)
                end
                Wj("AutoFarmingMobs", true)
                if awo_4 then
                    awl(awp, awq_5)
                    Ug(awp, awr_4)
                    local awn_5 = {}
                    local awo_5 = fns.aCe_7(awp, awu_4)
                    if awo_7 then
                        for i, v in ipairs(aws_2) do
                            if v:IsDescendantOf(awo_5) then
                                awn_5[#awn_5 + 1] = v
                            end
                        end
                    end
                    if #awn_7 == 0 then
                        awn_5 = aws_2
                    end
                    V7(awp, awt_2, awn_5)
                    continue
                end
                local awn_6 = {}
                local awo_6 = fns.aCe_7(awp, awu_4)
                for i, v in ipairs(aws_2) do
                    local awq_6 = awo_6 and v:IsDescendantOf(awo_6)
                    if awq_6 then
                        awn_6[#awn_6 + 1] = v
                    end
                end
                if #awn_6 == 0 then
                    awn_6 = aws_2
                end
                if not Ul(awp, { awu_4 }, awn_6, false) then
                    continue
                end
                awn_7 = {}
                awo_7 = fns.aCe_7(awp, awu_4)
                if awo_7 then
                    for i, v in ipairs(aws_2) do
                        if v:IsDescendantOf(awo_7) then
                            awn_7[#awn_7 + 1] = v
                        end
                    end
                end
                if #awn_7 == 0 then
                    awn_7 = aws_2
                end
                V7(awp, awt_2, awn_7)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(1)
            if U2.LogElements and U2.LogElements.Value then
                for i, v in ipairs(WP.elementOrder) do
                    local awW_1 = WP.elementLabels[v]
                    if awW_1 then
                        awW_1:SetText(aCe_52(v, VZ(v), VY))
                    end
                end
            end
            if U2.LogIncubation and U2.LogIncubation.Value then
                local awW_3 = aCe_91()
                local clamp = math.clamp
                local awY = awW_3 and awW_3.DungeonEggSlots
                local awW_4 = tonumber(awY) or 1
                local awY_1 = clamp(awW_4, 1, 8)
                if WP.slotsInfo then
                    WP.slotsInfo:SetText(aCe_52("Egg Slots", tostring(awY_1), fns.aCe_30))
                end
                local aw9 = 1
                while aw9 <= 8 do
                    local axa = aw9
                    local awW_5 = WP.slotLabels[axa]
                    if awW_5 then
                        local awZ = axa <= awY_1 and aCe_65 or fns.aCe_30
                        local awZ_1 = axa <= awY_1 and WQ(axa)
                        local awZ_2 = awZ_1 or "Locked"
                        awW_5:SetText(aCe_52("Slot " .. tostring(axa), awZ_2, awZ))
                    end
                    aw9 += 1
                end
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(1)
            if U2.AutoJoinPlayerParty and U2.AutoJoinPlayerParty.Value then
                pcall(UZ)
            end
            if U2.AutoStartSelectedDungeon and U2.AutoStartSelectedDungeon.Value then
                pcall(function()
                    local axc = not aCe_79() and not fns.aCe_14()
                    if axc then
                        UW()
                    end
                end)
            end
            if U2.AutoBuyDungeonUpgrades and U2.AutoBuyDungeonUpgrades.Value then
                pcall(VN)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(1)
            if U2.AutoCollectDungeonReward and U2.AutoCollectDungeonReward.Value then
                pcall(V_)
            end
            if U2.AutoClaimIncubatedEgg and U2.AutoClaimIncubatedEgg.Value then
                pcall(WB)
            end
            if U2.AutoIncubateBetterEgg and U2.AutoIncubateBetterEgg.Value then
                pcall(UY)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(5)
            if U2.AutoRedeemCodes and U2.AutoRedeemCodes.Value then
                aCe_59(true)
            end
        end
    end)
    task.spawn(function()
        while not aCe_62.Unloaded do
            task.wait(0.05)
            if not aCe_79() then
                continue
            end
            local axk = U2.AutoFarmDungeonV2 and U2.AutoFarmDungeonV2.Value
            local axk_1 = U2.AutoFarmDungeonV1 and U2.AutoFarmDungeonV1.Value
            local axk_2 = not axk
            local axn = not axk_1
            if axn ~= false then
                axn = axk_2
            end
            if axn then
                V9.clearFreeze()
                continue
            end
            Wj("AutoFarmingMobs", true)
            if axk then
                local axl_1 = fns.Options.DungeonFarmDistanceV2 and fns.Options.DungeonFarmDistanceV2.Value or 150
                VX(axl_1)
            elseif axk_1 then
                local axl_2 = fns.Options.DungeonFarmDistanceV1 and fns.Options.DungeonFarmDistanceV1.Value or 120
                Um(axl_2)
            end
            WX()
        end
    end)
    aAD = { connections = {}, lightingOriginals = nil }
    Lighting = game:GetService("Lighting")
    UO.performance = aAD
    aAu = { ParticleEmitter = true, Trail = true, Beam = true, Smoke = true, Fire = true, Sparkles = true }
    aAg = function(Js)
        if U2.BoostFPS and U2.BoostFPS.Value and aAu[Js.ClassName] then
            pcall(function()
                Js.Enabled = false
            end)
        end
        if U2.BoostFPS and U2.BoostFPS.Value then
            local axp_2 = Js:IsA("Decal") or Js:IsA("Texture")
            if axp_2 then
                pcall(function()
                    Js.Transparency = 1
                end)
            elseif Js:IsA("SurfaceAppearance") then
                pcall(function()
                    Js:Destroy()
                end)
            elseif Js:IsA("MeshPart") then
                pcall(function()
                    Js.TextureID = ""
                end)
            end
        end
    end
    local function aAB()
        task.spawn(function()
            for i, descendant in ipairs(game:GetDescendants()) do
                aAg(descendant)
            end
        end)
    end
    aAd = function()
        if aAD.lightingOriginals then
            return
        end
        aAD.lightingOriginals = { GlobalShadows = Lighting.GlobalShadows, FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart }
    end
    local function aAf()
        aAd()
        local lightingOriginals = aAD.lightingOriginals
        if U2.BoostFPS and U2.BoostFPS.Value then
            pcall(function()
                Lighting.GlobalShadows = false
            end)
        else
            pcall(function()
                Lighting.GlobalShadows = lightingOriginals.GlobalShadows
            end)
        end
        if U2.BoostFPS and U2.BoostFPS.Value then
            pcall(function()
                Lighting.FogEnd = 1000000000
                Lighting.FogStart = 1000000000
            end)
        else
            pcall(function()
                Lighting.FogEnd = lightingOriginals.FogEnd
                Lighting.FogStart = lightingOriginals.FogStart
            end)
        end
        local axD = U2.BoostFPS and U2.BoostFPS.Value
        for i, child in ipairs(Lighting:GetChildren()) do
            local axO = child
            local axE_3 = axO:IsA("BloomEffect") or axO:IsA("BlurEffect") or axO:IsA("ColorCorrectionEffect") or axO:IsA("SunRaysEffect") or axO:IsA("DepthOfFieldEffect")
            if axE_3 then
                pcall(function()
                    axO.Enabled = not axD
                end)
            end
        end
    end
    local function aAM_4()
        if type(setfpscap) ~= "function" then
            return
        end
        if U2.FPSCap and U2.FPSCap.Value then
            local axQ = fns.Options.FPSCapValue and fns.Options.FPSCapValue.Value or 60
            pcall(setfpscap, axQ)
        else
            pcall(setfpscap, 0)
        end
    end
    local function aAH()
        local ax5
        ax5 = nil
        ax5 = U2.BoostFPS and U2.BoostFPS.Value
        pcall(function()
            local UserGameSettings = UserSettings():GetService("UserGameSettings")
            local axX = ax5 and Enum.SavedQualitySetting.QualityLevel1
            local ax0 = if axX then 1 else 0
            local axZ = 3249 * ax0 + 149 * (1 - ax0)
            local ax_ = 3129 * ax0 + 2916 * (1 - ax0)
            if not ((axZ * 1925 + ax_ * 1370 + axZ * ax_) % 16777213 == 3929963) then
                axX = Enum.SavedQualitySetting.Automatic
            end
            UserGameSettings.SavedQualityLevel = axX
        end)
        pcall(function()
            local Rendering = settings().Rendering
            local ax3 = ax5 and Enum.QualityLevel.Level01 or Enum.QualityLevel.Automatic
            Rendering.QualityLevel = ax3
        end)
    end
    local function aAo()
        local ayi
        local Terrain
        Terrain = nil
        ayi = nil
        Terrain = workspace:FindFirstChildOfClass("Terrain")
        if not Terrain then
            return
        end
        ayi = U2.BoostFPS and U2.BoostFPS.Value
        pcall(function()
            Terrain.Decoration = not ayi
        end)
        pcall(function()
            local ax9 = ayi and 0 or 0.15
            Terrain.WaterWaveSize = ax9
        end)
        pcall(function()
            local ayf = ayi and 0 or 10
            Terrain.WaterWaveSpeed = ayf
        end)
    end
    aAG = nil
    local function aAN_1()
        local ayl = aCe_91()
        local aym = ayl and ayl.Settings
        if type(aym) ~= "table" then
            return
        end
        if U2.HidePets and U2.HidePets.Value then
            if not aAG then
                aAG = { RenderMyPets = aym.RenderMyPets == true, RenderOtherPets = aym.RenderOtherPets == true }
            end
            Wj("RenderMyPets", false)
            Wj("RenderOtherPets", false)
        else
            local aym_2 = aAG or { RenderMyPets = true, RenderOtherPets = true }
            Wj("RenderMyPets", aym_2.RenderMyPets)
            Wj("RenderOtherPets", aym_2.RenderOtherPets)
            aAG = nil
        end
    end
    UO.applyHidePets = aAN_1
    aAp = function(KG, KH)
        for i, descendant in ipairs(KG:GetDescendants()) do
            if descendant:IsA("BasePart") then
                local ayp = KH and 1 or 0
                descendant.LocalTransparencyModifier = ayp
            end
        end
    end
    aAD.connections.descendant = workspace.DescendantAdded:Connect(function(KK)
        if aCe_62.Unloaded then
            return
        end
        aAg(KK)
    end)
    aAF = function()
        local PlayerGui = V3:FindFirstChildOfClass("PlayerGui")
        local ayz = PlayerGui and PlayerGui:FindFirstChild("MainGui")
        if not ayz then
            return {}
        end
        local ayz_1 = {}
        local EffectsFrame = ayz:FindFirstChild("EffectsFrame")
        if EffectsFrame then
            local ErrorFrame = EffectsFrame:FindFirstChild("ErrorFrame")
            local NumberAnimationStorage = EffectsFrame:FindFirstChild("NumberAnimationStorage")
            if ErrorFrame then
                ayz_1[1] = ErrorFrame
            end
            if NumberAnimationStorage then
                ayz_1[#ayz_1 + 1] = NumberAnimationStorage
            end
        end
        return ayz_1
    end
    aAK = 0
    aAD.connections.popups = RunService.Heartbeat:Connect(function()
        if aCe_62.Unloaded then
            return
        end
        if not (U2.DisablePopups and U2.DisablePopups.Value) then
            return
        end
        if os.clock() - aAK < 0.15 then
            return
        end
        aAK = os.clock()
        for i, v in ipairs(aAF()) do
            if v.Visible then
                v.Visible = false
            end
        end
    end)
    aAq = 0
    aAD.connections.characters = RunService.Heartbeat:Connect(function()
        if aCe_62.Unloaded then
            return
        end
        local ayV = if os.clock() - aAq < 0.2 then 1 else 0
        if ayV == 1 then
            return
        end
        aAq = os.clock()
        local ayO = U2.HideOtherPlayers and U2.HideOtherPlayers.Value
        local ayO_1 = U2.HideMyCharacter and U2.HideMyCharacter.Value
        local ayO_2 = not ayO_1
        local ayR = not ayO
        if ayR ~= false then
            ayR = ayO_2
        end
        if ayR then
            return
        end
        for i, player in ipairs(aCe_88:GetPlayers()) do
            local Character = player.Character
            if Character then
                if player == V3 then
                    if ayO_1 then
                        aAp(Character, true)
                    end
                elseif ayO then
                    aAp(Character, true)
                end
            end
        end
    end)
    aAA = { [1] = nil, [2] = {} }
    aAn = function()
        local PlayerGui = V3:FindFirstChildOfClass("PlayerGui")
        local ay2 = PlayerGui and PlayerGui:FindFirstChild("MainGui")
        local ay1_1 = ay2
        if ay2 then
            ay2 = ay1_1:FindFirstChild("StartFrame")
        end
        local ay1_2 = ay2
        if ay2 then
            ay2 = ay1_2:FindFirstChild("Currency")
        end
        return ay2
    end
    aAE = function()
        if aAA[1] then
            pcall(function()
                aAA[1]:Destroy()
            end)
            aAA[1] = nil
            aAA[2] = {}
        end
    end
    aAI = function(Lv)
        return tostring(Lv):gsub("(%l)(%u)", "%1 %2"):upper()
    end
    aAh = function()
        if aAA[1] then
            return
        end
        local ay5 = gethui and gethui()
        local ay6 = ay5 or game:GetService("CoreGui")
        local ay7 = aCe_62.ScreenGui and aCe_62.ScreenGui.DisplayOrder or 998
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "OuroborosBlackScreen"
        screenGui.IgnoreGuiInset = true
        screenGui.ResetOnSpawn = false
        screenGui.DisplayOrder = ay7 - 1
        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        local frame5 = Instance.new("Frame")
        frame5.Size = UDim2.fromScale(1, 1)
        frame5.BackgroundColor3 = Color3.fromRGB(8, 8, 11)
        frame5.BorderSizePixel = 0
        frame5.Parent = screenGui
        local frame4 = Instance.new("Frame")
        frame4.AnchorPoint = Vector2.new(0.5, 0.5)
        frame4.Position = UDim2.fromScale(0.5, 0.5)
        frame4.Size = UDim2.fromOffset(560, 0)
        frame4.AutomaticSize = Enum.AutomaticSize.Y
        frame4.BackgroundTransparency = 1
        frame4.Parent = frame5
        local uIListLayout2 = Instance.new("UIListLayout")
        uIListLayout2.FillDirection = Enum.FillDirection.Vertical
        uIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        uIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Top
        uIListLayout2.Padding = UDim.new(0, 6)
        uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
        uIListLayout2.Parent = frame4
        local textLabel4 = Instance.new("TextLabel")
        textLabel4.BackgroundTransparency = 1
        textLabel4.Size = UDim2.new(1, 0, 0, 40)
        textLabel4.Font = Enum.Font.GothamBold
        textLabel4.Text = "Ouroboros"
        textLabel4.TextColor3 = Color3.fromRGB(245, 247, 250)
        textLabel4.TextSize = 34
        textLabel4.LayoutOrder = 0
        textLabel4.Parent = frame4
        local textLabel3 = Instance.new("TextLabel")
        textLabel3.BackgroundTransparency = 1
        textLabel3.Size = UDim2.new(1, 0, 0, 20)
        textLabel3.Font = Enum.Font.GothamMedium
        textLabel3.Text = (fns.aCe_18:gsub("^https?://", ""))
        textLabel3.TextColor3 = Color3.fromRGB(110, 193, 255)
        textLabel3.TextSize = 16
        textLabel3.LayoutOrder = 1
        textLabel3.Parent = frame4
        local frame3 = Instance.new("Frame")
        frame3.BackgroundTransparency = 1
        frame3.Size = UDim2.new(1, 0, 0, 18)
        frame3.LayoutOrder = 2
        frame3.Parent = frame4
        local frame2 = Instance.new("Frame")
        frame2.BackgroundTransparency = 1
        frame2.Size = UDim2.new(0, 512, 0, 0)
        frame2.AutomaticSize = Enum.AutomaticSize.Y
        frame2.LayoutOrder = 3
        frame2.Parent = frame4
        local uIGridLayout = Instance.new("UIGridLayout")
        uIGridLayout.CellSize = UDim2.fromOffset(248, 66)
        uIGridLayout.CellPadding = UDim2.fromOffset(16, 14)
        uIGridLayout.FillDirectionMaxCells = 2
        uIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        uIGridLayout.VerticalAlignment = Enum.VerticalAlignment.Top
        uIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
        uIGridLayout.Parent = frame2
        aAA[2] = {}
        local ay8_2 = aAn()
        local ay9 = aCe_91()
        if ay8_2 then
            local aza = 0
            for i, child in ipairs(ay8_2:GetChildren()) do
                local Amount = child:FindFirstChild("Amount")
                local azb = child:IsA("ImageLabel") and child.Name ~= "Blank" and Amount and ay9 and ay9[child.Name] ~= nil
                if azb then
                    aza += 1
                    local frame = Instance.new("Frame")
                    frame.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
                    frame.BackgroundTransparency = 0
                    frame.Size = UDim2.fromOffset(248, 66)
                    frame.LayoutOrder = aza
                    frame.Parent = frame2
                    local uICorner = Instance.new("UICorner")
                    uICorner.CornerRadius = UDim.new(0, 14)
                    uICorner.Parent = frame
                    local uIStroke = Instance.new("UIStroke")
                    uIStroke.Color = Color3.fromRGB(44, 48, 60)
                    uIStroke.Thickness = 1
                    uIStroke.Transparency = 0.2
                    uIStroke.Parent = frame
                    local uIPadding = Instance.new("UIPadding")
                    uIPadding.PaddingLeft = UDim.new(0, 16)
                    uIPadding.PaddingRight = UDim.new(0, 16)
                    uIPadding.PaddingTop = UDim.new(0, 11)
                    uIPadding.PaddingBottom = UDim.new(0, 11)
                    uIPadding.Parent = frame
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.FillDirection = Enum.FillDirection.Vertical
                    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
                    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                    uIListLayout.Padding = UDim.new(0, 3)
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Parent = frame
                    local textLabel2 = Instance.new("TextLabel")
                    textLabel2.BackgroundTransparency = 1
                    textLabel2.Size = UDim2.new(1, 0, 0, 13)
                    textLabel2.Font = Enum.Font.GothamMedium
                    textLabel2.Text = aAI(child.Name)
                    textLabel2.TextColor3 = Color3.fromRGB(128, 135, 150)
                    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel2.TextSize = 12
                    textLabel2.TextTruncate = Enum.TextTruncate.AtEnd
                    textLabel2.LayoutOrder = 0
                    textLabel2.Parent = frame
                    local textLabel = Instance.new("TextLabel")
                    textLabel.BackgroundTransparency = 1
                    textLabel.Size = UDim2.new(1, 0, 0, 24)
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.TextXAlignment = Enum.TextXAlignment.Left
                    textLabel.TextColor3 = Color3.fromRGB(236, 239, 246)
                    textLabel.TextSize = 20
                    textLabel.TextTruncate = Enum.TextTruncate.AtEnd
                    textLabel.Text = Amount.Text
                    textLabel.LayoutOrder = 1
                    textLabel.Parent = frame
                    aAA[2][#aAA[2] + 1] = { source = Amount, label = textLabel }
                end
            end
        end
        screenGui.Parent = ay6
        aAA[1] = screenGui
    end
    local function aAO_1()
        if U2.BlackScreen and U2.BlackScreen.Value then
            aAh()
            pcall(function()
                RunService:Set3dRenderingEnabled(false)
            end)
        else
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
            aAE()
        end
    end
    aAi = 0
    aAD.connections.blackScreen = RunService.Heartbeat:Connect(function()
        if aCe_62.Unloaded then
            return
        end
        if not aAA[1] then
            return
        end
        local azq = if os.clock() - aAi < 0.2 then 1 else 0
        if azq == 1 then
            return
        end
        aAi = os.clock()
        for i, v in ipairs(aAA[2]) do
            if v.source and v.source.Parent then
                v.label.Text = v.source.Text
            end
        end
    end)
    UO.destroyBlackScreen = aAE
    if U2.BlackScreen then
        U2.BlackScreen:OnChanged(aAO_1)
    end
    if U2.FPSCap then
        U2.FPSCap:OnChanged(aAM_4)
    end
    if fns.Options.FPSCapValue then
        fns.Options.FPSCapValue:OnChanged(aAM_4)
    end
    if U2.BoostFPS then
        U2.BoostFPS:OnChanged(function()
            aAH()
            aAf()
            aAo()
            aAB()
        end)
    end
    if U2.HidePets then
        U2.HidePets:OnChanged(aAN_1)
    end
    if U2.DisablePopups then
        U2.DisablePopups:OnChanged(function()
            if not U2.DisablePopups.Value then
                for i, v in ipairs(aAF()) do
                    local azD = v
                    pcall(function()
                        azD.Visible = true
                    end)
                end
            end
        end)
    end
    if U2.HideOtherPlayers then
        U2.HideOtherPlayers:OnChanged(function()
            if not U2.HideOtherPlayers.Value then
                for i, player in ipairs(aCe_88:GetPlayers()) do
                    if player ~= V3 and player.Character then
                        pcall(aAp, player.Character, false)
                    end
                end
            end
        end)
    end
    if U2.HideMyCharacter then
        U2.HideMyCharacter:OnChanged(function()
            if not U2.HideMyCharacter.Value and V3.Character then
                pcall(aAp, V3.Character, false)
            end
        end)
    end
    UO.performanceCleanup = function()
        for k, v in pairs(aAD.connections) do
            local aAa = v
            pcall(function()
                aAa:Disconnect()
            end)
        end
        if aAD.lightingOriginals then
            pcall(function()
                Lighting.GlobalShadows = aAD.lightingOriginals.GlobalShadows
                Lighting.FogEnd = aAD.lightingOriginals.FogEnd
                Lighting.FogStart = aAD.lightingOriginals.FogStart
            end)
        end
        pcall(function()
            for i, v in ipairs(aAF()) do
                v.Visible = true
            end
        end)
        pcall(function()
            for i, player in ipairs(aCe_88:GetPlayers()) do
                if player.Character then
                    aAp(player.Character, false)
                end
            end
        end)
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
        aAE()
        if aAG then
            pcall(function()
                Wj("RenderMyPets", aAG.RenderMyPets)
                Wj("RenderOtherPets", aAG.RenderOtherPets)
            end)
            aAG = nil
        end
        if type(setfpscap) == "function" then
            pcall(setfpscap, 0)
        end
    end
end
aCe_100();
(function()
    local aBX, aBY, aBZ, aB_
    Vl:SetLibrary(aCe_62)
    Vl:SetFolder("OuroborosHub")
    Vl:SaveDefault("Monochrome")
    Vl:ApplyToTab(U3.Settings)
    Vl:LoadDefault()
    Vb:SetLibrary(aCe_62)
    Vb:IgnoreThemeSettings()
    Vb:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    Vb:SetFolder("OuroborosHub/SaberSimulator")
    local aB0 = Vb:BuildConfigSection(U3.Settings)
    aBZ = function(M6, M7)
        local aAU_1 = (M6 == "Toggle" and U2 or fns.Options)[M7]
        local aAT_2 = type(aAU_1) == "table" and aAU_1.Type == M6
        return aAT_2 and aAU_1 or nil
    end
    aBX = function(Ng, Nh)
        local Type = Nh.Type
        if Type == "Toggle" then
            return { idx = Ng, type = "Toggle", value = Nh.Value == true }
        elseif Type == "Slider" then
            return { idx = Ng, type = "Slider", value = tostring(Nh.Value) }
        elseif Type == "Dropdown" then
            return { idx = Ng, type = "Dropdown", multi = Nh.Multi == true, value = Nh.Value }
        elseif Type == "Input" then
            local aAY = Nh.Value or ""
            return { idx = Ng, type = "Input", text = tostring(aAY) }
        elseif Type == "ColorPicker" then
            return { idx = Ng, type = "ColorPicker", value = Nh.Value:ToHex(), transparency = Nh.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = Ng,
                type = "KeyPicker",
                mode = Nh.Mode,
                key = Nh.Value,
                modifiers = Nh.Modifiers,
                toggled = Nh.Toggled
            }
        else
            return nil
        end
    end
    aB_ = function()
        local aA0 = {}
        for i, v in ipairs({ U2, fns.Options }) do
            for k, v in pairs(v) do
                local aA1 = type(v) == "table" and type(v.Type) == "string" and not Vb.Ignore[k]
                if aA1 then
                    local aA1_1 = aBX(k, v)
                    if aA1_1 then
                        aA0[#aA0 + 1] = aA1_1
                    end
                end
            end
        end
        table.sort(aA0, function(Nr, Ns)
            if Nr.type ~= Ns.type then
                return Nr.type < Ns.type
            end
            return Nr.idx < Ns.idx
        end)
        return { objects = aA0 }
    end
    aBY = function(Nu)
        local aBi
        aBi = nil
        local aBj = type(Nu) ~= "table" or type(Nu.idx) ~= "string" or type(Nu.type) ~= "string" or Vb.Ignore[Nu.idx]
        if aBj then
            return false
        end
        aBi = aBZ(Nu.type, Nu.idx)
        if not aBi then
            return false
        end
        local aBj_1 = pcall(function()
            if Nu.type == "Input" then
                if type(Nu.text) ~= "string" then
                    return
                end
                aBi:SetValue(Nu.text)
            elseif Nu.type == "ColorPicker" then
                aBi:SetValueRGB(Color3.fromHex(Nu.value), Nu.transparency)
            elseif Nu.type == "KeyPicker" then
                aBi:SetValue({ Nu.key, Nu.mode, Nu.modifiers })
                if Nu.mode == "Toggle" and Nu.toggled ~= nil then
                    aBi.Toggled = Nu.toggled
                    aBi:Update()
                end
            else
                local aBf_2 = Nu.value
                local aBg = Nu.type == "Dropdown" and aBi.Multi == true and type(aBf_2) == "string"
                if aBg then
                    aBf_2 = { [aBf_2] = true }
                end
                aBi:SetValue(aBf_2)
            end
        end)
        return aBj_1
    end
    aB0:AddDivider()
    aB0:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    aB0:AddButton("Export Config to Clipboard", function()
        local aBp_1
        local aBo_1
        aBo_1, aBp_1 = pcall(Ww.JSONEncode, Ww, aB_())
        if not aBo_1 then
            aCe_62:Notify("Failed to encode the config")
            return
        end
        local aBo_2 = setclipboard or toclipboard
        local aBo_3 = type(aBo_2) ~= "function"
        local aBu = if aBo_3 then 1 else 0
        local aBs = 3767 * aBu + 1210 * (1 - aBu)
        local aBt = 3412 * aBu + 319 * (1 - aBu)
        if not ((aBs * 3435 + aBt * 1718 + aBs * aBt) % 16777213 == 14877252) then
            aBo_3 = not pcall(aBo_2, aBp_1)
        end
        if aBo_3 then
            aCe_62:Notify("Your executor does not support copying to the clipboard")
            return
        end
        aCe_62:Notify("Config copied to clipboard", 6)
    end)
    aB0:AddButton("Import Config from Clipboard Text", function()
        local aBx_1
        local aBv = fns.Options.SaveManager_ImportSource.Value
        local aBv_1
        local aBB = if aBv then 1 else 0
        local aBz = 3316 * aBB + 3843 * (1 - aBB)
        local aBA = 2735 * aBB + 1532 * (1 - aBB)
        if not ((aBz * 798 + aBA * 792 + aBz * aBA) % 16777213 == 13881548) then
            aBv = ""
        end
        local aBw = tostring(aBv):match("^%s*(.-)%s*$")
        if aBw == "" then
            aCe_62:Notify("Paste an exported config into the box first")
            return
        end
        aBv_1, aBx_1 = pcall(Ww.JSONDecode, Ww, aBw)
        local aBw_1 = not aBv_1
        local aBB_1 = if aBw_1 then 1 else 0
        local aBz_1 = 3189 * aBB_1 + 3449 * (1 - aBB_1)
        local aBA_1 = 2785 * aBB_1 + 630 * (1 - aBB_1)
        if not ((aBz_1 * 3 + aBA_1 * 3576 + aBz_1 * aBA_1) % 16777213 == 2072879) then
            aBw_1 = type(aBx_1) ~= "table"
        end
        if not aBw_1 then
            aBw_1 = type(aBx_1.objects) ~= "table"
        end
        if aBw_1 then
            aCe_62:Notify("That is not a valid exported config")
            return
        end
        local aBv_2 = 0
        for i, v in ipairs(aBx_1.objects) do
            if aBY(v) then
                aBv_2 += 1
            end
        end
        if aBv_2 == 0 then
            aCe_62:Notify("No settings in that config matched this script")
            return
        end
        fns.Options.SaveManager_ImportSource:SetValue("")
        local aBx_2 = aBv_2 == 1 and "" or "s"
        aCe_62:Notify(("Imported %d setting%s"):format(aBv_2, aBx_2), 6)
    end)
    Vb:LoadAutoloadConfig()
    if U2.RemoveHatchAnimation and U2.RemoveHatchAnimation.Value and UO.applyRemoveHatchAnimation then
        UO.applyRemoveHatchAnimation(true)
    end
    if U2.PetdexAutoDelete and U2.PetdexAutoDelete.Value then
        Vf()
    end
    if U2.AutoHideUI and U2.AutoHideUI.Value then
        pcall(function()
            aCe_62:Toggle(false)
        end)
    end
    aCe_62:OnUnload(function()
        pcall(VJ)
        pcall(function()
            if UO.toggleMoveConnection then
                UO.toggleMoveConnection:Disconnect()
            end
        end)
        pcall(function()
            if UO.toggleEndConnection then
                UO.toggleEndConnection:Disconnect()
            end
        end)
        pcall(function()
            if UO.ToggleGui then
                UO.ToggleGui:Destroy()
            end
        end)
        pcall(function()
            if UO.antiAfkBeganConnection then
                UO.antiAfkBeganConnection:Disconnect()
            end
        end)
        pcall(function()
            if UO.antiAfkChangedConnection then
                UO.antiAfkChangedConnection:Disconnect()
            end
        end)
        pcall(function()
            if UO.antiAfkIdledConnection then
                UO.antiAfkIdledConnection:Disconnect()
            end
        end)
        if UO.restoreHatchAnimation then
            UO.restoreHatchAnimation()
        end
        if UO.applyAntiGameplayPause then
            UO.applyAntiGameplayPause(false)
        end
        if UO.performanceCleanup then
            pcall(UO.performanceCleanup)
        end
        local aBU = UO.getHumanoid and UO.getHumanoid()
        if aBU then
            aBU.PlatformStand = false
            aBU.WalkSpeed = 16
        end
    end)
end)()
