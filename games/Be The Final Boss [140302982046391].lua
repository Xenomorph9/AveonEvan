local lL
local ms
local l9
local lR
local my
local mf
local BossRoomWorldConfig
local mE
local ml
local l2
local lK
local mr
local l8
local mx
local me
local lW
local mD
local mk
local l1
local lJ
local l7
local lP
local LocalPlayer
local md
local lV
local mC
local Toggles
local UnitMutationConfig
local connection
local mp
local UnitConfig
local lO
local mv
local mc
local lU
local mB
local RemoteEvents
local l_
local lH
local mo
local l5
local SkillTreeNodesConfig
local mu
local mb
local connection2
local mh
local lZ
local mG
local lG
local mn
local Label
local lM
local mt
local PlayerDataClient
local lS
local VirtualUser
local mg
local lY
local mF
local mm
local l3
local function onOnClientEvent(gw)
    local rz = type(gw) == "table" and gw.ownerUserId == LocalPlayer.UserId and gw.reason == "Roll"
    if rz then
        mE = os.clock()
    end
end
local function autoSkillTreeLoop()
    while not ms.Unloaded do
        if Toggles.AutoSkillTree.Value then
            local Value2 = mk.SkillCoinReserve.Value
            local Value = mk.SkillSoulReserve.Value
            local tf = {}
            local tg = { Coin = Value2, Soul = Value }
            for k, v in pairs(SkillTreeNodesConfig) do
                local td_1 = type(v) == "table" and v.isNavigation ~= true and type(v.storeItemKey) ~= "string"
                if td_1 then
                    local currency = v.currency
                    local te_1 = type(v.price) == "table" and tonumber(v.price.quantity)
                    local th = te_1 or nil
                    local te_2 = currency
                    if te_2 then
                        te_2 = th
                    end
                    if te_2 then
                        te_2 = mk.SkillCurrencies.Value[currency]
                    end
                    if te_2 then
                        te_2 = not l3(k)
                    end
                    if te_2 then
                        local te_3 = lP(v.parentNodeId) and lP(v.requiredNodeId)
                        if te_3 then
                            local te_4 = md(currency) - th
                            if te_4 >= (tg[currency] or 0) then
                                table.insert(tf, { id = k, price = th })
                            end
                        end
                    end
                end
            end
            table.sort(tf, function(iR, iS)
                if Toggles.SkillCheapestFirst.Value then
                    return iR.price < iS.price
                end
                return iR.price > iS.price
            end)
            local td_3 = tf[1]
            if td_3 then
                RemoteEvents.BossRoomUnlockSkillNode:FireServer(td_3.id)
                task.wait(0.5)
            end
        end
        task.wait(1)
    end
end
local function onInputChanged(eh)
    local UserInputType = eh.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        me = tick()
    end
end
local function fn71()
    if not Toggles.AutoBuyRoll.Value or not Toggles.BuyWaitForSouls.Value then
        return false
    end
    for k, v in mn() do
        local se_1 = mv(v) and not l2(v)
        if se_1 then
            return true
        end
    end
    return false
end
local function onRscripts()
    mc(mf)
    ms:Notify("Copied Rscripts profile to clipboard")
end
local function fn127(cg, ch)
    if ch == "Level" then
        return l8.getUnitLevel(cg)
    elseif ch == "Rarity" then
        return l8.getRarityTier(cg)
    else
        return l8.getUnitPower(cg)
    end
end
local function onInputBegan()
    me = tick()
end
local function fn166(a6)
    if a6:IsA("BasePart") then
        return a6
    end
    local ob = a6.PrimaryPart or a6:FindFirstChild("HumanoidRootPart") or a6:FindFirstChildWhichIsA("BasePart", true)
    return ob
end
local function fn169(c_)
    if c_ == nil then
        return true
    end
    local pG = SkillTreeNodesConfig[c_]
    if type(pG) ~= "table" then
        return false
    elseif pG.isNavigation == true then
        return true
    else
        return l3(c_)
    end
end
local function fn173(bj, bk)
    local oo = bj.CFrame:PointToObjectSpace(bk)
    local op = math.abs(oo.X) <= bj.Size.X / 2 and math.abs(oo.Z) <= bj.Size.Z / 2
    return op
end
local function onCopyJoinScript_JobID()
    local dq = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, l_)
    mc(dq)
    ms:Notify("Copied join script to clipboard")
end
local function fn214(az, aA)
    return string.format('<font color="%s">%s</font>', aA, az)
end
local function antiAfkLoop()
    while not ms.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local p7 = tick() - me
            local p8 = tick() - l9
            if p7 >= 300 and p8 >= 60 then
                pcall(lV)
            else
                if p7 < 300 and p8 >= 300 then
                    pcall(lV)
                end
            end
        end
    end
end
local function fn245(ct)
    local pi_1
    local ph_1
    ph_1, pi_1 = UnitMutationConfig.decodeUnitId(ct)
    local pj = ph_1 and UnitConfig[ph_1]
    if not pj then
        return math.huge
    end
    local pj_1 = lY.getSummonCostForUnit(pj)
    local ph_3 = pj_1 and pj_1.soul
    local pj_2 = tonumber(ph_3) or 0
    return math.ceil(pj_2 * UnitMutationConfig.getCostMultiplier(pi_1))
end
local function fn247()
    local qu = lZ()
    local qv = lM(qu)
    if not qv then
        return false
    end
    local qw = l1(mk.PlaceUnits)
    local qx = {}
    for k, v in l8.getOwnedUnitKeys() do
        local qy_1 = next(qw) == nil or qw[v]
        if qy_1 then
            table.insert(qx, v)
        end
    end
    local qx_1 = l8.sortOwnedUnitKeys(qx, mk.PlacePriority.Value)
    local qw_1 = mu(qu)
    local Value2 = mk.PlaceLimit.Value
    local Value = mk.PlaceSpacing.Value
    if Value2 ~= 0 and #qw_1 >= Value2 then
        return false
    end
    local qy_3 = mt("BossPopulationRemaining", mt("BossRoomMinionsAvailable", 0))
    for k, v in qx_1 do
        local qx_2 = l8.getUnitPopulation(v)
        if qx_2 <= qy_3 then
            local qx_3 = mD(qv, qu, Value, mk.PlaceFormation.Value)
            for k, v2 in qx_3 do
                if lS(v2, qw_1, BossRoomWorldConfig.MINION_PLACEMENT_RADIUS) then
                    RemoteEvents.BossRoomPlaceMinion:FireServer(v2, v)
                    return true
                end
            end
            return false
        end
    end
    return false
end
local function fn267(ha)
    local hc = UnitMutationConfig.encodeUnitId(ha.unitKey, ha.mutation)
    return md("Soul") - mb(hc) >= mk.SoulReserve.Value
end
local function fn300(eY)
    local qj = {}
    for k, v in pairs(eY.Value) do
        if v then
            qj[k] = true
        end
    end
    return qj
end
local function fn312(bo, bp, bq)
    local ot = lZ()
    local ot_2
    local ou = ot and ot:FindFirstChild(BossRoomWorldConfig.HEROS_FOLDER_NAME)
    if not ou then
        return nil
    end
    local ou_1 = lM(ot)
    local ow = bq and not ou_1
    local ow_1
    if ow then
        return nil
    end
    ow_1, ot_2 = nil, bp
    for i, child in ou:GetChildren() do
        local Humanoid = child:FindFirstChildWhichIsA("Humanoid")
        local ox = mC(child)
        if ox and (not Humanoid or Humanoid.Health > 0) then
            local ov_2 = not bq or l5(ou_1, ox.Position)
            if ov_2 then
                local Magnitude = (ox.Position - bo).Magnitude
                if Magnitude <= ot_2 then
                    ow_1, ot_2 = ox, Magnitude
                end
            end
        end
    end
    return ow_1
end
local function fn317(bM, bN, bO)
    for k, v in bN do
        local oH = v - bM
        if Vector3.new(oH.X, 0, oH.Z).Magnitude < bO then
            return false
        end
    end
    return true
end
local function fn329()
    local nI = mm()
    for k, v in mr do
        if nI:find(v:lower(), 1, true) then
            return true
        end
    end
    return false
