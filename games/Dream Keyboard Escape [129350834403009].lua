local fns = {}
local vL_3, vL_4, vL_5, vL_6, vL_8, vL_9, vL_10, vL_11, vL_13, vL_15, vL_16, vL_17, vL_18, vL_21, vL_22, vL_24, vL_26, vL_27, vL_28, vL_29, vL_30, vL_31
local oz
local nw
local od
local nd
local SpawnBestTreadmill
local oF
local nC
local oj
local nj
local n0
local oL
local nI
local oq
local np
local n6
local nO
local oy
local nv
local oc
local nc
local nU
local oE
local nB
local ni
local n_
local oK
local nH
local op
local no
local n5
local VirtualUser
local nu
local nb
local nT
local oD
local nA
local oh
local nh
local nZ
local oJ
local nG
local oo
local nn
local n4
local oP
local nM
local ow
local nt
local oa
local na
local nS
local oC
local Workspace
local ng
local connection2
local Label
local nF
local nm
local oO
local nL
local ov
local ns
local n9
local m9
local nR
local oB
local ny
local of
local nf
local nX
local oH
local TrailConfigurations
local nl
local n2
local oN
local ou
local nr
local n8
local m8
local nQ
local oA
local AuraConfigurations
local oe
local ne
local RequestRebirth
local oG
local nD
local connection
local nk
local n1
local oM
local nJ
local HttpService
local nq
local n7
local m7
local TeleportToStage
function fns.fn7(c_)
    local q4 = nQ(c_, "TimeToUnlock")
    local q5 = q4 and q4:IsA("TextLabel") and q4.Visible
    if not q5 then
        return false
    end
    local Text = q4.Text
    local q4_1 = Text ~= "" and not string.find(Text, "Unlocked")
    return q4_1
end
function fns.fn28()
    local Character = n7.Character
    local pG = Character and Character:FindFirstChild("HumanoidRootPart")
    return pG
end
function fns.fn38(fP)
    local th_1
    local tg_1
    tg_1, th_1 = oy(fP)
    if not tg_1 then
        return
    end
    if not th_1 then
        th_1 = nU(fP, { "Touch", "Part" }, tg_1, 1.5)
        if th_1 then
            tg_1 = th_1.Position
        end
    end
    if not th_1 then
        return
    end
    nC(m9(tg_1, th_1), false)
    oo(th_1)
    task.wait(0.2)
    nj = nil
end
function fns.onStepped()
    if oN.Unloaded then
        return
    end
    if oq.NoClip and oq.NoClip.Value then
        local Character = n7.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local ul_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if ul_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.fn45()
    local Upgrades = n7:FindFirstChild("Upgrades")
    local te = Upgrades and Upgrades:FindFirstChild("Equipped")
    local td_1 = te
    if te then
        te = td_1:IsA("StringValue")
    end
    if te then
        return td_1.Value
    end
    return ""
end
function fns.fn72()
    local leaderstats = n7:FindFirstChild("leaderstats")
    local pM = leaderstats and leaderstats:FindFirstChild("Wins")
    local pL_1 = pM
    if pM then
        pM = pL_1.Value
    end
    return pM or 0
end
function fns.fn78(aF, aG)
    local pC = oj[aF]
    if pC == nil or pC.Value == nil then
        return aG
    end
    return pC.Value
end
function fns.fn82()
    local rC_1
    local rB_1
    local rA = nA()
    rC_1, rB_1 = nil, -1
    for k, v in nn do
        if rA >= v and v >= rB_1 then
            rC_1, rB_1 = k, v
        end
    end
    return rC_1
