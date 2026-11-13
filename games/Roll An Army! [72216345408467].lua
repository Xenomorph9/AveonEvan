local fns = {}
local v5_9, v5_15, v5_18, v5_25
local Options
local nq
local n7
local m7
local nP
local nw
local connection2
local nV
local oj
local nj
local Workspace
local m0
local UnitInfo
local np
local n6
local m6
local nO
local nv
local Label
local nc
local nU
local nB
local UserInputService
local DataService
local oq
local no
local SaveManager
local nN
local nu
local HttpService
local nb
local nT
local nA
local oh
local nh
local nZ
local nG
local op
local n4
local nM
local ox
local connection
local oa
local na
local og
local nY
local nF
local oo
local nm
local m3
local nL
local ow
local ns
local n9
local m9
local nR
local ny
local VirtualUser
local nf
local LocalPlayer
local nE
local om
local getUpgradeCost
local n2
local Toggles
local ov
local RebirthConfig
local n8
local m8
local nQ
local MutationInfo
local CurrentCamera2
local Library
local nW
local nD
local ol
local nk
local n1
local m1
local nJ
function fns.onCopyVenmoLink()
    op(oq, "Copied Venmo link")
end
function fns.fn33(an, ao, ap)
    return string.format("<b>%s</b> %s %s", an, nZ("-", "#5a6070"), nZ(ao, ap))
end
function fns.fn41()
    local p0_1
    local p__1
    p__1, p0_1 = pcall(function()
        return DataService.client:get()
    end)
    local p1 = p__1 and typeof(p0_1) == "table"
    if p1 then
        return p0_1
    end
    return nil
end
function fns.fn60()
    local rc = nu()
    if not rc then
        return
    end
    for i, child in ipairs(rc:GetChildren()) do
        if child:IsA("Tool") then
            child.Parent = LocalPlayer.Backpack
        end
    end
end
function fns.fn65()
    pcall(function()
        nb:FireServer()
    end)
end
function fns.fn82()
    local ua_1
    local t9_1
    if identifyexecutor then
        ua_1, t9_1 = identifyexecutor()
        local ub = ua_1 ~= ""
        local uc = type(ua_1) == "string" and ub
        if uc then
            local ub_1 = type(t9_1) == "string" and t9_1 ~= "" and ua_1 .. " " .. t9_1
            na = ub_1 or ua_1
        end
    end
end
function fns.fn89()
    if not Toggles.WalkSpeedEnabled.Value then
        local u_ = nm()
        if u_ then
            u_.WalkSpeed = 16
        end
    end
end
function fns.onRscripts()
    if setclipboard then
        setclipboard(nL)
    elseif toclipboard then
        toclipboard(nL)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
function fns.onCopyBitcoinAddress()
    op(nf, "Copied Bitcoin address")
end
function fns.onUnload()
    Library:Unload()
end
function fns.antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            ox(true)
        end
    end
end
function fns.fn136(ak, al)
    return string.format('<font color="%s">%s</font>', al, ak)
end
function fns.onCopyUSDTAddress()
    op(m6, "Copied USDT address")
end
function fns.fn175(aK)
    if Library.Unloaded then
        return false
    end
    local pJ = Toggles[aK]
    return pJ ~= nil and pJ.Value == true
end
function fns.onRollOnce()
    task.spawn(nq)
end
function fns.fn194()
    local s1 = om()
    if not s1 then
        return
    end
    local Money_Claim = s1:FindFirstChild("Money Claim")
    local s1_1 = Money_Claim and Money_Claim:FindFirstChild("Hitbox")
    local s2_1 = s1_1
    if s1_1 then
        s1_1 = s2_1:IsA("BasePart")
    end
    if s1_1 then
        nW(s2_1.Position)
        task.wait(0.35)
    end
    local s1_2 = oh()
    if s1_2 and s1_2.auto_collect_on ~= true then
        pcall(function()
            oj:FireServer()
        end)
    end
end
function fns.onInputChanged(hC)
    local UserInputType = hC.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oa = tick()
    end
end
function fns.fn213(b8)
    if not b8 then
        return false
    end
    local qZ = nu()
    local q_ = nm()
    if not qZ or not q_ then
        return false
    end
    for i, child in ipairs(qZ:GetChildren()) do
        local q__1 = child ~= b8
        local q0_1 = child:IsA("Tool") and q__1
        if q0_1 then
            child.Parent = LocalPlayer.Backpack
        end
    end
    if b8.Parent ~= qZ then
        b8.Parent = qZ
    end
    return true
end
function fns.fn228()
    if not Toggles.Fly.Value then
        local uY = nm()
        if uY then
            uY.PlatformStand = false
        end
    end
end
function fns.fn271(bV)
    local qC = not bV or not bV:IsA("Tool")
    if qC then
        return nil
    end
    local attr2 = bV:GetAttribute("UnitName")
    local qD = attr2 == ""
    local qE = typeof(attr2) ~= "string" or qD
    if qE then
        return nil
    end
    local qD_1 = UnitInfo[attr2]
    if not qD_1 then
        return nil
    end
    local qE_1 = bV:GetAttribute("UnitId") or bV.Name
    local qF = tonumber(bV:GetAttribute("Level")) or 1
    local attr = bV:GetAttribute("Mutation")
    local Rarity = qD_1.Rarity
    local qI = tonumber(qD_1.Cost) or 0
    return {
        tool = bV,
        unitName = attr2,
        unitId = qE_1,
        level = qF,
        mutation = attr,
        rarity = Rarity,
        cost = qI,
        dps = nv(attr2, bV:GetAttribute("Level"), bV:GetAttribute("Mutation"))
    }
