local k8
local Label
local lx
local le
local kW
local SaveManager
local lk
local k1
local lJ
local lq
local lP
local UserInputService
local ld
local lV
local kV
local lC
local lj
local k0
local lI
local HttpService
local k6
local connection2
local lv
local lc
local lU
local Toggles
local lB
local lH
local lo
local k5
local lN
local lu
local lb
local lT
local kT
local lA
local lh
local kZ
local ln
local lM
local lt
local la
local lS
local kS
local lz
local LocalPlayer
local connection
local lF
local lm
local CurrentCamera
local VirtualUser
local k9
local lR
local ly
local lf
local kX
local lE
local ll
local lK
local lr
local function onCopyJoinScript_JobID()
    local nB = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lK)
    if setclipboard then
        setclipboard(nB)
    elseif toclipboard then
        toclipboard(nB)
    end
    lH:Notify("Copied join script to clipboard")
end
local function autoSniperUpgradeLoop()
    while not lH.Unloaded do
        if Toggles.AutoSniperUpgrade and Toggles.AutoSniperUpgrade.Value and lN and lt and lf and lx then
            pcall(function()
                local oG = lt.GetShowLevel()
                local oH = lt.GetMaxLevel()
                if oG < oH then
                    local oH_1 = lf.GetShotLevelUpCost(oG + 1)
                    if lx.CanAfford(oH_1) then
                        lN.ShotLevelUp:FireServer(1)
                    end
                end
            end)
        end
        task.wait(0.75)
    end
end
local function fn64()
    local mS_1
    local mR_1
    if not lz then
        return {}
    end
    mR_1, mS_1 = pcall(function()
        return lz:GetState()
    end)
    local mT = mR_1 and type(mS_1) == "table" and type(mS_1.BrainrotAttackList) == "table"
    if mT then
        return mS_1.BrainrotAttackList
    end
    return {}
end
local function onCopyUSDTAddress()
    kZ(lT, "Copied USDT address")
end
local function fn108()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lj = tick()
end
local function onJumpRequest()
    if lH.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local qg_1 = lA()
        if qg_1 then
            qg_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onInputBegan()
    ll = tick()
end
local function fn191(aZ, a_)
    if a_ == "Highest Rarity" then
        local nm = tonumber(aZ.mutation) or 0
        local nn = nm * 1000000
        local no = (tonumber(aZ.id))
        local ns = if no then 1 else 0
        local nq = 1101 * ns + 1783 * (1 - ns)
        local nr = 3722 * ns + 2170 * (1 - ns)
        if not ((nq * 3312 + nr * 715 + nq * nr) % 16777213 == 10405664) then
            no = 0
        end
        return nn + no
    end
    return lr(aZ)
end
local function fn206(bf, bg, bh)
    return string.format("<b>%s</b> %s %s", bf, ly("-", "#5a6070"), ly(bg, bh))
end
local function fn209()
    local nu_1
    local nt_1
    if identifyexecutor then
        nu_1, nt_1 = identifyexecutor()
        local nv = nu_1 ~= ""
        local nw = type(nu_1) == "string" and nv
        if nw then
            local nv_1 = type(nt_1) == "string" and nt_1 ~= "" and nu_1 .. " " .. nt_1
            k1 = nv_1 or nu_1
        end
    end
end
local function fn216()
    kW(false)
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    print("Unloaded!")
end
local function fn227()
    local Players = game:GetService("Players")
    local mI = Players.LocalPlayer
    local mM = if mI then 1 else 0
    local mK = 1080 * mM + 2966 * (1 - mM)
    local mL = 2043 * mM + 768 * (1 - mM)
    if not ((mK * 1301 + mL * 2890 + mK * mL) % 16777213 == 9515790) then
        mI = Players.PlayerAdded:Wait()
    end
    local mH_1 = mI
    return mH_1:WaitForChild("PlayerGui")
end
local function antiAfkLoop()
    while not lH.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local qQ = tick() - ll
            local qR = tick() - lj
            if qQ >= 300 and qR >= 60 then
                pcall(k9)
            else
                if qQ < 300 and qR >= 300 then
                    pcall(k9)
                end
            end
        end
    end
end
local function fn257()
    local Character = LocalPlayer.Character
    local p3 = Character and Character:FindFirstChild("HumanoidRootPart")
    return p3
end
local function fn311()
    local ra = {}
    for i, v in ipairs({ Toggles, lV }) do
        for k, v in pairs(v) do
            local rb = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rb then
                local rb_1 = lP(k, v)
                if rb_1 then
                    ra[#ra + 1] = rb_1
                end
            end
        end
    end
    table.sort(ra, function(he, hf)
        if he.type ~= hf.type then
            return he.type < hf.type
        end
        return he.idx < hf.idx
    end)
    return { objects = ra }
end
local function autoUpgradeBaseLoop()
    while not lH.Unloaded do
        local pK = Toggles.AutoUpgradeBase and Toggles.AutoUpgradeBase.Value and lU and lm and la and lx and os.clock() - lu >= 5
        if pK then
            pcall(function()
                local pG = la.GetMaxUnlockedSlot(lm.GetUnlockSlot()) + 1
                local pH = la.GetMaxSlot()
                if pH > 0 and pH < pG then
                    return
                end
                local pH_1 = la.GetUnLockSlotCost(pG)
                if lx.CanAfford(pH_1) then
                    lu = os.clock()
                    lU.UnlockSlot:FireServer(pG)
                end
            end)
        end
        task.wait(1)
    end
end
local function fn329()
    local Character = LocalPlayer.Character
    local p0 = Character and Character:FindFirstChildOfClass("Humanoid")
    return p0
end
local function autoCollectLoop()
    while not lH.Unloaded do
        if Toggles.AutoCollect and Toggles.AutoCollect.Value and lU and lm and la and lB then
            pcall(function()
                local ov = la.GetMaxUnlockedSlot(lB:GetUnlockSlot()) or 0
                local oA = 1
                while oA <= ov do
                    local oB = oA
                    if lm.IsSlotUnlocked(oB) then
                        local ov_1 = lm.GetEquippedBrainrot(oB)
                        local ow_1 = ov_1 and lm.GetClaimGold(ov_1) > 0
                        if ow_1 then
                            lU.ClaimGold:FireServer(oB)
                        end
                    end
                    oA += 1
                end
            end)
        end
        task.wait(1)
    end
end
local function fn363(a6)
    local DiscordGroup = a6:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lS })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lS })
