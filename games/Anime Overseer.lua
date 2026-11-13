local wT_11
local od
local HttpService
local nV
local oj
local o3
local n0
local oL
local oq
local o9
local n6
local SaveManager
local nO
local oy
local oc
local oX
local Categories
local oE
local oi
local VirtualUser
local n_
local oK
local op
local o8
local n5
local ox
local oW
local nT
local Client
local oh
local PlayerGui
local nZ
local oJ
local oo
local ReplicatedStorage
local n4
local oP
local nM
local ow
local oa
local oV
local nS
local oC
local og
local o0
local nY
local oI
local on
local o6
local n3
local Toggles
local nL
local ov
local n9
local oU
local nR
local oB
local of
local o_
local nX
local oH
local om
local o5
local n2
local oN
local nK
local ou
local n8
local Library
local nQ
local oA
local oe
local nW
local Warp
local ol
local o4
local n1
local Options
local n7
local oS
local Clock
local function autoCraftLoop()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoCraft.Value then
            local t7_1 = oU("CraftItem")
            local Value = Options.CraftItem.Value
            if t7_1 and Value and Value ~= "" then
                pcall(t7_1.Invoke, t7_1, 5, Value, Options.CraftQuantity.Value)
            end
        end
        if Toggles.AutoSpecialization.Value then
            local t7_2 = oU("SetEspecialization")
            local t8_2 = o_(Options.SpecUnit)
            local t9_2 = t8_2 and nM()[t8_2]
            if t7_2 and t9_2 then
                if t9_2.Especialization ~= "" then
                    Toggles.AutoSpecialization:SetValue(false)
                    Library:Notify("Unit already has a specialization")
                else
                    pcall(t7_2.Invoke, t7_2, 5, t8_2, "Confirm", Options.SpecMode.Value)
                end
            end
        end
    end
end
local function fn45(gy, gz, gA)
    local uW = oU("BuyMerchantItem")
    local uX = nQ[gy][gz.Value]
    if not (uW and uX) then
        return
    end
    pcall(uW.Invoke, uW, 5, gy, uX, gA)
end
local function fn114()
    local wL = isfile and isfile(oK .. "/settings/" .. oH .. ".json")
    if not wL then
        SaveManager:Load("autosave")
    end
end
local function fn120()
    local qJ = oU("SetAutoUpgrade")
    if not (oy and qJ) then
        return
    end
    if oy:Get({ "Earned", "AutoUpgrade" }) ~= true then
        return
    end
    local qK_1 = oy:Get("AutoUpgrade")
    if type(qK_1) ~= "table" then
        return
    end
    for k, v in qK_1 do
        if Library.Unloaded then
            return
        end
        if not v then
            qJ:Fire(true, k)
            task.wait(0.2)
        end
    end
end
local function autoTraitRerollLoop()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoTraitReroll.Value then
            local uE = oU("RollNewTrait")
            local uF = o_(Options.TraitUnit)
            local uG = uF and nM()[uF]
            if uE and uG then
                if n0(uG) then
                    Toggles.AutoTraitReroll:SetValue(false)
                    Library:Notify("Trait reroll target reached")
                    if Toggles.NotifyTraitReroll.Value then
                        on("Trait Reroll", ("**%s** rolled the **%s** trait"):format(tostring(uG.Name), tostring(uG.Trait)))
                    end
                else
                    pcall(uE.Fire, uE, true, uF)
                end
            end
        end
    end
end
local function onRefreshUnitList()
    oS()
