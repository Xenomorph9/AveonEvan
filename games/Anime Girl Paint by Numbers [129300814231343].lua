local jW
local __ouroboros_gen
local kh
local SaveManager
local jG
local j1
local kn
local jJ
local j4
local j7
local Workspace
local ka
local jS
local kd
local kg
local jV
local kD
local HttpService
local kG
local jF
local CurrentCamera
local jY
local km
local kp
local j3
local jL
local j6
local ks
local j9
local kw
local Label
local kz
local jU
local connection
local jX
local ki
local kF
local j_
local kl
local connection2
local Options
local j5
local jK
local kv
local kb
local ke
local jT
local kB
local function fn7(bu, bv)
    return string.format('<font color="%s">%s</font>', bv, bu)
end
local function fn10()
    local mb_1
    local ma_1
    if identifyexecutor then
        mb_1, ma_1 = identifyexecutor()
        local mc = mb_1 ~= ""
        local md = type(mb_1) == "string" and mc
        if md then
            local mc_1 = type(ma_1) == "string" and ma_1 ~= "" and mb_1 .. " " .. ma_1
            ke = mc_1 or mb_1
        end
    end
end
local function onCopyJoinScript_JobID()
    local mi = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, jV)
    if setclipboard then
        setclipboard(mi)
    elseif toclipboard then
        toclipboard(mi)
    end
    j4:Notify("Copied join script to clipboard")
end
local function fn55()
    if not workspace.CurrentCamera then
        return
    end
    kn:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    kn:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    kD = tick()
end
local function fn109()
    setthreadidentity(8)
end
local function onCopyVenmoLink()
    j9(jT, "Copied Venmo link")
end
local function onUnload()
    j4:Unload()
end
local function fn190(bx, by, bz)
    return string.format("<b>%s</b> %s %s", bx, jK("-", "#5a6070"), jK(by, bz))
end
local function onCopyEthereumAddress()
    j9(j3, "Copied Ethereum address")
end
local function fn221()
    local nH = {}
    for i, v in ipairs({ kl, Options }) do
        for k, v in pairs(v) do
            local nI = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if nI then
                local nI_1 = kh(k, v)
                if nI_1 then
                    nH[#nH + 1] = nI_1
                end
            end
        end
    end
    table.sort(nH, function(eJ, eK)
        if eJ.type ~= eK.type then
            return eJ.type < eK.type
        end
        return eJ.idx < eK.idx
    end)
    return { objects = nH }
end
local function onRscripts()
    if setclipboard then
        setclipboard(kd)
    elseif toclipboard then
        toclipboard(kd)
    end
    j4:Notify("Copied Rscripts profile to clipboard")
end
local function fn252()
    local lP = jU()
    if not lP then
        return nil
    end
    local Systems = lP:FindFirstChild("Systems")
    if not Systems then
        return nil
    end
    return Systems:FindFirstChild("CanvasBaseParts")
end
local function onCopyBitcoinAddress()
    j9(j5, "Copied Bitcoin address")
end
local function fn300(bp)
    local DiscordGroup = bp:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = j1 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = j1 })
end
local function onImportConfigFromClipboardTex()
    local n9_1
    local n7 = Options.SaveManager_ImportSource.Value
    local n7_1
    local od = if n7 then 1 else 0
    local ob = 2661 * od + 2924 * (1 - od)
    local oc = 2172 * od + 1043 * (1 - od)
    if not ((ob * 3856 + oc * 475 + ob * oc) % 16777213 == 294995) then
        n7 = ""
    end
    local n8 = tostring(n7):match("^%s*(.-)%s*$")
    if n8 == "" then
        j4:Notify("Paste an exported config into the box first")
        return
    end
    n7_1, n9_1 = pcall(HttpService.JSONDecode, HttpService, n8)
    local n8_1 = not n7_1 or type(n9_1) ~= "table" or type(n9_1.objects) ~= "table"
    if n8_1 then
        j4:Notify("That is not a valid exported config")
        return
    end
    local n7_2 = 0
    for i, v in ipairs(n9_1.objects) do
        if kz(v) then
            n7_2 += 1
        end
    end
    if n7_2 == 0 then
        j4:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local n9_2 = n7_2 == 1 and "" or "s"
    j4:Notify(("Imported %d setting%s"):format(n7_2, n9_2), 6)
end
local function fn305()
    SaveManager:LoadAutoloadConfig()
end
local function onCopyPayPalLink()
    j9(jW, "Copied PayPal link")
end
local function fn311(C)
    local lg_1
    local lf_1
    lf_1, lg_1 = pcall(require, C)
    return lf_1 and lg_1 or nil
end
local function fn329(N)
    return N:GetAttributeChangedSignal("SelectedColorNumber")
end
local function fn330()
    if not kl.WalkSpeedEnabled.Value then
        local m0 = jS()
        if m0 then
            m0.WalkSpeed = 16
        end
    end
end
local function fn420()
    local Character = kg.Character
    local mD = Character and Character:FindFirstChildOfClass("Humanoid")
    return mD
end
local function onCopyLitecoinAddress()
    j9(j7, "Copied Litecoin address")
end
local function fn473()
    local Character = kg.Character
    local mG = Character and Character:FindFirstChild("HumanoidRootPart")
    return mG
end
local function onJumpRequest()
    if j4.Unloaded then
        return
    end
    if kl.InfJump and kl.InfJump.Value then
        local mQ_1 = jS()
        if mQ_1 then
            mQ_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn482(bi, bj)
    if setclipboard then
        setclipboard(bi)
    elseif toclipboard then
        toclipboard(bi)
    end
    j4:Notify(bj)
end
local function fn494()
    return not j4.Unloaded and jF.__ouroboros_gen == __ouroboros_gen
end
local function fn502()
    if not kl.Fly.Value then
        local mZ = jS()
        if mZ then
            mZ.PlatformStand = false
        end
    end
end
local function fn512(T)
    return T:GetAttribute("PictureBusy") == true
end
local function fn555()
    j4:Notify({ Title = "Ouroboros", Description = "Loaded for Anime Girl Paint by Numbers", Time = 4 })
end
local function fn563()
    jF.__ouroboros_gen = __ouroboros_gen + 1000
    jF.OuroborosHub_Library = nil
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    ka(false)
    pcall(function()
        Label:SetText("Status: Unloaded")
    end)
end
local function fn589()
    kw = false
end
local function fn601()
    local lL_2
    local lK_2
    local lH_1
    local lG = jL and jL.GetPlot
    local lG_1
    if lG then
        lG_1, lH_1 = pcall(function()
            return jL.GetPlot(kb)
        end)
        if lG_1 and lH_1 then
            return lH_1
        end
        local lG_2 = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("PlotModels") and Workspace.Map.PlotModels:FindFirstChild(kb.Name)
        local lH_2 = lG_2
        if not ((lK_2 * 3960 + lL_2 * 195 + lK_2 * lL_2) % 16777213 == 1824720) then
            lH_2 = nil
        end
        return lH_2
    end
    local lG_3 = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("PlotModels") and Workspace.Map.PlotModels:FindFirstChild(kb.Name)
    local lH_3 = lG_3
    local lM_2 = if lH_3 then 1 else 0
    lK_2 = 140 * lM_2 + 2942 * (1 - lM_2)
    lL_2 = 3792 * lM_2 + 2236 * (1 - lM_2)
    if not ((lK_2 * 3960 + lL_2 * 195 + lK_2 * lL_2) % 16777213 == 1824720) then
        lH_3 = nil
    end
    return lH_3
