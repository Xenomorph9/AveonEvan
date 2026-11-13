local gC
local UserInputService
local gF
local g0
local LocalPlayer
local g3
local gp
local gL
local connection
local gs
local TycoonUtil
local gv
local gR
local gy
local gU
local gB
local gX
local gE
local g_
local gH
local g2
local connection2
local g5
local go
local gr
local g8
local gQ
local VirtualUser
local Toggles
local CollectMoneyTS
local gD
local gZ
local Options
local CurrentCamera
local g4
local Label
local gq
local g7
local gM
local gt
local HttpService
local gw
local gS
local gz
local gV
local function onCopyUSDTAddress()
    gq(gR, "Copied USDT address")
end
local function onCopyBitcoinAddress()
    gq(gZ, "Copied Bitcoin address")
end
local function fn33(c9, da)
    local Type = da.Type
    if Type == "Toggle" then
        return { idx = c9, type = "Toggle", value = da.Value == true }
    elseif Type == "Slider" then
        return { idx = c9, type = "Slider", value = tostring(da.Value) }
    elseif Type == "Dropdown" then
        return { idx = c9, type = "Dropdown", multi = da.Multi == true, value = da.Value }
    elseif Type == "Input" then
        local jI = da.Value or ""
        return { idx = c9, type = "Input", text = tostring(jI) }
    elseif Type == "ColorPicker" then
        return { idx = c9, type = "ColorPicker", value = da.Value:ToHex(), transparency = da.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = c9,
            type = "KeyPicker",
            mode = da.Mode,
            key = da.Value,
            modifiers = da.Modifiers,
            toggled = da.Toggled
        }
    else
        return nil
    end
end
local function onInputChanged(cL)
    local UserInputType = cL.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        g_ = tick()
    end
end
local function fn57()
    gq(gv, "Copied Discord invite to clipboard")
end
local function onStepped()
    if gp.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local iP_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if iP_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn97()
    local Character = LocalPlayer.Character
    local iN = Character and Character:FindFirstChild("HumanoidRootPart")
    return iN
end
local function fn99()
    g2(Toggles.AntiGameplayPause.Value)
end
local function fn192(ar)
    local DiscordGroup = ar:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gX })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gX })
end
local function fn243()
    local io = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
    if io and io.Name then
        gM = io.Name
    end
end
local function fn244()
    if not Toggles.Fly.Value then
        local i5 = gt()
        if i5 then
            i5.PlatformStand = false
        end
    end
end
local function antiAfkLoop()
    while not gp.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local jw = tick() - g_
            local jx = tick() - gV
            if jw >= 300 and jx >= 60 then
                pcall(gz)
            else
                if jw < 300 and jx >= 300 then
                    pcall(gz)
                end
            end
        end
    end
end
local function fn290(ak, al)
    if setclipboard then
        setclipboard(ak)
    elseif toclipboard then
        toclipboard(ak)
    end
    gp:Notify(al)
end
local function fn291(ax, ay)
    return string.format('<font color="%s">%s</font>', ay, ax)
end
local function fn365(c1, c2)
    local jB = c1 == "Toggle" and Toggles
    local jG = if jB then 1 else 0
    local jE = 248 * jG + 505 * (1 - jG)
    local jF = 1144 * jG + 1299 * (1 - jG)
    if not ((jE * 3131 + jF * 2687 + jE * jF) % 16777213 == 4134128) then
        jB = Options
    end
    local jB_1 = jB[c2]
    local jA_2 = type(jB_1) == "table" and jB_1.Type == c1
    local jA_3 = jA_2 and jB_1
    local jG_1 = if jA_3 then 1 else 0
    local jE_1 = 2662 * jG_1 + 2285 * (1 - jG_1)
    local jF_1 = 1728 * jG_1 + 1245 * (1 - jG_1)
    if not ((jE_1 * 878 + jF_1 * 1190 + jE_1 * jF_1) % 16777213 == 8993492) then
        jA_3 = nil
    end
    return jA_3
end
local function onCopyJoinScript_JobID()
    local iD = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, gE)
    if setclipboard then
        setclipboard(iD)
    elseif toclipboard then
        toclipboard(iD)
    end
    gp:Notify("Copied join script to clipboard")
