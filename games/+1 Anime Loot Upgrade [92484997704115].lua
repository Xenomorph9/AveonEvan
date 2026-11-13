local kn
local UserInputService
local jM
local kt
local ka
local jS
local jz
local kg
local jY
local jF
local km
local j3
local jL
local ks
local AutoTrainConfig
local jR
local kz
local Label
local kf
local jX
local jE
local kl
local j2
local j8
local jQ
local ky
local jx
local ke
local connection2
local jD
local Toggles
local j1
local jJ
local connection
local jP
local kx
local jw
local kd
local CurrentCamera
local jC
local VirtualUser
local kp
local j6
local jO
local jU
local jB
local Options
local HttpService
local jH
local SaveManager
local j5
local Library
local kb
local jT
local jZ
local jG
local function autoTrainLoop()
    while true do
        task.wait(0.35)
        if Library.Unloaded then
            break
        end
        if Toggles.AutoTrain and Toggles.AutoTrain.Value then
            continue
        end
        local l7_1 = Toggles.AutoFarmDungeons and Toggles.AutoFarmDungeons.Value
        local l7_2 = Toggles.AutoFarmSelected and Toggles.AutoFarmSelected.Value
        if not (l7_1 or l7_2) then
            j5 = 1
            j1 = nil
            continue
        end
        local l7_4 = j6
        if l7_2 then
            local l8_1 = tonumber(Options.SelectedStage.Value) or 1
            l7_4 = l8_1
        end
        local l8_2 = jR(jO)
        if not l8_2 then
            continue
        end
        local l9_1 = l8_2.ClearedStage or 0
        local l9_2 = math.min(j5, l7_4, l9_1 + 1)
        if l9_2 < 1 then
            l9_2 = 1
        end
        j5 = l9_2
        kn(l9_2, j1 ~= l9_2)
        j1 = l9_2
        local ma_1 = l8_2.EnteredStage == l9_2
        if ma_1 then
            ma_1 = (l8_2.AliveEnemies or 0) == 0
        end
        if ma_1 then
            ma_1 = (l8_2.ClearedStage or 0) >= l9_2
        end
        if ma_1 then
            local l8_4 = Toggles.AutoOpenChest and Toggles.AutoOpenChest.Value and kp()
            if l8_4 then
                continue
            end
            if j5 < l7_4 then
                j5 += 1
                j1 = nil
            else
                local l7_5 = ka()
                local Level = workspace:FindFirstChild("Level")
                local ma_2 = Level and Level:FindFirstChild(tostring(l9_2))
                local l8_6 = ma_2
                if ma_2 then
                    ma_2 = l8_6:FindFirstChild("Start")
                end
                local l8_7 = ma_2
                if l7_5 and l8_7 then
                    l7_5.CFrame = l8_7.CFrame + Vector3.new(0, 4, 0)
                    task.wait(0.4)
                    kn(l9_2, true)
                end
            end
        end
    end
end
local function fn67()
    if not Toggles.WalkSpeedEnabled.Value then
        local n5 = jZ()
        if n5 then
            n5.WalkSpeed = 16
        end
    end
end
local function fn89()
    j2(jT, "Copied Discord invite to clipboard")
end
local function fn114()
    if not Toggles.Fly.Value then
        local n3 = jZ()
        if n3 then
            n3.PlatformStand = false
        end
    end
end
local function onCopyJoinScript_JobID()
    local lw = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kx)
    if setclipboard then
        setclipboard(lw)
    elseif toclipboard then
        toclipboard(lw)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn170(ab, ac, ad)
    return string.format("<b>%s</b> %s %s", ab, jL("-", "#5a6070"), jL(ac, ad))
end
local function onInputBegan()
    jF = tick()
