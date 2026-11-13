local Library
local imageButton
local onIdled
local hR
local hy
local VirtualUser
local Options
local hX
local TweenService
local screenGui2
local hH_1
local h2
local h5
local hK
local h8
local hN
local hu
local hQ
local hx
local hT
local frame5
local hW
local hD
local hZ
local hG
local imageLabel2
local hJ
local ReplicatedStorage
local Position
local uIStroke2
local LocalPlayer
local HelperModule
local Position2
local Window
local hz
local textLabel3
local hY
local hC
local h0
local hI
local h3
local function onAutoOpenChests(c5)
    hW = c5
end
local function worker()
    while true do
        local kc = hW and LocalPlayer:GetAttribute("holdingChest")
        if kc then
            local kc_1 = hy()
            if kc_1 == true then
                pcall(function()
                    ReplicatedStorage.RemoteEvents.UnlockChest:FireServer()
                end)
                task.wait(0.6)
            elseif kc_1 == false and hR then
                pcall(function()
                    ReplicatedStorage.RemoteEvents.DiscardChest:FireServer()
                end)
                task.wait(0.3)
            else
                task.wait(0.4)
            end
        else
            task.wait(0.4)
        end
    end
end
local function onAutoUpgrade(c3)
    hY = c3
end
local function onInputChanged(ed)
    if hX and (ed.UserInputType == Enum.UserInputType.MouseMovement or ed.UserInputType == Enum.UserInputType.Touch) then
        local k3_1 = ed.Position - Position2
        if k3_1.Magnitude > 4 then
            hI = true
        end
        imageButton.Position = UDim2.new(Position.X.Scale, Position.X.Offset + k3_1.X, Position.Y.Scale, Position.Y.Offset + k3_1.Y)
    end
end
local function onAutoPickup(cW)
    hu = cW
end
local function fn122(aF)
    aF:AddButton({
        Text = "Join Discord for Dupes/Keyless Scripts",
        Func = function()
            if setclipboard then
                setclipboard(hK)
            end
            h3("Ouroboros Discord copied to clipboard!")
        end
    })
end
local function onRenderStepped()
    local lr = hD()
    if lr and Library.Toggled and lr.Visible then
        frame5.Visible = true
        frame5.Position = UDim2.fromOffset(lr.AbsolutePosition.X + lr.AbsoluteSize.X + 15, lr.AbsolutePosition.Y)
    else
        frame5.Visible = false
    end
end
local function onAutoCollect(c_)
    h2 = c_
end
local function onMouseButton1Click()
    if hI then
        return
    end
    pcall(function()
        Window:Toggle()
    end)
end
local function worker2()
    while true do
        if hu then
            pcall(hN)
        end
        task.wait(0.05)
    end
end
local function onAutoDismissChest(c7)
    hR = c7
end
local function onInputBegan(d6)
    if d6.UserInputType == Enum.UserInputType.MouseButton1 or d6.UserInputType == Enum.UserInputType.Touch then
        hX, hI = true, false
        Position2 = d6.Position
        Position = imageButton.Position
    end
end
local function onAutoMerge(c1)
    h0 = c1
end
local function worker4()
    while true do
        if h2 then
            local kj = h5()
            if kj then
                local Sell = kj:FindFirstChild("Sell")
                local kl = Sell and Sell:FindFirstChild("CollectButton")
                local kk_1 = kl
                if kl then
                    kl = kk_1:FindFirstChild("Button")
                end
                local kk_2 = kl
                if kk_2 then
                    hC(kk_2)
                end
                local OfflineIncome = kj:FindFirstChild("OfflineIncome")
                local kj_1 = OfflineIncome and OfflineIncome:FindFirstChild("Part1")
                if kj_1 then
                    hC(kj_1)
                end
            end
        end
        task.wait(0.3)
    end
end
local function fn381()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChild("HumanoidRootPart")
end
local function onMouseButton1Click2()
    task.spawn(function()
        TweenService:Create(imageLabel2, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(34, 34), Position = UDim2.new(0, 18, 0, 18) }):Play()
        task.wait(0.1)
        TweenService:Create(imageLabel2, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(40, 40), Position = UDim2.new(0, 15, 0, 15) }):Play()
    end)
    pcall(function()
        setclipboard(hK)
    end)
    h3("Marketplace Discord copied to clipboard!")
end
local function fn408()
    local ScreenGui = Library.ScreenGui
    local lm = not ScreenGui
    local lq = if lm then 1 else 0
    local lo = 3398 * lq + 678 * (1 - lq)
    local lp = 184 * lq + 766 * (1 - lq)
    if not ((lo * 241 + lp * 2853 + lo * lp) % 16777213 == 1969102) then
        lm = not ScreenGui.Parent
    end
    if lm then
        return nil
    end
    local Main = ScreenGui:FindFirstChild("Main")
    local ll_1 = Main and Main:IsA("GuiObject")
    if ll_1 then
        return Main
    end
    return nil