end
local function onCopyEthereumAddress()
    kZ(kS, "Copied Ethereum address")
end
local function onRenderStepped(fQ)
    if lH.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qi_1 = lA()
        if qi_1 then
            qi_1.WalkSpeed = lV.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qi_3 = lo()
        local qj = lA()
        if qi_3 and qj then
            qj.PlatformStand = true
            local qj_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                qj_1 = qj_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qj_1 = qj_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                qj_1 = qj_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qj_1 = qj_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                qj_1 = qj_1 + Vector3.new(0, 1, 0)
            end
            local qo = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if qo == 1 then
                qj_1 = qj_1 - Vector3.new(0, 1, 0)
            end
            qi_3.Velocity = Vector3.zero
            if qj_1.Magnitude > 0 then
                qi_3.CFrame = qi_3.CFrame + qj_1.Unit * lV.FlySpeed.Value * fQ
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local rG_1
    local rE = lV.SaveManager_ImportSource.Value
    local rE_1
    local rK = if rE then 1 else 0
    local rI = 2419 * rK + 1259 * (1 - rK)
    local rJ = 66 * rK + 2090 * (1 - rK)
    if not ((rI * 284 + rJ * 375 + rI * rJ) % 16777213 == 871400) then
        rE = ""
    end
    local rF = tostring(rE):match("^%s*(.-)%s*$")
    if rF == "" then
        lH:Notify("Paste an exported config into the box first")
        return
    end
    rE_1, rG_1 = pcall(HttpService.JSONDecode, HttpService, rF)
    local rF_1 = not rE_1 or type(rG_1) ~= "table" or type(rG_1.objects) ~= "table"
    if rF_1 then
        lH:Notify("That is not a valid exported config")
        return
    end
    local rE_2 = 0
    for i, v in ipairs(rG_1.objects) do
        if k0(v) then
            rE_2 += 1
        end
    end
    if rE_2 == 0 then
        lH:Notify("No settings in that config matched this script")
        return
    end
    lV.SaveManager_ImportSource:SetValue("")
    local rG_2 = rE_2 == 1 and "" or "s"
    lH:Notify(("Imported %d setting%s"):format(rE_2, rG_2), 6)
end
local function fn499()
    kW(Toggles.AntiGameplayPause.Value)
end
local function fn505()
    if not Toggles.Fly.Value then
        local qs = lA()
        if qs then
            qs.PlatformStand = false
        end
    end
end
local function autoDroneUpgradeLoop()
    while not lH.Unloaded do
        if Toggles.AutoDroneUpgrade and Toggles.AutoDroneUpgrade.Value and lJ and lk and le and lx then
            pcall(function()
                local oP = lk.GetDroneLevel()
                local oQ = le.GetMaxLevel()
                if oP < oQ then
                    local oQ_1 = le.GetLevelUpCost(oP)
                    if lx.CanAfford(oQ_1) then
                        lJ.DroneLevelUp:FireServer(1)
                    end
                end
            end)
        end
        task.wait(0.75)
    end
