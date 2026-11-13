local connection2
local connection
local r9
local rR
local sf
local rX
local sE
local rE
local sl
local r2
local rK
local r8
local rQ
local sx
local se
local sD
local LocalPlayer
local sk
local sJ
local rJ
local sq
local r7
local sd
local rV
local sC
local rC
local r0
local sI
local rI
local sp
local r6
local sv
local sc
local rU
local sB
local si
local r_
local sH
local rH
local so
local r5
local su
local sb
local rT
local sh
local rZ
local sG
local rG
local sn
local CoreGui
local st
local rS
local sz
local sg
local rY
local sF
local rF
local sm
local function fn100(br)
    local t3 = br and br.themeTitle
    if type(t3) == "string" then
        local t3_1 = sF.TitleToTheme[t3:upper()]
        if t3_1 then
            return sF.Themes[t3_1]
        end
        return sF.Themes.PowerScaling
    end
    return sF.Themes.PowerScaling
end
local function fn109()
    return sh
end
local function fn130()
    local w6 = not rX
    local w6_1
    local w7 = not r2
    local w7_1
    local xc = if w7 then 1 else 0
    local xa = 3327 * xc + 1440 * (1 - xc)
    local xb = 2287 * xc + 3709 * (1 - xc)
    if not ((xa * 3894 + xb * 152 + xa * xb) % 16777213 == 4134598) then
        w7 = w6
    end
    if w7 then
        return
    end
    w6_1, w7_1 = pcall(function()
        return r2:InvokeServer()
    end)
    local w8 = not w6_1 or type(w7_1) ~= "table"
    if w8 then
        return
    end
    if w7_1.CanClaim then
        local w6_2 = pcall(function()
            return rX:InvokeServer()
        end)
        local w6_3 = w6_2 and "Claimed daily login" or "Daily claim failed"
        sq.RewardStatus = w6_3
    else
        sq.RewardStatus = "Daily already claimed"
    end
end
local function fn137()
    local u9_1
    local u6_1
    local u5_1
    u6_1, u5_1 = nil, nil
    local u7 = sx()
    local u7_2
    local u7_1 = u7 and u7.Position or Vector3.zero
    for i, v in ipairs(rU()) do
        u9_1, u7_2 = si(v)
        if u9_1 then
            local vb_1 = (u9_1.Position - u7_1).Magnitude + (u7_2 and 0 or 400)
            if not u5_1 or vb_1 < u5_1 then
                u5_1 = vb_1
                u6_1 = { seat = u9_1, index = i, entry = v }
            end
        end
    end
    return u6_1
end
local function fn209(d5)
    if not sk then
        return
    end
    if d5.phase ~= "lot" then
        return
    end
    if d5.mode ~= "party" and d5.turn ~= d5.you then
        return
    end
    local vT_1 = tostring(d5.token) .. ":" .. tostring(d5.price) .. ":" .. tostring(d5.turn)
    if rH.handled == vT_1 then
        return
    end
    rH.handled = vT_1
    local vT_2 = tonumber(d5.price) or 0
    local vT_3 = sI(d5)
    local vV = rY(d5)
    local format = string.format
    local vY = d5.object and d5.object.name
    local v1 = if vY then 1 else 0
    local v_ = 1568 * v1 + 412 * (1 - v1)
    local v0 = 1625 * v1 + 1197 * (1 - v1)
    if not ((v_ * 2109 + v0 * 2202 + v_ * v0) % 16777213 == 9433162) then
        vY = "?"
    end
    local vX_1 = vV and string.format("%.1f", vV)
    local vV_1 = vX_1
    local v4 = if vV_1 then 1 else 0
    local v2 = 3372 * v4 + 2583 * (1 - v4)
    local v3 = 1760 * v4 + 3195 * (1 - v4)
    if not ((v2 * 2414 + v3 * 2254 + v2 * v3) % 16777213 == 1264555) then
        vV_1 = "?"
    end
    sq.LotStatus = format("%s | value %s | price $%d | cap $%d", vY, vV_1, vT_2, vT_3)
    local vV_2 = d5.canRaise == true and vT_2 + 1 <= vT_3
    local vV_3 = sf.State.BidDelay or 0.35
    if vV_3 > 0 then
        task.wait(vV_3)
    end
    local vV_4 = not rK() or rH.state ~= d5
    if vV_4 then
        return
    end
    if vV_2 then
        sk:FireServer("raise", d5.token, d5.price)
        sq.DraftStatus = string.format("Raised to $%d", vT_2 + 1)
    else
        sk:FireServer("pass", d5.token, d5.price)
        sq.DraftStatus = "Passed"
    end
end
local function fn211(ai)
    return string.format('<font color="%s">›</font> <font color="%s">%s</font>', sm, st, sd(ai))
end
local function fn212()
    for k in pairs(sG) do
        sc(k)
    end
    so()
end
local function fn213(fY)
    if fY then
        sE("AutoDaily", rJ, 60)
    else
        sc("AutoDaily")
    end
end
local function fn218()
    local Coins = sC:FindFirstChild("Coins")
    if not Coins then
        sq.CoinStatus = "No coins in this place"
        return
    end
    if not rT(firetouchinterest) then
        r9("firetouchinterest")
        sq.CoinStatus = "firetouchinterest unavailable"
        return
    end
    local xC = sx()
    if not xC then
        sq.CoinStatus = "No character"
        return
    end
    local xD = 0
    for i, child in ipairs(Coins:GetChildren()) do
        if not rK() then
            return
        end
        local xB_1 = child:IsA("BasePart") and not child:GetAttribute("Collected")
        if xB_1 then
            pcall(firetouchinterest, xC, child, 0)
            task.wait()
            pcall(firetouchinterest, xC, child, 1)
            xD += 1
        end
    end
    local xB_2 = xD > 0 and string.format("Touched %d coin(s)", xD)
    local xC_1 = xB_2 or "Waiting for respawns"
    sq.CoinStatus = xC_1
end
local function fn232(aL)
    local tK = rS and rS:FindFirstChild(aL)
    if not tK then
        r9("GTC_Remotes." .. aL)
    end
    return tK
end
local function fn278(cM)
    local ProximityPrompt = cM:FindFirstChildOfClass("ProximityPrompt")
    if ProximityPrompt then
        return ProximityPrompt
    end
    for i, child in ipairs(cM:GetChildren()) do
        if child:IsA("ProximityPrompt") then
            return child
        end
    end
    return nil
end
local function fn298()
    local ue = rR()
    local uf = ue and ue:FindFirstChild("HumanoidRootPart")
    return uf or nil
end
local function fn311(gj)
    if gj then
        sE("AutoCoins", sp, 1)
    else
        sc("AutoCoins")
        sq.CoinStatus = "Idle"
    end
end
local function onOnClientEvent(gp)
    if type(gp) ~= "table" then
        return
    end
    rH.state = gp
    sf.State.Duel = true
    if gp.phase ~= "lot" then
        sq.LotStatus = string.format("Phase: %s", tostring(gp.phase))
    end
    if sf.State.AutoDraft then
        task.spawn(se, gp)
    end
end
local function fn395(au)
    if not table.find(sh, au) then
        table.insert(sh, au)
    end
end
local function fn426()
    return CoreGui
end
local function fn431(aF, aG, aH)
    if typeof(aF) ~= "Instance" then
        return nil
    end
    local tI = aF:FindFirstChild(aG)
    if tI then
        return tI
    end
    local tI_1 = aH or 10
    return aF:WaitForChild(aG, tI_1)
end
local function fn465(cR)
    if cR.inDuel then
        return nil
    elseif not rQ(cR.seatA) then
        return cR.seatA, rQ(cR.seatB)
    elseif not rQ(cR.seatB) then
        return cR.seatB, true
    else
        return nil
    end
end
local function fn466(f1)
    if f1 then
        sE("AutoGroup", rZ, 60)
    else
        sc("AutoGroup")
    end
end
local function fn468(da)
    return da.Position + Vector3.new(0, 3.5, 0) + da.CFrame.LookVector * 3
end
local function fn474()
    if not r6() then
        sq.StationStatus = "No character"
        return false
    elseif rE() then
        sq.StationStatus = "Already seated"
        return true
    else
        local vo = r0()
        if not vo then
            sq.StationStatus = "No free station"
            return false
        end
        local vp = sJ(vo.seat)
        if not vp then
            sq.StationStatus = "Seat has no prompt"
            r9("Station seat ProximityPrompt")
            return false
        end
        sq.StationStatus = string.format("Walking to station %d", vo.index)
        if not r7(rC(vo.seat), 0.15) then
            return false
        elseif rQ(vo.seat) then
            sq.StationStatus = "Seat taken, retrying"
            return false
        else
            rG(vp)
            local vp_1 = os.clock() + 2
            while true do
                local vq = rK() and os.clock() < vp_1
                if vq then
                    if rE() then
                        sq.StationStatus = string.format("Seated at station %d", vo.index)
                        return true
                    end
                    task.wait(0.1)
                    continue
                end
                break
            end
            sq.StationStatus = "Sit did not register"
            return false
        end
    end
end
local function fn489()
    gethui = sD
end
local function fn564()
    return not sf.Unloaded
end
local function fn632()
    if not r5 then
        return false
    elseif not rV() then
        return false
    else
        r5:FireServer()
        return true
    end
end
local function fn657()
    local xd = not sH
    local xd_1
    local xe = not rF or xd
    local xe_1
    if xe then
        return
    end
    xd_1, xe_1 = pcall(function()
        return rF:InvokeServer()
    end)
    local xf = not xd_1 or type(xe_1) ~= "table"
    if xf then
        return
    end
    if xe_1.Claimed then
        sq.RewardStatus = "Group reward already claimed"
        return
    end
    local xd_2 = pcall(function()
        return sH:InvokeServer()
    end)
    local xd_3 = xd_2 and "Claimed group reward"
    local xj = if xd_3 then 1 else 0
    local xh = 313 * xj + 248 * (1 - xj)
    local xi = 349 * xj + 1931 * (1 - xj)
    if not ((xh * 1586 + xi * 3976 + xh * xi) % 16777213 == 1993279) then
        xd_3 = "Group claim failed"
    end
    sq.RewardStatus = xd_3
end
local function fn663(eI)
    local State = sf.State
    local wC = tonumber(eI) or 90
    State.TravelSpeed = math.clamp(wC, 20, 400)
end
local function fn673(am, an)
    return string.format('<font color="%s">%s</font> <font color="%s">%s</font>', sm, sd(am), st, sd(an))
