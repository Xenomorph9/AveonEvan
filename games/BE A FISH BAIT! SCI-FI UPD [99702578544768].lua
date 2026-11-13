local h1
local iL
local is
local i9
local iR
local iy
local exclusive_fish
local iX
local iE
local shops
local i2
local FishingRodController
local iK
local training_weights
local i8
local h6
local connection2
local ix
local fishing_phase_atom
local ic
local inventory_utils
local iD
local connection
local ij
local fishing_hooks_selectors
local diagonalTweenDuration
local rebirth_utils
local iq
local selectors
local h5
local bait_aura_utils
local iw
local jd
local ib
local iC
local jj
local ii
local i0
local iI
local ip
local i6
local network
local iO
local iv
local jc
local Options
local iU
local fishing_rods
local clientProducer
local ih
local i_
local onStart
local io
local boss_config
local h3
local iN
local iu
local reel_camera
local h9
local Library
local _onReelStarted
local jh
local Toggles
local UserInputService
local iG
local im
local i4
local h2
local iM
local it
local CollectionService
local WeightTrainingController
local LocalPlayer
local iz
local CastCutSceneComponent
local ie
local iY
local iF
local il
local VirtualUser
local function fn223()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn411(O)
    O:AddLeftGroupbox("Discord"):AddButton({
        Text = "Join Discord For Dupe",
        Func = function()
            setclipboard(io)
            Library:Notify("Copied Discord invite to clipboard")
        end
    })
end
diagonalTweenDuration = nil
FishingRodController = nil
h1 = nil
h2 = nil
h3 = nil
network = nil
h5 = nil
h6 = nil
WeightTrainingController = nil
h9 = nil
Options = nil
ib = nil
ic = nil
exclusive_fish = nil
ie = nil
Toggles = nil
ih = nil
ii = nil
ij = nil
shops = nil
il = nil
im = nil
io = nil
ip = nil
iq = nil
training_weights = nil
is = nil
it = nil
iu = nil
iv = nil
iw = nil
ix = nil
iy = nil
iz = nil
_onReelStarted = nil
fishing_rods = nil
iC = nil
iD = nil
iE = nil
iF = nil
iG = nil
onStart = nil
iI = nil
rebirth_utils = nil
iK = nil
iL = nil
iM = nil
iN = nil
iO = nil
local h7
bait_aura_utils = nil
connection2 = nil
iR = nil
LocalPlayer = nil
Library = nil
iU = nil
inventory_utils = nil
iX = nil
iY = nil
UserInputService = nil
i_ = nil
i0 = nil
fishing_hooks_selectors = nil
i2 = nil
VirtualUser = nil
i4 = nil
boss_config = nil
i6 = nil
selectors = nil
i8 = nil
i9 = nil
CollectionService = nil
reel_camera = nil
jc = nil
jd = nil
fishing_phase_atom = nil
CastCutSceneComponent = nil
jh = nil
clientProducer = nil
jj = nil
connection = nil
local iV, jf
CollectionService, VirtualUser, UserInputService, LocalPlayer, iu, io = nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
VirtualUser = game:GetService("VirtualUser")
UserInputService = game:GetService("UserInputService")
LocalPlayer = Players.LocalPlayer
local PlayerScripts = LocalPlayer:WaitForChild("PlayerScripts")
local TS = PlayerScripts:WaitForChild("TS")
iu = tostring(LocalPlayer.UserId)
io = "https://discord.gg/ehKVq7pf7v"
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
network, clientProducer, fishing_phase_atom, selectors, fishing_hooks_selectors, inventory_utils, bait_aura_utils, rebirth_utils, fishing_rods, training_weights, shops, exclusive_fish, WeightTrainingController, FishingRodController, CastCutSceneComponent, reel_camera, boss_config, Library, Toggles, Options = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
network = require(TS:WaitForChild("network"))
clientProducer = require(TS:WaitForChild("reflex"):WaitForChild("producer")).clientProducer
fishing_phase_atom = require(TS:WaitForChild("fishing-phase-atom"))
selectors = require(ReplicatedStorage.TS.slices["player-data"].selectors)
fishing_hooks_selectors = require(ReplicatedStorage.TS.slices["fishing-hooks.selectors"])
inventory_utils = require(ReplicatedStorage.TS.utils["inventory-utils"])
bait_aura_utils = require(ReplicatedStorage.TS.utils["bait-aura-utils"])
rebirth_utils = require(ReplicatedStorage.TS.data["rebirth-utils"])
fishing_rods = require(ReplicatedStorage.TS.data["fishing-rods"])
training_weights = require(ReplicatedStorage.TS.data["training-weights"])
shops = require(ReplicatedStorage.TS.data.shops)
exclusive_fish = require(ReplicatedStorage.TS.data["exclusive-fish"])
WeightTrainingController = require(TS.controllers["weight-training-controller"]).WeightTrainingController
FishingRodController = require(TS.controllers["fishing-rod-controller"]).FishingRodController
CastCutSceneComponent = require(TS.components["cast-cutscene-component"]).CastCutSceneComponent
reel_camera = require(TS["reel-camera"])
boss_config = require(TS.react.screen.fishing["rare-fish-boss"]["boss-config"])
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn223)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Be A Fish Bait",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local js = { Main = Window:AddTab("Main", "fish"), Settings = Window:AddTab("Settings", "settings") }
for k, v in pairs(js) do
    fn411(v)
