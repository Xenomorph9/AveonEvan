local fns = {}
local tb_4, tb_13, tb_18, tb_20, ThemeManager, tb_25, tb_27
local Toggles
local TrailConfigurations
local lR
local my
local mf
local mX
local lX
local mE
local lE
local ml
local AuraAction
local mK
local lK
local Library
local TrailAction
local mQ
local lQ
local me
local mW
local mD
local lD
local mk
local l1
local mJ
local lJ
local connection2
local l7
local AuraConfigurations
local lP
local mw
local SaveManager
local mV
local ItemShopRequest
local mC
local lC
local mj
local l0
local mI
local lI
local connection
local connection3
local mO
local lO
local LocalPlayer
local RequestWin
local mU
local lU
local lB
local mi
local l_
local mH
local Worlds
local mo
local l5
local mN
local Request
local mu
local mb
local mT
local lT
local mA
local Shoes
local mh
local mZ
local lZ
local HttpService
local lG
local mn
local l4
local VirtualUser
local lM
local mt
local ma
local mS
local lS
local Rebirth
local mg
local mY
local lY
local mF
local Items
local mm
local l3
local Name
local lL
local ms
function fns.fn16()
    mX = nil
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    lY(false)
    local s5 = lX()
    if s5 then
        s5.PlatformStand = false
        s5.WalkSpeed = 16
    end
end
function fns.onCopyVenmoLink()
    l_(l0, "Copied Venmo link")
end
function fns.fn27()
    local pT = mm()
    local pU = Worlds.GetCurrent()
    local pV_1 = pU and pU.Id or 1
    local pU_2 = Shoes.GetNextUnlockableShoeName(pT.OwnedShoes, pV_1)
    if not pU_2 then
        return
    end
    local pV_2 = Shoes.GetWinsCost(pU_2)
    local pW = typeof(pV_2) ~= "number" or (pT.Wins or 0) < pV_2
    if pW then
        return
    end
    lL:FireServer(pU_2)
end
function fns.fn34()
    local Character = LocalPlayer.Character
    local n7 = Character and Character:FindFirstChildOfClass("Humanoid")
    return n7
end
function fns.onImportConfigFromClipboardTex()
    local sH_1
    local sF = l4.SaveManager_ImportSource.Value or ""
    local sF_1
    local sG = tostring(sF):match("^%s*(.-)%s*$")
    if sG == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    sF_1, sH_1 = pcall(HttpService.JSONDecode, HttpService, sG)
    local sG_1 = not sF_1 or type(sH_1) ~= "table"
    local sL = if sG_1 then 1 else 0
    local sJ = 1268 * sL + 2753 * (1 - sL)
    local sK = 184 * sL + 1178 * (1 - sL)
    if not ((sJ * 1109 + sK * 3902 + sJ * sK) % 16777213 == 2357492) then
        sG_1 = type(sH_1.objects) ~= "table"
    end
    if sG_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local sF_2 = 0
    for i, v in ipairs(sH_1.objects) do
        if lS(v) then
            sF_2 += 1
        end
    end
    if sF_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    l4.SaveManager_ImportSource:SetValue("")
    local sH_2 = sF_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(sF_2, sH_2), 6)
end
function fns.fn141(aB)
    if Library.Unloaded then
        return false
    end
    local nY = Toggles[aB]
    return nY ~= nil and nY.Value == true
end
function fns.fn144(gM, gN)
    local rZ_1 = (gM == "Toggle" and Toggles or l4)[gN]
    local rY_2 = type(rZ_1) == "table" and rZ_1.Type == gM
    return rY_2 and rZ_1 or nil
end
function fns.fn150()
    return mw.Data
end
function fns.fn153(dE, dF)
    local p4 = mm()[dF]
    local p5 = p4 ~= ""
    local p6 = typeof(p4) == "string" and p5
    if p6 then
        return p4
    end
    local p4_1 = LocalPlayer:FindFirstChild(dE)
    local p5_1 = p4_1 and p4_1:FindFirstChild("Equipped")
    local p4_2 = p5_1
    if p5_1 then
        p5_1 = p4_2:IsA("StringValue")
    end
    if p5_1 then
        return p4_2.Value
    end
    return ""
end
function fns.worker4()
    while not Library.Unloaded do
        local sZ = if lC("AutoBestWorld") then 1 else 0
        if sZ == 1 then
            pcall(mu)
        end
        if lC("AutoRebirth") then
            pcall(mg)
        end
        task.wait(2)
    end
end
function fns.fn158()
    local pM = mm()
    local pN = pM.Rebirths or 0
    local pN_1 = pM.Level or 1
    local pS = if pN_1 < Rebirth.GetRequiredLevel(pN) then 1 else 0
    if pS == 1 then
        return
    end
    Request:InvokeServer()
end
function fns.fn167(d1, d2, d3, d4, d5, d6)
    local ID
    local qm_1
    ID, qm_1 = nil, -1
    for i, v in ipairs(d4) do
        if mA(d1, d2, v.ID) then
            local qo_1 = v[d6] or 0
            if qo_1 > qm_1 then
                ID, qm_1 = v.ID, qo_1
            end
        end
    end
    local qo_2 = ID and l1(d1, d3) ~= ID
    if qo_2 then
        d5:FireServer("Equip", ID)
    end
end
function fns.fn175(bi, bj)
    local og = mf()
    if not og then
        return
    end
    mU = bj == true
    mX = bi
    og.AssemblyLinearVelocity = Vector3.zero
    og.AssemblyAngularVelocity = Vector3.zero
    og.CFrame = bi
end
function fns.fn187(cc)
    if cc:GetAttribute("PersonalTreadmill") == true then
        return false
    elseif cc.Name == "Basic" then
        return true
    else
        local o0 = lJ[cc.Name]
        if o0 then
            local OwnedTreadmills = mm().OwnedTreadmills
            local o2 = typeof(OwnedTreadmills) == "table" and OwnedTreadmills[o0] == true
            return o2
        end
        local o0_1 = l3(cc)
        if typeof(o0_1) ~= "number" then
            return false
        end
        local o1_2 = mm().Rebirths or 0
        return o1_2 >= o0_1
    end
end
function fns.onCopySolanaAddress()
    l_(ma, "Copied Solana address")
