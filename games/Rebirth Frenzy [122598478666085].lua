local kl
local kI
local j_
local ko
local j2
local SaveManager
local Library
local kv
local ky
local kb
local jT
local kB
local kh
local jW
local jZ
local kH
local kk
local Toggles
local HttpService
local VirtualUser
local j4
local kt
local j7
local kx
local ka
local kA
local Label
local connection
local kg
local LocalPlayer
local connection2
local j0
local __ouroboros_gen
local km
local Options
local kp
local kM
local j6
local UserInputService
local j9
local kw
local jR
local kc
local Eggs
local kf
local ki
local CurrentCamera
local jX
local function fn114(di, dj)
    local mY_1 = (di == "Toggle" and Toggles or Options)[dj]
    local mX_2 = type(mY_1) == "table" and mY_1.Type == di
    return mX_2 and mY_1 or nil
end
local function fn122()
    if Toggles.UseServerAutoTap.Value then
        pcall(function()
            if j0 then
                j0:FireServer()
            end
        end)
        jZ("Server AutoTap", "Toggled server auto via ToggleAutoTap", 2)
    end
end
local function fn127(aw)
    local DiscordGroup = aw:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kk })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kk })
end
local function onCopyUSDTAddress()
    kt(kg, "Copied USDT address")
end
local function onCopyJoinScript_JobID()
    local lU = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ka)
    if setclipboard then
        setclipboard(lU)
    elseif toclipboard then
        toclipboard(lU)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn153()
    return kM.__ouroboros_gen == __ouroboros_gen
end
local function onInputBegan()
    kl = tick()
end
local function fn217()
    local n5_1
    local n2 = not Eggs
    local oa = if n2 then 1 else 0
    local n8 = 1397 * oa + 3708 * (1 - oa)
    local n9 = 2634 * oa + 3483 * (1 - oa)
    if not ((n8 * 3064 + n9 * 633 + n8 * n9) % 16777213 == 9627428) then
        n2 = not LocalPlayer.Character
    end
    if not n2 then
        n2 = not LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    end
    if n2 then
        return nil
    end
    local HumanoidRootPart = LocalPlayer.Character.HumanoidRootPart
    local n3 = jX()
    local n3_1
    local n4 = {}
    for i, v in ipairs(n3) do
        n4[v] = true
    end
    n5_1, n3_1 = nil, math.huge
    for i, child in ipairs(Eggs:GetChildren()) do
        local n6 = child:IsA("Model") and child.PrimaryPart and n4[child.Name]
        if n6 then
            local Magnitude = (HumanoidRootPart.Position - child.PrimaryPart.Position).Magnitude
            if Magnitude < n3_1 then
                n3_1 = Magnitude
                n5_1 = child
            end
        end
    end
    return n5_1, n3_1
end
local function onCopyLitecoinAddress()
    kt(kp, "Copied Litecoin address")
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local mb_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if mb_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn256(ap, aq)
    if setclipboard then
        setclipboard(ap)
    elseif toclipboard then
        toclipboard(ap)
    end
    Library:Notify(aq)
end
local function onRscripts()
    if setclipboard then
        setclipboard(ky)
    elseif toclipboard then
        toclipboard(ky)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn266()
    if not Toggles.Fly.Value then
        local mv = kw()
        if mv then
            mv.PlatformStand = false
        end
    end
end
local function fn296()
    kM.__ouroboros_gen = kM.__ouroboros_gen + 1
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    jR(false)
    jZ("Ouroboros", "Unloaded", 2)
end
local function onUnload()
    Library:Unload()
end
local function onImportConfigFromClipboardTex()
    local nG_1
    local nE = Options.SaveManager_ImportSource.Value or ""
    local nE_1
    local nF = tostring(nE):match("^%s*(.-)%s*$")
    if nF == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    nE_1, nG_1 = pcall(HttpService.JSONDecode, HttpService, nF)
    local nF_1 = not nE_1
    local nK = if nF_1 then 1 else 0
    local nI = 967 * nK + 223 * (1 - nK)
    local nJ = 1827 * nK + 780 * (1 - nK)
    if not ((nI * 3245 + nJ * 396 + nI * nJ) % 16777213 == 5628116) then
        nF_1 = type(nG_1) ~= "table"
    end
    if not nF_1 then
        nF_1 = type(nG_1.objects) ~= "table"
    end
    if nF_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local nE_2 = 0
    for i, v in ipairs(nG_1.objects) do
        if kc(v) then
            nE_2 += 1
        end
    end
    if nE_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local nG_2 = nE_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(nE_2, nG_2), 6)
end
local function onCopyPayPalLink()
    kt(kb, "Copied PayPal link")
end
local function fn340()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    kh = tick()
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            jR(true)
        end
    end
end
local function onRenderStepped(cj)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local mo_1 = kw()
        if mo_1 then
            mo_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local mo_3 = ko()
        local mp = kw()
        if mo_3 and mp then
            mp.PlatformStand = true
            local mp_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                mp_1 = mp_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                mp_1 = mp_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                mp_1 = mp_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                mp_1 = mp_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                mp_1 = mp_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                mp_1 = mp_1 - Vector3.new(0, 1, 0)
            end
            mo_3.Velocity = Vector3.zero
            if mp_1.Magnitude > 0 then
                mo_3.CFrame = mo_3.CFrame + mp_1.Unit * Options.FlySpeed.Value * cj
            end
        end
    end
end
local function onCopyVenmoLink()
    kt(j9, "Copied Venmo link")
end
local function onCopySolanaAddress()
    kt(kf, "Copied Solana address")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local mj_1 = kw()
        if mj_1 then
            mj_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn422()
    SaveManager:LoadAutoloadConfig()
end
local function fn433()
    local Character = LocalPlayer.Character
    local l3 = Character and Character:FindFirstChildOfClass("Humanoid")
    return l3
