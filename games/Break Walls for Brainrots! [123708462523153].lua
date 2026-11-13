local fns = {}
local Bw_2, Bw_3, PlayerPlotGetter, BrainrotSlotObjectGetter, Bw_7, PowerLevelState, BrainrotsCarryState, PowerUpgradesConfig, ItemsState, Bw_13, BrainrotsConfig, Bw_17, Bw_32, Bw_35, Bw_41, Bw_44
Bw_2 = nil
Bw_3 = nil
PlayerPlotGetter = nil
BrainrotSlotObjectGetter = nil
Bw_7 = nil
PowerLevelState = nil
BrainrotsCarryState = nil
PowerUpgradesConfig = nil
ItemsState = nil
BrainrotsConfig = nil
Bw_17 = nil
local rX
local qd
local qV
local qC
local qI
local Workspace
local r8
local qp
local rQ
local p6
local BrainrotsState
local qv
local CarryLevelState
local rW
local ItemsConfig
local rD
local RebirthState
local r1
local qi
local qH
local rq
local qo
local q5
local p5
local rP
local rw
local qu
local rd
local qb
local rV
local qT
local qA
local LocalPlayer
local qh
local qZ
local r0
local rp
local r6
local Options
local rO
local qM
local rv
local qt
local PlayerGui
local qa
local ProgressionChecksState
local rB
local Enums
local ri
local BalanceConfig
local SlotIncomeState
local SpeedLevelState
local BrainrotsBackpackState
local p3
local ru
local rT
local Library
local rh
local rZ
local qX
local CarryUpgradesConfig
local ql
local q2
local rM
local SpeedUpgradesConfig
local rt
local PlayerBrainrotSlotsState
local qr
local Toggles
local WallsState
local qQ
local rz
local qe
local qW
local MoneyState
function fns.fn21()
    local uz_1
    local uy_1
    uy_1, uz_1 = pcall(ItemsConfig.GetWorldItems, Enums.WorldEnum.World1)
    local uA = uy_1 and type(uz_1) == "table"
    if uA then
        return uz_1
    end
    return {}
end
function fns.fn39(bc, bd, be)
    return string.format("<b>%s</b> %s %s", bc, rh("-", "#5a6070"), rh(bd, be))
end
function fns.fn67(a9, ba)
    return string.format('<font color="%s">%s</font>', ba, a9)
end
function fns.fn78(a2, a3)
    if setclipboard then
        setclipboard(a2)
    elseif toclipboard then
        toclipboard(a2)
    end
    Library:Notify(a3)
end
function fns.fn114()
    local tY = rZ(BrainrotsBackpackState)
    if type(tY) ~= "table" then
        return {}
    end
    return tY
end
function fns.fn121()
    local tu = (tonumber(rZ(PowerLevelState)))
    local ty = if tu then 1 else 0
    local tw = 1676 * ty + 3595 * (1 - ty)
    local tx = 3136 * ty + 3840 * (1 - ty)
    if not ((tw * 84 + tx * 2817 + tw * tx) % 16777213 == 14230832) then
        tu = 0
    end
    return tu
end
function fns.fn154()
    local tR = rZ(BrainrotsCarryState)
    if type(tR) ~= "table" then
        return 0
    end
    local tS = 0
    for k in tR do
        tS += 1
    end
    return tS
end
function fns.fn163()
    local tG_1
    local tF_1
    tF_1, tG_1 = pcall(CarryUpgradesConfig.GetCarryAmountOnLevel, qd())
    local tH = tF_1 and type(tG_1) == "number"
    if tH then
        return tG_1
    end
    return 1
end
function fns.fn220()
    local t0_1
    local t__1
    t__1, t0_1 = pcall(BrainrotSlotObjectGetter.GetSlotObjectsForPlayer, LocalPlayer)
    local t1 = not t__1 or type(t0_1) ~= "table"
    if t1 then
        return 10
    end
    local t__2 = 0
    for k in t0_1 do
        local t0_2 = tonumber(k)
        if t0_2 and t0_2 > t__2 then
            t__2 = t0_2
        end
    end
    if t__2 > 0 then
        return t__2
    end
    return 10
end
function fns.fn226()
    if qu() then
        return false
    end
    local wX = rd()
    local wY = false
    local wZ = r0()
    table.sort(wZ, function(gw, gx)
        return gw.income > gx.income
    end)
    for i, v in ipairs(wZ) do
        local wZ_1 = qt(v.data)
        if wZ_1 <= wX and wZ_1 < math.huge then
            qv(qr, v.uid)
            wX -= wZ_1
            wY = true
            task.wait(0.05)
        end
    end
    return wY
end
function fns.fn237()
    if qu() then
        return false
    end
    local yj = rw()
    if not yj then
        return false
    end
    local yk = yj._sortKey
    local yp = if yk then 1 else 0
    local yn = 2092 * yp + 3463 * (1 - yp)
    local yo = 397 * yp + 2824 * (1 - yp)
    if not ((yn * 3059 + yo * 425 + yn * yo) % 16777213 == 7398677) then
        yk = string.format("%s_%s_%s", tostring(yj.world), tostring(yj.tier), tostring(yj.index))
    end
    local yl = yk
    if p5 ~= yl then
        p5 = yl
        qa = tick()
    end
    local nearZone = yj.nearZone
    local yk_2 = nearZone and nearZone.Position
    if not yk_2 then
        yk_2 = yj.wall and yj.wall.Position
    end
    local yj_1 = yk_2
    if yj_1 then
        local yk_3 = qM()
        if yk_3 then
            if (yk_3.Position - yj_1).Magnitude > 10 then
                ru(yj_1)
            end
        end
    end
    local yj_2 = qo()
    local yk_4 = tonumber(yj_2.MaxReachedZone) or 0
    local yj_3 = yk_4 + 1
    local yk_5 = qQ(yj_3)
    if tick() - qa < math.min(yk_5, 3) then
        return true
    end
    return true
end
function fns.fn240()
    Library.ScreenGui.Parent = PlayerGui
end
function fns.fn257()
    local WorldBrainrots = Workspace:FindFirstChild("WorldBrainrots")
    if not WorldBrainrots then
        return {}
    end
    local vx = qA()
    local vy = {}
    for i, child in ipairs(WorldBrainrots:GetChildren()) do
        local vw_1 = child:GetAttribute("Uid") or child.Name
        local attr2 = child:GetAttribute("BrainrotKey")
        local attr = child:GetAttribute("SpawnZoneKey")
        local vB = vx[tostring(vw_1)] or vx[vw_1]
        local ProximityPrompt = child:FindFirstChildWhichIsA("ProximityPrompt", true)
        local pivot = child:GetPivot()
        local vE = pivot and pivot.Position
        local vD_1 = vB
        if vD_1 then
            vD_1 = vB.tier
        end
        local vE_1 = vD_1
        local vD_2 = not vE_1
        if vD_2 ~= false then
            vD_2 = type(attr) == "string"
        end
        if vD_2 then
            vE_1 = string.match(attr, "^([^_]+)")
        end
        local vG = vB and vB.rarity or "Normal"
        local vG_1 = #vy + 1
        local vH = tostring(vw_1)
        local vI = attr2 and tostring(attr2)
        local vw_3 = vI or nil
        vy[vG_1] = {
            model = child,
            uid = vH,
            key = vw_3,
            zone = attr,
            tier = vE_1,
            rarity = vG,
            data = vB,
            prompt = ProximityPrompt,
            position = vE,
            income = r8(vB)
        }
    end
    return vy
