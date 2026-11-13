local fns = {}
local lW
local kW
local lD
local TailConfig
local Label
local HttpService
local lq
local k7
local lP
local kP
local lw
local ld
local lV
local kV
local PlayerGui
local lj
local AuraRemote
local lI
local StrengthSystemFunction
local Toggles
local connection2
local lv
local lc
local lU
local kU
local lB
local li
local CurrentCamera
local k_
local lH
local lo
local connection
local VirtualUser
local ChargeGameplayConfig
local lb
local SaveManager
local lA
local ChargeGameplayRemote
local lZ
local kZ
local LocalPlayer
local ln
local k4
local lM
local StrengthConfig
local la
local UserInputService
local kS
local lz
local lg
local lY
local kY
local lF
local lm
local k3
local Options
local ls
local StrengthSystemRemote
local lR
local kR
local ly
local lf
local lX
local TailSystemRemote
local lE
local ll
local k2
local lK
local lr
local k8
local lQ
local Library
local lx
local le
function fns.onCopyUSDTAddress()
    lA(k7, "Copied USDT address")
end
function fns.worker8()
    while not Library.Unloaded do
        task.wait(0.6)
        if lP("AutoBuyWeights") then
            lM()
            local cash = kW.cash
            local rebirths = kW.rebirths
            local pB = false
            for k, v in StrengthConfig.Weights do
                local pC_1 = not v.PaidOnly
                if pC_1 ~= false then
                    pC_1 = not kS(v.Id)
                end
                if pC_1 then
                    local pD = rebirths >= (v.RequiredRebirth or 0)
                    if pD then
                        pD = cash >= (v.Cost or 0)
                    end
                    if pD then
                        lz(StrengthSystemRemote, "BuyOrEquip", v.Id)
                        pB = true
                        break
                    end
                end
            end
            if not pB then
                local pz_1 = -1
                local Id = nil
                for k, v in StrengthConfig.Weights do
                    local pB_1 = not v.PaidOnly
                    if pB_1 ~= false then
                        pB_1 = kS(v.Id)
                    end
                    if pB_1 then
                        local pB_2 = tonumber(v.Gain) or 0
                        if pB_2 > pz_1 then
                            pz_1 = pB_2
                            Id = v.Id
                        end
                    end
                end
                local pB_3 = Id and tostring(kW.equippedWeight) ~= Id
                if pB_3 then
                    lz(StrengthSystemRemote, "BuyOrEquip", Id)
                end
            end
        end
    end
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local qf_1 = la()
        if qf_1 then
            for i, descendant in qf_1:GetDescendants() do
                local qf_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if qf_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.worker2()
    while not Library.Unloaded do
        if lP("AutoSkip") then
            lm()
        end
        if lP("AutoCharge") then
            pcall(lR)
        else
            task.wait(0.15)
        end
    end
end
function fns.worker6()
    while not Library.Unloaded do
        task.wait(0.7)
        if lP("AutoRebirth") then
            lM()
            local rebirths = kW.rebirths
            local o5 = tonumber(StrengthConfig.MaxRebirths) or 15
            if rebirths < o5 then
                local o5_1 = StrengthConfig.GetRebirthRequirement(rebirths)
                local o4_1 = type(o5_1) == "number" and kW.strength >= o5_1
                if o4_1 then
                    lz(StrengthSystemRemote, "Rebirth")
                end
            end
        end
    end
end
local function onCopyLitecoinAddress()
    lA(li, "Copied Litecoin address")
