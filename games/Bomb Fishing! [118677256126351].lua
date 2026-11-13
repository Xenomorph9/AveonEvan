local j1
local kK
local kq
local j7
local CollectionService
local jP
local kx
local kd
local jV
local kj
local j0
local kJ
local onIdled
local CFrame2
local kP
local UserInputService
local kc
local FishItem
local ThemeManager
local ki
local j_
local kI
local ko
local j5
local kO
local connection
local kb
local kU
local jT
local kB
local kh
local Config
local kH
local VirtualUser
local j4
local kN
local kt
local ka
local kT
local jS
local kA
local kg
local jY
local setThrowing
local km
local j3
local kM
local ks
local j9
local kS
local jR
local kz
local LocalPlayer
local jX
local kF
local kl
local Util
local kL
local kr
local KnitClient
local kR
local jQ
local ky
local ke
local jW
local kE
local kk
local function fn23()
    local mQ_1
    local mP_1
    mP_1, mQ_1 = pcall(function()
        return KnitClient.UI.OtherScreen.Gameplay.ChargeBar.how.Position.Y.Scale
    end)
    if not mP_1 or not mQ_1 then
        return 1
    end
    local mP_2 = Util.number.proximityValue(mQ_1, 0, 1, 0.5, 1)
    return math.round(mP_2 * 10) / 10
end
local function fn24()
    ThemeManager:LoadDefault()
end
local function worker3()
    while not kH.Unloaded do
        if kt then
            pcall(function()
                kP.SellInventory:Fire()
            end)
        end
        task.wait(3)
    end
end
local function onIslandSelect(fo)
    kg = fo
end
local function worker5()
    while not kH.Unloaded do
        if kd then
            pcall(function()
                local nT = kM()
                if nT and nT.CollectClass then
                    kb.SendTagData:Fire("Collect", nT.CollectClass.Object, "collectCash")
                end
            end)
        end
        task.wait(2)
    end
end
local function onTeleport()
    j9(kg)