end
local function fn175()
    local r0 = oU("ClaimDaily")
    local r1 = oy and oy:Get("DailyLogin")
    local r2 = r0 and type(r1) == "table" and type(r1.Claimed) == "table"
    if not r2 then
        return
    end
    r0:Fire(true, #r1.Claimed + 1)
end
local function autoSummonLoop()
    while task.wait(1.5) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoSummon.Value then
            local tM = oU("SummonUnit")
            local tN = nS[Options.SummonBanner.Value]
            local tO = tonumber(Options.SummonAmount.Value) or 1
            local tP = tN
            if tP then
                tP = type(n7) == "table"
            end
            if tP then
                tP = n7[tN]
            end
            local tO_1 = tP
            if tM and tO_1 and oy then
                local tO_2 = (tO_1.PricePerSummon or 0) * tO
                local tP_3 = oy:Get("Gems") or 0
                if tP_3 < tO_2 then
                    Toggles.AutoSummon:SetValue(false)
                    Library:Notify("Not enough gems to summon")
                else
                    local tO_3 = {}
                    for k in nM() do
                        tO_3[k] = true
                    end
                    pcall(tM.Fire, tM, true, tN, tO)
                    task.wait(1.5)
                    local tM_1 = {}
                    for k, v in nM() do
                        if not tO_3[k] then
                            table.insert(tM_1, v)
                        end
                    end
                    pcall(nT, tM_1)
                    if oE(tM_1) then
                        Toggles.AutoSummon:SetValue(false)
                        Library:Notify("Summon target reached")
                    end
                end
            end
        end
    end
end
local function fn229()
    Warp = require(ol:WaitForChild("Warp", 15))
    Client = require(ol:WaitForChild("Replion", 15)).Client
    local Infos = ReplicatedStorage:FindFirstChild("Infos")
    local qo = {}
    local qp = nL(Infos, "Upgrades") or qo
    oB = qp
    ov = nL(Infos, "Items")
    oq = nL(Infos, "Units")
    om = nL(Infos, "Traits")
    od = nL(Infos, "Milestone")
    n7 = nL(Infos, "Banners")
    n1 = nL(Infos, "PlayerInfo")
    nW = nL(Infos, "Rarities")
    nR = nL(Infos, "Gamemodes")
    Clock = require(ReplicatedStorage:WaitForChild("UtilsFolder", 15):WaitForChild("Clock", 15))
    oy = Client:WaitReplion("Data", 15)
end
local function fn231(gb)
    local Trait = gb.Trait
    if not Trait or Trait == "" then
        return false
    end
    local Value2 = Options.TraitStopTrait.Value
    if Value2 and Value2 ~= "" and Trait == Value2 then
        return true
    end
    local Value = Options.TraitStopRarity.Value
    if Value and Value ~= "" then
        local uu_4 = type(om) == "table" and om[Trait]
        local us_1 = uu_4
        if uu_4 then
            uu_4 = us_1.Rarity == Value
        end
        if uu_4 then
            return true
        end
        return false
    end
    return false
end
local function onBuy2()
    oV("Gold", Options.GoldMerchantItem, Options.GoldMerchantQuantity.Value)
end
local function autoUpgradeUnitsLoop()
    while task.wait(3) do
        if Library.Unloaded then
            break
        end
        if nZ("Status") == "Game" then
            if Toggles.SmartAutoPlay.Value then
                pcall(nV)
            end
            if Toggles.AutoUpgradeUnits.Value or Toggles.SmartAutoPlay.Value then
                pcall(o9)
            end
        end
    end
end
local function fn258()
    local sY = oU("CollectBattlepass")
    if sY then
        pcall(sY.Invoke, sY, 5, "All", {})
    end
end
local function autoBuyUpgradesLoop()
    while task.wait(5) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoBuyUpgrades.Value then
            pcall(oN)
        end
    end
end
local function fn273()
    local qy = oU("VoteForNext")
    if o4 or not qy then
        return
    end
    local Value = Toggles.SmartAutoPlay.Value
    local qA_1 = nil
    if Toggles.AutoLeave.Value then
        qA_1 = "BackToLobby"
    else
        local qB = Toggles.AutoNext.Value and nZ("CanNext")
        if qB then
            qA_1 = "Next"
        else
            if Toggles.AutoReplay.Value or Value then
                qA_1 = "Retry"
            end
        end
    end
    if qA_1 then
        o4 = true
        qy:Fire(true, qA_1)
    end
end
local function onRedeemCodes()
    task.spawn(n4)
end
local function fn383()
    local ss = oU("ClaimConquestReward")
    local st = oy and oy:Get({ "Conquests", "Normal" })
    local su = ss
    if su then
        su = type(st) == "table"
    end
    if not su then
        return
    end
    for k, v in st do
        if Library.Unloaded or not Toggles.AutoClaimConquests.Value then
            return
        end
        if type(v.Quests) == "table" then
            for k2, v in v.Quests do
                if v.Completed and not v.Claimed then
                    pcall(ss.Invoke, ss, 5, "Normal", k, k2)
                    task.wait(0.2)
                end
            end
        end
        if v.Completed and not v.Claimed then
            pcall(ss.Invoke, ss, 5, "Normal", k)
            task.wait(0.2)
        end
    end
end
local function fn397(gP)
    local u_ = nR
    local u0 = {}
    if u_ then
        u_ = nR[gP]
    end
    local u1 = u_
    if type(u1) == "table" then
        for k in u1 do
            table.insert(u0, k)
        end
        table.sort(u0)
    end
    return u0
end
local function onGameSpeed(bK)
    local ra_1
    local q8 = oU("SetGamespeed")
    local q9 = not q8 or nZ("Status") ~= "Game"
    local q9_1
    if q9 then
        return
    end
    q9_1, ra_1 = q8:Invoke(5, o8[bK])
    local q8_1 = not q9_1
    if q8_1 ~= false then
        q8_1 = typeof(ra_1) == "string"
    end
    if q8_1 then
        Library:Notify(ra_1)
    end
end
local function onMapMode(hj)
    local hl = nY(hj)
    Options.MapUniverse:SetValues(hl)
    Options.MapUniverse:SetValue(hl[1])
end
local function autoClaimDailyLoop()
    while task.wait(5) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoClaimDaily.Value then
            pcall(oP)
        end
        if Toggles.AutoClaimQuests.Value then
            pcall(ox)
        end
        if Toggles.AutoClaimPlaytime.Value then
            pcall(og)
        end
        if Toggles.AutoClaimConquests.Value then
            pcall(oI)
        end
        if Toggles.AutoClaimMilestone.Value then
            pcall(o6)
        end
        if Toggles.AutoClaimBattlepass.Value then
            pcall(oj)
        end
        if Toggles.AutoClaimIndex.Value then
            pcall(n_)
        end
    end
end
local function fn502()
    local r8 = oU("ClaimQuest")
    if r8 then
        r8:Fire(true, "All")
    end
end
local function fn545()
    local qV = oU("BuyUpgrade")
    if not (oy and qV) then
        return
    end
    local qW_1 = oy:Get("Upgrades")
    if type(qW_1) ~= "table" then
        return
    end
    for k, v in oB do
        if Library.Unloaded or not Toggles.AutoBuyUpgrades.Value then
            return
        end
        if (qW_1[k] or 0) < (v.LevelCap or math.huge) then
            pcall(qV.Invoke, qV, 5, k)
            task.wait(0.25)
        end
    end
end
local function fn592(fI)
    local ud = oe[Options.ClassStopGrade.Value] or math.huge
    if type(fI.Status) ~= "table" then
        return false
    end
    for k, v in fI.Status do
        local ud_1 = oe[v[1]]
        if not ud_1 or ud_1 < ud then
            return false
        end
    end
    return true
end
local function fn607()
    local s2 = oU("ClaimDiscoveredUnit")
    local s3 = oy and oy:Get("DiscoveredUnitsToClaim")
    local s4 = s2 and type(s3) == "table" and next(s3)
    if s4 then
        s2:Fire(true, "All")
    end
end
local function fn628(ex, ey)
    local tk = nK(ex) or 0
    local tl = nK(ey) or 0
    return tk < tl
end
local function fn641(H)
    local qf_1
    local qd = o3 and o3()
    local qe = qd
    local qe_1
    local qj = if qe then 1 else 0
    local qh = 3768 * qj + 3610 * (1 - qj)
    local qi = 2934 * qj + 2232 * (1 - qj)
    if not ((qh * 1866 + qi * 440 + qh * qi) % 16777213 == 2600147) then
        qe = 8
    end
    local qd_1 = qe
    if nO then
        nO(2)
    end
    qe_1, qf_1 = pcall(H)
    if nO then
        nO(qd_1)
    end
    if not qe_1 then
        error(qf_1)
    end
    return qf_1
end
local function autoVoteStartLoop()
    while task.wait(2) do
        if Library.Unloaded then
            break
        end
        local rc = oU("SkipIntermission")
        local rd = rc and nZ("Status")
        local re = rd or nil
        local rd_1 = re
        if re then
            re = rd_1 ~= "Game"
        end
        if re then
            re = Toggles.AutoVoteStart.Value
        end
        if re then
            re = not oX()
        end
        if re then
            pcall(rc.Fire, rc, true)
        else
            local re_1 = rd_1 == "Game"
            if re_1 then
                re_1 = Toggles.AutoSkipWave.Value or Toggles.SmartAutoPlay.Value
            end
            if re_1 then
                pcall(rc.Fire, rc, true)
            end
        end
    end
end
local function onBuy()
    oV("Raids", Options.RaidsMerchantItem, Options.RaidsMerchantQuantity.Value)
end
local function fn676()
    local vf = not oJ:GetAttribute("InMatch") and nZ("Status") == nil
    return vf
end
local function autoLevelIncreaseLoop()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoLevelIncrease.Value then
            local t2 = oU("IncreaseLevelCap")
            local t3 = o_(Options.LevelUnit)
            local t4 = t3 and nM()[t3]
            if t2 and t4 then
                if (t4.LevelIncreased or 0) >= n2 then
                    Toggles.AutoLevelIncrease:SetValue(false)
                    Library:Notify("Unit is at max level cap")
                else
                    pcall(t2.Invoke, t2, 5, t3)
                end
            end
        end
    end
end
local function fn705(eA)
    local Value2 = Options.SummonStopUnit.Value
    local Value = Options.SummonStopRarity.Value
    if (not Value2 or Value2 == "") and (not Value or Value == "") then
        return false
    end
    for k, v in eA do
        local Name = v.Name
        if Value2 and Value2 ~= "" and Name == Value2 then
            return true
        end
        local tq_3 = Value and Value ~= "" and oh(Name) == Value
        if tq_3 then
            return true
        end
    end
    return false
end
local function fn723(cv)
    local Value = cv.Value
    if not Value or Value == "" then
        return nil
    end
    return nX[Value]
end
local function fn725(eI)
    if not (Toggles.NotifySummon and Toggles.NotifySummon.Value) then
        return
    end
    local tA_1 = nK(Options.SummonMinRarity.Value)
    if not tA_1 then
        return
    end
    local tB = {}
    for k, v in eI do
        local tC = oh(v.Name)
        local tD = nK(tC)
        if tD and tD >= tA_1 then
            table.insert(tB, ("Pulled **%s** (%s)"):format(tostring(v.Name), tostring(tC)))
        end
    end
    if #tB > 0 then
        on("Summon", table.concat(tB, "\n"))
    end
end
local function fn727(aa, ab)
    local qk = aa and aa:FindFirstChild(ab)
    local ql = qk
    if qk then
        qk = require(ql)
    end
    return qk or nil
end
local function fn764()
    local EndScreen = PlayerGui:FindFirstChild("EndScreen")
    if not EndScreen then
        return false
    end
    local Victory = EndScreen:FindFirstChild("Victory")
    local Defeat = EndScreen:FindFirstChild("Defeat")
    local qv_1 = Victory and Victory.Visible
    if not qv_1 then
        qv_1 = Defeat and Defeat.Visible
    end
    return qv_1
end
local function fn765()
    table.clear(nX)
    local rs = {}
    for k, v in nM() do
        local rt_1 = ("%s [Lv %s] %s"):format(tostring(v.Name), tostring(v.Level), tostring(k):sub(1, 8))
        nX[rt_1] = k
        table.insert(rs, rt_1)
    end
    table.sort(rs)
    for k, v in { "LevelUnit", "SpecUnit", "ClassUnit", "TraitUnit" } do
        local rt_2 = Options[v]
        if rt_2 then
            rt_2:SetValues(rs)
        end
    end
end
local function autoJoinMapLoop()
    while task.wait(3) do
        if Library.Unloaded then
            break
        end
        local vl = Toggles.AutoJoinMap.Value and ow()
        if vl then
            local Value = Options.MapUniverse.Value
            local vm = tonumber(Options.MapAct.Value)
            if Value and Value ~= "" and vm then
                pcall(n9, {
                    Type = Options.MapMode.Value,
                    Universe = Value,
                    Act = vm,
                    Difficulty = Options.MapDifficulty.Value,
                    DifficultyScale = n3,
                    OnlyFriends = Toggles.MapFriendsOnly.Value
                }, Toggles.MapGlobal.Value)
            end
        end
    end
end
local function fn780()
    local rH = oU("RedeemCode")
    if not rH then
        Library:Notify("RedeemCode is not ready yet")
        return
    end
    local rI = oy and oy:Get("RedeemedCodes")
    local rK = rI or {}
    local rI_1 = 0
    for k, v in n8 do
        if Library.Unloaded then
            return
        end
        if not rK[v] then
            pcall(rH.Invoke, rH, 5, v)
            rI_1 = rI_1 + 1
            task.wait(0.5)
        end
    end
    local rH_1 = rI_1 > 0 and ("Attempted %d code(s)"):format(rI_1)
    local rI_2 = rH_1 or "All codes already redeemed"
    Library:Notify(rI_2)
end
local function fn785()
    return workspace:FindFirstChild("Game")
end
local function fn801(gp, gq)
    local uJ = oy
    local uK = {}
    if uJ then
        uJ = oy:Get(gp)
    end
    local uL = uJ
    local uJ_1 = type(uL) == "table" and type(uL.Items) == "table"
    if uJ_1 then
        table.clear(nQ[gq])
        for k, v in uL.Items do
            nQ[gq][v.Name] = k
            table.insert(uK, v.Name)
        end
    end
    return uK
end
local function fn807()
    local qD = oU("SetAutoplay")
    if not (oy and qD) then
        return
    end
    local qI = if not oy:Get("Autoplay") then 1 else 0
    if qI == 1 then
        qD:Invoke(5)
    end
end
local function fn818(gW, gX)
    local u7 = nR
    local u8 = {}
    if u7 then
        u7 = nR[gW]
    end
    if u7 then
        u7 = nR[gW][gX]
    end
    local u9 = u7
    if u7 then
        u7 = u9.Worlds
    end
    local u9_1 = u7
    if type(u9_1) == "table" then
        for k in u9_1 do
            table.insert(u8, tostring(k))
        end
        table.sort(u8, function(g4, g5)
            return tonumber(g4) < tonumber(g5)
        end)
    end
    return u8
end
local function autoClassRerollLoop()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if Toggles.AutoClassReroll.Value then
            local un = oU("RollNewClassToUnit")
            local uo = o_(Options.ClassUnit)
            local up = uo and nM()[uo]
            if un and up then
                if ou(up) then
                    Toggles.AutoClassReroll:SetValue(false)
                    Library:Notify("Class reroll target reached")
                    if Toggles.NotifyClassReroll.Value then
                        on("Class Reroll", ("**%s** reached grade %s on every stat"):format(tostring(up.Name), tostring(Options.ClassStopGrade.Value)))
                    end
                else
                    pcall(un.Invoke, un, 5, uo, "All")
                end
            end
        end
    end
end
local function fn854(aR)
    local qr = n5()
    local qs = qr and qr:GetAttribute(aR)
    return qs or nil
end
local function onRefreshUnitList2()
    oS()
end
local function worker()
    while task.wait(1) do
        if Library.Unloaded then
            break
        end
        if oX() then
            pcall(oC)
        else
            o4 = false
        end
    end
end
local function fn918(hE, hF)
    return (Categories[hE].Order or 0) < (Categories[hF].Order or 0)
end
local function fn951()
    if oi or Library.Unloaded then
        return
    end
    oi = true
    task.delay(0.5, function()
        oi = false
        pcall(function()
            SaveManager:Save(oH)
        end)
    end)
end
local function onMapUniverse(hn)
    Options.MapAct:SetValues(o0(Options.MapMode.Value, hn))
    Options.MapAct:SetValue("1")
end
local function fn962()
    local rk = oy and oy:Get("Units")
    local rk_1 = type(rk) == "table" and rk
    return rk_1 or {}
end
local function fn981()
    local sM = oU("ClaimMilestone")
    local sN = sM and oy and type(od) == "table"
    if not sN then
        return
    end
    local sN_1 = oy:Get("Level") or 0
    local sN_2 = oy:Get("Milestone")
    if type(sN_2) ~= "table" then
        return
    end
    for k, v in od do
        if Library.Unloaded or not Toggles.AutoClaimMilestone.Value then
            return
        end
        local sP_1 = not sN_2[k]
        if sP_1 ~= false then
            sP_1 = sN_1 >= (v.NeedLevel or math.huge)
        end
        if sP_1 then
            sM:Fire(true, k)
            task.wait(0.2)
        end
    end
end
local function fn986()
    SaveManager:Load(oH)
end
local function fn1007(hb, hc)
    if hc then
        local vh_1 = oU("CreateGlobalMatch")
        if not vh_1 then
            return
        end
        hb.MatchName = ""
        pcall(vh_1.Invoke, vh_1, 10, hb)
        return
    end
    local vh_2 = oU("CreateMatch")
    local vi = oU("StartMatch")
    if not (vh_2 and vi) then
        return
    end
    pcall(vh_2.Fire, vh_2, true, hb)
    task.wait(2)
    if oJ:GetAttribute("InMatch") then
        pcall(vi.Fire, vi, false)
    end
end
local function fn1014()
    local sd = oU("ClaimFreeReward")
    local se = n1 and n1.FreeRewards
    local sf = sd
    if sf then
        sf = oy
    end
    if sf then
        sf = type(se) == "table"
    end
    if not sf then
        return
    end
    local se_1 = oy:Get({ "FreeRewards", "Countdown" }) or 0
    local se_2 = {}
    local sh = oy:Get({ "FreeRewards", "Claimed" }) or se_2
    for k, v in se do
        if Library.Unloaded or not Toggles.AutoClaimPlaytime.Value then
            return
        end
        local sg_2 = not sh[k]
        if sg_2 ~= false then
            sg_2 = se_1 >= (v.Duration or math.huge)
        end
        if sg_2 then
            sd:Fire(true, k)
            task.wait(0.2)
        end
    end
end
nK = nil
nL = nil
nM = nil
local nN
nO = nil
Clock = nil
nQ = nil
nR = nil
nS = nil
nT = nil
Categories = nil
nV = nil
nW = nil
nX = nil
nY = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n3 = nil
n4 = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
oc = nil
od = nil
oe = nil
of = nil
og = nil
oh = nil
oi = nil
oj = nil
ol = nil
om = nil
on = nil
oo = nil
op = nil
oq = nil
ou = nil
ov = nil
ow = nil
ox = nil
oy = nil
oA = nil
local ob, ot
oB = nil
oC = nil
Client = nil
oE = nil
Warp = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
Options = nil
oN = nil
Toggles = nil
oP = nil
SaveManager = nil
oS = nil
Library = nil
oU = nil
oV = nil
oW = nil
oX = nil
HttpService = nil
local oZ
o_ = nil
o0 = nil
PlayerGui = nil
VirtualUser = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
ReplicatedStorage = nil
o8 = nil
o9 = nil
local ph, pn, po
local pp, ChallengeRunnerGroup, pr, ps, pu
if not game:IsLoaded() then
    game.Loaded:Wait()
end
ReplicatedStorage, VirtualUser, HttpService, Library, SaveManager, Toggles, Options, oJ = nil, nil, nil, nil, nil, nil, nil, nil
local wT_16 = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
oJ = wT_16.LocalPlayer
local pd = queue_on_teleport
if not pd then
    wT_16 = syn and syn.queue_on_teleport
    pd = wT_16
end
if not pd then
    wT_16 = fluxus and fluxus.queue_on_teleport
    pd = wT_16
end
op, ol, wT_11 = nil, nil, nil
local wT_5 = 1
repeat
    wT_16 = (vector.create((wT_5 * 4 + 5) % 11 + 1, (wT_5 * 8 + 9) % 13 + 1, (wT_5 * 15 + 8) % 17 + 1))
    local xQ = vector.floor(wT_16) + vector.ceil(wT_16 * -1)
    if vector.dot(xQ, xQ) == 0 then
        op = pd
        ol = ReplicatedStorage:WaitForChild("Packages")
        wT_11 = os.clock() + 10
    else
        wT_11 = ReplicatedStorage
        pd = op:WaitForChild("Packages")
        ol = os.clock() + 10
    end
    wT_5 = (wT_5 + 4) % 8
until (wT_5 * 1 + 7) % 8 == 4
while true do
    wT_16 = not oJ:GetAttribute("Loaded") and os.clock() < wT_11
    if wT_16 then
        task.wait(0.1)
        continue
    end
    break
end
wT_16 = setthreadidentity
if not wT_16 then
    wT_5 = syn and syn.set_thread_identity
    wT_16 = wT_5
end
wT_5 = getthreadidentity
nO = wT_16
if not wT_5 then
    wT_16 = syn and syn.get_thread_identity
    wT_5 = wT_16
end
o3, Warp, Client, oB, oy, ov, oq, om, od, n7, n1, nW, nR, Clock, oZ, nL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
o3 = wT_5
oZ = fn641
nL = fn727
if (not nL or nL) and (not o3 and nL) or (not o3 or not nL) and (nL or not o3) or (nL and nL or nL and not o3) and (not o3 and not o3 or (not o3 or nL)) or not ((not nL or nL) and (not o3 and nL) or (not o3 or not nL) and (nL or not o3) or (nL and nL or nL and not o3) and (not o3 and not o3 or (not o3 or nL))) then
    pcall(oZ, fn229)
else
    pcall(oZ, fn229)
end
wT_16 = not oy
wT_5 = Client and wT_16
if wT_5 then
    task.spawn(function()
        pcall(function()
            oy = oZ(function()
                return Client:WaitReplion("Data")
            end)
        end)
    end)
end
oW = {}
oU = function(aB)
    return oW[aB]
end
if Warp then
    for k, v in {
        "SkipIntermission",
        "SetAutoplay",
        "VoteForNext",
        "SetAutoUpgrade",
        "SetGamespeed",
        "BuyUpgrade",
        "SendFinishScreen",
        "ClaimDaily",
        "ClaimQuest",
        "ClaimFreeReward",
        "ClaimConquestReward",
        "ClaimMilestone",
        "CollectBattlepass",
        "ClaimDiscoveredUnit",
        "SummonUnit",
        "IncreaseLevelCap",
        "CraftItem",
        "SetEspecialization",
        "RollNewClassToUnit",
        "RollNewTrait",
        "BuyMerchantItem",
        "RedeemCode",
        "CreateMatch",
        "CreateGlobalMatch",
        "StartMatch"
    } do
        local pE = v
        task.spawn(function()
            pcall(function()
                oW[pE] = oZ(function()
                    return Warp.Client(pE)
                end)
            end)
        end)
    end
end
o8, o4, PlayerGui, nN, n5, nZ, oX, oC, nV, o9, oN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
n5 = fn785
nZ = fn854
o8 = { ["1x"] = "First", ["2x"] = "Second", ["3x"] = "Third" }
o4 = false
PlayerGui = oJ:WaitForChild("PlayerGui")
oX = fn764
oC = fn273
nV = fn807
o9 = fn120
oN = fn545
wT_16 = Library:CreateWindow({
    Title = "Anime Overseer",
    Icon = "rbxthumb://type=Asset&id=774125543&w=150&h=150",
    Footer = "Ouroboros Hub",
    Center = true,
    Resizable = true,
    EnableSidebarResize = true,
    Size = UDim2.fromOffset(960, 720),
    ShowCustomCursor = false
})
wT_11 = {
    Main = wT_16:AddTab("Main", "swords"),
    Misc = wT_16:AddTab("Misc", "sparkles"),
    Joiner = wT_16:AddTab("Joiner", "door-open"),
    Webhook = wT_16:AddTab("Webhook", "webhook"),
    Settings = wT_16:AddTab("Settings", "settings")
}
nN = "https://discord.gg/ehKVq7pf7v"
for k, v in wT_11 do
    v:AddLeftGroupbox("Discord", "message-circle", true, false, true):AddButton({
        Text = "Join Discord For Dupe",
        Func = function()
            setclipboard(nN)
            Library:Notify("Copied Discord invite to clipboard")
        end
    })
end
on, oe, n2, nX, nS, nQ, n8, nM, o_, oS, n4, oP, ox, og, oI, o6, oj, n_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pg = wT_11.Main:AddLeftGroupbox("Match Flow", "flag")
pg:AddToggle("AutoVoteStart", { Text = "Auto Vote Start", Default = false })
pg:AddToggle("AutoSkipWave", { Text = "Auto Skip Wave", Default = false })
local pf = wT_11.Main:AddRightGroupbox("Match End", "trophy")
pf:AddToggle("AutoReplay", { Text = "Auto Replay", Default = false })
pf:AddToggle("AutoNext", { Text = "Auto Next", Default = false })
pf:AddToggle("AutoLeave", { Text = "Auto Leave", Default = false })
pd = wT_11.Main:AddLeftGroupbox("Autoplay", "play")
pd:AddToggle("SmartAutoPlay", { Text = "Smart Auto Play", Default = false })
pd:AddDropdown("GameSpeed", { Text = "Game Speed", Values = { "1x", "2x", "3x" }, Default = "1x", Callback = onGameSpeed })
wT_5 = wT_11.Main:AddRightGroupbox("Units", "shield")
wT_5:AddToggle("AutoUpgradeUnits", { Text = "Auto Upgrade Units", Default = false })
wT_5:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
task.spawn(autoVoteStartLoop)
task.spawn(worker)
task.spawn(autoUpgradeUnitsLoop)
task.spawn(autoBuyUpgradesLoop)
oe = { D = 1, C = 2, B = 3, A = 4, S = 5, X = 6, Z = 7 }
local pl = { "D", "C", "B", "A", "S", "X", "Z" }
n2 = 4
nX = {}
nS = {}
nQ = { Gold = {}, Raids = {} }
nM = fn962
o_ = fn723
oS = fn765
wT_16 = wT_11.Misc:AddLeftGroupbox("Rewards", "gift")
wT_16:AddToggle("AutoClaimDaily", { Text = "Auto Claim Daily Login", Default = false })
wT_16:AddToggle("AutoClaimQuests", { Text = "Auto Claim All Quests", Default = false })
wT_16:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false })
wT_16:AddToggle("AutoClaimConquests", { Text = "Auto Claim Achievements", Default = false })
wT_16:AddToggle("AutoClaimMilestone", { Text = "Auto Claim Level Milestone", Default = false })
wT_16:AddToggle("AutoClaimBattlepass", { Text = "Auto Claim Battle Pass", Default = false })
wT_16:AddToggle("AutoClaimIndex", { Text = "Auto Claim Unit Index", Default = false })
n8 = {
    "3kccu!",
    "restrictionremoved",
    "rerollcode",
    "likethegame!",
    "AXISTHEGOAT",
    "500LIKES",
    "BUGMAN",
    "THANKYOUFOR1KCCU",
    "THX4500",
    "THX4200",
    '"weresoback!"',
    "wunbosavedtheday!"
}
n4 = fn780
wT_16:AddButton("Redeem Codes", onRedeemCodes)
oP = fn175
ox = fn502
og = fn1014
oI = fn383
o6 = fn981
oj = fn258
n_ = fn607
task.spawn(autoClaimDailyLoop)
local pk = wT_11.Misc:AddLeftGroupbox("Auto Summon", "wand-sparkles")
local pj = {}
local pi = {}
local pm = {}
if type(n7) == "table" then
    for k, v in n7 do
        wT_16 = v.Name or k
        wT_5 = tostring(wT_16)
        nS[wT_5] = k
        table.insert(pj, wT_5)
    end
    table.sort(pj)
