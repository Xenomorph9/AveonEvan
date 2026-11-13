local iy
local ic
local iX
local iE
local i2
local iK
local h5
local Rebirth
local CombatConfig
local ib
local iW
local ij
local i1
local Swords
local iP
local iw
local ia
local iV
local Label
local ii
local i0
local iI
local connection
local i6
local CurrentCamera2
local iv
local h9
local Upgrades
local Options
local Net
local iH
local Toggles
local connection2
local iN
local iu
local h8
local iT
local iA
local ig
local iZ
local HttpService
local im
local i4
local VirtualUser
local it
local h7
local SetNotifySide
local Workspace
local ie
local iY
local iF
local il
local i3
local iL
local is
local h6
local UserInputService
local function onStepped()
    if ib.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = it.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local mm_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if mm_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn49(F, G)
    ib.NotifySide = G
    pcall(SetNotifySide, F, G)
end
local function fn51(ff, fg)
    local na_1 = (ff == "Toggle" and Toggles or Options)[fg]
    local m9_2 = type(na_1) == "table" and na_1.Type == ff
    local m9_3 = m9_2 and na_1
    local ni = if m9_3 then 1 else 0
    local ng = 3657 * ni + 3830 * (1 - ni)
    local nh = 2790 * ni + 2874 * (1 - ni)
    if not ((ng * 1379 + nh * 112 + ng * nh) % 16777213 == 15558513) then
        m9_3 = nil
    end
    return m9_3
end
local function fn57()
    local kQ = {}
    for i, v in ipairs(iL()) do
        local attr = v:GetAttribute("SwordId")
        if type(attr) == "string" then
            local kS = kQ[attr]
            if not kS then
                kS = {}
                kQ[attr] = kS
            end
            kS[#kS + 1] = v
        end
    end
    return kQ
end
local function onRscripts()
    ic(h8, "Copied Rscripts profile to clipboard")
end
local function fn118(bN)
    local k6_1
    local k5_1
    local k4_1
    k6_1, k5_1, k4_1 = nil, nil, nil
    for k, v in pairs(bN) do
        local k7 = #v >= 2 and iv(k)
        if k7 then
            local k7_1 = Swords.Get(k)
            local k7_2 = k7_1 and k7_1.Tier or 0
            local k8_1 = not k4_1
            if not k8_1 then
                k8_1 = k7_2 < k4_1
            end
            if k8_1 then
                k6_1, k5_1, k4_1 = v[1], v[2], k7_2
            end
        end
    end
    return k6_1, k5_1
end
local function fn120()
    if not Toggles.WalkSpeedEnabled.Value then
        local mk = ii()
        if mk then
            mk.WalkSpeed = 16
        end
    end
end
local function fn137(af)
    local jO = Toggles[af]
    return jO ~= nil and jO.Value == true
end
local function fn155()
    local nq = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local nr = type(v) == "table" and type(v.Type) == "string" and not iW.Ignore[k]
            if nr then
                local nr_1 = iZ(k, v)
                if nr_1 then
                    nq[#nq + 1] = nr_1
                end
            end
        end
    end
    table.sort(nq, function(fA, fB)
        if fA.type ~= fB.type then
            return fA.type < fB.type
        end
        return fA.idx < fB.idx
    end)
    return { objects = nq }
end
local function fn156()
    i1(Toggles.AntiGameplayPause.Value)
end
local function fn181()
    ib.ScreenGui.Parent = it:WaitForChild("PlayerGui")
end
local function onInputChanged(dJ)
    local UserInputType = dJ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        im = tick()
    end
end
local function fn219(cI)
    if not cI then
        return
    end
    local GetReach = CombatConfig.GetReach
    local lM = it:GetAttribute("AttackRange") or 1
    local lN = GetReach(lM)
    local pivot = cI:GetPivot()
    iN(pivot * CFrame.new(0, 3, math.max(2, lN * 0.35)))
end
local function fn221(cR)
    local DiscordGroup = cR:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = i0 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = i0 })
end
local function onCopyJoinScript_JobID()
    local c7 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, iw)
    ic(c7, "Copied join script to clipboard")
end
local function fn243(aD)
    local j3 = Upgrades.Get(aD)
    if not j3 then
        return 1
    elseif j3.MaxFromSwords then
        return #Swords.Order
    else
        return j3.MaxLevel or 1
    end
end
local function antiAfkLoop()
    while not ib.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local m1 = tick() - im
            local m2 = tick() - ie
            if m1 >= 300 and m2 >= 60 then
                pcall(iX)
            else
                if m1 < 300 and m2 >= 300 then
                    pcall(iX)
                end
            end
        end
    end
