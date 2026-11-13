local fns = {}
local AutoPlaceBestFishGroup, ahH_3, ahH_6, ahH_14, AutoUpgradesGroup, ahH_19, ahH_22, ahH_26, ahH_29, ahH_33, AutoGemShopGroup, ahH_37, ahH_45, AutoBuyWeightsGroup, ahH_49, ahH_53, AutoSummonWeatherGroup, ahH_62, AutoRebirthGroup, ahH_66, ahH_77, ahH_82, ahH_86, ahH_90, ahH_92
local Iv
local IU
local HU
local Ji
local Ii
local JH
local connection3
local I5
local TrainToolConfig
local Ju
local Iu
local IT
local HT
local Jh
local Ih
local JG
local IG
local I4
local H4
local Jt
local It
local IS
local HS
local Jg
local Ig
local JF
local IF
local I3
local H3
local Js
local Is
local connection
local HR
local Jf
local If
local JE
local LocalPlayer
local I2
local H2
local IndexMilestoneConfig
local ActiveEffects
local IQ
local connection2
local FishRodConfig
local Ie
local JD
local ID
local I1
local Toggles
local Jq
local RebirthConfig
local IP
local HP
local Jd
local Id
local CollectionService
local IC
local I0
local H0
local Jp
local Ip
local IO
local Jc
local SpeedUpgradeConfig
local JB
local IB
local I_
local H_
local Jo
local Io
local VirtualUser
local Jb
local Ib
local JA
local IA
local IZ
local HZ
local Jn
local In
local IM
local Ja
local Ia
local Jz
local Iz
local IY
local HY
local Jm
local Im
local IL
local I9
local H9
local Jy
local Iy
local IX
local HX
local Jl
local calculateClickPower
local JK
local IK
local EquipBestConfig
local H8
local Jx
local DailyQuestConfig
local IW
local GetFishToRecive
local Jk
local Ik
local JJ
local IJ
local I7
local H7
local Jw
local Iw
local IV
local HV
local Jj
local Ij
local JI
local II
local I6
local H6
local Jv
function fns.fn4(kQ)
    local TY = HZ.capsuleBusy(kQ)
    local TZ = not TY or type(TY.startedAt) ~= "number"
    if TZ then
        return false
    end
    return workspace:GetServerTimeNow() - TY.startedAt >= IO.Laboratory.ScanDuration
end
function fns.fn17(kN)
    local TS = HZ.researchMap()
    local TT = TS[kN] or TS[tostring(kN)]
    local TX = if TT then 1 else 0
    local TV = 1718 * TX + 3642 * (1 - TX)
    local TW = 898 * TX + 950 * (1 - TX)
    if not ((TV * 51 + TW * 3417 + TV * TW) % 16777213 == 4698848) then
        TT = TS[tonumber(kN)]
    end
    return TT
end
function fns.fn22()
    for k, v in CollectionService:GetTagged(IO.FuelNpc.NpcTag) do
        if v:IsDescendantOf(workspace) then
            return v
        end
    end
    return nil
end
function fns.autoResearchLoop()
    while not Ja.Unloaded do
        task.wait(1)
        if Ja.Unloaded then
            break
        end
        if IB and Toggles.AutoResearch and Toggles.AutoResearch.Value then
            pcall(function()
                if HZ.flight.inFlight then
                    HZ.collectResearch()
                else
                    HZ.runResearch()
                end
            end)
        end
        if IB and Toggles.UfoAutoSell and Toggles.UfoAutoSell.Value then
            pcall(HZ.sellJunkWhenFull)
        end
    end
end
function fns.onSummonWeathers(rL)
    IQ = Jx(rL)
end
function fns.fn92(dn, ...)
    local MY_1
    local MX_1
    JK = JK + 1
    MX_1, MY_1 = pcall(IV, dn, ...)
    JK = JK - 1
    if not MX_1 then
        error(MY_1, 0)
    end
    return MY_1
end
function fns.fn116()
    local Mq = Ii()
    local Mr = not Mq
    local Mv = if Mr then 1 else 0
    local Mt = 2121 * Mv + 1396 * (1 - Mv)
    local Mu = 2654 * Mv + 3189 * (1 - Mv)
    if not ((Mt * 770 + Mu * 982 + Mt * Mu) % 16777213 == 9868532) then
        Mr = not Mq.inventory
    end
    if Mr then
        return 0
    end
    local Mr_1 = 0
    for k, v in Mq.inventory do
        if v.Category == "Fish" then
            Mr_1 = Mr_1 + (v.Stack or 0)
        end
    end
    return Mr_1
end
function fns.fn122()
    local TQ_1
    local TP_1
    local TO = HZ.eventState()
    if not TO then
        return 1
    end
    TP_1, TQ_1 = pcall(IO.GetUnlockedCapsuleCount, TO)
    local TO_1 = TP_1 and type(TQ_1) == "number" and math.max(TQ_1, 1)
    return TO_1 or 1
end
function fns.fn175(fQ)
    local Character = LocalPlayer.Character
    local Ps = Character and Character:FindFirstChild("HumanoidRootPart")
    if fQ and Ps and not Ps.Anchored then
        Ps.CFrame = fQ
    end
end
function fns.autoUfoLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local agN = I_.UfoLoopDelay and I_.UfoLoopDelay.Value or 2
        wait(agN)
        if Ja.Unloaded then
            break
        end
        if IB then
            pcall(function()
                if not HZ.flight.inFlight then
                    HZ.collectCanisters()
                    HZ.depositCanisters()
                end
            end)
        end
        if IB and Toggles.AutoUfo and Toggles.AutoUfo.Value then
            pcall(function()
                if HZ.flight.inFlight then
                    HZ.runFlight()
                    return
                end
                local agD = HZ.fuel() < HZ.fuelTarget()
                local agE = agD and #HZ.fuelCandidates() > 0
                if Toggles.UfoDriveAutoFish.Value then
                    local agE_2 = agD and not agE
                    if Toggles.AutoFish.Value ~= agE_2 then
                        Toggles.AutoFish:SetValue(agE_2)
                    end
                end
                if agD then
                    if Toggles.UfoAutoFuel.Value and agE then
                        HX()
                        HZ.feedFish()
                    end
                    return
                end
                if ID() then
                    return
                end
                HZ.boardShip()
            end)
        end
    end
end
function fns.fn219()
    local Xn = Ii()
    if not Xn or not Xn.baseSlots then
        return nil
    end
    local Xo_1 = nil
    local Xp = Xn.tycoonLevel or 1
    for k, v in Jf(Xp) do
        local Xp_1 = Xn.baseSlots[v]
        local Xq = Xp_1 and Xp_1.FishPlaced
        if Xq then
            local Xq_1 = Im(Xq, Xp_1.Mutation)
            if not Xo_1 or Xq_1 < Xo_1 then
                Xo_1 = Xq_1
            end
        end
    end
    return Xo_1
end
function fns.fn224()
    local RM = HZ.hud()
    local RN = RM and RM:FindFirstChild("CatchFishBar")
    local RM_1 = RN
    if RN then
        RN = RM_1:IsA("GuiObject")
    end
    if RN then
        RN = RM_1.Visible
    end
    if RN then
        Jc(RM_1)
        return true
    end
    return false
end
function fns.fn226()
    local MO = H0()
    local Character = LocalPlayer.Character
    local MQ = Character and Character:FindFirstChild("HumanoidRootPart")
    if not MO or not MQ or MQ.Anchored then
        return
    end
    local MP_2 = not Jq.IsInThrowZone or not Jq.IsInThrowZone()
    if MP_2 then
        MQ.CFrame = CFrame.new(MO.Position + Vector3.new(0, 4, 0))
        task.wait(1)
    end
end
function fns.fn246(uB, uC)
    return uB.level < uC.level
end
function fns.autoFishLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local aal = I_.FishLoopDelay and I_.FishLoopDelay.Value or 1
        wait(aal)
        if Ja.Unloaded then
            break
        end
        local aaj_1 = IB and HZ.flight.inFlight
        local aaj_2 = Toggles.AutoFish.Value and not ID()
        if aaj_2 and not aaj_1 then
            local aaj_3 = pcall(function()
                local aae_1
                if Jd() >= IP then
                    Ja:Notify("Fish inventory is full")
                    Toggles.AutoFish:SetValue(false)
                    return
                end
                if Toggles.FishTeleport.Value then
                    Jp()
                end
                LocalPlayer:SetAttribute("FishingSpeedMultiplier", Jw())
                Jl(true)
                local aac = Jd()
                I4(Jq.ThrowingSegment, Jq, true)
                local aad = os.clock()
                repeat
                    task.wait(0.25)
                    aae_1 = not ID() or os.clock() - aad > 120 or Ja.Unloaded
                until aae_1
                if ID() then
                    I4(Jq.RecoverThrow, Jq, "auto fish timeout")
                end
                HX()
                task.wait(I_.CastCooldown.Value)
                local aad_1 = Toggles.FishNotify.Value and Jd() > aac
                if aad_1 then
                    Ja:Notify("Caught a fish")
                end
            end)
            Jl(false)
            LocalPlayer:SetAttribute("FishingSpeedMultiplier", 1)
            if not aaj_3 then
                task.wait(1)
            end
        end
    end
end
function fns.fn270(hX)
    if Toggles.UfoNotify.Value and HZ.lastWarning ~= hX then
        HZ.lastWarning = hX
        Ja:Notify(hX)
    end
end
function fns.fn275()
    local Q2_1 = I_.UfoFuelTarget and I_.UfoFuelTarget.Value or 100
    return math.max(HZ.upgradeValue("FuelCapacity") * Q2_1 / 100, IO.Ship.MinFlightFuel)
end
function fns.fn277()
    local abl_4
    local abf = Ii()
    if not abf or not abf.baseSlots then
        return {}
    end
    local abg_1 = Jb[I_.UpgradeMinRarity.Value] or 0
    local Value = I_.UpgradeMaxLevel.Value
    local abi = {}
    for k, v in abf.baseSlots do
        local FishPlaced = v.FishPlaced
        local abj = v.Level or 1
        local abj_2
        local abj_1 = Ji[FishPlaced] and abj < Value
        if abj_1 then
            local abl_1 = Io(I3) or I3[tostring(k)]
            abj_1 = abl_1
        end
        if abj_1 then
            local abl_2 = Io(H7) or H7[FishPlaced]
            abj_1 = abl_2
        end
        if abj_1 then
            abj_1 = HV(FishPlaced) >= abg_1
        end
        if abj_1 then
            abj_1 = not Toggles.UpgradeMutatedOnly.Value or v.Mutation ~= nil
        end
        if abj_1 then
            abj_2, abl_4 = pcall(Ik.upgradeCost, FishPlaced, abj)
            local abf_2 = abj_2 and type(abl_4) == "number"
            if abf_2 then
                local abf_3 = #abi + 1
                local abj_3 = tostring(k)
                local abm = v.Earnings or 0
                abi[abf_3] = { slot = abj_3, cost = abl_4, level = abj, earnings = abm }
            end
        end
    end
    local sort = table.sort
    local abg_3 = JB[I_.UpgradePriority.Value] or JB["Cheapest First"]
    sort(abi, abg_3)
    return abi
end
function fns.fn317(eN, eO)
    local Oj_1
    if not eN then
        return -1
    end
    local perFish = Ik.perFish
    local FISH_MAX_LEVEL = Ik.FISH_MAX_LEVEL
    local Oh = eO ~= "" and eO
    local Oh_1
    local Oi = Oh or nil
    Oh_1, Oj_1 = pcall(perFish, LocalPlayer, eN, false, FISH_MAX_LEVEL, Oi)
    local Of_1 = Oh_1 and type(Oj_1) == "number"
    return Of_1 and Oj_1 or 0
end
function fns.fn333(m1)
    local VY_1
    local VX = not m1 or not getconnections
    local VX_1, VX_3
    if VX then
        return nil
    end
    VX_1, VY_1 = pcall(getconnections, m1.Triggered)
    local VZ = not VX_1 or type(VY_1) ~= "table"
    local VZ_1
    if VZ then
        return nil
    end
    for k, v in VY_1 do
        local VX_2 = v.Function or v.fn
        if type(VX_2) == "function" then
            local V8 = 1
            while V8 <= 20 do
                local V9 = V8
                VX_3, VZ_1 = pcall(debug.getupvalue, VX_2, V9)
                if not VX_3 then
                    break
                end
                local VX_4 = type(VZ_1) == "string" and VZ_1:find(":", 1, true)
                if VX_4 then
                    return VZ_1
                end
                V8 += 1
            end
        end
    end
    return nil
end
function fns.autoTrainLoop()
    while not Ja.Unloaded do
        local acy = I_.TrainLoopDelay and I_.TrainLoopDelay.Value or 1
        task.wait(acy)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoTrain.Value then
            pcall(function()
                local acm = Toggles.TrainPauseWhileFishing.Value and ID()
                if acm then
                    return
                end
                local acm_1 = Ii()
                if not acm_1 then
                    return
                end
                local Value = I_.TrainTool.Value
                local aco = Value == Jo and I7(acm_1)
                local acp = aco or Jj[Value]
                if not acp then
                    return
                end
                if acm_1.trainingTool ~= acp then
                    Jm.EquipTrainingTool:Fire(acp)
                    task.wait(0.5)
                end
                local Character = LocalPlayer.Character
                local aco_1 = Character and Character:FindFirstChildOfClass("Humanoid")
                local acp_1 = Character
                if acp_1 then
                    acp_1 = Character:FindFirstChild("HumanoidRootPart")
                end
                local aco_2 = acp_1
                if not aco_1 or not aco_2 then
                    return
                end
                local acp_3 = Character:FindFirstChild(acp) or LocalPlayer.Backpack:FindFirstChild(acp)
                local acp_4 = not acp_3 or not acp_3:IsA("Tool")
                if acp_4 then
                    return
                end
                if acp_3.Parent ~= Character then
                    aco_1:EquipTool(acp_3)
                    task.wait(0.2)
                end
                local acp_5 = os.clock() + I_.TrainBurst.Value
                while true do
                    local acq_1 = os.clock() < acp_5 and not Ja.Unloaded and Toggles.AutoTrain.Value and acp_3.Parent == Character
                    if acq_1 then
                        task.wait()
                        local acq_2 = Toggles.TrainPauseWhileFishing.Value and ID()
                        if acq_2 then
                            break
                        end
                        if Toggles.TrainKeepMobile.Value and aco_2.Anchored then
                            aco_2.Anchored = false
                        end
                        local attr = Character:GetAttribute("LastTrained")
                        local acr_1 = attr and attr > workspace:GetServerTimeNow()
                        if not acr_1 then
                            Jm.Train:Fire()
                        end
                        continue
                    end
                    break
                end
            end)
        end
    end