end
oh = function(ej)
    local tb = type(oq) == "table" and oq[ej]
    local tc = tb
    if tb then
        tb = tc.Rarity
    end
    return tb or nil
end
nK = function(ep)
    local te = ep and nW and nW[ep]
    local tf = te
    if te then
        te = tf.Index
    end
    local tf_1 = te
    local tj = if tf_1 then 1 else 0
    local th = 2014 * tj + 2867 * (1 - tj)
    local ti = 2508 * tj + 3728 * (1 - tj)
    if not ((th * 3220 + ti * 2526 + th * ti) % 16777213 == 1094187) then
        tf_1 = nil
    end
    return tf_1
end
if type(oq) == "table" then
    wT_16 = {}
    for k, v in oq do
        table.insert(pi, k)
        wT_5 = v.Rarity and not wT_16[v.Rarity]
        if wT_5 then
            wT_16[v.Rarity] = true
            table.insert(pm, v.Rarity)
        end
    end
    wT_5 = 3
    repeat
        wT_16 = {
            "lcr",
            "pcpqvuw",
            "dvcrfxvquvfv",
            "yiowmybecu",
            "yaqfepyg",
            "vjfyvmoyuq",
            "cdxlxckp",
            "rynq",
            "klyzqnjdkr",
            "xzpnjq",
            "lypqjqeeh",
            "builjbro",
            "jklhujmafy",
            "zgz"
        }
        if wT_16[(wT_5 * 11 + 65) % 14 + 1] < wT_16[(wT_5 * 11 + 65) % 14 + 1] then
            table.sort(pm)
            table.sort(pi, fn628)
        else
            table.sort(pi)
            table.sort(pm, fn628)
        end
        wT_5 = (wT_5 + 2) % 4
    until (wT_5 * 3 + 1) % 4 == 0
