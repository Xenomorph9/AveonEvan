local fns = {}
local mT
local nC
local nj
local n0
local mZ
local nI
local mG
local SeedRollMessage
local getBackyardCellUpgradeCost
local PlayerUpgradeMessage
local getCropUpgradeCost
local mM
local ClientPlayerUpgradeState
local nU
local mS
local nB
local ni
local n_
local ClientPlotState
local getPlayerUpgradeCost
local no
local n5
local nN
local mL
local nu
local m9
local Workspace
local mR
local nA
local nh
local VirtualUser
local mX
local nG
local Library
local nn
local n4
local Label
local mK
local nt
local m8
local nS
local mQ
local connection
local ng
local nY
local mW
local nF
local getPlayerUpgradeLevel
local seedRollMessages
local getBackyardCellMaxLevel
local playerUpgradeMessages
local nL
local mJ
local ns
local m7
local nR
local mP
local clientPlayerMoney
local nf
local nX
local mV
local nE
local mC
local nl
local Toggles
local m0
local nK
local mI
local nr
local m6
local nQ
local mO
local nx
local Options
local mU
local ClientSeedRollState
local mB
local connection2
local m_
local nJ
local mH
local nq
local m5
local nP
local mN
local nd
local cropCatalog
function fns.fn1(eY)
    local s2 = nE(eY)
    if #s2 == 0 then
        return false
    end
    local s3
    for k, v in nQ() do
        if mI("PlantCrops", v.cropId) then
            s3 = v
            break
        end
    end
    if not s3 then
        return false
    end
    local s4 = s2[1]
    if s4.cframe then
        ni(s4.cframe, 3)
        mC(0.12)
    end
    m6(s3.tool)
    task.wait(0.08)
    seedRollMessages.server:emit(SeedRollMessage.SeedPacketPlantRequested, { plotId = eY.plotId, cellId = s4.cellId, inventoryItemUid = s3.inventoryItemUid })
    return true
end
function fns.worker3()
    while not Library.Unloaded do
        pcall(n4)
        task.wait(nX("CycleDelay", 0.2))
    end
end
function fns.fn41(bN)
    local qh = bN or nX("ZoneDwell", 0.4)
    task.wait(qh)
end
function fns.worker()
    local vH_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local vG = math.floor(os.clock() - n5)
        if vG < 60 then
            vH_1 = vG .. "s"
        elseif vG < 3600 then
            vH_1 = string.format("%dm %ds", vG // 60, vG % 60)
        else
            vH_1 = string.format("%dh %dm", vG // 3600, vG % 3600 // 60)
        end
        Label:SetText(ng("Session time", vH_1, mT))
    end
end
function fns.fn99(dY)
    local r2 = dY and dY.drones and dY.drones.farmer and typeof(dY.drones.farmer.pickUpCFrame) == "CFrame"
    if r2 then
        return dY.drones.farmer.pickUpCFrame
    end
    local r2_1 = dY and nL(dY.plotId)
    if not r2_1 then
        return nil
    end
    local DronePickUp = r2_1:FindFirstChild("DronePickUp")
    local r4 = DronePickUp and DronePickUp:IsA("BasePart")
    if r4 then
        return DronePickUp.CFrame
    end
    local DroneDropOffStack = r2_1:FindFirstChild("DroneDropOffStack")
    local r3_1 = DroneDropOffStack and DroneDropOffStack:IsA("BasePart")
    if r3_1 then
        return DroneDropOffStack.CFrame
    end
    return nil
end
function fns.fn103(aF, aG)
    if setclipboard then
        setclipboard(aF)
    elseif toclipboard then
        toclipboard(aF)
    end
    Library:Notify(aG)
end
function fns.fn104(eH)
    local sR = ClientSeedRollState.getRoll()
    if not sR or not eH or sR.plotId ~= eH.plotId or not sR.actionable then
        return false
    end
    local sS_1 = n_(sR, false)
    if not sS_1 then
        return false
    end
    seedRollMessages.server:emit(SeedRollMessage.SeedOfferPurchaseRequested, { plotId = sR.plotId, rollId = sR.rollId, offerId = sS_1.offerId })
    return true
end
function fns.fn117()
    local p_ = nS()
    local p0 = p_ and p_:FindFirstChild("HumanoidRootPart")
    return p0
end
function fns.fn144()
    local p5 = nS()
    local p6 = p5 and p5:FindFirstChildOfClass("Humanoid")
    return p6
end
function fns.fn149(a8)
    local pE = Options[a8]
    return pE and pE.Value
end
function fns.fn171(a2, a3)
    local pB = Options[a2]
    local pC = pB and tonumber(pB.Value)
    return pC or a3
end
function fns.fn187()
    connection:Disconnect()
    connection2:Disconnect()
end
function fns.fn188(h0)
    local vq = h0 and type(h0.customerCashSlots) == "table"
    if vq then
        mP("customerCash", h0.customerCashSlots)
    end
end
function fns.fn207(ix)
    local DiscordGroup = ix:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nA })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nA })
end
function fns.fn226(dK)
    local rO = dK and type(dK.customerCashSlots) == "table"
    if rO then
        for k, v in dK.customerCashSlots do
            local rO_1 = v.payload and v.payload.value
            if rO_1 == nil or rO_1 > 0 then
                return true
            end
        end
    end
    for k, v in mV.customerCash do
        local rO_3 = v.payload and v.payload.value
        if rO_3 == nil or rO_3 > 0 then
            return true
        end
    end
    return false
end
function fns.fn235(c8)
    local rn = not c8
    local ro = {}
    if not rn then
        rn = not c8.plantedBackyardCellsById
    end
    if not rn then
        rn = not c8.backyardCellsById
    end
    if rn then
        return ro
    end
    for k in c8.plantedBackyardCellsById do
        local rn_1 = c8.backyardCellsById[k]
        if rn_1 then
            table.insert(ro, { cellId = k, cframe = rn_1.cframe })
        end
    end
    table.sort(ro, function(dd, de)
        return mL(dd.cellId, de.cellId)
    end)
    return ro
end
function fns.onUnload()
    Library:Unload()
end
local function fn269(cA, cB)
    local qP = tonumber(string.match(cA, "%d+")) or 0
    local qP_1 = tonumber(string.match(cB, "%d+")) or 0
    return qP < qP_1
end
local function fn297(hL)
    local vf = nd()
    if not vf then
        return false
    end
    local vg = nt()
    for k, v in mZ() do
        local vh = getPlayerUpgradeLevel(vf, v)
        local vi = getPlayerUpgradeCost(v, vh)
        if vi ~= nil and vi <= vg then
            playerUpgradeMessages.server:emit(PlayerUpgradeMessage.PurchaseRequested, { plotId = hL.plotId, upgradeId = v })
            return true
        end
    end
    return false
end
local function fn298()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    mK = tick()
end
local function onCopyJoinScript_JobID()
    local iO = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mW)
    nR(iO, "Copied join script to clipboard")
