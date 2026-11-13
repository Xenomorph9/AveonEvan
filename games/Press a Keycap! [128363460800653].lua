local fns = {}
local Toggles
local lA
local lg
local kY
local UserInputService
local kF
local LocalPlayer
local k3
local lM
local lt
local k9
local WorkersConfig
local Label
local lf
local kX
local lF
local kE
local ll
local k2
local lL
local kK
local ls
local connection
local kQ
local ly
local le
local kW
local VirtualUser
local PlayerState
local lK
local Library
local Workspace
local k7
local RebirthConfig
local lx
local ld
local GridLayout
local HttpService
local __ouroboros_gen
local k0
local lJ
local kI
local lq
local kO
local lc
local UpgradesConfig
local lC
local li
local k_
local SetNotifySide
local kH
local lo
local Options
local kN
local lv
local connection2
local lh
local Keycaps
local lH
local kG
local ln
local k4
local lN
local ZonesConfig
local lu
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded and ln.__ouroboros_gen == __ouroboros_gen do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            lJ(true)
        end
    end
end
function fns.onAutoRebirth(ew)
    kH.autoRebirth = ew
    if ew then
        kQ("autoRebirth")
    end
end
local function onCopySolanaAddress()
    kW(k3, "Copied Solana address")
end
local function fn79()
    local ne = PlayerState.Money()[ls] or 0
    return ne
end
local function fn118(aL)
    local mC = tonumber(aL) or 0
    aL = mC
    local mC_1 = 0
    local mD = { "K", "M", "B", "T", "Qa", "Qi", "Sx", "Sp", "Oc", "No" }
    while aL >= 1000 and mC_1 < 10 do
        aL = aL / 1000
        mC_1 = mC_1 + 1
    end
    if mC_1 == 0 then
        return string.format("%d", aL)
    end
    return string.format("%.2f%s", aL, mD[mC_1])
end
local function onCopyEthereumAddress()
    kW(lc, "Copied Ethereum address")
end
local function onUpgradeSel(el)
    for k, v in pairs(lx) do
        lH[v] = false
    end
    local oK = type(el) == "table" and el
    local oK_1 = oK or { el }
    for k, v in pairs(oK_1) do
        local oK_2 = type(k) == "number" and v
        local oL_2 = lx[oK_2 or k]
        if oL_2 then
            lH[oL_2] = true
        end
    end
end
local function fn126(cT)
    local DiscordGroup = cT:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kN })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kN })
end
local function fn140()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    lK = tick()
end
local function fn150()
    local n3_1
    local n2_1
    if identifyexecutor then
        n3_1, n2_1 = identifyexecutor()
        local n4 = n3_1 ~= ""
        local n5 = type(n3_1) == "string" and n4
        if n5 then
            local n4_1 = type(n2_1) == "string" and n2_1 ~= "" and n3_1 .. " " .. n2_1
            local n2_2 = n4_1
            local n9 = if n2_2 then 1 else 0
            local n7 = 3515 * n9 + 415 * (1 - n9)
            local n8 = 1838 * n9 + 58 * (1 - n9)
            if not ((n7 * 806 + n8 * 1407 + n7 * n8) % 16777213 == 11879726) then
                n2_2 = n3_1
            end
            kE = n2_2
        end
    end
end
local function fn162()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn169()
    if not Toggles.Fly.Value then
        local pa = ld()
        if pa then
            pa.PlatformStand = false
        end
    end
end
local function onInputChanged(fA)
    local UserInputType = fA.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lN = tick()
    end
end
local function fn180()
    kW(k2, "Copied Discord invite to clipboard")
end
local function fn185()
    if kH.autoBuy or kH.autoUnlock then
        return
    end
    local Unlock = ly.Unlock
    local nr = kF.plotName or PlayerState.PlotOwner()[ls]
    Unlock:fire("RequestRoll", nr)
end
local function onAutoBuy(dR)
    kH.autoBuy = dR
    if dR then
        kQ("autoBuy")
    end
end
local function fn226()
    local nL = PlayerState.Rebirths()[ls] or 0
    local nL_1 = PlayerState.CurrentPresses()[ls] or 0
    local nL_2 = RebirthConfig.Next(nL)
    if nL_2 and nL_1 >= nL_2.Presses then
        ly.Rebirth:fire("Rebirth")
    end
end
local function onCopyLitecoinAddress()
    kW(ll, "Copied Litecoin address")
end
local function onAutoWorkers(dK)
    kH.autoWorkers = dK
    if dK then
        kQ("autoWorkers")
    end