end
local function fn639(L)
    return L:GetAttribute("LoadedPicture")
end
local function fn649()
    j9(ki, "Copied Discord invite to clipboard")
end
local function antiAfkLoop()
    while not j4.Unloaded do
        task.wait(2)
        if kl.AntiAfk.Value then
            local nm = tick() - kG
            local nn = tick() - kD
            if nm >= 300 and nn >= 60 then
                pcall(ks)
            else
                if nm < 300 and nn >= 300 then
                    pcall(ks)
                end
            end
        end
    end
end
local function fn698(ev, ew)
    local Type = ew.Type
    if Type == "Toggle" then
        return { idx = ev, type = "Toggle", value = ew.Value == true }
    elseif Type == "Slider" then
        return { idx = ev, type = "Slider", value = tostring(ew.Value) }
    elseif Type == "Dropdown" then
        return { idx = ev, type = "Dropdown", multi = ew.Multi == true, value = ew.Value }
    elseif Type == "Input" then
        local nB = ew.Value or ""
        return { idx = ev, type = "Input", text = tostring(nB) }
    elseif Type == "ColorPicker" then
        return { idx = ev, type = "ColorPicker", value = ew.Value:ToHex(), transparency = ew.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = ev,
            type = "KeyPicker",
            mode = ew.Mode,
            key = ew.Value,
            modifiers = ew.Modifiers,
            toggled = ew.Toggled
        }
    else
        return nil
    end
end
local function onStepped()
    if j4.Unloaded then
        return
    end
    if kl.NoClip and kl.NoClip.Value then
        local Character = kg.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local mI_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if mI_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn703()
    ka(kl.AntiGameplayPause.Value)
end
local function onExportConfigToClipboard()
    local n1_1
    local n0_1
    n0_1, n1_1 = pcall(HttpService.JSONEncode, HttpService, j6())
    if not n0_1 then
        j4:Notify("Failed to encode the config")
        return
    end
    local n0_2 = setclipboard or toclipboard
    local n0_3 = type(n0_2) ~= "function" or not pcall(n0_2, n1_1)
    if n0_3 then
        j4:Notify("Your executor does not support copying to the clipboard")
        return
    end
    j4:Notify("Config copied to clipboard", 6)
end
local function fn779(en, eo)
    local nr = en == "Toggle" and kl
    local nw = if nr then 1 else 0
    local nu = 3921 * nw + 2107 * (1 - nw)
    local nv = 82 * nw + 3918 * (1 - nw)
    if not ((nu * 1381 + nv * 1144 + nu * nv) % 16777213 == 5830231) then
        nr = Options
    end
    local nr_1 = nr[eo]
    local nq_2 = type(nr_1) == "table" and nr_1.Type == en
    return nq_2 and nr_1 or nil
end
local function antiGameplayPauseLoop()
    while not j4.Unloaded do
        task.wait(1)
        if kl.AntiGameplayPause.Value then
            ka(true)
        end
    end
end
local function fn804()
    local lN = jU()
    if not lN then
        return nil
    end
    return lN:FindFirstChild("ActivePicture")
end
local function onRenderStepped(dm)
    if j4.Unloaded then
        return
    end
    if kl.WalkSpeedEnabled and kl.WalkSpeedEnabled.Value then
        local mV_1 = jS()
        if mV_1 then
            mV_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if kl.Fly and kl.Fly.Value then
        local mV_3 = jJ()
        local mW = jS()
        if mV_3 and mW then
            mW.PlatformStand = true
            local mW_1 = Vector3.zero
            if kp:IsKeyDown(Enum.KeyCode.W) then
                mW_1 = mW_1 + CurrentCamera.CFrame.LookVector
            end
            if kp:IsKeyDown(Enum.KeyCode.S) then
                mW_1 = mW_1 - CurrentCamera.CFrame.LookVector
            end
            if kp:IsKeyDown(Enum.KeyCode.A) then
                mW_1 = mW_1 - CurrentCamera.CFrame.RightVector
            end
            if kp:IsKeyDown(Enum.KeyCode.D) then
                mW_1 = mW_1 + CurrentCamera.CFrame.RightVector
            end
            if kp:IsKeyDown(Enum.KeyCode.Space) then
                mW_1 = mW_1 + Vector3.new(0, 1, 0)
            end
            if kp:IsKeyDown(Enum.KeyCode.LeftControl) then
                mW_1 = mW_1 - Vector3.new(0, 1, 0)
            end
            mV_3.Velocity = Vector3.zero
            if mW_1.Magnitude > 0 then
                mV_3.CFrame = mV_3.CFrame + mW_1.Unit * Options.FlySpeed.Value * dm
            end
        end
    end
end
local function onCopySolanaAddress()
    j9(jY, "Copied Solana address")
end
local function fn858()
    if kw then
        if os.clock() - kv > 150 then
            kw = false
            kw = true
            kv = os.clock()
            return true
        end
        return false
    end
    kw = true
    kv = os.clock()
    return true
end
local function fn869(O)
    local lk_1 = (kF.StarCashAmounts or { 100, 400, 1600 })[O.Stars] or 100
    local lm = 1 + (O.ColorCount or 0) * (kF.ColorMultiplier or 0.2)
    local floor = math.floor
    local ll_1 = O.PartCount or 0
    local ln = kF.PartMultiplier
    local lr = if ln then 1 else 0
    local lp = 2756 * lr + 3274 * (1 - lr)
    local lq = 2553 * lr + 1210 * (1 - lr)
    if not ((lp * 3875 + lq * 3658 + lp * lq) % 16777213 == 10277229) then
        ln = 0.0002
    end
    return floor(lk_1 * (lm + ll_1 * ln))
end
local function onInputBegan()
    kG = tick()
end
local function onCopyUSDTAddress()
    j9(j_, "Copied USDT address")
end
local function fn931(M)
    return M:GetAttribute("SelectedColorNumber")
end
local function onInputChanged(d6)
    local UserInputType = d6.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kG = tick()
    end