end
local function onInputBegan()
    im = tick()
end
local function fn318()
    local ky = if iy() then 1 else 0
    if ky == 1 then
        pcall(function()
            Net.DoRebirth.send()
        end)
    end
end
local function worker()
    local lY_1
    while true do
        task.wait(1)
        if ib.Unloaded then
            break
        end
        local lX = math.floor(os.clock() - h5)
        if lX < 60 then
            lY_1 = lX .. "s"
        elseif lX < 3600 then
            lY_1 = string.format("%dm %ds", lX // 60, lX % 60)
        else
            lY_1 = string.format("%dh %dm", lX // 3600, lX % 3600 // 60)
        end
        Label:SetText(is("Session time", lY_1, iY))
    end
end
local function fn337()
    ic(ia, "Copied Discord invite to clipboard")
end
local function fn345()
    local kq = it:GetAttribute("RebirthLevel") or 0
    if Rebirth.MAX_LEVEL <= kq then
        return false
    end
    local kq_1 = it:GetAttribute("MaxTierReached") or 1
    local kq_2 = Rebirth.GateTier(kq + 1)
    local kr_1 = type(kq_2) == "number" and kq_2 <= kq_1
    return kr_1
end
local function onHeartbeat()
    if ib.Unloaded then
        return
    end
    local mQ = if not iP("AntiKnockback") then 1 else 0
    if mQ == 1 then
        return
    end
    local mJ = i6()
    local mK = ii()
    if not mJ then
        return
    end
    if mK and mK.PlatformStand and not (Toggles.Fly and Toggles.Fly.Value) then
        mK.PlatformStand = false
    end
    local AssemblyLinearVelocity = mJ.AssemblyLinearVelocity
    local mL_1 = Vector3.new(AssemblyLinearVelocity.X, 0, AssemblyLinearVelocity.Z)
    if mL_1.Magnitude > 45 then
        mJ.AssemblyLinearVelocity = Vector3.new(0, AssemblyLinearVelocity.Y, 0)
    end
    mJ.AssemblyAngularVelocity = Vector3.zero
end
local function worker3()
    while not ib.Unloaded do
        local mV = iP("AutoFarmZombies") and not iP("AutoMerge")
        if mV then
            local mV_1 = iF()
            if mV_1 then
                ij(mV_1)
                task.wait(0.2)
            else
                task.wait(0.4)
            end
        else
            task.wait(0.35)
        end
    end
end
local function fn392(fn, fo)
    local Type = fo.Type
    if Type == "Toggle" then
        return { idx = fn, type = "Toggle", value = fo.Value == true }
    elseif Type == "Slider" then
        return { idx = fn, type = "Slider", value = tostring(fo.Value) }
    elseif Type == "Dropdown" then
        return { idx = fn, type = "Dropdown", multi = fo.Multi == true, value = fo.Value }
    elseif Type == "Input" then
        local nk = fo.Value or ""
        return { idx = fn, type = "Input", text = tostring(nk) }
    elseif Type == "ColorPicker" then
        return { idx = fn, type = "ColorPicker", value = fo.Value:ToHex(), transparency = fo.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = fn,
            type = "KeyPicker",
            mode = fo.Mode,
            key = fo.Value,
            modifiers = fo.Modifiers,
            toggled = fo.Toggled
        }
    else
        return nil
    end
end
local function onRenderStepped(eh)
    if ib.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local mC_1 = ii()
        if mC_1 then
            mC_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local mC_3 = i6()
        local mD = ii()
        if mC_3 and mD then
            mD.PlatformStand = true
            local mD_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                mD_1 = mD_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                mD_1 = mD_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                mD_1 = mD_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                mD_1 = mD_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                mD_1 = mD_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                mD_1 = mD_1 - Vector3.new(0, 1, 0)
            end
            mC_3.AssemblyLinearVelocity = Vector3.zero
            if mD_1.Magnitude > 0 then
                mC_3.CFrame = mC_3.CFrame + mD_1.Unit * Options.FlySpeed.Value * eh
            end
        end
    end
    local mC_4 = iP("KillAura") and not iP("AutoMerge") and os.clock() - iH >= 0.12
    if mC_4 then
        iH = os.clock()
        local mC_5 = iF(Options.KillAuraRange.Value)
        if mC_5 then
            ij(mC_5)
        end
    end
end
local function worker5()
    while not ib.Unloaded do
        task.wait(30)
        if iP("AutoClaimDaily") then
            h7()
        end
    end
end
local function fn414()
    local kH = {}
    local SwordsRuntime = Workspace:FindFirstChild("SwordsRuntime")
    if not SwordsRuntime then
        return kH
    end
    for i, child in ipairs(SwordsRuntime:GetChildren()) do
        local kI_1 = child.Name == "SwordPickup" and child:GetAttribute("OwnerUserId") == it.UserId and child:GetAttribute("FieldDeployed") ~= true
        if kI_1 then
            kH[#kH + 1] = child
        end
    end
    return kH
end
local function fn432()
    local Character = it.Character
    local jV = Character and Character:FindFirstChild("HumanoidRootPart")
    return jV
end
local function fn433(W, X, Y)
    return string.format("<b>%s</b> %s %s", W, iK("-", "#5a6070"), iK(X, Y))
end
local function antiGameplayPauseLoop()
    while not ib.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            i1(true)
        end
    end
end
local function fn448()
    local lm = if it:GetAttribute("HeldSwordId") == nil then 1 else 0
    if lm == 1 then
        return false
    end
    pcall(function()
        Net.DropSword.send()
    end)
    local lh = os.clock() + 1
    while true do
        local li = it:GetAttribute("HeldSwordId") ~= nil and os.clock() < lh
        if li then
            task.wait(0.05)
            continue
        end
        break
    end
    return it:GetAttribute("HeldSwordId") == nil
end
local function fn463(ax)
    if type(ax) == "table" then
        ig = ax
    end
end
local function fn467()
    i1(false)
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    print("Unloaded!")
end
local function onExportConfigToClipboard()
    local nO_1
    local nN_1
    nN_1, nO_1 = pcall(HttpService.JSONEncode, HttpService, iE())
    if not nN_1 then
        ib:Notify("Failed to encode the config")
        return
    end
    local nN_2 = setclipboard or toclipboard
    local nN_3 = type(nN_2) ~= "function" or not pcall(nN_2, nO_1)
    if nN_3 then
        ib:Notify("Your executor does not support copying to the clipboard")
        return
    end
    ib:Notify("Config copied to clipboard", 6)
end
local function fn494(aI)
    local j9 = Upgrades.Get(aI)
    if not j9 then
        return false
    end
    local j9_1 = it:GetAttribute(aI) or 1
    local j9_2 = iT(aI)
    if j9_1 >= j9_2 then
        return false
    elseif aI == "SpawnType" then
        local Cap = Rebirth.Cap
        local kb = it:GetAttribute("RebirthLevel") or 0
        local kc = Cap(kb)
        if j9_1 >= kc then
            return false
        end
        local kg_1 = if it:GetAttribute("FreeUpgradeUsed") == true then 1 else 0
        if kg_1 == 1 then
            local j9_4 = Upgrades.Cost(aI, j9_1)
            local ka_1 = it:GetAttribute("Cash") or 0
            return ka_1 >= j9_4
        end
        return true
    else
        local kg_2 = if it:GetAttribute("FreeUpgradeUsed") == true then 1 else 0
        if kg_2 == 1 then
            local j9_5 = Upgrades.Cost(aI, j9_1)
            local ka_2 = it:GetAttribute("Cash") or 0
            return ka_2 >= j9_5
        end
        return true
    end
end
local function onJumpRequest()
    if ib.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local mx_1 = ii()
        if mx_1 then
            mx_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn533(cn)
    local lv = cn and cn:IsA("Model") and cn:GetAttribute("ZombieId") ~= nil
    if not lv then
        return false
    end
    local Humanoid = cn:FindFirstChildOfClass("Humanoid")
    if Humanoid and Humanoid.Health <= 0 then
        return false
    end
    return true
end
local function onImportConfigFromClipboardTex()
    local nT_1
    local nR = Options.SaveManager_ImportSource.Value or ""
    local nR_1
    local nS = tostring(nR):match("^%s*(.-)%s*$")
    if nS == "" then
        ib:Notify("Paste an exported config into the box first")
        return
    end
    nR_1, nT_1 = pcall(HttpService.JSONDecode, HttpService, nS)
    local nS_1 = not nR_1
    local nX = if nS_1 then 1 else 0
    local nV = 3037 * nX + 3840 * (1 - nX)
    local nW = 3567 * nX + 296 * (1 - nX)
    if not ((nV * 2227 + nW * 3780 + nV * nW) % 16777213 == 14302425) then
        nS_1 = type(nT_1) ~= "table"
    end
    if not nS_1 then
        nS_1 = type(nT_1.objects) ~= "table"
    end
    if nS_1 then
        ib:Notify("That is not a valid exported config")
        return
    end
    local nR_2 = 0
    for i, v in ipairs(nT_1.objects) do
        if iu(v) then
            nR_2 += 1
        end
    end
    if nR_2 == 0 then
        ib:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local nT_2 = nR_2 == 1 and "" or "s"
    ib:Notify(("Imported %d setting%s"):format(nR_2, nT_2), 6)
end
local function fn586(as)
    local Character = it.Character
    if not Character then
        return
    end
    if Character.PrimaryPart then
        Character:PivotTo(as)
    else
        local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
        if HumanoidRootPart then
            HumanoidRootPart.CFrame = as
        end
    end
end
local function fn596(cs)
    local lA_1
    local lz_1
    local ly = i6()
    if not ly then
        return nil
    end
    lA_1, lz_1 = nil, nil
    for i, child in ipairs(Workspace:GetChildren()) do
        if i4(child) then
            local Position = child:GetPivot().Position
            local Magnitude = (Position - ly.Position).Magnitude
            local lD = not cs or Magnitude <= cs
            if lD then
                lD = not lz_1 or Magnitude < lz_1
            end
            if lD then
                lA_1, lz_1 = child, Magnitude
            end
        end
    end
    return lA_1, lz_1
end
local function fn610()
    return it:WaitForChild("PlayerGui")
end
local function fn620()
    local lQ_1
    local lP_1
    if identifyexecutor then
        lQ_1, lP_1 = identifyexecutor()
        local lR = lQ_1 ~= ""
        local lS = type(lQ_1) == "string" and lR
        if lS then
            local lR_1 = type(lP_1) == "string" and lP_1 ~= "" and lQ_1 .. " " .. lP_1
            h9 = lR_1 or lQ_1
        end
    end
end
local function fn628()
    if not Toggles.Fly.Value then
        local mi = ii()
        if mi then
            mi.PlatformStand = false
        end
    end
end
local function fn637(bG)
    local k_ = Swords.Next(bG)
    if not k_ then
        return false
    end
    local Cap = Rebirth.Cap
    local k1 = it:GetAttribute("RebirthLevel") or 0
    local k2 = Cap(k1)
    return k_.Tier <= k2
end
local function fn646(M, N)
    if setclipboard then
        setclipboard(M)
    elseif toclipboard then
        toclipboard(M)
    end
    ib:Notify(N)
end
local function worker2()
    while not ib.Unloaded do
        if iP("AutoMerge") then
            local mR = il()
            local mR_1 = mR and 0.2 or 0.45
            task.wait(mR_1)
        else
            task.wait(0.35)
        end
    end
end
local function fn663()
    pcall(function()
        Net.DailyRewardSync.send()
    end)
end
local function fn685(T, U)
    return string.format('<font color="%s">%s</font>', U, T)
end
local function fn699()
    local lp_2, lp_3, lp_4
    local ln = h6()
    local attr = it:GetAttribute("HeldSwordId")
    local lo_1, lo_2, lo_4
    if type(attr) == "string" then
        local lp_1 = ln[attr]
        local lq = lp_1 and #lp_1 >= 1 and iv(attr)
        if lq then
            iN(lp_1[1]:GetPivot() * CFrame.new(0, 3, 0))
            task.wait(0.35)
            return true
        end
        lo_1, lp_2 = i2(ln)
        if not lo_1 then
            return false
        elseif not iV() then
            return false
        else
            task.wait(0.15)
            local ln_1 = h6()
            lo_2, lp_3 = i2(ln_1)
            if not lo_2 then
                return false
            end
            iN(lo_2:GetPivot() * CFrame.new(0, 3, 0))
            task.wait(0.35)
            if lp_3 and lp_3.Parent then
                iN(lp_3:GetPivot() * CFrame.new(0, 3, 0))
                task.wait(0.4)
            end
            return true
        end
    else
        lo_4, lp_4 = i2(ln)
        if not lo_4 then
            return false
        end
        iN(lo_4:GetPivot() * CFrame.new(0, 3, 0))
        task.wait(0.35)
        if lp_4 and lp_4.Parent then
            iN(lp_4:GetPivot() * CFrame.new(0, 3, 0))
            task.wait(0.4)
        end
        return true
    end
end
local function onUnload()
    ib:Unload()
end
local function worker4()
    while not ib.Unloaded do
        local m_ = if iP("AutoBuyUpgrades") then 1 else 0
        if m_ == 1 then
            iA()
        end
        if iP("AutoRebirth") then
            i3()
        end
        if iP("AutoClaimDaily") then
            iI()
        end
        task.wait(1)
    end
end
local function fn778()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    ie = tick()
end
local function fn804()
    local Character = it.Character
    local jS = Character and Character:FindFirstChildOfClass("Humanoid")
    return jS
end
h5 = nil
h6 = nil
h7 = nil
h8 = nil
h9 = nil
ia = nil
ib = nil
ic = nil
ie = nil
ig = nil
Options = nil
ii = nil
ij = nil
il = nil
im = nil
Toggles = nil
connection = nil
is = nil
it = nil
iu = nil
iv = nil
iw = nil
CombatConfig = nil
iy = nil
Workspace = nil
iA = nil
Label = nil
iE = nil
iF = nil
HttpService = nil
iH = nil
iI = nil
Swords = nil
iK = nil
iL = nil
VirtualUser = nil
iN = nil
CurrentCamera2 = nil
iP = nil
Rebirth = nil
UserInputService = nil
SetNotifySide = nil
iT = nil
Upgrades = nil
iV = nil
local ik, iq, ir, iB, DailyRewardsConfig
iW = nil
iX = nil
iY = nil
iZ = nil
Net = nil
i0 = nil
i1 = nil
i2 = nil
i3 = nil
i4 = nil
connection2 = nil
i6 = nil
local ji_1
local jh_1
local jd_1
local jq_1
local je_1
local AccountGroup
local jj_3
UserInputService, VirtualUser, HttpService, Workspace, it = nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local i7_1
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local FeaturesGroup
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
it = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return it:WaitForChild("PlayerGui")
    end
end
ia, h8, Net, Upgrades, Rebirth, Swords, DailyRewardsConfig, CombatConfig, ir, ik, ib, iW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
gethui = fn610
local jc = "Merge Swords And Kill Zombies!"
ia = "https://discord.gg/ehKVq7pf7v"
h8 = "https://rscripts.net/@Ouroboros"
local Shared = ReplicatedStorage:WaitForChild("Shared")
local jb_1
Net = require(Shared:WaitForChild("Net"))
Upgrades = require(Shared.Config.Upgrades)
Rebirth = require(Shared.Config.Rebirth)
Swords = require(Shared.Config.Swords)
DailyRewardsConfig = require(Shared.Config.DailyRewardsConfig)
CombatConfig = require(Shared:WaitForChild("CombatConfig"))
ir = { "SpawnType", "CashMultiplier", "AttackRange" }
if ir and DailyRewardsConfig or h8 and not CombatConfig or 23 or ((not DailyRewardsConfig or h8) and (h8 and not ir) or h8 and ir and (not ir and not CombatConfig)) or not (ir and DailyRewardsConfig or h8 and not CombatConfig or 23 or ((not DailyRewardsConfig or h8) and (h8 and not ir) or h8 and ir and (not ir and not CombatConfig))) then
    ik = { SpawnType = "Spawn Type", CashMultiplier = "Cash Multiplier", AttackRange = "Sword Range" }
    ib = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    pcall(fn181)
    jd_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    iW = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
else
    iW = { AttackRange = "Sword Range", CashMultiplier = "Cash Multiplier", SpawnType = "Spawn Type" }
    jd_1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
    loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    pcall(fn181)
    ik = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    ib = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
SetNotifySide = nil
if (SetNotifySide or (SetNotifySide or 10)) and false and ((SetNotifySide or not SetNotifySide) and 10 or (not SetNotifySide and SetNotifySide or false)) or ((SetNotifySide or SetNotifySide) and false or (not SetNotifySide and SetNotifySide)) or not ((SetNotifySide or (SetNotifySide or 10)) and false and ((SetNotifySide or not SetNotifySide) and 10 or (not SetNotifySide and SetNotifySide or false)) or ((SetNotifySide or SetNotifySide) and false or (not SetNotifySide and SetNotifySide))) then
    SetNotifySide = ib.SetNotifySide
else
    ib = SetNotifySide.SetNotifySide
end
ib.SetNotifySide = fn49
Toggles, Options, iY, ig, i7_1, ic, i0, iK, is, iP, ii, i6, iN, h7, iT, iq, iA, iy, i3, iI, iL, h6, iv, i2, iV, il, i4, iF, ij = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = ib.Toggles
Options = ib.Options
ic = fn646
i0 = fn337
iK = fn685
is = fn433
if ((i7_1 and iy or (not iy or i7_1) or (not iy or not is) and (not iy and i7_1)) and ((not iy or not is or i6 and is) and (i7_1 and not iy and (not i6 or not i7_1))) or (is or iy or (i6 or not i7_1) or not i7_1 and i7_1 and (not is and iy)) and ((not i6 and not i6 or iy and i6) and (i6 or not i7_1 or i7_1 and i7_1))) and not ((i7_1 and iy or (not iy or i7_1) or (not iy or not is) and (not iy and i7_1)) and ((not iy or not is or i6 and is) and (i7_1 and not iy and (not i6 or not i7_1))) or (is or iy or (i6 or not i7_1) or not i7_1 and i7_1 and (not is and iy)) and ((not i6 and not i6 or iy and i6) and (i6 or not i7_1 or i7_1 and i7_1))) then
    jh_1 = "#7fd47f"
    iY = "#6ec1ff"
    jb_1 = "#e8a34d"
else
    jb_1 = "#7fd47f"
    jh_1 = "#6ec1ff"
    iY = "#e8a34d"
end
local jg = "#8b93a3"
iP = fn137
ii = fn804
i6 = fn432
iN = fn586
ig = nil
Net.DailyRewardState.listen(fn463)
h7 = fn663
h7()
iT = fn243
iq = fn494
iA = function()
    local kh = Options.AutoBuyUpgradesList and Options.AutoBuyUpgradesList.Value
    if type(kh) ~= "table" then
        return
    end
    for i, v in ipairs(ir) do
        local kp = v
        local kh_1 = kh[ik[kp]] == true and iq(kp)
        if kh_1 then
            pcall(function()
                Net.BuyUpgrade.send(kp)
            end)
            task.wait(0.15)
        end
    end
end
iy = fn345
i3 = fn318
iI = function()
    if not ig then
        h7()
        return
    end
    local kA = tonumber(ig.nextIn) or -1
    local kA_1 = tonumber(ig.claimedCount) or 0
    local kz = kA_1 + 1
    local kA_2 = kA == 0 and DailyRewardsConfig.isReal(kz)
    if kA_2 then
        pcall(function()
            Net.DailyRewardClaim.send({ tier = kz })
        end)
        task.wait(0.35)
        h7()
    end
end
iL = fn414
h6 = fn57
iv = fn637
i2 = fn118
iV = fn448
il = fn699
i4 = fn533
iF = fn596
ij = fn219
local Window = ib:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = ia, Copyable = true }, "|", jc },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local jf = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "swords"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in jf do
    fn221(v)
end
h9, AccountGroup, ji_1, Label, iw, je_1 = nil, nil, nil, nil, nil, nil
local i7_3 = 3
repeat
    local i9_2 = (i7_3 * 1 + 2) % 3 + 1
    if i9_2 <= 2 then
        if i9_2 <= 1 then
            local i9_3 = (vector.create((i7_3 * 7 + 3) % 11 + 1, (i7_3 * 1 + 5) % 13 + 1, (i7_3 * 1 + 3) % 17 + 1))
            local oW = vector.floor(i9_3) + vector.ceil(i9_3 * -1)
            if vector.dot(oW, oW) == 3 then
                ji_1 = tostring(game.JobId)
            else
                iw = tostring(game.JobId)
            end
            i7_3 = (i7_3 + 10) % 12
        else
            local i9_4 = (vector.create((i7_3 * 7 + 9) % 11 + 1, (i7_3 * 7 + 4) % 13 + 1, (i7_3 * 12 + 7) % 17 + 1))
            local jj_1 = (vector.create((i7_3 * 3 + 9) % 11 + 1, (i7_3 * 1 + 2) % 13 + 1, (i7_3 * 3 + 3) % 17 + 1))
            local oN = vector.cross(i9_4, jj_1)
            local oO = vector.dot(i9_4, jj_1)
            if vector.dot(oN, oN) + oO * oO == vector.dot(i9_4, i9_4) * vector.dot(jj_1, jj_1) then
                je_1 = #iw > 18
            else
                iw = #je_1 > 18
            end
            i7_3 = (i7_3 + 1) % 12
        end
    else
        local i9_5 = { "qbylmrxgak", "khfuku", "meajwum", "cyaiesuic", "mudseoha", "wzu", "qodxyhmj", "kmvq" }
        local o3 = i7_3
        local jj_2 = i9_5[o3 % 8 + 1]
        if jj_2:len() >= jj_2:gsub("(.)", "%1%1", o3 % 3 % 2 + 1):len() then
            is = "Unknown"
            pcall(fn620)
            jf = iY.Info:AddLeftGroupbox("Account", "circle-user")
            jf:AddLabel(ji_1("User", nil, iK), true)
            jf:AddLabel(ji_1("Status", "Keyless", iK), true)
            jf:AddLabel(ji_1("Executor", is, iK), true)
            jh_1 = iY.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            jh_1:AddLabel(Label(AccountGroup .. " [" .. tostring(game.PlaceId) .. "]", h9), true)
            jh_1:AddLabel(ji_1("Place ID", tostring(game.PlaceId), h9), true)
            it = jh_1:AddLabel(ji_1("Session time", "0s", jb_1), true)
        else
            h9 = "Unknown"
            pcall(fn620)
            AccountGroup = jf.Info:AddLeftGroupbox("Account", "circle-user")
            AccountGroup:AddLabel(is("User", it.Name, jb_1), true)
            AccountGroup:AddLabel(is("Status", "Keyless", jb_1), true)
            AccountGroup:AddLabel(is("Executor", h9, jb_1), true)
            ji_1 = jf.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            ji_1:AddLabel(iK(jc .. " [" .. tostring(game.PlaceId) .. "]", jh_1), true)
            ji_1:AddLabel(is("Place ID", tostring(game.PlaceId), jh_1), true)
            Label = ji_1:AddLabel(is("Session time", "0s", iY), true)
        end
        i7_3 = (i7_3 + 10) % 12
    end
until (i7_3 * 11 + 11) % 12 == 11
if je_1 then
    local i7_4 = 6
    repeat
        if not i7_4 or not i7_4 or not i7_4 and not i7_4 or (not i7_4 or not i7_4) and (i7_4 and i7_4) or not (not i7_4 or not i7_4 or not i7_4 and not i7_4 or (not i7_4 or not i7_4) and (i7_4 and i7_4)) then
            je_1 = string.sub(iw, 1, 18) .. "..."
        else
            iw = string.sub(je_1, 1, 18) .. "..."
        end
        i7_4 = (i7_4 + 5) % 8
    until (i7_4 * 7 + 1) % 8 == 6
end
local i7_5 = je_1 or iw
h5, FeaturesGroup, jq_1, jj_3, im, ie, connection, connection2, CurrentCamera2, iH, iX, i1, iB, iZ, iE, iu = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ji_1:AddLabel(is("Server", i7_5, jg), true)
ji_1:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
h5 = os.clock()
task.spawn(worker)
local ScriptsGroup = jf.Info:AddRightGroupbox("Scripts", "package")
if ((CurrentCamera2 or iH) and (not jj_3 or jq_1) or (not jq_1 and not CurrentCamera2 or (not jq_1 or CurrentCamera2))) and ((iH and iH or (jq_1 or not iH)) and (jq_1 or not CurrentCamera2 or (not iH or CurrentCamera2))) or CurrentCamera2 and jj_3 and (not jj_3 and jq_1) and ((not CurrentCamera2 or not CurrentCamera2) and (not iH and iH)) and ((not iH or not CurrentCamera2) and (not iH or not CurrentCamera2) or (jj_3 or iH) and (not iH or iH)) or not (((CurrentCamera2 or iH) and (not jj_3 or jq_1) or (not jq_1 and not CurrentCamera2 or (not jq_1 or CurrentCamera2))) and ((iH and iH or (jq_1 or not iH)) and (jq_1 or not CurrentCamera2 or (not iH or CurrentCamera2))) or CurrentCamera2 and jj_3 and (not jj_3 and jq_1) and ((not CurrentCamera2 or not CurrentCamera2) and (not iH and iH)) and ((not iH or not CurrentCamera2) and (not iH or not CurrentCamera2) or (jj_3 or iH) and (not iH or iH))) then
    ScriptsGroup:AddLabel(iK("Included in this hub", jg), true)
    ScriptsGroup:AddLabel(iK(jc, jh_1), true)
    FeaturesGroup = jf.Info:AddRightGroupbox("Features", "list")
else
    jh_1:AddLabel(FeaturesGroup("Included in this hub", jc), true)
    jh_1:AddLabel(FeaturesGroup(ScriptsGroup, jf), true)
    jg = iK.Info:AddRightGroupbox("Features", "list")
end
FeaturesGroup:AddLabel(iK("Auto Merge", jh_1), true)
FeaturesGroup:AddLabel(iK("Auto Buy Upgrades", jh_1), true)
FeaturesGroup:AddLabel(iK("Auto Rebirth", iY), true)
FeaturesGroup:AddLabel(iK("Auto Farm Zombies", iY), true)
FeaturesGroup:AddLabel(iK("Kill Aura", iY), true)
FeaturesGroup:AddLabel(iK("Anti-Knockback", jg), true)
FeaturesGroup:AddLabel(iK("Auto Claim Daily Rewards", jg), true)
FeaturesGroup:AddLabel(iK("Player Movement", jg), true)
local SocialsGroup = jf.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = i0 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = jf.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = i0 })
local FaqGroup = jf.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutomationGroup = jf.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoMerge", { Text = "Auto Merge", Default = false })
AutomationGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutomationGroup:AddDropdown("AutoBuyUpgradesList", {
    Text = "Upgrades",
    Values = { "Spawn Type", "Cash Multiplier", "Sword Range" },
    Default = { "Spawn Type", "Cash Multiplier", "Sword Range" },
    Multi = true,
    AllowNull = true
})
AutomationGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
AutomationGroup:AddToggle("AutoClaimDaily", { Text = "Auto Claim Daily Rewards", Default = false })
local CombatGroup = jf.Main:AddRightGroupbox("Combat", "skull")
CombatGroup:AddToggle("AutoFarmZombies", { Text = "Auto Farm Zombies", Default = false })
CombatGroup:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
CombatGroup:AddSlider("KillAuraRange", { Text = "Kill Aura Range", Default = 200, Min = 20, Max = 2000, Rounding = 0 })
CombatGroup:AddToggle("AntiKnockback", { Text = "Anti-Knockback", Default = true })
local MovementGroup = jf.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = jf.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
local MenuGroup = jf.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ib.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
im = tick()
ie = tick()
pcall(function()
    for i, v in ipairs(getconnections(it.Idled)) do
        local l5 = v
        pcall(function()
            l5:Disable()
        end)
    end
end)
iX = fn778
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
i1 = function(dP)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not dP)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not dP
        end
    end)
    if not dP then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(it, "GameplayPaused", false)
        else
            it.GameplayPaused = false
        end
    end)
