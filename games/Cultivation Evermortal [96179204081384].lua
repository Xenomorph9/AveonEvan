local tZ
local un
local t4
local uM
local ua
local tS
local ug
local tY
local uF
local um
local t3
local uL
local tL
local us
local t9
local tR
local uy
local uf
local tX
local uE
local ul
local uK
local tK
local ur
local ue
local tW
local CoreGui
local uk
local t1
local uJ
local tJ
local uq
local t7
local uP
local tP
local ud
local tV
local uC
local uj
local t0
local connection
local t6
local uO
local tO
local uv
local uc
local tU
local ui
local t_
local uH
local uo
local t5
local tN
local ub
local tT
local uh
local function fn2(cb)
    local Config = uO.Config
    local w2 = Config and tonumber(Config.ROLL_COST)
    local w3 = w2 or 100
    local w2_1 = 1
    local w3_1 = Config and tW(Config.RootSlotCostFactor)
    if w3_1 then
        local w3_2 = tonumber(Config.RootSlotCostFactor(cb)) or 1
        w2_1 = w3_2
    end
    return w3 * w2_1
end
local function fn23(cQ)
    cQ.stopped = true
    local xq = cQ.generation or 0
    cQ.generation = xq + 1
end
local function fn34(bS)
    for i, v in ipairs(ui) do
        if v.id == bS then
            return i
        end
    end
    return 0
end
local function fn65(b1)
    local Config = uO.Config
    local wX = not Config or not b1
    local wX_4
    if wX then
        return 0
    end
    local wW_1 = tW(Config.GetBloodline) and Config.GetBloodline(b1)
    local wX_1 = wW_1 or nil
    if not wX_1 then
        return 0
    elseif tW(Config.BloodlineBandRank) then
        local wX_2 = tonumber(Config.BloodlineBandRank(wX_1))
        if wX_2 then
            return wX_2
        elseif tW(Config.BloodlineBand) then
            local wX_3 = Config.BloodlineBand(wX_1)
            if type(wX_4) == "table" then
                return uv(wX_3.id)
            end
            return 0
        else
            return 0
        end
    elseif tW(Config.BloodlineBand) then
        wX_4 = Config.BloodlineBand(wX_1)
        if type(wX_4) == "table" then
            return uv(wX_4.id)
        end
        return 0
    else
        return 0
    end