end
local function worker4()
    while not kH.Unloaded do
        if kl then
            pcall(function()
                local np = kM()
                if np and np.AquariumClass then
                    local nq_1 = j0:getDataReplica(true)
                    local nr = jW:getAquariumMaxFishNo({ DataReplica = nq_1 })
                    local ns = 0
                    for k in pairs(nq_1.Data.PlacedFishes) do
                        ns = ns + 1
                    end
                    local nt = nr - ns
                    if nt > 0 then
                        local nr_1 = {}
                        for k, v in pairs(nq_1.Data.Inventory.Fishes) do
                            local nq_2 = FishItem.createClass(v)
                            if nq_2 then
                                local ns_1 = #nr_1 + 1
                                local nu = tonumber(k)
                                local nv = jW:getCash({ FishItem = nq_2 }) or 0
                                nr_1[ns_1] = { uid = nu, cash = nv }
                            end
                        end
                        table.sort(nr_1, function(cY, cZ)
                            return cY.cash > cZ.cash
                        end)
                        local nq_3 = math.min(nt, #nr_1)
                        local nM = 1
                        while nM <= nq_3 do
                            local nN = nM
                            kb.SendTagData:Fire("Aquarium", np.AquariumClass.Object, "addFish", { UniqueId = nr_1[nN].uid })
                            task.wait(0.3)
                            nM += 1
                        end
                    end
                end
            end)
        end
        task.wait(2)
    end
end
local function worker8()
    while not kH.Unloaded do
        if jY then
            pcall(function()
                local Price, os_2
                local ot_1
                local Data = j0:getDataReplica(true).Data
                local Cash = Data.Cash
                local Luck
                ot_1, Price = nil, nil
                for k, v in pairs(Config.Bomb.Bombs) do
                    if v.Price and v.Price > 0 and v.Price <= Cash and not Data.PurchasedBombs[k] then
                        local ou_2 = not Price
                        local oI = if ou_2 then 1 else 0
                        local oG = 2480 * oI + 2914 * (1 - oI)
                        local oH = 1792 * oI + 1140 * (1 - oI)
                        if not ((oG * 42 + oH * 2508 + oG * oH) % 16777213 == 9042656) then
                            ou_2 = v.Price > Price
                        end
                        if ou_2 then
                            ot_1 = k
                            Price = v.Price
                        end
                    end
                end
                if ot_1 then
                    kA.Purchase:Fire(ot_1)
                    task.wait(0.5)
                end
                os_2, Luck = nil, nil
                for k in pairs(Data.PurchasedBombs) do
                    local ot_2 = Config.Bomb.Bombs[k]
                    if ot_2 and (not Luck or ot_2.Luck > Luck) then
                        os_2 = k
                        Luck = ot_2.Luck
                    end
                end
                if os_2 and Data.EquippedBomb ~= os_2 then
                    kA.Equip:Fire(os_2)
                end
            end)
        end
        task.wait(3)
    end
end
local function worker6()
    while not kH.Unloaded do
        if j7 then
            pcall(function()
                local nX = j4:getClass("player", LocalPlayer, true)
                local nY = nX and nX:GetPrivateReplica(true)
                if nY then
                    local nY_1 = nY.Data.PlaytimeRewards_PlayedTime or 0
                    for i, v in ipairs(Config.PlaytimeRewards.Rewards) do
                        local nY_2 = not nY.Data.ClaimedPlaytimeRewards[tostring(i)]
                        if nY_2 ~= false then
                            nY_2 = nY_1 >= v.Time
                        end
                        if nY_2 then
                            kF.Claim:Fire(i)
                        end
                    end
                end
            end)
        end
        task.wait(5)
    end
end
local function onJoinDiscordForDupes_KeylessS()
    if setclipboard then
        setclipboard(ke)
    end
    kH:Notify("Discord invite copied.", 4)
end
local function fn179()
    local mq = kM()
    if mq and mq.Base then
        for i, v in ipairs(CollectionService:GetTagged("CageBridge")) do
            if v:IsDescendantOf(mq.Base) then
                return v
            end
        end
    end
    return nil
end
local function fn191(ai)
    local l7_1, l7_2
    local l6_1
    for i, v in ipairs(ai) do
        l6_1, l7_1 = pcall(game.HttpGet, game, v)
        local l8 = l6_1 and type(l7_1) == "string" and #l7_1 > 200
        local l8_1
        if l8 then
            local l6_2 = loadstring(l7_1)
            if l6_2 then
                l7_2, l8_1 = pcall(l6_2)
                local l6_3 = l7_2 and type(l8_1) == "table"
                if l6_3 then
                    return l8_1
                end
            end
        end
    end
    return nil
end
local function worker10()
    while not kH.Unloaded do
        if jQ and kS then
            pcall(function()
                if not kR.currentEventClass then
                    local o0 = Config.Event.Events[kS]
                    local o1 = o0 and o0.Price and j0:getDataReplica(true).Data.Cash >= o0.Price
                    if o1 then
                        kj.Purchase:Fire(kS)
                    end
                end
            end)
        end
        task.wait(3)
    end
end
local function onPerfectScore(ff)
    kr = ff
end
local function worker11()
    while not kH.Unloaded do
        if kO then
            pcall(function()
                local o8 = ko()
                if o8 then
                    kb.SendTagData:Fire("CageBridge", o8, "claimFishes")
                end
            end)
        end
        task.wait(2)
    end
end
local function fn371()
    ThemeManager:SaveDefault("Mint")
end
local function fn386()
    local mG = j4:getClass("player", LocalPlayer)
    if mG then
        local mH = mG:GetPublicReplica(true)
        if mH and mH.Data and mH.Data.BombValues then
            return mH.Data.BombValues.State
        end
        return nil
    end
    return nil
end
local function onAutoThrow(fd)
    kz = fd
end
local function onDisableFishReveal(fh)
    kL = fh
end
local function fn498(eN, eO, eP)
    if kL and eO and eO.IsMine then
        eO.CurrentBombState = "throwing"
        return
    end
    return setThrowing(eN, eO, eP)
end
local function fn510(eU, eV, eW)
    if kL and eV and eV.IsMine then
        eV.CurrentBombState = "throwed"
        task.defer(function()
            pcall(function()
                jR.Finished:Fire()
            end)
        end)
        return
    end
    return jX(eU, eV, eW)
end
local function fn529()
    pcall(function()
        local Character = LocalPlayer.Character
        local m2 = Character and Character:FindFirstChildOfClass("Humanoid")
        if m2 then
            m2.Health = 0
        end
    end)
end
local function onResetDelay(fl)
    j3 = fl
end
local function worker2()
    while not kH.Unloaded do
        if kz or kr then
            local ne_1 = pcall(function()
                local m5_4
                local m4 = kk()
                local m4_1
                if m4 == "throwing" then
                    if not j_ then
                        local m6_1 = kr and 1
                        local nd = if m6_1 then 1 else 0
                        local nb = 365 * nd + 1144 * (1 - nd)
                        local nc = 478 * nd + 3564 * (1 - nd)
                        if not ((nb * 1605 + nc * 2827 + nb * nc) % 16777213 == 2111601) then
                            m6_1 = jP()
                        end
                        local m5_2 = m6_1
                        jR.Throw:Fire(m5_2)
                        j_ = true
                        if ka then
                            task.delay(j3, jV)
                        end
                    end
                else
                    j_ = false
                    if kz and m4 == nil then
                        m4_1, m5_4 = kU()
                        if m5_4 then
                            jR.Start:Fire(m5_4.UniqueId)
                        end
                    end
                end
            end)
            if not ne_1 then
                j_ = false
            end
        end
        task.wait(0.1)
    end
end
local function worker9()
    while not kH.Unloaded do
        if jT then
            pcall(function()
                local Cash = j0:getDataReplica(true).Data.Cash
                for i, v in ipairs(Config.Merchant.Potions) do
                    if v.Price and Cash >= v.Price then
                        ks.Purchase:Fire(i)
                    end
                end
            end)
        end
        task.wait(5)
    end
end
local function fn658()
    pcall(function()
        local mZ_1
        local mY_1
        mY_1, mZ_1 = kU()
        local mY_2 = kM()
        if not mZ_1 or not mZ_1.Hrp or not mY_2 or not mY_2.AquariumClass then
            return
        end
        local m__1 = mY_2.AquariumClass.Model and mY_2.AquariumClass.Model:FindFirstChild("TouchPart")
        if m__1 then
            mZ_1.Hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            mZ_1.Hrp:PivotTo(m__1.CFrame + Vector3.new(0, 3, 0))
        end
    end)
end
local function worker12()
    while not kH.Unloaded do
        if kJ then
            pcall(function()
                local Boosts = j0:getDataReplica(true).Data.Boosts
                for i in ipairs(Config.Merchant.Potions) do
                    local pf = Boosts["Potion" .. i]
                    if not pf or pf.Duration <= 0 then
                        ks.Purchase:Fire(i)
                    end
                end
            end)
        end
        task.wait(5)
    end
end
local function worker()
    while not kH.Unloaded do
        if ki then
            pcall(function()
                local ng = j0:getDataReplica(true)
                if ng then
                    local ni = Config.Rebirth.Rebirths[ng.Data.Rebirth + 1]
                    if ni and ng.Data.Cash >= ni.Requirements.Cash then
                        kT.Rebirth:Fire()
                    end
                end
            end)
        end
        task.wait(1)
    end
end
local function fn839()
    for k, v in pairs(jS.classes) do
        if v.IsMine then
            return v
        end
    end
    return nil
end
local function onResetAfterThrow(fj)
    ka = fj
end
local function fn851()
    local mz = j4:getClass("player", LocalPlayer)
    if mz then
        local CharacterClass = mz.CharacterClass
        if CharacterClass and not CharacterClass.Dead then
            return mz, CharacterClass
        end
        return nil, nil
    end
    return nil, nil
end
local function worker7()
    while not kH.Unloaded do
        if j1 then
            pcall(function()
                local Data = j0:getDataReplica(true).Data
                local RewardedTime = Data.DailyRewards.RewardedTime
                local oi = (RewardedTime == 0 or workspace:GetServerTimeNow() - RewardedTime >= Config.DailyRewards.WaitTime) and Config.DailyRewards.Rewards[Data.DailyRewards.Day + 1]
                if oi then
                    kK.Claim:Fire()
                end
            end)
        end
        task.wait(10)
    end
end
jP = nil
jQ = nil
jR = nil
jS = nil
jT = nil
FishItem = nil
jV = nil
jW = nil
jX = nil
jY = nil
Config = nil
j_ = nil
j0 = nil
j1 = nil
Util = nil
j3 = nil
j4 = nil
j5 = nil
CFrame2 = nil
j7 = nil
KnitClient = nil
j9 = nil
ka = nil
kb = nil
kc = nil
kd = nil
ke = nil
LocalPlayer = nil
kg = nil
kh = nil
ki = nil
kj = nil
kk = nil
kl = nil
km = nil
VirtualUser = nil
ko = nil
onIdled = nil
kq = nil
kr = nil
ks = nil
kt = nil
connection = nil
UserInputService = nil
kx = nil
ky = nil
kz = nil
kA = nil
kB = nil
ThemeManager = nil
kE = nil
kF = nil
setThrowing = nil
kH = nil
kI = nil
kJ = nil
kK = nil
kL = nil
kM = nil
kN = nil
kO = nil
kP = nil
CollectionService = nil
kR = nil
kS = nil
kT = nil
kU = nil
local TweenService
local MenuGroup
local Window
local k4_1
local k2_1
CollectionService, TweenService, UserInputService, VirtualUser, LocalPlayer, kH = nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
game:GetService("RunService")
TweenService = game:GetService("TweenService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
local function kW()
    local lI
    local lG
    local lH
    local textButton
    local frame3
    local lK
    frame3 = nil
    lG = nil
    lH = nil
    lI = nil
    textButton = nil
    lK = nil
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosLoader"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 2147483647
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local lM = gethui and gethui()
    local lN = lM or game:GetService("CoreGui")
    screenGui.Parent = lN
    local blurEffect = Instance.new("BlurEffect")
    blurEffect.Size = 0
    blurEffect.Parent = game:GetService("Lighting")
    local frame4 = Instance.new("Frame")
    frame4.Size = UDim2.fromScale(1, 1)
    frame4.BackgroundTransparency = 1
    frame4.Parent = screenGui
    frame3 = Instance.new("Frame")
    frame3.AnchorPoint = Vector2.new(0.5, 0.5)
    frame3.Position = UDim2.fromScale(0.5, 0.5)
    frame3.Size = UDim2.fromOffset(460, 0)
    frame3.AutomaticSize = Enum.AutomaticSize.Y
    frame3.BackgroundTransparency = 1
    frame3.Parent = frame4
    local uIListLayout = Instance.new("UIListLayout")
    uIListLayout.FillDirection = Enum.FillDirection.Vertical
    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout.Padding = UDim.new(0, 8)
    uIListLayout.Parent = frame3
    lK = function(w)
        local uIStroke = Instance.new("UIStroke")
        uIStroke.Color = Color3.fromRGB(0, 0, 0)
        uIStroke.Thickness = 2
        uIStroke.Transparency = 0.1
        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        uIStroke.Parent = w
        return uIStroke
    end
    local function lN_3(z, A, B, C, D)
        local textLabel = Instance.new("TextLabel")
        textLabel.BackgroundTransparency = 1
        textLabel.Size = UDim2.fromOffset(460, A + 6)
        textLabel.Font = B
        textLabel.Text = z
        textLabel.TextSize = A
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.TextTransparency = C
        textLabel.LayoutOrder = D
        lK(textLabel)
        textLabel.Parent = frame3
        return textLabel
    end
    lG = "https://discord.gg/ehKVq7pf7v"
    lN_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
    textButton = Instance.new("TextButton")
    textButton.BackgroundTransparency = 1
    textButton.AutoButtonColor = false
    textButton.Size = UDim2.fromOffset(460, 24)
    textButton.Font = Enum.Font.GothamSemibold
    textButton.RichText = true
    textButton.Text = "<u>" .. lG .. "</u>  (click to copy)"
    textButton.TextSize = 16
    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
    textButton.LayoutOrder = 2
    lK(textButton)
    textButton.Parent = frame3
    textButton.MouseEnter:Connect(function()
        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
    end)
    textButton.MouseLeave:Connect(function()
        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
    end)
    textButton.Activated:Connect(function()
        if setclipboard then
            setclipboard(lG)
        end
        textButton.Text = "<u>" .. lG .. "</u>  (copied!)"
        task.delay(1.5, function()
            textButton.Text = "<u>" .. lG .. "</u>  (click to copy)"
        end)
    end)
    local lO = lN_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
    lO.TextWrapped = true
    lO.Size = UDim2.fromOffset(420, 34)
    lI = lN_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
    lI.Size = UDim2.fromOffset(460, 18)
    local frame2 = Instance.new("Frame")
    frame2.LayoutOrder = 5
    frame2.Size = UDim2.fromOffset(300, 6)
    frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame2.BackgroundTransparency = 0.85
    frame2.BorderSizePixel = 0
    frame2.Parent = frame3
    local uICorner2 = Instance.new("UICorner")
    uICorner2.CornerRadius = UDim.new(1, 0)
    uICorner2.Parent = frame2
    local frame = Instance.new("Frame")
    frame.Size = UDim2.fromScale(0, 1)
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.BorderSizePixel = 0
    frame.Parent = frame2
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(1, 0)
    uICorner.Parent = frame
    lH = true
    task.spawn(function()
        local lD = 0
        while lH do
            lD = lD % 3 + 1
            lI.Text = "Ouroboros Bypassing" .. string.rep(".", lD)
            task.wait(0.35)
        end
    end)
    TweenService:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }):Play()
    local lP_1 = { 0.35, 0.55, 0.72, 0.9, 1 }
    for i, v in ipairs(lP_1) do
        TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }):Play()
        task.wait(0.55)
    end
    lH = false
    task.wait(0.25)
    local lP_2 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
    for i, descendant in ipairs(frame3:GetDescendants()) do
        local lQ = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if lQ then
            TweenService:Create(descendant, lP_2, { TextTransparency = 1 }):Play()
        else
            local l5 = if descendant:IsA("UIStroke") then 1 else 0
            if l5 == 1 then
                TweenService:Create(descendant, lP_2, { Transparency = 1 }):Play()
            end
        end
    end
    TweenService:Create(frame2, lP_2, { BackgroundTransparency = 1 }):Play()
    TweenService:Create(frame, lP_2, { BackgroundTransparency = 1 }):Play()
    TweenService:Create(blurEffect, lP_2, { Size = 0 }):Play()
    task.wait(0.45)
    blurEffect:Destroy()
    screenGui:Destroy()