end
function fns.fn269(eQ, eR, eS, eT)
    local vW_5, vW_7
    if not eQ then
        return false
    elseif next(eR) ~= nil then
        local vW_1 = not eQ.tier
        local v_ = if vW_1 then 1 else 0
        local vY = 1446 * v_ + 926 * (1 - v_)
        local vZ = 3113 * v_ + 1840 * (1 - v_)
        if not ((vY * 1668 + vZ * 386 + vY * vZ) % 16777213 == 8114944) then
            vW_1 = not eR[eQ.tier]
        end
        if vW_1 then
            return false
        elseif next(eS) ~= nil then
            if vW_5 then
                return false
            elseif next(eT) ~= nil then
                if vW_7 then
                    return false
                end
                return true
            else
                return true
            end
        elseif next(eT) ~= nil then
            if vW_7 then
                return false
            end
            return true
        else
            return true
        end
    elseif next(eS) ~= nil then
        vW_5 = not eQ.rarity or not eS[eQ.rarity]
        if vW_5 then
            return false
        elseif next(eT) ~= nil then
            if vW_7 then
                return false
            end
            return true
        else
            return true
        end
    elseif next(eT) ~= nil then
        vW_7 = not eQ.zone or not eT[tostring(eQ.zone)]
        if vW_7 then
            return false
        end
        return true
    else
        return true
    end
end
function fns.fn275()
    return LocalPlayer.Character
end
function fns.fn367()
    for i, v in ipairs(qH()) do
        local uZ = tonumber(v.currentHealth) or 0
        if v.isDestroyable ~= false and not (v.isDestroying == true) and uZ > 0 then
            return v
        end
    end
    return nil
end
function fns.fn380()
    local wv_1
    local wu_2
    if qu() then
        return false
    end
    local ws = qT()
    local wt = 0
    for k, v in ws do
        local wu_1 = tonumber(v) or 0
        wt += wu_1
    end
    if wt <= 0 then
        return false
    end
    local wt_1 = false
    wu_2, wv_1 = pcall(BrainrotSlotObjectGetter.GetSlotObjectsForPlayer, LocalPlayer)
    local ww = wu_2 and type(wv_1) == "table"
    if ww then
        for k, v in ws do
            local ws_1 = tonumber(v) or 0
            if ws_1 > 0 then
                local ws_2 = tonumber(k) or k
                local ws_3 = wv_1[ws_2] or wv_1[tostring(ws_2)]
                local wu_4 = ws_3
                if ws_3 then
                    ws_3 = wu_4:FindFirstChild("ButtonCollider")
                end
                local wu_5 = ws_3
                if ws_3 then
                    ws_3 = rB(wu_5)
                end
                if ws_3 then
                    wt_1 = true
                    task.wait(0.05)
                end
            end
        end
    end
    local ws_4 = q5()
    local wu_6 = ws_4 and rB(ws_4)
    if wu_6 then
        wt_1 = true
    end
    return wt_1
end
function fns.fn399()
    local tj = ri()
    local tk = tj and tj:FindFirstChild("HumanoidRootPart")
    return tk
end
function fns.fn409()
    if qu() then
        return false
    end
    local xu = r0()
    if #xu == 0 then
        return false
    end
    local xv = {}
    for i, v in ipairs(xu) do
        xv[v.uid] = true
    end
    local xw = rD(xv)
    if #xw == 0 then
        return false
    end
    table.sort(xu, function(g8, g9)
        return g8.income < g9.income
    end)
    local xx = 1
    local xy = false
    local xz = {}
    for i, v in ipairs(xu) do
        while true do
            if xw[xx] and xz[xw[xx].uid] then
                xx += 1
                continue
            end
            break
        end
        local xu_2 = xw[xx]
        if not xu_2 then
            break
        elseif xu_2.income > v.income then
            qv(rT, v.slot, xu_2.uid)
            xz[xu_2.uid] = true
            xv[xu_2.uid] = true
            xx += 1
            xy = true
            task.wait(0.1)
        else
            break
        end
    end
    return xy
end
function fns.fn413()
    local tL = rZ(PlayerBrainrotSlotsState)
    if type(tL) ~= "table" then
        return {}
    end
    return tL
end
function fns.fn430()
    local tN = rZ(SlotIncomeState)
    if type(tN) ~= "table" then
        return {}
    end
    return tN
end
function fns.fn447(e7)
    local we = qM()
    local wf = not we
    local wj = if wf then 1 else 0
    local wh = 3588 * wj + 2265 * (1 - wj)
    local wi = 3530 * wj + 949 * (1 - wj)
    if not ((wh * 4007 + wi * 2188 + wh * wi) % 16777213 == 1211970) then
        wf = not e7
    end
    if not wf then
        wf = not e7:IsA("BasePart")
    end
    if wf then
        return false
    elseif not firetouchinterest then
        return false
    else
        pcall(firetouchinterest, we, e7, 0)
        task.wait()
        pcall(firetouchinterest, we, e7, 1)
        return true
    end
