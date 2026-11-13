local LocalPlayer
local GetBlockInventory
local kS
local PurchaseWeaponCrate
local VirtualUser
local kf
local kY
local kF
local ReplicatedStorage
local SetAutoWave
local k3
local kL
local kr
local k9
local Label
local kR
local ky
local lf
local GetWeaponShopStocks
local kX
local kE
local ll
local kk
local k2
local ItemConfigurations
local kq
local Options
local kQ
local kx
local le
local kD
local lk
local kj
local k1
local kJ
local ToggleWaveState
local k7
local kP
local kw
local Workspace
local kc
local kV
local PurchaseBlockItem
local Library
local k0
local kI
local lp
local ko
local k6
local PlacementMath
local PlaceItemEvent
local Toggles
local kb
local kU
local kB
local li
local GetBlockShopStocks
local k_
local kH
local lo
local connection
local k5
local kN
local kt
local ka
local kA
local lh
local connection2
local kZ
local kG
local ln
local EquipLastWeaponRequest
local k4
local kM
local function fn15(ae)
    local mc = Toggles[ae]
    return mc ~= nil and mc.Value == true
end
local function fn31(cO, cP, cQ)
    local oA_1
    local Base = cO:FindFirstChild("Base")
    local ov = lf(cP)
    local ow = Base and Base:IsA("BasePart")
    if not (ow and ov) then
        return nil
    end
    local clone = ov:Clone()
    local ov_1 = PlacementMath.GetPlacementBox(clone)
    if not ov_1 then
        clone:Destroy()
        return nil
    end
    local ox_1 = PlacementMath.GetStaticCellState(cO, Base)
    local oy = cQ
    local oy_1
    local oI = if oy then 1 else 0
    local oG = 2770 * oI + 2475 * (1 - oI)
    local oH = 1072 * oI + 1439 * (1 - oI)
    if not ((oG * 2863 + oH * 1786 + oG * oH) % 16777213 == 12814542) then
        oy = 0
    end
    local oz = oy
    oA_1, oy_1 = PlacementMath.GetFootprintCells(ov_1.Size, oz)
    local ov_2 = {}
    local oB = ox_1.cellsX - oA_1
    local oL = 0
    while oL <= oB do
        local oM = oL
        local oB_1 = ox_1.cellsZ - oy_1
        local oQ = 0
        while oQ <= oB_1 do
            local oR = oQ
            if PlacementMath.IsStaticAreaValid(cO, Base, oM, oR, oA_1, oy_1, false) then
                local oB_2 = not k7(cO, oM, oR, oA_1, oy_1) and kw(ox_1, oM, oR, oA_1, oy_1)
                if oB_2 then
                    table.insert(ov_2, { x = oM, z = oR })
                end
            end
            oQ += 1
        end
        oL += 1
    end
    if #ov_2 == 0 then
        clone:Destroy()
        return nil
    end
    local ox_2 = ov_2[math.random(1, #ov_2)]
    local ov_3 = PlacementMath.GetPlacementFromSavedGrid(Base, clone, ox_2.x, ox_2.z, oz)
    clone:Destroy()
    if not ov_3 then
        return nil
    end
    return ov_3.pivot
end
local function fn44()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local mS = leaderstats and leaderstats:FindFirstChild("Cash")
    local mR_1 = mS
    if mS then
        mS = tonumber(mR_1.Value)
    end
    return mS or 0
end
local function fn78(bv, bw, bx, by, bz, bA)
    local ne = bw + by - 1
    local nf = bx + bz - 1
    for i, child in ipairs(bv:GetChildren()) do
        local ng = child:IsA("Model") and child:GetAttribute("IsPlacedItem")
        if ng then
            local ng_1 = bA and child:GetAttribute("UniqueId") == bA
            if not ng_1 then
                local attr4 = child:GetAttribute("GridX")
                local attr3 = child:GetAttribute("GridZ")
                local attr2 = child:GetAttribute("GridW")
                local attr = child:GetAttribute("GridD")
                if attr4 and attr3 and attr2 and attr then
                    if bw <= attr4 + attr2 - 1 and attr4 <= ne and bx <= attr3 + attr - 1 and attr3 <= nf then
                        return true
                    end
                end
            end
        end
    end
    return false
end
local function fn80()
    local pU = os.clock()
    if pU - kJ < 0.5 then
        return
    end
    if not lo("AutoBuyCrates") then
        return
    end
    local pV = Options.AutoBuyCrateList and Options.AutoBuyCrateList.Value
    local pW = k9(pV)
    local pV_1 = li()
    for i, v in ipairs(ll) do
        if pW[v] then
            local pX = tonumber(kR[v]) or 0
            local pX_1 = lh[v]
            if pX > 0 and pX_1 and pV_1 >= pX_1 then
                PurchaseWeaponCrate:FireServer(v)
                kJ = pU
                return
            end
        end
    end
end
local function fn98(dg)
    if not dg or not dg.Parent then
        return false
    end
    local o9 = if dg:GetAttribute("IsDead") then 1 else 0
    if o9 == 1 then
        return false
    end
    local Humanoid = dg:FindFirstChildOfClass("Humanoid")
    if Humanoid and Humanoid.Health <= 0 then
        return false
    end
    local attr = dg:GetAttribute("Health")
    local o5_1 = typeof(attr) == "number" and attr <= 0
    if o5_1 then
        return false
    end
    return true
end
local function fn204(bh)
    local mZ = tonumber(kM[bh]) or 0
    return mZ
end
local function fn236(aj)
    local mf = {}
    if type(aj) ~= "table" then
        return mf
    end
    for k, v in pairs(aj) do
        if v then
            mf[k] = true
        end
    end
    return mf
end
local function worker3()
    while not Library.Unloaded do
        task.wait(0.05)
        if lo("KillAura") then
            pcall(kB)
        end
    end
end
local function fn278(V, W, X)
    return string.format("<b>%s</b> %s %s", V, kD("-", "#5a6070"), kD(W, X))
end
local function fn306(b2, b3, b4, b5, b6)
    local nM = b3 + b5 - 1
    local nS = b3
    while nS <= nM do
        local nT = nS
        local nM_1 = b4 + b6 - 1
        local nX = b4
        while nX <= nM_1 do
            local nY = nX
            for i, v in ipairs({ { -1, 0 }, { 1, 0 }, { 0, -1 }, { 0, 1 } }) do
                local nM_2 = nT + v[1]
                local nN = nY + v[2]
                if nM_2 >= 0 and nN >= 0 and nM_2 < b2.cellsX and nN < b2.cellsZ then
                    if b2.path[nM_2][nN] then
                        return true
                    end
                end
            end
            nX += 1
        end
        nS += 1
    end
    return false
end
local function fn315(dn)
    local pa = {}
    local ClientEntities = Workspace:FindFirstChild("ClientEntities")
    local pc = ClientEntities and ClientEntities:FindFirstChild("Enemies")
    if not pc then
        return pa
    end
    local pc_1 = kc()
    local pd = pc_1 and pc_1:FindFirstChild("Base")
    local pd_1 = kk()
    if not pd_1 then
        return pa
    end
    local pf = Options.KillAuraPlotRange and Options.KillAuraPlotRange.Value or 120
    for i, child in ipairs(pc:GetChildren()) do
        local pb_2 = child:IsA("Model") and kb(child)
        if pb_2 then
            local pb_3 = kj(child)
            if pb_3 then
                local pf_1 = pd
                local pg = true
                if pf_1 then
                    pf_1 = pd:IsA("BasePart")
                end
                if pf_1 then
                    pg = (pb_3.Position - pd.Position).Magnitude <= pf
                end
                local Magnitude = (pb_3.Position - pd_1.Position).Magnitude
                if pg and Magnitude <= dn then
                    table.insert(pa, { enemy = child, part = pb_3, dist = Magnitude })
                end
            end
        end
    end
    table.sort(pa, function(dM, dN)
        return dM.dist < dN.dist
    end)
    return pa
end
local function onInputChanged(gB)
    local UserInputType = gB.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        k5 = tick()
    end
end
local function worker()
    local ra_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local q9 = math.floor(os.clock() - k3)
        if q9 < 60 then
            ra_1 = q9 .. "s"
        elseif q9 < 3600 then
            ra_1 = string.format("%dm %ds", q9 // 60, q9 % 60)
        else
            ra_1 = string.format("%dh %dm", q9 // 3600, q9 % 3600 // 60)
        end
        Label:SetText(kt("Session time", ra_1, kf))
    end
end
local function fn363(aI, aJ)
    local mz = lh[aI]
    local mE = if mz then 1 else 0
    local mC = 3586 * mE + 282 * (1 - mE)
    local mD = 47 * mE + 3403 * (1 - mE)
    if not ((mC * 3019 + mD * 2471 + mC * mD) % 16777213 == 11110813) then
        mz = 0
    end
    return mz < (lh[aJ] or 0)
end
local function fn388(S, T)
    return string.format('<font color="%s">%s</font>', T, S)
end
local function fn403(a8)
    if not a8 then
        return nil
    end
    return a8
end
local function fn431()
    if not lo("AutoWave") then
        return
    end
    SetAutoWave:FireServer(true)
end
local function fn454()
    local pM = os.clock()
    if pM - kN < 0.35 then
        return
    end
    local pN = false
    local pT = if lo("AutoBuyTurrets") then 1 else 0
    if pT == 1 then
        local pO_1 = Options.AutoBuyTurretList and Options.AutoBuyTurretList.Value
        local pP_1 = (le(kQ, kI, k9(pO_1)))
        local pT_1 = if pP_1 then 1 else 0
        local pR = 3364 * pT_1 + 3914 * (1 - pT_1)
        local pS = 1633 * pT_1 + 3122 * (1 - pT_1)
        if not ((pR * 2149 + pS * 2407 + pR * pS) % 16777213 == 16653279) then
            pP_1 = pN
        end
        pN = pP_1
    end
    if lo("AutoBuyBlocks") then
        local pO_2 = Options.AutoBuyBlockList and Options.AutoBuyBlockList.Value
        local pP_2 = le(kL, kx, k9(pO_2)) or pN
        pN = pP_2
    end
    if pN then
        kN = pM
        task.defer(kS)
    end
end
local function fn455(ax, ay)
    local mq = kI[ax] or 0
    local mr = kI[ay]
    local mv = if mr then 1 else 0
    local mt = 1387 * mv + 1324 * (1 - mv)
    local mu = 1735 * mv + 2941 * (1 - mv)
    if not ((mt * 1267 + mu * 2928 + mt * mu) % 16777213 == 9243854) then
        mr = 0
    end
    return mq < mr
end
local function fn469()
    local result = GetBlockInventory:InvokeServer()
    if type(result) == "table" then
        kM = result
    end
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if lo("AntiAfk") then
            local rp = tick() - k5
            local rq = tick() - k0
            if rp >= 300 and rq >= 60 then
                pcall(kH)
            else
                if rp < 300 and rq >= 300 then
                    pcall(kH)
                end
            end
        end
    end
end
local function fn481()
    local p9 = os.clock()
    if p9 - kV < (Options.PlaceTurretDelay and Options.PlaceTurretDelay.Value or 0.65) then
        return
    end
    if not lo("AutoPlaceTurrets") then
        return
    end
    local qa_2 = kc()
    if not qa_2 then
        return
    end
    kS()
    local qb_1 = Options.PlaceTurretList and Options.PlaceTurretList.Value
    local qc = k9(qb_1)
    local floor = math.floor
    local qe = Options.PlaceTurretRotation and Options.PlaceTurretRotation.Value or 0
    local qb_3 = floor(qe / 90 + 0.5) % 4
    for i, v in ipairs(kQ) do
        local qd_1 = qc[v] and kr(v) > 0
        if qd_1 then
            local qd_2 = ky(qa_2, v, qb_3)
            if qd_2 then
                PlaceItemEvent:FireServer(v, qd_2, qa_2)
                kV = p9
                task.defer(kS)
                return
            end
        end
    end
end
local function fn505()
    local Character = LocalPlayer.Character
    local m1 = Character and Character:FindFirstChild("HumanoidRootPart")
    return m1
end
local function fn509(ck, cl, cm, cn, co)
    local Base = ck:FindFirstChild("Base")
    local oc = lf(cl)
    local od = Base and Base:IsA("BasePart")
    if not (od and oc) then
        return nil
    end
    local clone = oc:Clone()
    local GetPlacementFromSavedGrid = PlacementMath.GetPlacementFromSavedGrid
    local oe_1 = co or 0
    local of = GetPlacementFromSavedGrid(Base, clone, cm, cn, oe_1)
    clone:Destroy()
    return of and of.pivot or nil
end
local function worker4()
    while not Library.Unloaded do
        task.wait(0.2)
        pcall(kq)
        pcall(k_)
        pcall(lk)
        pcall(ka)
        pcall(lp)
    end
end
local function onOnClientEvent(aW)
    if type(aW) == "table" then
        kU = aW
    end
end
local function fn545()
    local ps = os.clock()
    if ps - kY < (Options.KillAuraDelay and Options.KillAuraDelay.Value or 0.35) then
        return
    end
    local pu_1 = Options.KillAuraRange and Options.KillAuraRange.Value or 25
    local pu_2 = k6(pu_1)
    if #pu_2 == 0 then
        return
    end
    local pt_4 = kF()
    local pv = kk()
    if not (pt_4 and pv) then
        return
    end
    local pw_1 = pu_2[1]
    pv.AssemblyLinearVelocity = Vector3.zero
    pv.AssemblyAngularVelocity = Vector3.zero
    pv.CFrame = CFrame.new(pw_1.part.Position + Vector3.new(0, 2.5, 0))
    pt_4:Activate()
    kY = ps
end
local function fn577()
    local mW_1
    local mV_1
    mV_1, mW_1 = pcall(function()
        return GetBlockInventory:InvokeServer()
    end)
    local mX = mV_1 and type(mW_1) == "table"
    if mX then
        kM = mW_1
    end
    return kM
end
local function fn578()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local Tool2 = Character:FindFirstChildOfClass("Tool")
    if Tool2 then
        return Tool2
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    local Tool = Backpack:FindFirstChildOfClass("Tool")
    if Tool then
        Tool.Parent = Character
        return Tool
    end
    pcall(function()
        EquipLastWeaponRequest:FireServer()
    end)
    task.wait(0.15)
    return Character:FindFirstChildOfClass("Tool")
end
local function fn587(cf)
    local Turrets = ReplicatedStorage:FindFirstChild("Turrets")
    local n6 = Turrets and Turrets:FindFirstChild(cf)
    return n6
end
local function onOnClientEvent2(aY)
    if type(aY) == "table" then
        kR = aY
    end
end
local function fn623()
    connection:Disconnect()
    connection2:Disconnect()
end
local function onOnClientEvent3(a_)
    if type(a_) == "table" then
        kM = a_
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(kZ)
    elseif toclipboard then
        toclipboard(kZ)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn667(d9, ea, eb)
    local pB = li()
    for i, v in ipairs(d9) do
        if eb[v] then
            local pC = tonumber(kU[v]) or 0
            local pC_1 = kX(ea[v])
            if pC > 0 and pC_1 and pB >= pC_1 then
                PurchaseBlockItem:FireServer(v)
                return true
            end
        end
    end
    return false
end
local function fn676()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    k0 = tick()
end
local function fn683()
    k4(k2, "Copied Discord invite to clipboard")
end
local function fn700(dd)
    local o2 = dd.PrimaryPart or dd:FindFirstChild("HumanoidRootPart") or dd:FindFirstChildWhichIsA("BasePart")
    return o2
end
local function fn705(bT)
    local nC = {}
    for i, child in ipairs(bT:GetChildren()) do
        local nD = child:IsA("Model") and child:GetAttribute("IsPlacedItem")
        if nD then
            local attr = child:GetAttribute("Name")
            local nE = attr and ItemConfigurations[attr]
            local nD_2 = nE
            if nE then
                nE = nD_2.Type == "Turrets"
            end
            if nE then
                table.insert(nC, child)
            end
        end
    end
    return nC
end
local function fn709(aA, aB)
    return (kx[aA] or 0) < (kx[aB] or 0)
end
local function fn712()
    local result = GetWeaponShopStocks:InvokeServer()
    if type(result) == "table" then
        kR = result
    end
end
local function fn720(cy, cz, cA, cB, cC, cD)
    local on_1
    local Base = cy:FindFirstChild("Base")
    local oi = lf(cz)
    local oj = Base and Base:IsA("BasePart")
    local ol = oj and oi
    local ol_2
    if not ol then
        return false
    end
    local clone = oi:Clone()
    local oi_1 = PlacementMath.GetPlacementBox(clone)
    if not oi_1 then
        clone:Destroy()
        return false
    end
    local ol_1 = cC or 0
    on_1, ol_2 = PlacementMath.GetFootprintCells(oi_1.Size, ol_1)
    clone:Destroy()
    if not PlacementMath.IsStaticAreaValid(cy, Base, cA, cB, on_1, ol_2, false) then
        return false
    elseif k7(cy, cA, cB, on_1, ol_2, cD) then
        return false
    else
        return true
    end
end
local function onUnload()
    Library:Unload()
end
local function fn738(bN, bO)
    if bO == "Damage" then
        return kE[bN] or 0
    elseif bO == "DPS" then
        local nt_2 = kE[bN] or 0
        local nv = kA[bN]
        local nB_1 = if nv then 1 else 0
        local ny_1 = 244 * nB_1 + 3137 * (1 - nB_1)
        local nA_1 = 3004 * nB_1 + 1039 * (1 - nB_1)
        if not ((ny_1 * 973 + nA_1 * 1728 + ny_1 * nA_1) % 16777213 == 6161300) then
            nv = 1
        end
        return nt_2 / math.max(nv, 0.01)
    else
        local nt_3 = kI[bN]
        local nB_2 = if nt_3 then 1 else 0
        local ny_2 = 1289 * nB_2 + 3867 * (1 - nB_2)
        local nA_2 = 2691 * nB_2 + 2468 * (1 - nB_2)
        if not ((ny_2 * 2085 + nA_2 * 1811 + ny_2 * nA_2) % 16777213 == 11029665) then
            nt_3 = 0
        end
        return nt_3
    end
end
local function onInputBegan()
    k5 = tick()
end
local function fn751()
    local qY_1
    local qX_1
    if identifyexecutor then
        qY_1, qX_1 = identifyexecutor()
        local qZ = qY_1 ~= ""
        local q_ = type(qY_1) == "string" and qZ
        if q_ then
            local qZ_1 = type(qX_1) == "string" and qX_1 ~= "" and qY_1 .. " " .. qX_1
            local qX_2 = qZ_1
            local q3 = if qX_2 then 1 else 0
            local q1 = 626 * q3 + 3018 * (1 - q3)
            local q2 = 2871 * q3 + 2018 * (1 - q3)
            if not ((q1 * 1363 + q2 * 707 + q1 * q2) % 16777213 == 4680281) then
                qX_2 = qY_1
            end
            ko = qX_2
        end
    end
end
local function fn756(fD)
    local DiscordGroup = fD:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = kP })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = kP })
