local fns = {}
local si_2, si_3, si_4, si_5, si_7, si_8, si_9, si_10, si_11, si_13
local li
local l_
local k_
local Workspace
local lo
local l5
local PurchaseMoneyBoost
local lN
local lu
local mb
local lb
local lT
local kT
local lA
local Options
local kZ
local lG
local PlayerJumpRequest
local l4
local k4
local lM
local lt
local ma
local la
local lS
local lz
local lg
local lY
local kY
local Label
local connection2
local l3
local k3
local lL
local ls
local l9
local k9
local lR
local ly
local lf
local lX
local kX
local lE
local ll
local l2
local k2
local lr
local l8
local k8
local lQ
local connection
local le
local lW
local kW
local lD
local lk
local l1
local ItemConfigurations
local lJ
local lq
local l7
local k7
local lP
local lw
local ld
local lV
local kV
local lC
local lj
local l0
local k0
local lI
local lp
local l6
local k6
local lv
local mc
local lU
local kU
local lB
function fns.fn19()
    local p0 = os.clock()
    if p0 - la < 0.2 then
        return
    end
    la = p0
    pcall(function()
        PlayerJumpRequest:FireServer()
    end)
end
function fns.onCopyUSDTAddress()
    ly(lM, "Copied USDT address")
end
function fns.fn65()
    local Character = lC.Character
    local nd = Character and Character:FindFirstChild("HumanoidRootPart")
    return nd
end
function fns.fn77()
    return lv() > 0
end
function fns.fn79(gD, gE)
    local Type = gE.Type
    if Type == "Toggle" then
        return { idx = gD, type = "Toggle", value = gE.Value == true }
    elseif Type == "Slider" then
        return { idx = gD, type = "Slider", value = tostring(gE.Value) }
    elseif Type == "Dropdown" then
        return { idx = gD, type = "Dropdown", multi = gE.Multi == true, value = gE.Value }
    elseif Type == "Input" then
        local rg = gE.Value or ""
        return { idx = gD, type = "Input", text = tostring(rg) }
    elseif Type == "ColorPicker" then
        return { idx = gD, type = "ColorPicker", value = gE.Value:ToHex(), transparency = gE.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gD,
            type = "KeyPicker",
            mode = gE.Mode,
            key = gE.Value,
            modifiers = gE.Modifiers,
            toggled = gE.Toggled
        }
    else
        return nil
    end