end
function fns.fn453()
    local vk = Bw_17()
    local vl = qA()
    local vm = {}
    for k, v in vk do
        local vk_1 = tonumber(k)
        if vk_1 then
            local vn = vl[tostring(v)] or vl[v]
            vm[#vm + 1] = { slot = vk_1, uid = tostring(v), data = vn, income = r8(vn) }
        end
    end
    return vm
end
function fns.fn486()
    local tD = tonumber(rZ(CarryLevelState)) or 0
    return tD
end
function fns.fn496()
    local wV_1, wV_2
    local wU_1, wU_2, wU_3
    local wT_5
    if qu() then
        return false
    end
    local wQ = rQ("BuyUpgrades")
    if next(wQ) == nil then
        return false
    end
    local wR = rd()
    local wS = false
    if wQ.Power then
        local wT_1 = qW()
        wU_1, wV_1 = pcall(PowerUpgradesConfig.GetUpgradePriceForSeveralLevels, wT_1, 1)
        local wT_2 = wU_1 and type(wV_1) == "number" and wR >= wV_1
        if wT_2 then
            qv(p3, 1)
            wR -= wV_1
            wS = true
            task.wait(0.05)
        end
    end
    if wQ.Speed then
        local wT_3 = Bw_7()
        wU_2, wV_2 = pcall(SpeedUpgradesConfig.GetUpgradePriceForSeveralLevels, wT_3, 1)
        local wT_4 = wU_2 and type(wV_2) == "number" and wR >= wV_2
        if wT_4 then
            qv(r6, 1)
            wR -= wV_2
            wS = true
            task.wait(0.05)
        end
    end
    if wQ.Carry then
        local wQ_1 = qd()
        wT_5, wU_3 = pcall(CarryUpgradesConfig.GetUpgradePriceForSeveralLevels, wQ_1, 1)
        local wQ_2 = wT_5 and type(wU_3) == "number" and wR >= wU_3
        if wQ_2 then
            qv(r1, 1)
            wS = true
            task.wait(0.05)
        end
    end
    return wS
end
function fns.fn517(br)
    local s7 = qb(br, nil)
    if type(s7) ~= "table" then
        return {}
    end
    local s8 = {}
    for k, v in s7 do
        if v == true then
            s8[k] = true
        end
    end
    return s8
end
function fns.fn534(bh)
    local s2 = Toggles[bh]
    return s2 ~= nil and s2.Value == true
end
function fns.fn542(a_)
    qp[#qp + 1] = a_
    return a_
end
function fns.fn558(dy)
    local uC = qM()
    local uD = not uC or typeof(dy) ~= "Vector3"
    if uD then
        return false
    end
    uC.CFrame = CFrame.new(dy + Vector3.new(0, 4, 0))
    return true
end
local function fn586()
    rP(qV, "Copied Discord invite to clipboard")
end
local function fn594()
    local tz = tonumber(rZ(SpeedLevelState)) or 0
    return tz
end
local function fn628(d4)
    local ExpectedTimePerZone = BalanceConfig.ExpectedTimePerZone
    if type(ExpectedTimePerZone) ~= "table" then
        return 8
    end
    local va = ExpectedTimePerZone[d4]
    local ve = if va then 1 else 0
    local vc = 3733 * ve + 108 * (1 - ve)
    local vd = 1479 * ve + 3903 * (1 - ve)
    if not ((vc * 1054 + vd * 3096 + vc * vd) % 16777213 == 14034673) then
        va = ExpectedTimePerZone[tostring(d4)]
    end
    local u9_1 = (tonumber(va))
    local vh = if u9_1 then 1 else 0
    local vf = 3280 * vh + 826 * (1 - vh)
    local vg = 452 * vh + 3735 * (1 - vh)
    if not ((vf * 419 + vg * 1018 + vf * vg) % 16777213 == 3317016) then
        u9_1 = 8
    end
    return u9_1
end
local function fn656(cT, cU)
    local ua = tick()
    local uc = ua + (cU or 2)
    while true do
        if not (tick() < uc) then
            return cT()
        end
        if cT() then
            break
        end
        task.wait(0.05)
    end
    return true
end
local function onOnClientEvent()
    qh = tick() + 6
    p5 = nil
    qa = 0
    Library:Notify("Progression sync reset. Pausing automation briefly.", 5)
    task.defer(function()
        local SpawnLocationModel = Workspace:FindFirstChild("SpawnLocationModel")
        local yr = SpawnLocationModel and SpawnLocationModel:FindFirstChildWhichIsA("BasePart", true)
        if yr then
            ru(yr.Position)
        end
    end)
end
local function fn673()
    local tB = tonumber(rZ(RebirthState)) or 0
    return tB
end
local function fn680()
    local tJ = rZ(ItemsState)
    if type(tJ) ~= "table" then
        return { Unlocked = {}, Equipped = "0" }
    end
    return tJ
end
local function fn719()
    return tick() < qh
end
local function fn723()
    local uQ = WallsState.GetWallsAtom()
    local uR = qI.peek(uQ)
    local uQ_1 = {}
    if type(uR) ~= "table" then
        return uQ_1
    end
    for k, v in uR do
        local uR_1 = type(v) == "table" and v.world == "World1"
        if uR_1 then
            uQ_1[#uQ_1 + 1] = v
            v._sortKey = tostring(k)
        end
    end
    table.sort(uQ_1, function(dQ, dR)
        local uM = rq[dQ.tier] or 999
        local uM_1 = rq[dR.tier] or 999
        if uM ~= uM_1 then
            return uM < uM_1
        end
        local uM_2 = tonumber(dQ.index) or 0
        local uN_1 = tonumber(dR.index) or 0
        return uM_2 < uN_1
    end)
    return uQ_1
end
local function fn724()
    return tostring(LocalPlayer.UserId)
end
local function fn730(c6)
    local uk = qA()
    local ul = {}
    for k in rM() do
        local um = tostring(k)
        if not c6 or not c6[um] then
            local un_1 = uk[um] or uk[k]
            ul[#ul + 1] = { uid = um, data = un_1, income = r8(un_1) }
        end
    end
    table.sort(ul, function(dh, di)
        return dh.income > di.income
    end)
    return ul
end
local function fn769(c0)
    local uh_1
    local ug_1
    if type(c0) ~= "table" then
        return 0
    end
    ug_1, uh_1 = pcall(BrainrotsConfig.GetIncome, c0)
    local ui = ug_1 and type(uh_1) == "number"
    if ui then
        return uh_1
    end
    return 0
end
local function worker()
    while not Library.Unloaded do
        local Ag = false
        local Ah = qC("AutoCollectMoney") and rW()
        if Ah then
            Ag = true
        end
        local Ah_1 = qC("AutoBuyUpgrades") and Bw_2()
        if Ah_1 then
            Ag = true
        end
        local Ah_2 = qC("AutoBuyPickaxe") and rO()
        if Ah_2 then
            Ag = true
        end
        local Ah_3 = qC("AutoUpgrade") and qi()
        if Ah_3 then
            Ag = true
        end
        local Ah_4 = qC("AutoRebirth") and rV()
        if Ah_4 then
            Ag = true
        end
        local Ah_5 = qC("AutoCollect") and rX()
        if Ah_5 then
            Ag = true
        end
        local Ah_6 = qC("AutoPlace") and q2()
        if Ah_6 then
            Ag = true
        end
        local Ah_7 = qC("AutoReplaceBetter") and rp()
        if Ah_7 then
            Ag = true
        end
        local Ah_8 = qC("AutoBreakWalls") and p6()
        if Ah_8 then
            Ag = true
        end
        local wait = task.wait
        local Ag_1 = Ag and 0.35 or 0.6
        wait(Ag_1)
    end
end
local function fn811(dk)
    local uv_1
    local uu_1
    if type(dk) ~= "table" then
        return math.huge
    end
    uu_1, uv_1 = pcall(BrainrotsConfig.GetUpgradeCost, dk)
    local uw = uu_1 and type(uv_1) == "number"
    if uw then
        return uv_1
    end
    return math.huge
end
local function fn845()
    if qu() then
        return false
    end
    local xN = rz()
    local xP = xN.Unlocked or {}
    local xP_1 = rd()
    local xQ = false
    for i, v in ipairs(Bw_3()) do
        local xR_1 = tostring(v.Key)
        if not xP[xR_1] then
            local xS_1 = tonumber(v.Price) or 0
            if xP_1 >= xS_1 then
                qv(ql, xR_1)
                task.wait(0.15)
                qv(qe, xR_1)
                xQ = true
                xP_1 -= xS_1
            else
                break
            end
        end
    end
    local xP_2 = xN.Equipped or ""
    local xN_1 = tostring(xP_2)
    local xP_3 = -1
    local xR_2 = nil
    for i, v in ipairs(Bw_3()) do
        local xS_2 = tostring(v.Key)
        if xP[xS_2] or xS_2 == xN_1 then
            local xT_3 = tonumber(v.Index) or tonumber(xS_2)
            local xU_1 = xT_3 or 0
            if xU_1 >= xP_3 then
                xP_3 = xU_1
                xR_2 = xS_2
            end
        end
    end
    if xR_2 and xR_2 ~= xN_1 then
        qv(qe, xR_2)
    end
    return xQ
end
local function fn850(bm, bn)
    local s5 = Options[bm]
    if s5 == nil then
        return bn
    end
    return s5.Value
end
local function fn854()
    local uG_1
    local uF_1
    uF_1, uG_1 = pcall(PlayerPlotGetter.GetClaimPart, LocalPlayer)
    if uF_1 and uG_1 then
        return uG_1
    end
    return nil
end
local function fn908(ix)
    local DiscordGroup = ix:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = rv })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = rv })
end
local function fn951()
    local v3 = rQ("SelectedRarities")
    local v4 = rQ("SelectedMutations")
    local v5 = rQ("SelectedZones")
    for i, v in ipairs(qX()) do
        local v6 = qZ(v, v3, v4, v5) and v.prompt
        if v6 then
            return v
        end
    end
    return nil
end
local function fn968()
    local tP = qI.peek(BrainrotsState.GetAtom())
    if type(tP) ~= "table" then
        return {}
    end
    return tP
end
local function fn972()
    local ue = rZ(ProgressionChecksState)
    if type(ue) ~= "table" then
        return { MaxReachedZone = 0, FirstWallDestroyed = false }
    end
    return ue