end
function fns.fn278()
    local vq = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local vr = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if vr then
                local vr_1 = nJ(k, v)
                if vr_1 then
                    vq[#vq + 1] = vr_1
                end
            end
        end
    end
    table.sort(vq, function(jj, jk)
        if jj.type ~= jk.type then
            return jj.type < jk.type
        end
        return jj.idx < jk.idx
    end)
    return { objects = vq }
end
function fns.fn285(aV)
    local pR = nA(aV, {})
    if typeof(pR) ~= "table" then
        return {}
    end
    local pS = {}
    for k, v in pairs(pR) do
        if v == true then
            pS[k] = true
        else
            local pR_1 = typeof(k) == "number" and typeof(v) == "string"
            if pR_1 then
                pS[v] = true
            end
        end
    end
    return pS
end
function fns.fn296(fj)
    local tx
    for i, v in ipairs(ny()) do
        local ty = n1(v)
        if ty then
            local tz = nA("PlaceMinRarity", "Common")
            if nD(ty.rarity) >= nD(tz) then
                local tA = not fj or ty.dps > fj
                if tA then
                    tA = not tx or ty.dps > tx.dps
                end
                if tA then
                    tx = ty
                end
            end
        end
    end
    return tx
end
function fns.fn309()
    local sW = m7("PlotExpansion")
    local sX = sW < math.huge and nV() >= sW
    if sX then
        pcall(function()
            m0:InvokeServer("PurchaseUpgrade", "PlotExpansion")
        end)
    end
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local uJ_1 = nm()
        if uJ_1 then
            uJ_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
function fns.worker5()
    while not Library.Unloaded do
        task.wait(1.25)
        if nU("AutoCollect") then
            pcall(ns)
        end
        if nU("AutoSell") then
            pcall(n2)
        end
        if nU("AutoPlace") then
            pcall(nP)
        end
        if nU("AutoReplace") then
            pcall(nT)
        end
    end
end
function fns.onCopyPayPalLink()
    op(ow, "Copied PayPal link")
end
function fns.fn351(ad, ae)
    if setclipboard then
        setclipboard(ad)
    elseif toclipboard then
        toclipboard(ad)
    end
    Library:Notify(ae)
end
function fns.worker4()
    while not Library.Unloaded do
        task.wait(1)
        if nU("AutoBuyUpgrades") then
            pcall(m9)
        end
        if nU("AutoExpandPlot") then
            pcall(nR)
        end
        if nU("AutoBuySlots") then
            pcall(nE)
        end
        if nU("AutoGemShop") then
            pcall(nG)
        end
        if nU("AutoRebirth") then
            pcall(n7)
        end
    end
end
function fns.fn368()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    n4 = tick()
end
function fns.fn369()
    local qK = {}
    local qL = nu()
    if qL then
        for i, child in ipairs(qL:GetChildren()) do
            if child:IsA("Tool") then
                qK[#qK + 1] = child
            end
        end
    end
    for i, child in ipairs(LocalPlayer.Backpack:GetChildren()) do
        if child:IsA("Tool") then
            qK[#qK + 1] = child
        end
    end
    return qK
end
function fns.onInputBegan()
    oa = tick()
end
function fns.fn451()
    local rA = oh()
    local rB = not rA
    local rC = {}
    if not rB then
        rB = typeof(rA.Slots) ~= "table"
    end
    if rB then
        return rC
    end
    for k, v in pairs(rA.Slots) do
        local rA_1 = typeof(v) == "table" and typeof(v.slotName) == "string"
        if rA_1 then
            rC[v.slotName] = v
        end
    end
    return rC
end
local function fn486()
    for i, v in ipairs(ny()) do
        local tp = Library.Unloaded or not nU("AutoSell")
        if tp then
            break
        end
        local tp_1 = n1(v)
        if ov(tp_1) then
            m1(v)
            task.wait(0.1)
            pcall(function()
                m0:InvokeServer("Sell One")
            end)
            task.wait(0.2)
        end
    end
    nY()
end
local function fn498()
    local s4 = oh()
    if not s4 then
        return
    end
    local GetRebirthCost = RebirthConfig.GetRebirthCost
    local s6 = tonumber(s4.Rebirths) or 0
    local s4_1 = GetRebirthCost(s6)
    if nV() >= s4_1 then
        pcall(function()
            oo:InvokeServer()
        end)
    end
end
local function fn499()
    local r1 = 0
    for k, v in pairs(ol()) do
        if v.purchased == true then
            r1 += 1
        end
    end
    return r1
end
local function worker2()
    while not Library.Unloaded do
        if nU("AutoRoll") then
            pcall(nq)
            task.wait(nA("AutoRollDelay", 2.5))
        else
            task.wait(0.35)
        end
    end
end
local function onExportConfigToClipboard()
    local vO_1
    local vN_1
    vN_1, vO_1 = pcall(HttpService.JSONEncode, HttpService, nw())
    if not vN_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local vN_2 = setclipboard or toclipboard
    local vN_3 = type(vN_2) ~= "function" or not pcall(vN_2, vO_1)
    if vN_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function fn531(cQ)
    local rU = oh()
    local rV = not rU or typeof(rU.UpgradeBoardLevels) ~= "table"
    if rV then
        return 0
    end
    local rV_1 = tonumber(rU.UpgradeBoardLevels[cQ]) or 0
    return rV_1
end
local function onCopyJoinScript_JobID()
    local ue = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, n6)
    if setclipboard then
        setclipboard(ue)
    elseif toclipboard then
        toclipboard(ue)
    end
    Library:Notify("Copied join script to clipboard")
end
local function onImportConfigFromClipboardTex()
    local vT_1
    local vR = Options.SaveManager_ImportSource.Value or ""
    local vR_1
    local vS = tostring(vR):match("^%s*(.-)%s*$")
    if vS == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    vR_1, vT_1 = pcall(HttpService.JSONDecode, HttpService, vS)
    local vS_1 = not vR_1 or type(vT_1) ~= "table" or type(vT_1.objects) ~= "table"
    if vS_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local vR_2 = 0
    for i, v in ipairs(vT_1.objects) do
        if n8(v) then
            vR_2 += 1
        end
    end
    if vR_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local vT_2 = vR_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(vR_2, vT_2), 6)
end
local function worker3()
    while not Library.Unloaded do
        task.wait(0.75)
        if nU("AutoBuy") then
            pcall(nh)
        end
    end
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local u1 = tick() - oa
            local u2 = tick() - n4
            if u1 >= 300 and u2 >= 60 then
                pcall(nO)
            else
                if u1 < 300 and u2 >= 300 then
                    pcall(nO)
                end
            end
        end
    end
end
local function fn572(gp)
    local DiscordGroup = gp:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = n9 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = n9 })
end
local function onRenderStepped(ic)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local uO_1 = nm()
        if uO_1 then
            uO_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local uO_3 = m8()
        local uP = nm()
        if uO_3 and uP then
            uP.PlatformStand = true
            local uP_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                uP_1 = uP_1 + CurrentCamera2.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                uP_1 = uP_1 - CurrentCamera2.CFrame.LookVector
            end
            local uX = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            if uX == 1 then
                uP_1 = uP_1 - CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                uP_1 = uP_1 + CurrentCamera2.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                uP_1 = uP_1 + Vector3.new(0, 1, 0)
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                uP_1 = uP_1 - Vector3.new(0, 1, 0)
            end
            uO_3.Velocity = Vector3.zero
            if uP_1.Magnitude > 0 then
                uO_3.CFrame = uO_3.CFrame + uP_1.Unit * Options.FlySpeed.Value * ic
            end
        end
    end