end
local function worker()
    local pU_1
    while true do
        task.wait(1)
        if ms.Unloaded then
            break
        end
        local pT = math.floor(os.clock() - lH)
        if pT < 60 then
            pU_1 = pT .. "s"
        elseif pT < 3600 then
            pU_1 = string.format("%dm %ds", pT // 60, pT % 60)
        else
            pU_1 = string.format("%dh %dm", pT // 3600, pT % 3600 // 60)
        end
        Label:SetText(lL("Session time", pU_1, my))
    end
end
local function worker2()
    while not ms.Unloaded do
        lJ()
        task.wait(0.05)
    end
end
local function fn358(e2, e3)
    local qr = os.clock() + e3
    while true do
        local qs = os.clock() < qr and not ms.Unloaded
        if not qs then
            return #mx() == e2
        end
        if #mx() == e2 then
            break
        end
        task.wait(0.1)
    end
    return true
end
local function fn363()
    local pr = PlayerDataClient.get("Summon")
    local ps = type(pr) ~= "table"
    local pw = if ps then 1 else 0
    local pu = 570 * pw + 2214 * (1 - pw)
    local pv = 3595 * pw + 2135 * (1 - pw)
    if not ((pu * 3669 + pv * 1357 + pu * pv) % 16777213 == 9018895) then
        ps = type(pr.currentOffers) ~= "table"
    end
    if ps then
        return {}
    end
    local ps_1 = {}
    for k, v in pairs(pr.currentOffers) do
        local pr_1 = type(v) == "table" and typeof(v.slotIndex) == "number" and v.unitKey
        if pr_1 then
            table.insert(ps_1, v)
        end
    end
    return ps_1
end
local function fn419(aC, aD, aE)
    return string.format("<b>%s</b> %s %s", aC, lU("-", "#5a6070"), lU(aD, aE))
end
local function onRefreshAllowedUnits()
    mk.ReplaceUnits:SetValues(l8.getOwnedUnitKeys())
    ms:Notify("Refreshed allowed units")
end
local function onClearAllPlacements()
    RemoteEvents.BossRoomClearMinions:FireServer()
    ms:Notify("Cleared all placements")
end
local function fn456()
    local o8 = PlayerDataClient.get("BossRoom")
    local o9 = type(o8) ~= "table" or type(o8.placements) ~= "table"
    if o9 then
        return {}
    end
    local o9_1 = {}
    for k, v in pairs(o8.placements) do
        local o8_1 = type(v) == "table" and v.unitKey
        if o8_1 then
            table.insert(o9_1, {
                id = k,
                unitId = UnitMutationConfig.encodeUnitId(v.unitKey, v.mutation),
                offset = Vector3.new(v.x, v.y, v.z)
            })
        end
    end
    return o9_1
end
local function autoUpgradeLoop()
    while not ms.Unloaded do
        local sA = false
        local sB = Toggles.AutoUpgrade.Value and mh() == "Preparing"
        if sB then
            local sB_1 = {}
            for k, v in pairs(mk.UpgradeUnits.Value) do
                if v then
                    sB_1[k] = true
                end
            end
            local sC = {}
            for k, v in l8.getOwnedUnitKeys() do
                local sD_1 = next(sB_1) == nil or sB_1[v]
                if sD_1 then
                    table.insert(sC, v)
                end
            end
            local sC_1 = l8.sortOwnedUnitKeys(sC, mk.UpgradePriority.Value)
            local sB_2 = tonumber(mk.UpgradeLevelCap.Value) or 0
            for k, v in sC_1 do
                local sB_3 = sB_2 == 0 or l8.getUnitLevel(v) < sB_2
                if sB_3 then
                    local sB_4 = l8.getFusionShardUpgradeInfo(v)
                    local sC_2 = sB_4.missingExperience
                    if mk.UpgradeMode.Value == "Max Level" and sB_2 == 0 then
                        sC_2 = sB_4.totalMissingExperience
                    end
                    local sE_1 = math.max(0, sB_4.count - mk.ShardReserve.Value)
                    if sC_2 > 0 and sE_1 > 0 then
                        local sB_6 = math.min(sC_2, sE_1)
                        if sB_6 == sC_2 or not Toggles.UpgradeFullStepsOnly.Value then
                            RemoteEvents.BossRoomUpgradeUnit:FireServer(v, sB_6)
                            sA = true
                            break
                        end
                    end
                end
            end
        end
        if sA then
            task.wait(mk.UpgradeDelay.Value)
        else
            task.wait(1)
        end
    end
end
local function autoBuyWeaponLoop()
    while not ms.Unloaded do
        if Toggles.AutoBuyWeapon.Value then
            local sX = PlayerDataClient.get("Weapon")
            if type(sX) == "table" then
                local sY = lR.getNextLockedWeapon(sX)
                if sY and sY.key then
                    local sX_2 = tonumber(sY.unlockCost) or 0
                    if md("Coin") - sX_2 >= mk.CoinReserve.Value then
                        RemoteEvents.BossRoomUpgradeWeapon:FireServer(sY.key)
                        task.wait(0.5)
                    end
                end
            end
        end
        task.wait(1)
    end
end
local function fn491(a0)
    local n8 = a0 and a0:FindFirstChild(BossRoomWorldConfig.COMBAT_AREA_PART_NAME)
    local n9 = n8
    if n8 then
        n8 = n9:IsA("BasePart")
    end
    if n8 then
        return n9
    end
    return nil
end
local function fn495(at)
    if setclipboard then
        setclipboard(at)
    elseif toclipboard then
        toclipboard(at)
    end
end
local function fn513()
    local pM_1
    local pL_1
    if identifyexecutor then
        pM_1, pL_1 = identifyexecutor()
        local pN = pM_1 ~= ""
        local pO = type(pM_1) == "string" and pN
        if pO then
            local pN_1 = type(pL_1) == "string" and pL_1 ~= "" and pM_1 .. " " .. pL_1
            local pL_2 = pN_1
            local pS = if pL_2 then 1 else 0
            local pQ = 2392 * pS + 1553 * (1 - pS)
            local pR = 2087 * pS + 1276 * (1 - pS)
            if not ((pQ * 2494 + pR * 2883 + pQ * pR) % 16777213 == 197360) then
                pL_2 = pM_1
            end
            ml = pL_2
        end
    end
end
local function fn534(cF)
    local pl = UnitMutationConfig.decodeUnitId(cF)
    local pm = pl and UnitConfig[pl]
    local pl_1 = pm
    if pm then
        pm = pl_1.rarity
    end
    return pm or nil
end
local function fn552(aS)
    local nX = PlayerDataClient.get("Currency")
    if type(nX) ~= "table" then
        return 0
    end
    local n_ = (tonumber(nX[aS]))
    local n3 = if n_ then 1 else 0
    local n1 = 3161 * n3 + 67 * (1 - n3)
    local n2 = 3309 * n3 + 1298 * (1 - n3)
    if not ((n1 * 1198 + n2 * 2618 + n1 * n2) % 16777213 == 6132376) then
        n_ = 0
    end
    return math.max(0, math.floor(n_))
end
local function fn570()
    local n4 = mt("BossRoomInstanceName", "")
    if n4 == "" then
        return nil
    end
    local BLDS = workspace:FindFirstChild("BLDS")
    local n6 = BLDS and BLDS:FindFirstChild(n4)
    return n6 or nil
end
local function fn576()
    return mt("BossRoomBattleState", "Preparing")
end
local function fn577(gO)
    for k, v in pairs(gO.Value) do
        if v == true then
            return true
        end
    end
    return false
end
local function fn600()
    if not Toggles.AutoBuyRoll.Value then
        return
    end
    for k, v in mn() do
        local r6 = typeof(v.rollId) == "string" and mv(v) and l2(v)
        if r6 then
            RemoteEvents.BossRoomBuySummonOffer:FireServer(v.slotIndex, v.rollId)
            if mk.BuyDelay.Value > 0 then
                task.wait(mk.BuyDelay.Value)
            end
        end
    end
end
local function autoRollLoop()
    local sq_2
    while not ms.Unloaded do
        if not Toggles.AutoRoll.Value then
            task.wait(0.2)
        elseif mo() then
            task.wait(0.5)
        else
            local sp = false
            if Toggles.StopOnTarget.Value then
                for k, v in mn() do
                    local sq_1 = (lK(v))
                    if sq_1 then
                        local sr_1 = Toggles.AutoBuyRoll.Value and mv(v) and not l2(v)
                        sq_1 = not sr_1
                    end
                    if sq_1 then
                        sp = true
                        break
                    end
                end
            end
            if sp then
                Toggles.AutoRoll:SetValue(false)
                ms:Notify("Auto Roll paused on target result")
            else
                local sp_1 = os.clock()
                RemoteEvents.BossRoomRollSummonPool:FireServer()
                repeat
                    task.wait(0.05)
                    sq_2 = ms.Unloaded or not Toggles.AutoRoll.Value or mE > sp_1 or os.clock() - sp_1 >= 0.75
                until sq_2
                if mE > sp_1 then
                    lJ()
                    local sq_3 = math.max(mk.RollDelay.Value, lG)
                    local sr_2 = sq_3 - (os.clock() - sp_1)
                    if sr_2 > 0 then
                        task.wait(sr_2)
                    end
                end
            end
        end
    end
end
local function fn652()
    mc(mg)
    ms:Notify("Copied Discord invite to clipboard")
end
local function onUnload()
    ms:Unload()
end
local function fn668(cV)
    local pD = PlayerDataClient.get("SkillNodes")
    if type(pD) ~= "table" then
        return false
    end
    local pE = tonumber(pD[cV]) or 0
    return pE > 0
end
local function autoStartWaveLoop()
    while not ms.Unloaded do
        local ru = Toggles.AutoStartWave.Value and mh() == "Preparing"
        if ru then
            local ru_1 = lZ()
            local rv = #mu(ru_1) > 0
            local ru_2 = tonumber(mk.StopWave.Value) or 0
            local ru_3 = mt("BossRoomAbsoluteWave", 0)
            if Toggles.AutoStopAtWave.Value and ru_2 > 0 and ru_3 >= ru_2 then
                Toggles.AutoStartWave:SetValue(false)
                ms:Notify("Reached wave " .. ru_3 .. ", stopped auto start")
            elseif rv then
                RemoteEvents.BossRoomStartBattle:FireServer()
                task.wait(mk.StartWaveDelay.Value)
            end
        end
        task.wait(0.5)
    end
end
local function onRefreshOwnedUnits()
    mk.PlaceUnits:SetValues(l8.getOwnedUnitKeys())
    ms:Notify("Refreshed owned units")
end
local function fn694(c6)
    local DiscordGroup = c6:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = l7 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = l7 })
