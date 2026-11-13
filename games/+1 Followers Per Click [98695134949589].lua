local kq
local kQ
local jP
local ClickRemote
local kW
local jV
local kD
local kj
local Options
local j6
local LocalPlayer
local kc
local Library
local kC
local TitleRoll
local j_
local kI
local ko
local j5
local connection
local kv
local kb
local kB
local kh
local k_
local jZ
local kN
local RebirthRemote
local VirtualUser
local jS
local kA
local kg
local kZ
local ChangePet
local kG
local Label
local j3
local Toggles
local ks
local j9
local kS
local connection2
local kY
local WorldManager
local kF
local kl
local j2
local kL
local j8
local kR
local ky
local ke
local jW
local kE
local j1
local kK
local function fn21(aE)
    local l7 = Toggles[aE]
    return l7 ~= nil and l7.Value == true
end
local function worker11()
    while not Library.Unloaded do
        if kW("AutoFollowers") then
            pcall(kA)
        end
        task.wait(kF("FollowersDelay", 0.05))
    end
end
local function fn49()
    local nWins = LocalPlayer:FindFirstChild("nWins")
    return nWins and nWins.Value or 0
end
local function fn52(aZ)
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(aZ)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = aZ
        end
    end
end
local function worker12()
    while not Library.Unloaded do
        if kW("AutoClick") then
            j5()
        end
        task.wait(kF("ClickDelay", 0.05))
    end
end
local function fn70()
    kE(kL, "Copied Discord invite to clipboard")
end
local function fn71(d_)
    if Toggles.AutoBuyAura and Toggles.AutoBuyAura.Value then
        Toggles.AutoBuyAura:SetValue(false)
    end
    if d_ then
        Library:Notify(d_)
    end
end
local function fn85()
    local mJ = jW()
    if mJ then
        jV(mJ)
    end
end
local function fn92()
    local nw = LocalPlayer:GetAttribute("World") or 1
    local nw_1 = WorldManager:GetMap(nw)
    if not nw_1 then
        return nil
    end
    local Platform = nw_1:FindFirstChild("Platform")
    if not Platform then
        return nil
    end
    local nw_2 = math.clamp(j1(), 1, 20)
    local ny = Platform:FindFirstChild("Platform" .. nw_2)
    if not ny then
        return nil
    end
    local ProximityPrompt = ny:FindFirstChildWhichIsA("ProximityPrompt", true)
    local nx_2 = ny:FindFirstChild("Proximity")
    local nz = nx_2 and not nx_2:IsA("BasePart")
    if nz then
        nx_2 = nx_2:FindFirstChildWhichIsA("BasePart")
    end
    if not nx_2 then
        nx_2 = ny:FindFirstChildWhichIsA("BasePart", true)
    end
    return ny, ProximityPrompt, nx_2
end
local function fn134()
    return (kB() + 1) * 20
end
local function fn155()
    local np = (LocalPlayer:GetAttribute("World"))
    local nv = if np then 1 else 0
    local nt = 526 * nv + 2217 * (1 - nv)
    local nu = 1729 * nv + 1306 * (1 - nv)
    if not ((nt * 2821 + nu * 1538 + nt * nu) % 16777213 == 5052502) then
        np = 1
    end
    local nq = np
    local np_1 = LocalPlayer:GetAttribute("Stage") or 1
    return math.min(21, np_1 - (nq - 1) * 20)
end
local function fn159(ak, al)
    if setclipboard then
        setclipboard(ak)
    elseif toclipboard then
        toclipboard(ak)
    end
    Library:Notify(al)
end
local function fn164(ab, ac)
    local l3 = tonumber(ab:match("%d+")) or 0
    local l4 = tonumber(ac:match("%d+")) or 0
    return l3 < l4
end
local function fn183(aJ, aK)
    local ma = Options[aJ]
    local mb = ma and tonumber(ma.Value)
    local ma_1 = mb
    local mf = if ma_1 then 1 else 0
    local md = 2457 * mf + 820 * (1 - mf)
    local me = 2799 * mf + 555 * (1 - mf)
    if not ((md * 262 + me * 1395 + md * me) % 16777213 == 11425482) then
        ma_1 = aK
    end
    return ma_1
end
local function fn209()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mu = leaderstats and leaderstats:FindFirstChild("Level")
    local mt_1 = mu
    if mu then
        mu = mt_1.Value
    end
    return mu or 0
end
local function fn212()
    local mX = LocalPlayer:GetAttribute("InBattle") or kW("AutoCompleteMinigame")
    if mX then
        return
    end
    local mX_1 = ke()
    if not mX_1 then
        kN()
        return
    end
    local mY = LocalPlayer:GetAttribute("Stage") or 1
    local mY_1 = kg()
    jV(mX_1.CFrame + Vector3.new(0, 3, 0))
    local mX_2 = os.clock() + math.max(kF("WinDelay", 0.5), 0.35)
    while true do
        if os.clock() < mX_2 then
            local m_ = Library.Unloaded or not kW("AutoWin")
            if m_ then
                break
            end
            local m__1 = LocalPlayer:GetAttribute("Stage") or 1
            local m__2 = m__1 ~= mY or kg() > mY_1
            if m__2 then
                kN()
                task.wait(0.15)
                return
            end
            task.wait(0.05)
            continue
        end
        kN()
        task.wait(0.15)
        return
    end
    return
end
local function worker2()
    while not Library.Unloaded do
        if kW("AutoEquipBestPet") then
            pcall(j2)
        end
        task.wait(kF("EquipBestDelay", 5))
    end
