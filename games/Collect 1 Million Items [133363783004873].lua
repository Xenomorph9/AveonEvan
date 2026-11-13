local ThemeManager
local lQ
local Library2
local TrailShop
local lD
local mk
local Gem
local mJ
local lJ
local l7
local RebirthPricing
local PlayerWalkspeedShop
local lV
local mC
local CashMultiplierShop
local mI
local lI
local mp
local SpawnSpeedShop
local mO
local mv
local mi
local Toggles
local PusherShop
local lH
local mo
local Prestige
local State
local TrailCurrent
local BuyEquipTrail
local Rebirth
local lT
local mA
local mh
local lZ
local mG
local PusherCurrent
local mn
local SaveManager
local mt
local ma
local Options
local EquipPusher
local Collected
local DropAmountShop
local BuyRebirth
local BuyUpgrade
local Cash
local CapacityLimitShop
local ms
local l9
local FriendBoostShop
local HiddenStats
local mf
local mE
local lE
local ml
local l2
local mK
local GemUpgradeShop
local function onCharacterAdded()
    task.wait(0.15)
    if mf() then
        mn()
    end
end
local function fn108(Q)
    local nz = typeof(cloneref) == "function" and typeof(Q) == "Instance"
    if nz then
        return cloneref(Q)
    end
    return Q
end
local function fn119()
    if lQ.WalkSpeedEnabled then
        lI.SetWalkSpeedEnabled(true)
    end
    if lQ.NoClip then
        lI.SetNoClip(true)
    end
    if lQ.Fly then
        lI.SetFly(true)
    end
end
local function fn163()
    if not State.AutoBuyUpgrades then
        return
    end
    for i, v in ipairs(mA) do
        if State.SelectedUpgrades[v] then
            l9(v)
        end
    end
end
local function fn192(dF)
    local p8 = dF and true or false
    lQ.WalkSpeedEnabled = p8
    local p7_1 = lJ()
    if not p7_1 then
        return
    end
    if lQ.WalkSpeedEnabled then
        if lQ.WalkSnapshots[p7_1] == nil then
            lQ.WalkSnapshots[p7_1] = p7_1.WalkSpeed
        end
        p7_1.WalkSpeed = lQ.WalkSpeed
    else
        local p8_1 = lQ.WalkSnapshots[p7_1]
        if p8_1 ~= nil then
            p7_1.WalkSpeed = p8_1
            lQ.WalkSnapshots[p7_1] = nil
        end
    end
end
local function fn250(c8)
    local pJ = c8 and true or false
    State.AutoClaimIndex = pJ
    if State.AutoClaimIndex then
        lZ("AutoClaimIndex", 0.5, lH)
    else
        ml("AutoClaimIndex")
    end
end
local function fn257()
    if not State.AutoBuyTrails then
        return
    end
    local Value2 = Cash.Value
    local Value = TrailCurrent.Value
    local o8 = TrailShop.GetMoneyBoost(Value) or 1
    local o9
    for i, v in ipairs(mk()) do
        if Value2 >= v.Price and v.Boost >= o8 then
            o9 = v
        end
    end
    if o9 and o9.Name ~= Value then
        BuyEquipTrail:FireServer(o9.Name)
        return
    end
    for k in pairs(TrailShop.Trails) do
        if TrailShop.GetPrice(k) == nil then
            local o6_1 = mI:GetAttribute("OwnsGamepass_" .. k) == true and TrailCurrent.Value ~= k
            if o6_1 then
                local o6_2 = TrailShop.GetMoneyBoost(k) or 1
                if o6_2 > o8 then
                    BuyEquipTrail:FireServer(k)
                    return
                end
            end
        end
    end
end
local function fn333()
    local oY = {}
    for k in pairs(TrailShop.Trails) do
        local oZ = TrailShop.GetPrice(k)
        if type(oZ) == "number" then
            local o_ = TrailShop.GetMoneyBoost(k) or 1
            table.insert(oY, { Name = k, Price = oZ, Boost = o_ })
        end
    end
    table.sort(oY, function(cE, cF)
        if cE.Boost == cF.Boost then
            return cE.Price < cF.Price
        end
        return cE.Boost < cF.Boost
    end)
    return oY
end
local function fn340()
    lI.SetWalkSpeedEnabled(false)
    lI.SetInfJump(false)
    lI.SetNoClip(false)
    lI.SetInstantProximityPrompt(false)
    lI.SetFly(false)
    if lQ.CharAddedConn then
        lQ.CharAddedConn:Disconnect()
        lQ.CharAddedConn = nil
    end
end
local function fn363()
    local ov = mv[Prestige.Value]
    return ov ~= nil and Rebirth.Value == ov
end
local function fn366(dK)
    local qa = tonumber(dK) or lQ.WalkSpeed
    lQ.WalkSpeed = qa
    if lQ.WalkSpeedEnabled then
        local qa_1 = lJ()
        if qa_1 then
            qa_1.WalkSpeed = lQ.WalkSpeed
        end
    end
end
local function fn369(c4)
    local pD = c4 and true
    local pH = if pD then 1 else 0
    local pF = 1839 * pH + 1928 * (1 - pH)
    local pG = 3433 * pH + 397 * (1 - pH)
    if not ((pF * 3549 + pG * 1292 + pF * pG) % 16777213 == 498121) then
        pD = false
    end
    State.AutoBuyUpgrades = pD
    if State.AutoBuyUpgrades then
        lZ("AutoBuyUpgrades", 0.35, mi)
    else
        ml("AutoBuyUpgrades")
    end
end
local function fn378()
    for k in pairs(State.Workers) do
        ml(k)
    end