end
local function fn714()
    local nC_1
    local nB_1
    nB_1, nC_1 = pcall(function()
        return identifyexecutor()
    end)
    local nD = not nB_1
    local nH = if nD then 1 else 0
    local nF = 2305 * nH + 3023 * (1 - nH)
    local nG = 3461 * nH + 2602 * (1 - nH)
    if not ((nF * 1802 + nG * 3251 + nF * nG) % 16777213 == 6605713) then
        nD = type(nC_1) ~= "string"
    end
    if nD then
        return ""
    end
    return nC_1:lower()
end
local function fn778(a9)
    local od = a9
    local oe = {}
    if od then
        od = a9:FindFirstChild(BossRoomWorldConfig.MINIONS_FOLDER_NAME)
    end
    local of = od
    if not of then
        return oe
    end
    for i, child in of:GetChildren() do
        local od_1 = mC(child)
        if od_1 then
            table.insert(oe, od_1.Position)
        end
    end
    return oe
end
local function fn787()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    l9 = tick()
end
local function autoPlaceLoop()
    while not ms.Unloaded do
        local rr = false
        if mh() == "Preparing" then
            local rs = Toggles.AutoPlace.Value and mB()
            if rs then
                rr = true
                task.wait(mk.PlaceDelay.Value)
            else
                local rs_1 = Toggles.AutoReplace.Value and mp()
                if rs_1 then
                    rr = true
                    task.wait(mk.ReplaceDelay.Value)
                end
            end
        end
        if not rr then
            task.wait(0.5)
        end
    end
end
local function fn868(aL, aM)
    local attr = LocalPlayer:GetAttribute(aL)
    if typeof(attr) ~= typeof(aM) then
        return aM
    end
    return attr
end
local function autoEquipWeaponLoop()
    local s2_1
    while not ms.Unloaded do
        if Toggles.AutoEquipWeapon.Value then
            local s0 = PlayerDataClient.get("Weapon")
            local s1 = type(s0) == "table" and type(s0.unlockedWeapons) == "table"
            local s1_1
            if s1 then
                s2_1, s1_1 = nil, -1
                for k, v in pairs(s0.unlockedWeapons) do
                    if v == true then
                        local s3_1 = lR.getDamage(k)
                        local s4 = type(s3_1) == "number" and s3_1 > s1_1
                        if s4 then
                            s2_1, s1_1 = k, s3_1
                        end
                    end
                end
                local s3_2 = s2_1 and lR.getCurrentWeaponKey(s0) ~= s2_1
                if s3_2 then
                    RemoteEvents.BossRoomUpgradeWeapon:FireServer(s2_1)
                    task.wait(0.5)
                end
            end
        end
        task.wait(1)
    end
end
local function fn916(gB)
    local rB = mG(gB.unitKey)
    local rC = UnitMutationConfig.normalize(gB.mutation)
    local rD = rB ~= nil and mk.BuyRarities.Value[rB] == true
    local rC_1 = rC ~= UnitMutationConfig.None and mk.BuyMutations.Value[rC] == true
    local rD_2 = mk.BuyUnits.Value[gB.unitKey] == true
    if Toggles.BuyRequireMutation.Value then
        return (rD or rD_2) and rC_1
    end
    return rD or rC_1 or rD_2
end
local function onRefreshOwnedUnits2()
    mk.UpgradeUnits:SetValues(l8.getOwnedUnitKeys())
    ms:Notify("Refreshed owned units")
end
local function fn959(gS)
    local StopRarities = mk.StopRarities
    local StopUnits = mk.StopUnits
    local StopMutations = mk.StopMutations
    local rU = lW(StopRarities)
    local rV = lW(StopUnits)
    local rW = lW(StopMutations)
    local rX = not rV
    local rY = not rU
    if rY ~= false then
        rY = rX
    end
    if rY and not rW then
        return false
    end
    local rX_2 = mG(gS.unitKey)
    local rY_1 = rU
    if rY_1 then
        rY_1 = rX_2 == nil or StopRarities.Value[rX_2] ~= true
    end
    if rY_1 then
        return false
    end
    if rV and StopUnits.Value[gS.unitKey] ~= true then
        return false
    elseif rW then
        local rR_2 = UnitMutationConfig.normalize(gS.mutation)
        if rR_2 == UnitMutationConfig.None or StopMutations.Value[rR_2] ~= true then
            return false
        end
        return true
    else
        return true
    end
end
local function fn991()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn994()
    local q4_1
    local q2_1
    local q3_2
    local q1_2
    local qX = lZ()
    local qY = lM(qX)
    local qX_1 = mx()
    local Value = mk.ReplaceMetric.Value
    if not qY or #qX_1 == 0 then
        return false
    end
    local q__1 = {}
    for k, v in qX_1 do
        local unitId = v.unitId
        local q1_1 = q__1[v.unitId] or 0
        q__1[unitId] = q1_1 + 1
    end
    local q0_2 = l1(mk.ReplaceUnits)
    q2_1, q1_2 = nil, math.huge
    for k, v in qX_1 do
        local q3_1 = mF(v.unitId, Value)
        if q3_1 < q1_2 then
            q2_1, q1_2 = v, q3_1
        end
    end
    if not q2_1 then
        return false
    end
    q4_1, q3_2 = nil, -1
    for k, v in l8.getOwnedUnitKeys() do
        if v ~= q2_1.unitId then
            local q5 = (next(q0_2) == nil or q0_2[v]) and (Toggles.ReplaceAllowDuplicates.Value or not q__1[v])
            if q5 then
                local q5_1 = mF(v, Value)
                if q5_1 > q3_2 then
                    q4_1, q3_2 = v, q5_1
                end
            end
        end
    end
    if not q4_1 then
        return false
    end
    if q3_2 <= q1_2 or q3_2 < q1_2 * (1 + mk.ReplaceMinGain.Value / 100) then
        return false
    end
    local qZ_2 = mt("BossPopulationCap", 0)
    local q__3 = mt("BossPopulationUsed", 0)
    local q0_3 = q__3 - l8.getUnitPopulation(q2_1.unitId) + l8.getUnitPopulation(q4_1)
    if q0_3 > qZ_2 then
        return false
    end
    local qZ_3 = #qX_1
    RemoteEvents.BossRoomRemoveMinion:FireServer(q2_1.id)
    local rq = if not lO(qZ_3 - 1, 2) then 1 else 0
    if rq == 1 then
        return false
    end
    local Position = (qY.CFrame * CFrame.new(q2_1.offset)).Position
    RemoteEvents.BossRoomPlaceMinion:FireServer(Position, q4_1)
    if not lO(qZ_3, 2) then
        RemoteEvents.BossRoomPlaceMinion:FireServer(Position, q2_1.unitId)
        lO(qZ_3, 2)
    end
    return true