end
function fns.worker()
    local tX_1
    while true do
        task.wait(1)
        if oN.Unloaded then
            break
        end
        local tW = math.floor(os.clock() - oc)
        if tW < 60 then
            tX_1 = tW .. "s"
        elseif tW < 3600 then
            tX_1 = string.format("%dm %ds", tW // 60, tW % 60)
        else
            tX_1 = string.format("%dh %dm", tW // 3600, tW % 3600 // 60)
        end
        Label:SetText(ny("Session time", tX_1, op))
    end
end
function fns.onCopyLitecoinAddress()
    oh(nL, "Copied Litecoin address")
end
function fns.fn117(cP, cQ)
    local cR = cP:FindFirstChild(cQ, true)
    return cR
end
function fns.fn121()
    local rY = nc() + 1
    local r_ = rY * (nr.REBIRTH_LEVEL_STEP or 5)
    if ow() < r_ then
        return
    end
    RequestRebirth:InvokeServer()
end
function fns.onRenderStepped(h2)
    if oN.Unloaded then
        return
    end
    if oq.WalkSpeedEnabled and oq.WalkSpeedEnabled.Value then
        local uy_1 = nS()
        if uy_1 then
            uy_1.WalkSpeed = oj.WalkSpeed.Value
        end
    end
    if oq.Fly and oq.Fly.Value then
        local uy_3 = n9()
        local uz = nS()
        nB = workspace.CurrentCamera or nB
        if uy_3 and uz and nB then
            uz.PlatformStand = true
            local uz_1 = Vector3.zero
            if oC:IsKeyDown(Enum.KeyCode.W) then
                uz_1 = uz_1 + nB.CFrame.LookVector
            end
            local uF = if oC:IsKeyDown(Enum.KeyCode.S) then 1 else 0
            if uF == 1 then
                uz_1 = uz_1 - nB.CFrame.LookVector
            end
            if oC:IsKeyDown(Enum.KeyCode.A) then
                uz_1 = uz_1 - nB.CFrame.RightVector
            end
            if oC:IsKeyDown(Enum.KeyCode.D) then
                uz_1 = uz_1 + nB.CFrame.RightVector
            end
            local uF_1 = if oC:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if uF_1 == 1 then
                uz_1 = uz_1 + Vector3.new(0, 1, 0)
            end
            if oC:IsKeyDown(Enum.KeyCode.LeftControl) then
                uz_1 = uz_1 - Vector3.new(0, 1, 0)
            end
            uy_3.AssemblyLinearVelocity = Vector3.zero
            if uz_1.Magnitude > 0 then
                uy_3.CFrame = uy_3.CFrame + uz_1.Unit * oj.FlySpeed.Value * h2
            end
        end
    end
end
function fns.onCopyBitcoinAddress()
    oh(nF, "Copied Bitcoin address")
end
function fns.fn157()
    local uY = {}
    for i, v in ipairs({ oq, oj }) do
        for k, v in pairs(v) do
            local uZ = type(v) == "table" and type(v.Type) == "string" and not ov.Ignore[k]
            if uZ then
                local uZ_1 = nf(k, v)
                if uZ_1 then
                    uY[#uY + 1] = uZ_1
                end
            end
        end
    end
    table.sort(uY, function(iO, iP)
        if iO.type ~= iP.type then
            return iO.type < iP.type
        end
        return iO.idx < iP.idx
    end)
    return { objects = uY }
end
function fns.fn165()
    local UpgradeWins = Workspace:FindFirstChild("UpgradeWins")
    if not UpgradeWins then
        return
    end
    local tn = nA()
    for i, v in ipairs(nk) do
        if not nJ(v) then
            local to = UpgradeWins:FindFirstChild(v)
            if to then
                local tp = to:GetAttribute("WinCost") or 0
                local tp_1 = typeof(tp) == "number" and tn >= tp
                if tp_1 then
                    oO(to)
                    return
                end
            end
        end
    end
end
function fns.fn169()
    local qX_1
    local qW_1
    local qV = nw()
    if not qV then
        return
    end
    qW_1, qX_1 = oy(qV)
    if not qW_1 then
        return
    end
    if not qX_1 then
        qX_1 = nU(qV, { "Touch", "Part" }, qW_1, 2.5)
        if qX_1 then
            qW_1 = qX_1.Position
        end
    end
    if not nh("AutoWin") then
        return
    end
    nC(m9(qW_1, qX_1), false)
    oo(qX_1)
end
function fns.onCopySolanaAddress()
    oh(nt, "Copied Solana address")
end
function fns.worker2()
    while not oN.Unloaded do
        if nh("AutoWin") then
            oK = nil
            pcall(oE)
        elseif nh("AutoBestTreadmill") then
            pcall(n4)
        else
            oK = nil
            nj = nil
        end
        local vw = nh("AutoWin") and oz("WinDelay", 0.55)
        local vx = vw or 0.5
        task.wait(vx)
    end
end
function fns.fn205()
    local rW = oL()
    if not rW then
        return
    end
    if n6(rW) then
        return
    end
    if os.clock() - oP < 5 then
        return
    end
    oP = os.clock()
    TeleportToStage:FireServer(rW)
end
function fns.fn218(e9)
    local sK = n7:FindFirstChild(e9)
    local sL = sK and sK:FindFirstChild("Equipped")
    local sK_1 = sL
    if sL then
        sL = sK_1:IsA("StringValue")
    end
    if sL then
        return sK_1.Value
    end
    return ""
end
function fns.onCopyUSDTAddress()
    oh(nu, "Copied USDT address")
end
function fns.fn226()
    local ShopState = oM:FindFirstChild("ShopState")
    if not ShopState then
        return
    end
    local r5 = nA()
    for i, child in ShopState:GetChildren() do
        local r4_1 = child:IsA("StringValue") and child.Value ~= ""
        if r4_1 then
            local r4_2 = nH.GetItemById(child.Value)
            if r4_2 then
                local r6 = n0(r4_2.Id)
                local r7 = r4_2.MaxQuantity or 1
                local WinCost = r4_2.WinCost
                local r9 = r6 < r7 and typeof(WinCost) == "number" and r5 >= WinCost
                if r9 then
                    od:FireServer("BuyWins", r4_2.Id)
                    task.wait(0.2)
                    r5 = nA()
                end
            end
        end
    end
end
function fns.fn249()
    local rt_1
    local rs_1
    if os.clock() - oG >= 2 then
        oG = os.clock()
        SpawnBestTreadmill:FireServer()
    end
    local rr = ni()
    if not rr then
        return
    end
    if oK == rr.Name then
        return
    end
    rs_1, rt_1 = oy(rr)
    if not rs_1 then
        return
    end
    if not rt_1 then
        rt_1 = nU(rr, { "Part", "Touch" }, rs_1, 2)
        if rt_1 then
            rs_1 = rt_1.Position
        end
    end
    if not nh("AutoBestTreadmill") then
        return
    end
    local ru = n9()
    if not ru then
        return
    end
    local rv = m9(rs_1, rt_1)
    ru.AssemblyLinearVelocity = Vector3.zero
    ru.AssemblyAngularVelocity = Vector3.zero
    ru.CFrame = rv
    nj = nil
    oK = rr.Name
end
function fns.fn252(de)
    for i, child in Workspace:GetChildren() do
        if child.Name == "Treadmills" or child.Name == "PersonalTreadmills" then
            for i, child in child:GetChildren() do
                if child:IsA("Model") then
                    de(child)
                end
            end
        end
    end
end
function fns.fn293(b0, b1, b2, b3)
    local qi = os.clock()
    local qk = qi + (b3 or 2.5)
    nC(CFrame.new(b2.X, b2.Y + 80, b2.Z), false)
    n_(b2)
    while os.clock() < qk do
        if oN.Unloaded then
            return nil
        end
        for i, v in ipairs(b1) do
            local qi_1 = b0:FindFirstChild(v)
            local qj_1 = qi_1 and qi_1:IsA("BasePart")
            if qj_1 then
                return qi_1
            end
        end
        nC(CFrame.new(b2.X, b2.Y + 80, b2.Z), false)
        if os.clock() - m8 >= 0.2 then
            n_(b2)
        end
        task.wait(0.05)
    end
    for i, v in ipairs(b1) do
        local qi_2 = b0:FindFirstChild(v)
        local qj_2 = qi_2 and qi_2:IsA("BasePart")
        if qj_2 then
            return qi_2
        end
    end
    return nil
end
function fns.antiAfkLoop()
    while not oN.Unloaded do
        task.wait(2)
        if oq.AntiAfk.Value then
            local vD = tick() - no
            local vE = tick() - nl
            if vD >= 300 and vE >= 60 then
                pcall(oJ)
            else
                if vD < 300 and vE >= 300 then
                    pcall(oJ)
                end
            end
        end
    end
end
function fns.fn328()
    oh(nT, "Copied Discord invite to clipboard")
end
function fns.fn354()
    local tP_1
    local tO_1
    if identifyexecutor then
        tP_1, tO_1 = identifyexecutor()
        local tQ = tP_1 ~= ""
        local tR = type(tP_1) == "string" and tQ
        if tR then
            local tQ_1 = type(tO_1) == "string" and tO_1 ~= "" and tP_1 .. " " .. tO_1
            np = tQ_1 or tP_1
        end
    end
end
function fns.fn367()
    local tD_1
    local tC_1
    local UpgradeWins = Workspace:FindFirstChild("UpgradeWins")
    if not UpgradeWins then
        return
    end
    tD_1, tC_1 = nil, -1
    for i, v in ipairs(nk) do
        if nJ(v) then
            local tE_1 = UpgradeWins:FindFirstChild(v)
            if tE_1 then
                local tF = tE_1:GetAttribute("SpeedBonus") or 0
                if tF > tC_1 then
                    tD_1, tC_1 = tE_1, tF
                end
            end
        end
    end
    local tE_2 = tD_1 and ns() ~= tD_1.Name
    if tE_2 then
        oO(tD_1)
    end
end
function fns.fn396(ak, al)
    if setclipboard then
        setclipboard(ak)
    elseif toclipboard then
        toclipboard(ak)
    end
    oN:Notify(al)
end
function fns.fn408()
    local Character = n7.Character
    local pJ = Character and Character:FindFirstChildOfClass("Humanoid")
    return pJ
end
function fns.fn412(c6)
    if c6.Name == "Basic" then
        return true
    elseif m7(c6) then
        return false
    else
        local q7 = nb[c6.Name]
        local q8 = typeof(q7) == "number" and q7 > 0
        if q8 then
            if nQ(c6, "TimeToUnlock") then
                return true
            end
            return nZ(q7)
        end
        return true
    end
end
function fns.fn429(cT)
    local q1 = nQ(cT, "MultiplierLabel")
    local q2 = q1 and q1:IsA("TextLabel")
    if q2 then
        local q2_1 = tonumber(q1.Text:match("(%d+)"))
        if q2_1 then
            return q2_1
        end
        return ng[cT.Name] or 0
    end
    return ng[cT.Name] or 0
end
function fns.onUnload()
    oN:Unload()
end
function fns.fn442()
    nj = nil
    oa:Disconnect()
    connection:Disconnect()
    connection2:Disconnect()
    nR(false)
    local vH = nS()
    if vH then
        vH.PlatformStand = false
        vH.WalkSpeed = 16
    end
end
function fns.fn447()
    oK = nil
end
function fns.fn455(az)
    if oN.Unloaded then
        return false
    end
    local pz = oq[az]
    return pz ~= nil and pz.Value == true
end
function fns.worker5()
    while not oN.Unloaded do
        if nh("AutoBuyItems") then
            pcall(nv)
        end
        if nh("AutoEquipBestItems") then
            pcall(oe)
        end
        if nh("AutoBuySteps") then
            pcall(n5)
        end
        if nh("AutoEquipBestSteps") then
            pcall(ne)
        end
        task.wait(2)
    end
end
function fns.onCharacterAdded()
    oK = nil
end
function fns.onCopyJoinScript_JobID()
    local gG = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oD)
    oh(gG, "Copied join script to clipboard")
end
function fns.onCopyVenmoLink()
    oh(nm, "Copied Venmo link")
end
function fns.fn536()
    local Stats = n7:FindFirstChild("Stats")
    local pV = Stats and Stats:FindFirstChild("Level")
    local pU_1 = pV
    if pV then
        pV = pU_1.Value
    end
    return pV or 1
end
function fns.fn550(bG, bH)
    local p9 = n9()
    if not p9 then
        return
    end
    nd = bH == true
    nj = bG
    p9.AssemblyLinearVelocity = Vector3.zero
    p9.AssemblyAngularVelocity = Vector3.zero
    p9.CFrame = bG
end
local function antiGameplayPauseLoop()
    while not oN.Unloaded do
        task.wait(1)
        if oq.AntiGameplayPause.Value then
            nR(true)
        end
    end
end
local function onCopyPayPalLink()
    oh(nq, "Copied PayPal link")
end
local function onImportConfigFromClipboardTex()
    local vn_1
    local vl = oj.SaveManager_ImportSource.Value or ""
    local vl_1
    local vm = tostring(vl):match("^%s*(.-)%s*$")
    if vm == "" then
        oN:Notify("Paste an exported config into the box first")
        return
    end
    vl_1, vn_1 = pcall(HttpService.JSONDecode, HttpService, vm)
    local vm_1 = not vl_1 or type(vn_1) ~= "table" or type(vn_1.objects) ~= "table"
    if vm_1 then
        oN:Notify("That is not a valid exported config")
        return
    end
    local vl_2 = 0
    for i, v in ipairs(vn_1.objects) do
        if nG(v) then
            vl_2 += 1
        end
    end
    if vl_2 == 0 then
        oN:Notify("No settings in that config matched this script")
        return
    end
    oj.SaveManager_ImportSource:SetValue("")
    local vn_2 = vl_2 == 1 and "" or "s"
    oN:Notify(("Imported %d setting%s"):format(vl_2, vn_2), 6)
end
local function onRscripts()
    oh(nO, "Copied Rscripts profile to clipboard")
end
local function fn616(bN, bO)
    local qb = bN.Y + 3.5
    local qc = bO and bO:IsA("BasePart")
    if qc then
        qb = bO.Position.Y + bO.Size.Y / 2 + 3.5
    end
    return CFrame.new(bN.X, qb, bN.Z)
end
local function worker3()
    while not oN.Unloaded do
        local vz = nh("AutoBuyWorlds") and not nh("AutoWin")
        if vz then
            pcall(na)
        end
        if nh("AutoRebirth") then
            pcall(ou)
        end
        task.wait(2)
    end
end
local function fn653()
    if not oq.WalkSpeedEnabled.Value then
        local uI = nS()
        if uI then
            uI.WalkSpeed = 16
        end
    end
end
local function fn682()
    local GiveWins = Workspace:FindFirstChild("GiveWins")
    if not GiveWins then
        return {}
    end
    local qC = {}
    for i, child in GiveWins:GetChildren() do
        local attr = child:GetAttribute("WinAmount")
        if typeof(attr) == "number" then
            qC[#qC + 1] = child
        end
    end
    return qC
end
local function fn702(fF)
    local Upgrades = n7:FindFirstChild("Upgrades")
    if not Upgrades then
        return false
    end
    return Upgrades:FindFirstChild(fF) ~= nil
end
local function fn715(is, it)
    local uO_1 = (is == "Toggle" and oq or oj)[it]
    local uN_2 = type(uO_1) == "table" and uO_1.Type == is
    return uN_2 and uO_1 or nil
end
local function fn745(au, av, aw)
    return string.format("<b>%s</b> %s %s", au, nM("-", "#5a6070"), nM(av, aw))
end
local function fn775()
    if not oq.Fly.Value then
        local uG = nS()
        if uG then
            uG.PlatformStand = false
        end
    end
end
local function onExportConfigToClipboard()
    local vi_1
    local vh_1
    vh_1, vi_1 = pcall(HttpService.JSONEncode, HttpService, oH())
    if not vh_1 then
        oN:Notify("Failed to encode the config")
        return
    end
    local vh_2 = setclipboard or toclipboard
    local vh_3 = type(vh_2) ~= "function" or not pcall(vh_2, vi_1)
    if vh_3 then
        oN:Notify("Your executor does not support copying to the clipboard")
        return
    end
    oN:Notify("Config copied to clipboard", 6)
end
local function worker4()
    while not oN.Unloaded do
        if nh("AutoBuyTrails") then
            pcall(nI, "Trails", TrailConfigurations.Trails, n8)
        end
        if nh("AutoBuyAuras") then
            pcall(nI, "Auras", AuraConfigurations.Auras, n1)
        end
        if nh("AutoEquipBestTrails") then
            pcall(oA, "Trails", TrailConfigurations.Trails, n8)
        end
        if nh("AutoEquipBestAuras") then
            pcall(oA, "Auras", AuraConfigurations.Auras, n1)
        end
        task.wait(1)
    end
end
local function fn821()
    oN.ScreenGui.Parent = n7:WaitForChild("PlayerGui")
end
local function fn824()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    nl = tick()
end
local function onInputBegan()
    no = tick()
end
local function onCopyEthereumAddress()
    oh(nD, "Copied Ethereum address")
end
local function fn839()
    nR(oq.AntiGameplayPause.Value)
end
local function fn857()
    local leaderstats = n7:FindFirstChild("leaderstats")
    local pS = leaderstats and leaderstats:FindFirstChild("Rebirths")
    local pR_1 = pS
    if pS then
        pS = pR_1.Value
    end
    return pS or 0
end
local function onInputChanged(ht)
    local UserInputType = ht.UserInputType
    local t8 = UserInputType == Enum.UserInputType.MouseMovement
    local uc = if t8 then 1 else 0
    local ua = 2352 * uc + 1814 * (1 - uc)
    local ub = 4044 * uc + 32 * (1 - uc)
    if not ((ua * 1235 + ub * 1338 + ua * ub) % 16777213 == 1049867) then
        t8 = UserInputType == Enum.UserInputType.Gamepad1
    end
    if t8 then
        no = tick()
    end
end
local function fn892(ft, fu, fv)
    local Id
    local sY_1
    Id, sY_1 = nil, -1
    for i, v in ipairs(fu) do
        if oF(ft, v.Id) then
            local s__1 = v.SpeedBoost
            local ta = if s__1 then 1 else 0
            local s8 = 2345 * ta + 1898 * (1 - ta)
            local s9 = 1511 * ta + 857 * (1 - ta)
            if not ((s8 * 1712 + s9 * 3381 + s8 * s9) % 16777213 == 12666626) then
                s__1 = 0
            end
            local s0 = s__1
            if s0 > sY_1 then
                Id, sY_1 = v.Id, s0
            end
        end
    end
    local s__2 = Id and of(ft) ~= Id
    if s__2 then
        fv:FireServer("Equip", Id)
    end
end
local function fn894()
    if os.clock() - oB < 2 then
        return
    end
    oB = os.clock()
    local Items = n7:FindFirstChild("Items")
    if not Items then
        return
    end
    local sh_1 = {}
    for i, v in ipairs(nH.Items) do
        local si_1 = n0(v.Id)
        if si_1 > 0 then
            local sj_1 = #sh_1 + 1
            local Id = v.Id
            local sl = v.Multiplier or 1
            sh_1[sj_1] = { id = Id, multiplier = sl, quantity = si_1 }
        end
    end
    table.sort(sh_1, function(eU, eV)
        return eU.multiplier > eV.multiplier
    end)
    if #sh_1 == 0 then
        return
    end
    od:FireServer("Unequip", "")
    task.wait(0.1)
    local si_2 = (n7:GetAttribute("EquippedSlots"))
    local sp = if si_2 then 1 else 0
    local sn = 1664 * sp + 3 * (1 - sp)
    local so = 1047 * sp + 3690 * (1 - sp)
    if not ((sn * 2156 + so * 344 + sn * so) % 16777213 == 5689960) then
        si_2 = nH.SlotConfig.BaseSlots
    end
    local sj_2 = 0
    local sk_2 = si_2
    for i, v in ipairs(sh_1) do
        local quantity = v.quantity
        local sE = 1
        while sE <= quantity do
            if sj_2 >= sk_2 then
                return
            end
            od:FireServer("Equip", v.id)
            sj_2 += 1
            sE += 1
        end
        if sj_2 >= sk_2 then
            return
        end
    end
end
local function fn897(e3, e4)
    local sH = n7:FindFirstChild(e3)
    local sI = sH ~= nil and sH:FindFirstChild(e4) ~= nil
    return sI
end
local function onJumpRequest()
    if oN.Unloaded then
        return
    end
    if oq.InfJump and oq.InfJump.Value then
        local uw_1 = nS()
        if uw_1 then
            uw_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn955(fg, fh, fi)
    local Id
    local WinCost
    local sN = nA()
    Id, WinCost = nil, nil
    for i, v in ipairs(fh) do
        local sQ = not oF(fg, v.Id) and typeof(v.WinCost) == "number" and sN >= v.WinCost
        if sQ then
            if WinCost == nil or v.WinCost < WinCost then
                Id, WinCost = v.Id, v.WinCost
            end
        end
    end
    if Id then
        fi:FireServer("BuyWins", Id)
    end
end
local function onHeartbeat()
    if not nj then
        return
    end
    local p2 = n9()
    if not p2 then
        return
    end
    if nd and (p2.Position - nj.Position).Magnitude < 8 then
        return
    end
    p2.AssemblyLinearVelocity = Vector3.zero
    p2.AssemblyAngularVelocity = Vector3.zero
    p2.CFrame = nj
end
local function fn995(ep)
    local Items = n7:FindFirstChild("Items")
    local r2 = Items and Items:FindFirstChild(ep)
    if not r2 then
        return 0
    end
    local attr = r2:GetAttribute("Quantity")
    if type(attr) == "number" then
        return attr
    end
    return 1
end
local function fn1017(go)
    local DiscordGroup = go:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nX })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nX })
