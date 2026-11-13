local iz
local iY
local connection
local iu
local iF
local Toggles
local jb
local je
local ix
local Lock
local jh
local iA
local iO
local Rebirth
local connection2
local Config
local iU
local Library
local LocalPlayer
local iB
local ji
local i_
local iH
local function fn23()
    local Character = LocalPlayer.Character
    local mx = Character and Character:FindFirstChild("HumanoidRootPart")
    return mx
end
local function fn34()
    local j0 = iH()
    local j1 = j0 and j0:FindFirstChild("Squishies")
    local j0_1 = j1
    local j5 = if j0_1 then 1 else 0
    local j3 = 2971 * j5 + 2049 * (1 - j5)
    local j4 = 2003 * j5 + 331 * (1 - j5)
    if not ((j3 * 3717 + j4 * 1927 + j3 * j4) % 16777213 == 4076688) then
        j0_1 = nil
    end
    return j0_1
end
local function fn39(cM)
    local Character = cM.Character
    local lQ = Character and Character:FindFirstChild("HumanoidRootPart")
    if lQ then
        return lQ.Position
    end
    local attr = cM:GetAttribute("PlotId")
    local lQ_1 = attr and workspace.Plots:FindFirstChild(tostring(attr))
    local lP_3 = lQ_1
    if lQ_1 then
        lQ_1 = lP_3:FindFirstChild("Floor")
    end
    local lP_4 = lQ_1
    if lQ_1 then
        lQ_1 = lP_4.Position
    end
    return lQ_1 or nil
end
local function autoRebirthLoop()
    while not Library.Unloaded do
        if Toggles.AutoRebirth and Toggles.AutoRebirth.Value then
            local mc_1 = LocalPlayer:GetAttribute("Rebirths") or 0
            local mc_2 = mc_1 < iu
            if mc_2 then
                local md_1 = LocalPlayer:GetAttribute("ReachedTier") or 1
                mc_2 = md_1 >= iY()
            end
            if mc_2 then
                pcall(function()
                    Rebirth:InvokeServer()
                end)
            end
        end
        task.wait(3)
    end
end
local function fn47()
    local Character = LocalPlayer.Character
    local mu = Character and Character:FindFirstChildOfClass("Humanoid")
    return mu
end
local function fn48()
    ix(false)
    if connection then
        pcall(function()
            connection:Disconnect()
        end)
    end
    if connection2 then
        pcall(function()
            connection2:Disconnect()
        end)
    end
end
local function fn76()
    local Character = LocalPlayer.Character
    local j7 = Character and Character:FindFirstChild("HumanoidRootPart")
    return j7 or nil
end
local function fn95(aI)
    local DiscordGroup = aI:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = iU })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = iU })
end
local function autoLaunchLoop()
    while not Library.Unloaded do
        if Toggles.AutoLaunch and Toggles.AutoLaunch.Value then
            pcall(iB)
        end
        task.wait(0.3)
    end
end
local function fn114(ad, ae)
    if setclipboard then
        setclipboard(ad)
    elseif toclipboard then
        toclipboard(ad)
    end
    Library:Notify(ae)
end
local function fn155()
    Config = require(iO.Shared.Config)
end
local function fn170()
    jb(iA, "Copied Discord invite to clipboard")
end
local function autoLockBaseLoop()
    while not Library.Unloaded do
        if Toggles.AutoLockBase and Toggles.AutoLockBase.Value then
            local mo_1 = iH()
            if mo_1 then
                local mp = workspace:GetServerTimeNow()
                local mq = mo_1:GetAttribute("ShieldUntil") or 0
                local mr = mq <= mp
                if mr then
                    local mq_1 = mo_1:GetAttribute("ShieldCDUntil") or 0
                    mr = mq_1 <= mp
                end
                if mr then
                    pcall(function()
                        Lock:InvokeServer()
                    end)
                end
            end
        end
        task.wait(2)
    end
end
local function fn429(d0)
    if not d0:IsA("ProximityPrompt") then
        return
    end
    d0.HoldDuration = 0
    d0.MaxActivationDistance = 50
    d0.RequiresLineOfSight = false
end
local function autoMergeLoop()
    while not Library.Unloaded do
        if Toggles.AutoMerge and Toggles.AutoMerge.Value then
            pcall(i_)
        end
        task.wait(0.25)
    end
end
local function fn522(aO, aP)
    return string.format('<font color="%s">%s</font>', aP, aO)