end
function fns.fn353()
    local WK = {}
    for k, v in { LocalPlayer:FindFirstChildOfClass("Backpack"), LocalPlayer.Character } do
        if v then
            for i, child in v:GetChildren() do
                local WL = child:IsA("Tool") and child:GetAttribute("IsFuelTank")
                if WL then
                    WK[#WK + 1] = child
                end
            end
        end
    end
    return WK
end
function fns.fn381()
    local RV_1
    local RU_1
    local RS = workspace:FindFirstChild(Jy.Spawn.ClientFishFolderName)
    local RT = {}
    if not RS then
        return RT
    end
    for i, child in RS:GetChildren() do
        local RS_1 = child:IsA("Model") and child:FindFirstChildWhichIsA("BasePart", true)
        if RS_1 then
            RV_1, RU_1 = nil, nil
            for i, descendant in child:GetDescendants() do
                local RS_2 = descendant:IsA("TextLabel") and descendant.Text:match("^Power%s")
                if RS_2 then
                    RV_1 = tonumber(descendant.Text:match("Power%s+(%d+)"))
                    RU_1 = descendant.Text:find("too strong") ~= nil
                    break
                end
            end
            if not RU_1 then
                RT[#RT + 1] = { model = child, power = RV_1 }
            end
        end
    end
    return RT
end
function fns.autoGemShopLoop()
    while not Ja.Unloaded do
        local aeD = I_.GemShopLoopDelay and I_.GemShopLoopDelay.Value or 10
        task.wait(aeD)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoGemShop.Value then
            pcall(function()
                local aem = Ii()
                if not aem then
                    return
                end
                local aeo = (aem.gems or 0) - I_.GemKeepAmount.Value
                local aep = aem.claimedDailyRewards or {}
                for k in IU do
                    if not Toggles.AutoGemShop.Value or Ja.Unloaded then
                        break
                    else
                        local aen_3 = DailyQuestConfig.RewardById[k]
                        local aeq = aen_3 and aen_3.Cost or 0
                        local aep_2 = aen_3
                        if aep_2 then
                            aep_2 = aen_3.Type == "Permanent"
                        end
                        if aep_2 then
                            aep_2 = aep[k]
                        end
                        local aeq_1 = aen_3
                        local aes = aep_2
                        if aeq_1 then
                            aeq_1 = not aes
                        end
                        if aeq_1 then
                            aeq_1 = aeq <= aeo
                        end
                        if aeq_1 then
                            Jm.RequestPurchaseDailyReward:Fire(k)
                            aeo = aeo - aeq
                            if Toggles.GemShopNotify.Value then
                                local aep_3 = aen_3.DisplayName or k
                                Ja:Notify("Bought " .. aep_3)
                            end
                            task.wait(0.5)
                        end
                    end
                end
            end)
        end
    end
end
function fns.fn407()
    return HZ.closures(HZ.oceanSystem, "ocean")
end
function fns.fn410()
    local MD_1
    local MC_1
    MD_1, MC_1 = nil, math.huge
    local Character = LocalPlayer.Character
    local MF = Character and Character:FindFirstChild("HumanoidRootPart")
    for k, v in CollectionService:GetTagged("ThrowZone") do
        if v:IsA("BasePart") then
            local MF_2 = MF and (v.Position - MF.Position).Magnitude or 0
            if MF_2 < MC_1 then
                MD_1, MC_1 = v, MF_2
            end
        end
    end
    return MD_1
end
function fns.onSellFishList(rP)
    IX = Jx(rP, HP)
end
function fns.fn415(iz)
    local RK = HZ.button(iz)
    if not RK then
        return false
    end
    if not II(RK) then
        Jc(RK)
    end
    return true
end
function fns.fn416(aw, ax)
    return aw.power < ax.power
end
function fns.fn446(hI)
    local QU = HZ.eventState()
    local QV_1 = QU and QU.upgrades and QU.upgrades[hI] or 0
    local QU_2 = IO.GetUpgradeValue(hI, QV_1) or 0
    return QU_2
end
function fns.autoEquipBestLoop()
    while not Ja.Unloaded do
        local abV = I_.EquipBestLoopDelay and I_.EquipBestLoopDelay.Value or 15
        task.wait(abV)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoEquipBest.Value then
            pcall(function()
                local abM = Ii()
                if not abM then
                    return
                end
                if not abM.hasEquipBest then
                    if Toggles.EquipBestBuyUnlock.Value and (abM.money or 0) >= EquipBestConfig.Cost then
                        Jm.RequestBuyEquipBest:Fire()
                    end
                    return
                end
                local abN_2 = I_.EquipBestMode.Value == "Best Possible" and Ia.Options.BestPossible or Ia.Options.BestNow
                Jm.RequestEquipBest:Fire(abN_2)
            end)
        end
    end
end
function fns.onFloatTypes(sO)
    IK = Jx(sO, HS)
end
function fns.fn511(gU)
    IY[gU] = true
    if not II(gU) then
        Jc(gU)
    end
end
function fns.fn541(cM)
    pcall(debug.setupvalue, Jq.StartAutoFishing, Jg, cM)
end
function fns.fn555()
    local Tk = not HZ.flight.inFlight or HZ.cargoCount() == 0
    if Tk then
        return false
    end
    local oceanCenter = HZ.flight.oceanCenter
    if oceanCenter then
        HZ.moveShip(oceanCenter)
    end
    local Tk_2 = os.clock() + 5
    while true do
        local Tl_1 = not HZ.flight.overIsland and os.clock() < Tk_2 and not Ja.Unloaded
        if Tl_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    if not HZ.flight.overIsland then
        return false
    end
    local Tk_3 = HZ.cargoCount()
    local Tl_2 = HZ.press("DropFishButton") or pcall(function()
        Jm.AlienUnloadCargo:Call():Await()
    end)
    if Tl_2 and Toggles.UfoNotify.Value then
        Ja:Notify("Delivered " .. Tk_3 .. " alien fish")
    end
    task.wait(0.3)
    return Tl_2
end
function fns.fn601()
    local M_ = I_.ReelMode and I_.ReelMode.Value
    local M__2
    local M0_2
    if M_ == IG then
        return 1
    elseif M_ == Iy then
        return Jz
    elseif M_ == Js then
        return I_.ReelSpeed and I_.ReelSpeed.Value or 1
    else
        M__2, M0_2 = pcall(calculateClickPower)
        local M__3 = M__2 and 15 + 0.9 * M0_2 or 0
        if M__3 <= 0 then
            return Jz
        end
        local M1_1 = I_.ReelMargin and I_.ReelMargin.Value or 1.25
        return math.max(1, Jn * M1_1 / M__3)
    end
end
function fns.antiAfkLoop()
    while not Ja.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local aa5 = tick() - Jh
            local aa6 = tick() - Ie
            if aa5 >= 300 and aa6 >= 60 then
                pcall(I1)
            else
                if aa5 < 300 and aa6 >= 300 then
                    pcall(I1)
                end
            end
        end
    end
end
function fns.fn634()
    local Xj = Jd()
    return Xj >= (I_.UfoInventoryFullAt and I_.UfoInventoryFullAt.Value or IP)
end
function fns.fn658()
    if not Toggles.AutoCanisters or not Toggles.AutoCanisters.Value then
        return 0
    elseif not Jt("AlienDepositFuelTank") then
        return 0
    else
        local W5_1 = HZ.fuelTankTools()
        if #W5_1 == 0 then
            return 0
        end
        local W6 = HZ.shipFuelTank() or HZ.fuelNpc()
        if not W6 then
            return 0
        end
        local W6_1 = W6:IsA("BasePart") and W6.CFrame
        local W8 = W6_1 or W6:GetPivot()
        local W7_1 = HR(W8.Position + Vector3.new(0, 4, 0))
        local W6_3 = 0
        for k, v in W5_1 do
            if Ja.Unloaded or not Toggles.AutoCanisters.Value then
                break
            elseif JF(v) then
                local W5_3 = pcall(function()
                    Jm.AlienDepositFuelTank:Call():Await()
                end)
                if W5_3 then
                    W6_3 = W6_3 + 1
                end
                task.wait(I_.UfoActionDelay.Value)
            end
        end
        Ju(W7_1)
        if W6_3 > 0 and Toggles.UfoNotify.Value then
            Ja:Notify("Deposited " .. W6_3 .. " fuel tanks")
        end
        return W6_3
    end
end
function fns.onFeedFish(sm)
    I0 = Jx(sm, HP)
end
function fns.fn675(co)
    return next(co) == nil
end
function fns.autoUpgradeFishLoop()
    while not Ja.Unloaded do
        local abK = I_.UpgradeLoopDelay and I_.UpgradeLoopDelay.Value or 2
        task.wait(abK)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoUpgradeFish.Value then
            pcall(function()
                local abu = Ii()
                local abu_1 = abu and abu.money
                local abB = if abu_1 then 1 else 0
                local abz = 1683 * abB + 2047 * (1 - abB)
                local abA = 3250 * abB + 3885 * (1 - abB)
                if not ((abz * 2877 + abA * 2236 + abz * abA) % 16777213 == 801528) then
                    abu_1 = 0
                end
                local abv_1 = abu_1
                local abu_2 = H8(I_.UpgradeKeepPercent.Value)
                local abw = abv_1 * (I_.UpgradeMaxCostPercent.Value / 100)
                local abv_2 = 0
                for k, v in IL() do
                    if abv_2 >= I_.UpgradesPerCycle.Value or Ja.Unloaded or not Toggles.AutoUpgradeFish.Value then
                        break
                    end
                    if v.cost <= abu_2 and v.cost <= abw then
                        Jm.RequestUpgradeFish:Fire(v.slot)
                        abu_2 = abu_2 - v.cost
                        abv_2 = abv_2 + 1
                        if Toggles.UpgradeNotify.Value then
                            Ja:Notify("Upgraded slot " .. v.slot .. " to level " .. v.level + 1)
                        end
                        task.wait(I_.UpgradeActionDelay.Value)
                    end
                end
            end)
        end
    end
end
function fns.fn741(kB)
    local researchUtil = HZ.researchUtil
    if not researchUtil or not kB then
        return false
    elseif not researchUtil.isAlienFish(kB.configName) then
        return false
    else
        return researchUtil.needsScan(researchUtil.fromProperty(kB.scanState))
    end
end
function fns.fn761(uz, uA)
    return uz.cost > uA.cost
end
function fns.fn767(eJ)
    local N8 = {}
    local N9 = eJ or ""
    for k in tostring(N9):gmatch("[^,%s]+") do
        N8[k] = true
    end
    return N8
end
function fns.fn785()
    local Yk = HZ.fuelNpc()
    if not Yk then
        return
    end
    HX()
    local Yl = Yk:IsA("BasePart") and Yk.CFrame
    local Ym = Yl or Yk:GetPivot()
    local Yl_1 = HZ.fuelCandidates()
    if #Yl_1 == 0 then
        return
    end
    local Ym_1 = HR(Ym.Position + Vector3.new(0, 4, 0))
    local Yk_2 = HZ.fuelTarget()
    local Yn = 0
    for k, v in Yl_1 do
        local Yl_2 = Ja.Unloaded or not Toggles.AutoUfo.Value or HZ.fuel() >= Yk_2
        if Yl_2 then
            break
        elseif JF(v.tool) then
            pcall(function()
                Jm.AlienGiveFuelFish:Call():Await()
            end)
            Yn = Yn + 1
            task.wait(I_.UfoActionDelay.Value)
        end
    end
    Ju(Ym_1)
    if Yn > 0 and Toggles.UfoNotify.Value then
        Ja:Notify("Fueled the ship with " .. Yn .. " fish")
    end
end
function fns.autoIndexLoop()
    while not Ja.Unloaded do
        local adY = I_.IndexLoopDelay and I_.IndexLoopDelay.Value or 10
        task.wait(adY)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoIndex.Value then
            pcall(function()
                local adC = Ii()
                if not adC then
                    return
                end
                local adE = adC.claimedIndexRewards or {}
                local adF = adC.index or {}
                for k, v in adF do
                    if not Toggles.AutoIndex.Value or Ja.Unloaded then
                        break
                    end
                    if v and not adE[k] then
                        Jm.RequestClaimIndexReward:Fire(k)
                        task.wait(I_.IndexActionDelay.Value)
                    end
                end
                if Toggles.IndexMilestones.Value then
                    local adE_4 = adC.claimedIndexMilestones or {}
                    for k, v in IndexMilestoneConfig.Milestones do
                        if not adE_4[v.id] then
                            Jm.RequestClaimIndexMilestone:Fire(v.id)
                            task.wait(I_.IndexActionDelay.Value)
                        end
                    end
                end
            end)
        end
    end
end
function fns.fn800()
    local QX = HZ.eventState()
    return QX and QX.fuel or 0
end
function fns.onCatMachineStateChanged(q6)
    if typeof(q6) ~= "table" then
        return
    end
    JJ.State = q6.State
    JJ.FedCount = q6.FedCount
    JJ.OwnerId = q6.OwnerId
end
function fns.fn826(aR, aS)
    return aR.add < aS.add
end
function fns.fn919(kp, kq)
    local Tv = next(kp.mutations) ~= nil
    if Toggles.UfoFuelMutatedOnly.Value and not Tv then
        return false
    end
    local Tw_1 = Tv and not Io(HZ.mutations)
    if Tw_1 then
        for k in kp.mutations do
            if not HZ.mutations[k] then
                return false
            end
        end
    end
    local Tv_1 = kq and Im(kp.configName, kp.mutation) > kq
    if Tv_1 then
        return false
    end
    local Tv_2 = Toggles.AutoResearch and Toggles.AutoResearch.Value and HZ.needsResearch(kp)
    if Tv_2 then
        return false
    end
    return true
end
function fns.fn930()
    local Character = LocalPlayer.Character
    local NA = Character and Character:FindFirstChildOfClass("Humanoid")
    if NA then
        NA:UnequipTools()
    end
end
function fns.fn933()
    local SB_1
    local SA_1
    local Sy = {}
    local boardShip = HZ.ride().boardShip
    if not boardShip then
        return Sy
    end
    local SF = 1
    while SF <= 40 do
        local SG = SF
        SA_1, SB_1 = pcall(debug.getupvalue, boardShip, SG)
        if not SA_1 then
            break
        end
        if type(SB_1) == "table" then
            if typeof(SB_1.basePivot) == "CFrame" then
                Sy[#Sy + 1] = SB_1
            end
            for k, v in SB_1 do
                local SA_2 = type(v) == "table" and typeof(v.basePivot) == "CFrame"
                if SA_2 then
                    Sy[#Sy + 1] = v
                end
            end
        end
        SF += 1
    end
    return Sy
end
function fns.fn959(cA)
    local Mf = Ji[cA]
    local Mg = Mf and Mf.Rarity
    local Mf_1 = Mg
    if Mg then
        Mg = Mf_1.power
    end
    return Mg or 0
end
function fns.fn967(bo, bp)
    local LV_1
    local LT = bo and bo:FindFirstChild(bp)
    local LT_1
    if not LT then
        return nil
    end
    LT_1, LV_1 = pcall(require, LT)
    return LT_1 and LV_1 or nil
end
function fns.onApplyGameAutoSell()
    local ZK = Ii()
    if not ZK then
        return
    end
    local ZM = ZK.autoSellRarities or {}
    for k, v in Id do
        local ZL_1 = v
        for k, v2 in I5 do
            if (v2.displayName or k) == v then
                ZL_1 = v2.id or k
                break
            end
        end
        local ZM_3 = JI[v] == true
        if ZM[ZL_1] == true ~= ZM_3 then
            Jm.ToggleAutoSellRarity:Fire({ rarityId = ZL_1, enabled = ZM_3 })
            task.wait(0.1)
        end
    end
    Jm.SetAutoSellMinEarnings:Fire(I_.GameSellMinEarnings.Value)
    Ja:Notify("Applied game auto sell settings")
end
function fns.autoSellLoop()
    while not Ja.Unloaded do
        local aek = I_.SellLoopDelay and I_.SellLoopDelay.Value or 5
        task.wait(aek)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoSell.Value then
            pcall(function()
                local ad4_1
                local ad_ = Ii()
                if not ad_ or not ad_.inventory then
                    return
                end
                if Jd() < I_.SellMinFish.Value then
                    return
                end
                local Value = I_.SellMode.Value
                if Value == "Sell All" then
                    Jm.SellAllFish:Fire()
                    if Toggles.SellNotify.Value then
                        Ja:Notify("Sold all fish")
                    end
                    return
                end
                local ad1 = Jb[I_.SellMaxRarity.Value]
                local ad8 = if ad1 then 1 else 0
                local ad6 = 1791 * ad8 + 139 * (1 - ad8)
                local ad7 = 2937 * ad8 + 24 * (1 - ad8)
                if not ((ad6 * 520 + ad7 * 2311 + ad6 * ad7) % 16777213 == 12978894) then
                    ad1 = 0
                end
                local ad2 = 0
                local ad3 = ad1
                for k, v in ad_.inventory do
                    if not Toggles.AutoSell.Value or Ja.Unloaded then
                        break
                    elseif v.Category == "Fish" then
                        local ad__2 = v.ConfigName or k:match("^([^@]+)")
                        if Value == "Selected Fish" then
                            ad4_1 = IX[ad__2] == true
                        else
                            ad4_1 = HV(ad__2) < ad3
                        end
                        if ad4_1 then
                            Jm.SellFish:Fire(k)
                            ad2 = ad2 + 1
                            task.wait(I_.SellActionDelay.Value)
                        end
                    end
                end
                if ad2 > 0 and Toggles.SellNotify.Value then
                    Ja:Notify("Sold " .. ad2 .. " fish")
                end
            end)
        end
    end
end
function fns.onUpgradeSlots(rs)
    I3 = Jx(rs)
end
function fns.fn1059(ux, uy)
    return ux.cost < uy.cost
end
function fns.fn1063()
    local Mm_1
    local Ml_1
    Ml_1, Mm_1 = pcall(debug.getupvalue, Jq.StartAutoFishing, In)
    return Ml_1 and Mm_1 == true
end
function fns.fn1095(jw)
    local shipModel = HZ.flight.shipModel
    if not shipModel then
        return false
    end
    local oceanCenter = HZ.flight.oceanCenter
    local Flight = IO.Ship.Flight
    local SR = shipModel:GetPivot().Position.Y
    if oceanCenter then
        SR = math.max(SR, oceanCenter.Y + Flight.HoverHeight)
    end
    local SS = Vector3.new(jw.X, SR, jw.Z)
    if oceanCenter then
        local ST = Vector3.new(SS.X - oceanCenter.X, 0, SS.Z - oceanCenter.Z)
        local SU = Flight.BoundsRadius - IO.Ship.Ride.HullRadius
        if ST.Magnitude > SU then
            SS = Vector3.new(oceanCenter.X, SR, oceanCenter.Z) + ST.Unit * SU
        end
    end
    local SP_1 = false
    for k, v in HZ.shipRecords() do
        local basePivot = v.basePivot
        v.basePivot = CFrame.new(SS) * (basePivot - basePivot.Position)
        SP_1 = true
    end
    if not SP_1 then
        local pivot = shipModel:GetPivot()
        shipModel:PivotTo(CFrame.new(SS) * (pivot - pivot.Position))
    end
    local SP_3 = os.clock() + 1.5
    while true do
        local SQ_2 = os.clock() < SP_3 and not Ja.Unloaded
        if SQ_2 then
            task.wait(0.05)
            local Position = shipModel:GetPivot().Position
            if (Vector3.new(Position.X, 0, Position.Z) - Vector3.new(SS.X, 0, SS.Z)).Magnitude <= Jy.Catch.BeamRange then
                return true
            end
            continue
        end
        break
    end
    HZ.warn("The UFO would not move, try a different executor")
    return false
end
function fns.fn1109()
    local UECS = Jq.UECS
    local OH = {}
    if not UECS then
        return OH
    end
    for k, v in { LocalPlayer:FindFirstChildOfClass("Backpack"), LocalPlayer.Character } do
        if v then
            for i, child in v:GetChildren() do
                if child:IsA("Tool") then
                    local OI = UECS:GetComponent(child, "FloatLootbox")
                    local OJ = OI and OI.ConfigName:Get()
                    local OJ_1 = type(OJ) == "string" and IF.Lootboxes[OJ]
                    if OJ_1 then
                        OH[#OH + 1] = { tool = child, configName = OJ }
                    end
                end
            end
        end
    end
    return OH
end
function fns.onUfoFuelFish(sA)
    HZ.fuelFish = Jx(sA, HP)
end
function fns.fn1125()
    Jq.ThrowWithForce = IM
    GetFishToRecive.InvokeServerAsync = nil
    Jl(false)
    pcall(JD)
    LocalPlayer:SetAttribute("FishingSpeedMultiplier", 1)
    connection2:Disconnect()
    connection3:Disconnect()
    if connection then
        connection:Disconnect()
    end
    print("Pull a Lucky Fish unloaded")
end
function fns.fn1127()
    local T0 = {}
    for k, v in CollectionService:GetTagged(IO.Laboratory.Tag) do
        local Uo = if v:IsDescendantOf(workspace) then 1 else 0
        if Uo == 1 then
            local attr = v:GetAttribute(IO.Laboratory.CapsuleIdAttribute)
            if type(attr) == "number" then
                local ProximityPrompt = v:FindFirstChildWhichIsA("ProximityPrompt", true)
                local T3
                for i, descendant in v:GetDescendants() do
                    local T4_1 = descendant:IsA("TextLabel") and descendant.Name == IO.Laboratory.ProgressLabelName
                    if T4_1 then
                        T3 = descendant
                        break
                    end
                end
                local T5 = ProximityPrompt and ProximityPrompt.ActionText or ""
                local T4_3 = T3
                if T4_3 then
                    T4_3 = T3.Text == IO.Laboratory.ReadyText
                end
                local T5_1 = T4_3
                local T4_4 = #T0 + 1
                local T8 = ProximityPrompt and ProximityPrompt.Enabled or false
                local T7_1 = T5_1 or T5 == IO.Laboratory.PromptCollectActionText or HZ.capsuleReady(attr)
                local T5_2 = not HZ.capsuleBusy(attr) and T5 == IO.Laboratory.PromptInsertActionText
                T0[T4_4] = {
                    id = attr,
                    model = v,
                    prompt = ProximityPrompt,
                    label = T3,
                    action = T5,
                    enabled = T8,
                    collectable = T7_1,
                    empty = T5_2
                }
            end
        end
    end
    table.sort(T0, function(ld, le)
        return ld.id < le.id
    end)
    return T0
end
function fns.fn1130(p7)
    for i, descendant in p7:GetDescendants() do
        local YL = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if YL then
            return descendant
        end
    end
    return nil
end
function fns.onUfoMutations(sx)
    HZ.mutations = Jx(sx)
end
function fns.onEventShopItems(sh)
    HU = Jx(sh, H3)
end
function fns.onStatUpgrades(rD)
    H4 = Jx(rD)
end
function fns.fn1210()
    local UECS = Jq.UECS
    if not UECS then
        return 0
    end
    local Qs = 0
    for k, v in pairs(UECS:GetComponents("TycoonStand")) do
        if v.Owner:Get() == LocalPlayer then
            local Qr_1 = v.DisplayedCash:Get()
            if Qr_1 and Qr_1 ~= 0 and Qr_1 ~= "$0" then
                local Qr_2 = v.BaseSlotIndexName:Get()
                if type(Qr_2) == "string" then
                    Jm.RequestCollectCash:Fire(Qr_2)
                    Qs = Qs + 1
                end
            end
        end
    end
    return Qs
end
function fns.autoEventShopLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local aeY = I_.EventShopLoopDelay and I_.EventShopLoopDelay.Value or 10
        wait(aeY)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoEventShop and Toggles.AutoEventShop.Value then
            pcall(function()
                local aeF = Ii()
                if not aeF then
                    return
                end
                local aeH = aeF.catCoins or 0
                if IB then
                    aeH = IO.GetPlayerCoins(aeF)
                end
                local aeF_1 = aeH - I_.EventKeepCoins.Value
                local aeG_1 = IB
                if aeG_1 then
                    local aeH_1 = {}
                    local aeI_1 = HZ.eventState() or aeH_1
                    aeG_1 = aeI_1.storeStock
                end
                local aeH_2 = aeG_1 or nil
                local aeG_2 = IB
                if aeG_2 then
                    local aeH_3 = {}
                    local aeJ_1 = HZ.eventState() or aeH_3
                    aeG_2 = aeJ_1.storePurchases
                end
                local aeH_4 = aeG_2
                local aeR = if aeH_4 then 1 else 0
                local aeP = 3987 * aeR + 857 * (1 - aeR)
                local aeQ = 624 * aeR + 97 * (1 - aeR)
                if not ((aeP * 4077 + aeQ * 3418 + aeP * aeQ) % 16777213 == 4098506) then
                    aeH_4 = nil
                end
                local aeG_3 = aeH_4
                for k in HU do
                    if not Toggles.AutoEventShop.Value or Ja.Unloaded then
                        break
                    else
                        local aeH_6 = JE.AllItems[k]
                        local aeK = aeH_6 and aeH_6.Price or 0
                        local aeJ_3 = true
                        if aeH_2 then
                            local aeK_1 = tonumber(aeH_2[k]) or 0
                            local aeM = aeG_3
                            if aeM then
                                aeM = aeG_3[k]
                            end
                            local aeK_2 = tonumber(aeM) or 0
                            aeJ_3 = aeK_1 - aeK_2 > 0
                        end
                        if aeH_6 and aeJ_3 and aeK <= aeF_1 then
                            Jm.BuyEventStoreItem:Fire(k)
                            aeF_1 = aeF_1 - aeK
                            if Toggles.EventShopNotify.Value then
                                local aeJ_4 = aeH_6.DisplayName or k
                                Ja:Notify("Bought " .. aeJ_4)
                            end
                            task.wait(0.5)
                        end
                    end
                end
            end)
        end
    end
end
function fns.fn1223(gl, gm, gn)
    local PR = {}
    for k, v in H2() do
        local PS = Io(gl) or gl[v.configName]
        if PS and v.power <= gn then
            PR[#PR + 1] = v
        end
    end
    if gm == "Highest Rarity First" then
        table.sort(PR, function(gx, gy)
            return gx.power > gy.power
        end)
    elseif gm == "Lowest Rarity First" then
        table.sort(PR, function(gv, gw)
            return gv.power < gw.power
        end)
    end
    return PR
end
function fns.onInputChanged(s4)
    local UserInputType = s4.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        Jh = tick()
    end
end
function fns.fn1229(rb)
    local DiscordGroup = rb:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = IW })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = IW })
end
function fns.fn1231(uD, uE)
    return uD.earnings > uE.earnings
end
function fns.onUfoUpgrades(sF)
    HZ.upgrades = Jx(sF, HZ.upgradeIdByName)
end
function fns.fn1284()
    local UECS = Jq.UECS
    local Om = {}
    if not UECS then
        return Om
    end
    local Character = LocalPlayer.Character
    for k, v in { LocalPlayer:FindFirstChildOfClass("Backpack"), Character } do
        if v then
            for i, child in v:GetChildren() do
                if child:IsA("Tool") then
                    local On_1 = UECS:GetComponent(child, "PlaceableFish")
                    local Oo = On_1 and On_1.FishConfigName:Get()
                    local Oo_1 = type(Oo) == "string" and Ji[Oo]
                    if Oo_1 then
                        local Oo_2 = On_1.Mutation and On_1.Mutation:Get()
                        local Oq = Oo_2 or ""
                        local Oq_1 = On_1.ScanState and On_1.ScanState:Get()
                        local Or = Oq_1 or nil
                        local Or_1 = #Om + 1
                        local Os = On_1.Level and On_1.Level:Get()
                        local On_2 = Os or 1
                        Om[Or_1] = {
                            tool = child,
                            configName = Oo,
                            level = On_2,
                            mutation = Oq,
                            mutations = Iu(Oq),
                            scanState = Or,
                            power = HV(Oo)
                        }
                    end
                end
            end
        end
    end
    return Om
end
function fns.fn1290(dg, ...)
    local MT = getthreadidentity and getthreadidentity()
    local MU = MT or nil
    if setthreadidentity then
        pcall(setthreadidentity, 2)
    end
    local MU_1 = table.pack(pcall(dg, ...))
    if setthreadidentity and MU then
        pcall(setthreadidentity, MU)
    end
    if not MU_1[1] then
        warn("[Ouroboros] " .. tostring(MU_1[2]))
    end
    return table.unpack(MU_1, 2, MU_1.n)
end
function fns.fn1294(fX, fY)
    local lootboxShopSoldSlots = fX.lootboxShopSoldSlots
    if type(lootboxShopSoldSlots) ~= "table" then
        return false
    elseif #lootboxShopSoldSlots > 0 then
        return table.find(lootboxShopSoldSlots, fY) ~= nil
    else
        local Pz = lootboxShopSoldSlots[fY] == true or lootboxShopSoldSlots[tostring(fY)] == true
        return Pz
    end
end
function fns.fn1297(dQ, dR)
    if Toggles.AutoFish and Toggles.AutoFish.Value then
        dR = JG
    end
    return I4(IM, dQ, dR)
end
function fns.fn1325()
    local Rf_1
    local Re_1
    local Rc = HZ.ocean()
    for k, v in { "tryCatch", "addFish", "stepFish", "removeFish", "pickTarget" } do
        local Rd = Rc[v]
        if Rd then
            local Rs = 1
            while Rs <= 40 do
                local Rt = Rs
                Re_1, Rf_1 = pcall(debug.getupvalue, Rd, Rt)
                if not Re_1 then
                    break
                end
                if type(Rf_1) == "table" then
                    local Re_2 = {}
                    for k, v in Rf_1 do
                        if type(v) == "table" then
                            local Rf_2 = rawget(v, "model")
                            local Rg = rawget(v, "id")
                            local Rh = rawget(v, "strength")
                            local Ri = Rf_2 and Rg and type(Rh) == "number"
                            if Ri then
                                local Rg_1 = Rf_2:IsDescendantOf(workspace) and not rawget(v, "beingCaught")
                                if Rg_1 then
                                    Re_2[#Re_2 + 1] = v
                                end
                            end
                        end
                    end
                    if #Re_2 > 0 then
                        return Re_2
                    end
                end
                Rs += 1
            end
        end
    end
    return {}
end
function fns.fn1334()
    local VF = {}
    local VG = {}
    local VH = {}
    local VI = workspace:FindFirstChild(IO.FuelDrops.TargetsContainer)
    if VI then
        VF[1] = VI
    end
    local AlienWeatherFX = workspace:FindFirstChild("AlienWeatherFX")
    if AlienWeatherFX then
        VF[#VF + 1] = AlienWeatherFX
    end
    if #VF == 0 then
        VF[1] = workspace
    end
    for k, v in VF do
        for i, descendant in v:GetDescendants() do
            local VF_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled and not VG[descendant]
            if VF_1 then
                local VF_2 = descendant.ActionText or ""
                local VF_4 = (descendant.ObjectText or "") == "Alien Supply Drop"
                if not VF_4 then
                    local VJ_1 = VF_2:find("Collect", 1, true) and VF_2:find("Fuel", 1, true)
                    VF_4 = VJ_1
                end
                if VF_4 then
                    VG[descendant] = true
                    VH[#VH + 1] = descendant
                end
            end
        end
    end
    return VH
end
function fns.onUnload()
    Ja:Unload()
end
function fns.fn1402(jQ)
    local tryCatch, S9
    local S7 = os.clock()
    while true do
        local S8_1 = os.clock() - S7 < 2 and not Ja.Unloaded
        if not S8_1 then
            HZ.report("no fish in beam range after teleport")
            return false
        end
        if HZ.press("CatchButton") then
            return true
        end
        local S8_2 = jQ or HZ.currentTarget()
        S9 = S8_2
        tryCatch = HZ.ocean().tryCatch
        if S9 and tryCatch then
            break
        end
        task.wait(0.1)
    end
    I4(tryCatch, S9)
    return true
end
function fns.fn1418(dY)
    local Ne = {}
    local Ng = dY.inventory or {}
    for k, v in Ng do
        if v.Category == "TrainingTool" then
            Ne[k] = true
        end
    end
    if dY.trainingTool then
        Ne[dY.trainingTool] = true
    end
    return Ne
end
function fns.fn1425(cu)
    local Mc = Ii()
    local Mc_1 = Mc and Mc.money or 0
    return Mc_1 - Mc_1 * (cu / 100)
end
function fns.onGemShopItems(sc)
    IU = Jx(sc, JH)
end
function fns.autoSummonWeatherLoop()
    while not Ja.Unloaded do
        local afQ = I_.SummonLoopDelay and I_.SummonLoopDelay.Value or 30
        task.wait(afQ)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoSummonWeather.Value then
            pcall(function()
                local afA = Ii()
                if not afA then
                    return
                end
                if (afA.rebirthLevel or 0) < Ih then
                    return
                end
                local afB_1 = Toggles.SummonOnlyWhenClear.Value and IZ()
                if afB_1 then
                    return
                end
                for k, v in IC do
                    if not Toggles.AutoSummonWeather.Value or Ja.Unloaded then
                        break
                    elseif IQ[v] then
                        local afB_3 = Jv[v]
                        local afC = afB_3
                        if afC then
                            local afD = not Toggles.SummonRequireFish.Value or I9(afB_3, afA)
                            afC = afD
                        end
                        if afC then
                            Jm.RequestSummonWeather:Fire(afB_3.Name)
                            if Toggles.SummonNotify.Value then
                                Ja:Notify("Summoned " .. v)
                            end
                            break
                        end
                    end
                end
            end)
        end
    end
end
function fns.fn1495()
    if not Toggles.UfoAutoSell or not Toggles.UfoAutoSell.Value then
        return 0
    elseif not HZ.inventoryFull() then
        return 0
    else
        local XS_1 = Ii()
        local XT = not XS_1
        local X_ = if XT then 1 else 0
        local XY = 2265 * X_ + 2560 * (1 - X_)
        local XZ = 1212 * X_ + 1225 * (1 - X_)
        if not ((XY * 3355 + XZ * 109 + XY * XZ) % 16777213 == 10476363) then
            XT = not XS_1.inventory
        end
        if XT then
            return 0
        end
        local XT_1 = HZ.weakestOccupiedScore()
        local XU = 0
        for k, v in XS_1.inventory do
            if Ja.Unloaded or not Toggles.UfoAutoSell.Value then
                break
            elseif not (v.Category ~= "Fish") then
                if not HZ.inventoryNeedsResearch(k, v) then
                    local XS_3 = HZ.inventoryMutation(k, v)
                    if not (XS_3 ~= "") then
                        local XV = Im(v.ConfigName, XS_3)
                        if not (XT_1 and XV > XT_1) then
                            Jm.SellFish:Fire(k)
                            XU = XU + 1
                            local wait = task.wait
                            local XW = I_.UfoActionDelay and I_.UfoActionDelay.Value or 0.1
                            wait(XW)
                        end
                    end
                end
            end
        end
        if XU > 0 and Toggles.UfoNotify and Toggles.UfoNotify.Value then
            Ja:Notify("Sold " .. XU .. " junk fish")
        end
        return XU
    end
end
function fns.autoEquipFloatsLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local ahC = I_.FloatLoopDelay and I_.FloatLoopDelay.Value or 10
        wait(ahC)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoEquipFloats and Toggles.AutoEquipFloats.Value then
            pcall(function()
                local ag3 = Ii()
                local ag4 = not ag3 or type(ag3.boughtSlots) ~= "table"
                if ag4 then
                    return
                end
                local ag4_1 = {}
                local ag6 = ag3.fishingFloats or {}
                for k, v in ag6 do
                    for k2, v in v do
                        local ag5_1 = Io(IK) or IK[k2]
                        if ag5_1 and IT[k] then
                            ag4_1[#ag4_1 + 1] = { name = k2, tier = k, rank = IT[k], count = v }
                        end
                    end
                end
                table.sort(ag4_1, function(Al, Am)
                    return Al.rank > Am.rank
                end)
                local ag6_2 = ag3.equippedFloats or {}
                local ag5_3 = {}
                for k, v in ag6_2 do
                    ag5_3[v.name] = true
                end
                for k, v in ag3.boughtSlots do
                    if Ja.Unloaded or not Toggles.AutoEquipFloats.Value then
                        break
                    else
                        local ag3_2 = ag6_2[tostring(v)]
                        local ag8 = ag3_2 and IT[ag3_2.tier] or 0
                        for k, v2 in ag4_1 do
                            if not (v2.count <= 0 or v2.rank <= ag8) then
                                if not (Toggles.FloatNoDuplicates.Value and ag5_3[v2.name]) then
                                    if ag3_2 then
                                        Jm.UnequipFishingFloat:Fire(v)
                                        ag5_3[ag3_2.name] = nil
                                        task.wait(0.4)
                                    end
                                    Jm.EquipFishingFloat:Fire({ FloatName = v2.name, Tier = v2.tier, Slot = v })
                                    v2.count = v2.count - 1
                                    ag5_3[v2.name] = true
                                    if Toggles.FloatNotify.Value then
                                        Ja:Notify(("Equipped %s [%s] in slot %s"):format(v2.name, v2.tier, tostring(v)))
                                    end
                                    task.wait(0.4)
                                    break
                                end
                            end
                        end
                    end
                end
            end)
        end
    end
end
function fns.fn1508()
    local OX = {}
    for i, child in workspace:GetChildren() do
        local OY = child.Name:match("^PlacedLootbox_(.+)$")
        if OY then
            local OZ = #OX + 1
            local O_ = tonumber(OY) or OY
            OX[OZ] = { id = O_, model = child }
        end
    end
    return OX
end
function fns.fn1526()
    local UECS = Jq.UECS
    if not UECS then
        return nil
    end
    for k, v in pairs(UECS:GetComponents("TycoonComponent")) do
        if v.Owner:Get() == LocalPlayer then
            local Entity = v.Entity
            local Pg = Entity and Entity:IsA("Model")
            if Pg then
                return Entity
            end
        end
    end
    return nil
end
function fns.fn1537()
    local R9
    local R8_1
    local Sg = 1
    while true do
        if not (Sg <= 40) then
            return nil
        end
        local Sh = Sg
        R8_1, R9 = pcall(debug.getupvalue, HZ.oceanSystem.Init, Sh)
        if not R8_1 then
            return nil
        end
        if type(R9) == "table" then
            local R8_2 = rawget(R9, "id")
            local Sa = rawget(R9, "model")
            local Sb = rawget(R9, "strength")
            local Sc = R8_2 and Sa and type(Sb) == "number"
            if Sc then
                break
            end
            Sg += 1
            continue
        end
        Sg += 1
    end
    return R9
end
function fns.fn1561()
    if setclipboard then
        setclipboard(HY)
    elseif toclipboard then
        toclipboard(HY)
    end
    Ja:Notify("Copied Discord invite to clipboard")
end
function fns.fn1564(ch, ci)
    local L_ = {}
    for k, v in ch do
        if v then
            local L1 = ci and ci[k] or k
            L_[L1] = true
        end
    end
    return L_
end
function fns.fn1575(x)
    local LF_1
    local LE_1
    local LD = IS.shared.config:FindFirstChild(x)
    if not LD then
        return nil
    end
    LE_1, LF_1 = pcall(require, LD)
    return LE_1 and LF_1 or nil
end
function fns.fn1577()
    for k, v in CollectionService:GetTagged(IO.ShipFuelTank.Tag) do
        if v:IsDescendantOf(workspace) then
            return v
        end
    end
    return nil
end
function fns.fn1626()
    local U0 = {}
    for k, v in H2() do
        if HZ.needsResearch(v) then
            U0[#U0 + 1] = v
        end
    end
    table.sort(U0, function(lK, lL)
        local UV = Jy.ScanCoinsByKind[lK.configName] or IO.Laboratory.DefaultScanCoins or 0
        local UW = Jy.ScanCoinsByKind[lL.configName] or IO.Laboratory.DefaultScanCoins
        local U_ = if UW then 1 else 0
        local UY = 1199 * U_ + 1703 * (1 - U_)
        local UZ = 2718 * U_ + 576 * (1 - U_)
        if not ((UY * 1434 + UZ * 3012 + UY * UZ) % 16777213 == 13164864) then
            UW = 0
        end
        return UV > UW
    end)
    return U0
end
function fns.auto2xTrainingLoop()
    while not Ja.Unloaded do
        task.wait(0.2)
        if Toggles.Auto2xTraining and Toggles.Auto2xTraining.Value then
            pcall(IJ)
        end
    end
end
function fns.fn1639(h0)
    if Toggles.UfoDebug.Value and HZ.lastReport ~= h0 then
        HZ.lastReport = h0
        Ja:Notify("UFO: " .. h0)
    end
end
function fns.fn1646(eC)
    local Character = LocalPlayer.Character
    local N2 = Character and Character:FindFirstChildOfClass("Humanoid")
    local N2_1 = not N2
    local N7 = if N2_1 then 1 else 0
    local N5 = 3929 * N7 + 449 * (1 - N7)
    local N6 = 2909 * N7 + 378 * (1 - N7)
    if not ((N5 * 3199 + N6 * 99 + N5 * N6) % 16777213 == 7509110) then
        N2_1 = not eC
    end
    local N7_1 = if N2_1 then 1 else 0
    local N5_1 = 1888 * N7_1 + 1088 * (1 - N7_1)
    local N6_1 = 637 * N7_1 + 177 * (1 - N7_1)
    if not ((N5_1 * 187 + N6_1 * 2820 + N5_1 * N6_1) % 16777213 == 3352052) then
        N2_1 = not eC.Parent
    end
    if N2_1 then
        return false
    end
    if eC.Parent ~= Character then
        N2:EquipTool(eC)
        task.wait(0.2)
    end
    return eC.Parent == Character
end
function fns.fn1648()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    Ie = tick()
end
function fns.fn1649()
    local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    local RC = PlayerGui and PlayerGui:FindFirstChild("MainUI")
    local RB_1 = RC
    if RC then
        RC = RB_1:FindFirstChild("UfoEvent")
    end
    return RC
end
function fns.fn1650(uF, uG)
    local abc = tonumber(uF.slot) or 0
    local abd = tonumber(uG.slot) or 0
    return abc < abd
end
function fns.fn1663(it)
    local RE = HZ.hud()
    local RF = RE and RE:FindFirstChild(it)
    local RE_1 = RF
    if RF then
        RF = RE_1:IsA("GuiButton")
    end
    if RF then
        RF = RE_1.Visible
    end
    if RF then
        return RE_1
    end
    return nil
end
function fns.fn1676(oU, oV)
    local Xz = oU:match("^.-@%d+@(.*)$")
    local XA = Xz ~= ""
    local XA_4
    local XB = type(Xz) == "string" and XA
    if XB then
        local XA_1 = Xz == "U"
        local XG = if XA_1 then 1 else 0
        local XE = 2824 * XG + 951 * (1 - XG)
        local XF = 1881 * XG + 3598 * (1 - XG)
        if not ((XE * 3710 + XF * 2159 + XE * XF) % 16777213 == 3072850) then
            XA_1 = Xz == "S"
        end
        local XJ = if XA_1 then 1 else 0
        local XH = 1068 * XJ + 53 * (1 - XJ)
        local XI = 2336 * XJ + 2955 * (1 - XJ)
        if not ((XH * 2374 + XI * 3460 + XH * XI) % 16777213 == 13112840) then
            XA_1 = Xz:match("^@[SU]$")
        end
        if XA_1 then
            return ""
        elseif Xz:sub(1, 1) == "@" then
            return ""
        else
            local XA_2 = Xz:match("^([^@]+)")
            if XA_2 and XA_2 ~= "U" and XA_2 ~= "S" and XA_2 ~= "unscanned" and XA_2 ~= "scanned" then
                return XA_2
            end
            local Xz_5 = oV and oV.ExtraInfo
            if type(Xz_5) == "table" then
                if type(XA_4.Mutation) == "string" then
                    return Xz_5.Mutation
                elseif type(XA_4.Mutations) == "string" then
                    return Xz_5.Mutations
                else
                    return ""
                end
            else
                return ""
            end
        end
    else
        XA_4 = oV and oV.ExtraInfo
        if type(XA_4) == "table" then
            if type(XA_4.Mutation) == "string" then
                return XA_4.Mutation
            elseif type(XA_4.Mutations) == "string" then
                return XA_4.Mutations
            else
                return ""
            end
        else
            return ""
        end
    end
end
function fns.fn1680()
    Ja.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
function fns.fn1682()
    local NZ_1
    local NY_1
    NY_1, NZ_1 = pcall(ActiveEffects.GetActive)
    local N_ = NY_1 and type(NZ_1) == "table" and next(NZ_1) ~= nil
    return N_
end
function fns.autoRebirthLoop()
    while not Ja.Unloaded do
        local aaD = I_.RebirthLoopDelay and I_.RebirthLoopDelay.Value or 5
        task.wait(aaD)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoRebirth.Value then
            pcall(function()
                local aas = Ii()
                if not aas then
                    return
                end
                local aat = aas.rebirthLevel
                local aaA = if aat then 1 else 0
                local aay = 1347 * aaA + 345 * (1 - aaA)
                local aaz = 2015 * aaA + 3041 * (1 - aaA)
                if not ((aay * 3958 + aaz * 371 + aay * aaz) % 16777213 == 8793196) then
                    aat = 0
                end
                local aau = aat
                if aau >= I_.RebirthMaxLevel.Value then
                    return
                end
                local aat_1 = RebirthConfig.Config[aau + 1]
                if aat_1 and (aas.strength or 0) >= aat_1.RequiredStrength then
                    Jm.RequestRebirth:Fire()
                    if Toggles.RebirthNotify.Value then
                        Ja:Notify("Rebirthed to level " .. aau + 1)
                    end
                end
            end)
        end
    end
end
function fns.onCrateTypes(sJ)
    JA = Jx(sJ, H6)
end
function fns.fn1734()
    if not Toggles.AutoResearch or not Toggles.AutoResearch.Value then
        return
    end
    HZ.collectResearch()
    if not HZ.flight.inFlight then
        HZ.feedResearch()
    end
end
function fns.autoStatUpgradesLoop()
    while not Ja.Unloaded do
        local ack = I_.StatLoopDelay and I_.StatLoopDelay.Value or 2
        task.wait(ack)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoStatUpgrades.Value then
            pcall(function()
                local ab2_1
                local ab1_1
                local ab0_2
                local abX = Ii()
                local abX_3
                if not abX then
                    return
                end
                local abY = H8(I_.StatKeepPercent.Value)
                local abZ = {}
                for k, v in SpeedUpgradeConfig do
                    local ab__1 = v.StateField
                    local ab0_1 = abX[v.StateField] or 0
                    abZ[ab__1] = ab0_1
                end
                local ab__2 = 0
                while true do
                    if ab__2 < I_.StatPerCycle.Value and not Ja.Unloaded and Toggles.AutoStatUpgrades.Value then
                        ab1_1, ab0_2 = nil, nil
                        for k, v in SpeedUpgradeConfig do
                            local abX_2 = Io(H4) or H4[v.DisplayName]
                            if abX_2 then
                                abX_3, ab2_1 = pcall(v.CostFunction, abZ[v.StateField])
                                local ab3 = abX_3 and type(ab2_1) == "number" and ab2_1 <= abY
                                if ab3 then
                                    ab3 = not ab0_2 or ab2_1 < ab0_2
                                end
                                if ab3 then
                                    ab1_1, ab0_2 = v, ab2_1
                                end
                            end
                        end
                        if not ab1_1 then
                            break
                        end
                        Jm[ab1_1.UpgradeRemote]:Fire()
                        abY = abY - ab0_2
                        abZ[ab1_1.StateField] = abZ[ab1_1.StateField] + 1
                        ab__2 = ab__2 + 1
                        if Toggles.StatNotify.Value then
                            Ja:Notify(ab1_1.DisplayName .. " -> " .. abZ[ab1_1.StateField])
                        end
                        task.wait(I_.StatActionDelay.Value)
                        continue
                    end
                    break
                end
            end)
        end
    end
end
function fns.onCookFish(sr)
    H_ = Jx(sr, HP)
end
function fns.fn1784(ei, ej)
    local NC = 0
    local NE = ei.inventory or {}
    for k, v in NE do
        if v.Category == "Fish" then
            local ND_1 = Ji[v.ConfigName]
            if ND_1 and ND_1.Rarity and ND_1.Rarity.id == ej then
                NC = NC + (v.Stack or 1)
            end
        end
    end
    return NC
end
function fns.fn1826(jZ)
    if not HZ.startCatch(jZ) then
        return false
    end
    local Tc = os.clock()
    while true do
        local Td_1 = not HZ.flight.fighting and os.clock() - Tc < 5 and not Ja.Unloaded
        if Td_1 then
            task.wait(0.05)
            continue
        end
        break
    end
    if not HZ.flight.fighting then
        HZ.report("catch did not start")
        return false
    end
    local pumpFight = HZ.ocean().pumpFight
    local Td_2 = 1 / Jy.Catch.MaxClicksPerSecond
    local Te = os.clock() + Jy.Minigame.FightTimeout + 5
    while true do
        local Tf = HZ.flight.fighting and os.clock() < Te and not Ja.Unloaded
        if Tf then
            if pumpFight then
                I4(pumpFight)
            end
            task.wait(Td_2)
            continue
        end
        break
    end
    HZ.report("catch finished")
    return true
end
function fns.fn1841(i2, i3)
    local Sk_1
    local Sj_1
    Sj_1, Sk_1 = pcall(Jy.GetMinCatchDuration, i2, i3)
    local Sl = Sj_1 and type(Sk_1) == "number"
    return Sl and Sk_1 or nil
end
function fns.fn1843(d2)
    local Np_1
    local No_1
    Np_1, No_1 = nil, nil
    for k in Ip(d2) do
        local Nq = TrainToolConfig[k]
        if Nq and (not No_1 or (Nq.AddStrength or 0) > No_1) then
            Np_1, No_1 = k, Nq.AddStrength or 0
        end
    end
    return Np_1
end
function fns.autoCookingLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local afy = I_.CookLoopDelay and I_.CookLoopDelay.Value or 5
        wait(afy)
        if Ja.Unloaded then
            break
        end
        local afw_1 = Toggles.AutoCooking and Toggles.AutoCooking.Value and not ID()
        if afw_1 then
            pcall(function()
                local afi = Ii()
                if not afi then
                    return
                end
                if afi.cookingState == "cooking" then
                    local afj_1 = workspace:GetServerTimeNow()
                    if afj_1 >= (afi.cookingStartTime or 0) + IA.CookingTime and Toggles.CookAutoClaim.Value then
                        Jm.CookingClaim:Fire()
                    end
                    return
                end
                if afi.cookingState ~= "idle" then
                    return
                end
                local Value = I_.CookTargetPoints.Value
                if (afi.cookingPoints or 0) < Value then
                    local afi_1 = Jb[I_.CookMaxRarity.Value] or 0
                    local afi_2 = Ig(H_, I_.CookOrder.Value, afi_1)
                    local afl_2 = nil
                    if Toggles.AutoPlaceFish.Value and Toggles.CookSkipPlaceable.Value then
                        afl_2 = Is()
                    end
                    local afk_5 = 0
                    for k, v in afi_2 do
                        if afk_5 >= I_.CookInsertPerCycle.Value or Ja.Unloaded or not Toggles.AutoCooking.Value then
                            break
                        end
                        if not (Toggles.CookSkipCatFish.Value and v.mutations[Iv]) then
                            local afi_5 = afl_2 and Im(v.configName, v.mutation) > afl_2
                            if not afi_5 then
                                if JF(v.tool) then
                                    Jm.CookingInsertFish:Fire()
                                    afk_5 = afk_5 + 1
                                    task.wait(0.4)
                                end
                            end
                        end
                    end
                end
                local afi_6 = Ii()
                local afk_6 = afi_6
                if afk_6 then
                    afk_6 = (afi_6.cookingPoints or 0) >= Value
                end
                if afk_6 then
                    afk_6 = afi_6.cookingState == "idle"
                end
                if afk_6 then
                    Jm.CookingStartCook:Fire()
                end
            end)
        end
    end
end
function fns.fn1920()
    local M9 = os.clock() + 20
    while true do
        local Na = JK > 0 and os.clock() < M9 and not Ja.Unloaded
        if Na then
            task.wait(0.1)
            continue
        end
        break
    end
end
function fns.fn1942()
    local Q_ = HZ.eventState()
    return Q_ and Q_.cargo and #Q_.cargo or 0
end
function fns.fn1948(lf)
    local Up = type(lf) == "table" and lf.model
    local Uq = Up or HZ.capsuleModel(lf)
    if not Uq then
        return nil
    end
    local Uq_1 = Uq:FindFirstChild(IO.Laboratory.MainPartName, true) or Uq:FindFirstChildWhichIsA("BasePart", true)
    local Ur = Uq_1
    if Uq_1 then
        Uq_1 = Ur.Position
    end
    local Ur_1 = Uq_1
    local Uy = if Ur_1 then 1 else 0
    local Uw = 3918 * Uy + 457 * (1 - Uy)
    local Ux = 3215 * Uy + 2285 * (1 - Uy)
    if not ((Uw * 3790 + Ux * 3101 + Uw * Ux) % 16777213 == 3860879) then
        Ur_1 = Uq:GetPivot().Position
    end
    return Ur_1
end
function fns.fn1950()
    local YB_1
    local YA_1
    local Character = LocalPlayer.Character
    local Yz = Character and Character:FindFirstChild("HumanoidRootPart")
    YB_1, YA_1 = nil, nil
    local Yz_1 = CollectionService:GetTagged(IO.Ship.Ride.Tag)
    Yz_1[#Yz_1 + 1] = workspace:FindFirstChild(IO.Ship.Ride.TemplateName)
    for k, v in Yz_1 do
        local Yz_2 = v and v:IsDescendantOf(workspace) and not v:FindFirstAncestor("teaser") and v:FindFirstChildWhichIsA("BasePart", true)
        if Yz_2 then
            local Yz_3 = Yz and (v:GetPivot().Position - Yz.Position).Magnitude
            local YC = Yz_3 or 0
            if not YA_1 or YC < YA_1 then
                YB_1, YA_1 = v, YC
            end
        end
    end
    return YB_1
end
function fns.fn1956()
    local PB = Ii()
    if not PB then
        return {}
    end
    local PC = {}
    local PD = PB.tycoonLevel or 1
    for k, v in Jf(PD) do
        local PD_1 = PB.baseSlots and PB.baseSlots[v]
        local PE = PD_1
        if PD_1 then
            PD_1 = PE.FishPlaced
        end
        local PF = PD_1
        local PD_2 = #PC + 1
        local PG = PF and Im(PF, PE.Mutation)
        local PE_1 = PG or -1
        PC[PD_2] = { name = v, score = PE_1 }
    end
    table.sort(PC, function(ge, gf)
        return ge.score < gf.score
    end)
    return PC
end
function fns.fn1972(lp)
    for k, v in CollectionService:GetTagged(IO.Laboratory.Tag) do
        local Uz = v:IsDescendantOf(workspace) and v:GetAttribute(IO.Laboratory.CapsuleIdAttribute) == lp
        if Uz then
            return v
        end
    end
    return nil
end
function fns.autoBuyCratesLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local agx = I_.CrateLoopDelay and I_.CrateLoopDelay.Value or 10
        wait(agx)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoBuyCrates and Toggles.AutoBuyCrates.Value then
            pcall(function()
                local afS = Ii()
                local afT = not afS
                local af0 = if afT then 1 else 0
                local afZ = 3842 * af0 + 3457 * (1 - af0)
                local af_ = 2202 * af0 + 3062 * (1 - af0)
                if not ((afZ * 733 + af_ * 2947 + afZ * af_) % 16777213 == 988351) then
                    afT = type(afS.lootboxShopItems) ~= "table"
                end
                if afT then
                    return
                end
                local afT_1 = H8(I_.CrateKeepPercent.Value)
                for k, v in afS.lootboxShopItems do
                    if Ja.Unloaded or not Toggles.AutoBuyCrates.Value then
                        break
                    else
                        local afU_1 = IF.Lootboxes[v]
                        local afW = afU_1 and afU_1.Price or 0
                        local afV_1 = afU_1 and JA[v] and afW <= afT_1 and not If(afS, k)
                        if afV_1 then
                            Jm.BuyFloatLootbox:Fire(k)
                            afT_1 = afT_1 - afW
                            if Toggles.CrateNotify.Value then
                                local afV_2 = afU_1.DisplayName or v
                                Ja:Notify("Bought " .. afV_2)
                            end
                            task.wait(0.5)
                        end
                    end
                end
            end)
        end
        local agv_2 = Toggles.AutoPlaceCrates and Toggles.AutoPlaceCrates.Value and not ID()
        if agv_2 then
            pcall(function()
                local af7 = I6()
                local af8 = #Iz()
                if #af7 == 0 or af8 >= IF.MaxPlacedLootboxes then
                    return
                end
                local af9_1 = Ib()
                if not af9_1 then
                    return
                end
                local aga
                if Toggles.CrateTeleport.Value then
                    aga = HR(af9_1:GetPivot().Position + Vector3.new(0, 5, 0))
                end
                for k, v in af7 do
                    if af8 >= IF.MaxPlacedLootboxes or Ja.Unloaded or not Toggles.AutoPlaceCrates.Value then
                        break
                    else
                        local Character = LocalPlayer.Character
                        local af9_2 = Character and Character:FindFirstChild("HumanoidRootPart")
                        local agb = af9_2
                        if af9_2 then
                            af9_2 = JF(v.tool)
                        end
                        if af9_2 then
                            local af9_3 = RaycastParams.new()
                            af9_3.FilterType = Enum.RaycastFilterType.Exclude
                            af9_3.FilterDescendantsInstances = { Character }
                            local af7_3 = workspace:Raycast(agb.Position, Vector3.new(0, -20, 0), af9_3)
                            local PlaceFloatLootbox = Jm.PlaceFloatLootbox
                            local agd = agb.Position.X
                            local af7_4 = af7_3 and af7_3.Position.Y or agb.Position.Y - 3
                            PlaceFloatLootbox:Fire(CFrame.new(agd, af7_4, agb.Position.Z))
                            af8 = af8 + 1
                            if Toggles.CrateNotify.Value then
                                Ja:Notify("Placed " .. v.configName)
                            end
                            task.wait(0.6)
                        end
                    end
                end
                Ju(aga)
            end)
        end
        local agv_3 = Toggles.AutoOpenCrates and Toggles.AutoOpenCrates.Value and not ID()
        if agv_3 then
            pcall(function()
                for k, v in Iz() do
                    if Ja.Unloaded or not Toggles.AutoOpenCrates.Value then
                        break
                    end
                    local agm_1 = Jk(v.model)
                    if agm_1 then
                        local agn
                        if Toggles.CrateTeleport.Value then
                            agn = HR(v.model:GetPivot().Position + Vector3.new(0, 5, 0))
                        end
                        if fireproximityprompt then
                            fireproximityprompt(agm_1)
                        else
                            Jm.OpenFloatLootbox:Fire(v.id)
                        end
                        if Toggles.CrateNotify.Value then
                            Ja:Notify("Opened a float crate")
                        end
                        task.wait(1)
                        Ju(agn)
                    end
                end
            end)
        end
    end
end
function fns.fn1979(er, es)
    local NQ = er.WeatherMachineRequirements or {}
    for k, v in NQ do
        local NP_1 = Iw(es, v.Rarity)
        if NP_1 < (v.Amount or 0) then
            return false
        end
    end
    return true
end
function fns.fn2017(hk, hl)
    local QJ_1, QJ_2
    local QD = HZ.closureCache[hl]
    if QD then
        return QD
    end
    local QD_1 = {}
    local QE = {}
    local Init = hk.Init
    local QG = 1
    local QH = { Init }
    while QH[QG] do
        local QF_1 = QH[QG]
        QG = QG + 1
        local QI = type(QF_1) == "function" and not QD_1[QF_1]
        local QI_1, QI_2
        if QI then
            QD_1[QF_1] = true
            QI_1, QJ_1 = pcall(debug.info, QF_1, "n")
            local QK = QI_1 and type(QJ_1) == "string" and QJ_1 ~= "" and not QE[QJ_1]
            if QK then
                QE[QJ_1] = QF_1
            end
            local QO = 1
            while QO <= 60 do
                local QP = QO
                QI_2, QJ_2 = pcall(debug.getupvalue, QF_1, QP)
                if not QI_2 then
                    break
                end
                if type(QJ_2) == "function" then
                    QH[#QH + 1] = QJ_2
                end
                QO += 1
            end
        end
    end
    HZ.closureCache[hl] = QE
    return QE
end
function fns.fn2023(o0, o1)
    local researchUtil = HZ.researchUtil
    local XO = o1 and o1.ConfigName
    local XP = not researchUtil or not XO or not researchUtil.isAlienFish(XO)
    if XP then
        return false
    end
    if o1.ExtraInfo and o1.ExtraInfo.Scanned == false then
        return true
    elseif o0:find("@@U", 1, true) then
        return true
    else
        return false
    end
end
function fns.onInputBegan()
    Jh = tick()
end
function fns.fn2057()
    local PlayerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    local Qi = PlayerGui and PlayerGui:FindFirstChild("MainUI")
    if not Qi then
        return false
    end
    local Qi_1 = false
    for i, child in Qi:GetChildren() do
        if child.Name == "ClickBonus" or child.Name == "ClickBonusExtra" then
            local Qh_3 = child:IsA("GuiButton") and child
            local Qj = Qh_3 or child:FindFirstChildWhichIsA("GuiButton", true)
            local Qh_4 = Qj
            if Qj then
                Qj = not IY[Qh_4]
            end
            if Qj then
                HT(Qh_4)
                Qi_1 = true
            end
        end
    end
    return Qi_1
end
function fns.fn2058()
    local serverProfile = It.serverProfile
    local Ma = serverProfile and serverProfile:getState()
    return Ma
end
function fns.autoCollectLoop()
    while not Ja.Unloaded do
        local aaq = I_.CollectLoopDelay and I_.CollectLoopDelay.Value or 1
        task.wait(aaq)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoCollect.Value then
            pcall(H9)
        end
    end
end
function fns.fn2076()
    local PO = I2()
    return PO[1] and PO[1].score
end
function fns.onGameSellRarities(rU)
    JI = Jx(rU)
end
function fns.onUpgradeFish(rv)
    H7 = Jx(rv, HP)
end
function fns.fn2096(i8)
    local So = (I_.UfoTargetOrder and I_.UfoTargetOrder.Value) ~= "Lowest Power First"
    local Sp
    for k, v in HZ.fishList() do
        local Sn_1 = Jy.IsHopeless(v.strength, i8)
        local Sq = not Sn_1
        if Sq ~= false then
            Sq = HZ.catchTime(v.strength, i8)
        end
        if Sq then
            local Sn_2 = not Sp
            if not Sn_2 then
                Sn_2 = So and v.strength > Sp.strength
            end
            if not Sn_2 then
                local Sq_2 = not So
                if Sq_2 ~= false then
                    Sq_2 = v.strength < Sp.strength
                end
                Sn_2 = Sq_2
            end
            if Sn_2 then
                Sp = v
            end
        end
    end
    return Sp
end
function fns.fn2161()
    local YT = HZ.shipRecords()[1]
    local YT_5
    local YU = YT and YT.model
    local YU_4
    local YV = YU or HZ.shipModel()
    if not YV then
        HZ.warn("The UFO has not spawned yet")
        return false
    end
    HR(YV:GetPivot().Position + Vector3.new(0, 6, 0))
    local FuelPerSecond = IO.Ship.FuelPerSecond
    local YW = HZ.fuel()
    local YV_2 = FuelPerSecond > 0 and FuelPerSecond
    local Y1 = if YV_2 then 1 else 0
    local Y_ = 1053 * Y1 + 538 * (1 - Y1)
    local Y0 = 2410 * Y1 + 3307 * (1 - Y1)
    if not ((Y_ * 1180 + Y0 * 154 + Y_ * Y0) % 16777213 == 4151410) then
        YV_2 = 1
    end
    local YX_1 = YW / YV_2
    local YV_3 = HZ.enterPrompt(YV)
    local YW_1 = YT or HZ.shipRecords()[1]
    local YT_1 = YW_1
    local YW_2 = os.clock()
    while true do
        local YY = not YV_3
        if YY ~= false then
            YY = not YT_1
        end
        if YY then
            YY = os.clock() - YW_2 < 5
        end
        if YY then
            YY = not Ja.Unloaded
        end
        if YY then
            task.wait(0.25)
            YV_3 = HZ.enterPrompt(YV)
            YT_1 = HZ.shipRecords()[1]
            continue
        end
        break
    end
    local boardShip = HZ.ride().boardShip
    if YV_3 and fireproximityprompt then
        fireproximityprompt(YV_3)
        local YT_2 = os.clock() + 25
        while true do
            local YU_3 = not HZ.flight.inFlight and os.clock() < YT_2 and not Ja.Unloaded
            if YU_4 then
                task.wait(0.2)
                continue
            end
            break
        end
        HZ.flightEndsAt = os.clock() + YX_1
        if YT_5 then
            Ja:Notify("Entered the UFO")
        end
        return HZ.flight.inFlight
    end
    if YT_1 and boardShip then
        I4(boardShip, YT_1)
        local YT_4 = os.clock() + 25
        while true do
            YU_4 = not HZ.flight.inFlight and os.clock() < YT_4 and not Ja.Unloaded
            if YU_4 then
                task.wait(0.2)
                continue
            end
            break
        end
        HZ.flightEndsAt = os.clock() + YX_1
        YT_5 = HZ.flight.inFlight and Toggles.UfoNotify.Value
        if YT_5 then
            Ja:Notify("Entered the UFO")
        end
        return HZ.flight.inFlight
    end
    HZ.warn("Cannot enter the UFO, stand next to it and retry")
    return false
end
function fns.fn2164()
    return HZ.closures(HZ.rideSystem, "ride")
end
function fns.fn2170(fI)
    local Character = LocalPlayer.Character
    local Pp = Character and Character:FindFirstChild("HumanoidRootPart")
    if not Pp or Pp.Anchored then
        return nil
    end
    local CFrame2 = Pp.CFrame
    Pp.CFrame = CFrame.new(fI)
    task.wait(0.6)
    return CFrame2
end
function fns.fn2179()
    local X6 = Jb[I_.UfoFuelMaxRarity.Value] or 0
    local X6_1 = Toggles.UfoFuelSkipPlaceable.Value and Is()
    local X8 = X6_1
    local Yd = if X8 then 1 else 0
    local Yb = 1011 * Yd + 506 * (1 - Yd)
    local Yc = 3927 * Yd + 872 * (1 - Yd)
    if not ((Yb * 2625 + Yc * 1992 + Yb * Yc) % 16777213 == 14446656) then
        X8 = nil
    end
    local X6_2 = {}
    local X9 = X8
    for k, v in Ig(HZ.fuelFish, I_.UfoFuelOrder.Value, X6) do
        if HZ.fuelAllowed(v, X9) then
            X6_2[#X6_2 + 1] = v
        end
    end
    return X6_2
end
function fns.fn2190()
    local QR = Ii()
    local QS = QR and QR.events
    local QR_1 = QS
    if QS then
        QS = QR_1[IO.EventId]
    end
    local QR_2 = QS
    local QS_1 = type(QR_2) == "table" and QR_2
    return QS_1 or nil
end
function fns.autoBuyWeightLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local adA = I_.WeightLoopDelay and I_.WeightLoopDelay.Value or 5
        wait(adA)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoBuyWeight.Value or Toggles.AutoEquipWeight.Value then
            pcall(function()
                local adf_2
                local ade_2
                local ac9 = Ii()
                if not ac9 or not ac9.inventory then
                    return
                end
                local ada_1 = Ip(ac9)
                local adb = 0
                for k in ada_1 do
                    local adc_1 = TrainToolConfig[k]
                    if adc_1 then
                        local max = math.max
                        local adf_1 = adc_1.AddStrength
                        local adr_1 = if adf_1 then 1 else 0
                        local adp_1 = 1855 * adr_1 + 1342 * (1 - adr_1)
                        local adq_1 = 1189 * adr_1 + 475 * (1 - adr_1)
                        if not ((adp_1 * 1107 + adq_1 * 3763 + adp_1 * adq_1) % 16777213 == 8733287) then
                            adf_1 = 0
                        end
                        adb = max(adb, adf_1)
                    end
                end
                if Toggles.AutoBuyWeight.Value then
                    local adc_2 = H8(I_.WeightKeepPercent.Value)
                    adf_2, ade_2 = nil, nil
                    for k, v in TrainToolConfig do
                        local adg = v.Cost or 0
                        local adg_1 = v.AddStrength or 0
                        local adg_2 = not ada_1[k]
                        if adg_2 ~= false then
                            adg_2 = adg >= 0
                        end
                        if adg_2 then
                            adg_2 = adg <= adc_2
                        end
                        if adg_2 then
                            adg_2 = (ac9.rebirthLevel or 0) >= (v.RebirthRequired or 0)
                        end
                        if adg_2 then
                            adg_2 = adg_1 > adb
                        end
                        if adg_2 then
                            adg_2 = not ade_2 or adg_1 > ade_2
                        end
                        if adg_2 then
                            adf_2, ade_2 = k, adg_1
                        end
                    end
                    if adf_2 then
                        Jm.BuyTrainingTool:Fire(adf_2)
                        ada_1[adf_2] = true
                        if Toggles.WeightNotify.Value then
                            local ada_2 = TrainToolConfig[adf_2].DisplayName or adf_2
                            Ja:Notify("Bought " .. ada_2)
                        end
                        task.wait(0.5)
                    end
                end
                if Toggles.AutoEquipWeight.Value then
                    local ada_3 = (Ii())
                    local adr_2 = if ada_3 then 1 else 0
                    local adp_2 = 717 * adr_2 + 532 * (1 - adr_2)
                    local adq_2 = 1770 * adr_2 + 586 * (1 - adr_2)
                    if not ((adp_2 * 3854 + adq_2 * 1468 + adp_2 * adq_2) % 16777213 == 6630768) then
                        ada_3 = ac9
                    end
                    local ac9_1 = ada_3
                    local ada_4 = I7(ac9_1)
                    if ada_4 and ac9_1.trainingTool ~= ada_4 then
                        Jm.EquipTrainingTool:Fire(ada_4)
                    end
                end
            end)
        end
    end
end
local function autoFeedCatLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local afg = I_.FeedLoopDelay and I_.FeedLoopDelay.Value or 5
        wait(afg)
        if Ja.Unloaded then
            break
        end
        local afe_1 = Toggles.AutoFeedCat and Toggles.AutoFeedCat.Value and not ID()
        if afe_1 then
            pcall(function()
                local ae_ = JJ.OwnerId == nil
                local ae4 = if ae_ then 1 else 0
                local ae2 = 2192 * ae4 + 2954 * (1 - ae4)
                local ae3 = 321 * ae4 + 1432 * (1 - ae4)
                if not ((ae2 * 3652 + ae3 * 4002 + ae2 * ae3) % 16777213 == 9993458) then
                    ae_ = JJ.OwnerId == LocalPlayer.UserId
                end
                local ae0 = ae_
                if JJ.State == "done" then
                    if Toggles.FeedAutoClaim.Value and ae0 then
                        Jm.ClaimCatMachineReward:Fire()
                    end
                    return
                end
                local ae__2 = not ae0
                if not ae__2 then
                    ae__2 = JJ.State ~= "idle" and JJ.State ~= "feeding"
                end
                if ae__2 then
                    return
                end
                local ae0_2 = Jb[I_.FeedMaxRarity.Value] or 0
                local ae__4 = Ig(I0, I_.FeedOrder.Value, ae0_2)
                local ae0_3 = 0
                for k, v in ae__4 do
                    if ae0_3 >= I_.FeedPerCycle.Value or Ja.Unloaded or not Toggles.AutoFeedCat.Value then
                        break
                    end
                    if not (Toggles.FeedCatMutatedOnly.Value and not v.mutations[Iv]) then
                        if JF(v.tool) then
                            Jm.FeedCatMachine:Fire()
                            ae0_3 = ae0_3 + 1
                            task.wait(0.4)
                        end
                    end
                end
            end)
        end
    end
end
local function fn2212(fu)
    for i, descendant in fu:GetDescendants() do
        local O7 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Open" and descendant.Enabled
        if O7 then
            return descendant
        end
    end
    return nil
end
local function autoBuyRodLoop()
    while not Ja.Unloaded do
        local wait = task.wait
        local ac5 = I_.RodLoopDelay and I_.RodLoopDelay.Value or 5
        wait(ac5)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoBuyRod.Value or Toggles.AutoEquipRod.Value then
            pcall(function()
                local acH_1
                local acG_1
                local acD_3
                local acA = Ii()
                if not acA or not acA.inventory then
                    return
                end
                local acB_1 = {}
                for k, v in acA.inventory do
                    if v.Category == "FishRod" then
                        acB_1[k] = true
                    end
                end
                if acA.fishRod then
                    acB_1[acA.fishRod] = true
                end
                local acC = 0
                local acC_2
                for k in acB_1 do
                    local acD_1 = FishRodConfig[k]
                    if acD_1 then
                        local max = math.max
                        local acF_1 = acD_1.LuckMultiplier or 0
                        acC = max(acC, acF_1)
                    end
                end
                if Toggles.AutoBuyRod.Value then
                    local acD_2 = H8(I_.RodKeepPercent.Value)
                    local acE_2 = acA.rebirthLevel or 0
                    acH_1, acG_1 = nil, nil
                    for k, v in FishRodConfig do
                        local acE_3 = v.Cost or 0
                        local acE_4 = v.LuckMultiplier or 0
                        local acE_5 = not acB_1[k]
                        if acE_5 ~= false then
                            acE_5 = not v.Premium
                        end
                        if acE_5 then
                            acE_5 = acE_3 >= 0
                        end
                        if acE_5 then
                            acE_5 = acE_3 <= acD_2
                        end
                        if acE_5 then
                            acE_5 = acE_2 >= (v.RebirthRequired or 0)
                        end
                        if acE_5 then
                            acE_5 = acE_4 > acC
                        end
                        if acE_5 then
                            acE_5 = not acG_1 or acE_4 > acG_1
                        end
                        if acE_5 then
                            acH_1, acG_1 = k, acE_4
                        end
                    end
                    if acH_1 then
                        Jm.BuyFishRod:Fire(acH_1)
                        acB_1[acH_1] = true
                        if Toggles.RodNotify.Value then
                            local acC_1 = FishRodConfig[acH_1].DisplayName
                            local ac0 = if acC_1 then 1 else 0
                            local acZ = 2720 * ac0 + 1248 * (1 - ac0)
                            local ac_ = 3140 * ac0 + 2864 * (1 - ac0)
                            if not ((acZ * 2407 + ac_ * 2521 + acZ * ac_) % 16777213 == 6226567) then
                                acC_1 = acH_1
                            end
                            Ja:Notify("Bought " .. acC_1)
                        end
                        task.wait(0.5)
                    end
                end
                if Toggles.AutoEquipRod.Value then
                    acD_3, acC_2 = nil, nil
                    for k in acB_1 do
                        local acB_2 = FishRodConfig[k]
                        local acE_6 = acB_2
                        if acE_6 then
                            local acF_3 = not acC_2
                            if not acF_3 then
                                acF_3 = (acB_2.LuckMultiplier or 0) > acC_2
                            end
                            acE_6 = acF_3
                        end
                        if acE_6 then
                            acD_3, acC_2 = k, acB_2.LuckMultiplier or 0
                        end
                    end
                    if acD_3 and acA.fishRod ~= acD_3 then
                        Jm.EquipFishRod:Fire(acD_3)
                    end
                end
            end)
        end
    end
end
local function fn2220()
    local ZD_1
    local ZC_1
    if identifyexecutor then
        ZD_1, ZC_1 = identifyexecutor()
        local ZE = ZD_1 ~= ""
        local ZF = type(ZD_1) == "string" and ZE
        if ZF then
            local ZE_1 = type(ZC_1) == "string" and ZC_1 ~= "" and ZD_1 .. " " .. ZC_1
            local ZC_2 = ZE_1
            local ZJ = if ZC_2 then 1 else 0
            local ZH = 2842 * ZJ + 621 * (1 - ZJ)
            local ZI = 645 * ZJ + 177 * (1 - ZJ)
            if not ((ZH * 65 + ZI * 3499 + ZH * ZI) % 16777213 == 4274675) then
                ZC_2 = ZD_1
            end
            Ij = ZC_2
        end
    end
end
local function fn2238()
    local TK = HZ.eventState()
    return TK and TK.research or {}
end
HP = nil
connection2 = nil
HR = nil
HS = nil
HT = nil
HU = nil
HV = nil
GetFishToRecive = nil
HX = nil
HY = nil
HZ = nil
H_ = nil
H0 = nil
Toggles = nil
H2 = nil
H3 = nil
H4 = nil
TrainToolConfig = nil
H6 = nil
H7 = nil
H8 = nil
H9 = nil
Ia = nil
Ib = nil
SpeedUpgradeConfig = nil
Id = nil
Ie = nil
If = nil
Ig = nil
Ih = nil
Ii = nil
Ij = nil
Ik = nil
calculateClickPower = nil
Im = nil
In = nil
Io = nil
Ip = nil
RebirthConfig = nil
ActiveEffects = nil
Is = nil
It = nil
Iu = nil
Iv = nil
Iw = nil
DailyQuestConfig = nil
Iy = nil
Iz = nil
IA = nil
IB = nil
IC = nil
ID = nil
LocalPlayer = nil
IF = nil
IG = nil
connection3 = nil
II = nil
IJ = nil
IK = nil
IL = nil
IM = nil
VirtualUser = nil
IO = nil
IP = nil
IQ = nil
connection = nil
IS = nil
IT = nil
IU = nil
IV = nil
IW = nil
IX = nil
IY = nil
IZ = nil
I_ = nil
I0 = nil
I1 = nil
I2 = nil
I3 = nil
I4 = nil
I5 = nil
I6 = nil
I7 = nil
EquipBestConfig = nil
I9 = nil
Ja = nil
Jb = nil
Jc = nil
Jd = nil
FishRodConfig = nil
Jf = nil
Jg = nil
Jh = nil
Ji = nil
Jj = nil
Jk = nil
Jl = nil
Jm = nil
Jn = nil
Jo = nil
Jp = nil
Jq = nil
IndexMilestoneConfig = nil
Js = nil
Jt = nil
Ju = nil
Jv = nil
Jw = nil
Jx = nil
Jy = nil
Jz = nil
JA = nil
JB = nil
CollectionService = nil
JD = nil
JE = nil
JF = nil
JG = nil
JH = nil
JI = nil
JJ = nil
JK = nil
IS, CollectionService, VirtualUser, LocalPlayer = nil, nil, nil, nil
local ahH_44 = game:GetService("Players")
IS = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
LocalPlayer = ahH_44.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
ahH_3, Jq, It, Jm, RebirthConfig, Ji, Ik, FishRodConfig, SpeedUpgradeConfig, EquipBestConfig, Ia, I5, TrainToolConfig, ahH_62, JE, IO, Jy, IF, ahH_49, DailyQuestConfig, IndexMilestoneConfig, ahH_19, ahH_33, ActiveEffects, ahH_77, calculateClickPower, Jf, ahH_44, Ja, ahH_66, ahH_53, Toggles, I_, HY, JG, IP, Jz, IG, ahH_82, Iy, Js, Iv, Jn, ahH_92, IW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ahH_28 = 39
repeat
    ahH_37 = (ahH_28 * 23 + 15) % 26 + 1
    if ahH_37 <= 13 then
        if ahH_37 <= 7 then
            if ahH_37 <= 4 then
                if ahH_37 <= 2 then
                    if ahH_37 <= 1 then
                        local akz = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 17), string.byte(tostring(IO))), 16)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(akz, 1877446484), 2), 3214818641) ~= bit32.lrotate(akz, 2) then
                            Ji = "Cat"
                        else
                            Iv = "Cat"
                        end
                        ahH_28 = (ahH_28 + 173) % 208
                    else
                        local ajn = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 7), string.byte(tostring(I_))), 29)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ajn, 984956817), 1791998712), (bit32.bxor(bit32.band(ajn, 3310010478), 2477243314))), 1791998712), 2477243314) == ajn then
                            Jn = 0
                        else
                            Ja = 0
                        end
                        ahH_28 = (ahH_28 + 95) % 208
                    end
                elseif ahH_37 <= 3 then
                    ahH_22 = (vector.create((ahH_28 * 6 + 9) % 11 + 1, (ahH_28 * 10 + 10) % 13 + 1, (ahH_28 * 8 + 12) % 17 + 1))
                    ahH_6 = (vector.create((ahH_28 * 1 + 5) % 11 + 1, (ahH_28 * 7 + 5) % 13 + 1, (ahH_28 * 6 + 10) % 17 + 1))
                    ahH_86 = (vector.create((ahH_28 * 2 + 6) % 5 + 1, (ahH_28 * 2 + 1) % 7 + 1, (ahH_28 * 2 + 5) % 9 + 1))
                    if math.abs((vector.angle(ahH_22, ahH_6, ahH_86))) - math.abs((vector.angle(ahH_6, ahH_22, ahH_86))) == 2 then
                        It = "Pull a Lucky Fish"
                        IS = require(Jq.shared.UECS.Systems.Client.ThrowSystem)
                        ahH_3 = require(Jq.client.ClientPlayerData)
                    else
                        ahH_3 = "Pull a Lucky Fish"
                        Jq = require(IS.shared.UECS.Systems.Client.ThrowSystem)
                        It = require(IS.client.ClientPlayerData)
                    end
                    ahH_28 = (ahH_28 + 43) % 208
                else
                    ahH_22 = { "ssbpzcybwfa", "mub", "hfmvkx", "duilmt", "iecf", "pwyfx", "qnxqiotmgwq", "lqce" }
                    local ale = ahH_28
                    ahH_6 = ahH_22[ale % 8 + 1]
                    if ahH_6:len() <= ahH_6:reverse():rep(ale % 3 + 2):len() then
                        Jm = require(IS.shared.Remotes)
                        RebirthConfig = require(IS.shared.config.RebirthConfig)
                    else
                        IS = require(RebirthConfig.shared.Remotes)
                        Jm = require(RebirthConfig.shared.config.RebirthConfig)
                    end
                    ahH_28 = (ahH_28 + 121) % 208
                end
            elseif ahH_37 <= 6 then
                if ahH_37 <= 5 then
                    if (not IndexMilestoneConfig and TrainToolConfig or ahH_44 and not TrainToolConfig) and ((ahH_44 or IndexMilestoneConfig) and (ahH_44 or not ahH_44)) or not ((not IndexMilestoneConfig and TrainToolConfig or ahH_44 and not TrainToolConfig) and ((ahH_44 or IndexMilestoneConfig) and (ahH_44 or not ahH_44))) then
                        Ji = require(IS.shared.config.FishConfig)
                    else
                        IS = require(Ji.shared.config.FishConfig)
                    end
                    ahH_28 = (ahH_28 + 121) % 208
                else
                    ahH_22 = {
                        "pvzkkywsfvge",
                        "dkxfiniju",
                        "zyubx",
                        "form",
                        "kojrafrxmolh",
                        "anbwpsemzdtk",
                        "ctn",
                        "yvzkocahebs",
                        "dbeqkijuwwtc",
                        "lfvjnxqzaqb",
                        "znblqszxbii",
                        "jvgifnvx",
                        "dnbrjh",
                        "qlmlpzns"
                    }
                    if ahH_22[(ahH_28 * 16 + 93) % 14 + 1] <= ahH_22[(ahH_28 * 16 + 93) % 14 + 1] then
                        Ik = require(IS.shared.util.FishEarnings)
                        FishRodConfig = require(IS.shared.config.FishRodConfig)
                    else
                        IS = require(FishRodConfig.shared.util.FishEarnings)
                        Ik = require(FishRodConfig.shared.config.FishRodConfig)
                    end
                    ahH_28 = (ahH_28 + 199) % 208
                end
            else
                ahH_22 = (vector.create((ahH_28 * 7 + 4) % 11 + 1, (ahH_28 * 7 + 13) % 13 + 1, (ahH_28 * 15 + 2) % 17 + 1))
                ahH_6 = (vector.create((ahH_28 * 6 + 8) % 11 + 1, (ahH_28 * 3 + 1) % 13 + 1, (ahH_28 * 9 + 12) % 17 + 1))
                local akJ = vector.cross(ahH_22, ahH_6)
                local akK = vector.dot(ahH_22, ahH_6)
                if vector.dot(akJ, akJ) + akK * akK == vector.dot(ahH_22, ahH_22) * vector.dot(ahH_6, ahH_6) then
                    SpeedUpgradeConfig = require(IS.shared.config.SpeedUpgradeConfig)
                else
                    IS = require(SpeedUpgradeConfig.shared.config.SpeedUpgradeConfig)
                end
                ahH_28 = (ahH_28 + 199) % 208
            end
        elseif ahH_37 <= 10 then
            if ahH_37 <= 9 then
                if ahH_37 <= 8 then
                    if (not Iy and IG and (ahH_33 and Jn) or ahH_33 and IW and (Iy or not IG)) and not (not Iy and IG and (ahH_33 and Jn) or ahH_33 and IW and (Iy or not IG)) then
                        IS = require(EquipBestConfig.shared.config.EquipBestConfig)
                    else
                        EquipBestConfig = require(IS.shared.config.EquipBestConfig)
                    end
                    ahH_28 = (ahH_28 + 199) % 208
                else
                    ahH_22 = { "mcazzj", "wzioobfdsul", "xbppf", "zitzbgfnsx", "nvmmkvk", "iugfxa", "gqxpxvxdd" }
                    local all = ahH_28
                    ahH_6 = ahH_22[all % 7 + 1]
                    if ahH_6:len() >= ahH_6:reverse():rep(all % 3 + 2):len() then
                        IS = require(TrainToolConfig.shared.util.EquipBestPlan)
                        Ia = require(TrainToolConfig.shared.config.rarityConfig)
                        I5 = require(TrainToolConfig.shared.config.TrainToolConfig)
                    else
                        Ia = require(IS.shared.util.EquipBestPlan)
                        I5 = require(IS.shared.config.rarityConfig)
                        TrainToolConfig = require(IS.shared.config.TrainToolConfig)
                    end
                    ahH_28 = (ahH_28 + 199) % 208
                end
            else
                if (ahH_28 * 3 + 1) * 13 % 4 == ((ahH_28 * 3 + 1) * 13 + 8) % 4 then
                    ahH_92 = fns.fn1575
                else
                    Jq = fns.fn1575
                end
                ahH_28 = (ahH_28 + 43) % 208
            end
        elseif ahH_37 <= 12 then
            if ahH_37 <= 11 then
                if ((IW or not ahH_53) and (I5 and I5) or (ahH_53 or not IW or (IW or ahH_53))) and (not I5 and not IW and (IW or I5) or (not IW or I5 or (not ahH_53 or not ahH_53))) and not (((IW or not ahH_53) and (I5 and I5) or (ahH_53 or not IW or (IW or ahH_53))) and (not I5 and not IW and (IW or I5) or (not IW or I5 or (not ahH_53 or not ahH_53)))) then
                    ahH_92 = JE("CatEventConfig")
                    ahH_62 = JE("EventStoreConfig")
                else
                    ahH_62 = ahH_92("CatEventConfig")
                    JE = ahH_92("EventStoreConfig")
                end
                ahH_28 = (ahH_28 + 173) % 208
            else
                ahH_22 = { "cayr", "uwe", "hjxvewkkeed", "xigp", "oanzet", "uzqfcetk", "qdomkw" }
                local akS = ahH_28
                ahH_6 = ahH_22[akS % 7 + 1]
                if ahH_6:len() >= ahH_6:gsub("(.)", "%1%1", akS % 3 % 2 + 1):len() then
                    ahH_92 = IO("AlienEventConfig")
                else
                    IO = ahH_92("AlienEventConfig")
                end
                ahH_28 = (ahH_28 + 43) % 208
            end
        else
            ahH_22 = (vector.create((ahH_28 * 6 + 8) % 11 + 1, (ahH_28 * 5 + 12) % 13 + 1, (ahH_28 * 15 + 11) % 17 + 1))
            ahH_6 = (vector.create((ahH_28 * 3 + 7) % 11 + 1, (ahH_28 * 1 + 13) % 13 + 1, (ahH_28 * 8 + 15) % 17 + 1))
            local akv = vector.cross(ahH_22, ahH_6)
            local akw = vector.dot(ahH_22, ahH_6)
            if vector.dot(akv, akv) + akw * akw == vector.dot(ahH_22, ahH_22) * vector.dot(ahH_6, ahH_6) then
                Jy = ahH_92("AlienOceanConfig")
                IF = ahH_92("FloatLootboxConfig")
            else
                ahH_92 = IF("AlienOceanConfig")
                Jy = IF("FloatLootboxConfig")
            end
            ahH_28 = (ahH_28 + 43) % 208
        end
    elseif ahH_37 <= 20 then
        if ahH_37 <= 17 then
            if ahH_37 <= 15 then
                if ahH_37 <= 14 then
                    ahH_22 = {
                        "vmoklgocjgwi",
                        "xeqxridltmx",
                        "prdwdvajubxh",
                        "cbvjaqgxq",
                        "zxcs",
                        "ivg",
                        "baqfndl",
                        "zacyssv",
                        "ttokkoia",
                        "aqhyybykffot",
                        "slsvfukfnw"
                    }
                    if ahH_22[(ahH_28 * 76 + 106) % 11 + 1] <= ahH_22[(ahH_28 * 76 + 106) % 11 + 1] then
                        ahH_49 = ahH_92("FishingFloatsConfig")
                    else
                        ahH_92 = ahH_49("FishingFloatsConfig")
                    end
                    ahH_28 = (ahH_28 + 121) % 208
                else
                    if (Js and not ahH_28 and (ahH_19 and Js) or false and ahH_19 and (not Toggles and ahH_19)) and (not ahH_28 or ahH_28 or (ahH_28 or not Toggles) or (ahH_19 or not ahH_28 or (Js or ahH_28))) or not ((Js and not ahH_28 and (ahH_19 and Js) or false and ahH_19 and (not Toggles and ahH_19)) and (not ahH_28 or ahH_28 or (ahH_28 or not Toggles) or (ahH_19 or not ahH_28 or (Js or ahH_28)))) then
                        DailyQuestConfig = require(IS.shared.config.DailyQuestConfig)
                    else
                        IS = require(DailyQuestConfig.shared.config.DailyQuestConfig)
                    end
                    ahH_28 = (ahH_28 + 43) % 208
                end
            elseif ahH_37 <= 16 then
                if ((JG and IW or (ahH_62 or IW)) and (not I_ or not ahH_62 or not I_ and JG) or ((ahH_62 or not ahH_62) and (IW and not IW) or (JG or ahH_62 or not ahH_62 and IW))) and not ((JG and IW or (ahH_62 or IW)) and (not I_ or not ahH_62 or not I_ and JG) or ((ahH_62 or not ahH_62) and (IW and not IW) or (JG or ahH_62 or not ahH_62 and IW))) then
                    ahH_19 = require(IndexMilestoneConfig.shared.config.IndexMilestoneConfig)
                    IS = require(IndexMilestoneConfig.shared.config.RebirthUnlocksConfig)
                else
                    IndexMilestoneConfig = require(IS.shared.config.IndexMilestoneConfig)
                    ahH_19 = require(IS.shared.config.RebirthUnlocksConfig)
                end
                ahH_28 = (ahH_28 + 43) % 208
            else
                ahH_22 = {
                    "uhphj",
                    "gelhirukhwo",
                    "garr",
                    "pzfpukzr",
                    "uyt",
                    "pchybhlzfeap",
                    "jrompca",
                    "plp",
                    "ydewyzdbae",
                    "ztllnltp",
                    "tpn",
                    "dzejc"
                }
                if ahH_22[(ahH_28 * 40 + 87) % 12 + 1] < ahH_22[(ahH_28 * 40 + 87) % 12 + 1] then
                    IS = require(ahH_33.shared.weather.WeatherRegistry)
                else
                    ahH_33 = require(IS.shared.weather.WeatherRegistry)
                end
                ahH_28 = (ahH_28 + 199) % 208
            end
        elseif ahH_37 <= 19 then
            if ahH_37 <= 18 then
                local ajo = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 14), string.byte(tostring(It))), 5)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ajo, 3914366029), 4), 2500314334) ~= bit32.lrotate(ajo, 4) then
                    IS = require(ActiveEffects.shared.effects.ActiveEffects)
                else
                    ActiveEffects = require(IS.shared.effects.ActiveEffects)
                end
                ahH_28 = (ahH_28 + 17) % 208
            else
                ahH_22 = { "ymxxsxhpzye", "pzpevevtvbc", "wedetjkkorb", "ptjgjrvt", "nnlrcfyxknq", "bcgubalmxv", "uhlmwsa" }
                local akV = ahH_28
                ahH_6 = ahH_22[akV % 7 + 1]
                if ahH_6:len() >= ahH_6:gsub("(.)", "%1%1", akV % 3 % 2 + 1):len() then
                    IS = require(ahH_77.shared.config.BiomesConfig)
                else
                    ahH_77 = require(IS.shared.config.BiomesConfig)
                end
                ahH_28 = (ahH_28 + 17) % 208
            end
        else
            ahH_22 = (vector.create((ahH_28 * 4 + 3) % 11 + 1, (ahH_28 * 8 + 12) % 13 + 1, (ahH_28 * 1 + 9) % 17 + 1))
            ahH_6 = (vector.create((ahH_28 * 2 + 1) % 11 + 1, (ahH_28 * 6 + 4) % 13 + 1, (ahH_28 * 12 + 3) % 17 + 1))
            local ajY = vector.dot(ahH_22, ahH_6)
            if ajY * ajY <= vector.dot(ahH_22, ahH_22) * vector.dot(ahH_6, ahH_6) then
                calculateClickPower = require(IS.shared.util.calculateClickPower)
                Jf = require(IS.shared.util.getAvilibleBaseSlotsNames)
            else
                Jf = require(calculateClickPower.shared.util.calculateClickPower)
                IS = require(calculateClickPower.shared.util.getAvilibleBaseSlotsNames)
            end
            ahH_28 = (ahH_28 + 17) % 208
        end
    elseif ahH_37 <= 23 then
        if ahH_37 <= 22 then
            if ahH_37 <= 21 then
                if ahH_28 * 42484861 + 2 + 1 >= ahH_28 * 42484861 + 2 + 1 + 2 then
                    ahH_53 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                else
                    ahH_44 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                end
                ahH_28 = (ahH_28 + 95) % 208
            else
                local alk = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 25), string.byte(tostring(I_))), 14)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(alk, 2486884183), 2181337688), (bit32.bxor(bit32.band(alk, 1808083112), 2264259619))), 2181337688), 2264259619) == alk then
                    Ja = loadstring(game:HttpGet(ahH_44 .. "Library.lua"))()
                    pcall(fns.fn1680)
                    ahH_66 = loadstring(game:HttpGet(ahH_44 .. "addons/ThemeManager.lua"))()
                    ahH_53 = loadstring(game:HttpGet(ahH_44 .. "addons/SaveManager.lua"))()
                    Toggles = Ja.Toggles
                    I_ = Ja.Options
                else
                    ahH_44 = loadstring(game:HttpGet(Toggles .. "Library.lua"))()
                    pcall(fns.fn1680)
                    Ja = loadstring(game:HttpGet(Toggles .. "addons/ThemeManager.lua"))()
                    I_ = loadstring(game:HttpGet(Toggles .. "addons/SaveManager.lua"))()
                    ahH_53 = ahH_44.Toggles
                    ahH_66 = ahH_44.Options
                end
                ahH_28 = (ahH_28 + 121) % 208
            end
        else
            if ahH_28 * 104152217 + 11 + 5 >= ahH_28 * 104152217 + 11 + 5 + 6 then
                ahH_33 = "https://discord.gg/ehKVq7pf7v"
            else
                HY = "https://discord.gg/ehKVq7pf7v"
            end
            ahH_28 = (ahH_28 + 69) % 208
        end
    elseif ahH_37 <= 25 then
        if ahH_37 <= 24 then
            local ak3 = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 28), string.byte(tostring(DailyQuestConfig))), 27)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ak3, 4104787265), 8), 2853519860) == bit32.lrotate(ak3, 8) then
                IW = fns.fn1561
                JG = 1
                IP = 180
                Jz = 50
                IG = "Normal Game Reel Speed"
            else
                IG = fns.fn1561
                Jz = 1
                JG = 180
                IP = 50
                IW = "Normal Game Reel Speed"
            end
            ahH_28 = (ahH_28 + 95) % 208
        else
            local aku = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 28), string.byte(tostring(IO))), 8)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(aku, 13567771), 3094733018), (bit32.bxor(bit32.band(aku, 4281399524), 3596917508))), 3094733018), 3596917508) ~= aku then
                Iy = "Boosted Reel Speed"
                ahH_82 = "Instant Reel Speed"
            else
                ahH_82 = "Boosted Reel Speed"
                Iy = "Instant Reel Speed"
            end
            ahH_28 = (ahH_28 + 43) % 208
        end
    else
        if (ahH_28 or not IW or (not FishRodConfig or ahH_3)) and (FishRodConfig and ahH_3 or ahH_28 and ahH_3) or not ((ahH_28 or not IW or (not FishRodConfig or ahH_3)) and (FishRodConfig and ahH_3 or ahH_28 and ahH_3)) then
            Js = "Custom Reel Speed"
        else
            IW = "Custom Reel Speed"
        end
        ahH_28 = (ahH_28 + 147) % 208
    end