end
local function autoClickIntervalLoop()
    setthreadidentity(8)
    while true do
        local oA = kH() and not Library.Unloaded
        if oA then
            local oB = Options.AutoClickInterval and Options.AutoClickInterval.Value or 0.01
            if Toggles.AutoClick and Toggles.AutoClick.Value then
                pcall(function()
                    if j4 then
                        j4:FireServer()
                    elseif j7 then
                        j7:FindFirstChild("Tap"):FireServer()
                    end
                end)
            end
            task.wait(oB)
            local oA_3 = not kH() or Library.Unloaded
            if oA_3 then
                break
            end
            continue
        end
        break
    end
end
local function fn486()
    local lQ_1
    local lP_1
    if identifyexecutor then
        lQ_1, lP_1 = identifyexecutor()
        local lR = lQ_1 ~= ""
        local lS = type(lQ_1) == "string" and lR
        if lS then
            local lR_1 = type(lP_1) == "string" and lP_1 ~= "" and lQ_1 .. " " .. lP_1
            kv = lR_1 or lQ_1
        end
    end
end
local function fn498(aC, aD)
    return string.format('<font color="%s">%s</font>', aD, aC)
end
local function onCopyBitcoinAddress()
    kt(km, "Copied Bitcoin address")
end
local function fn521(aF, aG, aH)
    return string.format("<b>%s</b> %s %s", aF, j2("-", "#5a6070"), j2(aG, aH))
end
local function onExportConfigToClipboard()
    local nv_1
    local nu_1
    nu_1, nv_1 = pcall(HttpService.JSONEncode, HttpService, kI())
    if not nu_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local nu_2 = setclipboard
    local nA = if nu_2 then 1 else 0
    local ny = 1211 * nA + 2278 * (1 - nA)
    local nz = 3805 * nA + 2093 * (1 - nA)
    if not ((ny * 1030 + nz * 3644 + ny * nz) % 16777213 == 2943392) then
        nu_2 = toclipboard
    end
    local nw = nu_2
    local nu_3 = type(nw) ~= "function" or not pcall(nw, nv_1)
    if nu_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn621()
    local nR = Options.SelectedEggs and Options.SelectedEggs.Value
    if not nR then
        return { kx[1] }
    elseif type(nR) == "string" then
        return { nR }
    elseif type(nR) == "table" then
        local nR_1 = {}
        for k, v in pairs(nR) do
            if v then
                table.insert(nR_1, k)
            end
        end
        if #nR_1 == 0 then
            return { kx[1] }
        end
        return nR_1
    else
        return { kx[1] }
    end
end
local function fn640()
    if not Toggles.WalkSpeedEnabled.Value then
        local mx = kw()
        if mx then
            mx.WalkSpeed = 16
        end
    end
end
local function fn643()
    local m7 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local m8 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if m8 then
                local m8_1 = jW(k, v)
                if m8_1 then
                    m7[#m7 + 1] = m8_1
                end
            end
        end
    end
    table.sort(m7, function(dG, dH)
        if dG.type ~= dH.type then
            return dG.type < dH.type
        end
        return dG.idx < dH.idx
    end)
    return { objects = m7 }
end
local function onInputChanged(c1)
    local UserInputType = c1.UserInputType
    local mO = UserInputType == Enum.UserInputType.MouseMovement
    local mS = if mO then 1 else 0
    local mQ = 505 * mS + 3121 * (1 - mS)
    local mR = 1401 * mS + 231 * (1 - mS)
    if not ((mQ * 1041 + mR * 3119 + mQ * mR) % 16777213 == 5602929) then
        mO = UserInputType == Enum.UserInputType.Gamepad1
    end
    if mO then
        kl = tick()
    end
end
local function fn676()
    Options.AutoClickInterval:SetValue(0.01)
end
local function fn743()
    jR(Toggles.AntiGameplayPause.Value)
end
local function fn750()
    local Character = LocalPlayer.Character
    local l9 = Character and Character:FindFirstChild("HumanoidRootPart")
    return l9
end
local function onCopyEthereumAddress()
    kt(ki, "Copied Ethereum address")
end
local function fn805()
    kt(kA, "Copied Discord invite to clipboard")
end
local function fn808()
    Library:Unload()
end
local function fn821()
    Options.AutoHatchInterval:SetValue(0.01)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local mT = tick() - kl
            local mU = tick() - kh
            if mT >= 300 and mU >= 60 then
                pcall(j6)
            else
                if mT < 300 and mU >= 300 then
                    pcall(j6)
                end
            end
        end
    end
end
local function worker()
    local lX_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local lW = math.floor(os.clock() - j_)
        if lW < 60 then
            lX_1 = lW .. "s"
        elseif lW < 3600 then
            lX_1 = string.format("%dm %ds", lW // 60, lW % 60)
        else
            lX_1 = string.format("%dh %dm", lW // 3600, lW % 3600 // 60)
        end
        Label:SetText(jT("Session time", lX_1, kB))
    end
end
local function fn895()
    setthreadidentity(8)
end
local function fn900(dr, ds)
    local Type = ds.Type
    if Type == "Toggle" then
        return { idx = dr, type = "Toggle", value = ds.Value == true }
    elseif Type == "Slider" then
        return { idx = dr, type = "Slider", value = tostring(ds.Value) }
    elseif Type == "Dropdown" then
        return { idx = dr, type = "Dropdown", multi = ds.Multi == true, value = ds.Value }
    elseif Type == "Input" then
        local m4 = ds.Value or ""
        return { idx = dr, type = "Input", text = tostring(m4) }
    elseif Type == "ColorPicker" then
        return { idx = dr, type = "ColorPicker", value = ds.Value:ToHex(), transparency = ds.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = dr,
            type = "KeyPicker",
            mode = ds.Mode,
            key = ds.Value,
            modifiers = ds.Modifiers,
            toggled = ds.Toggled
        }
    else
        return nil
    end
end
jR = nil
jT = nil
connection = nil
jW = nil
jX = nil
jZ = nil
j_ = nil
j0 = nil
Toggles = nil
j2 = nil
Options = nil
j4 = nil
SaveManager = nil
j6 = nil
j7 = nil
Library = nil
j9 = nil
ka = nil
kb = nil
kc = nil
Label = nil
kf = nil
kg = nil
kh = nil
ki = nil
LocalPlayer = nil
kk = nil
kl = nil
km = nil
HttpService = nil
ko = nil
kp = nil
VirtualUser = nil
UserInputService = nil
kt = nil
kv = nil
kw = nil
kx = nil
ky = nil
Eggs = nil
kA = nil
kB = nil
local jQ, Upgrade, Rebirth, ke, kC, kD, kE
CurrentCamera = nil
connection2 = nil
kH = nil
kI = nil
__ouroboros_gen = nil
kM = nil
local kK, kQ, kR, kS, kT, kU, kZ, k4, k6, DonationsGroup
local kP_13
local kO = getgenv().OuroborosHub
if kO then
    local kP_1 = 7
    repeat
        if (kP_1 * 2 + 6) * 10 % 3 == ((kP_1 * 2 + 6) * 10 + 0) % 3 then
            kO = getgenv().OuroborosHub.Unload
        else
            kO = getgenv().OuroborosHub.Unload
        end
        kP_1 = (kP_1 + 4) % 8
    until (kP_1 * 5 + 3) % 8 == 2
end
if kO then
    local kP_2 = 5
    repeat
        local pG = bit32.rrotate(bit32.bxor(bit32.lrotate(kP_2, 23), string.byte(tostring(kP_2))), 6)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(pG, 3447653695), 1595804180), (bit32.bxor(bit32.band(pG, 847313600), 3254933398))), 1595804180), 3254933398) ~= pG then
            pcall(getgenv().OuroborosHub.Unload)
        else
            pcall(getgenv().OuroborosHub.Unload)
        end
        kP_2 = (kP_2 + 5) % 8
    until (kP_2 * 1 + 5) % 8 == 7