end
local function fn631()
    local jS = LocalPlayer:GetAttribute("Rebirths") or 0
    local jS_1
    local jT = Config
    local jT_1
    if jT then
        jT = Config.tierCap
    end
    if jT then
        jS_1, jT_1 = pcall(Config.tierCap, jS)
        local jV = jS_1 and type(jT_1) == "number"
        if jV then
            return jT_1
        end
        return math.min(ji, 30 + jS * 5)
    end
    return math.min(ji, 30 + jS * 5)
end
local function fn649()
    local ke = hookfunction ~= nil
    local kf = hookmetamethod ~= nil
    local kg = getrawmetatable ~= nil
    local kh = setrawmetatable ~= nil
    local ki = getgc ~= nil
    local kj = getgenv ~= nil
    local kk = getreg ~= nil
    local kl = getconnections ~= nil
    local km = firesignal ~= nil
    local kn = getcallbackvalue ~= nil
    local ko = setclipboard ~= nil
    local kp = getcustomasset ~= nil
    local kq = getnamecallmethod ~= nil
    local kr = isexecutorclosure ~= nil
    local ks = fireproximityprompt ~= nil
    local kt = firetouchinterest ~= nil
    local kv = WebSocket ~= nil
    local kw = readfile ~= nil
    local kx = writefile ~= nil
    local kz = (request or http_request) ~= nil
    local kB = (debug and debug.getupvalues) ~= nil
    local kD = (debug and debug.setupvalue) ~= nil
    local kE = 0
    local kF = { ke, kf, kg, kh, ki, kj, kk, kl, km, kn, ko, kp, kq, kr, ks, kt, kv, kw, kx, kz, kB, kD }
    for i, v in ipairs(kF) do
        if v then
            kE += 1
        end
    end
    local ke_1 = kE / #kF
    if ke_1 >= 0.9 then
        return je("Full Support", iF)
    elseif ke_1 >= 0.6 then
        return je("Half Support", iz)
    else
        return je("Low Support", jh)
    end
end
local function fn667()
    local attr = LocalPlayer:GetAttribute("PlotId")
    local jZ = attr and workspace.Plots:FindFirstChild(tostring(attr))
    return jZ or nil
end
local function fn677(aR, aS, aT)
    return string.format("<b>%s</b> %s %s", aR, je("-", "#5a6070"), je(aS, aT))
end
local function fn678()
    if Config then
        if Config.Economy and Config.Economy.REBIRTH_MAX then
            iu = Config.Economy.REBIRTH_MAX
        end
        if Config.MAX_TIER then
            ji = Config.MAX_TIER
        end
    end
end
iu = nil
ix = nil
Library = nil
iz = nil
iA = nil
iB = nil
connection2 = nil
iF = nil
Config = nil
iH = nil
LocalPlayer = nil
Lock = nil
connection = nil
iO = nil
iU = nil
iY = nil
Rebirth = nil
i_ = nil
Toggles = nil
jb = nil
je = nil
local is, it, iv, iw, iC, iE, iI, iK, iM, iP, Launch, iR, TeleportService, Upgrade, iV, Options, HttpService, VirtualUser, i2, i3, DropEvent, i5, UserInputService, i7, PickupEvent, RunService, TryMerge, Players2, jd
jh = nil
ji = nil
local jf, SaveManager, jj
local Remotes
Library, SaveManager, Players2, RunService, UserInputService, VirtualUser, HttpService, TeleportService, iO, LocalPlayer, iE, iA, iw, is, Remotes, TryMerge, PickupEvent, DropEvent, Rebirth, Upgrade, Launch, Lock, Config, iu, ji, Toggles, Options, iR, iY, jb, iU, iH, jj, i2, iK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
getgenv().gethui = function()
    local jL
    local screenGui
    jL = nil
    screenGui = nil
    local jN = cloneref and cloneref(game:GetService("CoreGui"))
    local jO = jN or game:GetService("CoreGui")
    jL = jO
    screenGui = Instance.new("ScreenGui")
    local jN_1 = pcall(function()
        if protectgui then
            protectgui(screenGui)
        end
        screenGui.Parent = jL
    end)
    screenGui:Destroy()
    if jN_1 then
        return jL
    end
    local Players = game:GetService("Players")
    local jO_1 = Players.LocalPlayer or Players.PlayerAdded:Wait()
    return jO_1:WaitForChild("PlayerGui")
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Players2 = game:GetService("Players")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
TeleportService = game:GetService("TeleportService")
iO = game:GetService("ReplicatedStorage")
LocalPlayer = Players2.LocalPlayer
iE = "Merge a Squishy"
if ((not Players2 or not Upgrade) and (Options and is) or not i2 and Remotes and (not Upgrade and not Upgrade) or ((Upgrade or Remotes) and (false and Remotes) or (Options or Players2) and (not Options or Options))) and ((Upgrade and false or (i2 or not Upgrade)) and (not i2 and not Options or (Upgrade or not Upgrade)) or is and not Upgrade and false and (Upgrade and Options or is and not Remotes)) and not (((not Players2 or not Upgrade) and (Options and is) or not i2 and Remotes and (not Upgrade and not Upgrade) or ((Upgrade or Remotes) and (false and Remotes) or (Options or Players2) and (not Options or Options))) and ((Upgrade and false or (i2 or not Upgrade)) and (not i2 and not Options or (Upgrade or not Upgrade)) or is and not Upgrade and false and (Upgrade and Options or is and not Remotes))) then
    jj = "https://discord.gg/ehKVq7pf7v"
