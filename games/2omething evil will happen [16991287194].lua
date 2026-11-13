local ex
local eb
local eA
local Options
local Toggles
local ek
local d1
local en
local eq
local d4
local d7
local et
local ea
local connection
local Library
local ed
local eg
local DoRagdoll
local ServerRagdoll
local Sprint
local ep
local d6
local es
local Stamina
local CollectionService
local ec
local ey
local connection2
local eB
local ei
local LocalPlayer
local RagdollClient
local eo
local Jump
local VirtualUser
local folder
local connection3
local function worker()
    while not Library.Unloaded do
        pcall(ea)
        task.wait(0.4)
    end
end
local function fn30(ba)
    local DiscordGroup = ba:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = d7 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = d7 })
end
local function onCharacterAdded(bT)
    bT:WaitForChild("Humanoid", 10)
    task.wait(1)
    if Library.Unloaded then
        return
    end
    if Toggles.NoRagdoll.Value then
        CollectionService:AddTag(bT, ex)
    end
    d4()
end
local function fn113()
    local f6_1
    local f5_1
    if identifyexecutor then
        f6_1, f5_1 = identifyexecutor()
        local f7 = f6_1 ~= ""
        local f8 = type(f6_1) == "string" and f7
        if f8 then
            local f7_1 = type(f5_1) == "string" and f5_1 ~= "" and f6_1 .. " " .. f5_1
            ed = f7_1 or f6_1
        end
    end
end
local function fn145()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    eo = tick()
end
local function onInputBegan()
    eq = tick()
end
local function onNoclip(bp)
    local gh_1
    local gg_1
    if bp then
        return
    end
    gg_1, gh_1 = ec()
    if not gh_1 then
        return
    end
    for i, descendant in ipairs(gh_1:GetDescendants()) do
        if descendant:IsA("BasePart") then
            descendant.CanCollide = true
        end
    end
end
local function fn235()
    local Character = LocalPlayer.Character
    if not Character then
        return nil, nil
    end
    return Character:FindFirstChildOfClass("Humanoid"), Character
end
local function fn256()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn271(T)
    if T then
        if es then
            return
        end
        Jump.AddJumpCallback(eA, function()
            local fe = ec()
            if not fe or fe.Health <= 0 then
                return
            end
            local fj = if fe:GetState() ~= Enum.HumanoidStateType.Freefall then 1 else 0
            if fj == 1 then
                return
            end
            fe:ChangeState(Enum.HumanoidStateType.Jumping)
            return true
        end, -10)
        es = true
        return
    end
    if not es then
        return
    end
    Jump.RemoveJumpCallback(eA)
    es = false
end
local function fn306()
    local fz = gethui and gethui()
    local fA = fz or game:GetService("CoreGui")
    folder.Parent = fA
end
local function onPlayerEsp(bw)
    if not bw then
        ea()
    end
end
local function onInputChanged(bN)
    local UserInputType = bN.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        eq = tick()
    end
end
local function fn346()
    if setclipboard then
        setclipboard(eb)
    elseif toclipboard then
        toclipboard(eb)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn364()
    for k in eB do
        ey(k)
    end
end
local function fn373(aE, aF)
    local fE = aE:FindFirstChild("Head") or aE.PrimaryPart
    if not fE then
        ey(aE)
        return
    end
    local fE_1 = eB[aE]
    if not fE_1 then
        local highlight = Instance.new("Highlight")
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillTransparency = 0.6
        highlight.Parent = folder
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Size = UDim2.fromOffset(200, 20)
        billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = folder
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 14
        textLabel.TextStrokeTransparency = 0.5
        textLabel.Parent = billboardGui
        fE_1 = { Highlight = highlight, Billboard = billboardGui, Label = textLabel }
        eB[aE] = fE_1
    end
    fE_1.Highlight.Adornee = aE
    fE_1.Highlight.FillColor = aF
    fE_1.Highlight.OutlineColor = aF
    fE_1.Billboard.Adornee = fE
    fE_1.Label.TextColor3 = aF
    fE_1.Label.Text = aE.Name