end
lG = nil
lH = nil
connection = nil
lJ = nil
lK = nil
lL = nil
lM = nil
SkillTreeNodesConfig = nil
lO = nil
lP = nil
lR = nil
lS = nil
lU = nil
lV = nil
lW = nil
BossRoomWorldConfig = nil
lY = nil
lZ = nil
l_ = nil
UnitMutationConfig = nil
l1 = nil
l2 = nil
l3 = nil
Label = nil
l5 = nil
UnitConfig = nil
l7 = nil
l8 = nil
l9 = nil
PlayerDataClient = nil
mb = nil
mc = nil
md = nil
me = nil
mf = nil
mg = nil
mh = nil
RemoteEvents = nil
Toggles = nil
mk = nil
ml = nil
mm = nil
mn = nil
mo = nil
mp = nil
mr = nil
ms = nil
local lQ, lT, mq
mt = nil
mu = nil
mv = nil
LocalPlayer = nil
mx = nil
my = nil
VirtualUser = nil
connection2 = nil
mB = nil
mC = nil
mD = nil
mE = nil
mF = nil
mG = nil
local mI, mJ, mP, mQ, mR, mS, mV, mW, GameInfoGroup, m4, SkillTreeGroup, WeaponsGroup, AutoBuyRollGroup, ScriptsGroup, AutoUpgradeUnitsGroup
VirtualUser, LocalPlayer, mr, mq, mm = nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local mH_3
local mM = game:GetService("ReplicatedStorage")
game:GetService("RunService")
local mO = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
local mN = "Be The Final Boss"
mr = { "Xeno", "Solara" }
mq = table.concat({
    "[English] Solara and Xeno are not supported. This is not the fault of this script, those executors are broken themselves.",
    "[Tiếng Việt] Solara và Xeno không được hỗ trợ. Đây không phải lỗi của script này, chính các executor đó bị lỗi.",
    "[Русский] Solara и Xeno не поддерживаются. Это не вина этого скрипта, сами эти инжекторы работают неправильно.",
    "[Português (BR)] Solara e Xeno não são suportados. A culpa não é deste script, os próprios executores é que não funcionam.",
    "[ไทย] ไม่รองรับ Solara และ Xeno นี่ไม่ใช่ความผิดของสคริปต์นี้ ตัวโปรแกรม executor เองที่มีปัญหา",
    "[Filipino] Hindi suportado ang Solara at Xeno. Hindi ito kasalanan ng script na ito, ang mga executor mismo ang sira."
}, "\n\n")
mm = fn714
local mK = fn329
local function mL()
    local screenGui
    screenGui = nil
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosExecutorNotice"
    screenGui.DisplayOrder = 2147483647
    screenGui.IgnoreGuiInset = true
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local nR = pcall(function()
        screenGui.Parent = gethui()
    end)
    if not nR then
        screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
    end
    local frame2 = Instance.new("Frame")
    frame2.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
    frame2.BackgroundTransparency = 0.05
    frame2.BorderSizePixel = 0
    frame2.Size = UDim2.fromScale(1, 1)
    frame2.Parent = screenGui
    local uIListLayout2 = Instance.new("UIListLayout")
    uIListLayout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
    uIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout2.Parent = frame2
    local uIPadding = Instance.new("UIPadding")
    uIPadding.PaddingLeft = UDim.new(0, 48)
    uIPadding.PaddingRight = UDim.new(0, 48)
    uIPadding.Parent = frame2
    local frame = Instance.new("Frame")
    frame.BackgroundTransparency = 1
    frame.Size = UDim2.new(1, 0, 0, 0)
    frame.AutomaticSize = Enum.AutomaticSize.Y
    frame.Parent = frame2
    local uISizeConstraint = Instance.new("UISizeConstraint")
    uISizeConstraint.MaxSize = Vector2.new(760, math.huge)
    uISizeConstraint.Parent = frame
    local uIListLayout = Instance.new("UIListLayout")
    uIListLayout.Padding = UDim.new(0, 28)
    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout.Parent = frame
    local textLabel2 = Instance.new("TextLabel")
    textLabel2.BackgroundTransparency = 1
    textLabel2.Size = UDim2.new(1, 0, 0, 40)
    textLabel2.Font = Enum.Font.GothamBold
    textLabel2.Text = "Unsupported Executor"
    textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel2.TextSize = 32
    textLabel2.TextXAlignment = Enum.TextXAlignment.Left
    textLabel2.LayoutOrder = 1
    textLabel2.Parent = frame
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 0, 0)
    textLabel.AutomaticSize = Enum.AutomaticSize.Y
    textLabel.Font = Enum.Font.GothamMedium
    textLabel.Text = mq
    textLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
    textLabel.TextSize = 19
    textLabel.LineHeight = 1.35
    textLabel.TextWrapped = true
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.TextYAlignment = Enum.TextYAlignment.Top
    textLabel.LayoutOrder = 2
    textLabel.Parent = frame
    local textButton = Instance.new("TextButton")
    textButton.Size = UDim2.fromOffset(160, 44)
    textButton.AutoButtonColor = true
    textButton.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
    textButton.BorderSizePixel = 0
    textButton.Font = Enum.Font.GothamBold
    textButton.Text = "OK"
    textButton.TextColor3 = Color3.fromRGB(20, 20, 20)
    textButton.TextSize = 17
    textButton.LayoutOrder = 3
    textButton.Parent = frame
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(0, 4)
    uICorner.Parent = textButton
    textButton.MouseButton1Click:Connect(function()
        screenGui:Destroy()
    end)
end
if mK() then
    mL()
    return