end
ph, pg, pf, oE, nT = nil, nil, nil, nil, nil
wT_16 = 1
repeat
    wT_5 = (wT_16 * 3 + 3) % 4 + 1
    if wT_5 <= 2 then
        if wT_5 <= 1 then
            if wT_16 * 19685449 + 8 + 2 >= wT_16 * 19685449 + 8 + 2 + 2 then
                task.spawn(autoSummonLoop)
                wT_11 = pg.Misc:AddLeftGroupbox("Level Increase", "arrow-up")
                wT_11:AddButton("Refresh Unit List", onRefreshUnitList)
                wT_11:AddDropdown("LevelUnit", { Searchable = true, AllowNull = true, Text = "Unit", Values = {} })
                wT_11:AddToggle("AutoLevelIncrease", { Text = "Auto Level Increase", Default = false })
                task.spawn(autoLevelIncreaseLoop)
                pg.Misc:AddRightGroupbox("Craft & Specialization", "hammer")
                ph = {}
            else
                task.spawn(autoSummonLoop)
                pd = wT_11.Misc:AddLeftGroupbox("Level Increase", "arrow-up")
                pd:AddButton("Refresh Unit List", onRefreshUnitList)
                pd:AddDropdown("LevelUnit", { Text = "Unit", Values = {}, AllowNull = true, Searchable = true })
                pd:AddToggle("AutoLevelIncrease", { Text = "Auto Level Increase", Default = false })
                task.spawn(autoLevelIncreaseLoop)
                ph = wT_11.Misc:AddRightGroupbox("Craft & Specialization", "hammer")
                pg = {}
            end
            wT_16 = (wT_16 + 3) % 32
        else
            local yd = bit32.rrotate(bit32.bxor(bit32.lrotate(wT_16, 4), string.byte(tostring(ph))), 4)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yd, 4103982547), 153683401), (bit32.bxor(bit32.band(yd, 190984748), 199598329))), 153683401), 199598329) ~= yd then
                ov = type(pf) == "table"
            else
                pf = type(ov) == "table"
            end
            wT_16 = (wT_16 + 27) % 32
        end
    elseif wT_5 <= 3 then
        wT_5 = (vector.create((wT_16 * 6 + 4) % 11 + 1, (wT_16 * 2 + 4) % 13 + 1, (wT_16 * 1 + 11) % 17 + 1))
        local x9 = vector.floor(wT_5) + vector.ceil(wT_5 * -1)
        if vector.dot(x9, x9) == 0 then
            pk:AddDropdown("SummonBanner", { Text = "Banner", Values = pj, Default = 1 })
            pk:AddDropdown("SummonAmount", { Text = "Per Pull", Values = { "1", "10" }, Default = "10" })
            pk:AddDropdown("SummonStopUnit", { Text = "Stop At Unit", Values = pi, AllowNull = true, Searchable = true })
            pk:AddDropdown("SummonStopRarity", { Text = "Stop At Rarity", Values = pm, AllowNull = true })
            pk:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
            oE = fn705
        else
            oE:AddDropdown("SummonBanner", { Values = pm, Default = 1, Text = "Banner" })
            oE:AddDropdown("SummonAmount", { Values = { "1", "10" }, Text = "Per Pull", Default = "10" })
            oE:AddDropdown("SummonStopUnit", { Searchable = true, Values = pj, AllowNull = true, Text = "Stop At Unit" })
            oE:AddDropdown("SummonStopRarity", { Values = pi, Text = "Stop At Rarity", AllowNull = true })
            oE:AddToggle("AutoSummon", { Text = "Auto Summon", Default = false })
            pk = fn705
        end
        wT_16 = (wT_16 + 23) % 32
    else
        if pg and not pg and (not nT or not pf) or not nT and pg and (pf or not pf) or not (pg and not pg and (not nT or not pf) or not nT and pg and (pf or not pf)) then
            nT = fn725
        else
            ph = fn725
        end
        wT_16 = (wT_16 + 23) % 32
    end
