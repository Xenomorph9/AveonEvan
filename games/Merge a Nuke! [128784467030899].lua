local gB
local f7
local gE
local gt
local gl
local gw
local Toggles
local Library
local Workspace
local Remotes
local f5
local gg
local connection
local LocalPlayer
local gx
local gA
local gp
local RequestRebirth
local gh
local VirtualUser
local gk
local gG
local gv
local HeldNuke
local function fn23()
    if gk == "Commanders" then
        local iY = gx(f7())
        if iY then
            return iY
        end
        return f7()
    end
    return f7()
end
local function onAntiAfk(cO)
    if cO then
        if not connection then
            connection = LocalPlayer.Idled:Connect(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new())
            end)
        end
    elseif connection then
        connection:Disconnect()
        connection = nil
    end
end
local function fn116()
    if gv and gv.Parent then
        return gv
    end
    gv = nil
    local Bases = Workspace:FindFirstChild("Bases")
    if not Bases then
        return nil
    end
    for i, child in ipairs(Bases:GetChildren()) do
        local Nukes = child:FindFirstChild("Nukes")
        if Nukes then
            for i, child in ipairs(Nukes:GetChildren()) do
                if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
                    gv = Nukes
                    return Nukes
                end
            end
        end
    end
    return nil
end
local function fn157()
    local hz_1
    local hy_1
    hy_1, hz_1 = pcall(HeldNuke.GetTier)
    if hy_1 then
        return hz_1
    end
    return nil
end
local function fn188(aE, aF)
    local aG = aE.X - aF.X
    local aH = aE.Z - aF.Z
    return math.sqrt(aG * aG + aH * aH)
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        task.wait(5)
        if Toggles.AutoRebirth.Value then
            pcall(function()
                RequestRebirth:FireServer()
            end)
        end
    end
end
local function onUpgradeSelection(cv)
    local ja = {}
    if type(cv) == "table" then
        for k, v in pairs(cv) do
            local jc = v == true and k
            local jq = if jc then 1 else 0
            local jo = 1507 * jq + 2405 * (1 - jq)
            local jp = 1144 * jq + 1376 * (1 - jq)
            if not ((jo * 3669 + jp * 375 + jo * jp) % 16777213 == 7682191) then
                local jb_1 = type(v) == "string" and v
                local jd = jb_1
                local jn = if jd then 1 else 0
                local jl = 1161 * jn + 349 * (1 - jn)
                local jm = 1051 * jn + 1243 * (1 - jn)
                if not ((jl * 2530 + jm * 2092 + jl * jm) % 16777213 == 6356233) then
                    jd = nil
                end
                jc = jd
            end
            local jb_2 = jc
            if jc then
                jc = gA[jb_2]
            end
            local jb_3 = jc
            if jb_3 then
                ja[jb_3] = true
            end
        end
    end
    gg = ja
end
local function onUIScale(cI)
    if type(cI) == "number" then
        cI = gw[cI]
    end
    local jr = tonumber((tostring(cI):gsub("%%", "")))
    if jr and jr >= 25 then
        Library:SetDPIScale(jr)
    end
end
local function onOnClientEvent()
    if Library.Unloaded or not Toggles.AutoAttack.Value then
        return
    end
    pcall(function()
        Remotes.LaunchConfirm:FireServer(gt())
    end)
