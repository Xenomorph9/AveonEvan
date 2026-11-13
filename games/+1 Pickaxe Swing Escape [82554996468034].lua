local gt
local gP
local ga
local connection2
local gd
local gz
local gg
local gj
local gF
local gm
local CollectionService
local Options
local PickaxeShop
local ConfirmAura
local gc
local SpinAura
local AuraConfig
local gE
local Config
local gK
local gr
local connection
local Toggles
local Rebirth
local VirtualUser
local gD
local TrailConfig
local gG
local Library
local gn
local gq
local function fn27()
    local i_ = {}
    for k, v in AuraConfig.Auras do
        table.insert(i_, v.Name)
    end
    return i_
end
local function fn53()
    if setclipboard then
        setclipboard(ga)
    elseif toclipboard then
        toclipboard(ga)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn92()
    local iC = gq()
    local iD = gr()
    local Pickaxes = workspace:WaitForChild("Pickaxes")
    for k, v in Config.Pickaxes do
        local iF = not iC[v.name]
        if iF ~= false then
            iF = Pickaxes:FindFirstChild(v.name)
        end
        if iF then
            if v.prev == nil or iC[v.prev] then
                if (v.cost or 0) <= iD then
                    return v
                end
            end
        end
    end
    return nil
end
local function onInputChanged(cg)
    local UserInputType = cg.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        gG = tick()
    end
end
local function worker2()
    while not Library.Unloaded do
        if gz("AutoRebirth") then
            local j5 = gt:GetAttribute("Rebirths") or 0
            if j5 < Config.MaxRebirths then
                local j5_1 = Config.GetRebirthRequirement(j5)
                local j6_1 = j5_1
                if j6_1 then
                    local j7 = gt:GetAttribute("Level") or 0
                    j6_1 = j7 >= j5_1
                end
                if j6_1 then
                    pcall(function()
                        return Rebirth:InvokeServer()
                    end)
                end
            end
        end
        task.wait(gg("RebirthDelay", 2))
    end
end
local function fn152(aD)
    local hY = aD == 1 and "SpawnLocation" or "MagmaPart"
    local hX_1 = workspace:FindFirstChild(hY) or workspace.SpawnLocation
    return hX_1
end
local function fn158()
    Library.ScreenGui.Parent = gt:WaitForChild("PlayerGui")
end
local function worker()
    while not Library.Unloaded do
        task.wait(2)
        if gz("AntiAfk") then
            local jA = tick() - gG
            local jB = tick() - gD
            if jA >= 300 and jB >= 60 then
                pcall(gn)
            else
                if jA < 300 and jB >= 300 then
                    pcall(gn)
                end
            end
        end
    end
end
local function fn170(aj)
    local hF_1
    local hE_1
    if gP[aj] == nil then
        hE_1, hF_1 = pcall(gF.UserOwnsGamePassAsync, gF, gt.UserId, aj)
        local hH = hE_1 and hF_1 == true
        gP[aj] = hH
    end
    return gP[aj]
end
local function fn180()
    local i7
    for k, v in TrailConfig.Trails do
        if gc[v.name] then
            if not i7 or v.multiplier > i7.multiplier then
                i7 = v
            end
        end
    end
    return i7
end
local function fn229(S)
    local hq = Toggles[S]
    return hq ~= nil and hq.Value == true
end
local function fn248()
    local iu = {}
    local gmatch = string.gmatch
    local iw = gt:GetAttribute("OwnedPickaxes") or ""
    for k in gmatch(iw, "[^,]+") do
        iu[k] = true
    end
    local iv_1 = gt:GetAttribute("PickaxeName") or "Wood_Pickaxe"
    iu[iv_1] = true
    iu.Wood_Pickaxe = true
    return iu
end
local function onOnClientEvent(O)
    local ho = type(O) == "table" and type(O.Owned) == "table"
    if ho then
        gc = O.Owned
    end