end
function fns.onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local rC_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if rC_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
function fns.onUnload()
    Library:Unload()
end
function fns.onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local rK_1 = lX()
        if rK_1 then
            rK_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn312()
    local OwnedItems = mm().OwnedItems
    local ItemTiers = mm().ItemTiers
    if typeof(OwnedItems) ~= "table" then
        return
    end
    for i, v in ipairs(Items.GetAll(OwnedItems)) do
        local max = math.max
        local floor = math.floor
        local qX = tonumber(OwnedItems[v.Id]) or 0
        local qY = max(0, floor(qX))
        local qV_1 = typeof(ItemTiers) == "table" and ItemTiers[v.Id]
        local qW_1 = qV_1 or nil
        local qW_2 = Items.MaxStarTier - 1
        local ra = 0
        while ra <= qW_2 do
            local rb = ra
            if lO(qY, qW_1, rb) >= Items.MergeCost then
                lZ:FireServer("Merge", v.Id, rb)
                return
            end
            ra += 1
        end
    end
end
local function worker()
    local rj_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local ri = math.floor(os.clock() - ml)
        if ri < 60 then
            rj_1 = ri .. "s"
        elseif ri < 3600 then
            rj_1 = string.format("%dm %ds", ri // 60, ri % 60)
        else
            rj_1 = string.format("%dh %dm", ri // 3600, ri % 3600 // 60)
        end
        mK:SetText(mT("Session time", rj_1, mt))
    end
end
local function fn325()
    local Character = LocalPlayer.Character
    local n4 = Character and Character:FindFirstChild("HumanoidRootPart")
    return n4
end
local function worker5()
    while not Library.Unloaded do
        if lC("AutoWin") then
            Name = nil
            pcall(lR)
        elseif lC("AutoBestTreadmill") then
            pcall(mJ)
        else
            Name = nil
            mX = nil
        end
        local sT = lC("AutoWin") and mD("WinDelay", 0.55)
        local sU = sT or 0.5
        task.wait(sU)
    end
end
local function fn340()
    local qz_1
    local qy_1
    local qx_1
    qx_1, qy_1, qz_1 = pcall(function()
        return ItemShopRequest:InvokeServer("GetStock")
    end)
    local qA = not qx_1 or qy_1 ~= true or typeof(qz_1) ~= "table"
    if qA then
        return
    end
    local qx_2 = mm().Wins or 0
    local qy_2 = qx_2
    local qA_1 = qz_1.Items or {}
    for k, v in pairs(qA_1) do
        local qx_4 = v.Count or 0
        local qx_5 = Items.GetWinPrice(v.ItemId)
        local qA_2 = qx_4 > 0 and typeof(qx_5) == "number" and qy_2 >= qx_5
        if qA_2 then
            ItemShopRequest:InvokeServer("BuyWins", v.Slot, v.ItemId)
            task.wait(0.2)
            local qx_6 = mm().Wins or 0
            qy_2 = qx_6
        end
    end
end
local function fn346(bD, bE, bF, bG)
    local oq = os.clock()
    local ou = oq + (bG or 2.5)
    lU(CFrame.new(bF.X, bF.Y + 80, bF.Z), false)
    mi(bF)
    while os.clock() < ou do
        if Library.Unloaded then
            return nil
        end
        for i, v in ipairs(bE) do
            local oq_1 = bD:FindFirstChild(v)
            local ot_1 = oq_1 and oq_1:IsA("BasePart")
            if ot_1 then
                return oq_1
            end
        end
        lU(CFrame.new(bF.X, bF.Y + 80, bF.Z), false)
        if os.clock() - mQ >= 0.2 then
            mi(bF)
        end
        task.wait(0.05)
    end
    for i, v in ipairs(bE) do
        local oq_2 = bD:FindFirstChild(v)
        local ot_2 = oq_2 and oq_2:IsA("BasePart")
        if ot_2 then
            return oq_2
        end
    end
    return nil
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local s1 = tick() - lE
            local s2 = tick() - mY
            if s1 >= 300 and s2 >= 60 then
                pcall(mE)
            else
                if s1 < 300 and s2 >= 300 then
                    pcall(mE)
                end
            end
        end
    end
end
local function fn372()
    l_(mn, "Copied Discord invite to clipboard")
end
local function fn398()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn399()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    mY = tick()
end
local function worker2()
    while not Library.Unloaded do
        if lC("AutoBuyItems") then
            pcall(mH)
        end
        if lC("AutoEquipBestItems") then
            pcall(function()
                lZ:FireServer("EquipBest")
            end)
        end
        if lC("AutoFuseItems") then
            pcall(mS)
        end
        task.wait(3)
    end
end
local function fn413()
    lY(Toggles.AntiGameplayPause.Value)
end
local function fn451(ab, ac)
    return string.format('<font color="%s">%s</font>', ac, ab)
end
local function onCopyPayPalLink()
    l_(l5, "Copied PayPal link")
end
local function fn458()
    local o9_1
    local o8_1
    local o7 = Worlds.GetTreadmills()
    if not o7 then
        return nil
    end
    o9_1, o8_1 = nil, -1
    for i, child in ipairs(o7:GetChildren()) do
        local attr = child:GetAttribute("SpeedMultiplier")
        local pa = typeof(attr) == "number" and attr > o8_1 and lB(child)
        if pa then
            o9_1, o8_1 = child, attr
        end
    end
    return o9_1
end
local function fn466()
    local pK = lT()
    if not pK then
        return
    end
    if os.clock() - mN < 5 then
        return
    end
    mN = os.clock()
    lQ:FireServer(pK.Id)
end
local function onInputChanged(fR)
    local UserInputType = fR.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        lE = tick()
    end
end
local function onCopyEthereumAddress()
    l_(mh, "Copied Ethereum address")
end
local function fn538()
    local pv = mm().Level
    local pD = if pv then 1 else 0
    local pB = 436 * pD + 3611 * (1 - pD)
    local pC = 860 * pD + 2521 * (1 - pD)
    if not ((pB * 3270 + pC * 1631 + pB * pC) % 16777213 == 3203340) then
        pv = 1
    end
    local pw = pv
    local pv_1 = Worlds.GetCurrent()
    local px = pv_1 and pv_1.Id
    local pv_2 = nil
    for k, v in pairs(Worlds.GetDefinitions()) do
        local px_1 = typeof(v.RequiredLevel) == "number" and pw >= v.RequiredLevel
        if px_1 then
            if Worlds.GetTeleportPlaceId(v.Id) then
                if not pv_2 or v.RequiredLevel > pv_2.RequiredLevel or v.RequiredLevel == pv_2.RequiredLevel and v.Id > pv_2.Id then
                    pv_2 = v
                end
            end
        end
    end
    if not pv_2 or pv_2.Id == px then
        return nil
    end
    return pv_2
end
local function fn551(et, eu, ev)
    if ev > 0 then
        if typeof(eu) == "table" then
            local max = math.max
            local floor = math.floor
            local qK_1 = tonumber(eu[tostring(ev)]) or 0
            return max(0, floor(qK_1))
        end
        return 0
    end
    local qI_2 = 0
    if typeof(eu) == "table" then
        for k, v in pairs(eu) do
            local max = math.max
            local floor = math.floor
            local qL = tonumber(v) or 0
            qI_2 += max(0, floor(qL))
        end
    end
    return math.max(0, et - qI_2)
end
local function onInputBegan()
    lE = tick()
end
local function onRscripts()
    l_(mj, "Copied Rscripts profile to clipboard")
end
local function onCopyLitecoinAddress()
    l_(mo, "Copied Litecoin address")
end
local function onCopyUSDTAddress()
    l_(me, "Copied USDT address")
end
local function fn693(dO, dP, dQ, dR)
    local ID
    local qb = mm().Wins or 0
    local WinCost
    ID, WinCost = nil, nil
    for i, v in ipairs(dQ) do
        local qe = not mA(dO, dP, v.ID) and typeof(v.WinCost) == "number" and qb >= v.WinCost
        if qe then
            if WinCost == nil or v.WinCost < WinCost then
                ID, WinCost = v.ID, v.WinCost
            end
        end
    end
    if ID then
        dR:FireServer("BuyWins", ID)
    end
end
local function onRenderStepped(gq)
    if Library.Unloaded then
        return
    end
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local rM_1 = lX()
        if rM_1 then
            rM_1.WalkSpeed = l4.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local rM_3 = mf()
        local rN = lX()
        lK = workspace.CurrentCamera or lK
        if rM_3 and rN and lK then
            rN.PlatformStand = true
            local rN_1 = Vector3.zero
            if mO:IsKeyDown(Enum.KeyCode.W) then
                rN_1 = rN_1 + lK.CFrame.LookVector
            end
            if mO:IsKeyDown(Enum.KeyCode.S) then
                rN_1 = rN_1 - lK.CFrame.LookVector
            end
            if mO:IsKeyDown(Enum.KeyCode.A) then
                rN_1 = rN_1 - lK.CFrame.RightVector
            end
            if mO:IsKeyDown(Enum.KeyCode.D) then
                rN_1 = rN_1 + lK.CFrame.RightVector
            end
            if mO:IsKeyDown(Enum.KeyCode.Space) then
                rN_1 = rN_1 + Vector3.new(0, 1, 0)
            end
            local rT = if mO:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if rT == 1 then
                rN_1 = rN_1 - Vector3.new(0, 1, 0)
            end
            rM_3.AssemblyLinearVelocity = Vector3.zero
            if rN_1.Magnitude > 0 then
                rM_3.CFrame = rM_3.CFrame + rN_1.Unit * l4.FlySpeed.Value * gq
            end
        end
    end
end
local function fn726()
    local r8 = {}
    for i, v in ipairs({ Toggles, l4 }) do
        for k, v in pairs(v) do
            local r9 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
            if r9 then
                local r9_1 = mW(k, v)
                if r9_1 then
                    r8[#r8 + 1] = r9_1
                end
            end
        end
    end
    table.sort(r8, function(g8, g9)
        if g8.type ~= g9.type then
            return g8.type < g9.type
        end
        return g8.idx < g9.idx
    end)
    return { objects = r8 }
end
local function fn757()
    local po_1
    local pn_1
    local pm = ms()
    if not pm then
        return
    end
    if Name == pm.Name then
        return
    end
    pn_1, po_1 = mF(pm)
    if not pn_1 then
        return
    end
    if not po_1 then
        po_1 = mb(pm, { "Part", "Touch" }, pn_1, 2)
        if po_1 then
            pn_1 = po_1.Position
        end
    end
    if not lC("AutoBestTreadmill") then
        return
    end
    local pp = mf()
    if not pp then
        return
    end
    local pq = mZ(pn_1, po_1)
    pp.AssemblyLinearVelocity = Vector3.zero
    pp.AssemblyAngularVelocity = Vector3.zero
    pp.CFrame = pq
    mX = nil
    Name = pm.Name
end
local function onExportConfigToClipboard()
    local sz_1
    local sy_1
    sy_1, sz_1 = pcall(HttpService.JSONEncode, HttpService, mI())
    if not sy_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local sy_2 = setclipboard or toclipboard
    local sy_3 = type(sy_2) ~= "function" or not pcall(sy_2, sz_1)
    if sy_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function onCharacterAdded()
    Name = nil
end
local function onCopyBitcoinAddress()
    l_(mk, "Copied Bitcoin address")
end
local function fn776(U, V)
    if setclipboard then
        setclipboard(U)
    elseif toclipboard then
        toclipboard(U)
    end
    Library:Notify(V)
end
local function worker3()
    while not Library.Unloaded do
        if lC("AutoBuyTrails") then
            pcall(mV, "Trails", "OwnedTrails", TrailConfigurations.Trails, TrailAction)
        end
        if lC("AutoBuySkins") then
            pcall(mV, "Auras", "OwnedAuras", AuraConfigurations.Auras, AuraAction)
        end
        if lC("AutoBuyShoes") then
            pcall(lP)
        end
        if lC("AutoEquipBestTrail") then
            pcall(l7, "Trails", "OwnedTrails", "EquippedTrail", TrailConfigurations.Trails, TrailAction, "SpeedBoost")
        end
        if lC("AutoEquipBestSkin") then
            pcall(l7, "Auras", "OwnedAuras", "EquippedAura", AuraConfigurations.Auras, AuraAction, "WinBoost")
        end
        task.wait(1)
    end
end
local function fn798()
    if not Toggles.WalkSpeedEnabled.Value then
        local rW = lX()
        if rW then
            rW.WalkSpeed = 16
        end
    end
end
local function onCopyJoinScript_JobID()
    local e2 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mC)
    l_(e2, "Copied join script to clipboard")
end
local function fn856()
    local pk_1
    local pj_1
    local pi = my()
    if not pi then
        return
    end
    pj_1, pk_1 = mF(pi)
    if not pj_1 then
        return
    end
    if not pk_1 then
        pk_1 = mb(pi, { "Touch", "Part" }, pj_1, 2.5)
        if pk_1 then
            pj_1 = pk_1.Position
        end
    end
    if not lC("AutoWin") then
        return
    end
    lU(mZ(pj_1, pk_1), false)
    RequestWin:FireServer(pi.Name)
end
local function fn877(b3)
    local oT = lD[b3.Name]
    if oT ~= nil then
        return oT
    end
    local GUI = b3:FindFirstChild("GUI")
    local oU = GUI and GUI:FindFirstChild("RebirthText", true)
    local oV = oU
    if oU then
        oU = oV:IsA("TextLabel")
    end
    if oU then
        local oU_1 = tonumber(oV.Text:match("(%d+)%s*Rebirth"))
        local Name = b3.Name
        local oW = oU_1
        local o_ = if oW then 1 else 0
        local oY = 1471 * o_ + 2168 * (1 - o_)
        local oZ = 204 * o_ + 314 * (1 - o_)
        if not ((oY * 2935 + oZ * 2826 + oY * oZ) % 16777213 == 5193973) then
            oW = false
        end
        lD[Name] = oW
    elseif GUI then
        lD[b3.Name] = 0
    end
    return lD[b3.Name]
end
local function fn878(aH, aI)
    local n0 = l4[aH]
    if n0 == nil or n0.Value == nil then
        return aI
    end
    return n0.Value
end
local function fn881()
    if not Toggles.Fly.Value then
        local rU = lX()
        if rU then
            rU.PlatformStand = false
        end
    end
end
local function fn882()
    local oK_1
    local oJ_1
    local oI = Worlds.GetGiveWins()
    if not oI then
        return nil
    end
    oK_1, oJ_1 = nil, -1
    for i, child in ipairs(oI:GetChildren()) do
        local attr = child:GetAttribute("WinAmount")
        local oL = typeof(attr) == "number" and child:GetAttribute("DoubleWinsProduct") ~= true
        if oL then
            if attr > oJ_1 then
                oK_1, oJ_1 = child, attr
            end
        end
    end
    return oK_1
end
local function onHeartbeat()
    if not mX then
        return
    end
    local n9 = mf()
    if not n9 then
        return
    end
    if mU and (n9.Position - mX.Position).Magnitude < 8 then
        return
    end
    n9.AssemblyLinearVelocity = Vector3.zero
    n9.AssemblyAngularVelocity = Vector3.zero
    n9.CFrame = mX
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            lY(true)
        end
    end
end
local function fn898(gU, gV)
    local Type = gV.Type
    if Type == "Toggle" then
        return { idx = gU, type = "Toggle", value = gV.Value == true }
    elseif Type == "Slider" then
        return { idx = gU, type = "Slider", value = tostring(gV.Value) }
    elseif Type == "Dropdown" then
        return { idx = gU, type = "Dropdown", multi = gV.Multi == true, value = gV.Value }
    elseif Type == "Input" then
        local r2 = gV.Value or ""
        return { idx = gU, type = "Input", text = tostring(r2) }
    elseif Type == "ColorPicker" then
        return { idx = gU, type = "ColorPicker", value = gV.Value:ToHex(), transparency = gV.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = gU,
            type = "KeyPicker",
            mode = gV.Mode,
            key = gV.Value,
            modifiers = gV.Modifiers,
            toggled = gV.Toggled
        }
    else
        return nil
    end
end
local function fn902(dw, dx, dy)
    local pZ = mm()[dx]
    local p_ = typeof(pZ) == "table" and pZ[dy] == true
    if p_ then
        return true
    end
    local pZ_1 = LocalPlayer:FindFirstChild(dw)
    local p__1 = pZ_1 ~= nil and pZ_1:FindFirstChild(dy) ~= nil
    return p__1
end
local function fn920(ae, af, ag)
    return string.format("<b>%s</b> %s %s", ae, lG("-", "#5a6070"), lG(af, ag))
end
local function fn923(eM)
    local DiscordGroup = eM:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lM })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lM })