end
local function autoUpgradeBrainrotsLoop()
    while not lH.Unloaded do
        if Toggles.AutoUpgradeBrainrots and Toggles.AutoUpgradeBrainrots.Value and lU and lm and k6 and lx and la then
            pcall(function()
                local Value = lV.BrainrotUpgradePriority.Value
                local pN = la.GetMaxUnlockedSlot(lm.GetUnlockSlot()) or 0
                local pO = {}
                local pU = 1
                while pU <= pN do
                    local pV = pU
                    if lm.IsSlotUnlocked(pV) then
                        local pN_1 = lm.GetEquippedBrainrot(pV)
                        if pN_1 then
                            local pP_1 = k6.GetLevelUpGoldCost(pN_1)
                            local pQ = pP_1 and pP_1 > 0 and lx.CanAfford(pP_1)
                            if pQ then
                                pO[#pO + 1] = { slot = pV, brainrot = pN_1 }
                            end
                        end
                    end
                    pU += 1
                end
                if #pO == 0 then
                    return
                end
                if Value == "Random" then
                    local pM_1 = pO[math.random(1, #pO)]
                    lU.UpgradeBrainrot:FireServer(pM_1.slot)
                else
                    table.sort(pO, function(fl, fm)
                        return k5(fl.brainrot, "Highest Gold/s") > k5(fm.brainrot, "Highest Gold/s")
                    end)
                    lU.UpgradeBrainrot:FireServer(pO[1].slot)
                end
            end)
        end
        task.wait(0.5)
    end
end
local function onCopyBitcoinAddress()
    kZ(kV, "Copied Bitcoin address")
end
local function onCopyPayPalLink()
    kZ(lM, "Copied PayPal link")
end
local function fn522(g1, g2)
    local Type = g2.Type
    if Type == "Toggle" then
        return { idx = g1, type = "Toggle", value = g2.Value == true }
    elseif Type == "Slider" then
        return { idx = g1, type = "Slider", value = tostring(g2.Value) }
    elseif Type == "Dropdown" then
        return { idx = g1, type = "Dropdown", multi = g2.Multi == true, value = g2.Value }
    elseif Type == "Input" then
        local q1 = g2.Value or ""
        return { idx = g1, type = "Input", text = tostring(q1) }
    elseif Type == "ColorPicker" then
        return { idx = g1, type = "ColorPicker", value = g2.Value:ToHex(), transparency = g2.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = g1,
            type = "KeyPicker",
            mode = g2.Mode,
            key = g2.Value,
            modifiers = g2.Modifiers,
            toggled = g2.Toggled
        }
    else
        return nil
    end
end
local function fn532(ae, af)
    if setclipboard then
        setclipboard(ae)
    elseif toclipboard then
        toclipboard(ae)
    end
    lH:Notify(af)
end
local function onInputChanged(gy)
    local UserInputType = gy.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        ll = tick()
    end
end
local function onCopySolanaAddress()
    kZ(lR, "Copied Solana address")
end
local function onStepped()
    if lH.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local p5_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if p5_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn705(gU, gV)
    local qV_1 = (gU == "Toggle" and Toggles or lV)[gV]
    local qU_2 = type(qV_1) == "table" and qV_1.Type == gU
    return qU_2 and qV_1 or nil
end
local function onCopyVenmoLink()
    kZ(lI, "Copied Venmo link")
end
local function onExportConfigToClipboard()
    local ry_1
    local rx_1
    rx_1, ry_1 = pcall(HttpService.JSONEncode, HttpService, lC())
    if not rx_1 then
        lH:Notify("Failed to encode the config")
        return
    end
    local rx_2 = setclipboard
    local rD = if rx_2 then 1 else 0
    local rB = 654 * rD + 250 * (1 - rD)
    local rC = 3480 * rD + 1368 * (1 - rD)
    if not ((rB * 1291 + rC * 3315 + rB * rC) % 16777213 == 14656434) then
        rx_2 = toclipboard
    end
    local rz = rx_2
    local rx_3 = type(rz) ~= "function"
    local rD_1 = if rx_3 then 1 else 0
    local rB_1 = 609 * rD_1 + 58 * (1 - rD_1)
    local rC_1 = 3377 * rD_1 + 1964 * (1 - rD_1)
    if not ((rB_1 * 2547 + rC_1 * 3694 + rB_1 * rC_1) % 16777213 == 16082354) then
        rx_3 = not pcall(rz, ry_1)
    end
    if rx_3 then
        lH:Notify("Your executor does not support copying to the clipboard")
        return
    end
    lH:Notify("Config copied to clipboard", 6)
end
local function onRscripts()
    if setclipboard then
        setclipboard(lb)
    elseif toclipboard then
        toclipboard(lb)
    end
    lH:Notify("Copied Rscripts profile to clipboard")
end
local function fn761(bc, bd)
    return string.format('<font color="%s">%s</font>', bd, bc)
end
local function fn815()
    kZ(ld, "Copied Discord invite to clipboard")
end
local function autoDroneShieldLoop()
    while not lH.Unloaded do
        if Toggles.AutoDroneShield and Toggles.AutoDroneShield.Value and lE and lh and kT then
            pcall(function()
                local oi = lh.Get("PendingShield") or 0
                local oi_1 = lh.Get("ShieldReadyTick") or 0
                local oi_2 = oi <= 0 and oi_1 - kT:GetDataTime() <= 0
                if oi_2 then
                    lE.ChargeShield:InvokeServer()
                end
            end)
        end
        task.wait(1)
    end
end
local function autoRebirthLoop()
    while not lH.Unloaded do
        if Toggles.AutoRebirth and Toggles.AutoRebirth.Value and lF and lq and lc and lx then
            pcall(function()
                local oV = lq.GetLevel()
                local oW = lc.GetMaxRebirth()
                if oV < oW then
                    local oX = lc.GetRebirthNeedCash(math.min(oV, oW))
                    if lx.GetGold() >= oX then
                        lF.RebirthUp:FireServer()
                    end
                end
            end)
        end
        task.wait(2)
    end
end
local function worker()
    local nE_1
    while true do
        task.wait(1)
        if lH.Unloaded then
            break
        end
        local nD = math.floor(os.clock() - lv)
        if nD < 60 then
            nE_1 = nD .. "s"
        elseif nD < 3600 then
            nE_1 = string.format("%dm %ds", nD // 60, nD % 60)
        else
            nE_1 = string.format("%dh %dm", nD // 3600, nD % 3600 // 60)
        end
        Label:SetText(ln("Session time", nE_1, k8))
    end
end
local function onUnload()
    lH:Unload()
end
local function onCopyLitecoinAddress()
    kZ(kX, "Copied Litecoin address")
end
local function antiGameplayPauseLoop()
    while not lH.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            kW(true)
        end
    end
end
local function fn938()
    if not Toggles.WalkSpeedEnabled.Value then
        local qu = lA()
        if qu then
            qu.WalkSpeed = 16
        end
    end
end
kS = nil
kT = nil
Toggles = nil
kV = nil
kW = nil
kX = nil
connection = nil
kZ = nil
k0 = nil
k1 = nil
k5 = nil
k6 = nil
k8 = nil
k9 = nil
la = nil
lb = nil
lc = nil
ld = nil
le = nil
lf = nil
LocalPlayer = nil
lh = nil
lj = nil
lk = nil
ll = nil
lm = nil
ln = nil
lo = nil
HttpService = nil
lq = nil
lr = nil
VirtualUser = nil
lt = nil
lu = nil
lv = nil
UserInputService = nil
lx = nil
ly = nil
lz = nil
lA = nil
lB = nil
lC = nil
SaveManager = nil
lE = nil
local k_, k2, k3, k4, k7, CollectionService
lF = nil
lH = nil
lI = nil
lJ = nil
lK = nil
CurrentCamera = nil
lM = nil
lN = nil
connection2 = nil
lP = nil
Label = nil
lR = nil
lS = nil
lT = nil
lU = nil
lV = nil
local lG, l1, l9, ma, md, ml
local l3_1, l3_2
local l__1, l__2
lH, SaveManager, UserInputService, VirtualUser, HttpService, CollectionService, LocalPlayer, ld, lb, kT, lU, lN, lJ, lF, lE, lB, lz, lx, lt, lq, lm, lk, lh, lf, le, lc, la, k6, k2, l3_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
getgenv().gethui = fn227
lH = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
local l0 = game:GetService("Players")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
local lZ = game:GetService("ReplicatedStorage")
CollectionService = game:GetService("CollectionService")
LocalPlayer = l0.LocalPlayer
local l4 = "Brainrot Sniper"
ld = "https://discord.gg/ehKVq7pf7v"
lb = "https://rscripts.net/@Ouroboros"
local Shared = lZ:WaitForChild("Shared")
local lY_1, lY_5
local function lX(B)
    local mO_1
    local mN_1
    mN_1, mO_1 = pcall(function()
        return require(B)
    end)
    if mN_1 then
        return mO_1
    end
    return nil
end
local l2 = lX(Shared.Packages.Net)
kT = lX(Shared.Packages.TimeSync)
lU = lX(Shared.Net.BrainrotSlot)
lX(Shared.Net.BrainrotSell)
lN = lX(Shared.Net.Shot)
lJ = lX(Shared.Net.Drone)
lF = lX(Shared.Net.Rebirth)
lE = lX(Shared.Net.Shield)
lB = lX(Shared.Data.BrainrotData)
lz = lX(Shared.Data.PlayerContextData)
lx = lX(Shared.Controller.EcoController)
lt = lX(Shared.Controller.ShotController)
lq = lX(Shared.Controller.RebirthController)
lm = lX(Shared.Controller.BrainrotController)
lk = lX(Shared.Controller.DroneController)
lh = lX(Shared.Controller.PlayerStorageController)
lf = lX(Shared.Helper.ShotHelper)
le = lX(Shared.Helper.DroneHelper)
lc = lX(Shared.Helper.RebirthHelper)
la = lX(Shared.Helper.PlaceHelper)
k6 = lX(Shared.Helper.BrainrotHelper)
k2 = lX(Shared.Service.DroneService.DroneManager)
if ((lf or lf) and (lf and lX) or (lf or not lX) and (not lX or lf) or l0 and l0 and (lX or not l0) and (not lX and lX and (not lX and l0))) and ((not l0 or lf) and (lX and not lf) and (not lX and l0 or (not lf or not l0)) or (not l0 or l0 or lX and lf or lf and l0 and (not l0 or lf))) or not (((lf or lf) and (lf and lX) or (lf or not lX) and (not lX or lf) or l0 and l0 and (lX or not l0) and (not lX and lX and (not lX and l0))) and ((not l0 or lf) and (lX and not lf) and (not lX and l0 or (not lf or not l0)) or (not l0 or l0 or lX and lf or lf and l0 and (not l0 or lf)))) then
    l3_1 = l2
else
    l2 = l3_1
end
if l3_1 then
    l3_1 = l2:RemoteEvent("BrainrotAttack")
end
k_, Toggles, lV, kZ, lS, lG, lr, k7, k5, lY_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
k_ = l3_1
kZ = fn532
lS = fn815
lG = fn64
lr = function(ar)
    local m3_1
    local m2_1
    if not lm then
        return 0
    end
    m2_1, m3_1 = pcall(function()
        local GetBrainrotCashSpeed = lm.GetBrainrotCashSpeed
        local id = ar.id
        local mutation = ar.mutation
        local m0 = ar.level or 1
        return GetBrainrotCashSpeed({ id = id, mutation = mutation, level = m0, event_mutation = ar.event_mutation })
    end)
    local m4 = m2_1 and type(m3_1) == "number"
    if m4 then
        return m3_1
    end
    return 0
end
k7 = function()
    local na_1, na_4
    local m6 = {}
    local Character = LocalPlayer.Character
    local m8 = Character and Character:FindFirstChild("HumanoidRootPart")
    local m9 = not m8 or not lt
    local m9_1
    if m9 then
        return m6
    end
    local m8_2 = m8.Position.Z
    local m7_2 = 0
    m9_1, na_1 = pcall(function()
        return lt.GetCurrentDistance()
    end)
    local nb = m9_1 and type(na_1) == "number"
    local nb_1
    if nb then
        m7_2 = na_1
    end
    if m7_2 <= 0 then
        return m6
    end
    local GameFolder = workspace:FindFirstChild("GameFolder")
    local na_2 = GameFolder and GameFolder:FindFirstChild("BrainrotModels")
    if not na_2 then
        return m6
    end
    for i, child in ipairs(na_2:GetChildren()) do
        local nl = child
        local m9_4 = nl:IsA("Model") and CollectionService:HasTag(nl, "BrainrotEnemy")
        if m9_4 then
            local attr = nl:GetAttribute("Uid")
            local na_3 = attr and not nl:GetAttribute("IsDead")
            if na_3 then
                na_4, nb_1 = pcall(function()
                    return nl:GetPivot().Position
                end)
                if na_4 then
                    local na_5 = m8_2 - nb_1.Z
                    if na_5 > 0 and na_5 < m7_2 then
                        m6[#m6 + 1] = attr
                    end
                end
            end
        end
    end
    return m6
end
k5 = fn191
local Window = lH:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = ld, Copyable = true }, "|", l4 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
Toggles = lH.Toggles
lV = lH.Options
lZ = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "crosshair"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
if ((not lV or k5) and (not lV or not lV) and (not lY_1 or lY_1 or k5 and 20) and (k5 and not lG and (k5 or not lY_1) and (lY_1 or not lV)) or (not k5 or lG or (not lV or lV) or 20) and ((lV and lY_1 or not k5 and not lY_1) and ((not lV or not lG) and (lY_1 or k5)))) and not ((not lV or k5) and (not lV or not lV) and (not lY_1 or lY_1 or k5 and 20) and (k5 and not lG and (k5 or not lY_1) and (lY_1 or not lV)) or (not k5 or lG or (not lV or lV) or 20) and ((lV and lY_1 or not k5 and not lY_1) and ((not lV or not lG) and (lY_1 or k5)))) then
    kZ = fn363
else
    lY_1 = fn363
end
for k, v in lZ do
    if v ~= lZ.Info then
        lY_1(v)
    end
end
l2, l1, k8, l0, k1, lX, l3_2, Label, lK, l__1, ly, ln = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local lW_1 = 25
repeat
    local lY_2 = (lW_1 * 7 + 1) % 9 + 1
    if lY_2 <= 5 then
        if lY_2 <= 3 then
            if lY_2 <= 2 then
                if lY_2 <= 1 then
                    local l7_1 = {
                        "gvrd",
                        "rar",
                        "nncakou",
                        "buydjrwazytn",
                        "xgc",
                        "ist",
                        "oyhmxzpdtv",
                        "zkeaeyergaz",
                        "ddgcpkq",
                        "dfjpceycdlej",
                        "wlhduaqjwyy",
                        "ofgsjifdi",
                        "sffrjarmebjf",
                        "mmfiebpir",
                        "jgssbbrsyv"
                    }
                    if l7_1[(lW_1 * 59 + 93) % 15 + 1] <= l7_1[(lW_1 * 59 + 93) % 15 + 1] then
                        k8 = "#e8a34d"
                    else
                        lX = "#e8a34d"
                    end
                    lW_1 = (lW_1 + 13) % 72
                else
                    if not l2 and ln and (not l__1 or not l1) or (l1 and lK or l1 and not l1) or (not l1 or lK or (not l2 or not l1)) and (lK and l1 or (not l2 or lK)) or not (not l2 and ln and (not l__1 or not l1) or (l1 and lK or l1 and not l1) or (not l1 or lK or (not l2 or not l1)) and (lK and l1 or (not l2 or lK))) then
                        l0 = "#8b93a3"
                    else
                        lX = "#8b93a3"
                    end
                    lW_1 = (lW_1 + 58) % 72
                end
            else
                local l7_2 = (vector.create((lW_1 * 6 + 8) % 11 + 1, (lW_1 * 11 + 3) % 13 + 1, (lW_1 * 15 + 15) % 17 + 1))
                local l8_1 = (vector.create((lW_1 * 2 + 7) % 11 + 1, (lW_1 * 5 + 8) % 13 + 1, (lW_1 * 1 + 5) % 17 + 1))
                l9 = (vector.create((lW_1 * 2 + 4) % 11 + 1, (lW_1 * 6 + 8) % 13 + 1, (lW_1 * 6 + 6) % 17 + 1))
                ma = (vector.create((lW_1 * 1 + 7) % 11 + 1, (lW_1 * 3 + 9) % 13 + 1, (lW_1 * 4 + 3) % 17 + 1))
                if vector.dot(vector.cross(l7_2, l8_1), (vector.cross(l9, ma))) == vector.dot(l7_2, l9) * vector.dot(l8_1, ma) - vector.dot(l7_2, ma) * vector.dot(l8_1, l9) + 2 then
                    l4 = "Unknown"
                    pcall(fn209)
                    l3_2 = k1.Info:AddLeftGroupbox("Account", "circle-user")
                    l3_2:AddLabel(LocalPlayer("User", ln.Name, lZ), true)
                    l3_2:AddLabel(LocalPlayer("Status", "Keyless", lZ), true)
                    l3_2:AddLabel(LocalPlayer("Executor", "Unknown", lZ), true)
                    k8 = k1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    k8:AddLabel(lX(Label .. " [" .. tostring(game.PlaceId) .. "]", ly), true)
                    k8:AddLabel(LocalPlayer("Place ID", tostring(game.PlaceId), ly), true)
                    l2 = k8:AddLabel(LocalPlayer("Session time", "0s", l1), true)
                else
                    k1 = "Unknown"
                    pcall(fn209)
                    lX = lZ.Info:AddLeftGroupbox("Account", "circle-user")
                    lX:AddLabel(ln("User", LocalPlayer.Name, l2), true)
                    lX:AddLabel(ln("Status", "Keyless", l2), true)
                    lX:AddLabel(ln("Executor", k1, l2), true)
                    l3_2 = lZ.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    l3_2:AddLabel(ly(l4 .. " [" .. tostring(game.PlaceId) .. "]", l1), true)
                    l3_2:AddLabel(ln("Place ID", tostring(game.PlaceId), l1), true)
                    Label = l3_2:AddLabel(ln("Session time", "0s", k8), true)
                end
                lW_1 = (lW_1 + 13) % 72
            end
        elseif lY_2 <= 4 then
            if (not ln and l0 or k1 and l0) and (not k1 and not ly or (lX or not k1)) or not ((not ln and l0 or k1 and l0) and (not k1 and not ly or (lX or not k1))) then
                lK = tostring(game.JobId)
            else
                ln = tostring(game.JobId)
            end
            lW_1 = (lW_1 + 67) % 72
        else
            if (not ln and not l3_2 or (l3_2 or l3_2)) and ((ln or not l3_2) and (ln or not ln)) and ((ly and l3_2 or (ly or ly)) and ((l3_2 or l3_2) and (ly or ln))) or not ((not ln and not l3_2 or (l3_2 or l3_2)) and ((ln or not l3_2) and (ln or not ln)) and ((ly and l3_2 or (ly or ly)) and ((l3_2 or l3_2) and (ly or ln)))) then
                l__1 = #lK > 18
            else
                lK = #l__1 > 18
            end
            lW_1 = (lW_1 + 22) % 72
        end
    elseif lY_2 <= 7 then
        if lY_2 <= 6 then
            local l7_3 = {
                "keurw",
                "jokijhpq",
                "dyyfsg",
                "xppcayz",
                "woyihl",
                "totjubr",
                "vakvw",
                "kyvv",
                "huvxtyslbdqy",
                "kbgxfbatamwz",
                "gbvxvt",
                "crgn",
                "poaeikouj",
                "wdvsvannvno"
            }
            if l7_3[(lW_1 * 70 + 64) % 14 + 1] <= l7_3[(lW_1 * 70 + 64) % 14 + 1] then
                ly = fn761
            else
                l1 = fn761
            end
            lW_1 = (lW_1 + 4) % 72
        else
            if (not Label and l3_2 or (not Label or not Label)) and (l3_2 and l3_2 or l3_2 and Label) and not ((not Label and l3_2 or (not Label or not Label)) and (l3_2 and l3_2 or l3_2 and Label)) then
                l1 = fn206
            else
                ln = fn206
            end
            lW_1 = (lW_1 + 31) % 72
        end
    elseif lY_2 <= 8 then
        local lY_3 = (vector.create((lW_1 * 5 + 6) % 11 + 1, (lW_1 * 7 + 1) % 13 + 1, (lW_1 * 15 + 17) % 17 + 1))
        local l7_4 = (vector.create((lW_1 * 5 + 2) % 11 + 1, (lW_1 * 7 + 13) % 13 + 1, (lW_1 * 7 + 16) % 17 + 1))
        local l8_2 = (vector.create((lW_1 * 3 + 1) % 11 + 1, (lW_1 * 8 + 11) % 13 + 1, (lW_1 * 9 + 8) % 17 + 1))
        l9 = (vector.create((lW_1 * 2 + 2) % 5 + 1, (lW_1 * 2 + 7) % 7 + 1, (lW_1 * 4 + 7) % 9 + 1))
        if vector.dot(vector.cross(lY_3, (vector.cross(l7_4, l8_2))), l9) == vector.dot(l7_4 * vector.dot(lY_3, l8_2) - l8_2 * vector.dot(lY_3, l7_4), l9) + 5 then
            k1 = "#7fd47f"
        else
            l2 = "#7fd47f"
        end
        lW_1 = (lW_1 + 31) % 72
    else
        local lY_4 = (vector.create((lW_1 * 6 + 1) % 11 + 1, (lW_1 * 6 + 4) % 13 + 1, (lW_1 * 3 + 2) % 17 + 1))
        local l7_5 = (vector.create((lW_1 * 4 + 3) % 11 + 1, (lW_1 * 2 + 13) % 13 + 1, (lW_1 * 11 + 3) % 17 + 1))
        local l8_3 = (vector.create((lW_1 * 1 + 6) % 5 + 1, (lW_1 * 2 + 1) % 7 + 1, (lW_1 * 1 + 2) % 9 + 1))
        if math.abs((vector.angle(lY_4, l7_5, l8_3))) - math.abs((vector.angle(l7_5, lY_4, l8_3))) == 2 then
            lX = "#6ec1ff"
        else
            l1 = "#6ec1ff"
        end
        lW_1 = (lW_1 + 4) % 72
    end
until (lW_1 * 59 + 33) % 72 == 5
if l__1 then
    local lW_2 = 2
    repeat
        lX = {
            "bzqllejqxee",
            "xwbd",
            "wyfh",
            "hgp",
            "rixisbtrmr",
            "ckucclu",
            "jehxurgyww",
            "gkpgrofnst",
            "bzhmktmxnzs",
            "gihgajzf",
            "xbva",
            "ovoqjucwjiz",
            "ovht",
            "ngfxvejh",
            "ncshfxwbul",
            "onefkb"
        }
        if lX[(lW_2 * 40 + 59) % 16 + 1] <= lX[(lW_2 * 40 + 59) % 16 + 1] then
            l__1 = string.sub(lK, 1, 18) .. "..."
        else
            lK = string.sub(l__1, 1, 18) .. "..."
        end
        lW_2 = (lW_2 + 1) % 8
    until (lW_2 * 3 + 3) % 8 == 4
end
local lW_3 = l__1 or lK
ml, lv, lY_5, kX, kV, kS, lT, lR, lM, lI, md, k3, lu, CurrentCamera, ll, lj, connection, connection2, l__2, lA, lo, kW, k9, k4, lP, lC, k0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if not lY_5 or lC or not CurrentCamera and lC or (not lu and lC or lu and not lY_5) or (not lu and lu or lu and CurrentCamera) and (not lu and lu or lC and not CurrentCamera) or not (not lY_5 or lC or not CurrentCamera and lC or (not lu and lC or lu and not lY_5) or (not lu and lu or lu and CurrentCamera) and (not lu and lu or lC and not CurrentCamera)) then
    ml = lW_3
    l3_2:AddLabel(ln("Server", ml, l0), true)
    l3_2:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    lv = os.clock()
else
    local lW_4 = lv
    ln:AddLabel(l0("Server", lW_4, ml), true)
    ln:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
end
task.spawn(worker)
local ScriptsGroup = lZ.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ly("Included in this hub", l0), true)
ScriptsGroup:AddLabel(ly(l4, l1), true)
local FeaturesGroup = lZ.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ly("Auto Snipe", l1), true)
FeaturesGroup:AddLabel(ly("Auto Drones", l2), true)
FeaturesGroup:AddLabel(ly("Auto Economy", k8), true)
FeaturesGroup:AddLabel(ly("Auto Upgrades", l1), true)
FeaturesGroup:AddLabel(ly("Auto Placement", l2), true)
FeaturesGroup:AddLabel(ly("Player Utilities", l0), true)
local SocialsGroup = lZ.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = lS })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
lX = lZ.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
lX:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
lX:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
lX:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
lX:AddButton({ Text = "Copy Discord Invite", Func = lS })
kX = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
kV = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
kS = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lT = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lR = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
lM = "https://paypal.me/TheTruckerGOD"
lI = "https://venmo.com/u/miserablemusic"
local mm = "#345d9d"
local mi = "#f7931a"
local mf = "#627eea"
local me = "#26a17b"
if not SocialsGroup and ll and (kW and ll) or ll and not ll and (not ll and not SocialsGroup) or not (not SocialsGroup and ll and (kW and ll) or ll and not ll and (not ll and not SocialsGroup)) then
    md = "#14f195"
else
    lC = "#14f195"
end
local mc = "#0070ba"
ma = "#008cff"
l9 = lZ.Info:AddRightGroupbox("Donations", "heart")
l9:AddLabel(ly("All donations are optional but appreciated.", k8), true)
l9:AddLabel(ly("If you donate you get a special role, just PING after you donate.", l2), true)
l9:AddDivider()
l9:AddLabel(ly("LTC / Litecoin", mm), true)
l9:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
l9:AddLabel(ly("BTC / Bitcoin", mi), true)
l9:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
l9:AddLabel(ly("ETH / Ethereum", mf), true)
l9:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
l9:AddLabel(ly("USDT", me), true)
l9:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
l9:AddLabel(ly("Solana", md), true)
l9:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
l9:AddLabel(ly("PayPal", mc), true)
l9:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
l9:AddLabel(ly("Venmo", ma), true)
l9:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
l9:AddDivider()
l9:AddLabel(ly("Don't have any of the listed currencies but still wanna donate?", l0), true)
l9:AddLabel(ly("DM me and we'll work something out.", l1), true)
local FaqGroup = lZ.Info:AddRightGroupbox("FAQ", "circle-help")
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
local SniperGroup = lZ.Main:AddLeftGroupbox("Sniper", "crosshair")
SniperGroup:AddToggle("AutoSnipe", { Text = "Auto Snipe", Default = false })
SniperGroup:AddToggle("SkipSniperAnimation", { Text = "Auto Skip Sniper Animation", Default = true })
SniperGroup:AddSlider("SnipeDelay", { Text = "Snipe Delay", Default = 0.3, Min = 0.05, Max = 2, Rounding = 2, Suffix = "s" })
local DronesGroup = lZ.Main:AddLeftGroupbox("Drones", "bot")
DronesGroup:AddToggle("AutoDroneBest", { Text = "Auto Drone Best", Default = false })
DronesGroup:AddToggle("AutoDroneShield", { Text = "Auto Drone Shield", Default = false })
local EconomyGroup = lZ.Main:AddRightGroupbox("Economy", "coins")
EconomyGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
EconomyGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local UpgradesGroup = lZ.Main:AddRightGroupbox("Upgrades", "arrow-up")
UpgradesGroup:AddToggle("AutoSniperUpgrade", { Text = "Auto Buy Sniper Upgrades", Default = false })
UpgradesGroup:AddToggle("AutoDroneUpgrade", { Text = "Auto Buy Drone Upgrades", Default = false })
UpgradesGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
UpgradesGroup:AddToggle("AutoUpgradeBrainrots", { Text = "Auto Upgrade Placed Brainrots", Default = false })
UpgradesGroup:AddDropdown("BrainrotUpgradePriority", { Values = { "Best", "Random" }, Default = "Best", Multi = false, Text = "Upgrade Priority" })
local PlacementGroup = lZ.Main:AddLeftGroupbox("Placement", "layout-grid")
PlacementGroup:AddToggle("AutoPlace", { Text = "Auto Place Brainrots", Default = false })
PlacementGroup:AddDropdown("PlacePriority", {
    Values = { "Highest Gold/s", "Highest Rarity" },
    Default = "Highest Gold/s",
    Multi = false,
    Text = "Placement Priority"
})
PlacementGroup:AddToggle("AutoPlaceReplace", { Text = "Replace Weaker Brainrots", Default = false })
task.spawn(function()
    while not lH.Unloaded do
        local nH = 0.3
        if Toggles.AutoSnipe and Toggles.AutoSnipe.Value and k_ then
            for i, v in ipairs(k7()) do
                local nQ = v
                pcall(function()
                    k_:FireServer(nQ)
                end)
            end
            if Toggles.SkipSniperAnimation and Toggles.SkipSniperAnimation.Value then
                nH = 0.05
            else
                nH = lV.SnipeDelay.Value
            end
        end
        task.wait(nH)
    end
end)
k3 = {}
task.spawn(function()
    while not lH.Unloaded do
        if Toggles.AutoDroneBest and Toggles.AutoDroneBest.Value and lJ and lk and k2 and kT then
            local of_3 = pcall(function()
                local Value
                local nS = lm and lm.IsBagFull(1)
                if nS then
                    return
                end
                local Character = LocalPlayer.Character
                local nT = Character and Character:FindFirstChild("HumanoidRootPart")
                if not nT then
                    return
                end
                local nT_1 = lk.GetDroneNum() or 0
                local nT_2 = k2.GetOwnerDroneNum() or 0
                local nT_3 = tick()
                for k, v in pairs(k3) do
                    if nT_3 - v > 6 then
                        k3[k] = nil
                    end
                end
                local nW = 0
                for k in pairs(k3) do
                    nW = nW + 1
                end
                local nT_4 = nT_1 - nT_2 - nW
                if nT_4 <= 0 then
                    return
                end
                Value = lV.PlacePriority.Value
                local nU_1 = {}
                for i, v in ipairs(lG()) do
                    local nV_1 = v.uid and not k2.GetDroneHasBrainrotUid(v.uid) and not k3[v.uid]
                    if nV_1 then
                        nU_1[#nU_1 + 1] = v
                    end
                end
                table.sort(nU_1, function(c2, c3)
                    return k5(c2, Value) > k5(c3, Value)
                end)
                for i, v in ipairs(nU_1) do
                    if nT_4 <= 0 then
                        break
                    end
                    k3[v.uid] = tick()
                    local result = lJ.DroneRequest:InvokeServer({ brainrotUid = v.uid, startPos = nT.CFrame, endPos = v.pos, startTick = kT:GetTime() })
                    if not (result and result.success) then
                        k3[v.uid] = nil
                    end
                    nT_4 = nT_4 - 1
                end
            end)
            if not of_3 then
                task.wait(0.5)
            end
        end
        task.wait(0.4)
    end
end)
task.spawn(autoDroneShieldLoop)
task.spawn(autoCollectLoop)
task.spawn(autoSniperUpgradeLoop)
task.spawn(autoDroneUpgradeLoop)
task.spawn(autoRebirthLoop)
task.spawn(function()
    while not lH.Unloaded do
        if Toggles.AutoPlace and Toggles.AutoPlace.Value and lU and lm and lB and la then
            pcall(function()
                local Value
                local o8_1
                local o7_1
                Value = lV.PlacePriority.Value
                local o2 = lB:GetUnlockSlot()
                local o3 = la.GetMaxUnlockedSlot(o2) or 0
                if o3 <= 0 then
                    return
                end
                local o3_1 = lm.GetEquipList()
                local o4 = {}
                local o5 = {}
                for i, v in ipairs(o3_1) do
                    o5[v.slot] = v.uid
                    o4[v.uid] = true
                end
                local o3_2 = {}
                for i, v in ipairs(lm.GetBrainrotList()) do
                    if not o4[v.uid] then
                        o3_2[#o3_2 + 1] = v
                    end
                end
                if #o3_2 == 0 then
                    return
                end
                table.sort(o3_2, function(et, eu)
                    return k5(et, Value) > k5(eu, Value)
                end)
                local o4_1 = 1
                local pq = 1
                while pq <= o3 do
                    local pr = pq
                    local o6_1 = not o5[pr]
                    if o6_1 ~= false then
                        o6_1 = lm.IsSlotUnlocked(pr)
                    end
                    if o6_1 then
                        local o6_2 = o3_2[o4_1]
                        if not o6_2 then
                            break
                        end
                        lU.PlaceBrainrot:FireServer(pr, o6_2.uid)
                        o5[pr] = o6_2.uid
                        o4_1 = o4_1 + 1
                        pq += 1
                        continue
                    end
                    pq += 1
                end
                if Toggles.AutoPlaceReplace and Toggles.AutoPlaceReplace.Value then
                    local o6_4 = #o3_2
                    local pv = o4_1
                    while pv <= o6_4 do
                        local o4_2 = o3_2[pv]
                        local o6_5 = k5(o4_2, Value)
                        o8_1, o7_1 = nil, nil
                        local pA = 1
                        while pA <= o3 do
                            local pB = pA
                            local o9_1 = o5[pB]
                            if o9_1 then
                                local pa = lm.GetBrainrotByUid(o9_1)
                                if pa then
                                    local o9_2 = k5(pa, Value)
                                    if not o7_1 or o9_2 < o7_1 then
                                        o7_1 = o9_2
                                        o8_1 = pB
                                    end
                                end
                            end
                            pA += 1
                        end
                        if o8_1 and o7_1 and o6_5 > o7_1 then
                            lU.ReplaceBrainrot:FireServer(o8_1, o4_2.uid)
                            o5[o8_1] = o4_2.uid
                        end
                        pv += 1
                    end
                end
            end)
        end
        task.wait(1)
    end
end)
lu = 0
task.spawn(autoUpgradeBaseLoop)
task.spawn(autoUpgradeBrainrotsLoop)
local MovementGroup = lZ.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = lZ.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
lA = fn329
lo = fn257
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn505)
Toggles.WalkSpeedEnabled:OnChanged(fn938)
kW = function(ga)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not ga)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not ga
        end
    end)
    if not ga then
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
Toggles.AntiGameplayPause:OnChanged(fn499)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = lZ.Settings:AddLeftGroupbox("Menu", "menu")
if (lC or not l__2 or not FlyGroup and l__2) and (PlacementGroup and FlyGroup or not lC and not PlacementGroup) or not ((lC or not l__2 or not FlyGroup and l__2) and (PlacementGroup and FlyGroup or not lC and not PlacementGroup)) then
    lZ.Settings:AddLeftGroupbox("Menu Keybind"):AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    lH.ToggleKeybind = lV.MenuKeybind
    ll = tick()
    lj = tick()