end
local function worker()
    local ml_1
    while true do
        task.wait(1)
        if j4.Unloaded then
            break
        end
        local mk = math.floor(os.clock() - jG)
        if mk < 60 then
            ml_1 = mk .. "s"
        elseif mk < 3600 then
            ml_1 = string.format("%dm %ds", mk // 60, mk % 60)
        else
            ml_1 = string.format("%dh %dm", mk // 3600, mk % 3600 // 60)
        end
        jX:SetText(kB("Session time", ml_1, km))
    end
end
jF = nil
jG = nil
jJ = nil
jK = nil
jL = nil
Label = nil
jS = nil
jT = nil
jU = nil
jV = nil
jW = nil
jX = nil
jY = nil
SaveManager = nil
j_ = nil
CurrentCamera = nil
j1 = nil
connection2 = nil
j3 = nil
j4 = nil
j5 = nil
j6 = nil
j7 = nil
j9 = nil
ka = nil
kb = nil
kd = nil
ke = nil
connection = nil
kg = nil
kh = nil
ki = nil
HttpService = nil
kl = nil
km = nil
kn = nil
Options = nil
kp = nil
local jH, jI, jM, jN, jO, jP, jQ, kc, kk, kq, kr
ks = nil
Workspace = nil
kv = nil
kw = nil
kz = nil
kB = nil
kD = nil
__ouroboros_gen = nil
kF = nil
kG = nil
local kx, ky, kA, kC, kK, kL, kM, kN, kO, kP, kQ, kR, kS, kT, kU, kV, kX, k3, k4, k5, k6, k7
local kW_4
local kJ_1, kJ_7
jF = nil
pcall(fn109)
jF = getgenv()
local kH = jF.__ouroboros_gen
local le = if kH then 1 else 0
local lc = 2710 * le + 690 * (1 - le)
local ld = 2767 * le + 2661 * (1 - le)
if not ((lc * 352 + ld * 3245 + lc * ld) % 16777213 == 654192) then
    kH = 0
end
__ouroboros_gen, kJ_1 = nil, nil
local kI = 10
repeat
    kK = (kI * 1 + 1) % 2 + 1
    if kK <= 1 then
        kK = {
            "rllqw",
            "bpgfofpydq",
            "egf",
            "wlbsfi",
            "fcdvujcpf",
            "kwillfg",
            "nbyetfortod",
            "kssnk",
            "lwhg",
            "hkj"
        }
        local qb = kI
        kL = kK[qb % 10 + 1]
        if kL:len() <= kL:gsub("(.)", "%1%1", qb % 3 % 2 + 1):len() then
            kJ_1 = jF.OuroborosHub_Library
        else
            jF = kJ_1.OuroborosHub_Library
        end
        kI = (kI + 3) % 16
    else
        local qU = bit32.rrotate(bit32.bxor(bit32.lrotate(kI, 29), string.byte(tostring(kJ_1))), 22)
        if bit32.bxor(bit32.lrotate(bit32.bxor(qU, 1167314972), 12), 1023525977) ~= bit32.lrotate(qU, 12) then
            jF.__ouroboros_gen = __ouroboros_gen + 1
            jF = kH.__ouroboros_gen
        else
            jF.__ouroboros_gen = kH + 1
            __ouroboros_gen = jF.__ouroboros_gen
        end
        kI = (kI + 11) % 16
    end
until (kI * 7 + 1) % 16 == 9
if kJ_1 then
    local kH_1 = 3
    repeat
        kI = (vector.create((kH_1 * 1 + 1) % 11 + 1, (kH_1 * 8 + 6) % 13 + 1, (kH_1 * 5 + 11) % 17 + 1))
        kK = (vector.create((kH_1 * 2 + 8) % 11 + 1, (kH_1 * 4 + 13) % 13 + 1, (kH_1 * 8 + 5) % 17 + 1))
        local qY = vector.cross(kI, kK)
        local qZ = vector.dot(kI, kK)
        if vector.dot(qY, qY) + qZ * qZ == vector.dot(kI, kI) * vector.dot(kK, kK) then
            kJ_1 = type(jF.OuroborosHub_Library.Unload) == "function"
        else
            jF = type(kJ_1.OuroborosHub_Library.Unload) == "function"
        end
        kH_1 = (kH_1 + 0) % 4
    until (kH_1 * 3 + 3) % 4 == 0
end
if kJ_1 then
    pcall(function()
        jF.OuroborosHub_Library:Unload()
    end)
end
ky, Workspace, kp, kn, HttpService, kg, kb, kI, j4, SaveManager = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ky = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
Workspace = game:GetService("Workspace")
if (not j4 or not j4 or ky and ky or (not kI or not kn) and (kg and not kg)) and not (not j4 or not j4 or ky and ky or (not kI or not kn) and (kg and not kg)) then
    kn = game:GetService("RunService")
    kM = game:GetService("UserInputService")
    kp = game:GetService("VirtualUser")
else
    kM = game:GetService("RunService")
    kp = game:GetService("UserInputService")
    kn = game:GetService("VirtualUser")
end
HttpService = game:GetService("HttpService")
kg = Players.LocalPlayer
kb = kg
local j8 = "Anime Girl Paint by Numbers"
j4 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
kL = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
jF.OuroborosHub_Library = j4
kK = fn311
local kH_2 = {}
kI = kK(ky.Shared.Core.Storage.Game.PicturesLibrary) or kH_2
jP, jN, jL, jH = nil, nil, nil, nil
jP = kI
jN = kK(ky.Shared.Services.PictureService)
jL = kK(ky.Shared.Services.PlotService)
jH = kK(ky.Shared.Utility.Remoting)
local kH_3 = {}
kI = kK(ky.Shared.Constants) or kH_3
kF, kC = nil, nil
local kJ_3 = 2
repeat
    if (kJ_3 * 1 + 0) % 2 + 1 <= 1 then
        local kH_5 = (vector.create((kJ_3 * 6 + 5) % 11 + 1, (kJ_3 * 11 + 11) % 13 + 1, (kJ_3 * 4 + 13) % 17 + 1))
        local qK = vector.floor(kH_5) + vector.ceil(kH_5 * -1)
        if vector.dot(qK, qK) == 4 then
            kI = kF
        else
            kF = kI
        end
        kJ_3 = (kJ_3 + 1) % 8
    else
        if kJ_3 * 11506289 + 10 + 7 <= kJ_3 * 11506289 + 10 + 7 + 4 then
            kC = kK(ky.Client.Data.ClientDataManager)
        else
            ky = kC(kK.Client.Data.ClientDataManager)
        end
        kJ_3 = (kJ_3 + 5) % 8
    end
until (kJ_3 * 1 + 7) % 8 == 7
if not jN then
    local kH_6 = 7
    while true do
        do
            kI = (vector.create((kH_6 * 6 + 4) % 11 + 1, (kH_6 * 8 + 8) % 13 + 1, (kH_6 * 4 + 5) % 17 + 1))
            local kJ_4 = (vector.create((kH_6 * 1 + 5) % 11 + 1, (kH_6 * 3 + 10) % 13 + 1, (kH_6 * 5 + 2) % 17 + 1))
            local pP = vector.cross(kI, kJ_4)
            local pQ = vector.dot(kI, kJ_4)
            if vector.dot(pP, pP) + pQ * pQ == vector.dot(kI, kI) * vector.dot(kJ_4, kJ_4) + 5 then
                jN = {
                    GetLoadedPicture = fn639,
                    GetSelectedColorChangedSignal = fn329,
                    GetSelectedColor = fn931,
                    IsPictureBusy = fn512,
                    GetPriceForPicture = fn869
                }
            else
                jN = {
                    GetLoadedPicture = fn639,
                    GetSelectedColor = fn931,
                    GetSelectedColorChangedSignal = fn329,
                    GetPriceForPicture = fn869,
                    IsPictureBusy = fn512
                }
            end
            kH_6 = (kH_6 + 0) % 8
            if (kH_6 * 5 + 0) % 8 == 3 then
                break
            end
            continue
        end
    end
end
jQ, jO, jM, kw, kv, kN, Options, kl, ki, kd, kU, kT, kS, km, kR, ke, kI, kQ, jX, jV, kO, jI, kr, kk, kV, jU, kx, kq, kc, j9, j1, kP, jK, kB = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local kJ_5 = 55
repeat
    local kH_7 = (kJ_5 * 3 + 10) % 14 + 1
    if kH_7 <= 7 then
        if kH_7 <= 4 then
            if kH_7 <= 2 then
                if kH_7 <= 1 then
                    if kJ_5 * 97872457 + 9 + 3 >= kJ_5 * 97872457 + 9 + 3 + 1 then
                        kP = fn649
                        j1 = fn300
                    else
                        j1 = fn649
                        kP = fn300
                    end
                    kJ_5 = (kJ_5 + 19) % 56
                else
                    if kJ_5 * 92308933 + 13 + 5 <= kJ_5 * 92308933 + 13 + 5 + 6 then
                        kU = {
                            Info = kN:AddTab("Info", "info"),
                            Farming = kN:AddTab("Farming", "paintbrush"),
                            Player = kN:AddTab("Player", "person-standing"),
                            Settings = kN:AddTab("Settings", "settings")
                        }
                    else
                        kN = {
                            Info = kU:AddTab("Info", "info"),
                            Settings = kU:AddTab("Settings", "settings"),
                            Farming = kU:AddTab("Farming", "paintbrush"),
                            Player = kU:AddTab("Player", "person-standing")
                        }
                    end
                    kJ_5 = (kJ_5 + 33) % 56
                end
            elseif kH_7 <= 3 then
                local qq = bit32.rrotate(bit32.bxor(bit32.lrotate(kJ_5, 28), 104), 13)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(qq, 4127271287), 1826980994), (bit32.bxor(bit32.band(qq, 167696008), 3485267358))), 1826980994), 3485267358) ~= qq then
                    kN = fn7
                else
                    jK = fn7
                end
                kJ_5 = (kJ_5 + 47) % 56
            else
                if ((not kv or km) and (not kv or jX) and (kv and km and (not jX or jX)) and (not jI and kl or (not jI or not jX) or (km or not kl or (km or not jX))) or ((false or (jX or not jI)) and (not kl and not kl and (kv and jI)) or (false or jX) and (jX and false) and (jX and kv or (not jX or false)))) and not ((not kv or km) and (not kv or jX) and (kv and km and (not jX or jX)) and (not jI and kl or (not jI or not jX) or (km or not kl or (km or not jX))) or ((false or (jX or not jI)) and (not kl and not kl and (kv and jI)) or (false or jX) and (jX and false) and (jX and kv or (not jX or false)))) then
                    jX = fn190
                else
                    kB = fn190
                end
                kJ_5 = (kJ_5 + 19) % 56
            end
        elseif kH_7 <= 6 then
            if kH_7 <= 5 then
                local qj = bit32.rrotate(bit32.bxor(bit32.lrotate(kJ_5, 6), string.byte(tostring(kd))), 29)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(qj, 3456576803), 2932899728), (bit32.bxor(bit32.band(qj, 838390492), 1028699014))), 2932899728), 1028699014) ~= qj then
                    ke, kT, kB, kU = "#7fd47f", "#e8a34d", "#8b93a3", "#6ec1ff"
                    kR = "Unknown"
                    pcall(fn10)
                    kg = kI.Info:AddLeftGroupbox("Account", "circle-user")
                    kg:AddLabel(kS("User", nil, ke), true)
                    kg:AddLabel(kS("Status", "Keyless", ke), true)
                    kg:AddLabel(kS("Executor", "Unknown", ke), true)
                    jX = kI.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    jX:AddLabel(j8(jK .. " [" .. tostring(game.PlaceId) .. "]", kU), true)
                    jX:AddLabel(kS("Place ID", tostring(game.PlaceId), kU), true)
                    kQ = jX:AddLabel(kS("Session time", "0s", kT), true)
                else
                    kT, kS, km, kR = "#7fd47f", "#6ec1ff", "#e8a34d", "#8b93a3"
                    ke = "Unknown"
                    pcall(fn10)
                    kI = kU.Info:AddLeftGroupbox("Account", "circle-user")
                    kI:AddLabel(kB("User", kg.Name, kT), true)
                    kI:AddLabel(kB("Status", "Keyless", kT), true)
                    kI:AddLabel(kB("Executor", ke, kT), true)
                    kQ = kU.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    kQ:AddLabel(jK(j8 .. " [" .. tostring(game.PlaceId) .. "]", kS), true)
                    kQ:AddLabel(kB("Place ID", tostring(game.PlaceId), kS), true)
                    jX = kQ:AddLabel(kB("Session time", "0s", km), true)
                end
                kJ_5 = (kJ_5 + 47) % 56
            else
                local kW_1 = {
                    "kdhoogubxa",
                    "obr",
                    "liodwx",
                    "azfuzxhtqm",
                    "drsvp",
                    "bldn",
                    "kaeooof",
                    "mbbyforjstj",
                    "ytkvfp",
                    "vvfg"
                }
                local q_ = kJ_5
                kX = kW_1[q_ % 10 + 1]
                if kX:len() >= kX:reverse():rep(q_ % 3 + 2):len() then
                    kl = tostring(game.JobId)
                else
                    jV = tostring(game.JobId)
                end
                kJ_5 = (kJ_5 + 19) % 56
            end
        else
            local qd = bit32.rrotate(bit32.bxor(bit32.lrotate(kJ_5, 23), string.byte(tostring(kP))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(qd, 3206397229), 4185666976), (bit32.bxor(bit32.band(qd, 1088570066), 1119652877))), 4185666976), 1119652877) ~= qd then
                jV = #kO > 18
            else
                kO = #jV > 18
            end
            kJ_5 = (kJ_5 + 47) % 56
        end
    elseif kH_7 <= 11 then
        if kH_7 <= 9 then
            if kH_7 <= 8 then
                local kW_2 = (vector.create((kJ_5 * 6 + 2) % 11 + 1, (kJ_5 * 8 + 4) % 13 + 1, (kJ_5 * 14 + 16) % 17 + 1))
                kX = (vector.create((kJ_5 * 2 + 4) % 11 + 1, (kJ_5 * 2 + 11) % 13 + 1, (kJ_5 * 12 + 6) % 17 + 1))
                local kY = (vector.create((kJ_5 * 1 + 4) % 5 + 1, (kJ_5 * 2 + 4) % 7 + 1, (kJ_5 * 4 + 7) % 9 + 1))
                if math.abs((vector.angle(kW_2, kX, kY))) - math.abs((vector.angle(kX, kW_2, kY))) == 1 then
                    setthreadidentity(8)
                    jQ = function(V)
                        local lt_2
                        local ls = jH and type(jH.RemoteEvent) == "function"
                        local ls_4, Remotes
                        if ls then
                            ls_4, lt_2 = pcall(function()
                                return jH.RemoteEvent(V)
                            end)
                            if ls_4 and lt_2 then
                                return lt_2
                            end
                            local Remotes2 = ky:FindFirstChild("Remotes")
                            if Remotes then
                                return Remotes2:FindFirstChild(V)
                            end
                            return nil
                        end
                        Remotes = ky:FindFirstChild("Remotes")
                        if Remotes then
                            return Remotes:FindFirstChild(V)
                        end
                        return nil
                    end
                    jO = jQ("SelectNumber")
                    jM = jQ("StepNumber")
                    jQ("EquipPlotCanvasPicture")
                else
                    setthreadidentity(8)
                    kK = function(V)
                        local lt_1
                        local ls = jH and type(jH.RemoteEvent) == "function"
                        local ls_1, Remotes
                        if ls then
                            ls_1, lt_1 = pcall(function()
                                return jH.RemoteEvent(V)
                            end)
                            if ls_1 and lt_1 then
                                return lt_1
                            end
                            local Remotes2 = ky:FindFirstChild("Remotes")
                            if Remotes then
                                return Remotes2:FindFirstChild(V)
                            end
                            return nil
                        end
                        Remotes = ky:FindFirstChild("Remotes")
                        if Remotes then
                            return Remotes:FindFirstChild(V)
                        end
                        return nil
                    end
                    jQ = kK("SelectNumber")
                    jO = kK("StepNumber")
                    jM = kK("EquipPlotCanvasPicture")
                end
                kJ_5 = (kJ_5 + 47) % 56
            else
                local kW_3 = {
                    "xvnospcmd",
                    "ghhpk",
                    "ndpfxfq",
                    "xzinbvfewm",
                    "xrgretegl",
                    "vzebao",
                    "kjyppaf",
                    "wjyagffbomk",
                    "ipr",
                    "xijuexs",
                    "adjtuyzz"
                }
                local qi = kJ_5
                kX = kW_3[qi % 11 + 1]
                if kX:len() >= kX:gsub("(.)", "%1%1", qi % 3 % 2 + 1):len() then
                    kw = fn494
                    kr = false
                    jI = 0
                    kv = fn858
                else
                    jI = fn494
                    kw = false
                    kv = 0
                    kr = fn858
                end
                kJ_5 = (kJ_5 + 33) % 56
            end
        elseif kH_7 <= 10 then
            if (kJ_5 * 3 + 8) * 21 % 4 == ((kJ_5 * 3 + 8) * 21 + 5) % 4 then
                kI = fn589
            else
                kk = fn589
            end
            kJ_5 = (kJ_5 + 47) % 56
        else
            local pS = bit32.rrotate(bit32.bxor(bit32.lrotate(kJ_5, 11), 104), 28)
            if bit32.bxor(bit32.lrotate(bit32.bxor(pS, 1603075335), 12), 3486545400) ~= bit32.lrotate(pS, 12) then
                kq = function(au)
                    task.spawn(function()
                        local lD_2
                        local lC_2
                        setthreadidentity(8)
                        while jI() do
                            lC_2, lD_2 = pcall(au)
                            local lE = not lC_2
                            if lE ~= false then
                                lE = jI()
                            end
                            if lE then
                                warn("[OuroborosHub] loop error: " .. tostring(lD_2))
                                task.wait(1)
                            end
                        end
                    end)
                end
                kc = fn601
                jU = fn804
                kV = fn252
                kx = function()
                    local lY_2
                    local lX_2
                    local lW_2
                    local lT_3, lT_4
                    local lU_4, lU_6
                    if not kC then
                        return nil, nil
                    end
                    lT_3, lU_4 = pcall(function()
                        return kC.GetData()
                    end)
                    local lV = not lT_3 or not lU_4 or not lU_4.Pictures
                    local lV_2
                    if lV then
                        return nil, nil
                    end
                    lW_2, lV_2, lT_4 = nil, nil, -1
                    for k, v in pairs(lU_4.Pictures) do
                        if v and v.Completed then
                            local lS = jP[k]
                            if lS then
                                lX_2, lY_2 = pcall(function()
                                    return jN.GetPriceForPicture(lS)
                                end)
                                local lZ = lX_2 and type(lY_2) == "number"
                                if lZ then
                                    lU_6 = lY_2
                                else
                                    lU_6 = 0
                                end
                                if lU_6 > lT_4 then
                                    lT_4 = lU_6
                                    lW_2 = k
                                    lV_2 = lS
                                end
                            end
                        end
                    end
                    return lW_2, lV_2, lT_4
                end
            else
                kV = function(au)
                    task.spawn(function()
                        local lD_1
                        local lC_1
                        setthreadidentity(8)
                        while jI() do
                            lC_1, lD_1 = pcall(au)
                            local lE = not lC_1
                            if lE ~= false then
                                lE = jI()
                            end
                            if lE then
                                warn("[OuroborosHub] loop error: " .. tostring(lD_1))
                                task.wait(1)
                            end
                        end
                    end)
                end
                jU = fn601
                kx = fn804
                kq = fn252
                kc = function()
                    local lY_1
                    local lX_1
                    local lW_1
                    local lT_1, lT_2
                    local lU_1, lU_3
                    if not kC then
                        return nil, nil
                    end
                    lT_1, lU_1 = pcall(function()
                        return kC.GetData()
                    end)
                    local lV = not lT_1 or not lU_1 or not lU_1.Pictures
                    local lV_1
                    if lV then
                        return nil, nil
                    end
                    lW_1, lV_1, lT_2 = nil, nil, -1
                    for k, v in pairs(lU_1.Pictures) do
                        if v and v.Completed then
                            local lS = jP[k]
                            if lS then
                                lX_1, lY_1 = pcall(function()
                                    return jN.GetPriceForPicture(lS)
                                end)
                                local lZ = lX_1 and type(lY_1) == "number"
                                if lZ then
                                    lU_3 = lY_1
                                else
                                    lU_3 = 0
                                end
                                if lU_3 > lT_2 then
                                    lT_2 = lU_3
                                    lW_1 = k
                                    lV_1 = lS
                                end
                            end
                        end
                    end
                    return lW_1, lV_1, lT_2
                end
            end
            kJ_5 = (kJ_5 + 33) % 56
        end
    elseif kH_7 <= 13 then
        if kH_7 <= 12 then
            local qg = bit32.rrotate(bit32.bxor(bit32.lrotate(kJ_5, 24), string.byte(tostring(kk))), 1)
            if bit32.bxor(bit32.lrotate(bit32.bxor(qg, 104552771), 28), 811840916) ~= bit32.lrotate(qg, 28) then
                j4 = j8:CreateWindow({
                    Footer = { kN, "|", { Text = "https://discord.gg/ehKVq7pf7v", Copyable = true } },
                    Font = Enum.Font.BuilderSans,
                    CornerRadius = 0,
                    ShowCustomCursor = false,
                    NotifySide = "Right",
                    Title = "Ouroboros",
                    Icon = 78539693571783
                })
            else
                kN = j4:CreateWindow({
                    Title = "Ouroboros",
                    Font = Enum.Font.BuilderSans,
                    Footer = { { Text = "https://discord.gg/ehKVq7pf7v", Copyable = true }, "|", j8 },
                    Icon = 78539693571783,
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 0
                })
            end
            kJ_5 = (kJ_5 + 5) % 56
        else
            if kJ_5 * 89118083 + 5 + 1 <= kJ_5 * 89118083 + 5 + 1 + 2 then
                Options = j4.Options
            else
                j4 = Options.Options
            end
            kJ_5 = (kJ_5 + 33) % 56
        end
    else
        if (kB and not jO or (jO or not kB) or (jO or jQ or kP and kP)) and (kq and not kP and (kB or jO) or (kB or kB) and (kq or not kq)) or not ((kB and not jO or (jO or not kB) or (jO or jQ or kP and kP)) and (kq and not kP and (kB or jO) or (kB or kB) and (kq or not kq))) then
            kl = j4.Toggles
            ki = "https://discord.gg/ehKVq7pf7v"
            kd = "https://rscripts.net/@Ouroboros"
            j9 = fn482
        else
            j4 = nil
            kl = "https://discord.gg/ehKVq7pf7v"
            j9 = "https://rscripts.net/@Ouroboros"
            kd = fn482
        end
        kJ_5 = (kJ_5 + 47) % 56
    end