end
local function fn385()
    Sprint.DestroyFactor(d1)
    ep = false
    local e6 = not Toggles.WalkSpeedEnabled
    local fa = if e6 then 1 else 0
    local e8 = 3868 * fa + 466 * (1 - fa)
    local e9 = 347 * fa + 3707 * (1 - fa)
    if not ((e8 * 2056 + e9 * 1108 + e8 * e9) % 16777213 == 9679280) then
        e6 = not Toggles.WalkSpeedEnabled.Value
    end
    if e6 then
        return
    end
    local e6_1 = Sprint.GetBaseFactor()
    if not e6_1 then
        return
    end
    Sprint.CreateFactor(d1, { Walkspeed = Options.WalkSpeed.Value - e6_1.Factors.Walkspeed })
    ep = true
end
local function onEnemyEsp(by)
    if not by then
        ea()
    end
end
local function fn404(ac)
    local fu_1
    local ft_1
    ft_1, fu_1 = ec()
    if ac then
        if fu_1 then
            CollectionService:AddTag(fu_1, ex)
        end
        if not eg then
            RagdollClient.ServerRagdoll = function(ak, al, am)
                if am then
                    return false
                end
                return ServerRagdoll(ak, al, am)
            end
            RagdollClient.DoRagdoll = function(ap, aq, ar)
                if ar then
                    return false
                end
                return DoRagdoll(ap, aq, ar)
            end
            eg = true
        end
        return
    end
    if fu_1 then
        CollectionService:RemoveTag(fu_1, ex)
    end
    if eg then
        RagdollClient.ServerRagdoll = ServerRagdoll
        RagdollClient.DoRagdoll = DoRagdoll
        eg = false
    end
end
local function infiniteEnergyLoop()
    local gM_1
    local gL_1
    while not Library.Unloaded do
        if Toggles.InfiniteEnergy.Value then
            pcall(Stamina.DrainStamina, -1000, 0, true)
        end
        if Toggles.Noclip.Value then
            gL_1, gM_1 = ec()
            if gM_1 then
                for i, descendant in ipairs(gM_1:GetDescendants()) do
                    local gL_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if gL_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
        task.wait()
    end
end
local function fn411(aA)
    local fC = eB[aA]
    if not fC then
        return
    end
    fC.Highlight:Destroy()
    fC.Billboard:Destroy()
    eB[aA] = nil
end
local function fn446()
    connection3:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    ei(false)
    et(false)
    en()
    folder:Destroy()
    if ep then
        Sprint.DestroyFactor(d1)
        ep = false
    end
    print("Something Evil Will Happen unloaded")
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local gV = tick() - eq
            local gW = tick() - eo
            if gV >= 300 and gW >= 60 then
                pcall(d6)
            else
                if gV < 300 and gW >= 300 then
                    pcall(d6)
                end
            end
        end
    end
end
local function fn469()
    local fP = {}
    if Toggles.PlayerEsp.Value then
        for i, v in ipairs(CollectionService:GetTagged("Player")) do
            local fQ = v ~= LocalPlayer.Character and v:IsDescendantOf(workspace)
            if fQ then
                fP[v] = true
                ek(v, Options.PlayerEspColor.Value)
            end
        end
    end
    if Toggles.EnemyEsp.Value then
        for i, v in ipairs(CollectionService:GetTagged("Enemy")) do
            if v:IsDescendantOf(workspace) then
                fP[v] = true
                ek(v, Options.EnemyEspColor.Value)
            end
        end
    end
    for k in eB do
        if not fP[k] then
            ey(k)
        end
    end
end
local function onUnload()
    Library:Unload()
