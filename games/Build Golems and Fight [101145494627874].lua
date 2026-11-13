local rY
local rj
local r0
local rF
local rI
local r3
local rL
local r6
local rs
local r9
local rR
local rv
local sc
local rU
local ry
local rf
local rB
local rX
local ri
local rE
local rc
local rH
local rl
local r2
local ro
local r5
local rK
local rN
local r8
local rQ
local ru
local rW
local CoreGui
local rh
local rZ
local rk
local r1
local rn
local r4
local rq
local rM
local r7
local rt
local rP
local sa
local rw
local rS
local rz
local rd
local rV
local rC
local function fn39(cK)
    rR.AutoEquipBest = cK == true
end
local function fn41()
    local tT = sa and sa.Tracks
    local tT_1 = type(tT) == "table" and #tT > 0
    if tT_1 then
        return tT
    end
    return { "Main", "Daily", "Misc" }
end
local function fn53(dc)
    rR.SellRarities = rq(dc)
end
local function fn63(f9, ga)
    local w3 = 0
    for i, v in ipairs(f9) do
        if not rk() then
            break
        elseif v.Kind == "rebirth" then
            local w4 = ga or rW(rE, { action = "get" })
            ga = w4
            local w4_1 = type(ga) ~= "table" or not ga.ok
            if w4_1 then
                return w3, nil
            end
            local w4_2 = tonumber(ga.tokens) or 0
            local w5
            if type(ga.upgrades) == "table" then
                for i, v2 in ipairs(ga.upgrades) do
                    local w4_3 = type(v2) == "table" and v2.Id == v.Id
                    if w4_3 then
                        w5 = v2
                        break
                    end
                end
            end
            local w4_4 = w5 and w5.Cost
            local w7 = tonumber(w4_4)
            local w4_5 = w5 and w5.Level
            local w8 = tonumber(w4_5) or 0
            local w4_6 = w5
            if w4_6 then
                w4_6 = w5.MaxLevel
            end
            local w5_1 = tonumber(w4_6) or math.huge
            local w4_7 = w7
            if w4_7 then
                w4_7 = w8 < w5_1
            end
            if w4_7 then
                w4_7 = w4_2 >= w7
            end
            if w4_7 then
                rM("Buying " .. v.Label)
                local w4_8 = rW(rE, { action = "buyUpgrade", upgradeId = v.Id })
                local w5_2 = type(w4_8) == "table" and w4_8.ok
                if w5_2 then
                    ga = w4_8
                    r1 = 0
                    w3 = w3 + 1
                else
                    ga = nil
                end
                task.wait(0.15)
            end
        end
    end
    return w3, ga
end
local function fn99(bi)
    local tB = {}
    if type(bi) == "table" then
        for k, v in pairs(bi) do
            if v == true then
                tB[k] = true
            elseif type(v) == "string" then
                tB[v] = true
            end
        end
    else
        local tC = bi ~= ""
        local tD = type(bi) == "string" and tC
        if tD then
            tB[bi] = true
        end
    end
    return tB
end
local function fn107(bQ)
    local t8 = type(bQ) == "table" and type(bQ.state) == "table"
    if t8 then
        r7 = bQ.state
        r1 = os.clock()
    end
    return bQ
end
local function fn111()
    while rk() do
        local xN = rR.StopAtWave and rR.StopWaveNumber or nil
        local xM_1 = xN
        if xN then
            xN = rR.RunActive
        end
        if xN then
            xN = rL() >= xM_1
        end
        if xN then
            rM("Stopping at wave " .. xM_1)
            local xN_1 = rW(ri)
            local xO = type(xN_1) == "table" and xN_1.ok
            if xO then
                rR.RunActive = false
                r1 = 0
            end
            rM("Idle")
        else
            if rR.AutoStart and not rR.RunActive then
                local xN_3 = not xM_1 or rL() < xM_1
                if xN_3 then
                    rM("Starting wave " .. rL())
                    local xM_2 = rW(rn)
                    local xN_4 = type(xM_2) == "table" and xM_2.ok
                    if xN_4 then
                        rR.RunActive = true
                        r1 = 0
                    end
                    rM("Idle")
                end
            end
        end
        task.wait(1.5)
    end
end
local function fn120()
    while rk() do
        if rR.AutoSell then
            local vO = ru(true)
            local vP = vO and vO.GolemInventory
            local vQ = {}
            local vP_1 = 0
            if type(vP) == "table" then
                local vS = rz(vO)
                local SellRarities = rR.SellRarities
                local vT = rY(SellRarities)
                local SellBelowPower = rR.SellBelowPower
                for i, v in ipairs(vP) do
                    local vR_1 = type(v) == "table" and v.Id
                    local vV = vR_1 or nil
                    local vR_2 = vV
                    if vV then
                        vV = not vS[vR_2]
                    end
                    if vV then
                        vV = v.Locked ~= true
                    end
                    if vV then
                        local vV_1 = vT
                        local vW = false
                        if vV_1 then
                            vV_1 = SellRarities[r8(v)]
                        end
                        if vV_1 then
                            vW = true
                        end
                        local vV_2 = SellBelowPower > 0 and rI(v) < SellBelowPower
                        if vV_2 then
                            vW = true
                        end
                        if vW then
                            vP_1 = vP_1 + 1
                        else
                            table.insert(vQ, vR_2)
                        end
                    end
                end
            end
            local vO_2 = rk() and vP_1 > 0
            if vO_2 then
                local vR_3 = vP_1 == 1 and "" or "s"
                rM("Selling " .. vP_1 .. " golem" .. vR_3)
                local vO_4 = true
                local vP_2 = {}
                for i, v in ipairs(vQ) do
                    if not rk() then
                        vO_4 = false
                        break
                    end
                    local vQ_1 = rW(rP, "lock", { golemId = v, locked = true })
                    local vR_4 = type(vQ_1) == "table" and vQ_1.ok
                    if vR_4 then
                        table.insert(vP_2, v)
                        task.wait(0.05)
                    else
                        vO_4 = false
                        break
                    end
                end
                if vO_4 then
                    local vO_5 = rW(rP, "sellAll", {})
                    local vQ_2 = type(vO_5) == "table" and vO_5.ok
                    if vQ_2 then
                        r1 = 0
                    end
                else
                    rM("Sell aborted: could not protect keepers")
                end
                for i, v in ipairs(vP_2) do
                    rW(rP, "lock", { golemId = v, locked = false })
                    task.wait(0.05)
                end
                r1 = 0
                rM("Idle")
            end
            task.wait(6)
        else
            task.wait(1)
        end
    end
end
local function fn121(cX)
    rR.Upgrades = rq(cX)
end
local function fn182(df)
    local va = (tonumber(df))
    local ve = if va then 1 else 0
    local vc = 2154 * ve + 1217 * (1 - ve)
    local vd = 3272 * ve + 2404 * (1 - ve)
    if not ((vc * 3372 + vd * 2623 + vc * vd) % 16777213 == 6116419) then
        va = 0
    end
    rR.SellBelowPower = math.max(0, va)
end
local function fn216(cM)
    rR.AutoRebirth = cM == true
end
local function fn239()
    local uj = ru()
    local uk = uj and uj.Progression
    local uj_1 = uk
    if uk then
        uk = uj_1.CurrentCycleWave
    end
    local uj_2 = tonumber(uk)
    local max = math.max
    local ul = tonumber(rR.Wave) or 1
    local um = uj_2 or 1
    return max(ul, um)
