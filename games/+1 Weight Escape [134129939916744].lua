local sm
local sI
local rI
local rL
local ss
local r6
local rO
local sv
local r9
local rR
local sc
local sf
local sB
local sE
local si
local rE
local r_
local sH
local r2
local so
local LocalPlayer
local sr
local CoreGui
local rN
local su
local connection
local sx
local rT
local sA
local se
local rW
local sD
local sh
local rD
local sk
local sG
local r1
local rG
local sn
local r4
local sq
local rJ
local rM
local r7
local rP
local sw
local sz
local sg
local sC
local rC
local sF
local function fn2()
    rM(sI)
    rM(sD)
    rM(sv)
    rM(sn)
    rM(si)
    rM(sc)
    rI(nil)
end
local function fn50(dv)
    local v0 = tonumber(dv)
    if v0 then
        return v0 >= 7 and "World2" or "World1"
    end
    return nil
end
local function fn84(gi)
    if gi then
        rN(sD, sg)
    else
        rM(sD)
        sA.RebirthStatus = "Idle"
    end
end
local function fn104()
    local uj = 25
    local uk = ss.progression and ss.progression.Rebirth and tonumber(ss.progression.Rebirth.World2StartRebirth)
    if uk then
        uj = tonumber(ss.progression.Rebirth.World2StartRebirth)
    end
    return sf() >= uj
end
local function fn112(gQ)
    if gQ then
        rN(sc, rW)
    else
        rM(sc)
        sA.UpgradeStatus = "Idle"
    end
end
local function fn174(gc)
    if gc then
        rN(sI, rJ)
    else
        rM(sI)
        sA.WinStatus = "Idle"
    end
end
local function fn206(gy)
    if gy then
        rN(sn, rP)
    else
        rM(sn)
        sA.WeightStatus = "Idle"
    end
end
local function fn207(cM, cN)
    local vj = r7(cM)
    local vk = vj and vj:FindFirstChild(tostring(cN))
    local vj_1 = vk
    if vk then
        vk = vj_1:FindFirstChild("Win")
    end
    local vj_2 = vk
    if vj_2 then
        local vk_1 = (vj_2:IsA("BasePart")) and vj_2
        local vl = vk_1 or vj_2:FindFirstChildWhichIsA("BasePart", true)
        if vl then
            return vl.Position
        end
        return sE[cM]
    end
    return sE[cM]
end
local function fn245()
    local vS = {}
    if not (ss.progression and ss.progression.Training) then
        return vS
    end
    for k, v in pairs(ss.progression.Training.Areas) do
        table.insert(vS, { Name = k, Info = v })
    end
    table.sort(vS, function(dp, dq)
        local vL = (tonumber(dp.Info.Multiplier))
        local vR = if vL then 1 else 0
        local vP = 1573 * vR + 2467 * (1 - vR)
        local vQ = 2039 * vR + 24 * (1 - vR)
        if not ((vP * 3368 + vQ * 1256 + vP * vQ) % 16777213 == 11066195) then
            vL = 0
        end
        local vM = vL
        local vL_1 = (tonumber(dq.Info.Multiplier)) or 0
        if vM == vL_1 then
            return dp.Name < dq.Name
        end
        return vM > vL_1
    end)
    return vS
end
local function fn309(bs)
    return bs >= 16 and "World2" or "World1"
end
local function fn323(gr)
    if gr then
        rN(sv, rL)
    else
        rM(sv)
        rI(nil)
        sA.TrainStatus = "Idle"
    end
end
local function fn335(af, ag)
    local tk = af and af:FindFirstChild(ag)
    return tk or nil
end
local function fn354(e4)
    local xw_1
    local xv_1
    xw_1, xv_1 = nil, -1
    for k, v in pairs(e4) do
        local xx = ss.progression.Trails[k]
        if v == true and xx then
            local xy_1 = (tonumber(xx.Multiplier)) or 0
            if xy_1 > xv_1 then
                xw_1, xv_1 = k, xy_1
            end
        end
    end
    return xw_1
end
local function fn395(U)
    local ti = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if ti then
        return cloneref(U)
    end
    return U
end
local function fn417()
    local vD_1
    local vC_1
    if not ss.rebirthService then
        sA.RebirthStatus = "Rebirth service unavailable"
        task.wait(2)
        return
    end
    vC_1, vD_1 = su(ss.rebirthService, "Rebirth")
    local vE = not vC_1 or type(vD_1) ~= "table"
    if vE then
        sA.RebirthStatus = "Rebirth request failed"
        return
    end
    if vD_1.Success then
        sA.RebirthStatus = string.format("Rebirthed | now %d", sf())
        return
    end
    local vC_2 = vD_1.Reason or "Locked"
    local vE_1 = tostring(vC_2)
    if vE_1 == "LevelRequired" then
        local format = string.format
        local vF = r6()
        local vG = (tonumber(vD_1.RequiredLevel))
        local vK = if vG then 1 else 0
        local vI = 2113 * vK + 2326 * (1 - vK)
        local vJ = 507 * vK + 1224 * (1 - vK)
        if not ((vI * 2914 + vJ * 1806 + vI * vJ) % 16777213 == 8144215) then
            vG = 0
        end
        sA.RebirthStatus = format("Level %d / %d", vF, vG)
        return
    end
    sA.RebirthStatus = "Rebirth: " .. vE_1
end
local function fn427()
    local Character = LocalPlayer.Character
    local uq = Character and Character:FindFirstChild("HumanoidRootPart")
    return uq or nil
end
local function fn430()
    local xj = {}
    if not (ss.progression and ss.progression.Trails) then
        return xj
    end
    for k, v in pairs(ss.progression.Trails) do
        if tonumber(v.WinPrice) then
            table.insert(xj, { Name = k, Info = v })
        end
    end
    table.sort(xj, function(e1, e2)
        local xg = (tonumber(e1.Info.WinPrice)) or 0
        local xh = (tonumber(e2.Info.WinPrice)) or 0
        return xg < xh
    end)
    return xj
end
local function fn496()
    local uc = (tonumber(rT("Rebirths")))
    local ug = if uc then 1 else 0
    local ue = 1374 * ug + 879 * (1 - ug)
    local uf = 3539 * ug + 574 * (1 - ug)
    if not ((ue * 1552 + uf * 1267 + ue * uf) % 16777213 == 11478947) then
        uc = 0
    end
    return uc
end
local function fn497()
    local tB_1
    local tA_1, tA_2, tA_3
    local tz = sm(rE, "Nex")
    local tz_2, tz_3
    if tz then
        tA_1, tB_1 = pcall(require, tz)
        local tz_1 = tA_1 and type(tB_1) == "table"
        if tz_1 then
            ss.nex = tB_1
        end
    end
    if ss.nex then
        if r_(ss.nex.GetController) then
            tz_2, tA_2 = pcall(ss.nex.GetController, "DataController")
            local tB_2 = tz_2 and type(tA_2) == "table" and r_(tA_2.GetData)
            if tB_2 then
                ss.data = tA_2
            end
        end
        if r_(ss.nex.GetInfo) then
            tz_3, tA_3 = pcall(ss.nex.GetInfo, "Progression")
            local tB_3 = tz_3 and type(tA_3) == "table"
            if tB_3 then
                ss.progression = tA_3
            end
        end
        if r_(ss.nex.GetService) then
            local function tz_4(aE)
                local tw_1
                local tv_1
                tv_1, tw_1 = pcall(ss.nex.GetService, aE)
                return tv_1 and tw_1 or nil
            end
            ss.weightService = tz_4("WeightService")
            ss.trailService = tz_4("TrailService")
            ss.upgradeService = tz_4("UpgradeService")
            ss.rebirthService = tz_4("RebirthService")
        end
    end
    local tz_5 = {}
    if not ss.data then
        table.insert(tz_5, "data")
    end
    if not ss.progression then
        table.insert(tz_5, "progression")
    end
    if not ss.weightService then
        table.insert(tz_5, "weights")
    end
    if not ss.trailService then
        table.insert(tz_5, "trails")
    end
    if not ss.upgradeService then
        table.insert(tz_5, "upgrades")
    end
    if not ss.rebirthService then
        table.insert(tz_5, "rebirth")
    end
    ss.missing = tz_5
    ss.ready = true
end
local function fn507()
    local wM = {}
    if not (ss.progression and ss.progression.Weights) then
        return wM
    end
    for k, v in pairs(ss.progression.Weights) do
        local wN_1 = tonumber(v.Stand)
        if wN_1 and so[wN_1] then
            table.insert(wM, { Name = k, Info = v, Stand = wN_1 })
        end
    end
    table.sort(wM, function(eq, er)
        return eq.Stand < er.Stand
    end)
    return wM
end
local function fn535()
    local t7 = (tonumber(rT("Wins")))
    local ub = if t7 then 1 else 0
    local t9 = 2030 * ub + 2955 * (1 - ub)
    local ua = 79 * ub + 1047 * (1 - ub)
    if not ((t9 * 827 + ua * 2118 + t9 * ua) % 16777213 == 2006502) then
        t7 = 0
    end
    return t7
end
local function fn542()
    gethui = sH
end
local function fn557(cy)
    local u_ = r7(cy)
    local u0 = 0
    if u_ then
        for i, child in ipairs(u_:GetChildren()) do
            local u__1 = tonumber(child.Name)
            if u__1 and u__1 > u0 then
                u0 = u__1
            end
        end
    end
    if u0 > 0 then
        return u0
    end
    if ss.progression and ss.progression[cy] and ss.progression[cy].Stages then
        for k in pairs(ss.progression[cy].Stages.Rewards) do
            local u__3 = tonumber(k)
            if u__3 and u__3 > u0 then
                u0 = u__3
            end
        end
    end
    local u0_1 = u0 > 0 and u0
    local vi = if u0_1 then 1 else 0
    local vg = 2207 * vi + 64 * (1 - vi)
    local vh = 3058 * vi + 454 * (1 - vi)
    if not ((vg * 472 + vh * 3346 + vg * vh) % 16777213 == 1245565) then
        u0_1 = 30
    end
    return u0_1
end
local function fn570(aX)
    local tX_1
    local tW_1
    if not ss.data then
        return nil
    end
    tW_1, tX_1 = pcall(ss.data.GetData, aX, true)
    if tW_1 then
        return tX_1
    end
    return nil
end
local function fn581()
    local x6 = not ss.upgradeService
    if not x6 then
        x6 = not (ss.progression and ss.progression.Upgrades)
    end
    if x6 then
        sA.UpgradeStatus = "Upgrade service unavailable"
        task.wait(2)
        return
    end
    local targets = sc.targets
    local x7_2 = type(targets) ~= "table" or #targets == 0
    if x7_2 then
        sA.UpgradeStatus = "No upgrades selected"
        task.wait(1)
        return
    end
    local x7_3 = {}
    for i, v in ipairs(targets) do
        local x6_2 = ss.progression.Upgrades.Definitions[v]
        if x6_2 then
            local x8 = sq(x6_2)
            local x8_2
            local x9 = r4(x6_2)
            local x9_1
            if x8 >= x9 then
                table.insert(x7_3, string.format("%s maxed at %d", v, x8))
            else
                local x8_1 = sC(x6_2)
                if sr() < x8_1 then
                    table.insert(x7_3, string.format("%s needs %s", v, se(x8_1)))
                else
                    x8_2, x9_1 = su(ss.upgradeService, "PurchaseWithWins", v)
                    local ya = x8_2 and type(x9_1) == "table" and x9_1.Success
                    if ya then
                        local format = string.format
                        local ya_1 = x9_1.Value or sq(x6_2)
                        sA.UpgradeStatus = format("%s -> %s", v, tostring(ya_1))
                        return
                    end
                    table.insert(x7_3, string.format("%s failed", v))
                end
            end
        end
    end
    local x6_3 = #x7_3 > 0 and table.concat(x7_3, " | ")
    sA.UpgradeStatus = x6_3 or "Idle"
end
local function fn610()
    local attr = LocalPlayer:GetAttribute("CurrentWorld")
    if attr == "World2" then
        return "World2"
    end
    return "World1"
end
local function worker()
    local tN_1
    local tM_1
    tM_1, tN_1 = pcall(sF)
    if not tM_1 then
        warn("[Ouroboros] module load failed: " .. tostring(tN_1))
        ss.ready = true
    end
end
local function fn617()
    local xI_2, xI_3
    local xH_3
    local xG = not ss.trailService
    local xG_3
    if not xG then
        xG = not (ss.progression and ss.progression.Trails)
    end
    if xG then
        sA.TrailStatus = "Trail service unavailable"
        task.wait(2)
        return
    end
    local xG_1 = rT("OwnedTrails")
    if type(xG_1) ~= "table" then
        sA.TrailStatus = "Waiting for data"
        return
    end
    for i, v in ipairs(rC()) do
        if xG_1[v.Name] ~= true then
            local xH_2 = (tonumber(v.Info.WinPrice)) or 0
            if sr() < xH_2 then
                sA.TrailStatus = string.format("Next %s | %s Wins", v.Name, se(xH_2))
                break
            end
            xH_3, xI_2 = su(ss.trailService, "PurchaseWithWins", v.Name)
            local xJ_1 = xH_3 and type(xI_2) == "table" and xI_2.Success
            if xJ_1 then
                sA.TrailStatus = string.format("Bought %s trail", v.Name)
                xG_1 = rT("OwnedTrails")
                if type(xG_1) ~= "table" then
                    return
                end
            else
                sA.TrailStatus = string.format("%s purchase failed", v.Name)
                break
            end
        end
    end
    local xH_4 = r1(xG_1)
    local xG_2 = xH_4 and rT("EquippedTrail") ~= xH_4
    if xG_2 then
        xG_3, xI_3 = su(ss.trailService, "ToggleEquip", xH_4)
        local xJ_2 = xG_3 and type(xI_3) == "table" and xI_3.Success and xI_3.Equipped
        if xJ_2 then
            sA.TrailStatus = string.format("Equipped %s trail", xH_4)
        end
    elseif xH_4 then
        sA.TrailStatus = string.format("Equipped %s trail", xH_4)
    end
end
local function fn656()
    return not sh.Unloaded
end
local function fn671()
    local uh = (tonumber(rT("Level"))) or 1
    return uh
end
local function fn674(aS)
    local tP = (tonumber(aS)) or 0
    aS = tP
    local tP_1 = 1
    local tQ = { "", "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No", "Dc" }
    while aS >= 1000 and tP_1 < 12 do
        aS = aS / 1000
        tP_1 += 1
    end
    if tP_1 == 1 then
        return string.format("%d", aS)
    end
    return string.format("%.2f%s", aS, tQ[tP_1])
end
local function fn687()
    connection:Disconnect()
    rR = nil
end
local function fn689(dy)
    if dy.Gamepass then
        return LocalPlayer:GetAttribute(string.format("TrainingAccess_%s", dy.Gamepass)) == true
    end
    local v3 = sf()
    local v4 = (tonumber(dy.RequiredRebirths)) or 0
    return v3 >= v4
end
local function fn790(bK, bL)
    if typeof(bK) ~= "Vector3" then
        return false
    end
    local uG = bL or 4
    rR = CFrame.new(bK + Vector3.new(0, uG, 0))
    return sB(bK, bL)
end
local function fn800(aj, ak)
    local tn = aj
    if type(ak) ~= "table" then
        return nil
    end
    for i, v in ipairs(ak) do
        if not tn then
            return nil
        end
        tn = tn:FindFirstChild(v)
    end
    return tn
end
local function fn830(gE)
    if gE then
        rN(si, sk)
    else
        rM(si)
        sA.TrailStatus = "Idle"
    end
end
local function fn857(dC, dD)
    local v6 = r2(sG, { "Important", "TrainAreas" })
    if v6 then
        for i, child in ipairs(v6:GetChildren()) do
            if child.Name == dC then
                local attr = child:GetAttribute("World")
                if attr == nil or attr == dD then
                    local Touch = child:FindFirstChild("Touch")
                    local v7_2 = Touch and Touch:IsA("BasePart")
                    if v7_2 then
                        return Touch.Position
                    end
                end
            end
        end
    end
    local v6_3 = sx[dD]
    return v6_3 and v6_3[dC] or nil
end
local function fn909(fB)
    local xU = tonumber(rT(fB.DataKey)) or fB.BaseValue
    return math.clamp(math.max(fB.BaseValue, math.round(xU)), fB.BaseValue, fB.MaxValue)
end
local function fn922(fL)
    local x_ = math.max(0, math.floor((sq(fL) - fL.BaseValue) / fL.Increment))
    if x_ == 0 and fL.FirstWinCost then
        return fL.FirstWinCost
    end
    local x0_1 = (tonumber(fL.WinCostGrowth)) or tonumber(ss.progression.Upgrades.WinCostGrowth)
    local x0_2 = x0_1 or 1.3
    return math.max(1, math.round(fL.BaseWinCost * x0_2 ^ x_))
