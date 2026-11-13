local p7
local qt
local pP
local qw
local qa
local qz
local qd
local qg
local qC
local qj
local pF
local p0
local qm
local pI
local qp
local p6
local pL
local qv
local p9
local pR
local qc
local qy
local pU
local qf
local qB
local pX
local qi
local pE
local ql
local CoreGui
local LocalPlayer
local pN
local pQ
local qx
local qb
local qe
local qA
local qD
local pD
local State
local qn
local p1
local pJ
local p4
local qq
local function fn76()
    local targets = qt.targets
    local uS_1
    local uT = next(targets) == nil
    local uT_1
    local uU = pX()
    local uV
    for i, v in ipairs(qf()) do
        if uT or targets[qv[v]] then
            local uW_2 = pP(v)
            if uW_2 and uW_2.price <= uU then
                if not uV or uW_2.price < uV.price then
                    uV = uW_2
                end
            end
        end
    end
    if not uV then
        pQ("No upgrade is affordable yet")
        return
    end
    uS_1, uT_1 = p0("UpgradeRequest", uV.key)
    if uS_1 and uT_1 ~= false then
        pQ("Bought " .. qv[uV.key] .. " level " .. tostring(uV.level + 1))
    else
        pQ(qv[uV.key] .. " purchase was refused")
    end
end
local function fn110(aK, aL, aM)
    local Remotes = pF:FindFirstChild("Remotes")
    local rz = Remotes and Remotes:FindFirstChild(aK)
    local ry_1 = rz
    if rz then
        rz = ry_1:FindFirstChild(aL)
    end
    local ry_2 = rz
    if rz then
        rz = ry_2:IsA(aM)
    end
    if rz then
        return ry_2
    end
    return nil
end
local function fn111(U)
    local rg = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if rg then
        return cloneref(U)
    end
    return U
end
local function fn112(ft)
    if ft then
        qj(qt, pU)
    else
        qe(qt)
    end
end
local function fn158()
    return qw({ "Data" })
end
local function fn163(fB)
    if fB then
        qj(qp, qi)
    else
        qe(qp)
    end
end
local function fn196(b3)
    local RootPart = b3:FindFirstChild("RootPart")
    local sy = RootPart and RootPart:IsA("BasePart")
    if sy then
        return RootPart
    end
    return b3:FindFirstChildWhichIsA("BasePart", true)
end
local function fn238(fy)
    qt.targets = p4(fy)
end
local function fn246()
    local rY = qb()
    if not rY then
        return 0
    end
    local rZ = (tonumber(pI(rY.Cash)))
    local r2 = if rZ then 1 else 0
    local r0 = 3408 * r2 + 1838 * (1 - r2)
    local r1 = 2175 * r2 + 3000 * (1 - r2)
    if not ((r0 * 1603 + r1 * 175 + r0 * r1) % 16777213 == 13256049) then
        rZ = 0
    end
    return rZ
end
local function fn248()
    local rV = p1()
    return rV and rV.client or nil
end
local function fn258(fl)
    local vb = fl and true or false
    pD.restore = vb
end
local function fn273(c5, c6)
    local tr = os.clock()
    local tt = tr + (c6 or 3)
    while true do
        local tr_1 = pL() and os.clock() < tt
        if not tr_1 then
            return c5.Parent == nil
        end
        if c5.Parent == nil then
            break
        end
        task.wait(0.1)
    end
    return true
end
local function fn278()
    local Map = qz:FindFirstChild("Map")
    local sa = Map ~= nil and Map:GetAttribute("LockSystemEnabled") == true
    return sa
end
local function fn289()
    return not qg.Unloaded
end
local function fn297(al)
    State.Status = tostring(al)
end
local function fn312(bO)
    local sl = bO or qc()
    bO = sl
    if sl then
        sl = bO:FindFirstChild("ActiveDinos")
    end
    local sm = sl
    if not sm then
        return {}
    end
    local sl_1 = {}
    for i, child in ipairs(sm:GetChildren()) do
        if child:IsA("Model") then
            table.insert(sl_1, child)
        end
    end
    return sl_1
end
local function fn334(cx)
    local sZ_2
    local sX = p7()
    local sX_1
    local sY = {}
    for i, v in ipairs(qx(cx)) do
        if qn(v, sX) then
            local sZ_1 = sY[v.Name]
            if not sZ_1 then
                sZ_1 = {}
                sY[v.Name] = sZ_1
            end
            table.insert(sZ_1, v)
        end
    end
    sZ_2, sX_1 = nil, nil
    for k, v in pairs(sY) do
        if #v >= 2 then
            local s_ = pN(v[1])
            if sX_1 == nil or s_ < sX_1 then
                sZ_2, sX_1 = k, s_
            end
        end
    end
    if not sZ_2 then
        return nil, nil
    end
    local sX_2 = sY[sZ_2]
    return sX_2[1], sX_2[2]
end
local function fn353()
    local Map = qz:FindFirstChild("Map")
    local sd = Map and Map:FindFirstChild("Plots")
    if not sd then
        return nil
    end
    for i, child in ipairs(sd:GetChildren()) do
        local sc_2 = child:IsA("Model") and child:GetAttribute("Owner") == LocalPlayer.UserId
        if sc_2 then
            return child
        end
    end
    return nil
