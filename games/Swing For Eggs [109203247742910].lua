local wz
local wg
local vY
local wm
local vm
local vL
local vs
local v9
local State
local wy
local vy
local wf
local vE
local v2
local vK
local wr
local vr
local v8
local vQ
local wx
local LocalPlayer
local we
local vW
local wD
local vD
local v1
local vJ
local vq
local vP
local ww
local vw
local vV
local wC
local vC
local wj
local v0
local wp
local vp
local v6
local vv
local wc
local CoreGui
local wB
local wi
local vH
local wo
local vo
local v5
local vu
local wb
local vT
local vG
local vn
local vM
local wt
local vt
local wa
local function fn17(gk)
    if gk then
        vG(vm, wb)
    else
        vE(vm)
    end
end
local function fn49()
    local AR_1
    local AQ_1
    local AP = LocalPlayer:GetAttribute("EquippedTreadmill")
    if type(AP) ~= "string" then
        AQ_1, AR_1 = vV("GetEquippedTreadmill")
        local AS = AQ_1 and type(AR_1) == "string"
        AP = AS and AR_1 or nil
    end
    local AQ_3 = wr()
    local AR_3 = AP == nil
    for i, v in ipairs(AQ_3) do
        if AR_3 then
            return v
        end
        if v.Name == AP then
            AR_3 = true
        end
    end
    return nil
end
local function fn65(i7)
    local DK = i7 == "Equipped" and "Equipped" or "Inventory"
    v0.mode = DK
end
local function fn68(i0)
    if i0 then
        vG(v0, vq)
    else
        vE(v0)
    end
end
local function fn92()
    local Dl_2
    local Dg = ww()
    if not Dg then
        return
    end
    local Dh = wp()
    local targets = v8.targets
    local Dj = next(targets) ~= nil
    for i, v in ipairs(vu()) do
        local Dk = not vy() or v8.stopped
        local Dk_2
        if Dk then
            break
        end
        local Dk_1 = Dg[v.Name] ~= true and v.Price > 0
        if Dk_1 then
            Dk_1 = not Dj or targets[v.Name]
        end
        if Dk_1 then
            if Dh >= v.Price then
                Dk_2, Dl_2 = vV("SuitShopAction", "Buy", v.Name)
                if Dk_2 and Dl_2 then
                    vK("Bought " .. v.Name)
                    wy("Bought " .. v.Name)
                    Dh = wp()
                    task.wait(0.4)
                end
            end
        end
    end
end
local function fn101(aF, aG)
    local Events = vp:FindFirstChild("Events")
    local xq = Events and Events:FindFirstChild(aF)
    local xp_1 = xq
    if xq then
        xq = xp_1:IsA(aG)
    end
    if xq then
        return xp_1
    end
    return nil
end
local function fn106()
    local Ba = {}
    for i, v in ipairs(vu()) do
        table.insert(Ba, v.Name)
    end
    return Ba
end
local function fn117()
    local C0_1
    local CX_1, CX_2
    local CY_1, CY_4
    CX_1, CY_1 = vV("GetIndexData")
    local CZ = not CX_1
    local CZ_1
    local C5 = if CZ then 1 else 0
    local C3 = 367 * C5 + 1700 * (1 - C5)
    local C4 = 3916 * C5 + 430 * (1 - C5)
    if not ((C3 * 2970 + C4 * 827 + C3 * C4) % 16777213 == 5765694) then
        CZ = type(CY_1) ~= "table"
    end
    if CZ then
        return
    end
    CX_2, CZ_1 = vV("IndexRewardAction", "GetClaims")
    local C_ = not CX_2 or type(CZ_1) ~= "table"
    if C_ then
        CZ_1 = {}
    end
    local CX_3 = v6("AnimalConfigurations")
    local C__1 = CX_3 and type(CX_3.Animals) == "table" and CX_3.Animals
    local CX_4 = C__1 or nil
    if not CX_4 then
        return
    end
    local CX_5 = 0
    for k, v in pairs(CY_1) do
        local CY_2 = not vy() or wj.stopped
        if CY_2 then
            break
        end
        if v == true and CZ_1[k] ~= true and CX_4[k] then
            CY_4, C0_1 = vV("IndexRewardAction", "Claim", k)
            local C1 = CY_4 and type(C0_1) == "table" and C0_1.Success
            if C1 then
                CX_5 += 1
                task.wait(0.2)
            end
        end
    end
    if CX_5 > 0 then
        local CZ_2 = CX_5 == 1 and "" or "s"
        vK("Claimed " .. CX_5 .. " index reward" .. CZ_2)
        local CZ_3 = CX_5 == 1 and "" or "s"
        wy("Claimed " .. CX_5 .. " index reward" .. CZ_3)
    end
end
local function fn127(hu)
    if hu then
        vG(wt, vo)
    else
        vE(wt)
    end
end
local function fn128()
    return not we.Unloaded
end
local function fn133()
    return wB:FindFirstChild("Plot_" .. LocalPlayer.Name)
end
local function fn175(eE)
    local Shell = eE:FindFirstChild("Shell")
    local Az = Shell and Shell:FindFirstChildWhichIsA("ProximityPrompt")
    local Ay_1 = Az or nil
    local Az_1 = Ay_1
    if Ay_1 then
        Ay_1 = Az_1.Enabled
    end
    if Ay_1 then
        Ay_1 = Az_1.ActionText == "Hatch"
    end
    if Ay_1 then
        return true
    end
    local Ay_2 = vP(eE)
    if not Ay_2 then
        return false
    end
    local Az_2 = tonumber(eE:GetAttribute("HatchStartTime")) or 0
    return wB:GetServerTimeNow() - Az_2 >= Ay_2
end
local function fn181()
    vE(vm)
    vE(wz)
    vE(wt)
    vE(wm)
    vE(wj)
    vE(v8)
    vE(v0)
    vE(vW)
    vE(vQ)
end
local function fn189()
    local A_ = v6("SuitConfigurations")
    local A0 = not A_
    local A1 = {}
    if not A0 then
        A0 = type(A_.Suits) ~= "table"
    end
    if A0 then
        return A1
    end
    for i, v in ipairs(A_.Suits) do
        local A__1 = type(v) == "table" and type(v.Name) == "string"
        if A__1 then
            local A__2 = table.insert
            local Name = v.Name
            local A2 = tonumber(v.Price) or 0
            A__2(A1, { Name = Name, Price = A2 })
        end
    end
    table.sort(A1, function(fd, fe)
        return fd.Price < fe.Price
    end)
    return A1
end
local function fn204(hf)
    local Ct = tonumber(hf) or 2
    wz.interval = math.max(Ct, 0.5)
end
local function fn235(i5)
    local DH = tonumber(i5) or 30
    v0.interval = math.max(DH, 1)
end
local function fn246()
    local Aa = v6("PlotConfigurations")
    local Ab = Aa and Aa.MaxEggsOnPlot
    local Aa_1 = tonumber(Ab) or 30
    return Aa_1
end
local function fn252(cX, cY)
    local Eggs = wB:FindFirstChild("Eggs")
    local zl = {}
    if not Eggs then
        return zl
    end
    local zm = cX and next(cX) ~= nil
    local zn = cY
    if zn then
        zn = next(cY) ~= nil
    end
    local zm_1 = zn
    for i, child in ipairs(Eggs:GetChildren()) do
        local zk_1 = (child:IsA("Folder"))
        if zk_1 then
            zk_1 = not zm or cX[child.Name]
        end
        if zk_1 then
            for i, child in ipairs(child:GetChildren()) do
                local SpawnedEgg = child:FindFirstChild("SpawnedEgg")
                local zn_2 = SpawnedEgg and wD(SpawnedEgg)
                local zp = zn_2 or nil
                local zn_3 = zp
                if zp then
                    zp = zn_3.Enabled
                end
                if zp then
                    local attr = SpawnedEgg:GetAttribute("EggName")
                    local zq = wx(attr)
                    local zr = not zm_1
                    if not zr then
                        zr = zq and cY[zq]
                    end
                    if zr then
                        local zr_1 = wg(SpawnedEgg)
                        if zr_1 then
                            local insert = table.insert
                            local zt = attr or "Egg"
                            insert(zl, { Model = SpawnedEgg, Prompt = zn_3, Position = zr_1, Name = tostring(zt), Rarity = zq })
                        end
                    end
                end
            end
        end
    end
    return zl