end
local function fn310(hs)
    local uZ = nB(hs)
    if not uZ then
        return false
    end
    ni(uZ, 2)
    mC(nX("ZoneDwell", 0.4) + 0.1)
    return true
end
local function fn321(ah)
    local o6 = not ah
    local pa = if o6 then 1 else 0
    local o8 = 1813 * pa + 1324 * (1 - pa)
    local o9 = 3340 * pa + 3660 * (1 - pa)
    if not ((o8 * 2817 + o9 * 2329 + o8 * o9) % 16777213 == 2164288) then
        o6 = not ah.stackKind
    end
    if o6 then
        return
    end
    local o6_1 = mV[ah.stackKind]
    if not o6_1 then
        o6_1 = {}
        mV[ah.stackKind] = o6_1
    end
    if type(ah.slots) == "table" then
        for k, v in ah.slots do
            table.insert(o6_1, v)
        end
    end
end
local function fn332()
    return ClientPlotState.get()
end
local function fn340(bd)
    local pK = Options[bd]
    return pK and pK.Value or {}
end
local function fn347(aY)
    local py = Toggles[aY]
    return py ~= nil and py.Value == true
end
local function fn350()
    local qn_1
    local qm_1
    qm_1, qn_1 = pcall(clientPlayerMoney)
    local qo = qm_1 and type(qn_1) == "number"
    if qo then
        return qn_1
    end
    return 0
end
local function fn395()
    local vC_1
    local vB_1
    if identifyexecutor then
        vC_1, vB_1 = identifyexecutor()
        local vD = vC_1 ~= ""
        local vE = type(vC_1) == "string" and vD
        if vE then
            local vD_1 = type(vB_1) == "string" and vB_1 ~= "" and vC_1 .. " " .. vB_1
            no = vD_1 or vC_1
        end
    end
end
local function fn396(an)
    if not an or not an.stackKind then
        return
    end
    local ph_1 = mV[an.stackKind]
    local pi = not ph_1 or type(an.slots) ~= "table"
    if pi then
        return
    end
    local pi_1 = {}
    for k, v in an.slots do
        pi_1[v.stackIndex] = true
    end
    local pj = {}
    for k, v in ph_1 do
        if not pi_1[v.stackIndex] then
            table.insert(pj, v)
        end
    end
    mV[an.stackKind] = pj
end
local function fn419(g7)
    local uG = not g7.customer or typeof(g7.customer.registerCFrame) ~= "CFrame"
    if uG then
        return false
    end
    ni(g7.customer.registerCFrame, 2)
    mC()
    return true
end
local function fn451(ey)
    if not ey or not ey.plotId then
        return false
    end
    local sK_1 = mN(ey.plotId)
    if not sK_1 then
        return false
    end
    local Parent = sK_1.Parent
    local sM = Parent and Parent:IsA("BasePart")
    if sM then
        ni(Parent.CFrame, 2)
        mC(0.15)
    end
    m5(sK_1)
    return true
end
local function fn452(eQ)
    if not mG("AutoSkipUnaffordable") then
        return false
    end
    local sX = ClientSeedRollState.getRoll()
    local sY = not sX or not eQ
    local s1 = if sY then 1 else 0
    local s_ = 4030 * s1 + 2911 * (1 - s1)
    local s0 = 641 * s1 + 693 * (1 - s1)
    if not ((s_ * 1593 + s0 * 3620 + s_ * s0) % 16777213 == 11323440) then
        sY = sX.plotId ~= eQ.plotId
    end
    if not sY then
        sY = not sX.actionable
    end
    if sY then
        return false
    end
    if not sX.offers or #sX.offers == 0 then
        return false
    elseif n_(sX, false) then
        return false
    else
        local s1_1 = if n_(sX, true) then 1 else 0
        if s1_1 == 1 then
            return true
        end
        return false
    end
end
local function onInputChanged(jn)
    local UserInputType = jn.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mS = tick()
    end
end
local function fn510(cv)
    local qL = nu()
    if not qL or not cv then
        return false
    elseif cv.Parent == nS() then
        return true
    else
        qL:EquipTool(cv)
        return true
    end
end
local function fn559(bm, bn)
    local pV = nh(bm)
    local pZ = if not m0(pV) then 1 else 0
    if pZ == 1 then
        return true
    end
    return pV[bn] == true
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if mG("AntiAfk") then
            local vV = tick() - mS
            local vW = tick() - mK
            if vV >= 300 and vW >= 60 then
                pcall(n0)
            else
                if vV < 300 and vW >= 300 then
                    pcall(n0)
                end
            end
        end
    end
end
local function onInputBegan()
    mS = tick()
end
local function fn630(di)
    local ru = di
    local rv = {}
    if ru then
        ru = type(di.customerCashSlots) == "table"
    end
    if ru then
        for k, v in di.customerCashSlots do
            local ru_1 = v.payload and v.payload.value
            local ru_2 = typeof(v.landingCFrame) == "CFrame"
            if ru_2 then
                ru_2 = ru_1 == nil or ru_1 > 0
            end
            if ru_2 then
                table.insert(rv, v.landingCFrame)
            end
        end
    end
    for k, v in mV.customerCash do
        local ru_3 = v.payload and v.payload.value
        local ru_4 = typeof(v.landingCFrame) == "CFrame"
        if ru_4 then
            ru_4 = ru_3 == nil or ru_3 > 0
        end
        if ru_4 then
            table.insert(rv, v.landingCFrame)
        end
    end
    if #rv == 0 and di and di.customer then
        if typeof(di.customer.cashCFrame) == "CFrame" then
            table.insert(rv, di.customer.cashCFrame)
        end
        if typeof(di.customer.withdrawalCFrame) == "CFrame" then
            table.insert(rv, di.customer.withdrawalCFrame)
        end
    end
    local ru_6 = di and nL(di.plotId)
    if ru_6 then
        local Earned_Cash = ru_6:FindFirstChild("Earned Cash")
        local rx_3 = Earned_Cash and Earned_Cash:IsA("BasePart")
        if rx_3 then
            table.insert(rv, Earned_Cash.CFrame)
        end
        local Cash = ru_6:FindFirstChild("Cash")
        local rw_4 = Cash and Cash:IsA("BasePart")
        if rw_4 then
            table.insert(rv, Cash.CFrame)
        end
    end
    return rv
end
local function fn631()
    nR(nG, "Copied Discord invite to clipboard")
end
local function fn639(cF)
    local qT = cF
    local qU = 0
    if qT then
        qT = cF.ownedBackyardCellIds
    end
    if qT then
        for k in cF.ownedBackyardCellIds do
            qU += 1
        end
    end
    return qU
end
local function fn640(gR)
    local ut = nF(gR)
    if #ut == 0 then
        return false
    end
    if mO > #ut then
        mO = 1
    end
    local uu = ut[mO]
    mO += 1
    if uu and uu.cframe then
        ni(uu.cframe, 3)
        mC()
        return true
    end
    return false