end
local function fn247()
    local ni = LocalPlayer:GetAttribute("InBattle") or kW("AutoCompleteMinigame")
    if ni then
        return
    end
    local ni_1 = kb()
    if not ni_1 then
        return
    end
    local nj = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local nj_1 = not nj
    local no = if nj_1 then 1 else 0
    local nm = 158 * no + 3685 * (1 - no)
    local nn = 2477 * no + 1535 * (1 - no)
    if not ((nm * 856 + nn * 2475 + nm * nn) % 16777213 == 6657189) then
        nj_1 = (nj.Position - ni_1.Position).Magnitude > 6
    end
    if nj_1 then
        jV(ni_1.CFrame + Vector3.new(0, 3, 0))
    end
    j5()
end
local function fn255()
    local ol = j9("AuraPack")
    local om = type(ol) == "string" and ol:match("%d+")
    local ol_1 = om or nil
    local om_1 = tonumber(ol_1)
    local ol_2 = om_1 or LocalPlayer:GetAttribute("CurrentPack")
    return ol_2 or 1
end
local function worker8()
    while not Library.Unloaded do
        if kW("AutoBuyAura") then
            pcall(kQ)
        end
        task.wait(kF("AuraDelay", 1))
    end
end
local function fn279()
    local m2 = LocalPlayer:GetAttribute("World") or 1
    local m2_1 = WorldManager:GetWorld(m2)
    if not m2_1 then
        return nil
    end
    local TrainingZones = m2_1:FindFirstChild("TrainingZones")
    if not TrainingZones then
        return nil
    end
    local m2_2 = kB()
    local m4 = -1
    local m5
    for i, child in ipairs(TrainingZones:GetChildren()) do
        if child:IsA("Model") then
            local m3_2 = (tonumber(child:GetAttribute("Rebirth")))
            local nh = if m3_2 then 1 else 0
            local nf = 3333 * nh + 4024 * (1 - nh)
            local ng = 1834 * nh + 394 * (1 - nh)
            if not ((nf * 1507 + ng * 3883 + nf * ng) % 16777213 == 1479762) then
                m3_2 = 0
            end
            local m6 = m3_2
            local m3_3 = tonumber(child:GetAttribute("Multiplier")) or 0
            if m6 <= m2_2 and m6 < 1000000 and m3_3 > m4 then
                local TouchPart = child:FindFirstChild("TouchPart", true)
                local m6_1 = TouchPart and TouchPart:IsA("BasePart")
                if m6_1 then
                    m5 = TouchPart
                    m4 = m3_3
                end
            end
        end
    end
    return m5
end
local function worker3()
    while not Library.Unloaded do
        if kW("AutoClaimDaily") then
            pcall(kZ)
        end
        task.wait(kF("DailyDelay", 5))
    end
end
local function fn292()
    local pv_1
    local pu_1
    if identifyexecutor then
        pv_1, pu_1 = identifyexecutor()
        local pw = pv_1 ~= ""
        local px = type(pv_1) == "string" and pw
        if px then
            local pw_1 = type(pu_1) == "string" and pu_1 ~= "" and pv_1 .. " " .. pu_1
            kG = pw_1 or pv_1
        end
    end
end
local function worker13()
    while not Library.Unloaded do
        if kW("AutoWin") then
            pcall(kY)
        else
            task.wait(0.25)
        end
    end
end
local function fn299(aP)
    local mg = Options[aP]
    return mg and mg.Value or {}
end
local function onInputBegan()
    j6 = tick()
end
local function worker9()
    while not Library.Unloaded do
        if kW("AutoBuyClickUpgrader") then
            pcall(kl)
        end
        task.wait(kF("ClickUpgraderDelay", 1))
    end
end
local function fn322(c1)
    local ProximityPrompt = c1:FindFirstChildWhichIsA("ProximityPrompt", true)
    return ProximityPrompt
end
local function fn335(cC, cD)
    local nE = os.clock()
    local nG = nE + (cD or 10)
    while os.clock() < nG do
        local nE_1 = Library.Unloaded or not kW("AutoCompleteMinigame")
        if nE_1 then
            return false
        end
        if cC() then
            return true
        end
        task.wait(0.05)
    end
    return cC()
end
local function onOnClientEvent(dX)
    if type(dX) == "string" then
        j_ = dX
    end
end
local function worker5()
    while not Library.Unloaded do
        if kW("AutoRebirth") then
            pcall(kR)
        end
        task.wait(kF("RebirthDelay", 1))
    end
end
local function fn441()
    local mL = j9("WinPlate")
    if type(mL) == "string" then
        local mM_1 = tonumber(mL:match("%d+"))
        if mM_1 then
            return math.clamp(mM_1, 1, 21)
        end
        local mL_1 = LocalPlayer:GetAttribute("World") or 1
        local mL_2 = LocalPlayer:GetAttribute("Stage") or 1
        return math.min(21, mL_2 - (mL_1 - 1) * 20)
    end
    local mL_3 = LocalPlayer:GetAttribute("World") or 1
    local mL_4 = LocalPlayer:GetAttribute("Stage") or 1
    return math.min(21, mL_4 - (mL_3 - 1) * 20)
end
local function fn447()
    local nRebirth = LocalPlayer:FindFirstChild("nRebirth")
    return nRebirth and nRebirth.Value or 0
end
local function fn457()
    local oo = j9("StopAura")
    local op = oo == ""
    local oq = type(oo) ~= "string" or op
    if oq or oo == "None" then
        return nil
    end
    return oo
end
local function fn472()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    j3 = tick()
end
local function fn480(ar, as)
    return string.format('<font color="%s">%s</font>', as, ar)
end
local function worker14()
    while not Library.Unloaded do
        task.wait(2)
        if kW("AntiAfk") then
            local pR = tick() - j6
            local pS = tick() - j3
            if pR >= 300 and pS >= 60 then
                pcall(jP)
            else
                if pR < 300 and pS >= 300 then
                    pcall(jP)
                end
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local fU = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kh)
    kE(fU, "Copied join script to clipboard")
