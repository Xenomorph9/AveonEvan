local fns = {}
local vS_9, vS_24, vS_43
local SetAutoRollTarget
local nf
local nX
local mX
local nE
local connection
local Label
local n2
local RebirthRemote
local nK
local nr
local n8
local Toggles
local nQ
local mQ
local UserInputService
local ne
local mW
local nD
local ok
local nk
local ReplicaUtils
local m1
local nJ
local nq
local n7
local RepairSlot
local UpgradeData
local mP
local nw
local od
local nd
local nV
local mV
local nC
local ToggleTraitAutoRoll
local PurchaseDice
local m0
local nI
local EquipBest
local n6
local m6
local nO
local mO
local AutoRoll
local VirtualUser
local nc
local nU
local mU
local ModelData
local oi
local ni
local connection2
local m_
local nH
local no
local n5
local m5
local PlayerGui
local mN
local nu
local ob
local nb
local nT
local mT
local DailyRewardsData
local CurrentCamera
local nh
local nZ
local ClaimAllIndex
local nG
local oo
local nn
local n4
local m4
local nM
local mM
local nt
local oa
local BuyUpgrade
local nS
local ClaimDaily
local nz
local og
local PurchaseMaterial
local nY
local nF
local SetTraitFilter
local EquipDice
local n3
local Options
local nL
local SummonGacha
local ns
local HttpService
local m9
local LocalPlayer
local mR
local Requirements
function fns.fn17(bn)
    local p3 = bn and bn.leaderstats
    local p4 = p3
    if p3 then
        p3 = p4.Money
    end
    local p4_1 = (tonumber(p3))
    local p8 = if p4_1 then 1 else 0
    local p6 = 3821 * p8 + 747 * (1 - p8)
    local p7 = 523 * p8 + 3322 * (1 - p8)
    if not ((p6 * 1584 + p7 * 1309 + p6 * p7) % 16777213 == 8735454) then
        p4_1 = 0
    end
    return p4_1
end
function fns.fn22()
    connection:Disconnect()
    connection2:Disconnect()
    mW(false)
    pcall(nn, false)
    pcall(nD, false)
    print("Unloaded!")
end
function fns.fn30(aD, aE)
    if aD.tier ~= aE.tier then
        return aD.tier < aE.tier
    end
    return aD.name < aE.name
end
function fns.fn40()
    pcall(nD, Toggles.AutoTraitRoll.Value)
end
function fns.fn48(fy, fz, fA)
    return string.format("<b>%s</b> %s %s", fy, oi("-", "#5a6070"), oi(fz, fA))
end
function fns.fn55()
    local rv = nt()
    if not rv then
        return
    end
    local rw = nE(Options.AutoUpgradeTarget)
    local rx = {}
    local ry = rv.Upgrades
    local rD = if ry then 1 else 0
    local rB = 2338 * rD + 3983 * (1 - rD)
    local rC = 1884 * rD + 1759 * (1 - rD)
    if not ((rB * 230 + rC * 1624 + rB * rC) % 16777213 == 8002148) then
        ry = rx
    end
    local rx_1 = ry
    local ry_1 = mP(rv)
    for k, v in nK do
        local rv_1 = rw[v] and UpgradeData.IsUnlocked(v, rx_1)
        if rv_1 then
            local rv_2 = tonumber(rx_1[v]) or 0
            local rv_3 = UpgradeData.GetMaxTier(v)
            if rv_2 < rv_3 then
                local rv_4 = UpgradeData.GetCost(v, rv_2 + 1)
                if rv_4 and rv_4 <= ry_1 then
                    BuyUpgrade:FireServer(v)
                    ry_1 -= rv_4
                end
            end
        end
    end
end
function fns.fn60()
    local tI_1
    local tH_1
    if identifyexecutor then
        tI_1, tH_1 = identifyexecutor()
        local tJ = tI_1 ~= ""
        local tK = type(tI_1) == "string" and tJ
        if tK then
            local tJ_1 = type(tH_1) == "string" and tH_1 ~= "" and tI_1 .. " " .. tH_1
            nG = tJ_1 or tI_1
        end
    end
end
function fns.fn71(fv, fw)
    return string.format('<font color="%s">%s</font>', fw, fv)
end
function fns.fn82(dC)
    return dC and dC.PaidItems and dC.PaidItems.VIP and dC.PaidItems.VIP.Owned == true
end
function fns.fn89()
    local pQ = ReplicaUtils.GetReplica()
    local pQ_1 = pQ and pQ.Data
    local pV = if pQ_1 then 1 else 0
    local pT = 3217 * pV + 3024 * (1 - pV)
    local pU = 4030 * pV + 862 * (1 - pV)
    if not ((pT * 4025 + pU * 1793 + pT * pU) % 16777213 == 16361512) then
        pQ_1 = nil
    end
    return pQ_1
end
function fns.fn103()
    pcall(n5)
end
function fns.fn116(iD, iE)
    local uW_1 = (iD == "Toggle" and Toggles or Options)[iE]
    local uV_2 = type(uW_1) == "table" and uW_1.Type == iD
    local uV_3 = uV_2 and uW_1
    local u0 = if uV_3 then 1 else 0
    local uZ = 2178 * u0 + 3371 * (1 - u0)
    local u_ = 991 * u0 + 660 * (1 - u0)
    if not ((uZ * 707 + u_ * 2474 + uZ * u_) % 16777213 == 6149978) then
        uV_3 = nil
    end
    return uV_3