end
local function fn206(fV, fW)
    local Type = fW.Type
    if Type == "Toggle" then
        return { idx = fV, type = "Toggle", value = fW.Value == true }
    elseif Type == "Slider" then
        return { idx = fV, type = "Slider", value = tostring(fW.Value) }
    elseif Type == "Dropdown" then
        return { idx = fV, type = "Dropdown", multi = fW.Multi == true, value = fW.Value }
    elseif Type == "Input" then
        local oJ = fW.Value or ""
        return { idx = fV, type = "Input", text = tostring(oJ) }
    elseif Type == "ColorPicker" then
        return { idx = fV, type = "ColorPicker", value = fW.Value:ToHex(), transparency = fW.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = fV,
            type = "KeyPicker",
            mode = fW.Mode,
            key = fW.Value,
            modifiers = fW.Modifiers,
            toggled = fW.Toggled
        }
    else
        return nil
    end
end
local function fn253()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    jC = tick()
end
local function onCopyPayPalLink()
    j2(kz, "Copied PayPal link")
end
local function worker()
    local lz_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local ly = math.floor(os.clock() - kd)
        if ly < 60 then
            lz_1 = ly .. "s"
        elseif ly < 3600 then
            lz_1 = string.format("%dm %ds", ly // 60, ly % 60)
        else
            lz_1 = string.format("%dh %dm", ly // 3600, ly % 3600 // 60)
        end
        Label:SetText(jB("Session time", lz_1, kg))
    end
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            j3(true)
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local nS_1 = jZ()
        if nS_1 then
            nS_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(jS)
    elseif toclipboard then
        toclipboard(jS)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn365()
    j3(false)
    connection:Disconnect()
    connection2:Disconnect()
    pcall(function()
        kf:FireServer("Off")
    end)
    print("Unloaded!")
end
local function autoClickLoop()
    while true do
        task.wait(3)
        if Library.Unloaded then
            break
        end
        if not (Toggles.AutoClick and Toggles.AutoClick.Value) then
            continue
        end
        local no_1 = jR(jx)
        if no_1 and no_1.Mode == "Off" then
            j8()
        end
    end
end
local function fn382(fN, fO)
    local oF_1 = (fN == "Toggle" and Toggles or Options)[fO]
    local oE_2 = type(oF_1) == "table" and oF_1.Type == fN
    return oE_2 and oF_1 or nil
end
local function onCopyEthereumAddress()
    j2(jG, "Copied Ethereum address")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = jY.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local nH_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if nH_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onExportConfigToClipboard()
    local pc_1
    local pb_1
    pb_1, pc_1 = pcall(HttpService.JSONEncode, HttpService, jQ())
    if not pb_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local pb_2 = setclipboard
    local ph = if pb_2 then 1 else 0
    local pf = 3333 * ph + 1986 * (1 - ph)
    local pg = 694 * ph + 3508 * (1 - ph)
    if not ((pf * 2069 + pg * 375 + pf * pg) % 16777213 == 9469329) then
        pb_2 = toclipboard
    end
    local pd = pb_2
    local pb_3 = type(pd) ~= "function" or not pcall(pd, pc_1)
    if pb_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn473(bs, bt)
    local lF = ka()
    local Level = workspace:FindFirstChild("Level")
    local lH = Level and Level:FindFirstChild(tostring(bs))
    local lG_1 = lH
    if lH then
        lH = lG_1:FindFirstChild("Zone")
    end
    local lG_2 = lH
    if not (lF and lG_2) then
        return
    end
    local lH_2 = lG_2.CFrame + Vector3.new(0, 4, 0)
    if bt or (lF.Position - lH_2.Position).Magnitude > 8 then
        lF.CFrame = lH_2
    end
end
local function fn484()
    pcall(function()
        kf:FireServer(kt())
    end)
end
local function onRenderStepped(eJ)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local nX_1 = jZ()
        if nX_1 then
            nX_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local nX_3 = ka()
        local nY = jZ()
        if nX_3 and nY then
            nY.PlatformStand = true
            local nY_1 = Vector3.zero
            local n2 = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if n2 == 1 then
                nY_1 = nY_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                nY_1 = nY_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                nY_1 = nY_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                nY_1 = nY_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                nY_1 = nY_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                nY_1 = nY_1 - Vector3.new(0, 1, 0)
            end
            nX_3.Velocity = Vector3.zero
            if nY_1.Magnitude > 0 then
                nX_3.CFrame = nX_3.CFrame + nY_1.Unit * Options.FlySpeed.Value * eJ
            end
        end
    end
end
local function fn511()
    if not (Toggles.AutoClick and Toggles.AutoClick.Value) then
        return "Off"
    end
    local ni_1 = jR(jx)
    if ni_1 and ni_1.OwnsOP then
        return "OP"
    end
    return "Free"
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local oA = tick() - jF
            local oB = tick() - jC
            if oA >= 300 and oB >= 60 then
                pcall(km)
            else
                if oA < 300 and oB >= 300 then
                    pcall(km)
                end
            end
        end
    end
end
local function fn525()
    local lp_1
    local lo_1
    if identifyexecutor then
        lp_1, lo_1 = identifyexecutor()
        local lq = lp_1 ~= ""
        local lr = type(lp_1) == "string" and lq
        if lr then
            local lq_1 = type(lo_1) == "string" and lo_1 ~= "" and lp_1 .. " " .. lo_1
            jP = lq_1 or lp_1
        end
    end
end
local function onCopyLitecoinAddress()
    j2(jM, "Copied Litecoin address")
end
local function onCopySolanaAddress()
    j2(jz, "Copied Solana address")
end
local function fn580()
    j3(Toggles.AntiGameplayPause.Value)
end
local function fn621(d7)
    local nr = 1
    for i, v in ipairs(AutoTrainConfig.EQUIPMENT) do
        local nt = v.Requirement or {}
        if nt.Type == "Free" then
            nr = math.max(nr, v.EquipmentId)
        else
            if nt.Type == "Rebirth" and d7 >= (nt.Amount or math.huge) then
                nr = math.max(nr, v.EquipmentId)
            end
        end
    end
    return nr
end
local function fn631()
    local Character = jY.Character
    local lm = Character and Character:FindFirstChildOfClass("Humanoid")
    return lm
end
local function fn633(U)
    local DiscordGroup = U:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = jU })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = jU })