end
local function onOnClientEvent2(gw)
    if type(gw) ~= "string" then
        return
    end
    local xS = gw == "waiting"
    local xX = if xS then 1 else 0
    local xV = 444 * xX + 2557 * (1 - xX)
    local xW = 1246 * xX + 2536 * (1 - xX)
    if not ((xV * 1290 + xW * 3970 + xV * xW) % 16777213 == 6072604) then
        xS = gw:find("ended")
    end
    if xS then
        rH.state = nil
        rH.handled = nil
        sf.State.Duel = false
        sq.LotStatus = "No lot"
        local xS_1 = gw:find("ended") and "Match " .. gw
        local xT = xS_1 or "Waiting"
        sq.DraftStatus = xT
        if sf.State.AutoRejoin then
            task.delay(3, function()
                local xN = rK() and sf.State.AutoRejoin and not sB()
                if xN then
                    sb()
                end
            end)
        end
    end
end
local function fn713()
    local GTC_Map = sC:FindFirstChild("GTC_Map")
    local uC = GTC_Map and GTC_Map:FindFirstChild("Stations")
    local uB_1 = uC
    local uG = if uB_1 then 1 else 0
    local uE = 3652 * uG + 1212 * (1 - uG)
    local uF = 2308 * uG + 707 * (1 - uG)
    if not ((uE * 2898 + uF * 3035 + uE * uF) % 16777213 == 9239879) then
        uB_1 = nil
    end
    return uB_1
end
local function fn719(cm)
    local uz = typeof(cm) ~= "Instance" or not cm:IsA("ProximityPrompt")
    if uz then
        return false
    elseif not rT(fireproximityprompt) then
        r9("fireproximityprompt")
        return false
    else
        local uz_1 = pcall(fireproximityprompt, cm)
        return uz_1
    end
end
local function fn735()
    local uh = rI()
    local ui = uh ~= nil and uh.Health > 0 and sx() ~= nil
    return ui
end
local function fn745()
    local xk = require(r8)
    local xl = {}
    local xn = xk.Milestones or {}
    for i, v in ipairs(xn) do
        table.insert(xl, v.Minutes)
    end
    return xl
end
local function fn753(bw)
    local t6 = bw and bw.object
    if type(t6) ~= "table" then
        return nil, nil
    end
    local t6_1 = sv(bw)
    if t6_1 then
        local t8_1 = type(t6.name) == "string" and t6_1.byName[t6.name]
        local t9 = t8_1
        if not t9 then
            local t8_2 = type(t6.short) == "string" and t6_1.byName[t6.short]
            t9 = t8_2
        end
        local t8_3 = t9
        if t8_3 then
            return t8_3, t6_1
        end
        local t8_4 = sz[tostring(t6.tier)]
        return t8_4, t6_1
    end
    local t8_5 = sz[tostring(t6.tier)]
    return t8_5, t6_1
end
local function fn784()
    connection2:Disconnect()
end
local function fn793(Y)
    return type(Y) == "function"
end
local function fn808()
    local uK = sg()
    if not uK then
        r9("workspace.GTC_Map.Stations")
        return {}
    end
    local uL = {}
    for i, child in ipairs(uK:GetChildren()) do
        if child:IsA("Model") then
            local SeatA = child:FindFirstChild("SeatA", true)
            local SeatB = child:FindFirstChild("SeatB", true)
            if SeatA and SeatB then
                table.insert(uL, { model = child, seatA = SeatA, seatB = SeatB, inDuel = child:GetAttribute("InDuel") == true })
            end
        end
    end
    table.sort(uL, function(cE, cF)
        local Position2
        local Position
        Position, Position2 = cE.seatA.Position, cF.seatA.Position
        if Position.X ~= Position2.X then
            return Position.X < Position2.X
        end
        return Position.Z < Position2.Z
    end)
    return uL
end
local function fn810()
    local vv = rE()
    if not vv then
        return false
    end
    local vw = vv.Parent
    while true do
        if vw and vw.Parent then
            local vx_2 = vw:IsA("Model") and vw.Parent == sg()
            if vx_2 then
                break
            end
            vw = vw.Parent
            continue
        end
        break
    end
    local vx_3 = not vw
    local vD = if vx_3 then 1 else 0
    local vB = 2156 * vD + 1662 * (1 - vD)
    local vC = 2967 * vD + 552 * (1 - vD)
    if not ((vB * 2318 + vC * 2680 + vB * vC) % 16777213 == 2568807) then
        vx_3 = not vw:IsA("Model")
    end
    if vx_3 then
        return false
    elseif vw:GetAttribute("InDuel") then
        return false
    else
        local SeatA = vw:FindFirstChild("SeatA", true)
        local SeatB = vw:FindFirstChild("SeatB", true)
        local vw_1 = vv == SeatA and SeatB
        local vv_1 = vv == SeatB and SeatA
        local vG = if vv_1 then 1 else 0
        local vE = 3759 * vG + 4026 * (1 - vG)
        local vF = 62 * vG + 255 * (1 - vG)
        if not ((vE * 769 + vF * 3502 + vE * vF) % 16777213 == 3340853) then
            vv_1 = nil
        end
        local vx_5 = vw_1 or vv_1
        local vw_2 = not vx_5 or not vx_5:IsA("Seat")
        if vw_2 then
            return false
        end
        return vx_5.Occupant == nil
    end