end
local function fn924(bp, bq)
    local oi = bp.Y + 3.5
    local oj = bq and bq:IsA("BasePart")
    if oj then
        oi = bq.Position.Y + bq.Size.Y / 2 + 3.5
    end
    return CFrame.new(bp.X, oi, bp.Z)
end
local function fn942()
    local re_1
    local rd_1
    if identifyexecutor then
        re_1, rd_1 = identifyexecutor()
        local rf = re_1 ~= ""
        local rg = type(re_1) == "string" and rf
        if rg then
            local rf_1 = type(rd_1) == "string" and rd_1 ~= "" and re_1 .. " " .. rd_1
            lI = rf_1 or re_1
        end
    end
end
Shoes = nil
lB = nil
lC = nil
lD = nil
lE = nil
Items = nil
lG = nil
Worlds = nil
lI = nil
lJ = nil
lK = nil
lL = nil
lM = nil
Request = nil
lO = nil
lP = nil
lQ = nil
lR = nil
lS = nil
lT = nil
lU = nil
ItemShopRequest = nil
lX = nil
lY = nil
lZ = nil
l_ = nil
l0 = nil
l1 = nil
AuraAction = nil
l3 = nil
l4 = nil
l5 = nil
connection3 = nil
l7 = nil
TrailAction = nil
Toggles = nil
ma = nil
mb = nil
RequestWin = nil
SaveManager = nil
me = nil
mf = nil
mg = nil
mh = nil
mi = nil
mj = nil
mk = nil
ml = nil
mm = nil
local lW
mn = nil
mo = nil
connection = nil
connection2 = nil
Library = nil
ms = nil
mt = nil
mu = nil
LocalPlayer = nil
mw = nil
my = nil
Rebirth = nil
mA = nil
mC = nil
mD = nil
mE = nil
mF = nil
HttpService = nil
mH = nil
mI = nil
mJ = nil
mK = nil
Name = nil
VirtualUser = nil
mN = nil
mO = nil
AuraConfigurations = nil
mQ = nil
TrailConfigurations = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
mY = nil
mZ = nil
local CoreGui
local GuiService
local WorldsGroup
tb_4, mO, VirtualUser, HttpService, GuiService, CoreGui, LocalPlayer = nil, nil, nil, nil, nil, nil, nil
if (GuiService and not GuiService or (VirtualUser or not GuiService) or (not VirtualUser or not GuiService) and (VirtualUser or VirtualUser)) and (GuiService or VirtualUser or not VirtualUser and VirtualUser or (not VirtualUser or VirtualUser or not VirtualUser and GuiService)) and (VirtualUser and VirtualUser and (GuiService and GuiService) or (GuiService or GuiService or not VirtualUser and GuiService) or (VirtualUser or GuiService or (VirtualUser or not GuiService)) and ((GuiService or not GuiService) and (not GuiService and VirtualUser))) or not ((GuiService and not GuiService or (VirtualUser or not GuiService) or (not VirtualUser or not GuiService) and (VirtualUser or VirtualUser)) and (GuiService or VirtualUser or not VirtualUser and VirtualUser or (not VirtualUser or VirtualUser or not VirtualUser and GuiService)) and (VirtualUser and VirtualUser and (GuiService and GuiService) or (GuiService or GuiService or not VirtualUser and GuiService) or (VirtualUser or GuiService or (VirtualUser or not GuiService)) and ((GuiService or not GuiService) and (not GuiService and VirtualUser)))) then
    tb_4 = game:GetService("Players")