end
local function worker()
    local ot_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local oq = math.floor(os.clock() - lU)
        if oq < 60 then
            ot_1 = oq .. "s"
        elseif oq < 3600 then
            ot_1 = string.format("%dm %ds", oq // 60, oq % 60)
        else
            ot_1 = string.format("%dh %dm", oq // 3600, oq % 3600 // 60)
        end
        Label:SetText(lK("Session time", ot_1, lv))
    end
end
local function onOnClientEvent(bE, bF)
    local n6 = bE ~= "Sync"
    local oa = if n6 then 1 else 0
    local n8 = 119 * oa + 1703 * (1 - oa)
    local n9 = 3044 * oa + 1595 * (1 - oa)
    if not ((n8 * 1823 + n9 * 2041 + n8 * n9) % 16777213 == 6791977) then
        n6 = type(bF) ~= "table"
    end
    if n6 then
        return
    end
    if type(bF.Owned) == "table" then
        lj = bF.Owned
        lj.Brown = true
    end
    if bF.Equipped then
        lf = tostring(bF.Equipped)
    end
end
local function fn83()
    connection:Disconnect()
    connection2:Disconnect()
    k_(false)
    print("Unloaded!")
end
local function fn88(bl)
    local ownedWeights = kW.ownedWeights
    if type(ownedWeights) == "table" then
        if ownedWeights[bl] == true then
            return true
        end
        for k, v in ownedWeights do
            if v == bl or v == true and k == bl then
                return true
            end
        end
        local nM_2 = kW.equippedWeight or ""
        return tostring(nM_2) == bl
    end
    local nM_3 = kW.equippedWeight or ""
    return tostring(nM_3) == bl
end
local function fn89(af)
    local mS = Toggles[af]
    return mS ~= nil and mS.Value == true
end
local function fn107(bO, bP)
    return string.format('<font color="%s">%s</font>', bP, bO)
end
local function onInputBegan()
    ly = tick()
end
local function fn124()
    local m4 = ChargeGameplayConfig.ChargeZoneName
    local m8 = if m4 then 1 else 0
    local m6 = 1345 * m8 + 3006 * (1 - m8)
    local m7 = 2600 * m8 + 4052 * (1 - m8)
    if not ((m6 * 2478 + m7 * 294 + m6 * m7) % 16777213 == 7594310) then
        m4 = "ChargeZone"
    end
    return workspace:FindFirstChild(m4)
end
local function onCopyEthereumAddress()
    lA(lb, "Copied Ethereum address")
end
local function onRenderStepped(fy)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qp_1 = k2()
        if qp_1 then
            qp_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qp_3 = kP()
        local qq = k2()
        if qp_3 and qq then
            qq.PlatformStand = true
            local qq_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                qq_1 = qq_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qq_1 = qq_1 - CurrentCamera.CFrame.LookVector
            end
            local qv = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if qv == 1 then
                qq_1 = qq_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qq_1 = qq_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                qq_1 = qq_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                qq_1 = qq_1 - Vector3.new(0, 1, 0)
            end
            qp_3.Velocity = Vector3.zero
            if qq_1.Magnitude > 0 then
                qp_3.CFrame = qp_3.CFrame + qq_1.Unit * Options.FlySpeed.Value * fy
            end
        end
    end
end
local function onCopyVenmoLink()
    lA(kV, "Copied Venmo link")
end
local function onCopySolanaAddress()
    lA(k3, "Copied Solana address")
end
local function fn184(K, L)
    if setclipboard then
        setclipboard(K)
    elseif toclipboard then
        toclipboard(K)
    end
    Library:Notify(L)
end
local function onExportConfigToClipboard()
    local rF_1
    local rE_1
    rE_1, rF_1 = pcall(HttpService.JSONEncode, HttpService, lX())
    if not rE_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local rE_2 = setclipboard or toclipboard
    local rE_3 = type(rE_2) ~= "function" or not pcall(rE_2, rF_1)
    if rE_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn257()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lx = tick()
end
local function fn258()
    local ne = lI()
    local nf = kP()
    local ng = ne and ne:IsA("BasePart")
    if not (ng and nf) then
        return
    end
    local ng_1 = 3
    local nh_1 = k2()
    if nh_1 then
        ng_1 = math.max(nh_1.HipHeight + 1.5, 3)
    end
    nf.CFrame = CFrame.new(ne.Position + Vector3.new(0, ne.Size.Y * 0.5 + ng_1, 0))
    nf.AssemblyLinearVelocity = Vector3.zero
    nf.AssemblyAngularVelocity = Vector3.zero
end
local function fn281()
    local rk = {}
    for k, v in { Toggles, Options } do
        for k, v in v do
            local rl = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rl then
                local rl_1 = kU(k, v)
                if rl_1 then
                    rk[#rk + 1] = rl_1
                end
            end
        end
    end
    table.sort(rk, function(gV, gW)
        if gV.type ~= gW.type then
            return gV.type < gW.type
        end
        return gV.idx < gW.idx
    end)
    return { objects = rk }
end
local function fn298(az, aA)
    local attr = LocalPlayer:GetAttribute(az)
    local m1 = attr ~= ""
    local m2 = typeof(attr) == "string" and m1
    if m2 then
        return attr
    end
    return aA
end
local function fn326(dX)
    local o7 = dX and dX:IsA("Tool")
    if not o7 then
        return false
    elseif dX:GetAttribute("IsTrainingWeight") == true then
        return true
    elseif dX:GetAttribute("WeightId") ~= nil then
        return true
    else
        return dX.Name == lg()
    end
end
local function fn384()
    local mP = la()
    local mQ = mP and mP:FindFirstChild("HumanoidRootPart")
    return mQ
end
local function onRscripts()
    lA(lE, "Copied Rscripts profile to clipboard")
end
local function worker10()
    while not Library.Unloaded do
        task.wait(0.6)
        if lP("AutoBuyTails") then
            local p1 = k4("Coins")
            local p2 = false
            local p3 = true
            local p4 = "Brown"
            for k, v in TailConfig.Order do
                local p5 = TailConfig.Tails[v]
                if lj[v] == true then
                    p3 = true
                    p4 = v
                else
                    if p3 and p5 and p1 >= (p5.Price or 0) then
                        lz(TailSystemRemote, "BuyTail", { tailId = v })
                        p2 = true
                        break
                    end
                    p3 = false
                end
            end
            local p1_1 = p4 ~= lf
            local p3_1 = not p2
            if p3_1 ~= false then
                p3_1 = p1_1
            end
            if p3_1 then
                lz(TailSystemRemote, "EquipTail", { tailId = p4 })
            end
        end
    end
end
local function onCopyJoinScript_JobID()
    local oj = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, kY)
    if setclipboard then
        setclipboard(oj)
    elseif toclipboard then
        toclipboard(oj)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn425()
    local m9 = lI()
    local na = kP()
    local nb = m9 and m9:IsA("BasePart")
    if not (nb and na) then
        return false
    end
    local nb_1 = tonumber(ChargeGameplayConfig.ChargeZoneJumpExtraY) or 80
    local nb_2 = m9.CFrame:PointToObjectSpace(na.Position)
    local na_1 = m9.Size * 0.5
    local m9_1 = math.abs(nb_2.X) <= na_1.X and math.abs(nb_2.Z) <= na_1.Z and nb_2.Y >= -na_1.Y and nb_2.Y <= na_1.Y + nb_1
    return m9_1
end
local function fn428()
    local nZ = ls(StrengthSystemFunction, "GetState")
    if type(nZ) == "table" then
        local n_ = type(nZ.ownedWeights) == "table" and nZ.ownedWeights
        local n1 = n_ or {}
        kW.ownedWeights = n1
        local n__1 = (tonumber(nZ.strength))
        local n5 = if n__1 then 1 else 0
        local n3 = 1753 * n5 + 3928 * (1 - n5)
        local n4 = 2603 * n5 + 1214 * (1 - n5)
        if not ((n3 * 4079 + n4 * 1988 + n3 * n4) % 16777213 == 111097) then
            n__1 = kW.strength
        end
        kW.strength = n__1
        local n__2 = tonumber(nZ.cash) or kW.cash
        kW.cash = n__2
        local n__3 = tonumber(nZ.rebirths) or kW.rebirths
        kW.rebirths = n__3
        local n__4 = nZ.equippedWeight or kW.equippedWeight
        kW.equippedWeight = tostring(n__4)
    end
    kW.cash = k4("Cash")
    kW.strength = k4("Strength")
    kW.rebirths = k4("Rebirths")
    kW.equippedWeight = kR("EquippedWeight", kW.equippedWeight)
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local q_ = tick() - ly
            local q0 = tick() - lx
            if q_ >= 300 and q0 >= 60 then
                pcall(ln)
            else
                if q_ < 300 and q0 >= 300 then
                    pcall(ln)
                end
            end
        end
    end
end
local function fn517()
    if not Toggles.Fly.Value then
        local qw = k2()
        if qw then
            qw.PlatformStand = false
        end
    end
end
local function fn537()
    local oA = if LocalPlayer:GetAttribute("HasInstantCharge") == true then 1 else 0
    if oA == 1 then
        return 0.12
    end
    local ow = tonumber(ChargeGameplayConfig.ChargeSeconds) or 3
    return math.max(0.15, ow)
end
local function worker7()
    while not Library.Unloaded do
        local pv = tonumber(StrengthConfig.TrainInterval) or 1
        task.wait(math.max(0.25, pv * 0.5))
        if lP("AutoUseWeights") then
            pcall(lD)
        end
    end
end
local function fn545()
    k_(Toggles.AntiGameplayPause.Value)
end
local function onCopyPayPalLink()
    lA(kZ, "Copied PayPal link")
end
local function onUnload()
    Library:Unload()
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            k_(true)
        end
    end
end
local function fn611()
    local mM = la()
    local mN = mM and mM:FindFirstChildOfClass("Humanoid")
    return mN
end
local function fn612()
    local Charge = PlayerGui:FindFirstChild("Charge")
    local nH = Charge and Charge:FindFirstChild("Skip")
    local nG_1 = nH
    if nH then
        nH = nG_1:IsA("GuiButton")
    end
    if nH then
        nH = nG_1.Visible
    end
    if nH then
        lF(nG_1)
    end
end
local function fn629()
    return LocalPlayer.Character
end
local function fn639()
    local oG = if lV() then 1 else 0
    if oG == 1 then
        task.wait(0.15)
        return
    end
    if not lB() then
        lc()
        task.wait(0.12)
        if not lB() then
            return
        end
    end
    lz(ChargeGameplayRemote, "BeginCharge")
    local oB = os.clock() + lZ()
    while true do
        local oC_1 = os.clock() < oB and lP("AutoCharge") and not Library.Unloaded
        if oC_1 then
            if not lB() then
                lc()
            end
            if lP("AutoSkip") then
                lm()
            end
            task.wait(0.05)
            continue
        end
        break
    end
    local oB_1 = not lP("AutoCharge") or Library.Unloaded
    if oB_1 then
        return
    end
    lz(ChargeGameplayRemote, "Launch", { percent = 100 })
    local oB_2 = os.clock() + 45
    while true do
        local oC_2 = lV() and os.clock() < oB_2 and lP("AutoCharge") and not Library.Unloaded
        if oC_2 then
            if lP("AutoSkip") then
                lm()
            end
            task.wait(0.15)
            continue
        end
        break
    end
    task.wait(0.35)
end
local function fn650()
    return kR("EquippedWeight", "Banana")
end
local function fn653(gI, gJ)
    local Type = gJ.Type
    if Type == "Toggle" then
        return { idx = gI, type = "Toggle", value = gJ.Value == true }
    elseif Type == "Slider" then
        return { idx = gI, type = "Slider", value = tostring(gJ.Value) }
    elseif Type == "Dropdown" then
        return { idx = gI, type = "Dropdown", multi = gJ.Multi == true, value = gJ.Value }
    elseif Type == "Input" then
        local rb = gJ.Value or ""
        return { idx = gI, type = "Input", text = tostring(rb) }
    elseif Type == "ColorPicker" then
        return { idx = gI, type = "ColorPicker", value = gJ.Value:ToHex(), transparency = gJ.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gI,
            type = "KeyPicker",
            mode = gJ.Mode,
            key = gJ.Value,
            modifiers = gJ.Modifiers,
            toggled = gJ.Toggled
        }
    else
        return nil
    end
end
local function worker5()
    while not Library.Unloaded do
        task.wait(0.8)
        if lP("AutoUpgradeBase") then
            local oY = lQ()
            if oY then
                local oZ = workspace:FindFirstChild("Base") and workspace.Base:FindFirstChild(oY)
                local o_ = oZ
                if oZ then
                    oZ = tonumber(o_:GetAttribute("BaseUpgradeLevel"))
                end
                local o__1 = oZ or 0
                local o__2 = lo.GetPriceUpgrade(o__1)
                local oZ_2 = type(o__2) == "number" and k4("Cash") >= o__2
                if oZ_2 then
                    lz(ld, "UpgradeBase", { baseName = oY })
                end
            end
        end
    end
end
local function onOnClientEvent2(er, es)
    local px = Library.Unloaded or not lP("Auto2x")
    if px then
        return
    end
    local px_1 = er ~= "StartQTE" or type(es) ~= "table"
    if px_1 then
        return
    end
    local id = es.id
    if id == nil then
        return
    end
    lz(StrengthSystemRemote, "QTEResult", { success = true, id = tostring(id) })
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local qn_1 = k2()
        if qn_1 then
            qn_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn693()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn695()
    if not Toggles.WalkSpeedEnabled.Value then
        local qB = k2()
        if qB then
            qB.WalkSpeed = 16
        end
    end
end
local function fn699()
    local oc_1
    local ob_1
    if identifyexecutor then
        oc_1, ob_1 = identifyexecutor()
        local od = oc_1 ~= ""
        local oe = type(oc_1) == "string" and od
        if oe then
            local od_1 = type(ob_1) == "string" and ob_1 ~= "" and oc_1 .. " " .. ob_1
            lr = od_1 or oc_1
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        task.wait(1.3)
        if lP("AutoEquipBest") then
            lz(ld, "PlaceBestBrainrots")
        end
    end
end
local function fn731()
    local oJ = kP()
    if not oJ or not firetouchinterest then
        return
    end
    local oK_1 = lQ()
    if not oK_1 then
        return
    end
    local Base = workspace:FindFirstChild("Base")
    local oM = Base and Base:FindFirstChild(oK_1)
    local oL_1 = oM and oM:FindFirstChild("Podiums")
    if not oL_1 then
        return
    end
    for k, v in oL_1:QueryDescendants("#CashClaim") do
        local oK_4 = v:IsA("BasePart") and v:FindFirstChild("TouchInterest")
        if oK_4 then
            pcall(firetouchinterest, oJ, v, 0)
            pcall(firetouchinterest, oJ, v, 1)
        end
    end
end
local function fn766()
    return kR("AssignedBaseName", nil)
end
local function onCopyBitcoinAddress()
    lA(le, "Copied Bitcoin address")
end
local function fn804(bR, bS, bT)
    return string.format("<b>%s</b> %s %s", bR, lW("-", "#5a6070"), lW(bS, bT))
end
local function fn810()
    lA(lH, "Copied Discord invite to clipboard")
end
local function worker9()
    while not Library.Unloaded do
        task.wait(0.8)
        if lP("AutoEquipBestAura") then
            local pR = k4("Rebirths")
            local attr = LocalPlayer:GetAttribute("OwnsVoidAura")
            local pT = "Normal"
            local pU = attr == true
            for k, v in lq.Order do
                if lq.IsUnlocked(v, pR, pU) then
                    pT = v
                end
            end
            if kR("EquippedAura", "Normal") ~= pT then
                lz(AuraRemote, "Equip", pT)
            end
        end
    end
end
local function onImportConfigFromClipboardTex()
    local rK_1
    local rI = Options.SaveManager_ImportSource.Value or ""
    local rI_1
    local rJ = tostring(rI):match("^%s*(.-)%s*$")
    if rJ == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    rI_1, rK_1 = pcall(HttpService.JSONDecode, HttpService, rJ)
    local rJ_1 = not rI_1 or type(rK_1) ~= "table"
    local rO = if rJ_1 then 1 else 0
    local rM = 2816 * rO + 3881 * (1 - rO)
    local rN = 1130 * rO + 1512 * (1 - rO)
    if not ((rM * 1921 + rN * 687 + rM * rN) % 16777213 == 9367926) then
        rJ_1 = type(rK_1.objects) ~= "table"
    end
    if rJ_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local rI_2 = 0
    for k, v in rK_1.objects do
        if ll(v) then
            rI_2 += 1
        end
    end
    if rI_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local rK_2 = rI_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(rI_2, rK_2), 6)
end
local function worker4()
    while not Library.Unloaded do
        task.wait(0.5)
        local oX = if lP("AutoCollectMoney") then 1 else 0
        if oX == 1 then
            pcall(lY)
        end
    end
end
local function fn897()
    local nm = LocalPlayer:GetAttribute("ChargeGameplayActive") == true or PlayerGui:GetAttribute("ChargeGameplaySequenceActive") == true
    return nm
end
local function onInputChanged(gg)
    local UserInputType = gg.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        ly = tick()
    end
end
local function fn918(R)
    local DiscordGroup = R:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lw })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lw })
