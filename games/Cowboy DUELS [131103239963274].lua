local fns = {}
local lZ
local kZ
local CurrentCamera2
local ln
local l4
local Options
local lM
local lt
local Toggles
local lS
local kS
local connection2
local EventCoinRound
local VirtualUser
local ToxicWheelSpin
local LocalPlayer
local lm
local l3
local EventSetPurchase
local folder
local ls
local EventChestPurchase
local lR
local kR
local ly
local lf
local lX
local kX
local lE
local ll
local UserInputService
local k2
local lK
local worker
local k8
local lQ
local lx
local le
local kW
local lD
local l1
local k1
local lJ
local l7
local k7
local lP
local lw
local SaveManager
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
local ChestCashPurchase
local lU
local lB
local li
local l_
local ToxicWheelGetState
local lH
local lo
local l5
local k5
local connection
local Label
local lb
local lT
local kT
local lA
local lh
function fns.fn10(ah, ai, aj)
    return string.format("<b>%s</b> %s %s", ah, l3("-", "#5a6070"), l3(ai, aj))
end
function fns.fn23()
    if not Toggles.Fly.Value then
        local q2 = ln()
        if q2 then
            q2.PlatformStand = false
        end
    end
end
function fns.fn28(cK)
    if cK == LocalPlayer then
        return false
    elseif LocalPlayer:GetAttribute("DuelInGame") ~= true then
        return false
    else
        local oB = if LocalPlayer:GetAttribute("DuelCombatActive") ~= true then 1 else 0
        if oB == 1 then
            return false
        elseif LocalPlayer:GetAttribute("DuelDeadSpectating") == true then
            return false
        else
            local attr4 = LocalPlayer:GetAttribute("DuelSessionId")
            local attr3 = cK:GetAttribute("DuelSessionId")
            local ow = attr4 == nil or attr3 == nil
            local ov_1 = attr4 ~= attr3
            local ox = ow
            local oB_1 = if ox then 1 else 0
            local oz = 1851 * oB_1 + 790 * (1 - oB_1)
            local oA = 419 * oB_1 + 91 * (1 - oB_1)
            if not ((oz * 2633 + oA * 726 + oz * oA) % 16777213 == 5953446) then
                ox = ov_1
            end
            if ox then
                return false
            elseif cK:GetAttribute("DuelDeadSpectating") == true then
                return false
            else
                local attr2 = LocalPlayer:GetAttribute("DuelTeam")
                local attr = cK:GetAttribute("DuelTeam")
                if attr2 ~= nil and attr ~= nil and attr2 == attr then
                    return false
                end
                return lS(cK.Character)
            end
        end
    end
end
function fns.fn34()
    for k in pairs(lA) do
        lx(k)
    end
end
function fns.onCopyJoinScript_JobID()
    local eR = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ls)
    k0(eR, "Copied join script to clipboard")