end
local function fn419()
    mK(lE.Main)
    local AutomationGroup = lE.Main:AddLeftGroupbox("Automation", "bot")
    AutomationGroup:AddToggle("AutoCollectItems", { Text = "Auto Collect Items", Default = false })
    AutomationGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    AutomationGroup:AddDropdown("UpgradeTarget", { Text = "Upgrades", Values = mA, Multi = true, AllowNull = true, Default = mA })
    AutomationGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
    AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    AutomationGroup:AddToggle("AutoBuyPusher", { Text = "Auto Buy Pusher", Default = false })
    AutomationGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    Toggles.AutoCollectItems:OnChanged(function(gx)
        lI.SetAutoCollect(gx)
    end)
    Toggles.AutoBuyUpgrades:OnChanged(function(gA)
        lI.SetAutoBuyUpgrades(gA)
    end)
    Options.UpgradeTarget:OnChanged(function(gD)
        lI.SetSelectedUpgrades(gD)
    end)
    Toggles.AutoClaimIndex:OnChanged(function(gF)
        lI.SetAutoClaimIndex(gF)
    end)
    Toggles.AutoRebirth:OnChanged(function(gH)
        lI.SetAutoRebirth(gH)
    end)
    Toggles.AutoBuyPusher:OnChanged(function(gJ)
        lI.SetAutoBuyPusher(gJ)
    end)
    Toggles.AutoBuyTrails:OnChanged(function(gL)
        lI.SetAutoBuyTrails(gL)
    end)
    lI.SetSelectedUpgrades(Options.UpgradeTarget.Value)