end
local function fn919(aw)
    local mZ = tonumber(LocalPlayer:GetAttribute(aw)) or 0
    return mZ
end
local function fn953()
    local o9 = la()
    if o9 then
        for i, child in o9:GetChildren() do
            if k8(child) then
                return child
            end
        end
    end
    for i, child in LocalPlayer.Backpack:GetChildren() do
        if k8(child) then
            return child
        end
    end
    return nil
end
local function fn957(gA, gB)
    local q4_1 = (gA == "Toggle" and Toggles or Options)[gB]
    local q3_2 = type(q4_1) == "table" and q4_1.Type == gA
    return q3_2 and q4_1 or nil
end
connection2 = nil
kP = nil
Library = nil
kR = nil
kS = nil
kU = nil
kV = nil
kW = nil
TailSystemRemote = nil
kY = nil
kZ = nil
k_ = nil
AuraRemote = nil
Label = nil
k2 = nil
k3 = nil
k4 = nil
connection = nil
StrengthSystemFunction = nil
k7 = nil
k8 = nil
StrengthSystemRemote = nil
la = nil
lb = nil
lc = nil
ld = nil
le = nil
lf = nil
lg = nil
ChargeGameplayRemote = nil
li = nil
lj = nil
TailConfig = nil
ll = nil
lm = nil
ln = nil
lo = nil
lq = nil
lr = nil
ls = nil
StrengthConfig = nil
ChargeGameplayConfig = nil
lv = nil
lw = nil
lx = nil
ly = nil
lz = nil
lA = nil
local kT, lp
lB = nil
PlayerGui = nil
lD = nil
lE = nil
lF = nil
LocalPlayer = nil
lH = nil
lI = nil
HttpService = nil
lK = nil
Options = nil
lM = nil
VirtualUser = nil
Toggles = nil
lP = nil
lQ = nil
lR = nil
UserInputService = nil
SaveManager = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
lZ = nil
CurrentCamera = nil
local l4, mb, mc, md, me, mf
local DonationsGroup
UserInputService, VirtualUser, HttpService, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil
local rY_2 = game:GetService("Players")
local rY_1 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
LocalPlayer = rY_2.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
ChargeGameplayConfig, StrengthConfig, lq, lo, TailConfig, ChargeGameplayRemote, ld, StrengthSystemRemote, StrengthSystemFunction, AuraRemote, TailSystemRemote, Library, SaveManager, Toggles, Options, lH, lE, kW, lj, lf, lA, lw, la, k2, kP, lP, lz, ls, k4, kR, lQ, lI, lB, lc, lV, lF, lm, kS, lM = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local l9 = "Be Monkey For Brainrots"
local l6 = rY_1:WaitForChild("Modules")
local l5 = rY_1:WaitForChild("Events")
ChargeGameplayConfig = require(l6:WaitForChild("ChargeGameplayConfig"))
StrengthConfig = require(l6:WaitForChild("StrengthConfig"))
if ((lq or not lq) and (not lq and not lq) or not lq and lq and (lq or not k4)) and not ((lq or not lq) and (not lq and not lq) or not lq and lq and (lq or not k4)) then
    require(TailConfig:WaitForChild("AuraConfig"))
    lq = require(TailConfig:WaitForChild("BaseUpgradeConfig"))
    l5 = require(TailConfig:WaitForChild("TailModules"):WaitForChild("TailConfig"))
    ld = ChargeGameplayRemote:WaitForChild("ChargeGameplayRemote")
    lo = ChargeGameplayRemote:WaitForChild("BaseSystemRemote")
