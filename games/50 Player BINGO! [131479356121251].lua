local gJ
local gn
local VirtualUser
local gq
local gt
local gP
local gw
local UserInputService
local gz
local gV
local gC
local gY
local g0
local gm
local gI
local Options
local gp
local gs
local gO
local CurrentCamera
local gv
local gy
local gU
local gB
local gX
local g_
local gE
local gl
local g2
local gH
local connection
local HttpService
local gr
local connection2
local gu
local gQ
local gx
local gT
local gA
local gW
local gD
local gZ
local LocalPlayer
local g1
local function onCopyUSDTAddress()
    gI(g1, "Copied USDT address")
end
local function onInputBegan()
    g0 = tick()
end
local function onCopyEthereumAddress()
    gI(gl, "Copied Ethereum address")
end
local function fn111()
    gm(gQ.AntiGameplayPause.Value)
end
local function onCopyPayPalLink()
    gI(gU, "Copied PayPal link")
end
local function fn156(c2, c3)
    local jD_1 = (c2 == "Toggle" and gQ or Options)[c3]
    local jC_2 = type(jD_1) == "table" and jD_1.Type == c2
    return jC_2 and jD_1 or nil
end
local function fn169()
    local Character = LocalPlayer.Character
    local iD = Character and Character:FindFirstChild("HumanoidRootPart")
    return iD
end
local function fn172()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    gZ = tick()
end
local function fn173()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local ic = leaderstats and leaderstats:FindFirstChild("Cash")
    local ib_1 = ic
    if ic then
        ic = ib_1.Value
    end
    return ic or 0
end
local function onCopyVenmoLink()
    gI(gP, "Copied Venmo link")
end
local function onUnload()
    g2:Unload()
end
local function fn216()
    LocalPlayer:SetAttribute("GoldenMarker", gQ.AutoStamp.Value == true)
    LocalPlayer:SetAttribute("AutoBingo", gQ.AutoBingo.Value == true)
end
local function fn218(ba, bb)
    local h8 = LocalPlayer:GetAttribute(ba) or ""
    return ("," .. h8 .. ","):find("," .. bb .. ",", 1, true) ~= nil
end
local function onStepped()
    if g2.Unloaded then
        return
    end
    if gQ.NoClip and gQ.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local iI_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if iI_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local kl_1
    local kj = Options.SaveManager_ImportSource.Value or ""
    local kj_1
    local kk = tostring(kj):match("^%s*(.-)%s*$")
    if kk == "" then
        g2:Notify("Paste an exported config into the box first")
        return
    end
    kj_1, kl_1 = pcall(HttpService.JSONDecode, HttpService, kk)
    local kk_1 = not kj_1 or type(kl_1) ~= "table"
    local kp = if kk_1 then 1 else 0
    local kn = 164 * kp + 2137 * (1 - kp)
    local ko = 2510 * kp + 3927 * (1 - kp)
    if not ((kn * 2498 + ko * 2996 + kn * ko) % 16777213 == 8341272) then
        kk_1 = type(kl_1.objects) ~= "table"
    end
    if kk_1 then
        g2:Notify("That is not a valid exported config")
        return
    end
    local kj_2 = 0
    for i, v in ipairs(kl_1.objects) do
        if gC(v) then
            kj_2 += 1
        end
    end
    if kj_2 == 0 then
        g2:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local kl_2 = kj_2 == 1 and "" or "s"
    g2:Notify(("Imported %d setting%s"):format(kj_2, kl_2), 6)
end
local function onInputChanged(cJ)
    local UserInputType = cJ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        g0 = tick()
    end
end
local function fn289()
    local Character = LocalPlayer.Character
    local iA = Character and Character:FindFirstChildOfClass("Humanoid")
    return iA
end
local function autoStampLoop()
    while true do
        task.wait(1)
        if g2.Unloaded then
            break
        end
        if gQ.AutoStamp.Value or gQ.AutoBingo.Value then
            gW()
        end
    end
end
local function onCopyLitecoinAddress()
    gI(gu, "Copied Litecoin address")
