local gV
local gC
local hj
local gY
local gF
local Options
local g0
local OuroborosHub
local g3
local hp
local g6
local Label
local g9
local gO
local gR
local Workspace
local gU
local hf
local gB
local Toggles
local HttpService
local gE
local g_
local hl
local CurrentCamera
local ho
local g2
local connection2
local g5
local connection
local gQ
local hb
local gT
local he
local gW
local gA
local hh
local Gen
local hk
local gZ
local SaveManager
local LocalPlayer
local VirtualUser
local gJ
local hq
local g4
local g7
local gM
local gP
local ha
local gS
local hd
local hg
local function fn17(cz, cA)
    local je = cz == "Toggle" and Toggles
    local jj = if je then 1 else 0
    local jh = 3032 * jj + 194 * (1 - jj)
    local ji = 1709 * jj + 533 * (1 - jj)
    if not ((jh * 3569 + ji * 2264 + jh * ji) % 16777213 == 3094859) then
        je = Options
    end
    local je_1 = je[cA]
    local jd_2 = type(je_1) == "table" and je_1.Type == cz
    local jd_3 = jd_2 and je_1
    local jj_1 = if jd_3 then 1 else 0
    local jh_1 = 3723 * jj_1 + 4006 * (1 - jj_1)
    local ji_1 = 594 * jj_1 + 189 * (1 - jj_1)
    if not ((jh_1 * 2823 + ji_1 * 415 + jh_1 * ji_1) % 16777213 == 12968001) then
        jd_3 = nil
    end
    return jd_3
end
local function fn106(E, F)
    if setclipboard then
        setclipboard(E)
    elseif toclipboard then
        toclipboard(E)
    end
    gR:Notify(F)
end
local function onCopyPayPalLink()
    hk(gF, "Copied PayPal link")
end
local function onCopySolanaAddress()
    hk(gM, "Copied Solana address")
end
local function fn123(dZ)
    local Hitbox = dZ:FindFirstChild("Hitbox")
    if not Hitbox then
        return false
    end
    local Character = LocalPlayer.Character
    local kq = Character and Character:FindFirstChild("HumanoidRootPart")
    if not kq then
        return false
    end
    local Position = Hitbox.Position
    kq.CFrame = CFrame.new(Position + Vector3.new(0, 1, 0))
    task.wait(0.5)
    if not hq() then
        return false
    end
    local ky = 1
    while true do
        if not (ky <= 3) then
            return not dZ.Parent
        end
        local kz = ky
        if not dZ.Parent then
            return true
        end
        kq.CFrame = CFrame.new(Position + Vector3.new(kz, 1, 0))
        task.wait(0.3)
        if not hq() then
            break
        end
        ky += 1
    end
    return false
end
local function fn127()
    hk(gB, "Copied Discord invite to clipboard")