end
Toggles.AntiGameplayPause:OnChanged(fn156)
Toggles.Fly:OnChanged(fn628)
Toggles.WalkSpeedEnabled:OnChanged(fn120)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
iH = 0
RunService.RenderStepped:Connect(onRenderStepped)
RunService.Heartbeat:Connect(onHeartbeat)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(antiAfkLoop)
task.spawn(antiGameplayPauseLoop)
jd_1:SetLibrary(ib)
jd_1:SetFolder("OuroborosHub")
jd_1:SaveDefault("Monochrome")
jd_1:ApplyToTab(jf.Settings)
jd_1:LoadDefault()
iW:SetLibrary(ib)
iW:IgnoreThemeSettings()
iW:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
iW:SetFolder("OuroborosHub/MergeSwordsAndKillZombies")
local jl = iW:BuildConfigSection(jf.Settings)
iB = fn51
iZ = fn392
iE = fn155
iu = function(fD)
    local nK
    nK = nil
    local nL = type(fD) ~= "table" or type(fD.idx) ~= "string" or type(fD.type) ~= "string" or iW.Ignore[fD.idx]
    if nL then
        return false
    end
    nK = iB(fD.type, fD.idx)
    if not nK then
        return false
    end
    local nL_1 = pcall(function()
        if fD.type == "Input" then
            if type(fD.text) ~= "string" then
                return
            end
            nK:SetValue(fD.text)
        elseif fD.type == "ColorPicker" then
            nK:SetValueRGB(Color3.fromHex(fD.value), fD.transparency)
        elseif fD.type == "KeyPicker" then
            nK:SetValue({ fD.key, fD.mode, fD.modifiers })
            if fD.mode == "Toggle" and fD.toggled ~= nil then
                nK.Toggled = fD.toggled
                nK:Update()
            end
        else
            nK:SetValue(fD.value)
        end
    end)
    return nL_1
end
if (not OuroborosHubGroup and not iX and (not h5 and false) or iX and not jl and (OuroborosHubGroup and OuroborosHubGroup)) and (i1 or i1 or (jl or i1) or (jl and not h5 or not iX and not OuroborosHubGroup)) and not ((not OuroborosHubGroup and not iX and (not h5 and false) or iX and not jl and (OuroborosHubGroup and OuroborosHubGroup)) and (i1 or i1 or (jl or i1) or (jl and not h5 or not iX and not OuroborosHubGroup))) then
    ib:AddDivider()
    ib:AddInput("SaveManager_ImportSource", { Finished = true, AllowEmpty = true, Text = "Paste exported config here" })
    ib:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    ib:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    jl:LoadAutoloadConfig()
    iW:OnUnload(fn467)
else
    jl:AddDivider()
    jl:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    jl:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    jl:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    iW:LoadAutoloadConfig()
    ib:OnUnload(fn467)
end