until (ahH_28 * 61 + 200) % 208 == 161
for k, v in ahH_77 do
    ahH_44 = math.max
    ahH_28 = v.WallForwardSpeed or 0
    Jn = ahH_44(Jn, ahH_28)
end
In, Jg, Id, Jb = nil, nil, nil, nil
ahH_92 = 1
repeat
    ahH_44 = (ahH_92 * 1 + 1) % 2 + 1
    if ahH_44 <= 1 then
        local alg = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_92, 17), string.byte(tostring(Jb))), 24)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(alg, 1360338311), 767396228), (bit32.bxor(bit32.band(alg, 2934628984), 631540793))), 767396228), 631540793) == alg then
            In = 1
            Jg = 10
        else
            Jg = 1
            In = 10
        end
        ahH_92 = (ahH_92 + 3) % 8
    else
        ahH_44 = (vector.create((ahH_92 * 2 + 8) % 11 + 1, (ahH_92 * 4 + 3) % 13 + 1, (ahH_92 * 4 + 4) % 17 + 1))
        ahH_28 = (vector.create((ahH_92 * 2 + 8) % 11 + 1, (ahH_92 * 10 + 2) % 13 + 1, (ahH_92 * 7 + 16) % 17 + 1))
        local ak1 = vector.cross(ahH_44, ahH_28)
        local ak2 = vector.dot(ahH_44, ahH_28)
        if vector.dot(ak1, ak1) + ak2 * ak2 == vector.dot(ahH_44, ahH_44) * vector.dot(ahH_28, ahH_28) + 3 then
            Jb = {}
            Id = {}
        else
            Id = {}
            Jb = {}
        end
        ahH_92 = (ahH_92 + 1) % 8
    end