until (wT_16 * 7 + 10) % 32 == 5
if pf then
    wT_16 = 6
    repeat
        if wT_16 * 13276913 + 5 + 7 >= wT_16 * 13276913 + 5 + 7 + 1 then
            ov = type(pf.Base) == "table"
        else
            pf = type(ov.Base) == "table"
        end
        wT_16 = (wT_16 + 0) % 8
    until (wT_16 * 5 + 6) % 8 == 4
end
if pf then
    for k, v in ov.Base do
        wT_16 = type(v) == "table" and v.Craft
        if wT_16 then
            table.insert(pg, k)
        end
    end
    table.sort(pg)
end
wT_5, pi, pf, pd, ou = nil, nil, nil, nil, nil
wT_16 = 15
repeat
    pj = (wT_16 * 1 + 1) % 2 + 1
    if pj <= 1 then
        pj = {
            "vhoavmdwa",
            "fwqvjivb",
            "bjewsqvfxhc",
            "doirqhctri",
            "ymlt",
            "oab",
            "jorgcqfd",
            "ykzfgpps",
            "vvafbilaio"
        }
        local yg = wT_16
        pk = pj[yg % 9 + 1]
        if pk:len() <= pk:gsub("(.)", "%1%1", yg % 3 % 2 + 1):len() then
            ph:AddDropdown("CraftItem", { Text = "Item to Craft", Values = pg, AllowNull = true, Searchable = true })
            ph:AddSlider("CraftQuantity", { Text = "Quantity", Default = 1, Min = 1, Max = 50, Rounding = 0 })
            ph:AddToggle("AutoCraft", { Text = "Auto Craft", Default = false })
            ph:AddDropdown("SpecUnit", { Text = "Unit", Values = {}, AllowNull = true, Searchable = true })
            ph:AddDropdown("SpecMode", { Text = "Mode", Values = { "Fast", "Price" }, Default = "Fast" })
            ph:AddToggle("AutoSpecialization", { Text = "Auto Specialization", Default = false })
            task.spawn(autoCraftLoop)
            wT_5 = wT_11.Misc:AddRightGroupbox("Auto Class Reroll", "dices")
            wT_5:AddButton("Refresh Unit List", onRefreshUnitList2)
            wT_5:AddDropdown("ClassUnit", { Text = "Unit", Values = {}, AllowNull = true, Searchable = true })
            wT_5:AddDropdown("ClassStopGrade", { Text = "Stop At Grade", Values = pl, Default = "S" })
            wT_5:AddToggle("AutoClassReroll", { Text = "Auto Class Reroll", Default = false })
            ou = fn592
            task.spawn(autoClassRerollLoop)
            pi = wT_11.Misc:AddRightGroupbox("Auto Trait Reroll", "sparkle")
        else
            wT_11:AddDropdown("CraftItem", { AllowNull = true, Text = "Item to Craft", Searchable = true, Values = wT_5 })
            wT_11:AddSlider("CraftQuantity", { Default = 1, Min = 1, Text = "Quantity", Rounding = 0, Max = 50 })
            wT_11:AddToggle("AutoCraft", { Text = "Auto Craft", Default = false })
            wT_11:AddDropdown("SpecUnit", { AllowNull = true, Searchable = true, Text = "Unit", Values = {} })
            wT_11:AddDropdown("SpecMode", { Default = "Fast", Values = { "Fast", "Price" }, Text = "Mode" })
            wT_11:AddToggle("AutoSpecialization", { Text = "Auto Specialization", Default = false })
            task.spawn(autoCraftLoop)
            pg = ph.Misc:AddRightGroupbox("Auto Class Reroll", "dices")
            pg:AddButton("Refresh Unit List", onRefreshUnitList2)
            pg:AddDropdown("ClassUnit", { Text = "Unit", Searchable = true, AllowNull = true, Values = {} })
            pg:AddDropdown("ClassStopGrade", { Values = pi, Text = "Stop At Grade", Default = "S" })
            pg:AddToggle("AutoClassReroll", { Text = "Auto Class Reroll", Default = false })
            pl = fn592
            task.spawn(autoClassRerollLoop)
            ou = ph.Misc:AddRightGroupbox("Auto Trait Reroll", "sparkle")
        end
        wT_16 = (wT_16 + 3) % 16
    else
        pj = { "hclqy", "phevbqma", "oqqxhzen", "kfam", "joc", "vydhgallu", "qatr", "rcncxzufujh" }
        local x0 = wT_16
        pk = pj[x0 % 8 + 1]
        local py = if pk:len() <= pk:reverse():rep(x0 % 3 + 2):len() then 1 else 0
        if py == 1 then
            pf = {}
            pd = {}
        else
            pd = {}
            pf = {}
        end
        wT_16 = (wT_16 + 11) % 16
    end
until (wT_16 * 13 + 2) % 16 == 11
if type(om) == "table" then
    wT_16 = {}
    for k, v in om do
        table.insert(pf, k)
        wT_5 = v.Rarity and not wT_16[v.Rarity]
        if wT_5 then
            wT_16[v.Rarity] = true
            table.insert(pd, v.Rarity)
        end
    end
    wT_5 = 1
    repeat
        wT_16 = {
            "oowlaywp",
            "fim",
            "ewkturbkvewh",
            "tggedaz",
            "oxwmvjnim",
            "vdwgv",
            "efvwuai",
            "myx",
            "bmdixmmj",
            "awph",
            "whsdrzwdvwuv",
            "lurkzm",
            "udyargcw"
        }
        if wT_16[(wT_5 * 2 + 22) % 13 + 1] <= wT_16[(wT_5 * 2 + 22) % 13 + 1] then
            table.sort(pf)
            table.sort(pd)
        else
            table.sort(pd)
            table.sort(pf)
        end
        wT_5 = (wT_5 + 2) % 8
    until (wT_5 * 7 + 1) % 8 == 6