else
    game:GetService("Players")
end
local tb_15 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
mO = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
LocalPlayer = tb_4.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
mn, mj, RequestWin, TrailAction, AuraAction, lZ, ItemShopRequest, lQ, Request, lL, tb_4, Worlds, Items, Shoes, tb_18, TrailConfigurations, AuraConfigurations, Rebirth, mw, tb_25, Library, ThemeManager, SaveManager, Toggles, l4, mt, mo, mk, mh, me, ma, l5, l0, tb_20, lJ, l_, lM, lG, mT, lC, mD, mm, mf, lX = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if ((tb_18 or not SaveManager) and (Shoes and not tb_18) or (tb_18 or not lQ or not Shoes and not Shoes)) and (lQ or not Shoes or (not tb_18 or SaveManager) or (SaveManager or not Shoes or not tb_18 and tb_18)) or not (((tb_18 or not SaveManager) and (Shoes and not tb_18) or (tb_18 or not lQ or not Shoes and not Shoes)) and (lQ or not Shoes or (not tb_18 or SaveManager) or (SaveManager or not Shoes or not tb_18 and tb_18))) then
    tb_13 = "+1 Kitten Keyboard Escape"
    mn = "https://discord.gg/ehKVq7pf7v"
    mj = "https://rscripts.net/@Ouroboros"
