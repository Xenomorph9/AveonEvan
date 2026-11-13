local fns = {}
fns.dwb_1 = nil
fns.dwb_2 = nil
fns.dwb_4 = nil
fns.dwb_6 = nil
fns.dwb_7 = nil
fns.dwb_8 = nil
fns.dwb_9 = nil
fns.dwb_10 = nil
fns.dwb_11 = nil
fns.dwb_12 = nil
fns.dwb_13 = nil
fns.dwb_15 = nil
fns.dwb_16 = nil
fns.dwb_17 = nil
fns.dwb_18 = nil
fns.dwb_19 = nil
fns.UserGameSettings = nil
fns.dwb_21 = nil
fns.dwb_23 = nil
fns.dwb_24 = nil
fns.dwb_26 = nil
fns.dwb_27 = nil
fns.dwb_28 = nil
fns.dwb_29 = nil
fns.dwb_30 = nil
fns.dwb_31 = nil
fns.dwb_32 = nil
fns.dwb_33 = nil
fns.dwb_35 = nil
fns.dwb_36 = nil
fns.dwb_38 = nil
fns.dwb_39 = nil
fns.dwb_40 = nil
fns.dwb_41 = nil
fns.dwb_42 = nil
fns.dwb_43 = nil
fns.dwb_44 = nil
fns.dwb_45 = nil
fns.dwb_47 = nil
fns.dwb_48 = nil
fns.dwb_49 = nil
fns.dwb_50 = nil
fns.dwb_51 = nil
fns.dwb_52 = nil
fns.dwb_53 = nil
fns.dwb_55 = nil
fns.dwb_56 = nil
fns.dwb_57 = nil
fns.dwb_59 = nil
fns.dwb_60 = nil
fns.dwb_61 = nil
fns.dwb_62 = nil
fns.dwb_63 = nil
fns.dwb_64 = nil
fns.dwb_65 = nil
fns.dwb_67 = nil
fns.dwb_68 = nil
fns.dwb_69 = nil
fns.dwb_70 = nil
fns.dwb_71 = nil
fns.dwb_72 = nil
fns.dwb_73 = nil
fns.dwb_74 = nil
fns.dwb_76 = nil
fns.dwb_77 = nil
fns.dwb_79 = nil
fns.dwb_80 = nil
fns.dwb_81 = nil
fns.dwb_82 = nil
fns.dwb_83 = nil
fns.dwb_84 = nil
fns.dwb_85 = nil
fns.dwb_87 = nil
fns.dwb_88 = nil
fns.dwb_89 = nil
fns.dwb_90 = nil
fns.dwb_91 = nil
fns.dwb_92 = nil
fns.dwb_93 = nil
fns.dwb_94 = nil
fns.dwb_96 = nil
fns.dwb_97 = nil
fns.dwb_99 = nil
fns.connection = nil
fns.connection3 = nil
fns.dwb_102 = nil
fns.dwb_103 = nil
fns.dwb_104 = nil
fns.dwb_105 = nil
fns.dwb_106 = nil
fns.dwb_108 = nil
fns.dwb_109 = nil
fns.dwb_110 = nil
fns.dwb_111 = nil
fns.dwb_112 = nil
fns.dwb_113 = nil
fns.dwb_114 = nil
fns.dwb_116 = nil
fns.dwb_117 = nil
fns.dwb_118 = nil
fns.dwb_120 = nil
fns.dwb_121 = nil
fns.dwb_122 = nil
fns.dwb_123 = nil
fns.dwb_124 = nil
fns.dwb_125 = nil
fns.dwb_126 = nil
fns.dwb_128 = nil
fns.dwb_129 = nil
fns.dwb_130 = nil
fns.dwb_131 = nil
fns.dwb_132 = nil
fns.dwb_133 = nil
fns.dwb_134 = nil
fns.dwb_135 = nil
fns.dwb_137 = nil
fns.dwb_138 = nil
fns.dwb_140 = nil
fns.dwb_141 = nil
fns.dwb_142 = nil
fns.dwb_143 = nil
fns.dwb_144 = nil
fns.dwb_145 = nil
fns.dwb_146 = nil
fns.dwb_147 = nil
fns.dwb_149 = nil
fns.dwb_150 = nil
fns.dwb_151 = nil
fns.dwb_152 = nil
fns.dwb_153 = nil
fns.dwb_154 = nil
fns.dwb_155 = nil
local bSU
local bQv
local bRU
local connection4
local bTi
local bPU
local bTH
local bQi
local bRi
local bS5
local bQH
local bR5
local bQ5
local bTu
local bSu
local bRu
local bQu
local bST
local bRT
local bQT
local bPT
local bTh
local bRh
local bTG
local bSG
local bQh
local bRG
local bQG
local bS4
local bR4
local bSh
local bQ4
local bP4
local bSt
local bRt
local bTt
local bQt
local bSS
local bRS
local bQS
local bTg
local bPS
local bSg
local bTF
local bRg
local bSF
local bQF
local bR3
local tweaks2
local bTs
local bSs
local bQs
local bSR
local bQR
local onChildAdded
local bSf
local SchematicRunner
local bTE
local bRf
local bQf
local LocalPlayer
local bS2
local bQE
local bR2
local bQ2
local bTr
local bSr
local bP2
local bRr
local connection2
local bSQ
local bRQ
local bTe
local bPQ
local bSe
local bRe
local bQe
local bRD
local bQD
local bS1
local bR1
local bQ1
local bP1
function fns.fn6()
    local b6_ = fns.dwb_147.runs[coroutine.running()]
    return b6_ ~= nil and b6_.controller.yield == true
end
function fns.fn22()
    return fns.dwb_142.serialize()
end
function fns.fn29(aMG, aMH)
    if aMH then
        bTu.on[aMG] = true
    else
        bTu.on[aMG] = nil
        for k, v in pairs(bTu.entries) do
            if v.category == aMG then
                bRi.drop(k)
            end
        end
    end
    bRi.refreshAnyOn()
end
function fns.fn38(Dt)
    local cdZ = 0
    for k in pairs(Dt) do
        cdZ += 1
    end
    return cdZ
end
function fns.fn45()
    if type(fns.dwb_26.RunHandler) ~= "table" then
        return
    end
    if bRf.alwaysRun then
        if fns.dwb_26.RunHandler.Toggled ~= true then
            fns.dwb_26.RunHandler.Toggled = true
        end
        fns.dwb_77 = true
    elseif fns.dwb_77 then
        fns.dwb_77 = false
        pcall(function()
            fns.dwb_26.RunHandler.Toggled = false
        end)
    end
end
function fns.fn48(bhj)
    if bhj then
        bSs.WorldStatus = "Starting"
        bSg.WorldController.running = true
        bSg.WorldController.nextAt = nil
        fns.dwb_53(bSg.WorldController, fns.dwb_92.worldLoopStep)
    else
        bSg.WorldController.running = false
        fns.dwb_72(bSg.WorldController)
        bSs.WorldStatus = "Idle"
    end
end
function fns.fn49(a72)
    bQ4.clanSkills = fns.dwb_90(a72)
end
function fns.fn53()
    return LocalPlayer.Character
end
function fns.fn56(ayk)
    bRf.noSun = ayk == true
    if not bRf.noSun then
        return
    end
    local cN5 = not fns.dwb_81
    local cN6 = not bST() and cN5
    if cN6 then
        return
    end
    pcall(fns.dwb_81, "SunDamage", false)
end
function fns.fn58(mp)
    local b1N = type(fns.dwb_26.CombatPresets) ~= "table" or type(fns.dwb_26.CombatPresets.Presets) ~= "table"
    if b1N then
        return nil
    end
    local b1N_1 = fns.dwb_26.CombatPresets.Presets[mp]
    if b1N_1 then
        return b1N_1, mp, nil
    end
    local b1N_2 = fns.dwb_110(mp)
    if b1N_2 and (b1N_2.Breathing or b1N_2.HasCombat or b1N_2.CombatPreset) then
        local b1O_1 = b1N_2.CombatPreset or "Regular Katana"
        return fns.dwb_26.CombatPresets.Presets[b1O_1], b1O_1, mp
    end
    return nil
end
function fns.fn61(bdf)
    bTE.tweaks.alwaysRun = bdf == true
end
function fns.fn87(baX)
    local dhe = type(baX) == "string" and table.find(bQS.Styles, baX)
    if dhe then
        bQS.Style = baX
    end
end
function fns.fn99(awT)
    local SellController = bSg.SellController
    local cM3 = awT == "All Sellable" and "All Sellable"
    local cM7 = if cM3 then 1 else 0
    local cM5 = 2204 * cM7 + 3007 * (1 - cM7)
    local cM6 = 1747 * cM7 + 3398 * (1 - cM7)
    if not ((cM5 * 933 + cM6 * 3554 + cM5 * cM6) % 16777213 == 12115558) then
        cM3 = "Selected Items"
    end
    SellController.mode = cM3
    bSg.SellController.rearm()
end
function fns.fn104()
    bQS.BindItems()
    local cIy = bQS.Zone()
    local cIy_2
    bQS.Add("Levels", bQS.Delta("Level", bQt()), cIy)
    bQS.Add("Wen", bQS.Delta("Wen", bR2()), cIy)
    bQS.Add("Kills", bQS.Delta("Kills", bSs.Kills), cIy)
    bQS.Add("Quests", bQS.Delta("Quests", bSs.Quests), cIy)
    bQS.Add("Hunts", bQS.Delta("Hunts", bSs.Hunts), cIy)
    bQS.Add("Caches", bQS.Delta("Chests", bSs.Chests), cIy)
    bQS.Add("Souls", bQS.Delta("Souls", bSs.Souls), cIy)
    bQS.Add("Fish", bQS.Delta("Fish", bSs.Fish), cIy)
    bQS.Add("Trainings", bQS.Delta("Trainings", bSs.Trainings), cIy)
    bQS.Add("Skills", bQS.Delta("Nodes", bSs.Nodes), cIy)
    bQS.Add("Shop", bQS.Delta("Bought", bSs.Bought), cIy)
    bQS.Add("ExpBought", bQS.Delta("Exp", bSs.ExpGained), "Dungeon")
    bQS.Gauge("Points", "Points", tonumber(LocalPlayer:GetAttribute("RunPoints")))
    bQS.Gauge("Floor", "Floors", tonumber(bSf:GetAttribute("MinigameFloor")))
    bQS.Gauge("Hearts", "Lives", tonumber(LocalPlayer:GetAttribute("Hearts")), true)
    local cIy_1 = bSf:GetAttribute("MinigameRunEnded") ~= nil
    local RunEnded = bQS.Mark.RunEnded
    local cIz_1
    bQS.Mark.RunEnded = cIy_1
    if RunEnded == false and cIy_1 then
        bQS.Add("Runs", 1, "Dungeon")
    end
    cIy_2, cIz_1 = bQS.CardLabel()
    local cIA_1 = (bQS.Changed("Card", cIy_2)) and cIy_2
    if cIA_1 then
        local Dungeon = bQS.Channels.Dungeon
        table.insert(Dungeon.Cards, { name = cIy_2, rarity = cIz_1 })
        while #Dungeon.Cards > 40 do
            table.remove(Dungeon.Cards, 1)
        end
        bQS.Add("Cards", 1, "Dungeon")
    end
end
function fns.fn113(P)
    local bUP = typeof(cloneref) == "function" and typeof(P) == "Instance"
    if bUP then
        return cloneref(P)
    end
    return P
end
function fns.fn117(xc)
    local b84_1
    local b83_1, b83_8, b83_9, b83_10
    if type(xc) ~= "table" then
        return false
    end
    local Requirements = xc.Requirements
    if type(Requirements) ~= "table" then
        return true
    end
    local b82 = type(fns.dwb_26.ItemRequirements) == "table" and bQG(fns.dwb_26.ItemRequirements.Passes)
    if b82 then
        local b82_1 = fns.dwb_82()
        if b82_1 then
            b83_1, b84_1 = fns.dwb_144(fns.dwb_26.ItemRequirements.Passes, b82_1, Requirements)
            if b83_1 then
                return b84_1 ~= false
            end
            bQt()
            if b83_8 then
                return false
            end
            if b83_9 then
                return false
            elseif type(Requirements.Race) == "table" then
                local b82_3 = bRS()
                for i, v in ipairs(Requirements.Race) do
                    if v == b82_3 then
                        break
                    end
                end
                if not b83_10 then
                    return false
                end
                return true
            else
                return true
            end
        else
            bQt()
            if b83_8 then
                return false
            end
            if b83_9 then
                return false
            elseif type(Requirements.Race) == "table" then
                local b82_5 = bRS()
                for i, v in ipairs(Requirements.Race) do
                    if v == b82_5 then
                        break
                    end
                end
                if not b83_10 then
                    return false
                end
                return true
            else
                return true
            end
        end
    else
        local b82_6 = bQt()
        b83_8 = (tonumber(Requirements.Level)) and b82_6 < tonumber(Requirements.Level)
        if b83_8 then
            return false
        end
        b83_9 = (tonumber(Requirements.MaxLevel)) and b82_6 > tonumber(Requirements.MaxLevel)
        if b83_9 then
            return false
        elseif type(Requirements.Race) == "table" then
            local b82_7 = bRS()
            b83_10 = false
            for i, v in ipairs(Requirements.Race) do
                if v == b82_7 then
                    b83_10 = true
                    break
                end
            end
            if not b83_10 then
                return false
            end
            return true
        else
            return true
        end
    end
end
function fns.fn123(beY)
    local dkq_1
    local dkp_1
    local dko_1
    local RespawnController = bSg.RespawnController
    local dkn = beY or ""
    dkp_1, dko_1, dkq_1 = tostring(dkn):match("(-?%d+%.?%d*)%s*,%s*(-?%d+%.?%d*)%s*,%s*(-?%d+%.?%d*)")
    if dkp_1 then
        RespawnController.point = Vector3.new(tonumber(dkp_1), tonumber(dko_1), tonumber(dkq_1))
    else
        RespawnController.point = nil
    end
    fns.dwb_123.RefreshRespawnStatus()
end
function fns.fn129(Kr)
    return bQe.holdItem(Kr)
end
function fns.fn150()
    local cXO = {}
    for i, v in ipairs(fns.dwb_108()) do
        if v.folder:FindFirstChild("BossInfo") then
            cXO[v.folder.Name] = true
        end
    end
    return cXO
end
function fns.fn176(bgR)
    local ResetController = bSg.ResetController
    local dlC = (tonumber(bgR)) or 3
    ResetController.resets = math.clamp(math.floor(dlC), 1, 3)
end
function fns.fn188()
    local c6c_1
    if not fns.dwb_118() then
        return
    end
    local StallController = bSg.StallController
    if not bQe.inDungeon() then
        bSs.StallStatus = "Only watches a run"
        StallController.seen, StallController.runKey, StallController.done = nil, nil, 0
        return
    end
    local c6b = fns.dwb_92.runKey()
    local c6b_1
    if StallController.runKey ~= c6b then
        StallController.runKey, StallController.done, StallController.seen = c6b, 0, nil
    end
    if StallController.done >= fns.dwb_11.RUN_HEARTS then
        bSs.StallStatus = "Run ended"
        return
    end
    c6b_1, c6c_1 = fns.dwb_92.inRunLobby()
    if c6b_1 then
        StallController.seen, StallController.mark = nil, os.clock()
        bSs.StallStatus = "Waiting in " .. c6c_1
        return
    end
    local c6b_2 = (tonumber(LocalPlayer:GetAttribute("RunPoints"))) or 0
    local c6b_3 = (tonumber(bSf:GetAttribute("MinigameFloor")))
    local c6h = if c6b_3 then 1 else 0
    local c6f = 2572 * c6h + 241 * (1 - c6h)
    local c6g = 391 * c6h + 3435 * (1 - c6h)
    if not ((c6f * 779 + c6g * 3833 + c6f * c6g) % 16777213 == 4507943) then
        c6b_3 = 0
    end
    local c6b_4 = c6b_2 + c6b_3 + bSs.Kills
    if StallController.seen ~= c6b_4 then
        StallController.seen, StallController.mark = c6b_4, os.clock()
        bSs.StallStatus = "Run is moving"
        return
    end
    local c6b_5 = os.clock() - StallController.mark
    if c6b_5 < StallController.timeout then
        bSs.StallStatus = string.format("Stuck for %ds of %ds", math.floor(c6b_5), StallController.timeout)
        return
    end
    local c6b_6 = string.format("Stuck, ending the run (%d/%d)", StallController.done + 1, fns.dwb_11.RUN_HEARTS)
    if not fns.dwb_92.spendHeart(StallController, "StallStatus", c6b_6) then
        return
    end
    StallController.done = StallController.done + 1
    StallController.mark = os.clock()
    bSs.StallStatus = string.format("Ending the run (%d/%d)", StallController.done, fns.dwb_11.RUN_HEARTS)
end
function fns.fn196()
    while fns.dwb_118() do
        pcall(function()
            fns.dwb_67()
            if bQG(bTE.resourceTick) then
                bTE.resourceTick()
            end
            local cOR = bTE.parry and bQG(bTE.parry.step)
            if cOR then
                bTE.parry.step()
            end
            if bRf.noStun or bRf.noRagdoll then
                fns.dwb_49()
            end
            if bRf.noRagdoll then
                fns.dwb_102()
            end
            if bRf.noSlowdown then
                local cOR_2 = fns.dwb_104()
                local cOS = type(fns.dwb_26.CombatPresets) == "table" and fns.dwb_26.CombatPresets.slow_walk_speed
                local cOT = cOS
                local cOY = if cOT then 1 else 0
                local cOW = 602 * cOY + 2819 * (1 - cOY)
                local cOX = 1360 * cOY + 368 * (1 - cOY)
                if not ((cOW * 1563 + cOX * 1871 + cOW * cOX) % 16777213 == 4304206) then
                    cOT = 7
                end
                local cOS_1 = cOR_2
                local cOU = cOT
                if cOS_1 then
                    cOS_1 = cOR_2.WalkSpeed > 0
                end
                if cOS_1 then
                    cOS_1 = cOR_2.WalkSpeed <= cOU
                end
                if cOS_1 then
                    cOR_2.WalkSpeed = 16
                end
            end
            fns.dwb_152()
            fns.dwb_40()
            fns.dwb_126()
        end)
        task.wait(0.15)
    end
end
function fns.fn202()
    local bWB = fns.dwb_99()
    local bWC = bWB and bWB:FindFirstChildOfClass("Humanoid")
    return bWC or nil
end
function fns.fn221(a0K)
    local c9A = fns.dwb_142.byLabel[a0K]
    return c9A and c9A.key or nil
end
function fns.fn229()
    return fns.dwb_92.module("RotatingShop module", { "CAM", "Global", "Subsets", "Gameplay", "RotatingShop" })
end
function fns.fn231(bhf)
    local WorldController = bSg.WorldController
    local dl0 = type(bhf) == "string" and bhf
    WorldController.privateOwner = dl0 or ""
end
function fns.fn233(bgl)
    bSg.QueueController.ranked = bgl == true
end
function fns.fn269(my)
    local b1R = fns.dwb_21(my)
    if b1R then
        return true
    end
    local Assets = fns.dwb_87:FindFirstChild("Assets")
    local b1S = Assets and Assets:FindFirstChild("Animations")
    local b1S_1 = b1S ~= nil and b1S:FindFirstChild(my .. "_Combat_Anims") ~= nil
    return b1S_1
end
function fns.fn274()
    return bSf:GetAttribute("MinigameKey") ~= nil
end
function fns.fn283(bbi)
    if not bTE.parry then
        return
    end
    if bTE.parry.on == (bbi == true) then
        return
    end
    bTE.parry.invalidate()
    bTE.parry.on = bbi == true
    if bTE.parry.on then
        bTE.parry.reset()
        bSs.ParryStatus = "Watching"
    else
        bSs.ParryStatus = "Off"
    end
end
function fns.fn285(m9, na)
    return fns.dwb_56(fns.dwb_62(m9), na)
end
function fns.fn290(bcU)
    bTE.tweaks.instantKill = bcU == true
end
function fns.fn308()
    local cO0 = {}
    local cO1 = fns.dwb_92.regions()
    local cO2 = type(cO1) ~= "table" or type(cO1.Regions) ~= "table"
    if cO2 then
        return cO0
    end
    for k, v in pairs(cO1.Regions) do
        if type(v) == "table" then
            local cO1_1 = nil
            local CrystalAt = v.CrystalAt
            if typeof(CrystalAt) == "CFrame" then
                cO1_1 = CrystalAt.Position
            elseif typeof(CrystalAt) == "Vector3" then
                cO1_1 = CrystalAt
            end
            local cO2_2 = not cO1_1
            if cO2_2 ~= false then
                cO2_2 = type(v.Npcs) == "table"
            end
            if cO2_2 then
                for k, v in pairs(v.Npcs) do
                    local cO2_3 = type(v) == "table" and type(v.Name) == "string"
                    if cO2_3 then
                        local cO2_4 = fns.dwb_41(v.Name)
                        if cO2_4 then
                            cO1_1 = cO2_4
                            break
                        end
                    end
                end
            end
            if cO1_1 then
                cO0[k] = cO1_1
            end
        end
    end
    return cO0
end
function fns.fn326(bbo)
    if bTE.parry and bTE.parry.pvp ~= (bbo == true) then
        bTE.parry.invalidate()
        bTE.parry.pvp = bbo == true
    end
end
function fns.fn343(UP)
    local attr = UP:GetAttribute("ChestId")
    if type(attr) ~= "string" then
        return nil
    end
    return attr:match("(T%d+)")
end
function fns.fn362(a8X)
    if a8X then
        bSs.PotionStatus = "Watching health"
        bSg.PotionController.running = true
        fns.dwb_53(bSg.PotionController, fns.dwb_131)
    else
        bSg.PotionController.running = false
        fns.dwb_72(bSg.PotionController)
        bSs.PotionStatus = "Idle"
    end
end
function fns.fn370(aPo)
    local attr = aPo:GetAttribute("DropTarget")
    if typeof(attr) == "Vector3" then
        return attr
    end
    return aPo.Position
end
function fns.fn373(baQ)
    local dhb = type(baQ) == "string" and baQ
    bQS.PingId = dhb or ""
end
function fns.fn388(a9Q)
    bSg.FishController.buyBait = a9Q == true
end
function fns.fn398()
    local cPg = {}
    local cPh = fns.dwb_92.regions()
    local cPi = type(cPh) ~= "table" or type(cPh.Regions) ~= "table"
    if cPi then
        return cPg
    end
    for k, v in pairs(cPh.Regions) do
        local cPh_1 = type(v) == "table" and type(v.Npcs) == "table"
        if cPh_1 then
            for k, v in pairs(v.Npcs) do
                local cPh_2 = type(v) == "table" and v.Type == 1 and type(v.Name) == "string"
                if cPh_2 then
                    local cPh_3 = fns.dwb_41(v.Name)
                    if cPh_3 then
                        cPg[v.Name] = cPh_3
                    end
                end
            end
        end
    end
    return cPg
end
function fns.fn399(a9I)
    local FishController = bSg.FishController
    local dfU = type(a9I) == "string" and a9I
    FishController.bait = dfU or "None"
end
function fns.fn402(baI, baJ)
    local dg4 = bQS.Channels[baI]
    if dg4 then
        local dg7 = (tonumber(baJ)) or 15
        dg4.Interval = math.clamp(math.floor(dg7), 1, 240)
    end
end
function fns.fn417()
    local cgu = {}
    local BossHunts = fns.dwb_87:FindFirstChild("BossHunts")
    if not BossHunts then
        return cgu
    end
    local cgw = bSf:GetServerTimeNow()
    for i, child in ipairs(BossHunts:GetChildren()) do
        local attr2 = child:GetAttribute("Quest")
        local attr = child:GetAttribute("Boss")
        local cgy = tonumber(child:GetAttribute("ExpiresAt"))
        local cgz = type(attr2) == "string" and attr2 ~= "" and type(attr) == "string"
        if cgz and attr ~= "" then
            if not cgy or cgy > cgw then
                local cgz_2 = #cgu + 1
                local Name = child.Name
                local cgB_1 = (child:GetAttribute("Tier")) or ""
                local cgC = tostring(cgB_1)
                cgu[cgz_2] = { id = Name, quest = attr2, boss = attr, tier = cgC, expires = cgy or math.huge }
            end
        end
    end
    return cgu
end
function fns.fn430(aH, ...)
    local bU7_1
    local bU4 = (bQG(setthreadidentity)) and setthreadidentity
    local bU5 = bU4 or nil
    local bU5_1
    local bU6
    if bU5 then
        local bVc = if bQG(getthreadidentity) then 1 else 0
        if bVc == 1 then
            bU5_1, bU7_1 = pcall(getthreadidentity)
            bU6 = bU5_1 and bU7_1 or nil
        end
        pcall(bU5, 2)
    end
    local bU5_3 = table.pack(pcall(aH, ...))
    if bU5 then
        local bU7_2 = bU6 or 8
        pcall(bU5, bU7_2)
    end
    return table.unpack(bU5_3, 1, bU5_3.n)
end
function fns.fn451()
    bTg.refreshAt = os.clock() + fns.dwb_68.refresh
    local cVD = fns.dwb_4()
    local cVE = {}
    if cVD then
        local Position = cVD.Position
        if fns.dwb_43.npc then
            local Humanoids = fns.dwb_51.Workspace:FindFirstChild("Humanoids")
            local cVG_1 = Humanoids and Humanoids:FindFirstChild("Regions")
            local cVD_2 = cVG_1
            if cVG_1 then
                cVG_1 = cVD_2:GetChildren()
            end
            local cVH_1 = cVG_1 or {}
            for i, v in ipairs(cVH_1) do
                local ActiveNpcs = v:FindFirstChild("ActiveNpcs")
                local cVG_2 = ActiveNpcs and ActiveNpcs:GetChildren()
                local cVH_2 = cVG_2 or {}
                for i, v in ipairs(cVH_2) do
                    for i, child in ipairs(v:GetChildren()) do
                        local cVD_6 = (child:IsA("Model")) and child:FindFirstChild("HumanoidRootPart")
                        local cVG_3 = cVD_6
                        if cVD_6 then
                            cVD_6 = (cVG_3.Position - Position).Magnitude <= fns.dwb_43.radius
                        end
                        if cVD_6 then
                            cVE[child] = true
                            bRQ(child, true)
                        end
                    end
                end
            end
        end
        if fns.dwb_43.pvp then
            for i, player in ipairs(fns.dwb_51.Players:GetPlayers()) do
                local cVD_7 = player ~= LocalPlayer and player.Character
                local cVG_4 = cVD_7
                if cVD_7 then
                    cVD_7 = cVG_4:FindFirstChild("HumanoidRootPart")
                end
                local cVH_3 = cVD_7
                if cVD_7 then
                    cVD_7 = (cVH_3.Position - Position).Magnitude <= fns.dwb_43.radius
                end
                if cVD_7 then
                    cVE[cVG_4] = true
                    bRQ(cVG_4, false)
                end
            end
        end
    end
    bTg.watching = 0
    for k in pairs(bRG) do
        if not cVE[k] or not k.Parent then
            bSF(k)
        else
            bTg.watching = bTg.watching + 1
        end
    end
end
function fns.fn459(bcW)
    bTE.tweaks.chestKill = bcW == true
end
function fns.fn464(bgZ)
    local OpenController = bSg.OpenController
    local dlH = (tonumber(bgZ)) or 0
    OpenController.limit = math.clamp(dlH, 0, 25)
    bSg.OpenController.opened = 0
end
function fns.fn466(aGy)
    local track
    local model
    model, track = aGy.model, aGy.track
    local cTE = bRG[model]
    local cTF = model.Parent and model:FindFirstChildOfClass("Humanoid")
    local cTF_1 = (fns.dwb_118()) and fns.dwb_43.on and aGy.generation == fns.dwb_43.generation and aGy.owner == fns.dwb_99() and cTE ~= nil and cTE.animator == aGy.animator and track.IsPlaying
    if cTF_1 then
        local cTE_1 = not aGy.initialized
        if not cTE_1 then
            local cTG = (fns.dwb_154(track.Speed)) and track.Speed > 0
            cTE_1 = cTG
        end
        cTF_1 = cTE_1
    end
    if cTF_1 then
        cTF_1 = cTF ~= nil
    end
    if cTF_1 then
        cTF_1 = cTF.Health > 0
    end
    if cTF_1 then
        local cTD_2 = aGy.isMob and fns.dwb_43.npc
        if not cTD_2 then
            local cTC_4 = not aGy.isMob
            if cTC_4 ~= false then
                cTC_4 = fns.dwb_43.pvp
            end
            cTD_2 = cTC_4
        end
        cTF_1 = cTD_2
    end
    return cTF_1
end
function fns.fn467()
    local cnX = not fns.dwb_118() or not bSg.LootController.running or bSg.LootController.stopped
    if cnX then
        return nil
    end
    bSg.LootController.awaitUntil = os.clock() + 12
    bSg.LootController.pending = true
    return bSg.LootController.awaitUntil
end
function fns.fn494(j1)
    local b_X = fns.dwb_11.BOSS_POINTS[j1]
    if b_X then
        return b_X
    end
    local b_X_1 = fns.dwb_47(j1)
    local b_Y = b_X_1 and b_X_1:FindFirstChild("BossInfo")
    local b_X_2 = b_Y
    if b_Y then
        b_Y = b_X_2:GetAttribute("Center")
    end
    local b_X_3 = b_Y
    if typeof(b_X_3) == "Vector3" then
        return b_X_3
    end
    local b_X_4 = fns.dwb_11.BOSS_SUMMONS[j1]
    return b_X_4 and b_X_4.point or nil
end
function fns.fn499()
    while fns.dwb_118() do
        pcall(function()
            if not bTu.anyOn then
                return
            end
            local cZ1 = bRi.collect()
            for k in pairs(bTu.entries) do
                local cZ2 = not cZ1[k] or not k:IsDescendantOf(bSf)
                if cZ2 then
                    bRi.drop(k)
                end
            end
            for k, v in pairs(cZ1) do
                bRi.add(k, v.label, v.category, v.player)
            end
        end)
        task.wait(1)
    end
end
function fns.fn501()
    if coroutine.status(fns.dwb_76) ~= "dead" then
        pcall(task.cancel, fns.dwb_76)
    end
end
function fns.fn512(bhd)
    local WorldController = bSg.WorldController
    local dlX = type(bhd) == "string" and bhd
    WorldController.world = dlX or ""
end
function fns.fn514(awY)
    bSg.SellController.rarities = fns.dwb_90(awY)
    bSg.SellController.rearm()
end
function fns.fn515()
    local entry = fns.dwb_123.BlockWork.entry
    if entry and entry == fns.dwb_43.blockEntry then
        entry.releaseRequested = true
        local cSL_1 = pcall(bQh, entry)
        if not cSL_1 then
            fns.dwb_69(entry, true)
        end
    end
end
function fns.fn531(awO)
    if awO then
        bSs.SellStatus = "Starting"
        bSg.SellController.running = true
        bSg.SellController.rearm()
        fns.dwb_53(bSg.SellController, bSg.SellController.step)
    else
        bSg.SellController.running = false
        fns.dwb_72(bSg.SellController)
        bSs.SellStatus = "Idle"
    end
end
function fns.fn540(aqx, aqy, aqz)
    local cGS = {}
    for i, v in ipairs(bQS.Catalog[aqx]) do
        cGS[v.key] = true
    end
    return {
        Label = aqx,
        Url = "",
        Enabled = false,
        Interval = aqz,
        Waited = 0,
        Accent = aqy,
        Events = cGS,
        Tally = {},
        Items = {},
        Cards = {}
    }
end
function fns.fn544(aY0, Position)
    local queue = bSg.Alerts.queue
    if #queue >= 12 then
        table.remove(queue, 1)
    end
    queue[#queue + 1] = aY0
    if typeof(Position) == "CFrame" then
        Position = Position.Position
    end
    local Alerts = bSg.Alerts
    local c6U = typeof(Position) == "Vector3" and Position
    Alerts.last = { text = aY0, point = c6U or nil }
end
function fns.fn556()
    local cQ1_2
    local cQ0 = os.clock()
    local cQ0_1
    if cQ0 < bTg.pingAt then
        local cQ1_1 = bTg.rtt
        local cQ6 = if cQ1_1 then 1 else 0
        local cQ4 = 3623 * cQ6 + 192 * (1 - cQ6)
        local cQ5 = 919 * cQ6 + 146 * (1 - cQ6)
        if not ((cQ4 * 868 + cQ5 * 2565 + cQ4 * cQ5) % 16777213 == 8831536) then
            cQ1_1 = fns.dwb_68.defaultRtt
        end
        return cQ1_1
    end
    bTg.pingAt = cQ0 + fns.dwb_68.pingInterval
    cQ0_1, cQ1_2 = pcall(function()
        return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue() / 1000
    end)
    local cQ2 = cQ0_1 and fns.dwb_154(cQ1_2) and cQ1_2 > 0 and cQ1_2 < 2
    if cQ2 then
        if bTg.rtt then
            bTg.jitter = bTg.jitter * 0.75 + math.abs(cQ1_2 - bTg.rtt) * 0.25
            bTg.rtt = bTg.rtt * 0.75 + cQ1_2 * 0.25
        else
            bTg.rtt = cQ1_2
        end
    end
    return bTg.rtt or fns.dwb_68.defaultRtt
end
function fns.fn559(ag)
    local bUR = (tostring(ag):match("^%a+")) or ""
    if bUR == "Cannot" or bUR == "Failed" then
        return fns.dwb_150
    end
    local bUT_1 = bUR == "Idle" or bUR == "No"
    local bUR_3 = bUR == "Nothing"
    local bUU = bUT_1
    local bUY = if bUU then 1 else 0
    local bUW = 2625 * bUY + 947 * (1 - bUY)
    local bUX = 533 * bUY + 2205 * (1 - bUY)
    if not ((bUW * 2931 + bUX * 1910 + bUW * bUX) % 16777213 == 10111030) then
        bUU = bUR_3
    end
    if bUU or bUR == "Waiting" or bUR == "Quest" then
        return bPQ
    end
    return fns.dwb_93
end
function fns.fn560(a4j)
    if a4j then
        fns.dwb_74("AutoBossHunt")
        bSs.HuntStatus = "Starting"
        bSg.HuntController.running = true
        fns.dwb_53(bSg.HuntController, bSg.HuntController.step)
    else
        bSg.HuntController.running = false
        fns.dwb_72(bSg.HuntController)
        bSs.HuntStatus = "Idle"
    end
end
function fns.fn561(jC)
    local b_z_1
    local b_y_1
    local b_w = fns.dwb_4()
    local b_w_1 = b_w and b_w.Position or Vector3.zero
    b_y_1, b_z_1 = nil, nil
    for i, v in ipairs(fns.dwb_44()) do
        local b_w_2 = not jC or jC(v)
        if b_w_2 then
            local b_w_3 = (v.model:GetPivot().Position - b_w_1).Magnitude
            if not b_z_1 or b_w_3 < b_z_1 then
                b_y_1, b_z_1 = v, b_w_3
            end
        end
    end
    return b_y_1, b_z_1
end
function fns.fn580()
    local c71_1
    local Humanoids = bSf:FindFirstChild("Humanoids")
    local c70 = Humanoids and Humanoids:FindFirstChild("Regions")
    local Name
    if not c70 then
        return
    end
    Name, c71_1 = nil, nil
    for i, child in ipairs(c70:GetChildren()) do
        local c7__2 = child:FindFirstChild("ActiveNpcs")
        local c72_1 = c7__2 and c7__2:FindFirstChild("Muzan")
        if c72_1 then
            Name = child.Name
            for i, child in ipairs(c72_1:GetChildren()) do
                if child:IsA("Model") then
                    local c7__4 = child:FindFirstChild("HumanoidRootPart")
                    local c72_2 = c7__4 and c7__4.Position
                    local c7__5 = c72_2 or child:GetPivot().Position
                    c71_1 = c7__5
                    break
                end
            end
            break
        end
    end
    local c7__6 = not c71_1
    if c7__6 ~= false then
        c7__6 = Name
    end
    if c7__6 then
        c71_1 = bTE.zonePoints()[Name]
    end
    local c7__7 = bSg.Alerts.fresh
    local c72_3 = Name or false
    local c7__8 = (c7__7("muzan", c72_3, Name ~= nil)) and Name
    if c7__8 then
        bSg.Alerts.push("Muzan is out in " .. Name, c71_1)
    end
end
function fns.fn595(a67)
    if a67 then
        fns.dwb_74("AutoBreathing")
        bSs.BreathStatus = "Starting"
        bSg.BreathController.running = true
        fns.dwb_53(bSg.BreathController, fns.dwb_55)
    else
        bSg.BreathController.running = false
        fns.dwb_72(bSg.BreathController)
        bSs.BreathStatus = "Idle"
    end
end
function fns.fn607(YS, YT)
    local ctu = bSg.TrainController.anchor(YS)
    if not ctu then
        return
    end
    local max = math.max
    local ctw = (tonumber(YS.MaxActivationDistance))
    local ctC = if ctw then 1 else 0
    local ctA = 1067 * ctC + 1414 * (1 - ctC)
    local ctB = 3391 * ctC + 3966 * (1 - ctC)
    if not ((ctA * 2500 + ctB * 825 + ctA * ctB) % 16777213 == 9083272) then
        ctw = 10
    end
    local cty = max(ctw - 3, 4)
    local ctv_1 = fns.dwb_4()
    if ctv_1 and (ctv_1.Position - ctu.Position).Magnitude <= cty then
        return
    end
    fns.dwb_111(ctu.Position + Vector3.new(0, 3, 0), 0.4, YT)
end
function fns.fn615(te)
    if fns.dwb_133.clanStep(te) then
        fns.dwb_133.lastClan = true
        return true
    end
    return false
end
function fns.fn617(Iz)
    if not bQR("BossHuntsRequest", { action = "Claim", id = Iz.id }) then
        return false
    end
    local chp = (bRD(function()
        local chn = bSg.HuntController.active() ~= nil or bSg.HuntController.stopped
        return chn
    end, 6)) and bSg.HuntController.active() ~= nil
    return chp
end
function fns.fn637(aB0)
    local cQZ = type(aB0) == "number" and aB0 == aB0 and math.abs(aB0) < math.huge
    return cQZ
end
function fns.fn640(pv)
    if fns.dwb_11.NEVER_CAST[pv] then
        return false
    elseif next(bQ4.skills) ~= nil then
        return bQ4.skills[pv] == true
    else
        return true
    end
end
function fns.fn662(a0Q, a0R)
    local c9G = fns.dwb_123.PriorityKeyFor(a0Q)
    if c9G then
        fns.dwb_142.move(c9G, a0R)
    end
    return fns.dwb_142.serialize()
end
function fns.fn664()
    local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
    local b2R = PlayerScripts and PlayerScripts:FindFirstChild("CU")
    local b2R_3, b2R_5, b2R_6
    local b2Q_1 = b2R
    if b2R then
        b2R = b2Q_1:FindFirstChild("Combat")
    end
    local b2Q_2 = b2R
    local b2R_1 = fns.dwb_99()
    local b2S = b2Q_2 ~= fns.dwb_147.source or b2R_1 ~= fns.dwb_147.character
    local b2S_1, b2S_2, b2S_3
    if b2S then
        fns.dwb_147.source, fns.dwb_147.character = b2Q_2, b2R_1
        fns.dwb_147.punch, fns.dwb_147.resolveAt = nil, 0
    end
    local b2R_2 = fns.dwb_147.punch or os.clock() < fns.dwb_147.resolveAt
    if b2R_2 then
        return fns.dwb_147.punch
    end
    fns.dwb_147.resolveAt = os.clock() + 5
    if not b2Q_2 then
        return nil
    end
    if fns.dwb_147.getEnvironment then
        b2R_3, b2S_1 = pcall(fns.dwb_147.getEnvironment, b2Q_2)
        local b2T_1 = b2R_3 and type(b2S_1) == "table" and bQG(b2S_1.punch)
        if b2T_1 then
            fns.dwb_147.punch = b2S_1.punch
        end
    end
    if not fns.dwb_147.punch and fns.dwb_147.findFunctions and fns.dwb_147.getFunctionEnvironment then
        b2R_5, b2S_2 = pcall(fns.dwb_147.findFunctions, "function", { Name = "punch", IgnoreExecutor = true }, false)
        local b2T_2 = b2R_5 and type(b2S_2) == "table"
        if b2T_2 then
            for i, v in ipairs(b2S_2) do
                b2R_6, b2S_3 = pcall(fns.dwb_147.getFunctionEnvironment, v)
                local b2T_3 = b2R_6 and type(b2S_3) == "table" and b2S_3.script == b2Q_2 and b2S_3.punch == v
                if b2T_3 then
                    fns.dwb_147.punch = v
                    break
                end
            end
        end
    end
    return fns.dwb_147.punch
end
function fns.fn671(KG, KH)
    local ciF = type(KG) ~= "table"
    local ciK = if ciF then 1 else 0
    local ciI = 1475 * ciK + 595 * (1 - ciK)
    local ciJ = 1680 * ciK + 768 * (1 - ciK)
    if not ((ciI * 2960 + ciJ * 3227 + ciI * ciJ) % 16777213 == 12265360) then
        ciF = #KG == 0
    end
    if ciF then
        return false
    end
    local DemonController = bSg.DemonController
    DemonController.cursor = (bSg.DemonController.cursor or 0) % #KG + 1
    local ciF_2 = KG[bSg.DemonController.cursor]
    if typeof(ciF_2) ~= "Vector3" then
        return false
    end
    return fns.dwb_111(ciF_2 + Vector3.new(0, 4, 0), KH, fns.dwb_122(bSg.DemonController))
end
function fns.fn675()
    task.delay(0, function()
        local cMs = bSg.SellController.names()
        if #cMs > 0 then
            bSs.SellNameCache = cMs
        end
    end)
end
function fns.fn691()
    if not bSg.Alerts.enabled() then
        return
    end
    local on = bSg.Alerts.on
    local c8Z_1
    local c8_ = on.boss and bQi(bSg.Alerts.bosses) > 0
    local c8__1
    local c80 = {
        { c8_, bSg.Alerts.bossWatch },
        { on.muzan, bSg.Alerts.muzanWatch },
        { on.market, bSg.Alerts.marketWatch },
        { on.tailor, bSg.Alerts.tailorWatch },
        { on.hunt, bSg.Alerts.huntWatch }
    }
    for i, v in ipairs(c80) do
        if v[1] then
            c8Z_1, c8__1 = pcall(v[2])
            if not c8Z_1 then
                warn("[Ouroboros] notification error: " .. tostring(c8__1))
            end
        end
    end
end
function fns.fn701(akP, akQ)
    local cCI_1
    local cCH_1
    local cCG_1
    cCG_1, cCH_1, cCI_1 = {}, nil, nil
    local cCJ = akQ and akQ:FindFirstChild("Tasks")
    if not cCJ then
        return cCG_1, cCH_1, cCI_1
    end
    local cCJ_1 = type(akP.TaskSpecs) == "table" and akP.TaskSpecs
    local cCM = cCJ_1 or {}
    for i, child in ipairs(cCJ:GetChildren()) do
        local Value = child:FindFirstChild("Value")
        local Max = child:FindFirstChild("Max")
        local cCM_1 = cCM[child.Name]
        local cCN = Value and Max and type(cCM_1) == "table"
        if cCN then
            local cCN_1 = Max.Value - Value.Value
            local cCO = cCM_1.Type == "Deposit" and typeof(cCM_1.Position) == "Vector3"
            if cCO then
                cCI_1 = cCI_1 or cCM_1.Position
                local cCO_2 = cCN_1 > 0 and type(cCM_1.RequiredItem) == "string"
                if cCO_2 then
                    cCG_1[#cCG_1 + 1] = { name = child.Name, item = cCM_1.RequiredItem, short = cCN_1, target = Max.Value, value = Value }
                end
            else
                if cCM_1.Type == "Deliver" and cCN_1 > 0 then
                    cCH_1 = { name = child.Name, npc = cCM_1.TargetNpc or fns.dwb_11.ANGLER_NPC }
                end
            end
        end
    end
    return cCG_1, cCH_1, cCI_1
end
function fns.fn707(f7, f8)
    local bYd = f8 or f7.Position
    local bYd_1 = fns.dwb_1(f7)
    local bYf = bYd_1.Position - f7.Position
    if bYf.Magnitude > fns.dwb_11.LOOT_POSE_MAX then
        bYf = bYf.Unit * fns.dwb_11.LOOT_POSE_MAX
    end
    return CFrame.new(bYd + bYf) * bYd_1.Rotation
end
function fns.fn725(l8)
    local b1E = fns.dwb_70(l8)
    local b1F = b1E and b1E:FindFirstChild("Id")
    local b1E_1 = b1F
    if b1F then
        b1F = tonumber(b1E_1.Value)
    end
    return b1F or nil
end
function fns.fn728()
    return bTE.Esp.CATEGORIES
end
function fns.fn752(a9U)
    bSg.FishController.quest = a9U == true
    bSs.AnglerStatus = a9U and "Starting" or "Idle"
end
function fns.fn757()
    if bQS.LootFlushing then
        return
    end
    bQS.LootFlushing = true
    task.delay(2, function()
        bQS.LootFlushing = false
        for k, v in pairs(bQS.LootPending) do
            while #v > 0 do
                local cJ_ = {}
                local cJ0 = math.min(10, #v)
                local cKa = 1
                while cKa <= cJ0 do
                    table.insert(cJ_, table.remove(v, 1))
                    cKa += 1
                end
                bQS.Queued(k, { content = bQS.Mention(), embeds = cJ_ })
            end
            bQS.LootPending[k] = nil
        end
    end)
end
function fns.fn776()
    local b8L = fns.dwb_36()
    local b8M = {}
    if not b8L then
        return b8M
    end
    for i, child in ipairs(b8L:GetChildren()) do
        local QuestString = child:FindFirstChild("QuestString")
        local b8N = #b8M + 1
        b8M[b8N] = { instance = child, questString = QuestString and QuestString.Value or child.Name }
    end
    return b8M
end
function fns.fn777()
    fns.dwb_142.settling = false
    if fns.dwb_142.active then
        return
    end
    for i, v in ipairs(fns.dwb_142.order) do
        local c9X = bQE[v]
        if c9X and c9X.controller.running then
            fns.dwb_74(v)
            return
        end
    end
end
function fns.fn785(Qn)
    local cnb = fns.dwb_24.opened[Qn] == true or Qn:GetAttribute("IsOpen") == true or Qn:GetAttribute("ChestState") == "Opened"
    if not cnb then
        local denied = fns.dwb_24.denied
        local cnd = (Qn:GetAttribute("ChestGuid")) or Qn
        cnb = denied[cnd] == true
    end
    return cnb
end
function fns.fn805(aVt, aVu)
    bSs.OpenStatus = "Collecting " .. aVu .. " loot"
    bRD(function()
        return #bS5() > 0
    end, 5, aVt)
    local c4r = 0
    while true do
        local c4s = not aVt() and c4r < 2
        if c4s then
            local c4s_1 = bS5()
            if #c4s_1 == 0 then
                c4r += 1
                task.wait(0.5)
            else
                c4r = 0
                for i, v in ipairs(c4s_1) do
                    if aVt() then
                        break
                    end
                    fns.bTv(v.part, aVt)
                end
            end
            continue
        end
        break
    end
    if not aVt() then
        bSs.OpenStatus = "Opened " .. aVu
    end
end
function fns.fn810()
    if not fns.dwb_118() then
        return
    end
    local chJ = bSg.LootController.running and bSg.LootController.pending
    local chJ_4
    local chK = chJ
    local chK_2
    if not chK then
        chK = bSg.ChestController.running and bSg.ChestController.pending
    end
    if chK then
        chK = bSg.HuntController.lootUntil
    end
    if chK then
        chK = os.clock() < bSg.HuntController.lootUntil
    end
    if chK then
        fns.dwb_142.uncommit("AutoBossHunt")
        bSs.HuntStatus = "Collecting drops"
        return
    end
    local chJ_2 = bSg.ChestController.running and bSg.ChestController.pending and not bSg.HuntController.active()
    if chJ_2 then
        local chJ_3 = os.clock()
        local HuntController = bSg.HuntController
        local chL = bSg.HuntController.cacheFrom
        local chS = if chL then 1 else 0
        local chQ = 3932 * chS + 557 * (1 - chS)
        local chR = 1888 * chS + 1320 * (1 - chS)
        if not ((chQ * 3035 + chR * 3748 + chQ * chR) % 16777213 == 9656247) then
            chL = chJ_3
        end
        HuntController.cacheFrom = chL
        if chJ_3 - bSg.HuntController.cacheFrom < fns.dwb_11.HUNT_CACHE_CAP then
            fns.dwb_142.uncommit("AutoBossHunt")
            bSs.HuntStatus = "Waiting for the sealed cache"
            return
        end
    else
        bSg.HuntController.cacheFrom = nil
    end
    if bSg.HuntController.active() then
        fns.dwb_142.commit("AutoBossHunt")
    else
        fns.dwb_142.uncommit("AutoBossHunt")
    end
    if not bSU("AutoBossHunt") then
        return
    end
    chJ_4, chK_2 = pcall(function()
        local chw_1
        local chv_1
        local chu_2
        local cht_3
        local chs_1, chs_6
        local chr_1, chr_5, chr_7
        if not fns.dwb_17(20) then
            bSs.HuntStatus = "Waiting for character"
            return
        end
        if bSg.HuntController.stopped then
            return
        end
        chs_1, chr_1 = bSg.HuntController.active()
        if chs_1 then
            local cht_1 = bSg.HuntController.target(chr_1)
            if not cht_1 then
                fns.dwb_142.uncommit("AutoBossHunt")
                bSs.HuntStatus = "Cannot read " .. fns.dwb_132(chs_1)
                return
            end
            local chr_2 = fns.dwb_122(bSg.HuntController)
            local chs_2 = (fns.dwb_31(cht_1, "HuntStatus", 180, bSg.HuntController)) and not chr_2() and fns.dwb_147.controllerValid(bSg.HuntController)
            if chs_2 then
                bSg.HuntController.lootUntil = bSg.LootController.afterKill()
                bRD(function()
                    return bSg.HuntController.active() == nil
                end, 4, chr_2)
                local chs_3 = (chr_2()) or not fns.dwb_147.controllerValid(bSg.HuntController)
                if chs_3 then
                    return
                end
                local chr_3 = not bSg.HuntController.stopped and bSg.HuntController.active() == nil
                if chr_5 then
                    bSs.Hunts = bSs.Hunts + 1
                    bSs.Quests = bSs.Quests + 1
                    bSs.HuntStatus = "Finished " .. cht_1
                end
                return
            end
            if not bSg.HuntController.yield and not bSg.HuntController.stopped then
                fns.dwb_142.uncommit("AutoBossHunt")
            end
            chr_5 = not bSg.HuntController.stopped and bSg.HuntController.active() == nil
            if chr_5 then
                bSs.Hunts = bSs.Hunts + 1
                bSs.Quests = bSs.Quests + 1
                bSs.HuntStatus = "Finished " .. cht_1
            end
            return
        end
        local chr_6 = bS4()
        if chr_6 then
            if not bSg.HuntController.dropForeign then
                bSs.HuntStatus = "Quest slot busy"
                return
            end
            local chs_4 = fns.dwb_140(chr_6)
            bSs.HuntStatus = "Clearing quest slot"
            local cht_2 = type(chs_4) == "table" and typeof(chs_4.QuestInstance) == "Instance"
            local chs_5 = cht_2 and chs_4.QuestInstance.Name or chr_6
            bQ2(chs_5)
            return
        end
        cht_3, chr_7, chs_6 = nil, nil, nil
        for i, v in ipairs(bSg.HuntController.offers()) do
            if bSg.HuntController.wanted(v) then
                chu_2, chv_1, chw_1 = bSg.HuntController.canClaim(v.quest)
                if chu_2 then
                    local chu_3 = bSg.HuntController.reward(v.quest)
                    if not cht_3 or chu_3 > chr_7 or chu_3 == chr_7 and v.expires < cht_3.expires then
                        cht_3, chr_7 = v, chu_3
                    end
                else
                    local chu_4 = chs_6 or bSg.HuntController.denial(chv_1, chw_1)
                    chs_6 = chu_4
                end
            end
        end
        if not cht_3 then
            bSs.HuntStatus = chs_6 or "No hunt to take"
            return
        end
        bSs.HuntStatus = "Claiming " .. cht_3.boss
        if not bSg.HuntController.claim(cht_3) then
            bSs.HuntStatus = bSg.HuntController.stopped and "Idle" or "Cannot claim " .. cht_3.boss
        end
    end)
    bSu("AutoBossHunt")
    if not chJ_4 then
        warn("[Ouroboros] boss hunt step: " .. tostring(chK_2))
    end
end
function fns.fn835(bdq)
    bSg.Alerts.bosses = fns.dwb_90(bdq)
    bSg.Alerts.sync()
end
function fns.fn862(aw2)
    local SellController = bSg.SellController
    local cNf = (tonumber(aw2)) or 20
    SellController.period = math.clamp(cNf, 5, 300)
    bSg.SellController.rearm()
end
function fns.fn872(aMP, aMQ)
    if typeof(aMQ) == "Color3" then
        fns.dwb_113[aMP] = aMQ
    end
end
function fns.fn881(aqX, aqY)
    local cHy_1
    local cHx_1
    local cHw_1, cHw_2
    local cHv = bQS.Requester()
    if not cHv then
        bSs.WebhookFailed = bSs.WebhookFailed + 1
        return false, "This executor has no HTTP request function"
    elseif not bQS.ValidUrl(aqX) then
        bSs.WebhookFailed = bSs.WebhookFailed + 1
        return false, "Enter a valid Discord webhook URL"
    else
        cHw_1, cHx_1 = pcall(fns.dwb_51.HttpService.JSONEncode, fns.dwb_51.HttpService, aqY)
        if not cHw_1 then
            bSs.WebhookFailed = bSs.WebhookFailed + 1
            return false, "Could not encode the message"
        end
        cHw_2, cHy_1 = pcall(cHv, { Url = aqX, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = cHx_1 })
        if not cHw_2 then
            bSs.WebhookFailed = bSs.WebhookFailed + 1
            return false, tostring(cHy_1):sub(1, 60)
        end
        local cHv_1 = type(cHy_1) == "table" and tonumber(cHy_1.StatusCode)
        local cHv_2 = cHv_1 or nil
        if cHv_2 == 200 or cHv_2 == 204 then
            bSs.WebhookSent = bSs.WebhookSent + 1
            return true
        end
        bSs.WebhookFailed = bSs.WebhookFailed + 1
        local cHw_5 = cHv_2
        local cHC = if cHw_5 then 1 else 0
        local cHA = 1545 * cHC + 3155 * (1 - cHC)
        local cHB = 1201 * cHC + 2633 * (1 - cHC)
        if not ((cHA * 1267 + cHB * 1494 + cHA * cHB) % 16777213 == 5607354) then
            cHw_5 = "nothing"
        end
        return false, "Discord replied " .. tostring(cHw_5)
    end
end
function fns.fn904(aMM, aMN)
    if aMM == "range" then
        local cYV = (tonumber(aMN)) or 0
        bTi.range = math.clamp(cYV, 0, 20000)
    else
        bTi[aMM] = aMN == true
    end
end
function fns.fn906(Bm)
    if Bm and fns.dwb_142.active then
        local ccy_1 = fns.dwb_142.commitments[Bm]
        if ccy_1 then
            ccy_1.at = os.clock()
        else
            fns.dwb_142.commitments[Bm] = { at = os.clock() }
        end
    end
end
function fns.fn915()
    local bWq = (tonumber(fns.dwb_120({ "SkillPoints" }, 0))) or 0
    return bWq
end
function fns.fn941(qu)
    local b4K = not fns.dwb_133.owns(qu) or qu.cancelled or not fns.dwb_118()
    if b4K then
        return false
    end
    fns.dwb_26.SkillRunner.HeldSkill = qu.name
    local SkillRunner = fns.dwb_26.SkillRunner
    SkillRunner.CurrentMax = qu.hold > 0 and qu.hold or nil
    return true
end
function fns.fn960(a9X)
    if a9X then
        bSs.CrystalStatus = "Starting"
        bSg.CrystalController.running = true
        fns.dwb_53(bSg.CrystalController, bSg.CrystalController.step)
    else
        bSg.CrystalController.running = false
        fns.dwb_72(bSg.CrystalController)
        bSs.CrystalStatus = "Idle"
    end
end
function fns.fn967(kl)
    local b0b = fns.dwb_92.regions()
    local b0c = type(b0b) ~= "table" or type(b0b.NpcSpawns) ~= "table"
    if b0c then
        return nil
    end
    local b0c_1 = b0b.NpcSpawns[kl]
    if typeof(b0c_1) == "Vector3" then
        return b0c_1
    end
    return nil
end
function fns.fn979()
    local dcx_1
    local dcw_1
    dcx_1, dcw_1 = {}, {}
    for i, v in ipairs({ fns.dwb_123.CardNames(), fns.dwb_123.EventNames() }) do
        for i, v in ipairs(v) do
            if not dcw_1[v] then
                dcw_1[v] = true
                dcx_1[#dcx_1 + 1] = v
            end
        end
    end
    table.sort(dcx_1)
    return dcx_1
end
function fns.fn993(bdl, bdm)
    bSg.Alerts.on[bdl] = bdm == true
    if bdm ~= true then
        for k in pairs(bSg.Alerts.marks) do
            local djk = k == bdl or k:sub(1, #bdl + 1) == bdl .. ":"
            if djk then
                bSg.Alerts.marks[k] = nil
            end
        end
    end
    bSg.Alerts.sync()
end
function fns.fn1003(K9)
    local cjb = bSg.DemonController.route()
    for i, v in ipairs(cjb) do
        if (v - K9).Magnitude < 60 then
            return
        end
    end
    cjb[#cjb + 1] = K9
end
function fns.fn1015(asv)
    local cIV = {}
    for i, v in ipairs(bQS.Catalog[asv.Label]) do
        local cIW = asv.Tally[v.key] or 0
        if asv.Events[v.key] and cIW > 0 then
            table.insert(cIV, ("› %s  **%s**"):format(v.label, bQS.Commas(cIW)))
        end
    end
    if #cIV == 0 then
        return { name = "Activity", value = "› Nothing since the last report", inline = false }
    end
    return { name = "Activity", value = table.concat(cIV, "\n"), inline = false }
end
function fns.fn1022(ala)
    local cC9_1, cC9_2
    local cC8_1, cC8_2
    local cC7_1, cC7_2
    local cC6_1
    local cC5_1, cC5_3
    local cC4_1, cC4_5
    cC6_1, cC4_1, cC5_1 = bSg.FishController.anglerQuest()
    if not cC6_1 then
        bSs.AnglerStatus = "No board at this level"
        return false
    elseif not cC5_1 then
        cC7_1, cC8_1, cC9_1 = bSg.HuntController.canClaim(cC6_1)
        if not cC7_1 then
            if cC8_1 == true then
                bSs.AnglerStatus = string.format("Quest cooldown %ds", math.ceil(fns.dwb_2()))
            elseif cC9_1 ~= nil then
                bSs.AnglerStatus = "Finish " .. tostring(cC9_1) .. " first"
            else
                bSs.AnglerStatus = "Runo has nothing to give"
            end
            return false
        end
        bSs.AnglerStatus = "Taking " .. fns.dwb_132(cC6_1)
        if not bSh(cC6_1, bSg.FishController, "AnglerStatus") then
            bSs.AnglerStatus = "Cannot reach " .. fns.dwb_11.ANGLER_NPC
        end
        return true
    else
        cC8_2, cC9_2, cC7_2 = bSg.FishController.anglerRows(cC4_1, cC5_1)
        if #cC8_2 > 0 then
            for i, v in ipairs(cC8_2) do
                local cC4_2 = fns.dwb_52(v.item)
                if cC4_2 < v.short then
                    bSs.AnglerStatus = string.format("Fishing for %s %d/%d", v.item, cC4_2, v.short)
                    return false
                end
            end
            if not cC7_2 then
                bSs.AnglerStatus = "This board has no crate"
                return false
            end
            bSs.AnglerStatus = "Loading the crate"
            local cC4_3 = not fns.dwb_111(cC7_2 + Vector3.new(0, 3, 0), 0.5, ala) or ala()
            if cC4_3 then
                return true
            end
            for i, v in ipairs(cC8_2) do
                local cC4_4 = 0
                while true do
                    if v.value.Value < v.target and cC4_4 < v.short + 4 then
                        if ala() then
                            return true
                        end
                        bQR("QuestProgress", cC6_1, v.name)
                        cC4_4 += 1
                        task.wait(fns.dwb_11.ANGLER_DEPOSIT_GAP)
                        continue
                    end
                    break
                end
            end
            bSs.AnglerStatus = "Crated the catch"
            return true
        elseif cC9_2 then
            cC4_5, cC5_3 = bQe.reachNpc(cC9_2.npc, ala, "AnglerStatus")
            if not cC4_5 then
                bSs.AnglerStatus = "Cannot reach " .. cC9_2.npc
                return true
            end
            bR5(cC4_5)
            bQe.closeOnNpc(cC5_3, ala, cC4_5, 1)
            if ala() then
                bQR("NpcTalking", "Ended")
                return true
            end
            bQR("QuestProgress", cC6_1, cC9_2.name)
            task.wait(1)
            bQR("NpcTalking", "Ended")
            bSs.Quests = bSs.Quests + 1
            bSs.AnglerStatus = "Handed in " .. fns.dwb_132(cC6_1)
            return true
        else
            bSs.AnglerStatus = "Waiting on the board"
            return false
        end
    end
end
function fns.fn1038(aqS)
    if type(aqS) ~= "string" then
        return false
    end
    return string.match(aqS, "^https://[%w%-%.]*discord[%w%-%.]*%.com/api/webhooks/%d+/[%w%-_]+$") ~= nil
end
function fns.fn1050(kd)
    local b__ = fns.dwb_11.BOSS_SUMMONS[kd]
    if not b__ then
        return nil
    end
    local b_0 = bSf
    for i, v in ipairs(b__.path) do
        b_0 = b_0:FindFirstChild(v)
        if not b_0 then
            return nil
        end
    end
    return b_0
end
function fns.fn1073(a7u)
    local dd4 = type(a7u) == "string" and fns.dwb_11.POSE_MODES[a7u]
    if dd4 then
        bQ4.positionType = a7u
    end
end
function fns.fn1088()
    local ck9 = fns.dwb_9("Muzan Quest")
    if not ck9 then
        bSs.DemonStatus = "Waiting for the quest to load"
        task.wait(1)
        return
    end
    for i, child in ipairs(ck9:GetChildren()) do
        local Value = child:FindFirstChild("Value")
        local Max = child:FindFirstChild("Max")
        local clb = Value and Max and Value.Value < Max.Value and bS2(child)
        if clb then
            if child.Name:find("Higoshima") then
                bSg.DemonController.higoshima(Value, Max)
            else
                bSg.DemonController.lilies(Value, Max)
            end
            return
        end
    end
    bSs.DemonStatus = "Waiting for Muzan's Blood"
    task.wait(1)
end
function fns.fn1153(bgP)
    local ResetController = bSg.ResetController
    local dlx = (tonumber(bgP)) or 0
    ResetController.target = math.max(0, math.floor(dlx))
end
function fns.fn1157(aBF)
    fns.dwb_10.on = aBF == true
    if fns.dwb_10.connection then
        fns.dwb_10.connection:Disconnect()
        fns.dwb_10.connection = nil
    end
    if not fns.dwb_10.on then
        return
    end
    fns.dwb_10.connection = fns.UserGameSettings:GetPropertyChangedSignal("RotationType"):Connect(function()
        local cQS = fns.dwb_10.on and fns.dwb_118() and fns.dwb_8()
        if cQS then
            fns.dwb_64()
        end
    end)
    if fns.dwb_8() then
        fns.dwb_64()
    end
end
function fns.fn1170(pU)
    if pU.clan then
        return bQ4.autoClanSkills
    end
    return bQ4.autoSkills
end
function fns.fn1175()
    return fns.dwb_92.module("DialogueUtility module", { "CAM", "Client", "Components", "Client", "DialogueComponent", "DialogueUtility" })
end
function fns.fn1203()
    return fns.dwb_92.module("QueuWatcher", { "MenuComponents", "Misc", "QueuWatcher" })
end
function fns.fn1205(adq, adr, ads, adt)
    adt = adt or "BreathStatus"
    local cwZ_1 = fns.dwb_140(adq)
    local cw_ = type(cwZ_1) == "table" and cwZ_1.TaskSpecs
    local cw__1 = cw_ or nil
    local cwZ_3 = type(cw__1) == "table" and cw__1[adr]
    local cw__2 = cwZ_3 or nil
    local cwZ_4 = cw__2
    if cw__2 then
        cw__2 = cwZ_4.Positions
    end
    local cwZ_5 = cw__2
    local cw__3 = ads or 0
    if type(cwZ_5) == "table" then
        local cw__4 = math.max(cw__3, #cwZ_5)
        local cw7 = 1
        while cw7 <= cw__4 do
            local cw8 = cw7
            if not fns.dwb_118() then
                return false
            end
            local cw__5 = cwZ_5[cw8]
            if typeof(cw__5) == "Vector3" then
                bSs[adt] = string.format("%s %d", adr, cw8)
                fns.dwb_111(cw__5 + Vector3.new(0, 3, 0), 0.4)
            end
            bQR("QuestProgress", adq, adr, cw8)
            task.wait(0.6)
            cw7 += 1
        end
        return true
    end
    local cwZ_6 = math.max(cw__3, 1)
    local cxf = 1
    while true do
        if not (cxf <= cwZ_6) then
            return true
        end
        local cxg = cxf
        if not fns.dwb_118() then
            break
        end
        bQR("QuestProgress", adq, adr, cxg)
        task.wait(0.6)
        cxf += 1
    end
    return false
end
function fns.fn1241()
    local cP2_1
    local cP1_1
    if os.clock() < fns.dwb_39 then
        return
    end
    fns.dwb_39 = os.clock() + 5
    if not bQG(getgc) then
        fns.dwb_71("getgc")
        return
    end
    cP1_1, cP2_1 = pcall(getgc, true)
    local cP3 = not cP1_1
    local cP8 = if cP3 then 1 else 0
    local cP6 = 2131 * cP8 + 3756 * (1 - cP8)
    local cP7 = 3666 * cP8 + 2347 * (1 - cP8)
    if not ((cP6 * 3211 + cP7 * 3860 + cP6 * cP7) % 16777213 == 12028434) then
        cP3 = type(cP2_1) ~= "table"
    end
    if cP3 then
        return
    end
    for k, v in pairs(cP2_1) do
        if type(v) == "table" then
            local cP1_2 = rawget(v, "CurrentStamina")
            local cP2_2 = rawget(v, "Breath")
            local cP3_1 = rawget(v, "StaminaDrain")
            local cP4 = type(cP1_2) == "number" and type(rawget(v, "MaxClimbTime")) == "number"
            if cP4 then
                bQT(bQ5.climb, v)
            else
                local cP1_3 = type(cP2_2) == "number" and type(rawget(v, "Drowning")) == "boolean"
                if cP1_3 then
                    bQT(bQ5.breath, v)
                else
                    local cP1_4 = type(cP3_1) == "number" and rawget(v, "Anim") ~= nil and type(rawget(v, "Speed")) == "number"
                    if cP1_4 then
                        bQT(bQ5.horse, v)
                    end
                end
            end
        end
    end
end
function fns.fn1263(bcS)
    bTE.tweaks.noSlowdown = bcS == true
    bTE.applySlowdown()
end
function fns.fn1272()
    local b05_1
    local b03
    local b04 = type(fns.dwb_26.CharacterInfo) == "table" and bQG(fns.dwb_26.CharacterInfo.Get_equipped_tool)
    local b04_1
    if b04 then
        b04_1, b05_1 = fns.dwb_144(fns.dwb_26.CharacterInfo.Get_equipped_tool, LocalPlayer)
        local b06_1 = b04_1 and typeof(b05_1) == "Instance"
        if b06_1 then
            b03 = b05_1
        end
    end
    local b04_2 = b03 and type(fns.dwb_26.Items) == "table" and fns.dwb_26.Items[b03.Name]
    local b05_2 = b04_2
    if b04_2 then
        b04_2 = b05_2.CombatPreset
    end
    if b04_2 then
        b04_2 = b05_2.CombatPreset ~= "Combat"
    end
    if b04_2 then
        return b03.Name
    end
    local Assets = fns.dwb_87:FindFirstChild("Assets")
    local b06_2 = Assets and Assets:FindFirstChild("Animations")
    if fns.dwb_26.CurPower and b06_2 then
        for i, v in ipairs(string.split(tostring(fns.dwb_26.CurPower.Value), ",")) do
            local b06_4 = v ~= "" and b06_2:FindFirstChild(v .. "_Combat_Anims")
            if b06_4 then
                return v
            end
        end
    end
    local b06_5 = b03
    if b06_5 then
        local b05_3 = b05_2 and b05_2.HasCombat
        if not b05_3 then
            local b07_1 = b06_2 and b06_2:FindFirstChild(b03.Name .. "_Combat_Anims")
            b05_3 = b07_1
        end
        b06_5 = b05_3
    end
    if b06_5 then
        return b03.Name
    end
    return nil
end
function fns.fn1281(tg)
    if fns.dwb_133.busy() then
        local entry = fns.dwb_123.SkillWork.entry
        fns.dwb_133.lastClan = entry ~= nil and entry.clan == true
        bQv(tg)
        return true
    end
    fns.dwb_133.lastClan = false
    if fns.dwb_147.skillState() then
        bQv(tg)
        if bQ4.autoSkills then
            bSs.AutoSkillStatus = "Waiting for the current skill"
        end
        if bQ4.autoClanSkills then
            bSs.ClanSkillStatus = "Waiting for the current skill"
        end
        return true
    end
    if not bQ4.autoSkills and not bQ4.autoClanSkills then
        return false
    end
    local b6K_3 = bQe.playerValues()
    local b6L_2 = b6K_3 and b6K_3:FindFirstChild("Blocking")
    if b6L_2 then
        if bQ4.autoSkills then
            bSs.AutoSkillStatus = "Holding off for auto parry"
        end
        if bQ4.autoClanSkills then
            bSs.ClanSkillStatus = "Holding off for auto parry"
        end
        return false
    elseif not bQ4.autoSkills then
        return fns.dwb_133.clanFallback(tg)
    else
        local b6K_4 = not fns.dwb_133.skills
        local b6T = if b6K_4 then 1 else 0
        local b6R = 3272 * b6T + 1785 * (1 - b6T)
        local b6S = 1271 * b6T + 3919 * (1 - b6T)
        if not ((b6R * 3968 + b6S * 2402 + b6R * b6S) % 16777213 == 3417737) then
            b6K_4 = os.clock() >= fns.dwb_133.skillsAt
        end
        if b6K_4 then
            fns.dwb_133.skills = fns.dwb_141()
            fns.dwb_133.skillsAt = os.clock() + 0.5
        end
        if #fns.dwb_133.skills == 0 then
            bSs.AutoSkillStatus = "No skills equipped"
            return fns.dwb_133.clanFallback(tg)
        end
        for i, v in ipairs(fns.dwb_133.skills) do
            local b6K_5 = (fns.dwb_114(v.name))
            if b6K_5 then
                local b6L_3 = os.clock()
                b6K_5 = b6L_3 >= (fns.dwb_133.cooldowns[v.name] or 0)
            end
            if b6K_5 then
                bQv(tg)
                if not fns.dwb_133.settled(tg) then
                    bSs.AutoSkillStatus = "Waiting for the combo to settle"
                    return true
                elseif fns.dwb_133.begin(v.name, fns.dwb_112(v.name, v.max), tg) then
                    return true
                else
                    fns.dwb_133.backoff(v.name, 1)
                    return false
                end
            end
        end
        bSs.AutoSkillStatus = fns.dwb_133.idleText(false, fns.dwb_133.count)
        return fns.dwb_133.clanFallback(tg)
    end
end
function fns.fn1303()
    local cLR = type(fns.dwb_26.Rarities) == "table" and fns.dwb_26.Rarities.Order
    local cLS = cLR or nil
    local cLR_1 = {}
    if type(cLS) == "table" then
        for i, v in ipairs(cLS) do
            cLR_1[#cLR_1 + 1] = v
        end
    end
    return cLR_1
end
function fns.fn1320(a3V)
    if a3V then
        fns.dwb_74("AutoLevel")
        bSs.LevelStatus = "Starting"
        bSg.LevelController.running = true
        fns.dwb_53(bSg.LevelController, bR4)
    else
        bSg.LevelController.running = false
        fns.dwb_72(bSg.LevelController)
        bSs.LevelStatus = "Idle"
    end
end
function fns.fn1330(bgH)
    local StallController = bSg.StallController
    local dlr = (tonumber(bgH)) or 180
    StallController.timeout = math.clamp(math.floor(dlr), 30, 900)
end
function fns.fn1341()
    if not SchematicRunner.running then
        bSs.SchematicStatus = "Idle"
        return false
    end
    SchematicRunner.cancel = SchematicRunner.cancel + 1
    SchematicRunner.running = false
    bSs.SchematicStatus = "Stopped"
    return true
end
function fns.fn1346()
    local Player_Service = fns.dwb_87:FindFirstChild("Player_Service")
    local bU2 = Player_Service and Player_Service:FindFirstChild("Values")
    local bU1_1 = bU2
    if bU2 then
        bU2 = bU1_1:FindFirstChild(LocalPlayer.Name)
    end
    return bU2 or nil
end
function fns.fn1350(a0W)
    fns.dwb_142.preempt = a0W ~= false
end
function fns.fn1369(atf)
    table.clear(atf.Tally)
    table.clear(atf.Items)
    table.clear(atf.Cards)
end
function fns.fn1381(a5X)
    local CardController = bSg.CardController
    local dc8 = (tonumber(a5X)) or 0
    CardController.healBelow = math.clamp(dc8, 0, 100)
end
function fns.fn1388()
    local cib_1
    local ch9 = fns.dwb_92.module("DayAndNightHandler module", { "CAM", "Global", "DayAndNightHandler" })
    local cia = type(ch9) ~= "table" or not bQG(ch9.IsNight)
    local cia_1
    if cia then
        return true
    end
    cia_1, cib_1 = fns.dwb_144(ch9.IsNight)
    return not cia_1 or cib_1 ~= false
end
function fns.fn1402()
    local c9h = {}
    for i, v in ipairs(fns.dwb_142.order) do
        c9h[i] = fns.dwb_142.label(v)
    end
    return c9h
end
function fns.fn1411(bfX)
    if bfX then
        bSs.SoulStatus = "Waiting for souls"
        bSg.SoulController.running = true
        fns.dwb_53(bSg.SoulController, fns.dwb_143)
    else
        bSg.SoulController.running = false
        fns.dwb_72(bSg.SoulController)
        bSs.SoulStatus = "Idle"
    end
end
function fns.fn1425()
    task.delay(0, function()
        local djJ_1
        local djI_1
        djI_1, djJ_1 = bTE.muzanPoint()
        if not djI_1 then
            bSs.TeleportStatus = "Cannot find Muzan"
            return
        end
        bSs.TeleportStatus = djJ_1 and "Travelling to Muzan" or "Travelling to Muzan's lair"
        local djK_1 = fns.dwb_111(djI_1 + Vector3.new(0, 5, 0), 0.2)
        if not djK_1 then
            bSs.TeleportStatus = "Stopped short of Muzan"
        elseif djJ_1 then
            bSs.TeleportStatus = "Arrived at Muzan"
        else
            bSs.TeleportStatus = "Muzan is not out, waiting at the lair"
        end
    end)
end
function fns.fn1426(a5S)
    bSg.CardController.blocked = fns.dwb_90(a5S)
end
function fns.fn1438()
    return table.clone(fns.dwb_92.module("Rarities module", { "CAM", "Global", "Rarities" }).Order)
end
function fns.fn1452()
    local RespawnController = bSg.RespawnController
    if RespawnController.connection then
        RespawnController.connection:Disconnect()
        RespawnController.connection = nil
    end
end
function fns.fn1460()
    task.delay(0, function()
        local ddo = type(fns.dwb_26.Quests) ~= "table" or type(fns.dwb_26.Quests.Holder) ~= "table"
        if ddo then
            return
        end
        local ddo_1 = {}
        for k, v in pairs(fns.dwb_26.Quests.Holder) do
            local ddp = type(k) == "string" and type(v) == "table" and v.Category == "Combat" and v.OfferNpc and v.OfferNpc ~= false and fns.dwb_94(v)
            if ddp then
                ddo_1[#ddo_1 + 1] = k
            end
        end
        table.sort(ddo_1)
        if #ddo_1 > 0 then
            bSs.QuestChoiceCache = ddo_1
        end
    end)
end
function fns.fn1477(ap_)
    local cGD_1
    local cGC_1
    if bSg.RodController.finished() then
        bSg.RodController.pause("The " .. fns.dwb_11.ROD_PRIZE .. " is yours", 30)
        return
    end
    if fns.dwb_52(fns.dwb_11.ROD_LURE) <= 0 then
        bSg.RodController.raiseLure(ap_)
        return
    end
    if bSg.RodController.tollPaid() then
        bSg.RodController.raiseRod(ap_)
        return
    end
    cGD_1, cGC_1 = bSg.RodController.tollShort()
    if cGD_1 then
        bSg.RodController.fishToll(cGD_1, cGC_1, ap_)
        return
    end
    if not bSg.DemonController.night() then
        local cGC_2 = bSg.DemonController.phaseIn()
        local pause = bSg.RodController.pause
        local cGE = cGC_2 and string.format("Isao walks at night, %ds", math.ceil(cGC_2))
        local cGF = cGE or "Isao only walks at night"
        local cGE_1 = cGC_2 and math.min(cGC_2, 30)
        local cGC_3 = cGE_1 or fns.dwb_11.ROD_PAUSE
        pause(cGF, cGC_3)
        return
    end
    local cGC_4 = bSg.RodController.opening(fns.dwb_11.ROD_ISAO)
    if cGC_4 == "Isao_Silent" then
        bSg.RodController.pause("Isao has nothing to say -- check the " .. fns.dwb_11.ROD_LURE, 10)
        return
    end
    if cGC_4 == "Isao_Paid" then
        bSg.RodController.pause("The water has been paid", 5)
        return
    end
    if cGC_4 ~= fns.dwb_11.ROD_ISAO then
        bSg.RodController.pause("Isao wants the toll in hand", 10)
        return
    end
    bSs.RodStatus = "Paying the toll to " .. fns.dwb_11.ROD_ISAO
    if bSg.RodController.payToll(ap_) then
        bSs.RodStatus = "The water has been paid"
    elseif not ap_() then
        bSg.RodController.pause("Isao would not take the toll", 10)
    end
end
function fns.fn1492()
    fns.dwb_43.stats = {
        fired = 0,
        locked = 0,
        late = 0,
        missed = 0,
        cancelled = 0,
        perfect = 0,
        graded = 0,
        errors = 0,
        ambiguous = 0
    }
    table.clear(bTg.attempts)
    fns.dwb_43.points = nil
end
function fns.fn1513()
    return bSs.SkillChoiceCache
end
function fns.fn1533()
    local cEB = fns.dwb_82()
    local cEC = cEB and cEB:FindFirstChild("WorldEvents")
    local cEC_1 = cEC ~= nil and cEC:FindFirstChild(fns.dwb_11.ROD_TOLL_FLAG) ~= nil
    return cEC_1
end
function fns.fn1574(a63)
    local ChestController = bSg.ChestController
    local ddQ = (tonumber(a63)) or 3
    ChestController.hopScans = math.max(1, math.floor(ddQ))
end
function fns.fn1578(a5B)
    if a5B then
        bSs.CardStatus = "Watching for cards"
        bSg.CardController.running = true
        fns.dwb_53(bSg.CardController, fns.dwb_134.cards)
    else
        bSg.CardController.running = false
        fns.dwb_72(bSg.CardController)
        bSs.CardStatus = "Idle"
    end
end
function fns.fn1580()
    local bVO = os.clock() + fns.dwb_11.BOOT_TIMEOUT
    while true do
        local bVP = (fns.dwb_118()) and os.clock() < bVO
        if not bVP then
            return false
        end
        local CAM = fns.dwb_87:FindFirstChild("CAM")
        local Communication = fns.dwb_87:FindFirstChild("Communication")
        local bVR = CAM and CAM:FindFirstChild("Global") and CAM:FindFirstChild("Client") and Communication and Communication:FindFirstChild("ServerAndClient") and LocalPlayer:FindFirstChild("PlayerScripts") and LocalPlayer:FindFirstChild("PlayerGui")
        if bVR then
            break
        end
        task.wait(0.25)
    end
    return true
end
function fns.fn1585()
    return bSs.PotionCache
end
function fns.fn1598()
    bSs.PotionCache = bS1()
end
function fns.fn1611()
    return bSs.ClanSkillChoiceCache
end
function fns.fn1644(De)
    De.stopped = true
    De.yield = false
    De.startedAt = nil
    De.cancel = (De.cancel or 0) + 1
    De.generation = (De.generation or 0) + 1
    De.workerActive = false
    fns.dwb_142.done(De.priorityKey, true)
    fns.dwb_142.uncommit(De.priorityKey)
    if fns.dwb_147.session and fns.dwb_147.session.controller == De then
        fns.dwb_147.stop(fns.dwb_147.session)
    end
    if De.priorityKey and fns.dwb_142.holder == De.priorityKey then
        fns.dwb_130()
        fns.dwb_16()
        bSu(De.priorityKey, true)
    end
end
function fns.fn1652(fv)
    return fns.dwb_1(fv).Position
end
function fns.fn1659()
    local attr = bSf:GetAttribute("MinigameKey")
    local bU_ = type(attr) == "string" and attr
    return bU_ or nil
end
function fns.fn1703(awu, awv)
    local cMJ = fns.dwb_145("SellItems", awu)
    local cMK = type(cMJ) ~= "table" or next(cMJ) == nil
    if cMK then
        bSs.SellStatus = "Nothing was sold"
        return false
    end
    local cMK_1 = {}
    for k, v in pairs(cMJ) do
        cMK_1[#cMK_1 + 1] = string.format("%s %s", tostring(v), k)
    end
    table.sort(cMK_1)
    local format = string.format
    local cMM = awv == 1 and "" or "s"
    bSs.SellStatus = format("Sold %d item%s for %s", awv, cMM, table.concat(cMK_1, ", "))
    return true
end
function fns.fn1740()
    local cES_1
    local cER_1
    local cEQ = fns.dwb_4()
    if not cEQ then
        return nil
    end
    cES_1, cER_1 = nil, nil
    for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("SwimParts")) do
        if v:IsA("BasePart") then
            local cET = v.CFrame:PointToObjectSpace(cEQ.Position)
            local cEU = math.max(0, math.abs(cET.X) - v.Size.X / 2)
            local cEV = math.max(0, math.abs(cET.Z) - v.Size.Z / 2)
            local cET_1 = v.Position.Y + v.Size.Y / 2
            local Magnitude = Vector3.new(cEU, cEQ.Position.Y - cET_1, cEV).Magnitude
            if not cER_1 or Magnitude < cER_1 then
                cES_1, cER_1 = cET_1, Magnitude
            end
        end
    end
    return cES_1
end
function fns.fn1762(zG)
    local ca0 = if fns.dwb_145("RedeemCode", zG) == true then 1 else 0
    if ca0 == 1 then
        return true, false
    end
    for i, v in ipairs(fns.dwb_11.CODE_BACKOFF) do
        if not fns.dwb_118() then
            return false, false
        end
        if fns.dwb_79()[zG] then
            return true, false
        end
        bSs.CodeStatus = string.format("Cooling down %ds", v)
        task.wait(v)
        if not fns.dwb_118() then
            return false, false
        end
        bSs.CodeStatus = "Retrying " .. zG
        if fns.dwb_145("RedeemCode", zG) == true then
            return true, true
        end
    end
    return fns.dwb_79()[zG] == true, true
end
function fns.fn1765()
    for k in pairs(bTu.entries) do
        bRi.drop(k)
    end
    if bTu.screen then
        pcall(function()
            bTu.screen:Destroy()
        end)
        bTu.screen = nil
    end
end
function fns.fn1788(xw)
    local b9c = type(xw) ~= "table" or typeof(xw.QuestInstance) ~= "Instance"
    if b9c then
        return nil
    end
    local Tasks = xw.QuestInstance:FindFirstChild("Tasks")
    if not Tasks then
        return nil
    end
    local b9d = {}
    for i, child in ipairs(Tasks:GetChildren()) do
        local Code = child:FindFirstChild("Code")
        local b9c_3 = Code and Code.Value or child.Name
        local b9e_1 = fns.dwb_88(b9c_3)
        if not b9e_1 then
            return nil
        end
        b9d[child.Name] = b9e_1
    end
    if next(b9d) == nil then
        return nil
    end
    return b9d
end
function fns.fn1789()
    local cZz_1
    local cZy_1
    local cZx_1
    local cZt_1, cZt_8
    local cZp = bRi.camera()
    if not cZp then
        return
    end
    local ViewportSize = cZp.ViewportSize
    local cZr = fns.dwb_4()
    local cZr_3, cZr_7
    local cZr_1 = cZr and cZr.Position or cZp.CFrame.Position
    for k, v in pairs(bTu.entries) do
        local cZr_2 = v.part and not v.part:IsDescendantOf(bSf)
        if cZr_2 then
            v.part = bRi.anchorPart(k)
        end
        if not k:IsDescendantOf(bSf) then
            bRi.drop(k)
        else
            cZr_3, cZt_1 = bRi.bounds(k)
            local cZv = v.part and v.part.Position or cZr_3.Position
            local cZv_2
            local Magnitude = (cZv - cZr_1).Magnitude
            local cZv_1 = cZr_3 ~= nil
            if cZv_1 then
                cZv_1 = bTi.range <= 0 or Magnitude <= bTi.range
            end
            local cZw_2 = cZv_1
            if not cZw_2 then
                bRi.hide(v)
            else
                cZz_1, cZx_1, cZv_2, cZy_1 = nil, nil, nil, nil
                local cZA = table.create(8)
                for i, v in ipairs(bR1) do
                    local cZB_1 = cZp:WorldToViewportPoint(cZr_3:PointToWorldSpace(v * cZt_1 * 0.5))
                    if cZB_1.Z <= 0 then
                        cZw_2 = false
                        break
                    end
                    cZA[i] = Vector2.new(cZB_1.X, cZB_1.Y)
                    local cZC_1 = cZz_1 and math.min(cZz_1, cZB_1.X)
                    cZz_1 = cZC_1 or cZB_1.X
                    local cZC_2 = cZv_2 and math.max(cZv_2, cZB_1.X)
                    cZv_2 = cZC_2 or cZB_1.X
                    local cZC_3 = cZx_1 and math.min(cZx_1, cZB_1.Y)
                    cZx_1 = cZC_3 or cZB_1.Y
                    local cZC_4 = cZy_1 and math.max(cZy_1, cZB_1.Y)
                    cZy_1 = cZC_4 or cZB_1.Y
                end
                if not cZw_2 then
                    bRi.hide(v)
                else
                    local cZr_4 = bRi.tint(v)
                    local cZt_2 = cZv_2 - cZz_1
                    local cZw_3 = cZy_1 - cZx_1
                    local cZB_2 = (cZz_1 + cZv_2) * 0.5
                    local cZv_3 = (cZx_1 + cZy_1) * 0.5
                    local box2 = v.box
                    box2.Visible = bTi.box or bTi.boxFill
                    v.box.Position = UDim2.fromOffset(cZB_2, cZv_3)
                    v.box.Size = UDim2.fromOffset(cZt_2, cZw_3)
                    v.box.BackgroundColor3 = cZr_4
                    local box = v.box
                    box.BackgroundTransparency = bTi.boxFill and 0.75 or 1
                    v.stroke.Enabled = bTi.box
                    v.stroke.Color = cZr_4
                    for i, v2 in ipairs(fns.dwb_155) do
                        local cZt_4 = v.lines[i]
                        cZt_4.Visible = bTi.box3d
                        if bTi.box3d then
                            cZt_4.BackgroundColor3 = cZr_4
                            bRi.line(cZt_4, cZA[v2[1]], cZA[v2[2]])
                        end
                    end
                    v.tracer.Visible = bTi.tracer
                    if bTi.tracer then
                        v.tracer.BackgroundColor3 = cZr_4
                        bRi.line(v.tracer, Vector2.new(ViewportSize.X * 0.5, ViewportSize.Y), Vector2.new(cZB_2, cZy_1))
                    end
                    v.name.Visible = bTi.name
                    if bTi.name then
                        v.name.Text = v.label
                        v.name.TextColor3 = fns.dwb_113.name
                        v.name.Position = UDim2.fromOffset(cZB_2, cZx_1 - 9)
                    end
                    local detail = v.detail
                    local cZC_7 = bTi.playerInfo and v.category == "Players" and detail ~= nil
                    v.info.Visible = cZC_7
                    if cZC_7 then
                        v.info.Text = detail
                        v.info.TextColor3 = fns.dwb_113.info
                        local info = v.info
                        local fromOffset = UDim2.fromOffset
                        local cZC_8 = bTi.name and 23 or 9
                        info.Position = fromOffset(cZB_2, cZx_1 - cZC_8)
                    end
                    v.distance.Visible = bTi.distance
                    if bTi.distance then
                        v.distance.Text = string.format("%d studs", math.floor(Magnitude))
                        v.distance.TextColor3 = fns.dwb_113.distance
                        v.distance.Position = UDim2.fromOffset(cZB_2, cZy_1 + 9)
                    end
                    cZt_8, cZr_7 = bRi.health(v)
                    local cZu_2 = cZt_8 and cZr_7 and cZr_7 > 0
                    local cZx_2 = cZu_2 and math.clamp(cZt_8 / cZr_7, 0, 1)
                    local cZu_3 = cZx_2 or nil
                    local cZA_3 = bTi.healthBar and cZu_3 ~= nil
                    v.healthBack.Visible = cZA_3
                    v.healthFill.Visible = cZA_3
                    if cZA_3 then
                        local cZu_6 = cZz_1 - 5
                        local cZA_4 = fns.dwb_113.health:Lerp(fns.dwb_113.dying, 1 - cZu_3)
                        v.healthBack.Position = UDim2.fromOffset(cZu_6, cZv_3)
                        v.healthBack.Size = UDim2.fromOffset(3, cZw_3)
                        v.healthFill.Position = UDim2.fromOffset(cZu_6, cZy_1)
                        v.healthFill.Size = UDim2.fromOffset(3, cZw_3 * cZu_3)
                        v.healthFill.BackgroundColor3 = cZA_4
                    end
                    local cZw_4 = bTi.healthText and cZu_3 ~= nil
                    v.healthText.Visible = cZw_4
                    if cZw_4 then
                        v.healthText.Text = string.format("%d / %d", math.floor(cZt_8), math.floor(cZr_7))
                        v.healthText.TextColor3 = fns.dwb_113.healthText
                        v.healthText.Position = UDim2.fromOffset(cZz_1 - 40, cZv_3)
                    end
                end
            end
        end
    end
end
function fns.fn1803(baM, baN)
    local dg9 = bQS.Channels[baM]
    if not dg9 then
        return
    end
    dg9.Enabled = baN == true
    dg9.Waited = 0
    if dg9.Enabled then
        bQS.Reset(dg9)
        bQS.Start()
    elseif not bQS.Running() then
        bQS.Stop()
    end
end
function fns.fn1814()
    connection4:Disconnect()
end
function fns.fn1818(a6Y)
    local ChestController = bSg.ChestController
    local ddJ = (tonumber(a6Y)) or 12
    ChestController.lootRange = math.clamp(ddJ, 1, 100)
end
function fns.fn1824(Zc)
    local ctS_1
    local ctR_1
    ctR_1, ctS_1 = pcall(function()
        return fns.dwb_51.GuiService:GetGuiInset()
    end)
    local ctR_2 = ctR_1 and ctS_1 or Vector2.zero
    return Zc.X + ctR_2.X, Zc.Y + ctR_2.Y
end
function fns.fn1837()
    local bWl = (tonumber(fns.dwb_120({ "Exp", "Goal" }, fns.dwb_26.EXP_PER_LEVEL))) or fns.dwb_26.EXP_PER_LEVEL
    return math.max(1, math.floor(bWl / fns.dwb_26.EXP_PER_LEVEL))
end
function fns.fn1853(sd, se)
    local b5W = fns.dwb_133.stall and fns.dwb_133.stallClan == sd and os.clock() < fns.dwb_133.stallUntil
    if b5W then
        return fns.dwb_133.stall
    end
    if fns.dwb_133.stallClan == sd then
        fns.dwb_133.stall = nil
    end
    return string.format("%d cast, all on cooldown", se)
end
function fns.fn1887()
    local c3c_1
    local c3a = fns.dwb_92.queueWatcher()
    local c3b = type(c3a) ~= "table"
    local c3b_1
    local c3g = if c3b then 1 else 0
    local c3e = 1796 * c3g + 2469 * (1 - c3g)
    local c3f = 3437 * c3g + 2189 * (1 - c3g)
    if not ((c3e * 3977 + c3f * 3409 + c3e * c3f) % 16777213 == 8255064) then
        c3b = not bQG(c3a.Get)
    end
    if c3b then
        return nil
    end
    c3b_1, c3c_1 = fns.dwb_144(c3a.Get)
    if not c3b_1 then
        return nil
    end
    return tonumber(c3c_1)
end
function fns.fn1906(X5)
    local Training = bSf:FindFirstChild("Training")
    if not Training then
        return nil
    end
    local csJ = Training:FindFirstChild(X5)
    if csJ then
        return csJ
    end
    local csJ_1 = X5:gsub("%s", ""):lower()
    for i, child in ipairs(Training:GetChildren()) do
        local csK = child.Name:gsub("%s", ""):lower()
        local csL = csK == csJ_1 or csK:find(csJ_1, 1, true) or csJ_1:find(csK, 1, true)
        if csL then
            return child
        end
    end
    for i, child in ipairs(Training:GetChildren()) do
        for i, child2 in ipairs(child:GetChildren()) do
            if child2.Name:gsub("%s", ""):lower() == csJ_1 then
                return child
            end
        end
    end
    return nil
end
function fns.fn1920(p1)
    local b4w = fns.dwb_99()
    local b4x = b4w and b4w:FindFirstChild("SHC")
    local b4x_1 = fns.dwb_123.SkillWork.entry == p1 and b4w == p1.character and p1.stamp ~= nil and b4x == p1.shc and b4x ~= nil and b4x.Value == p1.name and b4x:GetAttribute("last_performed") == p1.stamp
    return b4x_1
end
function fns.fn1949(a1B)
    local dal = not fns.dwb_118() or SchematicRunner.cancel ~= a1B or not SchematicRunner.running
    return dal
end
function fns.fn1954(Ac)
    local cbm = Ac and fns.dwb_142.byKey[Ac]
    local cbn = cbm
    if cbm then
        cbm = cbn.label
    end
    return cbm or "None"
end
function fns.fn1965(a4t)
    bSg.HuntController.dropForeign = a4t == true
end
function fns.fn1967(a7W)
    bQ4.skills = fns.dwb_90(a7W)
end
function fns.fn1975(a7j)
    if a7j then
        bSs.SkillStatus = "Starting"
        bSg.SkillController.running = true
        fns.dwb_53(bSg.SkillController, fns.dwb_33)
    else
        bSg.SkillController.running = false
        fns.dwb_72(bSg.SkillController)
        bSs.SkillStatus = "Idle"
    end
end
function fns.fn1979()
    local bWv = fns.dwb_99()
    local bWw = bWv and bWv:FindFirstChild("HumanoidRootPart")
    local bWv_1 = bWw
    if bWw then
        bWw = bWv_1:IsA("BasePart")
    end
    if bWw then
        return bWv_1
    end
    return nil
end
function fns.fn1981()
    local ctD = bQe.playerValues()
    local ctE = ctD and ctD:FindFirstChild("Training")
    return ctE or nil
end
function fns.fn1991(bc3)
    bTE.tweaks.infClimb = bc3 == true
end
function fns.fn2036(sP)
    if fns.dwb_11.NEVER_CAST[sP] then
        return false
    elseif next(bQ4.clanSkills) ~= nil then
        return bQ4.clanSkills[sP] == true
    else
        return true
    end
end
function fns.fn2051(Ax, Ay)
    local cbT = fns.dwb_142.rank[Ax]
    if not cbT or Ax == "AutoLoot" then
        return false
    end
    local cbU_1 = cbT + Ay
    if cbU_1 < 2 or cbU_1 > #fns.dwb_142.order then
        return false
    end
    fns.dwb_142.order[cbT], fns.dwb_142.order[cbU_1] = fns.dwb_142.order[cbU_1], fns.dwb_142.order[cbT]
    fns.dwb_142.reindex()
    return true
end
function fns.fn2071()
    return fns.dwb_123.PointText(bSg.RespawnController.point)
end
function fns.fn2074()
    local cG_ = (bQe.inDungeon()) and "Dungeon"
    local cG0 = cG_
    local cG4 = if cG0 then 1 else 0
    local cG2 = 1408 * cG4 + 3582 * (1 - cG4)
    local cG3 = 3981 * cG4 + 3060 * (1 - cG4)
    if not ((cG2 * 1797 + cG3 * 2652 + cG2 * cG3) % 16777213 == 1915823) then
        cG0 = "Overworld"
    end
    return cG0
end
function fns.fn2075()
    local cyv = {}
    local cyw = {}
    local cyx = fns.dwb_65()
    if cyx then
        for i, child in ipairs(cyx:GetChildren()) do
            local cyx_1 = fns.dwb_110(child.Name)
            if cyx_1 and cyx_1.Category == "Potions" and not cyv[child.Name] then
                cyv[child.Name] = true
                cyw[#cyw + 1] = child.Name
            end
        end
    end
    for i, v in ipairs(fns.dwb_11.POTION_NAMES) do
        if not cyv[v] then
            cyv[v] = true
            cyw[#cyw + 1] = v
        end
    end
    table.sort(cyw)
    return cyw
end
function fns.fn2081(aXa)
    local c5F = aXa and aXa.ActionText
    if type(c5F) ~= "string" then
        return true, 0
    end
    local c5F_1 = tonumber((string.gsub(c5F, "[^%d]", "")))
    if not c5F_1 or c5F_1 <= 0 then
        return true, 0
    end
    local c5G_2 = (tonumber(LocalPlayer:GetAttribute("RunPoints")))
    local c5K = if c5G_2 then 1 else 0
    local c5I = 741 * c5K + 2750 * (1 - c5K)
    local c5J = 3162 * c5K + 3061 * (1 - c5K)
    if not ((c5I * 783 + c5J * 856 + c5I * c5J) % 16777213 == 5629917) then
        c5G_2 = 0
    end
    return c5G_2 >= c5F_1, c5F_1
end
function fns.fn2102(ac)
    return (tostring(ac):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
function fns.fn2106(cy, ...)
    local bV4 = type(fns.dwb_26.SignalFunction) ~= "table" or not bQG(fns.dwb_26.SignalFunction.ToServer)
    if bV4 then
        fns.dwb_71("SignalFunction.ToServer")
        return nil
    end
    local bV4_1 = table.pack(pcall(fns.dwb_26.SignalFunction.ToServer, cy, ...))
    if not bV4_1[1] then
        return nil
    end
    return table.unpack(bV4_1, 2, bV4_1.n)
end
function fns.fn2116(a9l)
    if a9l then
        bSs.FishStatus = "Starting"
        bSg.FishController.stand = nil
        bSg.FishController.running = true
        fns.dwb_53(bSg.FishController, bSg.FishController.step)
    else
        bSg.FishController.running = false
        fns.dwb_72(bSg.FishController)
        bSs.FishStatus = "Idle"
        bSs.AnglerStatus = "Idle"
        task.spawn(bQu)
    end
end
function fns.fn2118()
    task.delay(0, function()
        local de9_1
        local de8_1
        local de7_1
        de9_1, de8_1, de7_1 = {}, {}, {}
        for i, v in ipairs(fns.dwb_133.clanList()) do
            de9_1[#de9_1 + 1] = v.name
            local dfa = v.max
            if dfa <= 0 then
                local dfb_1 = fns.dwb_146(v.name)
                local dfc = dfb_1 and tonumber(dfb_1.Max_Hold_Time)
                dfa = dfc or 0
            end
            if dfa > 0 then
                local dfb_3 = "ClanHold" .. v.name:gsub("%W", "")
                if de7_1[dfb_3] then
                    de7_1[dfb_3] += 1
                    dfb_3 = dfb_3 .. de7_1[dfb_3]
                else
                    de7_1[dfb_3] = 1
                end
                de8_1[#de8_1 + 1] = { name = v.name, key = dfb_3, max = dfa, default = math.clamp(dfa * 0.25, 0.1, 1) }
            end
        end
        if #de9_1 > 0 then
            table.sort(de9_1)
            table.sort(de8_1, function(a8L, a8M)
                return a8L.name < a8M.name
            end)
            bSs.ClanSkillChoiceCache, bSs.ClanHoldCache = de9_1, de8_1
        end
    end)
end
function fns.fn2125(aH8)
    local cUW = bRG[aH8]
    if not cUW then
        return
    end
    cUW.played:Disconnect()
    for k, v in pairs(cUW.stopped) do
        v:Disconnect()
    end
    bRG[aH8] = nil
    for k, v in pairs(bTF) do
        if v.model == aH8 then
            fns.dwb_149(k, true)
        end
    end
end
function fns.fn2135(Pv, Pw)
    local blocked = bSg.CardController.blocked
    local cmz = not bSg.CardController.blockCards or next(blocked) == nil
    if cmz then
        return false
    end
    local cmz_1 = type(Pv) == "string" and blocked[Pv] == true
    local cmA = cmz_1
    if not cmA then
        local cmz_2 = type(Pw) == "string" and blocked[Pw] == true
        cmA = cmz_2
    end
    return cmA
end
function fns.fn2159(At)
    local cbM = {}
    local cbN = At or ""
    for k in tostring(cbN):gmatch("[^,]+") do
        cbM[#cbM + 1] = (k:gsub("^%s+", ""):gsub("%s+$", ""))
    end
    return cbM
end
function fns.fn2171(awD)
    local cMZ_1
    if not fns.dwb_118() then
        return
    end
    local SellController = bSg.SellController
    local cMY = not awD
    local cMY_2
    if cMY ~= false then
        cMY = os.clock() < SellController.nextDue
    end
    if cMY then
        return
    end
    if not awD then
        SellController.nextDue = os.clock() + SellController.period
    end
    local cMY_1 = SellController.mode == "Selected Items" and bQi(SellController.items) == 0
    if cMY_1 then
        bSs.SellStatus = "No items selected"
        return
    end
    cMZ_1, cMY_2 = SellController.plan()
    if cMY_2 <= 0 then
        bSs.SellStatus = "Nothing to sell"
        return
    end
    pcall(SellController.sell, cMZ_1, cMY_2)
end
function fns.fn2176()
    return bQS.Order
end
function fns.fn2185()
    local cea_1
    local cd9_1
    local cd6_1
    local cd5_1
    local cd4 = type(fns.dwb_26.Quests) ~= "table" or type(fns.dwb_26.Quests.Holder) ~= "table"
    if cd4 then
        return nil
    end
    local cd4_1 = bQt()
    cd6_1, cd5_1 = nil, nil
    for k, v in pairs(fns.dwb_26.Quests.Holder) do
        local cd7 = type(v) == "table" and v.Category == "Combat" and v.OfferNpc and v.OfferNpc ~= false
        if cd7 then
            local cd7_1 = type(v.Requirements) == "table" and tonumber(v.Requirements.Level)
            local cd8 = cd7_1 or 0
            local cd8_1 = cd8 <= cd4_1 and fns.dwb_128(v) and fns.dwb_94(v)
            if cd8_1 then
                local cd8_2 = true
                if bQG(fns.dwb_26.Quests.CanAddQuest) then
                    cd9_1, cea_1 = fns.dwb_144(fns.dwb_26.Quests.CanAddQuest, LocalPlayer, k)
                    if cd9_1 and not cea_1 then
                        cd8_2 = false
                    end
                end
                local cd9_2 = cd8_2
                if cd9_2 then
                    cd9_2 = not cd5_1 or cd8 > cd5_1
                end
                if cd9_2 then
                    cd6_1, cd5_1 = k, cd8
                end
            end
        end
    end
    return cd6_1
end
function fns.fn2187(aRo)
    for i, descendant in ipairs(aRo:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            return descendant
        end
    end
    if aRo:IsA("BasePart") then
        for i, child in ipairs(aRo:GetChildren()) do
            if child:IsA("ProximityPrompt") then
                return child
            end
        end
    end
    return nil
end
function fns.fn2194()
    local c9p = {}
    for i, v in ipairs(fns.dwb_142.order) do
        local c9q = fns.dwb_142.byKey[v]
        local c9r = fns.dwb_142.label(v)
        c9p[i] = {
            rank = i,
            key = v,
            label = c9r,
            running = c9q ~= nil and c9q.controller.running == true,
            holding = fns.dwb_142.holder == v
        }
    end
    return c9p
end
function fns.fn2205(a5V)
    bSg.CardController.forceHeal = a5V == true
end
function fns.fn2213(a5N)
    bSg.CardController.cards = fns.dwb_90(a5N)
end
function fns.fn2221(arG, arH, arI, arJ)
    if arI == nil then
        bQS.Mark[arG] = nil
        return
    end
    local Add = bQS.Add
    local cHZ = arJ and bQS.Drop(arG, arI)
    local cH_ = cHZ or bQS.Delta(arG, arI)
    Add(arH, cH_, "Dungeon")
end
function fns.fn2249(arm)
    local arn = math.max(0, math.floor(arm))
    return ("%dh %02dm"):format(arn // 3600, arn % 3600 // 60)
end
function fns.fn2258()
    if not fns.dwb_118() then
        return
    end
    local cyi = {}
    for k in pairs(bSg.SkillController.nodes) do
        if bSg.SkillController.unlockSkills or fns.dwb_11.STAT_NODES[k] then
            cyi[#cyi + 1] = k
        end
    end
    if #cyi == 0 then
        bSs.SkillStatus = "No nodes selected"
        return
    end
    table.sort(cyi)
    if fns.dwb_89() <= 0 then
        bSs.SkillStatus = "No skill points"
        return
    end
    for i, v in ipairs(cyi) do
        local cyi_1 = not fns.dwb_118() or bSg.SkillController.stopped
        if cyi_1 then
            return
        end
        if fns.dwb_89() <= 0 then
            bSs.SkillStatus = "No skill points"
            return
        end
        local cyi_2 = fns.dwb_145("UnlockSkillTreeNode", v)
        if cyi_2 == true then
            bSs.Nodes = bSs.Nodes + 1
            bSs.SkillStatus = "Unlocked " .. v
            task.wait(0.4)
        else
            bSs.SkillStatus = "Cannot unlock " .. v
            task.wait(0.2)
        end
    end
end
function fns.fn2282(Xn)
    local csa_1
    local cr9_1
    local ChestController = bSg.ChestController
    local cr7 = {}
    while true do
        local cr8 = not Xn() and fns.dwb_147.controllerValid(ChestController) and not ChestController.hopDue()
        if cr8 then
            local cr8_1 = fns.dwb_4()
            if not cr8_1 then
                return
            end
            csa_1, cr9_1 = nil, math.huge
            for i, v in ipairs(fns.dwb_45()) do
                local Magnitude = (v.model:GetPivot().Position - cr8_1.Position).Magnitude
                local csc = not cr7[v.model]
                if csc ~= false then
                    csc = Magnitude < cr9_1
                end
                if csc then
                    csa_1, cr9_1 = v, Magnitude
                end
            end
            if not csa_1 then
                ChestController.pending = false
                fns.dwb_142.uncommit("AutoChest")
                local cr8_2 = ChestController.scout(Xn)
                if not cr8_2 or cr8_2 == 0 then
                    break
                end
                continue
            end
            ChestController.pending = true
            cr7[csa_1.model] = true
            ChestController.take(csa_1, Xn)
            continue
        end
        return
    end
    return
end
function fns.fn2283()
    task.delay(0, fns.dwb_92.cancelQueue)
    bSs.QueueStatus = bSg.QueueController.running and "Requeueing" or "Idle"
end
function fns.fn2284(bi, bj, bk)
    local bVG_1
    local bVF_1
    local bVE = bi
    for i, v in ipairs(bj) do
        bVE = fns.dwb_7(bVE, v, 10)
        if not bVE then
            fns.dwb_71(bk)
            return nil
        end
    end
    bVF_1, bVG_1 = fns.dwb_144(require, bVE)
    if not bVF_1 then
        fns.dwb_71(bk)
        return nil
    end
    return bVG_1
end
function fns.fn2302()
    connection2:Disconnect()
end
function fns.fn2308()
    local bWa_1
    local bV9 = type(fns.dwb_26.Utility) ~= "table" or not bQG(fns.dwb_26.Utility.GetData)
    local bV9_1
    if bV9 then
        fns.dwb_71("Utility.GetData")
        return nil
    end
    bV9_1, bWa_1 = fns.dwb_144(fns.dwb_26.Utility.GetData, LocalPlayer)
    local bWb = bV9_1 and typeof(bWa_1) == "Instance"
    if bWb then
        return bWa_1
    end
    return nil
end
function fns.fn2340(eR)
    return eR.facing * eR.radius, eR.height
end
function fns.fn2346()
    local dmY = fns.dwb_82()
    local dmZ = dmY and dmY:FindFirstChild("Exp")
    local dmY_1 = dmZ
    if dmZ then
        dmZ = dmY_1:FindFirstChild("Current")
    end
    local dm_ = dmY_1
    local dm0 = dmZ
    if dm_ then
        dm_ = dmY_1:FindFirstChild("Goal")
    end
    local dmY_2 = dm_
    local dmZ_1 = bQt()
    local dm0_1 = dm0 and dm0.Value or 0
    local dmY_3 = dmY_2 and dmY_2.Value
    local dm7 = if dmY_3 then 1 else 0
    local dm5 = 3080 * dm7 + 2018 * (1 - dm7)
    local dm6 = 2073 * dm7 + 289 * (1 - dm7)
    if not ((dm5 * 680 + dm6 * 1415 + dm5 * dm6) % 16777213 == 11412535) then
        dmY_3 = 0
    end
    return { level = dmZ_1, exp = dm0_1, goal = dmY_3, wen = bR2(), race = bRS(), points = fns.dwb_89() }
end
function fns.fn2367(mL)
    local b12 = fns.dwb_50(mL)
    if not b12 then
        return nil
    end
    local b13 = fns.dwb_82()
    local b14 = b13 and b13:FindFirstChild("Inventory")
    local b13_1 = b14
    if b14 then
        b14 = b13_1:FindFirstChild("Toolbar")
    end
    local b13_2 = b14
    if not b13_2 then
        return nil
    end
    for i, v in ipairs(fns.dwb_11.SLOT_NAMES) do
        local b14_1 = b13_2:FindFirstChild(v)
        local b15 = b14_1 and tonumber(b14_1.Value) == b12
        if b15 then
            return i
        end
    end
    return nil
end
function fns.fn2380(qR)
    local b4Z = (fns.dwb_118()) and fns.dwb_133.enabled(qR) and not qR.cancelled and fns.dwb_99() == qR.character and bR3() and qR.session.valid() and fns.dwb_123.SkillWork.entry == qR
    return b4Z
end
function fns.fn2390(a6E)
    bSg.BossController.waitSample = nil
    bSg.BossController.yieldUntil = nil
    bSg.BossController.yieldFrom = nil
    bSg.BossController.bosses = fns.dwb_90(a6E)
    bSg.BossController.current = nil
    bSg.BossController.waitName = nil
    bSg.BossController.dwell = 0
    table.clear(bSg.BossController.skip)
    fns.dwb_103(bSg.BossController)
end
function fns.fn2414()
    return ("sent %d  |  failed %d  |  queued %d"):format(bSs.WebhookSent, bSs.WebhookFailed, #bQS.Queue)
end
function fns.fn2439(atj)
    local cJL = fns.dwb_110(atj)
    local cJM = cJL and tonumber(cJL.Rarity)
    local cJL_1 = cJM or 1
    local cJL_2 = fns.dwb_92.module("Rarities module", { "CAM", "Global", "Rarities" })
    local cJN = cJL_2.Colors[cJL_1]
    local cJO = math.floor(cJN.R * 255) * 65536 + math.floor(cJN.G * 255) * 256 + math.floor(cJN.B * 255)
    return cJL_1, cJL_2.Order[cJL_1], math.max(cJO, 1)
end
function fns.fn2445(uZ, u_, u0, u1, u2)
    local b7J = fns.dwb_122(u1)
    local b7K = not fns.dwb_147.controllerValid(u1)
    local b7K_11, b7K_12
    if not b7K then
        local b7L_1 = b7J and b7J()
        b7K = b7L_1
    end
    if b7K then
        return false
    end
    local b7K_1 = u2 and u2()
    if b7K_1 then
        return false
    end
    local b7K_2 = (uZ.model:FindFirstChild("HumanoidRootPart")) or uZ.model.PrimaryPart
    local b7K_3 = fns.dwb_4()
    local b7M = b7K_2 and fns.dwb_61(b7K_2)
    local b7L_3 = b7M or uZ.model:GetPivot().Position + Vector3.new(0, 3, 0)
    local b7M_1 = b7K_3
    if b7M_1 then
        b7M_1 = (b7L_3 - b7K_3.Position).Magnitude > 12
    end
    if b7M_1 then
        if not fns.dwb_111(b7L_3, 0, b7J) then
            local b7K_4 = u1
            if b7K_4 then
                b7K_4 = u1.stopped or u1.yield
            end
            if b7K_4 then
                return false
            end
            local b7K_5 = u2 and u2()
            if b7K_11 then
                return false
            end
            local b7K_6 = not fns.dwb_147.controllerValid(u1)
            if not b7K_12 then
                local b7L_5 = b7J and b7J()
            end
            if b7K_12 then
                return false
            end
            local model = uZ.model
            local b7K_7 = u0 or 120
            return bP2(model, b7K_7, u_, u1, u2)
        end
        local b7K_8 = u2 and u2()
        if b7K_11 then
            return false
        end
        local b7K_9 = not fns.dwb_147.controllerValid(u1)
        if not b7K_12 then
            local b7L_6 = b7J and b7J()
        end
        if b7K_12 then
            return false
        end
        local model = uZ.model
        local b7K_10 = u0 or 120
        return bP2(model, b7K_10, u_, u1, u2)
    end
    b7K_11 = u2 and u2()
    if b7K_11 then
        return false
    end
    b7K_12 = not fns.dwb_147.controllerValid(u1)
    if not b7K_12 then
        local b7L_7 = b7J and b7J()
        b7K_12 = b7L_7
    end
    if b7K_12 then
        return false
    end
    local model = uZ.model
    local b7K_13 = u0 or 120
    return bP2(model, b7K_13, u_, u1, u2)
end
function fns.fn2456()
    local b1U = {}
    local b1V = fns.dwb_65()
    if b1V then
        for i, child in ipairs(b1V:GetChildren()) do
            if fns.dwb_117(child.Name) then
                b1U[#b1U + 1] = child.Name
            end
        end
    end
    table.sort(b1U)
    return b1U
end
function fns.fn2479()
    local cn1 = fns.dwb_24.bossIds()
    local cn2 = fns.dwb_4()
    if not cn2 then
        return {}
    end
    local Position = cn2.Position
    local range = bSg.LootController.range
    local cn4 = {}
    for i, v in ipairs(bQs()) do
        local cn5 = not fns.dwb_24.isOpened(v)
        if cn5 then
            local cn6_1 = os.clock()
            cn5 = cn6_1 >= (fns.dwb_24.retryAt[v] or 0)
        end
        if cn5 then
            cn5 = v:GetAttribute("ChestState") ~= "Locked"
        end
        if cn5 then
            cn5 = fns.dwb_24.isBoss(v, cn1)
        end
        if cn5 then
            local cn5_1 = fns.dwb_6(v)
            local Magnitude = (v:GetPivot().Position - Position).Magnitude
            local cn7_2 = cn5_1 and cn5_1.Enabled
            if cn7_2 then
                cn7_2 = range <= 0 or Magnitude <= range
            end
            if cn7_2 then
                cn4[#cn4 + 1] = { model = v, gap = Magnitude }
            end
        end
    end
    table.sort(cn4, function(RO, RP)
        return RO.gap < RP.gap
    end)
    return cn4
end
function fns.fn2484()
    return math.max(0, math.ceil(bSs.CodeReadyAt - os.clock()))
end
function fns.fn2519(abI, abJ)
    local cvW = { goal = abJ:GetAttribute("GoalPosition") }
    local cvX = bSg.TrainController.folder(abI)
    local attr = abJ:GetAttribute("GoalName")
    local cvZ = cvX and type(attr) == "string" and cvX:FindFirstChild(attr)
    local cvX_1 = cvZ or nil
    if cvX_1 then
        local cvX_2 = (cvX_1:IsA("BasePart")) and cvX_1
        local cvZ_1 = cvX_2 or cvX_1:FindFirstChildWhichIsA("BasePart", true)
        cvW.goalPart = cvZ_1
    end
    cvW.boulder = bSg.TrainController.boulder()
    return cvW
end
function fns.fn2543(VO)
    local cqZ_1
    local ChestController = bSg.ChestController
    local cqV = (bQe.inDungeon()) or bQe.inMenuPlace()
    if cqV then
        ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_RETRY
        bSs.ChestStatus = VO .. "; cannot hop from here"
        return false
    end
    local cqV_1 = bSg.ChestController.browser()
    local cqW = type(cqV_1) ~= "table" or not bQG(cqV_1.Browse) or not bQG(cqV_1.Join) or type(cqV_1.Updated) ~= "table"
    local cqW_3
    if cqW then
        ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_RETRY
        bSs.ChestStatus = VO .. "; the game's server browser is not available"
        return false
    end
    ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_WAIT
    bSs.ChestStatus = VO .. "; finding a public server"
    local cqW_1 = ChestController.servers(cqV_1)
    local cqX = not fns.dwb_118()
    local cq3 = if cqX then 1 else 0
    local cq1 = 481 * cq3 + 599 * (1 - cq3)
    local cq2 = 2902 * cq3 + 3697 * (1 - cq3)
    if not ((cq1 * 785 + cq2 * 2072 + cq1 * cq2) % 16777213 == 7786391) then
        cqX = not ChestController.running
    end
    if not cqX then
        cqX = ChestController.stopped
    end
    if not cqX then
        cqX = not ChestController.hop
    end
    if cqX then
        ChestController.hopUntil = 0
        return false
    elseif #cqW_1 == 0 then
        ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_RETRY
        bSs.ChestStatus = VO .. "; no other public server with room, retrying"
        return false
    else
        local cqX_1 = ChestController.pickServer(cqV_1, cqW_1)
        ChestController.hopTarget = cqX_1.JobId
        ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_WAIT
        local format = string.format
        local cqY = cqX_1.Name or "server"
        local cqY_1
        bSs.ChestStatus = format("%s; joining %s (%d/%d)", VO, tostring(cqY), cqX_1.Players, cqX_1.MaxPlayers)
        cqW_3, cqY_1, cqZ_1 = pcall(cqV_1.Join, cqX_1)
        if not cqW_3 or cqY_1 ~= true then
            ChestController.badServers[cqX_1.JobId] = true
            ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_RETRY
            local cqU_1 = not cqW_3
            if cqU_1 ~= false then
                cqU_1 = cqY_1
            end
            local cqV_3 = cqU_1
            if not cqV_3 then
                local cqU_2 = type(cqZ_1) == "string" and cqZ_1
                cqV_3 = cqU_2 or "no reason given"
            end
            bSs.ChestStatus = "Hop refused, retrying: " .. tostring(cqV_3)
            return false
        end
        return true
    end
end
function fns.fn2557(aLv)
    if aLv:IsA("BasePart") then
        return aLv
    end
    local cXA = (aLv:FindFirstChild("HumanoidRootPart")) or aLv.PrimaryPart or aLv:FindFirstChildWhichIsA("BasePart", true)
    return cXA
end
function fns.fn2559(a6r)
    local ddx = type(a6r) == "string" and a6r
    local ddy = ddx or ""
    if bSg.MobController.target == ddy then
        return
    end
    bSg.MobController.target = ddy
    fns.dwb_103(bSg.MobController)
    if bSg.MobController.running then
        bSs.MobStatus = ddy ~= "" and "Switching to " .. ddy or "No mob selected"
    end
end
function fns.fn2568()
    return fns.dwb_92.module("Teleporter", { "CAM", "Client", "Modules", "Teleporter" })
end
function fns.fn2574()
    local cHH = tostring(bQS.PingId):match("%d+")
    if bQS.Ping and cHH then
        return ("<@%s>"):format(cHH)
    end
    return nil
end
function fns.fn2585()
    for i, v in ipairs(bQS.Order) do
        if bQS.Channels[v].Enabled then
            return true
        end
    end
    return false
end
function fns.fn2599(aUp, aUq, aUr)
    local c3Q_1
    local range
    local Position
    local c3N = fns.dwb_4()
    local c3N_4
    if not c3N then
        return {}
    end
    Position, range, c3Q_1 = c3N.Position, aUp.range, {}
    for i, descendant in ipairs(bSf:GetDescendants()) do
        local c3N_1 = (descendant:IsA("ProximityPrompt")) and descendant.Enabled
        if c3N_1 then
            local lower = string.lower
            local c3R = descendant.ActionText or ""
            local c3R_1
            local c3S = lower(c3R)
            local c3N_3 = string.find(c3S, aUq, 1, true) ~= nil
            for i, v in ipairs(aUr) do
                if string.find(c3S, v, 1, true) then
                    c3N_3 = false
                    break
                end
            end
            if c3N_3 then
                c3N_4, c3R_1 = fns.dwb_92.promptAnchor(descendant)
                local c3S_1 = c3R_1 and (c3R_1 - Position).Magnitude
                local c3T = c3S_1
                if c3S_1 then
                    c3S_1 = range <= 0 or c3T <= range
                end
                if c3S_1 then
                    c3Q_1[#c3Q_1 + 1] = { prompt = descendant, gap = c3T, part = c3N_4, point = c3R_1 }
                end
            end
        end
    end
    table.sort(c3Q_1, function(aUN, aUO)
        return aUN.gap < aUO.gap
    end)
    return c3Q_1
end
function fns.fn2621()
    local dj6 = {}
    for k in pairs(fns.dwb_123.SpawnCrystals()) do
        table.insert(dj6, k)
    end
    table.sort(dj6)
    return dj6
end
function fns.fn2625(a9S)
    bSg.FishController.returnAfterBuy = a9S ~= false
end
function fns.fn2628(fz)
    if fz and bPT.owner ~= fz then
        return
    end
    bQv(fz)
    if bPT.connection and bPT.connection == fns.dwb_147.holdConnection then
        fns.dwb_147.holdConnection = nil
        fns.dwb_13(false)
    end
    if bPT.connection then
        bPT.connection:Disconnect()
        bPT.connection = nil
    end
    bPT.part = nil
    bPT.owner = nil
end
function fns.fn2636(aTw, aTx)
    local c25_1
    local c24_1
    local c22 = fns.dwb_92.menuValidators()
    local c23 = type(c22) ~= "table" or not bQG(c22.HudGamemode)
    local c23_1
    if c23 then
        return true, nil
    end
    c23_1, c25_1, c24_1 = fns.dwb_144(c22.HudGamemode, aTw, LocalPlayer, aTx == true)
    if not c23_1 then
        return true, nil
    end
    local c22_1 = c25_1 == true
    local c23_2 = type(c24_1) == "string" and c24_1
    return c22_1, c23_2 or nil
end
function fns.fn2640()
    fns.dwb_92.answerLobbyPrompt(bSg.ReadyController, "AutoReady", "ready", fns.dwb_11.READY_SKIP, "ReadyStatus", "Readied for")
end
function fns.fn2659(al)
    return string.format('<font color="%s">%s</font>', bTG(al), fns.dwb_19(al))
end
function fns.fn2665()
    local dgS = {}
    for k in pairs(bQS.DefaultItemCategories) do
        dgS[#dgS + 1] = k
    end
    table.sort(dgS)
    return dgS
end
function fns.fn2667(a4p)
    bSg.HuntController.tiers = fns.dwb_90(a4p)
    fns.dwb_103(bSg.HuntController)
end
function fns.fn2672()
    return bSs.ShopCache
end
function fns.fn2681(mf)
    local b1H = fns.dwb_70(mf)
    if not b1H then
        return 0
    end
    local Amount = b1H:FindFirstChild("Amount")
    local b1H_1 = Amount and tonumber(Amount.Value)
    return b1H_1 or 1
end
function fns.fn2684()
    local ckt_1
    local cks = bSg.DemonController.number("EligibleReputation", -40)
    local cks_1
    if bSg.DemonController.reputation() > cks then
        bSg.DemonController.farmReputation(cks)
        return
    end
    cks_1, ckt_1 = bSg.DemonController.muzan()
    if not cks_1 then
        if not bSg.DemonController.night() then
            local cku_1 = bSg.DemonController.phaseIn()
            local ckv_1 = cku_1 and string.format("Waiting for night to find Muzan (%ds)", math.ceil(cku_1))
            bSs.DemonStatus = ckv_1 or "Waiting for night to find Muzan"
            task.wait(2)
            return
        end
        bSs.DemonStatus = "Searching for Muzan"
        if not bSg.DemonController.sweep(bSg.DemonController.muzanRoute(), 10) then
            return
        end
        cks_1, ckt_1 = bSg.DemonController.muzan()
        if not cks_1 then
            return
        end
    end
    bSs.DemonStatus = "Asking Muzan for the bell"
    fns.dwb_111(cks_1:GetPivot().Position + Vector3.new(0, 2, 4), 0.4, fns.dwb_122(bSg.DemonController))
    if bSg.DemonController.stopped then
        return
    end
    local cku_3 = bSg.DemonController.number("GrantDistance", 20)
    local ckv_2 = fns.dwb_4()
    local ckw = cks_1.Parent and ckv_2 and (cks_1:GetPivot().Position - ckv_2.Position).Magnitude > cku_3
    if ckw then
        fns.dwb_111(cks_1:GetPivot().Position + Vector3.new(0, 2, 4), 0.3, fns.dwb_122(bSg.DemonController))
        if bSg.DemonController.stopped then
            return
        end
    end
    local cku_4 = (bSg.DemonController.promptIn(cks_1)) or ckt_1
    bR5(cku_4)
    task.wait(1)
    bQR("MuzanGiveBell")
    local cks_2 = bRD(function()
        return bSg.DemonController.owns("Biwa Bell")
    end, 6)
    bQR("NpcTalking", "Ended")
    bSs.DemonStatus = cks_2 and "Took the Biwa Bell" or "Muzan did not hand over the bell"
end
function fns.fn2708()
    return bQS.Channels[bQS.Zone()]
end
function fns.fn2715(p8)
    if fns.dwb_133.active == p8 then
        fns.dwb_133.active = nil
    end
    if fns.dwb_123.SkillWork.entry == p8 then
        fns.dwb_123.SkillWork.entry = nil
    end
end
function fns.fn2742()
    return fns.dwb_142.active
end
function fns.fn2771()
    task.delay(0, function()
        local dfk = bRU()
        if #dfk > 0 then
            bSs.WeaponCache = dfk
        end
    end)
end
function fns.fn2790()
    local cKR = (tonumber(LocalPlayer:GetAttribute("RunPoints")))
    local cKV = if cKR then 1 else 0
    local cKT = 581 * cKV + 1219 * (1 - cKV)
    local cKU = 97 * cKV + 2246 * (1 - cKV)
    if not ((cKT * 970 + cKU * 3735 + cKT * cKU) % 16777213 == 982222) then
        cKR = 0
    end
    return cKR
end
function fns.fn2794(ba4)
    local dhi = bQS.Channels[ba4]
    if not dhi then
        return "Off"
    elseif not dhi.Enabled then
        return "Off"
    else
        local dhj = math.max(0, dhi.Interval * 60 - dhi.Waited)
        return ("next in %dm %02ds  |  %d lines"):format(dhj // 60, dhj % 60, bQS.Counted(dhi))
    end
end
function fns.fn2807()
    return tostring(fns.dwb_120({ "Race" }, "Human"))
end
function fns.fn2808(bdL)
    bTE.Esp.setOption("range", bdL)
end
function fns.fn2810(aGr, aGs)
    local cTy = bSS()
    local cTz = aGr.impact - cTy
    aGr.earliest = cTz - aGr.window + fns.dwb_68.margin
    aGr.latest = cTz - fns.dwb_68.margin
    local cTy_1 = fns.dwb_43.auto and math.min(bTg.jitter + bTg.frame * 0.5, aGr.window * 0.2)
    local cTy_2 = cTy_1 or 0
    aGr.due = math.clamp(cTz - aGr.window * 0.5 - cTy_2 + fns.dwb_43.lead, aGr.earliest, aGr.latest)
    aGr.protectUntil = aGr.impact + 0.03
    if not aGr.lateChecked then
        aGr.lateChecked = true
        if aGs > aGr.due then
            local stats = fns.dwb_43.stats
            stats.late = stats.late + 1
        end
    end
end
function fns.fn2834(afs)
    if not fns.dwb_50(afs) then
        bSs.PotionStatus = "No " .. afs .. " held"
        return false
    elseif bQe.toolBlocked(afs) then
        bSs.PotionStatus = "Items are disabled on this floor"
        return false
    else
        local cyP = (fns.bSv()) and fns.bSv().Value
        local cyQ = cyP
        local cyU = if cyQ then 1 else 0
        local cyS = 1066 * cyU + 242 * (1 - cyU)
        local cyT = 2606 * cyU + 307 * (1 - cyU)
        if not ((cyS * 1297 + cyT * 2741 + cyS * cyT) % 16777213 == 11303644) then
            cyQ = nil
        end
        local cyP_1 = cyQ
        if not fns.dwb_42(afs) then
            bSs.PotionStatus = afs .. " is not on your toolbar"
            return false
        end
        task.wait(0.8)
        bSs.PotionStatus = "Drinking " .. afs
        bQR("Tool_Mouse", "Down", bSQ())
        task.wait(5.5)
        bQR("Tool_Mouse", "Up", bSQ())
        task.wait(0.4)
        bSs.Potions = bSs.Potions + 1
        if cyP_1 then
            fns.dwb_56(cyP_1)
        end
        bQu()
        bSs.PotionStatus = "Drank " .. afs
        return true
    end
end
function fns.fn2854(Dn)
    local cdQ = {}
    if type(Dn) == "table" then
        for k, v in pairs(Dn) do
            local cdR = v == true and type(k) == "string"
            if cdR then
                cdQ[k] = true
            elseif type(v) == "string" then
                cdQ[v] = true
            end
        end
    end
    return cdQ
end
function fns.fn2861()
    local dmq = {}
    local dmr = {}
    for i, v in ipairs(fns.dwb_11.MOB_NAMES) do
        if not dmr[v] then
            dmr[v] = true
            dmq[#dmq + 1] = v
        end
    end
    for i, v in ipairs(fns.dwb_108()) do
        local Name = v.folder.Name
        if not dmr[Name] then
            dmr[Name] = true
            dmq[#dmq + 1] = Name
        end
    end
    table.sort(dmq)
    return dmq
end
function fns.fn2864()
    local cky = bSg.DemonController.number("LairEntryReputation", -20)
    local ckD = if bSg.DemonController.reputation() >= cky then 1 else 0
    if ckD == 1 then
        bSg.DemonController.farmReputation(cky - 1)
        return
    end
    if bSg.DemonController.inCombat() then
        bSs.DemonStatus = "Waiting to leave combat"
        task.wait(2)
        return
    end
    bSs.DemonStatus = "Ringing the Biwa Bell"
    if not bSg.DemonController.useTool("Biwa Bell", 2) then
        bSs.DemonStatus = "Cannot hold the Biwa Bell"
        return
    end
    local cky_1 = bRD(function()
        return bSg.DemonController.inLair()
    end, 12)
    bSg.DemonController.putBack()
    bSs.DemonStatus = cky_1 and "Arrived at the lair" or "The bell did not open the road"
end
function fns.fn2865(AD)
    if not AD then
        return math.huge
    end
    return fns.dwb_142.rank[AD] or math.huge
end
function fns.fn2871()
    local ceH_1
    local ceF = fns.dwb_82()
    local ceG = ceF and ceF:FindFirstChild("Quests")
    local ceG_2
    local ceF_1 = ceG
    if ceG then
        ceG = ceF_1:FindFirstChild("LastTime")
    end
    local ceF_2 = ceG
    local ceG_1 = not ceF_2 or type(fns.dwb_26.Quests) ~= "table" or type(fns.dwb_26.Utility) ~= "table" or not bQG(fns.dwb_26.Utility.Tick)
    if ceG_1 then
        return 0
    end
    ceG_2, ceH_1 = fns.dwb_144(fns.dwb_26.Utility.Tick)
    local ceI = not ceG_2 or not tonumber(ceH_1)
    if ceI then
        return 0
    end
    local max = math.max
    local ceI_1 = (tonumber(fns.dwb_26.Quests.QuestCD)) or 30
    return max(0, ceI_1 - (ceH_1 - ceF_2.Value))
end
function fns.fn2873(aY)
    for i, v in ipairs(bQe.missing) do
        if v == aY then
            return
        end
    end
    table.insert(bQe.missing, aY)
end
function fns.fn2875(a4b)
    a4b.cancel = (a4b.cancel or 0) + 1
end
function fns.fn2886(a0Y)
    local c9I = a0Y == true
    if c9I == fns.dwb_142.active then
        return
    end
    fns.dwb_142.active = c9I
    if c9I then
        bSs.PriorityStatus = "Waiting for work"
        bSs.PriorityHolder = fns.dwb_142.label(fns.dwb_142.holder)
        return
    end
    table.clear(fns.dwb_142.wants)
    table.clear(fns.dwb_142.preemptedAt)
    table.clear(fns.dwb_142.lastClaim)
    table.clear(fns.dwb_142.commitments)
    for i, v in ipairs(fns.dwb_142.features) do
        v.controller.yield = false
    end
    bSs.PriorityStatus = "Off"
    bSs.PriorityHolder = "None"
    for i, v in ipairs(fns.dwb_142.order) do
        local c9I_1 = bQE[v]
        if c9I_1 and c9I_1.controller.running then
            fns.dwb_74(v)
            return
        end
    end
end
function fns.fn2887()
    return bQS.RarityNames()
end
function fns.fn2906(aFE, aFF, aFG, aFH)
    local cTf_1
    local cTd = not fns.dwb_118() or not fns.dwb_43.on or bRt[aFG] or not aFG.IsPlaying
    if cTd then
        return
    end
    local cTe = aFF and not fns.dwb_43.npc
    local cTe_1
    if not cTe then
        local cTd_2 = not aFF
        if cTd_2 ~= false then
            cTd_2 = not fns.dwb_43.pvp
        end
        cTe = cTd_2
    end
    if cTe then
        return
    end
    local generation = fns.dwb_43.generation
    cTf_1, cTe_1 = fns.dwb_151(aFG.Animation, aFE)
    local cTg = not fns.dwb_118() or not fns.dwb_43.on or generation ~= fns.dwb_43.generation
    if cTg then
        return
    end
    if not cTf_1 then
        if cTe_1 == "ambiguous" and not bTg.rejected[aFG] then
            bTg.rejected[aFG] = true
            local stats = fns.dwb_43.stats
            stats.ambiguous = stats.ambiguous + 1
        end
        return
    end
    bRt[aFG] = true
    bTF[aFG] = {
        model = aFE,
        isMob = aFF,
        info = cTf_1,
        track = aFG,
        animator = aFH,
        owner = fns.dwb_99(),
        generation = fns.dwb_43.generation,
        created = os.clock()
    }
end
function fns.fn2910()
    local c_1 = {}
    local c_2 = fns.dwb_4()
    if not c_2 then
        return c_1
    end
    local Position = c_2.Position
    local c_2_1 = bSg.LootController.range
    for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
        local c_4 = (v:IsA("BasePart")) and v:IsDescendantOf(bSf) and bP1(v)
        if c_4 then
            local c_5_1 = os.clock()
            c_4 = c_5_1 >= ((bSg.LootController.attempts[v] or {}).retryAt or 0)
        end
        if c_4 then
            local c_4_1 = v:FindFirstChildWhichIsA("ProximityPrompt")
            local c_5_2 = (bRh(v) - Position).Magnitude
            local c_6_3 = c_4_1 and c_4_1.Enabled
            if c_6_3 then
                c_6_3 = c_2_1 <= 0 or c_5_2 <= c_2_1
            end
            if c_6_3 then
                c_1[#c_1 + 1] = { part = v, gap = c_5_2 }
            end
        end
    end
    table.sort(c_1, function(aPJ, aPK)
        return aPJ.gap < aPK.gap
    end)
    return c_1
end
function fns.fn2912()
    local cpW = 0
    local cpX = {}
    local cpY = os.clock()
    for i, v in ipairs(bQs()) do
        local cpZ = fns.dwb_85(v)
        local cp_ = cpZ
        if cp_ then
            local cp0 = bQi(bSg.ChestController.tiers) == 0 or bSg.ChestController.tiers[cpZ]
            cp_ = cp0
        end
        if cp_ then
            cp_ = not fns.dwb_24.isOpened(v)
        end
        if cp_ then
            if cpY < (fns.dwb_24.retryAt[v] or 0) then
                cpW += 1
            else
                cpX[#cpX + 1] = { model = v, tier = cpZ }
            end
        end
    end
    return cpX, cpW
end
function fns.fn2917()
    local cL3 = fns.dwb_65()
    local cL4 = {}
    if not cL3 then
        return cL4
    end
    local cL5 = fns.dwb_92.module("Shop module", { "CAM", "Global", "Shop" })
    local cL6 = type(cL5) == "table" and type(cL5.itemsforsale) == "table" and cL5.itemsforsale
    local cL7 = cL6 or {}
    local cL5_2 = {}
    for i, child in ipairs(cL3:GetChildren()) do
        local Name = child.Name
        local cL7_1 = (child:FindFirstChild("NoSave")) or child:FindFirstChild("QuestGrant")
        if cL7_1 then
            cL5_2[Name] = true
        else
            local cL7_2 = fns.dwb_110(Name)
            if cL7_2 and cL7_2.NoDelete ~= true and cL7_2.NoSell ~= true and cL7_2.Requirements == nil and cL7_2.NoSaveRequirements == nil and (cL7_2.Price ~= nil or cL7[Name] ~= nil) then
                local Amount = child:FindFirstChild("Amount")
                local cL8_1 = Amount and tonumber(Amount.Value)
                cL4[Name] = (cL4[Name] or 0) + (cL8_1 or 1)
            end
        end
    end
    for k in pairs(cL5_2) do
        cL4[k] = nil
    end
    return cL4
end
function fns.fn2930(eA)
    fns.dwb_147.releaseInput("Combat", eA)
end
function fns.fn2936(bgp)
    if bgp then
        bSs.QueueStatus = "Starting"
        bSg.QueueController.running = true
        task.delay(0, fns.dwb_92.announceHudState)
        fns.dwb_53(bSg.QueueController, fns.dwb_92.queueStep)
    else
        bSg.QueueController.running = false
        fns.dwb_72(bSg.QueueController)
        task.delay(0, fns.dwb_92.cancelQueue)
        bSs.QueueStatus = "Idle"
    end
end
function fns.fn2941(aSs)
    local c2e = 0
    for i, v in ipairs(bSG()) do
        local c2f = aSs and aSs()
        local c2g = c2f or not fns.dwb_147.controllerValid(bSg.SoulController)
        if c2g then
            break
        elseif fns.dwb_32(v) then
            c2e += 1
        end
    end
    return c2e
end
function fns.fn2943(aZm)
    local c67 = (tonumber(aZm)) or 0
    aZm = math.max(0, math.floor(c67))
    if aZm >= 3600 then
        return string.format("%dh %dm", aZm // 3600, aZm % 3600 // 60)
    elseif aZm >= 60 then
        return string.format("%dm", math.floor(aZm / 60 + 0.5))
    else
        return string.format("%ds", aZm)
    end
end
function fns.fn2953(a65)
    bSg.ChestController.hopEmpty = a65 == true
    bSg.ChestController.emptyScans = 0
end
function fns.fn2971()
    fns.dwb_142.setOrder(fns.dwb_142.defaultOrder)
    return fns.dwb_142.serialize()
end
function fns.fn2984(a1y)
    return fns.dwb_70(a1y .. " Schematic") ~= nil
end
function fns.fn2996()
    local ckE = bSg.DemonController.settings()
    local ckF = ckE and ckE.muzanPositions
    local ckF_1 = type(ckF) == "table" and ckF.IsNotDemon
    local ckF_2 = ckF_1 or nil
    local ckE_3 = typeof(ckF_2) == "CFrame" and ckF_2.Position
    local ckF_3 = ckE_3 or fns.dwb_11.MUZAN_LAIR
    fns.dwb_111(ckF_3 + Vector3.new(0, 2, 6), 0.4, fns.dwb_122(bSg.DemonController))
    if bSg.DemonController.stopped then
        return
    end
    bSs.DemonStatus = "Asking Muzan for the task"
    local ckE_5 = bSg.DemonController.promptIn(bSg.DemonController.named("MuzanLairModel"))
    if ckE_5 then
        bR5(ckE_5)
        task.wait(1)
    end
    bQR("MuzanLairAssign")
    local ckE_6 = bRD(function()
        return bSg.DemonController.questNode() ~= nil
    end, 8)
    bQR("NpcTalking", "Ended")
    if ckE_6 then
        bSs.DemonStatus = "Muzan Quest taken"
        return
    end
    local ckE_7 = bS4()
    if ckE_7 and bSg.DemonController.dropForeign then
        local ckF_5 = fns.dwb_140(ckE_7)
        bSs.DemonStatus = "Clearing quest slot"
        local ckG = type(ckF_5) == "table" and typeof(ckF_5.QuestInstance) == "Instance"
        local ckF_6 = ckG and ckF_5.QuestInstance.Name
        local ckL = if ckF_6 then 1 else 0
        local ckJ = 2776 * ckL + 1962 * (1 - ckL)
        local ckK = 394 * ckL + 433 * (1 - ckL)
        if not ((ckJ * 832 + ckK * 1189 + ckJ * ckK) % 16777213 == 3871842) then
            ckF_6 = ckE_7
        end
        bQ2(ckF_6)
        return
    end
    local ckF_7 = ckE_7 and "Finish or drop " .. fns.dwb_132(ckE_7)
    bSs.DemonStatus = ckF_7 or "Muzan would not give the task"
end
function fns.fn3002()
    task.delay(0, function()
        local dmW = fns.dwb_153()
        if #dmW > 0 then
            bSs.SkillNodeCache = dmW
        end
    end)
end
function fns.fn3005()
    local cIi = fns.dwb_65()
    if cIi == bQS.ItemFolder then
        return
    end
    if bQS.ItemHook then
        pcall(function()
            bQS.ItemHook:Disconnect()
        end)
        bQS.ItemHook = nil
    end
    bQS.ItemFolder = cIi
    if not cIi then
        return
    end
    bQS.ItemHook = cIi.ChildAdded:Connect(function(ar3)
        pcall(bQS.OnItem, ar3.Name)
    end)
end
function fns.fn3017()
    local LeaveController = bSg.LeaveController
    local floor = math.floor
    local c6k = (tonumber(LeaveController.floor))
    local c6p = if c6k then 1 else 0
    local c6n = 978 * c6p + 2278 * (1 - c6p)
    local c6o = 3591 * c6p + 1324 * (1 - c6p)
    if not ((c6n * 2914 + c6o * 1791 + c6n * c6o) % 16777213 == 12793371) then
        c6k = 0
    end
    local c6l = floor(c6k)
    local c6j_1 = c6l <= 0 or not bQe.inDungeon()
    if c6j_1 then
        return false
    end
    local c6j_2 = fns.dwb_92.runKey()
    if LeaveController.floorKey ~= c6j_2 then
        LeaveController.floorKey, LeaveController.floorDone = c6j_2, 0
    end
    if LeaveController.floorDone >= fns.dwb_11.RUN_HEARTS then
        return false
    elseif fns.dwb_92.inRunLobby() then
        return false
    else
        local c6j_3 = (tonumber(bSf:GetAttribute("MinigameFloor"))) or 0
        if c6j_3 < c6l then
            bSs.LeaveStatus = string.format("Floor %d / %d", c6j_3, c6l)
            return true
        end
        local c6j_4 = string.format("Floor %d, ending the run (%d/%d)", c6l, LeaveController.floorDone + 1, fns.dwb_11.RUN_HEARTS)
        if not fns.dwb_92.spendHeart(LeaveController, "LeaveStatus", c6j_4) then
            return true
        end
        LeaveController.floorDone = LeaveController.floorDone + 1
        bSs.LeaveStatus = string.format("Ending the run (%d/%d)", LeaveController.floorDone, fns.dwb_11.RUN_HEARTS)
        return true
    end
end
function fns.fn3020(aZD)
    local Debree = bSf:FindFirstChild("Debree")
    local c7z = Debree and Debree:FindFirstChild("Regions")
    if not c7z then
        return nil
    end
    for i, child in ipairs(c7z:GetChildren()) do
        local c7y_2 = child:FindFirstChild(aZD)
        if c7y_2 then
            if c7y_2:IsA("Model") then
                return c7y_2:GetPivot().Position, child.Name
            end
            for i, child2 in ipairs(c7y_2:GetChildren()) do
                if child2:IsA("Model") then
                    return child2:GetPivot().Position, child.Name
                end
            end
        end
    end
    return nil
end
function fns.fn3021(l3)
    local b1B = fns.dwb_65()
    local b1C = b1B and b1B:FindFirstChild(l3)
    return b1C or nil
end
function fns.fn3022()
    return bSs.NpcCache
end
function fns.fn3036()
    if not fns.dwb_118() then
        return
    end
    if #bSG() == 0 then
        bSs.SoulStatus = "No souls nearby"
        return
    end
    local c2o = 0
    local c2p = false
    while true do
        local c2q = (fns.dwb_147.controllerValid(bSg.SoulController)) and c2o < 6
        if c2q then
            if bSU("AutoSoul") then
                c2p = true
                break
            end
            task.wait(0.2)
            c2o += 0.2
            continue
        end
        break
    end
    if not c2p then
        bSs.SoulStatus = "Waiting for the character"
        return
    end
    pcall(fns.dwb_92.soulSweep)
    bSu("AutoSoul")
end
function fns.fn3042()
    local Character = LocalPlayer.Character
    local cz2 = Character and Character:FindFirstChildOfClass("Humanoid")
    if not cz2 then
        return false
    end
    local cz2_1 = (Character:GetAttribute("SwimState")) or 0
    if cz2_1 > 0 then
        return false
    end
    return cz2.FloorMaterial ~= Enum.Material.Air
end
function fns.fn3052(bd, be, bf)
    if not bd then
        return nil
    end
    local bVz = bd:FindFirstChild(be)
    if bVz then
        return bVz
    end
    local bVz_1 = bf
    local bVD = if bVz_1 then 1 else 0
    local bVB = 2375 * bVD + 545 * (1 - bVD)
    local bVC = 3597 * bVD + 965 * (1 - bVD)
    if not ((bVB * 761 + bVC * 4085 + bVB * bVC) % 16777213 == 8266782) then
        bVz_1 = 8
    end
    return bd:WaitForChild(be, bVz_1)
end
function fns.fn3053()
    local b23 = type(fns.dwb_26.CombatPresets) == "table" and tonumber(fns.dwb_26.CombatPresets.Last_Punched_Jump)
    return b23 or 0
end
function fns.fn3073()
    return bSs.SellNameCache
end
function fns.fn3084()
    local dk4 = {}
    for i, v in ipairs(bSs.WorldCache) do
        table.insert(dk4, v.name)
    end
    return dk4
end
function fns.fn3092()
    if tweaks2.infStamina then
        fns.dwb_60()
    end
    if tweaks2.noDashCd then
        bRT()
    end
    if tweaks2.infClimb or tweaks2.infHorse or tweaks2.noDrown then
        fns.dwb_97()
    end
    fns.dwb_29()
end
function fns.fn3093()
    if not bQG(fireclickdetector) then
        fns.dwb_71("fireclickdetector")
        return
    end
    local Debree = bSf:FindFirstChild("Debree")
    local cvg = Debree and Debree:FindFirstChild("TargetShootingDarts")
    if not cvg then
        return
    end
    for i, child in ipairs(cvg:GetChildren()) do
        local ClickDetector = child:FindFirstChildWhichIsA("ClickDetector", true)
        if ClickDetector then
            pcall(fireclickdetector, ClickDetector)
        end
    end
end
function fns.fn3104()
    local c0u = os.clock()
    local c0v = 0
    for k, v in pairs(bSg.LootController.attempts) do
        local c0w_1 = v.retryAt or 0
        local c0x = c0u < c0w_1 and k:IsDescendantOf(bSf) and bP1(k)
        if c0x then
            c0v += 1
        end
    end
    for k, v in pairs(fns.dwb_24.retryAt) do
        local c0w_2 = c0u < v and k:IsDescendantOf(bSf) and not fns.dwb_24.isOpened(k)
        if c0w_2 then
            c0v += 1
        end
    end
    return c0v
end
function fns.fn3105(a82)
    local PotionController = bSg.PotionController
    local dfo = type(a82) == "string" and a82
    PotionController.potion = dfo or ""
end
function fns.fn3107(bdh)
    bTE.tweaks.ownership = bdh == true
end
function fns.fn3112()
    if coroutine.status(fns.dwb_121) ~= "dead" then
        pcall(task.cancel, fns.dwb_121)
    end
    for i, v in ipairs(bSg.controllers) do
        fns.dwb_72(v)
    end
    fns.dwb_13(false)
end
function fns.fn3130()
    if bQS.Loop then
        return
    end
    bQS.Loop = task.spawn(function()
        while true do
            local cKA = (fns.dwb_118()) and bQS.Running()
            if cKA then
                pcall(bQS.Sample)
                for i, v in ipairs(bQS.Order) do
                    local cKA_1 = bQS.Channels[v]
                    if cKA_1.Enabled then
                        cKA_1.Waited = cKA_1.Waited + 5
                        if cKA_1.Waited >= cKA_1.Interval * 60 then
                            cKA_1.Waited = 0
                            if bQS.Style == "Loot Drops" then
                                bQS.Reset(cKA_1)
                            else
                                local cKB = bQS.Counted(cKA_1) > 0 or not bQS.SkipQuiet
                                if cKB then
                                    pcall(bQS.Send, cKA_1)
                                else
                                    bQS.Reset(cKA_1)
                                end
                            end
                        end
                    end
                end
                task.wait(5)
                continue
            end
            break
        end
        bQS.Loop = nil
    end)
end
function fns.fn3155()
    local cNo = bQe.playerValues()
    if not cNo then
        return
    end
    for i, child in ipairs(cNo:GetChildren()) do
        onChildAdded(child)
    end
    local cNp = bRf.noRagdoll and cNo:FindFirstChild("noragdoll") == nil
    if cNp then
        local boolValue = Instance.new("BoolValue")
        boolValue.Name = "noragdoll"
        boolValue.Value = true
        boolValue.Parent = cNo
    end
end
function fns.fn3171()
    return (bSg.FishController.ours("FishingLine"))
end
function fns.fn3183()
    return bSs.InMenuPlace == true
end
function fns.fn3184(XZ)
    local csC = fns.dwb_18(XZ)
    local csD = csC and fns.dwb_140(csC)
    local csC_1 = csD
    if csD then
        csD = tonumber(csC_1.WenCostOnAccept)
    end
    local csC_2 = csD
    local csH = if csC_2 then 1 else 0
    local csF = 417 * csH + 1921 * (1 - csH)
    local csG = 1375 * csH + 3631 * (1 - csH)
    if not ((csF * 310 + csG * 1130 + csF * csG) % 16777213 == 2256395) then
        csC_2 = 0
    end
    return csC_2
end
function fns.fn3186()
    local bZr_1
    local bZq = type(fns.dwb_26.PlatformHandler) == "table" and bQG(fns.dwb_26.PlatformHandler.mousepos)
    local bZq_1, bZq_3
    if bZq then
        bZq_1, bZr_1 = fns.dwb_144(fns.dwb_26.PlatformHandler.mousepos)
        local bZs = bZq_1 and typeof(bZr_1) == "Vector3"
        if bZs then
            return bZr_1
        end
        local bZq_2 = fns.dwb_4()
        if bZq_3 then
            return bZq_2.Position + bZq_2.CFrame.LookVector * 10
        end
        return Vector3.zero
    end
    bZq_3 = fns.dwb_4()
    if bZq_3 then
        return bZq_3.Position + bZq_3.CFrame.LookVector * 10
    end
    return Vector3.zero
end
function fns.fn3200()
    local dm8 = fns.dwb_27()
    local dm9 = dm8[1]
    if not dm9 then
        return { quest = "None", progress = "-" }
    end
    local Tasks = dm9.instance:FindFirstChild("Tasks")
    local dna = {}
    if Tasks then
        for i, child in ipairs(Tasks:GetChildren()) do
            local Value = child:FindFirstChild("Value")
            local Max = child:FindFirstChild("Max")
            if Value and Max then
                dna[#dna + 1] = string.format("%s %d/%d", child.Name, Value.Value, Max.Value)
            end
        end
    end
    local Name = dm9.instance.Name
    local dnb_2 = #dna > 0 and table.concat(dna, ", ")
    return { quest = Name, progress = dnb_2 or "-" }
end
function fns.fn3256()
    local clF_1
    local clE = not fns.dwb_118() or bSg.MobController.target == ""
    local clE_1
    if clE then
        return
    end
    fns.dwb_142.commit("AutoMob")
    if not bSU("AutoMob") then
        return
    end
    clE_1, clF_1 = pcall(function()
        local clD = if not fns.dwb_17(20) then 1 else 0
        if clD == 1 then
            bSs.MobStatus = "Waiting for character"
            return
        end
        local cly = bTe(bSg.MobController.target, "MobStatus", 120, bSg.MobController)
        local clz = not cly
        if clz ~= false then
            clz = not bSg.MobController.yield
        end
        if clz then
            clz = not bSg.MobController.stopped
        end
        if clz then
            fns.dwb_142.uncommit("AutoMob")
        end
    end)
    bSu("AutoMob")
    if not clE_1 then
        warn("[Ouroboros] mob step: " .. tostring(clF_1))
    end
end
function fns.fn3258(bdd)
    bTE.setNoSun(bdd)
end
function fns.fn3261(pW)
    local b4q = fns.dwb_99()
    local b4r = b4q and b4q:FindFirstChild("SHC")
    return b4r ~= nil and b4r.Value == pW
end
function fns.fn3267(a6W)
    local ChestController = bSg.ChestController
    local ddF = (tonumber(a6W)) or 3
    ChestController.hopAfter = math.max(1, math.floor(ddF))
end
function fns.fn3268()
    return fns.dwb_92.module("Dialogue module", { "CAM", "Client", "Modules", "GamePlay", "Dialogue" })
end
function fns.fn3297(a7y)
    bQ4.lookAtEnemy = a7y == true
end
function fns.fn3307()
    task.spawn(function()
        pcall(bSg.SellController.step, true)
    end)
end
function fns.fn3325()
    for k, v in pairs(fns.dwb_147.inputs) do
        v.release = true
        fns.dwb_147.inputs[k] = nil
        local bXA = type(fns.dwb_26.InputHandler) == "table" and bQG(fns.dwb_26.InputHandler.VirtualRelease)
        if bXA then
            pcall(fns.dwb_26.InputHandler.VirtualRelease, k)
        end
    end
end
function fns.fn3334()
    local chZ = bSg.DemonController.settings()
    local ch_ = chZ and chZ.LairAttribute
    local ch__1 = type(ch_) == "string" and ch_
    return ch__1 or "IsInMuzanLayor"
end
function fns.fn3335()
    local bWo = (tonumber(fns.dwb_120({ "Wen" }, 0))) or 0
    return bWo
end
function fns.fn3345()
    return fns.dwb_92.module("Worlds module", { "CAM", "Worlds" })
end
function fns.fn3347()
    local b1j_1
    local b1i = type(fns.dwb_26.CharacterInfo) ~= "table" or not bQG(fns.dwb_26.CharacterInfo.Get_equipped_tool)
    local b1i_1
    if b1i then
        return nil
    end
    b1i_1, b1j_1 = fns.dwb_144(fns.dwb_26.CharacterInfo.Get_equipped_tool, LocalPlayer)
    local b1k = b1i_1 and typeof(b1j_1) == "Instance"
    if b1k then
        return b1j_1.Name
    end
    return nil
end
function fns.fn3348()
    local Humanoids = bSf:FindFirstChild("Humanoids")
    local cjL = Humanoids and Humanoids:FindFirstChild("Regions")
    if not cjL then
        return nil
    end
    local cjL_1 = nil
    for i, child in ipairs(cjL:GetChildren()) do
        local ActiveNpcs = child:FindFirstChild("ActiveNpcs")
        local cjM = ActiveNpcs and ActiveNpcs:FindFirstChild("Muzan")
        if cjM then
            for i, child in ipairs(cjM:GetChildren()) do
                local cjK_4 = (child:IsA("Model")) and child:FindFirstChild("HumanoidRootPart")
                if cjK_4 then
                    local cjK_5 = bSg.DemonController.promptIn(child)
                    if cjK_5 then
                        return child, cjK_5
                    end
                    cjL_1 = cjL_1 or child
                end
            end
        end
    end
    return cjL_1, nil
end
function fns.fn3361()
    while fns.dwb_118() do
        pcall(function()
            if not bTE.tweaks.ownership then
                if next(bRu.marks) ~= nil then
                    bRu.clear()
                end
                return
            end
            local cW_ = fns.dwb_4()
            if not cW_ then
                bRu.clear()
                return
            end
            local ownershipRange = bTE.tweaks.ownershipRange
            local cW1 = {}
            for i, v in ipairs(fns.dwb_44()) do
                local model = v.model
                local cW3 = (model:FindFirstChild("HumanoidRootPart")) or model.PrimaryPart
                local cW4 = cW3
                if cW3 then
                    cW3 = cW4:IsA("BasePart")
                end
                if cW3 then
                    cW3 = (cW4.Position - cW_.Position).Magnitude <= ownershipRange
                end
                if cW3 then
                    cW1[model] = true
                    local cW3_1 = fns.dwb_15(model)
                    local cW4_1 = cW4.ReceiveAge == 0 and bTt or bRe
                    cW3_1.FillColor = cW4_1
                    cW3_1.OutlineColor = cW4_1
                end
            end
            for k in pairs(bRu.marks) do
                if not cW1[k] or k.Parent == nil then
                    bTh(k)
                end
            end
        end)
        task.wait(0.2)
    end
end
function fns.fn3368(eC)
    eC = eC or fns.dwb_147.session
    if not eC or fns.dwb_147.session ~= eC then
        return
    end
    eC.stopped = true
    if fns.dwb_147.cancelSkill then
        fns.dwb_147.cancelSkill(eC)
    end
    for k, v in pairs(fns.dwb_147.inputs) do
        if v.owner == eC then
            fns.dwb_147.releaseInput(k, eC)
        end
    end
    if fns.dwb_147.detach then
        fns.dwb_147.detach(eC)
    end
    fns.dwb_147.session = nil
end
function fns.fn3373(bfO)
    if bfO then
        bSs.LootStatus = "Waiting for loot"
        bSg.LootController.running = true
        fns.dwb_53(bSg.LootController, fns.dwb_106)
    else
        bSg.LootController.running = false
        bSg.LootController.pending = false
        bSg.LootController.awaitUntil = 0
        bSg.HuntController.lootUntil = nil
        fns.dwb_72(bSg.LootController)
        bSs.LootStatus = "Idle"
    end
end
function fns.fn3375(atP)
    bQS.WatchDrop(atP)
end
function fns.fn3392(kB)
    local b0g = kB == ""
    local b0h = type(kB) ~= "string"
    local b0m = if b0h then 1 else 0
    local b0k = 1280 * b0m + 3328 * (1 - b0m)
    local b0l = 1422 * b0m + 936 * (1 - b0m)
    if not ((b0k * 1349 + b0l * 3475 + b0k * b0l) % 16777213 == 8488330) then
        b0h = b0g
    end
    if b0h then
        return nil
    end
    local b0g_1 = fns.dwb_11.CODE_MOBS[kB]
    if b0g_1 then
        return b0g_1
    end
    local b0g_2 = kB:gsub("_.*", "")
    if fns.dwb_41(b0g_2) then
        return b0g_2
    end
    local b0h_1 = fns.dwb_92.regions()
    local b0i = type(b0h_1) == "table" and type(b0h_1.NpcSpawns) == "table"
    if b0i then
        local b0i_1 = b0g_2:lower()
        for k in pairs(b0h_1.NpcSpawns) do
            if k:gsub("%s", ""):lower() == b0i_1 then
                return k
            end
        end
    end
    for i, v in ipairs(fns.dwb_11.MOB_NAMES) do
        if v:gsub("%s", ""):lower() == b0g_2:lower() then
            return v
        end
    end
    return nil
end
function fns.fn3393()
    task.delay(0, fns.dwb_92.worldStep)
end
function fns.fn3413()
    return fns.dwb_142.active and bSs.PriorityHolder or "None"
end
function fns.fn3425(a9K)
    if a9K then
        fns.dwb_74("AutoLegendaryRod")
        bSg.RodController.cursor = 1
        bSg.RodController.catches = 0
        bSg.RodController.nextDue = 0
        bSs.RodStatus = "Starting"
        bSg.RodController.running = true
        fns.dwb_53(bSg.RodController, bSg.RodController.step)
    else
        bSg.RodController.running = false
        fns.dwb_72(bSg.RodController)
        bSs.RodStatus = "Idle"
    end
end
function fns.fn3426()
    return bSg.CrystalController.points()
end
function fns.fn3447()
    local previous = bSg.DemonController.previous
    bSg.DemonController.previous = nil
    if previous then
        fns.dwb_56(previous)
    end
    bQu()
end
function fns.fn3449()
    fns.dwb_24.notices:Disconnect()
end
function fns.fn3450()
    bSg.SellController.nextDue = os.clock() + bSg.SellController.settle
end
function fns.fn3468(AG)
    if AG then
        local cbZ = coroutine.running()
        local cb_ = { thread = cbZ, run = fns.dwb_147.runs[cbZ] }
        fns.dwb_142.wants[AG] = cb_
        return cb_
    end
end
function fns.fn3502(Bs)
    local ccE = fns.dwb_142.commitments[Bs]
    if not ccE then
        return false
    end
    local ccF = fns.dwb_142.byKey[Bs]
    local ccG = ccF and ccF.controller
    if not ccG or ccG.running ~= true or ccG.stopped then
        fns.dwb_142.commitments[Bs] = nil
        return false
    end
    local ccF_2 = os.clock()
    if ccF_2 - ccE.at > fns.dwb_142.COMMIT_WINDOW or ccF_2 - (fns.dwb_142.lastClaim[Bs] or ccE.at) > fns.dwb_142.COMMIT_WINDOW then
        fns.dwb_142.commitments[Bs] = nil
        return false
    end
    return true
end
function fns.fn3527(a4Q)
    if a4Q then
        fns.dwb_74("AutoDungeon")
        bSs.DungeonStatus = "Starting"
        bSg.DungeonController.running = true
        fns.dwb_53(bSg.DungeonController, fns.dwb_134.farm)
    else
        bSg.DungeonController.running = false
        fns.dwb_72(bSg.DungeonController)
        bSs.DungeonStatus = "Idle"
    end
end
function fns.fn3528()
    if not fns.dwb_118() then
        return
    end
    local ResetController = bSg.ResetController
    if not bQe.inDungeon() then
        bSs.ResetStatus = "Only resets on a run"
        ResetController.done, ResetController.runKey = 0, nil
        return
    end
    local c5Z = fns.dwb_92.runKey()
    if ResetController.runKey ~= c5Z then
        ResetController.runKey, ResetController.done = c5Z, 0
    end
    if ResetController.done >= ResetController.resets then
        bSs.ResetStatus = string.format("Reset %d/%d, run is over", ResetController.done, ResetController.resets)
        return
    end
    local c5Z_1 = (tonumber(LocalPlayer:GetAttribute("RunPoints"))) or 0
    if c5Z_1 < ResetController.target then
        bSs.ResetStatus = string.format("%d / %d points", c5Z_1, ResetController.target)
        return
    end
    local c5Z_2 = string.format("Resetting (%d/%d)", ResetController.done + 1, ResetController.resets)
    if not fns.dwb_92.spendHeart(ResetController, "ResetStatus", c5Z_2) then
        return
    end
    ResetController.done = ResetController.done + 1
    bSs.ResetStatus = string.format("Reset %d/%d", ResetController.done, ResetController.resets)
end
function fns.fn3538()
    bRf.noSun = false
    local cN0 = fns.dwb_81 and type(fns.dwb_26.SignalFunction) == "table"
    if cN0 then
        fns.dwb_26.SignalFunction.ToServer = fns.dwb_81
        fns.dwb_81 = nil
    end
end
function fns.fn3542(aZn)
    local c7d_1
    local c7c_1
    if typeof(aZn) ~= "Vector3" then
        return nil
    end
    c7d_1, c7c_1 = nil, nil
    for k, v in pairs(bTE.zonePoints()) do
        if k ~= "Misc" then
            local Magnitude = (v - aZn).Magnitude
            if not c7c_1 or Magnitude < c7c_1 then
                c7d_1, c7c_1 = k, Magnitude
            end
        end
    end
    return c7d_1
end
function fns.fn3585(beN)
    if typeof(beN) ~= "Vector3" then
        return ""
    end
    return string.format("%.1f, %.1f, %.1f", beN.X, beN.Y, beN.Z)
end
function fns.fn3589()
    local c6H_1
    if not fns.dwb_118() then
        return
    end
    local WorldController = bSg.WorldController
    local c6C = WorldController.world == nil or WorldController.world == ""
    local c6C_4
    if c6C then
        bSs.WorldStatus = "Pick a world"
        return
    end
    if not bQe.inMenuPlace() then
        bSs.WorldStatus = "Already in a world"
        return
    end
    local c6C_1 = fns.dwb_92.worldsModule()
    local c6D = type(c6C_1) == "table" and type(c6C_1.ByName) == "table" and c6C_1.ByName[WorldController.world]
    local c6C_2 = c6D
    if c6D then
        c6D = tonumber(c6C_2.Id)
    end
    local c6E = c6D
    if not c6E then
        bSs.WorldStatus = "Unknown world"
        return
    end
    local c6D_1 = fns.dwb_92.teleporter()
    local c6F = type(c6D_1) ~= "table" or not bQG(c6D_1.Request)
    if c6F then
        bSs.WorldStatus = "Teleporter is not available here"
        return
    end
    local privateOwner = WorldController.privateOwner
    local c6G = type(privateOwner) ~= "string"
    local c6G_2
    local c6L = if c6G then 1 else 0
    local c6J = 1230 * c6L + 1680 * (1 - c6L)
    local c6K = 2306 * c6L + 2597 * (1 - c6L)
    if not ((c6J * 2343 + c6K * 2519 + c6J * c6K) % 16777213 == 11527084) then
        c6G = privateOwner:find("%S") == nil
    end
    if c6G then
        privateOwner = nil
    elseif c6C_2.PrivateServerHostable ~= true then
        bSs.WorldStatus = WorldController.world .. " has no private servers"
        return
    end
    local c6G_1 = privateOwner and WorldController.world .. " (" .. privateOwner .. ")" or WorldController.world
    bSs.WorldStatus = "Joining " .. c6G_1
    c6C_4, c6G_2, c6H_1 = pcall(c6D_1.Request, { placeId = c6E, privateOwner = privateOwner })
    if not c6C_4 then
        bSs.WorldStatus = "Join failed: " .. tostring(c6G_2)
    elseif c6G_2 ~= true then
        local c6C_5 = type(c6H_1) == "string" and c6H_1
        bSs.WorldStatus = "Join refused: " .. (c6C_5 or "retrying")
    else
        bSs.WorldStatus = "Teleporting to " .. c6G_1
    end
end
function fns.fn3590()
    if bSg.Alerts.enabled() then
        fns.dwb_53(bSg.Alerts, bSg.Alerts.step)
    else
        fns.dwb_72(bSg.Alerts)
    end
end
function fns.fn3621(aop)
    local cFt_1
    local cFr = bQe.dialogue()
    local cFs = type(cFr) == "table" and cFr.Diagloues
    local cFs_3
    local cFs_1 = cFs or nil
    local cFr_2 = type(cFs_1) == "table" and cFs_1[aop]
    local cFs_2 = cFr_2 or nil
    if type(cFs_2) ~= "table" then
        return nil
    elseif not bQG(cFs_2.BeforeRun) then
        return aop
    else
        cFs_3, cFt_1 = fns.dwb_144(cFs_2.BeforeRun)
        if not cFs_3 then
            return nil
        end
        local cFr_4 = cFt_1 == ""
        local cFs_4 = type(cFt_1) ~= "string" or cFr_4
        if cFs_4 then
            return aop
        end
        return cFt_1
    end
end
function fns.fn3638()
    return fns.UserGameSettings.RotationType == Enum.RotationType.CameraRelative
end
function fns.fn3642(JM)
    return fns.dwb_70(JM) ~= nil
end
function fns.fn3643(aTc)
    for i, v in ipairs(bSs.GamemodeCache) do
        if v.label == aTc then
            return v.name
        end
    end
    return nil
end
function fns.fn3644(are, arf)
    table.insert(bQS.Queue, { url = are, payload = arf })
    while #bQS.Queue > 12 do
        table.remove(bQS.Queue, 1)
    end
    bQS.Drain()
end
function fns.fn3683(eT)
    return Vector3.zero, eT.height
end
function fns.fn3695()
    local dno = (bQe.inDungeon()) and 15
    local dnp = dno or fns.dwb_11.BOOT_TIMEOUT
    local dnp_1 = os.clock() + dnp
    while true do
        local dno_2 = (fns.dwb_118()) and os.clock() < dnp_1
        if dno_2 then
            if fns.dwb_82() then
                return true
            end
            task.wait(0.25)
            continue
        end
        break
    end
    return fns.dwb_82() ~= nil
end
function fns.fn3698(ahn, aho)
    local cz5 = {}
    for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("SwimParts")) do
        local cz6_1 = #cz5 + 1
        cz5[cz6_1] = v.Parent or v
    end
    if #cz5 == 0 then
        return nil
    end
    local cz6_2 = RaycastParams.new()
    cz6_2.FilterType = Enum.RaycastFilterType.Include
    cz6_2.FilterDescendantsInstances = cz5
    cz6_2.BruteForceAllSlow = true
    local cz5_1 = math.max(ahn.Y, aho.Y) + 50
    local cz7_2 = Vector3.new(ahn.X, cz5_1, ahn.Z)
    local cz8 = Vector3.new(0, -(cz5_1 - ahn.Y + 25), 0)
    local cz5_2 = workspace:Raycast(cz7_2, cz8, cz6_2)
    local cz6_4 = cz5_2 and cz5_2.Instance or nil
    if cz6_4 ~= nil and cz6_4.Name == "Texture" and cz6_4.Parent then
        cz6_4 = cz6_4.Parent:FindFirstChild("TouchPart")
    end
    local cz9_2 = cz6_4 == nil or cz6_4.Name ~= "TouchPart" or not fns.dwb_51.CollectionService:HasTag(cz6_4, "SwimParts")
    if cz9_2 then
        return nil
    end
    local cz6_5 = RaycastParams.new()
    cz6_5.FilterType = Enum.RaycastFilterType.Exclude
    cz6_5.FilterDescendantsInstances = { bSf:FindFirstChild("Debree"), LocalPlayer.Character }
    local cz9_3 = workspace:Raycast(cz7_2, cz8, cz6_5)
    if cz9_3 and cz9_3.Position.Y > cz5_2.Position.Y then
        return nil
    end
    return cz5_2.Position
end
function fns.fn3702()
    local bWE = fns.dwb_104()
    local bWF = bWE ~= nil and bWE.Health > 0 and fns.dwb_4() ~= nil
    return bWF
end
function fns.onTeleportInitFailed(V5, V6, V7)
    local ChestController = bSg.ChestController
    local cq5 = V5 ~= LocalPlayer or os.clock() >= ChestController.hopUntil
    if cq5 then
        return
    end
    if ChestController.hopTarget then
        ChestController.badServers[ChestController.hopTarget] = true
    end
    ChestController.hopUntil = os.clock() + fns.dwb_11.HOP_RETRY
    if ChestController.running then
        local cq5_1 = V7 ~= "" and V7 or V6
        bSs.ChestStatus = "Hop failed, retrying: " .. tostring(cq5_1)
    end
end
function fns.fn3723(a7A)
    local dea = (tonumber(a7A)) or 3
    bQ4.offset = math.clamp(dea, 0, 100)
end
function fns.fn3737(aKr)
    local cWU = bRu.marks[aKr]
    if cWU and cWU.Parent then
        return cWU
    end
    local highlight = Instance.new("Highlight")
    highlight.Name = "OuroborosOuwlandOwnership"
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.FillTransparency = 0.7
    highlight.OutlineTransparency = 0
    highlight.Adornee = aKr
    highlight.Parent = aKr
    bRu.marks[aKr] = highlight
    return highlight
end
function fns.fn3761(r5)
    local b5M_1
    local b5L_1
    b5L_1, b5M_1 = fns.dwb_147.timing(r5)
    local b5L_2 = fns.dwb_26.CombatPresets and fns.dwb_26.CombatPresets.slow_walk_duration
    local b5N = (tonumber(b5L_2)) or 0
    local b5N_1 = not fns.dwb_147.inputs.Combat
    if b5N_1 then
        local b5O = os.clock()
        local b5P = (fns.dwb_147.stamp()) or 0
        local b5R = b5M_1 or 0
        b5N_1 = b5O >= b5P + math.max(b5R, b5N) + 0.05
    end
    return b5N_1
end
function fns.fn3762(ao, ap)
    return string.format('<font color="%s">%s</font>  <font color="%s">%s</font>', fns.dwb_80, fns.dwb_19(ao), fns.dwb_93, fns.dwb_19(ap))
end
function fns.fn3794()
    if not fns.dwb_118() then
        return
    end
    if bSf:GetAttribute("MinigameWaveBreak") == nil then
        bSg.WaveController.voted = false
        bSs.WaveStatus = "Waiting for a wave break"
        return
    end
    if LocalPlayer:GetAttribute("Spectating") == true then
        bSs.WaveStatus = "Spectating"
        return
    end
    local cm4 = (tonumber(bSf:GetAttribute("MinigameSkipVotes"))) or 0
    local cm4_1 = (tonumber(bSf:GetAttribute("MinigameSkipNeeded"))) or 0
    if bSg.WaveController.voted then
        local cm4_2 = cm4_1 > 0 and string.format("Skip voted %d/%d", cm4, cm4_1)
        local cm5_1 = cm4_2
        local cna = if cm5_1 then 1 else 0
        local cm8 = 2948 * cna + 2256 * (1 - cna)
        local cm9 = 2539 * cna + 1670 * (1 - cna)
        if not ((cm8 * 75 + cm9 * 1216 + cm8 * cm9) % 16777213 == 10793496) then
            cm5_1 = "Skip voted"
        end
        bSs.WaveStatus = cm5_1
        return
    end
    bSg.WaveController.voted = true
    bSs.WaveStatus = "Voting to skip"
    bQR("OuwigaharaRequest", { action = "Skip" })
end
function fns.fn3803(aro, arp, arq)
    if arp == nil or arp <= 0 then
        return
    end
    local cHO_1 = arq and bQS.Channels[arq]
    local cHP = cHO_1 or bQS.Current()
    local Tally = cHP.Tally
    Tally[aro] = (cHP.Tally[aro] or 0) + arp
end
function fns.fn3819()
    local cv3 = fns.dwb_4()
    local Debree = bSf:FindFirstChild("Debree")
    if not cv3 or not Debree then
        return nil
    end
    for i, child in ipairs(Debree:GetChildren()) do
        local Weld = child:FindFirstChild("Weld")
        local cv5_1 = Weld and Weld:IsA("Weld") and Weld.Part0 == cv3
        if cv5_1 then
            local cv4_2 = (child:IsA("BasePart")) and child
            local cv5_2 = cv4_2 or child:FindFirstChildWhichIsA("BasePart", true)
            return cv5_2
        end
    end
    return nil
end
function fns.fn3849(bgd)
    local dlc = fns.dwb_90(bgd)
    local dld = {}
    for i, v in ipairs(bSs.GamemodeCache) do
        if dlc[v.label] then
            table.insert(dld, v.label)
        end
    end
    bSg.QueueController.modes = dld
    bSg.QueueController.cursor = 0
end
function fns.fn3854(a94)
    local CrystalController = bSg.CrystalController
    local dgf = (tonumber(a94)) or 0
    CrystalController.reserve = math.max(0, math.floor(dgf))
end
function fns.fn3857(YE, YF)
    local ctk_1
    local ctj_1
    local cti = bSg.TrainController.folder(YE)
    if not cti then
        return nil
    end
    ctk_1, ctj_1 = nil, nil
    for i, descendant in ipairs(cti:GetDescendants()) do
        local cti_1 = (descendant:IsA("ProximityPrompt")) and descendant.Enabled
        if cti_1 then
            local cti_2 = 0
            if YF then
                local ctl_1 = bSg.TrainController.anchor(descendant)
                cti_2 = ctl_1 and (ctl_1.Position - YF).Magnitude or math.huge
            end
            if not ctk_1 or cti_2 < ctj_1 then
                ctk_1, ctj_1 = descendant, cti_2
            end
        end
    end
    return ctk_1
end
function fns.fn3869(eS)
    return eS.side * eS.radius, eS.height
end
function fns.fn3876()
    return fns.dwb_92.module("Menu validators", { "CAM", "Global", "MainMenuRelay", "Validators" })
end
function fns.fn3878(ai0)
    return bRD(function()
        return bSg.FishController.answerBites() == true
    end, 3, ai0)
end
function fns.fn3890(baS)
    bQS.Ping = baS == true
end
function fns.fn3908()
    for k, v in pairs(bSg.Alerts.on) do
        if v then
            return true
        end
    end
    return false
end
function fns.fn3933()
    return bSs.ClanHoldCache
end
function fns.fn3941(aC7, aC8)
    local cRQ_1
    local cRO = aC7 and aC7.AnimationId:match("%d+")
    local cRO_3
    local cRP = cRO
    if cRO then
        cRO = fns.dwb_30
    end
    if cRO then
        cRO = fns.dwb_30[cRP]
    end
    local cRP_1 = cRO
    if not cRP_1 then
        return nil
    elseif #cRP_1 == 1 then
        return cRP_1[1]
    else
        for i, v in ipairs(cRP_1) do
            if aC7.Parent and aC7.Parent.Name == v.folder then
                return v
            end
        end
        local cRO_2 = type(fns.dwb_26.CharacterInfo) == "table" and bQG(fns.dwb_26.CharacterInfo.Get_equipped_tool)
        if cRO_2 then
            cRO_3, cRQ_1 = fns.dwb_144(fns.dwb_26.CharacterInfo.Get_equipped_tool, aC8)
            if cRO_3 and cRQ_1 then
                for i, v in ipairs(cRP_1) do
                    if cRQ_1.Name == v.name then
                        return v
                    end
                end
            end
        end
        local cRO_4 = cRP_1[1]
        for i, v in ipairs(cRP_1) do
            if v.preset ~= cRO_4.preset or v.combo ~= cRO_4.combo or v.running ~= cRO_4.running then
                return nil, "ambiguous"
            end
        end
        return cRO_4
    end
end
function fns.fn3962(al2, al3, al4)
    local cDV_1
    local cDU = al4
    local cDU_1
    local cD1 = if cDU then 1 else 0
    local cD_ = 3216 * cD1 + 3529 * (1 - cD1)
    local cD0 = 563 * cD1 + 2521 * (1 - cD1)
    if not ((cD_ * 2079 + cD0 * 2684 + cD_ * cD0) % 16777213 == 10007764) then
        cDU = "FishStatus"
    end
    al4 = cDU
    bSs[al4] = "Casting"
    if not bSg.FishController.cast(al2, al3) then
        bSs[al4] = "Cannot cast from here"
        return nil, "nocast"
    end
    bSs[al4] = "Waiting for a bite"
    cDV_1, cDU_1 = nil, nil
    local cDW = 0
    while true do
        local cDX = cDW < 45 and not al3()
        if cDX then
            cDV_1, cDU_1 = bSg.FishController.catch()
            if cDV_1 then
                break
            end
            local cDX_1 = cDW > 4 and not bSg.FishController.bobber()
            if cDX_1 then
                local cDX_2 = os.clock() + 4
                while true do
                    local cDY = os.clock() < cDX_2 and not al3()
                    if cDY then
                        cDV_1, cDU_1 = bSg.FishController.catch()
                        if cDV_1 then
                            break
                        end
                        task.wait(0.1)
                        continue
                    end
                    break
                end
                break
            end
            task.wait(0.1)
            cDW += 0.1
            continue
        end
        break
    end
    if al3() then
        return nil, "cancelled"
    elseif not cDV_1 then
        bSs[al4] = "The line came back empty"
        return nil, "empty"
    else
        bSg.FishController.collect(cDV_1, cDU_1, al3)
        return cDV_1, "caught"
    end
end
function fns.fn3967(bgT)
    if bgT then
        bSs.OpenStatus = "Starting"
        bSg.OpenController.running = true
        bSg.OpenController.opened = 0
        bSg.OpenController.emptyAt = 0
        table.clear(bSg.OpenController.fired)
        fns.dwb_53(bSg.OpenController, fns.dwb_92.openStep)
    else
        bSg.OpenController.running = false
        fns.dwb_72(bSg.OpenController)
        bSs.OpenStatus = "Idle"
    end
end
function fns.fn3969(ah0)
    local Debree = bSf:FindFirstChild("Debree")
    local Character = LocalPlayer.Character
    if not Debree or not Character then
        return nil
    end
    for i, child in ipairs(Debree:GetChildren()) do
        if child.Name:sub(1, #ah0) == ah0 then
            local cAK_1 = (child:IsA("BasePart")) and child
            local cAM_1 = cAK_1 or child:FindFirstChild("Root") or child:FindFirstChildWhichIsA("BasePart", true)
            local cAK_2 = cAM_1
            if cAM_1 then
                cAM_1 = cAK_2:FindFirstChild("FishingLine")
            end
            local cAN_1 = cAM_1
            if cAM_1 then
                cAM_1 = cAN_1:IsA("RopeConstraint")
            end
            if cAM_1 then
                local Attachment0 = cAN_1.Attachment0
                local cAN_2 = Attachment0 and Attachment0:IsDescendantOf(Character)
                if cAN_2 then
                    return child, cAK_2
                end
            end
        end
    end
    return nil
end
function fns.fn3971(anE, anF)
    local cE8_2
    if fns.dwb_52(anE) <= 0 then
        if anE ~= fns.dwb_11.STARTER_ROD then
            bSg.RodController.pause("No " .. anE .. " in the bag")
            return false
        end
        local cE6_1 = not bSg.FishController.earnPermit(anF)
        local cFc = if cE6_1 then 1 else 0
        local cFa = 4047 * cFc + 3216 * (1 - cFc)
        local cFb = 3913 * cFc + 3820 * (1 - cFc)
        if not ((cFa * 2935 + cFb * 3293 + cFa * cFb) % 16777213 == 7044939) then
            cE6_1 = anF()
        end
        if cE6_1 then
            if not anF() then
                bSg.RodController.pause(bSs.FishStatus)
            end
            return false
        end
        bSs.RodStatus = "Buying a " .. anE
        bPS(anE, 1, bSg.RodController, "RodStatus")
        local cE6_2 = (anF()) or fns.dwb_52(anE) <= 0
        if cE6_2 then
            return false
        end
        fns.dwb_62(anE)
        fns.bSv()
        if cE8_2 then
            if not bQe.holdItem(anE) then
                bSg.RodController.pause("Cannot equip the " .. anE)
                return false
            end
            return not anF()
        end
        return not anF()
    end
    local cE6_4 = fns.dwb_62(anE)
    local cE7_2 = fns.bSv()
    cE8_2 = not cE6_4 or not cE7_2 or tonumber(cE7_2.Value) ~= cE6_4
    if cE8_2 then
        if not bQe.holdItem(anE) then
            bSg.RodController.pause("Cannot equip the " .. anE)
            return false
        end
        return not anF()
    end
    return not anF()
end
function fns.fn3975()
    local cuX = bSg.TrainController.part("tracker")
    local cuY = cuX and cuX.Parent and cuX.Parent:FindFirstChild("Bar")
    local cuZ = not cuX
    if not cuZ then
        cuZ = not cuY
    end
    if not cuZ then
        cuZ = cuX.AbsoluteSize.Y <= 0
    end
    if cuZ then
        return
    end
    local cuY_1 = cuX.AbsolutePosition.Y + cuX.AbsoluteSize.Y / 2
    local cuX_1 = cuY.AbsolutePosition.Y + cuY.AbsoluteSize.Y / 2
    bSg.TrainController.pointer.hold(cuX_1 > cuY_1, bSg.TrainController.clearPoint())
end
function fns.fn4001(aZc, aZd)
    local c63_1
    local c62_1
    local c6_ = bSg.Alerts.timedVendor()
    local c60 = type(c6_) ~= "table" or not bQG(c6_.GetState)
    if c60 then
        return nil
    end
    local GetState = c6_.GetState
    local c61 = aZd or 1
    c62_1, c63_1 = fns.dwb_144(GetState, { TimedEvent = aZc, ActiveFor = c61 })
    local c6__1 = not c62_1 or type(c63_1) ~= "table" or type(c63_1.Cycle) ~= "number"
    if c6__1 then
        return nil
    end
    return c63_1
end
function fns.fn4036(aLx, aLy, aLz, aLA)
    if bTu.entries[aLx] then
        return
    end
    local folder = Instance.new("Folder")
    folder.Name = "Entry"
    folder.Parent = bRi.container()
    local cXD = bRi.newFrame(folder, 2)
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Thickness = 1
    uIStroke.Color = Color3.fromRGB(255, 255, 255)
    uIStroke.Parent = cXD
    local cXF = table.create(12)
    local cXL = 1
    while cXL <= 12 do
        local cXM = cXL
        cXF[cXM] = bRi.newFrame(folder, 3)
        cXL += 1
    end
    local cXG = bRi.newFrame(folder, 2)
    cXG.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    local cXH = bRi.newFrame(folder, 3)
    cXH.AnchorPoint = Vector2.new(0.5, 1)
    bTu.entries[aLx] = {
        instance = aLx,
        part = bRi.anchorPart(aLx),
        label = aLy,
        category = aLz,
        player = aLA,
        humanoid = aLx:FindFirstChildOfClass("Humanoid"),
        holder = folder,
        box = cXD,
        stroke = uIStroke,
        lines = cXF,
        tracer = bRi.newFrame(folder, 2),
        name = bRi.newLabel(folder, 4),
        distance = bRi.newLabel(folder, 4),
        info = bRi.newLabel(folder, 4),
        healthText = bRi.newLabel(folder, 4),
        healthBack = cXG,
        healthFill = cXH
    }
end
function fns.fn4056(aLf, aLg)
    local textLabel = Instance.new("TextLabel")
    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromOffset(240, 14)
    textLabel.Font = Enum.Font.BuilderSansBold
    textLabel.TextSize = 13
    textLabel.TextStrokeTransparency = 0.4
    textLabel.Visible = false
    textLabel.ZIndex = aLg
    textLabel.Parent = aLf
    return textLabel
end
function fns.fn4065(ol)
    local b29_1
    local b26 = ol and ol.timing and os.clock() < ol.timing.expires
    if b26 then
        return ol.timing.longest, ol.timing.duration, ol.timing.error
    end
    local b26_1 = fns.dwb_96()
    local b27 = b26_1 and fns.dwb_21(b26_1)
    local b27_3
    if not b27 then
        local b26_2 = b26_1 and "No combat preset for " .. b26_1 or "No combat equipment ready"
        if ol then
            ol.timing = { expires = os.clock() + 0.5, error = b26_2 }
        end
        return nil, nil, b26_2
    end
    local b26_3 = 1
    if bQG(fns.dwb_26.CombatPresets.attackSpeedMult) then
        b27_3, b29_1 = fns.dwb_144(fns.dwb_26.CombatPresets.attackSpeedMult, LocalPlayer)
        local b3a_1 = b27_3 and type(b29_1) == "number" and b29_1 > 0
        if b3a_1 then
            b26_3 = b29_1
        end
    end
    local b27_4 = 0
    local max2 = math.max
    local b3a_2 = (tonumber(b27.Max)) or 5
    local b3b = max2(7, b3a_2)
    local b3f = 1
    while b3f <= b3b do
        local b3g = b3f
        local b29_3 = b27.delay_before_swing
        if b29_3 then
            b29_3 = b27.delay_before_swing[b3g]
        end
        local b29_4 = b29_3 or b27.default_before_swing or fns.dwb_26.CombatPresets.Default_Swing_Wait or 0
        local b29_5 = b27.delay_before_hit
        if b29_5 then
            b29_5 = b27.delay_before_hit[b3g]
        end
        local b29_6 = b29_5 or b27.default_before_hit or b29_4
        b27_4 = math.max(b27_4, b29_4 + math.max(0, (b29_6 - b29_4) / b26_3))
        b3f += 1
    end
    local max = math.max
    local b26_4 = (tonumber(b27.default))
    local b3k = if b26_4 then 1 else 0
    local b3i = 2584 * b3k + 2471 * (1 - b3k)
    local b3j = 1856 * b3k + 3677 * (1 - b3k)
    if not ((b3i * 3570 + b3j * 1606 + b3i * b3j) % 16777213 == 224307) then
        b26_4 = 0.25
    end
    local b3a_5 = (tonumber(b27.final))
    local b3k_1 = if b3a_5 then 1 else 0
    local b3i_1 = 3778 * b3k_1 + 1705 * (1 - b3k_1)
    local b3j_1 = 3702 * b3k_1 + 3853 * (1 - b3k_1)
    if not ((b3i_1 * 969 + b3j_1 * 396 + b3i_1 * b3j_1) % 16777213 == 2335817) then
        b3a_5 = 0.25
    end
    local b28_1 = max(b26_4, b3a_5)
    if ol then
        ol.timing = { expires = os.clock() + 0.5, longest = b28_1, duration = b27_4 }
    end
    return b28_1, b27_4
end
function fns.fn4074(Bc)
    local ccl = not Bc
    local ccm = not fns.dwb_142.active
    local ccr = if ccm then 1 else 0
    local ccp = 38 * ccr + 2917 * (1 - ccr)
    local ccq = 4013 * ccr + 2843 * (1 - ccr)
    if not ((ccp * 3977 + ccq * 3717 + ccp * ccq) % 16777213 == 15219941) then
        ccm = ccl
    end
    if ccm then
        return false
    end
    local ccl_1 = os.clock()
    for i, v in ipairs(fns.dwb_142.features) do
        if v.key ~= Bc and v.moves ~= false and v.controller.running then
            local ccm_2 = fns.dwb_142.holder == v.key or fns.dwb_142.wanted(v.key)
            if ccm_2 then
                return true
            end
            local ccm_3 = fns.dwb_142.lastClaim[v.key] or v.controller.startedAt
            if not ccm_3 or ccl_1 - ccm_3 < fns.dwb_142.DEMAND_WINDOW then
                return true
            end
        end
    end
    return false
end
function fns.fn4082(a9f)
    local ShopController = bSg.ShopController
    local dfC = (tonumber(a9f)) or 1
    ShopController.keep = math.clamp(math.floor(dfC), 1, 25)
end
function fns.fn4095()
    local bZJ = {}
    local bZK = bQF()
    if not bZK then
        return bZJ
    end
    for i, child in ipairs(bZK:GetChildren()) do
        local ActiveNpcs = child:FindFirstChild("ActiveNpcs")
        if ActiveNpcs then
            for i, child2 in ipairs(ActiveNpcs:GetChildren()) do
                bZJ[#bZJ + 1] = { region = child.Name, folder = child2 }
            end
        end
    end
    return bZJ
end
function fns.fn4109(afJ)
    local Debree = bSf:FindFirstChild("Debree")
    local cy1 = Debree and Debree:FindFirstChild("Regions")
    if not cy1 then
        return nil
    end
    for i, child in ipairs(cy1:GetChildren()) do
        local StationaryNpcs = child:FindFirstChild("StationaryNpcs")
        if StationaryNpcs then
            for i, descendant in ipairs(StationaryNpcs:GetDescendants()) do
                local cy0_3 = (descendant:IsA("ProximityPrompt")) and descendant.ActionText == "Purchase" and descendant.ObjectText == afJ
                if cy0_3 then
                    return descendant
                end
            end
        end
    end
    return nil
end
function fns.fn4132(asB)
    local cI5_1
    local cI4 = not asB.Events.Items or #asB.Items == 0
    local cI4_1
    if cI4 then
        return nil
    end
    cI5_1, cI4_1 = {}, {}
    for i, v in ipairs(asB.Items) do
        local cI6_1 = cI5_1[v.name]
        if not cI6_1 then
            cI6_1 = { count = 0, category = v.category }
            cI5_1[v.name] = cI6_1
            table.insert(cI4_1, v.name)
        end
        cI6_1.count = cI6_1.count + 1
    end
    table.sort(cI4_1)
    local cI6_2 = {}
    for i, v in ipairs(cI4_1) do
        if #cI6_2 >= 10 then
            table.insert(cI6_2, ("› *and %d more*"):format(#cI4_1 - #cI6_2))
            break
        else
            local cI7 = cI5_1[v]
            local cI8 = ("› **%s**  ·  %s"):format(v, cI7.category)
            if cI7.count > 1 then
                cI8 ..= ("   ×%d"):format(cI7.count)
            end
            table.insert(cI6_2, cI8)
        end
    end
    return { name = "Items Obtained", value = table.concat(cI6_2, "\n"), inline = false }
end
function fns.fn4136()
    local marks = bSg.Alerts.marks
    local c8K = marks.hunt ~= nil
    marks.hunt = true
    local c8L = {}
    for i, v in ipairs(bSg.HuntController.offers()) do
        c8L["hunt:" .. v.id] = true
        if bSg.Alerts.fresh("hunt:" .. v.id, v.quest, c8K) then
            local c8M_1 = v.tier ~= "" and v.tier .. " " or ""
            bSg.Alerts.push("New " .. c8M_1 .. "boss hunt posted: " .. v.boss, bTH(v.boss))
        end
    end
    for k in pairs(marks) do
        local c8K_1 = k:sub(1, 5) == "hunt:" and not c8L[k]
        if c8K_1 then
            marks[k] = nil
        end
    end
end
function fns.fn4153()
    return bSg.CrystalController.price()
end
function fns.fn4154()
    local dbL = {}
    for i, v in ipairs(bSg.SchematicRunner.entries()) do
        dbL[#dbL + 1] = v.name
    end
    return dbL
end
function fns.fn4162(aMS)
    bTi.distance = aMS ~= false
end
function fns.fn4172(Is)
    if bQi(bSg.HuntController.tiers) == 0 then
        return true
    end
    return bSg.HuntController.tiers[Is.tier] == true
end
function fns.fn4174()
    fns.dwb_13(false)
end
function fns.fn4187()
    local dab = {}
    for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("StudyProp")) do
        local attr = v:GetAttribute("Item")
        local dad = (v:IsA("Model")) and type(attr) == "string"
        if dad then
            dab[#dab + 1] = { name = attr, model = v }
        end
    end
    table.sort(dab, function(a1s, a1t)
        return a1s.name < a1t.name
    end)
    return dab
end
function fns.fn4194(bgv)
    if bgv then
        bSs.ReadyStatus = "Starting"
        bSg.ReadyController.running = true
        table.clear(bSg.ReadyController.fired)
        fns.dwb_53(bSg.ReadyController, fns.dwb_92.readyStep)
    else
        bSg.ReadyController.running = false
        fns.dwb_72(bSg.ReadyController)
        bSs.ReadyStatus = "Idle"
    end
end
function fns.fn4224()
    local cUp_1
    local cUo_2, cUo_6
    local cUn_5
    fns.dwb_123.ParryReservedUntil = 0
    local cUl = not fns.dwb_118() or not fns.dwb_43.on
    if cUl then
        return
    end
    local cUl_1 = os.clock()
    local cUm
    for k, v in pairs(bTF) do
        local cUn_1 = not bTs(v) or cUl_1 - v.created > fns.dwb_68.threatLifetime
        if cUn_1 then
            fns.dwb_149(k, true)
        elseif not v.initialized then
            fns.dwb_35(v, cUl_1)
        end
        local cUn_2 = bTF[k] and v.initialized and bTs(v)
        if cUn_2 then
            bSe(v, cUl_1)
            if cUl_1 > v.latest then
                local stats = fns.dwb_43.stats
                stats.missed = stats.missed + 1
                fns.dwb_149(k, false)
            elseif fns.dwb_84(v.model, v.info.reach, fns.dwb_68.reachPad, true, math.max(0, v.impact - cUl_1), v.info) then
                if v.due - cUl_1 <= fns.dwb_68.reserveAhead then
                    fns.dwb_123.ParryReservedUntil = math.max(fns.dwb_123.ParryReservedUntil, v.latest)
                end
                local cUn_3 = cUl_1 >= v.due
                if cUn_3 then
                    cUn_3 = not cUm or v.latest < cUm.latest
                end
                if cUn_3 then
                    cUm = v
                end
            end
        end
    end
    local cUn_4 = bQe.playerValues()
    if not cUn_4 then
        fns.dwb_43.reason = "Waiting for player values"
        return
    end
    cUp_1, cUo_2 = fns.dwb_91(cUn_4)
    fns.dwb_43.reason = cUo_2
    if not cUn_4:FindFirstChild("Blocking") then
        bTg.releaseFailed = false
    end
    if bTg.releaseFailed then
        fns.dwb_43.reason = "Block release unconfirmed"
    end
    local cUo_3 = cUp_1 == "none"
    if not cUo_3 then
        cUo_3 = cUp_1 == "block" and not fns.dwb_43.mitigate
    end
    if cUo_3 then
        fns.dwb_123.ParryReservedUntil = 0
        return
    end
    local entry = fns.dwb_123.BlockWork.entry
    local cUq_2 = entry and entry == fns.dwb_43.blockEntry and not entry.releaseRequested
    if cUq_2 then
        cUq_2 = entry.phase == "awaiting" or entry.phase == "holding"
    end
    if cUq_2 then
        for k, v in pairs(bTF) do
            local cUq_3 = v.initialized and bTs(v) and entry.sentAt >= v.earliest and entry.sentAt <= v.latest and cUl_1 <= v.protectUntil and fns.dwb_84(v.model, v.info.reach, fns.dwb_68.reachPad, true, math.max(0, v.impact - cUl_1), v.info)
            if cUq_3 then
                if not entry.keep then
                    entry.releaseAt = math.max(entry.releaseAt, v.protectUntil)
                end
                if entry.attempt and not entry.attempt.models[v.model] then
                    entry.attempt.models[v.model] = fns.bRv(v.model)
                end
                fns.dwb_149(k, false)
            end
        end
    end
    if not cUm or fns.dwb_123.BlockWork.entry then
        return
    end
    local cUN = if cUn_4:FindFirstChild("Blocking") then 1 else 0
    if cUN == 1 then
        if not bTg.releaseFailed then
            fns.dwb_43.reason = "Manual block active"
        end
        return
    end
    if not bTs(cUm) then
        return
    end
    local cUl_2 = os.clock()
    if cUl_2 > cUm.latest then
        return
    end
    cUn_5, cUo_6 = {}, {}
    local cUq_5 = cUm.protectUntil
    for k, v in pairs(bTF) do
        local cUm_1 = v.initialized and cUl_2 >= v.earliest and cUl_2 <= v.latest and bTs(v) and fns.dwb_84(v.model, v.info.reach, fns.dwb_68.reachPad, true, math.max(0, v.impact - cUl_2), v.info)
        if cUm_1 then
            cUn_5[#cUn_5 + 1] = k
            cUo_6[v.model] = fns.bRv(v.model)
            cUq_5 = math.max(cUq_5, v.protectUntil)
        end
    end
    local cUm_2 = bP4(cUq_5)
    local cUq_6 = cUm_2
    if not cUq_6 then
        cUq_6 = fns.dwb_123.BlockWork.entry == fns.dwb_43.blockEntry and fns.dwb_43.blockEntry ~= nil
    end
    if cUq_6 then
        for i, v in ipairs(cUn_5) do
            fns.dwb_149(v, false)
        end
        if cUm_2 then
            if cUp_1 == "block" then
                local stats = fns.dwb_43.stats
                stats.locked = stats.locked + 1
            else
                local stats = fns.dwb_43.stats
                stats.fired = stats.fired + 1
            end
            if cUp_1 == "parry" then
                local cUm_3 = { models = cUo_6, owner = fns.dwb_99(), deadline = cUl_2 + fns.dwb_68.gradeWait }
                table.insert(bTg.attempts, cUm_3)
                if fns.dwb_43.blockEntry then
                    fns.dwb_43.blockEntry.attempt = cUm_3
                end
            end
        else
            local stats = fns.dwb_43.stats
            stats.errors = stats.errors + 1
        end
    end
end
function fns.fn4231()
    task.delay(0, function()
        local de_ = {}
        for i, v in ipairs(fns.dwb_141()) do
            de_[#de_ + 1] = v.name
        end
        if #de_ > 0 then
            bSs.SkillChoiceCache = de_
        end
    end)
end
function fns.fn4251(ws)
    local b8o = type(fns.dwb_26.Quests) ~= "table" or type(fns.dwb_26.Quests.Holder) ~= "table"
    if b8o then
        fns.dwb_71("Quests.Holder")
        return nil
    end
    return fns.dwb_26.Quests.Holder[ws]
end
function fns.fn4262(ml)
    if type(fns.dwb_26.Items) ~= "table" then
        return nil
    end
    local b1K = fns.dwb_26.Items[ml]
    local b1L = type(b1K) == "table" and b1K
    return b1L or nil
end
function fns.fn4266()
    bTu.anyOn = next(bTu.on) ~= nil
    if not bTu.anyOn then
        bTu.clear()
    end
end
function fns.fn4270()
    tweaks2.infHorse = false
    pcall(fns.dwb_29)
end
function fns.fn4275(atg)
    local ati = bQS.Payload(atg)
    bQS.Reset(atg)
    bQS.Queued(bQS.UrlFor(atg), ati)
end
function fns.fn4278(a4M)
    bSg.DemonController.dropForeign = a4M == true
end
function fns.fn4280(a7h)
    local BreathController = bSg.BreathController
    local dd0 = type(a7h) == "string" and a7h
    BreathController.wenMob = dd0 or ""
end
function fns.fn4292()
    local last = bSg.Alerts.last
    return last and last.text or nil
end
function fns.fn4293(eV)
    return -eV.facing * eV.radius, -math.max(eV.clearance + eV.height, 0)
end
function fns.fn4315()
    return fns.dwb_92.module("QueueSignal", { "Communication", "ServerAndClient", "Signals", "QueueSignal" })
end
function fns.fn4337()
    for i, v in ipairs(bQS.Order) do
        bQS.Channels[v].Enabled = false
    end
    if bQS.Loop then
        if coroutine.status(bQS.Loop) ~= "dead" then
            pcall(task.cancel, bQS.Loop)
        end
        bQS.Loop = nil
    end
    if bQS.ItemHook then
        pcall(function()
            bQS.ItemHook:Disconnect()
        end)
        bQS.ItemHook = nil
    end
    bQS.ItemFolder = nil
    table.clear(bQS.Queue)
    bQS.Draining = false
end
function fns.fn4349(a7s)
    bSg.SkillController.unlockSkills = a7s == true
end
function fns.fn4353(bdQ, bdR)
    bTE.Esp.setColour(bdQ, bdR)
end
function fns.fn4361()
    local dfE = { "None" }
    for i, v in ipairs(fns.dwb_11.FISHING_BAITS) do
        dfE[#dfE + 1] = v
    end
    return dfE
end
function fns.fn4386(bcY)
    local tweaks = bTE.tweaks
    local dja = (tonumber(bcY)) or 10
    tweaks.chestKillThreshold = math.clamp(dja, 0, 100)
end
function fns.fn4394()
    local CrystalController = bSg.CrystalController
    local cK5 = CrystalController.points() - CrystalController.reserve
    if cK5 <= 0 then
        return 0
    end
    local cK6 = math.floor(cK5 / CrystalController.price())
    return math.clamp(math.min(cK6, CrystalController.bundles), 0, fns.dwb_11.EXP_MAX_BUNDLES)
end
function fns.fn4396(bbK)
    bTE.tweaks.noRagdoll = bbK == true
    if not bTE.tweaks.noRagdoll then
        bTE.restoreRagdoll()
    end
end
function fns.fn4405()
    bTE.xray.on = false
    if bTE.xray.added then
        bTE.xray.added:Disconnect()
        bTE.xray.added = nil
    end
    bTE.xray.clear()
end
function fns.fn4418(Kj)
    local cil = typeof(Kj) ~= "Instance" or Kj.Parent == nil
    if cil then
        return nil
    end
    for i, descendant in ipairs(Kj:GetDescendants()) do
        local cil_1 = (descendant:IsA("ProximityPrompt")) and descendant.Enabled
        if cil_1 then
            return descendant
        end
    end
    return nil
end
function fns.fn4422()
    return fns.dwb_92.module("HudGrid module", { "CAM", "HudGrid" })
end
function fns.fn4426()
    if bQS.Draining then
        return
    end
    bQS.Draining = true
    task.spawn(function()
        while true do
            local cHD = (fns.dwb_118()) and #bQS.Queue > 0
            if cHD then
                local cHD_1 = table.remove(bQS.Queue, 1)
                bQS.Post(cHD_1.url, cHD_1.payload)
                task.wait(1.2)
                continue
            end
            break
        end
        bQS.Draining = false
    end)
end
function fns.fn4444()
    local b3H_1
    local b3G = type(fns.dwb_26.SkillsProvider) ~= "table"
    local b3G_1
    local b3P = if b3G then 1 else 0
    local b3N = 3147 * b3P + 3406 * (1 - b3P)
    local b3O = 535 * b3P + 2931 * (1 - b3P)
    if not ((b3N * 696 + b3O * 2862 + b3N * b3O) % 16777213 == 5405127) then
        b3G = not bQG(fns.dwb_26.SkillsProvider.get_current_keys)
    end
    if b3G then
        return {}
    end
    b3G_1, b3H_1 = pcall(fns.dwb_26.SkillsProvider.get_current_keys)
    local b3I = not b3G_1 or type(b3H_1) ~= "table"
    if b3I then
        return {}
    end
    local b3G_2 = {}
    for i, v in ipairs(b3H_1) do
        local b3H_2 = type(v) == "table" and v.Name
        local b3I_1 = b3H_2 or nil
        local b3I_2 = type(b3I_1) == "string" and b3I_1 ~= "" and not fns.dwb_11.NEVER_CAST[b3I_1]
        if b3I_2 then
            local b3I_3 = fns.dwb_146(b3I_1)
            local b3J = #b3G_2 + 1
            local b3K = (tonumber(v.Max))
            if not b3K then
                local b3L = b3I_3 and tonumber(b3I_3.Max_Hold_Time)
                b3K = b3L
            end
            b3G_2[b3J] = { name = b3I_1, slot = i, max = b3K or 0 }
        end
    end
    return b3G_2
end
function fns.fn4455()
    local weapon = bQ4.weapon
    local toolBlocked = bQe.toolBlocked
    local b2L = weapon ~= "" and weapon or nil
    if toolBlocked(b2L) then
        return fns.dwb_96() ~= nil
    elseif weapon ~= "" then
        local b2J_1 = fns.dwb_38()
        local b2K_1 = not bQe.holdingWeapon()
        local b2L_1 = b2J_1 ~= weapon or b2K_1
        local b2J_2 = b2L_1 and os.clock() >= fns.dwb_57
        if b2J_2 then
            fns.dwb_57 = os.clock() + 3
            if fns.dwb_42(weapon, b2K_1) then
                task.wait(0.4)
            end
        end
        return fns.dwb_96() ~= nil
    elseif bQe.holdingWeapon() then
        return true
    else
        if os.clock() >= fns.dwb_57 then
            fns.dwb_57 = os.clock() + 5
            local b2I_1 = bRU()
            if #b2I_1 > 0 then
                local b2K_2 = (bSg.EquipController.weaponCycle or 0) % #b2I_1 + 1
                bSg.EquipController.weaponCycle = b2K_2
                local b2P = if fns.dwb_42(b2I_1[b2K_2], true) then 1 else 0
                if b2P == 1 then
                    task.wait(0.2)
                end
            end
        end
        return fns.dwb_96() ~= nil
    end
end
function fns.fn4468(a5H)
    if a5H then
        bSs.WaveStatus = "Watching for a wave break"
        bSg.WaveController.voted = false
        bSg.WaveController.running = true
        fns.dwb_53(bSg.WaveController, fns.dwb_134.waves)
    else
        bSg.WaveController.running = false
        fns.dwb_72(bSg.WaveController)
        bSs.WaveStatus = "Idle"
    end
end
function fns.fn4470()
    local cbe_2
    local cbb_1
    local cba_1
    local ca9_1
    local ca7 = fns.dwb_48()
    local ca7_2
    if #ca7 == 0 then
        return 0, 0, 0
    end
    local ca8 = fns.dwb_79()
    ca9_1, cbb_1, cba_1 = 0, 0, 0
    local cbc = os.time()
    local cbd = true
    for i, v in ipairs(ca7) do
        if not fns.dwb_118() then
            break
        end
        local ca7_1 = ca8[v.code]
        if not ca7_1 then
            ca7_1 = v.expires and v.expires <= cbc
        end
        if ca7_1 then
            cba_1 += 1
        else
            if not cbd then
                task.wait(fns.dwb_11.CODE_GAP)
            end
            cbd = false
            bSs.CodeStatus = "Redeeming " .. v.code
            ca7_2, cbe_2 = fns.dwb_124(v.code)
            if ca7_2 then
                ca9_1 += 1
            else
                cbb_1 += 1
            end
            if cbe_2 then
                ca8 = fns.dwb_79()
            end
        end
    end
    return ca9_1, cbb_1, cba_1
end
function fns.fn4481(pL, pM, pN, pO)
    local b4i = (tonumber(pM)) or 0
    pM = math.max(b4i, 0)
    fns.dwb_133.cooldowns[pL] = os.clock() + pM
    if pN then
        fns.dwb_133.stall, fns.dwb_133.stallUntil, fns.dwb_133.stallClan = pN, os.clock() + pM, pO == true
    end
end
function fns.fn4503()
    local cmj_1
    if not fns.dwb_118() then
        bSs.BringStatus = "Waiting for character"
        return
    end
    if not bQG(isnetworkowner) then
        bSs.BringStatus = "Executor has no isnetworkowner"
        return
    end
    local cmd = fns.dwb_4()
    if not cmd then
        bSs.BringStatus = "Waiting for character"
        return
    end
    local Position = cmd.Position
    local range = bSg.BringController.range
    local cmg = 0
    for i, v in ipairs(fns.dwb_44()) do
        local HumanoidRootPart = v.model:FindFirstChild("HumanoidRootPart")
        local cmi = HumanoidRootPart and not fns.dwb_11.PASSIVE_MOBS[v.name]
        local cmi_2
        if cmi then
            if range <= 0 or (HumanoidRootPart.Position - Position).Magnitude <= range then
                cmi_2, cmj_1 = pcall(isnetworkowner, HumanoidRootPart)
                if cmi_2 and cmj_1 then
                    HumanoidRootPart.CFrame = cmd.CFrame
                    cmg += 1
                end
            end
        end
    end
    local cmd_1 = cmg > 0
    if cmd_1 then
        cmd_1 = "Holding " .. cmg .. (cmg == 1 and " enemy" or " enemies")
    end
    bSs.BringStatus = cmd_1 or "No enemies in reach"
end
function fns.fn4509(bck)
    local xray = bTE.xray
    local din = xray.on and bck:IsA("BasePart") and bck.Transparency < 1
    if din then
        xray.parts[bck] = true
        bck.LocalTransparencyModifier = xray.amount
    end
end
function fns.fn4547()
    if bTE.parry then
        bTE.parry.reset()
        bSs.ParryStatus = bTE.parry.on and "Watching" or "Off"
    end
end
function fns.fn4559()
    local entry = fns.dwb_123.SkillWork.entry
    if not entry then
        return false
    elseif fns.dwb_99() ~= entry.character then
        entry.cancelled = true
        fns.dwb_133.retire(entry)
        return false
    else
        local b5y = entry.releaseFailed and not fns.dwb_133.owns(entry)
        if b5y then
            fns.dwb_133.retire(entry)
            return false
        end
        if entry.cancelled then
            fns.dwb_133.say(entry, "Waiting for unresolved skill " .. entry.name)
        end
        return true
    end
end
function fns.fn4569()
    return bSs.QuestChoiceCache
end
function fns.fn4573(a7Z)
    bQ4.autoClanSkills = a7Z == true
    fns.dwb_133.clan.cache, fns.dwb_133.clan.at = nil, 0
    bSs.ClanSkillStatus = bQ4.autoClanSkills and "Starting" or "Idle"
end
function fns.fn4579()
    return fns.dwb_92.module("TimedVendor module", { "CAM", "Global", "Subsets", "Gameplay", "TimedVendor" })
end
function fns.fn4580(bdT, bdU)
    bTE.Esp.setCategory(bdT, bdU)
end
function fns.fn4584()
    local cuN = bSg.TrainController.part("BarHolder")
    local cuO = cuN and cuN:FindFirstChild("Slider")
    if not cuO then
        return
    end
    for i, child in ipairs(cuN:GetChildren()) do
        local cuN_1 = child ~= cuO and child:IsA("GuiObject")
        if cuN_1 then
            local cuN_2 = child.Size.X.Scale / 2 + 0.02
            if math.abs(cuO.Position.X.Scale - child.Position.X.Scale) <= cuN_2 then
                bSg.TrainController.pointer.tap(bSg.TrainController.clearPoint())
                return
            end
        end
    end
end
function fns.fn4588()
    SchematicRunner.cancel = SchematicRunner.cancel + 1
    SchematicRunner.running = false
end
function fns.fn4592(a84)
    local PotionController = bSg.PotionController
    local dft = (tonumber(a84))
    local dfx = if dft then 1 else 0
    local dfv = 2612 * dfx + 1962 * (1 - dfx)
    local dfw = 1768 * dfx + 4041 * (1 - dfx)
    if not ((dfv * 3486 + dfw * 1186 + dfv * dfw) % 16777213 == 15820296) then
        dft = 40
    end
    PotionController.threshold = math.clamp(dft, 1, 95)
end
function fns.fn4598(ahb)
    local czZ = fns.dwb_82()
    local cz_ = czZ and czZ:FindFirstChild("Quests")
    local czZ_1 = cz_
    if cz_ then
        cz_ = czZ_1:FindFirstChild("Completed")
    end
    local czZ_2 = cz_
    local cz__1 = czZ_2 ~= nil and czZ_2:FindFirstChild(ahb) ~= nil
    return cz__1
end
function fns.fn4605(aF_, aF0)
    local cTr_1
    local cTq_1
    local info
    local track, cTl_6
    info, track = aF_.info, aF_.track
    local cTn = not fns.dwb_154(track.Speed) or track.Speed <= 0 or not fns.dwb_154(track.TimePosition)
    if cTn then
        return false
    end
    local cTn_1 = track.TimePosition / track.Speed
    local hit = info.hit
    if not aF_.isMob then
        local cTp
        if bQG(fns.dwb_26.CombatPresets.attackSpeedMult) then
            cTq_1, cTr_1 = fns.dwb_144(fns.dwb_26.CombatPresets.attackSpeedMult, aF_.model)
            local cTs_1 = cTq_1 and fns.dwb_154(cTr_1) and cTr_1 > 0
            if cTs_1 then
                cTp = cTr_1
            end
        end
        if not cTp then
            local AnimSpeed = info.preset.AnimSpeed
            local cTs_2 = info.running and -1 or info.combo
            local cTr_3 = AnimSpeed
            if cTr_3 then
                local cTs_3 = AnimSpeed[info.name .. tostring(cTs_2)] or AnimSpeed[cTs_2] or AnimSpeed.Default
                cTr_3 = cTs_3
            end
            local cTq_3 = cTr_3 or 1
            local cTq_4 = not fns.dwb_154(cTq_3) or cTq_3 <= 0
            if cTq_4 then
                return false
            end
            local cTp_1 = track.Speed / cTq_3
            local cTo_1 = info.swing + math.max(0, info.hit - info.runTrim - info.swing) / cTp_1
            local cTl_2 = not fns.dwb_154(cTn_1) or not fns.dwb_154(cTo_1) or cTo_1 < 0
            if cTl_6 then
                return false
            end
            aF_.impact = aF0 + cTo_1 - cTn_1
            aF_.window = aF_.isMob and fns.dwb_68.windowNpc or fns.dwb_68.windowPvp
            aF_.initialized = true
            return true
        end
        local cTo_2 = info.swing + math.max(0, info.hit - info.runTrim - info.swing) / cTp
        local cTl_4 = not fns.dwb_154(cTn_1) or not fns.dwb_154(cTo_2) or cTo_2 < 0
        if cTl_6 then
            return false
        end
        aF_.impact = aF0 + cTo_2 - cTn_1
        aF_.window = aF_.isMob and fns.dwb_68.windowNpc or fns.dwb_68.windowPvp
        aF_.initialized = true
        return true
    end
    cTl_6 = not fns.dwb_154(cTn_1) or not fns.dwb_154(hit) or hit < 0
    if cTl_6 then
        return false
    end
    aF_.impact = aF0 + hit - cTn_1
    aF_.window = aF_.isMob and fns.dwb_68.windowNpc or fns.dwb_68.windowPvp
    aF_.initialized = true
    return true
end
function fns.fn4612()
    local attr = LocalPlayer:GetAttribute("OuwigaharaLastPick")
    local cIo = attr == ""
    local cIp = type(attr) ~= "string"
    local cIu = if cIp then 1 else 0
    local cIs = 1750 * cIu + 1458 * (1 - cIu)
    local cIt = 1650 * cIu + 2984 * (1 - cIu)
    if not ((cIs * 2350 + cIt * 3969 + cIs * cIt) % 16777213 == 13548850) then
        cIp = cIo
    end
    if cIp then
        return nil
    end
    local cIo_1 = fns.dwb_92.module("Rarities module", { "CAM", "Global", "Rarities" })
    local cIp_1 = (tonumber(LocalPlayer:GetAttribute("OuwigaharaLastPickRarity"))) or 1
    local cIp_2 = type(cIo_1) == "table" and type(cIo_1.Order) == "table" and cIo_1.Order
    local cIo_2 = cIp_2 or nil
    local cIp_3 = cIo_2
    if cIo_2 then
        cIo_2 = cIp_3[cIp_1]
    end
    return attr, cIo_2 or nil
end
function fns.fn4627(aLi, aLj, aLk)
    local aLl = aLk - aLj
    local Magnitude = aLl.Magnitude
    aLi.Size = UDim2.fromOffset(math.max(Magnitude, 1), 1)
    aLi.Position = UDim2.fromOffset((aLj.X + aLk.X) * 0.5, (aLj.Y + aLk.Y) * 0.5)
    aLi.Rotation = math.deg(math.atan2(aLl.Y, aLl.X))
end
function fns.fn4638(bfU)
    local LootController = bSg.LootController
    local dkQ = (tonumber(bfU)) or 150
    LootController.range = math.clamp(dkQ, 0, 2000)
    fns.dwb_103(bSg.LootController)
end
function fns.fn4655(bb6)
    local xray = bTE.xray
    for i, v in ipairs(xray.skip) do
        local dh6_1 = bSf:FindFirstChild(v)
        local dh7 = dh6_1
        if dh7 then
            local dh8 = bb6 == dh6_1 or bb6:IsDescendantOf(dh6_1)
            dh7 = dh8
        end
        if dh7 then
            return true
        end
    end
    for i, player in ipairs(fns.dwb_51.Players:GetPlayers()) do
        local dh6_2 = player.Character and bb6:IsDescendantOf(player.Character)
        if dh6_2 then
            return true
        end
    end
    return fns.dwb_51.CollectionService:HasTag(bb6, "LootDrop")
end
function fns.fn4657(bgn)
    bSg.QueueController.fill = bgn == true
end
function fns.fn4666()
    local dcc = (bQe.dungeonName()) or "None"
    return dcc
end
function fns.fn4669()
    return not fns.dwb_123.Unloaded
end
function fns.fn4672(a86)
    if a86 then
        bSs.ShopStatus = "Starting"
        bSg.ShopController.running = true
        fns.dwb_53(bSg.ShopController, fns.dwb_125)
    else
        bSg.ShopController.running = false
        fns.dwb_72(bSg.ShopController)
        bSs.ShopStatus = "Idle"
    end
end
function fns.fn4683()
    local bZY = {}
    local Debree = bSf:FindFirstChild("Debree")
    local bZ_ = Debree and Debree:FindFirstChild("Regions")
    if not bZ_ then
        return bZY
    end
    for i, child in ipairs(bZ_:GetChildren()) do
        local ActiveNpcs = child:FindFirstChild("ActiveNpcs")
        local bZ__1 = ActiveNpcs and ActiveNpcs:FindFirstChild("Horse")
        if bZ__1 then
            for i, child in ipairs(bZ__1:GetChildren()) do
                if child:IsA("Model") then
                    local Humanoid = child:FindFirstChildOfClass("Humanoid")
                    if Humanoid and Humanoid.Health > 0 then
                        bZY[#bZY + 1] = child
                    end
                end
            end
        end
    end
    return bZY
end
function fns.onRenderStepped()
    local cZ_ = not fns.dwb_118() or not bTu.anyOn
    if cZ_ then
        return
    end
    pcall(bRi.render)
end
function fns.fn4707(aM7)
    aM7.box.Visible = false
    aM7.tracer.Visible = false
    aM7.name.Visible = false
    aM7.distance.Visible = false
    aM7.info.Visible = false
    aM7.healthText.Visible = false
    aM7.healthBack.Visible = false
    aM7.healthFill.Visible = false
    for i, v in ipairs(aM7.lines) do
        v.Visible = false
    end
end
function fns.fn4709()
    if bTu.screen and bTu.screen.Parent then
        return bTu.screen
    end
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosOuwlandEsp"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 999999
    screenGui.Parent = bSR(fns.dwb_51.CoreGui)
    bTu.screen = screenGui
    return screenGui
end
function fns.fn4714(aAs, aAt)
    for i, v in ipairs(aAs) do
        if v == aAt then
            return
        end
    end
    aAs[#aAs + 1] = aAt
end
function fns.fn4724(arW)
    local cIf = bQS.ItemCategory(arW)
    if bQS.ItemCategories[cIf] ~= true then
        return
    end
    local cIg = bQS.Current()
    table.insert(cIg.Items, { name = arW, category = cIf })
    while #cIg.Items > 60 do
        table.remove(cIg.Items, 1)
    end
    bQS.Add("Items", 1)
end
function fns.fn4727(bc_)
    local tweaks = bTE.tweaks
    local dje = (tonumber(bc_)) or 10
    tweaks.killThreshold = math.clamp(dje, 0, 100)
end
function fns.fn4729(eW)
    local eY = os.clock() * fns.dwb_11.ORBIT_SPEED
    return Vector3.new(math.cos(eY), 0, math.sin(eY)) * eW.radius, eW.height
end
function fns.fn4757()
    if not bSg.CardController.forceHeal then
        return false
    end
    local cms = fns.dwb_104()
    local cmt = not cms or cms.Health <= 0
    local cmx = if cmt then 1 else 0
    local cmv = 3085 * cmx + 3370 * (1 - cmx)
    local cmw = 3310 * cmx + 1579 * (1 - cmx)
    if not ((cmv * 436 + cmw * 1412 + cmv * cmw) % 16777213 == 16230130) then
        cmt = cms.MaxHealth <= 0
    end
    if cmt then
        return false
    end
    local cmt_1 = cms.Health / cms.MaxHealth * 100
    return cmt_1 <= bSg.CardController.healBelow, cmt_1
end
function fns.fn4803(bbA)
    bbA = tonumber(bbA)
    local dhE = bTE.parry and bbA and bbA == bbA and math.abs(bbA) < math.huge
    if dhE then
        bTE.parry.lead = math.clamp(bbA, -120, 120) / 1000
    end
end
function fns.fn4805()
    if bSf:GetAttribute("MinigameRunEnded") ~= nil then
        return true, "the leave area"
    end
    local c54 = tonumber(bSf:GetAttribute("MinigameFloor"))
    if not c54 or c54 <= 0 then
        return true, "the lobby"
    elseif #fns.dwb_92.lobbyPrompts(bSg.ReadyController, "ready", fns.dwb_11.READY_SKIP) > 0 then
        return true, "the ready ring"
    else
        local c59 = if #fns.dwb_92.lobbyPrompts(bSg.LeaveController, "leave", fns.dwb_11.LEAVE_SKIP) > 0 then 1 else 0
        if c59 == 1 then
            return true, "the leave area"
        end
        return false, nil
    end
end
function fns.fn4811(wC)
    local b8t = fns.dwb_36()
    local b8u = b8t and b8t:FindFirstChild(wC)
    local b8t_1 = b8u
    if b8u then
        b8u = b8t_1:FindFirstChild("Tasks")
    end
    local b8v = b8u
    if not b8v then
        return nil, nil
    end
    return b8v, b8t_1
end
function fns.fn4824(Ew, Ex)
    local ceK = type(Ew) == "table" and typeof(Ew.QuestInstance) == "Instance"
    if ceK then
        return Ew.QuestInstance.Name
    end
    return Ex
end
function fns.fn4843(a51)
    if a51 then
        bSs.BringStatus = "Starting"
        bSg.BringController.running = true
        fns.dwb_53(bSg.BringController, fns.dwb_134.bring)
    else
        bSg.BringController.running = false
        fns.dwb_72(bSg.BringController)
        bSs.BringStatus = "Idle"
    end
end
function fns.fn4846()
    return bSf.CurrentCamera
end
function fns.fn4853(ai4, ai5)
    local cBs_2
    local cBl_1
    local cBk_1, cBk_4, cBk_5
    cBk_1, cBl_1 = bSg.FishController.catch()
    if cBk_1 then
        bSg.FishController.collect(cBk_1, cBl_1, ai5)
        local cBp = if ai5() then 1 else 0
        if cBp == 1 then
            return false
        end
        local cBk_2 = (bSg.FishController.bobber()) or bSg.FishController.catch()
        if cBk_4 then
            bQR("Tool_Mouse", "Up", ai4)
            bRD(function()
                local cBi = bSg.FishController.bobber() == nil and bSg.FishController.catch() == nil
                return cBi
            end, 3, ai5)
        end
        while true do
            if not (cBs_2 <= 3) then
                return false
            end
            if ai5() then
                break
            end
            bQR("Tool_Mouse", "Up", ai4)
            bRD(function()
                return bSg.FishController.bobber() ~= nil
            end, 2.5, ai5)
            if cBk_5 then
                return true
            end
            task.wait(0.35)
        end
        return false
    end
    cBk_4 = (bSg.FishController.bobber()) or bSg.FishController.catch()
    if cBk_4 then
        bQR("Tool_Mouse", "Up", ai4)
        bRD(function()
            local cBi = bSg.FishController.bobber() == nil and bSg.FishController.catch() == nil
            return cBi
        end, 3, ai5)
    end
    cBs_2 = 1
    while true do
        if not (cBs_2 <= 3) then
            return false
        end
        if ai5() then
            break
        end
        bQR("Tool_Mouse", "Up", ai4)
        cBk_5 = bRD(function()
            return bSg.FishController.bobber() ~= nil
        end, 2.5, ai5)
        if cBk_5 then
            return true
        end
        task.wait(0.35)
        cBs_2 += 1
    end
    return false
end
function fns.fn4867(aLc, aLd)
    local frame = Instance.new("Frame")
    frame.AnchorPoint = Vector2.new(0.5, 0.5)
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.BorderSizePixel = 0
    frame.Visible = false
    frame.ZIndex = aLd
    frame.Parent = aLc
    return frame
end
function fns.fn4872(a6U)
    bSg.ChestController.hop = a6U == true
    bSg.ChestController.emptyScans = 0
end
function fns.fn4887(aPh)
    if aPh:GetAttribute("DropClaimedBy") ~= nil then
        return false
    end
    local attr = aPh:GetAttribute("DropOwnerUserId")
    local c_V = type(attr) == "number" and attr ~= LocalPlayer.UserId
    if c_V then
        return false
    end
    local c_U_1 = aPh:GetAttribute("DropReservedFor")
    local c_V_1 = type(c_U_1) ~= "string" or string.find(c_U_1, "," .. LocalPlayer.UserId .. ",", 1, true) ~= nil
    return c_V_1
end
function fns.fn4896()
    local cMz_1
    local cMy_1
    local SellController = bSg.SellController
    local cMv = SellController.stock()
    local cMw = SellController.mode == "Selected Items"
    local cMx = bQi(SellController.rarities) > 0
    cMy_1, cMz_1 = {}, 0
    for k, v in pairs(cMv) do
        local cMv_1 = cMw
        local cMA = true
        if cMv_1 then
            cMv_1 = not SellController.items[k]
        end
        if cMv_1 then
            cMA = false
        elseif cMx then
            local cMv_2 = SellController.rarityName(k)
            cMA = cMv_2 ~= nil and SellController.rarities[cMv_2] == true
        end
        if cMA then
            local cMv_3 = math.min(v - SellController.keep, fns.dwb_11.SELL_MAX_PER_CALL)
            if cMv_3 >= 1 then
                cMy_1[k] = cMv_3
                cMz_1 += cMv_3
            end
        end
    end
    return cMy_1, cMz_1
end
function fns.fn4901()
    local dcL = {}
    local dcM = {}
    local Minigames_Place = fns.dwb_87:FindFirstChild("Minigames Place")
    local dcO = Minigames_Place and Minigames_Place:FindFirstChild("Minigames")
    local dcN_1 = dcO
    if dcO then
        dcO = dcN_1:FindFirstChild("Ouwigahara")
    end
    local dcN_2 = dcO
    if dcO then
        dcO = dcN_2:FindFirstChild("Rewards")
    end
    local dcN_3 = dcO
    if dcN_3 then
        for i, descendant in ipairs(dcN_3:GetDescendants()) do
            local dcN_4 = (descendant:IsA("ModuleScript")) and not dcL[descendant.Name]
            if dcN_4 then
                dcL[descendant.Name] = true
                dcM[#dcM + 1] = descendant.Name
            end
        end
    end
    if #dcM == 0 then
        fns.dwb_71("Ouwigahara Rewards")
        for i, v in ipairs(fns.dwb_11.CARD_NAMES) do
            dcM[#dcM + 1] = v
        end
    end
    table.sort(dcM)
    return dcM
end
function fns.fn4902(baE, baF)
    local dgY = bQS.Channels[baE]
    if dgY then
        local dgZ = type(baF) == "string" and baF
        dgY.Url = dgZ or ""
    end
end
function fns.fn4909()
    local c2x = fns.dwb_92.hudGridModule()
    local c2y = type(c2x) ~= "table" or type(c2x.Grid) ~= "table"
    if c2y then
        return {}
    end
    local c2y_1 = {}
    for k, v in pairs(c2x.Grid) do
        local c2x_1 = type(v) == "table" and v.Ignore ~= true
        if c2x_1 then
            local insert = table.insert
            local c2z = type(v.Title) == "string" and v.Title
            local c2A = c2z or k
            local c2z_1 = (tonumber(v.Order)) or math.huge
            insert(c2y_1, { name = k, label = c2A, order = c2z_1 })
        end
    end
    table.sort(c2y_1, function(aTa, aTb)
        if aTa.order ~= aTb.order then
            return aTa.order < aTb.order
        end
        return aTa.label < aTb.label
    end)
    return c2y_1
end
function fns.fn4917(asN)
    if not asN.Events.Cards or #asN.Cards == 0 then
        return nil
    end
    local cJm_1 = {}
    local cJn = math.max(1, #asN.Cards - 7)
    local cJo = #asN.Cards
    local cJy = cJn
    while cJy <= cJo do
        local cJn_1 = asN.Cards[cJy]
        local insert = table.insert
        local name = cJn_1.name
        local cJr = cJn_1.rarity and "  ·  " .. cJn_1.rarity or ""
        insert(cJm_1, ("› **%s**%s"):format(name, cJr))
        cJy += 1
    end
    if #asN.Cards > #cJm_1 then
        table.insert(cJm_1, 1, ("› *%d earlier picks*"):format(#asN.Cards - #cJm_1))
    end
    return { name = "Cards Picked", value = table.concat(cJm_1, "\n"), inline = false }
end
function fns.fn4927()
    local ch6_1
    local ch4 = fns.dwb_92.module("InCombat module", { "CAM", "Global", "Subsets", "Gameplay", "InCombat" })
    local ch5 = type(ch4) ~= "table" or not bQG(ch4.biasedCheck)
    local ch5_1
    if ch5 then
        return false
    end
    ch5_1, ch6_1 = fns.dwb_144(ch4.biasedCheck, LocalPlayer)
    return ch5_1 and ch6_1 == true
end
function fns.fn4950(a9B)
    bSg.TrainController.codes = fns.dwb_90(a9B)
    fns.dwb_103(bSg.TrainController)
end
function fns.fn4951(att)
    local cJT_1
    local cJS_1
    local cJR_1
    if bQS.Style == "Report" then
        return
    end
    local cJQ = bQS.Current()
    if not cJQ.Enabled then
        return
    end
    cJR_1, cJS_1, cJT_1 = bQS.Rarity(att)
    if cJR_1 < bQS.LootRarity then
        return
    end
    local cJR_2 = bQS.UrlFor(cJQ)
    if not bQS.ValidUrl(cJR_2) then
        return
    end
    local LootPending = bQS.LootPending
    local cJU = {}
    local cJV = bQS.LootPending[cJR_2]
    local cJZ = if cJV then 1 else 0
    local cJX = 3135 * cJZ + 2045 * (1 - cJZ)
    local cJY = 2675 * cJZ + 1149 * (1 - cJZ)
    if not ((cJX * 585 + cJY * 1590 + cJX * cJY) % 16777213 == 14473350) then
        cJV = cJU
    end
    LootPending[cJR_2] = cJV
    table.insert(bQS.LootPending[cJR_2], {
        title = "Looted " .. att,
        description = ("Rarity: **%s**\nAccount: ||%s||"):format(cJS_1, LocalPlayer.Name),
        color = cJT_1,
        footer = { text = "Ouwland" },
        timestamp = DateTime.now():ToIsoDate()
    })
    bQS.FlushLoot()
end
function fns.fn4965()
    return bSs.ZoneCache
end
function fns.fn4969()
    return fns.dwb_92.module("Regions module", { "Regions" })
end
function fns.fn4972(a4B)
    if a4B then
        fns.dwb_74("AutoDemon")
        bSs.DemonStatus = "Starting"
        bSg.DemonController.running = true
        fns.dwb_53(bSg.DemonController, bSg.DemonController.step)
    else
        bSg.DemonController.running = false
        fns.dwb_72(bSg.DemonController)
        bSs.DemonStatus = "Idle"
    end
end
function fns.onEvent(Qq, Qr)
    local cnf = Qq == "Notify" and type(Qr) == "table" and Qr.Type == "Denied"
    if cnf then
        fns.dwb_24.deniedAt = os.clock()
        fns.dwb_24.deniedText = tostring(Qr.Text)
    end
end
function fns.fn4984()
    local cAD
    local cAz = fns.dwb_4()
    local CurrentCamera = workspace.CurrentCamera
    if not cAz or not CurrentCamera then
        return nil
    end
    local Position = CurrentCamera.CFrame.Position
    local LookVector = CurrentCamera.CFrame.LookVector
    local cAH = 6
    while true do
        if not (cAH <= 150) then
            return nil
        end
        local cAA_1 = Position + LookVector * cAH
        cAD = bSg.FishController.waterAt(cAA_1, cAz.Position)
        if cAD then
            break
        end
        cAH += 4
    end
    return cAD
end
function fns.fn5032(Kt, Ku)
    if bQe.toolBlocked(Kt) then
        return false
    end
    local ciw = fns.bSv()
    local DemonController = bSg.DemonController
    DemonController.previous = ciw and ciw.Value or nil
    if not bSg.DemonController.hold(Kt) then
        return false
    end
    task.wait(0.8)
    bQR("Tool_Mouse", "Down", bSQ())
    task.wait(Ku)
    bQR("Tool_Mouse", "Up", bSQ())
    return true
end
function fns.fn5037()
    if coroutine.status(fns.dwb_63) ~= "dead" then
        pcall(task.cancel, fns.dwb_63)
    end
end
function fns.fn5057()
    local cNj = bQe.playerValues()
    if not cNj or cNj == fns.dwb_23 then
        return
    end
    if fns.connection then
        fns.connection:Disconnect()
    end
    fns.dwb_23 = cNj
    fns.connection = cNj.ChildAdded:Connect(onChildAdded)
end
function fns.fn5063(In)
    local cg5 = type(In) ~= "table" or type(In.Markers) ~= "table"
    if cg5 then
        return nil
    end
    for k, v in pairs(In.Markers) do
        local cg5_1 = type(v) == "table" and type(v.Npc) == "string" and v.Npc ~= ""
        if cg5_1 then
            return v.Npc
        end
    end
    return nil
end
function fns.fn5066(bbI)
    bTE.tweaks.noStun = bbI == true
end
function fns.fn5069()
    local dmG = {}
    local dmH = {}
    for i, v in ipairs(fns.dwb_11.BOSS_NAMES) do
        if not dmH[v] then
            dmH[v] = true
            dmG[#dmG + 1] = v
        end
    end
    for i, v in ipairs(fns.dwb_108()) do
        local dmI = (v.folder:FindFirstChild("BossInfo")) and not dmH[v.folder.Name]
        if dmI then
            dmH[v.folder.Name] = true
            dmG[#dmG + 1] = v.folder.Name
        end
    end
    table.sort(dmG)
    return dmG
end
function fns.fn5080()
    local ch1 = fns.dwb_82()
    local ch2 = ch1 and ch1:FindFirstChild("Reputation")
    local ch1_1 = ch2
    if ch2 then
        ch2 = tonumber(ch1_1.Value)
    end
    return ch2 or 0
end
function fns.fn5087(a4c)
    if a4c then
        fns.dwb_74("AutoQuest")
        bSs.QuestStatus = "Starting"
        bSg.QuestController.running = true
        fns.dwb_53(bSg.QuestController, bQf)
    else
        bSg.QuestController.running = false
        fns.dwb_72(bSg.QuestController)
        bSs.QuestStatus = "Idle"
    end
end
function fns.fn5092(y8)
    bQR("RemoveQuest", y8)
    task.wait(0.5)
end
function fns.fn5099(ac4)
    return bSg.TrainController.visit(ac4, "BreathStatus", bSg.BreathController, bSg.TrainController.mode)
end
function fns.fn5102()
    return fns.dwb_11.TRAINING_NAMES
end
function fns.fn5111()
    for i, v in ipairs(fns.dwb_11.ROD_TOLL) do
        local cEE = fns.dwb_52(v.name)
        if cEE < v.count then
            return v, cEE
        end
    end
    return nil
end
function fns.fn5114()
    fns.dwb_10.on = false
    if fns.dwb_10.connection then
        fns.dwb_10.connection:Disconnect()
        fns.dwb_10.connection = nil
    end
end
function fns.fn5115()
    local cWn = table.clone(fns.dwb_43.stats)
    cWn.watching, cWn.animations = bTg.watching, bTg.catalogSize
    cWn.rtt, cWn.jitter, cWn.frame = bTg.rtt, bTg.jitter, bTg.frame
    cWn.reason, cWn.pending = fns.dwb_43.reason, 0
    for k in pairs(bTF) do
        cWn.pending = cWn.pending + 1
    end
    return cWn
end
function fns.fn5118()
    if fns.connection then
        fns.connection:Disconnect()
        fns.connection = nil
    end
end
function fns.fn5120(a3O)
    bSg.SchematicRunner.targets = a3O
end
function fns.fn5124(ank, anl)
    bSs.RodStatus = ank
    local RodController = bSg.RodController
    local cEN = os.clock()
    RodController.nextDue = cEN + (anl or fns.dwb_11.ROD_PAUSE)
    fns.dwb_142.uncommit(bSg.RodController.priorityKey)
end
function fns.fn5131(bc5)
    bTE.tweaks.infHorse = bc5 == true
end
function fns.fn5148(wK)
    local b8C_4
    local b8B_1, b8B_5, b8B_6
    local b8A = type(fns.dwb_26.Quests) == "table" and bQG(fns.dwb_26.Quests.TaskNeedMet)
    local b8A_1
    if b8A then
        b8A_1, b8B_1 = fns.dwb_144(fns.dwb_26.Quests.TaskNeedMet, wK)
        if b8A_1 then
            return b8B_1 ~= false
        end
        local Need = wK:FindFirstChild("Need")
        if b8B_5 then
            return true
        end
        local b8B_3 = wK.Parent and wK.Parent:FindFirstChild(Need.Value)
        local b8A_3 = b8B_3
        if b8B_6 then
            b8B_3 = b8A_3:FindFirstChild("Value")
        end
        local b8C_1 = b8A_3
        local b8D_1 = b8B_3
        if b8C_1 then
            b8C_1 = b8A_3:FindFirstChild("Max")
        end
        local b8A_4 = b8C_1
        if b8C_4 then
            return true
        end
        return b8D_1.Value >= b8A_4.Value
    end
    local Need = wK:FindFirstChild("Need")
    b8B_5 = not Need or Need.Value == ""
    if b8B_5 then
        return true
    end
    b8B_6 = wK.Parent and wK.Parent:FindFirstChild(Need.Value)
    local b8A_6 = b8B_6
    if b8B_6 then
        b8B_6 = b8A_6:FindFirstChild("Value")
    end
    local b8C_3 = b8A_6
    local b8D_2 = b8B_6
    if b8C_3 then
        b8C_3 = b8A_6:FindFirstChild("Max")
    end
    local b8A_7 = b8C_3
    b8C_4 = not b8D_2 or not b8A_7
    if b8C_4 then
        return true
    end
    return b8D_2.Value >= b8A_7.Value
end
function fns.fn5151()
    local Map = bSf:FindFirstChild("Map")
    local cK9 = Map or bSf
    for i, descendant in ipairs(cK9:GetDescendants()) do
        local cK8_1 = (descendant:IsA("ProximityPrompt")) and descendant:GetAttribute("DialogueName") == fns.dwb_11.CRYSTAL_NAME
        if cK8_1 then
            return descendant
        end
    end
    return nil
end
function fns.fn5153()
    bRf.noSlowdown = false
    bTE.applySlowdown()
end
function fns.fn5154(baf, bag)
    local dgr = bQS.Channels[baf]
    if not dgr then
        return
    end
    local dgs = fns.dwb_90(bag)
    for i, v in ipairs(bQS.Catalog[baf]) do
        dgr.Events[v.key] = dgs[v.label] == true
    end
end
function fns.fn5163(aM1)
    local humanoid = aM1.humanoid
    if humanoid and humanoid.Parent then
        return humanoid.Health, humanoid.MaxHealth
    end
    local cY8_1 = tonumber(aM1.instance:GetAttribute("Health"))
    local cY9_1 = tonumber(aM1.instance:GetAttribute("MaxHealth"))
    if cY8_1 and cY9_1 and cY9_1 > 0 then
        return cY8_1, cY9_1
    end
    return nil, nil
end
function fns.fn5166(Ia, Ib)
    if Ia == false and Ib ~= nil then
        return "Finish " .. tostring(Ib) .. " first"
    elseif Ia == true then
        return "Hunt cooldown"
    elseif Ia == 1 then
        return "Hunt already taken"
    else
        return nil
    end
end
function fns.fn5169(a3Q)
    bSg.SchematicRunner.ret = a3Q == true
end
function fns.fn5177()
    local c3k = fns.dwb_92.queueSignal()
    local c3l = type(c3k) ~= "table" or not bQG(c3k.ToServer)
    if c3l then
        return false
    end
    return pcall(c3k.ToServer, "Cancel")
end
function fns.fn5181()
    local c8n_1, c8n_2
    local c8m_1
    local c8l_1
    local c8g = fns.dwb_92.module("Black Marketer npc", { "Ouwland", "Content", "Misc", "Npcs", "Black Marketer" })
    local c8g_4
    local c8h = type(c8g) == "table" and c8g.TimedVendor
    local c8i = c8h or nil
    if type(c8i) ~= "table" then
        return
    end
    local c8i_1 = bSg.Alerts.schedule(c8i.TimedEvent, c8i.ActiveFor)
    if not c8i_1 then
        return
    end
    if not c8i_1.Active then
        bSg.Alerts.marks.market = nil
        return
    end
    if not bSg.Alerts.fresh("market", c8i_1.Cycle, true) then
        return
    end
    local vendorModel = bSg.Alerts.vendorModel
    local c8k = c8g.Name or "Black Marketer"
    local c8k_2
    c8m_1, c8l_1 = vendorModel(c8k)
    local c8j_1 = bSg.Alerts.timedVendor()
    local c8k_1 = not c8m_1
    if c8k_1 ~= false then
        c8k_1 = type(c8j_1) == "table"
    end
    if c8k_1 then
        c8k_1 = bQG(c8j_1.GetSpotIndex)
    end
    if c8k_1 then
        c8k_1 = type(c8g.Spawns) == "table"
    end
    if c8k_1 then
        c8k_2, c8n_1 = fns.dwb_144(c8j_1.GetSpotIndex, c8i, c8i_1.Cycle, #c8g.Spawns)
        local c8o = c8k_2 and type(c8n_1) == "number" and c8g.Spawns[c8n_1]
        local c8g_1 = c8o or nil
        if typeof(c8g_1) == "CFrame" then
            c8m_1 = c8g_1.Position
        elseif typeof(c8g_1) == "Vector3" then
            c8m_1 = c8g_1
        end
    end
    local c8g_2 = c8l_1 or bSg.Alerts.place(c8m_1)
    local c8k_4 = nil
    local c8g_3 = type(c8j_1) == "table" and bQG(c8j_1.GetStock)
    if c8g_3 then
        c8g_4, c8n_2 = fns.dwb_144(c8j_1.GetStock, c8i, c8i_1.Cycle)
        if c8g_4 then
            c8k_4 = bSg.Alerts.names(c8n_2, 6)
        end
    end
    local c8h_2 = "Black Marketer is in " .. (c8g_2 or "the world")
    if c8k_4 and #c8k_4 > 0 then
        c8h_2 = c8h_2 .. " selling " .. table.concat(c8k_4, ", ")
    end
    bSg.Alerts.push(c8h_2 .. " (leaves in " .. bSg.Alerts.clock(c8i_1.NextEdgeIn) .. ")", c8m_1)
end
function fns.fn5182(eQ)
    return -eQ.facing * eQ.radius, eQ.height
end
function fns.fn5201(JE, JF)
    local chW = bSg.DemonController.settings()
    local chX = chW and tonumber(chW[JE]) or JF
    return chX
end
function fns.fn5211(avy)
    local cLH = fns.dwb_110(avy)
    local cLI = cLH and cLH.Rarity
    local cLI_1 = type(fns.dwb_26.Rarities) == "table" and fns.dwb_26.Rarities.Order
    local cLJ = cLI_1
    local cLN = if cLJ then 1 else 0
    local cLL = 3299 * cLN + 963 * (1 - cLN)
    local cLM = 2737 * cLN + 1784 * (1 - cLN)
    if not ((cLL * 101 + cLM * 198 + cLL * cLM) % 16777213 == 9904488) then
        cLJ = nil
    end
    local cLI_2 = cLJ
    if type(cLI_2) ~= "table" then
        return nil
    elseif type(cLI) == "number" then
        return cLI_2[cLI]
    elseif type(cLI) == "string" then
        return cLI
    else
        return nil
    end
end
function fns.fn5226()
    local cit = fns.dwb_36()
    local ciu = cit and cit:FindFirstChild("Muzan Quest")
    return ciu or nil
end
function fns.fn5228(eU)
    return -eU.facing * eU.radius, math.max(eU.clearance + eU.height, 0)
end
function fns.fn5231()
    local cuC = bSg.TrainController.overlay()
    if not cuC then
        return
    end
    for i, descendant in ipairs(cuC:GetDescendants()) do
        if descendant.Name == "Pod" then
            local Holder = descendant:FindFirstChild("Holder")
            local Shrink = descendant:FindFirstChild("Shrink")
            local TextButton = descendant:FindFirstChildWhichIsA("TextButton", true)
            local cuF = Holder and Shrink and TextButton and math.abs(Shrink.Size.X.Scale - Holder.Size.X.Scale) < 0.07
            if cuF then
                if bQG(firesignal) then
                    pcall(firesignal, TextButton.MouseButton1Up)
                else
                    bSg.TrainController.pointer.tap(TextButton.AbsolutePosition + TextButton.AbsoluteSize / 2)
                end
            end
        end
    end
end
function fns.fn5232(sS)
    local b6s = not bQ4.autoClanSkills or not sS or not sS.valid()
    if b6s then
        return false
    end
    local b6s_1 = type(fns.dwb_26.ClanSkills) == "table" and fns.dwb_26.ClanSkills.TOOL_NAME
    local b6t = b6s_1 or nil
    local b6t_4
    local b6s_2 = b6t
    local b6t_1 = b6s_2 == ""
    local b6u = type(b6s_2) ~= "string" or b6t_1
    local b6u_2
    if b6u then
        b6s_2 = fns.dwb_11.CLAN_SKILL_TOOL
    end
    local b6z = if not fns.dwb_70(b6s_2) then 1 else 0
    if b6z == 1 then
        bSs.ClanSkillStatus = "No " .. b6s_2 .. " item"
        return false
    end
    local b6s_3 = not fns.dwb_133.clan.cache
    local b6C = if b6s_3 then 1 else 0
    local b6A = 2599 * b6C + 498 * (1 - b6C)
    local b6B = 1604 * b6C + 2064 * (1 - b6C)
    if not ((b6A * 1836 + b6B * 2228 + b6A * b6B) % 16777213 == 12514272) then
        b6s_3 = os.clock() >= fns.dwb_133.clan.at
    end
    if b6s_3 then
        fns.dwb_133.clan.cache = fns.dwb_133.clanList()
        fns.dwb_133.clan.at = os.clock() + fns.dwb_11.CLAN_REFRESH
    end
    if #fns.dwb_133.clan.cache == 0 then
        bSs.ClanSkillStatus = "Clan has no skills"
        return false
    end
    local b6s_4 = fns.dwb_123.ParryReservedUntil and os.clock() < fns.dwb_123.ParryReservedUntil
    if b6s_4 or fns.dwb_123.BlockWork.entry then
        bSs.ClanSkillStatus = "Holding off for auto parry"
        return false
    end
    local b6s_5 = nil
    for i, v in ipairs(fns.dwb_133.clan.cache) do
        local b6t_3 = (fns.dwb_133.clanWanted(v.name))
        if b6t_3 then
            local b6u_1 = os.clock()
            b6t_3 = b6u_1 >= (fns.dwb_133.cooldowns[v.name] or 0)
        end
        if b6t_3 then
            b6t_4, b6u_2 = fns.dwb_133.clanUsable(v)
            if not not b6t_4 then
                bQv(sS)
                if not fns.dwb_133.settled(sS) then
                    bSs.ClanSkillStatus = "Waiting for the combo to settle"
                    return true
                elseif fns.dwb_133.begin(v.name, fns.dwb_112(v.name, v.max), sS, true) then
                    return true
                else
                    fns.dwb_133.backoff(v.name, 1)
                    return false
                end
            end
            b6s_5 = b6s_5 or b6u_2
        end
    end
    local b6t_6 = b6s_5 or fns.dwb_133.idleText(true, fns.dwb_133.clan.count)
    bSs.ClanSkillStatus = b6t_6
    return false
end
function fns.fn5234()
    if not fns.dwb_118() then
        return
    end
    local clu = bRS()
    local clu_1
    local clv = clu == "Hybrid"
    local clv_1
    if clu == "Demon" or clv then
        bSs.DemonStatus = "Already a demon"
        return
    end
    if clu ~= "Human" then
        bSs.DemonStatus = "Only a Human can become a demon"
        return
    end
    if not bSU("AutoDemon") then
        return
    end
    clu_1, clv_1 = pcall(function()
        if not fns.dwb_17(20) then
            bSs.DemonStatus = "Waiting for character"
            return
        end
        if bSg.DemonController.stopped then
            return
        end
        if bSg.DemonController.owns("Muzan's Blood") then
            if not bSg.DemonController.drink then
                bSs.DemonStatus = "Muzan's Blood in hand, drinking is off"
                task.wait(2)
                return
            end
            bSg.DemonController.drinkBlood()
            return
        end
        if bSg.DemonController.questNode() then
            bSg.DemonController.workQuest()
            return
        end
        if bSg.DemonController.owns("Biwa Bell") then
            if bSg.DemonController.inLair() then
                bSg.DemonController.askMuzan()
            else
                bSg.DemonController.ringBell()
            end
            return
        end
        bSg.DemonController.getBell()
    end)
    bSu("AutoDemon")
    if not clu_1 then
        warn("[Ouroboros] demon step: " .. tostring(clv_1))
    end
end
function fns.fn5247()
    local ckb_1
    local cka_1
    local Debree = bSf:FindFirstChild("Debree")
    if not Debree then
        return nil
    end
    local cj8 = fns.dwb_4()
    local cj8_1 = cj8 and cj8.Position
    local ckf = if cj8_1 then 1 else 0
    local ckd = 2283 * ckf + 1104 * (1 - ckf)
    local cke = 3517 * ckf + 933 * (1 - ckf)
    if not ((ckd * 1078 + cke * 3094 + ckd * cke) % 16777213 == 4594770) then
        cj8_1 = Vector3.zero
    end
    local cj9_1 = cj8_1
    ckb_1, cka_1 = nil, nil
    for i, child in ipairs(Debree:GetChildren()) do
        local cj7_1 = (child:IsA("Model")) and child.Name == "Spider Lily" and bSg.DemonController.promptIn(child)
        if cj7_1 then
            local Magnitude = (child:GetPivot().Position - cj9_1).Magnitude
            if not cka_1 or Magnitude < cka_1 then
                ckb_1, cka_1 = child, Magnitude
            end
        end
    end
    return ckb_1
end
function fns.fn5275(a91)
    local CrystalController = bSg.CrystalController
    local df7 = (tonumber(a91))
    local dgb = if df7 then 1 else 0
    local df9 = 2108 * dgb + 1180 * (1 - dgb)
    local dga = 3371 * dgb + 4088 * (1 - dgb)
    if not ((df9 * 1578 + dga * 2040 + df9 * dga) % 16777213 == 532119) then
        df7 = 1
    end
    CrystalController.bundles = math.clamp(math.floor(df7), 1, fns.dwb_11.EXP_MAX_BUNDLES)
end
function fns.fn5280(aOI)
    local c_r_1
    local c_q_1
    c_q_1, c_r_1 = pcall(LocalPlayer.IsFriendsWith, LocalPlayer, aOI.UserId)
    return c_q_1 and c_r_1 == true
end
function fns.fn5282()
    local cgW = fns.dwb_36()
    if not cgW then
        return nil
    end
    for i, child in ipairs(cgW:GetChildren()) do
        local QuestString = child:FindFirstChild("QuestString")
        local cgX_1 = QuestString and QuestString.Value or child.Name
        local cgW_3 = fns.dwb_140(cgX_1)
        local cgY = type(cgW_3) == "table" and cgW_3.Category == "BossHunt"
        if cgY then
            return cgX_1, cgW_3
        end
    end
    return nil
end
function fns.fn5294(aw0)
    local SellController = bSg.SellController
    local cNb = (tonumber(aw0)) or 1
    SellController.keep = math.clamp(math.floor(cNb), 0, 99)
    bSg.SellController.rearm()
end
function fns.fn5298()
    local Items_ConfigServer = LocalPlayer:FindFirstChild("Items_ConfigServer")
    local b1t = Items_ConfigServer and Items_ConfigServer:FindFirstChild("Equipped")
    local b1s_1 = b1t
    if b1t then
        b1t = tonumber(b1s_1.Value)
    end
    local b1s_2 = b1t
    if b1s_2 == nil then
        local b1t_1 = fns.bSv()
        local b1u = b1t_1 and tonumber(b1t_1.Value)
        b1s_2 = b1u
    end
    return b1s_2 ~= nil and b1s_2 > 0
end
function fns.fn5301(AT)
    local cb5 = fns.dwb_142.wants[AT]
    if not cb5 then
        return false
    end
    local run = cb5.run
    local cb7 = coroutine.status(cb5.thread) == "dead"
    if not cb7 then
        cb7 = run and (run.controller.stopped or run.controller.generation ~= run.generation)
    end
    if cb7 then
        fns.dwb_142.wants[AT] = nil
        return false
    end
    return true
end
function fns.fn5337(bf2)
    local SoulController = bSg.SoulController
    local dkV = (tonumber(bf2)) or 250
    SoulController.range = math.clamp(dkV, 0, 2000)
end
function fns.fn5338(a59)
    local DungeonController = bSg.DungeonController
    local ddm = (tonumber(a59)) or 250
    DungeonController.range = math.clamp(ddm, 0, 2000)
end
function fns.fn5352(aGR)
    local cTL = {}
    if not aGR.Parent then
        return cTL
    end
    local Player_Service = fns.dwb_87:FindFirstChild("Player_Service")
    local cTN = Player_Service and Player_Service:FindFirstChild("Values")
    local Storage = aGR:FindFirstChild("Storage")
    local cTO = cTN and cTN:FindFirstChild(aGR.Name)
    local cTM_2 = { aGR, Storage, cTO }
    local cTS = 1
    while cTS <= 3 do
        local cTN_2 = cTM_2[cTS]
        if cTN_2 then
            for i, child in ipairs(cTN_2:GetChildren()) do
                local cTN_3 = child.Name == "Strict_Stun" and child:GetAttribute("PerfectBlock") == true
                if cTN_3 then
                    cTL[child] = true
                end
            end
        end
        cTS += 1
    end
    return cTL
end
function fns.fn5355(a0O)
    fns.dwb_142.setOrder(fns.dwb_142.parse(a0O))
    return fns.dwb_142.serialize()
end
function fns.fn5375()
    return bSg.SellController.rarityNames()
end
function fns.fn5390(bg2)
    local LeaveController = bSg.LeaveController
    local dlQ = (tonumber(bg2)) or 0
    LeaveController.delay = math.clamp(dlQ, 0, 300)
end
function fns.fn5427(a6x)
    if a6x == true == (bSg.BossController.running == true) then
        return
    end
    bSg.BossController.waitSample = nil
    bSg.BossController.yieldUntil = nil
    bSg.BossController.yieldFrom = nil
    if a6x then
        fns.dwb_74("AutoBoss")
        bSs.BossStatus = "Starting"
        bSg.BossController.running = true
        bSg.BossController.dwell = 0
        table.clear(bSg.BossController.skip)
        fns.dwb_53(bSg.BossController, bRr)
    else
        bSg.BossController.running = false
        bSg.BossController.current = nil
        bSg.BossController.waitName = nil
        table.clear(bSg.BossController.skip)
        fns.dwb_72(bSg.BossController)
        bSs.BossStatus = "Idle"
    end
end
function fns.fn5434(lb)
    for i, descendant in ipairs(lb:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            return descendant
        end
    end
    return nil
end
function fns.fn5435(apU)
    local cGz = bSg.FishController.rod()
    local cGA = not cGz or not bSg.RodController.holdRod(cGz, apU) or apU()
    if cGA then
        if not cGz then
            bSg.RodController.pause("No rod in the bag")
        end
        return
    end
    if not bSg.RodController.useBait(fns.dwb_11.ROD_LURE, apU) then
        if not apU() then
            bSg.RodController.pause("The " .. fns.dwb_11.ROD_LURE .. " will not go on the hook", 10)
        end
        return
    end
    bSs.RodStatus = "Raising the rod below the second fall"
    bSg.RodController.castFrom(fns.dwb_11.ROD_FINAL_STAND, "the fall ledge", apU)
end
function fns.fn5436()
    return tostring(bSf:GetAttribute("MinigameKey")) .. "/" .. tostring(bSf:GetAttribute("MinigameStartedAt"))
end
function fns.fn5442(abB)
    local cvP = not abB.boulder
    local cvV = if cvP then 1 else 0
    local cvT = 1955 * cvV + 584 * (1 - cvV)
    local cvU = 633 * cvV + 911 * (1 - cvV)
    if not ((cvT * 2704 + cvU * 2444 + cvT * cvU) % 16777213 == 8070887) then
        cvP = not abB.boulder.Parent
    end
    if cvP then
        abB.boulder = bSg.TrainController.boulder()
    end
    local boulder = abB.boulder
    local goalPart = abB.goalPart
    local cvR = not boulder or not goalPart or not bQG(firetouchinterest)
    if cvR then
        return false
    end
    pcall(firetouchinterest, boulder, goalPart, 0)
    task.wait(0.1)
    pcall(firetouchinterest, boulder, goalPart, 1)
    return true
end
function fns.fn5477(LI)
    local Debree = bSf:FindFirstChild("Debree")
    if not Debree then
        return nil
    end
    for i, child in ipairs(Debree:GetChildren()) do
        if child.Name == LI then
            return child
        end
    end
    return nil
end
function fns.fn5480()
    local breathing = bSg.BreathController.breathing
    if breathing == "" then
        return "None"
    end
    local dnl = fns.dwb_59(breathing)
    if dnl <= 0 then
        return "None"
    end
    return string.format("%d Wen (have %d)", dnl, bR2())
end
function fns.fn5503()
    table.clear(fns.dwb_142.rank)
    for i, v in ipairs(fns.dwb_142.order) do
        fns.dwb_142.rank[v] = i
    end
end
function fns.fn5533(ahH)
    local cAk = fns.dwb_4()
    if not cAk then
        return nil
    end
    local Position = cAk.Position
    local cAm = ahH and fns.dwb_11.FISHING_DROP_RANGE or fns.dwb_11.FISHING_CAST_RANGE
    for i, v in ipairs(cAm) do
        local cAw = 0
        while cAw <= 7 do
            local cAx = cAw
            local cAk_2 = math.rad(cAx * 45)
            local cAm_1 = Position + Vector3.new(math.sin(cAk_2) * v, 0, math.cos(cAk_2) * v)
            if ahH then
                cAm_1 = Vector3.new(cAm_1.X, ahH, cAm_1.Z)
            end
            local cAk_3 = bSg.FishController.waterAt(cAm_1, Position)
            if cAk_3 then
                return cAk_3
            end
            cAw += 1
        end
    end
    return nil
end
function fns.fn5554()
    return bSs.SkillNodeCache
end
function fns.fn5563(BD)
    if not BD or not fns.dwb_142.active and BD ~= "AutoLoot" then
        return
    end
    fns.dwb_142.want(BD)
    task.wait(fns.dwb_142.settle)
end
function fns.fn5566(A3)
    local cca = A3 and A3 ~= "AutoLoot" and bSg.LootController.running and fns.dwb_142.wanted("AutoLoot")
    if cca then
        return "AutoLoot"
    end
    if not fns.dwb_142.active or not A3 then
        return nil
    end
    local cca_2 = fns.dwb_142.rankOf(A3)
    for k in pairs(fns.dwb_142.wants) do
        local ccb_1 = k ~= A3 and fns.dwb_142.wanted(k) and fns.dwb_142.rankOf(k) < cca_2
        if ccb_1 then
            return k
        end
    end
    for k in pairs(fns.dwb_142.commitments) do
        local ccb_2 = k ~= A3 and fns.dwb_142.rankOf(k) < cca_2 and fns.dwb_142.committed(k)
        if ccb_2 then
            return k
        end
    end
    return nil
end
function fns.fn5571(baB)
    bQS.ItemCategories = fns.dwb_90(baB)
end
function fns.fn5602(aNa)
    if aNa.category == "Players" then
        return aNa.party and fns.dwb_113.Party or fns.dwb_113.Players
    end
    local cZj_2 = fns.dwb_113[aNa.category]
    local cZo = if cZj_2 then 1 else 0
    local cZm = 2828 * cZo + 311 * (1 - cZo)
    local cZn = 3524 * cZo + 809 * (1 - cZo)
    if not ((cZm * 641 + cZn * 1035 + cZm * cZn) % 16777213 == 15425960) then
        cZj_2 = Color3.fromRGB(255, 255, 255)
    end
    return cZj_2
end
function fns.fn5605()
    local Humanoids = bSf:FindFirstChild("Humanoids")
    local bZE = Humanoids and Humanoids:FindFirstChild("Regions")
    local bZD_1 = bZE
    local bZI = if bZD_1 then 1 else 0
    local bZG = 1506 * bZI + 1240 * (1 - bZI)
    local bZH = 632 * bZI + 2558 * (1 - bZI)
    if not ((bZG * 1137 + bZH * 401 + bZG * bZH) % 16777213 == 2917546) then
        bZD_1 = nil
    end
    return bZD_1
end
function fns.fn5612()
    fns.dwb_147.stop()
    for k in pairs(fns.dwb_147.inputs) do
        fns.dwb_147.releaseInput(k)
    end
end
function fns.fn5620()
    local czK = not fns.dwb_118() or bQi(bSg.ShopController.items) == 0
    if czK then
        return
    end
    local czK_1 = false
    for k in pairs(bSg.ShopController.items) do
        if fns.dwb_52(k) < bSg.ShopController.keep then
            czK_1 = true
            break
        end
    end
    if not czK_1 then
        bSs.ShopStatus = "Nothing to buy"
        return
    end
    local czK_2 = 0
    local czL = false
    while true do
        local czM = (fns.dwb_147.controllerValid(bSg.ShopController)) and czK_2 < 8
        if czM then
            if bSU("AutoBuy") then
                czL = true
                break
            end
            task.wait(0.25)
            czK_2 += 0.25
            continue
        end
        break
    end
    if not czL then
        return
    end
    pcall(function()
        local czy = {}
        for k in pairs(bSg.ShopController.items) do
            czy[#czy + 1] = k
        end
        table.sort(czy)
        for i, v in ipairs(czy) do
            if not fns.dwb_147.controllerValid(bSg.ShopController) then
                return
            end
            if fns.dwb_52(v) < bSg.ShopController.keep then
                bPS(v, bSg.ShopController.keep)
                return
            end
        end
        bSs.ShopStatus = "Nothing to buy"
    end)
    bSu("AutoBuy")
end
function fns.fn5642()
    task.spawn(bSg.CrystalController.step)
end
function fns.fn5690(atc)
    return {
        content = bQS.Mention(),
        embeds = {
            {
                title = ("%s Report"):format(atc.Label),
                description = bQS.Rule,
                color = atc.Accent,
                fields = bQS.Fields(atc),
                footer = { text = ("%s  |  every %d min"):format(LocalPlayer.Name, atc.Interval) }
            }
        }
    }
end
function fns.fn5699(aY4, aY5, aY6)
    local marks = bSg.Alerts.marks
    local c6Y = marks[aY4]
    marks[aY4] = aY5
    if c6Y == nil then
        return aY6 == true
    end
    return c6Y ~= aY5
end
function fns.fn5700()
    if fns.dwb_147.holdConnection and bPT.connection == fns.dwb_147.holdConnection then
        fns.dwb_130()
    end
    fns.dwb_147.holdConnection = nil
end
function fns.fn5705()
    if coroutine.status(fns.dwb_28) ~= "dead" then
        pcall(task.cancel, fns.dwb_28)
    end
end
function fns.fn5750()
    local b5Y = type(fns.dwb_26.ClanSkills) ~= "table"
    local b56 = if b5Y then 1 else 0
    local b54 = 1175 * b56 + 2827 * (1 - b56)
    local b55 = 344 * b56 + 2374 * (1 - b56)
    if not ((b54 * 347 + b55 * 3727 + b54 * b55) % 16777213 == 2094013) then
        b5Y = not bQG(fns.dwb_26.ClanSkills.SkillsFor)
    end
    if b5Y then
        return {}
    end
    local b5Y_1 = fns.dwb_120({ "Clan" }, nil)
    local b5Z = b5Y_1 == ""
    local b5Z_1
    local b5_ = type(b5Y_1) ~= "string" or b5Z
    local b5__1
    if b5_ then
        return {}
    end
    b5Z_1, b5__1 = fns.dwb_144(fns.dwb_26.ClanSkills.SkillsFor, b5Y_1, LocalPlayer)
    local b5Y_2 = not b5Z_1 or type(b5__1) ~= "table"
    if b5Y_2 then
        return {}
    end
    local b5Y_3 = {}
    for i, v in ipairs(b5__1) do
        local b5Z_2 = type(v) == "table" and v.Name
        local b5__2 = b5Z_2 or nil
        local b5__3 = type(b5__2) == "string" and b5__2 ~= "" and not fns.dwb_11.NEVER_CAST[b5__2]
        if b5__3 then
            local b5__4 = #b5Y_3 + 1
            local b50 = (tonumber(v.Max_Hold)) or 0
            local b51 = type(v.RequiresAura) == "string" and v.RequiresAura
            b5Y_3[b5__4] = { name = b5__2, max = b50, aura = b51 or nil, mode = v.RequiresModeBar == true }
        end
    end
    return b5Y_3
end
function fns.fn5758()
    local cMl = bSg.SellController.stock()
    local cMm = {}
    for k in pairs(cMl) do
        cMm[#cMm + 1] = k
    end
    table.sort(cMm)
    return cMm
end
function fns.fn5766(aMW)
    local cY2_1
    local cY1_1
    local cY0_1
    local cY7 = if aMW:IsA("BasePart") then 1 else 0
    if cY7 == 1 then
        return aMW.CFrame, aMW.Size
    end
    cY0_1, cY2_1, cY1_1 = pcall(aMW.GetBoundingBox, aMW)
    local cY3 = cY0_1 and typeof(cY2_1) == "CFrame"
    if cY3 then
        local cY0_2 = typeof(cY1_1) ~= "Vector3"
        local cY7_1 = if cY0_2 then 1 else 0
        local cY5 = 2078 * cY7_1 + 1275 * (1 - cY7_1)
        local cY6 = 3908 * cY7_1 + 2878 * (1 - cY7_1)
        if not ((cY5 * 1953 + cY6 * 2144 + cY5 * cY6) % 16777213 == 3780697) then
            cY0_2 = cY1_1.Magnitude < 0.1
        end
        if cY0_2 then
            return cY2_1, Vector3.new(4, 8, 4)
        end
        return cY2_1, cY1_1
    end
    return nil, nil
end
function fns.fn5792(bdb)
    bTE.tweaks.noDashCd = bdb == true
end
function fns.fn5801(a6I)
    if a6I then
        fns.dwb_74("AutoChest")
        bSs.ChestStatus = "Starting"
        bSg.ChestController.running = true
        fns.dwb_53(bSg.ChestController, fns.dwb_109)
    else
        bSg.ChestController.running = false
        bSg.ChestController.pending = false
        fns.dwb_72(bSg.ChestController)
        fns.dwb_147.releaseHold()
        bSs.ChestStatus = "Idle"
    end
end
function fns.onCharacterAdded()
    fns.dwb_147.stop()
    fns.dwb_147.clearInputs()
    fns.dwb_147.punch, fns.dwb_147.source, fns.dwb_147.character = nil, nil, nil
    fns.dwb_147.resolveAt = 0
    fns.dwb_133.reset()
    table.clear(fns.dwb_147.clearance)
end
function fns.fn5846(a4v)
    if a4v then
        fns.dwb_74("AutoDelivery")
        bSs.DeliveryStatus = "Starting"
        bSg.DeliveryController.running = true
        fns.dwb_53(bSg.DeliveryController, bSg.DeliveryController.step)
    else
        bSg.DeliveryController.running = false
        fns.dwb_72(bSg.DeliveryController)
        bSs.DeliveryStatus = "Idle"
    end
end
function fns.fn5848()
    local a1v = SchematicRunner.props()
    a1v[#a1v + 1] = { name = "Nightfall Serpent Katana", box = true }
    table.sort(a1v, function(a1w, a1x)
        return a1w.name < a1x.name
    end)
    return a1v
end
function fns.fn5895()
    return LocalPlayer:GetAttribute(bSg.DemonController.attribute()) == true
end
function fns.fn5896()
    local c2u_1
    local c2s = fns.dwb_92.worldsModule()
    local c2t = type(c2s) == "table" and bQG(c2s.IsMenuPlace)
    local c2t_1
    if c2t then
        c2t_1, c2u_1 = fns.dwb_144(c2s.IsMenuPlace)
        if c2t_1 then
            return c2u_1 == true
        end
        return bSf:GetAttribute("IsMenu") == true
    end
    return bSf:GetAttribute("IsMenu") == true
end
function fns.fn5938()
    fns.dwb_43.on = false
    fns.connection3:Disconnect()
    for i, v in ipairs(bTg.catalogConnections) do
        v:Disconnect()
    end
    table.clear(bTg.catalogConnections)
    fns.dwb_43.invalidate()
end
function fns.fn5944(bgB)
    if bgB then
        bSs.StallStatus = "Starting"
        bSg.StallController.running = true
        bSg.StallController.seen, bSg.StallController.runKey, bSg.StallController.done = nil, nil, 0
        fns.dwb_53(bSg.StallController, fns.dwb_92.stallStep)
    else
        bSg.StallController.running = false
        fns.dwb_72(bSg.StallController)
        bSs.StallStatus = "Idle"
    end
end
function fns.fn5945(a7I)
    local dem = (tonumber(a7I)) or 400
    bQ4.tweenSpeed = math.clamp(dem, 50, 1000)
end
function fns.fn5952()
    local deF = {}
    local deG = type(fns.dwb_26.PlayerProfile) ~= "table" or type(fns.dwb_26.PlayerProfile.skill_info) ~= "table"
    if deG then
        fns.dwb_71("PlayerProfile.skill_info")
        return deF
    end
    local deG_1 = {}
    for k, v in pairs(fns.dwb_26.PlayerProfile.skill_info) do
        local deH = type(k) == "string" and k ~= "" and type(v) == "table" and not fns.dwb_11.NEVER_CAST[k] and v.CategoryType ~= "Clan"
        if deH then
            local deH_1 = tonumber(v.Max_Hold_Time)
            if deH_1 and deH_1 > 0 then
                local deI_1 = "SkillHold" .. k:gsub("%W", "")
                if deG_1[deI_1] then
                    deG_1[deI_1] += 1
                    deI_1 = deI_1 .. deG_1[deI_1]
                else
                    deG_1[deI_1] = 1
                end
                deF[#deF + 1] = { name = k, key = deI_1, max = deH_1, default = math.clamp(deH_1 * 0.25, 0.1, 1) }
            end
        end
    end
    table.sort(deF, function(a8h, a8i)
        return a8h.name < a8i.name
    end)
    return deF
end
function fns.fn5961(acg, ach, aci, acj, ack, acl)
    if acg == "Boulder Push" then
        local cwq = bSg.TrainController.pushPlan(acg, aci)
        if typeof(cwq.goal) ~= "Vector3" then
            bSs[ack] = "No goal for " .. acg
            bQR("training_signaler", "Stop", false)
            return false
        end
        if acj ~= "Play It Out" then
            fns.dwb_111(cwq.goal + Vector3.new(0, 3, 0), 0.4, acl)
            bSg.TrainController.touchGoal(cwq)
        end
        return bSg.TrainController.watch(acg, aci, acj, cwq, acl)
    elseif acj ~= "Play It Out" then
        task.wait(1)
        bQR("training_signaler", "Stop", true)
        return bSg.TrainController.watch(acg, aci, acj, {}, acl, 20)
    else
        return bSg.TrainController.watch(acg, aci, acj, { station = ach }, acl)
    end
end
function fns.fn5963(ba0)
    local dhg = (table.find(bQS.RarityNames(), ba0)) or 1
    bQS.LootRarity = dhg
end
function fns.fn5969()
    local cyV = {}
    for k in pairs(fns.dwb_11.SHOP_VENDORS) do
        cyV[#cyV + 1] = k
    end
    table.sort(cyV)
    return cyV
end
function fns.fn5975()
    return bQe.inDungeon()
end
function fns.fn5983(a6Q)
    bSg.ChestController.tiers = fns.dwb_90(a6Q)
    bSg.ChestController.emptyScans = 0
    fns.dwb_103(bSg.ChestController)
end
function fns.fn5984(a7G)
    bQ4.movementMode = a7G == "Teleport" and "Teleport" or "Tween"
end
function fns.fn5997()
    fns.dwb_142.settling = true
end
function fns.fn6004(awV)
    bSg.SellController.items = fns.dwb_90(awV)
    bSg.SellController.rearm()
end
function fns.fn6019(AL, AM)
    local cb1 = AL and fns.dwb_142.wants[AL]
    local cb2 = cb1
    if cb1 then
        local cb3 = AM or cb2.thread == coroutine.running()
        cb1 = cb3
    end
    if cb1 then
        fns.dwb_142.wants[AL] = nil
    end
end
function fns.fn6041(bdJ)
    bTE.Esp.set(bdJ)
end
function fns.fn6044()
    local xray = bTE.xray
    local diu = (xray.token or 0) + 1
    xray.token = diu
    local dit_1 = 0
    for i, child in ipairs(bSf:GetChildren()) do
        local div = not xray.on
        local diF = if div then 1 else 0
        local diD = 511 * diF + 1668 * (1 - diF)
        local diE = 3553 * diF + 3350 * (1 - diF)
        if not ((diD * 3532 + diE * 883 + diD * diE) % 16777213 == 6757734) then
            div = xray.token ~= diu
        end
        if div then
            return
        end
        local div_1 = not child:IsA("Terrain") and not bTE.xray.skipped(child)
        if div_1 then
            if child:IsA("BasePart") then
                xray.apply(child)
            end
            for i, descendant in ipairs(child:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    xray.apply(descendant)
                    dit_1 += 1
                    if dit_1 % 3000 == 0 then
                        task.wait()
                        if not xray.on or xray.token ~= diu then
                            return
                        end
                    end
                end
            end
        end
    end
end
function fns.fn6052(aFz, aFA)
    if not bTF[aFz] then
        return
    end
    bTF[aFz] = nil
    if aFA then
        local stats = fns.dwb_43.stats
        stats.cancelled = stats.cancelled + 1
    end
end
function fns.fn6055()
    if bSg.DemonController.points then
        return bSg.DemonController.points
    end
    local ciV = {}
    local ciW = fns.dwb_92.regions()
    local ciX = type(ciW) == "table" and ciW.NpcSpawns
    local ciW_1 = ciX or nil
    if type(ciW_1) == "table" then
        local ciW_2 = {}
        for k, v in pairs(ciW_1) do
            local ciY = type(k) == "string" and typeof(v) == "Vector3"
            if ciY then
                ciW_2[#ciW_2 + 1] = k
            end
        end
        table.sort(ciW_2)
        for i, v in ipairs(ciW_2) do
            ciV[#ciV + 1] = ciW_1[v]
        end
    end
    bSg.DemonController.points = ciV
    return ciV
end
function fns.fn6065(YA)
    local ctg = YA and YA.Parent
    while true do
        local ctf_1 = ctg and not ctg:IsA("BasePart")
        if ctf_1 then
            ctg = ctg.Parent
            continue
        end
        break
    end
    return ctg
end
function fns.fn6069(azY)
    local cPz = {}
    for k in pairs(azY) do
        cPz[#cPz + 1] = k
    end
    table.sort(cPz)
    return cPz
end
function fns.fn6076(aMC)
    bTu.on = fns.dwb_90(aMC)
    bRi.refreshAnyOn()
end
function fns.fn6079()
    local bWs = fns.dwb_82()
    local bWt = bWs and bWs:FindFirstChild("Quests")
    local bWs_1 = bWt
    if bWt then
        bWt = bWs_1:FindFirstChild("Holder")
    end
    return bWt or nil
end
function fns.fn6080(asT)
    local concat2 = table.concat
    local cJC = ("› Running  **%s**"):format(bQS.Clock(os.clock() - bQS.Started))
    local cJD = ("› Doing  %s"):format(fns.dwb_123.PriorityHolder())
    local cJE = (fns.dwb_118()) and bR3()
    local cJE_1 = cJE and "yes" or "no"
    local cJB_1 = {
        {
            name = "Session",
            value = concat2({ cJC, cJD, ("› Alive  %s"):format(cJE_1) }, "\n"),
            inline = true
        }
    }
    if asT.Label == "Dungeon" then
        local cJC_1 = tonumber(bSf:GetAttribute("MinigameFloor"))
        local insert = table.insert
        local concat = table.concat
        local cJF_1 = cJC_1 and tostring(cJC_1)
        local cJC_2 = cJF_1 or "lobby"
        local cJF_2 = ("› Floor  **%s**"):format(cJC_2)
        local cJG = (tonumber(LocalPlayer:GetAttribute("Hearts"))) or 0
        insert(cJB_1, {
            name = "Run",
            value = concat({
                cJF_2,
                ("› Hearts  **%s**"):format(tostring(cJG)),
                ("› Points  **%s**"):format(bQS.Commas(bSg.CrystalController.points()))
            }, "\n"),
            inline = true
        })
    else
        local cJC_3 = (tonumber(fns.dwb_120({ "Exp", "Goal" }, fns.dwb_26.EXP_PER_LEVEL))) or fns.dwb_26.EXP_PER_LEVEL
        local cJC_4 = (tonumber(fns.dwb_120({ "Exp", "Current" }, 0))) or 0
        table.insert(cJB_1, {
            name = "Character",
            value = table.concat({
                ("› Level  **%d** / %d"):format(bQt(), fns.dwb_26.MAX_LEVEL),
                ("› Exp  **%s** / %s"):format(bQS.Commas(cJC_4), bQS.Commas(cJC_3)),
                ("› Wen  **%s**"):format(bQS.Commas(bR2()))
            }, "\n"),
            inline = true
        })
    end
    table.insert(cJB_1, bQS.ActivityField(asT))
    local cJC_5 = bQS.ItemField(asT)
    if cJC_5 then
        table.insert(cJB_1, cJC_5)
    end
    local cJC_6 = bQS.CardField(asT)
    if cJC_6 then
        table.insert(cJB_1, cJC_6)
    end
    return cJB_1
end
function fns.fn6082()
    return fns.dwb_92.module("Server browser", { "CAM", "Client", "Controllers", "ServerBrowserController" })
end
function fns.fn6083()
    local Items_Config = LocalPlayer:FindFirstChild("Items_Config")
    local b1q = Items_Config and Items_Config:FindFirstChild("Equipped")
    return b1q or nil
end
function fns.fn6089()
    local cQD = pcall(function()
        local aBg = bSR(game:GetService("VirtualInputManager"))
        aBg:SendKeyEvent(true, Enum.KeyCode.LeftAlt, false, game)
        task.wait(0.05)
        aBg:SendKeyEvent(false, Enum.KeyCode.LeftAlt, false, game)
    end)
    if cQD then
        return true
    end
    local cQE = (bQG(keypress)) and bQG(keyrelease)
    if cQE then
        local cQD_1 = pcall(function()
            keypress(164)
            task.wait(0.05)
            keyrelease(164)
        end)
        if cQD_1 then
            return true
        end
        fns.dwb_71("VirtualInputManager")
        return false
    end
    fns.dwb_71("VirtualInputManager")
    return false
end
function fns.fn6109(bbx)
    if bTE.parry and bTE.parry.auto ~= (bbx ~= false) then
        bTE.parry.auto = bbx ~= false
        bTE.parry.reset()
    end
end
function fns.fn6115(oX)
    local b3v_1
    local b3u_1
    local b3s = fns.dwb_123.ParryReservedUntil and os.clock() < fns.dwb_123.ParryReservedUntil
    if b3s or fns.dwb_123.BlockWork.entry then
        return false, "Holding off for auto parry"
    end
    local b3s_1 = type(fns.dwb_26.CombatChecker) ~= "table" or not bQG(fns.dwb_26.CombatChecker.check)
    if b3s_1 then
        return false, "Combat checker unavailable"
    end
    local check = fns.dwb_26.CombatChecker.check
    local b3t_1 = oX or "combat"
    b3u_1, b3v_1 = fns.dwb_144(check, LocalPlayer, b3t_1)
    if not b3u_1 then
        return false, "Combat readiness check failed"
    elseif b3v_1 ~= true then
        return false, "Waiting for game combat readiness"
    else
        return true
    end
end
function fns.fn6120(arN, arO)
    local cH5 = arO == nil and false or arO
    local cH5_1 = bQS.Mark[arN]
    bQS.Mark[arN] = cH5
    return cH5_1 ~= nil and cH5_1 ~= cH5
end
function fns.fn6128(KN, KO)
    local ciL = type(KN) ~= "table" or #KN == 0
    if ciL then
        return false
    end
    local ciL_1 = fns.dwb_122(bSg.DemonController)
    local min = math.min
    local ciN = KO or 8
    local ciO = min(ciN, #KN)
    local ciS = 1
    while true do
        if not (ciS <= ciO) then
            return bSg.DemonController.muzan() ~= nil
        end
        if ciL_1() then
            return false
        end
        local DemonController = bSg.DemonController
        DemonController.cursor = (bSg.DemonController.cursor or 0) % #KN + 1
        local ciM_2 = KN[bSg.DemonController.cursor]
        if typeof(ciM_2) == "Vector3" then
            fns.dwb_137(ciM_2 + Vector3.new(0, 4, 0), 0, ciL_1)
            if ciL_1() then
                return false
            end
            if bRD(function()
                return bSg.DemonController.muzan() ~= nil
            end, 1.5, ciL_1) then
                break
            end
            ciS += 1
            continue
        end
        ciS += 1
    end
    return true
end
function fns.fn6142()
    local b0O = {}
    for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("Chest")) do
        local b0P = (v:IsA("Model")) and v:IsDescendantOf(bSf)
        if b0P then
            b0O[#b0O + 1] = v
        end
    end
    return b0O
end
function fns.fn6145()
    local c6A = if not fns.dwb_118() then 1 else 0
    if c6A == 1 then
        return
    end
    local WorldController = bSg.WorldController
    local c6u = WorldController.world == nil or WorldController.world == "" or not bQe.inMenuPlace()
    if c6u then
        fns.dwb_92.worldStep()
        return
    end
    local max = math.max
    local c6v = (tonumber(WorldController.delay)) or 0
    local c6w = max(0, c6v)
    local c6u_2 = WorldController.nextAt
    if not c6u_2 then
        local c6v_1 = WorldController.startedAt or os.clock()
        c6u_2 = c6v_1 + c6w
    end
    local c6v_2 = c6u_2
    local c6u_3 = c6v_2 - os.clock()
    if c6u_3 > 0 then
        bSs.WorldStatus = string.format("Joining in %ds", math.ceil(c6u_3))
        return
    end
    WorldController.nextAt = os.clock() + c6w
    fns.dwb_92.worldStep()
end
function fns.fn6149(a9F)
    local TrainController = bSg.TrainController
    TrainController.mode = a9F == "Play It Out" and "Play It Out" or "Instantly"
    fns.dwb_103(bSg.TrainController)
end
function fns.fn6155()
    while fns.dwb_118() do
        pcall(function()
            if not bTu.anyOn or not bTi.playerInfo then
                return
            end
            for k, v in pairs(bTu.entries) do
                if v.category == "Players" and v.player then
                    v.detail = bTE.describePlayer(v.player)
                    v.party = bTE.isParty(v.player)
                end
            end
        end)
        task.wait(3)
    end
end
function fns.fn6176()
    local RespawnController = bSg.RespawnController
    if not RespawnController.point then
        bSs.RespawnStatus = "No saved position"
    elseif RespawnController.enabled then
        bSs.RespawnStatus = "Saved " .. fns.dwb_123.PointText(RespawnController.point)
    else
        bSs.RespawnStatus = "Saved " .. fns.dwb_123.PointText(RespawnController.point) .. ", not in use"
    end
end
function fns.fn6192(XT)
    local csw = type(fns.dwb_26.Quests) ~= "table" or type(fns.dwb_26.Quests.Holder) ~= "table"
    if csw then
        return nil
    end
    local csw_1 = "Ill learn " .. XT .. " Breathing"
    for k in pairs(fns.dwb_26.Quests.Holder) do
        if k:sub(1, #csw_1) == csw_1 then
            return k
        end
    end
    return nil
end
function fns.fn6205(bbl)
    if bTE.parry and bTE.parry.npc ~= (bbl == true) then
        bTE.parry.invalidate()
        bTE.parry.npc = bbl == true
    end
end
function fns.fn6224(aDv)
    local cSh = fns.dwb_99()
    local cSi = cSh and cSh:FindFirstChildOfClass("Humanoid")
    if not cSi or cSi.Health <= 0 then
        return "none", "Waiting for character"
    end
    for k in pairs(bRg) do
        if aDv:FindFirstChild(k) then
            return "none", "Waiting: " .. k
        end
    end
    local cSh_2 = (aDv:FindFirstChild("Blocking")) or LocalPlayer:FindFirstChild("Blocking")
    local cSi_2 = cSh_2
    if cSh_2 then
        cSh_2 = cSi_2.Value
    end
    local cSj = cSh_2 or math.huge
    local cSj_2
    local cSh_3 = cSi_2
    local cSk_1
    if cSh_3 then
        cSh_3 = cSi_2.Value
    end
    fns.dwb_43.points = cSh_3 or nil
    if cSj <= 0 then
        return "none", "Waiting for block points"
    end
    local cSh_4 = cSj > fns.dwb_43.reserve
    for k in pairs(bTr) do
        if aDv:FindFirstChild(k) then
            return cSh_4 and "block" or "none", "Parry locked out"
        end
    end
    local cSi_5 = fns.dwb_105(aDv)
    if cSi_5 then
        cSj_2, cSk_1 = pcall(function()
            return fns.dwb_26.Utility.Tick()
        end)
        local cSl = not cSj_2 or not fns.dwb_154(cSk_1)
        if cSl then
            return cSh_4 and "block" or "none", "Parry locked out"
        elseif cSk_1 - cSi_5 < fns.dwb_68.relock then
            return cSh_4 and "block" or "none", "Parry locked out"
        else
            return "parry"
        end
    else
        return "parry"
    end
end
function fns.fn6235(a33)
    if a33 then
        fns.dwb_74("AutoMob")
        bSs.MobStatus = "Starting"
        bSg.MobController.running = true
        fns.dwb_53(bSg.MobController, bQH)
    else
        bSg.MobController.running = false
        fns.dwb_72(bSg.MobController)
        bSs.MobStatus = "Idle"
    end
end
function fns.fn6238(baa)
    local dgh = {}
    local dgj = bQS.Catalog[baa] or {}
    for i, v in ipairs(dgj) do
        dgh[#dgh + 1] = v.label
    end
    return dgh
end
function fns.fn6246()
    local cT0 = os.clock()
    local cT8 = #bTg.attempts
    local cT7 = -1
    while false and cT8 <= 1 or true and cT8 >= 1 do
        local cT9 = cT8
        local cT1_1 = bTg.attempts[cT9]
        local cT2 = false
        if cT1_1.owner == fns.dwb_99() then
            for k, v in pairs(cT1_1.models) do
                for k in pairs(fns.bRv(k)) do
                    local cT3_1 = not v[k]
                    if cT3_1 ~= false then
                        cT3_1 = not bTg.claimed[k]
                    end
                    if cT3_1 then
                        cT3_1 = k:IsA("ObjectValue")
                    end
                    if cT3_1 then
                        cT3_1 = k.Value == cT1_1.owner or k.Value == LocalPlayer
                    end
                    if cT3_1 then
                        bTg.claimed[k] = true
                        cT2 = true
                    end
                end
            end
        end
        local cT3_2 = cT2 or cT0 >= cT1_1.deadline or cT1_1.owner ~= fns.dwb_99()
        if cT3_2 then
            table.remove(bTg.attempts, cT9)
            local stats2 = fns.dwb_43.stats
            stats2.graded = stats2.graded + 1
            if cT2 then
                local stats = fns.dwb_43.stats
                stats.perfect = stats.perfect + 1
            end
        end
        cT8 += cT7
    end
end
function fns.fn6263(o9)
    local b3A = type(fns.dwb_26.PlayerProfile) ~= "table"
    local b3F = if b3A then 1 else 0
    local b3D = 1568 * b3F + 2538 * (1 - b3F)
    local b3E = 3181 * b3F + 649 * (1 - b3F)
    if not ((b3D * 4013 + b3E * 1803 + b3D * b3E) % 16777213 == 238322) then
        b3A = type(fns.dwb_26.PlayerProfile.skill_info) ~= "table"
    end
    if b3A then
        return nil
    end
    local b3A_1 = fns.dwb_26.PlayerProfile.skill_info[o9]
    local b3B = type(b3A_1) == "table" and b3A_1
    return b3B or nil
end
function fns.fn6300(r1)
    local active = fns.dwb_133.active
    if active and active.session == r1 then
        active.cancelled = true
        fns.dwb_133.release(active)
    end
end
function fns.fn6303(a7S)
    bQ4.autoSkills = a7S == true
    fns.dwb_133.reset()
    bSs.AutoSkillStatus = bQ4.autoSkills and "Starting" or "Idle"
end
function fns.fn6323()
    local cK2 = LocalPlayer:GetAttribute("SaveDisabled") == true or LocalPlayer:GetAttribute("SaveDisabledSlot") == true
    return cK2
end
function fns.fn6329()
    local cu1 = bSg.TrainController.part("Wrapper")
    local cu2 = cu1 and cu1:FindFirstChild("MainHolder")
    local cu3 = cu2
    if cu2 then
        cu2 = cu3:FindFirstChild("Actual")
    end
    local cu4 = cu2
    local cu2_1 = not cu4 or not cu4:FindFirstChild("Dragger") or cu3.AbsoluteSize.X <= 0
    if cu2_1 then
        return
    end
    local cu2_2 = cu3.AbsolutePosition + cu3.AbsoluteSize / 2
    local cu4_1 = math.rad(cu3.AbsoluteRotation)
    local cu3_1 = Vector2.new(math.cos(cu4_1), math.sin(cu4_1))
    local cu4_2 = cu1.AbsoluteSize.X / 2 - 6
    local pointer = bSg.TrainController.pointer
    pointer.move(cu2_2 - cu3_1 * cu4_2)
    fns.dwb_51.RunService.RenderStepped:Wait()
    if not cu1.Parent then
        return
    end
    pointer.hold(true)
    local cvc = 1
    while cvc <= 10 do
        local cvd = cvc
        pointer.move(cu2_2 - cu3_1 * cu4_2 + cu3_1 * (cu4_2 * 2 * cvd / 10))
        fns.dwb_51.RunService.RenderStepped:Wait()
        cvc += 1
    end
    pointer.hold(false)
end
function fns.fn6331(aP)
    local bVd = bQe.playerValues()
    local bVe = bVd and bVd:FindFirstChild("tooldisabled")
    if not bVe then
        return false
    end
    local bVe_1 = tostring(bVe.Value)
    local bVi = if bVe_1:find("all", 1, true) then 1 else 0
    if bVi == 1 then
        local bVd_2 = aP == nil or not bVe_1:find("except" .. aP, 1, true)
        return bVd_2
    end
    local bVd_3 = aP ~= nil and bVe_1:find(aP, 1, true) ~= nil
    return bVd_3
end
function fns.fn6333()
    local ChestController = bSg.ChestController
    if not ChestController.hop then
        return nil
    elseif ChestController.openedHere >= ChestController.hopAfter then
        return string.format("Opened %d/%d caches", ChestController.openedHere, ChestController.hopAfter)
    else
        if ChestController.hopEmpty and ChestController.emptyScans >= ChestController.hopScans then
            return string.format("No caches in %d scans", ChestController.emptyScans)
        end
        return nil
    end
end
function fns.fn6353()
    if fns.dwb_92.leaveFloorStep() then
        return
    end
    local c6q = bSg.OpenController.running and not bQe.inMenuPlace()
    if c6q then
        local c6q_1 = fns.dwb_92.lobbyPrompts(bSg.OpenController, "open", fns.dwb_11.OPEN_SKIP)[1]
        local c6r_1 = c6q_1 and fns.dwb_92.chestAffordable(c6q_1.prompt) and not fns.dwb_92.openLimitReached()
        if c6r_1 then
            bSs.LeaveStatus = "Waiting for the chest"
            return
        end
        if #bS5() > 0 then
            bSs.LeaveStatus = "Waiting for the chest loot"
            return
        end
    end
    local LeaveController = bSg.LeaveController
    if (LeaveController.delay or 0) > 0 then
        if #fns.dwb_92.lobbyPrompts(LeaveController, "leave", fns.dwb_11.LEAVE_SKIP) == 0 then
            LeaveController.readyAt = nil
        else
            local c6r_3 = LeaveController.readyAt or os.clock()
            LeaveController.readyAt = c6r_3
            local c6r_4 = LeaveController.delay - (os.clock() - LeaveController.readyAt)
            if c6r_4 > 0 then
                bSs.LeaveStatus = string.format("Leaving in %ds", math.ceil(c6r_4))
                return
            end
        end
    end
    fns.dwb_92.answerLobbyPrompt(LeaveController, "AutoLeave", "leave", fns.dwb_11.LEAVE_SKIP, "LeaveStatus", "Left")
end
function fns.fn6356()
    local dkX = {}
    for i, v in ipairs(bSs.GamemodeCache) do
        table.insert(dkX, v.label)
    end
    return dkX
end
function fns.fn6369(baU)
    bQS.SkipQuiet = baU == true
end
function fns.fn6371(bc1)
    bTE.tweaks.infStamina = bc1 == true
end
function fns.fn6393(arS)
    local cIc = fns.dwb_110(arS)
    if type(cIc) ~= "table" then
        return "Items"
    end
    local cIc_1 = cIc.InventoryCategory or cIc.Category or "Items"
    return tostring(cIc_1)
end
function fns.fn6415(CD, CE)
    local cdu = not fns.dwb_142.lease
    if not cdu then
        local cdv_1 = not CE
        if cdv_1 ~= false then
            cdv_1 = fns.dwb_142.lease.thread ~= coroutine.running()
        end
        cdu = cdv_1
    end
    if cdu then
        return
    end
    local cdu_1 = fns.dwb_147.runs[coroutine.running()]
    local cdv_2 = not CE
    if cdv_2 ~= false then
        cdv_2 = fns.dwb_142.ownerRun
    end
    if cdv_2 then
        cdv_2 = cdu_1 ~= fns.dwb_142.ownerRun
    end
    if cdv_2 then
        return
    end
    if CD ~= nil and fns.dwb_142.holder ~= nil and fns.dwb_142.holder ~= CD then
        return
    end
    local cdu_3 = CD or fns.dwb_142.holder
    if cdu_3 then
        fns.dwb_142.done(cdu_3, CE)
        local cdu_4 = fns.dwb_142.byKey[cdu_3]
        if cdu_4 then
            cdu_4.controller.yield = false
        end
    end
    fns.dwb_135 = false
    fns.dwb_142.lease = nil
    fns.dwb_142.ownerRun = nil
    fns.dwb_142.holder = nil
    if fns.dwb_142.active then
        bSs.PriorityHolder = "None"
        bSs.PriorityStatus = "Waiting for work"
    end
end
function fns.fn6426()
    local cKW = fns.dwb_92.module("Shop module", { "CAM", "Global", "Shop" })
    local cKX = type(cKW) == "table" and type(cKW.itemsforsale) == "table" and cKW.itemsforsale[fns.dwb_11.EXP_LISTING]
    local cKX_1 = cKX or nil
    local cKW_2 = type(cKX_1) == "table" and type(cKX_1.Price) == "table" and tonumber(cKX_1.Price.RunPoints)
    local cKX_2 = cKW_2 or nil
    local cKW_3 = cKX_2
    if cKX_2 then
        cKX_2 = cKW_3 > 0
    end
    return cKX_2 and cKW_3 or fns.dwb_11.EXP_BUNDLE_POINTS
end
function fns.fn6436()
    local b_g = {}
    for i, v in ipairs(fns.dwb_108()) do
        for i, child in ipairs(v.folder:GetChildren()) do
            local b_h = (child:IsA("Model")) and child:GetAttribute("IsMob")
            if b_h then
                local b_h_1 = child:FindFirstChildOfClass("Humanoid")
                if b_h_1 and b_h_1.Health > 0 then
                    b_g[#b_g + 1] = { name = v.folder.Name, region = v.region, model = child, humanoid = b_h_1 }
                end
            end
        end
    end
    return b_g
end
function fns.fn6448(S)
    return type(S) == "function"
end
function fns.fn6478(a0o)
    if fns.dwb_142.active or fns.dwb_142.settling then
        return
    end
    for k, v in pairs(bQE) do
        if k ~= a0o and v.controller.running then
            v.controller.running = false
            fns.dwb_72(v.controller)
            bSs[v.status] = "Idle"
        end
    end
    if bQG(fns.dwb_123.OnFarmClaim) then
        pcall(fns.dwb_123.OnFarmClaim, a0o)
    end
end
function fns.fn6486()
    task.delay(0, function()
        local dmi = fns.dwb_27()
        for i, v in ipairs(dmi) do
            bQ2(v.instance.Name)
        end
    end)
end
function fns.fn6494(a7E)
    local deg = (tonumber(a7E)) or 0
    bQ4.lateral = math.clamp(deg, -50, 50)
end
function fns.fn6514()
    local c3h = fns.dwb_92.queueSignal()
    local c3i = type(c3h) ~= "table" or not bQG(c3h.ToServer)
    if c3i then
        return
    end
    pcall(c3h.ToServer, "HudState", true)
end
function fns.fn6525()
    for i, v in ipairs(fns.dwb_11.FISHING_RODS) do
        if fns.dwb_52(v) > 0 then
            return v
        end
    end
    return nil
end
function fns.fn6532()
    local c8x_1
    local c8t = bSg.Alerts.rotatingShop()
    local c8u = type(c8t) ~= "table"
    local c8C = if c8u then 1 else 0
    local c8A = 21 * c8C + 157 * (1 - c8C)
    local c8B = 3879 * c8C + 4018 * (1 - c8C)
    if not ((c8A * 882 + c8B * 3956 + c8A * c8B) % 16777213 == 15445305) then
        c8u = not bQG(c8t.GetCycleIndex)
    end
    if not c8u then
        c8u = not bQG(c8t.GetRotation)
    end
    if c8u then
        return
    end
    for i, v in ipairs(bSg.Alerts.TAILORS) do
        local c8u_1 = fns.dwb_92.module(v.label .. " npc", v.path)
        local c8v = type(c8u_1) == "table" and c8u_1.RotatingShop
        local c8w = c8v or nil
        local c8w_1, c8w_2
        if type(c8w) == "table" then
            c8w_1, c8x_1 = fns.dwb_144(c8t.GetCycleIndex, c8w)
            local c8y = c8w_1 and type(c8x_1) == "number" and bSg.Alerts.fresh("tailor:" .. v.label, c8x_1)
            local c8y_1
            if c8y then
                c8w_2, c8y_1 = fns.dwb_144(c8t.GetRotation, c8w, c8x_1)
                local c8v_2 = c8w_2 and bSg.Alerts.names(c8y_1, 8)
                local c8x_2 = c8v_2 or {}
                local vendorModel = bSg.Alerts.vendorModel
                local c8x_3 = c8u_1.Name or v.label
                local c8y_2 = (vendorModel(c8x_3)) or bSg.Alerts.vendorModel(v.label)
                local c8w_5 = c8y_2
                local c8x_4 = not c8w_5
                if c8x_4 ~= false then
                    c8x_4 = type(c8u_1.Spawns) == "table"
                end
                if c8x_4 then
                    local c8x_5 = c8u_1.Spawns[1]
                    local c8u_2 = typeof(c8x_5) == "CFrame" and c8x_5.Position
                    local c8y_3 = c8u_2
                    if not c8y_3 then
                        local c8u_3 = typeof(c8x_5) == "Vector3" and c8x_5
                        c8y_3 = c8u_3 or nil
                    end
                    c8w_5 = c8y_3
                end
                local c8u_4 = v.label .. " restocked"
                if #c8x_2 > 0 then
                    c8u_4 = c8u_4 .. ": " .. table.concat(c8x_2, ", ")
                end
                bSg.Alerts.push(c8u_4, c8w_5)
            end
        end
    end
end
function fns.fn6543()
    local cLh = bSg.CrystalController.prompt()
    local cLi = cLh and cLh.Parent
    local cLh_1 = cLi
    if cLi then
        cLi = cLh_1:IsA("BasePart")
    end
    if cLi then
        return cLh_1.Position
    end
    local Map = bSf:FindFirstChild("Map")
    local cLi_1 = Map and Map:FindFirstChild(fns.dwb_11.CRYSTAL_NAME)
    local cLh_3 = cLi_1
    if cLi_1 then
        cLi_1 = cLh_3:IsA("BasePart")
    end
    if cLi_1 then
        return cLh_3.Position
    end
    return nil
end
function fns.fn6545()
    local djQ = {}
    local Debree = fns.dwb_51.Workspace:FindFirstChild("Debree")
    local djS = Debree and Debree:FindFirstChild("Regions")
    if not djS then
        return djQ
    end
    for i, child in ipairs(djS:GetChildren()) do
        for i, child in ipairs(child:GetChildren()) do
            local attr = child:GetAttribute("SpawnArea")
            local djS_1 = attr ~= ""
            local djT = type(attr) == "string" and djS_1
            if djT then
                djQ[attr] = child
            end
        end
    end
    return djQ
end
function fns.fn6555(a4H)
    local db6 = a4H == ""
    local db7 = type(a4H) ~= "string"
    local dcb = if db7 then 1 else 0
    local db9 = 2172 * dcb + 1372 * (1 - dcb)
    local dca = 4041 * dcb + 249 * (1 - dcb)
    if not ((db9 * 2610 + dca * 582 + db9 * dca) % 16777213 == 20621) then
        db7 = db6
    end
    if db7 then
        return
    end
    bSg.DemonController.repMob = a4H
    bSg.DemonController.wasted = 0
    fns.dwb_103(bSg.DemonController)
end
function fns.fn6559()
    return bSg.FishController.ours("FishingCatch")
end
function fns.fn6564()
    bQS.LootAdded:Disconnect()
    bQS.LootRemoved:Disconnect()
    for k, v in pairs(bQS.LootHooks) do
        v:Disconnect()
    end
    table.clear(bQS.LootHooks)
end
function fns.fn6568(Y6)
    local ctJ = bSg.TrainController.overlay()
    if not ctJ then
        return nil
    end
    for i, descendant in ipairs(ctJ:GetDescendants()) do
        local ctJ_1 = descendant.Name == Y6 and descendant:IsA("GuiObject")
        if ctJ_1 then
            return descendant
        end
    end
    return nil
end
function fns.fn6605(aDq)
    local cSe = aDq and aDq:FindFirstChild("DMG")
    local cSf = cSe
    if cSe then
        cSe = tonumber(cSf:GetAttribute("LastAttacked"))
    end
    return cSe
end
function fns.fn6611()
    for k in pairs(bRu.marks) do
        bTh(k)
    end
end
function fns.fn6615()
    if not fns.dwb_43.on then
        bSs.ParryStatus = "Off"
        return
    end
    if not fns.dwb_30 then
        bSs.ParryStatus = "Waiting for combat presets"
        return
    end
    local entry = fns.dwb_123.BlockWork.entry
    local stats = fns.dwb_43.stats
    local cWg = entry
    if cWg then
        cWg = entry == fns.dwb_43.blockEntry and entry.phase or "previous release"
    end
    local cWe_2 = cWg or fns.dwb_43.reason
    local cWe_3 = fns.dwb_43.points and string.format(", %d block points", fns.dwb_43.points)
    local cWe_4 = cWe_3 or ""
    if stats.ambiguous > 0 then
        cWe_4 ..= string.format(", %d ambiguous", stats.ambiguous)
    end
    local format = string.format
    local cWi = cWe_2 or "Watching"
    bSs.ParryStatus = format("%s | %d watched, %d taps, %d confirmed, %d unconfirmed, %d mitigation taps, %d missed%s", cWi, bTg.watching, stats.fired, stats.perfect, stats.graded - stats.perfect, stats.locked, stats.missed, cWe_4)
end
function fns.fn6642()
    local cCo = fns.dwb_36()
    local cCp
    for i, v in ipairs(fns.dwb_11.ANGLER_QUESTS) do
        local cCq = fns.dwb_140(v)
        if type(cCq) == "table" then
            local cCr = fns.dwb_83(cCq, v)
            local cCs = cCo and cCo:FindFirstChild(cCr)
            if cCs then
                return v, cCq, cCs
            end
            local cCr_2 = not cCp
            if cCr_2 ~= false then
                cCr_2 = fns.dwb_128(cCq)
            end
            if cCr_2 then
                cCp = { v, cCq }
            end
        end
    end
    if cCp then
        return cCp[1], cCp[2], nil
    end
    return nil
end
function fns.fn6657(bgJ)
    if bgJ then
        bSs.ResetStatus = "Starting"
        bSg.ResetController.running = true
        bSg.ResetController.done, bSg.ResetController.runKey = 0, nil
        fns.dwb_53(bSg.ResetController, fns.dwb_92.resetStep)
    else
        bSg.ResetController.running = false
        fns.dwb_72(bSg.ResetController)
        bSs.ResetStatus = "Idle"
    end
end
function fns.fn6661(H0)
    local cgO_1
    local cgN_1
    local cgM_1
    local cgL = type(fns.dwb_26.Quests) ~= "table" or not bQG(fns.dwb_26.Quests.CanAddQuest)
    local cgL_1
    if cgL then
        fns.dwb_71("Quests.CanAddQuest")
        return false
    end
    cgL_1, cgO_1, cgM_1, cgN_1 = fns.dwb_144(fns.dwb_26.Quests.CanAddQuest, LocalPlayer, H0)
    if not cgL_1 then
        return false
    end
    return not not cgO_1, cgM_1, cgN_1
end
function fns.fn6668(bbD)
    bbD = tonumber(bbD)
    local dhJ = bTE.parry and bbD and bbD == bbD and math.abs(bbD) < math.huge
    if dhJ then
        bTE.parry.radius = math.clamp(bbD, 10, 150)
    end
end
function fns.fn6675(a6_)
    local ddL = type(a6_) == "string" and table.find(fns.dwb_11.HOP_ORDERS, a6_)
    if ddL then
        bSg.ChestController.hopOrder = a6_
    end
end
function fns.fn6677(aE3, aE4, aE5, aE6, aE7, aE8)
    local cS2 = aE3 and aE3.Parent and aE3:FindFirstChild("HumanoidRootPart")
    local cS2_1 = fns.dwb_4()
    if not cS2 or not cS2_1 then
        return false
    end
    local cS4_1 = cS2_1.Position - cS2.Position
    if aE7 and aE7 > 0 then
        local cS6_1 = (cS2_1.AssemblyLinearVelocity or Vector3.zero) - (cS2.AssemblyLinearVelocity or Vector3.zero)
        if cS6_1.Magnitude < 250 then
            cS4_1 = cS4_1 + cS6_1 * math.min(aE7, 0.2)
        end
    end
    local cS2_3 = aE8 and aE8.preset
    local cS5_3 = cS2_3
    if cS2_3 then
        cS2_3 = cS5_3.Widths
    end
    if cS2_3 then
        local cS6_2 = cS5_3.Widths[aE8.combo]
        local cTb = if cS6_2 then 1 else 0
        local cS9 = 347 * cTb + 3552 * (1 - cTb)
        local cTa = 541 * cTb + 3221 * (1 - cTb)
        if not ((cS9 * 2338 + cTa * 965 + cS9 * cTa) % 16777213 == 1521078) then
            cS6_2 = cS5_3.Widths.Default
        end
        cS2_3 = cS6_2
    end
    local cS6_3 = cS2_3 or 0
    local cS2_4 = cS5_3
    if cS2_4 then
        cS2_4 = cS5_3.YOffsets
    end
    if cS2_4 then
        cS2_4 = cS5_3.YOffsets[aE8.combo] or cS5_3.YOffsets.Default
    end
    local cS5_4 = cS2_4 or 0
    if math.abs(cS4_1.Y - cS5_4 + 1) > 6 + math.max(0, cS6_3) * 0.5 then
        return false
    end
    local cS2_6 = Vector3.new(cS4_1.X, 0, cS4_1.Z)
    local Magnitude = cS2_6.Magnitude
    if Magnitude > aE4 + aE5 then
        return false
    end
    if not aE6 or Magnitude < 0.1 then
        return true
    end
    local LookVector = cS2.CFrame.LookVector
    local cS3_1 = Vector3.new(LookVector.X, 0, LookVector.Z)
    local cS4_4 = cS3_1.Magnitude < 0.01 or cS3_1.Unit:Dot(cS2_6.Unit) >= fns.dwb_68.facingMin
    return cS4_4
end
function fns.fn6679(pQ, pR)
    if pQ and pQ.clan then
        bSs.ClanSkillStatus = pR
    else
        bSs.AutoSkillStatus = pR
    end
end
function fns.fn6690(a31)
    bSg.LevelController.dropForeign = a31 == true
end
function fns.fn6691(kO)
    local Debree = bSf:FindFirstChild("Debree")
    local b0y = Debree and Debree:FindFirstChild("Regions")
    if not b0y then
        return nil
    end
    for i, child in ipairs(b0y:GetChildren()) do
        local StationaryNpcs = child:FindFirstChild("StationaryNpcs")
        local b0y_1 = StationaryNpcs and StationaryNpcs:FindFirstChild(kO)
        if b0y_1 then
            return b0y_1
        end
    end
    return nil
end
function fns.fn6711()
    bRf.alwaysRun = false
    fns.dwb_152()
end
function fns.fn6713(apq)
    if not bSg.DemonController.night() then
        local cF7_1 = bSg.DemonController.phaseIn()
        local pause = bSg.RodController.pause
        local cF9_1 = cF7_1 and string.format("Isao's line only takes at night, %ds", math.ceil(cF7_1))
        local cGa_1 = cF9_1 or "Isao's line only takes at night"
        local cF9_2 = cF7_1 and math.min(cF7_1, 30)
        local cF7_2 = cF9_2 or fns.dwb_11.ROD_PAUSE
        pause(cGa_1, cF7_2)
        return
    end
    local cF7_3 = not bSg.RodController.holdRod(fns.dwb_11.STARTER_ROD, apq) or apq()
    if cF7_3 then
        return
    end
    local cGf = if not bSg.RodController.useBait(nil, apq) then 1 else 0
    if cGf == 1 then
        local cGf_1 = if not apq() then 1 else 0
        if cGf_1 == 1 then
            bSg.RodController.pause("Cannot clear the bait slot")
        end
        return
    end
    local ROD_LURE_STANDS = fns.dwb_11.ROD_LURE_STANDS
    local cF9_3 = ((bSg.RodController.cursor or 1) - 1) % #ROD_LURE_STANDS + 1
    local cF8_3 = string.format("the gorge ledge (%d/%d)", cF9_3, #ROD_LURE_STANDS)
    local format = string.format
    local cGb = bSg.RodController.catches or 0
    bSs.RodStatus = format("Bare hook at %s -- %d of %d catches", cF8_3, cGb, fns.dwb_11.ROD_STAND_CATCHES)
    local cGa_3 = bSg.RodController.castFrom(ROD_LURE_STANDS[cF9_3], cF8_3, apq)
    local cF8_4 = (apq()) or fns.dwb_52(fns.dwb_11.ROD_LURE) > 0
    if cF8_4 then
        return
    end
    if cGa_3 == "caught" then
        local RodController = bSg.RodController
        RodController.catches = (bSg.RodController.catches or 0) + 1
    elseif cGa_3 == "nocast" then
        bSg.RodController.catches = fns.dwb_11.ROD_STAND_CATCHES
    end
    if (bSg.RodController.catches or 0) >= fns.dwb_11.ROD_STAND_CATCHES then
        bSg.RodController.catches = 0
        bSg.RodController.cursor = cF9_3 % #ROD_LURE_STANDS + 1
    end
end
function fns.fn6716(Iv)
    local chh = fns.dwb_140(Iv)
    local chi = type(chh) ~= "table" or type(chh.Rewards) ~= "table"
    if chi then
        return 0
    end
    local chi_1 = (tonumber(chh.Rewards.Exp)) or 0
    return chi_1
end
function fns.fn6723()
    local chT = fns.dwb_92.module("MuzanSettings module", { "CAM", "Global", "MuzanSettings" })
    local chU = type(chT) == "table" and chT
    return chU or nil
end
function fns.fn6734(Bq)
    if Bq then
        fns.dwb_142.commitments[Bq] = nil
    end
end
function fns.fn6735(bc9)
    bTE.shiftLock.set(bc9)
end
function fns.fn6757()
    task.delay(0, function()
        if bQu() then
            bSs.LevelStatus = "Equipped " .. tostring(fns.dwb_96())
        else
            bSs.LevelStatus = "No combat item in toolbar"
        end
    end)
end
function fns.fn6765()
    if bSg.DemonController.inCombat() then
        bSs.DemonStatus = "Waiting to leave combat"
        task.wait(2)
        return
    end
    bSs.DemonStatus = "Drinking Muzan's Blood"
    local cln = bSg.DemonController.number("TransformLength", 9.6)
    if not bSg.DemonController.useTool("Muzan's Blood", cln) then
        bSs.DemonStatus = "Cannot hold Muzan's Blood"
        return
    end
    local cln_1 = bRD(function()
        local clj = bRS()
        return clj == "Demon" or clj == "Hybrid"
    end, bSg.DemonController.number("TransformCutsceneAt", 3) + 5)
    bSg.DemonController.putBack()
    local cln_2 = cln_1 and "You are a demon"
    local cls = if cln_2 then 1 else 0
    local clq = 69 * cls + 772 * (1 - cls)
    local clr = 3828 * cls + 3745 * (1 - cls)
    if not ((clq * 624 + clr * 1732 + clq * clr) % 16777213 == 6937284) then
        cln_2 = "The blood did not take"
    end
    bSs.DemonStatus = cln_2
end
function fns.fn6782()
    local PotionController = bSg.PotionController
    if not PotionController.running or PotionController.potion == "" then
        return false
    end
    local c0P_1 = fns.dwb_104()
    if not c0P_1 or c0P_1.Health <= 0 or c0P_1.MaxHealth <= 0 then
        return false
    end
    local c0Q_1 = c0P_1.Health / c0P_1.MaxHealth * 100 <= PotionController.threshold and fns.dwb_52(PotionController.potion) > 0
    return c0Q_1
end
function fns.fn6788(apF, apG, apH)
    local cGg = bSg.FishController.rod()
    if not cGg then
        bSg.RodController.holdRod(fns.dwb_11.STARTER_ROD, apH)
        return
    end
    local cGh = not bSg.RodController.holdRod(cGg, apH) or apH()
    if cGh then
        return
    end
    local cGh_1 = nil
    for i, v in ipairs(fns.dwb_11.ROD_TOLL_BAITS) do
        if fns.dwb_52(v) > 0 then
            cGh_1 = v
            break
        end
    end
    local cGi = not cGh_1
    local cGi_2
    if cGi ~= false then
        cGi = bSg.FishController.buyBait
    end
    if cGi then
        for i, v in ipairs(fns.dwb_11.ROD_TOLL_BAITS) do
            if fns.dwb_11.SHOP_VENDORS[v] then
                bSs.RodStatus = "Buying " .. v
                bPS(v, fns.dwb_11.BAIT_RESTOCK, bSg.RodController, "RodStatus")
                if fns.dwb_52(v) > 0 then
                    cGh_1 = v
                end
                break
            end
        end
        local cGi_1 = (apH()) or not bSg.RodController.holdRod(cGg, apH)
        if cGi_1 then
            return
        end
    end
    bSg.RodController.useBait(cGh_1, apH)
    if apH() then
        return
    end
    if not cGh_1 then
        cGi_2 = " (no bait)"
    elseif cGg == fns.dwb_11.STARTER_ROD then
        cGi_2 = " (" .. cGh_1 .. ", basic rod)"
    else
        cGi_2 = " (" .. cGh_1 .. ")"
    end
    bSs.RodStatus = string.format("Isao's toll: %s %d/%d%s", apF.name, apG, apF.count, cGi_2)
    bSg.RodController.castFrom(fns.dwb_11.FISHING_DOCK + Vector3.new(0, 3, 0), "the harbour", apH)
end
function fns.fn6790()
    local OpenController = bSg.OpenController
    return OpenController.limit > 0 and OpenController.opened >= OpenController.limit
end
function fns.fn6807(wx)
    local b8q = fns.dwb_140(wx)
    local b8r = type(b8q) == "table" and typeof(b8q.QuestInstance) == "Instance"
    if b8r then
        return b8q.QuestInstance.Name
    end
    return tostring(wx)
end
function fns.fn6834()
    local cig_1
    local cie = fns.dwb_92.module("DayAndNightHandler module", { "CAM", "Global", "DayAndNightHandler" })
    local cif = type(cie) ~= "table"
    local cif_1
    local cik = if cif then 1 else 0
    local cii = 3904 * cik + 3391 * (1 - cik)
    local cij = 3306 * cik + 20 * (1 - cik)
    if not ((cii * 2184 + cij * 1080 + cii * cij) % 16777213 == 8226227) then
        cif = not bQG(cie.SecondsUntilPhaseChange)
    end
    if cif then
        return nil
    end
    cif_1, cig_1 = fns.dwb_144(cie.SecondsUntilPhaseChange)
    local cie_1 = cif_1 and tonumber(cig_1)
    local cif_2 = cie_1 or nil
    if not cif_2 or cif_2 < 0 then
        return nil
    end
    return cif_2
end
function fns.fn6836()
    return fns.dwb_52(fns.dwb_11.ROD_PRIZE) > 0
end
function fns.fn6842()
    if bSg.DemonController.walk then
        return bSg.DemonController.walk
    end
    local cjj = {}
    for i, v in ipairs(fns.dwb_11.MUZAN_ROUTES) do
        cjj[#cjj + 1] = v
    end
    local cjk = fns.dwb_92.module("Muzan npc module", { "Ouwland", "Content", "Misc", "Npcs", "Muzan" })
    local cjl = type(cjk) == "table" and cjk.Spawns
    local cjk_1 = cjl or nil
    if type(cjk_1) == "table" then
        for i, v in ipairs(cjk_1) do
            if type(v) == "table" then
                local cjk_2 = #v
                local cjB = 1
                while cjB <= cjk_2 do
                    local cjk_3 = v[cjB]
                    if typeof(cjk_3) == "Vector3" then
                        local cjl_2 = false
                        for i, v in ipairs(cjj) do
                            if (v - cjk_3).Magnitude < 60 then
                                cjl_2 = true
                                break
                            end
                        end
                        if not cjl_2 then
                            cjj[#cjj + 1] = cjk_3
                        end
                    end
                    cjB += 3
                end
            end
        end
    end
    bSg.DemonController.walk = cjj
    return cjj
end
function fns.fn6889(aD7)
    local cSD = fns.dwb_123.BlockWork.entry ~= aD7 or fns.dwb_99() ~= aD7.character
    if cSD then
        bQ1(aD7)
        return
    end
    local cSD_1 = os.clock()
    if aD7.hardStop and cSD_1 >= aD7.hardStop then
        bTg.releaseFailed = true
        bQ1(aD7)
        return
    end
    local cSE_1 = bQe.playerValues()
    local cSF = cSE_1 and cSE_1:FindFirstChild("Blocking")
    if aD7.phase == "awaiting" and cSF then
        aD7.block = cSF
        aD7.phase = "holding"
    end
    if aD7.block and cSF ~= aD7.block then
        if aD7.block.Parent == LocalPlayer or aD7.block.Parent == nil then
            bQ1(aD7)
            return
        end
    end
    if aD7.phase == "unresolved" then
        if not cSF then
            bQ1(aD7)
        else
            if cSD_1 >= aD7.retryAt and aD7.retries < fns.dwb_68.retries then
                aD7.retries = aD7.retries + 1
                aD7.retryAt = cSD_1 + fns.dwb_68.retryGap
                bQR("server_skill_controller_signaler", "Blocking", "UnHold", Vector3.zero)
            elseif cSD_1 >= aD7.expiry then
                bTg.releaseFailed = true
                bQ1(aD7)
            end
        end
        return
    end
    if cSD_1 >= aD7.releaseAt then
        aD7.releaseRequested = true
    end
    if aD7.releaseRequested and aD7.phase == "holding" then
        aD7.phase = "releasing"
        aD7.deadline = cSD_1 + fns.dwb_68.acknowledgement
        bQR("server_skill_controller_signaler", "Blocking", "UnHold", Vector3.zero)
        return
    end
    if cSD_1 >= aD7.deadline then
        fns.dwb_69(aD7, true)
    end
end
function fns.fn6901()
    local c7N = os.time()
    for k in pairs(bSg.Alerts.bosses) do
        local c7O = fns.dwb_47(k)
        local c7P = c7O and c7O:FindFirstChild("BossInfo")
        local c7Q = c7O
        local c7R = c7P
        if c7Q then
            c7Q = c7O:GetAttribute("DespawnedAt")
        end
        local c7S = c7Q
        if c7P then
            c7P = c7R:GetAttribute("SpawnTime")
        end
        local c7Q_1 = c7P
        local c7P_1 = c7R ~= nil
        if c7P_1 then
            local c7T_1 = c7R:GetAttribute("OnlyAtNight") == true and not bSg.DemonController.night()
            local c7U_1 = c7T_1
            if not c7U_1 then
                local c7T_2 = c7O:GetAttribute("Temporary") == true and c7R:GetAttribute("SpawnCountdown") ~= true
                c7U_1 = c7T_2
            end
            c7P_1 = c7U_1
        end
        local c7O_1 = c7P_1
        local c7P_2 = type(c7S) == "number" and type(c7Q_1) == "number"
        if c7P_2 and not c7O_1 then
            local c7O_2 = c7N >= c7S + c7Q_1
            local fresh = bSg.Alerts.fresh
            local c7Q_2 = "boss:" .. k
            local c7R_2 = tostring(c7S)
            local c7U_2 = c7O_2 and "|up" or "|down"
            local c7T_5 = fresh(c7Q_2, c7R_2 .. c7U_2)
            if c7O_2 and c7T_5 then
                bSg.Alerts.push(k .. " has spawned", bTH(k))
            end
        end
    end
end
function fns.fn6904(Rp, Rq)
    local attr = Rp:GetAttribute("ChestId")
    local cnV = type(attr) == "string" and attr:match("T%d+") == nil and Rq[attr] == true
    return cnV
end
function fns.fn6906(pz, pA)
    local b3_ = bQ4.holdTimes[pz]
    if b3_ ~= nil then
        local max = math.max
        local b31 = (tonumber(b3_)) or 0
        return max(b31, 0)
    end
    local b3__1 = (tonumber(pA)) or 0
    pA = b3__1
    if pA <= 0 then
        local b3__2 = fns.dwb_146(pz)
        local b30_2 = b3__2 and tonumber(b3__2.Max_Hold_Time)
        local b3__3 = b30_2
        local b35 = if b3__3 then 1 else 0
        local b33 = 1086 * b35 + 1982 * (1 - b35)
        local b34 = 830 * b35 + 3337 * (1 - b35)
        if not ((b33 * 3126 + b34 * 3578 + b33 * b34) % 16777213 == 7265956) then
            b3__3 = 0
        end
        pA = b3__3
    end
    if pA <= 0 then
        return 0
    end
    return math.clamp(pA * 0.25, 0.1, 1)
end
function fns.fn6910(bg0)
    local LeaveController = bSg.LeaveController
    local dlM = (tonumber(bg0)) or 0
    LeaveController.floor = math.clamp(math.floor(dlM), 0, 100)
    bSg.LeaveController.floorDone, bSg.LeaveController.floorKey = 0, nil
end
function fns.fn6916(a7e)
    local BreathController = bSg.BreathController
    local ddU = type(a7e) == "string" and a7e
    BreathController.breathing = ddU or ""
    fns.dwb_103(bSg.BreathController)
end
function fns.fn6923()
    task.delay(0, function()
        local last = bSg.Alerts.last
        if not last or not last.point then
            local djD_1 = last and "Nothing to travel to"
            local djH = if djD_1 then 1 else 0
            local djF = 979 * djH + 1579 * (1 - djH)
            local djG = 85 * djH + 4066 * (1 - djH)
            if not ((djF * 653 + djG * 2527 + djF * djG) % 16777213 == 937297) then
                djD_1 = "No notification yet"
            end
            bSs.TeleportStatus = djD_1
            return
        end
        bSs.TeleportStatus = "Travelling to " .. last.text
        local djC_2 = fns.dwb_111(last.point + Vector3.new(0, 5, 0), 0.2)
        bSs.TeleportStatus = djC_2 and "Arrived at " .. last.text or "Stopped short of the notification"
    end)
end
function fns.fn6954(alH)
    local cDD_8, cDD_12, cDD_14
    local cDC_16
    local cDz = fns.dwb_4()
    local cDA = bSg.FishController.stand
    if not cDA then
        cDA = cDz and cDz.CFrame
    end
    local cDz_1 = cDA
    local cDA_1 = bSg.FishController.rod()
    if not cDA_1 then
        if not bSg.FishController.earnPermit(alH) then
            return nil
        end
        bSs.FishStatus = "Buying a " .. fns.dwb_11.STARTER_ROD
        bPS(fns.dwb_11.STARTER_ROD, 1, bSg.FishController, "FishStatus")
        bSg.FishController.recall(cDz_1, alH)
        local cDA_2 = bSg.FishController.rod()
        if not cDA_2 then
            return nil
        end
        fns.dwb_62(cDA_2)
        fns.bSv()
        if cDD_8 then
            if not bQe.holdItem(cDA_1) then
                bSs.FishStatus = "Cannot equip the " .. cDA_2
                return nil
            end
            local bait = bSg.FishController.bait
            if cDD_12 then
                local cDC_3 = fns.dwb_52(bait) <= 0 and bSg.FishController.buyBait and fns.dwb_11.SHOP_VENDORS[bait]
                if cDC_16 then
                    bSs.FishStatus = "Buying " .. bait
                    bPS(bait, fns.dwb_11.BAIT_RESTOCK, bSg.FishController, "FishStatus")
                    bSg.FishController.recall(cDz_1, alH)
                    if not bQe.holdItem(cDA_1) then
                        bSs.FishStatus = "Cannot equip the " .. cDA_2
                        return nil
                    end
                    local cDT_1 = if fns.dwb_52(bait) <= 0 then 1 else 0
                    if cDT_1 == 1 then
                        bSs.FishStatus = "Out of " .. bait
                    else
                        local cDz_2 = fns.dwb_50(bait)
                        local cDB_4 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                        if cDD_14 then
                            bQR("EquipBait", cDz_2)
                            task.wait(0.4)
                        end
                    end
                    return cDA_2
                end
                local cDT_2 = if fns.dwb_52(bait) <= 0 then 1 else 0
                if cDT_2 == 1 then
                    bSs.FishStatus = "Out of " .. bait
                else
                    local cDz_3 = fns.dwb_50(bait)
                    local cDB_6 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                    if cDD_14 then
                        bQR("EquipBait", cDz_3)
                        task.wait(0.4)
                    end
                end
                return cDA_2
            end
            return cDA_2
        end
        local bait = bSg.FishController.bait
        if cDD_12 then
            local cDC_7 = fns.dwb_52(bait) <= 0 and bSg.FishController.buyBait and fns.dwb_11.SHOP_VENDORS[bait]
            if cDC_16 then
                bSs.FishStatus = "Buying " .. bait
                bPS(bait, fns.dwb_11.BAIT_RESTOCK, bSg.FishController, "FishStatus")
                bSg.FishController.recall(cDz_1, alH)
                if not bQe.holdItem(cDA_1) then
                    bSs.FishStatus = "Cannot equip the " .. cDA_2
                    return nil
                end
                local cDT_3 = if fns.dwb_52(bait) <= 0 then 1 else 0
                if cDT_3 == 1 then
                    bSs.FishStatus = "Out of " .. bait
                else
                    local cDz_4 = fns.dwb_50(bait)
                    local cDB_9 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                    if cDD_14 then
                        bQR("EquipBait", cDz_4)
                        task.wait(0.4)
                    end
                end
                return cDA_2
            end
            local cDT_4 = if fns.dwb_52(bait) <= 0 then 1 else 0
            if cDT_4 == 1 then
                bSs.FishStatus = "Out of " .. bait
            else
                local cDz_5 = fns.dwb_50(bait)
                local cDB_11 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                if cDD_14 then
                    bQR("EquipBait", cDz_5)
                    task.wait(0.4)
                end
            end
            return cDA_2
        end
        return cDA_2
    end
    local cDB_13 = fns.dwb_62(cDA_1)
    local cDC_10 = fns.bSv()
    cDD_8 = not cDB_13
    local cDN_2 = if cDD_8 then 1 else 0
    local cDL_2 = 86 * cDN_2 + 1238 * (1 - cDN_2)
    local cDM_2 = 380 * cDN_2 + 1382 * (1 - cDN_2)
    if not ((cDL_2 * 2177 + cDM_2 * 2588 + cDL_2 * cDM_2) % 16777213 == 1203342) then
        cDD_8 = not cDC_10
    end
    if not cDD_8 then
        cDD_8 = tonumber(cDC_10.Value) ~= cDB_13
    end
    if cDD_8 then
        if not bQe.holdItem(cDA_1) then
            bSs.FishStatus = "Cannot equip the " .. cDA_1
            return nil
        end
        local bait = bSg.FishController.bait
        if cDD_12 then
            local cDC_12 = fns.dwb_52(bait) <= 0 and bSg.FishController.buyBait and fns.dwb_11.SHOP_VENDORS[bait]
            if cDC_16 then
                bSs.FishStatus = "Buying " .. bait
                bPS(bait, fns.dwb_11.BAIT_RESTOCK, bSg.FishController, "FishStatus")
                bSg.FishController.recall(cDz_1, alH)
                if not bQe.holdItem(cDA_1) then
                    bSs.FishStatus = "Cannot equip the " .. cDA_1
                    return nil
                end
                local cDT_5 = if fns.dwb_52(bait) <= 0 then 1 else 0
                if cDT_5 == 1 then
                    bSs.FishStatus = "Out of " .. bait
                else
                    local cDz_6 = fns.dwb_50(bait)
                    local cDB_15 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                    if cDD_14 then
                        bQR("EquipBait", cDz_6)
                        task.wait(0.4)
                    end
                end
                return cDA_1
            end
            local cDT_6 = if fns.dwb_52(bait) <= 0 then 1 else 0
            if cDT_6 == 1 then
                bSs.FishStatus = "Out of " .. bait
            else
                local cDz_7 = fns.dwb_50(bait)
                local cDB_17 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                if cDD_14 then
                    bQR("EquipBait", cDz_7)
                    task.wait(0.4)
                end
            end
            return cDA_1
        end
        return cDA_1
    end
    local bait = bSg.FishController.bait
    cDD_12 = bait ~= "" and bait ~= "None"
    if cDD_12 then
        cDC_16 = fns.dwb_52(bait) <= 0 and bSg.FishController.buyBait and fns.dwb_11.SHOP_VENDORS[bait]
        if cDC_16 then
            bSs.FishStatus = "Buying " .. bait
            bPS(bait, fns.dwb_11.BAIT_RESTOCK, bSg.FishController, "FishStatus")
            bSg.FishController.recall(cDz_1, alH)
            if not bQe.holdItem(cDA_1) then
                bSs.FishStatus = "Cannot equip the " .. cDA_1
                return nil
            end
            local cDT_7 = if fns.dwb_52(bait) <= 0 then 1 else 0
            if cDT_7 == 1 then
                bSs.FishStatus = "Out of " .. bait
            else
                local cDz_8 = fns.dwb_50(bait)
                local cDB_20 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
                if cDD_14 then
                    bQR("EquipBait", cDz_8)
                    task.wait(0.4)
                end
            end
            return cDA_1
        end
        local cDT_8 = if fns.dwb_52(bait) <= 0 then 1 else 0
        if cDT_8 == 1 then
            bSs.FishStatus = "Out of " .. bait
        else
            local cDz_9 = fns.dwb_50(bait)
            local cDB_22 = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
            cDD_14 = cDz_9 and cDB_22 ~= cDz_9
            if cDD_14 then
                bQR("EquipBait", cDz_9)
                task.wait(0.4)
            end
        end
        return cDA_1
    end
    return cDA_1
end
function fns.fn6974(ZM)
    local pointer = bSg.TrainController.pointer
    if not pointer.hold(true, ZM) then
        return false
    end
    task.wait(0.03)
    pointer.hold(false, ZM)
    return true
end
function fns.fn6982(a4K)
    bSg.DemonController.drink = a4K ~= false
end
function fns.fn6994(cq, ...)
    local bV2 = type(fns.dwb_26.SignalEvent) ~= "table" or not bQG(fns.dwb_26.SignalEvent.ToServer)
    if bV2 then
        fns.dwb_71("SignalEvent.ToServer")
        return false
    end
    local bV2_1 = pcall(fns.dwb_26.SignalEvent.ToServer, cq, ...)
    return bV2_1
end
function fns.fn6995(jS)
    local b_L = bSr[jS]
    local b_M = b_L and b_L:IsDescendantOf(bSf)
    if b_M then
        return b_L
    end
    bSr[jS] = nil
    for i, v in ipairs(fns.dwb_108()) do
        local b_L_1 = v.folder.Name == jS and v.folder:FindFirstChild("BossInfo")
        if b_L_1 then
            bSr[jS] = v.folder
            return v.folder
        end
    end
    return nil
end
function fns.fn7008()
    local c2T_1
    local c2S_1
    local c2P = fns.dwb_92.worldsModule()
    local c2Q = type(c2P) ~= "table" or type(c2P.Grid) ~= "table"
    if c2Q then
        return {}
    end
    local c2Q_1 = {}
    for k, v in pairs(c2P.Grid) do
        local c2R = type(v) == "table" and v.Ignore ~= true and tonumber(v.Id)
        if c2R then
            local c2R_1 = true
            if bQG(c2P.CanSee) then
                c2S_1, c2T_1 = fns.dwb_144(c2P.CanSee, LocalPlayer, v, fns.dwb_82())
                c2R_1 = not c2S_1 or c2T_1 ~= false
            end
            if c2R_1 then
                table.insert(c2Q_1, { name = k, id = tonumber(v.Id) })
            end
        end
    end
    table.sort(c2Q_1, function(aTu, aTv)
        return aTu.name < aTv.name
    end)
    return c2Q_1
end
function fns.fn7016(pG)
    local b36 = fns.dwb_146(pG)
    if not b36 then
        return 0
    end
    local b37 = (tonumber(b36.Cooldown))
    local b4d = if b37 then 1 else 0
    local b4b = 1622 * b4d + 589 * (1 - b4d)
    local b4c = 746 * b4d + 44 * (1 - b4d)
    if not ((b4b * 108 + b4c * 3867 + b4b * b4c) % 16777213 == 4269970) then
        b37 = 0
    end
    local b38 = b37
    local b37_1 = tonumber(b36.lastUsed)
    local b36_1 = not b37_1
    local b39 = b38 <= 0
    local b4g = if b39 then 1 else 0
    local b4e = 840 * b4g + 1463 * (1 - b4g)
    local b4f = 1555 * b4g + 4049 * (1 - b4g)
    if not ((b4e * 395 + b4f * 2865 + b4e * b4f) % 16777213 == 6093075) then
        b39 = b36_1
    end
    if b39 then
        return 0
    end
    return math.max(b38 - (os.clock() - b37_1), 0)
end
function fns.fn7041()
    return table.clone(bQS.Styles)
end
function fns.fn7049(qA)
    local b4O = fns.dwb_123.ParryReservedUntil and os.clock() < fns.dwb_123.ParryReservedUntil
    if b4O or fns.dwb_123.BlockWork.entry then
        return "Holding off for auto parry", fns.dwb_11.PARRY_GAP
    end
    local b4O_1 = bQe.playerValues()
    if not b4O_1 then
        return "No player values", fns.dwb_11.REFUSAL_GAP
    elseif b4O_1:FindFirstChild("Blocking") then
        return "Holding off for auto parry", fns.dwb_11.PARRY_GAP
    else
        local b4P_1 = fns.dwb_133.remaining(qA)
        if b4P_1 > 0 then
            return qA .. " on cooldown", b4P_1, true
        end
        for i, v in ipairs(fns.dwb_11.LOCKOUT_TAGS) do
            if b4O_1:FindFirstChild(v) then
                return "Stunned or locked out", fns.dwb_11.REFUSAL_GAP
            end
        end
        local Stamina = b4O_1:FindFirstChild("Stamina")
        local b4O_2 = fns.dwb_146(qA)
        local b4Q = b4O_2 and tonumber(b4O_2.Stamina)
        if Stamina and b4Q and Stamina.Value < b4Q then
            return "Not enough stamina", fns.dwb_11.REFUSAL_GAP
        end
        return "Game refused " .. qA, fns.dwb_11.REFUSAL_GAP
    end
end
function fns.fn7053()
    bSg.SchematicRunner.stop()
    return bSs.SchematicStatus
end
function fns.fn7071(bbr)
    if bTE.parry and bTE.parry.mitigate ~= (bbr == true) then
        bTE.parry.invalidate()
        bTE.parry.mitigate = bbr == true
    end
end
function fns.fn7093()
    local dkh = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not dkh then
        return ""
    end
    return fns.dwb_123.PointText(dkh.Position)
end
function fns.fn7104()
    local Debree = bSf:FindFirstChild("Debree")
    local c_O = Debree and Debree:FindFirstChild("MuzanLairModel")
    if c_O then
        local c_O_1 = (c_O:FindFirstChild("HumanoidRootPart"))
        local c_T = if c_O_1 then 1 else 0
        local c_R = 1340 * c_T + 1137 * (1 - c_T)
        local c_S = 2978 * c_T + 3443 * (1 - c_T)
        if not ((c_R * 234 + c_S * 3747 + c_R * c_S) % 16777213 == 15462646) then
            c_O_1 = c_O.PrimaryPart
        end
        local c_P = c_O_1
        if c_P then
            return c_P.Position, true
        end
        return c_O:GetPivot().Position, true
    end
    local c_N_2 = bSt(fns.dwb_87, { "CAM", "Global", "MuzanSettings" }, "MuzanSettings module")
    if type(c_N_2) == "table" then
        local c_O_2 = c_N_2.LairArrival
        if typeof(c_O_2) == "CFrame" then
            return c_O_2.Position, false
        elseif typeof(c_O_2) == "Vector3" then
            return c_O_2, false
        else
            return nil, false
        end
    else
        return nil, false
    end
end
function fns.fn7115(dP)
    if not fns.dwb_118() then
        return false
    elseif not dP then
        return true
    else
        local bW0 = fns.dwb_147.runs[coroutine.running()]
        local bW1 = not dP.stopped
        if bW1 ~= false then
            bW1 = not dP.yield
        end
        if bW1 then
            local bW2 = not bW0
            local bW6 = if bW2 then 1 else 0
            local bW4 = 495 * bW6 + 1706 * (1 - bW6)
            local bW5 = 1005 * bW6 + 2109 * (1 - bW6)
            if not ((bW4 * 1445 + bW5 * 2997 + bW4 * bW5) % 16777213 == 4224735) then
                bW2 = bW0.controller ~= dP
            end
            if not bW2 then
                bW2 = bW0.generation == dP.generation
            end
            bW1 = bW2
        end
        return bW1
    end
end
function fns.fn7117()
    return { "Instantly", "Play It Out" }
end
function fns.fn7135(bdW)
    bTE.Esp.setDistance(bdW)
end
function fns.fn7137()
    local dcg_1
    local dcf_1
    dcg_1, dcf_1 = {}, {}
    local Minigames_Place = fns.dwb_87:FindFirstChild("Minigames Place")
    local dci = Minigames_Place and Minigames_Place:FindFirstChild("Minigames")
    local dch_1 = dci
    if dci then
        dci = dch_1:FindFirstChild("Ouwigahara")
    end
    local dch_2 = dci
    if dci then
        dci = dch_2:FindFirstChild("Events")
    end
    local dch_3 = dci
    if dch_3 then
        for i, descendant in ipairs(dch_3:GetDescendants()) do
            local dch_4 = (descendant:IsA("ModuleScript")) and not dcf_1[descendant.Name]
            if dch_4 then
                dcf_1[descendant.Name] = true
                dcg_1[#dcg_1 + 1] = descendant.Name
            end
        end
    end
    if #dcg_1 == 0 then
        fns.dwb_71("Ouwigahara Events")
        for i, v in ipairs(fns.dwb_11.EVENT_NAMES) do
            dcg_1[#dcg_1 + 1] = v
        end
    end
    table.sort(dcg_1)
    return dcg_1
end
function fns.fn7147()
    local czu = not fns.dwb_118() or bSg.PotionController.potion == ""
    if czu then
        return
    end
    local czu_1 = fns.dwb_104()
    if not czu_1 or czu_1.Health <= 0 or czu_1.MaxHealth <= 0 then
        return
    end
    local czv_1 = czu_1.Health / czu_1.MaxHealth * 100
    if czv_1 > bSg.PotionController.threshold then
        bSs.PotionStatus = string.format("Health %d%%", math.floor(czv_1))
        return
    end
    if fns.dwb_52(bSg.PotionController.potion) <= 0 then
        bSs.PotionStatus = "No " .. bSg.PotionController.potion .. " left"
        return
    end
    local czu_2 = 0
    local czv_2 = false
    while true do
        local czw = (fns.dwb_147.controllerValid(bSg.PotionController)) and czu_2 < 8
        if czw then
            if bSU("AutoPotion") then
                czv_2 = true
                break
            end
            task.wait(0.2)
            czu_2 += 0.2
            continue
        end
        break
    end
    if czv_2 then
        pcall(fns.dwb_116, bSg.PotionController.potion)
        bSu("AutoPotion")
    end
end
function fns.fn7151()
    while fns.dwb_118() do
        pcall(function()
            bSs.Summary = fns.dwb_123.PlayerSummary()
            bSs.Quest = fns.dwb_123.QuestSummary()
            bSs.CostText = fns.dwb_123.BreathingCost()
        end)
        task.wait(1)
    end
end
function fns.fn7167(arj)
    local floor = math.floor
    local cHL = (tonumber(arj)) or 0
    local cHM = tostring(floor(cHL))
    local cHK_1 = 1
    while cHK_1 > 0 do
        cHM, cHK_1 = cHM:gsub("^(%-?%d+)(%d%d%d)", "%1,%2")
    end
    return cHM
end
function fns.fn7185()
    return bSs.WeaponCache
end
function fns.fn7219(bbu)
    if bTE.parry and bTE.parry.hold ~= (bbu == true) then
        bTE.parry.invalidate()
        bTE.parry.hold = bbu == true
    end
end
function fns.fn7228()
    local cnI = os.clock()
    if fns.dwb_24.idsCache and cnI - fns.dwb_24.idsAt < fns.dwb_24.idsTtl then
        return fns.dwb_24.idsCache
    end
    local cnJ_1 = {}
    for i, v in ipairs(fns.dwb_108()) do
        local BossInfo = v.folder:FindFirstChild("BossInfo")
        local cnL = BossInfo and BossInfo:GetAttribute("Chest")
        local cnL_1 = cnL ~= ""
        local cnM = type(cnL) == "string" and cnL_1
        if cnM then
            cnJ_1[cnL] = true
        end
    end
    fns.dwb_24.idsCache, fns.dwb_24.idsAt = cnJ_1, cnI
    local cnI_1 = (next(cnJ_1)) and 5
    fns.dwb_24.idsTtl = cnI_1 or 0.5
    return cnJ_1
end
function fns.fn7230()
    return select(2, bSg.SchematicRunner.start())
end
function fns.fn7235(bdN, bdO)
    bTE.Esp.setOption(bdN, bdO)
end
function fns.fn7272()
    gethui = fns.dwb_12
end
function fns.fn7298(aZv, aZw)
    local c7n = {}
    local c7o = type(aZv) == "table" and aZv
    local c7q = c7o or {}
    for i, v in ipairs(c7q) do
        local c7o_1 = type(v) == "table" and v.Name
        local c7p_1 = c7o_1 or v
        local c7p_2 = c7p_1 ~= ""
        local c7q_1 = type(c7p_1) == "string" and c7p_2
        if c7q_1 then
            c7n[#c7n + 1] = c7p_1
        end
        if aZw and #c7n >= aZw then
            break
        end
    end
    return c7n
end
function fns.fn7299(arw, arx)
    local cHS = bQS.Mark[arw]
    bQS.Mark[arw] = arx
    if cHS == nil or arx < cHS then
        return 0
    end
    return arx - cHS
end
function fns.fn7305(bc7)
    bTE.tweaks.noDrown = bc7 == true
end
function fns.fn7308(a8j, a8k)
    local deT = a8j == ""
    local deU = type(a8j) ~= "string"
    local deZ = if deU then 1 else 0
    local deX = 3801 * deZ + 269 * (1 - deZ)
    local deY = 4018 * deZ + 3745 * (1 - deZ)
    if not ((deX * 3859 + deY * 3121 + deX * deY) % 16777213 == 8926229) then
        deU = deT
    end
    if deU then
        return
    end
    local deT_1 = tonumber(a8k)
    local holdTimes = bQ4.holdTimes
    local deV = deT_1 and math.max(deT_1, 0)
    holdTimes[a8j] = deV or nil
end
function fns.fn7324(bdj)
    local tweaks = bTE.tweaks
    local dji = (tonumber(bdj)) or 250
    tweaks.ownershipRange = math.clamp(dji, 50, 2000)
end
function fns.fn7330(Ak)
    local cbx_1
    local cbw_1
    cbx_1, cbw_1 = { "AutoLoot" }, { AutoLoot = true }
    if type(Ak) == "table" then
        for i, v in ipairs(Ak) do
            local cby = type(v) == "string" and fns.dwb_142.byKey[v] and not cbw_1[v]
            if cby then
                cbw_1[v] = true
                cbx_1[#cbx_1 + 1] = v
            end
        end
    end
    for i, v in ipairs(fns.dwb_142.defaultOrder) do
        if not cbw_1[v] then
            cbw_1[v] = true
            cbx_1[#cbx_1 + 1] = v
        end
    end
    fns.dwb_142.order = cbx_1
    fns.dwb_142.reindex()
    return cbx_1
end
function fns.fn7335(arB, arC)
    local cHV = bQS.Mark[arB]
    bQS.Mark[arB] = arC
    if cHV == nil or arC > cHV then
        return 0
    end
    return cHV - arC
end
function fns.fn7357()
    return fns.dwb_51.CoreGui
end
function fns.fn7366(cP, cQ)
    local bWd = fns.dwb_82()
    if not bWd then
        return cQ
    end
    for i, v in ipairs(cP) do
        bWd = bWd:FindFirstChild(v)
        if not bWd then
            return cQ
        end
    end
    if bWd:IsA("ValueBase") then
        return bWd.Value
    end
    return bWd
end
function fns.fn7367(aRm)
    if aRm:IsA("BasePart") then
        return aRm.Position
    elseif aRm:IsA("Model") then
        return aRm:GetPivot().Position
    else
        return nil
    end
end
function fns.fn7372(a5Z, a5_)
    local dda = a5Z == ""
    local ddb = type(a5Z) ~= "string" or dda
    if ddb then
        return
    end
    local priority = bSg.CardController.priority
    local clamp = math.clamp
    local ddd = (tonumber(a5_)) or 5
    priority[a5Z] = clamp(math.floor(ddd), 1, 10)
end
function fns.fn7374(kZ)
    local b0G = fns.dwb_129(kZ)
    if not b0G then
        return nil
    end
    for i, descendant in ipairs(b0G:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            return descendant
        end
    end
    return nil
end
function fns.fn7375(aqT)
    if bQS.ValidUrl(aqT.Url) then
        return aqT.Url
    end
    local Url = bQS.Channels.Overworld.Url
    local cHq = aqT.Label ~= "Overworld" and bQS.ValidUrl(Url)
    if cHq then
        return Url
    end
    return aqT.Url
end
function fns.fn7382()
    bTE.tweaks.ownership = false
    bRu.clear()
    if coroutine.status(bPU) ~= "dead" then
        pcall(task.cancel, bPU)
    end
end
function fns.fn7446(a6b)
    bSg.QuestController.quests = fns.dwb_90(a6b)
    fns.dwb_103(bSg.QuestController)
end
function fns.fn7455()
    return table.concat(fns.dwb_142.order, ", ")
end
function fns.fn7473()
    local queue = bSg.Alerts.queue
    if #queue == 0 then
        return nil
    end
    bSg.Alerts.queue = {}
    return queue
end
function fns.fn7477()
    local CrystalController = bSg.CrystalController
    if not fns.dwb_118() then
        return
    end
    if bQt() >= fns.dwb_26.MAX_LEVEL then
        bSs.CrystalStatus = string.format("Level %d is the cap", fns.dwb_26.MAX_LEVEL)
        return
    end
    if CrystalController.locked() then
        bSs.CrystalStatus = "Waiting for the run to bank its points"
        return
    end
    local cLB = CrystalController.affordable()
    if cLB <= 0 then
        bSs.CrystalStatus = string.format("Waiting for %d points", CrystalController.price() + CrystalController.reserve)
        return
    end
    if not CrystalController.crystalPoint() then
        bSs.CrystalStatus = "Cannot find the Tower Crystal"
        return
    end
    local cLC = 0
    local cLD = false
    while true do
        local cLE = (fns.dwb_118())
        if cLE then
            local cLF = not fns.dwb_147.runs[coroutine.running()] or fns.dwb_147.controllerValid(CrystalController)
            cLE = cLF
        end
        if cLE then
            cLE = cLC < 8
        end
        if cLE then
            if bSU("AutoBuyExp") then
                cLD = true
                break
            end
            task.wait(0.25)
            cLC += 0.25
            continue
        end
        break
    end
    if not cLD then
        return
    end
    pcall(CrystalController.buy, cLB)
    bSu("AutoBuyExp")
end
function fns.fn7498()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local ctH = PlayerGui and PlayerGui:FindFirstChild("Misc")
    return ctH or nil
end
function fns.fn7504(iq, ir, is, it)
    local bZm = os.clock() + ir
    while true do
        local bZn = (fns.dwb_118()) and os.clock() < bZm
        if not bZn then
            return false
        end
        local bZn_1 = is and is()
        if bZn_1 then
            return false
        end
        if iq() then
            break
        end
        local wait = task.wait
        local bZo = it or 0.1
        wait(bZo)
    end
    return true
end
function fns.fn7561(a7p)
    bSg.SkillController.nodes = fns.dwb_90(a7p)
end
function fns.fn7568()
    local noAnim = bTE.noAnim
    if noAnim.played then
        noAnim.played:Disconnect()
        noAnim.played = nil
    end
    if noAnim.spawned then
        noAnim.spawned:Disconnect()
        noAnim.spawned = nil
    end
end
function fns.fn7584(a7C)
    local ded = (tonumber(a7C)) or 0
    bQ4.height = math.clamp(ded, -50, 50)
end
function fns.fn7593()
    local active = fns.dwb_133.active
    if active then
        active.cancelled = true
        fns.dwb_133.release(active)
    end
    table.clear(fns.dwb_133.cooldowns)
    fns.dwb_133.skills, fns.dwb_133.skillsAt = nil, 0
    fns.dwb_133.clan.cache, fns.dwb_133.clan.at = nil, 0
    fns.dwb_133.stall, fns.dwb_133.stallUntil, fns.dwb_133.stallClan = nil, 0, false
    fns.dwb_147.shcSince = nil
end
function fns.fn7595(aD1, aD2)
    if fns.dwb_123.BlockWork.entry ~= aD1 then
        bQ1(aD1)
        return
    end
    if aD2 then
        if aD1.phase == "unresolved" then
            return
        end
        aD1.phase = "unresolved"
        aD1.expiry = os.clock() + fns.dwb_68.recovery
        aD1.retries = 0
        aD1.retryAt = 0
    else
        bQ1(aD1)
    end
end
function fns.fn7602(asp)
    local cII = 0
    for i, v in ipairs(bQS.Catalog[asp.Label]) do
        local cIJ = asp.Events[v.key]
        if cIJ then
            local cIK = asp.Tally[v.key]
            local cIU = if cIK then 1 else 0
            local cIS = 2779 * cIU + 1645 * (1 - cIU)
            local cIT = 3613 * cIU + 3258 * (1 - cIU)
            if not ((cIS * 2242 + cIT * 1164 + cIS * cIT) % 16777213 == 3699364) then
                cIK = 0
            end
            cIJ = cIK > 0
        end
        if cIJ then
            cII += 1
        end
    end
    return cII
end
function fns.fn7606(a5Q)
    bSg.CardController.blockCards = a5Q ~= false
end
function fns.fn7607()
    local b8W = fns.dwb_27()
    local b8W_1 = b8W[1] and b8W[1].questString
    local b80 = if b8W_1 then 1 else 0
    local b8Z = 1520 * b80 + 2503 * (1 - b80)
    local b8_ = 1573 * b80 + 887 * (1 - b80)
    if not ((b8Z * 3607 + b8_ * 2212 + b8Z * b8_) % 16777213 == 11353076) then
        b8W_1 = nil
    end
    return b8W_1
end
function fns.fn7608()
    local caO = fns.dwb_145("CodeStatus")
    local caP = {}
    local caQ = type(caO) == "table" and type(caO.codes) == "table"
    if caQ then
        for k, v in pairs(caO.codes) do
            local caO_1 = type(v) == "table" and v.redeemed == true
            if caO_1 then
                caP[k] = true
            end
        end
    end
    return caP
end
function fns.fn7615(bg4)
    if bg4 then
        bSs.LeaveStatus = "Starting"
        bSg.LeaveController.running = true
        bSg.LeaveController.readyAt = nil
        bSg.LeaveController.floorDone, bSg.LeaveController.floorKey = 0, nil
        table.clear(bSg.LeaveController.fired)
        fns.dwb_53(bSg.LeaveController, fns.dwb_92.leaveStep)
    else
        bSg.LeaveController.running = false
        fns.dwb_72(bSg.LeaveController)
        bSs.LeaveStatus = "Idle"
    end
end
function fns.fn7617()
    local dgB_1
    local dgA_1
    dgA_1, dgB_1 = {}, {}
    if type(fns.dwb_26.Items) == "table" then
        for k, v in pairs(fns.dwb_26.Items) do
            if type(v) == "table" then
                local dgC = v.InventoryCategory or v.Category
                local dgC_1 = type(dgC) == "string" and dgC ~= "" and not dgA_1[dgC]
                if dgC_1 then
                    dgA_1[dgC] = true
                    dgB_1[#dgB_1 + 1] = dgC
                end
            end
        end
    end
    if #dgB_1 == 0 then
        for k in pairs(bQS.DefaultItemCategories) do
            dgB_1[#dgB_1 + 1] = k
        end
    end
    table.sort(dgB_1)
    return dgB_1
end
function fns.fn7623()
    local b3l = fns.dwb_99()
    local b3m = b3l and b3l:FindFirstChild("SHC")
    local b3m_1 = b3m ~= nil
    if b3m_1 then
        local b3n = b3m:GetAttribute("en") == true or b3m.Value ~= ""
        b3m_1 = b3n
    end
    if not b3m_1 then
        fns.dwb_147.shcSince = nil
        return false
    end
    local b3l_3 = fns.dwb_147.shcSince
    local b3r = if b3l_3 then 1 else 0
    local b3p = 2736 * b3r + 3602 * (1 - b3r)
    local b3q = 975 * b3r + 1201 * (1 - b3r)
    if not ((b3p * 3633 + b3q * 1540 + b3p * b3q) % 16777213 == 14108988) then
        b3l_3 = os.clock()
    end
    fns.dwb_147.shcSince = b3l_3
    return os.clock() - fns.dwb_147.shcSince < fns.dwb_11.SHC_PATIENCE
end
function fns.fn7636()
    local dG0 = fns.dwb_43
    dG0.generation = dG0.generation + 1
    fns.dwb_123.ParryReservedUntil = 0
    bTg.refreshAt = 0
    bTg.owner = fns.dwb_99()
    table.clear(bTF)
    table.clear(bTg.attempts)
    for k in pairs(bRG) do
        bSF(k)
    end
    bQD()
end
function fns.fn7644(bU, bV)
    local bVV_1
    local bVU_3
    local bVT = fns.dwb_92.cache[bU]
    if bVT ~= nil then
        return bVT or nil
    end
    local bVT_1 = fns.dwb_87
    for i, v in ipairs(bV) do
        local bVU_2 = bVT_1 and bVT_1:FindFirstChild(v)
        bVT_1 = bVU_2
    end
    if not bVT_1 then
        return nil
    end
    bVU_3, bVV_1 = fns.dwb_144(require, bVT_1)
    local bVT_2 = not bVU_3 or type(bVV_1) ~= "table"
    if bVT_2 then
        fns.dwb_92.cache[bU] = false
        fns.dwb_71(bU)
        return nil
    end
    fns.dwb_92.cache[bU] = bVV_1
    return bVV_1
end
function fns.fn7656(aDY)
    if aDY.connection then
        aDY.connection:Disconnect()
        aDY.connection = nil
    end
    if fns.dwb_123.BlockWork.entry == aDY then
        fns.dwb_123.BlockWork.entry = nil
    end
    if fns.dwb_43.blockEntry == aDY then
        fns.dwb_43.blockEntry = nil
    end
end
function fns.fn7660(a57)
    local BringController = bSg.BringController
    local ddi = (tonumber(a57)) or 2000
    BringController.range = math.clamp(ddi, 0, 5000)
end
function fns.fn7662(a9c)
    bSg.ShopController.items = fns.dwb_90(a9c)
end
function fns.fn7666()
    if type(fns.dwb_26.CombatPresets) ~= "table" then
        return
    end
    if bRf.noSlowdown then
        if fns.dwb_138 == nil then
            fns.dwb_138 = fns.dwb_26.CombatPresets.slow_walk_duration or 0
        end
        fns.dwb_26.CombatPresets.slow_walk_duration = 0
    elseif fns.dwb_138 ~= nil then
        fns.dwb_26.CombatPresets.slow_walk_duration = fns.dwb_138
        fns.dwb_138 = nil
    end
end
function fns.fn7682()
    local b1z = fns.dwb_120({ "Inventory", "Inventory" }, nil)
    if typeof(b1z) == "Instance" then
        return b1z
    end
    return nil
end
function fns.fn7702()
    local c3v_1
    local c3u_1, c3u_2
    local c3r_4
    local c3A = if not fns.dwb_118() then 1 else 0
    if c3A == 1 then
        return
    end
    local QueueController = bSg.QueueController
    local c3o = fns.dwb_92.queueSignal()
    local c3p = type(c3o) ~= "table" or not bQG(c3o.ToServer)
    if c3p then
        bSs.QueueStatus = "Queue is not available here"
        return
    end
    local c3A_1 = if not bQe.inMenuPlace() then 1 else 0
    if c3A_1 == 1 then
        bSs.QueueStatus = "Only queues from the hub"
        return
    end
    local c3p_1 = fns.dwb_92.queuedSince()
    if c3p_1 then
        local format = string.format
        local c3r_1 = QueueController.current or "a match"
        bSs.QueueStatus = format("Queued for %s (%ds)", c3r_1, math.max(0, math.floor(os.time() - c3p_1)))
        return
    end
    local modes = QueueController.modes
    if #modes == 0 then
        bSs.QueueStatus = "Pick a gamemode"
        return
    end
    local c3q_2 = nil
    local c3r_2 = #modes
    local c3D = 1
    while c3D <= c3r_2 do
        local c3r_3 = (QueueController.cursor + c3D - 1) % #modes + 1
        local c3s = modes[c3r_3]
        local c3t = fns.dwb_92.gamemodeName(c3s)
        if c3t then
            c3u_1, c3v_1 = fns.dwb_92.gamemodeAllowed(c3t, QueueController.ranked)
            if c3u_1 then
                QueueController.cursor = c3r_3
                QueueController.current = c3s
                c3r_4, c3u_2 = pcall(c3o.ToServer, "Queue", c3t, QueueController.fill, QueueController.ranked)
                if c3r_4 and c3u_2 ~= false then
                    bSs.QueueStatus = "Queued for " .. c3s
                else
                    bSs.QueueStatus = "Server refused " .. c3s
                end
                return
            end
            local c3r_5 = c3q_2
            if not c3r_5 then
                c3r_5 = c3v_1 and c3s .. ": " .. c3v_1 or c3s .. " is locked"
            end
            c3q_2 = c3r_5
        end
        c3D += 1
    end
    bSs.QueueStatus = c3q_2 or "No pickable gamemode"
end
function fns.fn7717(aQy)
    local c0S = os.clock() + fns.dwb_11.LOOT_DRAIN
    local c0T = {}
    local c0U = 0
    while true do
        local c0V = not aQy() and os.clock() < c0S and c0U < fns.dwb_11.LOOT_IDLE
        if c0V then
            if fns.dwb_73() then
                bSs.LootStatus = "Pausing collection to heal"
                return
            end
            local c0V_1 = nil
            for i, v in ipairs(fns.dwb_24.bossNearby()) do
                if not c0T[v.model] then
                    c0V_1 = v
                    break
                end
            end
            if c0V_1 then
                c0U = 0
                if not fns.dwb_24.open(c0V_1.model, "LootStatus", aQy) then
                    c0T[c0V_1.model] = true
                end
            else
                local c0V_2 = 0
                for i, v in ipairs(bS5()) do
                    local c0W_1 = (aQy()) or os.clock() >= c0S
                    if c0W_1 then
                        break
                    elseif not c0T[v.part] then
                        if fns.bTv(v.part, aQy) then
                            c0V_2 += 1
                        else
                            c0T[v.part] = true
                        end
                    end
                end
                if bSg.SoulController.running and fns.dwb_92.soulSweep then
                    c0V_2 += fns.dwb_92.soulSweep(aQy)
                end
                if c0V_2 > 0 then
                    c0U = 0
                else
                    c0U += 1
                    task.wait(0.35)
                end
            end
            continue
        end
        break
    end
end
function fns.fn7732(bhh)
    local WorldController = bSg.WorldController
    local dl5 = (tonumber(bhh)) or 0
    WorldController.delay = math.max(0, dl5)
end
function fns.fn7735()
    bSg.ChestController.hopFailed:Disconnect()
end
fns.dwb_51 = nil
fns.dwb_30 = nil
fns.dwb_9 = nil
bPQ = nil
SchematicRunner = nil
bPS = nil
bPT = nil
bPU = nil
fns.dwb_144 = nil
fns.dwb_129 = nil
fns.dwb_105 = nil
fns.dwb_82 = nil
fns.dwb_63 = nil
fns.dwb_43 = nil
fns.dwb_19 = nil
bP1 = nil
bP2 = nil
bP4 = nil
fns.dwb_155 = nil
fns.dwb_135 = nil
fns.dwb_116 = nil
fns.dwb_93 = nil
fns.dwb_73 = nil
fns.dwb_56 = nil
fns.dwb_33 = nil
fns.dwb_11 = nil
bQe = nil
bQf = nil
bQh = nil
bQi = nil
fns.dwb_147 = nil
fns.dwb_108 = nil
fns.dwb_87 = nil
fns.dwb_67 = nil
fns.dwb_47 = nil
fns.dwb_26 = nil
connection2 = nil
bQs = nil
bQt = nil
bQu = nil
bQv = nil
fns.dwb_140 = nil
fns.dwb_118 = nil
fns.connection = nil
local bP3, bP5, bQg, bQk, bQq, bQz
fns.dwb_59 = nil
fns.dwb_40 = nil
fns.dwb_16 = nil
bQD = nil
bQE = nil
bQF = nil
bQG = nil
bQH = nil
fns.dwb_131 = nil
fns.dwb_111 = nil
fns.dwb_90 = nil
fns.dwb_69 = nil
fns.dwb_50 = nil
fns.dwb_28 = nil
fns.dwb_7 = nil
bQR = nil
bQS = nil
bQT = nil
connection4 = nil
fns.dwb_143 = nil
fns.dwb_123 = nil
fns.dwb_102 = nil
fns.dwb_81 = nil
fns.dwb_18 = nil
bQ1 = nil
bQ2 = nil
tweaks2 = nil
bQ4 = nil
bQ5 = nil
fns.dwb_154 = nil
fns.dwb_134 = nil
fns.dwb_113 = nil
fns.dwb_94 = nil
fns.dwb_77 = nil
fns.dwb_53 = nil
fns.dwb_38 = nil
fns.dwb_10 = nil
bRe = nil
bRf = nil
bRg = nil
bRh = nil
bRi = nil
fns.dwb_146 = nil
fns.dwb_125 = nil
fns.dwb_91 = nil
local bQI, bQQ, bQZ, bQ_, bRl
fns.dwb_65 = nil
fns.dwb_45 = nil
fns.dwb_21 = nil
fns.dwb_2 = nil
bRr = nil
bRt = nil
bRu = nil
fns.bRv = nil
fns.dwb_138 = nil
fns.dwb_96 = nil
fns.dwb_76 = nil
fns.dwb_36 = nil
fns.dwb_13 = nil
bRD = nil
LocalPlayer = nil
bRG = nil
fns.dwb_150 = nil
fns.dwb_130 = nil
fns.dwb_110 = nil
fns.dwb_89 = nil
fns.dwb_68 = nil
fns.dwb_49 = nil
fns.dwb_27 = nil
fns.dwb_6 = nil
bRQ = nil
bRS = nil
bRT = nil
bRU = nil
fns.dwb_142 = nil
fns.dwb_121 = nil
fns.connection3 = nil
fns.dwb_80 = nil
fns.dwb_61 = nil
fns.dwb_41 = nil
fns.dwb_17 = nil
bR1 = nil
bR2 = nil
bR3 = nil
bR4 = nil
bR5 = nil
fns.dwb_153 = nil
fns.dwb_132 = nil
local bRs, bRx, bRA, bRF, bRH, bRR, bR8, bR9
fns.dwb_71 = nil
fns.dwb_52 = nil
fns.dwb_31 = nil
bSe = nil
bSf = nil
bSg = nil
bSh = nil
fns.dwb_145 = nil
fns.dwb_124 = nil
fns.dwb_104 = nil
fns.dwb_83 = nil
fns.dwb_64 = nil
fns.dwb_44 = nil
fns.dwb_23 = nil
fns.dwb_1 = nil
bSr = nil
bSs = nil
bSt = nil
bSu = nil
fns.bSv = nil
fns.dwb_137 = nil
fns.dwb_117 = nil
fns.dwb_97 = nil
fns.dwb_74 = nil
fns.dwb_57 = nil
fns.dwb_35 = nil
fns.dwb_15 = nil
bSF = nil
bSG = nil
fns.dwb_149 = nil
fns.dwb_128 = nil
fns.dwb_109 = nil
fns.dwb_88 = nil
fns.dwb_48 = nil
fns.dwb_24 = nil
fns.dwb_4 = nil
bSQ = nil
bSR = nil
bSS = nil
bST = nil
bSU = nil
fns.dwb_141 = nil
fns.dwb_120 = nil
fns.dwb_99 = nil
local bSd, bSi, bSD, bSE, bSH, bSM
fns.dwb_79 = nil
fns.dwb_60 = nil
fns.dwb_39 = nil
bS1 = nil
bS2 = nil
bS4 = nil
bS5 = nil
fns.dwb_152 = nil
fns.dwb_112 = nil
fns.dwb_70 = nil
fns.dwb_29 = nil
fns.dwb_8 = nil
bTe = nil
onChildAdded = nil
bTg = nil
bTh = nil
bTi = nil
fns.dwb_122 = nil
fns.dwb_103 = nil
fns.dwb_84 = nil
fns.dwb_62 = nil
fns.dwb_42 = nil
fns.UserGameSettings = nil
bTr = nil
bTs = nil
bTt = nil
bTu = nil
fns.bTv = nil
fns.dwb_133 = nil
fns.dwb_114 = nil
fns.dwb_92 = nil
fns.dwb_72 = nil
fns.dwb_55 = nil
fns.dwb_32 = nil
fns.dwb_12 = nil
bTE = nil
bTF = nil
bTG = nil
bTH = nil
fns.dwb_151 = nil
fns.dwb_126 = nil
fns.dwb_106 = nil
local bS0, bS3, bS7, bS9, bTb, bTj, bTq, bTD
fns.dwb_85 = nil
local bTM, bTN
bTM = nil
bTN = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
fns.dwb_51, LocalPlayer, fns.dwb_12 = nil, nil, nil
fns.dwb_51 = {}
fns.dwb_51.Players = game:GetService("Players")
fns.dwb_51.ReplicatedStorage = game:GetService("ReplicatedStorage")
fns.dwb_51.RunService = game:GetService("RunService")
fns.dwb_51.UserInputService = game:GetService("UserInputService")
fns.dwb_51.VirtualUser = game:GetService("VirtualUser")
fns.dwb_51.HttpService = game:GetService("HttpService")
fns.dwb_51.GuiService = game:GetService("GuiService")
fns.dwb_51.CoreGui = game:GetService("CoreGui")
fns.dwb_51.CollectionService = game:GetService("CollectionService")
fns.dwb_51.TweenService = game:GetService("TweenService")
fns.dwb_51.TeleportService = game:GetService("TeleportService")
fns.dwb_51.Lighting = game:GetService("Lighting")
fns.dwb_51.Workspace = game:GetService("Workspace")
LocalPlayer = fns.dwb_51.Players.LocalPlayer
fns.dwb_12 = fns.fn7357
if getgenv then
    getgenv().gethui = fns.dwb_12
end
fns.dwb_123, fns.dwb_87, bSf, fns.dwb_11, bR8, fns.dwb_3_1, bTD, bSR, bQG, fns.dwb_118 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local dwb_22 = 5
local dwb_22_3, dwb_22_36
repeat
    local dwb_167_1 = (dwb_22 * 1 + 1) % 7 + 1
    if dwb_167_1 <= 4 then
        if dwb_167_1 <= 2 then
            if dwb_167_1 <= 1 then
                local dwb_164_1 = {
                    "anpbogjxwl",
                    "mytgtrp",
                    "zbtd",
                    "rhjtm",
                    "mmatdl",
                    "nacz",
                    "npk",
                    "kwyxrdzrrcw",
                    "wbmleygb",
                    "spvsguso",
                    "vzxp",
                    "anxjaohuaxi"
                }
                local dUP = dwb_22
                local dwb_161_1 = dwb_164_1[dUP % 12 + 1]
                if dwb_161_1:len() >= dwb_161_1:gsub("(.)", "%1%1", dUP % 3 % 2 + 1):len() then
                    fns.dwb_123 = function(H, I)
                        local bUN = type(H) == "table" and type(H.Track) == "function"
                        assert(bUN, "FeatureAPI required")
                        local bUN_2 = type(I) == "table" and type(I.OnUnload) == "function"
                        assert(bUN_2, "UI library required")
                        assert(type(I.Unload) == "function", "UI unload required")
                        H.Track(function()
                            if not I.Unloaded then
                                I:Unload()
                            end
                        end)
                        I:OnUnload(function()
                            H.Unload()
                        end)
                    end
                else
                    bTD = function(H, I)
                        local bUN = type(H) == "table" and type(H.Track) == "function"
                        assert(bUN, "FeatureAPI required")
                        local bUN_1 = type(I) == "table" and type(I.OnUnload) == "function"
                        assert(bUN_1, "UI library required")
                        assert(type(I.Unload) == "function", "UI unload required")
                        H.Track(function()
                            if not I.Unloaded then
                                I:Unload()
                            end
                        end)
                        I:OnUnload(function()
                            H.Unload()
                        end)
                    end
                end
                dwb_22 = (dwb_22 + 8) % 56
            else
                local dwb_164_2 = (vector.create((dwb_22 * 2 + 5) % 11 + 1, (dwb_22 * 1 + 11) % 13 + 1, (dwb_22 * 9 + 15) % 17 + 1))
                local dwb_161_2 = (vector.create((dwb_22 * 1 + 7) % 11 + 1, (dwb_22 * 2 + 11) % 13 + 1, (dwb_22 * 12 + 8) % 17 + 1))
                local dHq = vector.cross(dwb_164_2, dwb_161_2)
                local dHr = vector.dot(dwb_164_2, dwb_161_2)
                if vector.dot(dHq, dHq) + dHr * dHr == vector.dot(dwb_164_2, dwb_164_2) * vector.dot(dwb_161_2, dwb_161_2) + 1 then
                    fns.dwb_3_1 = fns.dwb_123("OuroborosOuwland")
                else
                    fns.dwb_123 = fns.dwb_3_1("OuroborosOuwland")
                end
                dwb_22 = (dwb_22 + 50) % 56
            end
        elseif dwb_167_1 <= 3 then
            local dwb_164_3 = { "kta", "anjiskdmmvn", "sveubutiv", "hzvltzfy", "qtfdb", "shdpxh", "rczirnijog" }
            local dNA = dwb_22
            local dwb_161_3 = dwb_164_3[dNA % 7 + 1]
            if dwb_161_3:len() <= dwb_161_3:reverse():rep(dNA % 3 + 2):len() then
                bSR = fns.fn113
            else
                bSf = fns.fn113
            end
            dwb_22 = (dwb_22 + 1) % 56
        else
            if (bR8 and not fns.dwb_3_1 and (not fns.dwb_118 or dwb_22) and (bR8 or not bR8 or (not bR8 or fns.dwb_123)) or dwb_22 and dwb_22 and (not fns.dwb_118 or bR8) and (not fns.dwb_123 and not fns.dwb_118 and (dwb_22 and fns.dwb_3_1))) and not (bR8 and not fns.dwb_3_1 and (not fns.dwb_118 or dwb_22) and (bR8 or not bR8 or (not bR8 or fns.dwb_123)) or dwb_22 and dwb_22 and (not fns.dwb_118 or bR8) and (not fns.dwb_123 and not fns.dwb_118 and (dwb_22 and fns.dwb_3_1))) then
                fns.dwb_3_1 = fns.fn6448
            else
                bQG = fns.fn6448
            end
            dwb_22 = (dwb_22 + 22) % 56
        end
    elseif dwb_167_1 <= 6 then
        if dwb_167_1 <= 5 then
            if dwb_22 * 34457989 + 6 + 6 <= dwb_22 * 34457989 + 6 + 6 + 4 then
                fns.dwb_118 = fns.fn4669
                fns.dwb_87 = bSR(fns.dwb_51.ReplicatedStorage)
                bSf = bSR(fns.dwb_51.Workspace)
            else
                fns.dwb_87 = fns.fn4669
                bSR = fns.dwb_118(bSf.ReplicatedStorage)
                fns.dwb_51 = fns.dwb_118(bSf.Workspace)
            end
            dwb_22 = (dwb_22 + 29) % 56
        else
            local dwb_167_2 = (vector.create((dwb_22 * 3 + 5) % 11 + 1, (dwb_22 * 1 + 8) % 13 + 1, (dwb_22 * 1 + 3) % 17 + 1))
            local dwb_164_4 = (vector.create((dwb_22 * 3 + 3) % 11 + 1, (dwb_22 * 4 + 1) % 13 + 1, (dwb_22 * 4 + 14) % 17 + 1))
            local dwb_161_4 = (vector.create((dwb_22 * 2 + 8) % 11 + 1, (dwb_22 * 6 + 7) % 13 + 1, (dwb_22 * 3 + 11) % 17 + 1))
            local dwb_158_1 = (vector.create((dwb_22 * 2 + 4) % 5 + 1, (dwb_22 * 3 + 4) % 7 + 1, (dwb_22 * 3 + 5) % 9 + 1))
            if vector.dot(vector.cross(dwb_167_2, (vector.cross(dwb_164_4, dwb_161_4))), dwb_158_1) == vector.dot(dwb_164_4 * vector.dot(dwb_167_2, dwb_161_4) - dwb_161_4 * vector.dot(dwb_167_2, dwb_164_4), dwb_158_1) then
                fns.dwb_11 = {}
                bR8 = {}
            else
                bR8 = {}
                fns.dwb_11 = {}
            end
            dwb_22 = (dwb_22 + 29) % 56
        end
    else
        local dOj = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_22, 16), string.byte(tostring(bSR))), 20)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dOj, 386996959), 868935289), (bit32.bxor(bit32.band(dOj, 3907970336), 196020699))), 868935289), 196020699) == dOj then
            pcall(fns.fn7272)
            fns.dwb_3_1 = function(i)
                local bUB
                local bUz
                local bUA
                bUz = nil
                bUA = nil
                bUB = nil
                local bUC = i ~= ""
                local bUD = type(i) == "string" and bUC
                assert(bUD, "A namespace is required")
                assert(type(getgenv) == "function", "getgenv is unavailable")
                bUz = getgenv()
                assert(type(bUz) == "table", "getgenv did not return a table")
                local bUC_3 = bUz[i]
                if bUC_3 ~= nil then
                    local bUD_3 = type(bUC_3) == "table" and type(bUC_3.Unload) == "function"
                    assert(bUD_3, "Namespace is occupied")
                    bUC_3.Unload()
                    assert(bUz[i] == nil, "Previous instance did not release its namespace")
                end
                local bUD_4 = {}
                local bUE = type(bUC_3) == "table" and bUC_3.CombatInputs
                local bUG = bUE or {}
                local bUE_3 = type(bUC_3) == "table" and bUC_3.SkillWork
                local bUH = bUE_3 or {}
                local bUE_4 = type(bUC_3) == "table" and bUC_3.BlockWork
                local bUF_4 = bUE_4 or {}
                bUA = {}
                bUB = { State = bUD_4, Unloaded = false, CombatInputs = bUG, SkillWork = bUH, BlockWork = bUF_4 }
                bUB.Track = function(r)
                    assert(type(r) == "function", "Cleanup must be callable")
                    if bUB.Unloaded then
                        r()
                    else
                        table.insert(bUA, r)
                    end
                    return r
                end
                bUB.Unload = function()
                    local bUs_2
                    local bUr_2
                    if bUB.Unloaded then
                        return
                    end
                    bUB.Unloaded = true
                    local bUp = {}
                    local bUw = #bUA
                    local bUv = -1
                    while false and bUw <= 1 or true and bUw >= 1 do
                        local bUx = bUw
                        local bUq_2 = table.remove(bUA, bUx)
                        bUr_2, bUs_2 = pcall(bUq_2)
                        if not bUr_2 then
                            table.insert(bUp, tostring(bUs_2))
                        end
                        bUw += bUv
                    end
                    table.clear(bUB.State)
                    if #bUp > 0 then
                        error("Cleanup incomplete: " .. table.concat(bUp, "; "), 0)
                    end
                    if bUz[i] == bUB then
                        bUz[i] = nil
                    end
                end
                bUz[i] = bUB
                return bUB
            end
        else
            pcall(fns.fn7272)
            fns.dwb_11 = function(i)
                local bUB
                local bUz
                local bUA
                bUz = nil
                bUA = nil
                bUB = nil
                local bUC = i ~= ""
                local bUD = type(i) == "string" and bUC
                assert(bUD, "A namespace is required")
                assert(type(getgenv) == "function", "getgenv is unavailable")
                bUz = getgenv()
                assert(type(bUz) == "table", "getgenv did not return a table")
                local bUC_1 = bUz[i]
                if bUC_1 ~= nil then
                    local bUD_1 = type(bUC_1) == "table" and type(bUC_1.Unload) == "function"
                    assert(bUD_1, "Namespace is occupied")
                    bUC_1.Unload()
                    assert(bUz[i] == nil, "Previous instance did not release its namespace")
                end
                local bUD_2 = {}
                local bUE = type(bUC_1) == "table" and bUC_1.CombatInputs
                local bUG = bUE or {}
                local bUE_1 = type(bUC_1) == "table" and bUC_1.SkillWork
                local bUH = bUE_1 or {}
                local bUE_2 = type(bUC_1) == "table" and bUC_1.BlockWork
                local bUF_2 = bUE_2 or {}
                bUA = {}
                bUB = { State = bUD_2, Unloaded = false, CombatInputs = bUG, SkillWork = bUH, BlockWork = bUF_2 }
                bUB.Track = function(r)
                    assert(type(r) == "function", "Cleanup must be callable")
                    if bUB.Unloaded then
                        r()
                    else
                        table.insert(bUA, r)
                    end
                    return r
                end
                bUB.Unload = function()
                    local bUs_1
                    local bUr_1
                    if bUB.Unloaded then
                        return
                    end
                    bUB.Unloaded = true
                    local bUp = {}
                    local bUw = #bUA
                    local bUv = -1
                    while false and bUw <= 1 or true and bUw >= 1 do
                        local bUx = bUw
                        local bUq_1 = table.remove(bUA, bUx)
                        bUr_1, bUs_1 = pcall(bUq_1)
                        if not bUr_1 then
                            table.insert(bUp, tostring(bUs_1))
                        end
                        bUw += bUv
                    end
                    table.clear(bUB.State)
                    if #bUp > 0 then
                        error("Cleanup incomplete: " .. table.concat(bUp, "; "), 0)
                    end
                    if bUz[i] == bUB then
                        bUz[i] = nil
                    end
                end
                bUz[i] = bUB
                return bUB
            end
        end
        dwb_22 = (dwb_22 + 29) % 56
    end
until (dwb_22 * 5 + 26) % 56 == 51
fns.dwb_93, fns.dwb_80, bPQ, fns.dwb_150, fns.dwb_19, bTG = nil, nil, nil, nil, nil, nil
local dwb_167_3 = 14
repeat
    local dwb_22_1 = (dwb_167_3 * 3 + 0) % 4 + 1
    if dwb_22_1 <= 2 then
        if dwb_22_1 <= 1 then
            if dwb_167_3 * 100980023 + 12 + 4 >= dwb_167_3 * 100980023 + 12 + 4 + 1 then
                bPQ = fns.fn559
            else
                bTG = fns.fn559
            end
            dwb_167_3 = (dwb_167_3 + 19) % 32
        else
            if dwb_167_3 * 49707517 + 6 + 4 <= dwb_167_3 * 49707517 + 6 + 4 + 1 then
                bR8.status = fns.fn2659
                bR8.field = fns.fn3762
            else
                bR8.status = fns.fn2659
                bR8.field = fns.fn3762
            end
            dwb_167_3 = (dwb_167_3 + 11) % 32
        end
    elseif dwb_22_1 <= 3 then
        local dwb_22_2 = (vector.create((dwb_167_3 * 3 + 7) % 11 + 1, (dwb_167_3 * 1 + 6) % 13 + 1, (dwb_167_3 * 10 + 1) % 17 + 1))
        local dwb_3_2 = (vector.create((dwb_167_3 * 1 + 1) % 11 + 1, (dwb_167_3 * 8 + 5) % 13 + 1, (dwb_167_3 * 2 + 15) % 17 + 1))
        local dwb_164_5 = (vector.create((dwb_167_3 * 4 + 9) % 11 + 1, (dwb_167_3 * 4 + 11) % 13 + 1, (dwb_167_3 * 7 + 17) % 17 + 1))
        local dwb_161_5 = (vector.create((dwb_167_3 * 3 + 3) % 5 + 1, (dwb_167_3 * 5 + 3) % 7 + 1, (dwb_167_3 * 1 + 3) % 9 + 1))
        if vector.dot(vector.cross(dwb_22_2, (vector.cross(dwb_3_2, dwb_164_5))), dwb_161_5) == vector.dot(dwb_3_2 * vector.dot(dwb_22_2, dwb_164_5) - dwb_164_5 * vector.dot(dwb_22_2, dwb_3_2), dwb_161_5) then
            fns.dwb_93 = "#ffb3d9"
            fns.dwb_80 = "#6a7080"
            fns.dwb_19 = fns.fn2102
            bPQ = "#7c8290"
        else
            fns.dwb_19 = "#ffb3d9"
            bPQ = "#6a7080"
            fns.dwb_80 = fns.fn2102
            fns.dwb_93 = "#7c8290"
        end
        dwb_167_3 = (dwb_167_3 + 3) % 32
    else
        if dwb_167_3 * 34510947 + 1 + 3 >= dwb_167_3 * 34510947 + 1 + 3 + 1 then
            fns.dwb_19 = "#e0788c"
        else
            fns.dwb_150 = "#e0788c"
        end
        dwb_167_3 = (dwb_167_3 + 7) % 32
    end
until (dwb_167_3 * 7 + 12) % 32 == 6
bSs, fns.dwb_26, bSg, bQe, fns.dwb_71, fns.dwb_144, fns.dwb_7, bSt, dwb_22_3 = nil, nil, nil, nil, nil, nil, nil, nil, nil
local dwb_3_3 = 19
repeat
    local dwb_167_4 = (dwb_3_3 * 6 + 4) % 7 + 1
    if dwb_167_4 <= 4 then
        if dwb_167_4 <= 2 then
            if dwb_167_4 <= 1 then
                if (not fns.dwb_7 or fns.dwb_7 or (not bSs or fns.dwb_7) or fns.dwb_7 and not dwb_22_3 and (not dwb_22_3 or not bSs)) and (not bSs or dwb_22_3 or (not dwb_22_3 or not fns.dwb_7) or bSs and fns.dwb_7 and (dwb_22_3 or bSs)) and ((not fns.dwb_7 and not bSs and (bSs and not fns.dwb_7) or (not bSs or dwb_22_3 or dwb_22_3 and bSs)) and (bSs and not dwb_22_3 or dwb_22_3 and fns.dwb_7 or (fns.dwb_7 and dwb_22_3 or (not dwb_22_3 or dwb_22_3)))) or not ((not fns.dwb_7 or fns.dwb_7 or (not bSs or fns.dwb_7) or fns.dwb_7 and not dwb_22_3 and (not dwb_22_3 or not bSs)) and (not bSs or dwb_22_3 or (not dwb_22_3 or not fns.dwb_7) or bSs and fns.dwb_7 and (dwb_22_3 or bSs)) and ((not fns.dwb_7 and not bSs and (bSs and not fns.dwb_7) or (not bSs or dwb_22_3 or dwb_22_3 and bSs)) and (bSs and not dwb_22_3 or dwb_22_3 and fns.dwb_7 or (fns.dwb_7 and dwb_22_3 or (not dwb_22_3 or dwb_22_3))))) then
                    bSs.LevelStatus = "Idle"
                    bSs.QuestStatus = "Idle"
                    bSs.HuntStatus = "Idle"
                    bSs.DeliveryStatus = "Idle"
                    bSs.DemonStatus = "Idle"
                    bSs.DungeonStatus = "Idle"
                    bSs.BringStatus = "Idle"
                    bSs.CardStatus = "Idle"
                    bSs.WaveStatus = "Idle"
                    bSs.MobStatus = "Idle"
                    bSs.BossStatus = "Idle"
                    bSs.ChestStatus = "Idle"
                    bSs.BreathStatus = "Idle"
                    bSs.TrainStatus = "Idle"
                    bSs.SkillStatus = "Idle"
                    bSs.AutoSkillStatus = "Idle"
                    bSs.ClanSkillStatus = "Idle"
                    bSs.ParryStatus = "Off"
                    bSs.PotionStatus = "Idle"
                    bSs.ShopStatus = "Idle"
                    bSs.SellStatus = "Idle"
                    bSs.SellNameCache = {}
                    bSs.CrystalStatus = "Idle"
                    bSs.FishStatus = "Idle"
                    bSs.AnglerStatus = "Idle"
                    bSs.RodStatus = "Idle"
                    bSs.LootStatus = "Idle"
                    bSs.SoulStatus = "Idle"
                    bSs.TeleportStatus = "Idle"
                    bSs.SpawnStatus = "Idle"
                    bSs.RespawnStatus = "No saved position"
                    bSs.SchematicStatus = "Idle"
                    bSs.QueueStatus = "Idle"
                    bSs.ReadyStatus = "Idle"
                    bSs.OpenStatus = "Idle"
                    bSs.ResetStatus = "Idle"
                    bSs.StallStatus = "Idle"
                    bSs.LeaveStatus = "Idle"
                    bSs.WorldStatus = "Idle"
                    bSs.PriorityStatus = "Off"
                    bSs.PriorityHolder = "None"
                    bSs.CodeStatus = "Idle"
                    bSs.CodeBusy = false
                    bSs.CodeReadyAt = 0
                    bSs.Quests = 0
                    bSs.Hunts = 0
                    bSs.Kills = 0
                    bSs.Chests = 0
                    bSs.Nodes = 0
                    bSs.Potions = 0
                    bSs.Bought = 0
                    bSs.Fish = 0
                    bSs.Trainings = 0
                    bSs.Looted = 0
                    bSs.Souls = 0
                    bSs.ExpBundles = 0
                    bSs.ExpGained = 0
                    bSs.PointsSpent = 0
                    bSs.WebhookSent = 0
                    bSs.WebhookFailed = 0
                    fns.dwb_26 = {}
                else
                    fns.dwb_26.LevelStatus = "Idle"
                    fns.dwb_26.QuestStatus = "Idle"
                    fns.dwb_26.HuntStatus = "Idle"
                    fns.dwb_26.DeliveryStatus = "Idle"
                    fns.dwb_26.DemonStatus = "Idle"
                    fns.dwb_26.DungeonStatus = "Idle"
                    fns.dwb_26.BringStatus = "Idle"
                    fns.dwb_26.CardStatus = "Idle"
                    fns.dwb_26.WaveStatus = "Idle"
                    fns.dwb_26.MobStatus = "Idle"
                    fns.dwb_26.BossStatus = "Idle"
                    fns.dwb_26.ChestStatus = "Idle"
                    fns.dwb_26.BreathStatus = "Idle"
                    fns.dwb_26.TrainStatus = "Idle"
                    fns.dwb_26.SkillStatus = "Idle"
                    fns.dwb_26.AutoSkillStatus = "Idle"
                    fns.dwb_26.ClanSkillStatus = "Idle"
                    fns.dwb_26.ParryStatus = "Off"
                    fns.dwb_26.PotionStatus = "Idle"
                    fns.dwb_26.ShopStatus = "Idle"
                    fns.dwb_26.SellStatus = "Idle"
                    fns.dwb_26.SellNameCache = {}
                    fns.dwb_26.CrystalStatus = "Idle"
                    fns.dwb_26.FishStatus = "Idle"
                    fns.dwb_26.AnglerStatus = "Idle"
                    fns.dwb_26.RodStatus = "Idle"
                    fns.dwb_26.LootStatus = "Idle"
                    fns.dwb_26.SoulStatus = "Idle"
                    fns.dwb_26.TeleportStatus = "Idle"
                    fns.dwb_26.SpawnStatus = "Idle"
                    fns.dwb_26.RespawnStatus = "No saved position"
                    fns.dwb_26.SchematicStatus = "Idle"
                    fns.dwb_26.QueueStatus = "Idle"
                    fns.dwb_26.ReadyStatus = "Idle"
                    fns.dwb_26.OpenStatus = "Idle"
                    fns.dwb_26.ResetStatus = "Idle"
                    fns.dwb_26.StallStatus = "Idle"
                    fns.dwb_26.LeaveStatus = "Idle"
                    fns.dwb_26.WorldStatus = "Idle"
                    fns.dwb_26.PriorityStatus = "Off"
                    fns.dwb_26.PriorityHolder = "None"
                    fns.dwb_26.CodeStatus = "Idle"
                    fns.dwb_26.CodeBusy = false
                    fns.dwb_26.CodeReadyAt = 0
                    fns.dwb_26.Quests = 0
                    fns.dwb_26.Hunts = 0
                    fns.dwb_26.Kills = 0
                    fns.dwb_26.Chests = 0
                    fns.dwb_26.Nodes = 0
                    fns.dwb_26.Potions = 0
                    fns.dwb_26.Bought = 0
                    fns.dwb_26.Fish = 0
                    fns.dwb_26.Trainings = 0
                    fns.dwb_26.Looted = 0
                    fns.dwb_26.Souls = 0
                    fns.dwb_26.ExpBundles = 0
                    fns.dwb_26.ExpGained = 0
                    fns.dwb_26.PointsSpent = 0
                    fns.dwb_26.WebhookSent = 0
                    fns.dwb_26.WebhookFailed = 0
                    bSs = {}
                end
                dwb_3_3 = (dwb_3_3 + 48) % 56
            else
                local dHz = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_3, 2), string.byte(tostring(bSs))), 4)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dHz, 1779026025), 2851696404), (bit32.bxor(bit32.band(dHz, 2515941270), 2144450687))), 2851696404), 2144450687) ~= dHz then
                    fns.dwb_71 = {}
                    bSg = { missing = {} }
                    bSg.inDungeon = fns.fn274
                    bSg.dungeonName = fns.fn1659
                    bSg.playerValues = fns.fn1346
                    bSg.asGameScript = fns.fn430
                    bSg.toolBlocked = fns.fn6331
                    fns.dwb_144 = fns.fn2873
                    bQe = function(a2, ...)
                        local bVr
                        local bVq
                        bVq = nil
                        bVr = nil
                        local bVu_3
                        local bVt_3
                        local bVy = if not bQG(a2) then 1 else 0
                        if bVy == 1 then
                            return false, "not callable"
                        end
                        bVq = table.pack(...)
                        bVr = nil
                        local bVs = coroutine.create(function()
                            bVr = table.pack(pcall(a2, table.unpack(bVq, 1, bVq.n)))
                        end)
                        bVt_3, bVu_3 = coroutine.resume(bVs)
                        if not bVt_3 then
                            return false, bVu_3
                        end
                        local bVt_4 = not bVr
                        local bVu_4 = coroutine.status(bVs) ~= "dead" or bVt_4
                        if bVu_4 then
                            return false, "call did not finish"
                        end
                        return table.unpack(bVr, 1, bVr.n)
                    end
                else
                    bSg = {}
                    bQe = { missing = {} }
                    bQe.inDungeon = fns.fn274
                    bQe.dungeonName = fns.fn1659
                    bQe.playerValues = fns.fn1346
                    bQe.asGameScript = fns.fn430
                    bQe.toolBlocked = fns.fn6331
                    fns.dwb_71 = fns.fn2873
                    fns.dwb_144 = function(a2, ...)
                        local bVr
                        local bVq
                        bVq = nil
                        bVr = nil
                        local bVu_1
                        local bVt_1
                        local bVy = if not bQG(a2) then 1 else 0
                        if bVy == 1 then
                            return false, "not callable"
                        end
                        bVq = table.pack(...)
                        bVr = nil
                        local bVs = coroutine.create(function()
                            bVr = table.pack(pcall(a2, table.unpack(bVq, 1, bVq.n)))
                        end)
                        bVt_1, bVu_1 = coroutine.resume(bVs)
                        if not bVt_1 then
                            return false, bVu_1
                        end
                        local bVt_2 = not bVr
                        local bVu_2 = coroutine.status(bVs) ~= "dead" or bVt_2
                        if bVu_2 then
                            return false, "call did not finish"
                        end
                        return table.unpack(bVr, 1, bVr.n)
                    end
                end
                dwb_3_3 = (dwb_3_3 + 34) % 56
            end
        elseif dwb_167_4 <= 3 then
            local dwb_164_6 = (vector.create((dwb_3_3 * 7 + 7) % 11 + 1, (dwb_3_3 * 8 + 13) % 13 + 1, (dwb_3_3 * 9 + 1) % 17 + 1))
            local dwb_161_6 = (vector.create((dwb_3_3 * 5 + 9) % 11 + 1, (dwb_3_3 * 3 + 2) % 13 + 1, (dwb_3_3 * 2 + 15) % 17 + 1))
            local dwb_158_2 = (vector.create((dwb_3_3 * 3 + 7) % 11 + 1, (dwb_3_3 * 1 + 13) % 13 + 1, (dwb_3_3 * 2 + 2) % 17 + 1))
            local dwb_156_1 = (vector.create((dwb_3_3 * 5 + 3) % 5 + 1, (dwb_3_3 * 4 + 6) % 7 + 1, (dwb_3_3 * 2 + 4) % 9 + 1))
            if vector.dot(vector.cross(dwb_164_6, (vector.cross(dwb_161_6, dwb_158_2))), dwb_156_1) == vector.dot(dwb_161_6 * vector.dot(dwb_164_6, dwb_158_2) - dwb_158_2 * vector.dot(dwb_164_6, dwb_161_6), dwb_156_1) then
                fns.dwb_7 = fns.fn3052
            else
                bSt = fns.fn3052
            end
            dwb_3_3 = (dwb_3_3 + 27) % 56
        else
            local dwb_164_7 = (vector.create((dwb_3_3 * 4 + 5) % 11 + 1, (dwb_3_3 * 4 + 8) % 13 + 1, (dwb_3_3 * 12 + 14) % 17 + 1))
            local dwb_161_7 = (vector.create((dwb_3_3 * 1 + 4) % 11 + 1, (dwb_3_3 * 2 + 8) % 13 + 1, (dwb_3_3 * 12 + 6) % 17 + 1))
            local dwb_158_3 = (vector.create((dwb_3_3 * 5 + 7) % 11 + 1, (dwb_3_3 * 1 + 11) % 13 + 1, (dwb_3_3 * 4 + 15) % 17 + 1))
            local dwb_156_2 = (vector.create((dwb_3_3 * 3 + 3) % 11 + 1, (dwb_3_3 * 8 + 1) % 13 + 1, (dwb_3_3 * 7 + 4) % 17 + 1))
            if vector.dot(vector.cross(dwb_164_7, dwb_161_7), (vector.cross(dwb_158_3, dwb_156_2))) == vector.dot(dwb_164_7, dwb_158_3) * vector.dot(dwb_161_7, dwb_156_2) - vector.dot(dwb_164_7, dwb_156_2) * vector.dot(dwb_161_7, dwb_158_3) then
                bSt = fns.fn2284
            else
                fns.dwb_7 = fns.fn2284
            end
            dwb_3_3 = (dwb_3_3 + 34) % 56
        end
    elseif dwb_167_4 <= 6 then
        if dwb_167_4 <= 5 then
            local dwb_167_5 = (vector.create((dwb_3_3 * 3 + 6) % 11 + 1, (dwb_3_3 * 4 + 5) % 13 + 1, (dwb_3_3 * 9 + 17) % 17 + 1))
            local dwb_164_8 = (vector.create((dwb_3_3 * 2 + 4) % 11 + 1, (dwb_3_3 * 1 + 2) % 13 + 1, (dwb_3_3 * 2 + 3) % 17 + 1))
            local dwb_161_8 = (vector.create((dwb_3_3 * 4 + 7) % 11 + 1, (dwb_3_3 * 7 + 13) % 13 + 1, (dwb_3_3 * 13 + 13) % 17 + 1))
            local dwb_158_4 = (vector.create((dwb_3_3 * 2 + 3) % 11 + 1, (dwb_3_3 * 5 + 6) % 13 + 1, (dwb_3_3 * 14 + 3) % 17 + 1))
            if vector.dot(vector.cross(dwb_167_5, dwb_164_8), (vector.cross(dwb_161_8, dwb_158_4))) == vector.dot(dwb_167_5, dwb_161_8) * vector.dot(dwb_164_8, dwb_158_4) - vector.dot(dwb_167_5, dwb_158_4) * vector.dot(dwb_164_8, dwb_161_8) then
                fns.dwb_11.BOOT_TIMEOUT = 300
                dwb_22_3 = fns.fn1580
            else
                dwb_22_3.BOOT_TIMEOUT = 300
                fns.dwb_11 = fns.fn1580
            end
            dwb_3_3 = (dwb_3_3 + 13) % 56
        else
            if dwb_3_3 * 24212291 + 4 + 3 <= dwb_3_3 * 24212291 + 4 + 3 + 1 then
                dwb_22_3()
                fns.dwb_26.CAM = fns.dwb_7(fns.dwb_87, "CAM", 20)
            else
                fns.dwb_26()
                dwb_22_3.CAM = fns.dwb_87(fns.dwb_7, "CAM", 20)
            end
            dwb_3_3 = (dwb_3_3 + 6) % 56
        end
    else
        local dwb_167_6 = (vector.create((dwb_3_3 * 1 + 7) % 11 + 1, (dwb_3_3 * 10 + 7) % 13 + 1, (dwb_3_3 * 13 + 15) % 17 + 1))
        local dVU = vector.floor(dwb_167_6) + vector.ceil(dwb_167_6 * -1)
        if vector.dot(dVU, dVU) == 0 then
            bSs = fns.dwb_123.State
        else
            fns.dwb_123 = bSs.State
        end
        dwb_3_3 = (dwb_3_3 + 41) % 56
    end
until (dwb_3_3 * 19 + 49) % 56 == 11
local dwb_22_4 = fns.dwb_26.CAM
if dwb_22_4 then
    local dwb_3_4 = 2
    repeat
        local dVM = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_4, 29), string.byte(tostring(dwb_3_4))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(dVM, 3433587179), 20), 515689094) == bit32.lrotate(dVM, 20) then
            dwb_22_4 = fns.dwb_7(fns.dwb_26.CAM, "Global", 20)
        else
            fns.dwb_26 = dwb_22_4(fns.dwb_7.CAM, "Global", 20)
        end
        dwb_3_4 = (dwb_3_4 + 3) % 4
    until (dwb_3_4 * 3 + 2) % 4 == 1
end
fns.dwb_26.Global = dwb_22_4
local dwb_22_5 = fns.dwb_26.Global
if dwb_22_5 then
    local dwb_3_5 = 7
    repeat
        local dIF = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_5, 3), string.byte(tostring(dwb_3_5))), 22)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dIF, 862542259), 133992803), (bit32.bxor(bit32.band(dIF, 3432425036), 461539422))), 133992803), 461539422) == dIF then
            dwb_22_5 = bSt(fns.dwb_26.Global, { "Subsets", "Gameplay", "Quests" }, "Quests module")
        else
            fns.dwb_26 = dwb_22_5(bSt.Global, { "Quests", "Subsets", "Gameplay" }, "Quests module")
        end
        dwb_3_5 = (dwb_3_5 + 5) % 8
    until (dwb_3_5 * 1 + 6) % 8 == 2
end
fns.dwb_26.Quests = dwb_22_5
local dwb_22_6 = fns.dwb_26.Global
if dwb_22_6 then
    local dwb_3_6 = 0
    repeat
        local dwb_167_7 = (vector.create((dwb_3_6 * 2 + 7) % 11 + 1, (dwb_3_6 * 9 + 11) % 13 + 1, (dwb_3_6 * 9 + 14) % 17 + 1))
        local dwb_164_9 = (vector.create((dwb_3_6 * 4 + 8) % 11 + 1, (dwb_3_6 * 7 + 3) % 13 + 1, (dwb_3_6 * 12 + 14) % 17 + 1))
        local dTQ = vector.cross(dwb_167_7, dwb_164_9)
        local dTR = vector.dot(dwb_167_7, dwb_164_9)
        if vector.dot(dTQ, dTQ) + dTR * dTR == vector.dot(dwb_167_7, dwb_167_7) * vector.dot(dwb_164_9, dwb_164_9) then
            dwb_22_6 = bSt(fns.dwb_26.Global, { "Utility" }, "Utility module")
        else
            bSt = fns.dwb_26(dwb_22_6.Global, { "Utility" }, "Utility module")
        end
        dwb_3_6 = (dwb_3_6 + 0) % 4
    until (dwb_3_6 * 3 + 2) % 4 == 2
end
fns.dwb_26.Utility = dwb_22_6
local dwb_22_7 = fns.dwb_26.Global
if dwb_22_7 then
    local dwb_3_7 = 2
    repeat
        local dUp = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_7, 15), string.byte(tostring(dwb_3_7))), 19)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dUp, 1529875871), 1250717393), (bit32.bxor(bit32.band(dUp, 2765091424), 1825032619))), 1250717393), 1825032619) ~= dUp then
            fns.dwb_26 = dwb_22_7(bSt.Global, { "gameSettings" }, "gameSettings module")
        else
            dwb_22_7 = bSt(fns.dwb_26.Global, { "gameSettings" }, "gameSettings module")
        end
        dwb_3_7 = (dwb_3_7 + 4) % 8
    until (dwb_3_7 * 1 + 0) % 8 == 6
end
fns.dwb_26.GameSettings = dwb_22_7
local dwb_22_8 = fns.dwb_26.Global
if dwb_22_8 then
    local dwb_3_8 = 0
    repeat
        if (dwb_3_8 * 1 + 7) * 21 % 4 == ((dwb_3_8 * 1 + 7) * 21 + 1) % 4 then
            fns.dwb_26 = dwb_22_8(bSt.Global, { "Combat_presets" }, "Combat_presets module")
        else
            dwb_22_8 = bSt(fns.dwb_26.Global, { "Combat_presets" }, "Combat_presets module")
        end
        dwb_3_8 = (dwb_3_8 + 3) % 8
    until (dwb_3_8 * 3 + 3) % 8 == 4
end
fns.dwb_26.CombatPresets = dwb_22_8
local dwb_22_9 = fns.dwb_26.Global
if dwb_22_9 then
    local dwb_3_9 = 3
    repeat
        local dRB = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_9, 24), string.byte(tostring(dwb_3_9))), 30)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dRB, 3176592797), 208155882), (bit32.bxor(bit32.band(dRB, 1118374498), 1791402045))), 208155882), 1791402045) == dRB then
            dwb_22_9 = bSt(fns.dwb_26.Global, { "Checker" }, "Checker module")
        else
            bSt = fns.dwb_26(dwb_22_9.Global, { "Checker" }, "Checker module")
        end
        dwb_3_9 = (dwb_3_9 + 0) % 4
    until (dwb_3_9 * 1 + 1) % 4 == 0
end
fns.dwb_26.CombatChecker = dwb_22_9
local dwb_22_10 = fns.dwb_26.Global
if dwb_22_10 then
    local dwb_3_10 = 2
    repeat
        local dwb_167_8 = (vector.create((dwb_3_10 * 5 + 5) % 11 + 1, (dwb_3_10 * 2 + 4) % 13 + 1, (dwb_3_10 * 5 + 7) % 17 + 1))
        local dwb_164_10 = (vector.create((dwb_3_10 * 4 + 2) % 11 + 1, (dwb_3_10 * 9 + 11) % 13 + 1, (dwb_3_10 * 8 + 10) % 17 + 1))
        local dwb_161_9 = (vector.create((dwb_3_10 * 6 + 4) % 11 + 1, (dwb_3_10 * 8 + 3) % 13 + 1, (dwb_3_10 * 4 + 2) % 17 + 1))
        if vector.dot(vector.cross(dwb_167_8, dwb_164_10), dwb_161_9) == vector.dot(vector.cross(dwb_164_10, dwb_161_9), dwb_167_8) then
            dwb_22_10 = bSt(fns.dwb_26.Global, { "Skills_Module" }, "Skills_Module module")
        else
            fns.dwb_26 = dwb_22_10(bSt.Global, { "Skills_Module" }, "Skills_Module module")
        end
        dwb_3_10 = (dwb_3_10 + 1) % 4
    until (dwb_3_10 * 1 + 0) % 4 == 3
end
fns.dwb_26.CombatSkills = dwb_22_10
local dwb_22_11 = fns.dwb_26.Global
if dwb_22_11 then
    local dwb_3_11 = 7
    repeat
        if (dwb_3_11 * 1 + 9) * 21 % 4 == ((dwb_3_11 * 1 + 9) * 21 + 7) % 4 then
            fns.dwb_26 = dwb_22_11(bSt.Global, { "Character_info_provider" }, "Character_info_provider module")
        else
            dwb_22_11 = bSt(fns.dwb_26.Global, { "Character_info_provider" }, "Character_info_provider module")
        end
        dwb_3_11 = (dwb_3_11 + 2) % 8
    until (dwb_3_11 * 3 + 4) % 8 == 7
end
fns.dwb_26.CharacterInfo = dwb_22_11
local dwb_22_12 = fns.dwb_26.Global
if dwb_22_12 then
    local dwb_3_12 = 2
    repeat
        if (not dwb_3_12 or dwb_3_12) and (not dwb_3_12 or not dwb_3_12) and (dwb_3_12 or not dwb_3_12 or not dwb_3_12 and not dwb_3_12) and not ((not dwb_3_12 or dwb_3_12) and (not dwb_3_12 or not dwb_3_12) and (dwb_3_12 or not dwb_3_12 or not dwb_3_12 and not dwb_3_12)) then
            bSt = fns.dwb_26(dwb_22_12.Global, { "Collectibles", "Items" }, "Items module")
        else
            dwb_22_12 = bSt(fns.dwb_26.Global, { "Collectibles", "Items" }, "Items module")
        end
        dwb_3_12 = (dwb_3_12 + 2) % 4
    until (dwb_3_12 * 1 + 1) % 4 == 1
end
fns.dwb_26.Items = dwb_22_12
local dwb_22_13 = fns.dwb_26.Global
if dwb_22_13 then
    local dwb_3_13 = 1
    repeat
        local dwb_167_9 = {
            "inaqzfkze",
            "magbeplom",
            "jvytsp",
            "hbuh",
            "lqqekhcuavt",
            "usnsy",
            "qgrrwhhpdk",
            "jswpmbrw",
            "coma",
            "zyuz",
            "ozcrj"
        }
        local dRg = dwb_3_13
        local dwb_164_11 = dwb_167_9[dRg % 11 + 1]
        if dwb_164_11:len() <= dwb_164_11:reverse():rep(dRg % 3 + 2):len() then
            dwb_22_13 = bSt(fns.dwb_26.Global, { "Rarities" }, "Rarities module")
        else
            fns.dwb_26 = dwb_22_13(bSt.Global, { "Rarities" }, "Rarities module")
        end
        dwb_3_13 = (dwb_3_13 + 4) % 8
    until (dwb_3_13 * 3 + 7) % 8 == 6
end
fns.dwb_26.Rarities = dwb_22_13
local dwb_22_14 = fns.dwb_26.Global
if dwb_22_14 then
    local dwb_3_14 = 5
    repeat
        if (dwb_3_14 * 2 + 2) * 13 % 3 == ((dwb_3_14 * 2 + 2) * 13 + 2) % 3 then
            fns.dwb_26 = dwb_22_14(bSt.Global, { "Collectibles", "ItemRequirements" }, "ItemRequirements module")
        else
            dwb_22_14 = bSt(fns.dwb_26.Global, { "Collectibles", "ItemRequirements" }, "ItemRequirements module")
        end
        dwb_3_14 = (dwb_3_14 + 3) % 8
    until (dwb_3_14 * 5 + 0) % 8 == 0
end
fns.dwb_26.ItemRequirements = dwb_22_14
local dwb_22_15 = fns.dwb_26.Global
if dwb_22_15 then
    local dwb_3_15 = 1
    repeat
        if dwb_3_15 * 73979973 + 13 + 4 >= dwb_3_15 * 73979973 + 13 + 4 + 1 then
            fns.dwb_26 = dwb_22_15(bSt.Global, { "SkillService", "SkillTreeholder" }, "SkillTreeholder module")
        else
            dwb_22_15 = bSt(fns.dwb_26.Global, { "SkillService", "SkillTreeholder" }, "SkillTreeholder module")
        end
        dwb_3_15 = (dwb_3_15 + 3) % 4
    until (dwb_3_15 * 3 + 1) % 4 == 1
end
fns.dwb_26.SkillTree = dwb_22_15
local dwb_22_16 = fns.dwb_26.Global
if dwb_22_16 then
    local dwb_3_16 = 2
    repeat
        local dwb_167_10 = (vector.create((dwb_3_16 * 4 + 3) % 11 + 1, (dwb_3_16 * 9 + 11) % 13 + 1, (dwb_3_16 * 3 + 12) % 17 + 1))
        local dwb_164_12 = (vector.create((dwb_3_16 * 2 + 5) % 11 + 1, (dwb_3_16 * 10 + 10) % 13 + 1, (dwb_3_16 * 3 + 9) % 17 + 1))
        local dwb_161_10 = (vector.create((dwb_3_16 * 2 + 9) % 11 + 1, (dwb_3_16 * 8 + 6) % 13 + 1, (dwb_3_16 * 14 + 17) % 17 + 1))
        local dwb_158_5 = (vector.create((dwb_3_16 * 3 + 6) % 11 + 1, (dwb_3_16 * 1 + 2) % 13 + 1, (dwb_3_16 * 5 + 2) % 17 + 1))
        if vector.dot(vector.cross(dwb_167_10, dwb_164_12), (vector.cross(dwb_161_10, dwb_158_5))) == vector.dot(dwb_167_10, dwb_161_10) * vector.dot(dwb_164_12, dwb_158_5) - vector.dot(dwb_167_10, dwb_158_5) * vector.dot(dwb_164_12, dwb_161_10) then
            dwb_22_16 = bSt(fns.dwb_26.Global, { "PlayerProfile" }, "PlayerProfile module")
        else
            fns.dwb_26 = dwb_22_16(bSt.Global, { "PlayerProfile" }, "PlayerProfile module")
        end
        dwb_3_16 = (dwb_3_16 + 3) % 4
    until (dwb_3_16 * 3 + 1) % 4 == 0
end
fns.dwb_26.PlayerProfile = dwb_22_16
local dwb_22_17 = fns.dwb_26.CAM
if dwb_22_17 then
    local dwb_3_17 = 3
    repeat
        local dwb_167_11 = {
            "iqk",
            "iddgkuaf",
            "vmiyzvje",
            "jrixfmp",
            "akrumhoz",
            "cadyq",
            "pavu",
            "osfov",
            "ytnjbpnwa",
            "bwvecgmeo",
            "zjch",
            "prmusej",
            "fgfqnpd",
            "movham",
            "gkk"
        }
        if dwb_167_11[(dwb_3_17 * 58 + 62) % 15 + 1] <= dwb_167_11[(dwb_3_17 * 58 + 62) % 15 + 1] then
            dwb_22_17 = bSt(fns.dwb_26.CAM, { "Clans", "ClanSkills" }, "ClanSkills module")
        else
            fns.dwb_26 = dwb_22_17(bSt.CAM, { "Clans", "ClanSkills" }, "ClanSkills module")
        end
        dwb_3_17 = (dwb_3_17 + 2) % 8
    until (dwb_3_17 * 5 + 4) % 8 == 5
end
fns.dwb_26.ClanSkills = dwb_22_17
local dwb_22_18 = fns.dwb_26.Global
if dwb_22_18 then
    local dwb_3_18 = 2
    repeat
        local dH3 = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_18, 27), string.byte(tostring(dwb_3_18))), 1)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dH3, 3080614417), 3240864040), (bit32.bxor(bit32.band(dH3, 1214352878), 3017109870))), 3240864040), 3017109870) ~= dH3 then
            bSt = fns.dwb_26(dwb_22_18.Global, { "LiveConfig" }, "LiveConfig module")
        else
            dwb_22_18 = bSt(fns.dwb_26.Global, { "LiveConfig" }, "LiveConfig module")
        end
        dwb_3_18 = (dwb_3_18 + 2) % 4
    until (dwb_3_18 * 3 + 2) % 4 == 2
end
fns.dwb_26.LiveConfig = dwb_22_18
local dwb_22_19 = fns.dwb_26.Global
if dwb_22_19 then
    local dwb_3_19 = 5
    repeat
        local dwb_167_12 = {
            "azlfghmllxe",
            "mnibu",
            "qhuxn",
            "ywwchrhibbz",
            "uixsillbi",
            "mqhd",
            "feirfomdd",
            "bknqtttaq",
            "mcplubai",
            "acegbbvq"
        }
        local dR1 = dwb_3_19
        local dwb_164_13 = dwb_167_12[dR1 % 10 + 1]
        if dwb_164_13:len() <= dwb_164_13:reverse():rep(dR1 % 3 + 2):len() then
            dwb_22_19 = bSt(fns.dwb_26.Global, { "MinigameSettings" }, "MinigameSettings module")
        else
            fns.dwb_26 = dwb_22_19(bSt.Global, { "MinigameSettings" }, "MinigameSettings module")
        end
        dwb_3_19 = (dwb_3_19 + 6) % 8
    until (dwb_3_19 * 7 + 0) % 8 == 5
end
fns.dwb_92 = nil
local dwb_167_13 = 11
repeat
    if (dwb_167_13 * 1 + 1) % 2 + 1 <= 1 then
        local dQG = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_167_13, 15), string.byte(tostring(fns.dwb_92))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(dQG, 1983396642), 8), 943399542) == bit32.lrotate(dQG, 8) then
            fns.dwb_26.MinigameSettings = dwb_22_19
            fns.dwb_92 = { cache = {} }
        else
            fns.dwb_26.MinigameSettings = fns.dwb_92
            dwb_22_19 = { cache = {} }
        end
        dwb_167_13 = (dwb_167_13 + 3) % 16
    else
        local dwb_3_21 = (vector.create((dwb_167_13 * 5 + 5) % 11 + 1, (dwb_167_13 * 6 + 5) % 13 + 1, (dwb_167_13 * 10 + 9) % 17 + 1))
        local dwb_164_14 = (vector.create((dwb_167_13 * 4 + 7) % 11 + 1, (dwb_167_13 * 7 + 6) % 13 + 1, (dwb_167_13 * 12 + 9) % 17 + 1))
        local dJv = vector.cross(dwb_3_21, dwb_164_14)
        local dJw = vector.dot(dwb_3_21, dwb_164_14)
        if vector.dot(dJv, dJv) + dJw * dJw == vector.dot(dwb_3_21, dwb_3_21) * vector.dot(dwb_164_14, dwb_164_14) then
            fns.dwb_92.module = fns.fn7644
            fns.dwb_92.regions = fns.fn4969
            fns.dwb_26.Communication = fns.dwb_7(fns.dwb_87, "Communication", 20)
        else
            fns.dwb_87.module = fns.fn7644
            fns.dwb_87.regions = fns.fn4969
            fns.dwb_7.Communication = fns.dwb_26(fns.dwb_92, "Communication", 20)
        end
        dwb_167_13 = (dwb_167_13 + 11) % 16
    end
until (dwb_167_13 * 7 + 0) % 16 == 15
local dwb_22_20 = fns.dwb_26.Communication
if dwb_22_20 then
    local dwb_3_22 = 0
    repeat
        local dwb_167_14 = { "beln", "xqw", "iyfw", "mtnbkbe", "hvdohmvtvg", "athjmhmmr", "mtbowuu", "jyxfav" }
        local dUn = dwb_3_22
        local dwb_164_15 = dwb_167_14[dUn % 8 + 1]
        if dwb_164_15:len() >= dwb_164_15:reverse():rep(dUn % 3 + 2):len() then
            fns.dwb_26 = dwb_22_20(fns.dwb_7.Communication, "ServerAndClient", 20)
        else
            dwb_22_20 = fns.dwb_7(fns.dwb_26.Communication, "ServerAndClient", 20)
        end
        dwb_3_22 = (dwb_3_22 + 1) % 8
    until (dwb_3_22 * 3 + 3) % 8 == 6
end
fns.dwb_26.Signals = dwb_22_20
local dwb_22_21 = fns.dwb_26.Signals
if dwb_22_21 then
    local dwb_3_23 = 2
    repeat
        if (dwb_3_23 * 2 + 4) * 16 % 3 == ((dwb_3_23 * 2 + 4) * 16 + 3) % 3 then
            dwb_22_21 = fns.dwb_7(fns.dwb_26.Signals, "Signals", 20)
        else
            fns.dwb_7 = fns.dwb_26(dwb_22_21.Signals, "Signals", 20)
        end
        dwb_3_23 = (dwb_3_23 + 4) % 8
    until (dwb_3_23 * 1 + 6) % 8 == 4
end
fns.dwb_26.Signals = dwb_22_21
local dwb_22_22 = fns.dwb_26.Signals
if dwb_22_22 then
    local dwb_3_24 = 1
    repeat
        local dwb_167_15 = (vector.create((dwb_3_24 * 1 + 4) % 11 + 1, (dwb_3_24 * 1 + 3) % 13 + 1, (dwb_3_24 * 11 + 8) % 17 + 1))
        local dwb_164_16 = (vector.create((dwb_3_24 * 5 + 7) % 11 + 1, (dwb_3_24 * 11 + 8) % 13 + 1, (dwb_3_24 * 3 + 1) % 17 + 1))
        local dwb_161_11 = (vector.create((dwb_3_24 * 5 + 2) % 11 + 1, (dwb_3_24 * 10 + 1) % 13 + 1, (dwb_3_24 * 5 + 17) % 17 + 1))
        if vector.dot(vector.cross(dwb_167_15, dwb_164_16), dwb_161_11) == vector.dot(vector.cross(dwb_164_16, dwb_161_11), dwb_167_15) then
            dwb_22_22 = bSt(fns.dwb_26.Signals, { "SignalEvent" }, "SignalEvent module")
        else
            fns.dwb_26 = dwb_22_22(bSt.Signals, { "SignalEvent" }, "SignalEvent module")
        end
        dwb_3_24 = (dwb_3_24 + 2) % 8
    until (dwb_3_24 * 3 + 2) % 8 == 3
end
fns.dwb_26.SignalEvent = dwb_22_22
local dwb_22_23 = fns.dwb_26.Signals
if dwb_22_23 then
    local dwb_3_25 = 1
    repeat
        local dwb_167_16 = { "xcnmev", "erigsvsjygl", "ombknczwl", "iptlok", "akvoa", "ieuony", "utx", "abvbsqd", "pninf" }
        local dVY = dwb_3_25
        local dwb_164_17 = dwb_167_16[dVY % 9 + 1]
        if dwb_164_17:len() >= dwb_164_17:gsub("(.)", "%1%1", dVY % 3 % 2 + 1):len() then
            fns.dwb_26 = dwb_22_23(bSt.Signals, { "SignalFunction" }, "SignalFunction module")
        else
            dwb_22_23 = bSt(fns.dwb_26.Signals, { "SignalFunction" }, "SignalFunction module")
        end
        dwb_3_25 = (dwb_3_25 + 2) % 8
    until (dwb_3_25 * 5 + 6) % 8 == 5
end
fns.dwb_26.SignalFunction = dwb_22_23
local dwb_22_24 = fns.dwb_26.CAM
if dwb_22_24 then
    local dwb_3_26 = 3
    repeat
        if (dwb_3_26 * 2 + 4) * 13 % 3 == ((dwb_3_26 * 2 + 4) * 13 + 4) % 3 then
            fns.dwb_26 = dwb_22_24(fns.dwb_7.CAM, "Client", 20)
        else
            dwb_22_24 = fns.dwb_7(fns.dwb_26.CAM, "Client", 20)
        end
        dwb_3_26 = (dwb_3_26 + 0) % 4
    until (dwb_3_26 * 1 + 3) % 4 == 2
end
fns.dwb_26.Client = dwb_22_24
local dwb_22_25 = fns.dwb_26.Client
if dwb_22_25 then
    local dwb_3_27 = 4
    repeat
        local dUQ = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_27, 3), string.byte(tostring(dwb_3_27))), 21)
        if bit32.bxor(bit32.lrotate(bit32.bxor(dUQ, 4056661659), 30), 4235390886) ~= bit32.lrotate(dUQ, 30) then
            fns.dwb_7 = fns.dwb_26(dwb_22_25.Client, "Controllers", 20)
        else
            dwb_22_25 = fns.dwb_7(fns.dwb_26.Client, "Controllers", 20)
        end
        dwb_3_27 = (dwb_3_27 + 3) % 8
    until (dwb_3_27 * 5 + 4) % 8 == 7
end
fns.dwb_26.Controllers = dwb_22_25
local dwb_22_26 = fns.dwb_26.Controllers
if dwb_22_26 then
    local dwb_3_28 = 3
    repeat
        local dwb_167_17 = {
            "jkvcvonrzhj",
            "ldcwcxootu",
            "hxn",
            "gvpsr",
            "kvnbrhvmxebm",
            "kzbdjasdk",
            "hzkdhtrchxdf",
            "nknqdn",
            "kveq",
            "nmooebsnzt",
            "qvbtsokyv",
            "gwb",
            "vdgbt"
        }
        if dwb_167_17[(dwb_3_28 * 4 + 51) % 13 + 1] <= dwb_167_17[(dwb_3_28 * 4 + 51) % 13 + 1] then
            dwb_22_26 = bSt(fns.dwb_26.Controllers, { "Skills_Provider" }, "Skills_Provider module")
        else
            fns.dwb_26 = dwb_22_26(bSt.Controllers, { "Skills_Provider" }, "Skills_Provider module")
        end
        dwb_3_28 = (dwb_3_28 + 1) % 4
    until (dwb_3_28 * 3 + 2) % 4 == 2
end
fns.dwb_26.SkillsProvider = dwb_22_26
local dwb_22_27 = fns.dwb_26.Controllers
if dwb_22_27 then
    local dwb_3_29 = 4
    repeat
        if dwb_3_29 * 49025795 + 13 + 2 >= dwb_3_29 * 49025795 + 13 + 2 + 3 then
            fns.dwb_26 = dwb_22_27(bSt.Controllers, { "Skill_Controller" }, "Skill_Controller module")
        else
            dwb_22_27 = bSt(fns.dwb_26.Controllers, { "Skill_Controller" }, "Skill_Controller module")
        end
        dwb_3_29 = (dwb_3_29 + 3) % 8
    until (dwb_3_29 * 7 + 3) % 8 == 4
end
fns.dwb_26.SkillRunner = dwb_22_27
local dwb_22_28 = fns.dwb_26.Controllers
if dwb_22_28 then
    local dwb_3_30 = 1
    repeat
        local dwb_167_18 = {
            "yijylr",
            "oyyxclcnhrt",
            "becydno",
            "wwgagvo",
            "bcnleflh",
            "sfnqa",
            "ykateaubd",
            "ppbaihnxd",
            "vdnrwp",
            "tyjt"
        }
        local dRj = dwb_3_30
        local dwb_164_18 = dwb_167_18[dRj % 10 + 1]
        if dwb_164_18:len() >= dwb_164_18:gsub("(.)", "%1%1", dRj % 3 % 2 + 1):len() then
            fns.dwb_26 = dwb_22_28(bSt.Controllers, { "Platform_Handler" }, "Platform_Handler module")
        else
            dwb_22_28 = bSt(fns.dwb_26.Controllers, { "Platform_Handler" }, "Platform_Handler module")
        end
        dwb_3_30 = (dwb_3_30 + 2) % 4
    until (dwb_3_30 * 3 + 2) % 4 == 3
end
fns.dwb_26.PlatformHandler = dwb_22_28
local dwb_22_29 = fns.dwb_26.Client
if dwb_22_29 then
    local dwb_3_31 = 2
    repeat
        if (not dwb_3_31 and not dwb_3_31 and (dwb_3_31 and dwb_3_31) or (not dwb_3_31 or not dwb_3_31) and (not dwb_3_31 or dwb_3_31)) and not (not dwb_3_31 and not dwb_3_31 and (dwb_3_31 and dwb_3_31) or (not dwb_3_31 or not dwb_3_31) and (not dwb_3_31 or dwb_3_31)) then
            fns.dwb_26 = dwb_22_29(bSt.Client, { "Client", "InputHandler", "Components" }, "InputHandler module")
        else
            dwb_22_29 = bSt(fns.dwb_26.Client, { "Components", "Client", "InputHandler" }, "InputHandler module")
        end
        dwb_3_31 = (dwb_3_31 + 0) % 4
    until (dwb_3_31 * 3 + 0) % 4 == 2
end
fns.dwb_26.InputHandler = dwb_22_29
local dwb_22_30 = fns.dwb_26.Client
if dwb_22_30 then
    local dwb_3_32 = 3
    repeat
        local dwb_167_19 = { "htckcdqg", "yoe", "ynmnce", "hxz", "ftbmzr", "yjdxpngjncg", "yxlxlt", "hlrirwscgr", "jykp" }
        local dOX = dwb_3_32
        local dwb_164_19 = dwb_167_19[dOX % 9 + 1]
        if dwb_164_19:len() >= dwb_164_19:gsub("(.)", "%1%1", dOX % 3 % 2 + 1):len() then
            bSt = fns.dwb_26(dwb_22_30.Client, { "Modules", "GamePlay", "Run_Handler" }, "Run_Handler module")
        else
            dwb_22_30 = bSt(fns.dwb_26.Client, { "Modules", "GamePlay", "Run_Handler" }, "Run_Handler module")
        end
        dwb_3_32 = (dwb_3_32 + 1) % 8
    until (dwb_3_32 * 3 + 2) % 8 == 6
end
fns.dwb_26.RunHandler = dwb_22_30
local dwb_22_31 = fns.dwb_26.Controllers
if dwb_22_31 then
    local dwb_3_33 = 4
    repeat
        if (dwb_3_33 * 2 + 8) * 10 % 3 == ((dwb_3_33 * 2 + 8) * 10 + 1) % 3 then
            fns.dwb_26 = dwb_22_31.Controllers:FindFirstChild("Skills_Provider")
        else
            dwb_22_31 = fns.dwb_26.Controllers:FindFirstChild("Skills_Provider")
        end
        dwb_3_33 = (dwb_3_33 + 3) % 8
    until (dwb_3_33 * 3 + 4) % 8 == 1
end
local dwb_167_20 = dwb_22_31
if dwb_22_31 then
    dwb_22_31 = dwb_167_20:FindFirstChild("CurPower")
end
fns.dwb_26.CurPower = dwb_22_31
local dwb_22_32 = type(fns.dwb_26.GameSettings) == "table"
if dwb_22_32 then
    local dwb_3_34 = 3
    repeat
        local dwb_167_21 = {
            "cqdpypgfdfrc",
            "fkrqaobcv",
            "ypu",
            "fbgdesiry",
            "mesjj",
            "kroqj",
            "cuqqihwg",
            "cemp",
            "lolleo",
            "bgybo",
            "lxxzxrsabwcc"
        }
        if dwb_167_21[(dwb_3_34 * 95 + 84) % 11 + 1] <= dwb_167_21[(dwb_3_34 * 95 + 84) % 11 + 1] then
            dwb_22_32 = tonumber(fns.dwb_26.GameSettings.expPerLevel)
        else
            fns.dwb_26 = tonumber(dwb_22_32.GameSettings.expPerLevel)
        end
        dwb_3_34 = (dwb_3_34 + 2) % 4
    until (dwb_3_34 * 3 + 1) % 4 == 0
end
fns.dwb_26.EXP_PER_LEVEL = dwb_22_32 or 60
local dwb_22_33 = type(fns.dwb_26.GameSettings) == "table"
if dwb_22_33 then
    local dwb_3_36 = 3
    repeat
        if (dwb_3_36 * 3 + 4) * 21 % 4 == ((dwb_3_36 * 3 + 4) * 21 + 4) % 4 then
            dwb_22_33 = tonumber(fns.dwb_26.GameSettings.maxLevel)
        else
            fns.dwb_26 = tonumber(dwb_22_33.GameSettings.maxLevel)
        end
        dwb_3_36 = (dwb_3_36 + 1) % 4
    until (dwb_3_36 * 1 + 0) % 4 == 0
end
local dwb_3_37 = dwb_22_33
local dwb_168 = if dwb_3_37 then 1 else 0
local dwb_34 = 2311 * dwb_168 + 773 * (1 - dwb_168)
local dwb_14 = 197 * dwb_168 + 3718 * (1 - dwb_168)
if not ((dwb_34 * 156 + dwb_14 * 29 + dwb_34 * dwb_14) % 16777213 == 821496) then
    dwb_3_37 = 225
end
bQ4, bTN, bQR, fns.dwb_145, fns.dwb_82, fns.dwb_120, bQt, bR2, bRS, fns.dwb_89, fns.dwb_36, fns.dwb_99, fns.dwb_4, fns.dwb_104, bR3, fns.dwb_13 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.dwb_26.MAX_LEVEL = dwb_3_37
bQR = fns.fn6994
fns.dwb_145 = fns.fn2106
fns.dwb_82 = fns.fn2308
fns.dwb_120 = fns.fn7366
bQt = fns.fn1837
bR2 = fns.fn3335
bRS = fns.fn2807
fns.dwb_89 = fns.fn915
fns.dwb_36 = fns.fn6079
fns.dwb_11.ORBIT_SPEED = 1.8
fns.dwb_11.CLAN_SKILL_TOOL = "Clan Skills"
fns.dwb_11.NEVER_CAST = { Blocking = true, Dash = true, Double_Jump = true }
fns.dwb_11.SHC_PATIENCE = 6
fns.dwb_11.SOUL_NAMES = { ["Weak Soul"] = true, ["Strong Soul"] = true, ["Brave Soul"] = true }
bQ4 = {
    positionType = "Above",
    lookAtEnemy = true,
    offset = 3,
    height = 0,
    lateral = 0,
    movementMode = "Tween",
    tweenSpeed = 400,
    weapon = "",
    autoSkills = false,
    skills = {},
    autoClanSkills = false,
    clanSkills = {},
    holdTimes = {}
}
fns.dwb_99 = fns.fn53
fns.dwb_4 = fns.fn1979
fns.dwb_104 = fns.fn202
bR3 = fns.fn3702
bTN = {}
fns.dwb_13 = function(dy)
    local bWK = fns.dwb_99()
    if not bWK then
        return
    end
    if dy then
        for i, descendant in ipairs(bWK:GetDescendants()) do
            local bWK_1 = (descendant:IsA("BasePart")) and descendant.CanCollide
            if bWK_1 then
                if bTN[descendant] == nil then
                    bTN[descendant] = true
                end
                descendant.CanCollide = false
            end
        end
        return
    end
    for k, v in pairs(bTN) do
        local bWY = k
        local bW_ = v
        if bWY.Parent then
            pcall(function()
                bWY.CanCollide = bW_
            end)
        end
        bTN[bWY] = nil
    end
end
fns.dwb_123.Track(fns.fn4174)
local dwb_22_34 = fns.dwb_123.CombatInputs
local dwb_3_38 = setmetatable({}, { __mode = "k" })
local dwb_167_22 = (bQG(getsenv)) and getsenv
local dwb_164_20 = dwb_167_22 or nil
local dwb_167_23 = (bQG(filtergc)) and filtergc
local dwb_161_12 = dwb_167_23 or nil
local dwb_167_24 = (bQG(getfenv)) and getfenv
local dwb_158_6 = dwb_167_24 or nil
fns.dwb_147, bPT, bSE, bSr, fns.dwb_57, fns.dwb_133, bQv, fns.dwb_1, fns.dwb_61, fns.dwb_130, bQZ, fns.dwb_16, fns.dwb_17, fns.dwb_111, fns.dwb_137, bRD, bSQ, bR5, bQF, fns.dwb_108, bRF, fns.dwb_44, bRH, fns.dwb_47, bTH, bSD, fns.dwb_41, bRx, fns.dwb_88, fns.dwb_129, bQQ, bQs, fns.dwb_6, fns.dwb_96, fns.dwb_38, fns.bSv, fns.dwb_65, fns.dwb_70, fns.dwb_50, fns.dwb_52, fns.dwb_110, fns.dwb_21, fns.dwb_117, bRU, fns.dwb_62, fns.dwb_56, fns.dwb_42, bQu, fns.dwb_146, fns.dwb_141, fns.dwb_114, fns.dwb_112 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.dwb_147 = {
    session = nil,
    inputs = dwb_22_34,
    runs = dwb_3_38,
    source = nil,
    character = nil,
    punch = nil,
    resolveAt = 0,
    getEnvironment = dwb_164_20,
    findFunctions = dwb_161_12,
    getFunctionEnvironment = dwb_158_6
}
if (fns.dwb_41 and false or (fns.dwb_16 or not fns.dwb_41) or (fns.dwb_16 or fns.dwb_41 or fns.dwb_16 and fns.dwb_16)) and (fns.dwb_41 and false and (fns.dwb_41 or fns.dwb_16) or (fns.dwb_41 or fns.dwb_41) and (fns.dwb_41 or not fns.dwb_41)) and not ((fns.dwb_41 and false or (fns.dwb_16 or not fns.dwb_41) or (fns.dwb_16 or fns.dwb_41 or fns.dwb_16 and fns.dwb_16)) and (fns.dwb_41 and false and (fns.dwb_41 or fns.dwb_16) or (fns.dwb_41 or fns.dwb_41) and (fns.dwb_41 or not fns.dwb_41))) then
    fns.dwb_123.controllerValid = fns.fn7115
    fns.dwb_123.releaseInput = function(dW, dX)
        local bXe
        bXe = fns.dwb_147.inputs[dW]
        if not bXe or dX and bXe.owner ~= dX then
            return
        end
        bXe.release = true
        if bXe.pressing or bXe.releasing then
            return
        end
        bXe.releasing = true
        task.spawn(function()
            local bW9_2
            local bW8_3
            if fns.dwb_147.inputs[dW] ~= bXe then
                return
            end
            bW8_3, bW9_2 = pcall(fns.dwb_26.InputHandler.VirtualRelease, dW)
            if not bW8_3 then
                warn("[Ouroboros] input release: " .. tostring(bW9_2))
                bXe.owner.inputError = "Cannot release " .. dW .. ": " .. tostring(bW9_2)
                bXe.releasing = false
                local bW8_4 = bXe.failures
                local bXd = if bW8_4 then 1 else 0
                local bXb = 1763 * bXd + 279 * (1 - bXd)
                local bXc = 4000 * bXd + 1761 * (1 - bXd)
                if not ((bXb * 2293 + bXc * 827 + bXb * bXc) % 16777213 == 14402559) then
                    bW8_4 = 0
                end
                bXe.failures = bW8_4 + 1
                if bXe.failures < 3 then
                    task.delay(0.1, function()
                        if fns.dwb_147.inputs[dW] == bXe then
                            fns.dwb_147.releaseInput(dW, bXe.owner)
                        end
                    end)
                elseif fns.dwb_147.inputs[dW] == bXe then
                    fns.dwb_147.inputs[dW] = nil
                end
                return
            end
            if fns.dwb_147.inputs[dW] == bXe then
                fns.dwb_147.inputs[dW] = nil
            end
        end)
    end
    fns.dwb_123.pressInput = function(ed, ee, ef)
        local bXp
        local bXq = not ee.valid() or fns.dwb_147.inputs[ed]
        if bXq then
            return false
        end
        local bXq_2 = type(fns.dwb_26.InputHandler) ~= "table" or not bQG(fns.dwb_26.InputHandler.VirtualPress) or not bQG(fns.dwb_26.InputHandler.VirtualRelease)
        if bXq_2 then
            return false
        end
        bXp = { owner = ee, pressing = true, started = os.clock() }
        fns.dwb_147.inputs[ed] = bXp
        task.spawn(function()
            local bXj_3
            local bXi = not ee.valid() or fns.dwb_147.inputs[ed] ~= bXp
            local bXi_5
            if bXi then
                bXp.pressing = false
                fns.dwb_147.releaseInput(ed, ee)
                return
            end
            bXj_3, bXi_5 = pcall(fns.dwb_26.InputHandler.VirtualPress, ed)
            bXp.pressing = false
            local bXk = not bXj_3
            if bXk ~= false then
                bXk = tostring(bXi_5)
            end
            bXp.error = bXk or nil
            if not bXj_3 then
                ee.inputError = bXp.error
                ee.nextPunch = os.clock() + 1
            end
            local bXi_7 = not bXj_3 or bXp.release
            local bXo = if bXi_7 then 1 else 0
            local bXm = 2081 * bXo + 539 * (1 - bXo)
            local bXn = 595 * bXo + 2164 * (1 - bXo)
            if not ((bXm * 2813 + bXn * 3808 + bXm * bXn) % 16777213 == 9357808) then
                bXi_7 = not ee.valid()
            end
            if bXi_7 then
                fns.dwb_147.releaseInput(ed, ee)
                return
            end
            if ef then
                local bXi_8 = os.clock() + ef
                while true do
                    local bXj_4 = (ee.valid()) and not bXp.release and os.clock() < bXi_8
                    if bXj_4 then
                        task.wait(math.min(0.05, math.max(0, bXi_8 - os.clock())))
                        continue
                    end
                    break
                end
                fns.dwb_147.releaseInput(ed, ee)
            end
        end)
        return true
    end
    fns.dwb_1 = fns.fn2930
    fns.dwb_123.stop = fns.fn3368
    fns.dwb_123.clearInputs = fns.fn3325
    bQv.Track(fns.fn5612)
    fns.dwb_147.VERTICAL_CLEARANCE = 2
    fns.dwb_147.MAX_LOOK_PITCH = 0.82
    fns.dwb_147.MIN_AIM_REACH = 1
    fns.dwb_147.POSITION_TYPES = { "Above", "Inside", "Front", "Below", "Behind", "Side", "Orbit" }
    fns.dwb_147.MOVEMENT_MODES = { "Tween", "Teleport" }
    fns.dwb_147.POSE_MODES = {
        Inside = fns.fn3683,
        Above = fns.fn5228,
        Orbit = fns.fn4729,
        Front = fns.fn2340,
        Side = fns.fn3869,
        Below = fns.fn4293,
        Behind = fns.fn5182
    }
    fns.dwb_123.clearance = setmetatable({}, { __mode = "k" })
    fns.dwb_11 = function(e_)
        local bXW_3, bXW_4
        local bXV_5
        local Position = e_.Position
        local bXP = math.max(bQ4.offset, 0)
        local height = bQ4.height
        local LookVector = e_.CFrame.LookVector
        local bXR_3 = Vector3.new(LookVector.X, 0, LookVector.Z)
        local bXS = bXR_3.Magnitude < 0.1 and Vector3.new(0, 0, 1)
        local bXT = bXS or bXR_3.Unit
        local bXS_3 = Vector3.new(-bXT.Z, 0, bXT.X)
        local bXT_5 = 0
        local bXU = bQ4.positionType == "Above"
        local bXU_7
        local bX0 = if bXU then 1 else 0
        local bXZ = 403 * bX0 + 252 * (1 - bX0)
        local bX_ = 3072 * bX0 + 3479 * (1 - bX0)
        if not ((bXZ * 3082 + bX_ * 1561 + bXZ * bX_) % 16777213 == 7275454) then
            bXU = bQ4.positionType == "Below"
        end
        if bXU then
            local bXU_5 = fns.dwb_147.clearance[e_]
            local bXV_4 = not bXU_5 or os.clock() >= bXU_5.expires
            if bXV_4 then
                local bXT_6 = e_.Size.Y * 0.5
                local Model = e_:FindFirstAncestorOfClass("Model")
                if Model then
                    bXV_5, bXW_3 = pcall(function()
                        return select(2, Model:GetBoundingBox())
                    end)
                    local bXX = bXV_5 and typeof(bXW_3) == "Vector3"
                    if bXX then
                        bXT_6 = math.max(bXT_6, bXW_3.Y * 0.5)
                    end
                end
                bXU_5 = { value = bXT_6 + fns.dwb_11.VERTICAL_CLEARANCE, expires = os.clock() + 0.5 }
                fns.dwb_147.clearance[e_] = bXU_5
            end
            bXT_5 = bXU_5.value
        end
        local bXU_6 = fns.dwb_11.POSE_MODES[bQ4.positionType]
        local bX0_3 = if bXU_6 then 1 else 0
        local bXZ_3 = 1278 * bX0_3 + 2102 * (1 - bX0_3)
        local bX__3 = 3860 * bX0_3 + 1034 * (1 - bX0_3)
        if not ((bXZ_3 * 1279 + bX__3 * 23 + bXZ_3 * bX__3) % 16777213 == 6656422) then
            bXU_6 = fns.dwb_11.POSE_MODES.Behind
        end
        local bXV_6 = bXU_6
        bXU_7, bXW_4 = bXV_6({ facing = bXT, side = bXS_3, radius = bXP, height = height, clearance = bXT_5 })
        local bXP_2 = Position + bXU_7 + bXS_3 * bQ4.lateral + Vector3.new(0, bXW_4, 0)
        local bXQ_2 = Vector3.new(Position.X, bXP_2.Y, Position.Z)
        if bQ4.lookAtEnemy then
            local bXS_4 = Position - bXP_2
            local bXO_2 = Vector3.new(bXS_4.X, 0, bXS_4.Z)
            if bXO_2.Magnitude < fns.dwb_11.MIN_AIM_REACH then
                local bXU_8 = bXO_2.Magnitude < 0.1 and bXT
                local bX0_4 = if bXU_8 then 1 else 0
                local bXZ_4 = 2276 * bX0_4 + 1507 * (1 - bX0_4)
                local bX__4 = 1461 * bX0_4 + 3200 * (1 - bX0_4)
                if not ((bXZ_4 * 2811 + bX__4 * 222 + bXZ_4 * bX__4) % 16777213 == 10047414) then
                    bXU_8 = bXO_2.Unit
                end
                bXO_2 = bXU_8 * fns.dwb_11.MIN_AIM_REACH
            end
            local bXT_8 = bXO_2.Magnitude * (fns.dwb_11.MAX_LOOK_PITCH / math.sqrt(1 - fns.dwb_11.MAX_LOOK_PITCH ^ 2))
            bXQ_2 = bXP_2 + bXO_2 + Vector3.new(0, math.clamp(bXS_4.Y, -bXT_8, bXT_8), 0)
        end
        if (bXQ_2 - bXP_2).Magnitude < 0.5 then
            bXQ_2 = bXP_2 + bXT
        end
        return CFrame.lookAt(bXP_2, bXQ_2)
    end
else
    fns.dwb_147.controllerValid = fns.fn7115
    fns.dwb_147.releaseInput = function(dW, dX)
        local bXe
        bXe = fns.dwb_147.inputs[dW]
        if not bXe or dX and bXe.owner ~= dX then
            return
        end
        bXe.release = true
        if bXe.pressing or bXe.releasing then
            return
        end
        bXe.releasing = true
        task.spawn(function()
            local bW9_1
            local bW8_1
            if fns.dwb_147.inputs[dW] ~= bXe then
                return
            end
            bW8_1, bW9_1 = pcall(fns.dwb_26.InputHandler.VirtualRelease, dW)
            if not bW8_1 then
                warn("[Ouroboros] input release: " .. tostring(bW9_1))
                bXe.owner.inputError = "Cannot release " .. dW .. ": " .. tostring(bW9_1)
                bXe.releasing = false
                local bW8_2 = bXe.failures
                local bXd = if bW8_2 then 1 else 0
                local bXb = 1763 * bXd + 279 * (1 - bXd)
                local bXc = 4000 * bXd + 1761 * (1 - bXd)
                if not ((bXb * 2293 + bXc * 827 + bXb * bXc) % 16777213 == 14402559) then
                    bW8_2 = 0
                end
                bXe.failures = bW8_2 + 1
                if bXe.failures < 3 then
                    task.delay(0.1, function()
                        if fns.dwb_147.inputs[dW] == bXe then
                            fns.dwb_147.releaseInput(dW, bXe.owner)
                        end
                    end)
                elseif fns.dwb_147.inputs[dW] == bXe then
                    fns.dwb_147.inputs[dW] = nil
                end
                return
            end
            if fns.dwb_147.inputs[dW] == bXe then
                fns.dwb_147.inputs[dW] = nil
            end
        end)
    end
    fns.dwb_147.pressInput = function(ed, ee, ef)
        local bXp
        local bXq = not ee.valid() or fns.dwb_147.inputs[ed]
        if bXq then
            return false
        end
        local bXq_1 = type(fns.dwb_26.InputHandler) ~= "table" or not bQG(fns.dwb_26.InputHandler.VirtualPress) or not bQG(fns.dwb_26.InputHandler.VirtualRelease)
        if bXq_1 then
            return false
        end
        bXp = { owner = ee, pressing = true, started = os.clock() }
        fns.dwb_147.inputs[ed] = bXp
        task.spawn(function()
            local bXj_1
            local bXi = not ee.valid() or fns.dwb_147.inputs[ed] ~= bXp
            local bXi_1
            if bXi then
                bXp.pressing = false
                fns.dwb_147.releaseInput(ed, ee)
                return
            end
            bXj_1, bXi_1 = pcall(fns.dwb_26.InputHandler.VirtualPress, ed)
            bXp.pressing = false
            local bXk = not bXj_1
            if bXk ~= false then
                bXk = tostring(bXi_1)
            end
            bXp.error = bXk or nil
            if not bXj_1 then
                ee.inputError = bXp.error
                ee.nextPunch = os.clock() + 1
            end
            local bXi_3 = not bXj_1 or bXp.release
            local bXo = if bXi_3 then 1 else 0
            local bXm = 2081 * bXo + 539 * (1 - bXo)
            local bXn = 595 * bXo + 2164 * (1 - bXo)
            if not ((bXm * 2813 + bXn * 3808 + bXm * bXn) % 16777213 == 9357808) then
                bXi_3 = not ee.valid()
            end
            if bXi_3 then
                fns.dwb_147.releaseInput(ed, ee)
                return
            end
            if ef then
                local bXi_4 = os.clock() + ef
                while true do
                    local bXj_2 = (ee.valid()) and not bXp.release and os.clock() < bXi_4
                    if bXj_2 then
                        task.wait(math.min(0.05, math.max(0, bXi_4 - os.clock())))
                        continue
                    end
                    break
                end
                fns.dwb_147.releaseInput(ed, ee)
            end
        end)
        return true
    end
    bQv = fns.fn2930
    fns.dwb_147.stop = fns.fn3368
    fns.dwb_147.clearInputs = fns.fn3325
    fns.dwb_123.Track(fns.fn5612)
    fns.dwb_11.VERTICAL_CLEARANCE = 2
    fns.dwb_11.MAX_LOOK_PITCH = 0.82
    fns.dwb_11.MIN_AIM_REACH = 1
    fns.dwb_11.POSITION_TYPES = { "Above", "Below", "Behind", "Front", "Side", "Orbit", "Inside" }
    fns.dwb_11.MOVEMENT_MODES = { "Tween", "Teleport" }
    fns.dwb_11.POSE_MODES = {
        Behind = fns.fn5182,
        Front = fns.fn2340,
        Side = fns.fn3869,
        Inside = fns.fn3683,
        Above = fns.fn5228,
        Below = fns.fn4293,
        Orbit = fns.fn4729
    }
    fns.dwb_147.clearance = setmetatable({}, { __mode = "k" })
    fns.dwb_1 = function(e_)
        local bXW_1, bXW_2
        local bXV_2
        local Position = e_.Position
        local bXP = math.max(bQ4.offset, 0)
        local height = bQ4.height
        local LookVector = e_.CFrame.LookVector
        local bXR_1 = Vector3.new(LookVector.X, 0, LookVector.Z)
        local bXS = bXR_1.Magnitude < 0.1 and Vector3.new(0, 0, 1)
        local bXT = bXS or bXR_1.Unit
        local bXS_1 = Vector3.new(-bXT.Z, 0, bXT.X)
        local bXT_1 = 0
        local bXU = bQ4.positionType == "Above"
        local bXU_3
        local bX0 = if bXU then 1 else 0
        local bXZ = 403 * bX0 + 252 * (1 - bX0)
        local bX_ = 3072 * bX0 + 3479 * (1 - bX0)
        if not ((bXZ * 3082 + bX_ * 1561 + bXZ * bX_) % 16777213 == 7275454) then
            bXU = bQ4.positionType == "Below"
        end
        if bXU then
            local bXU_1 = fns.dwb_147.clearance[e_]
            local bXV_1 = not bXU_1 or os.clock() >= bXU_1.expires
            if bXV_1 then
                local bXT_2 = e_.Size.Y * 0.5
                local Model = e_:FindFirstAncestorOfClass("Model")
                if Model then
                    bXV_2, bXW_1 = pcall(function()
                        return select(2, Model:GetBoundingBox())
                    end)
                    local bXX = bXV_2 and typeof(bXW_1) == "Vector3"
                    if bXX then
                        bXT_2 = math.max(bXT_2, bXW_1.Y * 0.5)
                    end
                end
                bXU_1 = { value = bXT_2 + fns.dwb_11.VERTICAL_CLEARANCE, expires = os.clock() + 0.5 }
                fns.dwb_147.clearance[e_] = bXU_1
            end
            bXT_1 = bXU_1.value
        end
        local bXU_2 = fns.dwb_11.POSE_MODES[bQ4.positionType]
        local bX0_1 = if bXU_2 then 1 else 0
        local bXZ_1 = 1278 * bX0_1 + 2102 * (1 - bX0_1)
        local bX__1 = 3860 * bX0_1 + 1034 * (1 - bX0_1)
        if not ((bXZ_1 * 1279 + bX__1 * 23 + bXZ_1 * bX__1) % 16777213 == 6656422) then
            bXU_2 = fns.dwb_11.POSE_MODES.Behind
        end
        local bXV_3 = bXU_2
        bXU_3, bXW_2 = bXV_3({ facing = bXT, side = bXS_1, radius = bXP, height = height, clearance = bXT_1 })
        local bXP_1 = Position + bXU_3 + bXS_1 * bQ4.lateral + Vector3.new(0, bXW_2, 0)
        local bXQ_1 = Vector3.new(Position.X, bXP_1.Y, Position.Z)
        if bQ4.lookAtEnemy then
            local bXS_2 = Position - bXP_1
            local bXO_1 = Vector3.new(bXS_2.X, 0, bXS_2.Z)
            if bXO_1.Magnitude < fns.dwb_11.MIN_AIM_REACH then
                local bXU_4 = bXO_1.Magnitude < 0.1 and bXT
                local bX0_2 = if bXU_4 then 1 else 0
                local bXZ_2 = 2276 * bX0_2 + 1507 * (1 - bX0_2)
                local bX__2 = 1461 * bX0_2 + 3200 * (1 - bX0_2)
                if not ((bXZ_2 * 2811 + bX__2 * 222 + bXZ_2 * bX__2) % 16777213 == 10047414) then
                    bXU_4 = bXO_1.Unit
                end
                bXO_1 = bXU_4 * fns.dwb_11.MIN_AIM_REACH
            end
            local bXT_4 = bXO_1.Magnitude * (fns.dwb_11.MAX_LOOK_PITCH / math.sqrt(1 - fns.dwb_11.MAX_LOOK_PITCH ^ 2))
            bXQ_1 = bXP_1 + bXO_1 + Vector3.new(0, math.clamp(bXS_2.Y, -bXT_4, bXT_4), 0)
        end
        if (bXQ_1 - bXP_1).Magnitude < 0.5 then
            bXQ_1 = bXP_1 + bXT
        end
        return CFrame.lookAt(bXP_1, bXQ_1)
    end
end
fns.dwb_11.SKILL_SIGNAL = "server_skill_controller_signaler"
fns.dwb_61 = fns.fn1652
bPT = { connection = nil, part = nil }
fns.dwb_130 = fns.fn2628
fns.dwb_147.detach = fns.dwb_130
bQZ = function(fH, fI)
    local bYb = typeof(fH) ~= "Instance" or not fH:IsA("BasePart")
    if bYb then
        return false
    end
    if bPT.part == fH and bPT.connection and bPT.owner == fI then
        return true
    end
    fns.dwb_130()
    local bYa = fns.dwb_4()
    if not bYa then
        return false
    end
    bPT.part = fH
    bPT.owner = fI
    if bYa.Anchored then
        pcall(function()
            bYa.Anchored = false
        end)
    end
    bYa.CFrame = fns.dwb_1(fH)
    bPT.connection = fns.dwb_51.RunService.Heartbeat:Connect(function()
        local bX4 = not fns.dwb_118()
        if not bX4 then
            local bX5_1 = fI and not fI.valid()
            bX4 = bX5_1
        end
        if bX4 then
            fns.dwb_130(fI)
            return
        end
        local part = bPT.part
        local bX3 = fns.dwb_4()
        local bX5_2 = not bX3 or not part
        local bX9 = if bX5_2 then 1 else 0
        local bX7 = 1940 * bX9 + 821 * (1 - bX9)
        local bX8 = 2033 * bX9 + 1915 * (1 - bX9)
        if not ((bX7 * 875 + bX8 * 2225 + bX7 * bX8) % 16777213 == 10164945) then
            bX5_2 = not part:IsDescendantOf(bSf)
        end
        if bX5_2 then
            return
        end
        if bX3.Anchored then
            pcall(function()
                bX3.Anchored = false
            end)
        end
        bX3.CFrame = fns.dwb_1(part)
        bX3.AssemblyLinearVelocity = Vector3.new(0, -8, 0)
        bX3.AssemblyAngularVelocity = Vector3.zero
    end)
    return true
end
fns.dwb_123.Track(fns.dwb_130)
fns.dwb_11.LOOT_POSE_MAX = 5
fns.dwb_147.standBy = fns.fn707
fns.dwb_147.holdAt = function(gf)
    fns.dwb_130()
    fns.dwb_13(true)
    local connection
    connection = fns.dwb_51.RunService.Heartbeat:Connect(function()
        local bYl = if not fns.dwb_118() then 1 else 0
        if bYl == 1 then
            connection:Disconnect()
            return
        end
        local bYh = fns.dwb_4()
        if not bYh then
            return
        end
        if bYh.Anchored then
            pcall(function()
                bYh.Anchored = false
            end)
        end
        bYh.CFrame = gf
        bYh.AssemblyLinearVelocity = Vector3.new(0, -8, 0)
        bYh.AssemblyAngularVelocity = Vector3.zero
    end)
    bPT.connection = connection
    fns.dwb_147.holdConnection = connection
end
fns.dwb_147.releaseHold = fns.fn5700
fns.dwb_11.ARRIVE_RADIUS = 8
fns.dwb_11.EXACT_ARRIVE = 1.5
fns.dwb_11.BLINK_HOLD = 0.35
bSE = { tween = nil, token = 0 }
fns.dwb_16 = function()
    bSE.token = bSE.token + 1
    if bSE.tween then
        pcall(function()
            bSE.tween:Cancel()
        end)
        bSE.tween = nil
    end
    local bYr = fns.dwb_4()
    if bYr then
        pcall(function()
            bYr.Anchored = false
        end)
    end
    fns.dwb_13(false)
end
fns.dwb_123.Track(fns.dwb_16)
fns.dwb_17 = function(gH)
    local bYz
    bYz = fns.dwb_147.runs[coroutine.running()]
    local function bYA()
        local bYw = (fns.dwb_118())
        if bYw then
            local bYx = not bYz or fns.dwb_147.controllerValid(bYz.controller)
            bYw = bYx
        end
        return bYw
    end
    local bYB = os.clock()
    local bYC = gH
    local bYH = if bYC then 1 else 0
    local bYF = 852 * bYH + 1131 * (1 - bYH)
    local bYG = 2832 * bYH + 3015 * (1 - bYH)
    if not ((bYF * 3399 + bYG * 1433 + bYF * bYG) % 16777213 == 9367068) then
        bYC = 20
    end
    local bYD = bYB + bYC
    while true do
        local bYB_1 = (bYA()) and os.clock() < bYD
        if bYB_1 then
            if bR3() then
                return true
            end
            task.wait(0.2)
            continue
        end
        break
    end
    local bYB_2 = (bYA()) and bR3()
    return bYB_2
end
fns.dwb_111 = function(gX, gY, gZ, g_)
    local bYP
    local bYQ
    local bYS
    local bYT
    local bYO, bYR, bYU, bYV, bYW, bYX, bYY, bYZ, bY_, bY1, bY2, bY3
    local bY0 = 77
    while true do
        local bY0_1 = 137 - bY0
        do
            if bY0_1 < 97 then
                if bY0_1 < 77 then
                    if bY0_1 < 67 then
                        if bY0_1 < 63 then
                            if bY0_1 < 60 then
                                if bY0_1 < 59 then
                                    if bY0_1 == 58 then
                                        local bY6_1 = if bYP.PlaybackState == Enum.PlaybackState.Playing then 1 else 0
                                        local bY4_1 = 2813 * bY6_1 + 4040 * (1 - bY6_1)
                                        local bY5_1 = 2831 * bY6_1 + 2399 * (1 - bY6_1)
                                        bY0 = if (bY4_1 * 1157 + bY5_1 * 2067 + bY4_1 * bY5_1) % 16777213 == 292708 then 40 else 47
                                    else
                                        bY0 = 64
                                        continue
                                    end
                                elseif bY0_1 == 59 then
                                    bY0 = if bYQ.Anchored then 61 else 10
                                else
                                    bY0 = 100
                                    continue
                                end
                            elseif bY0_1 < 61 then
                                if bY0_1 == 60 then
                                    bY0 = if typeof(gX) ~= "Vector3" then 5 else 36
                                else
                                    bY0 = 65
                                    continue
                                end
                            elseif bY0_1 < 62 then
                                return false
                            else
                                bY0 = if bYX then 59 else 13
                            end
                        elseif bY0_1 < 65 then
                            if bY0_1 < 64 then
                                if bY0_1 == 63 then
                                    bYX = os.clock() < bYW
                                    bY0 = 75
                                else
                                    bY0 = 12110
                                    continue
                                end
                            elseif bY0_1 == 64 then
                                bY0 = if fns.dwb_4() ~= bYV then 65 else 66
                            else
                                bY0 = 135
                                continue
                            end
                        elseif bY0_1 < 66 then
                            bYX = not gZ()
                            bY0 = if bYX then 27 else 56
                        elseif bY0_1 == 66 then
                            fns.dwb_13(false)
                            bY0 = if bYY then 60 else 43
                        else
                            bY0 = 122
                            continue
                        end
                    elseif bY0_1 < 72 then
                        if bY0_1 < 69 then
                            if bY0_1 < 68 then
                                if bY0_1 == 67 then
                                    bY0 = 14
                                else
                                    bY0 = 72
                                    continue
                                end
                            elseif bY0_1 == 68 then
                                bY0 = if bSE.token ~= bYU then 31 else 79
                            else
                                bY0 = 132
                                continue
                            end
                        elseif bY0_1 < 70 then
                            bYY = fns.dwb_11.ARRIVE_RADIUS
                            bY0 = 17
                        elseif bY0_1 < 71 then
                            if bY0_1 == 70 then
                                return bYV
                            end
                            bY0 = 107
                            continue
                        else
                            task.wait(0.05)
                            bY0 = 33
                        end
                    elseif bY0_1 < 74 then
                        if bY0_1 < 73 then
                            bY0 = 69
                        else
                            return false
                        end
                    elseif bY0_1 < 75 then
                        bYW = (gX - bYV.Position).Magnitude
                        bYX = g_
                        bY3 = if bYX then 1 else 0
                        bY1 = 1669 * bY3 + 1278 * (1 - bY3)
                        bY0 = 29
                    elseif bY0_1 < 76 then
                        bYV = bSE.token == bYU
                        bY0 = 21
                    elseif bY0_1 == 76 then
                        pcall(function()
                            bYQ.Anchored = false
                        end)
                        bY0 = 10
                    else
                        bY0 = 133
                        continue
                    end
                elseif bY0_1 < 85 then
                    if bY0_1 < 81 then
                        if bY0_1 < 80 then
                            if bY0_1 < 79 then
                                if bY0_1 < 78 then
                                    return false
                                elseif bY0_1 == 78 then
                                    bY0 = if bSE.token ~= bYU then 25 else 46
                                else
                                    bY0 = 123
                                    continue
                                end
                            else
                                bY0 = 69
                            end
                        elseif bY0_1 == 80 then
                            bY0 = 28
                        else
                            bY0 = 133
                            continue
                        end
                    elseif bY0_1 < 83 then
                        if bY0_1 < 82 then
                            if bY0_1 == 81 then
                                return bYX
                            end
                            bY0 = 132
                            continue
                        elseif bY0_1 == 82 then
                            bY0 = 4
                        else
                            bY0 = 134
                            continue
                        end
                    elseif bY0_1 < 84 then
                        if bY0_1 == 83 then
                            bYV = bSE.token ~= bYU
                            bY0 = 1
                        else
                            bY0 = 115
                            continue
                        end
                    elseif bY0_1 == 84 then
                        bYY = true
                        bY0 = 69
                    else
                        bY0 = 74
                        continue
                    end
                elseif bY0_1 < 88 then
                    if bY0_1 < 87 then
                        if bY0_1 < 86 then
                            bYV = (bYT.Position - gX).Magnitude < 25
                            bY0 = 67
                        elseif bY0_1 == 86 then
                            bY0 = 55
                        else
                            bY0 = 113
                            continue
                        end
                    elseif bY0_1 == 87 then
                        bY0 = if bYX then 53 else 20
                    else
                        bY0 = 122
                        continue
                    end
                elseif bY0_1 < 92 then
                    if bY0_1 < 90 then
                        if bY0_1 < 89 then
                            pcall(function()
                                bYT.Anchored = false
                            end)
                            bYT.AssemblyLinearVelocity = Vector3.zero
                            bY0 = 71
                        else
                            bYV = not gZ()
                            bY0 = if bYV then 62 else 21
                        end
                    elseif bY0_1 < 91 then
                        if bY0_1 == 90 then
                            bSE.tween = nil
                            bY0 = 4
                        else
                            bY0 = 128
                            continue
                        end
                    else
                        bYX = gZ
                        bY0 = if bYX then 9 else 50
                    end
                elseif bY0_1 < 94 then
                    if bY0_1 < 93 then
                        bY0 = if bYV then 52 else 67
                    else
                        bYY = false
                        bY0 = if bQ4.movementMode == "Teleport" then 8 else 16
                    end
                elseif bY0_1 < 95 then
                    if bY0_1 == 94 then
                        bY0 = if gY then 2 else 48
                    else
                        bY0 = 12407
                        continue
                    end
                elseif bY0_1 < 96 then
                    bYV = fns.dwb_4()
                    bY0 = if not bYV then 64 else 63
                else
                    bYV = bYT ~= nil
                    bY0 = 45
                end
            elseif bY0_1 < 119 then
                if bY0_1 < 110 then
                    if bY0_1 < 105 then
                        if bY0_1 < 104 then
                            if bY0_1 < 100 then
                                if bY0_1 < 98 then
                                    if bY0_1 == 97 then
                                        pcall(function()
                                            bYP:Cancel()
                                        end)
                                        bY0 = 47
                                    else
                                        bY0 = 60
                                        continue
                                    end
                                elseif bY0_1 < 99 then
                                    if bY0_1 == 98 then
                                        bYV = gZ()
                                        bY0 = 22
                                    else
                                        bY0 = 96
                                        continue
                                    end
                                else
                                    break
                                end
                            elseif bY0_1 < 102 then
                                if bY0_1 < 101 then
                                    if bY0_1 == 100 then
                                        pcall(function()
                                            bYS:ChangeState(Enum.HumanoidStateType.Freefall)
                                        end)
                                        bY0 = 44
                                    else
                                        bY0 = 101
                                        continue
                                    end
                                else
                                    bYR = fns.dwb_147.runs[coroutine.running()]
                                    bYO = gZ
                                    gZ = function()
                                        local bYI = not fns.dwb_118()
                                        if not bYI then
                                            local bYJ_1 = bYR and not fns.dwb_147.controllerValid(bYR.controller)
                                            bYI = bYJ_1
                                        end
                                        if not bYI then
                                            local bYJ_2 = bYO and bYO()
                                            bYI = bYJ_2
                                        end
                                        return bYI
                                    end
                                    bY0 = if gZ() then 76 else 35
                                end
                            elseif bY0_1 < 103 then
                                fns.dwb_130()
                                fns.dwb_16()
                                bYU = bSE.token
                                bYV = not fns.dwb_17(15)
                                bY0 = if bYV then 22 else 39
                            elseif bY0_1 == 103 then
                                bY0 = 55
                            else
                                bY0 = 79
                                continue
                            end
                        elseif bY0_1 == 104 then
                            bY0 = 57
                        else
                            bY0 = 81
                            continue
                        end
                    elseif bY0_1 < 107 then
                        if bY0_1 < 106 then
                            if bY0_1 == 105 then
                                return false
                            end
                            bY0 = 64
                            continue
                        end
                        return false
                    elseif bY0_1 < 108 then
                        return false
                    elseif bY0_1 < 109 then
                        if bY0_1 == 108 then
                            bY2 = 1503 * bY3 + 3779 * (1 - bY3)
                            bY0 = 7
                        else
                            bY0 = 82
                            continue
                        end
                    else
                        bYX = (fns.dwb_118())
                        bY0 = if bYX then 74 else 75
                    end
                elseif bY0_1 < 114 then
                    if bY0_1 < 112 then
                        if bY0_1 < 111 then
                            bYX = bSE.token == bYU
                            bY0 = 56
                        elseif bY0_1 == 111 then
                            bY0 = if bSE.token ~= bYU then 32 else 0
                        else
                            bY0 = 119
                            continue
                        end
                    elseif bY0_1 < 113 then
                        if bY0_1 == 112 then
                            return false
                        end
                        bY0 = 126
                        continue
                    elseif bY0_1 == 113 then
                        task.wait(gY)
                        bY0 = 72
                    else
                        bY0 = 109
                        continue
                    end
                elseif bY0_1 < 118 then
                    if bY0_1 < 116 then
                        if bY0_1 < 115 then
                            if bY0_1 == 114 then
                                bY0 = if gY then 24 else 72
                            else
                                bY0 = 120
                                continue
                            end
                        elseif bY0_1 == 115 then
                            bY0 = if bYV then 1 else 54
                        else
                            bY0 = 75
                            continue
                        end
                    elseif bY0_1 < 117 then
                        bY0 = if bYV then 41 else 45
                    else
                        bY0 = if bYP.PlaybackState ~= Enum.PlaybackState.Playing then 58 else 73
                    end
                elseif bY0_1 == 118 then
                    bY0 = if bY_ then 34 else 70
                else
                    bY0 = 75
                    continue
                end
            elseif bY0_1 < 128 then
                if bY0_1 < 125 then
                    if bY0_1 < 124 then
                        if bY0_1 < 121 then
                            if bY0_1 < 120 then
                                if bY0_1 == 119 then
                                    bSE.token = bSE.token + 1
                                    bYU = bSE.token
                                    bYX = CFrame.new(gX)
                                    fns.dwb_13(true)
                                    bYV.AssemblyLinearVelocity = Vector3.zero
                                    bYV.AssemblyAngularVelocity = Vector3.zero
                                    bYS = fns.dwb_104()
                                    bY0 = if bYS then 37 else 44
                                else
                                    bY0 = 117
                                    continue
                                end
                            else
                                bY0 = if bYW <= bYY then 23 else 18
                            end
                        elseif bY0_1 < 122 then
                            if bY0_1 == 121 then
                                bYV.Anchored = true
                                bYZ = math.clamp(bQ4.tweenSpeed, 50, 1000)
                                bY_ = math.clamp(bYW / bYZ, 0.05, 25)
                                bYP = fns.dwb_51.TweenService:Create(bYV, TweenInfo.new(bY_, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), { CFrame = bYX })
                                bSE.tween = bYP
                                bYP:Play()
                                bYW = os.clock() + bY_ + 3
                                bY0 = 57
                            else
                                bY0 = 58
                                continue
                            end
                        elseif bY0_1 < 123 then
                            bYY = bYX
                            local bY6_2 = if bYY then 1 else 0
                            local bY4_2 = 3206 * bY6_2 + 580 * (1 - bY6_2)
                            local bY5_2 = 3039 * bY6_2 + 3166 * (1 - bY6_2)
                            bY0 = if (bY4_2 * 1043 + bY5_2 * 3696 + bY4_2 * bY5_2) % 16777213 == 7541823 then 17 else 68
                        else
                            bY0 = 26
                        end
                    else
                        bY0 = 69
                    end
                elseif bY0_1 < 127 then
                    if bY0_1 < 126 then
                        return false
                    end
                    bY_ = gZ()
                    bY0 = 19
                else
                    bYQ.CFrame = bYX
                    bYQ.AssemblyLinearVelocity = Vector3.zero
                    bYQ.AssemblyAngularVelocity = Vector3.zero
                    task.wait()
                    bY_ = os.clock() >= bYZ
                    bY0 = if bY_ then 19 else 11
                end
            elseif bY0_1 < 135 then
                if bY0_1 < 129 then
                    if bY0_1 == 128 then
                        bYX = gZ()
                        bY0 = 50
                    else
                        bY0 = 92
                        continue
                    end
                elseif bY0_1 < 132 then
                    if bY0_1 < 130 then
                        if bY0_1 == 129 then
                            bYZ = os.clock() + fns.dwb_11.BLINK_HOLD
                            bYQ = nil
                            bY0 = 14
                        else
                            bY0 = 75
                            continue
                        end
                    elseif bY0_1 < 131 then
                        if bY0_1 == 130 then
                            bY0 = if (bY1 * 647 + bY2 * 1296 + bY1 * bY2) % 16777213 == 5536238 then 3 else 15
                        else
                            bY0 = 85
                            continue
                        end
                    elseif bY0_1 == 131 then
                        bYT = fns.dwb_4()
                        bY0 = if bYT then 49 else 71
                    else
                        bY0 = 80
                        continue
                    end
                elseif bY0_1 < 133 then
                    return false
                elseif bY0_1 < 134 then
                    bY0 = if bSE.token ~= bYU then 30 else 6
                elseif bY0_1 == 134 then
                    bYX = fns.dwb_11.EXACT_ARRIVE
                    bY0 = 15
                else
                    bY0 = 125
                    continue
                end
            elseif bY0_1 < 877 then
                if bY0_1 < 136 then
                    if bY0_1 == 135 then
                        task.wait(gY)
                        bY0 = 48
                    else
                        bY0 = 105
                        continue
                    end
                elseif bY0_1 < 137 then
                    if bY0_1 == 136 then
                        bY0 = if bYV then 12 else 42
                    else
                        bY0 = 98
                        continue
                    end
                elseif bY0_1 == 137 then
                    bYQ = fns.dwb_4()
                    bY0 = if not bYQ then 51 else 78
                else
                    break
                end
            else
                break
            end
        end
    end
end
fns.dwb_137 = function(hN, hO, hP)
    local bZa, bZd
    if typeof(hN) ~= "Vector3" then
        return false
    end
    bZa = fns.dwb_147.runs[coroutine.running()]
    bZd = hP
    hP = function()
        local bY7 = not fns.dwb_118()
        if not bY7 then
            local bY8_1 = bZa and not fns.dwb_147.controllerValid(bZa.controller)
            bY7 = bY8_1
        end
        if not bY7 then
            local bY8_2 = bZd and bZd()
            bY7 = bY8_2
        end
        return bY7
    end
    if hP() then
        return false
    end
    fns.dwb_130()
    fns.dwb_16()
    local token2 = bSE.token
    local bZf = not fns.dwb_17(15)
    local bZl = if bZf then 1 else 0
    local bZj = 1020 * bZl + 4050 * (1 - bZl)
    local bZk = 3379 * bZl + 1803 * (1 - bZl)
    if not ((bZj * 3398 + bZk * 3663 + bZj * bZk) % 16777213 == 2512604) then
        bZf = hP()
    end
    local bZl_1 = if bZf then 1 else 0
    local bZj_1 = 2724 * bZl_1 + 1110 * (1 - bZl_1)
    local bZk_1 = 3521 * bZl_1 + 2529 * (1 - bZl_1)
    if not ((bZj_1 * 495 + bZk_1 * 2393 + bZj_1 * bZk_1) % 16777213 == 2588124) then
        bZf = bSE.token ~= token2
    end
    if bZf then
        return false
    end
    local bZf_1 = fns.dwb_4()
    if not bZf_1 then
        return false
    elseif (hN - bZf_1.Position).Magnitude <= fns.dwb_11.ARRIVE_RADIUS then
        if hO then
            task.wait(hO)
        end
        local bZf_2 = not hP() and bSE.token == token2
        return bZf_2
    else
        bSE.token = bSE.token + 1
        local token = bSE.token
        local bZf_3 = CFrame.new(hN)
        fns.dwb_13(true)
        local bZb = fns.dwb_104()
        if bZb then
            pcall(function()
                bZb:ChangeState(Enum.HumanoidStateType.Freefall)
            end)
        end
        local bZg = os.clock() + fns.dwb_11.BLINK_HOLD
        local bZc
        while bSE.token == token do
            bZc = fns.dwb_4()
            if not bZc then
                if bSE.token ~= token then
                    return false
                end
                fns.dwb_13(false)
                if hO then
                    task.wait(hO)
                end
                bZc = fns.dwb_4()
                local bZf_4 = not hP() and bSE.token == token and bZc ~= nil and (bZc.Position - hN).Magnitude < 25
                return bZf_4
            end
            if bZc.Anchored then
                pcall(function()
                    bZc.Anchored = false
                end)
            end
            bZc.CFrame = bZf_3
            bZc.AssemblyLinearVelocity = Vector3.zero
            bZc.AssemblyAngularVelocity = Vector3.zero
            task.wait()
            local bZh = os.clock() >= bZg or hP()
            if bZh then
                if bSE.token ~= token then
                    return false
                end
                fns.dwb_13(false)
                if hO then
                    task.wait(hO)
                end
                bZc = fns.dwb_4()
                local bZf_5 = not hP() and bSE.token == token and bZc ~= nil and (bZc.Position - hN).Magnitude < 25
                return bZf_5
            end
        end
        return false
    end
end
bRD = fns.fn7504
bSQ = fns.fn3186
bR5 = function(iJ)
    local RequiresLineOfSight
    local HoldDuration
    local bZw = fns.dwb_147.runs[coroutine.running()]
    local bZx = not fns.dwb_118()
    if not bZx then
        local bZy = bZw and not fns.dwb_147.controllerValid(bZw.controller)
        bZx = bZy
    end
    if bZx then
        return false
    end
    local bZw_1 = typeof(iJ) ~= "Instance" or not iJ:IsA("ProximityPrompt")
    if bZw_1 then
        return false
    elseif not bQG(fireproximityprompt) then
        fns.dwb_71("fireproximityprompt")
        return false
    else
        HoldDuration = iJ.HoldDuration
        RequiresLineOfSight = iJ.RequiresLineOfSight
        pcall(function()
            iJ.HoldDuration = 0
            iJ.RequiresLineOfSight = false
        end)
        local bZw_2 = pcall(fireproximityprompt, iJ)
        pcall(function()
            iJ.HoldDuration = HoldDuration
            iJ.RequiresLineOfSight = RequiresLineOfSight
        end)
        return bZw_2
    end
end
fns.dwb_11.MOB_NAMES = {
    "Akazo",
    "Bandit",
    "Bear Cub",
    "Beast Born Demon",
    "Blood Hounded Demon",
    "Cache Lancer",
    "Cache Prowler",
    "Datai",
    "Domae",
    "Enru",
    "Fire Profound Demon",
    "Flame Trainee",
    "Fujiko",
    "Giyen",
    "Greater Demon",
    "Grove Raider",
    "Gyorei",
    "Gyutai",
    "High Demon",
    "Hoyuzo",
    "Hoyuzo Subordinate",
    "Ice Profound Demon",
    "Insect Trainee",
    "Kaiden",
    "Kaiden Subordinate",
    "Kanoe Demon Slayer",
    "Lancer Captain",
    "Lesser Demon",
    "Mizunoe Demon Slayer",
    "Mizunoto",
    "Mother Bear",
    "Nezura",
    "Prowler Captain",
    "Raid Captain",
    "Reaper",
    "Reaper Trainee Kuzan",
    "Rengu",
    "Saneri",
    "Serpent Trainee",
    "Shinora",
    "Soryu Trainee Goki",
    "Sound Trainee",
    "Stone Trainee",
    "Sumari",
    "Tai Chi Trainee Suzume",
    "Tengai",
    "Thunder Trainee",
    "Water Trainee Sabito",
    "Wind Trainee",
    "Yahari",
    "Zentaro",
    "Zuko"
}
fns.dwb_11.BOSS_NAMES = {
    "Akazo",
    "Datai",
    "Domae",
    "Enru",
    "Flame Trainee",
    "Fujiko",
    "Giyen",
    "Gyorei",
    "Gyutai",
    "Hoyuzo",
    "Insect Trainee",
    "Kaiden",
    "Mother Bear",
    "Nezura",
    "Obari",
    "Reaper",
    "Reaper Trainee Kuzan",
    "Rengu",
    "Saneri",
    "Serpent Trainee",
    "Shinora",
    "Sound Trainee",
    "Soryu Trainee Goki",
    "Stone Trainee",
    "Sumari",
    "Tai Chi Trainee Suzume",
    "Tengai",
    "Thunder Trainee",
    "Water Trainee Sabito",
    "Wind Trainee",
    "Yahari",
    "Yeti Demon",
    "Zentaro",
    "Zuko"
}
fns.dwb_11.BOSS_POINTS = {
    Akazo = Vector3.new(-1131.97, 1380.92, -1746.56),
    Datai = Vector3.new(-165.5, 1043, -1137.5),
    Domae = Vector3.new(-296.47, 1350.5, -3451.27),
    Enru = Vector3.new(821.78, 800, 543.9),
    ["Flame Trainee"] = Vector3.new(-1128.9, 1029.05, 994.42),
    Fujiko = Vector3.new(-2459.53, 37.87, 1119),
    Giyen = Vector3.new(388.87, 1018, -85.06),
    Gyorei = Vector3.new(2574.57, 1089, -742.43),
    Gyutai = Vector3.new(-266.12, 1043.24, -1139.73),
    Hoyuzo = Vector3.new(746.88, 1001, -1413),
    ["Insect Trainee"] = Vector3.new(-1395.64, 261.5, 69.22),
    Kaiden = Vector3.new(585.71, 1146.55, -1314.89),
    ["Mother Bear"] = Vector3.new(540.5, 1121, -1023.5),
    Nezura = Vector3.new(-1459.53, 275.95, 935.54),
    Obari = Vector3.new(770.52, 1121, -1047.04),
    Reaper = Vector3.new(98.47, 1043, -573.91),
    ["Reaper Trainee Kuzan"] = Vector3.new(-1219.26, 1373.62, -3034.39),
    Rengu = Vector3.new(-712.9, 965, 883.8),
    Saneri = Vector3.new(-379.11, 1093.53, -422.42),
    ["Serpent Trainee"] = Vector3.new(-271.38, 1292, -1535.71),
    Shinora = Vector3.new(-452.65, 964.5, 2.12),
    ["Sound Trainee"] = Vector3.new(192.5, 1349, -2581.31),
    ["Soryu Trainee Goki"] = Vector3.new(-426.98, 288.81, 543.27),
    ["Stone Trainee"] = Vector3.new(2685.18, 1073.6, -568.75),
    Sumari = Vector3.new(396.44, 1018, -620.4),
    ["Tai Chi Trainee Suzume"] = Vector3.new(2360.47, 601.99, -642.31),
    Tengai = Vector3.new(-133.51, 1349, -2631.34),
    ["Thunder Trainee"] = Vector3.new(2425.51, 1073.63, -556.79),
    ["Water Trainee Sabito"] = Vector3.new(815.35, 1018.88, 101.6),
    ["Wind Trainee"] = Vector3.new(-941.57, 1381, -2635.57),
    Yahari = Vector3.new(825.68, 1019.2, -641.34),
    Zentaro = Vector3.new(1332.09, 821.5, -1017.64),
    Zuko = Vector3.new(-296.7, 1224.2, -1022.2)
}
fns.dwb_11.BOSS_WAIT_POINTS = { Hoyuzo = Vector3.new(759, 1004, -1404) }
fns.dwb_11.BOSS_SUMMONS = {
    ["Yeti Demon"] = {
        point = Vector3.new(-1381.88, -32.83, 502.63),
        path = { "Map", "Map", "FrozenYeti" },
        item = "Frozen Heart"
    }
}
fns.dwb_11.BOSS_GUARDS = { ["Yeti Demon"] = { ["Small Yeti"] = true } }
fns.dwb_11.BOSS_GUARD_RANGE = 300
fns.dwb_11.MUZAN_ROUTES = {
    Vector3.new(55, 826.5, 781.5),
    Vector3.new(197.17, 871.43, 812.23),
    Vector3.new(256.15, 873, 762.66),
    Vector3.new(187.55, 914.81, 558.31),
    Vector3.new(237.78, 940.5, 389.59),
    Vector3.new(141.59, 963.5, 222.74),
    Vector3.new(232.73, 963.5, 266.96),
    Vector3.new(181, 932.69, 525.38),
    Vector3.new(183.6, 873, 714.73),
    Vector3.new(136.4, 837.79, 808.69),
    Vector3.new(1920.59, 599.05, -880.99),
    Vector3.new(1763.05, 599.05, -634.51),
    Vector3.new(1771.65, 599.05, -425.79),
    Vector3.new(1813.01, 599.05, -253.77),
    Vector3.new(1667.85, 599.05, -92.68),
    Vector3.new(1811.84, 599.05, -244.01),
    Vector3.new(1772.15, 599.05, -452.46),
    Vector3.new(1818.57, 599.04, -724.23),
    Vector3.new(-687, 1380.5, -2606.5),
    Vector3.new(-476.99, 1348.5, -2600.11),
    Vector3.new(-392.31, 1348.5, -2794.09),
    Vector3.new(-413.61, 1380.5, -2992.61),
    Vector3.new(-458.25, 1374.99, -3235.7),
    Vector3.new(-398.71, 1350, -3438.52),
    Vector3.new(-193.5, 1350, -3422),
    Vector3.new(-182.93, 1380.5, -3188),
    Vector3.new(-171.7, 1380.5, -2900.49),
    Vector3.new(-163.59, 1348.5, -2701.99),
    Vector3.new(-268.36, 1350.54, -2551.99),
    Vector3.new(-499.37, 1352.74, -2594.49)
}
fns.dwb_11.MUZAN_LAIR = Vector3.new(2466.3, 1079.33, 2334.51)
fns.dwb_11.CHEST_TIERS = { "T1", "T2", "T3" }
fns.dwb_11.HUNT_TIERS = { "Common", "UnCommon", "Rare", "Epic", "Legendary", "Mythic" }
fns.dwb_11.CHEST_GUARD_RANGE = 220
fns.dwb_11.SLOT_NAMES = { "One", "Two", "Three", "Four", "Five" }
fns.dwb_11.RUN_HEARTS = 3
fns.dwb_11.CARD_NAMES = {
    "AscendClan",
    "Clan",
    "Event",
    "ExtraLife",
    "Forge",
    "Fortune",
    "Heal",
    "Points",
    "Potion",
    "Reroll",
    "Revive",
    "Skill",
    "SkillSwap",
    "Skip",
    "SkipFloor",
    "Stat",
    "SwapMap",
    "Trade",
    "Weapon"
}
fns.dwb_11.BARE_HANDS_CARD = "BareHands"
fns.dwb_11.EVENT_NAMES = { "BareHands" }
fns.dwb_11.HEAL_CARDS = { Heal = true }
fns.dwb_11.BREATHINGS = { "Flame", "Insect", "Serpent", "Sound", "Stone", "Thunder", "Water", "Wind" }
fns.dwb_11.CODE_MOBS = {
    KaruVillageBandit = "Bandit",
    VillageSpy = "*Civilian*",
    HoyuzoSub = "Hoyuzo Subordinate",
    KaidenSub = "Kaiden Subordinate",
    ReaperTrainee = "Reaper Trainee Kuzan",
    SoryuTrainee = "Soryu Trainee Goki",
    TaiChiTrainee = "Tai Chi Trainee Suzume",
    WaterTrainee = "Water Trainee Sabito"
}
fns.dwb_11.TRAINING_NAMES = { "Boulder Push", "Boulder Split", "Cup Game", "Meditation", "Pushups", "Squat", "Target Shooting" }
fns.dwb_11.TRAINING_TIMEOUT = 180
fns.dwb_11.TRAINING_CODES = {
    Meditation = true,
    Pushups = true,
    Squat = true,
    ["Boulder Push"] = true,
    ["Boulder Split"] = true,
    ["Target Shooting"] = true,
    ["Cup Game"] = true,
    ["Parkour Dungeon"] = true
}
bQF = fns.fn5605
fns.dwb_108 = fns.fn4095
bRF = fns.fn4683
fns.dwb_44 = fns.fn6436
fns.dwb_11.PASSIVE_MOBS = { Civilian = true, ["*Civilian*"] = true }
bRH = fns.fn561
bSr = {}
fns.dwb_47 = fns.fn6995
bTH = fns.fn494
bSD = fns.fn1050
fns.dwb_41 = fns.fn967
bRx = function(kr)
    local b0e = bRH(function(kt)
        return kt.name == kr
    end)
    if b0e then
        return b0e.model:GetPivot().Position, b0e
    end
    local b0e_1 = (bTH(kr)) or fns.dwb_41(kr)
    return b0e_1, nil
end
fns.dwb_88 = fns.fn3392
fns.dwb_129 = fns.fn6691
if ((fns.dwb_42 or not fns.dwb_50) and (not fns.dwb_50 and bSQ) or not fns.dwb_44 and fns.dwb_50 and (fns.dwb_42 or fns.dwb_42)) and not ((fns.dwb_42 or not fns.dwb_50) and (not fns.dwb_50 and bSQ) or not fns.dwb_44 and fns.dwb_50 and (fns.dwb_42 or fns.dwb_42)) then
    fns.dwb_6 = fns.fn7374
    bQQ = fns.fn6142
    bQs = fns.fn5434
else
    bQQ = fns.fn7374
    bQs = fns.fn6142
    fns.dwb_6 = fns.fn5434
end
fns.dwb_96 = fns.fn1272
fns.dwb_38 = fns.fn3347
fns.bSv = fns.fn6083
bQe.holdingWeapon = fns.fn5298
fns.dwb_65 = fns.fn7682
fns.dwb_70 = fns.fn3021
fns.dwb_50 = fns.fn725
fns.dwb_52 = fns.fn2681
fns.dwb_110 = fns.fn4262
fns.dwb_21 = fns.fn58
fns.dwb_117 = fns.fn269
bRU = fns.fn2456
fns.dwb_62 = fns.fn2367
fns.dwb_56 = function(m_, m0)
    local b2g = fns.bSv()
    m_ = tonumber(m_)
    if not b2g or not m_ or m_ < 0 or m_ > #fns.dwb_11.SLOT_NAMES then
        return false
    elseif b2g.Value == m_ then
        if m0 then
            bQR("Item_Equip", m_)
        end
        return true
    else
        return (pcall(function()
            b2g.Value = m_
        end))
    end
end
fns.dwb_42 = fns.fn285
bQe.holdItem = function(nd)
    if fns.dwb_42(nd, true) then
        return true
    end
    local b2m = fns.dwb_50(nd)
    local b2n = fns.dwb_82()
    local b2o = b2n and b2n:FindFirstChild("Inventory")
    local b2n_1 = b2o
    if b2o then
        b2o = b2n_1:FindFirstChild("Toolbar")
    end
    local b2n_2 = b2o
    local b2o_1 = not b2n_2
    local b2p = not b2m
    local b2u = if b2p then 1 else 0
    local b2s = 166 * b2u + 920 * (1 - b2u)
    local b2t = 1087 * b2u + 2842 * (1 - b2u)
    if not ((b2s * 1441 + b2t * 2423 + b2s * b2t) % 16777213 == 3053449) then
        b2p = b2o_1
    end
    if b2p then
        return false
    end
    local b2o_2 = nil
    for i, v in ipairs(fns.dwb_11.SLOT_NAMES) do
        local b2p_1 = b2n_2:FindFirstChild(v)
        local b2q = b2p_1 and tonumber(b2p_1.Value) == 0
        if b2q then
            b2o_2 = v
            break
        end
    end
    local b2n_3 = b2o_2 or fns.dwb_11.SLOT_NAMES[#fns.dwb_11.SLOT_NAMES]
    bQR("Toolbar_Equip", b2n_3, b2m)
    bRD(function()
        return fns.dwb_62(nd) ~= nil
    end, 4)
    return fns.dwb_42(nd, true)
end
function fns.dwb_156_3()
    local b2B = fns.bSv()
    local b2C = b2B and tonumber(b2B.Value)
    local b2D = b2C
    if b2C then
        b2C = b2D > #fns.dwb_11.SLOT_NAMES
    end
    if b2C then
        pcall(function()
            b2B.Value = 0
        end)
        return true
    end
    return false
end
fns.dwb_57 = 0
bQu = fns.fn4455
if (bQv and not fns.dwb_38 or (not fns.dwb_42 or bQv)) and ((fns.dwb_38 or not fns.dwb_147) and (not fns.dwb_38 or not fns.dwb_42)) and not ((bQv and not fns.dwb_38 or (not fns.dwb_42 or bQv)) and ((fns.dwb_38 or not fns.dwb_147) and (not fns.dwb_38 or not fns.dwb_42))) then
    fns.dwb_133.resolvePunch = fns.fn664
    fns.dwb_133.stamp = fns.fn3053
    fns.dwb_133.timing = fns.fn4065
    fns.dwb_133.shcSince = nil
    fns.dwb_133.skillState = fns.fn7623
    fns.dwb_133.ready = fns.fn6115
    fns.dwb_147 = {
        count = 0,
        cooldowns = {},
        skillsAt = 0,
        stall = nil,
        active = nil,
        lastClan = false,
        skills = nil,
        stallUntil = 0,
        clan = { at = 0, count = 0, cache = nil }
    }
else
    fns.dwb_147.resolvePunch = fns.fn664
    fns.dwb_147.stamp = fns.fn3053
    fns.dwb_147.timing = fns.fn4065
    fns.dwb_147.shcSince = nil
    fns.dwb_147.skillState = fns.fn7623
    fns.dwb_147.ready = fns.fn6115
    fns.dwb_133 = {
        active = nil,
        cooldowns = {},
        skills = nil,
        skillsAt = 0,
        count = 0,
        stall = nil,
        stallUntil = 0,
        lastClan = false,
        clan = { cache = nil, at = 0, count = 0 }
    }
end
fns.dwb_11.CLAN_REFRESH = 2
fns.dwb_11.CAST_GRACE = 6
fns.dwb_11.CAST_MIN_GAP = 0.2
fns.dwb_11.REFUSAL_GAP = 0.35
fns.dwb_11.PARRY_GAP = 0.1
fns.dwb_11.LOCKOUT_TAGS = { "Stun", "CombatStun", "Strict_Stun", "KnockedOut", "Swapping", "combatdisabled" }
fns.dwb_146 = fns.fn6263
fns.dwb_141 = fns.fn4444
fns.dwb_114 = fns.fn640
fns.dwb_112 = fns.fn6906
fns.dwb_133.remaining = fns.fn7016
fns.dwb_133.backoff = fns.fn4481
fns.dwb_133.say = fns.fn6679
fns.dwb_133.enabled = fns.fn1170
fns.dwb_133.held = fns.fn3261
fns.dwb_133.owns = fns.fn1920
fns.dwb_133.retire = fns.fn2715
fns.dwb_133.release = function(qb)
    if not qb or qb.releasing or not qb.returned then
        return
    end
    qb.releasing = true
    task.spawn(function()
        local b4F = 1
        while b4F <= 3 do
            if not fns.dwb_133.owns(qb) then
                break
            end
            if bQG(fns.dwb_26.SkillRunner.StopHold) then
                bQe.asGameScript(fns.dwb_26.SkillRunner.StopHold, qb.name)
            end
            if not fns.dwb_133.owns(qb) then
                break
            end
            if bQG(fns.dwb_26.SkillRunner.ForceCancel) then
                bQe.asGameScript(fns.dwb_26.SkillRunner.ForceCancel, qb.name)
            end
            if not fns.dwb_133.owns(qb) then
                break
            end
            task.wait(0.1)
            b4F += 1
        end
        if fns.dwb_133.owns(qb) then
            qb.releaseFailed = true
            if fns.dwb_118() then
                fns.dwb_133.say(qb, "Skill release unresolved")
            end
            return
        end
        local b4B = fns.dwb_123.SkillWork.entry == qb and fns.dwb_99() == qb.character and fns.dwb_26.SkillRunner.HeldSkill == qb.name and qb.shc and qb.shc:GetAttribute("last_performed") == qb.stamp
        if b4B then
            fns.dwb_26.SkillRunner.HeldSkill = nil
            fns.dwb_26.SkillRunner.CurrentMax = nil
        end
        fns.dwb_133.retire(qb)
    end)
end
fns.dwb_133.claim = fns.fn941
fns.dwb_133.refused = fns.fn7049
fns.dwb_133.valid = fns.fn2380
fns.dwb_133.begin = function(qY, qZ, q_, q0)
    local b5j
    b5j = nil
    local b5h, b5i
    local b5k = fns.dwb_123.SkillWork.entry or not q_ or not q_.valid()
    if b5k then
        return false
    end
    local b5l = q0 == true and "ClanSkillStatus"
    local b5t = if b5l then 1 else 0
    local b5r = 3682 * b5t + 1147 * (1 - b5t)
    local b5s = 2016 * b5t + 1284 * (1 - b5t)
    if not ((b5r * 3018 + b5s * 3728 + b5r * b5s) % 16777213 == 9273623) then
        b5l = "AutoSkillStatus"
    end
    b5h = b5l
    local b5k_2 = fns.dwb_123.ParryReservedUntil and os.clock() < fns.dwb_123.ParryReservedUntil
    if b5k_2 or fns.dwb_123.BlockWork.entry then
        bSs[b5h] = "Holding off for auto parry"
        return false
    end
    local b5k_3 = type(fns.dwb_26.SkillRunner) ~= "table" or not bQG(fns.dwb_26.SkillRunner.Attempt_Hold)
    if b5k_3 then
        bSs[b5h] = "Skill controller unavailable"
        return false
    end
    local b5k_4 = fns.dwb_146(qY)
    local b5l_2 = fns.dwb_99()
    local b5m = q0 == true
    local b5n = os.clock()
    local b5p = b5k_4 and b5k_4.Max_Hold_Time
    local b5k_5 = (tonumber(b5p)) or 0
    b5j = {
        name = qY,
        hold = qZ,
        session = q_,
        character = b5l_2,
        clan = b5m,
        expires = b5n + math.max(qZ, b5k_5) + fns.dwb_11.CAST_GRACE
    }
    local b5k_6 = b5j.character and b5j.character:FindFirstChild("SHC")
    local b5l_3 = b5k_6
    if b5k_6 then
        b5k_6 = b5l_3:GetAttribute("last_performed")
    end
    b5j.before = b5k_6
    fns.dwb_133.active, fns.dwb_123.SkillWork.entry = b5j, b5j
    bSs[b5h] = "Casting " .. qY
    b5i = function()
        if b5j.shc then
            return
        end
        local b40 = b5j.character and b5j.character:FindFirstChild("SHC")
        local b41 = b40
        if b40 then
            b40 = b41:GetAttribute("last_performed")
        end
        local b42 = b41
        local b43 = b40
        if b42 then
            b42 = b41.Value == qY
        end
        if b42 then
            b42 = b43 ~= b5j.before
        end
        if b42 then
            b5j.shc, b5j.stamp = b41, b43
        end
    end
    task.spawn(function()
        local b5a_1
        local b49_1
        if not fns.dwb_133.valid(b5j) then
            fns.dwb_133.retire(b5j)
            return
        end
        local b45 = fns.dwb_123.ParryReservedUntil and os.clock() < fns.dwb_123.ParryReservedUntil
        local b45_1
        local b46 = b45 or fns.dwb_123.BlockWork.entry
        local b46_1
        if b46 then
            bSs[b5h] = "Holding off for auto parry"
            fns.dwb_133.retire(b5j)
            return
        end
        b45_1, b46_1 = bQe.asGameScript(fns.dwb_26.SkillRunner.Attempt_Hold, qY, "")
        b5j.returned = true
        b5i()
        if not fns.dwb_133.valid(b5j) then
            fns.dwb_133.release(b5j)
            return
        end
        if not b45_1 or b46_1 ~= true then
            local b47_1 = nil
            if not b45_1 then
                b49_1, b5a_1 = "Cast error: " .. tostring(b46_1), 1
            else
                b49_1, b5a_1, b47_1 = fns.dwb_133.refused(qY)
            end
            bSs[b5h] = b49_1
            local backoff = fns.dwb_133.backoff
            local b46_2 = not b47_1
            if b46_2 ~= false then
                b46_2 = b49_1
            end
            local b47_2 = b46_2 or nil
            backoff(qY, b5a_1, b47_2, b5j.clan)
            fns.dwb_133.release(b5j)
            return
        end
        if b5j.clan then
            local clan = fns.dwb_133.clan
            clan.count = clan.count + 1
        else
            local dXM = fns.dwb_133
            dXM.count = dXM.count + 1
        end
        fns.dwb_133.backoff(qY, math.max(fns.dwb_133.remaining(qY), fns.dwb_11.CAST_MIN_GAP))
        if not fns.dwb_133.owns(b5j) then
            fns.dwb_133.retire(b5j)
            return
        end
        if not fns.dwb_133.claim(b5j) then
            fns.dwb_133.release(b5j)
            return
        end
        bSs[b5h] = "Holding " .. qY
        local b45_3 = os.clock() + qZ
        while true do
            local b46_3 = os.clock() < b45_3 and fns.dwb_133.valid(b5j) and fns.dwb_133.owns(b5j)
            if b46_3 then
                task.wait(0.05)
                continue
            end
            break
        end
        fns.dwb_133.release(b5j)
    end)
    b5i()
    task.spawn(function()
        while true do
            local b5f = fns.dwb_123.SkillWork.entry == b5j and os.clock() < b5j.expires
            if b5f then
                if not fns.dwb_133.valid(b5j) then
                    b5j.cancelled = true
                    fns.dwb_133.release(b5j)
                end
                task.wait(0.05)
                continue
            end
            break
        end
        if fns.dwb_123.SkillWork.entry == b5j then
            b5j.cancelled = true
            fns.dwb_133.release(b5j)
            if fns.dwb_118() then
                bSs[b5h] = "Waiting for unresolved skill " .. qY
            end
        end
    end)
    return true
end
fns.dwb_133.busy = fns.fn4559
fns.dwb_133.reset = fns.fn7593
fns.dwb_147.cancelSkill = fns.fn6300
fns.dwb_123.Track(fns.dwb_133.reset)
fns.dwb_133.settled = fns.fn3761
fns.dwb_133.idleText = fns.fn1853
fns.dwb_133.clanList = fns.fn5750
fns.dwb_133.clanUsable = function(sz)
    local b6k_1, b6k_2, b6k_3
    if type(fns.dwb_26.SkillsProvider) ~= "table" then
        return true
    end
    local function b6i()
        local b6e_1
        local b6d_1
        if not bQG(fns.dwb_26.SkillsProvider.IsHeld) then
            return false
        end
        b6d_1, b6e_1 = fns.dwb_144(fns.dwb_26.SkillsProvider.IsHeld, sz.name)
        return b6d_1 and b6e_1 == true
    end
    local b6j = sz.mode and bQG(fns.dwb_26.SkillsProvider.ModeBarFull)
    local b6j_1, b6j_4, b6j_6, b6j_7, b6j_8
    if b6j then
        b6j_1, b6k_1 = fns.dwb_144(fns.dwb_26.SkillsProvider.ModeBarFull)
        local b6l_1 = b6k_1 ~= true
        local b6m_1 = not b6j_1
        local b6q = if b6m_1 then 1 else 0
        local b6o = 838 * b6q + 736 * (1 - b6q)
        local b6p = 3515 * b6q + 2414 * (1 - b6q)
        if not ((b6o * 2395 + b6p * 650 + b6o * b6p) % 16777213 == 7237330) then
            b6m_1 = b6l_1
        end
        local b6j_2 = b6m_1 and not b6i()
        if b6j_2 then
            return false, "Mode bar not full"
        end
        local b6j_3 = sz.aura and bQG(fns.dwb_26.SkillsProvider.AuraActive)
        if b6j_6 then
            b6j_4, b6k_2 = fns.dwb_144(fns.dwb_26.SkillsProvider.AuraActive, sz.aura)
            local b6m_2 = not b6j_4 or b6k_2 ~= true
            local b6j_5 = b6m_2 and not b6i()
            if b6j_8 then
                return false, sz.aura .. " not active"
            end
            return true
        end
        return true
    end
    b6j_6 = sz.aura and bQG(fns.dwb_26.SkillsProvider.AuraActive)
    if b6j_6 then
        b6j_7, b6k_3 = fns.dwb_144(fns.dwb_26.SkillsProvider.AuraActive, sz.aura)
        local b6m_3 = not b6j_7 or b6k_3 ~= true
        b6j_8 = b6m_3 and not b6i()
        if b6j_8 then
            return false, sz.aura .. " not active"
        end
        return true
    end
    return true
end
fns.dwb_133.clanWanted = fns.fn2036
fns.dwb_133.clanStep = fns.fn5232
fns.dwb_133.clanFallback = fns.fn615
fns.dwb_133.step = fns.fn1281
connection2 = nil
connection2 = LocalPlayer.CharacterAdded:Connect(fns.onCharacterAdded)
fns.dwb_123.Track(fns.fn2302)
fns.dwb_135, fns.dwb_142, bQg, bP2, fns.dwb_122, bSH, fns.dwb_31, bTe, fns.dwb_140, fns.dwb_132, fns.dwb_9, bS2, fns.dwb_27, bS4, fns.dwb_128, fns.dwb_94, bSh, bQ2, fns.dwb_48, fns.dwb_79, fns.dwb_124, bTM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
bQg = fns.fn6
bP2 = function(tK, tL, tM, tN, tO)
    local b7p, b7q, Humanoid
    local b7t_4
    local b7s = not fns.dwb_147.controllerValid(tN) or bQg()
    local b7s_5
    if not b7s then
        local b7t_1 = tO and tO()
        b7s = b7t_1
    end
    if b7s then
        return false
    end
    local b7s_1 = typeof(tK) ~= "Instance" or not tK:IsDescendantOf(bSf)
    if b7s_1 then
        return false
    end
    Humanoid = tK:FindFirstChildOfClass("Humanoid")
    if not Humanoid or Humanoid.Health <= 0 then
        return false
    end
    local b7s_3 = tN and tN.generation
    local b7t_2 = tN
    if b7t_2 then
        b7t_2 = tN.cancel or 0
    end
    b7p = {
        controller = tN,
        generation = b7s_3,
        cancel = b7t_2,
        character = fns.dwb_99(),
        stopped = false,
        nextPunch = 0,
        nextWeapon = 0,
        lastSwing = os.clock(),
        lastDamage = os.clock(),
        stamp = fns.dwb_147.stamp(),
        health = Humanoid.Health
    }
    b7p.valid = function()
        local b62 = (fns.dwb_118()) and fns.dwb_147.session == b7p and not b7p.stopped and fns.dwb_99() == b7p.character and bR3() and not bQg()
        if b62 then
            local b63_1 = tO and tO()
            b62 = not b63_1
        end
        if b62 then
            b62 = tK:IsDescendantOf(bSf)
        end
        if b62 then
            b62 = Humanoid.Health > 0
        end
        if b62 then
            local b63_2 = not tN
            local b69 = if b63_2 then 1 else 0
            local b67 = 2012 * b69 + 1613 * (1 - b69)
            local b68 = 694 * b69 + 427 * (1 - b69)
            if not ((b67 * 1995 + b68 * 86 + b67 * b68) % 16777213 == 5469952) then
                local b64 = not tN.stopped and not tN.yield and tN.generation == b7p.generation
                if b64 then
                    local b65 = tN.cancel
                    local b7c = if b65 then 1 else 0
                    local b7a = 2778 * b7c + 1688 * (1 - b7c)
                    local b7b = 181 * b7c + 396 * (1 - b7c)
                    if not ((b7a * 2565 + b7b * 21 + b7a * b7b) % 16777213 == 7632189) then
                        b65 = 0
                    end
                    b64 = b65 == b7p.cancel
                end
                b63_2 = b64
            end
            b62 = b63_2
        end
        return b62
    end
    fns.dwb_147.stop()
    fns.dwb_147.session = b7p
    local b7s_4 = os.clock()
    b7q = b7s_4 + (tL or 90)
    b7s_5, b7t_4 = pcall(function()
        local b7j_3, b7j_4, b7j_5
        local b7i_3, b7i_4, b7i_5
        local b7h_3, b7h_4, b7h_6, b7h_7, b7h_9, b7h_10, b7h_11
        local b7g_2, b7g_3, b7g_5, b7g_8, b7g_10, b7g_11
        while true do
            local b7d = (b7p.valid()) and os.clock() < b7q
            if b7d then
                local b7d_1 = (tK:FindFirstChild("HumanoidRootPart")) or tK.PrimaryPart or tK:FindFirstChildWhichIsA("BasePart")
                local b7d_2 = not b7d_1 or not b7d_1:IsDescendantOf(bSf) or not bQZ(b7d_1, b7p)
                if b7d_2 then
                    bSs[tM] = "Cannot position for combat"
                    break
                end
                local b7d_3 = os.clock()
                local b7f = fns.dwb_147.stamp()
                local b7f_3, b7f_4, b7f_17, b7f_18, Combat
                if b7f ~= b7p.stamp then
                    b7p.stamp, b7p.lastSwing = b7f, b7d_3
                    b7p.inputError = nil
                end
                if Humanoid.Health < b7p.health then
                    b7p.lastDamage = b7d_3
                end
                b7p.health = Humanoid.Health
                local b7f_1 = fns.dwb_133.step(b7p)
                if not b7p.valid() then
                    break
                elseif b7f_1 then
                    bQv(b7p)
                    b7p.lastSwing, b7p.lastDamage = b7d_3, b7d_3
                    bSs[tM] = fns.dwb_133.lastClan and bSs.ClanSkillStatus or bSs.AutoSkillStatus
                    local b7d_4 = 0.05
                    if b7p.nextPunch > os.clock() then
                        b7d_4 = math.min(b7d_4, b7p.nextPunch - os.clock())
                    end
                    task.wait(math.max(0, b7d_4))
                    continue
                else
                    b7f_3, b7g_2 = fns.dwb_147.ready()
                    if not b7f_3 then
                        bQv(b7p)
                        b7p.lastSwing, b7p.lastDamage = b7d_3, b7d_3
                        bSs[tM] = b7g_2
                        local b7d_5 = 0.05
                        if b7p.nextPunch > os.clock() then
                            b7d_5 = math.min(b7d_5, b7p.nextPunch - os.clock())
                        end
                        task.wait(math.max(0, b7d_5))
                        continue
                    elseif b7d_3 >= b7p.nextWeapon then
                        b7p.nextWeapon = b7d_3 + 1
                        local weapon = bQ4.weapon
                        local toolBlocked = bQe.toolBlocked
                        local b7k = weapon ~= "" and weapon or nil
                        local b7i_2 = not toolBlocked(b7k)
                        if b7i_2 then
                            local b7j_2 = not bQe.holdingWeapon()
                            if not b7j_2 then
                                local b7k_1 = weapon ~= "" and fns.dwb_38() ~= weapon
                                b7j_2 = b7k_1
                            end
                            b7i_2 = b7j_2
                        end
                        if b7i_2 then
                            bQv(b7p)
                            bQu()
                            b7p.timing = nil
                            if not b7p.valid() then
                                break
                            end
                            b7f_4, b7g_3 = fns.dwb_147.ready()
                            b7j_3, b7i_3, b7h_3 = fns.dwb_147.timing(b7p)
                            if not b7f_3 then
                                bQv(b7p)
                                bSs[tM] = b7g_3
                                local b7d_6 = 0.05
                                if b7p.nextPunch > os.clock() then
                                    b7d_6 = math.min(b7d_6, b7p.nextPunch - os.clock())
                                end
                                task.wait(math.max(0, b7d_6))
                                continue
                            elseif not b7j_5 then
                                bQv(b7p)
                                bSs[tM] = b7h_3
                                local b7d_7 = 0.05
                                if b7p.nextPunch > os.clock() then
                                    b7d_7 = math.min(b7d_7, b7p.nextPunch - os.clock())
                                end
                                task.wait(math.max(0, b7d_7))
                                continue
                            else
                                local b7f_5 = fns.dwb_147.resolvePunch()
                                if not b7p.valid() then
                                    break
                                elseif b7f_17 then
                                    bQv(b7p)
                                    local b7g_4 = not fns.dwb_147.inputs.Combat and os.clock() >= b7p.nextPunch
                                    if b7g_10 then
                                        b7g_5, b7h_4 = pcall(b7f_5)
                                        if not b7p.valid() then
                                            break
                                        end
                                        if not b7g_11 then
                                            fns.dwb_147.punch = nil
                                            fns.dwb_147.resolveAt = os.clock() + 5
                                            b7p.nextPunch = os.clock() + b7j_3 + b7i_3
                                            b7p.inputError = "Native punch failed: " .. tostring(b7h_4)
                                        else
                                            if b7f_18 then
                                                b7p.nextPunch = os.clock() + b7h_4
                                                b7p.inputError = nil
                                            else
                                                b7p.nextPunch = os.clock() + 0.15
                                            end
                                        end
                                        if b7p.inputError then
                                            bSs[tM] = b7p.inputError
                                        elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                            bSs[tM] = "No native swing observed; checking equipment and readiness"
                                        elseif b7d_3 - b7p.lastDamage > 4 then
                                            local b7d_8 = fns.dwb_4()
                                            local b7d_9 = b7d_8 and (b7d_8.Position - b7d_1.Position).Magnitude or 0
                                            bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_9)
                                        else
                                            bSs[tM] = "Fighting " .. tK.Name
                                        end
                                        local b7d_10 = 0.05
                                        if b7p.nextPunch > os.clock() then
                                            b7d_10 = math.min(b7d_10, b7p.nextPunch - os.clock())
                                        end
                                        task.wait(math.max(0, b7d_10))
                                        continue
                                    end
                                    if b7p.inputError then
                                        bSs[tM] = b7p.inputError
                                    elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                        bSs[tM] = "No native swing observed; checking equipment and readiness"
                                    elseif b7d_3 - b7p.lastDamage > 4 then
                                        local b7d_11 = fns.dwb_4()
                                        local b7d_12 = b7d_11 and (b7d_11.Position - b7d_1.Position).Magnitude or 0
                                        bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_12)
                                    else
                                        bSs[tM] = "Fighting " .. tK.Name
                                    end
                                    local b7d_13 = 0.05
                                    if b7p.nextPunch > os.clock() then
                                        b7d_13 = math.min(b7d_13, b7p.nextPunch - os.clock())
                                    end
                                    task.wait(math.max(0, b7d_13))
                                    continue
                                else
                                    if os.clock() >= b7p.nextPunch then
                                        if b7h_11 then
                                            bQv(b7p)
                                            b7p.lastSwing = b7d_3
                                        elseif not Combat then
                                            if fns.dwb_147.pressInput("Combat", b7p) then
                                                b7p.lastSwing = b7d_3
                                            else
                                                b7p.inputError = "Native combat input unavailable"
                                            end
                                        end
                                    end
                                    if b7p.inputError then
                                        bSs[tM] = b7p.inputError
                                    elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                        bSs[tM] = "No native swing observed; checking equipment and readiness"
                                    elseif b7d_3 - b7p.lastDamage > 4 then
                                        local b7d_14 = fns.dwb_4()
                                        local b7d_15 = b7d_14 and (b7d_14.Position - b7d_1.Position).Magnitude or 0
                                        bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_15)
                                    else
                                        bSs[tM] = "Fighting " .. tK.Name
                                    end
                                    local b7d_16 = 0.05
                                    if b7p.nextPunch > os.clock() then
                                        b7d_16 = math.min(b7d_16, b7p.nextPunch - os.clock())
                                    end
                                    task.wait(math.max(0, b7d_16))
                                    continue
                                end
                            end
                        else
                            b7j_4, b7i_4, b7h_6 = fns.dwb_147.timing(b7p)
                            if not b7f_3 then
                                bQv(b7p)
                                bSs[tM] = b7g_2
                                local b7d_17 = 0.05
                                if b7p.nextPunch > os.clock() then
                                    b7d_17 = math.min(b7d_17, b7p.nextPunch - os.clock())
                                end
                                task.wait(math.max(0, b7d_17))
                                continue
                            elseif not b7j_5 then
                                bQv(b7p)
                                bSs[tM] = b7h_6
                                local b7d_18 = 0.05
                                if b7p.nextPunch > os.clock() then
                                    b7d_18 = math.min(b7d_18, b7p.nextPunch - os.clock())
                                end
                                task.wait(math.max(0, b7d_18))
                                continue
                            else
                                local b7f_11 = fns.dwb_147.resolvePunch()
                                if not b7p.valid() then
                                    break
                                elseif b7f_17 then
                                    bQv(b7p)
                                    local b7g_7 = not fns.dwb_147.inputs.Combat and os.clock() >= b7p.nextPunch
                                    if b7g_10 then
                                        b7g_8, b7h_7 = pcall(b7f_11)
                                        if not b7p.valid() then
                                            break
                                        end
                                        if not b7g_11 then
                                            fns.dwb_147.punch = nil
                                            fns.dwb_147.resolveAt = os.clock() + 5
                                            b7p.nextPunch = os.clock() + b7j_4 + b7i_4
                                            b7p.inputError = "Native punch failed: " .. tostring(b7h_7)
                                        else
                                            if b7f_18 then
                                                b7p.nextPunch = os.clock() + b7h_7
                                                b7p.inputError = nil
                                            else
                                                b7p.nextPunch = os.clock() + 0.15
                                            end
                                        end
                                        if b7p.inputError then
                                            bSs[tM] = b7p.inputError
                                        elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                            bSs[tM] = "No native swing observed; checking equipment and readiness"
                                        elseif b7d_3 - b7p.lastDamage > 4 then
                                            local b7d_19 = fns.dwb_4()
                                            local b7d_20 = b7d_19 and (b7d_19.Position - b7d_1.Position).Magnitude or 0
                                            bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_20)
                                        else
                                            bSs[tM] = "Fighting " .. tK.Name
                                        end
                                        local b7d_21 = 0.05
                                        if b7p.nextPunch > os.clock() then
                                            b7d_21 = math.min(b7d_21, b7p.nextPunch - os.clock())
                                        end
                                        task.wait(math.max(0, b7d_21))
                                        continue
                                    end
                                    if b7p.inputError then
                                        bSs[tM] = b7p.inputError
                                    elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                        bSs[tM] = "No native swing observed; checking equipment and readiness"
                                    elseif b7d_3 - b7p.lastDamage > 4 then
                                        local b7d_22 = fns.dwb_4()
                                        local b7d_23 = b7d_22 and (b7d_22.Position - b7d_1.Position).Magnitude or 0
                                        bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_23)
                                    else
                                        bSs[tM] = "Fighting " .. tK.Name
                                    end
                                    local b7d_24 = 0.05
                                    if b7p.nextPunch > os.clock() then
                                        b7d_24 = math.min(b7d_24, b7p.nextPunch - os.clock())
                                    end
                                    task.wait(math.max(0, b7d_24))
                                    continue
                                else
                                    if os.clock() >= b7p.nextPunch then
                                        if b7h_11 then
                                            bQv(b7p)
                                            b7p.lastSwing = b7d_3
                                        elseif not Combat then
                                            if fns.dwb_147.pressInput("Combat", b7p) then
                                                b7p.lastSwing = b7d_3
                                            else
                                                b7p.inputError = "Native combat input unavailable"
                                            end
                                        end
                                    end
                                    if b7p.inputError then
                                        bSs[tM] = b7p.inputError
                                    elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                        bSs[tM] = "No native swing observed; checking equipment and readiness"
                                    elseif b7d_3 - b7p.lastDamage > 4 then
                                        local b7d_25 = fns.dwb_4()
                                        local b7d_26 = b7d_25 and (b7d_25.Position - b7d_1.Position).Magnitude or 0
                                        bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_26)
                                    else
                                        bSs[tM] = "Fighting " .. tK.Name
                                    end
                                    local b7d_27 = 0.05
                                    if b7p.nextPunch > os.clock() then
                                        b7d_27 = math.min(b7d_27, b7p.nextPunch - os.clock())
                                    end
                                    task.wait(math.max(0, b7d_27))
                                    continue
                                end
                            end
                        end
                    else
                        b7j_5, b7i_5, b7h_9 = fns.dwb_147.timing(b7p)
                        if not b7f_3 then
                            bQv(b7p)
                            bSs[tM] = b7g_2
                            local b7d_28 = 0.05
                            if b7p.nextPunch > os.clock() then
                                b7d_28 = math.min(b7d_28, b7p.nextPunch - os.clock())
                            end
                            task.wait(math.max(0, b7d_28))
                            continue
                        elseif not b7j_5 then
                            bQv(b7p)
                            bSs[tM] = b7h_9
                            local b7d_29 = 0.05
                            if b7p.nextPunch > os.clock() then
                                b7d_29 = math.min(b7d_29, b7p.nextPunch - os.clock())
                            end
                            task.wait(math.max(0, b7d_29))
                            continue
                        else
                            b7f_17 = fns.dwb_147.resolvePunch()
                            if not b7p.valid() then
                                break
                            elseif b7f_17 then
                                bQv(b7p)
                                b7g_10 = not fns.dwb_147.inputs.Combat and os.clock() >= b7p.nextPunch
                                if b7g_10 then
                                    b7g_11, b7h_10 = pcall(b7f_17)
                                    if not b7p.valid() then
                                        break
                                    end
                                    if not b7g_11 then
                                        fns.dwb_147.punch = nil
                                        fns.dwb_147.resolveAt = os.clock() + 5
                                        b7p.nextPunch = os.clock() + b7j_5 + b7i_5
                                        b7p.inputError = "Native punch failed: " .. tostring(b7h_10)
                                    else
                                        b7f_18 = type(b7h_10) == "number" and b7h_10 == b7h_10 and b7h_10 >= 0 and b7h_10 < math.huge
                                        if b7f_18 then
                                            b7p.nextPunch = os.clock() + b7h_10
                                            b7p.inputError = nil
                                        else
                                            b7p.nextPunch = os.clock() + 0.15
                                        end
                                    end
                                    if b7p.inputError then
                                        bSs[tM] = b7p.inputError
                                    elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                        bSs[tM] = "No native swing observed; checking equipment and readiness"
                                    elseif b7d_3 - b7p.lastDamage > 4 then
                                        local b7d_30 = fns.dwb_4()
                                        local b7d_31 = b7d_30 and (b7d_30.Position - b7d_1.Position).Magnitude or 0
                                        bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_31)
                                    else
                                        bSs[tM] = "Fighting " .. tK.Name
                                    end
                                    local b7d_32 = 0.05
                                    if b7p.nextPunch > os.clock() then
                                        b7d_32 = math.min(b7d_32, b7p.nextPunch - os.clock())
                                    end
                                    task.wait(math.max(0, b7d_32))
                                    continue
                                end
                                if b7p.inputError then
                                    bSs[tM] = b7p.inputError
                                elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                    bSs[tM] = "No native swing observed; checking equipment and readiness"
                                elseif b7d_3 - b7p.lastDamage > 4 then
                                    local b7d_33 = fns.dwb_4()
                                    local b7d_34 = b7d_33 and (b7d_33.Position - b7d_1.Position).Magnitude or 0
                                    bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_34)
                                else
                                    bSs[tM] = "Fighting " .. tK.Name
                                end
                                local b7d_35 = 0.05
                                if b7p.nextPunch > os.clock() then
                                    b7d_35 = math.min(b7d_35, b7p.nextPunch - os.clock())
                                end
                                task.wait(math.max(0, b7d_35))
                                continue
                            else
                                if os.clock() >= b7p.nextPunch then
                                    Combat = fns.dwb_147.inputs.Combat
                                    b7h_11 = Combat and b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 and not Combat.pressing and not Combat.releasing
                                    if b7h_11 then
                                        bQv(b7p)
                                        b7p.lastSwing = b7d_3
                                    elseif not Combat then
                                        if fns.dwb_147.pressInput("Combat", b7p) then
                                            b7p.lastSwing = b7d_3
                                        else
                                            b7p.inputError = "Native combat input unavailable"
                                        end
                                    end
                                end
                                if b7p.inputError then
                                    bSs[tM] = b7p.inputError
                                elseif b7d_3 - b7p.lastSwing > b7j_5 + b7i_5 + 0.5 then
                                    bSs[tM] = "No native swing observed; checking equipment and readiness"
                                elseif b7d_3 - b7p.lastDamage > 4 then
                                    local b7d_36 = fns.dwb_4()
                                    local b7d_37 = b7d_36 and (b7d_36.Position - b7d_1.Position).Magnitude or 0
                                    bSs[tM] = string.format("Swings active, no target damage; check pose (%.1f studs) or immunity", b7d_37)
                                else
                                    bSs[tM] = "Fighting " .. tK.Name
                                end
                                local b7d_38 = 0.05
                                if b7p.nextPunch > os.clock() then
                                    b7d_38 = math.min(b7d_38, b7p.nextPunch - os.clock())
                                end
                                task.wait(math.max(0, b7d_38))
                                continue
                            end
                        end
                    end
                end
            else
                break
            end
        end
    end)
    local b7u_2 = fns.dwb_147.session == b7p
    fns.dwb_147.stop(b7p)
    if not b7s_5 then
        warn("[Ouroboros] combat: " .. tostring(b7t_4))
        local b7s_6 = b7u_2 and fns.dwb_118()
        if b7s_6 then
            bSs[tM] = "Combat error: " .. tostring(b7t_4)
        end
        return false
    end
    local b7s_7 = Humanoid.Health <= 0
    local b7t_5 = b7s_7 and fns.dwb_118()
    if b7t_5 then
        bSs.Kills = bSs.Kills + 1
    else
        local b7t_6 = b7u_2 and fns.dwb_118() and os.clock() >= b7q
        if b7t_6 then
            bSs[tM] = "Combat timed out"
        end
    end
    return b7s_7
end
fns.dwb_122 = function(uU)
    local generation
    local b7F
    b7F = nil
    generation = nil
    if not uU then
        return nil
    end
    b7F = uU.cancel or 0
    generation = uU.generation
    return function()
        local b7z = uU.stopped == true or uU.generation ~= generation
        local b7E = if b7z then 1 else 0
        local b7C = 1731 * b7E + 4017 * (1 - b7E)
        local b7D = 1650 * b7E + 1601 * (1 - b7E)
        if not ((b7C * 1601 + b7D * 969 + b7C * b7D) % 16777213 == 7226331) then
            b7z = uU.yield == true
        end
        if not b7z then
            b7z = (uU.cancel or 0) ~= b7F
        end
        return b7z
    end
end
if ((fns.dwb_128 and not fns.dwb_27 and (fns.dwb_27 and not fns.dwb_128) or fns.dwb_27 and not fns.dwb_27 and (not fns.dwb_128 and fns.dwb_27)) and (not fns.dwb_128 and not fns.dwb_128 and (not fns.dwb_128 and not fns.dwb_27) and (not fns.dwb_128 and not fns.dwb_27 and (not fns.dwb_27 and not fns.dwb_128))) or fns.dwb_27 and fns.dwb_128 and (fns.dwb_128 and fns.dwb_128) and (fns.dwb_128 or fns.dwb_128 or not fns.dwb_27 and fns.dwb_27) and (fns.dwb_128 or not fns.dwb_27 or not fns.dwb_128 and not fns.dwb_27 or (not fns.dwb_27 or fns.dwb_128) and (fns.dwb_27 or not fns.dwb_27))) and not ((fns.dwb_128 and not fns.dwb_27 and (fns.dwb_27 and not fns.dwb_128) or fns.dwb_27 and not fns.dwb_27 and (not fns.dwb_128 and fns.dwb_27)) and (not fns.dwb_128 and not fns.dwb_128 and (not fns.dwb_128 and not fns.dwb_27) and (not fns.dwb_128 and not fns.dwb_27 and (not fns.dwb_27 and not fns.dwb_128))) or fns.dwb_27 and fns.dwb_128 and (fns.dwb_128 and fns.dwb_128) and (fns.dwb_128 or fns.dwb_128 or not fns.dwb_27 and fns.dwb_27) and (fns.dwb_128 or not fns.dwb_27 or not fns.dwb_128 and not fns.dwb_27 or (not fns.dwb_27 or fns.dwb_128) and (fns.dwb_27 or not fns.dwb_27))) then
    fns.dwb_140 = fns.fn2445
    bSH = function(vn, vo, vp, vq, vr)
        local b73_12
        local b71 = fns.dwb_122(vq)
        local b72 = not fns.dwb_147.controllerValid(vq)
        if not b72 then
            local b73_7 = b71 and b71()
            b72 = b73_7
        end
        if b72 then
            return false
        end
        local b72_4 = vr and vr()
        if b72_4 then
            return false
        end
        local function b70()
            return bRH(function(vy)
                return vy.name == vn
            end)
        end
        local b72_5 = b70()
        if not b72_5 then
            local b73_8 = (bTH(vn)) or fns.dwb_41(vn)
            if not b73_8 then
                bSs[vo] = "Cannot find " .. vn
                return false
            end
            bSs[vo] = "Travelling to " .. vn
            fns.dwb_111(b73_8, 0, fns.dwb_122(vq))
            if vq and vq.stopped then
                return false
            end
            bRD(function()
                local b7V = b70() ~= nil or vq and vq.stopped
                return b7V
            end, 4)
            if vq and vq.stopped then
                return false
            end
            local b72_6 = b70()
            if not b72_6 then
                bSs[vo] = "Waiting for " .. vn
                return false
            end
            local b73_11 = not fns.dwb_147.controllerValid(vq)
            if not b73_12 then
                local b74_5 = b71 and b71()
            end
            if b73_12 then
                return false
            end
            bSs[vo] = "Fighting " .. vn
            return bSH(b72_6, vo, vp, vq, vr)
        end
        b73_12 = not fns.dwb_147.controllerValid(vq)
        if not b73_12 then
            local b74_6 = b71 and b71()
            b73_12 = b74_6
        end
        if b73_12 then
            return false
        end
        bSs[vo] = "Fighting " .. vn
        return bSH(b72_5, vo, vp, vq, vr)
    end
    fns.dwb_31 = function(vV, vW, vX, vY, vZ)
        local b79 = fns.dwb_122(vY)
        local b8a = false
        local b8b = os.clock() + 25
        local b8b_8
        local b8c = vY
        if b8c then
            local b8d_16 = vY.cancel
            local b8i = if b8d_16 then 1 else 0
            local b8g = 882 * b8i + 3177 * (1 - b8i)
            local b8h = 2867 * b8i + 3624 * (1 - b8i)
            if not ((b8g * 1806 + b8h * 2910 + b8g * b8h) % 16777213 == 12464556) then
                b8d_16 = 0
            end
            b8c = b8d_16
        end
        local b8d_17 = b8c or 0
        local b8l = 1
        while true do
            if not (b8l <= 40) then
                if not b8a ~= false then
                    fns.dwb_147.controllerValid(vY)
                end
                if b8b_8 then
                    local b8d_18 = b79 and b79()
                end
                if b8b_8 then
                    local b79_10 = vZ and vZ()
                end
                if b8b_8 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            local b8d_20 = not fns.dwb_147.controllerValid(vY)
            if not b8d_20 then
                local b8e_3 = b79 and b79()
                b8d_20 = b8e_3
            end
            if not b8d_20 then
                b8d_20 = bQg()
            end
            if b8d_20 then
                if not b8a ~= false then
                    fns.dwb_147.controllerValid(vY)
                end
                if b8b_8 then
                    local b8d_21 = b79 and b79()
                end
                if b8b_8 then
                    local b79_12 = vZ and vZ()
                end
                if b8b_8 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            local b8d_23 = vY
            if b8d_23 then
                b8d_23 = (vY.cancel or 0) ~= b8d_17
            end
            if b8d_23 then
                return b8a
            end
            local b8d_24 = vZ and vZ()
            if b8d_24 then
                return b8a
            end
            if os.clock() > b8b then
                if not b8a ~= false then
                    fns.dwb_147.controllerValid(vY)
                end
                if b8b_8 then
                    local b8d_25 = b79 and b79()
                end
                if b8b_8 then
                    local b79_14 = vZ and vZ()
                end
                if b8b_8 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            local b8d_27 = bRH(function(wd)
                return wd.name == vV
            end)
            if not b8d_27 then
                b8b_8 = not b8a
                if b8b_8 ~= false then
                    b8b_8 = fns.dwb_147.controllerValid(vY)
                end
                if b8b_8 then
                    local b8d_28 = b79 and b79()
                    b8b_8 = not b8d_28
                end
                if b8b_8 then
                    local b79_15 = vY
                    if b79_15 then
                        b79_15 = (vY.cancel or 0) ~= b8d_17
                    end
                    b8b_8 = not b79_15
                end
                if b8b_8 then
                    local b79_16 = vZ and vZ()
                    b8b_8 = not b79_16
                end
                if b8b_8 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            bSs[vW] = "Fighting " .. vV
            if not bSH(b8d_27, vW, vX, vY, vZ) then
                return b8a
            end
            b8a = true
            local b8d_30 = vZ and vZ()
            if b8d_30 then
                break
            end
            if bRH(function(wj)
                return wj.name == vV
            end) == nil then
                return b8a
            end
            b8l += 1
        end
        return b8a
    end
    bTe = fns.fn4251
else
    bSH = fns.fn2445
    fns.dwb_31 = function(vn, vo, vp, vq, vr)
        local b73_6
        local b71 = fns.dwb_122(vq)
        local b72 = not fns.dwb_147.controllerValid(vq)
        if not b72 then
            local b73_1 = b71 and b71()
            b72 = b73_1
        end
        if b72 then
            return false
        end
        local b72_1 = vr and vr()
        if b72_1 then
            return false
        end
        local function b70()
            return bRH(function(vy)
                return vy.name == vn
            end)
        end
        local b72_2 = b70()
        if not b72_2 then
            local b73_2 = (bTH(vn)) or fns.dwb_41(vn)
            if not b73_2 then
                bSs[vo] = "Cannot find " .. vn
                return false
            end
            bSs[vo] = "Travelling to " .. vn
            fns.dwb_111(b73_2, 0, fns.dwb_122(vq))
            if vq and vq.stopped then
                return false
            end
            bRD(function()
                local b7V = b70() ~= nil or vq and vq.stopped
                return b7V
            end, 4)
            if vq and vq.stopped then
                return false
            end
            local b72_3 = b70()
            if not b72_3 then
                bSs[vo] = "Waiting for " .. vn
                return false
            end
            local b73_5 = not fns.dwb_147.controllerValid(vq)
            if not b73_6 then
                local b74_2 = b71 and b71()
            end
            if b73_6 then
                return false
            end
            bSs[vo] = "Fighting " .. vn
            return bSH(b72_3, vo, vp, vq, vr)
        end
        b73_6 = not fns.dwb_147.controllerValid(vq)
        if not b73_6 then
            local b74_3 = b71 and b71()
            b73_6 = b74_3
        end
        if b73_6 then
            return false
        end
        bSs[vo] = "Fighting " .. vn
        return bSH(b72_2, vo, vp, vq, vr)
    end
    bTe = function(vV, vW, vX, vY, vZ)
        local b79 = fns.dwb_122(vY)
        local b8a = false
        local b8b = os.clock() + 25
        local b8b_4
        local b8c = vY
        if b8c then
            local b8d_1 = vY.cancel
            local b8i = if b8d_1 then 1 else 0
            local b8g = 882 * b8i + 3177 * (1 - b8i)
            local b8h = 2867 * b8i + 3624 * (1 - b8i)
            if not ((b8g * 1806 + b8h * 2910 + b8g * b8h) % 16777213 == 12464556) then
                b8d_1 = 0
            end
            b8c = b8d_1
        end
        local b8d_2 = b8c or 0
        local b8l = 1
        while true do
            if not (b8l <= 40) then
                if not b8a ~= false then
                    fns.dwb_147.controllerValid(vY)
                end
                if b8b_4 then
                    local b8d_3 = b79 and b79()
                end
                if b8b_4 then
                    local b79_2 = vZ and vZ()
                end
                if b8b_4 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            local b8d_5 = not fns.dwb_147.controllerValid(vY)
            if not b8d_5 then
                local b8e_1 = b79 and b79()
                b8d_5 = b8e_1
            end
            if not b8d_5 then
                b8d_5 = bQg()
            end
            if b8d_5 then
                if not b8a ~= false then
                    fns.dwb_147.controllerValid(vY)
                end
                if b8b_4 then
                    local b8d_6 = b79 and b79()
                end
                if b8b_4 then
                    local b79_4 = vZ and vZ()
                end
                if b8b_4 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            local b8d_8 = vY
            if b8d_8 then
                b8d_8 = (vY.cancel or 0) ~= b8d_2
            end
            if b8d_8 then
                return b8a
            end
            local b8d_9 = vZ and vZ()
            if b8d_9 then
                return b8a
            end
            if os.clock() > b8b then
                if not b8a ~= false then
                    fns.dwb_147.controllerValid(vY)
                end
                if b8b_4 then
                    local b8d_10 = b79 and b79()
                end
                if b8b_4 then
                    local b79_6 = vZ and vZ()
                end
                if b8b_4 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            local b8d_12 = bRH(function(wd)
                return wd.name == vV
            end)
            if not b8d_12 then
                b8b_4 = not b8a
                if b8b_4 ~= false then
                    b8b_4 = fns.dwb_147.controllerValid(vY)
                end
                if b8b_4 then
                    local b8d_13 = b79 and b79()
                    b8b_4 = not b8d_13
                end
                if b8b_4 then
                    local b79_7 = vY
                    if b79_7 then
                        b79_7 = (vY.cancel or 0) ~= b8d_2
                    end
                    b8b_4 = not b79_7
                end
                if b8b_4 then
                    local b79_8 = vZ and vZ()
                    b8b_4 = not b79_8
                end
                if b8b_4 then
                    return fns.dwb_31(vV, vW, vX, vY, vZ)
                end
                return b8a
            end
            bSs[vW] = "Fighting " .. vV
            if not bSH(b8d_12, vW, vX, vY, vZ) then
                return b8a
            end
            b8a = true
            local b8d_15 = vZ and vZ()
            if b8d_15 then
                break
            end
            if bRH(function(wj)
                return wj.name == vV
            end) == nil then
                return b8a
            end
            b8l += 1
        end
        return b8a
    end
    fns.dwb_140 = fns.fn4251
end
fns.dwb_132 = fns.fn6807
fns.dwb_9 = fns.fn4811
bS2 = fns.fn5148
fns.dwb_27 = fns.fn776
bS4 = fns.fn7607
fns.dwb_128 = fns.fn117
fns.dwb_94 = fns.fn1788
bQe.closeOnNpc = function(xH, xI, xJ, xK)
    if typeof(xH) ~= "Instance" then
        return false
    end
    local function b9w()
        local b9p = not fns.dwb_118() or xH.Parent == nil
        if not b9p then
            local b9q = xI ~= nil and xI()
            b9p = b9q
        end
        return b9p
    end
    local b9x_1 = (xJ and xJ.MaxActivationDistance or 10) * 0.6
    local function b9y_1()
        local b9s = fns.dwb_4()
        if not b9s or xH.Parent == nil then
            return math.huge
        end
        return (b9s.Position - xH:GetPivot().Position).Magnitude
    end
    if b9w() then
        return false
    end
    if b9y_1() > fns.dwb_11.ARRIVE_RADIUS then
        fns.dwb_137(xH:GetPivot().Position + Vector3.new(0, 2, 3), nil, xI)
    end
    local b9z = os.clock() + 1.5
    local b9A = (tonumber(xK)) or 0
    local b9B = b9z + b9A
    local b9z_1 = os.clock()
    local b9A_1 = (tonumber(xK)) or 0
    local b9C = b9z_1 + b9A_1
    local b9F = false
    repeat
        if b9w() then
            return false
        end
        local b9v = fns.dwb_4()
        if not b9v then
            return false
        end
        if b9v.Anchored then
            pcall(function()
                b9v.Anchored = false
            end)
        end
        b9v.CFrame = CFrame.new(xH:GetPivot().Position + Vector3.new(0, 2, 3))
        b9v.AssemblyLinearVelocity = Vector3.zero
        b9v.AssemblyAngularVelocity = Vector3.zero
        task.wait()
        local b9z_2 = os.clock() >= b9B
        if not b9z_2 then
            local b9A_2 = b9y_1() <= b9x_1 and os.clock() >= b9C
            b9z_2 = b9A_2
        end
        if b9z_2 then
            b9F = true
        end
    until b9F
    local b9z_3 = not b9w() and b9y_1() <= b9x_1
    return b9z_3
end
bQe.reachNpc = function(ya, yb, yc)
    local b9N_3
    local function b9L()
        local b9J = yb ~= nil and yb()
        return b9J
    end
    local b9L_2
    local b9M = fns.dwb_129(ya)
    if not b9M then
        local b9N_1 = fns.dwb_41(ya)
        if not b9N_1 then
            return nil
        end
        if yc then
            bSs[yc] = "Travelling to " .. ya
        end
        fns.dwb_111(b9N_1 + Vector3.new(0, 3, 0), 0.5, yb)
        if b9L() then
            return nil
        end
        bRD(function()
            return fns.dwb_129(ya) ~= nil
        end, 10, b9L)
        local b9M_1 = fns.dwb_129(ya)
        local b9N_2 = not b9M_1 or b9L()
        if b9N_3 then
            return nil
        end
        local b9L_1 = bQQ(ya)
        if not b9L_2 then
            return nil
        end
        if yc then
            bSs[yc] = "Talking to " .. ya
        end
        if not bQe.closeOnNpc(b9M, yb, b9L_2) then
            return nil
        end
        return b9L_1, b9M_1
    end
    b9N_3 = not b9M or b9L()
    if b9N_3 then
        return nil
    end
    b9L_2 = bQQ(ya)
    if not b9L_2 then
        return nil
    end
    if yc then
        bSs[yc] = "Talking to " .. ya
    end
    if not bQe.closeOnNpc(b9M, yb, b9L_2) then
        return nil
    end
    return b9L_2, b9M
end
bSh = function(yu, yv, yw)
    local b94
    b94 = nil
    local b96, b97
    local b98 = yw
    local cah = if b98 then 1 else 0
    local caf = 1890 * cah + 1067 * (1 - cah)
    local cag = 3476 * cah + 1787 * (1 - cah)
    if not ((caf * 2973 + cag * 913 + caf * cag) % 16777213 == 15362198) then
        b98 = "LevelStatus"
    end
    yw = b98
    local b98_1 = fns.dwb_140(yu)
    if not b98_1 then
        return false
    end
    local OfferNpc = b98_1.OfferNpc
    local b99 = OfferNpc == ""
    local caa = type(OfferNpc) ~= "string" or b99
    if caa then
        return false
    end
    b94 = fns.dwb_122(yv)
    b96 = function()
        local b9P = b94 ~= nil and b94()
        return b9P
    end
    local b99_1 = {}
    local caa_1 = fns.dwb_41(OfferNpc)
    if caa_1 then
        b99_1[1] = caa_1
    end
    if typeof(b98_1.Position) == "Vector3" then
        b99_1[#b99_1 + 1] = b98_1.Position
    end
    if #b99_1 == 0 then
        return false
    end
    local caa_2 = nil
    for i, v in ipairs(b99_1) do
        if b96() then
            return false
        end
        caa_2 = bQQ(OfferNpc)
        if caa_2 then
            break
        else
            bSs[yw] = "Travelling to " .. OfferNpc
            fns.dwb_111(v + Vector3.new(0, 3, 0), 0.5, b94)
            if b96() then
                return false
            end
            local function cab()
                local b9U = bQQ(OfferNpc) ~= nil
                local b9Y = if b9U then 1 else 0
                local b9W = 2797 * b9Y + 408 * (1 - b9Y)
                local b9X = 1302 * b9Y + 2620 * (1 - b9Y)
                if not ((b9W * 3012 + b9X * 1290 + b9W * b9X) % 16777213 == 13745838) then
                    b9U = b96()
                end
                return b9U
            end
            local cad = i == #b99_1 and 10 or 5
            bRD(cab, cad)
            caa_2 = bQQ(OfferNpc)
            if caa_2 then
                break
            end
        end
    end
    if not caa_2 then
        bSs[yw] = "Cannot reach " .. OfferNpc
        return false
    end
    local b99_2 = fns.dwb_129(OfferNpc)
    bQe.closeOnNpc(b99_2, b94, caa_2)
    if b96() then
        return false
    end
    bR5(caa_2)
    bQe.closeOnNpc(b99_2, b94, caa_2, 1)
    if b96() then
        bQR("NpcTalking", "Ended")
        return false
    end
    bQR("AddQuest", yu)
    local b99_3 = typeof(b98_1.QuestInstance) == "Instance" and b98_1.QuestInstance.Name
    local b98_2 = b99_3
    local cas = if b98_2 then 1 else 0
    local caq = 728 * cas + 3631 * (1 - cas)
    local car = 464 * cas + 454 * (1 - cas)
    if not ((caq * 1326 + car * 3594 + caq * car) % 16777213 == 2970736) then
        b98_2 = yu
    end
    b97 = b98_2
    local b98_3 = bRD(function()
        local b9Z = fns.dwb_36()
        local b9_ = b9Z ~= nil and b9Z:FindFirstChild(b97) ~= nil
        local b9Z_1 = b9_ or b96()
        return b9Z_1
    end, 6)
    bQR("NpcTalking", "Ended")
    return b98_3
end
bQ2 = fns.fn5092
fns.dwb_48 = function()
    local caw
    local cax
    caw = nil
    cax = nil
    local caz_1
    local cay = type(fns.dwb_26.LiveConfig) ~= "table" or not bQG(fns.dwb_26.LiveConfig.get)
    local cay_1
    if cay then
        fns.dwb_71("LiveConfig.get")
        return {}
    end
    cay_1, caz_1 = fns.dwb_144(fns.dwb_26.LiveConfig.get, "Codes")
    local caA = not cay_1 or type(caz_1) ~= "table"
    if caA then
        return {}
    end
    caw = {}
    cax = {}
    local function cay_2(zm)
        if type(zm) ~= "table" then
            return
        end
        local code = zm.code
        local cau = type(code) == "string" and code ~= "" and not caw[code]
        if cau then
            caw[code] = true
            cax[#cax + 1] = { code = code, expires = tonumber(zm.expires) }
        end
    end
    for k, v in pairs(caz_1) do
        if type(v) == "table" then
            if type(v.code) == "string" then
                cay_2(v)
            else
                for k, v in pairs(v) do
                    cay_2(v)
                end
            end
        end
    end
    table.sort(cax, function(zv, zw)
        return zv.code < zw.code
    end)
    return cax
end
fns.dwb_79 = fns.fn7608
fns.dwb_11.CODE_GAP = 1.5
fns.dwb_11.CODE_BACKOFF = { 3, 6 }
fns.dwb_11.CODE_COOLDOWN = 20
fns.dwb_124 = fns.fn1762
bTM = fns.fn4470
bSg.LevelController = { interval = 0.05, cancel = 0, priorityKey = "AutoLevel" }
bSg.QuestController = { interval = 0.05, quests = {}, cancel = 0, priorityKey = "AutoQuest" }
bSg.HuntController = { interval = 0.5, tiers = {}, dropForeign = false, cancel = 0, priorityKey = "AutoBossHunt" }
fns.dwb_11.HUNT_CACHE_CAP = 150
bSg.DeliveryController = { interval = 0.5, cancel = 0, priorityKey = "AutoDelivery" }
bSg.DemonController = {
    interval = 0.5,
    repMob = "Mizunoto",
    drink = true,
    dropForeign = false,
    cursor = 0,
    cancel = 0,
    priorityKey = "AutoDemon"
}
bSg.DungeonController = { interval = 0.05, range = 250, cancel = 0, priorityKey = "AutoDungeon" }
bSg.BringController = { interval = 0.1, range = 2000, cancel = 0 }
bSg.CardController = {
    interval = 0.5,
    cards = {},
    priority = {},
    blockCards = true,
    blocked = { [fns.dwb_11.BARE_HANDS_CARD] = true },
    forceHeal = false,
    healBelow = 40,
    cancel = 0
}
bSg.WaveController = { interval = 0.25, voted = false, cancel = 0 }
bSg.MobController = { interval = 0.05, target = "", cancel = 0, priorityKey = "AutoMob" }
bSg.BossController = {
    interval = 2,
    bosses = {},
    current = nil,
    waitName = nil,
    dwell = 0,
    skip = {},
    cancel = 0,
    priorityKey = "AutoBoss"
}
bSg.ChestController = {
    interval = 0.25,
    tiers = {},
    pending = false,
    cancel = 0,
    priorityKey = "AutoChest",
    hop = false,
    hopAfter = 3,
    hopEmpty = true,
    openedHere = 0,
    emptyScans = 0,
    hopScans = 3,
    hopUntil = 0,
    badServers = {},
    hopOrder = "Random",
    lootRange = 12
}
bSg.BreathController = { interval = 2, breathing = "", cancel = 0, priorityKey = "AutoBreathing" }
bSg.TrainController = {
    interval = 1,
    codes = {},
    mode = "Instantly",
    cursor = 0,
    dead = {},
    cancel = 0,
    priorityKey = "AutoTraining"
}
bSg.SkillController = { interval = 5, nodes = {}, unlockSkills = false, cancel = 0 }
bSg.EquipController = { cancel = 0 }
bSg.PotionController = { interval = 1, potion = "", threshold = 40, cancel = 0, priorityKey = "AutoPotion" }
bSg.ShopController = { interval = 15, items = {}, keep = 1, cancel = 0, priorityKey = "AutoBuy" }
bSg.SellController = {
    interval = 1,
    period = 20,
    nextDue = 0,
    settle = 2,
    mode = "Selected Items",
    items = {},
    rarities = {},
    keep = 1,
    cancel = 0
}
bSg.FishController = {
    interval = 0.15,
    bait = "None",
    buyBait = false,
    returnAfterBuy = true,
    quest = false,
    cancel = 0,
    priorityKey = "AutoFish",
    stand = nil
}
bSg.RodController = {
    interval = 0.5,
    cursor = 1,
    catches = 0,
    nextDue = 0,
    cancel = 0,
    priorityKey = "AutoLegendaryRod"
}
bSg.LootController = {
    interval = 0.5,
    range = 150,
    pending = false,
    awaitUntil = 0,
    cancel = 0,
    priorityKey = "AutoLoot"
}
bSg.SoulController = { interval = 0.5, range = 250, cancel = 0, priorityKey = "AutoSoul" }
bSg.QueueController = { interval = 2, modes = {}, ranked = false, fill = false, cursor = 0, current = nil, cancel = 0 }
bSg.ReadyController = { interval = 1, range = 400, cancel = 0, priorityKey = "AutoReady" }
bSg.ReadyController.fired = setmetatable({}, { __mode = "k" })
bSg.OpenController = {
    interval = 1,
    range = 400,
    limit = 0,
    opened = 0,
    emptyAt = 0,
    cancel = 0,
    priorityKey = "AutoOpenChest"
}
bSg.OpenController.fired = setmetatable({}, { __mode = "k" })
bSg.ResetController = { interval = 1, target = 30000, resets = 3, done = 0, runKey = nil, cancel = 0 }
bSg.StallController = { interval = 2, timeout = 180, mark = 0, seen = nil, runKey = nil, done = 0, cancel = 0 }
bSg.LeaveController = {
    interval = 1,
    range = 400,
    delay = 0,
    readyAt = nil,
    cancel = 0,
    priorityKey = "AutoLeave",
    floor = 0,
    floorDone = 0,
    floorKey = nil
}
bSg.LeaveController.fired = setmetatable({}, { __mode = "k" })
bSg.WorldController = { interval = 1, delay = 4, world = "", privateOwner = "", cancel = 0, nextAt = nil }
bSg.CrystalController = { interval = 20, bundles = 99, reserve = 0, cancel = 0, priorityKey = "AutoBuyExp" }
bSg.controllers = {
    bSg.LevelController,
    bSg.QuestController,
    bSg.HuntController,
    bSg.DeliveryController,
    bSg.DemonController,
    bSg.DungeonController,
    bSg.BringController,
    bSg.CardController,
    bSg.WaveController,
    bSg.MobController,
    bSg.BossController,
    bSg.ChestController,
    bSg.BreathController,
    bSg.TrainController,
    bSg.SkillController,
    bSg.EquipController,
    bSg.PotionController,
    bSg.ShopController,
    bSg.SellController,
    bSg.FishController,
    bSg.RodController,
    bSg.LootController,
    bSg.SoulController,
    bSg.QueueController,
    bSg.ReadyController,
    bSg.OpenController,
    bSg.ResetController,
    bSg.StallController,
    bSg.LeaveController,
    bSg.WorldController,
    bSg.CrystalController
}
fns.dwb_135 = false
fns.dwb_142 = {
    active = false,
    preempt = true,
    settling = false,
    settle = 0.05,
    order = {},
    rank = {},
    wants = {},
    commitments = {},
    holder = nil,
    byKey = {},
    byLabel = {}
}
fns.dwb_142.features = {
    { key = "AutoLoot", label = "Auto Loot", controller = bSg.LootController },
    { key = "AutoReady", label = "Auto Ready Up", controller = bSg.ReadyController },
    { key = "AutoOpenChest", label = "Auto Open Chest", controller = bSg.OpenController },
    { key = "AutoLeave", label = "Auto Leave", controller = bSg.LeaveController },
    { key = "AutoPotion", label = "Auto Potion", controller = bSg.PotionController, moves = false },
    { key = "AutoSoul", label = "Auto Soul", controller = bSg.SoulController },
    { key = "AutoBuy", label = "Auto Buy", controller = bSg.ShopController },
    { key = "AutoBuyExp", label = "Auto Buy Exp", controller = bSg.CrystalController },
    { key = "AutoFish", label = "Auto Fishing", controller = bSg.FishController },
    { key = "AutoLegendaryRod", label = "Auto Legendary Rod Quest", controller = bSg.RodController },
    { key = "AutoBoss", label = "Auto Boss", controller = bSg.BossController },
    { key = "AutoBossHunt", label = "Auto Boss Hunts", controller = bSg.HuntController },
    { key = "AutoDelivery", label = "Auto Delivery Quest", controller = bSg.DeliveryController },
    { key = "AutoChest", label = "Sealed Cache", controller = bSg.ChestController },
    { key = "AutoBreathing", label = "Auto Breathing", controller = bSg.BreathController },
    { key = "AutoTraining", label = "Auto Training", controller = bSg.TrainController },
    { key = "AutoDungeon", label = "Auto Farm Nearby Enemies", controller = bSg.DungeonController },
    { key = "AutoDemon", label = "Become A Demon", controller = bSg.DemonController },
    { key = "AutoQuest", label = "Auto Farm Quest", controller = bSg.QuestController },
    { key = "AutoLevel", label = "Auto Level", controller = bSg.LevelController },
    { key = "AutoMob", label = "Auto Farm Mob", controller = bSg.MobController }
}
fns.dwb_142.defaultOrder = {}
for i, v in ipairs(fns.dwb_142.features) do
    fns.dwb_142.defaultOrder[i] = v.key
    fns.dwb_142.byKey[v.key] = v
    fns.dwb_142.byLabel[v.label] = v
end
bP3, fns.dwb_134, fns.dwb_24, bSU, bSu, fns.dwb_53, fns.dwb_72, fns.dwb_90, bQi, bRR, bP5, fns.dwb_2, fns.dwb_83, bR4, bQf, bQH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.dwb_142.label = fns.fn1954
fns.dwb_142.reindex = fns.fn5503
fns.dwb_142.setOrder = fns.fn7330
fns.dwb_142.parse = fns.fn2159
fns.dwb_142.serialize = fns.fn7455
fns.dwb_142.move = fns.fn2051
fns.dwb_142.rankOf = fns.fn2865
fns.dwb_142.want = fns.fn3468
fns.dwb_142.done = fns.fn6019
fns.dwb_142.wanted = fns.fn5301
fns.dwb_142.blocked = fns.fn5566
fns.dwb_142.DEMAND_WINDOW = 30
fns.dwb_142.lastClaim = {}
fns.dwb_142.contended = fns.fn4074
fns.dwb_142.COMMIT_WINDOW = 10
fns.dwb_142.commit = fns.fn906
fns.dwb_142.uncommit = fns.fn6734
fns.dwb_142.committed = fns.fn3502
fns.dwb_142.turn = fns.fn5563
fns.dwb_142.PREEMPT_COOLDOWN = 2
fns.dwb_142.preemptedAt = {}
fns.dwb_142.interrupt = function(BG)
    local holder, ccW, lease, ccY
    local cc2_1
    local cc1_2
    local ccZ = BG == "AutoLoot" and bSg.LootController.running and not bSg.LootController.stopped
    local cc_ = not BG
    ccY = ccZ
    local cc6 = if cc_ then 1 else 0
    local cc4 = 1146 * cc6 + 3898 * (1 - cc6)
    local cc5 = 2896 * cc6 + 2284 * (1 - cc6)
    if not ((cc4 * 2161 + cc5 * 979 + cc4 * cc5) % 16777213 == 8630506) then
        cc_ = not fns.dwb_118()
    end
    if not cc_ then
        cc_ = fns.dwb_142.active and not fns.dwb_142.preempt and not ccY
    end
    if cc_ then
        return
    end
    holder, lease = fns.dwb_142.holder, fns.dwb_142.lease
    if not fns.dwb_135 or not holder or holder == BG or not lease or fns.dwb_142.interruption then
        return
    end
    if holder == "AutoLoot" then
        return
    end
    if fns.dwb_142.active then
        if fns.dwb_142.rankOf(holder) <= fns.dwb_142.rankOf(BG) then
            return
        end
    else
        if BG ~= "AutoPotion" and BG ~= "AutoLoot" and BG ~= "AutoSoul" and BG ~= "AutoBuy" and BG ~= "AutoBuyExp" then
            return
        end
    end
    local ccZ_7 = not ccY
    if ccZ_7 then
        local cc__3 = os.clock()
        local cc0_4 = fns.dwb_142.preemptedAt[BG]
        local cdc = if cc0_4 then 1 else 0
        local cda = 1977 * cdc + 1999 * (1 - cdc)
        local cdb = 2125 * cdc + 1914 * (1 - cdc)
        if not ((cda * 2056 + cdb * 2422 + cda * cdb) % 16777213 == 13412587) then
            cc0_4 = -math.huge
        end
        ccZ_7 = cc__3 - cc0_4 < fns.dwb_142.PREEMPT_COOLDOWN
    end
    if ccZ_7 then
        return
    end
    local ccZ_8 = fns.dwb_142.byKey[holder]
    local ccZ_9 = ccZ_8 and ccZ_8.controller
    if not ccZ_9 then
        return
    end
    ccW = fns.dwb_147.runs[coroutine.running()]
    local cc__5 = ccZ_9.generation
    local cc0_5 = { lease = lease, controller = ccZ_9 }
    fns.dwb_142.interruption = cc0_5
    fns.dwb_142.preemptedAt[BG] = os.clock()
    ccZ_9.yield = true
    bSs.PriorityStatus = fns.dwb_142.label(BG) .. " waiting on " .. fns.dwb_142.label(holder)
    cc1_2, cc2_1 = pcall(function()
        local ccQ = os.clock() + 6
        while true do
            local ccR = (fns.dwb_118()) and fns.dwb_135 and fns.dwb_142.lease == lease and os.clock() < ccQ
            if ccR then
                local ccR_1 = ccW and not fns.dwb_147.controllerValid(ccW.controller)
                if ccR_1 then
                    break
                end
                local ccR_2 = fns.dwb_142.active
                if ccR_2 then
                    local ccT = not fns.dwb_142.preempt and not ccY
                    local ccS_1 = ccT or fns.dwb_142.rankOf(holder) <= fns.dwb_142.rankOf(BG)
                    ccR_2 = ccS_1
                end
                if ccR_2 then
                    break
                end
                task.wait(0.05)
                continue
            end
            break
        end
    end)
    if fns.dwb_142.interruption == cc0_5 then
        fns.dwb_142.interruption = nil
        if fns.dwb_142.lease == lease and ccZ_9.generation == cc__5 then
            ccZ_9.yield = false
        end
    end
    if not cc1_2 then
        warn("[Ouroboros] priority interrupt: " .. tostring(cc2_1))
    end
end
bSU = function(Cc)
    local cdm, cdn, cdo
    local cdr_3
    cdo = fns.dwb_147.runs[coroutine.running()]
    cdn = function()
        local cdg = (fns.dwb_118()) and (not cdo or not cdo.controller.stopped and not cdo.controller.yield and cdo.controller.generation == cdo.generation)
        return cdg
    end
    if not cdn() then
        return false
    end
    cdm = false
    local function cdp()
        local cdk = cdm and cdn()
        if cdk then
            fns.dwb_142.done(Cc)
        end
        return false
    end
    local cdp_10, cdp_12
    local cdq = Cc
    local cdq_5, cdq_6
    if cdq then
        cdq = fns.dwb_142.active or Cc == "AutoLoot"
    end
    if cdq then
        fns.dwb_142.turn(Cc)
        cdm = true
        if not fns.dwb_118() then
            return cdp()
        end
        local cdq_1 = fns.dwb_142.blocked(Cc)
        if cdq_5 then
            bSs.PriorityStatus = fns.dwb_142.label(Cc) .. " waiting on " .. fns.dwb_142.label(cdq_1)
            return cdp()
        elseif fns.dwb_135 then
            fns.dwb_142.interrupt(Cc)
            local cdq_2 = fns.dwb_142.blocked(Cc)
            if cdq_6 then
                bSs.PriorityStatus = fns.dwb_142.label(Cc) .. " waiting on " .. fns.dwb_142.label(cdq_2)
            end
            if cdr_3 then
                return cdp()
            elseif not cdn() then
                return cdp()
            else
                fns.dwb_135 = true
                fns.dwb_142.lease = { thread = coroutine.running(), key = Cc, run = cdo }
                if cdp_10 then
                    fns.dwb_142.movementEpoch = (fns.dwb_142.movementEpoch or 0) + 1
                end
                fns.dwb_142.ownerRun = cdo
                fns.dwb_142.holder = Cc
                if Cc then
                    fns.dwb_142.lastClaim[Cc] = os.clock()
                    local cdp_3 = fns.dwb_142.byKey[Cc]
                    if cdp_12 then
                        cdp_3.controller.yield = false
                    end
                end
                if fns.dwb_142.active then
                    bSs.PriorityHolder = fns.dwb_142.label(Cc)
                    bSs.PriorityStatus = "Running " .. fns.dwb_142.label(Cc)
                end
                return true
            end
        elseif not cdn() then
            return cdp()
        else
            fns.dwb_135 = true
            fns.dwb_142.lease = { thread = coroutine.running(), key = Cc, run = cdo }
            if cdp_10 then
                fns.dwb_142.movementEpoch = (fns.dwb_142.movementEpoch or 0) + 1
            end
            fns.dwb_142.ownerRun = cdo
            fns.dwb_142.holder = Cc
            if Cc then
                fns.dwb_142.lastClaim[Cc] = os.clock()
                local cdp_6 = fns.dwb_142.byKey[Cc]
                if cdp_12 then
                    cdp_6.controller.yield = false
                end
            end
            if fns.dwb_142.active then
                bSs.PriorityHolder = fns.dwb_142.label(Cc)
                bSs.PriorityStatus = "Running " .. fns.dwb_142.label(Cc)
            end
            return true
        end
    else
        cdq_5 = fns.dwb_142.blocked(Cc)
        if cdq_5 then
            bSs.PriorityStatus = fns.dwb_142.label(Cc) .. " waiting on " .. fns.dwb_142.label(cdq_5)
            return cdp()
        elseif fns.dwb_135 then
            fns.dwb_142.interrupt(Cc)
            cdq_6 = fns.dwb_142.blocked(Cc)
            if cdq_6 then
                bSs.PriorityStatus = fns.dwb_142.label(Cc) .. " waiting on " .. fns.dwb_142.label(cdq_6)
            end
            cdr_3 = fns.dwb_135 or cdq_6
            if cdr_3 then
                return cdp()
            elseif not cdn() then
                return cdp()
            else
                fns.dwb_135 = true
                fns.dwb_142.lease = { thread = coroutine.running(), key = Cc, run = cdo }
                if cdp_10 then
                    fns.dwb_142.movementEpoch = (fns.dwb_142.movementEpoch or 0) + 1
                end
                fns.dwb_142.ownerRun = cdo
                fns.dwb_142.holder = Cc
                if Cc then
                    fns.dwb_142.lastClaim[Cc] = os.clock()
                    local cdp_9 = fns.dwb_142.byKey[Cc]
                    if cdp_12 then
                        cdp_9.controller.yield = false
                    end
                end
                if fns.dwb_142.active then
                    bSs.PriorityHolder = fns.dwb_142.label(Cc)
                    bSs.PriorityStatus = "Running " .. fns.dwb_142.label(Cc)
                end
                return true
            end
        elseif not cdn() then
            return cdp()
        else
            fns.dwb_135 = true
            fns.dwb_142.lease = { thread = coroutine.running(), key = Cc, run = cdo }
            cdp_10 = Cc and fns.dwb_142.byKey[Cc]
            local cdq_8 = cdp_10
            if cdp_10 then
                cdp_10 = cdq_8.moves ~= false
            end
            if cdp_10 then
                fns.dwb_142.movementEpoch = (fns.dwb_142.movementEpoch or 0) + 1
            end
            fns.dwb_142.ownerRun = cdo
            fns.dwb_142.holder = Cc
            if Cc then
                fns.dwb_142.lastClaim[Cc] = os.clock()
                cdp_12 = fns.dwb_142.byKey[Cc]
                if cdp_12 then
                    cdp_12.controller.yield = false
                end
            end
            if fns.dwb_142.active then
                bSs.PriorityHolder = fns.dwb_142.label(Cc)
                bSs.PriorityStatus = "Running " .. fns.dwb_142.label(Cc)
            end
            return true
        end
    end
end
bSu = fns.fn6415
fns.dwb_53 = function(CT, CU)
    local generation
    if CT.workerActive and not CT.stopped then
        return
    end
    CT.workerActive = true
    local cdG_1 = CT.generation
    local cdK = if cdG_1 then 1 else 0
    local cdI = 940 * cdK + 3536 * (1 - cdK)
    local cdJ = 2499 * cdK + 1151 * (1 - cdK)
    if not ((cdI * 3584 + cdJ * 1792 + cdI * cdJ) % 16777213 == 10196228) then
        cdG_1 = 0
    end
    CT.generation = cdG_1 + 1
    CT.stopped = false
    generation = CT.generation
    CT.startedAt = os.clock()
    CT.yield = false
    task.delay(0, function()
        local cdD_1
        local cdA = coroutine.running()
        local cdB = { controller = CT, generation = generation }
        fns.dwb_147.runs[cdA] = cdB
        while true do
            local cdC = (fns.dwb_118()) and not CT.stopped and CT.generation == generation
            local cdC_1
            if cdC then
                cdC_1, cdD_1 = pcall(CU)
                if fns.dwb_142.ownerRun == cdB then
                    bSu(CT.priorityKey)
                end
                if CT.generation == generation then
                    fns.dwb_142.done(CT.priorityKey)
                end
                if not cdC_1 then
                    warn("[Ouroboros] loop error: " .. tostring(cdD_1))
                end
                local cdC_2 = not fns.dwb_118() or CT.stopped or CT.generation ~= generation
                if cdC_2 then
                    break
                end
                task.wait(CT.interval)
                continue
            end
            break
        end
        fns.dwb_147.runs[cdA] = nil
        if CT.generation == generation then
            CT.workerActive = false
        end
    end)
end
fns.dwb_72 = fns.fn1644
fns.dwb_90 = fns.fn2854
bQi = fns.fn38
bRR = fns.fn2185
bP5 = function(DW, DX, DY)
    DX = DX or "LevelStatus"
    DY = DY or bSg.LevelController
    local ces_2 = fns.dwb_140(DW)
    if not ces_2 then
        return false, false, true
    end
    local cet = typeof(ces_2.QuestInstance) == "Instance" and ces_2.QuestInstance.Name
    local cet_1 = cet or DW
    local ces_4 = fns.dwb_9(cet_1)
    if not ces_4 then
        return false, false, true
    end
    local cet_2 = false
    for i, child in ipairs(ces_4:GetChildren()) do
        local Value
        local Value2 = child:FindFirstChild("Value")
        local Max = child:FindFirstChild("Max")
        if Value2 and Max and Value2.Value < Max.Value then
            cet_2 = true
            if bS2(child) then
                local Code = child:FindFirstChild("Code")
                local ces_7 = Code and Code.Value or child.Name
                local ceu_1 = fns.dwb_88(ces_7)
                if not ceu_1 then
                    bSs[DX] = "Cannot farm " .. child.Name
                    return false, false, true
                end
                bSs[DX] = string.format("%s %d/%d", child.Name, Value2.Value, Max.Value)
                Value = Max.Value
                local function ces_8()
                    local cek = Value2.Parent == nil
                    local ceo = if cek then 1 else 0
                    local cem = 1770 * ceo + 3263 * (1 - ceo)
                    local cen = 397 * ceo + 4014 * (1 - ceo)
                    if not ((cem * 3239 + cen * 3012 + cem * cen) % 16777213 == 7631484) then
                        cek = Max.Parent == nil
                    end
                    local ceo_1 = if cek then 1 else 0
                    local cem_1 = 1558 * ceo_1 + 3130 * (1 - ceo_1)
                    local cen_1 = 483 * ceo_1 + 1085 * (1 - ceo_1)
                    if not ((cem_1 * 1494 + cen_1 * 1000 + cem_1 * cen_1) % 16777213 == 3563166) then
                        cek = Value2.Value >= Value
                    end
                    return cek
                end
                return bTe(ceu_1, DX, 120, DY, ces_8), false, false
            end
        end
    end
    if cet_2 then
        bSs[DX] = "Quest tasks blocked"
        return false, false, true
    end
    bSs[DX] = "Quest complete"
    return true, true, false
end
fns.dwb_2 = fns.fn2871
fns.dwb_83 = fns.fn4824
bR4 = function()
    local ce__1
    if not fns.dwb_118() then
        return
    end
    local ceZ = bS4()
    local ceZ_2
    if not ceZ then
        local ceZ_1 = fns.dwb_2()
        if ceZ_1 > 0 then
            fns.dwb_142.uncommit("AutoLevel")
            bSs.LevelStatus = string.format("Quest cooldown %ds", math.ceil(ceZ_1))
            return
        end
    end
    fns.dwb_142.commit("AutoLevel")
    if not bSU("AutoLevel") then
        return
    end
    ceZ_2, ce__1 = pcall(function()
        local ceU_1
        local ceT_1
        local ceS_2
        if not fns.dwb_17(20) then
            bSs.LevelStatus = "Waiting for character"
            return
        end
        if bSg.LevelController.stopped then
            return
        end
        local ceQ = bS4()
        if ceQ then
            local ceR_1 = fns.dwb_140(ceQ)
            local ceP = fns.dwb_83(ceR_1, ceQ)
            local ceS_1 = ceR_1 and ceR_1.Category == "Combat" and fns.dwb_94(ceR_1)
            if ceS_1 then
                ceS_2, ceT_1, ceU_1 = bP5(ceQ)
                if bSg.LevelController.stopped then
                    return
                end
                if ceT_1 then
                    local ceS_3 = (bRD(function()
                        local ceM = fns.dwb_36()
                        local ceN = ceM == nil or ceM:FindFirstChild(ceP) == nil
                        return ceN
                    end, 4)) or bP3(ceR_1, ceP, "LevelStatus", bSg.LevelController)
                    if ceS_3 then
                        bSs.Quests = bSs.Quests + 1
                        bSs.LevelStatus = "Finished " .. fns.dwb_132(ceQ)
                    else
                        if not bSg.LevelController.yield and not bSg.LevelController.stopped then
                            fns.dwb_142.uncommit("AutoLevel")
                        end
                        bSs.LevelStatus = "Cannot hand in " .. fns.dwb_132(ceQ)
                    end
                elseif ceU_1 then
                    if bSg.LevelController.dropForeign then
                        bSs.LevelStatus = "Abandoning " .. ceP
                        bQ2(ceP)
                    else
                        fns.dwb_142.uncommit("AutoLevel")
                    end
                end
                return
            end
            if ceR_1 and ceR_1.Category == "BossHunt" then
                fns.dwb_142.uncommit("AutoLevel")
                bSs.LevelStatus = "Boss hunt in the quest slot"
                return
            end
            local ceQ_2 = bSg.LevelController.dropForeign
            if ceQ_2 then
                ceQ_2 = not ceR_1 or ceR_1.Category ~= "Combat"
            end
            if ceQ_2 then
                bSs.LevelStatus = "Abandoning " .. ceP
                bQ2(ceP)
                return
            end
            fns.dwb_142.uncommit("AutoLevel")
            bSs.LevelStatus = "Cannot farm this quest"
            return
        end
        local ceQ_3 = bRR()
        if not ceQ_3 then
            fns.dwb_142.uncommit("AutoLevel")
            local ceR_2 = fns.dwb_2()
            if ceR_2 > 0 then
                bSs.LevelStatus = string.format("Quest cooldown %ds", math.ceil(ceR_2))
            else
                bSs.LevelStatus = "No quest for level " .. bQt()
            end
            return
        end
        bSs.LevelStatus = "Accepting " .. fns.dwb_132(ceQ_3)
        if not bSh(ceQ_3, bSg.LevelController, "LevelStatus") then
            if not bSg.LevelController.yield and not bSg.LevelController.stopped then
                fns.dwb_142.uncommit("AutoLevel")
            end
            local ceS_6 = bSg.LevelController.stopped and "Idle"
            local ceY = if ceS_6 then 1 else 0
            local ceW = 1509 * ceY + 402 * (1 - ceY)
            local ceX = 2579 * ceY + 1609 * (1 - ceY)
            if not ((ceW * 2185 + ceX * 3562 + ceW * ceX) % 16777213 == 16375274) then
                ceS_6 = "Cannot accept " .. fns.dwb_132(ceQ_3)
            end
            bSs.LevelStatus = ceS_6
        end
    end)
    bSu("AutoLevel")
    if not ceZ_2 then
        warn("[Ouroboros] level step: " .. tostring(ce__1))
    end
end
bP3 = function(Fp, Fq, Fr, Fs)
    local ce9 = Fr
    local cff = if ce9 then 1 else 0
    local cfd = 3615 * cff + 4051 * (1 - cff)
    local cfe = 1810 * cff + 4015 * (1 - cff)
    if not ((cfd * 800 + cfe * 831 + cfd * cfe) % 16777213 == 10939260) then
        ce9 = "QuestStatus"
    end
    Fr = ce9
    Fs = Fs or bSg.QuestController
    local ce9_2 = type(Fp) == "table" and Fp.OfferNpc
    local ce7 = ce9_2 or nil
    local ce9_3 = ce7 == ""
    local cfa_1 = type(ce7) ~= "string" or ce9_3
    if cfa_1 then
        return false
    end
    local ce8 = fns.dwb_122(Fs)
    local function ce9_4()
        local ce1 = fns.dwb_36()
        local ce2 = ce1 == nil or ce1:FindFirstChild(Fq) == nil
        return ce2
    end
    local cfa_2 = bQQ(ce7)
    if not cfa_2 then
        local cfb = fns.dwb_41(ce7)
        if not cfb then
            return false
        end
        bSs[Fr] = "Returning to " .. ce7
        fns.dwb_111(cfb + Vector3.new(0, 3, 0), 0.5, ce8)
        local cfb_1 = ce8 and ce8()
        if cfb_1 then
            return false
        end
        bRD(function()
            local ce4 = bQQ(ce7) ~= nil
            if not ce4 then
                local ce5 = ce8 ~= nil and ce8()
                ce4 = ce5
            end
            return ce4
        end, 8)
        local cfa_3 = bQQ(ce7)
        if not cfa_2 then
            return false
        end
        bR5(cfa_3)
        local cfa_4 = bRD(ce9_4, 6)
        bQR("NpcTalking", "Ended")
        return cfa_4
    elseif not cfa_2 then
        return false
    else
        bR5(cfa_2)
        local cfa_5 = bRD(ce9_4, 6)
        bQR("NpcTalking", "Ended")
        return cfa_5
    end
end
bQf = function()
    local cfQ_1
    local cfP = not fns.dwb_118() or bQi(bSg.QuestController.quests) == 0
    local cfP_1
    if cfP then
        return
    end
    fns.dwb_142.commit("AutoQuest")
    if not bSU("AutoQuest") then
        return
    end
    cfP_1, cfQ_1 = pcall(function()
        local cfw_1
        local cfv_1
        if not fns.dwb_17(20) then
            bSs.QuestStatus = "Waiting for character"
            return
        end
        local cfq = {}
        for k in pairs(bSg.QuestController.quests) do
            cfq[#cfq + 1] = k
        end
        table.sort(cfq)
        local function cfr(Ga, Gb)
            local cfg = type(Ga) == "table" and typeof(Ga.QuestInstance) == "Instance"
            return cfg and Ga.QuestInstance.Name or Gb
        end
        local cfs = fns.dwb_36()
        for i, v in ipairs(cfq) do
            if bSg.QuestController.stopped then
                return
            end
            local cft_1 = fns.dwb_140(v)
            local cfp = cfr(cft_1, v)
            local cfu = cfs and cfs:FindFirstChild(cfp)
            local cfu_1
            if cfu then
                cfu_1, cfw_1, cfv_1 = bP5(v, "QuestStatus", bSg.QuestController)
                if cfv_1 then
                    bSs.QuestStatus = "Dropping stuck " .. fns.dwb_132(v)
                    bQ2(cfp)
                    return
                end
                if cfw_1 then
                    bSs.QuestStatus = "Handing in " .. fns.dwb_132(v)
                    local cfu_2 = (bRD(function()
                        local cfm = fns.dwb_36()
                        local cfn = cfm == nil or cfm:FindFirstChild(cfp) == nil
                        return cfn
                    end, 6)) or bP3(cft_1, cfp, "QuestStatus", bSg.QuestController)
                    if cfu_2 then
                        bSs.Quests = bSs.Quests + 1
                        bSs.QuestStatus = "Finished " .. fns.dwb_132(v)
                    else
                        if not bSg.QuestController.yield and not bSg.QuestController.stopped then
                            fns.dwb_142.uncommit("AutoQuest")
                        end
                        bSs.QuestStatus = "Cannot hand in " .. fns.dwb_132(v)
                    end
                end
                return
            end
        end
        local cft_4 = bS4()
        if cft_4 then
            local cfs_1 = fns.dwb_140(cft_4)
            bSs.QuestStatus = "Clearing quest slot"
            bQ2(cfr(cfs_1, cft_4))
            return
        end
        local cfr_1 = fns.dwb_2()
        if cfr_1 > 0 then
            fns.dwb_142.uncommit("AutoQuest")
            bSs.QuestStatus = string.format("Quest cooldown %ds", math.ceil(cfr_1))
            return
        end
        for i, v in ipairs(cfq) do
            if bSg.QuestController.stopped then
                return
            end
            local cfq_1 = fns.dwb_140(v)
            local cfr_2 = cfq_1 and fns.dwb_128(cfq_1)
            if cfr_2 then
                bSs.QuestStatus = "Accepting " .. fns.dwb_132(v)
                if bSh(v, bSg.QuestController, "QuestStatus") then
                    return
                end
            end
        end
        fns.dwb_142.uncommit("AutoQuest")
        bSs.QuestStatus = "Cannot take a selected quest"
    end)
    bSu("AutoQuest")
    if not cfP_1 then
        warn("[Ouroboros] quest step: " .. tostring(cfQ_1))
    end
end
fns.dwb_11.DELIVERY_QUEST = "Ill deliver the supply box(Lv 70)"
bSg.DeliveryController.deliverTask = function(GN, GO, GP, GQ)
    local cfV
    local Value
    Value = nil
    cfV = nil
    local cfZ_1
    local cfW = fns.dwb_140(GN)
    local cfX = type(cfW) == "table" and type(cfW.TaskSpecs) == "table" and cfW.TaskSpecs[GO.Name]
    local cfW_1 = cfX
    local cf2 = if cfW_1 then 1 else 0
    local cf0 = 3769 * cf2 + 3194 * (1 - cf2)
    local cf1 = 1932 * cf2 + 147 * (1 - cf2)
    if not ((cf0 * 2257 + cf1 * 3468 + cf0 * cf1) % 16777213 == 5711304) then
        cfW_1 = nil
    end
    local cfX_1 = cfW_1
    local cfW_2 = type(cfX_1) == "table" and cfX_1.TargetNpc
    local cfX_2 = cfW_2 or nil
    local cfX_3 = cfX_2 == ""
    local cfY = type(cfX_2) ~= "string" or cfX_3
    local cfY_1
    if cfY then
        return false
    end
    local cfX_4 = fns.dwb_122(GQ)
    cfZ_1, cfY_1 = bQe.reachNpc(cfX_2, cfX_4, GP)
    if not cfZ_1 then
        bSs[GP] = "Cannot reach " .. cfX_2
        return false
    end
    bSs[GP] = GO.Name
    bR5(cfZ_1)
    if not bQe.closeOnNpc(cfY_1, cfX_4, cfZ_1, 1) then
        bQR("NpcTalking", "Ended")
        return false
    end
    Value = GO:FindFirstChild("Value")
    local Max = GO:FindFirstChild("Max")
    cfV = Max and Max.Value or 1
    bQR("QuestProgress", GN, GO.Name)
    local cfW_6 = bRD(function()
        return Value == nil or Value.Parent == nil or Value.Value >= cfV
    end, 5)
    bQR("NpcTalking", "Ended")
    return cfW_6
end
bSg.DeliveryController.step = function()
    local cgj, cgk
    if not fns.dwb_118() then
        return
    end
    cgj = fns.dwb_140(fns.dwb_11.DELIVERY_QUEST)
    if not cgj then
        bSs.DeliveryStatus = "Cannot read the delivery quest"
        return
    end
    cgk = fns.dwb_83(cgj, fns.dwb_11.DELIVERY_QUEST)
    local cgl = fns.dwb_36()
    local cgl_4
    local cgm = cgl and cgl:FindFirstChild(cgk)
    local cgm_3
    local cgl_1 = cgm
    local cgt = if cgl_1 then 1 else 0
    local cgr = 325 * cgt + 2091 * (1 - cgt)
    local cgs = 1007 * cgt + 4074 * (1 - cgt)
    if not ((cgr * 1721 + cgs * 689 + cgr * cgs) % 16777213 == 1580423) then
        cgl_1 = nil
    end
    if not cgl_1 then
        if not fns.dwb_128(cgj) then
            fns.dwb_142.uncommit("AutoDelivery")
            local cgl_2 = type(cgj.Requirements) == "table" and cgj.Requirements.Level
            local cgm_2 = cgl_2 or "?"
            bSs.DeliveryStatus = "Needs level " .. tostring(cgm_2)
            return
        end
        local cgl_3 = fns.dwb_2()
        if cgl_3 > 0 then
            fns.dwb_142.uncommit("AutoDelivery")
            bSs.DeliveryStatus = string.format("Quest cooldown %ds", math.ceil(cgl_3))
            return
        end
    end
    fns.dwb_142.commit("AutoDelivery")
    local cgt_1 = if not bSU("AutoDelivery") then 1 else 0
    if cgt_1 == 1 then
        return
    end
    cgl_4, cgm_3 = pcall(function()
        if not fns.dwb_17(20) then
            bSs.DeliveryStatus = "Waiting for character"
            return
        end
        if bSg.DeliveryController.stopped then
            return
        end
        local cf6 = fns.dwb_9(cgk)
        if not cf6 then
            if not fns.dwb_128(cgj) then
                fns.dwb_142.uncommit("AutoDelivery")
                bSs.DeliveryStatus = "Level too low"
                return
            end
            local cgc = if fns.dwb_2() > 0 then 1 else 0
            if cgc == 1 then
                fns.dwb_142.uncommit("AutoDelivery")
                bSs.DeliveryStatus = string.format("Quest cooldown %ds", math.ceil(fns.dwb_2()))
                return
            end
            bSs.DeliveryStatus = "Accepting " .. fns.dwb_132(fns.dwb_11.DELIVERY_QUEST)
            if not bSh(fns.dwb_11.DELIVERY_QUEST, bSg.DeliveryController, "DeliveryStatus") then
                if not bSg.DeliveryController.yield and not bSg.DeliveryController.stopped then
                    fns.dwb_142.uncommit("AutoDelivery")
                end
                bSs.DeliveryStatus = bSg.DeliveryController.stopped and "Idle" or "Cannot take the delivery quest"
            end
            return
        end
        for i, child in ipairs(cf6:GetChildren()) do
            if bSg.DeliveryController.stopped then
                return
            end
            local Value = child:FindFirstChild("Value")
            local Max = child:FindFirstChild("Max")
            local cf8_2 = Value and Max and Value.Value < Max.Value and bS2(child)
            if cf8_2 then
                if not bSg.DeliveryController.deliverTask(fns.dwb_11.DELIVERY_QUEST, child, "DeliveryStatus", bSg.DeliveryController) then
                    if not bSg.DeliveryController.yield and not bSg.DeliveryController.stopped then
                        fns.dwb_142.uncommit("AutoDelivery")
                    end
                end
                return
            end
        end
        bSs.DeliveryStatus = "Finishing the delivery"
        local cf6_3 = (bRD(function()
            local cf3 = fns.dwb_36()
            local cf4 = cf3 == nil or cf3:FindFirstChild(cgk) == nil
            return cf4
        end, 4)) or bP3(cgj, cgk, "DeliveryStatus", bSg.DeliveryController)
        if cf6_3 then
            bSs.Quests = bSs.Quests + 1
            bSs.DeliveryStatus = "Delivered"
        else
            if not bSg.DeliveryController.yield and not bSg.DeliveryController.stopped then
                fns.dwb_142.uncommit("AutoDelivery")
            end
            bSs.DeliveryStatus = "Cannot close out the delivery"
        end
    end)
    bSu("AutoDelivery")
    if not cgl_4 then
        warn("[Ouroboros] delivery step: " .. tostring(cgm_3))
    end
end
bSg.HuntController.offers = fns.fn417
bSg.HuntController.canClaim = fns.fn6661
bSg.HuntController.denial = fns.fn5166
bSg.HuntController.active = fns.fn5282
bSg.HuntController.target = fns.fn5063
bSg.HuntController.wanted = fns.fn4172
bSg.HuntController.reward = fns.fn6716
bSg.HuntController.claim = fns.fn617
bSg.HuntController.step = fns.fn810
bSg.DemonController.settings = fns.fn6723
bSg.DemonController.number = fns.fn5201
bSg.DemonController.attribute = fns.fn3334
bSg.DemonController.owns = fns.fn3642
bSg.DemonController.reputation = fns.fn5080
bSg.DemonController.inLair = fns.fn5895
bSg.DemonController.inCombat = fns.fn4927
bSg.DemonController.night = fns.fn1388
bSg.DemonController.phaseIn = fns.fn6834
bSg.DemonController.promptIn = fns.fn4418
bSg.DemonController.questNode = fns.fn5226
bSg.DemonController.hold = fns.fn129
bSg.DemonController.useTool = fns.fn5032
bSg.DemonController.putBack = fns.fn3447
bSg.DemonController.roam = fns.fn671
bSg.DemonController.sweep = fns.fn6128
bSg.DemonController.route = fns.fn6055
bSg.DemonController.remember = fns.fn1003
bSg.DemonController.muzanRoute = fns.fn6842
bSg.DemonController.muzan = fns.fn3348
bSg.DemonController.named = fns.fn5477
bSg.DemonController.nearestLily = fns.fn5247
bSg.DemonController.farmReputation = function(L0)
    local repMob = bSg.DemonController.repMob
    local ckn = repMob == ""
    local cko = type(repMob) ~= "string" or ckn
    if cko then
        bSs.DemonStatus = "No reputation mob picked"
        return
    end
    local ckn_1 = bSg.DemonController.reputation()
    bSs.DemonStatus = string.format("Reputation %d of %d, killing %s", ckn_1, L0, repMob)
    local cko_1 = bTe(repMob, "DemonStatus", 120, bSg.DemonController, function()
        return bSg.DemonController.reputation() <= L0
    end)
    if bSg.DemonController.stopped or not cko_1 then
        return
    end
    if bSg.DemonController.reputation() < ckn_1 then
        bSg.DemonController.wasted = 0
        return
    end
    local DemonController = bSg.DemonController
    DemonController.wasted = (bSg.DemonController.wasted or 0) + 1
    if bSg.DemonController.wasted >= 3 then
        bSs.DemonStatus = "Killing " .. repMob .. " does not lower reputation"
    end
end
bSg.DemonController.getBell = fns.fn2684
bSg.DemonController.ringBell = fns.fn2864
bSg.DemonController.askMuzan = fns.fn2996
bSg.DemonController.lilies = function(M_, M0)
    local ckS
    local Value
    Value = nil
    ckS = nil
    local ckT = string.format("Spider Lilies %d/%d", M_.Value, M0.Value)
    ckS = bSg.DemonController.nearestLily()
    if not ckS then
        bSs.DemonStatus = ckT .. ", searching"
        if not bSg.DemonController.roam(bSg.DemonController.route(), 1.5) then
            bSs.DemonStatus = ckT .. ", nowhere to search"
            task.wait(2)
        end
        return
    end
    bSs.DemonStatus = ckT
    local Position = ckS:GetPivot().Position
    fns.dwb_111(Position + Vector3.new(0, 3, 0), 0.3, fns.dwb_122(bSg.DemonController))
    if bSg.DemonController.stopped then
        return
    end
    local ckU = bSg.DemonController.promptIn(ckS)
    if not ckU then
        return
    end
    Value = M_.Value
    bR5(ckU)
    bSg.DemonController.remember(Position)
    bRD(function()
        local ckM = M_.Value > Value
        local ckQ = if ckM then 1 else 0
        local ckO = 724 * ckQ + 2943 * (1 - ckQ)
        local ckP = 1349 * ckQ + 2806 * (1 - ckQ)
        if not ((ckO * 780 + ckP * 3540 + ckO * ckP) % 16777213 == 6316856) then
            ckM = ckS.Parent == nil
        end
        return ckM
    end, 4)
end
bSg.DemonController.higoshima = function(Nd, Ne)
    local ck1 = bSg.DemonController.settings()
    local attr = LocalPlayer:GetAttribute("HigoshimaDeliverTo")
    if typeof(attr) ~= "CFrame" then
        local ck3_1 = ck1 and ck1.HigoshimaSpawn
        if typeof(ck3_1) ~= "CFrame" then
            bSs.DemonStatus = "Cannot find Dr. Higoshima"
            task.wait(2)
            return
        end
        bSs.DemonStatus = "Fetching Dr. Higoshima"
        fns.dwb_111(ck3_1.Position + Vector3.new(0, 3, 0), 0.5, fns.dwb_122(bSg.DemonController))
        if bSg.DemonController.stopped then
            return
        end
        local ck1_2 = bSg.DemonController.promptIn(bSg.DemonController.named("Dr. Higoshima"))
        if ck1_2 then
            bR5(ck1_2)
            task.wait(1)
            bQR("NpcTalking", "Ended")
        end
        bRD(function()
            return typeof(LocalPlayer:GetAttribute("HigoshimaDeliverTo")) == "CFrame"
        end, 6)
        return
    end
    local ck1_3 = fns.dwb_4()
    if not ck1_3 then
        return
    end
    bSs.DemonStatus = string.format("Escorting Dr. Higoshima %d/%d", Nd.Value, Ne.Value)
    local ck3_2 = attr.Position - ck1_3.Position
    local ck1_4 = ck3_2.Magnitude > 120 and ck1_3.Position + ck3_2.Unit * 120 or attr.Position
    fns.dwb_111(ck1_4 + Vector3.new(0, 3, 0), 0.2, fns.dwb_122(bSg.DemonController))
    if bSg.DemonController.stopped then
        return
    end
    local ck0 = bSg.DemonController.named("Dr. Higoshima")
    if ck0 then
        bRD(function()
            local ckW = fns.dwb_4()
            local ckX = ck0.Parent == nil or ckW == nil or (ck0:GetPivot().Position - ckW.Position).Magnitude < 40
            return ckX
        end, 8)
    end
    local ck1_5 = fns.dwb_4()
    local ck3_4 = ck1_5 and (attr.Position - ck1_5.Position).Magnitude <= bSg.DemonController.number("HigoshimaSafeRadius", 10)
    if ck3_4 then
        bRD(function()
            local ckZ = Nd.Value >= Ne.Value or typeof(LocalPlayer:GetAttribute("HigoshimaDeliverTo")) ~= "CFrame"
            return ckZ
        end, 6)
    end
end
bSg.DemonController.workQuest = fns.fn1088
bSg.DemonController.drinkBlood = fns.fn6765
bSg.DemonController.step = fns.fn5234
bQH = fns.fn3256
fns.dwb_134 = {}
fns.dwb_134.farm = function()
    local cl5_1
    local cl4 = not fns.dwb_118()
    local cl4_1
    local cl9 = if cl4 then 1 else 0
    local cl7 = 773 * cl9 + 2696 * (1 - cl9)
    local cl8 = 1356 * cl9 + 396 * (1 - cl9)
    if not ((cl7 * 1622 + cl8 * 25 + cl7 * cl8) % 16777213 == 2335894) then
        cl4 = not bSU("AutoDungeon")
    end
    if cl4 then
        return
    end
    cl4_1, cl5_1 = pcall(function()
        local clP, range, clR
        local clT_1
        if not fns.dwb_17(20) then
            bSs.DungeonStatus = "Waiting for character"
            return
        end
        clR = { Horse = true, Civilian = true, ["*Civilian*"] = true }
        local clS = type(fns.dwb_26.MinigameSettings) == "table" and bQG(fns.dwb_26.MinigameSettings.Active)
        local clS_1
        if clS then
            clS_1, clT_1 = fns.dwb_144(fns.dwb_26.MinigameSettings.Active)
            local clU = clS_1 and type(clT_1) == "table" and clT_1.Enemies
            local clS_2 = clU or nil
            local clS_3 = type(clS_2) == "table" and type(clS_2.Exclude) == "table"
            if clS_3 then
                for i, v in ipairs(clS_2.Exclude) do
                    clR[v] = true
                end
            end
        end
        local clS_4 = fns.dwb_4()
        local clS_5 = clS_4 and clS_4.Position
        local cl3 = if clS_5 then 1 else 0
        local cl1 = 2946 * cl3 + 383 * (1 - cl3)
        local cl2 = 615 * cl3 + 3813 * (1 - cl3)
        if not ((cl1 * 1371 + cl2 * 1657 + cl1 * cl2) % 16777213 == 6869811) then
            clS_5 = Vector3.zero
        end
        clP = clS_5
        range = bSg.DungeonController.range
        local clS_6 = bRH(function(OZ)
            local clK = clR[OZ.name]
            local clO = if clK then 1 else 0
            local clM = 839 * clO + 3411 * (1 - clO)
            local clN = 3815 * clO + 246 * (1 - clO)
            if not ((clM * 316 + clN * 1803 + clM * clN) % 16777213 == 10344354) then
                clK = fns.dwb_11.PASSIVE_MOBS[OZ.name]
            end
            if clK then
                return false
            end
            local clK_1 = range <= 0 or (OZ.model:GetPivot().Position - clP).Magnitude <= range
            return clK_1
        end)
        if not clS_6 then
            bSs.DungeonStatus = "No enemies nearby"
            return
        end
        bSs.DungeonStatus = "Fighting " .. clS_6.name
        bSH(clS_6, "DungeonStatus", 120, bSg.DungeonController)
    end)
    bSu("AutoDungeon")
    if not cl4_1 then
        warn("[Ouroboros] dungeon step: " .. tostring(cl5_1))
    end
end
fns.dwb_134.bring = fns.fn4503
fns.dwb_134.healGate = fns.fn4757
fns.dwb_134.offerBlocked = fns.fn2135
fns.dwb_134.cards = function()
    local OuwigaharaOffers
    local cmP_1
    local cmO_1
    local cmN_1
    local cmM_1
    local cmJ_1
    local cmI_1
    if not fns.dwb_118() then
        return
    end
    OuwigaharaOffers = LocalPlayer:FindFirstChild("OuwigaharaOffers")
    if not OuwigaharaOffers then
        bSs.CardStatus = "No cards offered"
        return
    end
    if OuwigaharaOffers:GetAttribute("Picked") ~= nil then
        bSs.CardStatus = "Card already picked"
        return
    end
    cmI_1, cmJ_1 = fns.dwb_134.healGate()
    local cards = bSg.CardController.cards
    local cmL = not cmI_1
    local cmL_1
    if cmL ~= false then
        cmL = next(cards) == nil
    end
    if cmL then
        bSs.CardStatus = "No cards selected"
        return
    end
    cmN_1, cmM_1, cmL_1 = nil, nil, nil
    cmP_1, cmO_1 = nil, nil
    local cmQ = false
    for i, child in ipairs(OuwigaharaOffers:GetChildren()) do
        local attr2 = child:GetAttribute("Type")
        local attr = child:GetAttribute("Event")
        local cmY = if fns.dwb_134.offerBlocked(attr2, attr) then 1 else 0
        if cmY == 1 then
            cmQ = true
        else
            local cmS_1 = (tonumber(child:GetAttribute("Rarity"))) or 0
            local cmT = cmI_1
            if cmT then
                cmT = type(attr2) == "string"
            end
            if cmT then
                cmT = fns.dwb_11.HEAL_CARDS[attr2]
            end
            if cmT then
                cmT = not cmP_1 or cmS_1 > cmO_1
            end
            if cmT then
                cmP_1, cmO_1 = child, cmS_1
            end
            local cmS_3 = type(attr2) == "string" and cards[attr2]
            if cmS_3 then
                local cmS_4 = (tonumber(bSg.CardController.priority[attr2])) or 5
                local cmR_1 = not cmM_1
                if not cmR_1 then
                    cmR_1 = cmS_4 < cmM_1
                end
                if not cmR_1 then
                    cmR_1 = cmS_4 == cmM_1 and cmS_1 > cmL_1
                end
                if cmR_1 then
                    cmN_1, cmM_1, cmL_1 = child, cmS_4, cmS_1
                end
            end
        end
    end
    if cmP_1 then
        cmN_1 = cmP_1
    end
    if not cmN_1 then
        bSs.CardStatus = cmQ and "Nothing chosen, Bare Hands blocked" or "Nothing chosen in this hand"
        return
    end
    local cmI_3 = (cmN_1:GetAttribute("Title")) or cmN_1:GetAttribute("Type") or cmN_1.Name
    local cmK_2 = cmP_1
    if cmK_2 then
        cmK_2 = string.format("Health %d%%, taking %s", math.floor(cmJ_1), tostring(cmI_3))
    end
    local cmI_4 = cmK_2 or "Picking " .. tostring(cmI_3)
    bSs.CardStatus = cmI_4
    bQR("OuwigaharaRequest", { action = "Pick", id = cmN_1.Name })
    bRD(function()
        local cmF = not OuwigaharaOffers:IsDescendantOf(LocalPlayer) or OuwigaharaOffers:GetAttribute("Picked") ~= nil
        return cmF
    end, 2)
end
fns.dwb_134.waves = fns.fn3794
fns.dwb_24 = {}
fns.dwb_24.opened = setmetatable({}, { __mode = "k" })
fns.dwb_24.retryAt = setmetatable({}, { __mode = "k" })
fns.dwb_24.tries = setmetatable({}, { __mode = "k" })
fns.dwb_11.CHEST_RETRY = { 3, 8, 15, 30 }
fns.dwb_24.denied = {}
fns.dwb_24.deniedAt = 0
fns.dwb_24.isOpened = fns.fn785
fns.dwb_24.notices = fns.dwb_87.Communication.CnC.Notifications.Notification.Event:Connect(fns.onEvent)
fns.dwb_123.Track(fns.fn3449)
fns.dwb_24.open = function(Qv, Qw, Qx)
    local cnx, cny, cnz
    local cnG_2
    local cnF_2
    local cnC_6
    local cnB_10, cnB_11
    cnz = fns.dwb_147.runs[coroutine.running()]
    local cnA = Qx
    local cnA_5, cnA_7
    if not cnA then
        local cnB_1 = cnz and fns.dwb_122(cnz.controller)
        cnA = cnB_1
    end
    cny = cnA
    local function cnA_1()
        local cnk = not fns.dwb_118()
        if not cnk then
            local cnl_1 = cny and cny()
            cnk = cnl_1
        end
        if not cnk then
            local cnl_2 = cnz and not fns.dwb_147.controllerValid(cnz.controller)
            cnk = cnl_2
        end
        return cnk
    end
    if cnA_1() then
        return false
    end
    local cnB_2 = typeof(Qv) ~= "Instance" or not Qv:IsDescendantOf(bSf)
    if cnB_2 then
        return false
    end
    local cnB_3 = (fns.dwb_24.isOpened(Qv))
    if not cnB_3 then
        local cnC_1 = os.clock()
        cnB_3 = cnC_1 < (fns.dwb_24.retryAt[Qv] or 0)
    end
    if cnB_3 then
        return false
    elseif Qv:GetAttribute("ChestState") == "Locked" then
        bSs[Qw] = "Waiting for chest to unlock"
        bRD(function()
            local cnq = not Qv:IsDescendantOf(bSf) or Qv:GetAttribute("ChestState") ~= "Locked"
            return cnq
        end, 4, cnA_1, 0.03)
        local cnB_4 = (cnA_1()) or not Qv:IsDescendantOf(bSf) or Qv:GetAttribute("ChestState") == "Locked"
        if cnB_4 then
            return false
        end
        bSs[Qw] = "Opening chest"
        local standBy = fns.dwb_147.standBy
        local cnC_2 = Qv.PrimaryPart or Qv:FindFirstChildWhichIsA("BasePart", true)
        local cnD_2 = standBy(cnC_2, Qv:GetPivot().Position)
        local cnB_6 = not fns.dwb_111(cnD_2.Position, 0, cnA_1, true) or cnA_1() or not Qv:IsDescendantOf(bSf)
        if cnB_10 then
            return false
        end
        fns.dwb_147.holdAt(cnD_2)
        task.wait(0.15)
        local cnB_7 = fns.dwb_6(Qv)
        local cnC_3 = (cnA_1()) or not cnB_7 or fns.dwb_24.isOpened(Qv)
        if cnC_6 then
            fns.dwb_147.releaseHold()
            return false
        end
        local tries = fns.dwb_24.tries
        tries[Qv] = (fns.dwb_24.tries[Qv] or 0) + 1
        fns.dwb_24.retryAt[Qv] = os.clock() + fns.dwb_11.CHEST_RETRY[math.min(fns.dwb_24.tries[Qv], #fns.dwb_11.CHEST_RETRY)]
        cnx = os.clock()
        if not bR5(cnB_11) then
            fns.dwb_147.releaseHold()
            return false
        end
        bRD(function()
            local cns = Qv:GetAttribute("IsOpen") == true or Qv:GetAttribute("ChestState") == "Opened"
            local cnw = if cns then 1 else 0
            local cnu = 763 * cnw + 3795 * (1 - cnw)
            local cnv = 1008 * cnw + 689 * (1 - cnw)
            if not ((cnu * 3791 + cnv * 1100 + cnu * cnv) % 16777213 == 4770437) then
                cns = not Qv:IsDescendantOf(bSf)
            end
            if not cns then
                cns = fns.dwb_24.deniedAt >= cnx
            end
            return cns
        end, 3, cnA_1, 0.03)
        fns.dwb_147.releaseHold()
        local cnH_1 = if cnA_1() then 1 else 0
        if cnH_1 == 1 then
            return false
        end
        local cnA_2 = fns.dwb_24.deniedAt >= cnx and Qv:GetAttribute("IsOpen") ~= true and Qv:GetAttribute("ChestState") ~= "Opened"
        if cnA_5 then
            local denied = fns.dwb_24.denied
            local cnB_8 = (Qv:GetAttribute("ChestGuid"))
            if not ((cnF_2 * 1170 + cnG_2 * 3897 + cnF_2 * cnG_2) % 16777213 == 11569806) then
                cnB_8 = Qv
            end
            denied[cnB_8] = true
            bSs[Qw] = "Skipped chest: " .. fns.dwb_24.deniedText
            return false
        end
        local cnA_4 = Qv:GetAttribute("IsOpen") == true or Qv:GetAttribute("ChestState") == "Opened"
        if cnA_7 then
            fns.dwb_24.opened[Qv] = true
            fns.dwb_24.tries[Qv] = nil
            bSs.Chests = bSs.Chests + 1
            bSs[Qw] = "Chest opened"
            return true
        end
        bSs[Qw] = "Chest opening unconfirmed; retry delayed"
        return false
    else
        bSs[Qw] = "Opening chest"
        local standBy = fns.dwb_147.standBy
        local cnC_5 = Qv.PrimaryPart or Qv:FindFirstChildWhichIsA("BasePart", true)
        local cnD_4 = standBy(cnC_5, Qv:GetPivot().Position)
        cnB_10 = not fns.dwb_111(cnD_4.Position, 0, cnA_1, true) or cnA_1() or not Qv:IsDescendantOf(bSf)
        if cnB_10 then
            return false
        end
        fns.dwb_147.holdAt(cnD_4)
        task.wait(0.15)
        cnB_11 = fns.dwb_6(Qv)
        cnC_6 = (cnA_1()) or not cnB_11 or fns.dwb_24.isOpened(Qv)
        if cnC_6 then
            fns.dwb_147.releaseHold()
            return false
        end
        local tries = fns.dwb_24.tries
        tries[Qv] = (fns.dwb_24.tries[Qv] or 0) + 1
        fns.dwb_24.retryAt[Qv] = os.clock() + fns.dwb_11.CHEST_RETRY[math.min(fns.dwb_24.tries[Qv], #fns.dwb_11.CHEST_RETRY)]
        cnx = os.clock()
        if not bR5(cnB_11) then
            fns.dwb_147.releaseHold()
            return false
        end
        bRD(function()
            local cns = Qv:GetAttribute("IsOpen") == true or Qv:GetAttribute("ChestState") == "Opened"
            local cnw = if cns then 1 else 0
            local cnu = 763 * cnw + 3795 * (1 - cnw)
            local cnv = 1008 * cnw + 689 * (1 - cnw)
            if not ((cnu * 3791 + cnv * 1100 + cnu * cnv) % 16777213 == 4770437) then
                cns = not Qv:IsDescendantOf(bSf)
            end
            if not cns then
                cns = fns.dwb_24.deniedAt >= cnx
            end
            return cns
        end, 3, cnA_1, 0.03)
        fns.dwb_147.releaseHold()
        local cnH_3 = if cnA_1() then 1 else 0
        if cnH_3 == 1 then
            return false
        end
        cnA_5 = fns.dwb_24.deniedAt >= cnx and Qv:GetAttribute("IsOpen") ~= true and Qv:GetAttribute("ChestState") ~= "Opened"
        if cnA_5 then
            local denied = fns.dwb_24.denied
            local cnB_12 = (Qv:GetAttribute("ChestGuid"))
            local cnH_4 = if cnB_12 then 1 else 0
            cnF_2 = 3375 * cnH_4 + 1472 * (1 - cnH_4)
            cnG_2 = 1048 * cnH_4 + 230 * (1 - cnH_4)
            if not ((cnF_2 * 1170 + cnG_2 * 3897 + cnF_2 * cnG_2) % 16777213 == 11569806) then
                cnB_12 = Qv
            end
            denied[cnB_12] = true
            bSs[Qw] = "Skipped chest: " .. fns.dwb_24.deniedText
            return false
        end
        cnA_7 = Qv:GetAttribute("IsOpen") == true or Qv:GetAttribute("ChestState") == "Opened"
        if cnA_7 then
            fns.dwb_24.opened[Qv] = true
            fns.dwb_24.tries[Qv] = nil
            bSs.Chests = bSs.Chests + 1
            bSs[Qw] = "Chest opened"
            return true
        end
        bSs[Qw] = "Chest opening unconfirmed; retry delayed"
        return false
    end
end
fns.dwb_24.idsCache, fns.dwb_24.idsAt, fns.dwb_24.idsTtl = nil, -math.huge, 0
fns.dwb_24.bossIds = fns.fn7228
fns.dwb_24.isBoss = fns.fn6904
bSg.LootController.afterKill = fns.fn467
fns.dwb_24.bossNearby = fns.fn2479
bRr, fns.dwb_85, fns.dwb_45 = nil, nil, nil
fns.dwb_11.BOSS_DWELL = 20
fns.dwb_11.BOSS_SKIP = 45
fns.dwb_11.BOSS_STREAM_GRACE = 3
fns.dwb_11.BOSS_COLLECT_YIELD = 15
fns.dwb_11.BOSS_COLLECT_CAP = 90
bRr = function()
    local cpj
    local cpk
    local BossController
    BossController = nil
    cpj = nil
    cpk = nil
    local cpg, cph, cpl, cpm
    local cpx_1
    local cpw_2
    local item
    local cpu_2
    local cps_3
    local cpr_4
    BossController = bSg.BossController
    local cpn = not fns.dwb_147.controllerValid(BossController) or bQi(BossController.bosses) == 0
    local cpn_5
    if cpn then
        return
    end
    cpl = fns.dwb_122(BossController)
    local waitSample = BossController.waitSample
    BossController.waitSample = nil
    local cpo = waitSample and waitSample.name == BossController.waitName
    local cpo_5
    if cpo then
        cpo = waitSample.epoch == (fns.dwb_142.movementEpoch or 0)
    end
    if cpo then
        cpo = waitSample.ready
    end
    if cpo then
        local cpo_1 = fns.dwb_4()
        if cpo_1 and (cpo_1.Position - waitSample.point).Magnitude <= 12 then
            local cpo_2 = BossController.dwell or 0
            BossController.dwell = cpo_2 + math.max(0, os.clock() - waitSample.at)
        end
    end
    cpj = {}
    for k in pairs(BossController.bosses) do
        cpj[#cpj + 1] = k
    end
    table.sort(cpj)
    cpm = function(R7)
        local coi = fns.dwb_47(R7)
        local coj = coi and coi:FindFirstChild("BossInfo")
        local cok = coi
        if cok then
            cok = coi:GetAttribute("DespawnedAt")
        end
        local coi_1 = coj
        local coj_1 = cok
        if coi_1 then
            coi_1 = coj:GetAttribute("SpawnTime")
        end
        local cok_1 = coi_1
        local coi_2 = type(coj_1) ~= "number" or type(cok_1) ~= "number"
        if coi_2 then
            return 0
        end
        return coj_1 + cok_1
    end
    cpg = function(Sj)
        local con = fns.dwb_47(Sj)
        local coo = con and con:FindFirstChild("BossInfo")
        if not coo then
            return true
        end
        local coo_1 = coo:GetAttribute("OnlyAtNight") == true and not bSg.DemonController.night()
        if coo_1 then
            return false, "night"
        end
        local coo_2 = fns.dwb_11.BOSS_SUMMONS[Sj]
        if coo_2 then
            if fns.dwb_52(coo_2.item) > 0 then
                return true
            end
            return false, "item"
        end
        local coo_3 = con:GetAttribute("Temporary") == true and coo:GetAttribute("SpawnCountdown") ~= true
        if coo_3 then
            return false, "event"
        end
        return true
    end
    cpk = function(Sx)
        if Sx and BossController.waitName ~= Sx then
            BossController.waitName = Sx
            BossController.dwell = 0
        end
    end
    local function cpn_2()
        local cow = BossController.waitName
        if not cow or not BossController.bosses[cow] then
            cow = BossController.current
        end
        if not cow or not BossController.bosses[cow] then
            cow = cpj[1]
        end
        cpk(cow)
        return cow
    end
    cph = function(SI)
        local coM_1
        local coL_1
        local coK_1
        local coG_1
        local coF_1
        local coE_1
        local coC = fns.dwb_4()
        local coC_1 = coC and coC.Position or Vector3.zero
        coG_1, coF_1, coE_1 = nil, nil, nil
        for i, v in ipairs(cpj) do
            local coC_2 = BossController.skip[v]
            local coH = coC_2 and os.clock() >= coC_2
            if coH then
                BossController.skip[v] = nil
                coC_2 = nil
            end
            local coH_1 = not coC_2
            if coH_1 ~= false then
                coH_1 = cpg(v)
            end
            if coH_1 then
                local coC_3 = cpm(v)
                local coH_2 = (bTH(v)) or fns.dwb_41(v)
                local coI = coH_2
                if coH_2 then
                    coH_2 = (coI - coC_1).Magnitude
                end
                local coI_1 = coH_2 or math.huge
                coL_1, coK_1 = coC_3 <= SI, coF_1 and coF_1 <= SI
                if not coG_1 then
                    coM_1 = true
                elseif coL_1 ~= coK_1 then
                    coM_1 = coL_1
                elseif coL_1 then
                    coM_1 = coI_1 < coE_1
                else
                    coM_1 = coC_3 < coF_1
                end
                if coM_1 then
                    coG_1, coF_1, coE_1 = v, coC_3, coI_1
                end
            end
        end
        return coG_1, coF_1
    end
    local cpo_3 = bRH(function(Tc)
        return BossController.bosses[Tc.name] == true
    end)
    local cpp_3 = not cpo_3
    if cpp_3 ~= false then
        cpp_3 = BossController.yieldUntil
    end
    if cpp_3 then
        local cpp_4 = os.clock()
        local cpr_1 = bSg.LootController.running and bSg.LootController.pending
        local cpC_1 = if cpr_1 then 1 else 0
        local cpA = 1133 * cpC_1 + 327 * (1 - cpC_1)
        local cpB = 2837 * cpC_1 + 1973 * (1 - cpC_1)
        if not ((cpA * 2384 + cpB * 1434 + cpA * cpB) % 16777213 == 9983651) then
            cpr_1 = bSg.ChestController.running and bSg.ChestController.pending
        end
        if not (cpp_4 >= BossController.yieldUntil or not cpr_1) then
            local cpq_5 = fns.dwb_142.holder == "AutoLoot"
            local cpC_2 = if cpq_5 then 1 else 0
            local cpA_1 = 3326 * cpC_2 + 1988 * (1 - cpC_2)
            local cpB_1 = 3184 * cpC_2 + 57 * (1 - cpC_2)
            if not ((cpA_1 * 3807 + cpB_1 * 4053 + cpA_1 * cpB_1) % 16777213 == 2602392) then
                cpq_5 = fns.dwb_142.holder == "AutoChest"
            end
            if cpq_5 then
                local min = math.min
                local cpr_3 = math.max(BossController.yieldUntil, cpp_4 + fns.dwb_11.BOSS_COLLECT_YIELD)
                local cps_2 = BossController.yieldFrom or cpp_4
                BossController.yieldUntil = min(cpr_3, cps_2 + fns.dwb_11.BOSS_COLLECT_CAP)
            end
            bSs.BossStatus = "Collecting drops"
            cpk(cpn_2())
            fns.dwb_142.uncommit("AutoBoss")
            return
        end
        BossController.yieldUntil, BossController.yieldFrom = nil, nil
    end
    local cpp_5 = fns.dwb_142.contended("AutoBoss")
    local cpq_7 = cpo_3 ~= nil
    if not cpo_3 then
        local cpo_4 = os.time()
        cps_3, cpr_4 = cph(cpo_4)
        if not cps_3 then
            local cpt
            for i, v in ipairs(cpj) do
                local cpu_1 = BossController.skip[v]
                local cpv_1 = cpu_1 and cpu_1 > os.clock()
                if cpv_1 then
                    local min = math.min
                    local cpw_1 = cpt or cpu_1
                    cpt = min(cpw_1, cpu_1)
                end
            end
            cpu_2, item = false, nil
            for i, v in ipairs(cpj) do
                cpw_2, cpx_1 = cpg(v)
                if cpx_1 == "night" then
                    cpu_2 = true
                else
                    if cpx_1 == "item" and not item then
                        item = fns.dwb_11.BOSS_SUMMONS[v].item
                    end
                end
            end
            local cpw_4 = cpu_2 and bSg.DemonController.phaseIn()
            local cpx_2 = cpw_4 or nil
            if cpt then
                bSs.BossStatus = string.format("Retrying missing bosses in %ds", math.ceil(cpt - os.clock()))
            elseif cpx_2 then
                bSs.BossStatus = string.format("Waiting for night (%ds)", math.ceil(cpx_2))
            elseif cpu_2 then
                bSs.BossStatus = "Waiting for night"
            elseif item then
                bSs.BossStatus = "Out of " .. item
            else
                bSs.BossStatus = "No selected boss is available"
            end
            cpk(cpn_2())
            fns.dwb_142.uncommit("AutoBoss")
            return
        end
        cpk(cps_3)
        if (cpr_4 or 0) > cpo_4 then
            local cpn_4 = math.ceil(cpr_4 - cpo_4)
            bSs.BossStatus = string.format("Waiting for %s (%ds)", cps_3, cpn_4)
            if cpp_5 then
                fns.dwb_142.uncommit("AutoBoss")
                return
            end
        else
            cpq_7 = true
        end
    end
    if cpq_7 then
        fns.dwb_142.commit("AutoBoss")
    else
        fns.dwb_142.uncommit("AutoBoss")
    end
    local cpC_3 = if not bSU("AutoBoss") then 1 else 0
    if cpC_3 == 1 then
        return
    end
    cpn_5, cpo_5 = pcall(function()
        local coX
        local co0_1, co0_3, co0_4
        if not fns.dwb_17(20) then
            bSs.BossStatus = "Waiting for character"
            return
        end
        local co_ = (cpl()) or not fns.dwb_147.controllerValid(BossController)
        local co__1, co__3
        if co_ then
            return
        end
        co__1, co0_1 = nil, nil
        local current = BossController.current
        if current and BossController.bosses[current] then
            co0_1 = bRH(function(TM)
                return TM.name == current
            end)
            if co0_1 then
                co__1 = current
            end
        end
        if not co0_1 then
            co0_1 = bRH(function(TO)
                return BossController.bosses[TO.name] == true
            end)
            co__1 = co0_1 and co0_1.name or nil
        end
        if co__1 then
            BossController.current = co__1
            cpk(co__1)
            BossController.dwell = 0
            BossController.skip[co__1] = nil
        end
        if co0_1 then
            local coW = fns.dwb_11.BOSS_GUARDS[co__1]
            if coW then
                local co1_2 = os.clock() + 120
                local co9 = false
                repeat
                    local Position
                    local co2_2 = not cpl() and fns.dwb_147.controllerValid(BossController) and os.clock() < co1_2
                    if co2_2 then
                        local co2_3 = not co0_1.model:IsDescendantOf(bSf) or co0_1.humanoid.Health <= 0
                        if co2_3 then
                            co9 = true
                        else
                            Position = co0_1.model:GetPivot().Position
                            local co2_4 = bRH(function(T_)
                                if coW[T_.name] ~= true then
                                    return false
                                end
                                local coU = T_.model:GetPivot().Position - Position
                                return (coU * Vector3.new(1, 0, 1)).Magnitude <= fns.dwb_11.BOSS_GUARD_RANGE
                            end)
                            if not co2_4 then
                                co9 = true
                            else
                                bSs.BossStatus = "Clearing " .. co2_4.name
                                bSH(co2_4, "BossStatus", 120, BossController)
                                task.wait(0.05)
                            end
                        end
                    else
                        co9 = true
                    end
                until co9
                local co1_3 = (cpl()) or not fns.dwb_147.controllerValid(BossController)
                if co1_3 then
                    return
                end
                local co1_4 = not co0_1.model:IsDescendantOf(bSf) or co0_1.humanoid.Health <= 0
                if co1_4 then
                    return
                end
                bSs.BossStatus = "Fighting " .. co__1
                bSH(co0_1, "BossStatus", 240, BossController)
                local co0_2 = (cpl()) or not fns.dwb_147.controllerValid(BossController)
                if co0_3 then
                    return
                end
                if co__3 then
                    BossController.current = nil
                end
                if co__3 then
                    bSg.LootController.afterKill()
                    BossController.dwell = 0
                    BossController.yieldFrom = os.clock()
                    BossController.yieldUntil = BossController.yieldFrom + fns.dwb_11.BOSS_COLLECT_YIELD
                end
                return
            end
            bSs.BossStatus = "Fighting " .. co__1
            co__3 = bSH(co0_1, "BossStatus", 240, BossController)
            co0_3 = (cpl()) or not fns.dwb_147.controllerValid(BossController)
            if co0_3 then
                return
            end
            if co__3 then
                BossController.current = nil
            end
            if co__3 then
                bSg.LootController.afterKill()
                BossController.dwell = 0
                BossController.yieldFrom = os.clock()
                BossController.yieldUntil = BossController.yieldFrom + fns.dwb_11.BOSS_COLLECT_YIELD
            end
            return
        end
        local co__4 = os.time()
        coX, co0_4 = cph(co__4)
        if not coX then
            fns.dwb_142.uncommit("AutoBoss")
            bSs.BossStatus = "No selected boss is available"
            return
        end
        cpk(coX)
        if (BossController.dwell or 0) >= fns.dwb_11.BOSS_DWELL then
            if (co0_4 or 0) <= co__4 then
                BossController.skip[coX] = os.clock() + fns.dwb_11.BOSS_SKIP
            end
            BossController.dwell = 0
            coX, co0_4 = cph(co__4)
            if not coX then
                fns.dwb_142.uncommit("AutoBoss")
                bSs.BossStatus = "No selected boss is available"
                return
            end
            cpk(coX)
        end
        local co1_7 = (bTH(coX)) or fns.dwb_41(coX)
        if not co1_7 then
            bSs.BossStatus = "Cannot find " .. tostring(coX)
            BossController.skip[coX] = os.clock() + fns.dwb_11.BOSS_SKIP
            fns.dwb_142.uncommit("AutoBoss")
            return
        end
        local ceil = math.ceil
        local co3 = co0_4 or 0
        local co4 = ceil(co3 - co__4)
        local co__5 = co4 > 0 and string.format("Waiting for %s (%ds)", coX, co4)
        bSs.BossStatus = co__5 or "Travelling to " .. coX
        local co__6 = fns.dwb_11.BOSS_WAIT_POINTS[coX] or co1_7 + Vector3.new(0, 6, 0)
        local co__7 = (fns.dwb_137(co__6, 0.2, cpl)) and not cpl() and fns.dwb_147.controllerValid(BossController)
        if co__7 then
            local function co__8()
                return bRH(function(Us)
                    return Us.name == coX
                end) ~= nil
            end
            local co2_6 = fns.dwb_11.BOSS_SUMMONS[coX]
            local co3_1 = co2_6 and not co__8()
            if co3_1 then
                local co3_2 = bSD(coX)
                local co4_1 = co3_2 and co3_2:FindFirstChildWhichIsA("ProximityPrompt", true)
                if co4_1 then
                    if fns.dwb_52(co2_6.item) <= 0 then
                        bSs.BossStatus = coX .. " needs a " .. co2_6.item
                        BossController.skip[coX] = os.clock() + fns.dwb_11.BOSS_SKIP
                        fns.dwb_142.uncommit("AutoBoss")
                        return
                    end
                    bSs.BossStatus = "Summoning " .. coX
                    bR5(co4_1)
                end
            end
            local co2_7 = bRD(co__8, fns.dwb_11.BOSS_STREAM_GRACE, cpl)
            local co3_4 = (cpl()) or not fns.dwb_147.controllerValid(BossController)
            if co3_4 then
                return
            end
            local co3_5 = not co2_7
            if co3_5 ~= false then
                local co2_8 = co0_4 or 0
                co3_5 = co2_8 <= os.time()
            end
            if co3_5 then
                local co2_9 = os.clock()
                local min = math.min
                local max = math.max
                local BOSS_DWELL = fns.dwb_11.BOSS_DWELL
                local co6 = BossController.dwell or 0
                bRD(co__8, min(2, max(0, BOSS_DWELL - co6)), cpl)
                local co__9 = (cpl()) or not fns.dwb_147.controllerValid(BossController)
                if co__9 then
                    return
                end
                local co__10 = BossController.dwell or 0
                BossController.dwell = co__10 + (os.clock() - co2_9)
            end
            local co__11 = os.clock()
            local co2_10 = fns.dwb_142.movementEpoch or 0
            local co3_7 = co0_4 or 0
            BossController.waitSample = { name = coX, point = co__6, at = co__11, epoch = co2_10, ready = co3_7 <= os.time() }
        else
            local cpc = if not cpl() then 1 else 0
            if cpc == 1 then
                fns.dwb_142.uncommit("AutoBoss")
            end
        end
    end)
    bSu("AutoBoss")
    if not cpn_5 then
        warn("[Ouroboros] boss step: " .. tostring(cpo_5))
    end
end
fns.dwb_85 = fns.fn343
fns.dwb_45 = fns.fn2912
fns.dwb_11.CACHE_STREAM_WAIT = 2
fns.dwb_11.CACHE_GUARDS = {
    T1 = { ["Grove Raider"] = true, GroveRaider = true, ["Raid Captain"] = true, RaidCaptain = true },
    T2 = { ["Cache Lancer"] = true, ["Lancer Captain"] = true },
    T3 = { ["Cache Prowler"] = true, ["Prowler Captain"] = true }
}
fns.dwb_11.CACHE_BLINK_FROM = 60
fns.dwb_11.CACHE_SPAWNS = {
    T1 = {
        Vector3.new(802.349, 1121.764, -1002.728),
        Vector3.new(917.909, 1019.107, 15.007),
        Vector3.new(535.553, 1019.111, 204.519),
        Vector3.new(331.35, 1018.936, -686.555),
        Vector3.new(597.777, 1146.609, -1230.817),
        Vector3.new(387.138, 1122.116, -1171.613),
        Vector3.new(942.733, 1102.488, -1147.013),
        Vector3.new(1053.77, 1042.43, -481.3)
    },
    T2 = {
        Vector3.new(-2026.54, 277.5, 0),
        Vector3.new(-1530, 286.5, 170),
        Vector3.new(-1376.649, 262.07, -52.211),
        Vector3.new(-840, 948.07, 700),
        Vector3.new(790, 1227.5, 420),
        Vector3.new(-790, 963.83, 120),
        Vector3.new(-440, 963.72, -170),
        Vector3.new(160.264, 828.268, 1030.217),
        Vector3.new(-1799.165, 312.992, 1097.478),
        Vector3.new(-2112.748, 133.75, 1031.911),
        Vector3.new(-670.909, 1005.074, 1161.466),
        Vector3.new(-1261.839, 287.5, 746.273)
    },
    T3 = {
        Vector3.new(642.929, 1220.557, -1566.969),
        Vector3.new(799, 1221.5, -1699.24),
        Vector3.new(321.068, 1223.074, -1771.513),
        Vector3.new(145.09, 1255.033, -2011.606),
        Vector3.new(156.267, 1319.629, -2226.213),
        Vector3.new(133, 1317.091, -2429.985),
        Vector3.new(-74.255, 1349.5, -2267),
        Vector3.new(392.015, 1350.5, -2310.823),
        Vector3.new(-608.906, 1382, -2473.826),
        Vector3.new(-1230.833, 1382.437, -2264.551),
        Vector3.new(-963.872, 1383.074, -2553.207),
        Vector3.new(-667.213, 1383.074, -2733.774)
    }
}
local dwb_3_39 = 1
repeat
    local dVo = bit32.rrotate(bit32.bxor(bit32.lrotate(dwb_3_39, 1), string.byte(tostring(dwb_3_39))), 10)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(dVo, 1390252139), 2098274334), (bit32.bxor(bit32.band(dVo, 2904715156), 129292004))), 2098274334), 129292004) ~= dVo then
        fns.dwb_123.HOP_WAIT = 30
        fns.dwb_123.HOP_RETRY = 15
        fns.dwb_11.ChestController.hopDue = fns.fn6333
        fns.dwb_11.ChestController.browser = fns.fn6082
        fns.dwb_11.ChestController.servers = function(U8)
            local cqg
            local Servers
            local ChestController
            Servers = nil
            cqg = nil
            ChestController = nil
            local cqi_3
            ChestController = bSg.ChestController
            Servers = nil
            cqi_3, cqg = pcall(function()
                return U8.Updated:Connect(function(Vd)
                    local cqb = type(Vd) == "table" and Vd.Kind == "Browse" and Vd.PlaceId == game.PlaceId and type(Vd.Servers) == "table"
                    if cqb then
                        Servers = Vd.Servers
                    end
                end)
            end)
            if not cqi_3 then
                return {}
            end
            pcall(U8.Browse, game.PlaceId)
            bRD(function()
                return Servers ~= nil or not ChestController.running
            end, 10)
            pcall(function()
                cqg:Disconnect()
            end)
            local cqi_4 = {}
            local cqk = Servers or {}
            for i, v in ipairs(cqk) do
                local cqj_2 = type(v) == "table" and type(v.JobId) == "string" and v.JobId ~= game.JobId and v.PlaceId == game.PlaceId and not ChestController.badServers[v.JobId] and tonumber(v.Players) and tonumber(v.MaxPlayers) and v.Players < v.MaxPlayers
                if cqj_2 then
                    if not U8.IsCurrentServer(v) then
                        cqi_4[#cqi_4 + 1] = v
                    end
                end
            end
            return cqi_4
        end
        fns.dwb_123.HOP_ORDERS = { "Lowest Population", "Oldest", "Newest", "Random", "Same Region", "Highest Population" }
        fns.dwb_11.ChestController.pickServer = function(Vs, Vt)
            local cqz
            local cqB
            local cqI = #Vt
            local cqH = -1
            while false and cqI <= 2 or true and cqI >= 2 do
                local cqJ = cqI
                local cqC_3 = math.random(cqJ)
                Vt[cqJ], Vt[cqC_3] = Vt[cqC_3], Vt[cqJ]
                cqI += cqH
            end
            local hopOrder = bSg.ChestController.hopOrder
            local cqC_4 = nil
            if hopOrder == "Lowest Population" then
                cqC_4 = function(VH)
                    return VH.Players
                end
            elseif hopOrder == "Highest Population" then
                cqC_4 = function(VG)
                    return -VG.Players
                end
            elseif hopOrder == "Oldest" or hopOrder == "Newest" then
                cqC_4 = function(VC)
                    local cqv = tonumber(VC.StartTime)
                    if not cqv then
                        return math.huge
                    end
                    return hopOrder == "Oldest" and cqv or -cqv
                end
            elseif hopOrder == "Same Region" then
                cqz = Vs.CurrentRegion()
                cqC_4 = function(VA)
                    return VA.Region == cqz and 0 or 1
                end
            end
            if cqC_4 then
                cqB = {}
                for i, v in ipairs(Vt) do
                    cqB[v] = cqC_4(v)
                end
                table.sort(Vt, function(VL, VM)
                    return cqB[VL] < cqB[VM]
                end)
            end
            return Vt[1]
        end
        fns.dwb_11.ChestController.serverHop = fns.fn2543
        fns.dwb_11.ChestController.hopFailed = bSg.TeleportService.TeleportInitFailed:Connect(fns.onTeleportInitFailed)
        fns.dwb_51.Track(fns.fn7735)
    else
        fns.dwb_11.HOP_WAIT = 30
        fns.dwb_11.HOP_RETRY = 15
        bSg.ChestController.hopDue = fns.fn6333
        bSg.ChestController.browser = fns.fn6082
        bSg.ChestController.servers = function(U8)
            local cqg
            local Servers
            local ChestController
            Servers = nil
            cqg = nil
            ChestController = nil
            local cqi_1
            ChestController = bSg.ChestController
            Servers = nil
            cqi_1, cqg = pcall(function()
                return U8.Updated:Connect(function(Vd)
                    local cqb = type(Vd) == "table" and Vd.Kind == "Browse" and Vd.PlaceId == game.PlaceId and type(Vd.Servers) == "table"
                    if cqb then
                        Servers = Vd.Servers
                    end
                end)
            end)
            if not cqi_1 then
                return {}
            end
            pcall(U8.Browse, game.PlaceId)
            bRD(function()
                return Servers ~= nil or not ChestController.running
            end, 10)
            pcall(function()
                cqg:Disconnect()
            end)
            local cqi_2 = {}
            local cqk = Servers or {}
            for i, v in ipairs(cqk) do
                local cqj_1 = type(v) == "table" and type(v.JobId) == "string" and v.JobId ~= game.JobId and v.PlaceId == game.PlaceId and not ChestController.badServers[v.JobId] and tonumber(v.Players) and tonumber(v.MaxPlayers) and v.Players < v.MaxPlayers
                if cqj_1 then
                    if not U8.IsCurrentServer(v) then
                        cqi_2[#cqi_2 + 1] = v
                    end
                end
            end
            return cqi_2
        end
        fns.dwb_11.HOP_ORDERS = { "Random", "Lowest Population", "Highest Population", "Oldest", "Newest", "Same Region" }
        bSg.ChestController.pickServer = function(Vs, Vt)
            local cqz
            local cqB
            local cqI = #Vt
            local cqH = -1
            while false and cqI <= 2 or true and cqI >= 2 do
                local cqJ = cqI
                local cqC_1 = math.random(cqJ)
                Vt[cqJ], Vt[cqC_1] = Vt[cqC_1], Vt[cqJ]
                cqI += cqH
            end
            local hopOrder = bSg.ChestController.hopOrder
            local cqC_2 = nil
            if hopOrder == "Lowest Population" then
                cqC_2 = function(VH)
                    return VH.Players
                end
            elseif hopOrder == "Highest Population" then
                cqC_2 = function(VG)
                    return -VG.Players
                end
            elseif hopOrder == "Oldest" or hopOrder == "Newest" then
                cqC_2 = function(VC)
                    local cqv = tonumber(VC.StartTime)
                    if not cqv then
                        return math.huge
                    end
                    return hopOrder == "Oldest" and cqv or -cqv
                end
            elseif hopOrder == "Same Region" then
                cqz = Vs.CurrentRegion()
                cqC_2 = function(VA)
                    return VA.Region == cqz and 0 or 1
                end
            end
            if cqC_2 then
                cqB = {}
                for i, v in ipairs(Vt) do
                    cqB[v] = cqC_2(v)
                end
                table.sort(Vt, function(VL, VM)
                    return cqB[VL] < cqB[VM]
                end)
            end
            return Vt[1]
        end
        bSg.ChestController.serverHop = fns.fn2543
        bSg.ChestController.hopFailed = fns.dwb_51.TeleportService.TeleportInitFailed:Connect(fns.onTeleportInitFailed)
        fns.dwb_123.Track(fns.fn7735)
    end
    dwb_3_39 = (dwb_3_39 + 0) % 4
until (dwb_3_39 * 3 + 0) % 4 == 3
bQS, fns.dwb_109, fns.dwb_18, fns.dwb_59, bSM, bS9, fns.dwb_55, fns.dwb_153, fns.dwb_33, bS1, fns.dwb_116, bQI, bPS, fns.dwb_131, fns.dwb_125 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
bSg.ChestController.take = function(Wf, Wg)
    local crG_2
    local crF_2
    local ChestController = bSg.ChestController
    local model = Wf.model
    local Position2 = model:GetPivot().Position
    local standBy = fns.dwb_147.standBy
    local crn_4, crn_7, crn_8
    local cro = model.PrimaryPart or model:FindFirstChildWhichIsA("BasePart", true)
    local cro_6, cro_12
    local crp = standBy(cro, Position2)
    local crn_1 = fns.dwb_4()
    if crn_1 and (crn_1.Position - Position2).Magnitude > fns.dwb_11.CACHE_BLINK_FROM then
        bSs.ChestStatus = "Going to a " .. Wf.tier .. " cache"
        fns.dwb_137(crp.Position, 0, Wg)
        local crt = if Wg() then 1 else 0
        if crt == 1 then
            return false
        end
        fns.dwb_147.holdAt(crp)
        fns.dwb_142.commit("AutoChest")
        if model:GetAttribute("ChestState") == "Locked" then
            bSs.ChestStatus = "Clearing " .. Wf.tier .. " guards"
            fns.dwb_111(crp.Position, 0, Wg, true)
            local crn_2 = os.clock() + 180
            local cry_1 = false
            repeat
                local crl, crj
                local cro_2 = (fns.dwb_147.controllerValid(ChestController)) and not Wg() and not bQg() and os.clock() < crn_2
                if cro_2 then
                    local cro_3 = not model:IsDescendantOf(bSf) or model:GetAttribute("ChestState") ~= "Locked"
                    if cro_3 then
                        cry_1 = true
                    else
                        crl = {}
                        for i, v in ipairs(bQs()) do
                            local cro_4 = v ~= model and fns.dwb_85(v) and not fns.dwb_24.isOpened(v)
                            if cro_4 then
                                crl[#crl + 1] = v:GetPivot().Position
                            end
                        end
                        crj = fns.dwb_11.CACHE_GUARDS[Wf.tier]
                        local cro_5 = bRH(function(WF)
                            if not crj[WF.name] then
                                return false
                            end
                            local Position = WF.model:GetPivot().Position
                            local Magnitude = (Position - Position2).Magnitude
                            if Magnitude > fns.dwb_11.CHEST_GUARD_RANGE then
                                return false
                            end
                            for i, v in ipairs(crl) do
                                if (Position - v).Magnitude < Magnitude then
                                    return false
                                end
                            end
                            return true
                        end)
                        if not cro_5 then
                            fns.dwb_142.uncommit("AutoChest")
                            bSs.ChestStatus = "Waiting for guards"
                            task.wait(1)
                        else
                            fns.dwb_142.commit("AutoChest")
                            bSH(cro_5, "ChestStatus", 120, ChestController, function()
                                local crg = not model:IsDescendantOf(bSf) or model:GetAttribute("ChestState") ~= "Locked"
                                return crg
                            end)
                            task.wait(0.05)
                        end
                    end
                else
                    cry_1 = true
                end
            until cry_1
        end
        local crn_3 = (Wg())
        if not ((crF_2 * 3438 + crG_2 * 2037 + crF_2 * crG_2) % 16777213 == 7864504) then
            crn_3 = not fns.dwb_147.controllerValid(ChestController)
        end
        if not crn_7 then
            crn_3 = not model:IsDescendantOf(bSf)
        end
        if not crn_7 then
            crn_3 = model:GetAttribute("ChestState") == "Locked"
        end
        if not crn_7 then
            crn_3 = not fns.dwb_24.open(model, "ChestStatus", Wg)
        end
        if crn_7 then
            return false
        end
        ChestController.openedHere = ChestController.openedHere + 1
        crn_4, cro_6 = fns.dwb_24.lootCache(Position2, Wg)
        if not Wg() then
            fns.dwb_147.holdAt(crp)
        end
        if not Wg() then
            local crp_1 = ChestController.hop and string.format("Opened %d/%d caches this server, picked up %d", ChestController.openedHere, ChestController.hopAfter, crn_4)
            local crm_1 = crp_1 or string.format("Opened %s cache, picked up %d", Wf.tier, crn_4)
            local crn_5 = cro_6 > 0 and string.format(", %d left behind", cro_6)
            bSs.ChestStatus = crm_1 .. (crn_5 or "")
        end
        return true
    end
    fns.dwb_142.commit("AutoChest")
    if model:GetAttribute("ChestState") == "Locked" then
        bSs.ChestStatus = "Clearing " .. Wf.tier .. " guards"
        fns.dwb_111(crp.Position, 0, Wg, true)
        local crn_6 = os.clock() + 180
        local cry_2 = false
        repeat
            local crl, crj
            local cro_8 = (fns.dwb_147.controllerValid(ChestController)) and not Wg() and not bQg() and os.clock() < crn_6
            if cro_8 then
                local cro_9 = not model:IsDescendantOf(bSf) or model:GetAttribute("ChestState") ~= "Locked"
                if cro_9 then
                    cry_2 = true
                else
                    crl = {}
                    for i, v in ipairs(bQs()) do
                        local cro_10 = v ~= model and fns.dwb_85(v) and not fns.dwb_24.isOpened(v)
                        if cro_10 then
                            crl[#crl + 1] = v:GetPivot().Position
                        end
                    end
                    crj = fns.dwb_11.CACHE_GUARDS[Wf.tier]
                    local cro_11 = bRH(function(WF)
                        if not crj[WF.name] then
                            return false
                        end
                        local Position = WF.model:GetPivot().Position
                        local Magnitude = (Position - Position2).Magnitude
                        if Magnitude > fns.dwb_11.CHEST_GUARD_RANGE then
                            return false
                        end
                        for i, v in ipairs(crl) do
                            if (Position - v).Magnitude < Magnitude then
                                return false
                            end
                        end
                        return true
                    end)
                    if not cro_11 then
                        fns.dwb_142.uncommit("AutoChest")
                        bSs.ChestStatus = "Waiting for guards"
                        task.wait(1)
                    else
                        fns.dwb_142.commit("AutoChest")
                        bSH(cro_11, "ChestStatus", 120, ChestController, function()
                            local crg = not model:IsDescendantOf(bSf) or model:GetAttribute("ChestState") ~= "Locked"
                            return crg
                        end)
                        task.wait(0.05)
                    end
                end
            else
                cry_2 = true
            end
        until cry_2
    end
    crn_7 = (Wg())
    local crH_2 = if crn_7 then 1 else 0
    crF_2 = 773 * crH_2 + 3760 * (1 - crH_2)
    crG_2 = 1853 * crH_2 + 1327 * (1 - crH_2)
    if not ((crF_2 * 3438 + crG_2 * 2037 + crF_2 * crG_2) % 16777213 == 7864504) then
        crn_7 = not fns.dwb_147.controllerValid(ChestController)
    end
    if not crn_7 then
        crn_7 = not model:IsDescendantOf(bSf)
    end
    if not crn_7 then
        crn_7 = model:GetAttribute("ChestState") == "Locked"
    end
    if not crn_7 then
        crn_7 = not fns.dwb_24.open(model, "ChestStatus", Wg)
    end
    if crn_7 then
        return false
    end
    ChestController.openedHere = ChestController.openedHere + 1
    crn_8, cro_12 = fns.dwb_24.lootCache(Position2, Wg)
    if not Wg() then
        fns.dwb_147.holdAt(crp)
    end
    if not Wg() then
        local crp_2 = ChestController.hop and string.format("Opened %d/%d caches this server, picked up %d", ChestController.openedHere, ChestController.hopAfter, crn_8)
        local crm_2 = crp_2 or string.format("Opened %s cache, picked up %d", Wf.tier, crn_8)
        local crn_9 = cro_12 > 0 and string.format(", %d left behind", cro_12)
        bSs.ChestStatus = crm_2 .. (crn_9 or "")
    end
    return true
end
fns.dwb_11.CACHE_SCOUT_EVERY = 6
fns.dwb_11.CACHE_SCOUT_BATCH = 8
bSg.ChestController.scout = function(WW)
    local ChestController = bSg.ChestController
    local crL = os.clock()
    if crL < (ChestController.scoutAt or 0) then
        return nil
    end
    local crI = {}
    for i, v in ipairs(fns.dwb_11.CHEST_TIERS) do
        local crL_1 = bQi(ChestController.tiers) == 0 or ChestController.tiers[v]
        if crL_1 then
            for i, v in ipairs(fns.dwb_11.CACHE_SPAWNS[v]) do
                crI[#crI + 1] = v
            end
        end
    end
    ChestController.scoutAt = os.clock() + fns.dwb_11.CACHE_SCOUT_EVERY
    bSs.ChestStatus = string.format("Scanning %d cache spawns", #crI)
    local crL_2 = #crI
    local CACHE_SCOUT_BATCH = fns.dwb_11.CACHE_SCOUT_BATCH
    for i = 1, crL_2, CACHE_SCOUT_BATCH do
        local crJ
        local crL_3 = math.min(i + fns.dwb_11.CACHE_SCOUT_BATCH - 1, #crI)
        crJ = crL_3 - i + 1
        for i = i, crL_3 do
            local cr5 = i
            task.spawn(function()
                pcall(LocalPlayer.RequestStreamAroundAsync, LocalPlayer, crI[cr5], fns.dwb_11.CACHE_STREAM_WAIT)
                crJ -= 1
            end)
        end
        bRD(function()
            return crJ <= 0
        end, fns.dwb_11.CACHE_STREAM_WAIT + 1, WW, 0.03)
        if WW() then
            return nil
        end
    end
    local crL_4 = #fns.dwb_45()
    ChestController.emptyScans = crL_4 == 0 and ChestController.emptyScans + 1 or 0
    if crL_4 == 0 then
        local crM_3 = ChestController.hop and ChestController.hopEmpty and string.format("No sealed cache spawned (%d/%d scans)", ChestController.emptyScans, ChestController.hopScans)
        bSs.ChestStatus = crM_3 or "No sealed cache spawned"
    end
    return crL_4
end
bSg.ChestController.run = fns.fn2282
fns.dwb_109 = function()
    local csl, ChestController
    local csp_1, csp_2
    local cso_1, cso_2
    ChestController = bSg.ChestController
    if not fns.dwb_118() then
        ChestController.pending = false
        return
    end
    local csv = if os.clock() < ChestController.hopUntil then 1 else 0
    if csv == 1 then
        ChestController.pending = false
        fns.dwb_142.uncommit("AutoChest")
        return
    end
    local csn = ChestController.hopDue()
    if csn then
        ChestController.pending = false
        fns.dwb_142.uncommit("AutoChest")
        ChestController.serverHop(csn)
        return
    end
    cso_1, csp_1 = fns.dwb_45()
    if #cso_1 == 0 and csp_1 == 0 then
        ChestController.scout(fns.dwb_122(ChestController))
        cso_1, csp_1 = fns.dwb_45()
    end
    ChestController.pending = #cso_1 > 0
    if not (#cso_1 > 0) then
        fns.dwb_142.uncommit("AutoChest")
        if csp_1 > 0 then
            bSs.ChestStatus = "Waiting to retry a sealed cache"
        end
        return
    end
    ChestController.emptyScans = 0
    if not bSU("AutoChest") then
        return
    end
    csl = fns.dwb_122(ChestController)
    cso_2, csp_2 = pcall(function()
        if not fns.dwb_17(20) then
            bSs.ChestStatus = "Waiting for character"
            return
        end
        ChestController.run(csl)
    end)
    bSu("AutoChest")
    ChestController.pending = #fns.dwb_45() > 0
    if not ChestController.pending then
        fns.dwb_142.uncommit("AutoChest")
    end
    if not cso_2 then
        warn("[Ouroboros] chest step: " .. tostring(csp_2))
    end
    local csn_1 = ChestController.hopDue()
    local cso_3 = csn_1 and not csl() and os.clock() >= ChestController.hopUntil
    if cso_3 then
        ChestController.pending = false
        fns.dwb_142.uncommit("AutoChest")
        ChestController.serverHop(csn_1)
    end
end
fns.dwb_18 = fns.fn6192
fns.dwb_59 = fns.fn3184
bSg.TrainController.folder = fns.fn1906
bSg.TrainController.stations = function(Yi)
    local cs4 = {}
    local cs5 = bSg.TrainController.folder(Yi)
    local cs5_2
    if not cs5 then
        return cs4
    end
    local cs6 = fns.dwb_4()
    local cs6_3
    local cs6_1 = cs6 and cs6.Position or Vector3.zero
    for i, child in ipairs(cs5:GetChildren()) do
        local cte = child
        local cs5_1 = cte.Name ~= "Sign"
        if cs5_1 then
            local cs6_2 = (cte:IsA("Model")) or cte:IsA("BasePart")
            cs5_1 = cs6_2
        end
        if cs5_1 then
            cs5_1 = not bSg.TrainController.dead[cte]
        end
        if cs5_1 then
            cs5_2, cs6_3 = pcall(function()
                return cte:GetPivot().Position
            end)
            if cs5_2 then
                cs4[#cs4 + 1] = { model = cte, point = cs6_3, gap = (cs6_3 - cs6_1).Magnitude }
            end
        end
    end
    table.sort(cs4, function(Yy, Yz)
        return Yy.gap < Yz.gap
    end)
    return cs4
end
bSg.TrainController.anchor = fns.fn6065
bSg.TrainController.prompt = fns.fn3857
bSg.TrainController.approach = fns.fn607
bSg.TrainController.value = fns.fn1981
bSg.TrainController.overlay = fns.fn7498
bSg.TrainController.part = fns.fn6568
bSg.TrainController.pointer = { held = false, point = nil }
bSg.TrainController.pointer.screen = fns.fn1824
bSg.TrainController.pointer.move = function(Zj)
    local ctV, ctW
    local pointer = bSg.TrainController.pointer
    ctW, ctV = pointer.screen(Zj)
    local ctY = pcall(function()
        bSR(game:GetService("VirtualInputManager")):SendMouseMoveEvent(ctW, ctV, game)
    end)
    local ctZ = not ctY
    if ctZ ~= false then
        ctZ = bQG(mousemoveabs)
    end
    if ctZ then
        ctY = pcall(mousemoveabs, ctW, ctV)
    end
    if ctY then
        pointer.point = Zj
    end
    return ctY
end
bSg.TrainController.pointer.hold = function(Zv, Zw)
    local ct3, ct4
    local pointer = bSg.TrainController.pointer
    Zv = Zv == true
    if pointer.held == Zv then
        return true
    end
    Zw = Zw or pointer.point
    if not Zw then
        return false
    end
    ct3, ct4 = pointer.screen(Zw)
    local ct6_1 = pcall(function()
        bSR(game:GetService("VirtualInputManager")):SendMouseButtonEvent(ct3, ct4, 0, Zv, game, 0)
    end)
    if not ct6_1 then
        local ct7 = Zv and bQG(mouse1press)
        if ct7 then
            ct6_1 = pcall(mouse1press)
        else
            local ct7_1 = not Zv and bQG(mouse1release)
            if ct7_1 then
                ct6_1 = pcall(mouse1release)
            end
        end
    end
    if ct6_1 then
        pointer.held = Zv
        pointer.point = Zw
    else
        fns.dwb_71("VirtualInputManager")
    end
    return ct6_1
end
bSg.TrainController.pointer.tap = fns.fn6974
bSg.TrainController.clearPoint = function()
    local cui_1
    local cuh_1
    local clear = bSg.TrainController.clear
    local cuf = clear and os.clock() < clear.expires
    if cuf then
        return clear.point
    end
    local CurrentCamera = bSf.CurrentCamera
    local cuf_1 = CurrentCamera and CurrentCamera.ViewportSize
    local cue_2 = cuf_1 or Vector2.new(1280, 720)
    local cue_3 = bSg.TrainController.overlay()
    local cug = {
        Vector2.new(cue_2.X * 0.5, cue_2.Y * 0.4),
        Vector2.new(cue_2.X * 0.25, cue_2.Y * 0.55),
        Vector2.new(cue_2.X * 0.8, cue_2.Y * 0.25),
        Vector2.new(cue_2.X * 0.2, cue_2.Y * 0.2)
    }
    for i, v in ipairs(cug) do
        local cuv = v
        local cuf_3 = false
        for i, v in ipairs({ LocalPlayer:FindFirstChild("PlayerGui"), bSR(fns.dwb_51.CoreGui) }) do
            local cuB = v
            if cuB then
                cuh_1, cui_1 = pcall(function()
                    return cuB:GetGuiObjectsAtPosition(cuv.X, cuv.Y)
                end)
                local cuj = cuh_1 and type(cui_1) == "table" and cui_1[1]
                local cuh_2 = cuj or nil
                local cui_2 = cuh_2
                if cuh_2 then
                    local cuj_1 = not cue_3 or not cui_2:IsDescendantOf(cue_3)
                    cuh_2 = cuj_1
                end
                if cuh_2 then
                    cuf_3 = true
                end
            end
        end
        if not cuf_3 then
            bSg.TrainController.clear = { point = cuv, expires = os.clock() + 1 }
            return cuv
        end
    end
    bSg.TrainController.clear = { point = cug[1], expires = os.clock() + 1 }
    return cug[1]
end
bSg.TrainController.play = {}
bSg.TrainController.play.Pushups = fns.fn5231
bSg.TrainController.play.Meditation = fns.fn4584
bSg.TrainController.play.Squat = fns.fn3975
bSg.TrainController.play["Boulder Split"] = fns.fn6329
bSg.TrainController.play["Target Shooting"] = fns.fn3093
bSg.TrainController.play["Cup Game"] = function(aa_)
    local cvr
    cvr = nil
    local cvy_1
    local cvx_1
    local cvw_1
    local cvv_1
    if not bQG(fireclickdetector) then
        fns.dwb_71("fireclickdetector")
        return
    end
    local station = aa_.station
    local cvt = station and station:FindFirstChild("Cups", true)
    local cvt_2, cvt_3
    local cvs_1 = cvt
    if cvt then
        cvt = cvs_1:FindFirstChild("Ball")
    end
    cvr = cvt
    local cvu = not cvs_1 or not cvr
    local cvu_1
    if cvu then
        return
    end
    cvt_2, cvu_1 = pcall(function()
        return cvr:GetPivot().Position
    end)
    if not cvt_2 then
        return
    end
    cvv_1, cvw_1, cvt_3 = 0, nil, nil
    for i, child in ipairs(cvs_1:GetChildren()) do
        local cvG = child
        if cvG ~= cvr then
            local ClickDetector = cvG:FindFirstChildWhichIsA("ClickDetector", true)
            if ClickDetector then
                cvv_1 += 1
                cvx_1, cvy_1 = pcall(function()
                    return cvG:GetPivot().Position
                end)
                local cvx_2 = cvx_1 and (cvy_1 - cvu_1).Magnitude or math.huge
                local cvy_2 = not cvt_3
                if not cvy_2 then
                    cvy_2 = cvx_2 < cvt_3
                end
                if cvy_2 then
                    cvw_1, cvt_3 = ClickDetector, cvx_2
                end
            end
        end
    end
    if cvv_1 >= 3 and cvw_1 then
        task.wait(0.2)
        if cvw_1.Parent then
            pcall(fireclickdetector, cvw_1)
            task.wait(1.2)
        end
    end
end
bSg.TrainController.play["Boulder Push"] = function(abn, abo)
    local cvH
    local cvI
    cvH = nil
    cvI = nil
    local goal = abn.goal
    local cvK = fns.dwb_4()
    cvI = fns.dwb_104()
    local cvL = not cvK
    local cvM = typeof(goal) ~= "Vector3" or cvL
    if cvM or not cvI then
        return
    end
    local cvL_2 = abo and abo()
    if cvL_2 then
        pcall(function()
            cvI:Move(Vector3.zero, false)
        end)
        return
    end
    cvH = Vector3.new(goal.X - cvK.Position.X, 0, goal.Z - cvK.Position.Z)
    if cvH.Magnitude <= 6 then
        pcall(function()
            cvI:Move(Vector3.zero, false)
        end)
        bSg.TrainController.touchGoal(abn)
        task.wait(0.5)
        return
    end
    pcall(function()
        cvI:Move(cvH.Unit, false)
    end)
end
bSg.TrainController.touchGoal = fns.fn5442
bSg.TrainController.pushPlan = fns.fn2519
bSg.TrainController.boulder = fns.fn3819
bSg.TrainController.watch = function(ab_, ab0, ab1, ab2, ab3, ab4)
    local cwj_1 = (ab1 == "Play It Out" or ab_ == "Boulder Push") and bSg.TrainController.play[ab_] or nil
    local cwj_2 = os.clock()
    local cwl = cwj_2 + (ab4 or fns.dwb_11.TRAINING_TIMEOUT)
    while true do
        local cwj_3 = ab0.Parent and not ab3() and os.clock() < cwl
        if cwj_3 then
            if cwj_1 then
                pcall(cwj_1, ab2, ab3)
            end
            fns.dwb_51.RunService.RenderStepped:Wait()
            continue
        end
        break
    end
    bSg.TrainController.pointer.hold(false)
    local cwh = fns.dwb_104()
    if cwh then
        pcall(function()
            cwh:Move(Vector3.zero, false)
        end)
    end
    if not ab0.Parent then
        return true
    end
    bQR("training_signaler", "Stop", false)
    bRD(function()
        return not ab0.Parent
    end, 5)
    return false
end
bSg.TrainController.finish = fns.fn5961
bSg.TrainController.visit = function(acr, acs, act, acu)
    local cww
    local cwB_2
    local cwA_2
    cww = fns.dwb_122(act)
    local function cwy()
        local cws = not fns.dwb_118()
        if not cws then
            local cwt = cww and cww()
            cws = cwt
        end
        if not cws then
            cws = not fns.dwb_147.controllerValid(act)
        end
        return cws
    end
    local cwz = bSg.TrainController.stations(acr)
    if #cwz == 0 then
        local cwA_1 = bSg.TrainController.folder(acr)
        local cwB_1 = cwA_1 and cwA_1:FindFirstChild("Sign")
        local cwx = cwB_1
        cwA_2, cwB_2 = false, nil
        if cwx then
            cwA_2, cwB_2 = pcall(function()
                return cwx:GetPivot().Position
            end)
        end
        if cwA_2 and cwB_2 then
            bSs[acs] = "Heading for " .. acr
            fns.dwb_111(cwB_2 + Vector3.new(0, 4, 0), 0.5, cwy)
            bRD(function()
                return #bSg.TrainController.stations(acr) > 0
            end, 8, cwy)
            cwz = bSg.TrainController.stations(acr)
        end
    end
    if #cwz == 0 then
        bSs[acs] = "Cannot reach " .. acr
        return false
    end
    local cwA_3 = math.min(#cwz, 3)
    for i = 1, cwA_3 do
        local cwv
        if cwy() then
            return false
        end
        cwv = cwz[i]
        bSs[acs] = "Heading for " .. acr
        fns.dwb_111(cwv.point + Vector3.new(0, 3, 0), 0.5, cwy)
        if cwy() then
            return false
        end
        bRD(function()
            return bSg.TrainController.prompt(acr, cwv.point) ~= nil
        end, 10, cwy)
        local cwA_4 = bSg.TrainController.prompt(acr, cwv.point)
        if not cwA_4 then
            bSg.TrainController.dead[cwv.model] = true
        else
            bSg.TrainController.approach(cwA_4, cwy)
            if cwy() then
                return false
            end
            local cwB_3 = (bSg.TrainController.prompt(acr, cwv.point)) or cwA_4
            bSs[acs] = (acu == "Play It Out" and "Playing " or "Training ") .. acr
            bR5(cwB_3)
            local cwA_6 = bRD(function()
                return bSg.TrainController.value() ~= nil
            end, 6, cwy)
            local cwB_5 = bSg.TrainController.value()
            if cwA_6 and cwB_5 then
                local cwA_7 = bSg.TrainController.finish(acr, cwv.model, cwB_5, acu, acs, cwy)
                if cwA_7 then
                    bSs.Trainings = bSs.Trainings + 1
                    bSs[acs] = "Finished " .. acr
                end
                return cwA_7
            end
            if cwy() then
                return false
            end
        end
    end
    bSs[acs] = "Cannot use " .. acr
    return false
end
bSM = fns.fn5099
bSg.TrainController.step = function()
    local cwL
    if not fns.dwb_118() then
        return
    end
    cwL = {}
    for i, v in ipairs(fns.dwb_11.TRAINING_NAMES) do
        if bSg.TrainController.codes[v] then
            cwL[#cwL + 1] = v
        end
    end
    if #cwL == 0 then
        bSs.TrainStatus = "Pick a training"
        return
    end
    local cwM = 0
    local cwM_1
    local cwN = false
    local cwN_1
    while true do
        local cwO = (fns.dwb_147.controllerValid(bSg.TrainController)) and cwM < 8
        if cwO then
            if bSU("AutoTraining") then
                cwN = true
                break
            end
            task.wait(0.25)
            cwM += 0.25
            continue
        end
        break
    end
    if not cwN then
        return
    end
    cwM_1, cwN_1 = pcall(function()
        local adl = bSg.TrainController.cursor % #cwL + 1
        bSg.TrainController.cursor = adl
        bSg.TrainController.visit(cwL[adl], "TrainStatus", bSg.TrainController, bSg.TrainController.mode)
    end)
    bSg.TrainController.pointer.hold(false)
    bSu("AutoTraining")
    if not cwM_1 then
        warn("[Ouroboros] training step: " .. tostring(cwN_1))
    end
end
bS9 = fns.fn1205
fns.dwb_55 = function()
    local cxJ_1
    local cxI = not fns.dwb_118()
    local cxI_1
    local cxN = if cxI then 1 else 0
    local cxL = 280 * cxN + 3964 * (1 - cxN)
    local cxM = 2464 * cxN + 217 * (1 - cxN)
    if not ((cxL * 4089 + cxM * 3550 + cxL * cxM) % 16777213 == 10582040) then
        cxI = bSg.BreathController.breathing == ""
    end
    if not cxI then
        cxI = not bSU("AutoBreathing")
    end
    if cxI then
        return
    end
    cxI_1, cxJ_1 = pcall(function()
        local cxv = if not fns.dwb_17(20) then 1 else 0
        if cxv == 1 then
            bSs.BreathStatus = "Waiting for character"
            return
        end
        local breathing = bSg.BreathController.breathing
        local cxn = tostring(fns.dwb_120({ "Powers", "Breathing" }, ""))
        local cxo = cxn == breathing
        local cxp = cxn == breathing .. " Breathing"
        local cxy = if cxp then 1 else 0
        local cxw = 425 * cxy + 2812 * (1 - cxy)
        local cxx = 3137 * cxy + 2285 * (1 - cxy)
        if not ((cxw * 2370 + cxx * 2770 + cxw * cxx) % 16777213 == 11029965) then
            cxp = cxo
        end
        if cxp then
            bSs.BreathStatus = breathing .. " Breathing learned"
            return
        end
        local cxn_1 = fns.dwb_18(breathing)
        if not cxn_1 then
            bSs.BreathStatus = "No trainer for " .. breathing
            return
        end
        local cxo_1 = fns.dwb_140(cxn_1)
        if not cxo_1 then
            bSs.BreathStatus = "No trainer for " .. breathing
            return
        end
        local cxp_1 = typeof(cxo_1.QuestInstance) == "Instance" and cxo_1.QuestInstance.Name
        local cxq = cxp_1 or cxn_1
        local cxq_1 = fns.dwb_36()
        local cxr = cxq_1 and cxq_1:FindFirstChild(cxq)
        if not cxr then
            if not fns.dwb_128(cxo_1) then
                bSs.BreathStatus = "Cannot learn " .. breathing .. " yet"
                return
            end
            local cxm_1 = (tonumber(cxo_1.WenCostOnAccept)) or 0
            if bR2() < cxm_1 then
                bSs.BreathStatus = string.format("Farming Wen %d/%d", bR2(), cxm_1)
                local cxm_2 = false
                local cxo_3 = bS4()
                if cxo_3 then
                    local cxq_2 = fns.dwb_140(cxo_3)
                    local cxr_1 = cxq_2 and cxq_2.Category == "Combat" and fns.dwb_94(cxq_2)
                    if cxr_1 then
                        cxm_2 = bP5(cxo_3, "BreathStatus", bSg.BreathController)
                    end
                end
                if not cxm_2 then
                    local cxm_3 = bRR()
                    if cxm_3 then
                        bSh(cxm_3, bSg.BreathController, "BreathStatus")
                    else
                        local wenMob = bSg.BreathController.wenMob
                        if wenMob and wenMob ~= "" then
                            fns.dwb_31(wenMob, "BreathStatus", 120, bSg.BreathController)
                        else
                            local cxm_5 = bRH(function(ad2)
                                return not fns.dwb_11.PASSIVE_MOBS[ad2.name]
                            end)
                            if cxm_5 then
                                bSH(cxm_5, "BreathStatus", 120, bSg.BreathController)
                            end
                        end
                    end
                end
                return
            end
            local cxm_6 = bS4()
            if cxm_6 then
                local cxo_5 = fns.dwb_140(cxm_6)
                if cxo_5 and cxo_5.Category == "Combat" then
                    local cxq_5 = typeof(cxo_5.QuestInstance) == "Instance" and cxo_5.QuestInstance.Name
                    local cxo_6 = cxq_5
                    local cxB = if cxo_6 then 1 else 0
                    local cxz = 157 * cxB + 2243 * (1 - cxB)
                    local cxA = 556 * cxB + 3187 * (1 - cxB)
                    if not ((cxz * 3783 + cxA * 1408 + cxz * cxA) % 16777213 == 1464071) then
                        cxo_6 = cxm_6
                    end
                    local cxm_7 = cxo_6
                    bSs.BreathStatus = "Clearing quest slot"
                    bQ2(cxm_7)
                end
            end
            bSs.BreathStatus = "Accepting " .. fns.dwb_132(cxn_1)
            local cxv_1 = if not bSh(cxn_1, bSg.BreathController, "BreathStatus") then 1 else 0
            if cxv_1 == 1 then
                bSs.BreathStatus = "Cannot accept " .. fns.dwb_132(cxn_1)
            end
            return
        end
        local Tasks = cxr:FindFirstChild("Tasks")
        if not Tasks then
            bSs.BreathStatus = "Cannot read quest tasks"
            return
        end
        for i, child in ipairs(Tasks:GetChildren()) do
            local Value = child:FindFirstChild("Value")
            local Max = child:FindFirstChild("Max")
            local cxm_9 = Value and Max and Value.Value < Max.Value and bS2(child)
            if cxm_9 then
                local Code = child:FindFirstChild("Code")
                local cxo_8 = Code and Code.Value or child.Name
                if fns.dwb_11.TRAINING_CODES[cxo_8] then
                    bSM(cxo_8)
                    return
                end
                local cxm_12 = fns.dwb_88(cxo_8)
                if cxm_12 then
                    bSs.BreathStatus = "Defeating " .. cxm_12
                    fns.dwb_31(cxm_12, "BreathStatus", 240, bSg.BreathController, function()
                        return not Value.Parent or not Max.Parent or Value.Value >= Max.Value
                    end)
                    return
                end
                bSs.BreathStatus = child.Name .. " " .. Value.Value .. "/" .. Max.Value
                bS9(cxn_1, child.Name, Max.Value)
                return
            end
        end
        bSs.BreathStatus = "Training complete"
    end)
    bSu("AutoBreathing")
    if not cxI_1 then
        warn("[Ouroboros] breathing step: " .. tostring(cxJ_1))
    end
end
fns.dwb_153 = function()
    local cxZ
    local cxX
    cxX = nil
    cxZ = nil
    local cx_
    local cx1_1
    cxZ = {}
    cxX = {}
    local function cxY(aeH)
        local cxO = type(aeH) == "string" and aeH ~= "" and not cxZ[aeH]
        if cxO then
            cxZ[aeH] = true
            cxX[#cxX + 1] = aeH
        end
    end
    local cx0 = type(fns.dwb_26.SkillTree) == "table" and bQG(fns.dwb_26.SkillTree.GetBranches)
    local cx0_1
    if cx0 then
        cx0_1, cx1_1 = fns.dwb_144(fns.dwb_26.SkillTree.GetBranches, LocalPlayer)
        local cx2 = cx0_1 and type(cx1_1) == "table"
        if cx2 then
            cx_ = function(aeU)
                if type(aeU) ~= "table" then
                    return
                end
                if not aeU.IsBranch then
                    cxY(aeU.Name)
                end
                local cxQ = #aeU
                local cxU = 1
                while cxU <= cxQ do
                    local cxV = cxU
                    cx_(aeU[cxV])
                    cxU += 1
                end
            end
            local cx0_2 = #cx1_1
            local cx6 = 1
            while cx6 <= cx0_2 do
                local cx7 = cx6
                cx_(cx1_1[cx7])
                cx6 += 1
            end
        end
    end
    if #cxX == 0 then
        for i, v in ipairs({
            "Max Health",
            "Max Stamina",
            "Additional Damage",
            "Stamina Regen Speed",
            "Health Regen Speed",
            "Block Regen",
            "Block Points",
            "Double Jump",
            "Wall Climb"
        }) do
            cxY(v)
        end
    end
    table.sort(cxX)
    return cxX
end
fns.dwb_11.STAT_NODES = {
    ["Max Health"] = true,
    ["Max Stamina"] = true,
    ["Additional Damage"] = true,
    ["Stamina Regen Speed"] = true,
    ["Health Regen Speed"] = true,
    ["Block Regen"] = true,
    ["Block Points"] = true
}
fns.dwb_33 = fns.fn2258
fns.dwb_11.POTION_NAMES = {
    "Health Elixir",
    "Health Potion",
    "Health Regen Elixir",
    "Health Regen Potion",
    "Stamina Regen Elixir",
    "Stamina Regen Potion",
    "Underwater Breathing Potion"
}
bS1 = fns.fn2075
fns.dwb_116 = fns.fn2834
fns.dwb_11.SHOP_VENDORS = {
    ["Regular Katana"] = "Raze",
    ["Fancy Katana"] = "Raze",
    ["Health Regen Potion"] = "Rika",
    ["Stamina Regen Potion"] = "Rika",
    ["Basic Fishing Rod"] = "Fisherman Jeso",
    ["Rare Fishing Rod"] = "Fisherman Jeso",
    Worm = "Fisherman Jeso",
    ["Fish Head"] = "Baitmonger Nori",
    Shovel = "Winter Store Rep Lynx"
}
bQI = fns.fn4109
bPS = function(afV, afW, afX, afY)
    local czs_4
    local czr_4
    local czp_3
    afX = afX or bSg.ShopController
    afY = afY or "ShopStatus"
    local czl_2 = fns.dwb_122(afX)
    local czm = (czl_2()) or not fns.dwb_147.controllerValid(afX)
    if czm then
        return false
    end
    local czm_1 = fns.dwb_52(afV)
    if czm_1 >= afW then
        return false
    end
    local czk = fns.dwb_11.SHOP_VENDORS[afV]
    if not czk then
        bSs[afY] = "Cannot find " .. afV
        return false
    end
    local czn = (bQI(afV)) or bQQ(czk)
    local Parent, czn_14, czn_16
    if not czn then
        local czn_1 = fns.dwb_41(czk)
        if not czn_1 then
            bSs[afY] = "Cannot find " .. czk
            return false
        end
        bSs[afY] = "Travelling to " .. czk
        local czp_1 = not fns.dwb_111(czn_1 + Vector3.new(0, 3, 0), 0.5, czl_2) or czl_2()
        if czp_1 then
            return false
        end
        bRD(function()
            local czi = bQI(afV) ~= nil or bQQ(czk) ~= nil
            return czi
        end, 10, czl_2)
        if czl_2() then
            return false
        end
        local czn_2 = (bQI(afV)) or bQQ(czk)
        if not czn then
            bSs[afY] = "Cannot reach " .. afV
            return false
        end
        local Parent2 = czn_2.Parent
        local czp_2 = Parent2 and Parent2:IsA("BasePart")
        if czp_3 then
            if not fns.dwb_111(Parent.Position + Vector3.new(0, 2, 3), 0.3, czl_2) then
                return false
            end
            local czn_4 = (czl_2())
            if not ((czr_4 * 1926 + czs_4 * 2270 + czr_4 * czs_4) % 16777213 == 8658143) then
                czn_4 = not bR5(czn_2)
            end
            if czn_14 then
                return false
            end
            task.wait(1)
            local czn_5 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
            if czn_5 then
                return false
            end
            bSs[afY] = "Buying " .. afV
            bQR("PurchaseFromShop", afV, math.max(1, afW - czm_1))
            task.wait(1.5)
            local czn_6 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
            if czn_16 then
                return false
            end
            bQR("NpcTalking", "Ended")
            if fns.dwb_52(afV) > czm_1 then
                bSs.Bought = bSs.Bought + 1
                bSs[afY] = "Bought " .. afV
                return true
            end
            bSs[afY] = "Cannot afford " .. afV
            return false
        end
        local czn_7 = (czl_2())
        if not ((czr_4 * 1926 + czs_4 * 2270 + czr_4 * czs_4) % 16777213 == 8658143) then
            czn_7 = not bR5(czn_2)
        end
        if czn_14 then
            return false
        end
        task.wait(1)
        local czn_8 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
        if czn_8 then
            return false
        end
        bSs[afY] = "Buying " .. afV
        bQR("PurchaseFromShop", afV, math.max(1, afW - czm_1))
        task.wait(1.5)
        local czn_9 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
        if czn_16 then
            return false
        end
        bQR("NpcTalking", "Ended")
        if fns.dwb_52(afV) > czm_1 then
            bSs.Bought = bSs.Bought + 1
            bSs[afY] = "Bought " .. afV
            return true
        end
        bSs[afY] = "Cannot afford " .. afV
        return false
    elseif not czn then
        bSs[afY] = "Cannot reach " .. afV
        return false
    else
        Parent = czn.Parent
        czp_3 = Parent and Parent:IsA("BasePart")
        if czp_3 then
            if not fns.dwb_111(Parent.Position + Vector3.new(0, 2, 3), 0.3, czl_2) then
                return false
            end
            local czn_11 = (czl_2())
            if not ((czr_4 * 1926 + czs_4 * 2270 + czr_4 * czs_4) % 16777213 == 8658143) then
                czn_11 = not bR5(czn)
            end
            if czn_14 then
                return false
            end
            task.wait(1)
            local czn_12 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
            if czn_12 then
                return false
            end
            bSs[afY] = "Buying " .. afV
            bQR("PurchaseFromShop", afV, math.max(1, afW - czm_1))
            task.wait(1.5)
            local czn_13 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
            if czn_16 then
                return false
            end
            bQR("NpcTalking", "Ended")
            if fns.dwb_52(afV) > czm_1 then
                bSs.Bought = bSs.Bought + 1
                bSs[afY] = "Bought " .. afV
                return true
            end
            bSs[afY] = "Cannot afford " .. afV
            return false
        end
        czn_14 = (czl_2())
        local czt_4 = if czn_14 then 1 else 0
        czr_4 = 3759 * czt_4 + 1770 * (1 - czt_4)
        czs_4 = 3018 * czt_4 + 137 * (1 - czt_4)
        if not ((czr_4 * 1926 + czs_4 * 2270 + czr_4 * czs_4) % 16777213 == 8658143) then
            czn_14 = not bR5(czn)
        end
        if czn_14 then
            return false
        end
        task.wait(1)
        local czn_15 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
        if czn_15 then
            return false
        end
        bSs[afY] = "Buying " .. afV
        bQR("PurchaseFromShop", afV, math.max(1, afW - czm_1))
        task.wait(1.5)
        czn_16 = (czl_2()) or not fns.dwb_147.controllerValid(afX)
        if czn_16 then
            return false
        end
        bQR("NpcTalking", "Ended")
        if fns.dwb_52(afV) > czm_1 then
            bSs.Bought = bSs.Bought + 1
            bSs[afY] = "Bought " .. afV
            return true
        end
        bSs[afY] = "Cannot afford " .. afV
        return false
    end
end
fns.dwb_131 = fns.fn7147
fns.dwb_125 = fns.fn5620
fns.dwb_11.FISHING_RODS = { "Legendary Fishing Rod", "Rare Fishing Rod", "Basic Fishing Rod" }
fns.dwb_11.FISHING_BAITS = { "Worm", "Fish Head", "Golden Tentacle", "Drowned Lure" }
fns.dwb_11.PERMIT_QUEST = "Ill find the permit stamp(Lv 45)"
fns.dwb_11.STARTER_ROD = "Basic Fishing Rod"
fns.dwb_11.FISHING_DOCK = Vector3.new(-197, 799, 589)
fns.dwb_11.FISHING_CAST_RANGE = { 6, 8, 10, 12 }
fns.dwb_11.FISHING_DROP_RANGE = { 14, 18, 22, 26, 30 }
fns.dwb_11.BAIT_RESTOCK = 25
fns.dwb_11.ANGLER_NPC = "Angler Runo"
fns.dwb_11.ANGLER_QUESTS = { "Ill land the good catch(Lv 60)", "Ill fill your crates(Lv 45)" }
fns.dwb_11.ANGLER_DEPOSIT_GAP = 0.25
bSg.FishController.rod = fns.fn6525
bQe.questCompleted = fns.fn4598
bSg.FishController.footing = fns.fn3042
bSg.FishController.waterAt = fns.fn3698
bSg.FishController.castPoint = fns.fn5533
bSg.FishController.aimPoint = fns.fn4984
bSg.FishController.ours = fns.fn3969
bSg.FishController.bobber = fns.fn3171
bSg.FishController.catch = fns.fn6559
bSg.FishController.hookLink = function(aig)
    local cA0
    cA0 = nil
    local cA1 = type(aig) ~= "table" or rawget(aig, "OuroborosAnswering")
    if cA1 then
        return false
    end
    rawset(aig, "OuroborosAnswering", true)
    cA0 = function(aij)
        return function(aik, ail)
            local cAV = aik ~= "Bite"
            local cA_ = if cAV then 1 else 0
            local cAY = 1379 * cA_ + 1846 * (1 - cA_)
            local cAZ = 1357 * cA_ + 1267 * (1 - cA_)
            if not ((cAY * 3923 + cAZ * 786 + cAY * cAZ) % 16777213 == 8347722) then
                cAV = not (bSg.FishController.running or bSg.RodController.running)
            end
            if cAV then
                if aij then
                    return aij(aik, ail)
                end
                return
            end
            bSs.FishStatus = "Landing the bite"
            task.wait(0.1)
            if rawget(aig, "__Active") then
                pcall(aig.Server, aig, ail, true)
            end
        end
    end
    rawset(aig, "Connect", function(aiz, aiA)
        aig.Callback = cA0(aiA)
    end)
    rawset(aig, "Once", function(aiD, aiE)
        aig.Callback = cA0(aiE)
        aig.__DeleteAfterCall = true
    end)
    if aig.Callback ~= nil then
        aig.Callback = cA0(aig.Callback)
    end
    return true
end
bSg.FishController.answerBites = function()
    local Create, Link
    local cBc = fns.dwb_92.module("ServerClientPortal module", { "CAM", "Global", "ServerClientPortal" })
    if type(cBc) ~= "table" then
        return
    end
    local cBd = not rawget(cBc, "OuroborosLinking")
    if cBd ~= false then
        cBd = bQG(cBc.Link)
    end
    if cBd then
        Link = cBc.Link
        rawset(cBc, "OuroborosLinking", true)
        cBc.Link = function(aiM, aiN)
            local cA6 = Link(aiM, aiN)
            if aiM == "FishingRod" then
                bSg.FishController.hookLink(cA6)
            end
            return cA6
        end
    end
    local cBd_1 = not rawget(cBc, "OuroborosCreating")
    if cBd_1 ~= false then
        cBd_1 = bQG(cBc.Create)
    end
    if cBd_1 then
        Create = cBc.Create
        rawset(cBc, "OuroborosCreating", true)
        cBc.Create = function(aiU, ...)
            local cA8 = Create(aiU, ...)
            if aiU == "FishingRod" then
                bSg.FishController.hookLink(cA8)
            end
            return cA8
        end
    end
    local cBd_2 = rawget(cBc, "CurrentListeners")
    local cBc_1 = type(cBd_2) == "table" and cBd_2.FishingRod
    local cBd_3 = cBc_1 or nil
    if cBd_3 then
        bSg.FishController.hookLink(cBd_3)
    end
    return cBd_3 ~= nil
end
bSg.FishController.awaitLink = fns.fn3878
bSg.FishController.cast = fns.fn4853
bSg.FishController.collect = function(ajh, aji, ajj)
    local cBP, cBQ
    local cBS_7
    local cBR = typeof(ajh) ~= "Instance" or ajh.Parent == nil
    if cBR then
        return false
    end
    local cBR_1 = aji
    if not cBR_1 then
        local cBS_1 = (ajh:IsA("BasePart")) and ajh
        cBR_1 = cBS_1
    end
    if not cBR_1 then
        cBR_1 = ajh:FindFirstChild("Root")
    end
    if not cBR_1 then
        cBR_1 = ajh:FindFirstChildWhichIsA("BasePart", true)
    end
    aji = cBR_1
    local function cBR_2()
        local cBv = ajh.Parent ~= nil
        if cBv then
            local cBw = aji == nil
            local cBA = if cBw then 1 else 0
            local cBy = 2427 * cBA + 1521 * (1 - cBA)
            local cBz = 747 * cBA + 3064 * (1 - cBA)
            if not ((cBy * 2316 + cBz * 2253 + cBy * cBz) % 16777213 == 9116892) then
                cBw = aji.Parent ~= nil
            end
            cBv = cBw
        end
        return cBv
    end
    local cBS_2 = ajh:GetAttribute("CatchItem")
    local cBT = os.clock() + 3
    while true do
        local cBU_1 = cBS_2 == ""
        local cBV_1 = type(cBS_2) ~= "string" or cBU_1
        local cBU_2 = cBV_1 and os.clock() < cBT
        if cBU_2 then
            local cBU_3 = (ajj()) or not cBR_2()
            if cBU_3 then
                break
            end
            task.wait(0.1)
            cBS_2 = ajh:GetAttribute("CatchItem")
            continue
        end
        break
    end
    local function cBU_4()
        for i, descendant in ipairs(ajh:GetDescendants()) do
            if descendant:IsA("ProximityPrompt") then
                return descendant
            end
        end
        return nil
    end
    local cBV_2 = cBU_4()
    local cBT_1 = os.clock() + 3
    while true do
        local cBW_1 = not cBV_2
        if cBW_1 ~= false then
            cBW_1 = os.clock() < cBT_1
        end
        if cBW_1 then
            local cBW_2 = (ajj()) or not cBR_2()
            if cBW_2 then
                break
            end
            task.wait(0.1)
            cBV_2 = cBU_4()
            continue
        end
        break
    end
    if not cBV_2 then
        bSs.FishStatus = "Nothing to reel in"
        return false
    end
    local cBU_5 = cBS_2 ~= ""
    local cBW_3 = type(cBS_2) == "string" and cBU_5
    local cBS_3 = cBW_3 and cBS_2
    local cB5 = if cBS_3 then 1 else 0
    local cB3 = 1954 * cB5 + 2189 * (1 - cB5)
    local cB4 = 1402 * cB5 + 2257 * (1 - cB5)
    if not ((cB3 * 3805 + cB4 * 478 + cB3 * cB4) % 16777213 == 10844634) then
        cBS_3 = nil
    end
    cBP = cBS_3
    local cBS_4 = cBP and fns.dwb_52(cBP)
    cBQ = cBS_4 or 0
    local function cBS_5()
        local cBI = cBP ~= nil and fns.dwb_52(cBP) > cBQ
        return cBI
    end
    local function cBU_8()
        bSs.Fish = bSs.Fish + 1
        bSs.FishStatus = "Caught " .. (cBP or "a fish")
        return true
    end
    local cBW_4 = cBP
    local cB5_1 = if cBW_4 then 1 else 0
    local cB3_1 = 2877 * cB5_1 + 1701 * (1 - cB5_1)
    local cB4_1 = 2808 * cB5_1 + 789 * (1 - cB5_1)
    if not ((cB3_1 * 2134 + cB4_1 * 3526 + cB3_1 * cB4_1) % 16777213 == 7341929) then
        cBW_4 = "the catch"
    end
    bSs.FishStatus = "Reeling in " .. cBW_4
    local cBW_5 = os.clock()
    local cBX = false
    local cBY = false
    local cBT_2 = cBW_5 + 14
    while true do
        local cBZ = os.clock() < cBT_2 and not ajj()
        if not cBZ then
            if cBS_5() then
                return cBU_8()
            end
            local cBS_6 = cBY and not cBR_2()
            if cBS_7 then
                return cBU_8()
            end
            bSs.FishStatus = "Lost " .. (cBP or "the catch")
            return false
        end
        if not cBR_2() then
            if cBS_5() then
                return cBU_8()
            end
            cBS_7 = cBY and not cBR_2()
            if cBS_7 then
                return cBU_8()
            end
            bSs.FishStatus = "Lost " .. (cBP or "the catch")
            return false
        end
        local cBZ_1 = (bR5(cBV_2)) or cBY
        cBY = cBZ_1
        task.wait(0.2)
        if cBS_5() then
            break
        end
        local cBZ_2 = not cBX
        if cBZ_2 ~= false then
            cBZ_2 = aji
        end
        if cBZ_2 then
            cBZ_2 = os.clock() - cBW_5 > 3
        end
        if cBZ_2 then
            local cBZ_3 = fns.dwb_4()
            local cB_ = cBV_2.MaxActivationDistance
            if cB_ <= 0 then
                cB_ = 10
            end
            if cBZ_3 and (aji.Position - cBZ_3.Position).Magnitude > cB_ - 1 then
                cBX = true
                local cB0_1 = Vector3.new(aji.Position.X, cBZ_3.Position.Y, aji.Position.Z)
                local cB1 = cB0_1 - cBZ_3.Position
                if cB1.Magnitude > 1 then
                    fns.dwb_111(cB0_1 - cB1.Unit * math.max(cB_ * 0.5, 3), 0.2, ajj)
                end
            end
        end
    end
    return cBU_8()
end
bSg.FishController.earnPermit = function(aj3)
    local cCe = if bQe.questCompleted(fns.dwb_11.PERMIT_QUEST) then 1 else 0
    if cCe == 1 then
        return true
    end
    local cB7 = fns.dwb_140(fns.dwb_11.PERMIT_QUEST)
    if type(cB7) ~= "table" then
        bSs.FishStatus = "No permit quest in this place"
        return false
    end
    local cB8 = typeof(cB7.QuestInstance) == "Instance" and cB7.QuestInstance.Name
    local cB9 = cB8 or fns.dwb_11.PERMIT_QUEST
    local cB9_1 = fns.dwb_36()
    local cCa = cB9_1 and cB9_1:FindFirstChild(cB9)
    if not cCa then
        if not fns.dwb_128(cB7) then
            local cB9_2 = type(cB7.Requirements) == "table" and tonumber(cB7.Requirements.Level)
            local cCa_1 = cB9_2 or 45
            bSs.FishStatus = string.format("The permit needs level %d", cCa_1)
            return false
        end
        local cB9_4 = (tonumber(cB7.WenCostOnAccept)) or 0
        if bR2() < cB9_4 then
            bSs.FishStatus = string.format("The permit costs %d Wen", cB9_4)
            return false
        end
        bSs.FishStatus = "Taking the permit quest"
        if not bSh(fns.dwb_11.PERMIT_QUEST, bSg.FishController, "FishStatus") then
            bSs.FishStatus = "Cannot take the permit quest"
        end
        return false
    end
    local Tasks = cCa:FindFirstChild("Tasks")
    if not Tasks then
        bSs.FishStatus = "Cannot read the permit quest"
        return false
    end
    for i, child in ipairs(Tasks:GetChildren()) do
        local Value = child:FindFirstChild("Value")
        local Max = child:FindFirstChild("Max")
        local cCa_3 = Value and Max and Value.Value < Max.Value and bS2(child)
        if cCa_3 then
            local cB8_4 = type(cB7.TaskSpecs) == "table" and cB7.TaskSpecs[child.Name]
            local cCa_4 = cB8_4 or nil
            local cCa_5 = type(cCa_4) == "table" and cCa_4.TargetNpc
            local cB6 = cCa_5 or nil
            if cB6 then
                bSs.FishStatus = "Returning to " .. cB6
                local cB8_7 = fns.dwb_41(cB6)
                local cCa_6 = cB8_7 and not fns.dwb_111(cB8_7 + Vector3.new(0, 3, 0), 0.5, aj3)
                if cCa_6 then
                    return false
                end
                bRD(function()
                    return bQQ(cB6) ~= nil
                end, 8, aj3)
                local cB8_8 = bQQ(cB6)
                if not cB8_8 then
                    bSs.FishStatus = "Cannot reach " .. cB6
                    return false
                end
                bR5(cB8_8)
                task.wait(1)
                bQR("QuestProgress", fns.dwb_11.PERMIT_QUEST, child.Name)
                task.wait(1)
                bQR("NpcTalking", "Ended")
                return false
            end
            bSs.FishStatus = child.Name
            bS9(fns.dwb_11.PERMIT_QUEST, child.Name, Max.Value, "FishStatus")
            return false
        end
    end
    return bQe.questCompleted(fns.dwb_11.PERMIT_QUEST)
end
bSg.FishController.anglerQuest = fns.fn6642
bSg.FishController.anglerRows = fns.fn701
bSg.FishController.anglerStep = fns.fn1022
bSg.FishController.recall = function(alw, alx)
    if not alw or not bSg.FishController.returnAfterBuy then
        return
    end
    local cDt = fns.dwb_4()
    if cDt and (cDt.Position - alw.Position).Magnitude < 6 then
        return
    end
    bSs.FishStatus = "Returning to the fishing spot"
    fns.dwb_111(alw.Position + Vector3.new(0, 3, 0), 0.4, alx)
    cDt = fns.dwb_4()
    if cDt then
        pcall(function()
            cDt.CFrame = alw
        end)
    end
end
bSg.FishController.prepare = fns.fn6954
bSg.FishController.runCast = fns.fn3962
bSg.FishController.step = function()
    if not fns.dwb_118() then
        return
    end
    local cEg = 0
    local cEg_1
    local cEh = false
    local cEh_1
    while true do
        local cEi = (fns.dwb_147.controllerValid(bSg.FishController)) and cEg < 8
        if cEi then
            if bSU("AutoFish") then
                cEh = true
                break
            end
            task.wait(0.25)
            cEg += 0.25
            continue
        end
        break
    end
    if not cEh then
        return
    end
    cEg_1, cEh_1 = pcall(function()
        local cD5
        cD5 = fns.dwb_122(bSg.FishController)
        local function cD7()
            local cD2 = not fns.dwb_118() or cD5() or not fns.dwb_147.controllerValid(bSg.FishController)
            return cD2
        end
        bSg.FishController.answerBites()
        local cD8 = not bSg.FishController.prepare(cD7) or cD7()
        if cD8 then
            return
        end
        local cD8_1 = bSg.FishController.quest and bSg.FishController.anglerStep(cD7)
        if cD8_1 then
            return
        end
        if cD7() then
            return
        end
        bSg.FishController.awaitLink(cD7)
        local cD8_2 = (bSg.FishController.castPoint()) or bSg.FishController.aimPoint()
        local cD9 = cD8_2
        if not cD9 then
            local CurrentCamera = workspace.CurrentCamera
            local cEa = CurrentCamera and fns.dwb_4()
            if not cEa then
                return
            end
            cD9 = CurrentCamera.CFrame.Position + CurrentCamera.CFrame.LookVector * 20
        end
        if not bRD(bSg.FishController.footing, 3, cD7) then
            bSs.FishStatus = "Swimming -- cannot cast from the water"
            return
        end
        local cD6 = fns.dwb_4()
        if cD6 then
            local cD4 = Vector3.new(cD9.X, cD6.Position.Y, cD9.Z)
            if (cD4 - cD6.Position).Magnitude > 0.1 then
                pcall(function()
                    cD6.CFrame = CFrame.lookAt(cD6.Position, cD4)
                end)
            end
            bSg.FishController.stand = cD6.CFrame
        end
        bSg.FishController.runCast(cD9, cD7, "FishStatus")
    end)
    bSu("AutoFish")
    if not cEg_1 then
        warn("[Ouroboros] fishing step: " .. tostring(cEh_1))
    end
end
bQe.Watch = { node = nil, armed = nil }
bQe.dialogue = fns.fn3268
bQe.dialogueUtility = fns.fn1175
bQe.watchDialogue = function()
    local cEv
    local Watch
    local cEs
    local onAttemptDialogue
    cEs = nil
    Watch = nil
    onAttemptDialogue = nil
    cEv = nil
    Watch = bQe.Watch
    if Watch.armed ~= nil then
        return Watch.armed
    end
    cEv = bQe.dialogue()
    local cEw = type(cEv) ~= "table"
    local cEA = if cEw then 1 else 0
    local cEy = 686 * cEA + 1229 * (1 - cEA)
    local cEz = 1067 * cEA + 3330 * (1 - cEA)
    if not ((cEy * 2297 + cEz * 865 + cEy * cEz) % 16777213 == 3230659) then
        cEw = type(cEv.AttemptDialogue) ~= "table"
    end
    if cEw then
        return false
    end
    onAttemptDialogue = function(amM)
        local cEn = amM == ""
        local cEo = type(amM) ~= "string" or cEn
        if cEo then
            return
        end
        Watch.node = amM
    end
    cEs = function(amP)
        fns.dwb_123.Track(function()
            if bQG(amP) then
                amP()
            else
                local cEq = type(amP) == "table" and bQG(amP.Disconnect)
                if cEq then
                    amP:Disconnect()
                elseif typeof(amP) == "RBXScriptConnection" then
                    amP:Disconnect()
                end
            end
        end)
    end
    local cEw_1 = pcall(function()
        cEs(cEv.AttemptDialogue:Connect(onAttemptDialogue))
        cEs(cEv.CurrentDialogue.Cancel:Connect(function()
            Watch.node = nil
        end))
    end)
    if not cEw_1 then
        Watch.armed = false
        fns.dwb_71("Dialogue signals")
        return false
    end
    cEs(LocalPlayer:GetAttributeChangedSignal("PendingDialogue"):Connect(function()
        onAttemptDialogue(LocalPlayer:GetAttribute("PendingDialogue"))
    end))
    onAttemptDialogue(LocalPlayer:GetAttribute("PendingDialogue"))
    Watch.armed = true
    return true
end
fns.dwb_11.ROD_PRIZE = "Legendary Fishing Rod"
fns.dwb_11.ROD_LURE = "Drowned Lure"
fns.dwb_11.ROD_ISAO = "Legendary Fisherman Isao"
fns.dwb_11.ROD_TOLL = { { name = "Crustadon", count = 2 }, { name = "Krathulon", count = 2 } }
fns.dwb_11.ROD_TOLL_FLAG = "DrownedLine_Paid"
fns.dwb_11.ROD_TOLL_ANSWER = "IsaoTakeToll"
fns.dwb_11.ROD_TOLL_BAITS = { "Golden Tentacle", "Fish Head" }
fns.dwb_11.ROD_TOLL_ROUTE = { fns.dwb_11.ROD_ISAO, "Isao_2", "Isao_3", "Isao_4", "Isao_5" }
fns.dwb_11.ROD_TOLL_TAIL = { "Isao_Toll", "Isao_Toll2", "Isao_Toll3", "Isao_Toll4", "Isao_Toll5", "Isao_Toll6", "Isao_Toll7" }
fns.dwb_11.ROD_NODES = { Isao = true, [fns.dwb_11.ROD_ISAO] = true }
fns.dwb_11.ROD_LURE_STANDS = {
    Vector3.new(-151, 794, 188),
    Vector3.new(-147, 807, 152),
    Vector3.new(-143, 807, 158),
    Vector3.new(-147, 807, 130)
}
fns.dwb_11.ROD_FINAL_STAND = Vector3.new(-1990, 159, 270)
fns.dwb_11.ROD_STAND_CATCHES = 7
fns.dwb_11.ROD_DROP_HEIGHT = 12
fns.dwb_11.ROD_PAUSE = 5
bSg.RodController.finished = fns.fn6836
bSg.RodController.tollPaid = fns.fn1533
bSg.RodController.tollShort = fns.fn5111
bSg.RodController.pause = fns.fn5124
bSg.RodController.surfaceNear = fns.fn1740
bSg.RodController.holdRod = fns.fn3971
bSg.RodController.useBait = function(anT, anU)
    local cFg
    local cFf
    cFf = nil
    cFg = nil
    cFf = 0
    if anT then
        if fns.dwb_52(anT) <= 0 then
            return false
        end
        cFf = fns.dwb_50(anT)
        if not cFf then
            return false
        end
        cFg = function()
            local cFd = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
            return cFd
        end
        if cFg() == cFf then
            return true
        end
        bQR("EquipBait", cFf)
        return bRD(function()
            return cFg() == cFf
        end, 4, anU) == true
    end
    cFg = function()
        local cFd = (tonumber(fns.dwb_120({ "Misc", "EquippedBaitId" }, 0))) or 0
        return cFd
    end
    if cFg() == cFf then
        return true
    end
    bQR("EquipBait", cFf)
    return bRD(function()
        return cFg() == cFf
    end, 4, anU) == true
end
bSg.RodController.castFrom = function(an4, an5, an6)
    local cFi
    local cFm_2, cFm_4
    local cFl_2, cFl_3, cFl_4
    local cFj = fns.dwb_4()
    local cFk = not cFj or (cFj.Position - an4).Magnitude > 12
    local cFk_5
    if cFk then
        bSs.RodStatus = "Walking to " .. an5
        local cFk_1 = not fns.dwb_111(an4, 0.5, an6) or an6()
        if cFk_1 then
            return "nocast"
        elseif not bRD(bSg.FishController.footing, 4, an6) then
            if not an6() then
                bSg.RodController.pause("No footing at " .. an5, 10)
            end
            return "nocast"
        else
            cFj = fns.dwb_4()
            local cFk_2 = bSg.RodController.surfaceNear()
            local cFm_1 = nil
            if cFl_3 then
                cFm_1 = cFk_2
            end
            local cFk_3 = bSg.FishController.castPoint(cFm_1)
            if not cFk_5 then
                if not an6() then
                    bSg.RodController.pause("No water in reach of " .. an5, 10)
                end
                return "nocast"
            end
            if cFj then
                cFi = Vector3.new(cFk_3.X, cFj.Position.Y, cFk_3.Z)
                if (cFi - cFj.Position).Magnitude > 0.1 then
                    pcall(function()
                        cFj.CFrame = CFrame.lookAt(cFj.Position, cFi)
                    end)
                end
            end
            cFl_2, cFm_2 = bSg.FishController.runCast(cFk_3, an6, "RodStatus")
            return cFm_2
        end
    elseif not bRD(bSg.FishController.footing, 4, an6) then
        if not an6() then
            bSg.RodController.pause("No footing at " .. an5, 10)
        end
        return "nocast"
    else
        cFj = fns.dwb_4()
        local cFk_4 = bSg.RodController.surfaceNear()
        cFl_3 = cFj
        local cFm_3 = nil
        if cFl_3 then
            cFl_3 = cFk_4
        end
        if cFl_3 then
            cFl_3 = cFj.Position.Y - cFk_4 > fns.dwb_11.ROD_DROP_HEIGHT
        end
        if cFl_3 then
            cFm_3 = cFk_4
        end
        cFk_5 = bSg.FishController.castPoint(cFm_3)
        if not cFk_5 then
            if not an6() then
                bSg.RodController.pause("No water in reach of " .. an5, 10)
            end
            return "nocast"
        end
        if cFj then
            cFi = Vector3.new(cFk_5.X, cFj.Position.Y, cFk_5.Z)
            if (cFi - cFj.Position).Magnitude > 0.1 then
                pcall(function()
                    cFj.CFrame = CFrame.lookAt(cFj.Position, cFi)
                end)
            end
        end
        cFl_4, cFm_4 = bSg.FishController.runCast(cFk_5, an6, "RodStatus")
        return cFm_4
    end
end
bSg.RodController.opening = fns.fn3621
bSg.RodController.walk = function(aoA, aoB, aoC)
    local cFz = bQe.dialogue()
    local cFA = bQe.dialogueUtility()
    local cFB = type(cFz) == "table" and cFz.Diagloues
    local cFB_1 = cFB or nil
    local cFz_2 = type(cFB_1) ~= "table" or type(cFA) ~= "table" or not bQG(cFA.DoAll)
    if cFz_2 then
        bSs.RodStatus = "Cannot read the dialogue"
        return false
    end
    local Watch = bQe.Watch
    for i, v in ipairs(aoA) do
        local cFO = v
        if aoC() then
            return false
        end
        if not bRD(function()
            return Watch.node == cFO
        end, 6, aoC) then
            if not aoC() then
                bSs.RodStatus = aoB and "Isao did not open " .. cFO or "The conversation ended early"
            end
            return aoB == nil
        end
        local cFz_4 = cFB_1[cFO]
        if type(cFz_4) ~= "table" then
            return false
        end
        local cFC_2 = aoA[i + 1] or aoB
        local cFD = cFC_2
        local cFE
        if type(cFz_4.Answers) == "table" then
            if not cFD then
                return true
            end
            for k, v in pairs(cFz_4.Answers) do
                if v == cFD then
                    cFE = k
                    break
                end
            end
            if not cFE then
                bSs.RodStatus = cFO .. " has no answer for " .. tostring(cFD)
                return false
            end
        else
            if not (cFz_4.IfTrue ~= nil) then
                return aoB == nil
            end
            if cFC_2 then
                cFC_2 = cFz_4.IfTrue ~= cFD
            end
            if cFC_2 then
                bSs.RodStatus = cFO .. " does not lead to " .. tostring(cFD)
                return false
            end
            cFD = cFz_4.IfTrue
        end
        bSs.RodStatus = aoB and "Paying the toll -- " .. cFO or "Hearing Isao out"
        fns.dwb_144(cFA.DoAll, cFD, cFE)
        task.wait(0.45)
    end
    return true
end
bSg.RodController.payToll = function(ao_)
    local cF__2
    if not bQe.watchDialogue() then
        bSs.RodStatus = "Cannot watch the dialogue"
        return false
    end
    local Watch = bQe.Watch
    local cFW = bQe.dialogueUtility()
    local node = Watch.node
    local cFX_3, cFX_5, cFX_6
    local cFY = node ~= ""
    local cFY_2, cFY_4, cFY_5
    local cFZ = type(node) == "string" and cFY
    local cFZ_6, cFZ_7
    if cFZ then
        local cFY_1 = node:match("^[^_]+")
        local cFZ_1 = not fns.dwb_11.ROD_NODES[node]
        if cFZ_1 then
            cFZ_1 = not (cFY_1 and fns.dwb_11.ROD_NODES[cFY_1])
        end
        if cFZ_1 then
            bSg.RodController.pause("Close the open dialogue first", 8)
            return false
        end
        local cFX_2 = type(cFW) == "table" and bQG(cFW.Close)
        if cFX_2 then
            fns.dwb_144(cFW.Close)
        end
        bRD(function()
            return Watch.node == nil
        end, 3, ao_)
        Watch.node = nil
        cFX_3, cFY_2 = bQe.reachNpc(fns.dwb_11.ROD_ISAO, ao_, "RodStatus")
        local cFZ_2 = not cFX_3 or ao_()
        if cFZ_2 then
            if not ao_() then
                bSg.RodController.pause("Cannot reach " .. fns.dwb_11.ROD_ISAO, 10)
            end
            return false
        end
        local cFZ_3 = bSg.RodController.opening(fns.dwb_11.ROD_ISAO)
        if cFZ_6 ~= fns.dwb_11.ROD_ISAO then
            bSg.RodController.pause("Isao is not taking the toll (" .. tostring(cFZ_3) .. ")", 10)
            return false
        end
        bR5(cFX_3)
        local cF__1 = (bQe.closeOnNpc(cFY_2, ao_, cFX_3, 1)) and not ao_()
        if cF__2 then
            bSg.RodController.walk(fns.dwb_11.ROD_TOLL_ROUTE, fns.dwb_11.ROD_TOLL_ANSWER, ao_)
        end
        local cFX_4 = false
        if cFZ_7 then
            cFX_4 = bRD(function()
                return bSg.RodController.tollPaid()
            end, 8, ao_) == true
            if cFX_6 then
                bSg.RodController.walk(fns.dwb_11.ROD_TOLL_TAIL, nil, ao_)
            end
        end
        local cFY_3 = type(cFW) == "table" and bQG(cFW.Close)
        if cFY_5 then
            fns.dwb_144(cFW.Close)
        end
        bQR("NpcTalking", "Ended")
        return cFX_4
    end
    cFX_5, cFY_4 = bQe.reachNpc(fns.dwb_11.ROD_ISAO, ao_, "RodStatus")
    local cFZ_5 = not cFX_5 or ao_()
    if cFZ_5 then
        if not ao_() then
            bSg.RodController.pause("Cannot reach " .. fns.dwb_11.ROD_ISAO, 10)
        end
        return false
    end
    cFZ_6 = bSg.RodController.opening(fns.dwb_11.ROD_ISAO)
    if cFZ_6 ~= fns.dwb_11.ROD_ISAO then
        bSg.RodController.pause("Isao is not taking the toll (" .. tostring(cFZ_6) .. ")", 10)
        return false
    end
    bR5(cFX_5)
    cFZ_7 = false
    cF__2 = (bQe.closeOnNpc(cFY_4, ao_, cFX_5, 1)) and not ao_()
    if cF__2 then
        cFZ_7 = bSg.RodController.walk(fns.dwb_11.ROD_TOLL_ROUTE, fns.dwb_11.ROD_TOLL_ANSWER, ao_)
    end
    cFX_6 = false
    if cFZ_7 then
        cFX_6 = bRD(function()
            return bSg.RodController.tollPaid()
        end, 8, ao_) == true
        if cFX_6 then
            bSg.RodController.walk(fns.dwb_11.ROD_TOLL_TAIL, nil, ao_)
        end
    end
    cFY_5 = type(cFW) == "table" and bQG(cFW.Close)
    if cFY_5 then
        fns.dwb_144(cFW.Close)
    end
    bQR("NpcTalking", "Ended")
    return cFX_6
end
bSg.RodController.raiseLure = fns.fn6713
bSg.RodController.fishToll = fns.fn6788
bSg.RodController.raiseRod = fns.fn5435
bSg.RodController.advance = fns.fn1477
bSg.RodController.step = function()
    if not fns.dwb_118() then
        return
    end
    if bSg.RodController.finished() then
        fns.dwb_142.uncommit(bSg.RodController.priorityKey)
        bSs.RodStatus = "The " .. fns.dwb_11.ROD_PRIZE .. " is yours"
        return
    end
    local cGP = os.clock()
    local cGP_1
    local cGQ = bSg.RodController.nextDue or 0
    local cGQ_1
    if cGP < cGQ then
        fns.dwb_142.uncommit(bSg.RodController.priorityKey)
        return
    end
    fns.dwb_142.commit(bSg.RodController.priorityKey)
    if not bSU(bSg.RodController.priorityKey) then
        return
    end
    cGP_1, cGQ_1 = pcall(function()
        local cGM
        cGM = fns.dwb_122(bSg.RodController)
        local function cGN()
            local cGK = not fns.dwb_118() or cGM() or not fns.dwb_147.controllerValid(bSg.RodController)
            return cGK
        end
        if not fns.dwb_17(20) then
            bSs.RodStatus = "Waiting for character"
            return
        end
        if cGN() then
            return
        end
        bSg.FishController.answerBites()
        bSg.RodController.advance(cGN)
    end)
    bSu(bSg.RodController.priorityKey)
    if not cGP_1 then
        warn("[Ouroboros] legendary rod step: " .. tostring(cGQ_1))
    end
end
bQS = {
    PingId = "",
    Ping = false,
    SkipQuiet = true,
    Started = os.clock(),
    Queue = {},
    Draining = false,
    Loop = nil,
    ItemHook = nil,
    ItemFolder = nil,
    Rule = "────────────────────────",
    Mark = {},
    Style = "Report",
    LootRarity = 1,
    LootPending = {},
    LootFlushing = false,
    LootHooks = {}
}
bQS.Order = { "Overworld", "Dungeon" }
bQS.Styles = { "Report", "Loot Drops", "Both" }
bQS.Catalog = {
    Overworld = {
        { key = "Levels", label = "Levels Gained" },
        { key = "Items", label = "Items Obtained" },
        { key = "Quests", label = "Quests Completed" },
        { key = "Kills", label = "Enemies Defeated" },
        { key = "Wen", label = "Wen Earned" },
        { key = "Caches", label = "Sealed Caches" },
        { key = "Souls", label = "Souls Collected" },
        { key = "Fish", label = "Fish Caught" },
        { key = "Skills", label = "Skill Nodes Unlocked" },
        { key = "Shop", label = "Shop Purchases" }
    },
    Dungeon = {
        { key = "Floors", label = "Floors Cleared" },
        { key = "Runs", label = "Runs Finished" },
        { key = "Cards", label = "Cards Picked" },
        { key = "Points", label = "Run Points Earned" },
        { key = "ExpBought", label = "Exp Bought" },
        { key = "Kills", label = "Enemies Defeated" },
        { key = "Lives", label = "Hearts Lost" }
    }
}
bQS.Fresh = fns.fn540
bQS.Channels = { Overworld = bQS.Fresh("Overworld", 16758465, 30), Dungeon = bQS.Fresh("Dungeon", 10233087, 15) }
bQS.DefaultItemCategories = {
    Katana = true,
    Weapons = true,
    Haori = true,
    Neck = true,
    Head = true,
    Face = true,
    Back = true,
    Outfits = true,
    Mounts = true,
    Schematics = true
}
bQS.ItemCategories = {}
for k, v in pairs(bQS.DefaultItemCategories) do
    bQS.ItemCategories[k] = v
end
local dwb_22_35 = 1
repeat
    local dwb_3_40 = {
        "nwqklrti",
        "rjipxppkppa",
        "atvniyyu",
        "epllu",
        "sbucstzazx",
        "rvsfxjhpx",
        "jwbxib",
        "hiotpris",
        "eryvmmxvr",
        "rlcsy"
    }
    local dHW = dwb_22_35
    local dwb_164_21 = dwb_3_40[dHW % 10 + 1]
    if dwb_164_21:len() <= dwb_164_21:gsub("(.)", "%1%1", dHW % 3 % 2 + 1):len() then
        bQS.Zone = fns.fn2074
        bQS.Current = fns.fn2708
        bQS.Requester = function()
            local cHc_2
            local cHb_2
            if bQG(request) then
                return request
            elseif bQG(http_request) then
                return http_request
            else
                for i, v in ipairs({ "syn", "http", "fluxus" }) do
                    local cHk = v
                    cHb_2, cHc_2 = pcall(function()
                        local cG5 = getgenv and getgenv()[cHk]
                        local cG6 = cG5
                        local cHa = if cG6 then 1 else 0
                        local cG8 = 1203 * cHa + 2824 * (1 - cHa)
                        local cG9 = 3615 * cHa + 420 * (1 - cHa)
                        if not ((cG8 * 1559 + cG9 * 1263 + cG8 * cG9) % 16777213 == 10790067) then
                            cG6 = nil
                        end
                        local cG5_3 = cG6
                        local cG6_2 = type(cG5_3) == "table" and cG5_3.request
                        return cG6_2 or nil
                    end)
                    local cHd = cHb_2 and bQG(cHc_2)
                    if cHd then
                        return cHc_2
                    end
                end
                return nil
            end
        end
        bQS.ValidUrl = fns.fn1038
        bQS.UrlFor = fns.fn7375
        bQS.Post = fns.fn881
        bQS.Drain = fns.fn4426
        bQS.Queued = fns.fn3644
        bQS.Mention = fns.fn2574
        bQS.Commas = fns.fn7167
        bQS.Clock = fns.fn2249
        bQS.Add = fns.fn3803
        bQS.Delta = fns.fn7299
        bQS.Drop = fns.fn7335
        bQS.Gauge = fns.fn2221
        bQS.Changed = fns.fn6120
        bQS.ItemCategory = fns.fn6393
        bQS.OnItem = fns.fn4724
        bQS.BindItems = fns.fn3005
        bQS.CardLabel = fns.fn4612
        bQS.Sample = fns.fn104
        bQS.Counted = fns.fn7602
        bQS.ActivityField = fns.fn1015
        bQS.ItemField = fns.fn4132
        bQS.CardField = fns.fn4917
        bQS.Fields = fns.fn6080
        bQS.Payload = fns.fn5690
        bQS.Reset = fns.fn1369
        bQS.Send = fns.fn4275
        bQS.Rarity = fns.fn2439
        bQS.RarityNames = fns.fn1438
        bQS.OnLoot = fns.fn4951
        bQS.FlushLoot = fns.fn757
        bQS.WatchDrop = function(atH)
            local cKi = bQS.LootHooks[atH] or not atH:IsA("BasePart")
            if cKi then
                return
            end
            bQS.LootHooks[atH] = atH:GetAttributeChangedSignal("DropClaimedBy"):Connect(function()
                if atH:GetAttribute("DropClaimedBy") == LocalPlayer.UserId then
                    local attr = atH:GetAttribute("DropItemId")
                    local cKf = attr ~= ""
                    local cKg = type(attr) == "string" and cKf
                    if cKg then
                        pcall(bQS.OnLoot, attr)
                    end
                end
            end)
        end
        bQS.LootAdded = fns.dwb_51.CollectionService:GetInstanceAddedSignal("LootDrop"):Connect(fns.fn3375)
        bQS.LootRemoved = fns.dwb_51.CollectionService:GetInstanceRemovedSignal("LootDrop"):Connect(function(atR)
            local cKk = bQS.LootHooks[atR]
            if cKk then
                task.delay(1, function()
                    cKk:Disconnect()
                    bQS.LootHooks[atR] = nil
                end)
            end
        end)
    else
        fns.dwb_51.Zone = fns.fn2074
        fns.dwb_51.Current = fns.fn2708
        fns.dwb_51.Requester = function()
            local cHc_1
            local cHb_1
            if bQG(request) then
                return request
            elseif bQG(http_request) then
                return http_request
            else
                for i, v in ipairs({ "syn", "http", "fluxus" }) do
                    local cHk = v
                    cHb_1, cHc_1 = pcall(function()
                        local cG5 = getgenv and getgenv()[cHk]
                        local cG6 = cG5
                        local cHa = if cG6 then 1 else 0
                        local cG8 = 1203 * cHa + 2824 * (1 - cHa)
                        local cG9 = 3615 * cHa + 420 * (1 - cHa)
                        if not ((cG8 * 1559 + cG9 * 1263 + cG8 * cG9) % 16777213 == 10790067) then
                            cG6 = nil
                        end
                        local cG5_1 = cG6
                        local cG6_1 = type(cG5_1) == "table" and cG5_1.request
                        return cG6_1 or nil
                    end)
                    local cHd = cHb_1 and bQG(cHc_1)
                    if cHd then
                        return cHc_1
                    end
                end
                return nil
            end
        end
        fns.dwb_51.ValidUrl = fns.fn1038
        fns.dwb_51.UrlFor = fns.fn7375
        fns.dwb_51.Post = fns.fn881
        fns.dwb_51.Drain = fns.fn4426
        fns.dwb_51.Queued = fns.fn3644
        fns.dwb_51.Mention = fns.fn2574
        fns.dwb_51.Commas = fns.fn7167
        fns.dwb_51.Clock = fns.fn2249
        fns.dwb_51.Add = fns.fn3803
        fns.dwb_51.Delta = fns.fn7299
        fns.dwb_51.Drop = fns.fn7335
        fns.dwb_51.Gauge = fns.fn2221
        fns.dwb_51.Changed = fns.fn6120
        fns.dwb_51.ItemCategory = fns.fn6393
        fns.dwb_51.OnItem = fns.fn4724
        fns.dwb_51.BindItems = fns.fn3005
        fns.dwb_51.CardLabel = fns.fn4612
        fns.dwb_51.Sample = fns.fn104
        fns.dwb_51.Counted = fns.fn7602
        fns.dwb_51.ActivityField = fns.fn1015
        fns.dwb_51.ItemField = fns.fn4132
        fns.dwb_51.CardField = fns.fn4917
        fns.dwb_51.Fields = fns.fn6080
        fns.dwb_51.Payload = fns.fn5690
        fns.dwb_51.Reset = fns.fn1369
        fns.dwb_51.Send = fns.fn4275
        fns.dwb_51.Rarity = fns.fn2439
        fns.dwb_51.RarityNames = fns.fn1438
        fns.dwb_51.OnLoot = fns.fn4951
        fns.dwb_51.FlushLoot = fns.fn757
        fns.dwb_51.WatchDrop = function(atH)
            local cKi = bQS.LootHooks[atH] or not atH:IsA("BasePart")
            if cKi then
                return
            end
            bQS.LootHooks[atH] = atH:GetAttributeChangedSignal("DropClaimedBy"):Connect(function()
                if atH:GetAttribute("DropClaimedBy") == LocalPlayer.UserId then
                    local attr = atH:GetAttribute("DropItemId")
                    local cKf = attr ~= ""
                    local cKg = type(attr) == "string" and cKf
                    if cKg then
                        pcall(bQS.OnLoot, attr)
                    end
                end
            end)
        end
        fns.dwb_51.LootAdded = bQS.CollectionService:GetInstanceAddedSignal("LootDrop"):Connect(fns.fn3375)
        fns.dwb_51.LootRemoved = bQS.CollectionService:GetInstanceRemovedSignal("LootDrop"):Connect(function(atR)
            local cKk = bQS.LootHooks[atR]
            if cKk then
                task.delay(1, function()
                    cKk:Disconnect()
                    bQS.LootHooks[atR] = nil
                end)
            end
        end)
    end
    dwb_22_35 = (dwb_22_35 + 2) % 4
until (dwb_22_35 * 3 + 1) % 4 == 2
for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
    bQS.WatchDrop(v)
end
bTE = nil
fns.dwb_123.Track(fns.fn6564)
bQS.Running = fns.fn2585
bQS.Start = fns.fn3130
bQS.Stop = fns.fn4337
fns.dwb_123.Track(bQS.Stop)
fns.dwb_11.EXP_LISTING = "1,000 Exp"
fns.dwb_11.EXP_PER_BUNDLE = 1000
fns.dwb_11.EXP_BUNDLE_POINTS = 3500
fns.dwb_11.EXP_MAX_BUNDLES = 99
fns.dwb_11.CRYSTAL_NAME = "Tower Crystal"
fns.dwb_11.CRYSTAL_POSITION = Vector3.new(-2366.914, 1148.534, -2686.362)
bSg.CrystalController.points = fns.fn2790
bSg.CrystalController.price = fns.fn6426
bSg.CrystalController.locked = fns.fn6323
bSg.CrystalController.affordable = fns.fn4394
bSg.CrystalController.prompt = fns.fn5151
bSg.CrystalController.crystalPoint = fns.fn6543
bSg.CrystalController.buy = function(auP)
    local CrystalController
    CrystalController = nil
    local cLu, lease
    CrystalController = bSg.CrystalController
    lease = fns.dwb_142.lease
    local cLw = fns.dwb_147.runs[coroutine.running()]
    local cLx = cLw and fns.dwb_122(CrystalController)
    cLu = cLx
    local function cLw_1()
        local cLn = not fns.dwb_118()
        local cLs = if cLn then 1 else 0
        local cLq = 805 * cLs + 802 * (1 - cLs)
        local cLr = 3893 * cLs + 3745 * (1 - cLs)
        if not ((cLq * 1132 + cLr * 4078 + cLq * cLr) % 16777213 == 3143566) then
            cLn = fns.dwb_142.lease ~= lease
        end
        if not cLn then
            local cLo = cLu and cLu()
            cLn = cLo
        end
        return cLn
    end
    local cLx_1 = (CrystalController.crystalPoint()) or fns.dwb_11.CRYSTAL_POSITION
    bSs.CrystalStatus = "Travelling to the crystal"
    if not fns.dwb_111(cLx_1 + Vector3.new(0, 3, 4), 0.4, cLw_1) then
        return false
    end
    bRD(function()
        return CrystalController.prompt() ~= nil
    end, 6, cLw_1)
    if cLw_1() then
        return false
    end
    local cLx_2 = CrystalController.prompt()
    if cLx_2 then
        bR5(cLx_2)
        task.wait(0.8)
    end
    if cLw_1() then
        return false
    end
    local cLx_3 = CrystalController.points()
    bSs.CrystalStatus = string.format("Buying %d x %s", auP, fns.dwb_11.EXP_LISTING)
    bQR("PurchaseFromShop", fns.dwb_11.EXP_LISTING, auP)
    task.wait(1.5)
    if not cLw_1() then
        bQR("NpcTalking", "Ended")
    end
    if not fns.dwb_118() then
        return false
    end
    local cLw_2 = cLx_3 - CrystalController.points()
    if cLw_2 <= 0 then
        bSs.CrystalStatus = "Cannot afford the bundle"
        return false
    end
    local cLx_4 = auP * fns.dwb_11.EXP_PER_BUNDLE
    bSs.ExpBundles = bSs.ExpBundles + auP
    bSs.ExpGained = bSs.ExpGained + cLx_4
    bSs.PointsSpent = bSs.PointsSpent + cLw_2
    bSs.CrystalStatus = string.format("Bought %d exp for %d points", cLx_4, cLw_2)
    return true
end
bSg.CrystalController.step = fns.fn7477
fns.dwb_11.SELL_MAX_PER_CALL = 999
fns.dwb_11.SELL_MODES = { "Selected Items", "All Sellable" }
bSg.SellController.rarityName = fns.fn5211
bSg.SellController.rarityNames = fns.fn1303
bSg.SellController.stock = fns.fn2917
bSg.SellController.names = fns.fn5758
fns.dwb_123.SellItemNames = fns.fn3073
fns.dwb_123.RefreshSellNames = fns.fn675
bSg.SellController.plan = fns.fn4896
bSg.SellController.sell = fns.fn1703
bSg.SellController.step = fns.fn2171
bSg.SellController.rearm = fns.fn3450
fns.dwb_123.SetAutoSell = fns.fn531
fns.dwb_123.SetSellMode = fns.fn99
fns.dwb_123.SetSellItems = fns.fn6004
fns.dwb_123.SetSellRarities = fns.fn514
fns.dwb_123.SetSellKeep = fns.fn5294
fns.dwb_123.SetSellInterval = fns.fn862
fns.dwb_123.SellRarityNames = fns.fn5375
fns.dwb_123.SellNow = fns.fn3307
bTE = {
    tweaks = {
        noStun = true,
        noRagdoll = false,
        noSlowdown = false,
        instantKill = false,
        killThreshold = 10,
        chestKill = false,
        chestKillThreshold = 10,
        infStamina = false,
        infClimb = false,
        infHorse = false,
        noDrown = false,
        noDashCd = false,
        noSun = false,
        alwaysRun = false,
        ownership = false,
        ownershipRange = 250
    }
}
bRs, bTq, bRf, fns.connection, fns.dwb_23, bS3, fns.dwb_138, fns.dwb_81, fns.dwb_77, fns.dwb_76, onChildAdded, fns.dwb_67, fns.dwb_49, fns.dwb_102, bST, fns.dwb_152, fns.dwb_40, fns.dwb_126 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (bRs and not fns.dwb_49 or (not bRs or not bRs)) and (not bTq or not fns.connection or (fns.connection or not fns.dwb_49)) or (fns.dwb_40 or not fns.dwb_49) and (not bTq or not fns.dwb_67) and (fns.connection and fns.dwb_49 or not fns.connection and not bTq) or not ((bRs and not fns.dwb_49 or (not bRs or not bRs)) and (not bTq or not fns.connection or (fns.connection or not fns.dwb_49)) or (fns.dwb_40 or not fns.dwb_49) and (not bTq or not fns.dwb_67) and (fns.connection and fns.dwb_49 or not fns.connection and not bTq)) then
    bRs = { Stun = true, Strict_Stun = true, CombatStun = true, KnockedOut = true, Cancel = true }
    bTq = { RagDoll = true }
    bRf = bTE.tweaks
    onChildAdded = function(axc)
        if bRf.noStun and bRs[axc.Name] then
            pcall(function()
                axc:Destroy()
            end)
            return
        end
        if bRf.noRagdoll and bTq[axc.Name] then
            pcall(function()
                axc:Destroy()
            end)
        end
    end
    fns.dwb_67 = fns.fn5057
else
    onChildAdded = { Stun = true, Cancel = true, KnockedOut = true, Strict_Stun = true, CombatStun = true }
    bRf = { RagDoll = true }
    bRs = fns.dwb_67.tweaks
    bTq = function(axc)
        if bRf.noStun and bRs[axc.Name] then
            pcall(function()
                axc:Destroy()
            end)
            return
        end
        if bRf.noRagdoll and bTq[axc.Name] then
            pcall(function()
                axc:Destroy()
            end)
        end
    end
    bTE = fns.fn5057
end
fns.dwb_123.Track(fns.fn5118)
fns.dwb_49 = fns.fn3155
bS3 = {}
fns.dwb_102 = function()
    local cNz = fns.dwb_99()
    if not cNz then
        return
    end
    local RagDoll = cNz:FindFirstChild("RagDoll")
    local cNA = RagDoll and RagDoll:IsA("BoolValue") and RagDoll.Value
    if cNA then
        pcall(function()
            RagDoll.Value = false
        end)
    end
    local RagdollConstraints = cNz:FindFirstChild("RagdollConstraints")
    if RagdollConstraints then
        for i, descendant in ipairs(RagdollConstraints:GetDescendants()) do
            local cNH = descendant
            local cNz_1 = (cNH:IsA("Constraint")) and cNH.Enabled
            if cNz_1 then
                bS3[cNH] = true
                pcall(function()
                    cNH.Enabled = false
                end)
            end
        end
    end
    local cNy = fns.dwb_104()
    if cNy and cNy.PlatformStand then
        pcall(function()
            cNy.PlatformStand = false
        end)
    end
end
bTE.restoreRagdoll = function()
    for k in pairs(bS3) do
        local cNM = k
        if cNM.Parent then
            pcall(function()
                cNM.Enabled = true
            end)
        end
    end
    table.clear(bS3)
end
fns.dwb_123.Track(bTE.restoreRagdoll)
bTE.applySlowdown = fns.fn7666
fns.dwb_123.Track(fns.fn5153)
bST = function()
    local ToServer
    local cNZ = fns.dwb_81 or type(fns.dwb_26.SignalFunction) ~= "table"
    if cNZ then
        return false
    end
    ToServer = fns.dwb_26.SignalFunction.ToServer
    if not bQG(ToServer) then
        fns.dwb_71("SignalFunction.ToServer")
        return false
    end
    fns.dwb_81 = ToServer
    fns.dwb_26.SignalFunction.ToServer = function(ax9, ...)
        if bRf.noSun and ax9 == "SunDamage" then
            local cNP_1 = table.pack(...)
            local cNQ_1 = false
            local cNR = cNP_1.n
            local cNV = 1
            while cNV <= cNR do
                local cNW = cNV
                if cNP_1[cNW] == true then
                    cNP_1[cNW] = false
                    cNQ_1 = true
                end
                cNV += 1
            end
            if cNQ_1 then
                return ToServer(ax9, table.unpack(cNP_1, 1, cNP_1.n))
            end
            return ToServer(ax9, ...)
        end
        return ToServer(ax9, ...)
    end
    return true
end
fns.dwb_123.Track(fns.fn3538)
bTE.setNoSun = fns.fn56
fns.dwb_77 = false
fns.dwb_152 = fns.fn45
fns.dwb_123.Track(fns.fn6711)
fns.dwb_40 = function()
    if not bRf.instantKill then
        return
    end
    local cOa = 1 - math.clamp(bRf.killThreshold, 0, 100) / 100
    for i, v in ipairs(fns.dwb_44()) do
        local model = v.model
        local humanoid = v.humanoid
        local cOc = (model:FindFirstChild("HumanoidRootPart")) or model.PrimaryPart
        local cOb_1 = cOc
        if cOc then
            cOc = cOb_1:IsA("BasePart")
        end
        if cOc then
            cOc = cOb_1.ReceiveAge == 0
        end
        if cOc then
            cOc = humanoid.MaxHealth > 0
        end
        if cOc then
            cOc = humanoid.Health <= humanoid.MaxHealth * cOa
        end
        if cOc then
            pcall(function()
                humanoid.Health = 0
            end)
        end
    end
end
fns.dwb_126 = function()
    if not bRf.chestKill or not bSg.ChestController.running or bSg.ChestController.stopped then
        return
    end
    local cOo_1 = {}
    for i, v in ipairs(fns.dwb_45()) do
        if v.model:GetAttribute("ChestState") == "Locked" then
            cOo_1[#cOo_1 + 1] = { centre = v.model:GetPivot().Position, guards = fns.dwb_11.CACHE_GUARDS[v.tier] }
        end
    end
    if #cOo_1 == 0 then
        return
    end
    local cOp = 1 - math.clamp(bRf.chestKillThreshold, 0, 100) / 100
    for i, v in ipairs(fns.dwb_44()) do
        local model = v.model
        local humanoid = v.humanoid
        local cOr = (model:FindFirstChild("HumanoidRootPart")) or model.PrimaryPart
        local cOq_1 = cOr
        if cOr then
            cOr = cOq_1:IsA("BasePart")
        end
        if cOr then
            cOr = cOq_1.ReceiveAge == 0
        end
        if cOr then
            cOr = humanoid.MaxHealth > 0
        end
        if cOr then
            cOr = humanoid.Health <= humanoid.MaxHealth * cOp
        end
        if cOr then
            for i, v2 in ipairs(cOo_1) do
                if v2.guards[v.name] and (cOq_1.Position - v2.centre).Magnitude <= fns.dwb_11.CHEST_GUARD_RANGE then
                    pcall(function()
                        humanoid.Health = 0
                    end)
                    break
                end
            end
        end
    end
end
fns.dwb_76 = task.delay(0, fns.fn196)
fns.dwb_123.Track(fns.fn501)
bTE.zonePoints = fns.fn308
bTE.npcPoints = fns.fn398
bTE.sortedKeys = fns.fn6069
tweaks2, bQ5, fns.dwb_39, fns.dwb_60, bRT, bQT, fns.dwb_97, fns.dwb_29 = nil, nil, nil, nil, nil, nil, nil, nil
tweaks2 = bTE.tweaks
fns.dwb_60 = function()
    local Player_Service = fns.dwb_87:FindFirstChild("Player_Service")
    local cPI = Player_Service and Player_Service:FindFirstChild("Values")
    local cPH_1 = cPI
    if cPI then
        cPI = cPH_1:FindFirstChild(LocalPlayer.Name)
    end
    local cPH_2 = cPI
    if cPI then
        cPI = cPH_2:FindFirstChild("Stamina")
    end
    local cPG = cPI
    if not cPG then
        return
    end
    local cPF = tonumber(cPG.MaxValue)
    if cPF and cPG.Value < cPF then
        pcall(function()
            cPG.Value = cPF
        end)
    end
end
bRT = function()
    local cPR = fns.dwb_99()
    local cPS = cPR
    if cPS then
        local cPT = (cPR:FindFirstChild("SHC")) or cPR:FindFirstChild("SHCS")
        cPS = cPT
    end
    local cPR_1 = cPS
    if not cPR_1 then
        return
    end
    local Dash = cPR_1:FindFirstChild("Dash")
    local cPR_2 = Dash and Dash:IsA("NumberValue")
    if cPR_2 then
        pcall(function()
            Dash:Destroy()
        end)
    end
end
bQ5 = { climb = {}, horse = {}, breath = {} }
fns.dwb_39 = 0
bQT = fns.fn4714
fns.dwb_97 = fns.fn1241
fns.dwb_29 = function()
    if tweaks2.infClimb then
        for i, v in ipairs(bQ5.climb) do
            local cQg_1 = tonumber(v.MaxClimbTime)
            if cQg_1 then
                v.CurrentStamina = cQg_1
            end
        end
    end
    if tweaks2.noDrown then
        for i, v in ipairs(bQ5.breath) do
            v.Breath = 1
            v.Drowning = false
            v.DiveStart = nil
        end
        local cQf = fns.dwb_99()
        local cQg_2 = cQf and cQf:GetAttribute("SwimDrowning") == true
        if cQg_2 then
            pcall(function()
                cQf:SetAttribute("SwimDrowning", false)
            end)
        end
    end
    for i, v in ipairs(bQ5.horse) do
        if tweaks2.infHorse then
            if v.StaminaDrain ~= 0 then
                v.BaseStaminaDrain = v.BaseStaminaDrain or v.StaminaDrain
                v.StaminaDrain = 0
            end
        elseif v.BaseStaminaDrain ~= nil then
            v.StaminaDrain = v.BaseStaminaDrain
            v.BaseStaminaDrain = nil
        end
    end
end
fns.dwb_123.Track(fns.fn4270)
bTE.resourceTick = fns.fn3092
fns.UserGameSettings, fns.dwb_10, fns.dwb_8, bS0, fns.dwb_64 = nil, nil, nil, nil, nil
fns.UserGameSettings = UserSettings():GetService("UserGameSettings")
fns.dwb_10 = { on = false, connection = nil, busy = false }
bTE.shiftLock = fns.dwb_10
fns.dwb_8 = fns.fn3638
bS0 = fns.fn6089
fns.dwb_64 = function()
    if fns.dwb_10.busy then
        return
    end
    fns.dwb_10.busy = true
    task.spawn(function()
        local cQO = 1
        while cQO <= 3 do
            local cQK_1 = not fns.dwb_10.on or not fns.dwb_118() or not fns.dwb_8()
            if cQK_1 then
                break
            elseif not bS0() then
                break
            else
                task.wait(0.15)
                cQO += 1
            end
        end
        local cQK_2 = fns.dwb_10.on and fns.dwb_118() and fns.dwb_8()
        if cQK_2 then
            pcall(function()
                fns.UserGameSettings.RotationType = Enum.RotationType.MovementRelative
            end)
            local cQJ = fns.dwb_104()
            if cQJ and cQJ.CameraOffset.Magnitude > 0 then
                pcall(function()
                    cQJ.CameraOffset = Vector3.zero
                end)
            end
        end
        fns.dwb_10.busy = false
    end)
end
fns.dwb_10.set = fns.fn1157
fns.dwb_123.Track(fns.fn5114)
fns.dwb_43, fns.dwb_68, fns.dwb_30, bRG, bTF, bRt, bTr, bRg, bTg, bSd, fns.connection3, fns.dwb_154, bSS, bR9, fns.dwb_151, fns.dwb_105, fns.dwb_91, bQ1, fns.dwb_69, bQh, bQD, bP4, fns.dwb_84, fns.dwb_149, bQk, fns.dwb_35, bSe, bTs, fns.bRv, bQq, bQ_, bSF, bRQ, bRA, dwb_22_36 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fns.dwb_43 = {
    on = false,
    npc = true,
    pvp = true,
    mitigate = true,
    hold = false,
    lead = 0,
    radius = 40,
    generation = 0,
    auto = true,
    reserve = 2,
    points = nil,
    stats = {
        fired = 0,
        locked = 0,
        late = 0,
        missed = 0,
        cancelled = 0,
        perfect = 0,
        graded = 0,
        errors = 0,
        ambiguous = 0
    }
}
bTE.parry = fns.dwb_43
fns.dwb_68 = {
    windowNpc = 0.25,
    windowPvp = 0.1,
    relock = 1,
    defaultRtt = 0.09,
    reachPad = 8,
    facingMin = -0.35,
    margin = 0.005,
    acknowledgement = 2,
    refresh = 0.05,
    retries = 3,
    retryGap = 1,
    recovery = 4,
    gradeWait = 1.2,
    presetRecheck = 2,
    pingInterval = 0.5,
    threatLifetime = 3,
    reserveAhead = 0.12
}
bRG = {}
bTF = {}
bRt = setmetatable({}, { __mode = "k" })
bTr = { Stun = true, CombatStun = true }
bRg = {
    Strict_Stun = true,
    KnockedOut = true,
    Swapping = true,
    Training = true,
    Cancel = true,
    pause_gameplay = true,
    combatdisabled = true,
    PierceBlock = true
}
bTg = {
    rtt = nil,
    jitter = 0,
    frame = 0.016666666666666666,
    last = nil,
    attempts = {},
    presetAt = -math.huge,
    refreshAt = 0,
    pingAt = 0,
    claimed = setmetatable({}, { __mode = "k" }),
    rejected = setmetatable({}, { __mode = "k" }),
    owner = nil,
    errorAt = 0,
    catalogSize = 0,
    watching = 0,
    catalogConnections = {}
}
fns.dwb_154 = fns.fn637
bSS = fns.fn556
bR9 = function()
    local Assets = fns.dwb_87:FindFirstChild("Assets")
    local cRh = Assets and Assets:FindFirstChild("Animations")
    local cRf = cRh
    if not cRf then
        return fns.dwb_30
    end
    if bTg.catalogRoot ~= cRf then
        for i, v in ipairs(bTg.catalogConnections) do
            v:Disconnect()
        end
        table.clear(bTg.catalogConnections)
        bTg.catalogRoot = cRf
        bTg.presetAt = -math.huge
        local function onDescendantRemoving()
            local cRa = (fns.dwb_118()) and bTg.catalogRoot == cRf
            if cRa then
                bTg.presetAt = -math.huge
            end
        end
        if cRf.DescendantAdded then
            table.insert(bTg.catalogConnections, cRf.DescendantAdded:Connect(onDescendantRemoving))
            table.insert(bTg.catalogConnections, cRf.DescendantRemoving:Connect(onDescendantRemoving))
        end
    end
    local cRg_2 = os.clock()
    if fns.dwb_30 and cRg_2 - bTg.presetAt < fns.dwb_68.presetRecheck then
        return fns.dwb_30
    end
    bTg.presetAt = cRg_2
    local children = cRf:GetChildren()
    local cRh_2 = type(fns.dwb_26.CombatPresets) == "table" and fns.dwb_26.CombatPresets.Presets
    if type(cRh_2) ~= "table" then
        return fns.dwb_30
    end
    local cRh_3 = {}
    for i, v in ipairs(children) do
        local cRg_4 = v.Name:match("^(.+)_Combat_Anims$")
        local cRj = cRg_4 and type(fns.dwb_26.Items) == "table" and fns.dwb_26.Items[cRg_4]
        local cRk = cRg_4
        if cRk then
            local cRj_1 = cRh_2[cRg_4]
            if not cRj_1 then
                cRj_1 = cRj and cRh_2[cRj.CombatPreset]
            end
            cRk = cRj_1
        end
        local cRj_2 = cRk
        if cRj_2 then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Animation") then
                    local cRk_1 = tonumber(child.Name:match("^Swing_(%d+)$"))
                    local cRl_1 = child.Name == "Run_Hit"
                    if cRk_1 or cRl_1 then
                        local cRn = cRl_1 and cRj_2.CombatRunHit == true and cRh_2.Combat or cRj_2
                        local cRn_1 = cRk_1 or 1
                        local cRn_2 = cRn.delay_before_swing and cRn.delay_before_swing[cRn_1]
                        local cRo = (tonumber(cRn_2)) or tonumber(cRn.default_before_swing) or tonumber(fns.dwb_26.CombatPresets.Default_Swing_Wait)
                        local cRo_1 = cRo or 0
                        local cRn_4 = cRn.delay_before_hit and cRn.delay_before_hit[cRn_1]
                        local cRp = (tonumber(cRn_4)) or tonumber(cRn.default_before_hit)
                        local cRn_5 = cRp or cRo_1
                        local cRn_6 = cRn.Reaches
                        if cRn_6 then
                            cRn_6 = cRn.Reaches[cRn_1] or cRn.Reaches.Default
                        end
                        local cRq_2 = (tonumber(cRn_6)) or 4
                        local Name = v.Name
                        local cRr = cRl_1
                        if cRr then
                            local cRs_1 = (tonumber(cRn.run_swing_remove_on_first)) or 0
                            cRr = cRs_1
                        end
                        local cRr_1 = {
                            folder = Name,
                            name = cRg_4,
                            preset = cRn,
                            combo = cRn_1,
                            running = cRl_1,
                            swing = cRo_1,
                            hit = cRn_5,
                            reach = cRq_2,
                            runTrim = cRr or 0
                        }
                        local cRk_3 = child.AnimationId:match("%d+")
                        if cRk_3 then
                            cRh_3[cRk_3] = cRh_3[cRk_3] or {}
                            table.insert(cRh_3[cRk_3], cRr_1)
                        end
                    end
                end
            end
        end
    end
    if next(cRh_3) then
        fns.dwb_30 = cRh_3
        bTg.catalogSize = 0
        for k in pairs(cRh_3) do
            bTg.catalogSize = bTg.catalogSize + 1
        end
    end
    return fns.dwb_30
end
fns.dwb_151 = fns.fn3941
fns.dwb_105 = fns.fn6605
fns.dwb_91 = fns.fn6224
bQ1 = fns.fn7656
fns.dwb_69 = fns.fn7595
bQh = fns.fn6889
bQD = fns.fn515
if (bRA and not dwb_22_36 and (bQD or dwb_22_36) or not bQD and not dwb_22_36 and (fns.connection3 and fns.dwb_35) or ((not fns.dwb_84 or not bRA) and (fns.connection3 and fns.connection3) or (bQD and dwb_22_36 or (not fns.connection3 or fns.dwb_35)))) and not (bRA and not dwb_22_36 and (bQD or dwb_22_36) or not bQD and not dwb_22_36 and (fns.connection3 and fns.dwb_35) or ((not fns.dwb_84 or not bRA) and (fns.connection3 and fns.connection3) or (bQD and dwb_22_36 or (not fns.connection3 or fns.dwb_35)))) then
    fns.dwb_149 = function(aEx)
        local cST
        local cSU = not fns.dwb_118() or not fns.dwb_43.on or fns.dwb_123.BlockWork.entry
        if cSU then
            return false
        end
        local cSU_4 = bQe.playerValues()
        local cSV = not cSU_4 or cSU_4:FindFirstChild("Blocking")
        if cSV then
            return false
        end
        local cSU_5 = os.clock()
        local cSV_3 = fns.dwb_99()
        local hold = fns.dwb_43.hold
        local cSX = fns.dwb_43.hold and cSU_5 + 1.5
        local cSY = cSX or math.max(cSU_5 + 0.05, aEx)
        cST = {
            character = cSV_3,
            phase = "awaiting",
            keep = hold,
            sentAt = cSU_5,
            releaseAt = cSY,
            deadline = cSU_5 + fns.dwb_68.acknowledgement,
            releaseRequested = false,
            retries = 0,
            retryAt = 0,
            expiry = cSU_5 + fns.dwb_68.acknowledgement + fns.dwb_68.recovery,
            hardStop = cSU_5 + 9
        }
        fns.dwb_43.blockEntry = cST
        fns.dwb_123.BlockWork.entry = cST
        cST.poll = function()
            bQh(cST)
        end
        cST.connection = fns.dwb_51.RunService.Heartbeat:Connect(function()
            local cSO_2
            local cSN_2
            cSN_2, cSO_2 = pcall(bQh, cST)
            if not cSN_2 then
                if os.clock() >= cST.hardStop then
                    bQ1(cST)
                else
                    fns.dwb_69(cST, true)
                end
                local cSS = if fns.dwb_118() then 1 else 0
                if cSS == 1 then
                    fns.dwb_71("auto parry release: " .. tostring(cSO_2))
                end
            end
        end)
        local cSU_6 = bQR("server_skill_controller_signaler", "Blocking", "Hold", Vector3.zero)
        local cSV_4 = not cSU_6 or not fns.dwb_118()
        local cS1 = if cSV_4 then 1 else 0
        local cS_ = 2656 * cS1 + 825 * (1 - cS1)
        local cS0 = 2186 * cS1 + 1598 * (1 - cS1)
        if not ((cS_ * 1703 + cS0 * 1319 + cS_ * cS0) % 16777213 == 13212518) then
            cSV_4 = not fns.dwb_43.on
        end
        if cSV_4 then
            cST.releaseRequested = true
        end
        return cSU_6
    end
    bP4 = fns.fn6677
    fns.dwb_84 = fns.fn6052
else
    bP4 = function(aEx)
        local cST
        local cSU = not fns.dwb_118() or not fns.dwb_43.on or fns.dwb_123.BlockWork.entry
        if cSU then
            return false
        end
        local cSU_1 = bQe.playerValues()
        local cSV = not cSU_1 or cSU_1:FindFirstChild("Blocking")
        if cSV then
            return false
        end
        local cSU_2 = os.clock()
        local cSV_1 = fns.dwb_99()
        local hold = fns.dwb_43.hold
        local cSX = fns.dwb_43.hold and cSU_2 + 1.5
        local cSY = cSX or math.max(cSU_2 + 0.05, aEx)
        cST = {
            character = cSV_1,
            phase = "awaiting",
            keep = hold,
            sentAt = cSU_2,
            releaseAt = cSY,
            deadline = cSU_2 + fns.dwb_68.acknowledgement,
            releaseRequested = false,
            retries = 0,
            retryAt = 0,
            expiry = cSU_2 + fns.dwb_68.acknowledgement + fns.dwb_68.recovery,
            hardStop = cSU_2 + 9
        }
        fns.dwb_43.blockEntry = cST
        fns.dwb_123.BlockWork.entry = cST
        cST.poll = function()
            bQh(cST)
        end
        cST.connection = fns.dwb_51.RunService.Heartbeat:Connect(function()
            local cSO_1
            local cSN_1
            cSN_1, cSO_1 = pcall(bQh, cST)
            if not cSN_1 then
                if os.clock() >= cST.hardStop then
                    bQ1(cST)
                else
                    fns.dwb_69(cST, true)
                end
                local cSS = if fns.dwb_118() then 1 else 0
                if cSS == 1 then
                    fns.dwb_71("auto parry release: " .. tostring(cSO_1))
                end
            end
        end)
        local cSU_3 = bQR("server_skill_controller_signaler", "Blocking", "Hold", Vector3.zero)
        local cSV_2 = not cSU_3 or not fns.dwb_118()
        local cS1 = if cSV_2 then 1 else 0
        local cS_ = 2656 * cS1 + 825 * (1 - cS1)
        local cS0 = 2186 * cS1 + 1598 * (1 - cS1)
        if not ((cS_ * 1703 + cS0 * 1319 + cS_ * cS0) % 16777213 == 13212518) then
            cSV_2 = not fns.dwb_43.on
        end
        if cSV_2 then
            cST.releaseRequested = true
        end
        return cSU_3
    end
    fns.dwb_84 = fns.fn6677
    fns.dwb_149 = fns.fn6052
end
bQk = fns.fn2906
if (not bSe and fns.bRv or not bSe and fns.dwb_68) and (not fns.dwb_68 or not fns.bRv or (not fns.bRv or not fns.bRv)) and (not fns.bRv and not bSe or (not bSe or not fns.bRv) or fns.bRv and not fns.dwb_68 and (not fns.dwb_68 and bSe)) and not ((not bSe and fns.bRv or not bSe and fns.dwb_68) and (not fns.dwb_68 or not fns.bRv or (not fns.bRv or not fns.bRv)) and (not fns.bRv and not bSe or (not bSe or not fns.bRv) or fns.bRv and not fns.dwb_68 and (not fns.dwb_68 and bSe))) then
    bRG = fns.fn4605
else
    fns.dwb_35 = fns.fn4605
end
if (bQD or bSS) and (fns.dwb_151 or not fns.dwb_149) and (not bQD or not bQD or bSS and not fns.dwb_149) and ((not bTg or bTg) and (not fns.dwb_149 and bSS) or (not bTg or not bSS) and (not bQD or fns.dwb_149)) and not ((bQD or bSS) and (fns.dwb_151 or not fns.dwb_149) and (not bQD or not bQD or bSS and not fns.dwb_149) and ((not bTg or bTg) and (not fns.dwb_149 and bSS) or (not bTg or not bSS) and (not bQD or fns.dwb_149))) then
    bTs = fns.fn2810
    bSe = fns.fn466
else
    bSe = fns.fn2810
    bTs = fns.fn466
end
fns.bRv = fns.fn5352
bQq = fns.fn6246
bQ_ = fns.fn4224
bSF = fns.fn2125
bRQ = function(aIi, aIj)
    local cVl
    cVl = nil
    local cVk, cVm
    local Humanoid = aIi:FindFirstChildOfClass("Humanoid")
    local cVo = Humanoid and Humanoid:FindFirstChildOfClass("Animator")
    cVk = cVo
    local Accessories = aIi:FindFirstChild("Accessories")
    local cVp = Accessories and Accessories:FindFirstChild("CustomRig")
    local cVo_2 = cVp
    if cVp then
        cVp = cVo_2:FindFirstChild("AnimController")
    end
    local cVo_3 = cVp
    if cVo_3 then
        cVk = cVo_3:FindFirstChildOfClass("Animator")
    end
    local cVo_4 = bRG[aIi]
    if cVo_4 and cVo_4.animator == cVk then
        for i, v in ipairs(cVk:GetPlayingAnimationTracks()) do
            cVo_4.capture(v, false)
        end
        return
    end
    if cVo_4 then
        bSF(aIi)
    end
    if not cVk or not Humanoid or Humanoid.Health <= 0 then
        return
    end
    cVm = { animator = cVk, stopped = {} }
    bRG[aIi] = cVm
    cVl = function(aIB, aIC)
        local cVf_1
        local cVe_1
        if aIC then
            bRt[aIB] = nil
            bTg.rejected[aIB] = nil
            fns.dwb_149(aIB, true)
        end
        cVe_1, cVf_1 = pcall(bQk, aIi, aIj, aIB, cVk)
        if not cVe_1 then
            fns.dwb_71("auto parry: " .. tostring(cVf_1))
        end
        local cVe_2 = not fns.dwb_118() or not fns.dwb_43.on or bRG[aIi] ~= cVm
        if cVe_2 then
            return
        end
        if bRt[aIB] and not cVm.stopped[aIB] then
            cVm.stopped[aIB] = aIB.Stopped:Connect(function()
                fns.dwb_149(aIB, true)
                bRt[aIB] = nil
                local cU9 = cVm.stopped[aIB]
                cVm.stopped[aIB] = nil
                if cU9 then
                    cU9:Disconnect()
                end
            end)
        end
    end
    cVm.capture = cVl
    cVm.played = cVk.AnimationPlayed:Connect(function(aIJ)
        cVl(aIJ, true)
    end)
    for i, v in ipairs(cVk:GetPlayingAnimationTracks()) do
        cVl(v)
    end
end
bRA = fns.fn451
fns.dwb_43.invalidate = fns.fn7636
fns.dwb_43.step = fns.fn6615
fns.dwb_43.diagnostics = fns.fn5115
fns.dwb_123.GetParryDiagnostics = fns.dwb_43.diagnostics
fns.dwb_43.reset = fns.fn1492
bSd = false
function fns.dwb_22_37()
    local cWy
    local cWA_1
    local cWz = bSd or not fns.dwb_118()
    local cWz_1
    if cWz then
        return
    end
    bSd = true
    cWy = os.clock()
    if bTg.last then
        bTg.frame = bTg.frame * 0.8 + math.clamp(cWy - bTg.last, 0.001, 0.25) * 0.2
    end
    bTg.last = cWy
    cWz_1, cWA_1 = pcall(function()
        if bTg.owner ~= fns.dwb_99() then
            bTg.owner = fns.dwb_99()
            fns.dwb_43.invalidate()
        end
        if fns.dwb_43.on then
            bSS()
            local cWt = cWy >= bTg.refreshAt and bR9()
            if cWt then
                bRA()
            end
        end
        bQ_()
        bQq()
    end)
    bSd = false
    local cWB = not cWz_1
    if cWB ~= false then
        cWB = fns.dwb_118()
    end
    if cWB then
        fns.dwb_123.ParryReservedUntil = 0
        fns.dwb_43.reason = "Scheduler error"
        if cWy >= bTg.errorAt then
            bTg.errorAt = cWy + 5
            local stats = fns.dwb_43.stats
            stats.errors = stats.errors + 1
            fns.dwb_71("auto parry: " .. tostring(cWA_1))
        end
    end
end
fns.connection3 = fns.dwb_51.RunService.Heartbeat:Connect(fns.dwb_22_37)
fns.dwb_123.Track(fns.fn5938)
bRu, bTt, bRe, bPU, bTh, fns.dwb_15 = nil, nil, nil, nil, nil, nil
bRu = { marks = {} }
bTE.viewer = bRu
bTt = Color3.fromRGB(60, 255, 120)
bRe = Color3.fromRGB(255, 70, 70)
bTh = function(aKj)
    local cWN
    cWN = nil
    cWN = bRu.marks[aKj]
    if not cWN then
        return
    end
    bRu.marks[aKj] = nil
    pcall(function()
        cWN:Destroy()
    end)
end
bRu.clear = fns.fn6611
fns.dwb_15 = fns.fn3737
bPU = task.delay(0, fns.fn3361)
fns.dwb_123.Track(fns.fn7382)
bTu, bRi, bTi, fns.dwb_113, bR1, fns.dwb_155, connection4, fns.dwb_63, fns.dwb_28 = nil, nil, nil, nil, nil, nil, nil, nil, nil
bTu = { on = {}, entries = {}, screen = nil, info = {}, anyOn = false }
bRi = {}
bTE.Esp = bTu
bTu.CATEGORIES = { "Players", "Mobs", "Bosses", "NPCs", "Muzan", "Spider Lily", "Chests", "Wild Horse", "Levers" }
bTi = {
    box = false,
    boxFill = false,
    box3d = false,
    name = false,
    distance = false,
    healthBar = false,
    healthText = false,
    tracer = false,
    playerInfo = false,
    range = 5000
}
bTu.opt = bTi
fns.dwb_113 = {
    name = Color3.fromRGB(255, 255, 255),
    distance = Color3.fromRGB(255, 255, 255),
    health = Color3.fromRGB(0, 255, 0),
    dying = Color3.fromRGB(255, 0, 0),
    healthText = Color3.fromRGB(255, 255, 255),
    info = Color3.fromRGB(255, 255, 255),
    Players = Color3.fromRGB(255, 0, 0),
    Party = Color3.fromRGB(0, 255, 0),
    Mobs = Color3.fromRGB(0, 170, 255),
    Bosses = Color3.fromRGB(255, 170, 0),
    NPCs = Color3.fromRGB(120, 255, 150),
    Muzan = Color3.fromRGB(200, 0, 60),
    ["Spider Lily"] = Color3.fromRGB(255, 80, 160),
    Chests = Color3.fromRGB(255, 200, 40),
    ["Wild Horse"] = Color3.fromRGB(215, 175, 120),
    Levers = Color3.fromRGB(170, 120, 255)
}
bTu.colour = fns.dwb_113
bRi.camera = fns.fn4846
bRi.container = fns.fn4709
bRi.newFrame = fns.fn4867
bRi.newLabel = fns.fn4056
bRi.line = fns.fn4627
bRi.drop = function(aLn)
    local cXq = bTu.entries[aLn]
    if not cXq then
        return
    end
    bTu.entries[aLn] = nil
    if cXq.holder then
        pcall(function()
            cXq.holder:Destroy()
        end)
    end
end
bTu.clear = fns.fn1765
fns.dwb_123.Track(bTu.clear)
bRi.anchorPart = fns.fn2557
bRi.add = fns.fn4036
bRi.bossNames = fns.fn150
bRi.collect = function()
    local cXY
    local cX1_1
    cXY = {}
    local function cXZ(aLQ, aLR, aLS, aLT)
        local cXW = aLQ and aLQ:IsDescendantOf(bSf)
        if cXW then
            cXY[aLQ] = { label = aLR, category = aLS, player = aLT }
        end
    end
    if bTu.on.Players then
        for i, player in ipairs(fns.dwb_51.Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                cXZ(player.Character, player.DisplayName, "Players", player)
            end
        end
    end
    local cX__2 = bTu.on.Mobs
    local cYc = if cX__2 then 1 else 0
    local cYa = 3232 * cYc + 2894 * (1 - cYc)
    local cYb = 621 * cYc + 1918 * (1 - cYc)
    if not ((cYa * 1585 + cYb * 1683 + cYa * cYb) % 16777213 == 8174935) then
        cX__2 = bTu.on.Bosses
    end
    local cX0 = cX__2 and bRi.bossNames()
    local cX__3 = cX0
    local cYc_1 = if cX__3 then 1 else 0
    local cYa_1 = 2974 * cYc_1 + 293 * (1 - cYc_1)
    local cYb_1 = 3052 * cYc_1 + 1166 * (1 - cYc_1)
    if not ((cYa_1 * 641 + cYb_1 * 1962 + cYa_1 * cYb_1) % 16777213 == 193793) then
        cX__3 = nil
    end
    local cX0_1 = cX__3
    if cX0_1 then
        for i, v in ipairs(fns.dwb_44()) do
            if cX0_1[v.name] == true then
                cX1_1 = bTu.on.Bosses and "Bosses" or nil
            else
                cX1_1 = bTu.on.Mobs and "Mobs" or nil
            end
            if cX1_1 then
                cXZ(v.model, v.name, cX1_1)
            end
        end
    end
    if bTu.on["Wild Horse"] then
        for i, v in ipairs(bRF()) do
            cXZ(v, "Horse", "Wild Horse")
        end
    end
    if bTu.on.NPCs then
        local cX__7 = bSf:FindFirstChild("Debree")
        local cX0_2 = cX__7 and cX__7:FindFirstChild("Regions")
        if cX0_2 then
            for i, child in ipairs(cX0_2:GetChildren()) do
                local cX__9 = child:FindFirstChild("StationaryNpcs")
                if cX__9 then
                    for i, child in ipairs(cX__9:GetChildren()) do
                        cXZ(child, child.Name, "NPCs")
                    end
                end
            end
        end
    end
    if bTu.on.Chests then
        for i, v in ipairs(bQs()) do
            local cX__10 = v:GetAttribute("ChestId")
            local cX0_3 = v:GetAttribute("ChestState") == "Locked"
            local cX1_2 = type(cX__10) == "string" and cX__10
            local cX__11 = cX1_2 or "Chest"
            local cX0_4 = cX0_3 and " (locked)" or ""
            cXZ(v, cX__11 .. cX0_4, "Chests")
        end
    end
    if bTu.on.Levers then
        local cX__12 = bSf:FindFirstChild("Map")
        local cX0_5 = cX__12 and cX__12:FindFirstChild("Puzzles")
        local cX__13 = cX0_5
        if cX0_5 then
            cX0_5 = cX__13:FindFirstChild("Sickles Levers")
        end
        local cX__14 = cX0_5
        if cX__14 then
            for i, child in ipairs(cX__14:GetChildren()) do
                cXZ(child, "Lever " .. i, "Levers")
            end
        end
    end
    local cX__15 = bSf:FindFirstChild("Debree")
    if cX__15 then
        if bTu.on.Muzan then
            cXZ(cX__15:FindFirstChild("MuzanLairModel"), "Muzan", "Muzan")
        end
        if bTu.on["Spider Lily"] then
            for i, child in ipairs(cX__15:GetChildren()) do
                if child.Name == "Spider Lily" then
                    cXZ(child, "Spider Lily", "Spider Lily")
                end
            end
        end
    end
    return cXY
end
bRi.refreshAnyOn = fns.fn4266
bTu.set = fns.fn6076
bTu.setCategory = fns.fn29
bTu.setOption = fns.fn904
bTu.setColour = fns.fn872
bTu.setDistance = fns.fn4162
bR1 = {
    Vector3.new(-1, -1, -1),
    Vector3.new(-1, -1, 1),
    Vector3.new(-1, 1, -1),
    Vector3.new(-1, 1, 1),
    Vector3.new(1, -1, -1),
    Vector3.new(1, -1, 1),
    Vector3.new(1, 1, -1),
    Vector3.new(1, 1, 1)
}
fns.dwb_155 = {
    { 1, 2 },
    { 1, 3 },
    { 1, 5 },
    { 2, 4 },
    { 2, 6 },
    { 3, 4 },
    { 3, 7 },
    { 4, 8 },
    { 5, 6 },
    { 5, 7 },
    { 6, 8 },
    { 7, 8 }
}
bRi.bounds = fns.fn5766
bRi.health = fns.fn5163
bRi.hide = fns.fn4707
bRi.tint = fns.fn5602
bRi.render = fns.fn1789
connection4 = fns.dwb_51.RunService.RenderStepped:Connect(fns.onRenderStepped)
fns.dwb_123.Track(fns.fn1814)
fns.dwb_63 = task.delay(0, fns.fn499)
if ((not fns.dwb_28 or fns.dwb_113) and (not fns.dwb_113 or not fns.dwb_113) or (fns.dwb_28 or not connection4 or (not connection4 or connection4))) and ((fns.dwb_28 or not fns.dwb_28 or (fns.dwb_28 or not fns.dwb_113)) and (fns.dwb_28 or connection4 or connection4 and not fns.dwb_28)) and not (((not fns.dwb_28 or fns.dwb_113) and (not fns.dwb_113 or not fns.dwb_113) or (fns.dwb_28 or not connection4 or (not connection4 or connection4))) and ((fns.dwb_28 or not fns.dwb_28 or (fns.dwb_28 or not fns.dwb_113)) and (fns.dwb_28 or connection4 or connection4 and not fns.dwb_28))) then
    fns.dwb_28.Track(fns.fn5037)
    fns.dwb_123 = task.delay(0, fns.fn6155)
else
    fns.dwb_123.Track(fns.fn5037)
    fns.dwb_28 = task.delay(0, fns.fn6155)
end
fns.dwb_123.Track(fns.fn5705)
bTE.isParty = fns.fn5280
bTE.describePlayer = function(aOM)
    local c_E
    c_E = nil
    local c_F = type(fns.dwb_26.Utility) ~= "table" or not bQG(fns.dwb_26.Utility.GetData)
    local c_F_1
    if c_F then
        return nil
    end
    c_F_1, c_E = fns.dwb_144(fns.dwb_26.Utility.GetData, aOM)
    local c_G = not c_F_1 or typeof(c_E) ~= "Instance"
    if c_G then
        return nil
    end
    local function c_F_2(aOV, aOW)
        local c_v = c_E
        for i, v in ipairs(aOV) do
            c_v = c_v:FindFirstChild(v)
            if not c_v then
                return aOW
            end
        end
        local c_w = (c_v:IsA("ValueBase")) and c_v.Value
        return c_w or aOW
    end
    local c_G_1 = (tonumber(c_F_2({ "Exp", "Goal" }, fns.dwb_26.EXP_PER_LEVEL))) or fns.dwb_26.EXP_PER_LEVEL
    local c_G_2 = math.max(1, math.floor(c_G_1 / fns.dwb_26.EXP_PER_LEVEL))
    local c_H_1 = tostring(c_F_2({ "Race" }, "Human"))
    local c_I = tostring(c_F_2({ "Clan" }, "-"))
    return string.format("Lvl %d  |  %s  |  %s", c_G_2, c_H_1, c_I)
end
bTE.muzanPoint = fns.fn7104
bQE, bP1, bRh, bS5, fns.bTv, bS7, fns.dwb_73, bRl, fns.dwb_106, bTj, bTb, bSG, fns.dwb_32, fns.dwb_143, fns.dwb_74 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
bSg.LootController.attempts = setmetatable({}, { __mode = "k" })
fns.dwb_11.LOOT_RETRY = { 1.5, 4, 8, 15, 30 }
fns.dwb_11.LOOT_DRAIN = 25
fns.dwb_11.LOOT_IDLE = 2
bP1 = fns.fn4887
bRh = fns.fn370
bS5 = fns.fn2910
fns.bTv = function(aPM, aPN)
    local c0h = aPN
    local c0q = if c0h then 1 else 0
    local c0o = 4073 * c0q + 2627 * (1 - c0q)
    local c0p = 2625 * c0q + 3069 * (1 - c0q)
    if not ((c0o * 2337 + c0p * 2297 + c0o * c0p) % 16777213 == 9462638) then
        c0h = fns.dwb_122(bSg.LootController)
    end
    local c0i = c0h
    local c0h_1 = (c0i()) or not aPM:IsDescendantOf(bSf) or not bP1(aPM)
    if c0h_1 then
        return false
    end
    local c0j = bSg.LootController.attempts[aPM] or { count = 0 }
    local c0j_1 = os.clock()
    local c0k = c0j.retryAt
    local c0t = if c0k then 1 else 0
    local c0r = 921 * c0t + 3707 * (1 - c0t)
    local c0s = 33 * c0t + 3045 * (1 - c0t)
    if not ((c0r * 1866 + c0s * 2933 + c0r * c0s) % 16777213 == 1845768) then
        c0k = 0
    end
    if c0j_1 < c0k then
        return false
    end
    local ProximityPrompt2 = aPM:FindFirstChildWhichIsA("ProximityPrompt")
    if not ProximityPrompt2 then
        return false
    end
    local attr = aPM:GetAttribute("DropItemId")
    local c0l = attr or "loot"
    bSs.LootStatus = "Collecting " .. tostring(c0l)
    if not ProximityPrompt2.Enabled then
        bSs.LootStatus = "Waiting for pickup readiness"
        return false
    end
    local c0l_1 = fns.dwb_147.standBy(aPM, bRh(aPM))
    local c0m = (c0i()) or not fns.dwb_111(c0l_1.Position, 0, c0i, true) or c0i() or not aPM:IsDescendantOf(bSf)
    if c0m then
        return false
    end
    fns.dwb_147.holdAt(c0l_1)
    task.wait(0.2)
    local ProximityPrompt = aPM:FindFirstChildWhichIsA("ProximityPrompt")
    local c0l_2 = (c0i()) or not bP1(aPM)
    local c0q_1 = if c0l_2 then 1 else 0
    local c0o_1 = 3378 * c0q_1 + 3845 * (1 - c0q_1)
    local c0p_1 = 103 * c0q_1 + 1511 * (1 - c0q_1)
    if not ((c0o_1 * 1751 + c0p_1 * 2507 + c0o_1 * c0p_1) % 16777213 == 6521033) then
        c0l_2 = not ProximityPrompt
    end
    if not c0l_2 then
        c0l_2 = not ProximityPrompt.Enabled
    end
    if c0l_2 then
        fns.dwb_147.releaseHold()
        return false
    end
    bSg.LootController.attempts[aPM] = c0j
    c0j.count = c0j.count + 1
    local c0l_3 = fns.dwb_11.LOOT_RETRY[math.min(c0j.count, #fns.dwb_11.LOOT_RETRY)]
    c0j.retryAt = os.clock() + c0l_3
    if not bR5(ProximityPrompt) then
        fns.dwb_147.releaseHold()
        return false
    end
    local c0j_4 = bRD(function()
        local c0f = aPM:GetAttribute("DropClaimedBy") ~= nil or not aPM:IsDescendantOf(bSf)
        return c0f
    end, 2, c0i)
    fns.dwb_147.releaseHold()
    if c0i() then
        return false
    end
    c0j.retryAt = os.clock() + c0l_3
    local c0q_2 = if aPM:GetAttribute("DropClaimedBy") == LocalPlayer.UserId then 1 else 0
    if c0q_2 == 1 then
        bSs.Looted = bSs.Looted + 1
        local c0h_4 = attr or "loot"
        bSs.LootStatus = "Collected " .. tostring(c0h_4)
        return true
    elseif c0j_4 then
        local c0h_5 = attr or "loot"
        bSs.LootStatus = "Drop disappeared; receipt unconfirmed: " .. tostring(c0h_5)
        return false
    else
        local c0h_6 = attr or "loot"
        bSs.LootStatus = "Cannot take " .. tostring(c0h_6)
        return false
    end
end
bS7 = fns.fn3104
fns.dwb_73 = fns.fn6782
bRl = fns.fn7717
fns.dwb_106 = function()
    local LootController, c1f
    LootController = bSg.LootController
    c1f = fns.dwb_122(LootController)
    local function c1g()
        local c09 = (c1f())
        local c1d = if c09 then 1 else 0
        local c1b = 1652 * c1d + 2245 * (1 - c1d)
        local c1c = 1230 * c1d + 4082 * (1 - c1d)
        if not ((c1b * 2408 + c1c * 585 + c1b * c1c) % 16777213 == 6729526) then
            c09 = not fns.dwb_147.controllerValid(LootController)
        end
        return c09
    end
    if c1g() then
        return
    end
    local c1h = bS5()
    local c1h_3
    local c1i = fns.dwb_24.bossNearby()
    local c1i_3
    local c1j = #c1h + #c1i + bS7() > 0 or os.clock() < LootController.awaitUntil
    LootController.pending = c1j
    if #c1h == 0 and #c1i == 0 then
        bSs.LootStatus = LootController.pending and "Waiting for boss drops" or "No loot nearby"
        return
    end
    local c1h_2 = false
    local c1i_2 = os.clock() + 6
    while true do
        local c1j_2 = not c1g() and os.clock() < c1i_2
        if c1j_2 then
            if bSU("AutoLoot") then
                c1h_2 = true
                break
            end
            task.wait(0.2)
            continue
        end
        break
    end
    if not c1h_2 then
        return
    end
    c1h_3, c1i_3 = pcall(bRl, c1g)
    bSu("AutoLoot")
    if c1g() then
        return
    end
    c1g = #bS5() > 0 or #fns.dwb_24.bossNearby() > 0 or bS7() > 0 or os.clock() < LootController.awaitUntil
    LootController.pending = c1g
    if not c1h_3 then
        bSs.LootStatus = "Loot error: " .. tostring(c1i_3)
        fns.dwb_71(bSs.LootStatus)
    end
end
bTj = fns.fn7367
bTb = fns.fn2187
bSG = function()
    local c1G, range, c1I, c1J
    c1G = {}
    c1I = {}
    local c1K = fns.dwb_4()
    c1J = c1K and c1K.Position or Vector3.zero
    range = bSg.SoulController.range
    local function c1K_2(aRE, aRF)
        local c1z = c1G[aRE] or not aRE:IsDescendantOf(bSf)
        if c1z then
            return
        end
        local c1z_1 = bTj(aRE)
        if not c1z_1 then
            return
        end
        local Magnitude = (c1z_1 - c1J).Magnitude
        if range > 0 and Magnitude > range then
            return
        end
        c1G[aRE] = true
        c1I[#c1I + 1] = { instance = aRE, point = c1z_1, gap = Magnitude, label = aRF }
    end
    for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
        local c1L_1 = (v:IsA("BasePart")) and bP1(v)
        if c1L_1 then
            local attr = v:GetAttribute("DropItemId")
            local c1M = type(attr) == "string" and fns.dwb_11.SOUL_NAMES[attr]
            if c1M then
                c1K_2(v, attr)
            end
        end
    end
    local c1L_3 = { bSf:FindFirstChild("LootDrops"), bSf:FindFirstChild("Debree"), bSf }
    for i, v in ipairs(c1L_3) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if fns.dwb_11.SOUL_NAMES[child.Name] then
                    c1K_2(child, child.Name)
                end
            end
        end
    end
    table.sort(c1I, function(aR4, aR5)
        return aR4.gap < aR5.gap
    end)
    return c1I
end
if false and (fns.bTv or false) or (bS7 and bS7 or bS7 and fns.bTv) or not (false and (fns.bTv or false) or (bS7 and bS7 or bS7 and fns.bTv)) then
    fns.dwb_32 = function(aR7)
        local instance
        local c16 = fns.dwb_122(bSg.SoulController)
        instance = aR7.instance
        bSs.SoulStatus = "Collecting " .. aR7.label
        local c17 = (c16()) or not fns.dwb_111(aR7.point + Vector3.new(0, 3, 0), 0.2, c16) or c16() or not instance:IsDescendantOf(bSf)
        if c17 then
            return false
        end
        local c17_5 = bTb(instance)
        if c17_5 then
            bR5(c17_5)
        elseif bQG(firetouchinterest) then
            local c17_6 = (instance:IsA("BasePart")) and instance
            local c18 = c17_6 or instance:FindFirstChildWhichIsA("BasePart", true)
            local c18_2 = fns.dwb_4()
            if c18 and c18_2 then
                pcall(firetouchinterest, c18_2, c18, 0)
                task.wait(0.1)
                pcall(firetouchinterest, c18_2, c18, 1)
            end
        end
        local c17_8 = bRD(function()
            return not instance:IsDescendantOf(bSf)
        end, 2, c16)
        if c16() then
            return false
        elseif c17_8 then
            bSs.Souls = bSs.Souls + 1
            bSs.SoulStatus = "Collected " .. aR7.label
            return true
        else
            bSs.SoulStatus = "Cannot take " .. aR7.label
            return false
        end
    end
    fns.dwb_92.soulSweep = fns.fn2941
    fns.dwb_143 = fns.fn3036
    fns.dwb_92.worldsModule = fns.fn3345
    fns.dwb_92.hudGridModule = fns.fn4422
    fns.dwb_92.queueSignal = fns.fn4315
    fns.dwb_92.queueWatcher = fns.fn1203
    fns.dwb_92.menuValidators = fns.fn3876
    fns.dwb_92.teleporter = fns.fn2568
    bQe.inMenuPlace = fns.fn5896
    fns.dwb_92.gamemodeRows = fns.fn4909
    fns.dwb_92.gamemodeName = fns.fn3643
    fns.dwb_92.worldRows = fns.fn7008
    fns.dwb_92.gamemodeAllowed = fns.fn2636
    fns.dwb_92.queuedSince = fns.fn1887
    fns.dwb_92.announceHudState = fns.fn6514
    fns.dwb_92.cancelQueue = fns.fn5177
    fns.dwb_92.queueStep = fns.fn7702
    fns.dwb_92.promptAnchor = function(aUk)
        local c3I_2
        local c3H_2
        local Parent = aUk.Parent
        if typeof(Parent) ~= "Instance" then
            return nil, nil
        elseif Parent:IsA("BasePart") then
            return Parent, Parent.Position
        elseif Parent:IsA("Attachment") then
            return Parent, Parent.WorldPosition
        elseif Parent:IsA("Model") then
            c3H_2, c3I_2 = pcall(function()
                return Parent:GetPivot().Position
            end)
            if c3H_2 then
                return Parent, c3I_2
            end
            return nil, nil
        else
            return nil, nil
        end
    end
    fns.dwb_92.lobbyPrompts = fns.fn2599
    fns.dwb_11.READY_SKIP = { "unready", "cancel", "leave" }
    fns.dwb_11.LEAVE_SKIP = { "ready" }
    fns.dwb_11.OPEN_SKIP = { "ready", "leave" }
    fns.dwb_92.answerLobbyPrompt = function(aUP, aUQ, aUR, aUS, aUT, aUU, aUV)
        local c4i, c4j
        local c4q = if not fns.dwb_118() then 1 else 0
        if c4q == 1 then
            return
        end
        if bQe.inMenuPlace() then
            bSs[aUT] = "Waiting for a lobby"
            return
        end
        c4j = fns.dwb_92.lobbyPrompts(aUP, aUR, aUS)[1]
        if not c4j then
            bSs[aUT] = "No " .. aUR .. " prompt nearby"
            return
        end
        local ObjectText = c4j.prompt.ObjectText
        local c4k_6
        local c4l = ObjectText ~= ""
        local c4l_6
        local c4m = type(ObjectText) == "string" and c4l
        c4i = c4m and ObjectText or "the lobby"
        local c4k_5 = os.clock()
        if c4k_5 < (aUP.fired[c4j.prompt] or 0) then
            bSs[aUT] = aUU .. " " .. c4i
            return
        end
        c4l_6, c4k_6 = false, 0
        while true do
            local c4m_2 = (fns.dwb_147.controllerValid(aUP)) and c4k_6 < 6
            if c4m_2 then
                if bSU(aUQ) then
                    c4l_6 = true
                    break
                end
                task.wait(0.2)
                c4k_6 += 0.2
                continue
            end
            break
        end
        if not c4l_6 then
            bSs[aUT] = "Waiting for a turn"
            return
        end
        pcall(function()
            local prompt
            local part
            local point
            local c37 = fns.dwb_122(aUP)
            prompt, part, point = c4j.prompt, c4j.part, c4j.point
            local c4b = (c37()) or not part:IsDescendantOf(bSf)
            if c4b then
                return
            end
            local c4b_3 = math.max(prompt.MaxActivationDistance - 2, 4)
            local c4c = fns.dwb_4()
            if c4c and (point - c4c.Position).Magnitude > c4b_3 then
                bSs[aUT] = "Walking to " .. c4i
                local c4b_4 = not fns.dwb_111(point + Vector3.new(0, 3, 0), 0.2, c37) or c37()
                if c4b_4 then
                    return
                end
            end
            local c38_4 = not part:IsDescendantOf(bSf) or not prompt.Enabled
            if c38_4 then
                bSs[aUT] = "Prompt closed"
                return
            end
            aUP.fired[prompt] = os.clock() + 3
            if bR5(prompt) then
                bSs[aUT] = aUU .. " " .. c4i
                if aUV then
                    aUV(c37, c4i)
                end
            else
                bSs[aUT] = "Prompt refused"
            end
        end)
        bSu(aUQ)
    end
    fns.dwb_92.readyStep = fns.fn2640
    fns.dwb_92.collectChestLoot = fns.fn805
    fns.dwb_11.CACHE_LOOT_RADIUS = 80
    fns.dwb_11.CACHE_LOOT_FIRST = 3
    fns.dwb_11.CACHE_LOOT_BUDGET = 30
    fns.dwb_11.CACHE_LOOT_CONFIRM = 1.5
    fns.dwb_11.CACHE_LOOT_QUIET = 0.25
    fns.dwb_11.CACHE_LOOT_TRIES = 4
    fns.dwb_11.CACHE_LOOT_PUMP = 0.1
    fns.dwb_11.CACHE_LOOT_ARRIVE = 3
    fns.dwb_24.lootCache = function(aVF, aVG)
        local c5q
        c5q = nil
        local c5k, c5l, c5m, c5n, c5o, c5p, c5r, c5s
        local c5u_3
        local c5t_3
        c5r = {}
        c5p = {}
        c5m = 0
        c5l = {}
        c5k = function(aVM)
            return aVM:FindFirstChildWhichIsA("ProximityPrompt")
        end
        c5q = function()
            local c4B_2
            local c4A_2
            c4B_2, c4A_2 = {}, 0
            for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
                local c4C = (v:IsA("BasePart")) and v:IsDescendantOf(bSf) and bP1(v)
                if c4C then
                    c4C = (c5l[v] or 0) < fns.dwb_11.CACHE_LOOT_TRIES
                end
                if c4C then
                    c4C = (v.Position - aVF).Magnitude <= fns.dwb_11.CACHE_LOOT_RADIUS
                end
                if c4C then
                    local c4C_2 = c5k(v)
                    if c4C_2 and c4C_2.Enabled then
                        c4B_2[#c4B_2 + 1] = { part = v, prompt = c4C_2 }
                    else
                        c4A_2 += 1
                    end
                end
            end
            return c4B_2, c4A_2
        end
        c5s = function()
            for k in pairs(c5r) do
                local c4L = not c5p[k] and k:GetAttribute("DropClaimedBy") == LocalPlayer.UserId
                if c4L then
                    c5p[k] = true
                    c5m += 1
                    bSs.Looted = bSs.Looted + 1
                end
            end
        end
        bSs.ChestStatus = "Waiting for cache loot"
        bRD(function()
            local aWh, aWi = c5q()
            return #aWh + aWi > 0
        end, fns.dwb_11.CACHE_LOOT_FIRST, aVG, 0.05)
        c5o = os.clock() + fns.dwb_11.CACHE_LOOT_BUDGET
        c5n = true
        task.spawn(function()
            while true do
                local c4_ = c5n and not aVG() and os.clock() < c5o
                if c4_ then
                    pcall(function()
                        local c4R = fns.dwb_4()
                        if not c4R then
                            return
                        end
                        local lootRange = bSg.ChestController.lootRange
                        for i, v in ipairs((c5q())) do
                            if (v.part.Position - c4R.Position).Magnitude <= lootRange then
                                c5r[v.part] = true
                                bR5(v.prompt)
                            end
                        end
                        c5s()
                    end)
                    task.wait(fns.dwb_11.CACHE_LOOT_PUMP)
                    continue
                end
                break
            end
        end)
        c5t_3, c5u_3 = pcall(function()
            local c49_2
            local c46_2
            local c44
            local c5d = false
            repeat
                local part
                local c45 = not aVG() and os.clock() < c5o
                local c45_5
                if c45 then
                    c45_5, c46_2 = c5q()
                    local c47 = fns.dwb_4()
                    local c47_2
                    if not c47 then
                        return
                    end
                    if #c45_5 == 0 then
                        if c46_2 > 0 then
                            c44 = nil
                        else
                            local c48_3 = c44 or os.clock()
                            c44 = c48_3
                            if os.clock() - c44 >= fns.dwb_11.CACHE_LOOT_QUIET then
                                return
                            end
                        end
                        task.wait(0.1)
                    else
                        c44 = nil
                        local Position = c47.Position
                        c49_2, c47_2 = nil, math.huge
                        for i, v in ipairs(c45_5) do
                            local Magnitude = (v.part.Position - Position).Magnitude
                            if Magnitude < c47_2 then
                                c49_2, c47_2 = v, Magnitude
                            end
                        end
                        bSs.ChestStatus = string.format("Looting cache: %d picked up, %d left", c5m, #c45_5 + c46_2)
                        if c47_2 > fns.dwb_11.CACHE_LOOT_ARRIVE then
                            local c45_6 = fns.dwb_147.standBy(c49_2.part, c49_2.part.Position)
                            fns.dwb_111(c45_6.Position, 0, aVG, true)
                            if aVG() then
                                return
                            end
                            fns.dwb_147.holdAt(c45_6)
                        end
                        part = c49_2.part
                        local c45_7 = bRD(function()
                            local c41 = part:GetAttribute("DropClaimedBy") ~= nil or not part:IsDescendantOf(bSf)
                            return c41
                        end, fns.dwb_11.CACHE_LOOT_CONFIRM, aVG, 0.03)
                        if not c45_7 then
                            c5l[part] = (c5l[part] or 0) + 1
                        end
                    end
                else
                    c5d = true
                end
            until c5d
        end)
        c5n = false
        fns.dwb_147.releaseHold()
        c5s()
        if not c5t_3 then
            warn("[Ouroboros] cache loot: " .. tostring(c5u_3))
        end
        local c5t_4 = 0
        for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
            local c5u_4 = (v:IsA("BasePart")) and v:IsDescendantOf(bSf) and bP1(v) and (v.Position - aVF).Magnitude <= fns.dwb_11.CACHE_LOOT_RADIUS
            if c5u_4 then
                c5t_4 += 1
            end
        end
        return c5m, c5t_4
    end
    fns.dwb_92.chestAffordable = fns.fn2081
    fns.dwb_11.OPEN_RUN_GAP = 10
    fns.dwb_92.openLimitReached = fns.fn6790
    fns.dwb_92.openStep = function()
        local OpenController
        local c5T_2
        OpenController = bSg.OpenController
        local c5R = (bQe.inMenuPlace()) and nil
        local c5S = c5R or fns.dwb_92.lobbyPrompts(OpenController, "open", fns.dwb_11.OPEN_SKIP)[1]
        local c5S_5
        if not c5S then
            if OpenController.emptyAt == 0 then
                OpenController.emptyAt = os.clock()
            else
                local c5S_4 = OpenController.opened > 0 and os.clock() - OpenController.emptyAt > fns.dwb_11.OPEN_RUN_GAP
                if c5S_4 then
                    OpenController.opened = 0
                end
            end
        else
            OpenController.emptyAt = 0
        end
        if fns.dwb_92.openLimitReached() then
            bSs.OpenStatus = string.format("Opened %d of %d", OpenController.opened, OpenController.limit)
            return
        end
        if c5S then
            c5S_5, c5T_2 = fns.dwb_92.chestAffordable(c5S.prompt)
            if not c5S_5 then
                local format = string.format
                local c5S_6 = (tonumber(LocalPlayer:GetAttribute("RunPoints"))) or 0
                bSs.OpenStatus = format("%d / %d points for the chest", c5S_6, c5T_2)
                return
            end
        end
        fns.dwb_92.answerLobbyPrompt(OpenController, "AutoOpenChest", "open", fns.dwb_11.OPEN_SKIP, "OpenStatus", "Opened", function(aXv, aXw)
            OpenController.opened = OpenController.opened + 1
            fns.dwb_92.collectChestLoot(aXv, aXw)
            local c5O = not aXv() and OpenController.limit > 0
            if c5O then
                bSs.OpenStatus = string.format("Opened %s (%d of %d)", aXw, OpenController.opened, OpenController.limit)
            end
        end)
    end
    fns.dwb_92.spendHeart = function(aXB, aXC, aXD)
        local c5V
        c5V = nil
        local c5W = (bR3()) and fns.dwb_104()
        c5V = c5W
        if not c5V then
            bSs[aXC] = "Waiting for the respawn"
            return false
        end
        bSs[aXC] = aXD
        local c5W_2 = pcall(function()
            c5V.Health = 0
        end)
        if not c5W_2 then
            bSs[aXC] = "Reset refused"
            return false
        end
        bRD(function()
            return not bR3()
        end, 5, fns.dwb_122(aXB))
        fns.dwb_17(20)
        return true
    end
    fns.dwb_92.runKey = fns.fn5436
    fns.dwb_92.resetStep = fns.fn3528
    fns.dwb_92.inRunLobby = fns.fn4805
    fns.dwb_92.stallStep = fns.fn188
    fns.dwb_92.leaveFloorStep = fns.fn3017
    fns.dwb_92.leaveStep = fns.fn6353
    fns.dwb_92.worldLoopStep = fns.fn6145
    fns.dwb_92.worldStep = fns.fn3589
    bSg.Alerts = { interval = 2, on = {}, bosses = {}, queue = {}, marks = {}, last = nil }
    bSg.Alerts.enabled = fns.fn3908
    bSg.Alerts.push = fns.fn544
    bSg.Alerts.fresh = fns.fn5699
    bSg.Alerts.timedVendor = fns.fn4579
    bSg.Alerts.rotatingShop = fns.fn229
    bSg.Alerts.schedule = fns.fn4001
    bSg.Alerts.clock = fns.fn2943
    bSg.Alerts.place = fns.fn3542
    bSg.Alerts.names = fns.fn7298
    bSg.Alerts.vendorModel = fns.fn3020
    bSg.Alerts.bossWatch = fns.fn6901
    bSg.Alerts.muzanWatch = fns.fn580
    bSg.Alerts.marketWatch = fns.fn5181
    bSg.Alerts.TAILORS = {
        { label = "Elara", path = { "Ouwland", "Content", "Mistfall Harbor", "Npcs", "Elara" } },
        {
            label = "Lynx",
            path = { "Ouwland", "Content", "Iceveil Valley", "Npcs", "Iceveil Settlement", "Winter Store Rep Lynx" }
        }
    }
    bSg.Alerts.tailorWatch = fns.fn6532
    bSg.Alerts.huntWatch = fns.fn4136
    bSg.Alerts.step = fns.fn691
    bSg.Alerts.sync = fns.fn3590
    bQE = {
        AutoLevel = { controller = bSg.LevelController, status = "LevelStatus" },
        AutoQuest = { controller = bSg.QuestController, status = "QuestStatus" },
        AutoDungeon = { controller = bSg.DungeonController, status = "DungeonStatus" },
        AutoMob = { controller = bSg.MobController, status = "MobStatus" },
        AutoBoss = { controller = bSg.BossController, status = "BossStatus" },
        AutoBossHunt = { controller = bSg.HuntController, status = "HuntStatus" },
        AutoDelivery = { controller = bSg.DeliveryController, status = "DeliveryStatus" },
        AutoDemon = { controller = bSg.DemonController, status = "DemonStatus" },
        AutoChest = { controller = bSg.ChestController, status = "ChestStatus" },
        AutoLegendaryRod = { controller = bSg.RodController, status = "RodStatus" },
        AutoBreathing = { controller = bSg.BreathController, status = "BreathStatus" },
        AutoTraining = { controller = bSg.TrainController, status = "TrainStatus" }
    }
    fns.dwb_74 = fns.fn6478
else
    bQe = function(aR7)
        local instance
        local c16 = fns.dwb_122(bSg.SoulController)
        instance = aR7.instance
        bSs.SoulStatus = "Collecting " .. aR7.label
        local c17 = (c16()) or not fns.dwb_111(aR7.point + Vector3.new(0, 3, 0), 0.2, c16) or c16() or not instance:IsDescendantOf(bSf)
        if c17 then
            return false
        end
        local c17_1 = bTb(instance)
        if c17_1 then
            bR5(c17_1)
        elseif bQG(firetouchinterest) then
            local c17_2 = (instance:IsA("BasePart")) and instance
            local c18 = c17_2 or instance:FindFirstChildWhichIsA("BasePart", true)
            local c18_1 = fns.dwb_4()
            if c18 and c18_1 then
                pcall(firetouchinterest, c18_1, c18, 0)
                task.wait(0.1)
                pcall(firetouchinterest, c18_1, c18, 1)
            end
        end
        local c17_4 = bRD(function()
            return not instance:IsDescendantOf(bSf)
        end, 2, c16)
        if c16() then
            return false
        elseif c17_4 then
            bSs.Souls = bSs.Souls + 1
            bSs.SoulStatus = "Collected " .. aR7.label
            return true
        else
            bSs.SoulStatus = "Cannot take " .. aR7.label
            return false
        end
    end
    fns.dwb_32.soulSweep = fns.fn2941
    fns.dwb_92 = fns.fn3036
    fns.dwb_32.worldsModule = fns.fn3345
    fns.dwb_32.hudGridModule = fns.fn4422
    fns.dwb_32.queueSignal = fns.fn4315
    fns.dwb_32.queueWatcher = fns.fn1203
    fns.dwb_32.menuValidators = fns.fn3876
    fns.dwb_32.teleporter = fns.fn2568
    fns.dwb_74.inMenuPlace = fns.fn5896
    fns.dwb_32.gamemodeRows = fns.fn4909
    fns.dwb_32.gamemodeName = fns.fn3643
    fns.dwb_32.worldRows = fns.fn7008
    fns.dwb_32.gamemodeAllowed = fns.fn2636
    fns.dwb_32.queuedSince = fns.fn1887
    fns.dwb_32.announceHudState = fns.fn6514
    fns.dwb_32.cancelQueue = fns.fn5177
    fns.dwb_32.queueStep = fns.fn7702
    fns.dwb_32.promptAnchor = function(aUk)
        local c3I_1
        local c3H_1
        local Parent = aUk.Parent
        if typeof(Parent) ~= "Instance" then
            return nil, nil
        elseif Parent:IsA("BasePart") then
            return Parent, Parent.Position
        elseif Parent:IsA("Attachment") then
            return Parent, Parent.WorldPosition
        elseif Parent:IsA("Model") then
            c3H_1, c3I_1 = pcall(function()
                return Parent:GetPivot().Position
            end)
            if c3H_1 then
                return Parent, c3I_1
            end
            return nil, nil
        else
            return nil, nil
        end
    end
    fns.dwb_32.lobbyPrompts = fns.fn2599
    bSg.READY_SKIP = { "cancel", "leave", "unready" }
    bSg.LEAVE_SKIP = { "ready" }
    bSg.OPEN_SKIP = { "ready", "leave" }
    fns.dwb_32.answerLobbyPrompt = function(aUP, aUQ, aUR, aUS, aUT, aUU, aUV)
        local c4i, c4j
        local c4q = if not fns.dwb_118() then 1 else 0
        if c4q == 1 then
            return
        end
        if bQe.inMenuPlace() then
            bSs[aUT] = "Waiting for a lobby"
            return
        end
        c4j = fns.dwb_92.lobbyPrompts(aUP, aUR, aUS)[1]
        if not c4j then
            bSs[aUT] = "No " .. aUR .. " prompt nearby"
            return
        end
        local ObjectText = c4j.prompt.ObjectText
        local c4k_3
        local c4l = ObjectText ~= ""
        local c4l_3
        local c4m = type(ObjectText) == "string" and c4l
        c4i = c4m and ObjectText or "the lobby"
        local c4k_2 = os.clock()
        if c4k_2 < (aUP.fired[c4j.prompt] or 0) then
            bSs[aUT] = aUU .. " " .. c4i
            return
        end
        c4l_3, c4k_3 = false, 0
        while true do
            local c4m_1 = (fns.dwb_147.controllerValid(aUP)) and c4k_3 < 6
            if c4m_1 then
                if bSU(aUQ) then
                    c4l_3 = true
                    break
                end
                task.wait(0.2)
                c4k_3 += 0.2
                continue
            end
            break
        end
        if not c4l_3 then
            bSs[aUT] = "Waiting for a turn"
            return
        end
        pcall(function()
            local prompt
            local part
            local point
            local c37 = fns.dwb_122(aUP)
            prompt, part, point = c4j.prompt, c4j.part, c4j.point
            local c4b = (c37()) or not part:IsDescendantOf(bSf)
            if c4b then
                return
            end
            local c4b_1 = math.max(prompt.MaxActivationDistance - 2, 4)
            local c4c = fns.dwb_4()
            if c4c and (point - c4c.Position).Magnitude > c4b_1 then
                bSs[aUT] = "Walking to " .. c4i
                local c4b_2 = not fns.dwb_111(point + Vector3.new(0, 3, 0), 0.2, c37) or c37()
                if c4b_2 then
                    return
                end
            end
            local c38_2 = not part:IsDescendantOf(bSf) or not prompt.Enabled
            if c38_2 then
                bSs[aUT] = "Prompt closed"
                return
            end
            aUP.fired[prompt] = os.clock() + 3
            if bR5(prompt) then
                bSs[aUT] = aUU .. " " .. c4i
                if aUV then
                    aUV(c37, c4i)
                end
            else
                bSs[aUT] = "Prompt refused"
            end
        end)
        bSu(aUQ)
    end
    fns.dwb_32.readyStep = fns.fn2640
    fns.dwb_32.collectChestLoot = fns.fn805
    bSg.CACHE_LOOT_RADIUS = 80
    bSg.CACHE_LOOT_FIRST = 3
    bSg.CACHE_LOOT_BUDGET = 30
    bSg.CACHE_LOOT_CONFIRM = 1.5
    bSg.CACHE_LOOT_QUIET = 0.25
    bSg.CACHE_LOOT_TRIES = 4
    bSg.CACHE_LOOT_PUMP = 0.1
    bSg.CACHE_LOOT_ARRIVE = 3
    bQE.lootCache = function(aVF, aVG)
        local c5q
        c5q = nil
        local c5k, c5l, c5m, c5n, c5o, c5p, c5r, c5s
        local c5u_1
        local c5t_1
        c5r = {}
        c5p = {}
        c5m = 0
        c5l = {}
        c5k = function(aVM)
            return aVM:FindFirstChildWhichIsA("ProximityPrompt")
        end
        c5q = function()
            local c4B_1
            local c4A_1
            c4B_1, c4A_1 = {}, 0
            for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
                local c4C = (v:IsA("BasePart")) and v:IsDescendantOf(bSf) and bP1(v)
                if c4C then
                    c4C = (c5l[v] or 0) < fns.dwb_11.CACHE_LOOT_TRIES
                end
                if c4C then
                    c4C = (v.Position - aVF).Magnitude <= fns.dwb_11.CACHE_LOOT_RADIUS
                end
                if c4C then
                    local c4C_1 = c5k(v)
                    if c4C_1 and c4C_1.Enabled then
                        c4B_1[#c4B_1 + 1] = { part = v, prompt = c4C_1 }
                    else
                        c4A_1 += 1
                    end
                end
            end
            return c4B_1, c4A_1
        end
        c5s = function()
            for k in pairs(c5r) do
                local c4L = not c5p[k] and k:GetAttribute("DropClaimedBy") == LocalPlayer.UserId
                if c4L then
                    c5p[k] = true
                    c5m += 1
                    bSs.Looted = bSs.Looted + 1
                end
            end
        end
        bSs.ChestStatus = "Waiting for cache loot"
        bRD(function()
            local aWh, aWi = c5q()
            return #aWh + aWi > 0
        end, fns.dwb_11.CACHE_LOOT_FIRST, aVG, 0.05)
        c5o = os.clock() + fns.dwb_11.CACHE_LOOT_BUDGET
        c5n = true
        task.spawn(function()
            while true do
                local c4_ = c5n and not aVG() and os.clock() < c5o
                if c4_ then
                    pcall(function()
                        local c4R = fns.dwb_4()
                        if not c4R then
                            return
                        end
                        local lootRange = bSg.ChestController.lootRange
                        for i, v in ipairs((c5q())) do
                            if (v.part.Position - c4R.Position).Magnitude <= lootRange then
                                c5r[v.part] = true
                                bR5(v.prompt)
                            end
                        end
                        c5s()
                    end)
                    task.wait(fns.dwb_11.CACHE_LOOT_PUMP)
                    continue
                end
                break
            end
        end)
        c5t_1, c5u_1 = pcall(function()
            local c49_1
            local c46_1
            local c44
            local c5d = false
            repeat
                local part
                local c45 = not aVG() and os.clock() < c5o
                local c45_1
                if c45 then
                    c45_1, c46_1 = c5q()
                    local c47 = fns.dwb_4()
                    local c47_1
                    if not c47 then
                        return
                    end
                    if #c45_1 == 0 then
                        if c46_1 > 0 then
                            c44 = nil
                        else
                            local c48_1 = c44 or os.clock()
                            c44 = c48_1
                            if os.clock() - c44 >= fns.dwb_11.CACHE_LOOT_QUIET then
                                return
                            end
                        end
                        task.wait(0.1)
                    else
                        c44 = nil
                        local Position = c47.Position
                        c49_1, c47_1 = nil, math.huge
                        for i, v in ipairs(c45_1) do
                            local Magnitude = (v.part.Position - Position).Magnitude
                            if Magnitude < c47_1 then
                                c49_1, c47_1 = v, Magnitude
                            end
                        end
                        bSs.ChestStatus = string.format("Looting cache: %d picked up, %d left", c5m, #c45_1 + c46_1)
                        if c47_1 > fns.dwb_11.CACHE_LOOT_ARRIVE then
                            local c45_2 = fns.dwb_147.standBy(c49_1.part, c49_1.part.Position)
                            fns.dwb_111(c45_2.Position, 0, aVG, true)
                            if aVG() then
                                return
                            end
                            fns.dwb_147.holdAt(c45_2)
                        end
                        part = c49_1.part
                        local c45_3 = bRD(function()
                            local c41 = part:GetAttribute("DropClaimedBy") ~= nil or not part:IsDescendantOf(bSf)
                            return c41
                        end, fns.dwb_11.CACHE_LOOT_CONFIRM, aVG, 0.03)
                        if not c45_3 then
                            c5l[part] = (c5l[part] or 0) + 1
                        end
                    end
                else
                    c5d = true
                end
            until c5d
        end)
        c5n = false
        fns.dwb_147.releaseHold()
        c5s()
        if not c5t_1 then
            warn("[Ouroboros] cache loot: " .. tostring(c5u_1))
        end
        local c5t_2 = 0
        for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("LootDrop")) do
            local c5u_2 = (v:IsA("BasePart")) and v:IsDescendantOf(bSf) and bP1(v) and (v.Position - aVF).Magnitude <= fns.dwb_11.CACHE_LOOT_RADIUS
            if c5u_2 then
                c5t_2 += 1
            end
        end
        return c5m, c5t_2
    end
    fns.dwb_32.chestAffordable = fns.fn2081
    bSg.OPEN_RUN_GAP = 10
    fns.dwb_32.openLimitReached = fns.fn6790
    fns.dwb_32.openStep = function()
        local OpenController
        local c5T_1
        OpenController = bSg.OpenController
        local c5R = (bQe.inMenuPlace()) and nil
        local c5S = c5R or fns.dwb_92.lobbyPrompts(OpenController, "open", fns.dwb_11.OPEN_SKIP)[1]
        local c5S_2
        if not c5S then
            if OpenController.emptyAt == 0 then
                OpenController.emptyAt = os.clock()
            else
                local c5S_1 = OpenController.opened > 0 and os.clock() - OpenController.emptyAt > fns.dwb_11.OPEN_RUN_GAP
                if c5S_1 then
                    OpenController.opened = 0
                end
            end
        else
            OpenController.emptyAt = 0
        end
        if fns.dwb_92.openLimitReached() then
            bSs.OpenStatus = string.format("Opened %d of %d", OpenController.opened, OpenController.limit)
            return
        end
        if c5S then
            c5S_2, c5T_1 = fns.dwb_92.chestAffordable(c5S.prompt)
            if not c5S_2 then
                local format = string.format
                local c5S_3 = (tonumber(LocalPlayer:GetAttribute("RunPoints"))) or 0
                bSs.OpenStatus = format("%d / %d points for the chest", c5S_3, c5T_1)
                return
            end
        end
        fns.dwb_92.answerLobbyPrompt(OpenController, "AutoOpenChest", "open", fns.dwb_11.OPEN_SKIP, "OpenStatus", "Opened", function(aXv, aXw)
            OpenController.opened = OpenController.opened + 1
            fns.dwb_92.collectChestLoot(aXv, aXw)
            local c5O = not aXv() and OpenController.limit > 0
            if c5O then
                bSs.OpenStatus = string.format("Opened %s (%d of %d)", aXw, OpenController.opened, OpenController.limit)
            end
        end)
    end
    fns.dwb_32.spendHeart = function(aXB, aXC, aXD)
        local c5V
        c5V = nil
        local c5W = (bR3()) and fns.dwb_104()
        c5V = c5W
        if not c5V then
            bSs[aXC] = "Waiting for the respawn"
            return false
        end
        bSs[aXC] = aXD
        local c5W_1 = pcall(function()
            c5V.Health = 0
        end)
        if not c5W_1 then
            bSs[aXC] = "Reset refused"
            return false
        end
        bRD(function()
            return not bR3()
        end, 5, fns.dwb_122(aXB))
        fns.dwb_17(20)
        return true
    end
    fns.dwb_32.runKey = fns.fn5436
    fns.dwb_32.resetStep = fns.fn3528
    fns.dwb_32.inRunLobby = fns.fn4805
    fns.dwb_32.stallStep = fns.fn188
    fns.dwb_32.leaveFloorStep = fns.fn3017
    fns.dwb_32.leaveStep = fns.fn6353
    fns.dwb_32.worldLoopStep = fns.fn6145
    fns.dwb_32.worldStep = fns.fn3589
    fns.dwb_24.Alerts = { last = nil, interval = 2, bosses = {}, marks = {}, on = {}, queue = {} }
    fns.dwb_24.Alerts.enabled = fns.fn3908
    fns.dwb_24.Alerts.push = fns.fn544
    fns.dwb_24.Alerts.fresh = fns.fn5699
    fns.dwb_24.Alerts.timedVendor = fns.fn4579
    fns.dwb_24.Alerts.rotatingShop = fns.fn229
    fns.dwb_24.Alerts.schedule = fns.fn4001
    fns.dwb_24.Alerts.clock = fns.fn2943
    fns.dwb_24.Alerts.place = fns.fn3542
    fns.dwb_24.Alerts.names = fns.fn7298
    fns.dwb_24.Alerts.vendorModel = fns.fn3020
    fns.dwb_24.Alerts.bossWatch = fns.fn6901
    fns.dwb_24.Alerts.muzanWatch = fns.fn580
    fns.dwb_24.Alerts.marketWatch = fns.fn5181
    fns.dwb_24.Alerts.TAILORS = {
        { label = "Elara", path = { "Mistfall Harbor", "Npcs", "Content", "Ouwland", "Elara" } },
        {
            label = "Lynx",
            path = { "Ouwland", "Iceveil Settlement", "Winter Store Rep Lynx", "Content", "Iceveil Valley", "Npcs" }
        }
    }
    fns.dwb_24.Alerts.tailorWatch = fns.fn6532
    fns.dwb_24.Alerts.huntWatch = fns.fn4136
    fns.dwb_24.Alerts.step = fns.fn691
    fns.dwb_24.Alerts.sync = fns.fn3590
    fns.dwb_143 = {
        AutoDungeon = { controller = fns.dwb_24.DungeonController, status = "DungeonStatus" },
        AutoQuest = { controller = fns.dwb_24.QuestController, status = "QuestStatus" },
        AutoMob = { controller = fns.dwb_24.MobController, status = "MobStatus" },
        AutoLegendaryRod = { controller = fns.dwb_24.RodController, status = "RodStatus" },
        AutoDemon = { controller = fns.dwb_24.DemonController, status = "DemonStatus" },
        AutoChest = { controller = fns.dwb_24.ChestController, status = "ChestStatus" },
        AutoTraining = { controller = fns.dwb_24.TrainController, status = "TrainStatus" },
        AutoBoss = { controller = fns.dwb_24.BossController, status = "BossStatus" },
        AutoLevel = { controller = fns.dwb_24.LevelController, status = "LevelStatus" },
        AutoBossHunt = { controller = fns.dwb_24.HuntController, status = "HuntStatus" },
        AutoDelivery = { controller = fns.dwb_24.DeliveryController, status = "DeliveryStatus" },
        AutoBreathing = { controller = fns.dwb_24.BreathController, status = "BreathStatus" }
    }
    fns.dwb_11 = fns.fn6478
end
fns.dwb_142.setOrder(fns.dwb_142.defaultOrder)
fns.dwb_123.PriorityLabels = fns.fn1402
fns.dwb_123.PriorityRows = fns.fn2194
fns.dwb_123.PriorityOrder = fns.fn22
fns.dwb_123.PriorityKeyFor = fns.fn221
fns.dwb_123.SetPriorityOrder = fns.fn5355
fns.dwb_123.MovePriority = fns.fn662
fns.dwb_123.ResetPriorityOrder = fns.fn2971
fns.dwb_123.SetPriorityPreempt = fns.fn1350
fns.dwb_123.SetPriorityMode = fns.fn2886
fns.dwb_123.BeginPriorityLoad = fns.fn5997
fns.dwb_123.SettlePriority = fns.fn777
fns.dwb_123.PriorityActive = fns.fn2742
fns.dwb_123.PriorityHolder = fns.fn3413
bSg.SchematicRunner = { running = false, cancel = 0, ret = true, targets = {} }
SchematicRunner, bQz, bSi = nil, nil, nil
if (SchematicRunner and false and (bQz or false) or (bSi and not SchematicRunner or (bQz or 22)) or (bSi or (SchematicRunner or not SchematicRunner)) and (bSi and not SchematicRunner or (not bQz or 22))) and ((not bQz and false or (false or SchematicRunner) or (not SchematicRunner and bQz or (not SchematicRunner or false))) and ((not bQz or SchematicRunner) and (SchematicRunner or false) or not bQz and 22 and bSi)) and not ((SchematicRunner and false and (bQz or false) or (bSi and not SchematicRunner or (bQz or 22)) or (bSi or (SchematicRunner or not SchematicRunner)) and (bSi and not SchematicRunner or (not bQz or 22))) and ((not bQz and false or (false or SchematicRunner) or (not SchematicRunner and bQz or (not SchematicRunner or false))) and ((not bQz or SchematicRunner) and (SchematicRunner or false) or not bQz and 22 and bSi))) then
    bSg = SchematicRunner.SchematicRunner
else
    SchematicRunner = bSg.SchematicRunner
end
SchematicRunner.props = fns.fn4187
SchematicRunner.entries = fns.fn5848
SchematicRunner.owned = fns.fn2984
bQz = fns.fn1949
SchematicRunner.levers = function(a1F)
    local dan
    dan = nil
    dan = LocalPlayer
    if not dan then
        return false, "No player"
    end
    local function format()
        return dan:GetAttribute("SicklesSewerOpen") == true
    end
    if format() then
        return true, "Sewer already open"
    end
    local function dap()
        return bQz(a1F)
    end
    local dav = 1
    while dav <= 2 do
        for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("SicklesLever")) do
            local daD = v
            local daq_1 = (bQz(a1F)) or format()
            if daq_1 then
                break
            else
                local format2 = string.format
                local dar = (tonumber(dan:GetAttribute("SicklesLeversPulled"))) or 0
                bSs.SchematicStatus = format2("Pulling sickles levers (%d/10)", dar)
                if fns.dwb_137(daD:GetPivot().Position + Vector3.new(0, 6, 6), 0.4, dap) then
                    bRD(function()
                        return daD:FindFirstChildWhichIsA("ProximityPrompt", true) ~= nil
                    end, 8, dap)
                    bQR("training_signaler", "StateChanged", daD)
                    bRD(format, 1.5, dap)
                end
            end
        end
        local daq_3 = (bQz(a1F)) or format()
        if daq_3 then
            break
        end
        dav += 1
    end
    if format() then
        return true, "Sewer opened"
    end
    format = string.format
    dap = (tonumber(dan:GetAttribute("SicklesLeversPulled"))) or 0
    return false, format("Sewer still shut (%d/10 levers)", dap)
end
SchematicRunner.lake = {
    Vector3.new(-450, 740, 700),
    Vector3.new(-700, 748, 350),
    Vector3.new(-280, 740, 1200),
    Vector3.new(-250, 740, 250)
}
SchematicRunner.boxAnchor = Vector3.new(899, 884, 745)
SchematicRunner.serpent = function(a1Z)
    local da9, dbb
    da9 = {}
    dbb = function()
        return bQz(a1Z)
    end
    local function dbe()
        for i, v in ipairs(SchematicRunner.lake) do
            if bQz(a1Z) then
                return nil
            end
            local daL
            for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("SerpentKey")) do
                if not da9[v] then
                    daL = v
                    break
                end
            end
            if daL then
                return daL
            end
            if not fns.dwb_137(v, 0.4, dbb) then
                return nil
            end
            bRD(function()
                for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("SerpentKey")) do
                    if not da9[v] then
                        return true
                    end
                end
                return false
            end, 8, dbb)
        end
        for i, v in ipairs(fns.dwb_51.CollectionService:GetTagged("SerpentKey")) do
            if not da9[v] then
                return v
            end
        end
        return nil
    end
    local dbf = 0
    local dbj = false
    repeat
        local ProximityPrompt2, da8, ProximityPrompt
        if not bQz(a1Z) then
            if SchematicRunner.owned("Nightfall Serpent Katana") then
                return true, "Nightfall Serpent Katana"
            end
            if dbf >= 40 then
                return false, "Gave up on the serpent box"
            end
            dbf += 1
            if fns.dwb_70("Serpent Key") == nil then
                local dbd = dbe()
                if not dbd then
                    return false, "No serpent keys left to try"
                end
                da9[dbd] = true
                bSs.SchematicStatus = string.format("Taking a serpent key (try %d)", dbf)
                if fns.dwb_137(dbd:GetPivot().Position + Vector3.new(0, 4, 3), 0.4, dbb) then
                    ProximityPrompt2 = nil
                    bRD(function()
                        ProximityPrompt2 = dbd:FindFirstChildWhichIsA("ProximityPrompt", true)
                        return ProximityPrompt2 ~= nil and ProximityPrompt2.Enabled
                    end, 6, dbb)
                    if ProximityPrompt2 and ProximityPrompt2.Enabled then
                        bR5(ProximityPrompt2)
                        bRD(function()
                            return fns.dwb_70("Serpent Key") ~= nil
                        end, 5, dbb)
                    end
                end
            end
            local dbg_2 = fns.dwb_70("Serpent Key") ~= nil and not bQz(a1Z)
            if dbg_2 then
                bSs.SchematicStatus = "Trying the serpent box"
                if fns.dwb_137(SchematicRunner.boxAnchor, 0.4, dbb) then
                    da8 = nil
                    bRD(function()
                        da8 = fns.dwb_51.CollectionService:GetTagged("SerpentBox")[1]
                        return da8 ~= nil
                    end, 8, dbb)
                    if da8 then
                        fns.dwb_137(da8:GetPivot().Position + Vector3.new(0, 6, 6), 0.4, dbb)
                        ProximityPrompt = nil
                        bRD(function()
                            ProximityPrompt = da8:FindFirstChildWhichIsA("ProximityPrompt", true)
                            return ProximityPrompt ~= nil and ProximityPrompt.Enabled
                        end, 6, dbb)
                        if ProximityPrompt and ProximityPrompt.Enabled then
                            bR5(ProximityPrompt)
                            bRD(function()
                                local da6 = (SchematicRunner.owned("Nightfall Serpent Katana")) or fns.dwb_70("Serpent Key") == nil
                                return da6
                            end, 6, dbb)
                        end
                    end
                end
            end
        else
            dbj = true
        end
    until dbj
    if SchematicRunner.owned("Nightfall Serpent Katana") then
        return true, "Nightfall Serpent Katana"
    end
    return false, "Stopped at the serpent box"
end
bSi = function(a2Q, a2R)
    local dbm
    local dbp_1, dbp_3
    local dbo_1, dbo_3
    local model = a2Q.model
    if model:GetAttribute("Locked") == true then
        bSs.SchematicStatus = "Opening the sickles sewer"
        dbo_1, dbp_1 = SchematicRunner.levers(a2R)
        if not dbo_1 then
            return false, dbp_1
        end
        bRD(function()
            return model:GetAttribute("Locked") ~= true
        end, 5, function()
            return bQz(a2R)
        end)
        if model:GetAttribute("Locked") == true then
            return false, a2Q.name .. " is still locked"
        end
        bSs.SchematicStatus = "Travelling to " .. a2Q.name
        local function dbo_2()
            return bQz(a2R)
        end
        if not fns.dwb_137(model:GetPivot().Position + Vector3.new(0, 6, 4), 0.4, dbo_3) then
            return false, "Stopped short of " .. a2Q.name
        end
        dbm = nil
        bRD(function()
            dbm = model:FindFirstChildWhichIsA("ProximityPrompt", true)
            return dbm ~= nil and dbm.Enabled
        end, 6, dbo_2)
        if bQz(a2R) then
            return false, "Stopped"
        end
        if dbp_3 then
            return false, "Cannot study " .. a2Q.name .. " yet"
        end
        bSs.SchematicStatus = "Studying " .. a2Q.name
        bR5(dbm)
        if bRD(function()
            return SchematicRunner.owned(a2Q.name)
        end, 8, dbo_3) then
            return true, a2Q.name
        end
        return false, a2Q.name .. " did not register"
    elseif model:GetAttribute("Locked") == true then
        return false, a2Q.name .. " is still locked"
    else
        bSs.SchematicStatus = "Travelling to " .. a2Q.name
        dbo_3 = function()
            return bQz(a2R)
        end
        if not fns.dwb_137(model:GetPivot().Position + Vector3.new(0, 6, 4), 0.4, dbo_3) then
            return false, "Stopped short of " .. a2Q.name
        end
        dbm = nil
        bRD(function()
            dbm = model:FindFirstChildWhichIsA("ProximityPrompt", true)
            return dbm ~= nil and dbm.Enabled
        end, 6, dbo_3)
        if bQz(a2R) then
            return false, "Stopped"
        end
        dbp_3 = not dbm or not dbm.Enabled
        if dbp_3 then
            return false, "Cannot study " .. a2Q.name .. " yet"
        end
        bSs.SchematicStatus = "Studying " .. a2Q.name
        bR5(dbm)
        if bRD(function()
            return SchematicRunner.owned(a2Q.name)
        end, 8, dbo_3) then
            return true, a2Q.name
        end
        return false, a2Q.name .. " did not register"
    end
end
SchematicRunner.start = function()
    local dbH, cancel
    if SchematicRunner.running then
        return false, "Already collecting schematics"
    end
    dbH = fns.dwb_90(SchematicRunner.targets)
    if next(dbH) == nil then
        bSs.SchematicStatus = "No schematics selected"
        return false, bSs.SchematicStatus
    end
    SchematicRunner.cancel = SchematicRunner.cancel + 1
    cancel = SchematicRunner.cancel
    SchematicRunner.running = true
    fns.dwb_74("Schematics")
    bSs.SchematicStatus = "Starting"
    task.delay(0, function()
        local dbv_1
        local dbu_1
        local dbt_1
        local dbr = fns.dwb_4()
        local dbs = dbr and dbr.Position
        local dbs_1
        dbt_1, dbs_1 = 0, 0
        for i, v in ipairs(SchematicRunner.entries()) do
            if bQz(cancel) then
                break
            elseif dbH[v.name] then
                if SchematicRunner.owned(v.name) then
                    dbs_1 += 1
                else
                    if v.box then
                        dbu_1, dbv_1 = SchematicRunner.serpent(cancel)
                    else
                        dbu_1, dbv_1 = bSi(v, cancel)
                    end
                    if dbu_1 then
                        dbt_1 += 1
                    else
                        dbs_1 += 1
                        bSs.SchematicStatus = dbv_1
                    end
                end
            end
        end
        local dbu_2 = bQz(cancel)
        local dbv_2 = not dbu_2
        if dbv_2 ~= false then
            dbv_2 = SchematicRunner.ret
        end
        if dbv_2 and dbs then
            bSs.SchematicStatus = "Teleporting back"
            fns.dwb_137(dbs, 0.2, function()
                return bQz(cancel)
            end)
        end
        if SchematicRunner.cancel == cancel then
            SchematicRunner.running = false
            local dbr_2 = dbu_2 and string.format("Stopped after %d collected", dbt_1)
            local dbu_3 = dbr_2
            local dbG = if dbu_3 then 1 else 0
            local dbE = 2347 * dbG + 43 * (1 - dbG)
            local dbF = 1753 * dbG + 289 * (1 - dbG)
            if not ((dbE * 3815 + dbF * 726 + dbE * dbF) % 16777213 == 14340774) then
                dbu_3 = string.format("Collected %d, skipped %d", dbt_1, dbs_1)
            end
            bSs.SchematicStatus = dbu_3
        end
    end)
    return true, "Collecting schematics"
end
SchematicRunner.stop = fns.fn1341
fns.dwb_123.Track(fns.fn4588)
fns.dwb_121, fns.dwb_103 = nil, nil
fns.dwb_123.SchematicNames = fns.fn4154
fns.dwb_123.SetSchematicTargets = fns.fn5120
fns.dwb_123.SetSchematicReturn = fns.fn5169
fns.dwb_123.CollectSchematics = fns.fn7230
fns.dwb_123.StopSchematics = fns.fn7053
fns.dwb_123.SetAutoLevel = fns.fn1320
fns.dwb_123.SetLevelDropForeign = fns.fn6690
fns.dwb_123.SetAutoMob = fns.fn6235
fns.dwb_103 = fns.fn2875
fns.dwb_123.SetAutoQuest = fns.fn5087
fns.dwb_123.SetAutoBossHunt = fns.fn560
fns.dwb_123.SetHuntTiers = fns.fn2667
fns.dwb_123.SetHuntDropForeign = fns.fn1965
fns.dwb_123.SetAutoDelivery = fns.fn5846
fns.dwb_123.SetAutoDemon = fns.fn4972
fns.dwb_123.SetDemonMob = fns.fn6555
fns.dwb_123.SetDemonDrink = fns.fn6982
fns.dwb_123.SetDemonDropForeign = fns.fn4278
fns.dwb_123.InDungeon = fns.fn5975
fns.dwb_123.DungeonName = fns.fn4666
fns.dwb_123.SetAutoDungeon = fns.fn3527
fns.dwb_123.EventNames = fns.fn7137
fns.dwb_123.BlockableNames = fns.fn979
fns.dwb_123.CardNames = fns.fn4901
fns.dwb_123.SetAutoCards = fns.fn1578
fns.dwb_123.SetAutoSkipWaves = fns.fn4468
fns.dwb_123.SetCardSelection = fns.fn2213
fns.dwb_123.SetBlockCards = fns.fn7606
fns.dwb_123.SetCardBlocks = fns.fn1426
fns.dwb_123.SetForceHealCards = fns.fn2205
fns.dwb_123.SetHealBelow = fns.fn1381
fns.dwb_123.SetCardPriority = fns.fn7372
fns.dwb_123.SetAutoBringEnemies = fns.fn4843
fns.dwb_123.SetBringRange = fns.fn7660
fns.dwb_123.SetDungeonRange = fns.fn5338
fns.dwb_123.SetQuestSelection = fns.fn7446
fns.dwb_123.QuestChoices = fns.fn4569
fns.dwb_123.RefreshQuestChoices = fns.fn1460
fns.dwb_123.SetMobTarget = fns.fn2559
fns.dwb_123.SetAutoBoss = fns.fn5427
fns.dwb_123.SetBossSelection = fns.fn2390
fns.dwb_123.SetAutoChest = fns.fn5801
fns.dwb_123.SetChestTiers = fns.fn5983
fns.dwb_123.SetCacheHop = fns.fn4872
fns.dwb_123.SetCacheHopCount = fns.fn3267
fns.dwb_123.SetCacheLootRange = fns.fn1818
fns.dwb_123.SetCacheHopOrder = fns.fn6675
fns.dwb_123.SetCacheHopScans = fns.fn1574
fns.dwb_123.SetCacheHopEmpty = fns.fn2953
fns.dwb_123.SetAutoBreathing = fns.fn595
fns.dwb_123.SetBreathing = fns.fn6916
fns.dwb_123.SetWenMob = fns.fn4280
fns.dwb_123.SetAutoSkillTree = fns.fn1975
fns.dwb_123.SetSkillNodes = fns.fn7561
fns.dwb_123.SetUnlockSkills = fns.fn4349
fns.dwb_123.SetPositionType = fns.fn1073
fns.dwb_123.SetLookAtEnemy = fns.fn3297
fns.dwb_123.SetOffsetDistance = fns.fn3723
fns.dwb_123.SetHeightOffset = fns.fn7584
fns.dwb_123.SetLateralOffset = fns.fn6494
fns.dwb_123.SetMovementMode = fns.fn5984
fns.dwb_123.SetTweenSpeed = fns.fn5945
fns.dwb_123.SetWeapon = function(a7K)
    local dep
    local deq = type(a7K) == "string" and a7K
    dep = deq or ""
    if dep == bQ4.weapon then
        return
    end
    bQ4.weapon = dep
    if dep == "" then
        return
    end
    task.delay(0, function()
        if fns.dwb_38() == dep then
            return
        end
        fns.dwb_42(dep)
    end)
end
fns.dwb_123.SetAutoSkills = fns.fn6303
fns.dwb_123.SetSkillSelection = fns.fn1967
fns.dwb_123.SetAutoClanSkills = fns.fn4573
fns.dwb_123.SetClanSkillSelection = fns.fn49
fns.dwb_123.HoldSkills = fns.fn5952
fns.dwb_123.SetSkillHold = fns.fn7308
fns.dwb_123.SkillChoices = fns.fn1513
fns.dwb_123.RefreshSkillChoices = fns.fn4231
fns.dwb_123.ClanSkillChoices = fns.fn1611
fns.dwb_123.ClanHoldSkills = fns.fn3933
fns.dwb_123.RefreshClanSkillChoices = fns.fn2118
fns.dwb_123.WeaponNames = fns.fn7185
fns.dwb_123.RefreshWeapons = fns.fn2771
fns.dwb_123.PotionNames = fns.fn1585
fns.dwb_123.ShopItemNames = fns.fn2672
fns.dwb_123.SetAutoPotion = fns.fn362
fns.dwb_123.SetPotion = fns.fn3105
fns.dwb_123.SetDrinkBelow = fns.fn4592
fns.dwb_123.SetAutoBuy = fns.fn4672
fns.dwb_123.SetShopItems = fns.fn7662
fns.dwb_123.SetKeepAmount = fns.fn4082
fns.dwb_123.BaitNames = fns.fn4361
fns.dwb_123.SetAutoFish = fns.fn2116
fns.dwb_123.TrainingNames = fns.fn5102
fns.dwb_123.TrainingModes = fns.fn7117
fns.dwb_123.SetAutoTraining = function(a9s)
    if a9s then
        fns.dwb_74("AutoTraining")
        bSs.TrainStatus = "Starting"
        bSg.TrainController.running = true
        fns.dwb_53(bSg.TrainController, bSg.TrainController.step)
    else
        bSg.TrainController.running = false
        fns.dwb_72(bSg.TrainController)
        bSg.TrainController.pointer.hold(false)
        local dfN = fns.dwb_104()
        if dfN then
            pcall(function()
                dfN:Move(Vector3.zero, false)
            end)
        end
        bSs.TrainStatus = "Idle"
    end
end
fns.dwb_123.SetTrainings = fns.fn4950
fns.dwb_123.SetTrainingMode = fns.fn6149
fns.dwb_123.SetFishBait = fns.fn399
fns.dwb_123.SetLegendaryRod = fns.fn3425
fns.dwb_123.SetAutoBuyBait = fns.fn388
fns.dwb_123.SetReturnAfterBait = fns.fn2625
fns.dwb_123.SetAnglerQuest = fns.fn752
fns.dwb_123.SetAutoBuyExp = fns.fn960
fns.dwb_123.SetExpBundles = fns.fn5275
fns.dwb_123.SetPointReserve = fns.fn3854
fns.dwb_123.RunPoints = fns.fn3426
fns.dwb_123.ExpBundleCost = fns.fn4153
fns.dwb_123.BuyExpNow = fns.fn5642
fns.dwb_123.WebhookChannels = fns.fn2176
fns.dwb_123.WebhookEventLabels = fns.fn6238
fns.dwb_123.SetWebhookEvents = fns.fn5154
fns.dwb_123.ItemCategories = fns.fn7617
fns.dwb_123.DefaultItemCategories = fns.fn2665
fns.dwb_123.SetItemCategories = fns.fn5571
fns.dwb_123.SetWebhookUrl = fns.fn4902
fns.dwb_123.SetWebhookInterval = fns.fn402
fns.dwb_123.SetWebhookEnabled = fns.fn1803
fns.dwb_123.SetWebhookPingId = fns.fn373
fns.dwb_123.SetWebhookPing = fns.fn3890
fns.dwb_123.SetWebhookSkipQuiet = fns.fn6369
fns.dwb_123.WebhookStyles = fns.fn7041
fns.dwb_123.SetWebhookStyle = fns.fn87
fns.dwb_123.LootRarityNames = fns.fn2887
fns.dwb_123.SetLootRarity = fns.fn5963
fns.dwb_123.WebhookStatus = fns.fn2414
fns.dwb_123.WebhookChannelStatus = fns.fn2794
fns.dwb_123.SendWebhookReport = function(ba8, ba9)
    task.spawn(function()
        local dho_1
        local dhn_1
        local dhl = bQS.Channels[ba8]
        if not dhl then
            if ba9 then
                ba9(false, "Unknown report")
            end
            return
        end
        pcall(bQS.Sample)
        local dhm = bQS.Payload(dhl)
        bQS.Reset(dhl)
        dhl.Waited = 0
        dho_1, dhn_1 = bQS.Post(bQS.UrlFor(dhl), dhm)
        if ba9 then
            ba9(dho_1, dhn_1)
        end
    end)
end
fns.dwb_123.SetAutoParry = fns.fn283
fns.dwb_123.SetParryNpcs = fns.fn6205
fns.dwb_123.SetParryPlayers = fns.fn326
fns.dwb_123.SetParryMitigate = fns.fn7071
fns.dwb_123.SetParryHold = fns.fn7219
fns.dwb_123.SetParryAuto = fns.fn6109
fns.dwb_123.SetParryLead = fns.fn4803
fns.dwb_123.SetParryRadius = fns.fn6668
fns.dwb_123.ResetParryStats = fns.fn4547
fns.dwb_123.SetNoStun = fns.fn5066
fns.dwb_123.SetNoRagdoll = fns.fn4396
bTE.noAnim = { on = false }
bTE.noAnim.hook = function(bbM)
    local noAnim
    noAnim = nil
    noAnim = bTE.noAnim
    if noAnim.played then
        noAnim.played:Disconnect()
        noAnim.played = nil
    end
    local dhR = bbM and bbM:WaitForChild("Humanoid", 10)
    local dhS = dhR
    if dhR then
        dhR = dhS:WaitForChild("Animator", 10)
    end
    local dhS_1 = dhR
    if not dhS_1 or not noAnim.on or bbM ~= LocalPlayer.Character then
        return
    end
    for i, v in ipairs(dhS_1:GetPlayingAnimationTracks()) do
        pcall(v.Stop, v, 0)
    end
    noAnim.played = dhS_1.AnimationPlayed:Connect(function(bbX)
        if noAnim.on then
            pcall(bbX.Stop, bbX, 0)
        end
    end)
end
bTE.noAnim.release = fns.fn7568
fns.dwb_123.Track(bTE.noAnim.release)
fns.dwb_123.SetDisableAnimations = function(bb0)
    local noAnim = bTE.noAnim
    noAnim.on = bb0 == true
    if not noAnim.on then
        noAnim.release()
        return
    end
    if not noAnim.spawned then
        noAnim.spawned = LocalPlayer.CharacterAdded:Connect(function(bb4)
            task.spawn(noAnim.hook, bb4)
        end)
    end
    task.spawn(noAnim.hook, LocalPlayer.Character)
end
bTE.xray = {
    on = false,
    amount = 0.7,
    parts = setmetatable({}, { __mode = "k" }),
    skip = { "Humanoids", "Chests", "Debree", "Camera" }
}
bTE.xray.skipped = fns.fn4655
bTE.xray.apply = fns.fn4509
bTE.xray.sweep = fns.fn6044
bTE.xray.clear = function()
    local xray = bTE.xray
    xray.token = (xray.token or 0) + 1
    for k in pairs(xray.parts) do
        local diS = k
        pcall(function()
            diS.LocalTransparencyModifier = 0
        end)
    end
    table.clear(xray.parts)
end
fns.dwb_123.Track(fns.fn4405)
fns.dwb_123.SetMapXray = function(bcF)
    local xray = bTE.xray
    xray.on = bcF == true
    if not xray.on then
        if xray.added then
            xray.added:Disconnect()
            xray.added = nil
        end
        xray.clear()
        return
    end
    if not xray.added then
        xray.added = bSf.DescendantAdded:Connect(function(bcJ)
            local diU = xray.on and bcJ:IsA("BasePart") and not xray.skipped(bcJ)
            if diU then
                xray.apply(bcJ)
            end
        end)
    end
    task.spawn(xray.sweep)
end
fns.dwb_123.SetMapXrayAmount = function(bcM)
    local xray = bTE.xray
    local di2 = (tonumber(bcM)) or 70
    xray.amount = math.clamp(di2 / 100, 0, 0.95)
    if xray.on then
        for k in pairs(xray.parts) do
            local di7 = k
            pcall(function()
                di7.LocalTransparencyModifier = xray.amount
            end)
        end
    end
end
fns.dwb_123.SetNoAttackSlowdown = fns.fn1263
fns.dwb_123.SetInstantKill = fns.fn290
fns.dwb_123.SetChestInstantKill = fns.fn459
fns.dwb_123.SetChestKillThreshold = fns.fn4386
fns.dwb_123.SetKillThreshold = fns.fn4727
fns.dwb_123.SetInfiniteStamina = fns.fn6371
fns.dwb_123.SetInfiniteClimb = fns.fn1991
fns.dwb_123.SetInfiniteHorseStamina = fns.fn5131
fns.dwb_123.SetNoDrown = fns.fn7305
fns.dwb_123.SetDisableShiftLock = fns.fn6735
fns.dwb_123.SetNoDashCooldown = fns.fn5792
fns.dwb_123.SetNoSunDamage = fns.fn3258
fns.dwb_123.SetAlwaysRun = fns.fn61
fns.dwb_123.SetOwnershipViewer = fns.fn3107
fns.dwb_123.SetOwnershipRange = fns.fn7324
fns.dwb_123.SetNotification = fns.fn993
fns.dwb_123.SetNotifyBosses = fns.fn835
fns.dwb_123.TakeNotifications = fns.fn7473
fns.dwb_123.LastNotification = fns.fn4292
fns.dwb_123.TeleportToNotification = fns.fn6923
fns.dwb_123.EspCategories = fns.fn728
fns.dwb_123.SetEsp = fns.fn6041
fns.dwb_123.SetEspRange = fns.fn2808
fns.dwb_123.SetEspOption = fns.fn7235
fns.dwb_123.SetEspColour = fns.fn4353
fns.dwb_123.SetEspCategory = fns.fn4580
fns.dwb_123.SetEspDistance = fns.fn7135
fns.dwb_123.TeleportToMuzan = fns.fn1425
fns.dwb_123.ZoneNames = fns.fn4965
fns.dwb_123.NpcNames = fns.fn3022
fns.dwb_123.TeleportToZone = function(bd8)
    task.delay(0, function()
        local djN = bTE.zonePoints()[bd8]
        if not djN then
            bSs.TeleportStatus = "Cannot find " .. tostring(bd8)
            return
        end
        bSs.TeleportStatus = "Travelling to " .. bd8
        local djO = fns.dwb_111(djN + Vector3.new(0, 5, 0), 0.2)
        bSs.TeleportStatus = djO and "Arrived at " .. bd8 or "Stopped short of " .. bd8
    end)
end
fns.dwb_11.RESPAWN_HOLD = 3
bSg.RespawnController = { point = nil, connection = nil, enabled = false }
fns.dwb_123.SpawnCrystals = fns.fn6545
fns.dwb_123.SpawnCrystalNames = fns.fn2621
fns.dwb_123.SetSpawnAtCrystal = function(bew)
    task.delay(0, function()
        local dkd
        local ProximityPrompt
        ProximityPrompt = nil
        dkd = nil
        dkd = fns.dwb_123.SpawnCrystals()[bew]
        if not dkd then
            bSs.SpawnStatus = "Cannot find " .. tostring(bew)
            return
        end
        bSs.SpawnStatus = "Travelling to " .. bew
        local Position = dkd:GetPivot().Position
        if not fns.dwb_111(Position + Vector3.new(0, 3, 4), 0.3) then
            bSs.SpawnStatus = "Stopped short of " .. bew
            return
        end
        ProximityPrompt = nil
        bRD(function()
            ProximityPrompt = dkd:FindFirstChildWhichIsA("ProximityPrompt", true)
            return ProximityPrompt ~= nil
        end, 6)
        if not ProximityPrompt then
            bSs.SpawnStatus = "Cannot reach the crystal prompt"
            return
        end
        bR5(ProximityPrompt)
        task.wait(0.8)
        bSs.SpawnStatus = "Spawn set to " .. bew
    end)
end
fns.dwb_123.PointText = fns.fn3585
fns.dwb_123.CurrentPositionText = fns.fn7093
fns.dwb_123.CustomSpawnText = fns.fn2071
fns.dwb_123.RefreshRespawnStatus = fns.fn6176
fns.dwb_123.SetCustomSpawn = fns.fn123
fns.dwb_123.SetAutoCustomRespawn = function(be4)
    local RespawnController
    RespawnController = bSg.RespawnController
    RespawnController.enabled = be4 == true
    if RespawnController.connection then
        RespawnController.connection:Disconnect()
        RespawnController.connection = nil
    end
    if not RespawnController.enabled then
        fns.dwb_123.RefreshRespawnStatus()
        return
    end
    RespawnController.connection = LocalPlayer.CharacterAdded:Connect(function(be9)
        if not RespawnController.point then
            return
        end
        local HumanoidRootPart = be9:WaitForChild("HumanoidRootPart", 10)
        local dkt = not HumanoidRootPart or not fns.dwb_118() or not RespawnController.enabled or not RespawnController.point
        if dkt then
            return
        end
        bSs.RespawnStatus = "Spawning at the saved position"
        local dkt_1 = CFrame.new(RespawnController.point)
        local dku = os.clock() + fns.dwb_11.RESPAWN_HOLD
        while os.clock() < dku do
            local dkv = not fns.dwb_118() or not RespawnController.enabled or HumanoidRootPart.Parent == nil
            if dkv then
                break
            end
            HumanoidRootPart.CFrame = dkt_1
            HumanoidRootPart.AssemblyLinearVelocity = Vector3.zero
            fns.dwb_51.RunService.Heartbeat:Wait()
        end
        fns.dwb_123.RefreshRespawnStatus()
    end)
    fns.dwb_123.RefreshRespawnStatus()
end
fns.dwb_123.Track(fns.fn1452)
fns.dwb_123.TeleportToNpc = function(bfq)
    task.delay(0, function()
        local dkB = fns.dwb_41(bfq)
        if not dkB then
            bSs.TeleportStatus = "Cannot find " .. tostring(bfq)
            return
        end
        bSs.TeleportStatus = "Travelling to " .. bfq
        local dkC = fns.dwb_111(dkB + Vector3.new(0, 4, 0), 0.2)
        bSs.TeleportStatus = dkC and "Arrived at " .. bfq or "Stopped short of " .. bfq
    end)
end
fns.dwb_123.TeleportToMob = function(bfC)
    task.delay(0, function()
        local dkH = select(1, bRx(bfC))
        if not dkH then
            bSs.TeleportStatus = "Cannot find " .. tostring(bfC)
            return
        end
        bSs.TeleportStatus = "Travelling to " .. bfC
        local dkI = fns.dwb_111(dkH + Vector3.new(0, 5, 0), 0.2)
        local dkI_1 = dkI and "Arrived at " .. bfC
        local dkM = if dkI_1 then 1 else 0
        local dkK = 771 * dkM + 414 * (1 - dkM)
        local dkL = 2524 * dkM + 4077 * (1 - dkM)
        if not ((dkK * 1168 + dkL * 2057 + dkK * dkL) % 16777213 == 8038400) then
            dkI_1 = "Stopped short of " .. bfC
        end
        bSs.TeleportStatus = dkI_1
    end)
end
fns.dwb_123.SetAutoLoot = fns.fn3373
fns.dwb_123.SetLootRange = fns.fn4638
fns.dwb_123.SetAutoSoul = fns.fn1411
fns.dwb_123.SetSoulRange = fns.fn5337
fns.dwb_123.InMenuPlace = fns.fn3183
fns.dwb_123.GamemodeNames = fns.fn6356
fns.dwb_123.WorldNames = fns.fn3084
fns.dwb_123.SetQueueModes = fns.fn3849
fns.dwb_123.SetQueueRanked = fns.fn233
fns.dwb_123.SetQueueFill = fns.fn4657
fns.dwb_123.SetAutoQueue = fns.fn2936
fns.dwb_123.SetAutoReady = fns.fn4194
fns.dwb_123.SetStallGuard = fns.fn5944
fns.dwb_123.SetStallTimeout = fns.fn1330
fns.dwb_123.SetAutoReset = fns.fn6657
fns.dwb_123.SetResetPoints = fns.fn1153
fns.dwb_123.SetResetCount = fns.fn176
fns.dwb_123.SetAutoOpenChest = fns.fn3967
fns.dwb_123.SetOpenLimit = fns.fn464
fns.dwb_123.SetLeaveFloor = fns.fn6910
fns.dwb_123.SetLeaveDelay = fns.fn5390
fns.dwb_123.SetAutoLeave = fns.fn7615
fns.dwb_123.CancelQueue = fns.fn2283
fns.dwb_123.SetWorld = fns.fn512
fns.dwb_123.SetPrivateOwner = fns.fn231
fns.dwb_123.SetWorldDelay = fns.fn7732
fns.dwb_123.SetAutoWorld = fns.fn48
fns.dwb_123.JoinWorld = fns.fn3393
fns.dwb_123.EquipWeapon = fns.fn6757
fns.dwb_123.CodeCooldown = fns.fn2484
fns.dwb_123.RedeemAllCodes = function(bhx)
    if bSs.CodeBusy then
        if bQG(bhx) then
            bhx("Already redeeming codes")
        end
        return false
    end
    local dme = fns.dwb_123.CodeCooldown()
    if dme > 0 then
        local dmf = string.format("Codes on cooldown, %ds left", dme)
        bSs.CodeStatus = dmf
        if bQG(bhx) then
            bhx(dmf)
        end
        return false
    end
    bSs.CodeBusy = true
    task.delay(0, function()
        local dmc_1
        local dmb_1
        local dma_1
        local dl9_1
        bSs.CodeStatus = "Redeeming codes"
        dl9_1, dmb_1, dmc_1, dma_1 = pcall(bTM)
        if not dl9_1 then
            dmb_1, dmc_1, dma_1 = 0, 0, 0
        end
        if dmb_1 + dmc_1 + dma_1 == 0 then
            bSs.CodeStatus = "No codes available"
        else
            bSs.CodeStatus = string.format("Redeemed %d, failed %d, skipped %d", dmb_1, dmc_1, dma_1)
        end
        bSs.CodeReadyAt = os.clock() + fns.dwb_11.CODE_COOLDOWN
        bSs.CodeBusy = false
        if bQG(bhx) then
            bhx(bSs.CodeStatus)
        end
    end)
    return true
end
fns.dwb_123.AbandonQuest = fns.fn6486
fns.dwb_123.MobNames = fns.fn2861
fns.dwb_123.BossNames = fns.fn5069
bSs.WeaponCache = { "Combat" }
bSs.SkillChoiceCache = {}
bSs.ClanSkillChoiceCache = {}
bSs.ClanHoldCache = {}
bSs.QuestChoiceCache = {}
bSs.ZoneCache = bTE.sortedKeys(bTE.zonePoints())
bSs.NpcCache = bTE.sortedKeys(bTE.npcPoints())
bSs.PotionCache = fns.dwb_11.POTION_NAMES
bSs.ShopCache = fns.fn5969()
fns.dwb_123.RefreshSellNames()
bSs.InMenuPlace = bQe.inMenuPlace()
bSs.GamemodeCache = fns.dwb_92.gamemodeRows()
bSs.WorldCache = fns.dwb_92.worldRows()
bSs.SkillNodeCache = {
    "Additional Damage",
    "Block Points",
    "Block Regen",
    "Double Jump",
    "Health Regen Speed",
    "Max Health",
    "Max Stamina",
    "Stamina Regen Speed",
    "Wall Climb"
}
fns.dwb_123.SkillNodes = fns.fn5554
fns.dwb_123.RefreshSkillNodes = fns.fn3002
fns.dwb_123.PlayerSummary = fns.fn2346
fns.dwb_123.QuestSummary = fns.fn3200
fns.dwb_123.BreathingCost = fns.fn5480
bSs.Summary = { level = 1, exp = 0, goal = 0, wen = 0, race = "-", points = 0 }
bSs.Quest = { quest = "None", progress = "-" }
bSs.CostText = "None"
fns.dwb_121 = task.delay(0, fns.fn7151)
fns.fn3695()
fns.dwb_156_3()
fns.dwb_123.RefreshSkillNodes()
fns.dwb_123.RefreshWeapons()
fns.dwb_123.RefreshSkillChoices()
fns.dwb_123.RefreshClanSkillChoices()
fns.dwb_123.RefreshQuestChoices()
task.delay(0, fns.fn1598)
fns.dwb_123.Track(fns.fn3112)
function fns.dwb_164_22()
    local dva
    local dvc
    local connection
    local dvb
    local du7
    local Toggles
    local du1
    Toggles = nil
    du1 = nil
    connection = nil
    du7 = nil
    dva = nil
    dvb = nil
    dvc = nil
    local Window, duY, duZ, du_, Button, du4, du5, du6, Options, du9
    local dve_1
    local dvd_1
    dva = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
    du1 = "https://discord.gg/synapsex"
    local function dvf(bjb)
        local dnA_1, dnA_2
        local dnz_1, dnz_3, dnz_4
        local dny = "no response"
        local dnF = 1
        while dnF <= 4 do
            local dnG = dnF
            dnz_1, dnA_1 = pcall(game.HttpGet, game, dva .. bjb)
            if not dnz_1 then
                dny = tostring(dnA_1)
            else
                local dnz_2 = dnA_1 == ""
                local dnB = type(dnA_1) ~= "string" or dnz_2
                local dnB_1
                if dnB then
                    dny = "empty response"
                else
                    dnB_1, dnz_3 = loadstring(dnA_1)
                    if not dnB_1 then
                        dny = "does not compile (" .. tostring(dnz_3) .. ")"
                    else
                        dnz_4, dnA_2 = pcall(dnB_1)
                        if not dnz_4 then
                            dny = tostring(dnA_2)
                        else
                            if not (type(dnA_2) ~= "table") then
                                return dnA_2
                            end
                            dny = "returned " .. typeof(dnA_2) .. " instead of a table"
                        end
                    end
                end
            end
            if dnG < 4 then
                task.wait(dnG)
            end
            dnF += 1
        end
        error(string.format("[Ouroboros] could not load %s: %s", bjb, dny), 0)
    end
    duY = dvf("Library.lua")
    du6 = dvf("addons/ThemeManager.lua")
    du4 = dvf("addons/SaveManager.lua")
    Toggles = duY.Toggles
    Options = duY.Options
    bTD(fns.dwb_123, duY)
    dvb = function(bjs, bjt)
        local dnI = (bQG(setclipboard)) and setclipboard
        local dnJ = dnI
        if not dnJ then
            local dnI_1 = (bQG(toclipboard)) and toclipboard
            dnJ = dnI_1 or nil
        end
        local dnI_2 = dnJ
        if not dnI_2 then
            duY:Notify("Clipboard is unavailable")
            return
        end
        local dnJ_1 = pcall(dnI_2, bjs)
        if dnJ_1 then
            duY:Notify(bjt)
        else
            duY:Notify("Failed to copy")
        end
    end
    Window = duY:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = du1, Copyable = true }, "|", "Ouwland", "|", "v0.127" },
        Icon = 132608042600488,
        Size = UDim2.fromOffset(860, 660),
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    fns.dwb_92.fps = 0
    du5, du_ = 0, 0
    connection = fns.dwb_51.RunService.RenderStepped:Connect(function(bjI)
        du5 += 1
        du_ += bjI
        if du_ >= 0.5 then
            fns.dwb_92.fps = math.floor(du5 / du_ + 0.5)
            du5, du_ = 0, 0
        end
    end)
    fns.dwb_123.Track(function()
        connection:Disconnect()
    end)
    fns.dwb_92.executor = "Unknown"
    for i, v in ipairs({ identifyexecutor, getexecutorname }) do
        if bQG(v) then
            dvd_1, dve_1 = pcall(v)
            local dvf_1 = dvd_1 and type(dve_1) == "string"
            if dvf_1 and dve_1 ~= "" then
                fns.dwb_92.executor = dve_1
                break
            end
        end
    end
    fns.dwb_92.watermark = duY:AddWatermark({
        { Text = "Slayers 2", Icon = "swords", Accent = true },
        { Text = fns.dwb_92.executor, Icon = "terminal" },
        {
            Icon = "wifi",
            Text = function()
                local dnO_1
                local dnN_1
                dnN_1, dnO_1 = pcall(function()
                    return game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue()
                end)
                local dnP = not dnN_1 or type(dnO_1) ~= "number"
                if dnP or dnO_1 ~= dnO_1 then
                    return "-- ms"
                end
                return string.format("%d ms", math.floor(dnO_1 + 0.5))
            end
        },
        {
            Icon = "gauge",
            Text = function()
                return string.format("%d FPS", fns.dwb_92.fps)
            end
        }
    })
    fns.dwb_92.watermark:SetVisible(true)
    fns.dwb_123.Track(function()
        if fns.dwb_92.watermark then
            pcall(function()
                fns.dwb_92.watermark:Destroy()
            end)
            fns.dwb_92.watermark = nil
        end
    end)
    duZ = {
        [1] = Window:AddTab("Join", "door-open"),
        [2] = Window:AddTab("Farming", "swords"),
        [3] = Window:AddTab("Combat", "sword"),
        [4] = Window:AddTab("Priority", "list-ordered"),
        [5] = Window:AddTab("Player", "person-standing"),
        [6] = Window:AddTab("ESP", "eye"),
        [7] = Window:AddTab("Webhook", "webhook"),
        [8] = Window:AddTab("Settings", "settings")
    }
    du7 = function(bj0)
        bj0:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = du1,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        return bj0
    end
    local function dvd_3(bj3)
        return du7(bj3:AddLeftGroupbox("Discord", "message-circle"))
    end
    dvd_3(duZ[2])
    dvd_3(duZ[5])
    dvd_3(duZ[3])
    dvd_3(duZ[8])
    du9 = {}
    local MatchmakingGroup = duZ[1]:AddLeftGroupbox("Matchmaking", "swords")
    du9[48] = MatchmakingGroup:AddLabel(bR8.status(bSs.QueueStatus), true)
    MatchmakingGroup:AddDropdown("QueueModes", {
        Text = "Gamemodes",
        Tooltip = "Queues for each picked mode in turn. Locked modes are skipped",
        Values = fns.dwb_123.GamemodeNames(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(bj9)
            fns.dwb_123.SetQueueModes(bj9)
        end
    })
    MatchmakingGroup:AddToggle("QueueRanked", {
        Text = "Ranked",
        Tooltip = "Queue ranked when the mode allows it. Zenith is always ranked",
        Default = false,
        Callback = function(bkb)
            fns.dwb_123.SetQueueRanked(bkb)
        end
    })
    MatchmakingGroup:AddToggle("QueueFill", {
        Text = "Fill",
        Tooltip = "Let the server fill empty slots with other players",
        Default = false,
        Callback = function(bkd)
            fns.dwb_123.SetQueueFill(bkd)
        end
    })
    MatchmakingGroup:AddToggle("AutoQueue", {
        Text = "Auto Queue",
        Tooltip = "Requeue automatically if a queue ends without a match",
        Default = false,
        Callback = function(bkf)
            fns.dwb_123.SetAutoQueue(bkf)
        end
    })
    MatchmakingGroup:AddButton({
        Text = "Leave Queue",
        Tooltip = "Cancel the current queue",
        Func = function()
            fns.dwb_123.CancelQueue()
        end
    })
    local WorldGroup2 = duZ[1]:AddRightGroupbox("World", "globe")
    du9[50] = WorldGroup2:AddLabel(bR8.status(bSs.WorldStatus), true)
    WorldGroup2:AddDropdown("WorldTarget", {
        Text = "World",
        Tooltip = "World to join",
        Values = fns.dwb_123.WorldNames(),
        Default = 1,
        AllowNull = true,
        Callback = function(bkj)
            fns.dwb_123.SetWorld(bkj)
        end
    })
    fns.dwb_123.SetWorld(Options.WorldTarget.Value)
    WorldGroup2:AddInput("PrivateOwner", {
        Text = "Private Server Owner",
        Tooltip = "Private server owner's username. Leave empty for a public server",
        Default = "",
        Placeholder = "Public servers",
        Callback = function(bkl)
            fns.dwb_123.SetPrivateOwner(bkl)
        end
    })
    fns.dwb_123.SetPrivateOwner(Options.PrivateOwner.Value)
    WorldGroup2:AddToggle("AutoWorld", {
        Text = "Auto Join World",
        Tooltip = "Keep retrying until the teleport goes through",
        Default = false,
        Callback = function(bkn)
            fns.dwb_123.SetAutoWorld(bkn)
        end
    })
    local dve_2 = WorldGroup2:AddDependencyBox()
    dve_2:AddSlider("WorldDelay", {
        Text = "Join Delay",
        Tooltip = "Wait before each join attempt",
        Default = 4,
        Min = 0,
        Max = 60,
        Rounding = 0,
        Suffix = "s",
        Callback = function(bkq)
            fns.dwb_123.SetWorldDelay(bkq)
        end
    })
    dve_2:SetupDependencies({ { Toggles.AutoWorld, true } })
    fns.dwb_123.SetWorldDelay(Options.WorldDelay.Value)
    WorldGroup2:AddButton({
        Text = "Join World",
        Tooltip = "Teleport once",
        Func = function()
            fns.dwb_123.JoinWorld()
        end
    })
    du7(duZ[1]:AddRightGroupbox("Discord", "message-circle"))
    Button = nil
    dvc = false
    fns.dwb_123.OnFarmClaim = function(bkv)
        if dvc then
            return
        end
        dvc = true
        for i, v in ipairs({
            "AutoLevel",
            "AutoQuest",
            "AutoDungeon",
            "AutoMob",
            "AutoBoss",
            "AutoBossHunt",
            "AutoDemon",
            "AutoChest",
            "AutoBreathing"
        }) do
            if v ~= bkv and Toggles[v] and Toggles[v].Value then
                Toggles[v]:SetValue(false)
            end
        end
        dvc = false
    end
    local function dvd_6()
        if fns.dwb_123.InDungeon() then
            local DungeonRunGroup = duZ[2]:AddLeftGroupbox("Dungeon Run", "swords")
            DungeonRunGroup:AddLabel(bR8.field("Run", fns.dwb_123.DungeonName()), true)
            du9[28] = DungeonRunGroup:AddLabel(bR8.status(bSs.DungeonStatus), true)
            du9[29] = DungeonRunGroup:AddLabel(bR8.status(bSs.ReadyStatus), true)
            DungeonRunGroup:AddToggle("AutoReadyUp", {
                Text = "Auto Ready Up",
                Tooltip = "Ready up at the lobby ring automatically",
                Default = false,
                Callback = function(bkT)
                    fns.dwb_123.SetAutoReady(bkT)
                end
            })
            du9[30] = DungeonRunGroup:AddLabel(bR8.status(bSs.ResetStatus), true)
            DungeonRunGroup:AddToggle("AutoResetPoints", {
                Text = "Auto Reset At Points",
                Tooltip = "Spend hearts to end the run once the point goal is hit",
                Default = false,
                Callback = function(bkV)
                    fns.dwb_123.SetAutoReset(bkV)
                end
            })
            local dod_1 = DungeonRunGroup:AddDependencyBox()
            dod_1:AddSlider("ResetPoints", {
                Text = "Points Before Reset",
                Tooltip = "Run points needed before spending a heart. The reward chest costs 30,000",
                Default = 30000,
                Min = 0,
                Max = 200000,
                Rounding = 0,
                Suffix = " points",
                Callback = function(bkY)
                    fns.dwb_123.SetResetPoints(bkY)
                end
            })
            dod_1:AddSlider("ResetCount", {
                Text = "Resets",
                Tooltip = "Hearts to spend. All 3 ends the run",
                Default = 3,
                Min = 1,
                Max = 3,
                Rounding = 0,
                Callback = function(bk_)
                    fns.dwb_123.SetResetCount(bk_)
                end
            })
            dod_1:SetupDependencies({ { Toggles.AutoResetPoints, true } })
            du9[31] = DungeonRunGroup:AddLabel(bR8.status(bSs.StallStatus), true)
            DungeonRunGroup:AddToggle("StallGuard", {
                Text = "End Run If Stuck",
                Tooltip = "End the run if points, floor and kills stop moving for too long",
                Default = false,
                Callback = function(bk2)
                    fns.dwb_123.SetStallGuard(bk2)
                end
            })
            local dod_2 = DungeonRunGroup:AddDependencyBox()
            dod_2:AddSlider("StallTimeout", {
                Text = "Stuck After",
                Tooltip = "How long with no progress before ending the run",
                Default = 180,
                Min = 30,
                Max = 900,
                Rounding = 0,
                Suffix = "s",
                Callback = function(bk5)
                    fns.dwb_123.SetStallTimeout(bk5)
                end
            })
            dod_2:SetupDependencies({ { Toggles.StallGuard, true } })
            du9[32] = DungeonRunGroup:AddLabel(bR8.status(bSs.OpenStatus), true)
            DungeonRunGroup:AddToggle("AutoOpenChest", {
                Text = "Auto Open Chest",
                Tooltip = "Open the reward chest and grab its loot before leaving",
                Default = false,
                Callback = function(bk7)
                    fns.dwb_123.SetAutoOpenChest(bk7)
                end
            })
            local dod_3 = DungeonRunGroup:AddDependencyBox()
            dod_3:AddSlider("OpenLimit", {
                Text = "Open X Times",
                Tooltip = "Times to open the chest per run. 0 = as many as you can afford",
                Default = 0,
                Min = 0,
                Max = 25,
                Rounding = 0,
                Callback = function(bla)
                    fns.dwb_123.SetOpenLimit(bla)
                end
            })
            dod_3:SetupDependencies({ { Toggles.AutoOpenChest, true } })
            du9[33] = DungeonRunGroup:AddLabel(bR8.status(bSs.LeaveStatus), true)
            DungeonRunGroup:AddToggle("AutoLeaveLobby", {
                Text = "Auto Leave",
                Tooltip = "Leave through the lobby ring automatically",
                Default = false,
                Callback = function(blc)
                    fns.dwb_123.SetAutoLeave(blc)
                end
            })
            local dod_4 = DungeonRunGroup:AddDependencyBox()
            dod_4:AddSlider("LeaveDelay", {
                Text = "Leave Delay",
                Tooltip = "Delay before leaving. 0 = leave right away",
                Default = 0,
                Min = 0,
                Max = 300,
                Rounding = 0,
                Suffix = "s",
                Callback = function(blf)
                    fns.dwb_123.SetLeaveDelay(blf)
                end
            })
            dod_4:AddSlider("LeaveFloor", {
                Text = "Leave At Floor",
                Tooltip = "End the run at this floor. 0 = only when the run ends itself",
                Default = 0,
                Min = 0,
                Max = 100,
                Rounding = 0,
                Callback = function(blh)
                    fns.dwb_123.SetLeaveFloor(blh)
                end
            })
            dod_4:SetupDependencies({ { Toggles.AutoLeaveLobby, true } })
            DungeonRunGroup:AddToggle("AutoDungeon", {
                Text = "Auto Farm Nearby Enemies",
                Tooltip = "Fight the closest wave enemy",
                Default = false,
                Callback = function(blj)
                    fns.dwb_123.SetAutoDungeon(blj)
                end
            })
            DungeonRunGroup:AddSlider("DungeonRange", {
                Text = "Search Range",
                Tooltip = "Search range. 0 = whole floor",
                Default = 250,
                Min = 0,
                Max = 2000,
                Rounding = 0,
                Suffix = " studs",
                Callback = function(bll)
                    fns.dwb_123.SetDungeonRange(bll)
                end
            })
            du9[34] = DungeonRunGroup:AddLabel(bR8.status(bSs.BringStatus), true)
            DungeonRunGroup:AddToggle("AutoBringEnemies", {
                Text = "Bring Enemies",
                Tooltip = "Pull wave enemies to you instead of chasing them",
                Default = false,
                Callback = function(bln)
                    fns.dwb_123.SetAutoBringEnemies(bln)
                end
            })
            DungeonRunGroup:AddSlider("BringRange", {
                Text = "Bring Range",
                Tooltip = "Pull range. 0 = whole floor",
                Default = 2000,
                Min = 0,
                Max = 5000,
                Rounding = 0,
                Suffix = " studs",
                Callback = function(blp)
                    fns.dwb_123.SetBringRange(blp)
                end
            })
            DungeonRunGroup:AddLabel('<font color="#7fd88f">Bring Enemies is hit or miss. The game decides which enemies your client owns, so it works on some runs and not others. Keep it on if it helps you, turn it off if it doesn\'t.</font>', true)
            DungeonRunGroup:AddDivider()
            du9[35] = DungeonRunGroup:AddLabel(bR8.status(bSs.WaveStatus), true)
            DungeonRunGroup:AddToggle("AutoSkipWaves", {
                Text = "Auto Skip Waves",
                Tooltip = "Vote to skip every wave break",
                Default = false,
                Callback = function(blr)
                    fns.dwb_123.SetAutoSkipWaves(blr)
                end
            })
            DungeonRunGroup:AddDivider()
            du9[36] = DungeonRunGroup:AddLabel(bR8.status(bSs.CardStatus), true)
            DungeonRunGroup:AddToggle("AutoCards", {
                Text = "Auto Pick Cards",
                Tooltip = "Pick the best card from your list. Skips if none are offered",
                Default = false,
                Callback = function(blt)
                    fns.dwb_123.SetAutoCards(blt)
                end
            })
            DungeonRunGroup:AddToggle("BlockCards", {
                Text = "Block Cards",
                Tooltip = "Never pick these cards",
                Default = true,
                Callback = function(blv)
                    fns.dwb_123.SetBlockCards(blv)
                end
            })
            local dod_5 = DungeonRunGroup:AddDependencyBox()
            dod_5:AddDropdown("BlockedCards", {
                Text = "Blocked Cards",
                Tooltip = "Cards and events to avoid. Includes Bare Hands and skill-blocking events",
                Values = fns.dwb_123.BlockableNames(),
                Default = { [fns.dwb_11.BARE_HANDS_CARD] = true },
                Multi = true,
                AllowNull = true,
                Searchable = true,
                Callback = function(blA)
                    fns.dwb_123.SetCardBlocks(blA)
                end
            })
            dod_5:SetupDependencies({ { Toggles.BlockCards, true } })
            DungeonRunGroup:AddToggle("ForceHealCards", {
                Text = "Force Heal Cards",
                Tooltip = "Take a heal card when your health drops below the threshold",
                Default = false,
                Callback = function(blC)
                    fns.dwb_123.SetForceHealCards(blC)
                end
            })
            DungeonRunGroup:AddSlider("HealBelow", {
                Text = "Force Heal Below",
                Tooltip = "Health % that triggers a heal card. 0 = never, 100 = always",
                Default = 40,
                Min = 0,
                Max = 100,
                Rounding = 0,
                Suffix = "%",
                Callback = function(blE)
                    fns.dwb_123.SetHealBelow(blE)
                end
            })
            DungeonRunGroup:AddDropdown("CardTargets", {
                Text = "Select Cards",
                Values = fns.dwb_123.CardNames(),
                Default = {},
                Multi = true,
                AllowNull = true,
                Searchable = true,
                Callback = function(blG)
                    fns.dwb_123.SetCardSelection(blG)
                end
            })
            local dod_6 = Options.CardTargets and fns.dwb_123.CardNames()
            local dof = dod_6 or {}
            for i, v in ipairs(dof) do
                local dom = v
                local dod_7 = DungeonRunGroup:AddDependencyBox()
                dod_7:AddSlider("CardPriority" .. dom:gsub("%W", ""), {
                    Text = dom .. " Priority",
                    Tooltip = "1 is picked first. Ties go to the rarer card",
                    Default = 5,
                    Min = 1,
                    Max = 10,
                    Rounding = 0,
                    Callback = function(blN)
                        fns.dwb_123.SetCardPriority(dom, blN)
                    end
                })
                dod_7:SetupDependencies({ { Options.CardTargets, dom } })
            end
        else
            local DungeonGroup = duZ[2]:AddLeftGroupbox("Dungeon", "swords")
            DungeonGroup:AddButton({
                Text = "Where Are Dungeons?",
                Tooltip = "Where the dungeon features went",
                Func = function()
                    local dn3 = duY.Dialogues and duY.Dialogues.DungeonHelp
                    local dn4_1 = dn3 and bQG(dn3.Dismiss)
                    if dn4_1 then
                        pcall(function()
                            dn3:Dismiss()
                        end)
                    end
                    Window:AddDialog("DungeonHelp", {
                        Title = "Where Are Dungeons?",
                        Description = "The dungeon features only exist inside a run, so there is nothing to show you out here. Join a dungeon game mode and a Dungeon Run box appears at the top of this tab with the run's own features in it.",
                        AutoDismiss = true,
                        OutsideClickDismiss = true,
                        FooterButtons = { { Id = "Exit", Title = "Exit", Variant = "Primary" } }
                    })
                end
            })
        end
        local AutoFarmingGroup = duZ[2]:AddLeftGroupbox("Auto Farming", "swords")
        AutoFarmingGroup:AddToggle("AutoLevel", {
            Text = "Auto Level",
            Default = false,
            Callback = function(blR)
                fns.dwb_123.SetAutoLevel(blR)
            end
        })
        local dod_8 = AutoFarmingGroup:AddDependencyBox()
        du9[1] = dod_8:AddLabel(bR8.status(bSs.LevelStatus), true)
        dod_8:AddToggle("LevelDropForeign", {
            Text = "Abandon Non Combat Quests",
            Default = false,
            Callback = function(blU)
                fns.dwb_123.SetLevelDropForeign(blU)
            end
        })
        dod_8:SetupDependencies({ { Toggles.AutoLevel, true } })
        AutoFarmingGroup:AddToggle("AutoQuest", {
            Text = "Auto Farm Quests",
            Tooltip = "Farm the picked quests on repeat",
            Default = false,
            Callback = function(blW)
                fns.dwb_123.SetAutoQuest(blW)
            end
        })
        local dod_9 = AutoFarmingGroup:AddDependencyBox()
        du9[2] = dod_9:AddLabel(bR8.status(bSs.QuestStatus), true)
        dod_9:AddDropdown("QuestTargets", {
            Text = "Select Quests",
            Tooltip = "Quests with kill tasks this can handle",
            Values = fns.dwb_123.QuestChoices(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(blZ)
                fns.dwb_123.SetQuestSelection(blZ)
            end
        })
        dod_9:AddButton({
            Text = "Refresh Quests",
            Func = function()
                fns.dwb_123.RefreshQuestChoices()
                task.wait(0.4)
                pcall(function()
                    if Options.QuestTargets then
                        Options.QuestTargets:SetValues(fns.dwb_123.QuestChoices())
                    end
                end)
                duY:Notify("Refreshed quest list")
            end
        }):AddButton({
            Text = "Abandon Quest",
            Func = function()
                fns.dwb_123.AbandonQuest()
            end
        })
        dod_9:SetupDependencies({ { Toggles.AutoQuest, true } })
        AutoFarmingGroup:AddToggle("AutoMob", {
            Text = "Auto Farm Mob",
            Default = false,
            Callback = function(bl6)
                fns.dwb_123.SetAutoMob(bl6)
            end
        })
        local dod_10 = AutoFarmingGroup:AddDependencyBox()
        du9[3] = dod_10:AddLabel(bR8.status(bSs.MobStatus), true)
        dod_10:AddDropdown("MobTarget", {
            Text = "Select Mob",
            Values = fns.dwb_123.MobNames(),
            Default = 1,
            AllowNull = true,
            Searchable = true,
            Callback = function(bl9)
                fns.dwb_123.SetMobTarget(bl9)
            end
        })
        dod_10:SetupDependencies({ { Toggles.AutoMob, true } })
        AutoFarmingGroup:AddToggle("AutoBoss", {
            Text = "Auto Boss",
            Default = false,
            Callback = function(bmb)
                fns.dwb_123.SetAutoBoss(bmb)
            end
        })
        local dod_11 = AutoFarmingGroup:AddDependencyBox()
        du9[4] = dod_11:AddLabel(bR8.status(bSs.BossStatus), true)
        dod_11:AddDropdown("BossTargets", {
            Text = "Select Bosses",
            Values = fns.dwb_123.BossNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bme)
                fns.dwb_123.SetBossSelection(bme)
            end
        })
        dod_11:SetupDependencies({ { Toggles.AutoBoss, true } })
        AutoFarmingGroup:AddToggle("AutoBossHunt", {
            Text = "Auto Boss Hunts",
            Tooltip = "Take boss hunts from the crow board and kill the bosses",
            Default = false,
            Callback = function(bmg)
                fns.dwb_123.SetAutoBossHunt(bmg)
            end
        })
        local dod_12 = AutoFarmingGroup:AddDependencyBox()
        du9[5] = dod_12:AddLabel(bR8.status(bSs.HuntStatus), true)
        dod_12:AddDropdown("HuntTiers", {
            Text = "Hunt Tiers",
            Tooltip = "Hunts to take. Empty = all of them",
            Values = fns.dwb_11.HUNT_TIERS,
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bmj)
                fns.dwb_123.SetHuntTiers(bmj)
            end
        })
        dod_12:AddToggle("HuntDropForeign", {
            Text = "Abandon Quest For A Hunt",
            Tooltip = "Drop your current quest to free the slot for a hunt",
            Default = false,
            Callback = function(bml)
                fns.dwb_123.SetHuntDropForeign(bml)
            end
        })
        dod_12:SetupDependencies({ { Toggles.AutoBossHunt, true } })
        AutoFarmingGroup:AddToggle("AutoDelivery", {
            Text = "Auto Delivery Quest",
            Tooltip = "Do Niko's delivery run on repeat",
            Default = false,
            Callback = function(bmn)
                fns.dwb_123.SetAutoDelivery(bmn)
            end
        })
        local dod_13 = AutoFarmingGroup:AddDependencyBox()
        du9[6] = dod_13:AddLabel(bR8.status(bSs.DeliveryStatus), true)
        dod_13:SetupDependencies({ { Toggles.AutoDelivery, true } })
        AutoFarmingGroup:AddToggle("AnglerQuest", {
            Text = "Auto Angler Runo Quest",
            Tooltip = "Needs Auto Fish. Does Angler Runo's fish quest between casts",
            Default = false,
            Callback = function(bmq)
                fns.dwb_123.SetAnglerQuest(bmq)
            end
        })
        local dod_14 = AutoFarmingGroup:AddDependencyBox()
        du9[7] = dod_14:AddLabel(bR8.status(bSs.AnglerStatus), true)
        dod_14:SetupDependencies({ { Toggles.AnglerQuest, true } })
        AutoFarmingGroup:AddToggle("AutoChest", {
            Text = "Auto Sealed Cache",
            Default = false,
            Callback = function(bmt)
                fns.dwb_123.SetAutoChest(bmt)
            end
        })
        local dod_15 = AutoFarmingGroup:AddDependencyBox()
        du9[8] = dod_15:AddLabel(bR8.status(bSs.ChestStatus), true)
        dod_15:AddDropdown("ChestTiers", {
            Text = "Sealed Cache Tiers",
            Values = fns.dwb_11.CHEST_TIERS,
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bmw)
                fns.dwb_123.SetChestTiers(bmw)
            end
        })
        dod_15:AddSlider("CacheLootRange", {
            Text = "Loot Pickup Range",
            Tooltip = "Drops within this range get picked up as you pass them",
            Default = 12,
            Min = 1,
            Max = 100,
            Rounding = 0,
            Suffix = " studs",
            Callback = function(bmy)
                fns.dwb_123.SetCacheLootRange(bmy)
            end
        })
        dod_15:AddToggle("ChestInstantKill", {
            Text = "Instant Kill Cache Guards",
            Tooltip = "Instantly kill the guards around a locked cache",
            Default = false,
            Callback = function(bmA)
                fns.dwb_123.SetChestInstantKill(bmA)
            end
        })
        dod_15:SetupDependencies({ { Toggles.AutoChest, true } })
        local dod_16 = AutoFarmingGroup:AddDependencyBox()
        dod_16:AddSlider("ChestKillThreshold", {
            Text = "Damage Before Kill",
            Tooltip = "Health % to take off before the kill. 0% = kill at full health",
            Default = 10,
            Min = 0,
            Max = 100,
            Rounding = 0,
            Suffix = "%",
            Callback = function(bmD)
                fns.dwb_123.SetChestKillThreshold(bmD)
            end
        })
        dod_16:SetupDependencies({ { Toggles.AutoChest, true }, { Toggles.ChestInstantKill, true } })
        local dod_17 = AutoFarmingGroup:AddDependencyBox()
        dod_17:AddToggle("CacheHop", {
            Text = "Server Hop After Caches",
            Tooltip = "Hop to another server after looting this many caches. Needs auto-execute and an autoload config to keep going",
            Default = false,
            Callback = function(bmG)
                fns.dwb_123.SetCacheHop(bmG)
            end
        })
        dod_17:SetupDependencies({ { Toggles.AutoChest, true } })
        local dod_18 = AutoFarmingGroup:AddDependencyBox()
        dod_18:AddSlider("CacheHopCount", {
            Text = "Caches Before Hop",
            Default = 3,
            Min = 1,
            Max = 25,
            Rounding = 0,
            Callback = function(bmJ)
                fns.dwb_123.SetCacheHopCount(bmJ)
            end
        })
        dod_18:AddDropdown("CacheHopOrder", {
            Text = "Server Priority",
            Tooltip = "Which server to hop to",
            Values = fns.dwb_11.HOP_ORDERS,
            Default = 1,
            Callback = function(bmL)
                fns.dwb_123.SetCacheHopOrder(bmL)
            end
        })
        dod_18:AddToggle("CacheHopEmpty", {
            Text = "Hop When No Caches Left",
            Tooltip = "Hop early if no caches are left",
            Default = true,
            Callback = function(bmN)
                fns.dwb_123.SetCacheHopEmpty(bmN)
            end
        })
        dod_18:AddSlider("CacheHopScans", {
            Text = "Scans Before Hop",
            Tooltip = "Empty scans in a row before hopping",
            Default = 3,
            Min = 1,
            Max = 10,
            Rounding = 0,
            Callback = function(bmP)
                fns.dwb_123.SetCacheHopScans(bmP)
            end
        })
        dod_18:SetupDependencies({ { Toggles.AutoChest, true }, { Toggles.CacheHop, true } })
        AutoFarmingGroup:AddToggle("AutoLoot", {
            Text = "Auto Loot",
            Tooltip = "Pick up drops and boss chests nearby",
            Default = false,
            Callback = function(bmR)
                fns.dwb_123.SetAutoLoot(bmR)
            end
        })
        local dod_19 = AutoFarmingGroup:AddDependencyBox()
        du9[9] = dod_19:AddLabel(bR8.status(bSs.LootStatus), true)
        dod_19:AddSlider("LootRange", {
            Text = "Pickup Range",
            Tooltip = "Max travel distance. 0 = any distance",
            Default = 150,
            Min = 0,
            Max = 2000,
            Rounding = 0,
            Suffix = " studs",
            Callback = function(bmU)
                fns.dwb_123.SetLootRange(bmU)
            end
        })
        dod_19:SetupDependencies({ { Toggles.AutoLoot, true } })
        AutoFarmingGroup:AddToggle("AutoSoul", {
            Text = "Auto Claim Souls",
            Tooltip = "Pick up Weak, Strong and Brave Souls",
            Default = false,
            Callback = function(bmW)
                fns.dwb_123.SetAutoSoul(bmW)
            end
        })
        local dod_20 = AutoFarmingGroup:AddDependencyBox()
        du9[10] = dod_20:AddLabel(bR8.status(bSs.SoulStatus), true)
        dod_20:AddSlider("SoulRange", {
            Text = "Collect Range",
            Tooltip = "Max travel distance. 0 = any distance",
            Default = 250,
            Min = 0,
            Max = 2000,
            Rounding = 0,
            Suffix = " studs",
            Callback = function(bmZ)
                fns.dwb_123.SetSoulRange(bmZ)
            end
        })
        dod_20:SetupDependencies({ { Toggles.AutoSoul, true } })
        AutoFarmingGroup:AddToggle("AutoDemon", {
            Text = "Become A Demon",
            Tooltip = "Does the whole Muzan questline for you",
            Default = false,
            Callback = function(bm0)
                fns.dwb_123.SetAutoDemon(bm0)
            end
        })
        local dod_21 = AutoFarmingGroup:AddDependencyBox()
        du9[11] = dod_21:AddLabel(bR8.status(bSs.DemonStatus), true)
        dod_21:AddDropdown("DemonMob", {
            Text = "Reputation Mob",
            Tooltip = "Killed to lower reputation. Mizunoto is fastest",
            Values = fns.dwb_123.MobNames(),
            Default = "Mizunoto",
            Multi = false,
            AllowNull = false,
            Searchable = true,
            Callback = function(bm3)
                fns.dwb_123.SetDemonMob(bm3)
            end
        })
        dod_21:AddToggle("DemonDrink", {
            Text = "Drink Muzan's Blood",
            Tooltip = "Off stops at the flask. Becoming a demon is permanent",
            Default = true,
            Callback = function(bm5)
                fns.dwb_123.SetDemonDrink(bm5)
            end
        })
        dod_21:AddToggle("DemonDropForeign", {
            Text = "Abandon Quest For Muzan",
            Tooltip = "Drop your current quest so Muzan can give his",
            Default = false,
            Callback = function(bm7)
                fns.dwb_123.SetDemonDropForeign(bm7)
            end
        })
        dod_21:SetupDependencies({ { Toggles.AutoDemon, true } })
        AutoFarmingGroup:AddDivider()
        AutoFarmingGroup:AddButton({
            Text = "Refresh Mob and Boss Lists",
            Func = function()
                pcall(function()
                    if Options.MobTarget then
                        Options.MobTarget:SetValues(fns.dwb_123.MobNames())
                    end
                    if Options.WenMob then
                        Options.WenMob:SetValues(fns.dwb_123.MobNames())
                    end
                    if Options.DemonMob then
                        Options.DemonMob:SetValues(fns.dwb_123.MobNames())
                    end
                    if Options.BossTargets then
                        Options.BossTargets:SetValues(fns.dwb_123.BossNames())
                    end
                end)
                duY:Notify("Refreshed target lists")
            end
        })
        local BreathingGroup = duZ[2]:AddLeftGroupbox("Breathing", "wind")
        BreathingGroup:AddToggle("AutoBreathing", {
            Text = "Auto Breathing",
            Default = false,
            Callback = function(bnf)
                fns.dwb_123.SetAutoBreathing(bnf)
            end
        })
        local dod_22 = BreathingGroup:AddDependencyBox()
        du9[12] = dod_22:AddLabel(bR8.status(bSs.BreathStatus), true)
        dod_22:AddDropdown("BreathingChoice", {
            Text = "Select Breathing",
            Values = fns.dwb_11.BREATHINGS,
            AllowNull = true,
            Searchable = true,
            Callback = function(bni)
                fns.dwb_123.SetBreathing(bni)
            end
        })
        dod_22:AddDropdown("WenMob", {
            Text = "Wen Farm Mob",
            Values = fns.dwb_123.MobNames(),
            AllowNull = true,
            Searchable = true,
            Callback = function(bnk)
                fns.dwb_123.SetWenMob(bnk)
            end
        })
        dod_22:SetupDependencies({ { Toggles.AutoBreathing, true } })
        local SkillTreeGroup = duZ[2]:AddLeftGroupbox("Skill Tree", "git-branch")
        SkillTreeGroup:AddToggle("AutoSkillTree", {
            Text = "Auto Skill Tree",
            Default = false,
            Callback = function(bnn)
                fns.dwb_123.SetAutoSkillTree(bnn)
            end
        })
        local dod_23 = SkillTreeGroup:AddDependencyBox()
        du9[13] = dod_23:AddLabel(bR8.status(bSs.SkillStatus), true)
        dod_23:AddToggle("UnlockSkills", {
            Text = "Unlock Skills",
            Default = false,
            Callback = function(bnq)
                fns.dwb_123.SetUnlockSkills(bnq)
            end
        })
        dod_23:AddDropdown("SkillNodes", {
            Text = "Select Nodes",
            Values = fns.dwb_123.SkillNodes(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bns)
                fns.dwb_123.SetSkillNodes(bns)
            end
        })
        dod_23:AddButton({
            Text = "Refresh Nodes",
            Func = function()
                fns.dwb_123.RefreshSkillNodes()
                task.wait(0.4)
                pcall(function()
                    if Options.SkillNodes then
                        Options.SkillNodes:SetValues(fns.dwb_123.SkillNodes())
                    end
                end)
                duY:Notify("Refreshed skill tree nodes")
            end
        })
        dod_23:SetupDependencies({ { Toggles.AutoSkillTree, true } })
        local AutoTrainingGroup = duZ[2]:AddLeftGroupbox("Auto Training", "dumbbell")
        AutoTrainingGroup:AddToggle("AutoTraining", {
            Text = "Auto Training",
            Default = false,
            Tooltip = "Do every training station on a loop",
            Callback = function(bnA)
                fns.dwb_123.SetAutoTraining(bnA)
            end
        })
        local dod_24 = AutoTrainingGroup:AddDependencyBox()
        du9[14] = dod_24:AddLabel(bR8.status(bSs.TrainStatus), true)
        dod_24:AddDropdown("Trainings", {
            Text = "Trainings",
            Values = fns.dwb_123.TrainingNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bnD)
                fns.dwb_123.SetTrainings(bnD)
            end
        })
        dod_24:AddDropdown("TrainingMode", {
            Text = "How To Play Them",
            Values = fns.dwb_123.TrainingModes(),
            Default = 1,
            Tooltip = "Instantly skips the minigame. Play It Out actually plays it",
            Callback = function(bnF)
                fns.dwb_123.SetTrainingMode(bnF)
            end
        })
        dod_24:SetupDependencies({ { Toggles.AutoTraining, true } })
        local FishingGroup = duZ[2]:AddLeftGroupbox("Fishing", "fish")
        FishingGroup:AddToggle("AutoFish", {
            Text = "Auto Fish",
            Default = false,
            Tooltip = "Gets a permit and rod if needed, then fishes and always catches",
            Callback = function(bnI)
                fns.dwb_123.SetAutoFish(bnI)
            end
        })
        local dod_25 = FishingGroup:AddDependencyBox()
        du9[15] = dod_25:AddLabel(bR8.field("Status", bSs.FishStatus), true)
        dod_25:AddDropdown("FishBait", {
            Text = "Bait",
            Values = fns.dwb_123.BaitNames(),
            Default = 1,
            Tooltip = "Bait to use",
            Callback = function(bnL)
                fns.dwb_123.SetFishBait(bnL)
            end
        })
        dod_25:AddToggle("AutoBuyBait", {
            Text = "Auto Buy Bait",
            Default = false,
            Tooltip = "Buy more bait when you run out",
            Callback = function(bnN)
                fns.dwb_123.SetAutoBuyBait(bnN)
            end
        })
        dod_25:AddToggle("ReturnAfterBait", {
            Text = "Return to Position after buying Bait",
            Default = true,
            Tooltip = "Go back to your fishing spot after buying bait",
            Callback = function(bnP)
                fns.dwb_123.SetReturnAfterBait(bnP)
            end
        })
        dod_25:SetupDependencies({ { Toggles.AutoFish, true } })
        FishingGroup:AddToggle("LegendaryRod", {
            Text = "[Beta]Auto Legendary Rod Quest",
            Default = false,
            Tooltip = "Does Isao's whole rod questline. Works without Auto Fish",
            Callback = function(bnR)
                fns.dwb_123.SetLegendaryRod(bnR)
            end
        })
        local dod_26 = FishingGroup:AddDependencyBox()
        du9[16] = dod_26:AddLabel(bR8.status(bSs.RodStatus), true)
        dod_26:SetupDependencies({ { Toggles.LegendaryRod, true } })
        local TowerExpGroup = duZ[2]:AddLeftGroupbox("Tower Exp", "gem")
        TowerExpGroup:AddToggle("AutoBuyExp", {
            Text = "Auto Buy Exp",
            Default = false,
            Tooltip = "Spend run points on 1,000 Exp bundles at the Tower Crystal",
            Callback = function(bnV)
                fns.dwb_123.SetAutoBuyExp(bnV)
            end
        })
        local dod_27 = TowerExpGroup:AddDependencyBox()
        du9[17] = dod_27:AddLabel(bR8.status(bSs.CrystalStatus), true)
        dod_27:AddSlider("ExpBundles", {
            Text = "Bundles Per Trip",
            Default = 99,
            Min = 1,
            Max = 99,
            Rounding = 0,
            Tooltip = "Bundles per purchase. Max 99",
            Callback = function(bnY)
                fns.dwb_123.SetExpBundles(bnY)
            end
        })
        dod_27:AddSlider("PointReserve", {
            Text = "Keep Points",
            Default = 0,
            Min = 0,
            Max = 500000,
            Rounding = 0,
            Tooltip = "Points to keep for the Outfitter and the tower chest",
            Callback = function(bn_)
                fns.dwb_123.SetPointReserve(bn_)
            end
        })
        dod_27:SetupDependencies({ { Toggles.AutoBuyExp, true } })
        TowerExpGroup:AddButton({
            Text = "Buy Now",
            Func = function()
                fns.dwb_123.BuyExpNow()
            end
        })
        local SchematicsGroup = duZ[2]:AddLeftGroupbox("Schematics", "square-pen")
        du9[18] = SchematicsGroup:AddLabel(bR8.status(bSs.SchematicStatus), true)
        SchematicsGroup:AddDropdown("SchematicTargets", {
            Text = "Schematics To Collect",
            Tooltip = "Schematics to collect. Ones you have are skipped",
            Values = fns.dwb_123.SchematicNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bn3)
                fns.dwb_123.SetSchematicTargets(bn3)
            end
        })
        SchematicsGroup:AddToggle("SchematicReturn", {
            Text = "Teleport Back When Done",
            Tooltip = "Teleport back to where you started when done",
            Default = true,
            Callback = function(bn5)
                fns.dwb_123.SetSchematicReturn(bn5)
            end
        })
        SchematicsGroup:AddButton({
            Text = "Collect Schematics",
            Tooltip = "Collect every picked schematic you don't have",
            Func = function()
                duY:Notify(fns.dwb_123.CollectSchematics())
            end
        }):AddButton({
            Text = "Stop",
            Tooltip = "Stops after the current one",
            Func = function()
                duY:Notify(fns.dwb_123.StopSchematics())
            end
        })
        local PlayerInfoGroup = duZ[2]:AddRightGroupbox("Player Info", "user")
        du9[19] = PlayerInfoGroup:AddLabel(bR8.field("Level", "1"), true)
        du9[20] = PlayerInfoGroup:AddLabel(bR8.field("Exp", "0 / 0"), true)
        du9[21] = PlayerInfoGroup:AddLabel(bR8.field("Wen", "0"), true)
        du9[22] = PlayerInfoGroup:AddLabel(bR8.field("Race", "-"), true)
        du9[23] = PlayerInfoGroup:AddLabel(bR8.field("Skill Points", "0"), true)
        du9[24] = PlayerInfoGroup:AddLabel(bR8.field("Run Points", "0"), true)
        local QuestProgressGroup = duZ[2]:AddRightGroupbox("Quest Progress", "scroll-text")
        du9[25] = QuestProgressGroup:AddLabel(bR8.field("Quest", "None"), true)
        du9[26] = QuestProgressGroup:AddLabel(bR8.field("Progress", "-"), true)
        du9[27] = QuestProgressGroup:AddLabel(bR8.field("Breathing Cost", "None"), true)
        local NotificationsGroup = duZ[2]:AddRightGroupbox("Notifications", "bell")
        NotificationsGroup:AddToggle("NotifyBossSpawns", {
            Text = "Boss Spawns",
            Tooltip = "Notify when a picked boss spawns",
            Default = false,
            Callback = function(boe)
                fns.dwb_123.SetNotification("boss", boe)
            end
        })
        local dod_28 = NotificationsGroup:AddDependencyBox()
        dod_28:AddDropdown("NotifyBosses", {
            Text = "Bosses",
            Values = fns.dwb_123.BossNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(boh)
                fns.dwb_123.SetNotifyBosses(boh)
            end
        })
        dod_28:SetupDependencies({ { Toggles.NotifyBossSpawns, true } })
        NotificationsGroup:AddToggle("NotifyMuzan", {
            Text = "Muzan",
            Tooltip = "Notify when Muzan is out and where",
            Default = false,
            Callback = function(boj)
                fns.dwb_123.SetNotification("muzan", boj)
            end
        })
        NotificationsGroup:AddToggle("NotifyMarket", {
            Text = "Black Marketer",
            Tooltip = "Notify when the Black Marketer shows up",
            Default = false,
            Callback = function(bol)
                fns.dwb_123.SetNotification("market", bol)
            end
        })
        NotificationsGroup:AddToggle("NotifyTailor", {
            Text = "Tailor Restocks",
            Tooltip = "Notify when Elara or Lynx restock",
            Default = false,
            Callback = function(bon)
                fns.dwb_123.SetNotification("tailor", bon)
            end
        })
        NotificationsGroup:AddToggle("NotifyHunts", {
            Text = "Boss Hunts",
            Tooltip = "Notify when a new boss hunt is posted",
            Default = false,
            Callback = function(bop)
                fns.dwb_123.SetNotification("hunt", bop)
            end
        })
        NotificationsGroup:AddButton({
            Text = "Teleport to Last Notification",
            Tooltip = "Teleport to the last notification",
            Func = function()
                fns.dwb_123.TeleportToNotification()
            end
        })
    end
    local function dve_3()
        local doy
        doy = nil
        local FarmSettingsGroup = duZ[3]:AddLeftGroupbox("Farm Settings", "move")
        FarmSettingsGroup:AddDropdown("PositionType", {
            Text = "Position Type",
            Tooltip = "Where to stand while fighting",
            Values = fns.dwb_11.POSITION_TYPES,
            Default = 1,
            Searchable = true,
            Callback = function(bow)
                fns.dwb_123.SetPositionType(bow)
            end
        })
        FarmSettingsGroup:AddToggle("LookAtEnemy", {
            Text = "Look At Enemy",
            Tooltip = "Always face the target",
            Default = true,
            Callback = function(boA)
                fns.dwb_123.SetLookAtEnemy(boA)
            end
        })
        FarmSettingsGroup:AddSlider("OffsetX", {
            Text = "Offset X",
            Tooltip = "Left and right. Positive is the target's right",
            Default = 0,
            Min = -50,
            Max = 50,
            Rounding = 1,
            Suffix = " studs",
            Callback = function(boC)
                fns.dwb_123.SetLateralOffset(boC)
            end
        })
        FarmSettingsGroup:AddSlider("OffsetY", {
            Text = "Offset Y",
            Tooltip = "Up and down",
            Default = 0,
            Min = -50,
            Max = 50,
            Rounding = 1,
            Suffix = " studs",
            Callback = function(boE)
                fns.dwb_123.SetHeightOffset(boE)
            end
        })
        FarmSettingsGroup:AddSlider("OffsetZ", {
            Text = "Offset Z",
            Tooltip = "Distance from the target",
            Default = 3,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Suffix = " studs",
            Callback = function(boG)
                fns.dwb_123.SetOffsetDistance(boG)
            end
        })
        FarmSettingsGroup:AddDropdown("MovementMode", {
            Text = "Movement Type",
            Tooltip = "Tween glides, Teleport is instant",
            Values = fns.dwb_11.MOVEMENT_MODES,
            Default = 1,
            Callback = function(boI)
                fns.dwb_123.SetMovementMode(boI)
            end
        })
        local doA = FarmSettingsGroup:AddDependencyBox()
        doA:AddSlider("TweenSpeed", {
            Text = "Tween Speed",
            Tooltip = "Glide speed in studs per second",
            Default = 400,
            Min = 50,
            Max = 1000,
            Rounding = 0,
            Suffix = " studs/s",
            Callback = function(boL)
                fns.dwb_123.SetTweenSpeed(boL)
            end
        })
        doA:SetupDependencies({ { Options.MovementMode, "Tween" } })
        local CombatGroup = duZ[3]:AddRightGroupbox("Combat", "sword")
        CombatGroup:AddDropdown("WeaponChoice", {
            Text = "Select Weapon",
            Tooltip = "Empty = keep what you're holding",
            Values = fns.dwb_123.WeaponNames(),
            AllowNull = true,
            Searchable = true,
            Callback = function(boP)
                fns.dwb_123.SetWeapon(boP)
            end
        })
        CombatGroup:AddButton({
            Text = "Refresh Weapons",
            Func = function()
                fns.dwb_123.RefreshWeapons()
                task.wait(0.4)
                pcall(function()
                    if Options.WeaponChoice then
                        Options.WeaponChoice:SetValues(fns.dwb_123.WeaponNames())
                    end
                end)
                duY:Notify("Refreshed weapons")
            end
        })
        CombatGroup:AddToggle("AutoSkills", {
            Text = "Auto Skills",
            Default = false,
            Callback = function(boX)
                fns.dwb_123.SetAutoSkills(boX)
            end
        })
        local doA_1 = CombatGroup:AddDependencyBox()
        du9[37] = doA_1:AddLabel(bR8.status(bSs.AutoSkillStatus), true)
        doA_1:AddDropdown("SkillChoices", {
            Text = "Select Skills",
            Tooltip = "Empty = use all equipped skills",
            Values = fns.dwb_123.SkillChoices(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bo2)
                fns.dwb_123.SetSkillSelection(bo2)
            end
        })
        local doB = Options.SkillChoices and fns.dwb_123.HoldSkills()
        local doD = doB or {}
        for i, v in ipairs(doD) do
            local doK = v
            local doB_1 = doA_1:AddDependencyBox()
            doB_1:AddSlider(doK.key, {
                Text = doK.name .. " Hold",
                Tooltip = "How long to hold this skill",
                Default = doK.default,
                Min = 0,
                Max = doK.max,
                Rounding = 2,
                Suffix = "s",
                Callback = function(bo8)
                    fns.dwb_123.SetSkillHold(doK.name, bo8)
                end
            })
            doB_1:SetupDependencies({ { Options.SkillChoices, doK.name } })
        end
        doA_1:AddButton({
            Text = "Refresh Skills",
            Func = function()
                fns.dwb_123.RefreshSkillChoices()
                task.wait(0.4)
                pcall(function()
                    if Options.SkillChoices then
                        Options.SkillChoices:SetValues(fns.dwb_123.SkillChoices())
                    end
                end)
                duY:Notify("Refreshed skills")
            end
        })
        doA_1:SetupDependencies({ { Toggles.AutoSkills, true } })
        CombatGroup:AddToggle("AutoClanSkills", {
            Text = "Auto Clan Skills",
            Tooltip = "Use clan skills while your weapon skills are on cooldown",
            Default = false,
            Callback = function(bph)
                fns.dwb_123.SetAutoClanSkills(bph)
            end
        })
        local doA_2 = CombatGroup:AddDependencyBox()
        du9[38] = doA_2:AddLabel(bR8.status(bSs.ClanSkillStatus), true)
        doA_2:AddDropdown("ClanSkillChoices", {
            Text = "Select Clan Skills",
            Tooltip = "Empty = use all clan skills",
            Values = fns.dwb_123.ClanSkillChoices(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bpk)
                fns.dwb_123.SetClanSkillSelection(bpk)
            end
        })
        local doz_2 = Options.ClanSkillChoices and fns.dwb_123.ClanHoldSkills()
        local doC_1 = doz_2 or {}
        for i, v in ipairs(doC_1) do
            local doQ = v
            local doz_3 = doA_2:AddDependencyBox()
            doz_3:AddSlider(doQ.key, {
                Text = doQ.name .. " Hold",
                Tooltip = "How long to hold this clan skill",
                Default = doQ.default,
                Min = 0,
                Max = doQ.max,
                Rounding = 2,
                Suffix = "s",
                Callback = function(bpq)
                    fns.dwb_123.SetSkillHold(doQ.name, bpq)
                end
            })
            doz_3:SetupDependencies({ { Options.ClanSkillChoices, doQ.name } })
        end
        doA_2:AddButton({
            Text = "Refresh Clan Skills",
            Func = function()
                fns.dwb_123.RefreshClanSkillChoices()
                task.wait(0.4)
                pcall(function()
                    if Options.ClanSkillChoices then
                        Options.ClanSkillChoices:SetValues(fns.dwb_123.ClanSkillChoices())
                    end
                end)
                duY:Notify("Refreshed clan skills")
            end
        })
        doA_2:SetupDependencies({ { Toggles.AutoClanSkills, true } })
        local DefenceGroup = duZ[3]:AddRightGroupbox("Defence", "shield")
        DefenceGroup:AddToggle("AutoParry", {
            Text = "Auto Parry V5",
            Tooltip = "Block incoming melee swings automatically",
            Default = false,
            Callback = function(bpz)
                fns.dwb_123.SetAutoParry(bpz)
            end
        })
        local doA_3 = DefenceGroup:AddDependencyBox()
        du9[39] = doA_3:AddLabel(bR8.status(bSs.ParryStatus), true)
        doA_3:AddToggle("ParryNpcs", {
            Text = "Parry Mobs",
            Default = true,
            Callback = function(bpC)
                fns.dwb_123.SetParryNpcs(bpC)
            end
        })
        doA_3:AddToggle("ParryPlayers", {
            Text = "Parry Players",
            Tooltip = "Parry player swings too. Their window is tighter",
            Default = true,
            Callback = function(bpE)
                fns.dwb_123.SetParryPlayers(bpE)
            end
        })
        doA_3:AddToggle("ParryMitigate", {
            Text = "Block When Parry Is Locked Out",
            Tooltip = "Block normally when a parry isn't possible, for half damage",
            Default = true,
            Callback = function(bpG)
                fns.dwb_123.SetParryMitigate(bpG)
            end
        })
        doA_3:AddToggle("ParryHold", {
            Text = "Keep Blocking After A Parry",
            Tooltip = "Keeps blocking after a parry. Stops your skills, so leave it off with Auto Skills",
            Default = false,
            Callback = function(bpI)
                fns.dwb_123.SetParryHold(bpI)
            end
        })
        doA_3:AddDivider()
        doA_3:AddToggle("ParryAuto", {
            Text = "Adaptive Timing",
            Tooltip = "Adjust timing for lag and frame drops",
            Default = true,
            Callback = function(bpK)
                fns.dwb_123.SetParryAuto(bpK)
            end
        })
        doA_3:AddSlider("ParryLead", {
            Text = "Parry Timing",
            Tooltip = "Higher blocks later, lower blocks earlier",
            Default = 0,
            Min = -120,
            Max = 120,
            Rounding = 0,
            Suffix = " ms",
            Callback = function(bpM)
                fns.dwb_123.SetParryLead(bpM)
            end
        })
        doA_3:AddSlider("ParryRadius", {
            Text = "Parry Range",
            Tooltip = "How close an enemy must be to parry it",
            Default = 40,
            Min = 10,
            Max = 150,
            Rounding = 0,
            Suffix = " studs",
            Callback = function(bpO)
                fns.dwb_123.SetParryRadius(bpO)
            end
        })
        doA_3:AddButton({
            Text = "Reset Counters",
            Func = function()
                fns.dwb_123.ResetParryStats()
                duY:Notify("Parry counters reset")
            end
        })
        doA_3:SetupDependencies({ { Toggles.AutoParry, true } })
        local ConsumablesGroup = duZ[3]:AddRightGroupbox("Consumables", "flask-round")
        ConsumablesGroup:AddToggle("AutoPotion", {
            Text = "Auto Potion",
            Default = false,
            Callback = function(bpT)
                fns.dwb_123.SetAutoPotion(bpT)
            end
        })
        local doA_4 = ConsumablesGroup:AddDependencyBox()
        du9[40] = doA_4:AddLabel(bR8.status(bSs.PotionStatus), true)
        doA_4:AddDropdown("PotionChoice", {
            Text = "Select Potion",
            Values = fns.dwb_123.PotionNames(),
            Default = 1,
            AllowNull = true,
            Searchable = true,
            Callback = function(bpW)
                fns.dwb_123.SetPotion(bpW)
            end
        })
        doA_4:AddSlider("DrinkBelow", {
            Text = "Drink Below",
            Default = 40,
            Min = 1,
            Max = 95,
            Rounding = 0,
            Suffix = "%",
            Callback = function(bpY)
                fns.dwb_123.SetDrinkBelow(bpY)
            end
        })
        doA_4:SetupDependencies({ { Toggles.AutoPotion, true } })
        local ShopGroup = duZ[3]:AddRightGroupbox("Shop", "store")
        ShopGroup:AddToggle("AutoBuy", {
            Text = "Auto Buy",
            Default = false,
            Callback = function(bp0)
                fns.dwb_123.SetAutoBuy(bp0)
            end
        })
        local doA_5 = ShopGroup:AddDependencyBox()
        du9[41] = doA_5:AddLabel(bR8.status(bSs.ShopStatus), true)
        doA_5:AddDropdown("ShopItems", {
            Text = "Select Items",
            Values = fns.dwb_123.ShopItemNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bp3)
                fns.dwb_123.SetShopItems(bp3)
            end
        })
        doA_5:AddSlider("KeepAmount", {
            Text = "Keep Amount",
            Default = 1,
            Min = 1,
            Max = 25,
            Rounding = 0,
            Callback = function(bp5)
                fns.dwb_123.SetKeepAmount(bp5)
            end
        })
        doA_5:SetupDependencies({ { Toggles.AutoBuy, true } })
        doy = function(bp8)
            task.spawn(function()
                fns.dwb_123.RefreshSellNames()
                task.wait(0.4)
                pcall(function()
                    local SellItems = Options.SellItems
                    if not SellItems then
                        return
                    end
                    local dor = type(SellItems.Value) == "table" and table.clone(SellItems.Value)
                    local dos = dor or nil
                    local dor_1 = dos
                    SellItems:SetValues(fns.dwb_123.SellItemNames())
                    if dos then
                        dos = next(dor_1) ~= nil
                    end
                    if dos then
                        SellItems:SetValue(dor_1)
                    end
                end)
                if bp8 then
                    duY:Notify("Refreshed sellable items")
                end
            end)
        end
        local SellGroup = duZ[3]:AddRightGroupbox("Sell", "coins")
        SellGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Tooltip = "Sell items on a timer from anywhere",
            Default = false,
            Callback = function(bqn)
                fns.dwb_123.SetAutoSell(bqn)
            end
        })
        local doA_6 = SellGroup:AddDependencyBox()
        du9[42] = doA_6:AddLabel(bR8.status(bSs.SellStatus), true)
        doA_6:AddDropdown("SellMode", {
            Text = "What To Sell",
            Values = fns.dwb_11.SELL_MODES,
            Default = 1,
            Tooltip = "Sell only the picked items, or everything sellable",
            Callback = function(bqq)
                fns.dwb_123.SetSellMode(bqq)
            end
        })
        doA_6:AddDropdown("SellItems", {
            Text = "Select Items",
            Values = fns.dwb_123.SellItemNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Searchable = true,
            Callback = function(bqs)
                fns.dwb_123.SetSellItems(bqs)
            end
        })
        doA_6:AddDropdown("SellRarities", {
            Text = "Only These Rarities",
            Tooltip = "Empty = ignore rarity",
            Values = fns.dwb_123.SellRarityNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(bqu)
                fns.dwb_123.SetSellRarities(bqu)
            end
        })
        doA_6:AddSlider("SellKeep", {
            Text = "Keep Amount",
            Tooltip = "How many of each item to keep",
            Default = 1,
            Min = 0,
            Max = 99,
            Rounding = 0,
            Callback = function(bqw)
                fns.dwb_123.SetSellKeep(bqw)
            end
        })
        doA_6:AddSlider("SellInterval", {
            Text = "Sell Every",
            Default = 20,
            Min = 5,
            Max = 300,
            Rounding = 0,
            Suffix = " sec",
            Callback = function(bqy)
                fns.dwb_123.SetSellInterval(bqy)
            end
        })
        doA_6:SetupDependencies({ { Toggles.AutoSell, true } })
        SellGroup:AddButton({
            Text = "Refresh Item List",
            Func = function()
                doy(true)
            end
        }):AddButton({
            Text = "Sell Now",
            Func = function()
                fns.dwb_123.SellNow()
            end
        })
        doy(false)
    end
    local function dvf_2()
        local bq_
        bq_ = task.spawn(function()
            while not duY.Unloaded do
                task.wait(1)
                if duY.Unloaded then
                    break
                end
                pcall(function()
                    du9[1]:SetText(bR8.status(bSs.LevelStatus))
                    du9[2]:SetText(bR8.status(bSs.QuestStatus))
                    du9[11]:SetText(bR8.status(bSs.DemonStatus))
                    if du9[28] then
                        du9[28]:SetText(bR8.status(bSs.DungeonStatus))
                    end
                    if du9[34] then
                        du9[34]:SetText(bR8.status(bSs.BringStatus))
                    end
                    if du9[36] then
                        du9[36]:SetText(bR8.status(bSs.CardStatus))
                    end
                    if du9[35] then
                        du9[35]:SetText(bR8.status(bSs.WaveStatus))
                    end
                    du9[43]:SetText(bR8.field("Driving", fns.dwb_123.PriorityHolder()))
                    du9[3]:SetText(bR8.status(bSs.MobStatus))
                    du9[4]:SetText(bR8.status(bSs.BossStatus))
                    du9[5]:SetText(bR8.status(bSs.HuntStatus))
                    du9[6]:SetText(bR8.status(bSs.DeliveryStatus))
                    du9[8]:SetText(bR8.status(bSs.ChestStatus))
                    du9[12]:SetText(bR8.status(bSs.BreathStatus))
                    du9[13]:SetText(bR8.status(bSs.SkillStatus))
                    if du9[37] then
                        du9[37]:SetText(bR8.status(bSs.AutoSkillStatus))
                    end
                    if du9[38] then
                        du9[38]:SetText(bR8.status(bSs.ClanSkillStatus))
                    end
                    du9[39]:SetText(bR8.status(bSs.ParryStatus))
                    du9[40]:SetText(bR8.status(bSs.PotionStatus))
                    du9[41]:SetText(bR8.status(bSs.ShopStatus))
                    du9[42]:SetText(bR8.status(bSs.SellStatus))
                    du9[17]:SetText(bR8.status(bSs.CrystalStatus))
                    du9[24]:SetText(bR8.field("Run Points", fns.dwb_123.RunPoints()))
                    if du9[29] then
                        du9[29]:SetText(bR8.status(bSs.ReadyStatus))
                        du9[30]:SetText(bR8.status(bSs.ResetStatus))
                        du9[31]:SetText(bR8.status(bSs.StallStatus))
                        du9[32]:SetText(bR8.status(bSs.OpenStatus))
                        du9[33]:SetText(bR8.status(bSs.LeaveStatus))
                    end
                    du9[9]:SetText(bR8.status(bSs.LootStatus))
                    du9[10]:SetText(bR8.status(bSs.SoulStatus))
                    du9[15]:SetText(bR8.field("Status", bSs.FishStatus))
                    du9[7]:SetText(bR8.status(bSs.AnglerStatus))
                    du9[16]:SetText(bR8.status(bSs.RodStatus))
                    du9[14]:SetText(bR8.status(bSs.TrainStatus))
                    du9[44]:SetText(bR8.status(bSs.TeleportStatus))
                    du9[45]:SetText(bR8.status(bSs.SpawnStatus))
                    du9[46]:SetText(bR8.status(bSs.RespawnStatus))
                    if du9[18] then
                        du9[18]:SetText(bR8.status(bSs.SchematicStatus))
                    end
                    du9[47]:SetText(bR8.status(bSs.CodeStatus))
                    local doR = fns.dwb_123.TakeNotifications()
                    if doR then
                        for i, v in ipairs(doR) do
                            duY:Notify(v, 8)
                        end
                    end
                    if du9[48] then
                        du9[48]:SetText(bR8.status(bSs.QueueStatus))
                        du9[50]:SetText(bR8.status(bSs.WorldStatus))
                    end
                    if Button then
                        local doR_1 = fns.dwb_123.CodeCooldown()
                        if bSs.CodeBusy then
                            Button:SetText("Redeeming...")
                            Button:SetDisabled(true)
                        elseif doR_1 > 0 then
                            Button:SetText(string.format("Redeem All Codes (%ds)", doR_1))
                            Button:SetDisabled(true)
                        else
                            Button:SetText("Redeem All Codes")
                            Button:SetDisabled(false)
                        end
                    end
                    du9[27]:SetText(bR8.field("Breathing Cost", bSs.CostText))
                    local Summary = bSs.Summary
                    du9[19]:SetText(bR8.field("Level", Summary.level))
                    du9[20]:SetText(bR8.field("Exp", string.format("%d / %d", Summary.exp, Summary.goal)))
                    du9[21]:SetText(bR8.field("Wen", Summary.wen))
                    du9[22]:SetText(bR8.field("Race", Summary.race))
                    du9[23]:SetText(bR8.field("Skill Points", Summary.points))
                    local Quest = bSs.Quest
                    du9[25]:SetText(bR8.field("Quest", Quest.quest))
                    du9[26]:SetText(bR8.field("Progress", Quest.progress))
                    if du9[49] then
                        du9[49]:SetText(bR8.status(bSs.PriorityStatus))
                        du9[51]:SetText(bR8.field("Driving", fns.dwb_123.PriorityHolder()))
                        du9[52]()
                    end
                end)
            end
        end)
        fns.dwb_123.Track(function()
            if coroutine.status(bq_) ~= "dead" then
                pcall(task.cancel, bq_)
            end
        end)
    end
    dvd_6()
    dve_3()
    local function dvd_7()
        local dpp, dpq, dpr, dps, dpt, dpu
        local OrderGroup = duZ[4]:AddLeftGroupbox("Order", "list-ordered")
        du9[51] = OrderGroup:AddLabel(bR8.field("Driving", fns.dwb_123.PriorityHolder()), true)
        du9[49] = OrderGroup:AddLabel(bR8.status(bSs.PriorityStatus), true)
        OrderGroup:AddDivider()
        dpp = {}
        for i in ipairs(fns.dwb_123.PriorityRows()) do
            dpp[i] = OrderGroup:AddLabel(bR8.field(tostring(i), "-"), true)
        end
        dps = function(brb)
            local do3 = ""
            if brb.holding then
                do3 = "  <driving>"
            elseif brb.running then
                do3 = "  <on>"
            end
            return bR8.field(string.format("%d.", brb.rank), brb.label .. do3)
        end
        dpr = function()
            for i, v in ipairs(fns.dwb_123.PriorityRows()) do
                if dpp[i] then
                    dpp[i]:SetText(dps(v))
                end
            end
        end
        du9[52] = dpr
        dpu = false
        dpt = function()
            local dpc = Options.PriorityPick and Options.PriorityPick.Value
            local dpc_1 = type(dpc) == "string" and dpc
            return dpc_1 or nil
        end
        dpq = function(brr)
            if not Options.PriorityOrder then
                return
            end
            dpu = true
            Options.PriorityOrder:SetValue(brr)
            dpu = false
            fns.dwb_123.SetPriorityOrder(brr)
            dpr()
        end
        local SchedulingGroup = duZ[4]:AddRightGroupbox("Scheduling", "sliders-horizontal")
        SchedulingGroup:AddToggle("PriorityMode", {
            Text = "Priority Scheduling",
            Tooltip = "Let several farms run and hand the character to the highest ranked one with work",
            Default = false,
            Callback = function(brx)
                fns.dwb_123.SetPriorityMode(brx)
                dpr()
            end
        })
        SchedulingGroup:AddToggle("PriorityPreempt", {
            Text = "Interrupt Lower Priority",
            Tooltip = "Higher ranked farms interrupt lower ones",
            Default = true,
            Callback = function(brA)
                fns.dwb_123.SetPriorityPreempt(brA)
            end
        })
        SchedulingGroup:AddInput("PriorityOrder", {
            Text = "Saved Order",
            Default = fns.dwb_123.PriorityOrder(),
            Finished = true,
            AllowEmpty = true,
            Tooltip = "Feature keys, highest first, separated by commas",
            Callback = function(brC)
                local dpg = fns.dwb_123.SetPriorityOrder(brC)
                if not dpu and Options.PriorityOrder and dpg ~= brC then
                    dpu = true
                    Options.PriorityOrder:SetValue(dpg)
                    dpu = false
                end
                dpr()
            end
        })
        OrderGroup:AddDivider()
        OrderGroup:AddDropdown("PriorityPick", {
            Text = "Feature",
            Tooltip = "Feature to move",
            Values = fns.dwb_123.PriorityLabels(),
            Default = 1,
            Multi = false,
            AllowNull = false,
            Searchable = true
        })
        OrderGroup:AddButton({
            Text = "Move Up",
            Func = function()
                local dpl = dpt()
                if dpl then
                    dpq(fns.dwb_123.MovePriority(dpl, -1))
                end
            end,
            DoubleClick = false
        }):AddButton({
            Text = "Move Down",
            Func = function()
                local dpn = dpt()
                if dpn then
                    dpq(fns.dwb_123.MovePriority(dpn, 1))
                end
            end,
            DoubleClick = false
        })
        OrderGroup:AddButton({
            Text = "Reset Order",
            Func = function()
                dpq(fns.dwb_123.ResetPriorityOrder())
            end,
            DoubleClick = true
        })
        dpr()
    end
    dvd_7()
    local function dvd_8()
        local dro
        local drv
        local drr
        local dry
        local dru
        local drq
        local drx
        local drp
        local drs
        local drz
        dro = nil
        drp = nil
        drq = nil
        drr = nil
        drs = nil
        dru = nil
        drv = nil
        drx = nil
        dry = nil
        drz = nil
        local drt, drw
        local MovementGroup = duZ[5]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("Fly", { Text = "Fly", Default = false }):AddKeyPicker("FlyKey", { Default = "H", SyncToggleState = true, Mode = "Toggle", Text = "Fly" })
        local drB = MovementGroup:AddDependencyBox()
        drB:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        drB:SetupDependencies({ { Toggles.Fly, true } })
        MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false }):AddKeyPicker("NoClipKey", { Default = "N", SyncToggleState = true, Mode = "Toggle", Text = "Noclip" })
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Speed", Default = false }):AddKeyPicker("SpeedKey", { Default = "K", SyncToggleState = true, Mode = "Toggle", Text = "Speed" })
        local drB_1 = MovementGroup:AddDependencyBox()
        drB_1:AddSlider("WalkSpeed", { Text = "Speed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        drB_1:SetupDependencies({ { Toggles.WalkSpeedEnabled, true } })
        MovementGroup:AddToggle("HighJump", { Text = "High Jump", Default = false }):AddKeyPicker("HighJumpKey", { Default = "J", SyncToggleState = true, Mode = "Toggle", Text = "High Jump" })
        local drB_2 = MovementGroup:AddDependencyBox()
        drB_2:AddSlider("JumpPower", { Text = "Jump Power", Default = 90, Min = 50, Max = 400, Rounding = 0 })
        drB_2:SetupDependencies({ { Toggles.HighJump, true } })
        MovementGroup:AddToggle("AlwaysRun", {
            Text = "Always Run",
            Tooltip = "Always run",
            Default = false,
            Callback = function(br_)
                fns.dwb_123.SetAlwaysRun(br_)
            end
        })
        local InteractionGroup = duZ[5]:AddLeftGroupbox("Interaction", "pointer")
        InteractionGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        InteractionGroup:AddToggle("DisableShiftLock", {
            Text = "Disable Shift Lock",
            Tooltip = "Turn shift lock back off when it comes on",
            Default = true,
            Callback = function(br3)
                fns.dwb_123.SetDisableShiftLock(br3)
            end
        })
        local SustainGroup = duZ[5]:AddLeftGroupbox("Sustain", "heart-pulse")
        SustainGroup:AddToggle("InfiniteStamina", {
            Text = "Infinite Stamina",
            Tooltip = "Stamina never runs out",
            Default = false,
            Callback = function(br6)
                fns.dwb_123.SetInfiniteStamina(br6)
            end
        })
        SustainGroup:AddToggle("InfiniteClimb", {
            Text = "Infinite Climb",
            Tooltip = "Climb forever. Needs the Wall Climb node",
            Default = false,
            Callback = function(br8)
                fns.dwb_123.SetInfiniteClimb(br8)
            end
        })
        SustainGroup:AddToggle("InfiniteHorseStamina", {
            Text = "Infinite Horse Stamina",
            Tooltip = "Horse stamina never runs out",
            Default = false,
            Callback = function(bsa)
                fns.dwb_123.SetInfiniteHorseStamina(bsa)
            end
        })
        SustainGroup:AddToggle("NoDrown", {
            Text = "No Drown",
            Tooltip = "Never run out of breath underwater",
            Default = false,
            Callback = function(bsc)
                fns.dwb_123.SetNoDrown(bsc)
            end
        })
        local MitigationGroup = duZ[5]:AddLeftGroupbox("Mitigation", "shield")
        MitigationGroup:AddToggle("NoStun", {
            Text = "No Stun",
            Default = true,
            Callback = function(bsf)
                fns.dwb_123.SetNoStun(bsf)
            end
        })
        MitigationGroup:AddToggle("NoRagdoll", {
            Text = "No Ragdoll",
            Default = false,
            Callback = function(bsh)
                fns.dwb_123.SetNoRagdoll(bsh)
            end
        })
        MitigationGroup:AddToggle("DisableAnimations", {
            Text = "Disable Animations",
            Tooltip = "Turn off your character's animations",
            Default = false,
            Callback = function(bsj)
                fns.dwb_123.SetDisableAnimations(bsj)
            end
        })
        MitigationGroup:AddToggle("NoAttackSlowdown", {
            Text = "No Attack Slowdown",
            Default = false,
            Callback = function(bsl)
                fns.dwb_123.SetNoAttackSlowdown(bsl)
            end
        })
        MitigationGroup:AddToggle("NoDashCooldown", {
            Text = "No Dash Cooldown",
            Default = false,
            Callback = function(bsn)
                fns.dwb_123.SetNoDashCooldown(bsn)
            end
        })
        MitigationGroup:AddToggle("NoSunDamage", {
            Text = "No Sun Damage",
            Tooltip = "Sun doesn't burn you as a demon",
            Default = false,
            Callback = function(bsp)
                fns.dwb_123.SetNoSunDamage(bsp)
            end
        })
        local CodesGroup = duZ[5]:AddRightGroupbox("Codes", "ticket")
        du9[47] = CodesGroup:AddLabel(bR8.status(bSs.CodeStatus), true)
        Button = CodesGroup:AddButton({
            Text = "Redeem All Codes",
            Tooltip = "Redeem every active code",
            DisabledTooltip = "On cooldown",
            Func = function()
                fns.dwb_123.RedeemAllCodes(function(bsx)
                    duY:Notify(bsx)
                end)
            end
        })
        du9[43] = CodesGroup:AddLabel(bR8.field("Driving", "None"), true)
        local InstantKillGroup = duZ[5]:AddRightGroupbox("Instant Kill", "zap")
        InstantKillGroup:AddToggle("InstantKill", {
            Text = "Instant Kill",
            Tooltip = "Kill NPCs your client controls",
            Default = false,
            Callback = function(bsC)
                fns.dwb_123.SetInstantKill(bsC)
            end
        })
        local drB_3 = InstantKillGroup:AddDependencyBox()
        drB_3:AddLabel('<font color="#e0788c">Instant kill is patched but it can still kill enemies, they just won\'t drop any items</font>', true)
        drB_3:AddSlider("KillThreshold", {
            Text = "Damage Before Kill",
            Default = 10,
            Min = 0,
            Max = 100,
            Rounding = 0,
            Suffix = "%",
            Callback = function(bsF)
                fns.dwb_123.SetKillThreshold(bsF)
            end
        })
        drB_3:SetupDependencies({ { Toggles.InstantKill, true } })
        InstantKillGroup:AddToggle("OwnershipViewer", {
            Text = "Ownership Viewer",
            Tooltip = "Green = can be killed now, red = can't yet",
            Default = false,
            Callback = function(bsH)
                fns.dwb_123.SetOwnershipViewer(bsH)
            end
        })
        local drB_4 = InstantKillGroup:AddDependencyBox()
        drB_4:AddSlider("OwnershipRange", {
            Text = "Viewer Range",
            Default = 250,
            Min = 50,
            Max = 2000,
            Rounding = 0,
            Suffix = " studs",
            Callback = function(bsK)
                fns.dwb_123.SetOwnershipRange(bsK)
            end
        })
        drB_4:SetupDependencies({ { Toggles.OwnershipViewer, true } })
        local TeleportsTabbox = duZ[5]:AddRightTabbox("Teleports")
        local ZonesTab = TeleportsTabbox:AddTab("Zones", "map-pin")
        local NpcsTab = TeleportsTabbox:AddTab("NPCs", "user")
        local MobsTab = TeleportsTabbox:AddTab("Mobs", "skull")
        du9[44] = ZonesTab:AddLabel(bR8.status(bSs.TeleportStatus), true)
        ZonesTab:AddDropdown("ZoneTarget", {
            Text = "Select Zone",
            Values = fns.dwb_123.ZoneNames(),
            Default = 1,
            AllowNull = true,
            Searchable = true
        })
        ZonesTab:AddButton({
            Text = "Teleport",
            Func = function()
                local dpC = Options.ZoneTarget and Options.ZoneTarget.Value
                if dpC and dpC ~= "" then
                    fns.dwb_123.TeleportToZone(dpC)
                else
                    duY:Notify("Pick a zone first")
                end
            end
        })
        ZonesTab:AddDivider()
        ZonesTab:AddButton({
            Text = "Teleport to Muzan",
            Tooltip = "Teleport to Muzan, or his lair if he isn't out",
            Func = function()
                fns.dwb_123.TeleportToMuzan()
            end
        })
        NpcsTab:AddDropdown("NpcTarget", {
            Text = "Select NPC",
            Values = fns.dwb_123.NpcNames(),
            Default = 1,
            AllowNull = true,
            Searchable = true
        })
        NpcsTab:AddButton({
            Text = "Teleport",
            Func = function()
                local dpG = Options.NpcTarget and Options.NpcTarget.Value
                if dpG and dpG ~= "" then
                    fns.dwb_123.TeleportToNpc(dpG)
                else
                    duY:Notify("Pick an NPC first")
                end
            end
        })
        MobsTab:AddDropdown("MobTeleport", {
            Text = "Select Mob",
            Values = fns.dwb_123.MobNames(),
            Default = 1,
            AllowNull = true,
            Searchable = true
        })
        MobsTab:AddButton({
            Text = "Teleport",
            Func = function()
                local dpN = Options.MobTeleport and Options.MobTeleport.Value
                if dpN and dpN ~= "" then
                    fns.dwb_123.TeleportToMob(dpN)
                else
                    duY:Notify("Pick a mob first")
                end
            end
        })
        local RespawnGroup = duZ[5]:AddRightGroupbox("Respawn", "map-pinned")
        du9[45] = RespawnGroup:AddLabel(bR8.status(bSs.SpawnStatus), true)
        RespawnGroup:AddDropdown("SpawnCrystal", {
            Text = "Spawn Crystal",
            Tooltip = "Crystal to set as your respawn",
            Values = fns.dwb_123.SpawnCrystalNames(),
            Default = 1,
            AllowNull = true,
            Searchable = true
        })
        RespawnGroup:AddButton({
            Text = "Set Spawn Here",
            Tooltip = "Set your respawn at the picked crystal",
            Func = function()
                local dpR = Options.SpawnCrystal and Options.SpawnCrystal.Value
                if dpR and dpR ~= "" then
                    fns.dwb_123.SetSpawnAtCrystal(dpR)
                else
                    duY:Notify("Pick a crystal first")
                end
            end
        })
        RespawnGroup:AddDivider()
        du9[46] = RespawnGroup:AddLabel(bR8.status(bSs.RespawnStatus), true)
        RespawnGroup:AddInput("CustomSpawnPos", {
            Text = "Saved Position",
            Tooltip = "x, y, z. Save yours or paste one",
            Default = "",
            Placeholder = "x, y, z",
            Callback = function(btc)
                fns.dwb_123.SetCustomSpawn(btc)
            end
        })
        fns.dwb_123.SetCustomSpawn(Options.CustomSpawnPos.Value)
        RespawnGroup:AddButton({
            Text = "Save Current Position",
            Tooltip = "Save where you're standing",
            Func = function()
                local dpY = fns.dwb_123.CurrentPositionText()
                if dpY == "" then
                    duY:Notify("Waiting for your character")
                    return
                end
                Options.CustomSpawnPos:SetValue(dpY)
                duY:Notify("Saved " .. dpY)
            end
        })
        RespawnGroup:AddButton({
            Text = "Copy Saved Position",
            Tooltip = "Copy the saved position",
            Func = function()
                local dp_ = fns.dwb_123.CustomSpawnText()
                if dp_ == "" then
                    duY:Notify("Nothing saved yet")
                    return
                end
                dvb(dp_, "Copied " .. dp_)
            end
        })
        RespawnGroup:AddToggle("CustomRespawn", {
            Text = "Return to Saved Position",
            Tooltip = "Respawn at the saved position",
            Default = false,
            Callback = function(btn)
                fns.dwb_123.SetAutoCustomRespawn(btn)
            end
        })
        if #bQe.missing > 0 then
            local UnavailableGroup = duZ[5]:AddRightGroupbox("Unavailable", "triangle-alert")
            UnavailableGroup:AddLabel("Missing: " .. table.concat(bQe.missing, ", "), true)
        end
        drs = {}
        drq = {}
        drv = {}
        drt = {}
        drp = {}
        drx = {}
        dru = function()
            for k, v in drp do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(drp)
        end
        drr = function()
            for k, v in drv do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(drv)
        end
        drz = function()
            for k, v in drt do
                local dqj = k
                local dql = v
                if dqj.Parent then
                    pcall(function()
                        dqj.UseJumpPower = true
                        dqj.JumpPower = dql
                    end)
                end
            end
            table.clear(drt)
        end
        dro = function()
            for k, v in drq do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(drq)
        end
        drw = function(btR)
            local dqw = if not btR:IsA("ProximityPrompt") then 1 else 0
            if dqw == 1 then
                return
            end
            if drx[btR] == nil then
                drx[btR] = {
                    HoldDuration = btR.HoldDuration,
                    MaxActivationDistance = btR.MaxActivationDistance,
                    RequiresLineOfSight = btR.RequiresLineOfSight
                }
            end
            btR.HoldDuration = 0
            btR.MaxActivationDistance = 50
            btR.RequiresLineOfSight = false
        end
        dry = function()
            for k, v in drx do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(drx)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                dro()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                drr()
            end
        end)
        Toggles.HighJump:OnChanged(function()
            if not Toggles.HighJump.Value then
                drz()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                dru()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(fns.dwb_51.Workspace:GetDescendants()) do
                    local dqR = if descendant:IsA("ProximityPrompt") then 1 else 0
                    if dqR == 1 then
                        pcall(drw, descendant)
                    end
                end
            else
                dry()
            end
        end)
        table.insert(drs, fns.dwb_51.Workspace.DescendantAdded:Connect(function(bub)
            local dqS = Toggles.InstantProximityPrompt.Value and bub:IsA("ProximityPrompt")
            if dqS then
                drw(bub)
            end
        end))
        table.insert(drs, fns.dwb_51.RunService.Stepped:Connect(function()
            if duY.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if drp[descendant] == nil then
                            drp[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(drs, fns.dwb_51.RunService.RenderStepped:Connect(function(bup)
            if duY.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local dq4 = Character and Character:FindFirstChildOfClass("Humanoid")
            local dq5 = Character
            local dq2 = dq4
            if dq5 then
                dq5 = Character:FindFirstChild("HumanoidRootPart")
            end
            local dq3_1 = dq5
            local CurrentCamera = fns.dwb_51.Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and dq2 then
                if drv[dq2] == nil then
                    drv[dq2] = dq2.WalkSpeed
                end
                dq2.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.HighJump.Value and dq2 then
                if drt[dq2] == nil then
                    drt[dq2] = dq2.JumpPower
                end
                pcall(function()
                    dq2.UseJumpPower = true
                    dq2.JumpPower = Options.JumpPower.Value
                end)
            end
            if Toggles.Fly.Value and dq3_1 and dq2 and CurrentCamera then
                if drq[dq2] == nil then
                    drq[dq2] = dq2.PlatformStand
                end
                dq2.PlatformStand = true
                local dq5_5 = Vector3.zero
                local drg = if not fns.dwb_51.UserInputService:GetFocusedTextBox() then 1 else 0
                if drg == 1 then
                    if fns.dwb_51.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        dq5_5 += CurrentCamera.CFrame.LookVector
                    end
                    if fns.dwb_51.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        dq5_5 -= CurrentCamera.CFrame.LookVector
                    end
                    local drd = if fns.dwb_51.UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                    if drd == 1 then
                        dq5_5 -= CurrentCamera.CFrame.RightVector
                    end
                    if fns.dwb_51.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        dq5_5 += CurrentCamera.CFrame.RightVector
                    end
                    if fns.dwb_51.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        dq5_5 += Vector3.new(0, 1, 0)
                    end
                    if fns.dwb_51.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        dq5_5 -= Vector3.new(0, 1, 0)
                    end
                end
                dq3_1.AssemblyLinearVelocity = Vector3.zero
                if dq5_5.Magnitude > 0 then
                    dq3_1.CFrame = dq3_1.CFrame + dq5_5.Unit * Options.FlySpeed.Value * bup
                end
            end
        end))
        fns.dwb_123.Track(function()
            for k, v in drs do
                v:Disconnect()
            end
            dru()
            drr()
            drz()
            dro()
            dry()
        end)
    end
    dvd_8()
    dvf_2()
    local function dvd_9()
        local EspGroup = duZ[6]:AddLeftGroupbox("ESP", "eye")
        local function buS(buT, buU, buV, buW, buX)
            local Toggle = EspGroup:AddToggle(buT, {
                Text = buU,
                Default = false,
                Callback = function(buZ)
                    fns.dwb_123.SetEspOption(buV, buZ)
                end
            })
            if buW then
                Toggle:AddColorPicker(buT .. "Colour", {
                    Default = buX,
                    Title = buU .. " Colour",
                    Callback = function(bu4)
                        fns.dwb_123.SetEspColour(buW, bu4)
                    end
                })
            end
            return Toggle
        end
        buS("EspBox", "Box", "box")
        buS("EspBoxFill", "Box Fill", "boxFill")
        buS("EspBox3D", "3D Box", "box3d")
        EspGroup:AddDivider()
        buS("EspName", "Name", "name", "name", Color3.fromRGB(255, 255, 255))
        buS("EspDistance", "Distance", "distance", "distance", Color3.fromRGB(255, 255, 255))
        EspGroup:AddDivider()
        buS("EspHealthBar", "Health Bar", "healthBar", "health", Color3.fromRGB(0, 255, 0))
        EspGroup:AddLabel("Dying Colour"):AddColorPicker("EspDyingColour", {
            Default = Color3.fromRGB(255, 0, 0),
            Title = "Dying Colour",
            Callback = function(bu7)
                fns.dwb_123.SetEspColour("dying", bu7)
            end
        })
        buS("EspHealthText", "Health Text", "healthText", "healthText", Color3.fromRGB(255, 255, 255))
        buS("EspTracer", "Tracer", "tracer")
        EspGroup:AddDivider()
        EspGroup:AddSlider("EspRange", {
            Text = "Max Distance",
            Tooltip = "Max draw distance. 0 = no limit",
            Default = 5000,
            Min = 0,
            Max = 20000,
            Rounding = 0,
            Suffix = " studs",
            Callback = function(bu9)
                fns.dwb_123.SetEspRange(bu9)
            end
        })
        local function bvb(bvc, bvd, bve, bvf, bvg)
            bvc:AddToggle(bvd, {
                Text = bve,
                Default = false,
                Callback = function(bvh)
                    fns.dwb_123.SetEspCategory(bvf, bvh)
                end
            }):AddColorPicker(bvd .. "Colour", {
                Default = bvg,
                Title = bve .. " Colour",
                Callback = function(bvl)
                    fns.dwb_123.SetEspColour(bvf, bvl)
                end
            })
        end
        local WorldGroup = duZ[6]:AddLeftGroupbox("World", "globe")
        bvb(WorldGroup, "EspMuzan", "Muzan ESP", "Muzan", Color3.fromRGB(200, 0, 60))
        bvb(WorldGroup, "EspSpiderLily", "Spider Lily ESP", "Spider Lily", Color3.fromRGB(255, 80, 160))
        bvb(WorldGroup, "EspChest", "Chest ESP", "Chests", Color3.fromRGB(255, 200, 40))
        bvb(WorldGroup, "EspHorse", "Wild Horse ESP", "Wild Horse", Color3.fromRGB(215, 175, 120))
        bvb(WorldGroup, "EspLever", "Lever ESP", "Levers", Color3.fromRGB(170, 120, 255))
        WorldGroup:AddDivider()
        WorldGroup:AddToggle("MapXray", {
            Text = "Map X-Ray",
            Tooltip = "See mobs, chests and drops through walls. Only on your screen",
            Default = false,
            Callback = function(bvp)
                fns.dwb_123.SetMapXray(bvp)
            end
        })
        local bvr = WorldGroup:AddDependencyBox()
        bvr:AddSlider("MapXrayAmount", {
            Text = "X-Ray Amount",
            Default = 70,
            Min = 10,
            Max = 95,
            Rounding = 0,
            Suffix = "%",
            Callback = function(bvs)
                fns.dwb_123.SetMapXrayAmount(bvs)
            end
        })
        bvr:SetupDependencies({ { Toggles.MapXray, true } })
        local PlayerEspGroup = duZ[6]:AddRightGroupbox("Player ESP", "users")
        PlayerEspGroup:AddToggle("EspPlayers", {
            Text = "Player ESP",
            Default = false,
            Callback = function(bvw)
                fns.dwb_123.SetEspCategory("Players", bvw)
            end
        })
        PlayerEspGroup:AddToggle("EspPlayerInfo", {
            Text = "Level / Race / Clan",
            Default = false,
            Callback = function(bvy)
                fns.dwb_123.SetEspOption("playerInfo", bvy)
            end
        }):AddColorPicker("EspPlayerInfoColour", {
            Default = Color3.fromRGB(255, 255, 255),
            Title = "Info Colour",
            Callback = function(bvA)
                fns.dwb_123.SetEspColour("info", bvA)
            end
        })
        PlayerEspGroup:AddLabel("Enemy Colour"):AddColorPicker("EspEnemyColour", {
            Default = Color3.fromRGB(255, 0, 0),
            Title = "Enemy Colour",
            Callback = function(bvC)
                fns.dwb_123.SetEspColour("Players", bvC)
            end
        })
        PlayerEspGroup:AddLabel("Party Colour"):AddColorPicker("EspPartyColour", {
            Default = Color3.fromRGB(0, 255, 0),
            Title = "Party Colour",
            Callback = function(bvE)
                fns.dwb_123.SetEspColour("Party", bvE)
            end
        })
        local EntitiesTabbox = duZ[6]:AddRightTabbox("Entities")
        local MobsTab = EntitiesTabbox:AddTab("Mobs", "skull")
        local BossesTab = EntitiesTabbox:AddTab("Bosses", "crown")
        local NpcsTab = EntitiesTabbox:AddTab("NPCs", "user")
        bvb(MobsTab, "EspMobs", "Mob ESP", "Mobs", Color3.fromRGB(0, 170, 255))
        bvb(BossesTab, "EspBosses", "Boss ESP", "Bosses", Color3.fromRGB(255, 170, 0))
        bvb(NpcsTab, "EspNpcs", "NPC ESP", "NPCs", Color3.fromRGB(120, 255, 150))
        du7(duZ[6]:AddRightGroupbox("Discord", "message-circle"))
    end
    dvd_9()
    local function dvd_10()
        local drX
        drX = nil
        local Label, drZ
        local ReportsTabbox = duZ[7]:AddLeftTabbox("Reports")
        local dr0 = {
            Overworld = { icon = "trees", interval = 30, blurb = "Levelling, drops, quests and kills outside a run." },
            Dungeon = {
                icon = "swords",
                interval = 15,
                blurb = "Floors, cards, run points and bought exp inside Ouwigahara."
            }
        }
        drZ = {}
        for i, v in ipairs(fns.dwb_123.WebhookChannels()) do
            local dsc = v
            local dr1 = dr0[dsc]
            local Tab = ReportsTabbox:AddTab(dsc, dr1.icon)
            Tab:AddLabel(dr1.blurb, true)
            drZ[dsc] = Tab:AddLabel(bR8.field("Report", fns.dwb_123.WebhookChannelStatus(dsc)), true)
            Tab:AddToggle("Webhook" .. dsc, {
                Text = "Enable " .. dsc .. " Report",
                Default = false,
                Callback = function(bvW)
                    fns.dwb_123.SetWebhookEnabled(dsc, bvW)
                end
            })
            local dr3 = "WebhookUrl" .. dsc
            local dr5 = dsc == "Dungeon" and "Blank uses the Overworld URL" or "https://discord.com/api/webhooks/..."
            Tab:AddInput(dr3, {
                Text = "Webhook URL",
                Default = "",
                Placeholder = dr5,
                Tooltip = "Saved in your config, so don't share that file",
                Callback = function(bvZ)
                    fns.dwb_123.SetWebhookUrl(dsc, bvZ)
                end
            })
            Tab:AddSlider("WebhookInterval" .. dsc, {
                Text = "Report Every",
                Default = dr1.interval,
                Min = 1,
                Max = 240,
                Rounding = 0,
                Suffix = " min",
                Callback = function(bv1)
                    fns.dwb_123.SetWebhookInterval(dsc, bv1)
                end
            })
            Tab:AddDropdown("WebhookEvents" .. dsc, {
                Text = "Include",
                Values = fns.dwb_123.WebhookEventLabels(dsc),
                Default = fns.dwb_123.WebhookEventLabels(dsc),
                Multi = true,
                AllowNull = true,
                Searchable = true,
                Tooltip = "Lines to include in the report",
                Callback = function(bv4)
                    fns.dwb_123.SetWebhookEvents(dsc, bv4)
                end
            })
            if dsc == "Overworld" then
                Tab:AddDropdown("WebhookItemCategories", {
                    Text = "Name Drops From",
                    Values = fns.dwb_123.ItemCategories(),
                    Default = fns.dwb_123.DefaultItemCategories(),
                    Multi = true,
                    AllowNull = true,
                    Searchable = true,
                    Tooltip = "Item types listed by name",
                    Callback = function(bv7)
                        fns.dwb_123.SetItemCategories(bv7)
                    end
                })
            end
            Tab:AddButton({
                Text = "Send " .. dsc .. " Report Now",
                Func = function()
                    fns.dwb_123.SendWebhookReport(dsc, function(bwb, bwc)
                        if bwb then
                            duY:Notify(dsc .. " report delivered")
                        else
                            local drH = bwc or "Report failed"
                            duY:Notify(tostring(drH), 6)
                        end
                    end)
                end
            })
        end
        local dr__1 = duZ[7]:AddRightGroupbox("Shared", "settings-2")
        dr__1:AddDropdown("WebhookStyle", {
            Text = "Webhook Style",
            Values = fns.dwb_123.WebhookStyles(),
            Default = 1,
            Tooltip = "Report = periodic summary. Loot Drops = a card per item picked up. Both = both",
            Callback = function(bwi)
                fns.dwb_123.SetWebhookStyle(bwi)
            end
        })
        dr__1:AddDropdown("WebhookLootRarity", {
            Text = "Loot Drops From",
            Values = fns.dwb_123.LootRarityNames(),
            Default = 1,
            Tooltip = "Minimum rarity for loot cards",
            Callback = function(bwk)
                fns.dwb_123.SetLootRarity(bwk)
            end
        })
        dr__1:AddToggle("WebhookSkipQuiet", {
            Text = "Skip Empty Reports",
            Default = true,
            Tooltip = "Don't send a report when nothing happened",
            Callback = function(bwm)
                fns.dwb_123.SetWebhookSkipQuiet(bwm)
            end
        })
        dr__1:AddInput("WebhookPingId", {
            Text = "Discord User ID",
            Default = "",
            Numeric = true,
            Placeholder = "Your Discord ID",
            Callback = function(bwo)
                fns.dwb_123.SetWebhookPingId(bwo)
            end
        })
        dr__1:AddToggle("WebhookPing", {
            Text = "Ping Me",
            Default = false,
            Tooltip = "Ping the ID above on every report",
            Callback = function(bwq)
                fns.dwb_123.SetWebhookPing(bwq)
            end
        })
        local dr__2 = duZ[7]:AddRightGroupbox("Delivery", "send")
        Label = dr__2:AddLabel(fns.dwb_123.WebhookStatus(), true)
        drX = task.spawn(function()
            while true do
                task.wait(1)
                if duY.Unloaded then
                    break
                end
                Label:SetText(fns.dwb_123.WebhookStatus())
                for k, v in pairs(drZ) do
                    v:SetText(bR8.field("Report", fns.dwb_123.WebhookChannelStatus(k)))
                end
            end
        end)
        fns.dwb_123.Track(function()
            local drW = if coroutine.status(drX) ~= "dead" then 1 else 0
            if drW == 1 then
                pcall(task.cancel, drX)
            end
        end)
    end
    dvd_10()
    local function dvd_11()
        local dta, dtb, dtc, dtd, dte, dtf, dtg, dth, dti, dtj, dtk, dtl, dtm, Label
        dta = {}
        dti = {}
        dte = nil
        dtj = false
        dtg = 0
        dtc = 0
        dtm = os.clock()
        local MenuGroup = duZ[8]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        dtd = function()
            local CurrentCamera
            CurrentCamera = fns.dwb_51.Workspace.CurrentCamera
            local dse = not CurrentCamera or not bQG(fns.dwb_51.VirtualUser.CaptureController)
            local dsi = if dse then 1 else 0
            local dsg = 4094 * dsi + 2158 * (1 - dsi)
            local dsh = 1814 * dsi + 2839 * (1 - dsi)
            if not ((dsg * 2352 + dsh * 457 + dsg * dsh) % 16777213 == 1107389) then
                dse = not bQG(fns.dwb_51.VirtualUser.ClickButton2)
            end
            if dse then
                return false
            end
            local dse_1 = pcall(function()
                fns.dwb_51.VirtualUser:CaptureController()
                fns.dwb_51.VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not dse_1 then
                return false
            end
            dtg += 1
            dtm = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. dtg)
            end)
            return true
        end
        dtk = function(bw3)
            pcall(function()
                fns.dwb_51.GuiService:SetGameplayPausedNotificationEnabled(not bw3)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = fns.dwb_51.CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not bw3
                end
            end)
            if not bw3 then
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
        dtl = function(bxe)
            if bxe.ClassName == "ParticleEmitter" or bxe.ClassName == "Trail" or bxe.ClassName == "Smoke" or bxe.ClassName == "Fire" or bxe.ClassName == "Sparkles" or bxe.ClassName == "Explosion" or bxe.ClassName == "Beam" then
                if dta[bxe] == nil then
                    dta[bxe] = bxe.Enabled
                end
                pcall(function()
                    bxe.Enabled = false
                end)
            end
        end
        dth = function()
            for k, v in dta do
                local dst = k
                local dsv = v
                if dst.Parent then
                    pcall(function()
                        dst.Enabled = dsv
                    end)
                end
            end
            table.clear(dta)
            if dte then
                pcall(function()
                    settings().Rendering.QualityLevel = dte.Quality
                end)
                fns.dwb_51.Lighting.GlobalShadows = dte.Shadows
                fns.dwb_51.Lighting.FogEnd = dte.Fog
                dte = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(bxr)
                pcall(function()
                    fns.dwb_51.RunService:Set3dRenderingEnabled(not bxr)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(bxv)
                if bxv then
                    if not dte then
                        dte = {
                            Quality = settings().Rendering.QualityLevel,
                            Shadows = fns.dwb_51.Lighting.GlobalShadows,
                            Fog = fns.dwb_51.Lighting.FogEnd
                        }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    fns.dwb_51.Lighting.GlobalShadows = false
                    fns.dwb_51.Lighting.FogEnd = 9000000000
                    for i, descendant in ipairs(fns.dwb_51.Workspace:GetDescendants()) do
                        pcall(dtl, descendant)
                    end
                else
                    dth()
                end
            end
        })
        MenuGroup:AddToggle("Watermark", { Text = "Watermark", Default = true })
        Toggles.Watermark:OnChanged(function()
            if fns.dwb_92.watermark then
                fns.dwb_92.watermark:SetVisible(Toggles.Watermark.Value)
            end
        end)
        if fns.dwb_92.watermark then
            fns.dwb_92.watermark:SetVisible(Toggles.Watermark.Value)
        end
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        duY.ToggleKeybind = Options.MenuKeybind
        dtk(true)
        local ScriptGroup = duZ[8]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                duY:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            dtk(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            dtk(true)
        end
        table.insert(dti, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not duY.Unloaded then
                dtd()
            end
        end))
        table.insert(dti, fns.dwb_51.Workspace.DescendantAdded:Connect(function(bxQ)
            if Toggles.FpsBoost.Value then
                dtl(bxQ)
            end
        end))
        dtb = function(bxU)
            if dtj or duY.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            dtj = true
            local dsM = dtc
            local dsN_1 = pcall(function()
                if bxU then
                    fns.dwb_51.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    fns.dwb_51.TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not dsN_1 then
                dtj = false
                if not bxU and dsM == dtc then
                    task.delay(1.5, function()
                        if dsM == dtc then
                            dtb(true)
                        end
                    end)
                end
            end
        end
        table.insert(dti, fns.dwb_51.TeleportService.TeleportInitFailed:Connect(function(bya)
            local dsU
            if bya == LocalPlayer and dtj then
                dtj = false
                dsU = dtc
                task.delay(3, function()
                    if dsU == dtc then
                        dtb(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = fns.dwb_51.CoreGui:WaitForChild("RobloxPromptGui", 30)
            local dsZ = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if duY.Unloaded or not dsZ then
                return
            end
            table.insert(dti, dsZ.ChildAdded:Connect(function(byp)
                if byp.Name == "ErrorPrompt" then
                    dtb(false)
                end
            end))
        end)
        dtf = task.spawn(function()
            while not duY.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    dtk(true)
                end
                local ds1 = Toggles.AntiAfk.Value and os.clock() - dtm >= 60
                if ds1 then
                    dtd()
                end
                task.wait(1)
            end
        end)
        fns.dwb_123.Track(function()
            dtc += 1
            for k, v in dti do
                v:Disconnect()
            end
            pcall(task.cancel, dtf)
            dtk(false)
            dth()
            pcall(function()
                fns.dwb_51.RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    dvd_11()
    local function dvd_12()
        local duh, dui, duj, duk
        du6:SetLibrary(duY)
        du6:SetFolder("MyScriptHub")
        du6:SaveDefault("Rosewater")
        du6:ApplyToTab(duZ[8])
        du4:SetLibrary(duY)
        du4:IgnoreThemeSettings()
        du4:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        du4:SetFolder("OuroborosHub/Ouwland")
        local dul = (fns.dwb_123.InDungeon()) and "Dungeon"
        local dum = dul
        local duu = if dum then 1 else 0
        local dus = 732 * duu + 1607 * (1 - duu)
        local dut = 3478 * duu + 3491 * (1 - duu)
        if not ((dus * 515 + dut * 237 + dus * dut) % 16777213 == 3747162) then
            local dul_1 = (fns.dwb_123.InMenuPlace()) and "Hub"
            dum = dul_1 or "Overworld"
        end
        du4:SetSubFolder(dum)
        local dul_2 = du4:BuildConfigSection(duZ[8])
        dui = function(byS, byT)
            local dtu_1 = (byS == "Toggle" and Toggles or Options)[byT]
            local dtt_2 = type(dtu_1) == "table" and dtu_1.Type == byS
            return dtt_2 and dtu_1 or nil
        end
        duk = function(by1, by2)
            local Type = by2.Type
            if Type == "Toggle" then
                return { idx = by1, type = "Toggle", value = by2.Value == true }
            elseif Type == "Slider" then
                return { idx = by1, type = "Slider", value = tostring(by2.Value) }
            elseif Type == "Dropdown" then
                return { idx = by1, type = "Dropdown", multi = by2.Multi == true, value = by2.Value }
            elseif Type == "Input" then
                local dty = by2.Value or ""
                return { idx = by1, type = "Input", text = tostring(dty) }
            elseif Type == "ColorPicker" then
                return { idx = by1, type = "ColorPicker", value = by2.Value:ToHex(), transparency = by2.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = by1,
                    type = "KeyPicker",
                    mode = by2.Mode,
                    key = by2.Value,
                    modifiers = by2.Modifiers,
                    toggled = by2.Toggled
                }
            else
                return nil
            end
        end
        duj = function()
            local dtE = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local dtF = type(v) == "table" and type(v.Type) == "string" and not du4.Ignore[k]
                    if dtF then
                        local dtF_1 = duk(k, v)
                        if dtF_1 then
                            dtE[#dtE + 1] = dtF_1
                        end
                    end
                end
            end
            table.sort(dtE, function(bzc, bzd)
                if bzc.type ~= bzd.type then
                    return bzc.type < bzd.type
                end
                return bzc.idx < bzd.idx
            end)
            return { objects = dtE }
        end
        duh = function(bzf)
            local dtY
            dtY = nil
            local dtZ = type(bzf) ~= "table" or type(bzf.idx) ~= "string" or type(bzf.type) ~= "string" or du4.Ignore[bzf.idx]
            if dtZ then
                return false
            end
            dtY = dui(bzf.type, bzf.idx)
            if not dtY then
                return false
            end
            local dtZ_1 = pcall(function()
                if bzf.type == "Input" then
                    if type(bzf.text) ~= "string" then
                        return
                    end
                    dtY:SetValue(bzf.text)
                elseif bzf.type == "ColorPicker" then
                    dtY:SetValueRGB(Color3.fromHex(bzf.value), bzf.transparency)
                elseif bzf.type == "KeyPicker" then
                    dtY:SetValue({ bzf.key, bzf.mode, bzf.modifiers })
                    if bzf.mode == "Toggle" and bzf.toggled ~= nil then
                        dtY.Toggled = bzf.toggled
                        dtY:Update()
                    end
                else
                    dtY:SetValue(bzf.value)
                end
            end)
            return dtZ_1
        end
        dul_2:AddDivider()
        dul_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        dul_2:AddButton("Export Config to Clipboard", function()
            local dt1_1
            local dt0_1
            dt0_1, dt1_1 = pcall(fns.dwb_51.HttpService.JSONEncode, fns.dwb_51.HttpService, duj())
            if dt0_1 then
                local dt0_2 = (bQG(setclipboard)) and setclipboard
                local dt2 = dt0_2
                if not dt2 then
                    local dt0_3 = (bQG(toclipboard)) and toclipboard
                    dt2 = dt0_3 or nil
                end
                local dt0_4 = dt2
                local dt2_1 = type(dt0_4) == "function" and pcall(dt0_4, dt1_1)
                if dt2_1 then
                    duY:Notify("Config copied to clipboard", 6)
                    return
                end
                duY:Notify("Your executor does not support copying to the clipboard")
                return
            end
            duY:Notify("Failed to encode the config")
        end)
        dul_2:AddButton("Import Config from Clipboard Text", function()
            local dt7_1
            local dt5 = Options.SaveManager_ImportSource.Value or ""
            local dt5_1
            local dt6 = tostring(dt5):match("^%s*(.-)%s*$")
            if dt6 == "" then
                duY:Notify("Paste an exported config into the box first")
                return
            end
            if #dt6 > 262144 then
                duY:Notify("That config is too large")
                return
            end
            dt5_1, dt7_1 = pcall(fns.dwb_51.HttpService.JSONDecode, fns.dwb_51.HttpService, dt6)
            local dt6_1 = not dt5_1 or type(dt7_1) ~= "table" or type(dt7_1.objects) ~= "table"
            if dt6_1 then
                duY:Notify("That is not a valid exported config")
                return
            end
            if #dt7_1.objects > 2048 then
                duY:Notify("That config has too many records")
                return
            end
            local dt5_2 = 0
            fns.dwb_123.BeginPriorityLoad()
            for i, v in ipairs(dt7_1.objects) do
                if duh(v) then
                    dt5_2 += 1
                end
            end
            fns.dwb_123.SettlePriority()
            if dt5_2 == 0 then
                duY:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local dt7_2 = dt5_2 == 1 and "" or "s"
            duY:Notify(("Imported %d setting%s"):format(dt5_2, dt7_2), 6)
        end)
        du6:LoadDefault()
        fns.dwb_123.BeginPriorityLoad()
        du4:LoadAutoloadConfig()
        local function dul_3(bzO, bzP)
            if Options[bzO] then
                bzP(Options[bzO].Value)
            end
        end
        local function dum_1(bzS, bzT)
            if Toggles[bzS] then
                bzT(Toggles[bzS].Value)
            end
        end
        dul_3("PriorityOrder", fns.dwb_123.SetPriorityOrder)
        dum_1("PriorityPreempt", fns.dwb_123.SetPriorityPreempt)
        dum_1("PriorityMode", fns.dwb_123.SetPriorityMode)
        dul_3("PositionType", fns.dwb_123.SetPositionType)
        dum_1("LookAtEnemy", fns.dwb_123.SetLookAtEnemy)
        dul_3("OffsetX", fns.dwb_123.SetLateralOffset)
        dul_3("OffsetY", fns.dwb_123.SetHeightOffset)
        dul_3("OffsetZ", fns.dwb_123.SetOffsetDistance)
        dul_3("MovementMode", fns.dwb_123.SetMovementMode)
        dul_3("TweenSpeed", fns.dwb_123.SetTweenSpeed)
        dul_3("WeaponChoice", fns.dwb_123.SetWeapon)
        dul_3("PotionChoice", fns.dwb_123.SetPotion)
        dul_3("DrinkBelow", fns.dwb_123.SetDrinkBelow)
        dul_3("ShopItems", fns.dwb_123.SetShopItems)
        dul_3("KeepAmount", fns.dwb_123.SetKeepAmount)
        dul_3("SkillChoices", fns.dwb_123.SetSkillSelection)
        for i, v in ipairs(fns.dwb_123.HoldSkills()) do
            local duA = v
            dul_3(duA.key, function(bzX)
                fns.dwb_123.SetSkillHold(duA.name, bzX)
            end)
        end
        dum_1("AutoSkills", fns.dwb_123.SetAutoSkills)
        dul_3("MobTarget", fns.dwb_123.SetMobTarget)
        dul_3("BossTargets", fns.dwb_123.SetBossSelection)
        dul_3("ChestTiers", fns.dwb_123.SetChestTiers)
        dul_3("BreathingChoice", fns.dwb_123.SetBreathing)
        dul_3("WenMob", fns.dwb_123.SetWenMob)
        dul_3("SkillNodes", fns.dwb_123.SetSkillNodes)
        dum_1("UnlockSkills", fns.dwb_123.SetUnlockSkills)
        dum_1("LevelDropForeign", fns.dwb_123.SetLevelDropForeign)
        dul_3("CacheHopCount", fns.dwb_123.SetCacheHopCount)
        dul_3("CacheHopOrder", fns.dwb_123.SetCacheHopOrder)
        dul_3("CacheLootRange", fns.dwb_123.SetCacheLootRange)
        dum_1("CacheHopEmpty", fns.dwb_123.SetCacheHopEmpty)
        dul_3("CacheHopScans", fns.dwb_123.SetCacheHopScans)
        dum_1("CacheHop", fns.dwb_123.SetCacheHop)
        dum_1("AutoChest", fns.dwb_123.SetAutoChest)
        dul_3("QuestTargets", fns.dwb_123.SetQuestSelection)
        dum_1("AutoLevel", fns.dwb_123.SetAutoLevel)
        dum_1("AutoQuest", fns.dwb_123.SetAutoQuest)
        dul_3("DemonMob", fns.dwb_123.SetDemonMob)
        dum_1("DemonDrink", fns.dwb_123.SetDemonDrink)
        dum_1("DemonDropForeign", fns.dwb_123.SetDemonDropForeign)
        dum_1("AutoDemon", fns.dwb_123.SetAutoDemon)
        dul_3("DungeonRange", fns.dwb_123.SetDungeonRange)
        dum_1("AutoDungeon", fns.dwb_123.SetAutoDungeon)
        dum_1("AutoReadyUp", fns.dwb_123.SetAutoReady)
        dul_3("ResetPoints", fns.dwb_123.SetResetPoints)
        dul_3("ResetCount", fns.dwb_123.SetResetCount)
        dum_1("AutoResetPoints", fns.dwb_123.SetAutoReset)
        dul_3("StallTimeout", fns.dwb_123.SetStallTimeout)
        dum_1("StallGuard", fns.dwb_123.SetStallGuard)
        dul_3("OpenLimit", fns.dwb_123.SetOpenLimit)
        dum_1("AutoOpenChest", fns.dwb_123.SetAutoOpenChest)
        dul_3("LeaveDelay", fns.dwb_123.SetLeaveDelay)
        dul_3("LeaveFloor", fns.dwb_123.SetLeaveFloor)
        dum_1("AutoLeaveLobby", fns.dwb_123.SetAutoLeave)
        dul_3("BringRange", fns.dwb_123.SetBringRange)
        dum_1("AutoBringEnemies", fns.dwb_123.SetAutoBringEnemies)
        dul_3("CardTargets", fns.dwb_123.SetCardSelection)
        dul_3("BlockedCards", fns.dwb_123.SetCardBlocks)
        dum_1("BlockCards", fns.dwb_123.SetBlockCards)
        dul_3("HealBelow", fns.dwb_123.SetHealBelow)
        dum_1("ForceHealCards", fns.dwb_123.SetForceHealCards)
        for i, v in ipairs(fns.dwb_123.CardNames()) do
            local duG = v
            dul_3("CardPriority" .. duG:gsub("%W", ""), function(bz1)
                fns.dwb_123.SetCardPriority(duG, bz1)
            end)
        end
        dum_1("AutoCards", fns.dwb_123.SetAutoCards)
        dum_1("AutoSkipWaves", fns.dwb_123.SetAutoSkipWaves)
        dum_1("AutoMob", fns.dwb_123.SetAutoMob)
        dum_1("AutoBoss", fns.dwb_123.SetAutoBoss)
        dul_3("HuntTiers", fns.dwb_123.SetHuntTiers)
        dum_1("HuntDropForeign", fns.dwb_123.SetHuntDropForeign)
        dum_1("AutoBossHunt", fns.dwb_123.SetAutoBossHunt)
        dum_1("AutoBreathing", fns.dwb_123.SetAutoBreathing)
        dum_1("AutoSkillTree", fns.dwb_123.SetAutoSkillTree)
        dum_1("AutoPotion", fns.dwb_123.SetAutoPotion)
        dum_1("AutoBuy", fns.dwb_123.SetAutoBuy)
        dul_3("FishBait", fns.dwb_123.SetFishBait)
        dum_1("AutoBuyBait", fns.dwb_123.SetAutoBuyBait)
        dum_1("ReturnAfterBait", fns.dwb_123.SetReturnAfterBait)
        dum_1("AnglerQuest", fns.dwb_123.SetAnglerQuest)
        dum_1("AutoFish", fns.dwb_123.SetAutoFish)
        dum_1("LegendaryRod", fns.dwb_123.SetLegendaryRod)
        dul_3("Trainings", fns.dwb_123.SetTrainings)
        dul_3("TrainingMode", fns.dwb_123.SetTrainingMode)
        dum_1("AutoTraining", fns.dwb_123.SetAutoTraining)
        dul_3("LootRange", fns.dwb_123.SetLootRange)
        dum_1("AutoLoot", fns.dwb_123.SetAutoLoot)
        dul_3("SoulRange", fns.dwb_123.SetSoulRange)
        dum_1("AutoSoul", fns.dwb_123.SetAutoSoul)
        dul_3("KillThreshold", fns.dwb_123.SetKillThreshold)
        dul_3("ChestKillThreshold", fns.dwb_123.SetChestKillThreshold)
        dum_1("ChestInstantKill", fns.dwb_123.SetChestInstantKill)
        dum_1("NoStun", fns.dwb_123.SetNoStun)
        dum_1("NoRagdoll", fns.dwb_123.SetNoRagdoll)
        dum_1("DisableAnimations", fns.dwb_123.SetDisableAnimations)
        dum_1("NoAttackSlowdown", fns.dwb_123.SetNoAttackSlowdown)
        dum_1("InstantKill", fns.dwb_123.SetInstantKill)
        dum_1("InfiniteStamina", fns.dwb_123.SetInfiniteStamina)
        dum_1("InfiniteClimb", fns.dwb_123.SetInfiniteClimb)
        dum_1("InfiniteHorseStamina", fns.dwb_123.SetInfiniteHorseStamina)
        dum_1("NoDrown", fns.dwb_123.SetNoDrown)
        dum_1("DisableShiftLock", fns.dwb_123.SetDisableShiftLock)
        dul_3("CustomSpawnPos", fns.dwb_123.SetCustomSpawn)
        dum_1("CustomRespawn", fns.dwb_123.SetAutoCustomRespawn)
        dul_3("NotifyBosses", fns.dwb_123.SetNotifyBosses)
        for k, v in pairs({
            NotifyBossSpawns = "boss",
            NotifyMuzan = "muzan",
            NotifyMarket = "market",
            NotifyTailor = "tailor",
            NotifyHunts = "hunt"
        }) do
            local duK = v
            dum_1(k, function(bz6)
                fns.dwb_123.SetNotification(duK, bz6)
            end)
        end
        dum_1("NoDashCooldown", fns.dwb_123.SetNoDashCooldown)
        dul_3("EspRange", fns.dwb_123.SetEspRange)
        for k, v in pairs({
            EspBox = "box",
            EspBoxFill = "boxFill",
            EspBox3D = "box3d",
            EspName = "name",
            EspDistance = "distance",
            EspHealthBar = "healthBar",
            EspHealthText = "healthText",
            EspTracer = "tracer",
            EspPlayerInfo = "playerInfo"
        }) do
            local duO = v
            dum_1(k, function(bAb)
                fns.dwb_123.SetEspOption(duO, bAb)
            end)
        end
        for k, v in pairs({
            EspNameColour = "name",
            EspDistanceColour = "distance",
            EspHealthBarColour = "health",
            EspDyingColour = "dying",
            EspHealthTextColour = "healthText",
            EspPlayerInfoColour = "info",
            EspEnemyColour = "Players",
            EspPartyColour = "Party",
            EspMobsColour = "Mobs",
            EspBossesColour = "Bosses",
            EspNpcsColour = "NPCs",
            EspMuzanColour = "Muzan",
            EspSpiderLilyColour = "Spider Lily",
            EspChestColour = "Chests",
            EspHorseColour = "Wild Horse",
            EspLeverColour = "Levers"
        }) do
            local duS = v
            dul_3(k, function(bAg)
                fns.dwb_123.SetEspColour(duS, bAg)
            end)
        end
        for k, v in pairs({
            EspPlayers = "Players",
            EspMobs = "Mobs",
            EspBosses = "Bosses",
            EspNpcs = "NPCs",
            EspMuzan = "Muzan",
            EspSpiderLily = "Spider Lily",
            EspChest = "Chests",
            EspHorse = "Wild Horse",
            EspLever = "Levers"
        }) do
            local duW = v
            dum_1(k, function(bAl)
                fns.dwb_123.SetEspCategory(duW, bAl)
            end)
        end
        fns.dwb_123.SettlePriority()
        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
            duY:Toggle(false)
        end
    end
    dvd_12()
end
fns.dwb_164_22()
