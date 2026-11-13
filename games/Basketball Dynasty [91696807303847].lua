local y__6, y__7, y__18, y__27, y__28
local CoreGui
local GetMarket
local Toggles
local qi
local pi
local p_
local p5
local pN
local RankedDecision
local Remotes
local qb
local pT
local qh
local ph
local pZ
local pG
local qn
local LocalPlayer
local pM
local pt
local pS
local pz
local pY
local pF
local RankedQueue
local pm
local Label4
local qs
local ps
local pe
local Library
local Roll
local pK
local qr
local pr
local p8
local pd
local pW
local pD
local pk
local pJ
local qq
local pq
local p7
local pP
local pw
local qd
local qC
local GetProfile
local p0
local pI
local qp
local pp
local p6
local pO
local qv
local function fn30()
    local vh = qi()
    if vh <= 0 then
        return "Ready"
    end
    local vi = math.floor(vh / 60)
    local vj = vh % 60
    return string.format("Recharging - %d:%02d", vi, vj)
end
local function fn47()
    local r9_1
    local r8_1
    r8_1, r9_1 = pcall(function()
        return GetProfile:InvokeServer()
    end)
    local sa = r8_1 and type(r9_1) == "table"
    if sa then
        return r9_1
    end
    return nil
end
local function worker8()
    while not Library.Unloaded do
        pcall(function()
            Label4:SetText(pY())
        end)
        task.wait(1)
    end
end
local function fn79(aP, aQ)
    if setclipboard then
        setclipboard(aP)
    elseif toclipboard then
        toclipboard(aP)
    end
    Library:Notify(aQ)
end
local function fn118()
    if p8("AutoRanked") then
        pcall(pk)
    end
    print("Unloaded!")
end
local function fn124(eG)
    local uj = not eG or not eG:IsA("GuiButton")
    if uj then
        return false
    elseif eG.Visible == false then
        return false
    else
        local uj_1 = eG.Parent
        while true do
            if not uj_1 then
                return ph(eG)
            end
            local uk = uj_1:IsA("GuiObject") and uj_1.Visible == false
            if uk then
                break
            end
            local uk_1 = uj_1:IsA("ScreenGui") and uj_1.Enabled == false
            if uk_1 then
                return false
            end
            local uk_2 = uj_1 == LocalPlayer.PlayerGui or uj_1 == game:GetService("CoreGui")
            if uk_2 then
                return ph(eG)
            end
            uj_1 = uj_1.Parent
        end
        return false
    end
end
local function fn171(eZ)
    local Match = LocalPlayer.PlayerGui:FindFirstChild("Match")
    local uz = Match and Match:FindFirstChild(eZ)
    return uz
end
local function fn216(aZ, a_, a0)
    return string.format("<b>%s</b> %s %s", aZ, pm("-", "#5a6070"), pm(a_, a0))
end
local function fn229()
    return qi() <= 0
end
local function fn247(bd, be)
    local rU = pP[bd]
    if rU == nil then
        return be
    end
    local Value = rU.Value
    if Value == nil then
        return be
    end
    return Value
end
local function fn250()
    gethui = pZ
end
local function fn259()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local sd = leaderstats and leaderstats:FindFirstChild("Coins")
    local sc_1 = sd
    if sd then
        sd = typeof(sc_1.Value) == "number"
    end
    if sd then
        return sc_1.Value
    end
    local sc_2 = qs()
    local sd_1 = sc_2 and tonumber(sc_2.Coins)
    return sd_1 or 0
end
local function fn273(aW, aX)
    return string.format('<font color="%s">%s</font>', aX, aW)
end
local function worker7()
    while not Library.Unloaded do
        if p8("AutoClaimGroupChest") then
            pcall(pe)
            local yT = tonumber(LocalPlayer:GetAttribute("GroupChestReadyAt")) or 0
            if yT > os.time() then
                task.wait(math.clamp(yT - os.time(), 5, 60))
            else
                task.wait(5)
            end
        else
            task.wait(1)
        end
    end
end
local function fn331()
    local uV = not pD() and LocalPlayer:GetAttribute("InRankedMatch") ~= true
    if uV then
        return
    end
    local uV_1 = qn("RankedGui")
    local uW = uV_1 and uV_1:FindFirstChild("BreakPanel")
    local uV_2 = uW
    if uW then
        uW = uV_2.Visible == true
    end
    local uX = uW
    pF(uX == true)
    if uX then
        local uW_1 = pp(uV_2, "ReadyButton")
        local uX_1 = uW_1 and uW_1:IsA("TextButton")
        if uX_1 then
            local upper = string.upper
            local uZ_1 = uW_1.Text or ""
            uX_1 = upper(uZ_1)
        end
        local uY_2 = uX_1 or ""
        local uX_2 = uW_1
        if uX_2 then
            uX_2 = uY_2:find("READY")
        end
        if uX_2 then
            uX_2 = not uY_2:find("WAITING")
        end
        if uX_2 then
            if os.clock() - pM >= 1 then
                pM = os.clock()
                pcall(function()
                    RankedDecision:FireServer({ t = "Ready" })
                end)
                p0(uW_1)
            end
        end
        local uW_2 = p7()
        local Strats = uV_2:FindFirstChild("Strats", true)
        if Strats then
            local uV_3 = Strats:FindFirstChild("Strat_" .. uW_2)
            local uW_3 = uV_3 and uV_3:IsA("GuiButton")
            if uW_3 then
                p0(uV_3)
            end
        end
    end
    local uV_4 = qn("MatchGui")
    if uV_4 then
        local uW_4 = pp(uV_4, "SkipCatcher")
        if uW_4 then
            p0(uW_4)
        end
        local uW_5 = pp(uV_4, "RematchButton")
        if uW_5 then
            p0(uW_5)
        end
    end
end
local function fn353()
    local ve = tonumber(LocalPlayer:GetAttribute("GroupChestReadyAt")) or 0
    if ve <= 0 then
        return 0
    end
    return math.max(0, ve - os.time())
end
local function worker4()
    while not Library.Unloaded do
        local yM = if p8("AutoSell") then 1 else 0
        if yM == 1 then
            pcall(p6)
        end
        task.wait(1)
    end
end
local function worker3()
    while not Library.Unloaded do
        if p8("AutoBuyUpgrades") then
            pcall(pi)
        end
        task.wait(0.8)
    end
end
local function fn462(c1)
    local te_1
    local td = not c1
    local td_1
    if td ~= false then
        td = type(qv) == "table"
    end
    if td then
        td = type(qv.Items) == "table"
    end
    if td then
        return qv
    end
    td_1, te_1 = pcall(function()
        return GetMarket:InvokeServer()
    end)
    local tf = td_1 and type(te_1) == "table" and type(te_1.Items) == "table"
    if tf then
        qv = te_1
        return te_1
    end
    return nil
end
local function fn474()
    p_ = nil
    local wL = p8("AutoRanked") and pD()
    if wL then
        pF(true)
    end
end
local function fn479()
    pd(p8("RemoveRollAnimation"))
    if p8("RemoveRollAnimation") then
        qC()
    end