else
    mj = "+1 Kitten Keyboard Escape"
    tb_13 = "https://discord.gg/ehKVq7pf7v"
    mn = "https://rscripts.net/@Ouroboros"
end
local tb_23 = tb_15:WaitForChild("Events")
RequestWin = tb_23:WaitForChild("WinButtons"):WaitForChild("RequestWin")
TrailAction = tb_23:WaitForChild("TrailAction")
AuraAction = tb_23:WaitForChild("AuraAction")
if (mf or mf or (not mT or not TrailAction) or (not mT or not lJ or (not mT or TrailAction)) or ((not TrailAction or mf) and (not mT or mT) or (mf and TrailAction or mT and TrailAction))) and ((mo and TrailAction or false and not TrailAction or (lJ and TrailAction or (mo or lJ))) and ((not TrailAction or not mT or (not mf or false)) and (not mT and mo or mo and not lJ))) and not ((mf or mf or (not mT or not TrailAction) or (not mT or not lJ or (not mT or TrailAction)) or ((not TrailAction or mf) and (not mT or mT) or (mf and TrailAction or mT and TrailAction))) and ((mo and TrailAction or false and not TrailAction or (lJ and TrailAction or (mo or lJ))) and ((not TrailAction or not mT or (not mf or false)) and (not mT and mo or mo and not lJ)))) then
    tb_23 = ItemShopRequest:WaitForChild("ItemAction")
    lZ = ItemShopRequest:WaitForChild("ItemShopRequest")
else
    lZ = tb_23:WaitForChild("ItemAction")
    ItemShopRequest = tb_23:WaitForChild("ItemShopRequest")
end
if ((not lC and not Rebirth and (not lC and not Worlds) or (not lC or tb_25) and (not tb_4 or tb_25)) and (not tb_25 or not ThemeManager or (lC or not ThemeManager) or not Worlds and not tb_25 and (Worlds or not ThemeManager)) or not ThemeManager and not Rebirth and (Worlds or not tb_4) and (tb_25 and Rebirth or not ThemeManager and not Worlds) and ((tb_25 or not Worlds) and (not tb_25 or Rebirth) or (ThemeManager or not Worlds or (lC or Worlds)))) and not ((not lC and not Rebirth and (not lC and not Worlds) or (not lC or tb_25) and (not tb_4 or tb_25)) and (not tb_25 or not ThemeManager or (lC or not ThemeManager) or not Worlds and not tb_25 and (Worlds or not ThemeManager)) or not ThemeManager and not Rebirth and (Worlds or not tb_4) and (tb_25 and Rebirth or not ThemeManager and not Worlds) and ((tb_25 or not Worlds) and (not tb_25 or Rebirth) or (ThemeManager or not Worlds or (lC or Worlds)))) then
    lL = Request:WaitForChild("WorldTravelRequest")
    lQ = Request:WaitForChild("Rebirth"):WaitForChild("Request")
    Request:WaitForChild("Shoe"):WaitForChild("Unlock")
else
    lQ = tb_23:WaitForChild("WorldTravelRequest")
    Request = tb_23:WaitForChild("Rebirth"):WaitForChild("Request")
    lL = tb_23:WaitForChild("Shoe"):WaitForChild("Unlock")