end
local function fn469(e1)
    return (tostring(e1):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn477()
    return lD.CoreGui
end
local function fn479(di)
    local pP = di and true or false
    State.AutoBuyPusher = pP
    if State.AutoBuyPusher then
        lZ("AutoBuyPusher", 0.5, ma)
    else
        ml("AutoBuyPusher")
    end
end
local function fn480(e7, e8, e9)
    return string.format("<b>%s</b> %s %s", e7, mh("-", "#5a6070"), mh(e8, e9))
end
local function fn492(dd)
    local pM = dd and true or false
    State.AutoRebirth = pM
    if State.AutoRebirth then
        lZ("AutoRebirth", 0.5, mt)
    else
        ml("AutoRebirth")
    end
end
local function fn501(dP)
    local qf = dP and true or false
    lQ.InfJump = qf
    if lQ.InfJumpConn then
        lQ.InfJumpConn:Disconnect()
        lQ.InfJumpConn = nil
    end
    if not lQ.InfJump then
        return
    end
    lQ.InfJumpConn = lD.UserInputService.JumpRequest:Connect(function()
        local qc = not mf() or not lQ.InfJump
        if qc then
            return
        end
        local qc_1 = lJ()
        if qc_1 then
            qc_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end
local function fn507(fo)
    local DiscordGroup = fo:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = l2,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn573(eM)
    local rc = tonumber(eM) or lQ.FlySpeed
    lQ.FlySpeed = rc
end
local function fn576(dn)
    local pS = dn and true
    local pW = if pS then 1 else 0
    local pU = 3000 * pW + 1478 * (1 - pW)
    local pV = 3351 * pW + 766 * (1 - pW)
    if not ((pU * 2327 + pV * 3378 + pU * pV) % 16777213 == 11576465) then
        pS = false
    end
    State.AutoBuyTrails = pS
    if State.AutoBuyTrails then
        lZ("AutoBuyTrails", 0.5, mJ)
    else
        ml("AutoBuyTrails")
    end
end
local function fn612()
    return not lI.Unloaded
end
local function fn623(c3)
    local px = c3 and true or false
    State.AutoCollect = px
    if State.AutoCollect then
        lZ("AutoCollect", 0.15, mp)
    else
        ml("AutoCollect")
    end
end
local function fn629(aW)
    local nJ = HiddenStats:FindFirstChild(aW)
    local nK = nJ and nJ:IsA("ValueBase")
    if nK then
        return nJ.Value
    end
    return 0
end
local function fn640()
    if not State.AutoBuyPusher then
        return
    end
    local Value2 = Collected.Value
    local Value = PusherCurrent.Value
    local Name
    for i, v in ipairs(mO()) do
        if Value2 >= v.Req then
            Name = v.Name
        end
    end
    if Name and Name ~= Value then
        EquipPusher:FireServer(Name)
    end
end
local function fn657(c_)
    local pm = {}
    if type(c_) == "table" then
        for k, v in pairs(c_) do
            if v == true then
                pm[tostring(k)] = true
            elseif type(v) == "string" then
                pm[v] = true
            end
        end
    else
        local pn = c_ ~= ""
        local po = type(c_) == "string" and pn
        if po then
            pm[c_] = true
        end
    end
    return pm
end
local function fn721(c5)
    State.SelectedUpgrades = l7(c5)
end
local function fn740()
    gethui = mE
end
local function fn741(a5)
    local nT = mo[a5] or a5
    local nU = lV(nT)
    if a5 == "CashMultiplier" then
        if CashMultiplierShop.GetMaxMultiplier() <= nU then
            return false
        end
        local nT_1 = CashMultiplierShop.GetPrice(nU)
        if not nT_1 or Cash.Value < nT_1 then
            return false
        end
        BuyUpgrade:FireServer("CashMultiplier")
        return true
    elseif a5 == "PlayerWalkspeed" then
        if PlayerWalkspeedShop.MAX_UPGRADES <= nU then
            return false
        end
        local nT_2 = PlayerWalkspeedShop.GetPrice(nU)
        if not nT_2 or Cash.Value < nT_2 then
            return false
        end
        BuyUpgrade:FireServer("PlayerWalkspeed")
        return true
    elseif a5 == "SpawnSpeed" then
        if SpawnSpeedShop.MAX_UPGRADES <= nU then
            return false
        end
        local nT_3 = SpawnSpeedShop.GetPrice(nU)
        if not nT_3 or Cash.Value < nT_3 then
            return false
        end
        BuyUpgrade:FireServer("SpawnSpeed")
        return true
    elseif a5 == "CapacityLimit" then
        if CapacityLimitShop.MAX_UPGRADES <= nU then
            return false
        end
        local nT_4 = CapacityLimitShop.GetPrice(nU)
        if not nT_4 or Cash.Value < nT_4 then
            return false
        end
        BuyUpgrade:FireServer("CapacityLimit")
        return true
    elseif a5 == "DropAmount" then
        if DropAmountShop.MAX_UPGRADES <= nU then
            return false
        end
        local nT_5 = DropAmountShop.GetPrice(nU)
        if not nT_5 or Cash.Value < nT_5 then
            return false
        end
        BuyUpgrade:FireServer("DropAmount")
        return true
    elseif a5 == "FriendBoost" then
        if FriendBoostShop.MAX_UPGRADES <= nU then
            return false
        end
        local nT_6 = FriendBoostShop.GetPrice(nU)
        if not nT_6 or Cash.Value < nT_6 then
            return false
        end
        BuyUpgrade:FireServer("FriendBoost")
        return true
    elseif mC(a5) then
        local nT_7 = GemUpgradeShop.Upgrades and GemUpgradeShop.Upgrades[a5]
        local nV_7 = nT_7
        if nT_7 then
            nT_7 = tonumber(nV_7.MaxUpgrades)
        end
        local nV_8 = nT_7 or nil
        local nT_8 = nV_8
        if nV_8 then
            nV_8 = nT_8 <= nU
        end
        if nV_8 then
            return false
        end
        local nT_9 = GemUpgradeShop.GetPrice(nU, a5)
        if not nT_9 or Gem.Value < nT_9 then
            return false
        end
        BuyUpgrade:FireServer(a5)
        return true
    else
        return false
    end
end
local function fn744(aG)
    local nE = State.Workers[aG]
    if nE then
        pcall(task.cancel, nE)
        State.Workers[aG] = nil
    end
end
local function fn749(e3, e4)
    return string.format('<font color="%s">%s</font>', e4, ms(e3))
end
local function fn755()
    local oF = {}
    for k in pairs(PusherShop.Pushers) do
        local oG = PusherShop.GetRequirement(k)
        if type(oG) == "number" then
            table.insert(oF, { Name = k, Req = oG })
        end
    end
    table.sort(oF, function(cl, cm)
        if cl.Req == cm.Req then
            return cl.Name < cm.Name
        end
        return cl.Req < cm.Req
    end)
    return oF
end
local function fn759(eX, eY)
    local rk = false
    if type(setclipboard) == "function" then
        rk = pcall(setclipboard, eX)
    elseif type(toclipboard) == "function" then
        rk = pcall(toclipboard, eX)
    end
    if rk and Library then
        local rk_1 = eY or "Copied"
        Library:Notify(rk_1, 2)
    end
end
local function fn796()
    local Character = mI.Character
    local p2 = Character and Character:FindFirstChildOfClass("Humanoid")
    return p2
end
local function fn807()
    local Character = mI.Character
    local p5 = Character and Character:FindFirstChild("HumanoidRootPart")
    return p5
end
local function fn824()
    mK(lE.Settings)
    local MenuGroup = lE.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library2.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = lE.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library2:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(iN)
        lI.SetAntiAfk(iN)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(iQ)
        lI.SetNoGameplayPaused(iQ)
    end)
    Toggles.AutoReconnect:OnChanged(function(iS)
        lI.SetAutoReconnect(iS)
    end)
    Toggles.Disable3DRendering:OnChanged(function(iU)
        lI.SetDisable3D(iU)
    end)
    Toggles.FPSBoost:OnChanged(function(iW)
        lI.SetFpsBoost(iW)
    end)
    ThemeManager:SetLibrary(Library2)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(lE.Settings)
    SaveManager:SetLibrary(Library2)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("OuroborosHub/Collect1MillionItems")
    SaveManager:BuildConfigSection(lE.Settings)
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
    lI.SetAntiAfk(Toggles.AntiAfk.Value)
    lI.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
    lI.SetAutoReconnect(Toggles.AutoReconnect.Value)
    lI.SetDisable3D(Toggles.Disable3DRendering.Value)
    lI.SetFpsBoost(Toggles.FPSBoost.Value)
    lI.SetAutoCollect(Toggles.AutoCollectItems.Value)
    lI.SetAutoBuyUpgrades(Toggles.AutoBuyUpgrades.Value)
    lI.SetSelectedUpgrades(Options.UpgradeTarget.Value)
    lI.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
    lI.SetAutoRebirth(Toggles.AutoRebirth.Value)
    lI.SetAutoBuyPusher(Toggles.AutoBuyPusher.Value)
    lI.SetAutoBuyTrails(Toggles.AutoBuyTrails.Value)
    if Toggles.HideUIOnStart.Value then
        pcall(function()
            Library2:Toggle(false)
        end)
    end
end
local function fn858()
    mK(lE.Player)
    local MovementGroup = lE.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = lE.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(gT)
        lI.SetWalkSpeedEnabled(gT)
    end)
    Options.WalkSpeed:OnChanged(function(gX)
        lI.SetWalkSpeedValue(gX)
    end)
    Toggles.InfJump:OnChanged(function(gZ)
        lI.SetInfJump(gZ)
    end)
    Toggles.NoClip:OnChanged(function(g0)
        lI.SetNoClip(g0)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(g2)
        lI.SetInstantProximityPrompt(g2)
    end)
    Toggles.Fly:OnChanged(function(g4)
        lI.SetFly(g4)
    end)
    Options.FlySpeed:OnChanged(function(g6)
        lI.SetFlySpeed(g6)
    end)
end
local function fn886()
    if not State.AutoRebirth then
        return
    end
    if lT() then
        return
    end
    local oy = RebirthPricing.GetPrice(Rebirth.Value)
    local oz = not oy
    local oD = if oz then 1 else 0
    local oB = 3766 * oD + 669 * (1 - oD)
    local oC = 3658 * oD + 577 * (1 - oD)
    if not ((oB * 194 + oC * 1901 + oB * oC) % 16777213 == 4683277) then
        oz = Cash.Value < oy
    end
    if oz then
        return
    end
    BuyRebirth:FireServer()