end
local function onExportConfigToClipboard()
    local j8_1
    local j7_1
    j7_1, j8_1 = pcall(HttpService.JSONEncode, HttpService, gS())
    if not j7_1 then
        gp:Notify("Failed to encode the config")
        return
    end
    local j7_2 = setclipboard or toclipboard
    local j7_3 = type(j7_2) ~= "function" or not pcall(j7_2, j8_1)
    if j7_3 then
        gp:Notify("Your executor does not support copying to the clipboard")
        return
    end
    gp:Notify("Config copied to clipboard", 6)
end
local function fn381()
    local hF = TycoonUtil:GetTycoonsFolder()
    for i, child in ipairs(hF:GetChildren()) do
        local hF_1 = TycoonUtil:GetOwner(child)
        if hF_1 and hF_1 == LocalPlayer then
            return child
        end
    end
    return nil
end
local function fn382()
    gD.X = gD.X + 1
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    g2(false)
end
local function fn407(K, L, M)
    M = M or 0
    if M > 8 then
        return nil
    end
    for i, child in ipairs(K:GetChildren()) do
        if child.Name == L then
            return child
        end
        local hP_1 = gQ(child, L, M + 1)
        if hP_1 then
            return hP_1
        end
    end
    return nil
end
local function worker()
    local iG_1
    while true do
        task.wait(1)
        if gp.Unloaded then
            break
        end
        local iF = math.floor(os.clock() - g8)
        if iF < 60 then
            iG_1 = iF .. "s"
        elseif iF < 3600 then
            iG_1 = string.format("%dm %ds", iF // 60, iF % 60)
        else
            iG_1 = string.format("%dh %dm", iF // 3600, iF % 3600 // 60)
        end
        Label:SetText(g0("Session time", iG_1, gw))
    end
end
local function onRenderStepped(b2)
    if gp.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local iZ_1 = gt()
        if iZ_1 then
            iZ_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local iZ_3 = g3()
        local i_ = gt()
        if iZ_3 and i_ then
            i_.PlatformStand = true
            local i__1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                i__1 = i__1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                i__1 = i__1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                i__1 = i__1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                i__1 = i__1 + CurrentCamera.CFrame.RightVector
            end
            local i4 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if i4 == 1 then
                i__1 = i__1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                i__1 = i__1 - Vector3.new(0, 1, 0)
            end
            iZ_3.Velocity = Vector3.zero
            if i__1.Magnitude > 0 then
                iZ_3.CFrame = iZ_3.CFrame + i__1.Unit * Options.FlySpeed.Value * b2
            end
        end
    end
end
local function fn455(aA, aB, aC)
    return string.format("<b>%s</b> %s %s", aA, go("-", "#5a6070"), go(aB, aC))
end
local function fn474()
    gp:Notify({ Title = "Ouroboros", Description = "Loaded for " .. gM, Time = 4 })
end
local function onCopyVenmoLink()
    gq(gC, "Copied Venmo link")
end
local function onInputBegan()
    g_ = tick()
end
local function fn503()
    if not Toggles.WalkSpeedEnabled.Value then
        local i7 = gt()
        if i7 then
            i7.WalkSpeed = 16
        end
    end
end
local function onCopyEthereumAddress()
    gq(gU, "Copied Ethereum address")
end
local function fn530()
    local Character = LocalPlayer.Character
    local iK = Character and Character:FindFirstChildOfClass("Humanoid")
    return iK
end
local function fn538()
    local iw_1
    local iv_1
    if identifyexecutor then
        iw_1, iv_1 = identifyexecutor()
        local ix = iw_1 ~= ""
        local iy = type(iw_1) == "string" and ix
        if iy then
            local ix_1 = type(iv_1) == "string" and iv_1 ~= "" and iw_1 .. " " .. iv_1
            gr = ix_1 or iw_1
        end
    end
end
local function antiGameplayPauseLoop()
    while not gp.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            g2(true)
        end
    end
end
local function fn570()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gV = tick()
end
local function fn575()
    g5:LoadAutoloadConfig()
end
local function onCopyPayPalLink()
    gq(gF, "Copied PayPal link")
end
local function onJumpRequest()
    if gp.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local iX_1 = gt()
        if iX_1 then
            iX_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn644()
    return not (getgenv().X ~= gB)
end
local function onRscripts()
    if setclipboard then
        setclipboard(gs)
    elseif toclipboard then
        toclipboard(gs)
    end
    gp:Notify("Copied Rscripts profile to clipboard")
end
local function onImportConfigFromClipboardTex()
    local kd_1
    local kb = Options.SaveManager_ImportSource.Value or ""
    local kb_1
    local kc = tostring(kb):match("^%s*(.-)%s*$")
    if kc == "" then
        gp:Notify("Paste an exported config into the box first")
        return
    end
    kb_1, kd_1 = pcall(HttpService.JSONDecode, HttpService, kc)
    local kc_1 = not kb_1 or type(kd_1) ~= "table" or type(kd_1.objects) ~= "table"
    if kc_1 then
        gp:Notify("That is not a valid exported config")
        return
    end
    local kb_2 = 0
    for i, v in ipairs(kd_1.objects) do
        if gH(v) then
            kb_2 += 1
        end
    end
    if kb_2 == 0 then
        gp:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local kd_2 = kb_2 == 1 and ""
    local kh = if kd_2 then 1 else 0
    local kf = 2869 * kh + 1655 * (1 - kh)
    local kg = 3718 * kh + 2359 * (1 - kh)
    if not ((kf * 4001 + kg * 1028 + kf * kg) % 16777213 == 9190702) then
        kd_2 = "s"
    end
    gp:Notify(("Imported %d setting%s"):format(kb_2, kd_2), 6)
end
local function autoCollectIncomeLoop()
    while true do
        local ko = gy() and not gp.Unloaded
        if ko then
            if Toggles.AutoCollectIncome.Value then
                pcall(function()
                    CollectMoneyTS:Fire()
                end)
            end
            local wait = task.wait
            local kp = Options.CollectInterval.Value or 1
            wait(kp)
            continue
        end
        break
    end
end
local function onUnload()
    gp:Unload()
end
local function fn697()
    local jL = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local jM = type(v) == "table" and type(v.Type) == "string" and not g5.Ignore[k]
            if jM then
                local jM_1 = g7(k, v)
                if jM_1 then
                    jL[#jL + 1] = jM_1
                end
            end
        end
    end
    table.sort(jL, function(dn, dp)
        if dn.type ~= dp.type then
            return dn.type < dp.type
        end
        return dn.idx < dp.idx
    end)
    return { objects = jL }
end
local function onCopySolanaAddress()
    gq(gL, "Copied Solana address")
end
local function onCopyLitecoinAddress()
    gq(g4, "Copied Litecoin address")
end
go = nil
gp = nil
gq = nil
gr = nil
gs = nil
gt = nil
gv = nil
gw = nil
gy = nil
gz = nil
CollectMoneyTS = nil
gB = nil
gC = nil
gD = nil
gE = nil
gF = nil
CurrentCamera = nil
gH = nil
LocalPlayer = nil
Label = nil
connection2 = nil
gL = nil
gM = nil
TycoonUtil = nil
HttpService = nil
gQ = nil
gR = nil
gS = nil
VirtualUser = nil
gU = nil
gV = nil
Toggles = nil
gX = nil
UserInputService = nil
gZ = nil
g_ = nil
g0 = nil
Options = nil
g2 = nil
g3 = nil
g4 = nil
g5 = nil
connection = nil
g7 = nil
g8 = nil
local gu, gx, gN, g9
local Players
local hx_1
local hv_1
local ht_1
local hn_1
local hm_1
local hl_1
local hb_1, hb_3
local hh_1
Players, UserInputService, VirtualUser, HttpService, LocalPlayer, gD = nil, nil, nil, nil, nil, nil
if (not LocalPlayer or Players) and (gD and gD) and (not gD and gD or (not gD or not HttpService)) or not ((not LocalPlayer or Players) and (gD and gD) and (not gD and gD or (not gD or not HttpService))) then
    Players = game:GetService("Players")
else
    gD = game:GetService("Players")
end
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local hc_1
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = Players.LocalPlayer
gD = getgenv()
local ha_2 = gD.X or 0
gB, hb_1, gp, g5, Options, Toggles, hh_1, TycoonUtil, CollectMoneyTS, gx, gM, gv, gs, gw, gr, Label, gE, gy, gu, gQ, g9, gq, gX, go, g0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gD.X = ha_2 + 1
gB = gD.X
gy = fn644
if (gq and false or not gr and gr or (gr or not hh_1) and (gq or false)) and ((gq or false) and (not gq) and (not gr or hh_1 or (gq or false))) and not ((gq and false or not gr and gr or (gr or not hh_1) and (gq or false)) and ((gq or false) and (not gq) and (not gr or hh_1 or (gq or false)))) then
    g9 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    hb_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
gp = loadstring(game:HttpGet(hb_1 .. "Library.lua"))()
local hr = loadstring(game:HttpGet(hb_1 .. "addons/ThemeManager.lua"))()
g5 = loadstring(game:HttpGet(hb_1 .. "addons/SaveManager.lua"))()
Options = gp.Options
Toggles = gp.Toggles
TycoonUtil = require(ReplicatedStorage.Shared.Utilities.TycoonUtil)
local Remotes = require(ReplicatedStorage.Shared.Modules.Pronghorn.Remotes)
local NetworkedVariable = require(ReplicatedStorage.Shared.Modules.NetworkedVariable)
local hf_1
CollectMoneyTS = Remotes.Client.TycoonService.CollectMoneyTS
gx = NetworkedVariable.new("MoneyNetworked")
gu = fn381
gQ = fn407
g9 = function()
    local h8 = gu()
    if not h8 then
        return {}
    end
    local h9 = gQ(h8, "Buttons")
    if not h9 then
        return {}
    end
    local h8_1 = gx:GetValue()
    local ia = {}
    for i, child in ipairs(h9:GetChildren()) do
        local h7
        local im = child
        local attr = im:GetAttribute("Price")
        if attr and h8_1 >= attr then
            h7 = nil
            pcall(function()
                h7 = im.PrimaryPart
                if not h7 then
                    for i, descendant in ipairs(im:GetDescendants()) do
                        local hX = descendant:IsA("BasePart") and descendant:FindFirstChildOfClass("TouchTransmitter")
                        if hX then
                            h7 = descendant
                            break
                        end
                    end
                end
            end)
            if h7 then
                table.insert(ia, { model = im, part = h7, price = attr })
            end
        end
    end
    return ia
end
if ((CollectMoneyTS and CollectMoneyTS or (not CollectMoneyTS or false)) and (CollectMoneyTS or gM or CollectMoneyTS and gM) or (false and gM or false or (not CollectMoneyTS or gM) and "#6ec1ff")) and ((false or gM or false) and (not CollectMoneyTS and CollectMoneyTS or (CollectMoneyTS or gM)) and ((CollectMoneyTS and false or false and not CollectMoneyTS) and (CollectMoneyTS and CollectMoneyTS and (not CollectMoneyTS or not gM)))) and not (((CollectMoneyTS and CollectMoneyTS or (not CollectMoneyTS or false)) and (CollectMoneyTS or gM or CollectMoneyTS and gM) or (false and gM or false or (not CollectMoneyTS or gM) and "#6ec1ff")) and ((false or gM or false) and (not CollectMoneyTS and CollectMoneyTS or (CollectMoneyTS or gM)) and ((CollectMoneyTS and false or false and not CollectMoneyTS) and (CollectMoneyTS and CollectMoneyTS and (not CollectMoneyTS or not gM))))) then
else
    gM = "Penthouse Tycoon"
end
pcall(fn243)
setthreadidentity(8)
gv = "https://discord.gg/ehKVq7pf7v"
gs = "https://rscripts.net/@Ouroboros"
gq = fn290
gX = fn57
local Window = gp:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = gv, Copyable = true }, "|", gM },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local hp = {
    Info = Window:AddTab("Info", "info"),
    Farming = Window:AddTab("Farming", "warehouse"),
    Inventory = Window:AddTab("Inventory", "package"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
go = fn291
g0 = fn455
hn_1, hm_1, gw, hl_1 = "#7fd47f", "#6ec1ff", "#e8a34d", "#8b93a3"
gr = "Unknown"
pcall(fn538)
local AccountGroup = hp.Info:AddLeftGroupbox("Account", "circle-user")
local hi_1
AccountGroup:AddLabel(g0("User", LocalPlayer.Name, hn_1), true)
AccountGroup:AddLabel(g0("Status", "Keyless", hn_1), true)
AccountGroup:AddLabel(g0("Executor", gr, hn_1), true)
local GameInfoGroup = hp.Info:AddLeftGroupbox("Game Info", "gamepad-2")
GameInfoGroup:AddLabel(go(gM .. " [" .. tostring(game.PlaceId) .. "]", hm_1), true)
GameInfoGroup:AddLabel(g0("Place ID", tostring(game.PlaceId), hm_1), true)
Label = GameInfoGroup:AddLabel(g0("Session time", "0s", gw), true)
gE = tostring(game.JobId)
local hk = #gE > 18
if hk then
    local ha_3 = 2
    repeat
        local hb_2 = {
            "imlbedti",
            "nwxomumidsf",
            "izwica",
            "beloffgxwkz",
            "qmkrtum",
            "pfuxvrumkpc",
            "iejuldrqsgub",
            "vynpuntup",
            "gyu",
            "wcm",
            "ayltdjvjhdx",
            "hxxdslvj",
            "bpszkn"
        }
        if hb_2[(ha_3 * 1 + 7) % 13 + 1] <= hb_2[(ha_3 * 1 + 7) % 13 + 1] then
            hk = string.sub(gE, 1, 18) .. "..."
        else
            gE = string.sub(hk, 1, 18) .. "..."
        end
        ha_3 = (ha_3 + 2) % 8
    until (ha_3 * 1 + 2) % 8 == 6
end
local ha_4 = hk or gE
g8, g4, gZ, gU, gR, gL, gF, gC = nil, nil, nil, nil, nil, nil, nil, nil
GameInfoGroup:AddLabel(g0("Server", ha_4, hl_1), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
g8 = os.clock()
task.spawn(worker)
local ScriptsGroup = hp.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(go("Included in this hub", hl_1), true)
ScriptsGroup:AddLabel(go(gM, hm_1), true)
local FeaturesGroup = hp.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(go("Auto Collect Income", hm_1), true)
FeaturesGroup:AddLabel(go("Auto Buy Buttons", gw), true)
FeaturesGroup:AddLabel(go("Player Movement", hl_1), true)
local SocialsGroup = hp.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = gX })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hp.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gX })
g4 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
gZ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
gU = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
gR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
gL = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
gF = "https://paypal.me/TheTruckerGOD"
gC = "https://venmo.com/u/miserablemusic"
hi_1, hf_1, hc_1, hb_3, hx_1, hv_1, ht_1 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
local DonationsGroup = hp.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(go("All donations are optional but appreciated.", gw), true)
DonationsGroup:AddLabel(go("If you donate you get a special role, just PING after you donate.", hn_1), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(go("LTC / Litecoin", hi_1), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(go("BTC / Bitcoin", hf_1), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(go("ETH / Ethereum", hc_1), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(go("USDT", hb_3), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(go("Solana", hx_1), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(go("PayPal", hv_1), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(go("Venmo", ht_1), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(go("Don't have any of the listed currencies but still wanna donate?", hl_1), true)
DonationsGroup:AddLabel(go("DM me and we'll work something out.", hm_1), true)
local FaqGroup = hp.Info:AddRightGroupbox("FAQ", "circle-help")
if not ScriptsGroup and not ScriptsGroup and (ScriptsGroup and not hc_1) and (SocialsGroup and SocialsGroup and (hc_1 and hc_1)) and ((ScriptsGroup or not hc_1) and (SocialsGroup or not hc_1) or (not ScriptsGroup and ScriptsGroup or not hc_1 and ScriptsGroup)) or (ScriptsGroup or SocialsGroup or hc_1 and ScriptsGroup) and ((SocialsGroup or hc_1) and (not SocialsGroup and hc_1)) and (not hc_1 or hc_1 or not ScriptsGroup and not SocialsGroup or (hc_1 or ScriptsGroup or (not SocialsGroup or hc_1))) or not (not ScriptsGroup and not ScriptsGroup and (ScriptsGroup and not hc_1) and (SocialsGroup and SocialsGroup and (hc_1 and hc_1)) and ((ScriptsGroup or not hc_1) and (SocialsGroup or not hc_1) or (not ScriptsGroup and ScriptsGroup or not hc_1 and ScriptsGroup)) or (ScriptsGroup or SocialsGroup or hc_1 and ScriptsGroup) and ((SocialsGroup or hc_1) and (not SocialsGroup and hc_1)) and (not hc_1 or hc_1 or not ScriptsGroup and not SocialsGroup or (hc_1 or ScriptsGroup or (not SocialsGroup or hc_1)))) then
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
local IncomeCollectionGroup = hp.Farming:AddRightGroupbox("Income Collection", "coins")
IncomeCollectionGroup:AddToggle("AutoCollectIncome", { Text = "Auto Collect Income", Default = false })
IncomeCollectionGroup:AddSlider("CollectInterval", { Text = "Collect Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
local ButtonPurchasingGroup = hp.Inventory:AddRightGroupbox("Button Purchasing", "shopping-cart")
ButtonPurchasingGroup:AddToggle("AutoBuyButtons", { Text = "Auto Buy All Buttons", Default = false })
ButtonPurchasingGroup:AddSlider("BuyInterval", { Text = "Buy Interval", Default = 0.3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
ButtonPurchasingGroup:AddToggle("OnlyAffordable", { Text = "Only Buy If Affordable", Default = true })
ButtonPurchasingGroup:AddToggle("TeleportToButtons", { Text = "Teleport to Buttons", Default = false })
CurrentCamera, g_, gV, connection, connection2, gt, g3, g2, gz, gN, g7, gS, gH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fn192(hp.Farming)
fn192(hp.Inventory)
fn192(hp.Player)
local MovementGroup = hp.Player:AddRightGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = hp.Player:AddLeftGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
gt = fn530
g3 = fn97
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn244)
Toggles.WalkSpeedEnabled:OnChanged(fn503)
g2 = function(cn)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not cn)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not cn
        end
    end)
    if not cn then
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
Toggles.AntiGameplayPause:OnChanged(fn99)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = hp.Settings:AddLeftGroupbox("Menu", "wrench")
g_ = tick()
gV = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local jn = v
        pcall(function()
            jn:Disable()
        end)
    end
end)
gz = fn570
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
MenuGroup:AddButton("Unload", onUnload)
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
gp.ToggleKeybind = Options.MenuKeybind
hr:SetLibrary(gp)
g5:SetLibrary(gp)
g5:IgnoreThemeSettings()
g5:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
hr:SetFolder("OuroborosHub")
g5:SetFolder("OuroborosHub/PenthouseTycoon")
g5:SetSubFolder(tostring(game.PlaceId))
local hg_2 = g5:BuildConfigSection(hp.Settings)
hr:ApplyToTab(hp.Settings)
hr:SaveDefault("Evil Hello Kitty")
hr:LoadDefault()
gN = fn365
g7 = fn33
gS = fn697
gH = function(dr)
    local j4
    j4 = nil
    local j5 = type(dr) ~= "table" or type(dr.idx) ~= "string" or type(dr.type) ~= "string" or g5.Ignore[dr.idx]
    if j5 then
        return false
    end
    j4 = gN(dr.type, dr.idx)
    if not j4 then
        return false
    end
    local j5_1 = pcall(function()
        if dr.type == "Input" then
            if type(dr.text) ~= "string" then
                return
            end
            j4:SetValue(dr.text)
        elseif dr.type == "ColorPicker" then
            j4:SetValueRGB(Color3.fromHex(dr.value), dr.transparency)
        elseif dr.type == "KeyPicker" then
            j4:SetValue({ dr.key, dr.mode, dr.modifiers })
            if dr.mode == "Toggle" and dr.toggled ~= nil then
                j4.Toggled = dr.toggled
                j4:Update()
            end
        else
            j4:SetValue(dr.value)
        end
    end)
    return j5_1
end
hg_2:AddDivider()
hg_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
hg_2:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
hg_2:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
pcall(fn575)
task.spawn(autoCollectIncomeLoop)
task.spawn(function()
    local kB = false
    repeat
        local kx = gy() and not gp.Unloaded
        if kx then
            if Toggles.AutoBuyButtons.Value then
                local Character = LocalPlayer.Character
                local ky_1 = Character and Character:FindFirstChild("HumanoidRootPart")
                local kw = ky_1
                if kw then
                    local kx_2 = g9()
                    for i, v in ipairs(kx_2) do
                        local kH = v
                        local kx_3 = not gy() or gp.Unloaded
                        if kx_3 then
                            break
                        elseif not Toggles.AutoBuyButtons.Value then
                            break
                        else
                            local kx_4 = not Toggles.OnlyAffordable.Value
                            if not kx_4 then
                                local ky_2 = kH.price and gx:GetValue() >= kH.price
                                kx_4 = ky_2
                            end
                            if kx_4 then
                                pcall(function()
                                    if Toggles.TeleportToButtons.Value then
                                        kw.CFrame = kH.part.CFrame + Vector3.new(0, 3, 0)
                                        task.wait(0.1)
                                    end
                                    firetouchinterest(kw, kH.part, 0)
                                    task.wait(0.05)
                                    firetouchinterest(kw, kH.part, 1)
                                end)
                            end
                            task.wait(0.05)
                        end
                    end
                end
            end
            local wait = task.wait
            local ky_3 = Options.BuyInterval.Value
            local kK = if ky_3 then 1 else 0
            local kI = 1445 * kK + 1267 * (1 - kK)
            local kJ = 1439 * kK + 1110 * (1 - kK)
            if not ((kI * 2178 + kJ * 64 + kI * kJ) % 16777213 == 5318661) then
                ky_3 = 0.3
            end
            wait(ky_3)
        else
            kB = true
        end
    until kB
end)
gp:OnUnload(fn382)
pcall(fn474)