end
tb_4 = tb_15:WaitForChild("Config")
Worlds = require(tb_4:WaitForChild("Worlds"))
Items = require(tb_4:WaitForChild("Items"))
Shoes = require(tb_4:WaitForChild("Shoes"))
tb_18 = tb_15:WaitForChild("Modules")
TrailConfigurations = require(tb_18:WaitForChild("TrailConfigurations"))
AuraConfigurations = require(tb_18:WaitForChild("AuraConfigurations"))
local tb_9 = require(tb_18:WaitForChild("ProductConfigurations"))
local tb_7 = tb_15:WaitForChild("Utility")
local tb_17 = require(tb_7:WaitForChild("PlayerData"))
Rebirth = require(tb_7:WaitForChild("Rebirth"))
mw = tb_17.GetLocalPlayerReplicaWait()
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn398)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
l4 = Library.Options
l_ = fn776
lM = fn372
lG = fn451
mT = fn920
local tb_14 = "#7fd47f"
local tb_22 = "#6ec1ff"
mt = "#e8a34d"
local tb_3 = "#8b93a3"
mo = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
mk = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
mh = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
if (Worlds and false or false or (lG or Worlds or (tb_20 or Worlds))) and not (Worlds and false or false or (lG or Worlds or (tb_20 or Worlds))) then
    l5 = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    me = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    ma = "https://paypal.me/TheTruckerGOD"
else
    me = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    ma = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    l5 = "https://paypal.me/TheTruckerGOD"
end
l0 = "https://venmo.com/u/miserablemusic"
local tb_2 = "#345d9d"
local tb_12 = "#f7931a"
tb_20 = "#627eea"
local tb_1 = "#26a17b"
local tb_10 = "#14f195"
local tb_19 = "#0070ba"
local tb_28 = "#008cff"
lC = fns.fn141
mD = fn878
mm = fns.fn150
mf = fn325
lX = fns.fn34
lJ = {}
for k, v in pairs(tb_9.TreadmillProducts) do
    if typeof(v.ModelName) == "string" then
        lJ[v.ModelName] = k
    end
end
lD, mX, mU, mQ, mN, Name, connection, tb_25, mi, lU, mZ, mF, mb, my, l3, lB, ms, lR, mJ, lT, mu, mg, lP, mA, l1, mV, l7, mH, lO, mS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lD = {}
mX = nil
mU = false
mQ = 0
mN = 0
Name = nil
connection = RunService.Heartbeat:Connect(onHeartbeat)
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
mi = function(bc)
    if typeof(bc) ~= "Vector3" then
        return
    end
    mQ = os.clock()
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(bc)
    end)
end
if mU and false and (mU and not mU) and (mU and 19 or mU and not mU) or (mU and not mU) and 19 or (not mU and false and false or mU and 19 and 19 or (not mU and mU and (mU and 19) or 19)) or not (mU and false and (mU and not mU) and (mU and 19 or mU and not mU) or (mU and not mU) and 19 or (not mU and false and false or mU and 19 and 19 or (not mU and mU and (mU and 19) or 19))) then
    lU = fns.fn175
else
    my = fns.fn175
end
mZ = fn924
mF = function(bu)
    local Touch = bu:FindFirstChild("Touch")
    local om_2
    local on = Touch and Touch:IsA("BasePart")
    local on_2
    if on then
        return Touch.Position, Touch
    end
    local Part = bu:FindFirstChild("Part")
    local on_1 = Part and Part:IsA("BasePart")
    if on_1 then
        return Part.Position, Part
    end
    om_2, on_2 = pcall(function()
        return bu:GetPivot().Position
    end)
    if om_2 and on_2 then
        return on_2, nil
    end
    return nil, nil
end
mb = fn346
my = fn882
l3 = fn877
lB = fns.fn187
ms = fn458
lR = fn856
mJ = fn757
lT = fn538
mu = fn466
if (connection or not Name or (not l7 or l7)) and (not tb_25 and not tb_25 or (Name or not tb_25)) and not ((connection or not Name or (not l7 or l7)) and (not tb_25 and not tb_25 or (Name or not tb_25))) then
    lT = fns.fn158
else
    mg = fns.fn158
end
lP = fns.fn27
mA = fn902
l1 = fns.fn153
mV = fn693
l7 = fns.fn167
mH = fn340
lO = fn551
if (lO and not mF or (not lO or lO)) and (my and my and (mF or not mF)) and (not lO and my and (not lO or lO) and (not lO and mF or (not my or mF))) or not ((lO and not mF or (not lO or lO)) and (my and my and (mF or not mF)) and (not lO and my and (not lO or lO) and (not lO and mF or (not my or mF)))) then
    mS = fn312
else
    mF = fn312
end
tb_23 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = mn, Copyable = true }, "|", tb_13 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
Library.ShowCustomCursor = false
tb_25 = {
    Info = tb_23:AddTab("Info", "info"),
    Main = tb_23:AddTab("Main", "gamepad-2"),
    Shop = tb_23:AddTab("Shop", "shopping-cart"),
    Player = tb_23:AddTab("Player", "person-standing"),
    Settings = tb_23:AddTab("Settings", "settings")
}
tb_15 = fn923
for k, v in tb_25 do
    tb_15(v)