end
function fns.worker()
    local tP_1
    while true do
        task.wait(1)
        if nr.Unloaded then
            break
        end
        local tO = math.floor(os.clock() - mQ)
        if tO < 60 then
            tP_1 = tO .. "s"
        elseif tO < 3600 then
            tP_1 = string.format("%dm %ds", tO // 60, tO % 60)
        else
            tP_1 = string.format("%dh %dm", tO // 3600, tO % 3600 // 60)
        end
        Label:SetText(n8("Session time", tP_1, ns))
    end
end
function fns.onRscripts()
    m9(mU, "Copied Rscripts profile to clipboard")
end
function fns.fn203()
    local rK = nt()
    if not rK then
        return
    end
    local rL = nq(rK)
    if not rL then
        return
    end
    local rM = nI.GetPrice(rL)
    if not rM or rM <= 0 then
        return
    end
    if rM <= mP(rK) then
        RepairSlot:FireServer(rL)
    end
end
function fns.fn205(bC)
    local ql = bC and bC.leaderstats
    local qm = ql
    if ql then
        ql = qm.Slots
    end
    local qm_1 = tonumber(ql) or 2
    return qm_1
end
function fns.fn237(ee, ef, eg)
    local sB = ee.Name or "Unit"
    local Variant = ee.Variant
    local sC = Variant ~= ""
    local sD = type(Variant) == "string" and sC
    if sD and Variant ~= "None" and Variant ~= "Normal" then
        sB = Variant .. " " .. sB
    end
    if eg then
        sB = sB .. eg
    end
    if nd[sB] and nd[sB] ~= ef then
        sB = sB .. " " .. string.sub(ef, 1, 6)
    end
    return sB
end
function fns.fn240(aP, aQ)
    return aP.order < aQ.order
end
function fns.fn255()
    local rT = nt()
    if not rT then
        return
    end
    local rT_2 = rT.Meta and rT.Meta.ClaimedDailies or {}
    local rU_1 = DailyRewardsData.GetRewardCount()
    local rZ = 1
    while rZ <= rU_1 do
        local r_ = rZ
        if rT_2[tostring(r_)] == false then
            ClaimDaily:FireServer(r_)
            return
        end
        rZ += 1
    end
end
function fns.onRenderStepped(hs)
    if nr.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local um_1 = nY()
        if um_1 then
            um_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local um_3 = nF()
        local un = nY()
        if um_3 and un then
            un.PlatformStand = true
            local un_1 = Vector3.zero
            local us = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if us == 1 then
                un_1 = un_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                un_1 = un_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                un_1 = un_1 - CurrentCamera.CFrame.RightVector
            end
            local us_1 = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
            if us_1 == 1 then
                un_1 = un_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                un_1 = un_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                un_1 = un_1 - Vector3.new(0, 1, 0)
            end
            um_3.Velocity = Vector3.zero
            if un_1.Magnitude > 0 then
                um_3.CFrame = um_3.CFrame + un_1.Unit * Options.FlySpeed.Value * hs
            end
        end
    end
end
function fns.fn271(iL, iM)
    local Type = iM.Type
    if Type == "Toggle" then
        return { idx = iL, type = "Toggle", value = iM.Value == true }
    elseif Type == "Slider" then
        return { idx = iL, type = "Slider", value = tostring(iM.Value) }
    elseif Type == "Dropdown" then
        return { idx = iL, type = "Dropdown", multi = iM.Multi == true, value = iM.Value }
    elseif Type == "Input" then
        local u2 = iM.Value
        local u6 = if u2 then 1 else 0
        local u4 = 1759 * u6 + 354 * (1 - u6)
        local u5 = 2713 * u6 + 2012 * (1 - u6)
        if not ((u4 * 867 + u5 * 2589 + u4 * u5) % 16777213 == 13321177) then
            u2 = ""
        end
        return { idx = iL, type = "Input", text = tostring(u2) }
    elseif Type == "ColorPicker" then
        return { idx = iL, type = "ColorPicker", value = iM.Value:ToHex(), transparency = iM.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iL,
            type = "KeyPicker",
            mode = iM.Mode,
            key = iM.Value,
            modifiers = iM.Modifiers,
            toggled = iM.Toggled
        }
    else
        return nil
    end
end
function fns.worker4()
    while not nr.Unloaded do
        task.wait(0.5)
        if nZ("AutoBuyDice") then
            pcall(nQ)
        end
        if nZ("AutoBuyMaterials") then
            pcall(nT)
        end
        if nZ("AutoUpgrade") then
            pcall(n6)
        end
    end
end
function fns.worker3()
    while not nr.Unloaded do
        task.wait(1)
        if nZ("AutoBuyMachine") then
            pcall(mN)
        end
        if nZ("AutoRebirth") then
            pcall(nL)
        end
        if nZ("AutoClaimIndex") then
            pcall(m4)
        end
        if nZ("AutoClaimDaily") then
            pcall(mX)
        end
        if nZ("AutoGacha") then
            pcall(nH)
        end
    end
end
function fns.worker2()
    while not nr.Unloaded do
        task.wait(2)
        if Options.TraitTarget then
            local tZ_1 = n2()
            Options.TraitTarget:SetValues(tZ_1)
        end
        if nZ("AutoTraitRoll") then
            local tZ_2 = nz()
            if tZ_2 then
                pcall(SetAutoRollTarget.FireServer, SetAutoRollTarget, tZ_2, n7())
            end
        end
    end
end
function fns.fn302(ff)
    local tB = nt()
    if not tB then
        return
    end
    if ff then
        local tC_1 = nz()
        if tC_1 then
            SetAutoRollTarget:FireServer(tC_1, n7())
        end
    end
    if ff == (tB.TraitSetting and tB.TraitSetting.TraitAutoRoll == true) then
        return
    end
    ToggleTraitAutoRoll:FireServer()
end
function fns.onUnload()
    nr:Unload()
end
function fns.fn325()
    local u8 = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local u9 = type(v) == "table" and type(v.Type) == "string" and not nb.Ignore[k]
            if u9 then
                local u9_1 = n3(k, v)
                if u9_1 then
                    u8[#u8 + 1] = u9_1
                end
            end
        end
    end
    table.sort(u8, function(iY, iZ)
        if iY.type ~= iZ.type then
            return iY.type < iZ.type
        end
        return iY.idx < iZ.idx
    end)
    return { objects = u8 }
end
function fns.fn375()
    local rP = nt()
    if not rP then
        return
    end
    local rQ = rP.leaderstats and rP.leaderstats.Rebirths
    local rR = tonumber(rQ) or 0
    local rR_1 = Requirements.GetRequirements(rR + 1)
    local rQ_2 = rR_1 and tonumber(rR_1.Cost)
    local rR_2 = rQ_2
    if rQ_2 then
        rQ_2 = rR_2 <= ob(rP)
    end
    if rQ_2 then
        RebirthRemote:FireServer()
    end
end
function fns.fn396()
    local sJ = nt()
    local sK = { nc }
    nd = {}
    if not sJ then
        return sK
    end
    local PlacedCharacters = sJ.PlacedCharacters
    if type(PlacedCharacters) == "table" then
        local sM_1 = {}
        for k, v in PlacedCharacters do
            local sL_1 = #sM_1 + 1
            local sN = tonumber(v.Slot) or 0
            sM_1[sL_1] = { id = k, entry = v, slot = sN }
        end
        table.sort(sM_1, function(ev, ew)
            return ev.slot < ew.slot
        end)
        for k, v in sM_1 do
            local sL_2 = m_(v.entry, v.id, " [" .. tostring(v.slot) .. "]")
            nd[sL_2] = v.id
            sK[#sK + 1] = sL_2
        end
    end
    local Backpack = sJ.Backpack
    if type(Backpack) == "table" then
        local sJ_1 = {}
        for k, v in Backpack do
            local sL_4 = #sJ_1 + 1
            local sM_2 = v.Name or ""
            sJ_1[sL_4] = { id = k, entry = v, name = sM_2 }
        end
        table.sort(sJ_1, function(eF, eG)
            return eF.name < eG.name
        end)
        for k, v in sJ_1 do
            local sJ_2 = m_(v.entry, v.id)
            nd[sJ_2] = v.id
            sK[#sK + 1] = sJ_2
        end
    end
    return sK
end
function fns.onInputBegan()
    nu = tick()
end
function fns.fn451()
    local tb = nE(Options.TraitFilter)
    for k, v in nC do
        SetTraitFilter:FireServer({ v }, tb[v] == true)
    end
end
function fns.onExportConfigToClipboard()
    local vz_1
    local vy_1
    vy_1, vz_1 = pcall(HttpService.JSONEncode, HttpService, nJ())
    if not vy_1 then
        nr:Notify("Failed to encode the config")
        return
    end
    local vy_2 = setclipboard or toclipboard
    local vy_3 = type(vy_2) ~= "function"
    local vE = if vy_3 then 1 else 0
    local vC = 2351 * vE + 639 * (1 - vE)
    local vD = 3347 * vE + 3849 * (1 - vE)
    if not ((vC * 183 + vD * 3854 + vC * vD) % 16777213 == 4421155) then
        vy_3 = not pcall(vy_2, vz_1)
    end
    if vy_3 then
        nr:Notify("Your executor does not support copying to the clipboard")
        return
    end
    nr:Notify("Config copied to clipboard", 6)
end
function fns.antiGameplayPauseLoop()
    while not nr.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            mW(true)
        end
    end
end
function fns.fn465()
    pcall(nn, Toggles.AutoRoll.Value)
end
function fns.onCopySolanaAddress()
    m9(od, "Copied Solana address")
end
function fns.fn493()
    local rf = nt()
    if not rf then
        return
    end
    local rg = nE(Options.AutoBuyMaterialTarget)
    local rh = rf.GlobalMaterialShop and rf.GlobalMaterialShop.Stock
    if type(rh) ~= "table" then
        return
    end
    local rh_1 = mP(rf)
    for k, v in nU do
        if rg[v] then
            local rf_1 = nf(rh[v])
            local rj = nS.Items[v]
            local rk = rj and tonumber(rj.Cost)
            local rj_1 = rk or 0
            local rj_2 = rf_1 > 0
            if rj_2 then
                rj_2 = rj_1 <= 0 or rj_1 <= rh_1
            end
            if rj_2 then
                PurchaseMaterial:FireServer(v, 1)
                if rj_1 > 0 then
                    rh_1 -= rj_1
                end
            end
        end
    end
end
function fns.onCopyLitecoinAddress()
    m9(mM, "Copied Litecoin address")
end
function fns.onCopyBitcoinAddress()
    m9(oo, "Copied Bitcoin address")
end
function fns.fn526()
    local q1 = nt()
    if not q1 then
        return
    end
    local q2 = nE(Options.AutoBuyDiceTarget)
    local q3 = q1.GlobalShop and q1.GlobalShop.Stock
    if type(q3) ~= "table" then
        return
    end
    local q3_1 = mP(q1)
    for k, v in m1 do
        if q2[v] then
            local q1_1 = mV[v]
            local q5 = q1_1 and nX.GetDice(q1_1)
            local q5_1 = nf(q3[q1_1])
            local q7 = q5 and tonumber(q5.Cost)
            local q7_1 = q7 or 0
            if q5_1 > 0 and q7_1 > 0 and q7_1 <= q3_1 then
                PurchaseDice:FireServer(q1_1)
                q3_1 -= q7_1
            end
        end
    end
end
function fns.fn538()
    EquipBest:FireServer()
end
function fns.fn546(d8)
    local sv = nt()
    if not sv then
        return
    end
    if d8 then
        nO()
    end
    if sv.AutoRoll ~= d8 then
        AutoRoll:FireServer(d8)
    end
end
function fns.onJumpRequest()
    if nr.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local uh_1 = nY()
        if uh_1 then
            uh_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.onInputChanged(ig)
    local UserInputType = ig.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nu = tick()
    end
end
function fns.fn572()
    nr.ScreenGui.Parent = PlayerGui
end
function fns.fn581()
    if nZ("AutoTraitRoll") then
        local tR = nz()
        if tR then
            pcall(SetAutoRollTarget.FireServer, SetAutoRollTarget, tR, n7())
        end
    end
end
function fns.onCopyJoinScript_JobID()
    local tM = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ni)
    if setclipboard then
        setclipboard(tM)
    elseif toclipboard then
        toclipboard(tM)
    end
    nr:Notify("Copied join script to clipboard")
end
function fns.fn608()
    m9(m0, "Copied Discord invite to clipboard")
end
function fns.fn660()
    local Character = LocalPlayer.Character
    local t4 = Character and Character:FindFirstChild("HumanoidRootPart")
    return t4
end
local function fn667()
    local qv = ne()
    if not qv then
        return
    end
    local Button = qv:FindFirstChild("Button")
    local qx = Button and Button:FindFirstChild("Press")
    local qw_1 = qx
    if qx then
        qx = qw_1:FindFirstChildWhichIsA("ClickDetector")
    end
    local qw_2 = qx
    if qx then
        qx = fireclickdetector
    end
    if qx then
        pcall(fireclickdetector, qw_2)
    end
    local qw_3 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    local Slots = qv:FindFirstChild("Slots")
    if not (qw_3 and Slots and firetouchinterest) then
        return
    end
    for i, child in Slots:GetChildren() do
        local CollectButton = child:FindFirstChild("CollectButton")
        local qw_5 = CollectButton and CollectButton:FindFirstChild("Collect")
        local qv_3 = qw_5
        if qw_5 then
            qw_5 = qv_3:IsA("BasePart")
        end
        if qw_5 then
            pcall(firetouchinterest, qv_3, qw_3, 0)
            pcall(firetouchinterest, qv_3, qw_3, 1)
        end
    end
end
local function fn679()
    if not Toggles.Fly.Value then
        local ut = nY()
        if ut then
            ut.PlatformStand = false
        end
    end
end
local function onCopyEthereumAddress()
    m9(ok, "Copied Ethereum address")
end
local function fn695(dT)
    local si = dT and dT.Dice
    if type(si) ~= "table" then
        return nil
    end
    local si_1 = -1
    local sk
    for k, v in si do
        local sj_1 = tonumber(v) or 0
        if sj_1 > 0 then
            local sj_2 = nX.GetTier(k)
            if si_1 < sj_2 then
                si_1 = sj_2
                sk = k
            end
        end
    end
    return sk
end
local function worker5()
    while not nr.Unloaded do
        if nZ("AutoCollect") then
            pcall(m6)
        end
        task.wait(0.35)
    end
end
local function fn719()
    local Character = LocalPlayer.Character
    local t1 = Character and Character:FindFirstChildOfClass("Humanoid")
    return t1
end
local function onStepped()
    if nr.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local t6_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if t6_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn729()
    local Plots = workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("OwnerId") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function fn753()
    if (Options.TraitCurrency and Options.TraitCurrency.Value) == nh then
        return nh
    end
    return nk
end
local function fn755()
    ClaimAllIndex:FireServer()
end
local function onCopyUSDTAddress()
    m9(og, "Copied USDT address")
end
local function fn796(bH)
    if type(bH) ~= "table" then
        return 0
    end
    local qp = (tonumber(bH.Stock))
    local qu = if qp then 1 else 0
    local qs = 3392 * qu + 2268 * (1 - qu)
    local qt = 3533 * qu + 2001 * (1 - qu)
    if not ((qs * 2564 + qt * 52 + qs * qt) % 16777213 == 4087527) then
        qp = 0
    end
    local qq = tonumber(bH.Purchased) or 0
    return math.max(0, qp - qq)
end
local function fn803()
    if nZ("AutoTraitRoll") then
        local tT = nz()
        if tT then
            pcall(SetAutoRollTarget.FireServer, SetAutoRollTarget, tT, n7())
        end
    end
end
local function onImportConfigFromClipboardTex()
    local vH_1
    local vF = Options.SaveManager_ImportSource.Value or ""
    local vF_1
    local vG = tostring(vF):match("^%s*(.-)%s*$")
    if vG == "" then
        nr:Notify("Paste an exported config into the box first")
        return
    end
    vF_1, vH_1 = pcall(HttpService.JSONDecode, HttpService, vG)
    local vG_1 = not vF_1 or type(vH_1) ~= "table" or type(vH_1.objects) ~= "table"
    if vG_1 then
        nr:Notify("That is not a valid exported config")
        return
    end
    local vF_2 = 0
    for k, v in vH_1.objects do
        if mT(v) then
            vF_2 += 1
        end
    end
    if vF_2 == 0 then
        nr:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local vH_2 = vF_2 == 1 and "" or "s"
    nr:Notify(("Imported %d setting%s"):format(vF_2, vH_2), 6)
end
local function fn819(bs)
    local p9 = bs and bs.leaderstats
    local qa = p9
    if p9 then
        p9 = qa.Clovers
    end
    local qa_1 = tonumber(p9) or 0
    return qa_1
end
local function fn832(a1)
    local DiscordGroup = a1:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mO })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mO })