end
local TeleportGroup
kW()
kH = fn191({ "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua" })
if not kH then
    return
end
ThemeManager, ke, KnitClient, Util, Config, FishItem, jR, kT, kP, kK, kF, kA, ks, kj, kb, j4, j0, jW, jS, kR, kg, kz, kr, ki, ka, j3, j_, kt, kl, kd, j7, j1, jY, jT, jQ, kS, kO, kJ, kL, setThrowing, jX, Window, TeleportGroup, k4_1, MenuGroup, k2_1, j5, kM, ko, kU, kk, jP, j9, km, jV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ThemeManager = fn191({ "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua" })
local SaveManager = fn191({ "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua" })
local Options = kH.Options
ke = "https://discord.gg/ehKVq7pf7v"
KnitClient = require(ReplicatedStorage.src.Modules.KnitClient)
Util = require(ReplicatedStorage.Util)
Config = require(ReplicatedStorage.Config)
FishItem = require(ReplicatedStorage.src.Shared.FishItem)
jR = KnitClient.GetService("BombService")
kT = KnitClient.GetService("RebirthService")
kP = KnitClient.GetService("SellService")
kK = KnitClient.GetService("DailyRewardService")
kF = KnitClient.GetService("PlaytimeRewardService")
kA = KnitClient.GetService("BombShopService")
ks = KnitClient.GetService("MerchantService")
kj = KnitClient.GetService("EventService")
kb = KnitClient.GetService("BaseService")
j4 = KnitClient.GetController("PlayerController")
j0 = KnitClient.GetController("DataController")
jW = KnitClient.GetController("CalculateController")
jS = KnitClient.GetController("BaseController")
local kV_1 = KnitClient.GetController("BombController")
kR = KnitClient.GetController("EventController")
kM = fn839
ko = fn179
kU = fn851
kk = fn386
jP = fn23
kg = "Normal Island"
j9 = function(bl)
    pcall(function()
        local mV_1
        local mU_1
        mU_1, mV_1 = kU()
        if not mV_1 or not mV_1.Hrp then
            return
        end
        if bl == "Volcano Island" then
            local VolcanoMap = workspace:FindFirstChild("VolcanoMap")
            local mW = VolcanoMap and VolcanoMap:FindFirstChild("Teleport")
            if mW then
                mV_1.Hrp.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                mV_1.Hrp:PivotTo(mW.CFrame)
            end
        else
            mV_1:TeleportToBase()
        end
    end)