end
local function fn811(ah)
    return (tostring(ah):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn817(e3)
    sf.State.AutoRejoin = e3 == true
end
local function fn861()
    local ub = rR()
    local uc = ub and ub:FindFirstChildOfClass("Humanoid")
    return uc or nil
end
local function fn874(fU)
    if fU then
        sE("AutoPlaytime", sl, 30)
    else
        sc("AutoPlaytime")
    end
end
local function fn905(eP)
    if eP then
        sE("AutoAI", function()
            if r_() then
                sq.StationStatus = "Requested AI opponent"
                task.wait(3)
            end
        end, 1.5)
    else
        sc("AutoAI")
    end
end
local function fn988()
    su += 1
end
local function fn1065()
    local uk = rI()
    return uk and uk.SeatPart or nil
end
local function fn1092(eW)
    if eW then
        sE("AutoJoin", function()
            local wN = if sB() then 1 else 0
            if wN == 1 then
                return
            end
            sb()
        end, 1.5)
    else
        sc("AutoJoin")
        sq.StationStatus = "Idle"
    end
end
local function fn1105()
    local vm = sf.State.Duel == true or rE() ~= nil
    return vm
end
local function fn1118(dO)
    local vK_1
    local vI = dO.sides and dO.sides[dO.you]
    local vI_2
    if type(vI) ~= "table" then
        return 0
    end
    local vI_1 = tonumber(vI.cash) or 0
    if vI_1 < 1 then
        return 0
    end
    vK_1, vI_2 = rY(dO)
    if not vK_1 or vK_1 <= 0 then
        return 0
    end
    local vL_2 = vI_2 and vI_2.mean or vK_1
    if not vL_2 or vL_2 <= 0 then
        vL_2 = vK_1
    end
    local max = math.max
    local vM = tonumber(dO.totalLots) or 0
    local vN = (tonumber(dO.lot))
    local vS = if vN then 1 else 0
    local vQ = 88 * vS + 1427 * (1 - vS)
    local vR = 3650 * vS + 2404 * (1 - vS)
    if not ((vQ * 1597 + vR * 4051 + vQ * vR) % 16777213 == 15247886) then
        vN = 0
    end
    local vO = max(0, vM - vN)
    local vI_6 = vI_1 / (vO + 1)
    local vM_1 = sf.State.Aggression or 1
    local vM_2 = math.floor(vM_1 * vK_1 * vI_6 / vL_2)
    if vM_2 < 1 and vI_1 > vO then
        vM_2 = 1
    end
    return math.clamp(vM_2, 0, vI_1)
end
local function fn1121()
    return LocalPlayer.Character
end
local function fn1134(eG)
    local State = sf.State
    local wy = tonumber(eG) or 0.35
    State.BidDelay = math.clamp(wy, 0, 3)
end
local function fn1142(V)
    local tB = typeof(cloneref) == "function" and typeof(V) == "Instance"
    if tB then
        return cloneref(V)
    end
    return V
end
local function fn1158(ew)
    local wh = sG[ew]
    if not wh then
        return
    end
    wh.stopped = true
    local wi = wh.thread and coroutine.status(wh.thread) ~= "dead"
    if wi then
        pcall(task.cancel, wh.thread)
    end
    sG[ew] = nil
end
local function fn1168(cJ)
    local uV = cJ:IsA("Seat") and cJ.Occupant ~= nil
    return uV
end
local function fn1187()
    local tN = require(sn)
    local tO = {}
    local tQ = tN.Themes or {}
    for k, v in pairs(tQ) do
        local tN_1 = {}
        local tQ_1 = v.list or {}
        for i, v in ipairs(tQ_1) do
            table.insert(tN_1, { name = v.name, short = v.short, value = v.value, weight = v.weight })
        end
        tO[k] = { title = v.title, entries = tN_1 }
    end
    return tO
end
local function fn1205()
    connection:Disconnect()
end
local function fn1213(eE)
    local State = sf.State
    local wu = tonumber(eE) or 1
    State.Aggression = math.clamp(wu, 0.25, 3)
end
local function fn1255(eK)
    sf.State.AutoDraft = eK == true
    if eK then
        sq.DraftStatus = "Waiting for a lot"
        rH.handled = nil
        if rH.state then
            task.spawn(se, rH.state)
        end
    else
        sq.DraftStatus = "Idle"
    end
end
rC = nil
LocalPlayer = nil
rE = nil
rF = nil
rG = nil
rH = nil
rI = nil
rJ = nil
rK = nil
rQ = nil
rR = nil
rS = nil
rT = nil
rU = nil
rV = nil
rX = nil
rY = nil
rZ = nil
r_ = nil
r0 = nil
r2 = nil
connection2 = nil
CoreGui = nil
r5 = nil
r6 = nil
r7 = nil
r8 = nil
r9 = nil
sb = nil
sc = nil
sd = nil
se = nil
sf = nil
sg = nil
sh = nil
si = nil
sk = nil
sl = nil
sm = nil
sn = nil
local Players, Workspace, rM, rN, Lighting, rP, TeleportService, TweenService, GuiService, HttpService
so = nil
sp = nil
sq = nil
connection = nil
st = nil
su = nil
sv = nil
sx = nil
sz = nil
sB = nil
sC = nil
sD = nil
sE = nil
sF = nil
sG = nil
sH = nil
sI = nil
sJ = nil
local VirtualUser, UserInputService, sy, RunService, sK, sQ, sS, sT
local sR_5, sR_16
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TweenService, TeleportService, Lighting, Workspace, LocalPlayer, sD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local sL = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TweenService = game:GetService("TweenService")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local sM = "OuroborosChooseTheStrongerAnime"
sD = fn426
if getgenv then
    getgenv().gethui = sD
end
sf, sC, sy, rN, rT, rK = nil, nil, nil, nil, nil, nil
pcall(fn489)
local function sO(u)
    local tq
    local tr
    local tp
    tp = nil
    tq = nil
    tr = nil
    local ts = u ~= ""
    local tt = type(u) == "string" and ts
    assert(tt, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    tq = getgenv()
    assert(type(tq) == "table", "getgenv did not return a table")
    local ts_1 = tq[u]
    if ts_1 ~= nil then
        local tt_1 = type(ts_1) == "table" and type(ts_1.Unload) == "function"
        assert(tt_1, "Namespace is occupied")
        ts_1.Unload()
        assert(tq[u] == nil, "Previous instance did not release its namespace")
    end
    tr = {}
    tp = { State = {}, Unloaded = false }
    tp.Track = function(A)
        assert(type(A) == "function", "Cleanup must be callable")
        if tp.Unloaded then
            A()
        else
            table.insert(tr, A)
        end
        return A
    end
    tp.Unload = function()
        local ti_1
        local th_1
        if tp.Unloaded then
            return
        end
        tp.Unloaded = true
        local tf = {}
        local tm = #tr
        local tl = -1
        while false and tm <= 1 or true and tm >= 1 do
            local tn = tm
            local tg_1 = table.remove(tr, tn)
            th_1, ti_1 = pcall(tg_1)
            if not th_1 then
                table.insert(tf, tostring(ti_1))
            end
            tm += tl
        end
        table.clear(tp.State)
        if #tf > 0 then
            error("Cleanup incomplete: " .. table.concat(tf, "; "), 0)
        end
        if tq[u] == tp then
            tq[u] = nil
        end
    end
    tq[u] = tp
    return tp
end
rN = function(N, O)
    local tz = type(N) == "table" and type(N.Track) == "function"
    assert(tz, "FeatureAPI required")
    local tz_1 = type(O) == "table" and type(O.OnUnload) == "function"
    assert(tz_1, "UI library required")
    assert(type(O.Unload) == "function", "UI unload required")
    N.Track(function()
        if not O.Unloaded then
            O:Unload()
        end
    end)
    O:OnUnload(function()
        N.Unload()
    end)
end
sf = sO(sM)
local sN = fn1142
rT = fn793
rK = fn564
local sP = sN(sL)
sC = sN(Workspace)
sy = {}
st, sm, sd = nil, nil, nil
if (sd or 1 or sd and not sm) and (sd and sd or not st and sm) and not ((sd or 1 or sd and not sm) and (sd and sd or not st and sm)) then
    sd = "#ffb3d9"
    st = "#6a7080"
    sm = fn811
else
    st = "#ffb3d9"
    sm = "#6a7080"
    sd = fn811
end
if (sd or false or (sd or 10)) and (not sd or not sd) or (sd and sd and 10) or (sd or sd or false or (not sd or not sd) and (not sd and 10)) and false or not ((sd or false or (sd or 10)) and (not sd or not sd) or (sd and sd and 10) or (sd or sd or false or (not sd or not sd) and (not sd and 10)) and false) then
    sy.status = fn211
    sy.field = fn673
else
    sy.status = fn211
    sy.field = fn673
end
sq, sh, rS, r9 = nil, nil, nil, nil
sq = {
    DraftStatus = "Idle",
    StationStatus = "Idle",
    RewardStatus = "Idle",
    CoinStatus = "Idle",
    LotStatus = "No lot"
}
sh = {}
r9 = fn395
sM = function(ax, ...)
    local tF
    local tE
    tE = nil
    tF = nil
    tF = table.pack(...)
    tE = nil
    local tG = coroutine.create(function()
        tE = table.pack(pcall(ax, table.unpack(tF, 1, tF.n)))
    end)
    coroutine.resume(tG)
    if not tE then
        return false, "call did not finish"
    end
    return table.unpack(tE, 1, tE.n)
end
sL = fn431
rS = sL(sP, "GTC_Remotes", 20)
if not rS then
    r9("GTC_Remotes")
end
sO, sk, sQ, r5, r2, rX, rP, rM, rF, sH, sF, sK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sN = 36
repeat
    local sR_1 = (sN * 4 + 1) % 7 + 1
    if sR_1 <= 4 then
        if sR_1 <= 2 then
            if sR_1 <= 1 then
                sS = (vector.create((sN * 4 + 1) % 11 + 1, (sN * 9 + 3) % 13 + 1, (sN * 6 + 3) % 17 + 1))
                sT = (vector.create((sN * 6 + 4) % 11 + 1, (sN * 7 + 5) % 13 + 1, (sN * 15 + 15) % 17 + 1))
                local Ej = vector.cross(sS, sT)
                local Ek = vector.dot(sS, sT)
                if vector.dot(Ej, Ej) + Ek * Ek == vector.dot(sS, sS) * vector.dot(sT, sT) + 4 then
                    sK = sk("DraftAction")
                else
                    sk = sK("DraftAction")
                end
                sN = (sN + 23) % 56
            else
                sS = (vector.create((sN * 1 + 9) % 11 + 1, (sN * 11 + 7) % 13 + 1, (sN * 13 + 8) % 17 + 1))
                sT = (vector.create((sN * 7 + 7) % 11 + 1, (sN * 6 + 11) % 13 + 1, (sN * 6 + 15) % 17 + 1))
                local sU_1 = (vector.create((sN * 3 + 2) % 5 + 1, (sN * 3 + 6) % 7 + 1, (sN * 2 + 6) % 9 + 1))
                if math.abs((vector.angle(sS, sT, sU_1))) - math.abs((vector.angle(sT, sS, sU_1))) == 5 then
                    sK = sQ("DuelState")
                else
                    sQ = sK("DuelState")
                end
                sN = (sN + 30) % 56
            end
        elseif sR_1 <= 3 then
            if sN * 122538413 + 13 + 6 >= sN * 122538413 + 13 + 6 + 3 then
                sK = r2("PlayAI")
                r5 = r2("DailyRewardState")
            else
                r5 = sK("PlayAI")
                r2 = sK("DailyRewardState")
            end
            sN = (sN + 51) % 56
        else
            if (sN * 2 + 3) * 16 % 3 == ((sN * 2 + 3) * 16 + 5) % 3 then
                rM = rP("DailyRewardClaim")
                rX = rP("PlaytimeRewardState")
                rF = rP("PlaytimeRewardClaim")
                sK = rP("GroupRewardState")
            else
                rX = sK("DailyRewardClaim")
                rP = sK("PlaytimeRewardState")
                rM = sK("PlaytimeRewardClaim")
                rF = sK("GroupRewardState")
            end
            sN = (sN + 37) % 56
        end
    elseif sR_1 <= 6 then
        if sR_1 <= 5 then
            local sR_2 = {
                "mauhbmtbk",
                "qca",
                "vwtphxvqvto",
                "sfahq",
                "twqipftymsbr",
                "gycrtoemiden",
                "orbskliqldu",
                "gdi",
                "wxnujp",
                "czuqvva",
                "oyepuj",
                "hmgxbot"
            }
            if sR_2[(sN * 24 + 106) % 12 + 1] < sR_2[(sN * 24 + 106) % 12 + 1] then
                sK = sF("GroupRewardClaim")
                sH = { Themes = {}, TitleToTheme = {} }
            else
                sH = sK("GroupRewardClaim")
                sF = { Themes = {}, TitleToTheme = {} }
            end
            sN = (sN + 30) % 56
        else
            local sR_3 = (vector.create((sN * 5 + 7) % 11 + 1, (sN * 11 + 13) % 13 + 1, (sN * 14 + 9) % 17 + 1))
            sS = (vector.create((sN * 3 + 5) % 11 + 1, (sN * 8 + 5) % 13 + 1, (sN * 3 + 11) % 17 + 1))
            sT = (vector.create((sN * 3 + 3) % 5 + 1, (sN * 5 + 2) % 7 + 1, (sN * 3 + 4) % 9 + 1))
            if math.abs((vector.angle(sR_3, sS, sT))) - math.abs((vector.angle(sS, sR_3, sT))) == 2 then
                sk = fn232
            else
                sK = fn232
            end
            sN = (sN + 51) % 56
        end
    else
        local En = bit32.rrotate(bit32.bxor(bit32.lrotate(sN, 11), string.byte(tostring(sO))), 1)
        if bit32.bxor(bit32.lrotate(bit32.bxor(En, 382449267), 22), 2630202093) ~= bit32.lrotate(En, 22) then
            sK = sO("DraftState")
        else
            sO = sK("DraftState")
        end
        sN = (sN + 23) % 56
    end
until (sN * 19 + 47) % 56 == 10
sS, sT = nil, nil
local sR_4 = 9
repeat
    sK = (sR_4 * 1 + 0) % 2 + 1
    if sK <= 1 then
        if (sR_4 * 1 + 1) * 13 % 4 == ((sR_4 * 1 + 1) * 13 + 12) % 4 then
            sT = sS
        else
            sS = sT
        end
        sR_4 = (sR_4 + 1) % 16
    else
        if sR_4 * 120969825 + 10 + 4 <= sR_4 * 120969825 + 10 + 4 + 2 then
            sS = sL(sP, "Draft", 20)
        else
            sP = sS(sL, "Draft", 20)
        end
        sR_4 = (sR_4 + 9) % 16
    end
until (sR_4 * 5 + 2) % 16 == 1
if sT then
    sT = sS:FindFirstChild("Objects")
end
sn = sT
if not sn then
    r9("ReplicatedStorage.Draft.Objects")
else
    sL, sR_5, sN = nil, nil, nil
    sK = 3
    repeat
        sS = (sK * 1 + 1) % 2 + 1
        if sS <= 1 then
            sS = (vector.create((sK * 6 + 7) % 11 + 1, (sK * 2 + 11) % 13 + 1, (sK * 8 + 16) % 17 + 1))
            sT = (vector.create((sK * 6 + 6) % 11 + 1, (sK * 7 + 6) % 13 + 1, (sK * 14 + 7) % 17 + 1))
            local sU_2 = (vector.create((sK * 1 + 8) % 11 + 1, (sK * 11 + 2) % 13 + 1, (sK * 13 + 8) % 17 + 1))
            local sV = (vector.create((sK * 1 + 1) % 5 + 1, (sK * 1 + 6) % 7 + 1, (sK * 5 + 3) % 9 + 1))
            if vector.dot(vector.cross(sS, (vector.cross(sT, sU_2))), sV) == vector.dot(sT * vector.dot(sS, sU_2) - sU_2 * vector.dot(sS, sT), sV) then
                sL, sR_5 = sM(fn1187)
            else
                sM, sL = sR_5(fn1187)
            end
            sK = (sK + 3) % 8
        else
            if (sK * 2 + 3) * 16 % 3 == ((sK * 2 + 3) * 16 + 7) % 3 then
                sL = sN
            else
                sN = sL
            end
            sK = (sK + 3) % 8
        end
    until (sK * 3 + 4) % 8 == 7
    if sN then
        sK = 4
        repeat
            sL = (vector.create((sK * 5 + 8) % 11 + 1, (sK * 7 + 2) % 13 + 1, (sK * 2 + 1) % 17 + 1))
            sS = (vector.create((sK * 2 + 8) % 11 + 1, (sK * 5 + 11) % 13 + 1, (sK * 12 + 1) % 17 + 1))
            local El = vector.cross(sL, sS)
            local Em = vector.dot(sL, sS)
            if vector.dot(El, El) + Em * Em == vector.dot(sL, sL) * vector.dot(sS, sS) + 3 then
                sR_5 = type(sN) == "table"
            else
                sN = type(sR_5) == "table"
            end
            sK = (sK + 1) % 8
        until (sK * 1 + 2) % 8 == 7
    end
    if sN then
        for k, v in pairs(sR_5) do
            sK = {}
            sN, sL = 0, 0
            for i, v in ipairs(v.entries) do
                local sR_6 = tonumber(v.value) or 0
                sS = sR_6
                local sR_7 = (tonumber(v.weight))
                local sZ = if sR_7 then 1 else 0
                local sX = 3657 * sZ + 2701 * (1 - sZ)
                local sY = 3341 * sZ + 448 * (1 - sZ)
                if not ((sX * 3818 + sY * 3926 + sX * sY) % 16777213 == 5742803) then
                    sR_7 = 1
                end
                sT = sR_7
                if type(v.name) == "string" then
                    sK[v.name] = sS
                end
                local sR_8 = type(v.short) == "string" and sK[v.short] == nil
                if sR_8 then
                    sK[v.short] = sS
                end
                sN += sT
                sL += sS * sT
            end
            local Themes = sF.Themes
            sS = v.title
            sT = sN > 0 and sL / sN
            sL = sT or 1
            Themes[k] = { title = sS, byName = sK, mean = sL }
            if type(v.title) == "string" then
                sF.TitleToTheme[v.title:upper()] = k
            end
        end
    else
        r9("Draft.Objects values")
    end
end
sz, su, rH, sG, sv, rY, rR, rI, sx, r6, rE, so, r7, rG, sg, rU, rQ, sJ, si, r0, rC, sB, sb, rV, r_, sI, se, sE, sc, sl, rJ, rZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sK = 16
repeat
    sL = (sK * 2 + 0) % 13 + 1
    if sL <= 7 then
        if sL <= 4 then
            if sL <= 2 then
                if sL <= 1 then
                    sN = {
                        "erohxt",
                        "gkhpwyoy",
                        "ptxgpzw",
                        "irb",
                        "sehdxrpgqcfj",
                        "ekbafkek",
                        "hse",
                        "hvyvgx",
                        "rxbtytg",
                        "nfsph",
                        "vjqmr",
                        "vjnv",
                        "nnwfzpdcna",
                        "nhmregate",
                        "dkj"
                    }
                    if sN[(sK * 48 + 8) % 15 + 1] <= sN[(sK * 48 + 8) % 15 + 1] then
                        sJ = fn278
                        si = fn465
                        r0 = fn137
                        rC = fn468
                    else
                        rC = fn278
                        r0 = fn465
                        si = fn137
                        sJ = fn468
                    end
                    sK = (sK + 72) % 104
                else
                    sN = { "wlizurxm", "cxbdmp", "yfp", "cdlhsjqyiv", "iherleydex", "isqcjz", "rcs", "vrkjwwew" }
                    if sN[(sK * 80 + 23) % 8 + 1] < sN[(sK * 80 + 23) % 8 + 1] then
                        r_ = fn1105
                        rH = fn474
                        sb = fn810
                        rV = fn632
                        sB = { state = nil, handled = nil }
                    else
                        sB = fn1105
                        sb = fn474
                        rV = fn810
                        r_ = fn632
                        rH = { state = nil, handled = nil }
                    end
                    sK = (sK + 7) % 104
                end
            elseif sL <= 3 then
                sN = (vector.create((sK * 4 + 3) % 11 + 1, (sK * 9 + 10) % 13 + 1, (sK * 7 + 2) % 17 + 1))
                local sR_10 = (vector.create((sK * 2 + 7) % 11 + 1, (sK * 3 + 5) % 13 + 1, (sK * 15 + 16) % 17 + 1))
                sS = (vector.create((sK * 3 + 5) % 5 + 1, (sK * 2 + 6) % 7 + 1, (sK * 3 + 1) % 9 + 1))
                if math.abs((vector.angle(sN, sR_10, sS))) - math.abs((vector.angle(sR_10, sN, sS))) == 0 then
                    sI = fn1118
                else
                    sB = fn1118
                end
                sK = (sK + 20) % 104
            else
                local Ev = bit32.rrotate(bit32.bxor(bit32.lrotate(sK, 16), string.byte(tostring(sB))), 1)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Ev, 3456803196), 8), 178355406) ~= bit32.lrotate(Ev, 8) then
                    sG = fn209
                    se = {}
                else
                    se = fn209
                    sG = {}
                end
                sK = (sK + 33) % 104
            end
        elseif sL <= 6 then
            if sL <= 5 then
                if (sK * 2 + 5) * 4 % 3 == ((sK * 2 + 5) * 4 + 6) % 3 then
                    sE = function(ek, el, em)
                        local wb
                        wb = sG[ek]
                        if wb and wb.thread then
                            return
                        end
                        wb = { stopped = false }
                        sG[ek] = wb
                        wb.thread = task.spawn(function()
                            local v6_2
                            while true do
                                local v5 = rK() and not wb.stopped
                                local v5_2
                                if v5 then
                                    v5_2, v6_2 = pcall(el)
                                    if not v5_2 then
                                        sq.DraftStatus = "Error: " .. tostring(v6_2)
                                    end
                                    if wb.stopped then
                                        break
                                    end
                                    task.wait(em)
                                    continue
                                end
                                break
                            end
                        end)
                    end
                    sc = fn1158
                    sf.Track(fn212)
                    sf.State.Aggression = 1
                    sf.State.BidDelay = 0.35
                    sf.State.TravelSpeed = 90
                    sf.State.Duel = false
                    sf.SetAggression = fn1213
                    sf.SetBidDelay = fn1134
                    sf.SetTravelSpeed = fn663
                    sf.SetAutoDraft = fn1255
                    sf.SetAutoAI = fn905
                    sf.SetAutoJoin = fn1092
                    sf.SetAutoRejoin = fn817
                    sl = function()
                        local wP = not rM
                        local wP_5
                        local wQ = not rP or wP
                        local wQ_4
                        if wQ then
                            return
                        end
                        wP_5, wQ_4 = pcall(function()
                            return rP:InvokeServer()
                        end)
                        local wR = not wP_5 or type(wQ_4) ~= "table"
                        if wR then
                            return
                        end
                        local wR_6 = wQ_4.Claimed or {}
                        local wR_7 = (tonumber(wQ_4.LiveSeconds))
                        local wX = if wR_7 then 1 else 0
                        local wV = 3955 * wX + 399 * (1 - wX)
                        local wW = 2673 * wX + 2458 * (1 - wX)
                        if not ((wV * 2377 + wW * 1645 + wV * wW) % 16777213 == 7592622) then
                            wR_7 = 0
                        end
                        local wQ_5 = 0
                        local wS = wR_7
                        local wR_8 = {}
                        local wT = sf.State.Milestones
                        local w_ = if wT then 1 else 0
                        local wY = 877 * w_ + 2710 * (1 - w_)
                        local wZ = 4045 * w_ + 1729 * (1 - w_)
                        if not ((wY * 1815 + wZ * 3136 + wY * wZ) % 16777213 == 1047127) then
                            wT = wR_8
                        end
                        for i, v in ipairs(wT) do
                            local w5 = v
                            local wR_9 = not wR_6[tostring(w5)] and wS >= w5 * 60
                            if wR_9 then
                                local wR_10 = pcall(function()
                                    return rM:InvokeServer(w5)
                                end)
                                if wR_10 then
                                    wQ_5 += 1
                                    task.wait(0.4)
                                end
                            end
                        end
                        local wP_8 = wQ_5 > 0 and string.format("Claimed %d playtime reward(s)", wQ_5)
                        local wQ_6 = wP_8
                        local w__2 = if wQ_6 then 1 else 0
                        local wY_2 = 3950 * w__2 + 3190 * (1 - w__2)
                        local wZ_2 = 2647 * w__2 + 258 * (1 - w__2)
                        if not ((wY_2 * 2441 + wZ_2 * 1338 + wY_2 * wZ_2) % 16777213 == 6862073) then
                            wQ_6 = "Playtime up to date"
                        end
                        sq.RewardStatus = wQ_6
                    end
                else
                    sl = function(ek, el, em)
                        local wb
                        wb = sG[ek]
                        if wb and wb.thread then
                            return
                        end
                        wb = { stopped = false }
                        sG[ek] = wb
                        wb.thread = task.spawn(function()
                            local v6_1
                            while true do
                                local v5 = rK() and not wb.stopped
                                local v5_1
                                if v5 then
                                    v5_1, v6_1 = pcall(el)
                                    if not v5_1 then
                                        sq.DraftStatus = "Error: " .. tostring(v6_1)
                                    end
                                    if wb.stopped then
                                        break
                                    end
                                    task.wait(em)
                                    continue
                                end
                                break
                            end
                        end)
                    end
                    sE = fn1158
                    sc.Track(fn212)
                    sc.State.Aggression = 1
                    sc.State.BidDelay = 0.35
                    sc.State.TravelSpeed = 90
                    sc.State.Duel = false
                    sc.SetAggression = fn1213
                    sc.SetBidDelay = fn1134
                    sc.SetTravelSpeed = fn663
                    sc.SetAutoDraft = fn1255
                    sc.SetAutoAI = fn905
                    sc.SetAutoJoin = fn1092
                    sc.SetAutoRejoin = fn817
                    sf = function()
                        local wP = not rM
                        local wP_1
                        local wQ = not rP or wP
                        local wQ_1
                        if wQ then
                            return
                        end
                        wP_1, wQ_1 = pcall(function()
                            return rP:InvokeServer()
                        end)
                        local wR = not wP_1 or type(wQ_1) ~= "table"
                        if wR then
                            return
                        end
                        local wR_1 = wQ_1.Claimed or {}
                        local wR_2 = (tonumber(wQ_1.LiveSeconds))
                        local wX = if wR_2 then 1 else 0
                        local wV = 3955 * wX + 399 * (1 - wX)
                        local wW = 2673 * wX + 2458 * (1 - wX)
                        if not ((wV * 2377 + wW * 1645 + wV * wW) % 16777213 == 7592622) then
                            wR_2 = 0
                        end
                        local wQ_2 = 0
                        local wS = wR_2
                        local wR_3 = {}
                        local wT = sf.State.Milestones
                        local w_ = if wT then 1 else 0
                        local wY = 877 * w_ + 2710 * (1 - w_)
                        local wZ = 4045 * w_ + 1729 * (1 - w_)
                        if not ((wY * 1815 + wZ * 3136 + wY * wZ) % 16777213 == 1047127) then
                            wT = wR_3
                        end
                        for i, v in ipairs(wT) do
                            local w5 = v
                            local wR_4 = not wR_1[tostring(w5)] and wS >= w5 * 60
                            if wR_4 then
                                local wR_5 = pcall(function()
                                    return rM:InvokeServer(w5)
                                end)
                                if wR_5 then
                                    wQ_2 += 1
                                    task.wait(0.4)
                                end
                            end
                        end
                        local wP_4 = wQ_2 > 0 and string.format("Claimed %d playtime reward(s)", wQ_2)
                        local wQ_3 = wP_4
                        local w__1 = if wQ_3 then 1 else 0
                        local wY_1 = 3950 * w__1 + 3190 * (1 - w__1)
                        local wZ_1 = 2647 * w__1 + 258 * (1 - w__1)
                        if not ((wY_1 * 2441 + wZ_1 * 1338 + wY_1 * wZ_1) % 16777213 == 6862073) then
                            wQ_3 = "Playtime up to date"
                        end
                        sq.RewardStatus = wQ_3
                    end
                end
                sK = (sK + 59) % 104
            else
                if ((not r0 or r0) and (so and not r0) or not r0 and not r0 and (not r0 and r0)) and not ((not r0 or r0) and (so and not r0) or not r0 and not r0 and (not r0 and r0)) then
                    rZ = fn130
                    rJ = fn657
                else
                    rJ = fn130
                    rZ = fn657
                end
                sK = (sK + 20) % 104
            end
        else
            local Do = bit32.rrotate(bit32.bxor(bit32.lrotate(sK, 31), string.byte(tostring(rZ))), 18)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Do, 941290817), 1638495536), (bit32.bxor(bit32.band(Do, 3353676478), 1011027273))), 1638495536), 1011027273) ~= Do then
                rY = { F = 4.4, D = 9.25, B = 19.5, ["S+"] = 59, X = 80, S = 41, A = 28.5, G = 2.15, E = 6.65, C = 13 }
                sz = fn100
                sv = fn753
                rI = fn1121
                rR = fn861
            else
                sz = { X = 80, ["S+"] = 59, S = 41, A = 28.5, B = 19.5, C = 13, D = 9.25, E = 6.65, F = 4.4, G = 2.15 }
                sv = fn100
                rY = fn753
                rR = fn1121
                rI = fn861
            end
            sK = (sK + 33) % 104
        end
    elseif sL <= 10 then
        if sL <= 9 then
            if sL <= 8 then
                sN = (vector.create((sK * 4 + 9) % 11 + 1, (sK * 7 + 8) % 13 + 1, (sK * 6 + 15) % 17 + 1))
                local sR_11 = (vector.create((sK * 1 + 8) % 11 + 1, (sK * 2 + 8) % 13 + 1, (sK * 7 + 17) % 17 + 1))
                local Dx = vector.dot(sN, sR_11)
                if Dx * Dx >= vector.dot(sN, sN) * vector.dot(sR_11, sR_11) + 1 then
                    r6 = fn298
                    sx = fn735
                else
                    sx = fn298
                    r6 = fn735
                end
                sK = (sK + 72) % 104
            else
                sN = (vector.create((sK * 1 + 1) % 11 + 1, (sK * 10 + 4) % 13 + 1, (sK * 8 + 15) % 17 + 1))
                local sR_12 = (vector.create((sK * 7 + 5) % 11 + 1, (sK * 6 + 7) % 13 + 1, (sK * 9 + 6) % 17 + 1))
                sS = (vector.create((sK * 1 + 7) % 11 + 1, (sK * 5 + 12) % 13 + 1, (sK * 1 + 8) % 17 + 1))
                if vector.dot(vector.cross(sN, sR_12), sS) == vector.dot(vector.cross(sR_12, sS), sN) then
                    rE = fn1065
                else
                    rJ = fn1065
                end
                sK = (sK + 7) % 104
            end
        else
            if sK * 27266307 + 1 + 5 <= sK * 27266307 + 1 + 5 + 3 then
                su = 0
            else
                rR = 0
            end
            sK = (sK + 33) % 104
        end
    elseif sL <= 12 then
        if sL <= 11 then
            sL = (vector.create((sK * 1 + 9) % 11 + 1, (sK * 7 + 11) % 13 + 1, (sK * 3 + 6) % 17 + 1))
            sN = (vector.create((sK * 5 + 5) % 11 + 1, (sK * 6 + 4) % 13 + 1, (sK * 15 + 12) % 17 + 1))
            local sR_13 = (vector.create((sK * 3 + 4) % 11 + 1, (sK * 10 + 4) % 13 + 1, (sK * 12 + 12) % 17 + 1))
            sS = (vector.create((sK * 1 + 1) % 5 + 1, (sK * 2 + 5) % 7 + 1, (sK * 4 + 4) % 9 + 1))
            if vector.dot(vector.cross(sL, (vector.cross(sN, sR_13))), sS) == vector.dot(sN * vector.dot(sL, sR_13) - sR_13 * vector.dot(sL, sN), sS) + 1 then
                r7 = fn988
                so = function(b4, b5)
                    local un
                    un = nil
                    local uo = sx()
                    local uo_7
                    if not uo then
                        return false
                    end
                    su += 1
                    local up = su
                    local Magnitude = (uo.Position - b4).Magnitude
                    if Magnitude < 6 then
                        return true
                    end
                    local max = math.max
                    local us = sf.State.TravelSpeed or 90
                    local ut = max(20, us)
                    local ur_2 = math.clamp(Magnitude / ut, 0.15, 12)
                    local Anchored = uo.Anchored
                    uo.Anchored = true
                    un = TweenService:Create(uo, TweenInfo.new(ur_2, Enum.EasingStyle.Linear), { CFrame = CFrame.new(b4) })
                    un:Play()
                    local us_2 = 0
                    while true do
                        if not (us_2 < ur_2 + 0.5) then
                            if uo.Parent then
                                uo.Anchored = Anchored
                            end
                            if uo_7 then
                                task.wait(b5)
                            end
                            local uo_6 = up == su
                            local uq_5 = rK() and uo_6
                            return uq_5
                        end
                        local ut_2 = up ~= su
                        local uu = not rK() or ut_2
                        if uu then
                            break
                        end
                        if un.PlaybackState == Enum.PlaybackState.Completed then
                            if uo.Parent then
                                uo.Anchored = Anchored
                            end
                            uo_7 = b5 and b5 > 0
                            if uo_7 then
                                task.wait(b5)
                            end
                            local uo_8 = up == su
                            local uq_6 = rK() and uo_8
                            return uq_6
                        end
                        us_2 += task.wait(0.05)
                    end
                    pcall(function()
                        un:Cancel()
                    end)
                    if uo.Parent then
                        uo.Anchored = Anchored
                    end
                    return false
                end
            else
                so = fn988
                r7 = function(b4, b5)
                    local un
                    un = nil
                    local uo = sx()
                    local uo_3
                    if not uo then
                        return false
                    end
                    su += 1
                    local up = su
                    local Magnitude = (uo.Position - b4).Magnitude
                    if Magnitude < 6 then
                        return true
                    end
                    local max = math.max
                    local us = sf.State.TravelSpeed or 90
                    local ut = max(20, us)
                    local ur_1 = math.clamp(Magnitude / ut, 0.15, 12)
                    local Anchored = uo.Anchored
                    uo.Anchored = true
                    un = TweenService:Create(uo, TweenInfo.new(ur_1, Enum.EasingStyle.Linear), { CFrame = CFrame.new(b4) })
                    un:Play()
                    local us_1 = 0
                    while true do
                        if not (us_1 < ur_1 + 0.5) then
                            if uo.Parent then
                                uo.Anchored = Anchored
                            end
                            if uo_3 then
                                task.wait(b5)
                            end
                            local uo_2 = up == su
                            local uq_2 = rK() and uo_2
                            return uq_2
                        end
                        local ut_1 = up ~= su
                        local uu = not rK() or ut_1
                        if uu then
                            break
                        end
                        if un.PlaybackState == Enum.PlaybackState.Completed then
                            if uo.Parent then
                                uo.Anchored = Anchored
                            end
                            uo_3 = b5 and b5 > 0
                            if uo_3 then
                                task.wait(b5)
                            end
                            local uo_4 = up == su
                            local uq_3 = rK() and uo_4
                            return uq_3
                        end
                        us_1 += task.wait(0.05)
                    end
                    pcall(function()
                        un:Cancel()
                    end)
                    if uo.Parent then
                        uo.Anchored = Anchored
                    end
                    return false
                end
            end
            sK = (sK + 33) % 104
        else
            if (sK * 2 + 6) * 10 % 3 == ((sK * 2 + 6) * 10 + 4) % 3 then
                sg = fn719
                rG = fn713
            else
                rG = fn719
                sg = fn713
            end
            sK = (sK + 72) % 104
        end
    else
        sL = {
            "nbvdqiqywndh",
            "cbslhodwfam",
            "sgggsug",
            "ihjqxizwaxc",
            "xpmcba",
            "hpf",
            "irlz",
            "hzcmxcaue",
            "uzu",
            "jneomszwhvgg",
            "ehilacxta",
            "hyqurmtolkn"
        }
        if sL[(sK * 51 + 51) % 12 + 1] < sL[(sK * 51 + 51) % 12 + 1] then
            rQ = fn808
            rU = fn1168
        else
            rU = fn808
            rQ = fn1168
        end
        sK = (sK + 72) % 104
    end