else
    iA = "https://discord.gg/ehKVq7pf7v"
end
iw = "https://rscripts.net/@Ouroboros"
is = "https://ouroboros-hub-rbx.web.app/"
if (jb or not TeleportService) and (TeleportService or TeleportService) or not iu and not jb and (not iu or iu) or not ((jb or not TeleportService) and (TeleportService or TeleportService) or not iu and not jb and (not iu or iu)) then
    Remotes = iO:WaitForChild("Remotes")
else
    iO = Remotes:WaitForChild("Remotes")
end
TryMerge = Remotes:WaitForChild("TryMerge")
PickupEvent = Remotes:WaitForChild("PickupEvent")
DropEvent = Remotes:WaitForChild("DropEvent")
Rebirth = Remotes:WaitForChild("Rebirth")
Upgrade = Remotes:WaitForChild("Upgrade")
Launch = Remotes:WaitForChild("Launch")
Lock = Remotes:WaitForChild("Lock")
Config = nil
pcall(fn155)
iu = 6
ji = 60
pcall(fn678)
iY = fn631
jb = fn114
iU = fn170
iH = fn667
jj = fn34
i2 = fn76
iK = function(aw)
    local mesh_node = aw:FindFirstChild("mesh_node")
    local ka = i2()
    if not mesh_node or not ka then
        return
    end
    ka.CFrame = CFrame.new(mesh_node.Position + Vector3.new(0, 3, 0))
    pcall(function()
        PickupEvent:FireServer(aw)
    end)
end
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = iA, Copyable = true }, "|", iE },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
Toggles = Library.Toggles
Options = Library.Options
iR = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in iR do
    if k ~= "Info" then
        fn95(v)
    end