end
pl, pk, pj, pg, n3, pn, ChallengeRunnerGroup, pp, po, n0, ph, oV, nY, o0, ow, n9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
wT_16 = 26
repeat
    wT_5 = (wT_16 * 5 + 7) % 14 + 1
    if wT_5 <= 7 then
        if wT_5 <= 4 then
            if wT_5 <= 2 then
                if wT_5 <= 1 then
                    pr = (vector.create((wT_16 * 4 + 5) % 11 + 1, (wT_16 * 9 + 1) % 13 + 1, (wT_16 * 1 + 14) % 17 + 1))
                    ps = (vector.create((wT_16 * 3 + 8) % 11 + 1, (wT_16 * 10 + 2) % 13 + 1, (wT_16 * 14 + 16) % 17 + 1))
                    local pt_1 = (vector.create((wT_16 * 2 + 2) % 11 + 1, (wT_16 * 6 + 6) % 13 + 1, (wT_16 * 4 + 5) % 17 + 1))
                    if vector.dot(vector.cross(pr, ps), pt_1) == vector.dot(vector.cross(ps, pt_1), pr) + 4 then
                        wT_11 = pl.Misc:AddRightGroupbox("Gold Merchant", "coins")
                    else
                        pl = wT_11.Misc:AddRightGroupbox("Gold Merchant", "coins")
                    end
                    wT_16 = (wT_16 + 101) % 112
                else
                    pr = { "csyjw", "idprdwt", "zbsj", "ziiu", "ulsld", "ybwu", "ncambyq", "fyr" }
                    local xy = wT_16
                    ps = pr[xy % 8 + 1]
                    if ps:len() >= ps:reverse():rep(xy % 3 + 2):len() then
                        wT_11:AddDropdown("GoldMerchantItem", { Searchable = true, Values = pk("GoldMerchant", "Gold"), AllowNull = true, Text = "Item" })
                        wT_11:AddSlider("GoldMerchantQuantity", { Rounding = 0, Min = 1, Max = 100, Text = "Quantity", Default = 1 })
                        wT_11:AddButton("Buy", onBuy2)
                        pl = ph.Misc:AddRightGroupbox("Raids Merchant", "swords")
                    else
                        pl:AddDropdown("GoldMerchantItem", { Text = "Item", Values = ph("GoldMerchant", "Gold"), AllowNull = true, Searchable = true })
                        pl:AddSlider("GoldMerchantQuantity", { Text = "Quantity", Default = 1, Min = 1, Max = 100, Rounding = 0 })
                        pl:AddButton("Buy", onBuy2)
                        pk = wT_11.Misc:AddRightGroupbox("Raids Merchant", "swords")
                    end
                    wT_16 = (wT_16 + 31) % 112
                end
            elseif wT_5 <= 3 then
                pr = {
                    "szovldbznu",
                    "dgkgxc",
                    "ywwnflknp",
                    "ivkl",
                    "ilxliqy",
                    "bthvfsocyoeb",
                    "qfrnuflhpdvp",
                    "gxlbjlgq",
                    "nuv",
                    "turkaosfbip",
                    "stnlwkvwfhwh",
                    "zaujwdodasge"
                }
                if pr[(wT_16 * 16 + 11) % 12 + 1] <= pr[(wT_16 * 16 + 11) % 12 + 1] then
                    pk:AddDropdown("RaidsMerchantItem", { Text = "Item", Values = ph("RaidsMerchant", "Raids"), AllowNull = true, Searchable = true })
                    pk:AddSlider("RaidsMerchantQuantity", { Text = "Quantity", Default = 1, Min = 1, Max = 100, Rounding = 0 })
                    pk:AddButton("Buy", onBuy)
                    oS()
                    pj = { "Easy", "Normal", "Hard", "Nightmare" }
                else
                    pj:AddDropdown("RaidsMerchantItem", { Text = "Item", AllowNull = true, Searchable = true, Values = pk("RaidsMerchant", "Raids") })
                    pj:AddSlider("RaidsMerchantQuantity", { Min = 1, Text = "Quantity", Rounding = 0, Max = 100, Default = 1 })
                    pj:AddButton("Buy", onBuy)
                    ph()
                    oS = { "Nightmare", "Hard", "Easy", "Normal" }
                end
                wT_16 = (wT_16 + 17) % 112
            else
                pr = {
                    "bbgkacuj",
                    "mpdalbydj",
                    "mklptygti",
                    "uzexxbfd",
                    "lofemiuyov",
                    "ygkywhtisqz",
                    "gbcgjcsw",
                    "qkzlsjfieba",
                    "rudavews",
                    "efkcjwoltyh"
                }
                local xI = wT_16
                ps = pr[xI % 10 + 1]
                if ps:len() <= ps:reverse():rep(xI % 3 + 2):len() then
                    pg = { "Story", "Stage" }
                else
                    oV = { "Story", "Stage" }
                end
                wT_16 = (wT_16 + 3) % 112
            end
        elseif wT_5 <= 6 then
            if wT_5 <= 5 then
                pr = { "qoacuqtukr", "xpzpljow", "coy", "msdre", "iud", "pgo", "mzg", "bucgxasbeq" }
                local xC = wT_16
                ps = pr[xC % 8 + 1]
                if ps:len() <= ps:gsub("(.)", "%1%1", xC % 3 % 2 + 1):len() then
                    n3 = 100
                else
                    nY = 100
                end
                wT_16 = (wT_16 + 87) % 112
            else
                pr = { "hnksoasub", "kdpavwzfy", "jpwlolnvkv", "deskisrnu", "fylgoumysk", "xznhg", "uaixxmvc", "lwjdi" }
                local xL = wT_16
                ps = pr[xL % 8 + 1]
                if ps:len() >= ps:reverse():rep(xL % 3 + 2):len() then
                    pn = fn397
                else
                    nY = fn397
                end
                wT_16 = (wT_16 + 31) % 112
            end
        else
            if (wT_16 * 2 + 6) * 4 % 3 == ((wT_16 * 2 + 6) * 4 + 7) % 3 then
                n9 = fn818
                o0 = fn676
                ow = fn1007
            else
                o0 = fn818
                ow = fn676
                n9 = fn1007
            end
            wT_16 = (wT_16 + 45) % 112
        end
    elseif wT_5 <= 11 then
        if wT_5 <= 9 then
            if wT_5 <= 8 then
                pr = (vector.create((wT_16 * 1 + 1) % 11 + 1, (wT_16 * 9 + 12) % 13 + 1, (wT_16 * 8 + 15) % 17 + 1))
                ps = (vector.create((wT_16 * 4 + 2) % 11 + 1, (wT_16 * 8 + 4) % 13 + 1, (wT_16 * 13 + 4) % 17 + 1))
                local pt_2 = (vector.create((wT_16 * 3 + 5) % 11 + 1, (wT_16 * 8 + 1) % 13 + 1, (wT_16 * 15 + 10) % 17 + 1))
                pu = (vector.create((wT_16 * 4 + 5) % 5 + 1, (wT_16 * 2 + 5) % 7 + 1, (wT_16 * 5 + 6) % 9 + 1))
                if vector.dot(vector.cross(pr, (vector.cross(ps, pt_2))), pu) == vector.dot(ps * vector.dot(pr, pt_2) - pt_2 * vector.dot(pr, ps), pu) + 1 then
                    wT_11 = pn.Joiner:AddLeftGroupbox("Map Runner", "map")
                else
                    pn = wT_11.Joiner:AddLeftGroupbox("Map Runner", "map")
                end
                wT_16 = (wT_16 + 73) % 112
            else
                pr = (vector.create((wT_16 * 3 + 6) % 11 + 1, (wT_16 * 1 + 6) % 13 + 1, (wT_16 * 13 + 9) % 17 + 1))
                ps = (vector.create((wT_16 * 7 + 8) % 11 + 1, (wT_16 * 2 + 9) % 13 + 1, (wT_16 * 6 + 2) % 17 + 1))
                local pt_3 = (vector.create((wT_16 * 1 + 3) % 11 + 1, (wT_16 * 9 + 4) % 13 + 1, (wT_16 * 2 + 12) % 17 + 1))
                pu = (vector.create((wT_16 * 4 + 8) % 11 + 1, (wT_16 * 8 + 6) % 13 + 1, (wT_16 * 1 + 5) % 17 + 1))
                if vector.dot(vector.cross(pr, ps), (vector.cross(pt_3, pu))) == vector.dot(pr, pt_3) * vector.dot(ps, pu) - vector.dot(pr, pu) * vector.dot(ps, pt_3) then
                    pn:AddDropdown("MapMode", { Text = "Mode", Values = pg, Default = "Story", Callback = onMapMode })
                    pn:AddDropdown("MapUniverse", { Text = "Map", Values = nY("Story"), AllowNull = true, Callback = onMapUniverse })
                    pn:AddDropdown("MapAct", { Text = "Act", Values = { "1" }, Default = "1" })
                    pn:AddDropdown("MapDifficulty", { Text = "Difficulty", Values = pj, Default = "Easy" })
                    pn:AddToggle("MapFriendsOnly", { Text = "Friends Only", Default = false })
                    pn:AddToggle("MapGlobal", { Text = "Public Matchmaking", Default = false })
                    pn:AddToggle("AutoJoinMap", { Text = "Auto Run Map", Default = false })
                    task.spawn(autoJoinMapLoop)
                    ChallengeRunnerGroup = wT_11.Joiner:AddLeftGroupbox("Challenge Runner", "flame")
                else
                    pj:AddDropdown("MapMode", { Values = wT_11, Default = "Story", Callback = onMapMode, Text = "Mode" })
                    pj:AddDropdown("MapUniverse", { AllowNull = true, Text = "Map", Values = pg("Story"), Callback = onMapUniverse })
                    pj:AddDropdown("MapAct", { Default = "1", Text = "Act", Values = { "1" } })
                    pj:AddDropdown("MapDifficulty", { Values = nY, Text = "Difficulty", Default = "Easy" })
                    pj:AddToggle("MapFriendsOnly", { Text = "Friends Only", Default = false })
                    pj:AddToggle("MapGlobal", { Text = "Public Matchmaking", Default = false })
                    pj:AddToggle("AutoJoinMap", { Text = "Auto Run Map", Default = false })
                    task.spawn(autoJoinMapLoop)
                    pn = ChallengeRunnerGroup.Joiner:AddLeftGroupbox("Challenge Runner", "flame")
                end
                wT_16 = (wT_16 + 45) % 112
            end
        elseif wT_5 <= 10 then
            if (wT_16 * 3 + 4) * 13 % 4 == ((wT_16 * 3 + 4) * 13 + 4) % 4 then
                pp = {}
            else
                po = {}
            end
            wT_16 = (wT_16 + 59) % 112
        else
            if wT_16 * 73857841 + 11 + 3 <= wT_16 * 73857841 + 11 + 3 + 2 then
                po = nR
            else
                nR = po
            end
            wT_16 = (wT_16 + 17) % 112
        end
    elseif wT_5 <= 13 then
        if wT_5 <= 12 then
            wT_5 = {
                "rcqhyf",
                "phmkqerbdiq",
                "mtohqxwd",
                "gwsa",
                "wkta",
                "lqrugs",
                "ldjkm",
                "pthqfp",
                "dnrsocjqbtpz",
                "jqfrfqmelhd",
                "pzrk",
                "hhfnlcdrojw",
                "seqlkezbxj"
            }
            if wT_5[(wT_16 * 10 + 83) % 13 + 1] <= wT_5[(wT_16 * 10 + 83) % 13 + 1] then
                pi:AddDropdown("TraitUnit", { Text = "Unit", Values = {}, AllowNull = true, Searchable = true })
                pi:AddDropdown("TraitStopTrait", { Text = "Stop At Trait", Values = pf, AllowNull = true, Searchable = true })
                pi:AddDropdown("TraitStopRarity", { Text = "Or Stop At Rarity", Values = pd, AllowNull = true })
                pi:AddToggle("AutoTraitReroll", { Text = "Auto Trait Reroll", Default = false })
                n0 = fn231
            else
                n0:AddDropdown("TraitUnit", { Text = "Unit", Values = {}, Searchable = true, AllowNull = true })
                n0:AddDropdown("TraitStopTrait", { AllowNull = true, Values = pd, Text = "Stop At Trait", Searchable = true })
                n0:AddDropdown("TraitStopRarity", { Text = "Or Stop At Rarity", AllowNull = true, Values = pf })
                n0:AddToggle("AutoTraitReroll", { Text = "Auto Trait Reroll", Default = false })
                pi = fn231
            end
            wT_16 = (wT_16 + 87) % 112
        else
            wT_5 = (vector.create((wT_16 * 7 + 2) % 11 + 1, (wT_16 * 6 + 1) % 13 + 1, (wT_16 * 3 + 4) % 17 + 1))
            pr = (vector.create((wT_16 * 4 + 1) % 11 + 1, (wT_16 * 6 + 13) % 13 + 1, (wT_16 * 11 + 4) % 17 + 1))
            local xG = vector.cross(wT_5, pr)
            local xH = vector.dot(wT_5, pr)
            if vector.dot(xG, xG) + xH * xH == vector.dot(wT_5, wT_5) * vector.dot(pr, pr) then
                task.spawn(autoTraitRerollLoop)
                ph = fn801
            else
                task.spawn(autoTraitRerollLoop)
                pj = fn801
            end
            wT_16 = (wT_16 + 45) % 112
        end
    else
        wT_5 = (vector.create((wT_16 * 2 + 8) % 11 + 1, (wT_16 * 5 + 11) % 13 + 1, (wT_16 * 6 + 7) % 17 + 1))
        pr = (vector.create((wT_16 * 2 + 6) % 11 + 1, (wT_16 * 10 + 2) % 13 + 1, (wT_16 * 7 + 8) % 17 + 1))
        ps = (vector.create((wT_16 * 3 + 4) % 11 + 1, (wT_16 * 7 + 11) % 13 + 1, (wT_16 * 3 + 6) % 17 + 1))
        local pt_4 = (vector.create((wT_16 * 6 + 6) % 11 + 1, (wT_16 * 9 + 12) % 13 + 1, (wT_16 * 7 + 16) % 17 + 1))
        if vector.dot(vector.cross(wT_5, pr), (vector.cross(ps, pt_4))) == vector.dot(wT_5, ps) * vector.dot(pr, pt_4) - vector.dot(wT_5, pt_4) * vector.dot(pr, ps) then
            oV = fn45
        else
            ph = fn45
        end
        wT_16 = (wT_16 + 17) % 112
    end