end
km = fn658
kz = false
kr = false
ki = false
ka = false
j3 = 1
j_ = false
if (not kA and not jS or (not jS or not kt) or not kt and not k2_1 and (not jX or kA)) and (jS and not kt and (not jX or k2_1) and (kt or not kt or not kt and not k2_1)) or not ((not kA and not jS or (not jS or not kt) or not kt and not k2_1 and (not jX or kA)) and (jS and not kt and (not jX or k2_1) and (kt or not kt or not kt and not k2_1))) then
    jV = fn529
    task.spawn(worker2)
    task.spawn(worker)
    kt = false
    kl = false
else
    kl = fn529
    task.spawn(worker2)
    task.spawn(worker)
    jV = false
    kt = false
end
kd = false
j7 = false
j1 = false
jY = false
if (not ko and ko or (kl or kl) or (not ko or not j0 or (kl or ko))) and (not kl and ko or not j0 and ko or (j0 or not kl) and (not ko and not ko)) and not ((not ko and ko or (kl or kl) or (not ko or not j0 or (kl or ko))) and (not kl and ko or not j0 and ko or (j0 or not kl) and (not ko and not ko))) then
    jX = false
else
    jT = false
end
jQ = false
kS = nil
kO = false
kJ = false
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
task.spawn(worker11)
task.spawn(worker12)
kL = false
setThrowing = kV_1.setThrowing
kV_1.setThrowing = fn498
jX = kV_1.setThrowed
if (not jR or false or (not jR or j9) or (not jP or jP or jP and not jR) or j9 and jP and (false and jR) and (jR or jP or not jR and jR)) and ((jP or not jP) and (not jP and not jP) and (jP or j9 or j9 and not jR) and (not jP and j9 and (j9 and jR) or (j9 and j9 or false and jR))) and not ((not jR or false or (not jR or j9) or (not jP or jP or jP and not jR) or j9 and jP and (false and jR) and (jR or jP or not jR and jR)) and ((jP or not jP) and (not jP and not jP) and (jP or j9 or j9 and not jR) and (not jP and j9 and (j9 and jR) or (j9 and j9 or false and jR)))) then
    Window.setThrowed = fn510
    kH = kV_1:CreateWindow({
        Footer = "Ouroboros Hub",
        Title = "Bomb Fishing!",
        ShowCustomCursor = false,
        AutoShow = true,
        Center = true,
        Size = UDim2.fromOffset(760, 600),
        NotifySide = "Right",
        Resizable = true
    })