end
lI, tb_23, tb_7, mK, mC, tb_17 = nil, nil, nil, nil, nil, nil
tb_4 = 8
repeat
    tb_15 = (tb_4 * 1 + 1) % 3 + 1
    if tb_15 <= 2 then
        if tb_15 <= 1 then
            local tR = bit32.rrotate(bit32.bxor(bit32.lrotate(tb_4, 9), string.byte(tostring(tb_17))), 15)
            if bit32.bxor(bit32.lrotate(bit32.bxor(tR, 2651077598), 16), 1004445188) ~= bit32.lrotate(tR, 16) then
                mt = "Unknown"
                pcall(fn942)
                mT = tb_13.Info:AddLeftGroupbox("Account", "circle-user")
                mT:AddLabel(tb_22("User", tb_23.Name, LocalPlayer), true)
                mT:AddLabel(tb_22("Status", "Keyless", LocalPlayer), true)
                mT:AddLabel(tb_22("Executor", mt, LocalPlayer), true)
                lG = tb_13.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                lG:AddLabel(tb_7(lI .. " [" .. tostring(game.PlaceId) .. "]", tb_25), true)
                lG:AddLabel(tb_22("Place ID", tostring(game.PlaceId), tb_25), true)
                tb_14 = lG:AddLabel(tb_22("Session time", "0s", mK), true)
            else
                lI = "Unknown"
                pcall(fn942)
                tb_23 = tb_25.Info:AddLeftGroupbox("Account", "circle-user")
                tb_23:AddLabel(mT("User", LocalPlayer.Name, tb_14), true)
                tb_23:AddLabel(mT("Status", "Keyless", tb_14), true)
                tb_23:AddLabel(mT("Executor", lI, tb_14), true)
                tb_7 = tb_25.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                tb_7:AddLabel(lG(tb_13 .. " [" .. tostring(game.PlaceId) .. "]", tb_22), true)
                tb_7:AddLabel(mT("Place ID", tostring(game.PlaceId), tb_22), true)
                mK = tb_7:AddLabel(mT("Session time", "0s", mt), true)
            end
            tb_4 = (tb_4 + 13) % 24
        else
            tb_15 = {
                "rpejkcss",
                "vdjppa",
                "xdjhpwyik",
                "waaibkcuz",
                "wbfz",
                "rylhlxb",
                "lrsfnoucfq",
                "kdovpb",
                "svuqvwxlfy"
            }
            local tN = tb_4
            tb_27 = tb_15[tN % 9 + 1]
            if tb_27:len() >= tb_27:gsub("(.)", "%1%1", tN % 3 % 2 + 1):len() then
                mK = tostring(game.JobId)
            else
                mC = tostring(game.JobId)
            end
            tb_4 = (tb_4 + 7) % 24
        end
    else
        if (tb_4 * 3 + 6) * 5 % 4 == ((tb_4 * 3 + 6) * 5 + 14) % 4 then
            mC = #tb_17 > 18
        else
            tb_17 = #mC > 18
        end
        tb_4 = (tb_4 + 4) % 24
    end
until (tb_4 * 23 + 7) % 24 == 23
if tb_17 then
    tb_4 = 4
    repeat
        tb_23 = (vector.create((tb_4 * 1 + 1) % 11 + 1, (tb_4 * 8 + 5) % 13 + 1, (tb_4 * 5 + 11) % 17 + 1))
        tb_15 = (vector.create((tb_4 * 7 + 1) % 11 + 1, (tb_4 * 8 + 10) % 13 + 1, (tb_4 * 1 + 12) % 17 + 1))
        tb_27 = (vector.create((tb_4 * 3 + 7) % 11 + 1, (tb_4 * 3 + 12) % 13 + 1, (tb_4 * 7 + 6) % 17 + 1))
        if vector.dot(vector.cross(tb_23, tb_15), tb_27) == vector.dot(vector.cross(tb_15, tb_27), tb_23) then
            tb_17 = string.sub(mC, 1, 18) .. "..."
        else
            mC = string.sub(tb_17, 1, 18) .. "..."
        end
        tb_4 = (tb_4 + 3) % 8
    until (tb_4 * 5 + 0) % 8 == 3
end
tb_4 = tb_17 or mC
ml, tb_27, WorldsGroup, lE, mY, connection2, connection3, lK, mE, lY, lW, mW, mI, lS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local nu = tb_4
tb_7:AddLabel(mT("Server", nu, tb_3), true)
tb_7:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
ml = os.clock()
task.spawn(worker)
local ScriptsGroup = tb_25.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(lG("Included in this hub", tb_3), true)
ScriptsGroup:AddLabel(lG(tb_13, tb_22), true)
tb_9 = tb_25.Info:AddRightGroupbox("Features", "list")
if WorldsGroup and not ScriptsGroup and (WorldsGroup or not WorldsGroup) and (mE and false or (ScriptsGroup or not ScriptsGroup)) and not (WorldsGroup and not ScriptsGroup and (WorldsGroup or not WorldsGroup) and (mE and false or (ScriptsGroup or not ScriptsGroup))) then
    tb_27:AddLabel(tb_22("Auto Farm", lG), true)
    tb_27:AddLabel(tb_22("Auto Treadmill", tb_3), true)
    tb_27:AddLabel(tb_22("Auto Rebirth", tb_9), true)
    tb_27:AddLabel(tb_22("Auto Buy", tb_9), true)
    tb_27:AddLabel(tb_22("Auto Equip", lG), true)
    tb_27:AddLabel(tb_22("Auto Fuse", tb_3), true)
    tb_27:AddLabel(tb_22("World Teleport", tb_25), true)
    mt = tb_14.Info:AddRightGroupbox("Socials", "link")
else
    tb_9:AddLabel(lG("Auto Farm", tb_22), true)
    tb_9:AddLabel(lG("Auto Treadmill", mt), true)
    tb_9:AddLabel(lG("Auto Rebirth", tb_14), true)
    tb_9:AddLabel(lG("Auto Buy", tb_14), true)
    tb_9:AddLabel(lG("Auto Equip", tb_22), true)
    tb_9:AddLabel(lG("Auto Fuse", mt), true)
    tb_9:AddLabel(lG("World Teleport", tb_3), true)
    tb_27 = tb_25.Info:AddRightGroupbox("Socials", "link")