end
local function fn265(h6)
    if h6 then
        vG(wj, wc)
    else
        vE(wj)
    end
end
local function fn359(dq)
    local zK_1
    local zJ_1
    local zH = v9()
    local zH_1 = zH and zH.Position or Vector3.zero
    zK_1, zJ_1 = nil, nil
    for i, v in ipairs(dq) do
        local Magnitude = (v.Position - zH_1).Magnitude
        if not zJ_1 or Magnitude < zJ_1 then
            zK_1, zJ_1 = v, Magnitude
        end
    end
    return zK_1, zJ_1 or 0
end
local function worker()
    while vy() do
        pcall(v5, true)
        task.wait(15)
    end
end
local function fn383()
    local Bj_1
    local Bi_1
    Bi_1, Bj_1 = vV("SuitShopAction", "GetData")
    local Bk = Bi_1 and type(Bj_1) == "table" and type(Bj_1.Owned) == "table"
    if Bk then
        return Bj_1.Owned
    end
    return nil
end
local function fn387(ba)
    local xI = ba or vL()
    ba = xI
    if xI then
        xI = ba:FindFirstChild("EggHatch")
    end
    local xJ = xI
    if xI then
        xI = xJ:IsA("BasePart")
    end
    if xI then
        return xJ
    end
    return nil
end
local function fn465(gr, gs)
    local BZ = {}
    for k in pairs(vw(gr)) do
        local B__1 = gs and gs[k] or k
        BZ[B__1] = true
    end
    vm.zones = BZ
end
local function fn473(hJ)
    local CV = tonumber(hJ) or 12
    wm.interval = math.max(CV, 10)
end
local function fn500(g7)
    if g7 then
        vG(wz, v1)
    else
        vE(wz)
    end
end
local function fn528(cN)
    if not cN then
        return nil
    end
    local PromptAnchor = cN:FindFirstChild("PromptAnchor", true)
    local zb = PromptAnchor and PromptAnchor:FindFirstChildWhichIsA("ProximityPrompt")
    return zb or nil
end
local function fn557()
    local Cv = v2()
    local Cw = 0
    for i, v in ipairs(Cv) do
        local Cv_1 = not vy() or wt.stopped
        if Cv_1 then
            break
        end
        local Cv_2 = v.Parent and wa(v)
        if Cv_2 then
            if vn("RequestHatch", v) then
                Cw += 1
                task.wait(0.35)
            end
        end
    end
    if Cw > 0 then
        local Cx = Cw == 1 and "" or "s"
        wy("Hatched " .. Cw .. " egg" .. Cx)
    end
end
local function fn559(jK)
    if jK then
        vG(vQ, vr)
    else
        vE(vQ)
    end
end
local function fn569(fT)
    fT.stopped = true
    local By = fT.generation or 0
    fT.generation = By + 1
end
local function fn603()
    return CoreGui
end
local function fn609()
    if coroutine.status(vD) ~= "dead" then
        pcall(task.cancel, vD)
    end
end
local function fn627()
    local Character = LocalPlayer.Character
    local yU = Character ~= nil and Character:GetAttribute("CarryingEgg") == true
    return yU
end
local function fn634(bI)
    local yb = v6("EggConfigurations")
    local yc = type(bI) ~= "string" or not yb
    local yg = if yc then 1 else 0
    local ye = 2139 * yg + 2878 * (1 - yg)
    local yf = 1196 * yg + 2018 * (1 - yg)
    if not ((ye * 3841 + yf * 3519 + ye * yf) % 16777213 == 14982867) then
        yc = type(yb.EggDrops) ~= "table"
    end
    if yc then
        return false
    end
    return yb.EggDrops[bI] ~= nil
end
local function fn635()
    local Character = LocalPlayer.Character
    local yM = Character and Character:FindFirstChild("HumanoidRootPart")
    return yM or nil
end
local function fn637()
    local DS_1
    local DR_1
    local DQ = vs()
    if not DQ then
        wy("Treadmill is fully upgraded")
        return
    end
    if wp() < DQ.Price then
        return
    end
    DR_1, DS_1 = vV("RequestTreadmillUpgrade")
    local DT = DR_1 and type(DS_1) == "table" and DS_1.Success
    if DT then
        vK("Upgraded to " .. DQ.Name)
        wy("Upgraded to " .. DQ.Name)
    end
end
local function fn652()
    gethui = wC
end
local function fn669()
    local AC = v6("TreadmillConfigurations")
    local AD = not AC
    local AE = {}
    if not AD then
        AD = type(AC.Treadmills) ~= "table"
    end
    if AD then
        return AE
    end
    for k, v in pairs(AC.Treadmills) do
        local AC_1 = type(v) == "table" and tonumber(v.Price)
        if AC_1 then
            table.insert(AE, { Name = k, Price = tonumber(v.Price) })
        end
    end
    table.sort(AE, function(eS, eT)
        return eS.Price < eT.Price
    end)
    return AE
end
local function fn682(ei)
    local At_1
    local Ao = tonumber(ei:GetAttribute("HatchTimeOverride"))
    local Ao_6
    if Ao then
        return Ao
    end
    local Ao_1 = v6("EggConfigurations")
    local Ap = v6("EggSizeSystem")
    local Aq = v6("GlobalEvents")
    local Ar = not Ao_1
    local Ar_5, Ar_6
    local Ax = if Ar then 1 else 0
    local Av = 449 * Ax + 3804 * (1 - Ax)
    local Aw = 2814 * Ax + 1686 * (1 - Ax)
    if not ((Av * 3637 + Aw * 1204 + Av * Aw) % 16777213 == 6284555) then
        Ar = not Ap
    end
    local Ax_1 = if Ar then 1 else 0
    local Av_1 = 846 * Ax_1 + 4025 * (1 - Ax_1)
    local Aw_1 = 1051 * Ax_1 + 2652 * (1 - Ax_1)
    if not ((Av_1 * 1836 + Aw_1 * 1121 + Av_1 * Aw_1) % 16777213 == 3620573) then
        Ar = not vM(Ap.GetHatchTime)
    end
    if Ar then
        return nil
    end
    local Ar_1 = type(Ao_1.EggSettings) == "table" and Ao_1.EggSettings[ei:GetAttribute("OriginalName")]
    local Ao_2 = Ar_1 or nil
    local Ar_2 = Ao_2
    if Ao_2 then
        Ao_2 = Ar_2.HatchTime
    end
    local Ar_3 = tonumber(Ao_2) or 5
    local Ar_4 = ei:GetAttribute("EggSize") or "Normal"
    Ar_5, At_1 = pcall(Ap.GetHatchTime, Ar_3, Ar_4)
    local Ao_4 = not Ar_5 or not tonumber(At_1)
    if Ao_4 then
        return nil
    end
    local Ao_5 = Aq
    local Ap_1 = 1
    if Ao_5 then
        Ao_5 = vM(Aq.GetHatchMultiplier)
    end
    if Ao_5 then
        Ao_6, Ar_6 = pcall(Aq.GetHatchMultiplier)
        local Aq_1 = Ao_6 and tonumber(Ar_6) and tonumber(Ar_6) > 0
        if Aq_1 then
            Ap_1 = tonumber(Ar_6)
        end
    end
    return tonumber(At_1) / Ap_1
end
local function fn687()
    local DW = v6("PlotConfigurations")
    local DW_2
    local DX = v5(true)
    if DX <= 0 then
        return
    end
    local DY = DW and DW.MaxSlots
    local DY_3
    local DZ = tonumber(DY) or 0
    if DZ > 0 and DX >= DZ then
        wy("Pet slots are maxed out")
        return
    end
    local DY_2 = nil
    local DZ_2 = DW and type(DW.Upgrades) == "table"
    if DZ_2 then
        DY_2 = tonumber(DW.Upgrades[DX + 1])
    end
    local DW_1 = DY_2 and wp() < DY_2
    if DW_1 then
        return
    end
    DW_2, DY_3 = vV("RequestPlotUpgrade")
    local DZ_3 = DW_2 and type(DY_3) == "table" and DY_3.Success
    if DZ_3 then
        v5(true)
        vK("Unlocked pet slot " .. tostring(DX + 1))
        wy("Unlocked pet slot " .. tostring(DX + 1))
    end
