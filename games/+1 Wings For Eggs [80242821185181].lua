local fns = {}
local uP
local uw
local vd
local uV
local uC
local vI
local uI
local State
local u6
local vO
local uO
local CoreGui
local vc
local uU
local vB
local uB
local vi
local u_
local vH
local uH
local vo
local u5
local uN
local vu
local vb
local vT
local uT
local uA
local vh
local uG
local u4
local vM
local ut
local LocalPlayer
local vS
local uS
local uY
local vF
local uF
local vm
local vL
local uL
local vs
local us
local u9
local vR
local vy
local uy
local vf
local vl
local uK
local vr
local u8
local vQ
local uQ
local vx
local ux
local ve
local uW
local vD
local uD
local u1
local vJ
local connection
local u7
local vP
function fns.fn2(iR)
    local Dl = iR or vR()
    iR = Dl
    if type(iR) ~= "table" then
        return
    end
    if State.AutoUpgradeSpeed then
        vu("Speed", iR)
    end
    if State.AutoUpgradeCarry then
        vu("Carry", iR)
    end
    if State.AutoUpgradeStamina then
        vu("Stamina", iR)
    end
end
function fns.fn10(b4)
    local xU = type(b4) == "table" and type(b4.Zone) ~= "string"
    return xU
end
function fns.fn24(aa)
    local wW = typeof(cloneref) == "function" and typeof(aa) == "Instance"
    if wW then
        return cloneref(aa)
    end
    return aa
end
function fns.fn35(hU)
    local CP = type(vx) == "table" and vx[hU]
    if type(CP) == "table" then
        local CP_1 = (tonumber(CP.StaminaMultiplier)) or 0
        return CP_1
    end
    return 0
end
function fns.fn38(eD)
    local zZ = {}
    local z_ = type(eD) ~= "table" or type(eD.Inventory) ~= "table" or type(eD.Inventory.Friends) ~= "table"
    if z_ then
        return zZ
    end
    for k, v in pairs(eD.Inventory.Friends) do
        local z__1 = type(v) == "table" and type(v.uid) == "string"
        if z__1 then
            local z__2 = u9(v.id)
            local z0 = z__2 and type(z__2.Zone) == "string"
            if z0 then
                table.insert(zZ, v)
            end
        end
    end
    return zZ
end
function fns.fn48(iX)
    local Dq = iX or vR()
    iX = Dq
    if type(iX) ~= "table" then
        return
    end
    local Dq_1 = (tonumber(iX.BaseLevel)) or 0
    local Dq_2 = Dq_1 + 1
    local Dr_1 = type(u7) == "table" and u7[Dq_2]
    if Dr_1 == nil then
        return
    end
    if uw(iX) < tonumber(Dr_1) then
        return
    end
    vy(vB.PurchaseFloor, Dq_2)
end
function fns.fn58(as, ...)
    local w0 = as
    for k, v in { ... } do
        if typeof(w0) ~= "Instance" then
            return nil
        end
        w0 = w0:FindFirstChild(v)
    end
    return w0
end
function fns.fn117(bf)
    local xr = type(bf) == "table" and next(bf) ~= nil
    return xr
end
function fns.fn141(cv)
    local yd = uY(vD, "Map", "SpawnParts", cv)
    local ye = yd
    if ye then
        local yf = (yd:IsA("BasePart")) and yd
        local yg = yf or yd:FindFirstChildWhichIsA("BasePart")
        ye = yg
    end
    local yd_1 = ye
    if yd_1 then
        return yd_1.CFrame + Vector3.new(0, 6, 0)
    end
    local yd_2 = uY(vD, "Map", "GuardianSpawns", cv)
    local ye_1 = yd_2 and yd_2:IsA("BasePart")
    if ye_1 then
        return yd_2.CFrame + Vector3.new(0, 6, 0)
    end
    return nil
end
function fns.fn187(a7, ...)
    if typeof(a7) ~= "Instance" then
        return false
    elseif a7:IsA("RemoteEvent") then
        return pcall(a7.FireServer, a7, ...)
    elseif a7:IsA("RemoteFunction") then
        return pcall(a7.InvokeServer, a7, ...)
    else
        return false
    end
end
function fns.fn195()
    return CoreGui
end
function fns.fn200(cT)
    local yx = {}
    if typeof(cT) ~= "Instance" then
        return yx
    end
    for i, child in cT:GetChildren() do
        if child:IsA("Tool") then
            local attr = child:GetAttribute("friendUID")
            local yz = attr ~= ""
            local yA = type(attr) == "string" and yz
            if yA then
                table.insert(yx, child)
            end
        end
    end
    return yx
end
local function fn215(i8)
    local Du = i8 or vR()
    i8 = Du
    vy(vB.ClaimAllIndex)
    local Du_1 = type(i8) ~= "table" or type(i8.IndexRewards) ~= "table"
    if Du_1 then
        return
    end
    for k, v in pairs(i8.IndexRewards) do
        local Du_2 = not vM() or not State.AutoClaimIndex
        if Du_2 then
            return
        end
        if type(v) == "table" then
            for k2, v in pairs(v) do
                if v == "pending" then
                    local Du_3 = tonumber(k)
                    local ClaimIndex = vB.ClaimIndex
                    local Dw = Du_3 or k
                    vy(ClaimIndex, Dw, k2)
                end
            end
        end
    end
end
local function fn258()
    local D9 = if coroutine.status(vO) ~= "dead" then 1 else 0
    if D9 == 1 then
        task.cancel(vO)
    end
    uV()
end
local function fn266()
    local y4 = uY(vD, "Live", "Friends")
    if not y4 then
        return {}
    end
    local y5 = {}
    for i, child in y4:GetChildren() do
        if child:IsA("Model") then
            table.insert(y5, child)
        end
    end
    return y5
end
local function fn267(bN)
    if type(bN) ~= "table" then
        return 0
    end
    local xI = (tonumber(bN.TotalCash)) or tonumber(bN.Cash)
    return xI or 0
end
local function fn280(d3)
    if not d3 or not d3.Parent then
        return false
    end
    local StealPrompt = d3:FindFirstChild("StealPrompt", true)
    local zz = (d3:FindFirstChild("RootPart")) or d3.PrimaryPart or d3:FindFirstChildWhichIsA("BasePart")
    if not StealPrompt or not zz then
        return false
    end
    u4(zz.Position)
    uN(zz.CFrame + Vector3.new(0, 3, 0))
    task.wait(0.15)
    local zz_2 = not vM() or not State.AutoSteal
    if zz_2 then
        return false
    end
    local zz_3 = not d3.Parent
    local zI = if zz_3 then 1 else 0
    local zG = 810 * zI + 1918 * (1 - zI)
    local zH = 439 * zI + 163 * (1 - zI)
    if not ((zG * 3653 + zH * 2399 + zG * zH) % 16777213 == 4367681) then
        zz_3 = not StealPrompt.Parent
    end
    if zz_3 then
        return true
    end
    uK(StealPrompt)
    task.wait(0.2)
    local zz_4 = not vM() or not State.AutoSteal
    if zz_4 then
        return true
    end
    if StealPrompt.Parent then
        uK(StealPrompt)
        task.wait(0.15)
    end
    return true
end
local function fn297(gB)
    local BE = gB or vR()
    gB = BE
    local BE_1 = type(gB) ~= "table"
    local BM = if BE_1 then 1 else 0
    local BK = 3330 * BM + 447 * (1 - BM)
    local BL = 1631 * BM + 2970 * (1 - BM)
    if not ((BK * 52 + BL * 1988 + BK * BL) % 16777213 == 8846818) then
        BE_1 = type(gB.PlotFriends) ~= "table"
    end
    if BE_1 then
        return
    end
    local BE_2 = os.time()
    for k, v in pairs(gB.PlotFriends) do
        local BF = not vM() or not State.AutoHatch
        if BF then
            return
        end
        if type(v) == "table" then
            local BF_1 = false
            local BG = uY(vD, "Live", "PlayerFriends", LocalPlayer.Name, tostring(k))
            if BG then
                BF_1 = BG:GetAttribute("incubating") == true
            end
            local BG_1 = tonumber(v.finishTime)
            local BH = (tonumber(v.hatchDuration)) or tonumber(v.HatchTime)
            local BI = BF_1
            if not BI then
                BI = BG_1 and BG_1 <= BE_2
            end
            if BI or BH == 0 then
                vy(vB.SkipIncubation, k)
                if vB.OpenLuckyBlock then
                    vy(vB.OpenLuckyBlock, k)
                end
            end
        end
    end
end
local function fn334()
    local zS_1
    local zR_1
    zS_1, zR_1 = vd()
    if not zS_1 then
        return false
    end
    u4(zR_1)
    uN(zS_1)
    local zR_2 = os.clock() + 3
    repeat
        local zT = (vM()) and State.AutoSteal and os.clock() < zR_2
        if not zT then
            task.wait(0.25)
            State.OutingSteals = 0
            table.clear(State.SkipEggs)
            return true
        end
        local Character = LocalPlayer.Character
        local zU = (vd()) or zS_1
        zS_1 = zU
        uN(zS_1)
        local zU_1 = Character and Character:GetAttribute("inDangerZone") ~= true
        if zU_1 then
            task.wait(0.25)
            State.OutingSteals = 0
            table.clear(State.SkipEggs)
            return true
        end
        task.wait(0.15)
    until not vM()
    return false
end
local function fn336(bk)
    State.SelectedZones = vm(bk)
end
local function fn338()
    for k, v in u6 do
        if State.SelectedZones[v] then
            local zJ = uP(v)
            if zJ then
                u4(zJ.Position)
                uN(zJ)
                return true
            end
        end
    end
    return false
end
local function fn344()
    return uQ(LocalPlayer.Character)
end
local function fn373()
    local yu = vH()
    local yv = yu and yu:FindFirstChild("Base")
    local yu_1 = yv
    if yv then
        yv = yu_1:IsA("BasePart")
    end
    if yv then
        return yu_1.CFrame + Vector3.new(0, 6, 0), yu_1.Position
    end
    return nil, nil
end
local function fn385()
    local DR = vR()
    if State.FreezeGuards then
        vf()
    end
    local DS = State.AutoHatch and os.clock() - State.LastHatchAt > 0.8
    if DS then
        uF(DR)
        State.LastHatchAt = os.clock()
        if not vM() then
            return
        end
    end
    local DS_1 = State.AutoUpgradePets and os.clock() - State.LastPetUpgradeAt > 1.2
    if DS_1 then
        uH(DR)
        State.LastPetUpgradeAt = os.clock()
        local DX = if not vM() then 1 else 0
        if DX == 1 then
            return
        end
    end
    local DS_2 = State.AutoSellAll or State.AutoSellSelected
    local DT = DS_2 and os.clock() - State.LastActionAt > 0.6
    if DT then
        vS(DR)
        State.LastActionAt = os.clock()
        if not vM() then
            return
        end
    end
    local DS_3 = State.AutoBuyWings and os.clock() - State.LastWingAt > 1
    if DS_3 then
        u8(DR)
        State.LastWingAt = os.clock()
        if not vM() then
            return
        end
    end
    if State.AutoEquipBestWing then
        vs(DR)
    end
    local DR_1 = State.AutoUpgradeSpeed or State.AutoUpgradeCarry or State.AutoUpgradeStamina
    local DS_4 = DR_1 and os.clock() - State.LastUpgradeAt > 0.7
    if DS_4 then
        uW(vR())
        State.LastUpgradeAt = os.clock()
        if not vM() then
            return
        end
    end
    local DR_2 = State.AutoUpgradeFloor and os.clock() - State.LastFloorAt > 1.5
    if DR_2 then
        uG(vR())
        State.LastFloorAt = os.clock()
        if not vM() then
            return
        end
    end
    local DR_3 = State.AutoClaimIndex and os.clock() - State.LastIndexAt > 2
    if DR_3 then
        vo(vR())
        State.LastIndexAt = os.clock()
        if not vM() then
            return
        end
    end
    local DR_4 = State.AutoRebirth and os.clock() - State.LastRebirthAt > 2
    if DR_4 then
        ux(vR())
        State.LastRebirthAt = os.clock()
        if not vM() then
            return
        end
    end
    if State.AutoSteal then
        local DR_5 = uU()
        if State.OutingSteals >= DR_5 then
            vb()
        else
            local DS_5 = u_()
            if DS_5 then
                local D2 = if u5(DS_5) then 1 else 0
                if D2 == 1 then
                    State.SkipEggs[DS_5] = true
                    State.OutingSteals = State.OutingSteals + 1
                end
                if State.OutingSteals >= DR_5 then
                    vb()
                end
            elseif State.OutingSteals > 0 then
                vb()
            else
                vL()
                task.wait(0.35)
            end
        end
    end
    local DR_6 = State.AutoPlace and State.OutingSteals == 0 and os.clock() - State.LastPlaceAt > 0.7
    if DR_6 then
        vP(vR())
        State.LastPlaceAt = os.clock()
    end
end
local function fn426()
    return #uy()