end
local function onUnload()
    Library:Unload()
end
local function fn690(Y, Z)
    return string.format('<font color="%s">%s</font>', Z, Y)
end
local function fn699()
    local oP = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local oQ = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if oQ then
                local oQ_1 = jX(k, v)
                if oQ_1 then
                    oP[#oP + 1] = oQ_1
                end
            end
        end
    end
    table.sort(oP, function(f7, f8)
        if f7.type ~= f8.type then
            return f7.type < f8.type
        end
        return f7.idx < f8.idx
    end)
    return { objects = oP }
end
local function onOnClientEvent(bO)
    if type(bO) == "number" then
        jw[bO] = true
    end
end
local function fn729()
    local Character = jY.Character
    local lj = Character and Character:FindFirstChild("HumanoidRootPart")
    return lj
end
local function autoTrainLoop2()
    while true do
        task.wait(0.5)
        if Library.Unloaded then
            break
        end
        if not (Toggles.AutoTrain and Toggles.AutoTrain.Value) then
            kb = nil
            continue
        end
        local nC_1 = jR(jE)
        local nD_1 = nC_1 and nC_1.Rebirths or 0
        local nC_3 = jH(nD_1)
        if nC_3 ~= kb then
            local AFK_Area = workspace:FindFirstChild("AFK Area")
            local nE = AFK_Area and AFK_Area:FindFirstChild(tostring(nC_3))
            local nE_1 = ka()
            if nE and nE_1 then
                nE_1.CFrame = nE.CFrame + Vector3.new(0, 4, 0)
                kb = nC_3
            end
        end
    end
end
local function fn774()
    if next(jw) ~= nil then
        return true
    end
    local LocalChestEffects = workspace:FindFirstChild("LocalChestEffects")
    if LocalChestEffects then
        for i, descendant in ipairs(LocalChestEffects:GetDescendants()) do
            local lX_1 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Open"
            if lX_1 then
                return true
            end
        end
    end
    return false
end
local function onCopyBitcoinAddress()
    j2(jJ, "Copied Bitcoin address")
end
local function autoRebirthLoop()
    while true do
        task.wait(0.7)
        if Library.Unloaded then
            break
        end
        if not (Toggles.AutoRebirth and Toggles.AutoRebirth.Value) then
            continue
        end
        local nf_1 = jR(jE)
        if nf_1 and nf_1.CanRebirth and not nf_1.IsMax then
            pcall(function()
                kl:FireServer()
            end)
        end
    end
end
local function fn806(N, O)
    if setclipboard then
        setclipboard(N)
    elseif toclipboard then
        toclipboard(N)
    end
    Library:Notify(O)
end
local function fn813(cY)
    local mG = ky[cY.Quality] or 0
    local mJ = (cY.HealthBonus or 0) + (cY.Defense or 0) * 1000
    local mK = cY.AttackBonus
    local mQ = if mK then 1 else 0
    local mO = 252 * mQ + 1837 * (1 - mQ)
    local mP = 4026 * mQ + 1630 * (1 - mQ)
    if not ((mO * 3321 + mP * 2961 + mO * mP) % 16777213 == 13772430) then
        mK = 0
    end
    return mG * 1000000 + (mJ + mK * 1000 + (cY.CritRate or 0) * 1000)
end
local function onCopyUSDTAddress()
    j2(jD, "Copied USDT address")
end
local function onInputChanged(fr)
    local UserInputType = fr.UserInputType
    local ov = UserInputType == Enum.UserInputType.MouseMovement
    local oz = if ov then 1 else 0
    local ox = 285 * oz + 846 * (1 - oz)
    local oy = 3422 * oz + 2763 * (1 - oz)
    if not ((ox * 3054 + oy * 3349 + ox * oy) % 16777213 == 13305938) then
        ov = UserInputType == Enum.UserInputType.Gamepad1
    end
    if ov then
        jF = tick()
    end
end
local function onCopyVenmoLink()
    j2(ks, "Copied Venmo link")
end
local function onImportConfigFromClipboardTex()
    local pk_1
    local pi = Options.SaveManager_ImportSource.Value or ""
    local pi_1
    local pj = tostring(pi):match("^%s*(.-)%s*$")
    if pj == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    pi_1, pk_1 = pcall(HttpService.JSONDecode, HttpService, pj)
    local pj_1 = not pi_1 or type(pk_1) ~= "table" or type(pk_1.objects) ~= "table"
    if pj_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local pi_2 = 0
    for i, v in ipairs(pk_1.objects) do
        if ke(v) then
            pi_2 += 1
        end
    end
    if pi_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local pk_2 = pi_2 == 1 and ""
    local pu = if pk_2 then 1 else 0
    local ps = 3760 * pu + 2377 * (1 - pu)
    local pt = 75 * pu + 1120 * (1 - pu)
    if not ((ps * 2272 + pt * 1477 + ps * pt) % 16777213 == 8935495) then
        pk_2 = "s"
    end
    Library:Notify(("Imported %d setting%s"):format(pi_2, pk_2), 6)
end
jw = nil
jx = nil
Label = nil
jz = nil
jB = nil
jC = nil
jD = nil
jE = nil
jF = nil
jG = nil
jH = nil
jJ = nil
jL = nil
jM = nil
jO = nil
jP = nil
jQ = nil
jR = nil
jS = nil
jT = nil
jU = nil
CurrentCamera = nil
connection2 = nil
jX = nil
jY = nil
jZ = nil
HttpService = nil
VirtualUser = nil
j1 = nil
j2 = nil
j3 = nil
UserInputService = nil
j5 = nil
j6 = nil
connection = nil
j8 = nil
AutoTrainConfig = nil
ka = nil
kb = nil
kd = nil
ke = nil
kf = nil
kg = nil
Options = nil
local jA, jI, jK, jN, WeaponConfig, kh
Toggles = nil
kl = nil
km = nil
kn = nil
SaveManager = nil
kp = nil
ks = nil
kt = nil
Library = nil
kx = nil
ky = nil
kz = nil
local kj, kq, kr, kw, kY
local kX_1
local kJ_1
local Window, kG_2
Library, SaveManager, Toggles, Options, UserInputService, VirtualUser, HttpService, jY, jT, jS, jO, jN, jK, jI, jE, jA, jx, kw, kq, kl, kj, kf, WeaponConfig, AutoTrainConfig, j6, kg, Window, jP, Label, kx, kJ_1, j2, jU, jL, jB, ka, jZ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
jY = Players.LocalPlayer
local kL = "+1 Anime Loot Upgrade"
jT = "https://discord.gg/ehKVq7pf7v"
if (ka or ka or (kJ_1 or not ka)) and ((not Window or not ka) and (ka or not Options)) or not ((ka or ka or (kJ_1 or not ka)) and ((not Window or not ka) and (ka or not Options))) then
    jS = "https://rscripts.net/@Ouroboros"
else
    jY = "https://rscripts.net/@Ouroboros"
end
local Remote = ReplicatedStorage.Remote
local Event = Remote.Event
local Function = Remote.Function
jO = Function.Stage["[C-S]GetStageState"]
jN = Function.Weapon["[C-S]GetWeaponState"]
jK = Function.Equipment["[C-S]GetEquipmentState"]
jI = Function.Currency["[C-S]GetCurrencyData"]
jE = Function.Rebirth["[C-S]GetState"]
jA = Function.Talent["[C-S]GetState"]
jx = Function.AutoClick["[C-S]GetState"]
kw = Function.Equipment["[C-S]EquipItem"]
kq = Event.Chest["[C-S]RequestOpen"]
local kS = Event.Chest["[S-C]ChestSpawned"]
kl = Event.Rebirth["[C-S]TryRebirth"]
kj = Event.Talent["[C-S]Allocate"]
kf = Event.AutoClick["[C-S]SetMode"]
WeaponConfig = require(ReplicatedStorage.Config.WeaponConfig)
AutoTrainConfig = require(ReplicatedStorage.Config.AutoTrainConfig)
j6 = 14
j2 = fn806
jU = fn89
jL = fn690
jB = fn170
local kO = "#7fd47f"
local kN = "#6ec1ff"
kg = "#e8a34d"
local kM = "#8b93a3"
ka = fn729
jZ = fn631
if (not kq and not jx and (not jx and RunService) or kq and not j2 and (RunService or not RunService)) and ((RunService or RunService) and (jx and not j2) or (not RunService or jT or kq and jT)) or not ((not kq and not jx and (not jx and RunService) or kq and not j2 and (RunService or not RunService)) and ((RunService or RunService) and (jx and not j2) or (not RunService or jT or kq and jT))) then
    Window = Library:CreateWindow({
        Title = "Ouroboros Hub",
        Footer = { { Text = jT, Copyable = true }, "|", kL },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0
    })
else
    kL = Window:CreateWindow({
        Title = "Ouroboros Hub",
        Icon = 78539693571783,
        ShowCustomCursor = false,
        NotifySide = "Right",
        CornerRadius = 0,
        Footer = { "|", jT, { Text = Library, Copyable = true } }
    })
end
local kQ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
kQ.Farm = kQ.Main:AddSubTab("Farm", "swords")
kQ.Progress = kQ.Main:AddSubTab("Progress", "trending-up")
jP = "Unknown"
pcall(fn525)
local AccountGroup = kQ.Info:AddLeftGroupbox("Account", "circle-user")
AccountGroup:AddLabel(jB("User", jY.Name, kO), true)
AccountGroup:AddLabel(jB("Status", "Keyless", kO), true)
AccountGroup:AddLabel(jB("Executor", jP, kO), true)
local kK = kQ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
kK:AddLabel(jL(kL .. " [" .. tostring(game.PlaceId) .. "]", kN), true)
kK:AddLabel(jB("Place ID", tostring(game.PlaceId), kN), true)
Label = kK:AddLabel(jB("Session time", "0s", kg), true)
kx = tostring(game.JobId)
local kJ_2 = #kx > 18
if kJ_2 then
    local kA_1 = 1
    repeat
        if (kA_1 * 2 + 5) * 4 % 3 == ((kA_1 * 2 + 5) * 4 + 6) % 3 then
            kJ_2 = string.sub(kx, 1, 18) .. "..."
        else
            kx = string.sub(kJ_2, 1, 18) .. "..."
        end
        kA_1 = (kA_1 + 2) % 4
    until (kA_1 * 3 + 0) % 4 == 1
end
local kA_2 = kJ_2
local k5 = if kA_2 then 1 else 0
local k3 = 1382 * k5 + 3631 * (1 - k5)
local k4 = 2460 * k5 + 1531 * (1 - k5)
if not ((k3 * 866 + k4 * 2116 + k3 * k4) % 16777213 == 9801892) then
    kA_2 = kx
end
kY, kd, kG_2, jM, jJ, jG, jD, jz, kz, ks, kX_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((kG_2 and kG_2 or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w") and (false and not kG_2 or false) and ("#26a17b" or (not kG_2 or not kG_2) or (kG_2 or false) and false) or ("#26a17b" and (kG_2 and jz or not kG_2 and false) or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" and (kG_2 or kG_2) and ((not kG_2 or false) and "#26a17b"))) and not ((kG_2 and kG_2 or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w") and (false and not kG_2 or false) and ("#26a17b" or (not kG_2 or not kG_2) or (kG_2 or false) and false) or ("#26a17b" and (kG_2 and jz or not kG_2 and false) or "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" and (kG_2 or kG_2) and ((not kG_2 or false) and "#26a17b"))) then
    local kA_3 = kd
    kY:AddLabel(kM("Server", kA_3, jB), true)
    kY:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
else
    kY = kA_2
    kK:AddLabel(jB("Server", kY, kM), true)
    kK:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    kd = os.clock()
end
task.spawn(worker)
local ScriptsGroup = kQ.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jL("Included in this hub", kM), true)
ScriptsGroup:AddLabel(jL(kL, kN), true)
local FeaturesGroup = kQ.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(jL("Auto Farm Dungeons", kN), true)
FeaturesGroup:AddLabel(jL("Auto Open Chest", kg), true)
FeaturesGroup:AddLabel(jL("Auto Equip / Buy / Attribute", kO), true)
FeaturesGroup:AddLabel(jL("Auto Rebirth / Train / Click", kM), true)
local SocialsGroup = kQ.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = jU })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = kQ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = jU })
jM = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
jJ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
jG = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
jD = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
jz = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
kz = "https://paypal.me/TheTruckerGOD"
ks = "https://venmo.com/u/miserablemusic"
local kZ = "#345d9d"
if (not kY and false or "https://paypal.me/TheTruckerGOD" or "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99") and not (not kY and false or "https://paypal.me/TheTruckerGOD" or "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99") then
else
    kX_1 = "#f7931a"