end
local function fn286()
    return CoreGui
end
local function fn302()
    return rR.Status
end
local function fn327(c3)
    local u7 = tonumber(c3) or 1
    rR.StopWaveNumber = math.max(1, math.floor(u7))
end
local function fn333(c1)
    rR.StopAtWave = c1 == true
end
local function fn339(da)
    rR.AutoSell = da == true
end
local function fn340()
    return rH
end
local function fn375()
    local tq = {}
    local tr = not rw
    local ts = not rB
    local tx = if ts then 1 else 0
    local tv = 1731 * tx + 1207 * (1 - tx)
    local tw = 1459 * tx + 939 * (1 - tx)
    if not ((tv * 3329 + tw * 1290 + tv * tw) % 16777213 == 10170138) then
        ts = tr
    end
    if ts then
        table.insert(tq, "GolemRemotes")
    end
    if not r5 then
        table.insert(tq, "GetPlayerState")
    end
    local ts_1 = not r0 or not rU
    local tr_2 = not rP
    local tt = ts_1
    local tA = if tt then 1 else 0
    local ty = 3381 * tA + 1134 * (1 - tA)
    local tz = 1907 * tA + 2445 * (1 - tA)
    if not ((ty * 1849 + tz * 1935 + ty * tz) % 16777213 == 16389081) then
        tt = tr_2
    end
    if tt then
        table.insert(tq, "golem remotes")
    end
    if not rn or not ri then
        table.insert(tq, "wave remotes")
    end
    if not rs or not rf then
        table.insert(tq, "GolemGame configs")
    end
    local tr_5 = not rd or not rv(rd.getPowerLevel)
    if tr_5 then
        table.insert(tq, "GolemModelBuilder (sell filters)")
    end
    return tq
end
local function fn404()
    while rk() do
        local xv = rR.AutoPotions and rY(rR.Potions)
        if xv then
            local xv_1 = {}
            for k in pairs(rR.Potions) do
                local xw_1 = potionByLabel[k]
                if xw_1 then
                    xv_1[xw_1] = true
                end
            end
            local xw_2 = rW(rt, "get")
            local xx = type(xw_2) == "table" and xw_2.Items
            local xw_3 = xx or nil
            if type(xw_3) == "table" then
                for i, v in ipairs(xw_3) do
                    if not rk() then
                        break
                    else
                        local xw_4 = type(v) == "table" and v.Id
                        local xx_2 = xw_4 or nil
                        local xx_3 = type(v) == "table" and v.Stock
                        local xy = tonumber(xx_3) or 0
                        local xy_1 = type(v) == "table" and v.Price
                        local xz = tonumber(xy_1) or math.huge
                        local xy_2 = xx_2 and xv_1[xx_2] and xy > 0 and rh() >= xz
                        if xy_2 then
                            local xx_5 = v.Name or xx_2
                            rM("Buying " .. tostring(xx_5))
                            local xx_6 = rW(rt, "buy", { PotionId = xx_2 })
                            r1 = 0
                            local xw_6 = type(xx_6) == "table" and not xx_6.Ok and not xx_6.ok
                            if xw_6 then
                                rM("Potion purchase refused")
                            end
                            task.wait(0.4)
                        end
                    end
                end
            end
            rM("Idle")
            task.wait(10)
        else
            task.wait(2)
        end
    end
end
local function fn438()
    return not rN.Unloaded
end
local function fn453(cV)
    rR.AutoUpgrades = cV == true
end
local function fn472()
    while rk() do
        if rR.AutoRoll or rR.AutoBuild then
            for i, v in ipairs(rc()) do
                if not rk() then
                    break
                end
                if rR.AutoRoll then
                    rM("Rolling station " .. v)
                    rl(r0, v, "Roll", "roll", sc)
                end
                if not rk() then
                    break
                elseif rR.AutoBuild then
                    rM("Building station " .. v)
                    rl(rU, v, "Build", "build" .. v, r4)
                end
            end
            rM("Idle")
        end
        task.wait(0.5)
    end
end
local function fn503()
    return potionEntries
end
local function fn544(c_)
    rR.AutoStart = c_ == true
end
local function fn552()
    local ua = ru()
    local ub = ua and ua.Currencies
    local ua_1 = ub
    if ub then
        ub = ua_1.Coins
    end
    local ua_2 = (tonumber(ub))
    local ui = if ua_2 then 1 else 0
    local ug = 2714 * ui + 1838 * (1 - ui)
    local uh = 2020 * ui + 1766 * (1 - ui)
    if not ((ug * 2550 + uh * 3983 + ug * uh) % 16777213 == 3671427) then
        ua_2 = 0
    end
    return ua_2
end
local function fn612(U)
    local s5 = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if s5 then
        return cloneref(U)
    end
    return U
end
local function fn623(cQ)
    rR.QuestTracks = rq(cQ)
end
local function fn668(bG)
    local t1 = os.clock()
    local t2 = not bG
    if t2 ~= false then
        t2 = r7
    end
    if t2 then
        t2 = t1 - r1 < 2
    end
    if t2 then
        return r7
    end
    local t2_1 = rW(r5)
    local t3 = type(t2_1) == "table" and t2_1.ok and type(t2_1.state) == "table"
    if t3 then
        r7 = t2_1.state
        r1 = t1
    end
    return r7
end
local function fn696(cI)
    rR.AutoBuild = cI == true
end
local function fn708(fo)
    local wr = type(fo) ~= "table"
    local ww = if wr then 1 else 0
    local wu = 4027 * ww + 2302 * (1 - ww)
    local wv = 2426 * ww + 2403 * (1 - ww)
    if not ((wu * 4044 + wv * 1123 + wu * wv) % 16777213 == 12001875) then
        wr = not fo.ok
    end
    if wr then
        return false
    end
    local ready = fo.ready
    if ready == true then
        return true
    end
    local ws = (tonumber(ready))
    local ww_1 = if ws then 1 else 0
    local wu_1 = 2638 * ww_1 + 3554 * (1 - ww_1)
    local wv_1 = 511 * ww_1 + 2122 * (1 - ww_1)
    if not ((wu_1 * 724 + wv_1 * 2526 + wu_1 * wv_1) % 16777213 == 4548716) then
        ws = 0
    end
    return ws > 0
end
local function fn713(cO)
    rR.AutoQuests = cO == true
end
local function fn748(cT)
    rR.AutoGifts = cT == true
end
local function fn807()
    while rk() do
        if rR.AutoQuests then
            local wg = rW(rC, "get")
            local wh = type(wg) == "table" and wg.quests
            local wg_1 = wh or nil
            if type(wg_1) == "table" then
                local wg_2 = rY(rR.QuestTracks)
                for i, v in ipairs(wg_1) do
                    if not rk() then
                        break
                    else
                        local wh_2 = type(v) == "table" and v.Track
                        local wi = wh_2 or "Main"
                        local wh_3 = (not wg_2 or rR.QuestTracks[wi] == true) and v.Claimable and not v.Claimed and type(v.Id) == "string"
                        if wh_3 then
                            local wh_4 = v.DisplayName or v.Id
                            rM("Claiming quest " .. tostring(wh_4))
                            rW(rC, "claim", { questId = v.Id })
                            r1 = 0
                            task.wait(0.3)
                        end
                    end
                end
                rM("Idle")
            end
            task.wait(8)
        else
            task.wait(2)
        end
    end