end
iF, iC, iz, it, jh, i5, connection, iM, iI, connection2, jf, je, i3, jd, i_, iv, iB, i7, iP, ix, iV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
je = fn522
i3 = fn677
iF = "#7fd47f"
iC = "#6ec1ff"
iz = "#e8a34d"
it = "#8b93a3"
jh = "#e05a5a"
jd = fn649
local function jt()
    local k6
    local k3
    k3 = nil
    k6 = nil
    local k1, k2, Label, Label2, Label3
    k3 = "Unknown"
    pcall(function()
        local kR_1
        local kQ_1
        if identifyexecutor then
            kR_1, kQ_1 = identifyexecutor()
            local kS = kR_1 ~= ""
            local kT = type(kR_1) == "string" and kS
            if kT then
                local kS_1 = type(kQ_1) == "string" and kQ_1 ~= "" and kR_1 .. " " .. kQ_1
                k3 = kS_1 or kR_1
            end
        end
    end)
    local k8 = jd()
    k6 = os.clock()
    k2 = function()
        local kV = math.floor(os.clock() - k6)
        if kV < 60 then
            return kV .. "s"
        elseif kV < 3600 then
            return string.format("%dm %ds", kV // 60, kV % 60)
        else
            return string.format("%dh %dm", kV // 3600, kV % 3600 // 60)
        end
    end
    local UserGroup = iR.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(i3("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, iF), true)
    UserGroup:AddLabel(i3("UserId", tostring(LocalPlayer.UserId), iC), true)
    UserGroup:AddLabel(i3("Executor", k3 .. "  " .. k8, iF), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(i3("Session", k2(), iz), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            jb(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            jb("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = iR.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(i3("Game", iE, iC), true)
    Label2 = SessionGroup:AddLabel(i3("Players", "0/0", iF), true)
    k1 = tostring(game.JobId)
    local k9_1 = #k1 > 18 and string.sub(k1, 1, 18) .. "..."
    local k9_2 = k9_1 or k1
    SessionGroup:AddLabel(i3("Job", k9_2, it), true)
    Label = SessionGroup:AddLabel(i3("Ping", "0 ms", iz), true)
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
            jb(k1, "Copied Job ID")
        end
    })
    task.spawn(function()
        local kY_1
        local kX_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(i3("Session", k2(), iz))
            Label2:SetText(i3("Players", #Players2:GetPlayers() .. "/" .. tostring(Players2.MaxPlayers), iF))
            kX_1, kY_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local kX_2 = kX_1 and kY_1 .. " ms" or "n/a"
            Label:SetText(i3("Ping", kX_2, iz))
        end
    end)
    local SocialsGroup = iR.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = iU })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(iw)
            elseif toclipboard then
                toclipboard(iw)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            jb(is, "Copied website link")
        end
    })
end
jt()
local MergeGroup = iR.Main:AddLeftGroupbox("Merge", "git-merge")
MergeGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
local RebirthGroup = iR.Main:AddLeftGroupbox("Rebirth", "repeat")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local BaseGroup = iR.Main:AddLeftGroupbox("Base", "shield")
BaseGroup:AddToggle("AutoLockBase", { Text = "Auto Lock Base", Default = false })
local UpgradesGroup = iR.Main:AddRightGroupbox("Upgrades", "arrow-up")
UpgradesGroup:AddToggle("AutoUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddDropdown("UpgradeKinds", {
    Values = { "Spawn Tier", "Max Spawn", "Lock Base" },
    Default = { "Spawn Tier", "Max Spawn", "Lock Base" },
    Multi = true,
    Text = "Upgrades to buy"
})
local LaunchGroup = iR.Main:AddRightGroupbox("Launch", "rocket")
LaunchGroup:AddToggle("AutoLaunch", { Text = "Auto Launch", Default = false })
LaunchGroup:AddDropdown("LaunchTarget", { SpecialType = "Player", ExcludeLocalPlayer = true, Text = "Target player" })
i5 = { ["Spawn Tier"] = "SpawnTier", ["Max Spawn"] = "MaxSpawn", ["Lock Base"] = "LockBase" }
i_ = function()
    local li
    local lj = jj()
    if not lj then
        return
    end
    local lk = iY()
    local ll = LocalPlayer:GetAttribute("CarryId") or 0
    if ll ~= 0 then
        local ll_1 = (LocalPlayer:GetAttribute("CarryTier"))
        local lr = if ll_1 then 1 else 0
        local lp = 609 * lr + 768 * (1 - lr)
        local lq = 1683 * lr + 1513 * (1 - lr)
        if not ((lp * 2292 + lq * 1535 + lp * lq) % 16777213 == 5004180) then
            ll_1 = 0
        end
        local ln_1 = ll_1
        if ln_1 > 0 and ln_1 + 1 <= lk then
            for i, child in ipairs(lj:GetChildren()) do
                local lx = child
                local ll_3 = lx:GetAttribute("Tier") == ln_1 and not lx:GetAttribute("Carried") and lx:GetAttribute("Id") ~= ll
                if ll_3 then
                    pcall(function()
                        TryMerge:FireServer(lx)
                    end)
                    return
                end
            end
        end
        li = i2()
        pcall(function()
            local lg = li and li.Position or nil
            DropEvent:FireServer(lg, LocalPlayer:GetAttribute("CarryTier"))
        end)
        return
    end
    local ll_4 = {}
    for i, child in ipairs(lj:GetChildren()) do
        local attr = child:GetAttribute("Tier")
        local ln_2 = attr and not child:GetAttribute("Carried")
        if ln_2 then
            local ln_3 = ll_4[attr] or 0
            ll_4[attr] = ln_3 + 1
        end
    end
    local lm_2 = lk - 1
    local lG = 1
    while lG <= lm_2 do
        local lH = lG
        if (ll_4[lH] or 0) >= 2 then
            for i, child in ipairs(lj:GetChildren()) do
                local lk_2 = child:GetAttribute("Tier") == lH and not child:GetAttribute("Carried")
                if lk_2 then
                    iK(child)
                    return
                end
            end
        end
        lG += 1
    end
end
iv = fn39
iB = function()
    local lV
    local Value = Options.LaunchTarget.Value
    if not Value or Value == "" then
        return
    end
    local lX_1 = Players2:FindFirstChild(Value)
    if not lX_1 then
        return
    end
    local lW_1 = LocalPlayer:GetAttribute("CarryId") or 0
    if lW_1 == 0 then
        local lW_2 = jj()
        if not lW_2 then
            return
        end
        for i, child in ipairs(lW_2:GetChildren()) do
            local lW_3 = child:GetAttribute("Tier") and not child:GetAttribute("Carried")
            if lW_3 then
                iK(child)
                return
            end
        end
        return
    end
    lV = iv(lX_1)
    if not lV then
        return
    end
    pcall(function()
        Launch:InvokeServer(lV)
    end)
end
task.spawn(autoMergeLoop)
task.spawn(autoLaunchLoop)
task.spawn(autoRebirthLoop)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoUpgrades and Toggles.AutoUpgrades.Value then
            for k, v in pairs(Options.UpgradeKinds.Value) do
                if v then
                    local mf = i5[k]
                    if mf then
                        pcall(function()
                            Upgrade:InvokeServer(mf)
                        end)
                    end
                end
            end
        end
        task.wait(0.75)
    end
end)
task.spawn(autoLockBaseLoop)
i7 = fn47
iP = fn23
ix = function(dU)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not dU)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not dU
        end
    end)
    if not dU then
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
iV = fn429
local function jn_2()
    local MovementGroup = iR.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = iR.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local CurrentCamera = workspace.CurrentCamera
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local mK_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if mK_2 then
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
            local mS_1 = i7()
            if mS_1 then
                mS_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    RunService.RenderStepped:Connect(function(eq)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local mU_1 = i7()
            if mU_1 then
                mU_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local mU_3 = iP()
            local mV = i7()
            if mU_3 and mV then
                mV.PlatformStand = true
                local mV_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    mV_1 = mV_1 + CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    mV_1 = mV_1 - CurrentCamera.CFrame.LookVector
                end
                local m2 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if m2 == 1 then
                    mV_1 = mV_1 - CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    mV_1 = mV_1 + CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    mV_1 = mV_1 + Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    mV_1 = mV_1 - Vector3.new(0, 1, 0)
                end
                mU_3.Velocity = Vector3.zero
                if mV_1.Magnitude > 0 then
                    mU_3.CFrame = mU_3.CFrame + mV_1.Unit * Options.FlySpeed.Value * eq
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local m6 = i7()
            if m6 then
                m6.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local m8 = i7()
            if m8 then
                m8.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        ix(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                ix(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(workspace:GetDescendants()) do
                pcall(iV, descendant)
            end
            connection = workspace.DescendantAdded:Connect(function(eZ)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(iV, eZ)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
end
jn_2()
iM = 0
iI = tick()
local function jm_1()
    local MenuGroup = iR.Settings:AddLeftGroupbox("Menu", "menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function fa()
        if not workspace.CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        iM = iM + 1
        iI = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. iM)
        end)
    end
    connection2 = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(fa)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local ns = Toggles.AntiAfk.Value and tick() - iI >= 60
            if ns then
                pcall(fa)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
end
jm_1()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(iR.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MergeASquishy")
jf = SaveManager:BuildConfigSection(iR.Settings)
local function ju()
    local function fy(fz, fA)
        local nv_1 = (fz == "Toggle" and Toggles or Options)[fA]
        local nu_2 = type(nv_1) == "table" and nv_1.Type == fz
        return nu_2 and nv_1 or nil
    end
    local function fI(fJ, fK)
        local Type = fK.Type
        if Type == "Toggle" then
            return { idx = fJ, type = "Toggle", value = fK.Value == true }
        elseif Type == "Slider" then
            return { idx = fJ, type = "Slider", value = tostring(fK.Value) }
        elseif Type == "Dropdown" then
            return { idx = fJ, type = "Dropdown", multi = fK.Multi == true, value = fK.Value }
        elseif Type == "Input" then
            local nz = fK.Value
            local nD = if nz then 1 else 0
            local nB = 366 * nD + 2859 * (1 - nD)
            local nC = 100 * nD + 205 * (1 - nD)
            if not ((nB * 976 + nC * 1953 + nB * nC) % 16777213 == 589116) then
                nz = ""
            end
            return { idx = fJ, type = "Input", text = tostring(nz) }
        elseif Type == "ColorPicker" then
            return { idx = fJ, type = "ColorPicker", value = fK.Value:ToHex(), transparency = fK.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = fJ,
                type = "KeyPicker",
                mode = fK.Mode,
                key = fK.Value,
                modifiers = fK.Modifiers,
                toggled = fK.Toggled
            }
        else
            return nil
        end
    end
    local function fM()
        local nF = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local nG = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if nG then
                    local nG_1 = fI(k, v)
                    if nG_1 then
                        nF[#nF + 1] = nG_1
                    end
                end
            end
        end
        table.sort(nF, function(fW, fX)
            if fW.type ~= fX.type then
                return fW.type < fX.type
            end
            return fW.idx < fX.idx
        end)
        return { objects = nF }
    end
    local function fY(fZ)
        local nW
        nW = nil
        local nX = type(fZ) ~= "table" or type(fZ.idx) ~= "string" or type(fZ.type) ~= "string" or SaveManager.Ignore[fZ.idx]
        if nX then
            return false
        end
        nW = fy(fZ.type, fZ.idx)
        if not nW then
            return false
        end
        local nX_1 = pcall(function()
            if fZ.type == "Input" then
                if type(fZ.text) ~= "string" then
                    return
                end
                nW:SetValue(fZ.text)
            elseif fZ.type == "ColorPicker" then
                nW:SetValueRGB(Color3.fromHex(fZ.value), fZ.transparency)
            elseif fZ.type == "KeyPicker" then
                nW:SetValue({ fZ.key, fZ.mode, fZ.modifiers })
                if fZ.mode == "Toggle" and fZ.toggled ~= nil then
                    nW.Toggled = fZ.toggled
                    nW:Update()
                end
            else
                nW:SetValue(fZ.value)
            end
        end)
        return nX_1
    end
    jf:AddDivider()
    jf:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    jf:AddButton("Export Config to Clipboard", function()
        local n__1
        local nZ_1
        nZ_1, n__1 = pcall(HttpService.JSONEncode, HttpService, fM())
        if not nZ_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local nZ_2 = setclipboard
        local n4 = if nZ_2 then 1 else 0
        local n2 = 2177 * n4 + 951 * (1 - n4)
        local n3 = 1752 * n4 + 1945 * (1 - n4)
        if not ((n2 * 218 + n3 * 3641 + n2 * n3) % 16777213 == 10667722) then
            nZ_2 = toclipboard
        end
        local n0 = nZ_2
        local nZ_3 = type(n0) ~= "function"
        local n7 = if nZ_3 then 1 else 0
        local n5 = 3857 * n7 + 973 * (1 - n7)
        local n6 = 2662 * n7 + 252 * (1 - n7)
        if not ((n5 * 110 + n6 * 2445 + n5 * n6) % 16777213 == 422981) then
            nZ_3 = not pcall(n0, n__1)
        end
        if nZ_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    jf:AddButton("Import Config from Clipboard Text", function()
        local oa_1
        local n8 = Options.SaveManager_ImportSource.Value or ""
        local n8_1
        local n9 = tostring(n8):match("^%s*(.-)%s*$")
        if n9 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        n8_1, oa_1 = pcall(HttpService.JSONDecode, HttpService, n9)
        local n9_1 = not n8_1 or type(oa_1) ~= "table" or type(oa_1.objects) ~= "table"
        if n9_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local n8_2 = 0
        for i, v in ipairs(oa_1.objects) do
            if fY(v) then
                n8_2 += 1
            end
        end
        if n8_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local oa_2 = n8_2 == 1 and ""
        local ol = if oa_2 then 1 else 0
        local oi = 1600 * ol + 1157 * (1 - ol)
        local oj = 1513 * ol + 3525 * (1 - ol)
        if not ((oi * 1983 + oj * 1639 + oi * oj) % 16777213 == 8073407) then
            oa_2 = "s"
        end
        Library:Notify(("Imported %d setting%s"):format(n8_2, oa_2), 6)
    end)
end
ju()
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn48)
Library:Notify("Ouroboros Hub loaded for Merge a Squishy")
