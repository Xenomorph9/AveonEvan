local ta
local tS
local tz
local tg
local sY
local tF
local onChildAdded
local s3
local tL
local sL
local ts
local State
local tf
local sX
local onChildRemoved
local LocalPlayer
local s2
local tK
local sK
local tr
local s8
local sQ
local SetGameSpeed
local te
local sW
local sD
local s1
local sJ
local tP
local sP
local tw
local td
local sV
local tC
local sC
local tj
local s0
local tI
local sI
local GameSpeed
local s6
local tO
local sO
local tv
local sU
local tB
local ti
local s_
local tH
local sH
local to
local s5
local tu
local tb
local sT
local tG
local sG
local tn
local connection
local tM
local sM
local tt
local function fn61(hd)
    local Af = s2(hd)
    if Af == "" then
        return false, "Pick a macro first"
    elseif not sU(delfile) then
        return false, "Your executor cannot delete files"
    else
        local Ag = pcall(delfile, tt .. "/" .. Af .. ".json")
        if not Ag then
            return false, "Failed to delete that macro"
        end
        if State.MacroLabel == Af then
            State.Macro = nil
            State.MacroLabel = "recording buffer"
        end
        return true, "Deleted " .. Af
    end
end
local function fn75(fP)
    local yA = fP == true
    if yA == State.AutoSpeed then
        return
    end
    State.AutoSpeed = yA
    State.SpeedWarned = false
    State.LastSpeedFire = 0
    local yB = yA and "Auto Speed on, holding " .. tostring(State.Speed) .. "x"
    local yA_1 = yB
    local yL = if yA_1 then 1 else 0
    local yJ = 2050 * yL + 310 * (1 - yL)
    local yK = 477 * yL + 2244 * (1 - yL)
    if not ((yJ * 619 + yK * 142 + yJ * yK) % 16777213 == 2314534) then
        yA_1 = "Auto Speed off"
    end
    s6(yA_1)
end
local function fn113(cg)
    if not State.Recording then
        return
    end
    cg.t = math.floor(tf() * 100) / 100
    cg.w = sO()
    local v2 = tH()
    local v3 = cg.c or 0
    cg.m = v2 + v3
    table.insert(State.Steps, cg)
end
local function fn166()
    if State.Macro and #State.Macro > 0 then
        return State.Macro
    end
    return State.Steps
end
local function fn202()
    if not State.AutoReplay or not tI then
        return
    end
    if not tS() then
        State.LastReplayFire = 0
        return
    end
    if os.clock() - State.LastReplayFire < 4 then
        return
    end
    local Ao_1 = State.LastReplayFire == 0
    State.LastReplayFire = os.clock()
    pcall(function()
        tI:FireServer("PlayAgain")
    end)
    if Ao_1 then
        s6("Run lost, pressing Play Again")
    end
end
local function fn218()
    local yU = ts()
    local yV = type(yU) == "table" and #yU
    return yV or 0
end
local function fn225(bm)
    return tonumber(bm:GetAttribute("TurretId"))
end
local function fn232(fU)
    local yM = tonumber(tostring(fU):match("%d+"))
    if yM ~= 1 and yM ~= 2 and yM ~= 3 then
        return
    end
    local yN_2 = State.Speed ~= yM
    State.Speed = yM
    State.SpeedWarned = false
    State.LastSpeedFire = 0
    if yN_2 and State.AutoSpeed then
        s6("Game speed set to " .. yM .. "x")
    end
end
local function fn253(az)
    local uS = sU(az) and az
    td = uS or nil
end
local function fn280(fY)
    local yR = type(fY) == "string" and fY
    local yS = yR or ""
    State.MacroName = yS
end
local function fn311()
    return sC("GameLost") == true
end
local function fn346()
    local u3 = tr()
    if u3 <= 0 then
        return 0
    end
    return math.max(0, tF:GetServerTimeNow() - u3)
end
local function fn356()
    return not tj.Unloaded
end
local function fn382()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local u8 = leaderstats and leaderstats:FindFirstChild("Coins")
    local u7_1 = u8
    if u8 then
        u8 = tonumber(u7_1.Value)
    end
    return u8 or 0
end
local function worker2()
    local AD_1
    local AC_1
    while sD() do
        local AB = 0.3
        if State.Playing then
            AD_1, AC_1 = pcall(sK)
            local AE = AD_1 and tonumber(AC_1)
            AB = AE or 0.5
            if not AD_1 then
                State.Status = "Playback error, retrying"
            end
        end
        task.wait(AB)
    end
end
local function fn404()
    local zv = {}
    for i, v in ipairs(tj.ListMacros()) do
        zv[v] = true
    end
    local zw = 1
    while zv["Macro " .. zw] do
        zw += 1
    end
    return "Macro " .. zw
end
local function fn415(aD)
    if sU(tu) then
        pcall(tu, aD)
    end
end
local function fn427()
    table.clear(State.Steps)
    State.Macro = nil
    State.MacroLabel = "recording buffer"
    tb()
end
local function fn445(dM)
    local Method = State.Method
    if Method == "Wave" then
        local xf_1 = sO()
        return xf_1 >= (dM.w or 0)
    elseif Method == "Money" then
        local xf_2 = tH()
        return xf_2 >= (dM.m or 0)
    elseif Method == "Hybrid" then
        local xe_1 = tf()
        local xg_3 = xe_1 >= (dM.t or 0)
        if xg_3 then
            local xe_2 = tH()
            xg_3 = xe_2 >= (dM.m or 0)
        end
        return xg_3
    else
        local xe_3 = tf()
        return xe_3 >= (dM.t or 0)
    end
end
local function fn473(dU)
    local Method = State.Method
    if Method == "Wave" then
        local xj_1 = dU.w
        local xo = if xj_1 then 1 else 0
        local xm = 1293 * xo + 3259 * (1 - xo)
        local xn = 3839 * xo + 2128 * (1 - xo)
        if not ((xm * 1968 + xn * 3314 + xm * xn) % 16777213 == 3453684) then
            xj_1 = 0
        end
        return "wave " .. tostring(xj_1)
    elseif Method == "Money" then
        local floor = math.floor
        local xk_1 = dU.m or 0
        return "$" .. tostring(floor(xk_1))
    elseif Method == "Hybrid" then
        local xi_1 = s5(dU.t)
        local floor = math.floor
        local xk_2 = dU.m or 0
        return xi_1 .. " and $" .. tostring(floor(xk_2))
    else
        return s5(dU.t)
    end
end
local function fn503(bj)
    return bj:GetAttribute("OwnerUserId") == LocalPlayer.UserId
end
local function onChanged()
    State.RoundMark = os.clock()
    tb()
    State.SpeedWarned = false
    if State.Recording then
        table.clear(State.Steps)
        s6("New run started, recording from scratch")
    elseif State.Playing then
        s6("New run started, macro reset to step 1")
    end
end
local function fn540()
    return te
end
local function fn545(fL)
    local yx = fL == true
    if yx == State.AutoReplay then
        return
    end
    State.AutoReplay = yx
    local yx_1 = yx and "Auto Replay on, lost runs restart automatically" or "Auto Replay off"
    s6(yx_1)
end
local function fn604(bF, bG)
    return (Vector2.new(bF.X, bF.Z) - Vector2.new(bG.X, bG.Z)).Magnitude
end
local function fn613(aH)
    if not sH then
        return nil
    end
    local uZ = sH:FindFirstChild(aH)
    return uZ and uZ.Value or nil
end
local function fn616()
    local u1 = tonumber(sC("RoundStartedAt")) or 0
    return u1
end
local function fn636(aB)
    local uV = sU(aB) and aB
    tu = uV or nil
end
local function fn644(gj)
    local ze = gj or ""
    local zf = tostring(ze):gsub("[^%w%s%-_]", ""):gsub("^%s+", ""):gsub("%s+$", "")
    return zf
end
local function fn663()
    State.Cursor = 1
    State.Attempts = 0
    State.StepStartedAt = 0
    State.Finished = false
end
local function fn697(Z)
    return type(Z) == "function"
end
local function fn727(b_)
    if b_.c and b_.c > 0 then
        return b_.c
    elseif b_.act == "Place" then
        local vP_1 = sJ(b_.id)
        local vQ = vP_1 and vP_1:FindFirstChild("Cost")
        local vP_2 = vQ
        if vQ then
            vQ = vP_2.Value
        end
        local vP_3 = vQ
        local vU = if vP_3 then 1 else 0
        local vS = 2543 * vU + 597 * (1 - vU)
        local vT = 1399 * vU + 2310 * (1 - vU)
        if not ((vS * 1226 + vT * 1908 + vS * vT) % 16777213 == 9344667) then
            vP_3 = 0
        end
        return vP_3
    else
        return 0
    end
end
local function fn735()
    local wK = sG()
    if wK == s0 then
        return
    end
    for i, v in ipairs(sW) do
        v:Disconnect()
    end
    table.clear(sW)
    sV()
    s0 = wK
    if not wK then
        return
    end
    table.insert(sW, wK.ChildAdded:Connect(onChildAdded))
    table.insert(sW, wK.ChildRemoved:Connect(onChildRemoved))
    for i, child in ipairs(wK:GetChildren()) do
        local wK_1 = child:IsA("Model") and tP(child)
        if wK_1 then
            tM(child)
        end
    end
end
local function fn744(W)
    local uJ = typeof(cloneref) == "function" and typeof(W) == "Instance"
    if uJ then
        return cloneref(W)
    end
    return W
end
local function fn767()
    sX:Disconnect()
end
local function fn801(aw, ax)
    local uO = sU(td) and type(aw) == "string"
    if uO and aw ~= "" then
        local uO_1 = ax or 5
        pcall(td, aw, uO_1)
    end
end
local function fn808(fg)
    if type(fg) ~= "string" then
        return
    end
    for i, v in ipairs(to) do
        if v == fg then
            local yd = State.Method ~= fg
            State.Method = fg
            tb()
            if yd then
                s6("Macro method set to " .. fg .. ", playback restarted at step 1")
            end
            return
        end
    end
end
local function fn820()
    return tF:FindFirstChild("PlacedTurrets")
end
local function fn831(a4)
    if not tC then
        return nil
    end
    for i, child in ipairs(tC:GetChildren()) do
        local Id = child:FindFirstChild("Id")
        if Id and Id.Value == a4 then
            return child
        end
    end
    return nil
end
local function fn845(ej)
    local xC = sG()
    if not xC then
        return 0
    end
    local xD = 0
    for i, child in ipairs(xC:GetChildren()) do
        local xC_1 = child:IsA("Model") and tP(child) and tw(child) == ej
        if xC_1 then
            xD += 1
        end
    end
    return xD
end
local function fn864(fy)
    local yr = fy == true
    if yr == State.Playing then
        return
    end
    State.Playing = yr
    if yr then
        tb()
        tO()
        local yr_1 = ts()
        local ys_1 = type(yr_1) == "table" and #yr_1
        local yr_2 = ys_1 or 0
        if yr_2 == 0 then
            s6("Play Macro is on but there is nothing to play, record or load a macro", 6)
        else
            s6(string.format("Playing %s, %d actions on the %s method", State.MacroLabel, yr_2, State.Method), 6)
        end
    else
        local yr_3 = ts()
        local ys_3 = type(yr_3) == "table" and #yr_3
        local yr_4 = ys_3 or 0
        s6(string.format("Playback stopped at step %d/%d", math.min(State.Cursor, yr_4), yr_4))
    end
end
local function onOnClientEvent(hC, hD)
    local Ar = not hC
    if Ar ~= false then
        Ar = State.Playing
    end
    if Ar then
        local Ar_1 = hD or "no reason given"
        s6("Placement refused: " .. tostring(Ar_1), 6)
    end