end
local function fn93()
    local stage = ug.stage
    if stage and stage ~= t7 then
        local yS_1 = tJ(tP, stage)
        if yS_1 then
            return tU[yS_1]
        end
        local yR_1 = uC(5)
        local yS_2 = math.clamp(uq(yR_1) + 1, 1, #tU)
        return tU[yS_2]
    end
    local yR_2 = uC(5)
    local yS_3 = math.clamp(uq(yR_2) + 1, 1, #tU)
    return tU[yS_3]
end
local function fn113(h8)
    if not h8 then
        uh(tR)
        uP.BloodlineStatus = "Idle"
        return
    end
    uP.BloodlineStatus = "Starting"
    uK(tR, function()
        local AU = uC(0.5)
        if not AU then
            uP.BloodlineStatus = "No state"
            return
        end
        local pendingBloodline = AU.pendingBloodline
        if pendingBloodline and pendingBloodline ~= false then
            local AW_1 = uk(pendingBloodline)
            if AW_1 >= tR.keepRank then
                tX(ua.ResolveBloodline, true, us(AU.bloodlineBag))
                uP.BloodlineStatus = "Stored " .. tostring(pendingBloodline)
            else
                tX(ua.ResolveBloodline, false)
                uP.BloodlineStatus = "Released " .. tostring(pendingBloodline)
            end
            un()
            return
        end
        local AV_1 = tonumber(AU.bloodlineSpins) or 0
        local AV_2 = AV_1 <= 0 and not uH(AU)
        if AV_2 then
            uP.BloodlineStatus = "No spins"
            return
        end
        tX(ua.SpinBloodline)
        un()
        uP.BloodlineStatus = "Spinning"
    end)
end
local function fn130(ae)
    for i, v in ipairs(uO.missing) do
        if v == ae then
            return
        end
    end
    table.insert(uO.missing, ae)
end
local function fn134(eT)
    ug.stage = eT
end
local function fn168(eL)
    local yE = eL and eL.exploreClears
    if type(yE) ~= "table" then
        return 0
    end
    local yE_1 = 0
    for i, v in ipairs(tU) do
        local yG = yE[v.id]
        if yG == nil then
            yG = yE[i]
        end
        if yG then
            yE_1 = i
        else
            break
        end
    end
    return yE_1
end
local function fn176(dJ)
    local x0 = dJ and true or false
    t9.autoClick = x0
    if not dJ then
        uh(um)
        uP.ClickStatus = "Idle"
        return
    end
    uP.ClickStatus = "Waiting for a fight"
    uK(um, function()
        if not t9.autoClick then
            return
        end
        local xY = not tT() or t9.beastFight
        local xY_1
        if xY then
            if t9.beastFight then
                xY_1 = "Explore beast"
            else
                xY_1 = "Waiting for a fight"
            end
            uP.ClickStatus = xY_1
            return
        end
        uP.ClickStatus = "Striking"
        uM(t4.Input, { kind = "tap" })
    end)
end
local function fn198()
    gethui = uo
end
local function fn237(fR)
    if not fR then
        uh(ug)
        uP.ExploreStatus = "Idle"
        return
    end
    uP.ExploreStatus = "Starting"
    uK(ug, function()
        local zd = tX(t_.GetState)
        if type(zd) ~= "table" then
            uP.ExploreStatus = "No dungeon state"
            return
        end
        local ze = tonumber(zd.tries) or 0
        if ze <= 0 then
            local format = string.format
            local zh = tonumber(zd.nextIn) or 0
            uP.ExploreStatus = format("Out of tries (%ds)", math.max(math.floor(zh), 0))
            return
        end
        local zd_1 = tL()
        if not zd_1 then
            uP.ExploreStatus = "No stage"
            return
        end
        ul(zd_1)
    end)
end
local function fn368(fW)
    local zo = tonumber(fW) or 2.2
    uc.interval = math.clamp(zo, 1, 15)
end
local function fn377(d3)
    local x7 = d3 and true
    local yb = if x7 then 1 else 0
    local x9 = 1293 * yb + 814 * (1 - yb)
    local ya = 1352 * yb + 1981 * (1 - yb)
    if not ((x9 * 1097 + ya * 3123 + x9 * ya) % 16777213 == 7388853) then
        x7 = false
    end
    t9.autoDodge = x7
    local x7_1 = d3 and "Watching" or "Idle"
    uP.DodgeStatus = x7_1
end
local function fn393(gi)
    local zE = tJ(uf, gi) or 3
    t6.keepRank = zE
end
local function fn421(gI)
    local zV = tonumber(gI) or 0
    tZ.minChance = math.clamp(zV, 0, 100)
end
local function fn453(dZ)
    local x3 = tonumber(dZ) or 11
    local x4 = math.clamp(x3, 1, 12)
    um.interval = math.max(1 / x4, t9.tapCooldown)
end
local function fn502()
    connection:Disconnect()
end
local function fn508(eV)
    local yP = tonumber(eV) or 0.25
    ug.chestDelay = math.clamp(yP, 0.05, 2)
end
local function fn514(hv)
    if not hv then
        uh(t1)
        uP.AscendStatus = "Idle"
        return
    end
    uP.AscendStatus = "Watching"
    uK(t1, function()
        local Aq = uC(2)
        if not Aq then
            uP.AscendStatus = "No state"
            return
        end
        if not Aq.canAscend then
            local format = string.format
            local As = tonumber(Aq.ascendRealm) or 0
            local At = tonumber(Aq.ascendStage) or 0
            uP.AscendStatus = format("Realm %d / Stage %d needed", As, At)
            return
        end
        local Ar_2 = tonumber(Aq.ascendGain) or 0
        if Ar_2 < t1.minMarks then
            uP.AscendStatus = string.format("Waiting (%d marks)", Ar_2)
            return
        end
        tX(ua.Ascend)
        un()
        uP.AscendStatus = string.format("Ascended for %d marks", Ar_2)
    end)
end
local function fn532(gg)
    local zC = tonumber(gg) or 1
    t6.slot = math.max(math.floor(zC), 1)
end
local function fn563(hM)
    local Az = tJ(t5, hM) or 5
    tR.keepRank = Az
end
local function fn595()
    local xu = t9.autoDodge
    local xz = if xu then 1 else 0
    local xx = 637 * xz + 3934 * (1 - xz)
    local xy = 181 * xz + 3877 * (1 - xz)
    if not ((xx * 1581 + xy * 535 + xx * xy) % 16777213 == 1219229) then
        xu = t9.beastFight
    end
    return xu and true or false
end
local function fn613(ej)
    uj.difficulty = ej
end
local function fn624(aG, aH, aI)
    local wn = tS and tS:FindFirstChild(aG)
    local wo = wn
    if wn then
        wn = wo:FindFirstChild(aH)
    end
    local wo_1 = wn
    if wn then
        wn = wo_1:FindFirstChild(aI)
    end
    local wo_2 = wn
    if not wo_2 then
        uJ(aG .. "." .. aI)
    end
    return wo_2
end
local function fn672(g7)
    if not g7 then
        uh(tV)
        uP.RefineStatus = "Idle"
        return
    end
    uP.RefineStatus = "Watching"
    uK(tV, function()
        local Aa = uC(0.5)
        if not Aa then
            uP.RefineStatus = "No state"
            return
        end
        if not uy(Aa.qi, Aa.fleshCost) then
            uP.RefineStatus = "Need " .. t3(Aa.fleshCost) .. " Qi"
            return
        end
        local Ac = tV.mode == "Max" and ua.RefineFleshMax or ua.RefineFlesh
        tX(Ac)
        un()
        local format = string.format
        local Ac_1 = Aa.fleshTitle
        local Ai = if Ac_1 then 1 else 0
        local Ag = 2213 * Ai + 2783 * (1 - Ai)
        local Ah = 2126 * Ai + 1814 * (1 - Ai)
        if not ((Ag * 2737 + Ah * 2527 + Ag * Ah) % 16777213 == 16134221) then
            Ac_1 = "Refining"
        end
        local Ad = tostring(Ac_1)
        local Ae = tonumber(Aa.fleshStage) or 0
        uP.RefineStatus = format("%s (stage %d)", Ad, Ae)
    end)
end
local function fn747(X)
    return type(X) == "function"
end
local function fn757()
    return not ue.Unloaded
end
local function fn770(ht)
    local Ao = tonumber(ht) or 0
    t1.minMarks = math.max(Ao, 0)
end
local function onOnClientEvent(dn)
    local xO = not tO() or type(dn) ~= "table"
    if xO then
        return
    end
    local kind = dn.kind
    if kind == "finish" then
        t9.active = false
        t9.telegraphId = nil
        t9.finish = dn
        if t9.beastFight then
            un()
            return
        end
        if dn.won then
            t9.wins = t9.wins + 1
            local rewards = t9.rewards
            local xQ = tonumber(dn.reward) or 0
            t9.rewards = rewards + xQ
            uP.BossStatus = string.format("Won (%d)", t9.wins)
        else
            t9.losses = t9.losses + 1
            uP.BossStatus = string.format("Lost (%d)", t9.losses)
        end
        un()
        return
    end
    t9.active = true
    t9.lastEventAt = os.clock()
    if kind == "telegraph" then
        t9.telegraphId = dn.id
        t9.telegraphAt = os.clock()
        local xP_2 = tonumber(dn.duration) or 1.2
        t9.telegraphDuration = xP_2
        local xP_3 = dn.style or "timed"
        t9.telegraphStyle = xP_3
        uL(dn.id, t9.telegraphStyle, t9.telegraphDuration)
    elseif kind == "resolve" then
        t9.telegraphId = nil
    elseif kind == "sync" then
        local xO_2 = tonumber(dn.bossHp)
        if xO_2 then
            uP.BossStatus = string.format("Fighting (%d hp)", math.max(math.floor(xO_2), 0))
        end
    end
end
local function fn880(hZ)
    local AI_1
    local AG = uO.Config and tonumber(uO.Config.BLOODLINE_BAG_SIZE)
    local AH = AG
    local AH_1
    local AO = if AH then 1 else 0
    local AM = 1139 * AO + 3239 * (1 - AO)
    local AN = 2840 * AO + 1223 * (1 - AO)
    if not ((AM * 2773 + AN * 4044 + AM * AN) % 16777213 == 1100954) then
        AH = 3
    end
    local AG_1 = AH
    AI_1, AH_1 = 1, math.huge
    local AR = 1
    while AR <= AG_1 do
        local AS = AR
        local AG_2 = hZ
        if AG_2 then
            AG_2 = hZ[AS]
        end
        local AJ = AG_2
        if AJ == nil or AJ == false then
            return AS
        end
        local AG_4 = uk(AJ)
        if AG_4 < AH_1 then
            AH_1 = AG_4
            AI_1 = AS
        end
        AR += 1
    end
    return AI_1
end
local function fn925(el)
    if not el then
        uh(uj)
        uP.BossStatus = "Idle"
        return
    end
    uP.BossStatus = "Starting"
    uK(uj, function()
        local yC = if tT() then 1 else 0
        if yC == 1 then
            return
        end
        local yu = uC(2)
        if not yu then
            uP.BossStatus = "No state"
            return
        end
        local yv = tonumber(yu.bossTries) or 0
        if yv <= 0 then
            local format = string.format
            local max = math.max
            local yy = (tonumber(yu.bossReadyIn))
            local yC_1 = if yy then 1 else 0
            local yA = 2914 * yC_1 + 3836 * (1 - yC_1)
            local yB = 1697 * yC_1 + 2129 * (1 - yC_1)
            if not ((yA * 2760 + yB * 1419 + yA * yB) % 16777213 == 15395741) then
                yy = 0
            end
            uP.BossStatus = format("Out of tries (%ds)", max(math.floor(yy), 0))
            return
        end
        local yv_2 = tonumber(yu.bossReadyIn) or 0
        if yv_2 > 0 then
            uP.BossStatus = string.format("Cooldown (%ds)", math.floor(yu.bossReadyIn))
            return
        end
        local yv_3 = tN(uj.difficulty, yu.battlePower)
        if not yv_3 then
            uP.BossStatus = "No difficulty"
            return
        end
        local yu_1 = tX(t4.Begin, yv_3.id)
        un()
        local yw_2 = type(yu_1) == "table" and yu_1.ok
        if yw_2 then
            t9.active = true
            t9.lastEventAt = os.clock()
            uP.BossStatus = "Fighting " .. tostring(yv_3.name)
        else
            uP.BossStatus = "Begin refused"
        end
    end)
end
local function fn939(U)
    local v_ = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if v_ then
        return cloneref(U)
    end
    return U
end
local function fn949(gK)
    if not gK then
        uh(tZ)
        uP.BreakthroughStatus = "Idle"
        return
    end
    uP.BreakthroughStatus = "Watching"
    uK(tZ, function()
        local zX = uC(0.5)
        if not zX then
            uP.BreakthroughStatus = "No state"
            return
        end
        local zY = (tonumber(zX.breakthroughChance))
        local z2 = if zY then 1 else 0
        local z0 = 263 * z2 + 575 * (1 - z2)
        local z1 = 1241 * z2 + 1368 * (1 - z2)
        if not ((z0 * 490 + z1 * 3276 + z0 * z1) % 16777213 == 4520769) then
            zY = 0
        end
        local zZ = zY * 100
        if zZ < tZ.minChance then
            uP.BreakthroughStatus = string.format("Chance %.1f%% too low", zZ)
            return
        end
        if not uy(zX.qi, zX.breakthroughCost) then
            uP.BreakthroughStatus = "Need " .. t3(zX.breakthroughCost) .. " Qi"
            return
        end
        local zZ_1 = tZ.mode == "Max" and ua.BreakthroughMax or ua.Breakthrough
        tX(zZ_1)
        un()
        local format = string.format
        local zZ_2 = tonumber(zX.stageIndex) or 0
        uP.BreakthroughStatus = format("Stage %d", zZ_2)
    end)
end
local function fn977(cu)
    local xf_1
    local BigNum = uO.BigNum
    local xe = type(cu) ~= "table" or not BigNum or not tW(BigNum.format)
    local xe_1
    if xe then
        return tostring(cu)
    end
    xe_1, xf_1 = pcall(BigNum.format, BigNum.from(cu))
    local xd_1 = xe_1 and type(xf_1) == "string"
    if xd_1 then
        return xf_1
    end
    return tostring(cu)
end
local function fn1058(a4)
    local wv = os.clock()
    if uF.value and wv - uF.at <= (a4 or 1) then
        return uF.value
    end
    local ww_1 = tX(ua.GetState)
    if type(ww_1) == "table" then
        uF.value = ww_1
        uF.at = wv
    end
    return uF.value
end
local function fn1062(gG)
    local zS = gG == "Single" and "Single" or "Max"
    tZ.mode = zS
end
local function fn1074()
    uF.at = 0
end
local function fn1080(bN, bO)
    for i, v in ipairs(bN) do
        if v == bO then
            return i
        end
    end
    return nil
end
local function fn1124()
    return CoreGui
end
local function fn1139(d6)
    local yd = (tonumber(d6))
    local yh = if yd then 1 else 0
    local yf = 1142 * yh + 753 * (1 - yh)
    local yg = 3784 * yh + 2717 * (1 - yh)
    if not ((yf * 945 + yg * 401 + yf * yg) % 16777213 == 6917902) then
        yd = 0.1
    end
    t9.dodgeLead = math.clamp(yd, 0, 0.3)
end
local function fn1146(gm)
    if not gm then
        uh(t6)
        uP.RollStatus = "Idle"
        return
    end
    uP.RollStatus = "Starting"
    uK(t6, function()
        local zG = uC(0.5)
        if not zG then
            uP.RollStatus = "No state"
            return
        end
        local clamp = math.clamp
        local slot = t6.slot
        local zK = tonumber(zG.slots) or 1
        local zL = clamp(slot, 1, math.max(zK, 1))
        if type(zG.pendingRoot) == "table" then
            local zH_1 = uE(zG.pendingRoot.tier)
            local zI_1 = zH_1 >= t6.keepRank
            tX(ua.ResolveRoot, zI_1)
            un()
            local zH_2 = zI_1 and "Kept " .. tostring(zG.pendingRoot.tier)
            local zI_2 = zH_2
            local zP = if zI_2 then 1 else 0
            local zN = 2708 * zP + 3629 * (1 - zP)
            local zO = 674 * zP + 3980 * (1 - zP)
            if not ((zN * 1238 + zO * 822 + zN * zO) % 16777213 == 5731724) then
                zI_2 = "Discarded " .. tostring(zG.pendingRoot.tier)
            end
            uP.RollStatus = zI_2
            return
        end
        local zH_3 = tonumber(zG.stones) or 0
        if zH_3 < tK(zL) then
            uP.RollStatus = "Out of Spirit Stones"
            return
        end
        tX(ua.RollRoot, zL)
        un()
        uP.RollStatus = "Divining slot " .. tostring(zL)
    end)
end
local function fn1157()
    local xs = t9.active and os.clock() - t9.lastEventAt < 6
    return xs
end
local function fn1160(g5)
    local z8 = g5 == "Single" and "Single" or "Max"
    tV.mode = z8
end
local function fn1172(hR)
    local Config = uO.Config
    local AC = Config and tonumber(Config.BLOODLINE_FREE_SECONDS)
    local AB_1 = AC or 0
    if AB_1 <= 0 then
        return false
    end
    local AB_2 = tonumber(hR.playTime) or 0
    local AB_3 = tonumber(hR.bloodSpinAt) or 0
    return AB_2 - AB_3 >= AB_1
end
local function fn1179(fx)
    local y4 = tX(t_.Enter, fx.id)
    local y4_4
    local y5 = type(y4) ~= "table" or not y4.ok
    if y5 then
        uP.ExploreStatus = "Cannot enter " .. tostring(fx.name)
        return false
    end
    local y5_1 = 0
    local y6 = type(y4.chests) == "table" and y4.chests
    local y6_1
    local y7 = y6 or {}
    for k in pairs(y7) do
        local y4_3 = not tO() or ug.stopped
        if y4_3 then
            break
        end
        y6_1, y4_4 = tostring(k):match("^(-?%d+),(-?%d+)$")
        if y6_1 then
            local y7_1 = tX(t_.OpenChest, tonumber(y6_1), tonumber(y4_4))
            local y4_5 = type(y7_1) == "table" and y7_1.ok
            if y4_5 then
                y5_1 += 1
                uP.ExploreStatus = string.format("%s: %d chests", fx.name, y5_1)
            end
            local wait = task.wait
            local y6_2 = ug.chestDelay or 0.25
            wait(y6_2)
        end
    end
    local y4_7 = not tO() or ug.stopped
    if y4_7 then
        tX(t_.Leave)
        un()
        return false
    end
    local y4_8 = ur(fx)
    if not y4_8 then
        tX(t_.Leave)
        un()
        local y4_9 = uP.ExploreStatus and not string.find(uP.ExploreStatus, "beast", 1, true)
        if y4_9 then
            uP.ExploreStatus = string.format("%s: beast won", fx.name)
        end
        return false
    end
    tX(t_.Leave)
    un()
    uP.ExploreStatus = string.format("Cleared %s (%d chests)", fx.name, y5_1)
    return true
end
local function fn1212(bX)
    for i, v in ipairs(ub) do
        if v.id == bX then
            return i
        end
    end
    return 0
end
local function fn1214(d9, ea)
    if d9 ~= ud then
        local yi_1 = tJ(tY, d9)
        if yi_1 then
            return t0[yi_1]
        end
        local yi_2 = t0[1]
        for i, v in ipairs(t0) do
            local yj_1 = tonumber(ea) or 0
            if yj_1 >= v.power then
                yi_2 = v
            end
        end
        return yi_2
    end
    local yi_3 = t0[1]
    for i, v in ipairs(t0) do
        local yj_2 = tonumber(ea) or 0
        if yj_2 >= v.power then
            yi_3 = v
        end
    end
    return yi_3
end
local function fn1228(fY)
    if not fY then
        uh(uc)
        uP.MeditateStatus = "Idle"
        return
    end
    uP.MeditateStatus = "Starting"
    uK(uc, function()
        local zq = uC(1)
        if not zq then
            uP.MeditateStatus = "No state"
            return
        end
        local zr = tonumber(zq.meditateLeft) or 0
        if zr <= 0 then
            local format = string.format
            local zu = tonumber(zq.meditateResetIn) or 0
            uP.MeditateStatus = format("Quota spent (%ds)", math.max(math.floor(zu), 0))
            return
        end
        local zq_1 = uO.Config and tonumber(uO.Config.MEDITATE_TOTAL_BEATS)
        local zr_2 = zq_1 or 5
        tX(ua.Meditate, zr_2, 0)
        un()
        uP.MeditateStatus = "Meditating"
    end)
end
local function fn1232(a1, ...)
    if not a1 then
        return false
    end
    return (pcall(a1.FireServer, a1, ...))
end
local function fn1255()
    uh(um)
    uh(uj)
    uh(ug)
    uh(uc)
    uh(t6)
    uh(t1)
    uh(tR)
    uh(tZ)
    uh(tV)
    t9.autoClick = false
    t9.autoDodge = false
    if t9.active then
        tX(t4.Flee)
        t9.active = false
    end
end
tJ = nil
tK = nil
tL = nil
tN = nil
tO = nil
tP = nil
tR = nil
tS = nil
tT = nil
tU = nil
tV = nil
tW = nil
tX = nil
tY = nil
tZ = nil
t_ = nil
t0 = nil
t1 = nil
t3 = nil
t4 = nil
t5 = nil
t6 = nil
t7 = nil
t9 = nil
ua = nil
ub = nil
uc = nil
ud = nil
ue = nil
uf = nil
ug = nil
uh = nil
ui = nil
uj = nil
uk = nil
ul = nil
um = nil
un = nil
uo = nil
connection = nil
uq = nil
ur = nil
us = nil
local Players, tM, tQ, t2, t8, LocalPlayer, Workspace
uv = nil
uy = nil
uC = nil
CoreGui = nil
uE = nil
uF = nil
uH = nil
uJ = nil
uK = nil
uL = nil
uM = nil
uO = nil
uP = nil
local uw, TeleportService, VirtualUser, Lighting, GuiService, HttpService, UserInputService, RunService, uQ, uT, uU, uX, uY, uZ, u1
local uW_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, HttpService, CoreGui, GuiService, Lighting, VirtualUser, TeleportService, Workspace, LocalPlayer, uo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local uS = game:GetService("ReplicatedStorage")
local uS_23
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
HttpService = game:GetService("HttpService")
CoreGui = game:GetService("CoreGui")
GuiService = game:GetService("GuiService")
Lighting = game:GetService("Lighting")
VirtualUser = game:GetService("VirtualUser")
TeleportService = game:GetService("TeleportService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local uR = "OuroborosEvermortal"
uo = fn1124
if getgenv then
    getgenv().gethui = uo
end
ue, uQ, uP, uO, uY, uW_1, uX, uU, uw, uT, tW, tO, uJ, uZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local uV = 2
repeat
    local u_ = (uV * 1 + 4) % 13 + 1
    if u_ <= 7 then
        if u_ <= 4 then
            if u_ <= 2 then
                if u_ <= 1 then
                    if (uU and not uT and (uT and not uT) or (uU or uX) and (not uT and not uU) or (uU or not uT) and (not uX and not uT) and (uT and uX and (uX or not uU))) and (not uU and uU or uT and uX or not uT and uX and (not uX or not uU) or (uT or not uX or uX and uU) and (not uT and not uX and (not uT and uX))) or not ((uU and not uT and (uT and not uT) or (uU or uX) and (not uT and not uU) or (uU or not uT) and (not uX and not uT) and (uT and uX and (uX or not uU))) and (not uU and uU or uT and uX or not uT and uX and (not uX or not uU) or (uT or not uX or uX and uU) and (not uT and not uX and (not uT and uX)))) then
                        uP.BossStatus = "Idle"
                        uP.ClickStatus = "Idle"
                        uP.DodgeStatus = "Idle"
                        uP.ExploreStatus = "Idle"
                        uP.MeditateStatus = "Idle"
                        uP.RollStatus = "Idle"
                        uP.AscendStatus = "Idle"
                        uP.BloodlineStatus = "Idle"
                        uP.BreakthroughStatus = "Idle"
                        uP.RefineStatus = "Idle"
                        uO = { missing = {} }
                    else
                        uO.BossStatus = "Idle"
                        uO.ClickStatus = "Idle"
                        uO.DodgeStatus = "Idle"
                        uO.ExploreStatus = "Idle"
                        uO.MeditateStatus = "Idle"
                        uO.RollStatus = "Idle"
                        uO.AscendStatus = "Idle"
                        uO.BloodlineStatus = "Idle"
                        uO.BreakthroughStatus = "Idle"
                        uO.RefineStatus = "Idle"
                        uP = { missing = {} }
                    end
                    uV = (uV + 66) % 104
                else
                    if uV * 51114129 + 1 + 4 <= uV * 51114129 + 1 + 4 + 1 then
                        uJ = fn130
                    else
                        uw = fn130
                    end
                    uV = (uV + 79) % 104
                end
            elseif u_ <= 3 then
                local Ge = bit32.rrotate(bit32.bxor(bit32.lrotate(uV, 5), string.byte(tostring(uO))), 30)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ge, 4260074963), 785055905), (bit32.bxor(bit32.band(Ge, 34892332), 993149305))), 785055905), 993149305) == Ge then
                    uZ = function(aj, ak, al)
                        local wb_2
                        local wa_2
                        if not aj then
                            return nil
                        end
                        wa_2, wb_2 = pcall(function()
                            local v8 = al or 10
                            return aj:WaitForChild(ak, v8)
                        end)
                        if wa_2 then
                            return wb_2
                        end
                        return nil
                    end
                else
                    tW = function(aj, ak, al)
                        local wb_1
                        local wa_1
                        if not aj then
                            return nil
                        end
                        wa_1, wb_1 = pcall(function()
                            local v8 = al or 10
                            return aj:WaitForChild(ak, v8)
                        end)
                        if wa_1 then
                            return wb_1
                        end
                        return nil
                    end
                end
                uV = (uV + 1) % 104
            else
                if (uV * 2 + 5) * 16 % 3 == ((uV * 2 + 5) * 16 + 6) % 3 then
                    uY = uZ(uQ, "Cultivation", 20)
                else
                    uQ = uY(uZ, "Cultivation", 20)
                end
                uV = (uV + 27) % 104
            end
        elseif u_ <= 6 then
            if u_ <= 5 then
                local Gu = bit32.rrotate(bit32.bxor(bit32.lrotate(uV, 22), string.byte(tostring(uW_1))), 11)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Gu, 1921732835), 1806078418), (bit32.bxor(bit32.band(Gu, 2373234460), 3138700264))), 1806078418), 3138700264) == Gu then
                    uW_1 = uZ(uQ, "Packages", 20)
                else
                    uQ = uW_1(uZ, "Packages", 20)
                end
                uV = (uV + 40) % 104
            else
                local u0_1 = (vector.create((uV * 5 + 7) % 11 + 1, (uV * 9 + 7) % 13 + 1, (uV * 12 + 3) % 17 + 1))
                u1 = (vector.create((uV * 1 + 3) % 11 + 1, (uV * 6 + 9) % 13 + 1, (uV * 3 + 6) % 17 + 1))
                local u2 = (vector.create((uV * 4 + 8) % 11 + 1, (uV * 4 + 13) % 13 + 1, (uV * 11 + 10) % 17 + 1))
                local u3 = (vector.create((uV * 1 + 6) % 5 + 1, (uV * 4 + 6) % 7 + 1, (uV * 5 + 4) % 9 + 1))
                if vector.dot(vector.cross(u0_1, (vector.cross(u1, u2))), u3) == vector.dot(u1 * vector.dot(u0_1, u2) - u2 * vector.dot(u0_1, u1), u3) + 1 then
                    uW_1 = uX
                else
                    uX = uW_1
                end
                uV = (uV + 40) % 104
            end
        else
            if (uV * 3 + 6) * 5 % 4 == ((uV * 3 + 6) * 5 + 8) % 4 then
                pcall(fn198)
                uU = function(t)
                    local vO
                    local vQ
                    local vP
                    vO = nil
                    vP = nil
                    vQ = nil
                    local vR = t ~= ""
                    local vS = type(t) == "string" and vR
                    assert(vS, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    vO = getgenv()
                    assert(type(vO) == "table", "getgenv did not return a table")
                    local vR_2 = vO[t]
                    if vR_2 ~= nil then
                        local vS_2 = type(vR_2) == "table" and type(vR_2.Unload) == "function"
                        assert(vS_2, "Namespace is occupied")
                        vR_2.Unload()
                        assert(vO[t] == nil, "Previous instance did not release its namespace")
                    end
                    vP = {}
                    vQ = { State = {}, Unloaded = false }
                    vQ.Track = function(z)
                        assert(type(z) == "function", "Cleanup must be callable")
                        if vQ.Unloaded then
                            z()
                        else
                            table.insert(vP, z)
                        end
                        return z
                    end
                    vQ.Unload = function()
                        local vH_2
                        local vG_2
                        if vQ.Unloaded then
                            return
                        end
                        vQ.Unloaded = true
                        local vE = {}
                        local vL = #vP
                        local vK = -1
                        while false and vL <= 1 or true and vL >= 1 do
                            local vM = vL
                            local vF_2 = table.remove(vP, vM)
                            vG_2, vH_2 = pcall(vF_2)
                            if not vG_2 then
                                table.insert(vE, tostring(vH_2))
                            end
                            vL += vK
                        end
                        table.clear(vQ.State)
                        if #vE > 0 then
                            error("Cleanup incomplete: " .. table.concat(vE, "; "), 0)
                        end
                        if vO[t] == vQ then
                            vO[t] = nil
                        end
                    end
                    vO[t] = vQ
                    return vQ
                end
            else
                pcall(fn198)
                tW = function(t)
                    local vO
                    local vQ
                    local vP
                    vO = nil
                    vP = nil
                    vQ = nil
                    local vR = t ~= ""
                    local vS = type(t) == "string" and vR
                    assert(vS, "A namespace is required")
                    assert(type(getgenv) == "function", "getgenv is unavailable")
                    vO = getgenv()
                    assert(type(vO) == "table", "getgenv did not return a table")
                    local vR_1 = vO[t]
                    if vR_1 ~= nil then
                        local vS_1 = type(vR_1) == "table" and type(vR_1.Unload) == "function"
                        assert(vS_1, "Namespace is occupied")
                        vR_1.Unload()
                        assert(vO[t] == nil, "Previous instance did not release its namespace")
                    end
                    vP = {}
                    vQ = { State = {}, Unloaded = false }
                    vQ.Track = function(z)
                        assert(type(z) == "function", "Cleanup must be callable")
                        if vQ.Unloaded then
                            z()
                        else
                            table.insert(vP, z)
                        end
                        return z
                    end
                    vQ.Unload = function()
                        local vH_1
                        local vG_1
                        if vQ.Unloaded then
                            return
                        end
                        vQ.Unloaded = true
                        local vE = {}
                        local vL = #vP
                        local vK = -1
                        while false and vL <= 1 or true and vL >= 1 do
                            local vM = vL
                            local vF_1 = table.remove(vP, vM)
                            vG_1, vH_1 = pcall(vF_1)
                            if not vG_1 then
                                table.insert(vE, tostring(vH_1))
                            end
                            vL += vK
                        end
                        table.clear(vQ.State)
                        if #vE > 0 then
                            error("Cleanup incomplete: " .. table.concat(vE, "; "), 0)
                        end
                        if vO[t] == vQ then
                            vO[t] = nil
                        end
                    end
                    vO[t] = vQ
                    return vQ
                end
            end
            uV = (uV + 1) % 104
        end
    elseif u_ <= 10 then
        if u_ <= 9 then
            if u_ <= 8 then
                local u0_2 = {
                    "gwjixdssoh",
                    "ijicllsup",
                    "ovsitzlq",
                    "xdynisgkp",
                    "gyi",
                    "pogqoyni",
                    "wnrrb",
                    "auh",
                    "etjesijjp"
                }
                local H_ = uV
                u1 = u0_2[H_ % 9 + 1]
                if u1:len() >= u1:gsub("(.)", "%1%1", H_ % 3 % 2 + 1):len() then
                    uT = function(M, N)
                        local vV = type(M) == "table" and type(M.Track) == "function"
                        assert(vV, "FeatureAPI required")
                        local vV_2 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(vV_2, "UI library required")
                        assert(type(N.Unload) == "function", "UI unload required")
                        M.Track(function()
                            if not N.Unloaded then
                                N:Unload()
                            end
                        end)
                        N:OnUnload(function()
                            M.Unload()
                        end)
                    end
                else
                    uw = function(M, N)
                        local vV = type(M) == "table" and type(M.Track) == "function"
                        assert(vV, "FeatureAPI required")
                        local vV_1 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(vV_1, "UI library required")
                        assert(type(N.Unload) == "function", "UI unload required")
                        M.Track(function()
                            if not N.Unloaded then
                                N:Unload()
                            end
                        end)
                        N:OnUnload(function()
                            M.Unload()
                        end)
                    end
                end
                uV = (uV + 92) % 104
            else
                if uV * 90546243 + 7 + 1 <= uV * 90546243 + 7 + 1 + 4 then
                    ue = uU(uR)
                else
                    uR = ue(uU)
                end
                uV = (uV + 40) % 104
            end
        else
            local u0_3 = {
                "nujqs",
                "kkakrqinriw",
                "qqcbjqhsugt",
                "zpgf",
                "hbxzdih",
                "wwsb",
                "iglm",
                "mzfbcyisyv",
                "yusvjgygh"
            }
            local G8 = uV
            u1 = u0_3[G8 % 9 + 1]
            if u1:len() >= u1:gsub("(.)", "%1%1", G8 % 3 % 2 + 1):len() then
                uw = fn939
            else
                uT = fn939
            end
            uV = (uV + 53) % 104
        end
    elseif u_ <= 12 then
        if u_ <= 11 then
            u_ = {
                "gvtxqau",
                "znvqjqip",
                "mrytep",
                "xbwgka",
                "wwchqnwebyh",
                "kqnfjfxmcl",
                "nioobmt",
                "rvjoyrfbl",
                "ibsyqgmtln",
                "ivcyezkwn",
                "qyumpzzpli"
            }
            if u_[(uV * 77 + 98) % 11 + 1] <= u_[(uV * 77 + 98) % 11 + 1] then
                tW = fn747
                tO = fn757
            else
                tO = fn747
                tW = fn757
            end
            uV = (uV + 27) % 104
        else
            if uV * 80177897 + 9 + 1 <= uV * 80177897 + 9 + 1 + 2 then
                uQ = uT(uS)
            else
                uS = uQ(uT)
            end
            uV = (uV + 79) % 104
        end
    else
        if uV * 35908157 + 5 + 1 >= uV * 35908157 + 5 + 1 + 4 then
            ue = uP.State
        else
            uP = ue.State
        end
        uV = (uV + 40) % 104
    end
until (uV * 41 + 4) % 104 == 47
if uX then
    uQ = 3
    repeat
        if uQ * 69189235 + 8 + 1 >= uQ * 69189235 + 8 + 1 + 3 then
            uW_1 = uX(uZ, "Knit", 20)
        else
            uX = uZ(uW_1, "Knit", 20)
        end
        uQ = (uQ + 0) % 8
    until (uQ * 7 + 0) % 8 == 5
end
uR = uX
uQ = uR
if uQ then
    local uS_1 = 2
    repeat
        if (uS_1 * 2 + 5) * 4 % 3 == ((uS_1 * 2 + 5) * 4 + 7) % 3 then
            uR = uQ(uZ, "Services", 20)
        else
            uQ = uZ(uR, "Services", 20)
        end
        uS_1 = (uS_1 + 1) % 8
    until (uS_1 * 1 + 6) % 8 == 1
end
tS = uQ
uQ = function(ay)
    local wh_1
    local wg_1
    if not ay then
        return nil
    end
    wg_1, wh_1 = pcall(require, ay)
    local wi = wg_1 and type(wh_1) == "table"
    if wi then
        return wh_1
    end
    return nil
end
uR = uY
if uR then
    local uS_2 = 2
    repeat
        if (uS_2 * 2 + 5) * 10 % 3 == ((uS_2 * 2 + 5) * 10 + 4) % 3 then
            uY = uR(uZ, "Config", 20)
        else
            uR = uZ(uY, "Config", 20)
        end
        uS_2 = (uS_2 + 1) % 8
    until (uS_2 * 7 + 2) % 8 == 7
end
uO.Config = uQ(uR)
uR = uY
if uR then
    local uS_3 = 0
    repeat
        uT = (vector.create((uS_3 * 5 + 7) % 11 + 1, (uS_3 * 11 + 8) % 13 + 1, (uS_3 * 1 + 10) % 17 + 1))
        uU = (vector.create((uS_3 * 1 + 3) % 11 + 1, (uS_3 * 9 + 7) % 13 + 1, (uS_3 * 13 + 6) % 17 + 1))
        uV = (vector.create((uS_3 * 4 + 6) % 11 + 1, (uS_3 * 8 + 12) % 13 + 1, (uS_3 * 2 + 12) % 17 + 1))
        if vector.dot(vector.cross(uT, uU), uV) == vector.dot(vector.cross(uU, uV), uT) + 5 then
            uY = uR(uZ, "Formulas", 20)
        else
            uR = uZ(uY, "Formulas", 20)
        end
        uS_3 = (uS_3 + 6) % 8
    until (uS_3 * 7 + 4) % 8 == 6
end
uO.Formulas = uQ(uR)
uR = uY
if uR then
    local uS_4 = 1
    repeat
        local Gk = bit32.rrotate(bit32.bxor(bit32.lrotate(uS_4, 2), string.byte(tostring(uS_4))), 5)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Gk, 2213429520), 26), 1108326660) == bit32.lrotate(Gk, 26) then
            uR = uZ(uY, "BigNum", 20)
        else
            uZ = uY(uR, "BigNum", 20)
        end
        uS_4 = (uS_4 + 7) % 8
    until (uS_4 * 7 + 1) % 8 == 1