end
local function fn646(d7, d8)
    if not d7 then
        return false
    end
    local r9 = d7.cropId or d7.displayName
    local sf = if not mI("SeedCrops", r9) then 1 else 0
    if sf == 1 then
        return false
    end
    local r9_1 = tonumber(d7.cost) or 0
    if r9_1 > nX("SeedMaxCost", 1000000000000) then
        return false
    end
    local r9_2 = tonumber(d7.chanceOneIn) or 1
    if r9_2 < nX("SeedMinChance", 1) then
        return false
    elseif r9_2 > nX("SeedMaxChance", 1e+18) then
        return false
    else
        local r9_3 = not d8
        if r9_3 ~= false then
            r9_3 = r9_1 > nt()
        end
        if r9_3 then
            return false
        end
        return true
    end
end
local function fn683(cK)
    local q_ = not cK
    local q0 = {}
    local q5 = if q_ then 1 else 0
    local q3 = 458 * q5 + 4026 * (1 - q5)
    local q4 = 879 * q5 + 603 * (1 - q5)
    if not ((q3 * 1723 + q4 * 389 + q3 * q4) % 16777213 == 1533647) then
        q_ = not cK.ownedBackyardCellIds
    end
    if not q_ then
        q_ = not cK.backyardCellsById
    end
    if q_ then
        return q0
    end
    for k in cK.ownedBackyardCellIds do
        if (cK.plantedBackyardCellsById and cK.plantedBackyardCellsById[k]) == nil then
            local q__2 = cK.backyardCellsById[k]
            if q__2 then
                table.insert(q0, { cellId = k, cframe = q__2.cframe })
            end
        end
    end
    table.sort(q0, function(cR, cS)
        return mL(cR.cellId, cS.cellId)
    end)
    return q0
end
local function fn691(cW)
    local rb = not cW
    local rc = {}
    if not rb then
        rb = not cW.backyardCellsById
    end
    if rb then
        return rc
    end
    for k, v in cW.backyardCellsById do
        local rb_2 = not (cW.ownedBackyardCellIds and cW.ownedBackyardCellIds[k])
        if rb_2 ~= false then
            rb_2 = v.expanded == true
        end
        if rb_2 then
            local insert = table.insert
            local cframe = v.cframe
            local re = v.expansionLevel or 0
            local rf = v.floor or 1
            insert(rc, { cellId = k, cframe = cframe, expansionLevel = re, floor = rf })
        end
    end
    table.sort(rc, function(c3, c4)
        if c3.expansionLevel == c4.expansionLevel then
            if c3.floor == c4.floor then
                return mL(c3.cellId, c4.cellId)
            end
            return c3.floor < c4.floor
        end
        return c3.expansionLevel < c4.expansionLevel
    end)
    return rc
end
local function fn715(bT)
    local Plots = Workspace:FindFirstChild("Plots")
    local qk = Plots and Plots:FindFirstChild(bT)
    return qk
end
local function fn719(hc)
    local uI = m7(hc)
    if #uI == 0 then
        return false
    end
    local uJ = nL(hc.plotId)
    if uJ then
        local Earned_Cash = uJ:FindFirstChild("Earned Cash")
        local uL = Earned_Cash and Earned_Cash:IsA("BasePart")
        if uL then
            mU(Earned_Cash)
            mC(nX("ZoneDwell", 0.4) + 0.15)
        end
        local Withdrawl = uJ:FindFirstChild("Withdrawl")
        local uJ_1 = Withdrawl and Withdrawl:IsA("BasePart")
        if uJ_1 then
            mU(Withdrawl)
            mC(0.2)
        end
    end
    for k, v in uI do
        if k > 4 then
            break
        end
        ni(v, 1.5)
        mC(0.2)
    end
    return true
end
local function fn733(aM, aN)
    return string.format('<font color="%s">%s</font>', aN, aM)
end
local function fn734(g2)
    local uB = not g2.hotPot or typeof(g2.hotPot.dishPickupCFrame) ~= "CFrame"
    if uB then
        return false
    end
    ni(g2.hotPot.dishPickupCFrame, 2)
    mC()
    return true
end
local function fn782()
    local u0 = nh("BuyUpgrades")
    local u1 = {}
    if not m0(u0) then
        for k, v in nf do
            table.insert(u1, v.id)
        end
        return u1
    end
    for k, v in pairs(u0) do
        if v then
            local u0_1 = m8[k]
            if u0_1 then
                table.insert(u1, u0_1)
            end
        end
    end
    return u1
end
local function fn793(Y, Z)
    local oX = {}
    if type(Z) == "table" then
        for k, v in Z do
            table.insert(oX, v)
        end
    end
    mV[Y] = oX
end
local function fn799(gY)
    local uz = not gY.hotPot or typeof(gY.hotPot.interactCFrame) ~= "CFrame"
    if uz then
        return false
    end
    ni(gY.hotPot.interactCFrame, 2)
    mC()
    return true
end
local function onRscripts()
    nR(nC, "Copied Rscripts profile to clipboard")
end
local function fn820(aP, aQ, aR)
    return string.format("<b>%s</b> %s %s", aP, ns("-", "#5a6070"), ns(aQ, aR))
end
local function fn841(bi)
    for k, v in pairs(bi) do
        if v then
            return true
        end
    end
    return false
end
local function fn845()
    return ClientPlayerUpgradeState.get()
end
local function fn857(fD)
    local tt = not fD
    local tu = {}
    if not tt then
        tt = not fD.ownedBackyardCellIds
    end
    if not tt then
        tt = not fD.backyardCellsById
    end
    if tt then
        return tu
    end
    for k in fD.ownedBackyardCellIds do
        local tt_1 = fD.backyardCellsById[k]
        if tt_1 then
            local cframe = tt_1.cframe
            local tx = tonumber(tt_1.level) or 0
            local ty = tonumber(tt_1.floor) or 1
            table.insert(tu, { cellId = k, cframe = cframe, level = tx, floor = ty })
        end
    end
    table.sort(tu, function(fI, fJ)
        if fI.level == fJ.level then
            return mL(fI.cellId, fJ.cellId)
        end
        return fI.level < fJ.level
    end)
    return tu
end
local function fn870(bC, bD)
    local p8 = nK()
    local p9 = not p8
    local qd = if p9 then 1 else 0
    local qb = 2191 * qd + 2907 * (1 - qd)
    local qc = 2003 * qd + 1360 * (1 - qd)
    if not ((qb * 2997 + qc * 124 + qb * qc) % 16777213 == 11203372) then
        p9 = typeof(bC) ~= "CFrame"
    end
    if p9 then
        return false
    end
    local p9_1 = bD
    if p9_1 == nil then
        p9_1 = 2
    end
    p8.AssemblyLinearVelocity = Vector3.zero
    p8.AssemblyAngularVelocity = Vector3.zero
    p8.CFrame = CFrame.new(bC.Position + Vector3.new(0, p9_1, 0))
    return true