end
local function fn1020(iA, iB)
    local Type = iB.Type
    if Type == "Toggle" then
        return { idx = iA, type = "Toggle", value = iB.Value == true }
    elseif Type == "Slider" then
        return { idx = iA, type = "Slider", value = tostring(iB.Value) }
    elseif Type == "Dropdown" then
        return { idx = iA, type = "Dropdown", multi = iB.Multi == true, value = iB.Value }
    elseif Type == "Input" then
        local uS = iB.Value or ""
        return { idx = iA, type = "Input", text = tostring(uS) }
    elseif Type == "ColorPicker" then
        return { idx = iA, type = "ColorPicker", value = iB.Value:ToHex(), transparency = iB.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = iA,
            type = "KeyPicker",
            mode = iB.Mode,
            key = iB.Value,
            modifiers = iB.Modifiers,
            toggled = iB.Toggled
        }
    else
        return nil
    end
end
local function fn1043(ci)
    local qy = n9()
    local qz = not qy or not ci or not ci:IsA("BasePart")
    if qz then
        return
    end
    if firetouchinterest then
        pcall(firetouchinterest, qy, ci, 0)
        pcall(firetouchinterest, qy, ci, 1)
    end
end
local function fn1047(ar, as)
    return string.format('<font color="%s">%s</font>', as, ar)