end
local function fn484()
    local uB = pK("RankedPlayStyle", pT[1])
    local uC = pN[uB]
    local uD = uC ~= ""
    local uE = type(uC) == "string" and uD
    if uE then
        return uC, uB
    end
    return "Balanced", "BALANCED"
end
local function onRefreshMarket()
    pcall(pt)
end
local function fn490()
    local tY = game.PlaceId == qd and not pD()
    return tY
end
local function fn522(gR)
    local DiscordGroup = gR:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ps })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ps })
end
local function fn540(bM)
    pq({ HideRoll = bM == true })
end
local function fn541()
    local vC = hookfunction ~= nil
    local vD = hookmetamethod ~= nil
    local vE = getrawmetatable ~= nil
    local vF = setrawmetatable ~= nil
    local vG = getgc ~= nil
    local vH = getgenv ~= nil
    local vI = getreg ~= nil
    local vJ = getconnections ~= nil
    local vK = firesignal ~= nil
    local vL = getcallbackvalue ~= nil
    local vM = setclipboard ~= nil
    local vN = getcustomasset ~= nil
    local vO = getnamecallmethod ~= nil
    local vP = isexecutorclosure ~= nil
    local vQ = fireproximityprompt ~= nil
    local vR = firetouchinterest ~= nil
    local vS = WebSocket ~= nil
    local vT = readfile ~= nil
    local vU = writefile ~= nil
    local vW = (request or http_request) ~= nil
    local vY = (debug and debug.getupvalues) ~= nil
    local v_ = (debug and debug.setupvalue) ~= nil
    local v0 = 0
    local v1 = { vC, vD, vE, vF, vG, vH, vI, vJ, vK, vL, vM, vN, vO, vP, vQ, vR, vS, vT, vU, vW, vY, v_ }
    for i, v in ipairs(v1) do
        if v then
            v0 += 1
        end
    end
    local vC_1 = v0 / #v1
    if vC_1 >= 0.9 then
        return pm("Full Support", qq)
    elseif vC_1 >= 0.6 then
        return pm("Half Support", qh)
    else
        return pm("Low Support", qb)
    end
end
local function fn568()
    if pD() then
        pW = false
        pJ()
        return
    end
    qp()
end
local function fn612()
    if LocalPlayer:GetAttribute("InRankedMatch") == true then
        return true
    end
    if p5 and game.PlaceId == p5 then
        return true
    end
    return false
end
local function worker()
    while Library and not Library.Unloaded do
        pr()
        task.wait(1)
    end
end
local function fn709()
    local Park = workspace:FindFirstChild("Park")
    local vc = Park and Park:FindFirstChild("GroupRewardChest")
    if not vc then
        return nil
    end
    return vc:FindFirstChild("GroupRewardPrompt", true)
end
local function fn728(bj)
    local rX = {}
    if type(bj) ~= "table" then
        return rX
    end
    local Value = bj.Value
    if type(Value) ~= "table" then
        return rX
    end
    for k, v in Value do
        if v == true then
            rX[k] = true
        else
            local rY_1 = type(k) == "number" and type(v) == "string"
            if rY_1 then
                rX[v] = true
            end
        end
    end
    return rX
end
local function fn761()
    if not p8("AutoRanked") then
        pk()
        p_ = nil
    else
        p_ = nil
        pW = false
    end
end
local function fn806()
    local va = if pD() then 1 else 0
    if va == 1 then
        return
    end
    pcall(function()
        RankedQueue:InvokeServer("leave")
    end)
    pW = false
end
local function fn843()
    pcall(function()
        LocalPlayer:SetAttribute("PanelOpen", nil)
    end)
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    if not PlayerGui then
        return
    end
    local HUD = PlayerGui:FindFirstChild("HUD")
    local vl_1 = HUD and HUD:FindFirstChild("MainUI")
    local vm_1 = vl_1
    if vl_1 then
        vl_1 = vm_1:IsA("ScreenGui")
    end
    if vl_1 then
        vm_1.Enabled = true
    end
end
local function worker6()
    while not Library.Unloaded do
        if p8("AutoRanked") then
            pcall(pw)
        end
        task.wait(0.75)
    end
end
local function fn861(da, db, dc, dd, de, df, dg, dh)
    if type(da) ~= "table" then
        return false
    end
    if dh and da.Shiny ~= true then
        return false
    end
    local th_1 = not de or db[da.Rarity] == true
    local ti = not df
    if not ti then
        ti = dc[da.Player] == true
    end
    local th_2 = not dg
    local tk = ti
    if not th_2 then
        th_2 = dd[da.Position] == true
    end
    return th_1 and tk and th_2
end
local function fn866()
    local uP_1
    local uO_1
    if pD() then
        return
    end
    if LocalPlayer:GetAttribute("MatchActive") == true then
        return
    end
    if pW then
        return
    end
    if os.clock() - pS < 2.5 then
        return
    end
    pS = os.clock()
    uO_1, uP_1 = pcall(function()
        return RankedQueue:InvokeServer("join")
    end)
    local uQ = uO_1 and type(uP_1) == "table"
    if uQ then
        if uP_1.inQueue ~= nil then
            pW = uP_1.inQueue == true
        elseif uP_1.ok == true then
            pW = true
        end
    end
end
local function fn879()
    local MarketChanged = Remotes:FindFirstChild("MarketChanged")
    local yP = MarketChanged and MarketChanged:IsA("RemoteEvent")
    if yP then
        MarketChanged.OnClientEvent:Connect(function()
            qv = nil
            if p8("AutoBuyMarket") then
                task.defer(function()
                    pcall(qr)
                end)
            end
        end)
    end
end
local function fn904()
    return CoreGui
end
local function fn905(bq)
    return next(bq) ~= nil
end
local function worker5()
    while not Library.Unloaded do
        if p8("AutoBuyMarket") then
            pcall(qr)
        end
        task.wait(1.25)
    end
end
local function worker2()
    while not Library.Unloaded do
        if p8("AutoRoll") then
            pcall(pz)
            task.wait(pO)
        else
            task.wait(0.25)
        end
    end
end
local function fn954()
    if LocalPlayer:GetAttribute("MatchActive") == true then
        return
    end
    if LocalPlayer:GetAttribute("Rolling") == true then
        return
    end
    if p8("RemoveRollAnimation") then
        pd(true)
        qC()
    end
    pcall(function()
        Roll:InvokeServer()
    end)
    if p8("RemoveRollAnimation") then
        qC()
    end
end
local function fn972(a8)
    local rO = Toggles[a8]
    return rO ~= nil and rO.Value == true
end
local function fn997()
    pI(pG, "Copied Discord invite to clipboard")
end
local function fn1006(eP, eQ, eR)
    if not eP then
        return nil
    end
    for i, descendant in eP:GetDescendants() do
        local um = descendant.Name == eQ and descendant:IsA("GuiButton")
        if um then
            if eR == nil or descendant.Parent and descendant.Parent.Name == eR then
                return descendant
            end
        end
    end
    return nil