end
local function fn276()
    local jh_1
    local jg_1
    if identifyexecutor then
        jh_1, jg_1 = identifyexecutor()
        local ji = jh_1 ~= ""
        local jj = type(jh_1) == "string" and ji
        if jj then
            local ji_1 = type(jg_1) == "string" and jg_1 ~= "" and jh_1 .. " " .. jg_1
            local jg_2 = ji_1
            local jn = if jg_2 then 1 else 0
            local jl = 4060 * jn + 3728 * (1 - jn)
            local jm = 2332 * jn + 3693 * (1 - jn)
            if not ((jl * 2904 + jm * 1167 + jl * jm) % 16777213 == 7202391) then
                jg_2 = jh_1
            end
            gK = jg_2
        end
    end
end
local function fn297()
    local ih_1
    local ig_1
    local ie_1
    local ib = gt:GetAttribute("Rebirths") or 0
    local ib_1 = gE()
    ih_1, ie_1, ig_1 = nil, nil, nil
    for k, v in CollectionService:GetTagged("Dummy") do
        local ii = v:IsA("BasePart") and v:IsDescendantOf(workspace)
        if ii then
            local ii_1 = v:GetAttribute("Rebirth") or 0
            local attr = v:GetAttribute("Product")
            local ik = v:GetAttribute("Power") or 1
            local ik_1 = ib >= ii_1
            if ik_1 then
                local ij_1 = not attr or gj(attr)
                ik_1 = ij_1
            end
            if ik_1 then
                local ij_2 = ib_1 and (ib_1.Position - v.Position).Magnitude or 0
                local ii_4 = not ih_1
                if not ii_4 then
                    ii_4 = ik > ie_1
                end
                if not ii_4 then
                    ii_4 = ik == ie_1 and ij_2 < ig_1
                end
                if ii_4 then
                    ih_1, ie_1, ig_1 = v, ik, ij_2
                end
            end
        end
    end
    return ih_1
end
local function fn307(X, Y)
    local hw = Options[X]
    local hx = hw and tonumber(hw.Value)
    return hx or Y
end
local function fn312()
    local hC = gt:GetAttribute("Wins") or 0
    return hC
end
local function onUnload()
    Library:Unload()
end
local function fn332()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gD = tick()
end
local function onInputBegan()
    gG = tick()
end
local function fn352(bN)
    local DiscordGroup = bN:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gm })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gm })
end
local function fn363()
    local iQ = gr()
    local iR
    for k, v in TrailConfig.Trails do
        if not gc[v.name] and v.winsRequired <= iQ then
            if not iR or v.winsRequired < iR.winsRequired then
                iR = v
            end
        end
    end
    return iR
end
local function worker3()
    while not Library.Unloaded do
        if gz("AutoPickaxe") then
            local j9 = gd()
            local ka = j9
            if ka then
                local kb = gr()
                local kc = j9.cost or 0
                ka = kb - kc >= gg("PickaxeReserve", 0)
            end
            if ka then
                PickaxeShop:FireServer(j9.name)
            end
        end
        task.wait(gg("PickaxeDelay", 2))
    end
end
local function fn407()
    local hM = gt:GetAttribute("CurrentWorld") or 1
    local hO = hM == 1 and "Map" or "Map" .. hM
    local hM_2 = workspace:FindFirstChild(hO)
    local hO_1 = hM_2 and hM_2:FindFirstChild("Stages")
    if not hO_1 then
        return nil, hM, 0
    end
    local hO_2 = {}
    for i, child in hO_1:GetChildren() do
        local hM_4 = tonumber(child.Name:match("^Stage(%d+)$"))
        local hP = hM_4 and child:IsA("BasePart")
        if hP then
            hO_2[hM_4] = child
        end
    end
    local hM_5 = 0
    while hO_2[hM_5 + 1] do
        hM_5 = hM_5 + 1
    end
    return hO_2, hM, hM_5
end
local function fn415()
    local Character = gt.Character
    local hA = Character and Character:FindFirstChild("HumanoidRootPart")
    return hA