end
local function fn1055()
    local qN_1
    local qM_1
    local qK = n2()
    if #qK == 0 then
        return nil
    end
    local qL = oz("WinMode", "Best")
    if qL == "Random" then
        return qK[math.random(1, #qK)]
    end
    qN_1, qM_1 = nil, nil
    for k, v in qK do
        local attr = v:GetAttribute("WinAmount")
        if qN_1 == nil then
            qN_1, qM_1 = v, attr
        elseif qL == "Weakest" then
            if attr < qM_1 then
                qN_1, qM_1 = v, attr
            end
        elseif attr > qM_1 then
            qN_1, qM_1 = v, attr
        end
    end
    return qN_1
end
m7 = nil
m8 = nil
m9 = nil
na = nil
nb = nil
nc = nil
nd = nil
ne = nil
nf = nil
ng = nil
nh = nil
ni = nil
nj = nil
nk = nil
nl = nil
nm = nil
nn = nil
no = nil
np = nil
nq = nil
nr = nil
ns = nil
nt = nil
nu = nil
nv = nil
nw = nil
AuraConfigurations = nil
ny = nil
nA = nil
nB = nil
nC = nil
nD = nil
TrailConfigurations = nil
nF = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nL = nil
nM = nil
nO = nil
TeleportToStage = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
local nz, nK, nN
SpawnBestTreadmill = nil
RequestRebirth = nil
nX = nil
connection2 = nil
nZ = nil
n_ = nil
n0 = nil
n1 = nil
n2 = nil
n4 = nil
n5 = nil
n6 = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
oc = nil
od = nil
oe = nil
of = nil
Workspace = nil
oh = nil
oj = nil
connection = nil
oo = nil
op = nil
oq = nil
HttpService = nil
ou = nil
ov = nil
ow = nil
VirtualUser = nil
oy = nil
oz = nil
oA = nil
oB = nil
oC = nil
oD = nil
oE = nil
oF = nil
oG = nil
oH = nil
Label = nil
oJ = nil
oK = nil
local n3, MarketplaceService, CoreGui, om, GuiService
oL = nil
oM = nil
oN = nil
oO = nil
oP = nil
oM, oC, VirtualUser, HttpService, GuiService, CoreGui, Workspace, MarketplaceService, n7 = nil, nil, nil, nil, nil, nil, nil, nil, nil
local vL_19 = game:GetService("Players")
oM = game:GetService("ReplicatedStorage")
local vL_32 = game:GetService("RunService")
oC = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
if (Workspace or not GuiService and false) and (not Workspace and not GuiService and (Workspace or not GuiService)) or (GuiService or vL_32 or not Workspace and GuiService or (vL_32 or not vL_32) and (GuiService and not HttpService)) or not ((Workspace or not GuiService and false) and (not Workspace and not GuiService and (Workspace or not GuiService)) or (GuiService or vL_32 or not Workspace and GuiService or (vL_32 or not vL_32) and (GuiService and not HttpService))) then
    HttpService = game:GetService("HttpService")
else
    oC = game:GetService("HttpService")
end
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
MarketplaceService = game:GetService("MarketplaceService")
n7 = vL_19.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return n7:WaitForChild("PlayerGui")
    end
end
vL_16, nT, nO, nL, nF, nD, nu, nt, nq, nm, vL_4, vL_15, vL_26, vL_3, vL_8, vL_18, vL_29, vL_17, vL_28, op, vL_5, vL_24, od, n8, n1, RequestRebirth, SpawnBestTreadmill, TeleportToStage, vL_22, nH, TrailConfigurations, AuraConfigurations, vL_9, nr, nn, nk, ng, nb, vL_19, oN, vL_6, ov, oq, oj, n3, nj, nd, m8, oP, oK, oG, oB, oa, vL_11, vL_27, oh, nX, nM, ny, nh, oz, n9, nS, nA, nc, ow, nZ, n_, nC, m9, oy, nU, oo, n2, nw, oE, nQ, nz, m7, om, nN, ni, n4, oL, n6, na, ou, n0, nv, oe, oF, of, nI, oA, nJ, ns, oO, n5, ne, vL_13 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vL_1 = 277
repeat
    vL_30 = (vL_1 * 21 + 43) % 46 + 1
    if vL_30 <= 23 then
        if vL_30 <= 12 then
            if vL_30 <= 6 then
                if vL_30 <= 3 then
                    if vL_30 <= 2 then
                        if vL_30 <= 1 then
                            vL_21 = {
                                "cpwz",
                                "kyr",
                                "dpphzwlu",
                                "bldkrs",
                                "tpahnquymbs",
                                "mrowwelipv",
                                "kjdmt",
                                "mmeadqgkrn",
                                "rplvwfzfy",
                                "xvmxunsxkx"
                            }
                            if vL_21[(vL_1 * 36 + 1) % 10 + 1] <= vL_21[(vL_1 * 36 + 1) % 10 + 1] then
                                nA = fns.fn72
                                nc = fn857
                                ow = fns.fn536
                                n3 = {}
                            else
                                n3 = fns.fn72
                                ow = fn857
                                nA = fns.fn536
                                nc = {}
                            end
                            vL_1 = (vL_1 + 57) % 368
                        else
                            vL_21 = {
                                "lbgwnn",
                                "nbhnhzhy",
                                "pimlb",
                                "bcryjd",
                                "wdip",
                                "wevruaj",
                                "doumg",
                                "btxniaz",
                                "dkkgug",
                                "nfaome",
                                "bblbvezks",
                                "inwysmx"
                            }
                            if vL_21[(vL_1 * 11 + 73) % 12 + 1] < vL_21[(vL_1 * 11 + 73) % 12 + 1] then
                                nj = function(bb)
                                    local p0_2
                                    local p_ = typeof(bb) ~= "number" or bb <= 0
                                    local p__2
                                    if p_ then
                                        return false
                                    elseif n3[bb] ~= nil then
                                        return n3[bb]
                                    else
                                        p__2, p0_2 = pcall(function()
                                            return MarketplaceService:UserOwnsGamePassAsync(n7.UserId, bb)
                                        end)
                                        if p__2 then
                                            n3[bb] = p0_2 == true
                                            return n3[bb]
                                        end
                                        return false
                                    end
                                end
                                nZ = nil
                            else
                                nZ = function(bb)
                                    local p0_1
                                    local p_ = typeof(bb) ~= "number" or bb <= 0
                                    local p__1
                                    if p_ then
                                        return false
                                    elseif n3[bb] ~= nil then
                                        return n3[bb]
                                    else
                                        p__1, p0_1 = pcall(function()
                                            return MarketplaceService:UserOwnsGamePassAsync(n7.UserId, bb)
                                        end)
                                        if p__1 then
                                            n3[bb] = p0_1 == true
                                            return n3[bb]
                                        end
                                        return false
                                    end
                                end
                                nj = nil
                            end
                            vL_1 = (vL_1 + 57) % 368
                        end
                    else
                        vL_21 = {
                            "gcnx",
                            "hyd",
                            "txxkltoukxr",
                            "kckcay",
                            "dxefrdkdw",
                            "jaeybs",
                            "mfqu",
                            "knd",
                            "xtkirkvolwg",
                            "hlq"
                        }
                        local wi = vL_1
                        vL_10 = vL_21[wi % 10 + 1]
                        if vL_10:len() >= vL_10:gsub("(.)", "%1%1", wi % 3 % 2 + 1):len() then
                            m8 = false
                            nd = 0
                        else
                            nd = false
                            m8 = 0
                        end
                        vL_1 = (vL_1 + 11) % 368
                    end
                elseif vL_30 <= 5 then
                    if vL_30 <= 4 then
                        vL_21 = {
                            "tkpvieerrz",
                            "zbzoshhptbd",
                            "ypgjxbocxty",
                            "umhlg",
                            "ttynevxk",
                            "ghwr",
                            "gkhakjqxl",
                            "pkhplrfytry",
                            "vvw",
                            "jabgm",
                            "htk",
                            "epzyxj"
                        }
                        local wR = vL_1
                        vL_10 = vL_21[wR % 12 + 1]
                        if vL_10:len() >= vL_10:reverse():rep(wR % 3 + 2):len() then
                            oK = 0
                            oG = nil
                            oP = 0
                        else
                            oP = 0
                            oK = nil
                            oG = 0
                        end
                        vL_1 = (vL_1 + 57) % 368
                    else
                        if vL_1 * 106447075 + 11 + 2 <= vL_1 * 106447075 + 11 + 2 + 1 then
                            oB = 0
                            oa = vL_32.Heartbeat:Connect(onHeartbeat)
                        else
                            oa = 0
                            vL_32 = oB.Heartbeat:Connect(onHeartbeat)
                        end
                        vL_1 = (vL_1 + 195) % 368
                    end
                else
                    vL_21 = (vector.create((vL_1 * 6 + 7) % 11 + 1, (vL_1 * 4 + 5) % 13 + 1, (vL_1 * 5 + 13) % 17 + 1))
                    vL_10 = (vector.create((vL_1 * 5 + 8) % 11 + 1, (vL_1 * 6 + 3) % 13 + 1, (vL_1 * 7 + 13) % 17 + 1))
                    local wl = vector.dot(vL_21, vL_10)
                    if wl * wl <= vector.dot(vL_21, vL_21) * vector.dot(vL_10, vL_10) then
                        n7.CharacterAdded:Connect(fns.onCharacterAdded)
                        n_ = function(bA)
                            if typeof(bA) ~= "Vector3" then
                                return
                            end
                            m8 = os.clock()
                            pcall(function()
                                n7:RequestStreamAroundAsync(bA)
                            end)
                        end
                        nC = fns.fn550
                        m9 = fn616
                        oy = function(bS)
                            local Touch = bS:FindFirstChild("Touch")
                            local qe_4
                            local qf = Touch and Touch:IsA("BasePart")
                            local qf_4
                            if qf then
                                return Touch.Position, Touch
                            end
                            local Part = bS:FindFirstChild("Part")
                            local qf_3 = Part and Part:IsA("BasePart")
                            if qf_3 then
                                return Part.Position, Part
                            end
                            qe_4, qf_4 = pcall(function()
                                return bS:GetPivot().Position
                            end)
                            if qe_4 and qf_4 then
                                return qf_4, nil
                            end
                            return nil, nil
                        end
                        nU = fns.fn293
                    else
                        nU.CharacterAdded:Connect(fns.onCharacterAdded)
                        oy = function(bA)
                            if typeof(bA) ~= "Vector3" then
                                return
                            end
                            m8 = os.clock()
                            pcall(function()
                                n7:RequestStreamAroundAsync(bA)
                            end)
                        end
                        m9 = fns.fn550
                        n7 = fn616
                        nC = function(bS)
                            local Touch = bS:FindFirstChild("Touch")
                            local qe_2
                            local qf = Touch and Touch:IsA("BasePart")
                            local qf_2
                            if qf then
                                return Touch.Position, Touch
                            end
                            local Part = bS:FindFirstChild("Part")
                            local qf_1 = Part and Part:IsA("BasePart")
                            if qf_1 then
                                return Part.Position, Part
                            end
                            qe_2, qf_2 = pcall(function()
                                return bS:GetPivot().Position
                            end)
                            if qe_2 and qf_2 then
                                return qf_2, nil
                            end
                            return nil, nil
                        end
                        n_ = fns.fn293
                    end
                    vL_1 = (vL_1 + 11) % 368
                end
            elseif vL_30 <= 9 then
                if vL_30 <= 8 then
                    if vL_30 <= 7 then
                        vL_21 = {
                            "eqntnxwaofgf",
                            "rvomwn",
                            "stsu",
                            "ykoyarpmr",
                            "jlapqcapg",
                            "vvv",
                            "hibeenjyntk",
                            "itnozic",
                            "aczkbpo",
                            "udfs",
                            "xhuhzch",
                            "etbmjfey",
                            "uqvmfqmg",
                            "btzgfnbcnbwb"
                        }
                        if vL_21[(vL_1 * 37 + 64) % 14 + 1] < vL_21[(vL_1 * 37 + 64) % 14 + 1] then
                            n2 = fn1043
                            oo = fn682
                        else
                            oo = fn1043
                            n2 = fn682
                        end
                        vL_1 = (vL_1 + 333) % 368
                    else
                        if (oN and not nr and (not oN and not nr) or (not oN or nr) and (na or not nr)) and not (oN and not nr and (not oN and not nr) or (not oN or nr) and (na or not nr)) then
                            m7 = fn1055
                            nz = fns.fn169
                            oE = fns.fn117
                            nw = fns.fn429
                            nQ = fns.fn7
                        else
                            nw = fn1055
                            oE = fns.fn169
                            nQ = fns.fn117
                            nz = fns.fn429
                            m7 = fns.fn7
                        end
                        vL_1 = (vL_1 + 287) % 368
                    end
                else
                    if vL_1 * 23426301 + 6 + 5 >= vL_1 * 23426301 + 6 + 5 + 2 then
                        n4 = fns.fn412
                        oL = fns.fn252
                        om = function()
                            local dm, dn = nil, -1
                            nN(function(dq)
                                local ro = nz(dq)
                                local rp = ro > dn and om(dq)
                                if rp then
                                    dm, dn = dq, ro
                                end
                            end)
                            return dm
                        end
                        nN = fns.fn249
                        ni = fns.fn82
                    else
                        om = fns.fn412
                        nN = fns.fn252
                        ni = function()
                            local dm, dn = nil, -1
                            nN(function(dq)
                                local ro = nz(dq)
                                local rp = ro > dn and om(dq)
                                if rp then
                                    dm, dn = dq, ro
                                end
                            end)
                            return dm
                        end
                        n4 = fns.fn249
                        oL = fns.fn82
                    end
                    vL_1 = (vL_1 + 241) % 368
                end
            elseif vL_30 <= 11 then
                if vL_30 <= 10 then
                    if vL_1 * 55622241 + 9 + 2 <= vL_1 * 55622241 + 9 + 2 + 3 then
                        n6 = function(d_)
                            local rP_2
                            local Main = Workspace:FindFirstChild("Main")
                            local rN = Main and Main:FindFirstChild("Levels")
                            local rN_4
                            local rM_3 = rN
                            if rN then
                                rN = rM_3:FindFirstChild(tostring(d_))
                            end
                            local rL = rN
                            if not rL then
                                return false
                            end
                            local rM_4 = n9()
                            if not rM_4 then
                                return false
                            end
                            local rN_3 = (rL:FindFirstChild("StagePart"))
                            local rV = if rN_3 then 1 else 0
                            local rT = 2469 * rV + 1526 * (1 - rV)
                            local rU = 1901 * rV + 3844 * (1 - rV)
                            if not ((rT * 3371 + rU * 535 + rT * rU) % 16777213 == 14033603) then
                                rN_3 = rL:FindFirstChild("TeleportPart")
                            end
                            if not rN_3 then
                                rN_3 = rL:FindFirstChild("SafePart")
                            end
                            local rO = rN_3
                            if not rO then
                                rN_4, rP_2 = pcall(function()
                                    return rL:GetPivot().Position
                                end)
                                if not rN_4 or not rP_2 then
                                    return false
                                end
                                return (rM_4.Position - rP_2).Magnitude < 80
                            end
                            return (rM_4.Position - rO.Position).Magnitude < 80
                        end
                    else
                        nk = function(d_)
                            local rP_1
                            local Main = Workspace:FindFirstChild("Main")
                            local rN = Main and Main:FindFirstChild("Levels")
                            local rN_2
                            local rM_1 = rN
                            if rN then
                                rN = rM_1:FindFirstChild(tostring(d_))
                            end
                            local rL = rN
                            if not rL then
                                return false
                            end
                            local rM_2 = n9()
                            if not rM_2 then
                                return false
                            end
                            local rN_1 = (rL:FindFirstChild("StagePart"))
                            local rV = if rN_1 then 1 else 0
                            local rT = 2469 * rV + 1526 * (1 - rV)
                            local rU = 1901 * rV + 3844 * (1 - rV)
                            if not ((rT * 3371 + rU * 535 + rT * rU) % 16777213 == 14033603) then
                                rN_1 = rL:FindFirstChild("TeleportPart")
                            end
                            if not rN_1 then
                                rN_1 = rL:FindFirstChild("SafePart")
                            end
                            local rO = rN_1
                            if not rO then
                                rN_2, rP_1 = pcall(function()
                                    return rL:GetPivot().Position
                                end)
                                if not rN_2 or not rP_1 then
                                    return false
                                end
                                return (rM_2.Position - rP_1).Magnitude < 80
                            end
                            return (rM_2.Position - rO.Position).Magnitude < 80
                        end
                    end
                    vL_1 = (vL_1 + 103) % 368
                else
                    if vL_1 * 89791635 + 8 + 7 <= vL_1 * 89791635 + 8 + 7 + 3 then
                        na = fns.fn205
                        ou = fns.fn121
                        n0 = fn995
                        nv = fns.fn226
                    else
                        nv = fns.fn205
                        na = fns.fn121
                        ou = fn995
                        n0 = fns.fn226
                    end
                    vL_1 = (vL_1 + 333) % 368
                end
            else
                vL_21 = (vector.create((vL_1 * 2 + 8) % 11 + 1, (vL_1 * 1 + 12) % 13 + 1, (vL_1 * 10 + 14) % 17 + 1))
                vL_10 = (vector.create((vL_1 * 1 + 4) % 11 + 1, (vL_1 * 1 + 4) % 13 + 1, (vL_1 * 7 + 15) % 17 + 1))
                local wJ = vector.dot(vL_21, vL_10)
                if wJ * wJ <= vector.dot(vL_21, vL_21) * vector.dot(vL_10, vL_10) then
                    oe = fn894
                else
                    nh = fn894
                end
                vL_1 = (vL_1 + 103) % 368
            end
        elseif vL_30 <= 18 then
            if vL_30 <= 15 then
                if vL_30 <= 14 then
                    if vL_30 <= 13 then
                        vL_21 = (vector.create((vL_1 * 2 + 6) % 11 + 1, (vL_1 * 4 + 13) % 13 + 1, (vL_1 * 4 + 16) % 17 + 1))
                        local wo = vector.floor(vL_21) + vector.ceil(vL_21 * -1)
                        if vector.dot(wo, wo) == 4 then
                            nI = fn897
                            oA = fns.fn218
                            of = fn955
                            oF = fn892
                        else
                            oF = fn897
                            of = fns.fn218
                            nI = fn955
                            oA = fn892
                        end
                        vL_1 = (vL_1 + 103) % 368
                    else
                        vL_21 = {
                            "ikektzmn",
                            "jkncaafprs",
                            "eioodo",
                            "znsqo",
                            "tpugqsly",
                            "vmmfy",
                            "gxoicoh",
                            "zbblrpu",
                            "czzgrwqldc",
                            "ukwrvk",
                            "wzvfkdip",
                            "qmrbsiogwb"
                        }
                        local w1 = vL_1
                        vL_10 = vL_21[w1 % 12 + 1]
                        if vL_10:len() >= vL_10:reverse():rep(w1 % 3 + 2):len() then
                            oO = fn702
                            nJ = fns.fn45
                            ns = fns.fn38
                        else
                            nJ = fn702
                            ns = fns.fn45
                            oO = fns.fn38
                        end
                        vL_1 = (vL_1 + 149) % 368
                    end
                else
                    vL_21 = { "lkipifffgg", "cbekvbue", "ujwwvysk", "aazfnxb", "lbichv", "ptgcbthwwb", "oonfirqg" }
                    local ws = vL_1
                    vL_10 = vL_21[ws % 7 + 1]
                    if vL_10:len() >= vL_10:gsub("(.)", "%1%1", ws % 3 % 2 + 1):len() then
                        ne = fns.fn165
                        n5 = fns.fn367
                    else
                        n5 = fns.fn165
                        ne = fns.fn367
                    end
                    vL_1 = (vL_1 + 11) % 368
                end
            elseif vL_30 <= 17 then
                if vL_30 <= 16 then
                    if vL_1 * 75851731 + 11 + 7 <= vL_1 * 75851731 + 11 + 7 + 4 then
                        vL_11 = oN:CreateWindow({
                            Title = "Ouroboros Hub",
                            Footer = { { Text = nT, Copyable = true }, "|", vL_16 },
                            Icon = 12645376577,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 10
                        })
                    else
                        oN = vL_16:CreateWindow({
                            Title = "Ouroboros Hub",
                            Footer = { "|", nT, { Text = vL_11, Copyable = true } },
                            NotifySide = "Right",
                            Icon = 12645376577,
                            ShowCustomCursor = false,
                            CornerRadius = 10
                        })
                    end
                    vL_1 = (vL_1 + 241) % 368
                else
                    local w5 = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 4), string.byte(tostring(vL_22))), 31)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(w5, 4289555459), 0), 4289555459) ~= bit32.lrotate(w5, 0) then
                        vL_27.ShowCustomCursor = false
                        vL_11 = {
                            Settings = oN:AddTab("Settings", "settings"),
                            Player = oN:AddTab("Player", "person-standing"),
                            Main = oN:AddTab("Main", "gamepad-2"),
                            Info = oN:AddTab("Info", "info"),
                            Shop = oN:AddTab("Shop", "shopping-cart")
                        }
                    else
                        oN.ShowCustomCursor = false
                        vL_27 = {
                            Info = vL_11:AddTab("Info", "info"),
                            Main = vL_11:AddTab("Main", "gamepad-2"),
                            Shop = vL_11:AddTab("Shop", "shopping-cart"),
                            Player = vL_11:AddTab("Player", "person-standing"),
                            Settings = vL_11:AddTab("Settings", "settings")
                        }
                    end
                    vL_1 = (vL_1 + 57) % 368
                end
            else
                vL_21 = (vector.create((vL_1 * 7 + 9) % 11 + 1, (vL_1 * 6 + 5) % 13 + 1, (vL_1 * 6 + 5) % 17 + 1))
                vL_10 = (vector.create((vL_1 * 4 + 1) % 11 + 1, (vL_1 * 9 + 3) % 13 + 1, (vL_1 * 13 + 3) % 17 + 1))
                vL_31 = (vector.create((vL_1 * 2 + 2) % 11 + 1, (vL_1 * 2 + 7) % 13 + 1, (vL_1 * 1 + 10) % 17 + 1))
                if vector.dot(vector.cross(vL_21, vL_10), vL_31) == vector.dot(vector.cross(vL_10, vL_31), vL_21) + 5 then
                    n9 = fn1017
                else
                    vL_13 = fn1017
                end
                vL_1 = (vL_1 + 333) % 368
            end
        elseif vL_30 <= 21 then
            if vL_30 <= 20 then
                if vL_30 <= 19 then
                    vL_21 = { "qvd", "znwmnhxofq", "rcv", "jnojpam", "axgrwzlgk", "aquhfaes", "gmvu", "dxsimf" }
                    if vL_21[(vL_1 * 84 + 102) % 8 + 1] < vL_21[(vL_1 * 84 + 102) % 8 + 1] then
                        nQ = "Dream Keyboard Escape"
                    else
                        vL_16 = "Dream Keyboard Escape"
                    end
                    vL_1 = (vL_1 + 57) % 368
                else
                    vL_21 = (vector.create((vL_1 * 2 + 8) % 11 + 1, (vL_1 * 8 + 1) % 13 + 1, (vL_1 * 11 + 6) % 17 + 1))
                    vL_10 = (vector.create((vL_1 * 4 + 9) % 11 + 1, (vL_1 * 7 + 12) % 13 + 1, (vL_1 * 6 + 3) % 17 + 1))
                    local wh = vector.dot(vL_21, vL_10)
                    if wh * wh <= vector.dot(vL_21, vL_21) * vector.dot(vL_10, vL_10) then
                        nT = "https://discord.gg/ehKVq7pf7v"
                    else
                        oa = "https://discord.gg/ehKVq7pf7v"
                    end
                    vL_1 = (vL_1 + 149) % 368
                end
            else
                if ((nb and not nM or (not vL_18 or not nb)) and (vL_18 and false or (nb or not nb)) or not od and od and (nr and nr) and (false or vL_18 or (vL_18 or nr))) and not ((nb and not nM or (not vL_18 or not nb)) and (vL_18 and false or (nb or not nb)) or not od and od and (nr and nr) and (false or vL_18 or (vL_18 or nr))) then
                    nd = "https://rscripts.net/@Ouroboros"
                else
                    nO = "https://rscripts.net/@Ouroboros"
                end
                vL_1 = (vL_1 + 57) % 368
            end
        elseif vL_30 <= 22 then
            vL_21 = {
                "ekago",
                "gpi",
                "iij",
                "ujkopx",
                "cmxysjbd",
                "ecaklsubeky",
                "fbflm",
                "kpltxcpd",
                "vwdeibit",
                "sbexbajgoxa",
                "xefminjsj"
            }
            local wH = vL_1
            vL_10 = vL_21[wH % 11 + 1]
            if vL_10:len() <= vL_10:gsub("(.)", "%1%1", wH % 3 % 2 + 1):len() then
                nL = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                nF = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                nD = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                nu = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
            else
                nu = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
                nD = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
                nL = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
                nF = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
            end
            vL_1 = (vL_1 + 57) % 368
        else
            local wI = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 10), string.byte(tostring(na))), 5)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wI, 1178105015), 2564332290), (bit32.bxor(bit32.band(wI, 3116862280), 2417010475))), 2564332290), 2417010475) ~= wI then
                vL_15 = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
            else
                nt = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
            end
            vL_1 = (vL_1 + 333) % 368
        end
    elseif vL_30 <= 35 then
        if vL_30 <= 29 then
            if vL_30 <= 26 then
                if vL_30 <= 25 then
                    if vL_30 <= 24 then
                        if ((nU or not nv) and (nU or not n3) and (n3 or not nU or nU and nv) or (false or not nv or false and nv) and (n3 and n6 or (not n3 or n6))) and not ((nU or not nv) and (nU or not n3) and (n3 or not nU or nU and nv) or (false or not nv or false and nv) and (n3 and n6 or (not n3 or n6))) then
                            nT = "https://paypal.me/TheTruckerGOD"
                        else
                            nq = "https://paypal.me/TheTruckerGOD"
                        end
                        vL_1 = (vL_1 + 149) % 368
                    else
                        local wn = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 3), string.byte(tostring(oF))), 14)
                        if bit32.bxor(bit32.lrotate(bit32.bxor(wn, 4006723015), 22), 1912321135) ~= bit32.lrotate(wn, 22) then
                            oj = "https://venmo.com/u/miserablemusic"
                        else
                            nm = "https://venmo.com/u/miserablemusic"
                        end
                        vL_1 = (vL_1 + 103) % 368
                    end
                else
                    vL_21 = (vector.create((vL_1 * 2 + 3) % 11 + 1, (vL_1 * 8 + 9) % 13 + 1, (vL_1 * 4 + 17) % 17 + 1))
                    vL_10 = (vector.create((vL_1 * 2 + 2) % 11 + 1, (vL_1 * 4 + 1) % 13 + 1, (vL_1 * 7 + 3) % 17 + 1))
                    vL_31 = (vector.create((vL_1 * 7 + 8) % 11 + 1, (vL_1 * 2 + 1) % 13 + 1, (vL_1 * 11 + 17) % 17 + 1))
                    if vector.dot(vector.cross(vL_21, vL_10), vL_31) == vector.dot(vector.cross(vL_10, vL_31), vL_21) then
                        vL_4 = "#345d9d"
                        vL_15 = "#f7931a"
                    else
                        vL_15 = "#345d9d"
                        vL_4 = "#f7931a"
                    end
                    vL_1 = (vL_1 + 333) % 368
                end
            elseif vL_30 <= 28 then
                if vL_30 <= 27 then
                    vL_21 = (vector.create((vL_1 * 5 + 1) % 11 + 1, (vL_1 * 6 + 3) % 13 + 1, (vL_1 * 12 + 9) % 17 + 1))
                    local ww = vector.floor(vL_21) + vector.ceil(vL_21 * -1)
                    if vector.dot(ww, ww) == 0 then
                        vL_26 = "#627eea"
                    else
                        nL = "#627eea"
                    end
                    vL_1 = (vL_1 + 149) % 368
                else
                    if ("https://paypal.me/TheTruckerGOD" or (vL_15 or vL_15) and (false or vL_15)) and ("https://rscripts.net/@Ouroboros" and ((vL_9 or vL_9) and (vL_19 or vL_9))) and (("https://paypal.me/TheTruckerGOD" or vL_9 and nq) and (not vL_9 and nq or nq and not vL_15) or (vL_9 or false or (false or vL_19)) and (not vL_19 and vL_15 or false)) or not (("https://paypal.me/TheTruckerGOD" or (vL_15 or vL_15) and (false or vL_15)) and ("https://rscripts.net/@Ouroboros" and ((vL_9 or vL_9) and (vL_19 or vL_9))) and (("https://paypal.me/TheTruckerGOD" or vL_9 and nq) and (not vL_9 and nq or nq and not vL_15) or (vL_9 or false or (false or vL_19)) and (not vL_19 and vL_15 or false))) then
                        vL_3 = "#26a17b"
                    else
                        nH = "#26a17b"
                    end
                    vL_1 = (vL_1 + 103) % 368
                end
            else
                if vL_1 * 108234391 + 9 + 5 <= vL_1 * 108234391 + 9 + 5 + 1 then
                    vL_8 = "#14f195"
                    vL_18 = "#0070ba"
                    vL_29 = "#008cff"
                    vL_17 = "#7fd47f"
                    vL_28 = "#6ec1ff"
                else
                    vL_17 = "#14f195"
                    vL_29 = "#0070ba"
                    vL_8 = "#008cff"
                    vL_28 = "#7fd47f"
                    vL_18 = "#6ec1ff"
                end
                vL_1 = (vL_1 + 333) % 368
            end
        elseif vL_30 <= 32 then
            if vL_30 <= 31 then
                if vL_30 <= 30 then
                    if vL_1 * 63289403 + 13 + 6 <= vL_1 * 63289403 + 13 + 6 + 5 then
                        op = "#e8a34d"
                        vL_5 = "#8b93a3"
                    else
                        vL_5 = "#e8a34d"
                        op = "#8b93a3"
                    end
                    vL_1 = (vL_1 + 103) % 368
                else
                    local wE = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 15), 104), 16)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wE, 913956205), 529738572), (bit32.bxor(bit32.band(wE, 3381011090), 729572508))), 529738572), 729572508) ~= wE then
                        oM = vL_24:WaitForChild("Events")
                    else
                        vL_24 = oM:WaitForChild("Events")
                    end
                    vL_1 = (vL_1 + 241) % 368
                end
            else
                vL_21 = (vector.create((vL_1 * 5 + 7) % 11 + 1, (vL_1 * 4 + 12) % 13 + 1, (vL_1 * 3 + 8) % 17 + 1))
                vL_10 = (vector.create((vL_1 * 1 + 5) % 11 + 1, (vL_1 * 7 + 6) % 13 + 1, (vL_1 * 1 + 12) % 17 + 1))
                local wv = vector.dot(vL_21, vL_10)
                if wv * wv >= vector.dot(vL_21, vL_21) * vector.dot(vL_10, vL_10) + 1 then
                    vL_24 = RequestRebirth:WaitForChild("ItemAction")
                    n1 = RequestRebirth:WaitForChild("TrailAction")
                    n8 = RequestRebirth:WaitForChild("AuraAction")
                    od = RequestRebirth:WaitForChild("RequestRebirth")
                else
                    od = vL_24:WaitForChild("ItemAction")
                    n8 = vL_24:WaitForChild("TrailAction")
                    n1 = vL_24:WaitForChild("AuraAction")
                    RequestRebirth = vL_24:WaitForChild("RequestRebirth")
                end
                vL_1 = (vL_1 + 11) % 368
            end
        elseif vL_30 <= 34 then
            if vL_30 <= 33 then
                if vL_1 * 51927963 + 9 + 5 >= vL_1 * 51927963 + 9 + 5 + 5 then
                    vL_24 = TeleportToStage:WaitForChild("SpawnBestTreadmill")
                    oM = SpawnBestTreadmill:WaitForChild("TeleportToStage")
                else
                    SpawnBestTreadmill = vL_24:WaitForChild("SpawnBestTreadmill")
                    TeleportToStage = oM:WaitForChild("TeleportToStage")
                end
                vL_1 = (vL_1 + 103) % 368
            else
                if vL_1 * 107462205 + 3 + 6 >= vL_1 * 107462205 + 3 + 6 + 2 then
                    oM = vL_22:WaitForChild("Modules")
                else
                    vL_22 = oM:WaitForChild("Modules")
                end
                vL_1 = (vL_1 + 287) % 368
            end
        else
            vL_21 = {
                "vyt",
                "eoda",
                "izmheb",
                "fwzpmjcooit",
                "hmplkld",
                "ibzd",
                "ucwdhmxpoha",
                "loy",
                "ynxfotc",
                "fmu",
                "cbhychiuzdw",
                "inuegrzcr"
            }
            local wz = vL_1
            vL_10 = vL_21[wz % 12 + 1]
            if vL_10:len() >= vL_10:gsub("(.)", "%1%1", wz % 3 % 2 + 1):len() then
                vL_22 = require(TrailConfigurations:WaitForChild("ItemConfigurations"))
                nH = require(TrailConfigurations:WaitForChild("TrailConfigurations"))
            else
                nH = require(vL_22:WaitForChild("ItemConfigurations"))
                TrailConfigurations = require(vL_22:WaitForChild("TrailConfigurations"))
            end
            vL_1 = (vL_1 + 241) % 368
        end
    elseif vL_30 <= 41 then
        if vL_30 <= 38 then
            if vL_30 <= 37 then
                if vL_30 <= 36 then
                    if (vL_1 * 2 + 8) * 10 % 3 == ((vL_1 * 2 + 8) * 10 + 5) % 3 then
                        vL_22 = require(AuraConfigurations:WaitForChild("AuraConfigurations"))
                    else
                        AuraConfigurations = require(vL_22:WaitForChild("AuraConfigurations"))
                    end
                    vL_1 = (vL_1 + 195) % 368
                else
                    vL_21 = (vector.create((vL_1 * 5 + 9) % 11 + 1, (vL_1 * 7 + 9) % 13 + 1, (vL_1 * 7 + 17) % 17 + 1))
                    vL_10 = (vector.create((vL_1 * 1 + 1) % 11 + 1, (vL_1 * 4 + 6) % 13 + 1, (vL_1 * 14 + 7) % 17 + 1))
                    vL_31 = (vector.create((vL_1 * 5 + 2) % 11 + 1, (vL_1 * 10 + 5) % 13 + 1, (vL_1 * 4 + 4) % 17 + 1))
                    if vector.dot(vector.cross(vL_21, vL_10), vL_31) == vector.dot(vector.cross(vL_10, vL_31), vL_21) then
                        vL_9 = require(vL_22:WaitForChild("ProductConfigurations"))
                    else
                        vL_22 = require(vL_9:WaitForChild("ProductConfigurations"))
                    end
                    vL_1 = (vL_1 + 241) % 368
                end
            else
                local wL = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 7), string.byte(tostring(vL_13))), 23)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wL, 858652695), 3163549488), (bit32.bxor(bit32.band(wL, 3436314600), 1548902065))), 3163549488), 1548902065) ~= wL then
                    nk = require(nn:WaitForChild("GameConfig"))
                    vL_22 = {
                        [2] = 160,
                        [8] = 16000,
                        [10] = 60000,
                        [5] = 11000,
                        [3] = 1200,
                        [7] = 13000,
                        [9] = 30000,
                        [1] = 120,
                        [4] = 1400,
                        [6] = 12000
                    }
                    nr = {
                        "Button3",
                        "Button6",
                        "Button2",
                        "Button13",
                        "Button5",
                        "Button8",
                        "Button11",
                        "Button9",
                        "Button7",
                        "Button1",
                        "Button10",
                        "Button12",
                        "Button4"
                    }
                else
                    nr = require(vL_22:WaitForChild("GameConfig"))
                    nn = {
                        [1] = 120,
                        [2] = 160,
                        [3] = 1200,
                        [4] = 1400,
                        [5] = 11000,
                        [6] = 12000,
                        [7] = 13000,
                        [8] = 16000,
                        [9] = 30000,
                        [10] = 60000
                    }
                    nk = {
                        "Button1",
                        "Button2",
                        "Button3",
                        "Button4",
                        "Button5",
                        "Button6",
                        "Button7",
                        "Button8",
                        "Button9",
                        "Button10",
                        "Button11",
                        "Button12",
                        "Button13"
                    }
                end
                vL_1 = (vL_1 + 241) % 368
            end
        elseif vL_30 <= 40 then
            if vL_30 <= 39 then
                vL_21 = (vector.create((vL_1 * 5 + 2) % 11 + 1, (vL_1 * 10 + 8) % 13 + 1, (vL_1 * 1 + 11) % 17 + 1))
                vL_10 = (vector.create((vL_1 * 2 + 8) % 11 + 1, (vL_1 * 2 + 10) % 13 + 1, (vL_1 * 11 + 11) % 17 + 1))
                vL_31 = (vector.create((vL_1 * 1 + 9) % 11 + 1, (vL_1 * 6 + 8) % 13 + 1, (vL_1 * 8 + 8) % 17 + 1))
                if vector.dot(vector.cross(vL_21, vL_10), vL_31) == vector.dot(vector.cross(vL_10, vL_31), vL_21) + 2 then
                    nb = {
                        Hacker = 175,
                        Gold = 3,
                        Love = 425,
                        Admin = 100,
                        Basic = 1,
                        Diamond = 9,
                        Angel = 125,
                        Void = 300,
                        EventTreadmill = 1
                    }
                    vL_9 = {
                        Hacker = ng.HackerTreadmillGP,
                        Diamond = ng.DiamondTreadmillGP,
                        Void = ng.VoidTreadmillGP,
                        Angel = ng.AngelTreadmillGP,
                        Love = ng.LoveTreadmillGP,
                        Gold = ng.GoldTreadmillGP,
                        Admin = ng.AdminTreadmillGP
                    }
                else
                    ng = {
                        Basic = 1,
                        Gold = 3,
                        Diamond = 9,
                        Admin = 100,
                        Angel = 125,
                        Hacker = 175,
                        Void = 300,
                        Love = 425,
                        EventTreadmill = 1
                    }
                    nb = {
                        Gold = vL_9.GoldTreadmillGP,
                        Diamond = vL_9.DiamondTreadmillGP,
                        Admin = vL_9.AdminTreadmillGP,
                        Angel = vL_9.AngelTreadmillGP,
                        Hacker = vL_9.HackerTreadmillGP,
                        Void = vL_9.VoidTreadmillGP,
                        Love = vL_9.LoveTreadmillGP
                    }
                end
                vL_1 = (vL_1 + 241) % 368
            else
                local wy = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 8), string.byte(tostring(om))), 31)
                if bit32.bxor(bit32.lrotate(bit32.bxor(wy, 1130420219), 18), 1609371011) ~= bit32.lrotate(wy, 18) then
                    nc = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                else
                    vL_19 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                end
                vL_1 = (vL_1 + 103) % 368
            end
        else
            if vL_1 * 107181787 + 1 + 2 <= vL_1 * 107181787 + 1 + 2 + 3 then
                oN = loadstring(game:HttpGet(vL_19 .. "Library.lua"))()
            else
                vL_19 = loadstring(game:HttpGet(oN .. "Library.lua"))()
            end
            vL_1 = (vL_1 + 333) % 368
        end
    elseif vL_30 <= 44 then
        if vL_30 <= 43 then
            if vL_30 <= 42 then
                vL_21 = (vector.create((vL_1 * 7 + 3) % 11 + 1, (vL_1 * 1 + 3) % 13 + 1, (vL_1 * 2 + 16) % 17 + 1))
                vL_10 = (vector.create((vL_1 * 2 + 6) % 11 + 1, (vL_1 * 8 + 7) % 13 + 1, (vL_1 * 10 + 9) % 17 + 1))
                local wq = vector.cross(vL_21, vL_10)
                local wr = vector.dot(vL_21, vL_10)
                if vector.dot(wq, wq) + wr * wr == vector.dot(vL_21, vL_21) * vector.dot(vL_10, vL_10) then
                    pcall(fn821)
                    vL_6 = loadstring(game:HttpGet(vL_19 .. "addons/ThemeManager.lua"))()
                    ov = loadstring(game:HttpGet(vL_19 .. "addons/SaveManager.lua"))()
                    oq = oN.Toggles
                    oj = oN.Options
                    oh = fns.fn396
                else
                    pcall(fn821)
                    oh = loadstring(game:HttpGet(vL_6 .. "addons/ThemeManager.lua"))()
                    vL_19 = loadstring(game:HttpGet(vL_6 .. "addons/SaveManager.lua"))()
                    oN = oj.Toggles
                    oq = oj.Options
                    ov = fns.fn396
                end
                vL_1 = (vL_1 + 149) % 368
            else
                if (n5 or oo or oo and n5) and ((m9 or not m9) and (oo and not m9)) or not ((n5 or oo or oo and n5) and ((m9 or not m9) and (oo and not m9))) then
                    nX = fns.fn328
                    nM = fn1047
                else
                    nM = fns.fn328
                    nX = fn1047
                end
                vL_1 = (vL_1 + 11) % 368
            end
        else
            if (not TeleportToStage and not vL_11 and (not vL_11 or not vL_11) or not TeleportToStage and not n0 and (not vL_11 and vL_11)) and not (not TeleportToStage and not vL_11 and (not vL_11 or not vL_11) or not TeleportToStage and not n0 and (not vL_11 and vL_11)) then
                oz = fn745
                ny = fns.fn455
                nh = fns.fn78
            else
                ny = fn745
                nh = fns.fn455
                oz = fns.fn78
            end
            vL_1 = (vL_1 + 195) % 368
        end
    elseif vL_30 <= 45 then
        vL_30 = {
            "gzcda",
            "ehwcabzssk",
            "bcqbp",
            "esnyhmoix",
            "bsggyfssj",
            "oskf",
            "niefeboa",
            "sjuq",
            "rwnadmbn",
            "cucddpnhevyf",
            "snypixxqnnb",
            "irkszk",
            "jrxuluydfibx",
            "yfioyr",
            "mjncub",
            "ksawqzzkmu"
        }
        if vL_30[(vL_1 * 53 + 77) % 16 + 1] < vL_30[(vL_1 * 53 + 77) % 16 + 1] then
            oj = fns.fn28
        else
            n9 = fns.fn28
        end
        vL_1 = (vL_1 + 287) % 368
    else
        local wQ = bit32.rrotate(bit32.bxor(bit32.lrotate(vL_1, 17), string.byte(tostring(vL_27))), 1)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wQ, 1172101051), 1270743249), (bit32.bxor(bit32.band(wQ, 3122866244), 375619989))), 1270743249), 375619989) ~= wQ then
            oh = fns.fn408
        else
            nS = fns.fn408
        end
        vL_1 = (vL_1 + 11) % 368
    end