end
local function fn458(gZ)
    local BT = gZ or vR()
    gZ = BT
    local BT_1 = type(gZ) ~= "table" or type(gZ.PlotFriends) ~= "table"
    if BT_1 then
        return
    end
    for k, v in pairs(gZ.PlotFriends) do
        local BT_2 = not vM()
        local B5 = if BT_2 then 1 else 0
        local B3 = 1137 * B5 + 514 * (1 - B5)
        local B4 = 3112 * B5 + 381 * (1 - B5)
        if not ((B3 * 3369 + B4 * 3715 + B3 * B4) % 16777213 == 2152764) then
            BT_2 = not State.AutoUpgradePets
        end
        if BT_2 then
            return
        end
        if type(v) == "table" then
            local BT_3 = u9(v.id)
            if uS(BT_3) then
                vy(vB.UpgradeFriend, k)
            end
        end
    end
end
local function fn473()
    local Plots = vD:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in Plots:GetChildren() do
        local owner = child:FindFirstChild("owner")
        local yj = owner and owner:IsA("StringValue") and owner.Value == LocalPlayer.Name
        if yj then
            return child
        end
    end
    return nil
end
local function fn477(hJ)
    local CA = {}
    local CB = type(hJ) == "table" and type(hJ.UnlockedWings) == "table"
    if CB then
        for k, v in pairs(hJ.UnlockedWings) do
            if type(v) == "string" then
                CA[v] = true
            end
        end
    end
    return CA
end
local function fn498(iz, iA)
    local Dh_1
    local Dg = type(vl) ~= "table" or type(vl[iz]) ~= "table"
    local Dg_2
    if Dg then
        return nil
    end
    local Dg_1 = type(vI) == "table" and us(vI.getNextUpgradePrice)
    if Dg_1 then
        Dg_2, Dh_1 = pcall(vI.getNextUpgradePrice, vl[iz], iA)
        if Dg_2 then
            return tonumber(Dh_1)
        end
        return nil
    end
    return nil
end
local function worker()
    local D4_1
    local D3_1
    while vM() do
        D3_1, D4_1 = pcall(vh)
        if not D3_1 then
            warn("[Ouroboros] Wings For Eggs: " .. tostring(D4_1))
        end
        task.wait(0.18)
        if not vM() then
            break
        end
    end
end
local function fn513()
    return uQ(LocalPlayer:FindFirstChild("Backpack"))
end
local function fn533(g9)
    if type(g9) ~= "table" then
        return nil
    end
    local B6 = u9(g9.id)
    local B7 = B6 and type(B6.Rarity) == "string"
    if B7 then
        return B6.Rarity
    end
    return nil
end
local function fn540(bh, bi)
    State[bh] = bi == true
end
local function fn542(aT, aU)
    return aT.order < aU.order
end
local function fn611(bn)
    State.SelectedRarities = vm(bn)
end
local function fn615()
    local Live = vD:FindFirstChild("Live")
    local Bn = Live and Live:FindFirstChild("Guardians")
    if Bn then
        for i, child in Bn:GetChildren() do
            vQ(child)
        end
    end
    local LocalGuardians = vD:FindFirstChild("LocalGuardians")
    if LocalGuardians then
        for i, child in LocalGuardians:GetChildren() do
            vQ(child)
        end
    end
end
local function fn630()
    return vF() > 0
end
local function fn634(eN)
    local Ab = {}
    local Ac = type(eN) ~= "table" or type(eN.PlotFriends) ~= "table"
    if Ac then
        return Ab
    end
    for k, v in pairs(eN.PlotFriends) do
        local Ac_1 = (uL(v)) and type(v.pos) == "table"
        if Ac_1 then
            local Ac_2 = tonumber(v.pos.x)
            local Ad = tonumber(v.pos.z)
            if Ac_2 and Ad then
                table.insert(Ab, Vector2.new(Ac_2, Ad))
            end
        end
    end
    return Ab
end
local function fn645(bv)
    local xw = tonumber(bv)
    if not xw then
        return
    end
    State.CarryLimit = math.clamp(math.floor(xw), 1, 20)
end
local function onOnClientEvent()
    State.LastDataAt = 0
end
local function fn765(he, hf)
    if type(he) ~= "table" then
        return false
    end
    local Cc = u9(he.id)
    if not uS(Cc) then
        return false
    elseif hf then
        return true
    else
        local Cc_1 = vc(he)
        return Cc_1 ~= nil and State.SelectedRarities[Cc_1] == true
    end
end
local function fn782()
    gethui = uO
end
local function fn792(jm)
    local DK = jm or vR()
    jm = DK
    local DK_1 = type(jm) ~= "table" or type(ve) ~= "table"
    if DK_1 then
        return
    end
    local DK_2 = (tonumber(jm.Rebirth)) or 0
    local DK_3 = ve[DK_2 + 1]
    if type(DK_3) ~= "table" then
        return
    end
    local DL_1 = (tonumber(DK_3.SpeedRequirement)) or 0
    local DL_2 = (tonumber(jm.Speed)) or 0
    if DL_2 >= DL_1 then
        vy(vB.Rebirth)
    end
end
local function fn815(b0)
    if b0 == nil then
        return nil
    end
    local xS = uA[b0] or uA[tostring(b0)] or uA[tonumber(b0)]
    return xS
end
local function fn822(ad)
    return type(ad) == "function"
end
local function fn897(a9)
    local xi = {}
    if type(a9) ~= "table" then
        return xi
    end
    for k, v in pairs(a9) do
        local xj = v == true and type(k) == "string"
        if xj then
            xi[k] = true
        elseif type(v) == "string" then
            xi[v] = true
        end
    end
    return xi
end
local function fn898(bt)
    local xt = bt ~= ""
    local xu = type(bt) == "string" and xt
    if xu then
        State.SellSource = bt
    end
end
local function fn906(iJ, iK)
    local Dj = uB(iJ, iK)
    if Dj == nil then
        return
    end
    if uw(iK) < Dj then
        return
    end
    vy(vB.BuyUpgrade, iJ)
end
local function fn930()
    local yW = (tonumber(State.CarryLimit)) or 1
    return math.clamp(yW, 1, 20)
end
local function fn950()
    local Character = LocalPlayer.Character
    local xz = Character and Character:FindFirstChild("HumanoidRootPart")
    return xz
end
local function fn952()
    return not uI.Unloaded
end
local function fn968()
    connection:Disconnect()
end
local function fn978(hZ)
    local CS = hZ
    local CZ = if CS then 1 else 0
    local CX = 1396 * CZ + 817 * (1 - CZ)
    local CY = 345 * CZ + 3990 * (1 - CZ)
    if not ((CX * 3888 + CY * 570 + CX * CY) % 16777213 == 6105918) then
        CS = vR()
    end
    hZ = CS
    if type(hZ) ~= "table" then
        return
    end
    local CS_1 = uD(hZ)
    local CT = uw(hZ)
    for k, v in u1 do
        local CU = not vM() or not State.AutoBuyWings
        if CU then
            return
        end
        if State.SelectedWings[v] and not CS_1[v] then
            local CU_2 = vJ(v)
            if CU_2 > 0 and CT >= CU_2 then
                vy(vB.BuyWing, v)
                task.wait(0.25)
                CT = uw(vR(true))
            end
        end
    end
end
local function fn995(ax)
    local w9_1
    local w8_1
    if typeof(ax) ~= "Instance" then
        return nil
    end
    w8_1, w9_1 = pcall(require, ax)
    local xa = w8_1 and type(w9_1) == "table"
    if xa then
        return w9_1
    end
    return nil
end
local function fn1052(ij)
    local C5 = ij or vR()
    ij = C5
    if type(ij) ~= "table" then
        return
    end
    local C5_1 = uD(ij)
    local C6 = -1
    local C7
    for k in pairs(C5_1) do
        local C5_2 = vr(k)
        if C5_2 > C6 then
            C6 = C5_2
            C7 = k
        end
    end
    if C7 and C7 ~= ij.EquippedWing and C7 ~= State.LastEquipWing then
        vy(vB.EquipWing, C7)
        State.LastEquipWing = C7
    end
end
local function fn1090(bq)
    State.SelectedWings = vm(bq)
end
local function fn1094()
    return vF() >= uU()
end
local function fn1187(hP)
    local CM = type(vx) == "table" and vx[hP]
    if type(CM) == "table" then
        local CM_1 = (tonumber(CM.Price)) or 0
        return CM_1
    end
    return 0
end
local function fn1217(ho)
    local Cf = ho or vR()
    ho = Cf
    if type(ho) ~= "table" then
        return
    end
    local SellSource = State.SellSource
    local AutoSellAll = State.AutoSellAll
    local Ci = not State.AutoSellSelected
    local Cj = not AutoSellAll
    if Cj ~= false then
        Cj = Ci
    end
    if Cj then
        return
    end
    local Ch_2 = SellSource == "Stands" or SellSource == "Both"
    local Cj_1 = SellSource == "Inventory" or SellSource == "Both"
    local Ci_3 = Cj_1 and type(ho.Inventory) == "table" and type(ho.Inventory.Friends) == "table"
    if Ci_3 then
        for k, v in pairs(ho.Inventory.Friends) do
            if not vM() then
                return
            end
            local Cf_3 = (uT(v, AutoSellAll)) and type(v.uid) == "string"
            if Cf_3 then
                vy(vB.SellInventory, v.uid)
            end
        end
    end
    local Cf_4 = Ch_2 and type(ho.PlotFriends) == "table"
    if Cf_4 then
        for k, v in pairs(ho.PlotFriends) do
            if not vM() then
                return
            end
            if uT(v, AutoSellAll) then
                vy(vB.SellStand, k)
            end
        end
    end
end
local function fn1219(a1)
    if typeof(ut) ~= "Instance" then
        return nil
    end
    local xf = ut:FindFirstChild(a1)
    if xf then
        return uC(xf)
    end
    return nil
end
local function fn1250(c8)
    if type(c8) ~= "string" then
        return nil
    end
    for k, v in uy() do
        if v:GetAttribute("friendUID") == c8 then
            return v
        end
    end
    for k, v in vT() do
        if v:GetAttribute("friendUID") == c8 then
            return v
        end
    end
    return nil
end
local function fn1259()
    local AL = uy()[1]
    if not AL then
        return nil
    end
    local attr = AL:GetAttribute("friendUID")
    local AL_1 = attr ~= ""
    local AN = type(attr) == "string" and AL_1
    if AN then
        return attr
    end
    return nil
end
local function fn1290(eX, eY, eZ, e_)
    local Am = Vector2.new(eY, eZ)
    for k, v in eX do
        if (v - Am).Magnitude < e_ then
            return true
        end
    end
    return false
end
local function fn1293(bQ)
    local xM_1
    local xL = not bQ
    local xL_1
    if xL ~= false then
        xL = State.CachedData
    end
    if xL then
        xL = os.clock() - State.LastDataAt < 0.75
    end
    if xL then
        return State.CachedData
    elseif typeof(vB.DataGet) ~= "Instance" then
        return State.CachedData
    else
        xL_1, xM_1 = pcall(function()
            return vB.DataGet:InvokeServer(LocalPlayer)
        end)
        local xN = xL_1 and type(xM_1) == "table"
        if xN then
            State.CachedData = xM_1
            State.LastDataAt = os.clock()
            return xM_1
        end
        return State.CachedData
    end
end
local function fn1299(b7)
    if type(b7) ~= "table" then
        return false
    elseif b7.incubating == true then
        return true
    else
        local xW = u9(b7.id)
        local xX = type(xW) == "table" and type(xW.Zone) == "string"
        return xX
    end
end
local function fn1305(bI)
    local xC = vi()
    local xD = not xC
    local xH = if xD then 1 else 0
    local xF = 1180 * xH + 1161 * (1 - xH)
    local xG = 1734 * xH + 3692 * (1 - xH)
    if not ((xF * 2356 + xG * 3960 + xF * xG) % 16777213 == 11692840) then
        xD = typeof(bI) ~= "CFrame"
    end
    if xD then
        return false
    end
    xC.AssemblyLinearVelocity = Vector3.zero
    xC.AssemblyAngularVelocity = Vector3.zero
    xC.CFrame = bI
    return true
