local fns = {}
local wQ
local xx
local LocalPlayer
local wW
local xD
local wD
local wk
local w1
local xJ
local wJ
local xq
local w7
local v7
local CoreGui
local xw
local ww
local xd
local wd
local wV
local xC
local wC
local wj
local xI
local xp
local wp
local wO
local State
local wc
local xB
local wB
local xi
local w_
local xH
local wH
local xo
local wN
local xu
local wb
local wT
local wA
local wZ
local xG
local wG
local xn
local wn
local wM
local xt
local wt
local xa
local wS
local xz
local wg
local xF
local wF
local xm
local wm
local w3
local v9
local wR
local xy
local wy
local wf
local wX
local xl
local wl
local w2
local wK
local xr
local w8
local v8
function fns.fn30()
    return xG:FindFirstChild("Gameplay")
end
function fns.fn31(lW)
    local FH = (tonumber(lW))
    local FL = if FH then 1 else 0
    local FJ = 2748 * FL + 290 * (1 - FL)
    local FK = 3083 * FL + 2174 * (1 - FL)
    if not ((FJ * 1584 + FK * 412 + FJ * FK) % 16777213 == 14095112) then
        FH = 0
    end
    xa.reserve = math.max(FH, 0)
end
function fns.fn35(e5)
    local attr = e5:GetAttribute("SizeTier")
    local BJ_2
    if v9(v7.tiers) > 0 then
        local BK = type(attr) ~= "string" or not v7.tiers[attr]
        if BK then
            return false
        end
        local BJ_1 = v9(v7.eggs) > 0 and not v7.eggs[e5.Name]
        if BJ_2 then
            return false
        end
        return true
    end
    BJ_2 = v9(v7.eggs) > 0 and not v7.eggs[e5.Name]
    if BJ_2 then
        return false
    end
    return true
end
function fns.fn48(k4)
    wF.enabled = k4 == true
    if wF.task then
        pcall(task.cancel, wF.task)
        wF.task = nil
    end
    if not wF.enabled then
        xp()
        return
    end
    wF.task = task.spawn(function()
        while true do
            local Fg = wl() and wF.enabled
            if Fg then
                pcall(xI)
                task.wait(0.5)
                continue
            end
            break
        end
    end)
end
function fns.fn53()
    local Ey = w8()
    if not Ey then
        State.LuckStatus = "Luck machine not loaded"
        return
    end
    local Ez = xd()
    if not Ez then
        return
    end
    local EA = Ey.Position + Vector3.new(0, 3.5, 0)
    if (Ez.Position - EA).Magnitude > 4 then
        wT(EA, 0.2)
        return
    end
    Ez.CFrame = CFrame.new(EA)
    Ez.AssemblyLinearVelocity = Vector3.zero
    if LocalPlayer:GetAttribute("OnLuckMachine") == true then
        local Ey_1 = (LocalPlayer:GetAttribute("Luck"))
        local EE = if Ey_1 then 1 else 0
        local EC = 3629 * EE + 244 * (1 - EE)
        local ED = 2496 * EE + 1648 * (1 - EE)
        if not ((EC * 1773 + ED * 1310 + EC * ED) % 16777213 == 1984748) then
            Ey_1 = 0
        end
        State.LuckStatus = "Farming luck (" .. tostring(Ey_1) .. ")"
    else
        State.LuckStatus = "Settling on the machine"
    end
end
function fns.fn78(l3)
    if l3 then
        xn(wV, wk)
    else
        xi(wV)
        if not wQ.stopped then
            return
        end
        State.LuckStatus = "Idle"
    end
end
function fns.fn84(lQ)
    if lQ then
        xn(xa, xC)
    else
        xi(xa)
        State.PickaxeStatus = "Idle"
    end
end
function fns.fn94(le)
    if le then
        table.clear(v7.cooldowns)
        xn(v7, wn)
    else
        xi(v7)
        w3("Idle")
    end
end
function fns.fn115()
    local attr = LocalPlayer:GetAttribute("LuckMachineLevel")
    local Ef = type(attr) == "number" and attr
    return Ef or 0
end
function fns.fn123()
    if wj("PenAction", "EquipBest") then
        State.EquipStatus = "Equipped best pets"
    else
        State.EquipStatus = "PenAction unavailable"
    end
end
function fns.fn140(ln)
    v7.eggs = w_(ln)
end
function fns.fn183(df)
    for i, v in ipairs(wX()) do
        if v == df then
            return i
        end
    end
    return 0
end
function fns.fn196()
    local yy = xy()
    local yz = yy and yy:FindFirstChild("HumanoidRootPart")
    local yy_1 = yz
    if yz then
        yz = yy_1:IsA("BasePart")
    end
    if yz then
        return yy_1
    end
    return nil
end
function fns.fn219()
    return v8:FindFirstChild("Events")
end
function fns.fn241(io)
    if not xl.enabled then
        return false
    end
    local attr = io:GetAttribute("Rarity")
    if type(attr) ~= "string" then
        return false
    elseif v9(xl.rarities) == 0 then
        return false
    else
        return xl.rarities[attr] == true
    end
end
function fns.fn246()
    return LocalPlayer.Character
end
function fns.fn260(eV)
    local Bt = {}
    if type(eV) == "table" then
        for k, v in pairs(eV) do
            local Bu
            local Bv = v == true and type(k) == "string"
            if Bv then
                Bu = k
            elseif type(v) == "string" then
                Bu = v
            end
            if Bu then
                Bt[Bu] = true
            end
        end
    end
    return Bt
end
function fns.fn270(bm)
    local zf_1
    if wK[bm] ~= nil then
        return wK[bm] or nil
    end
    local Modules = v8:FindFirstChild("Modules")
    local ze = Modules and Modules:FindFirstChild(bm)
    local ze_2
    local ze_1 = not ze or not ze:IsA("ModuleScript")
    if ze_1 then
        wK[bm] = false
        return nil
    end
    ze_2, zf_1 = pcall(require, ze)
    local zd_4 = not ze_2 or type(zf_1) ~= "table"
    if zd_4 then
        wK[bm] = false
        return nil
    end
    wK[bm] = zf_1
    return zf_1