until (sK * 11 + 92) % 104 == 99
r8, sN = nil, nil
sL = 1
repeat
    sK = (sL * 1 + 1) % 2 + 1
    if sK <= 1 then
        sK = { "noplkipgapg", "apul", "zhwvcds", "hzdxvffbv", "qjax", "luv", "bqxv", "pfl" }
        local Dr = sL
        local sR_14 = sK[Dr % 8 + 1]
        if sR_14:len() <= sR_14:gsub("(.)", "%1%1", Dr % 3 % 2 + 1):len() then
            r8 = sP:FindFirstChild("Modules")
        else
            sP = r8:FindFirstChild("Modules")
        end
        sL = (sL + 13) % 16
    else
        sK = (vector.create((sL * 6 + 1) % 11 + 1, (sL * 8 + 7) % 13 + 1, (sL * 7 + 16) % 17 + 1))
        local sR_15 = (vector.create((sL * 5 + 6) % 11 + 1, (sL * 10 + 3) % 13 + 1, (sL * 1 + 11) % 17 + 1))
        local EA = vector.dot(sK, sR_15)
        if EA * EA <= vector.dot(sK, sK) * vector.dot(sR_15, sR_15) then
            sN = r8
        else
            r8 = sN
        end
        sL = (sL + 9) % 16
    end