end
local function fn978()
    local tg = ri()
    local th = tg and tg:FindFirstChildOfClass("Humanoid")
    return th
end
local function fn1003()
    local tp = (tonumber(rZ(MoneyState)))
    local tt = if tp then 1 else 0
    local tr = 983 * tt + 1256 * (1 - tt)
    local ts = 3808 * tt + 1707 * (1 - tt)
    if not ((tr * 154 + ts * 1035 + tr * ts) % 16777213 == 7835926) then
        tp = 0
    end
    return tp
end
local function fn1028()
    if qu() then
        return false
    end
    local w7 = Bw_17()
    local w8 = {}
    local w9 = {}
    for k, v in w7 do
        local w7_1 = tonumber(k)
        if w7_1 then
            w9[w7_1] = true
            w8[tostring(v)] = true
        end
    end
    local w7_2 = {}
    local xa = rt()
    local xl = 1
    while xl <= xa do
        local xm = xl
        if not w9[xm] then
            w7_2[#w7_2 + 1] = xm
        end
        xl += 1
    end
    if #w7_2 == 0 then
        return false
    end
    local w9_1 = rD(w8)
    if #w9_1 == 0 then
        return false
    end
    local xa_1 = 1
    local xb = false
    for i, v in ipairs(w7_2) do
        local w7_3 = w9_1[xa_1]
        if not w7_3 then
            break
        end
        qv(rT, v, w7_3.uid)
        w8[w7_3.uid] = true
        xa_1 += 1
        xb = true
        task.wait(0.1)
    end
    return xb
end
SpeedUpgradesConfig = nil
p3 = nil
p5 = nil
p6 = nil
PowerUpgradesConfig = nil
qa = nil
qb = nil
ItemsConfig = nil
qd = nil
qe = nil
qh = nil
qi = nil
PlayerPlotGetter = nil
ql = nil
qo = nil
qp = nil
qr = nil
qt = nil
qu = nil
qv = nil
BrainrotsConfig = nil
Enums = nil
qA = nil
qC = nil
Bw_2 = nil
qH = nil
qI = nil
Bw_7 = nil
PlayerBrainrotSlotsState = nil
qM = nil
local Players, p1, p4, p8, p9, qf, qg, qj, qm, qn, RebirthConfig, qs, qx, qy, qB, PlayerPlotIdxState, qF, qG, qL, qN
BrainrotsState = nil
qQ = nil
ProgressionChecksState = nil
qT = nil
qV = nil
qW = nil
qX = nil
SlotIncomeState = nil
qZ = nil
q2 = nil
BrainrotsBackpackState = nil
Options = nil
q5 = nil
BrainrotsCarryState = nil
Toggles = nil
PlayerGui = nil
rd = nil
CarryLevelState = nil
Bw_17 = nil
rh = nil
ri = nil
LocalPlayer = nil
RebirthState = nil
SpeedLevelState = nil
rp = nil
rq = nil
Workspace = nil
PowerLevelState = nil
rt = nil
ru = nil
rv = nil
rw = nil
ItemsState = nil
rz = nil
Library = nil
rB = nil
local qP, qR, qU, q_, q0, q1, q6, q9, SaveManager, ThemeManager, rm, TeleportService, CoreGui, rC
rD = nil
MoneyState = nil
BrainrotSlotObjectGetter = nil
rM = nil
rO = nil
rP = nil
rQ = nil
WallsState = nil
rT = nil
rV = nil
rW = nil
rX = nil
rZ = nil
BalanceConfig = nil
r0 = nil
r1 = nil
Bw_3 = nil
CarryUpgradesConfig = nil
r6 = nil
r8 = nil
local GuiService, rG, HttpService, PlotTeleportHelpers, rJ, VirtualUser, rN, UserInputService, rU, RunService, r2, r7, r9
GuiService = nil
rG = nil
HttpService = nil
PlotTeleportHelpers = nil
rJ = nil
VirtualUser = nil
rN = nil
UserInputService = nil
rU = nil
RunService = nil
r2 = nil
local r5
r7 = nil
r9 = nil
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, TeleportService, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local Bw_50 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
TeleportService = game:GetService("TeleportService")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return PlayerGui
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
q1, qV, qR, qN, qI, Enums, BrainrotsConfig, RebirthConfig, PlayerPlotGetter, ItemsConfig, PowerUpgradesConfig, SpeedUpgradesConfig, CarryUpgradesConfig, BalanceConfig, WallsState, BrainrotSlotObjectGetter, PlotTeleportHelpers, MoneyState, ItemsState, PowerLevelState, SpeedLevelState, RebirthState, CarryLevelState, BrainrotsCarryState, BrainrotsBackpackState, SlotIncomeState, ProgressionChecksState, BrainrotsState, PlayerBrainrotSlotsState, PlayerPlotIdxState, Bw_32, qr, ql, qe, p8, p3, r6, r1, rT, Library, ThemeManager, SaveManager, Toggles, Options, q_, qU, qP, qL, qF, qB, qy, qs, qn, qg, p9, p4, r7, r2, rU, rN, rJ, rG, rC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not Enums and Enums or (Bw_32 or ItemsConfig) or (not Enums and Bw_32 or Bw_32 and qL) or (not Enums and not Enums or (not ItemsConfig or Enums) or (qL and not Enums or (ItemsConfig or qL)))) and ((Bw_32 or false or (Enums or false)) and (qL and not ItemsConfig or ItemsConfig and Enums) or (Bw_32 or not Bw_32) and (not Bw_32 or not Enums) and (Bw_32 or not ItemsConfig or false)) and not ((not Enums and Enums or (Bw_32 or ItemsConfig) or (not Enums and Bw_32 or Bw_32 and qL) or (not Enums and not Enums or (not ItemsConfig or Enums) or (qL and not Enums or (ItemsConfig or qL)))) and ((Bw_32 or false or (Enums or false)) and (qL and not ItemsConfig or ItemsConfig and Enums) or (Bw_32 or not Bw_32) and (not Bw_32 or not Enums) and (Bw_32 or not ItemsConfig or false))) then
    qV = "Break Walls for Brainrots!"
    qI = "https://discord.gg/ehKVq7pf7v"
    Bw_50 = "https://rscripts.net/@Ouroboros"
    qR = "https://ouroboros-hub-rbx.web.app/"
    q1 = require((nil).Charm)
else
    q1 = "Break Walls for Brainrots!"
    qV = "https://discord.gg/ehKVq7pf7v"
    qR = "https://rscripts.net/@Ouroboros"
    qN = "https://ouroboros-hub-rbx.web.app/"
    qI = require(Bw_50.Packages.Charm)