end
local function worker()
    local ib_1
    while true do
        task.wait(1)
        if gR.Unloaded then
            break
        end
        local ia = math.floor(os.clock() - ha)
        if ia < 60 then
            ib_1 = ia .. "s"
        elseif ia < 3600 then
            ib_1 = string.format("%dm %ds", ia // 60, ia % 60)
        else
            ib_1 = string.format("%dh %dm", ia // 3600, ia % 3600 // 60)
        end
        Label:SetText(g0("Session time", ib_1, hl))
    end
end
local function antiGameplayPauseLoop()
    while not gR.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            g2(true)
        end
    end
end
local function fn160()
    if not Toggles.WalkSpeedEnabled.Value then
        local iO = hg()
        if iO then
            iO.WalkSpeed = 16
        end
    end
end
local function fn171()
    OuroborosHub.Gen = OuroborosHub.Gen + 1
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    g2(false)
end
local function onRenderStepped(bA)
    if gR.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local iC_1 = hg()
        if iC_1 then
            iC_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local iC_3 = g3()
        local iD = hg()
        if iC_3 and iD then
            iD.PlatformStand = true
            local iD_1 = Vector3.zero
            if g6:IsKeyDown(Enum.KeyCode.W) then
                iD_1 = iD_1 + CurrentCamera.CFrame.LookVector
            end
            local iI = if g6:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if iI == 1 then
                iD_1 = iD_1 - CurrentCamera.CFrame.LookVector
            end
            if g6:IsKeyDown(Enum.KeyCode.A) then
                iD_1 = iD_1 - CurrentCamera.CFrame.RightVector
            end
            if g6:IsKeyDown(Enum.KeyCode.D) then
                iD_1 = iD_1 + CurrentCamera.CFrame.RightVector
            end
            if g6:IsKeyDown(Enum.KeyCode.Space) then
                iD_1 = iD_1 + Vector3.new(0, 1, 0)
            end
            if g6:IsKeyDown(Enum.KeyCode.LeftControl) then
                iD_1 = iD_1 - Vector3.new(0, 1, 0)
            end
            iC_3.Velocity = Vector3.zero
            if iD_1.Magnitude > 0 then
                iC_3.CFrame = iC_3.CFrame + iD_1.Unit * Options.FlySpeed.Value * bA
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local jU_1
    local jS = Options.SaveManager_ImportSource.Value or ""
    local jS_1
    local jT = tostring(jS):match("^%s*(.-)%s*$")
    if jT == "" then
        gR:Notify("Paste an exported config into the box first")
        return
    end
    jS_1, jU_1 = pcall(HttpService.JSONDecode, HttpService, jT)
    local jT_1 = not jS_1 or type(jU_1) ~= "table" or type(jU_1.objects) ~= "table"
    if jT_1 then
        gR:Notify("That is not a valid exported config")
        return
    end
    local jS_2 = 0
    for i, v in ipairs(jU_1.objects) do
        if gJ(v) then
            jS_2 += 1
        end
    end
    if jS_2 == 0 then
        gR:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local jU_2 = jS_2 == 1 and "" or "s"
    gR:Notify(("Imported %d setting%s"):format(jS_2, jU_2), 6)
end
local function mailboxIntervalLoop()
    setthreadidentity(8)
    while hq() do
        local Value = Options.MailboxInterval.Value
        if Toggles.MailboxCollect.Value then
            pcall(hd)
        end
        task.wait(Value)
    end
end
local function fn240()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gW = tick()
end
local function onCopyJoinScript_JobID()
    local h5 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, gE)
    if setclipboard then
        setclipboard(h5)
    elseif toclipboard then
        toclipboard(h5)
    end
    gR:Notify("Copied join script to clipboard")
end
local function fn260()
    local Character = hj.Character
    local iq = Character and Character:FindFirstChild("HumanoidRootPart")
    return iq
end
local function onJumpRequest()
    if gR.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local iA_1 = hg()
        if iA_1 then
            iA_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn265()
    local kB = hf()
    if not kB then
        return
    end
    local Tycoon = kB:FindFirstChild("Tycoon")
    if not Tycoon then
        return
    end
    local attr = Tycoon:GetAttribute("Type")
    local kD = gT()
    local kE = {}
    for i, child in ipairs(Tycoon:GetChildren()) do
        local kC_1 = child:IsA("Folder") and tonumber(child.Name)
        if kC_1 then
            local PurchasingPads = child:FindFirstChild("PurchasingPads")
            if PurchasingPads then
                for i, child2 in ipairs(PurchasingPads:GetChildren()) do
                    local kC_3 = child2:IsA("Model") and child2:FindFirstChild("Hitbox")
                    if kC_3 then
                        local kC_4 = gZ.GetObjectPrice(attr, child.Name, child2:GetAttribute("Structure"))
                        local kF = type(kC_4) == "number" and kC_4 > 0 and kC_4 <= kD
                        if kF then
                            kE[#kE + 1] = { pad = child2, price = kC_4 }
                        end
                    end
                end
            end
        end
    end
    if #kE == 0 then
        return
    end
    table.sort(kE, function(en, eo)
        return en.price < eo.price
    end)
    for i, v in ipairs(kE) do
        if not hq() then
            return
        end
        local pad = v.pad
        if not not pad.Parent then
            if v.price > gT() then
                return
            end
            hh.busy = true
            pcall(gC, pad)
            hh.busy = false
        end
    end
end
local function fn279()
    g2(Toggles.AntiGameplayPause.Value)
end
local function fn280()
    SaveManager:LoadAutoloadConfig()
end
local function onInputBegan()
    g_ = tick()
end
local function fn320()
    return gO.OuroborosHub == OuroborosHub and OuroborosHub.Gen == Gen
end
local function onInputChanged(ci)
    local UserInputType = ci.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        g_ = tick()
    end
end
local function antiAfkLoop()
    while not gR.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local i9 = tick() - g_
            local ja = tick() - gW
            if i9 >= 300 and ja >= 60 then
                pcall(hp)
            else
                if i9 < 300 and ja >= 300 then
                    pcall(hp)
                end
            end
        end
    end
end
local function fn325()
    local h1_1
    local h0_1
    if identifyexecutor then
        h1_1, h0_1 = identifyexecutor()
        local h2 = h1_1 ~= ""
        local h3 = type(h1_1) == "string" and h2
        if h3 then
            local h2_1 = type(h0_1) == "string" and h0_1 ~= "" and h1_1 .. " " .. h0_1
            he = h2_1 or h1_1
        end
    end
end
local function fn331(X, Y, Z)
    return string.format("<b>%s</b> %s %s", X, hb("-", "#5a6070"), hb(Y, Z))
end
local function onUnload()
    gR:Unload()
end
local function fn363()
    local Character = hj.Character
    local ij = Character and Character:FindFirstChildOfClass("Humanoid")
    return ij
end
local function onStepped()
    if gR.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = hj.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local is_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if is_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn408(M)
    local DiscordGroup = M:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = g7 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = g7 })