until (wT_16 * 107 + 51) % 112 == 103
if po then
    po = nR.Challenges
end
if po then
    Categories = nR.Challenges.Categories
    if type(Categories) == "table" then
        for k in Categories do
            table.insert(pp, k)
        end
        wT_16 = 1
        repeat
            if (wT_16 * 3 + 4) * 5 % 4 == ((wT_16 * 3 + 4) * 5 + 8) % 4 then
                table.sort(pp, fn918)
            else
                table.sort(pp, fn918)
            end
            wT_16 = (wT_16 + 1) % 8
        until (wT_16 * 5 + 6) % 8 == 0
    end
end
ChallengeRunnerGroup:AddDropdown("ChallengeCategory", { Text = "Rotation", Values = pp, Default = "Daily" })
ChallengeRunnerGroup:AddToggle("ChallengeFriendsOnly", { Text = "Friends Only", Default = false })
ChallengeRunnerGroup:AddToggle("ChallengeGlobal", { Text = "Public Matchmaking", Default = false })
ChallengeRunnerGroup:AddToggle("AutoJoinChallenge", { Text = "Auto Run Challenge", Default = false })
o5 = function()
    local vt = nR and nR.Challenges
    local vu = vt
    if vt then
        vt = Clock
    end
    if not vt then
        return nil
    end
    local Value = Options.ChallengeCategory.Value
    local vv = vu.GetBucket(Value, Clock:GetNowTimestamp())
    local vw = vu.Generate(Value, vv)
    local vv_1 = vw and vw[1]
    if not vv_1 then
        return nil
    end
    return {
        Type = "Challenges",
        Category = Value,
        Slot = vv_1.Slot,
        Universe = vv_1.Universe,
        Act = vv_1.Act,
        Difficulty = vv_1.Difficulty or "Nightmare",
        DifficultyScale = vv_1.DifficultyScale or 75,
        OnlyFriends = Toggles.ChallengeFriendsOnly.Value
    }
end
task.spawn(function()
    while task.wait(3) do
        if Library.Unloaded then
            break
        end
        local vE = Toggles.AutoJoinChallenge.Value and ow()
        if vE then
            local vE_1 = select(2, pcall(o5))
            if type(vE_1) == "table" then
                pcall(n9, vE_1, Toggles.ChallengeGlobal.Value)
            end
        end
    end
end)
wT_16 = wT_11.Joiner:AddRightGroupbox("Raid Runner", "skull")
wT_16:AddDropdown("RaidUniverse", {
    Text = "Raid",
    Values = nY("Raids"),
    AllowNull = true,
    Callback = function(hV)
        Options.RaidAct:SetValues(o0("Raids", hV))
        Options.RaidAct:SetValue("1")
    end
})
wT_16:AddDropdown("RaidAct", { Text = "Act", Values = { "1" }, Default = "1" })
wT_16:AddToggle("RaidFriendsOnly", { Text = "Friends Only", Default = false })
wT_16:AddToggle("RaidGlobal", { Text = "Public Matchmaking", Default = false })
wT_16:AddToggle("AutoJoinRaid", { Text = "Auto Run Raid", Default = false })
task.spawn(function()
    while task.wait(3) do
        if Library.Unloaded then
            break
        end
        local vG = Toggles.AutoJoinRaid.Value and ow()
        if vG then
            local Value = Options.RaidUniverse.Value
            local vH = tonumber(Options.RaidAct.Value)
            if Value and Value ~= "" and vH then
                pcall(n9, {
                    Type = "Raids",
                    Universe = Value,
                    Act = vH,
                    Difficulty = "",
                    DifficultyScale = n3,
                    OnlyFriends = Toggles.RaidFriendsOnly.Value
                }, Toggles.RaidGlobal.Value)
            end
        end
    end
end)
wT_16 = wT_11.Webhook:AddLeftGroupbox("Webhook", "send")
wT_16:AddInput("WebhookUrl", {
    Text = "Webhook URL",
    Default = "",
    Placeholder = "https://discord.com/api/webhooks/...",
    Finished = true
})
wT_16:AddToggle("NotifyMatchEnd", { Text = "Notify On Match End", Default = true })
wT_16:AddToggle("NotifySummon", { Text = "Notify On Summon", Default = false })
wT_16:AddDropdown("SummonMinRarity", { Text = "Minimum Rarity", Values = pm, Default = "Mythic" })
wT_16:AddToggle("NotifyClassReroll", { Text = "Notify On Class Reroll Done", Default = false })
wT_16:AddToggle("NotifyTraitReroll", { Text = "Notify On Trait Reroll Done", Default = false })
oL = function()
    local vL = getgenv and getgenv()
    local vN = vL or _G or {}
    local vL_2 = syn
    if vL_2 then
        vL_2 = syn.request
    end
    local vN_1 = vL_2
    if not vN_1 then
        vN_1 = http and http.request
    end
    if not vN_1 then
        vN_1 = fluxus and fluxus.request
    end
    if not vN_1 then
        vN_1 = krnl and krnl.request
    end
    if not vN_1 then
        vN_1 = rawget(vN, "http_request")
    end
    local vR = if vN_1 then 1 else 0
    local vP = 4039 * vR + 3523 * (1 - vR)
    local vQ = 2546 * vR + 1 * (1 - vR)
    if not ((vP * 381 + vQ * 3493 + vP * vQ) % 16777213 == 3938118) then
        vN_1 = rawget(vN, "request")
    end
    local vR_1 = if vN_1 then 1 else 0
    local vP_1 = 3957 * vR_1 + 297 * (1 - vR_1)
    local vQ_1 = 2386 * vR_1 + 3761 * (1 - vR_1)
    if not ((vP_1 * 3460 + vQ_1 * 2247 + vP_1 * vQ_1) % 16777213 == 11716751) then
        vN_1 = http_request
    end
    if not vN_1 then
        vN_1 = request
    end
    return vN_1