else
    lq = require(l6:WaitForChild("AuraConfig"))
    lo = require(l6:WaitForChild("BaseUpgradeConfig"))
    TailConfig = require(l6:WaitForChild("TailModules"):WaitForChild("TailConfig"))
    ChargeGameplayRemote = l5:WaitForChild("ChargeGameplayRemote")
    ld = l5:WaitForChild("BaseSystemRemote")
end
StrengthSystemRemote = l5:WaitForChild("StrengthSystemRemote")
StrengthSystemFunction = l5:WaitForChild("StrengthSystemFunction")
AuraRemote = l5:WaitForChild("AuraRemote")
TailSystemRemote = l5:WaitForChild("TailSystemRemote")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn693)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
lH = "https://discord.gg/ehKVq7pf7v"
lE = "https://rscripts.net/@Ouroboros"
lA = fn184
lw = fn810
local l7 = fn918
la = fn629
k2 = fn611
kP = fn384
lP = fn89
lz = function(ak, ...)
    local al
    al = { ... }
    pcall(function()
        ak:FireServer(table.unpack(al))
    end)
end
ls = function(ap, ...)
    local mV
    mV = nil
    local mX_1
    local mW_1
    mV = { ... }
    mW_1, mX_1 = pcall(function()
        return ap:InvokeServer(table.unpack(mV))
    end)
    if not mW_1 then
        return nil
    end
    return mX_1