else
    kV_1.setThrowed = fn510
    Window = kH:CreateWindow({
        Title = "Bomb Fishing!",
        Footer = "Ouroboros Hub",
        NotifySide = "Right",
        ShowCustomCursor = false,
        Center = true,
        AutoShow = true,
        Resizable = true,
        Size = UDim2.fromOffset(760, 600)
    })
end
local k9 = {
    Main = Window:AddTab("Automation", "bomb"),
    Farm = Window:AddTab("Farm", "fish"),
    Player = Window:AddTab("Player", "user"),
    Settings = Window:AddTab("Settings", "settings")
}
local BombingGroup = k9.Main:AddLeftGroupbox("Bombing")
if (not k4_1 and ThemeManager or (k9 or kA)) and ((k4_1 or not k9) and (not k9 or kA)) and ((not kA or k4_1) and (kA and not kA) or (not k9 or k4_1 or (kA or not kA))) or not ((not k4_1 and ThemeManager or (k9 or kA)) and ((k4_1 or not k9) and (not k9 or kA)) and ((not kA or k4_1) and (kA and not kA) or (not k9 or k4_1 or (kA or not kA)))) then
    TeleportGroup = k9.Main:AddLeftGroupbox("Teleport")
else
    k9 = TeleportGroup.Main:AddLeftGroupbox("Teleport")