end
local function fn871(gC)
    local uf = nX("SeedUpgradeMaxLevel", 100)
    local ug = nX("SeedUpgradeMaxCost", 1000000000000)
    local uh = nt()
    for k, v in mH(gC) do
        local ui = v.level < uf and mI("SeedUpgradeCrops", v.cropId)
        if ui then
            local ui_1 = cropCatalog[v.cropId]
            if ui_1 then
                local uj = tonumber(ui_1.maxLevel) or uf
                local uj_1
                local uk_1
                if not (v.level >= uj) then
                    uj_1, uk_1 = pcall(getCropUpgradeCost, ui_1, v.level)
                    if not (uj_1 and uk_1 == nil) then
                        local ui_3 = uj_1 and type(uk_1) == "number"
                        if not ui_3 then
                            return nx("upgrade", gC, v.cellId, v.cframe)
                        end
                        local ui_4 = mG("AutoSkipUnaffordable") and uk_1 > uh
                        if not ui_4 then
                            if not (uk_1 > ug) then
                                if not (uk_1 > uh) then
                                    return nx("upgrade", gC, v.cellId, v.cframe)
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return false
end
local function fn878()
    return nN.Character
end
local function fn899(bJ)
    local qe = not bJ or not bJ:IsA("BasePart")
    if qe then
        return false
    end
    return ni(bJ.CFrame, math.clamp(bJ.Size.Y * 0.15, 1.5, 3))
end
local function fn940()
    print("Unloaded!")
end
local function fn943()
    local vs = nU()
    local vt = not vs
    local vA = if vt then 1 else 0
    local vy = 1559 * vA + 3470 * (1 - vA)
    local vz = 809 * vA + 2143 * (1 - vA)
    if not ((vy * 2765 + vz * 407 + vy * vz) % 16777213 == 5901129) then
        vt = not vs.plotId
    end
    if vt then
        return
    end
    mM(vs)
    local vt_1 = mG("AutoCollectMoney") and m_(vs)
    if vt_1 then
        mQ(vs)
        local vt_2 = (nU())
        local vA_1 = if vt_2 then 1 else 0
        local vy_1 = 3863 * vA_1 + 1467 * (1 - vA_1)
        local vz_1 = 2005 * vA_1 + 1119 * (1 - vA_1)
        if not ((vy_1 * 2928 + vz_1 * 3892 + vy_1 * vz_1) % 16777213 == 10082426) then
            vt_2 = vs
        end
        vs = vt_2
    end
    if mG("AutoCollectFood") then
        mJ(vs)
        local vt_3 = nU() or vs
        vs = vt_3
    end
    if mG("AutoCollectStorage") then
        nn(vs)
        local vt_4 = nU() or vs
        vs = vt_4
    end
    if mG("AutoPutSeedsInPot") then
        nI(vs)
        local vt_5 = nU() or vs
        vs = vt_5
    end
    if mG("AutoPutFoodForCustomers") then
        nq(vs)
        local vt_6 = nU() or vs
        m9(vt_6)
        local vt_7 = nU() or vt_6
        vs = vt_7
    end
    if mG("AutoCollectMoney") then
        mQ(vs)
        local vt_8 = nU() or vs
        vs = vt_8
    end
    if mG("AutoEquipSeed") then
        mR(vs)
        local vt_9 = nU() or vs
        vs = vt_9
    end
    if mG("AutoUpgradePlacedSeeds") then
        mB(vs)
        local vt_10 = nU() or vs
        vs = vt_10
    end
    if mG("AutoUpgradeCells") then
        nY(vs)
        local vt_11 = nU() or vs
        vs = vt_11
    end
    local vt_12 = false
    if mG("AutoBuySeed") then
        vt_12 = nP(vs)
    end
    local vu = ClientSeedRollState.getRoll()
    local vv = vu and vu.actionable and vu.plotId == vs.plotId and vu.offers and #vu.offers > 0
    local vv_1 = nj(vs)
    if vv_1 then
        mX(vs)
        local vv_2 = nU() or vs
        vs = vv_2
    else
        local vv_3 = not vv
        local vw = mG("AutoPullLever") and vv_3
        if vw and not vt_12 then
            mX(vs)
            local vt_13 = nU() or vs
            vs = vt_13
        end
    end
    if mG("AutoBuyBackyardCells") then
        nr(vs)
        local vt_14 = nU() or vs
        vs = vt_14
    end
    if mG("AutoBuyUpgrades") then
        nJ(vs)
    end
end
local function fn951(b8)
    local qx = nL(b8)
    if not qx then
        return nil
    end
    local RollerCase = qx:FindFirstChild("RollerCase")
    local qx_1 = RollerCase and RollerCase:FindFirstChild("Lever")
    local qy_1 = qx_1
    if qx_1 then
        qx_1 = qy_1:FindFirstChild("SeedRollPrompt")
    end
    return qx_1
end
local function fn953(ae)
    if ae and ae.stackKind then
        mP(ae.stackKind, ae.slots)
    end
end
local function fn986(fN)
    local tF = not fN
    local tG = {}
    if not tF then
        tF = not fN.plantedBackyardCellsById
    end
    if not tF then
        tF = not fN.backyardCellsById
    end
    if tF then
        return tG
    end
    for k, v in fN.plantedBackyardCellsById do
        local tF_1 = fN.backyardCellsById[k]
        if tF_1 and v then
            local insert = table.insert
            local cframe = tF_1.cframe
            local cropId = v.cropId
            local tK = tonumber(v.level) or 1
            insert(tG, { cellId = k, cframe = cframe, cropId = cropId, level = tK })
        end
    end
    table.sort(tG, function(fT, fU)
        if fT.level == fU.level then
            return mL(fT.cellId, fU.cellId)
        end
        return fT.level < fU.level
    end)
    return tG
end
local function fn988(gg)
    local t2_1, t2_2
    local t3_1
    local tZ = nX("CellUpgradeMaxLevel", 10)
    local tZ_1
    local t_ = nX("CellUpgradeMaxCost", 1000000000000)
    local t0 = nt()
    local t1 = tZ
    if type(getBackyardCellMaxLevel) == "function" then
        t2_1, t3_1 = pcall(getBackyardCellMaxLevel)
        local t4_1 = t2_1 and type(t3_1) == "number"
        if t4_1 then
            t1 = math.min(tZ, t3_1)
        end
    end
    for k, v in nl(gg) do
        if v.level < t1 then
            tZ_1, t2_2 = pcall(getBackyardCellUpgradeCost, v.level, v.floor)
            if not (tZ_1 and t2_2 == nil) then
                local t3_3 = tZ_1 and type(t2_2) == "number"
                if not t3_3 then
                    return nx("upgradeCell", gg, v.cellId, v.cframe)
                end
                local tZ_2 = mG("AutoSkipUnaffordable") and t2_2 > t0
                if not tZ_2 then
                    if not (t2_2 > t_) then
                        if not (t2_2 > t0) then
                            return nx("upgradeCell", gg, v.cellId, v.cframe)
                        end
                    end
                end
            end
        end
    end
    return false