end
k4 = fn919
kR = fn298
lQ = fn766
lI = fn124
lB = fn425
lc = fn258
lV = fn897
lF = function(a4)
    local np = a4 and a4:IsA("GuiButton")
    if not np then
        return
    end
    pcall(function()
        a4:Activate()
    end)
    if firesignal then
        pcall(firesignal, a4.Activated)
        pcall(firesignal, a4.MouseButton1Click)
        return
    end
    if not getconnections then
        return
    end
    for k, v in { a4.Activated, a4.MouseButton1Click } do
        for k, v in getconnections(v) do
            local nF = v
            pcall(function()
                if nF.Fire then
                    nF:Fire()
                elseif nF.Function then
                    nF.Function()
                end
            end)
        end
    end
end
lm = fn612
kW = { ownedWeights = {}, strength = 0, cash = 0, rebirths = 0, equippedWeight = "" }
kS = fn88
lM = fn428
lj = { Brown = true }
lf = "Brown"
TailSystemRemote.OnClientEvent:Connect(onOnClientEvent)
lz(TailSystemRemote, "RequestSync")
rY_2 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = lH, Copyable = true }, "|", l9 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local l8 = {
    Info = rY_2:AddTab("Info", "info"),
    Main = rY_2:AddTab("Main", "zap"),
    Player = rY_2:AddTab("Player", "person-standing"),
    Settings = rY_2:AddTab("Settings", "settings")
}
for k, v in { l8.Main, l8.Player, l8.Settings } do
    l7(v)