end
local function targetAurasLoop()
    while not Library.Unloaded do
        if gz("AutoRollAura") then
            local j0 = Options.TargetAuras and Options.TargetAuras.Value
            local j1 = {}
            local j1_1
            local j2 = j0 or j1
            local j2_1
            if next(j2) then
                j1_1, j2_1 = pcall(function()
                    return SpinAura:InvokeServer(false)
                end)
                local j3 = j1_1 and type(j2_1) == "table" and j2_1.success and j2_1.aura
                if j3 then
                    if j2[j2_1.aura.Name] then
                        ConfirmAura:FireServer()
                        Toggles.AutoRollAura:SetValue(false)
                        Library:Notify("Rolled " .. j2_1.aura.Tier .. " | " .. j2_1.aura.Name)
                    end
                end
            end
        end
        task.wait(gg("AuraDelay", 0.5))
    end
end
local function fn431()
    connection:Disconnect()
    connection2:Disconnect()
    print("+1 Pickaxe Swing Escape unloaded")
end
local function fn522(aG, aH)
    local h1_1
    local h_ = workspace:WaitForChild("Worlds"):FindFirstChild("World" .. aG)
    local h0 = h_ and h_:FindFirstChild("DefaultWinPads")
    local h0_1
    if not h0 then
        return nil
    end
    h1_1, h0_1 = nil, nil
    for i, child in h0:GetChildren() do
        local h__2 = child:FindFirstChild("HitBox")
        local h2 = h__2 and h__2:IsA("BasePart")
        if h2 then
            local h2_1 = math.abs(h__2.Position.X - aH.Position.X)
            if not h0_1 or h2_1 < h0_1 then
                h1_1, h0_1 = h__2, h2_1
            end
        end
    end
    return h1_1
end
ga = nil
Rebirth = nil
gc = nil
gd = nil
AuraConfig = nil
gg = nil
gj = nil
TrailConfig = nil
gm = nil
gn = nil
Config = nil
Options = nil
gq = nil
gr = nil
gt = nil
Toggles = nil
ConfirmAura = nil
connection2 = nil
VirtualUser = nil
SpinAura = nil
gz = nil
gD = nil
gE = nil
gF = nil
gG = nil
CollectionService = nil
Library = nil
gK = nil
connection = nil
PickaxeShop = nil
gP = nil
local f9, DamageBlock, gh, WinTouched, gl, gs, gA, gB, gC, EquipTrail, BuyTrail, gM
local gV_1
local gS_1, gS_2
local AutoBuyTrailGroup
local OuroborosHubGroup
local gY_1
local Remotes
local ha_1
local g3_1
CollectionService, gF, gS_1, gA, VirtualUser, gt = nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local gT = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
if not gS_1 and 9 and (not gS_1 and false) or (not gS_1 or not gS_1) or not (not gS_1 and 9 and (not gS_1 and false) or (not gS_1 or not gS_1)) then
    gF = game:GetService("MarketplaceService")
    gS_2 = game:GetService("UserInputService")
    gA = game:GetService("RunService")
    VirtualUser = game:GetService("VirtualUser")
    gt = Players.LocalPlayer
else
    gS_2 = game:GetService("MarketplaceService")
    gt = game:GetService("UserInputService")
    gF = game:GetService("RunService")
    gA = game:GetService("VirtualUser")
end
if getgenv then
    getgenv().gethui = function()
        return gt:WaitForChild("PlayerGui")
    end
end
Remotes, WinTouched, DamageBlock, Rebirth, PickaxeShop, BuyTrail, EquipTrail, SpinAura, ConfirmAura, Config, TrailConfig, AuraConfig, ga, Library, Toggles, Options, gc, gP, gM, g3_1, gK, OuroborosHubGroup, gV_1, AutoBuyTrailGroup, ha_1, gG, gD, connection, connection2, gm, gz, gg, gE, gr, gj, gC, gB, gs, gl, gq, gd, gh, f9, gY_1, gn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not gq and not ha_1 and (not gq or false) or (false or g3_1 or (ha_1 or not gq)) or not (not gq and not ha_1 and (not gq or false) or (false or g3_1 or (ha_1 or not gq))) then
    Remotes = gT:WaitForChild("Remotes")