end
local FishingGroup = js.Main:AddLeftGroupbox("Fishing", "fish")
FishingGroup:AddToggle("AutoFish", { Text = "Auto Fish (Perfect Charge)", Default = false })
FishingGroup:AddToggle("AutoMutationBoost", { Text = "Auto Mutation Boost", Default = false })
FishingGroup:AddToggle("SkipFishAnimation", { Text = "Skip Fish Animation", Default = false })
FishingGroup:AddToggle("AutoBossBattle", { Text = "Auto Boss Battle", Default = false })
FishingGroup:AddToggle("AutoAquarium", { Text = "Auto Equip Best For Aquarium", Default = false })
FishingGroup:AddToggle("AutoCollectAquariumMoney", { Text = "Auto Collect Money From Aquarium", Default = false })
FishingGroup:AddToggle("AutoUpgradeAquarium", { Text = "Auto Upgrade Aquarium Capacity", Default = false })
FishingGroup:AddToggle("AutoRevealAquarium", { Text = "Auto Reveal Aquarium", Default = false })
local TrainingGroup = js.Main:AddLeftGroupbox("Training", "dumbbell")
TrainingGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
TrainingGroup:AddToggle("DisableTrainingFreeze", { Text = "Disable Training Freeze", Default = false })
TrainingGroup:AddToggle("AutoTrainingBoost", { Text = "Auto Training 2x", Default = false })
TrainingGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local ShopsGroup = js.Main:AddRightGroupbox("Shops", "shopping-cart")
ShopsGroup:AddToggle("AutoBuyRod", { Text = "Auto Buy Best Affordable Rod", Default = false })
ShopsGroup:AddToggle("AutoBuyWeight", { Text = "Auto Buy Best Affordable Weights", Default = false })
ShopsGroup:AddToggle("AutoSpinWheel", { Text = "Auto Spin Wheel", Default = false })
local SellingGroup = js.Main:AddRightGroupbox("Selling", "hand-coins")
SellingGroup:AddToggle("AutoSellFish", { Text = "Auto Sell All Fish", Default = false })
SellingGroup:AddDropdown("SellTrigger", {
    Text = "Sell Trigger",
    Values = { "Backpack Full", "Interval", "Backpack Full or Interval" },
    Default = "Backpack Full"
})
SellingGroup:AddSlider("SellInterval", { Text = "Sell Interval (Seconds)", Default = 30, Min = 1, Max = 300, Rounding = 0 })
local MenuGroup = js.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
jc = tick()
i6 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local jV = v
        pcall(function()
            jV:Disable()
        end)
    end
end)
iy = function()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    i6 = tick()
end
connection = UserInputService.InputBegan:Connect(function()
    jc = tick()
end)
connection2 = UserInputService.InputChanged:Connect(function(am)
    local UserInputType = am.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        jc = tick()
    end
end)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", function()
    Library:Unload()
end)
iC = function()
    return clientProducer:getState()
end
im = function(av)
    return selectors.selectPlayerInventory(iu)(av)
end
jh = function(az)
    return selectors.selectEquippedInventoryItem(iu)(az)