end
local function fn418()
    gR:Notify({ Title = "Ouroboros", Description = "Loaded for " .. gU, Time = 4 })
end
local function fn449(U, V)
    return string.format('<font color="%s">%s</font>', V, U)
end
local function onExportConfigToClipboard()
    local jP_1
    local jO_1
    jO_1, jP_1 = pcall(HttpService.JSONEncode, HttpService, gP())
    if not jO_1 then
        gR:Notify("Failed to encode the config")
        return
    end
    local jO_2 = setclipboard or toclipboard
    local jO_3 = type(jO_2) ~= "function" or not pcall(jO_2, jP_1)
    if jO_3 then
        gR:Notify("Your executor does not support copying to the clipboard")
        return
    end
    gR:Notify("Config copied to clipboard", 6)
end
local function onCopyVenmoLink()
    hk(gA, "Copied Venmo link")
end
local function onCopyBitcoinAddress()
    hk(gY, "Copied Bitcoin address")
end
local function onCopyLitecoinAddress()
    hk(g4, "Copied Litecoin address")
end
local function onCopyUSDTAddress()
    hk(gQ, "Copied USDT address")
end
local function onCopyEthereumAddress()
    hk(gV, "Copied Ethereum address")
end
local function fn534()
    if not Toggles.Fly.Value then
        local iJ = hg()
        if iJ then
            iJ.PlatformStand = false
        end
    end
end
local function autoBuyPadsLoop()
    setthreadidentity(8)
    while hq() do
        local Value = Options.BuyInterval.Value
        if Toggles.AutoBuyPads.Value then
            pcall(gS)
        end
        task.wait(Value)
    end
end
local function fn539()
    if hh.busy then
        return
    end
    local kf = hf()
    if not kf then
        return
    end
    local Tycoon = kf:FindFirstChild("Tycoon")
    local kf_1 = Tycoon and Tycoon:FindFirstChild("Mailbox") and Tycoon.Mailbox:FindFirstChild("ProximityPromptPart")
    local kg_1 = kf_1
    if kf_1 then
        kf_1 = kg_1:FindFirstChildOfClass("ProximityPrompt")
    end
    local kh = kf_1
    if not kh then
        return
    end
    local kf_2 = 0
    local Data = g5.Data
    local kj = type(Data) == "table" and Data.CurrentTycoon
    if kj then
        local kj_1 = Data.TycoonSpecificData and Data.TycoonSpecificData[Data.CurrentTycoon]
        local ki_1 = kj_1
        if kj_1 then
            kj_1 = ki_1.CashToCollect
        end
        local ki_2 = kj_1
        local kn = if ki_2 then 1 else 0
        local kl = 875 * kn + 2494 * (1 - kn)
        local km = 979 * kn + 1448 * (1 - kn)
        if not ((kl * 2763 + km * 3047 + kl * km) % 16777213 == 6257263) then
            ki_2 = 0
        end
        kf_2 = ki_2
    end
    if not (kf_2 > 0) then
        return
    end
    local Character = LocalPlayer.Character
    local ki_3 = Character and Character:FindFirstChild("HumanoidRootPart")
    if not ki_3 then
        return
    end
    ki_3.CFrame = CFrame.new(kg_1.Position + Vector3.new(0, 1.5, 0))
    task.wait(0.4)
    if not hq() then
        return
    end
    fireproximityprompt(kh)