end
function fns.fn51(d4, d5, d6)
    local pM = kT(d4)
    if not pM then
        lx(d4)
        return
    end
    local pN = lA[d4]
    if not pN then
        local highlight = Instance.new("Highlight")
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.FillTransparency = 0.65
        highlight.OutlineTransparency = 0
        highlight.Parent = folder
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Size = UDim2.fromOffset(160, 18)
        billboardGui.StudsOffset = Vector3.new(0, 2.4, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = folder
        local textLabel = Instance.new("TextLabel")
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.GothamBold
        textLabel.TextSize = 13
        textLabel.TextStrokeTransparency = 0.4
        textLabel.Parent = billboardGui
        pN = { Highlight = highlight, Billboard = billboardGui, Label = textLabel }
        lA[d4] = pN
    end
    pN.Highlight.Adornee = d4
    pN.Highlight.FillColor = d5
    pN.Highlight.OutlineColor = d5
    pN.Billboard.Adornee = pM
    pN.Label.TextColor3 = d5
    pN.Label.Text = d6
end
function fns.fn52()
    local m5 = lt()
    local m6 = m5 and m5:FindFirstChildOfClass("Humanoid")
    return m6
end
local function fn54()
    local oW = if not l0("Aimbot") then 1 else 0
    if oW == 1 then
        return
    end
    local oR = lf()
    if not oR then
        return
    end
    local CurrentCamera = lJ.CurrentCamera
    if not CurrentCamera then
        return
    end
    CurrentCamera.CFrame = CFrame.new(CurrentCamera.CFrame.Position, oR.Position)
end
local function onCopyUSDTAddress()
    k0(le, "Copied USDT address")
end
local function fn87(aY)
    local nb = aY
    if nb then
        local nc = aY:FindFirstChild("Head") or aY:FindFirstChild("HumanoidRootPart")
        nb = nc
    end
    return nb
end
local function fn100()
    local oj_1
    local oi_1
    oi_1, oj_1 = pcall(function()
        return ToxicWheelGetState:InvokeServer()
    end)
    local ol = not oi_1 or type(oj_1) ~= "table" or oj_1.success ~= true
    if ol then
        return
    end
    if oj_1.active == false then
        return
    end
    local max = math.max
    local floor = math.floor
    local om = tonumber(oj_1.spins) or 0
    local oj_2 = max(0, floor(om))
    if oj_2 < 1 then
        return
    end
    pcall(function()
        return ToxicWheelSpin:InvokeServer(1)
    end)
end
local function onRscripts()
    k0(ly, "Copied Rscripts profile to clipboard")
end
local function onCopyLitecoinAddress()
    k0(lp, "Copied Litecoin address")
end
local function antiAfkLoop()
    while not ll.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local qC = tick() - k8
            local qD = tick() - k2
            if qC >= 300 and qD >= 60 then
                pcall(l7)
            else
                if qC < 300 and qD >= 300 then
                    pcall(l7)
                end
            end
        end
    end
end
local function fn155()
    for i, v in ipairs({ lt(), LocalPlayer:FindFirstChild("Backpack") }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("Tool") then
                    local FireRequest = child:FindFirstChild("FireRequest")
                    local o5 = FireRequest and FireRequest:IsA("RemoteEvent")
                    if o5 then
                        return FireRequest
                    end
                end
            end
        end
    end
    return nil
end
local function fn159(aJ)
    local m1 = Options[aJ]
    return m1 and m1.Value or {}
end
local function onExportConfigToClipboard()
    local rT_1
    local rS_1
    rS_1, rT_1 = pcall(lU.JSONEncode, lU, l4())
    if not rS_1 then
        ll:Notify("Failed to encode the config")
        return
    end
    local rS_2 = setclipboard
    local r0 = if rS_2 then 1 else 0
    local rZ = 168 * r0 + 3401 * (1 - r0)
    local r_ = 3105 * r0 + 158 * (1 - r0)
    if not ((rZ * 1556 + r_ * 29 + rZ * r_) % 16777213 == 873093) then
        rS_2 = toclipboard
    end
    local rU = rS_2
    local rS_3 = type(rU) ~= "function" or not pcall(rU, rT_1)
    if rS_3 then
        ll:Notify("Your executor does not support copying to the clipboard")
        return
    end
    ll:Notify("Config copied to clipboard", 6)
end
local function fn169()
    local ShootTarget = Options.ShootTarget
    if not ShootTarget then
        return
    end
    local px = lD()
    local py = table.concat(px, ",")
    if py == kX then
        return
    end
    kX = py
    local Value = ShootTarget.Value
    ShootTarget:SetValues(px)
    local pz = type(Value) == "string" and Value ~= "" and table.find(px, Value)
    if pz then
        ShootTarget:SetValue(Value)
    elseif #px > 0 then
        ShootTarget:SetValue(px[1])
    end
end
local function onPlayerAdded()
    task.defer(kV)
end
local function onCopyBitcoinAddress()
    k0(lm, "Copied Bitcoin address")
end
local function worker3()
    while not ll.Unloaded do
        task.wait(0.15)
        if l0("AutoShoot") then
            pcall(lw)
        end
    end
end
local function worker7()
    while not ll.Unloaded do
        task.wait(1.25)
        if l0("AutoBuyShops") then
            pcall(lC)
        end
    end
end
local function fn270(cf)
    local n8 = l5[cf]
    if n8 == "chest" then
        return ChestCashPurchase:InvokeServer(cf)
    elseif n8 == "eventChest" then
        return EventChestPurchase:InvokeServer(cf)
    elseif n8 == "set" then
        return EventSetPurchase:InvokeServer(cf)
    else
        return nil
    end
end
local function fn282(d0)
    local pH = lA[d0]
    if not pH then
        return
    end
    if pH.Highlight then
        pH.Highlight:Destroy()
    end
    if pH.Billboard then
        pH.Billboard:Destroy()
    end
    lA[d0] = nil
end
local function worker8()
    while not ll.Unloaded do
        task.wait(0.5)
        if l0("AutoCollectEventCoin") then
            pcall(worker)
        end
    end
end
local function fn335()
    if not Toggles.PlayerESP.Value then
        lZ()
    else
        lK()
    end
end
local function onImportConfigFromClipboardTex()
    local r3_1
    local r1 = Options.SaveManager_ImportSource.Value or ""
    local r1_1
    local r2 = tostring(r1):match("^%s*(.-)%s*$")
    if r2 == "" then
        ll:Notify("Paste an exported config into the box first")
        return
    end
    r1_1, r3_1 = pcall(lU.JSONDecode, lU, r2)
    local r2_1 = not r1_1 or type(r3_1) ~= "table" or type(r3_1.objects) ~= "table"
    if r2_1 then
        ll:Notify("That is not a valid exported config")
        return
    end
    local r1_2 = 0
    for i, v in ipairs(r3_1.objects) do
        if lo(v) then
            r1_2 += 1
        end
    end
    if r1_2 == 0 then
        ll:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local r3_2 = r1_2 == 1 and "" or "s"
    ll:Notify(("Imported %d setting%s"):format(r1_2, r3_2), 6)
end
local function fn386(hj, hk)
    local Type = hk.Type
    if Type == "Toggle" then
        return { idx = hj, type = "Toggle", value = hk.Value == true }
    elseif Type == "Slider" then
        return { idx = hj, type = "Slider", value = tostring(hk.Value) }
    elseif Type == "Dropdown" then
        return { idx = hj, type = "Dropdown", multi = hk.Multi == true, value = hk.Value }
    elseif Type == "Input" then
        local rp = hk.Value or ""
        return { idx = hj, type = "Input", text = tostring(rp) }
    elseif Type == "ColorPicker" then
        return { idx = hj, type = "ColorPicker", value = hk.Value:ToHex(), transparency = hk.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = hj,
            type = "KeyPicker",
            mode = hk.Mode,
            key = hk.Value,
            modifiers = hk.Modifiers,
            toggled = hk.Toggled
        }
    else
        return nil
    end
end
local function onInputChanged(fU)
    local UserInputType = fU.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        k8 = tick()
    end
end
local function onCopySolanaAddress()
    k0(lb, "Copied Solana address")
end
local function fn397()
    local nj_1
    local nh_1, nh_2
    local ng = type(getconnections) ~= "function"
    local ng_1
    local nn = if ng then 1 else 0
    local nl = 2401 * nn + 1324 * (1 - nn)
    local nm = 1634 * nn + 1289 * (1 - nn)
    if not ((nl * 1363 + nm * 1489 + nl * nm) % 16777213 == 9628823) then
        ng = type(debug) ~= "table"
    end
    if not ng then
        ng = type(debug.getupvalue) ~= "function"
    end
    if ng then
        return
    end
    ng_1, nh_1 = pcall(getconnections, EventCoinRound.OnClientEvent)
    local ni = not ng_1
    local ni_1
    local nn_1 = if ni then 1 else 0
    local nl_1 = 469 * nn_1 + 2704 * (1 - nn_1)
    local nm_1 = 936 * nn_1 + 1553 * (1 - nn_1)
    if not ((nl_1 * 3692 + nm_1 * 2568 + nl_1 * nm_1) % 16777213 == 4574180) then
        ni = type(nh_1) ~= "table"
    end
    if ni then
        return
    end
    for i, v in ipairs(nh_1) do
        local Function = v.Function
        if type(Function) == "function" then
            local nw = 1
            while nw <= 12 do
                local nx = nw
                nh_2, ni_1, nj_1 = pcall(debug.getupvalue, Function, nx)
                if not nh_2 then
                    break
                end
                if lT(ni_1) then
                    l1 = ni_1
                    return
                end
                if lT(nj_1) then
                    l1 = nj_1
                    return
                end
                nw += 1
            end
        end
    end
end
local function worker5()
    while not ll.Unloaded do
        task.wait(0.2)
        if l0("PlayerESP") then
            pcall(lK)
        end
    end
end
local function worker6()
    while not ll.Unloaded do
        task.wait(2)
        if l0("AutoSpinWheel") then
            pcall(kZ)
        end
    end
end
local function fn413(hd, he)
    local ri_1 = (hd == "Toggle" and Toggles or Options)[he]
    local rh_2 = type(ri_1) == "table" and ri_1.Type == hd
    return rh_2 and ri_1 or nil
end
local function fn431()
    local m8 = lt()
    local m9 = m8 and m8:FindFirstChild("HumanoidRootPart")
    return m9
end
local function onUnload()
    ll:Unload()
end
local function onStepped()
    if ll.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local qG_1 = lt()
        if qG_1 then
            for i, descendant in ipairs(qG_1:GetDescendants()) do
                local qG_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if qG_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn453(X, Y)
    if setclipboard then
        setclipboard(X)
    elseif toclipboard then
        toclipboard(X)
    end
    ll:Notify(Y)
end
local function fn466()
    return LocalPlayer.Character
end
local function fn467()
    local pt = l0("OnlyShootAfterEventCoins") and not l6()
    if pt then
        return false
    end
    local pt_1 = lX()
    if not pt_1 then
        return false
    end
    local pu = kT(pt_1.Character)
    if not pu then
        return false
    end
    local pt_2 = li()
    if not pt_2 then
        return false
    end
    pt_2:FireServer(pu.Position, nil, nil)
    return true
end
local function fn470(fo)
    local DiscordGroup = fo:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kS })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kS })