end
local function onMouseEnter()
    TweenService:Create(frame5, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(30, 30, 35) }):Play()
    TweenService:Create(uIStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 100, 115) }):Play()
    TweenService:Create(textLabel3, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(230, 230, 230) }):Play()
end
local function fn450()
    local jB_1
    local jA_1
    local jx = hQ()
    if not jx then
        return
    end
    local jx_1 = h5()
    if not jx_1 then
        return
    end
    local jy = OverlapParams.new()
    jy.CollisionGroup = "Loot"
    local jz = OverlapParams.new()
    jz.CollisionGroup = "Chests"
    jA_1, jB_1 = jx_1:GetBoundingBox()
    local jx_2 = {}
    for i, v in ipairs(workspace:GetPartBoundsInBox(jA_1, jB_1, jy)) do
        jx_2[v] = true
    end
    for i, v in ipairs(workspace:GetPartBoundsInBox(jA_1, jB_1, jz)) do
        jx_2[v] = true
    end
    local jy_1 = nil
    local jz_1 = {}
    for k in pairs(jx_2) do
        local attr2 = k:GetAttribute("LootTier")
        if attr2 then
            table.insert(jz_1, attr2)
            local jx_4 = k.Parent:IsA("Model") and k.Parent
            local jA_2 = jx_4 or k
            jA_2:Destroy()
        elseif not hT then
            local attr = k:GetAttribute("ChestTier")
            if attr and not jy_1 then
                local jA_4 = false
                local Character = LocalPlayer.Character
                if Character then
                    for i, child in ipairs(Character:GetChildren()) do
                        if child:IsA("Tool") then
                            jA_4 = true
                            break
                        end
                    end
                end
                if not jA_4 then
                    jy_1 = "Chest" .. attr
                    local jx_7 = k.Parent:IsA("Model") and k.Parent
                    local jA_5 = jx_7 or k
                    jA_5:Destroy()
                end
            end
        end
    end
    if #jz_1 > 0 then
        ReplicatedStorage.RemoteEvents.LootPickup:FireServer(jz_1)
    end
    if jy_1 then
        ReplicatedStorage.RemoteEvents.ChestPickup:FireServer(jy_1)
        hT = true
        task.delay(0.9, function()
            hT = false
        end)
    end
end
local function worker7()
    while true do
        if hY then
            local kB = h5()
            if kB then
                local Sell = kB:FindFirstChild("Sell")
                local kB_1 = Sell and Sell:FindFirstChild("UpgradeButton")
                local kC_1 = kB_1
                if kB_1 then
                    kB_1 = kC_1:FindFirstChild("Button")
                end
                local kC_2 = kB_1
                if kC_2 then
                    hC(kC_2)
                end
            end
        end
        task.wait(0.4)
    end
end
local function onAutoDeposit(cY)
    h8 = cY
end
local function fn482()
    local ChestGui = LocalPlayer.PlayerGui:FindFirstChild("ChestGui")
    local j7 = ChestGui and ChestGui:FindFirstChild("ChestInfo")
    local j6_1 = j7
    if j7 then
        j7 = j6_1:FindFirstChild("UnlockMenu")
    end
    local j6_2 = j7
    if j7 then
        j7 = j6_2:FindFirstChild("UnlockButton")
    end
    local j6_3 = j7
    if j7 then
        j7 = j6_3:FindFirstChild("ForceOpenFrame")
    end
    local j6_4 = j7
    if not j6_4 then
        return nil
    end
    return not j6_4.Visible
end
local function worker6()
    while true do
        local kq = h5()
        if kq then
            local Buttons = kq:FindFirstChild("Buttons")
            if Buttons then
                for k, v in pairs(hZ) do
                    if v then
                        local kq_1 = Buttons:FindFirstChild("ButtonBuy" .. k)
                        local ks = kq_1 and kq_1:FindFirstChild("Button")
                        if ks then
                            hC(ks)
                        end
                    end
                end
            end
        end
        task.wait(0.4)
    end
end
local function fn507()
    Library:SetWatermarkVisibility(false)
end
local function worker5()
    while true do
        if h0 then
            local kn = h5()
            if kn then
                local Buttons = kn:FindFirstChild("Buttons")
                local kn_1 = Buttons and Buttons:FindFirstChild("ButtonMerge")
                local ko_1 = kn_1
                if kn_1 then
                    kn_1 = ko_1:FindFirstChild("Button")
                end
                local ko_2 = kn_1
                if ko_2 then
                    hC(ko_2)
                end
            end
        end
        task.wait(0.4)
    end
end
local function fn536()
    local jq_1
    local jp_1
    jp_1, jq_1 = pcall(HelperModule.findPlayersPlot, LocalPlayer)
    if jp_1 then
        return jq_1
    end
    return nil