end
local function fn845(am, an)
    local ti_1
    local tg = r6(am, an, 20)
    local th = not tg or not tg:IsA("ModuleScript")
    local th_1
    if th then
        return nil
    end
    th_1, ti_1 = pcall(require, tg)
    return th_1 and ti_1 or nil
end
local function fn873()
    local us_1
    local uo = r2
    local uo_1, uo_2
    local up
    local uq = {}
    local ur = {}
    if uo then
        uo = rv(r2.waitForLocal)
    end
    if uo then
        uo_1, us_1 = pcall(r2.waitForLocal)
        if uo_1 then
            up = us_1
        end
    end
    if typeof(up) == "Instance" then
        for i, child in ipairs(up:GetChildren()) do
            if child.Name == "golemRoll" then
                uo_2 = 1
            else
                uo_2 = tonumber(string.match(child.Name, "^golemRoll_(%d+)$"))
            end
            if uo_2 and not ur[uo_2] then
                ur[uo_2] = true
                table.insert(uq, uo_2)
            end
        end
    end
    if #uq == 0 then
        local uo_3 = ru()
        local max = math.max
        local floor = math.floor
        local us_2 = uo_3 and uo_3.RollStationCount
        local uo_4 = tonumber(us_2) or 1
        local us_3 = max(1, floor(uo_4))
        local uC = 1
        while uC <= us_3 do
            local uD = uC
            table.insert(uq, uD)
            uC += 1
        end
    end
    table.sort(uq)
    return uq
end
local function fn897()
    while rk() do
        ru(true)
        task.wait(5)
    end
end
local function fn905()
    while rk() do
        if rR.AutoEquipBest then
            rM("Equipping best golems")
            rF(rW(rP, "equipBest", {}))
            rM("Idle")
            task.wait(4)
        else
            task.wait(1)
        end
    end
end
local function fn917(dR, dS, dT, dU, dV)
    local vu
    local vt = dV
    local vz = 1
    while true do
        if not (vz <= 6) then
            return false
        end
        if not rk() then
            return false
        end
        rS(dU, dV)
        local vu_1 = rW(dR, { station = dS })
        if type(vu_1) ~= "table" then
            return false
        end
        if vu_1.ok then
            r1 = 0
            return true
        end
        local vv = vu_1.error or "refused"
        vu = tostring(vv)
        local vv_1 = not vu:find("fast") and not vu:find("cooling")
        if vv_1 then
            break
        end
        vt = math.min(vt * 1.5, 6)
        rZ[dU] = os.clock() + vt
        vz += 1
    end
    rM(dT .. ": " .. vu)
    return false
end
local function fn926(aD, aE)
    local tl = rw and rw[aD] or nil
    if type(tl) ~= "string" then
        return nil
    end
    local tl_1 = rB and r6(rB, tl, 20)
    local tk_2 = tl_1
    if tl_1 then
        tl_1 = tk_2:IsA(aE)
    end
    if tl_1 then
        return tk_2
    end
    return nil