end
us = nil
ut = nil
uw = nil
ux = nil
uy = nil
uA = nil
uB = nil
uC = nil
uD = nil
uF = nil
uG = nil
uH = nil
uI = nil
connection = nil
uK = nil
uL = nil
uN = nil
uO = nil
uP = nil
uQ = nil
uS = nil
uT = nil
uU = nil
uV = nil
uW = nil
uY = nil
u_ = nil
u1 = nil
u4 = nil
u5 = nil
u6 = nil
u7 = nil
u8 = nil
u9 = nil
LocalPlayer = nil
vb = nil
vc = nil
vd = nil
local Players, uu, uv, uz, uM, uR, uX, uZ, u0, u2, u3
ve = nil
vf = nil
vh = nil
vi = nil
vl = nil
vm = nil
vo = nil
State = nil
vr = nil
vs = nil
vu = nil
CoreGui = nil
vx = nil
vy = nil
vB = nil
vD = nil
vF = nil
vH = nil
vI = nil
vJ = nil
vL = nil
vM = nil
vO = nil
vP = nil
vQ = nil
vR = nil
vS = nil
vT = nil
local Workspace, Lighting, vk, TeleportService, vq, vt, vw, GuiService, vA, HttpService, VirtualUser, UserInputService, RunService, vN
local vX_1, vX_4
local v6 = if not game:IsLoaded() then 1 else 0
if v6 == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, u6, u1, uX, uR, uO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local vW_1, vW_7
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local vV = "OuroborosWingsForEggs"
local vV_1
u6 = { "Forest", "Beach", "Desert", "Arctic", "Volcano", "Void", "Cloudlands" }
u1 = { "Bamboo", "Bloom", "Woodland", "Armored", "Jungle", "Skeleton", "Cyber" }
uX = { "Stands", "Inventory", "Both" }
uR = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Cosmic",
    "Secret",
    "Eternal",
    "Divine",
    "Exclusive"
}
uO = fns.fn195
if getgenv then
    getgenv().gethui = uO
end
uI, vD, u2, uC, us, vM = nil, nil, nil, nil, nil, nil
pcall(fn782)
local function vU(y)
    local wP
    local wO
    local wN
    wN = nil
    wO = nil
    wP = nil
    local wQ = y ~= ""
    local wR = type(y) == "string" and wQ
    assert(wR, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    wN = getgenv()
    assert(type(wN) == "table", "getgenv did not return a table")
    local wQ_1 = wN[y]
    if wQ_1 ~= nil then
        local wR_1 = type(wQ_1) == "table" and type(wQ_1.Unload) == "function"
        assert(wR_1, "Namespace is occupied")
        wQ_1.Unload()
        assert(wN[y] == nil, "Previous instance did not release its namespace")
    end
    wO = {}
    wP = { State = {}, Unloaded = false }
    wP.Track = function(F)
        assert(type(F) == "function", "Cleanup must be callable")
        if wP.Unloaded then
            F()
        else
            table.insert(wO, F)
        end
        return F
    end
    wP.Unload = function()
        local wG_1
        local wF_1
        if wP.Unloaded then
            return
        end
        wP.Unloaded = true
        local wD = {}
        local wK = #wO
        local wJ = -1
        while false and wK <= 1 or true and wK >= 1 do
            local wL = wK
            local wE_1 = table.remove(wO, wL)
            wF_1, wG_1 = pcall(wE_1)
            if not wF_1 then
                table.insert(wD, tostring(wG_1))
            end
            wK += wJ
        end
        table.clear(wP.State)
        if #wD > 0 then
            error("Cleanup incomplete: " .. table.concat(wD, "; "), 0)
        end
        if wN[y] == wP then
            wN[y] = nil
        end
    end
    wN[y] = wP
    return wP
end
u2 = function(S, T)
    local wU = type(S) == "table" and type(S.Track) == "function"
    assert(wU, "FeatureAPI required")
    local wU_1 = type(T) == "table" and type(T.OnUnload) == "function"
    assert(wU_1, "UI library required")
    assert(type(T.Unload) == "function", "UI unload required")
    S.Track(function()
        if not T.Unloaded then
            T:Unload()
        end
    end)
    T:OnUnload(function()
        S.Unload()
    end)
end
uI = vU(vV)
uC = fns.fn24
us = fn822
vM = fn952
local vZ = uC(ReplicatedStorage)
local vZ_1
vD = uC(Workspace)
local vY = (us(fireproximityprompt)) and fireproximityprompt
local vU_1 = vY or nil
vw, State = nil, nil
vw = vU_1
State = uI.State
State.AutoSteal = false
State.AutoPlace = false
State.FreezeGuards = false
State.AutoHatch = false
State.AutoUpgradePets = false
State.AutoSellSelected = false
State.AutoSellAll = false
State.AutoUpgradeFloor = false
State.AutoBuyWings = false
State.AutoEquipBestWing = false
State.AutoUpgradeSpeed = false
State.AutoUpgradeCarry = false
State.AutoUpgradeStamina = false
State.AutoClaimIndex = false
State.AutoRebirth = false
State.SelectedZones = {}
State.SelectedRarities = {}
State.SelectedWings = {}
State.SellSource = "Both"
State.CarryLimit = 1
State.OutingSteals = 0
State.SkipEggs = {}
State.LastDataAt = 0
State.CachedData = nil
State.LastActionAt = 0
State.LastIndexAt = 0
State.LastRebirthAt = 0
State.LastFloorAt = 0
State.LastWingAt = 0
State.LastUpgradeAt = 0
State.LastHatchAt = 0
State.LastPetUpgradeAt = 0
State.LastPlaceAt = 0
State.LastEquipWing = ""
for k, v in u6 do
    State.SelectedZones[v] = true
end
for k, v in uR do
    State.SelectedRarities[v] = true
end
for k, v in u1 do
    State.SelectedWings[v] = true
end
ut, vW_1, vV_1, uY, vX_1 = nil, nil, nil, nil, nil
local vU_2 = 19
repeat
    local vY_1 = (vU_2 * 3 + 1) % 5 + 1
    if vY_1 <= 3 then
        if vY_1 <= 2 then
            if vY_1 <= 1 then
                if vU_2 * 37141623 + 7 + 3 <= vU_2 * 37141623 + 7 + 3 + 6 then
                    ut = uY(vZ, "SharedModules", "Network", "Remotes")
                else
                    uY = vZ(ut, "SharedModules", "Network", "Remotes")
                end
                vU_2 = (vU_2 + 17) % 20
            else
                local v__1 = {
                    "gjzmlpuxh",
                    "iasvewoel",
                    "cieyx",
                    "sggtlen",
                    "mzmrut",
                    "bapqwv",
                    "mpffs",
                    "geir",
                    "ahpw",
                    "iowm",
                    "xfk"
                }
                local J0 = vU_2
                local v0_1 = v__1[J0 % 11 + 1]
                if v0_1:len() >= v0_1:reverse():rep(J0 % 3 + 2):len() then
                    vZ = vW_1(uY, "SharedModules", "Database")
                else
                    vW_1 = uY(vZ, "SharedModules", "Database")
                end
                vU_2 = (vU_2 + 17) % 20
            end
        else
            if vU_2 * 46696123 + 8 + 1 >= vU_2 * 46696123 + 8 + 1 + 2 then
                vX_1 = (vZ(vV_1(uY, "SharedModules", "Shared")))
            else
                vV_1 = (vX_1(uY(vZ, "SharedModules", "Shared")))
            end
            vU_2 = (vU_2 + 12) % 20
        end
    elseif vY_1 <= 4 then
        if (not uY or not vW_1) and (ut or vU_2) or not vX_1 and vU_2 and (not vW_1 and vW_1) or not ((not uY or not vW_1) and (ut or vU_2) or not vX_1 and vU_2 and (not vW_1 and vW_1)) then
            uY = fns.fn58
        else
            ut = fns.fn58
        end
        vU_2 = (vU_2 + 17) % 20
    else
        local J1 = bit32.rrotate(bit32.bxor(bit32.lrotate(vU_2, 1), string.byte(tostring(uY))), 17)
        if bit32.bxor(bit32.lrotate(bit32.bxor(J1, 2984924707), 18), 1485752233) == bit32.lrotate(J1, 18) then
            vX_1 = fn995
        else
            uY = fn995
        end
        vU_2 = (vU_2 + 17) % 20
    end
until (vU_2 * 11 + 17) % 20 == 6
if not vV_1 then
    local vU_3 = 2
    repeat
        local vY_2 = {
            "vlvfpak",
            "hhmsvehdz",
            "bibgwqnyjv",
            "levlwgols",
            "fmwulfzqp",
            "fxihjvtju",
            "jchdtigfdjrt",
            "elepzrxzudau",
            "kfhnwtgez",
            "tlrnmzq",
            "emletesxfr",
            "ivuphqkr",
            "vffva",
            "jae",
            "eeibztgyhx"
        }
        if vY_2[(vU_3 * 65 + 40) % 15 + 1] < vY_2[(vU_3 * 65 + 40) % 15 + 1] then
            vX_1 = vV_1(vZ(uY, "SharedModules", "Shared", "SharedFunctions"))
        else
            vV_1 = vX_1(uY(vZ, "SharedModules", "Shared", "SharedFunctions"))
        end
        vU_3 = (vU_3 + 1) % 4
    until (vU_3 * 1 + 2) % 4 == 1
end
local vU_4 = vW_1
vI = vV_1
if vU_4 then
    vU_4 = vW_1:FindFirstChild("Friends")
end
local vV_2 = vX_1(vU_4)
local vU_5 = vW_1 and vW_1:FindFirstChild("Wings")
vx = vX_1(vU_5)
local vU_6 = vW_1 and vW_1:FindFirstChild("UpgradeTracks")
vl = vX_1(vU_6)
local vU_7 = vW_1 and vW_1:FindFirstChild("Rebirths")
ve = vX_1(vU_7)
local vU_8 = vW_1 and vW_1:FindFirstChild("BaseLevelPrices")
u7, vZ_1 = nil, nil
local vY_3 = 2
repeat
    if (vY_3 * 1 + 1) % 2 + 1 <= 1 then
        local vW_3 = (vector.create((vY_3 * 6 + 4) % 11 + 1, (vY_3 * 7 + 13) % 13 + 1, (vY_3 * 5 + 13) % 17 + 1))
        local v__2 = (vector.create((vY_3 * 7 + 8) % 11 + 1, (vY_3 * 1 + 3) % 13 + 1, (vY_3 * 14 + 16) % 17 + 1))
        local v0_2 = (vector.create((vY_3 * 5 + 6) % 11 + 1, (vY_3 * 5 + 5) % 13 + 1, (vY_3 * 7 + 14) % 17 + 1))
        local v1_1 = (vector.create((vY_3 * 7 + 7) % 11 + 1, (vY_3 * 10 + 4) % 13 + 1, (vY_3 * 7 + 10) % 17 + 1))
        if vector.dot(vector.cross(vW_3, v__2), (vector.cross(v0_2, v1_1))) == vector.dot(vW_3, v0_2) * vector.dot(v__2, v1_1) - vector.dot(vW_3, v1_1) * vector.dot(v__2, v0_2) + 4 then
            vI = type(vZ_1) == "table"
        else
            vZ_1 = type(vI) == "table"
        end
        vY_3 = (vY_3 + 5) % 8
    else
        local vW_4 = {
            "wjcocfof",
            "bpzisju",
            "qme",
            "yqyaio",
            "apimhescdvqc",
            "dln",
            "kjit",
            "ikao",
            "mlf",
            "eagg",
            "kduxlg"
        }
        if vW_4[(vY_3 * 40 + 72) % 11 + 1] < vW_4[(vY_3 * 40 + 72) % 11 + 1] then
            vU_8 = vX_1(u7)
        else
            u7 = vX_1(vU_8)
        end
        vY_3 = (vY_3 + 7) % 8
    end
until (vY_3 * 5 + 4) % 8 == 2
if vZ_1 then
    local vU_9 = 7
    repeat
        local J2 = bit32.rrotate(bit32.bxor(bit32.lrotate(vU_9, 25), string.byte(tostring(vU_9))), 26)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(J2, 103525371), 3650696346), (bit32.bxor(bit32.band(J2, 4191441924), 665515229))), 3650696346), 665515229) ~= J2 then
            vI = type(vZ_1.RarityOrders) == "table"
        else
            vZ_1 = type(vI.RarityOrders) == "table"
        end
        vU_9 = (vU_9 + 4) % 8
    until (vU_9 * 3 + 0) % 8 == 1
end
if vZ_1 then
    local vU_10 = {}
    for k, v in pairs(vI.RarityOrders) do
        if type(k) == "string" then
            local insert = table.insert
            local vX_2 = (tonumber(v)) or 0
            insert(vU_10, { name = k, order = vX_2 })
        end
    end
    local vY_4 = 1
    repeat
        local vW_6 = (vector.create((vY_4 * 6 + 4) % 11 + 1, (vY_4 * 7 + 5) % 13 + 1, (vY_4 * 12 + 6) % 17 + 1))
        local vX_3 = (vector.create((vY_4 * 7 + 5) % 11 + 1, (vY_4 * 3 + 10) % 13 + 1, (vY_4 * 10 + 8) % 17 + 1))
        local Kk = vector.dot(vW_6, vX_3)
        if Kk * Kk >= vector.dot(vW_6, vW_6) * vector.dot(vX_3, vX_3) + 1 then
            table.sort(vU_10, fn542)
        else
            table.sort(vU_10, fn542)
        end
        vY_4 = (vY_4 + 0) % 4
    until (vY_4 * 3 + 2) % 4 == 1
    if #vU_10 > 0 then
        table.clear(uR)
        for k, v in vU_10 do
            table.insert(uR, v.name)
        end
    end