end
local Events_RebirthGroup = k9.Main:AddRightGroupbox("Events & Rebirth")
local Aquarium_SellingGroup = k9.Farm:AddLeftGroupbox("Aquarium & Selling")
local Shop_RewardsGroup = k9.Farm:AddRightGroupbox("Shop & Rewards")
local MainGroup = k9.Settings:AddLeftGroupbox("Main")
if (not KnitClient or jR or (not KnitClient or not jS) or jS and jR and (BombingGroup and jS)) and ((BombingGroup or not jS) and (KnitClient and jS) or (not jS or BombingGroup or (not KnitClient or not jR))) and ((not BombingGroup and not KnitClient or KnitClient and jS) and (jS and not KnitClient and (BombingGroup and BombingGroup)) or ((not jR or not jS) and (not KnitClient or BombingGroup) or (BombingGroup or not jS or not jR and not BombingGroup))) and not ((not KnitClient or jR or (not KnitClient or not jS) or jS and jR and (BombingGroup and jS)) and ((BombingGroup or not jS) and (KnitClient and jS) or (not jS or BombingGroup or (not KnitClient or not jR))) and ((not BombingGroup and not KnitClient or KnitClient and jS) and (jS and not KnitClient and (BombingGroup and BombingGroup)) or ((not jR or not jS) and (not KnitClient or BombingGroup) or (BombingGroup or not jS or not jR and not BombingGroup)))) then
    k9 = MenuGroup.Settings:AddRightGroupbox("Menu")
else
    MenuGroup = k9.Settings:AddRightGroupbox("Menu")