end
local function worker2()
    local qm_1
    while true do
        task.wait(1)
        if ll.Unloaded then
            break
        end
        local ql = math.floor(os.clock() - k5)
        if ql < 60 then
            qm_1 = ql .. "s"
        elseif ql < 3600 then
            qm_1 = string.format("%dm %ds", ql // 60, ql % 60)
        else
            qm_1 = string.format("%dh %dm", ql // 3600, ql % 3600 // 60)
        end
        Label:SetText(lR("Session time", qm_1, lv))
    end
end
local function onCopyPayPalLink()
    k0(k6, "Copied PayPal link")
end
local function fn486()
    local CurrentCamera = lJ.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    k2 = tick()
end
local function fn495()
    local ShootTarget = Options.ShootTarget
    local pn = ShootTarget and ShootTarget.Value
    local pn_1 = pn == ""
    local po = type(pn) ~= "string" or pn_1
    if po then
        return nil
    end
    local pn_2 = kR:FindFirstChild(pn)
    local pm_2 = pn_2 and pn_2:IsA("Player")
    if pm_2 then
        return pn_2
    end
    return nil
end
local function onCopyEthereumAddress()
    k0(lh, "Copied Ethereum address")
end
local function onCopyVenmoLink()
    k0(k1, "Copied Venmo link")
end
local function fn513()
    if Toggles.AutoCollectEventCoin.Value then
        lI()
        task.spawn(worker)
    end
end
local function worker4()
    while not ll.Unloaded do
        task.wait(1)
        pcall(kV)
    end
end
local function fn572(aE)
    local mZ = Toggles[aE]
    return mZ ~= nil and mZ.Value == true
end
local function onRenderStepped(gl)
    if ll.Unloaded then
        return
    end
    lV()
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local qT_1 = ln()
        if qT_1 then
            qT_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local qT_3 = k7()
        local qU = ln()
        if qT_3 and qU then
            qU.PlatformStand = true
            local qU_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                qU_1 = qU_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                qU_1 = qU_1 - CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                qU_1 = qU_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                qU_1 = qU_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                qU_1 = qU_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                qU_1 = qU_1 - Vector3.new(0, 1, 0)
            end
            qT_3.AssemblyLinearVelocity = Vector3.zero
            if qU_1.Magnitude > 0 then
                qT_3.CFrame = qT_3.CFrame + qU_1.Unit * Options.FlySpeed.Value * gl
            end
        end
    end
end
local function fn606()
    local ry = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local rz = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if rz then
                local rz_1 = kW(k, v)
                if rz_1 then
                    ry[#ry + 1] = rz_1
                end
            end
        end
    end
    table.sort(ry, function(hu, hv)
        if hu.type ~= hv.type then
            return hu.type < hv.type
        end
        return hu.idx < hv.idx
    end)
    return { objects = ry }
end
local function fn631()
    local oC = k7()
    if not oC then
        return nil
    end
    local oD = math.huge
    local oE
    for i, player in ipairs(kR:GetPlayers()) do
        if lE(player) then
            local oF = kT(player.Character)
            if oF then
                local Magnitude = (oF.Position - oC.Position).Magnitude
                if Magnitude < oD then
                    oD = Magnitude
                    oE = oF
                end
            end
        end
    end
    return oE
end
local function fn665()
    local LocalEventCoins = lJ:FindFirstChild("LocalEventCoins")
    local pk = LocalEventCoins and #LocalEventCoins:GetChildren() > 0
    if pk then
        return false
    end
    return true
end
local function fn669(cG)
    if not cG then
        return false
    end
    local Humanoid = cG:FindFirstChildOfClass("Humanoid")
    return Humanoid ~= nil and Humanoid.Health > 0
end
local function fn670()
    local pE = gethui and gethui()
    local pF = pE or lM
    folder.Parent = pF
end
local function fn680(ae, af)
    return string.format('<font color="%s">%s</font>', af, ae)
end
local function fn681()
    lP(Toggles.AntiGameplayPause.Value)
end
local function fn683()
    local oa = lH("ShopBuySelection")
    for k, v in pairs(oa) do
        local oa_1 = ll.Unloaded or not l0("AutoBuyShops")
        if oa_1 then
            return
        end
        if v and l5[k] then
            pcall(l_, k)
            task.wait(0.35)
        end
    end
end
local function onInputBegan()
    k8 = tick()
end
local function fn763()
    if not Toggles.WalkSpeedEnabled.Value then
        local q4 = ln()
        if q4 then
            q4.WalkSpeed = 16
        end
    end
end
local function fn772()
    local oX = {}
    for i, player in ipairs(kR:GetPlayers()) do
        if player ~= LocalPlayer then
            table.insert(oX, player.Name)
        end
    end
    table.sort(oX)
    return oX
end
local function fn786()
    local p_ = ll.Unloaded or not l0("PlayerESP")
    if p_ then
        lZ()
        return
    end
    local p__1 = {}
    local p0 = Color3.fromRGB(255, 70, 70)
    local p1 = Color3.fromRGB(90, 170, 255)
    for i, player in ipairs(kR:GetPlayers()) do
        local p2 = player ~= LocalPlayer and lS(player.Character)
        if p2 then
            local Character = player.Character
            p__1[Character] = true
            local p3 = lE(player) and p0
            local p3_1 = p3 or p1
            lj(Character, p3_1, player.Name)
        end
    end
    for k in pairs(lA) do
        if not p__1[k] then
            lx(k)
        end
    end
end
local function antiGameplayPauseLoop()
    while not ll.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            lP(true)
        end
    end
end
local function onJumpRequest()
    if ll.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local qO_1 = ln()
        if qO_1 then
            qO_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn856()
    local qh_1
    local qg_1
    if identifyexecutor then
        qh_1, qg_1 = identifyexecutor()
        local qi = qh_1 ~= ""
        local qj = type(qh_1) == "string" and qi
        if qj then
            local qi_1 = type(qg_1) == "string" and qg_1 ~= "" and qh_1 .. " " .. qg_1
            lQ = qi_1 or qh_1
        end
    end
end
local function onPlayerRemoving()
    task.defer(kV)
end
local function fn867(a4)
    local ne = type(a4) == "string" and string.find(a4, ":", 1, true) ~= nil
    return ne
end
local function fn876()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    lZ()
    pcall(function()
        folder:Destroy()
    end)
    lP(false)
    local se = ln()
    if se then
        se.PlatformStand = false
        se.WalkSpeed = 16
    end
end
local function fn891()
    k0(lB, "Copied Discord invite to clipboard")
end
kR = nil
kS = nil
kT = nil
kV = nil
kW = nil
kX = nil
ToxicWheelSpin = nil
kZ = nil
ToxicWheelGetState = nil
k0 = nil
k1 = nil
k2 = nil
EventSetPurchase = nil
Options = nil
k5 = nil
k6 = nil
k7 = nil
k8 = nil
EventChestPurchase = nil
Toggles = nil
lb = nil
ChestCashPurchase = nil
SaveManager = nil
le = nil
lf = nil
EventCoinRound = nil
lh = nil
li = nil
lj = nil
ll = nil
lm = nil
ln = nil
lo = nil
lp = nil
worker = nil
ls = nil
lt = nil
Label = nil
lv = nil
lw = nil
lx = nil
ly = nil
connection2 = nil
lA = nil
lB = nil
lC = nil
lD = nil
local kU, EventCoinCollect, lq
lE = nil
LocalPlayer = nil
CurrentCamera2 = nil
lH = nil
lI = nil
lJ = nil
lK = nil
folder = nil
lM = nil
connection = nil
lP = nil
lQ = nil
lR = nil
lS = nil
lT = nil
lU = nil
lV = nil
lX = nil
VirtualUser = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
UserInputService = nil
l3 = nil
l4 = nil
l5 = nil
l6 = nil
l7 = nil
local lO, lW, l9, mb, md, me, mp, mq
lO = nil
lW = nil
local mr, ms, mt, mu, mv, mw
kR, UserInputService, VirtualUser, lU, lO, lM, lJ, LocalPlayer, lB, ly, mb, l9, EventCoinCollect, EventCoinRound, ChestCashPurchase, EventChestPurchase, EventSetPurchase, ToxicWheelGetState, ToxicWheelSpin, md, me, l5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ("https://rscripts.net/@Ouroboros" and (mb and not me) or ly and not me and false) and (not me and ly or not mb and VirtualUser or false and VirtualUser and (not VirtualUser and mb)) or (false or me or (mb or mb) or (me or not VirtualUser or VirtualUser and not me)) and (not VirtualUser and not me and (not me or not mb) and (not mb and me and (not me or me))) or not (("https://rscripts.net/@Ouroboros" and (mb and not me) or ly and not me and false) and (not me and ly or not mb and VirtualUser or false and VirtualUser and (not VirtualUser and mb)) or (false or me or (mb or mb) or (me or not VirtualUser or VirtualUser and not me)) and (not VirtualUser and not me and (not me or not mb) and (not mb and me and (not me or me)))) then
    kR = game:GetService("Players")
else
    l5 = game:GetService("Players")
end
local mc = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
if ((UserInputService and l5 or l5 and UserInputService) and (UserInputService or not l5 or not UserInputService and not l5) or (not l5 or not UserInputService) and (not UserInputService and not UserInputService) and (not l5 or UserInputService or not UserInputService and l5)) and not ((UserInputService and l5 or l5 and UserInputService) and (UserInputService or not l5 or not UserInputService and not l5) or (not l5 or not UserInputService) and (not UserInputService and not UserInputService) and (not l5 or UserInputService or not UserInputService and l5)) then
    lM = game:GetService("HttpService")
    lU = game:GetService("GuiService")
    lJ = game:GetService("CoreGui")
    lO = game:GetService("Workspace")
    kR = LocalPlayer.LocalPlayer
else
    lU = game:GetService("HttpService")
    lO = game:GetService("GuiService")
    lM = game:GetService("CoreGui")
    lJ = game:GetService("Workspace")
    LocalPlayer = kR.LocalPlayer
end
local mf = "Cowboy DUELS"
lB = "https://discord.gg/ehKVq7pf7v"
ly = "https://rscripts.net/@Ouroboros"
mb = mc:WaitForChild("Shared")
local ma = mb:WaitForChild("Remotes")
if md or md or false or false and not md and (not md or md) or not (md or md or false or false and not md and (not md or md)) then
    l9 = mb:WaitForChild("Config")
else
    l9:WaitForChild("Config")
end
if not me and not VirtualUser or not EventChestPurchase and LocalPlayer or (ma or LocalPlayer or ma and VirtualUser) or not (not me and not VirtualUser or not EventChestPurchase and LocalPlayer or (ma or LocalPlayer or ma and VirtualUser)) then
    EventCoinCollect = ma:WaitForChild("EventCoinCollect")
else
    ma = EventCoinCollect:WaitForChild("EventCoinCollect")
end
EventCoinRound = ma:WaitForChild("EventCoinRound")
ChestCashPurchase = ma:WaitForChild("ChestCashPurchase")
EventChestPurchase = ma:WaitForChild("EventChestPurchase")
EventSetPurchase = ma:WaitForChild("EventSetPurchase")
ToxicWheelGetState = ma:WaitForChild("ToxicWheelGetState")
ToxicWheelSpin = ma:WaitForChild("ToxicWheelSpin")
md = require(l9:WaitForChild("ChestConfig"))
me = require(l9:WaitForChild("Event"))
local mg = {}
l5 = {}
local sj_3 = {}
l9 = md.Order or sj_3
for i, v in ipairs(l9) do
    sj_3 = type(v) == "string" and v ~= "" and not l5[v]
    if sj_3 then
        table.insert(mg, v)
        l5[v] = "chest"
    end
end
sj_3 = {}
l9 = me.ShopChests or sj_3
for i, v in ipairs(l9) do
    sj_3 = v and v.chestName
    l9 = sj_3
    sj_3 = type(l9) == "string" and l9 ~= "" and not l5[l9]
    if sj_3 then
        table.insert(mg, l9)
        l5[l9] = "eventChest"
    end
end
sj_3 = {}
l9 = me.ShopSets or sj_3
for i, v in ipairs(l9) do
    sj_3 = v and v.setName
    l9 = sj_3
    sj_3 = type(l9) == "string" and l9 ~= "" and not l5[l9]
    if sj_3 then
        table.insert(mg, l9)
        l5[l9] = "set"
    end
end
ll, SaveManager, Toggles, Options, lv, lp, lm, lh, le, lb, k6, k1, l1, lW, kX, folder, k0, kS, l3, lR, l0, lH, lt, ln, k7, kT, lT, lI, kU, worker, l_, lC, kZ, lS, lE, lf, lV, lD, li, l6, lX, lw, kV = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sj_3 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
ll = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = ll.Toggles
Options = ll.Options
k0 = fn453
kS = fn891
l3 = fn680
lR = fns.fn10
local mk = "#7fd47f"
local mj = "#6ec1ff"
lv = "#e8a34d"
local mi = "#8b93a3"
lp = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
lm = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
lh = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
le = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
lb = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
k6 = "https://paypal.me/TheTruckerGOD"
k1 = "https://venmo.com/u/miserablemusic"
me = "#345d9d"
md = "#f7931a"
mc = "#627eea"
mb = "#26a17b"
local mn = "#14f195"
local mm = "#0070ba"
local ml = "#008cff"
l0 = fn572
lH = fn159
lt = fn466
ln = fns.fn52
k7 = fn431
kT = fn87
if ((lC or false or "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/") and (false and (not lC and false)) and (("LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or (worker or lC)) and (lC and lp or (sj_3 or not lC))) or ((not lC or worker or (not lC or lC)) and (false and (sj_3 and lC)) or "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" and (not lC or lp) and (worker and worker or (false or not lC)))) and not ((lC or false or "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/") and (false and (not lC and false)) and (("LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w" or (worker or lC)) and (lC and lp or (sj_3 or not lC))) or ((not lC or worker or (not lC or lC)) and (false and (sj_3 and lC)) or "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" and (not lC or lp) and (worker and worker or (false or not lC)))) then
    lT = nil
    l1 = {}
    lW = fn867
else
    l1 = nil
    lW = {}
    lT = fn867
end
lI = fn397
kU = function(bm, bn, bo)
    local nz
    local nB_1
    if not lT(bm) then
        return false
    end
    nz = tostring(bn)
    local nA = nz == "" or lW[nz]
    local nA_2
    if nA then
        return false
    end
    local nA_1 = k7()
    if not nA_1 then
        return false
    end
    if typeof(bo) == "Vector3" then
        nA_1.CFrame = CFrame.new(bo + Vector3.new(0, 3, 0))
        task.wait(0.12)
    end
    nA_2, nB_1 = pcall(function()
        return EventCoinCollect:InvokeServer(bm, nz)
    end)
    if nA_2 and nB_1 == true then
        lW[nz] = true
        return true
    end
    return false
end
worker = function()
    if not lT(l1) then
        lI()
    end
    if not lT(l1) then
        return
    end
    local LocalEventCoins = lJ:FindFirstChild("LocalEventCoins")
    if not LocalEventCoins then
        return
    end
    for i, child in ipairs(LocalEventCoins:GetChildren()) do
        local nT = child
        local nL_1 = ll.Unloaded or not l0("AutoCollectEventCoin")
        if nL_1 then
            return
        end
        local nL_2 = string.match(nT.Name, "^EventCoin_(.+)$")
        local nM = nL_2 and not lW[nL_2] and nT:GetAttribute("Collecting") ~= true
        if nM then
            local Position = nT:GetPivot().Position
            if kU(l1, nL_2, Position) then
                pcall(function()
                    nT:Destroy()
                end)
            end
            task.wait(0.08)
        end
    end
end
EventCoinRound.OnClientEvent:Connect(function(bS)
    if typeof(bS) ~= "table" then
        return
    end
    local action = bS.action
    if action == "clear" then
        l1 = nil
        table.clear(lW)
        return
    end
    if lT(bS.roundKey) then
        if action == "spawn" then
            table.clear(lW)
        end
        l1 = bS.roundKey
    end
    if not l0("AutoCollectEventCoin") then
        return
    end
    if typeof(bS.coins) ~= "table" then
        return
    end
    task.spawn(function()
        for i, v in ipairs(bS.coins) do
            local nV = ll.Unloaded or not l0("AutoCollectEventCoin")
            if nV then
                break
            end
            local nV_1 = typeof(v) == "table" and v.id ~= nil
            if nV_1 then
                if kU(l1, v.id, v.position) then
                    local LocalEventCoins = lJ:FindFirstChild("LocalEventCoins")
                    local nW = LocalEventCoins and LocalEventCoins:FindFirstChild("EventCoin_" .. tostring(v.id))
                    local nU = nW
                    if nU then
                        pcall(function()
                            nU:Destroy()
                        end)
                    end
                end
                task.wait(0.08)
            end
        end
    end)
end)
l_ = fn270
lC = fn683
kZ = fn100
lS = fn669
lE = fns.fn28
lf = fn631
lV = fn54
lD = fn772
li = fn155
l6 = fn665
lX = fn495
lw = fn467
kX = ""
kV = fn169
folder = Instance.new("Folder")
folder.Name = "OuroborosEsp"
pcall(fn670)
if not folder.Parent then
    folder.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
lA, ma, mr, lQ, mq, Label, ls, mp, lx, lj, lZ, lK = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sj_3 = 7
repeat
    ms = (sj_3 * 2 + 6) % 7 + 1
    if ms <= 4 then
        if ms <= 2 then
            if ms <= 1 then
                mt = (vector.create((sj_3 * 5 + 3) % 11 + 1, (sj_3 * 5 + 8) % 13 + 1, (sj_3 * 14 + 3) % 17 + 1))
                mu = (vector.create((sj_3 * 4 + 7) % 11 + 1, (sj_3 * 5 + 1) % 13 + 1, (sj_3 * 14 + 17) % 17 + 1))
                mv = (vector.create((sj_3 * 5 + 6) % 11 + 1, (sj_3 * 1 + 3) % 13 + 1, (sj_3 * 13 + 13) % 17 + 1))
                if vector.dot(vector.cross(mt, mu), mv) == vector.dot(vector.cross(mu, mv), mt) then
                    lK = fn786
                else
                    lZ = fn786
                end
                sj_3 = (sj_3 + 32) % 56
            else
                if sj_3 * 31422247 + 7 + 6 >= sj_3 * 31422247 + 7 + 6 + 6 then
                    ll = lB:CreateWindow({
                        Icon = 12645376577,
                        CornerRadius = 10,
                        NotifySide = "Right",
                        Title = "Ouroboros Hub",
                        Footer = { "|", ma, { Text = mf, Copyable = true } },
                        ShowCustomCursor = false
                    })
                else
                    ma = ll:CreateWindow({
                        Title = "Ouroboros Hub",
                        Footer = { { Text = lB, Copyable = true }, "|", mf },
                        Icon = 12645376577,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 10
                    })
                end
                sj_3 = (sj_3 + 11) % 56
            end
        elseif ms <= 3 then
            mt = {
                "dtfriyybdh",
                "imnieyplumef",
                "yvrshzwwzl",
                "mbe",
                "vlfxkn",
                "cig",
                "mnp",
                "uwktcpaawxpa",
                "zbffqmhgqga",
                "sccnjmkok",
                "nlmxxqahbl"
            }
            if mt[(sj_3 * 76 + 13) % 11 + 1] < mt[(sj_3 * 76 + 13) % 11 + 1] then
                ma = {
                    Main = mr:AddTab("Main", "swords"),
                    Info = mr:AddTab("Info", "info"),
                    Settings = mr:AddTab("Settings", "settings"),
                    Player = mr:AddTab("Player", "person-standing")
                }
            else
                mr = {
                    Info = ma:AddTab("Info", "info"),
                    Main = ma:AddTab("Main", "swords"),
                    Player = ma:AddTab("Player", "person-standing"),
                    Settings = ma:AddTab("Settings", "settings")
                }
            end
            sj_3 = (sj_3 + 39) % 56
        else
            mt = (vector.create((sj_3 * 3 + 8) % 11 + 1, (sj_3 * 9 + 8) % 13 + 1, (sj_3 * 1 + 9) % 17 + 1))
            mu = (vector.create((sj_3 * 4 + 9) % 11 + 1, (sj_3 * 11 + 12) % 13 + 1, (sj_3 * 7 + 8) % 17 + 1))
            mv = (vector.create((sj_3 * 4 + 2) % 11 + 1, (sj_3 * 3 + 1) % 13 + 1, (sj_3 * 9 + 4) % 17 + 1))
            mw = (vector.create((sj_3 * 5 + 1) % 5 + 1, (sj_3 * 1 + 4) % 7 + 1, (sj_3 * 3 + 4) % 9 + 1))
            if vector.dot(vector.cross(mt, (vector.cross(mu, mv))), mw) == vector.dot(mu * vector.dot(mt, mv) - mv * vector.dot(mt, mu), mw) + 4 then
                pcall(fn856)
                l3 = Label.Info:AddLeftGroupbox("Account", "circle-user")
                l3:AddLabel(lv("User", mq.Name, mf), true)
                l3:AddLabel(lv("Status", "Keyless", mf), true)
                l3:AddLabel(lv("Executor", "Unknown", mf), true)
                mk = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                mk:AddLabel(mr(lQ .. " [" .. tostring(game.PlaceId) .. "]", lR), true)
                mk:AddLabel(lv("Place ID", tostring(game.PlaceId), lR), true)
                mj = mk:AddLabel(lv("Session time", "0s", LocalPlayer), true)
            else
                lQ = "Unknown"
                pcall(fn856)
                l9 = mr.Info:AddLeftGroupbox("Account", "circle-user")
                l9:AddLabel(lR("User", LocalPlayer.Name, mk), true)
                l9:AddLabel(lR("Status", "Keyless", mk), true)
                l9:AddLabel(lR("Executor", lQ, mk), true)
                mq = mr.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                mq:AddLabel(l3(mf .. " [" .. tostring(game.PlaceId) .. "]", mj), true)
                mq:AddLabel(lR("Place ID", tostring(game.PlaceId), mj), true)
                Label = mq:AddLabel(lR("Session time", "0s", lv), true)
            end
            sj_3 = (sj_3 + 18) % 56
        end
    elseif ms <= 6 then
        if ms <= 5 then
            if (sj_3 * 2 + 5) * 16 % 3 == ((sj_3 * 2 + 5) * 16 + 0) % 3 then
                ls = tostring(game.JobId)
            else
                mq = tostring(game.JobId)
            end
            sj_3 = (sj_3 + 39) % 56
        else
            ms = (vector.create((sj_3 * 2 + 5) % 11 + 1, (sj_3 * 10 + 9) % 13 + 1, (sj_3 * 3 + 10) % 17 + 1))
            mt = (vector.create((sj_3 * 5 + 7) % 11 + 1, (sj_3 * 3 + 7) % 13 + 1, (sj_3 * 15 + 8) % 17 + 1))
            local sW = vector.cross(ms, mt)
            local sX = vector.dot(ms, mt)
            if vector.dot(sW, sW) + sX * sX == vector.dot(ms, ms) * vector.dot(mt, mt) then
                mp = #ls > 18
            else
                ls = #mp > 18
            end
            sj_3 = (sj_3 + 18) % 56
        end
    else
        if (lK and not lx or lx and not lx or (not lK and lK or lK and not lK) or (not lx or not lK or (not lx or not lx) or (not lK or not Label) and (Label or not lx))) and not (lK and not lx or lx and not lx or (not lK and lK or lK and not lK) or (not lx or not lK or (not lx or not lx) or (not lK or not Label) and (Label or not lx))) then
            lx = {}
            lZ = fn282
            lA = fns.fn51
            lj = fns.fn34
        else
            lA = {}
            lx = fn282
            lj = fns.fn51
            lZ = fns.fn34
        end
        sj_3 = (sj_3 + 11) % 56
    end
until (sj_3 * 5 + 38) % 56 == 17
if mp then
    sj_3 = 0
    repeat
        if (sj_3 * 1 + 9) * 13 % 4 == ((sj_3 * 1 + 9) * 13 + 13) % 4 then
            ls = string.sub(mp, 1, 18) .. "..."
        else
            mp = string.sub(ls, 1, 18) .. "..."
        end
        sj_3 = (sj_3 + 2) % 4
    until (sj_3 * 3 + 2) % 4 == 0
end
sj_3 = mp or ls
k5 = nil
ma = sj_3
mq:AddLabel(lR("Server", ma, mi), true)
mq:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
k5 = os.clock()
task.spawn(worker2)
mw = mr.Info:AddRightGroupbox("Scripts", "package")
mw:AddLabel(l3("Included in this hub", mi), true)
mw:AddLabel(l3(mf, mj), true)
mv = mr.Info:AddRightGroupbox("Features", "list")
mv:AddLabel(l3("Auto Collect", lv), true)
mv:AddLabel(l3("Auto Buy", mj), true)
mv:AddLabel(l3("Auto Spin", mk), true)
mv:AddLabel(l3("Combat", lv), true)
mv:AddLabel(l3("ESP", mj), true)
mv:AddLabel(l3("Player Utilities", mi), true)
mu = mr.Info:AddRightGroupbox("Socials", "link")
mu:AddButton({ Text = "Discord", Func = kS })
mu:AddButton({ Text = "Rscripts", Func = onRscripts })
ms = mr.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
ms:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
ms:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
ms:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
ms:AddButton({ Text = "Copy Discord Invite", Func = kS })
mp = mr.Info:AddRightGroupbox("Donations", "heart")
mp:AddLabel(l3("All donations are optional but appreciated.", lv), true)
mp:AddLabel(l3("If you donate you get a special role, just PING after you donate.", mk), true)
mp:AddDivider()
mp:AddLabel(l3("LTC / Litecoin", me), true)
mp:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
mp:AddLabel(l3("BTC / Bitcoin", md), true)
mp:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
mp:AddLabel(l3("ETH / Ethereum", mc), true)
mp:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
mp:AddLabel(l3("USDT", mb), true)
mp:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
mp:AddLabel(l3("Solana", mn), true)
mp:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
mp:AddLabel(l3("PayPal", mm), true)
mp:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
mp:AddLabel(l3("Venmo", ml), true)
mp:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
mp:AddDivider()
mp:AddLabel(l3("Don't have any of the listed currencies but still wanna donate?", mi), true)
mp:AddLabel(l3("DM me and we'll work something out.", mj), true)
l9 = mr.Info:AddRightGroupbox("FAQ", "circle-help")
l9:AddLabel("Where do I get a good config?", true)
l9:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
l9:AddLabel("How do I import / export configs?", true)
l9:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
l9:AddLabel("How do I report bugs?", true)
l9:AddLabel("Join the Discord and post it in the bugs channel.", true)
l9:AddLabel("How do I make suggestions?", true)
l9:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
l9:AddLabel("How do I get help or updates?", true)
l9:AddLabel("Join the Discord, updates and support are posted there first.", true)
for k, v in pairs(mr) do
    if v ~= mr.Info then
        fn470(v)
    end
end
me, ma, k8, k2, connection, connection2, CurrentCamera2, l7, lP, lq, kW, l4, lo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not kW and not ma and (not kW or not lq) or (not kW or not kW) and (not kW or not ma)) and not (not kW and not ma and (not kW or not lq) or (not kW or not kW) and (not kW or not ma)) then
    mr = me.Main:AddLeftGroupbox("Automation", "bot")
else
    me = mr.Main:AddLeftGroupbox("Automation", "bot")
end
me:AddToggle("AutoCollectEventCoin", { Text = "Auto Collect Event Coin", Default = false })
me:AddToggle("AutoBuyShops", { Text = "Auto Buy Shops/Crates", Default = false })
me:AddDropdown("ShopBuySelection", {
    Text = "Shop/Crate Selection",
    Values = mg,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true
})
me:AddToggle("AutoSpinWheel", { Text = "Auto Spin Wheel", Default = false })
Toggles.AutoCollectEventCoin:OnChanged(fn513)
mc = mr.Main:AddRightGroupbox("Combat", "crosshair")
mc:AddToggle("Aimbot", { Text = "Aimbot", Default = false })
mc:AddToggle("AutoShoot", { Text = "Auto Shoot", Default = false })
mc:AddDropdown("ShootTarget", { Text = "Shoot Target", Values = lD(), Default = "", AllowNull = true, Searchable = true })
mc:AddToggle("OnlyShootAfterEventCoins", { Text = "Only Shoot when all Event Coins Collected", Default = false })
mc:AddToggle("PlayerESP", { Text = "Player ESP", Default = false })
Toggles.PlayerESP:OnChanged(fn335)
kR.PlayerAdded:Connect(onPlayerAdded)
kR.PlayerRemoving:Connect(onPlayerRemoving)
task.defer(kV)
ma = mr.Player:AddLeftGroupbox("Movement", "footprints")
ma:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
ma:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
ma:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
ma:AddToggle("NoClip", { Text = "NoClip", Default = false })
ma:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
l9 = mr.Player:AddRightGroupbox("Fly", "feather")
l9:AddToggle("Fly", { Text = "Fly", Default = false })
l9:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
sj_3 = mr.Settings:AddLeftGroupbox("Menu")
sj_3:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
ll.ToggleKeybind = Options.MenuKeybind
sj_3:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
sj_3:AddButton({ Text = "Unload", Func = onUnload })
k8 = tick()
k2 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qw = v
        pcall(function()
            qw:Disable()
        end)
    end
end)
l7 = fn486
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
task.spawn(antiAfkLoop)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(onJumpRequest)
CurrentCamera2 = lJ.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn23)
Toggles.WalkSpeedEnabled:OnChanged(fn763)
lP = function(gH)
    pcall(function()
        lO:SetGameplayPausedNotificationEnabled(not gH)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = lM:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not gH
        end
    end)
    if not gH then
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
do
    Toggles.AntiGameplayPause:OnChanged(fn681)
    task.spawn(antiGameplayPauseLoop)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    lI()
    ThemeManager:SetLibrary(ll)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Monochrome")
    ThemeManager:ApplyToTab(mr.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(ll)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/CowboyDUELS")
    mb = SaveManager:BuildConfigSection(mr.Settings)
end
lq = fn413
kW = fn386
l4 = fn606
lo = function(hx)
    local rP
    rP = nil
    local rQ = type(hx) ~= "table" or type(hx.idx) ~= "string" or type(hx.type) ~= "string" or SaveManager.Ignore[hx.idx]
    if rQ then
        return false
    end
    rP = lq(hx.type, hx.idx)
    if not rP then
        return false
    end
    local rQ_1 = pcall(function()
        if hx.type == "Input" then
            if type(hx.text) ~= "string" then
                return
            end
            rP:SetValue(hx.text)
        elseif hx.type == "ColorPicker" then
            rP:SetValueRGB(Color3.fromHex(hx.value), hx.transparency)
        elseif hx.type == "KeyPicker" then
            rP:SetValue({ hx.key, hx.mode, hx.modifiers })
            if hx.mode == "Toggle" and hx.toggled ~= nil then
                rP.Toggled = hx.toggled
                rP:Update()
            end
        else
            rP:SetValue(hx.value)
        end
    end)
    return rQ_1
end
mb:AddDivider()
mb:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
mb:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
mb:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
SaveManager:LoadAutoloadConfig()
ll:OnUnload(fn876)