end
kM = getgenv()
local kO_1 = kM.__ouroboros_gen or 0
__ouroboros_gen, kT, UserInputService, VirtualUser, HttpService, LocalPlayer, j7, kU, kH = nil, nil, nil, nil, nil, nil, nil, nil, nil
kM.__ouroboros_gen = kO_1 + 1
__ouroboros_gen = kM.__ouroboros_gen
kH = fn153
local kV = game:GetService("ReplicatedStorage")
if (kU or not LocalPlayer or (LocalPlayer or not kU) or not LocalPlayer and not VirtualUser and (not kU and not UserInputService) or (not UserInputService and not UserInputService and (kU and VirtualUser) or (LocalPlayer or UserInputService) and (kU or kU))) and ((not VirtualUser and not LocalPlayer or kU and UserInputService or (LocalPlayer and not VirtualUser or (not kU or not LocalPlayer))) and (VirtualUser and not LocalPlayer and (not kU or LocalPlayer) and (not VirtualUser or not LocalPlayer or not VirtualUser and not VirtualUser))) or not ((kU or not LocalPlayer or (LocalPlayer or not kU) or not LocalPlayer and not VirtualUser and (not kU and not UserInputService) or (not UserInputService and not UserInputService and (kU and VirtualUser) or (LocalPlayer or UserInputService) and (kU or kU))) and ((not VirtualUser and not LocalPlayer or kU and UserInputService or (LocalPlayer and not VirtualUser or (not kU or not LocalPlayer))) and (VirtualUser and not LocalPlayer and (not kU or LocalPlayer) and (not VirtualUser or not LocalPlayer or not VirtualUser and not VirtualUser)))) then
    kT = game:GetService("Players")
else
    kH = game:GetService("Players")
end
local Workspace = game:GetService("Workspace")
local kW_1
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = kT.LocalPlayer
local kY = "Rebirth Frenzy"
LocalPlayer:WaitForChild("leaderstats", 10)
LocalPlayer:WaitForChild("Upgrades", 10)
LocalPlayer:WaitForChild("Data", 10)
j7 = kV:WaitForChild("TappingRemote", 10)
kU = j7
if kU then
    local kO_2 = 0
    repeat
        local kP_3 = (vector.create((kO_2 * 1 + 3) % 11 + 1, (kO_2 * 1 + 8) % 13 + 1, (kO_2 * 13 + 12) % 17 + 1))
        kQ = (vector.create((kO_2 * 2 + 8) % 11 + 1, (kO_2 * 1 + 13) % 13 + 1, (kO_2 * 3 + 13) % 17 + 1))
        kR = (vector.create((kO_2 * 1 + 3) % 5 + 1, (kO_2 * 2 + 4) % 7 + 1, (kO_2 * 4 + 6) % 9 + 1))
        if math.abs((vector.angle(kP_3, kQ, kR))) - math.abs((vector.angle(kQ, kP_3, kR))) == 3 then
            j7 = kU:WaitForChild("Tap", 5)
        else
            kU = j7:WaitForChild("Tap", 5)
        end
        kO_2 = (kO_2 + 5) % 8
    until (kO_2 * 5 + 5) % 8 == 6
end
local kP_4 = j7
j4 = kU
if kP_4 then
    local kO_3 = 0
    repeat
        kQ = {
            "ktaofboae",
            "ylajtud",
            "ectmkdl",
            "nicwpmdad",
            "ylpgzdkar",
            "hpvhywhtaua",
            "ijxhhfteonx",
            "wzxm",
            "qaylkwslab",
            "lwgouke"
        }
        local qz = kO_3
        kR = kQ[qz % 10 + 1]
        if kR:len() <= kR:gsub("(.)", "%1%1", qz % 3 % 2 + 1):len() then
            kP_4 = j7:WaitForChild("ToggleAutoTap", 5)
        else
            j7 = kP_4:WaitForChild("ToggleAutoTap", 5)
        end
        kO_3 = (kO_3 + 2) % 4
    until (kO_3 * 3 + 0) % 4 == 2
end
j0, Rebirth, Upgrade, jQ, kR = nil, nil, nil, nil, nil
j0 = kP_4
Rebirth = kV:WaitForChild("Rebirth", 5)
Upgrade = kV:WaitForChild("Upgrade", 5)
if (kR or not jQ or false or (Upgrade or false or Upgrade and 3)) and not (kR or not jQ or false or (Upgrade or false or Upgrade and 3)) then
    kV = jQ:WaitForChild("EggHatchingRemote", 10)
else
    jQ = kV:WaitForChild("EggHatchingRemote", 10)