end
local function fn949(cv)
    local uL = rI(cv)
    for i, v in ipairs(rX) do
        if uL < v.Below then
            return v.Name
        end
    end
    return rX[#rX].Name
end
local function fn983()
    local xt_1
    local xs_1
    local xr_1
    while rk() do
        local xn = rR.AutoUpgrades and rY(rR.Upgrades)
        if xn then
            local xn_1 = ro()
            local xo = 0
            local xp
            local xq
            repeat
                xs_1, xq = rQ(xn_1, xq)
                xr_1, xp = rj(xn_1, xp)
                xo = xo + 1
                xt_1 = not rk() or xs_1 + xr_1 == 0 or xo >= 50
            until xt_1
            rM("Idle")
            task.wait(1.5)
        else
            task.wait(2)
        end
    end
end
local function fn1009(bn)
    for k in pairs(bn) do
        return true
    end
    return false
end
local function fn1016(cA)
    local uT = cA
    local uU = {}
    if uT then
        uT = cA.PlacedGolems
    end
    local uV = uT
    if type(uV) == "table" then
        for k, v in pairs(uV) do
            if type(v) == "string" then
                uU[v] = true
            end
        end
    end
    return uU
end
local function fn1048(X)
    return type(X) == "function"
end
local function fn1069()
    return upgradeEntries
end
local function fn1091(bA, ...)
    local t__1
    local tZ = not bA or not rk()
    local tZ_1
    if tZ then
        return nil
    end
    tZ_1, t__1 = pcall(bA.InvokeServer, bA, ...)
    if not tZ_1 then
        return nil
    end
    return t__1
end
local function fn1108(c5)
    rR.AutoPotions = c5 == true
end
local function fn1139()
    local wx, wy, wz
    while rk() do
        if rR.AutoGifts then
            local wC = false
            for i, v in ipairs(r3) do
                local wB = 12
                while true do
                    if wB < 9 then
                        if wB < 4 then
                            if wB < 2 then
                                if wB < 1 then
                                    wy = wx < 20
                                    wB = 18
                                else
                                    wB = 2
                                end
                            elseif wB < 3 then
                                wB = 15
                            else
                                wB = 17
                            end
                        elseif wB < 6 then
                            if wB < 5 then
                                wz = not wy.ok
                                wB = 9
                            else
                                wx = 0
                                wB = 17
                            end
                        elseif wB < 7 then
                            wB = 2
                        elseif wB < 8 then
                            wy = rW(ry, { action = "get", track = v })
                            wB = if not rV(wy) then 1 else 16
                        else
                            wB = 11
                        end
                    elseif wB < 14 then
                        if wB < 11 then
                            if wB < 10 then
                                wB = if wz then 10 else 14
                            else
                                wB = 2
                            end
                        elseif wB < 12 then
                            wC = true
                            wB = 15
                        elseif wB < 13 then
                            wB = if not rk() then 8 else 5
                        else
                            wy = (rk())
                            wB = if wy then 0 else 18
                        end
                    elseif wB < 16 then
                        if wB < 15 then
                            task.wait(0.3)
                            wB = 3
                        else
                            break
                        end
                    elseif wB < 17 then
                        rM("Claiming " .. v .. " gift")
                        wy = rW(ry, { action = "claim", track = v })
                        wx = wx + 1
                        r1 = 0
                        wz = type(wy) ~= "table"
                        wB = if wz then 9 else 4
                    elseif wB < 18 then
                        wB = 13
                    else
                        wB = if wy then 7 else 6
                    end
                end
                if wC then
                    break
                end
            end
            rM("Idle")
            task.wait(10)
        else
            task.wait(2)
        end
    end
end
local function fn1150(fG, fH)
    local wQ = 0
    for i, v in ipairs(fG) do
        if not rk() then
            break
        elseif v.Kind == "coin" then
            local wR = fH or rW(rK, "get")
            fH = wR
            local wR_1 = type(fH) ~= "table" or not fH.ok
            if wR_1 then
                return wQ, nil
            end
            local wR_2 = type(fH.costs) == "table" and fH.costs
            local wT = wR_2 or {}
            local wS_1 = type(fH.config) == "table" and fH.config
            local wU = wS_1 or {}
            local wT_2 = type(fH.state) == "table" and fH.state.Upgrades
            local wV = wT_2 or {}
            local wU_2 = type(fH.state) == "table" and fH.state.Currencies
            local wU_3 = wU_2 or {}
            local wV_2 = tonumber(wT[v.Id])
            local wR_4 = type(wV) == "table" and wV[v.Id]
            local wT_4 = tonumber(wR_4) or 0
            local wT_5 = type(wU[v.Id]) == "table" and wU[v.Id].MaxLevel
            local wS_3 = tonumber(wT_5) or math.huge
            local wS_4 = type(wU_3) == "table" and wU_3.Coins
            local wU_4 = tonumber(wS_4) or 0
            local wS_5 = wV_2
            if wS_5 then
                wS_5 = wT_4 < wS_3
            end
            if wS_5 then
                wS_5 = wU_4 >= wV_2
            end
            if wS_5 then
                rM("Buying " .. v.Label)
                local wR_6 = rW(rK, "purchase", { upgradeId = v.Id })
                local wS_6 = type(wR_6) == "table" and wR_6.ok
                if wS_6 then
                    fH = wR_6
                    r1 = 0
                    wQ = wQ + 1
                else
                    fH = nil
                end
                task.wait(0.15)
            end
        end
    end
    return wQ, fH
end
local function fn1163()
    gethui = r9
end
local function fn1178(c7)
    rR.Potions = rq(c7)
end
local function fn1182(cp)
    local uG_1
    local uJ_3
    local uI_3
    if type(cp) ~= "table" then
        return 0
    end
    local uF = rd and rv(rd.getPowerLevel)
    local uF_1
    if uF then
        uF_1, uG_1 = pcall(rd.getPowerLevel, cp)
        if uF_1 then
            local uF_2 = tonumber(uG_1)
            if uF_2 then
                return uF_2
            end
            local uF_3 = (tonumber(cp.BodyPower))
            if not ((uI_3 * 631 + uJ_3 * 338 + uI_3 * uJ_3) % 16777213 == 7611131) then
                uF_3 = 0
            end
            return uF_3
        end
        local uF_4 = (tonumber(cp.BodyPower))
        if not ((uI_3 * 631 + uJ_3 * 338 + uI_3 * uJ_3) % 16777213 == 7611131) then
            uF_4 = 0
        end
        return uF_4
    end
    local uF_5 = (tonumber(cp.BodyPower))
    local uK_3 = if uF_5 then 1 else 0
    uI_3 = 2645 * uK_3 + 2632 * (1 - uK_3)
    uJ_3 = 1992 * uK_3 + 2648 * (1 - uK_3)
    if not ((uI_3 * 631 + uJ_3 * 338 + uI_3 * uJ_3) % 16777213 == 7611131) then
        uF_5 = 0
    end
    return uF_5
end
local function fn1200()
    local wH = {}
    for i, v in ipairs(upgradeEntries) do
        if rR.Upgrades[v] then
            local wI = upgradeByLabel[v]
            if wI then
                table.insert(wH, { Label = v, Kind = wI.Kind, Id = wI.Id })
            end
        end
    end
    return wH
end
local function fn1202(a0)
    rR.Status = a0
end
local function fn1215(cG)
    rR.AutoRoll = cG == true
end
local function fn1222()
    while rk() do
        if rR.AutoRebirth then
            local wd = rW(rE, { action = "get" })
            local we = type(wd) == "table" and wd.ok and wd.canRebirth == true
            if we then
                rM("Rebirthing")
                rW(rE, { action = "rebirth" })
                r1 = 0
                rM("Idle")
            end
            task.wait(10)
        else
            task.wait(2)
        end
    end
end
local function fn1228(dK, dL)
    local vq = rZ[dK]
    while true do
        local vr = rk() and vq and os.clock() < vq
        if vr then
            task.wait(math.min(0.25, vq - os.clock()))
            vq = rZ[dK]
            continue
        end
        break
    end
    rZ[dK] = os.clock() + dL
end
rc = nil
rd = nil
rf = nil
rh = nil
ri = nil
rj = nil
rk = nil
rl = nil
rn = nil
ro = nil
rq = nil
rs = nil
rt = nil
ru = nil
rv = nil
rw = nil
ry = nil
rz = nil
CoreGui = nil
rB = nil
rC = nil
rE = nil
rF = nil
rH = nil
rI = nil
rK = nil
rL = nil
rM = nil
rN = nil
rP = nil
rQ = nil
rR = nil
rS = nil
rU = nil
rV = nil
rW = nil
rX = nil
rY = nil
rZ = nil
local Players, re, LocalPlayer, Workspace, rp, Lighting, TeleportService, GuiService, rJ, rO, UserInputService
r0 = nil
r1 = nil
r2 = nil
r3 = nil
r4 = nil
r5 = nil
r6 = nil
r7 = nil
r8 = nil
r9 = nil
sa = nil
sc = nil
local RunService, sb
local sj_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, rO, rJ, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, r9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if (not r9 or not Workspace or rJ and Workspace) and ((not Workspace or not Workspace) and (r9 or Workspace)) and ((not GuiService or GuiService) and (not UserInputService and not r9) or (Workspace or not Workspace) and (r9 and not UserInputService)) or (Workspace and GuiService or (not r9 or GuiService) or Workspace and r9 and (r9 or not r9)) and (Workspace and not r9 and (not GuiService or Workspace) and (rJ or not UserInputService or not r9 and rJ)) or not ((not r9 or not Workspace or rJ and Workspace) and ((not Workspace or not Workspace) and (r9 or Workspace)) and ((not GuiService or GuiService) and (not UserInputService and not r9) or (Workspace or not Workspace) and (r9 and not UserInputService)) or (Workspace and GuiService or (not r9 or GuiService) or Workspace and r9 and (r9 or not r9)) and (Workspace and not r9 and (not GuiService or Workspace) and (rJ or not UserInputService or not r9 and rJ))) then
    rO = game:GetService("VirtualUser")
    rJ = game:GetService("HttpService")
else
    rJ = game:GetService("VirtualUser")
    rO = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local se = "OuroborosBuildGolemsAndFight"
r9 = fn286
if getgenv then
    getgenv().gethui = r9
end
rN, rB, rw, rs, rf, rd, sa, r2, r5, r0, rU, rP, rK, rE, rC, ry, rt, rn, ri, re, sb, r3, rX, rR, rH, rp, sj_1, rv, rk, r6, rM, rq, rY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1163)
local function sl(t)
    local sZ
    local sX
    local sY
    sX = nil
    sY = nil
    sZ = nil
    local s_ = t ~= ""
    local s0 = type(t) == "string" and s_
    assert(s0, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    sX = getgenv()
    assert(type(sX) == "table", "getgenv did not return a table")
    local s__1 = sX[t]
    if s__1 ~= nil then
        local s0_1 = type(s__1) == "table" and type(s__1.Unload) == "function"
        assert(s0_1, "Namespace is occupied")
        s__1.Unload()
        assert(sX[t] == nil, "Previous instance did not release its namespace")
    end
    sY = {}
    sZ = { State = {}, Unloaded = false }
    sZ.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if sZ.Unloaded then
            z()
        else
            table.insert(sY, z)
        end
        return z
    end
    sZ.Unload = function()
        local sQ_1
        local sP_1
        if sZ.Unloaded then
            return
        end
        sZ.Unloaded = true
        local sN = {}
        local sU = #sY
        local sT = -1
        while false and sU <= 1 or true and sU >= 1 do
            local sV = sU
            local sO_1 = table.remove(sY, sV)
            sP_1, sQ_1 = pcall(sO_1)
            if not sP_1 then
                table.insert(sN, tostring(sQ_1))
            end
            sU += sT
        end
        table.clear(sZ.State)
        if #sN > 0 then
            error("Cleanup incomplete: " .. table.concat(sN, "; "), 0)
        end
        if sX[t] == sZ then
            sX[t] = nil
        end
    end
    sX[t] = sZ
    return sZ
end
rp = function(M, N)
    local s3 = type(M) == "table" and type(M.Track) == "function"
    assert(s3, "FeatureAPI required")
    local s3_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(s3_1, "UI library required")
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
rN = sl(se)
if ((rd or rd or (rn or not rd)) and (rn and rd and (rd or rd)) or (not rd or rd) and (rd and rd) and (not rd or rn or rd and rn)) and not ((rd or rd or (rn or not rd)) and (rn and rd and (rd or rd)) or (not rd or rd) and (rd and rd) and (not rd or rn or rd and rn)) then
else
    sj_1 = fn612
end
rv = fn1048
rk = fn438
local sd = sj_1(ReplicatedStorage)
r6 = function(ac, ad, ae)
    local td_1
    if not ac then
        return nil
    end
    local tc = ac:FindFirstChild(ad)
    local tc_1
    if tc then
        return tc
    end
    tc_1, td_1 = pcall(function()
        local ta = ae or 15
        return ac:WaitForChild(ad, ta)
    end)
    return tc_1 and td_1 or nil
end
local si = r6(sd, "GolemGame", 30)
rB = r6(sd, "GolemRemotes", 30)
rw = fn845(si, "RemoteNames")
rs = fn845(si, "UpgradeConfig")
fn845(si, "RebirthUpgradeConfig")
rf = fn845(si, "PotionConfig")
rd = fn845(si, "GolemModelBuilder")
sa = fn845(si, "QuestConfig")
r2 = fn845(si, "BaseRegistry")
r5 = fn926("GetPlayerState", "RemoteFunction")
r0 = fn926("SimpleRollRequest", "RemoteFunction")
rU = fn926("BuildGolemRequest", "RemoteFunction")
rP = fn926("PlaceGolemRequest", "RemoteFunction")
rK = fn926("UpgradeRequest", "RemoteFunction")
rE = fn926("RebirthRequest", "RemoteFunction")
rC = fn926("QuestRequest", "RemoteFunction")
ry = fn926("GiftRequest", "RemoteFunction")
rt = fn926("PotionShopRequest", "RemoteFunction")
rn = fn926("StartWave", "RemoteFunction")
ri = fn926("StopWave", "RemoteFunction")
re = fn926("WaveResult", "RemoteEvent")
sb = fn926("DeploymentState", "RemoteEvent")
r3 = { "playtime", "daily" }
rX = {
    { Name = "Common", Below = 10000 },
    { Name = "Rare", Below = 25000 },
    { Name = "Epic", Below = 75000 },
    { Name = "Legendary", Below = 200000 },
    { Name = "Mythic", Below = math.huge }
}
if rR and r2 and (not rR or rR) and (r2 or not r2 or (not rN or not r2)) and not (rR and r2 and (not rR or rR) and (r2 or not r2 or (not rN or not r2))) then
    rN = rM.State
    rN.Status = "Idle"
    rN.AutoRoll = false
    rN.AutoBuild = false
    rN.AutoEquipBest = false
    rN.AutoRebirth = false
    rN.AutoQuests = false
    rN.QuestTracks = {}
    rN.AutoGifts = false
    rN.AutoUpgrades = false
    rN.Upgrades = {}
    rN.AutoStart = false
    rN.StopAtWave = false
    rN.StopWaveNumber = 25
    rN.AutoPotions = false
    rN.Potions = {}
    rN.AutoSell = false
    rN.SellRarities = {}
    rN.SellBelowPower = 0
    rN.RunActive = false
    rN.Wave = 1
    rR = fn1202
else
    rR = rN.State
    rR.Status = "Idle"
    rR.AutoRoll = false
    rR.AutoBuild = false
    rR.AutoEquipBest = false
    rR.AutoRebirth = false
    rR.AutoQuests = false
    rR.QuestTracks = {}
    rR.AutoGifts = false
    rR.AutoUpgrades = false
    rR.Upgrades = {}
    rR.AutoStart = false
    rR.StopAtWave = false
    rR.StopWaveNumber = 25
    rR.AutoPotions = false
    rR.Potions = {}
    rR.AutoSell = false
    rR.SellRarities = {}
    rR.SellBelowPower = 0
    rR.RunActive = false
    rR.Wave = 1
    rM = fn1202
end
rN.GetStatus = fn302
rN.Support = fn375
rq = fn99
rY = fn1009
rH = {}
for i, v in ipairs(rX) do
    table.insert(rH, v.Name)
end
r7, r1, sc, r4, rZ, rW, ru, rF, rh, rL, rc, rI, r8, rz, rS, rl, rV, ro, rQ, rj = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
rN.RarityValues = fn340
rN.UpgradeValues = fn1069
rN.PotionValues = fn503
rN.QuestTrackValues = fn41
r7 = nil
r1 = 0
rW = fn1091
ru = fn668
rF = fn107
rh = fn552
rL = fn239
rc = fn873
rI = fn1182
r8 = fn949
rz = fn1016
rN.SetAutoRoll = fn1215
rN.SetAutoBuild = fn696
rN.SetAutoEquipBest = fn39
rN.SetAutoRebirth = fn216
rN.SetAutoQuests = fn713
rN.SetQuestTracks = fn623
rN.SetAutoGifts = fn748
rN.SetAutoUpgrades = fn453
rN.SetUpgrades = fn121
rN.SetAutoStart = fn544
rN.SetStopAtWave = fn333
rN.SetStopWaveNumber = fn327
rN.SetAutoPotions = fn1108
rN.SetPotions = fn1178
rN.SetAutoSell = fn339
rN.SetSellRarities = fn53
rN.SetSellBelowPower = fn182
local function sm_1()
    local connection
    local connection2
    if sb then
        connection2 = sb.OnClientEvent:Connect(function(dj)
            if type(dj) ~= "table" then
                return
            end
            local vf = tonumber(dj.wave)
            if vf then
                rR.Wave = vf
            end
            if dj.status == "deployed" or dj.status == "running" then
                rR.RunActive = true
            elseif dj.status ~= nil then
                rR.RunActive = false
            end
        end)
        rN.Track(function()
            connection2:Disconnect()
        end)
    end
    if re then
        connection = re.OnClientEvent:Connect(function(du)
            if type(du) ~= "table" then
                return
            end
            rF(du)
            local vh = type(du.state) == "table" and du.state.Progression
            local vi = vh or nil
            local vh_1 = vi
            if vi then
                vi = vh_1.CurrentCycleWave
            end
            local vh_2 = tonumber(vi) or tonumber(du.nextWave)
            if vh_2 then
                rR.Wave = vh_2
            end
            if du.won and not du.runEnded and du.continueWaves then
                rR.RunActive = true
            else
                rR.RunActive = false
            end
        end)
        rN.Track(function()
            connection:Disconnect()
        end)
    end
end
sm_1()
sc = 2
r4 = 1.4
rZ = {}
rS = fn1228
rl = fn917
sl = fn905
rV = fn708
ro = fn1200
rQ = fn1150
rj = fn63
local sp = { fn472, sl, fn120, fn1222, fn807, fn1139, fn983, fn404, fn111, fn897 }
local sd_2 = 10
for i = 1, sd_2 do
    local rG
    local sd_3 = sp[i]
    assert(type(sd_3) == "function", "Worker " .. i .. " is missing")
    rG = task.spawn(sd_3)
    rN.Track(function()
        if coroutine.status(rG) ~= "dead" then
            pcall(task.cancel, rG)
        end
    end)
end
local function sd_4()
    local hp = "https://discord.gg/synapsex"
    local hn = "Build Golems and Fight"
    local hq = "https://rscripts.net/@Ouroboros"
    local hr = "https://ouroboros-hub-rbx.web.app/"
    local ho = "v0.2"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    rp(rN, Library)
    local function hA(hB, hC)
        local xV = rv(setclipboard) and setclipboard
        local xW = xV
        local x3 = if xW then 1 else 0
        local x1 = 2930 * x3 + 2024 * (1 - x3)
        local x2 = 2184 * x3 + 2548 * (1 - x3)
        if not ((x1 * 45 + x2 * 3446 + x1 * x2) % 16777213 == 14057034) then
            local xV_1 = rv(toclipboard) and toclipboard
            local xX = xV_1
            local x3_1 = if xX then 1 else 0
            local x1_1 = 2434 * x3_1 + 2992 * (1 - x3_1)
            local x2_1 = 3572 * x3_1 + 3581 * (1 - x3_1)
            if not ((x1_1 * 1500 + x2_1 * 2540 + x1_1 * x2_1) % 16777213 == 4640915) then
                xX = nil
            end
            xW = xX
        end
        local xV_2 = xW
        if not xV_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local xW_1 = pcall(xV_2, hB)
        if xW_1 then
            Library:Notify(hC)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        hA(hp, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = hp, Copyable = true }, "|", hn, "|", ho },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local hP = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local function hQ(hR)
        local DiscordGroup = hR:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    hQ(hP[2])
    hQ(hP[3])
    hQ(hP[4])
    local function hU()
        local hV
        local ih
        hV = "#ffb6c1"
        local function hW(hX)
            local hY = tostring(hX):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;")
            return string.format('<font color="%s">%s</font>', hV, hY)
        end
        local BattleGroup = hP[2]:AddRightGroupbox("Battle", "swords")
        local Label = BattleGroup:AddLabel(hW("Idle"), true)
        BattleGroup:AddDivider()
        BattleGroup:AddToggle("AutoStart", { Text = "Auto Start Wave", Default = false, Callback = rN.SetAutoStart })
        BattleGroup:AddToggle("StopAtWave", { Text = "Stop At Wave", Default = false, Callback = rN.SetStopAtWave })
        BattleGroup:AddInput("StopWaveNumber", { Text = "Stop Wave Number", Default = "25", Numeric = true, Callback = rN.SetStopWaveNumber })
        local GolemsGroup = hP[2]:AddLeftGroupbox("Golems", "hammer")
        GolemsGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Callback = rN.SetAutoRoll })
        GolemsGroup:AddToggle("AutoBuild", { Text = "Auto Build", Default = false, Callback = rN.SetAutoBuild })
        GolemsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = rN.SetAutoEquipBest })
        GolemsGroup:AddLabel(hW("Auto Roll and Auto Build run server side, so the station shows no roll or build animation."), true)
        GolemsGroup:AddDivider()
        GolemsGroup:AddToggle("AutoSell", {
            Text = "Auto Sell Golems",
            Default = false,
            Tooltip = "Sells golems that match the filters below. Equipped and locked golems are never sold.",
            Callback = rN.SetAutoSell
        })
        GolemsGroup:AddDropdown("SellRarities", {
            Text = "Sell Rarity Filter",
            Values = rN.RarityValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = rN.SetSellRarities
        })
        GolemsGroup:AddInput("SellBelowPower", { Text = "Sell Below Power Level", Default = "0", Numeric = true, Callback = rN.SetSellBelowPower })
        local ShopsGroup = hP[2]:AddRightGroupbox("Shops", "shopping-cart")
        ShopsGroup:AddToggle("AutoUpgrades", { Text = "Auto Buy Upgrades", Default = false, Callback = rN.SetAutoUpgrades })
        ShopsGroup:AddDropdown("UpgradeList", {
            Text = "Upgrade Filter",
            Values = rN.UpgradeValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = rN.SetUpgrades
        })
        ShopsGroup:AddDivider()
        ShopsGroup:AddToggle("AutoPotions", { Text = "Auto Buy Potions", Default = false, Callback = rN.SetAutoPotions })
        ShopsGroup:AddDropdown("PotionList", {
            Text = "Potion Filter",
            Values = rN.PotionValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = rN.SetPotions
        })
        local RewardsGroup = hP[2]:AddLeftGroupbox("Rewards", "gift")
        RewardsGroup:AddToggle("AutoQuests", { Text = "Auto Claim Quests", Default = false, Callback = rN.SetAutoQuests })
        RewardsGroup:AddDropdown("QuestTracks", {
            Text = "Quest Track Filter",
            Values = rN.QuestTrackValues(),
            Default = nil,
            Multi = true,
            AllowNull = true,
            Callback = rN.SetQuestTracks
        })
        RewardsGroup:AddToggle("AutoGifts", { Text = "Auto Claim Gifts", Default = false, Callback = rN.SetAutoGifts })
        RewardsGroup:AddDivider()
        RewardsGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = rN.SetAutoRebirth })
        local h6
        ih = task.spawn(function()
            while rk() do
                local x4 = rN.GetStatus()
                if x4 ~= h6 then
                    h6 = x4
                    Label:SetText(hW(x4))
                end
                task.wait(0.35)
            end
        end)
        rN.Track(function()
            if coroutine.status(ih) ~= "dead" then
                pcall(task.cancel, ih)
            end
        end)
    end
    hU()
    local function ij()
        local yx
        local yC
        local yH
        local yD
        yx = nil
        yC = nil
        yD = nil
        yH = nil
        local yv, Label2, Label3, yz, yA, Label, yE, yF, yG
        yH = function(il)
            return (tostring(il):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        yD = function(io, ip)
            return string.format('<font color="%s">%s</font>', ip, yH(io))
        end
        yv = function(is, it, iu)
            return string.format("<b>%s</b> %s %s", is, yD("-", "#5a6070"), yD(it, iu))
        end
        yG = "#7fd47f"
        local yI = "#8b93a3"
        local yJ = "#6ec1ff"
        yA = "#e8a34d"
        local yK = rN.Support()
        local yM = #yK == 0 and "ready"
        local yQ = if yM then 1 else 0
        local yO = 353 * yQ + 1496 * (1 - yQ)
        local yP = 715 * yQ + 2080 * (1 - yQ)
        if not ((yO * 1071 + yP * 4022 + yO * yP) % 16777213 == 3506188) then
            yM = "limited: " .. table.concat(yK, ", ")
        end
        yE = "Unknown"
        local yK_1 = yM
        pcall(function()
            local x8_1
            local x7_1
            if rv(identifyexecutor) then
                x8_1, x7_1 = identifyexecutor()
                local x9 = x8_1 ~= ""
                local ya = type(x8_1) == "string" and x9
                if ya then
                    local x9_1 = type(x7_1) == "string" and x7_1 ~= "" and x8_1 .. " " .. x7_1
                    yE = x9_1 or x8_1
                end
            end
        end)
        yx = os.clock()
        yF = function()
            local yi = math.floor(os.clock() - yx)
            if yi < 60 then
                return yi .. "s"
            elseif yi < 3600 then
                return string.format("%dm %ds", yi // 60, yi % 60)
            else
                return string.format("%dh %dm", yi // 3600, yi % 3600 // 60)
            end
        end
        local UserGroup = hP[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(yv("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, yG), true)
        UserGroup:AddLabel(yv("UserId", tostring(LocalPlayer.UserId), yJ), true)
        UserGroup:AddLabel(yv("Executor", yE .. "  " .. yK_1, yG), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(yv("Session", yF(), yA), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                hA(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                hA("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = hP[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(yv("Game", hn, yJ), true)
        Label2 = SessionGroup:AddLabel(yv("Players", "0/0", yG), true)
        yz = tostring(game.JobId)
        local yJ_1 = #yz > 18 and string.sub(yz, 1, 18) .. "..."
        local yL_2 = yJ_1 or yz
        SessionGroup:AddLabel(yv("Job", yL_2, yI), true)
        Label = SessionGroup:AddLabel(yv("Ping", "0 ms", yA), true)
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
                hA(yz, "Copied Job ID")
            end
        })
        yC = task.spawn(function()
            local yo_1
            local yn_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(yv("Session", yF(), yA))
                Label2:SetText(yv("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), yG))
                yn_1, yo_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local yn_2 = yn_1 and yo_1 .. " ms" or "n/a"
                Label:SetText(yv("Ping", yn_2, yA))
            end
        end)
        rN.Track(function()
            local yu = if coroutine.status(yC) ~= "dead" then 1 else 0
            if yu == 1 then
                pcall(task.cancel, yC)
            end
        end)
        local SocialsGroup = hP[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                hA(hq, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                hA(hr, "Copied website link")
            end
        })
    end
    ij()
    local function jA()
        local jG
        local jH
        local jF
        local jI
        local MovementGroup = hP[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = hP[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        jG = {}
        local jE = {}
        jI = {}
        jF = {}
        jH = {}
        local function jJ()
            for k, v in jF do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(jF)
        end
        local function jN()
            for k, v in jG do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(jG)
        end
        local function jR()
            for k, v in jH do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(jH)
        end
        local function jV(jW)
            if not jW:IsA("ProximityPrompt") then
                return
            end
            if jI[jW] == nil then
                jI[jW] = {
                    HoldDuration = jW.HoldDuration,
                    MaxActivationDistance = jW.MaxActivationDistance,
                    RequiresLineOfSight = jW.RequiresLineOfSight
                }
            end
            jW.HoldDuration = 0
            jW.MaxActivationDistance = 50
            jW.RequiresLineOfSight = false
        end
        local function jY()
            for k, v in jI do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(jI)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                jR()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                jN()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                jJ()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(jV, v)
                end
            else
                jY()
            end
        end)
        table.insert(jE, Workspace.DescendantAdded:Connect(function(kg)
            if Toggles.InstantProximityPrompt.Value then
                jV(kg)
            end
        end))
        table.insert(jE, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if jF[v] == nil then
                        jF[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(jE, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zH = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and zH then
                zH:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(jE, RunService.RenderStepped:Connect(function(kD)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local zN = Character and Character:FindFirstChildOfClass("Humanoid")
            local zO = Character
            if zO then
                zO = Character:FindFirstChild("HumanoidRootPart")
            end
            local zM_1 = zO
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and zN then
                if jG[zN] == nil then
                    jG[zN] = zN.WalkSpeed
                end
                zN.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and zM_1 and zN and CurrentCamera then
                if jH[zN] == nil then
                    jH[zN] = zN.PlatformStand
                end
                zN.PlatformStand = true
                local zO_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        zO_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        zO_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        zO_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        zO_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        zO_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        zO_4 -= Vector3.new(0, 1, 0)
                    end
                end
                zM_1.AssemblyLinearVelocity = Vector3.zero
                if zO_4.Magnitude > 0 then
                    zM_1.CFrame = zM_1.CFrame + zO_4.Unit * Options.FlySpeed.Value * kD
                end
            end
        end))
        rN.Track(function()
            for k, v in jE do
                v:Disconnect()
            end
            jJ()
            jN()
            jR()
            jY()
        end)
    end
    jA()
    local function kT()
        local A3, A4, A5, A6, A7, A8, A9, Ba, Bb, Bc, Label, Be, Bf, Bg
        Be = {}
        A8 = {}
        A5 = nil
        Bg = 0
        A6 = 0
        Ba = false
        Bb = os.clock()
        local MenuGroup = hP[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        A3 = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local z2 = not CurrentCamera or not rv(rO.CaptureController) or not rv(rO.ClickButton2)
            if z2 then
                return false
            end
            local z2_1 = pcall(function()
                rO:CaptureController()
                rO:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not z2_1 then
                return false
            end
            A6 += 1
            Bb = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. A6)
            end)
            return true
        end
        Bc = function(lm)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not lm)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not lm
                end
            end)
            if not lm then
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
        A9 = function(lC)
            local z8 = lC.ClassName == "ParticleEmitter" or lC.ClassName == "Trail" or lC.ClassName == "Smoke" or lC.ClassName == "Fire"
            local Ac = if z8 then 1 else 0
            local Aa = 189 * Ac + 1047 * (1 - Ac)
            local Ab = 2945 * Ac + 1299 * (1 - Ac)
            if not ((Aa * 2040 + Ab * 525 + Aa * Ab) % 16777213 == 2488290) then
                z8 = lC.ClassName == "Sparkles"
            end
            if not z8 then
                z8 = lC.ClassName == "Explosion"
            end
            if not z8 then
                z8 = lC.ClassName == "Beam"
            end
            if z8 then
                if Be[lC] == nil then
                    Be[lC] = lC.Enabled
                end
                pcall(function()
                    lC.Enabled = false
                end)
            end
        end
        A7 = function()
            for k, v in Be do
                local Ah = k
                local Aj = v
                if Ah.Parent then
                    pcall(function()
                        Ah.Enabled = Aj
                    end)
                end
            end
            table.clear(Be)
            if A5 then
                pcall(function()
                    settings().Rendering.QualityLevel = A5.Quality
                end)
                Lighting.GlobalShadows = A5.Shadows
                Lighting.FogEnd = A5.Fog
                A5 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(lR)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not lR)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(lW)
                if lW then
                    if not A5 then
                        A5 = {
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
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(A9, v)
                    end
                else
                    A7()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Bc(true)
        local ScriptGroup = hP[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Bc(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Bc(true)
        end
        table.insert(A8, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                A3()
            end
        end))
        table.insert(A8, Workspace.DescendantAdded:Connect(function(me)
            if Toggles.FpsBoost.Value then
                A9(me)
            end
        end))
        A4 = function(mi)
            if Ba or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            Ba = true
            local Az = Bg
            local AA_1 = pcall(function()
                if mi then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not AA_1 then
                Ba = false
                if not mi and Az == Bg then
                    task.delay(1.5, function()
                        if Az == Bg then
                            A4(true)
                        end
                    end)
                end
            end
        end
        table.insert(A8, TeleportService.TeleportInitFailed:Connect(function(mA)
            local AK
            if mA == LocalPlayer and Ba then
                Ba = false
                AK = Bg
                task.delay(3, function()
                    if AK == Bg then
                        A4(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local AP = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local AP_1 = not AP
            local AQ = Library.Unloaded
            local AU = if AQ then 1 else 0
            local AS = 3716 * AU + 3118 * (1 - AU)
            local AT = 2966 * AU + 2706 * (1 - AU)
            if not ((AS * 189 + AT * 2134 + AS * AT) % 16777213 == 1276211) then
                AQ = AP_1
            end
            if AQ then
                return
            end
            table.insert(A8, AP.ChildAdded:Connect(function(mP)
                if mP.Name == "ErrorPrompt" then
                    A4(false)
                end
            end))
        end)
        Bf = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Bc(true)
                end
                local AV = Toggles.AntiAfk.Value and os.clock() - Bb >= 60
                if AV then
                    A3()
                end
                task.wait(1)
            end
        end)
        rN.Track(function()
            Bg += 1
            for k, v in A8 do
                v:Disconnect()
            end
            pcall(task.cancel, Bf)
            Bc(false)
            A7()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    kT()
    local function m8()
        local Ce, Cf, Cg, Ch
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(hP[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/BuildGolemsAndFight")
        local Ci = SaveManager:BuildConfigSection(hP[4])
        Ce = function(nf, ng)
            local Bk_1 = (nf == "Toggle" and Toggles or Options)[ng]
            local Bj_2 = type(Bk_1) == "table" and Bk_1.Type == nf
            return Bj_2 and Bk_1 or nil
        end
        Cg = function(np, nq)
            local Type = nq.Type
            if Type == "Toggle" then
                return { idx = np, type = "Toggle", value = nq.Value == true }
            elseif Type == "Slider" then
                return { idx = np, type = "Slider", value = tostring(nq.Value) }
            elseif Type == "Dropdown" then
                return { idx = np, type = "Dropdown", multi = nq.Multi == true, value = nq.Value }
            elseif Type == "Input" then
                local Bo = nq.Value or ""
                return { idx = np, type = "Input", text = tostring(Bo) }
            elseif Type == "ColorPicker" then
                return { idx = np, type = "ColorPicker", value = nq.Value:ToHex(), transparency = nq.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = np,
                    type = "KeyPicker",
                    mode = nq.Mode,
                    key = nq.Value,
                    modifiers = nq.Modifiers,
                    toggled = nq.Toggled
                }
            else
                return nil
            end
        end
        Cf = function()
            local Bu = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Bv = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Bv then
                        local Bv_1 = Cg(k, v)
                        if Bv_1 then
                            Bu[#Bu + 1] = Bv_1
                        end
                    end
                end
            end
            table.sort(Bu, function(nA, nB)
                if nA.type ~= nB.type then
                    return nA.type < nB.type
                end
                return nA.idx < nB.idx
            end)
            return { objects = Bu }
        end
        Ch = function(nD)
            local BO
            BO = nil
            local BP = type(nD) ~= "table"
            local BT = if BP then 1 else 0
            local BR = 1359 * BT + 1475 * (1 - BT)
            local BS = 993 * BT + 1287 * (1 - BT)
            if not ((BR * 4064 + BS * 1738 + BR * BS) % 16777213 == 8598297) then
                BP = type(nD.idx) ~= "string"
            end
            local BW = if BP then 1 else 0
            local BU = 3605 * BW + 1458 * (1 - BW)
            local BV = 3367 * BW + 1602 * (1 - BW)
            if not ((BU * 432 + BV * 3429 + BU * BV) % 16777213 == 8463625) then
                BP = type(nD.type) ~= "string"
            end
            if not BP then
                BP = SaveManager.Ignore[nD.idx]
            end
            if BP then
                return false
            end
            BO = Ce(nD.type, nD.idx)
            if not BO then
                return false
            end
            local BP_1 = pcall(function()
                if nD.type == "Input" then
                    if type(nD.text) ~= "string" then
                        return
                    end
                    BO:SetValue(nD.text)
                elseif nD.type == "ColorPicker" then
                    BO:SetValueRGB(Color3.fromHex(nD.value), nD.transparency)
                elseif nD.type == "KeyPicker" then
                    BO:SetValue({ nD.key, nD.mode, nD.modifiers })
                    if nD.mode == "Toggle" and nD.toggled ~= nil then
                        BO.Toggled = nD.toggled
                        BO:Update()
                    end
                else
                    BO:SetValue(nD.value)
                end
            end)
            return BP_1
        end
        Ci:AddDivider()
        Ci:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", AllowEmpty = true })
        Ci:AddButton("Export Config to Clipboard", function()
            local BY_1
            local BX_1
            BX_1, BY_1 = pcall(rJ.JSONEncode, rJ, Cf())
            if BX_1 then
                local BX_2 = rv(setclipboard) and setclipboard
                local BZ = BX_2
                if not BZ then
                    local BX_3 = rv(toclipboard) and toclipboard
                    BZ = BX_3 or nil
                end
                local BX_4 = BZ
                local BZ_1 = type(BX_4) == "function" and pcall(BX_4, BY_1)
                if BZ_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Ci:AddButton("Import Config from Clipboard Text", function()
            local B3_1
            local B1 = Options.SaveManager_ImportSource.Value or ""
            local B1_1
            local B2 = tostring(B1):match("^%s*(.-)%s*$")
            if B2 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #B2 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            B1_1, B3_1 = pcall(rJ.JSONDecode, rJ, B2)
            local B2_1 = not B1_1 or type(B3_1) ~= "table" or type(B3_1.objects) ~= "table"
            if B2_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #B3_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local B1_2 = 0
            for i, v in ipairs(B3_1.objects) do
                if Ch(v) then
                    B1_2 += 1
                end
            end
            if B1_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local B3_2 = B1_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(B1_2, B3_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.SellRarities then
            rN.SetSellRarities(Options.SellRarities.Value)
        end
        if Options.SellBelowPower then
            rN.SetSellBelowPower(Options.SellBelowPower.Value)
        end
        if Options.StopWaveNumber then
            rN.SetStopWaveNumber(Options.StopWaveNumber.Value)
        end
        if Options.UpgradeList then
            rN.SetUpgrades(Options.UpgradeList.Value)
        end
        if Options.PotionList then
            rN.SetPotions(Options.PotionList.Value)
        end
        if Options.QuestTracks then
            rN.SetQuestTracks(Options.QuestTracks.Value)
        end
        if Toggles.AutoRoll then
            rN.SetAutoRoll(Toggles.AutoRoll.Value)
        end
        if Toggles.AutoBuild then
            rN.SetAutoBuild(Toggles.AutoBuild.Value)
        end
        if Toggles.AutoEquipBest then
            rN.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoSell then
            rN.SetAutoSell(Toggles.AutoSell.Value)
        end
        if Toggles.AutoUpgrades then
            rN.SetAutoUpgrades(Toggles.AutoUpgrades.Value)
        end
        if Toggles.AutoPotions then
            rN.SetAutoPotions(Toggles.AutoPotions.Value)
        end
        if Toggles.AutoQuests then
            rN.SetAutoQuests(Toggles.AutoQuests.Value)
        end
        if Toggles.AutoGifts then
            rN.SetAutoGifts(Toggles.AutoGifts.Value)
        end
        if Toggles.AutoRebirth then
            rN.SetAutoRebirth(Toggles.AutoRebirth.Value)
        end
        if Toggles.StopAtWave then
            rN.SetStopAtWave(Toggles.StopAtWave.Value)
        end
        if Toggles.AutoStart then
            rN.SetAutoStart(Toggles.AutoStart.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    m8()
end
sd_4()