end
mB = nil
mC = nil
getPlayerUpgradeLevel = nil
Library = nil
getPlayerUpgradeCost = nil
mG = nil
mH = nil
mI = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
mZ = nil
m_ = nil
m0 = nil
playerUpgradeMessages = nil
Label = nil
PlayerUpgradeMessage = nil
m5 = nil
m6 = nil
m7 = nil
m8 = nil
m9 = nil
nd = nil
nf = nil
ng = nil
nh = nil
ni = nil
nj = nil
connection2 = nil
nl = nil
seedRollMessages = nil
nn = nil
no = nil
SeedRollMessage = nil
local mY, m3, backyardCellMessages, BackyardCellMessage
nq = nil
nr = nil
ns = nil
nt = nil
nu = nil
ClientPlayerUpgradeState = nil
nx = nil
clientPlayerMoney = nil
connection = nil
nA = nil
nB = nil
nC = nil
ClientSeedRollState = nil
nE = nil
nF = nil
nG = nil
ClientPlotState = nil
nI = nil
nJ = nil
nK = nil
nL = nil
nN = nil
getCropUpgradeCost = nil
nP = nil
nQ = nil
nR = nil
nS = nil
Workspace = nil
nU = nil
cropCatalog = nil
Options = nil
nX = nil
nY = nil
VirtualUser = nil
n_ = nil
n0 = nil
Toggles = nil
getBackyardCellMaxLevel = nil
n4 = nil
n5 = nil
getBackyardCellUpgradeCost = nil
local nw, getBackyardCellPurchaseCost, n1
nw = nil
getBackyardCellPurchaseCost = nil
n1 = nil
local SocialsGroup
VirtualUser, Workspace, nN, nG, nC, SeedRollMessage, seedRollMessages, BackyardCellMessage, backyardCellMessages, PlayerUpgradeMessage, playerUpgradeMessages, getPlayerUpgradeCost, getPlayerUpgradeLevel, getBackyardCellUpgradeCost, getBackyardCellMaxLevel, cropCatalog, getCropUpgradeCost, getBackyardCellPurchaseCost, ClientPlotState, ClientSeedRollState, clientPlayerMoney, ClientPlayerUpgradeState = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local v7_16 = game:GetService("Players")
local v7_9 = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
nN = v7_16.LocalPlayer
local om = "Automate a Restaurant"
nG = "https://discord.gg/ehKVq7pf7v"
nC = "https://rscripts.net/@Ouroboros"
local v7_15 = v7_9:WaitForChild("TS")
local v7_7 = nN:WaitForChild("PlayerScripts"):WaitForChild("TS")
local v7_20 = require(v7_15.network:WaitForChild("seed-rolls"))
SeedRollMessage = v7_20.SeedRollMessage
seedRollMessages = v7_20.seedRollMessages
local v7_5 = require(v7_15.network:WaitForChild("backyard-cells"))
BackyardCellMessage = v7_5.BackyardCellMessage
backyardCellMessages = v7_5.backyardCellMessages
local v7_18 = require(v7_15.network:WaitForChild("player-upgrades"))
PlayerUpgradeMessage = v7_18.PlayerUpgradeMessage
playerUpgradeMessages = v7_18.playerUpgradeMessages
local v7_11 = require(v7_15.network:WaitForChild("world-stack"))
local v7_6 = v7_11.WorldStackMessage
local v7_17 = v7_11.worldStackMessages
local v7_2 = require(v7_15:WaitForChild("upgrades"))
getPlayerUpgradeCost = v7_2.getPlayerUpgradeCost
getPlayerUpgradeLevel = v7_2.getPlayerUpgradeLevel
getBackyardCellUpgradeCost = v7_2.getBackyardCellUpgradeCost
getBackyardCellMaxLevel = v7_2.getBackyardCellMaxLevel
local v7_1 = require(v7_15:WaitForChild("crops"))
cropCatalog = v7_1.cropCatalog
getCropUpgradeCost = v7_1.getCropUpgradeCost
getBackyardCellPurchaseCost = v7_1.getBackyardCellPurchaseCost
ClientPlotState = require(v7_7.plots:WaitForChild("client-plot-state")).ClientPlotState
ClientSeedRollState = require(v7_7.seeds:WaitForChild("client-seed-roll-state")).ClientSeedRollState
clientPlayerMoney = require(v7_7["player-data"]:WaitForChild("client-player-money")).clientPlayerMoney
ClientPlayerUpgradeState = require(v7_7.upgrades:WaitForChild("client-player-upgrades")).ClientPlayerUpgradeState
local v7_12 = {}
for k, v in cropCatalog do
    v7_16 = type(v) == "table" and v.hidden ~= true
    if v7_16 then
        table.insert(v7_12, k)
    end
end
table.sort(v7_12)
nf, m8 = nil, nil
nf = {
    { id = "storagePalletStorageSize", label = "Storage Size" },
    { id = "giantWokCookingSpeed", label = "Cooking Speed" },
    { id = "giantWokQuality", label = "Quality" },
    { id = "frontDeskAdvertising", label = "Advertising" },
    { id = "frontDeskSecondLine", label = "Second Line" },
    { id = "seedRollerLuckBoost", label = "Luck Boost" },
    { id = "seedRollerRollAmount", label = "Roll Amount" },
    { id = "backyardSprinklers", label = "Sprinklers" },
    { id = "backyardExpansion", label = "Expansion" },
    { id = "playerCarrySize", label = "Player Carry Size" },
    { id = "backyardSecondFloorSprinklers", label = "2F Sprinklers" }
}
v7_2 = {}
m8 = {}
for k, v in nf do
    table.insert(v7_2, v.label)
    m8[v.label] = v.id
end
mV, Library, Toggles, Options, mT, mO, mP, nR, nA, ns, ng, mG, nX, nw, nh, m0, mI, nS, nK, nu, ni, mU, mC, nU, nL, nt, nd, m5, mN, nQ, m6, mL, n1, nE, mY, nF, m7, m_, nB, m3, n_, mX, nP, nj, mR, nr, nl, mH, nx, nY, mB, mJ, nI, nq, m9, mQ, nn, mZ, nJ, mM, n4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
v7_15 = { "Cheapest", "Rarest", "First" }
mV = { customerCash = {}, droneDropOff = {}, hotPotOutput = {} }
mP = fn793
v7_17.client:on(v7_6.Snapshot, fn953)
v7_17.client:on(v7_6.Deposited, fn321)
v7_17.client:on(v7_6.Collected, fn396)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
v7_9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nR = fns.fn103
nA = fn631
ns = fn733
ng = fn820
local v7_13 = "#7fd47f"
v7_7 = "#6ec1ff"
mT = "#e8a34d"
v7_20 = "#8b93a3"
mG = fn347
nX = fns.fn171
nw = fns.fn149
nh = fn340
m0 = fn841
mI = fn559
nS = fn878
nK = fns.fn117
nu = fns.fn144
ni = fn870
mU = fn899
mC = fns.fn41
nU = fn332
nL = fn715
nt = fn350
nd = fn845
m5 = function(b4)
    if not b4 then
        return false
    elseif fireproximityprompt then
        fireproximityprompt(b4)
        return true
    else
        pcall(function()
            b4:InputHoldBegin()
        end)
        local qv = b4.HoldDuration or 0
        task.wait(math.max(0.05, qv))
        pcall(function()
            b4:InputHoldEnd()
        end)
        return true
    end