end
kR = jQ
if kR then
    local kO_4 = 3
    repeat
        if (kO_4 * 1 + 7) * 13 % 4 == ((kO_4 * 1 + 7) * 13 + 7) % 4 then
            jQ = kR:WaitForChild("HatchServer", 5)
        else
            kR = jQ:WaitForChild("HatchServer", 5)
        end
        kO_4 = (kO_4 + 3) % 8
    until (kO_4 * 5 + 4) % 8 == 2
end
kK, kQ = nil, nil
local kP_5 = 3
repeat
    if (kP_5 * 1 + 1) % 2 + 1 <= 1 then
        local qp = bit32.rrotate(bit32.bxor(bit32.lrotate(kP_5, 7), string.byte(tostring(kQ))), 6)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(qp, 449180629), 2679050336), (bit32.bxor(bit32.band(qp, 3845786666), 1682102195))), 2679050336), 1682102195) == qp then
            kK = kR
        else
            kR = kK
        end
        kP_5 = (kP_5 + 3) % 8
    else
        if (kP_5 * 2 + 5) * 10 % 3 == ((kP_5 * 2 + 5) * 10 + 6) % 3 then
            kQ = (kV:FindFirstChild("TappingGameModule"))
        else
            kV = (kQ:FindFirstChild("TappingGameModule"))
        end
        kP_5 = (kP_5 + 7) % 8
    end
until (kP_5 * 7 + 4) % 8 == 7
if kQ then
    local kO_6 = 1
    repeat
        local kP_6 = {
            "ddbfmhdseuvl",
            "kaxgigshj",
            "rwxjxmml",
            "bmcddpcsrumc",
            "dckxyxdz",
            "kgmgidxpb",
            "ersmfwtpdjns",
            "qvxmik"
        }
        if kP_6[(kO_6 * 52 + 110) % 8 + 1] <= kP_6[(kO_6 * 52 + 110) % 8 + 1] then
            kQ = require(kV:WaitForChild("TappingGameModule"))
        else
            kV = require(kQ:WaitForChild("TappingGameModule"))
        end
        kO_6 = (kO_6 + 3) % 8
    until (kO_6 * 1 + 7) % 8 == 3
end
kE, kR = nil, nil
local kP_7 = 1
repeat
    if (kP_7 * 1 + 1) % 2 + 1 <= 1 then
        local qm = bit32.rrotate(bit32.bxor(bit32.lrotate(kP_7, 15), string.byte(tostring(kR))), 11)
        if bit32.bxor(bit32.lrotate(bit32.bxor(qm, 1816396230), 26), 431034375) == bit32.lrotate(qm, 26) then
            kE = kQ
        else
            kQ = kE
        end
        kP_7 = (kP_7 + 5) % 16
    else
        local kO_8 = (vector.create((kP_7 * 1 + 9) % 11 + 1, (kP_7 * 4 + 4) % 13 + 1, (kP_7 * 6 + 14) % 17 + 1))
        kS = (vector.create((kP_7 * 2 + 9) % 11 + 1, (kP_7 * 9 + 3) % 13 + 1, (kP_7 * 4 + 17) % 17 + 1))
        kT = (vector.create((kP_7 * 6 + 4) % 11 + 1, (kP_7 * 1 + 6) % 13 + 1, (kP_7 * 2 + 6) % 17 + 1))
        kU = (vector.create((kP_7 * 2 + 4) % 11 + 1, (kP_7 * 6 + 12) % 13 + 1, (kP_7 * 3 + 16) % 17 + 1))
        if vector.dot(vector.cross(kO_8, kS), (vector.cross(kT, kU))) == vector.dot(kO_8, kT) * vector.dot(kS, kU) - vector.dot(kO_8, kU) * vector.dot(kS, kT) + 4 then
            kV = (kR:FindFirstChild("Upgrades"))
        else
            kR = (kV:FindFirstChild("Upgrades"))
        end
        kP_7 = (kP_7 + 1) % 16
    end
until (kP_7 * 11 + 11) % 16 == 8
if kR then
    local kO_9 = 3
    repeat
        local kP_8 = {
            "ommblv",
            "juv",
            "yjrzmph",
            "obeilmtqtds",
            "hwekp",
            "dszraehkb",
            "hczurtpthla",
            "iaz",
            "tyedzjjfb",
            "gkb",
            "bvlhfio",
            "tsags"
        }
        local qf = kO_9
        kQ = kP_8[qf % 12 + 1]
        if kQ:len() <= kQ:gsub("(.)", "%1%1", qf % 3 % 2 + 1):len() then
            kR = require(kV:WaitForChild("Upgrades"))
        else
            kV = require(kR:WaitForChild("Upgrades"))
        end
        kO_9 = (kO_9 + 2) % 4
    until (kO_9 * 3 + 0) % 4 == 3
end
kD, Eggs, kx = nil, nil, nil
kD = kR
Eggs = Workspace:FindFirstChild("Eggs")
kx = {}
if Eggs then
    for i, child in ipairs(Eggs:GetChildren()) do
        if child:IsA("Model") then
            table.insert(kx, child.Name)
        end
    end
    table.sort(kx)
end
if #kx == 0 then
    local kO_10 = 3
    repeat
        if (kO_10 * 3 + 1) * 17 % 4 == ((kO_10 * 3 + 1) * 17 + 12) % 4 then
            kx = {
                "Basic Egg",
                "Beach Egg",
                "Candy Egg",
                "Vortex Egg",
                "Heaven Egg",
                "Frozen Egg",
                "Toy Egg",
                "Jungle Egg",
                "Sakura Egg",
                "Magma Egg",
                "Rift Egg",
                "VIP Egg",
                "Magic Egg",
                "Mega Egg"
            }
        else
            kx = {
                "Candy Egg",
                "Magma Egg",
                "Frozen Egg",
                "VIP Egg",
                "Vortex Egg",
                "Basic Egg",
                "Rift Egg",
                "Sakura Egg",
                "Heaven Egg",
                "Mega Egg",
                "Jungle Egg",
                "Beach Egg",
                "Magic Egg",
                "Toy Egg"
            }
        end
        kO_10 = (kO_10 + 2) % 4
    until (kO_10 * 1 + 0) % 4 == 1