end
local function fn882()
    local Ai = not SetGameSpeed
    local Aj = not State.AutoSpeed
    local An = if Aj then 1 else 0
    local Al = 3199 * An + 474 * (1 - An)
    local Am = 2403 * An + 566 * (1 - An)
    if not ((Al * 2514 + Am * 3878 + Al * Am) % 16777213 == 8271104) then
        Aj = Ai
    end
    if Aj then
        return
    end
    local Ai_1 = GameSpeed and tonumber(GameSpeed.Value)
    if (Ai_1 or nil) == State.Speed then
        return
    end
    local Ai_3 = State.Speed == 3 and LocalPlayer:GetAttribute("Owns3xGameSpeed") ~= true
    if Ai_3 then
        if not State.SpeedWarned then
            State.SpeedWarned = true
            s6("3x speed needs the game pass, holding the speed you already have", 6)
        end
        return
    end
    if os.clock() - State.LastSpeedFire < 1.5 then
        return
    end
    State.LastSpeedFire = os.clock()
    pcall(function()
        SetGameSpeed:FireServer(State.Speed)
    end)
end
local function fn896()
    for i, v in ipairs(sW) do
        v:Disconnect()
    end
    table.clear(sW)
    sV()
end
local function fn914()
    if State.Playing then
        return State.Status
    elseif State.Recording then
        local format = string.format
        local x8 = State.MacroName ~= "" and State.MacroName or "unsaved"
        return format("Recording %s - %d actions - wave %d - %s", x8, #State.Steps, sO(), s5(tf()))
    else
        local x6_2 = ts()
        local x7_2 = type(x6_2) == "table" and #x6_2
        local x6_3 = x7_2 or 0
        return string.format("Idle - %s (%d actions) - wave %d", State.MacroLabel, x6_3, sO())
    end
end
local function fn989()
    local xW = ts()
    local xX = type(xW) ~= "table" or #xW == 0
    if xX then
        State.Status = "Play Macro on, no macro to play"
        return 0.4
    end
    local xX_1 = tr() <= 0 or tS()
    if xX_1 then
        State.Status = "Waiting for a run to start"
        return 0.4
    end
    local xX_2 = xW[State.Cursor]
    if not xX_2 then
        State.Status = string.format("Macro finished (%d/%d)", #xW, #xW)
        if not State.Finished then
            State.Finished = true
            s6(string.format("Macro finished, all %d actions played", #xW))
        end
        return 0.5
    elseif not tB(xX_2) then
        State.Status = string.format("Step %d/%d %s - waiting for %s", State.Cursor, #xW, tL(xX_2), sL(xX_2))
        return 0.2
    else
        local xY = ti(xX_2)
        local xZ = xY > 0 and tH() < xY
        if xZ then
            State.Status = string.format("Step %d/%d %s - need $%d", State.Cursor, #xW, tL(xX_2), math.floor(xY))
            return 0.3
        end
        if State.StepStartedAt == 0 then
            State.StepStartedAt = os.clock()
        end
        State.Status = string.format("Step %d/%d %s", State.Cursor, #xW, tL(xX_2))
        local x2 = if sI(xX_2) then 1 else 0
        if x2 == 1 then
            State.Cursor = State.Cursor + 1
            State.Attempts = 0
            State.StepStartedAt = 0
            return 0.1
        end
        State.Attempts = State.Attempts + 1
        local xY_1 = os.clock() - State.StepStartedAt > sY
        if State.Attempts >= s1 and xY_1 then
            State.Status = string.format("Skipped step %d/%d %s", State.Cursor, #xW, tL(xX_2))
            s6(string.format("Skipped step %d/%d, %s would not go through", State.Cursor, #xW, tL(xX_2)), 6)
            State.Cursor = State.Cursor + 1
            State.Attempts = 0
            State.StepStartedAt = 0
            return 0.3
        end
        return 0.35
    end
end
local function fn1005()
    gethui = tG
end
local function fn1029(a1)
    local vf = tonumber(a1) or 0
    local vg = math.max(0, math.floor(vf))
    return string.format("%02d:%02d", vg // 60, vg % 60)
end
local function fn1083()
    local zd = if not s8() then 1 else 0
    if zd == 1 then
        return false
    end
    local y8 = pcall(function()
        for i, v in ipairs({ "OuroborosHub", tz, tt }) do
            if not isfolder(v) then
                makefolder(v)
            end
        end
    end)
    local y9 = y8 and isfolder(tt)
    return y9
end
local function fn1084()
    if coroutine.status(sQ) ~= "dead" then
        task.cancel(sQ)
    end
end
local function fn1098()
    return State.MacroLabel
end
local function fn1120()
    local y_ = sU(writefile) and sU(readfile) and sU(listfiles) and sU(isfolder) and sU(makefolder)
    return y_
end
local function fn1151(bb)
    local vr = sJ(bb)
    local vs = vr and vr.Name
    local vr_1 = vs or "Turret " .. tostring(bb)
    return vr_1
end
local function worker()
    while true do
        local Az = if sD() then 1 else 0
        if Az == 1 then
            tO()
            sT()
            s_()
            task.wait(0.5)
            continue
        end
        break
    end
end
local function fn1157()
    for k in pairs(ta) do
        tv(k)
    end
    table.clear(ta)
end
local function fn1185(fp)
    local ym_1
    local yl = fp == true
    local yl_1
    if yl == State.Recording then
        return
    end
    State.Recording = yl
    if yl then
        table.clear(State.Steps)
        State.Macro = nil
        State.MacroLabel = "recording buffer"
        tO()
        s6("Recording started, play the run normally")
    else
        if #State.Steps == 0 then
            s6("Recording stopped with nothing to save")
            return
        end
        ym_1, yl_1 = tj.SaveMacro()
        s6(yl_1, 6)
        if ym_1 then
            s3(State.MacroLabel)
        end
    end
end
local function fn1195()
    local u5 = tonumber(sC("CurrentWave")) or 0
    return u5
end
local function fn1201(b7)
    if not b7 then
        return "done"
    elseif b7.act == "Place" then
        return "Place " .. tn(b7.id)
    elseif b7.act == "Upgrade" then
        local vV = tn(b7.id)
        local vW = b7.lvl or "?"
        return "Upgrade " .. vV .. " to " .. tostring(vW)
    elseif b7.act == "Sell" then
        return "Sell " .. tn(b7.id)
    else
        return tostring(b7.act)
    end
end
local function fn1228(c8)
    local wD = ta[c8]
    if not wD then
        return
    end
    local wE = os.clock() - State.RoundMark
    local wF = State.Recording and not tS() and wE > 2 and tr() > 0
    if wF then
        sP({ act = "Sell", id = wD.id, c = 0, x = wD.position.X, y = wD.position.Y, z = wD.position.Z })
    end
    tv(c8)
end
local function fn1253()
    return tg()
end
local function fn1270()
    connection:Disconnect()
end
local function fn1273()
    local zj_1
    local zi_1
    local zh = {}
    if not sM() then
        return zh
    end
    zi_1, zj_1 = pcall(listfiles, tt)
    local zk = not zi_1
    local zo = if zk then 1 else 0
    local zm = 2470 * zo + 2108 * (1 - zo)
    local zn = 3328 * zo + 697 * (1 - zo)
    if not ((zm * 3698 + zn * 359 + zm * zn) % 16777213 == 1771759) then
        zk = type(zj_1) ~= "table"
    end
    if zk then
        return zh
    end
    for i, v in ipairs(zj_1) do
        local zi_2 = tostring(v):match("([^/\\]+)%.json$")
        if zi_2 then
            table.insert(zh, zi_2)
        end
    end
    table.sort(zh)
    return zh
end
local function fn1293(cm)
    local v5 = ta[cm]
    if not v5 then
        return
    end
    for i, v in ipairs(v5.connections) do
        v:Disconnect()
    end
    ta[cm] = nil
end
local function fn1312()
    if coroutine.status(tK) ~= "dead" then
        task.cancel(tK)
    end
end
sC = nil
sD = nil
LocalPlayer = nil
sG = nil
sH = nil
sI = nil
sJ = nil
sK = nil
sL = nil
sM = nil
sO = nil
sP = nil
sQ = nil
State = nil
sT = nil
sU = nil
sV = nil
sW = nil
sX = nil
sY = nil
s_ = nil
s0 = nil
s1 = nil
s2 = nil
s3 = nil
connection = nil
s5 = nil
s6 = nil
s8 = nil
ta = nil
tb = nil
td = nil
te = nil
tf = nil
tg = nil
ti = nil
tj = nil
onChildAdded = nil
tn = nil
local Players, sF, sN, sS, sZ, s7, s9, tc, th, tk, GuiService
to = nil
GameSpeed = nil
tr = nil
ts = nil
tt = nil
tu = nil
tv = nil
tw = nil
SetGameSpeed = nil
tz = nil
tB = nil
tC = nil
onChildRemoved = nil
tF = nil
tG = nil
tH = nil
tI = nil
tK = nil
tL = nil
tM = nil
tO = nil
tP = nil
tS = nil
local HttpService, VirtualUser, tA, UserInputService, RunService, tN, tQ, tR, PlaceTurret, tU, tV, tW, tZ, t_, t0, t3, t5
local t9 = if not game:IsLoaded() then 1 else 0
if t9 == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, te, s7, sZ, tU, sN, LocalPlayer, tG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local tY = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
if (not tY and tY and (not tY or not tU) or Players and s7 and (not tY or tU) or (not tY and tY and (not s7 and not tU) or (not tU or not tY or not Players and tU))) and ((not s7 and tY or not tY and tU or tY and s7 and (s7 and s7)) and (not s7 and tU or not s7 and not tY or not s7 and not tY and (not Players and not tU))) or not ((not tY and tY and (not tY or not tU) or Players and s7 and (not tY or tU) or (not tY and tY and (not s7 and not tU) or (not tU or not tY or not Players and tU))) and ((not s7 and tY or not tY and tU or tY and s7 and (s7 and s7)) and (not s7 and tU or not s7 and not tY or not s7 and not tY and (not Players and not tU)))) then
    te = game:GetService("CoreGui")
    s7 = game:GetService("TeleportService")
    sZ = game:GetService("Lighting")
    game:GetService("CollectionService")
    sN = game:GetService("Workspace")
else
    sN = game:GetService("CoreGui")
    sZ = game:GetService("TeleportService")
    s7 = game:GetService("Lighting")
    te = game:GetService("CollectionService")
    game:GetService("Workspace")
end
LocalPlayer = Players.LocalPlayer
LocalPlayer:WaitForChild("PlayerGui")
local tX = "OuroborosEndlessTowerDefense"
tG = fn540
if getgenv then
    getgenv().gethui = tG
end
tj, tZ, tF, tz, tt, to, th, tc, s1, sY, State, sH, PlaceTurret, tQ, tI, tC, SetGameSpeed, GameSpeed, t0, td, tu, ta, s0, sW, sX, t_, tW, sF, tV, sU, sD, s6, s3, sC, tr, tf, sO, tS, tH, s5, sJ, tn, sG, tP, tw, tk, sS, tR, ti, tL, ts, sP, tv, sV, tM, onChildAdded, onChildRemoved, tO, tb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tU = 58
repeat
    local t1 = (tU * 7 + 2) % 29 + 1
    if t1 <= 15 then
        if t1 <= 8 then
            if t1 <= 4 then
                if t1 <= 2 then
                    if t1 <= 1 then
                        if (tU * 3 + 1) * 21 % 4 == ((tU * 3 + 1) * 21 + 4) % 4 then
                            tO = fn735
                            tj.Track(fn896)
                            tb = fn663
                        else
                            tj = fn735
                            tb.Track(fn896)
                            tO = fn663
                        end
                        tU = (tU + 83) % 116
                    else
                        local t2_1 = (vector.create((tU * 5 + 7) % 11 + 1, (tU * 7 + 10) % 13 + 1, (tU * 13 + 16) % 17 + 1))
                        t3 = (vector.create((tU * 6 + 8) % 11 + 1, (tU * 6 + 4) % 13 + 1, (tU * 1 + 13) % 17 + 1))
                        local t4_1 = (vector.create((tU * 1 + 7) % 11 + 1, (tU * 3 + 10) % 13 + 1, (tU * 9 + 16) % 17 + 1))
                        t5 = (vector.create((tU * 2 + 5) % 5 + 1, (tU * 1 + 6) % 7 + 1, (tU * 2 + 6) % 9 + 1))
                        if vector.dot(vector.cross(t2_1, (vector.cross(t3, t4_1))), t5) == vector.dot(t3 * vector.dot(t2_1, t4_1) - t4_1 * vector.dot(t2_1, t3), t5) + 2 then
                            sH = t_
                        else
                            t_ = sH
                        end
                        tU = (tU + 25) % 116
                    end
                elseif t1 <= 3 then
                    local t2_2 = (vector.create((tU * 2 + 1) % 11 + 1, (tU * 1 + 1) % 13 + 1, (tU * 11 + 2) % 17 + 1))
                    t3 = (vector.create((tU * 3 + 3) % 11 + 1, (tU * 8 + 13) % 13 + 1, (tU * 9 + 11) % 17 + 1))
                    local t4_2 = (vector.create((tU * 7 + 6) % 11 + 1, (tU * 6 + 6) % 13 + 1, (tU * 3 + 10) % 17 + 1))
                    t5 = (vector.create((tU * 5 + 7) % 5 + 1, (tU * 4 + 2) % 7 + 1, (tU * 1 + 1) % 9 + 1))
                    if vector.dot(vector.cross(t2_2, (vector.cross(t3, t4_2))), t5) == vector.dot(t3 * vector.dot(t2_2, t4_2) - t4_2 * vector.dot(t2_2, t3), t5) + 1 then
                        pcall(fn1005)
                        sF = function(v)
                            local ur
                            local ut
                            local us
                            ur = nil
                            us = nil
                            ut = nil
                            local uu = v ~= ""
                            local uv = type(v) == "string" and uu
                            assert(uv, "A namespace is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            ur = getgenv()
                            assert(type(ur) == "table", "getgenv did not return a table")
                            local uu_2 = ur[v]
                            if uu_2 ~= nil then
                                local uv_2 = type(uu_2) == "table" and type(uu_2.Unload) == "function"
                                assert(uv_2, "Namespace is occupied")
                                uu_2.Unload()
                                assert(ur[v] == nil, "Previous instance did not release its namespace")
                            end
                            us = {}
                            ut = { State = {}, Unloaded = false }
                            ut.Track = function(B)
                                assert(type(B) == "function", "Cleanup must be callable")
                                if ut.Unloaded then
                                    B()
                                else
                                    table.insert(us, B)
                                end
                                return B
                            end
                            ut.Unload = function()
                                local uh_2
                                local ug_2
                                if ut.Unloaded then
                                    return
                                end
                                ut.Unloaded = true
                                local ue = {}
                                local ul = #us
                                local uk = -1
                                while false and ul <= 1 or true and ul >= 1 do
                                    local um = ul
                                    local uf_2 = table.remove(us, um)
                                    ug_2, uh_2 = pcall(uf_2)
                                    if not ug_2 then
                                        table.insert(ue, tostring(uh_2))
                                    end
                                    ul += uk
                                end
                                table.clear(ut.State)
                                if #ue > 0 then
                                    error("Cleanup incomplete: " .. table.concat(ue, "; "), 0)
                                end
                                if ur[v] == ut then
                                    ur[v] = nil
                                end
                            end
                            ur[v] = ut
                            return ut
                        end
                    else
                        pcall(fn1005)
                        tW = function(v)
                            local ur
                            local ut
                            local us
                            ur = nil
                            us = nil
                            ut = nil
                            local uu = v ~= ""
                            local uv = type(v) == "string" and uu
                            assert(uv, "A namespace is required")
                            assert(type(getgenv) == "function", "getgenv is unavailable")
                            ur = getgenv()
                            assert(type(ur) == "table", "getgenv did not return a table")
                            local uu_1 = ur[v]
                            if uu_1 ~= nil then
                                local uv_1 = type(uu_1) == "table" and type(uu_1.Unload) == "function"
                                assert(uv_1, "Namespace is occupied")
                                uu_1.Unload()
                                assert(ur[v] == nil, "Previous instance did not release its namespace")
                            end
                            us = {}
                            ut = { State = {}, Unloaded = false }
                            ut.Track = function(B)
                                assert(type(B) == "function", "Cleanup must be callable")
                                if ut.Unloaded then
                                    B()
                                else
                                    table.insert(us, B)
                                end
                                return B
                            end
                            ut.Unload = function()
                                local uh_1
                                local ug_1
                                if ut.Unloaded then
                                    return
                                end
                                ut.Unloaded = true
                                local ue = {}
                                local ul = #us
                                local uk = -1
                                while false and ul <= 1 or true and ul >= 1 do
                                    local um = ul
                                    local uf_1 = table.remove(us, um)
                                    ug_1, uh_1 = pcall(uf_1)
                                    if not ug_1 then
                                        table.insert(ue, tostring(uh_1))
                                    end
                                    ul += uk
                                end
                                table.clear(ut.State)
                                if #ue > 0 then
                                    error("Cleanup incomplete: " .. table.concat(ue, "; "), 0)
                                end
                                if ur[v] == ut then
                                    ur[v] = nil
                                end
                            end
                            ur[v] = ut
                            return ut
                        end
                    end
                    tU = (tU + 112) % 116
                else
                    if (tU * 2 + 7) * 7 % 3 == ((tU * 2 + 7) * 7 + 7) % 3 then
                        tI = function(O, P)
                            local uE = type(O) == "table" and type(O.Track) == "function"
                            assert(uE, "FeatureAPI required")
                            local uE_2 = type(P) == "table" and type(P.OnUnload) == "function"
                            assert(uE_2, "UI library required")
                            assert(type(P.Unload) == "function", "UI unload required")
                            O.Track(function()
                                if not P.Unloaded then
                                    P:Unload()
                                end
                            end)
                            P:OnUnload(function()
                                O.Unload()
                            end)
                        end
                    else
                        sF = function(O, P)
                            local uE = type(O) == "table" and type(O.Track) == "function"
                            assert(uE, "FeatureAPI required")
                            local uE_1 = type(P) == "table" and type(P.OnUnload) == "function"
                            assert(uE_1, "UI library required")
                            assert(type(P.Unload) == "function", "UI unload required")
                            O.Track(function()
                                if not P.Unloaded then
                                    P:Unload()
                                end
                            end)
                            P:OnUnload(function()
                                O.Unload()
                            end)
                        end
                    end
                    tU = (tU + 112) % 116
                end
            elseif t1 <= 6 then
                if t1 <= 5 then
                    if tC and tC and (not sC or not sV) or (sC and not sC or (sV or sV)) or (not sC and not sV or sV and sV) and (tC or not sV or (not sC or sC)) or not (tC and tC and (not sC or not sV) or (sC and not sC or (sV or sV)) or (not sC and not sV or sV and sV) and (tC or not sV or (not sC or sC))) then
                        tj = tW(tX)
                    else
                        tX = tj(tW)
                    end
                    tU = (tU + 54) % 116
                else
                    if (not tH or not tH or (not onChildAdded or not tv)) and (not s0 and not tH and (tv or not tH)) and not ((not tH or not tH or (not onChildAdded or not tv)) and (not s0 and not tH and (tv or not tH))) then
                        onChildAdded = fn744
                    else
                        tV = fn744
                    end
                    tU = (tU + 25) % 116
                end
            elseif t1 <= 7 then
                if ((tQ or not tQ) and (not t_ and not t_) or (tQ or not tQ) and (sC or not GameSpeed) or ((t_ or td) and (tQ and GameSpeed) or t_ and not t_ and (not tQ or not td))) and not ((tQ or not tQ) and (not t_ and not t_) or (tQ or not tQ) and (sC or not GameSpeed) or ((t_ or td) and (tQ and GameSpeed) or t_ and not t_ and (not tQ or not td))) then
                    ti = fn697
                else
                    sU = fn697
                end
                tU = (tU + 112) % 116
            else
                if (tU * 3 + 6) * 21 % 4 == ((tU * 3 + 6) * 21 + 8) % 4 then
                    sD = fn356
                else
                    tR = fn356
                end
                tU = (tU + 25) % 116
            end
        elseif t1 <= 12 then
            if t1 <= 10 then
                if t1 <= 9 then
                    local t2_3 = {
                        "avxokjg",
                        "cdeyn",
                        "vtw",
                        "mldjqxrhai",
                        "mcivhy",
                        "hnk",
                        "dbjqfzfhzd",
                        "xbkpzcsmvjg",
                        "wnypcjaa",
                        "hoytuldk",
                        "iody",
                        "badvqqc"
                    }
                    local G2 = tU
                    t3 = t2_3[G2 % 12 + 1]
                    if t3:len() >= t3:reverse():rep(G2 % 3 + 2):len() then
                        tY = tZ(tV)
                    else
                        tZ = tV(tY)
                    end
                    tU = (tU + 112) % 116
                else
                    local Ge = bit32.rrotate(bit32.bxor(bit32.lrotate(tU, 15), string.byte(tostring(sX))), 21)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ge, 1647080253), 4005514847), (bit32.bxor(bit32.band(Ge, 2647887042), 2938170449))), 4005514847), 2938170449) == Ge then
                        tF = tV(sN)
                        tz = "OuroborosHub/EndlessTowerDefense"
                        tt = tz .. "/Macros"
                        to = { "Time", "Wave", "Money", "Hybrid" }
                    else
                        tt = to(tV)
                        tF = "OuroborosHub/EndlessTowerDefense"
                        sN = tF .. "/Macros"
                        tz = { "Hybrid", "Money", "Time", "Wave" }
                    end
                    tU = (tU + 25) % 116
                end
            elseif t1 <= 11 then
                if tU * 90763749 + 3 + 3 >= tU * 90763749 + 3 + 3 + 4 then
                    sY = 4
                    th = 2.5
                    tc = 3
                    s1 = 6
                else
                    th = 4
                    tc = 2.5
                    s1 = 3
                    sY = 6
                end
                tU = (tU + 112) % 116
            else
                if (tU * 2 + 2) * 4 % 3 == ((tU * 2 + 2) * 4 + 0) % 3 then
                    State = tj.State
                else
                    tj = State.State
                end
                tU = (tU + 25) % 116
            end
        elseif t1 <= 14 then
            if t1 <= 13 then
                if not tz and not tz or s0 and not s0 or (tz or not s0) and (tz and s0) or not (not tz and not tz or s0 and not s0 or (tz or not s0) and (tz and s0)) then
                    State.Recording = false
                    State.Playing = false
                    State.AutoReplay = false
                    State.Method = "Time"
                    State.MacroName = ""
                    State.Steps = {}
                    State.Macro = nil
                    State.MacroLabel = "recording buffer"
                    State.Cursor = 1
                    State.Attempts = 0
                    State.StepStartedAt = 0
                    State.Status = "Idle"
                    State.LastReplayFire = 0
                    State.RoundMark = 0
                    State.AutoSpeed = false
                    State.Speed = 1
                    State.LastSpeedFire = 0
                    State.SpeedWarned = false
                    State.Finished = false
                    sH = tZ:WaitForChild("GameState", 10)
                else
                    sH.Recording = false
                    sH.Playing = false
                    sH.AutoReplay = false
                    sH.Method = "Time"
                    sH.MacroName = ""
                    sH.Steps = {}
                    sH.Macro = nil
                    sH.MacroLabel = "recording buffer"
                    sH.Cursor = 1
                    sH.Attempts = 0
                    sH.StepStartedAt = 0
                    sH.Status = "Idle"
                    sH.LastReplayFire = 0
                    sH.RoundMark = 0
                    sH.AutoSpeed = false
                    sH.Speed = 1
                    sH.LastSpeedFire = 0
                    sH.SpeedWarned = false
                    sH.Finished = false
                    tZ = State:WaitForChild("GameState", 10)
                end
                tU = (tU + 54) % 116
            else
                if (tU * 3 + 4) * 17 % 4 == ((tU * 3 + 4) * 17 + 4) % 4 then
                    PlaceTurret = tZ:WaitForChild("PlaceTurret", 10)
                else
                    tZ = PlaceTurret:WaitForChild("PlaceTurret", 10)
                end
                tU = (tU + 112) % 116
            end
        else
            if tU * 9995527 + 6 + 7 <= tU * 9995527 + 6 + 7 + 3 then
                tQ = tZ:WaitForChild("TurretAction", 10)
                tI = tZ:WaitForChild("GameOverAction", 10)
                tC = tZ:WaitForChild("TurretClientStats", 10)
                SetGameSpeed = tZ:WaitForChild("SetGameSpeed", 10)
            else
                tZ = SetGameSpeed:WaitForChild("TurretAction", 10)
                tQ = SetGameSpeed:WaitForChild("GameOverAction", 10)
                tI = SetGameSpeed:WaitForChild("TurretClientStats", 10)
                tC = SetGameSpeed:WaitForChild("SetGameSpeed", 10)
            end
            tU = (tU + 83) % 116
        end
    elseif t1 <= 22 then
        if t1 <= 19 then
            if t1 <= 17 then
                if t1 <= 16 then
                    if (not tW or tP or tr and not tW or (not tP or not td or (not SetGameSpeed or td))) and ((tW and not tV or not tW and not tP) and ((td or td) and (tr and tV))) or not ((not tW or tP or tr and not tW or (not tP or not td or (not SetGameSpeed or td))) and ((tW and not tV or not tW and not tP) and ((td or td) and (tr and tV)))) then
                        GameSpeed = tZ:WaitForChild("GameSpeed", 10)
                    else
                        tZ = GameSpeed:WaitForChild("GameSpeed", 10)
                    end
                    tU = (tU + 54) % 116
                else
                    local t2_4 = {
                        "ilpzr",
                        "lfukekeo",
                        "farperjafjq",
                        "quyeuyez",
                        "evhlvbsg",
                        "cumsgmlou",
                        "hcoedaoq",
                        "tfgdy",
                        "tknkiyjmgdr",
                        "wzoev",
                        "rxz"
                    }
                    if t2_4[(tU * 51 + 90) % 11 + 1] < t2_4[(tU * 51 + 90) % 11 + 1] then
                        tZ = t0:WaitForChild("PlaceTurretResult", 10)
                    else
                        t0 = tZ:WaitForChild("PlaceTurretResult", 10)
                    end
                    tU = (tU + 25) % 116
                end
            elseif t1 <= 18 then
                if tU * 59483521 + 7 + 7 <= tU * 59483521 + 7 + 7 + 3 then
                    td = nil
                    s6 = fn801
                    tj.SetNotifier = fn253
                    tu = nil
                else
                    s6 = nil
                    tj = fn801
                    tu.SetNotifier = fn253
                    td = nil
                end
                tU = (tU + 54) % 116
            else
                local Gb = bit32.rrotate(bit32.bxor(bit32.lrotate(tU, 30), string.byte(tostring(tj))), 9)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Gb, 969153603), 166741540), (bit32.bxor(bit32.band(Gb, 3325813692), 3963650586))), 166741540), 3963650586) == Gb then
                    tj.SetMacroListChanged = fn636
                    s3 = fn415
                    sC = fn613
                else
                    sC.SetMacroListChanged = fn636
                    tj = fn415
                    s3 = fn613
                end
                tU = (tU + 83) % 116
            end
        elseif t1 <= 21 then
            if t1 <= 20 then
                if tU * 88021147 + 8 + 7 <= tU * 88021147 + 8 + 7 + 1 then
                    tr = fn616
                    tf = fn346
                    sO = fn1195
                else
                    sO = fn616
                    tr = fn346
                    tf = fn1195
                end
                tU = (tU + 25) % 116
            else
                if (tU * 1 + 4) * 21 % 4 == ((tU * 1 + 4) * 21 + 12) % 4 then
                    tS = fn311
                    tH = fn382
                    s5 = fn1029
                    sJ = fn831
                else
                    s5 = fn311
                    sJ = fn382
                    tH = fn1029
                    tS = fn831
                end
                tU = (tU + 112) % 116
            end
        else
            local GY = bit32.rrotate(bit32.bxor(bit32.lrotate(tU, 16), string.byte(tostring(SetGameSpeed))), 26)
            if bit32.bxor(bit32.lrotate(bit32.bxor(GY, 649471343), 4), 1801606898) == bit32.lrotate(GY, 4) then
                tn = fn1151
                sG = fn820
            else
                sG = fn1151
                tn = fn820
            end
            tU = (tU + 54) % 116
        end
    elseif t1 <= 26 then
        if t1 <= 24 then
            if t1 <= 23 then
                local G7 = bit32.rrotate(bit32.bxor(bit32.lrotate(tU, 30), string.byte(tostring(s5))), 6)
                if bit32.bxor(bit32.lrotate(bit32.bxor(G7, 2473428498), 12), 3630246198) == bit32.lrotate(G7, 12) then
                    tP = fn503
                else
                    sX = fn503
                end
                tU = (tU + 54) % 116
            else
                if tc and tW or (not tW or tP) or (tW and tU or not tC and tc) or not (tc and tW or (not tW or tP) or (tW and tU or not tC and tc)) then
                    tw = fn225
                    tk = function(bo)
                        local vv_2
                        local vu_5, vu_7
                        vu_5, vv_2 = pcall(function()
                            return bo:GetPivot().Position
                        end)
                        if not vu_5 then
                            return nil
                        end
                        local vu_6 = RaycastParams.new()
                        vu_6.FilterType = Enum.RaycastFilterType.Exclude
                        local vw = { bo, LocalPlayer.Character }
                        local vw_4
                        local vx = sG()
                        local vx_4
                        if vx then
                            table.insert(vw, vx)
                        end
                        local ActiveEnemies = tF:FindFirstChild("ActiveEnemies")
                        if ActiveEnemies then
                            table.insert(vw, ActiveEnemies)
                        end
                        vu_6.FilterDescendantsInstances = vw
                        local vw_3 = tF:Raycast(vv_2 + Vector3.new(0, 6, 0), Vector3.new(0, -60, 0), vu_6)
                        if vw_3 then
                            return vw_3.Position
                        end
                        vu_7, vw_4, vx_4 = pcall(function()
                            return bo:GetBoundingBox()
                        end)
                        if vu_7 and vw_4 and vx_4 then
                            return Vector3.new(vv_2.X, vw_4.Position.Y - vx_4.Y / 2, vv_2.Z)
                        end
                        return vv_2
                    end
                else
                    tk = fn225
                    tw = function(bo)
                        local vv_1
                        local vu_1, vu_3
                        vu_1, vv_1 = pcall(function()
                            return bo:GetPivot().Position
                        end)
                        if not vu_1 then
                            return nil
                        end
                        local vu_2 = RaycastParams.new()
                        vu_2.FilterType = Enum.RaycastFilterType.Exclude
                        local vw = { bo, LocalPlayer.Character }
                        local vw_2
                        local vx = sG()
                        local vx_2
                        if vx then
                            table.insert(vw, vx)
                        end
                        local ActiveEnemies = tF:FindFirstChild("ActiveEnemies")
                        if ActiveEnemies then
                            table.insert(vw, ActiveEnemies)
                        end
                        vu_2.FilterDescendantsInstances = vw
                        local vw_1 = tF:Raycast(vv_1 + Vector3.new(0, 6, 0), Vector3.new(0, -60, 0), vu_2)
                        if vw_1 then
                            return vw_1.Position
                        end
                        vu_3, vw_2, vx_2 = pcall(function()
                            return bo:GetBoundingBox()
                        end)
                        if vu_3 and vw_2 and vx_2 then
                            return Vector3.new(vv_1.X, vw_2.Position.Y - vx_2.Y / 2, vv_1.Z)
                        end
                        return vv_1
                    end
                end
                tU = (tU + 112) % 116
            end
        elseif t1 <= 25 then
            local t2_5 = (vector.create((tU * 1 + 4) % 11 + 1, (tU * 8 + 2) % 13 + 1, (tU * 4 + 8) % 17 + 1))
            t3 = (vector.create((tU * 6 + 9) % 11 + 1, (tU * 8 + 12) % 13 + 1, (tU * 13 + 9) % 17 + 1))
            local G5 = vector.dot(t2_5, t3)
            if G5 * G5 <= vector.dot(t2_5, t2_5) * vector.dot(t3, t3) then
                sS = fn604
                tR = function(bI)
                    local vH_2
                    local vG_2
                    local vF_2
                    local vD = sG()
                    local vD_5
                    if not vD then
                        return nil
                    end
                    local vE = Vector3.new(bI.x, bI.y, bI.z)
                    vG_2, vF_2 = nil, th
                    for i, child in ipairs(vD:GetChildren()) do
                        local vO = child
                        local vD_4 = vO:IsA("Model") and tP(vO) and tw(vO) == bI.id
                        if vD_4 then
                            vD_5, vH_2 = pcall(function()
                                return vO:GetPivot().Position
                            end)
                            if vD_5 then
                                local vD_6 = sS(vH_2, vE)
                                if vD_6 <= vF_2 then
                                    vG_2, vF_2 = vO, vD_6
                                end
                            end
                        end
                    end
                    return vG_2
                end
                ti = fn727
            else
                ti = fn604
                sS = function(bI)
                    local vH_1
                    local vG_1
                    local vF_1
                    local vD = sG()
                    local vD_2
                    if not vD then
                        return nil
                    end
                    local vE = Vector3.new(bI.x, bI.y, bI.z)
                    vG_1, vF_1 = nil, th
                    for i, child in ipairs(vD:GetChildren()) do
                        local vO = child
                        local vD_1 = vO:IsA("Model") and tP(vO) and tw(vO) == bI.id
                        if vD_1 then
                            vD_2, vH_1 = pcall(function()
                                return vO:GetPivot().Position
                            end)
                            if vD_2 then
                                local vD_3 = sS(vH_1, vE)
                                if vD_3 <= vF_1 then
                                    vG_1, vF_1 = vO, vD_3
                                end
                            end
                        end
                    end
                    return vG_1
                end
                tR = fn727
            end
            tU = (tU + 25) % 116
        else
            local t2_6 = {
                "quvtozzs",
                "higzqo",
                "uefbqkw",
                "bewucovcmvt",
                "yokzpmhdxv",
                "jzq",
                "euafjbku",
                "vsqueff",
                "rms",
                "qau",
                "tonoo",
                "icxrp",
                "slhoomndoc",
                "cqzu"
            }
            if t2_6[(tU * 21 + 91) % 14 + 1] < t2_6[(tU * 21 + 91) % 14 + 1] then
                ta = fn1201
                tL = fn166
                ts = {}
            else
                tL = fn1201
                ts = fn166
                ta = {}
            end
            tU = (tU + 112) % 116
        end
    elseif t1 <= 28 then
        if t1 <= 27 then
            if (tU * 2 + 8) * 13 % 3 == ((tU * 2 + 8) * 13 + 5) % 3 then
                sW = nil
                s0 = {}
            else
                s0 = nil
                sW = {}
            end
            tU = (tU + 25) % 116
        else
            t1 = (vector.create((tU * 4 + 7) % 11 + 1, (tU * 6 + 10) % 13 + 1, (tU * 13 + 11) % 17 + 1))
            local t2_7 = (vector.create((tU * 2 + 1) % 11 + 1, (tU * 4 + 11) % 13 + 1, (tU * 9 + 5) % 17 + 1))
            t3 = (vector.create((tU * 5 + 6) % 5 + 1, (tU * 1 + 3) % 7 + 1, (tU * 4 + 3) % 9 + 1))
            if math.abs((vector.angle(t1, t2_7, t3))) - math.abs((vector.angle(t2_7, t1, t3))) == 0 then
                sP = fn113
                tv = fn1293
                sV = fn1157
            else
                sV = fn113
                sP = fn1293
                tv = fn1157
            end
            tU = (tU + 83) % 116
        end
    else
        local Gh = bit32.rrotate(bit32.bxor(bit32.lrotate(tU, 31), string.byte(tostring(tz))), 17)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Gh, 4265692490), 0), 4265692490) == bit32.lrotate(Gh, 0) then
            tM = function(cw)
                local wm
                local wn = ta[cw] or not cw:IsA("Model")
                if wn then
                    return
                end
                local wn_2 = tw(cw)
                if not wn_2 then
                    return
                end
                local wo = tonumber(cw:GetAttribute("TotalSpent")) or 0
                local wp = tonumber(cw:GetAttribute("UpgradeLevel")) or 0
                local wq = {}
                local wr = (tk(cw))
                local wv = if wr then 1 else 0
                local wt = 2056 * wv + 3466 * (1 - wv)
                local wu = 226 * wv + 3130 * (1 - wv)
                if not ((wt * 611 + wu * 3680 + wt * wu) % 16777213 == 2552552) then
                    wr = Vector3.zero
                end
                wm = { id = wn_2, spent = wo, level = wp, connections = wq, position = wr }
                ta[cw] = wm
                table.insert(wm.connections, cw:GetAttributeChangedSignal("UpgradeLevel"):Connect(function()
                    local wi = tonumber(cw:GetAttribute("UpgradeLevel")) or wm.level
                    local wi_2 = tonumber(cw:GetAttribute("TotalSpent")) or wm.spent
                    if wi > wm.level then
                        sP({
                            act = "Upgrade",
                            id = wm.id,
                            lvl = wi,
                            c = math.max(0, wi_2 - wm.spent),
                            x = wm.position.X,
                            y = wm.position.Y,
                            z = wm.position.Z
                        })
                    end
                    wm.level = wi
                    wm.spent = wi_2
                end))
                return wm
            end
            onChildAdded = function(cN)
                if not cN:IsA("Model") then
                    return
                end
                task.spawn(function()
                    local ww = os.clock() + 3
                    while true do
                        local wx_3 = sD() and cN.Parent and os.clock() < ww
                        if wx_3 then
                            if cN:GetAttribute("OwnerUserId") ~= nil then
                                break
                            end
                            task.wait(0.1)
                            continue
                        end
                        break
                    end
                    local ww_3 = not sD() or not cN.Parent or not tP(cN)
                    if ww_3 then
                        return
                    end
                    local ww_4 = tM(cN)
                    local wx_4 = ww_4 and State.Recording and tr() > 0 and not tS()
                    if wx_4 then
                        sP({
                            act = "Place",
                            id = ww_4.id,
                            c = ww_4.spent,
                            x = ww_4.position.X,
                            y = ww_4.position.Y,
                            z = ww_4.position.Z
                        })
                    end
                end)
            end
            onChildRemoved = fn1228
        else
            onChildAdded = function(cw)
                local wm
                local wn = ta[cw] or not cw:IsA("Model")
                if wn then
                    return
                end
                local wn_1 = tw(cw)
                if not wn_1 then
                    return
                end
                local wo = tonumber(cw:GetAttribute("TotalSpent")) or 0
                local wp = tonumber(cw:GetAttribute("UpgradeLevel")) or 0
                local wq = {}
                local wr = (tk(cw))
                local wv = if wr then 1 else 0
                local wt = 2056 * wv + 3466 * (1 - wv)
                local wu = 226 * wv + 3130 * (1 - wv)
                if not ((wt * 611 + wu * 3680 + wt * wu) % 16777213 == 2552552) then
                    wr = Vector3.zero
                end
                wm = { id = wn_1, spent = wo, level = wp, connections = wq, position = wr }
                ta[cw] = wm
                table.insert(wm.connections, cw:GetAttributeChangedSignal("UpgradeLevel"):Connect(function()
                    local wi = tonumber(cw:GetAttribute("UpgradeLevel")) or wm.level
                    local wi_1 = tonumber(cw:GetAttribute("TotalSpent")) or wm.spent
                    if wi > wm.level then
                        sP({
                            act = "Upgrade",
                            id = wm.id,
                            lvl = wi,
                            c = math.max(0, wi_1 - wm.spent),
                            x = wm.position.X,
                            y = wm.position.Y,
                            z = wm.position.Z
                        })
                    end
                    wm.level = wi
                    wm.spent = wi_1
                end))
                return wm
            end
            onChildRemoved = function(cN)
                if not cN:IsA("Model") then
                    return
                end
                task.spawn(function()
                    local ww = os.clock() + 3
                    while true do
                        local wx_1 = sD() and cN.Parent and os.clock() < ww
                        if wx_1 then
                            if cN:GetAttribute("OwnerUserId") ~= nil then
                                break
                            end
                            task.wait(0.1)
                            continue
                        end
                        break
                    end
                    local ww_1 = not sD() or not cN.Parent or not tP(cN)
                    if ww_1 then
                        return
                    end
                    local ww_2 = tM(cN)
                    local wx_2 = ww_2 and State.Recording and tr() > 0 and not tS()
                    if wx_2 then
                        sP({
                            act = "Place",
                            id = ww_2.id,
                            c = ww_2.spent,
                            x = ww_2.position.X,
                            y = ww_2.position.Y,
                            z = ww_2.position.Z
                        })
                    end
                end)
            end
            tM = fn1228
        end
        tU = (tU + 112) % 116
    end