until (vL_1 * 103 + 138) % 368 == 195
for k, v in vL_27 do
    vL_13(v)
end
np, vL_19, vL_11, Label, oD, vL_22 = nil, nil, nil, nil, nil, nil
vL_9 = 9
repeat
    vL_1 = (vL_9 * 2 + 2) % 3 + 1
    if vL_1 <= 2 then
        if vL_1 <= 1 then
            if (vL_9 * 2 + 7) * 4 % 3 == ((vL_9 * 2 + 7) * 4 + 2) % 3 then
                vL_11 = tostring(game.JobId)
            else
                oD = tostring(game.JobId)
            end
            vL_9 = (vL_9 + 11) % 24
        else
            vL_1 = (vector.create((vL_9 * 4 + 9) % 11 + 1, (vL_9 * 8 + 1) % 13 + 1, (vL_9 * 4 + 9) % 17 + 1))
            local w_ = vector.floor(vL_1) + vector.ceil(vL_1 * -1)
            if vector.dot(w_, w_) == 5 then
                oD = #vL_22 > 18
            else
                vL_22 = #oD > 18
            end
            vL_9 = (vL_9 + 20) % 24
        end
    else
        vL_1 = (vector.create((vL_9 * 4 + 9) % 11 + 1, (vL_9 * 1 + 7) % 13 + 1, (vL_9 * 3 + 9) % 17 + 1))
        vL_24 = (vector.create((vL_9 * 1 + 9) % 11 + 1, (vL_9 * 8 + 12) % 13 + 1, (vL_9 * 9 + 15) % 17 + 1))
        vL_13 = (vector.create((vL_9 * 1 + 6) % 5 + 1, (vL_9 * 3 + 6) % 7 + 1, (vL_9 * 2 + 3) % 9 + 1))
        if math.abs((vector.angle(vL_1, vL_24, vL_13))) - math.abs((vector.angle(vL_24, vL_1, vL_13))) == 0 then
            np = "Unknown"
            pcall(fns.fn354)
            vL_19 = vL_27.Info:AddLeftGroupbox("Account", "circle-user")
            vL_19:AddLabel(ny("User", n7.Name, vL_17), true)
            vL_19:AddLabel(ny("Status", "Keyless", vL_17), true)
            vL_19:AddLabel(ny("Executor", np, vL_17), true)
            vL_11 = vL_27.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            vL_11:AddLabel(nM(vL_16 .. " [" .. tostring(game.PlaceId) .. "]", vL_28), true)
            vL_11:AddLabel(ny("Place ID", tostring(game.PlaceId), vL_28), true)
            Label = vL_11:AddLabel(ny("Session time", "0s", op), true)
        else
            n7 = "Unknown"
            pcall(fns.fn354)
            nM = vL_19.Info:AddLeftGroupbox("Account", "circle-user")
            nM:AddLabel(op("User", ny.Name, vL_16), true)
            nM:AddLabel(op("Status", "Keyless", vL_16), true)
            nM:AddLabel(op("Executor", n7, vL_16), true)
            vL_17 = vL_19.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            vL_17:AddLabel(vL_28(vL_11 .. " [" .. tostring(game.PlaceId) .. "]", Label), true)
            vL_17:AddLabel(op("Place ID", tostring(game.PlaceId), Label), true)
            np = vL_17:AddLabel(op("Session time", "0s", vL_27), true)
        end
        vL_9 = (vL_9 + 8) % 24
    end