end
function fns.fn81()
    local n2 = {}
    local DumplingBoxesContainer = Workspace:FindFirstChild("DumplingBoxesContainer")
    if DumplingBoxesContainer then
        for i, child in ipairs(DumplingBoxesContainer:GetChildren()) do
            if lp(child) then
                n2[#n2 + 1] = child
            end
        end
    end
    local ItemSpawners = Workspace:FindFirstChild("ItemSpawners")
    if ItemSpawners then
        for i, child in ipairs(ItemSpawners:GetChildren()) do
            for i, child in ipairs(child:GetChildren()) do
                if lp(child) then
                    n2[#n2 + 1] = child
                end
            end
        end
    end
    for i, child in ipairs(Workspace:GetChildren()) do
        if lp(child) then
            n2[#n2 + 1] = child
        end
    end
    return n2
end
function fns.fn89(N, O)
    if setclipboard then
        setclipboard(N)
    elseif toclipboard then
        toclipboard(N)
    end
    kT:Notify(O)
end
function fns.worker3()
    while not kT.Unloaded do
        local r6 = not le
        local r7 = lf("AutoJump") and r6
        if r7 then
            pcall(ma)
        end
        task.wait(0.2)
    end
end
function fns.onCopyEthereumAddress()
    ly(lR, "Copied Ethereum address")
end
local function fn176()
    if not l3.Fly.Value then
        local qp = l0()
        if qp then
            qp.PlatformStand = false
        end
    end
end
local function onInputChanged(gn)
    local UserInputType = gn.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        kY = tick()
    end
end
local function onCopyLitecoinAddress()
    ly(l_, "Copied Litecoin address")
end
local function fn211(X, Y, Z)
    return string.format("<b>%s</b> %s %s", X, li("-", "#5a6070"), li(Y, Z))
end
local function onCopyJoinScript_JobID()
    local eP = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, lA)
    ly(eP, "Copied join script to clipboard")
end
local function onCopySolanaAddress()
    ly(lI, "Copied Solana address")
end
local function antiGameplayPauseLoop()
    while not kT.Unloaded do
        task.wait(1)
        if l3.AntiGameplayPause.Value then
            kU(true)
        end
    end
end
local function fn237()
    local nf = tonumber(lC:GetAttribute("CarryCount")) or 0
    return nf
end
local function fn273(U, V)
    return string.format('<font color="%s">%s</font>', V, U)
end
local function worker2()
    while not kT.Unloaded do
        task.wait(2)
        if lf("AntiAfk") then
            local sa = tick() - kY
            local sb = tick() - kV
            if sa >= 300 and sb >= 60 then
                pcall(lX)
            else
                if sa < 300 and sb >= 300 then
                    pcall(lX)
                end
            end
        end
    end
end
local function worker5()
    while not kT.Unloaded do
        if le then
            task.wait(0.1)
            continue
        end
        if lf("AutoCollectSquishes") then
            le = true
            if lr() then
                pcall(k3)
            else
                local r2 = kW("CollectMode", "Best")
                local r3 = mb(r2)
                if r3 then
                    pcall(lW, r3)
                    pcall(k3)
                else
                    task.wait(0.35)
                end
            end
            le = false
        else
            if not le then
                ls(false)
            end
            task.wait(0.25)
        end
        task.wait(0.05)
    end
end
local function fn307()
    pcall(function()
        k8:FireServer()
    end)
end
local function onImportConfigFromClipboardTex()
    local rP_1
    local rN = Options.SaveManager_ImportSource.Value or ""
    local rN_1
    local rO = tostring(rN):match("^%s*(.-)%s*$")
    if rO == "" then
        kT:Notify("Paste an exported config into the box first")
        return
    end
    rN_1, rP_1 = pcall(lS.JSONDecode, lS, rO)
    local rO_1 = not rN_1
    local rT = if rO_1 then 1 else 0
    local rR = 526 * rT + 1506 * (1 - rT)
    local rS = 2682 * rT + 2725 * (1 - rT)
    if not ((rR * 3211 + rS * 3627 + rR * rS) % 16777213 == 12827332) then
        rO_1 = type(rP_1) ~= "table"
    end
    if not rO_1 then
        rO_1 = type(rP_1.objects) ~= "table"
    end
    if rO_1 then
        kT:Notify("That is not a valid exported config")
        return
    end
    local rN_2 = 0
    for i, v in ipairs(rP_1.objects) do
        if k9(v) then
            rN_2 += 1
        end
    end
    if rN_2 == 0 then
        kT:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local rP_2 = rN_2 == 1 and "" or "s"
    kT:Notify(("Imported %d setting%s"):format(rN_2, rP_2), 6)
end
local function fn323(cF)
    if not cF or not cF.Parent then
        return
    end
    local oP_1 = lb(cF)
    if not oP_1 then
        return
    end
    ls(false)
    lg(oP_1)
    task.wait(0.2)
    local oP_2 = lB(cF)
    if oP_2 then
        k0(oP_2)
        task.wait(0.25)
    end
end
local function fn337(cb)
    local ox = lu()
    if #ox == 0 then
        return nil
    elseif cb == "Random" then
        return ox[math.random(1, #ox)]
    else
        local oy = ox[1]
        local oz = l9(oy)
        local oA = #ox
        local oE = 2
        while oE <= oA do
            local oF = oE
            local oA_1 = l9(ox[oF])
            if oA_1 > oz then
                oy = ox[oF]
                oz = oA_1
            end
            oE += 1
        end
        return oy
    end
end
local function onCopyPayPalLink()
    ly(lG, "Copied PayPal link")
end
local function worker()
    local qg_1
    while true do
        task.wait(1)
        if kT.Unloaded then
            break
        end
        local qf = math.floor(os.clock() - lk)
        if qf < 60 then
            qg_1 = qf .. "s"
        elseif qf < 3600 then
            qg_1 = string.format("%dm %ds", qf // 60, qf % 60)
        else
            qg_1 = string.format("%dh %dm", qf // 3600, qf % 3600 // 60)
        end
        Label:SetText(k6("Session time", qg_1, l6))
    end
end
local function fn375()
    local rm = {}
    for i, v in ipairs({ l3, Options }) do
        for k, v in pairs(v) do
            local rn = type(v) == "table" and type(v.Type) == "string" and not l4.Ignore[k]
            if rn then
                local rn_1 = mc(k, v)
                if rn_1 then
                    rm[#rm + 1] = rn_1
                end
            end
        end
    end
    table.sort(rm, function(gR, gS)
        if gR.type ~= gS.type then
            return gR.type < gS.type
        end
        return gR.idx < gS.idx
    end)
    return { objects = rm }
end
local function fn377()
    return Workspace:FindFirstChild("Plot_" .. lC.Name)
end
local function fn380(ej)
    if lL[ej] then
        return lL[ej]
    end
    return (ej - 11) * 1 + 12
end
local function onExportConfigToClipboard()
    local rK_1
    local rJ_1
    rJ_1, rK_1 = pcall(lS.JSONEncode, lS, lT())
    if not rJ_1 then
        kT:Notify("Failed to encode the config")
        return
    end
    local rJ_2 = setclipboard or toclipboard
    local rJ_3 = type(rJ_2) ~= "function" or not pcall(rJ_2, rK_1)
    if rJ_3 then
        kT:Notify("Your executor does not support copying to the clipboard")
        return
    end
    kT:Notify("Config copied to clipboard", 6)
end
local function fn385()
    local leaderstats = lC:FindFirstChild("leaderstats")
    if not leaderstats then
        return
    end
    local pz = leaderstats.Money and leaderstats.Money.Value
    local pA = tonumber(pz) or 0
    local pA_1 = leaderstats.Rebirths and leaderstats.Rebirths.Value
    local py_1 = tonumber(pA_1) or 0
    local pA_2 = {}
    local Backpack = lC:FindFirstChild("Backpack")
    local Character = lC.Character
    for i, v in ipairs({ Backpack, Character }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Tool") then
                    pA_2[child.Name] = true
                end
            end
        end
    end
    local py_3 = k_.GetAllTrampolineNames()
    for i, v in ipairs(py_3) do
        if not pA_2[v] then
            local py_4 = k_.GetTrampolineByName(v)
            local pC_1 = py_4
            if pC_1 then
                local pD_1 = (tonumber(py_4.CashPrice))
                local p_ = if pD_1 then 1 else 0
                local pY = 938 * p_ + 1848 * (1 - p_)
                local pZ = 1379 * p_ + 2384 * (1 - p_)
                if not ((pY * 3520 + pZ * 1065 + pY * pZ) % 16777213 == 6063897) then
                    pD_1 = 0
                end
                pC_1 = pD_1 > 0
            end
            if pC_1 then
                local pC_2 = tonumber(py_4.RebirthRequirement) or 0
                local pD_2 = py_1 >= pC_2
                if pD_2 then
                    local pC_3 = tonumber(py_4.CashPrice) or 0
                    pD_2 = pA >= pC_3
                end
                if pD_2 then
                    k2:FireServer(v)
                    return
                end
            end
        end
    end
end
local function fn443(bh)
    local nt = lJ()
    local nu = not nt or typeof(bh) ~= "Vector3"
    if nu then
        return false
    end
    nt.AssemblyLinearVelocity = Vector3.zero
    nt.AssemblyAngularVelocity = Vector3.zero
    nt.CFrame = CFrame.new(bh + Vector3.new(0, 4, 0))
    return true
end
local function fn449(bD)
    local nQ = not bD
    local nW = if nQ then 1 else 0
    local nU = 1211 * nW + 2865 * (1 - nW)
    local nV = 2600 * nW + 3489 * (1 - nW)
    if not ((nU * 1478 + nV * 1012 + nU * nV) % 16777213 == 7569658) then
        nQ = not bD:IsA("Model")
    end
    if nQ then
        return false
    end
    local nQ_1 = bD:GetAttribute("IsSpawnedItem") ~= true and bD:GetAttribute("IsSquishy") ~= true
    if nQ_1 then
        return false
    end
    local Parent = bD.Parent
    if not Parent then
        return false
    elseif Parent.Name == "DumplingBoxesContainer" then
        return true
    else
        local nR = Parent.Name == "ItemSpawners"
        if not nR then
            nR = Parent.Parent and Parent.Parent.Name == "ItemSpawners"
        end
        if nR then
            return true
        elseif string.sub(Parent.Name, 1, 5) == "Plot_" then
            return false
        else
            local nR_1 = ll() or Workspace
            if bD:IsDescendantOf(nR_1) then
                local nR_2 = ll()
                local nS_2 = nR_2 and bD:IsDescendantOf(nR_2)
                if nS_2 then
                    return false
                end
                return Parent == Workspace
            end
            return Parent == Workspace
        end
    end
end
local function worker4()
    while not kT.Unloaded do
        if not le then
            if lf("AutoEquipBest") then
                pcall(kZ)
            end
            if lf("AutoUpgradePlaced") then
                pcall(l1)
            end
            if lf("AutoCollectMoney") then
                pcall(lo)
            end
            if lf("AutoRebirth") then
                pcall(lD)
            end
            if lf("AutoUpgradeMoney") then
                pcall(k4)
            end
            if lf("AutoUpgradeCarry") then
                pcall(kX)
            end
            if lf("AutoBuyTrampoline") then
                pcall(l8)
            end
        end
        task.wait(0.9)
    end
end
local function fn464(bd)
    local np = lJ()
    if not np then
        return nil
    end
    local nr = bd and true or false
    np.Anchored = nr
    if bd then
        np.AssemblyLinearVelocity = Vector3.zero
        np.AssemblyAngularVelocity = Vector3.zero
    end
    return np
end
local function onUnload()
    kT:Unload()
end
local function fn470()
    pcall(function()
        PurchaseMoneyBoost:FireServer(1)
    end)
end
local function fn483()
    local oL = lJ()
    if not oL then
        return
    end
    ls(false)
    oL.AssemblyLinearVelocity = Vector3.zero
    oL.AssemblyAngularVelocity = Vector3.zero
    oL.CFrame = CFrame.new(k7)
    local oM = os.clock() + 1.5
    while true do
        local oN = os.clock() < oM and lv() > 0 and not kT.Unloaded
        if oN then
            local oL_1 = lJ()
            if oL_1 then
                oL_1.CFrame = CFrame.new(k7)
            end
            task.wait(0.1)
            continue
        end
        break
    end
end
local function onJumpRequest()
    if kT.Unloaded then
        return
    end
    if l3.InfJump and l3.InfJump.Value then
        local qK_1 = l0()
        if qK_1 then
            qK_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function onInputBegan()
    kY = tick()
end
local function fn500()
    pcall(function()
        ld:InvokeServer()
    end)
end
local function fn504(by)
    if not by then
        return nil
    end
    for i, descendant in ipairs(by:GetDescendants()) do
        local nI = descendant:IsA("ProximityPrompt") and descendant.Enabled and descendant.ActionText == "Pick Up"
        if nI then
            return descendant
        end
    end
    return nil
end
local function fn513()
    local qb_1
    local qa_1
    if identifyexecutor then
        qb_1, qa_1 = identifyexecutor()
        local qc = qb_1 ~= ""
        local qd = type(qb_1) == "string" and qc
        if qd then
            local qc_1 = type(qa_1) == "string" and qa_1 ~= "" and qb_1 .. " " .. qa_1
            l5 = qc_1 or qb_1
        end
    end
end
local function fn521(ey)
    local DiscordGroup = ey:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lq })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lq })
end
local function fn525()
    local Character = lC.Character
    local na = Character and Character:FindFirstChildOfClass("Humanoid")
    return na
end
local function onCopyVenmoLink()
    ly(lz, "Copied Venmo link")
end
local function fn553(aA, aB)
    local m4 = Options[aA]
    if m4 == nil then
        return aB
    end
    return m4.Value
end
local function fn557(au)
    if kT.Unloaded then
        return false
    end
    local m1 = l3[au]
    return m1 ~= nil and m1.Value == true
end
local function fn561()
    local leaderstats = lC:FindFirstChild("leaderstats")
    if not leaderstats then
        return
    end
    local JumpLevel = leaderstats:FindFirstChild("JumpLevel")
    local Rebirths = leaderstats:FindFirstChild("Rebirths")
    if not (JumpLevel and Rebirths) then
        return
    end
    local p3_2 = tonumber(Rebirths.Value) or 0
    if p3_2 >= 10 then
        return
    end
    local p3_3 = lP(p3_2)
    local p5_2 = tonumber(JumpLevel.Value) or 0
    if p5_2 < p3_3 then
        return
    end
    pcall(function()
        lj:FireServer()
    end)
end
local function fn569()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    lY:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    lY:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    kV = tick()
end
local function fn607()
    ly(lw, "Copied Discord invite to clipboard")
end
local function fn610()
    local pr = ll()
    local ps = pr and pr:FindFirstChild("Spawn")
    local ps_1 = lJ()
    if not (ps and ps_1) then
        return
    end
    ls(false)
    ps_1.AssemblyLinearVelocity = Vector3.zero
    ps_1.AssemblyAngularVelocity = Vector3.zero
    ps_1.CFrame = ps.CFrame
end
local function fn645()
    if not l3.WalkSpeedEnabled.Value then
        local qr = l0()
        if qr then
            qr.WalkSpeed = 16
        end
    end
end
local function onStepped()
    if kT.Unloaded then
        return
    end
    if l3.NoClip and l3.NoClip.Value then
        local Character = lC.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local qw_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if qw_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn664(bP)
    local nX = bP:GetAttribute("Rarity") or ""
    local nY = lU[tostring(nX)] or 0
    local nY_1 = bP:GetAttribute("Mutation") or "Normal"
    local nZ = lQ[tostring(nY_1)] or 1
    local attr = bP:GetAttribute("OriginalName")
    local n_ = 0
    if type(attr) == "string" then
        local n0_1 = ItemConfigurations.Items[attr]
        if type(n0_1) == "table" then
            local nZ_2 = tonumber(n0_1.Income) or 0
            n_ = nZ_2
        end
    end
    local nZ_3 = tonumber(bP:GetAttribute("Level")) or 1
    return nY * 1000000000000000 + nZ * 1000000000000 + n_ * 1000 + nZ_3
end
local function fn680()
    kU(l3.AntiGameplayPause.Value)
end
local function fn712()
    local oR = ll()
    if not oR then
        return
    end
    for i, v in ipairs(lE) do
        local oS = oR:FindFirstChild(v)
        local oT = oS and oS:FindFirstChild("Slots")
        if oT then
            for i, child in ipairs(oT:GetChildren()) do
                local CollectTouch = child:FindFirstChild("CollectTouch")
                local oT_1 = CollectTouch and CollectTouch:FindFirstChildWhichIsA("TouchTransmitter")
                if oT_1 then
                    l7(CollectTouch)
                end
            end
        end
    end
end
local function onRenderStepped(fV)
    if kT.Unloaded then
        return
    end
    if l3.WalkSpeedEnabled and l3.WalkSpeedEnabled.Value then
        local qM_1 = l0()
        if qM_1 then
            qM_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if l3.Fly and l3.Fly.Value then
        local qM_3 = lJ()
        local qN = l0()
        local qO = Workspace.CurrentCamera
        local qT = if qO then 1 else 0
        local qR = 1262 * qT + 203 * (1 - qT)
        local qS = 3088 * qT + 2734 * (1 - qT)
        if not ((qR * 3880 + qS * 131 + qR * qS) % 16777213 == 9198144) then
            qO = lN
        end
        lN = qO
        if qM_3 and qN and lN then
            qN.PlatformStand = true
            local qN_1 = Vector3.zero
            if l2:IsKeyDown(Enum.KeyCode.W) then
                qN_1 = qN_1 + lN.CFrame.LookVector
            end
            if l2:IsKeyDown(Enum.KeyCode.S) then
                qN_1 = qN_1 - lN.CFrame.LookVector
            end
            if l2:IsKeyDown(Enum.KeyCode.A) then
                qN_1 = qN_1 - lN.CFrame.RightVector
            end
            if l2:IsKeyDown(Enum.KeyCode.D) then
                qN_1 = qN_1 + lN.CFrame.RightVector
            end
            if l2:IsKeyDown(Enum.KeyCode.Space) then
                qN_1 = qN_1 + Vector3.new(0, 1, 0)
            end
            if l2:IsKeyDown(Enum.KeyCode.LeftControl) then
                qN_1 = qN_1 - Vector3.new(0, 1, 0)
            end
            qM_3.Velocity = Vector3.zero
            if qN_1.Magnitude > 0 then
                qM_3.CFrame = qM_3.CFrame + qN_1.Unit * Options.FlySpeed.Value * fV
            end
        end
    end
end
local function onCopyBitcoinAddress()
    ly(lV, "Copied Bitcoin address")
end
local function fn773()
    connection:Disconnect()
    connection2:Disconnect()
    kU(false)
    ls(false)
    local se = l0()
    if se then
        se.PlatformStand = false
        se.WalkSpeed = 16
    end
end
local function fn774(cl, cm)
    local oH = os.clock()
    local oJ = oH + (cm or 3)
    while true do
        local oH_1 = os.clock() < oJ and cl and cl.Parent and not kT.Unloaded
        if not oH_1 then
            return lB(cl)
        end
        oH = lB(cl)
        if oH then
            break
        end
        task.wait(0.15)
    end
    return oH
end
local function fn777(gv, gw)
    local q9_1 = (gv == "Toggle" and l3 or Options)[gw]
    local q8_2 = type(q9_1) == "table" and q9_1.Type == gv
    return q8_2 and q9_1 or nil
end
local function onRscripts()
    ly(lt, "Copied Rscripts profile to clipboard")
end
kT = nil
kU = nil
kV = nil
kW = nil
kX = nil
kY = nil
kZ = nil
k_ = nil
k0 = nil
ItemConfigurations = nil
k2 = nil
k3 = nil
k4 = nil
PurchaseMoneyBoost = nil
k6 = nil
k7 = nil
k8 = nil
k9 = nil
la = nil
lb = nil
ld = nil
le = nil
lf = nil
lg = nil
li = nil
lj = nil
lk = nil
ll = nil
connection2 = nil
PlayerJumpRequest = nil
lo = nil
lp = nil
lq = nil
lr = nil
ls = nil
lt = nil
lu = nil
lv = nil
lw = nil
connection = nil
ly = nil
lz = nil
lA = nil
lB = nil
lC = nil
lD = nil
lE = nil
Label = nil
local lc, lh
lG = nil
Workspace = nil
lI = nil
lJ = nil
lL = nil
lM = nil
lN = nil
lP = nil
lQ = nil
lR = nil
lS = nil
lT = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
Options = nil
l_ = nil
l0 = nil
l1 = nil
l2 = nil
l3 = nil
l4 = nil
l5 = nil
l6 = nil
l7 = nil
l8 = nil
l9 = nil
ma = nil
mb = nil
mc = nil
local lK, lO, mo, mp, mq, mr, ms
lK = nil
lO = nil
local mt, mu, mv, mw, mx, my, mz, mA, mB, mC, mE, mF, mG
si_5, si_7, mA, l2, lY, lS, lO, lK, Workspace, lC, mx, lw, lt, si_4, si_8, PlayerJumpRequest, lj, lh, ld, k8, PurchaseMoneyBoost, k2, ItemConfigurations, k_, si_2, kT, mB, l4, l3, Options, lU, lQ, lL, my, lE, si_9, mC, l6, mz, l_, lV, lR, lM, lI, lG, lz, mw, mv, mt, ms, mr, mq, mp, le, la, k7, si_11, mo, ly, lq, li, k6, lf, kW, l0, lJ, lv, lr, ll, lb, si_3, ls, lg, k0, l7, lB, lp, l9, lu, mb, k3, lW, lo, l1, mu, k4, kX, l8, kZ, ma, lP, lD, si_13 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local si_1 = 124
repeat
    local mD = (si_1 * 5 + 1) % 39 + 1
    if mD <= 20 then
        if mD <= 10 then
            if mD <= 5 then
                if mD <= 3 then
                    if mD <= 2 then
                        if mD <= 1 then
                            mE = {
                                "mocmtkpla",
                                "pcdmyent",
                                "iuwrafnc",
                                "ejk",
                                "tyyghh",
                                "ucfnxf",
                                "vlxxmjjm",
                                "rqvix",
                                "wmivcu",
                                "swb",
                                "tsv"
                            }
                            local th = si_1
                            mF = mE[th % 11 + 1]
                            if mF:len() >= mF:reverse():rep(th % 3 + 2):len() then
                                lK = game:GetService("GuiService")
                                lO = game:GetService("CoreGui")
                            else
                                lO = game:GetService("GuiService")
                                lK = game:GetService("CoreGui")
                            end
                            si_1 = (si_1 + 8) % 156
                        else
                            if si_1 * 41788791 + 9 + 5 <= si_1 * 41788791 + 9 + 5 + 1 then
                                Workspace = game:GetService("Workspace")
                                lC = si_5.LocalPlayer
                            else
                                lC = game:GetService("Workspace")
                                si_5 = Workspace.LocalPlayer
                            end
                            si_1 = (si_1 + 47) % 156
                        end
                    else
                        mE = {
                            "fyqpwmkzhq",
                            "wtwmdyzpzwy",
                            "nvlew",
                            "nugx",
                            "vlclavic",
                            "ldjlk",
                            "tnctho",
                            "ucuib",
                            "hzg",
                            "coukhvugaj",
                            "ggavjegg"
                        }
                        if mE[(si_1 * 63 + 55) % 11 + 1] <= mE[(si_1 * 63 + 55) % 11 + 1] then
                            mx = "Jump Beanstalk for VIRAL Squishy!"
                        else
                            kX = "Jump Beanstalk for VIRAL Squishy!"
                        end
                        si_1 = (si_1 + 86) % 156
                    end
                elseif mD <= 4 then
                    if (si_1 * 3 + 7) * 9 % 4 == ((si_1 * 3 + 7) * 9 + 10) % 4 then
                        l9 = "https://discord.gg/ehKVq7pf7v"
                    else
                        lw = "https://discord.gg/ehKVq7pf7v"
                    end
                    si_1 = (si_1 + 8) % 156
                else
                    if si_1 * 67319125 + 9 + 4 >= si_1 * 67319125 + 9 + 4 + 1 then
                        kT = "https://rscripts.net/@Ouroboros"
                    else
                        lt = "https://rscripts.net/@Ouroboros"
                    end
                    si_1 = (si_1 + 86) % 156
                end
            elseif mD <= 8 then
                if mD <= 7 then
                    if mD <= 6 then
                        local ti = bit32.rrotate(bit32.bxor(bit32.lrotate(si_1, 29), string.byte(tostring(l7))), 29)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(ti, 152039494), 30), 2185493521) ~= bit32.lrotate(ti, 30) then
                            si_7 = si_4:WaitForChild("Events")
                        else
                            si_4 = si_7:WaitForChild("Events")
                        end
                        si_1 = (si_1 + 47) % 156
                    else
                        if (si_1 * 3 + 6) * 13 % 4 == ((si_1 * 3 + 6) * 13 + 10) % 4 then
                            si_7 = si_8:WaitForChild("Modules")
                        else
                            si_8 = si_7:WaitForChild("Modules")
                        end
                        si_1 = (si_1 + 47) % 156
                    end
                else
                    mE = (vector.create((si_1 * 1 + 8) % 11 + 1, (si_1 * 8 + 8) % 13 + 1, (si_1 * 7 + 9) % 17 + 1))
                    local s8 = vector.floor(mE) + vector.ceil(mE * -1)
                    if vector.dot(s8, s8) == 0 then
                        PlayerJumpRequest = si_4:WaitForChild("PlayerJumpRequest")
                        lj = si_4:WaitForChild("RequestRebirth")
                        lh = si_4:WaitForChild("RequestSlotUpgrade")
                        ld = si_4:WaitForChild("EquipBest")
                    else
                        lj = PlayerJumpRequest:WaitForChild("PlayerJumpRequest")
                        ld = PlayerJumpRequest:WaitForChild("RequestRebirth")
                        si_4 = PlayerJumpRequest:WaitForChild("RequestSlotUpgrade")
                        lh = PlayerJumpRequest:WaitForChild("EquipBest")
                    end
                    si_1 = (si_1 + 86) % 156
                end
            elseif mD <= 9 then
                mE = {
                    "xfgmajorrol",
                    "ciarhtbdpw",
                    "hqhw",
                    "jxepxv",
                    "frfjfdczt",
                    "yladbk",
                    "mako",
                    "xfrok",
                    "yrslxev",
                    "mchlwyatvpu",
                    "rvyzhcdl",
                    "fhbe"
                }
                local tp = si_1
                mF = mE[tp % 12 + 1]
                if mF:len() >= mF:gsub("(.)", "%1%1", tp % 3 % 2 + 1):len() then
                    si_4 = k8:WaitForChild("PurchaseCarry")
                else
                    k8 = si_4:WaitForChild("PurchaseCarry")
                end
                si_1 = (si_1 + 125) % 156
            else
                mE = (vector.create((si_1 * 6 + 8) % 11 + 1, (si_1 * 1 + 1) % 13 + 1, (si_1 * 6 + 6) % 17 + 1))
                mF = (vector.create((si_1 * 3 + 9) % 11 + 1, (si_1 * 6 + 5) % 13 + 1, (si_1 * 3 + 13) % 17 + 1))
                mG = (vector.create((si_1 * 6 + 8) % 11 + 1, (si_1 * 1 + 3) % 13 + 1, (si_1 * 2 + 14) % 17 + 1))
                if vector.dot(vector.cross(mE, mF), mG) == vector.dot(vector.cross(mF, mG), mE) + 4 then
                    si_4 = PurchaseMoneyBoost:WaitForChild("PurchaseMoneyBoost")
                else
                    PurchaseMoneyBoost = si_4:WaitForChild("PurchaseMoneyBoost")
                end
                si_1 = (si_1 + 86) % 156
            end
        elseif mD <= 15 then
            if mD <= 13 then
                if mD <= 12 then
                    if mD <= 11 then
                        mE = (vector.create((si_1 * 5 + 8) % 11 + 1, (si_1 * 4 + 2) % 13 + 1, (si_1 * 5 + 11) % 17 + 1))
                        mF = (vector.create((si_1 * 6 + 4) % 11 + 1, (si_1 * 2 + 4) % 13 + 1, (si_1 * 15 + 2) % 17 + 1))
                        local sZ = vector.cross(mE, mF)
                        local s_ = vector.dot(mE, mF)
                        if vector.dot(sZ, sZ) + s_ * s_ == vector.dot(mE, mE) * vector.dot(mF, mF) + 1 then
                            si_8 = ItemConfigurations:WaitForChild("RequestBuyTrampolineCash")
                            k2 = require(si_4:WaitForChild("ItemConfigurations"))
                        else
                            k2 = si_4:WaitForChild("RequestBuyTrampolineCash")
                            ItemConfigurations = require(si_8:WaitForChild("ItemConfigurations"))
                        end
                        si_1 = (si_1 + 86) % 156
                    else
                        if (si_1 * 2 + 3) * 7 % 3 == ((si_1 * 2 + 3) * 7 + 4) % 3 then
                            si_8 = require(k_:WaitForChild("TrampolineConfig"))
                        else
                            k_ = require(si_8:WaitForChild("TrampolineConfig"))
                        end
                        si_1 = (si_1 + 8) % 156
                    end
                else
                    mE = (vector.create((si_1 * 1 + 7) % 11 + 1, (si_1 * 8 + 4) % 13 + 1, (si_1 * 10 + 1) % 17 + 1))
                    mF = (vector.create((si_1 * 1 + 2) % 11 + 1, (si_1 * 2 + 3) % 13 + 1, (si_1 * 13 + 15) % 17 + 1))
                    local tj = vector.dot(mE, mF)
                    if tj * tj >= vector.dot(mE, mE) * vector.dot(mF, mF) + 1 then
                        lP = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        si_2 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    si_1 = (si_1 + 125) % 156
                end
            elseif mD <= 14 then
                if si_1 * 42074957 + 6 + 3 >= si_1 * 42074957 + 6 + 3 + 1 then
                    si_2 = loadstring(game:HttpGet(kT .. "Library.lua"))()
                else
                    kT = loadstring(game:HttpGet(si_2 .. "Library.lua"))()
                end
                si_1 = (si_1 + 86) % 156
            else
                local s4 = bit32.rrotate(bit32.bxor(bit32.lrotate(si_1, 1), string.byte(tostring(lS))), 23)
                if bit32.bxor(bit32.lrotate(bit32.bxor(s4, 2991825796), 18), 2383595854) == bit32.lrotate(s4, 18) then
                    mB = loadstring(game:HttpGet(si_2 .. "addons/ThemeManager.lua"))()
                else
                    si_2 = loadstring(game:HttpGet(mB .. "addons/ThemeManager.lua"))()
                end
                si_1 = (si_1 + 125) % 156
            end
        elseif mD <= 18 then
            if mD <= 17 then
                if mD <= 16 then
                    local sT = bit32.rrotate(bit32.bxor(bit32.lrotate(si_1, 24), string.byte(tostring(l6))), 21)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(sT, 24592702), 24), 1040283457) ~= bit32.lrotate(sT, 24) then
                        lU = loadstring(game:HttpGet(lQ .. "addons/SaveManager.lua"))()
                        l4 = Options.Toggles
                        l3 = Options.Options
                        si_2 = {
                            Mythical = 6,
                            Legendary = 5,
                            Epic = 4,
                            Uncommon = 2,
                            Ruby = 6,
                            Robux = 9,
                            Rare = 3,
                            Secret = 8,
                            Celestial = 7,
                            Common = 1
                        }
                        kT = { Golden = 2, Diamond = 3, Lava = 7, Ruby = 4, Neon = 5, Normal = 1, Radioactive = 6, Aura = 8 }
                    else
                        l4 = loadstring(game:HttpGet(si_2 .. "addons/SaveManager.lua"))()
                        l3 = kT.Toggles
                        Options = kT.Options
                        lU = {
                            Common = 1,
                            Uncommon = 2,
                            Rare = 3,
                            Epic = 4,
                            Legendary = 5,
                            Mythical = 6,
                            Celestial = 7,
                            Secret = 8,
                            Robux = 9,
                            Ruby = 6
                        }
                        lQ = { Normal = 1, Golden = 2, Diamond = 3, Ruby = 4, Neon = 5, Radioactive = 6, Lava = 7, Aura = 8 }
                    end
                    si_1 = (si_1 + 86) % 156
                else
                    mE = {
                        "nfyiowcq",
                        "gstyryyf",
                        "tzvvd",
                        "lvlk",
                        "kxxzctdt",
                        "paclqvu",
                        "yzzvjvsqcxf",
                        "rrpowpc",
                        "bcdp",
                        "olfamewel",
                        "gfc"
                    }
                    local to = si_1
                    mF = mE[to % 11 + 1]
                    if mF:len() >= mF:reverse():rep(to % 3 + 2):len() then
                        lq = {
                            [2] = 30,
                            [1] = 22,
                            [4] = 46,
                            [3] = 38,
                            [9] = 86,
                            [6] = 62,
                            [0] = 15,
                            [7] = 70,
                            [5] = 54,
                            [8] = 78
                        }
                        lL = { "Best", "Random" }
                        my = { "Floor1", "Floor3", "Floor2" }
                        lE = fns.fn89
                        ly = fn607
                    else
                        lL = {
                            [0] = 15,
                            [1] = 22,
                            [2] = 30,
                            [3] = 38,
                            [4] = 46,
                            [5] = 54,
                            [6] = 62,
                            [7] = 70,
                            [8] = 78,
                            [9] = 86
                        }
                        my = { "Best", "Random" }
                        lE = { "Floor1", "Floor2", "Floor3" }
                        ly = fns.fn89
                        lq = fn607
                    end
                    si_1 = (si_1 + 86) % 156
                end
            else
                if (si_1 * 3 + 5) * 9 % 4 == ((si_1 * 3 + 5) * 9 + 7) % 4 then
                    l6 = fn273
                    mC = fn211
                    li = "#7fd47f"
                    si_9 = "#6ec1ff"
                    k6 = "#e8a34d"
                else
                    li = fn273
                    k6 = fn211
                    si_9 = "#7fd47f"
                    mC = "#6ec1ff"
                    l6 = "#e8a34d"
                end
                si_1 = (si_1 + 47) % 156
            end
        elseif mD <= 19 then
            mE = {
                "szmtmk",
                "lqcytsdpy",
                "rqilqjpj",
                "jmenffcm",
                "idin",
                "urrnudnvlzoh",
                "mjqtlez",
                "fsmzd",
                "uuvit",
                "hvcjzt",
                "dsnkovivuxj"
            }
            if mE[(si_1 * 35 + 83) % 11 + 1] <= mE[(si_1 * 35 + 83) % 11 + 1] then
                mz = "#8b93a3"
                l_ = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                lV = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            else
                lV = "#8b93a3"
                mz = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                l_ = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
            end
            si_1 = (si_1 + 125) % 156
        else
            local s6 = bit32.rrotate(bit32.bxor(bit32.lrotate(si_1, 15), string.byte(tostring(lQ))), 17)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(s6, 4056807649), 1637246320), (bit32.bxor(bit32.band(s6, 238159646), 1856303219))), 1637246320), 1856303219) == s6 then
                lR = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
            else
                k8 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
            end
            si_1 = (si_1 + 47) % 156
        end
    elseif mD <= 30 then
        if mD <= 25 then
            if mD <= 23 then
                if mD <= 22 then
                    if mD <= 21 then
                        if (not lW and not li and (not li and not lW) and (lW or not lW or not lW and not li) or lW and not lW and (lW or li) and ((not lW or not li) and (li or not lW))) and not (not lW and not li and (not li and not lW) and (lW or not lW or not lW and not li) or lW and not lW and (lW or li) and ((not lW or not li) and (li or not lW))) then
                            lG = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                            lM = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                            lI = "https://paypal.me/TheTruckerGOD"
                            mw = "https://venmo.com/u/miserablemusic"
                            lz = "#345d9d"
                        else
                            lM = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                            lI = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
                            lG = "https://paypal.me/TheTruckerGOD"
                            lz = "https://venmo.com/u/miserablemusic"
                            mw = "#345d9d"
                        end
                        si_1 = (si_1 + 86) % 156
                    else
                        if (si_1 * 2 + 4) * 13 % 3 == ((si_1 * 2 + 4) * 13 + 0) % 3 then
                            mv = "#f7931a"
                            mt = "#627eea"
                            ms = "#26a17b"
                        else
                            mt = "#f7931a"
                            ms = "#627eea"
                            mv = "#26a17b"
                        end
                        si_1 = (si_1 + 8) % 156
                    end
                else
                    local s7 = bit32.rrotate(bit32.bxor(bit32.lrotate(si_1, 3), string.byte(tostring(lv))), 29)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(s7, 720130944), 30), 180032736) == bit32.lrotate(s7, 30) then
                        mr = "#14f195"
                        mq = "#0070ba"
                        mp = "#008cff"
                    else
                        mq = "#14f195"
                        mp = "#0070ba"
                        mr = "#008cff"
                    end
                    si_1 = (si_1 + 47) % 156
                end
            elseif mD <= 24 then
                if (si_1 * 1 + 4) * 5 % 4 == ((si_1 * 1 + 4) * 5 + 4) % 4 then
                    lf = fn557
                    kW = fn553
                else
                    kW = fn557
                    lf = fn553
                end
                si_1 = (si_1 + 125) % 156
            else
                if ((not lY or not l2 or (not si_3 or kX)) and ((lY or not lv) and (lv and not l2)) or (not kX and si_3 or lv and si_3 or (l2 or lY or lY and lv))) and not ((not lY or not l2 or (not si_3 or kX)) and ((lY or not lv) and (lv and not l2)) or (not kX and si_3 or lv and si_3 or (l2 or lY or lY and lv))) then
                    lJ = fn525
                    l0 = fns.fn65
                    lr = fn237
                    lv = fns.fn77
                else
                    l0 = fn525
                    lJ = fns.fn65
                    lv = fn237
                    lr = fns.fn77
                end
                si_1 = (si_1 + 47) % 156
            end
        elseif mD <= 28 then
            if mD <= 27 then
                if mD <= 26 then
                    local tm = bit32.rrotate(bit32.bxor(bit32.lrotate(si_1, 23), string.byte(tostring(ly))), 12)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tm, 1942415905), 621674699), (bit32.bxor(bit32.band(tm, 2352551390), 1390656822))), 621674699), 1390656822) == tm then
                        ll = fn377
                        lb = function(aU)
                            local ni_3
                            local nh_3
                            if not aU then
                                return nil
                            end
                            nh_3, ni_3 = pcall(function()
                                return aU:GetPivot()
                            end)
                            if nh_3 and ni_3 then
                                local Position = ni_3.Position
                                local ni_4 = tonumber(aU:GetAttribute("SpawnY"))
                                if ni_4 then
                                    return Vector3.new(Position.X, ni_4, Position.Z)
                                end
                                return Position
                            end
                            return nil
                        end
                        si_3 = function(a0)
                            local nl
                            if typeof(a0) ~= "Vector3" then
                                return
                            end
                            if not Workspace.StreamingEnabled then
                                return
                            end
                            nl = false
                            task.spawn(function()
                                pcall(function()
                                    lC:RequestStreamAroundAsync(a0, 2)
                                end)
                                nl = true
                            end)
                            local nm = os.clock() + 2.2
                            while true do
                                local nn = not nl and os.clock() < nm and not kT.Unloaded
                                if nn then
                                    task.wait()
                                    continue
                                end
                                break
                            end
                        end
                    else
                        si_3 = fn377
                        ll = function(aU)
                            local ni_1
                            local nh_1
                            if not aU then
                                return nil
                            end
                            nh_1, ni_1 = pcall(function()
                                return aU:GetPivot()
                            end)
                            if nh_1 and ni_1 then
                                local Position = ni_1.Position
                                local ni_2 = tonumber(aU:GetAttribute("SpawnY"))
                                if ni_2 then
                                    return Vector3.new(Position.X, ni_2, Position.Z)
                                end
                                return Position
                            end
                            return nil
                        end
                        lb = function(a0)
                            local nl
                            if typeof(a0) ~= "Vector3" then
                                return
                            end
                            if not Workspace.StreamingEnabled then
                                return
                            end
                            nl = false
                            task.spawn(function()
                                pcall(function()
                                    lC:RequestStreamAroundAsync(a0, 2)
                                end)
                                nl = true
                            end)
                            local nm = os.clock() + 2.2
                            while true do
                                local nn = not nl and os.clock() < nm and not kT.Unloaded
                                if nn then
                                    task.wait()
                                    continue
                                end
                                break
                            end
                        end
                    end
                    si_1 = (si_1 + 86) % 156
                else
                    if (lz or not l2) and (ma and not lz) and (not ma and lb or (not l_ or lz)) and not ((lz or not l2) and (ma and not lz) and (not ma and lb or (not l_ or lz))) then
                        k0 = fn464
                        ls = fn443
                        lg = function(bm)
                            if not bm or not bm.Parent then
                                return false
                            end
                            return pcall(function()
                                if fireproximityprompt then
                                    fireproximityprompt(bm)
                                else
                                    bm:InputHoldBegin()
                                    task.wait(0.05)
                                    bm:InputHoldEnd()
                                end
                            end)
                        end
                    else
                        ls = fn464
                        lg = fn443
                        k0 = function(bm)
                            if not bm or not bm.Parent then
                                return false
                            end
                            return pcall(function()
                                if fireproximityprompt then
                                    fireproximityprompt(bm)
                                else
                                    bm:InputHoldBegin()
                                    task.wait(0.05)
                                    bm:InputHoldEnd()
                                end
                            end)
                        end
                    end
                    si_1 = (si_1 + 47) % 156
                end
            else
                mE = (vector.create((si_1 * 4 + 1) % 11 + 1, (si_1 * 7 + 11) % 13 + 1, (si_1 * 12 + 14) % 17 + 1))
                local s5 = vector.floor(mE) + vector.ceil(mE * -1)
                if vector.dot(s5, s5) == 2 then
                    lu = function(bq)
                        local nF = lJ()
                        if not nF or not bq or not bq.Parent then
                            return false
                        elseif typeof(firetouchinterest) ~= "function" then
                            return false
                        else
                            local nG_2 = pcall(function()
                                firetouchinterest(nF, bq, 0)
                                firetouchinterest(nF, bq, 1)
                            end)
                            return nG_2
                        end
                    end
                    lp = fn504
                    l7 = fn449
                    lB = fn664
                    l9 = fns.fn81
                else
                    l7 = function(bq)
                        local nF = lJ()
                        if not nF or not bq or not bq.Parent then
                            return false
                        elseif typeof(firetouchinterest) ~= "function" then
                            return false
                        else
                            local nG_1 = pcall(function()
                                firetouchinterest(nF, bq, 0)
                                firetouchinterest(nF, bq, 1)
                            end)
                            return nG_1
                        end
                    end
                    lB = fn504
                    lp = fn449
                    l9 = fn664
                    lu = fns.fn81
                end
                si_1 = (si_1 + 125) % 156
            end
        elseif mD <= 29 then
            mE = (vector.create((si_1 * 7 + 9) % 11 + 1, (si_1 * 7 + 3) % 13 + 1, (si_1 * 10 + 1) % 17 + 1))
            mF = (vector.create((si_1 * 7 + 2) % 11 + 1, (si_1 * 3 + 9) % 13 + 1, (si_1 * 9 + 6) % 17 + 1))
            mG = (vector.create((si_1 * 2 + 4) % 5 + 1, (si_1 * 4 + 2) % 7 + 1, (si_1 * 3 + 6) % 9 + 1))
            if math.abs((vector.angle(mE, mF, mG))) - math.abs((vector.angle(mF, mE, mG))) == 4 then
                le = fn337
                la = fn774
                mb = 0
            else
                mb = fn337
                le = false
                la = 0
            end
            si_1 = (si_1 + 47) % 156
        else
            mE = {
                "cmvzxz",
                "npwa",
                "zxoghg",
                "yypcm",
                "wzf",
                "cvubfpeg",
                "phdkpkxieum",
                "kxmtzfiov",
                "gzreihqvm",
                "wfiu",
                "euskqhjur",
                "xbzzynozkbv"
            }
            local sM = si_1
            mF = mE[sM % 12 + 1]
            if mF:len() >= mF:gsub("(.)", "%1%1", sM % 3 % 2 + 1):len() then
                lw = Vector3.new(8000, 4000, 8000)
            else
                k7 = Vector3.new(8000, 4000, 8000)
            end
            si_1 = (si_1 + 8) % 156
        end
    elseif mD <= 35 then
        if mD <= 33 then
            if mD <= 32 then
                if mD <= 31 then
                    if (si_1 * 2 + 1) * 10 % 3 == ((si_1 * 2 + 1) * 10 + 0) % 3 then
                        k3 = fn483
                        lW = fn323
                        lo = fn712
                        l1 = function()
                            local o8 = ll()
                            if not o8 then
                                return
                            end
                            for i, v in ipairs(lE) do
                                local o9 = o8:FindFirstChild(v)
                                local pa = o9 and o9:GetAttribute("Unlocked") == true
                                if pa then
                                    local Slots = o9:FindFirstChild("Slots")
                                    if Slots then
                                        for i, child in ipairs(Slots:GetChildren()) do
                                            local o7, o6
                                            local Spawn = child:FindFirstChild("Spawn")
                                            local pa_9 = Spawn and Spawn:FindFirstChild("VisualItem")
                                            if pa_9 then
                                                local UpgradePart = child:FindFirstChild("UpgradePart")
                                                local pa_10 = UpgradePart and UpgradePart:FindFirstChild("UpgradeGUI")
                                                local o9_7 = pa_10
                                                if pa_10 then
                                                    pa_10 = o9_7:FindFirstChild("Price", true)
                                                end
                                                local pb = o9_7
                                                local pc = pa_10
                                                if pb then
                                                    pb = o9_7:FindFirstChild("Levels", true)
                                                end
                                                local pd = pb
                                                if pa_10 then
                                                    pa_10 = tostring(pc.Text)
                                                end
                                                local pb_5 = pa_10 or ""
                                                local pa_11 = pd
                                                if pa_11 then
                                                    pa_11 = tostring(pd.Text)
                                                end
                                                local pb_6 = pa_11 or ""
                                                local pb_7 = pb_5 ~= "MAX" and not string.find(pb_6, "MAX", 1, true)
                                                if pb_7 then
                                                    local pa_13 = o9_7 and o9_7:GetAttribute("SlotName")
                                                    local pb_8 = pa_13 or child.Name
                                                    local pa_14 = o9_7
                                                    o7 = pb_8
                                                    if pa_14 then
                                                        pa_14 = o9_7:GetAttribute("FloorName")
                                                    end
                                                    o6 = pa_14 or v
                                                    pcall(function()
                                                        lh:FireServer(o6, o7)
                                                    end)
                                                    task.wait(0.08)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        mu = fn610
                    else
                        mu = fn483
                        lo = fn323
                        l1 = fn712
                        lW = function()
                            local o8 = ll()
                            if not o8 then
                                return
                            end
                            for i, v in ipairs(lE) do
                                local o9 = o8:FindFirstChild(v)
                                local pa = o9 and o9:GetAttribute("Unlocked") == true
                                if pa then
                                    local Slots = o9:FindFirstChild("Slots")
                                    if Slots then
                                        for i, child in ipairs(Slots:GetChildren()) do
                                            local o7, o6
                                            local Spawn = child:FindFirstChild("Spawn")
                                            local pa_2 = Spawn and Spawn:FindFirstChild("VisualItem")
                                            if pa_2 then
                                                local UpgradePart = child:FindFirstChild("UpgradePart")
                                                local pa_3 = UpgradePart and UpgradePart:FindFirstChild("UpgradeGUI")
                                                local o9_3 = pa_3
                                                if pa_3 then
                                                    pa_3 = o9_3:FindFirstChild("Price", true)
                                                end
                                                local pb = o9_3
                                                local pc = pa_3
                                                if pb then
                                                    pb = o9_3:FindFirstChild("Levels", true)
                                                end
                                                local pd = pb
                                                if pa_3 then
                                                    pa_3 = tostring(pc.Text)
                                                end
                                                local pb_1 = pa_3 or ""
                                                local pa_4 = pd
                                                if pa_4 then
                                                    pa_4 = tostring(pd.Text)
                                                end
                                                local pb_2 = pa_4 or ""
                                                local pb_3 = pb_1 ~= "MAX" and not string.find(pb_2, "MAX", 1, true)
                                                if pb_3 then
                                                    local pa_6 = o9_3 and o9_3:GetAttribute("SlotName")
                                                    local pb_4 = pa_6 or child.Name
                                                    local pa_7 = o9_3
                                                    o7 = pb_4
                                                    if pa_7 then
                                                        pa_7 = o9_3:GetAttribute("FloorName")
                                                    end
                                                    o6 = pa_7 or v
                                                    pcall(function()
                                                        lh:FireServer(o6, o7)
                                                    end)
                                                    task.wait(0.08)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        k3 = fn610
                    end
                    si_1 = (si_1 + 125) % 156
                else
                    if (si_1 * 2 + 9) * 13 % 3 == ((si_1 * 2 + 9) * 13 + 7) % 3 then
                        l8 = fn470
                        kZ = fn307
                        kX = fn385
                        ma = fn500
                        k4 = fns.fn19
                    else
                        k4 = fn470
                        kX = fn307
                        l8 = fn385
                        kZ = fn500
                        ma = fns.fn19
                    end
                    si_1 = (si_1 + 86) % 156
                end
            else
                if (si_1 * 1 + 5) * 9 % 4 == ((si_1 * 1 + 5) * 9 + 12) % 4 then
                    lP = fn380
                    lD = fn561
                else
                    lD = fn380
                    lP = fn561
                end
                si_1 = (si_1 + 86) % 156
            end
        elseif mD <= 34 then
            if (si_1 * 2 + 9) * 7 % 3 == ((si_1 * 2 + 9) * 7 + 2) % 3 then
                kT = mx:CreateWindow({
                    NotifySide = "Right",
                    Title = "Ouroboros Hub",
                    ShowCustomCursor = false,
                    Footer = { "|", lw, { Text = si_11, Copyable = true } },
                    Icon = 12645376577,
                    CornerRadius = 10
                })
            else
                si_11 = kT:CreateWindow({
                    Title = "Ouroboros Hub",
                    Footer = { { Text = lw, Copyable = true }, "|", mx },
                    Icon = 12645376577,
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 10
                })
            end
            si_1 = (si_1 + 47) % 156
        else
            mE = (vector.create((si_1 * 2 + 1) % 11 + 1, (si_1 * 5 + 12) % 13 + 1, (si_1 * 7 + 4) % 17 + 1))
            mF = (vector.create((si_1 * 1 + 4) % 11 + 1, (si_1 * 11 + 5) % 13 + 1, (si_1 * 11 + 15) % 17 + 1))
            local td = vector.dot(mE, mF)
            if td * td <= vector.dot(mE, mE) * vector.dot(mF, mF) then
                mo = {
                    Info = si_11:AddTab("Info", "info"),
                    Main = si_11:AddTab("Main", "gamepad-2"),
                    Player = si_11:AddTab("Player", "person-standing"),
                    Settings = si_11:AddTab("Settings", "settings")
                }
            else
                si_11 = {
                    Main = mo:AddTab("Main", "gamepad-2"),
                    Info = mo:AddTab("Info", "info"),
                    Player = mo:AddTab("Player", "person-standing"),
                    Settings = mo:AddTab("Settings", "settings")
                }
            end
            si_1 = (si_1 + 47) % 156
        end
    elseif mD <= 37 then
        if mD <= 36 then
            if (si_1 * 2 + 3) * 10 % 3 == ((si_1 * 2 + 3) * 10 + 4) % 3 then
                si_4 = fn521
            else
                si_13 = fn521
            end
            si_1 = (si_1 + 8) % 156
        else
            mE = {
                "omfmzkwmc",
                "ponguqvgg",
                "vzjh",
                "ttxrryvreme",
                "etprjyrscuu",
                "uit",
                "nqorbrkmws",
                "cokc",
                "yobeoyzht",
                "bkb",
                "uncspugxc"
            }
            local te = si_1
            mF = mE[te % 11 + 1]
            if mF:len() >= mF:gsub("(.)", "%1%1", te % 3 % 2 + 1):len() then
                kW = game:GetService("Players")
            else
                si_5 = game:GetService("Players")
            end
            si_1 = (si_1 + 125) % 156
        end
    elseif mD <= 38 then
        mD = (vector.create((si_1 * 7 + 2) % 11 + 1, (si_1 * 11 + 5) % 13 + 1, (si_1 * 9 + 6) % 17 + 1))
        mE = (vector.create((si_1 * 3 + 5) % 11 + 1, (si_1 * 10 + 8) % 13 + 1, (si_1 * 9 + 9) % 17 + 1))
        mF = (vector.create((si_1 * 5 + 1) % 5 + 1, (si_1 * 2 + 3) % 7 + 1, (si_1 * 4 + 2) % 9 + 1))
        if math.abs((vector.angle(mD, mE, mF))) - math.abs((vector.angle(mE, mD, mF))) == 0 then
            si_7 = game:GetService("ReplicatedStorage")
        else
            k_ = game:GetService("ReplicatedStorage")
        end
        si_1 = (si_1 + 86) % 156
    else
        if ((lh or lh) and (k0 and not k0) or (not k0 or lh) and (lh and not k0)) and not ((lh or lh) and (k0 and not k0) or (not k0 or lh) and (lh and not k0)) then
            lS = game:GetService("RunService")
            mA = game:GetService("UserInputService")
            l2 = game:GetService("VirtualUser")
            lY = game:GetService("HttpService")
        else
            mA = game:GetService("RunService")
            l2 = game:GetService("UserInputService")
            lY = game:GetService("VirtualUser")
            lS = game:GetService("HttpService")
        end
        si_1 = (si_1 + 125) % 156
    end
