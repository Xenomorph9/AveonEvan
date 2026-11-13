local fns = {}
local aO8_82, aO8_83, aO8_84, aO8_86, aO8_87, aO8_88, aO8_89, aO8_90, aO8_91, aO8_92, aO8_93, Library, aO8_95, aO8_96, aO8_97, aO8_98, aO8_99, aO8_101, aO8_102, aO8_103, aO8_104, aO8_105, aO8_106, aO8_107, aO8_108, aO8_109, aO8_110, aO8_111, aO8_112, aO8_113, aO8_114, aO8_115, aO8_116, aO8_117, aO8_118, aO8_121, aO8_122, aO8_123, aO8_124, Parry, aO8_126, aO8_127, aO8_128, aO8_129, aO8_130, aO8_131, aO8_132, aO8_133, aO8_134
fns.aO8_1 = nil
fns.aO8_2 = nil
fns.aO8_3 = nil
fns.aO8_4 = nil
fns.aO8_5 = nil
fns.aO8_7 = nil
fns.aO8_8 = nil
fns.aO8_9 = nil
fns.aO8_10 = nil
fns.aO8_11 = nil
fns.aO8_12 = nil
fns.aO8_13 = nil
fns.aO8_14 = nil
fns.aO8_15 = nil
fns.aO8_16 = nil
fns.aO8_18 = nil
fns.aO8_19 = nil
fns.aO8_20 = nil
fns.aO8_21 = nil
fns.aO8_22 = nil
fns.aO8_23 = nil
fns.aO8_24 = nil
fns.aO8_25 = nil
fns.aO8_27 = nil
fns.aO8_28 = nil
fns.aO8_29 = nil
fns.aO8_30 = nil
fns.aO8_31 = nil
fns.aO8_32 = nil
fns.aO8_33 = nil
fns.aO8_35 = nil
fns.aO8_36 = nil
fns.aO8_37 = nil
fns.aO8_38 = nil
fns.aO8_39 = nil
fns.aO8_41 = nil
fns.aO8_42 = nil
fns.aO8_43 = nil
fns.aO8_44 = nil
fns.aO8_45 = nil
fns.aO8_46 = nil
fns.aO8_47 = nil
fns.aO8_48 = nil
fns.aO8_49 = nil
fns.aO8_50 = nil
fns.PlayerGui = nil
fns.aO8_53 = nil
fns.aO8_54 = nil
fns.aO8_55 = nil
fns.aO8_56 = nil
fns.aO8_57 = nil
fns.aO8_58 = nil
fns.aO8_60 = nil
fns.aO8_61 = nil
fns.aO8_62 = nil
fns.aO8_63 = nil
fns.aO8_64 = nil
fns.aO8_65 = nil
fns.aO8_66 = nil
fns.aO8_67 = nil
fns.aO8_68 = nil
fns.aO8_69 = nil
fns.aO8_70 = nil
fns.aO8_71 = nil
fns.aO8_72 = nil
fns.aO8_73 = nil
fns.aO8_74 = nil
fns.aO8_76 = nil
fns.aO8_77 = nil
fns.aO8_78 = nil
fns.aO8_79 = nil
fns.aO8_80 = nil
fns.aO8_81 = nil
aO8_82 = nil
aO8_83 = nil
aO8_84 = nil
aO8_86 = nil
aO8_87 = nil
aO8_88 = nil
aO8_89 = nil
aO8_90 = nil
aO8_91 = nil
aO8_93 = nil
Library = nil
aO8_95 = nil
aO8_96 = nil
aO8_97 = nil
aO8_98 = nil
aO8_99 = nil
aO8_101 = nil
aO8_102 = nil
aO8_103 = nil
aO8_104 = nil
aO8_105 = nil
aO8_106 = nil
aO8_107 = nil
aO8_108 = nil
aO8_110 = nil
aO8_111 = nil
aO8_112 = nil
aO8_113 = nil
aO8_114 = nil
aO8_115 = nil
aO8_116 = nil
aO8_117 = nil
aO8_118 = nil
aO8_121 = nil
aO8_122 = nil
aO8_123 = nil
aO8_124 = nil
Parry = nil
aO8_127 = nil
aO8_128 = nil
aO8_129 = nil
aO8_130 = nil
aO8_131 = nil
aO8_132 = nil
aO8_133 = nil
aO8_134 = nil
local aez
local afz
local afY
local adz
local aeY
local adY
local agm
local aem
local afL
local aeL
local adL
local af9
local agy
local ady
local afX
local aeX
local agl
local adX
local afl
local ael
local agK
local adl
local afK
local adK
local Knit
local agx
local ac8
local ad8
local afx
local afW
local adW
local agk
local afk
local aek
local agJ
local afJ
local aeJ
local Toggles
local af7
local ae7
local agw
local ad7
local adw
local afV
local aeV
local afj
local aej
local agI
local adj
local aeI
local afI
local af6
local adI
local ae6
local ad6
local agv
local Options
local ac6
local afU
local aeU
local adU
local afi
local agH
local adi
local afH
local aeH
local adH
function fns.fn2()
    local Main = fns.PlayerGui:FindFirstChild("Main")
    local asN = Main and Main:FindFirstChild("HUD")
    return asN
end
function fns.fn7()
    local aig = if adU:GetAttribute("Dead") then 1 else 0
    if aig == 1 then
        return false
    elseif adU:GetAttribute("Weapon_Equipped") ~= true then
        return false
    else
        local Character = adU.Character
        local aic = Character and Character:GetAttribute("Blocking")
        if aic then
            return false
        end
        return true
    end
end
function fns.fn55()
    if adU:GetAttribute("InRaid") == true then
        return true
    end
    return fns.aO8_81:FindFirstChild("Raid_NPCs") ~= nil
end
function fns.fn79()
    return aO8_117.active == true or adH.active == true
end
function fns.fn83(xp, xq)
    local aya = -1000000000
    for k, v in xq do
        local ayb = xp.X - v.pos.X
        local ayc = xp.Z - v.pos.Z
        local ayd = v.radius - math.sqrt(ayb * ayb + ayc * ayc)
        if ayd > aya then
            aya = ayd
        end
    end
    return aya
end
function fns.fn87(wy)
    local function axF(wA)
        local attr = wA:GetAttribute("ItemId")
        local Name = wA.Name
        return Name == "Mage Student" or Name == "Mage Student 2" or attr == "Mage Student" or attr == "Mage Student 2"
    end
    for k, v in afW:GetTagged("Enemy") do
        local axG_1 = axF(v) and fns.aO8_71(v)
        if axG_1 then
            return true
        end
    end
    if wy then
        for i, child in wy:GetChildren() do
            local axG_2 = axF(child) and fns.aO8_71(child)
            if axG_2 then
                return true
            end
        end
    end
    return false
end
function fns.fn123()
    local arz_1, arz_2
    local ary_1, ary_2
    ary_1, arz_1 = pcall(function()
        local Registry = require(adU.PlayerScripts.Client.Controllers.Registry)
        local arw = Registry._Entries and Registry._Entries.PlayerData
        local arv_1 = arw
        if arw then
            arw = arv_1.Data
        end
        local arv_2 = arw
        if arw then
            arw = arv_2.PermanentItems
        end
        local arv_3 = arw
        if typeof(arv_3) == "table" then
            return table.find(arv_3, "ExtraLoot") ~= nil
        end
        return nil
    end)
    if ary_1 and arz_1 ~= nil then
        return arz_1
    end
    if fns.aO8_76 == nil then
        ary_2, arz_2 = pcall(function()
            return aO8_128:UserOwnsGamePassAsync(adU.UserId, adK)
        end)
        if ary_2 then
            fns.aO8_76 = arz_2 == true
        end
    end
    return fns.aO8_76 == true
end
function fns.fn135()
    local aqO_1, aqO_3
    local aqN_1, aqN_5
    local aqL = fns.aO8_58()
    if not aqL then
        fns.aO8_13("Farm", "No character")
        fns.aO8_9("farm")
        fns.aO8_37()
        aO8_122.enemy = nil
        return
    end
    local aqM = fns.aO8_16(aqL.Position)
    aqO_1, aqN_1 = fns.aO8_80()
    if fns.aO8_66() then
        aqO_1 = nil
        aqN_1 = false
    end
    local aqP = aqO_1 and afk(aqO_1)
    local aqP_6
    if aqN_1 and aqP then
        local Magnitude = (aqL.Position - aqP).Magnitude
        local aqR_1 = Magnitude > 50 and aO8_108() and (aqL.Position - aO8_108()).Magnitude < 100
        local aqR_2 = not aqR_1
        if aqR_2 ~= false then
            aqR_2 = Magnitude > 8
        end
        if aqR_2 then
            aqM = nil
        end
    end
    if not aqM then
        local aqP_3 = nil
        local aqR_3 = Vector3.new(0, 6, 0)
        if aqO_1 then
            if aqN_1 then
                if aqP and (aqL.Position - aqP).Magnitude > 8 then
                    aqP_3 = aqP
                    aqR_3 = Vector3.new(0, 1, 0)
                else
                    local aqS_3 = aO8_108() or aqP
                    aqP_3 = aqS_3
                end
            else
                aqP_3 = aqP
            end
        elseif adU:GetAttribute("CurrentDungeon") == "BossRush" then
            local aqW_1 = if not aO8_87() then 1 else 0
            if aqW_1 == 1 then
                aqP_3 = aO8_108()
                aqN_1 = true
            end
        elseif fns.aO8_81:FindFirstChild("Challenge_NPCs") then
            if not fns.aO8_22() then
                aqP_3 = ad6()
                aqN_1 = false
            end
        elseif fns.aO8_66() then
            if not afx() then
                aqP_3 = aO8_114()
                aqN_1 = true
            end
        end
        if aqP_3 then
            fns.aO8_37()
            aO8_122.enemy = nil
            aO8_123(aqP_3 + aqR_3, "farm", aqP_3, 90)
            local aqQ_1 = (aqL.Position - aqP_3).Magnitude <= 22
            if aqN_1 then
                local aqP_4 = aqQ_1 and "Waiting boss"
                local aqW_2 = if aqP_4 then 1 else 0
                local aqU_1 = 3896 * aqW_2 + 3710 * (1 - aqW_2)
                local aqV_1 = 3040 * aqW_2 + 3359 * (1 - aqW_2)
                if not ((aqU_1 * 3905 + aqV_1 * 3507 + aqU_1 * aqV_1) % 16777213 == 4164574) then
                    aqP_4 = "Boss room"
                end
                fns.aO8_13("Farm", aqP_4)
            elseif aqO_1 then
                local aqN_3 = aqQ_1 and "Wait R" .. tostring(aqO_1)
                local aqP_5 = aqN_3
                local aqW_3 = if aqP_5 then 1 else 0
                local aqU_2 = 1345 * aqW_3 + 1550 * (1 - aqW_3)
                local aqV_2 = 698 * aqW_3 + 1067 * (1 - aqW_3)
                if not ((aqU_2 * 361 + aqV_2 * 1909 + aqU_2 * aqV_2) % 16777213 == 2756837) then
                    aqP_5 = "Zone R" .. tostring(aqO_1)
                end
                fns.aO8_13("Farm", aqP_5)
            else
                local aqO_2 = aqQ_1 and "Waiting wave" or "Wave hold"
                fns.aO8_13("Farm", aqO_2)
            end
            return
        end
        fns.aO8_9("farm")
        fns.aO8_37()
        fns.aO8_13("Farm", "Waiting")
        return
    end
    aqP_6, aqN_5, aqO_3 = aO8_130(aqM)
    if not aqP_6 or aqP_6 ~= aqP_6 then
        fns.aO8_9("farm")
        fns.aO8_37()
        fns.aO8_13("Farm", "Waiting")
        return
    end
    local aqQ_3 = aO8_103("FarmMode", "Behind")
    if aqQ_3 ~= "Overhead" then
        aqP_6 = aem(aqP_6, aqM)
    end
    aO8_123(aqP_6, "farm", aqN_5, aqO_3)
    local aqN_6 = aO8_134() and 14
    local aqO_4 = aqN_6
    local aq1 = if aqO_4 then 1 else 0
    local aq_ = 3865 * aq1 + 3136 * (1 - aq1)
    local aq0 = 994 * aq1 + 958 * (1 - aq1)
    if not ((aq_ * 3250 + aq0 * 3782 + aq_ * aq0) % 16777213 == 3385155) then
        aqO_4 = 6
    end
    local aqO_5 = (aqL.Position - aqP_6).Magnitude <= aqO_4
    local aqL_1 = aej(aqM)
    local aqM_1 = fns.aO8_80()
    local aqN_8 = aqQ_3
    if aO8_134() then
        aqN_8 = aqQ_3 .. " (Ranged)"
    end
    if typeof(aqM_1) == "number" then
        aqN_8 = string.format("%s Z%s", aqN_8, tostring(aqM_1))
    elseif aqL_1 < math.huge then
        aqN_8 = string.format("%s R%s", aqN_8, tostring(aqL_1))
    end
    local aqM_2 = aqO_5 and aqN_8 or "Approaching"
    fns.aO8_13("Farm", aqM_2)
end
function fns.fn144()
    local aAe_1
    local aAd_1
    local aAc = {}
    aAd_1, aAe_1 = pcall(function()
        return require(aO8_129.Classes.Class_Data)
    end)
    local aAf = aAd_1 and typeof(aAe_1) == "table" and typeof(aAe_1.GetSummonableClassesByRarity) == "function"
    if aAf then
        for i, v in ipairs({ "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Celestial", "Exotic" }) do
            local aAd_2 = aAe_1.GetSummonableClassesByRarity(v)
            if typeof(aAd_2) == "table" then
                for i, v in ipairs(aAd_2) do
                    table.insert(aAc, v)
                end
            end
        end
    end
    if #aAc == 0 then
        aAc = { "Ronin", "Witch Gunner" }
    end
    return aAc