end
local function fn691(at)
    local xn_1
    local xl = wi[at]
    if xl ~= nil then
        if xl == false then
            return nil
        end
        return xl
    end
    local Modules = vp:FindFirstChild("Modules")
    local xm = Modules and Modules:FindFirstChild(at)
    local xm_2
    local xm_1 = not xm or not xm:IsA("ModuleScript")
    if xm_1 then
        wi[at] = false
        return nil
    end
    xm_2, xn_1 = pcall(require, xm)
    local xl_3 = not xm_2 or type(xn_1) ~= "table"
    if xl_3 then
        wi[at] = false
        return nil
    end
    wi[at] = xn_1
    return xn_1
end
local function fn702(gp)
    local BU = (tonumber(gp))
    local BY = if BU then 1 else 0
    local BW = 2316 * BY + 644 * (1 - BY)
    local BX = 3283 * BY + 706 * (1 - BY)
    if not ((BW * 1944 + BX * 344 + BW * BX) % 16777213 == 13235084) then
        BU = 0.6
    end
    vm.interval = math.max(BU, 0.1)
end
local function fn708(fV)
    local BA = {}
    if type(fV) == "table" then
        for k, v in pairs(fV) do
            local BB = v == true and type(k) == "string"
            if BB then
                BA[k] = true
            elseif type(v) == "string" then
                BA[v] = true
            end
        end
    end
    return BA
end
local function fn743(hc)
    wz.rarities = vw(hc)
end
local function fn749(cc)
    local yJ = not cc or not cc:IsA("ProximityPrompt") or not cc.Enabled
    if yJ then
        return false
    elseif not vM(fireproximityprompt) then
        return false
    else
        return (pcall(fireproximityprompt, cc))
    end
end
local function fn789()
    if not wf() then
        return false
    end
    wy("Delivering the egg")
    local y3 = if not vH(vY, 0) then 1 else 0
    if y3 == 1 then
        return false
    end
    local yZ = os.clock() + 4
    while true do
        local y_ = vy() and wf() and os.clock() < yZ
        if y_ then
            vH(vY, 0)
            task.wait(0.2)
            continue
        end
        break
    end
    return not wf()
end
local function fn792(X)
    return type(X) == "function"
end
local function fn825(U)
    local xe = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if xe then
        return cloneref(U)
    end
    return U
end
local function fn832(hE)
    if hE then
        vG(wm, vT)
    else
        vE(wm)
    end
end
local function fn853(dR)
    local z0 = tonumber(State.CapacityStamp)
    local z0_1
    local z1 = not dR
    local z1_1
    if z1 ~= false then
        local z2_1 = State.PlotCapacity
        local z6 = if z2_1 then 1 else 0
        local z4 = 2430 * z6 + 156 * (1 - z6)
        local z5 = 3069 * z6 + 2526 * (1 - z6)
        if not ((z4 * 2441 + z5 * 2942 + z4 * z5) % 16777213 == 5641085) then
            z2_1 = 0
        end
        z1 = z2_1 > 0
    end
    if z1 then
        z1 = z0
    end
    if z1 then
        z1 = os.clock() - z0 < 20
    end
    if z1 then
        return State.PlotCapacity
    end
    z0_1, z1_1 = vV("GetPlotCapacity")
    local z2_2 = z0_1 and tonumber(z1_1)
    if z2_2 then
        State.PlotCapacity = tonumber(z1_1)
        State.CapacityStamp = os.clock()
    end
    return State.PlotCapacity or 0
end
local function fn854(ix)
    if ix then
        vG(v8, vJ)
    else
        vE(v8)
    end
end
local function fn881(bh)
    local xQ_1
    local xP_1
    local xO = vv(bh)
    xP_1, xQ_1 = {}, {}
    if not xO then
        return xP_1, xQ_1
    end
    for i, child in ipairs(xO:GetChildren()) do
        if child:IsA("Model") then
            if child:GetAttribute("IsEgg") == true then
                table.insert(xP_1, child)
            elseif child:GetAttribute("ItemUUID") then
                table.insert(xQ_1, child)
            end
        end
    end
    return xP_1, xQ_1
end
local function fn898(i9)
    local DO = tonumber(i9) or 1
    v0.minimum = math.max(math.floor(DO), 1)
end
local function fn921(gz)
    vm.rarities = vw(gz)
end
local function fn929(bp)
    local xY = bp == ""
    local xZ = type(bp) ~= "string"
    local x6 = if xZ then 1 else 0
    local x4 = 199 * x6 + 1646 * (1 - x6)
    local x5 = 1890 * x6 + 331 * (1 - x6)
    if not ((x4 * 3336 + x5 * 3485 + x4 * x5) % 16777213 == 7626624) then
        xZ = xY
    end
    if xZ then
        return nil
    end
    local xY_1 = v6("AnimalConfigurations")
    local xZ_1 = xY_1 and type(xY_1.Animals) == "table" and xY_1.Animals
    local xY_2 = xZ_1 or nil
    local xZ_2 = xY_2
    if xY_2 then
        xY_2 = xZ_2[bp]
    end
    local x_ = xY_2
    local xY_3 = type(x_) == "table" and type(x_.Rarity) == "string"
    if xY_3 then
        return x_.Rarity
    end
    local xY_4 = v6("EggConfigurations")
    local x__1 = xY_4 and type(xY_4.EggDrops) == "table" and xY_4.EggDrops[bp]
    local xY_5 = x__1
    local x6_1 = if xY_5 then 1 else 0
    local x4_1 = 874 * x6_1 + 1120 * (1 - x6_1)
    local x5_1 = 2420 * x6_1 + 4013 * (1 - x6_1)
    if not ((x4_1 * 4062 + x5_1 * 184 + x4_1 * x5_1) % 16777213 == 6110548) then
        xY_5 = nil
    end
    local x__2 = xY_5
    local xY_6 = not xZ_2
    local x0 = type(x__2) ~= "table" or xY_6
    if x0 then
        return nil
    end
    local xY_7 = nil
    for k in pairs(x__2) do
        local x__3 = xZ_2[k]
        local x0_1 = type(x__3) == "table" and x__3.Rarity
        local x__4 = x0_1 or nil
        if type(x__4) == "string" then
            if not xY_7 or (wo[x__4] or 0) > (wo[xY_7] or 0) then
                xY_7 = x__4
            end
        end
    end
    return xY_7
end
local function fn1004()
    local SellNPC = wB:FindFirstChild("SellNPC")
    local Bn = SellNPC and SellNPC:FindFirstChild("ProxPart")
    local Bm_1 = Bn
    if Bn then
        Bn = Bm_1:IsA("BasePart")
    end
    if Bn then
        return Bm_1
    end
    return nil
end
local function fn1017(ak, al)
    if not vy() then
        return
    end
    local Notifications = State.Notifications
    local xi = tostring(ak)
    local xj = al or 5
    table.insert(Notifications, { text = xi, time = xj })
    if #State.Notifications > 12 then
        table.remove(State.Notifications, 1)
    end
end
local function fn1020()
    local Ad = vv()
    if not Ad then
        return nil
    end
    local Ae = Ad.Size * 0.5
    local Af = math.max(Ae.X - 6, 1)
    local Ag = math.max(Ae.Z - 6, 1)
    local Ah = Vector3.new((math.random() * 2 - 1) * Af, Ae.Y, (math.random() * 2 - 1) * Ag)
    return Ad.Position + Ah
end
local function fn1021(cE)
    local y5_2
    local y4 = os.clock() + 8
    local y4_2
    while true do
        local y5_1 = State.MoveBusy and vy() and os.clock() < y4
        if y5_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    local y4_1 = State.MoveBusy or not vy()
    if y4_1 then
        return false
    end
    State.MoveBusy = true
    y4_2, y5_2 = pcall(cE)
    State.MoveBusy = false
    if not y4_2 then
        warn("[Ouroboros] movement error: " .. tostring(y5_2))
        return false
    end
    return y5_2
end
local function fn1075(ap)
    State.Status = tostring(ap)
end
local function fn1161(jb)
    v0.teleport = jb == true
end
local function fn1215(bN)
    local yh = v6("ZoneConfigurations")
    local yi = yh and yh[bN]
    local yi_1 = type(yi) == "table" and type(yi.DisplayName) == "string"
    if yi_1 then
        return yi.DisplayName
    end
    return bN
end
local function fn1217(iC)
    v8.targets = vw(iC)
end
local function fn1256(hz)
    local CK = tonumber(hz) or 3
    wt.interval = math.max(CK, 0.5)
end
local function fn1259(jn)
    if jn then
        vG(vW, vC)
    else
        vE(vW)
    end