until (si_1 * 61 + 0) % 156 == 76
for k, v in mo do
    si_13(v)
end
l5, si_8, Label, lA, si_11 = nil, nil, nil, nil, nil
si_2 = 1
repeat
    si_4 = (si_2 * 1 + 0) % 3 + 1
    if si_4 <= 2 then
        if si_4 <= 1 then
            si_4 = (vector.create((si_2 * 1 + 8) % 11 + 1, (si_2 * 9 + 1) % 13 + 1, (si_2 * 2 + 2) % 17 + 1))
            si_1 = (vector.create((si_2 * 2 + 4) % 11 + 1, (si_2 * 1 + 7) % 13 + 1, (si_2 * 10 + 13) % 17 + 1))
            si_10 = (vector.create((si_2 * 2 + 2) % 11 + 1, (si_2 * 11 + 4) % 13 + 1, (si_2 * 2 + 7) % 17 + 1))
            if vector.dot(vector.cross(si_4, si_1), si_10) == vector.dot(vector.cross(si_1, si_10), si_4) then
                si_11 = #lA > 18
            else
                lA = #si_11 > 18
            end
            si_2 = (si_2 + 7) % 12
        else
            si_4 = { "taschvpowwr", "gyq", "rrnj", "fjnirn", "fim", "gruwep", "mfxkjfjxpiz" }
            local tn = si_2
            si_1 = si_4[tn % 7 + 1]
            if si_1:len() <= si_1:gsub("(.)", "%1%1", tn % 3 % 2 + 1):len() then
                l5 = "Unknown"
                pcall(fn513)
                si_5 = mo.Info:AddLeftGroupbox("Account", "circle-user")
                si_5:AddLabel(k6("User", lC.Name, si_9), true)
                si_5:AddLabel(k6("Status", "Keyless", si_9), true)
                si_5:AddLabel(k6("Executor", l5, si_9), true)
                si_8 = mo.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                si_8:AddLabel(li(mx .. " [" .. tostring(game.PlaceId) .. "]", mC), true)
                si_8:AddLabel(k6("Place ID", tostring(game.PlaceId), mC), true)
                Label = si_8:AddLabel(k6("Session time", "0s", l6), true)
            else
                mC = "Unknown"
                pcall(fn513)
                l5 = si_9.Info:AddLeftGroupbox("Account", "circle-user")
                l5:AddLabel(mo("User", li.Name, si_8), true)
                l5:AddLabel(mo("Status", "Keyless", si_8), true)
                l5:AddLabel(mo("Executor", "Unknown", si_8), true)
                lC = si_9.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                lC:AddLabel(k6(l6 .. " [" .. tostring(game.PlaceId) .. "]", mx), true)
                lC:AddLabel(mo("Place ID", tostring(game.PlaceId), mx), true)
                lC:AddLabel(mo("Session time", "0s", Label), true)
            end
            si_2 = (si_2 + 7) % 12
        end
    else
        si_4 = (vector.create((si_2 * 7 + 2) % 11 + 1, (si_2 * 1 + 5) % 13 + 1, (si_2 * 1 + 11) % 17 + 1))
        si_1 = (vector.create((si_2 * 5 + 4) % 11 + 1, (si_2 * 6 + 12) % 13 + 1, (si_2 * 7 + 14) % 17 + 1))
        local sU = vector.dot(si_4, si_1)
        if sU * sU <= vector.dot(si_4, si_4) * vector.dot(si_1, si_1) then
            lA = tostring(game.JobId)
        end
        si_2 = (si_2 + 7) % 12
    end