else
    gT = Remotes:WaitForChild("Remotes")
end
WinTouched = Remotes:WaitForChild("WinTouched")
DamageBlock = Remotes:WaitForChild("DamageBlock")
Rebirth = Remotes:WaitForChild("Rebirth")
PickaxeShop = Remotes:WaitForChild("PickaxeShop")
BuyTrail = Remotes:WaitForChild("BuyTrail")
EquipTrail = Remotes:WaitForChild("EquipTrail")
local SyncTrails = Remotes:WaitForChild("SyncTrails")
local RequestSync = Remotes:WaitForChild("RequestSync")
SpinAura = Remotes:WaitForChild("SpinAura")
ConfirmAura = Remotes:WaitForChild("ConfirmAura")
local Modules = gT:WaitForChild("Modules")
Config = require(Modules:WaitForChild("Config"))
TrailConfig = require(Modules:WaitForChild("TrailConfig"))
AuraConfig = require(Modules:WaitForChild("AuraConfig"))
ga = "https://discord.gg/ehKVq7pf7v"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fn158)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
gm = fn53
gc = {}
gP = {}
gM = false
SyncTrails.OnClientEvent:Connect(onOnClientEvent)
RequestSync:FireServer()
gz = fn229
gg = fn307
gE = fn415
gr = fn312
gj = fn170
gC = fn407
gB = fn152
gs = fn522
gl = fn297
gq = fn248
gd = fn92
gh = fn363
f9 = fn180
local Window = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = "https://discord.gg/ehKVq7pf7v | +1 Pickaxe Swing Escape",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local g_ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "pickaxe"),
    Shop = Window:AddTab("Shop", "shopping-bag"),
    Settings = Window:AddTab("Settings", "settings")
}
if (not gz and gh and (gV_1 or DamageBlock) or (Config and DamageBlock or (gV_1 or not Config)) or (not gz or not Config or DamageBlock and gz) and (DamageBlock and not gV_1 or gV_1 and not DamageBlock)) and not (not gz and gh and (gV_1 or DamageBlock) or (Config and DamageBlock or (gV_1 or not Config)) or (not gz or not Config or DamageBlock and gz) and (DamageBlock and not gV_1 or gV_1 and not DamageBlock)) then
    gr = fn352
else
    gY_1 = fn352
end
gY_1(g_.Info)
gY_1(g_.Main)
gY_1(g_.Shop)
gY_1(g_.Settings)
local BasicInfoGroup = g_.Info:AddLeftGroupbox("Basic Info", "circle-user")
gK = "Unknown"
if (not gm and not Toggles and (not SaveManager or SaveManager) or not SaveManager and Toggles and (not SaveManager or not Toggles)) and (Toggles and SaveManager or (not SaveManager or SaveManager) or (not SaveManager and Toggles or SaveManager and not gm)) and not ((not gm and not Toggles and (not SaveManager or SaveManager) or not SaveManager and Toggles and (not SaveManager or not Toggles)) and (Toggles and SaveManager or (not SaveManager or SaveManager) or (not SaveManager and Toggles or SaveManager and not gm))) then
    pcall(fn276)
    g_:AddLabel("Executor: " .. OuroborosHubGroup, true)
    g_:AddLabel("Game: " .. BasicInfoGroup, true)
    g_:AddLabel("Player: " .. gK.Name, true)
    g_:AddLabel("Status: Keyless", true)
    gt = (nil):AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    pcall(fn276)
    BasicInfoGroup:AddLabel("Executor: " .. gK, true)
    BasicInfoGroup:AddLabel("Game: +1 Pickaxe Swing Escape", true)
    BasicInfoGroup:AddLabel("Player: " .. gt.Name, true)
    BasicInfoGroup:AddLabel("Status: Keyless", true)
    OuroborosHubGroup = g_.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gm })