end
iV = function(aD)
    local j0 = {}
    local j2 = aD or {}
    for k, v in pairs(j2) do
        local j1_1 = v.itemType == "fish" and v.exclusiveIndex == nil and not exclusive_fish.getExclusiveFishConfigByFishName(v.itemName)
        if j1_1 then
            table.insert(j0, v.itemId)
        end
    end
    return j0
end
h7 = false
h1 = function()
    local ka
    local kc_1
    local kb_1
    if h7 then
        return
    end
    ka = iV(im(iC()))
    if #ka == 0 then
        return
    end
    h7 = true
    kb_1, kc_1 = pcall(function()
        return network.functions.sellFishItems(ka):expect()
    end)
    h7 = false
    if not kb_1 then
        error(kc_1)
    end
end
SellingGroup:AddButton({
    Text = "Sell All Fish Now",
    Func = function()
        pcall(h1)
    end
})
h5 = function(aX)
    local kh = im(aX)
    local ki
    local kj = -math.huge
    local kl = kh or {}
    for k, v in pairs(kl) do
        if v.itemType == "trainingWeight" then
            local kh_1 = training_weights.trainingWeightsData[v.itemName]
            if kh_1 and kh_1.powerPerTrain > kj then
                ki = v
                kj = kh_1.powerPerTrain
            end
        end
    end
    return ki
end
ie = nil
h9 = function()
    local kv_1
    local kt_1
    if ie then
        return ie
    end
    for i, v in ipairs(getgc(true)) do
        if type(v) == "table" then
            kt_1, kv_1 = pcall(getmetatable, v)
            if kt_1 and kv_1 == WeightTrainingController then
                ie = v
                return ie
            end
        end
    end
end
iN = function(bf)
    local kI = h9()
    if not kI then
        return
    end
    if bf then
        kI._characterController:_enableMovement()
    else
        kI._characterController:_disableMovement()
    end
end
ih = function()
    if fishing_phase_atom.fishingMovementLockedAtom() then
        return
    end
    local kN = iC()
    local kO = h5(kN)
    local kP = jh(kN)
    if kO and (not kP or kP.itemId ~= kO.itemId) then
        network.functions.equipInventoryItem(kO.itemId):expect()
    end
end
il = function(bv)
    if bv.fishingArea.isInFishingArea then
        return true
    end
    local Character = LocalPlayer.Character
    local kT = Character and Character:FindFirstChild("HumanoidRootPart")
    local kT_1 = CollectionService:GetTagged("FishingArea")[1]
    local kU = kT_1 and kT_1:FindFirstChild("DetectableArea", true)
    if kT and kU then
        kT.CFrame = kU.CFrame
    end
    return false
end
iI = function(bF)
    for i, child in ipairs(LocalPlayer.PlayerGui:GetChildren()) do
        if child ~= Library.ScreenGui then
            for i, descendant in ipairs(child:GetDescendants()) do
                local k1 = bF(descendant)
                if k1 ~= nil then
                    return k1
                end
            end
        end
    end
end
i4 = nil
i_ = function()
    local lk = i4
    if not (lk and lk.Parent and lk.Visible and lk.Text == "FISH!") then
        i4 = iI(function(bT)
            local lf = bT:IsA("TextLabel") and bT.Visible and bT.Text == "FISH!"
            if lf then
                return bT
            end
        end)
        lk = i4
    end
    if not lk then
        return
    end
    local ll_1 = lk.Parent
    while true do
        local lk_1 = ll_1 and not ll_1:IsA("GuiButton")
        if lk_1 then
            ll_1 = ll_1.Parent
            continue
        end
        break
    end
    if ll_1 and ll_1.Visible then
        return ll_1
    end
end
jf = nil
i8 = function()
    local ViewportSize
    ViewportSize = nil
    local CurrentCamera = workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    ViewportSize = CurrentCamera.ViewportSize
    local lz_1 = jf
    if lz_1 and lz_1.Parent and lz_1.Visible and lz_1.AbsoluteSize.X >= ViewportSize.X * 0.9 and lz_1.AbsoluteSize.Y >= ViewportSize.Y * 0.9 then
        return lz_1
    end
    jf = iI(function(b5)
        local lt = b5:IsA("TextButton") and b5.Visible and b5.AbsoluteSize.X >= ViewportSize.X * 0.9 and b5.AbsoluteSize.Y >= ViewportSize.Y * 0.9
        if lt then
            return b5
        end
    end)
    return jf