end
mb, l6, lv, l5, lr, rY_2, l4, Label, kY, rY_1, lW, lK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local rY_5 = 0
repeat
    l7 = (rY_5 * 5 + 6) % 9 + 1
    if l7 <= 5 then
        if l7 <= 3 then
            if l7 <= 2 then
                if l7 <= 1 then
                    mc = (vector.create((rY_5 * 3 + 6) % 11 + 1, (rY_5 * 8 + 12) % 13 + 1, (rY_5 * 2 + 8) % 17 + 1))
                    md = (vector.create((rY_5 * 6 + 1) % 11 + 1, (rY_5 * 9 + 11) % 13 + 1, (rY_5 * 10 + 8) % 17 + 1))
                    me = (vector.create((rY_5 * 4 + 7) % 5 + 1, (rY_5 * 2 + 2) % 7 + 1, (rY_5 * 4 + 2) % 9 + 1))
                    if math.abs((vector.angle(mc, md, me))) - math.abs((vector.angle(md, mc, me))) == 0 then
                        l6 = "#6ec1ff"
                    else
                        rY_1 = "#6ec1ff"
                    end
                    rY_5 = (rY_5 + 11) % 72
                else
                    if (rY_5 * 3 + 9) * 17 % 4 == ((rY_5 * 3 + 9) * 17 + 8) % 4 then
                        lv = "#e8a34d"
                    else
                        l5 = "#e8a34d"
                    end
                    rY_5 = (rY_5 + 56) % 72
                end
            else
                local s3 = bit32.rrotate(bit32.bxor(bit32.lrotate(rY_5, 24), string.byte(tostring(lr))), 22)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(s3, 2409626981), 2203875018), (bit32.bxor(bit32.band(s3, 1885340314), 2206639211))), 2203875018), 2206639211) == s3 then
                    l5 = "#8b93a3"
                else
                    lv = "#8b93a3"
                end
                rY_5 = (rY_5 + 2) % 72
            end
        elseif l7 <= 4 then
            mc = (vector.create((rY_5 * 5 + 1) % 11 + 1, (rY_5 * 8 + 5) % 13 + 1, (rY_5 * 8 + 14) % 17 + 1))
            md = (vector.create((rY_5 * 3 + 4) % 11 + 1, (rY_5 * 2 + 6) % 13 + 1, (rY_5 * 1 + 7) % 17 + 1))
            me = (vector.create((rY_5 * 7 + 1) % 11 + 1, (rY_5 * 7 + 10) % 13 + 1, (rY_5 * 9 + 17) % 17 + 1))
            mf = (vector.create((rY_5 * 5 + 4) % 5 + 1, (rY_5 * 4 + 5) % 7 + 1, (rY_5 * 3 + 3) % 9 + 1))
            if vector.dot(vector.cross(mc, (vector.cross(md, me))), mf) == vector.dot(md * vector.dot(mc, me) - me * vector.dot(mc, md), mf) + 2 then
                l4 = "Unknown"
                pcall(fn699)
                lv = Label.Info:AddLeftGroupbox("Account", "circle-user")
                lv:AddLabel(lr("User", lW.Name, l9), true)
                lv:AddLabel(lr("Status", "Keyless", l9), true)
                lv:AddLabel(lr("Executor", "Unknown", l9), true)
                l6 = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                l6:AddLabel(LocalPlayer(rY_2 .. " [" .. tostring(game.PlaceId) .. "]", lK), true)
                l6:AddLabel(lr("Place ID", tostring(game.PlaceId), lK), true)
                l8 = l6:AddLabel(lr("Session time", "0s", mb), true)
            else
                lr = "Unknown"
                pcall(fn699)
                rY_2 = l8.Info:AddLeftGroupbox("Account", "circle-user")
                rY_2:AddLabel(lK("User", LocalPlayer.Name, mb), true)
                rY_2:AddLabel(lK("Status", "Keyless", mb), true)
                rY_2:AddLabel(lK("Executor", lr, mb), true)
                l4 = l8.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                l4:AddLabel(lW(l9 .. " [" .. tostring(game.PlaceId) .. "]", l6), true)
                l4:AddLabel(lK("Place ID", tostring(game.PlaceId), l6), true)
                Label = l4:AddLabel(lK("Session time", "0s", lv), true)
            end
            rY_5 = (rY_5 + 38) % 72
        else
            mc = (vector.create((rY_5 * 4 + 4) % 11 + 1, (rY_5 * 6 + 5) % 13 + 1, (rY_5 * 7 + 5) % 17 + 1))
            md = (vector.create((rY_5 * 3 + 6) % 11 + 1, (rY_5 * 2 + 2) % 13 + 1, (rY_5 * 4 + 4) % 17 + 1))
            local s4 = vector.dot(mc, md)
            if s4 * s4 >= vector.dot(mc, mc) * vector.dot(md, md) + 1 then
                l4 = tostring(game.JobId)
            else
                kY = tostring(game.JobId)
            end
            rY_5 = (rY_5 + 65) % 72
        end
    elseif l7 <= 7 then
        if l7 <= 6 then
            mc = {
                "vwlyuqu",
                "rbkwcmlx",
                "uupzybcw",
                "xelngknz",
                "nguhogn",
                "kcxhep",
                "plpddabm",
                "oseudgidatt",
                "oirfdaz",
                "gudeqre"
            }
            local sy = rY_5
            md = mc[sy % 10 + 1]
            if md:len() >= md:gsub("(.)", "%1%1", sy % 3 % 2 + 1):len() then
                kY = #rY_1 > 18
            else
                rY_1 = #kY > 18
            end
            rY_5 = (rY_5 + 20) % 72
        else
            if (rY_5 * 2 + 1) * 4 % 3 == ((rY_5 * 2 + 1) * 4 + 3) % 3 then
                lW = fn107
            else
                kY = fn107
            end
            rY_5 = (rY_5 + 2) % 72
        end
    elseif l7 <= 8 then
        l7 = (vector.create((rY_5 * 7 + 3) % 11 + 1, (rY_5 * 5 + 3) % 13 + 1, (rY_5 * 7 + 6) % 17 + 1))
        mc = (vector.create((rY_5 * 1 + 4) % 11 + 1, (rY_5 * 7 + 4) % 13 + 1, (rY_5 * 12 + 9) % 17 + 1))
        md = (vector.create((rY_5 * 6 + 5) % 11 + 1, (rY_5 * 3 + 7) % 13 + 1, (rY_5 * 2 + 15) % 17 + 1))
        me = (vector.create((rY_5 * 7 + 8) % 11 + 1, (rY_5 * 6 + 10) % 13 + 1, (rY_5 * 15 + 16) % 17 + 1))
        if vector.dot(vector.cross(l7, mc), (vector.cross(md, me))) == vector.dot(l7, md) * vector.dot(mc, me) - vector.dot(l7, me) * vector.dot(mc, md) then
            lK = fn804
        else
            l6 = fn804
        end
        rY_5 = (rY_5 + 65) % 72
    else
        local sN = bit32.rrotate(bit32.bxor(bit32.lrotate(rY_5, 29), string.byte(tostring(Label))), 8)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(sN, 3961785519), 2215273464), (bit32.bxor(bit32.band(sN, 333181776), 3415671650))), 2215273464), 3415671650) == sN then
            mb = "#7fd47f"
        else
            kY = "#7fd47f"
        end
        rY_5 = (rY_5 + 20) % 72
    end