end
local function worker5()
    while not Library.Unloaded do
        task.wait(2)
        if lo("AutoWave") then
            pcall(k1)
        end
    end
end
local function onCopyJoinScript_JobID()
    local q4 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ln)
    if setclipboard then
        setclipboard(q4)
    elseif toclipboard then
        toclipboard(q4)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn847()
    local qU = os.clock()
    if qU - kG < 1 then
        return
    end
    if not lo("AutoStartFight") then
        return
    end
    if LocalPlayer:GetAttribute("IsFighting") then
        return
    end
    EquipLastWeaponRequest:FireServer()
    ToggleWaveState:FireServer()
    kG = qU
end
local function fn850(L, M)
    if setclipboard then
        setclipboard(L)
    elseif toclipboard then
        toclipboard(L)
    end
    Library:Notify(M)
end
local function fn854()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local m6_1 = child:IsA("Model") and child:GetAttribute("OwnerId") == LocalPlayer.UserId
        if m6_1 then
            return child
        end
    end
    return nil
end
local function fn865()
    local result = GetBlockShopStocks:InvokeServer()
    if type(result) == "table" then
        kU = result
    end
end
Label = nil
GetBlockInventory = nil
ka = nil
kb = nil
kc = nil
GetWeaponShopStocks = nil
kf = nil
connection2 = nil
GetBlockShopStocks = nil
kj = nil
kk = nil
SetAutoWave = nil
EquipLastWeaponRequest = nil
connection = nil
ko = nil
ToggleWaveState = nil
kq = nil
kr = nil
kt = nil
PlaceItemEvent = nil
kw = nil
kx = nil
ky = nil
PurchaseWeaponCrate = nil
kA = nil
kB = nil
PurchaseBlockItem = nil
kD = nil
kE = nil
kF = nil
kG = nil
kH = nil
kI = nil
kJ = nil
ItemConfigurations = nil
kL = nil
kM = nil
kN = nil
PlacementMath = nil
kP = nil
kQ = nil
kR = nil
kS = nil
kU = nil
kV = nil
local kd, ki, RemoveItemEvent, kT, kW
kX = nil
kY = nil
kZ = nil
k_ = nil
k0 = nil
k1 = nil
k2 = nil
k3 = nil
k4 = nil
k5 = nil
k6 = nil
k7 = nil
Options = nil
k9 = nil
LocalPlayer = nil
Toggles = nil
Workspace = nil
le = nil
lf = nil
VirtualUser = nil
lh = nil
li = nil
Library = nil
lk = nil
ll = nil
ReplicatedStorage = nil
ln = nil
lo = nil
lp = nil
local lb
local ls_1
ReplicatedStorage, VirtualUser, Workspace, LocalPlayer, k2, kZ, PlacementMath, ItemConfigurations, PurchaseBlockItem, PurchaseWeaponCrate, PlaceItemEvent, RemoveItemEvent, ToggleWaveState, EquipLastWeaponRequest, SetAutoWave, GetBlockShopStocks, GetWeaponShopStocks, GetBlockInventory, Library, Toggles, Options, kf, kQ, kL, kI, kE, kA, kx, k4, kP, kD, kt, lo, k9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local Window
ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local lC = "Stop The Bugs"
k2 = "https://discord.gg/ehKVq7pf7v"
kZ = "https://rscripts.net/@Ouroboros"
local lx = ReplicatedStorage:WaitForChild("Events")
local Functions = ReplicatedStorage:WaitForChild("Functions")
PlacementMath = require(ReplicatedStorage.Modules.PlacementMath)
ItemConfigurations = require(ReplicatedStorage.Modules.ItemConfigurations).ItemConfigurations
local lu = require(ReplicatedStorage.Modules.WeaponConfigurations)
PurchaseBlockItem = lx:WaitForChild("PurchaseBlockItem")
PurchaseWeaponCrate = lx:WaitForChild("PurchaseWeaponCrate")
PlaceItemEvent = lx:WaitForChild("PlaceItemEvent")
RemoveItemEvent = lx:WaitForChild("RemoveItemEvent")
ToggleWaveState = lx:WaitForChild("ToggleWaveState")
EquipLastWeaponRequest = lx:WaitForChild("EquipLastWeaponRequest")
SetAutoWave = lx:WaitForChild("SetAutoWave")
local lw = lx:WaitForChild("UpdateBlockStocks")
local lv = lx:WaitForChild("UpdateWeaponStocks")
GetBlockShopStocks = Functions:WaitForChild("GetBlockShopStocks")
GetWeaponShopStocks = Functions:WaitForChild("GetWeaponShopStocks")
GetBlockInventory = Functions:WaitForChild("GetBlockInventory")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
k4 = fn850
kP = fn683
kD = fn388
kt = fn278
local lA = "#7fd47f"
local lz = "#6ec1ff"
kf = "#e8a34d"
local ly = "#8b93a3"
lo = fn15
k9 = fn236
kQ = {}
kL = {}
kI = {}
kE = {}
kA = {}
kx = {}
local lB = { "Price", "Damage", "DPS" }
for k, v in pairs(ItemConfigurations) do
    local lq_1 = type(v) == "table" and v.Price
    if lq_1 then
        if v.Type == "Turrets" then
            table.insert(kQ, k)
            kI[k] = v.Price
            local lq_2 = v.Damage or 0
            kE[k] = lq_2
            local lq_3 = v.FireRate or 1
            kA[k] = lq_3
        elseif v.Type == "Blocks" then
            table.insert(kL, k)
            kx[k] = v.Price
        end
    end