end
h2 = function()
    for i, v in ipairs(getgc(true)) do
        local lF = type(v) == "table" and type(rawget(v, "getStrength")) == "function" and type(rawget(v, "reset")) == "function" and type(rawget(v, "freeze")) == "function"
        if lF then
            local lF_1 = debug.getupvalues(rawget(v, "getStrength"))
            for k, v in pairs(lF_1) do
                local lF_2 = type(v) == "table" and type(rawget(v, "current")) == "number"
                if lF_2 then
                    v.current = 100
                    break
                end
            end
        end
    end
end
iw = false
ip = function()
    if fishing_phase_atom.fishingMovementLockedAtom() then
        iw = false
        return
    end
    local lW = iC()
    local lW_3
    local lX = im(lW)
    local lX_3
    local lY = not lX or not inventory_utils.hasSpaceInBackpack(lX)
    if lY then
        return
    elseif Toggles.AutoTrain.Value then
        local lX_1 = jh(lW)
        if lX_1 and lX_1.itemType == "trainingWeight" then
            iw = true
            network.functions.unequipInventoryItem(lX_1.itemId):expect()
            return
        elseif not il(lW) then
            return
        else
            local lW_1 = i_()
            if not lW_3 then
                return
            end
            firesignal(lW_1.Activated)
            local lW_2 = os.clock() + 2
            while true do
                local lX_2 = not Library.Unloaded and Toggles.AutoFish.Value and os.clock() < lW_2
                if lX_3 then
                    lX_1 = i8()
                    if lX then
                        break
                    end
                    task.wait(0.05)
                    continue
                end
                return
            end
            h2()
            firesignal(lX_1.MouseButton1Down)
            iw = false
            return
        end
    elseif not il(lW) then
        return
    else
        lW_3 = i_()
        if not lW_3 then
            return
        end
        firesignal(lW_3.Activated)
        local lW_4 = os.clock() + 2
        while true do
            lX_3 = not Library.Unloaded and Toggles.AutoFish.Value and os.clock() < lW_4
            if lX_3 then
                lX = i8()
                if lX then
                    break
                end
                task.wait(0.05)
                continue
            end
            return
        end
        h2()
        firesignal(lX.MouseButton1Down)
        iw = false
        return
    end
end
iG = function()
    local l2 = iC()
    local l3 = selectors.selectPlayerRebirthCount(iu)(l2)
    local l4 = selectors.selectPlayerStats(iu)(l2)
    local l2_1 = l3 == nil or not l4 or rebirth_utils.isMaxRebirth(l3)
    if l2_1 then
        return
    end
    if l4.power >= rebirth_utils.getRebirthPowerCost(l3) then
        network.functions.performRebirth():expect()
    end
end
iY = function(cP, cQ, cR, cS)
    local l6 = iC()
    local l7 = im(l6)
    if not l7 then
        return
    end
    local l8 = {}
    for k, v in pairs(l7) do
        l8[v.itemName] = true
    end
    local l7_1 = 0
    for i, v in ipairs(cQ) do
        if l8[v] then
            l7_1 = i
        end
    end
    local l8_1 = cQ[l7_1 + 1]
    local l9 = l8_1 and cR[l8_1]
    if not l9 or l7_1 == 0 then
        return
    end
    local l7_2 = (selectors.selectPlayerRebirthCount(iu)(l6))
    local mu = if l7_2 then 1 else 0
    local ms = 144 * mu + 2692 * (1 - mu)
    local mt = 1093 * mu + 1079 * (1 - mu)
    if not ((ms * 2248 + mt * 1417 + ms * mt) % 16777213 == 2029885) then
        l7_2 = 0
    end
    if l7_2 < (cS[l8_1] or 0) then
        return
    end
    local l7_4 = selectors.selectPlayerStat(iu, "money")(l6) or 0
    local l7_5 = selectors.selectEquippedBaitAuraName(iu)(l6)
    local moneyDiscount = bait_aura_utils.getBaitAuraBuffBonuses(l7_5).moneyDiscount
    local l7_6 = math.floor(l9.price * (1 - moneyDiscount))
    if l7_4 >= l7_6 then
        network.functions.purchaseShopItem(cP, l8_1):expect()
    end
end
iL = nil
iD = nil
iv = function()
    local mv = iC()
    local mw = im(mv)
    local mx = selectors.selectPlayerAquarium(iu)(mv)
    if mw == iL and mx == iD then
        return
    end
    iL = mw
    iD = mx
    network.functions.equipBestAquariumFish():expect()