until (rY_5 * 35 + 25) % 72 == 70
if rY_1 then
    rY_2 = 3
    repeat
        rY_5 = (vector.create((rY_2 * 2 + 8) % 11 + 1, (rY_2 * 1 + 13) % 13 + 1, (rY_2 * 1 + 9) % 17 + 1))
        l7 = (vector.create((rY_2 * 3 + 3) % 11 + 1, (rY_2 * 5 + 4) % 13 + 1, (rY_2 * 11 + 7) % 17 + 1))
        mc = (vector.create((rY_2 * 5 + 4) % 11 + 1, (rY_2 * 5 + 8) % 13 + 1, (rY_2 * 5 + 17) % 17 + 1))
        if vector.dot(vector.cross(rY_5, l7), mc) == vector.dot(vector.cross(l7, mc), rY_5) then
            rY_1 = string.sub(kY, 1, 18) .. "..."
        else
            kY = string.sub(rY_1, 1, 18) .. "..."
        end
        rY_2 = (rY_2 + 3) % 4
    until (rY_2 * 3 + 2) % 4 == 0
end
rY_2 = rY_1 or kY
lU, li, le, lb, k7, k3, kZ, kV, DonationsGroup, CurrentCamera, ly, lx, connection, connection2, lZ, lR, lY, lg, k8, kT, lD, k_, ln, lp, kU, lX, ll = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
l7 = rY_2
l4:AddLabel(lK("Server", l7, l5), true)
l4:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lU = os.clock()
task.spawn(worker)
local ScriptsGroup = l8.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(lW("Included in this hub", l5), true)
ScriptsGroup:AddLabel(lW(l9, l6), true)
local FeaturesGroup = l8.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(lW("Auto Charge", l6), true)
FeaturesGroup:AddLabel(lW("Auto Train", lv), true)
FeaturesGroup:AddLabel(lW("Auto Base", mb), true)
FeaturesGroup:AddLabel(lW("Auto Shop", l5), true)
local SocialsGroup = l8.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = lw })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = l8.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lw })
li = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
le = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
lb = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
k7 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
k3 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
kZ = "https://paypal.me/TheTruckerGOD"
kV = "https://venmo.com/u/miserablemusic"
mc = "#345d9d"
rY_5 = "#f7931a"
local mv = "#627eea"
local mu = "#26a17b"
local mt = "#14f195"
local ms = "#0070ba"
local mr = "#008cff"
if ((not kU or not lZ) and (not lZ or false) or (false or not lZ or (not kU or false))) and ((mt or not kU or "#14f195") and (not lZ and not lZ and (lZ or false))) and not (((not kU or not lZ) and (not lZ or false) or (false or not lZ or (not kU or false))) and ((mt or not kU or "#14f195") and (not lZ and not lZ and (lZ or false)))) then
    l8 = DonationsGroup.Info:AddRightGroupbox("Donations", "heart")