end
local function fn899()
    local tj = Options.TraitTarget and Options.TraitTarget.Value
    local tk_2
    local tj_1 = tj ~= nc
    local tl = type(tj) == "string" and tj_1
    local tl_1
    if tl then
        return nd[tj]
    end
    local tj_2 = nt()
    local tk_1 = tj_2 and tj_2.PlacedCharacters
    if type(tk_1) ~= "table" then
        return nil
    end
    tl_1, tk_2 = nil, nil
    for k, v in tk_1 do
        local tj_4 = tonumber(v.Slot) or math.huge
        local tm = not tk_2
        if not tm then
            tm = tj_4 < tk_2
        end
        if tm then
            tk_2 = tj_4
            tl_1 = k
        end
    end
    return tl_1
end
local function fn912()
    mW(Toggles.AntiGameplayPause.Value)
end
local function fn948(ba)
    local pN = ba and ba.Value
    if type(pN) ~= "table" then
        return {}
    end
    return pN
end
local function fn965()
    local r6 = nt()
    if not r6 then
        return
    end
    local r7 = Options.GachaBanner and Options.GachaBanner.Value
    local r7_1 = type(r7) ~= "string"
    local sh = if r7_1 then 1 else 0
    local sf = 914 * sh + 1421 * (1 - sh)
    local sg = 773 * sh + 94 * (1 - sh)
    if not ((sf * 1824 + sg * 2659 + sf * sg) % 16777213 == 4429065) then
        r7_1 = not ModelData.GachaStarCosts[r7]
    end
    if r7_1 then
        return
    end
    local r7_2 = Options.GachaCount and Options.GachaCount.Value
    local r9 = tonumber(r7_2) or 1
    local sa = (ModelData.GachaStarCosts[r7] or 0) * r9
    if nV(r6) then
        sa = math.floor(sa * 0.9 + 0.5)
    end
    if nM(r6) < sa then
        return
    end
    SummonGacha:FireServer(r7, r9)