end
ll, lh = nil, nil
table.sort(kQ, fn455)
table.sort(kL, fn709)
ll = {}
lh = {}
local lr_1 = lu.Crates or {}
for k, v in pairs(lr_1) do
    local lq_5 = type(v) == "table" and v.Price
    if lq_5 then
        table.insert(ll, k)
        lh[k] = v.Price
    end
end
kU, kR, kM, kY, kV, kT, kN, kJ, kG, Window, li, kX, kS, kr, kk, kc, k7, kd, lb, kw, lf, kW, ki, ky, kF, kj, kb, k6, kB, le, kq, k_, lk, ka, lp, k1, ls_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(ll, fn363)
kU = {}
kR = {}
kM = {}
pcall(fn865)
pcall(fn712)
pcall(fn469)
lw.OnClientEvent:Connect(onOnClientEvent)
lv.OnClientEvent:Connect(onOnClientEvent2)
lx.BlockInventoryUpdated.OnClientEvent:Connect(onOnClientEvent3)
li = fn44
kX = fn403
kS = fn577
kr = fn204
kk = fn505
kc = fn854
k7 = fn78
kd = fn738
lb = fn705
kw = fn306
lf = fn587
kW = fn509
ki = fn720
ky = fn31
kF = fn578
kj = fn700
kb = fn98
k6 = fn315
kY = 0
kV = 0
kT = 0
kN = 0
kJ = 0
kG = 0
kB = fn545
le = fn667
kq = fn454
k_ = fn80
lk = fn481
ka = function()
    local qp
    local qq = os.clock()
    if qq - kT < (Options.ReplaceTurretDelay and Options.ReplaceTurretDelay.Value or 0.75) then
        return
    end
    if not lo("AutoReplaceTurrets") then
        return
    end
    local qq_1 = kc()
    if not qq_1 then
        return
    end
    kS()
    local qr_2 = Options.ReplaceTargetList and Options.ReplaceTargetList.Value
    local qs_1 = k9(qr_2)
    local qr_3 = Options.ReplaceWithList and Options.ReplaceWithList.Value
    local qt = k9(qr_3)
    local qu = Options.ReplaceCompareMode and Options.ReplaceCompareMode.Value or "Price"
    local qr_5 = {}
    qp = qu
    for i, v in ipairs(kQ) do
        local qu_1 = qt[v] and kr(v) > 0
        if qu_1 then
            table.insert(qr_5, v)
        end
    end
    if #qr_5 == 0 then
        return
    end
    table.sort(qr_5, function(eZ, e_)
        return kd(eZ, qp) > kd(e_, qp)
    end)
    local qt_1 = lb(qq_1)
    table.sort(qt_1, function(e5, e6)
        return kd(e5:GetAttribute("Name"), qp) < kd(e6:GetAttribute("Name"), qp)
    end)
    for i, v in ipairs(qt_1) do
        local attr4 = v:GetAttribute("Name")
        local attr3 = v:GetAttribute("UniqueId")
        local attr2 = v:GetAttribute("GridX")
        local attr = v:GetAttribute("GridZ")
        local qx = v:GetAttribute("RotationTurns") or 0
        local qx_1 = qs_1[attr4] and type(attr3) == "string"
        if qx_1 and attr2 ~= nil and attr ~= nil then
            local qx_3 = kd(attr4, qp)
            for i, v in ipairs(qr_5) do
                local qz_2 = v ~= attr4 and kr(v) > 0 and kd(v, qp) > qx_3
                if qz_2 then
                    if ki(qq_1, v, attr2, attr, qx, attr3) then
                        local qz_3 = kW(qq_1, v, attr2, attr, qx)
                        if qz_3 then
                            RemoveItemEvent:FireServer(attr3)
                            task.wait(0.45)
                            PlaceItemEvent:FireServer(v, qz_3, qq_1)
                            kT = os.clock()
                            task.defer(kS)
                            return
                        end
                    end
                end
            end
        end
    end