end
local Bw_23 = require(Bw_50.common.Libraries.EventsModule)
Enums = require(Bw_50.common.Enums)
BrainrotsConfig = require(Bw_50.common.Configs.BrainrotsConfig)
RebirthConfig = require(Bw_50.common.Configs.RebirthConfig)
PlayerPlotGetter = require(Bw_50.common.PlayerPlotGetter)
ItemsConfig = require(Bw_50.main.Configs.ItemsConfig)
PowerUpgradesConfig = require(Bw_50.main.Configs.PowerUpgradesConfig)
SpeedUpgradesConfig = require(Bw_50.main.Configs.SpeedUpgradesConfig)
CarryUpgradesConfig = require(Bw_50.main.Configs.CarryUpgradesConfig)
BalanceConfig = require(Bw_50.main.Configs.BalanceConfig)
WallsState = require(Bw_50.main.Walls.WallsState)
BrainrotSlotObjectGetter = require(Bw_50.common.BrainrotSlotObjectGetter)
PlotTeleportHelpers = require(Bw_50.common.Helpers.PlotTeleportHelpers)
MoneyState = require(Bw_50.common.State.PrivateState.MoneyState)
ItemsState = require(Bw_50.common.State.PrivateState.ItemsState)
PowerLevelState = require(Bw_50.common.State.PrivateState.PowerLevelState)
SpeedLevelState = require(Bw_50.common.State.PrivateState.SpeedLevelState)
RebirthState = require(Bw_50.common.State.PrivateState.RebirthState)
CarryLevelState = require(Bw_50.common.State.PrivateState.CarryLevelState)
BrainrotsCarryState = require(Bw_50.common.State.PrivateState.BrainrotsCarryState)
BrainrotsBackpackState = require(Bw_50.common.State.PrivateState.BrainrotsBackpackState)
SlotIncomeState = require(Bw_50.common.State.PrivateState.SlotIncomeState)
ProgressionChecksState = require(Bw_50.common.State.PrivateState.ProgressionChecksState)
BrainrotsState = require(Bw_50.common.State.SharedState.BrainrotsState)
PlayerBrainrotSlotsState = require(Bw_50.common.State.SharedState.PlayerBrainrotSlotsState)
PlayerPlotIdxState = require(Bw_50.common.State.SharedState.PlayerPlotIdxState)
Bw_23.getRemoteEvent("reClaimAllIncome")
Bw_23.getRemoteEvent("reTakeIncomeAtSlot")
qr = Bw_23.getRemoteEvent("reUpgradeBrainrot")
ql = Bw_23.getRemoteEvent("reBuyItem")
qe = Bw_23.getRemoteEvent("reEquipItem")
p8 = Bw_23.getRemoteEvent("reRequestRebirth")
p3 = Bw_23.getRemoteEvent("reUpgradePower")
r6 = Bw_23.getRemoteEvent("reUpgradeSpeed")
r1 = Bw_23.getRemoteEvent("reUpgradeCarry")
rT = Bw_23.getRemoteEvent("rePlaceBrainrotAtSlot")
local Bw_62 = Bw_23.getRemoteEvent("reProgressionCheckFailed")
local Bw_53 = { "Power", "Speed", "Carry" }
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fns.fn240)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
q_ = "#7fd47f"
qU = "#6ec1ff"
qP = "#e8a34d"
qL = "#8b93a3"
qF = "#e05a5a"
qB = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
qy = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
qs = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
qn = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
qg = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
p9 = "https://paypal.me/TheTruckerGOD"
p4 = "https://venmo.com/u/miserablemusic"
r7 = "#345d9d"
r2 = "#f7931a"
rU = "#627eea"
rN = "#26a17b"
rJ = "#14f195"
rG = "#0070ba"
rC = "#008cff"
local Bw_59 = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Divine",
    "Secret",
    "Celestial",
    "God",
    "OG",
    "Admin"
}
Bw_50 = BalanceConfig.TiersOrder or Bw_59
rq = {}
Bw_59 = Bw_50
for i, v in ipairs(Bw_59) do
    rq[v] = i
end
Bw_23, Bw_32, Bw_41 = nil, nil, nil
Bw_50 = 0
repeat
    Bw_13 = (Bw_50 * 1 + 0) % 2 + 1
    if Bw_13 <= 1 then
        Bw_13 = (vector.create((Bw_50 * 7 + 7) % 11 + 1, (Bw_50 * 3 + 6) % 13 + 1, (Bw_50 * 4 + 16) % 17 + 1))
        Bw_44 = (vector.create((Bw_50 * 2 + 3) % 11 + 1, (Bw_50 * 2 + 9) % 13 + 1, (Bw_50 * 10 + 1) % 17 + 1))
        Bw_35 = (vector.create((Bw_50 * 5 + 8) % 11 + 1, (Bw_50 * 4 + 7) % 13 + 1, (Bw_50 * 1 + 10) % 17 + 1))
        if vector.dot(vector.cross(Bw_13, Bw_44), Bw_35) == vector.dot(vector.cross(Bw_44, Bw_35), Bw_13) + 1 then
            Bw_32 = { "Galaxy", "Rainbow", "Normal", "Diamond", "Golden", "Lava" }
            Bw_23 = {}
        else
            Bw_23 = { "Normal", "Golden", "Diamond", "Galaxy", "Lava", "Rainbow" }
            Bw_32 = {}
        end
        Bw_50 = (Bw_50 + 3) % 8
    else
        local Cg = bit32.rrotate(bit32.bxor(bit32.lrotate(Bw_50, 15), string.byte(tostring(Bw_32))), 17)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Cg, 2773852077), 6), 1432873833) ~= bit32.lrotate(Cg, 6) then
            Bw_32 = {}
        else
            Bw_41 = {}
        end
        Bw_50 = (Bw_50 + 7) % 8
    end