end
tb_27:AddButton({ Text = "Discord", Func = lM })
tb_27:AddButton({ Text = "Rscripts", Func = onRscripts })
tb_23 = tb_25.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
tb_23:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
tb_23:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
tb_23:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
tb_23:AddButton({ Text = "Copy Discord Invite", Func = lM })
local DonationsGroup = tb_25.Info:AddRightGroupbox("Donations", "heart")
DonationsGroup:AddLabel(lG("All donations are optional but appreciated.", mt), true)
DonationsGroup:AddLabel(lG("If you donate you get a special role, just PING after you donate.", tb_14), true)
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lG("LTC / Litecoin", tb_2), true)
DonationsGroup:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
DonationsGroup:AddLabel(lG("BTC / Bitcoin", tb_12), true)
DonationsGroup:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
DonationsGroup:AddLabel(lG("ETH / Ethereum", tb_20), true)
DonationsGroup:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
DonationsGroup:AddLabel(lG("USDT", tb_1), true)
DonationsGroup:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
DonationsGroup:AddLabel(lG("Solana", tb_10), true)
DonationsGroup:AddButton({ Text = "Copy Solana Address", Func = fns.onCopySolanaAddress })
DonationsGroup:AddLabel(lG("PayPal", tb_19), true)
DonationsGroup:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
DonationsGroup:AddLabel(lG("Venmo", tb_28), true)
DonationsGroup:AddButton({ Text = "Copy Venmo Link", Func = fns.onCopyVenmoLink })
DonationsGroup:AddDivider()
DonationsGroup:AddLabel(lG("Don't have any of the listed currencies but still wanna donate?", tb_3), true)
DonationsGroup:AddLabel(lG("DM me and we'll work something out.", tb_22), true)
local FaqGroup = tb_25.Info:AddRightGroupbox("FAQ", "circle-help")
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
local FarmGroup = tb_25.Main:AddLeftGroupbox("Farm", "trophy")
FarmGroup:AddToggle("AutoWin", { Text = "Auto Win", Default = false })
FarmGroup:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.55, Min = 0.3, Max = 3, Rounding = 2 })
FarmGroup:AddToggle("AutoBestTreadmill", { Text = "Auto Best Treadmill", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
WorldsGroup = tb_25.Main:AddRightGroupbox("Worlds", "globe")
WorldsGroup:AddToggle("AutoBestWorld", { Text = "Teleport to Best World", Default = false })
local BuyGroup = tb_25.Shop:AddLeftGroupbox("Buy", "shopping-bag")
BuyGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
BuyGroup:AddToggle("AutoBuySkins", { Text = "Auto Buy Skins", Default = false })
BuyGroup:AddToggle("AutoBuyItems", { Text = "Auto Buy Items", Default = false })
BuyGroup:AddToggle("AutoBuyShoes", { Text = "Auto Buy Best Shoe", Default = false })
local EquipGroup = tb_25.Shop:AddRightGroupbox("Equip", "sparkles")
EquipGroup:AddToggle("AutoEquipBestTrail", { Text = "Auto Equip Best Trail", Default = false })
EquipGroup:AddToggle("AutoEquipBestSkin", { Text = "Auto Equip Best Skin", Default = false })
EquipGroup:AddToggle("AutoEquipBestItems", { Text = "Auto Equip Best Items", Default = false })
local FuseGroup = tb_25.Shop:AddLeftGroupbox("Fuse", "combine")
FuseGroup:AddToggle("AutoFuseItems", { Text = "Auto Fuse Items", Default = false })
tb_18 = tb_25.Player:AddLeftGroupbox("Movement", "footprints")
tb_18:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
tb_18:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
tb_18:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
tb_18:AddToggle("NoClip", { Text = "NoClip", Default = false })
tb_18:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
tb_17 = tb_25.Player:AddRightGroupbox("Fly", "feather")
tb_17:AddToggle("Fly", { Text = "Fly", Default = false })
tb_17:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
tb_15 = tb_25.Settings:AddLeftGroupbox("Menu", "wrench")
tb_15:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
lE = tick()
mY = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local rr = v
        pcall(function()
            rr:Disable()
        end)
    end
end)
mE = fn399
connection2 = mO.InputBegan:Connect(onInputBegan)
connection3 = mO.InputChanged:Connect(onInputChanged)
if tb_18 and not FuseGroup and (connection2 or not connection2) or (not connection2 or not lK or not tb_18 and lK) or ((not connection2 or lK) and (lK and not connection2) or (not FuseGroup and nu or (not tb_18 or not nu))) or not (tb_18 and not FuseGroup and (connection2 or not connection2) or (not connection2 or not lK or not tb_18 and lK) or ((not connection2 or lK) and (lK and not connection2) or (not FuseGroup and nu or (not tb_18 or not nu)))) then
    tb_15:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    tb_15:AddButton("Unload", fns.onUnload)
    Library.ToggleKeybind = l4.MenuKeybind
    lY = function(fY)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not fY)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not fY
            end
        end)
        if not fY then
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
    Toggles.AntiGameplayPause:OnChanged(fn413)
    task.spawn(antiGameplayPauseLoop)
    RunService.Stepped:Connect(fns.onStepped)
    mO.JumpRequest:Connect(fns.onJumpRequest)
    lK = workspace.CurrentCamera
else
    lK:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    lK:AddButton("Unload", fns.onUnload)
    tb_15.ToggleKeybind = Toggles.MenuKeybind
    l4 = function(fY)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not fY)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not fY
            end
        end)
        if not fY then
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
    Library.AntiGameplayPause:OnChanged(fn413)
    task.spawn(antiGameplayPauseLoop)
    lY.Stepped:Connect(fns.onStepped)
    RunService.JumpRequest:Connect(fns.onJumpRequest)
    mO = workspace.CurrentCamera
end
RunService.RenderStepped:Connect(onRenderStepped)
Toggles.Fly:OnChanged(fn881)
Toggles.WalkSpeedEnabled:OnChanged(fn798)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/Plus1KittenKeyboardEscape")
local nr = SaveManager:BuildConfigSection(tb_25.Settings)
lW = fns.fn144
mW = fn898
mI = fn726
lS = function(hb)
    local ss
    ss = nil
    local st = type(hb) ~= "table" or type(hb.idx) ~= "string" or type(hb.type) ~= "string" or SaveManager.Ignore[hb.idx]
    if st then
        return false
    end
    ss = lW(hb.type, hb.idx)
    if not ss then
        return false
    end
    local st_1 = pcall(function()
        if hb.type == "Input" then
            if type(hb.text) ~= "string" then
                return
            end
            ss:SetValue(hb.text)
        elseif hb.type == "ColorPicker" then
            ss:SetValueRGB(Color3.fromHex(hb.value), hb.transparency)
        elseif hb.type == "KeyPicker" then
            ss:SetValue({ hb.key, hb.mode, hb.modifiers })
            if hb.mode == "Toggle" and hb.toggled ~= nil then
                ss.Toggled = hb.toggled
                ss:Update()
            end
        else
            ss:SetValue(hb.value)
        end
    end)
    return st_1
end
do
    nr:AddDivider()
    nr:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    nr:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
    nr:AddButton("Import Config from Clipboard Text", fns.onImportConfigFromClipboardTex)
    ThemeManager:ApplyToTab(tb_25.Settings)
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    task.spawn(worker5)
    task.spawn(fns.worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    task.spawn(antiAfkLoop)
    Library:OnUnload(fns.fn16)
    Library:Notify(tb_13 .. " loaded")
end