end
local function onJumpRequest()
    if g2.Unloaded then
        return
    end
    if gQ.InfJump and gQ.InfJump.Value then
        local iT_1 = gB()
        if iT_1 then
            iT_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn325()
    gI(gv, "Copied Discord invite to clipboard")
end
local function onRenderStepped(b_)
    if g2.Unloaded then
        return
    end
    if gQ.WalkSpeedEnabled and gQ.WalkSpeedEnabled.Value then
        local iV_1 = gB()
        if iV_1 then
            iV_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if gQ.Fly and gQ.Fly.Value then
        local iV_3 = gn()
        local iW = gB()
        if iV_3 and iW then
            iW.PlatformStand = true
            local iW_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                iW_1 = iW_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                iW_1 = iW_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                iW_1 = iW_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                iW_1 = iW_1 + CurrentCamera.CFrame.RightVector
            end
            local i3 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if i3 == 1 then
                iW_1 = iW_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                iW_1 = iW_1 - Vector3.new(0, 1, 0)
            end
            iV_3.Velocity = Vector3.zero
            if iW_1.Magnitude > 0 then
                iV_3.CFrame = iV_3.CFrame + iW_1.Unit * Options.FlySpeed.Value * b_
            end
        end
    end
end
local function worker()
    local h0_1
    while true do
        task.wait(1)
        if g2.Unloaded then
            break
        end
        local h_ = math.floor(os.clock() - gy)
        if h_ < 60 then
            h0_1 = h_ .. "s"
        elseif h_ < 3600 then
            h0_1 = string.format("%dm %ds", h_ // 60, h_ % 60)
        else
            h0_1 = string.format("%dh %dm", h_ // 3600, h_ % 3600 // 60)
        end
        gY:SetText(gs("Session time", h0_1, gJ))
    end
end
local function onCopySolanaAddress()
    gI(g_, "Copied Solana address")
end
local function fn457(da, db)
    local Type = db.Type
    if Type == "Toggle" then
        return { idx = da, type = "Toggle", value = db.Value == true }
    elseif Type == "Slider" then
        return { idx = da, type = "Slider", value = tostring(db.Value) }
    elseif Type == "Dropdown" then
        return { idx = da, type = "Dropdown", multi = db.Multi == true, value = db.Value }
    elseif Type == "Input" then
        local jK = db.Value
        local jO = if jK then 1 else 0
        local jM = 800 * jO + 3735 * (1 - jO)
        local jN = 1514 * jO + 1027 * (1 - jO)
        if not ((jM * 3394 + jN * 241 + jM * jN) % 16777213 == 4291274) then
            jK = ""
        end
        return { idx = da, type = "Input", text = tostring(jK) }
    elseif Type == "ColorPicker" then
        return { idx = da, type = "ColorPicker", value = db.Value:ToHex(), transparency = db.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = da,
            type = "KeyPicker",
            mode = db.Mode,
            key = db.Value,
            modifiers = db.Modifiers,
            toggled = db.Toggled
        }
    else
        return nil
    end
end
local function fn471()
    local hR_1
    local hQ_1
    if identifyexecutor then
        hR_1, hQ_1 = identifyexecutor()
        local hS = hR_1 ~= ""
        local hT = type(hR_1) == "string" and hS
        if hT then
            local hS_1 = type(hQ_1) == "string" and hQ_1 ~= "" and hR_1 .. " " .. hQ_1
            gD = hS_1 or hR_1
        end
    end
end
local function fn495()
    if not gQ.WalkSpeedEnabled.Value then
        local i9 = gB()
        if i9 then
            i9.WalkSpeed = 16
        end
    end
end
local function fn511()
    local jQ = {}
    for i, v in ipairs({ gQ, Options }) do
        for k, v in pairs(v) do
            local jR = type(v) == "table" and type(v.Type) == "string" and not gV.Ignore[k]
            if jR then
                local jR_1 = gX(k, v)
                if jR_1 then
                    jQ[#jQ + 1] = jR_1
                end
            end
        end
    end
    table.sort(jQ, function(dn, dp)
        if dn.type ~= dp.type then
            return dn.type < dp.type
        end
        return dn.idx < dp.idx
    end)
    return { objects = jQ }
end
local function onCopyBitcoinAddress()
    gI(gq, "Copied Bitcoin address")
end
local function fn535(N, O, P)
    return string.format("<b>%s</b> %s %s", N, gA("-", "#5a6070"), gA(O, P))
end
local function worker2()
    while true do
        task.wait(3)
        if g2.Unloaded then
            break
        end
        for i, v in ipairs(gt) do
            local iq = gQ["AutoBuy_" .. v.key]
            if iq and iq.Value then
                gw(v)
            end
        end
    end
end
local function antiGameplayPauseLoop()
    while not g2.Unloaded do
        task.wait(1)
        if gQ.AntiGameplayPause.Value then
            gm(true)
        end
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(gr)
    elseif toclipboard then
        toclipboard(gr)
    end
    g2:Notify("Copied Rscripts profile to clipboard")
end
local function antiAfkLoop()
    while not g2.Unloaded do
        task.wait(2)
        if gQ.AntiAfk.Value then
            local jv = tick() - g0
            local jw = tick() - gZ
            if jv >= 300 and jw >= 60 then
                pcall(gE)
            else
                if jv < 300 and jw >= 300 then
                    pcall(gE)
                end
            end
        end
    end
end
local function fn593()
    connection:Disconnect()
    connection2:Disconnect()
    gm(false)
    LocalPlayer:SetAttribute("GoldenMarker", false)
    LocalPlayer:SetAttribute("AutoBingo", false)
    print("Unloaded!")
end
local function onCopyJoinScript_JobID()
    local hY = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, gT)
    if setclipboard then
        setclipboard(hY)
    elseif toclipboard then
        toclipboard(hY)
    end
    g2:Notify("Copied join script to clipboard")
end
local function fn616()
    if not gQ.Fly.Value then
        local i4 = gB()
        if i4 then
            i4.PlatformStand = false
        end
    end
end
local function fn635(bl)
    for i, v in ipairs(bl.catalog) do
        local ig = v.cost or 0
        local ih = ig > 0 and not v.plusOnly and not v.codeOnly and not v.reward and not v.bundleOnly and not gp(bl.owned, v.id) and gO() >= v.cost
        if ih then
            gz.BuySkin:FireServer(bl.key, v.id)
            task.wait(0.4)
        end
    end
end
local function onExportConfigToClipboard()
    local kd_1
    local kc_1
    kc_1, kd_1 = pcall(HttpService.JSONEncode, HttpService, gH())
    if not kc_1 then
        g2:Notify("Failed to encode the config")
        return
    end
    local kc_2 = setclipboard or toclipboard
    local kc_3 = type(kc_2) ~= "function" or not pcall(kc_2, kd_1)
    if kc_3 then
        g2:Notify("Your executor does not support copying to the clipboard")
        return
    end
    g2:Notify("Config copied to clipboard", 6)
end
local function fn671(C)
    local DiscordGroup = C:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = gx })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = gx })