end
local kP_9 = kE
local kr = {}
if kP_9 then
    kP_9 = kE.Rebirths
end
if kP_9 then
    kP_9 = kE.Rebirths.Buttons
end
if kP_9 then
    for i, v in ipairs(kE.Rebirths.Buttons) do
        table.insert(kr, tostring(v))
    end
end
if #kr == 0 then
    local kO_11 = 0
    repeat
        local kP_10 = {
            "obmrq",
            "bvyvmcax",
            "mpfvjom",
            "sdhadspkbrid",
            "eixtuxr",
            "riy",
            "cbpdgv",
            "xynat",
            "qiyobf",
            "gcqubv"
        }
        if kP_10[(kO_11 * 40 + 37) % 10 + 1] < kP_10[(kO_11 * 40 + 37) % 10 + 1] then
            kr = { "250", "100", "1000", "1", "500", "50", "10" }
        else
            kr = { "1", "10", "50", "100", "250", "500", "1000" }
        end
        kO_11 = (kO_11 + 0) % 4
    until (kO_11 * 3 + 2) % 4 == 2
end
Library, SaveManager, Options, Toggles, kA, ky, kB, kv, Label, ka, jZ, kt, kk, j2, jT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local k3 = {
    ["Walk Speed"] = "Speed",
    ["Max Pets"] = "MaxPets",
    Inventory = "Inventory",
    Jump = "Jump",
    Luck = "Luck",
    ["Hatch Speed"] = "HatchSpeed",
    ["More Taps"] = "More Taps",
    ["More Gems"] = "More Gems"
}
local k2 = { "Walk Speed", "Max Pets", "Inventory", "Jump", "Luck", "Hatch Speed", "More Taps", "More Gems" }
pcall(fn895)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
jZ = function(ae, af, ag)
    pcall(function()
        local lJ = ag
        local lN = if lJ then 1 else 0
        local lL = 118 * lN + 71 * (1 - lN)
        local lM = 391 * lN + 870 * (1 - lN)
        if not ((lL * 2457 + lM * 3168 + lL * lM) % 16777213 == 1574752) then
            lJ = 3
        end
        Library:Notify({ Title = ae, Description = af, Time = lJ })
    end)
end
kA = "https://discord.gg/ehKVq7pf7v"
ky = "https://rscripts.net/@Ouroboros"
kt = fn256
kk = fn805
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = kA, Copyable = true }, "|", kY },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local k_ = {
    Info = Window:AddTab("Info", "info"),
    Farming = Window:AddTab("Farming", "mouse-pointer-click"),
    Inventory = Window:AddTab("Inventory", "backpack"),
    Rebirth = Window:AddTab("Rebirth", "rotate-ccw"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
j2 = fn498
jT = fn521
kZ, kW_1, kB, kV = "#7fd47f", "#6ec1ff", "#e8a34d", "#8b93a3"
kv = "Unknown"
pcall(fn486)
kR = k_.Info:AddLeftGroupbox("Account", "circle-user")
kR:AddLabel(jT("User", LocalPlayer.Name, kZ), true)
kR:AddLabel(jT("Status", "Keyless", kZ), true)
kR:AddLabel(jT("Executor", kv, kZ), true)
kU = k_.Info:AddLeftGroupbox("Game Info", "gamepad-2")
kU:AddLabel(j2(kY .. " [" .. tostring(game.PlaceId) .. "]", kW_1), true)
kU:AddLabel(jT("Place ID", tostring(game.PlaceId), kW_1), true)
Label = kU:AddLabel(jT("Session time", "0s", kB), true)
if not kU and not Library or kU and not kU or (not Label and not Library or Library and not Label) or not (not kU and not Library or kU and not kU or (not Label and not Library or Library and not Label)) then
    ka = tostring(game.JobId)
else
    k2 = tostring(game.JobId)
end
kT = #ka > 18
if kT then
    local kO_12 = 7
    repeat
        local kP_12 = {
            "yfruo",
            "csvnb",
            "qqneinj",
            "enbw",
            "xqmjdhy",
            "ehkcl",
            "cnhi",
            "pxsk",
            "wysdpgtwaph",
            "bllrfcszkbur",
            "aaqnojmk",
            "uspezmnkhk"
        }
        if kP_12[(kO_12 * 61 + 42) % 12 + 1] <= kP_12[(kO_12 * 61 + 42) % 12 + 1] then
            kT = string.sub(ka, 1, 18) .. "..."
        else
            ka = string.sub(kT, 1, 18) .. "..."
        end
        kO_12 = (kO_12 + 6) % 8
    until (kO_12 * 7 + 4) % 8 == 7
end
local kO_13 = kT or ka
j_, kp, km, ki, kg, kf, kb, j9, DonationsGroup = nil, nil, nil, nil, nil, nil, nil, nil, nil
kU:AddLabel(jT("Server", kO_13, kV), true)
kU:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
j_ = os.clock()
task.spawn(worker)
local ScriptsGroup = k_.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(j2("Included in this hub", kV), true)
ScriptsGroup:AddLabel(j2(kY, kW_1), true)
local FeaturesGroup = k_.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(j2("Auto Click", kW_1), true)
FeaturesGroup:AddLabel(j2("Auto Upgrades", kB), true)
FeaturesGroup:AddLabel(j2("Auto Hatch", kZ), true)
FeaturesGroup:AddLabel(j2("Auto Rebirth", "#c9a0ff"), true)
FeaturesGroup:AddLabel(j2("Player Movement", kV), true)
local SocialsGroup = k_.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kk })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = k_.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kk })
kp = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
km = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ki = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kg = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
kf = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
kb = "https://paypal.me/TheTruckerGOD"
j9 = "https://venmo.com/u/miserablemusic"
k6, k4, kT, kS, kR, kQ, kP_13 = "#345d9d", "#f7931a", "#627eea", "#26a17b", "#14f195", "#0070ba", "#008cff"
if (FeaturesGroup and not kT and (kT or FeaturesGroup) or (kT and not FeaturesGroup or kb and not kT)) and ((ScriptsGroup or FeaturesGroup) and (j_ or kT) and (kb and not j_ and (FeaturesGroup or kb))) or ((kb or FeaturesGroup) and (not kT and j_) or ("https://paypal.me/TheTruckerGOD" or (kb or j_))) and ((not kT or ScriptsGroup or not kT and not kT) and (ScriptsGroup or not FeaturesGroup or false and FeaturesGroup)) or not ((FeaturesGroup and not kT and (kT or FeaturesGroup) or (kT and not FeaturesGroup or kb and not kT)) and ((ScriptsGroup or FeaturesGroup) and (j_ or kT) and (kb and not j_ and (FeaturesGroup or kb))) or ((kb or FeaturesGroup) and (not kT and j_) or ("https://paypal.me/TheTruckerGOD" or (kb or j_))) and ((not kT or ScriptsGroup or not kT and not kT) and (ScriptsGroup or not FeaturesGroup or false and FeaturesGroup))) then
    DonationsGroup = k_.Info:AddRightGroupbox("Donations", "heart")