else
    lj.Settings:AddLeftGroupbox("Menu Keybind"):AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", Text = "Menu keybind", NoUI = true })
    lZ.ToggleKeybind = ll.MenuKeybind
    lH = tick()
    lV = tick()
end
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qK = v
        pcall(function()
            qK:Disable()
        end)
    end
end)
k9 = fn108
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
lH:OnUnload(fn216)
ThemeManager:SetLibrary(lH)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(lZ.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(lH)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BrainrotSniper")
local l__3 = SaveManager:BuildConfigSection(lZ.Settings)
k4 = fn705
lP = fn522
lC = fn311
k0 = function(hh)
    local ru
    ru = nil
    local rv = type(hh) ~= "table" or type(hh.idx) ~= "string" or type(hh.type) ~= "string" or SaveManager.Ignore[hh.idx]
    if rv then
        return false
    end
    ru = k4(hh.type, hh.idx)
    if not ru then
        return false
    end
    local rv_1 = pcall(function()
        if hh.type == "Input" then
            if type(hh.text) ~= "string" then
                return
            end
            ru:SetValue(hh.text)
        elseif hh.type == "ColorPicker" then
            ru:SetValueRGB(Color3.fromHex(hh.value), hh.transparency)
        elseif hh.type == "KeyPicker" then
            ru:SetValue({ hh.key, hh.mode, hh.modifiers })
            if hh.mode == "Toggle" and hh.toggled ~= nil then
                ru.Toggled = hh.toggled
                ru:Update()
            end
        else
            ru:SetValue(hh.value)
        end
    end)
    return rv_1
end
if ((not k9 or lj or lj and not k4) and (not lj and not k4 and (lj and k4)) or (k9 and ScriptsGroup and (not k4 and k9) or not lo and not ScriptsGroup and (k9 and not k9))) and (((not lo or lo) and (k9 and not lo) or (not lo and not lj or (not k4 or not lo))) and (not k4 and lj or (not ScriptsGroup or ScriptsGroup) or (ScriptsGroup or lj or (lo or not k4)))) and not (((not k9 or lj or lj and not k4) and (not lj and not k4 and (lj and k4)) or (k9 and ScriptsGroup and (not k4 and k9) or not lo and not ScriptsGroup and (k9 and not k9))) and (((not lo or lo) and (k9 and not lo) or (not lo and not lj or (not k4 or not lo))) and (not k4 and lj or (not ScriptsGroup or ScriptsGroup) or (ScriptsGroup or lj or (lo or not k4))))) then
    l4:AddDivider()
    l4:AddInput("SaveManager_ImportSource", { AllowEmpty = true, Text = "Paste exported config here", Finished = true })
    l4:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    l4:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    lH:LoadAutoloadConfig()
    l__3:Notify("Ouroboros Hub loaded for " .. SaveManager)
else
    l__3:AddDivider()
    l__3:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    l__3:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    l__3:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    SaveManager:LoadAutoloadConfig()
    lH:Notify("Ouroboros Hub loaded for " .. l4)
end