end
local function fn545(ag)
    local jf_1, jf_2
    local je_1
    for i, v in ipairs(ag) do
        je_1, jf_1 = pcall(game.HttpGet, game, v)
        local jg = je_1 and type(jf_1) == "string" and #jf_1 > 200
        local jg_1
        if jg then
            local je_2 = loadstring(jf_1)
            if je_2 then
                jf_2, jg_1 = pcall(je_2)
                local je_3 = jf_2 and type(jg_1) == "table"
                if je_3 then
                    return jg_1
                end
            end
        end
    end
    return nil
end
local function onMouseLeave()
    TweenService:Create(frame5, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(25, 25, 30) }):Play()
    TweenService:Create(uIStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(80, 80, 95) }):Play()
    TweenService:Create(textLabel3, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(190, 190, 190) }):Play()
end
local function fn629()
    return { 1, 5, 25, 100 }
end
local function onInputEnded(en)
    if en.UserInputType == Enum.UserInputType.MouseButton1 or en.UserInputType == Enum.UserInputType.Touch then
        hX = false
    end
end
local function worker3()
    while true do
        if h8 then
            local kg = h5()
            if kg then
                local Sell = kg:FindFirstChild("Sell")
                local kg_1 = Sell and Sell:FindFirstChild("DepositButton")
                local kh_1 = kg_1
                if kg_1 then
                    kg_1 = kh_1:FindFirstChild("Button")
                end
                local kh_2 = kg_1
                if kh_2 then
                    hC(kh_2)
                end
            end
        end
        task.wait(0.25)
    end
end
HelperModule = nil
hu = nil
onIdled = nil
Window = nil
hx = nil
hy = nil
hz = nil
frame5 = nil
Options = nil
hC = nil
hD = nil
screenGui2 = nil
local hF
hG = nil
hI = nil
hJ = nil
hK = nil
Position = nil
hN = nil
Library = nil
LocalPlayer = nil
hQ = nil
hR = nil
Position2 = nil
hT = nil
VirtualUser = nil
textLabel3 = nil
hW = nil
hX = nil
hY = nil
hZ = nil
TweenService = nil
h0 = nil
imageLabel2 = nil
h2 = nil
h3 = nil
ReplicatedStorage = nil
h5 = nil
uIStroke2 = nil
h8 = nil
imageButton = nil
local hs, h6
local ic_1
local io_1
local ip_1
local il_1
local ij_1
ReplicatedStorage, TweenService, VirtualUser, LocalPlayer, hK, hG, Library = nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
VirtualUser = game:GetService("VirtualUser")
LocalPlayer = Players.LocalPlayer
hK = "https://discord.gg/ehKVq7pf7v"
hG = "rbxassetid://91400086538074"
local id = 91400086538074
local function ib()
    local iN
    local iP
    local frame3
    local iQ
    local iO
    local textButton
    iN = nil
    iO = nil
    iP = nil
    iQ = nil
    textButton = nil
    frame3 = nil
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "OuroborosLoader"
    screenGui.ResetOnSpawn = false
    screenGui.IgnoreGuiInset = true
    screenGui.DisplayOrder = 2147483647
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    local iU = gethui and gethui()
    local iV = iU
    local i1 = if iV then 1 else 0
    local i_ = 1789 * i1 + 2946 * (1 - i1)
    local i0 = 3676 * i1 + 774 * (1 - i1)
    if not ((i_ * 75 + i0 * 2405 + i_ * i0) % 16777213 == 15551319) then
        iV = game:GetService("CoreGui")
    end
    screenGui.Parent = iV
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
    iP = function(t)
        local uIStroke = Instance.new("UIStroke")
        uIStroke.Color = Color3.fromRGB(0, 0, 0)
        uIStroke.Thickness = 2
        uIStroke.Transparency = 0.1
        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        uIStroke.Parent = t
        return uIStroke
    end
    local function iV_3(w, x, y, z, A)
        local textLabel = Instance.new("TextLabel")
        textLabel.BackgroundTransparency = 1
        textLabel.Size = UDim2.fromOffset(460, x + 6)
        textLabel.Font = y
        textLabel.Text = w
        textLabel.TextSize = x
        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        textLabel.TextTransparency = z
        textLabel.LayoutOrder = A
        iP(textLabel)
        textLabel.Parent = frame3
        return textLabel
    end
    iN = hK
    iV_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
    textButton = Instance.new("TextButton")
    textButton.BackgroundTransparency = 1
    textButton.AutoButtonColor = false
    textButton.Size = UDim2.fromOffset(460, 24)
    textButton.Font = Enum.Font.GothamSemibold
    textButton.RichText = true
    textButton.Text = "<u>" .. iN .. "</u>  (click to copy)"
    textButton.TextSize = 16
    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
    textButton.LayoutOrder = 2
    iP(textButton)
    textButton.Parent = frame3
    textButton.MouseEnter:Connect(function()
        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
    end)
    textButton.MouseLeave:Connect(function()
        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
    end)
    textButton.Activated:Connect(function()
        if setclipboard then
            setclipboard(iN)
        end
        textButton.Text = "<u>" .. iN .. "</u>  (copied!)"
        task.delay(1.5, function()
            textButton.Text = "<u>" .. iN .. "</u>  (click to copy)"
        end)
    end)
    local iW = iV_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
    iW.TextWrapped = true
    iW.Size = UDim2.fromOffset(420, 34)
    iQ = iV_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
    iQ.Size = UDim2.fromOffset(460, 18)
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
    iO = true
    task.spawn(function()
        local iL = 0
        while iO do
            iL = iL % 3 + 1
            iQ.Text = "Ouroboros Bypassing" .. string.rep(".", iL)
            task.wait(0.35)
        end
    end)
    TweenService:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }):Play()
    local iX_1 = { 0.35, 0.55, 0.72, 0.9, 1 }
    for i, v in ipairs(iX_1) do
        TweenService:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }):Play()
        task.wait(0.55)
    end
    iO = false
    task.wait(0.25)
    local iX_2 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
    for i, descendant in ipairs(frame3:GetDescendants()) do
        local iY = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
        if iY then
            TweenService:Create(descendant, iX_2, { TextTransparency = 1 }):Play()
        elseif descendant:IsA("UIStroke") then
            TweenService:Create(descendant, iX_2, { Transparency = 1 }):Play()
        end
    end
    TweenService:Create(frame2, iX_2, { BackgroundTransparency = 1 }):Play()
    TweenService:Create(frame, iX_2, { BackgroundTransparency = 1 }):Play()
    TweenService:Create(blurEffect, iX_2, { Size = 0 }):Play()
    task.wait(0.45)
    blurEffect:Destroy()
    screenGui:Destroy()