end
local function fn932()
    local wg = rD()
    local area = sv.area
    local wi = sz()
    if area ~= "Best Unlocked" then
        for i, v in ipairs(wi) do
            if v.Name == area then
                local wj_1 = rG(v.Name)
                if wj_1 and wj_1 ~= wg then
                    return nil, string.format("%s is in %s", v.Name, wj_1)
                elseif not sw(v.Info) then
                    return nil, string.format("%s locked", v.Name)
                else
                    return v, nil
                end
            end
        end
        return nil, "Area not found"
    end
    for i, v in ipairs(wi) do
        local wh_1 = rG(v.Name)
        local wj_2 = not wh_1 or wh_1 == wg
        local wh_2 = wj_2 and sw(v.Info)
        if wh_2 then
            return v, nil
        end
    end
    return nil, "No unlocked area"
end
local function onHeartbeat()
    local uI = not rR
    local uJ = not rO() or uI
    if uJ then
        return
    end
    local uI_1 = r9()
    if not uI_1 then
        return
    end
    uI_1.CFrame = rR
    uI_1.AssemblyLinearVelocity = Vector3.zero
end
local function fn991(bz)
    rR = bz
end
local function fn1014(a1, a2, ...)
    local t0_1
    local t__1, t__2
    if not a1 then
        return false, nil
    end
    local tZ = a1[a2]
    local tZ_2
    local t4 = if not r_(tZ) then 1 else 0
    if t4 == 1 then
        return false, nil
    end
    t__1, t0_1 = pcall(tZ, ...)
    local tZ_1 = not t__1 or type(t0_1) ~= "table" or not r_(t0_1.await)
    if tZ_1 then
        return false, nil
    end
    tZ_2, t__2 = t0_1:await()
    if not tZ_2 then
        return false, nil
    end
    return true, t__2
end
local function fn1047(gK)
    local yt = {}
    if type(gK) == "table" then
        for k, v in pairs(gK) do
            local yu_1 = v == true and type(k) == "string"
            if yu_1 then
                table.insert(yt, k)
            elseif type(v) == "string" then
                table.insert(yt, v)
            end
        end
    else
        local yu_2 = gK ~= ""
        local yv = type(gK) == "string" and yu_2
        if yv then
            table.insert(yt, gK)
        end
    end
    table.sort(yt)
    sc.targets = yt
end
local function fn1069(cm)
    cm.stopped = true
    cm.generation = (cm.generation or 0) + 1
end
local function fn1111(fE)
    local xW = math.max(0, math.floor((fE.MaxValue - fE.BaseValue) / fE.Increment))
    local xX = math.min(fE.MaxValue, fE.BaseValue + math.floor(xW / 2) * fE.Increment)
    local xW_1 = (tonumber(ss.progression.Upgrades.World2RequiredRebirths)) or 25
    if sf() < xW_1 then
        return xX
    end
    return fE.MaxValue
end
local function fn1114(cu)
    return r2(sG, { "Important", "CoreLoop", "Stages", cu })
end
local function fn1122(X)
    return type(X) == "function"
end
local function fn1123()
    return CoreGui
end
local function fn1148(b1)
    local uQ_2
    local uP = os.clock() + 8
    local uP_1
    while true do
        local uQ_1 = sA.MoveBusy and rO() and os.clock() < uP
        if uQ_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    if not rO() then
        return
    end
    sA.MoveBusy = true
    uP_1, uQ_2 = pcall(b1)
    sA.MoveBusy = false
    if not uP_1 then
        warn("[Ouroboros] move error: " .. tostring(uQ_2))
    end
end
local function fn1152(go)
    local yn = go or "Best Unlocked"
    local yo = tostring(yn)
    if yo == "" then
        yo = "Best Unlocked"
    end
    sv.area = yo
end
rC = nil
rD = nil
rE = nil
rG = nil
rI = nil
rJ = nil
LocalPlayer = nil
rL = nil
rM = nil
rN = nil
rO = nil
rP = nil
rR = nil
rT = nil
rW = nil
r_ = nil
r1 = nil
r2 = nil
r4 = nil
CoreGui = nil
r6 = nil
r7 = nil
r9 = nil
connection = nil
sc = nil
se = nil
sf = nil
sg = nil
sh = nil
si = nil
sk = nil
sm = nil
sn = nil
local Players, rF, rH, rQ, rS, rU, rV, Lighting, rY, rZ, TeleportService, r3, r8, GuiService, HttpService, sj, VirtualUser
so = nil
sq = nil
sr = nil
ss = nil
su = nil
sv = nil
sw = nil
sx = nil
sz = nil
sA = nil
sB = nil
sC = nil
sD = nil
sE = nil
sF = nil
sG = nil
sH = nil
sI = nil
local UserInputService, st, sy
local sQ_3
local sP_5
local sM_1, sM_2
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, sy, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, rS, LocalPlayer, sH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local sL = game:GetService("ReplicatedStorage")
local sL_1
sy = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
rS = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local sK = "OuroborosWeightEscape"
local sK_2
sH = fn1123
if getgenv then
    getgenv().gethui = sH
end
sh, rE, sG, sA, ss, sM_1, rU, r_, rO, sm, r2, sF = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sN = 12
repeat
    local sO_1 = (sN * 5 + 0) % 6 + 1
    if sO_1 <= 3 then
        if sO_1 <= 2 then
            if sO_1 <= 1 then
                if sN * 78694739 + 2 + 4 >= sN * 78694739 + 2 + 4 + 1 then
                    pcall(fn542)
                    rO = function(t)
                        local s9
                        local tb
                        local ta
                        s9 = nil
                        ta = nil
                        tb = nil
                        local tc = t ~= ""
                        local td = type(t) == "string" and tc
                        assert(td, "A namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        s9 = getgenv()
                        assert(type(s9) == "table", "getgenv did not return a table")
                        local tc_2 = s9[t]
                        if tc_2 ~= nil then
                            local td_2 = type(tc_2) == "table" and type(tc_2.Unload) == "function"
                            assert(td_2, "Namespace is occupied")
                            tc_2.Unload()
                            assert(s9[t] == nil, "Previous instance did not release its namespace")
                        end
                        ta = {}
                        tb = { State = {}, Unloaded = false }
                        tb.Track = function(z)
                            assert(type(z) == "function", "Cleanup must be callable")
                            if tb.Unloaded then
                                z()
                            else
                                table.insert(ta, z)
                            end
                            return z
                        end
                        tb.Unload = function()
                            local s2_2
                            local s1_2
                            if tb.Unloaded then
                                return
                            end
                            tb.Unloaded = true
                            local s_ = {}
                            local s6 = #ta
                            local s5 = -1
                            while false and s6 <= 1 or true and s6 >= 1 do
                                local s7 = s6
                                local s0_2 = table.remove(ta, s7)
                                s1_2, s2_2 = pcall(s0_2)
                                if not s1_2 then
                                    table.insert(s_, tostring(s2_2))
                                end
                                s6 += s5
                            end
                            table.clear(tb.State)
                            if #s_ > 0 then
                                error("Cleanup incomplete: " .. table.concat(s_, "; "), 0)
                            end
                            if s9[t] == tb then
                                s9[t] = nil
                            end
                        end
                        s9[t] = tb
                        return tb
                    end
                else
                    pcall(fn542)
                    sM_1 = function(t)
                        local s9
                        local tb
                        local ta
                        s9 = nil
                        ta = nil
                        tb = nil
                        local tc = t ~= ""
                        local td = type(t) == "string" and tc
                        assert(td, "A namespace is required")
                        assert(type(getgenv) == "function", "getgenv is unavailable")
                        s9 = getgenv()
                        assert(type(s9) == "table", "getgenv did not return a table")
                        local tc_1 = s9[t]
                        if tc_1 ~= nil then
                            local td_1 = type(tc_1) == "table" and type(tc_1.Unload) == "function"
                            assert(td_1, "Namespace is occupied")
                            tc_1.Unload()
                            assert(s9[t] == nil, "Previous instance did not release its namespace")
                        end
                        ta = {}
                        tb = { State = {}, Unloaded = false }
                        tb.Track = function(z)
                            assert(type(z) == "function", "Cleanup must be callable")
                            if tb.Unloaded then
                                z()
                            else
                                table.insert(ta, z)
                            end
                            return z
                        end
                        tb.Unload = function()
                            local s2_1
                            local s1_1
                            if tb.Unloaded then
                                return
                            end
                            tb.Unloaded = true
                            local s_ = {}
                            local s6 = #ta
                            local s5 = -1
                            while false and s6 <= 1 or true and s6 >= 1 do
                                local s7 = s6
                                local s0_1 = table.remove(ta, s7)
                                s1_1, s2_1 = pcall(s0_1)
                                if not s1_1 then
                                    table.insert(s_, tostring(s2_1))
                                end
                                s6 += s5
                            end
                            table.clear(tb.State)
                            if #s_ > 0 then
                                error("Cleanup incomplete: " .. table.concat(s_, "; "), 0)
                            end
                            if s9[t] == tb then
                                s9[t] = nil
                            end
                        end
                        s9[t] = tb
                        return tb
                    end
                end
                sN = (sN + 17) % 24
            else
                local sP_1 = {
                    "thlo",
                    "zniqbhqfjg",
                    "cdyjcveaffyi",
                    "rgmwuaokwzkv",
                    "qjq",
                    "rbxqmt",
                    "ffgtsjoao",
                    "xxxxhzuxsoo",
                    "iszrjtz",
                    "ocoulxblr"
                }
                if sP_1[(sN * 64 + 109) % 10 + 1] < sP_1[(sN * 64 + 109) % 10 + 1] then
                    rO = function(M, N)
                        local tg = type(M) == "table" and type(M.Track) == "function"
                        assert(tg, "FeatureAPI required")
                        local tg_2 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(tg_2, "UI library required")
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
                    rU = function(M, N)
                        local tg = type(M) == "table" and type(M.Track) == "function"
                        assert(tg, "FeatureAPI required")
                        local tg_1 = type(N) == "table" and type(N.OnUnload) == "function"
                        assert(tg_1, "UI library required")
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
                sN = (sN + 5) % 24
            end
        else
            local sP_2 = (vector.create((sN * 6 + 7) % 11 + 1, (sN * 4 + 1) % 13 + 1, (sN * 5 + 3) % 17 + 1))
            local sQ_1 = (vector.create((sN * 4 + 6) % 11 + 1, (sN * 2 + 5) % 13 + 1, (sN * 1 + 15) % 17 + 1))
            local Gg = vector.dot(sP_2, sQ_1)
            if Gg * Gg <= vector.dot(sP_2, sP_2) * vector.dot(sQ_1, sQ_1) then
                sh = sM_1(sK)
            else
                sK = sh(sM_1)
            end
            sN = (sN + 23) % 24
        end
    elseif sO_1 <= 5 then
        if sO_1 <= 4 then
            local sO_2 = {
                "jdsq",
                "opfkxbcmd",
                "vgidf",
                "rwmhibyx",
                "qhwwsad",
                "zkubpctc",
                "pviww",
                "fdpkh",
                "bvarm",
                "vjrbzhrmmbe",
                "bfuvzwhpnzam",
                "vfleny",
                "enxas",
                "firlfhury",
                "tnhgijzts",
                "otevrgy"
            }
            if sO_2[(sN * 52 + 102) % 16 + 1] < sO_2[(sN * 52 + 102) % 16 + 1] then
                rO = fn395
                sL = fn1122
                sG = rO(r_)
                rS = rO(rE)
            else
                r_ = fn1122
                rO = fn656
                rE = fn395(sL)
                sG = fn395(rS)
            end
            sN = (sN + 23) % 24
        else
            local sO_3 = (vector.create((sN * 5 + 8) % 11 + 1, (sN * 10 + 3) % 13 + 1, (sN * 5 + 17) % 17 + 1))
            local sP_3 = (vector.create((sN * 5 + 2) % 11 + 1, (sN * 2 + 13) % 13 + 1, (sN * 14 + 2) % 17 + 1))
            local Gi = vector.cross(sO_3, sP_3)
            local Gj = vector.dot(sO_3, sP_3)
            if vector.dot(Gi, Gi) + Gj * Gj == vector.dot(sO_3, sO_3) * vector.dot(sP_3, sP_3) + 2 then
                sm = r2.State
                sm.WinStatus = "Idle"
                sm.RebirthStatus = "Idle"
                sm.TrainStatus = "Idle"
                sm.WeightStatus = "Idle"
                sm.TrailStatus = "Idle"
                sm.UpgradeStatus = "Idle"
                sm.MoveBusy = false
                sA = {
                    upgradeService = nil,
                    weightService = nil,
                    rebirthService = nil,
                    data = nil,
                    progression = nil,
                    ready = false,
                    nex = nil,
                    missing = {},
                    trailService = nil
                }
                ss = fn335
                sh = fn800
            else
                sA = sh.State
                sA.WinStatus = "Idle"
                sA.RebirthStatus = "Idle"
                sA.TrainStatus = "Idle"
                sA.WeightStatus = "Idle"
                sA.TrailStatus = "Idle"
                sA.UpgradeStatus = "Idle"
                sA.MoveBusy = false
                ss = {
                    ready = false,
                    nex = nil,
                    data = nil,
                    progression = nil,
                    weightService = nil,
                    trailService = nil,
                    upgradeService = nil,
                    rebirthService = nil,
                    missing = {}
                }
                sm = fn335
                r2 = fn800
            end
            sN = (sN + 23) % 24
        end
    else
        local sO_4 = {
            "zmwstllzbkrt",
            "npgn",
            "wxmymor",
            "dwsuubq",
            "gcjqykkflg",
            "tjwqjuskqhgn",
            "ouxqzpbwe",
            "ulwnbqlgen",
            "lvenos",
            "gpgrrtjpfah",
            "ftxglrfq",
            "bfhty",
            "dexif",
            "odojpfzuw",
            "cpfjp",
            "cnyyvwmr"
        }
        if sO_4[(sN * 9 + 4) % 16 + 1] <= sO_4[(sN * 9 + 4) % 16 + 1] then
            sF = fn497
        else
            r2 = fn497
        end
        sN = (sN + 23) % 24
    end
until (sN * 23 + 15) % 24 == 9
local sO_5 = 1
repeat
    if (sO_5 * 2 + 8) * 10 % 3 == ((sO_5 * 2 + 8) * 10 + 6) % 3 then
        sQ_3 = task.spawn(worker)
        sP_5 = os.clock() + 12
    else
        sP_5 = task.spawn(worker)
        sQ_3 = os.clock() + 12
    end
    sO_5 = (sO_5 + 7) % 8
until (sO_5 * 5 + 0) % 8 == 0
while true do
    local sJ_2 = not ss.ready and os.clock() < sP_5
    if sJ_2 then
        task.wait(0.05)
        continue
    end
    break
end
local sK_1 = nil
local sJ_3 = 7
repeat
    local Gn = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_3, 26), string.byte(tostring(sK_1))), 30)
    if bit32.bxor(bit32.lrotate(bit32.bxor(Gn, 2807417218), 6), 3581042857) ~= bit32.lrotate(Gn, 6) then
        sQ_3 = coroutine.status(sK_1) ~= "dead"
    else
        sK_1 = coroutine.status(sQ_3) ~= "dead"
    end
    sJ_3 = (sJ_3 + 6) % 8
until (sJ_3 * 7 + 1) % 8 == 4
if sK_1 then
    sK_1 = not ss.ready
end
if sK_1 then
    ss.ready = true