end
local function fn694(v, w)
    if setclipboard then
        setclipboard(v)
    elseif toclipboard then
        toclipboard(v)
    end
    g2:Notify(w)
end
local function fn710(K, L)
    return string.format('<font color="%s">%s</font>', L, K)
end
gl = nil
gm = nil
gn = nil
connection = nil
gp = nil
gq = nil
gr = nil
gs = nil
gt = nil
gu = nil
gv = nil
gw = nil
gx = nil
gy = nil
gz = nil
gA = nil
gB = nil
gC = nil
gD = nil
gE = nil
LocalPlayer = nil
gH = nil
gI = nil
gJ = nil
HttpService = nil
Options = nil
VirtualUser = nil
connection2 = nil
gO = nil
gP = nil
gQ = nil
CurrentCamera = nil
UserInputService = nil
gT = nil
gU = nil
gV = nil
gW = nil
gX = nil
gY = nil
gZ = nil
g_ = nil
g0 = nil
g1 = nil
g2 = nil
local gF
local g5_1
local g6_1, g6_3, g6_4
local g4_1
local Players, MenuGroup
local hf_1
local he_1
local hd_1
local hb_1
local ha_1, ha_2
local g9_1
Players, UserInputService, VirtualUser, HttpService, LocalPlayer, ha_1, gz, g9_1, gv, gr, g4_1, g2, hd_1, gV, gQ, Options, g6_1, hb_1, gI, gx = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (g6_1 or g6_1 or (not hb_1 or hb_1) or (false and not g6_1 or (VirtualUser or g9_1))) and (hb_1 and VirtualUser or (g9_1 or VirtualUser) or not g4_1 and g4_1 and (g4_1 and VirtualUser)) and not ((g6_1 or g6_1 or (not hb_1 or hb_1) or (false and not g6_1 or (VirtualUser or g9_1))) and (hb_1 and VirtualUser or (g9_1 or VirtualUser) or not g4_1 and g4_1 and (g4_1 and VirtualUser))) then
    gQ = game:GetService("Players")