end
uO.BigNum = uQ(uR)
if not uO.Config then
    uJ("config")
end
ua, t4, t_, uF, ui, uf, ub, t5, t0, tY, tU, tP, uQ, tX, uM, uC, un = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uR = 25
repeat
    local uS_5 = (uR * 1 + 9) % 13 + 1
    if uS_5 <= 7 then
        if uS_5 <= 4 then
            if uS_5 <= 2 then
                if uS_5 <= 1 then
                    if uR * 34464991 + 1 + 5 >= uR * 34464991 + 1 + 5 + 6 then
                        ui = fn1074
                        un = {}
                    else
                        un = fn1074
                        ui = {}
                    end
                    uR = (uR + 92) % 104
                else
                    local Io = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 8), string.byte(tostring(uf))), 12)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Io, 4159022888), 20), 1922006618) == bit32.lrotate(Io, 20) then
                        uf = {}
                    else
                        ui = {}
                    end
                    uR = (uR + 40) % 104
                end
            elseif uS_5 <= 3 then
                if (not t5 or t5 or t5 and uQ) and ((not t5 or t5) and (tP and tP)) and (uQ and t5 and (not uQ and uQ) or (tP or t5) and (not uQ and t5)) and not ((not t5 or t5 or t5 and uQ) and ((not t5 or t5) and (tP and tP)) and (uQ and t5 and (not uQ and uQ) or (tP or t5) and (not uQ and t5))) then
                    tY = {}
                else
                    ub = {}
                end
                uR = (uR + 66) % 104
            else
                local H8 = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 16), string.byte(tostring(uf))), 17)
                if bit32.bxor(bit32.lrotate(bit32.bxor(H8, 665176377), 8), 2781428007) ~= bit32.lrotate(H8, 8) then
                    tP = {}
                else
                    t5 = {}
                end
                uR = (uR + 92) % 104
            end
        elseif uS_5 <= 6 then
            if uS_5 <= 5 then
                if (uR * 1 + 6) * 5 % 4 == ((uR * 1 + 6) * 5 + 9) % 4 then
                    uM = {}
                else
                    t0 = {}
                end
                uR = (uR + 40) % 104
            else
                uT = {
                    "quhryb",
                    "ymtfulw",
                    "fkka",
                    "wut",
                    "zrvyipoqm",
                    "tycfveuvi",
                    "sbzeu",
                    "edhzz",
                    "gliidyl",
                    "rvj",
                    "mgdnpbn"
                }
                local Gj = uR
                uU = uT[Gj % 11 + 1]
                if uU:len() <= uU:gsub("(.)", "%1%1", Gj % 3 % 2 + 1):len() then
                    tY = {}
                else
                    tU = {}
                end
                uR = (uR + 14) % 104
            end
        else
            if uR * 65628753 + 12 + 2 <= uR * 65628753 + 12 + 2 + 1 then
                tU = {}
            else
                uM = {}
            end
            uR = (uR + 92) % 104
        end
    elseif uS_5 <= 10 then
        if uS_5 <= 9 then
            if uS_5 <= 8 then
                local He = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 7), string.byte(tostring(t_))), 7)
                if bit32.bxor(bit32.lrotate(bit32.bxor(He, 2403858985), 8), 1207576975) ~= bit32.lrotate(He, 8) then
                    uF = {}
                else
                    tP = {}
                end
                uR = (uR + 40) % 104
            else
                local Ik = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 17), string.byte(tostring(uM))), 2)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Ik, 3090691796), 6), 235779374) ~= bit32.lrotate(Ik, 6) then
                    ub = fn624
                else
                    uQ = fn624
                end
                uR = (uR + 14) % 104
            end
        else
            local Go = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 7), string.byte(tostring(uM))), 13)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Go, 3795204221), 26), 4152940769) == bit32.lrotate(Go, 26) then
                ua = {
                    GetState = uQ("CultivationService", "RF", "GetState"),
                    Meditate = uQ("CultivationService", "RF", "Meditate"),
                    Ascend = uQ("CultivationService", "RF", "Ascend"),
                    RollRoot = uQ("CultivationService", "RF", "RollRoot"),
                    ResolveRoot = uQ("CultivationService", "RF", "ResolveRoot"),
                    SpinBloodline = uQ("CultivationService", "RF", "SpinBloodline"),
                    ResolveBloodline = uQ("CultivationService", "RF", "ResolveBloodline"),
                    Breakthrough = uQ("CultivationService", "RF", "Breakthrough"),
                    BreakthroughMax = uQ("CultivationService", "RF", "BreakthroughMax"),
                    RefineFlesh = uQ("CultivationService", "RF", "RefineFlesh"),
                    RefineFleshMax = uQ("CultivationService", "RF", "RefineFleshMax")
                }
            else
                uQ = {
                    Meditate = ua("CultivationService", "RF", "Meditate"),
                    RollRoot = ua("CultivationService", "RF", "RollRoot"),
                    ResolveBloodline = ua("CultivationService", "RF", "ResolveBloodline"),
                    BreakthroughMax = ua("CultivationService", "RF", "BreakthroughMax"),
                    SpinBloodline = ua("CultivationService", "RF", "SpinBloodline"),
                    RefineFleshMax = ua("CultivationService", "RF", "RefineFleshMax"),
                    Breakthrough = ua("CultivationService", "RF", "Breakthrough"),
                    Ascend = ua("CultivationService", "RF", "Ascend"),
                    RefineFlesh = ua("CultivationService", "RF", "RefineFlesh"),
                    GetState = ua("CultivationService", "RF", "GetState"),
                    ResolveRoot = ua("CultivationService", "RF", "ResolveRoot")
                }
            end
            uR = (uR + 40) % 104
        end
    elseif uS_5 <= 12 then
        if uS_5 <= 11 then
            local uS_6 = (vector.create((uR * 7 + 5) % 11 + 1, (uR * 6 + 13) % 13 + 1, (uR * 8 + 1) % 17 + 1))
            local Im = vector.floor(uS_6) + vector.ceil(uS_6 * -1)
            if vector.dot(Im, Im) == 4 then
                uQ = {
                    Input = t4("BossService", "RE", "Input"),
                    Begin = t4("BossService", "RF", "Begin"),
                    Flee = t4("BossService", "RF", "Flee"),
                    Event = t4("BossService", "RE", "Event")
                }
            else
                t4 = {
                    Begin = uQ("BossService", "RF", "Begin"),
                    Flee = uQ("BossService", "RF", "Flee"),
                    Input = uQ("BossService", "RE", "Input"),
                    Event = uQ("BossService", "RE", "Event")
                }
            end
            uR = (uR + 79) % 104
        else
            local uS_7 = (vector.create((uR * 7 + 2) % 11 + 1, (uR * 11 + 10) % 13 + 1, (uR * 12 + 7) % 17 + 1))
            uT = (vector.create((uR * 4 + 4) % 11 + 1, (uR * 8 + 3) % 13 + 1, (uR * 2 + 16) % 17 + 1))
            uU = (vector.create((uR * 3 + 8) % 11 + 1, (uR * 9 + 3) % 13 + 1, (uR * 6 + 15) % 17 + 1))
            uV = (vector.create((uR * 1 + 8) % 11 + 1, (uR * 2 + 3) % 13 + 1, (uR * 4 + 6) % 17 + 1))
            if vector.dot(vector.cross(uS_7, uT), (vector.cross(uU, uV))) == vector.dot(uS_7, uU) * vector.dot(uT, uV) - vector.dot(uS_7, uV) * vector.dot(uT, uU) + 2 then
                uQ = {
                    OpenChest = t_("DungeonService", "RF", "OpenChest"),
                    Leave = t_("DungeonService", "RF", "Leave"),
                    Enter = t_("DungeonService", "RF", "Enter"),
                    GetState = t_("DungeonService", "RF", "GetState")
                }
            else
                t_ = {
                    Enter = uQ("DungeonService", "RF", "Enter"),
                    OpenChest = uQ("DungeonService", "RF", "OpenChest"),
                    Leave = uQ("DungeonService", "RF", "Leave"),
                    GetState = uQ("DungeonService", "RF", "GetState")
                }
            end
            uR = (uR + 14) % 104
        end
    else
        local uS_8 = (vector.create((uR * 3 + 2) % 11 + 1, (uR * 5 + 2) % 13 + 1, (uR * 12 + 3) % 17 + 1))
        uT = (vector.create((uR * 1 + 3) % 11 + 1, (uR * 7 + 11) % 13 + 1, (uR * 12 + 3) % 17 + 1))
        local H0 = vector.cross(uS_8, uT)
        local H1 = vector.dot(uS_8, uT)
        if vector.dot(H0, H0) + H1 * H1 == vector.dot(uS_8, uS_8) * vector.dot(uT, uT) + 5 then
            uM = function(aV, ...)
                local wq
                wq = nil
                local ws_2
                local wr_2
                if not aV then
                    return nil
                end
                wq = table.pack(...)
                wr_2, ws_2 = pcall(function()
                    return aV:InvokeServer(table.unpack(wq, 1, wq.n))
                end)
                if not wr_2 then
                    return nil
                end
                return ws_2
            end
            uF = fn1232
            uC = { value = nil, at = 0 }
            tX = fn1058
        else
            tX = function(aV, ...)
                local wq
                wq = nil
                local ws_1
                local wr_1
                if not aV then
                    return nil
                end
                wq = table.pack(...)
                wr_1, ws_1 = pcall(function()
                    return aV:InvokeServer(table.unpack(wq, 1, wq.n))
                end)
                if not wr_1 then
                    return nil
                end
                return ws_1
            end
            uM = fn1232
            uF = { value = nil, at = 0 }
            uC = fn1058
        end
        uR = (uR + 92) % 104
    end