until (sL * 9 + 0) % 16 == 15
if sN then
    sN = r8:FindFirstChild("PlaytimeRewardsConfig")
end
r8 = sN
sK = {}
if r8 then
    sN, sR_16, sP = nil, nil, nil
    sL = 3
    repeat
        sS = (sL * 1 + 1) % 2 + 1
        if sS <= 1 then
            sS = { "xzahdv", "zxvtax", "uwowewn", "hywyl", "rpvxxwkqco", "nrtxwpvmfs", "fkjxp" }
            local EC = sL
            sT = sS[EC % 7 + 1]
            if sT:len() >= sT:gsub("(.)", "%1%1", EC % 3 % 2 + 1):len() then
                sM, sN = sR_16(fn745)
            else
                sN, sR_16 = sM(fn745)
            end
            sL = (sL + 7) % 16
        else
            if not sN and not sL and (not sR_16 and sP) or (not sR_16 and sR_16 or sR_16 and not sR_16) or not (not sN and not sL and (not sR_16 and sP) or (not sR_16 and sR_16 or sR_16 and not sR_16)) then
                sP = sN
            else
                sN = sP
            end
            sL = (sL + 9) % 16
        end
    until (sL * 5 + 12) % 16 == 11
    if sP then
        sL = 6
        repeat
            sM = {
                "dkmojsv",
                "gyvfmoogdz",
                "knoo",
                "mthsqkdvqruq",
                "eznzomw",
                "zqawhpoahnbs",
                "ophovy",
                "bdvhtwttps",
                "dnmk",
                "vjq",
                "nbbfb",
                "gtgppydjzycc",
                "tuzcizigbv"
            }
            if sM[(sL * 3 + 36) % 13 + 1] < sM[(sL * 3 + 36) % 13 + 1] then
                sR_16 = type(sP) == "table"
            else
                sP = type(sR_16) == "table"
            end
            sL = (sL + 3) % 8
        until (sL * 3 + 6) % 8 == 1
    end
    if sP then
        sK = sR_16
    end