until (si_2 * 11 + 4) % 12 == 6
if si_11 then
    si_5 = 3
    repeat
        si_2 = { "ahf", "nraxeqwukt", "nlocrqddq", "czqmzfw", "bmhhbh", "eotmg", "optvfyjxpb" }
        local sW = si_5
        si_4 = si_2[sW % 7 + 1]
        local mR = if si_4:len() <= si_4:reverse():rep(sW % 3 + 2):len() then 1 else 0
        if mR == 1 then
            si_11 = string.sub(lA, 1, 18) .. "..."
        else
            lA = string.sub(si_11, 1, 18) .. "..."
        end
        si_5 = (si_5 + 2) % 4
    until (si_5 * 3 + 0) % 4 == 3
end
si_5 = si_11 or lA
lk, mG, si_3, lN, kY, kV, connection, connection2, mE, kU, lX, lc, mc, lT, k9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mF = si_5
si_8:AddLabel(k6("Server", mF, mz), true)
si_8:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
lk = os.clock()
task.spawn(worker)
si_11 = mo.Info:AddRightGroupbox("Scripts", "package")
si_11:AddLabel(li("Included in this hub", mz), true)
si_11:AddLabel(li(mx, mC), true)
si_2 = mo.Info:AddRightGroupbox("Features", "list")
si_2:AddLabel(li("Auto Farm", mC), true)
si_2:AddLabel(li("Base Automation", l6), true)
si_2:AddLabel(li("Upgrades", si_9), true)
si_2:AddLabel(li("Movement", mz), true)
local SocialsGroup = mo.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = lq })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = mo.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if (not connection or not connection) and (not connection or not si_3) and (not connection and not connection or (connection or si_3)) and not ((not connection or not connection) and (not connection or not si_3) and (not connection and not connection or (connection or si_3))) then
    mo:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    mo:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    mo:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    mo:AddButton({ Text = "Copy Discord Invite", Func = OuroborosHubGroup })
    lq = mG.Info:AddRightGroupbox("Donations", "heart")