until (ahH_92 * 5 + 7) % 8 == 0
ahH_44 = {}
for k, v in I5 do
    ahH_28 = #ahH_44 + 1
    ahH_92 = v.displayName or k
    ahH_77 = v.power or 0
    ahH_44[ahH_28] = { name = ahH_92, power = ahH_77 }
end
table.sort(ahH_44, fns.fn416)
for k, v in ahH_44 do
    Id[#Id + 1] = v.name
    Jb[v.name] = v.power
end
HP = {}
ahH_44 = {}
for k, v in Ji do
    ahH_28 = v.DisplayName
    ahH_14 = if ahH_28 then 1 else 0
    ahH_45 = 3852 * ahH_14 + 112 * (1 - ahH_14)
    ahH_29 = 3096 * ahH_14 + 2403 * (1 - ahH_14)
    if not ((ahH_45 * 2942 + ahH_29 * 2458 + ahH_45 * ahH_29) % 16777213 == 14091131) then
        ahH_28 = k
    end
    ahH_92 = ahH_28
    if HP[ahH_92] then
        ahH_92 = ahH_92 .. " (" .. k .. ")"
    end
    ahH_44[#ahH_44 + 1] = ahH_92
    HP[ahH_92] = k
end
table.sort(ahH_44)
ahH_77 = {}
local ahH_47 = 1
while ahH_47 <= 100 do
    local ahH_32 = ahH_47
    ahH_77[ahH_32] = tostring(ahH_32)
    ahH_47 += 1
end
ahH_28 = {}
ahH_92 = {}
for k, v in SpeedUpgradeConfig do
    ahH_92[#ahH_92 + 1] = v.DisplayName
    ahH_28[v.DisplayName] = v
end
Jo, ahH_22, Jj = nil, nil, nil
ahH_37 = 1
repeat
    ahH_28 = (ahH_37 * 1 + 0) % 2 + 1
    if ahH_28 <= 1 then
        ahH_28 = { "dswossans", "bolwxt", "yrrjspby", "drdogxmqw", "asrmxgn", "tdahcppls", "fjyuzovormva", "gohnlg" }
        if ahH_28[(ahH_37 * 54 + 90) % 8 + 1] <= ahH_28[(ahH_37 * 54 + 90) % 8 + 1] then
            Jj = {}
        else
            ahH_22 = {}
        end
        ahH_37 = (ahH_37 + 7) % 8
    else
        if (not ahH_37 or not Jo or not ahH_37 and not ahH_37) and (not Jj and not ahH_37 or not ahH_37 and not ahH_37) and not ((not ahH_37 or not Jo or not ahH_37 and not ahH_37) and (not Jj and not ahH_37 or not ahH_37 and not ahH_37)) then
            ahH_22 = "Best Owned"
            Jo = { "Best Owned" }
        else
            Jo = "Best Owned"
            ahH_22 = { Jo }
        end
        ahH_37 = (ahH_37 + 7) % 8
    end
until (ahH_37 * 3 + 7) % 8 == 4
ahH_28 = {}
for k, v in TrainToolConfig do
    ahH_37 = #ahH_28 + 1
    ahH_6 = v.DisplayName or k
    ahH_86 = v.AddStrength or 0
    ahH_28[ahH_37] = { key = k, name = ahH_6, add = ahH_86 }
end
local ahH_70 = 6
repeat
    ahH_37 = {
        "oyodmwlgzyf",
        "ajmng",
        "qlsc",
        "ccuxgow",
        "lgxvjava",
        "wpnaow",
        "dizzumgi",
        "cuc",
        "mkbksns",
        "envoft",
        "gyvdqxyit",
        "ivkfrezk"
    }
    local akO = ahH_70
    ahH_6 = ahH_37[akO % 12 + 1]
    if ahH_6:len() >= ahH_6:reverse():rep(akO % 3 + 2):len() then
        table.sort(ahH_28, fns.fn826)
    else
        table.sort(ahH_28, fns.fn826)
    end
    ahH_70 = (ahH_70 + 5) % 8
until (ahH_70 * 5 + 3) % 8 == 2
for k, v in ahH_28 do
    ahH_22[#ahH_22 + 1] = v.name
    Jj[v.name] = v.key
end
H3 = nil
ahH_6 = {}
H3 = {}
ahH_37 = JE and JE.AllItems
ahH_28 = {}
ahH_86 = ahH_37
ahH_14 = if ahH_86 then 1 else 0
ahH_45 = 1247 * ahH_14 + 3895 * (1 - ahH_14)
ahH_29 = 78 * ahH_14 + 3676 * (1 - ahH_14)
if not ((ahH_45 * 1974 + ahH_29 * 3488 + ahH_45 * ahH_29) % 16777213 == 2830908) then
    ahH_86 = ahH_28
end
for k, v in ahH_86 do
    ahH_28 = v.DisplayName or k
    ahH_37 = v.Price or 0
    ahH_86 = ("%s ($%s)"):format(ahH_28, tostring(ahH_37))
    ahH_6[#ahH_6 + 1] = ahH_86
    ahH_28 = v.Id or k
    H3[ahH_86] = ahH_28
end
JH = nil
table.sort(ahH_6)
ahH_70 = {}
JH = {}
ahH_28 = {}
ahH_37 = DailyQuestConfig.RewardById
ahH_14 = if ahH_37 then 1 else 0
ahH_45 = 3173 * ahH_14 + 777 * (1 - ahH_14)
ahH_29 = 1198 * ahH_14 + 955 * (1 - ahH_14)
if not ((ahH_45 * 2205 + ahH_29 * 1156 + ahH_45 * ahH_29) % 16777213 == 12182607) then
    ahH_37 = ahH_28
end
for k, v in ahH_37 do
    ahH_28 = v.DisplayName or k
    ahH_37 = v.Cost or 0
    ahH_86 = ("%s (%s gems)"):format(ahH_28, tostring(ahH_37))
    ahH_70[#ahH_70 + 1] = ahH_86
    JH[ahH_86] = k
end
table.sort(ahH_70)
ahH_37 = ahH_62 and ahH_62.CookingSystem
IA, Jt = nil, nil
IA = ahH_37
Jt = function(a8)
    local LP_1
    local LO_1
    LO_1, LP_1 = pcall(function()
        return Jm[a8]
    end)
    return LO_1 and LP_1 ~= nil
end
ahH_86 = IA ~= nil and Jt("CatMachineStateChanged")
ahH_37 = ahH_86
ahH_62 = JE ~= nil and Jt("BuyEventStoreItem")
local ahH_57 = ahH_62
ahH_86 = IF ~= nil and Jt("BuyFloatLootbox")
local ahH_41 = ahH_86
ahH_62 = ahH_49 ~= nil and Jt("EquipFishingFloat")
ahH_86, HZ = nil, nil
ahH_28 = 9
repeat
    ahH_26 = (ahH_28 * 1 + 0) % 2 + 1
    if ahH_26 <= 1 then
        local ali = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_28, 26), string.byte(tostring(HZ))), 16)
        if bit32.bxor(bit32.lrotate(bit32.bxor(ali, 3716842597), 0), 3716842597) == bit32.lrotate(ali, 0) then
            HZ = {
                mutationNames = {},
                upgradeNames = {},
                upgradeIdByName = {},
                fuelFish = {},
                mutations = {},
                upgrades = {},
                closureCache = {},
                pendingFuelDrops = {}
            }
        else
            ahH_86 = {
                fuelFish = {},
                upgradeNames = {},
                pendingFuelDrops = {},
                mutationNames = {},
                mutations = {},
                upgrades = {},
                upgradeIdByName = {},
                closureCache = {}
            }
        end
        ahH_28 = (ahH_28 + 9) % 16
    else
        if ahH_28 * 83148537 + 8 + 6 >= ahH_28 * 83148537 + 8 + 6 + 1 then
            ahH_62 = ahH_86
        else
            ahH_86 = ahH_62
        end
        ahH_28 = (ahH_28 + 3) % 16
    end
until (ahH_28 * 7 + 11) % 16 == 14
ahH_26 = nil
local ahH_10 = 0
repeat
    ahH_28 = (ahH_10 * 1 + 0) % 2 + 1
    if ahH_28 <= 1 then
        local akt = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_10, 6), string.byte(tostring(ahH_26))), 23)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(akt, 859429039), 2063250668), (bit32.bxor(bit32.band(akt, 3435538256), 3011462512))), 2063250668), 3011462512) ~= akt then
            ahH_26 = fns.fn967
        else
            ahH_26 = fns.fn967
        end
        ahH_10 = (ahH_10 + 5) % 8
    else
        ahH_28 = (vector.create((ahH_10 * 6 + 3) % 11 + 1, (ahH_10 * 4 + 5) % 13 + 1, (ahH_10 * 14 + 8) % 17 + 1))
        ahH_62 = (vector.create((ahH_10 * 3 + 9) % 11 + 1, (ahH_10 * 11 + 5) % 13 + 1, (ahH_10 * 9 + 9) % 17 + 1))
        ahH_90 = (vector.create((ahH_10 * 3 + 8) % 11 + 1, (ahH_10 * 3 + 6) % 13 + 1, (ahH_10 * 1 + 4) % 17 + 1))
        local ahH_74 = (vector.create((ahH_10 * 1 + 6) % 5 + 1, (ahH_10 * 4 + 2) % 7 + 1, (ahH_10 * 5 + 4) % 9 + 1))
        if vector.dot(vector.cross(ahH_28, (vector.cross(ahH_62, ahH_90))), ahH_74) == vector.dot(ahH_62 * vector.dot(ahH_28, ahH_90) - ahH_90 * vector.dot(ahH_28, ahH_62), ahH_74) then
            HZ.flight = ahH_26(IS.client, "AlienFlightState")
            HZ.oceanSystem = ahH_26(IS.shared.UECS.Systems.Client, "AlienOceanFishing")
            HZ.rideSystem = ahH_26(IS.shared.UECS.Systems.Client, "AlienShipRide")
            HZ.researchUtil = ahH_26(IS.shared.util, "AlienResearch")
            HZ.buildInventoryKey = ahH_26(IS.shared.util, "buildInventoryKey")
        else
            IS.flight = HZ(ahH_26.client, "AlienFlightState")
            IS.oceanSystem = HZ(ahH_26.shared.UECS.Systems.Client, "AlienOceanFishing")
            IS.rideSystem = HZ(ahH_26.shared.UECS.Systems.Client, "AlienShipRide")
            IS.researchUtil = HZ(ahH_26.shared.util, "AlienResearch")
            IS.buildInventoryKey = HZ(ahH_26.shared.util, "buildInventoryKey")
        end
        ahH_10 = (ahH_10 + 1) % 8
    end