end
local function fn310(aw)
    local hF = {}
    for i, child in ipairs(aw:GetChildren()) do
        local hG = child:IsA("Model") or child:IsA("BasePart")
        local hH = hG and f5(child)
        if hH then
            hF[#hF + 1] = { inst = child, tier = child:GetAttribute("Tier"), pos = child:GetPivot().Position }
        end
    end
    return hF
end
local function onWalkSpeed(cn)
    gp = cn
end
local function autoAttackLoop()
    while not Library.Unloaded do
        task.wait(1)
        local j8 = Toggles.AutoAttack.Value and gh() ~= nil
        if j8 then
            pcall(function()
                Remotes.LaunchRequest:FireServer()
            end)
        end
    end
end
local function onUnload()
    Library:Unload()
end
local function fn443()
    if connection then
        connection:Disconnect()
        connection = nil
    end
    print("Merge a Nuke unloaded")
end
local function onAttackTarget(cr)
    if type(cr) == "number" then
        cr = gG[cr]
    end
    gk = cr
end
local function fn505()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChild("HumanoidRootPart")
end
local function fn542(aJ, aK, aL)
    local hT_1
    local hS_1
    hT_1, hS_1 = nil, nil
    for i, v in ipairs(aJ) do
        if v.tier == aK then
            local hU = gE(v.pos, aL)
            if not hS_1 or hU < hS_1 then
                hT_1, hS_1 = v, hU
            end
        end
    end
    return hT_1
end
local function fn582(aU, aV)
    local h2 = {}
    for i, v in ipairs(aU) do
        local tier = v.tier
        local h4 = h2[v.tier]
        local ig = if h4 then 1 else 0
        local id = 4043 * ig + 651 * (1 - ig)
        local ie = 3138 * ig + 3778 * (1 - ig)
        if not ((id * 3074 + ie * 1177 + id * ie) % 16777213 == 12031329) then
            h4 = 0
        end
        h2[tier] = h4 + 1
    end
    local h5
    for k, v in pairs(h2) do
        local h2_1 = v >= 2
        if h2_1 then
            h2_1 = not h5 or k < h5
        end
        if h2_1 then
            h5 = k
        end
    end
    if not h5 then
        return nil
    end
    return gl(aU, h5, aV)
end
local function fn609(ap)
    local attr2 = ap:GetAttribute("State")
    if attr2 ~= "floor" and attr2 ~= "based" then
        return false
    end
    local attr = ap:GetAttribute("DropTime")
    local hC_1 = attr and Workspace:GetServerTimeNow() - attr < gB
    if hC_1 then
        return false
    end
    return true
end
Toggles = nil
f5 = nil
RequestRebirth = nil
f7 = nil
connection = nil
Library = nil
gg = nil
gh = nil
LocalPlayer = nil
gk = nil
gl = nil
Workspace = nil
gp = nil
VirtualUser = nil
gt = nil
gv = nil
gw = nil
gx = nil
HeldNuke = nil
gA = nil
gB = nil
Remotes = nil
gE = nil
gG = nil
local f3, f4, PurchaseUpgrade, ga, Drop, gc, ge, Products, BigNum, UpgradeConfig, gn, DataController, gr, gu, UserInputService, gD, gF
local MenuGroup
UserInputService, VirtualUser, Workspace, LocalPlayer, Library, Toggles, Remotes, HeldNuke, DataController, UpgradeConfig, BigNum, Products, Drop, PurchaseUpgrade, RequestRebirth = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
game:GetService("RunService")
game:GetService("TweenService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
local Options = Library.Options
local NukeRemotes = ReplicatedStorage:WaitForChild("NukeRemotes")
Remotes = require(ReplicatedStorage.Packages.Remotes)
local Config = require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("NukeClientModules"):WaitForChild("Config"))
HeldNuke = require(LocalPlayer.PlayerScripts.NukeClientModules.HeldNuke)
DataController = require(ReplicatedStorage.Controllers.DataController)
UpgradeConfig = require(ReplicatedStorage.NukeShared.UpgradeConfig)
BigNum = require(ReplicatedStorage.NukeShared.BigNum)
Products = require(ReplicatedStorage.NukeShared.Products)
Drop = NukeRemotes:WaitForChild("Drop")
PurchaseUpgrade = NukeRemotes:WaitForChild("PurchaseUpgrade")
RequestRebirth = NukeRemotes:WaitForChild("RequestRebirth")
gD = Config.DROP_DEBOUNCE or 0.75
local gH_2 = Config.INDIVIDUAL_DROP_DEBOUNCE or 2.5
gB, gA, gv, gp, gk, gg, f3, gG, MenuGroup, gw, connection, ge, gF, gc, gh, f5, gn, gE, gl, gu, gr, f4, f7, gx, gt, ga = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gB = gH_2
gA = { ["Spawn Tier"] = "TIER", ["Max Spawn"] = "MAX", ["Lock Base"] = "LOCKBASE" }
gp = 22
gk = "City"
gg = {}
ge = fn505
gF = function()
    local ha
    local hb_1, hb_2
    if f3 then
        return f3
    end
    hb_1, ha = pcall(function()
        return require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule"))
    end)
    local hc = hb_1 and ha
    local hc_1
    if hc then
        hb_2, hc_1 = pcall(function()
            return ha:GetControls()
        end)
        if hb_2 then
            f3 = hc_1
        end
    end
    return f3
end
gc = fn116
gh = fn157
f5 = fn609
gn = fn310
gE = fn188
gl = fn542
gu = fn582
gr = function(a6, a7)
    local ip = os.clock()
    local iq
    local io = gF()
    if io then
        pcall(function()
            io:Disable()
        end)
    end
    while true do
        local ir = Library.Unloaded or not Toggles.AutoMerge.Value or a7()
        if ir then
            break
        elseif os.clock() - ip > 12 then
            break
        else
            local Character = LocalPlayer.Character
            local is = Character and Character:FindFirstChild("HumanoidRootPart")
            local it = Character
            if it then
                it = Character:FindFirstChildOfClass("Humanoid")
            end
            iq = it
            local ir_2 = not iq
            local is_1 = not is
            local iy = if is_1 then 1 else 0
            local iw = 1017 * iy + 2713 * (1 - iy)
            local ix = 1363 * iy + 3168 * (1 - iy)
            if not ((iw * 2282 + ix * 1047 + iw * ix) % 16777213 == 5134026) then
                is_1 = ir_2
            end
            if is_1 then
                break
            end
            if iq.WalkSpeed ~= gp then
                iq.WalkSpeed = gp
            end
            local ir_3 = Vector3.new(a6.X - is.Position.X, 0, a6.Z - is.Position.Z)
            if ir_3.Magnitude <= 3 then
                break
            end
            iq:Move(ir_3.Unit, false)
            task.wait(0.08)
        end
    end
    if iq then
        iq:Move(Vector3.zero, false)
    end
    if io then
        pcall(function()
            io:Enable()
        end)
    end
end
f4 = function()
    local iC
    local iF_1
    local iE_1
    local iD = ge()
    iE_1, iF_1 = pcall(HeldNuke.GetCFrame)
    local iE_2 = iE_1 and iF_1
    if not iE_2 then
        iE_2 = iD and iD.CFrame
    end
    if not iE_2 then
        iE_2 = CFrame.new()
    end
    iC = iE_2
    pcall(function()
        Drop:FireServer(iC)
    end)
end
f7 = function()
    local iK_1
    local iJ_1
    local CityModel = Workspace:FindFirstChild("CityModel")
    if CityModel then
        iJ_1, iK_1 = pcall(function()
            return CityModel:GetPivot().Position
        end)
        if iJ_1 then
            return iK_1
        end
        return Vector3.new(415, 11, 131)
    end
    return Vector3.new(415, 11, 131)
end
gx = function(bH)
    local iP_1
    local iN_1
    local iM_1
    iN_1, iM_1 = nil, nil
    for i, child in ipairs(Workspace:GetChildren()) do
        local iX = child
        local iO = iX:IsA("Model") and string.find(iX.Name, "Commander")
        local iO_1
        if iO then
            iO_1, iP_1 = pcall(function()
                return iX:GetPivot().Position
            end)
            if iO_1 then
                local Magnitude = (iP_1 - bH).Magnitude
                if not iM_1 or Magnitude < iM_1 then
                    iN_1, iM_1 = iP_1, Magnitude
                end
            end
        end
    end
    return iN_1
end
gt = fn23
ga = function(bZ)
    local i_, i0
    local i1 = DataController:Get()
    local i1_4
    local i2 = i1 and i1.Data
    local i2_3
    i_ = i2
    if not i_ then
        return nil
    end
    i0 = ({ MAX = i_.maxLevel, LOCKBASE = i_.lockBaseLevel, TIER = i_.tierLevel })[bZ] or 1
    local i1_2 = i_.rebirthLevel or 0
    local i1_3 = UpgradeConfig.IsMaxed(bZ, i0)
    if bZ == "LOCKBASE" then
        i1_3 = UpgradeConfig.GetMaxLevel("LOCKBASE", i1_2) <= i0
    end
    local i3 = bZ == "TIER"
    local i4 = not i1_3
    if i4 ~= false then
        i4 = i3
    end
    if i4 then
        local i3_1 = UpgradeConfig.GetValue("TIER", i0 + 1)
        local i4_1 = Products.MergeCapForRebirth(i1_2)
        if i3_1 and i4_1 < i3_1 then
            i1_3 = true
        end
    end
    if i1_3 then
        return { maxed = true }
    end
    i1_4, i2_3 = pcall(function()
        return BigNum.gte(BigNum.deserialize(i_.cash), BigNum.deserialize(BigNum.serialize(UpgradeConfig.GetCost(bZ, i0))))
    end)
    return { maxed = false, affordable = i1_4 and i2_3 }
end
local Window = Library:CreateWindow({
    Title = "Merge a Nuke",
    Footer = "Ouroboros Hub",
    Icon = 18657887261,
    NotifySide = "Right",
    Size = UDim2.fromOffset(920, 680)
})
local gL = { Main = Window:AddTab("Main", "atom"), Settings = Window:AddTab("Settings", "settings") }
local AutoMergeGroup = gL.Main:AddLeftGroupbox("Auto Merge", "combine")
AutoMergeGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
AutoMergeGroup:AddSlider("WalkSpeed", {
    Text = "Walk Speed",
    Default = 22,
    Min = 16,
    Max = 32,
    Rounding = 0,
    Suffix = " sps",
    Callback = onWalkSpeed
})
local AttackGroup = gL.Main:AddLeftGroupbox("Attack", "crosshair")
AttackGroup:AddToggle("AutoAttack", { Text = "Auto Attack", Default = false })
gG = { "City", "Commanders" }
AttackGroup:AddDropdown("AttackTarget", { Text = "Target", Values = gG, Default = 1, Multi = false, Callback = onAttackTarget })
local UpgradesGroup = gL.Main:AddRightGroupbox("Upgrades", "trending-up")
UpgradesGroup:AddToggle("AutoUpgrades", { Text = "Auto Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeSelection", {
    Text = "Upgrades",
    Values = { "Spawn Tier", "Max Spawn", "Lock Base" },
    Default = {},
    Multi = true,
    Callback = onUpgradeSelection
})
local RebirthGroup = gL.Main:AddRightGroupbox("Rebirth", "refresh-cw")
if ((AutoMergeGroup or MenuGroup) and (not f3 and f3) or (f3 or not MenuGroup or not AutoMergeGroup and MenuGroup)) and not ((AutoMergeGroup or MenuGroup) and (not f3 and f3) or (f3 or not MenuGroup or not AutoMergeGroup and MenuGroup)) then
    MenuGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    gL = RebirthGroup.Settings:AddLeftGroupbox("Menu", "wrench")
else
    RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    MenuGroup = gL.Settings:AddLeftGroupbox("Menu", "wrench")
end
MenuGroup:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
gw = { "50%", "75%", "90%", "100%", "110%", "125%", "150%" }
MenuGroup:AddDropdown("UIScale", { Text = "UI Scale", Values = gw, Default = 4, Multi = false, Callback = onUIScale })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true, Callback = onAntiAfk })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
local function gN_1()
    local Position
    local textButton
    local screenGui
    local Position2
    local jK
    local jG
    jG = nil
    screenGui = nil
    Position = nil
    Position2 = nil
    jK = nil
    textButton = nil
    local jM = gethui and gethui()
    local jN = jM
    local jR = if jN then 1 else 0
    local jP = 2223 * jR + 2124 * (1 - jR)
    local jQ = 1783 * jR + 1013 * (1 - jR)
    if not ((jP * 215 + jQ * 363 + jP * jQ) % 16777213 == 5088783) then
        jN = LocalPlayer:FindFirstChildOfClass("PlayerGui")
    end
    local jM_1 = jN
    if not jM_1 then
        return
    end
    screenGui = Instance.new("ScreenGui")
    screenGui.Name = "MergeANukeMinimize"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 999
    screenGui.Parent = jM_1
    textButton = Instance.new("TextButton")
    textButton.Size = UDim2.fromOffset(72, 72)
    textButton.Position = UDim2.fromOffset(20, 140)
    textButton.BackgroundColor3 = Color3.fromRGB(24, 24, 30)
    textButton.Text = "N"
    textButton.TextColor3 = Color3.fromRGB(120, 235, 170)
    textButton.TextScaled = true
    textButton.Font = Enum.Font.GothamBold
    textButton.AutoButtonColor = true
    textButton.Parent = screenGui
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(0, 14)
    uICorner.Parent = textButton
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Color = Color3.fromRGB(120, 235, 170)
    uIStroke.Thickness = 1
    uIStroke.Transparency = 0.4
    uIStroke.Parent = textButton
    local uIPadding = Instance.new("UIPadding")
    uIPadding.PaddingTop = UDim.new(0, 12)
    uIPadding.PaddingBottom = UDim.new(0, 12)
    uIPadding.PaddingLeft = UDim.new(0, 12)
    uIPadding.PaddingRight = UDim.new(0, 12)
    uIPadding.Parent = textButton
    jK, Position2, Position, jG = false, nil, nil, false
    textButton.InputBegan:Connect(function(c7)
        if c7.UserInputType == Enum.UserInputType.MouseButton1 or c7.UserInputType == Enum.UserInputType.Touch then
            jK, jG = true, false
            Position2 = c7.Position
            Position = textButton.Position
        end
    end)
    UserInputService.InputChanged:Connect(function(df)
        if jK and (df.UserInputType == Enum.UserInputType.MouseMovement or df.UserInputType == Enum.UserInputType.Touch) then
            local jx_1 = df.Position - Position2
            if jx_1.Magnitude > 4 then
                jG = true
            end
            textButton.Position = UDim2.new(Position.X.Scale, Position.X.Offset + jx_1.X, Position.Y.Scale, Position.Y.Offset + jx_1.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(dq)
        if dq.UserInputType == Enum.UserInputType.MouseButton1 or dq.UserInputType == Enum.UserInputType.Touch then
            jK = false
        end
    end)
    textButton.MouseButton1Click:Connect(function()
        if jG then
            return
        end
        Library:Toggle(not Library.Toggled)
    end)
    Library:OnUnload(function()
        screenGui:Destroy()
    end)
end
gN_1()
Library:OnUnload(fn443)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/MergeANuke")
SaveManager:BuildConfigSection(gL.Settings)
ThemeManager:ApplyToTab(gL.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
Remotes.LaunchAllowed.OnClientEvent:Connect(onOnClientEvent)
task.spawn(function()
    local j7 = false
    repeat
        if not Library.Unloaded then
            task.wait(0.05)
            if not Toggles.AutoMerge.Value then
                task.wait(0.2)
            else
                local j1 = ge()
                local j2 = gc()
                if not j1 or not j2 then
                    task.wait(0.3)
                else
                    local j_ = gh()
                    if Toggles.AutoAttack.Value and j_ then
                        task.wait(0.15)
                    else
                        local j3_2 = gn(j2)
                        if j_ then
                            local j0 = gl(j3_2, j_, j1.Position)
                            if j0 then
                                gr(j0.pos, function()
                                    local jX = gh() ~= j_ or j0.inst.Parent == nil
                                    return jX
                                end)
                            else
                                f4()
                                task.wait(gD + 0.1)
                            end
                        else
                            local jZ = gu(j3_2, j1.Position)
                            if jZ then
                                gr(jZ.pos, function()
                                    local jV = gh() ~= nil or jZ.inst.Parent == nil
                                    return jV
                                end)
                            else
                                task.wait(0.3)
                            end
                        end
                    end
                end
            end
        else
            j7 = true
        end
    until j7
end)
task.spawn(autoAttackLoop)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoUpgrades.Value then
            for k in pairs(gg) do
                local kj = k
                local kd = ga(kj)
                if kd and not kd.maxed and kd.affordable then
                    pcall(function()
                        PurchaseUpgrade:FireServer(kj)
                    end)
                end
            end
        end
    end
end)
task.spawn(autoRebirthLoop)