end
local function worker6()
    while not nr.Unloaded do
        if nZ("AutoRoll") then
            pcall(nO)
            pcall(nn, true)
        end
        if nZ("AutoEquipBestDice") then
            pcall(nO)
        end
        if nZ("AutoEquipBest") then
            pcall(nw)
        end
        task.wait(2)
    end
end
local function fn997()
    if not Toggles.WalkSpeedEnabled.Value then
        local uv = nY()
        if uv then
            uv.WalkSpeed = 16
        end
    end
end
local function fn1028(a5)
    local pH = Toggles[a5]
    return pH ~= nil and pH.Value == true
end
local function antiAfkLoop()
    while not nr.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local uR = tick() - nu
            local uS = tick() - no
            if uR >= 300 and uS >= 60 then
                pcall(m5)
            else
                if uR < 300 and uS >= 300 then
                    pcall(m5)
                end
            end
        end
    end
end
local function onCopyVenmoLink()
    m9(n4, "Copied Venmo link")
end
local function fn1062()
    local ss = nt()
    if not ss then
        return
    end
    local st = mR(ss)
    if not st then
        return
    end
    if ss.EquippedDice ~= st then
        EquipDice:FireServer(st)
    end
end
local function fn1072(bx)
    local qf = bx and bx.leaderstats
    local qg = qf
    if qf then
        qf = qg.Stars
    end
    local qg_1 = tonumber(qf) or 0
    return qg_1