end
if #sK == 0 then
    r9("ReplicatedStorage.Modules.PlaytimeRewardsConfig")
end
sf.State.Milestones = sK
sp = nil
sL = 6
repeat
    sK = (sL * 1 + 1) % 2 + 1
    if sK <= 1 then
        if sL * 115562253 + 10 + 7 >= sL * 115562253 + 10 + 7 + 2 then
            sf.SetAutoCoins = fn311
            sf.MissingBindings = fn109
        else
            sf.SetAutoCoins = fn311
            sf.MissingBindings = fn109
        end
        sL = (sL + 5) % 8
    else
        if sL * 130386957 + 5 + 5 >= sL * 130386957 + 5 + 5 + 1 then
            sp.SetAutoPlaytime = fn874
            sp.SetAutoDaily = fn213
            sp.SetAutoGroup = fn466
            sf = fn218
        else
            sf.SetAutoPlaytime = fn874
            sf.SetAutoDaily = fn213
            sf.SetAutoGroup = fn466
            sp = fn218
        end
        sL = (sL + 7) % 8
    end
until (sL * 5 + 1) % 8 == 3
if sO then
    connection = nil
    sK = 1
    repeat
        sL = (sK * 1 + 0) % 2 + 1
        if sL <= 1 then
            if (not sK and connection and (connection or not sK) and (connection or not sK or (connection or sK)) and ((not connection or not sK or (connection or connection)) and (not sK and connection or (not connection or connection))) or ((not connection or connection) and (not sK and sK) or not connection and not sK and (connection and sK)) and (connection and not sK and (not sK or sK) and (connection and not sK or connection and not sK))) and not (not sK and connection and (connection or not sK) and (connection or not sK or (connection or sK)) and ((not connection or not sK or (connection or connection)) and (not sK and connection or (not connection or connection))) or ((not connection or connection) and (not sK and sK) or not connection and not sK and (connection and sK)) and (connection and not sK and (not sK or sK) and (connection and not sK or connection and not sK))) then
                sf.Track(fn1205)
            else
                sf.Track(fn1205)
            end
            sK = (sK + 3) % 8
        else
            if (connection or not connection or (not sK or connection)) and (not sK and sK or sK and sK) and (not connection or not sK or connection and connection or not sK and not sK and (sK and not connection)) and not ((connection or not connection or (not sK or connection)) and (not sK and sK or sK and sK) and (not connection or not sK or connection and connection or not sK and not sK and (sK and not connection))) then
                sO = connection.OnClientEvent:Connect(onOnClientEvent)
            else
                connection = sO.OnClientEvent:Connect(onOnClientEvent)
            end
            sK = (sK + 1) % 8
        end
    until (sK * 7 + 4) % 8 == 7
end
if sQ then
    connection2 = nil
    sK = 14
    repeat
        sL = (sK * 1 + 1) % 2 + 1
        if sL <= 1 then
            local Ez = bit32.rrotate(bit32.bxor(bit32.lrotate(sK, 30), string.byte(tostring(connection2))), 3)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Ez, 341012573), 3649789218), (bit32.bxor(bit32.band(Ez, 3953954722), 3957768369))), 3649789218), 3957768369) == Ez then
                sf.Track(fn784)
            else
                sf.Track(fn784)
            end
            sK = (sK + 9) % 16
        else
            sL = (vector.create((sK * 7 + 6) % 11 + 1, (sK * 8 + 12) % 13 + 1, (sK * 2 + 15) % 17 + 1))
            sM = (vector.create((sK * 4 + 1) % 11 + 1, (sK * 8 + 5) % 13 + 1, (sK * 4 + 13) % 17 + 1))
            local Ex = vector.cross(sL, sM)
            local Ey = vector.dot(sL, sM)
            if vector.dot(Ex, Ex) + Ey * Ey == vector.dot(sL, sL) * vector.dot(sM, sM) + 4 then
                sQ = connection2.OnClientEvent:Connect(onOnClientEvent2)
            else
                connection2 = sQ.OnClientEvent:Connect(onOnClientEvent2)
            end
            sK = (sK + 7) % 16
        end
    until (sK * 13 + 5) % 16 == 11