end
local function fn357(cZ, c_)
    local tn = os.clock()
    local tp = tn + (c_ or 2)
    while true do
        local tn_1 = pL() and os.clock() < tp
        if not tn_1 then
            local tn_2 = cZ.Parent ~= nil and cZ:GetAttribute("Held") == true
            return tn_2
        end
        if cZ.Parent == nil then
            break
        end
        if cZ:GetAttribute("Held") == true then
            return true
        end
        task.wait(0.1)
    end
    return false
end
local function fn362()
    local r7 = tonumber(LocalPlayer:GetAttribute("Rebirths")) or 0
    return r7
end
local function fn415()
    return CoreGui
end
local function fn425(ds)
    local tG = {}
    if type(ds) == "table" then
        for k, v in pairs(ds) do
            local tH = v == true and type(k) == "string"
            if tH then
                tG[k] = true
            elseif type(v) == "string" then
                tG[v] = true
            end
        end
    end
    return tG
end
local function fn461()
    qe(pD)
    qe(qy)
    qe(qt)
    qe(qp)
end
local function fn525()
    if not qA() then
        pQ("Base locking is disabled on this map")
        return
    end
    local u4 = qc()
    local u4_2
    if not u4 then
        pQ("Waiting for your plot")
        return
    end
    if u4:GetAttribute("UnderAttack") == true then
        pQ("Cannot lock while under attack")
        return
    end
    local u4_1 = p7()
    local u5 = tonumber(LocalPlayer:GetAttribute("LockEndsAt")) or 0
    local u5_2
    local u5_1 = tonumber(LocalPlayer:GetAttribute("LockCooldownEndsAt")) or 0
    if u5 > u4_1 then
        pQ(("Base locked for %ds"):format(math.floor(u5 - u4_1)))
        return
    end
    if u5_1 > u4_1 then
        pQ(("Lock cooldown %ds"):format(math.floor(u5_1 - u4_1)))
        return
    end
    u4_2, u5_2 = p0("LockBaseRequest")
    if u4_2 and u5_2 ~= false then
        pQ("Locked the base")
    else
        pQ("Lock request was refused")
    end
end
local function fn544()
    local t0 = 0
    for i, v in ipairs(qx()) do
        t0 = math.max(t0, pN(v))
    end
    return t0
end
local function fn565(eI)
    local uM = qm()
    local uN = uM and uM[eI]
    if not uN then
        return nil
    end
    local uN_1 = qC(eI)
    if not uN_1 then
        return nil
    end
    local uO = uN[uN_1]
    local uP = uN[uN_1 + 1]
    if not uO or not uP then
        return nil
    end
    local uM_3 = pJ()
    local uQ_1 = tonumber(uP.RebirthsRequired) or 0
    if uM_3 < uQ_1 then
        return nil
    end
    local uM_4 = tonumber(uO.Price)
    if not uM_4 then
        return nil
    end
    return { key = eI, level = uN_1, price = uM_4 }
end
local function fn593()
    local uo = {}
    for i, v in ipairs(qq) do
        local up = v ~= "LockBase" or qA()
        if up then
            table.insert(uo, v)
        end
    end
    return uo
end
local function fn685(X)
    return type(X) == "function"
end
local function fn690()
    return qw({ "Constants", "Upgrades" })
end
local function fn692(cr, cs)
    local sR = cr:GetAttribute("Held") == true or cr:GetAttribute("Merging") == true
    if sR then
        return false
    end
    local sW = if cr:GetAttribute("Attacking") == true then 1 else 0
    if sW == 1 then
        return false
    end
    local sR_1 = (tonumber(cr:GetAttribute("PickupReadyAt")))
    local sW_1 = if sR_1 then 1 else 0
    local sU = 2764 * sW_1 + 3375 * (1 - sW_1)
    local sV = 450 * sW_1 + 1573 * (1 - sW_1)
    if not ((sU * 3120 + sV * 1574 + sU * sV) % 16777213 == 10575780) then
        sR_1 = 0
    end
    if sR_1 > cs then
        return false
    end
    return qd(cr) ~= nil
end
local function fn718(ag, ah)
    if not pL() then
        return
    end
    local Notifications = State.Notifications
    local rk = tostring(ag)
    local rl = ah or 5
    table.insert(Notifications, { text = rk, time = rl })
    if #State.Notifications > 12 then
        table.remove(State.Notifications, 1)
    end
end
local function fn729()
    return qw({ "Constants", "DinoStats" })
end
local function fn734(ap)
    local rq_1
    local rn = table.concat(ap, ".")
    local ro = qD[rn]
    local ro_4
    if ro ~= nil then
        return ro
    end
    local Modules = pF:FindFirstChild("Modules")
    if not Modules then
        return nil
    end
    local rp = Modules
    for i, v in ipairs(ap) do
        local ro_2 = rp and rp:FindFirstChild(v)
        rp = ro_2
    end
    local ro_3 = not rp or not rp:IsA("ModuleScript")
    if ro_3 then
        return nil
    end
    ro_4, rq_1 = pcall(require, rp)
    local rp_1 = not ro_4 or type(rq_1) ~= "table"
    if rp_1 then
        return nil
    end
    qD[rn] = rq_1
    return rq_1
end
local function fn752(ck)
    for i, v in ipairs(qx(ck)) do
        local sJ = v:GetAttribute("Held") == true and v:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if sJ then
            return v
        end
    end
    return nil