end
mN = fn951
nQ = function()
    local ci
    ci = {}
    local function cj(ck)
        if not ck then
            return
        end
        for i, child in ck:GetChildren() do
            local qA = child:IsA("Tool") and child:GetAttribute("SeedPacket") == true
            if qA then
                local attr2 = child:GetAttribute("InventoryItemUid")
                local attr = child:GetAttribute("SeedCropId")
                local qC = type(attr2) == "string" and type(attr) == "string"
                if qC then
                    local insert = table.insert
                    local qD = child:GetAttribute("SeedLevel") or 1
                    insert(ci, { tool = child, inventoryItemUid = attr2, cropId = attr, level = qD })
                end
            end
        end
    end
    cj(nN:FindFirstChild("Backpack"))
    cj(nS())
    return ci
end
m6 = fn510
mL = fn269
n1 = fn639
nE = fn683
mY = fn691
nF = fns.fn235
m7 = fn630
m_ = fns.fn226
nB = fns.fn99
m3 = fn646
n_ = function(eh, ei)
    local sx
    sx = nil
    if not eh or not eh.offers then
        return nil
    end
    local sy_1 = {}
    for k, v in eh.offers do
        if m3(v, ei) then
            table.insert(sy_1, v)
        end
    end
    if #sy_1 == 0 then
        return nil
    end
    local sz = nw("SeedPreferMode") or "Cheapest"
    sx = sz
    if sx == "First" then
        return sy_1[1]
    end
    table.sort(sy_1, function(eq, er)
        if sx == "Rarest" then
            local sj_1 = tonumber(eq.chanceOneIn) or 0
            local sj_2 = tonumber(er.chanceOneIn) or 0
            if sj_1 == sj_2 then
                local sj_3 = tonumber(eq.cost) or 0
                local sm_1 = tonumber(er.cost) or 0
                return sj_3 < sm_1
            end
            return sj_1 > sj_2
        end
        local sj_4 = (tonumber(eq.cost))
        local sq = if sj_4 then 1 else 0
        local so = 1135 * sq + 877 * (1 - sq)
        local sp = 2117 * sq + 2210 * (1 - sq)
        if not ((so * 2535 + sp * 2329 + so * sp) % 16777213 == 10210513) then
            sj_4 = 0
        end
        local sk_2 = sj_4
        local sj_5 = (tonumber(er.cost))
        local st = if sj_5 then 1 else 0
        local sr = 3745 * st + 86 * (1 - st)
        local ss = 3925 * st + 767 * (1 - st)
        if not ((sr * 951 + ss * 2691 + sr * ss) % 16777213 == 12045582) then
            sj_5 = 0
        end
        local sl_2 = sj_5
        if sk_2 == sl_2 then
            local sj_6 = tonumber(eq.chanceOneIn) or 0
            local sm_2 = (tonumber(er.chanceOneIn))
            local sw = if sm_2 then 1 else 0
            local su = 2708 * sw + 2729 * (1 - sw)
            local sv = 1803 * sw + 4075 * (1 - sw)
            if not ((su * 1249 + sv * 2774 + su * sv) % 16777213 == 13266338) then
                sm_2 = 0
            end
            return sj_6 > sm_2
        end
        return sk_2 < sl_2
    end)
    return sy_1[1]
end
mX = fn451
nP = fns.fn104
nj = fn452
mR = fns.fn1
nr = function(fc)
    local th
    local ti
    th = nil
    ti = nil
    local tn_1
    local tm_1
    local tj = mY(fc)
    local tj_8
    if #tj == 0 then
        return false
    end
    local tk = n1(fc)
    local tl = nt()
    local tl_3
    if type(getBackyardCellPurchaseCost) == "function" then
        tm_1, tn_1 = pcall(getBackyardCellPurchaseCost, tk)
        local tk_1 = tm_1 and type(tn_1) == "number"
        if tk_1 then
            if tn_1 > tl then
                return false
            end
            ti = tj[1]
            th = nil
            local tj_1 = backyardCellMessages.client:on(BackyardCellMessage.BackyardCellInteractionResult, function(fr)
                if fr and fr.cellId == ti.cellId then
                    th = fr
                end
            end)
            if ti.cframe then
                ni(ti.cframe, 3)
                mC(0.1)
            end
            backyardCellMessages.server:emit(BackyardCellMessage.BackyardCellPurchaseRequested, { plotId = fc.plotId, cellId = ti.cellId })
            local tk_2 = os.clock()
            while true do
                local tl_1 = th == nil and os.clock() - tk_2 < 1.25
                if tl_3 then
                    task.wait(0.05)
                    continue
                end
                break
            end
            tj_1()
            if tj_8 then
                return false
            end
            return th == nil or th.ok == true
        end
        ti = tj[1]
        th = nil
        local tj_4 = backyardCellMessages.client:on(BackyardCellMessage.BackyardCellInteractionResult, function(fr)
            if fr and fr.cellId == ti.cellId then
                th = fr
            end
        end)
        if ti.cframe then
            ni(ti.cframe, 3)
            mC(0.1)
        end
        backyardCellMessages.server:emit(BackyardCellMessage.BackyardCellPurchaseRequested, { plotId = fc.plotId, cellId = ti.cellId })
        local tk_3 = os.clock()
        while true do
            local tl_2 = th == nil and os.clock() - tk_3 < 1.25
            if tl_3 then
                task.wait(0.05)
                continue
            end
            break
        end
        tj_4()
        if tj_8 then
            return false
        end
        return th == nil or th.ok == true
    end
    ti = tj[1]
    th = nil
    local tj_7 = backyardCellMessages.client:on(BackyardCellMessage.BackyardCellInteractionResult, function(fr)
        if fr and fr.cellId == ti.cellId then
            th = fr
        end
    end)
    if ti.cframe then
        ni(ti.cframe, 3)
        mC(0.1)
    end
    backyardCellMessages.server:emit(BackyardCellMessage.BackyardCellPurchaseRequested, { plotId = fc.plotId, cellId = ti.cellId })
    local tk_4 = os.clock()
    while true do
        tl_3 = th == nil and os.clock() - tk_4 < 1.25
        if tl_3 then
            task.wait(0.05)
            continue
        end
        break
    end
    tj_7()
    tj_8 = th and th.ok == false and th.reason == "not_enough_money"
    if tj_8 then
        return false
    end
    return th == nil or th.ok == true