else
    DonationsGroup = l8.Info:AddRightGroupbox("Donations", "heart")
end
DonationsGroup:AddLabel(lW("All donations are optional but appreciated.", lv), true)
DonationsGroup:AddLabel(lW("If you donate you get a special role, just PING after you donate.", mb), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lW("LTC / Litecoin", mc), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(lW("BTC / Bitcoin", rY_5), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(lW("ETH / Ethereum", mv), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(lW("USDT", mu), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(lW("Solana", mt), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(lW("PayPal", ms), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(lW("Venmo", mr), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lW("Don't have any of the listed currencies but still wanna donate?", l5), true)
DonationsGroup:AddLabel(lW("DM me and we'll work something out.", l6), true)
local FaqGroup = l8.Info:AddRightGroupbox("FAQ", "circle-help")
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
local ChargeGroup = l8.Main:AddLeftGroupbox("Charge", "zap")
ChargeGroup:AddToggle("AutoCharge", { Text = "Auto Charge", Default = false })
ChargeGroup:AddToggle("AutoSkip", { Text = "Auto Skip", Default = false })
mf = l8.Main:AddLeftGroupbox("Strength", "dumbbell")
mf:AddToggle("AutoUseWeights", { Text = "Auto Use Weights", Default = false })
mf:AddToggle("Auto2x", { Text = "Auto 2x", Default = false })
mf:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
mf:AddToggle("AutoBuyWeights", { Text = "Auto Buy Weights", Default = false })
md = l8.Main:AddRightGroupbox("Base", "house")
md:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
md:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
md:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false })
rY_1 = l8.Main:AddRightGroupbox("Cosmetics", "sparkles")
rY_1:AddToggle("AutoEquipBestAura", { Text = "Auto Equip Best Owned Aura", Default = false })
rY_1:AddToggle("AutoBuyTails", { Text = "Auto Buy Tails", Default = false })
lZ = fn537
lR = fn639
task.spawn(fns.worker2)
task.spawn(worker3)
lY = fn731
task.spawn(worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
lg = fn650
k8 = fn326
kT = fn953
lD = function()
    if lV() then
        return
    end
    local pp = lg()
    local po = kT()
    if not po then
        lz(StrengthSystemRemote, "EquipTrainingTool", { weightId = pp })
        return
    end
    local pq = la()
    local pn = k2()
    if pq and pn and po.Parent ~= pq then
        pcall(function()
            pn:EquipTool(po)
        end)
    end
    local pq_1 = po:GetAttribute("WeightId") or pp
    lz(StrengthSystemRemote, "Train", { weightId = tostring(pq_1) })
end
task.spawn(worker7)
StrengthSystemRemote.OnClientEvent:Connect(onOnClientEvent2)
task.spawn(fns.worker8)
task.spawn(worker9)
task.spawn(worker10)
local MovementGroup = l8.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = l8.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
RunService.Stepped:Connect(fns.onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera = workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn517)
Toggles.WalkSpeedEnabled:OnChanged(fn695)
k_ = function(fT)
    pcall(function()
        game:GetService("GuiService"):SetGameplayPausedNotificationEnabled(not fT)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = game:GetService("CoreGui"):FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fT
        end
    end)
    if not fT then
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
Toggles.AntiGameplayPause:OnChanged(fn545)
task.spawn(antiGameplayPauseLoop)
local MenuGroup = l8.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ly = tick()
lx = tick()
pcall(function()
    for k, v in getconnections(LocalPlayer.Idled) do
        local qU = v
        pcall(function()
            qU:Disable()
        end)
    end
end)
ln = fn257
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
task.spawn(antiAfkLoop)
Library:OnUnload(fn83)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Linoria")
ThemeManager:ApplyToTab(l8.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/BeMonkeyForBrainrots")
local mj = SaveManager:BuildConfigSection(l8.Settings)
lp = fn957
kU = fn653
lX = fn281
ll = function(gY)
    local rB
    rB = nil
    local rC = type(gY) ~= "table" or type(gY.idx) ~= "string" or type(gY.type) ~= "string" or SaveManager.Ignore[gY.idx]
    if rC then
        return false
    end
    rB = lp(gY.type, gY.idx)
    if not rB then
        return false
    end
    local rC_1 = pcall(function()
        if gY.type == "Input" then
            if type(gY.text) ~= "string" then
                return
            end
            rB:SetValue(gY.text)
        elseif gY.type == "ColorPicker" then
            rB:SetValueRGB(Color3.fromHex(gY.value), gY.transparency)
        elseif gY.type == "KeyPicker" then
            rB:SetValue({ gY.key, gY.mode, gY.modifiers })
            if gY.mode == "Toggle" and gY.toggled ~= nil then
                rB.Toggled = gY.toggled
                rB:Update()
            end
        else
            rB:SetValue(gY.value)
        end
    end)
    return rC_1
end
mj:AddDivider()
mj:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
mj:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
mj:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