until (tU * 63 + 7) % 116 == 36
if t_ then
    t_ = sH:FindFirstChild("RoundStartedAt")
end
if t_ then
    tU = 6
    repeat
        tV = (tU * 1 + 0) % 2 + 1
        if tV <= 1 then
            tV = {
                "hvyocsfojnhh",
                "cgefdq",
                "xmmjhh",
                "cxjhabngfk",
                "bxzrjo",
                "dyilnhahfs",
                "ugpit",
                "dzkdxwz",
                "qvuhmzi",
                "oeup",
                "voofoo",
                "bknll"
            }
            if tV[(tU * 37 + 16) % 12 + 1] <= tV[(tU * 37 + 16) % 12 + 1] then
                sX = sH.RoundStartedAt.Changed:Connect(onChanged)
            else
                sH = sX.RoundStartedAt.Changed:Connect(onChanged)
            end
            tU = (tU + 5) % 8
        else
            if ((tU or not tU or not tU and not tU) and (not tU and tU or not tU and not tU) or tU and not tU and (not tU or not tU) and ((not tU or tU) and (not tU or not tU))) and not ((tU or not tU or not tU and not tU) and (not tU and tU or not tU and not tU) or tU and not tU and (not tU or not tU) and ((not tU or tU) and (not tU or not tU))) then
                tj.Track(fn767)
            else
                tj.Track(fn767)
            end
            tU = (tU + 7) % 8
        end
    until (tU * 7 + 7) % 8 == 5