until (uR * 25 + 22) % 104 == 10
uQ = uO.Config
if uQ then
    uR = {}
    local uS_9 = uQ.ROOT_TIERS or uR
    for i, v in ipairs(uS_9) do
        uR = v.id
        local uS_10 = v.name or v.id
        ui[i] = { id = uR, name = uS_10 }
        uR = v.name or tostring(v.id)
        uf[i] = uR
    end
    uR = {}
    local uS_11 = uQ.BLOODLINE_BANDS or uR
    for i, v in ipairs(uS_11) do
        uR = v.id
        local uS_12 = v.name or v.id
        ub[i] = { id = uR, name = uS_12 }
        uR = v.name
        local vj = if uR then 1 else 0
        local vh = 768 * vj + 3737 * (1 - vj)
        local vi = 3610 * vj + 3300 * (1 - vj)
        if not ((vh * 3178 + vi * 1698 + vh * vi) % 16777213 == 11342964) then
            uR = tostring(v.id)
        end
        t5[i] = uR
    end
    uR = uQ.BOSS
    local uS_13 = uR and uR.DIFFICULTIES
    uR = {}
    uT = uS_13 or uR
    for i, v in ipairs(uT) do
        uR = v.id
        local uS_14 = v.name or v.id
        uT = tonumber(v.power) or 0
        t0[i] = { id = uR, name = uS_14, power = uT }
        uR = string.format
        local uS_15 = v.name or tostring(v.id)
        uT = tonumber(v.power) or 0
        tY[i] = uR("%s (%d power)", uS_15, uT)
    end
    uR = {}
    local uS_16 = uQ.EXPLORE_STAGES or uR
    for i, v in ipairs(uS_16) do
        uQ = v.id
        uR = v.name or v.id
        tU[i] = { id = uQ, name = uR }
        uQ = v.name or tostring(v.id)
        tP[i] = uQ
    end