end
lp = fn847
k1 = fn431
if (not ls_1 or not ls_1) and (not lb and 22) and (Window and kX or not Window and kX) or not ((not ls_1 or not ls_1) and (not lb and 22) and (Window and kX or not Window and kX)) then
    Window = Library:CreateWindow({
        Title = "Ouroboros Hub",
        Footer = { { Text = k2, Copyable = true }, "|", lC },
        Icon = 12645376577,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 10
    })
else
    lC = k2:CreateWindow({
        NotifySide = "Right",
        Footer = { { Text = Library, Copyable = true }, "|", Window },
        Title = "Ouroboros Hub",
        CornerRadius = 10,
        ShowCustomCursor = false,
        Icon = 12645376577
    })
end
local lt = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "bug"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in lt do
    if v ~= lt.Info then
        fn756(v)
    end
end
ko, Label, ln = nil, nil, nil
do
    ko = "Unknown"
    pcall(fn751)
    local AccountGroup = lt.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(kt("User", LocalPlayer.Name, lA), true)
    AccountGroup:AddLabel(kt("Status", "Keyless", lA), true)
    AccountGroup:AddLabel(kt("Executor", ko, lA), true)
    lv = lt.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    lv:AddLabel(kD(lC .. " [" .. tostring(game.PlaceId) .. "]", lz), true)
    lv:AddLabel(kt("Place ID", tostring(game.PlaceId), lz), true)
    Label = lv:AddLabel(kt("Session time", "0s", kf), true)