else
    Players = game:GetService("Players")
end
local g7 = game:GetService("ReplicatedStorage")
local g7_1
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
if ((hd_1 or not g4_1) and (hd_1 and ha_1) and (false and not g4_1 or not ha_1 and not HttpService) or ((not hd_1 or ha_1) and (g4_1 and g7) or (not hd_1 or false or (not g7 or not hd_1)))) and ((g4_1 or ha_1) and (not ha_1 or gv) and (g4_1 or HttpService or g7 and gv) or (not hd_1 and hd_1 or (not hd_1 or not g7) or (not g4_1 or not ha_1) and (gv and not g4_1))) or not (((hd_1 or not g4_1) and (hd_1 and ha_1) and (false and not g4_1 or not ha_1 and not HttpService) or ((not hd_1 or ha_1) and (g4_1 and g7) or (not hd_1 or false or (not g7 or not hd_1)))) and ((g4_1 or ha_1) and (not ha_1 or gv) and (g4_1 or HttpService or g7 and gv) or (not hd_1 and hd_1 or (not hd_1 or not g7) or (not g4_1 or not ha_1) and (gv and not g4_1)))) then
    HttpService = game:GetService("HttpService")
    LocalPlayer = Players.LocalPlayer
    ha_2 = require(g7.BingoShared.Config)
    gz = g7:WaitForChild("BingoRemotes")
else
    gz = game:GetService("HttpService")
    ha_2 = HttpService.LocalPlayer
    g7 = require(LocalPlayer.BingoShared.Config)
    LocalPlayer:WaitForChild("BingoRemotes")
end
local g9_2 = "50 Player BINGO!"
gv = "https://discord.gg/ehKVq7pf7v"
gr = "https://rscripts.net/@Ouroboros"
if (g7 and g7 or (ha_2 or not RunService)) and (RunService or not g7 and not RunService) and ((not gQ or false) and (not RunService and g7) or (not RunService)) and not ((g7 and g7 or (ha_2 or not RunService)) and (RunService or not g7 and not RunService) and ((not gQ or false) and (not RunService and g7) or (not RunService))) then
    gr = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    g4_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