end
BombingGroup:AddButton({
    Text = "Join Discord for Dupes/Keyless Scripts",
    Tooltip = "Copies the invite link to your clipboard.",
    Func = onJoinDiscordForDupes_KeylessS
})
BombingGroup:AddToggle("AutoThrow", { Text = "Auto Throw", Default = false, Callback = onAutoThrow })
BombingGroup:AddToggle("PerfectScore", { Text = "Auto Perfect Charge Score", Default = false, Callback = onPerfectScore })
BombingGroup:AddToggle("DisableFishReveal", { Text = "Disable Fish Reveal & Charge Animation", Default = false, Callback = onDisableFishReveal })
BombingGroup:AddToggle("ResetAfterThrow", { Text = "Reset After Throwing", Default = false, Callback = onResetAfterThrow })
BombingGroup:AddSlider("ResetDelay", { Text = "Reset Delay", Default = 1, Min = 0, Max = 10, Rounding = 1, Callback = onResetDelay })
TeleportGroup:AddDropdown("IslandSelect", {
    Text = "Island",
    Values = { "Normal Island", "Volcano Island" },
    Default = "Normal Island",
    Multi = false,
    Callback = onIslandSelect
})
TeleportGroup:AddButton({ Text = "Teleport", Func = onTeleport })
local k2_2 = {}
j5 = {}
for k, v in pairs(Config.Event.Events) do
    if v.Price then
        k2_2[#k2_2 + 1] = v.FullName
        j5[v.FullName] = k
    end
end
table.sort(k2_2)
Events_RebirthGroup:AddDropdown("WeatherSelect", {
    Text = "Weather",
    Values = k2_2,
    Default = k2_2[1],
    Multi = false,
    Searchable = true,
    Callback = function(fw)
        kS = j5[fw]
    end
})
kS = j5[k2_2[1]]
Events_RebirthGroup:AddToggle("AutoWeather", {
    Text = "Auto Weather",
    Default = false,
    Callback = function(fz)
        jQ = fz
    end
})
Events_RebirthGroup:AddToggle("AutoRebirth", {
    Text = "Auto Rebirth",
    Default = false,
    Callback = function(fB)
        ki = fB
    end
})
Aquarium_SellingGroup:AddButton({
    Text = "Open Aquarium UI",
    Func = function()
        km()
    end
})
Aquarium_SellingGroup:AddToggle("AutoSell", {
    Text = "Auto Sell All Fish",
    Default = false,
    Callback = function(fE)
        kt = fE
    end
})
Aquarium_SellingGroup:AddToggle("EquipBestAquarium", {
    Text = "Equip Best for Aquarium",
    Default = false,
    Callback = function(fG)
        kl = fG
    end
})
Aquarium_SellingGroup:AddToggle("AutoCollect", {
    Text = "Auto Collect Money from Aquarium",
    Default = false,
    Callback = function(fI)
        kd = fI
    end
})
Aquarium_SellingGroup:AddToggle("AutoCage", {
    Text = "Auto Collect Fish from Cage",
    Default = false,
    Callback = function(fK)
        kO = fK
    end
})
Shop_RewardsGroup:AddToggle("AutoPotion", {
    Text = "Auto Use Potion",
    Default = false,
    Callback = function(fM)
        kJ = fM
    end
})
Shop_RewardsGroup:AddToggle("AutoBuyBombs", {
    Text = "Auto Purchase Best Affordable Bombs",
    Default = false,
    Callback = function(fO)
        jY = fO
    end
})
Shop_RewardsGroup:AddToggle("AutoBuyMerchant", {
    Text = "Auto Buy Merchant Stock",
    Default = false,
    Callback = function(fQ)
        jT = fQ
    end
})
Shop_RewardsGroup:AddToggle("AutoPlaytime", {
    Text = "Auto Claim Playtime Rewards",
    Default = false,
    Callback = function(fS)
        j7 = fS
    end
})
Shop_RewardsGroup:AddToggle("AutoDaily", {
    Text = "Auto Claim Daily Rewards",
    Default = false,
    Callback = function(fU)
        j1 = fU
    end
})
local MovementGroup = k9.Player:AddLeftGroupbox("Movement")
local CustomRespawnGroup = k9.Player:AddRightGroupbox("Custom Respawn")
kq = false
kN = false
kI = 60
kx = 16
kE = false
kh = false
task.spawn(function()
    while not kH.Unloaded do
        if kN then
            local Character = LocalPlayer.Character
            local pA = Character and Character:FindFirstChild("HumanoidRootPart")
            local pB = Character
            local pC = pA
            if pB then
                pB = Character:FindFirstChildOfClass("Humanoid")
            end
            local pz_1 = pB
            if pA then
                pA = pz_1
            end
            if pA then
                pz_1.PlatformStand = true
                local pz_2 = Vector3.new(0, 0, 0)
                local CFrame = workspace.CurrentCamera.CFrame
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    pz_2 = pz_2 + CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    pz_2 = pz_2 - CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    pz_2 = pz_2 - CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    pz_2 = pz_2 + CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    pz_2 = pz_2 + Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    pz_2 = pz_2 - Vector3.new(0, 1, 0)
                end
                if pz_2.Magnitude > 0 then
                    pz_2 = pz_2.Unit
                end
                pC.AssemblyLinearVelocity = pz_2 * kI
            end
        end
        task.wait()
    end
end)
task.spawn(function()
    while not kH.Unloaded do
        if kE then
            local pH = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if pH then
                pH.WalkSpeed = kx
            end
        end
        task.wait(0.2)
    end
end)
task.spawn(function()
    while not kH.Unloaded do
        if kq then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local pN_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if pN_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
        task.wait()
    end
end)
UserInputService.JumpRequest:Connect(function()
    if kh and not kH.Unloaded then
        local pV_1 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
        if pV_1 then
            pV_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)
MovementGroup:AddToggle("Fly", {
    Text = "Fly",
    Default = false,
    Callback = function(gy)
        kN = gy
        if not gy then
            local pY = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if pY then
                pY.PlatformStand = false
            end
        end
    end
})
MovementGroup:AddSlider("FlySpeed", {
    Text = "Fly Speed",
    Default = 60,
    Min = 10,
    Max = 300,
    Rounding = 0,
    Callback = function(gD)
        kI = gD
    end
})
MovementGroup:AddToggle("WalkSpeedEnabled", {
    Text = "WalkSpeed",
    Default = false,
    Callback = function(gF)
        kE = gF
        if not gF then
            local p0 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if p0 then
                p0.WalkSpeed = 16
            end
        end
    end
})
MovementGroup:AddSlider("WalkSpeed", {
    Text = "WalkSpeed Amount",
    Default = 16,
    Min = 16,
    Max = 300,
    Rounding = 0,
    Callback = function(gK)
        kx = gK
    end
})
MovementGroup:AddToggle("Noclip", {
    Text = "Noclip",
    Default = false,
    Callback = function(gM)
        kq = gM
    end
})
MovementGroup:AddToggle("InfJump", {
    Text = "Infinite Jump",
    Default = false,
    Callback = function(gO)
        kh = gO
    end
})
CFrame2 = nil
kc = false
LocalPlayer.CharacterAdded:Connect(function(gS)
    if not kc or not CFrame2 or kH.Unloaded then
        return
    end
    task.spawn(function()
        local HumanoidRootPart = gS:WaitForChild("HumanoidRootPart", 10)
        if not HumanoidRootPart then
            return
        end
        gS:WaitForChild("Humanoid", 5)
        task.wait(0.3)
        if kc and CFrame2 then
            pcall(function()
                HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                gS:PivotTo(CFrame2)
            end)
        end
    end)
end)
CustomRespawnGroup:AddToggle("RespawnLocationEnabled", {
    Text = "Force Custom Respawn",
    Default = false,
    Callback = function(g3)
        kc = g3
    end
})
CustomRespawnGroup:AddButton({
    Text = "Set Respawn Location",
    Func = function()
        local Character = LocalPlayer.Character
        local p9 = Character and Character:FindFirstChild("HumanoidRootPart")
        if p9 then
            CFrame2 = p9.CFrame
            kH:Notify("Respawn location saved.", 4)
        else
            kH:Notify("Character not found.", 4)
        end
    end
})
kB = false
connection = nil
onIdled = function()
    pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end
task.spawn(function()
    while not kH.Unloaded do
        if kB then
            onIdled()
        end
        task.wait(60)
    end
end)
MainGroup:AddToggle("AntiAfk", {
    Text = "Anti-AFK",
    Default = true,
    Callback = function(hj)
        kB = hj
        if hj then
            if not connection then
                connection = LocalPlayer.Idled:Connect(onIdled)
            end
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end
})
ky = { "50%", "75%", "90%", "100%", "110%", "125%", "150%" }
MenuGroup:AddDropdown("UIScale", {
    Text = "UI Scale",
    Values = ky,
    Default = 4,
    Multi = false,
    Callback = function(hp)
        local qd = hp
        if type(hp) == "number" then
            qd = ky[hp]
        end
        local qe = tonumber((tostring(qd):gsub("%%", "")))
        if qe and qe >= 25 then
            kH:SetDPIScale(qe)
        end
    end
})
MenuGroup:AddLabel("Menu keybind"):AddKeyPicker("MenuKeybind", { Default = "RightControl", NoUI = true, Text = "Menu keybind" })
kH.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddButton({
    Text = "Unload",
    Func = function()
        kH:Unload()
    end
})
if ThemeManager then
    local kV_3 = 0
    repeat
        local kW_3 = { "rtjpdvajllr", "tsudfzjsqm", "xsaht", "dpit", "hmhqhctole", "vjpbobiuhcg", "doc", "lcq" }
        local rf = kV_3
        local kX_1 = kW_3[rf % 8 + 1]
        if kX_1:len() >= kX_1:gsub("(.)", "%1%1", rf % 3 % 2 + 1):len() then
            k9:SetLibrary(ThemeManager)
            k9:SetFolder("OuroborosHub")
            k9:ApplyToTab(kH.Settings)
            pcall(fn371)
            pcall(fn24)
        else
            ThemeManager:SetLibrary(kH)
            ThemeManager:SetFolder("OuroborosHub")
            ThemeManager:ApplyToTab(k9.Settings)
            pcall(fn371)
            pcall(fn24)
        end
        kV_3 = (kV_3 + 1) % 4
    until (kV_3 * 1 + 2) % 4 == 3
end
if SaveManager then
    local kV_4 = 0
    repeat
        local kW_4 = {
            "jtdujxdbu",
            "cmoxam",
            "zsqeq",
            "dub",
            "vfhesb",
            "ivseomyregf",
            "jjkimjzquj",
            "nrwkqubae",
            "keoudl"
        }
        local rn = kV_4
        local kX_2 = kW_4[rn % 9 + 1]
        if kX_2:len() <= kX_2:reverse():rep(rn % 3 + 2):len() then
            SaveManager:SetLibrary(kH)
            SaveManager:IgnoreThemeSettings()
            SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
            SaveManager:SetFolder("OuroborosHub/BombFishing")
            SaveManager:BuildConfigSection(k9.Settings)
            SaveManager:LoadAutoloadConfig()
        else
            k9:SetLibrary(SaveManager)
            k9:IgnoreThemeSettings()
            k9:SetIgnoreIndexes({ "MenuKeybind" })
            k9:SetFolder("OuroborosHub/BombFishing")
            k9:BuildConfigSection(kH.Settings)
            k9:LoadAutoloadConfig()
        end
        kV_4 = (kV_4 + 7) % 8
    until (kV_4 * 1 + 4) % 8 == 3
end
kH:OnUnload(function()
    kz = false
    kr = false
    ki = false
    ka = false
    kL = false
    kt = false
    kl = false
    kd = false
    j7 = false
    j1 = false
    jY = false
    jT = false
    jQ = false
    kO = false
    kJ = false
    kB = false
    kN = false
    kE = false
    kq = false
    kh = false
    kc = false
    pcall(function()
        local Character = LocalPlayer.Character
        local qh = Character and Character:FindFirstChildOfClass("Humanoid")
        if qh then
            qh.PlatformStand = false
            qh.WalkSpeed = 16
        end
    end)
    if connection then
        connection:Disconnect()
        connection = nil
    end
end)