until (kJ_5 * 19 + 35) % 56 == 44
if kO then
    local kH_8 = 5
    repeat
        kI = {
            "zapwezojom",
            "fpcjxzbadct",
            "bls",
            "jheishaytop",
            "iypzmxyz",
            "bqpvporkpo",
            "fexwwf",
            "biraomjvy",
            "drmkh",
            "dvfwv",
            "gbg"
        }
        local qk = kH_8
        local kJ_6 = kI[qk % 11 + 1]
        if kJ_6:len() >= kJ_6:reverse():rep(qk % 3 + 2):len() then
            jV = string.sub(kO, 1, 18) .. "..."
        else
            kO = string.sub(jV, 1, 18) .. "..."
        end
        kH_8 = (kH_8 + 2) % 8
    until (kH_8 * 7 + 5) % 8 == 6
end
local kH_9 = kO
le = if kH_9 then 1 else 0
lc = 3819 * le + 525 * (1 - le)
ld = 3465 * le + 2962 * (1 - le)
if not ((lc * 1477 + ld * 1610 + lc * ld) % 16777213 == 7674935) then
    kH_9 = jV
end
jG, j7, j5, j3, j_, jY, jW, jT, k5, k6, Label = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kO = kH_9
kQ:AddLabel(kB("Server", kO, kR), true)
kQ:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
jG = os.clock()
task.spawn(worker)
local ScriptsGroup = kU.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(jK("Included in this hub", kR), true)
ScriptsGroup:AddLabel(jK(j8, kS), true)
local FeaturesGroup = kU.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(jK("Auto Paint", kS), true)
FeaturesGroup:AddLabel(jK("Auto Place Best Picture", km), true)
FeaturesGroup:AddLabel(jK("Player Movement", kR), true)
local SocialsGroup = kU.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = j1 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = kU.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = j1 })
j7 = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
j5 = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
j3 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
j_ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
jY = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
jW = "https://paypal.me/TheTruckerGOD"
jT = "https://venmo.com/u/miserablemusic"
kW_4, kN, kK, kJ_7, kI, k4, k3 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
local DonationsGroup = kU.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(jK("All donations are optional but appreciated.", km), true)
DonationsGroup:AddLabel(jK("If you donate you get a special role, just PING after you donate.", kT), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jK("LTC / Litecoin", kW_4), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(jK("BTC / Bitcoin", kN), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(jK("ETH / Ethereum", kK), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(jK("USDT", kJ_7), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(jK("Solana", kI), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(jK("PayPal", k4), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(jK("Venmo", k3), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(jK("Don't have any of the listed currencies but still wanna donate?", kR), true)
DonationsGroup:AddLabel(jK("DM me and we'll work something out.", kS), true)
kX = kU.Info:AddRightGroupbox("FAQ", "circle-help")
if (DonationsGroup and not kN or (false or DonationsGroup)) and (DonationsGroup or kN or not kO and kO) or not ((DonationsGroup and not kN or (false or DonationsGroup)) and (DonationsGroup or kN or not kO and kO)) then
    kX:AddLabel("Where do I get a good config?", true)
    kX:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    kX:AddLabel("How do I import / export configs?", true)
    kX:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    kX:AddLabel("How do I report bugs?", true)
    kX:AddLabel("Join the Discord and post it in the bugs channel.", true)
    kX:AddLabel("How do I make suggestions?", true)
    kX:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    kX:AddLabel("How do I get help or updates?", true)
    kX:AddLabel("Join the Discord, updates and support are posted there first.", true)
    kU.Farming:SetSubTabAlignment("Center")
    k5 = kU.Farming:AddSubTab("Painting", "brush")
else
    k5:AddLabel("Where do I get a good config?", true)
    k5:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    k5:AddLabel("How do I import / export configs?", true)
    k5:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    k5:AddLabel("How do I report bugs?", true)
    k5:AddLabel("Join the Discord and post it in the bugs channel.", true)
    k5:AddLabel("How do I make suggestions?", true)
    k5:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    k5:AddLabel("How do I get help or updates?", true)
    k5:AddLabel("Join the Discord, updates and support are posted there first.", true)
    kX.Farming:SetSubTabAlignment("Center")
    kU = kX.Farming:AddSubTab("Painting", "brush")
end
if (false or (not DonationsGroup and not DonationsGroup or (not DonationsGroup or k4)) or (false and not DonationsGroup or (false or DonationsGroup)) and (false and (not DonationsGroup and false))) and not (false or (not DonationsGroup and not DonationsGroup or (not DonationsGroup or k4)) or (false and not DonationsGroup or (false or DonationsGroup)) and (false and (not DonationsGroup and false))) then
    kU = k6.Farming:AddSubTab("Canvas", "image")
else
    k6 = kU.Farming:AddSubTab("Canvas", "image")
end
kP(k5)
kP(k6)
kP(kU.Player)
local k8
local k9 = 0
repeat
    local qP = bit32.rrotate(bit32.bxor(bit32.lrotate(k9, 21), string.byte(tostring(k8))), 13)
    if bit32.bxor(bit32.lrotate(bit32.bxor(qP, 170462651), 22), 1858243139) ~= bit32.lrotate(qP, 22) then
        k7 = Label:AddRightGroupbox("Auto Paint", "paintbrush")
        k7:AddToggle("AutoPaint", { Text = "Auto Paint", Default = false })
        k7:AddSlider("AutoPaintInterval", { Min = 0.1, Text = "Interval", Default = 0.2, Rounding = 1, Suffix = "s", Max = 10 })
        k7:AddToggle("AutoPaintSmartCycle", { Text = "Smart Color Cycle", Default = true })
        k7:AddSlider("AutoPaintBatch", { Text = "Parts Per Tick", Min = 1, Max = 50, Default = 15, Suffix = " parts", Rounding = 0 })
        k5 = Label:AddRightGroupbox("Status", "activity")
        k8 = k5:AddLabel("Status: Idle", true)
    else
        k8 = k5:AddRightGroupbox("Auto Paint", "paintbrush")
        k8:AddToggle("AutoPaint", { Text = "Auto Paint", Default = false })
        k8:AddSlider("AutoPaintInterval", { Text = "Interval", Default = 0.2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
        k8:AddToggle("AutoPaintSmartCycle", { Text = "Smart Color Cycle", Default = true })
        k8:AddSlider("AutoPaintBatch", { Text = "Parts Per Tick", Default = 15, Min = 1, Max = 50, Rounding = 0, Suffix = " parts" })
        k7 = k5:AddRightGroupbox("Status", "activity")
        Label = k7:AddLabel("Status: Idle", true)
    end
    k9 = (k9 + 0) % 4
until (k9 * 1 + 0) % 4 == 0
local CanvasDisplayGroup = k6:AddRightGroupbox("Canvas Display", "image")
if ((not CanvasDisplayGroup or not CanvasDisplayGroup or false) and (not CanvasDisplayGroup and 10 and 10) or (not CanvasDisplayGroup or not CanvasDisplayGroup) and false) and not ((not CanvasDisplayGroup or not CanvasDisplayGroup or false) and (not CanvasDisplayGroup and 10 and 10) or (not CanvasDisplayGroup or not CanvasDisplayGroup) and false) then
    CanvasDisplayGroup:AddToggle("AutoPlaceBest", { Text = "Auto Place Best Earning Picture on Canvas", Default = false })
    CanvasDisplayGroup:AddSlider("AutoPlaceInterval", { Min = 0.1, Suffix = "s", Text = "Check Interval", Max = 10, Default = 2, Rounding = 1 })
    CanvasDisplayGroup:AddButton({
        Text = "Place Best Now",
        Func = function()
            local mp, mq
            mq = kc()
            if not mq then
                pcall(function()
                    j4:Notify({ Title = "Canvas", Description = "No completed picture to place.", Time = 3 })
                end)
                return
            end
            local mr = kq()
            if not mr then
                pcall(function()
                    j4:Notify({ Title = "Canvas", Description = "No plot/canvas found. Go to your plot.", Time = 3 })
                end)
                return
            end
            mp = 0
            for i = 1, 16 do
                local my = i
                local ms = mr:FindFirstChild("Slot" .. my)
                local mt = ms and ms:GetAttribute("SelectedPicture") == nil
                if mt then
                    local ms_2 = pcall(function()
                        if jM then
                            jM:FireServer(my, mq)
                        end
                    end)
                    if ms_2 then
                        mp += 1
                    end
                    task.wait(0.1)
                end
            end
            pcall(function()
                j4:Notify({ Title = "Canvas", Description = "Placed " .. mq .. " on " .. mp .. " empty slots.", Time = 3 })
            end)
        end
    })
else
    CanvasDisplayGroup:AddToggle("AutoPlaceBest", { Text = "Auto Place Best Earning Picture on Canvas", Default = false })
    CanvasDisplayGroup:AddSlider("AutoPlaceInterval", { Text = "Check Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
    CanvasDisplayGroup:AddButton({
        Text = "Place Best Now",
        Func = function()
            local mp, mq
            mq = kc()
            if not mq then
                pcall(function()
                    j4:Notify({ Title = "Canvas", Description = "No completed picture to place.", Time = 3 })
                end)
                return
            end
            local mr = kq()
            if not mr then
                pcall(function()
                    j4:Notify({ Title = "Canvas", Description = "No plot/canvas found. Go to your plot.", Time = 3 })
                end)
                return
            end
            mp = 0
            for i = 1, 16 do
                local my = i
                local ms = mr:FindFirstChild("Slot" .. my)
                local mt = ms and ms:GetAttribute("SelectedPicture") == nil
                if mt then
                    local ms_1 = pcall(function()
                        if jM then
                            jM:FireServer(my, mq)
                        end
                    end)
                    if ms_1 then
                        mp += 1
                    end
                    task.wait(0.1)
                end
            end
            pcall(function()
                j4:Notify({ Title = "Canvas", Description = "Placed " .. mq .. " on " .. mp .. " empty slots.", Time = 3 })
            end)
        end
    })
end
CurrentCamera, kG, kD, connection, connection2, kP, jS, jJ, ka, ks, kA, kh, j6, kz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
kO = kU.Player:AddRightGroupbox("Movement", "footprints")
kO:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
kO:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
kO:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
kO:AddToggle("NoClip", { Text = "NoClip", Default = false })
kO:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
kK = kU.Player:AddLeftGroupbox("Fly", "feather")
kK:AddToggle("Fly", { Text = "Fly", Default = false })
kK:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
jS = fn420
jJ = fn473
kM.Stepped:Connect(onStepped)
kp.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
kM.RenderStepped:Connect(onRenderStepped)
kl.Fly:OnChanged(fn502)
kl.WalkSpeedEnabled:OnChanged(fn330)
ka = function(dJ)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not dJ)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not dJ
        end
    end)
    if not dJ then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(kg, "GameplayPaused", false)
        else
            kg.GameplayPaused = false
        end
    end)
end
kl.AntiGameplayPause:OnChanged(fn703)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = kU.Settings:AddLeftGroupbox("Menu", "wrench")
kG = tick()
kD = tick()
pcall(function()
    for i, v in ipairs(getconnections(kg.Idled)) do
        local nd = v
        pcall(function()
            nd:Disable()
        end)
    end
end)
ks = fn55
connection = kp.InputBegan:Connect(onInputBegan)
connection2 = kp.InputChanged:Connect(onInputChanged)
if (MenuGroup and not ks and (not MenuGroup or MenuGroup) and (not ks or not MenuGroup or (not MenuGroup or not ks)) or (not ks and ks or MenuGroup and not MenuGroup) and (not MenuGroup or MenuGroup or (ks or ks))) and not (MenuGroup and not ks and (not MenuGroup or MenuGroup) and (not ks or not MenuGroup or (not MenuGroup or not ks)) or (not ks and ks or MenuGroup and not MenuGroup) and (not MenuGroup or MenuGroup or (ks or ks))) then
    Options:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    task.spawn(antiAfkLoop)
    Options:AddButton("Unload", onUnload)
    Options:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Text = "Menu keybind", NoUI = true })
    kU.ToggleKeybind = MenuGroup.MenuKeybind
    kP:SetLibrary(kU)
    kL:SetLibrary(kU)
    kL:IgnoreThemeSettings()
    kL:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    kP:SetFolder("OuroborosHub")
    kL:SetFolder("OuroborosHub/AnimeGirlPaintByNumbers")
    j4 = kL:BuildConfigSection(SaveManager.Settings)
else
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    task.spawn(antiAfkLoop)
    MenuGroup:AddButton("Unload", onUnload)
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    j4.ToggleKeybind = Options.MenuKeybind
    kL:SetLibrary(j4)
    SaveManager:SetLibrary(j4)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    kL:SetFolder("OuroborosHub")
    SaveManager:SetFolder("OuroborosHub/AnimeGirlPaintByNumbers")
    kP = SaveManager:BuildConfigSection(kU.Settings)
end
kL:ApplyToTab(kU.Settings)
kL:SaveDefault("Evil Hello Kitty")
kL:LoadDefault()
kA = fn779
kh = fn698
j6 = fn221
kz = function(eM)
    local nY
    nY = nil
    local nZ = type(eM) ~= "table" or type(eM.idx) ~= "string" or type(eM.type) ~= "string" or SaveManager.Ignore[eM.idx]
    if nZ then
        return false
    end
    nY = kA(eM.type, eM.idx)
    if not nY then
        return false
    end
    local nZ_1 = pcall(function()
        if eM.type == "Input" then
            if type(eM.text) ~= "string" then
                return
            end
            nY:SetValue(eM.text)
        elseif eM.type == "ColorPicker" then
            nY:SetValueRGB(Color3.fromHex(eM.value), eM.transparency)
        elseif eM.type == "KeyPicker" then
            nY:SetValue({ eM.key, eM.mode, eM.modifiers })
            if eM.mode == "Toggle" and eM.toggled ~= nil then
                nY.Toggled = eM.toggled
                nY:Update()
            end
        else
            nY:SetValue(eM.value)
        end
    end)
    return nZ_1
end
kP:AddDivider()
kP:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
kP:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
kP:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
pcall(fn305)
kV(function()
    local oR, oS, oT
    if not kl.AutoPaint.Value then
        pcall(function()
            Label:SetText("Status: Idle")
        end)
        task.wait(0.5)
        return
    end
    local Value = Options.AutoPaintInterval.Value
    local oW = Options.AutoPaintBatch and Options.AutoPaintBatch.Value
    local o_ = if oW then 1 else 0
    local oY = 1968 * o_ + 169 * (1 - o_)
    local oZ = 3916 * o_ + 3504 * (1 - o_)
    if not ((oY * 1986 + oZ * 1558 + oY * oZ) % 16777213 == 939051) then
        oW = 15
    end
    oR = oW
    local oW_1 = kl.AutoPaintSmartCycle and kl.AutoPaintSmartCycle.Value
    local o5 = if oW_1 then 1 else 0
    local o3 = 3029 * o5 + 2649 * (1 - o5)
    local o4 = 2783 * o5 + 645 * (1 - o5)
    if not ((o3 * 2060 + o4 * 3531 + o3 * o4) % 16777213 == 7719007) then
        oW_1 = false
    end
    oT = oW_1
    if not kr() then
        task.wait(Value)
        return
    end
    oS = false
    pcall(function()
        local ol, om
        local ov_2
        local op = not jQ
        local op_2
        local oq = not jO or op
        local oq_1, oq_7
        if oq then
            Label:SetText("Status: Remotes missing")
            return
        end
        local op_1 = jN
        ol = nil
        if op_1 then
            op_1 = jN.GetLoadedPicture
        end
        if op_1 then
            op_2, oq_1 = pcall(function()
                return jN.GetLoadedPicture(kb)
            end)
            if op_2 then
                ol = oq_1
            else
                ol = kb:GetAttribute("LoadedPicture")
            end
        else
            ol = kb:GetAttribute("LoadedPicture")
        end
        if not ol then
            Label:SetText("Status: No picture loaded")
            return
        end
        local op_3 = jP[ol]
        if not op_3 then
            Label:SetText("Status: Picture data missing")
            return
        end
        local oq_2 = jN.IsPictureBusy and jN.IsPictureBusy(kb)
        if oq_2 then
            Label:SetText("Status: Picture busy")
            return
        end
        local oq_3 = kx()
        if not oq_3 then
            Label:SetText("Status: Go to your plot")
            return
        end
        om = 0
        local ot = {}
        for i, child in ipairs(oq_3:GetChildren()) do
            local oq_4 = child:IsA("BasePart") and child:GetAttribute("D") ~= true
            if oq_4 then
                local attr = child:GetAttribute("N")
                if attr then
                    local ov_1 = ot[attr] or {}
                    ot[attr] = ov_1
                    table.insert(ot[attr], child)
                    om += 1
                end
            end
        end
        if om == 0 then
            Label:SetText("Status: Picture complete")
            return
        end
        local oq_6 = jN
        local ou_2 = nil
        if oq_6 then
            oq_6 = jN.GetSelectedColor
        end
        if oq_6 then
            oq_7, ov_2 = pcall(function()
                return jN.GetSelectedColor(kb)
            end)
            if oq_7 then
                ou_2 = ov_2
            end
        end
        if not ou_2 then
            ou_2 = kb:GetAttribute("SelectedColorNumber")
        end
        local oo
        if oT then
            if ou_2 and ot[ou_2] and #ot[ou_2] > 0 then
                oo = ou_2
            else
                if op_3 and op_3.PartData and op_3.PartData.SortedNumbers then
                    for i, v in ipairs(op_3.PartData.SortedNumbers) do
                        if ot[v] and #ot[v] > 0 then
                            oo = v
                            break
                        end
                    end
                end
                if oo then
                    local op_5 = pcall(function()
                        jQ:FireServer(oo)
                    end)
                    if not op_5 then
                        pcall(function()
                            jQ:FireServer(tonumber(oo))
                        end)
                    end
                    task.wait(0.15)
                end
            end
        else
            if not ou_2 or not ot[ou_2] then
                Label:SetText("Status: Selected color has no cells")
                return
            end
            oo = ou_2
        end
        if not oo then
            Label:SetText("Status: No target color")
            return
        end
        local oq_10 = ot[oo] or {}
        if #oq_10 == 0 then
            Label:SetText("Status: Cycling colors")
            return
        end
        local oq_11 = math.min(#oq_10, oR)
        pcall(function()
            Label:SetText("Status: Painting " .. tostring(ol) .. " (" .. om .. " left)")
        end)
        for i = 1, oq_11 do
            if not jI() then
                break
            elseif not kl.AutoPaint.Value then
                break
            else
                local on = oq_10[i]
                local ot_1 = on and on:GetAttribute("D") ~= true
                if ot_1 then
                    local ot_2 = pcall(function()
                        jO:FireServer(on.Name)
                    end)
                    if not ot_2 then
                        pcall(function()
                            jQ:FireServer(oo)
                            task.wait(0.05)
                            jO:FireServer(on.Name)
                        end)
                    else
                        oS = true
                    end
                    if i < oq_11 then
                        task.wait(0.03)
                    end
                end
            end
        end
    end)
    kk()
    task.wait(Value)
end)
kV(function()
    if not kl.AutoPlaceBest.Value then
        task.wait(1)
        return
    end
    local Value = Options.AutoPlaceInterval.Value
    if not kr() then
        task.wait(Value)
        return
    end
    pcall(function()
        local o7
        local o9_1
        local o8_1
        o7, o9_1, o8_1 = kc()
        if not o7 then
            Label:SetText("Status: No completed picture to place")
            return
        end
        local o8_2 = kq()
        if not o8_2 then
            Label:SetText("Status: Canvas slots not found")
            return
        end
        local o9_2 = {}
        local pi = 1
        while pi <= 16 do
            local pk = pi
            local pa = o8_2:FindFirstChild("Slot" .. pk)
            if pa then
                if pa:GetAttribute("SelectedPicture") == nil then
                    table.insert(o9_2, pk)
                end
            else
                local pa_1 = o8_2:FindFirstChild(tostring(pk)) or o8_2:FindFirstChild("Canvas" .. pk)
                local pb = pa_1
                if pa_1 then
                    pa_1 = pb:GetAttribute("SelectedPicture") == nil
                end
                if pa_1 then
                    table.insert(o9_2, pk)
                end
            end
            pi += 1
        end
        if #o9_2 == 0 then
            Label:SetText("Status: Canvas filled with " .. tostring(o7))
            return
        end
        Label:SetText("Status: Placing " .. tostring(o7) .. " on " .. #o9_2 .. " slots")
        for i, v in ipairs(o9_2) do
            local pq = v
            if not jI() then
                break
            elseif not kl.AutoPlaceBest.Value then
                break
            else
                pcall(function()
                    if jM then
                        jM:FireServer(pq, o7)
                    end
                end)
                task.wait(0.15)
            end
        end
    end)
    kk()
    task.wait(Value)
end)
pcall(fn555)
j4:OnUnload(fn563)