end
ib()
local ie = fn545
local ig = "https://raw.githubusercontent.com/uhfork/Obsidian/main/"
if (LocalPlayer or not Players or not Players and Players) and (Players or LocalPlayer or LocalPlayer and not Players) and (not LocalPlayer and LocalPlayer and (not Players and Players) or (not Players or not LocalPlayer or (Players or not LocalPlayer))) and not ((LocalPlayer or not Players or not Players and Players) and (Players or LocalPlayer or LocalPlayer and not Players) and (not LocalPlayer and LocalPlayer and (not Players and Players) or (not Players or not LocalPlayer or (Players or not LocalPlayer)))) then
    ig = Library({ ie .. "Library.lua" })
else
    Library = ie({ "https://raw.githubusercontent.com/uhfork/Obsidian/main/Library.lua" })
end
if not Library then
    return
end
io_1, hF, Options, Window, ip_1, HelperModule, hZ, hT, hu, h8, h2, h0, hY, hW, hR, ic_1, hs, h6, il_1, h3, h5, hQ, hC, hN, hH_1, ij_1, hy = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not il_1 and HelperModule and (HelperModule and HelperModule) or (not il_1 or ic_1 or ic_1 and not HelperModule)) and not (not il_1 and HelperModule and (HelperModule and HelperModule) or (not il_1 or ic_1 or ic_1 and not HelperModule)) then
    ie = ig({ io_1 .. "addons/ThemeManager.lua" })
else
    io_1 = ie({ ig .. "addons/ThemeManager.lua" })
end
hF = ie({ ig .. "addons/SaveManager.lua" })
Options = Library.Options
if not hN or hT or (ip_1 or ip_1) or (ic_1 or ip_1) and (not hN and not ip_1) or ((not ip_1 or not hN) and (hT and hN) or hF and not ic_1 and (hN and ip_1)) or (ip_1 or hF) and (not hT and not ip_1) and (ip_1 and ip_1 and (ip_1 and not ip_1)) and (hT and ip_1 and (hN or hT) or not hT and not ip_1 and (not ic_1 and not hN)) or not (not hN or hT or (ip_1 or ip_1) or (ic_1 or ip_1) and (not hN and not ip_1) or ((not ip_1 or not hN) and (hT and hN) or hF and not ic_1 and (hN and ip_1)) or (ip_1 or hF) and (not hT and not ip_1) and (ip_1 and ip_1 and (ip_1 and not ip_1)) and (hT and ip_1 and (hN or hT) or not hT and not ip_1 and (not ic_1 and not hN))) then
    Window = Library:CreateWindow({
        Title = "Pickaxe Tycoon",
        Footer = "Ouroboros Hub",
        Icon = id,
        NotifySide = "Right",
        ShowCustomCursor = false,
        Center = true,
        AutoShow = true,
        Resizable = true,
        Size = UDim2.fromOffset(660, 640)
    })
else
    Window:CreateWindow({
        Title = "Pickaxe Tycoon",
        ShowCustomCursor = false,
        AutoShow = true,
        Center = true,
        Size = UDim2.fromOffset(660, 640),
        NotifySide = "Right",
        Resizable = true,
        Icon = Library,
        Footer = "Ouroboros Hub"
    })