end
oc = function(ij)
    local vS = oL()
    if not vS then
        return false, "Executor has no HTTP request function"
    end
    local Value = Options.WebhookUrl.Value
    local vU = Value == ""
    local vU_1
    local vV = not Value or vU
    local vV_1
    if vV then
        return false, "No webhook URL set"
    end
    vU_1, vV_1 = pcall(vS, {
        Url = Value,
        Method = "POST",
        Headers = { ["content-type"] = "application/json", ["user-agent"] = "Mozilla/5.0" },
        Body = HttpService:JSONEncode(ij)
    })
    if not vU_1 then
        return false, tostring(vV_1)
    end
    local vS_1 = type(vV_1) == "table"
    if vS_1 then
        vS_1 = vV_1.StatusCode or vV_1.Status or vV_1.status_code
    end
    local vT_2 = vS_1
    local vS_2 = type(vT_2) == "number"
    if vS_2 then
        vS_2 = vT_2 < 200 or vT_2 >= 300
    end
    if vS_2 then
        return false, ("HTTP %d"):format(vT_2)
    end
    return true
end
on = function(ix, iy)
    oc({
        embeds = {
            {
                title = "Anime Overseer",
                color = 2829617,
                fields = { { name = "Name", value = oJ.Name, inline = false }, { name = ix, value = iy, inline = false } },
                footer = { text = "Ouroboros Hub" },
                timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }
        }
    })
end
oA = function(iC)
    local vY_1
    local vX = tostring(math.floor(iC))
    repeat
        vX, vY_1 = vX:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
    until vY_1 == 0
    return vX
end
oo = function(iG)
    local v1 = iG or 0
    iG = math.max(0, math.floor(v1))
    return ("%d:%02d"):format(iG // 60, iG % 60)
end
n6 = function(iI)
    local v3 = (nZ("Universe"))
    local v3_2
    local wc = if v3 then 1 else 0
    local wa = 1719 * wc + 139 * (1 - wc)
    local wb = 1271 * wc + 1876 * (1 - wc)
    if not ((wa * 3205 + wb * 918 + wa * wb) % 16777213 == 8861022) then
        v3 = iI.Universe
    end
    local v4 = v3 or "Unknown"
    local v3_1 = tostring(v4)
    if iI.Mode == "Tower" then
        local v4_1 = iI.Floor or "?"
        v3_2 = ("%s (Floor %s)"):format(v3_1, tostring(v4_1))
    else
        local v4_2 = iI.World or nZ("World")
        local v5_1 = v4_2
        local wf = if v5_1 then 1 else 0
        local wd = 1591 * wf + 3194 * (1 - wf)
        local we = 2663 * wf + 2950 * (1 - wf)
        if not ((wd * 2680 + we * 2161 + wd * we) % 16777213 == 14255456) then
            v5_1 = "?"
        end
        v3_2 = ("%s Act %s"):format(v3_1, tostring(v5_1))
    end
    local v4_3 = nZ("Difficulty")
    local v5_2 = iI.Mode
    local wi = if v5_2 then 1 else 0
    local wg = 1128 * wi + 3266 * (1 - wi)
    local wh = 3895 * wi + 2023 * (1 - wi)
    if not ((wg * 1210 + wh * 3478 + wg * wh) % 16777213 == 2528037) then
        v5_2 = nZ("Gamemode")
    end
    local v6 = v5_2 or "Story"
    local v5_3 = tostring(v6)
    if v4_3 then
        v5_3 = v5_3 .. " - " .. tostring(v4_3)
    end
    local v6_1 = iI.Won and "Victory" or "Defeat"
    local v6_2 = ("%s (%s) - %s"):format(v3_2, v5_3, v6_1)
    local v7 = iI.Status and iI.Status.MatchTime
    local v8 = { v6_2, "- Time: " .. oo(v7), "- Reward:" }
    local Items = iI.Items
    local v4_6 = type(Items) == "table" and #Items > 0
    if v4_6 then
        for k, v in Items do
            local v3_4 = type(v) == "table" and v.Name
            if v3_4 then
                local v3_5 = v.Quantity or 1
                local v4_7 = oA(v3_5)
                if v.Unit then
                    table.insert(v8, ("+%s %s"):format(v4_7, v.Name))
                else
                    local v3_6 = nil
                    if oy then
                        if v.Name == "Coins" then
                            v3_6 = oy:Get("Coins")
                        else
                            v3_6 = oy:Get({ "Items", v.Name })
                        end
                    end
                    if type(v3_6) == "number" then
                        table.insert(v8, ("+%s %s [%s]"):format(v4_7, v.Name, oA(v3_6)))
                    else
                        table.insert(v8, ("+%s %s"):format(v4_7, v.Name))
                    end
                end
            end
        end
    else
        table.insert(v8, "None")
    end
    return table.concat(v8, "\n")
end
ot = function(i3)
    oc({
        embeds = {
            {
                title = "Anime Overseer",
                color = 2829617,
                fields = {
                    { name = "Name", value = oJ.Name, inline = false },
                    { name = "Result", value = n6(i3), inline = false }
                },
                footer = { text = "Ouroboros Hub" },
                timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }
        }
    })
end
wT_16:AddButton("Test Webhook", function()
    local wq_1
    local wp_1
    wp_1, wq_1 = oc({
        embeds = {
            {
                title = "Anime Overseer",
                color = 2829617,
                fields = {
                    { name = "Name", value = oJ.Name, inline = false },
                    { name = "Result", value = "Webhook test from Ouroboros Hub.", inline = false }
                },
                footer = { text = "Ouroboros Hub" },
                timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
            }
        }
    })
    local wr = wp_1 and "Test webhook sent"
    local wp_2 = wr or "Failed to send: " .. tostring(wq_1)
    Library:Notify(wp_2, 8)
end)
task.spawn(function()
    local wv
    local wA = 1
    while wA <= 120 do
        wv = oU("SendFinishScreen")
        if wv or Library.Unloaded then
            break
        end
        task.wait(1)
        wA += 1
    end
    if not wv or Library.Unloaded then
        return
    end
    wv:Connect(function(jj)
        if Library.Unloaded or not Toggles.NotifyMatchEnd.Value then
            return
        end
        if type(jj) ~= "table" then
            return
        end
        task.delay(1, function()
            pcall(ot, jj)
        end)
    end)
end)
wT_16 = wT_11.Settings:AddLeftGroupbox("Menu", "menu")
wT_16:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
wT_16:AddToggle("AntiAFK", { Text = "Anti-AFK", Default = true })
of = false
oa = function()
    if not op then
        return false
    elseif of then
        return true
    else
        of = pcall(op, 'loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/Ouroboros/main/games/animeshitseer.lua"))()')
        return of
    end
end
wT_16:AddToggle("AutoExecute", {
    Text = "Auto Execute",
    Default = false,
    Callback = function(jy)
        if not jy then
            return
        end
        if not oa() then
            Library:Notify("Your executor does not support queue_on_teleport")
        end
    end
})
wT_16:AddButton("Unload", function()
    Library:Unload()
end)
oJ.OnTeleport:Connect(function(jC)
    if jC ~= Enum.TeleportState.Started then
        return
    end
    if Library.Unloaded or not Toggles.AutoExecute.Value then
        return
    end
    oa()
end)
Library.ToggleKeybind = Options.MenuKeybind
oJ.Idled:Connect(function()
    if Library.Unloaded then
        return
    end
    if not Toggles.AntiAFK.Value then
        return
    end
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(wT_11.Settings)
ThemeManager:LoadDefault()
oK = "OuroborosHub/anime-overseer"
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder(oK)
SaveManager:BuildConfigSection(wT_11.Settings)
SaveManager:LoadAutoloadConfig()
oH, oi, ob = nil, nil, nil
wT_16 = 1
repeat
    wT_5 = (wT_16 * 1 + 0) % 2 + 1
    if wT_5 <= 1 then
        if (wT_16 * 3 + 1) * 5 % 4 == ((wT_16 * 3 + 1) * 5 + 4) % 4 then
            ob = fn951
        else
            oi = fn951
        end
        wT_16 = (wT_16 + 3) % 8
    else
        if (wT_16 * 2 + 7) * 13 % 3 == ((wT_16 * 2 + 7) * 13 + 4) % 3 then
            oJ = "setting_" .. oi.Name
            pcall(fn986)
            pcall(fn114)
            oH = false
        else
            oH = "setting_" .. oJ.Name
            pcall(fn986)
            pcall(fn114)
            oi = false
        end
        wT_16 = (wT_16 + 1) % 8
    end
until (wT_16 * 7 + 2) % 8 == 5
for k, v in Toggles do
    local Changed
    wT_16 = type(v) == "table" and v.OnChanged
    if wT_16 then
        Changed = v.Changed
        v:OnChanged(function(...)
            ob()
            if Changed then
                Changed(...)
            end
        end)
    end
end
for k, v in Options do
    local Changed
    wT_16 = type(v) == "table" and v.OnChanged
    if wT_16 then
        Changed = v.Changed
        v:OnChanged(function(...)
            ob()
            if Changed then
                Changed(...)
            end
        end)
    end
end
ob()