end
local function fn765()
    local ul_1
    local uk_1
    local uj = pR()
    if not uj then
        pQ("Rebirth requirement unavailable")
        return
    end
    if ql() < uj then
        pQ("Rebirth needs a higher tier dino")
        return
    end
    local uj_1 = pJ()
    uk_1, ul_1 = p0("RebirthRequest")
    if uk_1 and ul_1 then
        State.Rebirths = State.Rebirths + 1
        qa("Rebirthed (" .. tostring(uj_1 + 1) .. ")")
        pQ("Rebirthed")
    else
        pQ("Rebirth was refused")
    end
end
local function fn796(bX)
    local su = p6()
    local sv = su and su[bX.Name]
    local su_1 = sv
    if sv then
        sv = tonumber(su_1.Tier)
    end
    return sv or 0
end
local function fn802(dq)
    dq.stopped = true
    local tE = dq.generation or 0
    dq.generation = tE + 1
end
local function fn804()
    local rK_1
    local rJ_1
    rJ_1, rK_1 = pcall(function()
        return qz:GetServerTimeNow()
    end)
    local rL = rJ_1 and rK_1
    local rJ_2 = rL or os.time()
    return rJ_2
end
local function fn812(fo)
    if fo then
        qj(qy, p9)
    else
        qe(qy)
    end
end
local function fn817()
    local ux = {}
    for i, v in ipairs(qf()) do
        table.insert(ux, qv[v])
    end
    return ux
end
local function fn823(cP, cQ)
    local te = p7()
    for i, v in ipairs(qx(cP)) do
        local tf = v ~= cQ and v.Name == cQ.Name and qn(v, te)
        if tf then
            return v
        end
    end
    return nil
end
local function fn851()
    local Character = LocalPlayer.Character
    local sB = Character and Character:FindFirstChild("HumanoidRootPart")
    local sA_1 = sB
    if sB then
        sB = sA_1:IsA("BasePart")
    end
    if sB then
        return sA_1
    end
    return nil
end
local function fn854()
    local t8 = p6()
    if not t8 then
        return nil
    end
    local t9 = pJ()
    local ua = 0
    for k, v in pairs(t8) do
        local t8_1 = tonumber(v.RebirthsRequired) or 0
        if t8_1 <= t9 then
            local max = math.max
            local ub = tonumber(v.Tier) or 0
            ua = max(ua, ub)
        end
    end
    if ua > 0 then
        return ua
    end
    return nil
end
local function fn879()
    gethui = qB
end
local function fn890(fg)
    if fg then
        qj(pD, pE)
    else
        qe(pD)
    end
end
pD = nil
pE = nil
pF = nil
pI = nil
pJ = nil
LocalPlayer = nil
pL = nil
pN = nil
pP = nil
pQ = nil
pR = nil
pU = nil
pX = nil
p0 = nil
p1 = nil
CoreGui = nil
p4 = nil
p6 = nil
p7 = nil
p9 = nil
qa = nil
qb = nil
qc = nil
qd = nil
qe = nil
qf = nil
qg = nil
qi = nil
qj = nil
State = nil
ql = nil
qm = nil
qn = nil
local Players, pG, pH, Workspace, pO, pS, pT, Lighting, pW, pY, pZ, TeleportService, p3, GuiService, HttpService, VirtualUser, UserInputService
qp = nil
qq = nil
qt = nil
qv = nil
qw = nil
qx = nil
qy = nil
qz = nil
qA = nil
qB = nil
qC = nil
qD = nil
local qr, RunService, qu
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, qB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local qG = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
if (not VirtualUser or TeleportService) and (VirtualUser or TeleportService) and (not VirtualUser and VirtualUser or TeleportService and not Players) and (not VirtualUser or Players or not Players and not TeleportService or (not TeleportService and TeleportService or (not TeleportService or not VirtualUser))) or (TeleportService or TeleportService or (TeleportService or not TeleportService)) and ((not TeleportService or Players) and (not Players or Players)) and ((TeleportService or not VirtualUser) and (TeleportService or TeleportService) or (not Players and VirtualUser or Players and not TeleportService)) or not ((not VirtualUser or TeleportService) and (VirtualUser or TeleportService) and (not VirtualUser and VirtualUser or TeleportService and not Players) and (not VirtualUser or Players or not Players and not TeleportService or (not TeleportService and TeleportService or (not TeleportService or not VirtualUser))) or (TeleportService or TeleportService or (TeleportService or not TeleportService)) and ((not TeleportService or Players) and (not Players or Players)) and ((TeleportService or not VirtualUser) and (TeleportService or TeleportService) or (not Players and VirtualUser or Players and not TeleportService))) then
    Workspace = game:GetService("Workspace")
else
    qG = game:GetService("Workspace")
end
LocalPlayer = Players.LocalPlayer
local qF = "OuroborosMergeADino"
qB = fn415
if getgenv then
    getgenv().gethui = qB