end
RemoteEvents, mJ, mI, PlayerDataClient, l8, UnitConfig, UnitMutationConfig, lY, BossRoomWorldConfig, lT, lR, SkillTreeNodesConfig, mP, mL, mK, mR, mQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mH_1 = 10
repeat
    mS = (mH_1 * 9 + 5) % 10 + 1
    if mS <= 5 then
        if mS <= 3 then
            if mS <= 2 then
                if mS <= 1 then
                    local mT_1 = {
                        "minbufcx",
                        "zazenfo",
                        "cjwoeyrxy",
                        "gcdjld",
                        "harxvybpv",
                        "jgnviyymzk",
                        "tpjhqha",
                        "qgxpagi",
                        "gdyxgrmvc",
                        "idymmsowu"
                    }
                    local uN = mH_1
                    local mU_1 = mT_1[uN % 10 + 1]
                    if mU_1:len() <= mU_1:reverse():rep(uN % 3 + 2):len() then
                        UnitConfig = require(mI.BossRoom.UnitConfig)
                    else
                        mI = require(UnitConfig.BossRoom.UnitConfig)
                    end
                    mH_1 = (mH_1 + 69) % 80
                else
                    if not SkillTreeNodesConfig and not mK and (not mK or not RemoteEvents) or SkillTreeNodesConfig and not UnitMutationConfig and (not SkillTreeNodesConfig or not RemoteEvents) or not BossRoomWorldConfig and not UnitMutationConfig and (SkillTreeNodesConfig or not BossRoomWorldConfig) and (not RemoteEvents and not UnitMutationConfig and (not mK or BossRoomWorldConfig)) or (not SkillTreeNodesConfig and BossRoomWorldConfig and (BossRoomWorldConfig and mK) or (not RemoteEvents and not BossRoomWorldConfig or BossRoomWorldConfig and not mK)) and ((mK or not UnitMutationConfig or BossRoomWorldConfig and RemoteEvents) and ((not BossRoomWorldConfig or not BossRoomWorldConfig) and (not BossRoomWorldConfig or BossRoomWorldConfig))) or not (not SkillTreeNodesConfig and not mK and (not mK or not RemoteEvents) or SkillTreeNodesConfig and not UnitMutationConfig and (not SkillTreeNodesConfig or not RemoteEvents) or not BossRoomWorldConfig and not UnitMutationConfig and (SkillTreeNodesConfig or not BossRoomWorldConfig) and (not RemoteEvents and not UnitMutationConfig and (not mK or BossRoomWorldConfig)) or (not SkillTreeNodesConfig and BossRoomWorldConfig and (BossRoomWorldConfig and mK) or (not RemoteEvents and not BossRoomWorldConfig or BossRoomWorldConfig and not mK)) and ((mK or not UnitMutationConfig or BossRoomWorldConfig and RemoteEvents) and ((not BossRoomWorldConfig or not BossRoomWorldConfig) and (not BossRoomWorldConfig or BossRoomWorldConfig)))) then
                        UnitMutationConfig = require(mI.BossRoom.UnitMutationConfig)
                    else
                        mI = require(UnitMutationConfig.BossRoom.UnitMutationConfig)
                    end
                    mH_1 = (mH_1 + 39) % 80
                end
            else
                local mT_2 = (vector.create((mH_1 * 1 + 8) % 11 + 1, (mH_1 * 7 + 13) % 13 + 1, (mH_1 * 7 + 2) % 17 + 1))
                local mU_2 = (vector.create((mH_1 * 6 + 2) % 11 + 1, (mH_1 * 3 + 3) % 13 + 1, (mH_1 * 12 + 13) % 17 + 1))
                mV = (vector.create((mH_1 * 3 + 2) % 11 + 1, (mH_1 * 5 + 3) % 13 + 1, (mH_1 * 1 + 8) % 17 + 1))
                mW = (vector.create((mH_1 * 1 + 5) % 5 + 1, (mH_1 * 2 + 5) % 7 + 1, (mH_1 * 5 + 3) % 9 + 1))
                if vector.dot(vector.cross(mT_2, (vector.cross(mU_2, mV))), mW) == vector.dot(mU_2 * vector.dot(mT_2, mV) - mV * vector.dot(mT_2, mU_2), mW) + 5 then
                    mI = require(lY.BossRoom.SummonConfig)
                else
                    lY = require(mI.BossRoom.SummonConfig)
                end
                mH_1 = (mH_1 + 79) % 80
            end
        elseif mS <= 4 then
            local mT_3 = (vector.create((mH_1 * 3 + 4) % 11 + 1, (mH_1 * 2 + 4) % 13 + 1, (mH_1 * 7 + 10) % 17 + 1))
            local mU_3 = (vector.create((mH_1 * 6 + 6) % 11 + 1, (mH_1 * 11 + 11) % 13 + 1, (mH_1 * 11 + 4) % 17 + 1))
            local uo = vector.dot(mT_3, mU_3)
            if uo * uo <= vector.dot(mT_3, mT_3) * vector.dot(mU_3, mU_3) then
                BossRoomWorldConfig = require(mI.BossRoom.BossRoomWorldConfig)
                lT = require(mI.BossRoom.PlayerCombatConfig)
                lR = require(mI.Weapon.WeaponConfig)
                SkillTreeNodesConfig = require(mI.SkillTree.SkillTreeNodesConfig)
                mP = lY.RARITY_DISPLAY_ORDER
            else
                lT = require(BossRoomWorldConfig.BossRoom.BossRoomWorldConfig)
                mI = require(BossRoomWorldConfig.BossRoom.PlayerCombatConfig)
                lY = require(BossRoomWorldConfig.Weapon.WeaponConfig)
                mP = require(BossRoomWorldConfig.SkillTree.SkillTreeNodesConfig)
                lR = SkillTreeNodesConfig.RARITY_DISPLAY_ORDER
            end
            mH_1 = (mH_1 + 9) % 80
        else
            if mH_1 * 66347415 + 13 + 2 <= mH_1 * 66347415 + 13 + 2 + 1 then
                mL = { "Shiny", "Cursed", "Demonic" }
                mK = l8.UNIT_SORT_MODES
                mR = { "Grid", "Front Line", "Back Line", "Random" }
                mQ = {}
            else
                l8 = { "Cursed", "Shiny", "Demonic" }
                mR = mL.UNIT_SORT_MODES
                mQ = { "Grid", "Back Line", "Random", "Front Line" }
                mK = {}
            end
            mH_1 = (mH_1 + 29) % 80
        end
    elseif mS <= 8 then
        if mS <= 7 then
            if mS <= 6 then
                local uq = bit32.rrotate(bit32.bxor(bit32.lrotate(mH_1, 26), string.byte(tostring(l8))), 3)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uq, 2771768323), 1902751725), (bit32.bxor(bit32.band(uq, 1523198972), 3626970682))), 1902751725), 3626970682) == uq then
                    RemoteEvents = mM:WaitForChild("Remotes"):WaitForChild("RemoteEvents")
                else
                    mM = RemoteEvents:WaitForChild("Remotes"):WaitForChild("RemoteEvents")
                end
                mH_1 = (mH_1 + 49) % 80
            else
                local mT_4 = (vector.create((mH_1 * 5 + 9) % 11 + 1, (mH_1 * 9 + 2) % 13 + 1, (mH_1 * 4 + 9) % 17 + 1))
                local uf = vector.floor(mT_4) + vector.ceil(mT_4 * -1)
                if vector.dot(uf, uf) == 0 then
                    mJ = mM:WaitForChild("ReplicatedCode")
                else
                    mM = mJ:WaitForChild("ReplicatedCode")
                end
                mH_1 = (mH_1 + 69) % 80
            end
        else
            local mT_5 = (vector.create((mH_1 * 4 + 2) % 11 + 1, (mH_1 * 1 + 5) % 13 + 1, (mH_1 * 4 + 12) % 17 + 1))
            local mU_4 = (vector.create((mH_1 * 6 + 2) % 11 + 1, (mH_1 * 9 + 12) % 13 + 1, (mH_1 * 4 + 16) % 17 + 1))
            mV = (vector.create((mH_1 * 4 + 3) % 11 + 1, (mH_1 * 11 + 11) % 13 + 1, (mH_1 * 11 + 8) % 17 + 1))
            mW = (vector.create((mH_1 * 2 + 1) % 5 + 1, (mH_1 * 3 + 3) % 7 + 1, (mH_1 * 5 + 5) % 9 + 1))
            if vector.dot(vector.cross(mT_5, (vector.cross(mU_4, mV))), mW) == vector.dot(mU_4 * vector.dot(mT_5, mV) - mV * vector.dot(mT_5, mU_4), mW) then
                mI = mJ.GameLogic.Shared.Configs
            else
                mJ = mI.GameLogic.Shared.Configs
            end
            mH_1 = (mH_1 + 29) % 80
        end
    elseif mS <= 9 then
        if (mQ or mL or not mI and lY) and (SkillTreeNodesConfig or not lY or (lY or SkillTreeNodesConfig)) or (not SkillTreeNodesConfig and not mI or mI and PlayerDataClient) and (mQ and PlayerDataClient or SkillTreeNodesConfig and mQ) or ((not mQ or not SkillTreeNodesConfig) and (not mQ and not SkillTreeNodesConfig) or SkillTreeNodesConfig and mQ and (mI or mL)) and (not lY or lY or (not mI or not SkillTreeNodesConfig) or not mL and not SkillTreeNodesConfig and (not mL or not PlayerDataClient)) or not ((mQ or mL or not mI and lY) and (SkillTreeNodesConfig or not lY or (lY or SkillTreeNodesConfig)) or (not SkillTreeNodesConfig and not mI or mI and PlayerDataClient) and (mQ and PlayerDataClient or SkillTreeNodesConfig and mQ) or ((not mQ or not SkillTreeNodesConfig) and (not mQ and not SkillTreeNodesConfig) or SkillTreeNodesConfig and mQ and (mI or mL)) and (not lY or lY or (not mI or not SkillTreeNodesConfig) or not mL and not SkillTreeNodesConfig and (not mL or not PlayerDataClient))) then
            PlayerDataClient = require(mJ.Framework.DataStore.PlayerDataClient)
        else
            mJ = require(PlayerDataClient.Framework.DataStore.PlayerDataClient)
        end
        mH_1 = (mH_1 + 9) % 80
    else
        mS = { "djjytudatsl", "wtkf", "jdnxxkryljg", "bpohpxtdnt", "cnrggjh", "weudbtblhbj", "meac" }
        local uB = mH_1
        local mT_6 = mS[uB % 7 + 1]
        if mT_6:len() <= mT_6:gsub("(.)", "%1%1", uB % 3 % 2 + 1):len() then
            l8 = require(mJ.GameLogic.Guis.BossUnitBagUtil)
        else
            mJ = require(l8.GameLogic.Guis.BossUnitBagUtil)
        end
        mH_1 = (mH_1 + 39) % 80
    end
until (mH_1 * 47 + 3) % 80 == 53
for k, v in pairs(UnitConfig) do
    local mH_2 = type(v) == "table" and v.rarity
    if mH_2 then
        table.insert(mQ, k)
    end
end
ms, mk, Toggles, mg, mf, my, mc, l7, lU, lL, mt, mh, md, lZ, lM, mC, mu, l5, lQ, lS, mD, mF, mx, mb, mG, mn, l3, lP, mM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(mQ)
ms = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
mS = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
mk = ms.Options
Toggles = ms.Toggles
mg = "https://discord.gg/ehKVq7pf7v"
mf = "https://rscripts.net/@Ouroboros"
mc = fn495
l7 = fn652
lU = fn214
lL = fn419
mW = "#7fd47f"
mV = "#6ec1ff"
my = "#e8a34d"
local mU_5 = "#8b93a3"
mt = fn868
mh = fn576
md = fn552
lZ = fn570
lM = fn491
mC = fn166
if (false or not l3 or "#6ec1ff" or (lZ and lZ or not lS and false)) and ((not l3 and mM or (mV or not my)) and (not l3 and false or false and my)) and ((false or l3) and (not mM or not mM) and (my or mM or (not l3 or not my)) or (not lS or lZ or mM and lZ or mM and mV and (not l3 or mV))) or not ((false or not l3 or "#6ec1ff" or (lZ and lZ or not lS and false)) and ((not l3 and mM or (mV or not my)) and (not l3 and false or false and my)) and ((false or l3) and (not mM or not mM) and (my or mM or (not l3 or not my)) or (not lS or lZ or mM and lZ or mM and mV and (not l3 or mV)))) then
    mu = fn778
    l5 = fn173
    lQ = fn312
else
    lQ = fn778
    mu = fn173
    l5 = fn312