end
sE, sx, so, rR, connection, sI, sD, sv, sn, si, sc, sL_1, sM_2, se, rT, su, rD, sr, sf, r6, rZ, sj, r9, rI, sB, rV, rY, st, rN, rM, r7, rQ, rH, rJ, sg, sz, rG, sw, r8, r3, rL, rF, rP, rC, r1, sk, sq, r4, sC, rW, sK_2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sJ_4 = 17
repeat
    local sN_1 = (sJ_4 * 17 + 15) % 21 + 1
    if sN_1 <= 11 then
        if sN_1 <= 6 then
            if sN_1 <= 3 then
                if sN_1 <= 2 then
                    if sN_1 <= 1 then
                        if sJ_4 * 27687801 + 6 + 6 >= sJ_4 * 27687801 + 6 + 6 + 1 then
                            sw = { interval = 1.5 }
                        else
                            sn = { interval = 1.5 }
                        end
                        sJ_4 = (sJ_4 + 26) % 84
                    else
                        local sO_6 = (vector.create((sJ_4 * 5 + 4) % 11 + 1, (sJ_4 * 2 + 7) % 13 + 1, (sJ_4 * 13 + 15) % 17 + 1))
                        local sP_6 = (vector.create((sJ_4 * 7 + 3) % 11 + 1, (sJ_4 * 2 + 13) % 13 + 1, (sJ_4 * 13 + 15) % 17 + 1))
                        local sQ_4 = (vector.create((sJ_4 * 4 + 5) % 11 + 1, (sJ_4 * 7 + 7) % 13 + 1, (sJ_4 * 6 + 8) % 17 + 1))
                        local sR_1 = (vector.create((sJ_4 * 2 + 1) % 11 + 1, (sJ_4 * 3 + 4) % 13 + 1, (sJ_4 * 14 + 15) % 17 + 1))
                        if vector.dot(vector.cross(sO_6, sP_6), (vector.cross(sQ_4, sR_1))) == vector.dot(sO_6, sQ_4) * vector.dot(sP_6, sR_1) - vector.dot(sO_6, sR_1) * vector.dot(sP_6, sQ_4) + 5 then
                            rD = { interval = 2 }
                        else
                            si = { interval = 2 }
                        end
                        sJ_4 = (sJ_4 + 5) % 84
                    end
                else
                    local E6 = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_4, 15), string.byte(tostring(sI))), 17)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(E6, 1178318307), 2688068717), (bit32.bxor(bit32.band(E6, 3116648988), 2248253061))), 2688068717), 2248253061) ~= E6 then
                        rP = { interval = 1.5, targets = { "CritChance", "Walkspeed", "FallSpeed" } }
                    else
                        sc = { interval = 1.5, targets = { "Walkspeed", "CritChance", "FallSpeed" } }
                    end
                    sJ_4 = (sJ_4 + 5) % 84
                end
            elseif sN_1 <= 5 then
                if sN_1 <= 4 then
                    local Ei = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_4, 14), string.byte(tostring(sj))), 6)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ei, 2789809543), 4230831464), (bit32.bxor(bit32.band(Ei, 1505157752), 3864564654))), 4230831464), 3864564654) ~= Ei then
                        rJ = fn1114
                        rH = fn557
                        sg = fn207
                        r7 = function()
                            local vu, vv, vw
                            vw = rD()
                            local vx = vw == "World2" and not rZ()
                            if vx then
                                sA.WinStatus = "World 2 locked, need 25 rebirths"
                                task.wait(1)
                                return
                            end
                            vu = rQ(vw)
                            vv = rH(vw, vu)
                            if typeof(vv) ~= "Vector3" then
                                sA.WinStatus = "Win pad not found"
                                task.wait(1)
                                return
                            end
                            sA.WinStatus = string.format("Claiming %s stage %d", vw, vu)
                            st(function()
                                rI(nil)
                                rY(vv)
                                if not sB(vv, 3) then
                                    sA.WinStatus = "Waiting for character"
                                    return
                                end
                                local vq = sr()
                                local vr = os.clock() + 2.5
                                while true do
                                    local vs = (rO()) and os.clock() < vr and sr() <= vq
                                    if vs then
                                        task.wait(0.15)
                                        continue
                                    end
                                    break
                                end
                                local vr_2 = sr() - vq
                                if vr_2 > 0 then
                                    sA.WinStatus = string.format("%s stage %d | +%s Wins", vw, vu, se(vr_2))
                                else
                                    sA.WinStatus = string.format("%s stage %d | retrying", vw, vu)
                                end
                            end)
                        end
                        rQ = fn417
                    else
                        r7 = fn1114
                        rQ = fn557
                        rH = fn207
                        rJ = function()
                            local vu, vv, vw
                            vw = rD()
                            local vx = vw == "World2" and not rZ()
                            if vx then
                                sA.WinStatus = "World 2 locked, need 25 rebirths"
                                task.wait(1)
                                return
                            end
                            vu = rQ(vw)
                            vv = rH(vw, vu)
                            if typeof(vv) ~= "Vector3" then
                                sA.WinStatus = "Win pad not found"
                                task.wait(1)
                                return
                            end
                            sA.WinStatus = string.format("Claiming %s stage %d", vw, vu)
                            st(function()
                                rI(nil)
                                rY(vv)
                                if not sB(vv, 3) then
                                    sA.WinStatus = "Waiting for character"
                                    return
                                end
                                local vq = sr()
                                local vr = os.clock() + 2.5
                                while true do
                                    local vs = (rO()) and os.clock() < vr and sr() <= vq
                                    if vs then
                                        task.wait(0.15)
                                        continue
                                    end
                                    break
                                end
                                local vr_1 = sr() - vq
                                if vr_1 > 0 then
                                    sA.WinStatus = string.format("%s stage %d | +%s Wins", vw, vu, se(vr_1))
                                else
                                    sA.WinStatus = string.format("%s stage %d | retrying", vw, vu)
                                end
                            end)
                        end
                        sg = fn417
                    end
                    sJ_4 = (sJ_4 + 5) % 84
                else
                    local sO_7 = (vector.create((sJ_4 * 5 + 2) % 11 + 1, (sJ_4 * 10 + 5) % 13 + 1, (sJ_4 * 3 + 6) % 17 + 1))
                    local sP_7 = (vector.create((sJ_4 * 6 + 6) % 11 + 1, (sJ_4 * 8 + 12) % 13 + 1, (sJ_4 * 6 + 6) % 17 + 1))
                    local E7 = vector.dot(sO_7, sP_7)
                    if E7 * E7 <= vector.dot(sO_7, sO_7) * vector.dot(sP_7, sP_7) then
                        sz = fn245
                        rG = fn50
                        sw = fn689
                        r8 = fn857
                        r3 = fn932
                    else
                        sw = fn245
                        sz = fn50
                        rG = fn689
                        r3 = fn857
                        r8 = fn932
                    end
                    sJ_4 = (sJ_4 + 68) % 84
                end
            else
                if (sJ_4 * 3 + 1) * 21 % 4 == ((sJ_4 * 3 + 1) * 21 + 10) % 4 then
                    rF = function()
                        local wC_6
                        local wB_2
                        local wA_6, wA_9
                        if not ss.weightService then
                            sA.TrainStatus = "Weight service unavailable"
                            task.wait(2)
                            return
                        end
                        wB_2, wA_6 = r3()
                        if not wB_2 then
                            rI(nil)
                            sA.TrainStatus = wA_6 or "No area"
                            task.wait(1)
                            return
                        end
                        local wA_7 = rD()
                        local wz = r8(wB_2.Name, wA_7)
                        if typeof(wz) ~= "Vector3" then
                            sA.TrainStatus = "Area position unknown"
                            task.wait(1)
                            return
                        end
                        if not sA.MoveBusy then
                            local wA_8 = r9()
                            if not wA_8 or (wA_8.Position - wz).Magnitude > 8 then
                                st(function()
                                    rY(wz)
                                    rV(wz, 4)
                                end)
                            elseif not rR then
                                rV(wz, 4)
                            end
                        end
                        wA_9, wC_6 = su(ss.weightService, "Click")
                        local wD = wA_9 and type(wC_6) == "table" and wC_6.Success
                        if wD then
                            local format = string.format
                            local Name = wB_2.Name
                            local wE = wC_6.GainedWeight or 0
                            sA.TrainStatus = format("Area %s | +%s Weight", Name, se(wE))
                        else
                            sA.TrainStatus = string.format("Area %s | training", wB_2.Name)
                        end
                    end
                    rL = fn507
                    rC = function()
                        local w0, w1, w2
                        if not ss.weightService then
                            sA.WeightStatus = "Weight service unavailable"
                            task.wait(2)
                            return
                        end
                        local w3 = rT("OwnedWeights")
                        if type(w3) ~= "table" then
                            sA.WeightStatus = "Waiting for data"
                            return
                        end
                        local w4 = rD()
                        w0 = nil
                        for i, v in ipairs(rF()) do
                            if w3[v.Name] ~= true then
                                w0 = v
                                break
                            end
                        end
                        if not w0 then
                            sA.WeightStatus = "All stand Weights owned"
                            return
                        end
                        local w3_2 = (tonumber(w0.Info.Price)) or 0
                        if sr() < w3_2 then
                            sA.WeightStatus = string.format("Next %s | %s Wins", w0.Name, se(w3_2))
                            return
                        end
                        local xf = if sj(w0.Stand) ~= w4 then 1 else 0
                        if xf == 1 then
                            sA.WeightStatus = string.format("%s is in %s", w0.Name, sj(w0.Stand))
                            return
                        end
                        w2 = so[w0.Stand]
                        w1 = false
                        st(function()
                            local wX_4
                            local wW_5
                            rI(nil)
                            rY(w2)
                            sB(w2, 4)
                            task.wait(0.2)
                            wW_5, wX_4 = su(ss.weightService, "PurchaseWeight", w0.Name)
                            local wY = wW_5 and type(wX_4) == "table" and wX_4.Success and wX_4.Purchased
                            if wY then
                                w1 = true
                                sA.WeightStatus = string.format("Bought %s", w0.Name)
                            else
                                local wY_4 = wW_5 and type(wX_4) == "table"
                                if wY_4 then
                                    local format = string.format
                                    local Name = w0.Name
                                    local wZ = wX_4.Reason or "failed"
                                    sA.WeightStatus = format("%s: %s", Name, tostring(wZ))
                                else
                                    sA.WeightStatus = string.format("%s purchase failed", w0.Name)
                                end
                            end
                            if w1 then
                                local wW_7 = rT("EquippedWeight")
                                local wX_5 = wW_7
                                local wY_6 = 0
                                if wX_5 then
                                    wX_5 = ss.progression.Weights[wW_7]
                                end
                                if wX_5 then
                                    local wX_6 = (tonumber(ss.progression.Weights[wW_7].ClickPower)) or 0
                                    wY_6 = wX_6
                                end
                                local wW_8 = (tonumber(w0.Info.ClickPower)) or 0
                                if wW_8 > wY_6 then
                                    su(ss.weightService, "EquipWeight", w0.Name)
                                end
                            end
                        end)
                    end
                    rP = fn430
                else
                    rL = function()
                        local wC_3
                        local wB_1
                        local wA_1, wA_4
                        if not ss.weightService then
                            sA.TrainStatus = "Weight service unavailable"
                            task.wait(2)
                            return
                        end
                        wB_1, wA_1 = r3()
                        if not wB_1 then
                            rI(nil)
                            sA.TrainStatus = wA_1 or "No area"
                            task.wait(1)
                            return
                        end
                        local wA_2 = rD()
                        local wz = r8(wB_1.Name, wA_2)
                        if typeof(wz) ~= "Vector3" then
                            sA.TrainStatus = "Area position unknown"
                            task.wait(1)
                            return
                        end
                        if not sA.MoveBusy then
                            local wA_3 = r9()
                            if not wA_3 or (wA_3.Position - wz).Magnitude > 8 then
                                st(function()
                                    rY(wz)
                                    rV(wz, 4)
                                end)
                            elseif not rR then
                                rV(wz, 4)
                            end
                        end
                        wA_4, wC_3 = su(ss.weightService, "Click")
                        local wD = wA_4 and type(wC_3) == "table" and wC_3.Success
                        if wD then
                            local format = string.format
                            local Name = wB_1.Name
                            local wE = wC_3.GainedWeight or 0
                            sA.TrainStatus = format("Area %s | +%s Weight", Name, se(wE))
                        else
                            sA.TrainStatus = string.format("Area %s | training", wB_1.Name)
                        end
                    end
                    rF = fn507
                    rP = function()
                        local w0, w1, w2
                        if not ss.weightService then
                            sA.WeightStatus = "Weight service unavailable"
                            task.wait(2)
                            return
                        end
                        local w3 = rT("OwnedWeights")
                        if type(w3) ~= "table" then
                            sA.WeightStatus = "Waiting for data"
                            return
                        end
                        local w4 = rD()
                        w0 = nil
                        for i, v in ipairs(rF()) do
                            if w3[v.Name] ~= true then
                                w0 = v
                                break
                            end
                        end
                        if not w0 then
                            sA.WeightStatus = "All stand Weights owned"
                            return
                        end
                        local w3_1 = (tonumber(w0.Info.Price)) or 0
                        if sr() < w3_1 then
                            sA.WeightStatus = string.format("Next %s | %s Wins", w0.Name, se(w3_1))
                            return
                        end
                        local xf = if sj(w0.Stand) ~= w4 then 1 else 0
                        if xf == 1 then
                            sA.WeightStatus = string.format("%s is in %s", w0.Name, sj(w0.Stand))
                            return
                        end
                        w2 = so[w0.Stand]
                        w1 = false
                        st(function()
                            local wX_1
                            local wW_1
                            rI(nil)
                            rY(w2)
                            sB(w2, 4)
                            task.wait(0.2)
                            wW_1, wX_1 = su(ss.weightService, "PurchaseWeight", w0.Name)
                            local wY = wW_1 and type(wX_1) == "table" and wX_1.Success and wX_1.Purchased
                            if wY then
                                w1 = true
                                sA.WeightStatus = string.format("Bought %s", w0.Name)
                            else
                                local wY_1 = wW_1 and type(wX_1) == "table"
                                if wY_1 then
                                    local format = string.format
                                    local Name = w0.Name
                                    local wZ = wX_1.Reason or "failed"
                                    sA.WeightStatus = format("%s: %s", Name, tostring(wZ))
                                else
                                    sA.WeightStatus = string.format("%s purchase failed", w0.Name)
                                end
                            end
                            if w1 then
                                local wW_3 = rT("EquippedWeight")
                                local wX_2 = wW_3
                                local wY_3 = 0
                                if wX_2 then
                                    wX_2 = ss.progression.Weights[wW_3]
                                end
                                if wX_2 then
                                    local wX_3 = (tonumber(ss.progression.Weights[wW_3].ClickPower)) or 0
                                    wY_3 = wX_3
                                end
                                local wW_4 = (tonumber(w0.Info.ClickPower)) or 0
                                if wW_4 > wY_3 then
                                    su(ss.weightService, "EquipWeight", w0.Name)
                                end
                            end
                        end)
                    end
                    rC = fn430
                end
                sJ_4 = (sJ_4 + 68) % 84
            end
        elseif sN_1 <= 9 then
            if sN_1 <= 8 then
                if sN_1 <= 7 then
                    local sO_8 = (vector.create((sJ_4 * 4 + 9) % 11 + 1, (sJ_4 * 7 + 9) % 13 + 1, (sJ_4 * 3 + 8) % 17 + 1))
                    local sP_8 = (vector.create((sJ_4 * 6 + 6) % 11 + 1, (sJ_4 * 3 + 10) % 13 + 1, (sJ_4 * 4 + 4) % 17 + 1))
                    local sQ_5 = (vector.create((sJ_4 * 1 + 7) % 11 + 1, (sJ_4 * 10 + 9) % 13 + 1, (sJ_4 * 13 + 14) % 17 + 1))
                    local sR_2 = (vector.create((sJ_4 * 1 + 6) % 11 + 1, (sJ_4 * 4 + 12) % 13 + 1, (sJ_4 * 3 + 7) % 17 + 1))
                    if vector.dot(vector.cross(sO_8, sP_8), (vector.cross(sQ_5, sR_2))) == vector.dot(sO_8, sQ_5) * vector.dot(sP_8, sR_2) - vector.dot(sO_8, sR_2) * vector.dot(sP_8, sQ_5) + 5 then
                        sk = fn354
                        r1 = fn617
                    else
                        r1 = fn354
                        sk = fn617
                    end
                    sJ_4 = (sJ_4 + 47) % 84
                else
                    local Fe = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_4, 18), string.byte(tostring(r9))), 1)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Fe, 2945241025), 1710122620), (bit32.bxor(bit32.band(Fe, 1349726270), 4213530099))), 1710122620), 4213530099) == Fe then
                        sq = fn909
                        r4 = fn1111
                        sC = fn922
                        rW = fn581
                    else
                        rW = fn909
                        sC = fn1111
                        r4 = fn922
                        sq = fn581
                    end
                    sJ_4 = (sJ_4 + 26) % 84
                end
            else
                local sO_9 = (vector.create((sJ_4 * 3 + 7) % 11 + 1, (sJ_4 * 10 + 5) % 13 + 1, (sJ_4 * 7 + 5) % 17 + 1))
                local sP_9 = (vector.create((sJ_4 * 1 + 9) % 11 + 1, (sJ_4 * 7 + 10) % 13 + 1, (sJ_4 * 10 + 3) % 17 + 1))
                local sQ_6 = (vector.create((sJ_4 * 6 + 1) % 11 + 1, (sJ_4 * 9 + 6) % 13 + 1, (sJ_4 * 11 + 3) % 17 + 1))
                if vector.dot(vector.cross(sO_9, sP_9), sQ_6) == vector.dot(vector.cross(sP_9, sQ_6), sO_9) then
                    sI.SetEnabled = fn174
                    sD.SetEnabled = fn84
                    sv.SetArea = fn1152
                    sv.SetEnabled = fn323
                    sn.SetEnabled = fn206
                    si.SetEnabled = fn830
                    sc.SetTargets = fn1047
                    sc.SetEnabled = fn112
                    sh.Track(fn2)
                    sK_2 = function()
                        local Do
                        local Dh
                        Dh = nil
                        Do = nil
                        local Library, Toggles, Df, Dg, SaveManager, onDiscord, Dk, ThemeManager, Options, Dn, Dp
                        Dn = "+1 Weight Escape"
                        Dh = "https://discord.gg/synapsex"
                        local Dr = "v0.1"
                        Dk = "https://ouroboros-hub-rbx.web.app/"
                        Dp = "https://rscripts.net/@Ouroboros"
                        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                        ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                        Toggles = Library.Toggles
                        Options = Library.Options
                        rU(sh, Library)
                        local Dq = #ss.missing > 0 and "missing: " .. table.concat(ss.missing, ", ")
                        local Ds = Dq
                        local Dx = if Ds then 1 else 0
                        local Dv = 601 * Dx + 2168 * (1 - Dx)
                        local Dw = 1141 * Dx + 2639 * (1 - Dx)
                        if not ((Dv * 1086 + Dw * 4039 + Dv * Dw) % 16777213 == 5946926) then
                            Ds = "bindings ready"
                        end
                        local Dq_9 = {}
                        local Dt = Ds
                        if r_(LocalPlayer.RequestStreamAroundAsync) then
                            table.insert(Dq_9, "stream")
                        end
                        local Ds_3 = (r_(setclipboard)) or r_(toclipboard)
                        if Ds_3 then
                            table.insert(Dq_9, "clipboard")
                        end
                        local Ds_4 = #Dq_9 > 0 and table.concat(Dq_9, "+")
                        Dg = (Ds_4 or "basic") .. " | " .. Dt
                        Do = function(hm, hn)
                            local yK = (r_(setclipboard)) and setclipboard
                            local yL = yK
                            if not yL then
                                local yK_3 = (r_(toclipboard)) and toclipboard
                                yL = yK_3 or nil
                            end
                            local yK_4 = yL
                            if not yK_4 then
                                Library:Notify("Clipboard is unavailable")
                                return
                            end
                            local yL_2 = pcall(yK_4, hm)
                            if yL_2 then
                                Library:Notify(hn)
                            else
                                Library:Notify("Failed to copy")
                            end
                        end
                        onDiscord = function()
                            Do(Dh, "Copied Discord invite to clipboard")
                        end
                        local Window = Library:CreateWindow({
                            Title = "Ouroboros",
                            Font = Enum.Font.BuilderSans,
                            Footer = { { Text = Dh, Copyable = true }, "|", Dn, "|", Dr },
                            Icon = 132608042600488,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 0,
                            SidebarCompacted = true,
                            TabSwipeFrom = "bottom",
                            Animations = { TabSwitch = true }
                        })
                        Window:SetGlow(false)
                        Df = {
                            Info = Window:AddTab("Info", "info"),
                            Main = Window:AddTab("Main", "gamepad-2"),
                            Player = Window:AddTab("Player", "person-standing"),
                            Settings = Window:AddTab("Settings", "settings")
                        }
                        local function Dq_12(hA)
                            local DiscordGroup = hA:AddLeftGroupbox("Discord", "message-circle")
                            DiscordGroup:AddDiscordBox(nil, {
                                Banner = 95892854151512,
                                Avatar = 132608042600488,
                                Title = "Ouroboros Hub",
                                Subtitle = "Dupes, keyless scripts and updates",
                                Status = "online",
                                Accent = Color3.fromRGB(88, 101, 242),
                                Link = Dh,
                                Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                            })
                            return DiscordGroup
                        end
                        for k, v in Df do
                            if k ~= "Info" then
                                Dq_12(v)
                            end
                        end
                        local function Dr_2()
                            local ze
                            local za
                            local y8
                            local y4
                            local zb
                            y4 = nil
                            y8 = nil
                            za = nil
                            zb = nil
                            ze = nil
                            local Label2, y3, y5, Label3, y7, Label, zc, zd
                            y4 = function(hH)
                                return (tostring(hH):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                            end
                            ze = function(hJ, hK)
                                return string.format('<font color="%s">%s</font>', hK, y4(hJ))
                            end
                            y7 = function(hN, hO, hP)
                                return string.format("<b>%s</b> %s %s", hN, ze("-", "#5a6070"), ze(hO, hP))
                            end
                            zd = "#e8a34d"
                            local zg = "#8b93a3"
                            zb = "Unknown"
                            y3 = "#7fd47f"
                            pcall(function()
                                local yP_2
                                local yO_3
                                if type(identifyexecutor) == "function" then
                                    yP_2, yO_3 = identifyexecutor()
                                    local yQ = yP_2 ~= ""
                                    local yR = type(yP_2) == "string" and yQ
                                    if yR then
                                        local yQ_2 = type(yO_3) == "string" and yO_3 ~= "" and yP_2 .. " " .. yO_3
                                        zb = yQ_2 or yP_2
                                    end
                                end
                            end)
                            y8 = os.clock()
                            zc = function()
                                local yW = math.floor(os.clock() - y8)
                                if yW < 60 then
                                    return yW .. "s"
                                elseif yW < 3600 then
                                    return string.format("%dm %ds", yW // 60, yW % 60)
                                else
                                    return string.format("%dh %dm", yW // 3600, yW % 3600 // 60)
                                end
                            end
                            local UserGroup = Df.Info:AddLeftGroupbox("User", "circle-user")
                            UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                            UserGroup:AddLabel(y7("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, y3), true)
                            UserGroup:AddLabel(y7("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                            UserGroup:AddLabel(y7("Executor", zb .. "  " .. Dg, y3), true)
                            UserGroup:AddDivider()
                            Label3 = UserGroup:AddLabel(y7("Session", zc(), zd), true)
                            UserGroup:AddDivider()
                            UserGroup:AddButton({
                                Text = "Copy Username",
                                Func = function()
                                    Do(LocalPlayer.Name, "Copied username")
                                end
                            })
                            UserGroup:AddButton({
                                Text = "Copy Profile Link",
                                Func = function()
                                    Do("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                                end
                            })
                            local DiscordGroup = Df.Info:AddRightGroupbox("Discord", "message-circle")
                            DiscordGroup:AddDiscordBox(nil, {
                                Banner = 95892854151512,
                                Avatar = 132608042600488,
                                Title = "Ouroboros Hub",
                                Subtitle = "Dupes, keyless scripts and updates",
                                Status = "online",
                                Accent = Color3.fromRGB(88, 101, 242),
                                Link = Dh,
                                Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                            })
                            local SessionGroup = Df.Info:AddRightGroupbox("Session", "signal")
                            SessionGroup:AddLabel(y7("Game", Dn, "#6ec1ff"), true)
                            Label2 = SessionGroup:AddLabel(y7("Players", "0/0", y3), true)
                            y5 = tostring(game.JobId)
                            local zf = #y5 > 18 and string.sub(y5, 1, 18) .. "..."
                            local zf_3 = zf or y5
                            SessionGroup:AddLabel(y7("Job", zf_3, zg), true)
                            Label = SessionGroup:AddLabel(y7("Ping", "0 ms", zd), true)
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
                                    Do(y5, "Copied Job ID")
                                end
                            })
                            za = task.spawn(function()
                                local yZ_2
                                local yY_3
                                while true do
                                    task.wait(1)
                                    if Library.Unloaded then
                                        break
                                    end
                                    Label3:SetText(y7("Session", zc(), zd))
                                    Label2:SetText(y7("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), y3))
                                    yY_3, yZ_2 = pcall(function()
                                        return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                    end)
                                    local yY_4 = yY_3 and yZ_2 .. " ms" or "n/a"
                                    Label:SetText(y7("Ping", yY_4, zd))
                                end
                            end)
                            sh.Track(function()
                                if coroutine.status(za) ~= "dead" then
                                    task.cancel(za)
                                end
                            end)
                            local SocialsGroup = Df.Info:AddRightGroupbox("Socials", "link")
                            SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                            SocialsGroup:AddButton({
                                Text = "Rscripts",
                                Func = function()
                                    Do(Dp, "Copied Rscripts profile")
                                end
                            })
                            SocialsGroup:AddButton({
                                Text = "Website",
                                Func = function()
                                    Do(Dk, "Copied website link")
                                end
                            })
                        end
                        Dr_2()
                        local function Dq_13()
                            local zF
                            zF = nil
                            local zC, Label5, Label3, Label6, Label4, zI, zJ, Label, zL, Label2
                            zL = { "Best Unlocked" }
                            zI = false
                            task.spawn(function()
                                local zl_2
                                local zk_2
                                zk_2, zl_2 = pcall(sz)
                                local zm = zk_2 and type(zl_2) == "table"
                                if zm then
                                    for i, v in ipairs(zl_2) do
                                        table.insert(zL, v.Name)
                                    end
                                end
                                zI = true
                            end)
                            local zN = os.clock() + 4
                            while true do
                                local zO_6 = not zI and os.clock() < zN
                                if zO_6 then
                                    task.wait(0.05)
                                    continue
                                end
                                break
                            end
                            zC = {}
                            zJ = false
                            task.spawn(function()
                                if ss.progression and ss.progression.Upgrades then
                                    for k in pairs(ss.progression.Upgrades.Definitions) do
                                        table.insert(zC, k)
                                    end
                                    table.sort(zC)
                                end
                                zJ = true
                            end)
                            local zN_3 = os.clock() + 4
                            while true do
                                local zO_7 = not zJ and os.clock() < zN_3
                                if zO_7 then
                                    task.wait(0.05)
                                    continue
                                end
                                break
                            end
                            if #zC == 0 then
                                zC = { "Walkspeed", "CritChance", "FallSpeed" }
                            end
                            local zN_4 = {}
                            for i, v in ipairs(zC) do
                                zN_4[v] = true
                            end
                            local AutoFarmGroup = Df.Main:AddLeftGroupbox("Auto Farm", "trophy")
                            Label6 = AutoFarmGroup:AddLabel(sA.WinStatus, true)
                            AutoFarmGroup:AddDivider()
                            AutoFarmGroup:AddToggle("AutoWin", {
                                Text = "Auto Farm Wins",
                                Default = false,
                                Callback = function(jq)
                                    sI.SetEnabled(jq)
                                end
                            })
                            Label5 = AutoFarmGroup:AddLabel(sA.RebirthStatus, true)
                            AutoFarmGroup:AddToggle("AutoRebirth", {
                                Text = "Auto Rebirth",
                                Default = false,
                                Callback = function(jv)
                                    sD.SetEnabled(jv)
                                end
                            })
                            local TrainingGroup = Df.Main:AddRightGroupbox("Training", "dumbbell")
                            Label4 = TrainingGroup:AddLabel(sA.TrainStatus, true)
                            TrainingGroup:AddDivider()
                            TrainingGroup:AddToggle("AutoTrain", {
                                Text = "Auto Train",
                                Default = false,
                                Callback = function(jB)
                                    sv.SetEnabled(jB)
                                end
                            })
                            TrainingGroup:AddDropdown("TrainArea", {
                                Text = "Training Area",
                                Values = zL,
                                Default = zL[1],
                                Multi = false,
                                AllowNull = false,
                                Callback = function(jF)
                                    sv.SetArea(jF)
                                end
                            })
                            local ShopGroup = Df.Main:AddLeftGroupbox("Shop", "shopping-cart")
                            Label3 = ShopGroup:AddLabel(sA.WeightStatus, true)
                            ShopGroup:AddDivider()
                            ShopGroup:AddToggle("AutoWeights", {
                                Text = "Auto Buy Affordable Weights",
                                Default = false,
                                Callback = function(jJ)
                                    sn.SetEnabled(jJ)
                                end
                            })
                            Label2 = ShopGroup:AddLabel(sA.TrailStatus, true)
                            ShopGroup:AddToggle("AutoTrails", {
                                Text = "Auto Buy Trails",
                                Default = false,
                                Callback = function(jO)
                                    si.SetEnabled(jO)
                                end
                            })
                            Label = ShopGroup:AddLabel(sA.UpgradeStatus, true)
                            ShopGroup:AddToggle("AutoUpgrades", {
                                Text = "Auto Buy Upgrades",
                                Default = false,
                                Callback = function(jT)
                                    sc.SetEnabled(jT)
                                end
                            })
                            ShopGroup:AddDropdown("UpgradeTargets", {
                                Text = "Upgrades",
                                Values = zC,
                                Default = zN_4,
                                Multi = true,
                                AllowNull = true,
                                Callback = function(jX)
                                    sc.SetTargets(jX)
                                end
                            })
                            zF = task.spawn(function()
                                while not Library.Unloaded do
                                    pcall(function()
                                        Label6:SetText(sA.WinStatus)
                                        Label5:SetText(sA.RebirthStatus)
                                        Label4:SetText(sA.TrainStatus)
                                        Label3:SetText(sA.WeightStatus)
                                        Label2:SetText(sA.TrailStatus)
                                        Label:SetText(sA.UpgradeStatus)
                                    end)
                                    task.wait(0.35)
                                end
                            end)
                            sh.Track(function()
                                if coroutine.status(zF) ~= "dead" then
                                    task.cancel(zF)
                                end
                            end)
                        end
                        Dq_13()
                        local function Dq_14()
                            local ko
                            local km
                            local kp
                            local kn
                            local MovementGroup = Df.Player:AddLeftGroupbox("Movement", "footprints")
                            MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                            MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                            MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                            MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                            MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                            local FlyGroup = Df.Player:AddRightGroupbox("Fly", "feather")
                            FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                            FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                            km = {}
                            kp = {}
                            ko = {}
                            local kl = {}
                            kn = {}
                            local function kq()
                                for k, v in km do
                                    if k.Parent then
                                        k.CanCollide = v
                                    end
                                end
                                table.clear(km)
                            end
                            local function kv()
                                for k, v in kn do
                                    if k.Parent then
                                        k.WalkSpeed = v
                                    end
                                end
                                table.clear(kn)
                            end
                            local function kz()
                                for k, v in ko do
                                    if k.Parent then
                                        k.PlatformStand = v
                                    end
                                end
                                table.clear(ko)
                            end
                            local function kD(kE)
                                if not kE:IsA("ProximityPrompt") then
                                    return
                                end
                                if kp[kE] == nil then
                                    kp[kE] = {
                                        HoldDuration = kE.HoldDuration,
                                        MaxActivationDistance = kE.MaxActivationDistance,
                                        RequiresLineOfSight = kE.RequiresLineOfSight
                                    }
                                end
                                kE.HoldDuration = 0
                                kE.MaxActivationDistance = 50
                                kE.RequiresLineOfSight = false
                            end
                            local function kG()
                                for k, v in kp do
                                    if k.Parent then
                                        k.HoldDuration = v.HoldDuration
                                        k.MaxActivationDistance = v.MaxActivationDistance
                                        k.RequiresLineOfSight = v.RequiresLineOfSight
                                    end
                                end
                                table.clear(kp)
                            end
                            Toggles.Fly:OnChanged(function()
                                if not Toggles.Fly.Value then
                                    kz()
                                end
                            end)
                            Toggles.WalkSpeedEnabled:OnChanged(function()
                                if not Toggles.WalkSpeedEnabled.Value then
                                    kv()
                                end
                            end)
                            Toggles.NoClip:OnChanged(function()
                                if not Toggles.NoClip.Value then
                                    kq()
                                end
                            end)
                            Toggles.InstantProximityPrompt:OnChanged(function()
                                if Toggles.InstantProximityPrompt.Value then
                                    for k, v in rS:QueryDescendants("ProximityPrompt") do
                                        pcall(kD, v)
                                    end
                                else
                                    kG()
                                end
                            end)
                            table.insert(kl, rS.DescendantAdded:Connect(function(kZ)
                                if Toggles.InstantProximityPrompt.Value then
                                    kD(kZ)
                                end
                            end))
                            table.insert(kl, sy.Stepped:Connect(function()
                                if Library.Unloaded then
                                    return
                                end
                                local Character = LocalPlayer.Character
                                if Toggles.NoClip.Value and Character then
                                    for k, v in Character:QueryDescendants("BasePart") do
                                        if km[v] == nil then
                                            km[v] = v.CanCollide
                                        end
                                        v.CanCollide = false
                                    end
                                end
                            end))
                            table.insert(kl, UserInputService.JumpRequest:Connect(function()
                                if Library.Unloaded then
                                    return
                                end
                                local Character = LocalPlayer.Character
                                local AM = Character and Character:FindFirstChildOfClass("Humanoid")
                                if Toggles.InfJump.Value and AM then
                                    AM:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end))
                            table.insert(kl, sy.RenderStepped:Connect(function(lk)
                                if Library.Unloaded then
                                    return
                                end
                                local Character = LocalPlayer.Character
                                local AP = Character and Character:FindFirstChildOfClass("Humanoid")
                                local AQ = Character
                                if AQ then
                                    AQ = Character:FindFirstChild("HumanoidRootPart")
                                end
                                local AO_2 = AQ
                                local CurrentCamera = rS.CurrentCamera
                                if Toggles.WalkSpeedEnabled.Value and AP then
                                    if kn[AP] == nil then
                                        kn[AP] = AP.WalkSpeed
                                    end
                                    AP.WalkSpeed = Options.WalkSpeed.Value
                                end
                                if Toggles.Fly.Value and AO_2 and AP and CurrentCamera then
                                    if ko[AP] == nil then
                                        ko[AP] = AP.PlatformStand
                                    end
                                    AP.PlatformStand = true
                                    local AQ_8 = Vector3.zero
                                    if not UserInputService:GetFocusedTextBox() then
                                        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                            AQ_8 += CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                            AQ_8 -= CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                            AQ_8 -= CurrentCamera.CFrame.RightVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                            AQ_8 += CurrentCamera.CFrame.RightVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                            AQ_8 += Vector3.new(0, 1, 0)
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                            AQ_8 -= Vector3.new(0, 1, 0)
                                        end
                                    end
                                    AO_2.AssemblyLinearVelocity = Vector3.zero
                                    if AQ_8.Magnitude > 0 then
                                        AO_2.CFrame = AO_2.CFrame + AQ_8.Unit * Options.FlySpeed.Value * lk
                                    end
                                end
                            end))
                            sh.Track(function()
                                for k, v in kl do
                                    v:Disconnect()
                                end
                                kq()
                                kv()
                                kz()
                                kG()
                            end)
                        end
                        Dq_14()
                        local function Dq_15()
                            local B5, B6, B7, B8, B9, Ca, Cb, Cc, Cd, Ce, Label, Cg, Ch, Ci
                            Cg = {}
                            Ca = {}
                            B7 = nil
                            B8 = 0
                            Ci = 0
                            Cc = false
                            Cd = os.clock()
                            local MenuGroup = Df.Settings:AddLeftGroupbox("Menu", "logs")
                            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                            Label = MenuGroup:AddLabel("AFK triggers: 0")
                            B5 = function()
                                local CurrentCamera
                                CurrentCamera = rS.CurrentCamera
                                local A4 = not CurrentCamera or not r_(VirtualUser.CaptureController)
                                local A8 = if A4 then 1 else 0
                                local A6 = 3033 * A8 + 368 * (1 - A8)
                                local A7 = 1013 * A8 + 1231 * (1 - A8)
                                if not ((A6 * 2352 + A7 * 2507 + A6 * A7) % 16777213 == 12745636) then
                                    A4 = not r_(VirtualUser.ClickButton2)
                                end
                                if A4 then
                                    return false
                                end
                                local A4_2 = pcall(function()
                                    VirtualUser:CaptureController()
                                    VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                end)
                                if not A4_2 then
                                    return false
                                end
                                B8 += 1
                                Cd = os.clock()
                                pcall(function()
                                    Label:SetText("AFK triggers: " .. B8)
                                end)
                                return true
                            end
                            Ce = function(l3)
                                pcall(function()
                                    GuiService:SetGameplayPausedNotificationEnabled(not l3)
                                end)
                                pcall(function()
                                    local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                    if RobloxNetworkPauseNotificati then
                                        RobloxNetworkPauseNotificati.Enabled = not l3
                                    end
                                end)
                                if not l3 then
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
                            Cb = function(mj)
                                local Bg = mj.ClassName == "ParticleEmitter" or mj.ClassName == "Trail" or mj.ClassName == "Smoke"
                                local Bk = if Bg then 1 else 0
                                local Bi = 1013 * Bk + 604 * (1 - Bk)
                                local Bj = 3769 * Bk + 837 * (1 - Bk)
                                if not ((Bi * 766 + Bj * 3713 + Bi * Bj) % 16777213 == 1811039) then
                                    Bg = mj.ClassName == "Fire"
                                end
                                local Bk_2 = if Bg then 1 else 0
                                local Bi_2 = 2623 * Bk_2 + 2092 * (1 - Bk_2)
                                local Bj_2 = 1847 * Bk_2 + 2802 * (1 - Bk_2)
                                if not ((Bi_2 * 3888 + Bj_2 * 1817 + Bi_2 * Bj_2) % 16777213 == 1621691) then
                                    Bg = mj.ClassName == "Sparkles"
                                end
                                if not Bg then
                                    Bg = mj.ClassName == "Explosion"
                                end
                                if not Bg then
                                    Bg = mj.ClassName == "Beam"
                                end
                                if Bg then
                                    if Cg[mj] == nil then
                                        Cg[mj] = mj.Enabled
                                    end
                                    pcall(function()
                                        mj.Enabled = false
                                    end)
                                end
                            end
                            B9 = function()
                                for k, v in Cg do
                                    local Bp = k
                                    local Br = v
                                    if Bp.Parent then
                                        pcall(function()
                                            Bp.Enabled = Br
                                        end)
                                    end
                                end
                                table.clear(Cg)
                                if B7 then
                                    pcall(function()
                                        settings().Rendering.QualityLevel = B7.Quality
                                    end)
                                    Lighting.GlobalShadows = B7.Shadows
                                    Lighting.FogEnd = B7.Fog
                                    B7 = nil
                                end
                            end
                            MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                            MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                            MenuGroup:AddToggle("Disable3D", {
                                Text = "Disable 3D Rendering",
                                Default = false,
                                Callback = function(my)
                                    pcall(function()
                                        sy:Set3dRenderingEnabled(not my)
                                    end)
                                end
                            })
                            MenuGroup:AddToggle("FpsBoost", {
                                Text = "FPS Boost",
                                Default = false,
                                Callback = function(mD)
                                    if mD then
                                        if not B7 then
                                            B7 = {
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
                                        for k, v in rS:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                            pcall(Cb, v)
                                        end
                                    else
                                        B9()
                                    end
                                end
                            })
                            MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                            Library.ToggleKeybind = Options.MenuKeybind
                            Ce(true)
                            local ScriptGroup = Df.Settings:AddLeftGroupbox("Script", "scroll-text")
                            ScriptGroup:AddButton({
                                Text = "Unload Script",
                                Func = function()
                                    Library:Unload()
                                end
                            })
                            Toggles.AntiGameplayPause:OnChanged(function()
                                Ce(Toggles.AntiGameplayPause.Value)
                            end)
                            if Toggles.AntiGameplayPause.Value then
                                Ce(true)
                            end
                            table.insert(Ca, LocalPlayer.Idled:Connect(function()
                                if Toggles.AntiAfk.Value and not Library.Unloaded then
                                    B5()
                                end
                            end))
                            table.insert(Ca, rS.DescendantAdded:Connect(function(mW)
                                if Toggles.FpsBoost.Value then
                                    Cb(mW)
                                end
                            end))
                            B6 = function(m_)
                                if Cc or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                    return
                                end
                                Cc = true
                                local BH = Ci
                                local BI_3 = pcall(function()
                                    if m_ then
                                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                    else
                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                    end
                                end)
                                if not BI_3 then
                                    Cc = false
                                    if not m_ and BH == Ci then
                                        task.delay(1.5, function()
                                            if BH == Ci then
                                                B6(true)
                                            end
                                        end)
                                    end
                                end
                            end
                            table.insert(Ca, TeleportService.TeleportInitFailed:Connect(function(nh)
                                local BP
                                if nh == LocalPlayer and Cc then
                                    Cc = false
                                    BP = Ci
                                    task.delay(3, function()
                                        if BP == Ci then
                                            B6(true)
                                        end
                                    end)
                                end
                            end))
                            task.spawn(function()
                                local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                                local BU = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                                if Library.Unloaded or not BU then
                                    return
                                end
                                table.insert(Ca, BU.ChildAdded:Connect(function(nw)
                                    if nw.Name == "ErrorPrompt" then
                                        B6(false)
                                    end
                                end))
                            end)
                            Ch = task.spawn(function()
                                while not Library.Unloaded do
                                    if Toggles.AntiGameplayPause.Value then
                                        Ce(true)
                                    end
                                    local BX = Toggles.AntiAfk.Value and os.clock() - Cd >= 60
                                    if BX then
                                        B5()
                                    end
                                    task.wait(1)
                                end
                            end)
                            sh.Track(function()
                                Ci += 1
                                for k, v in Ca do
                                    v:Disconnect()
                                end
                                pcall(task.cancel, Ch)
                                Ce(false)
                                B9()
                                pcall(function()
                                    sy:Set3dRenderingEnabled(true)
                                end)
                            end)
                        end
                        Dq_15()
                        local function Dq_16()
                            local Da
                            Da = nil
                            local C8, C9
                            ThemeManager:SetLibrary(Library)
                            ThemeManager:SetFolder("OuroborosHub")
                            ThemeManager:SaveDefault("Evil Hello Kitty")
                            ThemeManager:ApplyToTab(Df.Settings)
                            SaveManager:SetLibrary(Library)
                            SaveManager:IgnoreThemeSettings()
                            SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                            SaveManager:SetFolder("OuroborosHub/WeightEscape")
                            local Db = SaveManager:BuildConfigSection(Df.Settings)
                            Da = function(nX, nY)
                                local Cm_2 = (nX == "Toggle" and Toggles or Options)[nY]
                                local Cl_5 = type(Cm_2) == "table" and Cm_2.Type == nX
                                return Cl_5 and Cm_2 or nil
                            end
                            C9 = function(n6, n7)
                                local Type = n7.Type
                                if Type == "Toggle" then
                                    return { idx = n6, type = "Toggle", value = n7.Value == true }
                                elseif Type == "Slider" then
                                    return { idx = n6, type = "Slider", value = tostring(n7.Value) }
                                elseif Type == "Dropdown" then
                                    return { idx = n6, type = "Dropdown", multi = n7.Multi == true, value = n7.Value }
                                elseif Type == "Input" then
                                    local Ct_3 = n7.Value or ""
                                    return { idx = n6, type = "Input", text = tostring(Ct_3) }
                                elseif Type == "ColorPicker" then
                                    return { idx = n6, type = "ColorPicker", value = n7.Value:ToHex(), transparency = n7.Transparency }
                                elseif Type == "KeyPicker" then
                                    return {
                                        idx = n6,
                                        type = "KeyPicker",
                                        key = n7.Value,
                                        mode = n7.Mode,
                                        syncToggleState = n7.SyncToggleState or nil
                                    }
                                else
                                    return nil
                                end
                            end
                            C8 = function(oa)
                                local Cw = type(oa) ~= "table" or type(oa.idx) ~= "string" or type(oa.type) ~= "string"
                                if Cw then
                                    return false
                                end
                                local Cw_2 = Da(oa.type, oa.idx)
                                if not Cw_2 then
                                    return false
                                end
                                local Cx = oa.type == "Toggle" and type(oa.value) == "boolean"
                                if Cx then
                                    Cw_2:SetValue(oa.value)
                                    return true
                                elseif oa.type == "Slider" then
                                    local Cx_6 = tonumber(oa.value)
                                    if Cx_6 then
                                        Cw_2:SetValue(Cx_6)
                                        return true
                                    end
                                    return false
                                elseif oa.type == "Dropdown" then
                                    Cw_2:SetValue(oa.value)
                                    return true
                                else
                                    local Cx_7 = oa.type == "Input" and type(oa.text) == "string"
                                    if Cx_7 then
                                        Cw_2:SetValue(oa.text)
                                        return true
                                    end
                                    local Cx_8 = oa.type == "ColorPicker" and type(oa.value) == "string"
                                    if Cx_8 then
                                        Cw_2:SetValueRGB(Color3.fromHex(oa.value))
                                        if type(oa.transparency) == "number" then
                                            Cw_2:SetTransparency(oa.transparency)
                                        end
                                        return true
                                    end
                                    local Cx_9 = oa.type == "KeyPicker" and type(oa.key) == "string"
                                    if Cx_9 then
                                        local key = oa.key
                                        local Cy = oa.mode or "Toggle"
                                        Cw_2:SetValue({ key, Cy })
                                        return true
                                    end
                                    return false
                                end
                            end
                            Db:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                            Db:AddButton({
                                Text = "Export Config to Clipboard",
                                Func = function()
                                    local CI_4
                                    local CH_8
                                    local CG = {}
                                    for k, v in Toggles do
                                        if k ~= "MenuKeybind" then
                                            local CH_5 = C9(k, v)
                                            if CH_5 then
                                                table.insert(CG, CH_5)
                                            end
                                        end
                                    end
                                    for k, v in Options do
                                        if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                                            local CH_7 = C9(k, v)
                                            if CH_7 then
                                                table.insert(CG, CH_7)
                                            end
                                        end
                                    end
                                    table.sort(CG, function(oq, ot)
                                        return oq.idx < ot.idx
                                    end)
                                    CH_8, CI_4 = pcall(HttpService.JSONEncode, HttpService, { objects = CG })
                                    if not CH_8 then
                                        Library:Notify("Failed to encode config")
                                        return
                                    end
                                    Do(CI_4, "Copied config to clipboard")
                                end
                            })
                            Db:AddButton({
                                Text = "Import Config from Clipboard Text",
                                Func = function()
                                    local CX = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                                    local CX_5
                                    local CX_4 = CX == ""
                                    local CY = type(CX) ~= "string" or CX_4
                                    local CY_3
                                    if CY then
                                        Library:Notify("Paste a config first")
                                        return
                                    end
                                    if #CX > 262144 then
                                        Library:Notify("That config is too large")
                                        return
                                    end
                                    CX_5, CY_3 = pcall(HttpService.JSONDecode, HttpService, CX)
                                    local CW_5 = not CX_5 or type(CY_3) ~= "table" or type(CY_3.objects) ~= "table"
                                    if CW_5 then
                                        Library:Notify("That is not a valid exported config")
                                        return
                                    end
                                    if #CY_3.objects > 2048 then
                                        Library:Notify("That config has too many records")
                                        return
                                    end
                                    local CW_6 = 0
                                    for i, v in ipairs(CY_3.objects) do
                                        if C8(v) then
                                            CW_6 += 1
                                        end
                                    end
                                    if CW_6 == 0 then
                                        Library:Notify("No settings in that config matched this script")
                                        return
                                    end
                                    Options.SaveManager_ImportSource:SetValue("")
                                    local CY_4 = CW_6 == 1 and "" or "s"
                                    Library:Notify(("Imported %d setting%s"):format(CW_6, CY_4), 6)
                                end
                            })
                            ThemeManager:LoadDefault()
                            SaveManager:LoadAutoloadConfig()
                            if Options.TrainArea then
                                sv.SetArea(Options.TrainArea.Value)
                            end
                            if Options.UpgradeTargets then
                                sc.SetTargets(Options.UpgradeTargets.Value)
                            end
                            if Toggles.AutoWin then
                                sI.SetEnabled(Toggles.AutoWin.Value)
                            end
                            if Toggles.AutoRebirth then
                                sD.SetEnabled(Toggles.AutoRebirth.Value)
                            end
                            if Toggles.AutoTrain then
                                sv.SetEnabled(Toggles.AutoTrain.Value)
                            end
                            if Toggles.AutoWeights then
                                sn.SetEnabled(Toggles.AutoWeights.Value)
                            end
                            if Toggles.AutoTrails then
                                si.SetEnabled(Toggles.AutoTrails.Value)
                            end
                            if Toggles.AutoUpgrades then
                                sc.SetEnabled(Toggles.AutoUpgrades.Value)
                            end
                            if Toggles.HideUiOnStart.Value then
                                Library:Toggle(false)
                            end
                        end
                        Dq_16()
                    end
                else
                    sD.SetEnabled = fn174
                    sc.SetEnabled = fn84
                    si.SetArea = fn1152
                    si.SetEnabled = fn323
                    sI.SetEnabled = fn206
                    sv.SetEnabled = fn830
                    sh.SetTargets = fn1047
                    sh.SetEnabled = fn112
                    sK_2.Track(fn2)
                    sn = function()
                        local Do
                        local Dh
                        Dh = nil
                        Do = nil
                        local Library, Toggles, Df, Dg, SaveManager, onDiscord, Dk, ThemeManager, Options, Dn, Dp
                        Dn = "+1 Weight Escape"
                        Dh = "https://discord.gg/synapsex"
                        local Dr = "v0.1"
                        Dk = "https://ouroboros-hub-rbx.web.app/"
                        Dp = "https://rscripts.net/@Ouroboros"
                        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                        ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                        Toggles = Library.Toggles
                        Options = Library.Options
                        rU(sh, Library)
                        local Dq = #ss.missing > 0 and "missing: " .. table.concat(ss.missing, ", ")
                        local Ds = Dq
                        local Dx = if Ds then 1 else 0
                        local Dv = 601 * Dx + 2168 * (1 - Dx)
                        local Dw = 1141 * Dx + 2639 * (1 - Dx)
                        if not ((Dv * 1086 + Dw * 4039 + Dv * Dw) % 16777213 == 5946926) then
                            Ds = "bindings ready"
                        end
                        local Dq_1 = {}
                        local Dt = Ds
                        if r_(LocalPlayer.RequestStreamAroundAsync) then
                            table.insert(Dq_1, "stream")
                        end
                        local Ds_1 = (r_(setclipboard)) or r_(toclipboard)
                        if Ds_1 then
                            table.insert(Dq_1, "clipboard")
                        end
                        local Ds_2 = #Dq_1 > 0 and table.concat(Dq_1, "+")
                        Dg = (Ds_2 or "basic") .. " | " .. Dt
                        Do = function(hm, hn)
                            local yK = (r_(setclipboard)) and setclipboard
                            local yL = yK
                            if not yL then
                                local yK_1 = (r_(toclipboard)) and toclipboard
                                yL = yK_1 or nil
                            end
                            local yK_2 = yL
                            if not yK_2 then
                                Library:Notify("Clipboard is unavailable")
                                return
                            end
                            local yL_1 = pcall(yK_2, hm)
                            if yL_1 then
                                Library:Notify(hn)
                            else
                                Library:Notify("Failed to copy")
                            end
                        end
                        onDiscord = function()
                            Do(Dh, "Copied Discord invite to clipboard")
                        end
                        local Window = Library:CreateWindow({
                            Title = "Ouroboros",
                            Font = Enum.Font.BuilderSans,
                            Footer = { { Text = Dh, Copyable = true }, "|", Dn, "|", Dr },
                            Icon = 132608042600488,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 0,
                            SidebarCompacted = true,
                            TabSwipeFrom = "bottom",
                            Animations = { TabSwitch = true }
                        })
                        Window:SetGlow(false)
                        Df = {
                            Info = Window:AddTab("Info", "info"),
                            Main = Window:AddTab("Main", "gamepad-2"),
                            Player = Window:AddTab("Player", "person-standing"),
                            Settings = Window:AddTab("Settings", "settings")
                        }
                        local function Dq_4(hA)
                            local DiscordGroup = hA:AddLeftGroupbox("Discord", "message-circle")
                            DiscordGroup:AddDiscordBox(nil, {
                                Banner = 95892854151512,
                                Avatar = 132608042600488,
                                Title = "Ouroboros Hub",
                                Subtitle = "Dupes, keyless scripts and updates",
                                Status = "online",
                                Accent = Color3.fromRGB(88, 101, 242),
                                Link = Dh,
                                Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                            })
                            return DiscordGroup
                        end
                        for k, v in Df do
                            if k ~= "Info" then
                                Dq_4(v)
                            end
                        end
                        local function Dr_1()
                            local ze
                            local za
                            local y8
                            local y4
                            local zb
                            y4 = nil
                            y8 = nil
                            za = nil
                            zb = nil
                            ze = nil
                            local Label2, y3, y5, Label3, y7, Label, zc, zd
                            y4 = function(hH)
                                return (tostring(hH):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
                            end
                            ze = function(hJ, hK)
                                return string.format('<font color="%s">%s</font>', hK, y4(hJ))
                            end
                            y7 = function(hN, hO, hP)
                                return string.format("<b>%s</b> %s %s", hN, ze("-", "#5a6070"), ze(hO, hP))
                            end
                            zd = "#e8a34d"
                            local zg = "#8b93a3"
                            zb = "Unknown"
                            y3 = "#7fd47f"
                            pcall(function()
                                local yP_1
                                local yO_1
                                if type(identifyexecutor) == "function" then
                                    yP_1, yO_1 = identifyexecutor()
                                    local yQ = yP_1 ~= ""
                                    local yR = type(yP_1) == "string" and yQ
                                    if yR then
                                        local yQ_1 = type(yO_1) == "string" and yO_1 ~= "" and yP_1 .. " " .. yO_1
                                        zb = yQ_1 or yP_1
                                    end
                                end
                            end)
                            y8 = os.clock()
                            zc = function()
                                local yW = math.floor(os.clock() - y8)
                                if yW < 60 then
                                    return yW .. "s"
                                elseif yW < 3600 then
                                    return string.format("%dm %ds", yW // 60, yW % 60)
                                else
                                    return string.format("%dh %dm", yW // 3600, yW % 3600 // 60)
                                end
                            end
                            local UserGroup = Df.Info:AddLeftGroupbox("User", "circle-user")
                            UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                            UserGroup:AddLabel(y7("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, y3), true)
                            UserGroup:AddLabel(y7("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
                            UserGroup:AddLabel(y7("Executor", zb .. "  " .. Dg, y3), true)
                            UserGroup:AddDivider()
                            Label3 = UserGroup:AddLabel(y7("Session", zc(), zd), true)
                            UserGroup:AddDivider()
                            UserGroup:AddButton({
                                Text = "Copy Username",
                                Func = function()
                                    Do(LocalPlayer.Name, "Copied username")
                                end
                            })
                            UserGroup:AddButton({
                                Text = "Copy Profile Link",
                                Func = function()
                                    Do("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                                end
                            })
                            local DiscordGroup = Df.Info:AddRightGroupbox("Discord", "message-circle")
                            DiscordGroup:AddDiscordBox(nil, {
                                Banner = 95892854151512,
                                Avatar = 132608042600488,
                                Title = "Ouroboros Hub",
                                Subtitle = "Dupes, keyless scripts and updates",
                                Status = "online",
                                Accent = Color3.fromRGB(88, 101, 242),
                                Link = Dh,
                                Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                            })
                            local SessionGroup = Df.Info:AddRightGroupbox("Session", "signal")
                            SessionGroup:AddLabel(y7("Game", Dn, "#6ec1ff"), true)
                            Label2 = SessionGroup:AddLabel(y7("Players", "0/0", y3), true)
                            y5 = tostring(game.JobId)
                            local zf = #y5 > 18 and string.sub(y5, 1, 18) .. "..."
                            local zf_1 = zf or y5
                            SessionGroup:AddLabel(y7("Job", zf_1, zg), true)
                            Label = SessionGroup:AddLabel(y7("Ping", "0 ms", zd), true)
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
                                    Do(y5, "Copied Job ID")
                                end
                            })
                            za = task.spawn(function()
                                local yZ_1
                                local yY_1
                                while true do
                                    task.wait(1)
                                    if Library.Unloaded then
                                        break
                                    end
                                    Label3:SetText(y7("Session", zc(), zd))
                                    Label2:SetText(y7("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), y3))
                                    yY_1, yZ_1 = pcall(function()
                                        return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                    end)
                                    local yY_2 = yY_1 and yZ_1 .. " ms" or "n/a"
                                    Label:SetText(y7("Ping", yY_2, zd))
                                end
                            end)
                            sh.Track(function()
                                if coroutine.status(za) ~= "dead" then
                                    task.cancel(za)
                                end
                            end)
                            local SocialsGroup = Df.Info:AddRightGroupbox("Socials", "link")
                            SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                            SocialsGroup:AddButton({
                                Text = "Rscripts",
                                Func = function()
                                    Do(Dp, "Copied Rscripts profile")
                                end
                            })
                            SocialsGroup:AddButton({
                                Text = "Website",
                                Func = function()
                                    Do(Dk, "Copied website link")
                                end
                            })
                        end
                        Dr_1()
                        local function Dq_5()
                            local zF
                            zF = nil
                            local zC, Label5, Label3, Label6, Label4, zI, zJ, Label, zL, Label2
                            zL = { "Best Unlocked" }
                            zI = false
                            task.spawn(function()
                                local zl_1
                                local zk_1
                                zk_1, zl_1 = pcall(sz)
                                local zm = zk_1 and type(zl_1) == "table"
                                if zm then
                                    for i, v in ipairs(zl_1) do
                                        table.insert(zL, v.Name)
                                    end
                                end
                                zI = true
                            end)
                            local zN = os.clock() + 4
                            while true do
                                local zO_1 = not zI and os.clock() < zN
                                if zO_1 then
                                    task.wait(0.05)
                                    continue
                                end
                                break
                            end
                            zC = {}
                            zJ = false
                            task.spawn(function()
                                if ss.progression and ss.progression.Upgrades then
                                    for k in pairs(ss.progression.Upgrades.Definitions) do
                                        table.insert(zC, k)
                                    end
                                    table.sort(zC)
                                end
                                zJ = true
                            end)
                            local zN_1 = os.clock() + 4
                            while true do
                                local zO_2 = not zJ and os.clock() < zN_1
                                if zO_2 then
                                    task.wait(0.05)
                                    continue
                                end
                                break
                            end
                            if #zC == 0 then
                                zC = { "Walkspeed", "CritChance", "FallSpeed" }
                            end
                            local zN_2 = {}
                            for i, v in ipairs(zC) do
                                zN_2[v] = true
                            end
                            local AutoFarmGroup = Df.Main:AddLeftGroupbox("Auto Farm", "trophy")
                            Label6 = AutoFarmGroup:AddLabel(sA.WinStatus, true)
                            AutoFarmGroup:AddDivider()
                            AutoFarmGroup:AddToggle("AutoWin", {
                                Text = "Auto Farm Wins",
                                Default = false,
                                Callback = function(jq)
                                    sI.SetEnabled(jq)
                                end
                            })
                            Label5 = AutoFarmGroup:AddLabel(sA.RebirthStatus, true)
                            AutoFarmGroup:AddToggle("AutoRebirth", {
                                Text = "Auto Rebirth",
                                Default = false,
                                Callback = function(jv)
                                    sD.SetEnabled(jv)
                                end
                            })
                            local TrainingGroup = Df.Main:AddRightGroupbox("Training", "dumbbell")
                            Label4 = TrainingGroup:AddLabel(sA.TrainStatus, true)
                            TrainingGroup:AddDivider()
                            TrainingGroup:AddToggle("AutoTrain", {
                                Text = "Auto Train",
                                Default = false,
                                Callback = function(jB)
                                    sv.SetEnabled(jB)
                                end
                            })
                            TrainingGroup:AddDropdown("TrainArea", {
                                Text = "Training Area",
                                Values = zL,
                                Default = zL[1],
                                Multi = false,
                                AllowNull = false,
                                Callback = function(jF)
                                    sv.SetArea(jF)
                                end
                            })
                            local ShopGroup = Df.Main:AddLeftGroupbox("Shop", "shopping-cart")
                            Label3 = ShopGroup:AddLabel(sA.WeightStatus, true)
                            ShopGroup:AddDivider()
                            ShopGroup:AddToggle("AutoWeights", {
                                Text = "Auto Buy Affordable Weights",
                                Default = false,
                                Callback = function(jJ)
                                    sn.SetEnabled(jJ)
                                end
                            })
                            Label2 = ShopGroup:AddLabel(sA.TrailStatus, true)
                            ShopGroup:AddToggle("AutoTrails", {
                                Text = "Auto Buy Trails",
                                Default = false,
                                Callback = function(jO)
                                    si.SetEnabled(jO)
                                end
                            })
                            Label = ShopGroup:AddLabel(sA.UpgradeStatus, true)
                            ShopGroup:AddToggle("AutoUpgrades", {
                                Text = "Auto Buy Upgrades",
                                Default = false,
                                Callback = function(jT)
                                    sc.SetEnabled(jT)
                                end
                            })
                            ShopGroup:AddDropdown("UpgradeTargets", {
                                Text = "Upgrades",
                                Values = zC,
                                Default = zN_2,
                                Multi = true,
                                AllowNull = true,
                                Callback = function(jX)
                                    sc.SetTargets(jX)
                                end
                            })
                            zF = task.spawn(function()
                                while not Library.Unloaded do
                                    pcall(function()
                                        Label6:SetText(sA.WinStatus)
                                        Label5:SetText(sA.RebirthStatus)
                                        Label4:SetText(sA.TrainStatus)
                                        Label3:SetText(sA.WeightStatus)
                                        Label2:SetText(sA.TrailStatus)
                                        Label:SetText(sA.UpgradeStatus)
                                    end)
                                    task.wait(0.35)
                                end
                            end)
                            sh.Track(function()
                                if coroutine.status(zF) ~= "dead" then
                                    task.cancel(zF)
                                end
                            end)
                        end
                        Dq_5()
                        local function Dq_6()
                            local ko
                            local km
                            local kp
                            local kn
                            local MovementGroup = Df.Player:AddLeftGroupbox("Movement", "footprints")
                            MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
                            MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                            MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                            MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
                            MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
                            local FlyGroup = Df.Player:AddRightGroupbox("Fly", "feather")
                            FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
                            FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                            km = {}
                            kp = {}
                            ko = {}
                            local kl = {}
                            kn = {}
                            local function kq()
                                for k, v in km do
                                    if k.Parent then
                                        k.CanCollide = v
                                    end
                                end
                                table.clear(km)
                            end
                            local function kv()
                                for k, v in kn do
                                    if k.Parent then
                                        k.WalkSpeed = v
                                    end
                                end
                                table.clear(kn)
                            end
                            local function kz()
                                for k, v in ko do
                                    if k.Parent then
                                        k.PlatformStand = v
                                    end
                                end
                                table.clear(ko)
                            end
                            local function kD(kE)
                                if not kE:IsA("ProximityPrompt") then
                                    return
                                end
                                if kp[kE] == nil then
                                    kp[kE] = {
                                        HoldDuration = kE.HoldDuration,
                                        MaxActivationDistance = kE.MaxActivationDistance,
                                        RequiresLineOfSight = kE.RequiresLineOfSight
                                    }
                                end
                                kE.HoldDuration = 0
                                kE.MaxActivationDistance = 50
                                kE.RequiresLineOfSight = false
                            end
                            local function kG()
                                for k, v in kp do
                                    if k.Parent then
                                        k.HoldDuration = v.HoldDuration
                                        k.MaxActivationDistance = v.MaxActivationDistance
                                        k.RequiresLineOfSight = v.RequiresLineOfSight
                                    end
                                end
                                table.clear(kp)
                            end
                            Toggles.Fly:OnChanged(function()
                                if not Toggles.Fly.Value then
                                    kz()
                                end
                            end)
                            Toggles.WalkSpeedEnabled:OnChanged(function()
                                if not Toggles.WalkSpeedEnabled.Value then
                                    kv()
                                end
                            end)
                            Toggles.NoClip:OnChanged(function()
                                if not Toggles.NoClip.Value then
                                    kq()
                                end
                            end)
                            Toggles.InstantProximityPrompt:OnChanged(function()
                                if Toggles.InstantProximityPrompt.Value then
                                    for k, v in rS:QueryDescendants("ProximityPrompt") do
                                        pcall(kD, v)
                                    end
                                else
                                    kG()
                                end
                            end)
                            table.insert(kl, rS.DescendantAdded:Connect(function(kZ)
                                if Toggles.InstantProximityPrompt.Value then
                                    kD(kZ)
                                end
                            end))
                            table.insert(kl, sy.Stepped:Connect(function()
                                if Library.Unloaded then
                                    return
                                end
                                local Character = LocalPlayer.Character
                                if Toggles.NoClip.Value and Character then
                                    for k, v in Character:QueryDescendants("BasePart") do
                                        if km[v] == nil then
                                            km[v] = v.CanCollide
                                        end
                                        v.CanCollide = false
                                    end
                                end
                            end))
                            table.insert(kl, UserInputService.JumpRequest:Connect(function()
                                if Library.Unloaded then
                                    return
                                end
                                local Character = LocalPlayer.Character
                                local AM = Character and Character:FindFirstChildOfClass("Humanoid")
                                if Toggles.InfJump.Value and AM then
                                    AM:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end))
                            table.insert(kl, sy.RenderStepped:Connect(function(lk)
                                if Library.Unloaded then
                                    return
                                end
                                local Character = LocalPlayer.Character
                                local AP = Character and Character:FindFirstChildOfClass("Humanoid")
                                local AQ = Character
                                if AQ then
                                    AQ = Character:FindFirstChild("HumanoidRootPart")
                                end
                                local AO_1 = AQ
                                local CurrentCamera = rS.CurrentCamera
                                if Toggles.WalkSpeedEnabled.Value and AP then
                                    if kn[AP] == nil then
                                        kn[AP] = AP.WalkSpeed
                                    end
                                    AP.WalkSpeed = Options.WalkSpeed.Value
                                end
                                if Toggles.Fly.Value and AO_1 and AP and CurrentCamera then
                                    if ko[AP] == nil then
                                        ko[AP] = AP.PlatformStand
                                    end
                                    AP.PlatformStand = true
                                    local AQ_4 = Vector3.zero
                                    if not UserInputService:GetFocusedTextBox() then
                                        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                            AQ_4 += CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                            AQ_4 -= CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                            AQ_4 -= CurrentCamera.CFrame.RightVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                            AQ_4 += CurrentCamera.CFrame.RightVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                            AQ_4 += Vector3.new(0, 1, 0)
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                            AQ_4 -= Vector3.new(0, 1, 0)
                                        end
                                    end
                                    AO_1.AssemblyLinearVelocity = Vector3.zero
                                    if AQ_4.Magnitude > 0 then
                                        AO_1.CFrame = AO_1.CFrame + AQ_4.Unit * Options.FlySpeed.Value * lk
                                    end
                                end
                            end))
                            sh.Track(function()
                                for k, v in kl do
                                    v:Disconnect()
                                end
                                kq()
                                kv()
                                kz()
                                kG()
                            end)
                        end
                        Dq_6()
                        local function Dq_7()
                            local B5, B6, B7, B8, B9, Ca, Cb, Cc, Cd, Ce, Label, Cg, Ch, Ci
                            Cg = {}
                            Ca = {}
                            B7 = nil
                            B8 = 0
                            Ci = 0
                            Cc = false
                            Cd = os.clock()
                            local MenuGroup = Df.Settings:AddLeftGroupbox("Menu", "logs")
                            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                            Label = MenuGroup:AddLabel("AFK triggers: 0")
                            B5 = function()
                                local CurrentCamera
                                CurrentCamera = rS.CurrentCamera
                                local A4 = not CurrentCamera or not r_(VirtualUser.CaptureController)
                                local A8 = if A4 then 1 else 0
                                local A6 = 3033 * A8 + 368 * (1 - A8)
                                local A7 = 1013 * A8 + 1231 * (1 - A8)
                                if not ((A6 * 2352 + A7 * 2507 + A6 * A7) % 16777213 == 12745636) then
                                    A4 = not r_(VirtualUser.ClickButton2)
                                end
                                if A4 then
                                    return false
                                end
                                local A4_1 = pcall(function()
                                    VirtualUser:CaptureController()
                                    VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                                end)
                                if not A4_1 then
                                    return false
                                end
                                B8 += 1
                                Cd = os.clock()
                                pcall(function()
                                    Label:SetText("AFK triggers: " .. B8)
                                end)
                                return true
                            end
                            Ce = function(l3)
                                pcall(function()
                                    GuiService:SetGameplayPausedNotificationEnabled(not l3)
                                end)
                                pcall(function()
                                    local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                    if RobloxNetworkPauseNotificati then
                                        RobloxNetworkPauseNotificati.Enabled = not l3
                                    end
                                end)
                                if not l3 then
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
                            Cb = function(mj)
                                local Bg = mj.ClassName == "ParticleEmitter" or mj.ClassName == "Trail" or mj.ClassName == "Smoke"
                                local Bk = if Bg then 1 else 0
                                local Bi = 1013 * Bk + 604 * (1 - Bk)
                                local Bj = 3769 * Bk + 837 * (1 - Bk)
                                if not ((Bi * 766 + Bj * 3713 + Bi * Bj) % 16777213 == 1811039) then
                                    Bg = mj.ClassName == "Fire"
                                end
                                local Bk_1 = if Bg then 1 else 0
                                local Bi_1 = 2623 * Bk_1 + 2092 * (1 - Bk_1)
                                local Bj_1 = 1847 * Bk_1 + 2802 * (1 - Bk_1)
                                if not ((Bi_1 * 3888 + Bj_1 * 1817 + Bi_1 * Bj_1) % 16777213 == 1621691) then
                                    Bg = mj.ClassName == "Sparkles"
                                end
                                if not Bg then
                                    Bg = mj.ClassName == "Explosion"
                                end
                                if not Bg then
                                    Bg = mj.ClassName == "Beam"
                                end
                                if Bg then
                                    if Cg[mj] == nil then
                                        Cg[mj] = mj.Enabled
                                    end
                                    pcall(function()
                                        mj.Enabled = false
                                    end)
                                end
                            end
                            B9 = function()
                                for k, v in Cg do
                                    local Bp = k
                                    local Br = v
                                    if Bp.Parent then
                                        pcall(function()
                                            Bp.Enabled = Br
                                        end)
                                    end
                                end
                                table.clear(Cg)
                                if B7 then
                                    pcall(function()
                                        settings().Rendering.QualityLevel = B7.Quality
                                    end)
                                    Lighting.GlobalShadows = B7.Shadows
                                    Lighting.FogEnd = B7.Fog
                                    B7 = nil
                                end
                            end
                            MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                            MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                            MenuGroup:AddToggle("Disable3D", {
                                Text = "Disable 3D Rendering",
                                Default = false,
                                Callback = function(my)
                                    pcall(function()
                                        sy:Set3dRenderingEnabled(not my)
                                    end)
                                end
                            })
                            MenuGroup:AddToggle("FpsBoost", {
                                Text = "FPS Boost",
                                Default = false,
                                Callback = function(mD)
                                    if mD then
                                        if not B7 then
                                            B7 = {
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
                                        for k, v in rS:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                            pcall(Cb, v)
                                        end
                                    else
                                        B9()
                                    end
                                end
                            })
                            MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                            Library.ToggleKeybind = Options.MenuKeybind
                            Ce(true)
                            local ScriptGroup = Df.Settings:AddLeftGroupbox("Script", "scroll-text")
                            ScriptGroup:AddButton({
                                Text = "Unload Script",
                                Func = function()
                                    Library:Unload()
                                end
                            })
                            Toggles.AntiGameplayPause:OnChanged(function()
                                Ce(Toggles.AntiGameplayPause.Value)
                            end)
                            if Toggles.AntiGameplayPause.Value then
                                Ce(true)
                            end
                            table.insert(Ca, LocalPlayer.Idled:Connect(function()
                                if Toggles.AntiAfk.Value and not Library.Unloaded then
                                    B5()
                                end
                            end))
                            table.insert(Ca, rS.DescendantAdded:Connect(function(mW)
                                if Toggles.FpsBoost.Value then
                                    Cb(mW)
                                end
                            end))
                            B6 = function(m_)
                                if Cc or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                    return
                                end
                                Cc = true
                                local BH = Ci
                                local BI_1 = pcall(function()
                                    if m_ then
                                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                    else
                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                                    end
                                end)
                                if not BI_1 then
                                    Cc = false
                                    if not m_ and BH == Ci then
                                        task.delay(1.5, function()
                                            if BH == Ci then
                                                B6(true)
                                            end
                                        end)
                                    end
                                end
                            end
                            table.insert(Ca, TeleportService.TeleportInitFailed:Connect(function(nh)
                                local BP
                                if nh == LocalPlayer and Cc then
                                    Cc = false
                                    BP = Ci
                                    task.delay(3, function()
                                        if BP == Ci then
                                            B6(true)
                                        end
                                    end)
                                end
                            end))
                            task.spawn(function()
                                local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                                local BU = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                                if Library.Unloaded or not BU then
                                    return
                                end
                                table.insert(Ca, BU.ChildAdded:Connect(function(nw)
                                    if nw.Name == "ErrorPrompt" then
                                        B6(false)
                                    end
                                end))
                            end)
                            Ch = task.spawn(function()
                                while not Library.Unloaded do
                                    if Toggles.AntiGameplayPause.Value then
                                        Ce(true)
                                    end
                                    local BX = Toggles.AntiAfk.Value and os.clock() - Cd >= 60
                                    if BX then
                                        B5()
                                    end
                                    task.wait(1)
                                end
                            end)
                            sh.Track(function()
                                Ci += 1
                                for k, v in Ca do
                                    v:Disconnect()
                                end
                                pcall(task.cancel, Ch)
                                Ce(false)
                                B9()
                                pcall(function()
                                    sy:Set3dRenderingEnabled(true)
                                end)
                            end)
                        end
                        Dq_7()
                        local function Dq_8()
                            local Da
                            Da = nil
                            local C8, C9
                            ThemeManager:SetLibrary(Library)
                            ThemeManager:SetFolder("OuroborosHub")
                            ThemeManager:SaveDefault("Evil Hello Kitty")
                            ThemeManager:ApplyToTab(Df.Settings)
                            SaveManager:SetLibrary(Library)
                            SaveManager:IgnoreThemeSettings()
                            SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                            SaveManager:SetFolder("OuroborosHub/WeightEscape")
                            local Db = SaveManager:BuildConfigSection(Df.Settings)
                            Da = function(nX, nY)
                                local Cm_1 = (nX == "Toggle" and Toggles or Options)[nY]
                                local Cl_2 = type(Cm_1) == "table" and Cm_1.Type == nX
                                return Cl_2 and Cm_1 or nil
                            end
                            C9 = function(n6, n7)
                                local Type = n7.Type
                                if Type == "Toggle" then
                                    return { idx = n6, type = "Toggle", value = n7.Value == true }
                                elseif Type == "Slider" then
                                    return { idx = n6, type = "Slider", value = tostring(n7.Value) }
                                elseif Type == "Dropdown" then
                                    return { idx = n6, type = "Dropdown", multi = n7.Multi == true, value = n7.Value }
                                elseif Type == "Input" then
                                    local Ct_1 = n7.Value or ""
                                    return { idx = n6, type = "Input", text = tostring(Ct_1) }
                                elseif Type == "ColorPicker" then
                                    return { idx = n6, type = "ColorPicker", value = n7.Value:ToHex(), transparency = n7.Transparency }
                                elseif Type == "KeyPicker" then
                                    return {
                                        idx = n6,
                                        type = "KeyPicker",
                                        key = n7.Value,
                                        mode = n7.Mode,
                                        syncToggleState = n7.SyncToggleState or nil
                                    }
                                else
                                    return nil
                                end
                            end
                            C8 = function(oa)
                                local Cw = type(oa) ~= "table" or type(oa.idx) ~= "string" or type(oa.type) ~= "string"
                                if Cw then
                                    return false
                                end
                                local Cw_1 = Da(oa.type, oa.idx)
                                if not Cw_1 then
                                    return false
                                end
                                local Cx = oa.type == "Toggle" and type(oa.value) == "boolean"
                                if Cx then
                                    Cw_1:SetValue(oa.value)
                                    return true
                                elseif oa.type == "Slider" then
                                    local Cx_1 = tonumber(oa.value)
                                    if Cx_1 then
                                        Cw_1:SetValue(Cx_1)
                                        return true
                                    end
                                    return false
                                elseif oa.type == "Dropdown" then
                                    Cw_1:SetValue(oa.value)
                                    return true
                                else
                                    local Cx_2 = oa.type == "Input" and type(oa.text) == "string"
                                    if Cx_2 then
                                        Cw_1:SetValue(oa.text)
                                        return true
                                    end
                                    local Cx_3 = oa.type == "ColorPicker" and type(oa.value) == "string"
                                    if Cx_3 then
                                        Cw_1:SetValueRGB(Color3.fromHex(oa.value))
                                        if type(oa.transparency) == "number" then
                                            Cw_1:SetTransparency(oa.transparency)
                                        end
                                        return true
                                    end
                                    local Cx_4 = oa.type == "KeyPicker" and type(oa.key) == "string"
                                    if Cx_4 then
                                        local key = oa.key
                                        local Cy = oa.mode or "Toggle"
                                        Cw_1:SetValue({ key, Cy })
                                        return true
                                    end
                                    return false
                                end
                            end
                            Db:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                            Db:AddButton({
                                Text = "Export Config to Clipboard",
                                Func = function()
                                    local CI_2
                                    local CH_4
                                    local CG = {}
                                    for k, v in Toggles do
                                        if k ~= "MenuKeybind" then
                                            local CH_1 = C9(k, v)
                                            if CH_1 then
                                                table.insert(CG, CH_1)
                                            end
                                        end
                                    end
                                    for k, v in Options do
                                        if k ~= "MenuKeybind" and k ~= "SaveManager_ImportSource" then
                                            local CH_3 = C9(k, v)
                                            if CH_3 then
                                                table.insert(CG, CH_3)
                                            end
                                        end
                                    end
                                    table.sort(CG, function(oq, ot)
                                        return oq.idx < ot.idx
                                    end)
                                    CH_4, CI_2 = pcall(HttpService.JSONEncode, HttpService, { objects = CG })
                                    if not CH_4 then
                                        Library:Notify("Failed to encode config")
                                        return
                                    end
                                    Do(CI_2, "Copied config to clipboard")
                                end
                            })
                            Db:AddButton({
                                Text = "Import Config from Clipboard Text",
                                Func = function()
                                    local CX = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                                    local CX_2
                                    local CX_1 = CX == ""
                                    local CY = type(CX) ~= "string" or CX_1
                                    local CY_1
                                    if CY then
                                        Library:Notify("Paste a config first")
                                        return
                                    end
                                    if #CX > 262144 then
                                        Library:Notify("That config is too large")
                                        return
                                    end
                                    CX_2, CY_1 = pcall(HttpService.JSONDecode, HttpService, CX)
                                    local CW_2 = not CX_2 or type(CY_1) ~= "table" or type(CY_1.objects) ~= "table"
                                    if CW_2 then
                                        Library:Notify("That is not a valid exported config")
                                        return
                                    end
                                    if #CY_1.objects > 2048 then
                                        Library:Notify("That config has too many records")
                                        return
                                    end
                                    local CW_3 = 0
                                    for i, v in ipairs(CY_1.objects) do
                                        if C8(v) then
                                            CW_3 += 1
                                        end
                                    end
                                    if CW_3 == 0 then
                                        Library:Notify("No settings in that config matched this script")
                                        return
                                    end
                                    Options.SaveManager_ImportSource:SetValue("")
                                    local CY_2 = CW_3 == 1 and "" or "s"
                                    Library:Notify(("Imported %d setting%s"):format(CW_3, CY_2), 6)
                                end
                            })
                            ThemeManager:LoadDefault()
                            SaveManager:LoadAutoloadConfig()
                            if Options.TrainArea then
                                sv.SetArea(Options.TrainArea.Value)
                            end
                            if Options.UpgradeTargets then
                                sc.SetTargets(Options.UpgradeTargets.Value)
                            end
                            if Toggles.AutoWin then
                                sI.SetEnabled(Toggles.AutoWin.Value)
                            end
                            if Toggles.AutoRebirth then
                                sD.SetEnabled(Toggles.AutoRebirth.Value)
                            end
                            if Toggles.AutoTrain then
                                sv.SetEnabled(Toggles.AutoTrain.Value)
                            end
                            if Toggles.AutoWeights then
                                sn.SetEnabled(Toggles.AutoWeights.Value)
                            end
                            if Toggles.AutoTrails then
                                si.SetEnabled(Toggles.AutoTrails.Value)
                            end
                            if Toggles.AutoUpgrades then
                                sc.SetEnabled(Toggles.AutoUpgrades.Value)
                            end
                            if Toggles.HideUiOnStart.Value then
                                Library:Toggle(false)
                            end
                        end
                        Dq_8()
                    end
                end
                sJ_4 = (sJ_4 + 68) % 84
            end
        elseif sN_1 <= 10 then
            if sJ_4 * 9290323 + 1 + 3 >= sJ_4 * 9290323 + 1 + 3 + 1 then
                sK_2, sL_1 = pcall(sM_2)
            else
                sL_1, sM_2 = pcall(sK_2)
            end
            sJ_4 = (sJ_4 + 68) % 84
        else
            local sO_10 = (vector.create((sJ_4 * 4 + 5) % 11 + 1, (sJ_4 * 9 + 5) % 13 + 1, (sJ_4 * 15 + 12) % 17 + 1))
            local Fi = vector.floor(sO_10) + vector.ceil(sO_10 * -1)
            if vector.dot(Fi, Fi) == 1 then
                su = fn674
                se = fn570
                rT = fn1014
            else
                se = fn674
                rT = fn570
                su = fn1014
            end
            sJ_4 = (sJ_4 + 68) % 84
        end
    elseif sN_1 <= 16 then
        if sN_1 <= 14 then
            if sN_1 <= 13 then
                if sN_1 <= 12 then
                    local Fd = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_4, 12), string.byte(tostring(sC))), 3)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Fd, 1811103337), 596356635), (bit32.bxor(bit32.band(Fd, 2483863958), 1061469792))), 596356635), 1061469792) == Fd then
                        rD = fn610
                        sr = fn535
                    else
                        sr = fn610
                        rD = fn535
                    end
                    sJ_4 = (sJ_4 + 47) % 84
                else
                    if (sJ_4 * 2 + 9) * 10 % 3 == ((sJ_4 * 2 + 9) * 10 + 0) % 3 then
                        sf = fn496
                        r6 = fn671
                        rZ = fn104
                    else
                        r6 = fn496
                        rZ = fn671
                        sf = fn104
                    end
                    sJ_4 = (sJ_4 + 68) % 84
                end
            else
                local sO_11 = {
                    "xwictu",
                    "mgibeintdzf",
                    "gfdkfkgqidea",
                    "ffygcsxrplgs",
                    "ujbzoartuhx",
                    "ngmnvenhwa",
                    "fmx",
                    "shnsslj",
                    "hnbalipwfko",
                    "pvgcmxfcxn",
                    "fvkblwjn",
                    "vxyjteyn",
                    "mimpnu",
                    "wgs"
                }
                if sO_11[(sJ_4 * 78 + 72) % 14 + 1] <= sO_11[(sJ_4 * 78 + 72) % 14 + 1] then
                    sE = {
                        World1 = Vector3.new(144.338, -3109.5, -322.716),
                        World2 = Vector3.new(835.618, -3108.531, -326.049)
                    }
                    sx = {
                        World1 = {
                            ["1"] = Vector3.new(85.588, 7.95, -145.966),
                            ["2"] = Vector3.new(85.588, 7.95, -165.966),
                            ["3"] = Vector3.new(85.588, 7.75, -208.966),
                            ["4"] = Vector3.new(85.588, 7.75, -228.966),
                            ["5"] = Vector3.new(54.588, 7.75, -208.966),
                            ["6"] = Vector3.new(54.588, 7.75, -165.966),
                            Diamond = Vector3.new(54.588, 7.75, -228.966),
                            Golden = Vector3.new(54.588, 7.75, -187.466),
                            Admin = Vector3.new(54.588, 7.75, -145.966)
                        },
                        World2 = {
                            ["7"] = Vector3.new(774.588, 8, -145.966),
                            ["8"] = Vector3.new(774.588, 7.95, -165.966),
                            ["9"] = Vector3.new(774.588, 7.75, -208.966),
                            ["10"] = Vector3.new(774.588, 7.75, -228.966),
                            ["11"] = Vector3.new(743.588, 7.75, -208.966),
                            ["12"] = Vector3.new(743.588, 7.75, -165.966),
                            Diamond = Vector3.new(743.588, 7.75, -228.966),
                            Golden = Vector3.new(743.588, 7.75, -187.466),
                            Admin = Vector3.new(743.588, 7.75, -145.966)
                        }
                    }
                    so = {
                        [1] = Vector3.new(221.587, 3.75, -211.466),
                        [2] = Vector3.new(221.587, 3.75, -199.466),
                        [3] = Vector3.new(221.587, 3.75, -187.466),
                        [4] = Vector3.new(221.587, 3.75, -175.466),
                        [5] = Vector3.new(221.587, 3.75, -163.466),
                        [6] = Vector3.new(242.588, 6.75, -219.466),
                        [7] = Vector3.new(242.588, 6.75, -203.466),
                        [8] = Vector3.new(242.588, 6.75, -187.466),
                        [9] = Vector3.new(242.588, 6.75, -171.466),
                        [10] = Vector3.new(242.588, 6.75, -155.466),
                        [11] = Vector3.new(263.588, 8.75, -227.466),
                        [12] = Vector3.new(263.588, 8.75, -207.466),
                        [13] = Vector3.new(263.588, 8.75, -187.466),
                        [14] = Vector3.new(263.588, 8.75, -167.466),
                        [15] = Vector3.new(263.588, 8.75, -147.466),
                        [16] = Vector3.new(910.587, 3.75, -211.466),
                        [17] = Vector3.new(910.587, 3.75, -199.466),
                        [18] = Vector3.new(910.587, 3.75, -187.466),
                        [19] = Vector3.new(910.587, 3.75, -175.466),
                        [20] = Vector3.new(910.587, 3.75, -163.466),
                        [21] = Vector3.new(931.588, 6.75, -219.466),
                        [22] = Vector3.new(931.588, 6.75, -203.466),
                        [23] = Vector3.new(931.588, 6.75, -187.466),
                        [24] = Vector3.new(931.588, 6.75, -171.466),
                        [25] = Vector3.new(931.588, 6.75, -155.466),
                        [26] = Vector3.new(952.588, 8.75, -227.466),
                        [27] = Vector3.new(952.588, 8.75, -207.466),
                        [28] = Vector3.new(952.588, 8.75, -187.466),
                        [29] = Vector3.new(952.588, 8.75, -167.466),
                        [30] = Vector3.new(952.588, 8.75, -147.466)
                    }
                    sj = fn309
                else
                    sj = {
                        World1 = Vector3.new(144.338, -3109.5, -322.716),
                        World2 = Vector3.new(835.618, -3108.531, -326.049)
                    }
                    sE = {
                        World1 = {
                            ["1"] = Vector3.new(85.588, 7.95, -145.966),
                            ["6"] = Vector3.new(54.588, 7.75, -165.966),
                            Admin = Vector3.new(54.588, 7.75, -145.966),
                            ["4"] = Vector3.new(85.588, 7.75, -228.966),
                            Diamond = Vector3.new(54.588, 7.75, -228.966),
                            Golden = Vector3.new(54.588, 7.75, -187.466),
                            ["2"] = Vector3.new(85.588, 7.95, -165.966),
                            ["3"] = Vector3.new(85.588, 7.75, -208.966),
                            ["5"] = Vector3.new(54.588, 7.75, -208.966)
                        },
                        World2 = {
                            Admin = Vector3.new(743.588, 7.75, -145.966),
                            Golden = Vector3.new(743.588, 7.75, -187.466),
                            ["10"] = Vector3.new(774.588, 7.75, -228.966),
                            ["12"] = Vector3.new(743.588, 7.75, -165.966),
                            ["8"] = Vector3.new(774.588, 7.95, -165.966),
                            ["7"] = Vector3.new(774.588, 8, -145.966),
                            ["11"] = Vector3.new(743.588, 7.75, -208.966),
                            ["9"] = Vector3.new(774.588, 7.75, -208.966),
                            Diamond = Vector3.new(743.588, 7.75, -228.966)
                        }
                    }
                    sx = {
                        [20] = Vector3.new(910.587, 3.75, -163.466),
                        [24] = Vector3.new(931.588, 6.75, -171.466),
                        [5] = Vector3.new(221.587, 3.75, -163.466),
                        [15] = Vector3.new(263.588, 8.75, -147.466),
                        [11] = Vector3.new(263.588, 8.75, -227.466),
                        [22] = Vector3.new(931.588, 6.75, -203.466),
                        [21] = Vector3.new(931.588, 6.75, -219.466),
                        [25] = Vector3.new(931.588, 6.75, -155.466),
                        [6] = Vector3.new(242.588, 6.75, -219.466),
                        [23] = Vector3.new(931.588, 6.75, -187.466),
                        [30] = Vector3.new(952.588, 8.75, -147.466),
                        [14] = Vector3.new(263.588, 8.75, -167.466),
                        [1] = Vector3.new(221.587, 3.75, -211.466),
                        [13] = Vector3.new(263.588, 8.75, -187.466),
                        [18] = Vector3.new(910.587, 3.75, -187.466),
                        [19] = Vector3.new(910.587, 3.75, -175.466),
                        [2] = Vector3.new(221.587, 3.75, -199.466),
                        [28] = Vector3.new(952.588, 8.75, -187.466),
                        [27] = Vector3.new(952.588, 8.75, -207.466),
                        [16] = Vector3.new(910.587, 3.75, -211.466),
                        [26] = Vector3.new(952.588, 8.75, -227.466),
                        [12] = Vector3.new(263.588, 8.75, -207.466),
                        [7] = Vector3.new(242.588, 6.75, -203.466),
                        [29] = Vector3.new(952.588, 8.75, -167.466),
                        [10] = Vector3.new(242.588, 6.75, -155.466),
                        [4] = Vector3.new(221.587, 3.75, -175.466),
                        [8] = Vector3.new(242.588, 6.75, -187.466),
                        [3] = Vector3.new(221.587, 3.75, -187.466),
                        [9] = Vector3.new(242.588, 6.75, -171.466),
                        [17] = Vector3.new(910.587, 3.75, -199.466)
                    }
                    so = fn309
                end
                sJ_4 = (sJ_4 + 47) % 84
            end
        elseif sN_1 <= 15 then
            local sO_12 = (vector.create((sJ_4 * 4 + 5) % 11 + 1, (sJ_4 * 3 + 7) % 13 + 1, (sJ_4 * 11 + 2) % 17 + 1))
            local sP_10 = (vector.create((sJ_4 * 1 + 6) % 11 + 1, (sJ_4 * 7 + 5) % 13 + 1, (sJ_4 * 13 + 2) % 17 + 1))
            local Eg = vector.cross(sO_12, sP_10)
            local Eh = vector.dot(sO_12, sP_10)
            if vector.dot(Eg, Eg) + Eh * Eh == vector.dot(sO_12, sO_12) * vector.dot(sP_10, sP_10) + 2 then
                rF = fn427
            else
                r9 = fn427
            end
            sJ_4 = (sJ_4 + 47) % 84
        else
            local Fj = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_4, 6), string.byte(tostring(rN))), 11)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Fj, 4195018643), 1530993651), (bit32.bxor(bit32.band(Fj, 99948652), 1056072228))), 1530993651), 1056072228) == Fj then
                rR = nil
                rI = fn991
                sB = function(bC, bD)
                    local uC
                    uC = nil
                    if typeof(bC) ~= "Vector3" then
                        return false
                    end
                    uC = r9()
                    if not uC then
                        return false
                    end
                    return (pcall(function()
                        local ux = bD
                        local uB = if ux then 1 else 0
                        local uz = 3210 * uB + 1501 * (1 - uB)
                        local uA = 1326 * uB + 2995 * (1 - uB)
                        if not ((uz * 185 + uA * 3960 + uz * uA) % 16777213 == 10101270) then
                            ux = 4
                        end
                        uC.CFrame = CFrame.new(bC + Vector3.new(0, ux, 0))
                        uC.AssemblyLinearVelocity = Vector3.zero
                    end))
                end
            else
                sB = nil
                rR = fn991
                rI = function(bC, bD)
                    local uC
                    uC = nil
                    if typeof(bC) ~= "Vector3" then
                        return false
                    end
                    uC = r9()
                    if not uC then
                        return false
                    end
                    return (pcall(function()
                        local ux = bD
                        local uB = if ux then 1 else 0
                        local uz = 3210 * uB + 1501 * (1 - uB)
                        local uA = 1326 * uB + 2995 * (1 - uB)
                        if not ((uz * 185 + uA * 3960 + uz * uA) % 16777213 == 10101270) then
                            ux = 4
                        end
                        uC.CFrame = CFrame.new(bC + Vector3.new(0, ux, 0))
                        uC.AssemblyLinearVelocity = Vector3.zero
                    end))
                end
            end
            sJ_4 = (sJ_4 + 26) % 84
        end
    elseif sN_1 <= 19 then
        if sN_1 <= 18 then
            if sN_1 <= 17 then
                local sO_13 = {
                    "woezpu",
                    "kjisxycuqa",
                    "hpvfbmsrc",
                    "twjwkxk",
                    "cloz",
                    "wavcaulz",
                    "pfukfwg",
                    "onlnzdhpuqy",
                    "wlcdr",
                    "uwdelz",
                    "dawtfoqwtnl",
                    "ebvyjkpxxof"
                }
                local Gs = sJ_4
                local sP_11 = sO_13[Gs % 12 + 1]
                local sV = if sP_11:len() >= sP_11:gsub("(.)", "%1%1", Gs % 3 % 2 + 1):len() then 1 else 0
                if sV == 1 then
                    rN = fn790
                    sh = rY.Heartbeat:Connect(onHeartbeat)
                    connection.Track(fn687)
                    rV = function(bW)
                        if typeof(bW) ~= "Vector3" then
                            return
                        end
                        if r_(LocalPlayer.RequestStreamAroundAsync) then
                            pcall(function()
                                LocalPlayer:RequestStreamAroundAsync(bW, 10)
                            end)
                        end
                    end
                    sy = fn1148
                    st = function(b9, ca)
                        local generation
                        b9.generation = (b9.generation or 0) + 1
                        b9.stopped = false
                        generation = b9.generation
                        task.spawn(function()
                            local uT_2
                            while true do
                                local uS = (rO()) and not b9.stopped and b9.generation == generation
                                local uS_3
                                if uS then
                                    uS_3, uT_2 = pcall(ca)
                                    if not uS_3 then
                                        warn("[Ouroboros] loop error: " .. tostring(uT_2))
                                    end
                                    local uS_4 = not rO() or b9.stopped or b9.generation ~= generation
                                    if uS_4 then
                                        break
                                    end
                                    task.wait(b9.interval)
                                    continue
                                end
                                break
                            end
                        end)
                    end
                else
                    rV = fn790
                    connection = sy.Heartbeat:Connect(onHeartbeat)
                    sh.Track(fn687)
                    rY = function(bW)
                        if typeof(bW) ~= "Vector3" then
                            return
                        end
                        if r_(LocalPlayer.RequestStreamAroundAsync) then
                            pcall(function()
                                LocalPlayer:RequestStreamAroundAsync(bW, 10)
                            end)
                        end
                    end
                    st = fn1148
                    rN = function(b9, ca)
                        local generation
                        b9.generation = (b9.generation or 0) + 1
                        b9.stopped = false
                        generation = b9.generation
                        task.spawn(function()
                            local uT_1
                            while true do
                                local uS = (rO()) and not b9.stopped and b9.generation == generation
                                local uS_1
                                if uS then
                                    uS_1, uT_1 = pcall(ca)
                                    if not uS_1 then
                                        warn("[Ouroboros] loop error: " .. tostring(uT_1))
                                    end
                                    local uS_2 = not rO() or b9.stopped or b9.generation ~= generation
                                    if uS_2 then
                                        break
                                    end
                                    task.wait(b9.interval)
                                    continue
                                end
                                break
                            end
                        end)
                    end
                end
                sJ_4 = (sJ_4 + 68) % 84
            else
                if (not sf or rH) and (sx or not rP) or (sc and not sc or (not rP or sc)) or not ((not sf or rH) and (sx or not rP) or (sc and not sc or (not rP or sc))) then
                    rM = fn1069
                else
                    rG = fn1069
                end
                sJ_4 = (sJ_4 + 5) % 84
            end
        else
            local sO_14 = {
                "zidrw",
                "irgngglp",
                "rarjjmro",
                "lymvcea",
                "poxmltkravz",
                "ecpj",
                "iihxr",
                "slbufzljql",
                "pvzroceki",
                "tsttklb",
                "jtubdxlgc"
            }
            if sO_14[(sJ_4 * 30 + 43) % 11 + 1] < sO_14[(sJ_4 * 30 + 43) % 11 + 1] then
                rN = { interval = 0.2 }
            else
                sI = { interval = 0.2 }
            end
            sJ_4 = (sJ_4 + 47) % 84
        end
    elseif sN_1 <= 20 then
        local Gk = bit32.rrotate(bit32.bxor(bit32.lrotate(sJ_4, 8), string.byte(tostring(sq))), 7)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Gk, 407352851), 8), 1203114776) == bit32.lrotate(Gk, 8) then
            sD = { interval = 2 }
        else
            rY = { interval = 2 }
        end
        sJ_4 = (sJ_4 + 26) % 84
    else
        if ((not sg and not rJ or rV and not rJ) and (not sg or sK_2 or sK_2 and sg) or (rJ or sK_2 or not rJ and sg) and (st and sK_2 or not st and sg)) and (sg and not r1 and (r1 and not st) and (sK_2 or rJ or rV and not sK_2) or (not sK_2 or not sg or (rJ or rV)) and (not r1 or rJ or (sK_2 or not r1))) or not (((not sg and not rJ or rV and not rJ) and (not sg or sK_2 or sK_2 and sg) or (rJ or sK_2 or not rJ and sg) and (st and sK_2 or not st and sg)) and (sg and not r1 and (r1 and not st) and (sK_2 or rJ or rV and not sK_2) or (not sK_2 or not sg or (rJ or rV)) and (not r1 or rJ or (sK_2 or not r1)))) then
            sv = { interval = 0.1, area = "Best Unlocked" }
        else
            sw = { interval = 0.1, area = "Best Unlocked" }
        end
        sJ_4 = (sJ_4 + 68) % 84
    end
until (sJ_4 * 41 + 63) % 84 == 67
if not sL_1 then
    local sJ_5 = 1
    repeat
        if (sJ_5 * 3 + 8) * 9 % 4 == ((sJ_5 * 3 + 8) * 9 + 3) % 4 then
            pcall(sM_2.Unload)
            error(sh, 0)
        else
            pcall(sh.Unload)
            error(sM_2, 0)
        end
        sJ_5 = (sJ_5 + 3) % 4
    until (sJ_5 * 3 + 0) % 4 == 0
end