end
local kW = "#627eea"
local kV = "#26a17b"
local kU = "#14f195"
local kJ_3 = "#0070ba"
local kI_1 = "#008cff"
local DonationsGroup = kQ.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(jL("All donations are optional but appreciated.", kg), true)
DonationsGroup:AddLabel(jL("If you donate you get a special role, just PING after you donate.", kO), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jL("LTC / Litecoin", kZ), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(jL("BTC / Bitcoin", kX_1), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(jL("ETH / Ethereum", kW), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(jL("USDT", kV), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(jL("Solana", kU), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(jL("PayPal", kJ_3), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(jL("Venmo", kI_1), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jL("Don't have any of the listed currencies but still wanna donate?", kM), true)
DonationsGroup:AddLabel(jL("DM me and we'll work something out.", kN), true)
local FaqGroup = kQ.Info:AddRightGroupbox("FAQ", "circle-help")
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
for k, v in kQ do
    if v ~= kQ.Main and v ~= kQ.Info then
        fn633(v)
    end
end
kn, jR = nil, nil
kn = fn473
jR = function(bE)
    local lK_1
    local lJ_1
    lJ_1, lK_1 = pcall(function()
        return bE:InvokeServer()
    end)
    local lL = lJ_1 and type(lK_1) == "table"
    if lL then
        return lK_1
    end
    return nil
end
local DungeonFarmGroup = kQ.Farm:AddLeftGroupbox("Dungeon Farm", "swords")
DungeonFarmGroup:AddToggle("AutoFarmDungeons", { Text = "Auto Farm Dungeons", Default = false })
DungeonFarmGroup:AddToggle("AutoFarmSelected", { Text = "Auto Farm Selected Dungeon", Default = false })
local kB_2 = {}
local le = 1
local lc = j6
while le <= lc do
    local lf = le
    kB_2[lf] = tostring(lf)
    le += 1
end
jw, j5, j1, ky, kb, CurrentCamera, jF, jC, connection, connection2, kp, kr, kt, j8, jH, j3, km, kh, jX, jQ, ke = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
DungeonFarmGroup:AddDropdown("SelectedStage", { Values = kB_2, Default = "1", Multi = false })
local ChestsGroup = kQ.Farm:AddRightGroupbox("Chests", "gift")
ChestsGroup:AddToggle("AutoOpenChest", { Text = "Auto Open Chest", Default = false })
jw = {}
kS.OnClientEvent:Connect(onOnClientEvent)
kp = fn774
j5 = 1
j1 = nil
task.spawn(autoTrainLoop)
task.spawn(function()
    while true do
        task.wait(0.25)
        if Library.Unloaded then
            break
        end
        if not (Toggles.AutoOpenChest and Toggles.AutoOpenChest.Value) then
            continue
        end
        for k in pairs(jw) do
            local mj = k
            pcall(function()
                kq:FireServer(mj)
            end)
            jw[mj] = nil
        end
        for i, descendant in ipairs(workspace:GetDescendants()) do
            local mp = descendant
            local me_1 = mp:IsA("ProximityPrompt") and mp.ActionText == "Open"
            if me_1 then
                pcall(function()
                    if fireproximityprompt then
                        fireproximityprompt(mp)
                    end
                end)
            end
        end
    end
end)
kL = kQ.Progress:AddLeftGroupbox("Weapons", "sword")
kL:AddToggle("AutoBuyWeapons", { Text = "Auto Buy Weapons", Default = false })
task.spawn(function()
    local mz = false
    repeat
        task.wait(0.6)
        if Library.Unloaded then
            mz = true
        else
            if not not (Toggles.AutoBuyWeapons and Toggles.AutoBuyWeapons.Value) then
                local ms_1 = jR(jN)
                local mt = jR(jI)
                if not (not ms_1 or not mt) then
                    local mu_1 = mt.Trophies or 0
                    local mv_1 = ms_1.Unlocked or {}
                    local WeaponArea = workspace:FindFirstChild("WeaponArea")
                    local mq = ka()
                    if not (not WeaponArea or not mq) then
                        for i, v in ipairs(WeaponConfig.WEAPONS) do
                            local mv_3 = v.UnlockType == "Trophies" and not mv_1[tostring(i)]
                            if mv_3 then
                                if mu_1 >= (v.UnlockCost or math.huge) then
                                    local mr = WeaponArea:FindFirstChild(tostring(i))
                                    if mr and firetouchinterest then
                                        pcall(function()
                                            firetouchinterest(mq, mr, 0)
                                            task.wait(0.1)
                                            firetouchinterest(mq, mr, 1)
                                        end)
                                    end
                                    break
                                end
                            end
                        end
                    end
                end
            end
        end
    until mz
end)
local EquipmentGroup = kQ.Progress:AddRightGroupbox("Equipment", "shirt")
EquipmentGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Equipment", Default = false })
ky = { Common = 1, UnCommon = 2, Rare = 3, Epic = 4, Legendary = 5, Mythical = 6, Exclusive = 7 }
kr = fn813
task.spawn(function()
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        if not (Toggles.AutoEquipBest and Toggles.AutoEquipBest.Value) then
            continue
        end
        local mR_1 = jR(jK)
        local mS = not mR_1 or type(mR_1.Items) ~= "table"
        if mS then
            continue
        end
        local mS_1 = {}
        for i, v in ipairs(mR_1.Items) do
            local Slot = v.Slot
            if Slot then
                local mU_1 = mS_1[Slot]
                local mV = not mU_1 or kr(v) > kr(mU_1)
                if mV then
                    mS_1[Slot] = v
                end
            end
        end
        local mU_2 = mR_1.Equipped or {}
        for k, v in pairs(mS_1) do
            local m7 = v
            if mU_2[k] ~= m7.Uid then
                pcall(function()
                    kw:InvokeServer(m7.Uid)
                end)
            end
        end
    end
end)
kM = kQ.Progress:AddLeftGroupbox("Attributes", "star")
kM:AddToggle("AutoAttribute", { Text = "Auto Attribute", Default = false })
kM:AddDropdown("AttributeStat", { Values = { "Attack", "Defense", "Health" }, Default = "Attack", Multi = false })
task.spawn(function()
    local ne = false
    repeat
        local Value
        task.wait(0.5)
        if Library.Unloaded then
            ne = true
        else
            if not not (Toggles.AutoAttribute and Toggles.AutoAttribute.Value) then
                local na_1 = jR(jA)
                if not not na_1 then
                    local m9 = na_1.AvailablePoints or 0
                    if m9 > 0 then
                        Value = Options.AttributeStat.Value
                        pcall(function()
                            kj:FireServer(Value, m9)
                        end)
                    end
                end
            end
        end
    until ne
end)
local RebirthGroup = kQ.Progress:AddRightGroupbox("Rebirth", "rotate-ccw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
task.spawn(autoRebirthLoop)
kN = kQ.Progress:AddRightGroupbox("Auto Click", "mouse-pointer-click")
kN:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
kt = fn511
j8 = fn484
Toggles.AutoClick:OnChanged(j8)
task.spawn(autoClickLoop)
local AutoTrainGroup = kQ.Progress:AddLeftGroupbox("Auto Train", "dumbbell")
AutoTrainGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
jH = fn621
kb = nil
task.spawn(autoTrainLoop2)
local MovementGroup = kQ.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = kQ.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn114)
Toggles.WalkSpeedEnabled:OnChanged(fn67)
j3 = function(e3)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not e3)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not e3
        end
    end)
    if not e3 then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(jY, "GameplayPaused", false)
        else
            jY.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn580)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = kQ.Settings:AddLeftGroupbox("Menu", "settings")
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
jF = tick()
jC = tick()
pcall(function()
    for i, v in ipairs(getconnections(jY.Idled)) do
        local op = v
        pcall(function()
            op:Disable()
        end)
    end
end)
km = fn253
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
Library:OnUnload(fn365)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(kQ.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/AnimeLootUpgrade")
kK = SaveManager:BuildConfigSection(kQ.Settings)
kh = fn382
jX = fn206
jQ = fn699
if not jw or kM or not jw and not j1 or (not jw or not jw) and (not kM and not kM) or (kM or not jw) and (not jw or j1) and (not jw or not jw or (j1 or not jw)) or not (not jw or kM or not jw and not j1 or (not jw or not jw) and (not kM and not kM) or (kM or not jw) and (not jw or j1) and (not jw or not jw or (j1 or not jw))) then
    ke = function(ga)
        local o8
        o8 = nil
        local o9 = type(ga) ~= "table" or type(ga.idx) ~= "string" or type(ga.type) ~= "string" or SaveManager.Ignore[ga.idx]
        if o9 then
            return false
        end
        o8 = kh(ga.type, ga.idx)
        if not o8 then
            return false
        end
        local o9_1 = pcall(function()
            if ga.type == "Input" then
                if type(ga.text) ~= "string" then
                    return
                end
                o8:SetValue(ga.text)
            elseif ga.type == "ColorPicker" then
                o8:SetValueRGB(Color3.fromHex(ga.value), ga.transparency)
            elseif ga.type == "KeyPicker" then
                o8:SetValue({ ga.key, ga.mode, ga.modifiers })
                if ga.mode == "Toggle" and ga.toggled ~= nil then
                    o8.Toggled = ga.toggled
                    o8:Update()
                end
            else
                o8:SetValue(ga.value)
            end
        end)
        return o9_1
    end
end
kK:AddDivider()
kK:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
kK:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
kK:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