end
lS = fn317
mD = function(bT, bU, bV, bW)
    local Position
    local COMBAT_AREA_EDGE_PADDING = BossRoomWorldConfig.COMBAT_AREA_EDGE_PADDING
    local oU = bT.Size.X / 2 - COMBAT_AREA_EDGE_PADDING
    local oV = bT.Size.Z / 2 - COMBAT_AREA_EDGE_PADDING
    local oT_1 = bT.Size.Y / 2
    local oW = {}
    local oX = -oU
    while oX <= oU do
        local oY = -oV
        while oY <= oV do
            table.insert(oW, (bT.CFrame * CFrame.new(oX, oT_1, oY)).Position)
            oY = oY + bV
        end
        oX = oX + bV
    end
    if bW == "Random" then
        local o1 = #oW
        local o0 = -1
        while false and o1 <= 2 or true and o1 >= 2 do
            local o2 = o1
            local oT_3 = math.random(o2)
            oW[o2], oW[oT_3] = oW[oT_3], oW[o2]
            o1 += o0
        end
        return oW
    end
    local oT_4 = bU:FindFirstChild(BossRoomWorldConfig.HERO_SPAWN_PART_NAME, true)
    local oV_1 = bW == "Front Line" or bW == "Back Line"
    local oU_2 = oV_1 and oT_4 and oT_4:IsA("BasePart")
    if oU_2 then
        Position = oT_4.Position
        table.sort(oW, function(b9, ca)
            local Magnitude2 = (Vector3.new(b9.X, 0, b9.Z) - Vector3.new(Position.X, 0, Position.Z)).Magnitude
            local Magnitude = (Vector3.new(ca.X, 0, ca.Z) - Vector3.new(Position.X, 0, Position.Z)).Magnitude
            if bW == "Front Line" then
                return Magnitude2 < Magnitude
            end
            return Magnitude2 > Magnitude
        end)
    end
    return oW
end
mF = fn127
mx = fn456
mb = fn245
mG = fn534
mn = fn363
l3 = fn668
lP = fn169
mJ = ms:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Be The Final Boss",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false,
    Size = UDim2.fromOffset(880, 700)
})
local mX = {
    Info = mJ:AddTab("Info", "info"),
    Combat = mJ:AddTab("Combat", "swords"),
    Units = mJ:AddTab("Units", "users"),
    Summon = mJ:AddTab("Summon", "dice-5"),
    Progression = mJ:AddTab("Progression", "git-branch"),
    Settings = mJ:AddTab("Settings", "settings")
}
mM = fn694
for k, v in mX do
    mM(v)
end
ml, mH_3, GameInfoGroup, Label, l_, mJ = nil, nil, nil, nil, nil, nil
mI = 7
repeat
    mM = (mI * 2 + 0) % 3 + 1
    if mM <= 2 then
        if mM <= 1 then
            if (mI * 2 + 7) * 7 % 3 == ((mI * 2 + 7) * 7 + 0) % 3 then
                l_ = tostring(game.JobId)
            else
                mJ = tostring(game.JobId)
            end
            mI = (mI + 20) % 24
        else
            if ((not mI or Label) and (not mH_3 and mH_3) or (not Label or not mI) and (mH_3 and not mI) or (not ml or not mI or (Label or Label)) and (mI and ml and (not mH_3 and not mH_3))) and not ((not mI or Label) and (not mH_3 and mH_3) or (not Label or not mI) and (mH_3 and not mI) or (not ml or not mI or (Label or Label)) and (mI and ml and (not mH_3 and not mH_3))) then
                l_ = #mJ > 18
            else
                mJ = #l_ > 18
            end
            mI = (mI + 2) % 24
        end
    else
        if (mI * 3 + 2) * 13 % 4 == ((mI * 3 + 2) * 13 + 12) % 4 then
            ml = "Unknown"
            pcall(fn513)
            mH_3 = mX.Info:AddLeftGroupbox("Account", "circle-user")
            mH_3:AddLabel(lL("User", LocalPlayer.Name, mW), true)
            mH_3:AddLabel(lL("Status", "Keyless", mW), true)
            mH_3:AddLabel(lL("Executor", ml, mW), true)
            GameInfoGroup = mX.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            GameInfoGroup:AddLabel(lU(mN .. " [" .. tostring(game.PlaceId) .. "]", mV), true)
            GameInfoGroup:AddLabel(lL("Place ID", tostring(game.PlaceId), mV), true)
            Label = GameInfoGroup:AddLabel(lL("Session time", "0s", my), true)
        else
            mH_3 = "Unknown"
            pcall(fn513)
            mX = (nil):AddLeftGroupbox("Account", "circle-user")
            mX:AddLabel(mV("User", GameInfoGroup.Name, mN), true)
            mX:AddLabel(mV("Status", "Keyless", mN), true)
            mX:AddLabel(mV("Executor", "Unknown", mN), true)
            lL = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            lL:AddLabel(Label(ml .. " [" .. tostring(game.PlaceId) .. "]", lU), true)
            lL:AddLabel(mV("Place ID", tostring(game.PlaceId), lU), true)
            my = lL:AddLabel(mV("Session time", "0s", LocalPlayer), true)
        end
        mI = (mI + 14) % 24
    end
until (mI * 11 + 19) % 24 == 12
if mJ then
    local mH_4 = 2
    repeat
        mI = {
            "axjl",
            "awyqrjt",
            "akztwh",
            "gpwklmhnfbap",
            "ayvunyo",
            "dhvfykhozc",
            "jpmvfmilak",
            "gtkhddgmpvxt"
        }
        if mI[(mH_4 * 72 + 106) % 8 + 1] <= mI[(mH_4 * 72 + 106) % 8 + 1] then
            mJ = string.sub(l_, 1, 18) .. "..."
        else
            l_ = string.sub(mJ, 1, 18) .. "..."
        end
        mH_4 = (mH_4 + 1) % 4
    until (mH_4 * 1 + 0) % 4 == 3