end
nl = fn857
mH = fn986
nx = function(fY, fZ, f_, f0)
    local tU
    tU = nil
    tU = nil
    local tV = backyardCellMessages.client:on(BackyardCellMessage.BackyardCellInteractionResult, function(f4)
        if f4 and f4.cellId == f_ then
            tU = f4
        end
    end)
    if f0 then
        ni(f0, 3)
        mC(0.1)
    end
    local tW = BackyardCellMessage.BackyardCellRemoveRequested
    if fY == "upgradeCell" then
        tW = BackyardCellMessage.BackyardCellYieldUpgradeRequested
    elseif fY == "upgrade" then
        tW = BackyardCellMessage.BackyardCellUpgradeRequested
    elseif fY == "buy" then
        tW = BackyardCellMessage.BackyardCellPurchaseRequested
    end
    backyardCellMessages.server:emit(tW, { plotId = fZ.plotId, cellId = f_ })
    local tW_1 = os.clock()
    while true do
        local tX = tU == nil and os.clock() - tW_1 < 1.25
        if tX then
            task.wait(0.05)
            continue
        end
        break
    end
    tV()
    if tU and tU.ok == false then
        return false
    end
    return true
end
nY = fn988
if ((not nU or nu or not nU) and (not nU and not nu or (not nu or not nU)) or (not nA and nR or (not nA or false)) and (not nu and nu and (not nu))) and not ((not nU or nu or not nU) and (not nU and not nu or (not nu or not nU)) or (not nA and nR or (not nA or false)) and (not nu and nu and (not nu))) then
    nI = fn871
    nq = 1
    mO = fn640
    mB = fn799
    mJ = fn734
else
    mB = fn871
    mO = 1
    mJ = fn640
    nI = fn799
    nq = fn734
end
if (v7_15 or m6 or (false or v7_15) or m6 and not m6 and (v7_15 and v7_15)) and ((m6 or false or not nU and mG) and ((false or not nU) and (v7_15 and not m6))) and not ((v7_15 or m6 or (false or v7_15) or m6 and not m6 and (v7_15 and v7_15)) and ((m6 or false or not nU and mG) and ((false or not nU) and (v7_15 and not m6)))) then
    mQ = fn419
    m9 = fn719
else
    m9 = fn419
    mQ = fn719
end
nn = fn310
mZ = fn782
nJ = fn297
mM = fns.fn188
n4 = fn943
v7_18 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = nG, Copyable = true }, "|", om },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
v7_1 = {
    Info = v7_18:AddTab("Info", "info"),
    Main = v7_18:AddTab("Main", "utensils"),
    Settings = v7_18:AddTab("Settings", "settings")
}
v7_1.Farm = v7_1.Main:AddSubTab("Farm", "sprout")
v7_1.Restaurant = v7_1.Main:AddSubTab("Restaurant", "cooking-pot")
v7_1.Shop = v7_1.Main:AddSubTab("Shop", "shopping-cart")
v7_5 = fns.fn207
for k, v in { v7_1.Info, v7_1.Farm, v7_1.Restaurant, v7_1.Shop, v7_1.Settings } do
    v7_5(v)
end
no, v7_11, v7_17, Label, mW, v7_18 = nil, nil, nil, nil, nil, nil
v7_16 = 6
repeat
    v7_5 = (v7_16 * 1 + 2) % 3 + 1
    if v7_5 <= 2 then
        if v7_5 <= 1 then
            v7_5 = {
                "vuugrtjymg",
                "xkwrkfyie",
                "wadb",
                "yksiwxe",
                "uppheropytu",
                "tlfl",
                "alyn",
                "jslmvet",
                "qfgmppqtzoa"
            }
            local w4 = v7_16
            v7_6 = v7_5[w4 % 9 + 1]
            if v7_6:len() <= v7_6:gsub("(.)", "%1%1", w4 % 3 % 2 + 1):len() then
                mW = tostring(game.JobId)
            else
                v7_11 = tostring(game.JobId)
            end
            v7_16 = (v7_16 + 7) % 12
        else
            v7_5 = {
                "urkp",
                "kku",
                "tfhqtkepstw",
                "yxfvnnvlqgy",
                "lkharbwhud",
                "ixyqzvopbj",
                "edrrzpdykv",
                "gfa",
                "sky",
                "banvrwcld",
                "vcqxreldfzu"
            }
            local wR = v7_16
            v7_6 = v7_5[wR % 11 + 1]
            if v7_6:len() <= v7_6:reverse():rep(wR % 3 + 2):len() then
                v7_18 = #mW > 18
            else
                mW = #v7_18 > 18
            end
            v7_16 = (v7_16 + 4) % 12
        end
    else
        v7_5 = {
            "yvrekhv",
            "icpyghpesj",
            "wldffvvnwk",
            "lyqhadhqah",
            "cpxgkxruj",
            "gkfcdojxxowh",
            "ddjcpwzlc",
            "whz"
        }
        if v7_5[(v7_16 * 81 + 64) % 8 + 1] < v7_5[(v7_16 * 81 + 64) % 8 + 1] then
            nN = "Unknown"
            pcall(fn395)
            ns = v7_17.Info:AddLeftGroupbox("Account", "circle-user")
            ns:AddLabel(mT("User", v7_1.Name, v7_11), true)
            ns:AddLabel(mT("Status", "Keyless", v7_11), true)
            ns:AddLabel(mT("Executor", nN, v7_11), true)
            no = v7_17.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            no:AddLabel(v7_7(v7_13 .. " [" .. tostring(game.PlaceId) .. "]", ng), true)
            no:AddLabel(mT("Place ID", tostring(game.PlaceId), ng), true)
            om = no:AddLabel(mT("Session time", "0s", Label), true)
        else
            no = "Unknown"
            pcall(fn395)
            v7_11 = v7_1.Info:AddLeftGroupbox("Account", "circle-user")
            v7_11:AddLabel(ng("User", nN.Name, v7_13), true)
            v7_11:AddLabel(ng("Status", "Keyless", v7_13), true)
            v7_11:AddLabel(ng("Executor", no, v7_13), true)
            v7_17 = v7_1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            v7_17:AddLabel(ns(om .. " [" .. tostring(game.PlaceId) .. "]", v7_7), true)
            v7_17:AddLabel(ng("Place ID", tostring(game.PlaceId), v7_7), true)
            Label = v7_17:AddLabel(ng("Session time", "0s", mT), true)
        end
        v7_16 = (v7_16 + 4) % 12
    end