end
uA = {}
local uE = {}
if type(vV_2) == "table" then
    for k, v in pairs(vV_2) do
        if type(v) == "table" then
            uA[tostring(k)] = v
            if type(k) == "number" then
                uA[k] = v
            end
            if type(v.Name) == "string" then
                uE[v.Name] = v
            end
        end
    end
end
vB, u3, u0, vX_4, vW_7, vy, vm, uZ, vi, u4, uN, uw, vR, u9, uS, uL, uu, uP, vH, vd, uQ, uy, vT, vF, vA, vq, uU, uK, vt, u_, u5, vL, vb, uv, vk, uM, vN, uz, vP, uV, vQ, vf, uF, uH, vc, uT, vS, uD, vJ, vr, u8, vs, uB, vu, uW, uG, vo, ux, vh = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vV_3 = 10
repeat
    local vY_5 = (vV_3 * 5 + 18) % 22 + 1
    if vY_5 <= 11 then
        if vY_5 <= 6 then
            if vY_5 <= 3 then
                if vY_5 <= 2 then
                    if vY_5 <= 1 then
                        local vZ_2 = (vector.create((vV_3 * 1 + 5) % 11 + 1, (vV_3 * 1 + 3) % 13 + 1, (vV_3 * 5 + 7) % 17 + 1))
                        local v__3 = (vector.create((vV_3 * 5 + 9) % 11 + 1, (vV_3 * 10 + 1) % 13 + 1, (vV_3 * 4 + 7) % 17 + 1))
                        local v0_3 = (vector.create((vV_3 * 1 + 7) % 11 + 1, (vV_3 * 9 + 12) % 13 + 1, (vV_3 * 15 + 3) % 17 + 1))
                        local v1_2 = (vector.create((vV_3 * 3 + 5) % 5 + 1, (vV_3 * 5 + 1) % 7 + 1, (vV_3 * 2 + 5) % 9 + 1))
                        if vector.dot(vector.cross(vZ_2, (vector.cross(v__3, v0_3))), v1_2) == vector.dot(v__3 * vector.dot(vZ_2, v0_3) - v0_3 * vector.dot(vZ_2, v__3), v1_2) + 1 then
                            ux = fns.fn2
                            uW = fns.fn48
                            vh = fn215
                            vo = fn792
                            uG = fn385
                        else
                            uW = fns.fn2
                            uG = fns.fn48
                            vo = fn215
                            ux = fn792
                            vh = fn385
                        end
                        vV_3 = (vV_3 + 141) % 176
                    else
                        if (vS and not vm and (uL or uM) or (vt or not uM or (not uM or not u0))) and (not uM and not vS and (uM or vt) and (vm or not u0 or uL and vt)) and ((uM and vm or not u0 and not vm or vt and uM and (vt or uM)) and ((vm or not vm) and (not u0 or not uM) or (not uL or not vt) and (vt and not vt))) or not ((vS and not vm and (uL or uM) or (vt or not uM or (not uM or not u0))) and (not uM and not vS and (uM or vt) and (vm or not u0 or uL and vt)) and ((uM and vm or not u0 and not vm or vt and uM and (vt or uM)) and ((vm or not vm) and (not u0 or not uM) or (not uL or not vt) and (vt and not vt)))) then
                            vX_4 = typeof(vB.DataUpdated) == "Instance"
                        else
                            vB = typeof(vX_4.DataUpdated) == "Instance"
                        end
                        vV_3 = (vV_3 + 53) % 176
                    end
                else
                    local Jz = bit32.rrotate(bit32.bxor(bit32.lrotate(vV_3, 30), string.byte(tostring(vQ))), 30)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Jz, 3315432591), 4098627294), (bit32.bxor(bit32.band(Jz, 979534704), 1779485838))), 4098627294), 1779485838) == Jz then
                        vW_7 = fn1219
                    else
                        vR = fn1219
                    end
                    vV_3 = (vV_3 + 9) % 176
                end
            elseif vY_5 <= 5 then
                if vY_5 <= 4 then
                    if (vV_3 * 1 + 6) * 5 % 4 == ((vV_3 * 1 + 6) * 5 + 4) % 4 then
                        vB = {
                            PickupFriend = vW_7("Pickup Friend"),
                            PlaceFriend = vW_7("Place Friend"),
                            BuyWing = vW_7("Buy Wing"),
                            EquipWing = vW_7("Equip Wing"),
                            BuyUpgrade = vW_7("Buy Upgrade"),
                            UpgradeFriend = vW_7("Upgrade Friend"),
                            UpgradeCarryLimit = vW_7("Upgrade Carry Limit"),
                            Rebirth = vW_7("Rebirth"),
                            SellAll = vW_7("Sell All Friends"),
                            SellInventory = vW_7("Sell Friend From Inventory"),
                            SellStand = vW_7("Sell Friend From Stand"),
                            SkipIncubation = vW_7("Skip Incubation"),
                            OpenLuckyBlock = vW_7("Open Lucky Block"),
                            ClaimAllIndex = vW_7("Claim All Index Rewards"),
                            ClaimIndex = vW_7("Claim Index Reward"),
                            PurchaseFloor = vW_7("Purchase Floor"),
                            DataGet = vW_7("Data: Get"),
                            DataUpdated = vW_7("Data: Updated")
                        }
                    else
                        vW_7 = {
                            SellAll = vB("Sell All Friends"),
                            OpenLuckyBlock = vB("Open Lucky Block"),
                            SellInventory = vB("Sell Friend From Inventory"),
                            Rebirth = vB("Rebirth"),
                            ClaimAllIndex = vB("Claim All Index Rewards"),
                            PickupFriend = vB("Pickup Friend"),
                            UpgradeFriend = vB("Upgrade Friend"),
                            BuyUpgrade = vB("Buy Upgrade"),
                            DataUpdated = vB("Data: Updated"),
                            BuyWing = vB("Buy Wing"),
                            EquipWing = vB("Equip Wing"),
                            SellStand = vB("Sell Friend From Stand"),
                            DataGet = vB("Data: Get"),
                            UpgradeCarryLimit = vB("Upgrade Carry Limit"),
                            SkipIncubation = vB("Skip Incubation"),
                            ClaimIndex = vB("Claim Index Reward"),
                            PurchaseFloor = vB("Purchase Floor"),
                            PlaceFriend = vB("Place Friend")
                        }
                    end
                    vV_3 = (vV_3 + 97) % 176
                else
                    if (vV_3 * 1 + 1) * 13 % 4 == ((vV_3 * 1 + 1) * 13 + 12) % 4 then
                        vy = fns.fn187
                        vm = fn897
                        uZ = fns.fn117
                        uI.SetFlag = fn540
                        uI.SetSelectedZones = fn336
                        uI.SetSelectedRarities = fn611
                        uI.SetSelectedWings = fn1090
                        uI.SetSellSource = fn898
                        uI.SetCarryLimit = fn645
                        vi = fn950
                        u4 = function(bD)
                            if typeof(bD) ~= "Vector3" then
                                return
                            end
                            pcall(function()
                                LocalPlayer:RequestStreamAroundAsync(bD)
                            end)
                        end
                    else
                        u4 = fns.fn187
                        uI = fn897
                        vy = fns.fn117
                        vi.SetFlag = fn540
                        vi.SetSelectedZones = fn336
                        vi.SetSelectedRarities = fn611
                        vi.SetSelectedWings = fn1090
                        vi.SetSellSource = fn898
                        vi.SetCarryLimit = fn645
                        vm = fn950
                        uZ = function(bD)
                            if typeof(bD) ~= "Vector3" then
                                return
                            end
                            pcall(function()
                                LocalPlayer:RequestStreamAroundAsync(bD)
                            end)
                        end
                    end
                    vV_3 = (vV_3 + 75) % 176
                end
            else
                if vV_3 * 130406153 + 9 + 3 >= vV_3 * 130406153 + 9 + 3 + 6 then
                    uS = fn1305
                else
                    uN = fn1305
                end
                vV_3 = (vV_3 + 75) % 176
            end
        elseif vY_5 <= 9 then
            if vY_5 <= 8 then
                if vY_5 <= 7 then
                    if (uW and uW and (not u0 or u0) and ((u0 or not uW) and (not uW or u0)) or (not uW and not u0 or not uW and not uW or (uW or uW) and (u0 and not u0))) and not (uW and uW and (not u0 or u0) and ((u0 or not uW) and (not uW or u0)) or (not uW and not u0 or not uW and not uW or (uW or uW) and (u0 and not u0))) then
                        vR = fn267
                        uw = fn1293
                        uS = fn815
                        u9 = fns.fn10
                    else
                        uw = fn267
                        vR = fn1293
                        u9 = fn815
                        uS = fns.fn10
                    end
                    vV_3 = (vV_3 + 119) % 176
                else
                    if (vV_3 * 3 + 1) * 13 % 4 == ((vV_3 * 3 + 1) * 13 + 12) % 4 then
                        uL = fn1299
                        uu = function(cc)
                            local x3_2
                            if typeof(cc) ~= "Instance" then
                                return nil
                            end
                            local x1 = uE[cc.Name]
                            local x2 = x1 and type(x1.Zone) == "string"
                            local x2_3
                            if x2 then
                                return x1.Zone
                            end
                            local x1_4 = uY(vD, "Map", "SpawnParts")
                            if not x1_4 then
                                return nil
                            end
                            x2_3, x3_2 = pcall(function()
                                return cc:GetPivot()
                            end)
                            if not x2_3 or not x3_2 then
                                return nil
                            end
                            local x2_4 = math.huge
                            local Name = nil
                            for i, child in x1_4:GetChildren() do
                                local x1_5 = (child:IsA("BasePart")) and child
                                local x5_3 = x1_5 or child:FindFirstChildWhichIsA("BasePart")
                                if x5_3 then
                                    local Magnitude = (x5_3.Position - x3_2.Position).Magnitude
                                    if Magnitude < x2_4 then
                                        x2_4 = Magnitude
                                        Name = child.Name
                                    end
                                end
                            end
                            return Name
                        end
                    else
                        uu = fn1299
                        uL = function(cc)
                            local x3_1
                            if typeof(cc) ~= "Instance" then
                                return nil
                            end
                            local x1 = uE[cc.Name]
                            local x2 = x1 and type(x1.Zone) == "string"
                            local x2_1
                            if x2 then
                                return x1.Zone
                            end
                            local x1_1 = uY(vD, "Map", "SpawnParts")
                            if not x1_1 then
                                return nil
                            end
                            x2_1, x3_1 = pcall(function()
                                return cc:GetPivot()
                            end)
                            if not x2_1 or not x3_1 then
                                return nil
                            end
                            local x2_2 = math.huge
                            local Name = nil
                            for i, child in x1_1:GetChildren() do
                                local x1_2 = (child:IsA("BasePart")) and child
                                local x5_1 = x1_2 or child:FindFirstChildWhichIsA("BasePart")
                                if x5_1 then
                                    local Magnitude = (x5_1.Position - x3_1.Position).Magnitude
                                    if Magnitude < x2_2 then
                                        x2_2 = Magnitude
                                        Name = child.Name
                                    end
                                end
                            end
                            return Name
                        end
                    end
                    vV_3 = (vV_3 + 9) % 176
                end
            else
                local vZ_3 = {
                    "nkgyap",
                    "udbiofgoo",
                    "pik",
                    "waujhs",
                    "zdwhbcdans",
                    "jsxqnxxxfkb",
                    "hkujiko",
                    "xdtp",
                    "gpjri",
                    "zvhbpqrzu",
                    "uawxteekzjjr"
                }
                if vZ_3[(vV_3 * 87 + 100) % 11 + 1] < vZ_3[(vV_3 * 87 + 100) % 11 + 1] then
                    vH = fns.fn141
                    uP = fn473
                else
                    uP = fns.fn141
                    vH = fn473
                end
                vV_3 = (vV_3 + 97) % 176
            end
        elseif vY_5 <= 10 then
            local vZ_4 = {
                "wmx",
                "ueu",
                "ntpufk",
                "jpvzmumtr",
                "srxdaj",
                "nckdqs",
                "rcgbdxez",
                "itv",
                "hmwyoahw",
                "xoabqjjxnoo"
            }
            local I0 = vV_3
            local v__4 = vZ_4[I0 % 10 + 1]
            if v__4:len() <= v__4:gsub("(.)", "%1%1", I0 % 3 % 2 + 1):len() then
                vd = fn373
            else
                uS = fn373
            end
            vV_3 = (vV_3 + 75) % 176
        else
            if vV_3 * 121526219 + 9 + 7 <= vV_3 * 121526219 + 9 + 7 + 2 then
                uQ = fns.fn200
            else
                uP = fns.fn200
            end
            vV_3 = (vV_3 + 141) % 176
        end
    elseif vY_5 <= 17 then
        if vY_5 <= 14 then
            if vY_5 <= 13 then
                if vY_5 <= 12 then
                    local Kl = bit32.rrotate(bit32.bxor(bit32.lrotate(vV_3, 22), string.byte(tostring(vJ))), 23)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Kl, 1934161519), 4141916829), (bit32.bxor(bit32.band(Kl, 2360805776), 1413278657))), 4141916829), 1413278657) ~= Kl then
                        vA = fn344
                        vF = fn513
                        vq = fn426
                        vT = fn630
                        uy = fn1250
                    else
                        uy = fn344
                        vT = fn513
                        vF = fn426
                        vA = fn630
                        vq = fn1250
                    end
                    vV_3 = (vV_3 + 31) % 176
                else
                    local J_ = bit32.rrotate(bit32.bxor(bit32.lrotate(vV_3, 22), string.byte(tostring(vf))), 25)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(J_, 4242932311), 2), 4086827359) == bit32.lrotate(J_, 2) then
                        uU = fn930
                    else
                        vt = fn930
                    end
                    vV_3 = (vV_3 + 75) % 176
                end
            else
                local vZ_5 = (vector.create((vV_3 * 6 + 7) % 11 + 1, (vV_3 * 5 + 8) % 13 + 1, (vV_3 * 4 + 13) % 17 + 1))
                local v__5 = (vector.create((vV_3 * 3 + 1) % 11 + 1, (vV_3 * 11 + 13) % 13 + 1, (vV_3 * 14 + 4) % 17 + 1))
                local v0_4 = (vector.create((vV_3 * 1 + 3) % 11 + 1, (vV_3 * 6 + 13) % 13 + 1, (vV_3 * 3 + 8) % 17 + 1))
                local v1_3 = (vector.create((vV_3 * 4 + 1) % 5 + 1, (vV_3 * 4 + 3) % 7 + 1, (vV_3 * 1 + 5) % 9 + 1))
                if vector.dot(vector.cross(vZ_5, (vector.cross(v__5, v0_4))), v1_3) == vector.dot(v__5 * vector.dot(vZ_5, v0_4) - v0_4 * vector.dot(vZ_5, v__5), v1_3) then
                    uK = function(dl)
                        local y1
                        local y2 = typeof(dl) ~= "Instance" or not dl:IsA("ProximityPrompt")
                        if y2 then
                            return false
                        elseif vw then
                            local y2_1 = pcall(vw, dl)
                            if y2_1 then
                                return true
                            end
                            y1 = dl.HoldDuration
                            local y2_2 = pcall(function()
                                dl.HoldDuration = 0
                                dl:InputHoldBegin()
                                task.wait(0.05)
                                local y0 = if not vM() then 1 else 0
                                if y0 == 1 then
                                    return
                                end
                                dl:InputHoldEnd()
                            end)
                            pcall(function()
                                dl.HoldDuration = y1
                            end)
                            return y2_2
                        else
                            y1 = dl.HoldDuration
                            local y2_3 = pcall(function()
                                dl.HoldDuration = 0
                                dl:InputHoldBegin()
                                task.wait(0.05)
                                local y0 = if not vM() then 1 else 0
                                if y0 == 1 then
                                    return
                                end
                                dl:InputHoldEnd()
                            end)
                            pcall(function()
                                dl.HoldDuration = y1
                            end)
                            return y2_3
                        end
                    end
                else
                    uK = fn1094
                end
                vV_3 = (vV_3 + 31) % 176
            end
        elseif vY_5 <= 16 then
            if vY_5 <= 15 then
                if (not vo and uP and (not vo and uP) or vo and vo and (uP and not uP)) and not (not vo and uP and (not vo and uP) or vo and vo and (uP and not uP)) then
                    u5 = fn266
                    vt = function()
                        local SelectedZones = State.SelectedZones
                        if not uZ(SelectedZones) then
                            return nil
                        end
                        local zh = vi()
                        local zh_3 = zh and zh.Position or Vector3.zero
                        local zi_2 = nil
                        local zh_4 = math.huge
                        local SkipEggs = State.SkipEggs
                        for k, v in vt() do
                            local zx = v
                            if not SkipEggs[zx] then
                                local zl = uu(zx)
                                local zl_5
                                local zm = zl and SelectedZones[zl]
                                local zm_4
                                if zm then
                                    local StealPrompt = zx:FindFirstChild("StealPrompt", true)
                                    local zm_3 = StealPrompt and StealPrompt:IsA("ProximityPrompt")
                                    if zm_3 then
                                        zl_5, zm_4 = pcall(function()
                                            return zx:GetPivot()
                                        end)
                                        if zl_5 and zm_4 then
                                            local Magnitude = (zm_4.Position - zh_3).Magnitude
                                            if Magnitude < zh_4 then
                                                zh_4 = Magnitude
                                                zi_2 = zx
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return zi_2
                    end
                    u_ = fn280
                else
                    vt = fn266
                    u_ = function()
                        local SelectedZones = State.SelectedZones
                        if not uZ(SelectedZones) then
                            return nil
                        end
                        local zh = vi()
                        local zh_1 = zh and zh.Position or Vector3.zero
                        local zi_1 = nil
                        local zh_2 = math.huge
                        local SkipEggs = State.SkipEggs
                        for k, v in vt() do
                            local zx = v
                            if not SkipEggs[zx] then
                                local zl = uu(zx)
                                local zl_2
                                local zm = zl and SelectedZones[zl]
                                local zm_2
                                if zm then
                                    local StealPrompt = zx:FindFirstChild("StealPrompt", true)
                                    local zm_1 = StealPrompt and StealPrompt:IsA("ProximityPrompt")
                                    if zm_1 then
                                        zl_2, zm_2 = pcall(function()
                                            return zx:GetPivot()
                                        end)
                                        if zl_2 and zm_2 then
                                            local Magnitude = (zm_2.Position - zh_1).Magnitude
                                            if Magnitude < zh_2 then
                                                zh_2 = Magnitude
                                                zi_1 = zx
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        return zi_1
                    end
                    u5 = fn280
                end
                vV_3 = (vV_3 + 75) % 176
            else
                if vV_3 * 93613109 + 1 + 4 >= vV_3 * 93613109 + 1 + 4 + 2 then
                    vb = fn338
                    vL = fn334
                else
                    vL = fn338
                    vb = fn334
                end
                vV_3 = (vV_3 + 97) % 176
            end
        else
            local vZ_6 = {
                "wuujcqn",
                "awbhjmaezn",
                "fmtau",
                "rqf",
                "hhovkqlfynk",
                "shznp",
                "udy",
                "xlkqxma",
                "itgrgwwfzr",
                "bkohcrrlkm",
                "szqgcnvufmr",
                "scp"
            }
            local Kd = vV_3
            local v__6 = vZ_6[Kd % 12 + 1]
            if v__6:len() <= v__6:gsub("(.)", "%1%1", Kd % 3 % 2 + 1):len() then
                uv = fns.fn38
                vk = fn634
                uM = fn1290
            else
                uM = fns.fn38
                uv = fn634
                vk = fn1290
            end
            vV_3 = (vV_3 + 75) % 176
        end
    elseif vY_5 <= 20 then
        if vY_5 <= 19 then
            if vY_5 <= 18 then
                if vV_3 * 3419813 + 6 + 3 <= vV_3 * 3419813 + 6 + 3 + 1 then
                    vN = function(e4)
                        local Av, Aw, Ax, Ay, Az, AD, AE, AI, AJ
                        local AA = 6
                        while true do
                            local AA_2 = 1952 - AA
                            do
                                if AA_2 < 1940 then
                                    if AA_2 < 1936 then
                                        if AA_2 < 1935 then
                                            if AA_2 < 1934 then
                                                if AA_2 < 1932 then
                                                    if AA_2 < 1931 then
                                                        break
                                                    end
                                                    return Av.CFrame + Vector3.new(0, 6, 0)
                                                elseif AA_2 < 1933 then
                                                    if AA_2 == 1932 then
                                                        Av = Ay
                                                        Ax = Av
                                                        AA = if Ax then 16 else 7
                                                    else
                                                        AA = 4708
                                                        continue
                                                    end
                                                elseif AA_2 == 1933 then
                                                    AI = 0
                                                    AA = 17
                                                else
                                                    AA = 1975
                                                    continue
                                                end
                                            elseif AA_2 == 1934 then
                                                return Az
                                            else
                                                AA = 10141
                                                continue
                                            end
                                        else
                                            AA = if AI <= 7 then 8 else 10
                                        end
                                    elseif AA_2 < 1938 then
                                        if AA_2 < 1937 then
                                            Ax = Av:IsA("BasePart")
                                            AA = 7
                                        else
                                            AE = AD
                                            AA = 19
                                        end
                                    elseif AA_2 < 1939 then
                                        if AA_2 == 1938 then
                                            AD = 6
                                            AA = 5
                                        else
                                            AA = 1942
                                            continue
                                        end
                                    else
                                        Ay = AJ * math.pi * 0.25
                                        Az = Ax(math.cos(Ay) * AE, math.sin(Ay) * AE)
                                        AA = if Az then 18 else 11
                                    end
                                elseif AA_2 < 1945 then
                                    if AA_2 < 1943 then
                                        if AA_2 < 1942 then
                                            if AA_2 < 1941 then
                                                return Ay
                                            end
                                            AA = 3
                                        elseif AA_2 == 1942 then
                                            AA = 9
                                        else
                                            AA = 5929
                                            continue
                                        end
                                    elseif AA_2 < 1944 then
                                        AD += 6
                                        AA = 5
                                    else
                                        AJ = AI
                                        AA = 13
                                    end
                                elseif AA_2 < 1950 then
                                    if AA_2 < 1947 then
                                        if AA_2 < 1946 then
                                            AA = if not Ax then 2 else 4
                                        elseif AA_2 == 1946 then
                                            Ax = vH()
                                            Ay = Ax
                                            AA = if Ay then 1 else 20
                                        else
                                            AA = 1936
                                            continue
                                        end
                                    elseif AA_2 < 1948 then
                                        if AA_2 == 1947 then
                                            AA = if AD <= 24 then 15 else 21
                                        else
                                            AA = 1950
                                            continue
                                        end
                                    elseif AA_2 < 1949 then
                                        Aw = vk(e4)
                                        Ax = function(fd, fe)
                                            if Vector2.new(fd, fe).Magnitude > 28 then
                                                return nil
                                            elseif uM(Aw, fd, fe, 6) then
                                                return nil
                                            else
                                                return Av.CFrame * CFrame.new(fd, 6, fe)
                                            end
                                        end
                                        Ay = Ax(0, 0)
                                        AA = if Ay then 12 else 14
                                    elseif AA_2 == 1949 then
                                        AI += 1
                                        AA = 17
                                    else
                                        AA = 1945
                                        continue
                                    end
                                elseif AA_2 < 4708 then
                                    if AA_2 < 1975 then
                                        if AA_2 < 1951 then
                                            return nil
                                        elseif AA_2 < 1952 then
                                            Ay = Ax:FindFirstChild("Base")
                                            AA = 20
                                        else
                                            break
                                        end
                                    else
                                        break
                                    end
                                else
                                    break
                                end
                            end
                        end
                    end
                    uz = fn1259
                    vP = function(fu)
                        local AT_14, AT_15, AT_16
                        local AR = fu or vR()
                        fu = AR
                        if type(fu) ~= "table" then
                            return false
                        end
                        local Character = LocalPlayer.Character
                        if not Character then
                            return false
                        elseif not vA() then
                            local AR_10 = uv(fu)
                            local AS_5 = AR_10[1]
                            if not AS_5 then
                                return false
                            end
                            local AP = vq(AS_5.uid)
                            if AP and AP.Parent ~= Character then
                                pcall(function()
                                    AP.Parent = Character
                                end)
                            elseif not AP then
                                vy(vB.PickupFriend, AS_5.uid)
                            end
                            local AR_12 = os.clock() + 2
                            while true do
                                local AS_6 = (vM()) and State.AutoPlace and os.clock() < AR_12 and not vA()
                                if AS_6 then
                                    task.wait(0.1)
                                    continue
                                end
                                break
                            end
                            local AS_7 = uz()
                            local AR_13 = not vM() or not AS_7 or not State.AutoPlace
                            if AR_13 then
                                return false
                            end
                            local AR_14 = vH()
                            local AT_9 = AR_14 and AR_14:FindFirstChild("Base")
                            local AR_15 = AT_9
                            if AT_9 then
                                AT_9 = AR_15:IsA("BasePart")
                            end
                            if not AT_9 then
                                return false
                            end
                            local AT_10 = vN(fu)
                            if not AT_14 then
                                return false
                            end
                            u4(AT_10.Position)
                            uN(AT_10)
                            task.wait(0.25)
                            local AT_11 = not vM() or not State.AutoPlace or uz() ~= AS_7
                            if AT_15 then
                                return false
                            end
                            local AT_12 = vi()
                            if not AT_16 then
                                return false
                            end
                            local AU_3 = AR_15.CFrame:PointToObjectSpace(AT_12.Position)
                            vy(vB.PlaceFriend, AS_7, AU_3.X, AU_3.Z)
                            task.wait(0.4)
                            return not vA()
                        else
                            local AS_8 = uz()
                            local AR_16 = not vM() or not AS_8 or not State.AutoPlace
                            if AR_16 then
                                return false
                            end
                            local AR_17 = vH()
                            local AT_13 = AR_17 and AR_17:FindFirstChild("Base")
                            local AR_18 = AT_13
                            if AT_13 then
                                AT_13 = AR_18:IsA("BasePart")
                            end
                            if not AT_13 then
                                return false
                            end
                            AT_14 = vN(fu)
                            if not AT_14 then
                                return false
                            end
                            u4(AT_14.Position)
                            uN(AT_14)
                            task.wait(0.25)
                            AT_15 = not vM() or not State.AutoPlace or uz() ~= AS_8
                            if AT_15 then
                                return false
                            end
                            AT_16 = vi()
                            if not AT_16 then
                                return false
                            end
                            local AU_4 = AR_18.CFrame:PointToObjectSpace(AT_16.Position)
                            vy(vB.PlaceFriend, AS_8, AU_4.X, AU_4.Z)
                            task.wait(0.4)
                            return not vA()
                        end
                    end
                    u3 = {}
                else
                    vP = function(e4)
                        local Av, Aw, Ax, Ay, Az, AD, AE, AI, AJ
                        local AA = 6
                        while true do
                            local AA_1 = 1952 - AA
                            do
                                if AA_1 < 1940 then
                                    if AA_1 < 1936 then
                                        if AA_1 < 1935 then
                                            if AA_1 < 1934 then
                                                if AA_1 < 1932 then
                                                    if AA_1 < 1931 then
                                                        break
                                                    end
                                                    return Av.CFrame + Vector3.new(0, 6, 0)
                                                elseif AA_1 < 1933 then
                                                    if AA_1 == 1932 then
                                                        Av = Ay
                                                        Ax = Av
                                                        AA = if Ax then 16 else 7
                                                    else
                                                        AA = 4708
                                                        continue
                                                    end
                                                elseif AA_1 == 1933 then
                                                    AI = 0
                                                    AA = 17
                                                else
                                                    AA = 1975
                                                    continue
                                                end
                                            elseif AA_1 == 1934 then
                                                return Az
                                            else
                                                AA = 10141
                                                continue
                                            end
                                        else
                                            AA = if AI <= 7 then 8 else 10
                                        end
                                    elseif AA_1 < 1938 then
                                        if AA_1 < 1937 then
                                            Ax = Av:IsA("BasePart")
                                            AA = 7
                                        else
                                            AE = AD
                                            AA = 19
                                        end
                                    elseif AA_1 < 1939 then
                                        if AA_1 == 1938 then
                                            AD = 6
                                            AA = 5
                                        else
                                            AA = 1942
                                            continue
                                        end
                                    else
                                        Ay = AJ * math.pi * 0.25
                                        Az = Ax(math.cos(Ay) * AE, math.sin(Ay) * AE)
                                        AA = if Az then 18 else 11
                                    end
                                elseif AA_1 < 1945 then
                                    if AA_1 < 1943 then
                                        if AA_1 < 1942 then
                                            if AA_1 < 1941 then
                                                return Ay
                                            end
                                            AA = 3
                                        elseif AA_1 == 1942 then
                                            AA = 9
                                        else
                                            AA = 5929
                                            continue
                                        end
                                    elseif AA_1 < 1944 then
                                        AD += 6
                                        AA = 5
                                    else
                                        AJ = AI
                                        AA = 13
                                    end
                                elseif AA_1 < 1950 then
                                    if AA_1 < 1947 then
                                        if AA_1 < 1946 then
                                            AA = if not Ax then 2 else 4
                                        elseif AA_1 == 1946 then
                                            Ax = vH()
                                            Ay = Ax
                                            AA = if Ay then 1 else 20
                                        else
                                            AA = 1936
                                            continue
                                        end
                                    elseif AA_1 < 1948 then
                                        if AA_1 == 1947 then
                                            AA = if AD <= 24 then 15 else 21
                                        else
                                            AA = 1950
                                            continue
                                        end
                                    elseif AA_1 < 1949 then
                                        Aw = vk(e4)
                                        Ax = function(fd, fe)
                                            if Vector2.new(fd, fe).Magnitude > 28 then
                                                return nil
                                            elseif uM(Aw, fd, fe, 6) then
                                                return nil
                                            else
                                                return Av.CFrame * CFrame.new(fd, 6, fe)
                                            end
                                        end
                                        Ay = Ax(0, 0)
                                        AA = if Ay then 12 else 14
                                    elseif AA_1 == 1949 then
                                        AI += 1
                                        AA = 17
                                    else
                                        AA = 1945
                                        continue
                                    end
                                elseif AA_1 < 4708 then
                                    if AA_1 < 1975 then
                                        if AA_1 < 1951 then
                                            return nil
                                        elseif AA_1 < 1952 then
                                            Ay = Ax:FindFirstChild("Base")
                                            AA = 20
                                        else
                                            break
                                        end
                                    else
                                        break
                                    end
                                else
                                    break
                                end
                            end
                        end
                    end
                    u3 = fn1259
                    vN = function(fu)
                        local AT_6, AT_7, AT_8
                        local AR = fu or vR()
                        fu = AR
                        if type(fu) ~= "table" then
                            return false
                        end
                        local Character = LocalPlayer.Character
                        if not Character then
                            return false
                        elseif not vA() then
                            local AR_1 = uv(fu)
                            local AS_1 = AR_1[1]
                            if not AS_1 then
                                return false
                            end
                            local AP = vq(AS_1.uid)
                            if AP and AP.Parent ~= Character then
                                pcall(function()
                                    AP.Parent = Character
                                end)
                            elseif not AP then
                                vy(vB.PickupFriend, AS_1.uid)
                            end
                            local AR_3 = os.clock() + 2
                            while true do
                                local AS_2 = (vM()) and State.AutoPlace and os.clock() < AR_3 and not vA()
                                if AS_2 then
                                    task.wait(0.1)
                                    continue
                                end
                                break
                            end
                            local AS_3 = uz()
                            local AR_4 = not vM() or not AS_3 or not State.AutoPlace
                            if AR_4 then
                                return false
                            end
                            local AR_5 = vH()
                            local AT_1 = AR_5 and AR_5:FindFirstChild("Base")
                            local AR_6 = AT_1
                            if AT_1 then
                                AT_1 = AR_6:IsA("BasePart")
                            end
                            if not AT_1 then
                                return false
                            end
                            local AT_2 = vN(fu)
                            if not AT_6 then
                                return false
                            end
                            u4(AT_2.Position)
                            uN(AT_2)
                            task.wait(0.25)
                            local AT_3 = not vM() or not State.AutoPlace or uz() ~= AS_3
                            if AT_7 then
                                return false
                            end
                            local AT_4 = vi()
                            if not AT_8 then
                                return false
                            end
                            local AU_1 = AR_6.CFrame:PointToObjectSpace(AT_4.Position)
                            vy(vB.PlaceFriend, AS_3, AU_1.X, AU_1.Z)
                            task.wait(0.4)
                            return not vA()
                        else
                            local AS_4 = uz()
                            local AR_7 = not vM() or not AS_4 or not State.AutoPlace
                            if AR_7 then
                                return false
                            end
                            local AR_8 = vH()
                            local AT_5 = AR_8 and AR_8:FindFirstChild("Base")
                            local AR_9 = AT_5
                            if AT_5 then
                                AT_5 = AR_9:IsA("BasePart")
                            end
                            if not AT_5 then
                                return false
                            end
                            AT_6 = vN(fu)
                            if not AT_6 then
                                return false
                            end
                            u4(AT_6.Position)
                            uN(AT_6)
                            task.wait(0.25)
                            AT_7 = not vM() or not State.AutoPlace or uz() ~= AS_4
                            if AT_7 then
                                return false
                            end
                            AT_8 = vi()
                            if not AT_8 then
                                return false
                            end
                            local AU_2 = AR_9.CFrame:PointToObjectSpace(AT_8.Position)
                            vy(vB.PlaceFriend, AS_4, AU_2.X, AU_2.Z)
                            task.wait(0.4)
                            return not vA()
                        end
                    end
                    uz = {}
                end
                vV_3 = (vV_3 + 119) % 176
            else
                local vZ_7 = {
                    "zgaw",
                    "bwsxeawzk",
                    "kzwbqe",
                    "nerklaedgw",
                    "esocbbca",
                    "nfq",
                    "ccqq",
                    "cyk",
                    "yau",
                    "mwtnlumog",
                    "ntr"
                }
                if vZ_7[(vV_3 * 15 + 43) % 11 + 1] <= vZ_7[(vV_3 * 15 + 43) % 11 + 1] then
                    u0 = {}
                else
                    u9 = {}
                end
                vV_3 = (vV_3 + 31) % 176
            end
        else
            local vZ_8 = {
                "alqlrtgb",
                "bsd",
                "ttqrpx",
                "tgnrhwx",
                "fgvhusnlsd",
                "eaob",
                "snoenb",
                "auxgop",
                "eofkyy",
                "sgusb",
                "vdywvurv",
                "mres",
                "mpptggye"
            }
            if vZ_8[(vV_3 * 1 + 70) % 13 + 1] <= vZ_8[(vV_3 * 1 + 70) % 13 + 1] then
                uV = function()
                    for k, v in u3 do
                        local A2 = k
                        local A4 = v
                        if A2.Parent then
                            pcall(function()
                                A2.Anchored = A4.Anchored
                                A2.CanTouch = A4.CanTouch
                            end)
                        end
                    end
                    for k, v in u0 do
                        local A8 = k
                        local Ba = v
                        if A8.Parent then
                            pcall(function()
                                A8.WalkSpeed = Ba.WalkSpeed
                                A8.JumpPower = Ba.JumpPower
                                A8.AutoRotate = Ba.AutoRotate
                            end)
                        end
                    end
                    table.clear(u3)
                    table.clear(u0)
                end
                vQ = function(gh)
                    local Bb = typeof(gh) ~= "Instance" or not gh:IsA("Model")
                    if Bb then
                        return
                    end
                    for k, v in gh:QueryDescendants("BasePart") do
                        local Bi = v
                        if u3[Bi] == nil then
                            u3[Bi] = { Anchored = Bi.Anchored, CanTouch = Bi.CanTouch }
                        end
                        Bi.Anchored = true
                        pcall(function()
                            Bi.CanTouch = false
                        end)
                        Bi.AssemblyLinearVelocity = Vector3.zero
                        Bi.AssemblyAngularVelocity = Vector3.zero
                    end
                    local Humanoid = gh:FindFirstChildOfClass("Humanoid")
                    if Humanoid then
                        if u0[Humanoid] == nil then
                            u0[Humanoid] = { WalkSpeed = Humanoid.WalkSpeed, JumpPower = Humanoid.JumpPower, AutoRotate = Humanoid.AutoRotate }
                        end
                        Humanoid.WalkSpeed = 0
                        Humanoid.JumpPower = 0
                        Humanoid.AutoRotate = false
                    end
                end
                vf = fn615
                uF = fn297
                uH = fn458
            else
                vf = function()
                    for k, v in u3 do
                        local A2 = k
                        local A4 = v
                        if A2.Parent then
                            pcall(function()
                                A2.Anchored = A4.Anchored
                                A2.CanTouch = A4.CanTouch
                            end)
                        end
                    end
                    for k, v in u0 do
                        local A8 = k
                        local Ba = v
                        if A8.Parent then
                            pcall(function()
                                A8.WalkSpeed = Ba.WalkSpeed
                                A8.JumpPower = Ba.JumpPower
                                A8.AutoRotate = Ba.AutoRotate
                            end)
                        end
                    end
                    table.clear(u3)
                    table.clear(u0)
                end
                uF = function(gh)
                    local Bb = typeof(gh) ~= "Instance" or not gh:IsA("Model")
                    if Bb then
                        return
                    end
                    for k, v in gh:QueryDescendants("BasePart") do
                        local Bi = v
                        if u3[Bi] == nil then
                            u3[Bi] = { Anchored = Bi.Anchored, CanTouch = Bi.CanTouch }
                        end
                        Bi.Anchored = true
                        pcall(function()
                            Bi.CanTouch = false
                        end)
                        Bi.AssemblyLinearVelocity = Vector3.zero
                        Bi.AssemblyAngularVelocity = Vector3.zero
                    end
                    local Humanoid = gh:FindFirstChildOfClass("Humanoid")
                    if Humanoid then
                        if u0[Humanoid] == nil then
                            u0[Humanoid] = { WalkSpeed = Humanoid.WalkSpeed, JumpPower = Humanoid.JumpPower, AutoRotate = Humanoid.AutoRotate }
                        end
                        Humanoid.WalkSpeed = 0
                        Humanoid.JumpPower = 0
                        Humanoid.AutoRotate = false
                    end
                end
                uH = fn615
                vQ = fn297
                uV = fn458
            end
            vV_3 = (vV_3 + 97) % 176
        end
    elseif vY_5 <= 21 then
        if vV_3 * 82559599 + 2 + 2 <= vV_3 * 82559599 + 2 + 2 + 2 then
            vc = fn533
            uT = fn765
            vS = fn1217
            uD = fn477
            vJ = fn1187
        else
            uT = fn533
            uD = fn765
            vJ = fn1217
            vc = fn477
            vS = fn1187
        end
        vV_3 = (vV_3 + 31) % 176
    else
        local vY_6 = {
            "gijzkyjued",
            "kltduv",
            "rcqqbb",
            "vlecbyggjpl",
            "iwrfhiry",
            "bwapxeiy",
            "jbgmbzkl",
            "sssgxbkcz",
            "xlymiscyby",
            "jdj"
        }
        local Ki = vV_3
        local vZ_9 = vY_6[Ki % 10 + 1]
        if vZ_9:len() <= vZ_9:gsub("(.)", "%1%1", Ki % 3 % 2 + 1):len() then
            vr = fns.fn35
            u8 = fn978
            vs = fn1052
            uB = fn498
            vu = fn906
        else
            vu = fns.fn35
            vr = fn978
            uB = fn1052
            u8 = fn498
            vs = fn906
        end
        vV_3 = (vV_3 + 119) % 176
    end