end
local mH_5 = mJ or l_
lH, ScriptsGroup, AutoUpgradeUnitsGroup, AutoBuyRollGroup, WeaponsGroup, SkillTreeGroup, me, l9, connection, connection2, lG, mE, lV, l1, lO, mB, mp, mv, lW, lK, l2, lJ, mo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mM = mH_5
GameInfoGroup:AddLabel(lL("Server", mM, mU_5), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lH = os.clock()
if (mB and AutoUpgradeUnitsGroup and (not AutoUpgradeUnitsGroup or mB) and (AutoUpgradeUnitsGroup and not mB and (mB and mE)) or ((mE or not AutoUpgradeUnitsGroup) and (not mE and not mB) or (not mB and mB or (AutoUpgradeUnitsGroup or not AutoUpgradeUnitsGroup)))) and ((AutoUpgradeUnitsGroup or not mE or (AutoUpgradeUnitsGroup or not AutoUpgradeUnitsGroup)) and (not mB and mE and (AutoUpgradeUnitsGroup or not mB)) or (AutoUpgradeUnitsGroup and mE and (mB or not mE) or not mE and mB and (not AutoUpgradeUnitsGroup and not mB))) and not ((mB and AutoUpgradeUnitsGroup and (not AutoUpgradeUnitsGroup or mB) and (AutoUpgradeUnitsGroup and not mB and (mB and mE)) or ((mE or not AutoUpgradeUnitsGroup) and (not mE and not mB) or (not mB and mB or (AutoUpgradeUnitsGroup or not AutoUpgradeUnitsGroup)))) and ((AutoUpgradeUnitsGroup or not mE or (AutoUpgradeUnitsGroup or not AutoUpgradeUnitsGroup)) and (not mB and mE and (AutoUpgradeUnitsGroup or not mB)) or (AutoUpgradeUnitsGroup and mE and (mB or not mE) or not mE and mB and (not AutoUpgradeUnitsGroup and not mB)))) then
    task.spawn(worker)
    mX = ScriptsGroup.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(worker)
    ScriptsGroup = mX.Info:AddRightGroupbox("Scripts", "package")
end
ScriptsGroup:AddLabel(lU("Included in this hub", mU_5), true)
ScriptsGroup:AddLabel(lU(mN, mV), true)
local FeaturesGroup = mX.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(lU("Auto Farm", mV), true)
FeaturesGroup:AddLabel(lU("Auto Waves", mV), true)
FeaturesGroup:AddLabel(lU("Auto Place & Replace Units", my), true)
FeaturesGroup:AddLabel(lU("Auto Upgrade Units", my), true)
FeaturesGroup:AddLabel(lU("Auto Roll & Auto Buy", mW), true)
FeaturesGroup:AddLabel(lU("Weapons & Skill Tree", mU_5), true)
local SocialsGroup = mX.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = l7 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = mX.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = l7 })
local FaqGroup = mX.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoFarmGroup = mX.Combat:AddLeftGroupbox("Auto Farm", "sword")
AutoFarmGroup:AddToggle("KillAura", { Text = "Auto Farm", Default = false })
AutoFarmGroup:AddSlider("AttackDelay", { Text = "Attack Delay", Default = 0.15, Min = lT.MIN_COOLDOWN, Max = 1, Rounding = 2 })
AutoFarmGroup:AddToggle("KillAuraBattleOnly", { Text = "Only During Battle", Default = true })
AutoFarmGroup:AddToggle("AuraWaitForZone", { Text = "Wait For Combat Zone", Default = true })
AutoFarmGroup:AddToggle("AuraReposition", { Text = "Teleport To Target", Default = true })
AutoFarmGroup:AddSlider("AuraRange", { Text = "Aura Range", Default = 250, Min = 10, Max = 500, Rounding = 0 })
AutoFarmGroup:AddSlider("AuraStrikeDistance", { Text = "Strike Distance", Default = 4, Min = 1, Max = 12, Rounding = 1 })
AutoFarmGroup:AddToggle("AuraMaxCombo", { Text = "Force Max Combo", Default = true })
local WavesGroup = mX.Combat:AddRightGroupbox("Waves", "flag")
WavesGroup:AddToggle("AutoStartWave", { Text = "Auto Start Wave", Default = false })
WavesGroup:AddSlider("StartWaveDelay", { Text = "Start Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
WavesGroup:AddToggle("AutoStopAtWave", { Text = "Auto Stop At Wave", Default = false })
WavesGroup:AddInput("StopWave", { Text = "Stop At Wave", Default = "25", Numeric = true, Finished = true })
local AutoPlaceGroup = mX.Units:AddLeftGroupbox("Auto Place", "map-pin")
AutoPlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
AutoPlaceGroup:AddDropdown("PlaceUnits", { Text = "Units", Values = l8.getOwnedUnitKeys(), Default = {}, Multi = true, AllowNull = true })
AutoPlaceGroup:AddButton({ Text = "Refresh Owned Units", Func = onRefreshOwnedUnits })
AutoPlaceGroup:AddDropdown("PlacePriority", { Text = "Priority", Values = mK, Default = mK[1], Multi = false })
AutoPlaceGroup:AddDropdown("PlaceFormation", { Text = "Formation", Values = mR, Default = mR[1], Multi = false })
mJ = mX.Units:AddRightGroupbox("Placement Tuning", "sliders-horizontal")
mJ:AddSlider("PlaceSpacing", {
    Text = "Spacing",
    Default = 4.5,
    Min = BossRoomWorldConfig.MINION_PLACEMENT_RADIUS,
    Max = 12,
    Rounding = 1
})
mJ:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 0.3, Min = 0.05, Max = 3, Rounding = 2 })
mJ:AddSlider("PlaceLimit", { Text = "Max Units (0 = Unlimited)", Default = 0, Min = 0, Max = 30, Rounding = 0 })
mJ:AddButton({ Text = "Clear All Placements", Func = onClearAllPlacements })
mI = mX.Units:AddLeftGroupbox("Auto Replace Units", "arrow-up-circle")
mI:AddToggle("AutoReplace", { Text = "Auto Replace Units", Default = false })
mI:AddDropdown("ReplaceUnits", {
    Text = "Allowed Units",
    Values = l8.getOwnedUnitKeys(),
    Default = {},
    Multi = true,
    AllowNull = true
})
mI:AddButton({ Text = "Refresh Allowed Units", Func = onRefreshAllowedUnits })
mI:AddDropdown("ReplaceMetric", { Text = "Compare By", Values = mK, Default = mK[1], Multi = false })
mI:AddSlider("ReplaceMinGain", { Text = "Min Gain %", Default = 10, Min = 0, Max = 200, Rounding = 0 })
mI:AddToggle("ReplaceAllowDuplicates", { Text = "Allow Duplicate Units", Default = true })
mI:AddSlider("ReplaceDelay", { Text = "Replace Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2 })
AutoUpgradeUnitsGroup = mX.Units:AddRightGroupbox("Auto Upgrade Units", "arrow-big-up")
AutoUpgradeUnitsGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade Units", Default = false })
AutoUpgradeUnitsGroup:AddDropdown("UpgradeUnits", { Text = "Units", Values = l8.getOwnedUnitKeys(), Default = {}, Multi = true, AllowNull = true })
AutoUpgradeUnitsGroup:AddButton({ Text = "Refresh Owned Units", Func = onRefreshOwnedUnits2 })
AutoUpgradeUnitsGroup:AddDropdown("UpgradePriority", { Text = "Priority", Values = mK, Default = mK[1], Multi = false })
AutoUpgradeUnitsGroup:AddDropdown("UpgradeMode", { Text = "Mode", Values = { "Next Level", "Max Level" }, Default = "Next Level", Multi = false })
AutoUpgradeUnitsGroup:AddToggle("UpgradeFullStepsOnly", { Text = "Only If Shards Cover Step", Default = true })
AutoUpgradeUnitsGroup:AddInput("UpgradeLevelCap", { Text = "Level Cap (0 = None)", Default = "0", Numeric = true, Finished = true })
AutoUpgradeUnitsGroup:AddSlider("ShardReserve", { Text = "Shard Reserve", Default = 0, Min = 0, Max = 10000, Rounding = 0 })
AutoUpgradeUnitsGroup:AddSlider("UpgradeDelay", { Text = "Upgrade Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2 })
local AutoRollGroup = mX.Summon:AddLeftGroupbox("Auto Roll", "dice-5")
if (l2 or lH) and (not l2 or AutoBuyRollGroup) and (l2 or l2 or not lH and lH) or (lH or lH) and (AutoBuyRollGroup or AutoBuyRollGroup) and ((not l2 or not l2) and (not l2 and l2)) or (l2 or lH or lH and lH or lH and not l2 and (not lH and not lH)) and ((not AutoBuyRollGroup and not l2 or l2 and not lH) and ((not AutoBuyRollGroup or AutoBuyRollGroup) and (lH and lH))) or not ((l2 or lH) and (not l2 or AutoBuyRollGroup) and (l2 or l2 or not lH and lH) or (lH or lH) and (AutoBuyRollGroup or AutoBuyRollGroup) and ((not l2 or not l2) and (not l2 and l2)) or (l2 or lH or lH and lH or lH and not l2 and (not lH and not lH)) and ((not AutoBuyRollGroup and not l2 or l2 and not lH) and ((not AutoBuyRollGroup or AutoBuyRollGroup) and (lH and lH)))) then
    AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
    AutoRollGroup:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.1, Min = 0, Max = 10, Rounding = 2 })
    AutoRollGroup:AddToggle("StopOnTarget", { Text = "Stop On Target", Default = false })
    AutoRollGroup:AddDropdown("StopRarities", { Text = "Stop Rarities", Values = mP, Default = {}, Multi = true, AllowNull = true })
    AutoRollGroup:AddDropdown("StopUnits", { Text = "Stop Characters", Values = mQ, Default = {}, Multi = true, AllowNull = true })
    AutoRollGroup:AddDropdown("StopMutations", { Text = "Stop Mutations", Values = mL, Default = {}, Multi = true, AllowNull = true })
    AutoBuyRollGroup = mX.Summon:AddRightGroupbox("Auto Buy Roll", "shopping-cart")
    AutoBuyRollGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
    AutoBuyRollGroup:AddDropdown("BuyRarities", { Text = "Buy Rarities", Values = mP, Default = {}, Multi = true, AllowNull = true })
    AutoBuyRollGroup:AddDropdown("BuyUnits", { Text = "Buy Characters", Values = mQ, Default = {}, Multi = true, AllowNull = true })
    AutoBuyRollGroup:AddDropdown("BuyMutations", { Text = "Buy Mutations", Values = mL, Default = {}, Multi = true, AllowNull = true })
    AutoBuyRollGroup:AddToggle("BuyRequireMutation", { Text = "Require Mutation Match", Default = false })
    AutoBuyRollGroup:AddToggle("BuyWaitForSouls", { Text = "Hold Roll Until Affordable", Default = false })
    AutoBuyRollGroup:AddSlider("SoulReserve", { Text = "Soul Reserve", Default = 0, Min = 0, Max = 100000, Rounding = 0 })
    AutoBuyRollGroup:AddSlider("BuyDelay", { Text = "Buy Delay", Default = 0, Min = 0, Max = 5, Rounding = 2 })
    WeaponsGroup = mX.Progression:AddLeftGroupbox("Weapons", "axe")
    WeaponsGroup:AddToggle("AutoBuyWeapon", { Text = "Auto Buy Best Affordable Weapon", Default = false })
    WeaponsGroup:AddSlider("CoinReserve", { Text = "Coin Reserve", Default = 0, Min = 0, Max = 1000000, Rounding = 0 })
    WeaponsGroup:AddToggle("AutoEquipWeapon", { Text = "Auto Equip Best Owned Weapon", Default = false })
    SkillTreeGroup = mX.Progression:AddRightGroupbox("Skill Tree", "git-branch")
    SkillTreeGroup:AddToggle("AutoSkillTree", { Text = "Auto Purchase Affordable Skills", Default = false })
    SkillTreeGroup:AddDropdown("SkillCurrencies", {
        Text = "Currencies",
        Values = { "Coin", "Soul" },
        Default = { Coin = true },
        Multi = true,
        AllowNull = true
    })
    SkillTreeGroup:AddToggle("SkillCheapestFirst", { Text = "Cheapest First", Default = true })
    SkillTreeGroup:AddSlider("SkillCoinReserve", { Text = "Coin Reserve", Default = 0, Min = 0, Max = 1000000, Rounding = 0 })
    SkillTreeGroup:AddSlider("SkillSoulReserve", { Text = "Soul Reserve", Default = 0, Min = 0, Max = 100000, Rounding = 0 })
    m4 = mX.Settings:AddLeftGroupbox("Menu", "menu")
    m4:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    m4:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    m4:AddButton("Unload", onUnload)
    ms.ToggleKeybind = mk.MenuKeybind
    me = tick()
else
    mP:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
    mP:AddSlider("RollDelay", { Text = "Roll Delay", Min = 0, Max = 10, Rounding = 2, Default = 0.1 })
    mP:AddToggle("StopOnTarget", { Text = "Stop On Target", Default = false })
    mP:AddDropdown("StopRarities", { Default = {}, Values = AutoBuyRollGroup, Multi = true, AllowNull = true, Text = "Stop Rarities" })
    mP:AddDropdown("StopUnits", { Default = {}, Values = mL, Multi = true, Text = "Stop Characters", AllowNull = true })
    mP:AddDropdown("StopMutations", { Values = SkillTreeGroup, AllowNull = true, Default = {}, Multi = true, Text = "Stop Mutations" })
    ms = WeaponsGroup.Summon:AddRightGroupbox("Auto Buy Roll", "shopping-cart")
    ms:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
    ms:AddDropdown("BuyRarities", { Default = {}, Text = "Buy Rarities", Multi = true, Values = AutoBuyRollGroup, AllowNull = true })
    ms:AddDropdown("BuyUnits", { AllowNull = true, Default = {}, Text = "Buy Characters", Multi = true, Values = mL })
    ms:AddDropdown("BuyMutations", { Default = {}, AllowNull = true, Values = SkillTreeGroup, Text = "Buy Mutations", Multi = true })
    ms:AddToggle("BuyRequireMutation", { Text = "Require Mutation Match", Default = false })
    ms:AddToggle("BuyWaitForSouls", { Text = "Hold Roll Until Affordable", Default = false })
    ms:AddSlider("SoulReserve", { Rounding = 0, Max = 100000, Default = 0, Min = 0, Text = "Soul Reserve" })
    ms:AddSlider("BuyDelay", { Rounding = 2, Text = "Buy Delay", Min = 0, Default = 0, Max = 5 })
    m4 = WeaponsGroup.Progression:AddLeftGroupbox("Weapons", "axe")
    m4:AddToggle("AutoBuyWeapon", { Text = "Auto Buy Best Affordable Weapon", Default = false })
    m4:AddSlider("CoinReserve", { Default = 0, Text = "Coin Reserve", Max = 1000000, Rounding = 0, Min = 0 })
    m4:AddToggle("AutoEquipWeapon", { Text = "Auto Equip Best Owned Weapon", Default = false })
    mX = WeaponsGroup.Progression:AddRightGroupbox("Skill Tree", "git-branch")
    mX:AddToggle("AutoSkillTree", { Text = "Auto Purchase Affordable Skills", Default = false })
    mX:AddDropdown("SkillCurrencies", {
        Values = { "Coin", "Soul" },
        AllowNull = true,
        Default = { Coin = true },
        Text = "Currencies",
        Multi = true
    })
    mX:AddToggle("SkillCheapestFirst", { Text = "Cheapest First", Default = true })
    mX:AddSlider("SkillCoinReserve", { Min = 0, Max = 1000000, Text = "Coin Reserve", Default = 0, Rounding = 0 })
    mX:AddSlider("SkillSoulReserve", { Min = 0, Max = 100000, Text = "Soul Reserve", Default = 0, Rounding = 0 })
    me = WeaponsGroup.Settings:AddLeftGroupbox("Menu", "menu")
    me:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    me:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Default = "RightShift", Text = "Menu keybind" })
    me:AddButton("Unload", onUnload)
    mQ.ToggleKeybind = AutoRollGroup.MenuKeybind
    mk = tick()