end
local function fn245()
    local nj = PlayerState.Workers()[ls]
    local np = if nj then 1 else 0
    local nn = 4036 * np + 2313 * (1 - np)
    local no = 230 * np + 1666 * (1 - np)
    if not ((nn * 3854 + no * 2499 + nn * no) % 16777213 == 280581) then
        nj = 0
    end
    local nk = nj
    local nj_1 = PlayerState.Rebirths()[ls] or 0
    local nj_2 = math.min(WorkersConfig.BaseMax + RebirthConfig.ExtraWorkersFor(nj_1), #WorkersConfig.Prices)
    if nk >= nj_2 then
        return
    end
    local nj_3 = WorkersConfig.Prices[nk + 1]
    if le() >= nj_3 then
        ly.Workers:fire("BuyWorkers", 1)
    end
end
local function fn246()
    local nt = PlayerState.Zones()[ls]
    if not nt then
        return
    end
    local nu = GridLayout.BuyableZones(nt)[1]
    if not nu then
        return
    end
    local nv = PlayerState.Rebirths()[ls] or 0
    local nv_1 = math.min(ZonesConfig.BaseUnlockable + RebirthConfig.ExtraZonesFor(nv), #ZonesConfig.Prices)
    if #nt >= nv_1 then
        return
    end
    local nv_2 = ZonesConfig.Prices[#nt]
    local nt_1 = nv_2 and le() >= nv_2
    if nt_1 then
        ly.Zones:fire("BuyZone", nu)
    end
end
local function fn271()
    local Character = li.Character
    if not Character then
        return nil
    end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not Humanoid or not HumanoidRootPart or Humanoid.Health <= 0 then
        return nil
    end
    return HumanoidRootPart
end
local function onCopyJoinScript_JobID()
    local c7 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lu)
    kW(c7, "Copied join script to clipboard")
end
local function fn303(am, an, ao)
    return string.format("<b>%s</b> %s %s", am, kI("-", "#5a6070"), kI(an, ao))
end
local function onUnload()
    Library:Unload()
end
local function onCopyPayPalLink()
    kW(k0, "Copied PayPal link")
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local pt_1 = ld()
        if pt_1 then
            pt_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn522()
    local p5 = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local p6 = type(v) == "table" and type(v.Type) == "string" and not kG.Ignore[k]
            if p6 then
                local p6_1 = lF(k, v)
                if p6_1 then
                    p5[#p5 + 1] = p6_1
                end
            end
        end
    end
    table.sort(p5, function(f3, f4)
        if f3.type ~= f4.type then
            return f3.type < f4.type
        end
        return f3.idx < f4.idx
    end)
    return { objects = p5 }
end
local function onCopyVenmoLink()
    kW(kX, "Copied Venmo link")
end
local function onRenderStepped(e7)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local py_1 = ld()
        if py_1 then
            py_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local py_3 = kY()
        local pz = ld()
        lo = Workspace.CurrentCamera or lo
        if py_3 and pz and lo then
            pz.PlatformStand = true
            local pz_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                pz_1 = pz_1 + lo.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                pz_1 = pz_1 - lo.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                pz_1 = pz_1 - lo.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                pz_1 = pz_1 + lo.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                pz_1 = pz_1 + Vector3.new(0, 1, 0)
            end
            local pF = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if pF == 1 then
                pz_1 = pz_1 - Vector3.new(0, 1, 0)
            end
            py_3.Velocity = Vector3.zero
            if pz_1.Magnitude > 0 then
                py_3.CFrame = py_3.CFrame + pz_1.Unit * Options.FlySpeed.Value * e7
            end
        end
    end
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = li.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local pe_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if pe_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn575()
    lJ(Toggles.AntiGameplayPause.Value)
end
local function onCopyUSDTAddress()
    kW(k7, "Copied USDT address")
end
local function fn619()
    for i, v in ipairs(UpgradesConfig.Order) do
        if lH[v] then
            ly.Upgrades:fire("BuyUpgrade", v)
            task.wait(0.2)
        end
    end
end
local function fn656(aj, ak)
    return string.format('<font color="%s">%s</font>', ak, aj)
end
local function antiAfkLoop()
    while true do
        if not Library.Unloaded and ln.__ouroboros_gen == __ouroboros_gen then
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local qU_1 = tick() - lN
                local qV = tick() - lK
                if qU_1 >= 300 and qV >= 60 then
                    pcall(lA)
                else
                    if qU_1 < 300 and qV >= 300 then
                        pcall(lA)
                    end
                end
            end
            continue
        end
        break
    end
end
local function onAutoUpgrade(ei)
    kH.autoUpgrade = ei
    kH.upgradeLoop = ei
    if ei then
        kQ("upgradeLoop")
    end
end
local function fn687()
    kH.autoWalk = false
    kH.autoWorkers = false
    kH.autoRoll = false
    kH.autoBuy = false
    kH.autoUnlock = false
    kH.autoRebirth = false
    kH.autoUpgrade = false
    kH.upgradeLoop = false
    connection:Disconnect()
    connection2:Disconnect()
    lJ(false)
    local q4 = ld()
    if q4 then
        q4.PlatformStand = false
        q4.WalkSpeed = 16
    end
end
local function fn690()
    if not Toggles.WalkSpeedEnabled.Value then
        local pc = ld()
        if pc then
            pc.WalkSpeed = 16
        end
    end
end
local function onRarityThreshold(d9)
    for i, v in ipairs(lf) do
        if v == d9 then
            kF.rarityThreshold = k9[i]
            break
        end
    end
end
local function fn740()
    local om = {}
    for k, v in pairs(Keycaps.Types) do
        if v.OneIn > 0 then
            table.insert(om, { name = k, mpp = v.MoneyPerPress })
        end
    end
    table.sort(om, function(d2, d3)
        return d2.mpp > d3.mpp
    end)
    for i, v in ipairs(om) do
        table.insert(lf, v.name .. " ($" .. lM(v.mpp) .. ")")
        table.insert(k9, v.mpp)
    end
end
local function fn755()
    local m8 = {}
    local m9 = PlayerState.PendingUnlock()[ls]
    local nd = if m9 then 1 else 0
    local nb = 1418 * nd + 903 * (1 - nd)
    local nc = 4056 * nd + 1390 * (1 - nd)
    if not ((nb * 2417 + nc * 957 + nb * nc) % 16777213 == 13060306) then
        m9 = m8
    end
    return m9
end
local function fn762()
    local Character = li.Character
    local mR = Character and Character:FindFirstChildOfClass("Humanoid")
    return mR
end
local function fn764()
    local q2 = ln.__ouroboros_gen or 0
    ln.__ouroboros_gen = q2 + 1
    kH.autoWalk = false
    kH.autoWorkers = false
    kH.autoRoll = false
    kH.autoBuy = false
    kH.autoUnlock = false
    kH.autoRebirth = false
    kH.autoUpgrade = false
    kH.upgradeLoop = false
    pcall(function()
        connection:Disconnect()
        connection2:Disconnect()
        lJ(false)
        local q0 = ld()
        if q0 then
            q0.PlatformStand = false
            q0.WalkSpeed = 16
        end
    end)
    pcall(function()
        Library:Unload()
    end)
    ln.__ouroboros_cleanup = nil
end
local function fn792()
    local Character = li.Character
    local mU = Character and Character:FindFirstChild("HumanoidRootPart")
    return mU
end
local function onImportConfigFromClipboardTex()
    local qE_1
    local qC = Options.SaveManager_ImportSource.Value or ""
    local qC_1
    local qD = tostring(qC):match("^%s*(.-)%s*$")
    if qD == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    qC_1, qE_1 = pcall(HttpService.JSONDecode, HttpService, qD)
    local qD_1 = not qC_1
    local qI = if qD_1 then 1 else 0
    local qG = 2170 * qI + 3451 * (1 - qI)
    local qH = 1617 * qI + 3104 * (1 - qI)
    if not ((qG * 23 + qH * 2560 + qG * qH) % 16777213 == 7698320) then
        qD_1 = type(qE_1) ~= "table"
    end
    if not qD_1 then
        qD_1 = type(qE_1.objects) ~= "table"
    end
    if qD_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local qC_2 = 0
    for i, v in ipairs(qE_1.objects) do
        if kK(v) then
            qC_2 += 1
        end
    end
    if qC_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local qE_2 = qC_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(qC_2, qE_2), 6)
end
local function onAutoRoll(dO)
    kH.autoRoll = dO
    if dO then
        kQ("autoRoll")
    end
end
local function fn814(fI, fJ)
    local pT_1 = (fI == "Toggle" and Toggles or Options)[fJ]
    local pS_2 = type(pT_1) == "table" and pT_1.Type == fI
    return pS_2 and pT_1 or nil
end
local function fn816()
    local mW = PlayerState.PlotOwner()[ls]
    kF.plotName = mW
    kF.keycaps = {}
    if not mW then
        return
    end
    local mX = workspace:FindFirstChild("MAP") and workspace.MAP:FindFirstChild("PLOTS")
    local mY = mX
    if mX then
        mX = mY:FindFirstChild(mW)
    end
    local mW_1 = mX
    if mX then
        mX = mW_1:FindFirstChild("Keycaps")
    end
    local mW_2 = mX
    if not mW_2 then
        return
    end
    for i, child in ipairs(mW_2:GetChildren()) do
        if child:IsA("Model") then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")
            if BasePart then
                table.insert(kF.keycaps, BasePart.Position)
            end
        end
    end
end
local function onCopyBitcoinAddress()
    kW(lh, "Copied Bitcoin address")
end
local function fn823()
    local ny = kF.plotName or PlayerState.PlotOwner()[ls]
    if not ny then
        return
    end
    local ny_1 = lq()
    local nA = false
    for i, v in ipairs(ny_1) do
        if v and v ~= "" then
            local ny_3 = Keycaps.Get(v)
            local nB_1 = ny_3 and ny_3.MoneyPerPress >= kF.rarityThreshold
            if nB_1 then
                local nC = le()
                nB_1 = nC >= (ny_3.Price or 0)
            end
            if nB_1 then
                ly.Unlock:fire("ClaimUnlock", i)
                nA = true
            end
        end
    end
    if not nA then
        ly.Unlock:fire("RequestRoll", ny)
    end
end
local function fn831(fQ, fR)
    local Type = fR.Type
    if Type == "Toggle" then
        return { idx = fQ, type = "Toggle", value = fR.Value == true }
    elseif Type == "Slider" then
        return { idx = fQ, type = "Slider", value = tostring(fR.Value) }
    elseif Type == "Dropdown" then
        return { idx = fQ, type = "Dropdown", multi = fR.Multi == true, value = fR.Value }
    elseif Type == "Input" then
        local p_ = fR.Value or ""
        return { idx = fQ, type = "Input", text = tostring(p_) }
    elseif Type == "ColorPicker" then
        return { idx = fQ, type = "ColorPicker", value = fR.Value:ToHex(), transparency = fR.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = fQ,
            type = "KeyPicker",
            mode = fR.Mode,
            key = fR.Value,
            modifiers = fR.Modifiers,
            toggled = fR.Toggled
        }
    else
        return nil
    end
end
local function onRscripts()
    kW(k_, "Copied Rscripts profile to clipboard")
end
local function onAutoUnlock(dU)
    kH.autoUnlock = dU
    if dU then
        kQ("autoUnlock")
    end
end
local function fn897(N, O)
    Library.NotifySide = O
    pcall(SetNotifySide, N, O)
end
local function fn916(cq)
    if not cq then
        return 1
    end
    local nW = Options[cq .. "Interval"]
    local nX = nW and type(nW.Value) == "number"
    if nX then
        return nW.Value
    end
    return lg[cq] or 1
end
local function onInputBegan()
    lN = tick()
end
local function fn970(ac, ad)
    if setclipboard then
        setclipboard(ac)
    elseif toclipboard then
        toclipboard(ac)
    end
    Library:Notify(ad)
end
local function onAutoWalk(dG)
    kH.autoWalk = dG
    if dG then
        kQ("autoWalk")
    end
end
local function fn1012()
    if #kF.keycaps == 0 then
        kO()
        if #kF.keycaps == 0 then
            return
        end
    end
    local ng = lC()
    if not ng then
        return
    end
    kF.walkIdx = kF.walkIdx % #kF.keycaps + 1
    local nh = kF.keycaps[kF.walkIdx]
    ng.CFrame = CFrame.new(nh + Vector3.new(0, 3, 0))
    ng.AssemblyLinearVelocity = Vector3.zero
    ng.AssemblyAngularVelocity = Vector3.zero
end
local function onExportConfigToClipboard()
    local qw_1
    local qv_1
    qv_1, qw_1 = pcall(HttpService.JSONEncode, HttpService, lv())
    if not qv_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local qv_2 = setclipboard
    local qB = if qv_2 then 1 else 0
    local qz = 523 * qB + 2825 * (1 - qB)
    local qA = 3708 * qB + 3413 * (1 - qB)
    if not ((qz * 3615 + qA * 1311 + qz * qA) % 16777213 == 8691117) then
        qv_2 = toclipboard
    end
    local qx = qv_2
    local qv_3 = type(qx) ~= "function" or not pcall(qx, qw_1)
    if qv_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function worker()
    local ob_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local oa = math.floor(os.clock() - k4)
        if oa < 60 then
            ob_1 = oa .. "s"
        elseif oa < 3600 then
            ob_1 = string.format("%dm %ds", oa // 60, oa % 60)
        else
            ob_1 = string.format("%dh %dm", oa // 3600, oa % 3600 // 60)
        end
        Label:SetText(lL("Session time", ob_1, lt))
    end
end
kE = nil
kF = nil
kG = nil
kH = nil
kI = nil
Library = nil
kK = nil
ZonesConfig = nil
kN = nil
kO = nil
RebirthConfig = nil
kQ = nil
WorkersConfig = nil
local kS
connection2 = nil
UpgradesConfig = nil
GridLayout = nil
kW = nil
kX = nil
kY = nil
Keycaps = nil
k_ = nil
k0 = nil
PlayerState = nil
k2 = nil
k3 = nil
k4 = nil
Options = nil
k7 = nil
connection = nil
k9 = nil
Toggles = nil
lc = nil
ld = nil
le = nil
lf = nil
lg = nil
lh = nil
li = nil
__ouroboros_gen = nil
ll = nil
LocalPlayer = nil
ln = nil
lo = nil
lq = nil
Workspace = nil
local kL, k6, lb, lk
ls = nil
lt = nil
lu = nil
lv = nil
lx = nil
ly = nil
Label = nil
lA = nil
lC = nil
HttpService = nil
VirtualUser = nil
lF = nil
UserInputService = nil
lH = nil
SetNotifySide = nil
lJ = nil
lK = nil
lL = nil
lM = nil
lN = nil
local CoreGui, GuiService, lQ, l0
local mh, GameInfoGroup, MachineGroup, FlyGroup
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, li, PlayerState, Keycaps, GridLayout, UpgradesConfig, WorkersConfig, RebirthConfig, ZonesConfig, Library, kG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local lO = game:GetService("Players")
local lR = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = lO.LocalPlayer
li = LocalPlayer
local lW = "Press a Keycap!"
local lT = require(lR.Packages.Networker).client
local lS = require(lR.Shared.Modules.Atoms.AtomKey)
PlayerState = require(lR.Shared.Modules.Atoms.PlayerState)
Keycaps = require(lR.Shared.Modules.Keycaps.Keycaps)
GridLayout = require(lR.Shared.Modules.Keycaps.GridLayout)
UpgradesConfig = require(lR.Shared.Modules.Config.UpgradesConfig)
WorkersConfig = require(lR.Shared.Modules.Config.WorkersConfig)
RebirthConfig = require(lR.Shared.Modules.Config.RebirthConfig)
ZonesConfig = require(lR.Shared.Modules.Config.ZonesConfig)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
kG = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
pcall(fn162)
SetNotifySide = nil
SetNotifySide = Library.SetNotifySide
Library.SetNotifySide = fn897
if setthreadidentity then
    setthreadidentity(8)
end
ly, ls, ln = nil, nil, nil
ly = {
    Workers = lT.new("Workers", {}),
    Upgrades = lT.new("Upgrades", {}),
    Rebirth = lT.new("Rebirth", {}),
    Unlock = lT.new("Unlock", {}),
    Zones = lT.new("Zones", {})
}
ls = lS.For(li)
ln = getgenv()
lO = ln.__ouroboros_gen or 0
__ouroboros_gen, lQ = nil, nil
local lP = 3
repeat
    lR = (lP * 1 + 1) % 2 + 1
    if lR <= 1 then
        local rW = bit32.rrotate(bit32.bxor(bit32.lrotate(lP, 9), string.byte(tostring(lQ))), 27)
        if bit32.bxor(bit32.lrotate(bit32.bxor(rW, 3840334415), 2), 2476435775) == bit32.lrotate(rW, 2) then
            ln.__ouroboros_gen = lO + 1
            __ouroboros_gen = ln.__ouroboros_gen
        else
            ln.__ouroboros_gen = __ouroboros_gen + 1
            ln = lO.__ouroboros_gen
        end
        lP = (lP + 5) % 8
    else
        lR = {
            "kmoxjkpldhmz",
            "qsol",
            "zuamti",
            "tksnufrjjnjd",
            "epmcbgasnny",
            "ffm",
            "klkamaj",
            "zgpgydrwnmf",
            "lixmyr"
        }
        if lR[(lP * 48 + 61) % 9 + 1] <= lR[(lP * 48 + 61) % 9 + 1] then
            lQ = ln.__ouroboros_cleanup
        else
            ln = lQ.__ouroboros_cleanup
        end
        lP = (lP + 7) % 8
    end
until (lP * 7 + 7) % 8 == 0
if type(lQ) == "function" then
    lO = 2
    repeat
        lP = (vector.create((lO * 3 + 9) % 11 + 1, (lO * 10 + 5) % 13 + 1, (lO * 4 + 14) % 17 + 1))
        lR = (vector.create((lO * 1 + 2) % 11 + 1, (lO * 1 + 10) % 13 + 1, (lO * 9 + 9) % 17 + 1))
        lS = (vector.create((lO * 4 + 1) % 5 + 1, (lO * 1 + 5) % 7 + 1, (lO * 5 + 5) % 9 + 1))
        if math.abs((vector.angle(lP, lR, lS))) - math.abs((vector.angle(lR, lP, lS))) == 3 then
            pcall(ln)
            lQ.__ouroboros_cleanup = nil
        else
            pcall(lQ)
            ln.__ouroboros_cleanup = nil
        end
        lO = (lO + 5) % 8
    until (lO * 5 + 0) % 8 == 3
end
Toggles, Options, k2, k_, mh, lt, ll, lh, lc, k7, k3, k0, kX, kH, kF, lH, lk, lg, lb, kE, Label, lu, kW, kN, kI, lL, lM, lC, ld, kY, kO, lq, le, lT, k6, kQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
k2 = "https://discord.gg/ehKVq7pf7v"
k_ = "https://rscripts.net/@Ouroboros"
kW = fn970
kN = fn180
kI = fn656
lL = fn303
local mi = "#7fd47f"
if ((le and lT or le and not le) and ((not le or not le) and (lT and lT)) or (le and not lT or not le and le or lT and le and (not le or lT))) and not ((le and lT or le and not le) and ((not le or not le) and (lT and lT)) or (le and not lT or not le and le or lT and le and (not le or lT))) then
else
    mh = "#6ec1ff"
end
lt = "#e8a34d"
local mg = "#8b93a3"
ll = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
lh = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
lc = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
k7 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
k3 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
k0 = "https://paypal.me/TheTruckerGOD"
kX = "https://venmo.com/u/miserablemusic"
local md = "#345d9d"
local mb = "#f7931a"
local l9 = "#627eea"
local l7 = "#26a17b"
local l6 = "#14f195"
local l5 = "#0070ba"
local l4 = "#008cff"
kH = {
    autoWalk = false,
    autoWorkers = false,
    autoRoll = false,
    autoBuy = false,
    autoUnlock = false,
    autoRebirth = false,
    autoUpgrade = false,
    upgradeLoop = false
}
kF = { plotName = nil, keycaps = {}, walkIdx = 0, rarityThreshold = 0 }
lM = fn118
lC = fn271
ld = fn762
kY = fn792
kO = fn816
lq = fn755
le = fn79
local lY = fn1012
lS = fn245
local l_ = fn185
local lZ = fn246
local l2 = fn823
lT = fn226
lH = {
    PlayerSpeed = false,
    WorkersSpeed = false,
    MoneyMultiplier = false,
    RollSpeed = false,
    LuckMultiplier = false,
    RollAmount = false
}
local l1 = fn619
lk = {
    autoWalk = lY,
    autoWorkers = lS,
    autoRoll = l_,
    autoBuy = l2,
    autoUnlock = lZ,
    autoRebirth = lT,
    upgradeLoop = l1
}
lg = {
    autoWalk = 0.5,
    autoWorkers = 3,
    autoRoll = 2,
    autoBuy = 1.5,
    autoUnlock = 1.5,
    autoRebirth = 6,
    upgradeLoop = 3
}
lb = {}
k6 = fn916
kQ = function(cw)
    if not cw then
        return
    end
    if lb[cw] then
        return
    end
    lb[cw] = task.spawn(function()
        local n__1
        setthreadidentity(8)
        while true do
            local nZ = not Library.Unloaded and ln.__ouroboros_gen == __ouroboros_gen
            local nZ_1
            if nZ then
                if kH[cw] then
                    nZ_1, n__1 = pcall(lk[cw])
                    if not nZ_1 then
                        warn("[Ouroboros] " .. cw .. ": " .. tostring(n__1))
                    end
                end
                local nZ_2 = k6(cw)
                task.wait(nZ_2)
                continue
            end
            break
        end
        lb[cw] = nil
    end)
end
local lX = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = k2, Copyable = true }, "|", lW },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local mf = {
    Info = lX:AddTab("Info", "info"),
    Farming = lX:AddTab("Farming", "zap"),
    Inventory = lX:AddTab("Inventory", "package"),
    Rebirth = lX:AddTab("Rebirth", "rotate-ccw"),
    Player = lX:AddTab("Player", "person-standing"),
    Settings = lX:AddTab("Settings", "settings")
}
local me = mf.Farming:AddSubTab("Income", "dollar-sign")
local mc = mf.Farming:AddSubTab("Workers", "hard-hat")
local ma = mf.Inventory:AddSubTab("Rolling", "dices")
local l8 = mf.Inventory:AddSubTab("Upgrades", "trending-up")
do
    lR = fn126
    lR(mf.Info)
    lR(mf.Rebirth)
    lR(mf.Player)
    lR(mf.Settings)
    lR(me)
    lR(mc)
    lR(ma)
    lR(l8)
    kE = "Unknown"
    pcall(fn150)
    l0 = mf.Info:AddLeftGroupbox("Account", "circle-user")
    l0:AddLabel(lL("User", LocalPlayer.Name, mi), true)
    l0:AddLabel(lL("Status", "Keyless", mi), true)
    l0:AddLabel(lL("Executor", kE, mi), true)
    GameInfoGroup = mf.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(kI(lW .. " [" .. tostring(game.PlaceId) .. "]", mh), true)
    GameInfoGroup:AddLabel(lL("Place ID", tostring(game.PlaceId), mh), true)
    Label = GameInfoGroup:AddLabel(lL("Session time", "0s", lt), true)
end
lu = tostring(game.JobId)
local l3 = #lu > 18
if l3 then
    lO = 1
    repeat
        if (not lO and lO or not lO and not lO or (not lO and not lO or not lO and lO)) and ((lO or lO) and (lO and lO) or (not lO or lO or lO and lO)) or not ((not lO and lO or not lO and not lO or (not lO and not lO or not lO and lO)) and ((lO or lO) and (lO and lO) or (not lO or lO or lO and lO))) then
            l3 = string.sub(lu, 1, 18) .. "..."
        else
            lu = string.sub(l3, 1, 18) .. "..."
        end
        lO = (lO + 1) % 8
    until (lO * 5 + 1) % 8 == 3
end
lO = l3 or lu
k4, l0, MachineGroup, lf, k9, lx, FlyGroup, lo, lN, lK, connection, connection2, lZ, lJ, lA, kL, lF, lv, kK, kS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
l1 = lO
GameInfoGroup:AddLabel(lL("Server", l1, mg), true)
GameInfoGroup:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
k4 = os.clock()
task.spawn(worker)
lX = mf.Info:AddRightGroupbox("Scripts", "package")
lX:AddLabel(kI("Included in this hub", mg), true)
lX:AddLabel(kI(lW, mh), true)
lS = mf.Info:AddRightGroupbox("Features", "list")
lS:AddLabel(kI("Auto Income", mh), true)
lS:AddLabel(kI("Auto Rolling and Upgrades", lt), true)
lS:AddLabel(kI("Auto Rebirth", mi), true)
lR = mf.Info:AddRightGroupbox("Socials", "link")
lR:AddButton({ Text = "Discord", Func = kN })
lR:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = mf.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kN })
local DonationsGroup = mf.Info:AddRightGroupbox("Donations", "heart")
if ((lo or not lo) and (not lZ and not lS) and ((lZ or lS) and (not lZ or not lS)) or (not lS or not lS or (not lo or not lS)) and ((lo or lZ) and (lS or lS))) and ((MachineGroup and lZ or not MachineGroup and lS) and (MachineGroup or not lo or (not lZ or FlyGroup)) and (lo and not MachineGroup or (MachineGroup or not MachineGroup) or (not FlyGroup and not lo or MachineGroup and not lS))) or not (((lo or not lo) and (not lZ and not lS) and ((lZ or lS) and (not lZ or not lS)) or (not lS or not lS or (not lo or not lS)) and ((lo or lZ) and (lS or lS))) and ((MachineGroup and lZ or not MachineGroup and lS) and (MachineGroup or not lo or (not lZ or FlyGroup)) and (lo and not MachineGroup or (MachineGroup or not MachineGroup) or (not FlyGroup and not lo or MachineGroup and not lS)))) then
    DonationsGroup:AddLabel(kI("All donations are optional but appreciated.", lt), true)
    DonationsGroup:AddLabel(kI("If you donate you get a special role, just PING after you donate.", mi), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(kI("LTC / Litecoin", md), true)
    DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    DonationsGroup:AddLabel(kI("BTC / Bitcoin", mb), true)
    DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    DonationsGroup:AddLabel(kI("ETH / Ethereum", l9), true)
    DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
    DonationsGroup:AddLabel(kI("USDT", l7), true)
    DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    DonationsGroup:AddLabel(kI("Solana", l6), true)
    DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    DonationsGroup:AddLabel(kI("PayPal", l5), true)
    DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    DonationsGroup:AddLabel(kI("Venmo", l4), true)
    DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(kI("Don't have any of the listed currencies but still wanna donate?", mg), true)
    DonationsGroup:AddLabel(kI("DM me and we'll work something out.", mh), true)
    l0 = mf.Info:AddRightGroupbox("FAQ", "circle-help")
else
    mf:AddLabel(l6("All donations are optional but appreciated.", l7), true)
    mf:AddLabel(l6("If you donate you get a special role, just PING after you donate.", l9), true)
    mf:AddDivider()
    mf:AddLabel(l6("LTC / Litecoin", mi), true)
    mf:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
    mf:AddLabel(l6("BTC / Bitcoin", l5), true)
    mf:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
    mf:AddLabel(l6("ETH / Ethereum", lt), true)
    mf:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
    mf:AddLabel(l6("USDT", kI), true)
    mf:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
    mf:AddLabel(l6("Solana", l0), true)
    mf:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
    mf:AddLabel(l6("PayPal", mh), true)
    mf:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
    mf:AddLabel(l6("Venmo", mg), true)
    mf:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
    mf:AddDivider()
    mf:AddLabel(l6("Don't have any of the listed currencies but still wanna donate?", DonationsGroup), true)
    mf:AddLabel(l6("DM me and we'll work something out.", md), true);
    (nil):AddRightGroupbox("FAQ", "circle-help")
end
l0:AddLabel("Where do I get a good config?", true)
l0:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
l0:AddLabel("How do I import / export configs?", true)
l0:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
l0:AddLabel("How do I report bugs?", true)
l0:AddLabel("Join the Discord and post it in the bugs channel.", true)
l0:AddLabel("How do I make suggestions?", true)
l0:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
l0:AddLabel("How do I get help or updates?", true)
l0:AddLabel("Join the Discord, updates and support are posted there first.", true)
l_ = me:AddLeftGroupbox("Keycap Walking", "footprints")
l_:AddToggle("autoWalk", { Text = "Auto Walk Keycaps", Default = false, Callback = onAutoWalk })
l_:AddSlider("autoWalkInterval", { Text = "Interval", Default = 0.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
lT = mc:AddLeftGroupbox("Hiring", "users")
lT:AddToggle("autoWorkers", { Text = "Auto Buy Workers", Default = false, Callback = onAutoWorkers })
lT:AddSlider("autoWorkersInterval", { Text = "Interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
MachineGroup = ma:AddLeftGroupbox("Machine", "gauge")
MachineGroup:AddToggle("autoRoll", { Text = "Auto Roll Keycaps", Default = false, Callback = onAutoRoll })
MachineGroup:AddSlider("autoRollInterval", { Text = "Interval", Default = 2, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
MachineGroup:AddToggle("autoBuy", { Text = "Auto Buy Keycaps (rarity)", Default = false, Callback = onAutoBuy })
MachineGroup:AddSlider("autoBuyInterval", { Text = "Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
MachineGroup:AddToggle("autoUnlock", { Text = "Auto Unlock Keypads", Default = false, Callback = onAutoUnlock })
MachineGroup:AddSlider("autoUnlockInterval", { Text = "Interval", Default = 1.5, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
lf = { "Any" }
k9 = { 0 }
pcall(fn740)
MachineGroup:AddDropdown("rarityThreshold", { Text = "Minimum rarity", Values = lf, Default = "Any", Callback = onRarityThreshold })
l3 = l8:AddLeftGroupbox("Stat Upgrades", "wrench")
l2 = {
    "Player Speed",
    "Workers Speed",
    "Money Multiplier",
    "Roll Speed",
    "Luck Multiplier",
    "Roll Amount"
}
lx = {
    ["Player Speed"] = "PlayerSpeed",
    ["Workers Speed"] = "WorkersSpeed",
    ["Money Multiplier"] = "MoneyMultiplier",
    ["Roll Speed"] = "RollSpeed",
    ["Luck Multiplier"] = "LuckMultiplier",
    ["Roll Amount"] = "RollAmount"
}
l3:AddToggle("autoUpgrade", { Text = "Auto Upgrade", Default = false, Callback = onAutoUpgrade })
l3:AddDropdown("upgradeSel", { Text = "Select Upgrades", Values = l2, Multi = true, Default = {}, Callback = onUpgradeSel })
l3:AddSlider("upgradeLoopInterval", { Text = "Upgrade interval", Default = 3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
lY = mf.Rebirth:AddLeftGroupbox("Rebirth", "refresh-cw")
lY:AddToggle("autoRebirth", { Text = "Auto Rebirth", Default = false, Callback = fns.onAutoRebirth })
lY:AddSlider("autoRebirthInterval", { Text = "Interval", Default = 6, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
lP = mf.Player:AddLeftGroupbox("Movement", "footprints")
lP:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
lP:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
lP:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
lP:AddToggle("NoClip", { Text = "NoClip", Default = false })
lP:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
FlyGroup = mf.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
lJ = function(eC)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not eC)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not eC
        end
    end)
    if not eC then
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
Toggles.AntiGameplayPause:OnChanged(fn575)
Toggles.Fly:OnChanged(fn169)
Toggles.WalkSpeedEnabled:OnChanged(fn690)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
lo = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
lQ = mf.Settings:AddLeftGroupbox("Menu")
lQ:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
lN = tick()
lK = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local pM = v
        pcall(function()
            pM:Disable()
        end)
    end
end)
lA = fn140
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
lQ:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lQ:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(mf.Settings)
ThemeManager:LoadDefault()
kG:SetLibrary(Library)
kG:IgnoreThemeSettings()
kG:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
kG:SetFolder("OuroborosHub/PressAKeycap")
lZ = kG:BuildConfigSection(mf.Settings)
kL = fn814
lF = fn831
lv = fn522
kK = function(f6)
    local qp
    qp = nil
    local qq = type(f6) ~= "table" or type(f6.idx) ~= "string"
    local qu = if qq then 1 else 0
    local qs = 543 * qu + 3891 * (1 - qu)
    local qt = 1605 * qu + 2943 * (1 - qu)
    if not ((qs * 2170 + qt * 3224 + qs * qt) % 16777213 == 7224345) then
        qq = type(f6.type) ~= "string"
    end
    if not qq then
        qq = kG.Ignore[f6.idx]
    end
    if qq then
        return false
    end
    qp = kL(f6.type, f6.idx)
    if not qp then
        return false
    end
    local qq_1 = pcall(function()
        if f6.type == "Input" then
            if type(f6.text) ~= "string" then
                return
            end
            qp:SetValue(f6.text)
        elseif f6.type == "ColorPicker" then
            qp:SetValueRGB(Color3.fromHex(f6.value), f6.transparency)
        elseif f6.type == "KeyPicker" then
            qp:SetValue({ f6.key, f6.mode, f6.modifiers })
            if f6.mode == "Toggle" and f6.toggled ~= nil then
                qp.Toggled = f6.toggled
                qp:Update()
            end
        else
            qp:SetValue(f6.value)
        end
    end)
    return qq_1
end
if (not lv or lT or not lT and l2) and (not l2 and l2 or (not l2 or lT)) and not ((not lv or lT or not lT and l2) and (not l2 and l2 or (not l2 or lT))) then
    kS:AddDivider()
    kS:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", AllowEmpty = true, Finished = true })
    kS:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    kS:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    lZ:LoadAutoloadConfig()
    task.spawn(fns.antiGameplayPauseLoop)
    task.spawn(antiAfkLoop)
    kG = fn764
else
    lZ:AddDivider()
    lZ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    lZ:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    lZ:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    kG:LoadAutoloadConfig()
    task.spawn(fns.antiGameplayPauseLoop)
    task.spawn(antiAfkLoop)
    kS = fn764
end
ln.__ouroboros_cleanup = kS
Library:OnUnload(fn687)
if STATE then
    STATE.onCleanup(function()
        kS()
    end)
end
kO()
Library:Notify("Press a Keycap! loaded")