end
local function fn1283()
    local stats = LocalPlayer:FindFirstChild("stats")
    local xG = stats and stats:FindFirstChild("Money")
    local xF_1 = xG
    if xG then
        xG = tonumber(xF_1.Value)
    end
    return xG or 0
end
local function fn1284()
    local CP = if vn("EquipBestPets") then 1 else 0
    if CP == 1 then
        wy("Equipped your best pets")
    end
end
local function fn1285()
    local yo_1
    local yn_1
    yo_1, yn_1 = {}, {}
    local Eggs = wB:FindFirstChild("Eggs")
    local yq = {}
    if Eggs then
        for i, child in ipairs(Eggs:GetChildren()) do
            local yp_1 = child:IsA("Folder") and child.Name:match("^Zone%d+$")
            if yp_1 then
                table.insert(yq, child.Name)
            end
        end
    end
    if #yq == 0 then
        local yp_2 = v6("ZoneConfigurations")
        if type(yp_2) == "table" then
            for k in pairs(yp_2) do
                local yp_3 = type(k) == "string" and k:match("^Zone%d+$")
                if yp_3 then
                    table.insert(yq, k)
                end
            end
        end
    end
    table.sort(yq, function(b5, b6)
        local yk = tonumber(b5:match("%d+")) or 0
        local yl = tonumber(b6:match("%d+")) or 0
        return yk < yl
    end)
    for i, v in ipairs(yq) do
        local yp_4 = v:gsub("Zone", "Zone ") .. " - " .. vt(v)
        table.insert(yo_1, yp_4)
        yn_1[yp_4] = v
    end
    return yo_1, yn_1
end
vm = nil
vn = nil
vo = nil
vp = nil
vq = nil
vr = nil
vs = nil
vt = nil
vu = nil
vv = nil
vw = nil
LocalPlayer = nil
vy = nil
vC = nil
vD = nil
vE = nil
vG = nil
vH = nil
vJ = nil
vK = nil
vL = nil
vM = nil
vP = nil
vQ = nil
State = nil
vT = nil
CoreGui = nil
vV = nil
vW = nil
vY = nil
v0 = nil
v1 = nil
v2 = nil
v5 = nil
v6 = nil
local Players, vl, vz, Workspace, vB, Lighting, vI, vN, TeleportService, vS, vX, vZ, GuiService, v3, v4
v8 = nil
v9 = nil
wa = nil
wb = nil
wc = nil
we = nil
wf = nil
wg = nil
wi = nil
wj = nil
wm = nil
wo = nil
wp = nil
wr = nil
wt = nil
ww = nil
wx = nil
wy = nil
wz = nil
wB = nil
wC = nil
wD = nil
local HttpService, wd, VirtualUser, wk, UserInputService, wn, wq, RunService, wu, wv, wA
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, wC = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
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
local wF = "OuroborosSwingForEggs"
wC = fn603
if getgenv then
    getgenv().gethui = wC
end
we, vp, wB, wu, wo, vB, vM, vy = nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn652)
local function wH(t)
    local w7
    local w5
    local w6
    w5 = nil
    w6 = nil
    w7 = nil
    local w8 = t ~= ""
    local w9 = type(t) == "string" and w8
    assert(w9, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    w5 = getgenv()
    assert(type(w5) == "table", "getgenv did not return a table")
    local w8_1 = w5[t]
    if w8_1 ~= nil then
        local w9_1 = type(w8_1) == "table" and type(w8_1.Unload) == "function"
        assert(w9_1, "Namespace is occupied")
        w8_1.Unload()
        assert(w5[t] == nil, "Previous instance did not release its namespace")
    end
    w6 = {}
    w7 = { State = {}, Unloaded = false }
    w7.Track = function(z)
        assert(type(z) == "function", "Cleanup must be callable")
        if w7.Unloaded then
            z()
        else
            table.insert(w6, z)
        end
        return z
    end
    w7.Unload = function()
        local wZ_1
        local wY_1
        if w7.Unloaded then
            return
        end
        w7.Unloaded = true
        local wW = {}
        local w2 = #w6
        local w1 = -1
        while false and w2 <= 1 or true and w2 >= 1 do
            local w3 = w2
            local wX_1 = table.remove(w6, w3)
            wY_1, wZ_1 = pcall(wX_1)
            if not wY_1 then
                table.insert(wW, tostring(wZ_1))
            end
            w2 += w1
        end
        table.clear(w7.State)
        if #wW > 0 then
            error("Cleanup incomplete: " .. table.concat(wW, "; "), 0)
        end
        if w5[t] == w7 then
            w5[t] = nil
        end
    end
    w5[t] = w7
    return w7
end
vB = function(M, N)
    local xc = type(M) == "table" and type(M.Track) == "function"
    assert(xc, "FeatureAPI required")
    local xc_1 = type(N) == "table" and type(N.OnUnload) == "function"
    assert(xc_1, "UI library required")
    assert(type(N.Unload) == "function", "UI unload required")
    M.Track(function()
        if not N.Unloaded then
            N:Unload()
        end
    end)
    N:OnUnload(function()
        M.Unload()
    end)
end
we = wH(wF)
vM = fn792
vy = fn128
vp = fn825(ReplicatedStorage)
wB = fn825(Workspace)
wu = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythical",
    "Secret",
    "Divine",
    "Eternal",
    "Cosmic",
    "Hacker"
}
if (false and (not vy and false) and ((not wo or not vy) and (false or wH)) or (not vy or false or (vB or vy)) and (vy or wH or false and not wo)) and not (false and (not vy and false) and ((not wo or not vy) and (false or wH)) or (not vy or false or (vB or vy)) and (vy or wH or false and not wo)) then
    we = {}
else
    wo = {}
end
for i, v in ipairs(wu) do
    wo[v] = i
end
v3, vY, State, wi, vm, wz, wt, wm, wj, v8, v0, vW, vQ, vK, wy, v6, wd, vn, vV, wp, vL, vv, v2, wx, vS, vt, vX, wA, v9, vH, wf, vN, wk, wD, wg, vz, wq, wn, v5, wv, v4, vl, vP, wa, wr, vs, vu, vI, ww, vZ, vG, vE, vw, wb, v1, vo, vT, wc, vJ, vq, vC, vr = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
v3 = { "Inventory", "Equipped" }
vY = Vector3.new(31, 3, 134)
State = we.State
State.Notifications = {}
State.Status = "Idle"
State.PlotCapacity = 0
State.MoveBusy = false
vK = fn1017
wy = fn1075
wi = {}
v6 = fn691
wd = fn101
vn = function(aN, ...)
    local xt
    local xs
    xs = nil
    xt = nil
    xs = wd(aN, "RemoteEvent")
    if not xs then
        return false
    end
    xt = table.pack(...)
    return (pcall(function()
        xs:FireServer(table.unpack(xt, 1, xt.n))
    end))
end
vV = function(aU, ...)
    local xz
    local xy
    xy = nil
    xz = nil
    xz = wd(aU, "RemoteFunction")
    if not xz then
        return false, "remote unavailable"
    end
    xy = table.pack(...)
    local xA = table.pack(pcall(function()
        return xz:InvokeServer(table.unpack(xy, 1, xy.n))
    end))
    if not xA[1] then
        return false, "remote rejected"
    end
    return true, table.unpack(xA, 2, xA.n)
end
wp = fn1283
vL = fn133
vv = fn387
v2 = fn881
wx = fn929
vS = fn634
vt = fn1215
vX = fn1285
wA = fn749
v9 = fn635
vH = function(ck, cl)
    local yP
    local yO
    yO = nil
    yP = nil
    if typeof(ck) ~= "Vector3" then
        return false
    end
    yO = v9()
    if not yO then
        return false
    end
    local yR = cl or 4
    yP = ck + Vector3.new(0, yR, 0)
    return (pcall(function()
        yO.CFrame = CFrame.new(yP)
        yO.AssemblyLinearVelocity = Vector3.zero
    end))
end
wf = fn627
vN = fn789
wk = fn1021
wD = fn528
wg = function(cR)
    local ze_1
    local zd_1
    if not cR then
        return nil
    elseif cR:IsA("BasePart") then
        return cR.Position
    else
        zd_1, ze_1 = pcall(function()
            return cR:GetPivot()
        end)
        local zf = zd_1 and typeof(ze_1) == "CFrame"
        if zf then
            return ze_1.Position
        end
        return nil
    end