else
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lq })
    mG = mo.Info:AddRightGroupbox("Donations", "heart")
end
mG:AddLabel(li("All donations are optional but appreciated.", l6), true)
mG:AddLabel(li("If you donate you get a special role, just PING after you donate.", si_9), true)
mG:AddDivider()
mG:AddLabel(li("LTC / Litecoin", mw), true)
mG:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
mG:AddLabel(li("BTC / Bitcoin", mv), true)
mG:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
mG:AddLabel(li("ETH / Ethereum", mt), true)
mG:AddButton({ Text = "Copy Ethereum Address", Func = fns.onCopyEthereumAddress })
mG:AddLabel(li("USDT", ms), true)
mG:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
mG:AddLabel(li("Solana", mr), true)
mG:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
mG:AddLabel(li("PayPal", mq), true)
mG:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
mG:AddLabel(li("Venmo", mp), true)
mG:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
mG:AddDivider()
mG:AddLabel(li("Don't have any of the listed currencies but still wanna donate?", mz), true)
mG:AddLabel(li("DM me and we'll work something out.", mC), true)
si_13 = mo.Info:AddRightGroupbox("FAQ", "circle-help")
si_13:AddLabel("Where do I get a good config?", true)
si_13:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
si_13:AddLabel("How do I import / export configs?", true)
si_13:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
si_13:AddLabel("How do I report bugs?", true)
si_13:AddLabel("Join the Discord and post it in the bugs channel.", true)
si_13:AddLabel("How do I make suggestions?", true)
si_13:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
si_13:AddLabel("How do I get help or updates?", true)
si_13:AddLabel("Join the Discord, updates and support are posted there first.", true)
si_3 = mo.Main:AddLeftGroupbox("Farm", "sprout")
si_3:AddToggle("AutoCollectSquishes", { Text = "Auto Collect Squishes", Default = false })
si_3:AddDropdown("CollectMode", { Text = "Collect Mode", Values = my, Default = "Best" })
si_3:AddToggle("AutoJump", { Text = "Auto Jump", Default = false })
si_3:AddButton({ Text = "Teleport to Base", Func = mu })
si_7 = mo.Main:AddRightGroupbox("Base", "house")
si_7:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
si_7:AddToggle("AutoUpgradePlaced", { Text = "Auto Upgrade Placed Squishes", Default = false })
si_7:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
si_7:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
si_7:AddToggle("AutoUpgradeMoney", { Text = "Auto Upgrade Money", Default = false })
si_7:AddToggle("AutoUpgradeCarry", { Text = "Auto Upgrade Carry Limit", Default = false })
si_7:AddToggle("AutoBuyTrampoline", { Text = "Auto Buy Trampoline", Default = false })
si_1 = mo.Player:AddLeftGroupbox("Movement", "footprints")
si_1:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
si_1:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
si_1:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
si_1:AddToggle("NoClip", { Text = "NoClip", Default = false })
si_1:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
si_4 = mo.Player:AddRightGroupbox("Fly", "feather")
si_4:AddToggle("Fly", { Text = "Fly", Default = false })
si_4:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
kU = function(fp)
    pcall(function()
        lO:SetGameplayPausedNotificationEnabled(not fp)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = lK:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not fp
        end
    end)
    if not fp then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(lC, "GameplayPaused", false)
        else
            lC.GameplayPaused = false
        end
    end)