until (v7_16 * 7 + 10) % 12 == 1
if v7_18 then
    v7_16 = 0
    repeat
        if (v7_16 * 2 + 6) * 13 % 3 == ((v7_16 * 2 + 6) * 13 + 2) % 3 then
            mW = string.sub(v7_18, 1, 18) .. "..."
        else
            v7_18 = string.sub(mW, 1, 18) .. "..."
        end
        v7_16 = (v7_16 + 5) % 8
    until (v7_16 * 3 + 5) % 8 == 4
end
v7_16 = v7_18
local oS = if v7_16 then 1 else 0
local oQ = 1118 * oS + 2159 * (1 - oS)
local oR = 3315 * oS + 69 * (1 - oS)
if not ((oQ * 1042 + oR * 1203 + oQ * oR) % 16777213 == 8859071) then
    v7_16 = mW
end
v7_11, n5, SocialsGroup, mS, mK, connection, connection2, n0 = nil, nil, nil, nil, nil, nil, nil, nil
if (not SocialsGroup or SocialsGroup or not connection2 and not mS) and (not connection2 and not mS) and not ((not SocialsGroup or SocialsGroup or not connection2 and not mS) and (not connection2 and not mS)) then
    v7_16 = n5
    ng:AddLabel(v7_20("Server", v7_16, v7_11), true)
    ng:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    os.clock()
else
    v7_11 = v7_16
    v7_17:AddLabel(ng("Server", v7_11, v7_20), true)
    v7_17:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
    n5 = os.clock()
end
task.spawn(fns.worker)
local ScriptsGroup = v7_1.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(ns("Included in this hub", v7_20), true)
ScriptsGroup:AddLabel(ns(om, v7_7), true)
local FeaturesGroup = v7_1.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(ns("Seed Automation", v7_7), true)
FeaturesGroup:AddLabel(ns("Bed / Plot Farming", mT), true)
FeaturesGroup:AddLabel(ns("Restaurant Service", v7_7), true)
FeaturesGroup:AddLabel(ns("Upgrade Buying", mT), true)
SocialsGroup = v7_1.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = nA })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = v7_1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = nA })
local FaqGroup = v7_1.Info:AddRightGroupbox("FAQ", "circle-help")
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
local SeedsGroup = v7_1.Farm:AddLeftGroupbox("Seeds", "leaf")
SeedsGroup:AddToggle("AutoPullLever", { Text = "Auto Pull Lever", Default = false })
SeedsGroup:AddToggle("AutoBuySeed", { Text = "Auto Buy Seed", Default = false })
SeedsGroup:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip Unaffordable", Default = true })
SeedsGroup:AddDropdown("SeedCrops", {
    Text = "Seed crops",
    Values = v7_12,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
SeedsGroup:AddDropdown("SeedPreferMode", { Text = "Prefer", Values = v7_15, Default = "Cheapest" })
SeedsGroup:AddSlider("SeedMaxCost", {
    Text = "Max seed cost",
    Default = 1000000,
    Min = 1,
    Max = 1000000000000,
    Rounding = 0,
    Compact = true
})
SeedsGroup:AddSlider("SeedMinChance", { Text = "Min 1 in", Default = 1, Min = 1, Max = 1000000000000, Rounding = 0, Compact = true })
SeedsGroup:AddSlider("SeedMaxChance", {
    Text = "Max 1 in",
    Default = 1000000000000,
    Min = 1,
    Max = 1000000000000,
    Rounding = 0,
    Compact = true
})
v7_6 = v7_1.Farm:AddRightGroupbox("Beds", "sprout")
v7_6:AddToggle("AutoEquipSeed", { Text = "Auto Equip Seed on Beds", Default = false })
v7_6:AddDropdown("PlantCrops", {
    Text = "Plant crops",
    Values = v7_12,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
v7_6:AddToggle("AutoBuyBackyardCells", { Text = "Auto Buy Backyard Cells", Default = false })
v7_6:AddToggle("AutoUpgradeCells", { Text = "Auto Upgrade Cells", Default = false })
v7_6:AddSlider("CellUpgradeMaxLevel", { Text = "Cell max level", Default = 10, Min = 1, Max = 10, Rounding = 0 })
v7_6:AddSlider("CellUpgradeMaxCost", {
    Text = "Cell max cost",
    Default = 1000000,
    Min = 1,
    Max = 1000000000000,
    Rounding = 0,
    Compact = true
})
v7_6:AddToggle("AutoUpgradePlacedSeeds", { Text = "Auto Upgrade Placed Seeds", Default = false })
v7_6:AddDropdown("SeedUpgradeCrops", {
    Text = "Upgrade crops",
    Values = v7_12,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
v7_6:AddSlider("SeedUpgradeMaxLevel", { Text = "Seed max level", Default = 100, Min = 1, Max = 100, Rounding = 0 })
v7_6:AddSlider("SeedUpgradeMaxCost", {
    Text = "Seed max cost",
    Default = 1000000,
    Min = 1,
    Max = 1000000000000,
    Rounding = 0,
    Compact = true
})
v7_6:AddToggle("AutoCollectFood", { Text = "Auto Collect Food", Default = false })
v7_6:AddToggle("AutoCollectStorage", { Text = "Auto Collect Storage", Default = false })
v7_13 = v7_1.Restaurant:AddLeftGroupbox("Service", "hand-platter")
v7_13:AddToggle("AutoPutSeedsInPot", { Text = "Auto Put Seeds in Pot", Default = false })
v7_13:AddToggle("AutoPutFoodForCustomers", { Text = "Auto Put Food for Customers", Default = false })
v7_13:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
v7_13:AddSlider("CycleDelay", { Text = "Cycle delay", Default = 0.2, Min = 0.05, Max = 3, Rounding = 2, Suffix = "s" })
v7_13:AddSlider("ZoneDwell", { Text = "Zone dwell", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
v7_5 = v7_1.Shop:AddLeftGroupbox("Upgrades", "arrow-up")
v7_5:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
v7_5:AddDropdown("BuyUpgrades", {
    Text = "Upgrades",
    Values = v7_2,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
v7_18 = v7_1.Settings:AddLeftGroupbox("Menu", "settings")
v7_18:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
v7_18:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
v7_18:AddButton("Unload", fns.onUnload)
Library:OnUnload(fn940)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(v7_1.Settings)
ThemeManager:LoadDefault()
v7_9:SetLibrary(Library)
v7_9:IgnoreThemeSettings()
v7_9:SetIgnoreIndexes({ "MenuKeybind" })
v7_9:SetFolder("OuroborosHub/AutomateARestaurant")
v7_9:BuildConfigSection(v7_1.Settings)
v7_9:LoadAutoloadConfig()
mS = tick()
mK = tick()
pcall(function()
    for i, v in ipairs(getconnections(nN.Idled)) do
        local vP = v
        pcall(function()
            vP:Disable()
        end)
    end
end)
n0 = fn298
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fns.fn187)
task.spawn(worker2)
task.spawn(fns.worker3)
Library:Notify(om .. " loaded")