end
pcall(fn507)
local ip_2 = { Main = Window:AddTab("Automation", "pickaxe"), Settings = Window:AddTab("Settings", "settings") }
h3 = function(aA)
    pcall(function()
        Library:Notify({ Title = "Ouroboros Hub", Description = aA, Time = 4 })
    end)
end
HelperModule = require(ReplicatedStorage:WaitForChild("HelperModule"))
h5 = fn536
hQ = fn381
hC = function(aU)
    local ju
    ju = nil
    ju = hQ()
    local jv = not ju or not aU or not aU:IsDescendantOf(workspace)
    if jv then
        return
    end
    pcall(function()
        firetouchinterest(ju, aU, 0)
        firetouchinterest(ju, aU, 1)
    end)
end
hZ = {}
hT = false
hN = fn450
if ((not hH_1 and hH_1 or (hy or hH_1) or hH_1 and not hH_1 and (hy and hy)) and (not hy and hy and (not hy or hy) or hy and hH_1 and (hy and hH_1)) or (not hH_1 and hy or (hH_1 or not hy)) and (hy and hy or (not hy or hy)) and ((not hy or hy or (not hH_1 or not hy)) and (hy or hy or hH_1 and not hH_1))) and not ((not hH_1 and hH_1 or (hy or hH_1) or hH_1 and not hH_1 and (hy and hy)) and (not hy and hy and (not hy or hy) or hy and hH_1 and (hy and hH_1)) or (not hH_1 and hy or (hH_1 or not hy)) and (hy and hy or (not hy or hy)) and ((not hy or hy or (not hH_1 or not hy)) and (hy or hy or hH_1 and not hH_1))) then
    h0 = false
    hu = false
    h8 = false
    h2 = false
else
    hu = false
    h8 = false
    h2 = false
    h0 = false
end
if (hR or not ij_1) and (hR and not hZ) and (hR and not hR or not ij_1 and hs) and not ((hR or not ij_1) and (hR and not hZ) and (hR and not hR or not ij_1 and hs)) then
    hy = false
else
    hY = false
end
hW = false
hR = false
hy = fn482
task.spawn(worker)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
local AutomationGroup = ip_2.Main:AddLeftGroupbox("Automation", "zap")
fn122(AutomationGroup)
AutomationGroup:AddToggle("AutoPickup", { Text = "Auto Pickup Loot", Default = false, Callback = onAutoPickup })
AutomationGroup:AddToggle("AutoDeposit", { Text = "Auto Deposit", Default = false, Callback = onAutoDeposit })
AutomationGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false, Callback = onAutoCollect })
AutomationGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false, Callback = onAutoMerge })
AutomationGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false, Callback = onAutoUpgrade })
AutomationGroup:AddToggle("AutoOpenChests", { Text = "Auto Open Chests", Default = false, Callback = onAutoOpenChests })
AutomationGroup:AddToggle("AutoDismissChest", { Text = "Auto Dismiss Unaffordable Chest", Default = false, Callback = onAutoDismissChest })
hs = { "PurchasePromptApp", "RobloxPromptGui" }
h6 = {}
AutomationGroup:AddToggle("DisableRobloxPrompts", {
    Text = "Disable Roblox Prompt UI",
    Default = false,
    Callback = function(db)
        local CoreGui = game:GetService("CoreGui")
        if db then
            for i, v in ipairs(hs) do
                local kF = CoreGui:FindFirstChild(v)
                if kF then
                    kF.Enabled = false
                    if not h6[v] then
                        h6[v] = kF:GetPropertyChangedSignal("Enabled"):Connect(function()
                            if kF.Enabled then
                                kF.Enabled = false
                            end
                        end)
                    end
                end
            end
        else
            for k, v in pairs(h6) do
                v:Disconnect()
                h6[k] = nil
            end
            for i, v in ipairs(hs) do
                local kH = CoreGui:FindFirstChild(v)
                if kH then
                    kH.Enabled = true
                end
            end
        end
    end
})
local AutoBuyGroup = ip_2.Main:AddRightGroupbox("Auto Buy", "shopping-cart")
for i, v in ipairs(fn629()) do
    local iA = v
    AutoBuyGroup:AddToggle("AutoBuy" .. iA, {
        Text = "Auto Buy " .. iA,
        Default = false,
        Callback = function(ds)
            hZ[iA] = ds
        end
    })