end
GetMarket = nil
pd = nil
pe = nil
ph = nil
pi = nil
GetProfile = nil
pk = nil
Roll = nil
pm = nil
pp = nil
pq = nil
pr = nil
ps = nil
pt = nil
Remotes = nil
pw = nil
pz = nil
pD = nil
Library = nil
pF = nil
pG = nil
pI = nil
pJ = nil
pK = nil
pM = nil
pN = nil
pO = nil
pP = nil
pS = nil
pT = nil
Toggles = nil
pW = nil
local Players, BuyMarket, pc, PurchaseUpgrade, pn, po, SaveManager, px, py, pA, pB, pC, pH, pL, pQ, Label5, pV, pX
pY = nil
pZ = nil
p_ = nil
p0 = nil
Label4 = nil
LocalPlayer = nil
p5 = nil
p6 = nil
p7 = nil
p8 = nil
qb = nil
CoreGui = nil
qd = nil
qh = nil
qi = nil
RankedQueue = nil
qn = nil
qp = nil
qq = nil
qr = nil
qs = nil
RankedDecision = nil
qv = nil
qC = nil
local MenuGroup, p2, p9, TeleportService, qe, qg, HttpService, qk, VirtualUser, qo, SaveGameSettings, qy, qz, qA, qB, SellCards, qE
MenuGroup = nil
p2 = nil
p9 = nil
TeleportService = nil
qe = nil
local GuiService
qg = nil
HttpService = nil
qk = nil
VirtualUser = nil
qo = nil
local UserInputService
local RunService
SaveGameSettings = nil
qy = nil
qz = nil
qA = nil
qB = nil
SellCards = nil
qE = nil
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, LocalPlayer, pZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local y__14 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
LocalPlayer = Players.LocalPlayer
pZ = fn904
if getgenv then
    getgenv().gethui = pZ
end
pL, pG, pC, py, Remotes, Roll, GetProfile, PurchaseUpgrade, GetMarket, BuyMarket, SellCards, SaveGameSettings, RankedDecision, RankedQueue = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn250)
pL = "Build A Basketball Dynasty"
pG = "https://discord.gg/ehKVq7pf7v"
pC = "https://rscripts.net/@Ouroboros"
py = "https://ouroboros-hub-rbx.web.app/"
Remotes = y__14:WaitForChild("Remotes")
local y__15 = require(y__14:WaitForChild("Configs"):WaitForChild("GameConfig"))
local y__24 = require(y__14:WaitForChild("Configs"):WaitForChild("PlayerRatings"))
local y__24_4
local y__4 = require(y__14:WaitForChild("Configs"):WaitForChild("RankedConfig"))
Roll = Remotes:WaitForChild("Roll")
GetProfile = Remotes:WaitForChild("GetProfile")
PurchaseUpgrade = Remotes:WaitForChild("PurchaseUpgrade")
GetMarket = Remotes:WaitForChild("GetMarket")
BuyMarket = Remotes:WaitForChild("BuyMarket")
SellCards = Remotes:WaitForChild("SellCards")
SaveGameSettings = Remotes:WaitForChild("SaveGameSettings")
RankedDecision = Remotes:WaitForChild("RankedDecision")
RankedQueue = Remotes:WaitForChild("RankedQueue")
local y__23 = y__4.Places and y__4.Places.LobbyPlaceId
y__14 = tonumber(y__23) or game.PlaceId
qd = y__14
y__23 = y__4.Places and y__4.Places.ArenaPlaceId
p5, y__27, y__6, pT, pN = nil, nil, nil, nil, nil
y__14 = 7
repeat
    y__18 = (y__14 * 3 + 3) % 4 + 1
    if y__18 <= 2 then
        if y__18 <= 1 then
            if y__6 and not p5 or not p5 and not p5 or (y__6 or p5) and (not p5 and p5) or not (y__6 and not p5 or not p5 and not p5 or (y__6 or p5) and (not p5 and p5)) then
                p5 = tonumber(y__23)
            else
                y__23 = tonumber(p5)
            end
            y__14 = (y__14 + 19) % 32
        else
            y__7 = {
                "cttovxjfu",
                "ebhzjfmmru",
                "dcxgdj",
                "wmsk",
                "ntvwnfj",
                "xrnqjermjts",
                "lltrpfxpxp",
                "zpwblckgl",
                "olkbgbaz",
                "zaihmpzjyi",
                "bcoyigrh"
            }
            local zt = y__14
            y__28 = y__7[zt % 11 + 1]
            if y__28:len() <= y__28:reverse():rep(zt % 3 + 2):len() then
                y__27 = { "Rookie", "Pro", "All-Star", "Hall Of Famer", "GOAT" }
                y__6 = { "PG", "SG", "SF", "PF", "C" }
            else
                y__6 = { "Rookie", "Hall Of Famer", "GOAT", "Pro", "All-Star" }
                y__27 = { "PG", "SG", "PF", "SF", "C" }
            end
            y__14 = (y__14 + 15) % 32
        end
    elseif y__18 <= 3 then
        y__18 = (vector.create((y__14 * 4 + 8) % 11 + 1, (y__14 * 2 + 2) % 13 + 1, (y__14 * 10 + 4) % 17 + 1))
        y__7 = (vector.create((y__14 * 5 + 2) % 11 + 1, (y__14 * 6 + 13) % 13 + 1, (y__14 * 3 + 8) % 17 + 1))
        local AN = vector.cross(y__18, y__7)
        local AO = vector.dot(y__18, y__7)
        if vector.dot(AN, AN) + AO * AO == vector.dot(y__18, y__18) * vector.dot(y__7, y__7) then
            pT = {}
        else
            y__6 = {}
        end
        y__14 = (y__14 + 31) % 32
    else
        if y__14 * 22484977 + 12 + 3 <= y__14 * 22484977 + 12 + 3 + 2 then
            pN = {}
        else
            pT = {}
        end
        y__14 = (y__14 + 3) % 32
    end