end
local function fn541()
    if kg() < 10 then
        return
    end
    pcall(function()
        TitleRoll:FireServer("Normal")
    end)
end
local function fn558(au, av, aw)
    return string.format("<b>%s</b> %s %s", au, kj("-", "#5a6070"), kj(av, aw))
end
local function fn606()
    local mD = LocalPlayer:GetAttribute("World") or 1
    local mD_1 = WorldManager:GetWorld(mD)
    local mE_1 = mD_1 and mD_1:FindFirstChild("SpawnLocation")
    if mE_1 then
        return mE_1.CFrame + Vector3.new(0, 8, 0)
    end
    return nil
end
local function worker6()
    while not Library.Unloaded do
        if kW("AutoHatchEggs") then
            pcall(ks)
        end
        task.wait(kF("HatchDelay", 1))
    end
end
local function fn656()
    if kS() < kq() then
        return
    end
    pcall(function()
        RebirthRemote:FireServer()
    end)
end
local function onAuraPack()
    ky()
end
local function fn659()
    local ov = k_()
    local ow = { "None" }
    local ox = ko[ov]
    local oC = if ox then 1 else 0
    local oA = 1549 * oC + 3725 * (1 - oC)
    local oB = 1274 * oC + 3240 * (1 - oC)
    if not ((oA * 930 + oB * 385 + oA * oB) % 16777213 == 3904486) then
        ox = ow
    end
    local ov_1 = ox
    local StopAura = Options.StopAura
    if not StopAura then
        return
    end
    StopAura:SetValues(ov_1)
    local Value = StopAura.Value
    local oy = false
    for i, v in ipairs(ov_1) do
        if v == Value then
            oy = true
            break
        end
    end
    if not oy then
        StopAura:SetValue("None")
    end
end
local function fn661()
    pcall(function()
        ChangePet:InvokeServer(nil, "EquipBest")
    end)
end
local function onRscripts()
    kE(kI, "Copied Rscripts profile to clipboard")
end
local function fn686()
    if LocalPlayer:GetAttribute("InBattle") then
        return
    end
    pcall(function()
        ClickRemote:FireServer()
    end)
end
local function fn687(fD)
    local DiscordGroup = fD:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kv })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kv })
end
local function fn714()
    connection:Disconnect()
    connection2:Disconnect()
end
local function worker10()
    while not Library.Unloaded do
        if kW("AutoCompleteMinigame") then
            pcall(j8)
            task.wait(kF("MinigameDelay", 0.5))
        else
            task.wait(0.25)
        end
    end