until (vL_9 * 17 + 17) % 24 == 17
if vL_22 then
    vL_19 = 7
    repeat
        vL_9 = (vector.create((vL_19 * 2 + 1) % 11 + 1, (vL_19 * 10 + 5) % 13 + 1, (vL_19 * 6 + 13) % 17 + 1))
        vL_1 = (vector.create((vL_19 * 3 + 9) % 11 + 1, (vL_19 * 7 + 11) % 13 + 1, (vL_19 * 4 + 9) % 17 + 1))
        local wY = vector.cross(vL_9, vL_1)
        local wZ = vector.dot(vL_9, vL_1)
        if vector.dot(wY, wY) + wZ * wZ == vector.dot(vL_9, vL_9) * vector.dot(vL_1, vL_1) then
            vL_22 = string.sub(oD, 1, 18) .. "..."
        else
            oD = string.sub(vL_22, 1, 18) .. "..."
        end
        vL_19 = (vL_19 + 0) % 8
    until (vL_19 * 1 + 7) % 8 == 6
end
vL_19 = vL_22 or oD
oc, vL_22, no, nl, connection, connection2, nB, oJ, nR, nK, nf, oH, nG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pk = vL_19
vL_11:AddLabel(ny("Server", pk, vL_5), true)
vL_11:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
oc = os.clock()
task.spawn(fns.worker)
vL_10 = vL_27.Info:AddRightGroupbox("Scripts", "package")
vL_10:AddLabel(nM("Included in this hub", vL_5), true)
vL_10:AddLabel(nM(vL_16, vL_28), true)
vL_30 = vL_27.Info:AddRightGroupbox("Features", "list")
vL_30:AddLabel(nM("Auto Farm", vL_28), true)
vL_30:AddLabel(nM("Auto Treadmill", op), true)
vL_30:AddLabel(nM("Auto Rebirth", vL_17), true)
vL_30:AddLabel(nM("Auto Buy", vL_17), true)
vL_30:AddLabel(nM("Auto Equip", vL_28), true)
vL_30:AddLabel(nM("World Teleport", vL_5), true)
vL_24 = vL_27.Info:AddRightGroupbox("Socials", "link")
if ((not oJ or not oc or (not oc or not oJ)) and (oc or not oc or (oJ or oJ)) and (not oc and not oJ or oc and oJ or not oJ and oJ and (not oc or oJ)) or (not oJ or not oc or not oJ and not oJ) and ((oc or oJ) and (not oJ and not oJ)) and ((oc and oc or (oc or not oc)) and (oJ and not oc and (not oc and not oc)))) and not ((not oJ or not oc or (not oc or not oJ)) and (oc or not oc or (oJ or oJ)) and (not oc and not oJ or oc and oJ or not oJ and oJ and (not oc or oJ)) or (not oJ or not oc or not oJ and not oJ) and ((oc or oJ) and (not oJ and not oJ)) and ((oc and oc or (oc or not oc)) and (oJ and not oc and (not oc and not oc)))) then
    vL_27:AddButton({ Text = "Discord", Func = vL_22 })
    vL_27:AddButton({ Text = "Rscripts", Func = onRscripts })
    nX.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