end
d1 = nil
RagdollClient = nil
Sprint = nil
d4 = nil
Jump = nil
d6 = nil
d7 = nil
folder = nil
Stamina = nil
ea = nil
eb = nil
ec = nil
ed = nil
Options = nil
connection2 = nil
eg = nil
Toggles = nil
ei = nil
DoRagdoll = nil
ek = nil
LocalPlayer = nil
ServerRagdoll = nil
en = nil
eo = nil
ep = nil
eq = nil
VirtualUser = nil
es = nil
et = nil
connection3 = nil
CollectionService = nil
connection = nil
ex = nil
ey = nil
Library = nil
eA = nil
eB = nil
local MenuGroup
CollectionService, VirtualUser, LocalPlayer = nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
Stamina, Jump, Sprint, RagdollClient, Library, Toggles, Options, eb, d1, eA, ex, es, ep, ServerRagdoll, DoRagdoll, eg, folder, d7, ec, d4, ei, et = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local MovementHandler = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("Client"):WaitForChild("MovementHandler")
Stamina = require(MovementHandler:WaitForChild("Stamina"))
Jump = require(MovementHandler:WaitForChild("Jump"))
Sprint = require(MovementHandler:WaitForChild("Sprint"))
RagdollClient = require(ReplicatedStorage.Resources.Client.BodyTrauma:WaitForChild("RagdollClient"))
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn256)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
eb = "https://discord.gg/ehKVq7pf7v"
d7 = fn346
d1 = "OuroborosSpeed"
eA = "OuroborosInfiniteJump"
ex = "NoRagdoll"
es = false
ep = false
ServerRagdoll = RagdollClient.ServerRagdoll
DoRagdoll = RagdollClient.DoRagdoll
eg = false
ec = fn235
d4 = fn385
ei = fn271
et = fn404
folder = Instance.new("Folder")
folder.Name = "OuroborosEsp"
pcall(fn306)
if not folder.Parent then
    folder.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
eB, ey, ek, en, ea = nil, nil, nil, nil, nil
eB = {}
ey = fn411
ek = fn373
en = fn364
ea = fn469
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | Something Evil Will Happen",
    Icon = 18657887261,
    NotifySide = "Right",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false
})
Library.ShowCustomCursor = false
local eG = {
    Info = Window:AddTab("Info", "info"),
    Character = Window:AddTab("Character", "person-standing"),
    Visuals = Window:AddTab("Visuals", "eye"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in eG do
    fn30(v)
end
ed, eq, eo, connection, connection2, connection3, d6 = nil, nil, nil, nil, nil, nil, nil
local BasicInfoGroup = eG.Info:AddLeftGroupbox("Basic Info", "circle-user")
ed = "Unknown"
pcall(fn113)
BasicInfoGroup:AddLabel("Executor: " .. ed, true)
BasicInfoGroup:AddLabel("Game: Something Evil Will Happen", true)
BasicInfoGroup:AddLabel("Player: " .. LocalPlayer.Name, true)
BasicInfoGroup:AddLabel("Status: Keyless", true)
local OuroborosHubGroup = eG.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = d7 })
local FaqGroup = eG.Info:AddRightGroupbox("FAQ", "circle-help")
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
local SurvivalGroup = eG.Character:AddLeftGroupbox("Survival", "heart-pulse")
SurvivalGroup:AddToggle("InfiniteEnergy", { Text = "Infinite Energy", Default = false })
SurvivalGroup:AddToggle("NoRagdoll", { Text = "No Ragdoll", Default = false, Callback = et })
local MovementGroup = eG.Character:AddRightGroupbox("Movement", "footprints")
MovementGroup:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false, Callback = ei })
MovementGroup:AddToggle("Noclip", { Text = "Noclip", Default = false, Callback = onNoclip })
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Walk Speed", Default = false, Callback = d4 })
MovementGroup:AddSlider("WalkSpeed", { Text = "Walk Speed Amount", Default = 18, Min = 8, Max = 150, Rounding = 0, Callback = d4 })
local EspGroup = eG.Visuals:AddLeftGroupbox("ESP", "eye")
do
    EspGroup:AddToggle("PlayerEsp", { Text = "Player ESP", Default = false, Callback = onPlayerEsp }):AddColorPicker("PlayerEspColor", { Default = Color3.fromRGB(85, 170, 255), Title = "Player Color" })
    EspGroup:AddToggle("EnemyEsp", { Text = "Enemy ESP", Default = false, Callback = onEnemyEsp }):AddColorPicker("EnemyEspColor", { Default = Color3.fromRGB(255, 60, 60), Title = "Enemy Color" })
    MenuGroup = eG.Settings:AddLeftGroupbox("Menu", "wrench")
end
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
eq = tick()
eo = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local gA = v
        pcall(function()
            gA:Disable()
        end)
    end
end)
d6 = fn145
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
connection3 = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
Library:OnUnload(fn446)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/SomethingEvilWillHappen")
SaveManager:BuildConfigSection(eG.Settings)
ThemeManager:ApplyToTab(eG.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(infiniteEnergyLoop)
task.spawn(worker)
task.spawn(antiAfkLoop)