end
vz = fn252
wq = fn359
wn = function()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local Character = LocalPlayer.Character
    local dF = {}
    local function dG(dH)
        if not dH then
            return
        end
        for i, child in ipairs(dH:GetChildren()) do
            if child:IsA("Tool") then
                local attr = child:GetAttribute("OriginalName")
                if type(attr) == "string" then
                    table.insert(dF, { Tool = child, Name = attr, IsEgg = vS(attr), Rarity = wx(attr) })
                end
            end
        end
    end
    dG(Backpack)
    dG(Character)
    return dF
end
v5 = fn853
wv = fn246
v4 = fn1020
vl = function(ea)
    local Character = LocalPlayer.Character
    local Al = Character and Character:FindFirstChildOfClass("Humanoid")
    local Aj = Al
    if not Aj or not ea then
        return false
    elseif ea.Parent == Character then
        return true
    else
        return (pcall(function()
            Aj:EquipTool(ea)
        end))
    end
end
vP = fn682
wa = fn175
wr = fn669
vs = fn49
vu = fn189
vI = fn106
ww = fn383
vZ = fn1004
vm = { interval = 0.6, zones = {}, rarities = {} }
wz = { interval = 2, rarities = {} }
wt = { interval = 3 }
wm = { interval = 12 }
wj = { interval = 15 }
v8 = { interval = 10, targets = {} }
v0 = { interval = 30, mode = "Inventory", minimum = 1, teleport = true }
vW = { interval = 10 }
vQ = { interval = 10 }
vG = function(fG, fH)
    local generation
    local Bw = fG.generation or 0
    fG.generation = Bw + 1
    fG.stopped = false
    generation = fG.generation
    task.spawn(function()
        local Bt_1
        while true do
            local Bs = vy() and not fG.stopped and fG.generation == generation
            local Bs_1
            if Bs then
                Bs_1, Bt_1 = pcall(fH)
                if not Bs_1 then
                    warn("[Ouroboros] loop error: " .. tostring(Bt_1))
                end
                local Bs_2 = not vy() or fG.stopped or fG.generation ~= generation
                if Bs_2 then
                    break
                end
                task.wait(fG.interval)
                continue
            end
            break
        end
    end)
end
vE = fn569
vw = fn708
wb = function()
    local BP
    if wf() then
        wk(vN)
        return
    end
    local BQ = vz(vm.zones, vm.rarities)
    if #BQ == 0 then
        wy("No egg matches the filters right now")
        return
    end
    BP = wq(BQ)
    if not BP then
        return
    end
    wy("Collecting " .. BP.Name)
    wk(function()
        if not BP.Model.Parent then
            return false
        elseif not vH(BP.Position, 4) then
            return false
        else
            task.wait(0.35)
            if not BP.Model.Parent then
                return false
            end
            wA(BP.Prompt)
            local BM = os.clock() + 1.5
            while true do
                local BN = vy() and not wf() and os.clock() < BM
                if BN then
                    task.wait(0.05)
                    continue
                end
                break
            end
            if wf() then
                vN()
            end
            return true
        end
    end)
end
vm.SetEnabled = fn17
vm.SetDelay = fn702
vm.SetZones = fn465
vm.SetRarities = fn921
v1 = function()
    local Cf, Cg, Ch, Ci, Cj, Ck
    Cj = vv()
    if not Cj then
        wy("Your plot is not loaded")
        return
    end
    Cf = wn()
    if #Cf == 0 then
        return
    end
    Ci = next(wz.rarities) ~= nil
    local Cl = v2()
    Ch = wv() - #Cl
    Ck = false
    Cg = 0
    wk(function()
        local B6 = wg(Cj)
        local B7 = B6 and not vH(B6, 8)
        if B7 then
            return false
        end
        task.wait(0.3)
        for i, v in ipairs(Cf) do
            local B6_1 = not vy() or wz.stopped
            if B6_1 or Ck then
                break
            elseif not not v.Tool.Parent then
                local B6_2 = Ci
                if B6_2 then
                    B6_2 = not (v.Rarity and wz.rarities[v.Rarity])
                end
                if not B6_2 then
                    if not (v.IsEgg and Ch <= 0) then
                        local B6_4 = v4()
                        local B7_3 = B6_4 and vl(v.Tool)
                        if B7_3 then
                            task.wait(0.15)
                            if vn("PlaceItemAtCursor", B6_4) then
                                task.wait(0.45)
                                if v.Tool.Parent then
                                    Ck = true
                                else
                                    Cg += 1
                                    if v.IsEgg then
                                        Ch -= 1
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        return true
    end)
    if Cg > 0 then
        v5(true)
        local Cm = Cg == 1 and "" or "s"
        wy("Placed " .. Cg .. " item" .. Cm .. " on your plot")
    else
        local Cl_2 = Ck
        local Cq = if Cl_2 then 1 else 0
        local Co = 1626 * Cq + 2081 * (1 - Cq)
        local Cp = 2111 * Cq + 2714 * (1 - Cq)
        if not ((Co * 1498 + Cp * 3306 + Co * Cp) % 16777213 == 12847200) then
            Cl_2 = Ch <= 0
        end
        if Cl_2 then
            wy("Your plot will not take any more")
        end
    end
end
wz.SetEnabled = fn500
wz.SetRarities = fn743
wz.SetDelay = fn204
vo = fn557
wt.SetEnabled = fn127
wt.SetDelay = fn1256
vT = fn1284
wm.SetEnabled = fn832
wm.SetDelay = fn473
wc = fn117
wj.SetEnabled = fn265
vJ = fn92
v8.SetEnabled = fn854
v8.SetTargets = fn1217
vq = function()
    local DB
    local DC = v0.mode == "Equipped" and "Equipped"
    local DC_1
    local DD = DC or "Inventory"
    local DD_1
    DB = DD
    if DB == "Inventory" then
        if #wn() < v0.minimum then
            return
        end
    else
        DC_1, DD_1 = v2()
        if #DD_1 < v0.minimum then
            return
        end
    end
    local DC_2 = wk(function()
        if v0.teleport then
            local Dv = vZ()
            local Dv_1 = Dv and Dv.Position or nil
            local Dw_1 = Dv_1
            if Dv_1 then
                Dv_1 = not vH(Dw_1, 4)
            end
            if Dv_1 then
                return false
            end
            task.wait(0.3)
            return vn("RequestSell", DB)
        end
        return vn("RequestSell", DB)
    end)
    if DC_2 then
        wy("Sold your " .. string.lower(DB))
    end