end
iK = function()
    local mA = selectors.selectPlayerAquariumUncollectedMoney(iu)(iC()) or 0
    if mA > 0 then
        network.functions.collectPlotMoney(iu):expect()
    end
end
h3 = function()
    local mD = iC()
    local mE = selectors.selectPlayerAquariumUpgradeStartedTimestamp(iu)(mD)
    local mF = not mE
    if mF ~= false then
        mF = selectors.selectCanAffordAquariumUpgrade(iu)(mD)
    end
    if mF then
        network.functions.upgradeAquarium():expect()
    end
end
ix = function()
    local mH = iC()
    local mI = selectors.selectPlayerAquariumUpgradeStartedTimestamp(iu)(mH)
    if mI then
        network.functions.confirmAquariumUpgrade():expect()
    end
end
i9 = function()
    local mK = (selectors.selectPlayerStat(iu, "spinWheelSpins")(iC()))
    local mP = if mK then 1 else 0
    local mN = 738 * mP + 3216 * (1 - mP)
    local mO = 1718 * mP + 1947 * (1 - mP)
    if not ((mN * 2188 + mO * 560 + mN * mO) % 16777213 == 3844708) then
        mK = 0
    end
    if mK > 0 then
        network.functions.spinPlaytimeWheel():expect()
    end
end
it = function()
    iI(function(dF)
        local mQ = dF:IsA("TextButton") and dF.Visible and dF.Text == "" and dF.AbsoluteSize.X > 50 and math.abs(dF.AbsoluteSize.X - dF.AbsoluteSize.Y) < 2
        if mQ then
            local UICorner = dF:FindFirstChildOfClass("UICorner")
            local mR = UICorner and UICorner.CornerRadius.Scale == 0.5 and #getconnections(dF.Activated) > 0
            if mR then
                firesignal(dF.Activated)
                return true
            end
        end
    end)
end
jd = function()
    iI(function(dL)
        local Parent = dL.Parent
        local mX = dL:IsA("TextButton") and dL.Visible and dL.Text == "" and dL.Size == UDim2.fromOffset(168, 168) and Parent and Parent:IsA("GuiObject") and Parent.Size == UDim2.fromOffset(140, 140) and #getconnections(dL.Activated) > 0
        if mX then
            firesignal(dL.Activated)
            return true
        end
    end)
end
onStart = CastCutSceneComponent.onStart
_onReelStarted = FishingRodController._onReelStarted
local jl_6 = debug.getupvalues(reel_camera.playReelCamera)
ij = jl_6[1]
ib = jl_6[5]
h6 = jl_6[8]
diagonalTweenDuration = ij.diagonalTweenDuration
CastCutSceneComponent.onStart = function(dV, ...)
    local m3 = onStart(dV, ...)
    if Toggles.SkipFishAnimation.Value and dV._soundClockTrack then
        task.defer(function()
            if dV._soundClockTrack and dV._soundClockTrack.IsPlaying then
                dV._soundClockTrack:AdjustSpeed(20)
            end
        end)
    end
    return m3
end
FishingRodController._onReelStarted = function(d1, ...)
    if Toggles.SkipFishAnimation.Value then
        debug.setupvalue(reel_camera.playReelCamera, 5, function()
            return false
        end)
        debug.setupvalue(reel_camera.playReelCamera, 8, 0.15)
        ij.diagonalTweenDuration = 0.1
    else
        debug.setupvalue(reel_camera.playReelCamera, 5, ib)
        debug.setupvalue(reel_camera.playReelCamera, 8, h6)
        ij.diagonalTweenDuration = diagonalTweenDuration
    end
    return _onReelStarted(d1, ...)