end
local function fn556()
    local jr = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local js = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if js then
                local js_1 = g9(k, v)
                if js_1 then
                    jr[#jr + 1] = js_1
                end
            end
        end
    end
    table.sort(jr, function(cV, cW)
        if cV.type ~= cW.type then
            return cV.type < cW.type
        end
        return cV.idx < cW.idx
    end)
    return { objects = jr }
end
local function fn601()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local kd = leaderstats and leaderstats:FindFirstChild("Cash")
    local kc_1 = kd
    if kd then
        kd = kc_1.Value
    end
    return kd or 0
end
local function fn621(cH, cI)
    local Type = cI.Type
    if Type == "Toggle" then
        return { idx = cH, type = "Toggle", value = cI.Value == true }
    elseif Type == "Slider" then
        return { idx = cH, type = "Slider", value = tostring(cI.Value) }
    elseif Type == "Dropdown" then
        return { idx = cH, type = "Dropdown", multi = cI.Multi == true, value = cI.Value }
    elseif Type == "Input" then
        local jl = cI.Value or ""
        return { idx = cH, type = "Input", text = tostring(jl) }
    elseif Type == "ColorPicker" then
        return { idx = cH, type = "ColorPicker", value = cI.Value:ToHex(), transparency = cI.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = cH,
            type = "KeyPicker",
            mode = cI.Mode,
            key = cI.Value,
            modifiers = cI.Modifiers,
            toggled = cI.Toggled
        }
    else
        return nil
    end
end
local function fn623()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("OwnerId") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function onRscripts()
    if setclipboard then
        setclipboard(ho)
    elseif toclipboard then
        toclipboard(ho)
    end
    gR:Notify("Copied Rscripts profile to clipboard")
end
gA = nil
gB = nil
gC = nil
Gen = nil
gE = nil
gF = nil
SaveManager = nil
CurrentCamera = nil
OuroborosHub = nil
gJ = nil
connection2 = nil
Label = nil
gM = nil
gO = nil
gP = nil
gQ = nil
gR = nil
gS = nil
gT = nil
gU = nil
gV = nil
gW = nil
HttpService = nil
gY = nil
gZ = nil
g_ = nil
g0 = nil
VirtualUser = nil
g2 = nil
g3 = nil
g4 = nil
g5 = nil
g6 = nil
g7 = nil
connection = nil
g9 = nil
ha = nil
hb = nil
Workspace = nil
hd = nil
he = nil
hf = nil
hg = nil
hh = nil
Toggles = nil
hj = nil
hk = nil
hl = nil
Options = nil
local gN
LocalPlayer = nil
ho = nil
hp = nil
hq = nil
local hN_1
local hJ_1
local hH_1
local hD_1
local hC_1
local hB_1
local hA_1
local hw_1
local hz_1, hz_3
local hy_1, hy_3
local hv_2, hv_3
LocalPlayer, hj, Workspace, g6, VirtualUser, HttpService, gU, gO = nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
LocalPlayer = Players.LocalPlayer
hj = LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")
g6 = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
gU = "Hotel Tycoon"
if Players and HttpService and (Players or not HttpService) and (HttpService and HttpService or Players and Players) and (Players and HttpService and (not HttpService or Players) or (not HttpService or Players) and (not Players or not HttpService)) and (not HttpService and HttpService and (not HttpService or HttpService) or not Players and not Players and (Players or Players) or (Players and HttpService and (Players and Players) or (Players or Players) and (HttpService or HttpService))) and not (Players and HttpService and (Players or not HttpService) and (HttpService and HttpService or Players and Players) and (Players and HttpService and (not HttpService or Players) or (not HttpService or Players) and (not Players or not HttpService)) and (not HttpService and HttpService and (not HttpService or HttpService) or not Players and not Players and (Players or Players) or (Players and HttpService and (Players and Players) or (Players or Players) and (HttpService or HttpService)))) then
    gU = getgenv()
else
    gO = getgenv()
end
local hs = gO.OuroborosHub or {}
OuroborosHub = nil
gO.OuroborosHub = hs
OuroborosHub = gO.OuroborosHub
local hr_2 = OuroborosHub.Gen or 0
Gen, g5, gZ, gR, SaveManager, gB, ho, hy_1, Options, Toggles, hA_1, hl, he, Label, gE, hz_1, hq, hk, g7, hb, g0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
OuroborosHub.Gen = hr_2 + 1
Gen = OuroborosHub.Gen
hq = fn320
local ModuleLoader = require(ReplicatedStorage:FindFirstChild("ModuleLoader"))
g5 = ModuleLoader.Import("DataHandler")
gZ = ModuleLoader.Import("TycoonConfig")
setthreadidentity(8)
gR = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if (hy_1 or not hy_1 or not hy_1 and hz_1) and (not hz_1 or not hy_1 or "https://rscripts.net/@Ouroboros") and ((ho or not hy_1) and (hy_1 or false) or (false and hz_1 or hz_1 and ho)) or not ((hy_1 or not hy_1 or not hy_1 and hz_1) and (not hz_1 or not hy_1 or "https://rscripts.net/@Ouroboros") and ((ho or not hy_1) and (hy_1 or false) or (false and hz_1 or hz_1 and ho))) then
    gB = "https://discord.gg/ehKVq7pf7v"
else
    gR = "https://discord.gg/ehKVq7pf7v"
end
ho = "https://rscripts.net/@Ouroboros"
hk = fn106
g7 = fn127
local Window = gR:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = gB, Copyable = true }, "|", gU },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
Options = gR.Options
Toggles = gR.Toggles
local hG = {
    Info = Window:AddTab("Info", "info"),
    Farming = Window:AddTab("Farming", "coins"),
    Inventory = Window:AddTab("Inventory", "package"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
hb = fn449
g0 = fn331
if ((Toggles or Toggles) and (not Toggles or not gE) or (not Toggles and not Toggles or not Toggles and not gE)) and ((gE or not gE) and (not Toggles or gE) and (gE or not Toggles or Toggles and Toggles)) or not (((Toggles or Toggles) and (not Toggles or not gE) or (not Toggles and not Toggles or not Toggles and not gE)) and ((gE or not gE) and (not Toggles or gE) and (gE or not Toggles or Toggles and Toggles))) then
    hA_1, hD_1, hl, hC_1 = "#7fd47f", "#6ec1ff", "#e8a34d", "#8b93a3"
    he = "Unknown"
    pcall(fn325)
    local AccountGroup = hG.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(g0("User", hj.Name, hA_1), true)
    AccountGroup:AddLabel(g0("Status", "Keyless", hA_1), true)
    AccountGroup:AddLabel(g0("Executor", he, hA_1), true)
    hB_1 = hG.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    hB_1:AddLabel(hb(gU .. " [" .. tostring(game.PlaceId) .. "]", hD_1), true)
    hB_1:AddLabel(g0("Place ID", tostring(game.PlaceId), hD_1), true)
    Label = hB_1:AddLabel(g0("Session time", "0s", hl), true)
else
    hD_1, g0, hB_1, hv_2 = "#e8a34d", "#8b93a3", "#7fd47f", "#6ec1ff"
    hb = "Unknown"
    pcall(fn325)
    hj = (nil):AddLeftGroupbox("Account", "circle-user")
    hj:AddLabel(he("User", Label.Name, hB_1), true)
    hj:AddLabel(he("Status", "Keyless", hB_1), true)
    hj:AddLabel(he("Executor", hb, hB_1), true)
    gU = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
    gU:AddLabel(hA_1(hG .. " [" .. tostring(game.PlaceId) .. "]", hv_2), true)
    gU:AddLabel(he("Place ID", tostring(game.PlaceId), hv_2), true)
    hC_1 = gU:AddLabel(he("Session time", "0s", hD_1), true)
end
if ((not hC_1 or not Toggles) and (Window or Toggles) or (not hC_1 and not Window or Toggles and not hC_1)) and not ((not hC_1 or not Toggles) and (Window or Toggles) or (not hC_1 and not Window or Toggles and not hC_1)) then
    he = tostring(game.JobId)
else
    gE = tostring(game.JobId)
end
local hz_2 = #gE > 18
if hz_2 then
    local hr_3 = 0
    repeat
        if hr_3 * 120588071 + 5 + 4 <= hr_3 * 120588071 + 5 + 4 + 1 then
            hz_2 = string.sub(gE, 1, 18) .. "..."
        else
            gE = string.sub(hz_2, 1, 18) .. "..."
        end
        hr_3 = (hr_3 + 3) % 4
    until (hr_3 * 3 + 2) % 4 == 3
end
local hr_4 = hz_2 or gE
ha, g4, gY, gV, gQ, gM, gF, gA = nil, nil, nil, nil, nil, nil, nil, nil
hB_1:AddLabel(g0("Server", hr_4, hC_1), true)
hB_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
ha = os.clock()
task.spawn(worker)
local ScriptsGroup = hG.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(hb("Included in this hub", hC_1), true)
ScriptsGroup:AddLabel(hb(gU, hD_1), true)
local FeaturesGroup = hG.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(hb("Auto Collect Income", hD_1), true)
FeaturesGroup:AddLabel(hb("Auto Buy Buttons", hl), true)
FeaturesGroup:AddLabel(hb("Player Movement", hC_1), true)
local SocialsGroup = hG.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = g7 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hG.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = g7 })
g4 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
gY = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
gV = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
gQ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
gM = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
gF = "https://paypal.me/TheTruckerGOD"
gA = "https://venmo.com/u/miserablemusic"
hN_1, hJ_1, hH_1, hz_3, hy_3, hw_1, hv_3 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
local DonationsGroup = hG.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(hb("All donations are optional but appreciated.", hl), true)
DonationsGroup:AddLabel(hb("If you donate you get a special role, just PING after you donate.", hA_1), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(hb("LTC / Litecoin", hN_1), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(hb("BTC / Bitcoin", hJ_1), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(hb("ETH / Ethereum", hH_1), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(hb("USDT", hz_3), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(hb("Solana", hy_3), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(hb("PayPal", hw_1), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(hb("Venmo", hv_3), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(hb("Don't have any of the listed currencies but still wanna donate?", hC_1), true)
DonationsGroup:AddLabel(hb("DM me and we'll work something out.", hD_1), true)
local FaqGroup = hG.Info:AddRightGroupbox("FAQ", "circle-help")
if (not hr_4 and FaqGroup and (FaqGroup and false) or not hr_4 and not FaqGroup and (hr_4 and not FaqGroup) or (FaqGroup and not hr_4 or FaqGroup and FaqGroup) and (hJ_1 and FaqGroup and (not FaqGroup and FaqGroup))) and ("#f7931a" and (hJ_1 and FaqGroup) or (not FaqGroup or not hr_4) and (not FaqGroup or FaqGroup) or (FaqGroup and false or hr_4 and false or not FaqGroup and FaqGroup and (hr_4 or hJ_1))) and not ((not hr_4 and FaqGroup and (FaqGroup and false) or not hr_4 and not FaqGroup and (hr_4 and not FaqGroup) or (FaqGroup and not hr_4 or FaqGroup and FaqGroup) and (hJ_1 and FaqGroup and (not FaqGroup and FaqGroup))) and ("#f7931a" and (hJ_1 and FaqGroup) or (not FaqGroup or not hr_4) and (not FaqGroup or FaqGroup) or (FaqGroup and false or hr_4 and false or not FaqGroup and FaqGroup and (hr_4 or hJ_1)))) then
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
else
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
local IncomeGroup = hG.Farming:AddRightGroupbox("Income", "coins")
IncomeGroup:AddToggle("MailboxCollect", { Text = "Auto Collect Income (Mailbox)", Default = false })
IncomeGroup:AddSlider("MailboxInterval", { Text = "Collect Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local PurchasingGroup = hG.Inventory:AddRightGroupbox("Purchasing", "shopping-cart")
PurchasingGroup:AddToggle("AutoBuyPads", { Text = "Auto Buy All Buttons", Default = false })
PurchasingGroup:AddSlider("BuyInterval", { Text = "Buy Check Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
CurrentCamera, g_, gW, connection, connection2, hh, hg, g3, g2, hp, gN, g9, gP, gJ, hf, gT, hd, gC, gS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fn408(hG.Farming)
fn408(hG.Inventory)
fn408(hG.Player)
local MovementGroup = hG.Player:AddRightGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = hG.Player:AddLeftGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
hg = fn363
g3 = fn260
RunService.Stepped:Connect(onStepped)
g6.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn534)
Toggles.WalkSpeedEnabled:OnChanged(fn160)
g2 = function(bV)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not bV)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not bV
        end
    end)
    if not bV then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(hj, "GameplayPaused", false)
        else
            hj.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn279)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = hG.Settings:AddLeftGroupbox("Menu", "wrench")
if (connection or connection) and (not connection or gW) and (connection or gS or connection and not gW) or not ((connection or connection) and (not connection or gW) and (connection or gS or connection and not gW)) then
    g_ = tick()
    gW = tick()
    pcall(function()
        for i, v in ipairs(getconnections(hj.Idled)) do
            local i0 = v
            pcall(function()
                i0:Disable()
            end)
        end
    end)
    hp = fn240
    connection = g6.InputBegan:Connect(onInputBegan)
else
    hp = tick()
    g6 = tick()
    pcall(function()
        for i, v in ipairs(getconnections(hj.Idled)) do
            local i0 = v
            pcall(function()
                i0:Disable()
            end)
        end
    end)
    g_ = fn240
    gW = connection.InputBegan:Connect(onInputBegan)
end
connection2 = g6.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
gR.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(gR)
SaveManager:SetLibrary(gR)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/HotelTycoon")
SaveManager:SetSubFolder(tostring(game.PlaceId))
local ht_2 = SaveManager:BuildConfigSection(hG.Settings)
ThemeManager:ApplyToTab(hG.Settings)
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:LoadDefault()
gN = fn17
g9 = fn621
gP = fn556
gJ = function(cY)
    local jI
    jI = nil
    local jJ = type(cY) ~= "table" or type(cY.idx) ~= "string"
    local jN = if jJ then 1 else 0
    local jL = 803 * jN + 2867 * (1 - jN)
    local jM = 977 * jN + 609 * (1 - jN)
    if not ((jL * 647 + jM * 610 + jL * jM) % 16777213 == 1900042) then
        jJ = type(cY.type) ~= "string"
    end
    if not jJ then
        jJ = SaveManager.Ignore[cY.idx]
    end
    if jJ then
        return false
    end
    jI = gN(cY.type, cY.idx)
    if not jI then
        return false
    end
    local jJ_1 = pcall(function()
        if cY.type == "Input" then
            if type(cY.text) ~= "string" then
                return
            end
            jI:SetValue(cY.text)
        elseif cY.type == "ColorPicker" then
            jI:SetValueRGB(Color3.fromHex(cY.value), cY.transparency)
        elseif cY.type == "KeyPicker" then
            jI:SetValue({ cY.key, cY.mode, cY.modifiers })
            if cY.mode == "Toggle" and cY.toggled ~= nil then
                jI.Toggled = cY.toggled
                jI:Update()
            end
        else
            jI:SetValue(cY.value)
        end
    end)
    return jJ_1
end
ht_2:AddDivider()
ht_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
ht_2:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
ht_2:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
pcall(fn280)
hf = fn623
gT = fn601
if (not hd and gS or (false or g2)) and (false and (not hd and gS)) and not ((not hd and gS or (false or g2)) and (false and (not hd and gS))) then
    hd = { busy = false }
    hh = fn539
else
    hh = { busy = false }
    hd = fn539
end
gC = fn123
gS = fn265
do
    task.spawn(mailboxIntervalLoop)
    task.spawn(autoBuyPadsLoop)
    gR:OnUnload(fn171)
    pcall(fn418)
end