end
qg, pF, qz, qv, qq, State, qD, pD, qy, qt, qp, pO, pZ, pL, qa, pQ, qw, qm, p6, p1, pS, p0, p7, pI, qb, pX, qC, pJ, qA, qc, qx, pN, qd, pY, qu, pW, qn, pT, qr, pG, p3, qj, qe, p4, pE, ql, pR, p9, qf, pH, pP, pU, qi = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn879)
local function qK(t)
    local q6
    local q4
    local q5
    q4 = nil
    q5 = nil
    q6 = nil
    local q7 = t ~= ""
    local q8 = type(t) == "string" and q7
    assert(q8, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    q4 = getgenv()
    assert(type(q4) == "table", "getgenv did not return a table")
    local q7_1 = q4[t]
    if q7_1 ~= nil then
        local q8_1 = type(q7_1) == "table" and type(q7_1.Unload) == "function"
        assert(q8_1, "Namespace is occupied")
        q7_1.Unload()
        assert(q4[t] == nil, "Previous instance did not release its namespace")
    end
    q5 = {}
    q6 = { State = {}, Unloaded = false }
    q6.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if q6.Unloaded then
            z()
        else
            table.insert(q5, z)
        end
        return z
    end
    q6.Unload = function()
        local qY_1
        local qX_1
        if q6.Unloaded then
            return
        end
        q6.Unloaded = true
        local qV = {}
        local q1 = #q5
        local q0 = -1
        while false and q1 <= 1 or true and q1 >= 1 do
            local q2 = q1
            local qW_1 = table.remove(q5, q2)
            qX_1, qY_1 = pcall(qW_1)
            if not qX_1 then
                table.insert(qV, tostring(qY_1))
            end
            q1 += q0
        end
        table.clear(q6.State)
        if #qV > 0 then
            error("Cleanup incomplete: " .. table.concat(qV, "; "), 0)
        end
        if q4[t] == q6 then
            q4[t] = nil
        end
    end
    q4[t] = q6
    return q6
end
pO = function(M, N)
    local re = type(M) == "table" and type(M.Track) == "function"
    assert(re, "FeatureAPI required")
    local re_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(re_1, "UI library required")
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
qg = qK(qF)
pZ = fn685
pL = fn289
pF = fn111(qG)
qz = fn111(Workspace)
qv = { SpawnTier = "Spawn Tier", MaxSpawn = "Base Capacity", LockBase = "Lock Time" }
qq = { "SpawnTier", "MaxSpawn", "LockBase" }
State = qg.State
State.Notifications = {}
State.Status = "Idle"
State.Merges = 0
State.Rebirths = 0
qa = fn718
pQ = fn297
qD = {}
qw = fn734
qm = fn690
p6 = fn729
p1 = fn158
pS = fn110
p0 = function(aV, ...)
    local rF
    local rE
    rE = nil
    rF = nil
    local rH_1
    local rG_1
    rF = pS("Functions", aV, "RemoteFunction")
    if not rF then
        pQ("Missing remote: " .. aV)
        return false, nil
    end
    rE = table.pack(...)
    rG_1, rH_1 = pcall(function()
        return rF:InvokeServer(table.unpack(rE, 1, rE.n))
    end)
    if not rG_1 then
        warn("[Ouroboros] " .. aV .. " failed: " .. tostring(rH_1))
        return false, nil
    end
    return true, rH_1
end
p7 = fn804
pI = function(ba)
    local rQ = type(ba)
    local rQ_1
    local rR = rQ ~= "table"
    local rR_2
    if rQ ~= "function" and rR and rQ ~= "userdata" then
        return nil
    end
    rQ_1, rR_2 = pcall(function()
        return ba()
    end)
    if not rQ_1 then
        return nil
    end
    return rR_2
end
qb = fn248
pX = fn246
qC = function(bo)
    local r3
    r3 = nil
    local r4 = qb()
    local r4_1
    local r5 = r4 and r4.Upgrades
    local r5_1
    r3 = r5
    if not r3 then
        return nil
    end
    r4_1, r5_1 = pcall(function()
        return r3[bo]
    end)
    if not r4_1 then
        return nil
    end
    return tonumber(pI(r5_1))
end
pJ = fn362
qA = fn278
qc = fn353
qx = fn312
pN = fn796
qd = fn196
if ((qf or not ql) and (not ql and qr) or (pQ and not ql or not pQ and not qf)) and ((qr or pQ) and (not qr or not pN) and (pQ and qr or (qf or not qf))) and not (((qf or not ql) and (not ql and qr) or (pQ and not ql or not pQ and not qf)) and ((qr or pQ) and (not qr or not pN) and (pQ and qr or (qf or not qf)))) then
    qu = fn851
    pY = function(cd)
        local sG
        sG = nil
        sG = pY()
        if not sG then
            return false
        end
        local sH = pcall(function()
            sG.CFrame = CFrame.new(cd + Vector3.new(0, 3, 0))
        end)
        return sH
    end
    qn = fn752
    pW = fn692
else
    pY = fn851
    qu = function(cd)
        local sG
        sG = nil
        sG = pY()
        if not sG then
            return false
        end
        local sH = pcall(function()
            sG.CFrame = CFrame.new(cd + Vector3.new(0, 3, 0))
        end)
        return sH
    end
    pW = fn752
    qn = fn692
end
pT = fn334
qr = fn823
pG = fn357
p3 = fn273
pD = { interval = 0.6, restore = true }
qy = { interval = 5 }
qt = { interval = 3, targets = {} }
qp = { interval = 5 }
qj = function(df, dg)
    local generation
    local tC = df.generation or 0
    df.generation = tC + 1
    df.stopped = false
    generation = df.generation
    task.spawn(function()
        local tw_1
        while true do
            local tv = pL() and not df.stopped and df.generation == generation
            local tv_1
            if tv then
                tv_1, tw_1 = pcall(dg)
                if not tv_1 then
                    warn("[Ouroboros] loop error: " .. tostring(tw_1))
                end
                local tv_2 = not pL() or df.stopped
                local tA = if tv_2 then 1 else 0
                local ty = 1218 * tA + 817 * (1 - tA)
                local tz = 2339 * tA + 2772 * (1 - tA)
                if not ((ty * 2565 + tz * 2415 + ty * tz) % 16777213 == 11621757) then
                    tv_2 = df.generation ~= generation
                end
                if tv_2 then
                    break
                end
                task.wait(df.interval)
                continue
            end
            break
        end
    end)
end
qe = fn802
p4 = fn425
pE = function()
    local tW_1
    local tU_1
    local tV_1
    local tS = qc()
    if not tS then
        pQ("Waiting for your plot")
        return
    end
    local tP = pY()
    if not tP then
        pQ("Waiting for your character")
        return
    end
    local CFrame = tP.CFrame
    local tT = pW(tS)
    if tT then
        tU_1 = qr(tS, tT)
        if not tU_1 then
            pQ("Holding " .. tT.Name .. " with no match on the plot")
            return
        end
    else
        tW_1, tV_1 = pT(tS)
        if not tW_1 then
            pQ("No matching pair to merge")
            return
        end
        tT, tU_1 = tW_1, tV_1
        local tS_1 = qd(tT)
        local tV_2 = not tS_1 or not qu(tS_1.Position)
        if tV_2 then
            return
        end
        if not pG(tT, 2) then
            pQ("Could not pick up " .. tT.Name)
            if pD.restore then
                pcall(function()
                    tP.CFrame = CFrame
                end)
            end
            return
        end
    end
    local tS_2 = qd(tU_1)
    if not tS_2 then
        return
    end
    qu(tS_2.Position)
    local tS_3 = p3(tT, 3)
    if tS_3 then
        State.Merges = State.Merges + 1
        pQ("Merged two " .. tU_1.Name)
    else
        pQ("Merge did not complete")
    end
    if pD.restore then
        task.wait(0.15)
        local tQ = pY()
        if tQ then
            pcall(function()
                tQ.CFrame = CFrame
            end)
        end
    end
end
ql = fn544
pR = fn854
p9 = fn765
qf = fn593
pH = fn817
pP = fn565
pU = fn76
qi = fn525
pD.SetEnabled = fn890
pD.SetRestore = fn258
qy.SetEnabled = fn812
qt.SetEnabled = fn112
qt.SetTargets = fn238
qp.SetEnabled = fn163
qg.Track(fn461)
local function qH()
    local onDiscord
    local zP
    local zO
    zO = nil
    zP = nil
    onDiscord = nil
    local ThemeManager, zM, Options, SaveManager, zR, zS, Library, Toggles, zW
    zS = "https://rscripts.net/@Ouroboros"
    zR = "Merge a Dino"
    zW = "https://ouroboros-hub-rbx.web.app/"
    zO = "https://discord.gg/synapsex"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    pO(qg, Library)
    zP = function(f_, f0)
        local vg = pZ(setclipboard) and setclipboard
        local vh = vg
        if not vh then
            local vg_1 = pZ(toclipboard) and toclipboard
            vh = vg_1 or nil
        end
        local vg_2 = vh
        if not vg_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local vh_1 = pcall(vg_2, f_)
        if vh_1 then
            Library:Notify(f0)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        zP(zO, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = zO, Copyable = true }, "|", zR, "|", "v0.1" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    zM = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function zX_1(gd)
        local DiscordGroup = gd:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in zM do
        if k ~= "Info" then
            zX_1(v)
        end
    end
    local function zY()
        local hc
        local DinosGroup = zM.Main:AddLeftGroupbox("Dinos", "shuffle")
        local Label = DinosGroup:AddLabel(State.Status, true)
        DinosGroup:AddDivider()
        DinosGroup:AddToggle("AutoMerge", {
            Text = "Auto Merge",
            Default = false,
            Tooltip = "Carries the lowest matching dino into its twin so the pair merges.",
            Callback = function(go)
                pD.SetEnabled(go)
            end
        })
        DinosGroup:AddToggle("MergeRestore", {
            Text = "Return To Your Spot",
            Default = true,
            Tooltip = "Walks you back to where you were standing after every merge.",
            Callback = function(gs)
                pD.SetRestore(gs)
            end
        })
        DinosGroup:AddSlider("MergeInterval", {
            Text = "Merge Delay",
            Default = 0.6,
            Min = 0.2,
            Max = 5,
            Rounding = 1,
            Suffix = "s",
            Callback = function(gu)
                pD.interval = gu
            end
        })
        local RebirthGroup = zM.Main:AddLeftGroupbox("Rebirth", "rotate-ccw")
        RebirthGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Tooltip = "Rebirths as soon as your plot holds a dino of the required tier.",
            Callback = function(gx)
                qy.SetEnabled(gx)
            end
        })
        local UpgradesGroup = zM.Main:AddRightGroupbox("Upgrades", "arrow-big-up-dash")
        UpgradesGroup:AddToggle("AutoUpgrades", {
            Text = "Auto Buy Upgrades",
            Default = false,
            Tooltip = "Buys the cheapest affordable upgrade you have selected.",
            Callback = function(gC)
                qt.SetEnabled(gC)
            end
        })
        UpgradesGroup:AddDropdown("UpgradeTargets", {
            Text = "Upgrades",
            Values = pH(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to buy every upgrade you can afford.",
            Callback = function(gI)
                qt.SetTargets(gI)
            end
        })
        local DefenseGroup = zM.Main:AddRightGroupbox("Defense", "lock")
        DefenseGroup:AddToggle("AutoLock", {
            Text = "Auto Lock Base",
            Default = false,
            Tooltip = "Raises the fences again the moment the lock and its cooldown expire.",
            Callback = function(gL)
                qp.SetEnabled(gL)
            end
        })
        hc = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    local vn = qx()
                    local vp = #vn
                    local vq = math.floor(pX())
                    local vr = pJ()
                    local vs = State.Merges or 0
                    local vt = string.format("Dinos %d  |  Cash %d  |  Rebirths %d  |  Merges %d", vp, vq, vr, vs)
                    Label:SetText(vt .. "  |  " .. tostring(State.Status))
                end)
                local vz = false
                repeat
                    local vv
                    if State.Notifications and #State.Notifications > 0 then
                        vv = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(vv.text, vv.time)
                        end)
                    else
                        vz = true
                    end
                until vz
                task.wait(0.3)
            end
        end)
        qg.Track(function()
            if coroutine.status(hc) ~= "dead" then
                pcall(task.cancel, hc)
            end
        end)
    end
    zY()
    local function zX_2()
        local vU
        local v0
        local vX
        local v3
        vU = nil
        vX = nil
        v0 = nil
        v3 = nil
        local vT, vV, Label, vY, vZ, v_, Label2, v2, Label3
        vU = function(hh)
            return (tostring(hh):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        v0 = function(hj, hk)
            return string.format('<font color="%s">%s</font>', hk, vU(hj))
        end
        vT = function(hn, ho, hp)
            return string.format("<b>%s</b> %s %s", hn, v0("-", "#5a6070"), v0(ho, hp))
        end
        local v5 = "#8b93a3"
        v2 = "#7fd47f"
        local v6 = "#6ec1ff"
        local v7 = {}
        v_ = "#e8a34d"
        local wd = if not qc() then 1 else 0
        if wd == 1 then
            table.insert(v7, "plot")
        end
        if not pS("Functions", "UpgradeRequest", "RemoteFunction") then
            table.insert(v7, "upgrades")
        end
        local wg = if not pS("Functions", "RebirthRequest", "RemoteFunction") then 1 else 0
        if wg == 1 then
            table.insert(v7, "rebirth")
        end
        if not pS("Functions", "LockBaseRequest", "RemoteFunction") then
            table.insert(v7, "base lock")
        end
        local v8 = not p6() or not qm() or not p1()
        if v8 then
            table.insert(v7, "game data")
        end
        local v9 = #v7 == 0 and "ready"
        local wg_1 = if v9 then 1 else 0
        local we = 1089 * wg_1 + 61 * (1 - wg_1)
        local wf = 1540 * wg_1 + 4082 * (1 - wg_1)
        if not ((we * 3174 + wf * 2902 + we * wf) % 16777213 == 9602626) then
            v9 = "limited: " .. table.concat(v7, ", ")
        end
        vY = "Unknown"
        local v7_1 = v9
        pcall(function()
            local vC_1
            local vB_1
            if pZ(identifyexecutor) then
                vC_1, vB_1 = identifyexecutor()
                local vD = vC_1 ~= ""
                local vE = type(vC_1) == "string" and vD
                if vE then
                    local vD_1 = type(vB_1) == "string" and vB_1 ~= "" and vC_1 .. " " .. vB_1
                    vY = vD_1 or vC_1
                end
            end
        end)
        v3 = os.clock()
        vZ = function()
            local vJ = math.floor(os.clock() - v3)
            if vJ < 60 then
                return vJ .. "s"
            elseif vJ < 3600 then
                return string.format("%dm %ds", vJ // 60, vJ % 60)
            else
                return string.format("%dh %dm", vJ // 3600, vJ % 3600 // 60)
            end
        end
        local UserGroup = zM.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(vT("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, v2), true)
        UserGroup:AddLabel(vT("UserId", tostring(LocalPlayer.UserId), v6), true)
        UserGroup:AddLabel(vT("Executor", vY .. "  " .. v7_1, v2), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(vT("Session", vZ(), v_), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                zP(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                zP("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = zM.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(vT("Game", zR, v6), true)
        Label2 = SessionGroup:AddLabel(vT("Players", "0/0", v2), true)
        vV = tostring(game.JobId)
        local v6_1 = #vV > 18 and string.sub(vV, 1, 18) .. "..."
        local v8_3 = v6_1 or vV
        SessionGroup:AddLabel(vT("Job", v8_3, v5), true)
        Label = SessionGroup:AddLabel(vT("Ping", "0 ms", v_), true)
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
                zP(vV, "Copied Job ID")
            end
        })
        vX = task.spawn(function()
            local vP_1
            local vO_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(vT("Session", vZ(), v_))
                Label2:SetText(vT("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), v2))
                vO_1, vP_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local vO_2 = vO_1 and vP_1 .. " ms" or "n/a"
                Label:SetText(vT("Ping", vO_2, v_))
            end
        end)
        qg.Track(function()
            if coroutine.status(vX) ~= "dead" then
                task.cancel(vX)
            end
        end)
        local SocialsGroup = zM.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                zP(zS, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                zP(zW, "Copied website link")
            end
        })
    end
    zX_2()
    local function zX_3()
        local iN
        local iL
        local iM
        local iO
        local MovementGroup = zM.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = zM.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        iM = {}
        iN = {}
        iL = {}
        iO = {}
        local iK = {}
        local function iP()
            for k, v in iL do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(iL)
        end
        local function iT()
            for k, v in iM do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(iM)
        end
        local function iX()
            for k, v in iN do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(iN)
        end
        local function i0(i1)
            if not i1:IsA("ProximityPrompt") then
                return
            end
            if iO[i1] == nil then
                iO[i1] = {
                    HoldDuration = i1.HoldDuration,
                    MaxActivationDistance = i1.MaxActivationDistance,
                    RequiresLineOfSight = i1.RequiresLineOfSight
                }
            end
            i1.HoldDuration = 0
            i1.MaxActivationDistance = 50
            i1.RequiresLineOfSight = false
        end
        local function i3()
            for k, v in iO do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(iO)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                iX()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                iT()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                iP()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(i0, v)
                end
            else
                i3()
            end
        end)
        table.insert(iK, Workspace.DescendantAdded:Connect(function(jm)
            if Toggles.InstantProximityPrompt.Value then
                i0(jm)
            end
        end))
        table.insert(iK, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if iL[v] == nil then
                        iL[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(iK, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local xa = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and xa then
                xa:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(iK, RunService.RenderStepped:Connect(function(jI)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local xd = Character and Character:FindFirstChildOfClass("Humanoid")
            local xe = Character
            if xe then
                xe = Character:FindFirstChild("HumanoidRootPart")
            end
            local xc_1 = xe
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and xd then
                if iM[xd] == nil then
                    iM[xd] = xd.WalkSpeed
                end
                xd.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and xc_1 and xd and CurrentCamera then
                if iN[xd] == nil then
                    iN[xd] = xd.PlatformStand
                end
                xd.PlatformStand = true
                local xe_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        xe_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        xe_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        xe_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        xe_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        xe_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        xe_4 -= Vector3.new(0, 1, 0)
                    end
                end
                xc_1.AssemblyLinearVelocity = Vector3.zero
                if xe_4.Magnitude > 0 then
                    xc_1.CFrame = xc_1.CFrame + xe_4.Unit * Options.FlySpeed.Value * jI
                end
            end
        end))
        qg.Track(function()
            for k, v in iK do
                v:Disconnect()
            end
            iP()
            iT()
            iX()
            i3()
        end)
    end
    zX_3()
    local function zX_4()
        local yx, yy, yz, yA, yB, yC, yD, yE, yF, yG, Label, yI, yJ, yK
        yI = {}
        yC = {}
        yz = nil
        yK = 0
        yE = false
        yA = 0
        yF = os.clock()
        local MenuGroup = zM.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        yx = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local xw = not CurrentCamera or not pZ(VirtualUser.CaptureController) or not pZ(VirtualUser.ClickButton2)
            if xw then
                return false
            end
            local xw_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not xw_1 then
                return false
            end
            yA += 1
            yF = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. yA)
            end)
            return true
        end
        yG = function(kr)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not kr)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not kr
                end
            end)
            if not kr then
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
        yD = function(kI)
            local xF = kI.ClassName == "ParticleEmitter" or kI.ClassName == "Trail" or kI.ClassName == "Smoke" or kI.ClassName == "Fire" or kI.ClassName == "Sparkles"
            local xJ = if xF then 1 else 0
            local xH = 678 * xJ + 2808 * (1 - xJ)
            local xI = 326 * xJ + 3716 * (1 - xJ)
            if not ((xH * 1323 + xI * 217 + xH * xI) % 16777213 == 1188764) then
                xF = kI.ClassName == "Explosion"
            end
            if not xF then
                xF = kI.ClassName == "Beam"
            end
            if xF then
                if yI[kI] == nil then
                    yI[kI] = kI.Enabled
                end
                pcall(function()
                    kI.Enabled = false
                end)
            end
        end
        yB = function()
            for k, v in yI do
                local xO = k
                local xQ = v
                if xO.Parent then
                    pcall(function()
                        xO.Enabled = xQ
                    end)
                end
            end
            table.clear(yI)
            if yz then
                pcall(function()
                    settings().Rendering.QualityLevel = yz.Quality
                end)
                Lighting.GlobalShadows = yz.Shadows
                Lighting.FogEnd = yz.Fog
                yz = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(kX)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not kX)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(k1)
                if k1 then
                    if not yz then
                        yz = {
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
                        pcall(yD, v)
                    end
                else
                    yB()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        yG(true)
        local ScriptGroup = zM.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            yG(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            yG(true)
        end
        table.insert(yC, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                yx()
            end
        end))
        table.insert(yC, Workspace.DescendantAdded:Connect(function(lk)
            if Toggles.FpsBoost.Value then
                yD(lk)
            end
        end))
        yy = function(lo)
            local x9 = yE
            local ye = if x9 then 1 else 0
            local yc = 2119 * ye + 2044 * (1 - ye)
            local yd = 1968 * ye + 2150 * (1 - ye)
            if not ((yc * 3548 + yd * 1942 + yc * yd) % 16777213 == 15510260) then
                x9 = Library.Unloaded
            end
            if not x9 then
                x9 = not Toggles.AutoReconnect.Value
            end
            if x9 then
                return
            end
            yE = true
            local x8 = yK
            local x9_1 = pcall(function()
                if lo then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not x9_1 then
                yE = false
                if not lo and x8 == yK then
                    task.delay(1.5, function()
                        if x8 == yK then
                            yy(true)
                        end
                    end)
                end
            end
        end
        table.insert(yC, TeleportService.TeleportInitFailed:Connect(function(lG)
            local yg
            if lG == LocalPlayer and yE then
                yE = false
                yg = yK
                task.delay(3, function()
                    if yg == yK then
                        yy(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local yl = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not yl then
                return
            end
            table.insert(yC, yl.ChildAdded:Connect(function(lV)
                if lV.Name == "ErrorPrompt" then
                    yy(false)
                end
            end))
        end)
        yJ = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    yG(true)
                end
                local yo = Toggles.AntiAfk.Value and os.clock() - yF >= 60
                if yo then
                    yx()
                end
                task.wait(1)
            end
        end)
        qg.Track(function()
            yK += 1
            for k, v in yC do
                v:Disconnect()
            end
            pcall(task.cancel, yJ)
            yG(false)
            yB()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    zX_4()
    local function zX_5()
        local zF, zG, zH, zI
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(zM.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/MergeADino")
        local zJ = SaveManager:BuildConfigSection(zM.Settings)
        zI = function(ml, mm)
            local yO_1 = (ml == "Toggle" and Toggles or Options)[mm]
            local yN_2 = type(yO_1) == "table" and yO_1.Type == ml
            return yN_2 and yO_1 or nil
        end
        zG = function(mv, mw)
            local Type = mw.Type
            if Type == "Toggle" then
                return { idx = mv, type = "Toggle", value = mw.Value == true }
            elseif Type == "Slider" then
                return { idx = mv, type = "Slider", value = tostring(mw.Value) }
            elseif Type == "Dropdown" then
                return { idx = mv, type = "Dropdown", multi = mw.Multi == true, value = mw.Value }
            elseif Type == "Input" then
                local yV = mw.Value or ""
                return { idx = mv, type = "Input", text = tostring(yV) }
            elseif Type == "ColorPicker" then
                return { idx = mv, type = "ColorPicker", value = mw.Value:ToHex(), transparency = mw.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = mv,
                    type = "KeyPicker",
                    mode = mw.Mode,
                    key = mw.Value,
                    modifiers = mw.Modifiers,
                    toggled = mw.Toggled
                }
            else
                return nil
            end
        end
        zF = function()
            local y0 = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local y1 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if y1 then
                        local y1_1 = zG(k, v)
                        if y1_1 then
                            y0[#y0 + 1] = y1_1
                        end
                    end
                end
            end
            table.sort(y0, function(mG, mH)
                if mG.type ~= mH.type then
                    return mG.type < mH.type
                end
                return mG.idx < mH.idx
            end)
            return { objects = y0 }
        end
        zH = function(mJ)
            local zh
            zh = nil
            local zi = type(mJ) ~= "table" or type(mJ.idx) ~= "string" or type(mJ.type) ~= "string" or SaveManager.Ignore[mJ.idx]
            if zi then
                return false
            end
            zh = zI(mJ.type, mJ.idx)
            if not zh then
                return false
            end
            local zi_1 = pcall(function()
                if mJ.type == "Input" then
                    if type(mJ.text) ~= "string" then
                        return
                    end
                    zh:SetValue(mJ.text)
                elseif mJ.type == "ColorPicker" then
                    zh:SetValueRGB(Color3.fromHex(mJ.value), mJ.transparency)
                elseif mJ.type == "KeyPicker" then
                    zh:SetValue({ mJ.key, mJ.mode, mJ.modifiers })
                    if mJ.mode == "Toggle" and mJ.toggled ~= nil then
                        zh.Toggled = mJ.toggled
                        zh:Update()
                    end
                else
                    zh:SetValue(mJ.value)
                end
            end)
            return zi_1
        end
        zJ:AddDivider()
        zJ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        zJ:AddButton("Export Config to Clipboard", function()
            local zl_1
            local zk_1
            zk_1, zl_1 = pcall(HttpService.JSONEncode, HttpService, zF())
            if zk_1 then
                local zk_2 = pZ(setclipboard) and setclipboard
                local zm = zk_2
                if not zm then
                    local zk_3 = pZ(toclipboard) and toclipboard
                    zm = zk_3 or nil
                end
                local zk_4 = zm
                local zm_1 = type(zk_4) == "function" and pcall(zk_4, zl_1)
                if zm_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        zJ:AddButton("Import Config from Clipboard Text", function()
            local zu_1
            local zs = Options.SaveManager_ImportSource.Value or ""
            local zs_1
            local zt = tostring(zs):match("^%s*(.-)%s*$")
            if zt == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #zt > 262144 then
                Library:Notify("That config is too large")
                return
            end
            zs_1, zu_1 = pcall(HttpService.JSONDecode, HttpService, zt)
            local zt_1 = not zs_1 or type(zu_1) ~= "table" or type(zu_1.objects) ~= "table"
            if zt_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #zu_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local zs_2 = 0
            for i, v in ipairs(zu_1.objects) do
                if zH(v) then
                    zs_2 += 1
                end
            end
            if zs_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local zu_2 = zs_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(zs_2, zu_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.MergeInterval then
            pD.interval = Options.MergeInterval.Value
        end
        if Toggles.MergeRestore then
            pD.SetRestore(Toggles.MergeRestore.Value)
        end
        if Options.UpgradeTargets then
            qt.SetTargets(Options.UpgradeTargets.Value)
        end
        if Toggles.AutoMerge then
            pD.SetEnabled(Toggles.AutoMerge.Value)
        end
        if Toggles.AutoRebirth then
            qy.SetEnabled(Toggles.AutoRebirth.Value)
        end
        if Toggles.AutoUpgrades then
            qt.SetEnabled(Toggles.AutoUpgrades.Value)
        end
        if Toggles.AutoLock then
            qp.SetEnabled(Toggles.AutoLock.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    zX_5()
end
qH()