end
local function worker()
    local pD_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local pC = math.floor(os.clock() - jZ)
        if pC < 60 then
            pD_1 = pC .. "s"
        elseif pC < 3600 then
            pD_1 = string.format("%dm %ds", pC // 60, pC % 60)
        else
            pD_1 = string.format("%dh %dm", pC // 3600, pC % 3600 // 60)
        end
        Label:SetText(kc("Session time", pD_1, jS))
    end
end
local function onInputChanged(gu)
    local UserInputType = gu.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        j6 = tick()
    end
end
local function worker4()
    while not Library.Unloaded do
        if kW("AutoRollTitle") then
            pcall(kD)
        end
        task.wait(kF("TitleDelay", 1))
    end
end
local function fn777(aU)
    local mk = Options[aU]
    return mk and mk.Value or nil
end
local function fn778()
    local mP = LocalPlayer:GetAttribute("World") or 1
    local mP_1 = kC()
    local attr = LocalPlayer:GetAttribute("HasX2Win")
    local mS = WorldManager:GetMap(mP)
    if not mS then
        return nil
    end
    local mR_1 = attr and "Win2" or "Win"
    local mQ_2 = mS:FindFirstChild(mR_1)
    if not mQ_2 then
        return nil
    end
    local mR_2 = mQ_2:FindFirstChild("Lane" .. mP_1)
    if not mR_2 then
        return nil
    end
    return mR_2:FindFirstChild("WinPart")
end
local function worker7()
    while not Library.Unloaded do
        if kW("AutoBuyUpgrades") then
            pcall(kK)
        end
        task.wait(kF("UpgradeDelay", 2))
    end
end
local function onUnload()
    Library:Unload()
end
jP = nil
jS = nil
jV = nil
jW = nil
WorldManager = nil
ChangePet = nil
jZ = nil
j_ = nil
j1 = nil
j2 = nil
j3 = nil
j5 = nil
j6 = nil
j8 = nil
j9 = nil
kb = nil
kc = nil
ke = nil
kg = nil
kh = nil
TitleRoll = nil
kj = nil
kl = nil
Label = nil
ko = nil
kq = nil
ks = nil
RebirthRemote = nil
kv = nil
ClickRemote = nil
ky = nil
connection2 = nil
kA = nil
kB = nil
kC = nil
local Upgrades, jR, jT, PhoneConfig, HatchPet, GetPlayerData, BattleTap, RollVisualFinished, kd, Roll, kk, ClaimDailyReward, kp, BuyUpgrade, kw
kD = nil
kE = nil
kF = nil
kG = nil
kI = nil
Options = nil
kK = nil
kL = nil
Toggles = nil
kN = nil
connection = nil
LocalPlayer = nil
kQ = nil
kR = nil
kS = nil
VirtualUser = nil
Library = nil
kW = nil
kY = nil
kZ = nil
k_ = nil
local kH, Chances, li
kH = nil
Chances = nil
local Eggs
VirtualUser, LocalPlayer, kL, kI, ClickRemote, RebirthRemote, BuyUpgrade, ClaimDailyReward, TitleRoll, Roll, RollVisualFinished, BattleTap, GetPlayerData, HatchPet, ChangePet, WorldManager, PhoneConfig, Upgrades, Eggs, Chances = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local p8_3 = game:GetService("Players")
local p8_21 = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = p8_3.LocalPlayer
local k8 = "+1 Followers Per Click"
kL = "https://discord.gg/ehKVq7pf7v"
kI = "https://rscripts.net/@Ouroboros"
local Remotes = p8_21:WaitForChild("Remotes")
local p8_5_3
local p8_19 = Remotes:WaitForChild("Events")
local p8_11 = Remotes:WaitForChild("Functions")
ClickRemote = p8_19:WaitForChild("ClickRemote")
RebirthRemote = p8_19:WaitForChild("RebirthRemote")
BuyUpgrade = p8_19:WaitForChild("BuyUpgrade")
ClaimDailyReward = p8_19:WaitForChild("ClaimDailyReward")
TitleRoll = p8_19:WaitForChild("TitleRoll")
Roll = p8_19:WaitForChild("Roll")
local p8_15 = p8_19:WaitForChild("RollVisual")
RollVisualFinished = p8_19:WaitForChild("RollVisualFinished")
BattleTap = p8_19:WaitForChild("BattleTap")
GetPlayerData = p8_11:WaitForChild("GetPlayerData")
HatchPet = Remotes:WaitForChild("HatchPet")
ChangePet = Remotes:WaitForChild("ChangePet")
WorldManager = require(p8_21.Modules.WorldManager)
PhoneConfig = require(p8_21.PhoneConfig)
Upgrades = require(p8_21.Configuration.Upgrades)
local p8_7 = require(p8_21.Configuration.Upgrades.ListUpgrade)
if (not ClickRemote or p8_3) and (not HatchPet and p8_3) and (Chances or Eggs or (ClickRemote or HatchPet)) or (not p8_3 and not Eggs or (not HatchPet or Chances)) and (not ClickRemote or ClickRemote or (not Chances or false)) or not ((not ClickRemote or p8_3) and (not HatchPet and p8_3) and (Chances or Eggs or (ClickRemote or HatchPet)) or (not p8_3 and not Eggs or (not HatchPet or Chances)) and (not ClickRemote or ClickRemote or (not Chances or false))) then
    Eggs = require(p8_21.Configuration.Eggs)
else
    p8_21 = require(Eggs.Configuration.Eggs)
end
Chances = require(p8_21.Configuration.AuraMultipliers.Chances)
local k9 = {}
for i, v in ipairs(p8_7) do
    k9[#k9 + 1] = v.Name
end
p8_3 = {}
for k, v in pairs(Eggs) do
    p8_11 = type(v) == "table" and v.Currency == "Wins"
    if p8_11 then
        p8_3[#p8_3 + 1] = k
    end
end
table.sort(p8_3)
p8_19 = { "Current" }
local lI = 1
while lI <= 21 do
    local lJ = lI
    p8_19[#p8_19 + 1] = "Lane" .. lJ
    lI += 1
end
ko = {}
p8_11 = {}
local p8_13 = Chances.Packs or {}
for k, v in pairs(p8_13) do
    local p8_5_2 = tonumber(k)
    if p8_5_2 then
        p8_11[#p8_11 + 1] = "Pack " .. p8_5_2
        local p8_13_1 = { "None" }
        p8_21 = Chances.AuraMultipliers and Chances.AuraMultipliers[p8_5_2]
        p8_7 = p8_21
        if type(p8_7) == "table" then
            p8_21 = {}
            for k in pairs(p8_7) do
                p8_21[#p8_21 + 1] = k
            end
            table.sort(p8_21)
            for i, v in ipairs(p8_21) do
                p8_13_1[#p8_13_1 + 1] = v
            end
        end
        ko[p8_5_2] = p8_13_1
    end
end
Library, Toggles, Options, jS, j_, p8_21, li, kE, kv, kj, kc, kW, kF, kp, j9, jV, kS, kB, kq, kg, j5, jW, kN, kC, ke, kY, kb, kA, j1, jR, kw, j8, kk, kd, kl, k_, kH, ky, jT, kQ, kR, kD, ks, kK, kZ, j2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(p8_11, fn164)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local lj = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
kE = fn159
kv = fn70
kj = fn480
kc = fn558
local lf = "#7fd47f"
local le = "#6ec1ff"
jS = "#e8a34d"
local lh = "#8b93a3"
local lg = "#ff6b6b"
kW = fn21
kF = fn183
kp = fn299
j9 = fn777
jV = fn52
kS = fn209
kB = fn447
kq = fn134
kg = fn49
j5 = fn686
jW = fn606
kN = fn85
kC = fn441
ke = fn778
kY = fn212
kb = fn279
kA = fn247
j1 = fn155
jR = fn92
kw = fn335
j8 = function()
    local nI
    local nK_1
    local nJ_2
    local nP = if LocalPlayer:GetAttribute("InBattle") then 1 else 0
    if nP == 1 then
        while true do
            local nJ_1 = kW("AutoCompleteMinigame") and not Library.Unloaded and LocalPlayer:GetAttribute("InBattle")
            if nJ_1 then
                pcall(function()
                    BattleTap:FireServer()
                end)
                task.wait(0.05)
                continue
            end
            break
        end
        task.wait(0.35)
        return
    end
    nJ_2, nI, nK_1 = jR()
    if not nK_1 then
        return
    end
    local nJ_3 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not nJ_3 or (nJ_3.Position - nK_1.Position).Magnitude > 8 then
        jV(nK_1.CFrame + Vector3.new(0, 3, 0))
        task.wait(0.15)
    end
    if nI and fireproximityprompt then
        pcall(function()
            fireproximityprompt(nI)
        end)
    end
    if not kw(function()
        return LocalPlayer:GetAttribute("InBattle") == true
    end, 8) then
        return
    end
    while true do
        local nJ_6 = kW("AutoCompleteMinigame") and not Library.Unloaded and LocalPlayer:GetAttribute("InBattle")
        if nJ_6 then
            pcall(function()
                BattleTap:FireServer()
            end)
            task.wait(0.05)
            continue
        end
        break
    end
    task.wait(0.5)
end
kk = fn322
kd = function()
    local nY_1
    local nU = LocalPlayer:GetAttribute("World") or 1
    local nV_2
    local nU_1 = WorldManager:GetWorld(nU)
    if not nU_1 then
        return nil
    end
    local FollowersBoosts = nU_1:FindFirstChild("FollowersBoosts")
    if not FollowersBoosts then
        return nil
    end
    local nU_2 = kg()
    local nW = LocalPlayer:GetAttribute("BaseFollowers") or 1
    local nX
    for i, v in ipairs({ FollowersBoosts:FindFirstChild("FirstFloor"), FollowersBoosts:FindFirstChild("SecondFloor") }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Model") then
                    local nT = tonumber(child.Name)
                    if nT then
                        nV_2, nY_1 = pcall(function()
                            return PhoneConfig:get("Phone" .. nT)
                        end)
                        if nV_2 and nY_1 and nY_1.winsRequired <= nU_2 and nY_1.followersPerClick > nW then
                            nW = nY_1.followersPerClick
                            nX = child
                        end
                    end
                end
            end
        end
    end
    return nX
end
kl = function()
    local od = kd()
    if not od then
        return
    end
    local BoostPart = od:FindFirstChild("BoostPart")
    local of = BoostPart or od:FindFirstChildWhichIsA("BasePart", true)
    if of then
        jV(of.CFrame + Vector3.new(0, 3, 0))
    end
    task.wait(0.15)
    local oc = kk(od)
    if oc and fireproximityprompt then
        pcall(function()
            fireproximityprompt(oc)
        end)
    end
end
k_ = fn255
kH = fn457
ky = fn659
j_ = nil
p8_15.OnClientEvent:Connect(onOnClientEvent)
jT = fn71
kQ = function()
    local oM
    oM = k_()
    local oN = Chances.Packs and Chances.Packs[oM]
    if not oN then
        return
    end
    local oN_1 = kH()
    local attr = LocalPlayer:GetAttribute("AuraName")
    local oQ = j_ == oN_1
    local oQ_3
    if oN_1 and (attr == oN_1 or oQ) then
        jT("Stopped aura roll on " .. oN_1)
        return
    end
    local oP_2 = kg()
    if oP_2 < (oN.price or math.huge) then
        return
    end
    j_ = nil
    pcall(function()
        Roll:FireServer("Normal", oM)
    end)
    local oO_1 = os.clock() + 3
    while true do
        if os.clock() < oO_1 then
            local oP_3 = Library.Unloaded or not kW("AutoBuyAura")
            if oP_3 then
                break
            elseif j_ then
                pcall(function()
                    RollVisualFinished:FireServer()
                end)
                local oO_2 = j_ or LocalPlayer:GetAttribute("AuraName")
                if oQ_3 then
                    jT("Stopped aura roll on " .. oN_1)
                end
                return
            else
                task.wait(0.05)
                continue
            end
        else
            pcall(function()
                RollVisualFinished:FireServer()
            end)
            local oO_4 = j_ or LocalPlayer:GetAttribute("AuraName")
            oQ_3 = oN_1 and oO_4 == oN_1
            if oQ_3 then
                jT("Stopped aura roll on " .. oN_1)
            end
            return
        end
    end
    return
end
if ((kB or ke) and (not ke or false) and (not ky and not kB or (not kB or not ky)) or (lh and kB or false) and (lh and ky and (false or not ky))) and not ((kB or ke) and (not ke or false) and (not ky and not kB or (not kB or not ky)) or (lh and kB or false) and (lh and ky and (false or not ky))) then
    kZ = fn656
    kK = fn541
    kR = function()
        local oY, oZ
        oY = j9("EggChoice")
        if not oY or oY == "" then
            return
        end
        local o__5 = Eggs[oY]
        if not o__5 or o__5.Currency ~= "Wins" then
            return
        end
        local o0_6 = kg()
        if o0_6 < (o__5.Cost or math.huge) then
            return
        end
        local o__6 = LocalPlayer:GetAttribute("World") or 1
        local o__7 = WorldManager:GetEggFolder(o__6)
        if not o__7 then
            return
        end
        local o0_8 = o__7:FindFirstChild(oY)
        if not o0_8 then
            return
        end
        local o__8 = tonumber(j9("HatchAmount")) or 1
        oZ = o__8
        if oZ ~= 3 then
            oZ = 1
        end
        jV(CFrame.new(o0_8.Position + Vector3.new(0, 3, 0)))
        task.wait(0.1)
        pcall(function()
            HatchPet:FireServer(oY, oZ, {})
        end)
    end
    ks = function()
        local o4_3
        local o5_5
        local o3 = {}
        o4_3, o5_5 = pcall(function()
            return GetPlayerData:InvokeServer()
        end)
        local o6 = o4_3 and type(o5_5) == "table" and type(o5_5.Upgrades) == "table"
        if o6 then
            o3 = o5_5.Upgrades
        end
        local o4_4 = kg()
        for k, v in pairs(kp("UpgradeKinds")) do
            local pb = k
            if v then
                local o5_6 = o3[pb] or 0
                local o5_7 = Upgrades:GetMaxLevel(pb)
                if o5_6 < o5_7 then
                    local o5_8 = Upgrades:GetPrice(pb, o5_6)
                    if o4_4 >= o5_8 then
                        pcall(function()
                            BuyUpgrade:FireServer(pb, "Win")
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
    end
    kD = function()
        local pi_2
        local ph_4
        local pg = {}
        ph_4, pi_2 = pcall(function()
            return GetPlayerData:InvokeServer()
        end)
        local pj = ph_4 and type(pi_2) == "table" and type(pi_2.DailyClaimableRewards) == "table"
        if pj then
            pg = pi_2.DailyClaimableRewards
        end
        local ph_5 = false
        for k, v in pairs(pg) do
            local pf = tonumber(v)
            if pf then
                pcall(function()
                    ClaimDailyReward:FireServer(pf)
                end)
                ph_5 = true
                task.wait(0.15)
            end
        end
        if not ph_5 then
            local pg_4 = tonumber(LocalPlayer:GetAttribute("DailyRewardDay")) or 1
            local pe = pg_4
            local pg_5 = tonumber(LocalPlayer:GetAttribute("LastDailyRewardClaimTime")) or 0
            local pg_6 = pg_5 == 0 or os.time() - pg_5 >= 86400
            if pg_6 then
                pcall(function()
                    ClaimDailyReward:FireServer(pe)
                end)
            end
        end
    end
else
    kR = fn656
    kD = fn541
    ks = function()
        local oY, oZ
        oY = j9("EggChoice")
        if not oY or oY == "" then
            return
        end
        local o__1 = Eggs[oY]
        if not o__1 or o__1.Currency ~= "Wins" then
            return
        end
        local o0_2 = kg()
        if o0_2 < (o__1.Cost or math.huge) then
            return
        end
        local o__2 = LocalPlayer:GetAttribute("World") or 1
        local o__3 = WorldManager:GetEggFolder(o__2)
        if not o__3 then
            return
        end
        local o0_4 = o__3:FindFirstChild(oY)
        if not o0_4 then
            return
        end
        local o__4 = tonumber(j9("HatchAmount")) or 1
        oZ = o__4
        if oZ ~= 3 then
            oZ = 1
        end
        jV(CFrame.new(o0_4.Position + Vector3.new(0, 3, 0)))
        task.wait(0.1)
        pcall(function()
            HatchPet:FireServer(oY, oZ, {})
        end)
    end
    kK = function()
        local o4_1
        local o5_1
        local o3 = {}
        o4_1, o5_1 = pcall(function()
            return GetPlayerData:InvokeServer()
        end)
        local o6 = o4_1 and type(o5_1) == "table" and type(o5_1.Upgrades) == "table"
        if o6 then
            o3 = o5_1.Upgrades
        end
        local o4_2 = kg()
        for k, v in pairs(kp("UpgradeKinds")) do
            local pb = k
            if v then
                local o5_2 = o3[pb] or 0
                local o5_3 = Upgrades:GetMaxLevel(pb)
                if o5_2 < o5_3 then
                    local o5_4 = Upgrades:GetPrice(pb, o5_2)
                    if o4_2 >= o5_4 then
                        pcall(function()
                            BuyUpgrade:FireServer(pb, "Win")
                        end)
                        task.wait(0.1)
                    end
                end
            end
        end
    end
    kZ = function()
        local pi_1
        local ph_1
        local pg = {}
        ph_1, pi_1 = pcall(function()
            return GetPlayerData:InvokeServer()
        end)
        local pj = ph_1 and type(pi_1) == "table" and type(pi_1.DailyClaimableRewards) == "table"
        if pj then
            pg = pi_1.DailyClaimableRewards
        end
        local ph_2 = false
        for k, v in pairs(pg) do
            local pf = tonumber(v)
            if pf then
                pcall(function()
                    ClaimDailyReward:FireServer(pf)
                end)
                ph_2 = true
                task.wait(0.15)
            end
        end
        if not ph_2 then
            local pg_1 = tonumber(LocalPlayer:GetAttribute("DailyRewardDay")) or 1
            local pe = pg_1
            local pg_2 = tonumber(LocalPlayer:GetAttribute("LastDailyRewardClaimTime")) or 0
            local pg_3 = pg_2 == 0 or os.time() - pg_2 >= 86400
            if pg_3 then
                pcall(function()
                    ClaimDailyReward:FireServer(pe)
                end)
            end
        end
    end
end
j2 = fn661
if (not kH or not kD or not kH and kH) and (not kD or not kD or not kH and kD) and (kD or not kD or (kH or kH) or (kD and not kH or kD and not kD)) and ((kD and not kD or (kD or not kH)) and (kH or kH or kH and not kH) or (kD and not kD or (kD or kH)) and (kH or not kH or (not kD or not kH))) or not ((not kH or not kD or not kH and kH) and (not kD or not kD or not kH and kD) and (kD or not kD or (kH or kH) or (kD and not kH or kD and not kD)) and ((kD and not kD or (kD or not kH)) and (kH or kH or kH and not kH) or (kD and not kD or (kD or kH)) and (kH or not kH or (not kD or not kH)))) then
    p8_21 = Library:CreateWindow({
        Title = "Ouroboros Hub",
        Footer = { { Text = kL, Copyable = true }, "|", k8 },
        Icon = 12645376577,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 10
    })
else
    k8 = p8_21:CreateWindow({
        Footer = { kL, "|", { Text = Library, Copyable = true } },
        ShowCustomCursor = false,
        Icon = 12645376577,
        Title = "Ouroboros Hub",
        CornerRadius = 10,
        NotifySide = "Right"
    })
end
if (not kF or false or (kj or false)) and (not kj and kF or not kj and kF) and (not kj and not kj or kF and kj or kj and false and (not kj and kF)) or not ((not kF or false or (kj or false)) and (not kj and kF or not kj and kF) and (not kj and not kj or kF and kj or kj and false and (not kj and kF))) then
    li = {}
else
    lj = {}
end
li.Info = p8_21:AddTab("Info", "info")
local lc = p8_21:AddTab("Main", "gamepad-2")
li.Settings = p8_21:AddTab("Settings", "settings")
lc:SetSubTabAlignment("Center")
li.Farm = lc:AddSubTab("Farm", "sprout")
li.Shop = lc:AddSubTab("Shop", "shopping-cart")
li.Progress = lc:AddSubTab("Progress", "trending-up")
local ld = fn687
for k, v in li do
    ld(v)
end
kG, p8_5_3, p8_7, Label, kh, p8_21 = nil, nil, nil, nil, nil, nil
local p8_13_2 = 0
repeat
    p8_15 = (p8_13_2 * 1 + 1) % 3 + 1
    if p8_15 <= 2 then
        if p8_15 <= 1 then
            if p8_13_2 * 73305693 + 3 + 2 <= p8_13_2 * 73305693 + 3 + 2 + 3 then
                p8_21 = #kh > 18
            else
                kh = #p8_21 > 18
            end
            p8_13_2 = (p8_13_2 + 10) % 12
        else
            p8_15 = {
                "jdwjnpuk",
                "wtp",
                "kbxrhviyaivl",
                "asnexqdxzwf",
                "ctu",
                "dxieoscni",
                "brh",
                "yvjpl",
                "jaxiimv",
                "pil",
                "qdapvfjqlt",
                "orxuselov",
                "mfxbkfy"
            }
            if p8_15[(p8_13_2 * 18 + 21) % 13 + 1] < p8_15[(p8_13_2 * 18 + 21) % 13 + 1] then
                kc = "Unknown"
                pcall(fn292)
                kG = LocalPlayer.Info:AddLeftGroupbox("Account", "circle-user")
                kG:AddLabel(k8("User", Label.Name, kj), true)
                kG:AddLabel(k8("Status", "Keyless", kj), true)
                kG:AddLabel(k8("Executor", kc, kj), true)
                le = LocalPlayer.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                le:AddLabel(lf(p8_5_3 .. " [" .. tostring(game.PlaceId) .. "]", p8_7), true)
                le:AddLabel(k8("Place ID", tostring(game.PlaceId), p8_7), true)
                jS = le:AddLabel(k8("Session time", "0s", li), true)
            else
                kG = "Unknown"
                pcall(fn292)
                p8_5_3 = li.Info:AddLeftGroupbox("Account", "circle-user")
                p8_5_3:AddLabel(kc("User", LocalPlayer.Name, lf), true)
                p8_5_3:AddLabel(kc("Status", "Keyless", lf), true)
                p8_5_3:AddLabel(kc("Executor", kG, lf), true)
                p8_7 = li.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                p8_7:AddLabel(kj(k8 .. " [" .. tostring(game.PlaceId) .. "]", le), true)
                p8_7:AddLabel(kc("Place ID", tostring(game.PlaceId), le), true)
                Label = p8_7:AddLabel(kc("Session time", "0s", jS), true)
            end
            p8_13_2 = (p8_13_2 + 10) % 12
        end
    else
        p8_15 = {
            "crrbdrudb",
            "rcvhlrk",
            "ljmas",
            "dwklxlru",
            "prtgxpdorpf",
            "ashtiulsykof",
            "byknazdo",
            "nsvqrsbwdnn",
            "bbemdudlufum",
            "rfprcllysmp",
            "lugckyycax",
            "jwzjtaimilq",
            "lyukc",
            "xomeiucl",
            "batis"
        }
        if p8_15[(p8_13_2 * 83 + 76) % 15 + 1] <= p8_15[(p8_13_2 * 83 + 76) % 15 + 1] then
            kh = tostring(game.JobId)
        else
            kG = tostring(game.JobId)
        end
        p8_13_2 = (p8_13_2 + 10) % 12
    end
until (p8_13_2 * 5 + 5) % 12 == 11
if p8_21 then
    local p8_5_4 = 0
    repeat
        local p8_13_3 = {
            "ivg",
            "emil",
            "mmfdhlgu",
            "tsryigrcijsi",
            "cdpimttwmjdw",
            "rlxnyoh",
            "gftc",
            "ufbotvyimet",
            "iwfyaavqjz",
            "zlysfkd"
        }
        if p8_13_3[(p8_5_4 * 21 + 82) % 10 + 1] <= p8_13_3[(p8_5_4 * 21 + 82) % 10 + 1] then
            p8_21 = string.sub(kh, 1, 18) .. "..."
        else
            kh = string.sub(p8_21, 1, 18) .. "..."
        end
        p8_5_4 = (p8_5_4 + 6) % 8
    until (p8_5_4 * 7 + 0) % 8 == 2
end
local p8_5_5 = p8_21 or kh
jZ = nil
p8_7:AddLabel(kc("Server", p8_5_5, lh), true)
p8_7:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
jZ = os.clock()
task.spawn(worker)
local ScriptsGroup = li.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kj("Included in this hub", lh), true)
ScriptsGroup:AddLabel(kj(k8, le), true)
local FeaturesGroup = li.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kj("Auto Farm", le), true)
FeaturesGroup:AddLabel(kj("Auto Shop", lf), true)
FeaturesGroup:AddLabel(kj("Auto Progress", jS), true)
FeaturesGroup:AddLabel(kj("Misc Utilities", lh), true)
ld = li.Info:AddRightGroupbox("Socials", "link")
ld:AddButton({ Text = "Discord", Func = kv })
ld:AddButton({ Text = "Rscripts", Func = onRscripts })
lc = li.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
lc:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
lc:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
lc:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
lc:AddButton({ Text = "Copy Discord Invite", Func = kv })
local FaqGroup = li.Info:AddRightGroupbox("FAQ", "circle-help")
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
p8_21 = li.Farm:AddLeftGroupbox("Farm", "mouse-pointer-click")
p8_21:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
p8_21:AddLabel(kj("Auto Win is laggy and can drop FPS.", lg), true)
p8_21:AddDropdown("WinPlate", { Text = "Win plate", Values = p8_19, Default = "Current" })
p8_21:AddSlider("WinDelay", { Text = "Win delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
p8_21:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
p8_21:AddSlider("ClickDelay", { Text = "Click delay", Default = 0.05, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
p8_21:AddToggle("AutoFollowers", { Text = "Auto Followers based on Rebirth", Default = false })
p8_21:AddSlider("FollowersDelay", { Text = "Followers delay", Default = 0.05, Min = 0.05, Max = 1, Rounding = 2, Suffix = "s" })
p8_21:AddToggle("AutoCompleteMinigame", { Text = "Auto Complete Follower Minigame", Default = false })
p8_21:AddSlider("MinigameDelay", { Text = "Minigame delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
local ShopGroup = li.Shop:AddLeftGroupbox("Shop", "shopping-bag")
ShopGroup:AddToggle("AutoBuyClickUpgrader", { Text = "Auto Buy Click Upgrader", Default = false })
ShopGroup:AddSlider("ClickUpgraderDelay", { Text = "Click upgrader delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
ShopGroup:AddToggle("AutoBuyAura", { Text = "Auto Buy Aura", Default = false })
p8_19 = p8_11[1] or "Pack 1"
local p8_5_6 = 4
repeat
    local qZ = bit32.rrotate(bit32.bxor(bit32.lrotate(p8_5_6, 19), string.byte(tostring(p8_5_6))), 19)
    if bit32.bxor(bit32.lrotate(bit32.bxor(qZ, 3157782175), 30), 4010671015) ~= bit32.lrotate(qZ, 30) then
        ShopGroup:AddDropdown("AuraPack", { Text = "Aura pack", Values = p8_11, Default = p8_19, Callback = onAuraPack })
    else
        ShopGroup:AddDropdown("AuraPack", { Text = "Aura pack", Values = p8_11, Default = p8_19, Callback = onAuraPack })
    end
    p8_5_6 = (p8_5_6 + 2) % 8
until (p8_5_6 * 5 + 1) % 8 == 7
p8_11 = { "None" }
p8_19 = ko[1] or p8_11
ShopGroup:AddDropdown("StopAura", { Text = "Stop on aura", Values = p8_19, Default = "None" })
ShopGroup:AddSlider("AuraDelay", { Text = "Aura delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2, Suffix = "s" })
ky()
ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
ShopGroup:AddDropdown("UpgradeKinds", { Text = "Upgrades", Values = k9, Multi = true, AllowNull = true, Default = k9 })
ShopGroup:AddSlider("UpgradeDelay", { Text = "Upgrade delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
local p8_13_5 = li.Shop:AddRightGroupbox("Eggs", "egg")
p8_13_5:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false })
p8_11 = p8_3[1] or "Basic"
j6, j3, connection, connection2, jP = nil, nil, nil, nil, nil
p8_13_5:AddDropdown("EggChoice", { Text = "Egg", Values = p8_3, Default = p8_11 })
p8_13_5:AddDropdown("HatchAmount", { Text = "Hatch amount", Values = { "1", "3" }, Default = "1" })
p8_13_5:AddSlider("HatchDelay", { Text = "Hatch delay", Default = 1, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
p8_7 = li.Progress:AddLeftGroupbox("Progress", "rotate-ccw")
p8_7:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
p8_7:AddSlider("RebirthDelay", { Text = "Rebirth delay", Default = 1, Min = 0.5, Max = 30, Rounding = 1, Suffix = "s" })
p8_7:AddToggle("AutoRollTitle", { Text = "Auto Roll Title", Default = false })
p8_7:AddSlider("TitleDelay", { Text = "Title delay", Default = 1, Min = 0.5, Max = 10, Rounding = 1, Suffix = "s" })
p8_21 = li.Progress:AddRightGroupbox("Rewards", "gift")
p8_21:AddToggle("AutoClaimDaily", { Text = "Auto Claim Daily Rewards", Default = false })
p8_21:AddSlider("DailyDelay", { Text = "Daily delay", Default = 5, Min = 1, Max = 60, Rounding = 1, Suffix = "s" })
p8_21:AddToggle("AutoEquipBestPet", { Text = "Auto Equip Best Pet", Default = false })
p8_21:AddSlider("EquipBestDelay", { Text = "Equip best delay", Default = 5, Min = 1, Max = 60, Rounding = 1, Suffix = "s" })
local p8_5_7 = li.Settings:AddLeftGroupbox("Menu", "menu")
Library.ToggleKeybind = Options.MenuKeybind
p8_5_7:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
p8_5_7:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
p8_5_7:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(li.Settings)
ThemeManager:LoadDefault()
lj:SetLibrary(Library)
lj:IgnoreThemeSettings()
lj:SetIgnoreIndexes({ "MenuKeybind" })
lj:SetFolder("OuroborosHub/plus1-followers-per-click")
lj:BuildConfigSection(li.Settings)
lj:LoadAutoloadConfig()
j6 = tick()
j3 = tick()
if (not connection and not p8_21 or (p8_21 or p8_5_7)) and (not connection or not p8_21 or jP and not p8_5_7) and not ((not connection and not p8_21 or (p8_21 or p8_5_7)) and (not connection or not p8_21 or jP and not p8_5_7)) then
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local pL = v
            pcall(function()
                pL:Disable()
            end)
        end
    end)
else
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local pL = v
            pcall(function()
                pL:Disable()
            end)
        end
    end)
    jP = fn472
end
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
do
    Library:OnUnload(fn714)
    task.spawn(worker14)
    task.spawn(worker13)
    task.spawn(worker12)
    task.spawn(worker11)
    task.spawn(worker10)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    Library:Notify("+1 Followers Per Click loaded")
end