end
local MenuGroup = ip_2.Settings:AddLeftGroupbox("Menu", "wrench")
fn122(MenuGroup)
hz = false
hx = nil
onIdled = function()
    pcall(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
end
task.spawn(function()
    while true do
        if hz then
            onIdled()
        end
        task.wait(60)
    end
end)
MenuGroup:AddToggle("AntiAfk", {
    Text = "Anti-AFK",
    Default = true,
    Callback = function(dD)
        hz = dD
        if dD then
            if not hx then
                hx = LocalPlayer.Idled:Connect(onIdled)
            end
        elseif hx then
            hx:Disconnect()
            hx = nil
        end
    end
})
hz = true
hx = LocalPlayer.Idled:Connect(onIdled)
MenuGroup:AddDivider()
MenuGroup:AddToggle("KeybindMenuOpen", {
    Text = "Open Keybind Menu",
    Default = false,
    Callback = function(dI)
        if Library.KeybindFrame then
            Library.KeybindFrame.Visible = dI
        end
    end
})
MenuGroup:AddToggle("ShowCustomCursor", {
    Text = "Custom Cursor",
    Default = false,
    Callback = function(dK)
        Library.ShowCustomCursor = dK
    end
})
MenuGroup:AddDropdown("NotificationSide", {
    Values = { "Left", "Right" },
    Default = "Right",
    Text = "Notification Side",
    Callback = function(dM)
        Library:SetNotifySide(dM)
    end
})
MenuGroup:AddDropdown("DPIScale", {
    Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
    Default = "100%",
    Text = "UI Scale",
    Callback = function(dO)
        dO = dO:gsub("%%", "")
        Library:SetDPIScale(tonumber(dO))
    end
})
MenuGroup:AddSlider("UICornerSlider", {
    Text = "Corner Radius",
    Default = Library.CornerRadius,
    Min = 0,
    Max = 20,
    Rounding = 0,
    Callback = function(dQ)
        Window:SetCornerRadius(dQ)
    end
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddButton({
    Text = "Unload",
    Func = function()
        Library:Unload()
    end
})
pcall(function()
    Library.ToggleKeybind = Options.MenuKeybind
end)
if io_1 then
    io_1:SetLibrary(Library)
end
if hF then
    local ia_2 = 2
    repeat
        local mh = bit32.rrotate(bit32.bxor(bit32.lrotate(ia_2, 22), string.byte(tostring(ia_2))), 26)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(mh, 4273989277), 1578449942), (bit32.bxor(bit32.band(mh, 20978018), 2638981373))), 1578449942), 2638981373) == mh then
            hF:SetLibrary(Library)
            hF:IgnoreThemeSettings()
            hF:SetIgnoreIndexes({ "MenuKeybind" })
            hF:SetFolder("OuroborosHub/PickaxeTycoon")
        else
            Library:SetLibrary(hF)
            Library:IgnoreThemeSettings()
            Library:SetIgnoreIndexes({ "MenuKeybind" })
            Library:SetFolder("OuroborosHub/PickaxeTycoon")
        end
        ia_2 = (ia_2 + 5) % 8
    until (ia_2 * 3 + 2) % 8 == 7
end
if io_1 then
    io_1:SetFolder("OuroborosHub")
end
if hF then
    hF:BuildConfigSection(ip_2.Settings)
end
if io_1 then
    io_1:AddThemeOptions(ip_2.Settings)
end
if hF then
    pcall(function()
        hF:LoadAutoloadConfig()
    end)
end
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OuroborosToggle"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local ia_3 = gethui and gethui()
local ic_3 = ia_3 or game:GetService("CoreGui")
imageButton, hX, Position2, Position, hI = nil, nil, nil, nil, nil
screenGui.Parent = ic_3
imageButton = Instance.new("ImageButton")
imageButton.Size = UDim2.fromOffset(52, 52)
imageButton.Position = UDim2.fromScale(0.5, 0.04)
imageButton.AnchorPoint = Vector2.new(0.5, 0)
imageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
imageButton.BackgroundTransparency = 0.1
imageButton.Image = hG
imageButton.ScaleType = Enum.ScaleType.Fit
imageButton.AutoButtonColor = true
imageButton.Parent = screenGui
local uICorner = Instance.new("UICorner")
uICorner.CornerRadius = UDim.new(0, 12)
uICorner.Parent = imageButton
local uIStroke = Instance.new("UIStroke")
uIStroke.Color = Color3.fromRGB(80, 80, 95)
uIStroke.Thickness = 1
uIStroke.Transparency = 0.3
uIStroke.Parent = imageButton
local uIPadding = Instance.new("UIPadding")
uIPadding.PaddingTop = UDim.new(0, 6)
uIPadding.PaddingBottom = UDim.new(0, 6)
uIPadding.PaddingLeft = UDim.new(0, 6)
uIPadding.PaddingRight = UDim.new(0, 6)
uIPadding.Parent = imageButton
hX, Position2, Position, hI = false, nil, nil, false
imageButton.InputBegan:Connect(onInputBegan)
UserInputService.InputChanged:Connect(onInputChanged)
UserInputService.InputEnded:Connect(onInputEnded)
imageButton.MouseButton1Click:Connect(onMouseButton1Click)
local ij_2 = UserInputService.TouchEnabled and not UserInputService.MouseEnabled
hJ, screenGui2 = nil, nil
hJ = ij_2
screenGui2 = Instance.new("ScreenGui")
if (screenGui2 or false or (screenGui2 or not hJ)) and (screenGui2 or not hJ and false) or not ((screenGui2 or false or (screenGui2 or not hJ)) and (screenGui2 or not hJ and false)) then
    screenGui2.Name = "OuroborosPromo"
    screenGui2.ResetOnSpawn = false
    screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