end
local function fn894(a0)
    for i, v in ipairs(mG) do
        if v == a0 then
            return true
        end
    end
    return false
end
local function fn901(T)
    return type(T) == "function"
end
lD = nil
lE = nil
BuyUpgrade = nil
PusherCurrent = nil
lH = nil
lI = nil
lJ = nil
GemUpgradeShop = nil
TrailCurrent = nil
lQ = nil
FriendBoostShop = nil
Options = nil
lT = nil
lV = nil
DropAmountShop = nil
lZ = nil
Toggles = nil
Gem = nil
l2 = nil
CapacityLimitShop = nil
SaveManager = nil
Prestige = nil
SpawnSpeedShop = nil
l7 = nil
ThemeManager = nil
l9 = nil
ma = nil
Rebirth = nil
PlayerWalkspeedShop = nil
Library2 = nil
mf = nil
Collected = nil
mh = nil
mi = nil
CashMultiplierShop = nil
mk = nil
ml = nil
Cash = nil
mn = nil
mo = nil
mp = nil
local lL, SellItem, lO, lP, Index, lW, lX, l0, mc
ms = nil
mt = nil
BuyEquipTrail = nil
mv = nil
HiddenStats = nil
EquipPusher = nil
mA = nil
mC = nil
TrailShop = nil
mE = nil
BuyRebirth = nil
mG = nil
PusherShop = nil
mI = nil
mJ = nil
mK = nil
State = nil
mO = nil
RebirthPricing = nil
local mq, mr, mw, mx, mB, ClaimIndexReward, LocalItems
local mX_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
lD, mI, mE = nil, nil, nil
local mQ = 6
repeat
    local mR_1 = { "ebnqjbj", "fovjziqfycq", "gkggrtr", "wyqy", "uclqoyfknnb", "coz", "ifcuup", "tknhxfcouj" }
    local tZ = mQ
    local mS_1 = mR_1[tZ % 8 + 1]
    if mS_1:len() <= mS_1:reverse():rep(tZ % 3 + 2):len() then
        lD = {}
        lD.Players = game:GetService("Players")
        lD.ReplicatedStorage = game:GetService("ReplicatedStorage")
        lD.RunService = game:GetService("RunService")
        lD.UserInputService = game:GetService("UserInputService")
        lD.VirtualUser = game:GetService("VirtualUser")
        lD.HttpService = game:GetService("HttpService")
        lD.TeleportService = game:GetService("TeleportService")
        lD.Workspace = game:GetService("Workspace")
        lD.Lighting = game:GetService("Lighting")
        lD.Stats = game:GetService("Stats")
        lD.CoreGui = game:GetService("CoreGui")
        mI = lD.Players.LocalPlayer
        mE = fn477
    else
        mE = {}
        mE.Players = game:GetService("Players")
        mE.ReplicatedStorage = game:GetService("ReplicatedStorage")
        mE.RunService = game:GetService("RunService")
        mE.UserInputService = game:GetService("UserInputService")
        mE.VirtualUser = game:GetService("VirtualUser")
        mE.HttpService = game:GetService("HttpService")
        mE.TeleportService = game:GetService("TeleportService")
        mE.Workspace = game:GetService("Workspace")
        mE.Lighting = game:GetService("Lighting")
        mE.Stats = game:GetService("Stats")
        mE.CoreGui = game:GetService("CoreGui")
        lD = mE.Players.LocalPlayer
        mI = fn477
    end
    mQ = (mQ + 0) % 8
until (mQ * 5 + 0) % 8 == 6
if getgenv then
    getgenv().gethui = mE