until (ahH_10 * 1 + 1) % 8 == 7
ahH_28 = IO ~= nil and Jy ~= nil
if ahH_28 then
    ahH_62 = 3
    repeat
        ahH_26 = (vector.create((ahH_62 * 2 + 7) % 11 + 1, (ahH_62 * 6 + 5) % 13 + 1, (ahH_62 * 5 + 13) % 17 + 1))
        ahH_10 = (vector.create((ahH_62 * 5 + 4) % 11 + 1, (ahH_62 * 1 + 13) % 13 + 1, (ahH_62 * 7 + 15) % 17 + 1))
        ahH_90 = (vector.create((ahH_62 * 2 + 7) % 11 + 1, (ahH_62 * 11 + 6) % 13 + 1, (ahH_62 * 9 + 9) % 17 + 1))
        if vector.dot(vector.cross(ahH_26, ahH_10), ahH_90) == vector.dot(vector.cross(ahH_10, ahH_90), ahH_26) + 4 then
            HZ = ahH_28.flight ~= nil
        else
            ahH_28 = HZ.flight ~= nil
        end
        ahH_62 = (ahH_62 + 3) % 4
    until (ahH_62 * 1 + 3) % 4 == 1
end
if ahH_28 then
    ahH_62 = 5
    repeat
        ahH_26 = { "xgeb", "orwakayb", "twgac", "tgbn", "dhbsz", "vvvoipi", "ueic", "eztfbwawmdg", "liyqbi" }
        local akE = ahH_62
        ahH_10 = ahH_26[akE % 9 + 1]
        if ahH_10:len() >= ahH_10:gsub("(.)", "%1%1", akE % 3 % 2 + 1):len() then
            HZ = ahH_28.oceanSystem ~= nil
        else
            ahH_28 = HZ.oceanSystem ~= nil
        end
        ahH_62 = (ahH_62 + 1) % 8
    until (ahH_62 * 5 + 7) % 8 == 5
end
if ahH_28 then
    ahH_62 = 1
    repeat
        local alr = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_62, 28), string.byte(tostring(ahH_62))), 18)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(alr, 2490070333), 3731544707), (bit32.bxor(bit32.band(alr, 1804896962), 3089993461))), 3731544707), 3089993461) ~= alr then
            HZ = ahH_28.rideSystem ~= nil
        else
            ahH_28 = HZ.rideSystem ~= nil
        end
        ahH_62 = (ahH_62 + 2) % 4
    until (ahH_62 * 3 + 2) % 4 == 3
end
if ahH_28 then
    ahH_28 = Jt("AlienFlightStart")
end
if ahH_28 then
    ahH_28 = Jt("AlienCatchStart")
end
if ahH_28 then
    ahH_28 = Jt("AlienGiveFuelFish")