end
l3.AntiGameplayPause:OnChanged(fn680)
l3.Fly:OnChanged(fn176)
l3.WalkSpeedEnabled:OnChanged(fn645)
mA.Stepped:Connect(onStepped)
l2.JumpRequest:Connect(onJumpRequest)
lN = Workspace.CurrentCamera
mA.RenderStepped:Connect(onRenderStepped)
si_10 = mo.Settings:AddLeftGroupbox("Menu")
si_10:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
kT.ToggleKeybind = Options.MenuKeybind
kY = tick()
kV = tick()
pcall(function()
    for i, v in ipairs(getconnections(lC.Idled)) do
        local q_ = v
        pcall(function()
            q_:Disable()
        end)
    end
end)
lX = fn569
connection = l2.InputBegan:Connect(onInputBegan)
connection2 = l2.InputChanged:Connect(onInputChanged)
if (not SocialsGroup or si_3 or lk and not lk) and (not SocialsGroup and false or not lk and not si_3) and (not si_3 or not mG or (not si_10 or k9) or (k9 or mG or (false or si_10))) or not ((not SocialsGroup or si_3 or lk and not lk) and (not SocialsGroup and false or not lk and not si_3) and (not si_3 or not mG or (not si_10 or k9) or (k9 or mG or (false or si_10)))) then
    si_10:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    si_10:AddButton({ Text = "Unload", Func = onUnload })
    mB:SetLibrary(kT)
    mB:SetFolder("OuroborosHub")
    mB:SaveDefault("Monochrome")
    l4:SetLibrary(kT)
    l4:IgnoreThemeSettings()
    l4:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    l4:SetFolder("OuroborosHub/jump-beanstalk-viral-squishy")
    mE = l4:BuildConfigSection(mo.Settings)