end
ln = tostring(game.JobId)
lu = #ln > 18
if lu then
    local lq_8 = 2
    repeat
        if (lq_8 * 3 + 1) * 21 % 4 == ((lq_8 * 3 + 1) * 21 + 10) % 4 then
            ln = string.sub(lu, 1, 18) .. "..."
        else
            lu = string.sub(ln, 1, 18) .. "..."
        end
        lq_8 = (lq_8 + 5) % 8
    until (lq_8 * 1 + 4) % 8 == 3
end
local lq_9 = lu or ln
k3, k5, k0, connection, connection2, kH = nil, nil, nil, nil, nil, nil
lv:AddLabel(kt("Server", lq_9, ly), true)
lv:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
k3 = os.clock()
task.spawn(worker)
local ScriptsGroup = lt.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(kD("Included in this hub", ly), true)
ScriptsGroup:AddLabel(kD(lC, lz), true)
local FeaturesGroup = lt.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(kD("Auto Buy", lz), true)
FeaturesGroup:AddLabel(kD("Combat", kf), true)
FeaturesGroup:AddLabel(kD("Placement", lA), true)
FeaturesGroup:AddLabel(kD("Auto Replace", lz), true)
FeaturesGroup:AddLabel(kD("Waves", ly), true)
local SocialsGroup = lt.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = kP })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = lt.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = kP })
lx = lt.Info:AddRightGroupbox("FAQ", "circle-help")
lx:AddLabel("Where do I get a good config?", true)
lx:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
lx:AddLabel("How do I import / export configs?", true)
lx:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
lx:AddLabel("How do I report bugs?", true)
lx:AddLabel("Join the Discord and post it in the bugs channel.", true)
lx:AddLabel("How do I make suggestions?", true)
lx:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
lx:AddLabel("How do I get help or updates?", true)
lx:AddLabel("Join the Discord, updates and support are posted there first.", true)
lw = lt.Main:AddLeftGroupbox("Shop", "shopping-cart")
lw:AddToggle("AutoBuyTurrets", { Text = "Auto Buy Turrets", Default = false })
lw:AddDropdown("AutoBuyTurretList", { Text = "Turrets", Values = kQ, Default = { "BasicTurret" }, Multi = true, AllowNull = true })
lw:AddToggle("AutoBuyBlocks", { Text = "Auto Buy Blocks", Default = false })
lw:AddDropdown("AutoBuyBlockList", { Text = "Blocks", Values = kL, Default = { "WoodBlock" }, Multi = true, AllowNull = true })
lw:AddToggle("AutoBuyCrates", { Text = "Auto Buy Crates", Default = false })
lw:AddDropdown("AutoBuyCrateList", { Text = "Crates", Values = ll, Default = { "Bronze Crate" }, Multi = true, AllowNull = true })
lu = lt.Main:AddLeftGroupbox("Combat", "swords")
lu:AddToggle("KillAura", { Text = "Kill Aura", Default = false })
lu:AddSlider("KillAuraRange", { Text = "Kill Aura Range", Default = 30, Min = 5, Max = 100, Rounding = 0 })
lu:AddSlider("KillAuraPlotRange", { Text = "Plot Range", Default = 120, Min = 40, Max = 300, Rounding = 0 })
lu:AddSlider("KillAuraDelay", { Text = "Kill Aura Delay", Default = 0.35, Min = 0.1, Max = 1.5, Rounding = 2 })
local PlacementGroup = lt.Main:AddRightGroupbox("Placement", "map-pin")
PlacementGroup:AddToggle("AutoPlaceTurrets", { Text = "Auto Place Turrets Near Path", Default = false })
PlacementGroup:AddDropdown("PlaceTurretList", { Text = "Place Turrets", Values = kQ, Default = { "BasicTurret" }, Multi = true, AllowNull = true })
PlacementGroup:AddSlider("PlaceTurretDelay", { Text = "Place Delay", Default = 0.65, Min = 0.35, Max = 3, Rounding = 2 })
PlacementGroup:AddSlider("PlaceTurretRotation", { Text = "Rotation", Default = 0, Min = 0, Max = 270, Rounding = 0 })
PlacementGroup:AddToggle("AutoReplaceTurrets", { Text = "Auto Replace Turrets", Default = false })
PlacementGroup:AddDropdown("ReplaceTargetList", { Text = "Replace Targets", Values = kQ, Default = kQ, Multi = true, AllowNull = true })
PlacementGroup:AddDropdown("ReplaceWithList", { Text = "Replace With", Values = kQ, Default = kQ, Multi = true, AllowNull = true })
PlacementGroup:AddDropdown("ReplaceCompareMode", { Text = "Compare By", Values = lB, Default = "Price" })
PlacementGroup:AddSlider("ReplaceTurretDelay", { Text = "Replace Delay", Default = 0.75, Min = 0.4, Max = 3, Rounding = 2 })
local WavesGroup = lt.Main:AddRightGroupbox("Waves", "play")
WavesGroup:AddToggle("AutoStartFight", { Text = "Auto Start Fight", Default = false })
WavesGroup:AddToggle("AutoWave", {
    Text = "Auto Wave",
    Default = false,
    Callback = function(gf)
        pcall(function()
            SetAutoWave:FireServer(gf == true)
        end)
    end
})
local MenuGroup = lt.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton({ Text = "Unload", Func = onUnload })
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(lt.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/stop-the-bugs")
SaveManager:BuildConfigSection(lt.Settings)
SaveManager:LoadAutoloadConfig()
k5 = tick()
k0 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local rj = v
        pcall(function()
            rj:Disable()
        end)
    end
end)
kH = fn676
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
Library:OnUnload(fn623)
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