end
function fns.fn162()
    local atW_1
    local atV_1
    local at_ = if not aez("AutoAssignPoint") then 1 else 0
    if at_ == 1 then
        if fns.aO8_68.Point ~= "Idle" then
            fns.aO8_13("Point", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.point < 1.5 then
        return
    end
    local atS = fns.aO8_35()
    local atT = atS and tonumber(atS.UnspentSkillPoints)
    local atS_1 = atT or 0
    if atS_1 < 1 then
        fns.aO8_13("Point", "None")
        return
    end
    local atS_2 = aO8_124()
    if not atS_2 then
        fns.aO8_13("Point", "Lobby only")
        return
    end
    fns.aO8_42.point = os.clock()
    local atU = aO8_103("AssignStat", "STR")
    atV_1, atW_1 = aO8_132(atS_2, "AllocatePoints", atU, atS_1)
    if atV_1 and atW_1 then
        fns.aO8_13("Point", string.format("+%d %s", atS_1, atU))
    else
        fns.aO8_13("Point", "Failed")
    end
end
function fns.fn167()
    if not aez("AutoClaimQuests") then
        if fns.aO8_68.Quest ~= "Idle" then
            fns.aO8_13("Quest", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.quest < 1.25 then
        return
    end
    local aBb = af7()
    if not aBb then
        fns.aO8_13("Quest", "Lobby only")
        return
    end
    fns.aO8_42.quest = os.clock()
    local aBc = fns.aO8_35()
    local aBd = aBc and aBc.Quests
    if typeof(aBd) ~= "table" then
        fns.aO8_13("Quest", "No data")
        return
    end
    local aBd_1 = 0
    for i, v in ipairs({ "Daily", "Weekly" }) do
        local aBe = aBd[v]
        local aBf = aBe and aBe.Active
        local aBf_3
        if typeof(aBf) == "table" then
            local aBu = #aBf
            local aBt = -1
            while false and aBu <= 1 or true and aBu >= 1 do
                local aBv = aBu
                local aBf_2 = aBf[aBv]
                local aBg = typeof(aBf_2) == "table" and aBf_2.Completed and not aBf_2.Claimed
                local aBg_1
                if aBg then
                    aBf_3, aBg_1 = aO8_132(aBb, "ClaimQuest", v, aBv)
                    if aBf_3 and aBg_1 then
                        aBd_1 += 1
                    end
                end
                aBu += aBt
            end
        end
    end
    local aBc_2 = aBd_1 > 0 and "Claimed " .. aBd_1
    local aBz = if aBc_2 then 1 else 0
    local aBx = 3 * aBz + 3065 * (1 - aBz)
    local aBy = 875 * aBz + 2058 * (1 - aBz)
    if not ((aBx * 3978 + aBy * 1076 + aBx * aBy) % 16777213 == 956059) then
        aBc_2 = "None"
    end
    fns.aO8_13("Quest", aBc_2)
end
function fns.fn175()
    local Raid_NPCs = fns.aO8_81:FindFirstChild("Raid_NPCs")
    if not Raid_NPCs then
        return nil
    end
    local alj
    for i, child in Raid_NPCs:GetChildren() do
        local ali_1 = aO8_110(child)
        if ali_1 then
            return ali_1.Position
        end
        local ali_2 = child:FindFirstChild("HumanoidRootPart") or child.PrimaryPart
        local alk = ali_2
        if ali_2 then
            ali_2 = alk:IsA("BasePart")
        end
        if ali_2 then
            local Position = alk.Position
            local alk_1 = Position == Position and math.abs(Position.Y) < 1000000
            if alk_1 then
                alj = Position
            end
        end
    end
    return alj
end
function fns.fn314(be, bf)
    local ahD = Options[be]
    local ahE = ahD and ahD.Value
    local ahE_1 = ahE ~= ""
    local ahF = type(ahE) == "string" and ahE_1
    if ahF then
        return ahE
    end
    return bf
end
function fns.fn348()
    local avE_1
    local avD_1, avD_2
    local avB_1
    local avA = Library.FeatureAPI.Unloaded or Library.Unloaded
    local avA_2, avA_5
    if avA then
        return
    end
    if not aez("AutoMagicUnleashed") then
        fns.aO8_13("MagicUnleashed", "Idle")
        return
    end
    local avA_1 = adU:GetAttribute("InDungeon") == true or afY() ~= nil
    if avA_1 then
        fns.aO8_13("MagicUnleashed", "In run")
        return
    end
    if os.clock() < Library.FeatureAPI.nextMagicJoin then
        return
    end
    Library.FeatureAPI.nextMagicJoin = os.clock() + 5
    avA_2, avB_1 = pcall(function()
        return require(aO8_129.GameInfo.RaidData)
    end)
    if not avA_2 then
        fns.aO8_13("MagicUnleashed", "Raid data unavailable")
        return
    end
    local avA_3 = aO8_103("MagicUnleashedDifficulty", "Normal")
    local avC = "The First Test"
    local avC_1
    local avM = if not avB_1.GetDifficulty("The First Test", avA_3) then 1 else 0
    if avM == 1 then
        fns.aO8_13("MagicUnleashed", "Unavailable difficulty")
        return
    end
    avD_1, avE_1 = avB_1.CanEnter({ Data = fns.aO8_35() }, avC, avA_3)
    if not avD_1 then
        local avB_2 = avE_1 or "Locked"
        fns.aO8_13("MagicUnleashed", avB_2)
        return
    end
    local avB_3 = fns.aO8_1()
    if not avB_3 then
        fns.aO8_13("MagicUnleashed", "Lobby only")
        return
    end
    for k, v in {
        { "RequestSelectMode", "Raids" },
        { "RequestSelectRaid", avC },
        { "RequestSelectRaidDifficulty", avA_3 },
        { "RequestEnter" }
    } do
        local avA_4 = Library.FeatureAPI.Unloaded or Library.Unloaded or not aez("AutoMagicUnleashed")
        if avA_4 then
            return
        end
        avA_5, avC_1, avD_2 = aO8_132(avB_3, v[1], table.unpack(v, 2))
        if not avA_5 or avC_1 == false then
            local avA_6 = typeof(avD_2) == "string" and avD_2
            local avC_2 = avA_6 or "Queue request failed"
            fns.aO8_13("MagicUnleashed", avC_2)
            return
        end
    end
    Library.FeatureAPI.nextMagicJoin = os.clock() + 20
    fns.aO8_13("MagicUnleashed", "Joining")
end
function fns.fn393()
    local art_1
    local ars_1
    if not Knit then
        return nil
    end
    ars_1, art_1 = pcall(function()
        return Knit.GetController("ChestSelectionController")
    end)
    if ars_1 then
        return art_1
    end
    return nil
end
function fns.fn428(cC)
    local aiz_4
    local CurrentCamera
    if typeof(cC) == "Vector3" then
        local aiy_1 = fns.aO8_58()
        if aiy_1 then
            local aiz_1 = Vector3.new(cC.X - aiy_1.Position.X, 0, cC.Z - aiy_1.Position.Z)
            if aiz_1.Magnitude > 0.05 then
                return aiz_1.Unit
            end
            local CurrentCamera2 = fns.aO8_81.CurrentCamera
            if CurrentCamera then
                local aiz_2 = Vector3.new(CurrentCamera2.CFrame.LookVector.X, 0, CurrentCamera2.CFrame.LookVector.Z)
                if aiz_4.Magnitude > 0.05 then
                    return aiz_2.Unit
                end
                return Vector3.zero
            end
            return Vector3.zero
        end
        local CurrentCamera2 = fns.aO8_81.CurrentCamera
        if CurrentCamera then
            local aiz_3 = Vector3.new(CurrentCamera2.CFrame.LookVector.X, 0, CurrentCamera2.CFrame.LookVector.Z)
            if aiz_4.Magnitude > 0.05 then
                return aiz_3.Unit
            end
            return Vector3.zero
        end
        return Vector3.zero
    end
    CurrentCamera = fns.aO8_81.CurrentCamera
    if CurrentCamera then
        aiz_4 = Vector3.new(CurrentCamera.CFrame.LookVector.X, 0, CurrentCamera.CFrame.LookVector.Z)
        if aiz_4.Magnitude > 0.05 then
            return aiz_4.Unit
        end
        return Vector3.zero
    end
    return Vector3.zero
end
function fns.fn437(bl)
    local ahK = Options[bl]
    local ahL = ahK and ahK.Value
    if typeof(ahL) ~= "table" then
        return {}
    end
    local ahL_1 = {}
    for k, v in ahL do
        if v == true then
            ahL_1[k] = true
        else
            local ahK_2 = typeof(k) == "number" and typeof(v) == "string"
            if ahK_2 then
                ahL_1[v] = true
            end
        end
    end
    return ahL_1
end
function fns.fn450(dk, dl, dm)
    if typeof(dl) ~= "Vector3" then
        return CFrame.new(dk)
    end
    local aiX = Vector3.new(dl.X - dk.X, 0, dl.Z - dk.Z)
    if aiX.Magnitude < 0.08 then
        if typeof(dm) == "CFrame" then
            local aiW_1 = Vector3.new(dm.LookVector.X, 0, dm.LookVector.Z)
            if aiW_1.Magnitude > 0.05 then
                return CFrame.lookAt(dk, dk + aiW_1.Unit, Vector3.yAxis)
            end
            return CFrame.new(dk)
        end
        return CFrame.new(dk)
    end
    return CFrame.lookAt(dk, dk + aiX.Unit, Vector3.yAxis)
end
function fns.fn471(dw, dy, dA, dB, dC)
    local ai2 = dB
    local ai8 = if ai2 then 1 else 0
    local ai6 = 912 * ai8 + 768 * (1 - ai8)
    local ai7 = 2752 * ai8 + 3708 * (1 - ai8)
    if not ((ai6 * 3084 + ai7 * 2309 + ai6 * ai7) % 16777213 == 11676800) then
        ai2 = 14
    end
    local ai3 = math.clamp(dA * ai2, 0, 1)
    local ai2_1 = dC
    local ai8_1 = if ai2_1 then 1 else 0
    local ai6_1 = 4010 * ai8_1 + 3975 * (1 - ai8_1)
    local ai7_1 = 437 * ai8_1 + 1703 * (1 - ai8_1)
    if not ((ai6_1 * 3207 + ai7_1 * 1982 + ai6_1 * ai7_1) % 16777213 == 15478574) then
        ai2_1 = 16
    end
    local ai4 = math.clamp(dA * ai2_1, 0, 1)
    if aO8_82.pos then
        aO8_82.pos = aO8_82.pos:Lerp(dw, ai3)
        if (aO8_82.pos - dw).Magnitude < 0.04 then
            aO8_82.pos = dw
        end
    else
        aO8_82.pos = dw
    end
    if dy then
        if aO8_82.look then
            aO8_82.look = aO8_82.look:Lerp(dy, ai4)
            if (aO8_82.look - dy).Magnitude < 0.04 then
                aO8_82.look = dy
            end
        else
            aO8_82.look = dy
        end
    end
    return aO8_82.pos, aO8_82.look
end
function fns.fn481(iE)
    if aO8_104 ~= iE then
        aO8_104 = iE
        fns.aO8_73 = aO8_84()
    end
end
function fns.fn508()
    if not aez("AutoReturnLobby") then
        if fns.aO8_68.Return ~= "Idle" then
            fns.aO8_13("Return", "Idle")
        end
        return false
    elseif aez("AutoReplay") then
        return false
    elseif os.clock() - fns.aO8_42.returnLobby < 1.5 then
        return fns.aO8_19()
    else
        local aDb = fns.aO8_27()
        local aDc = aDb and aDb:FindFirstChild("Dungeon_Container")
        local aDb_1 = false
        local aDd = aDc
        if aDc then
            aDc = aDd:FindFirstChild("Completion_Info")
        end
        local aDe = aDc
        if aDc then
            aDc = adl(aDe)
        end
        if aDc then
            local Content = aDe:FindFirstChild("Content")
            local aDf_1 = Content and Content:FindFirstChild("ActionButtons")
            local aDc_2 = aDf_1
            if aDf_1 then
                aDf_1 = aDc_2:FindFirstChild("ReturnButton")
            end
            local aDc_3 = aDf_1
            if fns.aO8_29(aDc_3) then
                aDb_1 = true
            end
        end
        local aDc_4 = aDd and aDd:FindFirstChild("Spectate_Info")
        local aDd_1 = not aDb_1
        if aDd_1 ~= false then
            aDd_1 = aDc_4
        end
        if aDd_1 then
            aDd_1 = adl(aDc_4)
        end
        if aDd_1 then
            local Return = aDc_4:FindFirstChild("Return")
            if fns.aO8_29(Return) then
                aDb_1 = true
            end
        end
        if not aDb_1 then
            local aDc_6 = aDe and adl(aDe)
            local aDd_2 = aDc_6
            if not aDd_2 then
                local aDc_7 = aDc_4 and adl(aDc_4)
                aDd_2 = aDc_7
            end
            if aDd_2 then
                local aDc_9 = (aeU("BossRushService", "RequestReturn"))
                local aDj = if aDc_9 then 1 else 0
                local aDh = 3103 * aDj + 1455 * (1 - aDj)
                local aDi = 1871 * aDj + 1192 * (1 - aDj)
                if not ((aDh * 1083 + aDi * 271 + aDh * aDi) % 16777213 == 9673303) then
                    aDc_9 = aeU("ChallengeRunService", "RequestReturn")
                end
                local aDj_1 = if aDc_9 then 1 else 0
                local aDh_1 = 903 * aDj_1 + 1101 * (1 - aDj_1)
                local aDi_1 = 2736 * aDj_1 + 471 * (1 - aDj_1)
                if not ((aDh_1 * 2237 + aDi_1 * 2520 + aDh_1 * aDi_1) % 16777213 == 11385339) then
                    aDc_9 = aeU("RaidRunService", "RequestReturn")
                end
                if not aDc_9 then
                    aDc_9 = aeU("DungeonRunService", "RequestReturn")
                end
                if aDc_9 then
                    aDb_1 = true
                end
            end
        end
        if aDb_1 then
            fns.aO8_42.returnLobby = os.clock()
            fns.aO8_13("Return", "Returning")
            return true
        end
        local aDb_2 = fns.aO8_68.Return ~= "Idle" and not fns.aO8_19()
        if aDb_2 then
            fns.aO8_13("Return", "Idle")
        end
        return false
    end
end
function fns.fn539()
    adH.active = false
    adH.returnPos = nil
    adH.untilAt = 0
    adH.seenCrystal = false
    adH.startedAt = 0
    if fns.aO8_68.MapNuke ~= "Idle" then
        fns.aO8_13("MapNuke", "Idle")
    end
end
function fns.fn540(cu, cv)
    local ait_3
    local ais = fns.aO8_58()
    if ais then
        local ait_1 = Vector3.new(ais.Position.X - cu.X, 0, ais.Position.Z - cu.Z)
        if ait_1.Magnitude > 0.15 then
            return ait_1.Unit
        elseif cv then
            local LookVector = cv.CFrame.LookVector
            local ait_2 = Vector3.new(LookVector.X, 0, LookVector.Z)
            if ait_3.Magnitude > 0.05 then
                return ait_2.Unit
            end
            return Vector3.new(0, 0, 1)
        else
            return Vector3.new(0, 0, 1)
        end
    elseif cv then
        local LookVector = cv.CFrame.LookVector
        ait_3 = Vector3.new(LookVector.X, 0, LookVector.Z)
        if ait_3.Magnitude > 0.05 then
            return ait_3.Unit
        end
        return Vector3.new(0, 0, 1)
    else
        return Vector3.new(0, 0, 1)
    end
end
function fns.fn553(hy)
    local ama_2
    local attr = hy:GetAttribute("RoomIndex")
    local al8_4, al8_5, al8_6
    if typeof(attr) == "number" then
        return attr
    end
    local al8_1 = (hy:FindFirstChild("HumanoidRootPart"))
    local ame = if al8_1 then 1 else 0
    local amc = 3332 * ame + 2801 * (1 - ame)
    local amd = 1314 * ame + 786 * (1 - ame)
    if not ((amc * 1872 + amd * 479 + amc * amd) % 16777213 == 11245158) then
        al8_1 = hy.PrimaryPart
    end
    local al9 = al8_1
    local al9_1, al9_2
    if al8_1 then
        al8_1 = al9:IsA("BasePart")
    end
    if al8_1 then
        local al8_2 = aO8_102(al9.Position)
        if al8_2 then
            return al8_2
        end
        local al8_3 = hy:GetAttribute("IsBoss") == true or hy:GetAttribute("IsMiniBoss") == true
        if al8_5 then
            return 9999
        end
        al9_1, al8_4 = fns.aO8_80()
        if ama_2 then
            return al9_1
        end
        return math.huge
    end
    al8_5 = hy:GetAttribute("IsBoss") == true or hy:GetAttribute("IsMiniBoss") == true
    if al8_5 then
        return 9999
    end
    al9_2, al8_6 = fns.aO8_80()
    ama_2 = al8_6 and al9_2
    if ama_2 then
        return al9_2
    end
    return math.huge
end
function fns.fn554()
    local Challenge_NPCs = fns.aO8_81:FindFirstChild("Challenge_NPCs")
    if not Challenge_NPCs then
        return false
    end
    for i, child in Challenge_NPCs:GetChildren() do
        if aO8_110(child) then
            return true
        end
    end
    return false
end
function fns.fn582()
    local asS = fns.aO8_27()
    local asT = asS and asS:FindFirstChild("Dungeon_Container")
    local asS_1 = asT
    if asT then
        asT = asS_1:FindFirstChild("Completion_Info")
    end
    local asS_2 = asT
    local asT_1 = asS_2 ~= nil and adl(asS_2)
    return asT_1
end
function fns.fn675()
    if ad7(fns.aO8_69.state) then
        return fns.aO8_69.state
    end
    fns.aO8_69.state = nil
    local alu = os.clock()
    if alu - fns.aO8_69.at < 0.5 then
        return nil
    end
    fns.aO8_69.at = alu
    local alv
    if getgc then
        for i, v in ipairs(getgc(true)) do
            if ad7(v) then
                alv = v
                break
            end
        end
    end
    fns.aO8_69.state = alv
    return alv
end
function fns.fn676()
    local aAR_1
    local aAQ_1
    local ShopItem = Options.ShopItem
    if not ShopItem or not ShopItem.SetValues then
        return
    end
    local aAN_1 = {}
    local aAO = {}
    local aAP = fns.aO8_18()
    if aAP then
        aAQ_1, aAR_1 = aO8_132(aAP, "GetStockInfo")
        local aAP_1 = aAQ_1 and typeof(aAR_1) == "table"
        if aAP_1 then
            for k, v in pairs(aAR_1) do
                local aAP_2 = typeof(v) == "number" and v > 0
                if aAP_2 then
                    local aAP_3 = tostring(k)
                    if not aAN_1[aAP_3] then
                        aAN_1[aAP_3] = true
                        table.insert(aAO, aAP_3)
                        if not fns.aO8_33.ShopItemIdMap[aAP_3] then
                            fns.aO8_33.ShopItemIdMap[aAP_3] = aAP_3
                        end
                    end
                end
            end
        end
    end
    if #aAO == 0 then
        local aAN_2 = fns.aO8_11()
        aAO = aAN_2
    end
    table.sort(aAO)
    ShopItem:SetValues(aAO)
    Library:Notify("Shop stock refreshed")
end
function fns.fn729()
    for k, v in afW:GetTagged("Enemy") do
        if aO8_110(v) then
            return true
        end
    end
    return false
end
function fns.fn741()
    return afj()
end
function fns.fn746(wn)
    for k, v in afW:GetTagged("Enemy") do
        local axm_1 = aeX(v) and fns.aO8_71(v)
        if axm_1 then
            return true
        end
    end
    if wn then
        for i, child in wn:GetChildren() do
            local axm_2 = aeX(child) and fns.aO8_71(child)
            if axm_2 then
                return true
            end
        end
    end
    return false
end
function fns.fn757(dW)
    if not dW then
        return false
    end
    local attr = dW:GetAttribute("ItemId")
    if attr == "Damage_Crystal" or attr == "Damage Crystal" then
        return true
    end
    local Name = dW.Name
    return Name == "Damage_Crystal" or Name == "Damage Crystal"
end
function fns.fn764()
    if aO8_117.active then
        fns.aO8_37()
    end
    aO8_117.active = false
    aO8_117.goal = nil
    aO8_117.untilAt = 0
    aO8_117.reach = 0
    aO8_117.label = nil
    aO8_117.nextSearch = 0
    aO8_117.heading = nil
    aO8_117.barrage = false
    aO8_117.lastTelegraphAt = 0
    fns.aO8_13("ProfessorDodge", "Idle")
end
function fns.fn785()
    local Character = adU.Character
    local ah3 = Character and Character:FindFirstChild("HumanoidRootPart")
    return ah3
end
function fns.fn813(bT, bU)
    fns.aO8_74[bU] = bT:AddLabel(aO8_121("Idle", aO8_106), true)
end
function fns.fn823()
    local azE_1
    local azD_1
    local azB = {}
    local azC = {}
    azD_1, azE_1 = pcall(function()
        return require(aO8_129.GameInfo.DungeonData)
    end)
    local azF = azD_1 and typeof(azE_1) == "table"
    if azF then
        local DisplayOrder = azE_1.DisplayOrder
        if typeof(DisplayOrder) == "table" then
            for i, v in ipairs(DisplayOrder) do
                local azD_3 = azE_1.Dungeons and azE_1.Dungeons[v]
                local azF_1 = azD_3
                if azD_3 then
                    azD_3 = not azF_1.HideFromSelect
                end
                if azD_3 then
                    local azD_4 = azF_1.Name or v
                    table.insert(azC, azD_4)
                    azB[azD_4] = v
                end
            end
        end
        if typeof(azE_1.Dungeons) == "table" then
            for k, v in pairs(azE_1.Dungeons) do
                if not v.HideFromSelect then
                    local azD_5 = v.Name or k
                    if not azB[azD_5] then
                        table.insert(azC, azD_5)
                        azB[azD_5] = k
                    end
                end
            end
        end
    end
    if #azC == 0 then
        azC = { "Bandits Den" }
        azB["Bandits Den"] = "Bandits Den"
    end
    return azC, azB
end
function fns.fn864(a2, a3)
    if setclipboard then
        setclipboard(a2)
    elseif toclipboard then
        toclipboard(a2)
    end
    Library:Notify(a3)
end
function fns.fn869()
    local awQ = {}
    local SpellTelegraphs = fns.aO8_81:FindFirstChild("SpellTelegraphs")
    local awR_1
    if not SpellTelegraphs then
        return awQ
    end
    for i, child in SpellTelegraphs:GetChildren() do
        if child.Name == "SpellTelegraph" then
            if child:IsA("BasePart") then
                awR_1 = child
            else
                awR_1 = child:FindFirstChildWhichIsA("BasePart")
            end
            local awS = awR_1
            if awS then
                local awR_2 = math.max(awS.Size.Y, awS.Size.Z) * 0.5
                if awR_2 < 4 then
                    awR_2 = aO8_98
                end
                table.insert(awQ, { pos = awS.Position, radius = awR_2 + afl })
            end
        end
    end
    return awQ
end
function fns.fn950()
    local attr = adU:GetAttribute("CurrentDungeon")
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            local aj1 = typeof(attr) ~= "string" or attr == "" or string.find(child.Name, attr, 1, true)
            if aj1 then
                return child
            end
        end
    end
    return nil
end
function fns.fn958()
    local atK_1
    local atJ_1
    if not Knit then
        return nil
    end
    atJ_1, atK_1 = pcall(function()
        return Knit.GetService("StatService")
    end)
    if atJ_1 then
        return atK_1
    end
    return nil
end
function fns.fn965(dg)
    if dg == nil or fns.aO8_48.kind == dg then
        fns.aO8_48.goal = nil
        fns.aO8_48.lookAt = nil
        fns.aO8_48.kind = nil
    end
end
function fns.fn1003(lk, ll)
    local apx_2
    local apw_2
    local apr = fns.aO8_58()
    if not apr then
        return nil
    end
    local aps
    local apt
    for i, child in fns.aO8_81:GetChildren() do
        local Name = child.Name
        local apv = string.find(Name, "Generated", 1, true) or string.find(Name, "Dungeon", 1, true) or string.find(Name, "Challenge", 1, true) or string.find(Name, "BossRush", 1, true)
        local apv_6
        if apv then
            for i, child in child:GetChildren() do
                if child:IsA("Model") then
                    local ChestPrompt = child:FindFirstChild("ChestPrompt", true)
                    local apv_1 = ChestPrompt and ChestPrompt:IsA("ProximityPrompt") and ChestPrompt.Enabled
                    if apv_1 then
                        if aO8_103("AutoCollectChestMode", "Ground Chest") == "Ground Chest" then
                            if not (child:GetAttribute("LockedRoom") == true) then
                                local apv_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                                if apw_2 then
                                    if not apv_6 then
                                        if not not agJ(apw_2.Position, child) then
                                            if not fns.aO8_50(child, apw_2) then
                                                local Magnitude = (apv_2.Position - apr.Position).Magnitude
                                                if apx_2 then
                                                    aps = { model = child, prompt = ChestPrompt, part = apv_2 }
                                                    apt = Magnitude
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            local apv_5 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                            apw_2 = apv_5
                            if apw_2 then
                                apv_6 = lk and ll and (apw_2.Position - lk).Magnitude > ll
                                if not apv_6 then
                                    if not not agJ(apw_2.Position, child) then
                                        if not fns.aO8_50(child, apw_2) then
                                            local Magnitude = (apw_2.Position - apr.Position).Magnitude
                                            apx_2 = not apt or Magnitude < apt
                                            if apx_2 then
                                                aps = { model = child, prompt = ChestPrompt, part = apw_2 }
                                                apt = Magnitude
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return aps
end
function fns.fn1004(hK, hL)
    if hK then
        local attr = hK:GetAttribute("RoomIndex")
        local amg = typeof(attr) == "number" and attr > 0 and attr < 1000
        if amg then
            return attr
        end
        return aO8_102(hL)
    end
    return aO8_102(hL)
end
function fns.worker4()
    local aOt_2, aOt_3
    local aOr_1
    local aOx_3, aOx_5
    local aOv_3, aOv_7, aOv_10
    local aOs_1, aOs_2, aOs_3, aOs_5, aOs_9, aOs_12
    while not Library.Unloaded do
        local aOq = false
        if aez("AutoFarm") then
            aOr_1, aOs_1 = pcall(aO8_107)
            aOq = aOr_1 and aOs_1 == true
        end
        local aOr_2 = false
        if not aOq then
            aOs_2, aOt_2 = pcall(fns.aO8_65)
            aOr_2 = aOs_2 and aOt_2 == true
            if not aOr_2 then
                aOs_3, aOt_3 = pcall(adz)
                aOr_2 = aOs_3 and aOt_3 == true
            end
        end
        local aOs_4 = not aOq
        local aOt_4 = false
        local aOu_4 = false
        if aOs_4 ~= false then
            aOs_4 = not aOr_2
        end
        if aOs_4 then
            aOs_4 = aez("AutoSkullTotem")
        end
        if aOs_4 then
            aOs_5, aOv_3 = pcall(afU)
            aOu_4 = aOs_5 and aOv_3 == true
        else
            local aOs_6 = not aOq
            if aOs_6 ~= false then
                aOs_6 = fns.aO8_68.Totem ~= "Idle"
            end
            if aOs_6 then
                aOs_6 = not aez("AutoSkullTotem")
            end
            if aOs_6 then
                fns.aO8_13("Totem", "Idle")
                fns.aO8_9("totem")
            end
        end
        local aOs_7 = false
        if aez("AutoAltarBlessing") then
            local aOv_4 = aeL()
            local aOw_2 = aOv_4 and aOv_4._active and typeof(aOv_4._candidates) == "table"
            aOs_7 = aOw_2 or false
        end
        local aOv_6 = aOs_7
        local aOw_3 = false
        if not aOv_6 then
            local aOx_2 = not aOq
            if aOx_2 ~= false then
                aOx_2 = not aOr_2
            end
            if aOx_2 then
                aOx_2 = not aOu_4
            end
            if aOx_2 then
                aOx_2 = aez("AutoAltarBlessing")
            end
            aOv_6 = aOx_2
        end
        if aOv_6 then
            aOv_7, aOx_3 = pcall(aO8_131)
            aOw_3 = aOv_7 and aOx_3 == true
        else
            local aOv_8 = not aOq
            if aOv_8 ~= false then
                aOv_8 = fns.aO8_68.Altar ~= "Idle"
            end
            if aOv_8 then
                aOv_8 = not aez("AutoAltarBlessing")
            end
            if aOv_8 then
                fns.aO8_13("Altar", "Idle")
                fns.aO8_9("altar")
            end
        end
        if aOw_3 or aOs_7 then
            if fns.aO8_68.Chest ~= "Idle" then
                fns.aO8_13("Chest", "Idle")
                fns.aO8_9("chest")
            end
            aOt_4 = false
        else
            local aOs_8 = not aOq
            if aOs_8 ~= false then
                aOs_8 = not aOr_2
            end
            if aOs_8 then
                aOs_8 = not aOu_4
            end
            if aOs_8 then
                aOs_8 = aez("AutoCollectChest")
            end
            if aOs_8 then
                aOs_9, aOv_10 = pcall(fns.aO8_8)
                aOt_4 = aOs_9 and aOv_10 == true
            else
                local aOs_10 = not aOq
                if aOs_10 ~= false then
                    aOs_10 = fns.aO8_68.Chest ~= "Idle"
                end
                if aOs_10 then
                    aOs_10 = not aez("AutoCollectChest")
                end
                if aOs_10 then
                    fns.aO8_13("Chest", "Idle")
                    fns.aO8_9("chest")
                end
            end
        end
        local aOs_11 = not aOq
        local aOv_11 = false
        if aOs_11 ~= false then
            aOs_11 = not aOr_2
        end
        if aOs_11 then
            aOs_11 = not aOu_4
        end
        if aOs_11 then
            aOs_11 = not aOt_4
        end
        if aOs_11 then
            aOs_11 = not aOw_3
        end
        if aOs_11 then
            aOs_11 = aez("AutoRefillPotion")
        end
        if aOs_11 then
            aOs_12, aOx_5 = pcall(fns.aO8_79)
            aOv_11 = aOs_12 and aOx_5 == true
        else
            local aOs_13 = not aOq
            if aOs_13 ~= false then
                aOs_13 = fns.aO8_68.Refill ~= "Idle"
            end
            if aOs_13 then
                aOs_13 = not aez("AutoRefillPotion")
            end
            if aOs_13 then
                fns.aO8_13("Refill", "Idle")
                fns.aO8_9("refill")
            end
        end
        local aOs_14 = Library.FeatureAPI.IsProfessorDodging and Library.FeatureAPI.IsProfessorDodging()
        if aOq or aOr_2 or aOu_4 or aOw_3 or aOv_11 then
            fns.aO8_9("farm")
            aO8_122.enemy = nil
        elseif aOs_14 then
            fns.aO8_9("farm")
        elseif aOt_4 then
            aO8_122.enemy = nil
            aO8_122.untilAt = 0
            fns.aO8_37()
            local aOs_17 = aez("AutoFarm") and fns.aO8_68.Farm ~= "Chest priority"
            if aOs_17 then
                fns.aO8_13("Farm", "Chest priority")
            end
        elseif aez("AutoFarm") then
            pcall(fns.aO8_77)
        else
            if fns.aO8_68.Farm ~= "Idle" then
                fns.aO8_13("Farm", "Idle")
            end
            if fns.aO8_48.kind == "farm" then
                fns.aO8_9("farm")
            end
            aO8_122.enemy = nil
        end
        local aOs_18 = not aOr_2
        local aOy_6 = not aOq
        if aOy_6 ~= false then
            aOy_6 = aOs_18
        end
        if aOy_6 and not aOu_4 and not aOt_4 and not aOw_3 and not aOv_11 and not aOs_14 then
            pcall(aO8_90)
            pcall(agv)
            pcall(agw)
        end
        pcall(fns.aO8_55)
        pcall(fns.aO8_78)
        pcall(adj)
        pcall(adL)
        pcall(fns.aO8_2)
        pcall(fns.aO8_39)
        pcall(fns.aO8_3)
        pcall(aeI)
        pcall(aeJ)
        pcall(fns.aO8_72)
        pcall(aO8_95)
        local aOq_6 = aez("AutoFarm") or aez("AutoCollectChest") or aez("AutoSkullTotem") or aez("AutoAltarBlessing") or aez("AutoRefillPotion") or aez("AutoM1") or aez("AutoSkill") or aez("AutoUsePotion") or aez("AutoReplay") or aez("AutoReturnLobby") or aez("AutoCreateDungeon") or aez("AutoClaimQuests") or aez("AutoSell") or aez("AutoBuyShop") or aez("AutoSpin") or aez("AutoChallenge") or aez("AutoBossRush") or aez("AutoMagicUnleashed")
        if not aOq_6 then
            if fns.aO8_48.kind then
                fns.aO8_9()
            end
        end
        task.wait(0.05)
    end
end
function fns.fn1035(E7, E8)
    local aDS = fns.aO8_58()
    if not aDS then
        return nil
    end
    local aDT
    local aDU
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            for i, child in child:GetChildren() do
                local aDV = child.Name == E7 and child:IsA("Model") and not E8[child]
                if aDV then
                    local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if ProximityPrompt and ProximityPrompt.Enabled then
                        local aDW_1 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                        if aDW_1 then
                            local Magnitude = (aDW_1.Position - aDS.Position).Magnitude
                            if not aDU or Magnitude < aDU then
                                aDT = { model = child, prompt = ProximityPrompt, part = aDW_1 }
                                aDU = Magnitude
                            end
                        end
                    end
                end
            end
        end
    end
    return aDT
end
function fns.fn1065(aT, aU, aV)
    return string.format("<b>%s</b> %s %s", aT, aO8_121("-", "#5a6070"), aO8_121(aU, aV))
end
function fns.worker2()
    while true do
        if not Library.FeatureAPI.Unloaded and not Library.Unloaded then
            local azz_1 = pcall(Library.FeatureAPI.AutoJoinMagicUnleashed)
            if not azz_1 then
                fns.aO8_13("MagicUnleashed", "Queue unavailable")
            end
            task.wait(1)
            continue
        end
        break
    end
end
function fns.fn1119()
    local ayZ = aO8_117.barrage and os.clock() < aO8_117.untilAt
    if ayZ then
        return true
    end
    local Raid_NPCs = fns.aO8_81:FindFirstChild("Raid_NPCs")
    local ay_ = Raid_NPCs and Raid_NPCs:FindFirstChild(aO8_118)
    return af9(Raid_NPCs, ay_)
end
function fns.fn1151()
    local aCu_1
    if not aez("AutoBuyShop") then
        if fns.aO8_68.Shop ~= "Idle" then
            fns.aO8_13("Shop", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.shop < 1.25 then
        return
    end
    local aCq = fns.aO8_18()
    if not aCq then
        fns.aO8_13("Shop", "Lobby only")
        return
    end
    local aCr = fns.aO8_53("ShopItem")
    local aCs = {}
    local aCs_1
    for k in aCr do
        table.insert(aCs, k)
    end
    if #aCs == 0 then
        fns.aO8_13("Shop", "None selected")
        return
    end
    fns.aO8_42.shop = os.clock()
    local aCr_1 = 0
    local aCt
    for i, v in ipairs(aCs) do
        aCs_1, aCu_1 = agl(aCq, v)
        if aCs_1 then
            aCr_1 += 1
        else
            aCt = aCu_1
        end
    end
    if aCr_1 > 0 then
        fns.aO8_13("Shop", "Bought " .. tostring(aCr_1))
    else
        local aCq_1 = typeof(aCt) == "string" and aCt
        local aCr_2 = aCq_1 or "Failed"
        fns.aO8_13("Shop", aCr_2)
    end
end
function fns.fn1160()
    local atE_1
    local atD_1
    if not Knit then
        return nil
    end
    atD_1, atE_1 = pcall(function()
        return Knit.GetService("QuestService")
    end)
    if atD_1 then
        return atE_1
    end
    return nil
end
function fns.fn1165(ya, yb, yc, yd, ye, yf, yg, yh)
    aO8_117.barrage = true
    aO8_117.label = "Barrage"
    if yh then
        aO8_117.untilAt = ye + aO8_93
    end
    if #yf > 0 then
        aO8_117.lastTelegraphAt = ye
    end
    local ayN = #yf > 0 and fns.aO8_36(yc.Position, yf) > 0
    local ayO = yh
    local ayP = ayN
    if ayO then
        local ayT = if ayN then 1 else 0
        local ayR = 633 * ayT + 341 * (1 - ayT)
        local ayS = 3629 * ayT + 2473 * (1 - ayT)
        if not ((ayR * 3904 + ayS * 405 + ayR * ayS) % 16777213 == 6238134) then
            ayN = ye >= aO8_117.nextSearch
        end
        if not ayN then
            ayN = not aO8_117.goal
        end
        ayO = ayN
    end
    if ayO then
        aO8_117.nextSearch = ye + 0.08
        local ayN_1 = fns.aO8_61(ya, yb, yc, yd, yf)
        if ayN_1 then
            aO8_117.goal = ayN_1
        elseif not aO8_117.goal then
            aO8_117.goal = yc.Position
        end
    end
    local ayN_2 = aO8_117.goal or yc.Position
    fns.aO8_54(yc, yb, ayN_2)
    if yg then
        local ayO_2 = ayP and "Barrage (immune)" or "Barrage"
        fns.aO8_13("ProfessorDodge", ayO_2)
    else
        local ayO_3 = ayP and "Barrage (moving)" or "Barrage"
        fns.aO8_13("ProfessorDodge", ayO_3)
    end
    return true
end
function fns.fn1166()
    if not aez("AutoM1") then
        if fns.aO8_68.M1 ~= "Idle" then
            fns.aO8_13("M1", "Idle")
        end
        return
    end
    local aq5 = fns.aO8_14("M1Delay", 0.12)
    if os.clock() - fns.aO8_42.m1 < aq5 then
        return
    end
    local aq5_1 = fns.aO8_58()
    if not aq5_1 then
        fns.aO8_13("M1", "No character")
        return
    end
    local aq6 = aez("AutoFarm") and aO8_122.enemy
    local aq7 = aq6 or fns.aO8_16(aq5_1.Position)
    local aq6_1 = aq7 and aO8_110(aq7)
    local aq5_3 = aq6_1
    if aq6_1 then
        aq6_1 = aq5_3.Position
    end
    local aq5_4 = aq6_1
    if agx(aq5_4) then
        fns.aO8_42.m1 = os.clock()
        fns.aO8_13("M1", "Attacking")
    else
        fns.aO8_13("M1", "Blocked")
    end
end
function fns.fn1224()
    aO8_82.pos = nil
    aO8_82.look = nil
    aO8_82.yaw = nil
end
function fns.fn1227(aQ, aR)
    return string.format('<font color="%s">%s</font>', aR, aQ)
end
function fns.fn1317(v6, v7)
    if fns.aO8_15(v6, v7) then
        return true
    end
    return #afX() > 0
end
function fns.fn1338(dH)
    local aje_1
    local ai9 = fns.aO8_58()
    local goal = fns.aO8_48.goal
    if not (ai9 and goal) then
        return false
    end
    local ajb_1 = goal ~= goal or math.abs(goal.Y) > 1000000
    if ajb_1 then
        fns.aO8_9()
        return false
    end
    local Position = ai9.Position
    local ajc = goal - Position
    local Magnitude = ajc.Magnitude
    if Magnitude > fns.aO8_48.arrive then
        if Magnitude > 80 or fns.aO8_48.kind == "farm" then
            aje_1 = goal
        else
            local ajf_1 = math.min(Magnitude, fns.aO8_48.speed * dH)
            aje_1 = Position + ajc.Unit * ajf_1
        end
    else
        aje_1 = goal
    end
    local aja_1 = fns.aO8_48.lookAt or aje_1 + Vector3.new(ajc.X, 0, ajc.Z)
    ai9.CFrame = aO8_99(aje_1, aja_1)
    ai9.AssemblyLinearVelocity = Vector3.zero
    return Magnitude <= fns.aO8_48.arrive
end
function fns.fn1376(a9)
    local ahx = Toggles[a9]
    return ahx ~= nil and ahx.Value == true
end
function fns.fn1405(hQ, hR)
    local aml = aO8_111(hR, hQ)
    if typeof(aml) ~= "number" then
        return true
    end
    for k, v in afW:GetTagged("Enemy") do
        local amm = aO8_110(v)
        if amm then
            local amm_1 = aej(v)
            local amn = typeof(amm_1) == "number" and amm_1 < aml
            if amn then
                return false
            end
        end
    end
    return true
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(0.3)
        pcall(function()
            afV.Doing:SetText(aO8_89("Currently Doing", agH(), aO8_97))
            afV.Dungeon:SetText(aO8_89("Dungeon", aO8_101(), aeH))
            afV.Phase:SetText(aO8_89("Phase", aO8_83(), aeY))
            local aGs = fns.aO8_80()
            local format = string.format
            local aGt_1
            local aGu = typeof(aGs) == "number" and tostring(aGs)
            local aGv = aGu or "-"
            local aGu_1 = format("%s / %d", aGv, fns.aO8_20())
            afV.Room:SetText(aO8_89("Room", aGu_1, ac8))
            if fns.aO8_66() then
                aGt_1 = fns.aO8_45()
            elseif typeof(aGs) == "number" then
                aGt_1 = fns.aO8_45(aGs)
            else
                aGt_1 = 0
            end
            afV.Enemy:SetText(aO8_89("Enemies", string.format("%d here / %d total", aGt_1, fns.aO8_45()), ae7))
            afV.Chest:SetText(aO8_89("Chests ready", tostring(fns.aO8_47()), aO8_97))
            afV.Blessings:SetText(aO8_89("Blessing Cards", fns.aO8_31(), aeH))
        end)
    end
end
function fns.fn1424()
    local BossRush_NPCs = fns.aO8_81:FindFirstChild("BossRush_NPCs")
    if not BossRush_NPCs then
        return false
    end
    for i, child in BossRush_NPCs:GetChildren() do
        if aO8_110(child) then
            return true
        end
    end
    return false
end
function fns.fn1427()
    local aCZ_1
    if not aez("AutoSpin") then
        if fns.aO8_68.Spin ~= "Idle" then
            fns.aO8_13("Spin", "Idle")
        end
        return
    end
    local aCS = adW()
    if not aCS then
        fns.aO8_13("Spin", "Lobby only")
        return
    end
    local aCT = tonumber(aO8_103("SpinSlot", "1")) or 1
    local aCU = aCT
    local aCU_5, aCU_8
    local aCT_1 = fns.aO8_53("SpinStopAt")
    local aCV = aez("RerollUntilAspect")
    local aCW = fns.aO8_53("RerollAspect")
    local aCX = next(aCT_1) ~= nil or aCV
    local aCX_1
    aCX_1, aCZ_1 = aO8_132(aCS, "GetSlotData")
    local aC_ = aCX_1 and typeof(aCZ_1) == "table"
    local aC__6, aC__8
    if aC_ then
        local Slots = aCZ_1.Slots
        local aC__1 = typeof(Slots) == "table" and #Slots >= 1 and aCU > #Slots
        if aC__1 then
            aCU = #Slots
        end
        local aC__2 = aCX and typeof(Slots) == "table"
        if aC__2 then
            local aC__3 = aCZ_1.SlotAspects and aCZ_1.SlotAspects[aCU]
            if fns.aO8_62(Slots[aCU], aC__3, aCT_1, aCV, aCW) then
                if Toggles.AutoSpin then
                    Toggles.AutoSpin:SetValue(false)
                end
                fns.aO8_13("Spin", "Got " .. aO8_115(Slots[aCU], aC__3))
                return
            end
        end
        if aCZ_1.ActiveIndex ~= aCU then
            aO8_132(aCS, "SwitchSlot", aCU)
        end
    end
    if os.clock() - fns.aO8_42.spin < 0.4 then
        return
    end
    local aCU_1 = aO8_103("SpinType", "Normal Spin")
    local aCX_3 = aCU_1 == "Use Coins"
    local aCU_2 = aCU_1 == "Lucky Spin" and "Lucky" or "Normal"
    if aCX_3 then
        local aCU_3 = fns.aO8_35()
        local aC__4 = aCU_3 and tonumber(aCU_3.Currency)
        local aCU_4 = aC__4
        local aC4 = if aCU_4 then 1 else 0
        local aC2 = 2976 * aC4 + 1463 * (1 - aC4)
        local aC3 = 376 * aC4 + 1706 * (1 - aC4)
        if not ((aC2 * 1085 + aC3 * 1249 + aC2 * aC3) % 16777213 == 4817560) then
            aCU_4 = 0
        end
        if aCU_4 < fns.aO8_33.SPIN_COIN_COST then
            fns.aO8_13("Spin", "No coins")
            return
        end
    else
        aCU_5, aC__6 = aO8_132(aCS, "GetSpinCounts")
        local aC0_2 = aCU_5 and typeof(aC__6) == "table"
        if aC0_2 then
            local aCU_6 = aCU_2 == "Lucky" and tonumber(aC__6.Lucky)
            local aC0_3 = aCU_6 or tonumber(aC__6.Normal)
            if not aC0_3 or aC0_3 < 1 then
                fns.aO8_13("Spin", "No spins")
                return
            end
        end
    end
    fns.aO8_42.spin = os.clock()
    aCU_8, aC__8 = aO8_132(aCS, "Spin", aCU_2, aCX_3)
    local aCS_1 = aCU_8 and typeof(aC__8) == "table"
    if not aCS_1 then
        local aCS_2 = typeof(aC__8) == "string" and aC__8
        local aCU_9 = aCS_2 or "Failed"
        fns.aO8_13("Spin", aCU_9)
        return
    end
    local aQj = fns.aO8_12
    aQj.rerolls = aQj.rerolls + 1
    local ClassName = aC__8.ClassName
    local Aspect = aC__8.Aspect
    fns.aO8_13("Spin", aO8_115(ClassName, Aspect))
    local aCX_4 = aCX and fns.aO8_62(ClassName, Aspect, aCT_1, aCV, aCW)
    if aCX_4 then
        if Toggles.AutoSpin then
            Toggles.AutoSpin:SetValue(false)
        end
        fns.aO8_13("Spin", "Got " .. aO8_115(ClassName, Aspect))
    end
end
function fns.fn1437()
    local am1 = fns.aO8_58()
    if not am1 then
        return aO8_86 > 0
    end
    local am2
    local am3
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            for i, child in child:GetChildren() do
                local am4_1 = child.Name == "Blessing_Altar" and child:IsA("Model")
                if am4_1 then
                    local am4_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                    if am4_2 then
                        local Magnitude = (am4_2.Position - am1.Position).Magnitude
                        if not am3 or Magnitude < am3 then
                            am2 = child
                            am3 = Magnitude
                        end
                    end
                end
            end
        end
    end
    if am2 and aO8_133[am2] then
        return true
    end
    return aO8_86 > 0 and am2 == nil
end
function fns.fn1445()
    local alO = afJ()
    local alP = alO and typeof(alO.Zones) == "table"
    if alP then
        for i, v in ipairs(alO.Zones) do
            if typeof(v.Index) == "number" then
                local Frame = v.Frame
                local alP_1 = Frame and Frame:FindFirstChild("Completed")
                local alO_2 = alP_1
                if alP_1 then
                    alP_1 = alO_2.Visible
                end
                if not (alP_1 or v.Done == true) then
                    return v.Index, v.IsBoss == true
                end
            end
        end
    end
    return nil, false
end
function fns.fn1475()
    if fns.aO8_4 then
        return fns.aO8_4
    end
    local awh = {}
    pcall(agy, awh)
    for k, v in afL do
        if not awh[v.anim] then
            awh[v.anim] = { name = v.name, reach = v.reach, hold = v.hold, barrage = adw[v.name] == true }
        end
    end
    fns.aO8_4 = awh
    return awh
end
function fns.fn1476()
    local asg_1
    local asf_1
    if not aez("AutoParry") then
        if fns.aO8_68.Parry ~= "Idle" then
            fns.aO8_13("Parry", "Idle")
        end
        return
    end
    local ase = fns.aO8_14("ParryRate", 0.4)
    if os.clock() - fns.aO8_42.parry < ase then
        return
    end
    local ase_1 = fns.aO8_58()
    if not ase_1 then
        fns.aO8_13("Parry", "No character")
        return
    end
    asf_1, asg_1 = fns.aO8_16(ase_1.Position)
    local ase_2 = fns.aO8_14("ParryRange", 16)
    local ash = not asf_1
    if not ash then
        local asf_2 = typeof(asg_1) == "number" and asg_1 > ase_2
        ash = asf_2
    end
    if ash then
        fns.aO8_13("Parry", "Waiting")
        return
    end
    if agI() then
        fns.aO8_42.parry = os.clock()
        fns.aO8_13("Parry", "Parrying")
    else
        fns.aO8_13("Parry", "Blocked")
    end
end
function fns.fn1509()
    if not aez("AutoSkill") then
        if fns.aO8_68.Skill ~= "Idle" then
            fns.aO8_13("Skill", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.skill < 0.15 then
        return
    end
    local ar1 = fns.aO8_53("SkillSlot")
    local ar2 = fns.aO8_58()
    local ar3 = ar2 and fns.aO8_16(ar2.Position)
    local ar2_1 = ar3
    if ar3 then
        ar3 = aO8_110(ar2_1)
    end
    local ar2_2 = ar3
    if ar3 then
        ar3 = ar2_2.Position
    end
    local ar2_3 = ar3
    local ar3_1 = false
    local ar4 = {}
    for k, v in fns.aO8_33.SKILL_ORDER do
        if ar1[v] == true then
            ar3_1 = true
            local ar5 = fns.aO8_33.SKILL_MAP[v]
            local ar6 = ar5 ~= nil and fns.aO8_43(ar5, ar2_3)
            if ar6 then
                table.insert(ar4, v)
                task.wait(0.05)
            end
        end
    end
    if #ar4 > 0 then
        fns.aO8_42.skill = os.clock()
        fns.aO8_13("Skill", table.concat(ar4, ", "))
    elseif ar3_1 then
        fns.aO8_13("Skill", "Waiting")
    else
        fns.aO8_13("Skill", "None selected")
    end
end
function fns.fn1621()
    local aqe = fns.aO8_58()
    if not aqe then
        return nil
    end
    local aqf
    local aqg
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            for i, descendant in child:GetDescendants() do
                local aqh = descendant.Name == "Skull_Totem" and descendant:IsA("Model") and not adi[descendant]
                if aqh then
                    local ProximityPrompt = descendant:FindFirstChildWhichIsA("ProximityPrompt", true)
                    if ProximityPrompt and ProximityPrompt.Enabled then
                        local aqi_1 = descendant.PrimaryPart or descendant:FindFirstChild("Bottom") or descendant:FindFirstChildWhichIsA("BasePart", true)
                        if aqi_1 then
                            local Magnitude = (aqi_1.Position - aqe.Position).Magnitude
                            if not aqg or Magnitude < aqg then
                                aqf = { model = descendant, prompt = ProximityPrompt, part = aqi_1 }
                                aqg = Magnitude
                            end
                        end
                    end
                end
            end
        end
    end
    return aqf
end
function fns.fn1636(h2, h3)
    local amv = aO8_111(h3, h2)
    if typeof(amv) ~= "number" then
        return false
    end
    local amw = fns.aO8_80()
    local amx = typeof(amw) == "number" and amw < amv
    if amx then
        return false
    end
    for k, v in afW:GetTagged("Enemy") do
        local amx_1 = aO8_110(v)
        if amx_1 then
            local amx_2 = aej(v)
            if not (typeof(amx_2) ~= "number") then
                local amy = amx_2 == amw
                local amz = typeof(amw) == "number" and amy
                if amz then
                    return false
                end
                if amx_2 <= amv then
                    return false
                end
            end
        end
    end
    return true
end
function fns.fn1648()
    local aAu_1
    local aAt_1
    aAt_1, aAu_1 = pcall(function()
        return require(aO8_129.GameInfo.MutationData)
    end)
    local aAv = aAt_1 and typeof(aAu_1) == "table" and typeof(aAu_1.GetClassWeaponAspectNames) == "function"
    if aAv then
        local aAt_2 = aAu_1.GetClassWeaponAspectNames()
        local aAu_2 = typeof(aAt_2) == "table" and #aAt_2 > 0
        if aAu_2 then
            return aAt_2
        end
        return {
            "Aegis",
            "Alacrity",
            "Blaze",
            "Fulmin",
            "Glaciel",
            "Phantom",
            "Ruin",
            "Sanguine",
            "Tempest",
            "Umbral",
            "Verdant"
        }
    end
    return {
        "Aegis",
        "Alacrity",
        "Blaze",
        "Fulmin",
        "Glaciel",
        "Phantom",
        "Ruin",
        "Sanguine",
        "Tempest",
        "Umbral",
        "Verdant"
    }
end
function fns.fn1722()
    local aGB = hookfunction ~= nil
    local aGC = hookmetamethod ~= nil
    local aGD = getrawmetatable ~= nil
    local aGE = setrawmetatable ~= nil
    local aGF = getgc ~= nil
    local aGG = getgenv ~= nil
    local aGH = getreg ~= nil
    local aGI = getconnections ~= nil
    local aGJ = firesignal ~= nil
    local aGK = getcallbackvalue ~= nil
    local aGL = setclipboard ~= nil
    local aGM = getcustomasset ~= nil
    local aGN = getnamecallmethod ~= nil
    local aGO = isexecutorclosure ~= nil
    local aGP = fireproximityprompt ~= nil
    local aGQ = firetouchinterest ~= nil
    local aGR = WebSocket ~= nil
    local aGS = readfile ~= nil
    local aGT = writefile ~= nil
    local aGU = request
    local aG4 = if aGU then 1 else 0
    local aG2 = 3401 * aG4 + 345 * (1 - aG4)
    local aG3 = 22 * aG4 + 3125 * (1 - aG4)
    if not ((aG2 * 3645 + aG3 * 3244 + aG2 * aG3) % 16777213 == 12542835) then
        aGU = http_request
    end
    local aGV = aGU ~= nil
    local aGX = (debug and debug.getupvalues) ~= nil
    local aGZ = (debug and debug.setupvalue) ~= nil
    local aG_ = 0
    local aG0 = {
        aGB,
        aGC,
        aGD,
        aGE,
        aGF,
        aGG,
        aGH,
        aGI,
        aGJ,
        aGK,
        aGL,
        aGM,
        aGN,
        aGO,
        aGP,
        aGQ,
        aGR,
        aGS,
        aGT,
        aGV,
        aGX,
        aGZ
    }
    for i, v in ipairs(aG0) do
        if v then
            aG_ += 1
        end
    end
    local aGB_1 = aG_ / #aG0
    if aGB_1 >= 0.9 then
        return aO8_121("Full Support", ae7)
    elseif aGB_1 >= 0.6 then
        return aO8_121("Half Support", aeY)
    else
        return aO8_121("Low Support", aO8_112)
    end
end
function fns.fn1768()
    local anD = fns.aO8_58()
    if not anD then
        return nil
    end
    local anE
    local anF
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            for i, child in child:GetChildren() do
                local anG = child.Name == "Blessing_Altar" and child:IsA("Model")
                if anG then
                    local anH_1 = aO8_133[child] or child:GetAttribute("Ouroboros_UsedAltar")
                    anG = not anH_1
                end
                if anG then
                    local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
                    local anH_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                    local anI = ProximityPrompt
                    if anI then
                        anI = ProximityPrompt.Enabled
                    end
                    if anI then
                        anI = anH_2
                    end
                    if anI then
                        anI = fns.aO8_30(anH_2.Position, child)
                    end
                    if anI then
                        local Magnitude = (anH_2.Position - anD.Position).Magnitude
                        if not anF or Magnitude < anF then
                            anE = { model = child, prompt = ProximityPrompt, part = anH_2 }
                            anF = Magnitude
                        end
                    end
                end
            end
        end
    end
    return anE
end
function fns.fn1775(da, db, dc, dd)
    if typeof(da) ~= "Vector3" then
        return
    end
    fns.aO8_48.goal = da
    fns.aO8_48.kind = db
    local aiO = typeof(dc) == "Vector3" and dc
    local aiP = aiO or nil
    fns.aO8_48.lookAt = aiP
    if typeof(dd) == "number" then
        fns.aO8_48.speed = dd
    end
end
function fns.fn1782()
    local aAA = {}
    local aAB = fns.aO8_35()
    local aAC = aAB and aAB.ClassSlots
    local aAC_1 = typeof(aAC) == "table" and #aAC
    local aAC_2 = aAC_1 or 0
    if aAC_2 < 1 then
        aAC_2 = 3
    end
    local aAJ = 1
    local aAH = aAC_2
    while aAJ <= aAH do
        local aAK = aAJ
        aAA[aAK] = tostring(aAK)
        aAJ += 1
    end
    return aAA
end
function fns.fn1800(go)
    local als = typeof(go) == "table" and typeof(go.ByIndex) == "table" and typeof(go.Zones) == "table" and typeof(go.CurrentPos) == "number" and typeof(go.List) == "Instance" and go.List.Parent ~= nil and go.List.Parent.Name == "Completion_Progress"
    return als
end
function fns.fn1811()
    local apL = fns.aO8_58()
    if not apL then
        return nil
    end
    local apM
    local apN
    for i, child in fns.aO8_81:GetChildren() do
        local Name = child.Name
        local apP = string.find(Name, "Generated", 1, true) or string.find(Name, "Dungeon", 1, true) or string.find(Name, "Challenge", 1, true) or string.find(Name, "BossRush", 1, true)
        if apP then
            for i, child in child:GetChildren() do
                if string.match(child.Name, "^Locked_%d+$") then
                    local KeyModel = child:FindFirstChild("KeyModel")
                    local apP_1 = KeyModel and KeyModel:IsA("Model")
                    if apP_1 then
                        apP_1 = (aO8_127[KeyModel] or 0) <= 10
                    end
                    if apP_1 then
                        local ProximityPrompt = KeyModel:FindFirstChildWhichIsA("ProximityPrompt", true)
                        if ProximityPrompt and ProximityPrompt.Enabled then
                            local apQ_3 = KeyModel.PrimaryPart or KeyModel:FindFirstChildWhichIsA("BasePart", true)
                            if apQ_3 then
                                if not not agJ(apQ_3.Position, KeyModel) then
                                    local Magnitude = (apQ_3.Position - apL.Position).Magnitude
                                    if not apN or Magnitude < apN then
                                        apM = { model = KeyModel, prompt = ProximityPrompt, part = apQ_3 }
                                        apN = Magnitude
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return apM
end
function fns.fn1837()
    if not aez("AutoBossRush") then
        if fns.aO8_68.BossRush ~= "Idle" then
            fns.aO8_13("BossRush", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.bossRush < 3 then
        return
    end
    fns.aO8_42.bossRush = os.clock()
    local attr = adU:GetAttribute("CurrentDungeon")
    local auV_1
    local auW = afY() ~= nil
    local auW_1
    local au1 = if auW then 1 else 0
    local au_ = 2581 * au1 + 679 * (1 - au1)
    local au0 = 3644 * au1 + 1630 * (1 - au1)
    if not ((au_ * 3967 + au0 * 1704 + au_ * au0) % 16777213 == 9076154) then
        local auX = attr ~= ""
        local auY = typeof(attr) == "string" and auX
        auW = auY
    end
    if auW then
        fns.aO8_13("BossRush", "In run")
        return
    end
    auV_1, auW_1 = afi()
    if auV_1 then
        fns.aO8_13("BossRush", "Joining")
    else
        local auV_2 = typeof(auW_1) == "string" and auW_1
        local auW_2 = auV_2 or "Failed"
        fns.aO8_13("BossRush", auW_2)
    end
end
function fns.fn1865(BN)
    local aBA = fns.aO8_35()
    if not aBA then
        return {}
    end
    local aBB = {}
    if typeof(aBA.Equipment) == "table" then
        for k, v in pairs(aBA.Equipment) do
            local aBC_1 = typeof(v) == "table" and typeof(v.GUID) == "string"
            if aBC_1 then
                aBB[v.GUID] = true
            end
        end
    end
    local aBC_2 = {}
    local EquipmentInventory = aBA.EquipmentInventory
    if typeof(EquipmentInventory) ~= "table" then
        return aBC_2
    end
    for k, v in pairs(EquipmentInventory) do
        local aBA_1 = typeof(v) == "table" and typeof(v.GUID) == "string" and not v.Locked and not aBB[v.GUID]
        if aBA_1 then
            local Rarity = v.Rarity
            local aBD_1 = typeof(Rarity) == "string" and BN[Rarity] == true
            if aBD_1 then
                table.insert(aBC_2, v.GUID)
            end
        end
    end
    return aBC_2
end
function fns.fn1880(xy, xz, xA, xB, xC)
    local ayp_1
    local ayo_1
    local ayl = RaycastParams.new()
    ayl.FilterType = Enum.RaycastFilterType.Exclude
    ayl.FilterDescendantsInstances = { adU.Character, xy }
    local aym = xB.HipHeight + xA.Size.Y * 0.5 + 0.5
    local ayn = aO8_117.heading
    if type(ayn) ~= "number" then
        ayn = math.atan2(xA.Position.Z - xz.Position.Z, xA.Position.X - xz.Position.X) + math.pi * 0.5
    end
    ayp_1, ayo_1 = nil, nil
    for k, v in { fns.aO8_64, 8, 0 } do
        for k, v2 in { 20, 28, 36, 14, 44 } do
            local ayK = 0
            while ayK <= 15 do
                local ayq_1 = ayn + ayK * (math.pi / 8)
                local ayr = xA.Position + Vector3.new(math.cos(ayq_1) * v2, 0, math.sin(ayq_1) * v2)
                local Magnitude2 = Vector3.new(ayr.X - xz.Position.X, 0, ayr.Z - xz.Position.Z).Magnitude
                local ayt = Magnitude2 >= 10 and Magnitude2 <= 72
                local ayt_1
                if ayt then
                    local ays_1 = fns.aO8_81:Raycast(ayr + Vector3.new(0, 18, 0), Vector3.new(0, -48, 0), ayl)
                    local ayr_1 = ays_1 and ays_1.Normal.Y > 0.8 and math.abs(ays_1.Position.Y - xz.Position.Y) < 14
                    if ayr_1 then
                        local ayr_2 = ays_1.Position + Vector3.new(0, aym, 0)
                        local Magnitude = Vector3.new(ayr_2.X - xA.Position.X, 0, ayr_2.Z - xA.Position.Z).Magnitude
                        if Magnitude >= v then
                            if #xC > 0 then
                                ayt_1 = fns.aO8_36(ayr_2, xC)
                            else
                                ayt_1 = -v2
                            end
                            local ayt_2 = ayt_1 + Magnitude * 0.02
                            if not ayo_1 or ayt_2 < ayo_1 then
                                ayo_1 = ayt_2
                                ayp_1 = ayr_2
                                aO8_117.heading = ayq_1
                            end
                        end
                    end
                end
                ayK += 1
            end
            if ayp_1 and ayo_1 < 0 then
                break
            end
        end
        if ayp_1 then
            break
        end
    end
    return ayp_1
end
function fns.fn1890()
    local aF0_1
    local aF1_1
    if aO8_105 then
        return
    end
    aO8_105 = {}
    aF0_1, aF1_1 = pcall(function()
        return require(aO8_129.GameInfo.BuffData)
    end)
    local aF2 = not aF0_1 or typeof(aF1_1) ~= "table"
    if aF2 then
        return
    end
    local aF0_2 = {}
    if typeof(aF1_1.Buffs) == "table" then
        for k, v in aF1_1.Buffs do
            local aF2_1 = typeof(v) == "table" and typeof(v.Title) == "string" and typeof(v.EffectType) == "string"
            if aF2_1 then
                aF0_2[v.EffectType] = v.Title
            end
        end
    end
    if typeof(aF1_1.RunBuffProjection) == "table" then
        for k, v in aF1_1.RunBuffProjection do
            local aF1_2 = typeof(v) == "table" and typeof(v.Attr) == "string"
            if aF1_2 then
                local aF1_3 = aF0_2[k]
                if aF1_3 then
                    aO8_105[v.Attr] = aF1_3
                end
            end
        end
    end
end
function fns.fn1894()
    local Challenge_Dungeons = fns.aO8_81:FindFirstChild("Challenge_Dungeons")
    if not Challenge_Dungeons then
        return nil
    end
    local attr = adU:GetAttribute("CurrentDungeon")
    local akD = typeof(attr) == "string" and string.gsub(attr, " ", "_")
    local akE = akD or nil
    for i, child in Challenge_Dungeons:GetChildren() do
        local akB_1 = not akE or child.Name == akE
        if not akB_1 then
            local akE_1 = typeof(attr) == "string" and string.find(child.Name, attr, 1, true)
            akB_1 = akE_1
        end
        if akB_1 then
            for i, v in ipairs({ "Enemy_Spawn", "Player_Spawn" }) do
                local akB_2 = child:FindFirstChild(v, true)
                local akE_2 = akB_2 and akB_2:IsA("BasePart")
                if akE_2 then
                    local Position = akB_2.Position
                    local akB_3 = Position == Position and math.abs(Position.Y) < 1000000
                    if akB_3 then
                        return Position
                    end
                end
            end
        end
    end
    return nil
end
function fns.fn1897(ef)
    local ItemBillboardWithHealth = ef:FindFirstChild("ItemBillboardWithHealth", true)
    local Humanoid
    if ItemBillboardWithHealth then
        local TextLabel = ItemBillboardWithHealth:FindFirstChild("TextLabel", true)
        local ajF_1 = TextLabel and TextLabel:IsA("TextLabel")
        if ajF_1 then
            local ajF_2 = string.match(TextLabel.Text, "([%d%.]+)%s*/")
            local ajF_3 = tonumber(ajF_2)
            if ajF_3 ~= nil then
                return ajF_3
            end
            local Humanoid2 = ef:FindFirstChildOfClass("Humanoid")
            if Humanoid then
                return Humanoid2.Health
            end
            return nil
        end
        local Humanoid2 = ef:FindFirstChildOfClass("Humanoid")
        if Humanoid then
            return Humanoid2.Health
        end
        return nil
    end
    Humanoid = ef:FindFirstChildOfClass("Humanoid")
    if Humanoid then
        return Humanoid.Health
    end
    return nil
end
function fns.fn1916()
    local aFL = 0
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            for i, child in child:GetChildren() do
                if child:GetAttribute("DungeonChest") == true then
                    local ChestPrompt = child:FindFirstChild("ChestPrompt", true)
                    local aFN = ChestPrompt and ChestPrompt:IsA("ProximityPrompt") and ChestPrompt.Enabled
                    if aFN then
                        aFL += 1
                    end
                end
            end
        end
    end
    return aFL
end
function fns.fn1963(ux)
    local av2_1
    local Boss_ActionData = require(aO8_129.GameInfo.Boss_ActionData)
    local avX = Boss_ActionData.Index and Boss_ActionData.Index[aO8_118]
    local avX_1 = not avX
    local av7 = if avX_1 then 1 else 0
    local av5 = 2259 * av7 + 2844 * (1 - av7)
    local av6 = 3272 * av7 + 994 * (1 - av7)
    if not ((av5 * 1452 + av6 * 3014 + av5 * av6) % 16777213 == 3756111) then
        avX_1 = typeof(avX.Abilities) ~= "table"
    end
    if avX_1 then
        return
    end
    local avX_2 = avX.ClassSource
    local awa = if avX_2 then 1 else 0
    local av8 = 3529 * awa + 1340 * (1 - awa)
    local av9 = 387 * awa + 1600 * (1 - awa)
    if not ((av8 * 2851 + av9 * 3998 + av8 * av9) % 16777213 == 12974128) then
        avX_2 = aO8_118
    end
    local avY = avX_2
    local avX_3 = aO8_129.Classes:FindFirstChild(avY)
    local avZ = avX_3 and avX_3:FindFirstChild("Skill_Animations")
    local Boss_Abilities = aO8_129.GameInfo:FindFirstChild("Boss_Abilities")
    local av_ = Boss_Abilities and Boss_Abilities:FindFirstChild(avY)
    for i, v in ipairs(avX.Abilities) do
        local avW_2 = avZ and avZ:FindFirstChild("Ability_" .. i)
        local avY_1 = avW_2
        if avW_2 then
            avW_2 = avY_1.AnimationId:match("%d+")
        end
        local avY_2 = avW_2
        if avY_2 then
            local avW_3 = {}
            local av__1 = v.ModuleName
            local av0 = av_ and av__1 and av_:FindFirstChild(av__1)
            local av0_1
            if av0 then
                av0_1, av2_1 = pcall(require, av0)
                local av1_1 = av0_1 and typeof(av2_1) == "table"
                if av1_1 then
                    avW_3 = av2_1
                end
            end
            local av1_2 = v.HitboxRange or avW_3.HitboxRange or 35
            local av1_3 = v.HitboxSize or avW_3.HitboxSize
            local av1_4 = av1_2 + agK(av1_3)
            local max = math.max
            local av2_3 = v.TelegraphRadius or 0
            local av3 = v.TelegraphRange or 0
            local av1_5 = max(av1_4, av2_3, av3)
            local av0_6 = avW_3.MaxDuration or v.MaxDuration or 2
            local av3_1 = v.HitCount or avW_3.HitCount
            local avW_4 = v.Interval or avW_3.Interval
            if av3_1 and avW_4 then
                av0_6 = math.max(av0_6, (av3_1 - 1) * avW_4 + 0.6)
            end
            local avW_5 = av__1 or "Ability " .. i
            local av__2 = avW_5:gsub("_", " ")
            local avW_6 = v.TelegraphType == "BigAoE" or adw[av__2] == true
            ux[avY_2] = { name = av__2, reach = av1_5, hold = av0_6 + fns.aO8_41, barrage = avW_6 }
        end
    end
end
function fns.fn2016()
    local as6_1
    local as5_1
    if not Knit then
        return nil
    end
    as5_1, as6_1 = pcall(function()
        return Knit.GetService("PotionService")
    end)
    if as5_1 then
        return as6_1
    end
    return nil
end
function fns.fn2027()
    local Tabbox = aO8_88.Main:AddRightTabbox()
    local RunTab = Tabbox:AddTab("Run", "rotate-cw")
    RunTab:AddToggle("AutoReplay", { Text = "Auto Replay", Default = false })
    fns.aO8_44(RunTab, "Replay")
    RunTab:AddToggle("AutoReturnLobby", { Text = "Auto Return Lobby", Default = false })
    fns.aO8_44(RunTab, "Return")
    RunTab:AddToggle("LeaveFailsafe", { Text = "Leave Failsafe", Default = true })
    fns.aO8_44(RunTab, "Failsafe")
    local aHI = RunTab:AddDependencyBox()
    aHI:AddDropdown("FailsafeAction", { Text = "Action", Values = fns.aO8_33.FAILSAFE_ACTION_VALUES, Default = "Rejoin" })
    aHI:AddSlider("FailsafeTime", { Text = "No Mob Time", Default = 45, Min = 5, Max = 300, Rounding = 0, Suffix = "s" })
    aHI:SetupDependencies({ { Toggles.LeaveFailsafe, true } })
    local LootTab = Tabbox:AddTab("Loot", "package")
    LootTab:AddToggle("AutoCollectChest", { Text = "Auto Collect Chest", Default = false, Tooltip = "Collects dungeon chests automatically" })
    LootTab:AddDropdown("AutoCollectChestMode", {
        Text = "Collect Mode",
        Default = "Ground Chest",
        Values = { "Ground Chest", "Locked + Ground Chest" }
    })
    fns.aO8_44(LootTab, "Chest")
    LootTab:AddToggle("AutoSkullTotem", { Text = "Auto Skull Totem", Default = false })
    fns.aO8_44(LootTab, "Totem")
    local aHG_1 = LootTab:AddDependencyBox()
    aHG_1:AddSlider("TotemDelay", { Text = "Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
    aHG_1:SetupDependencies({ { Toggles.AutoSkullTotem, true } })
    LootTab:AddToggle("AutoAltarBlessing", { Text = "Auto Altar Blessing", Default = false })
    fns.aO8_44(LootTab, "Altar")
    LootTab:AddDropdown("BlessingPriority", {
        Text = "Blessing Priority",
        Values = fns.aO8_33.BLESSING_PRIORITY_VALUES,
        Multi = true,
        Default = {}
    })
    for i, v in ipairs(fns.aO8_33.BLESSING_PRIORITY_VALUES) do
        local aHG_2 = "BlessingRank_" .. v:gsub("[^%w]", "")
        fns.aO8_33.BlessingRankKey[v] = aHG_2
        local aHI_1 = LootTab:AddDependencyBox()
        aHI_1:AddDropdown(aHG_2, { Text = v, Values = fns.aO8_33.BLESSING_RANK_VALUES, Default = "1" })
        aHI_1:SetupDependencies({ { Options.BlessingPriority, v } })
    end
end
function fns.fn2029()
    if not aez("AutoChallenge") then
        if fns.aO8_68.Challenge ~= "Idle" then
            fns.aO8_13("Challenge", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.challenge < 3 then
        return
    end
    fns.aO8_42.challenge = os.clock()
    local attr = adU:GetAttribute("CurrentDungeon")
    local avs_1
    local avt = afY() ~= nil
    local avt_1
    if not avt then
        local avu = attr ~= ""
        local avv = typeof(attr) == "string" and avu
        avt = avv
    end
    if avt then
        fns.aO8_13("Challenge", "In run")
        return
    end
    avs_1, avt_1 = fns.aO8_23()
    if avs_1 then
        fns.aO8_13("Challenge", "Joining")
    else
        local avs_2 = typeof(avt_1) == "string" and avt_1
        local avt_2 = avs_2 or "Failed"
        fns.aO8_13("Challenge", avt_2)
    end
end
function fns.fn2030(vh, vi, vj, vk, vl)
    local awv_1
    local awu_1
    local awt_1
    local aws_1
    local awp = RaycastParams.new()
    awp.FilterType = Enum.RaycastFilterType.Exclude
    awp.FilterDescendantsInstances = { adU.Character, vh }
    local awq = vk.HipHeight + vj.Size.Y * 0.5 + 0.5
    local awr = math.atan2(vj.Position.Z - vi.Position.Z, vj.Position.X - vi.Position.X)
    awt_1, aws_1 = nil, nil
    awv_1, awu_1 = nil, nil
    for k, v in { vl, vl + 12, vl - 8, vl - 16, vl + 26 } do
        if v >= 26 then
            local aww = 23
            local awK = 0
            while awK <= aww do
                local aww_1 = awr + awK * (math.pi * 2 / fns.aO8_63)
                local awx = vi.Position + Vector3.new(math.cos(aww_1) * v, 0, math.sin(aww_1) * v)
                local aww_2 = fns.aO8_81:Raycast(awx + Vector3.new(0, 18, 0), Vector3.new(0, -48, 0), awp)
                local awx_1 = aww_2 and aww_2.Normal.Y > 0.8 and math.abs(aww_2.Position.Y - vi.Position.Y) < 14
                if awx_1 then
                    local awx_2 = aww_2.Position + Vector3.new(0, awq, 0)
                    local Magnitude2 = Vector3.new(awx_2.X - vi.Position.X, 0, awx_2.Z - vi.Position.Z).Magnitude
                    local Magnitude = (awx_2 - vj.Position).Magnitude
                    if Magnitude2 >= vl and (not aws_1 or Magnitude < aws_1) then
                        awt_1, aws_1 = awx_2, Magnitude
                    end
                    if not awu_1 or Magnitude2 > awu_1 then
                        awv_1, awu_1 = awx_2, Magnitude2
                    end
                end
                awK += 1
            end
            if awt_1 then
                break
            end
        end
    end
    local awp_1 = awt_1
    local awP = if awp_1 then 1 else 0
    local awN = 3559 * awP + 454 * (1 - awP)
    local awO = 1460 * awP + 904 * (1 - awP)
    if not ((awN * 3460 + awO * 3973 + awN * awO) % 16777213 == 6533647) then
        awp_1 = awv_1
    end
    return awp_1
end
function fns.fn2065(i0, i1)
    if not i1 then
        return false
    end
    local ank = aO8_111(i0, i1.Position)
    for i, child in fns.aO8_81:GetChildren() do
        if string.find(child.Name, "Generated", 1, true) then
            for i, child in child:GetChildren() do
                local anl = child.Name == "Blessing_Altar" and child:IsA("Model")
                if anl then
                    local anm_1 = aO8_133[child] or child:GetAttribute("Ouroboros_UsedAltar")
                    anl = not anm_1
                end
                if anl then
                    local anl_1 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                    if anl_1 then
                        local anl_2 = aO8_111(child, anl_1.Position)
                        if ank and anl_2 and ank == anl_2 then
                            return true
                        end
                        if (i1.Position - anl_1.Position).Magnitude <= 90 then
                            return true
                        end
                    end
                end
            end
        end
    end
    return false
end
function fns.fn2087()
    local as3_1
    local as2_1
    as2_1, as3_1 = pcall(function()
        local Registry = require(adU.PlayerScripts.Client.Controllers.Registry)
        local as0 = Registry._Entries and Registry._Entries.PlayerData
        local as__1 = as0
        if as0 then
            as0 = as__1.Data
        end
        return as0
    end)
    if as2_1 then
        return as3_1
    end
    return nil
end
function fns.fn2125(Fq)
    local aEb = fns.aO8_53("BlessingPriority")
    local aEc
    local aEd
    local aEe
    for k, v in Fq._candidates do
        local aEf = typeof(v) == "table" and typeof(v.Title) == "string" and aEb[v.Title] == true
        if aEf then
            local aEf_1 = fns.aO8_33.BlessingRankKey[v.Title]
            local aEg = aEf_1 and tonumber(aO8_103(aEf_1, "10"))
            local aEf_2 = aEg or 10
            local aEf_3 = table.find(fns.aO8_33.BLESSING_PRIORITY_VALUES, v.Title) or 999
            local aEh = not aEd
            if not aEh then
                aEh = aEf_2 < aEd
            end
            if not aEh then
                aEh = aEf_2 == aEd and aEf_3 < aEe
            end
            if aEh then
                aEd = aEf_2
                aEe = aEf_3
                aEc = k
            end
        end
    end
    if not aEc then
        for k in Fq._candidates do
            aEc = k
            break
        end
    end
    return aEc
end
function fns.fn2130()
    local Character = adU.Character
    local ah6 = Character and Character:FindFirstChildOfClass("Humanoid")
    return ah6
end
function fns.fn2136(x4, x5, x6)
    aO8_117.active = true
    aO8_117.goal = x6
    fns.aO8_37()
    x4.CFrame = CFrame.lookAt(x6, Vector3.new(x5.Position.X, x6.Y, x5.Position.Z))
    x4.AssemblyLinearVelocity = Vector3.zero
    x4.AssemblyAngularVelocity = Vector3.zero
end
function fns.fn2147(d_)
    if not d_ then
        return false
    elseif not d_:IsDescendantOf(fns.aO8_81) then
        return false
    elseif d_:IsDescendantOf(aO8_129) then
        return false
    elseif aeX(d_) then
        local ajr_1 = d_:IsA("Model") or d_:IsA("BasePart")
        return ajr_1
    elseif not d_:IsA("Model") then
        return false
    else
        local Parent = d_.Parent
        if not Parent then
            return false
        end
        if Parent.Name == "NPCs" or Parent.Name == "BossRush_NPCs" or Parent.Name == "Challenge_NPCs" or Parent.Name == "Raid_NPCs" then
            return true
        elseif d_:GetAttribute("BossRush") == true then
            return true
        else
            local ajs_1 = d_:GetAttribute("DungeonRun") ~= nil
            local ajx = if ajs_1 then 1 else 0
            local ajv = 3943 * ajx + 3452 * (1 - ajx)
            local ajw = 2436 * ajx + 2434 * (1 - ajx)
            if not ((ajv * 2561 + ajw * 1395 + ajv * ajw) % 16777213 == 6324178) then
                ajs_1 = d_:GetAttribute("ChallengeDungeon") ~= nil
            end
            if ajs_1 then
                local ajs_2 = Parent
                while true do
                    if ajs_2 and ajs_2 ~= fns.aO8_81 then
                        local ajr_4 = string.find(ajs_2.Name, "Generated", 1, true) or string.find(ajs_2.Name, "Boss_Rush", 1, true) or string.find(ajs_2.Name, "BossRush", 1, true) or string.find(ajs_2.Name, "Challenge", 1, true) or string.find(ajs_2.Name, "Raid", 1, true)
                        if ajr_4 then
                            return true
                        end
                        ajs_2 = ajs_2.Parent
                        continue
                    end
                    break
                end
            end
            return false
        end
    end
end
function fns.fn2155(bv, bw)
    local ahT = Options[bv]
    local ahT_1 = ahT and ahT.Value
    if type(ahT_1) == "number" then
        return ahT_1
    end
    return bw
end
function fns.fn2196()
    local azV_1
    local azW_1
    local azT = {}
    local azU = {}
    azV_1, azW_1 = pcall(function()
        return require(aO8_129.GameInfo.ItemShopData)
    end)
    local azX = azV_1 and typeof(azW_1) == "table" and typeof(azW_1.Items) == "table"
    if azX then
        local azV_2 = {}
        for k, v in pairs(azW_1.Items) do
            local azW_2 = typeof(v) == "table" and v.Name and v.Id
            if azW_2 then
                local insert = table.insert
                local Name = v.Name
                local Id = v.Id
                local azZ = tonumber(v.LayoutOrder) or 0
                insert(azV_2, { name = Name, id = Id, order = azZ })
            end
        end
        table.sort(azV_2, function(Al, Am)
            return Al.order < Am.order
        end)
        for i, v in ipairs(azV_2) do
            table.insert(azU, v.name)
            azT[v.name] = v.id
        end
    end
    if #azU == 0 then
        azU = { "Common Stone" }
        azT["Common Stone"] = "CommonStone"
    end
    return azU, azT
end
function fns.fn2210()
    local avn_1, avn_2
    local avm_1, avm_2
    local avl_1, avl_2
    local avk_1, avk_3
    local avr = if aez("AutoMagicUnleashed") then 1 else 0
    if avr == 1 then
        return false, "Magic Unleashed enabled"
    end
    local avj = fns.aO8_1()
    if not avj then
        return false, "Lobby only"
    end
    avn_1, avk_1, avl_1, avm_1 = agk()
    if not avl_1 then
        return false, avm_1 or "Locked"
    end
    aO8_132(avj, "RequestSelectMode", "Challenge")
    aO8_132(avj, "RequestSelectDungeon", avn_1)
    avk_3, avl_2, avn_2, avm_2 = aO8_132(avj, "RequestStartPodQueue")
    if avk_3 and avl_2 and avn_2 then
        return true
    end
    local avj_2 = typeof(avm_2) == "string" and avm_2
    local avk_5 = avj_2
    if not avk_5 then
        local avj_3 = typeof(avn_2) == "string" and avn_2
        avk_5 = avj_3 or "Failed"
    end
    return false, avk_5
end
function fns.fn2227(uv)
    if typeof(uv) ~= "Vector3" then
        return 20
    end
    return math.sqrt(uv.X * uv.X + uv.Z * uv.Z) * 0.5
end
function fns.fn2234(em)
    local attr = em:GetAttribute("State")
    if attr == "Dead" or attr == "Dying" or attr == "Despawned" then
        return false
    end
    local ajI_1 = ae6(em)
    local ajJ_2 = typeof(ajI_1) == "number" and ajI_1 <= 0
    if ajJ_2 then
        return false
    end
    local Humanoid = em:FindFirstChildOfClass("Humanoid")
    if Humanoid and Humanoid.Health <= 0 then
        return false
    end
    return true
end
function fns.fn2244(Cr, Cs)
    local aCi_1
    local aCh_1, aCh_2
    local aCf = fns.aO8_33.ShopItemIdMap[Cs] or Cs
    local aCf_1, aCf_2
    local aCg_2
    aCf_1, aCh_1, aCi_1 = aO8_132(Cr, "BuyItem", aCf)
    if (not aCf_1 or not aCh_1) and aCf ~= Cs then
        aCf_1, aCh_1, aCi_1 = aO8_132(Cr, "BuyItem", Cs)
    end
    if aCf_1 and aCh_1 then
        return true
    end
    aCf_2, aCg_2, aCh_2 = aO8_132(Cr, "BuyWeapon", Cs)
    if aCf_2 and aCg_2 then
        return true
    end
    local aCf_3 = aCh_2
    local aCp = if aCf_3 then 1 else 0
    local aCn = 359 * aCp + 3962 * (1 - aCp)
    local aCo = 3839 * aCp + 3258 * (1 - aCp)
    if not ((aCn * 1986 + aCo * 3267 + aCn * aCo) % 16777213 == 14633188) then
        aCf_3 = aCi_1
    end
    return false, aCf_3
end
function fns.fn2280()
    fns.aO8_25()
    local aGg = {}
    for k, v in adU:GetAttributes() do
        local aGh = typeof(k) == "string" and string.sub(k, 1, 8) == "RunBuff_" and not string.find(k, "Stacks", 1, true)
        if aGh then
            local aGh_1 = aO8_105[k]
            local aGi = aGh_1 and typeof(v) == "number"
            if aGi and v ~= 0 then
                local aGi_1 = string.match(k, "^RunBuff_(.+)$")
                local aGj_1 = aGi_1 and adU:GetAttribute("RunBuffStacks_" .. aGi_1)
                local aGj_2 = typeof(aGj_1) == "number" and aGj_1 > 1
                if aGj_2 then
                    table.insert(aGg, string.format("%s x%d", aGh_1, aGj_1))
                else
                    table.insert(aGg, aGh_1)
                end
            end
        end
    end
    table.sort(aGg)
    if #aGg == 0 then
        return "none"
    end
    return table.concat(aGg, ", ")
end
function fns.fn2343()
    local aBY_1
    local aBX_2
    local aBW_2, aBW_3
    if not aez("AutoSell") then
        if fns.aO8_68.Sell ~= "Idle" then
            fns.aO8_13("Sell", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.sell < 1.5 then
        return
    end
    local aBR = fns.aO8_18()
    if not aBR then
        fns.aO8_13("Sell", "Lobby only")
        return
    end
    fns.aO8_42.sell = os.clock()
    local aBS = fns.aO8_53("SellRarities")
    local aBT = true
    for k in aBS do
        aBT = false
        break
    end
    local aBU = {}
    local aBU_1, aBU_2
    local aBV = {}
    for i, v in ipairs(fns.aO8_33.SELL_RARITY_VALUES) do
        if aBT or aBS[v] == true then
            table.insert(aBV, v)
            aBU[v] = true
        end
    end
    if #aBV == 0 then
        fns.aO8_13("Sell", "None selected")
        return
    end
    local aBS_1 = 0
    local aBT_1 = afI(aBU)
    if #aBT_1 > 0 then
        aBU_1, aBW_2 = aO8_132(aBR, "SellEquipment", aBT_1)
        if aBU_1 and aBW_2 then
            aBS_1 += #aBT_1
        end
    end
    aBW_3, aBX_2, aBU_2, aBY_1 = aO8_132(aBR, "SellLootStorageByRarity", aBV)
    if aBW_3 and aBX_2 then
        local aBR_2 = tonumber(aBU_2) or 0
        aBS_1 += aBR_2
    end
    if aBS_1 > 0 then
        fns.aO8_13("Sell", "Sold " .. tostring(aBS_1))
    else
        local aBR_3 = #aBT_1 == 0
        local aBV_1 = aBY_1 == "NO_ITEMS" or aBU_2 == "NO_ITEMS"
        local aBS_3 = not aBW_3
        local aBU_3 = aBV_1
        local aCb = if aBU_3 then 1 else 0
        local aB9 = 950 * aCb + 3554 * (1 - aCb)
        local aCa = 350 * aCb + 2235 * (1 - aCb)
        if not ((aB9 * 541 + aCa * 3765 + aB9 * aCa) % 16777213 == 2164200) then
            aBU_3 = aBS_3
        end
        if aBR_3 and (aBU_3 or not aBX_2) then
            fns.aO8_13("Sell", "Empty")
        else
            local aBR_4 = typeof(aBY_1) == "string" and aBY_1
            local aBS_6 = aBR_4 or "Waiting"
            fns.aO8_13("Sell", aBS_6)
        end
    end
end
function fns.fn2428(nW, nX)
    if typeof(nW) ~= "table" then
        return -1
    end
    local arf = true
    for k in nX do
        arf = false
        break
    end
    local Type = nW.Type
    if Type == "NormalSpins" or Type == "PremiumSpins" or Type == "Spins" then
        local arh_2 = not arf
        if arh_2 ~= false then
            arh_2 = nX.Spins ~= true
        end
        if arh_2 then
            return -1
        end
        return 0.5
    end
    local arh_3 = nW.Rarity
    local ari_1 = arh_3 == ""
    local arj_1 = typeof(arh_3) ~= "string" or ari_1
    if arj_1 then
        arh_3 = "Common"
    end
    local ari_2 = not arf
    if ari_2 ~= false then
        ari_2 = nX[arh_3] ~= true
    end
    if ari_2 then
        return -1
    end
    local arh_4 = afH[arh_3] or 0
    if Type == "Equipment" or Type == "Weapon" or Type == "RarityWeapon" then
        arh_4 += 0.25
    end
    return arh_4
end
function fns.fn2434()
    local auN_1
    local auL_1, auL_4
    local auK_1, auK_4
    if aez("AutoMagicUnleashed") then
        return false, "Magic Unleashed enabled"
    end
    local auJ = fns.aO8_1()
    if not auJ then
        return false, "Lobby only"
    end
    auK_1, auL_1 = aO8_132(auJ, "GetBossRushAccessState")
    local auM = auK_1 and typeof(auL_1) == "table" and auL_1.Unlocked == false
    local auM_1
    if auM then
        local auK_2 = typeof(auL_1.Reason) == "string" and auL_1.Reason
        return false, auK_2 or "Locked"
    end
    local auK_3 = aO8_103("BossRushFinal", "Cursed King")
    local auL_3 = fns.aO8_14("BossRushSkip", 0)
    aO8_132(auJ, "RequestSelectMode", "BossRush")
    aO8_132(auJ, "RequestSelectFinalBoss", auK_3)
    aO8_132(auJ, "RequestSelectSkipFloor", auL_3)
    auK_4, auL_4, auN_1, auM_1 = aO8_132(auJ, "RequestEnter")
    if auK_4 and auL_4 and auN_1 then
        return true
    end
    local auJ_2 = typeof(auM_1) == "string" and auM_1
    local auK_6 = auJ_2
    if not auK_6 then
        local auJ_3 = typeof(auN_1) == "string" and auN_1
        auK_6 = auJ_3 or "Failed"
    end
    return false, auK_6
end
function fns.fn2436(CM, CN)
    local aCJ = typeof(CM) == "string" and CM
    local aCJ_1 = aCJ or "Spun"
    local aCK_1 = CN ~= ""
    local aCL = typeof(CN) == "string" and aCK_1
    if aCL then
        aCJ_1 = aCJ_1 .. " " .. CN
    end
    return aCJ_1
end
function fns.fn2462()
    if not aO8_113() then
        return false
    end
    pcall(function()
        Parry:FireServer()
    end)
    return true
end
function fns.fn2509(wV, wW)
    wV.CFrame = wW
    wV.AssemblyLinearVelocity = Vector3.zero
    wV.AssemblyAngularVelocity = Vector3.zero
end
function fns.fn2612(wb)
    local axa = wb and wb:FindFirstChildOfClass("AnimationController")
    local axb = axa
    if axa then
        axa = axb:FindFirstChildOfClass("Animator")
    end
    local axb_1 = axa
    if not axb_1 then
        return false
    end
    for k, v in axb_1:GetPlayingAnimationTracks() do
        local Animation = v.Animation
        local axb_2 = Animation and Animation.AnimationId and Animation.AnimationId:match("%d+")
        if axb_2 == fns.aO8_70 then
            return true
        end
    end
    return false
end
function fns.fn2637()
    fns.aO8_69.state = nil
    fns.aO8_69.at = 0
end
function fns.fn2641(vV, vW)
    local aw2 = vV
    if aw2 then
        local aw3_1 = (vV:FindFirstChild("Protective_Dome"))
        if not aw3_1 then
            local aw4 = vW and vW:FindFirstChild("Protective_Dome")
            aw3_1 = aw4
        end
        aw2 = aw3_1
    end
    local aw3_2 = aw2
    if aw2 then
        aw2 = aw3_2:IsA("BasePart")
    end
    if aw2 then
        aw2 = aw3_2.Transparency < 0.95
    end
    if aw2 then
        return aw3_2
    end
    return nil
end
function fns.fn2668()
    local aA6_1
    local aA5_1
    if aez("AutoMagicUnleashed") then
        return
    end
    local aBa = if not aez("AutoCreateDungeon") then 1 else 0
    if aBa == 1 then
        if fns.aO8_68.Create ~= "Idle" then
            fns.aO8_13("Create", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.create < 2 then
        return
    end
    local aA1 = fns.aO8_1()
    if not aA1 then
        fns.aO8_13("Create", "Lobby only")
        return
    end
    fns.aO8_42.create = os.clock()
    local aA2 = aO8_103("LobbyDungeon", "Bandits Den")
    local aA2_2
    local aA3 = fns.aO8_33.DungeonIdMap[aA2] or aA2
    local aA3_2
    local aA3_1 = aO8_103("LobbyDifficulty", "Easy")
    local aA4 = aez("LobbySoloFriendsOnly")
    aO8_132(aA1, "RequestSelectMode", "Dungeon")
    aO8_132(aA1, "RequestSelectDungeon", aA3)
    aO8_132(aA1, "RequestSelectDifficulty", aA3_1)
    aO8_132(aA1, "RequestSetFriendsOnly", aA4)
    if aA4 then
        aA2_2, aA3_2, aA6_1, aA5_1 = aO8_132(aA1, "RequestStartSoloRun")
    else
        aA2_2, aA3_2, aA6_1, aA5_1 = aO8_132(aA1, "RequestStartPodQueue")
    end
    if aA2_2 and aA3_2 then
        fns.aO8_13("Create", "Starting")
    else
        local aA1_2 = typeof(aA5_1) == "string" and aA5_1
        local aA2_3 = aA1_2
        if not aA2_3 then
            local aA1_3 = typeof(aA6_1) == "string" and aA6_1
            aA2_3 = aA1_3 or "Failed"
        end
        fns.aO8_13("Create", aA2_3)
    end
end
function fns.fn2675()
    local aFz = afY()
    if not aFz then
        return 0
    end
    local aFA = 0
    for i, child in ipairs(aFz:GetChildren()) do
        if string.match(child.Name, "^Room_%d+$") then
            aFA += 1
        end
    end
    return aFA
end
function fns.fn2698(pE)
    if not pE then
        return false
    end
    local asm = pE
    while true do
        if not (asm and asm ~= fns.PlayerGui) then
            return true
        end
        if asm:IsA("LayerCollector") then
            if asm.Enabled == false then
                return false
            end
            asm = asm.Parent
        elseif asm:IsA("GuiObject") then
            if asm.Visible == false then
                break
            end
            local asn_1 = asm:IsA("CanvasGroup") and asm.GroupTransparency >= 0.99
            if asn_1 then
                return false
            end
            asm = asm.Parent
        else
            asm = asm.Parent
        end
    end
    return false
end
function fns.fn2720()
    Library.FeatureAPI.Unloaded = true
    if Library.FeatureAPI.ClearProfessorDodge then
        Library.FeatureAPI.ClearProfessorDodge()
    end
    if Library.FeatureAPI.SetFpsBoost then
        Library.FeatureAPI.SetFpsBoost(false)
    end
    local avT = typeof(getgenv) == "function" and getgenv().__OuroborosDungeonLootrLib == Library
    if avT then
        getgenv().__OuroborosDungeonLootrLib = nil
    end
end
function fns.fn2738()
    Knit = require(aO8_129.Packages.Knit)
end
function fns.fn2740()
    aO8_116(fns.aO8_33.DISCORD_INVITE, "Copied Discord invite to clipboard")
end
function fns.fn2762(aY)
    local floor = math.floor
    local aht = tonumber(aY) or 0
    local ahu = floor(aht)
    local ahs_1 = tostring(ahu)
    local aht_1 = ahs_1:reverse():gsub("(%d%d%d)", "%1,"):reverse()
    return (aht_1:gsub("^,", ""))
end
function fns.fn2772()
    local atu_1
    local att_1
    if not Knit then
        return nil
    end
    att_1, atu_1 = pcall(function()
        return Knit.GetService("DungeonQueueService")
    end)
    if att_1 and atu_1 and atu_1.RequestStartSoloRun then
        return atu_1
    end
    return nil
end
function fns.fn2776()
    local azf_3, azf_4
    local azc_11
    local ay4 = Library.Unloaded or Library.FeatureAPI.Unloaded
    local ay4_11, ay4_13, ay4_19
    if ay4 then
        afK()
        fns.aO8_24()
        return false
    end
    local Raid_NPCs = fns.aO8_81:FindFirstChild("Raid_NPCs")
    local ay5 = Raid_NPCs and Raid_NPCs:FindFirstChild(aO8_118)
    local ay6 = ay5
    if ay5 then
        ay5 = ay6:FindFirstChild("HumanoidRootPart")
    end
    local ay7 = ay5
    local ay5_1 = fns.aO8_58()
    local ay8 = ad8()
    local ay9 = os.clock()
    local ay9_2
    local aza = not ay5_1 or not ay8 or ay8.Health <= 0
    local aza_9, aza_12, aza_14
    if aza then
        afK()
        fns.aO8_24()
        return false
    end
    local aza_1 = aez("LeaveMapNuke") and ay7 and ay6:GetAttribute("Dead") ~= true
    if aza_1 then
        if aO8_117.boss ~= ay6 then
            afK()
            aO8_117.boss = ay6
        end
        if fns.aO8_60(ay6, ay7, ay5_1, ay9, Raid_NPCs) then
            local aza_2 = aO8_117.active
            local azj_1 = if aza_2 then 1 else 0
            local azh_1 = 1413 * azj_1 + 2888 * (1 - azj_1)
            local azi_1 = 2529 * azj_1 + 47 * (1 - azj_1)
            if not ((azh_1 * 4084 + azi_1 * 2681 + azh_1 * azi_1) % 16777213 == 16124418) then
                aza_2 = aO8_117.barrage
            end
            if aza_2 then
                afK()
                aO8_117.boss = ay6
            end
            return true
        elseif not aez("AutoDodgeDarkProfessor") then
            afK()
            return false
        else
            local aza_3 = not ay7 or ay6:GetAttribute("Dead") == true
            if aza_9 then
                afK()
                return false
            end
            if aO8_117.boss ~= ay6 then
                afK()
                aO8_117.boss = ay6
            end
            if fns.aO8_7(Raid_NPCs) then
                afK()
                return false
            end
            local aza_4 = ay5_1.Position - ay7.Position
            local azb_1 = Vector3.new(aza_4.X, 0, aza_4.Z)
            local azc_1 = fns.aO8_15(Raid_NPCs, ay6)
            local azd_1 = afX()
            if azf_3 then
                local aze_2 = math.abs(aza_4.Y) > 40 or azb_1.Magnitude > 160
                if aze_2 then
                    afK()
                    return false
                end
                return afz(ay6, ay7, ay5_1, ay8, ay9, azd_1, azc_1 ~= nil, true)
            elseif aO8_117.barrage then
                if ay9 < aO8_117.untilAt then
                    return afz(ay6, ay7, ay5_1, ay8, ay9, azd_1, false, false)
                end
                afK()
                return false
            else
                local azc_2 = not aez("SkipCrystal") and aO8_91(Raid_NPCs)
                if ay4_11 then
                    afK()
                    return false
                end
                local AnimationController = ay6:FindFirstChildOfClass("AnimationController")
                local azc_3 = AnimationController and AnimationController:FindFirstChildOfClass("Animator")
                if azc_11 then
                    afK()
                    return false
                end
                local ProfessorDodgeSkills = Options.ProfessorDodgeSkills
                local azc_5 = ProfessorDodgeSkills and ProfessorDodgeSkills.Value
                if typeof(aza_12) ~= "table" then
                    afK()
                    return false
                end
                local azc_6 = fns.aO8_21()
                for k, v in azc_6 do
                end
                if not azf_4 then
                    afK()
                    return false
                end
                if ay4_13 then
                    for k, v in azc_3:GetPlayingAnimationTracks() do
                        local Animation = v.Animation
                        local azd_2 = Animation and Animation.AnimationId:match("%d+")
                        local ay4_6 = azd_2
                        if azd_2 then
                            azd_2 = not fns.aO8_46[ay4_6]
                        end
                        if azd_2 then
                            local azd_3 = azc_6[ay4_6]
                            if not (azd_3 and azd_3.barrage) then
                                if azd_3 and azc_5[azd_3.name] then
                                    local ay4_9 = ay9 + math.max(0, azd_3.hold - v.TimePosition)
                                    if ay4_9 > aO8_117.untilAt then
                                        aO8_117.untilAt = ay4_9
                                        aO8_117.label = azd_3.name
                                    end
                                    aO8_117.reach = math.max(aO8_117.reach, azd_3.reach)
                                end
                            end
                        end
                    end
                end
                if ay9 >= aO8_117.untilAt then
                    afK()
                    return false
                end
                local ay4_10 = math.max(aO8_117.reach, aek) + agm
                if not aO8_117.active and azb_1.Magnitude >= ay4_10 then
                    aO8_117.goal = ay5_1.Position
                end
                local aza_8 = -1
                if aO8_117.goal then
                    aza_8 = (Vector3.new(aO8_117.goal.X, 0, aO8_117.goal.Z) - Vector3.new(ay7.Position.X, 0, ay7.Position.Z)).Magnitude
                end
                if aza_8 < ay4_10 - 4 and ay9 >= aO8_117.nextSearch then
                    aO8_117.nextSearch = ay9 + fns.aO8_38
                    local ay9_1 = fns.aO8_5(ay6, ay7, ay5_1, ay8, ay4_10)
                    if ay9_2 then
                        aO8_117.goal = ay9_1
                        aza_8 = (Vector3.new(ay9_1.X, 0, ay9_1.Z) - Vector3.new(ay7.Position.X, 0, ay7.Position.Z)).Magnitude
                    end
                end
                if not aO8_117.goal then
                    aO8_117.goal = ay5_1.Position
                    aza_8 = azb_1.Magnitude
                end
                aO8_117.active = true
                fns.aO8_37()
                ay5_1.CFrame = CFrame.lookAt(aO8_117.goal, Vector3.new(ay7.Position.X, aO8_117.goal.Y, ay7.Position.Z))
                ay5_1.AssemblyLinearVelocity = Vector3.zero
                ay5_1.AssemblyAngularVelocity = Vector3.zero
                local ay5_2 = aO8_117.label or "Attack"
                if aza_14 + 1 < ay4_19 then
                    fns.aO8_13("ProfessorDodge", string.format("%s (%d/%d)", ay5_2, math.floor(aza_8), math.floor(ay4_10)))
                else
                    fns.aO8_13("ProfessorDodge", "Dodging " .. ay5_2)
                end
                return true
            end
        end
    else
        if adH.active then
            fns.aO8_60(ay6, ay7, ay5_1, ay9, Raid_NPCs)
        end
        if not aez("AutoDodgeDarkProfessor") then
            afK()
            return false
        end
        aza_9 = not ay7 or ay6:GetAttribute("Dead") == true
        if aza_9 then
            afK()
            return false
        end
        if aO8_117.boss ~= ay6 then
            afK()
            aO8_117.boss = ay6
        end
        if fns.aO8_7(Raid_NPCs) then
            afK()
            return false
        end
        local aza_10 = ay5_1.Position - ay7.Position
        local azb_2 = Vector3.new(aza_10.X, 0, aza_10.Z)
        local azc_8 = fns.aO8_15(Raid_NPCs, ay6)
        local azd_4 = afX()
        azf_3 = azc_8 ~= nil or #azd_4 > 0
        if azf_3 then
            local aze_4 = math.abs(aza_10.Y) > 40 or azb_2.Magnitude > 160
            if aze_4 then
                afK()
                return false
            end
            return afz(ay6, ay7, ay5_1, ay8, ay9, azd_4, azc_8 ~= nil, true)
        elseif aO8_117.barrage then
            if ay9 < aO8_117.untilAt then
                return afz(ay6, ay7, ay5_1, ay8, ay9, azd_4, false, false)
            end
            afK()
            return false
        else
            local azc_9 = not aez("SkipCrystal") and aO8_91(Raid_NPCs)
            ay4_11 = azc_9
            if ay4_11 then
                afK()
                return false
            end
            local AnimationController = ay6:FindFirstChildOfClass("AnimationController")
            local azc_10 = AnimationController and AnimationController:FindFirstChildOfClass("Animator")
            ay4_13 = azc_10
            azc_11 = math.abs(aza_10.Y) > 25
            local azj_3 = if azc_11 then 1 else 0
            local azh_3 = 2388 * azj_3 + 231 * (1 - azj_3)
            local azi_3 = 3845 * azj_3 + 3351 * (1 - azj_3)
            if not ((azh_3 * 1638 + azi_3 * 2620 + azh_3 * azi_3) % 16777213 == 6390091) then
                azc_11 = azb_2.Magnitude > 160
            end
            if azc_11 then
                afK()
                return false
            end
            local ProfessorDodgeSkills = Options.ProfessorDodgeSkills
            aza_12 = ProfessorDodgeSkills and ProfessorDodgeSkills.Value
            if typeof(aza_12) ~= "table" then
                afK()
                return false
            end
            local azc_13 = fns.aO8_21()
            azf_4 = false
            for k, v in azc_13 do
                if not v.barrage then
                    if aza_12[v.name] then
                        azf_4 = true
                    end
                end
            end
            if not azf_4 then
                afK()
                return false
            end
            if ay4_13 then
                for k, v in ay4_13:GetPlayingAnimationTracks() do
                    local Animation = v.Animation
                    local azd_5 = Animation and Animation.AnimationId:match("%d+")
                    local ay4_15 = azd_5
                    if azd_5 then
                        azd_5 = not fns.aO8_46[ay4_15]
                    end
                    if azd_5 then
                        local azd_6 = azc_13[ay4_15]
                        if not (azd_6 and azd_6.barrage) then
                            if azd_6 and aza_12[azd_6.name] then
                                local ay4_18 = ay9 + math.max(0, azd_6.hold - v.TimePosition)
                                if ay4_18 > aO8_117.untilAt then
                                    aO8_117.untilAt = ay4_18
                                    aO8_117.label = azd_6.name
                                end
                                aO8_117.reach = math.max(aO8_117.reach, azd_6.reach)
                            end
                        end
                    end
                end
            end
            if ay9 >= aO8_117.untilAt then
                afK()
                return false
            end
            ay4_19 = math.max(aO8_117.reach, aek) + agm
            if not aO8_117.active and azb_2.Magnitude >= ay4_19 then
                aO8_117.goal = ay5_1.Position
            end
            aza_14 = -1
            if aO8_117.goal then
                aza_14 = (Vector3.new(aO8_117.goal.X, 0, aO8_117.goal.Z) - Vector3.new(ay7.Position.X, 0, ay7.Position.Z)).Magnitude
            end
            if aza_14 < ay4_19 - 4 and ay9 >= aO8_117.nextSearch then
                aO8_117.nextSearch = ay9 + fns.aO8_38
                ay9_2 = fns.aO8_5(ay6, ay7, ay5_1, ay8, ay4_19)
                if ay9_2 then
                    aO8_117.goal = ay9_2
                    aza_14 = (Vector3.new(ay9_2.X, 0, ay9_2.Z) - Vector3.new(ay7.Position.X, 0, ay7.Position.Z)).Magnitude
                end
            end
            if not aO8_117.goal then
                aO8_117.goal = ay5_1.Position
                aza_14 = azb_2.Magnitude
            end
            aO8_117.active = true
            fns.aO8_37()
            ay5_1.CFrame = CFrame.lookAt(aO8_117.goal, Vector3.new(ay7.Position.X, aO8_117.goal.Y, ay7.Position.Z))
            ay5_1.AssemblyLinearVelocity = Vector3.zero
            ay5_1.AssemblyAngularVelocity = Vector3.zero
            local ay5_3 = aO8_117.label or "Attack"
            if aza_14 + 1 < ay4_19 then
                fns.aO8_13("ProfessorDodge", string.format("%s (%d/%d)", ay5_3, math.floor(aza_14), math.floor(ay4_19)))
            else
                fns.aO8_13("ProfessorDodge", "Dodging " .. ay5_3)
            end
            return true
        end
    end
end
function fns.fn2778()
    for i, v in ipairs(fns.aO8_10) do
        local aEZ = fns.aO8_68[v]
        if aEZ and aEZ ~= "Idle" and aEZ ~= "Claimed" and aEZ ~= "None" then
            return v .. ": " .. aEZ
        end
    end
    return "Idle"
end
function fns.fn2798()
    local amH = 0
    for k, v in adU:GetAttributes() do
        local amI = typeof(k) == "string" and string.sub(k, 1, 8) == "RunBuff_"
        if amI then
            local amI_1 = v ~= 0
            local amJ = typeof(v) == "number" and amI_1
            if amJ then
                amH += math.abs(v)
            end
        end
    end
    return amH
end
function fns.fn2838()
    local aDQ_1
    local aDP_1
    if not Knit then
        return nil
    end
    aDP_1, aDQ_1 = pcall(function()
        return Knit.GetController("BoostSelectionController")
    end)
    if aDP_1 then
        return aDQ_1
    end
    return nil
end
function fns.fn2865(r2)
    local at4 = (fns.aO8_33.RARITY_INDEX[r2.Rarity] or 0) * 1000
    if r2.Slot == "Ring" then
        local at3_1 = tonumber(r2.BaseDamage) or 0
        at4 += at3_1 * 10
    else
        local at3_2 = r2.Slot == "Body" or r2.Slot == "Head"
        local at5_1 = at3_2 and typeof(r2.GuaranteedStat) == "table"
        if at5_1 then
            local at3_3 = tonumber(r2.GuaranteedStat.Value) or 0
            at4 += at3_3 * 10
        end
    end
    if typeof(r2.Stats) == "table" then
        for k, v in r2.Stats do
            if typeof(v) == "table" then
                local abs = math.abs
                local at5_2 = tonumber(v.Value) or 0
                at4 += abs(at5_2) * 2
            end
        end
    end
    local at3_5 = typeof(r2.EnchantLevel) == "number" and r2.EnchantLevel > 0
    if at3_5 then
        at4 += r2.EnchantLevel * 50
    end
    return at4
end
function fns.fn2890()
    local aFJ_1
    local aFI = afY()
    local aFI_1
    if not aFI then
        return "-"
    end
    aFJ_1, aFI_1 = fns.aO8_80()
    if aFI_1 then
        return "Boss"
    elseif typeof(aFJ_1) == "number" then
        return "Combat"
    else
        return "Clear"
    end
end
function fns.fn2892()
    local atH_1
    local atG_1
    if not Knit then
        return nil
    end
    atG_1, atH_1 = pcall(function()
        return Knit.GetService("SummoningService")
    end)
    if atG_1 then
        return atH_1
    end
    return nil
end
function fns.fn2900()
    local atQ_1
    local atP_1
    if not Knit then
        return nil
    end
    atP_1, atQ_1 = pcall(function()
        return Knit.GetService("EquipmentService")
    end)
    if atP_1 then
        return atQ_1
    end
    return nil
end
function fns.fn2923(kV)
    local aph_4
    local apa = aO8_110(kV)
    if not apa then
        return nil
    end
    local Position = apa.Position
    local apc = aO8_103("FarmMode", "Behind")
    local apd = aO8_134()
    local preferDist = fns.aO8_28.preferDist
    if apc == "Orbit" then
        local apf_1 = fns.aO8_14("OrbitHeight", 6)
        local apg_1 = fns.aO8_14("OrbitRadius", 8)
        if apd then
            apg_1 = math.max(apg_1, preferDist * 0.7)
            apf_1 = math.max(apf_1, 4)
        end
        local aph_1 = fns.aO8_14("OrbitSpinSpeed", 1.75)
        local api = os.clock() * aph_1
        local aph_2 = Vector3.new(math.cos(api) * apg_1, apf_1, math.sin(api) * apg_1)
        return Position + aph_2, Position, fns.aO8_14("OrbitMoveSpeed", 70), "tilt"
    elseif apc == "Behind" then
        local apc_1 = fns.aO8_14("BehindHeight", 3)
        local apf_2 = fns.aO8_14("BehindDistance", 6)
        if apd then
            local apf_3 = math.max(apf_2, preferDist)
            local apc_2 = math.max(apc_1, 2)
            local apg_2 = fns.aO8_56(Position, apa)
            return Position + apg_2 * apf_3 + Vector3.new(0, apc_2, 0), Position, fns.aO8_14("BehindMoveSpeed", 60), "flat"
        end
        local LookVector = apa.CFrame.LookVector
        local aph_3 = Vector3.new(LookVector.X, 0, LookVector.Z)
        if aph_3.Magnitude < 0.05 then
            aph_4 = Vector3.new(0, 0, 1)
        else
            aph_4 = aph_3.Unit
        end
        return Position - aph_4 * apf_2 + Vector3.new(0, apc_1, 0), Position, fns.aO8_14("BehindMoveSpeed", 60), "flat"
    else
        local apc_3 = fns.aO8_14("OverheadHeight", 10)
        if apd then
            local apd_1 = fns.aO8_56(Position, apa)
            local apa_1 = math.max(preferDist * 0.55, 14)
            return Position + apd_1 * apa_1 + Vector3.new(0, apc_3, 0), Position, fns.aO8_14("OverheadMoveSpeed", 60), "flat"
        end
        return Position + Vector3.new(0, apc_3, 0), Position, fns.aO8_14("OverheadMoveSpeed", 60), "down"
    end
end
function fns.fn2932(eV)
    local akd_1
    local aj9 = afY()
    local aka = not aj9 or typeof(eV) ~= "Vector3"
    if aka then
        return nil
    end
    local aka_1 = nil
    local akb
    for i, child in ipairs(aj9:GetChildren()) do
        local aj9_1 = tonumber(string.match(child.Name, "^Room_(%d+)$"))
        if aj9_1 then
            local Zone = child:FindFirstChild("Zone")
            local ake = Zone and Zone:IsA("BasePart")
            if ake then
                akd_1 = Zone.Position
            else
                akd_1 = child:GetPivot().Position
            end
            local Magnitude = Vector3.new(akd_1.X - eV.X, 0, akd_1.Z - eV.Z).Magnitude
            if not akb or Magnitude < akb then
                akb = Magnitude
                aka_1 = aj9_1
            end
        end
    end
    return aka_1
end
function fns.fn2971()
    if not aO8_104 then
        return false
    elseif aO8_84() > fns.aO8_73 then
        aO8_96(aO8_104)
        return true
    else
        return false
    end
end
function fns.fn3027()
    local au3_1
    local au2_1
    au2_1, au3_1 = pcall(function()
        return require(aO8_129.GameInfo.ChallengeData)
    end)
    local au4 = au2_1 and typeof(au3_1) == "table"
    if au4 then
        return au3_1
    end
    return nil
end
function fns.fn3063(wY, wZ, w_, w0, w1)
    if not aez("LeaveMapNuke") then
        if adH.active then
            local returnPos = adH.returnPos
            if typeof(returnPos) == "CFrame" then
                fns.aO8_32(w_, returnPos)
            elseif wZ then
                fns.aO8_32(w_, wZ.CFrame)
            end
        end
        adH.active = false
        adH.returnPos = nil
        adH.untilAt = 0
        adH.seenCrystal = false
        adH.startedAt = 0
        if fns.aO8_68.MapNuke ~= "Idle" then
            fns.aO8_13("MapNuke", "Idle")
        end
        return false
    end
    local ax1_2 = aO8_91(w1)
    local ax2 = ax1_2 and aez("SkipCrystal")
    if ax2 then
        adH.seenCrystal = true
    end
    local ax2_1 = adY(wY)
    local ax3_1 = ax2_1 or adH.seenCrystal and not ax1_2
    local ax3_2 = fns.aO8_57()
    if adH.active then
        if ax3_2 then
            fns.aO8_32(w_, ax3_2)
        end
        if ax2_1 then
            adH.untilAt = math.max(adH.untilAt, w0 + ac6)
        end
        local ax4_1 = ax2_1
        local ax9 = if ax4_1 then 1 else 0
        local ax7 = 3891 * ax9 + 2940 * (1 - ax9)
        local ax8 = 2875 * ax9 + 807 * (1 - ax9)
        if not ((ax7 * 1734 + ax8 * 3702 + ax7 * ax8) % 16777213 == 11799656) then
            ax4_1 = w0 < adH.untilAt
        end
        if ax4_1 and w0 - adH.startedAt < aeV then
            fns.aO8_13("MapNuke", "Waiting out nuke")
            return true
        end
        local ax4_2 = adH.returnPos
        if wZ then
            ax4_2 = wZ.CFrame
        end
        if typeof(ax4_2) == "CFrame" then
            fns.aO8_32(w_, ax4_2)
        end
        adH.active = false
        adH.returnPos = nil
        adH.untilAt = 0
        adH.seenCrystal = false
        adH.startedAt = 0
        fns.aO8_13("MapNuke", "Idle")
        return false
    elseif not ax3_1 then
        if fns.aO8_68.MapNuke ~= "Idle" then
            fns.aO8_13("MapNuke", "Idle")
        end
        return false
    elseif not ax3_2 then
        fns.aO8_13("MapNuke", "No exit spawn")
        return false
    else
        local ax4_3 = wZ and wZ.CFrame or w_.CFrame
        adH.returnPos = ax4_3
        adH.active = true
        adH.startedAt = w0
        local ax2_2 = ax2_1 and ac6 or 6
        adH.untilAt = w0 + ax2_2
        fns.aO8_37()
        aO8_122.enemy = nil
        aO8_122.untilAt = 0
        fns.aO8_32(w_, ax3_2)
        fns.aO8_13("MapNuke", "Leaving map")
        return true
    end
end
function fns.fn3103(mW, mX)
    if typeof(mW) ~= "Vector3" then
        return mW
    end
    local aqE = afk(aej(mX))
    if typeof(aqE) ~= "Vector3" then
        return mW
    end
    local aqG = mW.X + (aqE.X - mW.X) * 0.4
    local aqH = mW.Z + (aqE.Z - mW.Z) * 0.4
    local aqF = Vector3.new(aqG - aqE.X, 0, aqH - aqE.Z)
    local aqI = 26
    if aqF.Magnitude > aqI then
        local aqJ = aqF.Unit * aqI
        aqG = aqE.X + aqJ.X
        aqH = aqE.Z + aqJ.Z
    end
    return Vector3.new(aqG, mW.Y, aqH)
end
function fns.fn3106()
    afK()
    fns.aO8_24()
end
function fns.worker()
    while Library and not Library.Unloaded do
        adX()
        task.wait(1)
    end
end
function fns.fn3149()
    if aO8_103("FailsafeAction", "Rejoin") == "Return Lobby" then
        local aDu = aeU("BossRushService", "RequestReturn") or aeU("ChallengeRunService", "RequestReturn") or aeU("RaidRunService", "RequestReturn")
        local aDy = if aDu then 1 else 0
        local aDw = 3631 * aDy + 2370 * (1 - aDy)
        local aDx = 3623 * aDy + 2770 * (1 - aDy)
        if not ((aDw * 2020 + aDx * 3520 + aDw * aDx) % 16777213 == 16465480) then
            aDu = aeU("DungeonRunService", "RequestReturn")
        end
        if aDu then
            return
        end
    end
    pcall(function()
        af6:Teleport(game.PlaceId, adU)
    end)
end
function fns.fn3161()
    local aty_1
    local atx_1
    if not Knit then
        return nil
    end
    atx_1, aty_1 = pcall(function()
        return Knit.GetService("ShopService")
    end)
    if atx_1 then
        return aty_1
    end
    return nil
end
function fns.fn3171()
    Library.FeatureAPI.ClearProfessorDodge()
end
function fns.fn3198(CQ, CR, CS, CT, CU)
    local aCP_1
    local aCN = next(CS) == nil or CS[CQ] == true
    if not CT then
        aCP_1 = true
    elseif next(CU) == nil then
        local aCN_1 = CR ~= ""
        local aCQ = typeof(CR) == "string" and aCN_1
        aCP_1 = aCQ
    else
        local aCN_2 = typeof(CR) == "string" and CU[CR] == true
        aCP_1 = aCN_2
    end
    return aCN and aCP_1
end
function fns.fn3205(ea)
    if not ea then
        return false
    end
    local Parent = ea.Parent
    if Parent and Parent.Name == "Raid_NPCs" then
        return true
    end
    local ajz_1 = ea:GetAttribute("DungeonRun") == "Raids"
    local ajE = if ajz_1 then 1 else 0
    local ajC = 1138 * ajE + 3510 * (1 - ajE)
    local ajD = 3436 * ajE + 818 * (1 - ajE)
    if not ((ajC * 2213 + ajD * 2049 + ajC * ajD) % 16777213 == 13468926) then
        ajz_1 = ea:GetAttribute("ChallengeDungeon") == "Raids"
    end
    return ajz_1
end
function fns.fn3212()
    if not aez("AutoReplay") then
        if fns.aO8_68.Replay ~= "Idle" then
            fns.aO8_13("Replay", "Idle")
        end
        return false
    elseif os.clock() - fns.aO8_42.replay < 1.5 then
        return fns.aO8_19()
    else
        local aC8 = fns.aO8_27()
        local aC9 = aC8 and aC8:FindFirstChild("Dungeon_Container")
        local aC8_1 = aC9
        if aC9 then
            aC9 = aC8_1:FindFirstChild("Completion_Info")
        end
        local aC8_2 = aC9
        if aC9 then
            aC9 = adl(aC8_2)
        end
        if not aC9 then
            if fns.aO8_68.Replay ~= "Idle" then
                fns.aO8_13("Replay", "Idle")
            end
            return false
        end
        local Content = aC8_2:FindFirstChild("Content")
        local aC8_3 = Content and Content:FindFirstChild("ActionButtons")
        local aC9_2 = aC8_3
        if aC8_3 then
            aC8_3 = aC9_2:FindFirstChild("ReplayButton")
        end
        local aC9_3 = aC8_3
        fns.aO8_42.replay = os.clock()
        if fns.aO8_29(aC9_3) then
            fns.aO8_13("Replay", "Replaying")
            return true
        end
        local aC8_4 = aeU("BossRushService", "RequestReplay") or aeU("DungeonRunService", "RequestReplay")
        if aC8_4 then
            fns.aO8_13("Replay", "Replaying")
            return true
        end
        fns.aO8_13("Replay", "Failed")
        return false
    end
end
function fns.fn3221(eu)
    if not fns.aO8_67(eu) then
        return nil
    elseif not fns.aO8_71(eu) then
        return nil
    else
        local ajQ = aeX(eu) and eu:IsA("BasePart")
        if ajQ then
            local Position = eu.Position
            local ajR_1 = Position ~= Position or math.abs(Position.Y) > 1000000
            if ajR_1 then
                return nil
            end
            return eu
        end
        local ajQ_2 = eu:FindFirstChild("HumanoidRootPart") or eu.PrimaryPart
        local ajR_2 = ajQ_2
        local ajQ_3 = not ajR_2 or not ajR_2:IsA("BasePart")
        local ajS = ajQ_3 and aeX(eu)
        if ajS then
            ajR_2 = eu:FindFirstChildWhichIsA("BasePart", true)
        end
        local ajQ_4 = not ajR_2 or not ajR_2:IsA("BasePart")
        if ajQ_4 then
            return nil
        end
        local Position = ajR_2.Position
        local ajS_1 = Position ~= Position or math.abs(Position.Y) > 1000000
        if ajS_1 then
            return nil
        end
        local attr3 = adU:GetAttribute("CurrentDungeon")
        local ajS_2 = attr3 ~= ""
        local ajT = typeof(attr3) == "string" and ajS_2
        if ajT then
            local attr2 = eu:GetAttribute("DungeonRun")
            local attr = eu:GetAttribute("ChallengeDungeon")
            local ajU = attr2 ~= ""
            local ajV = typeof(attr2) == "string" and ajU
            local ajU_1 = ajV
            if not ajU_1 then
                local ajV_1 = attr ~= ""
                local ajW = typeof(attr) == "string" and ajV_1
                ajU_1 = ajW
            end
            if ajU_1 then
                ajU_1 = attr2 ~= attr3
            end
            if ajU_1 then
                ajU_1 = attr ~= attr3
            end
            if ajU_1 then
                ajU_1 = not ady(eu)
            end
            if ajU_1 then
                ajU_1 = not aeX(eu)
            end
            if ajU_1 then
                return nil
            end
            return ajR_2
        end
        return ajR_2
    end
end
function fns.fn3227()
    local aEE = fns.aO8_35()
    if not aEE then
        return nil, 0
    end
    local EquippedPotion = aEE.EquippedPotion
    local aEG = EquippedPotion == ""
    local aEH = typeof(EquippedPotion) ~= "string" or aEG
    if aEH then
        return EquippedPotion, 0
    end
    local aEG_1 = aEE.Potions and tonumber(aEE.Potions[EquippedPotion])
    local aEE_1 = aEG_1
    local aEL = if aEE_1 then 1 else 0
    local aEJ = 3151 * aEL + 136 * (1 - aEL)
    local aEK = 2913 * aEL + 1126 * (1 - aEL)
    if not ((aEJ * 2434 + aEK * 698 + aEJ * aEK) % 16777213 == 2104458) then
        aEE_1 = 0
    end
    return EquippedPotion, aEE_1
end
function fns.fn3233()
    local Raid_NPCs = fns.aO8_81:FindFirstChild("Raid_NPCs")
    if not Raid_NPCs then
        return false
    end
    for i, child in Raid_NPCs:GetChildren() do
        if aO8_110(child) then
            return true
        end
    end
    return false
end
function fns.fn3273()
    local attr = adU:GetAttribute("CurrentDungeon")
    local aFw = attr ~= ""
    local aFx = typeof(attr) == "string" and aFw
    if aFx then
        return attr
    end
    local aFv_1 = afY()
    if aFv_1 then
        return (aFv_1.Name:gsub("^Generated_", ""):gsub("_%x+$", ""))
    end
    return "Lobby"
end
function fns.fn3288()
    return ael
end
function fns.fn3300(le, lf, lg)
    local Position = le.Position
    local apo = Vector3.new(lf.X - Position.X, 0, lf.Z - Position.Z)
    local apo_1
    if apo.Magnitude < 0.25 then
        apo_1 = Vector3.new(1, 0, 0)
    else
        apo_1 = apo.Unit
    end
    local app = lg or 6
    return Position + apo_1 * app + Vector3.new(0, 3, 0), Position
end
aO8_106 = nil
aO8_91 = nil
fns.aO8_73 = nil
fns.aO8_57 = nil
fns.aO8_23 = nil
fns.aO8_3 = nil
ac6 = nil
ac8 = nil
aO8_133 = nil
aO8_116 = nil
aO8_98 = nil
aO8_82 = nil
fns.aO8_65 = nil
fns.aO8_50 = nil
fns.aO8_33 = nil
fns.aO8_15 = nil
adi = nil
adj = nil
adl = nil
aO8_127 = nil
aO8_111 = nil
aO8_93 = nil
fns.aO8_77 = nil
fns.aO8_42 = nil
fns.aO8_28 = nil
fns.aO8_8 = nil
adw = nil
ady = nil
adz = nil
local aO8_120
aO8_102 = nil
fns.aO8_68 = nil
fns.aO8_53 = nil
fns.aO8_36 = nil
fns.aO8_19 = nil
adH = nil
adI = nil
Toggles = nil
adK = nil
adL = nil
local acZ, ac3, ac7, ac9, adk, adm, adr, adv, adx, adC
aO8_130 = nil
aO8_113 = nil
aO8_95 = nil
fns.aO8_79 = nil
fns.aO8_62 = nil
fns.aO8_46 = nil
fns.aO8_30 = nil
adU = nil
adW = nil
adX = nil
adY = nil
aO8_122 = nil
aO8_107 = nil
aO8_89 = nil
fns.aO8_72 = nil
fns.aO8_56 = nil
fns.aO8_38 = nil
fns.aO8_7 = nil
ad6 = nil
ad7 = nil
ad8 = nil
aO8_134 = nil
aO8_115 = nil
aO8_96 = nil
fns.aO8_81 = nil
fns.aO8_48 = nil
fns.aO8_32 = nil
fns.aO8_13 = nil
aej = nil
aek = nil
ael = nil
aem = nil
Parry = nil
aO8_108 = nil
fns.aO8_76 = nil
fns.aO8_58 = nil
fns.aO8_41 = nil
fns.aO8_25 = nil
fns.aO8_5 = nil
local adT, adV, ad4, ad9, aee, aei, aep, aev, Attack, aex, aey
aez = nil
aO8_118 = nil
aO8_101 = nil
aO8_84 = nil
fns.aO8_67 = nil
fns.aO8_18 = nil
aeH = nil
aeI = nil
aeJ = nil
aeL = nil
aO8_129 = nil
aO8_112 = nil
fns.aO8_61 = nil
fns.aO8_44 = nil
fns.aO8_29 = nil
fns.aO8_10 = nil
aeU = nil
aeV = nil
aeX = nil
aeY = nil
aO8_104 = nil
aO8_88 = nil
fns.aO8_70 = nil
fns.aO8_55 = nil
fns.aO8_37 = nil
fns.aO8_21 = nil
fns.aO8_1 = nil
ae6 = nil
ae7 = nil
aO8_131 = nil
aO8_114 = nil
fns.aO8_64 = nil
fns.aO8_47 = nil
fns.aO8_31 = nil
fns.aO8_12 = nil
afi = nil
afj = nil
afk = nil
afl = nil
local aeE, aeF, aeK, aeO, aeP, aeW, aeZ, ae8, ae9, afc, afd
aO8_124 = nil
aO8_90 = nil
fns.aO8_74 = nil
fns.aO8_39 = nil
fns.aO8_24 = nil
fns.aO8_4 = nil
Options = nil
afx = nil
afz = nil
aO8_117 = nil
aO8_99 = nil
aO8_83 = nil
fns.aO8_66 = nil
fns.PlayerGui = nil
fns.aO8_16 = nil
afH = nil
afI = nil
afJ = nil
afK = nil
afL = nil
aO8_128 = nil
aO8_110 = nil
Library = nil
fns.aO8_78 = nil
fns.aO8_60 = nil
fns.aO8_43 = nil
fns.aO8_27 = nil
fns.aO8_9 = nil
afU = nil
afV = nil
afW = nil
afX = nil
afY = nil
aO8_121 = nil
aO8_103 = nil
aO8_87 = nil
fns.aO8_69 = nil
fns.aO8_54 = nil
fns.aO8_35 = nil
fns.aO8_20 = nil
af6 = nil
af7 = nil
Knit = nil
local afm, MenuGroup, afr, afw, afy, SaveManager, af5
af9 = nil
fns.aO8_80 = nil
fns.aO8_63 = nil
fns.aO8_45 = nil
fns.aO8_11 = nil
agk = nil
agl = nil
agm = nil
aO8_123 = nil
aO8_105 = nil
fns.aO8_71 = nil
fns.aO8_22 = nil
fns.aO8_2 = nil
agv = nil
agw = nil
agx = nil
agy = nil
aO8_132 = nil
aO8_97 = nil
aO8_86 = nil
fns.aO8_49 = nil
fns.aO8_14 = nil
agH = nil
agI = nil
agJ = nil
agK = nil
local aga, agb, agc, agg, Skill, agj, agp, agr, ags, agA, agD, agF
aga = nil
agb = nil
agc = nil
agg = nil
Skill = nil
agj = nil
agp = nil
agr = nil
ags = nil
agA = nil
agD = nil
agF = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
acZ, aO8_129, agA, aeF, agp, aev, agg, ael, af6, fns.aO8_81, afW, ad4, aO8_128, adU, fns.PlayerGui, adI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local aO8_136 = 20
repeat
    aO8_126 = (aO8_136 * 4 + 2) % 5 + 1
    if aO8_126 <= 3 then
        if aO8_126 <= 2 then
            if aO8_126 <= 1 then
                if (ad4 or ael) and (afW or not adI) and (not afW and aeF or not fns.PlayerGui and ael) or not ((ad4 or ael) and (afW or not adI) and (not afW and aeF or not fns.PlayerGui and ael)) then
                    af6 = game:GetService("TeleportService")
                    fns.aO8_81 = game:GetService("Workspace")
                    afW = game:GetService("CollectionService")
                    ad4 = game:GetService("Lighting")
                    aO8_128 = game:GetService("MarketplaceService")
                else
                    ad4 = game:GetService("TeleportService")
                    afW = game:GetService("Workspace")
                    aO8_128 = game:GetService("CollectionService")
                    fns.aO8_81 = game:GetService("Lighting")
                    af6 = game:GetService("MarketplaceService")
                end
                aO8_136 = (aO8_136 + 19) % 40
            else
                if aO8_136 * 8059467 + 6 + 4 >= aO8_136 * 8059467 + 6 + 4 + 6 then
                    acZ = fns.PlayerGui.LocalPlayer
                    adI = acZ:WaitForChild("PlayerGui")
                    adU = fns.fn3288
                else
                    adU = acZ.LocalPlayer
                    fns.PlayerGui = adU:WaitForChild("PlayerGui")
                    adI = fns.fn3288
                end
                aO8_136 = (aO8_136 + 4) % 40
            end
        else
            if (aO8_136 * 3 + 5) * 5 % 4 == ((aO8_136 * 3 + 5) * 5 + 4) % 4 then
                acZ = game:GetService("Players")
            else
                aO8_128 = game:GetService("Players")
            end
            aO8_136 = (aO8_136 + 19) % 40
        end
    elseif aO8_126 <= 4 then
        aO8_126 = (vector.create((aO8_136 * 3 + 5) % 11 + 1, (aO8_136 * 6 + 5) % 13 + 1, (aO8_136 * 2 + 13) % 17 + 1))
        aO8_109 = (vector.create((aO8_136 * 2 + 8) % 11 + 1, (aO8_136 * 2 + 8) % 13 + 1, (aO8_136 * 15 + 8) % 17 + 1))
        aO8_92 = (vector.create((aO8_136 * 4 + 3) % 5 + 1, (aO8_136 * 3 + 4) % 7 + 1, (aO8_136 * 2 + 1) % 9 + 1))
        if math.abs((vector.angle(aO8_126, aO8_109, aO8_92))) - math.abs((vector.angle(aO8_109, aO8_126, aO8_92))) == 4 then
            agA = game:GetService("ReplicatedStorage")
            aO8_129 = game:GetService("RunService")
        else
            aO8_129 = game:GetService("ReplicatedStorage")
            agA = game:GetService("RunService")
        end
        aO8_136 = (aO8_136 + 9) % 40
    else
        if (aO8_136 * 3 + 2) * 5 % 4 == ((aO8_136 * 3 + 2) * 5 + 4) % 4 then
            aeF = game:GetService("UserInputService")
            agp = game:GetService("VirtualUser")
            aev = game:GetService("HttpService")
            agg = game:GetService("GuiService")
            ael = game:GetService("CoreGui")
        else
            agp = game:GetService("UserInputService")
            aeF = game:GetService("VirtualUser")
            ael = game:GetService("HttpService")
            aev = game:GetService("GuiService")
            agg = game:GetService("CoreGui")
        end
        aO8_136 = (aO8_136 + 34) % 40
    end
until (aO8_136 * 27 + 35) % 40 == 30
if getgenv then
    aO8_120, aO8_126 = nil, nil
    aO8_136 = 0
    repeat
        aO8_109 = (aO8_136 * 1 + 1) % 2 + 1
        if aO8_109 <= 1 then
            if (aO8_136 * 2 + 9) * 16 % 3 == ((aO8_136 * 2 + 9) * 16 + 0) % 3 then
                aO8_126 = aO8_120
            else
                aO8_120 = aO8_126
            end
            aO8_136 = (aO8_136 + 5) % 8
        else
            aO8_109 = (vector.create((aO8_136 * 6 + 8) % 11 + 1, (aO8_136 * 10 + 10) % 13 + 1, (aO8_136 * 12 + 9) % 17 + 1))
            aO8_92 = (vector.create((aO8_136 * 7 + 2) % 11 + 1, (aO8_136 * 8 + 8) % 13 + 1, (aO8_136 * 13 + 1) % 17 + 1))
            local aVA = vector.dot(aO8_109, aO8_92)
            if aVA * aVA >= vector.dot(aO8_109, aO8_109) * vector.dot(aO8_92, aO8_92) + 1 then
                getgenv().gethui = aO8_120
                adI = getgenv().__OuroborosDungeonLootrLib
            else
                getgenv().gethui = adI
                aO8_120 = getgenv().__OuroborosDungeonLootrLib
            end
            aO8_136 = (aO8_136 + 3) % 8
        end
    until (aO8_136 * 1 + 5) % 8 == 5
    if aO8_126 then
        aO8_126 = aO8_120.Unload
    end
    if aO8_126 then
        pcall(function()
            aO8_120:Unload()
        end)
    end
end
pcall(function()
    gethui = adI
end)
if setthreadidentity then
    setthreadidentity(8)
end
fns.aO8_33, ae7, ac8, aeY, aO8_106, aO8_112, aO8_97, aeH, Attack, Skill, Parry, Knit, Library, SaveManager, adX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.aO8_33 = {
    GAME_NAME = "Dungeon Lootr",
    HIDDEN_NAME = "Ouroboros Hub",
    LOGO_IMAGE = "rbxassetid://78539693571783",
    DISCORD_INVITE = "https://discord.gg/ehKVq7pf7v",
    RSCRIPTS_LINK = "https://rscripts.net/@Ouroboros",
    WEBSITE_LINK = "https://ouroboros-hub-rbx.web.app/",
    LOADER_URL = "https://raw.githubusercontent.com/joustingmatch/Ouroboros/refs/heads/main/games/dungeonlootr.luau",
    SKILL_MAP = { ["Skill 1"] = 1, ["Skill 2"] = 2, ["Skill 3"] = 3, ["Skill 4"] = 4, Ultimate = "E" },
    SELL_RARITY_VALUES = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Celestial" },
    LOBBY_DIFFICULTY_VALUES = { "Easy", "Normal", "Hard", "Nightmare", "Endless" },
    SPIN_TYPE_VALUES = { "Normal Spin", "Lucky Spin", "Use Coins" },
    SPIN_COIN_COST = 1500,
    BLESSING_PRIORITY_VALUES = {
        "Overwhelming Force",
        "Arcane Might",
        "Deadeye",
        "Devastation",
        "Focused Casting",
        "Fortune",
        "Bloodlust",
        "Scholar's Insight",
        "Ironhide",
        "Bulwark",
        "Steadfast",
        "Nimble",
        "Flowstate",
        "Fleetfoot"
    },
    BLESSING_RANK_VALUES = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10" },
    POTION_REFILL_MODES = { "Below Cap", "When Empty", "Once Per Run" },
    FAILSAFE_ACTION_VALUES = { "Rejoin", "Return Lobby" },
    STAT_POINT_VALUES = { "STR", "DEX", "VIT", "INT", "LCK" },
    BOSS_RUSH_FINAL_VALUES = { "Cursed King", "Satori", "Anti Mage", "Great Mage" },
    RARITY_INDEX = {
        Common = 1,
        Uncommon = 2,
        Rare = 3,
        Epic = 4,
        Legendary = 5,
        Mythic = 6,
        Celestial = 7,
        Impossible = 8,
        Exotic = 9,
        ERROR = 10,
        Admin = 11,
        Owner = 12
    },
    SKILL_ORDER = { "Skill 1", "Skill 2", "Skill 3", "Skill 4", "Ultimate" },
    SKILL_DEFAULT = { "Skill 1" },
    DungeonIdMap = {},
    ShopItemIdMap = {},
    BlessingRankKey = {}
}
fns.aO8_33.SELL_RARITY_DEFAULT = table.clone(fns.aO8_33.SELL_RARITY_VALUES)
ae7 = "#7fd47f"
ac8 = "#6ec1ff"
aeY = "#e8a34d"
aO8_106 = "#8b93a3"
aO8_112 = "#e05a5a"
aO8_97 = "#ff8fcf"
aeH = "#c58fff"
aO8_109 = aO8_129:WaitForChild("Player"):WaitForChild("Remotes"):WaitForChild("Inputs")
Attack = aO8_109:WaitForChild("Attack")
Skill = aO8_109:WaitForChild("Skill")
Parry = aO8_109:WaitForChild("Parry")
pcall(fns.fn2738)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
adX = function()
    local function ag9(W)
        local ag7 = not W or not W:IsA("ScreenGui")
        if ag7 then
            return
        end
        W.ResetOnSpawn = false
        W.IgnoreGuiInset = true
        W.DisplayOrder = math.max(W.DisplayOrder, 1000)
        pcall(function()
            W.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            W.ScreenInsets = Enum.ScreenInsets.None
        end)
        if W.Parent ~= ael then
            W.Parent = ael
        end
    end
    ag9(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        ag9(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local aha_1 = ael:FindFirstChild(v) or fns.PlayerGui:FindFirstChild(v)
        if aha_1 then
            ag9(aha_1)
        end
    end
end
adX()
pcall(function()
    local ahn
    ahn = nil
    if typeof(listfiles) ~= "function" then
        return
    end
    ahn = listfiles
    local function aho(al)
        local ahk_1
        local ahj_1
        ahj_1, ahk_1 = pcall(ahn, al)
        local ahl = ahj_1 and typeof(ahk_1) == "table"
        if ahl then
            return ahk_1
        end
        return {}
    end
    listfiles = aho
    if typeof(getgenv) == "function" then
        getgenv().listfiles = aho
    end
end)
task.spawn(fns.worker)
aO8_92 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosDungeonLootrLib = Library
end
Toggles, Options, fns.aO8_68, fns.aO8_74, fns.aO8_42, fns.aO8_12, adi, ae9, aO8_133, aO8_104, fns.aO8_73, aeP, aO8_86, aeK, ags, aey, agj, aep, aga, fns.aO8_48, fns.aO8_28, aO8_82, fns.aO8_69, aO8_122, aO8_127, aO8_107, aO8_121, aO8_89, afr, aO8_116, fns.aO8_49, aez, aO8_103, fns.aO8_53, fns.aO8_14, fns.aO8_13, fns.aO8_44, fns.aO8_58, ad8, aO8_113, afj, aO8_134, fns.aO8_56, adm, agx, fns.aO8_43, agI, aO8_123, fns.aO8_9, aO8_99, fns.aO8_37, aeW, af5, aeX, fns.aO8_67, fns.aO8_66, ady, ae6, fns.aO8_71, aO8_110, afY, aO8_102, aO8_108, ad6, fns.aO8_22, aO8_87, afx, aO8_114, ad7, afJ, adk, fns.aO8_80, afk, aej, aO8_111, agJ, fns.aO8_30, aO8_84, aO8_96, afm, ac7, aeE, fns.aO8_50, adV, aO8_126, fns.aO8_16, aO8_130, afy, afc, afd, fns.aO8_8, adx, afU, aem, fns.aO8_77, aO8_90 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
fns.aO8_68 = {
    Farm = "Idle",
    Chest = "Idle",
    Totem = "Idle",
    M1 = "Idle",
    Skill = "Idle",
    Parry = "Idle",
    Potion = "Idle",
    Replay = "Idle",
    Return = "Idle",
    Create = "Idle",
    Quest = "Idle",
    Sell = "Idle",
    Shop = "Idle",
    Spin = "Idle",
    Altar = "Idle",
    Refill = "Idle",
    Failsafe = "Idle",
    Point = "Idle",
    Gear = "Idle",
    BossRush = "Idle",
    Challenge = "Idle",
    Endless = "Idle",
    MagicUnleashed = "Idle",
    ProfessorDodge = "Idle",
    MapNuke = "Idle"
}
fns.aO8_74 = {}
fns.aO8_42 = {
    m1 = 0,
    skill = 0,
    parry = 0,
    chest = 0,
    chestSelect = 0,
    totem = 0,
    potion = 0,
    replay = 0,
    returnLobby = 0,
    create = 0,
    quest = 0,
    sell = 0,
    shop = 0,
    spin = 0,
    altar = 0,
    altarSelect = 0,
    refill = 0,
    point = 0,
    gear = 0,
    bossRush = 0,
    challenge = 0
}
fns.aO8_12 = { rerolls = 0 }
adi = setmetatable({}, { __mode = "k" })
ae9 = setmetatable({}, { __mode = "k" })
aO8_133 = setmetatable({}, { __mode = "k" })
aO8_104 = nil
fns.aO8_73 = 0
aeP = false
aO8_86 = 0
aeK = setmetatable({}, { __mode = "k" })
ags = setmetatable({}, { __mode = "k" })
aey = nil
agj = nil
aep = nil
aga = nil
fns.aO8_48 = { goal = nil, lookAt = nil, kind = nil, speed = 60, arrive = 3 }
aO8_121 = fns.fn1227
aO8_89 = fns.fn1065
afr = fns.fn2762
aO8_116 = fns.fn864
fns.aO8_49 = fns.fn2740
aez = fns.fn1376
aO8_103 = fns.fn314
if (aO8_111 and not aO8_126 or aO8_111 and not aO8_111) and (aO8_111 or not aO8_126 or (not aO8_126 or not aO8_111)) and not ((aO8_111 and not aO8_126 or aO8_111 and not aO8_111) and (aO8_111 or not aO8_126 or (not aO8_126 or not aO8_111))) then
    fns.aO8_14 = fns.fn437
    fns.aO8_44 = fns.fn2155
    fns.aO8_58 = function(bC, bD)
        fns.aO8_68[bC] = bD
        local ah0 = fns.aO8_74[bC]
        if ah0 then
            pcall(function()
                local ahW = ae7
                if bD == "Idle" then
                    ahW = aO8_106
                elseif bD == "Claimed" then
                    ahW = aeH
                end
                ah0:SetText(aO8_121(bD, ahW))
            end)
        end
    end
    fns.aO8_53 = fns.fn813
    fns.aO8_13 = fns.fn785
else
    fns.aO8_53 = fns.fn437
    fns.aO8_14 = fns.fn2155
    fns.aO8_13 = function(bC, bD)
        fns.aO8_68[bC] = bD
        local ah0 = fns.aO8_74[bC]
        if ah0 then
            pcall(function()
                local ahW = ae7
                if bD == "Idle" then
                    ahW = aO8_106
                elseif bD == "Claimed" then
                    ahW = aeH
                end
                ah0:SetText(aO8_121(bD, ahW))
            end)
        end
    end
    fns.aO8_44 = fns.fn813
    fns.aO8_58 = fns.fn785
end
ad8 = fns.fn2130
aO8_113 = fns.fn7
fns.aO8_28 = { className = nil, active = false, preferDist = 28, maxRange = 140 }
afj = function()
    local aio = adU:GetAttribute("Active_Class") or adU:GetAttribute("Current_Class")
    local aio_2
    local ain = aio
    if ain == fns.aO8_28.className then
        return fns.aO8_28.active
    end
    fns.aO8_28.className = ain
    fns.aO8_28.active = false
    fns.aO8_28.preferDist = 28
    fns.aO8_28.maxRange = 140
    local aio_1 = ain ~= ""
    local aip = typeof(ain) == "string" and aio_1
    local aip_1
    if aip then
        aio_2, aip_1 = pcall(function()
            local aih = aO8_129.Classes:FindFirstChild(ain)
            local aii = aih and aih:FindFirstChild("Definition")
            local aih_1 = aii
            if aii then
                aii = require(aih_1)
            end
            return aii or nil
        end)
        local aiq = aio_2 and typeof(aip_1) == "table" and aip_1.UseProjectile == true
        if aiq then
            fns.aO8_28.active = true
            local aio_3 = typeof(aip_1.ProjectileMaxRange) == "number" and aip_1.ProjectileMaxRange > 0
            if aio_3 then
                fns.aO8_28.maxRange = aip_1.ProjectileMaxRange
                fns.aO8_28.preferDist = math.clamp(aip_1.ProjectileMaxRange * 0.2, 18, 42)
            end
        end
    end
    return fns.aO8_28.active
end
aO8_134 = fns.fn741
fns.aO8_56 = fns.fn540
adm = fns.fn428
agx = function(cK)
    if not aO8_113() then
        return false
    end
    pcall(function()
        Attack:FireServer(adm(cK))
    end)
    return true
end
fns.aO8_43 = function(cS, cT)
    if not aO8_113() then
        return false
    elseif cS == "E" then
        if adU:GetAttribute("HasUltimate") == true then
            if adU:GetAttribute("UltimateReady") ~= true then
                return false
            end
            pcall(function()
                Skill:FireServer(cS, "tap", adm(cT))
            end)
            return true
        end
        pcall(function()
            Skill:FireServer(cS, "tap", adm(cT))
        end)
        return true
    else
        local aiC = "Skill" .. tostring(cS)
        local attr2 = adU:GetAttribute(aiC .. "_Charges")
        local attr = adU:GetAttribute(aiC .. "_MaxCharges")
        local aiF = typeof(attr2) == "number" and typeof(attr) == "number" and attr > 1
        if aiF then
            if attr2 <= 0 then
                return false
            end
            pcall(function()
                Skill:FireServer(cS, "tap", adm(cT))
            end)
            return true
        elseif adU:GetAttribute(aiC .. "_OnCooldown") == true then
            return false
        else
            pcall(function()
                Skill:FireServer(cS, "tap", adm(cT))
            end)
            return true
        end
    end
end
agI = fns.fn2462
aO8_123 = fns.fn1775
fns.aO8_9 = fns.fn965
aO8_99 = fns.fn450
aO8_82 = { pos = nil, look = nil, yaw = nil }
fns.aO8_37 = fns.fn1224
aeW = fns.fn471
af5 = fns.fn1338
aeX = fns.fn757
fns.aO8_67 = fns.fn2147
fns.aO8_66 = fns.fn55
ady = fns.fn3205
ae6 = fns.fn1897
fns.aO8_71 = fns.fn2234
aO8_110 = fns.fn3221
afY = fns.fn950
aO8_102 = fns.fn2932
aO8_108 = function()
    local akm
    local akp_4, akp_8, akp_12
    local attr = adU:GetAttribute("CurrentDungeon")
    local ako = afY()
    local ako_4, ako_10, ako_16, Challenge_Dungeons
    if ako then
        local Boss_Spawn2 = ako:FindFirstChild("Boss_Spawn", true)
        local ako_1 = Boss_Spawn2 and Boss_Spawn2:IsA("BasePart")
        if ako_1 then
            local Position2 = Boss_Spawn2.Position
            local akp_2 = Position2 == Position2 and math.abs(Position2.Y) < 1000000
            if akp_2 then
                return Position2
            elseif attr == "BossRush" then
                local Boss_Rush = fns.aO8_81:FindFirstChild("Boss_Rush")
                local akp_3 = Boss_Rush and Boss_Rush:FindFirstChild("RUSH_SPAWN")
                akm = akp_3
                if akm then
                    ako_4, akp_4 = pcall(function()
                        return akm:GetPivot().Position
                    end)
                    local akq_1 = ako_4 and typeof(akp_4) == "Vector3" and akp_4 == akp_4 and math.abs(akp_4.Y) < 1000000
                    if akq_1 then
                        return akp_4
                    end
                    return nil
                end
                return nil
            else
                local Challenge_Dungeons2 = fns.aO8_81:FindFirstChild("Challenge_Dungeons")
                if Challenge_Dungeons then
                    local akp_5 = typeof(attr) == "string" and string.gsub(attr, " ", "_")
                    local akq_2 = akp_5 or nil
                    for i, child in Challenge_Dungeons2:GetChildren() do
                        local ako_6 = not akq_2 or child.Name == akq_2
                        if not ako_6 then
                            local akq_3 = typeof(attr) == "string" and string.find(child.Name, attr, 1, true)
                            ako_6 = akq_3
                        end
                        if ako_6 then
                            local Boss_Spawn = child:FindFirstChild("Boss_Spawn", true)
                            local akq_4 = Boss_Spawn and Boss_Spawn:IsA("BasePart")
                            if akq_4 then
                                local Position = Boss_Spawn.Position
                                local ako_8 = Position == Position and math.abs(Position.Y) < 1000000
                                if ako_8 then
                                    return Position
                                end
                            end
                        end
                    end
                end
                return nil
            end
        elseif attr == "BossRush" then
            local Boss_Rush = fns.aO8_81:FindFirstChild("Boss_Rush")
            local akp_7 = Boss_Rush and Boss_Rush:FindFirstChild("RUSH_SPAWN")
            akm = akp_7
            if akm then
                ako_10, akp_8 = pcall(function()
                    return akm:GetPivot().Position
                end)
                local akq_6 = ako_10 and typeof(akp_8) == "Vector3" and akp_8 == akp_8 and math.abs(akp_8.Y) < 1000000
                if akq_6 then
                    return akp_8
                end
                return nil
            end
            return nil
        else
            local Challenge_Dungeons2 = fns.aO8_81:FindFirstChild("Challenge_Dungeons")
            if Challenge_Dungeons then
                local akp_9 = typeof(attr) == "string" and string.gsub(attr, " ", "_")
                local akq_7 = akp_9 or nil
                for i, child in Challenge_Dungeons2:GetChildren() do
                    local ako_12 = not akq_7 or child.Name == akq_7
                    if not ako_12 then
                        local akq_8 = typeof(attr) == "string" and string.find(child.Name, attr, 1, true)
                        ako_12 = akq_8
                    end
                    if ako_12 then
                        local Boss_Spawn = child:FindFirstChild("Boss_Spawn", true)
                        local akq_9 = Boss_Spawn and Boss_Spawn:IsA("BasePart")
                        if akq_9 then
                            local Position = Boss_Spawn.Position
                            local ako_14 = Position == Position and math.abs(Position.Y) < 1000000
                            if ako_14 then
                                return Position
                            end
                        end
                    end
                end
            end
            return nil
        end
    elseif attr == "BossRush" then
        local Boss_Rush = fns.aO8_81:FindFirstChild("Boss_Rush")
        local akp_11 = Boss_Rush and Boss_Rush:FindFirstChild("RUSH_SPAWN")
        akm = akp_11
        if akm then
            ako_16, akp_12 = pcall(function()
                return akm:GetPivot().Position
            end)
            local akq_11 = ako_16 and typeof(akp_12) == "Vector3" and akp_12 == akp_12 and math.abs(akp_12.Y) < 1000000
            if akq_11 then
                return akp_12
            end
            return nil
        end
        return nil
    else
        Challenge_Dungeons = fns.aO8_81:FindFirstChild("Challenge_Dungeons")
        if Challenge_Dungeons then
            local akp_13 = typeof(attr) == "string" and string.gsub(attr, " ", "_")
            local akq_12 = akp_13 or nil
            for i, child in Challenge_Dungeons:GetChildren() do
                local ako_18 = not akq_12 or child.Name == akq_12
                if not ako_18 then
                    local akq_13 = typeof(attr) == "string" and string.find(child.Name, attr, 1, true)
                    ako_18 = akq_13
                end
                if ako_18 then
                    local Boss_Spawn = child:FindFirstChild("Boss_Spawn", true)
                    local akq_14 = Boss_Spawn and Boss_Spawn:IsA("BasePart")
                    if akq_14 then
                        local Position = Boss_Spawn.Position
                        local ako_20 = Position == Position and math.abs(Position.Y) < 1000000
                        if ako_20 then
                            return Position
                        end
                    end
                end
            end
        end
        return nil
    end
end
ad6 = fns.fn1894
fns.aO8_22 = fns.fn554
aO8_87 = fns.fn1424
afx = fns.fn3233
aO8_114 = fns.fn175
fns.aO8_69 = { at = 0, state = nil }
ad7 = fns.fn1800
afJ = fns.fn675
adk = fns.fn2637
task.spawn(function()
    local alJ
    alJ = nil
    local alI
    local alK_1, alK_2
    alK_1, alJ = pcall(require, aO8_129.Packages.Knit)
    if not alK_1 or not alJ then
        return
    end
    alK_2, alI = pcall(function()
        return alJ.GetService("DungeonRunService")
    end)
    if not alK_2 or not alI then
        return
    end
    pcall(function()
        alI.RoomLayoutUpdate:Connect(adk)
    end)
    pcall(function()
        alI.ZoneEntered:Connect(adk)
    end)
    pcall(function()
        alI.PhaseChange:Connect(adk)
    end)
    pcall(function()
        alI.EndlessDecision:Connect(function(gN)
            local alD
            if not aez("AutoContinueEndless") then
                return
            end
            local alE = fns.aO8_14("EndlessExtract", 0)
            local alF = typeof(gN) == "table" and tonumber(gN.ExtensionIndex)
            local alF_1 = ((alF or 0 or 0) + 1) * 10
            alD = alE > 0 and alF_1 >= alE
            task.wait(0.3)
            pcall(function()
                alI:SubmitEndlessChoice(not alD)
            end)
            local alG_2 = alD and "Extract F" .. alF_1 or "Continue F" .. alF_1
            fns.aO8_13("Endless", alG_2)
        end)
    end)
end)
fns.aO8_80 = fns.fn1445
afk = function(hk)
    local al_
    al_ = nil
    local al3_2
    local al0 = afY()
    local al0_3, al0_5
    local al1 = not al0 or typeof(hk) ~= "number"
    local al1_3, al1_4
    if al1 then
        return nil
    end
    al_ = al0:FindFirstChild("Room_" .. tostring(hk))
    if not al_ then
        return nil
    end
    local Zone = al_:FindFirstChild("Zone")
    local al1_1 = Zone and Zone:IsA("BasePart")
    if al1_1 then
        local Position = Zone.Position
        local al0_2 = Position == Position and math.abs(Position.Y) < 1000000
        if al0_2 then
            return Position
        end
        al0_3, al1_3 = pcall(function()
            return al_:GetPivot().Position
        end)
        if al3_2 then
            return al1_3
        end
        return nil
    end
    al0_5, al1_4 = pcall(function()
        return al_:GetPivot().Position
    end)
    local al2_2 = al0_5 and typeof(al1_4) == "Vector3"
    al3_2 = al2_2 and al1_4 == al1_4
    if al3_2 then
        return al1_4
    end
    return nil
end
aej = fns.fn553
aO8_111 = fns.fn1004
agJ = fns.fn1405
fns.aO8_30 = fns.fn1636
aO8_84 = fns.fn2798
aO8_96 = function(iq)
    if iq then
        local amR_1 = aO8_133[iq] or iq:GetAttribute("Ouroboros_UsedAltar")
        if not amR_1 then
            aO8_86 += 1
        end
        aO8_133[iq] = true
        pcall(function()
            iq:SetAttribute("Ouroboros_UsedAltar", true)
        end)
    end
    local amR_2 = iq == nil
    local amS = aO8_104 == iq
    local amW = if amS then 1 else 0
    local amU = 1198 * amW + 921 * (1 - amW)
    local amV = 3247 * amW + 426 * (1 - amW)
    if not ((amU * 3179 + amV * 1050 + amU * amV) % 16777213 == 11107698) then
        amS = amR_2
    end
    if amS then
        aO8_104 = nil
        fns.aO8_73 = 0
    end
    fns.aO8_13("Altar", "Claimed")
end
afm = fns.fn2971
ac7 = fns.fn481
aeE = fns.fn1437
fns.aO8_50 = fns.fn2065
adV = fns.fn1768
aO8_122 = { enemy = nil, untilAt = 0 }
fns.aO8_16 = function(jZ)
    local aoz, aoA, aoB, aoC, aoD, aoE, aoF, aoG, aoH, aoI
    local aoJ = os.clock()
    aoB = fns.aO8_80()
    if fns.aO8_66() then
        aoB = nil
    end
    aoF = nil
    aoC = nil
    aoz = math.huge
    aoG = nil
    aoD = nil
    aoA = nil
    aoH = nil
    aoE = function(kb)
        local attr = kb:GetAttribute("ItemId")
        local Name = kb.Name
        local aok = Name == "Mage Student 2"
        local aol = Name == "Mage Student"
        local aop = if aol then 1 else 0
        local aon = 1323 * aop + 2610 * (1 - aop)
        local aoo = 587 * aop + 3514 * (1 - aop)
        if not ((aon * 1479 + aoo * 2255 + aon * aoo) % 16777213 == 4057003) then
            aol = aok
        end
        return aol or attr == "Mage Student" or attr == "Mage Student 2"
    end
    aoI = aez("SkipCrystal")
    local function aoK(kh)
        local aoq = aO8_110(kh)
        local aor = not aoq or math.abs(aoq.Position.Y - jZ.Y) > 250
        if aor then
            return
        end
        local Magnitude = (aoq.Position - jZ).Magnitude
        if aeX(kh) then
            if aoI then
                return
            end
            if not aoD or Magnitude < aoD then
                aoG = kh
                aoD = Magnitude
            end
            return
        end
        if aoE(kh) then
            if not aoH or Magnitude < aoH then
                aoA = kh
                aoH = Magnitude
            end
            return
        end
        local aoq_3 = aej(kh)
        local aos = kh:GetAttribute("IsBoss") == true or kh:GetAttribute("IsMiniBoss") == true
        if aoB then
            if aoq_3 ~= aoB and not aos then
                return
            end
        end
        if aoB then
            if not aoC or Magnitude < aoC then
                aoF = kh
                aoC = Magnitude
                aoz = aoq_3
            end
        else
            local aos_3 = aoq_3 < aoz
            if not aos_3 then
                local aot_1 = aoq_3 == aoz
                if aot_1 then
                    aot_1 = not aoC or Magnitude < aoC
                end
                aos_3 = aot_1
            end
            if aos_3 then
                aoz = aoq_3
                aoF = kh
                aoC = Magnitude
            end
        end
    end
    for k, v in afW:GetTagged("Enemy") do
        aoK(v)
    end
    local Raid_NPCs = fns.aO8_81:FindFirstChild("Raid_NPCs")
    if Raid_NPCs then
        for i, child in Raid_NPCs:GetChildren() do
            local aoL_1 = aeX(child) or aoE(child)
            if aoL_1 then
                aoK(child)
            end
        end
    end
    if aoG then
        local aoK_1 = aO8_122.enemy and aoJ < aO8_122.untilAt and aeX(aO8_122.enemy)
        if aoK_1 then
            local aoK_2 = aO8_110(aO8_122.enemy)
            local aoL_2 = aoK_2 and math.abs(aoK_2.Position.Y - jZ.Y) <= 250
            if aoL_2 then
                return aO8_122.enemy, (aoK_2.Position - jZ).Magnitude
            end
            aO8_122.enemy = aoG
            aO8_122.untilAt = aoJ + 0.35
            return aoG, aoD
        end
        aO8_122.enemy = aoG
        aO8_122.untilAt = aoJ + 0.35
        return aoG, aoD
    elseif aoA then
        local aoK_3 = aO8_122.enemy and aoJ < aO8_122.untilAt and aoE(aO8_122.enemy)
        if aoK_3 then
            local aoK_4 = aO8_110(aO8_122.enemy)
            local aoL_3 = aoK_4 and math.abs(aoK_4.Position.Y - jZ.Y) <= 250
            if aoL_3 then
                return aO8_122.enemy, (aoK_4.Position - jZ).Magnitude
            end
            aO8_122.enemy = aoA
            aO8_122.untilAt = aoJ + 0.35
            return aoA, aoH
        end
        aO8_122.enemy = aoA
        aO8_122.untilAt = aoJ + 0.35
        return aoA, aoH
    else
        if aO8_122.enemy and aoJ < aO8_122.untilAt then
            local aoK_6 = aO8_110(aO8_122.enemy)
            local aoL_4 = aoK_6 and math.abs(aoK_6.Position.Y - jZ.Y) <= 250
            if aoL_4 then
                local aoL_5 = aej(aO8_122.enemy)
                local aoM = aO8_122.enemy:GetAttribute("IsBoss") == true or aO8_122.enemy:GetAttribute("IsMiniBoss") == true
                if (not aoB or aoL_5 == aoB or aoM) and aoL_5 == aoz then
                    return aO8_122.enemy, (aoK_6.Position - jZ).Magnitude
                end
                aO8_122.enemy = aoF
                aO8_122.untilAt = aoJ + 0.35
                return aoF, aoC
            end
            aO8_122.enemy = aoF
            aO8_122.untilAt = aoJ + 0.35
            return aoF, aoC
        end
        aO8_122.enemy = aoF
        aO8_122.untilAt = aoJ + 0.35
        return aoF, aoC
    end
end
aO8_130 = fns.fn2923
afy = fns.fn3300
afc = fns.fn1003
aO8_127 = {}
afd = fns.fn1811
fns.aO8_8 = function()
    local ap5
    local ap9_1, ap9_4, ap9_5
    local ap8_1, ap8_5, ap8_7, Magnitude
    local ap7 = fns.aO8_58()
    if not ap7 then
        fns.aO8_13("Chest", "No character")
        fns.aO8_9("chest")
        return false
    elseif aO8_103("AutoCollectChestMode", "Ground Chest") == "Locked + Ground Chest" then
        local ap6 = afd()
        if ap6 then
            aO8_122.enemy = nil
            aO8_122.untilAt = 0
            fns.aO8_37()
            if fns.aO8_48.kind == "farm" then
                fns.aO8_9("farm")
            end
            ap9_1, ap8_1 = afy(ap6.part, ap7.Position, 5)
            aO8_123(ap9_1, "chest", ap8_1, 80)
            pcall(function()
                ap6.prompt.HoldDuration = 0
                ap6.prompt.MaxActivationDistance = math.max(ap6.prompt.MaxActivationDistance, 25)
                ap6.prompt.RequiresLineOfSight = false
            end)
            if (ap7.Position - ap6.part.Position).Magnitude <= 12 then
                if fireproximityprompt then
                    local ap8_3 = os.clock()
                    if ap8_3 - (fns.aO8_42.chest or 0) >= 0.4 then
                        fns.aO8_42.chest = os.clock()
                        pcall(fireproximityprompt, ap6.prompt)
                        local model = ap6.model
                        local ap9_3 = aO8_127[ap6.model] or 0
                        aO8_127[model] = ap9_3 + 1
                    end
                    fns.aO8_13("Chest", "Unlocking Gate")
                    return true
                end
                fns.aO8_13("Chest", "No fireproximityprompt")
                return true
            end
            fns.aO8_13("Chest", "Moving to Gate")
            return true
        end
        ap5 = afc()
        if not ap5 then
            if fns.aO8_48.kind == "chest" then
                fns.aO8_9("chest")
            end
            fns.aO8_13("Chest", "None")
            return false
        end
        aO8_122.enemy = nil
        aO8_122.untilAt = 0
        fns.aO8_37()
        if fns.aO8_48.kind == "farm" then
            fns.aO8_9("farm")
        end
        ap8_5, ap9_4 = afy(ap5.part, ap7.Position, 6)
        aO8_123(ap8_5, "chest", ap9_4, 80)
        pcall(function()
            ap5.prompt.HoldDuration = 0
            ap5.prompt.MaxActivationDistance = math.max(ap5.prompt.MaxActivationDistance, 25)
            ap5.prompt.RequiresLineOfSight = false
        end)
        if Magnitude <= 12 then
            if fireproximityprompt then
                if os.clock() - fns.aO8_42.chest >= 0.35 then
                    fns.aO8_42.chest = os.clock()
                    pcall(fireproximityprompt, ap5.prompt)
                end
                local ap7_1 = ap5.prompt.ObjectText or "Looting"
                fns.aO8_13("Chest", ap7_1)
                return true
            end
            fns.aO8_13("Chest", "No fireproximityprompt")
            return true
        end
        fns.aO8_13("Chest", "Moving")
        return true
    else
        ap5 = afc()
        if not ap5 then
            if fns.aO8_48.kind == "chest" then
                fns.aO8_9("chest")
            end
            fns.aO8_13("Chest", "None")
            return false
        end
        aO8_122.enemy = nil
        aO8_122.untilAt = 0
        fns.aO8_37()
        if fns.aO8_48.kind == "farm" then
            fns.aO8_9("farm")
        end
        ap8_7, ap9_5 = afy(ap5.part, ap7.Position, 6)
        aO8_123(ap8_7, "chest", ap9_5, 80)
        pcall(function()
            ap5.prompt.HoldDuration = 0
            ap5.prompt.MaxActivationDistance = math.max(ap5.prompt.MaxActivationDistance, 25)
            ap5.prompt.RequiresLineOfSight = false
        end)
        Magnitude = (ap7.Position - ap5.part.Position).Magnitude
        if Magnitude <= 12 then
            if fireproximityprompt then
                if os.clock() - fns.aO8_42.chest >= 0.35 then
                    fns.aO8_42.chest = os.clock()
                    pcall(fireproximityprompt, ap5.prompt)
                end
                local ap7_2 = ap5.prompt.ObjectText or "Looting"
                fns.aO8_13("Chest", ap7_2)
                return true
            end
            fns.aO8_13("Chest", "No fireproximityprompt")
            return true
        end
        fns.aO8_13("Chest", "Moving")
        return true
    end
end
adx = fns.fn1621
afU = function()
    local model
    if not aez("AutoSkullTotem") then
        if fns.aO8_68.Totem ~= "Idle" then
            fns.aO8_13("Totem", "Idle")
        end
        if fns.aO8_48.kind == "totem" then
            fns.aO8_9("totem")
        end
        return false
    end
    local aqB = fns.aO8_58()
    if not aqB then
        fns.aO8_13("Totem", "No character")
        fns.aO8_9("totem")
        return false
    end
    local aqz = adx()
    if not aqz then
        if fns.aO8_48.kind == "totem" then
            fns.aO8_9("totem")
        end
        fns.aO8_13("Totem", "None")
        return false
    end
    local aqC = aqz.part.Position + Vector3.new(0, 3, 0)
    aO8_123(aqC, "totem", aqz.part.Position, 80)
    local Magnitude = (aqB.Position - aqz.part.Position).Magnitude
    local aqB_1 = fns.aO8_14("TotemDelay", 0.35)
    if Magnitude <= 12 then
        pcall(function()
            aqz.prompt.HoldDuration = 0
            aqz.prompt.MaxActivationDistance = math.max(aqz.prompt.MaxActivationDistance, 25)
            aqz.prompt.RequiresLineOfSight = false
            if aqz.prompt.ActionText == "" then
                aqz.prompt.ActionText = "Activate"
            end
            if aqz.prompt.ObjectText == "" then
                aqz.prompt.ObjectText = "Skull Totem"
            end
        end)
        if fireproximityprompt then
            if os.clock() - fns.aO8_42.totem >= aqB_1 then
                fns.aO8_42.totem = os.clock()
                if not ae9[aqz.model] then
                    ae9[aqz.model] = true
                    model = aqz.model
                    aqz.prompt.Triggered:Once(function()
                        adi[model] = true
                    end)
                end
                pcall(fireproximityprompt, aqz.prompt)
            end
            fns.aO8_13("Totem", "Activating")
            return true
        end
        fns.aO8_13("Totem", "No fireproximityprompt")
        return true
    end
    fns.aO8_13("Totem", "Moving")
    return true
end
aem = fns.fn3103
fns.aO8_77 = fns.fn135
aO8_90 = fns.fn1166
afH, adK, fns.aO8_76, afw, agD, agc, aO8_107 = nil, nil, nil, nil, nil, nil, nil
afH = { Celestial = 7, Mythic = 6, Legendary = 5, Epic = 4, Rare = 3, Uncommon = 2, Common = 1 }
adK = 1962858722
afw = fns.fn2428
agD = fns.fn393
if (afH and afH or afw and not afw or afH and (not afw or afw)) and not (afH and afH or afw and not afw or afH and (not afw or afw)) then
    adK = nil
else
    fns.aO8_76 = nil
end
agc = fns.fn123
aO8_107 = function()
    if not aez("AutoFarm") then
        return false
    elseif os.clock() - fns.aO8_42.chestSelect < 0.2 then
        return true
    else
        local arE = agD()
        local arF = arE and arE._active and arE._ready and typeof(arE._candidates) == "table"
        if not arF then
            return false
        end
        fns.aO8_42.chestSelect = os.clock()
        local arF_1 = fns.aO8_53("ChestPriority")
        local max = math.max
        local arH = tonumber(arE._maxPicks) or 0
        local arI = agc() and 3
        local arJ = arI or 2
        local arI_1 = max(arH, arJ)
        local arG_1 = {}
        for k, v in arE._candidates do
            if not arE._selected[k] then
                table.insert(arG_1, { index = k, score = afw(v, arF_1) })
            end
        end
        table.sort(arG_1, function(oM, oN)
            if oM.score == oN.score then
                return oM.index < oN.index
            end
            return oM.score > oN.score
        end)
        local arF_2 = tonumber(arE._selectedCount) or 0
        local arH_1 = arF_2
        for k, v in arG_1 do
            local arZ = v
            if arH_1 >= arI_1 then
                break
            elseif not (arZ.score < 0) then
                pcall(function()
                    arE:_OnChestClicked(arZ.index)
                end)
                local arF_3 = tonumber(arE._selectedCount) or arH_1 + 1
                arH_1 = arF_3
                task.wait(0.12)
            end
        end
        local arF_4 = tonumber(arE._selectedCount) or 0
        if arF_4 < arI_1 then
            for k in arE._candidates do
                local ar0 = k
                local arF_5 = tonumber(arE._selectedCount) or 0
                if arF_5 >= arI_1 then
                    break
                elseif not arE._selected[ar0] then
                    pcall(function()
                        arE:_OnChestClicked(ar0)
                    end)
                    task.wait(0.12)
                end
            end
        end
        local arF_6 = tonumber(arE._selectedCount) or 0
        if arF_6 >= arI_1 then
            fns.aO8_13("Farm", "Selecting")
            task.wait(0.15)
            pcall(function()
                arE:_OnFinish()
            end)
            fns.aO8_13("Farm", "Chest picked")
            return true
        end
        fns.aO8_13("Farm", "Selecting")
        return true
    end
end
agv, agw, adl, fns.aO8_29, fns.aO8_27, fns.aO8_19, aeU, fns.aO8_35, adv, fns.aO8_55, aO8_132, fns.aO8_1, fns.aO8_18, af7, adW, aO8_124, ac9, aeI, adr, aeJ, afi, fns.aO8_72, ac3, agk, fns.aO8_23, aO8_95 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
agv = fns.fn1509
agw = fns.fn1476
adl = fns.fn2698
fns.aO8_29 = function(pJ)
    local asv_1
    local asu = not pJ or not pJ:IsA("GuiButton")
    local asu_1
    if asu then
        return false
    elseif not adl(pJ) then
        return false
    elseif firesignal then
        pcall(firesignal, pJ.Activated)
        pcall(firesignal, pJ.MouseButton1Click)
        return true
    elseif getconnections then
        for k, v in { pJ.Activated, pJ.MouseButton1Click } do
            asu_1, asv_1 = pcall(getconnections, v)
            if asu_1 then
                for k, v in asv_1 do
                    local asL = v
                    pcall(function()
                        if asL.Fire then
                            asL:Fire()
                        elseif asL.Function then
                            asL.Function()
                        end
                    end)
                end
            end
        end
        return true
    else
        return false
    end
end
fns.aO8_27 = fns.fn2
fns.aO8_19 = fns.fn582
aeU = function(p7, p8)
    if not Knit then
        return false
    end
    local asY = pcall(function()
        local qc = Knit.GetService(p7)
        qc[p8](qc)
    end)
    return asY
end
fns.aO8_35 = fns.fn2087
adv = fns.fn2016
fns.aO8_55 = function()
    local as8
    as8 = nil
    local atd_1
    if not aez("AutoUsePotion") then
        if fns.aO8_68.Potion ~= "Idle" then
            fns.aO8_13("Potion", "Idle")
        end
        return
    end
    if os.clock() - fns.aO8_42.potion < 0.35 then
        return
    end
    local as9 = ad8()
    local as9_5
    local ata = not as9 or as9.Health <= 0
    local ata_6
    if ata then
        fns.aO8_13("Potion", "No character")
        return
    end
    local MaxHealth = as9.MaxHealth
    if MaxHealth <= 0 then
        fns.aO8_13("Potion", "No character")
        return
    end
    local atb = as9.Health / MaxHealth * 100
    local atb_2
    local as9_1 = fns.aO8_14("PotionHealthPercent", 50)
    if atb > as9_1 then
        fns.aO8_13("Potion", "Healthy")
        return
    end
    local as9_2 = fns.aO8_35()
    local atb_1 = as9_2 and as9_2.EquippedPotion
    local ata_3 = atb_1 == ""
    local atc = typeof(atb_1) ~= "string"
    local atc_1
    local ati = if atc then 1 else 0
    local atg = 1428 * ati + 1098 * (1 - ati)
    local ath = 1632 * ati + 98 * (1 - ati)
    if not ((atg * 2683 + ath * 1742 + atg * ath) % 16777213 == 9004764) then
        atc = ata_3
    end
    if atc then
        fns.aO8_13("Potion", "None equipped")
        return
    end
    local as9_3 = as9_2.Potions and as9_2.Potions[atb_1]
    local ati_1 = if as9_3 then 1 else 0
    local atg_1 = 1107 * ati_1 + 2588 * (1 - ati_1)
    local ath_1 = 3141 * ati_1 + 2008 * (1 - ati_1)
    if not ((atg_1 * 3481 + ath_1 * 926 + atg_1 * ath_1) % 16777213 == 10239120) then
        as9_3 = 0
    end
    local ata_5 = as9_3
    local as9_4 = typeof(ata_5) ~= "number" or ata_5 < 1
    if as9_4 then
        fns.aO8_13("Potion", "Empty")
        return
    end
    as8 = adv()
    if not as8 then
        fns.aO8_13("Potion", "No service")
        return
    end
    fns.aO8_42.potion = os.clock()
    as9_5, ata_6, atb_2, atd_1, atc_1 = pcall(function()
        return as8:UsePotion(1):await()
    end)
    if as9_5 and ata_6 and atb_2 then
        fns.aO8_13("Potion", "Used")
        return
    end
    if atd_1 == "POTION_ON_COOLDOWN" then
        local as9_7 = typeof(atc_1) == "table" and tonumber(atc_1.Remaining)
        local ata_7 = as9_7 or nil
        local as9_8 = ata_7
        if ata_7 then
            ata_7 = as9_8 > 0
        end
        if ata_7 then
            fns.aO8_42.potion = os.clock() + as9_8 - 0.35
            fns.aO8_13("Potion", string.format("Cooldown %.0fs", as9_8))
        else
            fns.aO8_13("Potion", "Cooldown")
        end
        return
    end
    local as9_9 = typeof(atd_1) == "string" and atd_1
    local ata_8 = as9_9 or "Failed"
    fns.aO8_13("Potion", ata_8)
end
aO8_132 = function(qY, qZ, ...)
    local atp
    local atn
    local ato
    local atm
    atm = nil
    atn = nil
    ato = nil
    atp = nil
    local atr_1
    local atq_1
    if not qY then
        return false
    end
    ato = table.pack(...)
    atq_1, atr_1 = pcall(function()
        return qY[qZ](qY, table.unpack(ato, 1, ato.n))
    end)
    if not atq_1 then
        return false, nil, tostring(atr_1)
    end
    local atq_2 = typeof(atr_1) ~= "table" or typeof(atr_1.andThen) ~= "function"
    if atq_2 then
        return true, atr_1
    end
    atp, atn, atm = nil, nil, nil
    atr_1:andThen(function(...)
        atp = true
        atn = table.pack(...)
    end):catch(function(rb)
        atp = true
        atm = rb
    end)
    local atq_3 = os.clock()
    while true do
        local atr_2 = not atp and os.clock() - atq_3 < 8
        if atr_2 then
            task.wait()
            continue
        end
        break
    end
    if not atp then
        return false, nil, "timeout"
    elseif atm ~= nil then
        return false, nil, atm
    else
        return true, table.unpack(atn, 1, atn.n)
    end
end
fns.aO8_1 = fns.fn2772
fns.aO8_18 = fns.fn3161
af7 = fns.fn1160
adW = fns.fn2892
aO8_124 = fns.fn958
ac9 = fns.fn2900
aeI = fns.fn162
adr = fns.fn2865
aeJ = function()
    local aug, auh, aui
    local aut = if not aez("AutoEquipBest") then 1 else 0
    if aut == 1 then
        if fns.aO8_68.Gear ~= "Idle" then
            fns.aO8_13("Gear", "Idle")
        end
        return
    end
    local auw = if os.clock() - fns.aO8_42.gear < 3 then 1 else 0
    if auw == 1 then
        return
    end
    fns.aO8_42.gear = os.clock()
    local auj = fns.aO8_35()
    local auk = auj and auj.EquipmentInventory
    if typeof(auk) ~= "table" then
        fns.aO8_13("Gear", "No data")
        return
    end
    local auk_1 = ac9()
    if not auk_1 then
        fns.aO8_13("Gear", "No service")
        return
    end
    local aum = tonumber(auj.PlayerLevel) or 1
    aug = { Head = -1, Body = -1, Ring = -1 }
    auh = aum
    aui = {}
    local function aum_1(sj)
        local aud = typeof(sj) ~= "table" or typeof(sj.GUID) ~= "string"
        if aud then
            return
        end
        local Slot = sj.Slot
        if aug[Slot] == nil then
            return
        end
        if sj.Locked or sj.Identified == false then
            return
        end
        if sj.LevelReq and auh < sj.LevelReq then
            return
        end
        local aue_2 = adr(sj)
        if aue_2 > aug[Slot] then
            aug[Slot] = aue_2
            aui[Slot] = sj
        end
    end
    for k, v in pairs(auk) do
        aum_1(v)
    end
    local aul_1 = typeof(auj.Equipment) == "table" and auj.Equipment
    local aum_2 = aul_1 or {}
    local auj_2 = 0
    for i, v in ipairs({ "Head", "Body", "Ring" }) do
        local aum_3 = aui[v]
        local aun = aum_2[v]
        local aun_2
        local auo = typeof(aun) == "table" and aun.GUID
        local auo_2
        local aun_1 = auo or nil
        local auo_1 = aum_3
        if auo_1 then
            auo_1 = aum_3.GUID ~= aun_1
        end
        if auo_1 then
            aun_2, auo_2 = aO8_132(auk_1, "Equip", aum_3.GUID)
            if aun_2 and auo_2 then
                auj_2 += 1
            end
        end
    end
    local auj_3 = auj_2 > 0 and "Equipped " .. auj_2 or "Optimal"
    fns.aO8_13("Gear", auj_3)
end
afi = fns.fn2434
fns.aO8_72 = fns.fn1837
ac3 = fns.fn3027
agk = function()
    local au6
    local au9
    local au7 = ac3()
    local avb = au7 and au7.FEATURED_DUNGEON
    local avb_8
    local avi = if avb then 1 else 0
    local avg = 2151 * avi + 3885 * (1 - avi)
    local avh = 3541 * avi + 2785 * (1 - avi)
    if not ((avg * 3155 + avh * 2247 + avg * avh) % 16777213 == 5582510) then
        avb = "Challenge"
    end
    local ava_1 = au7
    local avc = avb
    if ava_1 then
        ava_1 = tonumber(au7.UNLOCK_LEVEL)
    end
    local avb_1 = ava_1
    local avi_1 = if avb_1 then 1 else 0
    local avg_1 = 2150 * avi_1 + 1435 * (1 - avi_1)
    local avh_1 = 868 * avi_1 + 1669 * (1 - avi_1)
    if not ((avg_1 * 2910 + avh_1 * 578 + avg_1 * avh_1) % 16777213 == 8624404) then
        avb_1 = 55
    end
    local ava_2 = avb_1
    local au8 = fns.aO8_35()
    local avb_2 = au7 and typeof(au7.MeetsLevel) == "function"
    if avb_2 then
        au6, au9 = nil, nil
        local avb_3 = pcall(function()
            au6, au9 = au7.MeetsLevel({ Data = au8 })
        end)
        if avb_3 then
            local avb_4 = au6 == true
            local avd_1 = typeof(au9) == "string" and au9
            return avc, ava_2, avb_4, avd_1 or nil
        end
        if avb_8 >= ava_2 then
            return avc, ava_2, true, nil
        end
        return avc, ava_2, false, "Reach Player Level " .. tostring(ava_2) .. " to enter this Challenge Dungeon"
    end
    local avb_7 = au8 and tonumber(au8.PlayerLevel)
    avb_8 = avb_7 or 0
    if avb_8 >= ava_2 then
        return avc, ava_2, true, nil
    end
    return avc, ava_2, false, "Reach Player Level " .. tostring(ava_2) .. " to enter this Challenge Dungeon"
end
fns.aO8_23 = fns.fn2210
aO8_95 = fns.fn2029
Library.FeatureAPI = { Unloaded = false, nextMagicJoin = 0 }
Library.FeatureAPI.AutoJoinMagicUnleashed = fns.fn348
Library.FeatureAPI.Unload = fns.fn2720
Library:OnUnload(Library.FeatureAPI.Unload)
aO8_118, agm, fns.aO8_41, fns.aO8_63, aek, fns.aO8_38, afL, fns.aO8_46, aO8_117, adH, fns.aO8_4, adw, afl, aO8_93, fns.aO8_64, aO8_98, fns.aO8_70, ac6, aeV, agK, agy, fns.aO8_21, fns.aO8_5, afX, fns.aO8_15, af9, adY, aO8_91, fns.aO8_7, fns.aO8_57, fns.aO8_32, fns.aO8_60, fns.aO8_36, fns.aO8_61, fns.aO8_54, afz, afK, fns.aO8_24 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
aO8_118 = "Dark Professor"
agm = 16
fns.aO8_41 = 0.5
fns.aO8_63 = 24
aek = 55
fns.aO8_38 = 0.15
afL = {
    { anim = "76442837622043", name = "Umbral Bolt", reach = 63, hold = 2 },
    { anim = "101932528916179", name = "Grave Crush", reach = 63, hold = 2.1 },
    { anim = "113721563432339", name = "Nightfall Sigils", reach = 63, hold = 3.1 },
    { anim = "137236302853905", name = "Oblivion Collapse", reach = 63, hold = 3.5 }
}
fns.aO8_46 = {
    ["87511690849407"] = true,
    ["122199389926212"] = true,
    ["101115625250548"] = true,
    ["138607019020098"] = true,
    ["84303818380793"] = true,
    ["88743243583359"] = true,
    ["124950580680349"] = true
}
aO8_117 = {
    boss = nil,
    untilAt = 0,
    goal = nil,
    active = false,
    reach = 0,
    label = nil,
    nextSearch = 0,
    heading = nil,
    barrage = false,
    lastTelegraphAt = 0
}
adH = { active = false, returnPos = nil, untilAt = 0, seenCrystal = false, startedAt = 0 }
fns.aO8_4 = nil
adw = { ["Nightfall Sigils"] = true, ["Oblivion Collapse"] = true }
afl = 6
aO8_93 = 0.35
fns.aO8_64 = 16
aO8_98 = 11.5
fns.aO8_70 = "134516956969088"
ac6 = 8.5
aeV = 14
agK = fns.fn2227
agy = fns.fn1963
fns.aO8_21 = fns.fn1475
fns.aO8_5 = fns.fn2030
afX = fns.fn869
fns.aO8_15 = fns.fn2641
af9 = fns.fn1317
adY = fns.fn2612
aO8_91 = fns.fn746
if (not aO8_117 and fns.aO8_41 or not adY and not aO8_117) and ((fns.aO8_41 or adY) and (fns.aO8_41 and not adY)) and (aO8_117 or not adY or not adY and not aO8_117 or (not aO8_117 or false) and (not adY or adY)) or not ((not aO8_117 and fns.aO8_41 or not adY and not aO8_117) and ((fns.aO8_41 or adY) and (fns.aO8_41 and not adY)) and (aO8_117 or not adY or not adY and not aO8_117 or (not aO8_117 or false) and (not adY or adY))) then
    fns.aO8_7 = fns.fn87
    fns.aO8_57 = function()
        local axU
        axU = nil
        local Boss_Rush = fns.aO8_81:FindFirstChild("Boss_Rush")
        local axV_2
        local axW = Boss_Rush and Boss_Rush:FindFirstChild("RUSH_SPAWN")
        local axW_2
        axU = axW
        if not axU then
            return nil
        end
        axV_2, axW_2 = pcall(function()
            return axU:GetPivot()
        end)
        local axX = axV_2 and typeof(axW_2) == "CFrame"
        if axX then
            return axW_2 * CFrame.new(0, 3, 0)
        end
        local ax0 = if axU:IsA("BasePart") then 1 else 0
        if ax0 == 1 then
            return axU.CFrame * CFrame.new(0, 3, 0)
        end
        return nil
    end
else
    fns.aO8_57 = fns.fn87
    fns.aO8_7 = function()
        local axU
        axU = nil
        local Boss_Rush = fns.aO8_81:FindFirstChild("Boss_Rush")
        local axV_1
        local axW = Boss_Rush and Boss_Rush:FindFirstChild("RUSH_SPAWN")
        local axW_1
        axU = axW
        if not axU then
            return nil
        end
        axV_1, axW_1 = pcall(function()
            return axU:GetPivot()
        end)
        local axX = axV_1 and typeof(axW_1) == "CFrame"
        if axX then
            return axW_1 * CFrame.new(0, 3, 0)
        end
        local ax0 = if axU:IsA("BasePart") then 1 else 0
        if ax0 == 1 then
            return axU.CFrame * CFrame.new(0, 3, 0)
        end
        return nil
    end
end
fns.aO8_32 = fns.fn2509
fns.aO8_60 = fns.fn3063
fns.aO8_36 = fns.fn83
fns.aO8_61 = fns.fn1880
fns.aO8_54 = fns.fn2136
afz = fns.fn1165
afK = fns.fn764
fns.aO8_24 = fns.fn539
Library.FeatureAPI.ClearProfessorDodge = fns.fn3106
Library.FeatureAPI.IsProfessorBarrageLive = fns.fn1119
Library.FeatureAPI.IsProfessorDodging = fns.fn79
Library.FeatureAPI.StepDarkProfessorDodge = fns.fn2776
aO8_88, adT, fns.aO8_11, ae8, aee, adC, aeO, adj, adL, afI, fns.aO8_2, agl, fns.aO8_39, aO8_115, fns.aO8_62, fns.aO8_3, fns.aO8_65, adz, aeZ, agr, fns.aO8_78, aeL, agb, agF, aO8_131, aei, fns.aO8_79 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
task.spawn(fns.worker2)
adT = fns.fn823
fns.aO8_11 = fns.fn2196
ae8 = fns.fn144
aee = fns.fn1648
adC = fns.fn1782
aeO = fns.fn676
adj = fns.fn2668
adL = fns.fn167
afI = fns.fn1865
fns.aO8_2 = fns.fn2343
agl = fns.fn2244
fns.aO8_39 = fns.fn1151
aO8_115 = fns.fn2436
fns.aO8_62 = fns.fn3198
fns.aO8_3 = fns.fn1427
fns.aO8_65 = fns.fn3212
adz = fns.fn508
aeZ = fns.fn729
agr = fns.fn3149
fns.aO8_78 = function()
    if not aez("LeaveFailsafe") then
        if fns.aO8_68.Failsafe ~= "Idle" then
            fns.aO8_13("Failsafe", "Idle")
        end
        agj = nil
        aep = nil
        aga = nil
        return
    end
    local attr = adU:GetAttribute("CurrentDungeon")
    local aDE = afY() ~= nil
    if not aDE then
        local aDF_1 = attr ~= ""
        local aDG_1 = typeof(attr) == "string" and aDF_1
        aDE = aDG_1
    end
    local aDD_1 = aDE
    local aDE_1 = not aDD_1 or fns.aO8_19()
    if aDE_1 then
        agj = nil
        aep = nil
        aga = nil
        fns.aO8_13("Failsafe", "Waiting")
        return
    end
    local aDC = os.clock()
    local aDD_2 = fns.aO8_58()
    local aDE_2 = aDD_2 and aDD_2.Position
    local aDE_3 = fns.aO8_14("FailsafeTime", 45)
    if aDE_2 then
        if not aga then
            aga = aDE_2
            aep = aDC
        elseif (aDE_2 - aga).Magnitude > 5 then
            aga = aDE_2
            aep = aDC
        end
    else
        aep = aDC
        aga = nil
    end
    if Knit then
        pcall(function()
            local aDz = Knit.GetController("BoostSelectionController")
            if aDz and aDz._active then
                aep = aDC
                agj = nil
            end
        end)
    end
    if fns.aO8_48.kind == "chest" or fns.aO8_48.kind == "altar" or fns.aO8_48.kind == "totem" then
        agj = nil
    end
    local aDD_5 = false
    local aDF_2 = false
    if aeZ() then
        agj = nil
    else
        if not agj then
            agj = aDC
        end
        if aDC - agj >= aDE_3 then
            aDF_2 = true
        end
    end
    if aep and aDC - aep >= aDE_3 then
        aDD_5 = true
    end
    if aDF_2 or aDD_5 then
        local aDH_1 = aDD_5 and "Stalled" or "Triggered"
        fns.aO8_13("Failsafe", aDH_1)
        if aDF_2 then
            agj = aDC - aDE_3 + 10
        end
        if aDD_5 then
            aep = aDC - aDE_3 + 10
        end
        agr()
        return
    end
    local aDD_6 = "Mobs present"
    if agj and aep then
        local aDF_4 = aDC - agj
        local aDG_5 = aDC - aep
        if aDF_4 > aDG_5 and aDF_4 > 3 then
            aDD_6 = string.format("No mobs %ds/%ds", math.floor(aDF_4), math.floor(aDE_3))
        elseif aDG_5 > 3 then
            aDD_6 = string.format("Stalled %ds/%ds", math.floor(aDG_5), math.floor(aDE_3))
        end
    elseif agj then
        local aDF_5 = aDC - agj
        if aDF_5 > 3 then
            aDD_6 = string.format("No mobs %ds/%ds", math.floor(aDF_5), math.floor(aDE_3))
        end
    elseif aep then
        local aDF_6 = aDC - aep
        if aDF_6 > 3 then
            aDD_6 = string.format("Stalled %ds/%ds", math.floor(aDF_6), math.floor(aDE_3))
        end
    end
    fns.aO8_13("Failsafe", aDD_6)
end
aeL = fns.fn2838
agb = fns.fn1035
agF = fns.fn2125
aO8_131 = function()
    if not aez("AutoAltarBlessing") then
        if fns.aO8_68.Altar ~= "Idle" then
            fns.aO8_13("Altar", "Idle")
        end
        if fns.aO8_48.kind == "altar" then
            fns.aO8_9("altar")
        end
        aO8_104 = nil
        fns.aO8_73 = 0
        aeP = false
        return false
    end
    local aED = if afm() then 1 else 0
    if aED == 1 then
        if fns.aO8_48.kind == "altar" then
            fns.aO8_9("altar")
        end
        return false
    end
    local aEv = aeL()
    local aEx = aEv and aEv._active and typeof(aEv._candidates) == "table"
    local aEy_2
    local aEz = aeP and not aEx
    local aEz_1
    if aEz then
        aeP = false
        if aO8_104 then
            aO8_96(aO8_104)
        else
            fns.aO8_13("Altar", "Claimed")
        end
        if fns.aO8_48.kind == "altar" then
            fns.aO8_9("altar")
        end
        return false
    elseif aEx then
        aeP = true
        aO8_122.enemy = nil
        local aEx_2 = fns.aO8_58()
        if aEx_2 then
            aO8_123(aEx_2.Position, "altar", nil, 80)
        end
        if aEv._selecting then
            fns.aO8_13("Altar", "Choosing")
            return true
        elseif aEv._ready then
            if os.clock() - fns.aO8_42.altarSelect >= 0.2 then
                fns.aO8_42.altarSelect = os.clock()
                local aEu = agF(aEv)
                if aEu then
                    local aEx_3 = aEv._candidates[aEu]
                    pcall(function()
                        aEv:_OnCardClicked(aEu)
                    end)
                    if aO8_104 then
                        aO8_96(aO8_104)
                    else
                        local aEy_1 = typeof(aEx_3) == "table" and aEx_3.Title
                        local aEx_4 = aEy_1 or "Claimed"
                        fns.aO8_13("Altar", aEx_4)
                    end
                end
            end
            return true
        else
            fns.aO8_13("Altar", "Opening")
            return true
        end
    else
        aeP = false
        local aEx_5 = fns.aO8_58()
        if not aEx_5 then
            fns.aO8_13("Altar", "No character")
            fns.aO8_9("altar")
            return false
        end
        local aEw = adV()
        if not aEw then
            if fns.aO8_48.kind == "altar" then
                fns.aO8_9("altar")
            end
            if aeE() then
                if fns.aO8_68.Altar ~= "Claimed" then
                    fns.aO8_13("Altar", "Claimed")
                end
            elseif fns.aO8_68.Altar ~= "Idle" then
                fns.aO8_13("Altar", "Idle")
            end
            return false
        elseif aO8_133[aEw.model] then
            if fns.aO8_48.kind == "altar" then
                fns.aO8_9("altar")
            end
            fns.aO8_13("Altar", "Claimed")
            return false
        else
            aO8_122.enemy = nil
            if fns.aO8_48.kind == "chest" then
                fns.aO8_9("chest")
            end
            aEy_2, aEz_1 = afy(aEw.part, aEx_5.Position, 7)
            aO8_123(aEy_2, "altar", aEz_1, 80)
            pcall(function()
                aEw.prompt.Enabled = true
                aEw.prompt.HoldDuration = 0
                aEw.prompt.MaxActivationDistance = math.max(aEw.prompt.MaxActivationDistance, 25)
                aEw.prompt.RequiresLineOfSight = false
            end)
            if (aEx_5.Position - aEw.part.Position).Magnitude <= 14 then
                ac7(aEw.model)
                local aED_1 = if afm() then 1 else 0
                if aED_1 == 1 then
                    if fns.aO8_48.kind == "altar" then
                        fns.aO8_9("altar")
                    end
                    return false
                elseif fireproximityprompt then
                    if os.clock() - fns.aO8_42.altar >= 0.5 then
                        fns.aO8_42.altar = os.clock()
                        pcall(fireproximityprompt, aEw.prompt)
                    end
                    fns.aO8_13("Altar", "Activating")
                    return true
                else
                    fns.aO8_13("Altar", "No fireproximityprompt")
                    return true
                end
            else
                fns.aO8_13("Altar", "Moving")
                return true
            end
        end
    end
end
aei = fns.fn3227
fns.aO8_79 = function()
    local model
    local aET_1
    local aEQ_1
    local aEP_1
    if not aez("AutoRefillPotion") then
        if fns.aO8_68.Refill ~= "Idle" then
            fns.aO8_13("Refill", "Idle")
        end
        if fns.aO8_48.kind == "refill" then
            fns.aO8_9("refill")
        end
        return false
    end
    local aEO = aO8_103("RefillMode", "Below Cap")
    aEP_1, aEQ_1 = aei()
    local aER = fns.aO8_14("RefillCap", 4)
    local aES = afY()
    if aEO == "When Empty" then
        aET_1 = aEQ_1 <= 0
    elseif aEO == "Once Per Run" then
        aET_1 = aES ~= nil and aES ~= aey
    else
        aET_1 = aEQ_1 < aER
    end
    if not aET_1 then
        if fns.aO8_48.kind == "refill" then
            fns.aO8_9("refill")
        end
        local aEO_2 = aEP_1 == ""
        local aES_1 = typeof(aEP_1) ~= "string" or aEO_2
        if aES_1 then
            fns.aO8_13("Refill", "None equipped")
        else
            fns.aO8_13("Refill", string.format("Full %d/%d", aEQ_1, aER))
        end
        return false
    end
    local aEO_3 = fns.aO8_58()
    if not aEO_3 then
        fns.aO8_13("Refill", "No character")
        fns.aO8_9("refill")
        return false
    end
    local aEM = agb("Potion_Station", aeK)
    if not aEM then
        if fns.aO8_48.kind == "refill" then
            fns.aO8_9("refill")
        end
        fns.aO8_13("Refill", "None")
        return false
    end
    aO8_122.enemy = nil
    local aEP_2 = aEM.part.Position + Vector3.new(0, 3, 0)
    aO8_123(aEP_2, "refill", aEM.part.Position, 80)
    if (aEO_3.Position - aEM.part.Position).Magnitude <= 12 then
        pcall(function()
            aEM.prompt.HoldDuration = 0
            aEM.prompt.MaxActivationDistance = math.max(aEM.prompt.MaxActivationDistance, 25)
            aEM.prompt.RequiresLineOfSight = false
        end)
        if fireproximityprompt then
            if os.clock() - fns.aO8_42.refill >= 0.5 then
                fns.aO8_42.refill = os.clock()
                if not ags[aEM.model] then
                    ags[aEM.model] = true
                    model = aEM.model
                    aEM.prompt.Triggered:Once(function()
                        aeK[model] = true
                        aey = afY()
                    end)
                end
                pcall(fireproximityprompt, aEM.prompt)
            end
            fns.aO8_13("Refill", "Refilling")
            return true
        end
        fns.aO8_13("Refill", "No fireproximityprompt")
        return true
    end
    fns.aO8_13("Refill", "Moving")
    return true
end
aO8_109 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = fns.aO8_33.DISCORD_INVITE, Copyable = true }, "|", fns.aO8_33.GAME_NAME },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
aO8_88 = {
    Info = aO8_109:AddTab("Info", "info"),
    Main = aO8_109:AddTab("Main", "swords"),
    Lobby = aO8_109:AddTab("Lobby", "door-open"),
    Player = aO8_109:AddTab("Player", "person-standing"),
    Webhook = aO8_109:AddTab("Webhook", "webhook"),
    Settings = aO8_109:AddTab("Settings", "settings")
}
fns.aO8_10, aO8_105, agH, fns.aO8_45, aO8_101, fns.aO8_20, aO8_83, fns.aO8_47, fns.aO8_25, fns.aO8_31 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.aO8_10 = {
    "Altar",
    "Chest",
    "Refill",
    "Totem",
    "Farm",
    "Skill",
    "M1",
    "Potion",
    "Replay",
    "Return",
    "Failsafe",
    "Create",
    "BossRush",
    "Challenge",
    "MagicUnleashed",
    "ProfessorDodge",
    "MapNuke",
    "Endless",
    "Quest",
    "Sell",
    "Shop",
    "Spin",
    "Point",
    "Gear"
}
agH = fns.fn2778
fns.aO8_45 = function(GO)
    local aFe, aFf
    aFf = {}
    aFe = 0
    local function aFg(GS)
        if aFf[GS] then
            return
        end
        local aFd = if not aO8_110(GS) then 1 else 0
        if aFd == 1 then
            return
        end
        local aE9 = GO ~= nil and aej(GS) ~= GO
        if aE9 then
            return
        end
        aFf[GS] = true
        aFe += 1
    end
    for k, v in afW:GetTagged("Enemy") do
        aFg(v)
    end
    local Raid_NPCs = fns.aO8_81:FindFirstChild("Raid_NPCs")
    if Raid_NPCs then
        for i, child in Raid_NPCs:GetChildren() do
            if aeX(child) then
                aFg(child)
            end
        end
    end
    return aFe
end
aO8_101 = fns.fn3273
fns.aO8_20 = fns.fn2675
aO8_83 = fns.fn2890
fns.aO8_47 = fns.fn1916
aO8_105 = nil
fns.aO8_25 = fns.fn1890
fns.aO8_31 = fns.fn2280
afV = nil
aO8_126 = aO8_88.Main:AddRightGroupbox("Overview", "activity")
afV = {
    Doing = aO8_126:AddLabel(aO8_89("Currently Doing", "Idle", aO8_97), true),
    Dungeon = aO8_126:AddLabel(aO8_89("Dungeon", "none", aeH), true),
    Phase = aO8_126:AddLabel(aO8_89("Phase", "-", aeY), true),
    Room = aO8_126:AddLabel(aO8_89("Room", "0 / 0", ac8), true),
    Enemy = aO8_126:AddLabel(aO8_89("Enemies", "0 here / 0 total", ae7), true),
    Chest = aO8_126:AddLabel(aO8_89("Chests ready", "0", aO8_97), true),
    Blessings = aO8_126:AddLabel(aO8_89("Blessing Cards", "none", aeH), true)
}
if ((not afV or not aO8_126) and (aO8_126 or afV) and 21 and (not afV and not afV or false or (afV or (afV or 21))) or (aO8_126 and not afV or aO8_126 or not aO8_126 and (aO8_126 or 21) or not aO8_126 and (afV and not aO8_126) and 21)) and not ((not afV or not aO8_126) and (aO8_126 or afV) and 21 and (not afV and not afV or false or (afV or (afV or 21))) or (aO8_126 and not afV or aO8_126 or not aO8_126 and (aO8_126 or 21) or not aO8_126 and (afV and not aO8_126) and 21)) then
    Options:AddDivider("Magic Unleashed")
    Options:AddToggle("AutoMagicUnleashed", { Text = "Auto Join Magic Unleashed", Default = false })
    aO8_126(Options, "MagicUnleashed")
    Options:AddDropdown("MagicUnleashedDifficulty", { Text = "Difficulty", Values = { "Extreme", "Impossible", "Normal" }, Default = "Normal" })
    Options:AddToggle("AutoDodgeDarkProfessor", { Text = "Auto Dodge Dark Professor", Default = false })
    aO8_126(Options, "ProfessorDodge")
    Options:AddDropdown("ProfessorDodgeSkills", {
        Text = "Skills to Dodge",
        Multi = true,
        Default = { "Umbral Bolt", "Nightfall Sigils", "Oblivion Collapse", "Grave Crush" },
        Values = { "Grave Crush", "Oblivion Collapse", "Umbral Bolt", "Nightfall Sigils" }
    })
    fns.aO8_44.ProfessorDodgeSkills:OnChanged(fns.fn3171)
    Options:AddToggle("SkipCrystal", { Text = "Skip Crystal", Default = false })
    Options:AddToggle("LeaveMapNuke", { Text = "Leave on Map Nuke", Default = false })
    aO8_126(Options, "MapNuke")
    task.spawn(fns.worker3)
else
    aO8_126:AddDivider("Magic Unleashed")
    aO8_126:AddToggle("AutoMagicUnleashed", { Text = "Auto Join Magic Unleashed", Default = false })
    fns.aO8_44(aO8_126, "MagicUnleashed")
    aO8_126:AddDropdown("MagicUnleashedDifficulty", { Text = "Difficulty", Values = { "Normal", "Extreme", "Impossible" }, Default = "Normal" })
    aO8_126:AddToggle("AutoDodgeDarkProfessor", { Text = "Auto Dodge Dark Professor", Default = false })
    fns.aO8_44(aO8_126, "ProfessorDodge")
    aO8_126:AddDropdown("ProfessorDodgeSkills", {
        Text = "Skills to Dodge",
        Values = { "Umbral Bolt", "Grave Crush", "Nightfall Sigils", "Oblivion Collapse" },
        Multi = true,
        Default = { "Umbral Bolt", "Grave Crush", "Nightfall Sigils", "Oblivion Collapse" }
    })
    Options.ProfessorDodgeSkills:OnChanged(fns.fn3171)
    aO8_126:AddToggle("SkipCrystal", { Text = "Skip Crystal", Default = false })
    aO8_126:AddToggle("LeaveMapNuke", { Text = "Leave on Map Nuke", Default = false })
    fns.aO8_44(aO8_126, "MapNuke")
    task.spawn(fns.worker3)
end
aO8_136 = function(ID)
    local DiscordGroup = ID:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = fns.aO8_49 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = fns.aO8_49 })
end
for k, v in aO8_88 do
    if k ~= "Info" then
        aO8_136(v)
    end
end
aex, aO8_109 = nil, nil
aO8_126 = 2
repeat
    aO8_136 = (aO8_126 * 2 + 0) % 3 + 1
    if aO8_136 <= 2 then
        if aO8_136 <= 1 then
            local aVe = bit32.rrotate(bit32.bxor(bit32.lrotate(aO8_126, 1), string.byte(tostring(aex))), 7)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aVe, 847002377), 939775154), (bit32.bxor(bit32.band(aVe, 3447964918), 3142998217))), 939775154), 3142998217) ~= aVe then
                aO8_109()
            else
                aO8_109()
            end
            aO8_126 = (aO8_126 + 8) % 12
        else
            aO8_136 = {
                "jmqivww",
                "tabemmuqjo",
                "xfrbkpcpxbz",
                "rayqepxly",
                "zdfn",
                "kacykgqza",
                "aqgunqu",
                "swain",
                "inrz"
            }
            local aT0 = aO8_126
            fns.aO8_75 = aO8_136[aT0 % 9 + 1]
            if fns.aO8_75:len() <= fns.aO8_75:gsub("(.)", "%1%1", aT0 % 3 % 2 + 1):len() then
                aex = fns.fn1722
            else
                aO8_109 = fns.fn1722
            end
            aO8_126 = (aO8_126 + 8) % 12
        end
    else
        local aXv = bit32.rrotate(bit32.bxor(bit32.lrotate(aO8_126, 5), string.byte(tostring(aex))), 2)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aXv, 682810301), 4010254686), (bit32.bxor(bit32.band(aXv, 3612156994), 3719678867))), 4010254686), 3719678867) ~= aXv then
            aex = function()
                local aHv
                local aHs
                aHs = nil
                aHv = nil
                local Label, Label2, Label3, aHx, aHy
                aHs = "Unknown"
                pcall(function()
                    local aHc_2
                    local aHb_3
                    if identifyexecutor then
                        aHc_2, aHb_3 = identifyexecutor()
                        local aHd = aHc_2 ~= ""
                        local aHe = type(aHc_2) == "string" and aHd
                        if aHe then
                            local aHd_2 = type(aHb_3) == "string" and aHb_3 ~= "" and aHc_2 .. " " .. aHb_3
                            local aHb_4 = aHd_2
                            local aHl = if aHb_4 then 1 else 0
                            local aHj = 614 * aHl + 239 * (1 - aHl)
                            local aHk = 1572 * aHl + 3306 * (1 - aHl)
                            if not ((aHj * 1495 + aHk * 814 + aHj * aHk) % 16777213 == 3162746) then
                                aHb_4 = aHc_2
                            end
                            aHs = aHb_4
                        end
                    end
                end)
                local aHz = aex()
                aHv = os.clock()
                aHy = function()
                    local aHm = math.floor(os.clock() - aHv)
                    if aHm < 60 then
                        return aHm .. "s"
                    elseif aHm < 3600 then
                        return string.format("%dm %ds", aHm // 60, aHm % 60)
                    else
                        return string.format("%dh %dm", aHm // 3600, aHm % 3600 // 60)
                    end
                end
                local UserGroup = aO8_88.Info:AddLeftGroupbox("User", "circle-user")
                UserGroup:AddPlayerInfo("InfoUserCard", { Player = adU, Title = "User", HeaderIcon = "user", Collapsible = false })
                UserGroup:AddLabel(aO8_89("User", adU.DisplayName .. " @" .. adU.Name, ae7), true)
                UserGroup:AddLabel(aO8_89("UserId", tostring(adU.UserId), ac8), true)
                UserGroup:AddLabel(aO8_89("Executor", aHs .. "  " .. aHz, ae7), true)
                UserGroup:AddDivider()
                Label3 = UserGroup:AddLabel(aO8_89("Session", aHy(), aeY), true)
                UserGroup:AddDivider()
                UserGroup:AddButton({
                    Text = "Copy Username",
                    Func = function()
                        aO8_116(adU.Name, "Copied username")
                    end
                })
                UserGroup:AddButton({
                    Text = "Copy Profile Link",
                    Func = function()
                        aO8_116("https://www.roblox.com/users/" .. tostring(adU.UserId) .. "/profile", "Copied profile link")
                    end
                })
                local SessionGroup = aO8_88.Info:AddRightGroupbox("Session", "signal")
                SessionGroup:AddDivider("Server")
                SessionGroup:AddLabel(aO8_89("Game", fns.aO8_33.GAME_NAME, ac8), true)
                Label2 = SessionGroup:AddLabel(aO8_89("Players", "0/0", ae7), true)
                aHx = tostring(game.JobId)
                local aHA_3 = #aHx > 18 and string.sub(aHx, 1, 18) .. "..."
                local aHB = aHA_3
                local aHF = if aHB then 1 else 0
                local aHD = 1237 * aHF + 3197 * (1 - aHF)
                local aHE = 3201 * aHF + 1795 * (1 - aHF)
                if not ((aHD * 3343 + aHE * 1013 + aHD * aHE) % 16777213 == 11337541) then
                    aHB = aHx
                end
                local aHA_4 = aHB
                SessionGroup:AddLabel(aO8_89("Job", aHA_4, aO8_106), true)
                Label = SessionGroup:AddLabel(aO8_89("Ping", "0 ms", aeY), true)
                SessionGroup:AddDivider()
                SessionGroup:AddButton({
                    Text = "Rejoin Server",
                    Func = function()
                        af6:Teleport(game.PlaceId, adU)
                    end
                })
                SessionGroup:AddButton({
                    Text = "Copy Job ID",
                    Func = function()
                        aO8_116(aHx, "Copied Job ID")
                    end
                })
                task.spawn(function()
                    local aHp_2
                    local aHo_3
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        end
                        Label3:SetText(aO8_89("Session", aHy(), aeY))
                        Label2:SetText(aO8_89("Players", #acZ:GetPlayers() .. "/" .. tostring(acZ.MaxPlayers), ae7))
                        aHo_3, aHp_2 = pcall(function()
                            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                        end)
                        local aHo_4 = aHo_3 and aHp_2 .. " ms" or "n/a"
                        Label:SetText(aO8_89("Ping", aHo_4, aeY))
                    end
                end)
                local SocialsGroup = aO8_88.Info:AddRightGroupbox("Socials", "link")
                SocialsGroup:AddButton({ Text = "Discord", Func = fns.aO8_49 })
                SocialsGroup:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        aO8_116(fns.aO8_33.RSCRIPTS_LINK, "Copied Rscripts profile to clipboard")
                    end
                })
                SocialsGroup:AddButton({
                    Text = "Website",
                    Func = function()
                        aO8_116(fns.aO8_33.WEBSITE_LINK, "Copied website link")
                    end
                })
            end
        else
            aO8_109 = function()
                local aHv
                local aHs
                aHs = nil
                aHv = nil
                local Label, Label2, Label3, aHx, aHy
                aHs = "Unknown"
                pcall(function()
                    local aHc_1
                    local aHb_1
                    if identifyexecutor then
                        aHc_1, aHb_1 = identifyexecutor()
                        local aHd = aHc_1 ~= ""
                        local aHe = type(aHc_1) == "string" and aHd
                        if aHe then
                            local aHd_1 = type(aHb_1) == "string" and aHb_1 ~= "" and aHc_1 .. " " .. aHb_1
                            local aHb_2 = aHd_1
                            local aHl = if aHb_2 then 1 else 0
                            local aHj = 614 * aHl + 239 * (1 - aHl)
                            local aHk = 1572 * aHl + 3306 * (1 - aHl)
                            if not ((aHj * 1495 + aHk * 814 + aHj * aHk) % 16777213 == 3162746) then
                                aHb_2 = aHc_1
                            end
                            aHs = aHb_2
                        end
                    end
                end)
                local aHz = aex()
                aHv = os.clock()
                aHy = function()
                    local aHm = math.floor(os.clock() - aHv)
                    if aHm < 60 then
                        return aHm .. "s"
                    elseif aHm < 3600 then
                        return string.format("%dm %ds", aHm // 60, aHm % 60)
                    else
                        return string.format("%dh %dm", aHm // 3600, aHm % 3600 // 60)
                    end
                end
                local UserGroup = aO8_88.Info:AddLeftGroupbox("User", "circle-user")
                UserGroup:AddPlayerInfo("InfoUserCard", { Player = adU, Title = "User", HeaderIcon = "user", Collapsible = false })
                UserGroup:AddLabel(aO8_89("User", adU.DisplayName .. " @" .. adU.Name, ae7), true)
                UserGroup:AddLabel(aO8_89("UserId", tostring(adU.UserId), ac8), true)
                UserGroup:AddLabel(aO8_89("Executor", aHs .. "  " .. aHz, ae7), true)
                UserGroup:AddDivider()
                Label3 = UserGroup:AddLabel(aO8_89("Session", aHy(), aeY), true)
                UserGroup:AddDivider()
                UserGroup:AddButton({
                    Text = "Copy Username",
                    Func = function()
                        aO8_116(adU.Name, "Copied username")
                    end
                })
                UserGroup:AddButton({
                    Text = "Copy Profile Link",
                    Func = function()
                        aO8_116("https://www.roblox.com/users/" .. tostring(adU.UserId) .. "/profile", "Copied profile link")
                    end
                })
                local SessionGroup = aO8_88.Info:AddRightGroupbox("Session", "signal")
                SessionGroup:AddDivider("Server")
                SessionGroup:AddLabel(aO8_89("Game", fns.aO8_33.GAME_NAME, ac8), true)
                Label2 = SessionGroup:AddLabel(aO8_89("Players", "0/0", ae7), true)
                aHx = tostring(game.JobId)
                local aHA_1 = #aHx > 18 and string.sub(aHx, 1, 18) .. "..."
                local aHB = aHA_1
                local aHF = if aHB then 1 else 0
                local aHD = 1237 * aHF + 3197 * (1 - aHF)
                local aHE = 3201 * aHF + 1795 * (1 - aHF)
                if not ((aHD * 3343 + aHE * 1013 + aHD * aHE) % 16777213 == 11337541) then
                    aHB = aHx
                end
                local aHA_2 = aHB
                SessionGroup:AddLabel(aO8_89("Job", aHA_2, aO8_106), true)
                Label = SessionGroup:AddLabel(aO8_89("Ping", "0 ms", aeY), true)
                SessionGroup:AddDivider()
                SessionGroup:AddButton({
                    Text = "Rejoin Server",
                    Func = function()
                        af6:Teleport(game.PlaceId, adU)
                    end
                })
                SessionGroup:AddButton({
                    Text = "Copy Job ID",
                    Func = function()
                        aO8_116(aHx, "Copied Job ID")
                    end
                })
                task.spawn(function()
                    local aHp_1
                    local aHo_1
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        end
                        Label3:SetText(aO8_89("Session", aHy(), aeY))
                        Label2:SetText(aO8_89("Players", #acZ:GetPlayers() .. "/" .. tostring(acZ.MaxPlayers), ae7))
                        aHo_1, aHp_1 = pcall(function()
                            return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                        end)
                        local aHo_2 = aHo_1 and aHp_1 .. " ms" or "n/a"
                        Label:SetText(aO8_89("Ping", aHo_2, aeY))
                    end
                end)
                local SocialsGroup = aO8_88.Info:AddRightGroupbox("Socials", "link")
                SocialsGroup:AddButton({ Text = "Discord", Func = fns.aO8_49 })
                SocialsGroup:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        aO8_116(fns.aO8_33.RSCRIPTS_LINK, "Copied Rscripts profile to clipboard")
                    end
                })
                SocialsGroup:AddButton({
                    Text = "Website",
                    Func = function()
                        aO8_116(fns.aO8_33.WEBSITE_LINK, "Copied website link")
                    end
                })
            end
        end
        aO8_126 = (aO8_126 + 2) % 12
    end
until (aO8_126 * 1 + 10) % 12 == 6
fns.aO8_75 = nil
aO8_136 = 2
repeat
    aO8_126 = (aO8_136 * 1 + 0) % 2 + 1
    if aO8_126 <= 1 then
        aO8_126 = {
            "cxehqk",
            "ackxtekat",
            "fek",
            "tggqqiut",
            "aohpgao",
            "pebjd",
            "ngsf",
            "hsodelvovvlt",
            "fgk",
            "macytcfg",
            "yvlapv",
            "alwdt",
            "kisezqxiqt",
            "llg"
        }
        if aO8_126[(aO8_136 * 73 + 48) % 14 + 1] <= aO8_126[(aO8_136 * 73 + 48) % 14 + 1] then
            fns.aO8_75 = aO8_88.Main:AddLeftGroupbox("Automation", "swords")
        else
            aO8_88 = fns.aO8_75.Main:AddLeftGroupbox("Automation", "swords")
        end
        aO8_136 = (aO8_136 + 3) % 8
    else
        if (aO8_136 * 1 + 9) * 9 % 4 == ((aO8_136 * 1 + 9) * 9 + 4) % 4 then
            fns.aO8_75:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
            fns.aO8_44(fns.aO8_75, "Farm")
            fns.aO8_75:AddDropdown("FarmMode", { Text = "Farm Mode", Values = { "Overhead", "Orbit", "Behind" }, Default = "Behind" })
        else
            fns.aO8_44:AddToggle("AutoFarm", { Text = "Auto Farm", Default = false })
            fns.aO8_75(fns.aO8_44, "Farm")
            fns.aO8_44:AddDropdown("FarmMode", { Default = "Behind", Text = "Farm Mode", Values = { "Orbit", "Behind", "Overhead" } })
        end
        aO8_136 = (aO8_136 + 7) % 8
    end
until (aO8_136 * 5 + 4) % 8 == 0
aO8_109 = nil
aO8_126 = 0
repeat
    aO8_136 = (aO8_126 * 1 + 1) % 2 + 1
    if aO8_136 <= 1 then
        aO8_136 = (vector.create((aO8_126 * 2 + 2) % 11 + 1, (aO8_126 * 2 + 9) % 13 + 1, (aO8_126 * 6 + 7) % 17 + 1))
        local aWa = vector.floor(aO8_136) + vector.ceil(aO8_136 * -1)
        if vector.dot(aWa, aWa) == 0 then
            aO8_109:AddSlider("OverheadHeight", { Text = "Height", Default = 10, Min = 2, Max = 30, Rounding = 1 })
            aO8_109:AddSlider("OverheadMoveSpeed", { Text = "Speed", Default = 60, Min = 10, Max = 200, Rounding = 0 })
            aO8_109:SetupDependencies({ { Options.FarmMode, "Overhead" } })
        else
            Options:AddSlider("OverheadHeight", { Min = 2, Rounding = 1, Default = 10, Text = "Height", Max = 30 })
            Options:AddSlider("OverheadMoveSpeed", { Text = "Speed", Default = 60, Rounding = 0, Max = 200, Min = 10 })
            Options:SetupDependencies({ { aO8_109.FarmMode, "Overhead" } })
        end
        aO8_126 = (aO8_126 + 7) % 16
    else
        aO8_136 = (vector.create((aO8_126 * 3 + 3) % 11 + 1, (aO8_126 * 3 + 11) % 13 + 1, (aO8_126 * 10 + 17) % 17 + 1))
        fns.aO8_59 = (vector.create((aO8_126 * 5 + 4) % 11 + 1, (aO8_126 * 10 + 3) % 13 + 1, (aO8_126 * 6 + 15) % 17 + 1))
        fns.aO8_40 = (vector.create((aO8_126 * 7 + 6) % 11 + 1, (aO8_126 * 2 + 7) % 13 + 1, (aO8_126 * 10 + 9) % 17 + 1))
        if vector.dot(vector.cross(aO8_136, fns.aO8_59), fns.aO8_40) == vector.dot(vector.cross(fns.aO8_59, fns.aO8_40), aO8_136) + 2 then
            fns.aO8_75 = aO8_109:AddDependencyBox()
        else
            aO8_109 = fns.aO8_75:AddDependencyBox()
        end
        aO8_126 = (aO8_126 + 9) % 16
    end
until (aO8_126 * 5 + 8) % 16 == 8
fns.aO8_59 = nil
aO8_136 = 2
repeat
    aO8_126 = (aO8_136 * 1 + 1) % 2 + 1
    if aO8_126 <= 1 then
        if (aO8_136 or aO8_136 or (not fns.aO8_59 or not fns.aO8_59)) and (not fns.aO8_59 or aO8_136 or not fns.aO8_59 and aO8_136) and not ((aO8_136 or aO8_136 or (not fns.aO8_59 or not fns.aO8_59)) and (not fns.aO8_59 or aO8_136 or not fns.aO8_59 and aO8_136)) then
            Options:AddSlider("OrbitHeight", { Text = "Height", Min = 0, Rounding = 1, Default = 6, Max = 25 })
            Options:AddSlider("OrbitRadius", { Min = 2, Rounding = 1, Text = "Radius", Default = 8, Max = 25 })
            Options:AddSlider("OrbitSpinSpeed", { Min = 0.25, Max = 6, Text = "Orbit Speed", Rounding = 2, Default = 1.75 })
            Options:AddSlider("OrbitMoveSpeed", { Text = "Speed", Min = 10, Default = 70, Rounding = 0, Max = 200 })
            Options:SetupDependencies({ { fns.aO8_59.FarmMode, "Orbit" } })
        else
            fns.aO8_59:AddSlider("OrbitHeight", { Text = "Height", Default = 6, Min = 0, Max = 25, Rounding = 1 })
            fns.aO8_59:AddSlider("OrbitRadius", { Text = "Radius", Default = 8, Min = 2, Max = 25, Rounding = 1 })
            fns.aO8_59:AddSlider("OrbitSpinSpeed", { Text = "Orbit Speed", Default = 1.75, Min = 0.25, Max = 6, Rounding = 2 })
            fns.aO8_59:AddSlider("OrbitMoveSpeed", { Text = "Speed", Default = 70, Min = 10, Max = 200, Rounding = 0 })
            fns.aO8_59:SetupDependencies({ { Options.FarmMode, "Orbit" } })
        end
        aO8_136 = (aO8_136 + 5) % 16
    else
        aO8_126 = (vector.create((aO8_136 * 6 + 2) % 11 + 1, (aO8_136 * 8 + 7) % 13 + 1, (aO8_136 * 8 + 13) % 17 + 1))
        aO8_109 = (vector.create((aO8_136 * 1 + 4) % 11 + 1, (aO8_136 * 3 + 5) % 13 + 1, (aO8_136 * 7 + 2) % 17 + 1))
        local aWs = vector.dot(aO8_126, aO8_109)
        if aWs * aWs <= vector.dot(aO8_126, aO8_126) * vector.dot(aO8_109, aO8_109) then
            fns.aO8_59 = fns.aO8_75:AddDependencyBox()
        else
            fns.aO8_75 = fns.aO8_59:AddDependencyBox()
        end
        aO8_136 = (aO8_136 + 3) % 16
    end
until (aO8_136 * 9 + 11) % 16 == 5
aO8_109 = nil
aO8_126 = 0
repeat
    aO8_136 = (aO8_126 * 1 + 0) % 2 + 1
    if aO8_136 <= 1 then
        local aTA = bit32.rrotate(bit32.bxor(bit32.lrotate(aO8_126, 1), string.byte(tostring(aO8_109))), 21)
        if bit32.bxor(bit32.lrotate(bit32.bxor(aTA, 442140493), 30), 1184276947) ~= bit32.lrotate(aTA, 30) then
            fns.aO8_75 = aO8_109:AddDependencyBox()
        else
            aO8_109 = fns.aO8_75:AddDependencyBox()
        end
        aO8_126 = (aO8_126 + 11) % 16
    else
        if aO8_126 * 84383953 + 2 + 2 >= aO8_126 * 84383953 + 2 + 2 + 3 then
            Options:AddSlider("BehindHeight", { Min = 0, Rounding = 1, Max = 20, Text = "Height", Default = 3 })
            Options:AddSlider("BehindDistance", { Text = "Distance", Min = 2, Max = 20, Rounding = 1, Default = 6 })
            Options:AddSlider("BehindMoveSpeed", { Rounding = 0, Default = 60, Max = 200, Min = 10, Text = "Speed" })
            Options:SetupDependencies({ { aO8_109.FarmMode, "Behind" } })
        else
            aO8_109:AddSlider("BehindHeight", { Text = "Height", Default = 3, Min = 0, Max = 20, Rounding = 1 })
            aO8_109:AddSlider("BehindDistance", { Text = "Distance", Default = 6, Min = 2, Max = 20, Rounding = 1 })
            aO8_109:AddSlider("BehindMoveSpeed", { Text = "Speed", Default = 60, Min = 10, Max = 200, Rounding = 0 })
            aO8_109:SetupDependencies({ { Options.FarmMode, "Behind" } })
        end
        aO8_126 = (aO8_126 + 11) % 16
    end
until (aO8_126 * 7 + 11) % 16 == 5
aO8_136 = 3
repeat
    aO8_126 = {
        "mwqx",
        "djc",
        "fjfuepdge",
        "zbrlmvkxdg",
        "ldeslrycpzrb",
        "nvrh",
        "knwrb",
        "hpykiaapjres",
        "qqbhixryq",
        "tjxw",
        "jcfjedvnrseq",
        "bcze",
        "agy",
        "kcejfuthrbr"
    }
    if aO8_126[(aO8_136 * 83 + 80) % 14 + 1] <= aO8_126[(aO8_136 * 83 + 80) % 14 + 1] then
        fns.aO8_75:AddToggle("FarmNoClip", { Text = "Use Noclip when Farming", Default = false })
    else
        fns.aO8_75:AddToggle("FarmNoClip", { Text = "Use Noclip when Farming", Default = false })
    end
    aO8_136 = (aO8_136 + 0) % 4
until (aO8_136 * 3 + 3) % 4 == 0
aO8_109 = { "Celestial", "Mythic", "Legendary", "Epic", "Rare", "Uncommon", "Common", "Spins" }
fns.aO8_59 = fns.aO8_75:AddDependencyBox()
fns.aO8_59:AddDropdown("ChestPriority", { Text = "Chest Priority", Values = aO8_109, Multi = true, Default = table.clone(aO8_109) })
fns.aO8_59:SetupDependencies({ { Toggles.AutoFarm, true } })
aO8_136 = 3
repeat
    local aVc = bit32.rrotate(bit32.bxor(bit32.lrotate(aO8_136, 2), string.byte(tostring(aO8_136))), 9)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aVc, 4014468359), 3855848163), (bit32.bxor(bit32.band(aVc, 280498936), 2927711387))), 3855848163), 2927711387) ~= aVc then
        fns.aO8_33:AddDivider("Combat")
        fns.aO8_33:AddToggle("AutoM1", { Text = "Auto M1", Default = true })
        fns.aO8_75(fns.aO8_33, "M1")
        fns.aO8_33:AddSlider("M1Delay", { Suffix = "s", Default = 0.12, Rounding = 2, Text = "M1 Delay", Max = 1, Min = 0.05 })
        fns.aO8_33:AddToggle("AutoSkill", { Text = "Auto Skill", Default = false })
        fns.aO8_75(fns.aO8_33, "Skill")
        fns.aO8_33:AddDropdown("SkillSlot", {
            Default = fns.aO8_44.SKILL_DEFAULT,
            Multi = true,
            Text = "Skills",
            Values = fns.aO8_44.SKILL_ORDER
        })
        fns.aO8_33:AddToggle("AutoParry", { Text = "Auto Parry", Default = false })
        fns.aO8_75(fns.aO8_33, "Parry")
    else
        fns.aO8_75:AddDivider("Combat")
        fns.aO8_75:AddToggle("AutoM1", { Text = "Auto M1", Default = true })
        fns.aO8_44(fns.aO8_75, "M1")
        fns.aO8_75:AddSlider("M1Delay", { Text = "M1 Delay", Default = 0.12, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
        fns.aO8_75:AddToggle("AutoSkill", { Text = "Auto Skill", Default = false })
        fns.aO8_44(fns.aO8_75, "Skill")
        fns.aO8_75:AddDropdown("SkillSlot", {
            Text = "Skills",
            Values = fns.aO8_33.SKILL_ORDER,
            Multi = true,
            Default = fns.aO8_33.SKILL_DEFAULT
        })
        fns.aO8_75:AddToggle("AutoParry", { Text = "Auto Parry", Default = false })
        fns.aO8_44(fns.aO8_75, "Parry")
    end
    aO8_136 = (aO8_136 + 7) % 8
until (aO8_136 * 3 + 6) % 8 == 4
aO8_126 = fns.aO8_75:AddDependencyBox()
aO8_126:AddSlider("ParryRate", { Text = "Parry Rate", Default = 0.4, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
aO8_126:AddSlider("ParryRange", { Text = "Enemy Range", Default = 16, Min = 5, Max = 100, Rounding = 0 })
aO8_126:SetupDependencies({ { Toggles.AutoParry, true } })
aO8_136 = 3
repeat
    aO8_126 = (vector.create((aO8_136 * 3 + 8) % 11 + 1, (aO8_136 * 11 + 13) % 13 + 1, (aO8_136 * 8 + 6) % 17 + 1))
    local aV9 = vector.floor(aO8_126) + vector.ceil(aO8_126 * -1)
    if vector.dot(aV9, aV9) == 0 then
        fns.aO8_75:AddToggle("SpectateEnemy", { Text = "Spectate Enemy", Default = false })
        fns.aO8_75:AddToggle("AutoUsePotion", { Text = "Auto Use Potion", Default = false })
        fns.aO8_44(fns.aO8_75, "Potion")
    else
        fns.aO8_44:AddToggle("SpectateEnemy", { Text = "Spectate Enemy", Default = false })
        fns.aO8_44:AddToggle("AutoUsePotion", { Text = "Auto Use Potion", Default = false })
        fns.aO8_75(fns.aO8_44, "Potion")
    end
    aO8_136 = (aO8_136 + 7) % 8
until (aO8_136 * 7 + 6) % 8 == 4
aO8_109 = nil
aO8_126 = 7
repeat
    aO8_136 = (aO8_126 * 1 + 0) % 2 + 1
    if aO8_136 <= 1 then
        aO8_136 = { "vzzejhsbymn", "tvayt", "bkakxkderl", "fiazfhfq", "hlddvg", "vbgqa", "xuwk" }
        local aXx = aO8_126
        fns.aO8_59 = aO8_136[aXx % 7 + 1]
        if fns.aO8_59:len() <= fns.aO8_59:gsub("(.)", "%1%1", aXx % 3 % 2 + 1):len() then
            aO8_109:AddSlider("PotionHealthPercent", { Text = "If Health %", Default = 50, Min = 1, Max = 100, Rounding = 0, Suffix = "%" })
            aO8_109:SetupDependencies({ { Toggles.AutoUsePotion, true } })
        else
            Toggles:AddSlider("PotionHealthPercent", { Max = 100, Default = 50, Rounding = 0, Suffix = "%", Text = "If Health %", Min = 1 })
            Toggles:SetupDependencies({ { aO8_109.AutoUsePotion, true } })
        end
        aO8_126 = (aO8_126 + 1) % 8
    else
        aO8_136 = (vector.create((aO8_126 * 2 + 2) % 11 + 1, (aO8_126 * 7 + 3) % 13 + 1, (aO8_126 * 13 + 5) % 17 + 1))
        fns.aO8_59 = (vector.create((aO8_126 * 1 + 4) % 11 + 1, (aO8_126 * 2 + 2) % 13 + 1, (aO8_126 * 3 + 1) % 17 + 1))
        fns.aO8_40 = (vector.create((aO8_126 * 4 + 4) % 11 + 1, (aO8_126 * 7 + 11) % 13 + 1, (aO8_126 * 6 + 13) % 17 + 1))
        local aO8_26 = (vector.create((aO8_126 * 3 + 6) % 5 + 1, (aO8_126 * 5 + 4) % 7 + 1, (aO8_126 * 5 + 3) % 9 + 1))
        if vector.dot(vector.cross(aO8_136, (vector.cross(fns.aO8_59, fns.aO8_40))), aO8_26) == vector.dot(fns.aO8_59 * vector.dot(aO8_136, fns.aO8_40) - fns.aO8_40 * vector.dot(aO8_136, fns.aO8_59), aO8_26) then
            aO8_109 = fns.aO8_75:AddDependencyBox()
        else
            fns.aO8_75 = aO8_109:AddDependencyBox()
        end
        aO8_126 = (aO8_126 + 1) % 8
    end
until (aO8_126 * 5 + 3) % 8 == 0
aO8_136 = 1
repeat
    aO8_126 = {
        "bulcoxai",
        "liih",
        "tfylcxx",
        "ywzrzwfm",
        "gor",
        "gmztonugbv",
        "sfiyifpvs",
        "rbydvtqwt",
        "yqhefovuf",
        "swuiqmut",
        "elhxfnnpxsq",
        "ksgmo",
        "xrkxoevqroa",
        "alindayqz"
    }
    if aO8_126[(aO8_136 * 26 + 6) % 14 + 1] < aO8_126[(aO8_136 * 26 + 6) % 14 + 1] then
        fns.aO8_44:AddToggle("AutoRefillPotion", { Text = "Auto Refill Potion", Default = false })
        fns.aO8_75(fns.aO8_44, "Refill")
    else
        fns.aO8_75:AddToggle("AutoRefillPotion", { Text = "Auto Refill Potion", Default = false })
        fns.aO8_44(fns.aO8_75, "Refill")
    end
    aO8_136 = (aO8_136 + 3) % 4
until (aO8_136 * 3 + 2) % 4 == 2
aO8_109 = fns.aO8_75:AddDependencyBox()
aO8_109:AddDropdown("RefillMode", { Text = "Refill When", Values = fns.aO8_33.POTION_REFILL_MODES, Default = "Below Cap" })
aO8_109:AddSlider("RefillCap", { Text = "Potion Cap", Default = 4, Min = 1, Max = 10, Rounding = 0 })
aO8_109:SetupDependencies({ { Toggles.AutoRefillPotion, true } })
fns.fn2027();
(function()
    local Label2, Label3, Label, Label4, Label5
    local aIC_1
    local aIA_1, aIA_2
    local aIB_1
    aIB_1, aIA_1 = adT()
    fns.aO8_33.DungeonIdMap = aIA_1
    aIC_1, aIA_2 = fns.aO8_11()
    fns.aO8_33.ShopItemIdMap = aIA_2
    local aIA_3 = ae8()
    local aID = aee()
    local aIE = adC()
    if setthreadidentity then
        setthreadidentity(8)
    end
    local DungeonGroup = aO8_88.Lobby:AddLeftGroupbox("Dungeon", "swords")
    DungeonGroup:AddToggle("AutoCreateDungeon", { Text = "Auto Create and Start", Default = false })
    fns.aO8_44(DungeonGroup, "Create")
    local aIG = aIB_1[1] or "Bandits Den"
    DungeonGroup:AddDropdown("LobbyDungeon", { Text = "Dungeon", Values = aIB_1, Default = aIG })
    DungeonGroup:AddDropdown("LobbyDifficulty", { Text = "Difficulty", Values = fns.aO8_33.LOBBY_DIFFICULTY_VALUES, Default = "Easy" })
    DungeonGroup:AddToggle("LobbySoloFriendsOnly", { Text = "Solo & Friends Only", Default = true })
    local Tabbox2 = aO8_88.Lobby:AddLeftTabbox()
    local BossRushTab = Tabbox2:AddTab("Boss Rush", "skull")
    BossRushTab:AddToggle("AutoBossRush", { Text = "Auto Join Boss Rush", Default = false })
    fns.aO8_44(BossRushTab, "BossRush")
    BossRushTab:AddDropdown("BossRushFinal", { Text = "Final Boss", Values = fns.aO8_33.BOSS_RUSH_FINAL_VALUES, Default = "Cursed King" })
    BossRushTab:AddSlider("BossRushSkip", { Text = "Skip To Floor", Default = 0, Min = 0, Max = 50, Rounding = 0 })
    BossRushTab:AddButton({
        Text = "Join Boss Rush Now",
        Func = function()
            local aHR_1
            local aHQ_1
            aHQ_1, aHR_1 = afi()
            local aHQ_2 = aHQ_1 and "Joining Boss Rush"
            local aHW = if aHQ_2 then 1 else 0
            local aHU = 2423 * aHW + 211 * (1 - aHW)
            local aHV = 20 * aHW + 617 * (1 - aHW)
            if not ((aHU * 3037 + aHV * 3237 + aHU * aHV) % 16777213 == 7471851) then
                aHQ_2 = "Boss Rush: " .. tostring(aHR_1)
            end
            Library:Notify(aHQ_2)
        end
    })
    local EndlessTab = Tabbox2:AddTab("Endless", "repeat")
    EndlessTab:AddToggle("AutoContinueEndless", { Text = "Auto Continue Endless", Default = false })
    fns.aO8_44(EndlessTab, "Endless")
    EndlessTab:AddSlider("EndlessExtract", { Text = "Extract On Floor", Default = 0, Min = 0, Max = 100, Rounding = 0 })
    local QuestsGroup = aO8_88.Lobby:AddLeftGroupbox("Quests", "scroll-text")
    QuestsGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
    fns.aO8_44(QuestsGroup, "Quest")
    local Tabbox = aO8_88.Lobby:AddLeftTabbox()
    local SellTab = Tabbox:AddTab("Sell", "badge-dollar-sign")
    SellTab:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    fns.aO8_44(SellTab, "Sell")
    SellTab:AddDropdown("SellRarities", {
        Text = "Rarities",
        Values = fns.aO8_33.SELL_RARITY_VALUES,
        Multi = true,
        Default = fns.aO8_33.SELL_RARITY_DEFAULT
    })
    local ShopTab = Tabbox:AddTab("Shop", "store")
    ShopTab:AddToggle("AutoBuyShop", { Text = "Auto Buy Shop", Default = false })
    fns.aO8_44(ShopTab, "Shop")
    ShopTab:AddDropdown("ShopItem", { Text = "Item", Values = aIC_1, Multi = true, Default = {} })
    ShopTab:AddButton({
        Text = "Refresh",
        Func = function()
            pcall(aeO)
        end
    })
    local AutoJoinGroup = aO8_88.Lobby:AddRightGroupbox("Auto Join", "swords")
    AutoJoinGroup:AddToggle("AutoChallenge", { Text = "Auto Join Challenge", Default = false })
    fns.aO8_44(AutoJoinGroup, "Challenge")
    Label5 = AutoJoinGroup:AddLabel(aO8_89("Challenge Dungeon", "-", aeY), true)
    AutoJoinGroup:AddButton({
        Text = "Join Challenge Now",
        Func = function()
            local aHY_1
            local aHX_1
            aHX_1, aHY_1 = fns.aO8_23()
            local aHZ = aHX_1 and "Joining Challenge"
            local aHX_2 = aHZ or "Challenge: " .. tostring(aHY_1)
            Library:Notify(aHX_2)
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            pcall(function()
                local aH3_1
                local aH2_1
                local aH1_1
                local aH0_1
                aH1_1, aH2_1, aH3_1, aH0_1 = agk()
                local aH0_2 = aH3_1 and aH1_1
                local aH1_2 = aH0_2 or "Needs level " .. tostring(aH2_1)
                local aH2_2 = aH3_1 and ae7 or aeY
                Label5:SetText(aO8_89("Challenge Dungeon", aH1_2, aH2_2))
            end)
        end
    end)
    local SpinGroup = aO8_88.Lobby:AddRightGroupbox("Spin", "sparkles")
    SpinGroup:AddToggle("AutoSpin", { Text = "Auto Spin", Default = false })
    fns.aO8_44(SpinGroup, "Spin")
    SpinGroup:AddDropdown("SpinType", { Text = "Use Spin", Values = fns.aO8_33.SPIN_TYPE_VALUES, Default = "Normal Spin" })
    SpinGroup:AddDropdown("SpinStopAt", { Text = "Stop at", Values = aIA_3, Multi = true, Default = {} })
    local aIA_4 = aIE[1] or "1"
    SpinGroup:AddDropdown("SpinSlot", { Text = "Slot", Values = aIE, Default = aIA_4 })
    SpinGroup:AddToggle("RerollUntilAspect", { Text = "Reroll Until Aspect", Default = false })
    local aIA_5 = SpinGroup:AddDependencyBox()
    aIA_5:AddDropdown("RerollAspect", { Text = "Aspect", Values = aID, Multi = true, Default = {} })
    aIA_5:SetupDependencies({ { Toggles.RerollUntilAspect, true } })
    Label4 = SpinGroup:AddLabel(aO8_89("Slot", "-", aO8_97), true)
    Label3 = SpinGroup:AddLabel(aO8_89("Wanted", "-", aeH), true)
    Label2 = SpinGroup:AddLabel(aO8_89("Spins", "-", ac8), true)
    Label = SpinGroup:AddLabel(aO8_89("Rerolls", "0", aeY), true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.5)
            pcall(function()
                local aIa_1
                local aIc_1
                local aIb_1, aIb_5
                local aH6 = adW()
                local aH6_5
                local aH7 = (tonumber(aO8_103("SpinSlot", "1")))
                local aH7_1
                local aIi = if aH7 then 1 else 0
                local aIg = 3372 * aIi + 2253 * (1 - aIi)
                local aIh = 1299 * aIi + 2454 * (1 - aIi)
                if not ((aIg * 3966 + aIh * 1797 + aIg * aIh) % 16777213 == 3310670) then
                    aH7 = 1
                end
                local aH8 = "-"
                local aH9 = aH7
                local aH9_1
                aIa_1, aH7_1 = 0, 0
                if aH6 then
                    aIb_1, aIc_1 = aO8_132(aH6, "GetSlotData")
                    local aId = aIb_1 and typeof(aIc_1) == "table" and typeof(aIc_1.Slots) == "table"
                    if aId then
                        local aIb_2 = aIc_1.Slots[aH9] or "-"
                        local aIc_2 = aIc_1.SlotAspects and aIc_1.SlotAspects[aH9]
                        local aIb_4 = aIc_2 == ""
                        local aIe = typeof(aIc_2) ~= "string" or aIb_4
                        if aIe then
                            aIc_2 = "none"
                        end
                        aH8 = string.format("%d: %s (%s)", aH9, tostring(aIb_2), aIc_2)
                    end
                    aH9_1, aIb_5 = aO8_132(aH6, "GetSpinCounts")
                    local aH6_1 = aH9_1 and typeof(aIb_5) == "table"
                    if aH6_1 then
                        local aH6_2 = (tonumber(aIb_5.Normal))
                        local aIl = if aH6_2 then 1 else 0
                        local aIj = 2776 * aIl + 4011 * (1 - aIl)
                        local aIk = 1082 * aIl + 1252 * (1 - aIl)
                        if not ((aIj * 2020 + aIk * 387 + aIj * aIk) % 16777213 == 9029886) then
                            aH6_2 = 0
                        end
                        aIa_1 = aH6_2
                        local aH6_3 = tonumber(aIb_5.Lucky) or 0
                        aH7_1 = aH6_3
                    end
                end
                local aH6_4 = fns.aO8_53("SpinStopAt")
                local aH9_2 = 0
                for k in aH6_4 do
                    aH9_2 += 1
                end
                if not aez("RerollUntilAspect") then
                    aH6_5 = "aspect off"
                else
                    local aIb_6 = {}
                    for k in fns.aO8_53("RerollAspect") do
                        table.insert(aIb_6, k)
                    end
                    local aIc_3 = #aIb_6 > 0 and table.concat(aIb_6, ", ")
                    aH6_5 = aIc_3 or "any aspect"
                end
                local aIb_8 = fns.aO8_35()
                local aIc_4 = aIb_8 and tonumber(aIb_8.Currency)
                local aIb_9 = aIc_4 or 0
                Label4:SetText(aO8_89("Slot", aH8, aO8_97))
                Label3:SetText(aO8_89("Wanted", string.format("%d class(es), %s", aH9_2, aH6_5), aeH))
                Label2:SetText(aO8_89("Spins", string.format("N %s / L %s | Coins %s", afr(aIa_1), afr(aH7_1), afr(aIb_9)), ac8))
                Label:SetText(aO8_89("Rerolls", tostring(fns.aO8_12.rerolls), aeY))
            end)
        end
    end)
    local CharacterGroup = aO8_88.Lobby:AddLeftGroupbox("Character", "user")
    CharacterGroup:AddToggle("AutoAssignPoint", { Text = "Auto Assign Point", Default = false })
    fns.aO8_44(CharacterGroup, "Point")
    local aIB_7 = CharacterGroup:AddDependencyBox()
    aIB_7:AddDropdown("AssignStat", { Text = "Stat", Values = fns.aO8_33.STAT_POINT_VALUES, Default = "STR" })
    aIB_7:SetupDependencies({ { Toggles.AutoAssignPoint, true } })
    CharacterGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Gear", Default = false })
    fns.aO8_44(CharacterGroup, "Gear")
end)();
(function()
    local aJM, aJN, aJO, aJP, connection, aJR
    if setthreadidentity then
        setthreadidentity(8)
    end
    local MovementGroup = aO8_88.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = aO8_88.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local MiscGroup = aO8_88.Player:AddRightGroupbox("Misc", "eye-off")
    MiscGroup:AddToggle("HideName", { Text = "Hide Name", Default = false })
    aJP = false
    aJN = function(Mf)
        local Character = adU.Character
        local aIJ = Character and Character:FindFirstChild("HumanoidRootPart")
        local aII_1 = aIJ
        if aIJ then
            aIJ = aII_1:FindFirstChild("Player_Healthbar")
        end
        local aII_2 = aIJ
        if aIJ then
            aIJ = aII_2:FindFirstChild("NameText")
        end
        local aII_3 = aIJ
        if aII_3 then
            local aIK_1 = Mf and fns.aO8_33.HIDDEN_NAME or adU.Name
            aII_3.Text = aIK_1
        end
        local PlayerGui = adU:FindFirstChild("PlayerGui")
        local aIJ_2 = PlayerGui and PlayerGui:FindFirstChild("Main")
        local aII_5 = aIJ_2
        if aIJ_2 then
            aIJ_2 = aII_5:FindFirstChild("HUD")
        end
        local aII_6 = aIJ_2
        if aIJ_2 then
            aIJ_2 = aII_6:FindFirstChild("Actions")
        end
        local aII_7 = aIJ_2
        if aIJ_2 then
            aIJ_2 = aII_7:FindFirstChild("Profile")
        end
        local aII_8 = aIJ_2
        if aIJ_2 then
            aIJ_2 = aII_8:FindFirstChild("ProfileHolder")
        end
        local aII_9 = aIJ_2
        if aII_9 then
            local User = aII_9:FindFirstChild("User")
            if User then
                local aIL = Mf and fns.aO8_33.HIDDEN_NAME or adU.DisplayName
                User.Text = aIL
            end
            local Frame = aII_9:FindFirstChild("Frame")
            local aII_10 = Frame and Frame:FindFirstChild("ProfileImage")
            if aII_10 then
                local aIK_3 = Mf and fns.aO8_33.LOGO_IMAGE or "rbxthumb://type=AvatarHeadShot&id=" .. adU.UserId .. "&w=150&h=150"
                aII_10.Image = aIK_3
            end
        end
    end
    aeF.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        local aIU = if not aez("InfJump") then 1 else 0
        if aIU == 1 then
            return
        end
        local aIQ = ad8()
        if aIQ then
            aIQ:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
    agA.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local aIV = (aez("NoClip"))
        if not aIV then
            local aIW = aez("FarmNoClip") and aez("AutoFarm")
            aIV = aIW
        end
        if aIV then
            local Character = adU.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local aIV_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if aIV_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    agA.RenderStepped:Connect(function(M0)
        local aI8_1
        local aI7_2
        local aI6_3, aI6_4, aI6_5
        local aI5_5, aI5_7, aI5_8
        if Library.Unloaded then
            return
        end
        if aez("WalkSpeedEnabled") then
            local aI3_1 = ad8()
            if aI3_1 then
                aI3_1.WalkSpeed = fns.aO8_14("WalkSpeed", 32)
            end
        end
        if aez("HideName") then
            aJN(true)
            aJP = true
        elseif aJP then
            aJN(false)
            aJP = false
        end
        if aez("SpectateEnemy") then
            local CurrentCamera = fns.aO8_81.CurrentCamera
            local enemy = aO8_122.enemy
            local aI5_1 = enemy and aO8_110(enemy)
            if CurrentCamera and aI5_1 then
                local aI5_3 = (enemy:FindFirstChildOfClass("Humanoid"))
                local aJe = if aI5_3 then 1 else 0
                local aJc = 216 * aJe + 2251 * (1 - aJe)
                local aJd = 3170 * aJe + 2422 * (1 - aJe)
                if not ((aJc * 3518 + aJd * 1354 + aJc * aJd) % 16777213 == 5736788) then
                    aI5_3 = aI5_1
                end
                local aI4_2 = aI5_3
                if CurrentCamera.CameraSubject ~= aI4_2 then
                    CurrentCamera.CameraSubject = aI4_2
                end
            end
        end
        if not Library.FeatureAPI.StepDarkProfessorDodge() then
            if aez("Fly") then
                local aI3_3 = fns.aO8_58()
                local aI4_3 = ad8()
                local CurrentCamera = fns.aO8_81.CurrentCamera
                if aI3_3 and aI4_3 and CurrentCamera then
                    aI4_3.PlatformStand = true
                    local aI4_4 = Vector3.zero
                    if aeF:IsKeyDown(Enum.KeyCode.W) then
                        aI4_4 += CurrentCamera.CFrame.LookVector
                    end
                    if aeF:IsKeyDown(Enum.KeyCode.S) then
                        aI4_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if aeF:IsKeyDown(Enum.KeyCode.A) then
                        aI4_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if aeF:IsKeyDown(Enum.KeyCode.D) then
                        aI4_4 += CurrentCamera.CFrame.RightVector
                    end
                    if aeF:IsKeyDown(Enum.KeyCode.Space) then
                        aI4_4 += Vector3.yAxis
                    end
                    if aeF:IsKeyDown(Enum.KeyCode.LeftControl) then
                        aI4_4 -= Vector3.yAxis
                    end
                    if aI4_4.Magnitude > 0 then
                        aI3_3.CFrame = aI3_3.CFrame + aI4_4.Unit * fns.aO8_14("FlySpeed", 60) * M0
                    end
                    aI3_3.AssemblyLinearVelocity = Vector3.zero
                end
            else
                if fns.aO8_48.kind == "chest" and fns.aO8_48.goal then
                    af5(M0)
                else
                    if fns.aO8_48.kind == "totem" and fns.aO8_48.goal then
                        af5(M0)
                    else
                        if fns.aO8_48.kind == "altar" and fns.aO8_48.goal then
                            af5(M0)
                        else
                            if fns.aO8_48.kind == "refill" and fns.aO8_48.goal then
                                af5(M0)
                            else
                                local aI3_8 = aez("AutoFarm") and aO8_122.enemy and fns.aO8_48.kind ~= "chest" and fns.aO8_48.kind ~= "totem" and fns.aO8_48.kind ~= "altar" and fns.aO8_48.kind ~= "refill"
                                if aI3_8 then
                                    local aI3_9 = fns.aO8_58()
                                    local aI4_5 = ad8()
                                    if aI3_9 then
                                        aI8_1, aI7_2, aI5_5, aI6_3 = aO8_130(aO8_122.enemy)
                                        local aI9 = aI8_1 and typeof(aI7_2) == "Vector3"
                                        local aI9_1
                                        if aI9 then
                                            if aI6_3 ~= "down" then
                                                aI8_1 = aem(aI8_1, aO8_122.enemy)
                                            end
                                            aO8_123(aI8_1, "farm", aI7_2, aI5_5)
                                            if aI6_3 == "down" then
                                                local aI5_6 = aeW(aI8_1, nil, M0, 22, nil)
                                                local CFrame2 = aI3_9.CFrame
                                                if aO8_82.yaw == nil then
                                                    aO8_82.yaw = select(2, CFrame2:ToEulerAnglesYXZ())
                                                end
                                                aI9_1 = CFrame.new(aI5_6) * CFrame.Angles(0, aO8_82.yaw, 0) * CFrame.Angles(-1.361356816555577, 0, 0)
                                            elseif aI6_3 == "tilt" then
                                                aI6_4, aI5_7 = aeW(aI8_1, aI7_2, M0, 14, 12)
                                                if (aI6_4 - aI5_7).Magnitude > 0.1 then
                                                    aI9_1 = CFrame.lookAt(aI6_4, aI5_7, Vector3.yAxis)
                                                else
                                                    aI9_1 = aO8_99(aI6_4, aI5_7, aI3_9.CFrame)
                                                end
                                                aO8_82.yaw = nil
                                            else
                                                aI6_5, aI5_8 = aeW(aI8_1, aI7_2, M0, 14, 12)
                                                aI9_1 = aO8_99(aI6_5, aI5_8, aI3_9.CFrame)
                                                aO8_82.yaw = nil
                                            end
                                            aI3_9.CFrame = aI9_1
                                            aI3_9.AssemblyLinearVelocity = Vector3.zero
                                            aI3_9.AssemblyAngularVelocity = Vector3.zero
                                            if aI4_5 then
                                                aI4_5.PlatformStand = true
                                            end
                                        end
                                    end
                                else
                                    if not aez("Fly") then
                                        local aI3_10 = ad8()
                                        if aI3_10 and aI3_10.PlatformStand then
                                            aI3_10.PlatformStand = false
                                        end
                                    end
                                    if not aez("AutoFarm") then
                                        fns.aO8_37()
                                    end
                                    if fns.aO8_48.goal then
                                        af5(M0)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not aez("Fly") then
            local aJi = ad8()
            if aJi then
                aJi.PlatformStand = false
            end
        end
    end)
    aJR = function()
        local CurrentCamera = fns.aO8_81.CurrentCamera
        local aJo = ad8()
        if CurrentCamera and aJo then
            CurrentCamera.CameraSubject = aJo
        end
    end
    Toggles.SpectateEnemy:OnChanged(function()
        if not aez("SpectateEnemy") then
            aJR()
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not aez("WalkSpeedEnabled") then
            local aJs = ad8()
            if aJs then
                aJs.WalkSpeed = 16
            end
        end
    end)
    aJM = function(NX)
        pcall(function()
            agg:SetGameplayPausedNotificationEnabled(not NX)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = ael:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not NX
            end
        end)
        if not NX then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(adU, "GameplayPaused", false)
            else
                adU.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        aJM(aez("AntiGameplayPause"))
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if aez("AntiGameplayPause") then
                aJM(true)
            end
        end
    end)
    aJO = function(Oe)
        if not Oe:IsA("ProximityPrompt") then
            return
        end
        Oe.HoldDuration = 0
        Oe.MaxActivationDistance = 50
        Oe.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if aez("InstantProximityPrompt") then
            for i, descendant in fns.aO8_81:GetDescendants() do
                pcall(aJO, descendant)
            end
            if connection then
                connection:Disconnect()
            end
            connection = fns.aO8_81.DescendantAdded:Connect(function(Om)
                local aJD = if aez("InstantProximityPrompt") then 1 else 0
                if aJD == 1 then
                    pcall(aJO, Om)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        aJM(false)
        if connection then
            connection:Disconnect()
        end
        aJR()
        fns.aO8_9()
    end)
end)();
(function()
    local aLJ, aLK, aLL, aLM, aLN, aLO, aLP, aLQ, onDungeonComplete, aLS, aLT, aLU, aLV, aLW
    aLS = ""
    local aLX = syn
    aLN = 0
    aLW = 0
    if aLX then
        aLX = syn.request
    end
    local aLY = aLX
    if not aLY then
        aLY = http and http.request
    end
    if not aLY then
        aLY = http_request
    end
    if not aLY then
        aLY = request
    end
    aLP = aLY
    aLV = function(OC)
        local max = math.max
        local floor = math.floor
        local aJW = (tonumber(OC))
        local aJ0 = if aJW then 1 else 0
        local aJZ = 220 * aJ0 + 690 * (1 - aJ0)
        local aJ_ = 148 * aJ0 + 1782 * (1 - aJ0)
        if not ((aJZ * 2123 + aJ_ * 761 + aJZ * aJ_) % 16777213 == 612248) then
            aJW = 0
        end
        local aJX = max(0, floor(aJW))
        local aJU_1 = math.floor(aJX / 60)
        local aJV_1 = aJX % 60
        if aJU_1 >= 60 then
            local aJW_1 = math.floor(aJU_1 / 60)
            local aJU_2 = aJU_1 % 60
            return string.format("%dh %dm %ds", aJW_1, aJU_2, aJV_1)
        end
        return string.format("%dm %ds", aJU_1, aJV_1)
    end
    aLJ = function(OI)
        local aJ3_1
        local aJ1 = tonumber(OI) or 0
        local aJ2_1
        local aJ1_1 = tostring(math.floor(aJ1))
        repeat
            aJ2_1, aJ3_1 = aJ1_1:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
            aJ1_1 = aJ2_1
        until aJ3_1 == 0
        return aJ1_1
    end
    aLL = function(OO, OP, OQ)
        return { name = OO, value = OP, inline = OQ ~= false }
    end
    aLT = function(OS)
        local aJ5 = OS == ""
        local aJ5_1
        local aJ6 = typeof(OS) ~= "string"
        local aJ6_1
        local aKb = if aJ6 then 1 else 0
        local aJ9 = 661 * aKb + 2619 * (1 - aKb)
        local aKa = 607 * aKb + 2381 * (1 - aKb)
        if not ((aJ9 * 494 + aKa * 3481 + aJ9 * aKa) % 16777213 == 2840728) then
            aJ6 = aJ5
        end
        if aJ6 then
            return "Unknown"
        end
        aJ5_1, aJ6_1 = pcall(function()
            return require(aO8_129.GameInfo.EquipmentTemplates)
        end)
        local aJ7 = aJ5_1 and typeof(aJ6_1) == "table" and typeof(aJ6_1.GetTemplate) == "function"
        if aJ7 then
            local aJ5_2 = aJ6_1.GetTemplate(OS)
            local aJ6_2 = typeof(aJ5_2) == "table" and aJ5_2.DisplayName
            if aJ6_2 then
                return tostring(aJ5_2.DisplayName)
            end
            return OS
        end
        return OS
    end
    aLO = function(O1)
        local aKf = O1 == ""
        local aKf_1
        local aKg = typeof(O1) ~= "string" or aKf
        local aKg_1
        if aKg then
            return "Unknown"
        end
        aKf_1, aKg_1 = pcall(function()
            return require(aO8_129.GameInfo.ItemData)
        end)
        local aKh = aKf_1 and typeof(aKg_1) == "table" and typeof(aKg_1.GetMaterial) == "function"
        if aKh then
            local aKf_2 = aKg_1.GetMaterial(O1)
            local aKg_2 = typeof(aKf_2) == "table"
            if aKg_2 then
                aKg_2 = aKf_2.Name or aKf_2.DisplayName
            end
            if aKg_2 then
                local aKg_3 = aKf_2.Name or aKf_2.DisplayName
                return tostring(aKg_3)
            end
            return O1
        end
        return O1
    end
    aLU = function()
        local aKr = if aez("WebhookPingEveryone") then 1 else 0
        if aKr == 1 then
            return "@everyone"
        end
        local aKm = Options.WebhookPingId
        if aKm then
            local aKn_1 = Options.WebhookPingId.Value or ""
            aKm = tostring(aKn_1):gsub("%D", "")
        end
        local aKn_2 = aKm or ""
        if aKn_2 == "" then
            return nil
        end
        return string.format("<@%s>", aKn_2)
    end
    aLM = function(Pk)
        local aKu_1
        local aKt_4
        if typeof(aLP) ~= "function" then
            return false
        end
        local aKs = Options.WebhookUrl
        if aKs then
            local aKt_1 = Options.WebhookUrl.Value or ""
            aKs = tostring(aKt_1)
        end
        local aKs_1 = aKs or ""
        if aKs_1 == "" then
            return false
        end
        local aKt_3 = not string.find(aKs_1, "discord.com/api/webhooks/", 1, true) and not string.find(aKs_1, "discordapp.com/api/webhooks/", 1, true)
        if aKt_3 then
            return false
        end
        aKt_4, aKu_1 = pcall(aev.JSONEncode, aev, Pk)
        if not aKt_4 then
            return false
        end
        local aKt_5 = pcall(aLP, { Url = aKs_1, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = aKu_1 })
        return aKt_5 == true
    end
    aLQ = function(Pu, Pv)
        if not aez("WebhookEnabled") then
            return false
        end
        local aKz = { username = "Ouroboros Hub", embeds = { Pu } }
        if Pv then
            aKz.content = aLU()
        end
        return aLM(aKz)
    end
    aLK = function(PA)
        local aKB = fns.aO8_35()
        local aKC = PA.Status or "Completed"
        local aKD = tostring(aKC)
        local aKE = PA.DungeonName or PA.LocationId
        local aKZ = if aKE then 1 else 0
        local aKX = 1201 * aKZ + 2588 * (1 - aKZ)
        local aKY = 1542 * aKZ + 823 * (1 - aKZ)
        if not ((aKX * 1467 + aKY * 605 + aKX * aKY) % 16777213 == 4546719) then
            aKE = "Unknown"
        end
        local aKC_2 = tostring(aKE)
        local aKE_1 = PA.Difficulty or "Easy"
        local aKF = tostring(aKE_1)
        local aKE_2 = aKB
        if aKE_2 then
            aKE_2 = aKB.PlayerLevel or aKB.Level
        end
        local aKG_2 = aKE_2 or "?"
        local aKE_3 = aKB
        if aKE_3 then
            aKE_3 = aKB.ActiveClass
        end
        local aKB_1 = aKE_3 or adU:GetAttribute("Active_Class")
        local aKE_4 = aKB_1 or "?"
        local aKG_3 = aKD == "Failed" and "Dungeon Failed" or "Dungeon Cleared"
        local format2 = string.format
        local aKI = adU.DisplayName or adU.Name
        local aKJ = aLL("Player", format2("`%s`", aKI))
        local aKG_5 = aLL("Level", string.format("`%s`", tostring(aKG_2)))
        local aKK = aLL("Class", string.format("`%s`", tostring(aKE_4)))
        local aKL = aLL("Dungeon", string.format("`%s`", aKC_2))
        local aKM = aLL("Difficulty", string.format("`%s`", aKF))
        local aKN = aLL("Time", string.format("`%s`", aLV(PA.TimeElapsed)))
        local format = string.format
        local aKP = PA.RoomsCleared or 0
        local aKQ = aLL("Rooms", format("`%s`", tostring(aKP)))
        local aKR = PA.MobsKilled
        local aKZ_1 = if aKR then 1 else 0
        local aKX_1 = 892 * aKZ_1 + 1331 * (1 - aKZ_1)
        local aKY_1 = 1817 * aKZ_1 + 1918 * (1 - aKZ_1)
        if not ((aKX_1 * 2153 + aKY_1 * 431 + aKX_1 * aKY_1) % 16777213 == 4324367) then
            aKR = 0
        end
        local aKS = aLL("Mobs", format("`%s`", tostring(aKR)))
        local aKO_1 = aLL("Damage", string.format("`%s`", aLJ(PA.TotalDamage)))
        local aKU = PA.TotalDeaths or 0
        local aKV = {
            aKJ,
            aKG_5,
            aKK,
            aKL,
            aKM,
            aKN,
            aKQ,
            aKS,
            aKO_1,
            aLL("Deaths", string.format("`%s`", tostring(aKU)))
        }
        local aKB_3 = tonumber(PA.CashEarned) or 0
        local aKB_4 = (tonumber(PA.StarsEarned))
        local aKZ_2 = if aKB_4 then 1 else 0
        local aKX_2 = 2172 * aKZ_2 + 3672 * (1 - aKZ_2)
        local aKY_2 = 1564 * aKZ_2 + 2669 * (1 - aKZ_2)
        if not ((aKX_2 * 2439 + aKY_2 * 2953 + aKX_2 * aKY_2) % 16777213 == 13313008) then
            aKB_4 = 0
        end
        local aKF_1 = aKB_4
        local aKB_5 = (tonumber(PA.ClassSpinsEarned))
        local aKZ_3 = if aKB_5 then 1 else 0
        local aKX_3 = 2610 * aKZ_3 + 1683 * (1 - aKZ_3)
        local aKY_3 = 2482 * aKZ_3 + 3322 * (1 - aKZ_3)
        if not ((aKX_3 * 2497 + aKY_3 * 370 + aKX_3 * aKY_3) % 16777213 == 13913530) then
            aKB_5 = 0
        end
        local aKG_6 = aKB_5
        if aKB_3 > 0 or aKF_1 > 0 or aKG_6 > 0 then
            local aKB_7 = {}
            if aKB_3 > 0 then
                table.insert(aKB_7, string.format("Coins `%s`", aLJ(aKB_3)))
            end
            if aKF_1 > 0 then
                table.insert(aKB_7, string.format("Stars `%s`", aLJ(aKF_1)))
            end
            if aKG_6 > 0 then
                table.insert(aKB_7, string.format("Spins `%s`", aLJ(aKG_6)))
            end
            table.insert(aKV, aLL("Rewards", table.concat(aKB_7, "\n"), false))
        end
        local aKB_8 = {}
        if typeof(PA.ItemRewards) == "table" then
            for i, v in ipairs(PA.ItemRewards) do
                if typeof(v) == "table" then
                    local aKC_4 = v.ItemId or v.Id or v.Name
                    local aKF_2 = aLT(aKC_4)
                    local aKC_5 = v.Rarity or "?"
                    local aKG_7 = tostring(aKC_5)
                    table.insert(aKB_8, string.format("`%s` %s", aKG_7, aKF_2))
                end
            end
        end
        if #aKB_8 > 0 then
            if #aKB_8 > 20 then
                local aKC_6 = {}
                local aK7 = 1
                while aK7 <= 20 do
                    local aK8 = aK7
                    aKC_6[aK8] = aKB_8[aK8]
                    aK7 += 1
                end
                table.insert(aKC_6, string.format("... +%d more", #aKB_8 - 20))
                aKB_8 = aKC_6
            end
            table.insert(aKV, aLL(string.format("Obtained Items (%d)", #PA.ItemRewards), table.concat(aKB_8, "\n"), false))
        else
            table.insert(aKV, aLL("Obtained Items", "`None`", false))
        end
        local aKB_9 = {}
        if typeof(PA.MaterialRewards) == "table" then
            for i, v in ipairs(PA.MaterialRewards) do
                if typeof(v) == "table" then
                    local aKC_7 = v.Id or v.ItemId or v.Name
                    local aKF_3 = aLO(aKC_7)
                    local aKC_8 = tonumber(v.Amount) or 1
                    table.insert(aKB_9, string.format("`x%s` %s", aLJ(aKC_8), aKF_3))
                end
            end
        end
        if #aKB_9 > 0 then
            table.insert(aKV, aLL(string.format("Materials (%d)", #PA.MaterialRewards), table.concat(aKB_9, "\n"), false))
        end
        return {
            author = { name = fns.aO8_33.GAME_NAME .. " | Ouroboros Hub" },
            title = aKG_3,
            description = string.format("**Status** `%s`", aKD),
            color = aLN,
            fields = aKV,
            footer = { text = "Ouroboros Hub" },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }
    end
    onDungeonComplete = function(Qf)
        local aLg = Library.Unloaded or not aez("WebhookEnabled")
        if aLg then
            return
        end
        if typeof(Qf) ~= "table" then
            return
        end
        local aLg_1 = Qf.Status or "Completed"
        local aLh = tostring(aLg_1)
        local aLg_2 = aLh == "Failed" and not aez("WebhookOnFail")
        if aLg_2 then
            return
        end
        local concat = table.concat
        local aLj = Qf.LocationId or Qf.DungeonName or ""
        local aLi_1 = tostring(aLj)
        local aLk = Qf.Difficulty or ""
        local aLl = tostring(aLk)
        local aLm = Qf.TimeElapsed or ""
        local aLn = tostring(aLm)
        local aLo = Qf.CashEarned or ""
        local aLi_2 = concat({ aLi_1, aLl, aLn, tostring(aLo), tostring(aLh) }, "|")
        local aLg_4 = os.clock()
        if aLi_2 == aLS and aLg_4 - aLW < 8 then
            return
        end
        aLS = aLi_2
        aLW = aLg_4
        task.spawn(function()
            aLQ(aLK(Qf), true)
        end)
    end
    local function worker()
        if not Knit then
            return
        end
        for i, v in ipairs({
            "DungeonRunService",
            "ChallengeRunService",
            "RaidRunService",
            "BossRushService",
            "DungeonService"
        }) do
            local aLC = v
            pcall(function()
                local aLt = Knit.GetService(aLC)
                if aLt and aLt.DungeonComplete and aLt.DungeonComplete.Connect then
                    aLt.DungeonComplete:Connect(onDungeonComplete)
                end
            end)
        end
    end
    if setthreadidentity then
        setthreadidentity(8)
    end
    local WebhookGroup = aO8_88.Webhook:AddLeftGroupbox("Webhook", "webhook")
    WebhookGroup:AddToggle("WebhookEnabled", { Text = "Enable Webhook", Default = false })
    WebhookGroup:AddInput("WebhookUrl", {
        Text = "Webhook URL",
        Default = "",
        Placeholder = "https://discord.com/api/webhooks/...",
        Finished = true
    })
    WebhookGroup:AddInput("WebhookPingId", { Text = "Ping User ID", Default = "", Placeholder = "Discord user id", Finished = true })
    WebhookGroup:AddToggle("WebhookPingEveryone", { Text = "Ping @everyone", Default = false })
    WebhookGroup:AddToggle("WebhookOnFail", { Text = "Send on Fail", Default = false })
    WebhookGroup:AddButton({
        Text = "Test Webhook",
        Func = function()
            local aLD = Options.WebhookUrl
            if aLD then
                local aLE_1 = Options.WebhookUrl.Value
                local aLI = if aLE_1 then 1 else 0
                local aLG = 563 * aLI + 922 * (1 - aLI)
                local aLH = 918 * aLI + 2341 * (1 - aLI)
                if not ((aLG * 1499 + aLH * 198 + aLG * aLH) % 16777213 == 1542535) then
                    aLE_1 = ""
                end
                aLD = tostring(aLE_1)
            end
            if (aLD or "") == "" then
                Library:Notify("Set a webhook URL first")
                return
            end
            local aLD_2 = aLM({
                username = "Ouroboros Hub",
                content = aLU(),
                embeds = {
                    {
                        author = { name = fns.aO8_33.GAME_NAME .. " | Ouroboros Hub" },
                        title = "Webhook Connected",
                        description = "Dungeon clear webhooks are ready.",
                        color = aLN,
                        footer = { text = "Ouroboros Hub" },
                        timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
                    }
                }
            })
            local aLD_3 = aLD_2 and "Webhook test sent" or "Webhook test failed"
            Library:Notify(aLD_3)
        end
    })
    task.spawn(worker)
end)()
if setthreadidentity then
    setthreadidentity(8)
end
MenuGroup, ad9 = nil, nil
MenuGroup = aO8_88.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind;
(function()
    local aM9
    local aM8
    local SetFpsBoost
    local aM4
    local aNb
    aM4 = nil
    SetFpsBoost = nil
    aM8 = nil
    aM9 = nil
    aNb = nil
    local aM2, aM3, aM5, aM7, aNa, aNc, aNd
    if setthreadidentity then
        setthreadidentity(8)
    end
    local aNe = queue_on_teleport
    aNd = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true }
    aM9 = nil
    aM5 = nil
    if not aNe then
        aNe = syn and syn.queue_on_teleport
    end
    if not aNe then
        aNe = fluxus and fluxus.queue_on_teleport
    end
    if not aNe then
        aNe = queueonteleport
    end
    aM7 = false
    aM3 = aNe
    aNb = function()
        local aL2 = aM5
        if not aL2 then
            return
        end
        aM5 = nil
        for k, v in aL2.Connections do
            v:Disconnect()
        end
        for k, v in aL2.Properties do
            local aMd = k
            for k, v in v do
                local aMj = k
                local aMl = v
                pcall(function()
                    aMd[aMj] = aMl
                end)
            end
        end
        if aL2.QualityLevel then
            pcall(function()
                settings().Rendering.QualityLevel = aL2.QualityLevel
            end)
        end
    end
    aM8 = function()
        local aMF
        aMF = nil
        local aME
        if aM5 or Library.Unloaded or Library.FeatureAPI.Unloaded then
            return
        end
        aMF = { Properties = setmetatable({}, { __mode = "k" }), Connections = {} }
        aM5 = aMF
        aME = function(Rh, Ri, Rj)
            if aM5 ~= aMF then
                return
            end
            pcall(function()
                local aMm = Rh[Ri]
                if aMm == Rj then
                    return
                end
                local aMn = aMF.Properties[Rh]
                if not aMn then
                    aMn = {}
                    aMF.Properties[Rh] = aMn
                end
                if aMn[Ri] == nil then
                    aMn[Ri] = aMm
                end
                Rh[Ri] = Rj
            end)
        end
        local function aMG(Rt)
            local aMt = aNd[Rt.ClassName] or Rt:IsA("Beam") or Rt:IsA("PostEffect")
            if aMt then
                aME(Rt, "Enabled", false)
            elseif Rt:IsA("BasePart") then
                aME(Rt, "CastShadow", false)
                aME(Rt, "Material", Enum.Material.SmoothPlastic)
                aME(Rt, "Reflectance", 0)
            else
                local aMt_1 = Rt:IsA("Decal") or Rt:IsA("Texture")
                if aMt_1 then
                    aME(Rt, "Transparency", 1)
                elseif Rt:IsA("Light") then
                    aME(Rt, "Shadows", false)
                elseif Rt:IsA("Atmosphere") then
                    aME(Rt, "Density", 0)
                    aME(Rt, "Haze", 0)
                    aME(Rt, "Glare", 0)
                elseif Rt:IsA("Clouds") then
                    aME(Rt, "Enabled", false)
                end
            end
        end
        pcall(function()
            aMF.QualityLevel = settings().Rendering.QualityLevel
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        end)
        aME(ad4, "GlobalShadows", false)
        local Terrain = fns.aO8_81:FindFirstChildOfClass("Terrain")
        if Terrain then
            aME(Terrain, "WaterWaveSize", 0)
            aME(Terrain, "WaterWaveSpeed", 0)
            aME(Terrain, "WaterReflectance", 0)
        end
        for k, v in { fns.aO8_81, ad4 } do
            local aMO = v
            table.insert(aMF.Connections, aMO.DescendantAdded:Connect(function(RH)
                if aM5 == aMF then
                    aMG(RH)
                end
            end))
            task.spawn(function()
                local aMw = aMO:QueryDescendants("BasePart, Decal, Texture, ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam, PostEffect, Light, Atmosphere, Clouds")
                for k, v in aMw do
                    if aM5 ~= aMF or Library.Unloaded then
                        return
                    end
                    aMG(v)
                    if k % 200 == 0 then
                        task.wait()
                    end
                end
            end)
        end
    end
    Library.FeatureAPI.SetFpsBoost = function(RU)
        if RU then
            aM8()
        else
            aNb()
        end
    end
    SetFpsBoost = Library.FeatureAPI.SetFpsBoost
    aNa = function()
        if aM9 then
            pcall(function()
                aM9:Destroy()
            end)
        end
        aM9 = nil
    end
    aNc = function()
        if aM9 and aM9.Parent then
            return
        end
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "OuroborosRenderOverlay"
        screenGui.IgnoreGuiInset = true
        screenGui.ResetOnSpawn = false
        screenGui.DisplayOrder = 500
        screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        screenGui.Parent = adI()
        local frame = Instance.new("Frame")
        frame.Size = UDim2.fromScale(1, 1)
        frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        frame.BorderSizePixel = 0
        frame.Parent = screenGui
        local textLabel2 = Instance.new("TextLabel")
        textLabel2.AnchorPoint = Vector2.new(0.5, 1)
        textLabel2.Position = UDim2.fromScale(0.5, 0.5)
        textLabel2.Size = UDim2.fromOffset(420, 28)
        textLabel2.BackgroundTransparency = 1
        textLabel2.Font = Enum.Font.GothamMedium
        textLabel2.TextSize = 22
        textLabel2.TextColor3 = Color3.fromRGB(230, 230, 230)
        textLabel2.Text = "Ouroboros Hub"
        textLabel2.Parent = frame
        local textLabel = Instance.new("TextLabel")
        textLabel.AnchorPoint = Vector2.new(0.5, 0)
        textLabel.Position = UDim2.new(0.5, 0, 0.5, 8)
        textLabel.Size = UDim2.fromOffset(420, 20)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.Code
        textLabel.TextSize = 14
        textLabel.TextColor3 = Color3.fromRGB(160, 160, 160)
        textLabel.Text = "Discord.gg/synapsex"
        textLabel.Parent = frame
        aM9 = screenGui
    end
    aM4 = function(Sa)
        pcall(function()
            agA:Set3dRenderingEnabled(not Sa)
        end)
        if Sa then
            aNc()
        else
            aNa()
        end
    end
    aM2 = function()
        if not aM3 then
            return false
        elseif aM7 then
            return true
        else
            aM7 = pcall(aM3, ('if not game:IsLoaded() then game.Loaded:Wait() end local env = (getgenv and getgenv()) or _G if env.OuroborosAutoExecuted == game.JobId then return end env.OuroborosAutoExecuted = game.JobId task.wait(3) loadstring(game:HttpGet("%s"))()'):format(fns.aO8_33.LOADER_URL))
            return aM7
        end
    end
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("DisableRendering", { Text = "Disable Rendering", Default = false })
    MenuGroup:AddToggle("AutoExecute", {
        Text = "Auto Execute",
        Default = false,
        Callback = function(Sn)
            if not Sn then
                return
            end
            if not aM2() then
                Library:Notify("queue_on_teleport is not supported by your executor")
            end
        end
    })
    Toggles.FpsBoost:OnChanged(function()
        SetFpsBoost(aez("FpsBoost"))
    end)
    if aez("FpsBoost") then
        SetFpsBoost(true)
    end
    Toggles.DisableRendering:OnChanged(function()
        aM4(aez("DisableRendering"))
    end)
    if aez("DisableRendering") then
        aM4(true)
    end
    adU.OnTeleport:Connect(function(Sx)
        if Sx ~= Enum.TeleportState.Started then
            return
        end
        local aM0 = Library.Unloaded or not aez("AutoExecute")
        if aM0 then
            return
        end
        aM2()
    end)
    Library:OnUnload(function()
        aM4(false)
        SetFpsBoost(false)
    end)
end)();
(function()
    local connection
    local SE = 0
    local SF = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function SI()
        local CurrentCamera = fns.aO8_81.CurrentCamera
        if not CurrentCamera then
            return
        end
        agp:CaptureController()
        agp:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        SE += 1
        SF = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. SE)
        end)
    end
    connection = adU.Idled:Connect(function()
        if aez("AntiAfk") then
            pcall(SI)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local aNn = aez("AntiAfk") and tick() - SF >= 60
            if aNn then
                pcall(SI)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end)()
aO8_92:SetLibrary(Library)
aO8_92:SetFolder("OuroborosHub")
aO8_92:SaveDefault("Evil Hello Kitty")
aO8_92:ApplyToTab(aO8_88.Settings)
aO8_92:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/DungeonLootr")
ad9 = SaveManager:BuildConfigSection(aO8_88.Settings);
(function()
    local function S6(S7, S8)
        local aNr_1 = (S7 == "Toggle" and Toggles or Options)[S8]
        local aNq_2 = type(aNr_1) == "table" and aNr_1.Type == S7
        return aNq_2 and aNr_1 or nil
    end
    local function Tg(Th, Ti)
        local Type = Ti.Type
        if Type == "Toggle" then
            return { idx = Th, type = "Toggle", value = Ti.Value == true }
        elseif Type == "Slider" then
            return { idx = Th, type = "Slider", value = tostring(Ti.Value) }
        elseif Type == "Dropdown" then
            return { idx = Th, type = "Dropdown", multi = Ti.Multi == true, value = Ti.Value }
        elseif Type == "Input" then
            local aNv = Ti.Value or ""
            return { idx = Th, type = "Input", text = tostring(aNv) }
        elseif Type == "ColorPicker" then
            return { idx = Th, type = "ColorPicker", value = Ti.Value:ToHex(), transparency = Ti.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = Th,
                type = "KeyPicker",
                mode = Ti.Mode,
                key = Ti.Value,
                modifiers = Ti.Modifiers,
                toggled = Ti.Toggled
            }
        else
            return nil
        end
    end
    local function Tk()
        local aNE = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local aNF = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if aNF then
                    local aNF_1 = Tg(k, v)
                    if aNF_1 then
                        aNE[#aNE + 1] = aNF_1
                    end
                end
            end
        end
        table.sort(aNE, function(Tu, Tv)
            if Tu.type ~= Tv.type then
                return Tu.type < Tv.type
            end
            return Tu.idx < Tv.idx
        end)
        return { objects = aNE }
    end
    local function Tw(Tx)
        local aNY
        aNY = nil
        local aNZ = type(Tx) ~= "table"
        local aN2 = if aNZ then 1 else 0
        local aN0 = 3490 * aN2 + 2093 * (1 - aN2)
        local aN1 = 3457 * aN2 + 1399 * (1 - aN2)
        if not ((aN0 * 3582 + aN1 * 1222 + aN0 * aN1) % 16777213 == 12013351) then
            aNZ = type(Tx.idx) ~= "string"
        end
        if not aNZ then
            aNZ = type(Tx.type) ~= "string"
        end
        if not aNZ then
            aNZ = SaveManager.Ignore[Tx.idx]
        end
        if aNZ then
            return false
        end
        aNY = S6(Tx.type, Tx.idx)
        if not aNY then
            return false
        end
        local aNZ_1 = pcall(function()
            if Tx.type == "Input" then
                if type(Tx.text) ~= "string" then
                    return
                end
                aNY:SetValue(Tx.text)
            elseif Tx.type == "ColorPicker" then
                aNY:SetValueRGB(Color3.fromHex(Tx.value), Tx.transparency)
            elseif Tx.type == "KeyPicker" then
                aNY:SetValue({ Tx.key, Tx.mode, Tx.modifiers })
                if Tx.mode == "Toggle" and Tx.toggled ~= nil then
                    aNY.Toggled = Tx.toggled
                    aNY:Update()
                end
            else
                aNY:SetValue(Tx.value)
            end
        end)
        return aNZ_1
    end
    ad9:AddDivider()
    ad9:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    ad9:AddButton("Export Config to Clipboard", function()
        local aN7_1
        local aN6_1
        aN6_1, aN7_1 = pcall(aev.JSONEncode, aev, Tk())
        if not aN6_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local aN6_2 = setclipboard or toclipboard
        local aN6_3 = type(aN6_2) ~= "function"
        local aOc = if aN6_3 then 1 else 0
        local aOa = 1059 * aOc + 3144 * (1 - aOc)
        local aOb = 3465 * aOc + 2853 * (1 - aOc)
        if not ((aOa * 2822 + aOb * 2752 + aOa * aOb) % 16777213 == 16193613) then
            aN6_3 = not pcall(aN6_2, aN7_1)
        end
        if aN6_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    ad9:AddButton("Import Config from Clipboard Text", function()
        local aOf_1
        local aOd = Options.SaveManager_ImportSource.Value or ""
        local aOd_1
        local aOe = tostring(aOd):match("^%s*(.-)%s*$")
        if aOe == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        aOd_1, aOf_1 = pcall(aev.JSONDecode, aev, aOe)
        local aOe_1 = not aOd_1 or type(aOf_1) ~= "table"
        local aOj = if aOe_1 then 1 else 0
        local aOh = 1448 * aOj + 1289 * (1 - aOj)
        local aOi = 362 * aOj + 1950 * (1 - aOj)
        if not ((aOh * 2686 + aOi * 3502 + aOh * aOi) % 16777213 == 5681228) then
            aOe_1 = type(aOf_1.objects) ~= "table"
        end
        if aOe_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local aOd_2 = 0
        for i, v in ipairs(aOf_1.objects) do
            if Tw(v) then
                aOd_2 += 1
            end
        end
        if aOd_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local aOf_2 = aOd_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(aOd_2, aOf_2), 6)
    end)
end)()
SaveManager:LoadAutoloadConfig()
task.spawn(fns.worker4)