end
if #uf == 0 then
    uQ = 2
    repeat
        if uQ and uQ or (uQ or uQ) or (uQ and uQ or uQ and uQ) or ((not uQ or uQ) and (uQ and uQ) or not uQ and uQ and (not uQ and uQ)) or not (uQ and uQ or (uQ or uQ) or (uQ and uQ or uQ and uQ) or ((not uQ or uQ) and (uQ and uQ) or not uQ and uQ and (not uQ and uQ))) then
            uf = { "Mortal Root" }
            ui = { { id = "mortal", name = "Mortal Root" } }
        else
            ui = { "Mortal Root" }
            uf = { { id = "mortal", name = "Mortal Root" } }
        end
        uQ = (uQ + 1) % 4
    until (uQ * 1 + 2) % 4 == 1
end
if #t5 == 0 then
    uQ = 7
    repeat
        uR = {
            "vuqhvyn",
            "gclubp",
            "dil",
            "aykpovcgtiw",
            "cum",
            "vfmhxett",
            "bjq",
            "ctsusr",
            "luocqebxh",
            "mskzchnclx"
        }
        local Gr = uQ
        local uS_17 = uR[Gr % 10 + 1]
        if uS_17:len() <= uS_17:reverse():rep(Gr % 3 + 2):len() then
            t5 = { "Common" }
            ub = { { id = "common", name = "Common" } }
        else
            ub = { "Common" }
            t5 = { { id = "common", name = "Common" } }
        end
        uQ = (uQ + 4) % 8
    until (uQ * 5 + 1) % 8 == 0
end
if #tY == 0 then
    uQ = 1
    repeat
        uR = (vector.create((uQ * 6 + 4) % 11 + 1, (uQ * 3 + 5) % 13 + 1, (uQ * 3 + 17) % 17 + 1))
        local uS_18 = (vector.create((uQ * 6 + 5) % 11 + 1, (uQ * 9 + 3) % 13 + 1, (uQ * 14 + 12) % 17 + 1))
        uT = (vector.create((uQ * 4 + 3) % 5 + 1, (uQ * 4 + 7) % 7 + 1, (uQ * 1 + 6) % 9 + 1))
        if math.abs((vector.angle(uR, uS_18, uT))) - math.abs((vector.angle(uS_18, uR, uT))) == 0 then
            tY = { "Easy (120 power)" }
            t0 = { { id = "easy", name = "Easy", power = 120 } }
        else
            t0 = { "Easy (120 power)" }
            tY = { { power = 120, name = "Easy", id = "easy" } }
        end
        uQ = (uQ + 3) % 4
    until (uQ * 1 + 0) % 4 == 0
end
if #tP == 0 then
    uQ = 3
    repeat
        uR = (uQ * 1 + 0) % 2 + 1
        if uR <= 1 then
            if ((uQ or uQ or (uQ or uQ)) and (not uQ and uQ or (uQ or uQ)) or (not uQ and uQ and (uQ and uQ) or not uQ and uQ and (uQ and not uQ))) and not ((uQ or uQ or (uQ or uQ)) and (not uQ and uQ or (uQ or uQ)) or (not uQ and uQ and (uQ and uQ) or not uQ and uQ and (uQ and not uQ))) then
                tU = { { id = "village", name = "Willow Village" } }
            else
                tU = { { id = "village", name = "Willow Village" } }
            end
            uQ = (uQ + 7) % 8
        else
            uR = (vector.create((uQ * 1 + 1) % 11 + 1, (uQ * 4 + 10) % 13 + 1, (uQ * 7 + 12) % 17 + 1))
            local uS_19 = (vector.create((uQ * 3 + 7) % 11 + 1, (uQ * 1 + 4) % 13 + 1, (uQ * 4 + 1) % 17 + 1))
            uT = (vector.create((uQ * 3 + 3) % 11 + 1, (uQ * 4 + 8) % 13 + 1, (uQ * 10 + 12) % 17 + 1))
            uU = (vector.create((uQ * 4 + 2) % 5 + 1, (uQ * 1 + 2) % 7 + 1, (uQ * 2 + 4) % 9 + 1))
            if vector.dot(vector.cross(uR, (vector.cross(uS_19, uT))), uU) == vector.dot(uS_19 * vector.dot(uR, uT) - uT * vector.dot(uR, uS_19), uU) + 5 then
                tP = { "Willow Village" }
            else
                tP = { "Willow Village" }
            end
            uQ = (uQ + 5) % 8
        end
    until (uQ * 7 + 7) % 8 == 0
end
ud, t7, t2 = nil, nil, nil
uR = 5
repeat
    uQ = (uR * 1 + 1) % 3 + 1
    if uQ <= 2 then
        if uQ <= 1 then
            uQ = (vector.create((uR * 7 + 5) % 11 + 1, (uR * 4 + 3) % 13 + 1, (uR * 14 + 3) % 17 + 1))
            local uS_20 = (vector.create((uR * 3 + 2) % 11 + 1, (uR * 1 + 4) % 13 + 1, (uR * 2 + 8) % 17 + 1))
            uT = (vector.create((uR * 6 + 2) % 11 + 1, (uR * 4 + 9) % 13 + 1, (uR * 4 + 4) % 17 + 1))
            uU = (vector.create((uR * 4 + 2) % 11 + 1, (uR * 8 + 13) % 13 + 1, (uR * 13 + 6) % 17 + 1))
            if vector.dot(vector.cross(uQ, uS_20), (vector.cross(uT, uU))) == vector.dot(uQ, uT) * vector.dot(uS_20, uU) - vector.dot(uQ, uU) * vector.dot(uS_20, uT) + 3 then
                t7 = "Highest Affordable"
            else
                ud = "Highest Affordable"
            end
            uR = (uR + 13) % 24
        else
            local Gt = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 10), string.byte(tostring(ud))), 17)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Gt, 3862640643), 12), 3011526243) ~= bit32.lrotate(Gt, 12) then
                ud = "Highest Unlocked"
            else
                t7 = "Highest Unlocked"
            end
            uR = (uR + 10) % 24
        end
    else
        if uR * 58466481 + 12 + 3 <= uR * 58466481 + 12 + 3 + 1 then
            t2 = { ud }
        else
            ud = { t2 }
        end
        uR = (uR + 22) % 24
    end
until (uR * 23 + 15) % 24 == 13
for i, v in ipairs(tY) do
    table.insert(t2, v)
end
tQ = { t7 }
for i, v in ipairs(tP) do
    table.insert(tQ, v)
end
t9, tJ, uE, uv, uk, tK, uy, t3, uK, uh = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uQ = 0
repeat
    uR = (uQ * 1 + 0) % 5 + 1
    if uR <= 3 then
        if uR <= 2 then
            if uR <= 1 then
                local uS_21 = {
                    "fderpjpexwl",
                    "jkgfw",
                    "jupbpvj",
                    "tdhkr",
                    "tqencuqk",
                    "cvcnztnmplw",
                    "pwmt",
                    "cakkvwqf",
                    "jqpnnugx",
                    "unegbny"
                }
                if uS_21[(uQ * 89 + 90) % 10 + 1] < uS_21[(uQ * 89 + 90) % 10 + 1] then
                    tK = fn1080
                else
                    tJ = fn1080
                end
                uQ = (uQ + 6) % 20
            else
                if (uQ * 2 + 2) * 16 % 3 == ((uQ * 2 + 2) * 16 + 6) % 3 then
                    uE = fn34
                    uv = fn1212
                    uk = fn65
                else
                    uk = fn34
                    uE = fn1212
                    uv = fn65
                end
                uQ = (uQ + 11) % 20
            end
        else
            local Ib = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ, 7), string.byte(tostring(uk))), 28)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Ib, 2950097091), 2), 3210453774) == bit32.lrotate(Ib, 2) then
                tK = fn2
                uy = function(ck, cl)
                    local BigNum
                    BigNum = nil
                    BigNum = uO.BigNum
                    local w7 = not BigNum
                    local w7_3
                    local w8 = type(cl) ~= "table" or w7
                    local w8_3
                    if w8 then
                        return true
                    end
                    w7_3, w8_3 = pcall(function()
                        return BigNum.gte(BigNum.from(ck), BigNum.from(cl))
                    end)
                    if w7_3 then
                        return w8_3 and true or false
                    end
                    return true
                end
                t3 = fn977
                uK = function(cD, cE)
                    local generation
                    local xo = cD.generation or 0
                    cD.generation = xo + 1
                    cD.stopped = false
                    generation = cD.generation
                    task.spawn(function()
                        local xl_2
                        while true do
                            local xk = tO() and not cD.stopped and cD.generation == generation
                            local xk_3
                            if xk then
                                xk_3, xl_2 = pcall(cE)
                                if not xk_3 then
                                    warn("[Ouroboros] loop error: " .. tostring(xl_2))
                                end
                                local xk_4 = not tO() or cD.stopped or cD.generation ~= generation
                                if xk_4 then
                                    break
                                end
                                task.wait(cD.interval)
                                continue
                            end
                            break
                        end
                    end)
                end
            else
                uy = fn2
                tK = function(ck, cl)
                    local BigNum
                    BigNum = nil
                    BigNum = uO.BigNum
                    local w7 = not BigNum
                    local w7_1
                    local w8 = type(cl) ~= "table" or w7
                    local w8_1
                    if w8 then
                        return true
                    end
                    w7_1, w8_1 = pcall(function()
                        return BigNum.gte(BigNum.from(ck), BigNum.from(cl))
                    end)
                    if w7_1 then
                        return w8_1 and true or false
                    end
                    return true
                end
                uK = fn977
                t3 = function(cD, cE)
                    local generation
                    local xo = cD.generation or 0
                    cD.generation = xo + 1
                    cD.stopped = false
                    generation = cD.generation
                    task.spawn(function()
                        local xl_1
                        while true do
                            local xk = tO() and not cD.stopped and cD.generation == generation
                            local xk_1
                            if xk then
                                xk_1, xl_1 = pcall(cE)
                                if not xk_1 then
                                    warn("[Ouroboros] loop error: " .. tostring(xl_1))
                                end
                                local xk_2 = not tO() or cD.stopped or cD.generation ~= generation
                                if xk_2 then
                                    break
                                end
                                task.wait(cD.interval)
                                continue
                            end
                            break
                        end
                    end)
                end
            end
            uQ = (uQ + 16) % 20
        end
    elseif uR <= 4 then
        uR = (vector.create((uQ * 6 + 1) % 11 + 1, (uQ * 8 + 13) % 13 + 1, (uQ * 12 + 1) % 17 + 1))
        local uS_22 = (vector.create((uQ * 3 + 2) % 11 + 1, (uQ * 10 + 13) % 13 + 1, (uQ * 2 + 6) % 17 + 1))
        local Gg = vector.cross(uR, uS_22)
        local Gh = vector.dot(uR, uS_22)
        if vector.dot(Gg, Gg) + Gh * Gh == vector.dot(uR, uR) * vector.dot(uS_22, uS_22) then
            uh = fn23
        else
            t3 = fn23
        end
        uQ = (uQ + 11) % 20
    else
        local In = bit32.rrotate(bit32.bxor(bit32.lrotate(uQ, 24), string.byte(tostring(tJ))), 14)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(In, 2568756553), 201124748), (bit32.bxor(bit32.band(In, 1726210742), 444312133))), 201124748), 444312133) == In then
            t9 = {
                active = false,
                lastEventAt = 0,
                telegraphId = nil,
                telegraphAt = 0,
                telegraphDuration = 1.2,
                telegraphStyle = "timed",
                dodgeLead = 0.1,
                tapCooldown = 0.09,
                dodgePresses = 10,
                autoClick = false,
                autoDodge = false,
                beastFight = false,
                finish = nil,
                wins = 0,
                losses = 0,
                rewards = 0
            }
        else
            uh = {
                lastEventAt = 0,
                dodgeLead = 0.1,
                finish = nil,
                telegraphDuration = 1.2,
                rewards = 0,
                losses = 0,
                wins = 0,
                autoClick = false,
                telegraphAt = 0,
                dodgePresses = 10,
                autoDodge = false,
                tapCooldown = 0.09,
                telegraphId = nil,
                beastFight = false,
                active = false,
                telegraphStyle = "timed"
            }
        end
        uQ = (uQ + 11) % 20
    end