local FaqGroup = g_.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoFarmWinsGroup = g_.Main:AddLeftGroupbox("Auto Farm Wins", "trophy")
AutoFarmWinsGroup:AddToggle("AutoWins", { Text = "Auto Farm Wins", Default = false })
AutoFarmWinsGroup:AddSlider("MaxStage", { Text = "Stop At Stage", Default = 12, Min = 1, Max = 12, Rounding = 0 })
local AutoRollAuraGroup = g_.Main:AddLeftGroupbox("Auto Roll Aura", "sparkles")
AutoRollAuraGroup:AddToggle("AutoRollAura", { Text = "Auto Roll Until Aura", Default = false })
AutoRollAuraGroup:AddDropdown("TargetAuras", { Text = "Target Auras", Values = fn27(), Default = { "Void", "Ethereal" }, Multi = true })
AutoRollAuraGroup:AddSlider("AuraDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2 })
local AutoTrainGroup = g_.Main:AddRightGroupbox("Auto Train", "dumbbell")
AutoTrainGroup:AddToggle("AutoTrain", { Text = "Auto Train Best Trainer", Default = false })
AutoTrainGroup:AddSlider("TrainDelay", { Text = "Loop Delay", Default = 0.1, Min = 0.05, Max = 3, Rounding = 2 })
local AutoRebirthGroup = g_.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
AutoRebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutoRebirthGroup:AddSlider("RebirthDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
local AutoBuyPickaxeGroup = g_.Shop:AddLeftGroupbox("Auto Buy Pickaxe", "pickaxe")
if (((not SpinAura or not SpinAura) and (not gE or SpinAura) or (not gE or SpinAura) and (SpinAura and not gE)) and ((not SpinAura or gE or not SpinAura and gE) and (not SpinAura or not SpinAura or not gE and gE)) or (not SpinAura and gE and (gE or gE) or (not gE or SpinAura) and (not gE and not SpinAura) or (SpinAura and not gE and (SpinAura or not SpinAura) or not gE and not SpinAura and (not gE or not SpinAura)))) and not (((not SpinAura or not SpinAura) and (not gE or SpinAura) or (not gE or SpinAura) and (SpinAura and not gE)) and ((not SpinAura or gE or not SpinAura and gE) and (not SpinAura or not SpinAura or not gE and gE)) or (not SpinAura and gE and (gE or gE) or (not gE or SpinAura) and (not gE and not SpinAura) or (SpinAura and not gE and (SpinAura or not SpinAura) or not gE and not SpinAura and (not gE or not SpinAura)))) then
    AutoBuyTrailGroup:AddToggle("AutoPickaxe", { Text = "Auto Buy Next Pickaxe", Default = false })
    AutoBuyTrailGroup:AddInput("PickaxeReserve", { Finished = true, Default = "0", Text = "Keep Wins Reserve", Numeric = true })
    AutoBuyTrailGroup:AddSlider("PickaxeDelay", { Text = "Loop Delay", Rounding = 1, Min = 0.5, Default = 2, Max = 30 })
    g_ = AutoBuyPickaxeGroup.Shop:AddRightGroupbox("Auto Buy Trail", "wind")
else
    AutoBuyPickaxeGroup:AddToggle("AutoPickaxe", { Text = "Auto Buy Next Pickaxe", Default = false })
    AutoBuyPickaxeGroup:AddInput("PickaxeReserve", { Text = "Keep Wins Reserve", Default = "0", Numeric = true, Finished = true })
    AutoBuyPickaxeGroup:AddSlider("PickaxeDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
    AutoBuyTrailGroup = g_.Shop:AddRightGroupbox("Auto Buy Trail", "wind")
end
AutoBuyTrailGroup:AddToggle("AutoTrail", { Text = "Auto Buy Next Trail", Default = false })
AutoBuyTrailGroup:AddToggle("AutoEquipTrail", { Text = "Auto Equip Best Trail", Default = true })
AutoBuyTrailGroup:AddInput("TrailReserve", { Text = "Keep Wins Reserve", Default = "0", Numeric = true, Finished = true })
AutoBuyTrailGroup:AddSlider("TrailDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
local MenuGroup = g_.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
gG = tick()
gD = tick()
pcall(function()
    for i, v in ipairs(getconnections(gt.Idled)) do
        local ju = v
        pcall(function()
            ju:Disable()
        end)
    end
end)
gn = fn332
connection = gS_2.InputBegan:Connect(onInputBegan)
connection2 = gS_2.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
Library.ToggleKeybind = Options.MenuKeybind
Library:OnUnload(fn431)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/Plus1PickaxeSwingEscape")
SaveManager:BuildConfigSection(g_.Settings)
ThemeManager:ApplyToTab(g_.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
task.spawn(worker)
task.spawn(function()
    local jH_1
    local jG_1
    local jF_1
    while not Library.Unloaded do
        if gz("AutoWins") then
            jH_1, jG_1, jF_1 = gC()
            local jI = math.min(jF_1, math.floor(gg("MaxStage", 12)))
            if jH_1 and jI >= 1 then
                gM = true
                local jF_4 = jI > 1 and { jI, jI - 1 } or { jI, 0 }
                for k, v in jF_4 do
                    local jF_5 = Library.Unloaded or not gz("AutoWins")
                    if jF_5 then
                        break
                    end
                    local jF_6 = gE()
                    if not jF_6 then
                        break
                    end
                    local jI_1 = jH_1[v]
                    local jJ_1 = jI_1 or gB(jG_1)
                    jF_6.CFrame = jJ_1.CFrame + Vector3.new(0, 5, 0)
                    gA.Heartbeat:Wait()
                    local jF_7 = jI_1
                    if jF_7 then
                        local jJ_2 = gt:GetAttribute("CurrentStage") or 0
                        jF_7 = jJ_2 >= v
                    end
                    if jF_7 then
                        local jE = gs(jG_1, jI_1)
                        if jE then
                            pcall(function()
                                return WinTouched:InvokeServer(jE)
                            end)
                        end
                    end
                end
                gM = false
            end
        end
        gA.Heartbeat:Wait()
    end
end)
task.spawn(function()
    local j_ = false
    repeat
        if not Library.Unloaded then
            local jW = not gM
            local jX = gz("AutoTrain") and jW
            if jX then
                local jV = gl()
                local jW_1 = gE()
                if jV and jW_1 then
                    if (jW_1.Position - jV.Position).Magnitude > 8 then
                        jW_1.CFrame = jV.CFrame * CFrame.new(0, 0, 6)
                        task.wait(0.3)
                    end
                    pcall(function()
                        return DamageBlock:InvokeServer(jV)
                    end)
                end
            end
            task.wait(gg("TrainDelay", 0.1))
        else
            j_ = true
        end
    until j_
end)
task.spawn(targetAurasLoop)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(function()
    local kg_1
    local kf_2
    local kl = false
    repeat
        if not Library.Unloaded then
            if gz("AutoTrail") then
                local ke = gh()
                local kf_1 = ke and gr() - ke.winsRequired >= gg("TrailReserve", 0)
                if kf_1 then
                    kf_2, kg_1 = pcall(function()
                        return BuyTrail:InvokeServer(ke.name)
                    end)
                    if kf_2 and kg_1 == true then
                        gc[ke.name] = true
                    end
                end
            end
            if gz("AutoEquipTrail") then
                local kf_3 = f9()
                local kg_2 = kf_3 and gt:GetAttribute("EquippedTrail") ~= kf_3.name
                if kg_2 then
                    EquipTrail:FireServer(kf_3.name)
                end
            end
            task.wait(gg("TrailDelay", 2))
        else
            kl = true
        end
    until kl
end)