end
IB = ahH_28
if IB then
    for k in IO.FuelNpc.MutationFuel do
        HZ.mutationNames[#HZ.mutationNames + 1] = k
    end
    ahH_28 = 2
    repeat
        ahH_62 = (vector.create((ahH_28 * 6 + 5) % 11 + 1, (ahH_28 * 10 + 2) % 13 + 1, (ahH_28 * 1 + 12) % 17 + 1))
        ahH_26 = (vector.create((ahH_28 * 5 + 3) % 11 + 1, (ahH_28 * 9 + 4) % 13 + 1, (ahH_28 * 5 + 11) % 17 + 1))
        local akL = vector.cross(ahH_62, ahH_26)
        local akM = vector.dot(ahH_62, ahH_26)
        if vector.dot(akL, akL) + akM * akM == vector.dot(ahH_62, ahH_62) * vector.dot(ahH_26, ahH_26) + 4 then
            table.sort(HZ.mutationNames)
        else
            table.sort(HZ.mutationNames)
        end
        ahH_28 = (ahH_28 + 1) % 4
    until (ahH_28 * 1 + 0) % 4 == 3
    for k, v in IO.OrderedUpgradeIds do
        ahH_28 = IO.Upgrades[v]
        ahH_62 = ahH_28 and ahH_28.DisplayName
        ahH_28 = ahH_62
        ahH_14 = if ahH_28 then 1 else 0
        ahH_45 = 3195 * ahH_14 + 1253 * (1 - ahH_14)
        ahH_29 = 3123 * ahH_14 + 90 * (1 - ahH_14)
        if not ((ahH_45 * 1226 + ahH_29 * 3290 + ahH_45 * ahH_29) % 16777213 == 7392512) then
            ahH_28 = v
        end
        ahH_62 = ahH_28
        HZ.upgradeNames[#HZ.upgradeNames + 1] = ahH_62
        HZ.upgradeIdByName[ahH_62] = v
    end
    if Jt("AlienFuelDrop") then
        pcall(function()
            Jm.AlienFuelDrop:On(function(bC)
                local LX = bC ~= ""
                local LY = type(bC) == "string" and LX
                if LY then
                    HZ.pendingFuelDrops[bC] = os.clock()
                end
            end)
        end)
    end
end
H6 = {}
ahH_28 = {}
if ahH_41 then
    for k, v in IF.LootboxOrder do
        ahH_62 = IF.Lootboxes[v]
        if ahH_62 then
            ahH_26 = ahH_62.DisplayName or v
            ahH_62 = ahH_26
            ahH_28[#ahH_28 + 1] = ahH_62
            H6[ahH_62] = v
        end
    end
end
ahH_10, HS, IT = nil, nil, nil
ahH_26 = 6
repeat
    ahH_62 = (ahH_26 * 1 + 1) % 2 + 1
    if ahH_62 <= 1 then
        if ahH_26 * 4430685 + 5 + 4 >= ahH_26 * 4430685 + 5 + 4 + 1 then
            ahH_10 = {}
        else
            IT = {}
        end
        ahH_26 = (ahH_26 + 7) % 8
    else
        ahH_62 = {
            "epnmh",
            "jyrqqhej",
            "uiyjpcq",
            "spzxtsrltxl",
            "dsz",
            "gvxwf",
            "chbysuam",
            "dqanrhbxsu",
            "yvqznexu"
        }
        if ahH_62[(ahH_26 * 29 + 66) % 9 + 1] <= ahH_62[(ahH_26 * 29 + 66) % 9 + 1] then
            ahH_10 = {}
            HS = {}
        else
            HS = {}
            ahH_10 = {}
        end
        ahH_26 = (ahH_26 + 3) % 8
    end
until (ahH_26 * 7 + 3) % 8 == 3
if ahH_86 then
    for k, v in ahH_49.TierOrder do
        IT[v] = k
    end
    for k, v in ahH_49.Floats do
        ahH_62 = v.DisplayName or k
        ahH_49 = ahH_62
        ahH_10[#ahH_10 + 1] = ahH_49
        HS[ahH_49] = k
    end
    table.sort(ahH_10)
end
Jv = {}
IC = {}
for k, v in ahH_33.Modules do
    ahH_62 = v.Config
    ahH_49 = ahH_62 and ahH_62.WeatherMachineRequirements
    if ahH_49 then
        ahH_49 = ahH_62.DisplayName or ahH_62.Name
        ahH_33 = ahH_49
        IC[#IC + 1] = ahH_33
        Jv[ahH_33] = ahH_62
    end
end
Ih = nil
ahH_49 = 3
repeat
    ahH_62 = { "mrgedl", "bkhjelvphs", "acxlfydta", "tqdcngw", "hjxljknjj", "dgbghbtmhfg", "zmwq" }
    local akB = ahH_49
    ahH_33 = ahH_62[akB % 7 + 1]
    if ahH_33:len() <= ahH_33:gsub("(.)", "%1%1", akB % 3 % 2 + 1):len() then
        table.sort(IC)
        Ih = 0
    else
        table.sort(Ih)
        IC = 0
    end
    ahH_49 = (ahH_49 + 0) % 8
until (ahH_49 * 5 + 2) % 8 == 1
ahH_62 = ahH_19.getByUIComponentName
if ahH_62 then
    ahH_49 = 0
    repeat
        local ak7 = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_49, 23), string.byte(tostring(ahH_49))), 27)
        if bit32.bxor(bit32.lrotate(bit32.bxor(ak7, 2317224762), 10), 2016209448) ~= bit32.lrotate(ak7, 10) then
            ahH_19 = ahH_62.getByUIComponentName("WeatherMachine")
        else
            ahH_62 = ahH_19.getByUIComponentName("WeatherMachine")
        end
        ahH_49 = (ahH_49 + 0) % 4
    until (ahH_49 * 3 + 2) % 4 == 2
end
ahH_33 = ahH_62
if ahH_62 then
    ahH_62 = ahH_33.RebirthRequired
end
ahH_49 = ahH_62 or 0
Ih = ahH_49
H7, I3, H4, I0, H_, IX, HU, IU, JI, IQ, JA, IK, GetFishToRecive, IV, JK, IM, IY, JJ, connection, Jx, Io, Ii, H8, HV, ID, Jl, Jd, H0, Jp, I4, Jw, HX, Ip, I7, JD, Iw, I9, IZ, JF, Iu, Im, H2, I6, Iz, Jk, Ib, HR, Ju, If, I2, Is, Ig, II, Jc, HT, IJ, H9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ahH_62 = 83
repeat
    ahH_49 = (ahH_62 * 11 + 14) % 15 + 1
    if ahH_49 <= 8 then
        if ahH_49 <= 4 then
            if ahH_49 <= 2 then
                if ahH_49 <= 1 then
                    if ahH_62 * 50662325 + 12 + 3 <= ahH_62 * 50662325 + 12 + 3 + 4 then
                        H8 = fns.fn1425
                        HV = fns.fn959
                    else
                        HV = fns.fn1425
                        H8 = fns.fn959
                    end
                    ahH_62 = (ahH_62 + 116) % 120
                else
                    ahH_33 = {
                        "asaoaxisasm",
                        "bxv",
                        "dxqlolstz",
                        "rwpjoq",
                        "edgfya",
                        "egorjbgksyu",
                        "ryc",
                        "uizgjqhv",
                        "dcmkfu"
                    }
                    local akQ = ahH_62
                    ahH_19 = ahH_33[akQ % 9 + 1]
                    if ahH_19:len() >= ahH_19:gsub("(.)", "%1%1", akQ % 3 % 2 + 1):len() then
                        Jl = fns.fn1063
                        Jp = fns.fn541
                        H0 = fns.fn116
                        Jd = fns.fn410
                        ID = fns.fn226
                    else
                        ID = fns.fn1063
                        Jl = fns.fn541
                        Jd = fns.fn116
                        H0 = fns.fn410
                        Jp = fns.fn226
                    end
                    ahH_62 = (ahH_62 + 26) % 120
                end
            elseif ahH_49 <= 3 then
                local akx = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_62, 13), string.byte(tostring(I7))), 9)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(akx, 477608529), 105168722), (bit32.bxor(bit32.band(akx, 3817358766), 2476329185))), 105168722), 2476329185) ~= akx then
                    IX = fns.fn1290
                else
                    I4 = fns.fn1290
                end
                ahH_62 = (ahH_62 + 26) % 120
            else
                if (ahH_62 * 2 + 9) * 16 % 3 == ((ahH_62 * 2 + 9) * 16 + 3) % 3 then
                    GetFishToRecive = Jm.GetFishToRecive
                    IV = GetFishToRecive.InvokeServerAsync
                    JK = 0
                    GetFishToRecive.InvokeServerAsync = fns.fn92
                    Jw = fns.fn601
                else
                    IV = GetFishToRecive.GetFishToRecive
                    Jw = IV.InvokeServerAsync
                    Jm = 0
                    IV.InvokeServerAsync = fns.fn92
                    JK = fns.fn601
                end
                ahH_62 = (ahH_62 + 26) % 120
            end
        elseif ahH_49 <= 6 then
            if ahH_49 <= 5 then
                ahH_33 = (vector.create((ahH_62 * 6 + 5) % 11 + 1, (ahH_62 * 1 + 1) % 13 + 1, (ahH_62 * 12 + 5) % 17 + 1))
                ahH_19 = (vector.create((ahH_62 * 3 + 3) % 11 + 1, (ahH_62 * 7 + 10) % 13 + 1, (ahH_62 * 8 + 13) % 17 + 1))
                ahH_26 = (vector.create((ahH_62 * 4 + 6) % 11 + 1, (ahH_62 * 5 + 6) % 13 + 1, (ahH_62 * 1 + 12) % 17 + 1))
                ahH_90 = (vector.create((ahH_62 * 5 + 4) % 5 + 1, (ahH_62 * 2 + 2) % 7 + 1, (ahH_62 * 3 + 7) % 9 + 1))
                if vector.dot(vector.cross(ahH_33, (vector.cross(ahH_19, ahH_26))), ahH_90) == vector.dot(ahH_19 * vector.dot(ahH_33, ahH_26) - ahH_26 * vector.dot(ahH_33, ahH_19), ahH_90) + 3 then
                    IM = fns.fn1920
                    Jq = HX.ThrowWithForce
                else
                    HX = fns.fn1920
                    IM = Jq.ThrowWithForce
                end
                ahH_62 = (ahH_62 + 11) % 120
            else
                ahH_33 = {
                    "lnhi",
                    "cddr",
                    "rknhhezj",
                    "bloymkrkenu",
                    "eufmeahxvw",
                    "uvfctymjry",
                    "anvpmwghyvs",
                    "contwvvspd"
                }
                if ahH_33[(ahH_62 * 67 + 4) % 8 + 1] < ahH_33[(ahH_62 * 67 + 4) % 8 + 1] then
                    Ip.ThrowWithForce = fns.fn1297
                    Iw = fns.fn1418
                    JD = fns.fn1843
                    I7 = fns.fn930
                    Jq = fns.fn1784
                else
                    Jq.ThrowWithForce = fns.fn1297
                    Ip = fns.fn1418
                    I7 = fns.fn1843
                    JD = fns.fn930
                    Iw = fns.fn1784
                end
                ahH_62 = (ahH_62 + 26) % 120
            end
        elseif ahH_49 <= 7 then
            if ahH_62 * 72895515 + 3 + 3 >= ahH_62 * 72895515 + 3 + 3 + 4 then
                JF = fns.fn1979
                I9 = fns.fn1682
                IZ = fns.fn1646
                Im = fns.fn767
                Iu = fns.fn317
            else
                I9 = fns.fn1979
                IZ = fns.fn1682
                JF = fns.fn1646
                Iu = fns.fn767
                Im = fns.fn317
            end
            ahH_62 = (ahH_62 + 41) % 120
        else
            ahH_33 = (vector.create((ahH_62 * 5 + 1) % 11 + 1, (ahH_62 * 3 + 1) % 13 + 1, (ahH_62 * 13 + 10) % 17 + 1))
            ahH_19 = (vector.create((ahH_62 * 1 + 8) % 11 + 1, (ahH_62 * 2 + 11) % 13 + 1, (ahH_62 * 9 + 13) % 17 + 1))
            ahH_26 = (vector.create((ahH_62 * 7 + 4) % 11 + 1, (ahH_62 * 8 + 6) % 13 + 1, (ahH_62 * 6 + 7) % 17 + 1))
            if vector.dot(vector.cross(ahH_33, ahH_19), ahH_26) == vector.dot(vector.cross(ahH_19, ahH_26), ahH_33) then
                H2 = fns.fn1284
                I6 = fns.fn1109
                Iz = fns.fn1508
                Jk = fn2212
                Ib = fns.fn1526
            else
                Ib = fns.fn1284
                H2 = fns.fn1109
                I6 = fns.fn1508
                Iz = fn2212
                Jk = fns.fn1526
            end
            ahH_62 = (ahH_62 + 56) % 120
        end
    elseif ahH_49 <= 12 then
        if ahH_49 <= 10 then
            if ahH_49 <= 9 then
                ahH_33 = (vector.create((ahH_62 * 7 + 9) % 11 + 1, (ahH_62 * 11 + 3) % 13 + 1, (ahH_62 * 6 + 1) % 17 + 1))
                local ak_ = vector.floor(ahH_33) + vector.ceil(ahH_33 * -1)
                if vector.dot(ak_, ak_) == 4 then
                    Ju = fns.fn2170
                    HR = fns.fn175
                else
                    HR = fns.fn2170
                    Ju = fns.fn175
                end
                ahH_62 = (ahH_62 + 56) % 120
            else
                ahH_33 = {
                    "azhdovpuwz",
                    "jbijkxfv",
                    "eurcyhl",
                    "crqwjaruxstw",
                    "krfqvgtfzs",
                    "krngcmd",
                    "sjsypv",
                    "neva",
                    "jwzbm",
                    "jsqzekg",
                    "oqpogizh",
                    "suzhwfulgve",
                    "ldisv",
                    "zve",
                    "tqty",
                    "epyihs"
                }
                if ahH_33[(ahH_62 * 45 + 27) % 16 + 1] < ahH_33[(ahH_62 * 45 + 27) % 16 + 1] then
                    I2 = fns.fn1294
                    If = fns.fn1956
                else
                    If = fns.fn1294
                    I2 = fns.fn1956
                end
                ahH_62 = (ahH_62 + 116) % 120
            end
        elseif ahH_49 <= 11 then
            if (ahH_62 * 3 + 2) * 5 % 4 == ((ahH_62 * 3 + 2) * 5 + 6) % 4 then
                Jc = fns.fn2076
                II = fns.fn1223
                Ig = function(gA)
                    local P8
                    if not getconnections then
                        return false
                    end
                    P8 = false
                    pcall(function()
                        for k, v in getconnections(gA.Activated) do
                            local P7 = v
                            local P0 = P7.Fire and pcall(function()
                                P7:Fire()
                            end)
                            if P0 then
                                P8 = true
                            else
                                local P0_2 = P7.Function and pcall(P7.Function)
                                if P0_2 then
                                    P8 = true
                                end
                            end
                        end
                    end)
                    return P8
                end
                IY = function(gL)
                    return pcall(function()
                        local VirtualInputManager = game:GetService("VirtualInputManager")
                        local Qb = gL.AbsolutePosition + gL.AbsoluteSize / 2
                        local Qc = Qb.Y
                        local ScreenGui = gL:FindFirstAncestorWhichIsA("ScreenGui")
                        if ScreenGui and not ScreenGui.IgnoreGuiInset then
                            Qc = Qc + game:GetService("GuiService"):GetGuiInset().Y
                        end
                        VirtualInputManager:SendMouseButtonEvent(Qb.X, Qc, 0, true, game, 0)
                        task.wait(0.05)
                        VirtualInputManager:SendMouseButtonEvent(Qb.X, Qc, 0, false, game, 0)
                    end)
                end
                Is = setmetatable({}, { __mode = "k" })
            else
                Is = fns.fn2076
                Ig = fns.fn1223
                II = function(gA)
                    local P8
                    if not getconnections then
                        return false
                    end
                    P8 = false
                    pcall(function()
                        for k, v in getconnections(gA.Activated) do
                            local P7 = v
                            local P0 = P7.Fire and pcall(function()
                                P7:Fire()
                            end)
                            if P0 then
                                P8 = true
                            else
                                local P0_1 = P7.Function and pcall(P7.Function)
                                if P0_1 then
                                    P8 = true
                                end
                            end
                        end
                    end)
                    return P8
                end
                Jc = function(gL)
                    return pcall(function()
                        local VirtualInputManager = game:GetService("VirtualInputManager")
                        local Qb = gL.AbsolutePosition + gL.AbsoluteSize / 2
                        local Qc = Qb.Y
                        local ScreenGui = gL:FindFirstAncestorWhichIsA("ScreenGui")
                        if ScreenGui and not ScreenGui.IgnoreGuiInset then
                            Qc = Qc + game:GetService("GuiService"):GetGuiInset().Y
                        end
                        VirtualInputManager:SendMouseButtonEvent(Qb.X, Qc, 0, true, game, 0)
                        task.wait(0.05)
                        VirtualInputManager:SendMouseButtonEvent(Qb.X, Qc, 0, false, game, 0)
                    end)
                end
                IY = setmetatable({}, { __mode = "k" })
            end
            ahH_62 = (ahH_62 + 56) % 120
        else
            if ahH_62 * 61275153 + 2 + 6 >= ahH_62 * 61275153 + 2 + 6 + 3 then
                JJ = fns.fn511
                HT = fns.fn2057
                IJ = fns.fn1210
                H9.closures = fns.fn2017
                H9.ocean = fns.fn407
                H9.ride = fns.fn2164
                H9.eventState = fns.fn2190
                H9.upgradeValue = fns.fn446
                H9.fuel = fns.fn800
                H9.cargoCount = fns.fn1942
                H9.fuelTarget = fns.fn275
                H9.warn = fns.fn270
                H9.report = fns.fn1639
                H9.fishList = fns.fn1325
                H9.hud = fns.fn1649
                H9.button = fns.fn1663
                H9.press = fns.fn415
                H9.clickFightPanel = fns.fn224
                H9.fishModels = fns.fn381
                H9.currentTarget = fns.fn1537
                H9.catchTime = fns.fn1841
                H9.bestFish = fns.fn2096
                H9.shipRecords = fns.fn933
                H9.moveShip = fns.fn1095
                H9.startCatch = fns.fn1402
                H9.catchFish = fns.fn1826
                H9.deliverCargo = fns.fn555
                H9.fuelNpc = fns.fn22
                H9.fuelAllowed = fns.fn919
                H9.needsResearch = fns.fn741
                H9.researchMap = fn2238
                H9.unlockedCapsuleCount = fns.fn122
                H9.capsuleBusy = fns.fn17
                H9.capsuleReady = fns.fn4
                H9.workspaceCapsules = fns.fn1127
                H9.capsulePosition = fns.fn1948
                H9.capsuleModel = fns.fn1972
                H9.fireResearchPrompt = function(lv)
                    if not lv or not lv.Parent then
                        return false
                    elseif fireproximityprompt then
                        pcall(fireproximityprompt, lv)
                        task.wait(0.2)
                        if not lv.Parent or not lv.Enabled or lv.ActionText == IO.Laboratory.PromptInsertActionText then
                            return true
                        end
                        local UP = lv.HoldDuration > 0 and lv.HoldDuration or 0
                        pcall(fireproximityprompt, lv, UP)
                        task.wait(0.2)
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(lv.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.2)
                        end
                        return true
                    else
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(lv.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.2)
                        end
                        return true
                    end
                end
                H9.researchCandidates = fns.fn1626
                H9.collectResearch = function()
                    if not Jt("AlienResearchCollect") then
                        return 0
                    end
                    local U8 = 0
                    local inFlight = HZ.flight.inFlight
                    for k, v in HZ.workspaceCapsules() do
                        local Vk = v
                        if Ja.Unloaded or not Toggles.AutoResearch.Value then
                            break
                        elseif not not Vk.collectable then
                            local Va_2 = HZ.capsuleBusy(Vk.id)
                            local Vb
                            if not inFlight then
                                local Vc_3 = HZ.capsulePosition(Vk)
                                local Vd = Vc_3 and HR(Vc_3 + Vector3.new(0, 4, 0))
                                Vb = Vd
                                task.wait(0.1)
                            end
                            if Vk.prompt and Vk.prompt.Parent then
                                HZ.fireResearchPrompt(Vk.prompt)
                            end
                            pcall(function()
                                Jm.AlienResearchCollect:Call(Vk.id):Await()
                            end)
                            task.wait(0.25)
                            if Vb then
                                Ju(Vb)
                            end
                            local Vb_2 = Va_2 and not HZ.capsuleBusy(Vk.id)
                            if Vb_2 then
                                U8 = U8 + 1
                                if Toggles.UfoNotify.Value then
                                    Ja:Notify("Collected research capsule " .. Vk.id)
                                end
                                task.wait(I_.UfoActionDelay.Value)
                            end
                        end
                    end
                    return U8
                end
                H9.feedResearch = function()
                    if not Jt("AlienResearchInsert") then
                        return 0
                    end
                    local Vl = HZ.flight.inFlight or ID()
                    if Vl then
                        return 0
                    end
                    HX()
                    local Vl_2 = HZ.researchCandidates()
                    if #Vl_2 == 0 then
                        return 0
                    end
                    local Vm = 1
                    local Vn = 0
                    for k, v in HZ.workspaceCapsules() do
                        local Vz = v
                        if Ja.Unloaded or not Toggles.AutoResearch.Value then
                            break
                        end
                        local Vo_4 = HZ.capsuleBusy(Vz.id) or Vz.collectable
                        if not Vo_4 then
                            local Vo_5 = Vl_2[Vm]
                            if not Vo_5 or not Vo_5.tool or not Vo_5.tool.Parent then
                                break
                            elseif not HZ.needsResearch(Vo_5) then
                                Vm = Vm + 1
                            else
                                local Vp_3 = HZ.capsulePosition(Vz)
                                local Vq = Vp_3 and HR(Vp_3 + Vector3.new(0, 4, 0))
                                task.wait(0.1)
                                if JF(Vo_5.tool) then
                                    local Vq_3 = Vz.prompt
                                    if not Vq_3 then
                                        local Vr_4 = Vz.model and Vz.model:FindFirstChildWhichIsA("ProximityPrompt", true)
                                        Vq_3 = Vr_4
                                    end
                                    local Vr_5 = Vq_3
                                    if Vr_5 then
                                        if not Vr_5.Enabled then
                                            Vr_5.Enabled = true
                                        end
                                        HZ.fireResearchPrompt(Vr_5)
                                    end
                                    pcall(function()
                                        Jm.AlienResearchInsert:Call(Vz.id):Await()
                                    end)
                                    task.wait(0.35)
                                    local VC = if HZ.capsuleBusy(Vz.id) then 1 else 0
                                    if VC == 1 then
                                        Vn = Vn + 1
                                        Vm = Vm + 1
                                        if Toggles.UfoNotify.Value then
                                            Ja:Notify("Researching " .. Vo_5.configName)
                                        end
                                    end
                                    local wait = task.wait
                                    local max = math.max
                                    local Value = I_.UfoActionDelay.Value
                                    local Vs = IO.Laboratory.InsertCooldown or 0
                                    wait(max(Value, Vs))
                                end
                                if Vq then
                                    Ju(Vq)
                                end
                            end
                        end
                    end
                    return Vn
                end
                H9.runResearch = fns.fn1734
                H9.canisterPrompts = fns.fn1334
                H9.canisterDropId = fns.fn333
                H9.fireCanisterPrompt = function(ne)
                    if not ne or not ne.Parent then
                        return false
                    end
                    local Wl = HZ.canisterDropId(ne)
                    local Wm_12 = Wl and Jt("AlienCollectFuel")
                    if Wm_12 then
                        local Wm_13 = pcall(function()
                            Jm.AlienCollectFuel:Call(Wl):Await()
                        end)
                        local Wn_4 = Wm_13
                        if Wn_4 then
                            local Wm_14 = not ne.Parent or not ne:IsDescendantOf(workspace)
                            Wn_4 = Wm_14
                        end
                        if Wn_4 then
                            return true
                        elseif fireproximityprompt then
                            pcall(fireproximityprompt, ne)
                            task.wait(0.15)
                            local Wm_15 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                            if Wm_15 then
                                return true
                            end
                            local Wn_5 = ne.HoldDuration > 0 and ne.HoldDuration or 0
                            pcall(fireproximityprompt, ne, Wn_5)
                            task.wait(0.15)
                            if getconnections then
                                pcall(function()
                                    for k, v in getconnections(ne.Triggered) do
                                        if v.Fire then
                                            v:Fire(LocalPlayer)
                                        elseif v.Function then
                                            v.Function(LocalPlayer)
                                        end
                                    end
                                end)
                                task.wait(0.15)
                            end
                            local Wm_17 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                            return Wm_17
                        else
                            if getconnections then
                                pcall(function()
                                    for k, v in getconnections(ne.Triggered) do
                                        if v.Fire then
                                            v:Fire(LocalPlayer)
                                        elseif v.Function then
                                            v.Function(LocalPlayer)
                                        end
                                    end
                                end)
                                task.wait(0.15)
                            end
                            local Wm_18 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                            return Wm_18
                        end
                    elseif fireproximityprompt then
                        pcall(fireproximityprompt, ne)
                        task.wait(0.15)
                        local Wm_19 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                        if Wm_19 then
                            return true
                        end
                        local Wn_6 = ne.HoldDuration > 0 and ne.HoldDuration or 0
                        pcall(fireproximityprompt, ne, Wn_6)
                        task.wait(0.15)
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(ne.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.15)
                        end
                        local Wm_21 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                        return Wm_21
                    else
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(ne.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.15)
                        end
                        local Wm_22 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                        return Wm_22
                    end
                end
                H9.collectCanisters = function()
                    local Ws = not Toggles.AutoCanisters
                    local Wz = if Ws then 1 else 0
                    local Wx = 1911 * Wz + 1270 * (1 - Wz)
                    local Wy = 304 * Wz + 1514 * (1 - Wz)
                    if not ((Wx * 1844 + Wy * 3872 + Wx * Wy) % 16777213 == 5281916) then
                        Ws = not Toggles.AutoCanisters.Value
                    end
                    if Ws then
                        return 0
                    end
                    local Ws_2 = 0
                    for k in HZ.pendingFuelDrops do
                        local WD = k
                        if Ja.Unloaded then
                            break
                        end
                        if Jt("AlienCollectFuel") then
                            local Wt_6 = pcall(function()
                                Jm.AlienCollectFuel:Call(WD):Await()
                            end)
                            if Wt_6 then
                                Ws_2 = Ws_2 + 1
                            end
                        end
                        HZ.pendingFuelDrops[WD] = nil
                    end
                    for k, v in HZ.canisterPrompts() do
                        if Ja.Unloaded then
                            break
                        end
                        if not (not v.Parent or not v.Enabled) then
                            local Parent = v.Parent
                            local Model = v:FindFirstAncestorOfClass("Model")
                            local Wv = Parent:IsA("BasePart") and Parent.Position
                            local Wt_9 = Wv
                            if not Wt_9 then
                                local Wv_2 = Model and Model:GetPivot().Position
                                Wt_9 = Wv_2
                            end
                            local Wu_3 = Wt_9
                            if Wt_9 then
                                Wt_9 = HR(Wu_3 + Vector3.new(0, 3, 0))
                            end
                            local Wu_4 = Wt_9
                            task.wait(0.1)
                            if HZ.fireCanisterPrompt(v) then
                                Ws_2 = Ws_2 + 1
                            end
                            if Wu_4 then
                                Ju(Wu_4)
                            end
                            task.wait(I_.UfoActionDelay.Value)
                        end
                    end
                    if Ws_2 > 0 and Toggles.UfoNotify.Value then
                        Ja:Notify("Collected " .. Ws_2 .. " fuel canisters")
                    end
                    return Ws_2
                end
                H9.fuelTankTools = fns.fn353
                H9.shipFuelTank = fns.fn1577
                H9.depositCanisters = fns.fn658
                H9.inventoryFull = fns.fn634
                H9.weakestOccupiedScore = fns.fn219
                H9.inventoryMutation = fns.fn1676
                H9.inventoryNeedsResearch = fns.fn2023
                H9.sellJunkWhenFull = fns.fn1495
                H9.fuelCandidates = fns.fn2179
                H9.feedFish = fns.fn785
                H9.shipModel = fns.fn1950
                H9.enterPrompt = fns.fn1130
                H9.boardShip = fns.fn2161
                H9.runFlight = function()
                    local Zv = IO.Ship.FuelPerSecond
                    if Zv <= 0 then
                        Zv = 1
                    end
                    local Zw = HZ.flightEndsAt or os.clock() + HZ.upgradeValue("FuelCapacity") / Zv
                    local Zu = Zw
                    HZ.flightEndsAt = Zu
                    while true do
                        if not Ja.Unloaded and Toggles.AutoUfo.Value and HZ.flight.inFlight then
                            local Zv_6 = pcall(function()
                                local Zh_3
                                local Zg_3
                                local Value = I_.UfoReturnBuffer.Value
                                local Y9 = Zu - os.clock()
                                local Za = HZ.upgradeValue("ShipPower")
                                local Zb = HZ.upgradeValue("CargoSlots")
                                local Zc = HZ.bestFish(Za)
                                local Zd = Zc and Zc.model:GetPivot().Position
                                local Ze = Zd
                                if not Ze then
                                    local shipModel = HZ.flight.shipModel
                                    local Zf_8 = shipModel and shipModel:GetPivot().Position
                                    Zh_3, Zg_3 = nil, nil
                                    for k, v in HZ.fishModels() do
                                        local Position = v.model:GetPivot().Position
                                        local Zi = Zf_8 and (Vector3.new(Position.X, 0, Position.Z) - Vector3.new(Zf_8.X, 0, Zf_8.Z)).Magnitude
                                        local Zi_3 = Zi or 0
                                        local Zj = v.power and v.power * 1000 - Zi_3 or -Zi_3
                                        local Zf_12 = not Zg_3
                                        if not Zf_12 then
                                            Zf_12 = Zj > Zg_3
                                        end
                                        if Zf_12 then
                                            Zh_3, Zg_3 = v, Zj
                                        end
                                    end
                                    local Zf_13 = Zh_3 and Zh_3.model:GetPivot().Position
                                    Ze = Zf_13
                                end
                                local report = HZ.report
                                local Zf_14 = #HZ.fishModels()
                                local Zh_4 = Ze and "yes" or "none"
                                report(("fish %d | target %s | power %d | cargo %d/%d | %ds left"):format(Zf_14, Zh_4, Za, HZ.cargoCount(), Zb, math.floor(Y9)))
                                local Zt = if HZ.cargoCount() >= Zb then 1 else 0
                                if Zt == 1 then
                                    HZ.deliverCargo()
                                    return
                                end
                                if not Ze then
                                    HZ.warn("No catchable alien fish found, upgrade UFO Fishing Power")
                                    task.wait(0.5)
                                    return
                                end
                                local Zb_3 = Zc and HZ.catchTime(Zc.strength, Za)
                                if Y9 - Value < (Zb_3 or 3) + 2 then
                                    Zu = 0
                                    return
                                end
                                if not HZ.moveShip(Ze) then
                                    task.wait(0.5)
                                    return
                                end
                                task.wait(I_.UfoTeleportDelay.Value)
                                local catchFish = HZ.catchFish
                                local Y9_2 = Zc or HZ.currentTarget()
                                catchFish(Y9_2)
                                if Toggles.UfoDeliverEachCatch.Value then
                                    HZ.deliverCargo()
                                end
                            end)
                            if not Zv_6 then
                                task.wait(0.5)
                            end
                            if Zu == 0 then
                                break
                            end
                            continue
                        end
                        break
                    end
                    HZ.deliverCargo()
                    local onFlyHomeAction = HZ.ride().onFlyHomeAction
                    if HZ.flight.inFlight then
                        local Zw_3 = not HZ.press("FlyHomeButton") and onFlyHomeAction
                        if Zw_3 then
                            I4(onFlyHomeAction, "AlienFlyHome", Enum.UserInputState.Begin)
                        end
                        local Zv_8 = os.clock() + 20
                        while true do
                            local Zw_4 = HZ.flight.inFlight and os.clock() < Zv_8 and not Ja.Unloaded
                            if Zw_4 then
                                task.wait(0.2)
                                continue
                            end
                            break
                        end
                    end
                    HZ.flightEndsAt = nil
                end
                HZ = { OwnerId = nil, FedCount = 0, State = "idle" }
            else
                HT = fns.fn511
                IJ = fns.fn2057
                H9 = fns.fn1210
                HZ.closures = fns.fn2017
                HZ.ocean = fns.fn407
                HZ.ride = fns.fn2164
                HZ.eventState = fns.fn2190
                HZ.upgradeValue = fns.fn446
                HZ.fuel = fns.fn800
                HZ.cargoCount = fns.fn1942
                HZ.fuelTarget = fns.fn275
                HZ.warn = fns.fn270
                HZ.report = fns.fn1639
                HZ.fishList = fns.fn1325
                HZ.hud = fns.fn1649
                HZ.button = fns.fn1663
                HZ.press = fns.fn415
                HZ.clickFightPanel = fns.fn224
                HZ.fishModels = fns.fn381
                HZ.currentTarget = fns.fn1537
                HZ.catchTime = fns.fn1841
                HZ.bestFish = fns.fn2096
                HZ.shipRecords = fns.fn933
                HZ.moveShip = fns.fn1095
                HZ.startCatch = fns.fn1402
                HZ.catchFish = fns.fn1826
                HZ.deliverCargo = fns.fn555
                HZ.fuelNpc = fns.fn22
                HZ.fuelAllowed = fns.fn919
                HZ.needsResearch = fns.fn741
                HZ.researchMap = fn2238
                HZ.unlockedCapsuleCount = fns.fn122
                HZ.capsuleBusy = fns.fn17
                HZ.capsuleReady = fns.fn4
                HZ.workspaceCapsules = fns.fn1127
                HZ.capsulePosition = fns.fn1948
                HZ.capsuleModel = fns.fn1972
                HZ.fireResearchPrompt = function(lv)
                    if not lv or not lv.Parent then
                        return false
                    elseif fireproximityprompt then
                        pcall(fireproximityprompt, lv)
                        task.wait(0.2)
                        if not lv.Parent or not lv.Enabled or lv.ActionText == IO.Laboratory.PromptInsertActionText then
                            return true
                        end
                        local UP = lv.HoldDuration > 0 and lv.HoldDuration or 0
                        pcall(fireproximityprompt, lv, UP)
                        task.wait(0.2)
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(lv.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.2)
                        end
                        return true
                    else
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(lv.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.2)
                        end
                        return true
                    end
                end
                HZ.researchCandidates = fns.fn1626
                HZ.collectResearch = function()
                    if not Jt("AlienResearchCollect") then
                        return 0
                    end
                    local U8 = 0
                    local inFlight = HZ.flight.inFlight
                    for k, v in HZ.workspaceCapsules() do
                        local Vk = v
                        if Ja.Unloaded or not Toggles.AutoResearch.Value then
                            break
                        elseif not not Vk.collectable then
                            local Va_1 = HZ.capsuleBusy(Vk.id)
                            local Vb
                            if not inFlight then
                                local Vc_1 = HZ.capsulePosition(Vk)
                                local Vd = Vc_1 and HR(Vc_1 + Vector3.new(0, 4, 0))
                                Vb = Vd
                                task.wait(0.1)
                            end
                            if Vk.prompt and Vk.prompt.Parent then
                                HZ.fireResearchPrompt(Vk.prompt)
                            end
                            pcall(function()
                                Jm.AlienResearchCollect:Call(Vk.id):Await()
                            end)
                            task.wait(0.25)
                            if Vb then
                                Ju(Vb)
                            end
                            local Vb_1 = Va_1 and not HZ.capsuleBusy(Vk.id)
                            if Vb_1 then
                                U8 = U8 + 1
                                if Toggles.UfoNotify.Value then
                                    Ja:Notify("Collected research capsule " .. Vk.id)
                                end
                                task.wait(I_.UfoActionDelay.Value)
                            end
                        end
                    end
                    return U8
                end
                HZ.feedResearch = function()
                    if not Jt("AlienResearchInsert") then
                        return 0
                    end
                    local Vl = HZ.flight.inFlight or ID()
                    if Vl then
                        return 0
                    end
                    HX()
                    local Vl_1 = HZ.researchCandidates()
                    if #Vl_1 == 0 then
                        return 0
                    end
                    local Vm = 1
                    local Vn = 0
                    for k, v in HZ.workspaceCapsules() do
                        local Vz = v
                        if Ja.Unloaded or not Toggles.AutoResearch.Value then
                            break
                        end
                        local Vo_1 = HZ.capsuleBusy(Vz.id) or Vz.collectable
                        if not Vo_1 then
                            local Vo_2 = Vl_1[Vm]
                            if not Vo_2 or not Vo_2.tool or not Vo_2.tool.Parent then
                                break
                            elseif not HZ.needsResearch(Vo_2) then
                                Vm = Vm + 1
                            else
                                local Vp_1 = HZ.capsulePosition(Vz)
                                local Vq = Vp_1 and HR(Vp_1 + Vector3.new(0, 4, 0))
                                task.wait(0.1)
                                if JF(Vo_2.tool) then
                                    local Vq_1 = Vz.prompt
                                    if not Vq_1 then
                                        local Vr_1 = Vz.model and Vz.model:FindFirstChildWhichIsA("ProximityPrompt", true)
                                        Vq_1 = Vr_1
                                    end
                                    local Vr_2 = Vq_1
                                    if Vr_2 then
                                        if not Vr_2.Enabled then
                                            Vr_2.Enabled = true
                                        end
                                        HZ.fireResearchPrompt(Vr_2)
                                    end
                                    pcall(function()
                                        Jm.AlienResearchInsert:Call(Vz.id):Await()
                                    end)
                                    task.wait(0.35)
                                    local VC = if HZ.capsuleBusy(Vz.id) then 1 else 0
                                    if VC == 1 then
                                        Vn = Vn + 1
                                        Vm = Vm + 1
                                        if Toggles.UfoNotify.Value then
                                            Ja:Notify("Researching " .. Vo_2.configName)
                                        end
                                    end
                                    local wait = task.wait
                                    local max = math.max
                                    local Value = I_.UfoActionDelay.Value
                                    local Vs = IO.Laboratory.InsertCooldown or 0
                                    wait(max(Value, Vs))
                                end
                                if Vq then
                                    Ju(Vq)
                                end
                            end
                        end
                    end
                    return Vn
                end
                HZ.runResearch = fns.fn1734
                HZ.canisterPrompts = fns.fn1334
                HZ.canisterDropId = fns.fn333
                HZ.fireCanisterPrompt = function(ne)
                    if not ne or not ne.Parent then
                        return false
                    end
                    local Wl = HZ.canisterDropId(ne)
                    local Wm_1 = Wl and Jt("AlienCollectFuel")
                    if Wm_1 then
                        local Wm_2 = pcall(function()
                            Jm.AlienCollectFuel:Call(Wl):Await()
                        end)
                        local Wn_1 = Wm_2
                        if Wn_1 then
                            local Wm_3 = not ne.Parent or not ne:IsDescendantOf(workspace)
                            Wn_1 = Wm_3
                        end
                        if Wn_1 then
                            return true
                        elseif fireproximityprompt then
                            pcall(fireproximityprompt, ne)
                            task.wait(0.15)
                            local Wm_4 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                            if Wm_4 then
                                return true
                            end
                            local Wn_2 = ne.HoldDuration > 0 and ne.HoldDuration or 0
                            pcall(fireproximityprompt, ne, Wn_2)
                            task.wait(0.15)
                            if getconnections then
                                pcall(function()
                                    for k, v in getconnections(ne.Triggered) do
                                        if v.Fire then
                                            v:Fire(LocalPlayer)
                                        elseif v.Function then
                                            v.Function(LocalPlayer)
                                        end
                                    end
                                end)
                                task.wait(0.15)
                            end
                            local Wm_6 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                            return Wm_6
                        else
                            if getconnections then
                                pcall(function()
                                    for k, v in getconnections(ne.Triggered) do
                                        if v.Fire then
                                            v:Fire(LocalPlayer)
                                        elseif v.Function then
                                            v.Function(LocalPlayer)
                                        end
                                    end
                                end)
                                task.wait(0.15)
                            end
                            local Wm_7 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                            return Wm_7
                        end
                    elseif fireproximityprompt then
                        pcall(fireproximityprompt, ne)
                        task.wait(0.15)
                        local Wm_8 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                        if Wm_8 then
                            return true
                        end
                        local Wn_3 = ne.HoldDuration > 0 and ne.HoldDuration or 0
                        pcall(fireproximityprompt, ne, Wn_3)
                        task.wait(0.15)
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(ne.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.15)
                        end
                        local Wm_10 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                        return Wm_10
                    else
                        if getconnections then
                            pcall(function()
                                for k, v in getconnections(ne.Triggered) do
                                    if v.Fire then
                                        v:Fire(LocalPlayer)
                                    elseif v.Function then
                                        v.Function(LocalPlayer)
                                    end
                                end
                            end)
                            task.wait(0.15)
                        end
                        local Wm_11 = not ne.Parent or not ne:IsDescendantOf(workspace) or not ne.Enabled
                        return Wm_11
                    end
                end
                HZ.collectCanisters = function()
                    local Ws = not Toggles.AutoCanisters
                    local Wz = if Ws then 1 else 0
                    local Wx = 1911 * Wz + 1270 * (1 - Wz)
                    local Wy = 304 * Wz + 1514 * (1 - Wz)
                    if not ((Wx * 1844 + Wy * 3872 + Wx * Wy) % 16777213 == 5281916) then
                        Ws = not Toggles.AutoCanisters.Value
                    end
                    if Ws then
                        return 0
                    end
                    local Ws_1 = 0
                    for k in HZ.pendingFuelDrops do
                        local WD = k
                        if Ja.Unloaded then
                            break
                        end
                        if Jt("AlienCollectFuel") then
                            local Wt_1 = pcall(function()
                                Jm.AlienCollectFuel:Call(WD):Await()
                            end)
                            if Wt_1 then
                                Ws_1 = Ws_1 + 1
                            end
                        end
                        HZ.pendingFuelDrops[WD] = nil
                    end
                    for k, v in HZ.canisterPrompts() do
                        if Ja.Unloaded then
                            break
                        end
                        if not (not v.Parent or not v.Enabled) then
                            local Parent = v.Parent
                            local Model = v:FindFirstAncestorOfClass("Model")
                            local Wv = Parent:IsA("BasePart") and Parent.Position
                            local Wt_4 = Wv
                            if not Wt_4 then
                                local Wv_1 = Model and Model:GetPivot().Position
                                Wt_4 = Wv_1
                            end
                            local Wu_1 = Wt_4
                            if Wt_4 then
                                Wt_4 = HR(Wu_1 + Vector3.new(0, 3, 0))
                            end
                            local Wu_2 = Wt_4
                            task.wait(0.1)
                            if HZ.fireCanisterPrompt(v) then
                                Ws_1 = Ws_1 + 1
                            end
                            if Wu_2 then
                                Ju(Wu_2)
                            end
                            task.wait(I_.UfoActionDelay.Value)
                        end
                    end
                    if Ws_1 > 0 and Toggles.UfoNotify.Value then
                        Ja:Notify("Collected " .. Ws_1 .. " fuel canisters")
                    end
                    return Ws_1
                end
                HZ.fuelTankTools = fns.fn353
                HZ.shipFuelTank = fns.fn1577
                HZ.depositCanisters = fns.fn658
                HZ.inventoryFull = fns.fn634
                HZ.weakestOccupiedScore = fns.fn219
                HZ.inventoryMutation = fns.fn1676
                HZ.inventoryNeedsResearch = fns.fn2023
                HZ.sellJunkWhenFull = fns.fn1495
                HZ.fuelCandidates = fns.fn2179
                HZ.feedFish = fns.fn785
                HZ.shipModel = fns.fn1950
                HZ.enterPrompt = fns.fn1130
                HZ.boardShip = fns.fn2161
                HZ.runFlight = function()
                    local Zv = IO.Ship.FuelPerSecond
                    if Zv <= 0 then
                        Zv = 1
                    end
                    local Zw = HZ.flightEndsAt or os.clock() + HZ.upgradeValue("FuelCapacity") / Zv
                    local Zu = Zw
                    HZ.flightEndsAt = Zu
                    while true do
                        if not Ja.Unloaded and Toggles.AutoUfo.Value and HZ.flight.inFlight then
                            local Zv_2 = pcall(function()
                                local Zh_1
                                local Zg_1
                                local Value = I_.UfoReturnBuffer.Value
                                local Y9 = Zu - os.clock()
                                local Za = HZ.upgradeValue("ShipPower")
                                local Zb = HZ.upgradeValue("CargoSlots")
                                local Zc = HZ.bestFish(Za)
                                local Zd = Zc and Zc.model:GetPivot().Position
                                local Ze = Zd
                                if not Ze then
                                    local shipModel = HZ.flight.shipModel
                                    local Zf_1 = shipModel and shipModel:GetPivot().Position
                                    Zh_1, Zg_1 = nil, nil
                                    for k, v in HZ.fishModels() do
                                        local Position = v.model:GetPivot().Position
                                        local Zi = Zf_1 and (Vector3.new(Position.X, 0, Position.Z) - Vector3.new(Zf_1.X, 0, Zf_1.Z)).Magnitude
                                        local Zi_1 = Zi or 0
                                        local Zj = v.power and v.power * 1000 - Zi_1 or -Zi_1
                                        local Zf_5 = not Zg_1
                                        if not Zf_5 then
                                            Zf_5 = Zj > Zg_1
                                        end
                                        if Zf_5 then
                                            Zh_1, Zg_1 = v, Zj
                                        end
                                    end
                                    local Zf_6 = Zh_1 and Zh_1.model:GetPivot().Position
                                    Ze = Zf_6
                                end
                                local report = HZ.report
                                local Zf_7 = #HZ.fishModels()
                                local Zh_2 = Ze and "yes" or "none"
                                report(("fish %d | target %s | power %d | cargo %d/%d | %ds left"):format(Zf_7, Zh_2, Za, HZ.cargoCount(), Zb, math.floor(Y9)))
                                local Zt = if HZ.cargoCount() >= Zb then 1 else 0
                                if Zt == 1 then
                                    HZ.deliverCargo()
                                    return
                                end
                                if not Ze then
                                    HZ.warn("No catchable alien fish found, upgrade UFO Fishing Power")
                                    task.wait(0.5)
                                    return
                                end
                                local Zb_1 = Zc and HZ.catchTime(Zc.strength, Za)
                                if Y9 - Value < (Zb_1 or 3) + 2 then
                                    Zu = 0
                                    return
                                end
                                if not HZ.moveShip(Ze) then
                                    task.wait(0.5)
                                    return
                                end
                                task.wait(I_.UfoTeleportDelay.Value)
                                local catchFish = HZ.catchFish
                                local Y9_1 = Zc or HZ.currentTarget()
                                catchFish(Y9_1)
                                if Toggles.UfoDeliverEachCatch.Value then
                                    HZ.deliverCargo()
                                end
                            end)
                            if not Zv_2 then
                                task.wait(0.5)
                            end
                            if Zu == 0 then
                                break
                            end
                            continue
                        end
                        break
                    end
                    HZ.deliverCargo()
                    local onFlyHomeAction = HZ.ride().onFlyHomeAction
                    if HZ.flight.inFlight then
                        local Zw_1 = not HZ.press("FlyHomeButton") and onFlyHomeAction
                        if Zw_1 then
                            I4(onFlyHomeAction, "AlienFlyHome", Enum.UserInputState.Begin)
                        end
                        local Zv_4 = os.clock() + 20
                        while true do
                            local Zw_2 = HZ.flight.inFlight and os.clock() < Zv_4 and not Ja.Unloaded
                            if Zw_2 then
                                task.wait(0.2)
                                continue
                            end
                            break
                        end
                    end
                    HZ.flightEndsAt = nil
                end
                JJ = { State = "idle", FedCount = 0, OwnerId = nil }
            end
            ahH_62 = (ahH_62 + 71) % 120
        end
    elseif ahH_49 <= 14 then
        if ahH_49 <= 13 then
            ahH_49 = (vector.create((ahH_62 * 2 + 1) % 11 + 1, (ahH_62 * 3 + 13) % 13 + 1, (ahH_62 * 6 + 3) % 17 + 1))
            ahH_33 = (vector.create((ahH_62 * 1 + 6) % 11 + 1, (ahH_62 * 10 + 7) % 13 + 1, (ahH_62 * 5 + 2) % 17 + 1))
            ahH_19 = (vector.create((ahH_62 * 4 + 1) % 5 + 1, (ahH_62 * 5 + 3) % 7 + 1, (ahH_62 * 3 + 1) % 9 + 1))
            if math.abs((vector.angle(ahH_49, ahH_33, ahH_19))) - math.abs((vector.angle(ahH_33, ahH_49, ahH_19))) == 0 then
                H7 = {}
                I3 = {}
                H4 = {}
                I0 = {}
                H_ = {}
            else
                I0 = {}
                H7 = {}
                I3 = {}
                H_ = {}
                H4 = {}
            end
            ahH_62 = (ahH_62 + 41) % 120
        else
            ahH_49 = (vector.create((ahH_62 * 7 + 7) % 11 + 1, (ahH_62 * 6 + 7) % 13 + 1, (ahH_62 * 2 + 13) % 17 + 1))
            ahH_33 = (vector.create((ahH_62 * 7 + 7) % 11 + 1, (ahH_62 * 7 + 1) % 13 + 1, (ahH_62 * 4 + 13) % 17 + 1))
            ahH_19 = (vector.create((ahH_62 * 6 + 7) % 11 + 1, (ahH_62 * 5 + 3) % 13 + 1, (ahH_62 * 2 + 11) % 17 + 1))
            if vector.dot(vector.cross(ahH_49, ahH_33), ahH_19) == vector.dot(vector.cross(ahH_33, ahH_19), ahH_49) + 2 then
                IQ = {}
                IX = {}
                JI = {}
                HU = {}
                IU = {}
            else
                IX = {}
                HU = {}
                IU = {}
                JI = {}
                IQ = {}
            end
            ahH_62 = (ahH_62 + 11) % 120
        end
    else
        ahH_49 = (vector.create((ahH_62 * 5 + 7) % 11 + 1, (ahH_62 * 10 + 11) % 13 + 1, (ahH_62 * 4 + 15) % 17 + 1))
        ahH_33 = (vector.create((ahH_62 * 3 + 4) % 11 + 1, (ahH_62 * 1 + 10) % 13 + 1, (ahH_62 * 12 + 15) % 17 + 1))
        ahH_19 = (vector.create((ahH_62 * 7 + 4) % 11 + 1, (ahH_62 * 5 + 4) % 13 + 1, (ahH_62 * 5 + 9) % 17 + 1))
        ahH_26 = (vector.create((ahH_62 * 5 + 2) % 11 + 1, (ahH_62 * 9 + 9) % 13 + 1, (ahH_62 * 9 + 17) % 17 + 1))
        if vector.dot(vector.cross(ahH_49, ahH_33), (vector.cross(ahH_19, ahH_26))) == vector.dot(ahH_49, ahH_19) * vector.dot(ahH_33, ahH_26) - vector.dot(ahH_49, ahH_26) * vector.dot(ahH_33, ahH_19) + 3 then
            Io = {}
            Ii = {}
            IK = fns.fn1564
            Jx = fns.fn675
            JA = fns.fn2058
        else
            JA = {}
            IK = {}
            Jx = fns.fn1564
            Io = fns.fn675
            Ii = fns.fn2058
        end
        ahH_62 = (ahH_62 + 26) % 120
    end