until (uQ * 3 + 0) % 20 == 5
uS_23, uT = nil, nil
uR = 10
repeat
    uQ = (uR * 1 + 1) % 2 + 1
    if uQ <= 1 then
        local Ig = bit32.rrotate(bit32.bxor(bit32.lrotate(uR, 7), string.byte(tostring(uT))), 19)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Ig, 1625810020), 16), 3831783655) == bit32.lrotate(Ig, 16) then
            uT = uS_23
        else
            uS_23 = uT
        end
        uR = (uR + 9) % 16
    else
        if (uR * 2 + 1) * 13 % 3 == ((uR * 2 + 1) * 13 + 3) % 3 then
            uS_23 = uO.Config
        else
            uO = uS_23.Config
        end
        uR = (uR + 3) % 16
    end
until (uR * 1 + 12) % 16 == 2
if uT then
    uT = uS_23.BOSS
end
uQ = uT
if uQ then
    uR = tonumber(uQ.TAP_COOLDOWN) or 0.09
    t9.tapCooldown = uR
    uR = (tonumber(uQ.DODGE_PRESSES))
    local vC = if uR then 1 else 0
    local vA = 1074 * vC + 1636 * (1 - vC)
    local vB = 541 * vC + 142 * (1 - vC)
    if not ((vA * 1346 + vB * 1681 + vA * vB) % 16777213 == 2936059) then
        uR = 10
    end
    t9.dodgePresses = uR
end
tT, tM, uL = nil, nil, nil
uQ = 4
repeat
    uR = (vector.create((uQ * 1 + 7) % 11 + 1, (uQ * 8 + 10) % 13 + 1, (uQ * 14 + 17) % 17 + 1))
    local uS_24 = (vector.create((uQ * 4 + 7) % 11 + 1, (uQ * 10 + 9) % 13 + 1, (uQ * 3 + 9) % 17 + 1))
    local H9 = vector.cross(uR, uS_24)
    local Ia = vector.dot(uR, uS_24)
    if vector.dot(H9, H9) + Ia * Ia == vector.dot(uR, uR) * vector.dot(uS_24, uS_24) + 4 then
        uL = fn1157
        tT = fn595
        tM = function(c1, c2, c3)
            local xL
            local xM = not tM() or not t4.Input
            if xM then
                return
            end
            xL = c1
            task.spawn(function()
                if c2 == "spam" then
                    uP.DodgeStatus = "Spamming"
                    local dodgePresses = t9.dodgePresses
                    local xF = 1
                    while xF <= dodgePresses do
                        local xA_6 = not tO() or not tM()
                        local xK = if xA_6 then 1 else 0
                        local xI = 3548 * xK + 1166 * (1 - xK)
                        local xJ = 3489 * xK + 3682 * (1 - xK)
                        if not ((xI * 3216 + xJ * 1010 + xI * xJ) % 16777213 == 10536017) then
                            xA_6 = t9.telegraphId ~= xL
                        end
                        if xA_6 then
                            break
                        end
                        uM(t4.Input, { kind = "dodge", id = xL })
                        task.wait(0.04)
                        xF += 1
                    end
                else
                    uP.DodgeStatus = "Timing"
                    local xA_7 = t9.telegraphAt + math.max(c3 - t9.dodgeLead, 0)
                    while true do
                        local xB = tO() and os.clock() < xA_7
                        if xB then
                            task.wait()
                            continue
                        end
                        break
                    end
                    local xA_8 = tO() and tM() and t9.telegraphId == xL
                    if xA_8 then
                        uM(t4.Input, { kind = "dodge", id = xL })
                    end
                end
                if t9.autoDodge then
                    uP.DodgeStatus = "Watching"
                end
            end)
        end
    else
        tT = fn1157
        tM = fn595
        uL = function(c1, c2, c3)
            local xL
            local xM = not tM() or not t4.Input
            if xM then
                return
            end
            xL = c1
            task.spawn(function()
                if c2 == "spam" then
                    uP.DodgeStatus = "Spamming"
                    local dodgePresses = t9.dodgePresses
                    local xF = 1
                    while xF <= dodgePresses do
                        local xA_2 = not tO() or not tM()
                        local xK = if xA_2 then 1 else 0
                        local xI = 3548 * xK + 1166 * (1 - xK)
                        local xJ = 3489 * xK + 3682 * (1 - xK)
                        if not ((xI * 3216 + xJ * 1010 + xI * xJ) % 16777213 == 10536017) then
                            xA_2 = t9.telegraphId ~= xL
                        end
                        if xA_2 then
                            break
                        end
                        uM(t4.Input, { kind = "dodge", id = xL })
                        task.wait(0.04)
                        xF += 1
                    end
                else
                    uP.DodgeStatus = "Timing"
                    local xA_3 = t9.telegraphAt + math.max(c3 - t9.dodgeLead, 0)
                    while true do
                        local xB = tO() and os.clock() < xA_3
                        if xB then
                            task.wait()
                            continue
                        end
                        break
                    end
                    local xA_4 = tO() and tM() and t9.telegraphId == xL
                    if xA_4 then
                        uM(t4.Input, { kind = "dodge", id = xL })
                    end
                end
                if t9.autoDodge then
                    uP.DodgeStatus = "Watching"
                end
            end)
        end
    end
    uQ = (uQ + 3) % 8
until (uQ * 5 + 5) % 8 == 0
if t4.Event then
    connection = nil
    uQ = 2
    repeat
        uR = (uQ * 1 + 1) % 2 + 1
        if uR <= 1 then
            if (uQ * 2 + 2) * 4 % 3 == ((uQ * 2 + 2) * 4 + 3) % 3 then
                ue.Track(fn502)
            else
                ue.Track(fn502)
            end
            uQ = (uQ + 7) % 8
        else
            if (uQ and not uQ and (not uQ or not uQ) or not connection and not connection and (uQ and not uQ) or (not connection or connection) and (uQ and uQ) and (not connection or uQ or connection and uQ)) and not (uQ and not uQ and (not uQ or not uQ) or not connection and not connection and (uQ and not uQ) or (not connection or connection) and (uQ and uQ) and (not connection or uQ or connection and uQ)) then
                t4 = connection.Event.OnClientEvent:Connect(onOnClientEvent)
            else
                connection = t4.Event.OnClientEvent:Connect(onOnClientEvent)
            end
            uQ = (uQ + 7) % 8
        end
    until (uQ * 5 + 6) % 8 == 6
else
    uJ("BossService.Event")
end
um, uj, ug, uc, t6, t1, tZ, tV, tR, t8, tN, uq, tL, ur, ul, uH, us = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
um = { interval = 0.09 }
uj = { interval = 2, difficulty = "Highest Affordable" }
ug = { interval = 3, stage = "Highest Unlocked", chestDelay = 0.25 }
uc = { interval = 2.2 }
t6 = { interval = 0.8, slot = 1, keepRank = 3 }
t1 = { interval = 5, minMarks = 0 }
tZ = { interval = 1, mode = "Max", minChance = 0 }
tV = { interval = 1, mode = "Max" }
tR = { interval = 2, keepRank = 5 }
um.SetEnabled = fn176
um.SetRate = fn453
t8 = {}
t8.SetEnabled = fn377
t8.SetLead = fn1139
tN = fn1214
uj.SetDifficulty = fn613
uj.SetEnabled = fn925
uq = fn168
ug.SetStage = fn134
ug.SetChestDelay = fn508
tL = fn93
ur = function(e9)
    local y_
    local y0 = uC(5)
    local difficulty = uj.difficulty
    local y2 = y0 and y0.battlePower
    local y0_1 = tN(difficulty, y2)
    local Begin = t4.Begin
    local y0_2 = y0_1 and y0_1.id or "normal"
    local y2_2 = tX(Begin, y0_2, e9.id)
    local y0_3 = type(y2_2) ~= "table" or not y2_2.ok
    if y0_3 then
        return false
    end
    t9.beastFight = true
    t9.finish = nil
    t9.active = true
    t9.lastEventAt = os.clock()
    t9.telegraphId = nil
    uP.ExploreStatus = string.format("%s: fighting the beast", e9.name)
    y_ = true
    task.spawn(function()
        while true do
            local yY = y_ and tO()
            if yY then
                uM(t4.Input, { kind = "tap" })
                task.wait(math.max(t9.tapCooldown, 0.09))
                continue
            end
            break
        end
    end)
    local y0_4 = os.clock() + 320
    while true do
        local y1_2 = tO() and not t9.finish and os.clock() < y0_4
        if y1_2 then
            if ug.stopped then
                break
            end
            task.wait(0.1)
            continue
        end
        break
    end
    y_ = false
    local finish = t9.finish
    t9.finish = nil
    t9.beastFight = false
    t9.active = false
    if not finish then
        tX(t4.Flee)
        uP.ExploreStatus = string.format("%s: beast timed out", e9.name)
        return false
    elseif finish.won then
        t9.wins = t9.wins + 1
        return true
    else
        t9.losses = t9.losses + 1
        return false
    end