end
sM = function()
    local gP
    gP = "https://discord.gg/synapsex"
    local gQ = "https://rscripts.net/@Ouroboros"
    local gO = "v0.3"
    local gN = "Choose the Stronger Anime!"
    local gR = "https://ouroboros-hub-rbx.web.app/"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    rN(sf, Library)
    local function g_(g0, g1)
        local xY = rT(setclipboard) and setclipboard
        local xZ = xY
        if not xZ then
            local xY_1 = rT(toclipboard) and toclipboard
            xZ = xY_1 or nil
        end
        local xY_2 = xZ
        if not xY_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local xZ_1 = pcall(xY_2, g0)
        if xZ_1 then
            Library:Notify(g1)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        g_(gP, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = gP, Copyable = true }, "|", gN, "|", gO },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local he = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local function hf(hg)
        hg:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = gP,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        return hg
    end
    local function hi(hj)
        return hf(hj:AddLeftGroupbox("Discord", "message-circle"))
    end
    hi(he[2])
    hi(he[3])
    hi(he[4])
    local hl = {}
    local function hm()
        local AutoWinGroup = he[2]:AddLeftGroupbox("Auto Win", "swords")
        hl[1] = AutoWinGroup:AddLabel(sy.status(sq.DraftStatus), true)
        hl[2] = AutoWinGroup:AddLabel(sy.status(sq.LotStatus), true)
        AutoWinGroup:AddToggle("AutoDraft", {
            Text = "Instant Auto Win (Best Draft Snipe)",
            Tooltip = "Reads the hidden value of every lot and bids only what it is worth",
            Default = false,
            Callback = sf.SetAutoDraft
        })
        AutoWinGroup:AddSlider("Aggression", {
            Text = "Bid Aggression",
            Default = 1,
            Min = 0.25,
            Max = 3,
            Rounding = 2,
            Callback = sf.SetAggression
        })
        AutoWinGroup:AddSlider("BidDelay", {
            Text = "Bid Delay",
            Default = 0.35,
            Min = 0,
            Max = 3,
            Rounding = 2,
            Suffix = "s",
            Callback = sf.SetBidDelay
        })
        AutoWinGroup:AddDivider()
        AutoWinGroup:AddToggle("AutoAI", {
            Text = "Auto Play AI Match",
            Tooltip = "Fills the empty partner seat with the game's AI opponent",
            Default = false,
            Callback = sf.SetAutoAI
        })
        local StationsGroup = he[2]:AddLeftGroupbox("Stations", "armchair")
        hl[3] = StationsGroup:AddLabel(sy.status(sq.StationStatus), true)
        StationsGroup:AddToggle("AutoJoin", { Text = "Auto Join Station", Default = false, Callback = sf.SetAutoJoin })
        StationsGroup:AddToggle("AutoRejoin", { Text = "Auto Rejoin After Match", Default = false, Callback = sf.SetAutoRejoin })
        StationsGroup:AddSlider("TravelSpeed", {
            Text = "Travel Speed",
            Default = 90,
            Min = 20,
            Max = 400,
            Rounding = 0,
            Callback = sf.SetTravelSpeed
        })
        StationsGroup:AddButton({
            Text = "Join Station Now",
            Func = function()
                task.spawn(sb)
            end
        })
        local RewardsGroup = he[2]:AddRightGroupbox("Rewards", "gift")
        hl[4] = RewardsGroup:AddLabel(sy.status(sq.RewardStatus), true)
        RewardsGroup:AddToggle("AutoPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false, Callback = sf.SetAutoPlaytime })
        RewardsGroup:AddToggle("AutoDaily", { Text = "Auto Claim Daily Login Reward", Default = false, Callback = sf.SetAutoDaily })
        RewardsGroup:AddToggle("AutoGroup", {
            Text = "Auto Claim Group Reward",
            Tooltip = "The server still requires group membership",
            Default = false,
            Callback = sf.SetAutoGroup
        })
        local PlazaFarmGroup = he[2]:AddRightGroupbox("Plaza Farm", "coins")
        hl[5] = PlazaFarmGroup:AddLabel(sy.status(sq.CoinStatus), true)
        PlazaFarmGroup:AddToggle("AutoCoins", { Text = "Auto Collect Plaza Coins", Default = false, Callback = sf.SetAutoCoins })
        local PlayerInfoGroup = he[2]:AddRightGroupbox("Player Info", "user")
        hl[6] = PlayerInfoGroup:AddLabel(sy.field("Cash", "0"), true)
        hl[7] = PlayerInfoGroup:AddLabel(sy.field("Wins", "0"), true)
        hl[8] = PlayerInfoGroup:AddLabel(sy.field("Streak", "0"), true)
        local x1_5 = sf.MissingBindings()
        if #x1_5 > 0 then
            local UnavailableGroup = he[2]:AddRightGroupbox("Unavailable", "triangle-alert")
            for i, v in ipairs(x1_5) do
                UnavailableGroup:AddLabel(sy.status(v), true)
            end
        end
    end
    hm()
    local function hG()
        local h6
        h6 = task.spawn(function()
            while not Library.Unloaded do
                task.wait(0.35)
                pcall(function()
                    hl[1]:SetText(sy.status(sq.DraftStatus))
                    hl[2]:SetText(sy.status(sq.LotStatus))
                    hl[3]:SetText(sy.status(sq.StationStatus))
                    hl[4]:SetText(sy.status(sq.RewardStatus))
                    hl[5]:SetText(sy.status(sq.CoinStatus))
                    local Stats = LocalPlayer:FindFirstChild("Stats")
                    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
                    local yf = Stats and Stats:FindFirstChild("Cash")
                    local yd_1 = leaderstats
                    if yd_1 then
                        yd_1 = leaderstats:FindFirstChild("Wins")
                    end
                    local yf_1 = leaderstats
                    local yh = yd_1
                    if yf_1 then
                        yf_1 = leaderstats:FindFirstChild("Streak")
                    end
                    local yd_2 = yf_1
                    local ye_1 = hl[6]
                    local field3 = sy.field
                    local yg_1 = yf and yf.Value or 0
                    ye_1:SetText(field3("Cash", yg_1))
                    local ye_2 = hl[7]
                    local field2 = sy.field
                    local yh_1 = yh and yh.Value or 0
                    ye_2:SetText(field2("Wins", yh_1))
                    local ye_3 = hl[8]
                    local field = sy.field
                    local yd_3 = yd_2 and yd_2.Value or 0
                    ye_3:SetText(field("Streak", yd_3))
                end)
            end
        end)
        sf.Track(function()
            if coroutine.status(h6) ~= "dead" then
                pcall(task.cancel, h6)
            end
        end)
    end
    local function h9()
        local yP
        local yI
        yI = nil
        yP = nil
        local yG, yH, Label, yK, yL, Label3, yN, Label2
        local yW_1
        local yV_2
        local yU_1
        local yT_1
        yN = Color3.fromRGB(120, 230, 150)
        local yQ = Color3.fromRGB(120, 180, 255)
        yG = Color3.fromRGB(255, 190, 120)
        local yR = Color3.fromRGB(180, 180, 180)
        yL = function(ih, ii, ij)
            return string.format('%s: <font color="#%s">%s</font>', ih, ij:ToHex(), tostring(ii))
        end
        local yS = "Unknown"
        if rT(identifyexecutor) then
            yT_1, yU_1 = pcall(identifyexecutor)
            local yV_1 = yT_1 and type(yU_1) == "string"
            if yV_1 then
                yS = yU_1
            end
        end
        local yT_2 = {
            { name = "getgenv", used = "namespace" },
            { name = "fireproximityprompt", used = "station join" },
            { name = "firetouchinterest", used = "plaza coins" },
            { name = "setclipboard", used = "copy buttons", alternate = "toclipboard" }
        }
        local function yU_2(is)
            local yt_1
            local ys_1
            ys_1, yt_1 = pcall(function()
                return getfenv()[is]
            end)
            local yu = ys_1 and rT(yt_1)
            return yu
        end
        yV_2, yW_1 = 0, {}
        for i, v in ipairs(yT_2) do
            local yX = yU_2(v.name)
            local yY = not yX
            if yY ~= false then
                yY = v.alternate
            end
            if yY then
                yX = yU_2(v.alternate)
            end
            if yX then
                yV_2 += 1
            else
                table.insert(yW_1, v.used)
            end
        end
        local yU_3 = string.format("(%d/%d available", yV_2, #yT_2)
        if #yW_1 > 0 then
            yU_3 ..= ", missing: " .. table.concat(yW_1, ", ")
        end
        yU_3 ..= ")"
        yP = os.clock()
        yK = function()
            local yw = math.floor(os.clock() - yP)
            if yw < 60 then
                return yw .. "s"
            elseif yw < 3600 then
                return string.format("%dm %ds", yw // 60, yw % 60)
            else
                return string.format("%dh %dm", yw // 3600, yw % 3600 // 60)
            end
        end
        local UserGroup = he[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(yL("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, yN), true)
        UserGroup:AddLabel(yL("UserId", tostring(LocalPlayer.UserId), yQ), true)
        UserGroup:AddLabel(yL("Executor", yS .. "  " .. yU_3, yN), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(yL("Session", yK(), yG), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                g_(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                g_("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        hf(he[1]:AddRightGroupbox("Discord", "message-circle"))
        local SessionGroup = he[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(yL("Game", gN, yQ), true)
        Label2 = SessionGroup:AddLabel(yL("Players", "0/0", yN), true)
        yH = tostring(game.JobId)
        local yQ_1 = #yH > 18 and string.sub(yH, 1, 18) .. "..."
        local yT_4 = yQ_1 or yH
        SessionGroup:AddLabel(yL("Job", yT_4, yR), true)
        Label = SessionGroup:AddLabel(yL("Ping", "0 ms", yG), true)
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
                g_(yH, "Copied Job ID")
            end
        })
        yI = task.spawn(function()
            local yz_1
            local yy_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(yL("Session", yK(), yG))
                Label2:SetText(yL("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), yN))
                yy_1, yz_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local yy_2 = yy_1 and yz_1 .. " ms" or "n/a"
                Label:SetText(yL("Ping", yy_2, yG))
            end
        end)
        sf.Track(function()
            if coroutine.status(yI) ~= "dead" then
                pcall(task.cancel, yI)
            end
        end)
        local SocialsGroup = he[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                g_(gQ, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                g_(gR, "Copied website link")
            end
        })
    end
    h9()
    local function jv()
        local jC
        local jA
        local jD
        local jB
        local MovementGroup = he[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false }):AddKeyPicker("NoClipKey", { Default = "N", SyncToggleState = true, Mode = "Toggle", Text = "Noclip" })
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Speed", Default = false }):AddKeyPicker("SpeedKey", { Default = "K", SyncToggleState = true, Mode = "Toggle", Text = "Speed" })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false }):AddKeyPicker("InfJumpKey", { Default = "J", SyncToggleState = true, Mode = "Toggle", Text = "Infinite Jump" })
        MovementGroup:AddDivider()
        MovementGroup:AddSlider("WalkSpeed", { Text = "Speed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlightGroup = he[3]:AddRightGroupbox("Flight", "feather")
        FlightGroup:AddToggle("Fly", { Text = "Fly", Default = false }):AddKeyPicker("FlyKey", { Default = "H", SyncToggleState = true, Mode = "Toggle", Text = "Fly" })
        FlightGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        jC = {}
        local jz = {}
        jD = {}
        jA = {}
        jB = {}
        local function jE()
            for k, v in jA do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(jA)
        end
        local function jI()
            for k, v in jB do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(jB)
        end
        local function jM()
            for k, v in jC do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(jC)
        end
        local function jQ(jR)
            if not jR:IsA("ProximityPrompt") then
                return
            end
            if jD[jR] == nil then
                jD[jR] = {
                    HoldDuration = jR.HoldDuration,
                    MaxActivationDistance = jR.MaxActivationDistance,
                    RequiresLineOfSight = jR.RequiresLineOfSight
                }
            end
            jR.HoldDuration = 0
            jR.MaxActivationDistance = 50
            jR.RequiresLineOfSight = false
        end
        local function jT()
            for k, v in jD do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(jD)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                jM()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                jI()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                jE()
            end
        end)
        table.insert(jz, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded or not Toggles.InfJump.Value then
                return
            end
            local zB_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            local zC = zB_1
            if zB_1 then
                zB_1 = zC.Health > 0
            end
            if zB_1 then
                zC:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        pcall(jQ, descendant)
                    end
                end
            else
                jT()
            end
        end)
        table.insert(jz, Workspace.DescendantAdded:Connect(function(km)
            local zR = Toggles.InstantProximityPrompt.Value and km:IsA("ProximityPrompt")
            if zR then
                jQ(km)
            end
        end))
        table.insert(jz, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if jA[descendant] == nil then
                            jA[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(jz, RunService.RenderStepped:Connect(function(kA)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local z5 = Character and Character:FindFirstChildOfClass("Humanoid")
            local z6 = Character
            if z6 then
                z6 = Character:FindFirstChild("HumanoidRootPart")
            end
            local z4_1 = z6
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and z5 then
                if jB[z5] == nil then
                    jB[z5] = z5.WalkSpeed
                end
                z5.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and z4_1 and z5 and CurrentCamera then
                if jC[z5] == nil then
                    jC[z5] = z5.PlatformStand
                end
                z5.PlatformStand = true
                local z6_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    local Ac = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                    if Ac == 1 then
                        z6_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        z6_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        z6_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        z6_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        z6_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        z6_4 -= Vector3.new(0, 1, 0)
                    end
                end
                z4_1.AssemblyLinearVelocity = Vector3.zero
                if z6_4.Magnitude > 0 then
                    z4_1.CFrame = z4_1.CFrame + z6_4.Unit * Options.FlySpeed.Value * kA
                end
            end
        end))
        sf.Track(function()
            for k, v in jz do
                v:Disconnect()
            end
            jE()
            jI()
            jM()
            jT()
        end)
    end
    jv()
    hG()
    local function kU()
        local By, Bz, Label, BB, BC, BD, BE, BF, BG, BH, BI, BJ, BK, BL
        BB = {}
        BJ = {}
        BG = nil
        BL = false
        BH = 0
        BD = 0
        By = os.clock()
        local MenuGroup = he[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        BE = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local Al = not CurrentCamera
            local Ap = if Al then 1 else 0
            local An = 3718 * Ap + 790 * (1 - Ap)
            local Ao = 3024 * Ap + 3068 * (1 - Ap)
            if not ((An * 3999 + Ao * 1716 + An * Ao) % 16777213 == 14523485) then
                Al = not rT(VirtualUser.CaptureController)
            end
            if not Al then
                Al = not rT(VirtualUser.ClickButton2)
            end
            if Al then
                return false
            end
            local Al_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not Al_1 then
                return false
            end
            BH += 1
            By = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. BH)
            end)
            return true
        end
        Bz = function(ln)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not ln)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not ln
                end
            end)
            if not ln then
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
        BK = function(lD)
            local AD = lD.ClassName == "ParticleEmitter" or lD.ClassName == "Trail"
            local AH = if AD then 1 else 0
            local AF = 3537 * AH + 245 * (1 - AH)
            local AG = 1400 * AH + 77 * (1 - AH)
            if not ((AF * 293 + AG * 2621 + AF * AG) % 16777213 == 9657541) then
                AD = lD.ClassName == "Smoke"
            end
            if not AD then
                AD = lD.ClassName == "Fire"
            end
            if not AD then
                AD = lD.ClassName == "Sparkles"
            end
            if not AD then
                AD = lD.ClassName == "Explosion"
            end
            if not AD then
                AD = lD.ClassName == "Beam"
            end
            if AD then
                if BB[lD] == nil then
                    BB[lD] = lD.Enabled
                end
                pcall(function()
                    lD.Enabled = false
                end)
            end
        end
        BI = function()
            for k, v in BB do
                local AM = k
                local AO = v
                if AM.Parent then
                    pcall(function()
                        AM.Enabled = AO
                    end)
                end
            end
            table.clear(BB)
            if BG then
                pcall(function()
                    settings().Rendering.QualityLevel = BG.Quality
                end)
                Lighting.GlobalShadows = BG.Shadows
                Lighting.FogEnd = BG.Fog
                BG = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(lS)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not lS)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(lX)
                if lX then
                    if not BG then
                        BG = {
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
                        pcall(BK, descendant)
                    end
                else
                    BI()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Bz(true)
        local ScriptGroup = he[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Bz(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Bz(true)
        end
        table.insert(BJ, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                BE()
            end
        end))
        table.insert(BJ, Workspace.DescendantAdded:Connect(function(mg)
            if Toggles.FpsBoost.Value then
                BK(mg)
            end
        end))
        BF = function(mk)
            if BL or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            BL = true
            local A6 = BD
            local A7_1 = pcall(function()
                if mk then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not A7_1 then
                BL = false
                if not mk and A6 == BD then
                    task.delay(1.5, function()
                        if A6 == BD then
                            BF(true)
                        end
                    end)
                end
            end
        end
        table.insert(BJ, TeleportService.TeleportInitFailed:Connect(function(mC)
            local Bb
            if mC == LocalPlayer and BL then
                BL = false
                Bb = BD
                task.delay(3, function()
                    if Bb == BD then
                        BF(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Bj = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local Bj_1 = not Bj
            local Bk = Library.Unloaded
            local Bo = if Bk then 1 else 0
            local Bm = 1266 * Bo + 1916 * (1 - Bo)
            local Bn = 860 * Bo + 2577 * (1 - Bo)
            if not ((Bm * 2936 + Bn * 3017 + Bm * Bn) % 16777213 == 7400356) then
                Bk = Bj_1
            end
            if Bk then
                return
            end
            table.insert(BJ, Bj.ChildAdded:Connect(function(mR)
                if mR.Name == "ErrorPrompt" then
                    BF(false)
                end
            end))
        end)
        BC = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Bz(true)
                end
                local Bp = Toggles.AntiAfk.Value and os.clock() - By >= 60
                if Bp then
                    BE()
                end
                task.wait(1)
            end
        end)
        sf.Track(function()
            BD += 1
            for k, v in BJ do
                v:Disconnect()
            end
            pcall(task.cancel, BC)
            Bz(false)
            BI()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    kU()
    local function na()
        local CL, CM, CN, CO
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(he[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/ChooseTheStrongerAnime")
        local CP = SaveManager:BuildConfigSection(he[4])
        CO = function(nh, ni)
            local BP_1 = (nh == "Toggle" and Toggles or Options)[ni]
            local BO_2 = type(BP_1) == "table" and BP_1.Type == nh
            return BO_2 and BP_1 or nil
        end
        CM = function(nr, ns)
            local Type = ns.Type
            if Type == "Toggle" then
                return { idx = nr, type = "Toggle", value = ns.Value == true }
            elseif Type == "Slider" then
                return { idx = nr, type = "Slider", value = tostring(ns.Value) }
            elseif Type == "Dropdown" then
                return { idx = nr, type = "Dropdown", multi = ns.Multi == true, value = ns.Value }
            elseif Type == "Input" then
                local BT = ns.Value or ""
                return { idx = nr, type = "Input", text = tostring(BT) }
            elseif Type == "ColorPicker" then
                return { idx = nr, type = "ColorPicker", value = ns.Value:ToHex(), transparency = ns.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = nr,
                    type = "KeyPicker",
                    mode = ns.Mode,
                    key = ns.Value,
                    modifiers = ns.Modifiers,
                    toggled = ns.Toggled
                }
            else
                return nil
            end
        end
        CL = function()
            local B1 = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local B2 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if B2 then
                        local B2_1 = CM(k, v)
                        if B2_1 then
                            B1[#B1 + 1] = B2_1
                        end
                    end
                end
            end
            table.sort(B1, function(nC, nD)
                if nC.type ~= nD.type then
                    return nC.type < nD.type
                end
                return nC.idx < nD.idx
            end)
            return { objects = B1 }
        end
        CN = function(nF)
            local Ci
            Ci = nil
            local Cj = type(nF) ~= "table" or type(nF.idx) ~= "string" or type(nF.type) ~= "string" or SaveManager.Ignore[nF.idx]
            if Cj then
                return false
            end
            Ci = CO(nF.type, nF.idx)
            if not Ci then
                return false
            end
            local Cj_1 = pcall(function()
                if nF.type == "Input" then
                    if type(nF.text) ~= "string" then
                        return
                    end
                    Ci:SetValue(nF.text)
                elseif nF.type == "ColorPicker" then
                    Ci:SetValueRGB(Color3.fromHex(nF.value), nF.transparency)
                elseif nF.type == "KeyPicker" then
                    Ci:SetValue({ nF.key, nF.mode, nF.modifiers })
                    if nF.mode == "Toggle" and nF.toggled ~= nil then
                        Ci.Toggled = nF.toggled
                        Ci:Update()
                    end
                else
                    Ci:SetValue(nF.value)
                end
            end)
            return Cj_1
        end
        CP:AddDivider()
        CP:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        CP:AddButton("Export Config to Clipboard", function()
            local Cs_1
            local Cr_1
            Cr_1, Cs_1 = pcall(HttpService.JSONEncode, HttpService, CL())
            if Cr_1 then
                local Cr_2 = rT(setclipboard) and setclipboard
                local Ct = Cr_2
                if not Ct then
                    local Cr_3 = rT(toclipboard) and toclipboard
                    Ct = Cr_3 or nil
                end
                local Cr_4 = Ct
                local Ct_1 = type(Cr_4) == "function" and pcall(Cr_4, Cs_1)
                if Ct_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        CP:AddButton("Import Config from Clipboard Text", function()
            local Cy_1
            local Cw = Options.SaveManager_ImportSource.Value or ""
            local Cw_1
            local Cx = tostring(Cw):match("^%s*(.-)%s*$")
            if Cx == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Cx > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Cw_1, Cy_1 = pcall(HttpService.JSONDecode, HttpService, Cx)
            local Cx_1 = not Cw_1 or type(Cy_1) ~= "table" or type(Cy_1.objects) ~= "table"
            if Cx_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Cy_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Cw_2 = 0
            for i, v in ipairs(Cy_1.objects) do
                if CN(v) then
                    Cw_2 += 1
                end
            end
            if Cw_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Cy_2 = Cw_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Cw_2, Cy_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        local function CP_1(od, oe)
            if Options[od] then
                oe(Options[od].Value)
            end
        end
        local function CQ(oh, oi)
            if Toggles[oh] then
                oi(Toggles[oh].Value)
            end
        end
        CP_1("Aggression", sf.SetAggression)
        CP_1("BidDelay", sf.SetBidDelay)
        CP_1("TravelSpeed", sf.SetTravelSpeed)
        CQ("AutoDraft", sf.SetAutoDraft)
        CQ("AutoAI", sf.SetAutoAI)
        CQ("AutoJoin", sf.SetAutoJoin)
        CQ("AutoRejoin", sf.SetAutoRejoin)
        CQ("AutoPlaytime", sf.SetAutoPlaytime)
        CQ("AutoDaily", sf.SetAutoDaily)
        CQ("AutoGroup", sf.SetAutoGroup)
        CQ("AutoCoins", sf.SetAutoCoins)
        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    na()
end
sM()