end
local function fn1077(aV, aW)
    if setclipboard then
        setclipboard(aV)
    elseif toclipboard then
        toclipboard(aV)
    end
    nr:Notify(aW)
end
local function fn1084()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    no = tick()
end
local function onCopyPayPalLink()
    m9(oa, "Copied PayPal link")
end
SummonGacha = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
mR = nil
ClaimDaily = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
ClaimAllIndex = nil
m_ = nil
m0 = nil
m1 = nil
RebirthRemote = nil
Options = nil
m4 = nil
m5 = nil
m6 = nil
RepairSlot = nil
Toggles = nil
m9 = nil
BuyUpgrade = nil
nb = nil
nc = nil
nd = nil
ne = nil
nf = nil
PurchaseMaterial = nil
nh = nil
ni = nil
PurchaseDice = nil
nk = nil
Label = nil
EquipDice = nil
nn = nil
no = nil
EquipBest = nil
nq = nil
nr = nil
ns = nil
nt = nil
nu = nil
AutoRoll = nil
nw = nil
local mY, nx
Requirements = nil
nz = nil
DailyRewardsData = nil
ModelData = nil
nC = nil
nD = nil
nE = nil
nF = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
nL = nil
nM = nil
PlayerGui = nil
nO = nil
UpgradeData = nil
nQ = nil
LocalPlayer = nil
nS = nil
nT = nil
nU = nil
nV = nil
nX = nil
nY = nil
nZ = nil
connection2 = nil
ReplicaUtils = nil
n2 = nil
n3 = nil
n4 = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
HttpService = nil
oa = nil
ob = nil
VirtualUser = nil
od = nil
UserInputService = nil
SetAutoRollTarget = nil
og = nil
CurrentCamera = nil
oi = nil
ToggleTraitAutoRoll = nil
ok = nil
local CoreGui, GuiService
connection = nil
SetTraitFilter = nil
oo = nil
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil, nil, nil
local vS_8 = game:GetService("Players")
local vS_25 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
LocalPlayer = vS_8.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return PlayerGui
    end
end
pcall(function()
    gethui = function()
        return PlayerGui
    end
end)
if setthreadidentity then
    setthreadidentity(8)
end
AutoRoll, EquipBest, EquipDice, PurchaseDice, PurchaseMaterial, BuyUpgrade, RepairSlot, RebirthRemote, ClaimAllIndex, ClaimDaily, SummonGacha, SetTraitFilter, ToggleTraitAutoRoll, SetAutoRollTarget, ReplicaUtils, nX, nS, UpgradeData, nI, ModelData, DailyRewardsData, Requirements, vS_43, nr, nb, Toggles, Options, m0, mU, mM, oo, ok, og, od, oa, n4, vS_24, ns, nk, nh, nc, m1, mV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vS_36 = "Anime Jackpot"
local vS_45 = vS_25:WaitForChild("Remotes")
AutoRoll = vS_45:WaitForChild("AutoRoll")
EquipBest = vS_45:WaitForChild("EquipBest")
EquipDice = vS_45:WaitForChild("EquipDice")
PurchaseDice = vS_45:WaitForChild("PurchaseDice")
PurchaseMaterial = vS_45:WaitForChild("PurchaseMaterial")
BuyUpgrade = vS_45:WaitForChild("BuyUpgrade")
RepairSlot = vS_45:WaitForChild("RepairSlot")
RebirthRemote = vS_45:WaitForChild("RebirthRemote")
ClaimAllIndex = vS_45:WaitForChild("ClaimAllIndex")
ClaimDaily = vS_45:WaitForChild("ClaimDaily")
SummonGacha = vS_45:WaitForChild("SummonGacha")
SetTraitFilter = vS_45:WaitForChild("SetTraitFilter")
ToggleTraitAutoRoll = vS_45:WaitForChild("ToggleTraitAutoRoll")
SetAutoRollTarget = vS_45:WaitForChild("SetAutoRollTarget")
local vS_13 = vS_25:WaitForChild("Scripts")
local vS_28 = vS_13:WaitForChild("Services")
if (nI and not SetAutoRollTarget and (false or SetAutoRollTarget) or (false or false and not SetAutoRollTarget)) and not (nI and not SetAutoRollTarget and (false or SetAutoRollTarget) or (false or false and not SetAutoRollTarget)) then
    vS_13 = require(ReplicaUtils.Packages.ReplicaUtils)
    vS_28 = require(nX.LuckService.DiceData)
else
    ReplicaUtils = require(vS_13.Packages.ReplicaUtils)
    nX = require(vS_28.LuckService.DiceData)
end
if (not vS_13 or nr or vS_13 and vS_13) and (mV and oa or vS_13 and vS_43) or (false or not nr or nr and not nr) and (nr and mV or not vS_13 and false) or not ((not vS_13 or nr or vS_13 and vS_13) and (mV and oa or vS_13 and vS_43) or (false or not nr or nr and not nr) and (nr and mV or not vS_13 and false)) then
    nS = require(vS_28.ItemService.MaterialsRestockData)
    UpgradeData = require(vS_28.UpgradeService.UpgradeData)
    nI = require(vS_28.ModelService.SlotsData)
else
    vS_28 = require(UpgradeData.ItemService.MaterialsRestockData)
    nI = require(UpgradeData.UpgradeService.UpgradeData)
    nS = require(UpgradeData.ModelService.SlotsData)
end
local vS_48 = require(vS_28.ModelService.TraitsData)
ModelData = require(vS_28.ModelService.ModelData)
DailyRewardsData = require(vS_28.DailyService.DailyRewardsData)
Requirements = require(vS_28.RebirthServices.Requirements)
if (not nX and not nX and (PurchaseDice and ns) or (m0 or PurchaseDice) and false) and ((not ns or false) and (not PurchaseDice or false) and ((nX or PurchaseDice) and (nX or vS_24))) and not ((not nX and not nX and (PurchaseDice and ns) or (m0 or PurchaseDice) and false) and ((not ns or false) and (not PurchaseDice or false) and ((nX or PurchaseDice) and (nX or vS_24)))) then
    nX = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
else
    vS_43 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