until (vV_3 * 61 + 61) % 176 == 55
if vX_4 then
    local vU_11 = 7
    repeat
        local vV_4 = (vector.create((vU_11 * 1 + 2) % 11 + 1, (vU_11 * 4 + 3) % 13 + 1, (vU_11 * 14 + 13) % 17 + 1))
        local vW_8 = (vector.create((vU_11 * 4 + 6) % 11 + 1, (vU_11 * 8 + 9) % 13 + 1, (vU_11 * 7 + 15) % 17 + 1))
        local JB = vector.dot(vV_4, vW_8)
        if JB * JB <= vector.dot(vV_4, vV_4) * vector.dot(vW_8, vW_8) then
            vX_4 = vB.DataUpdated:IsA("RemoteEvent")
        else
            vB = vX_4.DataUpdated:IsA("RemoteEvent")
        end
        vU_11 = (vU_11 + 7) % 8
    until (vU_11 * 3 + 3) % 8 == 5
end
if vX_4 then
    connection = nil
    local vU_12 = 3
    repeat
        if (vU_12 * 1 + 1) % 2 + 1 <= 1 then
            if (vU_12 * 2 + 7) * 13 % 3 == ((vU_12 * 2 + 7) * 13 + 3) % 3 then
                connection = vB.DataUpdated.OnClientEvent:Connect(onOnClientEvent)
            else
                vB = connection.DataUpdated.OnClientEvent:Connect(onOnClientEvent)
            end
            vU_12 = (vU_12 + 7) % 8
        else
            local vV_6 = (vector.create((vU_12 * 1 + 7) % 11 + 1, (vU_12 * 5 + 5) % 13 + 1, (vU_12 * 15 + 10) % 17 + 1))
            local vW_9 = (vector.create((vU_12 * 2 + 5) % 11 + 1, (vU_12 * 3 + 10) % 13 + 1, (vU_12 * 14 + 12) % 17 + 1))
            local Ke = vector.dot(vV_6, vW_9)
            if Ke * Ke >= vector.dot(vV_6, vV_6) * vector.dot(vW_9, vW_9) + 1 then
                uI.Track(fn968)
            else
                uI.Track(fn968)
            end
            vU_12 = (vU_12 + 3) % 8
        end
    until (vU_12 * 5 + 1) % 8 == 2