end
tB, sL, tA, tN, sI, sK, tg, s8, sM, s2, s9, sT, s_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tV = 0
repeat
    tU = (tV * 3 + 3) % 4 + 1
    if tU <= 2 then
        if tU <= 1 then
            local Gc = bit32.rrotate(bit32.bxor(bit32.lrotate(tV, 18), string.byte(tostring(s_))), 5)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Gc, 1756155007), 26), 4255298353) == bit32.lrotate(Gc, 26) then
                sI = function(et)
                    if et.act == "Place" then
                        local xP_8 = tN(et.id)
                        local xQ_4 = pcall(function()
                            PlaceTurret:FireServer(et.id, Vector3.new(et.x, et.y, et.z))
                        end)
                        if not xQ_4 then
                            return false
                        end
                        return tA(et, xP_8)
                    end
                    local xO = tR(et)
                    if not xO then
                        return false
                    elseif et.act == "Upgrade" then
                        local xP_9 = tonumber(xO:GetAttribute("UpgradeLevel")) or 0
                        if et.lvl and xP_9 >= et.lvl then
                            return true
                        end
                        local xP_11 = pcall(function()
                            tQ:InvokeServer("Upgrade", xO)
                        end)
                        if not xP_11 then
                            return false
                        end
                        local xP_12 = os.clock() + 1.5
                        while true do
                            local xR = sD() and xO.Parent and os.clock() < xP_12
                            if not xR then
                                return false
                            end
                            local xR_2 = tonumber(xO:GetAttribute("UpgradeLevel")) or xP_9
                            if xR_2 > xP_9 then
                                break
                            end
                            task.wait(0.1)
                        end
                        return true
                    elseif et.act == "Sell" then
                        local xP_13 = pcall(function()
                            tQ:InvokeServer("Sell", xO)
                        end)
                        if not xP_13 then
                            return false
                        end
                        local xP_14 = os.clock() + 1.5
                        while true do
                            local xQ_6 = sD() and os.clock() < xP_14
                            if xQ_6 then
                                if xO.Parent == nil then
                                    return true
                                end
                                task.wait(0.1)
                                continue
                            end
                            break
                        end
                        return false
                    else
                        return true
                    end
                end
                sK = fn989
            else
                sK = function(et)
                    if et.act == "Place" then
                        local xP_1 = tN(et.id)
                        local xQ_1 = pcall(function()
                            PlaceTurret:FireServer(et.id, Vector3.new(et.x, et.y, et.z))
                        end)
                        if not xQ_1 then
                            return false
                        end
                        return tA(et, xP_1)
                    end
                    local xO = tR(et)
                    if not xO then
                        return false
                    elseif et.act == "Upgrade" then
                        local xP_2 = tonumber(xO:GetAttribute("UpgradeLevel")) or 0
                        if et.lvl and xP_2 >= et.lvl then
                            return true
                        end
                        local xP_4 = pcall(function()
                            tQ:InvokeServer("Upgrade", xO)
                        end)
                        if not xP_4 then
                            return false
                        end
                        local xP_5 = os.clock() + 1.5
                        while true do
                            local xR = sD() and xO.Parent and os.clock() < xP_5
                            if not xR then
                                return false
                            end
                            local xR_1 = tonumber(xO:GetAttribute("UpgradeLevel")) or xP_2
                            if xR_1 > xP_2 then
                                break
                            end
                            task.wait(0.1)
                        end
                        return true
                    elseif et.act == "Sell" then
                        local xP_6 = pcall(function()
                            tQ:InvokeServer("Sell", xO)
                        end)
                        if not xP_6 then
                            return false
                        end
                        local xP_7 = os.clock() + 1.5
                        while true do
                            local xQ_3 = sD() and os.clock() < xP_7
                            if xQ_3 then
                                if xO.Parent == nil then
                                    return true
                                end
                                task.wait(0.1)
                                continue
                            end
                            break
                        end
                        return false
                    else
                        return true
                    end
                end
                sI = fn989
            end
            tV = (tV + 3) % 16
        else
            if tV * 36417957 + 5 + 4 >= tV * 36417957 + 5 + 4 + 1 then
                tj = fn914
                s8.GetStatus = fn1253
                s8.SetMethod = fn808
                s8.SetRecording = fn1185
                s8.SetPlaying = fn864
                s8.SetAutoReplay = fn545
                s8.SetAutoSpeed = fn75
                s8.SetSpeed = fn232
                s8.SetMacroName = fn280
                s8.ClearRecording = fn427
                s8.CurrentMacro = fn1098
                s8.StepCount = fn218
                tg = fn1120
            else
                tg = fn914
                tj.GetStatus = fn1253
                tj.SetMethod = fn808
                tj.SetRecording = fn1185
                tj.SetPlaying = fn864
                tj.SetAutoReplay = fn545
                tj.SetAutoSpeed = fn75
                tj.SetSpeed = fn232
                tj.SetMacroName = fn280
                tj.ClearRecording = fn427
                tj.CurrentMacro = fn1098
                tj.StepCount = fn218
                s8 = fn1120
            end
            tV = (tV + 7) % 16
        end
    elseif tU <= 3 then
        if (tV * 3 + 3) * 17 % 4 == ((tV * 3 + 3) * 17 + 8) % 4 then
            sM = fn1083
            s2 = fn644
            tj.ListMacros = fn1273
            s9 = fn404
            tj.SaveMacro = function()
                local json
                if #State.Steps == 0 then
                    return false, "Record something first"
                end
                local zF = s2(State.MacroName)
                if zF == "" then
                    zF = s9()
                end
                if not sM() then
                    return false, "Your executor cannot write files"
                end
                json = nil
                local zG = pcall(function()
                    json = HttpService:JSONEncode(State.Steps)
                end)
                if not zG or not json then
                    return false, "Failed to encode the macro"
                end
                local zG_3 = pcall(writefile, tt .. "/" .. zF .. ".json", json)
                if not zG_3 then
                    return false, "Failed to save the macro"
                end
                State.MacroName = zF
                State.MacroLabel = zF
                State.Macro = table.clone(State.Steps)
                tb()
                local format = string.format
                local zH_2 = #State.Steps
                local zJ = #State.Steps == 1 and "" or "s"
                return true, format("Saved %s with %d action%s", zF, zH_2, zJ)
            end
            tj.LoadMacro = function(gO)
                local zM
                local zN
                local data
                local zO = s2(gO)
                if zO == "" then
                    return false, "Pick a macro first"
                elseif not sM() then
                    return false, "Your executor cannot read files"
                else
                    zM = tt .. "/" .. zO .. ".json"
                    local zP = sU(isfile) and not isfile(zM)
                    if zP then
                        return false, "That macro is gone"
                    end
                    zN = nil
                    local zP_4 = pcall(function()
                        zN = readfile(zM)
                    end)
                    local zQ = not zP_4
                    local z5 = if zQ then 1 else 0
                    local z3 = 896 * z5 + 2726 * (1 - z5)
                    local z4 = 3663 * z5 + 1284 * (1 - z5)
                    if not ((z3 * 954 + z4 * 1878 + z3 * z4) % 16777213 == 11015946) then
                        zQ = type(zN) ~= "string"
                    end
                    if zQ then
                        return false, "Failed to read the macro"
                    end
                    data = nil
                    local zP_5 = pcall(function()
                        data = HttpService:JSONDecode(zN)
                    end)
                    local zQ_4 = not zP_5 or type(data) ~= "table"
                    if zQ_4 then
                        return false, "That file is not a macro"
                    end
                    local zP_6 = {}
                    for i, v in ipairs(data) do
                        local zQ_5 = type(v) == "table" and type(v.act) == "string" and tonumber(v.id) and tonumber(v.x) and tonumber(v.z)
                        if zQ_5 then
                            local insert = table.insert
                            local act = v.act
                            local zS = tonumber(v.id)
                            local zT = tonumber(v.lvl)
                            local zU = tonumber(v.c) or 0
                            local zV = tonumber(v.t) or 0
                            local zW = tonumber(v.w) or 0
                            local zX = tonumber(v.m) or 0
                            local zY = tonumber(v.x)
                            local zZ = tonumber(v.y) or 0
                            insert(zP_6, { act = act, id = zS, lvl = zT, c = zU, t = zV, w = zW, m = zX, x = zY, y = zZ, z = tonumber(v.z) })
                        end
                    end
                    if #zP_6 == 0 then
                        return false, "That macro has no usable actions"
                    end
                    State.Macro = zP_6
                    State.MacroLabel = zO
                    tb()
                    return true, string.format("Loaded %s (%d actions)", zO, #zP_6)
                end
            end
            tj.DeleteMacro = fn61
            sT = fn882
            s_ = fn202
        else
            s_ = fn1083
            sM = fn644
            sT.ListMacros = fn1273
            tj = fn404
            sT.SaveMacro = function()
                local json
                if #State.Steps == 0 then
                    return false, "Record something first"
                end
                local zF = s2(State.MacroName)
                if zF == "" then
                    zF = s9()
                end
                if not sM() then
                    return false, "Your executor cannot write files"
                end
                json = nil
                local zG = pcall(function()
                    json = HttpService:JSONEncode(State.Steps)
                end)
                if not zG or not json then
                    return false, "Failed to encode the macro"
                end
                local zG_1 = pcall(writefile, tt .. "/" .. zF .. ".json", json)
                if not zG_1 then
                    return false, "Failed to save the macro"
                end
                State.MacroName = zF
                State.MacroLabel = zF
                State.Macro = table.clone(State.Steps)
                tb()
                local format = string.format
                local zH_1 = #State.Steps
                local zJ = #State.Steps == 1 and "" or "s"
                return true, format("Saved %s with %d action%s", zF, zH_1, zJ)
            end
            sT.LoadMacro = function(gO)
                local zM
                local zN
                local data
                local zO = s2(gO)
                if zO == "" then
                    return false, "Pick a macro first"
                elseif not sM() then
                    return false, "Your executor cannot read files"
                else
                    zM = tt .. "/" .. zO .. ".json"
                    local zP = sU(isfile) and not isfile(zM)
                    if zP then
                        return false, "That macro is gone"
                    end
                    zN = nil
                    local zP_1 = pcall(function()
                        zN = readfile(zM)
                    end)
                    local zQ = not zP_1
                    local z5 = if zQ then 1 else 0
                    local z3 = 896 * z5 + 2726 * (1 - z5)
                    local z4 = 3663 * z5 + 1284 * (1 - z5)
                    if not ((z3 * 954 + z4 * 1878 + z3 * z4) % 16777213 == 11015946) then
                        zQ = type(zN) ~= "string"
                    end
                    if zQ then
                        return false, "Failed to read the macro"
                    end
                    data = nil
                    local zP_2 = pcall(function()
                        data = HttpService:JSONDecode(zN)
                    end)
                    local zQ_1 = not zP_2 or type(data) ~= "table"
                    if zQ_1 then
                        return false, "That file is not a macro"
                    end
                    local zP_3 = {}
                    for i, v in ipairs(data) do
                        local zQ_2 = type(v) == "table" and type(v.act) == "string" and tonumber(v.id) and tonumber(v.x) and tonumber(v.z)
                        if zQ_2 then
                            local insert = table.insert
                            local act = v.act
                            local zS = tonumber(v.id)
                            local zT = tonumber(v.lvl)
                            local zU = tonumber(v.c) or 0
                            local zV = tonumber(v.t) or 0
                            local zW = tonumber(v.w) or 0
                            local zX = tonumber(v.m) or 0
                            local zY = tonumber(v.x)
                            local zZ = tonumber(v.y) or 0
                            insert(zP_3, { act = act, id = zS, lvl = zT, c = zU, t = zV, w = zW, m = zX, x = zY, y = zZ, z = tonumber(v.z) })
                        end
                    end
                    if #zP_3 == 0 then
                        return false, "That macro has no usable actions"
                    end
                    State.Macro = zP_3
                    State.MacroLabel = zO
                    tb()
                    return true, string.format("Loaded %s (%d actions)", zO, #zP_3)
                end
            end
            sT.DeleteMacro = fn61
            s2 = fn882
            s9 = fn202
        end
        tV = (tV + 7) % 16
    else
        tU = {
            "fhadmacl",
            "hbsdh",
            "yemns",
            "cijoyogy",
            "bnsczzdkfi",
            "gqcaziwyak",
            "nwpxuzx",
            "fsautvr",
            "qsjqsunsmwy",
            "wksxpredq",
            "zvjddijiwso"
        }
        local HY = tV
        tW = tU[HY % 11 + 1]
        if tW:len() <= tW:reverse():rep(HY % 3 + 2):len() then
            tB = fn445
            sL = fn473
            tA = function(dZ, d_)
                local xt_2
                local xp = os.clock() + tc
                while true do
                    local xq = sD() and os.clock() < xp
                    local xq_7
                    if xq then
                        local xq_5 = sG()
                        if xq_5 then
                            local xr
                            local xs = 0
                            for i, child in ipairs(xq_5:GetChildren()) do
                                local xB = child
                                local xq_6 = xB:IsA("Model") and tP(xB) and tw(xB) == dZ.id
                                if xq_6 then
                                    xs += 1
                                    xq_7, xt_2 = pcall(function()
                                        return xB:GetPivot().Position
                                    end)
                                    local xu = xq_7 and sS(xt_2, Vector3.new(dZ.x, dZ.y, dZ.z)) <= th
                                    if xu then
                                        xr = xB
                                    end
                                end
                            end
                            if xr or xs > d_ then
                                return true
                            end
                        end
                        task.wait(0.15)
                        continue
                    end
                    break
                end
                return false
            end
            tN = fn845
        else
            tA = fn445
            tN = fn473
            sL = function(dZ, d_)
                local xt_1
                local xp = os.clock() + tc
                while true do
                    local xq = sD() and os.clock() < xp
                    local xq_3
                    if xq then
                        local xq_1 = sG()
                        if xq_1 then
                            local xr
                            local xs = 0
                            for i, child in ipairs(xq_1:GetChildren()) do
                                local xB = child
                                local xq_2 = xB:IsA("Model") and tP(xB) and tw(xB) == dZ.id
                                if xq_2 then
                                    xs += 1
                                    xq_3, xt_1 = pcall(function()
                                        return xB:GetPivot().Position
                                    end)
                                    local xu = xq_3 and sS(xt_1, Vector3.new(dZ.x, dZ.y, dZ.z)) <= th
                                    if xu then
                                        xr = xB
                                    end
                                end
                            end
                            if xr or xs > d_ then
                                return true
                            end
                        end
                        task.wait(0.15)
                        continue
                    end
                    break
                end
                return false
            end
            tB = fn845
        end
        tV = (tV + 3) % 16
    end
until (tV * 5 + 5) % 16 == 9
if t0 then
    connection = nil
    tU = 7
    repeat
        tV = (tU * 1 + 1) % 2 + 1
        if tV <= 1 then
            if tU * 29134233 + 6 + 7 <= tU * 29134233 + 6 + 7 + 6 then
                connection = t0.OnClientEvent:Connect(onOnClientEvent)
            else
                t0 = connection.OnClientEvent:Connect(onOnClientEvent)
            end
            tU = (tU + 5) % 8
        else
            if (not connection and not tU and (connection or not tU) or (connection and tU or (connection or not connection))) and (not connection and tU or not connection and connection or connection and not connection and (not tU and not tU)) and (not connection or tU or (tU or connection) or not connection and tU and (connection or tU) or (tU and connection and (not tU or tU) or (not tU or not tU or (connection or connection)))) and not ((not connection and not tU and (connection or not tU) or (connection and tU or (connection or not connection))) and (not connection and tU or not connection and connection or connection and not connection and (not tU and not tU)) and (not connection or tU or (tU or connection) or not connection and tU and (connection or tU) or (tU and connection and (not tU or tU) or (not tU or not tU or (connection or connection))))) then
                tj.Track(fn1270)
            else
                tj.Track(fn1270)
            end
            tU = (tU + 3) % 8
        end
    until (tU * 7 + 7) % 8 == 0
end
tK, sQ = nil, nil
tO()
State.RoundMark = os.clock()
tK = task.spawn(worker)
tj.Track(fn1312)
sQ = task.spawn(worker2)
tj.Track(fn1084)
tW = function()
    local onDiscord
    local Fs
    local Fr
    onDiscord = nil
    Fr = nil
    Fs = nil
    local SaveManager, Fi, Fj, Library, Toggles, Fn, Fo, ThemeManager, Options
    Fj = "https://rscripts.net/@Ouroboros"
    Fn = "https://ouroboros-hub-rbx.web.app/"
    Fi = "Endless Tower Defense"
    Fr = "https://discord.gg/synapsex"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    sF(tj, Library)
    Fs = function(ic, ie)
        local AH = sU(setclipboard) and setclipboard
        local AI = AH
        if not AI then
            local AH_1 = sU(toclipboard) and toclipboard
            AI = AH_1 or nil
        end
        local AH_2 = AI
        if not AH_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local AI_1 = pcall(AH_2, ic)
        if AI_1 then
            Library:Notify(ie)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        Fs(Fr, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Fr, Copyable = true }, "|", Fi, "|", "v0.3" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Fo = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Ft(iv)
        local DiscordGroup = iv:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Fo do
        if k ~= "Info" then
            Ft(v)
        end
    end
    local function Fu_1()
        local jB
        tj.SetNotifier(function(iC, iD)
            if not Library.Unloaded then
                Library:Notify(iC, iD)
            end
        end)
        tj.Track(function()
            tj.SetNotifier(nil)
        end)
        local MacroGroup = Fo.Main:AddLeftGroupbox("Macro", "list-video")
        local Label = MacroGroup:AddLabel(tj.GetStatus(), true)
        MacroGroup:AddDivider()
        MacroGroup:AddInput("MacroName", {
            Text = "Macro Name",
            Default = "",
            Finished = true,
            AllowEmpty = true,
            Callback = function(iK)
                tj.SetMacroName(iK)
            end
        })
        local SavedMacroDropdown
        local function iN(iO, iP)
            local AM = tj.ListMacros()
            if #AM == 0 then
                AM = { "None" }
            end
            SavedMacroDropdown:SetValues(AM)
            local AN = type(iP) == "string" and table.find(AM, iP)
            if AN then
                pcall(function()
                    SavedMacroDropdown:SetValue(iP)
                end)
            end
            if iO then
                Library:Notify("Refreshed saved macros")
            end
        end
        SavedMacroDropdown = MacroGroup:AddDropdown("SavedMacro", {
            Text = "Saved Macros",
            Values = { "None" },
            Default = 1,
            AllowNull = true,
            Callback = function(iX)
                local AP = iX == ""
                local AP_2
                local AQ = type(iX) ~= "string" or AP
                local AQ_1
                if AQ or iX == "None" then
                    return
                end
                if iX == tj.CurrentMacro() then
                    return
                end
                AP_2, AQ_1 = tj.LoadMacro(iX)
                local AP_3 = AP_2 and 5 or 6
                Library:Notify(AQ_1, AP_3)
            end
        })
        MacroGroup:AddButton({
            Text = "Refresh Saved Macros",
            Func = function()
                iN(true)
            end
        })
        MacroGroup:AddToggle("RecordMacro", {
            Text = "Record Macro",
            Default = false,
            Tooltip = "Records every tower you place, upgrade and sell. Turning it off saves the macro under the name above, or a new name if the box is empty.",
            Callback = function(i2)
                tj.SetRecording(i2)
            end
        })
        MacroGroup:AddButton({
            Text = "Delete Macro",
            Func = function()
                local AX_1
                local AW_1
                AX_1, AW_1 = tj.DeleteMacro(Options.SavedMacro.Value)
                local AZ = AX_1 and 5 or 6
                Library:Notify(AW_1, AZ)
                if AX_1 then
                    iN(false)
                end
            end
        })
        MacroGroup:AddButton({
            Text = "Clear Recording",
            Func = function()
                tj.ClearRecording()
                Library:Notify("Cleared the recording buffer")
            end
        })
        MacroGroup:AddDivider("Playback")
        MacroGroup:AddDropdown("MacroMethod", {
            Text = "Method",
            Values = { "Time", "Wave", "Money", "Hybrid" },
            Default = 1,
            Tooltip = "Time tracks run time. Wave tracks the wave number. Money tracks coins. Hybrid needs both time and money.",
            Callback = function(jd)
                tj.SetMethod(jd)
            end
        })
        MacroGroup:AddToggle("PlayMacro", {
            Text = "Play Macro",
            Default = false,
            Callback = function(jf)
                tj.SetPlaying(jf)
            end
        })
        MacroGroup:AddToggle("AutoReplay", {
            Text = "Auto Replay",
            Default = false,
            Tooltip = "Presses Play Again as soon as the run is lost.",
            Callback = function(jh)
                tj.SetAutoReplay(jh)
            end
        })
        local GameGroup = Fo.Main:AddRightGroupbox("Game", "gauge")
        GameGroup:AddToggle("AutoSpeed", {
            Text = "Auto Speed",
            Default = false,
            Tooltip = "Keeps the round running at the speed you pick, including after a replay.",
            Callback = function(jk)
                tj.SetAutoSpeed(jk)
            end
        })
        GameGroup:AddDropdown("GameSpeed", {
            Text = "Speed",
            Values = { "1x", "2x", "3x" },
            Default = 1,
            Tooltip = "3x needs the game pass.",
            Callback = function(jm)
                tj.SetSpeed(jm)
            end
        })
        tj.SetMacroListChanged(function(jo)
            if Library.Unloaded then
                return
            end
            iN(false, jo)
            local A3 = type(jo) == "string" and Options.MacroName
            if A3 then
                pcall(function()
                    Options.MacroName:SetValue(jo)
                end)
            end
        end)
        tj.Track(function()
            tj.SetMacroListChanged(nil)
        end)
        iN(false)
        jB = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    Label:SetText(tj.GetStatus())
                end)
                task.wait(0.25)
            end
        end)
        tj.Track(function()
            if coroutine.status(jB) ~= "dead" then
                task.cancel(jB)
            end
        end)
    end
    Fu_1()
    local function Ft_1()
        local Bj
        local Bs
        local Bo
        local Bn
        Bj = nil
        Bn = nil
        Bo = nil
        Bs = nil
        local Label2, Label3, Bm, Bp, Bq, Label, Bt, Bu, Bv
        Bj = function(jF)
            return (tostring(jF):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Bo = function(jH, jI)
            return string.format('<font color="%s">%s</font>', jI, Bj(jH))
        end
        Bv = function(jL, jM, jN)
            return string.format("<b>%s</b> %s %s", jL, Bo("-", "#5a6070"), Bo(jM, jN))
        end
        Bq = "#7fd47f"
        local Bw = {}
        Bm = "#e8a34d"
        local Bx = "#6ec1ff"
        local By = "#8b93a3"
        if not PlaceTurret then
            table.insert(Bw, "placement")
        end
        if not tQ then
            table.insert(Bw, "tower actions")
        end
        if not sH then
            table.insert(Bw, "game state")
        end
        if not s8() then
            table.insert(Bw, "macro files")
        end
        if not SetGameSpeed then
            table.insert(Bw, "game speed")
        end
        local BA = #Bw == 0 and "ready"
        local BH = if BA then 1 else 0
        local BF = 2361 * BH + 3669 * (1 - BH)
        local BG = 3276 * BH + 2923 * (1 - BH)
        if not ((BF * 2817 + BG * 3835 + BF * BG) % 16777213 == 10171820) then
            BA = "limited: " .. table.concat(Bw, ", ")
        end
        Bu = "Unknown"
        local Bw_1 = BA
        pcall(function()
            local A8_1
            local A7_1
            if sU(identifyexecutor) then
                A8_1, A7_1 = identifyexecutor()
                local A9 = A8_1 ~= ""
                local Ba = type(A8_1) == "string" and A9
                if Ba then
                    local A9_1 = type(A7_1) == "string" and A7_1 ~= "" and A8_1 .. " " .. A7_1
                    Bu = A9_1 or A8_1
                end
            end
        end)
        Bn = os.clock()
        Bt = function()
            local Bc = math.floor(os.clock() - Bn)
            if Bc < 60 then
                return Bc .. "s"
            elseif Bc < 3600 then
                return string.format("%dm %ds", Bc // 60, Bc % 60)
            else
                return string.format("%dh %dm", Bc // 3600, Bc % 3600 // 60)
            end
        end
        local UserGroup = Fo.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Bv("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Bq), true)
        UserGroup:AddLabel(Bv("UserId", tostring(LocalPlayer.UserId), Bx), true)
        UserGroup:AddLabel(Bv("Executor", Bu .. "  " .. Bw_1, Bq), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Bv("Session", Bt(), Bm), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                Fs(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                Fs("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Fo.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Bv("Game", Fi, Bx), true)
        Label2 = SessionGroup:AddLabel(Bv("Players", "0/0", Bq), true)
        Bp = tostring(game.JobId)
        local Bx_1 = #Bp > 18 and string.sub(Bp, 1, 18) .. "..."
        local Bz_2 = Bx_1
        local BE = if Bz_2 then 1 else 0
        local BC = 180 * BE + 795 * (1 - BE)
        local BD = 1586 * BE + 3742 * (1 - BE)
        if not ((BC * 2392 + BD * 1273 + BC * BD) % 16777213 == 2735018) then
            Bz_2 = Bp
        end
        local Bx_2 = Bz_2
        SessionGroup:AddLabel(Bv("Job", Bx_2, By), true)
        Label = SessionGroup:AddLabel(Bv("Ping", "0 ms", Bm), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                s7:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                Fs(Bp, "Copied Job ID")
            end
        })
        Bs = task.spawn(function()
            local Bf_1
            local Be_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Bv("Session", Bt(), Bm))
                Label2:SetText(Bv("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Bq))
                Be_1, Bf_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Be_2 = Be_1 and Bf_1 .. " ms" or "n/a"
                Label:SetText(Bv("Ping", Be_2, Bm))
            end
        end)
        tj.Track(function()
            if coroutine.status(Bs) ~= "dead" then
                task.cancel(Bs)
            end
        end)
        local SocialsGroup = Fo.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                Fs(Fj, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                Fs(Fn, "Copied website link")
            end
        })
    end
    Ft_1()
    local function Ft_2()
        local k9
        local k7
        local la
        local k8
        local MovementGroup = Fo.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Fo.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        k7 = {}
        la = {}
        k9 = {}
        k8 = {}
        local k6 = {}
        local function lb()
            for k, v in k7 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(k7)
        end
        local function lf()
            for k, v in k8 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(k8)
        end
        local function lj()
            for k, v in k9 do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(k9)
        end
        local function ln(lo)
            if not lo:IsA("ProximityPrompt") then
                return
            end
            if la[lo] == nil then
                la[lo] = {
                    HoldDuration = lo.HoldDuration,
                    MaxActivationDistance = lo.MaxActivationDistance,
                    RequiresLineOfSight = lo.RequiresLineOfSight
                }
            end
            lo.HoldDuration = 0
            lo.MaxActivationDistance = 50
            lo.RequiresLineOfSight = false
        end
        local function lq()
            for k, v in la do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(la)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                lj()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                lf()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                lb()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in sN:QueryDescendants("ProximityPrompt") do
                    pcall(ln, v)
                end
            else
                lq()
            end
        end)
        table.insert(k6, sN.DescendantAdded:Connect(function(lJ)
            if Toggles.InstantProximityPrompt.Value then
                ln(lJ)
            end
        end))
        table.insert(k6, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if k7[v] == nil then
                        k7[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(k6, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Cy = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Cy then
                Cy:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(k6, RunService.RenderStepped:Connect(function(l4)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local CB = Character and Character:FindFirstChildOfClass("Humanoid")
            local CC = Character
            if CC then
                CC = Character:FindFirstChild("HumanoidRootPart")
            end
            local CA_1 = CC
            local CurrentCamera = sN.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and CB then
                if k8[CB] == nil then
                    k8[CB] = CB.WalkSpeed
                end
                CB.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and CA_1 and CB and CurrentCamera then
                if k9[CB] == nil then
                    k9[CB] = CB.PlatformStand
                end
                CB.PlatformStand = true
                local CC_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    local CL = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                    if CL == 1 then
                        CC_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        CC_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        CC_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        CC_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        CC_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        CC_4 -= Vector3.new(0, 1, 0)
                    end
                end
                CA_1.AssemblyLinearVelocity = Vector3.zero
                if CC_4.Magnitude > 0 then
                    CA_1.CFrame = CA_1.CFrame + CC_4.Unit * Options.FlySpeed.Value * l4
                end
            end
        end))
        tj.Track(function()
            for k, v in k6 do
                v:Disconnect()
            end
            lb()
            lf()
            lj()
            lq()
        end)
    end
    Ft_2()
    local function Ft_3()
        local DY, DZ, D_, Label, D1, D2, D3, D4, D5, D6, D7, D8, D9, Ea
        D1 = {}
        D9 = {}
        D6 = nil
        D3 = 0
        DY = false
        D7 = 0
        DZ = os.clock()
        local MenuGroup = Fo.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        D4 = function()
            local CurrentCamera
            CurrentCamera = sN.CurrentCamera
            local CU = not CurrentCamera or not sU(VirtualUser.CaptureController)
            local CY = if CU then 1 else 0
            local CW = 316 * CY + 2326 * (1 - CY)
            local CX = 719 * CY + 1767 * (1 - CY)
            if not ((CW * 1448 + CX * 3247 + CW * CX) % 16777213 == 3019365) then
                CU = not sU(VirtualUser.ClickButton2)
            end
            if CU then
                return false
            end
            local CU_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not CU_1 then
                return false
            end
            D7 += 1
            DZ = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. D7)
            end)
            return true
        end
        D_ = function(mO)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not mO)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = te:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not mO
                end
            end)
            if not mO then
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
        Ea = function(m3)
            local C8 = m3.ClassName == "ParticleEmitter" or m3.ClassName == "Trail" or m3.ClassName == "Smoke" or m3.ClassName == "Fire" or m3.ClassName == "Sparkles"
            local Dc = if C8 then 1 else 0
            local Da = 3612 * Dc + 3283 * (1 - Dc)
            local Db = 936 * Dc + 3678 * (1 - Dc)
            if not ((Da * 1006 + Db * 2938 + Da * Db) % 16777213 == 9764472) then
                C8 = m3.ClassName == "Explosion"
            end
            if not C8 then
                C8 = m3.ClassName == "Beam"
            end
            if C8 then
                if D1[m3] == nil then
                    D1[m3] = m3.Enabled
                end
                pcall(function()
                    m3.Enabled = false
                end)
            end
        end
        D8 = function()
            for k, v in D1 do
                local Dh = k
                local Dj = v
                if Dh.Parent then
                    pcall(function()
                        Dh.Enabled = Dj
                    end)
                end
            end
            table.clear(D1)
            if D6 then
                pcall(function()
                    settings().Rendering.QualityLevel = D6.Quality
                end)
                sZ.GlobalShadows = D6.Shadows
                sZ.FogEnd = D6.Fog
                D6 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(ni)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not ni)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(nn)
                if nn then
                    if not D6 then
                        D6 = { Quality = settings().Rendering.QualityLevel, Shadows = sZ.GlobalShadows, Fog = sZ.FogEnd }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    sZ.GlobalShadows = false
                    sZ.FogEnd = 9000000000
                    for k, v in sN:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(Ea, v)
                    end
                else
                    D8()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        D_(true)
        local ScriptGroup = Fo.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            D_(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            D_(true)
        end
        table.insert(D9, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                D4()
            end
        end))
        table.insert(D9, sN.DescendantAdded:Connect(function(nG)
            if Toggles.FpsBoost.Value then
                Ea(nG)
            end
        end))
        D5 = function(nK)
            local DA = DY or Library.Unloaded
            local DF = if DA then 1 else 0
            local DD = 4017 * DF + 1848 * (1 - DF)
            local DE = 2475 * DF + 913 * (1 - DF)
            if not ((DD * 2862 + DE * 3288 + DD * DE) % 16777213 == 12799316) then
                DA = not Toggles.AutoReconnect.Value
            end
            if DA then
                return
            end
            DY = true
            local Dz = D3
            local DA_1 = pcall(function()
                if nK then
                    s7:Teleport(game.PlaceId, LocalPlayer)
                else
                    s7:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not DA_1 then
                DY = false
                if not nK and Dz == D3 then
                    task.delay(1.5, function()
                        if Dz == D3 then
                            D5(true)
                        end
                    end)
                end
            end
        end
        table.insert(D9, s7.TeleportInitFailed:Connect(function(n1)
            local DH
            if n1 == LocalPlayer and DY then
                DY = false
                DH = D3
                task.delay(3, function()
                    if DH == D3 then
                        D5(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = te:WaitForChild("RobloxPromptGui", 30)
            local DM = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not DM then
                return
            end
            table.insert(D9, DM.ChildAdded:Connect(function(og)
                if og.Name == "ErrorPrompt" then
                    D5(false)
                end
            end))
        end)
        D2 = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    D_(true)
                end
                local DP = Toggles.AntiAfk.Value and os.clock() - DZ >= 60
                if DP then
                    D4()
                end
                task.wait(1)
            end
        end)
        tj.Track(function()
            D3 += 1
            for k, v in D9 do
                v:Disconnect()
            end
            pcall(task.cancel, D2)
            D_(false)
            D8()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Ft_3()
    local function Ft_4()
        local E8, E9, Fa, Fb
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Fo.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/EndlessTowerDefense")
        local Fc = SaveManager:BuildConfigSection(Fo.Settings)
        E8 = function(oL, oM)
            local Ee_1 = (oL == "Toggle" and Toggles or Options)[oM]
            local Ed_2 = type(Ee_1) == "table" and Ee_1.Type == oL
            return Ed_2 and Ee_1 or nil
        end
        Fa = function(oV, oW)
            local Type = oW.Type
            if Type == "Toggle" then
                return { idx = oV, type = "Toggle", value = oW.Value == true }
            elseif Type == "Slider" then
                return { idx = oV, type = "Slider", value = tostring(oW.Value) }
            elseif Type == "Dropdown" then
                return { idx = oV, type = "Dropdown", multi = oW.Multi == true, value = oW.Value }
            elseif Type == "Input" then
                local Ei = oW.Value or ""
                return { idx = oV, type = "Input", text = tostring(Ei) }
            elseif Type == "ColorPicker" then
                return { idx = oV, type = "ColorPicker", value = oW.Value:ToHex(), transparency = oW.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = oV,
                    type = "KeyPicker",
                    mode = oW.Mode,
                    key = oW.Value,
                    modifiers = oW.Modifiers,
                    toggled = oW.Toggled
                }
            else
                return nil
            end
        end
        E9 = function()
            local Eo = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Ep = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Ep then
                        local Ep_1 = Fa(k, v)
                        if Ep_1 then
                            Eo[#Eo + 1] = Ep_1
                        end
                    end
                end
            end
            table.sort(Eo, function(o5, o6)
                if o5.type ~= o6.type then
                    return o5.type < o6.type
                end
                return o5.idx < o6.idx
            end)
            return { objects = Eo }
        end
        Fb = function(o8)
            local EF
            EF = nil
            local EG = type(o8) ~= "table" or type(o8.idx) ~= "string" or type(o8.type) ~= "string" or SaveManager.Ignore[o8.idx]
            if EG then
                return false
            end
            EF = E8(o8.type, o8.idx)
            if not EF then
                return false
            end
            local EG_1 = pcall(function()
                if o8.type == "Input" then
                    if type(o8.text) ~= "string" then
                        return
                    end
                    EF:SetValue(o8.text)
                elseif o8.type == "ColorPicker" then
                    EF:SetValueRGB(Color3.fromHex(o8.value), o8.transparency)
                elseif o8.type == "KeyPicker" then
                    EF:SetValue({ o8.key, o8.mode, o8.modifiers })
                    if o8.mode == "Toggle" and o8.toggled ~= nil then
                        EF.Toggled = o8.toggled
                        EF:Update()
                    end
                else
                    EF:SetValue(o8.value)
                end
            end)
            return EG_1
        end
        Fc:AddDivider()
        Fc:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Fc:AddButton("Export Config to Clipboard", function()
            local EM_1
            local EL_1
            EL_1, EM_1 = pcall(HttpService.JSONEncode, HttpService, E9())
            if EL_1 then
                local EL_2 = sU(setclipboard) and setclipboard
                local EN = EL_2
                local ES = if EN then 1 else 0
                local EQ = 2286 * ES + 412 * (1 - ES)
                local ER = 1370 * ES + 1945 * (1 - ES)
                if not ((EQ * 3489 + ER * 3004 + EQ * ER) % 16777213 == 15223154) then
                    local EL_3 = sU(toclipboard) and toclipboard
                    EN = EL_3 or nil
                end
                local EL_4 = EN
                local EN_1 = type(EL_4) == "function" and pcall(EL_4, EM_1)
                if EN_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Fc:AddButton("Import Config from Clipboard Text", function()
            local E0_1
            local EZ = Options.SaveManager_ImportSource.Value or ""
            local EZ_1
            local E_ = tostring(EZ):match("^%s*(.-)%s*$")
            if E_ == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #E_ > 262144 then
                Library:Notify("That config is too large")
                return
            end
            EZ_1, E0_1 = pcall(HttpService.JSONDecode, HttpService, E_)
            local E__1 = not EZ_1 or type(E0_1) ~= "table" or type(E0_1.objects) ~= "table"
            if E__1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #E0_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local EZ_2 = 0
            for i, v in ipairs(E0_1.objects) do
                if Fb(v) then
                    EZ_2 += 1
                end
            end
            if EZ_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local E0_2 = EZ_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(EZ_2, E0_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.MacroMethod then
            tj.SetMethod(Options.MacroMethod.Value)
        end
        if Options.GameSpeed then
            tj.SetSpeed(Options.GameSpeed.Value)
        end
        if Toggles.AutoSpeed then
            tj.SetAutoSpeed(Toggles.AutoSpeed.Value)
        end
        if Options.MacroName then
            tj.SetMacroName(Options.MacroName.Value)
        end
        if Toggles.AutoReplay then
            tj.SetAutoReplay(Toggles.AutoReplay.Value)
        end
        if Toggles.RecordMacro then
            tj.SetRecording(Toggles.RecordMacro.Value)
        end
        if Toggles.PlayMacro then
            tj.SetPlaying(Toggles.PlayMacro.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Ft_4()
end
tW()