end
function fns.fn287(kq)
    local ks = xx(kq)
    local kv = wX()
    local kw = math.max(#kv - 1, 1)
    local kx = math.clamp((ks - 1) / kw, 0, 1)
    return Color3.fromRGB(120, 230, 150):Lerp(Color3.fromRGB(255, 120, 200), kx)
end
function fns.fn314(bG)
    local zn = wS()
    local zo = zn and zn:FindFirstChild(bG)
    local zn_1 = zo
    if zo then
        zo = zn_1:IsA("RemoteFunction")
    end
    if zo then
        return zn_1
    end
    return nil
end
function fns.fn332()
    gethui = xJ
end
function fns.fn337(lw)
    if lw then
        xn(xF, xt)
    else
        xi(xF)
        State.PickupStatus = "Idle"
    end
end
local function fn352()
    local yB = xy()
    local yC = yB and yB:FindFirstChildOfClass("Humanoid")
    return yC or nil
end
local function fn364(it)
    xq()
    if wd(it) then
        State.SellStatus = "Selling " .. wB(it)
        if wg(it) then
            return true
        end
        local Dv_1 = xD() > 0 and wH() >= xD()
        if Dv_1 then
            State.PickupStatus = "Pen is full, holding " .. wB(it)
            return false
        elseif wW(it) then
            State.PickupStatus = "Placed " .. wB(it)
            return true
        else
            State.PickupStatus = "Could not place " .. wB(it)
            return false
        end
    else
        local Dv_2 = xD() > 0 and wH() >= xD()
        if Dv_2 then
            State.PickupStatus = "Pen is full, holding " .. wB(it)
            return false
        elseif wW(it) then
            State.PickupStatus = "Placed " .. wB(it)
            return true
        else
            State.PickupStatus = "Could not place " .. wB(it)
            return false
        end
    end
end
local function fn377(a2, a3)
    local y2 = os.clock() + a3
    while true do
        local y3 = wl() and os.clock() < y2
        if not y3 then
            return false
        end
        if a2() then
            break
        end
        task.wait(0.05)
    end
    return true
end
local function fn379(lC)
    local Fy = tonumber(lC) or 0
    xF.radius = math.max(Fy, 0)
end
local function fn428()
    if wj("RequestTeleport", "Shops") then
        w3("Teleported to shops")
        return true
    end
    local FS = wc("PickaxeShop")
    local FT = FS and wT(FS, 0.3)
    if FT then
        w3("Teleported to shops")
        return true
    end
    w3("Shop teleport unavailable")
    return false
end
local function fn435(W)
    local yt = typeof(cloneref) == "function" and typeof(W) == "Instance"
    if yt then
        return cloneref(W)
    end
    return W
end
local function fn443(bz)
    local zh = wS()
    local zi = zh and zh:FindFirstChild(bz)
    local zh_1 = zi
    if zi then
        zi = zh_1:IsA("RemoteEvent")
    end
    if zi then
        return zh_1
    end
    return nil
end
local function fn448(eB)
    local Be = wl() and not v7.stopped and v7.generation == eB
    return Be and not ww
end
local function fn449(bi)
    State.Status = tostring(bi)
end
local function fn465()
    return not w7.Unloaded
end
local function fn475(e1)
    local BD = 0
    for k in pairs(e1) do
        BD += 1
    end
    return BD
end
local function fn489()
    wy(false)
end
local function fn506()
    local DO = wA("PickaxeConfig")
    local DP = DO and DO.Tiers
    if type(DP) ~= "table" then
        State.PickaxeStatus = "Pickaxe config unavailable"
        return
    end
    local DP_1 = w1("GetPickaxeState")
    local DQ = 0
    for i, v in ipairs(DP) do
        if v.Name == DP_1 then
            DQ = i
            break
        end
    end
    local DP_2 = xr() - xa.reserve
    local DR
    local DS = #DP
    local DT = DQ + 1
    local D6 = DS
    local D5 = -1
    while false and D6 <= DT or true and D6 >= DT do
        local DQ_1 = DP[D6]
        local DS_1 = tonumber(DQ_1.Price)
        if DS_1 and DS_1 > 0 and DS_1 < math.huge and DP_2 >= DS_1 then
            DR = DQ_1
            break
        end
        D6 += D5
    end
    if not DR then
        State.PickaxeStatus = "Best affordable pickaxe owned"
        return
    end
    wj("BuyPickaxe", DR.Name)
    task.wait(0.4)
    wj("EquipPickaxe", DR.Name)
    State.PickaxeStatus = "Bought " .. DR.Name
end
local function fn522(lY)
    if lY then
        xn(w2, wD)
    else
        xi(w2)
        State.UpgradeStatus = "Idle"
    end
end
local function fn536(Z)
    return type(Z) == "function"
end
local function fn553()
    if wJ then
        return false
    end
    wJ = true
    return true
end
local function fn560()
    local zZ = wZ()
    local z_ = zZ and zZ:FindFirstChild("LuckMachine")
    if not z_ then
        return nil
    end
    local z__1 = wA("LuckMachineConfig")
    local z__2 = z__1 and z__1.STAND_PART or "LuckMachine_Platform"
    local z__3 = z_:FindFirstChild(z__2, true)
    local zZ_2 = z__3 and z__3:IsA("BasePart")
    if zZ_2 then
        return z__3
    end
    return nil
end
local function fn561(kz)
    if wF.entries[kz] then
        return
    end
    local BasePart = kz:FindFirstChildWhichIsA("BasePart")
    if not BasePart then
        return
    end
    local ER = tostring(kz:GetAttribute("SizeTier"))
    local ES = wR(ER)
    local highlight = Instance.new("Highlight")
    highlight.FillColor = ES
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.65
    highlight.OutlineTransparency = 0.1
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Adornee = kz
    highlight.Parent = wt()
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Adornee = BasePart
    billboardGui.Size = UDim2.fromOffset(190, 34)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 3.5, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.MaxDistance = 1200
    billboardGui.Parent = wt()
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.BuilderSansBold
    textLabel.TextSize = 15
    textLabel.TextColor3 = ES
    textLabel.TextStrokeTransparency = 0.4
    textLabel.Text = ER
    textLabel.Parent = billboardGui
    wF.entries[kz] = { highlight = highlight, billboard = billboardGui, label = textLabel, tier = ER }
end
local function fn585()
    local CX = wZ()
    local CY = CX and CX:FindFirstChild("Enclosure")
    local CX_1 = CY
    if CY then
        CY = CX_1:FindFirstChild("Items")
    end
    local CX_2 = CY
    if not CX_2 then
        return 0
    end
    local CY_1 = 0
    for i, child in ipairs(CX_2:GetChildren()) do
        if child:GetAttribute("PlacementId") ~= nil then
            CY_1 += 1
        end
    end
    return CY_1
end
local function fn596(lq)
    if lq == "Furthest" or lq == "Priority" then
        v7.priority = lq
    else
        v7.priority = "Nearest"
    end
end
local function fn607(eT)
    eT.stopped = true
    local Bo = eT.generation
    local Bs = if Bo then 1 else 0
    local Bq = 780 * Bs + 4074 * (1 - Bs)
    local Br = 2623 * Bs + 2052 * (1 - Bs)
    if not ((Bq * 257 + Br * 3718 + Bq * Br) % 16777213 == 11998714) then
        Bo = 0
    end
    eT.generation = Bo + 1
end
local function fn723(co)
    local zK = xz()
    local zL = zK and zK:FindFirstChild("Shops")
    local zK_1 = zL
    if zL then
        zL = zK_1:FindFirstChild(co)
    end
    return zL or nil
end
local function fn739(id)
    local Dn = wc("SellShop")
    if not Dn then
        return false
    elseif not wT(Dn, 0.5) then
        return false
    elseif not wj("RequestSell", "Equipped") then
        return false
    else
        local Dn_1 = wB(id)
        local Do = xB(function()
            return xo() == nil
        end, 4)
        if Do then
            State.Sold = State.Sold + 1
            State.SellStatus = "Sold " .. Dn_1
            return true
        end
        State.SellStatus = "Sell refused for " .. Dn_1
        return false
    end
end
local function fn758()
    local attr = LocalPlayer:GetAttribute("MoneyLog10")
    if type(attr) ~= "number" then
        return 0
    end
    return 10 ^ attr
end
local function fn761(lN)
    xl.rarities = w_(lN)
end
local function fn765(et)
    ww = true
    local Ba = os.clock()
    local Bc = Ba + (et or 5)
    while true do
        local Ba_1 = wl() and wJ and os.clock() < Bc
        if Ba_1 then
            task.wait(0.05)
            continue
        end
        break
    end
    if not wp() then
        ww = false
        return false
    end
    ww = false
    return true
end
local function fn777(dN)
    if not dN then
        return "prize"
    end
    local attr = dN:GetAttribute("OriginalName")
    local AS = type(attr) == "string" and attr
    return AS or "prize"
end
local function fn815(lE)
    if lE then
        xn(xw, wf)
    else
        xi(xw)
        State.EquipStatus = "Idle"
    end
end
local function fn826(ls)
    local Fr = tonumber(ls) or 0
    v7.range = math.max(Fr, 0)
end
local function fn858()
    local Aw = wA("RarityConfigurations")
    local Ax = {}
    if type(Aw) == "table" then
        for k, v in pairs(Aw) do
            local Aw_1 = type(k) == "string" and type(v) == "table"
            if Aw_1 then
                Ax[#Ax + 1] = k
            end
        end
    end
    table.sort(Ax)
    if #Ax == 0 then
        Ax = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Secret" }
    end
    return Ax
end
local function fn866()
    for k, v in pairs(wF.entries) do
        if v.highlight then
            v.highlight:Destroy()
        end
        if v.billboard then
            v.billboard:Destroy()
        end
        wF.entries[k] = nil
    end
end
local function fn867()
    return CoreGui
end
local function fn878(fI)
    local B5 = not fI or not fI:IsA("Tool")
    if B5 then
        return false
    end
    local attr = LocalPlayer:GetAttribute("EquippedPickaxe")
    local B6 = type(attr) == "string" and fI.Name == attr
    if B6 then
        return true
    end
    local Pickaxes = v8:FindFirstChild("Pickaxes")
    local B6_1 = Pickaxes ~= nil and Pickaxes:FindFirstChild(fI.Name) ~= nil
    return B6_1
end
local function fn890(mg)
    wy(mg)
end
local function fn893()
    local AJ = xy()
    if not AJ then
        return nil
    end
    for i, child in ipairs(AJ:GetChildren()) do
        local AJ_1 = child:IsA("Model") and child:GetAttribute("Carried") == true and child:GetAttribute("IsPrize") == true
        if AJ_1 then
            return child
        end
    end
    return nil
end
local function fn911()
    local FV = xo()
    if not FV then
        State.SellStatus = "Nothing in hand"
        return false
    end
    xq()
    return wg(FV)
end
local function fn959()
    local Eggs = v8:FindFirstChild("Eggs")
    local Ao = {}
    if Eggs then
        for i, child in ipairs(Eggs:GetChildren()) do
            Ao[#Ao + 1] = child.Name
        end
    end
    table.sort(Ao)
    return Ao
end
local function fn969()
    local EG_1
    local EF_1
    if wG(gethui) then
        EF_1, EG_1 = pcall(gethui)
        local EH = EF_1 and typeof(EG_1) == "Instance"
        if EH then
            return EG_1
        end
        return CoreGui
    end
    return CoreGui
end
local function fn989()
    local A0 = wZ()
    local A1 = A0 and A0:FindFirstChild("Spawn")
    local A0_1 = A1
    if A1 then
        A1 = A0_1:IsA("BasePart")
    end
    if A1 then
        return A0_1.Position + Vector3.new(0, 4, 0)
    end
    local A0_2 = xH()
    if A0_2 then
        return A0_2.Position + Vector3.new(0, 5, 0)
    end
    return nil
end
local function fn1003()
    local z7 = wA("SizeConfig")
    local z8 = z7 and z7.TIERS
    local z8_1 = type(z8) ~= "table" or #z8 == 0
    if z8_1 then
        return { "Small", "Medium", "Large", "Huge", "Giant", "Colossal", "MEGA" }
    end
    local z8_2 = {}
    for i, v in ipairs(z8) do
        z8_2[i] = tostring(v)
    end
    return z8_2
end
local function fn1028(dz)
    local AF = xm()
    local AG = not AF or typeof(dz) ~= "Vector3"
    if AG then
        return false
    end
    local AG_1 = AF.CFrame:PointToObjectSpace(dz)
    local AH = AF.Size * 0.5
    local AF_1 = math.abs(AG_1.X) <= AH.X and math.abs(AG_1.Y) <= AH.Y and math.abs(AG_1.Z) <= AH.Z
    return AF_1
end
local function fn1047()
    local D9 = wC()
    if not D9 then
        State.UpgradeStatus = "Pen board not loaded"
        return
    end
    local attr3 = D9:GetAttribute("CurrentLevel")
    local attr2 = D9:GetAttribute("MaxLevel")
    local attr = D9:GetAttribute("Price")
    local D9_1 = type(attr3) == "number" and type(attr2) == "number" and attr3 >= attr2
    if D9_1 then
        State.UpgradeStatus = "Pen at max level"
        return
    end
    local D9_2 = type(attr) ~= "number" or xr() < attr
    if D9_2 then
        State.UpgradeStatus = "Saving for pen upgrade"
        return
    end
    wj("RequestBaseUpgrade")
    State.UpgradeStatus = "Upgrading pen"
end
local function fn1068()
    local zH = xz()
    local zI = zH and zH:FindFirstChild("Zones")
    local zH_1 = zI
    if zI then
        zI = zH_1:FindFirstChild("CollectionZone")
    end
    local zH_2 = zI
    if zI then
        zI = zH_2:IsA("BasePart")
    end
    if zI then
        return zH_2
    end
    return nil
end
local function fn1080()
    local zQ = wZ()
    local zR = zQ and zQ:FindFirstChild("Enclosure")
    local zQ_1 = zR
    if zR then
        zR = zQ_1:FindFirstChild("PenPart")
    end
    local zQ_2 = zR
    if zR then
        zR = zQ_2:IsA("BasePart")
    end
    if zR then
        return zQ_2
    end
    return nil
end
local function fn1081(lK)
    xl.enabled = lK == true
    if not xl.enabled then
        State.SellStatus = "Idle"
    else
        State.SellStatus = "Armed"
    end
end
local function fn1087()
    local Eo = wA("LuckMachineConfig")
    local Ep = wN()
    local Eq = Eo and Eo.MAX_LEVEL
    local Eq_1 = type(Eq) == "number" and Ep >= Eq
    if Eq_1 then
        State.LuckStatus = "Luck machine at max level"
        return
    end
    local Eo_2 = wm(Ep)
    local Ep_1 = not Eo_2 or xr() < Eo_2
    if Ep_1 then
        State.LuckStatus = "Saving for luck machine"
        return
    end
    wj("LuckMachineAction", "Buy")
    State.LuckStatus = "Upgrading luck machine"
end
local function fn1088()
    local A6 = xd()
    local A7 = A6 and not wM(A6.Position)
    if A7 then
        return true
    end
    local A7_1 = wO()
    if A7_1 then
        if wT(A7_1, 0.35) then
            return true
        end
        wj("RequestTeleport", "Home")
        task.wait(0.6)
        local A6_1 = xd()
        local A7_2 = A6_1 ~= nil and not wM(A6_1.Position)
        return A7_2
    end
    wj("RequestTeleport", "Home")
    task.wait(0.6)
    local A6_2 = xd()
    local A7_3 = A6_2 ~= nil and not wM(A6_2.Position)
    return A7_3
end
local function fn1100()
    local zB = xz()
    local zC = zB and zB:FindFirstChild("Spawning")
    local zB_1 = zC
    if zC then
        zC = zB_1:FindFirstChild("ItemSpawners")
    end
    local zB_2 = zC
    if zC then
        zC = zB_2:FindFirstChild("Prizes")
    end
    return zC or nil
end
local function fn1112(jJ)
    local Ej_1
    local Eh = wA("LuckMachineConfig")
    local Ei = Eh and wG(Eh.Price)
    local Ei_1
    if Ei then
        Ei_1, Ej_1 = pcall(Eh.Price, jJ)
        local Eh_1 = Ei_1 and type(Ej_1) == "number"
        if Eh_1 then
            return Ej_1
        end
        local Eh_2 = wC()
        local Ei_2 = Eh_2 and Eh_2:GetAttribute("LuckMachinePrice")
        local Ei_3 = type(Ei_2) == "number" and Ei_2
        return Ei_3 or nil
    end
    local Eh_5 = wC()
    local Ei_4 = Eh_5 and Eh_5:GetAttribute("LuckMachinePrice")
    local Ei_5 = type(Ei_4) == "number" and Ei_4
    return Ei_5 or nil
end
local function fn1124(hb)
    local CS = not hb or not wG(fireproximityprompt)
    if CS then
        return false
    end
    local CS_1 = pcall(fireproximityprompt, hb)
    if not CS_1 then
        return false
    end
    return true
end
local function fn1158(ma)
    if ma then
        xn(wQ, wb)
    else
        xi(wQ)
        State.LuckStatus = "Idle"
    end
end
local function fn1168(lk)
    v7.tiers = w_(lk)
end
local function fn1178()
    local zN = xz()
    local zO = zN and zN:FindFirstChild("Pens")
    local zN_1 = zO
    if zO then
        zO = zN_1:FindFirstChild("ActivePens")
    end
    local zN_2 = zO
    if not zN_2 then
        return nil
    end
    return zN_2:FindFirstChild("Pen_" .. tostring(LocalPlayer.UserId))
end
local function fn1179()
    local FP = wO()
    local FQ = FP and wT(FP, 0.3)
    if FQ then
        w3("Teleported to pen")
        return true
    elseif wj("RequestTeleport", "Home") then
        w3("Teleported to pen")
        return true
    else
        w3("Pen teleport unavailable")
        return false
    end
end
local function fn1196()
    wJ = false
end
local function fn1227()
    local CU = wZ()
    local CV = CU and CU:FindFirstChild("Enclosure")
    local CU_1 = CV
    if CV then
        CV = CU_1:GetAttribute("Capacity")
    end
    local CU_2 = CV
    local CV_1 = type(CU_2) == "number" and CU_2
    return CV_1 or 0
end
local function fn1232()
    xu(false)
end
local function fn1248()
    local zT = wZ()
    local zU = zT and zT:FindFirstChild("BaseUpgrade")
    local zT_1 = zU
    if zU then
        zU = zT_1:FindFirstChild("Board")
    end
    local zT_2 = zU
    if zU then
        zU = zT_2:IsA("BasePart")
    end
    if zU then
        return zT_2
    end
    return nil
end
local function fn1280()
    local zy = xz()
    local zz = zy and zy:FindFirstChild("Eggs")
    return zz or nil
end
local function fn1282(lu)
    local Fu = tonumber(lu) or 0.55
    v7.swingDelay = math.clamp(Fu, 0.1, 3)
end
local function fn1292(g7)
    for i, descendant in ipairs(g7:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            return descendant
        end
    end
    return nil
end
v7 = nil
v8 = nil
v9 = nil
wb = nil
wc = nil
wd = nil
LocalPlayer = nil
wf = nil
wg = nil
wj = nil
wk = nil
wl = nil
wm = nil
wn = nil
wp = nil
wt = nil
ww = nil
wy = nil
wA = nil
wB = nil
wC = nil
wD = nil
wF = nil
wG = nil
wH = nil
wJ = nil
wK = nil
wM = nil
wN = nil
wO = nil
CoreGui = nil
wQ = nil
wR = nil
wS = nil
wT = nil
local Players, wa, wh, wi, Workspace, wq, wr, ws, wu, Lighting, wx, wz, wE, TeleportService, wL
wV = nil
wW = nil
wX = nil
wZ = nil
w_ = nil
w1 = nil
w2 = nil
w3 = nil
w7 = nil
w8 = nil
xa = nil
State = nil
xd = nil
xi = nil
xl = nil
xm = nil
xn = nil
xo = nil
xp = nil
xq = nil
xr = nil
xt = nil
xu = nil
xw = nil
xx = nil
xy = nil
xz = nil
xB = nil
xC = nil
xD = nil
xF = nil
xG = nil
local GuiService, wY, HttpService, w4, w5, w6, VirtualUser, xb, xe, xf, xg, xh, UserInputService, xk, xs, RunService, xA, xE
xH = nil
xI = nil
xJ = nil
local xK
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, xJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
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
local xM = "OuroborosBreakAnEgg"
xJ = fn867
if getgenv then
    getgenv().gethui = xJ
end
w7, v8, xG, xE, xh, w6, wY, State, wK, v7, xF, xw, xl, xa, w2, wV, wQ, wJ, ww, wF, wq, wG, wl, xy, xd, wr, xu, wT, xB, w3, wA, wS, wu, xk, wj, w1, xz, xg, wL, xm, wh, wZ, xH, wC, w8, xr, wX, xx, wM, xo, wB, wc, wO, xq, wp, wa, xA, ws, xn, xi, w_, v9, xe, wi, wE, xb, xK, w4, wn, wx, w5, wz, xD, wH, wW, wg, wd, xf, xt, wf, xC, wD, wN, wm, wk, wb, wt, xp, wR, xs, xI, wy = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn332)
local function xR(t)
    local yj
    local yh
    local yi
    yh = nil
    yi = nil
    yj = nil
    local yk = t ~= ""
    local yl = type(t) == "string" and yk
    assert(yl, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    yh = getgenv()
    assert(type(yh) == "table", "getgenv did not return a table")
    local yk_1 = yh[t]
    if yk_1 ~= nil then
        local yl_1 = type(yk_1) == "table" and type(yk_1.Unload) == "function"
        assert(yl_1, "Namespace is occupied")
        yk_1.Unload()
        assert(yh[t] == nil, "Previous instance did not release its namespace")
    end
    yi = {}
    yj = { State = {}, Unloaded = false }
    yj.Track = function(B)
        assert(type(B) == "function", "Cleanup must be callable")
        if yj.Unloaded then
            B()
        else
            table.insert(yi, B)
        end
        return B
    end
    yj.Unload = function()
        local ya_1
        local x9_1
        if yj.Unloaded then
            return
        end
        yj.Unloaded = true
        local x7 = {}
        local ye = #yi
        local yd = -1
        while false and ye <= 1 or true and ye >= 1 do
            local yf = ye
            local x8_1 = table.remove(yi, yf)
            x9_1, ya_1 = pcall(x8_1)
            if not x9_1 then
                table.insert(x7, tostring(ya_1))
            end
            ye += yd
        end
        table.clear(yj.State)
        if #x7 > 0 then
            error("Cleanup incomplete: " .. table.concat(x7, "; "), 0)
        end
        if yh[t] == yj then
            yh[t] = nil
        end
    end
    yh[t] = yj
    return yj
end
wq = function(O, P)
    local yr = type(O) == "table" and type(O.Track) == "function"
    assert(yr, "FeatureAPI required")
    local yr_1 = type(P) == "table" and type(P.OnUnload) == "function"
    assert(yr_1, "UI library required")
    assert(type(P.Unload) == "function", "UI unload required")
    O.Track(function()
        if not P.Unloaded then
            P:Unload()
        end
    end)
    P:OnUnload(function()
        O.Unload()
    end)
end
w7 = xR(xM)
wG = fn536
wl = fn465
v8 = fn435(ReplicatedStorage)
xG = fn435(Workspace)
if (not xq and not wt or not wt and not wt) and (not xq and xq or (xq or not xq)) or not ((not xq and not wt or not wt and not wt) and (not xq and xq or (xq or not xq))) then
    xy = fns.fn246
    xd = fns.fn196
    wr = fn352
    xE = {}
    xu = function(as)
        local yE = xy()
        if not yE then
            return
        end
        if as then
            for i, descendant in ipairs(yE:GetDescendants()) do
                local yE_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if yE_2 then
                    if xE[descendant] == nil then
                        xE[descendant] = true
                    end
                    descendant.CanCollide = false
                end
            end
            return
        end
        for k, v in pairs(xE) do
            local yP = k
            local yR = v
            if yP.Parent then
                pcall(function()
                    yP.CanCollide = yR
                end)
            end
            xE[yP] = nil
        end
    end
else
    xE = fns.fn246
    wr = fns.fn196
    xd = fn352
    xu = {}
    xy = function(as)
        local yE = xy()
        if not yE then
            return
        end
        if as then
            for i, descendant in ipairs(yE:GetDescendants()) do
                local yE_1 = descendant:IsA("BasePart") and descendant.CanCollide
                if yE_1 then
                    if xE[descendant] == nil then
                        xE[descendant] = true
                    end
                    descendant.CanCollide = false
                end
            end
            return
        end
        for k, v in pairs(xE) do
            local yP = k
            local yR = v
            if yP.Parent then
                pcall(function()
                    yP.CanCollide = yR
                end)
            end
            xE[yP] = nil
        end
    end
end
w7.Track(fn1232)
xh = 14
if ((xD and xD or xp and w8 or xD and not xD and (xD and not wm)) and (not w8 and w8 and (wm and not wm) or (not w8 or wm or not xD and not xD)) or (wm or not w8 or (xp or w8)) and ((xp or xD) and (not xD or not xp)) and (not wm and xp and (not xp and xp) and (w8 and not xD or w8 and not w8))) and not ((xD and xD or xp and w8 or xD and not xD and (xD and not wm)) and (not w8 and w8 and (wm and not wm) or (not w8 or wm or not xD and not xD)) or (wm or not w8 or (xp or w8)) and ((xp or xD) and (not xD or not xp)) and (not wm and xp and (not xp and xp) and (w8 and not xD or w8 and not w8))) then
    xB = 0.12
    w6 = 4.5
    wY = function(aJ, aK)
        if typeof(aJ) ~= "Vector3" then
            return false
        end
        local yT = CFrame.new(aJ)
        local yU = 0
        local yV = math.huge
        for i = 1, xh do
            local yS
            if not wl() then
                break
            else
                local yW = xd()
                if not yW then
                    task.wait(0.25)
                else
                    local Magnitude = (aJ - yW.Position).Magnitude
                    if Magnitude < wY then
                        break
                    elseif Magnitude < yV - 3 then
                        yV = Magnitude
                        yU = 0
                        xu(true)
                        yS = wr()
                        if yS then
                            pcall(function()
                                yS:ChangeState(Enum.HumanoidStateType.Freefall)
                            end)
                        end
                        yW.CFrame = yT
                        yW.AssemblyLinearVelocity = Vector3.zero
                        task.wait(w6)
                    else
                        yU += 1
                        if yU >= 3 then
                            break
                        end
                        xu(true)
                        yS = wr()
                        if yS then
                            pcall(function()
                                yS:ChangeState(Enum.HumanoidStateType.Freefall)
                            end)
                        end
                        yW.CFrame = yT
                        yW.AssemblyLinearVelocity = Vector3.zero
                        task.wait(w6)
                    end
                end
            end
        end
        xu(false)
        if aK then
            task.wait(aK)
        end
        local yT_2 = xd()
        return yT_2 ~= nil and (yT_2.Position - aJ).Magnitude < 12
    end
    wT = fn377
else
    w6 = 0.12
    wY = 4.5
    wT = function(aJ, aK)
        if typeof(aJ) ~= "Vector3" then
            return false
        end
        local yT = CFrame.new(aJ)
        local yU = 0
        local yV = math.huge
        for i = 1, xh do
            local yS
            if not wl() then
                break
            else
                local yW = xd()
                if not yW then
                    task.wait(0.25)
                else
                    local Magnitude = (aJ - yW.Position).Magnitude
                    if Magnitude < wY then
                        break
                    elseif Magnitude < yV - 3 then
                        yV = Magnitude
                        yU = 0
                        xu(true)
                        yS = wr()
                        if yS then
                            pcall(function()
                                yS:ChangeState(Enum.HumanoidStateType.Freefall)
                            end)
                        end
                        yW.CFrame = yT
                        yW.AssemblyLinearVelocity = Vector3.zero
                        task.wait(w6)
                    else
                        yU += 1
                        if yU >= 3 then
                            break
                        end
                        xu(true)
                        yS = wr()
                        if yS then
                            pcall(function()
                                yS:ChangeState(Enum.HumanoidStateType.Freefall)
                            end)
                        end
                        yW.CFrame = yT
                        yW.AssemblyLinearVelocity = Vector3.zero
                        task.wait(w6)
                    end
                end
            end
        end
        xu(false)
        if aK then
            task.wait(aK)
        end
        local yT_1 = xd()
        return yT_1 ~= nil and (yT_1.Position - aJ).Magnitude < 12
    end
    xB = fn377
end
State = w7.State
State.Status = "Idle"
State.PickupStatus = "Idle"
State.EquipStatus = "Idle"
State.SellStatus = "Idle"
State.PickaxeStatus = "Idle"
State.UpgradeStatus = "Idle"
State.LuckStatus = "Idle"
State.Broken = 0
State.Collected = 0
State.Sold = 0
w3 = fn449
wK = {}
wA = fns.fn270
wS = fns.fn219
wu = fn443
xk = fns.fn314
wj = function(bN, ...)
    local zr
    local zq
    zq = nil
    zr = nil
    zq = wu(bN)
    if not zq then
        return false
    end
    zr = table.pack(...)
    return (pcall(function()
        zq:FireServer(table.unpack(zr, 1, zr.n))
    end))
end
w1 = function(bU, ...)
    local zt
    local zu
    zt = nil
    zu = nil
    local zw_1
    local zv_1
    zu = xk(bU)
    if not zu then
        return nil
    end
    zt = table.pack(...)
    zv_1, zw_1 = pcall(function()
        return zu:InvokeServer(table.unpack(zt, 1, zt.n))
    end)
    if zv_1 then
        return zw_1
    end
    return nil
end
xz = fns.fn30
xg = fn1280
wL = fn1100
xm = fn1068
wh = fn723
wZ = fn1178
xH = fn1080
wC = fn1248
w8 = fn560
xr = fn758
wX = fn1003
xx = fns.fn183
wM = fn1028
xo = fn893
wB = fn777
wc = function(dQ, dR)
    local AZ_1
    local AY_1
    local AX = wh(dQ)
    if AX then
        AY_1, AZ_1 = pcall(function()
            return AX:GetPivot().Position
        end)
        if AY_1 then
            return AZ_1 + Vector3.new(0, 4, 8)
        end
        return dR
    end
    return dR
end
wO = fn989
xq = fn1088
v7 = {
    interval = 0.1,
    swingDelay = 0.55,
    tiers = {},
    eggs = {},
    priority = "Nearest",
    range = 0,
    cooldowns = {}
}
xF = { interval = 0.4, radius = 60 }
xw = { interval = 20 }
xl = { interval = 1, rarities = {}, keepUnlisted = true }
xa = { interval = 10, reserve = 0 }
w2 = { interval = 15 }
wV = { interval = 15 }
wQ = { interval = 0.2 }
wJ = false
ww = false
wp = fn553
wa = fn1196
xA = fn765
ws = fn448
xn = function(eH, eI)
    local generation
    local Bm = eH.generation or 0
    eH.generation = Bm + 1
    eH.stopped = false
    generation = eH.generation
    task.spawn(function()
        local Bj_1
        while true do
            local Bi = wl() and not eH.stopped and eH.generation == generation
            local Bi_1
            if Bi then
                Bi_1, Bj_1 = pcall(eI)
                if not Bi_1 then
                    warn("[Ouroboros] loop error: " .. tostring(Bj_1))
                end
                local Bi_2 = not wl() or eH.stopped or eH.generation ~= generation
                if Bi_2 then
                    break
                end
                task.wait(eH.interval)
                continue
            end
            break
        end
    end)
end
xi = fn607
w_ = fns.fn260
v9 = fn475
xe = fns.fn35
wi = function()
    local BM = xg()
    local BM_3
    if not BM then
        return {}
    end
    local BN = xd()
    local BN_1 = BN and BN.Position or Vector3.zero
    local BN_2 = os.clock()
    local BP = {}
    for i, child in ipairs(BM:GetChildren()) do
        local BY = child
        local BM_1 = BY:IsA("Model") and xe(BY)
        if BM_1 then
            local BM_2 = v7.cooldowns[BY]
            local BQ = not BM_2 or BN_2 >= BM_2
            local BQ_1
            if BQ then
                BM_3, BQ_1 = pcall(function()
                    return BY:GetPivot().Position
                end)
                if BM_3 then
                    local Magnitude = (BQ_1 - BN_1).Magnitude
                    if v7.range <= 0 or Magnitude <= v7.range then
                        BP[#BP + 1] = { model = BY, position = BQ_1, distance = Magnitude, rank = xx(BY:GetAttribute("SizeTier")) }
                    end
                end
            end
        end
    end
    return BP
end
wE = function()
    local priority
    priority = nil
    local B0 = wi()
    if #B0 == 0 then
        return nil
    end
    priority = v7.priority
    table.sort(B0, function(fE, fF)
        if priority == "Furthest" then
            return fE.distance > fF.distance
        elseif priority == "Priority" then
            if fE.rank ~= fF.rank then
                return fE.rank > fF.rank
            end
            return fE.distance < fF.distance
        else
            return fE.distance < fF.distance
        end
    end)
    return B0[1]
end
xb = fn878
xK = function()
    local B8
    local B9
    B8 = nil
    B9 = nil
    local Ca = xy()
    B8 = wr()
    if not Ca or not B8 then
        return false
    end
    local Tool = Ca:FindFirstChildOfClass("Tool")
    if xb(Tool) then
        return true
    end
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if not Backpack then
        return false
    end
    local attr = LocalPlayer:GetAttribute("EquippedPickaxe")
    B9 = nil
    for i, child in ipairs(Backpack:GetChildren()) do
        if xb(child) then
            local Cc_2 = type(attr) == "string" and child.Name == attr
            if Cc_2 then
                B9 = child
                break
            elseif not B9 then
                B9 = child
            end
        end
    end
    if not B9 then
        return false
    end
    if Tool then
        pcall(function()
            B8:UnequipTools()
        end)
    end
    pcall(function()
        B8:EquipTool(B9)
    end)
    return xb(Ca:FindFirstChildOfClass("Tool"))
end
w4 = function(f7, f8)
    local Cr_1
    local Cq_1, Cq_3
    local Co = os.clock() + 45
    while true do
        local Cp = ws(f8) and f7.Parent and os.clock() < Co
        if not Cp then
            return not f7.Parent
        end
        local Cp_1 = xd()
        if not Cp_1 then
            return false
        end
        Cq_1, Cr_1 = pcall(function()
            return f7:GetPivot().Position
        end)
        if not Cq_1 then
            return false
        end
        if (Cp_1.Position - Cr_1).Magnitude > 14 then
            if not wT(Cr_1 + Vector3.new(0, 4, 6), 0.2) then
                break
            end
            if not xK() then
                w3("No pickaxe equipped")
                return false
            end
            wj("PickaxeSwing", f7)
            local Cp_2 = os.clock() + v7.swingDelay
            while true do
                local Cq_2 = ws(f8) and os.clock() < Cp_2
                if Cq_3 then
                    task.wait(0.05)
                    continue
                end
                break
            end
            continue
        end
        if not xK() then
            w3("No pickaxe equipped")
            return false
        end
        wj("PickaxeSwing", f7)
        local Cp_3 = os.clock() + v7.swingDelay
        while true do
            Cq_3 = ws(f8) and os.clock() < Cp_3
            if Cq_3 then
                task.wait(0.05)
                continue
            end
            break
        end
    end
    return false
end
wn = function()
    local generation
    generation = v7.generation
    if not wp() then
        return
    end
    local Cx = pcall(function()
        local Ct = wE()
        if not Ct then
            w3("No eggs match the filters")
            return
        end
        local model = Ct.model
        w3(("Breaking %s (%s)"):format(model.Name, tostring(model:GetAttribute("SizeTier"))))
        xK()
        if not wT(Ct.position + Vector3.new(0, 4, 6), 0.25) then
            v7.cooldowns[model] = os.clock() + 5
            w3("Could not reach that egg")
            return
        end
        if w4(model, generation) then
            State.Broken = State.Broken + 1
            w3("Broke " .. model.Name)
        elseif ws(generation) then
            v7.cooldowns[model] = os.clock() + 8
            w3("Gave up on " .. model.Name)
        end
    end)
    wa()
    if not Cx then
        w3("Break failed")
    end
end
wx = function()
    local Cz = wL()
    local Cz_2
    if not Cz then
        return {}
    end
    local CA = xd()
    local CA_2
    local CA_1 = CA and CA.Position or Vector3.zero
    local CB_1 = {}
    for i, child in ipairs(Cz:GetChildren()) do
        local CK = child
        local Cz_1 = CK:IsA("Model") and CK:GetAttribute("BrokenBy") == LocalPlayer.UserId and CK:GetAttribute("Carried") ~= true
        if Cz_1 then
            Cz_2, CA_2 = pcall(function()
                return CK:GetPivot().Position
            end)
            if Cz_2 then
                local Magnitude = (CA_2 - CA_1).Magnitude
                if xF.radius <= 0 or Magnitude <= xF.radius then
                    CB_1[#CB_1 + 1] = { model = CK, position = CA_2, distance = Magnitude }
                end
            end
        end
    end
    table.sort(CB_1, function(g4, g5)
        return g4.distance < g5.distance
    end)
    return CB_1
end
w5 = fn1292
wz = fn1124
xD = fn1227
wH = fn585
wW = function(hx)
    local C8 = xH()
    if not C8 then
        return false
    end
    local C7 = wA("PenConfig")
    local C9 = not C7 or not wG(C7.ClampInsidePen) or not wG(C7.StandsAtPen)
    local C9_5, C9_8
    if C9 then
        return false
    end
    local Da = C7.MIN_RADIUS or 1
    local C5 = wA("SizeConfig")
    local Items = v8:FindFirstChild("Items")
    local Db = Items and Items:FindFirstChild("Normal")
    local Db_1
    local C9_3 = Db
    if Db then
        Db = C9_3:FindFirstChild(tostring(hx:GetAttribute("OriginalName")))
    end
    local C6 = Db
    local C9_4 = C6 and C6:IsA("Model") and C5 and wG(C5.AnimalMult) and wG(C7.ItemRadius)
    if C9_4 then
        C9_5, Db_1 = pcall(function()
            local hP = C5.AnimalMult(hx:GetAttribute("Rarity"), hx:GetAttribute("SizeTier"), C5.RollOf(hx:GetAttribute("SizeRoll")), C5.GrowRollOf(hx:GetAttribute("GrowRoll")))
            return C7.ItemRadius(C6, C7.BodyScale(C6, hP))
        end)
        local Dc_1 = C9_5 and type(Db_1) == "number"
        if Dc_1 then
            Da = Db_1
        end
    end
    local C9_6 = false
    local Dk = 1
    while Dk <= 8 do
        local Db_2 = xd()
        local Dc_2 = Db_2 and C7.StandsAtPen(C8, Db_2.Position)
        if Dc_2 then
            C9_6 = true
            break
        end
        local Db_3 = wO()
        if not Db_3 then
            break
        end
        wT(Db_3, 0.25)
        Dk += 1
    end
    if not C9_6 then
        return false
    end
    local C9_7 = xd()
    if not C9_7 then
        return false
    end
    local Db_4 = C9_7.CFrame.LookVector * Vector3.new(1, 0, 1)
    local Dc_3 = Db_4.Magnitude <= 0.001 and Vector3.new(0, 0, -1)
    local Dd = Dc_3
    local Dd_1
    local Dh = if Dd then 1 else 0
    local Df = 2733 * Dh + 2454 * (1 - Dh)
    local Dg = 2431 * Dh + 329 * (1 - Dh)
    if not ((Df * 3485 + Dg * 1327 + Df * Dg) % 16777213 == 2617152) then
        Dd = Db_4.Unit
    end
    local Db_5 = Dd
    local Dc_4 = C8.CFrame:PointToObjectSpace(C9_7.Position + Db_5 * (3 + Da))
    Dd_1, C9_8 = C7.ClampInsidePen(C8, Dc_4.X, Dc_4.Z, Da)
    local Da_1 = C8.CFrame:VectorToObjectSpace(Db_5)
    return wj("RequestPlaceItem", Dd_1, C9_8, math.atan2(-Da_1.X, -Da_1.Z))
end
wg = fn739
wd = fns.fn241
xf = fn364
xt = function()
    local DK
    local DL = xo()
    if DL then
        if not xA(8) then
            return
        end
        pcall(xf, DL)
        wa()
        return
    end
    DK = wx()
    if #DK == 0 then
        State.PickupStatus = "Waiting for prizes"
        return
    end
    if not xA(8) then
        return
    end
    pcall(function()
        local DE = DK[1]
        local model = DE.model
        State.PickupStatus = "Collecting " .. wB(model)
        local DF = DE.distance > 10 and not wT(DE.position + Vector3.new(0, 4, 3), 0.25)
        if DF then
            State.PickupStatus = "Could not reach " .. wB(model)
            return
        end
        local DD = w5(model)
        if not DD then
            xB(function()
                DD = w5(model)
                return DD ~= nil or model.Parent == nil
            end, 4)
        end
        local DE_1 = not DD
        local DJ = if DE_1 then 1 else 0
        local DH = 3791 * DJ + 934 * (1 - DJ)
        local DI = 172 * DJ + 3011 * (1 - DJ)
        if not ((DH * 816 + DI * 3760 + DH * DI) % 16777213 == 4392228) then
            DE_1 = not wz(DD)
        end
        if DE_1 then
            State.PickupStatus = "No pickup prompt yet"
            return
        end
        local DE_2 = xB(function()
            return xo() ~= nil
        end, 3)
        if not DE_2 then
            State.PickupStatus = "Pickup failed"
            return
        end
        State.Collected = State.Collected + 1
        xf(xo())
    end)
    wa()
end
wf = fns.fn123
xC = fn506
wD = fn1047
wN = fns.fn115
wm = fn1112
wk = fn1087
wb = fns.fn53
wF = { enabled = false, entries = {}, connection = nil, task = nil }
wt = fn969
if ((wb or false) and (xt or not wb) and (not wb and not wb or false) or (false and (xt and wb) or (false or not wb or not wb and false))) and not ((wb or false) and (xt or not wb) and (not wb and not wb or false) or (false and (xt and wb) or (false or not wb or not wb and false))) then
    xI = fn866
    xs = fns.fn287
    xp = fn561
    wR = function()
        local E1_3
        local EZ = xg()
        if not EZ then
            return
        end
        for k, v in pairs(wF.entries) do
            if not k.Parent then
                if v.highlight then
                    v.highlight:Destroy()
                end
                if v.billboard then
                    v.billboard:Destroy()
                end
                wF.entries[k] = nil
            end
        end
        local E_ = xd()
        local E__7
        local E__5 = E_ and E_.Position or Vector3.zero
        for i, child in ipairs(EZ:GetChildren()) do
            local Ff = child
            if Ff:IsA("Model") then
                xs(Ff)
                local EZ_2 = wF.entries[Ff]
                if EZ_2 and EZ_2.label then
                    E__7, E1_3 = pcall(function()
                        return Ff:GetPivot().Position
                    end)
                    local E2 = E__7 and math.floor((E1_3 - E__5).Magnitude)
                    local E__8 = E2 or 0
                    EZ_2.label.Text = ("%s  %dm"):format(EZ_2.tier, E__8)
                end
            end
        end
    end
else
    xp = fn866
    wR = fns.fn287
    xs = fn561
    xI = function()
        local E1_1
        local EZ = xg()
        if not EZ then
            return
        end
        for k, v in pairs(wF.entries) do
            if not k.Parent then
                if v.highlight then
                    v.highlight:Destroy()
                end
                if v.billboard then
                    v.billboard:Destroy()
                end
                wF.entries[k] = nil
            end
        end
        local E_ = xd()
        local E__3
        local E__1 = E_ and E_.Position or Vector3.zero
        for i, child in ipairs(EZ:GetChildren()) do
            local Ff = child
            if Ff:IsA("Model") then
                xs(Ff)
                local EZ_1 = wF.entries[Ff]
                if EZ_1 and EZ_1.label then
                    E__3, E1_1 = pcall(function()
                        return Ff:GetPivot().Position
                    end)
                    local E2 = E__3 and math.floor((E1_1 - E__1).Magnitude)
                    local E__4 = E2 or 0
                    EZ_1.label.Text = ("%s  %dm"):format(EZ_1.tier, E__4)
                end
            end
        end
    end
end
wy = fns.fn48
w7.Track(fn489)
w7.SetAutoBreak = fns.fn94
w7.SetBreakTiers = fn1168
w7.SetBreakEggs = fns.fn140
w7.SetBreakPriority = fn596
w7.SetBreakRange = fn826
w7.SetSwingDelay = fn1282
w7.SetAutoPickup = fns.fn337
w7.SetPickupRadius = fn379
w7.SetAutoEquipBest = fn815
w7.SetAutoSell = fn1081
w7.SetSellRarities = fn761
w7.SetAutoPickaxe = fns.fn84
w7.SetPickaxeReserve = fns.fn31
w7.SetAutoPenUpgrade = fn522
w7.SetAutoLuckUpgrade = fns.fn78
w7.SetAutoLuckFarm = fn1158
w7.SetEggEsp = fn890
w7.TeleportToPen = fn1179
w7.TeleportToShops = fn428
w7.SellHeld = fn911
w7.SizeTiers = wX
w7.EggNames = fn959
w7.RarityNames = fn858
local function xS()
    local mE = "https://ouroboros-hub-rbx.web.app/"
    local mC = "https://discord.gg/synapsex"
    local mA = "Break an Egg"
    local mB = "v0.1"
    local mD = "https://rscripts.net/@Ouroboros"
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    local Toggles = Library.Toggles
    local Options = Library.Options
    wq(w7, Library)
    local function mN(mO, mP)
        local F_ = wG(setclipboard) and setclipboard
        local F0 = F_
        if not F0 then
            local F__1 = wG(toclipboard) and toclipboard
            F0 = F__1 or nil
        end
        local F__2 = F0
        if not F__2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local F0_1 = pcall(F__2, mO)
        if F0_1 then
            Library:Notify(mP)
        else
            Library:Notify("Failed to copy")
        end
    end
    local function onDiscord()
        mN(mC, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = mC, Copyable = true }, "|", mA, "|", mB },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    local m1 = {
        [1] = Window:AddTab("Info", "info"),
        [2] = Window:AddTab("Main", "gamepad-2"),
        [3] = Window:AddTab("Player", "person-standing"),
        [4] = Window:AddTab("Settings", "settings")
    }
    local m2 = { [1] = m1[2]:AddSubTab("Eggs", "egg"), [2] = m1[2]:AddSubTab("Upgrades", "trending-up") }
    local function m3(m4)
        local DiscordGroup = m4:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    m3(m2[1])
    m3(m2[2])
    m3(m1[3])
    m3(m1[4])
    local m7 = {}
    local function m8()
        local nu
        local EggFarmingGroup = m2[1]:AddRightGroupbox("Egg Farming", "hammer")
        m7[1] = EggFarmingGroup:AddLabel(State.Status, true)
        EggFarmingGroup:AddToggle("AutoBreak", { Text = "Auto Break Eggs", Default = false, Callback = w7.SetAutoBreak })
        EggFarmingGroup:AddDropdown("BreakTiers", {
            Text = "Egg Rarities",
            Values = w7.SizeTiers(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = w7.SetBreakTiers
        })
        EggFarmingGroup:AddDropdown("BreakEggs", {
            Text = "Specific Eggs",
            Values = w7.EggNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = w7.SetBreakEggs
        })
        EggFarmingGroup:AddDropdown("BreakPriority", {
            Text = "Target Order",
            Values = { "Nearest", "Furthest", "Priority" },
            Default = "Nearest",
            Callback = w7.SetBreakPriority
        })
        EggFarmingGroup:AddSlider("BreakRange", {
            Text = "Max Distance (0 = any)",
            Default = 0,
            Min = 0,
            Max = 800,
            Rounding = 0,
            Callback = w7.SetBreakRange
        })
        EggFarmingGroup:AddSlider("SwingDelay", {
            Text = "Swing Delay",
            Default = 0.55,
            Min = 0.2,
            Max = 2,
            Rounding = 2,
            Suffix = "s",
            Callback = w7.SetSwingDelay
        })
        local PetsGroup = m2[1]:AddRightGroupbox("Pets", "paw-print")
        m7[2] = PetsGroup:AddLabel(State.PickupStatus, true)
        PetsGroup:AddToggle("AutoPickup", { Text = "Auto Pickup Pet", Default = false, Callback = w7.SetAutoPickup })
        PetsGroup:AddSlider("PickupRadius", {
            Text = "Pickup Radius (0 = any)",
            Default = 60,
            Min = 0,
            Max = 600,
            Rounding = 0,
            Callback = w7.SetPickupRadius
        })
        PetsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = w7.SetAutoEquipBest })
        m7[3] = PetsGroup:AddLabel(State.EquipStatus, true)
        local SellingGroup = m2[1]:AddLeftGroupbox("Selling", "hand-coins")
        m7[4] = SellingGroup:AddLabel(State.SellStatus, true)
        SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false, Callback = w7.SetAutoSell })
        SellingGroup:AddDropdown("SellRarities", {
            Text = "Sell Rarities",
            Values = w7.RarityNames(),
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = w7.SetSellRarities
        })
        SellingGroup:AddButton({
            Text = "Sell Held Pet",
            Func = function()
                task.spawn(w7.SellHeld)
            end
        })
        local PickaxesGroup = m2[2]:AddRightGroupbox("Pickaxes", "pickaxe")
        m7[5] = PickaxesGroup:AddLabel(State.PickaxeStatus, true)
        PickaxesGroup:AddToggle("AutoPickaxe", { Text = "Auto Buy Pickaxes", Default = false, Callback = w7.SetAutoPickaxe })
        PickaxesGroup:AddSlider("PickaxeReserve", {
            Text = "Keep Cash",
            Default = 0,
            Min = 0,
            Max = 10000000,
            Rounding = 0,
            Callback = w7.SetPickaxeReserve
        })
        local Pen_LuckMachineGroup = m2[2]:AddLeftGroupbox("Pen & Luck Machine", "arrow-big-up")
        m7[6] = Pen_LuckMachineGroup:AddLabel(State.UpgradeStatus, true)
        Pen_LuckMachineGroup:AddToggle("AutoPenUpgrade", { Text = "Auto Upgrade Pen", Default = false, Callback = w7.SetAutoPenUpgrade })
        m7[7] = Pen_LuckMachineGroup:AddLabel(State.LuckStatus, true)
        Pen_LuckMachineGroup:AddToggle("AutoLuckUpgrade", { Text = "Auto Upgrade Luck Machine", Default = false, Callback = w7.SetAutoLuckUpgrade })
        Pen_LuckMachineGroup:AddToggle("AutoLuckFarm", { Text = "Auto Farm Luck Machine", Default = false, Callback = w7.SetAutoLuckFarm })
        local TeleportsGroup = m2[2]:AddLeftGroupbox("Teleports", "map-pin")
        TeleportsGroup:AddButton({
            Text = "Teleport to Pen",
            Func = function()
                task.spawn(w7.TeleportToPen)
            end
        })
        TeleportsGroup:AddButton({
            Text = "Teleport to Shops",
            Func = function()
                task.spawn(w7.TeleportToShops)
            end
        })
        local VisualsGroup = m2[1]:AddRightGroupbox("Visuals", "eye")
        VisualsGroup:AddToggle("EggEsp", { Text = "Egg ESP", Default = false, Callback = w7.SetEggEsp })
        nu = task.spawn(function()
            while true do
                task.wait(0.5)
                if Library.Unloaded then
                    break
                end
                pcall(function()
                    m7[1]:SetText(State.Status)
                    m7[2]:SetText(State.PickupStatus)
                    m7[3]:SetText(State.EquipStatus)
                    m7[4]:SetText(State.SellStatus)
                    m7[5]:SetText(State.PickaxeStatus)
                    m7[6]:SetText(State.UpgradeStatus)
                    m7[7]:SetText(State.LuckStatus)
                end)
            end
        end)
        w7.Track(function()
            pcall(task.cancel, nu)
        end)
    end
    m8()
    local function nw()
        local Gf
        local Gk
        Gf = nil
        Gk = nil
        local Label3, Gg, Gh, Gi, Label, Gl, Label2, Gn
        local Gt_2
        local Gs_1, Gs_2
        local Gr_1
        Gi = Color3.fromRGB(120, 230, 150)
        local Go = Color3.fromRGB(120, 180, 255)
        Gg = Color3.fromRGB(255, 190, 120)
        local Gp = Color3.fromRGB(180, 180, 180)
        Gn = function(nC, nD, nE)
            return string.format('%s: <font color="#%s">%s</font>', nC, nE:ToHex(), tostring(nD))
        end
        local Gq = "Unknown"
        if wG(identifyexecutor) then
            Gr_1, Gs_1 = pcall(identifyexecutor)
            local Gt_1 = Gr_1 and type(Gs_1) == "string"
            if Gt_1 then
                Gq = Gs_1
            end
        end
        local Gr_2 = 0
        for i, v in ipairs({ "hookfunction", "getconnections", "fireproximityprompt", "setclipboard", "getgenv", "cloneref" }) do
            local GB = v
            Gs_2, Gt_2 = pcall(function()
                return getgenv()[GB]
            end)
            local Gu = Gs_2 and wG(Gt_2)
            if Gu then
                Gr_2 += 1
            end
        end
        local Gs_3 = "(" .. Gr_2 .. "/6 globals)"
        Gf = os.clock()
        Gl = function()
            local F7 = math.floor(os.clock() - Gf)
            if F7 < 60 then
                return F7 .. "s"
            elseif F7 < 3600 then
                return string.format("%dm %ds", F7 // 60, F7 % 60)
            else
                return string.format("%dh %dm", F7 // 3600, F7 % 3600 // 60)
            end
        end
        local UserGroup = m1[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Gn("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Gi), true)
        UserGroup:AddLabel(Gn("UserId", tostring(LocalPlayer.UserId), Go), true)
        UserGroup:AddLabel(Gn("Executor", Gq .. "  " .. Gs_3, Gi), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Gn("Session", Gl(), Gg), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                mN(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                mN("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = m1[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Gn("Game", mA, Go), true)
        Label2 = SessionGroup:AddLabel(Gn("Players", "0/0", Gi), true)
        Gh = tostring(game.JobId)
        local Go_1 = #Gh > 18 and string.sub(Gh, 1, 18) .. "..."
        local Gr_4 = Go_1 or Gh
        SessionGroup:AddLabel(Gn("Job", Gr_4, Gp), true)
        Label = SessionGroup:AddLabel(Gn("Ping", "0 ms", Gg), true)
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
                mN(Gh, "Copied Job ID")
            end
        })
        Gk = task.spawn(function()
            local Ga_1
            local F9_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Gn("Session", Gl(), Gg))
                Label2:SetText(Gn("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Gi))
                F9_1, Ga_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local F9_2 = F9_1 and Ga_1 .. " ms" or "n/a"
                Label:SetText(Gn("Ping", F9_2, Gg))
            end
        end)
        w7.Track(function()
            if coroutine.status(Gk) ~= "dead" then
                pcall(task.cancel, Gk)
            end
        end)
        local SocialsGroup = m1[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                mN(mD, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                mN(mE, "Copied website link")
            end
        })
    end
    nw()
    local function oL()
        local oT
        local oR
        local oS
        local oQ
        local MovementGroup = m1[3]:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = m1[3]:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        local oP = {}
        oT = {}
        oS = {}
        oQ = {}
        oR = {}
        local function oU()
            for k, v in oQ do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(oQ)
        end
        local function oY()
            for k, v in oR do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(oR)
        end
        local function o1()
            for k, v in oS do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(oS)
        end
        local function o5(o6)
            if not o6:IsA("ProximityPrompt") then
                return
            end
            if oT[o6] == nil then
                oT[o6] = {
                    HoldDuration = o6.HoldDuration,
                    MaxActivationDistance = o6.MaxActivationDistance,
                    RequiresLineOfSight = o6.RequiresLineOfSight
                }
            end
            o6.HoldDuration = 0
            o6.MaxActivationDistance = 50
            o6.RequiresLineOfSight = false
        end
        local function o8()
            for k, v in oT do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(oT)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                o1()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                oY()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                oU()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        pcall(o5, descendant)
                    end
                end
            else
                o8()
            end
        end)
        table.insert(oP, Workspace.DescendantAdded:Connect(function(pr)
            local Hh = Toggles.InstantProximityPrompt.Value and pr:IsA("ProximityPrompt")
            if Hh then
                o5(pr)
            end
        end))
        table.insert(oP, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if oQ[descendant] == nil then
                            oQ[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(oP, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Hz = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Hz then
                Hz:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(oP, RunService.RenderStepped:Connect(function(pO)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local HC = Character and Character:FindFirstChildOfClass("Humanoid")
            local HD = Character
            if HD then
                HD = Character:FindFirstChild("HumanoidRootPart")
            end
            local HB_1 = HD
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and HC then
                if oR[HC] == nil then
                    oR[HC] = HC.WalkSpeed
                end
                HC.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and HB_1 and HC and CurrentCamera then
                if oS[HC] == nil then
                    oS[HC] = HC.PlatformStand
                end
                HC.PlatformStand = true
                local HD_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    local HM = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                    if HM == 1 then
                        HD_4 += CurrentCamera.CFrame.LookVector
                    end
                    local HM_1 = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                    if HM_1 == 1 then
                        HD_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        HD_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        HD_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        HD_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        HD_4 -= Vector3.new(0, 1, 0)
                    end
                end
                HB_1.AssemblyLinearVelocity = Vector3.zero
                if HD_4.Magnitude > 0 then
                    HB_1.CFrame = HB_1.CFrame + HD_4.Unit * Options.FlySpeed.Value * pO
                end
            end
        end))
        w7.Track(function()
            for k, v in oP do
                v:Disconnect()
            end
            oU()
            oY()
            o1()
            o8()
        end)
    end
    oL()
    local function p3()
        local IZ, I_, I0, Label, I2, I3, I4, I5, I6, I7, I8, I9, Ja, Jb
        I2 = {}
        Ja = {}
        I7 = nil
        I8 = 0
        IZ = false
        I4 = 0
        I_ = os.clock()
        local MenuGroup = m1[4]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        I5 = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local HV = not CurrentCamera or not wG(VirtualUser.CaptureController) or not wG(VirtualUser.ClickButton2)
            if HV then
                return false
            end
            local HV_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not HV_1 then
                return false
            end
            I8 += 1
            I_ = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. I8)
            end)
            return true
        end
        I0 = function(qx)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not qx)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not qx
                end
            end)
            if not qx then
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
        Jb = function(qN)
            local H3 = qN.ClassName == "ParticleEmitter" or qN.ClassName == "Trail"
            local H7 = if H3 then 1 else 0
            local H5 = 2132 * H7 + 1704 * (1 - H7)
            local H6 = 84 * H7 + 1658 * (1 - H7)
            if not ((H5 * 2525 + H6 * 3974 + H5 * H6) % 16777213 == 5896204) then
                H3 = qN.ClassName == "Smoke"
            end
            if not H3 then
                H3 = qN.ClassName == "Fire"
            end
            if not H3 then
                H3 = qN.ClassName == "Sparkles"
            end
            if not H3 then
                H3 = qN.ClassName == "Explosion"
            end
            if not H3 then
                H3 = qN.ClassName == "Beam"
            end
            if H3 then
                if I2[qN] == nil then
                    I2[qN] = qN.Enabled
                end
                pcall(function()
                    qN.Enabled = false
                end)
            end
        end
        I9 = function()
            for k, v in I2 do
                local Ic = k
                local Ie = v
                if Ic.Parent then
                    pcall(function()
                        Ic.Enabled = Ie
                    end)
                end
            end
            table.clear(I2)
            if I7 then
                pcall(function()
                    settings().Rendering.QualityLevel = I7.Quality
                end)
                Lighting.GlobalShadows = I7.Shadows
                Lighting.FogEnd = I7.Fog
                I7 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(q1)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not q1)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(q6)
                if q6 then
                    if not I7 then
                        I7 = {
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
                    for i, descendant in ipairs(Workspace:GetDescendants()) do
                        pcall(Jb, descendant)
                    end
                else
                    I9()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        I0(true)
        local ScriptGroup = m1[4]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            I0(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            I0(true)
        end
        table.insert(Ja, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                I5()
            end
        end))
        table.insert(Ja, Workspace.DescendantAdded:Connect(function(rp)
            if Toggles.FpsBoost.Value then
                Jb(rp)
            end
        end))
        I6 = function(rt)
            local Iv = IZ or Library.Unloaded
            local IA = if Iv then 1 else 0
            local Iy = 2638 * IA + 769 * (1 - IA)
            local Iz = 2259 * IA + 2870 * (1 - IA)
            if not ((Iy * 1443 + Iz * 3887 + Iy * Iz) % 16777213 == 1769396) then
                Iv = not Toggles.AutoReconnect.Value
            end
            if Iv then
                return
            end
            IZ = true
            local Iu = I4
            local Iv_1 = pcall(function()
                if rt then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Iv_1 then
                IZ = false
                if not rt and Iu == I4 then
                    task.delay(1.5, function()
                        if Iu == I4 then
                            I6(true)
                        end
                    end)
                end
            end
        end
        table.insert(Ja, TeleportService.TeleportInitFailed:Connect(function(rL)
            local IF
            if rL == LocalPlayer and IZ then
                IZ = false
                IF = I4
                task.delay(3, function()
                    if IF == I4 then
                        I6(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local IK = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not IK then
                return
            end
            table.insert(Ja, IK.ChildAdded:Connect(function(r_)
                if r_.Name == "ErrorPrompt" then
                    I6(false)
                end
            end))
        end)
        I3 = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    I0(true)
                end
                local IQ = Toggles.AntiAfk.Value and os.clock() - I_ >= 60
                if IQ then
                    I5()
                end
                task.wait(1)
            end
        end)
        w7.Track(function()
            I4 += 1
            for k, v in Ja do
                v:Disconnect()
            end
            pcall(task.cancel, I3)
            I0(false)
            I9()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    p3()
    local function sj()
        local Kb, Kc, Kd, Ke
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(m1[4])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/BreakAnEgg")
        local Kf = SaveManager:BuildConfigSection(m1[4])
        Ke = function(sq, sr)
            local Jf_1 = (sq == "Toggle" and Toggles or Options)[sr]
            local Je_2 = type(Jf_1) == "table" and Jf_1.Type == sq
            return Je_2 and Jf_1 or nil
        end
        Kc = function(sA, sB)
            local Type = sB.Type
            if Type == "Toggle" then
                return { idx = sA, type = "Toggle", value = sB.Value == true }
            elseif Type == "Slider" then
                return { idx = sA, type = "Slider", value = tostring(sB.Value) }
            elseif Type == "Dropdown" then
                return { idx = sA, type = "Dropdown", multi = sB.Multi == true, value = sB.Value }
            elseif Type == "Input" then
                local Jj = sB.Value or ""
                return { idx = sA, type = "Input", text = tostring(Jj) }
            elseif Type == "ColorPicker" then
                return { idx = sA, type = "ColorPicker", value = sB.Value:ToHex(), transparency = sB.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = sA,
                    type = "KeyPicker",
                    mode = sB.Mode,
                    key = sB.Value,
                    modifiers = sB.Modifiers,
                    toggled = sB.Toggled
                }
            else
                return nil
            end
        end
        Kb = function()
            local Jm = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Jn = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Jn then
                        local Jn_1 = Kc(k, v)
                        if Jn_1 then
                            Jm[#Jm + 1] = Jn_1
                        end
                    end
                end
            end
            table.sort(Jm, function(sL, sM)
                if sL.type ~= sM.type then
                    return sL.type < sM.type
                end
                return sL.idx < sM.idx
            end)
            return { objects = Jm }
        end
        Kd = function(sO)
            local JG
            JG = nil
            local JH = type(sO) ~= "table" or type(sO.idx) ~= "string" or type(sO.type) ~= "string" or SaveManager.Ignore[sO.idx]
            if JH then
                return false
            end
            JG = Ke(sO.type, sO.idx)
            if not JG then
                return false
            end
            local JH_1 = pcall(function()
                if sO.type == "Input" then
                    if type(sO.text) ~= "string" then
                        return
                    end
                    JG:SetValue(sO.text)
                elseif sO.type == "ColorPicker" then
                    JG:SetValueRGB(Color3.fromHex(sO.value), sO.transparency)
                elseif sO.type == "KeyPicker" then
                    JG:SetValue({ sO.key, sO.mode, sO.modifiers })
                    if sO.mode == "Toggle" and sO.toggled ~= nil then
                        JG.Toggled = sO.toggled
                        JG:Update()
                    end
                else
                    JG:SetValue(sO.value)
                end
            end)
            return JH_1
        end
        Kf:AddDivider()
        Kf:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        Kf:AddButton("Export Config to Clipboard", function()
            local JN_1
            local JM_1
            JM_1, JN_1 = pcall(HttpService.JSONEncode, HttpService, Kb())
            if JM_1 then
                local JM_2 = wG(setclipboard) and setclipboard
                local JO = JM_2
                if not JO then
                    local JM_3 = wG(toclipboard) and toclipboard
                    JO = JM_3 or nil
                end
                local JM_4 = JO
                local JO_1 = type(JM_4) == "function" and pcall(JM_4, JN_1)
                if JO_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        Kf:AddButton("Import Config from Clipboard Text", function()
            local JZ_1
            local JX = Options.SaveManager_ImportSource.Value or ""
            local JX_1
            local JY = tostring(JX):match("^%s*(.-)%s*$")
            if JY == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #JY > 262144 then
                Library:Notify("That config is too large")
                return
            end
            JX_1, JZ_1 = pcall(HttpService.JSONDecode, HttpService, JY)
            local JY_1 = not JX_1 or type(JZ_1) ~= "table" or type(JZ_1.objects) ~= "table"
            if JY_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #JZ_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local JX_2 = 0
            for i, v in ipairs(JZ_1.objects) do
                if Kd(v) then
                    JX_2 += 1
                end
            end
            if JX_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local JZ_2 = JX_2 == 1 and ""
            local J8 = if JZ_2 then 1 else 0
            local J6 = 2321 * J8 + 1059 * (1 - J8)
            local J7 = 108 * J8 + 1098 * (1 - J8)
            if not ((J6 * 1488 + J7 * 767 + J6 * J7) % 16777213 == 3787152) then
                JZ_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(JX_2, JZ_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        local function Kf_1(tm, tn)
            if Options[tm] then
                tn(Options[tm].Value)
            end
        end
        local function Kg(tq, tr)
            if Toggles[tq] then
                tr(Toggles[tq].Value)
            end
        end
        Kf_1("BreakTiers", w7.SetBreakTiers)
        Kf_1("BreakEggs", w7.SetBreakEggs)
        Kf_1("BreakPriority", w7.SetBreakPriority)
        Kf_1("BreakRange", w7.SetBreakRange)
        Kf_1("SwingDelay", w7.SetSwingDelay)
        Kf_1("PickupRadius", w7.SetPickupRadius)
        Kf_1("SellRarities", w7.SetSellRarities)
        Kf_1("PickaxeReserve", w7.SetPickaxeReserve)
        Kg("AutoBreak", w7.SetAutoBreak)
        Kg("AutoPickup", w7.SetAutoPickup)
        Kg("AutoEquipBest", w7.SetAutoEquipBest)
        Kg("AutoSell", w7.SetAutoSell)
        Kg("AutoPickaxe", w7.SetAutoPickaxe)
        Kg("AutoPenUpgrade", w7.SetAutoPenUpgrade)
        Kg("AutoLuckUpgrade", w7.SetAutoLuckUpgrade)
        Kg("AutoLuckFarm", w7.SetAutoLuckFarm)
        Kg("EggEsp", w7.SetEggEsp)
        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    sj()
end
xS()