end
i2 = nil
iX = function()
    local m7 = not Toggles.SkipFishAnimation.Value or not fishing_phase_atom.fishingMovementLockedAtom()
    if m7 then
        i2 = nil
        return
    end
    local m7_1 = iC()
    local m8 = fishing_hooks_selectors.selectLocalPlayerHook(iu)(m7_1)
    local m7_2 = m8 ~= nil or i8() ~= nil or workspace:FindFirstChild("CastCutScene") ~= nil or fishing_phase_atom.bossActivePromptAtom() ~= nil or fishing_phase_atom.apexSkillCheckAtom() ~= nil or fishing_phase_atom.apexDropAtom() ~= nil or fishing_phase_atom.apexRevealAtom() ~= nil or fishing_phase_atom.apexAfterRareFishCutsceneAtom() or fishing_phase_atom.rareFishTransitionAtom() ~= nil or fishing_phase_atom.catchFadeAtom() ~= nil
    if m7_2 then
        i2 = nil
        return
    end
    local m7_3 = i2 or os.clock()
    i2 = m7_3
    if os.clock() - i2 >= 4 then
        i2 = nil
        fishing_phase_atom.fishingMovementLockedAtom(false)
    end
end
iM = nil
iE = nil
iE = hookmetamethod(game, "__namecall", newcclosure(function(eq, ...)
    local nd = iM and eq == UserInputService and getnamecallmethod() == "GetMouseLocation"
    if nd then
        return iM
    end
    return iE(eq, ...)
end))
jj = function()
    local nf
    local ng = -math.huge
    for i, v in ipairs(getgc(true)) do
        if type(v) == "table" then
            local nh = rawget(v, "promptType")
            if nh == "tap" or nh == "multiTap" or nh == "slide" then
                local nh_1 = tonumber(rawget(v, "spawnTime"))
                local ni_2 = nh_1 and nh_1 > ng and os.clock() - nh_1 < 10 and rawget(v, "action") ~= nil
                if ni_2 then
                    nf = v
                    ng = nh_1
                end
            end
        end
    end
    return nf