end
if ((not mI and not mI or (connection2 or connection2)) and (not SkillTreeGroup and not mo or SkillTreeGroup and connection2) or mo and AutoFarmGroup and (not AutoFarmGroup and connection2) and ((mo or AutoFarmGroup) and (not mo and not mI))) and not ((not mI and not mI or (connection2 or connection2)) and (not SkillTreeGroup and not mo or SkillTreeGroup and connection2) or mo and AutoFarmGroup and (not AutoFarmGroup and connection2) and ((mo or AutoFarmGroup) and (not mo and not mI))) then
    lV = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local p1 = v
            pcall(function()
                p1:Disable()
            end)
        end
    end)
    l9 = fn787
else
    l9 = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local p1 = v
            pcall(function()
                p1:Disable()
            end)
        end
    end)
    lV = fn787
end
if ((lH and AutoUpgradeUnitsGroup or not lH and mB) and (not mB or lH or (mB or lH)) or (not FaqGroup and not lH or mB and AutoUpgradeUnitsGroup) and (AutoUpgradeUnitsGroup or not AutoUpgradeUnitsGroup or mB and FaqGroup) or (not AutoUpgradeUnitsGroup and not lH or (not AutoUpgradeUnitsGroup or AutoUpgradeUnitsGroup) or (not AutoUpgradeUnitsGroup and not AutoUpgradeUnitsGroup or (not FaqGroup or not FaqGroup))) and ((AutoUpgradeUnitsGroup or not lH or (not mB or not lH)) and (lH or FaqGroup or FaqGroup and not lH))) and not ((lH and AutoUpgradeUnitsGroup or not lH and mB) and (not mB or lH or (mB or lH)) or (not FaqGroup and not lH or mB and AutoUpgradeUnitsGroup) and (AutoUpgradeUnitsGroup or not AutoUpgradeUnitsGroup or mB and FaqGroup) or (not AutoUpgradeUnitsGroup and not lH or (not AutoUpgradeUnitsGroup or AutoUpgradeUnitsGroup) or (not AutoUpgradeUnitsGroup and not AutoUpgradeUnitsGroup or (not FaqGroup or not FaqGroup))) and ((AutoUpgradeUnitsGroup or not lH or (not mB or not lH)) and (lH or FaqGroup or FaqGroup and not lH))) then
    mO = connection.InputBegan:Connect(onInputBegan)
else
    connection = mO.InputBegan:Connect(onInputBegan)
end
connection2 = mO.InputChanged:Connect(onInputChanged)
task.spawn(antiAfkLoop)
task.spawn(function()
    local qb = 0
    local qc = os.clock()
    local qd = #lT.ATTACK_STAGES
    while not ms.Unloaded do
        local qe = math.max(lT.MIN_COOLDOWN, mk.AttackDelay.Value)
        local qf = Toggles.KillAura.Value
        if qf then
            local qg_1 = not Toggles.KillAuraBattleOnly.Value or mh() == "Battle"
            qf = qg_1
        end
        if qf then
            local Character = LocalPlayer.Character
            local qg_2 = Character and Character:FindFirstChild("HumanoidRootPart")
            local qf_2 = qg_2
            if qg_2 then
                qg_2 = lQ(qf_2.Position, mk.AuraRange.Value, Toggles.AuraWaitForZone.Value)
            end
            local qh = qg_2 or nil
            local qg_3 = qh
            if qh then
                qh = Toggles.AuraReposition.Value
            end
            if qh then
                local qh_1 = qg_3.Position + (qf_2.Position - qg_3.Position).Unit * mk.AuraStrikeDistance.Value
                qf_2.CFrame = CFrame.lookAt(Vector3.new(qh_1.X, qg_3.Position.Y, qh_1.Z), qg_3.Position)
            end
            local qf_3 = qg_3
            if not qf_3 then
                qf_3 = not (Toggles.AuraReposition.Value or Toggles.AuraWaitForZone.Value)
            end
            if qf_3 then
                local qf_4 = os.clock()
                if Toggles.AuraMaxCombo.Value then
                    qb = qd
                else
                    qb = lT.getNextComboIndex(qb, qf_4 - qc)
                end
                qc = qf_4
                pcall(function()
                    RemoteEvents.BossRoomWeaponAttack:FireServer(nil, qb)
                end)
                task.wait(qe)
            else
                task.wait(0.1)
            end
        else
            task.wait(0.2)
        end
    end
end)
l1 = fn300
lO = fn358
do
    mB = fn247
    mp = fn994
    task.spawn(autoPlaceLoop)
    task.spawn(autoStartWaveLoop)
    lG = 0.5
    mE = 0
    RemoteEvents.BossRoomSummonPoolResult.OnClientEvent:Connect(onOnClientEvent)
    mv = fn916
end
lW = fn577
lK = fn959
l2 = fn267
lJ = fn600
mo = fn71
task.spawn(autoRollLoop)
task.spawn(worker2)
task.spawn(autoUpgradeLoop)
task.spawn(autoBuyWeaponLoop)
task.spawn(autoEquipWeaponLoop)
task.spawn(autoSkillTreeLoop)
ThemeManager:SetLibrary(ms)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(mX.Settings)
ThemeManager:LoadDefault()
mS:SetLibrary(ms)
mS:IgnoreThemeSettings()
mS:SetIgnoreIndexes({ "MenuKeybind" })
mS:SetFolder("OuroborosHub/be-the-final-boss")
mS:BuildConfigSection(mX.Settings)
mS:LoadAutoloadConfig()
ms:OnUnload(fn991)