end
mc, l2, lX, lP, lI, State, l0, SellItem, BuyUpgrade, ClaimIndexReward, BuyRebirth, EquipPusher, BuyEquipTrail, CashMultiplierShop, PlayerWalkspeedShop, SpawnSpeedShop, CapacityLimitShop, DropAmountShop, FriendBoostShop, GemUpgradeShop, RebirthPricing, PusherShop, TrailShop, HiddenStats, Cash, Collected, Rebirth, Prestige, Gem, Index, TrailCurrent, PusherCurrent, LocalItems, mG, mA, mv, mo, lQ, mB, mw, mq, mX_1, Library2, ThemeManager, SaveManager, Toggles, Options, lE, lO, mr, mf, ml, lZ, lV, mC, l9, mp, mi, lH, lT, mt, mO, ma, mk, mJ, l7, lJ, mx, mn, lL, ms, mh, lW, mK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn740)
local function mY(i)
    local np
    local nn
    local no
    nn = nil
    no = nil
    np = nil
    local nq = i ~= ""
    local nr = type(i) == "string" and nq
    assert(nr, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    nn = getgenv()
    assert(type(nn) == "table", "getgenv did not return a table")
    local nq_1 = nn[i]
    if nq_1 ~= nil then
        local nr_1 = type(nq_1) == "table" and type(nq_1.Unload) == "function"
        assert(nr_1, "Namespace is occupied")
        nq_1.Unload()
        assert(nn[i] == nil, "Previous instance did not release its namespace")
    end
    no = {}
    np = { State = {}, Unloaded = false }
    np.Track = function(o)
        assert(type(o) == "function", "Cleanup must be callable")
        if np.Unloaded then
            o()
        else
            table.insert(no, o)
        end
        return o
    end
    np.Unload = function()
        local ng_1
        local nf_1
        if np.Unloaded then
            return
        end
        np.Unloaded = true
        local nd = {}
        local nk = #no
        local nj = -1
        while false and nk <= 1 or true and nk >= 1 do
            local nl = nk
            local ne_1 = table.remove(no, nl)
            nf_1, ng_1 = pcall(ne_1)
            if not nf_1 then
                table.insert(nd, tostring(ng_1))
            end
            nk += nj
        end
        table.clear(np.State)
        if #nd > 0 then
            error("Cleanup incomplete: " .. table.concat(nd, "; "), 0)
        end
        if nn[i] == np then
            nn[i] = nil
        end
    end
    nn[i] = np
    return np
end
local function mS_2(B, C)
    local nx = type(B) == "table" and type(B.Track) == "function"
    assert(nx, "FeatureAPI required")
    local nx_1 = type(C) == "table" and type(C.OnUnload) == "function"
    assert(nx_1, "UI library required")
    assert(type(C.Unload) == "function", "UI unload required")
    B.Track(function()
        if not C.Unloaded then
            C:Unload()
        end
    end)
    C:OnUnload(function()
        B.Unload()
    end)
end
local mW = "OuroborosCollect1MillionItems"
mc = "Collect 1 Million Items"
local mV = "v0.3"
l2 = "https://discord.gg/synapsex"
lX = "https://rscripts.net/@Ouroboros"
lP = "https://ouroboros-hub-rbx.web.app/"
lI = mY(mW)
State = lI.State
mr = fn901
mf = fn612
local mU = fn108(lD.ReplicatedStorage)
l0 = fn108(lD.Workspace)
local Remotes = mU:WaitForChild("Remotes")
SellItem = Remotes:WaitForChild("SellItem")
BuyUpgrade = Remotes:WaitForChild("BuyUpgrade")
ClaimIndexReward = Remotes:WaitForChild("ClaimIndexReward")
BuyRebirth = Remotes:WaitForChild("BuyRebirth")
EquipPusher = Remotes:WaitForChild("EquipPusher")
if (TrailShop or not mt or false) and "#6ec1ff" and (not SaveManager or false or (SaveManager or not TrailShop) or (TrailShop and mX_1 or false and not SaveManager)) or ((false or SaveManager) and (not SaveManager and not SaveManager) and ((not SaveManager or not TrailShop) and (mt and not mt)) or (TrailShop or mt or mX_1 and BuyEquipTrail or (TrailShop or mt or not SaveManager and not BuyEquipTrail))) or not ((TrailShop or not mt or false) and "#6ec1ff" and (not SaveManager or false or (SaveManager or not TrailShop) or (TrailShop and mX_1 or false and not SaveManager)) or ((false or SaveManager) and (not SaveManager and not SaveManager) and ((not SaveManager or not TrailShop) and (mt and not mt)) or (TrailShop or mt or mX_1 and BuyEquipTrail or (TrailShop or mt or not SaveManager and not BuyEquipTrail)))) then
    BuyEquipTrail = Remotes:WaitForChild("BuyEquipTrail")
else
    BuyEquipTrail:WaitForChild("BuyEquipTrail")
end
local Others = mU:WaitForChild("Others")
CashMultiplierShop = require(Others:WaitForChild("CashMultiplierShop"))
PlayerWalkspeedShop = require(Others:WaitForChild("PlayerWalkspeedShop"))
SpawnSpeedShop = require(Others:WaitForChild("SpawnSpeedShop"))
CapacityLimitShop = require(Others:WaitForChild("CapacityLimitShop"))
DropAmountShop = require(Others:WaitForChild("DropAmountShop"))
FriendBoostShop = require(Others:WaitForChild("FriendBoostShop"))
GemUpgradeShop = require(Others:WaitForChild("GemUpgradeShop"))
RebirthPricing = require(Others:WaitForChild("RebirthPricing"))
PusherShop = require(Others:WaitForChild("PusherShop"))
TrailShop = require(Others:WaitForChild("TrailShop"))
HiddenStats = mI:WaitForChild("HiddenStats")
local leaderstats = mI:WaitForChild("leaderstats")
Cash = leaderstats:WaitForChild("Cash")
Collected = leaderstats:WaitForChild("Collected")
Rebirth = leaderstats:WaitForChild("Rebirth")
Prestige = leaderstats:WaitForChild("Prestige")
Gem = HiddenStats:WaitForChild("Gem")
Index = HiddenStats:WaitForChild("Index")
TrailCurrent = mI:WaitForChild("TrailCurrent")
PusherCurrent = mI:WaitForChild("PusherCurrent")
LocalItems = l0:WaitForChild("LocalItems")
mG = {
    "GoldenUpgrade",
    "DarkMatterUpgrade",
    "PrismaticUpgrade",
    "GiantUpgrade",
    "GemDropUpgrade",
    "GemMultiplierUpgrade"
}
mA = {
    "CashMultiplier",
    "PlayerWalkspeed",
    "SpawnSpeed",
    "CapacityLimit",
    "DropAmount",
    "FriendBoost",
    "GoldenUpgrade",
    "DarkMatterUpgrade",
    "PrismaticUpgrade",
    "GiantUpgrade",
    "GemDropUpgrade",
    "GemMultiplierUpgrade"
}
mv = { [0] = 10, [1] = 15, [2] = 20, [3] = 25, [4] = 30, [5] = 35, [6] = 40, [7] = 45 }
mo = {
    CashMultiplier = "CashMultiplier",
    PlayerWalkspeed = "PlayerSpeedX",
    SpawnSpeed = "SpawnSpeedX",
    CapacityLimit = "CapacityLimitX",
    DropAmount = "DropAmountX",
    FriendBoost = "FriendBoostX",
    GoldenUpgrade = "GoldenUpgradeX",
    DarkMatterUpgrade = "DarkMatterUpgradeX",
    PrismaticUpgrade = "PrismaticUpgradeX",
    GiantUpgrade = "GiantUpgradeX",
    GemDropUpgrade = "GemDropUpgradeX",
    GemMultiplierUpgrade = "GemMultiplierX"
}
State.AutoCollect = false
State.AutoBuyUpgrades = false
State.SelectedUpgrades = {}
State.AutoClaimIndex = false
State.AutoRebirth = false
State.AutoBuyPusher = false
State.AutoBuyTrails = false
State.Workers = {}
ml = fn744
lZ = function(aJ, aK, aL)
    ml(aJ)
    State.Workers[aJ] = task.spawn(function()
        local nH_1
        local nG_1
        while mf() do
            nG_1, nH_1 = pcall(aL)
            if not nG_1 then
                warn("[Ouroboros]", aJ, nH_1)
            end
            task.wait(aK)
            if not mf() then
                break
            end
        end
    end)
end
lV = fn629
mC = fn894
l9 = fn741
mp = function()
    if not State.AutoCollect then
        return
    end
    local children = LocalItems:GetChildren()
    for i, v in ipairs(children) do
        local n8 = v
        local n0_1 = not mf() or not State.AutoCollect
        if n0_1 then
            return
        end
        local attr = n8:GetAttribute("SellToken")
        local n0_2 = attr ~= ""
        local n1 = type(attr) == "string" and n0_2
        if n1 then
            pcall(function()
                SellItem:FireServer(n8.Name, attr)
            end)
            pcall(function()
                n8:Destroy()
            end)
        end
    end
end
mi = fn163
lH = function()
    if not State.AutoClaimIndex then
        return
    end
    for i, child in ipairs(Index:GetChildren()) do
        local ou = child
        local og = not mf() or not State.AutoClaimIndex
        if og then
            return
        end
        local og_1 = ou:IsA("BoolValue") and ou.Value == false
        if og_1 then
            pcall(function()
                ClaimIndexReward:FireServer(ou.Name)
            end)
        end
    end
end
lT = fn363
mt = fn886
mO = fn755
ma = fn640
mk = fn333
mJ = fn257
l7 = fn657
lI.SetAutoCollect = fn623
lI.SetAutoBuyUpgrades = fn369
lI.SetSelectedUpgrades = fn721
lI.SetAutoClaimIndex = fn250
lI.SetAutoRebirth = fn492
lI.SetAutoBuyPusher = fn479
lI.SetAutoBuyTrails = fn576
lI.Track(fn378)
lQ = {
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    InfJump = false,
    NoClip = false,
    InstantPrompt = false,
    Fly = false,
    FlySpeed = 60,
    WalkSnapshots = {},
    NoClipSnapshots = {},
    PromptSnapshots = {},
    InfJumpConn = nil,
    NoClipConn = nil,
    PromptConn = nil,
    FlyConn = nil,
    CharAddedConn = nil,
    FlyBody = nil,
    FlyPriorPlatformStand = nil
}
lJ = fn796
mx = fn807
lI.SetWalkSpeedEnabled = fn192
lI.SetWalkSpeedValue = fn366
lI.SetInfJump = fn501
lI.SetNoClip = function(dZ)
    local ql = dZ and true or false
    lQ.NoClip = ql
    if lQ.NoClipConn then
        lQ.NoClipConn:Disconnect()
        lQ.NoClipConn = nil
    end
    local Character = mI.Character
    if not lQ.NoClip then
        for k, v in pairs(lQ.NoClipSnapshots) do
            if k and k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(lQ.NoClipSnapshots)
        return
    end
    local function qj(d6)
        if not d6:IsA("BasePart") then
            return
        end
        if lQ.NoClipSnapshots[d6] == nil then
            lQ.NoClipSnapshots[d6] = d6.CanCollide
        end
        d6.CanCollide = false
    end
    if Character then
        for i, descendant in ipairs(Character:GetDescendants()) do
            qj(descendant)
        end
        lQ.NoClipConn = Character.DescendantAdded:Connect(function(ea)
            if lQ.NoClip then
                qj(ea)
            end
        end)
    end
end
lI.SetInstantProximityPrompt = function(ed)
    local qP
    local qR = ed and true or false
    lQ.InstantPrompt = qR
    if lQ.PromptConn then
        lQ.PromptConn:Disconnect()
        lQ.PromptConn = nil
    end
    local function qQ_1()
        for k, v in pairs(lQ.PromptSnapshots) do
            if k and k.Parent then
                k.HoldDuration = v.HoldDuration
                k.MaxActivationDistance = v.MaxActivationDistance
                k.RequiresLineOfSight = v.RequiresLineOfSight
            end
        end
        table.clear(lQ.PromptSnapshots)
    end
    if not lQ.InstantPrompt then
        qQ_1()
        return
    end
    qP = function(el)
        if not el:IsA("ProximityPrompt") then
            return
        end
        if lQ.PromptSnapshots[el] then
            return
        end
        lQ.PromptSnapshots[el] = {
            HoldDuration = el.HoldDuration,
            MaxActivationDistance = el.MaxActivationDistance,
            RequiresLineOfSight = el.RequiresLineOfSight
        }
        el.HoldDuration = 0
        el.MaxActivationDistance = 50
        el.RequiresLineOfSight = false
    end
    for i, descendant in ipairs(l0:GetDescendants()) do
        qP(descendant)
    end
    lQ.PromptConn = l0.DescendantAdded:Connect(function(eq)
        if lQ.InstantPrompt then
            qP(eq)
        end
    end)
end
lI.SetFly = function(et)
    local bodyVelocity
    local q9 = et and true or false
    lQ.Fly = q9
    if lQ.FlyConn then
        lQ.FlyConn:Disconnect()
        lQ.FlyConn = nil
    end
    local q8_1 = lJ()
    local q9_1 = mx()
    if lQ.FlyBody then
        lQ.FlyBody:Destroy()
        lQ.FlyBody = nil
    end
    if not lQ.Fly then
        if q8_1 and lQ.FlyPriorPlatformStand ~= nil then
            q8_1.PlatformStand = lQ.FlyPriorPlatformStand
            lQ.FlyPriorPlatformStand = nil
        end
        return
    end
    if not (q8_1 and q9_1) then
        return
    end
    lQ.FlyPriorPlatformStand = q8_1.PlatformStand
    q8_1.PlatformStand = true
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = q9_1
    lQ.FlyBody = bodyVelocity
    lQ.FlyConn = lD.RunService.RenderStepped:Connect(function()
        local q4 = not mf() or not lQ.Fly or not bodyVelocity.Parent
        if q4 then
            return
        end
        if lD.UserInputService:GetFocusedTextBox() then
            bodyVelocity.Velocity = Vector3.zero
            return
        end
        local CurrentCamera = l0.CurrentCamera
        if not CurrentCamera then
            bodyVelocity.Velocity = Vector3.zero
            return
        end
        local q5 = Vector3.zero
        if lD.UserInputService:IsKeyDown(Enum.KeyCode.W) then
            q5 += CurrentCamera.CFrame.LookVector
        end
        if lD.UserInputService:IsKeyDown(Enum.KeyCode.S) then
            q5 -= CurrentCamera.CFrame.LookVector
        end
        if lD.UserInputService:IsKeyDown(Enum.KeyCode.A) then
            q5 -= CurrentCamera.CFrame.RightVector
        end
        if lD.UserInputService:IsKeyDown(Enum.KeyCode.D) then
            q5 += CurrentCamera.CFrame.RightVector
        end
        if lD.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            q5 += Vector3.new(0, 1, 0)
        end
        if lD.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            q5 -= Vector3.new(0, 1, 0)
        end
        if q5.Magnitude > 0 then
            bodyVelocity.Velocity = q5.Unit * lQ.FlySpeed
        else
            bodyVelocity.Velocity = Vector3.zero
        end
    end)
end
lI.SetFlySpeed = fn573
mn = fn119
lQ.CharAddedConn = mI.CharacterAdded:Connect(onCharacterAdded)
lI.Track(fn340)
lL = fn759
ms = fn469
mh = fn749
lW = fn480
mB = "#7fd47f"
mw = "#6ec1ff"
mq = "#e8a34d"
Library2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library2.Toggles, Library2.Options
mS_2(lI, Library2)
local Window = Library2:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = l2, Copyable = true }, "|", mc, "|", mV },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
lE = {}
lE.Info = Window:AddTab("Info", "info")
lE.Main = Window:AddTab("Main", "gamepad-2")
lE.Player = Window:AddTab("Player", "person-standing")
lE.Settings = Window:AddTab("Settings", "settings")
mK = fn507
local function m_()
    local fs
    local fx
    fs = "Unknown"
    pcall(function()
        local rr_1
        local rq_1
        if type(identifyexecutor) == "function" then
            rr_1, rq_1 = identifyexecutor()
            local rs = rr_1 ~= ""
            local rt = type(rr_1) == "string" and rs
            if rt then
                local rs_1 = type(rq_1) == "string" and rq_1 ~= "" and rr_1 .. " " .. rq_1
                fs = rs_1 or rr_1
            end
        end
    end)
    fx = os.clock()
    local function fy()
        local rB = math.floor(os.clock() - fx)
        if rB < 60 then
            return rB .. "s"
        elseif rB < 3600 then
            return string.format("%dm %ds", rB // 60, rB % 60)
        else
            return string.format("%dh %dm", rB // 3600, rB % 3600 // 60)
        end
    end
    local UserGroup = lE.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = mI, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(lW("User", mI.DisplayName .. " @" .. mI.Name, mB), true)
    UserGroup:AddLabel(lW("UserId", tostring(mI.UserId), mw), true)
    UserGroup:AddLabel(lW("Executor", fs, mB), true)
    UserGroup:AddDivider()
    local Label5 = UserGroup:AddLabel(lW("Session", fy(), mq), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            lL(mI.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            lL("https://www.roblox.com/users/" .. tostring(mI.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = lE.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = l2,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = lE.Info:AddRightGroupbox("Session", "signal")
    local Label4 = SessionGroup:AddLabel(lW("Game", mc, mB), true)
    local Label3 = SessionGroup:AddLabel(lW("Players", tostring(#lD.Players:GetPlayers()), mw), true)
    local Label2 = SessionGroup:AddLabel(lW("Job", string.sub(game.JobId, 1, 8) .. "...", mq), true)
    local Label = SessionGroup:AddLabel(lW("Ping", "0 ms", mB), true)
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            pcall(function()
                lD.TeleportService:Teleport(game.PlaceId, mI)
            end)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            lL(game.JobId, "Copied Job ID")
        end
    })
    local SocialsGroup = lE.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord",
        Func = function()
            lL(l2, "Copied Discord")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts",
        Func = function()
            lL(lX, "Copied Rscripts")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website",
        Func = function()
            lL(lP, "Copied Website")
        end
    })
    task.spawn(function()
        local rG = false
        repeat
            local rD
            if mf() then
                Label5:SetText(lW("Session", fy(), mq))
                Label3:SetText(lW("Players", tostring(#lD.Players:GetPlayers()), mw))
                rD = 0
                pcall(function()
                    rD = math.floor(lD.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(lW("Ping", tostring(rD) .. " ms", mB))
                Label4:SetText(lW("Game", mc, mB))
                Label2:SetText(lW("Job", string.sub(game.JobId, 1, 8) .. "...", mq))
                task.wait(1)
            else
                rG = true
            end
        until rG
    end)
end
lO = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    AfkCount = 0,
    ReconnectConns = {},
    FpsSnapshots = {},
    FpsConn = nil,
    PausedConn = nil
}
local function mQ_1()
    local function ha()
        if not l0.CurrentCamera then
            return false
        end
        local rH_1 = not mr(lD.VirtualUser.CaptureController) or not mr(lD.VirtualUser.ClickButton2)
        if rH_1 then
            return false
        end
        local rH_2 = pcall(function()
            lD.VirtualUser:CaptureController()
            lD.VirtualUser:ClickButton2(Vector2.new())
        end)
        if rH_2 then
            lO.AfkCount = lO.AfkCount + 1
        end
        return rH_2
    end
    lI.SetAntiAfk = function(hn)
        local rS = hn and true or false
        lO.AntiAfk = rS
        if lO.AfkConn then
            lO.AfkConn:Disconnect()
            lO.AfkConn = nil
        end
        if lO.AfkTask then
            pcall(task.cancel, lO.AfkTask)
            lO.AfkTask = nil
        end
        if not lO.AntiAfk then
            return
        end
        lO.AfkConn = mI.Idled:Connect(function()
            local rM = mf() and lO.AntiAfk
            if rM then
                ha()
            end
        end)
        lO.AfkTask = task.spawn(function()
            local rO = os.clock()
            while true do
                local rP = mf() and lO.AntiAfk
                if rP then
                    task.wait(1)
                    local rP_1 = not mf() or not lO.AntiAfk
                    if rP_1 then
                        break
                    end
                    if os.clock() - rO >= 60 then
                        rO = os.clock()
                        ha()
                    end
                    continue
                end
                break
            end
        end)
    end
    lI.SetNoGameplayPaused = function(hF)
        local r9
        local sb = hF and true or false
        lO.NoGameplayPaused = sb
        if lO.PausedConn then
            lO.PausedConn:Disconnect()
            lO.PausedConn = nil
        end
        if not lO.NoGameplayPaused then
            return
        end
        r9 = function()
            pcall(function()
                local RobloxGui = lD.CoreGui:FindFirstChild("RobloxGui")
                local rY = RobloxGui and RobloxGui:FindFirstChild("Notifications")
                if rY then
                    for i, descendant in ipairs(rY:GetDescendants()) do
                        local rX_2 = descendant:IsA("TextLabel") and string.find(string.lower(descendant.Text), "gameplay paused")
                        if rX_2 then
                            local Frame = descendant:FindFirstAncestorOfClass("Frame")
                            if Frame then
                                Frame.Visible = false
                            end
                        end
                    end
                end
            end)
        end
        r9()
        lO.PausedConn = lD.CoreGui.DescendantAdded:Connect(function()
            if lO.NoGameplayPaused then
                r9()
            end
        end)
    end
    lI.SetAutoReconnect = function(hU)
        local sm = hU and true or false
        lO.AutoReconnect = sm
        for i, v in ipairs(lO.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(lO.ReconnectConns)
        if not lO.AutoReconnect then
            return
        end
        table.insert(lO.ReconnectConns, lD.TeleportService.TeleportInitFailed:Connect(function()
            local sg = not mf()
            local sk = if sg then 1 else 0
            local si = 1387 * sk + 3509 * (1 - sk)
            local sj = 3083 * sk + 1205 * (1 - sk)
            if not ((si * 3042 + sj * 3382 + si * sj) % 16777213 == 2144868) then
                sg = not lO.AutoReconnect
            end
            if sg then
                return
            end
            task.wait(1)
            local sg_1 = mf() and lO.AutoReconnect
            if sg_1 then
                pcall(function()
                    lD.TeleportService:Teleport(game.PlaceId, mI)
                end)
            end
        end))
    end
    lI.SetDisable3D = function(h8)
        local sv = h8 and true or false
        lO.Disable3D = sv
        pcall(function()
            lD.RunService:Set3dRenderingEnabled(not lO.Disable3D)
        end)
    end
    lI.SetFpsBoost = function(ie)
        local sU
        local sW = ie and true or false
        lO.FpsBoost = sW
        if lO.FpsConn then
            lO.FpsConn:Disconnect()
            lO.FpsConn = nil
        end
        local function sV_1()
            for k, v in pairs(lO.FpsSnapshots) do
                local sC = k
                if sC and sC.Parent then
                    for k, v in pairs(v) do
                        local sI = k
                        local sK = v
                        pcall(function()
                            sC[sI] = sK
                        end)
                    end
                end
            end
            table.clear(lO.FpsSnapshots)
        end
        if not lO.FpsBoost then
            sV_1()
            return
        end
        sU = function(it)
            if lO.FpsSnapshots[it] then
                return
            end
            local sL = (it:IsA("ParticleEmitter"))
            local sP = if sL then 1 else 0
            local sN = 311 * sP + 1102 * (1 - sP)
            local sO = 2597 * sP + 2518 * (1 - sP)
            if not ((sN * 657 + sO * 265 + sN * sO) % 16777213 == 1700199) then
                sL = it:IsA("Trail")
            end
            if not sL then
                sL = it:IsA("Beam")
            end
            local sS = if sL then 1 else 0
            local sQ = 732 * sS + 2804 * (1 - sS)
            local sR = 1108 * sS + 3230 * (1 - sS)
            if not ((sQ * 3168 + sR * 3888 + sQ * sR) % 16777213 == 7437936) then
                sL = it:IsA("Fire")
            end
            if not sL then
                sL = it:IsA("Smoke")
            end
            if not sL then
                sL = it:IsA("Sparkles")
            end
            if sL then
                lO.FpsSnapshots[it] = { Enabled = it.Enabled }
                it.Enabled = false
            end
        end
        for i, descendant in ipairs(l0:GetDescendants()) do
            sU(descendant)
        end
        if lO.FpsSnapshots[lD.Lighting] == nil then
            lO.FpsSnapshots[lD.Lighting] = { GlobalShadows = lD.Lighting.GlobalShadows, FogEnd = lD.Lighting.FogEnd }
            lD.Lighting.GlobalShadows = false
        end
        lO.FpsConn = l0.DescendantAdded:Connect(function(iA)
            if lO.FpsBoost then
                sU(iA)
            end
        end)
    end
    lI.Track(function()
        lI.SetAntiAfk(false)
        lI.SetNoGameplayPaused(false)
        lI.SetAutoReconnect(false)
        lI.SetDisable3D(false)
        lI.SetFpsBoost(false)
    end)
end
if (not mi or ml) and (not mi or mi) and (leaderstats and not ml and (not mi and leaderstats)) and not ((not mi or ml) and (not mi or mi) and (leaderstats and not ml and (not mi and leaderstats))) then
    fn824()
    mQ_1()
    fn419()
    fn858()
    m_()
else
    m_()
    fn419()
    fn858()
    mQ_1()
    fn824()
end