end
is = function()
    local eE
    eE = {}
    iI(function(eG)
        local ns = eG:IsA("TextButton") and eG.Visible and eG.Text == "" and eG.AbsoluteSize.X > 80 and eG.AbsoluteSize.X < 280 and math.abs(eG.AbsoluteSize.X - eG.AbsoluteSize.Y) < 2
        if ns then
            local UICorner = eG:FindFirstChildOfClass("UICorner")
            local nt = UICorner and UICorner.CornerRadius.Scale == 0.5 and #getconnections(eG.Activated) > 0
            if nt then
                eE[#eE + 1] = eG
            end
        end
    end)
    return eE
end
i0 = nil
iU = nil
iO = nil
iF = nil
iq = 0
iz = 0
ii = setmetatable({}, { __mode = "k" })
ic = function()
    local pathTolerance = boss_config.bossTuning.slide.pathTolerance
    boss_config.bossTuning.slide.pathTolerance = math.huge
    pcall(function()
        for i, v in ipairs(getconnections(UserInputService.InputBegan)) do
            if type(v.Function) == "function" then
                pcall(v.Function, { UserInputType = Enum.UserInputType.MouseButton1 })
            end
        end
    end)
    boss_config.bossTuning.slide.pathTolerance = pathTolerance
end
iR = function()
    local nF = fishing_phase_atom.bossActivePromptAtom()
    if nF == nil then
        iM = nil
        i0 = nil
        iU = nil
        iO = nil
        iF = nil
        table.clear(ii)
        return
    end
    if nF ~= i0 then
        i0 = nF
        iU = nil
        iO = nil
        iF = nil
        iM = nil
        table.clear(ii)
    end
    local nF_1 = not iU and os.clock() - iz >= 0.05
    if nF_1 then
        iz = os.clock()
        iU = jj()
    end
    local nF_2 = iU
    if not nF_2 then
        return
    end
    if nF_2.promptType == "multiTap" then
        if os.clock() - iq < 0.05 then
            return
        end
        iq = os.clock()
        local nG_1 = is()
        for i, v in ipairs(nG_1) do
            if not ii[v] then
                ii[v] = true
                firesignal(v.Activated)
            end
        end
        return
    end
    if nF_2.promptType == "tap" then
        local nG_2 = nF_2.spawnTime + nF_2.durationMs / 1000
        local nH = nF_2 ~= iO and os.clock() >= nG_2 - 0.01
        if nH then
            local nG_3 = is()
            local nH_1 = nG_3[1]
            if nH_1 then
                iO = nF_2
                firesignal(nH_1.Activated)
            end
        end
        return
    end
    if nF_2 ~= iF then
        local nG_4 = nF_2.spawnTime + nF_2.grabWindowMs / 1000
        if os.clock() < nG_4 - 0.01 then
            return
        end
        local nG_5 = jj() or nF_2
        iU = nG_5
        ic()
        if nG_5.slideGrabbed then
            iF = nG_5
            iM = nG_5.slideSpan.Unit * 1000000
        end
    end
end
task.spawn(function()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local nS = tick() - jc
            local nT = tick() - i6
            if nS >= 300 and nT >= 60 then
                pcall(iy)
            else
                if nS < 300 and nT >= 300 then
                    pcall(iy)
                end
            end
        end
    end
end)
task.spawn(function()
    local nW = false
    while not Library.Unloaded do
        if Toggles.AutoTrain.Value and not iw then
            pcall(ih)
        end
        local nX_1 = iC()
        local nY_1 = jh(nX_1)
        local nY_2 = nY_1 and nY_1.itemType == "trainingWeight"
        local nX_3 = Toggles.DisableTrainingFreeze.Value and nY_2 and not fishing_phase_atom.fishingMovementLockedAtom()
        if nX_3 then
            pcall(iN, true)
            nW = true
        elseif nW then
            local nX_4 = nY_2 and not fishing_phase_atom.fishingMovementLockedAtom()
            if nX_4 then
                pcall(iN, false)
            end
            nW = false
        end
        task.wait(0.25)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoTrainingBoost.Value then
            pcall(it)
        end
        task.wait(0.1)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoMutationBoost.Value then
            pcall(jd)
        end
        task.wait(0.1)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoBossBattle.Value then
            pcall(iR)
        else
            iM = nil
            i0 = nil
            iU = nil
            iO = nil
            iF = nil
            table.clear(ii)
        end
        task.wait(0.03)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        pcall(iX)
        task.wait(0.25)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoFish.Value then
            pcall(ip)
        else
            iw = false
        end
        task.wait(1)
    end
end)
task.spawn(function()
    local n7 = os.clock()
    while not Library.Unloaded do
        if Toggles.AutoSellFish.Value then
            local n8 = iC()
            local n9 = im(n8)
            local Value = Options.SellTrigger.Value
            local oa = n9 and not inventory_utils.hasSpaceInBackpack(n9)
            local oa_1 = os.clock() - n7 >= Options.SellInterval.Value
            if Value == "Backpack Full" and oa or Value == "Interval" and oa_1 or Value == "Backpack Full or Interval" and (oa or oa_1) then
                pcall(h1)
                n7 = os.clock()
            end
        else
            n7 = os.clock()
        end
        task.wait(0.25)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            pcall(iG)
        end
        if Toggles.AutoBuyRod.Value then
            pcall(iY, "rodsShop", fishing_rods.fishingRodOrder, fishing_rods.fishingRodsData, shops.rodRebirthRequirements)
        end
        if Toggles.AutoBuyWeight.Value then
            pcall(iY, "weightsShop", training_weights.trainingWeightOrder, training_weights.trainingWeightsData, shops.weightRebirthRequirements)
        end
        if Toggles.AutoSpinWheel.Value then
            pcall(i9)
        end
        task.wait(1)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoAquarium.Value then
            pcall(iv)
        else
            iL = nil
            iD = nil
        end
        if Toggles.AutoCollectAquariumMoney.Value then
            pcall(iK)
        end
        if Toggles.AutoUpgradeAquarium.Value then
            pcall(h3)
        end
        if Toggles.AutoRevealAquarium.Value then
            pcall(ix)
        end
        task.wait(2.5)
    end
end)
Library:OnUnload(function()
    CastCutSceneComponent.onStart = onStart
    FishingRodController._onReelStarted = _onReelStarted
    debug.setupvalue(reel_camera.playReelCamera, 5, ib)
    debug.setupvalue(reel_camera.playReelCamera, 8, h6)
    ij.diagonalTweenDuration = diagonalTweenDuration
    hookmetamethod(game, "__namecall", iE)
    local ok = iC()
    local ol = jh(ok)
    local ok_1 = Toggles.DisableTrainingFreeze.Value and ol and ol.itemType == "trainingWeight" and not fishing_phase_atom.fishingMovementLockedAtom()
    if ok_1 then
        pcall(iN, false)
    end
    connection:Disconnect()
    connection2:Disconnect()
    print("Be A Fish Bait unloaded")
end)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/BeAFishBait")
SaveManager:BuildConfigSection(js.Settings)
ThemeManager:ApplyToTab(js.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