end
nr = loadstring(game:HttpGet(vS_43 .. "Library.lua"))()
pcall(fns.fn572)
local vS_51 = loadstring(game:HttpGet(vS_43 .. "addons/ThemeManager.lua"))()
nb = loadstring(game:HttpGet(vS_43 .. "addons/SaveManager.lua"))()
Toggles = nr.Toggles
Options = nr.Options
m0 = "https://discord.gg/ehKVq7pf7v"
mU = "https://rscripts.net/@Ouroboros"
mM = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
oo = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
ok = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
og = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
od = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
oa = "https://paypal.me/TheTruckerGOD"
n4 = "https://venmo.com/u/miserablemusic"
vS_24 = "#345d9d"
local vS_41 = "#f7931a"
local vS_7 = "#627eea"
local vS_22 = "#26a17b"
local vS_39 = "#14f195"
local vS_4 = "#0070ba"
local vS_20 = "#008cff"
local vS_2 = "#7fd47f"
local vS_17 = "#6ec1ff"
ns = "#e8a34d"
local vS_34 = "#8b93a3"
nk = "Clover"
nh = "Trait Crystal"
nc = "None"
local vS_15 = { "Special", "Summer", "Villain" }
local vS_31 = { "1", "3" }
m1 = {}
mV = {}
local vS_44 = nX.GetAll()
local vS_27 = {}
for k, v in vS_44 do
    vS_27[#vS_27 + 1] = { key = k, name = v.Name, tier = nX.GetTier(k) }
end
table.sort(vS_27, fns.fn30)
for k, v in vS_27 do
    m1[#m1 + 1] = v.name
    mV[v.name] = v.key
end
nU = {}
for k in nS.Weights do
    nU[#nU + 1] = k
end
table.sort(nU)
nK = {}
for k in UpgradeData.GetAll() do
    nK[#nK + 1] = k
end
table.sort(nK)
nC = {}
vS_8 = {}
for k, v in vS_48.Order do
    vS_8[#vS_8 + 1] = { name = k, order = v }
end
table.sort(vS_8, fns.fn240)
for k, v in vS_8 do
    nC[#nC + 1] = v.name
end
nd, m9, mO, nZ, nE, nt, ne, mP, ob, nM, nx, nf, m6, nq, nQ, nT, n6, mN, nL, m4, mX, nV, nH, mR, nO, nw, nn, m_, n2, n5, nz, n7, nD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not nO or nO or not m4 and m4 or (not m4 or nO or not nO and nO)) and ((m4 or m4 or nO and not m4) and ((nO or m4) and (nO or not nO))) and ((not m4 and nO or m4 and nO) and ((not m4 or nO) and (not nO or nO)) or ((not m4 or not nO) and (nO or not m4) or (not m4 and not nO or not m4 and not m4))) or not ((not nO or nO or not m4 and m4 or (not m4 or nO or not nO and nO)) and ((m4 or m4 or nO and not m4) and ((nO or m4) and (nO or not nO))) and ((not m4 and nO or m4 and nO) and ((not m4 or nO) and (not nO or nO)) or ((not m4 or not nO) and (nO or not m4) or (not m4 and not nO or not m4 and not m4)))) then
    nd = {}
    m9 = fn1077
    mO = fns.fn608
else
    mO = {}
    nd = fn1077
    m9 = fns.fn608
end
vS_25 = fn832
nZ = fn1028
nE = fn948
nt = fns.fn89
if n5 and not nn and (nn or n5) and (nn and nn or (nn or not n5)) or not nn and not n5 and (n5 or n5) and (nn or not nn or (not nn or n5)) or (not n5 and not nn and (n5 and n5) and (nn or not n5 or (nn or not nn)) or ((not nn or nn) and (nn or nn) or (n5 or n5) and (nn or not n5))) or not (n5 and not nn and (nn or n5) and (nn and nn or (nn or not n5)) or not nn and not n5 and (n5 or n5) and (nn or not nn or (not nn or n5)) or (not n5 and not nn and (n5 and n5) and (nn or not n5 or (nn or not nn)) or ((not nn or nn) and (nn or nn) or (n5 or n5) and (nn or not n5)))) then
    ne = fn729
    mP = fns.fn17
    ob = fn819
    nM = fn1072
    nx = fns.fn205
else
    mP = fn729
    nx = fns.fn17
    nM = fn819
    ne = fn1072
    ob = fns.fn205
end
nf = fn796
m6 = fn667
nq = function(b0)
    local qS
    local qR
    qR = nil
    qS = nil
    local qT = ne()
    if not qT then
        return nil
    end
    qS = nx(b0)
    qR = nil
    local function qU(b7)
        if not b7 then
            return
        end
        for i, child in b7:GetChildren() do
            local attr = child:GetAttribute("Slot")
            local qJ = attr and child:GetAttribute("VIP") ~= true and qS < attr
            if qJ then
                if not qR or attr < qR then
                    qR = attr
                end
            end
        end
    end
    qU(qT:FindFirstChild("Slots"))
    for i, child in qT:GetChildren() do
        if child:IsA("Model") then
            qU(child:FindFirstChild("Slots"))
        end
    end
    return qR
end
nQ = fns.fn526
nT = fns.fn493
n6 = fns.fn55
mN = fns.fn203
nL = fns.fn375
m4 = fn755
mX = fns.fn255
nV = fns.fn82
nH = fn965
mR = fn695
nO = fn1062
nw = fns.fn538
nn = fns.fn546
m_ = fns.fn237
n2 = fns.fn396
n5 = fns.fn451
nz = fn899
n7 = fn753
nD = fns.fn302
vS_8 = nr:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = m0, Copyable = true }, "|", vS_36 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
vS_45 = {
    Info = vS_8:AddTab("Info", "info"),
    Main = vS_8:AddTab("Main", "gamepad-2"),
    Player = vS_8:AddTab("Player", "person-standing"),
    Settings = vS_8:AddTab("Settings", "settings")
}
vS_45.Farm = vS_45.Main:AddSubTab("Farm", "dices")
vS_45.Shop = vS_45.Main:AddSubTab("Shop", "shopping-cart")
vS_45.Traits = vS_45.Main:AddSubTab("Traits", "sparkles")
for k, v in vS_45 do
    vS_8 = v ~= vS_45.Main and v ~= vS_45.Info
    if vS_8 then
        vS_25(v)
    end
end
nG, vS_43, vS_13, Label, ni, vS_28, oi, n8 = nil, nil, nil, nil, nil, nil, nil, nil
vS_8 = 10
repeat
    vS_25 = (vS_8 * 3 + 2) % 4 + 1
    if vS_25 <= 2 then
        if vS_25 <= 1 then
            vS_48 = (vector.create((vS_8 * 3 + 3) % 11 + 1, (vS_8 * 6 + 9) % 13 + 1, (vS_8 * 8 + 9) % 17 + 1))
            vS_9 = (vector.create((vS_8 * 4 + 1) % 11 + 1, (vS_8 * 2 + 8) % 13 + 1, (vS_8 * 11 + 14) % 17 + 1))
            local wE = vector.dot(vS_48, vS_9)
            if wE * wE <= vector.dot(vS_48, vS_48) * vector.dot(vS_9, vS_9) then
                oi = fns.fn71
            else
                n8 = fns.fn71
            end
            vS_8 = (vS_8 + 15) % 16
        else
            local wL = bit32.rrotate(bit32.bxor(bit32.lrotate(vS_8, 23), string.byte(tostring(Label))), 11)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wL, 845182753), 2617536052), (bit32.bxor(bit32.band(wL, 3449784542), 1200649715))), 2617536052), 1200649715) == wL then
                n8 = fns.fn48
                nG = "Unknown"
                pcall(fns.fn60)
                vS_43 = vS_45.Info:AddLeftGroupbox("Account", "circle-user")
                vS_43:AddLabel(n8("User", LocalPlayer.Name, vS_2), true)
                vS_43:AddLabel(n8("Status", "Keyless", vS_2), true)
                vS_43:AddLabel(n8("Executor", nG, vS_2), true)
                vS_13 = vS_45.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                vS_13:AddLabel(oi(vS_36 .. " [" .. tostring(game.PlaceId) .. "]", vS_17), true)
                vS_13:AddLabel(n8("Place ID", tostring(game.PlaceId), vS_17), true)
                Label = vS_13:AddLabel(n8("Session time", "0s", ns), true)
            else
                vS_2 = fns.fn48
                vS_45 = "Unknown"
                pcall(fns.fn60)
                oi = vS_13.Info:AddLeftGroupbox("Account", "circle-user")
                oi:AddLabel(vS_2("User", Label.Name, vS_43), true)
                oi:AddLabel(vS_2("Status", "Keyless", vS_43), true)
                oi:AddLabel(vS_2("Executor", "Unknown", vS_43), true)
                n8 = vS_13.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                n8:AddLabel(vS_17(nG .. " [" .. tostring(game.PlaceId) .. "]", vS_36), true)
                n8:AddLabel(vS_2("Place ID", tostring(game.PlaceId), vS_36), true)
                ns = n8:AddLabel(vS_2("Session time", "0s", LocalPlayer), true)
            end
            vS_8 = (vS_8 + 15) % 16
        end
    elseif vS_25 <= 3 then
        local w4 = bit32.rrotate(bit32.bxor(bit32.lrotate(vS_8, 25), string.byte(tostring(vS_28))), 28)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(w4, 2740927553), 3954845250), (bit32.bxor(bit32.band(w4, 1554039742), 1973296563))), 3954845250), 1973296563) == w4 then
            ni = tostring(game.JobId)
        else
            nG = tostring(game.JobId)
        end
        vS_8 = (vS_8 + 3) % 16
    else
        local xb = bit32.rrotate(bit32.bxor(bit32.lrotate(vS_8, 22), string.byte(tostring(oi))), 19)
        if bit32.bxor(bit32.lrotate(bit32.bxor(xb, 3969711700), 0), 3969711700) ~= bit32.lrotate(xb, 0) then
            ni = #vS_28 > 18
        else
            vS_28 = #ni > 18
        end
        vS_8 = (vS_8 + 7) % 16
    end