else
    vL_24:AddButton({ Text = "Discord", Func = nX })
    vL_24:AddButton({ Text = "Rscripts", Func = onRscripts })
    vL_22 = vL_27.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
end
vL_22:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
vL_22:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
vL_22:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
vL_22:AddButton({ Text = "Copy Discord Invite", Func = nX })
vL_9 = vL_27.Info:AddRightGroupbox("Donations", "heart")
vL_9:AddLabel(nM("All donations are optional but appreciated.", op), true)
vL_9:AddLabel(nM("If you donate you get a special role, just PING after you donate.", vL_17), true)
vL_9:AddDivider()
vL_9:AddLabel(nM("LTC / Litecoin", vL_4), true)
vL_9:AddButton({ Text = "Copy Litecoin Address", Func = fns.onCopyLitecoinAddress })
vL_9:AddLabel(nM("BTC / Bitcoin", vL_15), true)
vL_9:AddButton({ Text = "Copy Bitcoin Address", Func = fns.onCopyBitcoinAddress })
vL_9:AddLabel(nM("ETH / Ethereum", vL_26), true)
vL_9:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
vL_9:AddLabel(nM("USDT", vL_3), true)
vL_9:AddButton({ Text = "Copy USDT Address", Func = fns.onCopyUSDTAddress })
vL_9:AddLabel(nM("Solana", vL_8), true)
vL_9:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
vL_9:AddLabel(nM("PayPal", vL_18), true)
vL_9:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
vL_9:AddLabel(nM("Venmo", vL_29), true)
vL_9:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
vL_9:AddDivider()
vL_9:AddLabel(nM("Don't have any of the listed currencies but still wanna donate?", vL_5), true)
vL_9:AddLabel(nM("DM me and we'll work something out.", vL_28), true)
local FaqGroup = vL_27.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = vL_27.Main:AddLeftGroupbox("Farm", "trophy")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
FarmGroup:AddDropdown("WinMode", { Text = "Win Mode", Values = { "Best", "Weakest", "Random" }, Default = "Best", Multi = false })
FarmGroup:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.55, Min = 0.3, Max = 3, Rounding = 2 })
FarmGroup:AddToggle("AutoBestTreadmill", { Text = "Auto Go To Best Treadmill", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local WorldsGroup = vL_27.Main:AddRightGroupbox("Worlds", "globe")
WorldsGroup:AddToggle("AutoBuyWorlds", { Text = "Auto Buy Worlds", Default = false })
local BuyGroup = vL_27.Shop:AddLeftGroupbox("Buy", "shopping-bag")
BuyGroup:AddToggle("AutoBuyItems", { Text = "Auto Buy Items", Default = false })
BuyGroup:AddToggle("AutoBuySteps", { Text = "Auto Buy Steps", Default = false })
BuyGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
BuyGroup:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
vL_31 = vL_27.Shop:AddRightGroupbox("Equip", "sparkles")
vL_31:AddToggle("AutoEquipBestItems", { Text = "Auto Equip Best Items", Default = false })
vL_31:AddToggle("AutoEquipBestSteps", { Text = "Auto Equip Best Steps", Default = false })
vL_31:AddToggle("AutoEquipBestTrails", { Text = "Auto Equip Best Trails", Default = false })
vL_31:AddToggle("AutoEquipBestAuras", { Text = "Auto Equip Best Auras", Default = false })
vL_21 = vL_27.Player:AddLeftGroupbox("Movement", "footprints")
vL_21:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
vL_21:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
vL_21:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
vL_21:AddToggle("NoClip", { Text = "NoClip", Default = false })
vL_21:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
vL_13 = vL_27.Player:AddRightGroupbox("Fly", "feather")
vL_13:AddToggle("Fly", { Text = "Fly", Default = false })
vL_13:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
vL_1 = vL_27.Settings:AddLeftGroupbox("Menu", "wrench")
vL_1:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
no = tick()
nl = tick()
pcall(function()
    for i, v in ipairs(getconnections(n7.Idled)) do
        local t4 = v
        pcall(function()
            t4:Disable()
        end)
    end
end)
oJ = fn824
connection = oC.InputBegan:Connect(onInputBegan)
connection2 = oC.InputChanged:Connect(onInputChanged)
vL_1:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
vL_1:AddButton("Unload", fns.onUnload)
oN.ToggleKeybind = oj.MenuKeybind
nR = function(hA)
    pcall(function()
        GuiService:SetGameplayPausedNotificationEnabled(not hA)
    end)
    pcall(function()
        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
        if RobloxNetworkPauseNotificati then
            RobloxNetworkPauseNotificati.Enabled = not hA
        end
    end)
    if not hA then
        return
    end
    pcall(function()
        if sethiddenproperty then
            sethiddenproperty(n7, "GameplayPaused", false)
        else
            n7.GameplayPaused = false
        end
    end)
end
oq.AntiGameplayPause:OnChanged(fn839)
task.spawn(antiGameplayPauseLoop)
vL_32.Stepped:Connect(fns.onStepped)
oC.JumpRequest:Connect(onJumpRequest)
nB = workspace.CurrentCamera
vL_32.RenderStepped:Connect(fns.onRenderStepped)
oq.Fly:OnChanged(fn775)
oq.WalkSpeedEnabled:OnChanged(fn653)
oq.AutoBestTreadmill:OnChanged(fns.fn447)
vL_6:SetLibrary(oN)
vL_6:SetFolder("OuroborosHub")
vL_6:SaveDefault("Monochrome")
ov:SetLibrary(oN)
ov:IgnoreThemeSettings()
ov:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
ov:SetFolder("OuroborosHub/DreamKeyboardEscape")
local vL_25 = ov:BuildConfigSection(vL_27.Settings)
nK = fn715
nf = fn1020
oH = fns.fn157
nG = function(iR)
    local ve
    ve = nil
    local vf = type(iR) ~= "table" or type(iR.idx) ~= "string" or type(iR.type) ~= "string" or ov.Ignore[iR.idx]
    if vf then
        return false
    end
    ve = nK(iR.type, iR.idx)
    if not ve then
        return false
    end
    local vf_1 = pcall(function()
        if iR.type == "Input" then
            if type(iR.text) ~= "string" then
                return
            end
            ve:SetValue(iR.text)
        elseif iR.type == "ColorPicker" then
            ve:SetValueRGB(Color3.fromHex(iR.value), iR.transparency)
        elseif iR.type == "KeyPicker" then
            ve:SetValue({ iR.key, iR.mode, iR.modifiers })
            if iR.mode == "Toggle" and iR.toggled ~= nil then
                ve.Toggled = iR.toggled
                ve:Update()
            end
        else
            ve:SetValue(iR.value)
        end
    end)
    return vf_1
end
vL_25:AddDivider()
vL_25:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
vL_25:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
vL_25:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
vL_6:ApplyToTab(vL_27.Settings)
vL_6:LoadDefault()
ov:LoadAutoloadConfig()
task.spawn(fns.worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(fns.worker5)
task.spawn(fns.antiAfkLoop)
oN:OnUnload(fns.fn442)
oN:Notify("Dream Keyboard Escape loaded")