g2 = loadstring(game:HttpGet(g4_1 .. "Library.lua"))()
local hd_2 = loadstring(game:HttpGet(g4_1 .. "addons/ThemeManager.lua"))()
gV = loadstring(game:HttpGet(g4_1 .. "addons/SaveManager.lua"))()
gQ = g2.Toggles
Options = g2.Options
gI = fn694
gx = fn325
local Window = g2:CreateWindow({
    Title = "Ouroboros",
    Footer = { { Text = gv, Copyable = true }, "|", g9_2 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local hb_2 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gavel"),
    Shop = Window:AddTab("Shop", "shopping-cart"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in hb_2 do
    fn671(v)
end
he_1, g7_1, gJ, g6_3, gD, hf_1, gY, gT, g5_1, gA, gs = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local g4_2 = 2
repeat
    local g8_1 = (g4_2 * 1 + 7) % 8 + 1
    if g8_1 <= 4 then
        if g8_1 <= 2 then
            if g8_1 <= 1 then
                if g4_2 * 26783653 + 8 + 2 >= g4_2 * 26783653 + 8 + 2 + 1 then
                    gT = #g5_1 > 18
                else
                    g5_1 = #gT > 18
                end
                g4_2 = (g4_2 + 17) % 32
            else
                local hg_1 = {
                    "svtc",
                    "lthx",
                    "ovhvmb",
                    "fwcsmawj",
                    "eudiyjfq",
                    "wdbvxvoriuhe",
                    "bxltitcl",
                    "cfczxcp",
                    "jzas",
                    "nveovkeg",
                    "vbkjmnxw",
                    "ucsfrblw",
                    "onuwnu",
                    "fcnfzfrll",
                    "jhtaoamquoee",
                    "qecef"
                }
                if hg_1[(g4_2 * 42 + 94) % 16 + 1] <= hg_1[(g4_2 * 42 + 94) % 16 + 1] then
                    gA = fn710
                end
                g4_2 = (g4_2 + 17) % 32
            end
        elseif g8_1 <= 3 then
            local k9 = bit32.rrotate(bit32.bxor(bit32.lrotate(g4_2, 18), string.byte(tostring(g6_3))), 21)
            if bit32.bxor(bit32.lrotate(bit32.bxor(k9, 1016162902), 22), 2509186138) ~= bit32.lrotate(k9, 22) then
                g7_1 = fn535
            else
                gs = fn535
            end
            g4_2 = (g4_2 + 1) % 32
        else
            if g4_2 * 86909421 + 10 + 4 <= g4_2 * 86909421 + 10 + 4 + 6 then
                he_1 = "#7fd47f"
            else
                g6_3 = "#7fd47f"
            end
            g4_2 = (g4_2 + 9) % 32
        end
    elseif g8_1 <= 6 then
        if g8_1 <= 5 then
            local hg_2 = (vector.create((g4_2 * 2 + 4) % 11 + 1, (g4_2 * 5 + 12) % 13 + 1, (g4_2 * 12 + 4) % 17 + 1))
            local hh_1 = (vector.create((g4_2 * 2 + 9) % 11 + 1, (g4_2 * 8 + 1) % 13 + 1, (g4_2 * 13 + 11) % 17 + 1))
            local hi_1 = (vector.create((g4_2 * 7 + 6) % 11 + 1, (g4_2 * 7 + 7) % 13 + 1, (g4_2 * 12 + 4) % 17 + 1))
            local hj_1 = (vector.create((g4_2 * 4 + 9) % 11 + 1, (g4_2 * 11 + 7) % 13 + 1, (g4_2 * 5 + 2) % 17 + 1))
            if vector.dot(vector.cross(hg_2, hh_1), (vector.cross(hi_1, hj_1))) == vector.dot(hg_2, hi_1) * vector.dot(hh_1, hj_1) - vector.dot(hg_2, hj_1) * vector.dot(hh_1, hi_1) + 2 then
                gA = "#6ec1ff"
            else
                g7_1 = "#6ec1ff"
            end
            g4_2 = (g4_2 + 25) % 32
        else
            local hg_3 = {
                "habwmsrqqfar",
                "xwgjbrvlutoz",
                "wiupapea",
                "myprxyhy",
                "popvacy",
                "msmjnykdxakg",
                "zgdoodsewvr",
                "zfxghai",
                "wucj",
                "llxboeroknx",
                "gjo"
            }
            if hg_3[(g4_2 * 91 + 13) % 11 + 1] <= hg_3[(g4_2 * 91 + 13) % 11 + 1] then
                gJ = "#e8a34d"
            else
                gs = "#e8a34d"
            end
            g4_2 = (g4_2 + 1) % 32
        end
    elseif g8_1 <= 7 then
        local g8_2 = {
            "wynnllf",
            "phr",
            "ick",
            "kqdew",
            "swdtxytx",
            "bpxkyu",
            "logvw",
            "jroecla",
            "zdhabfldai",
            "uyhhrs"
        }
        local kX = g4_2
        local hg_4 = g8_2[kX % 10 + 1]
        if hg_4:len() <= hg_4:reverse():rep(kX % 3 + 2):len() then
            g6_3 = "#8b93a3"
            gD = "Unknown"
            pcall(fn471)
            local AccountGroup = hb_2.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(gs("User", LocalPlayer.Name, he_1), true)
            AccountGroup:AddLabel(gs("Status", "Keyless", he_1), true)
            AccountGroup:AddLabel(gs("Executor", gD, he_1), true)
            hf_1 = hb_2.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            hf_1:AddLabel(gA(g9_2 .. " [" .. tostring(game.PlaceId) .. "]", g7_1), true)
            hf_1:AddLabel(gs("Place ID", tostring(game.PlaceId), g7_1), true)
            gY = hf_1:AddLabel(gs("Session time", "0s", gJ), true)
        else
            g7_1 = "Unknown"
            pcall(fn471)
            gA = gD.Info:AddLeftGroupbox("Account", "circle-user")
            gA:AddLabel(LocalPlayer("User", g6_3.Name, gJ), true)
            gA:AddLabel(LocalPlayer("Status", "Keyless", gJ), true)
            gA:AddLabel(LocalPlayer("Executor", "Unknown", gJ), true)
            gY = gD.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            gY:AddLabel(he_1(hb_2 .. " [" .. tostring(game.PlaceId) .. "]", g9_2), true)
            gY:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), g9_2), true)
            hf_1 = gY:AddLabel(LocalPlayer("Session time", "0s", gs), true)
        end
        g4_2 = (g4_2 + 25) % 32
    else
        if g4_2 * 90043063 + 5 + 2 >= g4_2 * 90043063 + 5 + 2 + 5 then
            gA = tostring(game.JobId)
        else
            gT = tostring(game.JobId)
        end
        g4_2 = (g4_2 + 9) % 32
    end
until (g4_2 * 1 + 21) % 32 == 31
if g5_1 then
    local g3_3 = 0
    repeat
        local g4_3 = (vector.create((g3_3 * 3 + 1) % 11 + 1, (g3_3 * 5 + 8) % 13 + 1, (g3_3 * 6 + 5) % 17 + 1))
        local g8_3 = (vector.create((g3_3 * 2 + 2) % 11 + 1, (g3_3 * 10 + 13) % 13 + 1, (g3_3 * 3 + 11) % 17 + 1))
        local hg_5 = (vector.create((g3_3 * 2 + 7) % 11 + 1, (g3_3 * 6 + 6) % 13 + 1, (g3_3 * 1 + 14) % 17 + 1))
        local hh_2 = (vector.create((g3_3 * 1 + 5) % 5 + 1, (g3_3 * 4 + 2) % 7 + 1, (g3_3 * 4 + 1) % 9 + 1))
        if vector.dot(vector.cross(g4_3, (vector.cross(g8_3, hg_5))), hh_2) == vector.dot(g8_3 * vector.dot(g4_3, hg_5) - hg_5 * vector.dot(g4_3, g8_3), hh_2) then
            g5_1 = string.sub(gT, 1, 18) .. "..."
        else
            gT = string.sub(g5_1, 1, 18) .. "..."
        end
        g3_3 = (g3_3 + 0) % 4
    until (g3_3 * 3 + 2) % 4 == 2
end
local g3_4 = g5_1 or gT
gy, gu, gq, gl, g1, g_, gU, gP, gt, gW, gp, gO, gw = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
hf_1:AddLabel(gs("Server", g3_4, g6_3), true)
hf_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
gy = os.clock()
task.spawn(worker)
local ScriptsGroup = hb_2.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(gA("Included in this hub", g6_3), true)
ScriptsGroup:AddLabel(gA(g9_2, g7_1), true)
local FeaturesGroup = hb_2.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(gA("Auto Stamp", g7_1), true)
FeaturesGroup:AddLabel(gA("Auto Bingo", he_1), true)
FeaturesGroup:AddLabel(gA("Auto Buy Cosmetics", gJ), true)
FeaturesGroup:AddLabel(gA("Player Movement", g6_3), true)
local SocialsGroup = hb_2.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = gx })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = hb_2.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = gx })
gu = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
gq = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
gl = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
g1 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
g_ = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
gU = "https://paypal.me/TheTruckerGOD"
gP = "https://venmo.com/u/miserablemusic"
local hq = "#345d9d"
local hm = "#f7931a"
local hk = "#627eea"
local hj_2 = "#26a17b"
local hi_2 = "#14f195"
local hg_6 = "#0070ba"
local g8_4 = "#008cff"
local DonationsGroup = hb_2.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(gA("All donations are optional but appreciated.", gJ), true)
DonationsGroup:AddLabel(gA("If you donate you get a special role, just PING after you donate.", he_1), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(gA("LTC / Litecoin", hq), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(gA("BTC / Bitcoin", hm), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(gA("ETH / Ethereum", hk), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(gA("USDT", hj_2), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(gA("Solana", hi_2), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(gA("PayPal", hg_6), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(gA("Venmo", g8_4), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(gA("Don't have any of the listed currencies but still wanna donate?", g6_3), true)
DonationsGroup:AddLabel(gA("DM me and we'll work something out.", g7_1), true)
local FaqGroup = hb_2.Info:AddRightGroupbox("FAQ", "circle-help")
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
gW = fn216
local AutomationGroup = hb_2.Main:AddLeftGroupbox("Automation", "gavel")
AutomationGroup:AddToggle("AutoStamp", { Text = "Auto Stamp", Default = false, Callback = gW })
AutomationGroup:AddToggle("AutoBingo", { Text = "Auto Bingo", Default = false, Callback = gW })
task.spawn(autoStampLoop)
gt = {
    { key = "card", label = "Card Skins", owned = "OwnedCardSkins", catalog = ha_2.CARD_SKINS },
    { key = "chair", label = "Chairs", owned = "OwnedChairSkins", catalog = ha_2.CHAIR_SKINS },
    { key = "dance", label = "Dances", owned = "OwnedDances", catalog = ha_2.DANCES },
    { key = "stamp", label = "Stamps", owned = "OwnedStamps", catalog = ha_2.STAMPS }
}
gp = fn218
gO = fn173
gw = fn635
local AutoBuyGroup = hb_2.Shop:AddLeftGroupbox("Auto Buy", "shopping-cart")
for i, v in ipairs(gt) do
    AutoBuyGroup:AddToggle("AutoBuy_" .. v.key, { Text = "Auto Buy " .. v.label, Default = false })
end
CurrentCamera, MenuGroup, g0, gZ, connection, connection2, g6_4, gB, gn, gm, gE, gF, gX, gH, gC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
task.spawn(worker2)
local MovementGroup = hb_2.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = hb_2.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
gB = fn289
gn = fn169
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
gQ.Fly:OnChanged(fn616)
gQ.WalkSpeedEnabled:OnChanged(fn495)
gm = function(ck)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ck)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ck
        end
    end)
    if not ck then
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
if ((MenuGroup or MenuGroup) and (not MenuGroup or not MenuGroup) and ((not g6_4 or false) and (not gH or MenuGroup)) or (gC and not MenuGroup or (not connection2 or false) or (gH and false or (not connection2 or not gH)))) and (not connection2 and gC and (g6_4 and not MenuGroup) and ((MenuGroup or not MenuGroup) and (gH or not MenuGroup)) or connection2 and gH and (MenuGroup or MenuGroup) and (false or not connection2 or (not MenuGroup or false))) and not (((MenuGroup or MenuGroup) and (not MenuGroup or not MenuGroup) and ((not g6_4 or false) and (not gH or MenuGroup)) or (gC and not MenuGroup or (not connection2 or false) or (gH and false or (not connection2 or not gH)))) and (not connection2 and gC and (g6_4 and not MenuGroup) and ((MenuGroup or not MenuGroup) and (gH or not MenuGroup)) or connection2 and gH and (MenuGroup or MenuGroup) and (false or not connection2 or (not MenuGroup or false)))) then
    hb_2.AntiGameplayPause:OnChanged(fn111)
    task.spawn(antiGameplayPauseLoop)
    gQ = Options.Settings:AddLeftGroupbox("Menu", "settings")
    gQ:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    gQ:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Default = "RightShift", Text = "Menu keybind" })
    gZ.ToggleKeybind = MenuGroup.MenuKeybind
    gQ:AddButton("Unload", onUnload)
    g2 = tick()
    g0 = tick()
else
    gQ.AntiGameplayPause:OnChanged(fn111)
    task.spawn(antiGameplayPauseLoop)
    MenuGroup = hb_2.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    g2.ToggleKeybind = Options.MenuKeybind
    MenuGroup:AddButton("Unload", onUnload)
    g0 = tick()
    gZ = tick()
end
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local jp = v
        pcall(function()
            jp:Disable()
        end)
    end
end)
gE = fn172
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
if (not MenuGroup or not gF or (MenuGroup or gZ)) and (gZ or MenuGroup or (gZ or not MenuGroup)) and (gF and gF or MenuGroup and not gZ or (not gZ or gF or not gF and not MenuGroup)) or not ((not MenuGroup or not gF or (MenuGroup or gZ)) and (gZ or MenuGroup or (gZ or not MenuGroup)) and (gF and gF or MenuGroup and not gZ or (not gZ or gF or not gF and not MenuGroup))) then
    task.spawn(antiAfkLoop)
    g2:OnUnload(fn593)
    hd_2:SetLibrary(g2)
    hd_2:SetFolder("OuroborosHub")
    hd_2:SaveDefault("Linoria")
    hd_2:ApplyToTab(hb_2.Settings)
    hd_2:LoadDefault()
    gV:SetLibrary(g2)
    gV:IgnoreThemeSettings()
    gV:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    gV:SetFolder("OuroborosHub/50PlayerBingo")
    g6_4 = gV:BuildConfigSection(hb_2.Settings)
else
    task.spawn(antiAfkLoop)
    hd_2:OnUnload(fn593)
    hb_2:SetLibrary(hd_2)
    hb_2:SetFolder("OuroborosHub")
    hb_2:SaveDefault("Linoria")
    hb_2:ApplyToTab(g6_4.Settings)
    hb_2:LoadDefault()
    g2:SetLibrary(hd_2)
    g2:IgnoreThemeSettings()
    g2:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    g2:SetFolder("OuroborosHub/50PlayerBingo")
    gV = g2:BuildConfigSection(g6_4.Settings)
end
gF = fn156
gX = fn457
gH = fn511
gC = function(dr)
    local j9
    j9 = nil
    local ka = type(dr) ~= "table" or type(dr.idx) ~= "string" or type(dr.type) ~= "string" or gV.Ignore[dr.idx]
    if ka then
        return false
    end
    j9 = gF(dr.type, dr.idx)
    if not j9 then
        return false
    end
    local ka_1 = pcall(function()
        if dr.type == "Input" then
            if type(dr.text) ~= "string" then
                return
            end
            j9:SetValue(dr.text)
        elseif dr.type == "ColorPicker" then
            j9:SetValueRGB(Color3.fromHex(dr.value), dr.transparency)
        elseif dr.type == "KeyPicker" then
            j9:SetValue({ dr.key, dr.mode, dr.modifiers })
            if dr.mode == "Toggle" and dr.toggled ~= nil then
                j9.Toggled = dr.toggled
                j9:Update()
            end
        else
            j9:SetValue(dr.value)
        end
    end)
    return ka_1
end
g6_4:AddDivider()
g6_4:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
g6_4:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
g6_4:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
gV:LoadAutoloadConfig()
gm(gQ.AntiGameplayPause.Value)