end
local function fn602(eZ)
    if not eZ then
        return false
    end
    local tk = nD(nA("SellMaxRarity", "Common"))
    if nD(eZ.rarity) > tk then
        return false
    end
    local tk_1 = nA("SellMaxCost", 100000)
    if eZ.cost > tk_1 then
        return false
    end
    local tk_2 = nA("SellMaxDps", 100000)
    if eZ.dps > tk_2 then
        return false
    end
    return true
end
local function worker()
    local uh_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local ug = math.floor(os.clock() - nM)
        if ug < 60 then
            uh_1 = ug .. "s"
        elseif ug < 3600 then
            uh_1 = string.format("%dm %ds", ug // 60, ug % 60)
        else
            uh_1 = string.format("%dh %dm", ug // 3600, ug % 3600 // 60)
        end
        Label:SetText(nN("Session time", uh_1, np))
    end
end
local function onCopySolanaAddress()
    op(m3, "Copied Solana address")
end
local function fn621()
    pcall(function()
        connection:Disconnect()
    end)
    pcall(function()
        connection2:Disconnect()
    end)
    ox(false)
    local v0 = nm()
    if v0 then
        v0.PlatformStand = false
        v0.WalkSpeed = 16
    end
end
local function onCopyEthereumAddress()
    op(nc, "Copied Ethereum address")
end
local function fn652(K, L)
    return K.order < L.order
end
local function fn664()
    local qc = nu()
    local qd = qc and qc:FindFirstChild("HumanoidRootPart")
    return qd
end
local function fn687()
    op(nQ, "Copied Discord invite to clipboard")
end
local function fn696(aQ, aR)
    local pP = Options[aQ]
    if pP == nil then
        return aR
    end
    return pP.Value
end
local function fn718(bx)
    local qn = m8()
    local qo = not qn or typeof(bx) ~= "Vector3"
    if qo then
        return false
    end
    qn.CFrame = CFrame.new(bx + Vector3.new(0, 3, 0))
    return true
end
local function fn734(cn)
    local rk = cn
    local rl = {}
    if rk then
        rk = cn:FindFirstChild("Plot Layers")
    end
    local rm = rk
    if not rm then
        return rl
    end
    for i, child in ipairs(rm:GetChildren()) do
        local Slots = child:FindFirstChild("Slots")
        if Slots then
            for i, child in ipairs(Slots:GetChildren()) do
                local rk_2 = child:IsA("Model") and child:FindFirstChild("UnitPlacement")
                if rk_2 then
                    rl[#rl + 1] = child
                end
            end
        end
    end
    table.sort(rl, function(cx, cy)
        return cx.Name < cy.Name
    end)
    return rl
end
local function fn763(c9, da)
    local r9 = nk(da)
    if not next(r9) then
        return true
    end
    return r9[c9] == true
end
local function fn767(i2, i3)
    local va_1 = (i2 == "Toggle" and Toggles or Options)[i3]
    local u9_2 = type(va_1) == "table" and va_1.Type == i2
    return u9_2 and va_1 or nil
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local uB_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if uB_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function fn818()
    local p9 = nu()
    local qa = p9 and p9:FindFirstChildOfClass("Humanoid")
    return qa
end
local function fn845(i8, i9)
    local Type = i9.Type
    if Type == "Toggle" then
        return { idx = i8, type = "Toggle", value = i9.Value == true }
    elseif Type == "Slider" then
        return { idx = i8, type = "Slider", value = tostring(i9.Value) }
    elseif Type == "Dropdown" then
        return { idx = i8, type = "Dropdown", multi = i9.Multi == true, value = i9.Value }
    elseif Type == "Input" then
        local vh = i9.Value
        local vl = if vh then 1 else 0
        local vj = 3053 * vl + 2590 * (1 - vl)
        local vk = 1328 * vl + 1763 * (1 - vl)
        if not ((vj * 8 + vk * 3305 + vj * vk) % 16777213 == 8467848) then
            vh = ""
        end
        return { idx = i8, type = "Input", text = tostring(vh) }
    elseif Type == "ColorPicker" then
        return { idx = i8, type = "ColorPicker", value = i9.Value:ToHex(), transparency = i9.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = i8,
            type = "KeyPicker",
            mode = i9.Mode,
            key = i9.Value,
            modifiers = i9.Modifiers,
            toggled = i9.Toggled
        }
    else
        return nil
    end
end
local function onCopyLitecoinAddress()
    op(nj, "Copied Litecoin address")
end
local function fn870(bF, bG, bH)
    local qs = UnitInfo[bF]
    if not qs then
        return 0
    end
    local qt = tonumber(qs.BaseDPS) or 0
    local qt_1 = tonumber(bG) or 1
    local qt_2 = oh()
    local qv = qt_2
    local qw = 1
    if qv then
        qv = qt_2.PermUpgrades
    end
    if qv then
        qv = qt_2.PermUpgrades.DamageMulti
    end
    if qv then
        local qv_1 = (tonumber(qt_2.PermUpgrades.DamageMulti))
        local qB = if qv_1 then 1 else 0
        local qz = 3951 * qB + 1131 * (1 - qB)
        local qA = 2243 * qB + 3083 * (1 - qB)
        if not ((qz * 1340 + qA * 3804 + qz * qA) % 16777213 == 5911592) then
            qv_1 = 1
        end
        qw = qv_1
    end
    local qt_3 = 1
    local qv_2 = bH ~= ""
    local qx = typeof(bH) == "string" and qv_2
    if qx then
        local qv_3 = MutationInfo[bH]
        if qv_3 and qv_3.DamageMultiplier then
            local qx_2 = tonumber(qv_3.DamageMultiplier) or 1
            qt_3 = qx_2
        end
    end
    return math.floor(qt + (qt_1 - 1) * (qt / 3) * qw) * qt_3
end
local function fn890()
    local rK = oh()
    local rL = not rK
    local rM = {}
    if not rL then
        rL = typeof(rK.units) ~= "table"
    end
    if rL then
        return rM
    end
    for k, v in pairs(rK.units) do
        local rK_1 = typeof(v) == "table" and typeof(v.unitId) == "string"
        if rK_1 then
            rM[v.unitId] = v
        end
    end
    return rM
end
local function fn922()
    local p3 = oh()
    local p4 = p3 and tonumber(p3.Money)
    return p4 or 0
end
local function fn932(bC)
    return og[bC] or 0
end
local function fn934()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local qf_1 = child:GetAttribute("OwnerId") == LocalPlayer.UserId or child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if qf_1 then
            return child
        end
    end
    return nil
end
local function fn940()
    return LocalPlayer.Character
end
local function fn943(cV)
    local rX = nF[cV]
    if not rX then
        return math.huge
    end
    local rY = no(cV)
    local rZ = nB[cV]
    if rZ and rY >= rZ then
        return math.huge
    end
    return getUpgradeCost.GetUpgradeCost(rX, math.max(rY, 1))
end
local function fn962()
    ox(Toggles.AntiGameplayPause.Value)
end
m0 = nil
m1 = nil
Toggles = nil
m3 = nil
SaveManager = nil
m6 = nil
m7 = nil
m8 = nil
m9 = nil
na = nil
nb = nil
nc = nil
connection2 = nil
Library = nil
nf = nil
nh = nil
DataService = nil
nj = nil
nk = nil
getUpgradeCost = nil
nm = nil
no = nil
np = nil
nq = nil
RebirthConfig = nil
ns = nil
connection = nil
nu = nil
nv = nil
nw = nil
MutationInfo = nil
ny = nil
nA = nil
nB = nil
nD = nil
nE = nil
nF = nil
nG = nil
UnitInfo = nil
nJ = nil
nL = nil
nM = nil
nN = nil
local Buy_Unit, ng, GetSlotCost, nz, nC, nH, nK
nO = nil
nP = nil
nQ = nil
nR = nil
nT = nil
nU = nil
nV = nil
nW = nil
LocalPlayer = nil
nY = nil
nZ = nil
Workspace = nil
n1 = nil
n2 = nil
n4 = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
HttpService = nil
Label = nil
CurrentCamera2 = nil
VirtualUser = nil
og = nil
oh = nil
UserInputService = nil
oj = nil
ol = nil
om = nil
oo = nil
op = nil
oq = nil
Options = nil
ov = nil
ow = nil
ox = nil
local nS, n_, CoreGui, GuiService, od, ot
nS = nil
n_ = nil
CoreGui = nil
GuiService = nil
od = nil
ot = nil
local DonationsGroup
UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, nQ, nL, UnitInfo, v5_18, MutationInfo, RebirthConfig, GetSlotCost, getUpgradeCost, DataService, nb, Buy_Unit, m0, ot, oo, oj, og = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local v5_30 = game:GetService("Players")
local v5_32 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = v5_30.LocalPlayer
local v5_21 = "Roll an Army"
nQ = "https://discord.gg/ehKVq7pf7v"
if ((nb and not CoreGui or not ot and not MutationInfo) and (v5_18 and not MutationInfo and (CoreGui and not v5_18)) or ((not CoreGui or not ot) and (not ot or nb) or MutationInfo and not MutationInfo and (MutationInfo and MutationInfo))) and not ((nb and not CoreGui or not ot and not MutationInfo) and (v5_18 and not MutationInfo and (CoreGui and not v5_18)) or ((not CoreGui or not ot) and (not ot or nb) or MutationInfo and not MutationInfo and (MutationInfo and MutationInfo))) then
    v5_32 = "https://rscripts.net/@Ouroboros"
    nL = require(UnitInfo:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("UnitInfo"))
else
    nL = "https://rscripts.net/@Ouroboros"
    UnitInfo = require(v5_32:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("UnitInfo"))
end
v5_18 = require(v5_32:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("Rarities"))
local v5_6 = require(v5_32:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("BoardInfo"))
MutationInfo = require(v5_32:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("MutationInfo"))
local v5_34 = require(v5_32:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("CrateInfo"))
RebirthConfig = require(v5_32:WaitForChild("Utility"):WaitForChild("Info"):WaitForChild("RebirthConfig"))
GetSlotCost = require(v5_32:WaitForChild("Utility"):WaitForChild("Prices"):WaitForChild("GetSlotCost"))
getUpgradeCost = require(v5_32:WaitForChild("Utility"):WaitForChild("Prices"):WaitForChild("getUpgradeCost"))
DataService = require(v5_32:WaitForChild("Data"):WaitForChild("DataService"))
local v5_16 = v5_32:WaitForChild("Remotes")
if (not ot or not MutationInfo) and (not VirtualUser or not MutationInfo) and (not ot and not VirtualUser or (not VirtualUser or ot)) or not ((not ot or not MutationInfo) and (not VirtualUser or not MutationInfo) and (not ot and not VirtualUser or (not VirtualUser or ot))) then
    nb = v5_16:WaitForChild("RollRequest")
    Buy_Unit = v5_16:WaitForChild("Buy Unit")
    m0 = v5_16:WaitForChild("InteractPlot")
    ot = v5_16:WaitForChild("PurchaseGemShop")
else
    v5_16 = Buy_Unit:WaitForChild("RollRequest")
    m0 = Buy_Unit:WaitForChild("Buy Unit")
    ot = Buy_Unit:WaitForChild("InteractPlot")
    nb = Buy_Unit:WaitForChild("PurchaseGemShop")
end
if (not RebirthConfig or not LocalPlayer) and (not LocalPlayer or RebirthConfig) or (not LocalPlayer or RebirthConfig or (not LocalPlayer or RebirthConfig)) or not ((not RebirthConfig or not LocalPlayer) and (not LocalPlayer or RebirthConfig) or (not LocalPlayer or RebirthConfig or (not LocalPlayer or RebirthConfig))) then
    oo = v5_16:WaitForChild("Rebirth")
    oj = v5_16:WaitForChild("AutoCollect")
    og = {}
    v5_9 = {}
else
    oj = og:WaitForChild("Rebirth")
    v5_9 = og:WaitForChild("AutoCollect")
    oo = {}
end
local v5_24 = {}
for k, v in pairs(v5_18) do
    v5_30 = #v5_24 + 1
    v5_16 = v.Order or 0
    v5_24[v5_30] = { name = k, order = v5_16 }
end
local v5_4 = 3
repeat
    v5_30 = (vector.create((v5_4 * 4 + 9) % 11 + 1, (v5_4 * 2 + 11) % 13 + 1, (v5_4 * 6 + 3) % 17 + 1))
    v5_16 = (vector.create((v5_4 * 3 + 9) % 11 + 1, (v5_4 * 1 + 6) % 13 + 1, (v5_4 * 11 + 17) % 17 + 1))
    v5_32 = (vector.create((v5_4 * 1 + 5) % 5 + 1, (v5_4 * 5 + 3) % 7 + 1, (v5_4 * 4 + 5) % 9 + 1))
    if math.abs((vector.angle(v5_30, v5_16, v5_32))) - math.abs((vector.angle(v5_16, v5_30, v5_32))) == 5 then
        table.sort(v5_24, fn652)
    else
        table.sort(v5_24, fn652)
    end
    v5_4 = (v5_4 + 1) % 4
until (v5_4 * 1 + 0) % 4 == 0
for i, v in ipairs(v5_24) do
    og[v.name] = v.order
    v5_9[#v5_9 + 1] = v.name
end
nK, nF, nB, nz = nil, nil, nil, nil
v5_30 = 7
repeat
    v5_16 = {
        "wdlgfsknr",
        "oluiofdib",
        "kanl",
        "sfurbk",
        "qram",
        "gydyvrs",
        "tdcgw",
        "znxzdbdvz",
        "mwtycr",
        "pgoj",
        "nilofermz"
    }
    local wP = v5_30
    v5_4 = v5_16[wP % 11 + 1]
    if v5_4:len() <= v5_4:gsub("(.)", "%1%1", wP % 3 % 2 + 1):len() then
        nK = {
            "Roll Luck",
            "Number Rolls",
            "Money Multiplier",
            "Damage Upgrade",
            "PlotExpansion",
            "Zombie Tier Upgrade"
        }
        nF = {
            ["Roll Luck"] = v5_6.RollUpgrades["Roll Luck"].BaseUpgradeCost,
            ["Number Rolls"] = v5_6.RollUpgrades["Number Rolls"].BaseUpgradeCost,
            ["Money Multiplier"] = v5_6.BaseUpgrades["Money Multiplier"].BaseUpgradeCost,
            ["Damage Upgrade"] = v5_6.BaseUpgrades["Damage Upgrade"].BaseUpgradeCost,
            PlotExpansion = v5_6.PlotExpansion.BaseUpgradeCost,
            ["Zombie Tier Upgrade"] = v5_6["Zombie Tier Upgrade"].BaseUpgradeCost
        }
        nB = {
            ["Roll Luck"] = v5_6.RollUpgrades["Roll Luck"].upgradeMax,
            ["Number Rolls"] = v5_6.RollUpgrades["Number Rolls"].upgradeMax,
            ["Money Multiplier"] = v5_6.BaseUpgrades["Money Multiplier"].upgradeMax,
            ["Damage Upgrade"] = v5_6.BaseUpgrades["Damage Upgrade"].upgradeMax,
            PlotExpansion = v5_6.PlotExpansion.upgradeMax,
            ["Zombie Tier Upgrade"] = v5_6["Zombie Tier Upgrade"].upgradeMax
        }
        nz = {}
    else
        nz = {
            "Money Multiplier",
            "Roll Luck",
            "Zombie Tier Upgrade",
            "Damage Upgrade",
            "Number Rolls",
            "PlotExpansion"
        }
        nB = {
            PlotExpansion = nK.PlotExpansion.BaseUpgradeCost,
            ["Zombie Tier Upgrade"] = nK["Zombie Tier Upgrade"].BaseUpgradeCost,
            ["Damage Upgrade"] = nK.BaseUpgrades["Damage Upgrade"].BaseUpgradeCost,
            ["Roll Luck"] = nK.RollUpgrades["Roll Luck"].BaseUpgradeCost,
            ["Number Rolls"] = nK.RollUpgrades["Number Rolls"].BaseUpgradeCost,
            ["Money Multiplier"] = nK.BaseUpgrades["Money Multiplier"].BaseUpgradeCost
        }
        nF = {
            PlotExpansion = nK.PlotExpansion.upgradeMax,
            ["Number Rolls"] = nK.RollUpgrades["Number Rolls"].upgradeMax,
            ["Roll Luck"] = nK.RollUpgrades["Roll Luck"].upgradeMax,
            ["Damage Upgrade"] = nK.BaseUpgrades["Damage Upgrade"].upgradeMax,
            ["Zombie Tier Upgrade"] = nK["Zombie Tier Upgrade"].upgradeMax,
            ["Money Multiplier"] = nK.BaseUpgrades["Money Multiplier"].upgradeMax
        }
        v5_6 = {}
    end
    v5_30 = (v5_30 + 1) % 8
until (v5_30 * 1 + 1) % 8 == 1
for k, v in pairs(MutationInfo) do
    if v.GemShop == true then
        nz[#nz + 1] = k
    end
end
for k, v in pairs(v5_34) do
    if v.GemShop == true then
        nz[#nz + 1] = k
    end
end
table.sort(nz)
Library, SaveManager, Toggles, Options, np, nj, nf, nc, m6, m3, ow, oq, op, n9, nZ, nN, nU, nA, nk, oh, nV, v5_4, nu, nm, m8, om, nW, nD, nv, n1, ny, m1, nY, nC, ol, nS, no, m7, n_, nH, nq, nh, m9, nE, nR, ns, n7, nG, ov, n2, ng, nP, nT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
v5_6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
op = fns.fn351
n9 = fn687
nZ = fns.fn136
nN = fns.fn33
local v5_10 = "#7fd47f"
v5_24 = "#6ec1ff"
np = "#e8a34d"
v5_34 = "#8b93a3"
nj = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
nf = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
nc = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
m6 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
m3 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
ow = "https://paypal.me/TheTruckerGOD"
oq = "https://venmo.com/u/miserablemusic"
local v5_28 = "#345d9d"
local v5_1 = "#f7931a"
local v5_13 = "#627eea"
local v5_27 = "#26a17b"
local v5_39 = "#14f195"
local v5_12 = "#0070ba"
if (not v5_4 and v5_4 or "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" or (v5_4 or v5_4) and false) and ("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" and (false or (not v5_4 or v5_4))) or not ((not v5_4 and v5_4 or "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" or (v5_4 or v5_4) and false) and ("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/" and (false or (not v5_4 or v5_4)))) then
    v5_25 = "#008cff"
    nU = fns.fn175
    nA = fn696
    nk = fns.fn285
    oh = fns.fn41
else
    nU = "#008cff"
    oh = fns.fn175
    nk = fn696
    v5_25 = fns.fn285
    nA = fns.fn41
end
nV = fn922
nu = fn940
nm = fn818
m8 = fn664
om = fn934
nW = fn718
nD = fn932
nv = fn870
n1 = fns.fn271
ny = fns.fn369
m1 = fns.fn213
nY = fns.fn60
nC = fn734
ol = fns.fn451
nS = fn890
no = fn531
m7 = fn943
n_ = fn499
nH = fn763
nq = fns.fn65
nh = function()
    local sb = om()
    if not sb then
        return
    end
    local Podiums = sb:FindFirstChild("Podiums")
    local sc_3
    if not Podiums then
        return
    end
    local sb_1 = nA("AutoBuyMaxPrice", 100000)
    local sd = nV()
    for i, child in ipairs(Podiums:GetChildren()) do
        local sq = child
        local sc_1 = Library.Unloaded or not nU("AutoBuy")
        if sc_1 then
            break
        end
        for i, child in ipairs(sq:GetChildren()) do
            local sw = child
            if sw:IsA("Model") then
                local sc_2 = UnitInfo[sw.Name]
                if sc_2 then
                    local se = tonumber(sc_2.Cost) or math.huge
                    local se_2
                    local se_1 = se <= sb_1 and se <= sd and nH(sc_2.Rarity, "AutoBuyRarities")
                    if se_1 then
                        sc_3, se_2 = pcall(function()
                            return Buy_Unit:InvokeServer(sw.Name, sq.Name)
                        end)
                        if sc_3 and se_2 == "Success" then
                            sd = nV()
                        end
                        task.wait(0.15)
                    end
                end
            end
        end
    end
end
m9 = function()
    local sx = nk("UpgradeSelect")
    if not next(sx) then
        return
    end
    for i, v in ipairs(nK) do
        local sG = v
        local sy = Library.Unloaded or not nU("AutoBuyUpgrades")
        if sy then
            break
        elseif sx[sG] then
            local sy_1 = m7(sG)
            local sz = sy_1 < math.huge and nV() >= sy_1
            if sz then
                pcall(function()
                    m0:InvokeServer("PurchaseUpgrade", sG)
                end)
                task.wait(0.2)
            end
        end
    end
end
nE = function()
    local sH = om()
    local sH_4
    if not sH then
        return
    end
    local sI = ol()
    for i, v in ipairs(nC(sH)) do
        local sV = v
        local sH_1 = Library.Unloaded or not nU("AutoBuySlots")
        if sH_1 then
            break
        else
            local sH_2 = sI[sV.Name]
            local sJ = not sH_2 or sH_2.purchased ~= true
            local sJ_1
            if sJ then
                local sH_3 = GetSlotCost.getcost(n_())
                if nV() >= sH_3 then
                    sH_4, sJ_1 = pcall(function()
                        return m0:InvokeServer("PurchaseSlot", sV)
                    end)
                    if sH_4 and sJ_1 == "Success" then
                        task.wait(0.25)
                    else
                        break
                    end
                else
                    break
                end
            end
        end
    end
end
nR = fns.fn309
ns = fns.fn194
n7 = fn498
nG = function()
    local s8 = nk("GemShopSelect")
    if not next(s8) then
        return
    end
    for i, v in ipairs(nz) do
        local tj = v
        local s9 = Library.Unloaded or not nU("AutoGemShop")
        if s9 then
            break
        elseif s8[tj] then
            pcall(function()
                ot:InvokeServer("Purchase", tj)
            end)
            task.wait(0.2)
        end
    end
end
ov = fn602
n2 = fn486
ng = fns.fn296
nP = function()
    local tI = om()
    local tI_4
    if not tI then
        return
    end
    local tJ = ol()
    for i, v in ipairs(nC(tI)) do
        local tT = v
        local tI_1 = Library.Unloaded or not nU("AutoPlace")
        if tI_1 then
            break
        else
            local tI_2 = tJ[tT.Name]
            local tK = tI_2 and tI_2.purchased == true
            local tK_1
            if tK then
                local tL_1 = typeof(tI_2.unitPlaced) ~= "string" or tI_2.unitPlaced == ""
                tK = tL_1
            end
            if tK then
                local tI_3 = ng(nil)
                if not tI_3 then
                    break
                end
                m1(tI_3.tool)
                task.wait(0.1)
                tI_4, tK_1 = pcall(function()
                    return m0:InvokeServer("PlaceUnit", tT)
                end)
                nY()
                task.wait(0.2)
                if not tI_4 or tK_1 ~= "Success" then
                    break
                end
                tJ = ol()
            end
        end
    end
end
nT = function()
    local tX = om()
    if not tX then
        return
    end
    local tY = ol()
    local tZ = nS()
    local t_ = nA("ReplaceMinDpsGain", 1)
    for i, v in ipairs(nC(tX)) do
        local t8 = v
        local tX_1 = Library.Unloaded or not nU("AutoReplace")
        if tX_1 then
            break
        else
            local tX_2 = tY[t8.Name]
            local t0 = tX_2 and tX_2.purchased == true and typeof(tX_2.unitPlaced) == "string" and tX_2.unitPlaced ~= ""
            if t0 then
                local t0_1 = tZ[tX_2.unitPlaced]
                local tX_3 = 0
                if t0_1 then
                    tX_3 = nv(t0_1.UnitName, t0_1.level, t0_1.Mutation)
                end
                local t0_2 = ng(tX_3 + t_ - 0.001)
                if t0_2 and t0_2.dps >= tX_3 + t_ then
                    pcall(function()
                        m0:InvokeServer("RemoveUnit", t8)
                    end)
                    task.wait(0.2)
                    m1(t0_2.tool)
                    task.wait(0.1)
                    pcall(function()
                        m0:InvokeServer("PlaceUnit", t8)
                    end)
                    nY()
                    task.wait(0.25)
                    tY = ol()
                    tZ = nS()
                end
            end
        end
    end
end
v5_16 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = nQ, Copyable = true }, "|", v5_21 },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
local v5_38 = {
    Info = v5_16:AddTab("Info", "info"),
    Main = v5_16:AddTab("Main", "gamepad-2"),
    Player = v5_16:AddTab("Player", "person-standing"),
    Settings = v5_16:AddTab("Settings", "settings")
}
v5_38.Roll = v5_38.Main:AddSubTab("Roll", "dices")
v5_38.Plot = v5_38.Main:AddSubTab("Plot", "map-pin")
v5_38.Shop = v5_38.Main:AddSubTab("Shop", "store")
v5_18 = fn572
for k, v in v5_38 do
    if v ~= v5_38.Main then
        v5_18(v)
    end
end
na, v5_30, v5_32, Label, n6, v5_4 = nil, nil, nil, nil, nil, nil
v5_16 = 4
repeat
    v5_18 = (v5_16 * 2 + 0) % 3 + 1
    if v5_18 <= 2 then
        if v5_18 <= 1 then
            if (not v5_30 or v5_30) and (v5_30 and v5_30) and (v5_30 and not na or not v5_30 and not na) or not ((not v5_30 or v5_30) and (v5_30 and v5_30) and (v5_30 and not na or not v5_30 and not na)) then
                n6 = tostring(game.JobId)
            else
                v5_32 = tostring(game.JobId)
            end
            v5_16 = (v5_16 + 11) % 24
        else
            if v5_16 * 88712887 + 4 + 7 >= v5_16 * 88712887 + 4 + 7 + 2 then
                n6 = #v5_4 > 18
            else
                v5_4 = #n6 > 18
            end
            v5_16 = (v5_16 + 20) % 24
        end
    else
        v5_18 = {
            "qvuic",
            "jnmq",
            "vdmkrk",
            "dtpszrupd",
            "hhnbmlrd",
            "whzbgj",
            "sogmz",
            "cvtood",
            "gkplqk",
            "uqfaf",
            "waqoyftnc"
        }
        local wJ = v5_16
        v5_15 = v5_18[wJ % 11 + 1]
        if v5_15:len() <= v5_15:gsub("(.)", "%1%1", wJ % 3 % 2 + 1):len() then
            na = "Unknown"
            pcall(fns.fn82)
            v5_30 = v5_38.Info:AddLeftGroupbox("Account", "circle-user")
            v5_30:AddLabel(nN("User", LocalPlayer.Name, v5_10), true)
            v5_30:AddLabel(nN("Status", "Keyless", v5_10), true)
            v5_30:AddLabel(nN("Executor", na, v5_10), true)
            v5_32 = v5_38.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            v5_32:AddLabel(nZ(v5_21 .. " [" .. tostring(game.PlaceId) .. "]", v5_24), true)
            v5_32:AddLabel(nN("Place ID", tostring(game.PlaceId), v5_24), true)
            Label = v5_32:AddLabel(nN("Session time", "0s", np), true)
        else
            np = "Unknown"
            pcall(fns.fn82)
            v5_21 = nN.Info:AddLeftGroupbox("Account", "circle-user")
            v5_21:AddLabel(v5_24("User", v5_32.Name, Label), true)
            v5_21:AddLabel(v5_24("Status", "Keyless", Label), true)
            v5_21:AddLabel(v5_24("Executor", np, Label), true)
            v5_10 = nN.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            v5_10:AddLabel(v5_30(na .. " [" .. tostring(game.PlaceId) .. "]", v5_38), true)
            v5_10:AddLabel(v5_24("Place ID", tostring(game.PlaceId), v5_38), true)
            nZ = v5_10:AddLabel(v5_24("Session time", "0s", LocalPlayer), true)
        end
        v5_16 = (v5_16 + 17) % 24
    end
until (v5_16 * 17 + 17) % 24 == 13
if v5_4 then
    v5_30 = 0
    repeat
        v5_16 = (vector.create((v5_30 * 2 + 4) % 11 + 1, (v5_30 * 8 + 8) % 13 + 1, (v5_30 * 5 + 11) % 17 + 1))
        v5_18 = (vector.create((v5_30 * 6 + 7) % 11 + 1, (v5_30 * 6 + 11) % 13 + 1, (v5_30 * 7 + 15) % 17 + 1))
        v5_15 = (vector.create((v5_30 * 1 + 3) % 5 + 1, (v5_30 * 2 + 3) % 7 + 1, (v5_30 * 5 + 4) % 9 + 1))
        if math.abs((vector.angle(v5_16, v5_18, v5_15))) - math.abs((vector.angle(v5_18, v5_16, v5_15))) == 0 then
            v5_4 = string.sub(n6, 1, 18) .. "..."
        else
            n6 = string.sub(v5_4, 1, 18) .. "..."
        end
        v5_30 = (v5_30 + 7) % 8
    until (v5_30 * 3 + 4) % 8 == 1
end
v5_30 = v5_4 or n6
nM, v5_16, DonationsGroup, oa, n4, connection, connection2, CurrentCamera2, nO, ox, od, nJ, nw, n8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local o2 = v5_30
v5_32:AddLabel(nN("Server", o2, v5_34), true)
v5_32:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nM = os.clock()
task.spawn(worker)
local ScriptsGroup = v5_38.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nZ("Included in this hub", v5_34), true)
ScriptsGroup:AddLabel(nZ(v5_21, v5_24), true)
local FeaturesGroup = v5_38.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nZ("Auto Roll / Buy", v5_24), true)
FeaturesGroup:AddLabel(nZ("Auto Place / Replace", np), true)
FeaturesGroup:AddLabel(nZ("Auto Upgrades / Slots / Expand", v5_10), true)
FeaturesGroup:AddLabel(nZ("Auto Sell / Collect / Gem Shop / Rebirth", v5_34), true)
local SocialsGroup = v5_38.Info:AddRightGroupbox("Socials", "link")
if (od and SocialsGroup and (od and not SocialsGroup) or (not oa and not od or not od and not od)) and not (od and SocialsGroup and (od and not SocialsGroup) or (not oa and not od or not od and not od)) then
    v5_16:AddButton({ Text = "Discord", Func = v5_38 })
    v5_16:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
    n9 = SocialsGroup.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    SocialsGroup:AddButton({ Text = "Discord", Func = n9 })
    SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
    v5_16 = v5_38.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
if (n8 and not connection or (CurrentCamera2 or not CurrentCamera2) or (not connection and not connection or (nO or not CurrentCamera2))) and (not connection and not CurrentCamera2 or not nO and n8 or (not nO or not CurrentCamera2 or (not connection or not nO))) and not ((n8 and not connection or (CurrentCamera2 or not CurrentCamera2) or (not connection and not connection or (nO or not CurrentCamera2))) and (not connection and not CurrentCamera2 or not nO and n8 or (not nO or not CurrentCamera2 or (not connection or not nO)))) then
    DonationsGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    DonationsGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    DonationsGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    DonationsGroup:AddButton({ Text = "Copy Discord Invite", Func = v5_38 })
    n9 = v5_16.Info:AddRightGroupbox("Donations", "heart")
else
    v5_16:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    v5_16:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    v5_16:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    v5_16:AddButton({ Text = "Copy Discord Invite", Func = n9 })
    DonationsGroup = v5_38.Info:AddRightGroupbox("Donations", "heart")
end
DonationsGroup:AddLabel(nZ("All donations are optional but appreciated.", np), true)
DonationsGroup:AddLabel(nZ("If you donate you get a special role, just PING after you donate.", v5_10), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(nZ("LTC / Litecoin", v5_28), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(nZ("BTC / Bitcoin", v5_1), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
DonationsGroup:AddLabel(nZ("ETH / Ethereum", v5_13), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(nZ("USDT", v5_27), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
DonationsGroup:AddLabel(nZ("Solana", v5_39), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
DonationsGroup:AddLabel(nZ("PayPal", v5_12), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = fns.onCopyPayPalLink })
DonationsGroup:AddLabel(nZ("Venmo", v5_25), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(nZ("Don't have any of the listed currencies but still wanna donate?", v5_34), true)
DonationsGroup:AddLabel(nZ("DM me and we'll work something out.", v5_24), true)
local FaqGroup = v5_38.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoRollGroup = v5_38.Roll:AddLeftGroupbox("Auto Roll", "dices")
AutoRollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
AutoRollGroup:AddSlider("AutoRollDelay", { Text = "Roll Delay", Default = 2.5, Min = 1, Max = 8, Rounding = 2 })
AutoRollGroup:AddButton({ Text = "Roll Once", Func = fns.onRollOnce })
local AutoBuyGroup = v5_38.Roll:AddRightGroupbox("Auto Buy", "shopping-cart")
AutoBuyGroup:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
AutoBuyGroup:AddDropdown("AutoBuyRarities", {
    Text = "Buy Rarities",
    Values = v5_9,
    Default = {
        Common = true,
        Uncommon = true,
        Rare = true,
        Epic = true,
        Legendary = true,
        Mythic = true,
        Exotic = true,
        Divine = true,
        Secret = true,
        Omega = true,
        Limited = true
    },
    Multi = true,
    Searchable = true,
    AllowNull = true
})
AutoBuyGroup:AddSlider("AutoBuyMaxPrice", { Text = "Max Buy Price", Default = 100000, Min = 50, Max = 1000000000000, Rounding = 0 })
local AutoPlaceGroup = v5_38.Plot:AddLeftGroupbox("Auto Place", "map-pin")
AutoPlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
AutoPlaceGroup:AddDropdown("PlaceMinRarity", { Text = "Min Place Rarity", Values = v5_9, Default = "Common" })
local AutoReplaceGroup = v5_38.Plot:AddRightGroupbox("Auto Replace", "replace")
AutoReplaceGroup:AddToggle("AutoReplace", { Text = "Auto Replace with Better", Default = false })
AutoReplaceGroup:AddSlider("ReplaceMinDpsGain", { Text = "Min DPS Gain", Default = 1, Min = 1, Max = 1000000, Rounding = 0 })
local SlotsGroup = v5_38.Plot:AddLeftGroupbox("Slots", "layout-grid")
SlotsGroup:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false })
local ExpandGroup = v5_38.Plot:AddRightGroupbox("Expand", "expand")
ExpandGroup:AddToggle("AutoExpandPlot", { Text = "Auto Expand Plot", Default = false })
v5_18 = v5_38.Plot:AddLeftGroupbox("Collect", "package-open")
v5_18:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
v5_4 = v5_38.Plot:AddRightGroupbox("Auto Sell", "banknote")
v5_4:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
v5_4:AddDropdown("SellMaxRarity", { Text = "Max Sell Rarity", Values = v5_9, Default = "Common" })
v5_4:AddSlider("SellMaxCost", { Text = "Max Sell Cost", Default = 1000, Min = 50, Max = 1000000000, Rounding = 0 })
v5_4:AddSlider("SellMaxDps", { Text = "Max Sell DPS", Default = 100, Min = 1, Max = 100000000, Rounding = 0 })
local AutoBuyUpgradesGroup = v5_38.Shop:AddLeftGroupbox("Auto Buy Upgrades", "arrow-big-up")
AutoBuyUpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutoBuyUpgradesGroup:AddDropdown("UpgradeSelect", {
    Text = "Upgrades",
    Values = nK,
    Default = {
        ["Roll Luck"] = true,
        ["Number Rolls"] = true,
        ["Money Multiplier"] = true,
        ["Damage Upgrade"] = true
    },
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local AutoGemShopGroup = v5_38.Shop:AddRightGroupbox("Auto Gem Shop", "gem")
AutoGemShopGroup:AddToggle("AutoGemShop", { Text = "Auto Gem Shop", Default = false })
AutoGemShopGroup:AddDropdown("GemShopSelect", {
    Text = "Gem Shop Items",
    Values = nz,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
local RebirthGroup = v5_38.Shop:AddLeftGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local MovementGroup = v5_38.Player:AddLeftGroupbox("Movement", "footprints")
MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
local FlyGroup = v5_38.Player:AddRightGroupbox("Fly", "feather")
FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
oa = tick()
n4 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local uq = v
        pcall(function()
            uq:Disable()
        end)
    end
end)
nO = fns.fn368
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
v5_15 = v5_38.Settings:AddLeftGroupbox("Menu")
v5_15:AddButton("Unload", fns.onUnload)
v5_15:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
v5_15:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ox = function(hK)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not hK)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hK
        end
    end)
    if not hK then
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
Toggles.AntiGameplayPause:OnChanged(fn962)
task.spawn(fns.antiGameplayPauseLoop)
RunService.Stepped:Connect(onStepped)
UserInputService.JumpRequest:Connect(fns.onJumpRequest)
CurrentCamera2 = Workspace.CurrentCamera
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fns.fn228)
Toggles.WalkSpeedEnabled:OnChanged(fns.fn89)
task.spawn(antiAfkLoop)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(fns.worker4)
task.spawn(fns.worker5)
v5_6:SetLibrary(Library)
v5_6:SetFolder("OuroborosHub")
v5_6:SaveDefault("Evil Hello Kitty")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/RollAnArmy")
local o4 = SaveManager:BuildConfigSection(v5_38.Settings)
od = fn767
nJ = fn845
nw = fns.fn278
n8 = function(jm)
    local vK
    vK = nil
    local vL = type(jm) ~= "table" or type(jm.idx) ~= "string" or type(jm.type) ~= "string" or SaveManager.Ignore[jm.idx]
    if vL then
        return false
    end
    vK = od(jm.type, jm.idx)
    if not vK then
        return false
    end
    local vL_1 = pcall(function()
        if jm.type == "Input" then
            if type(jm.text) ~= "string" then
                return
            end
            vK:SetValue(jm.text)
        elseif jm.type == "ColorPicker" then
            vK:SetValueRGB(Color3.fromHex(jm.value), jm.transparency)
        elseif jm.type == "KeyPicker" then
            vK:SetValue({ jm.key, jm.mode, jm.modifiers })
            if jm.mode == "Toggle" and jm.toggled ~= nil then
                vK.Toggled = jm.toggled
                vK:Update()
            end
        else
            vK:SetValue(jm.value)
        end
    end)
    return vL_1
end
o4:AddDivider()
o4:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
o4:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
o4:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
v5_6:ApplyToTab(v5_38.Settings)
v5_6:LoadDefault()
SaveManager:LoadAutoloadConfig()
Library:OnUnload(fn621)