else
    mB:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    mB:AddButton({ Text = "Unload", Func = onUnload })
    mo:SetLibrary(si_10)
    mo:SetFolder("OuroborosHub")
    mo:SaveDefault("Monochrome")
    kT:SetLibrary(si_10)
    kT:IgnoreThemeSettings()
    kT:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    kT:SetFolder("OuroborosHub/jump-beanstalk-viral-squishy")
    l4 = kT:BuildConfigSection(mE.Settings)
end
lc = fn777
mc = fns.fn79
lT = fn375
k9 = function(gU)
    local rG
    rG = nil
    local rH = type(gU) ~= "table" or type(gU.idx) ~= "string" or type(gU.type) ~= "string" or l4.Ignore[gU.idx]
    if rH then
        return false
    end
    rG = lc(gU.type, gU.idx)
    if not rG then
        return false
    end
    local rH_1 = pcall(function()
        if gU.type == "Input" then
            if type(gU.text) ~= "string" then
                return
            end
            rG:SetValue(gU.text)
        elseif gU.type == "ColorPicker" then
            rG:SetValueRGB(Color3.fromHex(gU.value), gU.transparency)
        elseif gU.type == "KeyPicker" then
            rG:SetValue({ gU.key, gU.mode, gU.modifiers })
            if gU.mode == "Toggle" and gU.toggled ~= nil then
                rG.Toggled = gU.toggled
                rG:Update()
            end
        else
            rG:SetValue(gU.value)
        end
    end)
    return rH_1
end
do
    mE:AddDivider()
    mE:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    mE:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    mE:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
    mB:ApplyToTab(mo.Settings)
    mB:LoadDefault()
    l4:LoadAutoloadConfig()
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(fns.worker3)
    task.spawn(antiGameplayPauseLoop)
    task.spawn(worker2)
    kT:OnUnload(fn773)
    kT:Notify("Jump Beanstalk for VIRAL Squishy! loaded")
end