until (Bw_50 * 3 + 4) % 8 == 2
for i, v in ipairs(Bw_59) do
    local Bw_55 = 1
    while Bw_55 <= 2 do
        Bw_50 = v .. "_" .. Bw_55
        Bw_32[#Bw_32 + 1] = Bw_50
        Bw_55 += 1
    end
end
for i, v in ipairs({ "Common", "Uncommon", "Rare" }) do
    local Bw_30 = 1
    while Bw_30 <= 2 do
        local Bw_21 = Bw_30
        Bw_41[v .. "_" .. Bw_21] = true
        Bw_30 += 1
    end
end
qp, qh, qa, p5, rm, r9, rP, rv, rh, q0, qC, qb, rQ, ri, q6, qM, qv, p1, rZ, rd, qW, Bw_7, qx, qd, r5, rz, Bw_17, qT, qA, qf, rM, rt, qG, qo, r8, rD, qt, Bw_3, ru, q5, qH, rw, qQ, qu, qj, r0, qX, qZ, qm, rB, q9, rW, rX, Bw_2, qi, q2, rp, rO, rV, p6 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qp = {}
if (qu or 91) and (qu and 91) and 91 and (not qu or (qu or 91) or (qu or false or (qu or not qu))) or (qu or false) and (qu and false and (not qu and not qu) and (qu and (not qu and false))) or not ((qu or 91) and (qu and 91) and 91 and (not qu or (qu or 91) or (qu or false or (qu or not qu))) or (qu or false) and (qu and false and (not qu and not qu) and (qu and (not qu and false)))) then
    qh = 0
    qa = 0
    p5 = nil
else
    p5 = 0
    qh = 0
    qa = nil
end
r9 = fns.fn542
rP = fns.fn78
rv = fn586
if (not rB and qH and (not qH or qH) or (not qH and not rB or rB and rB)) and (rB or not qH or (rB or not qH) or (rB or not qH) and (qH or not qH)) and ((not qH or not qH or (qH or qH) or not rB and not rB and (qH or qH)) and ((qH or rB) and (not qH and rB) and (not qH and rB or (not rB or not rB)))) and not ((not rB and qH and (not qH or qH) or (not qH and not rB or rB and rB)) and (rB or not qH or (rB or not qH) or (rB or not qH) and (qH or not qH)) and ((not qH or not qH or (qH or qH) or not rB and not rB and (qH or qH)) and ((qH or rB) and (not qH and rB) and (not qH and rB or (not rB or not rB))))) then
else
    rh = fns.fn67
end
q0 = fns.fn39
qC = fns.fn534
qb = fn850
rQ = fns.fn517
ri = fns.fn275
q6 = fn978
qM = fns.fn399
qv = function(bI, ...)
    local bJ
    bJ = table.pack(...)
    pcall(function()
        bI:FireServer(table.unpack(bJ, 1, bJ.n))
    end)
end
p1 = fn724
rZ = function(bP)
    local tn_1
    local tm_1
    tm_1, tn_1 = pcall(function()
        return qI.peek(bP.GetAtom())
    end)
    if not tm_1 then
        return nil
    elseif type(tn_1) ~= "table" then
        return tn_1
    else
        local tm_2 = tn_1[p1()]
        if tm_2 ~= nil then
            return tm_2
        end
        return tn_1
    end
end
if ((q5 or not p6 or (q5 or qi)) and ((not p6 or qi) and (q5 or not p6)) and (rP and not rP or (not qp or rP) or (q5 or qp or (not p6 or not rP))) or ((p6 or rP or (rP or not qp)) and (q5 or not rP or (not p6 or q5)) or (not q5 or not qp) and (not p6 or qp) and ((rP or q5) and (not rP or rP)))) and not ((q5 or not p6 or (q5 or qi)) and ((not p6 or qi) and (q5 or not p6)) and (rP and not rP or (not qp or rP) or (q5 or qp or (not p6 or not rP))) or ((p6 or rP or (rP or not qp)) and (q5 or not rP or (not p6 or q5)) or (not q5 or not qp) and (not p6 or qp) and ((rP or q5) and (not rP or rP)))) then
    Bw_2 = fn1003
else
    rd = fn1003
end
qW = fns.fn121
Bw_7 = fn594
qx = fn673
qd = fns.fn486
if ((q6 or qx or (not qM or qx) or qM and not qM and (not qM and qx)) and (not q6 and not qM or (not qx or not qM) or (not qx or not qx) and (qx and not qM)) or (qx or not q6 or qx and q6 or (not qM and not qx or not qM and not q6)) and (not qM and qx and (not qx and not q6) and (q6 and not qx and (not q6 or not qM)))) and not ((q6 or qx or (not qM or qx) or qM and not qM and (not qM and qx)) and (not q6 and not qM or (not qx or not qM) or (not qx or not qx) and (qx and not qM)) or (qx or not q6 or qx and q6 or (not qM and not qx or not qM and not q6)) and (not qM and qx and (not qx and not q6) and (q6 and not qx and (not q6 or not qM)))) then
    Bw_17 = fns.fn163
    r5 = fn680
    qT = fns.fn413
    rz = fns.fn430
else
    r5 = fns.fn163
    rz = fn680
    Bw_17 = fns.fn413
    qT = fns.fn430
end
qA = fn968
qf = fns.fn154
rM = fns.fn114
rt = fns.fn220
qG = fn656
qo = fn972
r8 = fn769
rD = fn730
qt = fn811
Bw_3 = fns.fn21
ru = fns.fn558
q5 = fn854
qH = fn723
rw = fns.fn367
qQ = fn628
qu = fn719
qj = function(eb)
    local vi = not eb or not eb:IsA("ProximityPrompt")
    if vi then
        return false
    end
    pcall(function()
        eb.HoldDuration = 0
        eb.MaxActivationDistance = math.max(eb.MaxActivationDistance, 50)
        eb.RequiresLineOfSight = false
    end)
    if fireproximityprompt then
        pcall(fireproximityprompt, eb)
        return true
    end
    pcall(function()
        eb:InputHoldBegin()
        task.wait(0.1)
        eb:InputHoldEnd()
    end)
    return true
end
r0 = fns.fn453
qX = fns.fn257
qZ = fns.fn269
qm = fn951
rB = fns.fn447
q9 = function()
    local wn
    local wp_1
    local wo_1, wo_4
    wn = PlayerPlotIdxState.Get(LocalPlayer)
    wo_1, wp_1 = pcall(function()
        local wk = wn and PlotTeleportHelpers.GetTeleportCFrame(wn)
        return wk or nil
    end)
    local wq = wo_1 and typeof(wp_1) == "CFrame"
    if wq then
        local wo_2 = qM()
        if wo_2 then
            wo_2.CFrame = wp_1 + Vector3.new(0, 3, 0)
            return true
        end
        local wo_3 = q5()
        if wo_4 then
            return ru(wo_3.Position)
        end
        return false
    end
    wo_4 = q5()
    if wo_4 then
        return ru(wo_4.Position)
    end
    return false
end
if (qa and false or not qG and not rv) and (not qC and not qG or qa and false) and (not qC and not qa and (qG and qC) or qa and qC and (qv or false)) or not ((qa and false or not qG and not rv) and (not qC and not qG or qa and false) and (not qC and not qa and (qG and qC) or qa and qC and (qv or false))) then
    rW = fns.fn380
    rX = function()
        local wK
        local wP = if qu() then 1 else 0
        if wP == 1 then
            return false
        elseif qf() >= r5() then
            return false
        else
            local wL = qm()
            if not wL then
                return false
            end
            wK = qf()
            if wL.position then
                ru(wL.position)
                task.wait(0.25)
            end
            qj(wL.prompt)
            if not qG(function()
                return qf() > wK
            end, 2) then
                qj(wL.prompt)
                if not qG(function()
                    return qf() > wK
                end, 1.5) then
                    return false
                end
                q9()
                qG(function()
                    return qf() == 0
                end, 2)
                return true
            end
            q9()
            qG(function()
                return qf() == 0
            end, 2)
            return true
        end
    end
    Bw_2 = fns.fn496
    qi = fns.fn226
else
    Bw_2 = fns.fn380
    rW = function()
        local wK
        local wP = if qu() then 1 else 0
        if wP == 1 then
            return false
        elseif qf() >= r5() then
            return false
        else
            local wL = qm()
            if not wL then
                return false
            end
            wK = qf()
            if wL.position then
                ru(wL.position)
                task.wait(0.25)
            end
            qj(wL.prompt)
            if not qG(function()
                return qf() > wK
            end, 2) then
                qj(wL.prompt)
                if not qG(function()
                    return qf() > wK
                end, 1.5) then
                    return false
                end
                q9()
                qG(function()
                    return qf() == 0
                end, 2)
                return true
            end
            q9()
            qG(function()
                return qf() == 0
            end, 2)
            return true
        end
    end
    qi = fns.fn496
    rX = fns.fn226
end
if (qx and rp and (not qx and qx) or (rp or not rp) and (qx and not rp) or (not qx and qx and (not qx and not rp) or (not qx or rp) and (qx and qx))) and not (qx and rp and (not qx and qx) or (rp or not rp) and (qx and not rp) or (not qx and qx and (not qx and not rp) or (not qx or rp) and (qx and qx))) then
    rp = fn1028
    rV = fns.fn409
    q2 = fn845
    rO = function()
        local ya, yc
        if qu() then
            return false
        end
        ya = qx()
        yc = 30
        pcall(function()
            yc = RebirthConfig.GetRebirthPowerLevelRequirement(ya)
        end)
        local yb = qW()
        local ye = rd()
        local yi = false
        repeat
            local yd
            if yb < yc then
                yd = nil
                pcall(function()
                    yd = PowerUpgradesConfig.GetUpgradePriceForSeveralLevels(yb, 1)
                end)
                local yf = type(yd) ~= "number" or ye < yd
                if yf then
                    yi = true
                else
                    qv(p3, 1)
                    ye -= yd
                    yb += 1
                    task.wait(0.05)
                end
            else
                yi = true
            end
        until yi
        yb = qW()
        if yb < yc then
            return false
        end
        qv(p8)
        return true
    end
else
    q2 = fn1028
    rp = fns.fn409
    rO = fn845
    rV = function()
        local ya, yc
        if qu() then
            return false
        end
        ya = qx()
        yc = 30
        pcall(function()
            yc = RebirthConfig.GetRebirthPowerLevelRequirement(ya)
        end)
        local yb = qW()
        local ye = rd()
        local yi = false
        repeat
            local yd
            if yb < yc then
                yd = nil
                pcall(function()
                    yd = PowerUpgradesConfig.GetUpgradePriceForSeveralLevels(yb, 1)
                end)
                local yf = type(yd) ~= "number" or ye < yd
                if yf then
                    yi = true
                else
                    qv(p3, 1)
                    ye -= yd
                    yb += 1
                    task.wait(0.05)
                end
            else
                yi = true
            end
        until yi
        yb = qW()
        if yb < yc then
            return false
        end
        qv(p8)
        return true
    end
end
p6 = fns.fn237
r9(Bw_62.OnClientEvent:Connect(onOnClientEvent))
Bw_13 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = qV, Copyable = true }, "|", q1 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
rm = {
    Info = Bw_13:AddTab("Info", "info"),
    Main = Bw_13:AddTab("Main", "pickaxe"),
    Player = Bw_13:AddTab("Player", "person-standing"),
    Settings = Bw_13:AddTab("Settings", "settings")
}
Bw_44 = fn908
for k, v in rm do
    if k ~= "Info" then
        Bw_44(v)
    end