until (vS_8 * 3 + 6) % 16 == 12
if vS_28 then
    vS_8 = 0
    repeat
        local xc = bit32.rrotate(bit32.bxor(bit32.lrotate(vS_8, 21), string.byte(tostring(vS_8))), 21)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xc, 2249155741), 1789757219), (bit32.bxor(bit32.band(xc, 2045811554), 3869237461))), 1789757219), 3869237461) == xc then
            vS_28 = string.sub(ni, 1, 18) .. "..."
        else
            ni = string.sub(vS_28, 1, 18) .. "..."
        end
        vS_8 = (vS_8 + 0) % 8
    until (vS_8 * 3 + 2) % 8 == 2
end
vS_8 = vS_28
local pE = if vS_8 then 1 else 0
local pC = 4053 * pE + 3064 * (1 - pE)
local pD = 266 * pE + 3816 * (1 - pE)
if not ((pC * 3822 + pD * 3933 + pC * pD) % 16777213 == 837629) then
    vS_8 = ni
end
mQ, CurrentCamera, nu, no, connection, connection2, nY, nF, mW, m5, mY, n3, nJ, mT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
vS_25 = vS_8
vS_13:AddLabel(n8("Server", vS_25, vS_34), true)
vS_13:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
mQ = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = vS_45.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(oi("Included in this hub", vS_34), true)
ScriptsGroup:AddLabel(oi(vS_36, vS_17), true)
local FeaturesGroup = vS_45.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(oi("Auto Farm", vS_17), true)
FeaturesGroup:AddLabel(oi("Auto Buy", ns), true)
FeaturesGroup:AddLabel(oi("Auto Claim", ns), true)
FeaturesGroup:AddLabel(oi("Auto Gacha", vS_2), true)
FeaturesGroup:AddLabel(oi("Auto Trait", vS_2), true)
FeaturesGroup:AddLabel(oi("Player Movement", vS_34), true)
vS_27 = vS_45.Info:AddRightGroupbox("Socials", "link")
vS_27:AddButton({ Text = "Discord", Func = mO })
vS_27:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
vS_9 = vS_45.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
vS_9:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
vS_9:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
vS_9:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
vS_9:AddButton({ Text = "Copy Discord Invite", Func = mO })
vS_48 = vS_45.Info:AddRightGroupbox("Donations", "heart")
vS_48:AddLabel(oi("All donations are optional but appreciated.", ns), true)
vS_48:AddLabel(oi("If you donate you get a special role, just PING after you donate.", vS_2), true)
vS_48:AddDivider()
vS_48:AddLabel(oi("LTC / Litecoin", vS_24), true)
vS_48:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
vS_48:AddLabel(oi("BTC / Bitcoin", vS_41), true)
vS_48:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
vS_48:AddLabel(oi("ETH / Ethereum", vS_7), true)
vS_48:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
vS_48:AddLabel(oi("USDT", vS_22), true)
vS_48:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
vS_48:AddLabel(oi("Solana", vS_39), true)
vS_48:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
vS_48:AddLabel(oi("PayPal", vS_4), true)
vS_48:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
vS_48:AddLabel(oi("Venmo", vS_20), true)
vS_48:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
vS_48:AddDivider()
vS_48:AddLabel(oi("Don't have any of the listed currencies but still wanna donate?", vS_34), true)
vS_48:AddLabel(oi("DM me and we'll work something out.", vS_17), true)
local FaqGroup = vS_45.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = vS_45.Farm:AddLeftGroupbox("Farm", "dices")
FarmGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
FarmGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
FarmGroup:AddToggle("AutoEquipBestDice", { Text = "Auto Equip Best Owned Dice", Default = false })
FarmGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
FarmGroup:AddToggle("AutoBuyMachine", { Text = "Auto Buy Machine", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local ClaimsGroup = vS_45.Farm:AddRightGroupbox("Claims", "gift")
ClaimsGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
ClaimsGroup:AddToggle("AutoClaimDaily", { Text = "Auto Claim Daily", Default = false })
local GachaGroup = vS_45.Farm:AddRightGroupbox("Gacha", "star")
GachaGroup:AddToggle("AutoGacha", { Text = "Auto Gacha", Default = false })
GachaGroup:AddDropdown("GachaBanner", { Text = "Banner", Values = vS_15, Default = "Special" })
GachaGroup:AddDropdown("GachaCount", { Text = "Amount", Values = vS_31, Default = "1" })
local DiceGroup = vS_45.Shop:AddLeftGroupbox("Dice", "dices")
DiceGroup:AddToggle("AutoBuyDice", { Text = "Auto Buy Dice", Default = false })
DiceGroup:AddDropdown("AutoBuyDiceTarget", { Text = "Dice", Values = m1, Default = { m1[1] }, Multi = true, SelectAllButtons = true })
local MaterialsGroup = vS_45.Shop:AddLeftGroupbox("Materials", "gem")
do
    MaterialsGroup:AddToggle("AutoBuyMaterials", { Text = "Auto Buy Materials", Default = false })
    MaterialsGroup:AddDropdown("AutoBuyMaterialTarget", {
        Text = "Materials",
        Values = nU,
        Default = {},
        Multi = true,
        SelectAllButtons = true,
        Expandable = true
    })
    local UpgradesGroup = vS_45.Shop:AddRightGroupbox("Upgrades", "arrow-up")
    UpgradesGroup:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
    UpgradesGroup:AddDropdown("AutoUpgradeTarget", {
        Text = "Upgrades",
        Values = nK,
        Default = { "Luck I", "Yen", "Roll Speed", "Income Rate" },
        Multi = true,
        SelectAllButtons = true
    })
    vS_44 = vS_45.Traits:AddLeftGroupbox("Trait Roll", "sparkles")
    vS_44:AddToggle("AutoTraitRoll", { Text = "Auto Trait Roll", Default = false })
    vS_44:AddDropdown("TraitCurrency", { Text = "Currency", Values = { nk, nh }, Default = nk })
    vS_44:AddDropdown("TraitTarget", { Text = "Target", Values = n2(), Default = nc })
    vS_44:AddDropdown("TraitFilter", {
        Text = "Traits",
        Values = nC,
        Default = {},
        Multi = true,
        SelectAllButtons = true,
        Expandable = true
    })
    Toggles.AutoRoll:OnChanged(fns.fn465)
    Toggles.AutoTraitRoll:OnChanged(fns.fn40)
    Options.TraitFilter:OnChanged(fns.fn103)
    Options.TraitTarget:OnChanged(fns.fn581)
    Options.TraitCurrency:OnChanged(fn803)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(fns.worker3)
    task.spawn(fns.worker2)
    local MovementGroup = vS_45.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local FlyGroup = vS_45.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    nY = fn719
end
nF = fns.fn660
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(fns.onRenderStepped)
Toggles.Fly:OnChanged(fn679)
Toggles.WalkSpeedEnabled:OnChanged(fn997)
mW = function(hN)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not hN)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hN
        end
    end)
    if not hN then
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
Toggles.AntiGameplayPause:OnChanged(fn912)
task.spawn(fns.antiGameplayPauseLoop)
vS_28 = vS_45.Settings:AddLeftGroupbox("Menu", "menu")
vS_28:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
nr.ToggleKeybind = Options.MenuKeybind
nu = tick()
no = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local uL = v
        pcall(function()
            uL:Disable()
        end)
    end