else
    screenGui2.Name = "OuroborosPromo"
    screenGui2.ResetOnSpawn = false
    screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
end
local ia_5 = gethui and gethui()
local ib_2 = ia_5 or game:GetService("CoreGui")
screenGui2.Parent = ib_2
local function ia_6(ez, eA)
    local textButton = Instance.new("TextButton")
    local ld = hJ and UDim2.fromOffset(150, 40)
    local le = ld or UDim2.fromOffset(240, 60)
    textButton.Size = le
    textButton.Position = ez
    textButton.AnchorPoint = eA
    textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    textButton.BackgroundTransparency = 0
    textButton.Text = ""
    textButton.AutoButtonColor = true
    textButton.Parent = screenGui2
    local uICorner = Instance.new("UICorner")
    uICorner.CornerRadius = UDim.new(0, 8)
    uICorner.Parent = textButton
    local uIStroke = Instance.new("UIStroke")
    uIStroke.Color = Color3.fromRGB(80, 80, 95)
    uIStroke.Thickness = 1
    uIStroke.Transparency = 0.3
    uIStroke.Parent = textButton
    local le_1 = hJ and 24
    local lk = if le_1 then 1 else 0
    local li = 416 * lk + 1084 * (1 - lk)
    local lj = 2612 * lk + 1094 * (1 - lk)
    if not ((li * 1370 + lj * 368 + li * lj) % 16777213 == 2617728) then
        le_1 = 36
    end
    local ld_4 = le_1
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.fromOffset(ld_4, ld_4)
    local new = UDim2.new
    local lg = hJ and 8 or 12
    imageLabel.Position = new(0, lg, 0.5, 0)
    imageLabel.AnchorPoint = Vector2.new(0, 0.5)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = hG
    imageLabel.ScaleType = Enum.ScaleType.Fit
    imageLabel.Parent = textButton
    local le_3 = hJ and 40
    local lk_1 = if le_3 then 1 else 0
    local li_1 = 3717 * lk_1 + 1176 * (1 - lk_1)
    local lj_1 = 221 * lk_1 + 2264 * (1 - lk_1)
    if not ((li_1 * 2744 + lj_1 * 2329 + li_1 * lj_1) % 16777213 == 11535614) then
        le_3 = 60
    end
    local ld_7 = le_3
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -ld_7, 1, 0)
    textLabel.Position = UDim2.new(0, ld_7, 0, 0)
    textLabel.BackgroundTransparency = 1
    local lf_1 = hJ and "Join Ouroboros\n[Copy Discord]" or "Join Ouroboros\nFree Keyless & Dupe Scripts\n[Click to Copy Discord]"
    textLabel.Text = lf_1
    textLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    local lf_2 = hJ and 10 or 12
    textLabel.TextSize = lf_2
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = textButton
    textButton.MouseButton1Click:Connect(function()
        pcall(function()
            setclipboard(hK)
        end)
        h3("Ouroboros Discord copied to clipboard!")
    end)
end
if hJ then
    local ib_3 = 2
    repeat
        if ib_3 * 59228055 + 4 + 3 >= ib_3 * 59228055 + 4 + 3 + 2 then
            ia_6(UDim2.new(0, 12, 0.55, 0), Vector2.new(0, 0.5))
        else
            ia_6(UDim2.new(0, 12, 0.55, 0), Vector2.new(0, 0.5))
        end
        ib_3 = (ib_3 + 2) % 4
    until (ib_3 * 3 + 3) % 4 == 3
else
    local ic_4 = 3
    repeat
        if (ic_4 * 3 + 7) * 9 % 4 == ((ic_4 * 3 + 7) * 9 + 12) % 4 then
            ia_6(UDim2.new(0, 18, 0.86, 0), Vector2.new(0, 0.5))
            ia_6(UDim2.new(1, -18, 0.86, 0), Vector2.new(1, 0.5))
        else
            ia_6(UDim2.new(0, 18, 0.86, 0), Vector2.new(0, 0.5))
            ia_6(UDim2.new(1, -18, 0.86, 0), Vector2.new(1, 0.5))
        end
        ic_4 = (ic_4 + 0) % 8
    until (ic_4 * 5 + 0) % 8 == 7