end
Bw_13 = rm.Main:AddLeftGroupbox("Farm", "swords")
Bw_13:AddToggle("AutoBreakWalls", { Text = "Auto Break Walls", Default = false })
Bw_13:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
Bw_13:AddDivider("Brainrots")
Bw_13:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
Bw_13:AddDropdown("SelectedRarities", {
    Text = "Rarities",
    Values = Bw_59,
    Default = { Common = true, Uncommon = true, Rare = true },
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
Bw_13:AddDropdown("SelectedMutations", {
    Text = "Mutations",
    Values = Bw_23,
    Default = { Normal = true, Golden = true, Diamond = true, Galaxy = true, Lava = true, Rainbow = true },
    Multi = true
})
Bw_13:AddDropdown("SelectedZones", {
    Text = "Zones",
    Values = Bw_32,
    Default = Bw_41,
    Multi = true,
    Expandable = true,
    ExpandColumns = 2
})
Bw_50 = rm.Main:AddRightGroupbox("Base", "house")
Bw_50:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
Bw_50:AddToggle("AutoReplaceBetter", { Text = "Auto Replace Better", Default = false })
Bw_50:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
Bw_50:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
Bw_50:AddDropdown("BuyUpgrades", {
    Text = "Upgrades",
    Values = Bw_53,
    Default = { Power = true, Speed = true, Carry = true },
    Multi = true
})
Bw_50:AddToggle("AutoBuyPickaxe", { Text = "Auto Buy Pickaxe", Default = false })
Bw_50:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local function Bw_26()
    local zi
    local zh
    zh = nil
    zi = nil
    local Label, Label2, Label3, zm, zn
    local function zo()
        local yt = hookfunction ~= nil
        local yu = hookmetamethod ~= nil
        local yv = getrawmetatable ~= nil
        local yw = setrawmetatable ~= nil
        local yx = getgc ~= nil
        local yy = getgenv ~= nil
        local yz = getreg ~= nil
        local yA = getconnections ~= nil
        local yB = firesignal ~= nil
        local yC = getcallbackvalue ~= nil
        local yD = setclipboard ~= nil
        local yE = getcustomasset ~= nil
        local yF = getnamecallmethod ~= nil
        local yG = isexecutorclosure ~= nil
        local yH = fireproximityprompt ~= nil
        local yI = firetouchinterest ~= nil
        local yJ = WebSocket ~= nil
        local yK = readfile ~= nil
        local yL = writefile ~= nil
        local yM = request
        local yX = if yM then 1 else 0
        local yV = 1857 * yX + 877 * (1 - yX)
        local yW = 864 * yX + 3706 * (1 - yX)
        if not ((yV * 1699 + yW * 941 + yV * yW) % 16777213 == 5572515) then
            yM = http_request
        end
        local yN = yM ~= nil
        local yP = (debug and debug.getupvalues) ~= nil
        local yR = (debug and debug.setupvalue) ~= nil
        local yS = 0
        local yT = { yt, yu, yv, yw, yx, yy, yz, yA, yB, yC, yD, yE, yF, yG, yH, yI, yJ, yK, yL, yN, yP, yR }
        for i, v in ipairs(yT) do
            if v then
                yS += 1
            end
        end
        local yt_1 = yS / #yT
        if yt_1 >= 0.9 then
            return rh("Full Support", q_)
        elseif yt_1 >= 0.6 then
            return rh("Half Support", qP)
        else
            return rh("Low Support", qF)
        end
    end
    zh = "Unknown"
    pcall(function()
        local y4_1
        local y3_1
        if identifyexecutor then
            y4_1, y3_1 = identifyexecutor()
            local y5 = y4_1 ~= ""
            local y6 = type(y4_1) == "string" and y5
            if y6 then
                local y5_1 = type(y3_1) == "string" and y3_1 ~= "" and y4_1 .. " " .. y3_1
                zh = y5_1 or y4_1
            end
        end
    end)
    local zp = zo()
    zi = os.clock()
    zm = function()
        local zb = math.floor(os.clock() - zi)
        if zb < 60 then
            return zb .. "s"
        elseif zb < 3600 then
            return string.format("%dm %ds", zb // 60, zb % 60)
        else
            return string.format("%dh %dm", zb // 3600, zb % 3600 // 60)
        end
    end
    local UserGroup = rm.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(q0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, q_), true)
    UserGroup:AddLabel(q0("UserId", tostring(LocalPlayer.UserId), qU), true)
    UserGroup:AddLabel(q0("Executor", zh .. "  " .. zp, q_), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(q0("Session", zm(), qP), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            rP(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            rP("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = rm.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(q0("Game", q1, qU), true)
    Label2 = SessionGroup:AddLabel(q0("Players", "0/0", q_), true)
    zn = tostring(game.JobId)
    local zp_1 = #zn > 18 and string.sub(zn, 1, 18) .. "..."
    local zp_2 = zp_1 or zn
    SessionGroup:AddLabel(q0("Job", zp_2, qL), true)
    Label = SessionGroup:AddLabel(q0("Ping", "0 ms", qP), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            rP(zn, "Copied Job ID")
        end
    })
    task.spawn(function()
        local ze_1
        local zd_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(q0("Session", zm(), qP))
            Label2:SetText(q0("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), q_))
            zd_1, ze_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local zd_2 = zd_1 and ze_1 .. " ms" or "n/a"
            Label:SetText(q0("Ping", zd_2, qP))
        end
    end)
    local SocialsGroup = rm.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = rv })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            rP(qR, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            rP(qN, "Copied website link")
        end
    })
    local DonationsGroup = rm.Info:AddLeftGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(rh("All donations are optional but appreciated.", qP), true)
    DonationsGroup:AddLabel(rh("If you donate you get a special role, just PING after you donate.", q_), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(rh("LTC / Litecoin", r7), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            rP(qB, "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(rh("BTC / Bitcoin", r2), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            rP(qy, "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(rh("ETH / Ethereum", rU), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            rP(qs, "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(rh("USDT", rN), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            rP(qn, "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(rh("Solana", rJ), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            rP(qg, "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(rh("PayPal", rG), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            rP(p9, "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(rh("Venmo", rC), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            rP(p4, "Copied Venmo link")
        end
    })
end
Bw_44 = function()
    local connection
    local Ab
    Ab = nil
    connection = nil
    local CurrentCamera, Ac
    local MovementGroup = rm.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = true })
    local FlyGroup = rm.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    r9(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local zF = if qC("NoClip") then 1 else 0
        if zF == 1 then
            local zv = ri()
            if zv then
                for i, descendant in ipairs(zv:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    r9(UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if qC("InfJump") then
            local zG = q6()
            if zG then
                zG:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    CurrentCamera = Workspace.CurrentCamera
    r9(RunService.RenderStepped:Connect(function(kr)
        if Library.Unloaded then
            return
        end
        if qC("WalkSpeedEnabled") then
            local zL_1 = q6()
            if zL_1 then
                zL_1.WalkSpeed = qb("WalkSpeed", 32)
            end
        end
        if qC("Fly") then
            local zL_2 = qM()
            local zM = q6()
            if zL_2 and zM then
                zM.PlatformStand = true
                local zM_1 = Vector3.zero
                local zR = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if zR == 1 then
                    zM_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    zM_1 -= CurrentCamera.CFrame.LookVector
                end
                local zR_1 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if zR_1 == 1 then
                    zM_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    zM_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    zM_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    zM_1 -= Vector3.new(0, 1, 0)
                end
                zL_2.AssemblyLinearVelocity = Vector3.zero
                if zM_1.Magnitude > 0 then
                    zL_2.CFrame = zL_2.CFrame + zM_1.Unit * qb("FlySpeed", 60) * kr
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local zS = q6()
            if zS then
                zS.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local zU = q6()
            if zU then
                zU.WalkSpeed = 16
            end
        end
    end)
    Ab = function(kO)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not kO)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not kO
            end
        end)
        if not kO then
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
        Ab(Toggles.AntiGameplayPause.Value)
    end)
    Ab(true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if qC("AntiGameplayPause") then
                Ab(true)
            end
        end
    end)
    Ac = function(k6)
        if not k6:IsA("ProximityPrompt") then
            return
        end
        k6.HoldDuration = 0
        k6.MaxActivationDistance = 50
        k6.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(Ac, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(le)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(Ac, le)
                end
            end)
            r9(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    if Toggles.InstantProximityPrompt.Value then
        Toggles.InstantProximityPrompt:SetValue(true)
    end
    Library:OnUnload(function()
        Ab(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
Bw_26()
Bw_44()
task.spawn(worker)
Bw_35 = function()
    local MenuGroup = rm.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local lG = 0
    local lH = tick()
    local Label
    local function lJ()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        lG += 1
        lH = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. lG)
            end)
        end
    end
    local connection = LocalPlayer.Idled:Connect(function()
        if qC("AntiAfk") then
            pcall(lJ)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Aq = qC("AntiAfk") and tick() - lH >= 60
            if Aq then
                pcall(lJ)
            end
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        for k, v in qp do
            local AB = v
            pcall(function()
                AB:Disconnect()
            end)
        end
        table.clear(qp)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(rm.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/BreakWallsForBrainrots")
    local ma = SaveManager:BuildConfigSection(rm.Settings)
    local function mb(mc, md)
        local AD_1 = (mc == "Toggle" and Toggles or Options)[md]
        local AC_2 = type(AD_1) == "table" and AD_1.Type == mc
        local AC_3 = AC_2 and AD_1
        local AI = if AC_3 then 1 else 0
        local AG = 2620 * AI + 1578 * (1 - AI)
        local AH = 275 * AI + 3219 * (1 - AI)
        if not ((AG * 796 + AH * 1459 + AG * AH) % 16777213 == 3207245) then
            AC_3 = nil
        end
        return AC_3
    end
    local function mk(ml, mm)
        local Type = mm.Type
        if Type == "Toggle" then
            return { idx = ml, type = "Toggle", value = mm.Value == true }
        elseif Type == "Slider" then
            return { idx = ml, type = "Slider", value = tostring(mm.Value) }
        elseif Type == "Dropdown" then
            return { idx = ml, type = "Dropdown", multi = mm.Multi == true, value = mm.Value }
        elseif Type == "Input" then
            local AK = mm.Value or ""
            return { idx = ml, type = "Input", text = tostring(AK) }
        elseif Type == "ColorPicker" then
            return { idx = ml, type = "ColorPicker", value = mm.Value:ToHex(), transparency = mm.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = ml,
                type = "KeyPicker",
                mode = mm.Mode,
                key = mm.Value,
                modifiers = mm.Modifiers,
                toggled = mm.Toggled
            }
        else
            return nil
        end
    end
    local function mo()
        local AN = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local AO = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if AO then
                    local AO_1 = mk(k, v)
                    if AO_1 then
                        AN[#AN + 1] = AO_1
                    end
                end
            end
        end
        table.sort(AN, function(my, mz)
            if my.type ~= mz.type then
                return my.type < mz.type
            end
            return my.idx < mz.idx
        end)
        return { objects = AN }
    end
    local function mA(mB)
        local A3
        A3 = nil
        local A4 = type(mB) ~= "table" or type(mB.idx) ~= "string" or type(mB.type) ~= "string"
        local A8 = if A4 then 1 else 0
        local A6 = 1838 * A8 + 1180 * (1 - A8)
        local A7 = 2703 * A8 + 2049 * (1 - A8)
        if not ((A6 * 2802 + A7 * 761 + A6 * A7) % 16777213 == 12175173) then
            A4 = SaveManager.Ignore[mB.idx]
        end
        if A4 then
            return false
        end
        A3 = mb(mB.type, mB.idx)
        if not A3 then
            return false
        end
        local A4_1 = pcall(function()
            if mB.type == "Input" then
                if type(mB.text) ~= "string" then
                    return
                end
                A3:SetValue(mB.text)
            elseif mB.type == "ColorPicker" then
                A3:SetValueRGB(Color3.fromHex(mB.value), mB.transparency)
            elseif mB.type == "KeyPicker" then
                A3:SetValue({ mB.key, mB.mode, mB.modifiers })
                if mB.mode == "Toggle" and mB.toggled ~= nil then
                    A3.Toggled = mB.toggled
                    A3:Update()
                end
            else
                A3:SetValue(mB.value)
            end
        end)
        return A4_1
    end
    ma:AddDivider()
    ma:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    ma:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local Ba_1
            local A9_1
            A9_1, Ba_1 = pcall(HttpService.JSONEncode, HttpService, mo())
            if not A9_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local A9_2 = setclipboard or toclipboard
            local A9_3 = type(A9_2) ~= "function" or not pcall(A9_2, Ba_1)
            if A9_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    ma:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local Bi_1
            local Bg = Options.SaveManager_ImportSource.Value or ""
            local Bg_1
            local Bh = tostring(Bg):match("^%s*(.-)%s*$")
            if Bh == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            Bg_1, Bi_1 = pcall(HttpService.JSONDecode, HttpService, Bh)
            local Bh_1 = not Bg_1
            local Bm = if Bh_1 then 1 else 0
            local Bk = 2031 * Bm + 2398 * (1 - Bm)
            local Bl = 3569 * Bm + 2738 * (1 - Bm)
            if not ((Bk * 3180 + Bl * 2292 + Bk * Bl) % 16777213 == 5110154) then
                Bh_1 = type(Bi_1) ~= "table"
            end
            if not Bh_1 then
                Bh_1 = type(Bi_1.objects) ~= "table"
            end
            if Bh_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local Bg_2 = 0
            for i, v in ipairs(Bi_1.objects) do
                if mA(v) then
                    Bg_2 += 1
                end
            end
            if Bg_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Bi_2 = Bg_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Bg_2, Bi_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
end
Bw_35()