end)
m5 = fn1084
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
vS_28:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
vS_28:AddButton("Unload", fns.onUnload)
task.spawn(antiAfkLoop)
nr:OnUnload(fns.fn22)
vS_51:SetLibrary(nr)
vS_51:SetFolder("OuroborosHub")
vS_51:SaveDefault("Evil Hello Kitty")
vS_51:ApplyToTab(vS_45.Settings)
vS_51:LoadDefault()
nb:SetLibrary(nr)
nb:IgnoreThemeSettings()
nb:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
nb:SetFolder("OuroborosHub/AnimeJackpot")
vS_43 = nb:BuildConfigSection(vS_45.Settings)
mY = fns.fn116
n3 = fns.fn271
nJ = fns.fn325
mT = function(i0)
    local vs
    vs = nil
    local vt = type(i0) ~= "table" or type(i0.idx) ~= "string"
    local vx = if vt then 1 else 0
    local vv = 2323 * vx + 3159 * (1 - vx)
    local vw = 1667 * vx + 981 * (1 - vx)
    if not ((vv * 2285 + vw * 3687 + vv * vw) % 16777213 == 15326725) then
        vt = type(i0.type) ~= "string"
    end
    if not vt then
        vt = nb.Ignore[i0.idx]
    end
    if vt then
        return false
    end
    vs = mY(i0.type, i0.idx)
    if not vs then
        return false
    end
    local vt_1 = pcall(function()
        if i0.type == "Input" then
            if type(i0.text) ~= "string" then
                return
            end
            vs:SetValue(i0.text)
        elseif i0.type == "ColorPicker" then
            vs:SetValueRGB(Color3.fromHex(i0.value), i0.transparency)
        elseif i0.type == "KeyPicker" then
            vs:SetValue({ i0.key, i0.mode, i0.modifiers })
            if i0.mode == "Toggle" and i0.toggled ~= nil then
                vs.Toggled = i0.toggled
                vs:Update()
            end
        else
            vs:SetValue(i0.value)
        end
    end)
    return vt_1
end
vS_43:AddDivider()
vS_43:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
vS_43:AddButton("Export Config to Clipboard", fns.onExportConfigToClipboard)
vS_43:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
nb:LoadAutoloadConfig()