until (ahH_62 * 23 + 112) % 120 == 116
if ahH_37 then
    ahH_62 = 5
    repeat
        ahH_49 = (ahH_62 * 1 + 0) % 2 + 1
        if ahH_49 <= 1 then
            if (not ahH_62 and ahH_62 and (not ahH_62 or not ahH_62) and (not ahH_62 and ahH_62 or (not ahH_62 or not ahH_62)) or (ahH_62 and not ahH_62 or (not ahH_62 or not ahH_62) or (not ahH_62 and not ahH_62 or (not ahH_62 or not ahH_62)))) and not (not ahH_62 and ahH_62 and (not ahH_62 or not ahH_62) and (not ahH_62 and ahH_62 or (not ahH_62 or not ahH_62)) or (ahH_62 and not ahH_62 or (not ahH_62 or not ahH_62) or (not ahH_62 and not ahH_62 or (not ahH_62 or not ahH_62)))) then
                Jm.RequestCatMachineState:Fire()
            else
                Jm.RequestCatMachineState:Fire()
            end
            ahH_62 = (ahH_62 + 1) % 16
        else
            ahH_49 = { "lrmrzy", "qyhiyvnwknc", "xmm", "rgv", "wdlwf", "esbtstdyy", "qvpcfnbn", "oun", "rjiisilp" }
            local ajs = ahH_62
            ahH_33 = ahH_49[ajs % 9 + 1]
            if ahH_33:len() >= ahH_33:gsub("(.)", "%1%1", ajs % 3 % 2 + 1):len() then
                Jm = connection.CatMachineStateChanged:Connect(fns.onCatMachineStateChanged)
            else
                connection = Jm.CatMachineStateChanged:Connect(fns.onCatMachineStateChanged)
            end
            ahH_62 = (ahH_62 + 7) % 16
        end
    until (ahH_62 * 5 + 7) % 16 == 8
end
ahH_33, ahH_19 = nil, nil
ahH_49 = 5
repeat
    ahH_62 = (ahH_49 * 1 + 0) % 2 + 1
    if ahH_62 <= 1 then
        ahH_62 = { "fevafh", "jcgpika", "fll", "dlmd", "yfrvej", "hifdiawqg", "tgcfjj", "crmjhiboekq" }
        if ahH_62[(ahH_49 * 6 + 109) % 8 + 1] < ahH_62[(ahH_49 * 6 + 109) % 8 + 1] then
            ahH_19.ShowCustomCursor = false
            ahH_33 = {
                Upgrades = Ja:AddTab("Upgrades", "trending-up"),
                Shops = Ja:AddTab("Shops", "shopping-bag"),
                Base = Ja:AddTab("Base", "landmark"),
                Info = Ja:AddTab("Info", "info"),
                Fishing = Ja:AddTab("Fishing", "fish")
            }
        else
            Ja.ShowCustomCursor = false
            ahH_19 = {
                Info = ahH_33:AddTab("Info", "info"),
                Fishing = ahH_33:AddTab("Fishing", "fish"),
                Base = ahH_33:AddTab("Base", "landmark"),
                Upgrades = ahH_33:AddTab("Upgrades", "trending-up"),
                Shops = ahH_33:AddTab("Shops", "shopping-bag")
            }
        end
        ahH_49 = (ahH_49 + 15) % 16
    else
        if (ahH_49 * 2 + 3) * 10 % 3 == ((ahH_49 * 2 + 3) * 10 + 3) % 3 then
            ahH_33 = Ja:CreateWindow({
                Title = "Ouroboros Hub",
                Footer = HY .. " | " .. ahH_3,
                Icon = 18657887261,
                NotifySide = "Right",
                Size = UDim2.fromOffset(900, 640),
                ShowCustomCursor = false
            })
        else
            ahH_3 = ahH_33:CreateWindow({
                Title = "Ouroboros Hub",
                ShowCustomCursor = false,
                Size = UDim2.fromOffset(900, 640),
                Footer = Ja .. " | https://discord.gg/ehKVq7pf7v",
                NotifySide = "Right",
                Icon = 18657887261
            })
        end
        ahH_49 = (ahH_49 + 9) % 16
    end
until (ahH_49 * 11 + 1) % 16 == 0
ahH_62 = ahH_41 or ahH_86
if ahH_62 then
    ahH_49 = 6
    repeat
        if ahH_49 * 83267315 + 9 + 1 <= ahH_49 * 83267315 + 9 + 1 + 6 then
            ahH_19.Floats = ahH_33:AddTab("Floats", "anchor")
        else
            ahH_33.Floats = ahH_19:AddTab("Floats", "anchor")
        end
        ahH_49 = (ahH_49 + 7) % 8
    until (ahH_49 * 5 + 0) % 8 == 1
end
if ahH_37 then
    ahH_62 = 5
    repeat
        if (ahH_62 or not ahH_62 or (ahH_62 or ahH_62)) and ((ahH_62 or ahH_62) and (ahH_62 or not ahH_62)) or not ((ahH_62 or not ahH_62 or (ahH_62 or ahH_62)) and ((ahH_62 or ahH_62) and (ahH_62 or not ahH_62))) then
            ahH_19.Event = ahH_33:AddTab("Event", "cat")
        else
            ahH_33.Event = ahH_19:AddTab("Event", "cat")
        end
        ahH_62 = (ahH_62 + 5) % 8
    until (ahH_62 * 5 + 7) % 8 == 1
end
if IB then
    ahH_62 = 3
    repeat
        ahH_49 = {
            "mhuedztbaob",
            "dngjrxznhvdx",
            "jblrzpzmpsw",
            "klmkbzeyd",
            "iihr",
            "dgctvgflfim",
            "oygujhtsap",
            "qcmhf",
            "wat",
            "dhdmhq",
            "crucrdjh",
            "eujfxwilkb",
            "wdepjswwl"
        }
        if ahH_49[(ahH_62 * 89 + 13) % 13 + 1] <= ahH_49[(ahH_62 * 89 + 13) % 13 + 1] then
            ahH_19.Ufo = ahH_33:AddTab("UFO", "rocket")
        else
            ahH_33.Ufo = ahH_19:AddTab("UFO", "rocket")
        end
        ahH_62 = (ahH_62 + 2) % 4
    until (ahH_62 * 1 + 0) % 4 == 1
end
ahH_19.Settings = ahH_33:AddTab("Settings", "settings")
ahH_26 = fns.fn1229
for k, v in ahH_19 do
    ahH_26(v)
end
Ij, AutoRebirthGroup, AutoPlaceBestFishGroup, AutoUpgradesGroup, AutoBuyWeightsGroup, AutoSummonWeatherGroup, ahH_33, AutoGemShopGroup = nil, nil, nil, nil, nil, nil, nil, nil
local BasicInfoGroup = ahH_19.Info:AddLeftGroupbox("Basic Info", "circle-user")
Ij = "Unknown"
pcall(fn2220)
BasicInfoGroup:AddLabel("Executor: " .. Ij, true)
BasicInfoGroup:AddLabel("Game: " .. ahH_3, true)
BasicInfoGroup:AddLabel("Player: " .. LocalPlayer.Name, true)
BasicInfoGroup:AddLabel("Status: Keyless", true)
local OuroborosHubGroup = ahH_19.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = IW })
ahH_90 = ahH_19.Info:AddRightGroupbox("FAQ", "circle-help")
ahH_90:AddLabel("Where do I get a good config?", true)
ahH_90:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
ahH_90:AddLabel("How do I import / export configs?", true)
ahH_90:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
ahH_90:AddLabel("How do I report bugs?", true)
ahH_90:AddLabel("Join the Discord and post it in the bugs channel.", true)
ahH_90:AddLabel("How do I make suggestions?", true)
ahH_90:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
ahH_90:AddLabel("How do I get help or updates?", true)
ahH_90:AddLabel("Join the Discord, updates and support are posted there first.", true)
local AutoFishGroup = ahH_19.Fishing:AddLeftGroupbox("Auto Fish", "fish")
AutoFishGroup:AddToggle("AutoFish", { Text = "Auto Fish", Default = false })
AutoFishGroup:AddDropdown("ReelMode", { Text = "Reel Mode", Values = { IG, ahH_82, Iy, Js }, Default = ahH_82, Multi = false })
AutoFishGroup:AddSlider("ReelSpeed", { Text = "Custom Reel Speed", Default = 5, Min = 1, Max = Jz, Rounding = 1 })
AutoFishGroup:AddSlider("ReelMargin", { Text = "Reel Margin", Default = 1.25, Min = 1.05, Max = 5, Rounding = 2 })
AutoFishGroup:AddToggle("FishTeleport", { Text = "Teleport To Fishing Zone", Default = true })
AutoFishGroup:AddToggle("FishNotify", { Text = "Notify On Catch", Default = false })
AutoFishGroup:AddSlider("CastCooldown", { Text = "Cast Cooldown", Default = 0, Min = 0, Max = 10, Rounding = 1 })
AutoFishGroup:AddSlider("FishLoopDelay", { Text = "Loop Delay", Default = 1, Min = 0, Max = 15, Rounding = 1 })
ahH_49 = ahH_19.Base:AddLeftGroupbox("Auto Collect Money", "banknote")
if (BasicInfoGroup and BasicInfoGroup or (AutoBuyWeightsGroup or not BasicInfoGroup) or (not AutoPlaceBestFishGroup or AutoBuyWeightsGroup) and (AutoUpgradesGroup and Ij) or (AutoUpgradesGroup and not AutoPlaceBestFishGroup and (not BasicInfoGroup and Ij) or (not AutoUpgradesGroup or Ij) and (AutoBuyWeightsGroup and AutoPlaceBestFishGroup))) and ((not ahH_33 or not AutoUpgradesGroup) and (not BasicInfoGroup and AutoPlaceBestFishGroup) and ((not AutoPlaceBestFishGroup or not AutoPlaceBestFishGroup) and (not ahH_33 or not AutoBuyWeightsGroup)) or ((AutoPlaceBestFishGroup or AutoBuyWeightsGroup) and (not BasicInfoGroup or not Ij) or (not Ij or AutoBuyWeightsGroup or (AutoUpgradesGroup or not ahH_33)))) or not ((BasicInfoGroup and BasicInfoGroup or (AutoBuyWeightsGroup or not BasicInfoGroup) or (not AutoPlaceBestFishGroup or AutoBuyWeightsGroup) and (AutoUpgradesGroup and Ij) or (AutoUpgradesGroup and not AutoPlaceBestFishGroup and (not BasicInfoGroup and Ij) or (not AutoUpgradesGroup or Ij) and (AutoBuyWeightsGroup and AutoPlaceBestFishGroup))) and ((not ahH_33 or not AutoUpgradesGroup) and (not BasicInfoGroup and AutoPlaceBestFishGroup) and ((not AutoPlaceBestFishGroup or not AutoPlaceBestFishGroup) and (not ahH_33 or not AutoBuyWeightsGroup)) or ((AutoPlaceBestFishGroup or AutoBuyWeightsGroup) and (not BasicInfoGroup or not Ij) or (not Ij or AutoBuyWeightsGroup or (AutoUpgradesGroup or not ahH_33))))) then
    ahH_49:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
    ahH_49:AddSlider("CollectLoopDelay", { Text = "Loop Delay", Default = 1, Min = 0.1, Max = 15, Rounding = 1 })
    AutoRebirthGroup = ahH_19.Base:AddRightGroupbox("Auto Rebirth", "refresh-cw")
else
    AutoRebirthGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
    AutoRebirthGroup:AddSlider("CollectLoopDelay", { Min = 0.1, Rounding = 1, Max = 15, Default = 1, Text = "Loop Delay" })
    ahH_19 = ahH_49.Base:AddRightGroupbox("Auto Rebirth", "refresh-cw")