end
ul = fn1179
ug.SetEnabled = fn237
uc.SetInterval = fn368
uc.SetEnabled = fn1228
t6.SetSlot = fn532
t6.SetKeepTier = fn393
t6.SetEnabled = fn1146
tZ.SetMode = fn1062
tZ.SetMinChance = fn421
tZ.SetEnabled = fn949
tV.SetMode = fn1160
tV.SetEnabled = fn672
t1.SetMinMarks = fn770
t1.SetEnabled = fn514
tR.SetKeepBand = fn563
uH = fn1172
us = fn880
tR.SetEnabled = fn113
ue.Track(fn1255)
uQ = function()
    local FH
    local FG
    local onDiscord
    FG = nil
    FH = nil
    onDiscord = nil
    local Toggles, FC, FD, ThemeManager, Options, SaveManager, FJ, FK, Library
    FJ = "Cultivation: Evermortal"
    FG = "https://discord.gg/synapsex"
    FC = "https://ouroboros-hub-rbx.web.app/"
    FK = "https://rscripts.net/@Ouroboros"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    uw(ue, Library)
    FH = function(iH, iI)
        local A0 = tW(setclipboard) and setclipboard
        local A1 = A0
        if not A1 then
            local A0_1 = tW(toclipboard) and toclipboard
            A1 = A0_1 or nil
        end
        local A0_2 = A1
        if not A0_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local A1_1 = pcall(A0_2, iH)
        if A1_1 then
            Library:Notify(iI)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        FH(FG, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = FG, Copyable = true }, "|", FJ, "|", "v0.3" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    FD = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function FN_1(iV)
        local DiscordGroup = iV:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in FD do
        if k ~= "Info" then
            FN_1(v)
        end
    end
    local function FO()
        local Ba
        Ba = nil
        local Label3, Label7, Label5, Label2, Label4, Label8, Label, Label6
        local AzureDragonGroup = FD.Main:AddLeftGroupbox("Azure Dragon", "flame")
        AzureDragonGroup:AddToggle("AutoAzureDragon", { Text = "Auto Azure Dragon", Default = false })
        AzureDragonGroup:AddDropdown("BossDifficulty", { Text = "Difficulty", Values = t2, Default = 1, Multi = false })
        AzureDragonGroup:AddDivider()
        AzureDragonGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
        AzureDragonGroup:AddSlider("ClickRate", { Text = "Strikes Per Second", Default = 11, Min = 1, Max = 12, Rounding = 0 })
        AzureDragonGroup:AddDivider()
        AzureDragonGroup:AddToggle("AutoDodge", { Text = "Auto Dodge", Default = false })
        AzureDragonGroup:AddSlider("DodgeLead", { Text = "Dodge Lead (seconds)", Default = 0.1, Min = 0, Max = 0.3, Rounding = 2 })
        Label8 = AzureDragonGroup:AddLabel("Status: Idle")
        local ExploreGroup = FD.Main:AddLeftGroupbox("Explore", "compass")
        ExploreGroup:AddToggle("AutoExplore", { Text = "Auto Explore", Default = false })
        ExploreGroup:AddDropdown("ExploreStage", { Text = "Stage", Values = tQ, Default = 1, Multi = false })
        ExploreGroup:AddSlider("ExploreChestDelay", { Text = "Chest Delay (seconds)", Default = 0.25, Min = 0.05, Max = 2, Rounding = 2 })
        Label7 = ExploreGroup:AddLabel("Status: Idle")
        local CultivationGroup = FD.Main:AddRightGroupbox("Cultivation", "sparkles")
        CultivationGroup:AddToggle("AutoMeditate", { Text = "Auto Meditate", Default = false })
        CultivationGroup:AddSlider("MeditateInterval", { Text = "Meditate Interval (seconds)", Default = 2.2, Min = 1, Max = 15, Rounding = 1 })
        Label6 = CultivationGroup:AddLabel("Status: Idle")
        CultivationGroup:AddDivider()
        CultivationGroup:AddToggle("AutoBreakthrough", { Text = "Auto Break Through", Default = false })
        CultivationGroup:AddDropdown("BreakthroughMode", { Text = "Breakthrough Mode", Values = { "Max", "Single" }, Default = 1, Multi = false })
        CultivationGroup:AddSlider("BreakthroughMinChance", { Text = "Minimum Success Chance", Default = 0, Min = 0, Max = 100, Rounding = 0, Suffix = "%" })
        Label5 = CultivationGroup:AddLabel("Status: Idle")
        CultivationGroup:AddDivider()
        CultivationGroup:AddToggle("AutoRefine", { Text = "Auto Refine", Default = false })
        CultivationGroup:AddDropdown("RefineMode", { Text = "Refine Mode", Values = { "Max", "Single" }, Default = 1, Multi = false })
        Label4 = CultivationGroup:AddLabel("Status: Idle")
        CultivationGroup:AddDivider()
        CultivationGroup:AddToggle("AutoAscend", { Text = "Auto Ascend", Default = false })
        CultivationGroup:AddSlider("AscendMinMarks", { Text = "Minimum Dao Marks", Default = 0, Min = 0, Max = 1000000000, Rounding = 0 })
        Label3 = CultivationGroup:AddLabel("Status: Idle")
        local DivinationGroup = FD.Main:AddRightGroupbox("Divination", "dices")
        DivinationGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
        local Bh = uO.Config and tonumber(uO.Config.MAX_ROOT_SLOTS)
        local Bi = Bh
        local Bm = if Bi then 1 else 0
        local Bk = 2867 * Bm + 1115 * (1 - Bm)
        local Bl = 2963 * Bm + 3530 * (1 - Bm)
        if not ((Bk * 1513 + Bl * 760 + Bk * Bl) % 16777213 == 15084572) then
            Bi = 6
        end
        DivinationGroup:AddSlider("RollSlot", { Text = "Root Slot", Default = 1, Min = 1, Max = math.max(Bi, 1), Rounding = 0 })
        DivinationGroup:AddDropdown("RollKeepTier", { Text = "Keep Tier And Above", Values = uf, Default = math.min(3, #uf), Multi = false })
        Label2 = DivinationGroup:AddLabel("Status: Idle")
        DivinationGroup:AddDivider()
        DivinationGroup:AddToggle("AutoBloodlineRoll", { Text = "Auto Bloodline Roll", Default = false })
        DivinationGroup:AddDropdown("BloodlineKeepBand", { Text = "Keep Band And Above", Values = t5, Default = math.min(5, #t5), Multi = false })
        Label = DivinationGroup:AddLabel("Status: Idle")
        Toggles.AutoAzureDragon:OnChanged(function()
            uj.SetEnabled(Toggles.AutoAzureDragon.Value)
        end)
        Options.BossDifficulty:OnChanged(function()
            uj.SetDifficulty(Options.BossDifficulty.Value)
        end)
        Toggles.AutoClick:OnChanged(function()
            um.SetEnabled(Toggles.AutoClick.Value)
        end)
        Options.ClickRate:OnChanged(function()
            um.SetRate(Options.ClickRate.Value)
        end)
        Toggles.AutoDodge:OnChanged(function()
            t8.SetEnabled(Toggles.AutoDodge.Value)
        end)
        Options.DodgeLead:OnChanged(function()
            t8.SetLead(Options.DodgeLead.Value)
        end)
        Toggles.AutoExplore:OnChanged(function()
            ug.SetEnabled(Toggles.AutoExplore.Value)
        end)
        Options.ExploreStage:OnChanged(function()
            ug.SetStage(Options.ExploreStage.Value)
        end)
        Options.ExploreChestDelay:OnChanged(function()
            ug.SetChestDelay(Options.ExploreChestDelay.Value)
        end)
        Toggles.AutoMeditate:OnChanged(function()
            uc.SetEnabled(Toggles.AutoMeditate.Value)
        end)
        Options.MeditateInterval:OnChanged(function()
            uc.SetInterval(Options.MeditateInterval.Value)
        end)
        Toggles.AutoBreakthrough:OnChanged(function()
            tZ.SetEnabled(Toggles.AutoBreakthrough.Value)
        end)
        Options.BreakthroughMode:OnChanged(function()
            tZ.SetMode(Options.BreakthroughMode.Value)
        end)
        Options.BreakthroughMinChance:OnChanged(function()
            tZ.SetMinChance(Options.BreakthroughMinChance.Value)
        end)
        Toggles.AutoRefine:OnChanged(function()
            tV.SetEnabled(Toggles.AutoRefine.Value)
        end)
        Options.RefineMode:OnChanged(function()
            tV.SetMode(Options.RefineMode.Value)
        end)
        Toggles.AutoAscend:OnChanged(function()
            t1.SetEnabled(Toggles.AutoAscend.Value)
        end)
        Options.AscendMinMarks:OnChanged(function()
            t1.SetMinMarks(Options.AscendMinMarks.Value)
        end)
        Toggles.AutoRoll:OnChanged(function()
            t6.SetEnabled(Toggles.AutoRoll.Value)
        end)
        Options.RollSlot:OnChanged(function()
            t6.SetSlot(Options.RollSlot.Value)
        end)
        Options.RollKeepTier:OnChanged(function()
            t6.SetKeepTier(Options.RollKeepTier.Value)
        end)
        Toggles.AutoBloodlineRoll:OnChanged(function()
            tR.SetEnabled(Toggles.AutoBloodlineRoll.Value)
        end)
        Options.BloodlineKeepBand:OnChanged(function()
            tR.SetKeepBand(Options.BloodlineKeepBand.Value)
        end)
        Ba = task.spawn(function()
            while true do
                task.wait(0.5)
                if Library.Unloaded then
                    break
                end
                Label8:SetText(string.format("Boss: %s  |  Click: %s  |  Dodge: %s", uP.BossStatus, uP.ClickStatus, uP.DodgeStatus))
                Label7:SetText("Status: " .. tostring(uP.ExploreStatus))
                Label6:SetText("Status: " .. tostring(uP.MeditateStatus))
                Label5:SetText("Status: " .. tostring(uP.BreakthroughStatus))
                Label4:SetText("Status: " .. tostring(uP.RefineStatus))
                Label3:SetText("Status: " .. tostring(uP.AscendStatus))
                Label2:SetText("Status: " .. tostring(uP.RollStatus))
                Label:SetText("Status: " .. tostring(uP.BloodlineStatus))
            end
        end)
        ue.Track(function()
            if coroutine.status(Ba) ~= "dead" then
                task.cancel(Ba)
            end
        end)
    end
    FO()
    local function FN_2()
        local BI
        local BE
        local BA
        local BL
        BA = nil
        BE = nil
        BI = nil
        BL = nil
        local Bz, BB, Label2, Label3, BF, BG, Label, BJ, BK
        BL = function(jP)
            return (tostring(jP):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        BA = function(jR, jS)
            return string.format('<font color="%s">%s</font>', jS, BL(jR))
        end
        BB = function(jV, jW, jX)
            return string.format("<b>%s</b> %s %s", jV, BA("-", "#5a6070"), BA(jW, jX))
        end
        local BM = "#8b93a3"
        Bz = "#7fd47f"
        BG = "#e8a34d"
        local BN = "#6ec1ff"
        local missing = uO.missing
        local BP = #missing == 0 and "ready"
        local BQ = BP or "limited: " .. table.concat(missing, ", ")
        BJ = "Unknown"
        pcall(function()
            local Bo_1
            local Bn_1
            if tW(identifyexecutor) then
                Bo_1, Bn_1 = identifyexecutor()
                local Bp = Bo_1 ~= ""
                local Bq = type(Bo_1) == "string" and Bp
                if Bq then
                    local Bp_1 = type(Bn_1) == "string" and Bn_1 ~= "" and Bo_1 .. " " .. Bn_1
                    BJ = Bp_1 or Bo_1
                end
            end
        end)
        BE = os.clock()
        BK = function()
            local Bs = math.floor(os.clock() - BE)
            if Bs < 60 then
                return Bs .. "s"
            elseif Bs < 3600 then
                return string.format("%dm %ds", Bs // 60, Bs % 60)
            else
                return string.format("%dh %dm", Bs // 3600, Bs % 3600 // 60)
            end
        end
        local UserGroup = FD.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(BB("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Bz), true)
        UserGroup:AddLabel(BB("UserId", tostring(LocalPlayer.UserId), BN), true)
        UserGroup:AddLabel(BB("Executor", BJ .. "  " .. BQ, Bz), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(BB("Session", BK(), BG), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                FH(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                FH("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = FD.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(BB("Game", FJ, BN), true)
        Label2 = SessionGroup:AddLabel(BB("Players", "0/0", Bz), true)
        BF = tostring(game.JobId)
        local BN_1 = #BF > 18 and string.sub(BF, 1, 18) .. "..."
        local BP_2 = BN_1
        local BU = if BP_2 then 1 else 0
        local BS = 1520 * BU + 1317 * (1 - BU)
        local BT = 3044 * BU + 3333 * (1 - BU)
        if not ((BS * 3411 + BT * 174 + BS * BT) % 16777213 == 10341256) then
            BP_2 = BF
        end
        local BN_2 = BP_2
        SessionGroup:AddLabel(BB("Job", BN_2, BM), true)
        Label = SessionGroup:AddLabel(BB("Ping", "0 ms", BG), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                FH(BF, "Copied Job ID")
            end
        })
        BI = task.spawn(function()
            local Bv_1
            local Bu_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(BB("Session", BK(), BG))
                Label2:SetText(BB("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Bz))
                Bu_1, Bv_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Bu_2 = Bu_1 and Bv_1 .. " ms" or "n/a"
                Label:SetText(BB("Ping", Bu_2, BG))
            end
        end)
        ue.Track(function()
            if coroutine.status(BI) ~= "dead" then
                task.cancel(BI)
            end
        end)
        local SocialsGroup = FD.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                FH(FK, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                FH(FC, "Copied website link")
            end
        })
    end
    FN_2()
    local function FN_3()
        local lb
        local k9
        local la
        local lc
        local MovementGroup = FD.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = FD.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        lb = {}
        lc = {}
        la = {}
        k9 = {}
        local k8 = {}
        local function ld()
            for k, v in k9 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(k9)
        end
        local function lh()
            for k, v in la do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(la)
        end
        local function ll()
            for k, v in lb do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(lb)
        end
        local function lp(lq)
            if not lq:IsA("ProximityPrompt") then
                return
            end
            if lc[lq] == nil then
                lc[lq] = {
                    HoldDuration = lq.HoldDuration,
                    MaxActivationDistance = lq.MaxActivationDistance,
                    RequiresLineOfSight = lq.RequiresLineOfSight
                }
            end
            lq.HoldDuration = 0
            lq.MaxActivationDistance = 50
            lq.RequiresLineOfSight = false
        end
        local function ls()
            for k, v in lc do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(lc)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                ll()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                lh()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                ld()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        pcall(lp, descendant)
                    end
                end
            else
                ls()
            end
        end)
        table.insert(k8, Workspace.DescendantAdded:Connect(function(lL)
            local CA = Toggles.InstantProximityPrompt.Value and lL:IsA("ProximityPrompt")
            if CA then
                lp(lL)
            end
        end))
        table.insert(k8, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if k9[descendant] == nil then
                            k9[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(k8, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local CM = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and CM then
                CM:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(k8, RunService.RenderStepped:Connect(function(l7)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local CS = Character and Character:FindFirstChildOfClass("Humanoid")
            local CT = Character
            if CT then
                CT = Character:FindFirstChild("HumanoidRootPart")
            end
            local CR_1 = CT
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and CS then
                if la[CS] == nil then
                    la[CS] = CS.WalkSpeed
                end
                CS.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and CR_1 and CS and CurrentCamera then
                if lb[CS] == nil then
                    lb[CS] = CS.PlatformStand
                end
                CS.PlatformStand = true
                local CT_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        CT_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        CT_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        CT_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        CT_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        CT_4 += Vector3.new(0, 1, 0)
                    end
                    local CZ = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                    if CZ == 1 then
                        CT_4 -= Vector3.new(0, 1, 0)
                    end
                end
                CR_1.AssemblyLinearVelocity = Vector3.zero
                if CT_4.Magnitude > 0 then
                    CR_1.CFrame = CR_1.CFrame + CT_4.Unit * Options.FlySpeed.Value * l7
                end
            end
        end))
        ue.Track(function()
            for k, v in k8 do
                v:Disconnect()
            end
            ld()
            lh()
            ll()
            ls()
        end)
    end
    FN_3()
    local function FN_4()
        local D5, D6, D7, D8, D9, Ea, Eb, Ec, Label, Ee, Ef, Eg, Eh, Ei
        Ee = {}
        D8 = {}
        D5 = nil
        D6 = 0
        Eg = 0
        Ea = false
        Eb = os.clock()
        local MenuGroup = FD.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Eh = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local C7 = not CurrentCamera
            local Db = if C7 then 1 else 0
            local C9 = 3700 * Db + 2167 * (1 - Db)
            local Da = 2124 * Db + 4042 * (1 - Db)
            if not ((C9 * 145 + Da * 3136 + C9 * Da) % 16777213 == 15056164) then
                C7 = not tW(VirtualUser.CaptureController)
            end
            if not C7 then
                C7 = not tW(VirtualUser.ClickButton2)
            end
            if C7 then
                return false
            end
            local C7_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not C7_1 then
                return false
            end
            D6 += 1
            Eb = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. D6)
            end)
            return true
        end
        Ec = function(mR)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not mR)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not mR
                end
            end)
            if not mR then
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
        D9 = function(m6)
            local Dg = m6.ClassName == "ParticleEmitter" or m6.ClassName == "Trail" or m6.ClassName == "Smoke"
            local Dk = if Dg then 1 else 0
            local Di = 1512 * Dk + 3151 * (1 - Dk)
            local Dj = 2499 * Dk + 1513 * (1 - Dk)
            if not ((Di * 749 + Dj * 1755 + Di * Dj) % 16777213 == 9296721) then
                Dg = m6.ClassName == "Fire"
            end
            if not Dg then
                Dg = m6.ClassName == "Sparkles"
            end
            if not Dg then
                Dg = m6.ClassName == "Explosion"
            end
            if not Dg then
                Dg = m6.ClassName == "Beam"
            end
            if Dg then
                if Ee[m6] == nil then
                    Ee[m6] = m6.Enabled
                end
                pcall(function()
                    m6.Enabled = false
                end)
            end
        end
        D7 = function()
            for k, v in Ee do
                local Dp = k
                local Dr = v
                if Dp.Parent then
                    pcall(function()
                        Dp.Enabled = Dr
                    end)
                end
            end
            table.clear(Ee)
            if D5 then
                pcall(function()
                    settings().Rendering.QualityLevel = D5.Quality
                end)
                Lighting.GlobalShadows = D5.Shadows
                Lighting.FogEnd = D5.Fog
                D5 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(nl)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not nl)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(nq)
                if nq then
                    if not D5 then
                        D5 = {
                            Quality = settings().Rendering.QualityLevel,
                            Shadows = Lighting.GlobalShadows,
                            Fog = Lighting.FogEnd
                        }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9000000000
                    for i, descendant in ipairs(Workspace:GetDescendants()) do
                        pcall(D9, descendant)
                    end
                else
                    D7()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Ec(true)
        local ScriptGroup = FD.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Ec(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Ec(true)
        end
        table.insert(D8, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Eh()
            end
        end))
        table.insert(D8, Workspace.DescendantAdded:Connect(function(nJ)
            if Toggles.FpsBoost.Value then
                D9(nJ)
            end
        end))
        Ei = function(nN)
            if Ea or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            Ea = true
            local DE = Eg
            local DF_1 = pcall(function()
                if nN then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not DF_1 then
                Ea = false
                if not nN and DE == Eg then
                    task.delay(1.5, function()
                        if DE == Eg then
                            Ei(true)
                        end
                    end)
                end
            end
        end
        table.insert(D8, TeleportService.TeleportInitFailed:Connect(function(n4)
            local DM
            if n4 == LocalPlayer and Ea then
                Ea = false
                DM = Eg
                task.delay(3, function()
                    if DM == Eg then
                        Ei(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local DU = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not DU then
                return
            end
            table.insert(D8, DU.ChildAdded:Connect(function(oj)
                if oj.Name == "ErrorPrompt" then
                    Ei(false)
                end
            end))
        end)
        Ef = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Ec(true)
                end
                local DX = Toggles.AntiAfk.Value and os.clock() - Eb >= 60
                if DX then
                    Eh()
                end
                task.wait(1)
            end
        end)
        ue.Track(function()
            Eg += 1
            for k, v in D8 do
                v:Disconnect()
            end
            pcall(task.cancel, Ef)
            Ec(false)
            D7()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    FN_4()
    local function FN_5()
        local Fs, Ft, Fu, Fv
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(FD.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/DmgFps")
        local Fw = SaveManager:BuildConfigSection(FD.Settings)
        Fu = function(oN, oO)
            local Ep_1 = (oN == "Toggle" and Toggles or Options)[oO]
            local Eo_2 = type(Ep_1) == "table" and Ep_1.Type == oN
            return Eo_2 and Ep_1 or nil
        end
        Fs = function(oX, oY)
            local Type = oY.Type
            if Type == "Toggle" then
                return { idx = oX, type = "Toggle", value = oY.Value == true }
            elseif Type == "Slider" then
                return { idx = oX, type = "Slider", value = tostring(oY.Value) }
            elseif Type == "Dropdown" then
                return { idx = oX, type = "Dropdown", multi = oY.Multi == true, value = oY.Value }
            elseif Type == "Input" then
                local Ew = oY.Value or ""
                return { idx = oX, type = "Input", text = tostring(Ew) }
            elseif Type == "ColorPicker" then
                return { idx = oX, type = "ColorPicker", value = oY.Value:ToHex(), transparency = oY.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = oX,
                    type = "KeyPicker",
                    mode = oY.Mode,
                    key = oY.Value,
                    modifiers = oY.Modifiers,
                    toggled = oY.Toggled
                }
            else
                return nil
            end
        end
        Fv = function()
            local EI = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local EJ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if EJ then
                        local EJ_1 = Fs(k, v)
                        if EJ_1 then
                            EI[#EI + 1] = EJ_1
                        end
                    end
                end
            end
            table.sort(EI, function(o7, o8)
                if o7.type ~= o8.type then
                    return o7.type < o8.type
                end
                return o7.idx < o8.idx
            end)
            return { objects = EI }
        end
        Ft = function(pa)
            local E1
            E1 = nil
            local E2 = type(pa) ~= "table" or type(pa.idx) ~= "string" or type(pa.type) ~= "string" or SaveManager.Ignore[pa.idx]
            if E2 then
                return false
            end
            E1 = Fu(pa.type, pa.idx)
            if not E1 then
                return false
            end
            local E2_1 = pcall(function()
                if pa.type == "Input" then
                    if type(pa.text) ~= "string" then
                        return
                    end
                    E1:SetValue(pa.text)
                elseif pa.type == "ColorPicker" then
                    E1:SetValueRGB(Color3.fromHex(pa.value), pa.transparency)
                elseif pa.type == "KeyPicker" then
                    E1:SetValue({ pa.key, pa.mode, pa.modifiers })
                    if pa.mode == "Toggle" and pa.toggled ~= nil then
                        E1.Toggled = pa.toggled
                        E1:Update()
                    end
                else
                    E1:SetValue(pa.value)
                end
            end)
            return E2_1
        end
        Fw:AddDivider()
        Fw:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Fw:AddButton("Export Config to Clipboard", function()
            local E8_1
            local E7_1
            E7_1, E8_1 = pcall(HttpService.JSONEncode, HttpService, Fv())
            if E7_1 then
                local E7_2 = tW(setclipboard) and setclipboard
                local E9 = E7_2
                if not E9 then
                    local E7_3 = tW(toclipboard) and toclipboard
                    E9 = E7_3 or nil
                end
                local E7_4 = E9
                local E9_1 = type(E7_4) == "function" and pcall(E7_4, E8_1)
                if E9_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Fw:AddButton("Import Config from Clipboard Text", function()
            local Fh_1
            local Ff = Options.SaveManager_ImportSource.Value or ""
            local Ff_1
            local Fg = tostring(Ff):match("^%s*(.-)%s*$")
            if Fg == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Fg > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Ff_1, Fh_1 = pcall(HttpService.JSONDecode, HttpService, Fg)
            local Fg_1 = not Ff_1 or type(Fh_1) ~= "table" or type(Fh_1.objects) ~= "table"
            if Fg_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Fh_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Ff_2 = 0
            for i, v in ipairs(Fh_1.objects) do
                if Ft(v) then
                    Ff_2 += 1
                end
            end
            if Ff_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Fh_2 = Ff_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Ff_2, Fh_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.BossDifficulty then
            uj.SetDifficulty(Options.BossDifficulty.Value)
        end
        if Options.ClickRate then
            um.SetRate(Options.ClickRate.Value)
        end
        if Options.DodgeLead then
            t8.SetLead(Options.DodgeLead.Value)
        end
        if Options.ExploreStage then
            ug.SetStage(Options.ExploreStage.Value)
        end
        if Options.ExploreChestDelay then
            ug.SetChestDelay(Options.ExploreChestDelay.Value)
        end
        if Options.MeditateInterval then
            uc.SetInterval(Options.MeditateInterval.Value)
        end
        if Options.BreakthroughMode then
            tZ.SetMode(Options.BreakthroughMode.Value)
        end
        if Options.BreakthroughMinChance then
            tZ.SetMinChance(Options.BreakthroughMinChance.Value)
        end
        if Options.RefineMode then
            tV.SetMode(Options.RefineMode.Value)
        end
        if Options.AscendMinMarks then
            t1.SetMinMarks(Options.AscendMinMarks.Value)
        end
        if Options.RollSlot then
            t6.SetSlot(Options.RollSlot.Value)
        end
        if Options.RollKeepTier then
            t6.SetKeepTier(Options.RollKeepTier.Value)
        end
        if Options.BloodlineKeepBand then
            tR.SetKeepBand(Options.BloodlineKeepBand.Value)
        end
        if Toggles.AutoDodge then
            t8.SetEnabled(Toggles.AutoDodge.Value)
        end
        if Toggles.AutoClick then
            um.SetEnabled(Toggles.AutoClick.Value)
        end
        if Toggles.AutoAzureDragon then
            uj.SetEnabled(Toggles.AutoAzureDragon.Value)
        end
        if Toggles.AutoExplore then
            ug.SetEnabled(Toggles.AutoExplore.Value)
        end
        if Toggles.AutoMeditate then
            uc.SetEnabled(Toggles.AutoMeditate.Value)
        end
        if Toggles.AutoBreakthrough then
            tZ.SetEnabled(Toggles.AutoBreakthrough.Value)
        end
        if Toggles.AutoRefine then
            tV.SetEnabled(Toggles.AutoRefine.Value)
        end
        if Toggles.AutoAscend then
            t1.SetEnabled(Toggles.AutoAscend.Value)
        end
        if Toggles.AutoRoll then
            t6.SetEnabled(Toggles.AutoRoll.Value)
        end
        if Toggles.AutoBloodlineRoll then
            tR.SetEnabled(Toggles.AutoBloodlineRoll.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    FN_5()
end
uQ()