end
vO = nil
vO = task.spawn(worker)
uI.Track(fn258)
local function vV_7()
    local Window
    local jY = "https://rscripts.net/@Ouroboros"
    local jZ = "https://ouroboros-hub-rbx.web.app/"
    local jV = "+1 Wings For Eggs"
    local jW = "v0.9"
    local jX = "https://discord.gg/synapsex"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    u2(uI, Library)
    local function j7(j8, j9)
        local Ea = (us(setclipboard)) and setclipboard
        local Eb = Ea
        if not Eb then
            local Ea_1 = (us(toclipboard)) and toclipboard
            local Ec = Ea_1
            local Eg = if Ec then 1 else 0
            local Ee = 2966 * Eg + 3907 * (1 - Eg)
            local Ef = 2084 * Eg + 791 * (1 - Eg)
            if not ((Ee * 1680 + Ef * 2923 + Ee * Ef) % 16777213 == 478343) then
                Ec = nil
            end
            Eb = Ec
        end
        local Ea_2 = Eb
        if not Ea_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Eb_1 = pcall(Ea_2, j8)
        if Eb_1 then
            Library:Notify(j9)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        j7(jX, "Copied Discord invite to clipboard")
    end
    Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = jX, Copyable = true }, "|", jV, "|", jW },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    pcall(function()
        Window:SetGlow(false)
    end)
    local kn = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local function ko(kp)
        local DiscordGroup = kp:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    ko(kn[2])
    ko(kn[3])
    ko(kn[4])
    local function ks()
        local EggFarmGroup = kn[2]:AddLeftGroupbox("Egg Farm", "egg")
        EggFarmGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal Eggs",
            Default = false,
            Callback = function(kw)
                uI.SetFlag("AutoSteal", kw)
            end
        })
        EggFarmGroup:AddSlider("CarryLimit", {
            Text = "Carry Limit",
            Default = 1,
            Min = 1,
            Max = 20,
            Rounding = 0,
            Callback = function(kz)
                uI.SetCarryLimit(kz)
            end
        })
        EggFarmGroup:AddDropdown("TargetZones", {
            Text = "Target Egg Area",
            Values = u6,
            Default = u6,
            Multi = true,
            Callback = function(kD)
                uI.SetSelectedZones(kD)
            end
        })
        EggFarmGroup:AddToggle("AutoPlace", {
            Text = "Auto Place Eggs",
            Default = false,
            Callback = function(kF)
                uI.SetFlag("AutoPlace", kF)
            end
        })
        EggFarmGroup:AddToggle("FreezeGuards", {
            Text = "Freeze All Guards",
            Default = false,
            Callback = function(kH)
                uI.SetFlag("FreezeGuards", kH)
                if not kH then
                    uV()
                end
            end
        })
        EggFarmGroup:AddToggle("AutoHatch", {
            Text = "Auto Open / Hatch Ready Eggs",
            Default = false,
            Callback = function(kM)
                uI.SetFlag("AutoHatch", kM)
            end
        })
        uI.SetSelectedZones(u6)
        local PetsGroup = kn[2]:AddLeftGroupbox("Pets", "cat")
        PetsGroup:AddToggle("AutoUpgradePets", {
            Text = "Auto Upgrade Placed Pets",
            Default = false,
            Callback = function(kP)
                uI.SetFlag("AutoUpgradePets", kP)
            end
        })
        PetsGroup:AddToggle("AutoSellSelected", {
            Text = "Auto Sell Selected Rarities",
            Default = false,
            Callback = function(kR)
                uI.SetFlag("AutoSellSelected", kR)
            end
        })
        PetsGroup:AddToggle("AutoSellAll", {
            Text = "Auto Sell ALL Pets",
            Default = false,
            Callback = function(kT)
                uI.SetFlag("AutoSellAll", kT)
            end
        })
        PetsGroup:AddDropdown("SellRarities", {
            Text = "Sell Rarities",
            Values = uR,
            Default = uR,
            Multi = true,
            Callback = function(kX)
                uI.SetSelectedRarities(kX)
            end
        })
        PetsGroup:AddDropdown("SellSource", {
            Text = "Sell From",
            Values = uX,
            Default = 3,
            Callback = function(k0)
                uI.SetSellSource(k0)
            end
        })
        uI.SetSelectedRarities(uR)
        uI.SetSellSource("Both")
        local FarmGroup = kn[2]:AddRightGroupbox("Farm", "house")
        FarmGroup:AddToggle("AutoUpgradeFloor", {
            Text = "Auto Upgrade Farm Floor / Base",
            Default = false,
            Callback = function(k3)
                uI.SetFlag("AutoUpgradeFloor", k3)
            end
        })
        local WingsGroup = kn[2]:AddRightGroupbox("Wings", "bird")
        WingsGroup:AddToggle("AutoBuyWings", {
            Text = "Auto Buy Selected Wings",
            Default = false,
            Callback = function(k6)
                uI.SetFlag("AutoBuyWings", k6)
            end
        })
        WingsGroup:AddDropdown("SelectedWings", {
            Text = "Wings",
            Values = u1,
            Default = u1,
            Multi = true,
            Callback = function(la)
                uI.SetSelectedWings(la)
            end
        })
        WingsGroup:AddToggle("AutoEquipBestWing", {
            Text = "Auto Equip Best Wing",
            Default = false,
            Callback = function(lc)
                uI.SetFlag("AutoEquipBestWing", lc)
            end
        })
        uI.SetSelectedWings(u1)
        local UpgradesGroup = kn[2]:AddRightGroupbox("Upgrades", "trending-up")
        UpgradesGroup:AddToggle("AutoUpgradeSpeed", {
            Text = "Auto Upgrade Speed",
            Default = false,
            Callback = function(lf)
                uI.SetFlag("AutoUpgradeSpeed", lf)
            end
        })
        UpgradesGroup:AddToggle("AutoUpgradeCarry", {
            Text = "Auto Upgrade Carry Limit",
            Default = false,
            Callback = function(lh)
                uI.SetFlag("AutoUpgradeCarry", lh)
            end
        })
        UpgradesGroup:AddToggle("AutoUpgradeStamina", {
            Text = "Auto Upgrade Stamina",
            Default = false,
            Callback = function(lj)
                uI.SetFlag("AutoUpgradeStamina", lj)
            end
        })
        local RewardsGroup = kn[2]:AddRightGroupbox("Rewards", "gift")
        RewardsGroup:AddToggle("AutoClaimIndex", {
            Text = "Auto Claim All Index Rewards",
            Default = false,
            Callback = function(lm)
                uI.SetFlag("AutoClaimIndex", lm)
            end
        })
        RewardsGroup:AddToggle("AutoRebirth", {
            Text = "Auto Rebirth",
            Default = false,
            Callback = function(lo)
                uI.SetFlag("AutoRebirth", lo)
            end
        })
    end
    ks()
    local function lq()
        local EJ
        local EF
        local ED
        local Ez
        Ez = nil
        ED = nil
        EF = nil
        EJ = nil
        local Ex, Label, EA, EB, EC, EE, Label2, EH, Label3
        EF = function(ls)
            return (tostring(ls):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        ED = function(lu, lv)
            return string.format('<font color="%s">%s</font>', lv, EF(lu))
        end
        EH = function(lA, lB, lC)
            return string.format("<b>%s</b> %s %s", lA, ED("-", "#5a6070"), ED(lB, lC))
        end
        local EK = "#8b93a3"
        EE = "#7fd47f"
        local EL = {}
        local EM = "#6ec1ff"
        EC = "#e8a34d"
        if typeof(ut) ~= "Instance" then
            table.insert(EL, "remotes")
        end
        if typeof(vB.PlaceFriend) ~= "Instance" then
            table.insert(EL, "place")
        end
        if not vw then
            table.insert(EL, "fireproximityprompt")
        end
        local EN = #EL == 0 and "ready"
        local EO = EN or "limited: " .. table.concat(EL, ", ")
        EB = "Unknown"
        pcall(function()
            local Ej_1
            local Ei_1
            local Ep = if us(identifyexecutor) then 1 else 0
            if Ep == 1 then
                Ej_1, Ei_1 = identifyexecutor()
                local Ek = Ej_1 ~= ""
                local El = type(Ej_1) == "string" and Ek
                if El then
                    local Ek_1 = type(Ei_1) == "string" and Ei_1 ~= "" and Ej_1 .. " " .. Ei_1
                    EB = Ek_1 or Ej_1
                end
            end
        end)
        EJ = os.clock()
        EA = function()
            local Eq = math.floor(os.clock() - EJ)
            if Eq < 60 then
                return Eq .. "s"
            elseif Eq < 3600 then
                return string.format("%dm %ds", Eq // 60, Eq % 60)
            else
                return string.format("%dh %dm", Eq // 3600, Eq % 3600 // 60)
            end
        end
        local UserGroup = kn[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(EH("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, EE), true)
        UserGroup:AddLabel(EH("UserId", tostring(LocalPlayer.UserId), EM), true)
        UserGroup:AddLabel(EH("Executor", EB .. "  " .. EO, EE), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(EH("Session", EA(), EC), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                j7(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                j7("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = kn[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(EH("Game", jV, EM), true)
        Label2 = SessionGroup:AddLabel(EH("Players", "0/0", EE), true)
        Ex = tostring(game.JobId)
        local EM_1 = #Ex > 18 and string.sub(Ex, 1, 18) .. "..."
        local EN_2 = EM_1 or Ex
        SessionGroup:AddLabel(EH("Job", EN_2, EK), true)
        Label = SessionGroup:AddLabel(EH("Ping", "0 ms", EC), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                j7(Ex, "Copied Job ID")
            end
        })
        Ez = task.spawn(function()
            local Et_1
            local Es_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(EH("Session", EA(), EC))
                Label2:SetText(EH("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), EE))
                Es_1, Et_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Es_2 = Es_1 and Et_1 .. " ms" or "n/a"
                Label:SetText(EH("Ping", Es_2, EC))
            end
        end)
        uI.Track(function()
            if coroutine.status(Ez) ~= "dead" then
                task.cancel(Ez)
            end
        end)
        local SocialsGroup = kn[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                j7(jY, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                j7(jZ, "Copied website link")
            end
        })
    end
    lq()
    local function mO()
        local mW
        local mU
        local mV
        local mT
        local MovementGroup = kn[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = kn[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        mU = {}
        mT = {}
        mW = {}
        local mS = {}
        mV = {}
        local function mX()
            for k, v in mT do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(mT)
        end
        local function m0()
            for k, v in mU do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(mU)
        end
        local function m4()
            for k, v in mV do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(mV)
        end
        local function m8(m9)
            if not m9:IsA("ProximityPrompt") then
                return
            end
            if mW[m9] == nil then
                mW[m9] = {
                    HoldDuration = m9.HoldDuration,
                    MaxActivationDistance = m9.MaxActivationDistance,
                    RequiresLineOfSight = m9.RequiresLineOfSight
                }
            end
            m9.HoldDuration = 0
            m9.MaxActivationDistance = 50
            m9.RequiresLineOfSight = false
        end
        local function nb()
            for k, v in mW do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(mW)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                m4()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                m0()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                mX()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(m8, v)
                end
            else
                nb()
            end
        end)
        table.insert(mS, Workspace.DescendantAdded:Connect(function(nu)
            if Toggles.InstantProximityPrompt.Value then
                m8(nu)
            end
        end))
        table.insert(mS, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if mT[v] == nil then
                        mT[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(mS, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local FD = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and FD then
                FD:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(mS, RunService.RenderStepped:Connect(function(nQ)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local FJ = Character and Character:FindFirstChildOfClass("Humanoid")
            local FK = Character
            if FK then
                FK = Character:FindFirstChild("HumanoidRootPart")
            end
            local FI_1 = FK
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and FJ then
                if mU[FJ] == nil then
                    mU[FJ] = FJ.WalkSpeed
                end
                FJ.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and FI_1 and FJ and CurrentCamera then
                if mV[FJ] == nil then
                    mV[FJ] = FJ.PlatformStand
                end
                FJ.PlatformStand = true
                local FK_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        FK_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        FK_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        FK_4 -= CurrentCamera.CFrame.RightVector
                    end
                    local FT = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                    if FT == 1 then
                        FK_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        FK_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        FK_4 -= Vector3.new(0, 1, 0)
                    end
                end
                FI_1.AssemblyLinearVelocity = Vector3.zero
                if FK_4.Magnitude > 0 then
                    FI_1.CFrame = FI_1.CFrame + FK_4.Unit * Options.FlySpeed.Value * nQ
                end
            end
        end))
        uI.Track(function()
            for k, v in mS do
                v:Disconnect()
            end
            mX()
            m0()
            m4()
            nb()
        end)
    end
    mO()
    local function n5()
        local G2, G3, G4, G5, G6, G7, G8, G9, Ha, Label, Hc, Hd, He, Hf
        Hc = {}
        G6 = {}
        G3 = nil
        G8 = false
        G4 = 0
        He = 0
        G9 = os.clock()
        local MenuGroup = kn[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Hf = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local F1 = not CurrentCamera or not us(VirtualUser.CaptureController) or not us(VirtualUser.ClickButton2)
            if F1 then
                return false
            end
            local F1_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not F1_1 then
                return false
            end
            G4 += 1
            G9 = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. G4)
            end)
            return true
        end
        Ha = function(oC)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not oC)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not oC
                end
            end)
            if not oC then
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
        G7 = function(oS)
            local Ga = oS.ClassName == "ParticleEmitter" or oS.ClassName == "Trail" or oS.ClassName == "Smoke"
            local Ge = if Ga then 1 else 0
            local Gc = 2015 * Ge + 207 * (1 - Ge)
            local Gd = 954 * Ge + 3232 * (1 - Ge)
            if not ((Gc * 2314 + Gd * 560 + Gc * Gd) % 16777213 == 7119260) then
                Ga = oS.ClassName == "Fire"
            end
            if not Ga then
                Ga = oS.ClassName == "Sparkles"
            end
            local Ge_1 = if Ga then 1 else 0
            local Gc_1 = 1510 * Ge_1 + 3702 * (1 - Ge_1)
            local Gd_1 = 2918 * Ge_1 + 3271 * (1 - Ge_1)
            if not ((Gc_1 * 3462 + Gd_1 * 851 + Gc_1 * Gd_1) % 16777213 == 12117018) then
                Ga = oS.ClassName == "Explosion"
            end
            if not Ga then
                Ga = oS.ClassName == "Beam"
            end
            if Ga then
                if Hc[oS] == nil then
                    Hc[oS] = oS.Enabled
                end
                pcall(function()
                    oS.Enabled = false
                end)
            end
        end
        G5 = function()
            for k, v in Hc do
                local Gj = k
                local Gl = v
                if Gj.Parent then
                    pcall(function()
                        Gj.Enabled = Gl
                    end)
                end
            end
            table.clear(Hc)
            if G3 then
                pcall(function()
                    settings().Rendering.QualityLevel = G3.Quality
                end)
                Lighting.GlobalShadows = G3.Shadows
                Lighting.FogEnd = G3.Fog
                G3 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(o6)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not o6)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(pb)
                if pb then
                    if not G3 then
                        G3 = {
                            Quality = settings().Rendering.QualityLevel,
                            Shadows = Lighting.GlobalShadows,
                            Fog = Lighting.FogEnd
                        }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9000000000
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(G7, v)
                    end
                else
                    G5()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Ha(true)
        local ScriptGroup = kn[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Ha(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Ha(true)
        end
        table.insert(G6, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Hf()
            end
        end))
        table.insert(G6, Workspace.DescendantAdded:Connect(function(pu)
            if Toggles.FpsBoost.Value then
                G7(pu)
            end
        end))
        G2 = function(py)
            if G8 or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            G8 = true
            local GB = He
            local GC_1 = pcall(function()
                if py then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not GC_1 then
                G8 = false
                if not py and GB == He then
                    task.delay(1.5, function()
                        if GB == He then
                            G2(true)
                        end
                    end)
                end
            end
        end
        table.insert(G6, TeleportService.TeleportInitFailed:Connect(function(pQ)
            local GG
            if pQ == LocalPlayer and G8 then
                G8 = false
                GG = He
                task.delay(3, function()
                    if GG == He then
                        G2(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local GO = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            local GO_1 = not GO
            local GP = Library.Unloaded
            local GT = if GP then 1 else 0
            local GR = 3607 * GT + 138 * (1 - GT)
            local GS = 711 * GT + 1567 * (1 - GT)
            if not ((GR * 1530 + GS * 1094 + GR * GS) % 16777213 == 8861121) then
                GP = GO_1
            end
            if GP then
                return
            end
            table.insert(G6, GO.ChildAdded:Connect(function(p4)
                if p4.Name == "ErrorPrompt" then
                    G2(false)
                end
            end))
        end)
        Hd = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Ha(true)
                end
                local GU = Toggles.AntiAfk.Value and os.clock() - G9 >= 60
                if GU then
                    Hf()
                end
                task.wait(1)
            end
        end)
        uI.Track(function()
            He += 1
            for k, v in G6 do
                v:Disconnect()
            end
            pcall(task.cancel, Hd)
            Ha(false)
            G5()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    n5()
    local function qo()
        local Id, Ie, If, Ig
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(kn[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/WingsForEggs")
        local Ih = SaveManager:BuildConfigSection(kn[4])
        If = function(qv, qw)
            local Hj_1 = (qv == "Toggle" and Toggles or Options)[qw]
            local Hi_2 = type(Hj_1) == "table" and Hj_1.Type == qv
            return Hi_2 and Hj_1 or nil
        end
        Id = function(qF, qG)
            local Type = qG.Type
            if Type == "Toggle" then
                return { idx = qF, type = "Toggle", value = qG.Value == true }
            elseif Type == "Slider" then
                return { idx = qF, type = "Slider", value = tostring(qG.Value) }
            elseif Type == "Dropdown" then
                return { idx = qF, type = "Dropdown", multi = qG.Multi == true, value = qG.Value }
            elseif Type == "Input" then
                local Ht = qG.Value or ""
                return { idx = qF, type = "Input", text = tostring(Ht) }
            elseif Type == "ColorPicker" then
                return { idx = qF, type = "ColorPicker", value = qG.Value:ToHex(), transparency = qG.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = qF,
                    type = "KeyPicker",
                    mode = qG.Mode,
                    key = qG.Value,
                    modifiers = qG.Modifiers,
                    toggled = qG.Toggled
                }
            else
                return nil
            end
        end
        Ig = function()
            local Hz = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local HA = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if HA then
                        local HA_1 = Id(k, v)
                        if HA_1 then
                            Hz[#Hz + 1] = HA_1
                        end
                    end
                end
            end
            table.sort(Hz, function(qQ, qR)
                if qQ.type ~= qR.type then
                    return qQ.type < qR.type
                end
                return qQ.idx < qR.idx
            end)
            return { objects = Hz }
        end
        Ie = function(qT)
            local HQ
            HQ = nil
            local HR = type(qT) ~= "table" or type(qT.idx) ~= "string" or type(qT.type) ~= "string" or SaveManager.Ignore[qT.idx]
            if HR then
                return false
            end
            HQ = If(qT.type, qT.idx)
            if not HQ then
                return false
            end
            local HR_1 = pcall(function()
                if qT.type == "Input" then
                    if type(qT.text) ~= "string" then
                        return
                    end
                    HQ:SetValue(qT.text)
                elseif qT.type == "ColorPicker" then
                    HQ:SetValueRGB(Color3.fromHex(qT.value), qT.transparency)
                elseif qT.type == "KeyPicker" then
                    HQ:SetValue({ qT.key, qT.mode, qT.modifiers })
                    if qT.mode == "Toggle" and qT.toggled ~= nil then
                        HQ.Toggled = qT.toggled
                        HQ:Update()
                    end
                else
                    HQ:SetValue(qT.value)
                end
            end)
            return HR_1
        end
        Ih:AddDivider()
        Ih:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Ih:AddButton("Export Config to Clipboard", function()
            local HX_1
            local HW_1
            HW_1, HX_1 = pcall(HttpService.JSONEncode, HttpService, Ig())
            if HW_1 then
                local HW_2 = (us(setclipboard)) and setclipboard
                local HY = HW_2
                if not HY then
                    local HW_3 = (us(toclipboard)) and toclipboard
                    HY = HW_3 or nil
                end
                local HW_4 = HY
                local HY_1 = type(HW_4) == "function" and pcall(HW_4, HX_1)
                if HY_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Ih:AddButton("Import Config from Clipboard Text", function()
            local H5_1
            local H3 = Options.SaveManager_ImportSource.Value or ""
            local H3_1
            local H4 = tostring(H3):match("^%s*(.-)%s*$")
            if H4 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #H4 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            H3_1, H5_1 = pcall(HttpService.JSONDecode, HttpService, H4)
            local H4_1 = not H3_1 or type(H5_1) ~= "table" or type(H5_1.objects) ~= "table"
            if H4_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #H5_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local H3_2 = 0
            for i, v in ipairs(H5_1.objects) do
                if Ie(v) then
                    H3_2 += 1
                end
            end
            if H3_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local H5_2 = H3_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(H3_2, H5_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.TargetZones then
            uI.SetSelectedZones(Options.TargetZones.Value)
        end
        if Options.SellRarities then
            uI.SetSelectedRarities(Options.SellRarities.Value)
        end
        if Options.SelectedWings then
            uI.SetSelectedWings(Options.SelectedWings.Value)
        end
        if Options.SellSource then
            uI.SetSellSource(Options.SellSource.Value)
        end
        if Options.CarryLimit then
            uI.SetCarryLimit(Options.CarryLimit.Value)
        end
        local Ih_1 = {
            AutoSteal = "AutoSteal",
            AutoPlace = "AutoPlace",
            FreezeGuards = "FreezeGuards",
            AutoHatch = "AutoHatch",
            AutoUpgradePets = "AutoUpgradePets",
            AutoSellSelected = "AutoSellSelected",
            AutoSellAll = "AutoSellAll",
            AutoUpgradeFloor = "AutoUpgradeFloor",
            AutoBuyWings = "AutoBuyWings",
            AutoEquipBestWing = "AutoEquipBestWing",
            AutoUpgradeSpeed = "AutoUpgradeSpeed",
            AutoUpgradeCarry = "AutoUpgradeCarry",
            AutoUpgradeStamina = "AutoUpgradeStamina",
            AutoClaimIndex = "AutoClaimIndex",
            AutoRebirth = "AutoRebirth"
        }
        for k, v in pairs(Ih_1) do
            local Ih_2 = Toggles[k]
            if Ih_2 then
                uI.SetFlag(v, Ih_2.Value)
            end
        end
        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    qo()
end
vV_7()