until (y__14 * 25 + 26) % 32 == 13
y__23 = y__4.Strategies
if type(y__23) == "table" then
    for i, v in ipairs(y__23) do
        y__23 = type(v) == "table" and type(v.Id) == "string"
        if y__23 then
            y__23 = type(v.Name) == "string" and v.Name
            y__14 = y__23 or v.Id
            y__23 = y__14
            pT[#pT + 1] = y__23
            pN[y__23] = v.Id
        end
    end
end
if #pT == 0 then
    y__14 = nil
    y__23 = 4
    repeat
        y__4 = {
            "hnbxhd",
            "iupu",
            "ffwl",
            "pqvtjpfpjkn",
            "dsa",
            "nsaq",
            "dnlgqqizt",
            "rrszaq",
            "boqvli",
            "hlzyimzzi",
            "xtgnjzsgpjr",
            "bjrluehzt",
            "ghgv",
            "vgcpr",
            "kwafbpnxehjr",
            "bwvs"
        }
        if y__4[(y__23 * 38 + 35) % 16 + 1] < y__4[(y__23 * 38 + 35) % 16 + 1] then
            y__14 = {
                { id = "Balanced", label = "BALANCED" },
                { id = "BallMove", label = "BALL MOVEMENT" },
                { id = "FeedStar", label = "FEED THE STAR" },
                { id = "Offense", label = "OFFENSIVE FOCUS" },
                { id = "Defense", label = "DEFENSIVE FOCUS" },
                { id = "FastBreak", label = "FAST BREAK" }
            }
        else
            y__14 = {
                { id = "Balanced", label = "BALANCED" },
                { id = "Offense", label = "OFFENSIVE FOCUS" },
                { id = "Defense", label = "DEFENSIVE FOCUS" },
                { id = "FastBreak", label = "FAST BREAK" },
                { id = "FeedStar", label = "FEED THE STAR" },
                { id = "BallMove", label = "BALL MOVEMENT" }
            }
        end
        y__23 = (y__23 + 5) % 8
    until (y__23 * 3 + 7) % 8 == 2
    for k, v in y__14 do
        pT[#pT + 1] = v.label
        pN[v.label] = v.id
    end
end
qE = nil
y__14 = {
    { id = "AutoRoll", label = "Auto Roll" },
    { id = "FastRoll", label = "Fast Roll" },
    { id = "Luck", label = "Luck" },
    { id = "CoinBoost", label = "Coin Boost" },
    { id = "TeamSlots", label = "Team Slots" }
}
y__4 = {}
qE = {}
for k, v in y__14 do
    y__4[#y__4 + 1] = v.label
    qE[v.label] = v.id
end
y__23 = {}
y__14 = {}
for k, v in y__24 do
    if type(v) == "table" then
        for k, v in v do
            if type(v) == "table" then
                for k in v do
                    local y__24_1 = type(k) == "string" and not y__14[k]
                    if y__24_1 then
                        y__14[k] = true
                        y__23[#y__23 + 1] = k
                    end
                end
            end
        end
    end
end
table.sort(y__23)
y__14 = y__15.Rolling and y__15.Rolling.RollCooldown
local y__24_2 = y__14 or 0.35
pO, Library, SaveManager, Toggles, pP, qq, qk, qh, qe, qb, qz, qv, px, p_, pW, pS, pM, pH, pn, pr, pI, ps, pm, pc, p8, pK, po, qA, qs, p2, pq, pd, qC, qg, pz, pi, p6, qo, pQ, qr, pt, pD, ph, p0, pp, qn, p7, pF, qp, pJ, pw, pk, qB, qi, p9, pY, pB, pe, y__28 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pO = y__24_2
y__7 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local y__19 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
pr = function()
    local function ry(av)
        local rt = not av or not av:IsA("ScreenGui")
        if rt then
            return
        end
        av.ResetOnSpawn = false
        av.IgnoreGuiInset = true
        pcall(function()
            av.ClipToDeviceSafeArea = false
        end)
        av.DisplayOrder = math.max(av.DisplayOrder, 1000)
        pcall(function()
            av.ScreenInsets = Enum.ScreenInsets.None
        end)
        if protectgui then
            pcall(protectgui, av)
        else
            if syn and syn.protect_gui then
                pcall(syn.protect_gui, av)
            end
        end
        if av.Parent ~= CoreGui then
            av.Parent = CoreGui
        end
    end
    ry(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        ry(Library.ActiveLoading.ScreenGui)
    end
    for k, v in { "Obsidian", "ObsidianLoading" } do
        local rz_1 = LocalPlayer:FindFirstChild("PlayerGui") and LocalPlayer.PlayerGui:FindFirstChild(v)
        if rz_1 then
            ry(rz_1)
        end
    end
end
pr()
task.spawn(worker)
Toggles = Library.Toggles
pP = Library.Options
pI = fn79
ps = fn997
pm = fn273
pc = fn216
qq = "#7fd47f"
qk = "#6ec1ff"
qh = "#e8a34d"
qe = "#8b93a3"
qb = "#e05a5a"
if (qA and qA or (not pc or not pJ)) and (false or qA or (qA or false)) or not ((qA and qA or (not pc or not pJ)) and (false or qA or (qA or false))) then
    p8 = fn972
else
    qr = fn972
end
pK = fn247
po = fn728
qA = fn905
qs = fn47
p2 = fn259
pq = function(bH)
    pcall(function()
        SaveGameSettings:FireServer(bH)
    end)
end
pd = fn540
qC = function()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    if not PlayerGui then
        return
    end
    local RollOverlayGui = PlayerGui:FindFirstChild("RollOverlayGui")
    if RollOverlayGui then
        pcall(function()
            RollOverlayGui:Destroy()
        end)
    end
end
qg = function(bU)
    local ss
    ss = nil
    ss = {}
    local function st(bX)
        if type(bX) ~= "table" then
            return
        end
        for k, v in bX do
            if type(v) == "number" then
                ss[v] = true
            end
        end
    end
    if type(bU.Team) == "table" then
        st(bU.Team.Slots)
    end
    if type(bU.Teams) == "table" then
        for k, v in bU.Teams do
            if type(v) == "table" then
                st(v.Slots)
            end
        end
    end
    return ss
end
pz = fn954
pi = function()
    local sD = po(pP.UpgradeSelect)
    if not qA(sD) then
        return
    end
    for k in sD do
        local sC = qE[k]
        if sC then
            pcall(function()
                PurchaseUpgrade:InvokeServer(sC)
            end)
        end
    end
end
p6 = function()
    local sM, sN
    local sO = po(pP.SellRarities)
    local sP = po(pP.SellPlayers)
    local sQ = qA(sO)
    local sR = qA(sP)
    local sS = not sR
    local sT = not sQ
    if sT ~= false then
        sT = sS
    end
    if sT then
        return
    end
    if sQ and not sR then
        for k in sO do
            local s2 = k
            pcall(function()
                SellCards:InvokeServer({ Rarity = s2 })
            end)
        end
        return
    end
    local sS_2 = qs()
    local sT_2 = not sS_2 or type(sS_2.Inventory) ~= "table"
    if sT_2 then
        return
    end
    local sT_3 = qg(sS_2)
    sM = {}
    local sU = {}
    for k, v in sS_2.Inventory do
        local sS_3 = type(v) == "table" and type(v.Id) == "number" and not sT_3[v.Id]
        if sS_3 then
            local Rarity = v.Rarity
            local Player = v.Player
            local sW = not sQ
            if not sW then
                local sX_1 = type(Rarity) == "string" and sO[Rarity] == true
                sW = sX_1
            end
            local sX_2 = not sR
            local sY = sW
            if not sX_2 then
                local sW_1 = type(Player) == "string" and sP[Player] == true
                sX_2 = sW_1
            end
            if sY and sX_2 then
                sM[#sM + 1] = v.Id
                local sW_3 = type(Player) == "string" and type(Rarity) == "string"
                if sW_3 then
                    sU[Player .. "\x00" .. Rarity] = { Player = Player, Rarity = Rarity }
                end
            end
        end
    end
    if #sM == 0 then
        return
    end
    sN = false
    pcall(function()
        local result = SellCards:InvokeServer({ Ids = sM })
        local sK = type(result) == "table" and result.ok == true
        if sK then
            sN = true
        end
    end)
    if sN then
        return
    end
    for k, v in sU do
        local tc = v
        pcall(function()
            SellCards:InvokeServer(tc)
        end)
    end
end
qz = 0
qv = nil
qo = fn462
pQ = fn861
qr = function()
    local tp = po(pP.MarketRarities)
    local tp_1
    local tq = po(pP.MarketPlayers)
    local tq_1
    local tr = po(pP.MarketPositions)
    local ts = qA(tp)
    local tt = qA(tq)
    local tu = qA(tr)
    local tv = p8("MarketShiniesOnly")
    if os.clock() - qz < 0.55 then
        return
    end
    local tw = qo(true)
    if not tw then
        return
    end
    local tx = p2()
    local ty = {}
    for k, v in tw.Items do
        local tw_1 = type(v) == "table" and v.Bought ~= true and v.Owned ~= true and type(v.Card) == "table"
        if tw_1 then
            local Card = v.Card
            local tz = tonumber(v.Price) or 0
            local tz_1 = pQ(Card, tp, tq, tr, ts, tt, tu, tv) and tz > 0 and tx >= tz
            if tz_1 then
                ty[#ty + 1] = { slot = k, item = v, price = tz }
            end
        end
    end
    table.sort(ty, function(dL, dM)
        return dL.price < dM.price
    end)
    for k, v in ty do
        local tN = v
        qz = os.clock()
        tp_1, tq_1 = pcall(function()
            return BuyMarket:InvokeServer(tN.slot)
        end)
        local tr_1 = false
        if tp_1 and tq_1 == true then
            tr_1 = true
        else
            local ts_2 = tp_1 and type(tq_1) == "table" and tq_1.ok == true
            if ts_2 then
                tr_1 = true
            end
        end
        if tr_1 then
            tN.item.Bought = true
            return
        end
        local tr_2 = tp_1 and type(tq_1) == "table"
        if tr_2 then
            local tp_2 = tq_1.err or ""
            local tq_2 = tostring(tp_2)
            if tq_2 == "Slow down!" then
                task.wait(0.85)
                return
            end
            if tq_2 == "Not enough coins" then
                p2()
            end
        end
        task.wait(0.55)
    end
end
px = 3609422825
pt = function()
    local MarketplaceService
    MarketplaceService = game:GetService("MarketplaceService")
    local tQ = pcall(function()
        MarketplaceService:PromptProductPurchase(LocalPlayer, px)
    end)
    if tQ then
        Library:Notify("Market refresh prompted")
        task.delay(2, function()
            qv = nil
            if p8("AutoBuyMarket") then
                pcall(qr)
            end
        end)
        return
    end
    qv = nil
    local tQ_1 = qo(true)
    if tQ_1 then
        local tR = (tonumber(tQ_1.SecondsLeft))
        local tV = if tR then 1 else 0
        local tT = 3005 * tV + 1760 * (1 - tV)
        local tU = 1089 * tV + 3809 * (1 - tV)
        if not ((tT * 330 + tU * 800 + tT * tU) % 16777213 == 5135295) then
            tR = 0
        end
        local tQ_2 = tR
        Library:Notify(("Market rescanned - free refresh in %ds"):format(math.max(0, math.floor(tQ_2))))
        if p8("AutoBuyMarket") then
            pcall(qr)
        end
    else
        Library:Notify("Market refresh failed")
    end
end
p_ = nil
pW = false
pS = 0
if (not qz or qz or not y__28 and not qp) and (not qz or not y__28 or not qz and not qp) and ((not qp or false) and (not y__28 or not y__28) and (pr and pr and (qp or y__28))) or (pr or qp) and (qp and not y__28) and (qz or qp or (not y__28 or qz)) and (false and (not qz or not y__28) and ((pr or not y__28) and (y__28 or qp))) or not ((not qz or qz or not y__28 and not qp) and (not qz or not y__28 or not qz and not qp) and ((not qp or false) and (not y__28 or not y__28) and (pr and pr and (qp or y__28))) or (pr or qp) and (qp and not y__28) and (qz or qp or (not y__28 or qz)) and (false and (not qz or not y__28) and ((pr or not y__28) and (y__28 or qp)))) then
    pM = 0
    pH = 0
    pD = fn612
else
    pH = 0
    pM = 0
    pD = fn490
end
ph = function(eu)
    local t1_1
    local t0_1
    local t_ = not eu or not eu:IsA("GuiButton")
    if t_ then
        return false
    end
    local t__1 = false
    if firesignal then
        if pcall(firesignal, eu.MouseButton1Click) then
            t__1 = true
        end
        if pcall(firesignal, eu.Activated) then
            t__1 = true
        end
    end
    if getconnections then
        for k, v in { eu.MouseButton1Click, eu.Activated, eu.MouseButton1Down } do
            t0_1, t1_1 = pcall(getconnections, v)
            local t2 = t0_1 and type(t1_1) == "table"
            if t2 then
                for k, v in t1_1 do
                    if type(v.Fire) == "function" then
                        if pcall(v.Fire, v) then
                            t__1 = true
                        end
                    elseif type(v.Function) == "function" then
                        if pcall(v.Function) then
                            t__1 = true
                        end
                    end
                end
            end
        end
    end
    if pcall(function()
        eu:Activate()
    end) then
        t__1 = true
    end
    return t__1
end
p0 = fn124
pp = fn1006
qn = fn171
p7 = fn484
pF = function(e9)
    local uJ, uK
    uJ, uK = p7()
    local uL = uJ == p_
    local uM = not e9
    if uM ~= false then
        uM = uL
    end
    if uM then
        return
    end
    pcall(function()
        RankedDecision:FireServer({ t = "Strategy", id = uJ })
    end)
    p_ = uJ
    pcall(function()
        local StratLabel = LocalPlayer.PlayerGui.Match.RankedGui.HUD.InfoChip.StratLabel
        local uH = StratLabel and StratLabel:IsA("TextLabel")
        if uH then
            StratLabel.Text = uK
        end
    end)
end
qp = fn866
pJ = fn331
pw = fn568
if qr and false and (qC and qr) or (false or not qr and qC) or (not qr or y__7 or false) and "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" or not (qr and false and (qC and qr) or (false or not qr and qC) or (not qr or y__7 or false) and "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/") then
    pk = fn806
    qB = fn709
    qi = fn353
else
    qi = fn806
    pk = fn709
    qB = fn353
end
p9 = fn229
pY = fn30
pB = fn843
pe = function()
    if pD() then
        return
    end
    local vB = if LocalPlayer:GetAttribute("MatchActive") == true then 1 else 0
    if vB == 1 then
        return
    end
    if not p9() then
        return
    end
    if os.clock() - pH < 8 then
        return
    end
    local vs = qB()
    local vv = not vs or not vs:IsA("ProximityPrompt") or vs.Enabled ~= true
    if vv then
        return
    end
    local upper = string.upper
    local vw = vs.ActionText or ""
    local vx = upper(vw)
    if vx:find("RECHARG") then
        return
    end
    local Character = LocalPlayer.Character
    local vw_1 = Character and Character:FindFirstChild("HumanoidRootPart")
    local CFrame2
    local vu = vw_1
    local Parent = vs.Parent
    local vw_2 = vu and vu:IsA("BasePart") and Parent and Parent:IsA("BasePart")
    if vw_2 then
        local vw_3 = tonumber(vs.MaxActivationDistance) or 16
        if (vu.Position - Parent.Position).Magnitude > math.max(4, vw_3 - 2) then
            CFrame2 = vu.CFrame
            vu.CFrame = Parent.CFrame * CFrame.new(0, 3, 0)
            task.wait(0.15)
        end
    end
    pH = os.clock()
    if fireproximityprompt then
        pcall(fireproximityprompt, vs)
    else
        pcall(function()
            vs:InputHoldBegin()
            local vq = vs.HoldDuration or 0.4
            task.wait(math.max(0.05, vq))
            vs:InputHoldEnd()
        end)
    end
    if CFrame2 and vu and vu.Parent then
        task.wait(0.2)
        pcall(function()
            vu.CFrame = CFrame2
        end)
    end
    task.defer(pB)
end
y__15 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pG, Copyable = true }, "|", pL },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
if (not pW and pd or pW and not pm) and ((not pm or pt) and (pW or not pW)) and not ((not pW and pd or pW and not pm) and ((not pm or pt) and (pW or not pW))) then
    y__15 = {
        Match = pn:AddTab("Match", "trophy"),
        Main = pn:AddTab("Main", "dices"),
        Info = pn:AddTab("Info", "info"),
        Settings = pn:AddTab("Settings", "settings"),
        Player = pn:AddTab("Player", "person-standing"),
        Trade = pn:AddTab({ SingleColumn = true, Icon = "store", Name = "Trade" })
    }
else
    pn = {
        Info = y__15:AddTab("Info", "info"),
        Main = y__15:AddTab("Main", "dices"),
        Trade = y__15:AddTab({ Name = "Trade", Icon = "store", SingleColumn = true }),
        Match = y__15:AddTab("Match", "trophy"),
        Player = y__15:AddTab("Player", "person-standing"),
        Settings = y__15:AddTab("Settings", "settings")
    }
end
y__28 = fn522
for k, v in pn do
    if k ~= "Info" then
        y__28(v)
    end
end
Label4, qy = nil, nil
qy = fn541
y__14 = function()
    local wy
    local wA
    wy = nil
    wA = nil
    local wn, Label, Label3, wq, wr, ws, wt, wu, wv, ww, Label2, wz
    wA = "Unknown"
    pcall(function()
        local wa_1
        local v9_1
        if identifyexecutor then
            wa_1, v9_1 = identifyexecutor()
            local wb = wa_1 ~= ""
            local wc = type(wa_1) == "string" and wb
            if wc then
                local wb_1 = type(v9_1) == "string" and v9_1 ~= "" and wa_1 .. " " .. v9_1
                wA = wb_1 or wa_1
            end
        end
    end)
    local wB = qy()
    wy = os.clock()
    wu = function()
        local we = math.floor(os.clock() - wy)
        if we < 60 then
            return we .. "s"
        elseif we < 3600 then
            return string.format("%dm %ds", we // 60, we % 60)
        else
            return string.format("%dh %dm", we // 3600, we % 3600 // 60)
        end
    end
    local UserGroup = pn.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(pc("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, qq), true)
    UserGroup:AddLabel(pc("UserId", tostring(LocalPlayer.UserId), qk), true)
    UserGroup:AddLabel(pc("Executor", wA .. "  " .. wB, qq), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(pc("Session", wu(), qh), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pI(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pI("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = pn.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(pc("Game", pL, qk), true)
    Label2 = SessionGroup:AddLabel(pc("Players", "0/0", qq), true)
    wt = tostring(game.JobId)
    local wC_1 = #wt > 18 and string.sub(wt, 1, 18) .. "..."
    local wC_2 = wC_1 or wt
    SessionGroup:AddLabel(pc("Job", wC_2, qe), true)
    Label = SessionGroup:AddLabel(pc("Ping", "0 ms", qh), true)
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
            pI(wt, "Copied Job ID")
        end
    })
    task.spawn(function()
        local wk_1
        local wj_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(pc("Session", wu(), qh))
            Label2:SetText(pc("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), qq))
            wj_1, wk_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local wj_2 = wj_1 and wk_1 .. " ms" or "n/a"
            Label:SetText(pc("Ping", wj_2, qh))
        end
    end)
    local FeaturesGroup = pn.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(pm("Auto Roll", qk), true)
    FeaturesGroup:AddLabel(pm("Remove Roll Animation", qh), true)
    FeaturesGroup:AddLabel(pm("Auto Buy Upgrades", qq), true)
    FeaturesGroup:AddLabel(pm("Auto Sell", qe), true)
    FeaturesGroup:AddLabel(pm("Auto Buy Market", qk), true)
    FeaturesGroup:AddLabel(pm("Buy Shinies Only", qh), true)
    FeaturesGroup:AddLabel(pm("Refresh Market", qe), true)
    FeaturesGroup:AddLabel(pm("Auto Ranked", qh), true)
    FeaturesGroup:AddLabel(pm("Auto Claim Group Chest", qq), true)
    local SocialsGroup = pn.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = ps })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            pI(pC, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            pI(py, "Copied website link")
        end
    })
    local OuroborosHubGroup = pn.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ps })
    wz = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
    wv = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    wq = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    wr = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    wn = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    ws = "https://venmo.com/u/miserablemusic"
    ww = "https://paypal.me/TheTruckerGOD"
    local DonationsGroup = pn.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(pm("All donations are optional but appreciated.", qh), true)
    DonationsGroup:AddLabel(pm("If you donate you get a special role, just PING after you donate.", qq), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(pm("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            pI(wq, "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(pm("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            pI(wz, "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(pm("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            pI(wv, "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(pm("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            pI(wr, "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(pm("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            pI(wn, "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(pm("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            pI(ww, "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(pm("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            pI(ws, "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(pm("Don't have any of the listed currencies but still wanna donate?", qe), true)
    DonationsGroup:AddLabel(pm("DM me and we'll work something out.", qk), true)
    local FaqGroup = pn.Info:AddRightGroupbox("FAQ", "circle-help")
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
end
y__14()
local y__9 = pn.Main:AddLeftGroupbox("Roll", "dices")
y__9:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
y__9:AddToggle("RemoveRollAnimation", { Text = "Remove Roll Animation", Default = false })
y__7 = pn.Main:AddLeftGroupbox("Group Chest", "gift")
y__7:AddToggle("AutoClaimGroupChest", { Text = "Auto Claim Group Chest", Default = false })
Label4 = y__7:AddLabel(pY())
y__18 = pn.Main:AddRightGroupbox("Upgrades", "arrow-big-up")
y__18:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
y__18:AddDropdown("UpgradeSelect", {
    Text = "Upgrades",
    Values = y__4,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
y__15 = pn.Trade:AddLeftGroupbox("Auto Sell", "banknote")
y__15:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
y__15:AddDropdown("SellRarities", { Text = "Rarity", Values = y__27, Default = {}, Multi = true, Searchable = true, AllowNull = true })
y__15:AddDropdown("SellPlayers", { Text = "Player", Values = y__23, Default = {}, Multi = true, Searchable = true, AllowNull = true })
local y__24_3 = pn.Trade:AddLeftGroupbox("Auto Buy Market", "store")
y__24_3:AddToggle("AutoBuyMarket", { Text = "Auto Buy Market", Default = false })
y__24_3:AddToggle("MarketShiniesOnly", { Text = "Buy Shinies Only", Default = false })
y__24_3:AddDropdown("MarketRarities", { Text = "Rarity", Values = y__27, Default = {}, Multi = true, Searchable = true, AllowNull = true })
y__24_3:AddDropdown("MarketPlayers", { Text = "Player", Values = y__23, Default = {}, Multi = true, Searchable = true, AllowNull = true })
y__24_3:AddDropdown("MarketPositions", {
    Text = "Position",
    Values = y__6,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
y__24_3:AddButton({ Text = "Refresh Market", Func = onRefreshMarket })
local y__21 = pn.Match:AddLeftGroupbox("Ranked", "trophy")
y__21:AddToggle("AutoRanked", { Text = "Auto Ranked", Default = false })
y__23 = pT[1] or "BALANCED"
y__21:AddDropdown("RankedPlayStyle", { Text = "Play Style", Values = pT, Default = y__23, Multi = false, Searchable = true })
Toggles.AutoRanked:OnChanged(fn761)
pP.RankedPlayStyle:OnChanged(fn474)
Toggles.RemoveRollAnimation:OnChanged(fn479)
if p8("RemoveRollAnimation") then
    pd(true)
end
MenuGroup, pX, pV, Label5, pA, y__24_4, y__4, y__14 = nil, nil, nil, nil, nil, nil, nil, nil
if ((not y__4 or y__4) and (y__4 or y__14) or not pX and Label5 and 1) and not ((not y__4 or y__4) and (y__4 or y__14) or not pX and Label5 and 1) then
    pX = function()
        local MovementGroup = pn.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = pn.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local function i2()
            local Character = LocalPlayer.Character
            local wS = Character and Character:FindFirstChildOfClass("Humanoid")
            return wS
        end
        local function i7()
            local Character = LocalPlayer.Character
            local wY = Character and Character:FindFirstChild("HumanoidRootPart")
            return wY
        end
        RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip and Toggles.NoClip.Value then
                local w__3 = LocalPlayer.Character
                if w__3 then
                    for i, descendant in ipairs(w__3:GetDescendants()) do
                        local w__4 = descendant:IsA("BasePart") and descendant.CanCollide
                        if w__4 then
                            descendant.CanCollide = false
                        end
                    end
                end
            end
        end)
        UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.InfJump and Toggles.InfJump.Value then
                local xa_2 = i2()
                if xa_2 then
                    xa_2:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
        local CurrentCamera = workspace.CurrentCamera
        RunService.RenderStepped:Connect(function(jt)
            if Library.Unloaded then
                return
            end
            if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
                local xf_4 = i2()
                if xf_4 then
                    xf_4.WalkSpeed = pP.WalkSpeed.Value
                end
            end
            if Toggles.Fly and Toggles.Fly.Value then
                local xf_6 = i7()
                local xg = i2()
                if xf_6 and xg then
                    xg.PlatformStand = true
                    local xg_2 = Vector3.zero
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        xg_2 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        xg_2 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        xg_2 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        xg_2 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        xg_2 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        xg_2 -= Vector3.new(0, 1, 0)
                    end
                    xf_6.Velocity = Vector3.zero
                    if xg_2.Magnitude > 0 then
                        xf_6.CFrame = xf_6.CFrame + xg_2.Unit * pP.FlySpeed.Value * jt
                    end
                end
            end
        end)
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local xm = i2()
                if xm then
                    xm.PlatformStand = false
                end
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local xo = i2()
                if xo then
                    xo.WalkSpeed = 16
                end
            end
        end)
        local function jO(jP)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not jP)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not jP
                end
            end)
            if not jP then
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
            jO(Toggles.AntiGameplayPause.Value)
        end)
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(1)
                if Toggles.AntiGameplayPause.Value then
                    jO(true)
                end
            end
        end)
        local function j5(j6)
            if not j6:IsA("ProximityPrompt") then
                return
            end
            j6.HoldDuration = 0
            j6.MaxActivationDistance = 50
            j6.RequiresLineOfSight = false
        end
        local connection
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(workspace:GetDescendants()) do
                    pcall(j5, descendant)
                end
                connection = workspace.DescendantAdded:Connect(function(kd)
                    if Toggles.InstantProximityPrompt.Value then
                        pcall(j5, kd)
                    end
                end)
            elseif connection then
                connection:Disconnect()
                connection = nil
            end
        end)
        Library:OnUnload(function()
            jO(false)
            if connection then
                connection:Disconnect()
            end
        end)
    end
    pX()
    pP = y__24_4.Settings:AddLeftGroupbox("Menu")
    pP:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Default = "RightShift", Text = "Menu keybind" })
    MenuGroup.ToggleKeybind = Library.MenuKeybind
    pn = 0
else
    local function y__24_5()
        local MovementGroup = pn.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = pn.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local function i2()
            local Character = LocalPlayer.Character
            local wS = Character and Character:FindFirstChildOfClass("Humanoid")
            return wS
        end
        local function i7()
            local Character = LocalPlayer.Character
            local wY = Character and Character:FindFirstChild("HumanoidRootPart")
            return wY
        end
        RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.NoClip and Toggles.NoClip.Value then
                local w__1 = LocalPlayer.Character
                if w__1 then
                    for i, descendant in ipairs(w__1:GetDescendants()) do
                        local w__2 = descendant:IsA("BasePart") and descendant.CanCollide
                        if w__2 then
                            descendant.CanCollide = false
                        end
                    end
                end
            end
        end)
        UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            if Toggles.InfJump and Toggles.InfJump.Value then
                local xa_1 = i2()
                if xa_1 then
                    xa_1:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end
        end)
        local CurrentCamera = workspace.CurrentCamera
        RunService.RenderStepped:Connect(function(jt)
            if Library.Unloaded then
                return
            end
            if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
                local xf_1 = i2()
                if xf_1 then
                    xf_1.WalkSpeed = pP.WalkSpeed.Value
                end
            end
            if Toggles.Fly and Toggles.Fly.Value then
                local xf_3 = i7()
                local xg = i2()
                if xf_3 and xg then
                    xg.PlatformStand = true
                    local xg_1 = Vector3.zero
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        xg_1 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        xg_1 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        xg_1 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        xg_1 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        xg_1 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        xg_1 -= Vector3.new(0, 1, 0)
                    end
                    xf_3.Velocity = Vector3.zero
                    if xg_1.Magnitude > 0 then
                        xf_3.CFrame = xf_3.CFrame + xg_1.Unit * pP.FlySpeed.Value * jt
                    end
                end
            end
        end)
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                local xm = i2()
                if xm then
                    xm.PlatformStand = false
                end
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                local xo = i2()
                if xo then
                    xo.WalkSpeed = 16
                end
            end
        end)
        local function jO(jP)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not jP)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not jP
                end
            end)
            if not jP then
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
            jO(Toggles.AntiGameplayPause.Value)
        end)
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(1)
                if Toggles.AntiGameplayPause.Value then
                    jO(true)
                end
            end
        end)
        local function j5(j6)
            if not j6:IsA("ProximityPrompt") then
                return
            end
            j6.HoldDuration = 0
            j6.MaxActivationDistance = 50
            j6.RequiresLineOfSight = false
        end
        local connection
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(workspace:GetDescendants()) do
                    pcall(j5, descendant)
                end
                connection = workspace.DescendantAdded:Connect(function(kd)
                    if Toggles.InstantProximityPrompt.Value then
                        pcall(j5, kd)
                    end
                end)
            elseif connection then
                connection:Disconnect()
                connection = nil
            end
        end)
        Library:OnUnload(function()
            jO(false)
            if connection then
                connection:Disconnect()
            end
        end)
    end
    y__24_5()
    MenuGroup = pn.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = pP.MenuKeybind
    pX = 0
end
pV = tick()
y__4 = function()
    local connection
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label5 = MenuGroup:AddLabel("AFK triggers: 0")
    local function kp()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        pX += 1
        pV = tick()
        pcall(function()
            Label5:SetText("AFK triggers: " .. pX)
        end)
    end
    connection = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(kp)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local xL = Toggles.AntiAfk.Value and tick() - pV >= 60
            if xL then
                pcall(kp)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
y__4()
y__19:SetLibrary(Library)
y__19:SetFolder("OuroborosHub")
y__19:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BuildABasketballDynasty")
pA = SaveManager:BuildConfigSection(pn.Settings)
y__14 = function()
    local function kQ(kR, kS)
        local xP = kR == "Toggle" and Toggles
        local xU = if xP then 1 else 0
        local xS = 1607 * xU + 2325 * (1 - xU)
        local xT = 2294 * xU + 862 * (1 - xU)
        if not ((xS * 945 + xT * 3043 + xS * xT) % 16777213 == 12185715) then
            xP = pP
        end
        local xP_1 = xP[kS]
        local xO_2 = type(xP_1) == "table" and xP_1.Type == kR
        return xO_2 and xP_1 or nil
    end
    local function k_(k0, k1)
        local Type = k1.Type
        if Type == "Toggle" then
            return { idx = k0, type = "Toggle", value = k1.Value == true }
        elseif Type == "Slider" then
            return { idx = k0, type = "Slider", value = tostring(k1.Value) }
        elseif Type == "Dropdown" then
            return { idx = k0, type = "Dropdown", multi = k1.Multi == true, value = k1.Value }
        elseif Type == "Input" then
            local xW = k1.Value or ""
            return { idx = k0, type = "Input", text = tostring(xW) }
        elseif Type == "ColorPicker" then
            return { idx = k0, type = "ColorPicker", value = k1.Value:ToHex(), transparency = k1.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = k0,
                type = "KeyPicker",
                mode = k1.Mode,
                key = k1.Value,
                modifiers = k1.Modifiers,
                toggled = k1.Toggled
            }
        else
            return nil
        end
    end
    local function k3()
        local xZ = {}
        for i, v in ipairs({ Toggles, pP }) do
            for k, v in pairs(v) do
                local x_ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if x_ then
                    local x__1 = k_(k, v)
                    if x__1 then
                        xZ[#xZ + 1] = x__1
                    end
                end
            end
        end
        table.sort(xZ, function(ld, le)
            if ld.type ~= le.type then
                return ld.type < le.type
            end
            return ld.idx < le.idx
        end)
        return { objects = xZ }
    end
    local function lf(lg)
        local yi
        yi = nil
        local yj = type(lg) ~= "table" or type(lg.idx) ~= "string" or type(lg.type) ~= "string" or SaveManager.Ignore[lg.idx]
        if yj then
            return false
        end
        yi = kQ(lg.type, lg.idx)
        if not yi then
            return false
        end
        local yj_1 = pcall(function()
            if lg.type == "Input" then
                if type(lg.text) ~= "string" then
                    return
                end
                yi:SetValue(lg.text)
            elseif lg.type == "ColorPicker" then
                yi:SetValueRGB(Color3.fromHex(lg.value), lg.transparency)
            elseif lg.type == "KeyPicker" then
                yi:SetValue({ lg.key, lg.mode, lg.modifiers })
                if lg.mode == "Toggle" and lg.toggled ~= nil then
                    yi.Toggled = lg.toggled
                    yi:Update()
                end
            else
                yi:SetValue(lg.value)
            end
        end)
        return yj_1
    end
    pA:AddDivider()
    pA:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    pA:AddButton("Export Config to Clipboard", function()
        local ym_1
        local yl_1
        yl_1, ym_1 = pcall(HttpService.JSONEncode, HttpService, k3())
        if not yl_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local yl_2 = setclipboard or toclipboard
        local yl_3 = type(yl_2) ~= "function" or not pcall(yl_2, ym_1)
        if yl_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    pA:AddButton("Import Config from Clipboard Text", function()
        local yu_1
        local ys = pP.SaveManager_ImportSource.Value or ""
        local ys_1
        local yt = tostring(ys):match("^%s*(.-)%s*$")
        if yt == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        ys_1, yu_1 = pcall(HttpService.JSONDecode, HttpService, yt)
        local yt_1 = not ys_1 or type(yu_1) ~= "table"
        local yy = if yt_1 then 1 else 0
        local yw = 847 * yy + 2911 * (1 - yy)
        local yx = 380 * yy + 1234 * (1 - yy)
        if not ((yw * 785 + yx * 2376 + yw * yx) % 16777213 == 1889635) then
            yt_1 = type(yu_1.objects) ~= "table"
        end
        if yt_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local ys_2 = 0
        for i, v in ipairs(yu_1.objects) do
            if lf(v) then
                ys_2 += 1
            end
        end
        if ys_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        pP.SaveManager_ImportSource:SetValue("")
        local yu_2 = ys_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(ys_2, yu_2), 6)
    end)
end
y__14()
y__19:ApplyToTab(pn.Settings)
y__19:LoadDefault()
SaveManager:LoadAutoloadConfig()
LocalPlayer.PlayerGui.ChildAdded:Connect(function(lM)
    if Library.Unloaded then
        return
    end
    local yF = p8("RemoveRollAnimation") and lM.Name == "RollOverlayGui"
    if yF then
        task.defer(function()
            pcall(function()
                lM:Destroy()
            end)
        end)
    end
end)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
pcall(fn879)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
Library:OnUnload(fn118)