end
v0.SetEnabled = fn68
v0.SetDelay = fn235
v0.SetMode = fn65
v0.SetMinimum = fn898
v0.SetTeleport = fn1161
vC = fn637
vW.SetEnabled = fn1259
vr = fn687
vQ.SetEnabled = fn559
we.Track(fn181)
vD = nil
vD = task.spawn(worker)
we.Track(fn609)
local function wE_1()
    local onDiscord
    local IH
    local IJ
    onDiscord = nil
    IH = nil
    IJ = nil
    local SaveManager, Ix, Iy, Iz, Library, IB, Toggles, ID, IE, IF, ThemeManager, Options
    Iz = "https://rscripts.net/@Ouroboros"
    Ix = "Swing For Eggs"
    IF = "https://ouroboros-hub-rbx.web.app/"
    IJ = "https://discord.gg/synapsex"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    vB(we, Library)
    Iy, IE = vX()
    IB = vI()
    IH = function(km, kn)
        local D9 = vM(setclipboard) and setclipboard
        local Ea = D9
        if not Ea then
            local D9_1 = vM(toclipboard) and toclipboard
            Ea = D9_1 or nil
        end
        local D9_2 = Ea
        if not D9_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Ea_1 = pcall(D9_2, km)
        if Ea_1 then
            Library:Notify(kn)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        IH(IJ, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = IJ, Copyable = true }, "|", Ix, "|", "v0.3" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    ID = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function IK_1(kB)
        local DiscordGroup = kB:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in ID do
        if k ~= "Info" then
            IK_1(v)
        end
    end
    local function IL()
        local me
        local EggsGroup = ID.Main:AddLeftGroupbox("Eggs", "egg")
        local Label = EggsGroup:AddLabel(State.Status, true)
        EggsGroup:AddDivider()
        EggsGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal",
            Default = false,
            Tooltip = "Travels to the nearest matching wild egg, grabs it, and runs it to the delivery point.",
            Callback = function(kM)
                vm.SetEnabled(kM)
            end
        })
        EggsGroup:AddDropdown("StealZones", {
            Text = "Zones",
            Values = Iy,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Wild eggs only. Leave everything unticked to use every zone.",
            Callback = function(kR)
                vm.SetZones(kR, IE)
            end
        })
        EggsGroup:AddDropdown("StealRarities", {
            Text = "Rarities",
            Values = wu,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to accept any rarity.",
            Callback = function(kX)
                vm.SetRarities(kX)
            end
        })
        EggsGroup:AddSlider("StealDelay", {
            Text = "Steal Delay",
            Default = 0.6,
            Min = 0.1,
            Max = 10,
            Rounding = 1,
            Suffix = "s",
            Callback = function(kZ)
                vm.SetDelay(kZ)
            end
        })
        EggsGroup:AddDivider("Plot")
        EggsGroup:AddToggle("AutoPlace", {
            Text = "Auto Place Eggs",
            Default = false,
            Tooltip = "Carries what you are holding back to your plot and plants it until the plot is full.",
            Callback = function(k0)
                wz.SetEnabled(k0)
            end
        })
        EggsGroup:AddDropdown("PlaceRarities", {
            Text = "Place Rarities",
            Values = wu,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Only plants items of these rarities. Leave everything unticked to plant whatever you are carrying.",
            Callback = function(k4)
                wz.SetRarities(k4)
            end
        })
        EggsGroup:AddSlider("PlaceDelay", {
            Text = "Place Delay",
            Default = 2,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(k6)
                wz.SetDelay(k6)
            end
        })
        EggsGroup:AddToggle("AutoHatch", {
            Text = "Auto Hatch Eggs",
            Default = false,
            Tooltip = "Hatches every egg on your plot as soon as its timer is finished.",
            Callback = function(k8)
                wt.SetEnabled(k8)
            end
        })
        EggsGroup:AddSlider("HatchDelay", {
            Text = "Hatch Check Delay",
            Default = 3,
            Min = 0.5,
            Max = 30,
            Rounding = 1,
            Suffix = "s",
            Callback = function(lc)
                wt.SetDelay(lc)
            end
        })
        EggsGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Tooltip = "Uses the game's Equip Best button to put your strongest pets on the plot. The game holds it on a 10 second cooldown.",
            Callback = function(le)
                wm.SetEnabled(le)
            end
        })
        EggsGroup:AddSlider("EquipBestDelay", {
            Text = "Equip Best Delay",
            Default = 12,
            Min = 10,
            Max = 120,
            Rounding = 0,
            Suffix = "s",
            Callback = function(li)
                wm.SetDelay(li)
            end
        })
        local MoneyGroup = ID.Main:AddRightGroupbox("Money", "dollar-sign")
        MoneyGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Tooltip = "Sells through the sell NPC on a timer.",
            Callback = function(ll)
                v0.SetEnabled(ll)
            end
        })
        MoneyGroup:AddDropdown("SellMode", {
            Text = "Sell Mode",
            Values = v3,
            Default = "Inventory",
            Multi = false,
            Tooltip = "Inventory sells everything you are carrying, including eggs you have not planted. Equipped sells the pets standing on your plot.",
            Callback = function(lr)
                v0.SetMode(lr)
            end
        })
        MoneyGroup:AddSlider("SellMinimum", {
            Text = "Minimum Items",
            Default = 1,
            Min = 1,
            Max = 30,
            Rounding = 0,
            Tooltip = "Waits until you have at least this many items before selling.",
            Callback = function(lt)
                v0.SetMinimum(lt)
            end
        })
        MoneyGroup:AddSlider("SellDelay", {
            Text = "Sell Delay",
            Default = 30,
            Min = 1,
            Max = 300,
            Rounding = 0,
            Suffix = "s",
            Callback = function(lv)
                v0.SetDelay(lv)
            end
        })
        MoneyGroup:AddToggle("SellTeleport", {
            Text = "Travel To Seller",
            Default = true,
            Tooltip = "Walks you to the sell NPC before selling.",
            Callback = function(lx)
                v0.SetTeleport(lx)
            end
        })
        local UpgradesGroup = ID.Main:AddRightGroupbox("Upgrades", "trending-up")
        UpgradesGroup:AddToggle("AutoIndex", {
            Text = "Auto Claim Index",
            Default = false,
            Tooltip = "Claims the index reward of every animal you have discovered.",
            Callback = function(lA)
                wj.SetEnabled(lA)
            end
        })
        UpgradesGroup:AddToggle("AutoTreadmill", {
            Text = "Auto Upgrade Treadmill",
            Default = false,
            Tooltip = "Buys the next treadmill as soon as you can afford it.",
            Callback = function(lE)
                vW.SetEnabled(lE)
            end
        })
        UpgradesGroup:AddToggle("AutoSlots", {
            Text = "Auto Upgrade Pet Slots",
            Default = false,
            Tooltip = "Buys the next pet slot on your plot as soon as you can afford it.",
            Callback = function(lI)
                vQ.SetEnabled(lI)
            end
        })
        UpgradesGroup:AddDivider("Suits")
        UpgradesGroup:AddToggle("AutoSuits", {
            Text = "Auto Buy Suits",
            Default = false,
            Tooltip = "Buys unowned suits with cash, cheapest first.",
            Callback = function(lM)
                v8.SetEnabled(lM)
            end
        })
        UpgradesGroup:AddDropdown("SuitTargets", {
            Text = "Suits",
            Values = IB,
            Default = {},
            Multi = true,
            AllowNull = true,
            Tooltip = "Leave everything unticked to buy every suit you can afford.",
            Callback = function(lR)
                v8.SetTargets(lR)
            end
        })
        me = task.spawn(function()
            while not Library.Unloaded do
                pcall(function()
                    local Ee_1
                    local Ed_1
                    Ee_1, Ed_1 = v2()
                    local Ef = State.PlotCapacity or 0
                    local Ef_1 = string.format("Eggs %d/%d  |  Pets %d/%d", #Ee_1, wv(), #Ed_1, Ef)
                    Label:SetText(Ef_1 .. "  |  " .. tostring(State.Status))
                end)
                local Em = false
                repeat
                    local Ei
                    if State.Notifications and #State.Notifications > 0 then
                        Ei = table.remove(State.Notifications, 1)
                        pcall(function()
                            Library:Notify(Ei.text, Ei.time)
                        end)
                    else
                        Em = true
                    end
                until Em
                task.wait(0.3)
            end
        end)
        we.Track(function()
            if coroutine.status(me) ~= "dead" then
                pcall(task.cancel, me)
            end
        end)
    end
    IL()
    local function IK_2()
        local EK
        local EN
        local EH
        local ED
        ED = nil
        EH = nil
        EK = nil
        EN = nil
        local EE, EF, Label3, Label2, EJ, EL, Label, EO, EP
        EK = function(mj)
            return (tostring(mj):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        ED = function(ml, mm)
            return string.format('<font color="%s">%s</font>', mm, EK(ml))
        end
        EJ = function(mp, mq, mr)
            return string.format("<b>%s</b> %s %s", mp, ED("-", "#5a6070"), ED(mq, mr))
        end
        EF = "#7fd47f"
        local EQ = {}
        EP = "#e8a34d"
        local ER = "#6ec1ff"
        local ES = "#8b93a3"
        if not vM(fireproximityprompt) then
            table.insert(EQ, "stealing")
        end
        if not wd("PlaceItemAtCursor", "RemoteEvent") then
            table.insert(EQ, "placing")
        end
        if not wd("RequestHatch", "RemoteEvent") then
            table.insert(EQ, "hatching")
        end
        if not wd("IndexRewardAction", "RemoteFunction") then
            table.insert(EQ, "index rewards")
        end
        local EY = if not wd("SuitShopAction", "RemoteFunction") then 1 else 0
        if EY == 1 then
            table.insert(EQ, "suits")
        end
        local ET = not wd("RequestTreadmillUpgrade", "RemoteFunction") or not wd("RequestPlotUpgrade", "RemoteFunction")
        if ET then
            table.insert(EQ, "upgrades")
        end
        if not wd("RequestSell", "RemoteEvent") then
            table.insert(EQ, "selling")
        end
        local ET_1 = #EQ == 0 and "ready"
        local EU = ET_1 or "limited: " .. table.concat(EQ, ", ")
        EE = "Unknown"
        pcall(function()
            local Ep_1
            local Eo_1
            if vM(identifyexecutor) then
                Ep_1, Eo_1 = identifyexecutor()
                local Eq = Ep_1 ~= ""
                local Er = type(Ep_1) == "string" and Eq
                if Er then
                    local Eq_1 = type(Eo_1) == "string" and Eo_1 ~= "" and Ep_1 .. " " .. Eo_1
                    EE = Eq_1 or Ep_1
                end
            end
        end)
        EH = os.clock()
        EO = function()
            local Ew = math.floor(os.clock() - EH)
            if Ew < 60 then
                return Ew .. "s"
            elseif Ew < 3600 then
                return string.format("%dm %ds", Ew // 60, Ew % 60)
            else
                return string.format("%dh %dm", Ew // 3600, Ew % 3600 // 60)
            end
        end
        local UserGroup = ID.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(EJ("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, EF), true)
        UserGroup:AddLabel(EJ("UserId", tostring(LocalPlayer.UserId), ER), true)
        UserGroup:AddLabel(EJ("Executor", EE .. "  " .. EU, EF), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(EJ("Session", EO(), EP), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                IH(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                IH("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = ID.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(EJ("Game", Ix, ER), true)
        Label2 = SessionGroup:AddLabel(EJ("Players", "0/0", EF), true)
        EL = tostring(game.JobId)
        local ER_1 = #EL > 18 and string.sub(EL, 1, 18) .. "..."
        local ET_3 = ER_1
        local EY_1 = if ET_3 then 1 else 0
        local EW = 3581 * EY_1 + 4074 * (1 - EY_1)
        local EX = 1114 * EY_1 + 3763 * (1 - EY_1)
        if not ((EW * 1535 + EX * 1040 + EW * EX) % 16777213 == 10644629) then
            ET_3 = EL
        end
        local ER_2 = ET_3
        SessionGroup:AddLabel(EJ("Job", ER_2, ES), true)
        Label = SessionGroup:AddLabel(EJ("Ping", "0 ms", EP), true)
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
                IH(EL, "Copied Job ID")
            end
        })
        EN = task.spawn(function()
            local Ez_1
            local Ey_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(EJ("Session", EO(), EP))
                Label2:SetText(EJ("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), EF))
                Ey_1, Ez_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local Ey_2 = Ey_1 and Ez_1 .. " ms" or "n/a"
                Label:SetText(EJ("Ping", Ey_2, EP))
            end
        end)
        we.Track(function()
            if coroutine.status(EN) ~= "dead" then
                task.cancel(EN)
            end
        end)
        local SocialsGroup = ID.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                IH(Iz, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                IH(IF, "Copied website link")
            end
        })
    end
    IK_2()
    local function IK_3()
        local nH
        local nF
        local nI
        local nG
        local MovementGroup = ID.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = ID.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local nE = {}
        nH = {}
        nG = {}
        nF = {}
        nI = {}
        local function nJ()
            for k, v in nF do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(nF)
        end
        local function nN()
            for k, v in nG do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(nG)
        end
        local function nR()
            for k, v in nH do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(nH)
        end
        local function nV(nW)
            if not nW:IsA("ProximityPrompt") then
                return
            end
            if nI[nW] == nil then
                nI[nW] = {
                    HoldDuration = nW.HoldDuration,
                    MaxActivationDistance = nW.MaxActivationDistance,
                    RequiresLineOfSight = nW.RequiresLineOfSight
                }
            end
            nW.HoldDuration = 0
            nW.MaxActivationDistance = 50
            nW.RequiresLineOfSight = false
        end
        local function nY()
            for k, v in nI do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(nI)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                nR()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                nN()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                nJ()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(nV, v)
                end
            else
                nY()
            end
        end)
        table.insert(nE, Workspace.DescendantAdded:Connect(function(og)
            if Toggles.InstantProximityPrompt.Value then
                nV(og)
            end
        end))
        table.insert(nE, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if nF[v] == nil then
                        nF[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(nE, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local FP = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and FP then
                FP:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(nE, RunService.RenderStepped:Connect(function(oF)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local FS = Character and Character:FindFirstChildOfClass("Humanoid")
            local FT = Character
            if FT then
                FT = Character:FindFirstChild("HumanoidRootPart")
            end
            local FR_1 = FT
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and FS then
                if nG[FS] == nil then
                    nG[FS] = FS.WalkSpeed
                end
                FS.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and FR_1 and FS and CurrentCamera then
                if nH[FS] == nil then
                    nH[FS] = FS.PlatformStand
                end
                FS.PlatformStand = true
                local FT_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        FT_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        FT_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        FT_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        FT_4 += CurrentCamera.CFrame.RightVector
                    end
                    local FZ = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                    if FZ == 1 then
                        FT_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        FT_4 -= Vector3.new(0, 1, 0)
                    end
                end
                FR_1.AssemblyLinearVelocity = Vector3.zero
                if FT_4.Magnitude > 0 then
                    FR_1.CFrame = FR_1.CFrame + FT_4.Unit * Options.FlySpeed.Value * oF
                end
            end
        end))
        we.Track(function()
            for k, v in nE do
                v:Disconnect()
            end
            nJ()
            nN()
            nR()
            nY()
        end)
    end
    IK_3()
    local function IK_4()
        local He, Hf, Label, Hh, Hi, Hj, Hk, Hl, Hm, Hn, Ho, Hp, Hq, Hr
        Hh = {}
        Hp = {}
        Hm = nil
        Hj = 0
        Hn = 0
        Hr = false
        He = os.clock()
        local MenuGroup = ID.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Hk = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local F7 = not CurrentCamera
            local Gb = if F7 then 1 else 0
            local F9 = 846 * Gb + 2016 * (1 - Gb)
            local Ga = 3123 * Gb + 1233 * (1 - Gb)
            if not ((F9 * 1606 + Ga * 1825 + F9 * Ga) % 16777213 == 9700209) then
                F7 = not vM(VirtualUser.CaptureController)
            end
            local Ge = if F7 then 1 else 0
            local Gc = 1247 * Ge + 1906 * (1 - Ge)
            local Gd = 2132 * Ge + 974 * (1 - Ge)
            if not ((Gc * 2901 + Gd * 2549 + Gc * Gd) % 16777213 == 11710619) then
                F7 = not vM(VirtualUser.ClickButton2)
            end
            if F7 then
                return false
            end
            local F7_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not F7_1 then
                return false
            end
            Hn += 1
            He = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Hn)
            end)
            return true
        end
        Hf = function(po)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not po)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not po
                end
            end)
            if not po then
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
        Hq = function(pE)
            local Gm = pE.ClassName == "ParticleEmitter" or pE.ClassName == "Trail" or pE.ClassName == "Smoke" or pE.ClassName == "Fire"
            local Gq = if Gm then 1 else 0
            local Go = 3085 * Gq + 3294 * (1 - Gq)
            local Gp = 3852 * Gq + 1381 * (1 - Gq)
            if not ((Go * 3842 + Gp * 1289 + Go * Gp) % 16777213 == 11924005) then
                Gm = pE.ClassName == "Sparkles"
            end
            if not Gm then
                Gm = pE.ClassName == "Explosion"
            end
            if not Gm then
                Gm = pE.ClassName == "Beam"
            end
            if Gm then
                if Hh[pE] == nil then
                    Hh[pE] = pE.Enabled
                end
                pcall(function()
                    pE.Enabled = false
                end)
            end
        end
        Ho = function()
            for k, v in Hh do
                local Gv = k
                local Gx = v
                if Gv.Parent then
                    pcall(function()
                        Gv.Enabled = Gx
                    end)
                end
            end
            table.clear(Hh)
            if Hm then
                pcall(function()
                    settings().Rendering.QualityLevel = Hm.Quality
                end)
                Lighting.GlobalShadows = Hm.Shadows
                Lighting.FogEnd = Hm.Fog
                Hm = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(pT)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not pT)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(pY)
                if pY then
                    if not Hm then
                        Hm = {
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
                        pcall(Hq, v)
                    end
                else
                    Ho()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        Hf(true)
        local ScriptGroup = ID.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            Hf(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            Hf(true)
        end
        table.insert(Hp, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Hk()
            end
        end))
        table.insert(Hp, Workspace.DescendantAdded:Connect(function(qg)
            if Toggles.FpsBoost.Value then
                Hq(qg)
            end
        end))
        Hl = function(qk)
            if Hr or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            Hr = true
            local GQ = Hj
            local GR_1 = pcall(function()
                if qk then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not GR_1 then
                Hr = false
                if not qk and GQ == Hj then
                    task.delay(1.5, function()
                        if GQ == Hj then
                            Hl(true)
                        end
                    end)
                end
            end
        end
        table.insert(Hp, TeleportService.TeleportInitFailed:Connect(function(qC)
            local GY
            if qC == LocalPlayer and Hr then
                Hr = false
                GY = Hj
                task.delay(3, function()
                    if GY == Hj then
                        Hl(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local G2 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not G2 then
                return
            end
            table.insert(Hp, G2.ChildAdded:Connect(function(qR)
                if qR.Name == "ErrorPrompt" then
                    Hl(false)
                end
            end))
        end)
        Hi = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    Hf(true)
                end
                local G5 = Toggles.AntiAfk.Value and os.clock() - He >= 60
                if G5 then
                    Hk()
                end
                task.wait(1)
            end
        end)
        we.Track(function()
            Hj += 1
            for k, v in Hp do
                v:Disconnect()
            end
            pcall(task.cancel, Hi)
            Hf(false)
            Ho()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    IK_4()
    local function IK_5()
        local Ij, Ik, Il, Im
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(ID.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/SwingForEggs")
        local In = SaveManager:BuildConfigSection(ID.Settings)
        Im = function(rh, ri)
            local Hv_1 = (rh == "Toggle" and Toggles or Options)[ri]
            local Hu_2 = type(Hv_1) == "table" and Hv_1.Type == rh
            return Hu_2 and Hv_1 or nil
        end
        Ik = function(rr, rs)
            local Type = rs.Type
            if Type == "Toggle" then
                return { idx = rr, type = "Toggle", value = rs.Value == true }
            elseif Type == "Slider" then
                return { idx = rr, type = "Slider", value = tostring(rs.Value) }
            elseif Type == "Dropdown" then
                return { idx = rr, type = "Dropdown", multi = rs.Multi == true, value = rs.Value }
            elseif Type == "Input" then
                local Hz = rs.Value or ""
                return { idx = rr, type = "Input", text = tostring(Hz) }
            elseif Type == "ColorPicker" then
                return { idx = rr, type = "ColorPicker", value = rs.Value:ToHex(), transparency = rs.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = rr,
                    type = "KeyPicker",
                    mode = rs.Mode,
                    key = rs.Value,
                    modifiers = rs.Modifiers,
                    toggled = rs.Toggled
                }
            else
                return nil
            end
        end
        Ij = function()
            local HF = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local HG = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if HG then
                        local HG_1 = Ik(k, v)
                        if HG_1 then
                            HF[#HF + 1] = HG_1
                        end
                    end
                end
            end
            table.sort(HF, function(rC, rD)
                if rC.type ~= rD.type then
                    return rC.type < rD.type
                end
                return rC.idx < rD.idx
            end)
            return { objects = HF }
        end
        Il = function(rF)
            local HW
            HW = nil
            local HX = type(rF) ~= "table"
            local H0 = if HX then 1 else 0
            local HZ = 1357 * H0 + 2751 * (1 - H0)
            local H_ = 108 * H0 + 2795 * (1 - H0)
            if not ((HZ * 3715 + H_ * 4060 + HZ * H_) % 16777213 == 5626291) then
                HX = type(rF.idx) ~= "string"
            end
            if not HX then
                HX = type(rF.type) ~= "string"
            end
            if not HX then
                HX = SaveManager.Ignore[rF.idx]
            end
            if HX then
                return false
            end
            HW = Im(rF.type, rF.idx)
            if not HW then
                return false
            end
            local HX_1 = pcall(function()
                if rF.type == "Input" then
                    if type(rF.text) ~= "string" then
                        return
                    end
                    HW:SetValue(rF.text)
                elseif rF.type == "ColorPicker" then
                    HW:SetValueRGB(Color3.fromHex(rF.value), rF.transparency)
                elseif rF.type == "KeyPicker" then
                    HW:SetValue({ rF.key, rF.mode, rF.modifiers })
                    if rF.mode == "Toggle" and rF.toggled ~= nil then
                        HW.Toggled = rF.toggled
                        HW:Update()
                    end
                else
                    HW:SetValue(rF.value)
                end
            end)
            return HX_1
        end
        In:AddDivider()
        In:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        In:AddButton("Export Config to Clipboard", function()
            local H2_1
            local H1_1
            H1_1, H2_1 = pcall(HttpService.JSONEncode, HttpService, Ij())
            if H1_1 then
                local H1_2 = vM(setclipboard) and setclipboard
                local H3 = H1_2
                if not H3 then
                    local H1_3 = vM(toclipboard) and toclipboard
                    H3 = H1_3 or nil
                end
                local H1_4 = H3
                local H3_1 = type(H1_4) == "function" and pcall(H1_4, H2_1)
                if H3_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        In:AddButton("Import Config from Clipboard Text", function()
            local H8_1
            local H6 = Options.SaveManager_ImportSource.Value or ""
            local H6_1
            local H7 = tostring(H6):match("^%s*(.-)%s*$")
            if H7 == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #H7 > 262144 then
                Library:Notify("That config is too large")
                return
            end
            H6_1, H8_1 = pcall(HttpService.JSONDecode, HttpService, H7)
            local H7_1 = not H6_1
            local Ic = if H7_1 then 1 else 0
            local Ia = 3427 * Ic + 1885 * (1 - Ic)
            local Ib = 323 * Ic + 1960 * (1 - Ic)
            if not ((Ia * 3380 + Ib * 3682 + Ia * Ib) % 16777213 == 13879467) then
                H7_1 = type(H8_1) ~= "table"
            end
            local Ic_1 = if H7_1 then 1 else 0
            local Ia_1 = 1059 * Ic_1 + 2193 * (1 - Ic_1)
            local Ib_1 = 3301 * Ic_1 + 2814 * (1 - Ic_1)
            if not ((Ia_1 * 957 + Ib_1 * 3298 + Ia_1 * Ib_1) % 16777213 == 15395920) then
                H7_1 = type(H8_1.objects) ~= "table"
            end
            if H7_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #H8_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local H6_2 = 0
            for i, v in ipairs(H8_1.objects) do
                if Il(v) then
                    H6_2 += 1
                end
            end
            if H6_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local H8_2 = H6_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(H6_2, H8_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.StealDelay then
            vm.SetDelay(Options.StealDelay.Value)
        end
        if Options.StealZones then
            vm.SetZones(Options.StealZones.Value, IE)
        end
        if Options.StealRarities then
            vm.SetRarities(Options.StealRarities.Value)
        end
        if Options.PlaceRarities then
            wz.SetRarities(Options.PlaceRarities.Value)
        end
        if Options.PlaceDelay then
            wz.SetDelay(Options.PlaceDelay.Value)
        end
        if Options.HatchDelay then
            wt.SetDelay(Options.HatchDelay.Value)
        end
        if Options.SellMode then
            v0.SetMode(Options.SellMode.Value)
        end
        if Options.SellMinimum then
            v0.SetMinimum(Options.SellMinimum.Value)
        end
        if Options.SellDelay then
            v0.SetDelay(Options.SellDelay.Value)
        end
        if Toggles.SellTeleport then
            v0.SetTeleport(Toggles.SellTeleport.Value)
        end
        if Options.SuitTargets then
            v8.SetTargets(Options.SuitTargets.Value)
        end
        if Toggles.AutoSteal then
            vm.SetEnabled(Toggles.AutoSteal.Value)
        end
        if Toggles.AutoPlace then
            wz.SetEnabled(Toggles.AutoPlace.Value)
        end
        if Toggles.AutoHatch then
            wt.SetEnabled(Toggles.AutoHatch.Value)
        end
        if Options.EquipBestDelay then
            wm.SetDelay(Options.EquipBestDelay.Value)
        end
        if Toggles.AutoEquipBest then
            wm.SetEnabled(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoSell then
            v0.SetEnabled(Toggles.AutoSell.Value)
        end
        if Toggles.AutoIndex then
            wj.SetEnabled(Toggles.AutoIndex.Value)
        end
        if Toggles.AutoSuits then
            v8.SetEnabled(Toggles.AutoSuits.Value)
        end
        if Toggles.AutoTreadmill then
            vW.SetEnabled(Toggles.AutoTreadmill.Value)
        end
        if Toggles.AutoSlots then
            vQ.SetEnabled(Toggles.AutoSlots.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    IK_5()
end
wE_1()