else
    k_ = DonationsGroup.Info:AddRightGroupbox("Donations", "heart")
end
DonationsGroup:AddLabel(j2("All donations are optional but appreciated.", kB), true)
DonationsGroup:AddLabel(j2("If you donate you get a special role, just PING after you donate.", kZ), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(j2("LTC / Litecoin", k6), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(j2("BTC / Bitcoin", k4), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(j2("ETH / Ethereum", kT), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(j2("USDT", kS), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(j2("Solana", kR), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(j2("PayPal", kQ), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(j2("Venmo", kP_13), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(j2("Don't have any of the listed currencies but still wanna donate?", kV), true)
DonationsGroup:AddLabel(j2("DM me and we'll work something out.", kW_1), true)
local FaqGroup = k_.Info:AddRightGroupbox("FAQ", "circle-help")
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
local ClickingGroup = k_.Farming:AddLeftGroupbox("Clicking", "mouse-pointer-click")
ClickingGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
ClickingGroup:AddSlider("AutoClickInterval", { Text = "Interval", Default = 0.01, Min = 0.01, Max = 10, Rounding = 2, Suffix = "s" })
ClickingGroup:AddToggle("UseServerAutoTap", { Text = "Use Server ToggleAutoTap", Default = false })
k_.Inventory:SetSubTabAlignment("Center")
kQ = k_.Inventory:AddSubTab("Upgrades", "trending-up")
local kP_14 = k_.Inventory:AddSubTab("Hatching", "egg")
kT = kQ:AddLeftGroupbox("Stat Upgrades", "trending-up")
kV = kQ:AddRightGroupbox("Resource Upgrades", "gem")
kS = { "Walk Speed", "Max Pets", "Inventory", "Jump" }
kU = { "Luck", "Hatch Speed", "More Taps", "More Gems" }
for i, v in ipairs(kS) do
    local kO_14 = k3[v]
    kT:AddToggle("AutoUpgrade_" .. kO_14, { Text = "Auto " .. v, Default = false })
    kT:AddSlider("Interval_" .. kO_14, { Text = v .. " Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
end
for i, v in ipairs(kU) do
    local kO_15 = k3[v]
    kV:AddToggle("AutoUpgrade_" .. kO_15, { Text = "Auto " .. v, Default = false })
    kV:AddSlider("Interval_" .. kO_15, { Text = v .. " Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
end
kS = kP_14:AddLeftGroupbox("Auto Hatch", "egg")
kS:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
kS:AddSlider("AutoHatchInterval", { Text = "Interval", Default = 0.01, Min = 0.01, Max = 10, Rounding = 2, Suffix = "s" })
kS:AddDropdown("SelectedEggs", {
    Values = kx,
    Default = 1,
    Multi = true,
    Text = "Eggs",
    Searchable = true,
    Expandable = true,
    ExpandColumns = 2
})
kS:AddToggle("HatchUseTriple", { Text = "Prefer Triple Hatch", Default = false })
kT = k_.Rebirth:AddRightGroupbox("Rebirth", "rotate-ccw")
kT:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
kT:AddSlider("AutoRebirthInterval", { Text = "Interval", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
kT:AddDropdown("RebirthAmount", { Values = kr, Default = 1, Multi = false, Text = "Amount", Searchable = true })
kT:AddToggle("RebirthSmart", { Text = "Smart (highest affordable)", Default = false })
CurrentCamera, kl, kh, connection, connection2, kw, ko, jR, j6, ke, jW, kI, kc, jX, kC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
fn127(k_.Farming)
fn127(kQ)
fn127(kP_14)
fn127(k_.Rebirth)
fn127(k_.Player)
local MovementGroup = k_.Player:AddRightGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
kV = k_.Player:AddLeftGroupbox("Fly", "feather")
kV:AddToggle("Fly", { Text = "Fly", Default = false })
kV:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
kw = fn433
ko = fn750
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn266)
Toggles.WalkSpeedEnabled:OnChanged(fn640)
jR = function(cE)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not cE)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not cE
        end
    end)
    if not cE then
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
Toggles.AntiGameplayPause:OnChanged(fn743)
task.spawn(antiGameplayPauseLoop)
kU = k_.Settings:AddLeftGroupbox("Menu", "wrench")
kl = tick()
kh = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local mK = v
        pcall(function()
            mK:Disable()
        end)
    end
end)
j6 = fn340
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
kU:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(antiAfkLoop)
kU:AddButton("Unload", onUnload)
kU:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/RebirthFrenzy")
kS = SaveManager:BuildConfigSection(k_.Settings)
ThemeManager:ApplyToTab(k_.Settings)
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:LoadDefault()
ke = fn114
jW = fn900
kI = fn643
kc = function(dJ)
    local nr
    nr = nil
    local ns = type(dJ) ~= "table" or type(dJ.idx) ~= "string" or type(dJ.type) ~= "string" or SaveManager.Ignore[dJ.idx]
    if ns then
        return false
    end
    nr = ke(dJ.type, dJ.idx)
    if not nr then
        return false
    end
    local ns_1 = pcall(function()
        if dJ.type == "Input" then
            if type(dJ.text) ~= "string" then
                return
            end
            nr:SetValue(dJ.text)
        elseif dJ.type == "ColorPicker" then
            nr:SetValueRGB(Color3.fromHex(dJ.value), dJ.transparency)
        elseif dJ.type == "KeyPicker" then
            nr:SetValue({ dJ.key, dJ.mode, dJ.modifiers })
            if dJ.mode == "Toggle" and dJ.toggled ~= nil then
                nr.Toggled = dJ.toggled
                nr:Update()
            end
        else
            nr:SetValue(dJ.value)
        end
    end)
    return ns_1
end
kS:AddDivider()
kS:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
kS:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
kS:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
pcall(fn422)
pcall(fn676)
pcall(fn821)
jX = fn621
kC = fn217
task.spawn(function()
    setthreadidentity(8)
    task.wait(1)
    local op = jQ and jQ:FindFirstChild("ToggleAutoDelete")
    local oo = op
    if oo then
        for i, v in ipairs({ "Common", "Uncommon", "Rare", "Epic", "Legendary" }) do
            local oy = v
            pcall(function()
                oo:FireServer(oy, false)
            end)
            task.wait(0.15)
        end
        pcall(function()
            oo:FireServer("Legendary", true)
        end)
        task.wait(0.15)
        pcall(function()
            oo:FireServer("Legendary", false)
        end)
    end
end)
task.spawn(autoClickIntervalLoop)
Toggles.UseServerAutoTap:OnChanged(fn122)
for i, v in ipairs(k2) do
    local jS, kN, kL
    jS = k3[v]
    kN = "AutoUpgrade_" .. jS
    kL = "Interval_" .. jS
    task.spawn(function()
        setthreadidentity(8)
        local oS = false
        repeat
            local oL = kH() and not Library.Unloaded
            if oL then
                local oL_1 = Toggles[kN]
                local oM = Options[kL]
                local oM_1 = oM and oM.Value or 1
                local oN_1 = oL_1
                if oN_1 then
                    oN_1 = oL_1.Value
                end
                if oN_1 then
                    local oL_2 = LocalPlayer:FindFirstChild("Upgrades") and LocalPlayer.Upgrades:FindFirstChild(jS)
                    local oJ = oL_2
                    local oL_3 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Gems")
                    local oK
                    if kD then
                        pcall(function()
                            local getPrice = kD.getPrice
                            local oH = oJ and oJ.Value or 0
                            oK = getPrice(jS, oH)
                        end)
                    end
                    local oL_4 = true
                    if oK and oL_3 then
                        oL_4 = oL_3.Value >= oK
                        if oK == math.huge or oK == math.huge then
                            oL_4 = false
                        end
                    end
                    local oM_4 = kD
                    local oN_3 = false
                    if oM_4 then
                        oM_4 = kD.Upgrades
                    end
                    if oM_4 then
                        oM_4 = kD.Upgrades[jS]
                    end
                    if oM_4 then
                        local Max = kD.Upgrades[jS].Max
                        if oJ and Max and oJ.Value >= Max then
                            oN_3 = true
                        end
                    end
                    local oM_6 = not oN_3
                    if oM_6 ~= false then
                        oM_6 = oL_4
                    end
                    if oM_6 then
                        pcall(function()
                            return Upgrade:InvokeServer(jS)
                        end)
                    end
                end
                task.wait(oM_1)
                local oL_5 = not kH() or Library.Unloaded
                if oL_5 then
                    oS = true
                end
            else
                oS = true
            end
        until oS
    end)
end
local kO_16 = 3
repeat
    local kP_15 = {
        "jnzqfhsyso",
        "okeannmh",
        "ojjw",
        "wefr",
        "grpmomvbmdo",
        "xwnnuewdp",
        "pcobwvomems",
        "dccjle",
        "vzafiptymti",
        "hcobynoqb",
        "vaibkmy"
    }
    local pH = kO_16
    kQ = kP_15[pH % 11 + 1]
    if kQ:len() <= kQ:gsub("(.)", "%1%1", pH % 3 % 2 + 1):len() then
        task.spawn(function()
            setthreadidentity(8)
            local o1 = false
            repeat
                local oV = kH() and not Library.Unloaded
                if oV then
                    local oW = Options.AutoHatchInterval and Options.AutoHatchInterval.Value or 0.01
                    if Toggles.AutoHatch and Toggles.AutoHatch.Value then
                        local oU = kC()
                        if not oU then
                            local oW_8 = jX()
                            if oW_8 and oW_8[1] then
                                local oX_10 = Eggs and Eggs:FindFirstChild(oW_8[1])
                                oU = oX_10
                            end
                        end
                        if oU then
                            local oW_9 = oU:FindFirstChild("Price") and oU.Price.Value
                            local oX_11 = oW_9 or 0
                            local oX_12 = oU:FindFirstChild("Currency") and oU.Currency.Value
                            local oY = oX_12 or "Taps"
                            local oY_5 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild(oY)
                            local oX_14 = oY_5
                            if oY_5 then
                                oY_5 = oX_14.Value >= oX_11
                            end
                            local oW_11 = oY_5
                            local oX_15 = LocalPlayer:FindFirstChild("Pets") and #LocalPlayer.Pets:GetChildren()
                            local oY_6 = oX_15 or 0
                            local oY_7 = LocalPlayer:FindFirstChild("Upgrades") and LocalPlayer.Upgrades:FindFirstChild("Inventory") and LocalPlayer.Upgrades.Inventory.Value
                            if not (oY_6 >= (oY_7 or 100)) then
                                if not not oW_11 then
                                    local oW_12 = pcall(function()
                                        if kK then
                                            return kK:InvokeServer(oU, "auto")
                                        end
                                    end)
                                    if not oW_12 then
                                        pcall(function()
                                            return kK:InvokeServer(oU.Name, "auto")
                                        end)
                                    end
                                end
                            end
                        end
                    end
                    task.wait(oW)
                    local oV_6 = not kH() or Library.Unloaded
                    if oV_6 then
                        o1 = true
                    end
                else
                    o1 = true
                end
            until o1
        end)
        task.spawn(function()
            setthreadidentity(8)
            local pb = false
            repeat
                local o3 = kH() and not Library.Unloaded
                if o3 then
                    local o4 = Options.AutoRebirthInterval and Options.AutoRebirthInterval.Value or 1
                    if Toggles.AutoRebirth and Toggles.AutoRebirth.Value then
                        local o5 = Options.RebirthAmount and Options.RebirthAmount.Value or "1"
                        local o5_6 = Toggles.RebirthSmart and Toggles.RebirthSmart.Value
                        local o5_7 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Taps")
                        local o5_8 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Rebirths") and LocalPlayer.leaderstats.Rebirths.Value
                        local o5_9 = o5_8 or 0
                        local o8_3 = tonumber(o5) or 1
                        local o2 = o8_3
                        if o5_6 and kE then
                            local pe = #kr
                            local pd = -1
                            while false and pe <= 1 or true and pe >= 1 do
                                local pf = pe
                                local o4_14 = tonumber(kr[pf])
                                local o6_3 = kE.Rebirths.GetPrice(o4_14, o5_9)
                                if o5_7 and o5_7.Value >= o6_3 then
                                    o2 = o4_14
                                    break
                                end
                                pe += pd
                            end
                        end
                        local o4_15 = kE and kE.Rebirths.GetPrice(o2, o5_9)
                        local o5_10 = o4_15 or 0
                        local o4_16 = o5_7
                        if o4_16 then
                            o4_16 = o5_7.Value >= o5_10
                        end
                        if o4_16 then
                            pcall(function()
                                Rebirth:FireServer(o2)
                            end)
                        end
                    end
                    task.wait(o4)
                    local o3_6 = not kH() or Library.Unloaded
                    if o3_6 then
                        pb = true
                    end
                else
                    pb = true
                end
            until pb
        end)
        Library:OnUnload(fn296)
        getgenv().OuroborosHub = { Unload = fn808 }
        jZ("Ouroboros", "Loaded for Rebirth Frenzy", 3)
    else
        task.spawn(function()
            setthreadidentity(8)
            local o1 = false
            repeat
                local oV = kH() and not Library.Unloaded
                if oV then
                    local oW = Options.AutoHatchInterval and Options.AutoHatchInterval.Value or 0.01
                    if Toggles.AutoHatch and Toggles.AutoHatch.Value then
                        local oU = kC()
                        if not oU then
                            local oW_2 = jX()
                            if oW_2 and oW_2[1] then
                                local oX_2 = Eggs and Eggs:FindFirstChild(oW_2[1])
                                oU = oX_2
                            end
                        end
                        if oU then
                            local oW_3 = oU:FindFirstChild("Price") and oU.Price.Value
                            local oX_3 = oW_3 or 0
                            local oX_4 = oU:FindFirstChild("Currency") and oU.Currency.Value
                            local oY = oX_4 or "Taps"
                            local oY_1 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild(oY)
                            local oX_6 = oY_1
                            if oY_1 then
                                oY_1 = oX_6.Value >= oX_3
                            end
                            local oW_5 = oY_1
                            local oX_7 = LocalPlayer:FindFirstChild("Pets") and #LocalPlayer.Pets:GetChildren()
                            local oY_2 = oX_7 or 0
                            local oY_3 = LocalPlayer:FindFirstChild("Upgrades") and LocalPlayer.Upgrades:FindFirstChild("Inventory") and LocalPlayer.Upgrades.Inventory.Value
                            if not (oY_2 >= (oY_3 or 100)) then
                                if not not oW_5 then
                                    local oW_6 = pcall(function()
                                        if kK then
                                            return kK:InvokeServer(oU, "auto")
                                        end
                                    end)
                                    if not oW_6 then
                                        pcall(function()
                                            return kK:InvokeServer(oU.Name, "auto")
                                        end)
                                    end
                                end
                            end
                        end
                    end
                    task.wait(oW)
                    local oV_3 = not kH() or Library.Unloaded
                    if oV_3 then
                        o1 = true
                    end
                else
                    o1 = true
                end
            until o1
        end)
        task.spawn(function()
            setthreadidentity(8)
            local pb = false
            repeat
                local o3 = kH() and not Library.Unloaded
                if o3 then
                    local o4 = Options.AutoRebirthInterval and Options.AutoRebirthInterval.Value or 1
                    if Toggles.AutoRebirth and Toggles.AutoRebirth.Value then
                        local o5 = Options.RebirthAmount and Options.RebirthAmount.Value or "1"
                        local o5_1 = Toggles.RebirthSmart and Toggles.RebirthSmart.Value
                        local o5_2 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Taps")
                        local o5_3 = LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Rebirths") and LocalPlayer.leaderstats.Rebirths.Value
                        local o5_4 = o5_3 or 0
                        local o8_1 = tonumber(o5) or 1
                        local o2 = o8_1
                        if o5_1 and kE then
                            local pe = #kr
                            local pd = -1
                            while false and pe <= 1 or true and pe >= 1 do
                                local pf = pe
                                local o4_6 = tonumber(kr[pf])
                                local o6_1 = kE.Rebirths.GetPrice(o4_6, o5_4)
                                if o5_2 and o5_2.Value >= o6_1 then
                                    o2 = o4_6
                                    break
                                end
                                pe += pd
                            end
                        end
                        local o4_7 = kE and kE.Rebirths.GetPrice(o2, o5_4)
                        local o5_5 = o4_7 or 0
                        local o4_8 = o5_2
                        if o4_8 then
                            o4_8 = o5_2.Value >= o5_5
                        end
                        if o4_8 then
                            pcall(function()
                                Rebirth:FireServer(o2)
                            end)
                        end
                    end
                    task.wait(o4)
                    local o3_3 = not kH() or Library.Unloaded
                    if o3_3 then
                        pb = true
                    end
                else
                    pb = true
                end
            until pb
        end)
        kY:OnUnload(fn296)
        getgenv().OuroborosHub = { Unload = fn808 }
        Library("Ouroboros", "Loaded for " .. jZ, 3)
    end
    kO_16 = (kO_16 + 1) % 4
until (kO_16 * 3 + 0) % 4 == 0