end
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "OuroborosMarketplace"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
local ia_7 = gethui and gethui()
local ib_4 = ia_7 or game:GetService("CoreGui")
frame5 = nil
screenGui.Parent = ib_4
frame5 = Instance.new("Frame")
local ia_8 = hJ
if ia_8 then
    local ib_5 = 1
    repeat
        local ic_5 = {
            "uegn",
            "ipoahhbe",
            "ddq",
            "las",
            "mpxqkfhbq",
            "oqochzrtk",
            "xwbynongi",
            "bjfwrpdows",
            "vzblohogl",
            "rvpisozrw",
            "qnir",
            "ybc",
            "murkqeson",
            "sflzohxpkok",
            "rrfylzp"
        }
        if ic_5[(ib_5 * 16 + 60) % 15 + 1] < ic_5[(ib_5 * 16 + 60) % 15 + 1] then
            ia_8 = UDim2.fromOffset(170, 100)
        else
            ia_8 = UDim2.fromOffset(170, 100)
        end
        ib_5 = (ib_5 + 6) % 8
    until (ib_5 * 3 + 2) % 8 == 7
end
local ic_6 = ia_8
if not ic_6 then
    local ia_9 = 1
    repeat
        local ib_6 = {
            "xrdekjwd",
            "jhtvretyrp",
            "xncwsojuonhp",
            "udpcj",
            "ehfipu",
            "kbjxturfy",
            "xvvpm",
            "pitl",
            "arna",
            "wom",
            "gsrtuawam",
            "jwgwhlcn",
            "ximtup",
            "yzmy",
            "hxl",
            "xrctmbnmd"
        }
        if ib_6[(ia_9 * 74 + 109) % 16 + 1] <= ib_6[(ia_9 * 74 + 109) % 16 + 1] then
            ic_6 = UDim2.fromOffset(240, 140)
        else
            ic_6 = UDim2.fromOffset(240, 140)
        end
        ia_9 = (ia_9 + 0) % 8
    until (ia_9 * 3 + 4) % 8 == 7
end
uIStroke2, imageLabel2, textLabel3, hD = nil, nil, nil, nil
frame5.Size = ic_6
frame5.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
frame5.BackgroundTransparency = 0
frame5.Visible = false
frame5.Parent = screenGui
local uICorner = Instance.new("UICorner")
uICorner.CornerRadius = UDim.new(0, 8)
uICorner.Parent = frame5
uIStroke2 = Instance.new("UIStroke")
uIStroke2.Color = Color3.fromRGB(80, 80, 95)
uIStroke2.Thickness = 1
uIStroke2.Transparency = 0.3
uIStroke2.Parent = frame5
imageLabel2 = Instance.new("ImageLabel")
imageLabel2.Size = UDim2.fromOffset(40, 40)
imageLabel2.Position = UDim2.new(0, 15, 0, 15)
imageLabel2.BackgroundTransparency = 1
imageLabel2.Image = hG
imageLabel2.ScaleType = Enum.ScaleType.Fit
imageLabel2.Parent = frame5
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, -70, 0, 20)
textLabel.Position = UDim2.new(0, 65, 0, 15)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Ouroboros Market"
textLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
textLabel.TextSize = 14
textLabel.Font = Enum.Font.GothamBold
textLabel.TextXAlignment = Enum.TextXAlignment.Left
textLabel.Parent = frame5
local textLabel2 = Instance.new("TextLabel")
textLabel2.Size = UDim2.new(1, -70, 0, 15)
textLabel2.Position = UDim2.new(0, 65, 0, 35)
textLabel2.BackgroundTransparency = 1
textLabel2.Text = "Trade. Sell. Profit."
textLabel2.TextColor3 = Color3.fromRGB(150, 150, 150)
textLabel2.TextSize = 11
textLabel2.Font = Enum.Font.GothamMedium
textLabel2.TextXAlignment = Enum.TextXAlignment.Left
textLabel2.Parent = frame5
textLabel3 = Instance.new("TextLabel")
textLabel3.Size = UDim2.new(1, -30, 0, 60)
textLabel3.Position = UDim2.new(0, 15, 0, 65)
textLabel3.BackgroundTransparency = 1
textLabel3.Text = "Got spare items piling up? Turn your grind into actual profit.\n\nClick to join the biggest trading community around!"
textLabel3.TextColor3 = Color3.fromRGB(190, 190, 190)
textLabel3.TextSize = 11
textLabel3.Font = Enum.Font.Gotham
textLabel3.TextXAlignment = Enum.TextXAlignment.Left
textLabel3.TextYAlignment = Enum.TextYAlignment.Top
textLabel3.TextWrapped = true
textLabel3.Parent = frame5
local textButton = Instance.new("TextButton")
textButton.Size = UDim2.new(1, 0, 1, 0)
textButton.BackgroundTransparency = 1
textButton.Text = ""
textButton.Parent = frame5
textButton.MouseEnter:Connect(onMouseEnter)
textButton.MouseLeave:Connect(onMouseLeave)
textButton.MouseButton1Click:Connect(onMouseButton1Click2)
hD = fn408
if (not textLabel or textLabel or textLabel and textLabel) and (textLabel or textLabel or not textButton and not textButton) or not ((not textLabel or textLabel or textLabel and textLabel) and (textLabel or textLabel or not textButton and not textButton)) then
    RunService.RenderStepped:Connect(onRenderStepped)
else
    RunService.RenderStepped:Connect(onRenderStepped)
end