end
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthMaxLevel", {
    Text = "Max Rebirth Level",
    Default = #RebirthConfig.Config,
    Min = 1,
    Max = #RebirthConfig.Config,
    Rounding = 0
})
AutoRebirthGroup:AddToggle("RebirthNotify", { Text = "Notify On Rebirth", Default = true })
AutoRebirthGroup:AddSlider("RebirthLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
ahH_62 = ahH_19.Base:AddLeftGroupbox("Auto Upgrade Placed Fish", "arrow-big-up-dash")
ahH_62:AddToggle("AutoUpgradeFish", { Text = "Auto Upgrade Placed Fish", Default = false })
ahH_62:AddDropdown("UpgradePriority", {
    Text = "Priority",
    Values = {
        "Cheapest First",
        "Most Expensive First",
        "Lowest Level First",
        "Highest Earnings First",
        "Slot Order"
    },
    Default = "Cheapest First",
    Multi = false
})
ahH_62:AddDropdown("UpgradeSlots", {
    Text = "Slots To Upgrade",
    Values = ahH_77,
    Default = ahH_77,
    Multi = true,
    Callback = fns.onUpgradeSlots
})
ahH_62:AddDropdown("UpgradeFish", {
    Text = "Only These Fish",
    Values = ahH_44,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = fns.onUpgradeFish
})
ahH_62:AddDropdown("UpgradeMinRarity", { Text = "Minimum Rarity", Values = Id, Default = Id[1], Multi = false })
ahH_62:AddToggle("UpgradeMutatedOnly", { Text = "Only Mutated Fish", Default = false })
local UpgradeLimitsGroup = ahH_19.Base:AddRightGroupbox("Upgrade Limits", "sliders-horizontal")
UpgradeLimitsGroup:AddSlider("UpgradeMaxLevel", {
    Text = "Max Fish Level",
    Default = Ik.FISH_MAX_LEVEL,
    Min = 2,
    Max = Ik.FISH_MAX_LEVEL,
    Rounding = 0
})
UpgradeLimitsGroup:AddSlider("UpgradeKeepPercent", { Text = "Keep Money %", Default = 0, Min = 0, Max = 95, Rounding = 0 })
UpgradeLimitsGroup:AddSlider("UpgradeMaxCostPercent", { Text = "Max Cost Per Upgrade %", Default = 100, Min = 1, Max = 100, Rounding = 0 })
UpgradeLimitsGroup:AddSlider("UpgradesPerCycle", { Text = "Upgrades Per Cycle", Default = 100, Min = 1, Max = 500, Rounding = 0 })
UpgradeLimitsGroup:AddSlider("UpgradeActionDelay", { Text = "Action Delay", Default = 0, Min = 0, Max = 2, Rounding = 2 })
UpgradeLimitsGroup:AddSlider("UpgradeLoopDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.1, Max = 30, Rounding = 1 })
UpgradeLimitsGroup:AddToggle("UpgradeNotify", { Text = "Notify On Upgrade", Default = false })
AutoPlaceBestFishGroup = ahH_19.Base:AddLeftGroupbox("Auto Place Best Fish", "hand-coins")
AutoPlaceBestFishGroup:AddToggle("AutoPlaceFish", { Text = "Auto Place Best Fish", Default = false })
AutoPlaceBestFishGroup:AddToggle("PlaceKeepCatFish", { Text = "Keep Cat Mutated Fish", Default = true })
AutoPlaceBestFishGroup:AddSlider("PlacePerCycle", { Text = "Places Per Cycle", Default = 10, Min = 1, Max = 100, Rounding = 0 })
AutoPlaceBestFishGroup:AddSlider("PlaceActionDelay", { Text = "Action Delay", Default = 0.3, Min = 0, Max = 2, Rounding = 2 })
AutoPlaceBestFishGroup:AddSlider("PlaceLoopDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1 })
AutoPlaceBestFishGroup:AddToggle("PlaceNotify", { Text = "Notify On Place", Default = false })
local AutoEquipBestGroup = ahH_19.Base:AddLeftGroupbox("Auto Equip Best", "wand-sparkles")
AutoEquipBestGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
AutoEquipBestGroup:AddDropdown("EquipBestMode", { Text = "Mode", Values = { "Best Now", "Best Possible" }, Default = "Best Now", Multi = false })
AutoEquipBestGroup:AddToggle("EquipBestBuyUnlock", { Text = "Buy Unlock If Missing", Default = false })
AutoEquipBestGroup:AddSlider("EquipBestLoopDelay", { Text = "Loop Delay", Default = 15, Min = EquipBestConfig.Cooldown, Max = 120, Rounding = 0 })
AutoUpgradesGroup = ahH_19.Upgrades:AddLeftGroupbox("Auto Upgrades", "gauge")
AutoUpgradesGroup:AddToggle("AutoStatUpgrades", { Text = "Auto Upgrades", Default = false })
AutoUpgradesGroup:AddDropdown("StatUpgrades", {
    Text = "Upgrades To Buy",
    Values = ahH_92,
    Default = ahH_92,
    Multi = true,
    Callback = fns.onStatUpgrades
})
AutoUpgradesGroup:AddSlider("StatKeepPercent", { Text = "Keep Money %", Default = 0, Min = 0, Max = 95, Rounding = 0 })
AutoUpgradesGroup:AddSlider("StatPerCycle", { Text = "Upgrades Per Cycle", Default = 10, Min = 1, Max = 100, Rounding = 0 })
AutoUpgradesGroup:AddSlider("StatActionDelay", { Text = "Action Delay", Default = 0.1, Min = 0, Max = 2, Rounding = 2 })
AutoUpgradesGroup:AddSlider("StatLoopDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
AutoUpgradesGroup:AddToggle("StatNotify", { Text = "Notify On Upgrade", Default = false })
local AutoTrainGroup = ahH_19.Upgrades:AddLeftGroupbox("Auto Train", "dumbbell")
AutoTrainGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
AutoTrainGroup:AddDropdown("TrainTool", { Text = "Training Tool", Values = ahH_22, Default = Jo, Multi = false })
AutoTrainGroup:AddToggle("Auto2xTraining", { Text = "Auto 2x For Training", Default = true })
AutoTrainGroup:AddToggle("TrainKeepMobile", { Text = "Stay Unanchored", Default = true })
AutoTrainGroup:AddToggle("TrainPauseWhileFishing", { Text = "Pause While Fishing", Default = true })
AutoTrainGroup:AddSlider("TrainBurst", { Text = "Train Seconds Per Cycle", Default = 5, Min = 1, Max = 60, Rounding = 0 })
AutoTrainGroup:AddSlider("TrainLoopDelay", { Text = "Loop Delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1 })
local AutoBuyRodGroup = ahH_19.Upgrades:AddRightGroupbox("Auto Buy Rod", "fishing-rod")
AutoBuyRodGroup:AddToggle("AutoBuyRod", { Text = "Auto Buy Best Affordable Rod", Default = false })
AutoBuyRodGroup:AddToggle("AutoEquipRod", { Text = "Auto Equip Best Owned Rod", Default = true })
AutoBuyRodGroup:AddSlider("RodKeepPercent", { Text = "Keep Money %", Default = 0, Min = 0, Max = 95, Rounding = 0 })
AutoBuyRodGroup:AddSlider("RodLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
AutoBuyRodGroup:AddToggle("RodNotify", { Text = "Notify On Rod Bought", Default = true })
AutoBuyWeightsGroup = ahH_19.Upgrades:AddRightGroupbox("Auto Buy Weights", "dumbbell")
AutoBuyWeightsGroup:AddToggle("AutoBuyWeight", { Text = "Auto Buy Best Affordable Weight", Default = false })
AutoBuyWeightsGroup:AddToggle("AutoEquipWeight", { Text = "Auto Equip Best Owned Weight", Default = true })
AutoBuyWeightsGroup:AddSlider("WeightKeepPercent", { Text = "Keep Money %", Default = 0, Min = 0, Max = 95, Rounding = 0 })
AutoBuyWeightsGroup:AddSlider("WeightLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
AutoBuyWeightsGroup:AddToggle("WeightNotify", { Text = "Notify On Weight Bought", Default = true })
local AutoCollectIndexGroup = ahH_19.Base:AddRightGroupbox("Auto Collect Index", "book-open")
if ((AutoEquipBestGroup or not AutoGemShopGroup) and (not AutoEquipBestGroup or 78) or (not AutoEquipBestGroup and AutoGemShopGroup)) and (AutoGemShopGroup or not AutoEquipBestGroup or false or not AutoGemShopGroup and not AutoEquipBestGroup and false) and ((AutoEquipBestGroup and AutoEquipBestGroup or (not AutoGemShopGroup or not AutoGemShopGroup) or false) and (not AutoGemShopGroup and (AutoEquipBestGroup or 78) or (not AutoGemShopGroup or not AutoGemShopGroup) and (AutoEquipBestGroup or AutoGemShopGroup))) and not (((AutoEquipBestGroup or not AutoGemShopGroup) and (not AutoEquipBestGroup or 78) or (not AutoEquipBestGroup and AutoGemShopGroup)) and (AutoGemShopGroup or not AutoEquipBestGroup or false or not AutoGemShopGroup and not AutoEquipBestGroup and false) and ((AutoEquipBestGroup and AutoEquipBestGroup or (not AutoGemShopGroup or not AutoGemShopGroup) or false) and (not AutoGemShopGroup and (AutoEquipBestGroup or 78) or (not AutoGemShopGroup or not AutoGemShopGroup) and (AutoEquipBestGroup or AutoGemShopGroup)))) then
    AutoSummonWeatherGroup:AddToggle("AutoIndex", { Text = "Auto Collect Index Rewards", Default = false })
    AutoSummonWeatherGroup:AddToggle("IndexMilestones", { Text = "Claim Milestones", Default = true })
    AutoSummonWeatherGroup:AddSlider("IndexActionDelay", { Default = 0.15, Text = "Action Delay", Min = 0, Rounding = 2, Max = 2 })
    AutoSummonWeatherGroup:AddSlider("IndexLoopDelay", { Default = 10, Rounding = 0, Text = "Loop Delay", Min = 1, Max = 120 })
    ahH_19 = AutoCollectIndexGroup.Fishing:AddLeftGroupbox("Auto Summon Weather", "cloud-lightning")
else
    AutoCollectIndexGroup:AddToggle("AutoIndex", { Text = "Auto Collect Index Rewards", Default = false })
    AutoCollectIndexGroup:AddToggle("IndexMilestones", { Text = "Claim Milestones", Default = true })
    AutoCollectIndexGroup:AddSlider("IndexActionDelay", { Text = "Action Delay", Default = 0.15, Min = 0, Max = 2, Rounding = 2 })
    AutoCollectIndexGroup:AddSlider("IndexLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 0 })
    AutoSummonWeatherGroup = ahH_19.Fishing:AddLeftGroupbox("Auto Summon Weather", "cloud-lightning")
end
AutoSummonWeatherGroup:AddToggle("AutoSummonWeather", { Text = "Auto Summon Weather", Default = false })
AutoSummonWeatherGroup:AddDropdown("SummonWeathers", {
    Text = "Weathers To Summon",
    Values = IC,
    Default = {},
    Multi = true,
    Callback = fns.onSummonWeathers
})
AutoSummonWeatherGroup:AddToggle("SummonOnlyWhenClear", { Text = "Only When No Weather Active", Default = true })
AutoSummonWeatherGroup:AddToggle("SummonRequireFish", { Text = "Only When Fish Requirement Met", Default = true })
AutoSummonWeatherGroup:AddSlider("SummonLoopDelay", { Text = "Loop Delay", Default = 30, Min = 5, Max = 300, Rounding = 0 })
AutoSummonWeatherGroup:AddToggle("SummonNotify", { Text = "Notify On Summon", Default = true })
ahH_33 = ahH_19.Fishing:AddRightGroupbox("Auto Sell", "banknote")
ahH_33:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
ahH_33:AddDropdown("SellMode", {
    Text = "Sell Mode",
    Values = { "Sell All", "Selected Fish", "Below Rarity" },
    Default = "Sell All",
    Multi = false
})
ahH_33:AddDropdown("SellFishList", {
    Text = "Fish To Sell",
    Values = ahH_44,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = fns.onSellFishList
})
ahH_33:AddDropdown("SellMaxRarity", { Text = "Sell Below Rarity", Values = Id, Default = Id[#Id], Multi = false })
ahH_33:AddSlider("SellMinFish", { Text = "Only Sell When Fish >=", Default = 1, Min = 1, Max = IP, Rounding = 0 })
ahH_33:AddSlider("SellActionDelay", { Text = "Action Delay", Default = 0.1, Min = 0, Max = 2, Rounding = 2 })
ahH_33:AddSlider("SellLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
ahH_33:AddToggle("SellNotify", { Text = "Notify On Sell", Default = false })
local GameAutoSellGroup = ahH_19.Fishing:AddRightGroupbox("Game Auto Sell", "settings-2")
GameAutoSellGroup:AddDropdown("GameSellRarities", {
    Text = "Auto Sell Rarities",
    Values = Id,
    Default = {},
    Multi = true,
    Callback = fns.onGameSellRarities
})
GameAutoSellGroup:AddSlider("GameSellMinEarnings", { Text = "Minimum Earnings", Default = 0, Min = 0, Max = 1000000, Rounding = 0 })
GameAutoSellGroup:AddButton({ Text = "Apply Game Auto Sell", Func = fns.onApplyGameAutoSell })
AutoGemShopGroup = ahH_19.Shops:AddLeftGroupbox("Auto Gem Shop", "gem")
AutoGemShopGroup:AddToggle("AutoGemShop", { Text = "Auto Gem Shop", Default = false })
AutoGemShopGroup:AddDropdown("GemShopItems", {
    Text = "Items To Buy",
    Values = ahH_70,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = fns.onGemShopItems
})
AutoGemShopGroup:AddSlider("GemKeepAmount", { Text = "Keep Gems", Default = 0, Min = 0, Max = 5000, Rounding = 0 })
AutoGemShopGroup:AddSlider("GemShopLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 0 })
AutoGemShopGroup:AddToggle("GemShopNotify", { Text = "Notify On Purchase", Default = true })
if ahH_57 then
    ahH_92 = nil
    ahH_77 = 13
    repeat
        ahH_62 = (ahH_77 * 1 + 0) % 2 + 1
        if ahH_62 <= 1 then
            ahH_62 = { "vgkfm", "kzatrn", "pxjv", "ypbl", "dmodedzctzq", "gfb", "vzkbebcdv" }
            local ak0 = ahH_77
            ahH_49 = ahH_62[ak0 % 7 + 1]
            if ahH_49:len() >= ahH_49:gsub("(.)", "%1%1", ak0 % 3 % 2 + 1):len() then
                ahH_6:AddToggle("AutoEventShop", { Text = "Auto Event Shop", Default = false })
                ahH_6:AddDropdown("EventShopItems", {
                    Default = {},
                    Text = "Items To Buy",
                    Values = ahH_92,
                    Multi = true,
                    Searchable = true,
                    Callback = fns.onEventShopItems
                })
                ahH_6:AddSlider("EventKeepCoins", { Max = 100000, Text = "Keep Event Coins", Default = 0, Rounding = 0, Min = 0 })
                ahH_6:AddSlider("EventShopLoopDelay", { Default = 10, Max = 120, Min = 1, Rounding = 0, Text = "Loop Delay" })
                ahH_6:AddToggle("EventShopNotify", { Text = "Notify On Purchase", Default = true })
            else
                ahH_92:AddToggle("AutoEventShop", { Text = "Auto Event Shop", Default = false })
                ahH_92:AddDropdown("EventShopItems", {
                    Text = "Items To Buy",
                    Values = ahH_6,
                    Default = {},
                    Multi = true,
                    Searchable = true,
                    Callback = fns.onEventShopItems
                })
                ahH_92:AddSlider("EventKeepCoins", { Text = "Keep Event Coins", Default = 0, Min = 0, Max = 100000, Rounding = 0 })
                ahH_92:AddSlider("EventShopLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 0 })
                ahH_92:AddToggle("EventShopNotify", { Text = "Notify On Purchase", Default = true })
            end
            ahH_77 = (ahH_77 + 13) % 16
        else
            local alh = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_77, 10), string.byte(tostring(ahH_92))), 20)
            if bit32.bxor(bit32.lrotate(bit32.bxor(alh, 3197395876), 16), 1671741076) == bit32.lrotate(alh, 16) then
                ahH_92 = ahH_19.Shops:AddRightGroupbox("Auto Event Shop", "store")
            else
                ahH_19 = ahH_92.Shops:AddRightGroupbox("Auto Event Shop", "store")
            end
            ahH_77 = (ahH_77 + 5) % 16
        end
    until (ahH_77 * 11 + 5) % 16 == 10
end
if ahH_37 then
    ahH_77, ahH_62 = nil, nil
    ahH_92 = 5
    repeat
        ahH_49 = (ahH_92 * 1 + 2) % 3 + 1
        if ahH_49 <= 2 then
            if ahH_49 <= 1 then
                if (ahH_92 * 1 + 1) * 17 % 4 == ((ahH_92 * 1 + 1) * 17 + 12) % 4 then
                    ahH_62:AddToggle("AutoCooking", { Text = "Auto Cooking Pot", Default = false })
                    ahH_62:AddToggle("CookSkipCatFish", { Text = "Skip Cat Mutated Fish", Default = true })
                    ahH_62:AddToggle("CookSkipPlaceable", { Text = "Skip Fish Worth Placing", Default = true })
                    ahH_62:AddDropdown("CookOrder", {
                        Text = "Insert Order",
                        Values = { "Lowest Rarity First", "Highest Rarity First", "Any Order" },
                        Default = "Lowest Rarity First",
                        Multi = false
                    })
                    ahH_62:AddDropdown("CookFish", {
                        Text = "Only These Fish",
                        Values = ahH_44,
                        Default = {},
                        Multi = true,
                        Searchable = true,
                        Callback = fns.onCookFish
                    })
                    ahH_62:AddDropdown("CookMaxRarity", { Text = "Never Insert Above Rarity", Values = Id, Default = Id[#Id], Multi = false })
                    ahH_62:AddSlider("CookTargetPoints", {
                        Text = "Cook At Points",
                        Default = IA.MinPointsToCook,
                        Min = IA.MinPointsToCook,
                        Max = 500,
                        Rounding = 0
                    })
                    ahH_62:AddSlider("CookInsertPerCycle", { Text = "Inserts Per Cycle", Default = 5, Min = 1, Max = 50, Rounding = 0 })
                    ahH_62:AddToggle("CookAutoClaim", { Text = "Auto Claim Dish", Default = true })
                    ahH_62:AddSlider("CookLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 120, Rounding = 1 })
                else
                    IA:AddToggle("AutoCooking", { Text = "Auto Cooking Pot", Default = false })
                    IA:AddToggle("CookSkipCatFish", { Text = "Skip Cat Mutated Fish", Default = true })
                    IA:AddToggle("CookSkipPlaceable", { Text = "Skip Fish Worth Placing", Default = true })
                    IA:AddDropdown("CookOrder", {
                        Multi = false,
                        Text = "Insert Order",
                        Default = "Lowest Rarity First",
                        Values = { "Lowest Rarity First", "Any Order", "Highest Rarity First" }
                    })
                    IA:AddDropdown("CookFish", {
                        Values = ahH_62,
                        Default = {},
                        Callback = fns.onCookFish,
                        Searchable = true,
                        Multi = true,
                        Text = "Only These Fish"
                    })
                    IA:AddDropdown("CookMaxRarity", { Values = ahH_44, Default = ahH_44[#ahH_44], Text = "Never Insert Above Rarity", Multi = false })
                    IA:AddSlider("CookTargetPoints", {
                        Default = Id.MinPointsToCook,
                        Max = 500,
                        Text = "Cook At Points",
                        Min = Id.MinPointsToCook,
                        Rounding = 0
                    })
                    IA:AddSlider("CookInsertPerCycle", { Rounding = 0, Max = 50, Text = "Inserts Per Cycle", Min = 1, Default = 5 })
                    IA:AddToggle("CookAutoClaim", { Text = "Auto Claim Dish", Default = true })
                    IA:AddSlider("CookLoopDelay", { Default = 5, Text = "Loop Delay", Min = 1, Max = 120, Rounding = 1 })
                end
                ahH_92 = (ahH_92 + 7) % 12
            else
                if ahH_92 * 93739143 + 13 + 6 <= ahH_92 * 93739143 + 13 + 6 + 1 then
                    ahH_77 = ahH_19.Event:AddLeftGroupbox("Auto Feed Cat", "cat")
                else
                    ahH_19 = ahH_77.Event:AddLeftGroupbox("Auto Feed Cat", "cat")
                end
                ahH_92 = (ahH_92 + 7) % 12
            end
        else
            if ahH_92 * 122802503 + 9 + 2 >= ahH_92 * 122802503 + 9 + 2 + 6 then
                ahH_44:AddToggle("AutoFeedCat", { Text = "Auto Feed Cat", Default = false })
                ahH_44:AddToggle("FeedCatMutatedOnly", { Text = "Only Cat Mutated Fish", Default = true })
                ahH_44:AddDropdown("FeedOrder", {
                    Text = "Feed Order",
                    Multi = false,
                    Values = { "Any Order", "Highest Rarity First", "Lowest Rarity First" },
                    Default = "Lowest Rarity First"
                })
                ahH_44:AddDropdown("FeedFish", {
                    Callback = fns.onFeedFish,
                    Values = ahH_19,
                    Searchable = true,
                    Multi = true,
                    Default = {},
                    Text = "Only These Fish"
                })
                ahH_44:AddDropdown("FeedMaxRarity", { Default = ahH_62[#ahH_62], Text = "Never Feed Above Rarity", Values = ahH_62, Multi = false })
                ahH_44:AddToggle("FeedAutoClaim", { Text = "Auto Claim Reward", Default = true })
                ahH_44:AddSlider("FeedPerCycle", { Rounding = 0, Max = 20, Min = 1, Default = 1, Text = "Feeds Per Cycle" })
                ahH_44:AddSlider("FeedLoopDelay", { Default = 5, Text = "Loop Delay", Min = 1, Rounding = 1, Max = 120 })
                ahH_77 = Id.Event:AddRightGroupbox("Auto Cooking Pot", "cooking-pot")
            else
                ahH_77:AddToggle("AutoFeedCat", { Text = "Auto Feed Cat", Default = false })
                ahH_77:AddToggle("FeedCatMutatedOnly", { Text = "Only Cat Mutated Fish", Default = true })
                ahH_77:AddDropdown("FeedOrder", {
                    Text = "Feed Order",
                    Values = { "Lowest Rarity First", "Highest Rarity First", "Any Order" },
                    Default = "Lowest Rarity First",
                    Multi = false
                })
                ahH_77:AddDropdown("FeedFish", {
                    Text = "Only These Fish",
                    Values = ahH_44,
                    Default = {},
                    Multi = true,
                    Searchable = true,
                    Callback = fns.onFeedFish
                })
                ahH_77:AddDropdown("FeedMaxRarity", { Text = "Never Feed Above Rarity", Values = Id, Default = Id[#Id], Multi = false })
                ahH_77:AddToggle("FeedAutoClaim", { Text = "Auto Claim Reward", Default = true })
                ahH_77:AddSlider("FeedPerCycle", { Text = "Feeds Per Cycle", Default = 1, Min = 1, Max = 20, Rounding = 0 })
                ahH_77:AddSlider("FeedLoopDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 120, Rounding = 1 })
                ahH_62 = ahH_19.Event:AddRightGroupbox("Auto Cooking Pot", "cooking-pot")
            end
            ahH_92 = (ahH_92 + 4) % 12
        end
    until (ahH_92 * 11 + 1) % 12 == 2
end
if IB then
    ahH_92, ahH_49, ahH_77 = nil, nil, nil
    ahH_62 = 31
    repeat
        ahH_33 = (ahH_62 * 1 + 0) % 4 + 1
        if ahH_33 <= 2 then
            if ahH_33 <= 1 then
                if ahH_77 and ahH_77 and (not ahH_49 or not ahH_49) and (ahH_77 and ahH_77 and (not ahH_49 or ahH_77)) and not (ahH_77 and ahH_77 and (not ahH_49 or not ahH_49) and (ahH_77 and ahH_77 and (not ahH_49 or ahH_77))) then
                    ahH_19:AddToggle("AutoUfo", { Text = "UFO Event Auto-Farm", Default = false })
                    ahH_19:AddToggle("UfoAutoFuel", { Text = "Auto Fill UFO Pot With Caught Fish", Default = true })
                    ahH_19:AddToggle("UfoDriveAutoFish", { Text = "Auto Fish While Filling The Pot", Default = true })
                    ahH_19:AddToggle("UfoDeliverEachCatch", { Text = "Deliver After Every Catch", Default = true })
                    ahH_19:AddToggle("AutoResearch", { Text = "Auto Research Lab", Default = true })
                    ahH_19:AddToggle("AutoCanisters", { Text = "Auto Collect Canisters", Default = true })
                    ahH_19:AddToggle("UfoAutoSell", { Text = "Auto Sell When Inventory Full", Default = true })
                    ahH_19:AddDropdown("UfoTargetOrder", {
                        Values = { "Highest Power First", "Lowest Power First" },
                        Default = "Highest Power First",
                        Text = "Target Order",
                        Multi = false
                    })
                    ahH_19:AddSlider("UfoInventoryFullAt", { Default = 50, Min = 1, Rounding = 0, Max = 300, Text = "Sell When Fish >=" })
                    ahH_19:AddSlider("UfoFuelTarget", { Max = 100, Default = 100, Min = 10, Text = "Fuel Target %", Rounding = 0 })
                    ahH_19:AddSlider("UfoReturnBuffer", { Default = 6, Min = 2, Max = 30, Text = "Return Buffer Seconds", Rounding = 1 })
                    ahH_19:AddSlider("UfoTeleportDelay", { Min = 0.1, Rounding = 2, Max = 2, Text = "Teleport Delay", Default = 0.35 })
                    ahH_19:AddSlider("UfoActionDelay", { Text = "Action Delay", Min = 0.1, Rounding = 2, Max = 2, Default = 0.35 })
                    ahH_19:AddSlider("UfoLoopDelay", { Max = 30, Rounding = 1, Min = 0.5, Text = "Loop Delay", Default = 2 })
                    ahH_19:AddToggle("UfoNotify", { Text = "Notify On UFO Actions", Default = true })
                    ahH_19:AddToggle("UfoDebug", { Text = "Debug Notifications", Default = false })
                    ahH_92 = ahH_49.Ufo:AddRightGroupbox("UFO Pot Fish", "fuel")
                else
                    ahH_92:AddToggle("AutoUfo", { Text = "UFO Event Auto-Farm", Default = false })
                    ahH_92:AddToggle("UfoAutoFuel", { Text = "Auto Fill UFO Pot With Caught Fish", Default = true })
                    ahH_92:AddToggle("UfoDriveAutoFish", { Text = "Auto Fish While Filling The Pot", Default = true })
                    ahH_92:AddToggle("UfoDeliverEachCatch", { Text = "Deliver After Every Catch", Default = true })
                    ahH_92:AddToggle("AutoResearch", { Text = "Auto Research Lab", Default = true })
                    ahH_92:AddToggle("AutoCanisters", { Text = "Auto Collect Canisters", Default = true })
                    ahH_92:AddToggle("UfoAutoSell", { Text = "Auto Sell When Inventory Full", Default = true })
                    ahH_92:AddDropdown("UfoTargetOrder", {
                        Text = "Target Order",
                        Values = { "Highest Power First", "Lowest Power First" },
                        Default = "Highest Power First",
                        Multi = false
                    })
                    ahH_92:AddSlider("UfoInventoryFullAt", { Text = "Sell When Fish >=", Default = 50, Min = 1, Max = 300, Rounding = 0 })
                    ahH_92:AddSlider("UfoFuelTarget", { Text = "Fuel Target %", Default = 100, Min = 10, Max = 100, Rounding = 0 })
                    ahH_92:AddSlider("UfoReturnBuffer", { Text = "Return Buffer Seconds", Default = 6, Min = 2, Max = 30, Rounding = 1 })
                    ahH_92:AddSlider("UfoTeleportDelay", { Text = "Teleport Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
                    ahH_92:AddSlider("UfoActionDelay", { Text = "Action Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2 })
                    ahH_92:AddSlider("UfoLoopDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
                    ahH_92:AddToggle("UfoNotify", { Text = "Notify On UFO Actions", Default = true })
                    ahH_92:AddToggle("UfoDebug", { Text = "Debug Notifications", Default = false })
                    ahH_49 = ahH_19.Ufo:AddRightGroupbox("UFO Pot Fish", "fuel")
                end
                ahH_62 = (ahH_62 + 25) % 32
            else
                local ajk = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_62, 19), string.byte(tostring(ahH_92))), 5)
                if bit32.bxor(bit32.lrotate(bit32.bxor(ajk, 1696425365), 30), 1497848165) == bit32.lrotate(ajk, 30) then
                    ahH_49:AddToggle("UfoFuelMutatedOnly", { Text = "Only Mutated Fish", Default = true })
                    ahH_49:AddToggle("UfoFuelSkipPlaceable", { Text = "Skip Fish Worth Placing", Default = true })
                    ahH_49:AddDropdown("UfoMutations", {
                        Text = "Mutations To Give",
                        Values = HZ.mutationNames,
                        Default = HZ.mutationNames,
                        Multi = true,
                        Callback = fns.onUfoMutations
                    })
                    ahH_49:AddDropdown("UfoFuelOrder", {
                        Text = "Give Order",
                        Values = { "Lowest Rarity First", "Highest Rarity First", "Any Order" },
                        Default = "Lowest Rarity First",
                        Multi = false
                    })
                    ahH_49:AddDropdown("UfoFuelFish", {
                        Text = "Only These Fish",
                        Values = ahH_44,
                        Default = {},
                        Multi = true,
                        Searchable = true,
                        Callback = fns.onUfoFuelFish
                    })
                    ahH_49:AddDropdown("UfoFuelMaxRarity", { Text = "Never Give Above Rarity", Values = Id, Default = Id[#Id], Multi = false })
                    ahH_77 = ahH_19.Ufo:AddRightGroupbox("Auto Upgrade UFO", "trending-up")
                else
                    ahH_77:AddToggle("UfoFuelMutatedOnly", { Text = "Only Mutated Fish", Default = true })
                    ahH_77:AddToggle("UfoFuelSkipPlaceable", { Text = "Skip Fish Worth Placing", Default = true })
                    ahH_77:AddDropdown("UfoMutations", {
                        Text = "Mutations To Give",
                        Multi = true,
                        Values = ahH_49.mutationNames,
                        Default = ahH_49.mutationNames,
                        Callback = fns.onUfoMutations
                    })
                    ahH_77:AddDropdown("UfoFuelOrder", {
                        Values = { "Lowest Rarity First", "Any Order", "Highest Rarity First" },
                        Text = "Give Order",
                        Multi = false,
                        Default = "Lowest Rarity First"
                    })
                    ahH_77:AddDropdown("UfoFuelFish", {
                        Text = "Only These Fish",
                        Default = {},
                        Multi = true,
                        Searchable = true,
                        Callback = fns.onUfoFuelFish,
                        Values = Id
                    })
                    ahH_77:AddDropdown("UfoFuelMaxRarity", { Default = HZ[#HZ], Multi = false, Text = "Never Give Above Rarity", Values = HZ })
                    ahH_19 = ahH_44.Ufo:AddRightGroupbox("Auto Upgrade UFO", "trending-up")
                end
                ahH_62 = (ahH_62 + 5) % 32
            end
        elseif ahH_33 <= 3 then
            ahH_33 = {
                "nidrohs",
                "pzqv",
                "eyuhcicnipf",
                "sworlgdzc",
                "idaomaelz",
                "afiitzzoy",
                "linohi",
                "tnnaqvyqgzc",
                "trnskqmaza",
                "iyul"
            }
            local akR = ahH_62
            ahH_3 = ahH_33[akR % 10 + 1]
            if ahH_3:len() <= ahH_3:gsub("(.)", "%1%1", akR % 3 % 2 + 1):len() then
                ahH_77:AddToggle("AutoUfoUpgrade", { Text = "Auto Upgrade UFO", Default = false })
                ahH_77:AddDropdown("UfoUpgrades", {
                    Text = "Upgrades To Buy",
                    Values = HZ.upgradeNames,
                    Default = HZ.upgradeNames,
                    Multi = true,
                    Callback = fns.onUfoUpgrades
                })
                ahH_77:AddSlider("UfoUpgradeKeepCoins", { Text = "Keep Alien Coins", Default = 0, Min = 0, Max = 50000, Rounding = 0 })
                ahH_77:AddSlider("UfoUpgradeLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 0 })
                ahH_77:AddToggle("UfoUpgradeNotify", { Text = "Notify On Upgrade", Default = true })
            else
                HZ:AddToggle("AutoUfoUpgrade", { Text = "Auto Upgrade UFO", Default = false })
                HZ:AddDropdown("UfoUpgrades", {
                    Multi = true,
                    Default = ahH_77.upgradeNames,
                    Text = "Upgrades To Buy",
                    Callback = fns.onUfoUpgrades,
                    Values = ahH_77.upgradeNames
                })
                HZ:AddSlider("UfoUpgradeKeepCoins", { Text = "Keep Alien Coins", Default = 0, Rounding = 0, Min = 0, Max = 50000 })
                HZ:AddSlider("UfoUpgradeLoopDelay", { Default = 10, Text = "Loop Delay", Min = 1, Rounding = 0, Max = 120 })
                HZ:AddToggle("UfoUpgradeNotify", { Text = "Notify On Upgrade", Default = true })
            end
            ahH_62 = (ahH_62 + 1) % 32
        else
            ahH_33 = (vector.create((ahH_62 * 2 + 8) % 11 + 1, (ahH_62 * 10 + 5) % 13 + 1, (ahH_62 * 9 + 13) % 17 + 1))
            ahH_3 = (vector.create((ahH_62 * 6 + 5) % 11 + 1, (ahH_62 * 8 + 5) % 13 + 1, (ahH_62 * 2 + 12) % 17 + 1))
            ahH_82 = (vector.create((ahH_62 * 1 + 3) % 11 + 1, (ahH_62 * 4 + 3) % 13 + 1, (ahH_62 * 5 + 11) % 17 + 1))
            if vector.dot(vector.cross(ahH_33, ahH_3), ahH_82) == vector.dot(vector.cross(ahH_3, ahH_82), ahH_33) then
                ahH_92 = ahH_19.Ufo:AddLeftGroupbox("UFO Event Auto-Farm", "rocket")
            else
                ahH_19 = ahH_92.Ufo:AddLeftGroupbox("UFO Event Auto-Farm", "rocket")
            end
            ahH_62 = (ahH_62 + 13) % 32
        end
    until (ahH_62 * 9 + 29) % 32 == 0
end
if ahH_41 then
    ahH_44 = nil
    ahH_92 = 4
    repeat
        ahH_77 = (ahH_92 * 1 + 0) % 2 + 1
        if ahH_77 <= 1 then
            if (ahH_92 * 2 + 1) * 4 % 3 == ((ahH_92 * 2 + 1) * 4 + 8) % 3 then
                ahH_19 = ahH_44.Floats:AddLeftGroupbox("Auto Float Crates", "package")
            else
                ahH_44 = ahH_19.Floats:AddLeftGroupbox("Auto Float Crates", "package")
            end
            ahH_92 = (ahH_92 + 5) % 8
        else
            ahH_77 = (vector.create((ahH_92 * 6 + 6) % 11 + 1, (ahH_92 * 9 + 13) % 13 + 1, (ahH_92 * 8 + 14) % 17 + 1))
            ahH_62 = (vector.create((ahH_92 * 5 + 3) % 11 + 1, (ahH_92 * 1 + 12) % 13 + 1, (ahH_92 * 9 + 5) % 17 + 1))
            ahH_49 = (vector.create((ahH_92 * 1 + 2) % 11 + 1, (ahH_92 * 4 + 9) % 13 + 1, (ahH_92 * 5 + 9) % 17 + 1))
            if vector.dot(vector.cross(ahH_77, ahH_62), ahH_49) == vector.dot(vector.cross(ahH_62, ahH_49), ahH_77) then
                ahH_44:AddToggle("AutoBuyCrates", { Text = "Auto Buy Float Crates", Default = false })
                ahH_44:AddDropdown("CrateTypes", { Text = "Crates To Buy", Values = ahH_28, Default = {}, Multi = true, Callback = fns.onCrateTypes })
                ahH_44:AddSlider("CrateKeepPercent", { Text = "Keep Money %", Default = 0, Min = 0, Max = 95, Rounding = 0 })
                ahH_44:AddToggle("AutoPlaceCrates", { Text = "Auto Place Crates", Default = true })
                ahH_44:AddToggle("AutoOpenCrates", { Text = "Auto Open Ready Crates", Default = true })
                ahH_44:AddToggle("CrateTeleport", { Text = "Teleport To Base", Default = true })
                ahH_44:AddSlider("CrateLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 0 })
                ahH_44:AddToggle("CrateNotify", { Text = "Notify On Crate", Default = true })
            else
                ahH_28:AddToggle("AutoBuyCrates", { Text = "Auto Buy Float Crates", Default = false })
                ahH_28:AddDropdown("CrateTypes", { Callback = fns.onCrateTypes, Default = {}, Values = ahH_44, Multi = true, Text = "Crates To Buy" })
                ahH_28:AddSlider("CrateKeepPercent", { Default = 0, Text = "Keep Money %", Min = 0, Max = 95, Rounding = 0 })
                ahH_28:AddToggle("AutoPlaceCrates", { Text = "Auto Place Crates", Default = true })
                ahH_28:AddToggle("AutoOpenCrates", { Text = "Auto Open Ready Crates", Default = true })
                ahH_28:AddToggle("CrateTeleport", { Text = "Teleport To Base", Default = true })
                ahH_28:AddSlider("CrateLoopDelay", { Default = 10, Rounding = 0, Text = "Loop Delay", Min = 1, Max = 120 })
                ahH_28:AddToggle("CrateNotify", { Text = "Notify On Crate", Default = true })
            end
            ahH_92 = (ahH_92 + 7) % 8
        end
    until (ahH_92 * 1 + 6) % 8 == 6
end
if ahH_86 then
    ahH_28 = nil
    ahH_44 = 6
    repeat
        ahH_92 = (ahH_44 * 1 + 0) % 2 + 1
        if ahH_92 <= 1 then
            if ahH_44 * 58222143 + 2 + 1 >= ahH_44 * 58222143 + 2 + 1 + 1 then
                ahH_19 = ahH_28.Floats:AddRightGroupbox("Auto Equip Best Floats", "anchor")
            else
                ahH_28 = ahH_19.Floats:AddRightGroupbox("Auto Equip Best Floats", "anchor")
            end
            ahH_44 = (ahH_44 + 1) % 8
        else
            local akP = bit32.rrotate(bit32.bxor(bit32.lrotate(ahH_44, 21), string.byte(tostring(ahH_28))), 6)
            if bit32.bxor(bit32.lrotate(bit32.bxor(akP, 2681894378), 2), 2137642922) == bit32.lrotate(akP, 2) then
                ahH_28:AddToggle("AutoEquipFloats", { Text = "Auto Equip Best Floats", Default = false })
                ahH_28:AddDropdown("FloatTypes", {
                    Text = "Only These Floats",
                    Values = ahH_10,
                    Default = {},
                    Multi = true,
                    Searchable = true,
                    Callback = fns.onFloatTypes
                })
                ahH_28:AddToggle("FloatNoDuplicates", { Text = "Avoid Duplicate Floats", Default = true })
                ahH_28:AddSlider("FloatLoopDelay", { Text = "Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 0 })
                ahH_28:AddToggle("FloatNotify", { Text = "Notify On Equip", Default = true })
            else
                ahH_10:AddToggle("AutoEquipFloats", { Text = "Auto Equip Best Floats", Default = false })
                ahH_10:AddDropdown("FloatTypes", {
                    Searchable = true,
                    Multi = true,
                    Values = ahH_28,
                    Callback = fns.onFloatTypes,
                    Text = "Only These Floats",
                    Default = {}
                })
                ahH_10:AddToggle("FloatNoDuplicates", { Text = "Avoid Duplicate Floats", Default = true })
                ahH_10:AddSlider("FloatLoopDelay", { Default = 10, Min = 1, Max = 120, Text = "Loop Delay", Rounding = 0 })
                ahH_10:AddToggle("FloatNotify", { Text = "Notify On Equip", Default = true })
            end
            ahH_44 = (ahH_44 + 3) % 8
        end
    until (ahH_44 * 3 + 2) % 8 == 0
end
Jh, Ie, connection2, connection3, JB, I1, IL = nil, nil, nil, nil, nil, nil, nil
ahH_77 = ahH_19.Settings:AddLeftGroupbox("Menu", "wrench")
ahH_77:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Jh = tick()
Ie = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local Z5 = v
        pcall(function()
            Z5:Disable()
        end)
    end
end)
I1 = fns.fn1648
connection2 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection3 = UserInputService.InputChanged:Connect(fns.onInputChanged)
ahH_77:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ahH_77:AddButton("Unload", fns.onUnload)
Ja.ToggleKeybind = I_.MenuKeybind
Ja:OnUnload(fns.fn1125)
ahH_66:SetLibrary(Ja)
ahH_66:SetFolder("OuroborosHub")
ahH_66:SaveDefault("Mint")
ahH_53:SetLibrary(Ja)
ahH_53:IgnoreThemeSettings()
ahH_53:SetIgnoreIndexes({ "MenuKeybind" })
ahH_53:SetFolder("OuroborosHub/PullALuckyFish")
ahH_53:BuildConfigSection(ahH_19.Settings)
ahH_66:ApplyToTab(ahH_19.Settings)
ahH_66:LoadDefault()
ahH_53:LoadAutoloadConfig()
task.spawn(fns.autoFishLoop)
task.spawn(fns.autoCollectLoop)
task.spawn(fns.autoRebirthLoop)
task.spawn(function()
    while not Ja.Unloaded do
        local aa0 = I_.PlaceLoopDelay and I_.PlaceLoopDelay.Value or 3
        task.wait(aa0)
        if Ja.Unloaded then
            break
        end
        if Toggles.AutoPlaceFish.Value then
            pcall(function()
                local aaF
                aaF = nil
                local aaG = I2()
                if #aaG == 0 then
                    return
                end
                local aaH = H2()
                aaF = {}
                for k, v in aaH do
                    aaF[v] = Im(v.configName, v.mutation)
                end
                table.sort(aaH, function(t4, t5)
                    return aaF[t4] > aaF[t5]
                end)
                local aaI = 0
                for k, v in aaH do
                    if aaI >= I_.PlacePerCycle.Value or Ja.Unloaded or not Toggles.AutoPlaceFish.Value then
                        break
                    end
                    if not (Toggles.PlaceKeepCatFish.Value and v.mutations[Iv]) then
                        local aaH_3 = aaG[1]
                        if aaF[v] <= aaH_3.score then
                            break
                        elseif JF(v.tool) then
                            Jm.RequestPlaceFish:Fire({ ConfigName = v.configName, BaseSlotIndexName = aaH_3.name })
                            aaH_3.score = aaF[v]
                            table.sort(aaG, function(um, un)
                                return um.score < un.score
                            end)
                            aaI = aaI + 1
                            if Toggles.PlaceNotify.Value then
                                Ja:Notify("Placed " .. v.configName .. " in slot " .. aaH_3.name)
                            end
                            task.wait(I_.PlaceActionDelay.Value)
                        end
                    end
                end
            end)
        end
    end
end)
task.spawn(fns.antiAfkLoop)
JB = {
    ["Cheapest First"] = fns.fn1059,
    ["Most Expensive First"] = fns.fn761,
    ["Lowest Level First"] = fns.fn246,
    ["Highest Earnings First"] = fns.fn1231,
    ["Slot Order"] = fns.fn1650
}
IL = fns.fn277
do
    task.spawn(fns.autoUpgradeFishLoop)
    task.spawn(fns.autoEquipBestLoop)
    task.spawn(fns.autoStatUpgradesLoop)
    task.spawn(fns.autoTrainLoop)
    task.spawn(autoBuyRodLoop)
    task.spawn(fns.auto2xTrainingLoop)
    task.spawn(fns.autoBuyWeightLoop)
    task.spawn(fns.autoIndexLoop)
    task.spawn(fns.autoSellLoop)
    task.spawn(fns.autoGemShopLoop)
    task.spawn(fns.autoEventShopLoop)
    task.spawn(autoFeedCatLoop)
    task.spawn(fns.autoCookingLoop)
    task.spawn(fns.autoSummonWeatherLoop)
    task.spawn(fns.autoBuyCratesLoop)
    task.spawn(fns.autoResearchLoop)
    task.spawn(fns.autoUfoLoop)
    task.spawn(function()
        while not Ja.Unloaded do
            local wait = task.wait
            local ag1 = I_.UfoUpgradeLoopDelay and I_.UfoUpgradeLoopDelay.Value or 10
            wait(ag1)
            if Ja.Unloaded then
                break
            end
            if IB and Toggles.AutoUfoUpgrade and Toggles.AutoUfoUpgrade.Value then
                pcall(function()
                    local agP = Ii()
                    if not agP then
                        return
                    end
                    local agQ = IO.GetPlayerCoins(agP) - I_.UfoUpgradeKeepCoins.Value
                    for k, v in IO.OrderedUpgradeIds do
                        local agZ = v
                        if Ja.Unloaded or not Toggles.AutoUfoUpgrade.Value then
                            break
                        end
                        local agR_1 = Io(HZ.upgrades) or HZ.upgrades[agZ]
                        if agR_1 then
                            local agR_2 = IO.GetPlayerStage(agP, agZ)
                            local agS = IO.GetUpgradeCost(agZ, agR_2)
                            local agR_3 = type(agS) == "number" and agS <= agQ
                            if agR_3 then
                                pcall(function()
                                    Jm.AlienBuyUpgrade:Call(agZ):Await()
                                end)
                                agQ = agQ - agS
                                if Toggles.UfoUpgradeNotify.Value then
                                    local agR_4 = IO.Upgrades[agZ]
                                    local agR_5 = agR_4 and agR_4.DisplayName or agZ
                                    Ja:Notify("Upgraded " .. agR_5)
                                end
                                task.wait(0.5)
                            end
                        end
                    end
                end)
            end
        end
    end)
    task.spawn(fns.autoEquipFloatsLoop)
end
