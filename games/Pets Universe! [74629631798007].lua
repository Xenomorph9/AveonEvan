local fns = {}
local KO_2, ClickCooldownModule, KO_14, KO_25
local yI
local xI
local yp
local x6
local w6
local xO
local PlayerData
local xv
local xc
local xU
local wU
local xB
local yi
local xi
local x_
local w_
local xH
local GiftsTimersModule
local xo
local x5
local UpgradesModule
local xN
local xb
local xT
local yA
local wT
local Library
local xh
local xZ
local yG
local wZ
local xG
local xn
local x4
local w4
local LocalPlayer
local yt
local xt
local CoreGui
local xa
local HatchFormation
local xz
local yg
local yz
local xY
local wY
local xF
local ym
local BreakablesConfig
local w3
local ys
local xs
local x9
local w9
local wR
local xy
local xf
local xX
local yE
local wX
local xE
local yl
local Toggles
local x2
local w2
local xK
local xr
local w8
local PetDisplay
local wQ
local yx
local MultiUseModule
local xe
local xD
local yk
local x1
local yJ
local connection
local yq
local x7
local w7
local State
local yd
local xd
local WorldZones
local wV
local yC
function fns.fn6()
    local Du = HatchFormation and type(HatchFormation.StopAutoHatch) == "function"
    if Du then
        pcall(HatchFormation.StopAutoHatch)
    end
    xH(xs.StopHatching)
end
function fns.fn52(k3)
    local FX = k3 ~= ""
    local FY = type(k3) == "string" and FX
    if FY then
        State.HatchEgg = k3
    end
end
function fns.fn74(key)
    local Bs_2
    local Br_2
    local Bo_9
    local Bm = key == ""
    local Bm_4
    local Bn = type(key) ~= "string" or Bm
    local Bn_9
    if Bn then
        return nil
    end
    local Bm_1 = key
    for i, v in ipairs(yt) do
        if v.key == key or v.area == key or v.label == key then
            Bm_1 = v.area
            key = v.key
            break
        end
    end
    local BreakablesSpawners = yA:FindFirstChild("BreakablesSpawners")
    if BreakablesSpawners then
        local Bo_1 = BreakablesSpawners:FindFirstChild(Bm_1) or BreakablesSpawners:FindFirstChild(key)
        local Bn_3 = Bo_1
        if Bo_1 then
            local Bp_1 = Bn_3:FindFirstChild("Spawner") or Bn_3:FindFirstChild("PetArea") or Bn_3:FindFirstChildWhichIsA("BasePart", true)
            Bo_1 = Bp_1
        end
        local Bn_4 = Bo_1
        if Bo_1 then
            Bo_1 = Bn_4:IsA("BasePart")
        end
        if Bo_1 then
            return Bn_4.CFrame + Vector3.new(0, 3, 0)
        end
        local Bn_5 = WorldZones.Bounds
        if Bn_9 then
            Bn_5 = WorldZones.Bounds[key] or WorldZones.Bounds[Bm_1]
        end
        local Bm_2 = Bn_5
        if Bm_4 then
            local Bn_6 = tonumber(Bm_2.minX) or 0
            local Bo_3 = tonumber(Bm_2.maxX) or 0
            local Bp_2 = (Bn_6 + Bo_3) / 2
            local Bn_7 = tonumber(Bm_2.minZ) or 0
            local Bo_4 = (tonumber(Bm_2.maxZ))
            if not ((Br_2 * 3796 + Bs_2 * 1604 + Br_2 * Bs_2) % 16777213 == 11260026) then
                Bo_4 = 0
            end
            local Bm_3 = (Bn_7 + Bo_4) / 2
            local Bn_8 = 12
            local Bo_5 = xO()
            if Bo_9 then
                Bn_8 = Bo_5.Position.Y
            end
            return CFrame.new(Bp_2, Bn_8, Bm_3)
        end
        return nil
    end
    Bn_9 = WorldZones.Bounds
    if Bn_9 then
        Bn_9 = WorldZones.Bounds[key] or WorldZones.Bounds[Bm_1]
    end
    Bm_4 = Bn_9
    if Bm_4 then
        local Bn_10 = tonumber(Bm_4.minX) or 0
        local Bo_7 = tonumber(Bm_4.maxX) or 0
        local Bp_3 = (Bn_10 + Bo_7) / 2
        local Bn_11 = tonumber(Bm_4.minZ) or 0
        local Bo_8 = (tonumber(Bm_4.maxZ))
        local Bt_2 = if Bo_8 then 1 else 0
        Br_2 = 1445 * Bt_2 + 2914 * (1 - Bt_2)
        Bs_2 = 1894 * Bt_2 + 2387 * (1 - Bt_2)
        if not ((Br_2 * 3796 + Bs_2 * 1604 + Br_2 * Bs_2) % 16777213 == 11260026) then
            Bo_8 = 0
        end
        local Bm_5 = (Bn_11 + Bo_8) / 2
        local Bn_12 = 12
        Bo_9 = xO()
        if Bo_9 then
            Bn_12 = Bo_9.Position.Y
        end
        return CFrame.new(Bp_3, Bn_12, Bm_5)
    end
    return nil
end
function fns.fn89(jr)
    local E9 = yd(jr)
    if not E9 then
        return false
    elseif xI() < E9 then
        return false
    else
        return xH(w9.BuyUpgrade, jr)
    end
end
function fns.fn93(kV)
    local FT = tonumber(kV) or 1
    State.UseAmount = MultiUseModule.Sanitize(FT)
end
function fns.fn132()
    local EL_1
    local EK_1
    EK_1, EL_1 = pcall(function()
        return PlayerData.WaitForFolder(LocalPlayer, "Stats")
    end)
    return EK_1 and EL_1 or nil
end
function fns.fn135(ll)
    State.GoldCraftDelay = yC(ll)
end
function fns.fn144(le)
    local Ga = {}
    for i, v in ipairs(yq) do
        Ga[v] = true
    end
    xo(State.SelectedGoldPets, le, Ga)
end
function fns.fn166()
    return yq
end
function fns.fn172(kz)
    if yk[kz] then
        State.FarmZone = kz
    end
    if State.AutoFarm then
        x4()
    end
end
function fns.fn204(lo)
    State.AutoDiamondPets = lo == true
    if State.AutoDiamondPets then
        xv()
    else
        xD += 1
    end
end
function fns.fn231()
    local AA = xc()
    local AB = AA and AA:FindFirstChild("Area")
    local AA_1 = AB
    if AB then
        AB = tostring(AA_1.Value)
    end
    return AB or ""
end
function fns.fn254()
    local EO = yi()
    local EP = EO and EO:FindFirstChild("Rubies")
    local EO_1 = EP
    if EP then
        EP = tonumber(EO_1.Value)
    end
    return EP or 0
end
function fns.fn255()
    xH(xF.SetAutoBreaking, false)
end
function fns.fn260(kZ)
    State.AutoHatch = kZ == true
    if State.AutoHatch then
        wQ()
    else
        x2 += 1
        xU()
    end
end
function fns.fn264(lz)
    State.DiamondCraftDelay = yC(lz)
end
function fns.fn314(de, df)
    local BD = xG(de)
    if not BD then
        return false
    end
    return xy(BD, df)
end
function fns.fn318(jj)
    local E2 = xd(jj)
    local E3 = yG(jj)
    if E2 >= E3 then
        return nil
    end
    local E3_1 = UpgradesModule[jj]
    local E2_1 = E3_1 and E3_1[E2 + 1]
    local E3_2 = E2_1 and tonumber(E2_1.Price)
    return E3_2 or nil
end
function fns.fn355(jd)
    local MaxLevels = UpgradesModule.MaxLevels
    local E0 = MaxLevels and MaxLevels[jd]
    local E0_1 = tonumber(E0) or 25
    return E0_1
end
function fns.fn398()
    xa(x5, "Copied Discord invite to clipboard")
end
function fns.fn420()
    local AG = xc()
    local AH = AG and AG:FindFirstChild("AutoBreaking")
    local AG_1 = AH
    if AH then
        AH = AG_1.Value == true
    end
    return AH
end
function fns.fn433()
    return xB
end
function fns.fn440()
    return x6
end
function fns.fn458()
    return xt
end
function fns.fn474(ls)
    local Gj = {}
    for i, v in ipairs(ym) do
        Gj[v] = true
    end
    xo(State.SelectedDiamondPets, ls, Gj)
end
function fns.fn492()
    HatchFormation = require(LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Eggs"):WaitForChild("HatchFormation"))
end
function fns.fn500(ke)
    State.AutoClaimPlaytime = ke == true
    if State.AutoClaimPlaytime then
        xT()
    else
        x_ += 1
    end
end
function fns.fn515(ce, cf)
    local A1 = {}
    for i, v in ipairs(cf) do
        if ce[v] then
            table.insert(A1, v)
        end
    end
    return A1
end
function fns.fn524(el)
    if el == "Chest" then
        return 100
    end
    local Cd = string.match(el, "^RTier(%d+)")
    if Cd then
        return 50 + tonumber(Cd)
    end
    local Cd_1 = string.match(el, "^Tier(%d+)")
    if Cd_1 then
        return tonumber(Cd_1)
    end
    return 0
end
function fns.fn530()
    gethui = xE
end
function fns.fn538(b5, b6, b7)
    table.clear(b5)
    if type(b6) ~= "table" then
        return
    end
    if b6[1] ~= nil then
        for i, v in ipairs(b6) do
            if b7[v] then
                b5[v] = true
            end
        end
        return
    end
    for k, v in pairs(b6) do
        if v and b7[k] then
            b5[k] = true
        end
    end
end
function fns.fn553()
    local PlaytimeGroup = yl.Main:AddLeftGroupbox("Playtime", "gift")
    PlaytimeGroup:AddToggle("AutoClaimPlaytime", {
        Text = "Auto Claim Playtime Egg",
        Default = false,
        Callback = function(mA)
            xi.SetAutoClaimPlaytime(mA)
        end
    })
    local FarmGroup = yl.Main:AddLeftGroupbox("Farm", "swords")
    FarmGroup:AddToggle("AutoFarm", {
        Text = "Auto Farm",
        Default = false,
        Callback = function(mE)
            xi.SetAutoFarm(mE)
        end
    })
    FarmGroup:AddToggle("AutoClickBreakable", {
        Text = "Auto Click Breakable",
        Default = false,
        Callback = function(mG)
            xi.SetAutoClickBreakable(mG)
        end
    })
    FarmGroup:AddDropdown("BreakablePriority", {
        Text = "Breakable Priority",
        Values = xi.BreakablePriorityValues(),
        Default = "Nearest",
        Callback = function(mI)
            xi.SetBreakablePriority(mI)
        end
    })
    FarmGroup:AddDropdown("FarmZone", {
        Text = "Zone",
        Values = xi.FarmZoneValues(),
        Default = "Spawn",
        Callback = function(mK)
            xi.SetFarmZone(mK)
        end
    })
    local TeleportGroup = yl.Main:AddRightGroupbox("Teleport", "map-pin")
    TeleportGroup:AddDropdown("TeleportWorld", {
        Text = "World",
        Values = xi.TeleportWorldValues(),
        Default = "Spawn",
        Callback = function(mN)
            xi.SetTeleportWorld(mN)
        end
    })
    TeleportGroup:AddButton({
        Text = "Teleport",
        Func = function()
            local GJ = if not xi.TeleportToSelectedWorld() then 1 else 0
            if GJ == 1 then
                Library:Notify("Teleport failed")
            end
        end
    })
    local UpgradesGroup = yl.Main:AddLeftGroupbox("Upgrades", "arrow-up")
    UpgradesGroup:AddToggle("AutoBuyUpgrades", {
        Text = "Auto Buy Upgrades",
        Default = false,
        Callback = function(mT)
            xi.SetAutoBuyUpgrades(mT)
        end
    })
    UpgradesGroup:AddDropdown("SelectedUpgrades", {
        Text = "Upgrades",
        Values = xi.UpgradeValues(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(mV)
            xi.SetSelectedUpgrades(mV)
        end
    })
    local HatchGroup = yl.Main:AddRightGroupbox("Hatch", "egg")
    HatchGroup:AddToggle("AutoHatch", {
        Text = "Auto Hatch",
        Default = false,
        Callback = function(mY)
            xi.SetAutoHatch(mY)
        end
    })
    HatchGroup:AddDropdown("HatchEgg", {
        Text = "Egg",
        Values = xi.EggValues(),
        Default = xi.EggValues()[1],
        Callback = function(m_)
            xi.SetHatchEgg(m_)
        end
    })
    HatchGroup:AddDropdown("HatchAmount", {
        Text = "Amount",
        Values = xi.HatchAmountValues(),
        Default = "Single",
        Callback = function(m1)
            xi.SetHatchAmount(m1)
        end
    })
    local ConsumablesGroup = yl.Main:AddRightGroupbox("Consumables", "flask-conical")
    ConsumablesGroup:AddToggle("AutoUseConsumables", {
        Text = "Auto Use Fruits / Potions",
        Default = false,
        Callback = function(m4)
            xi.SetAutoUseConsumables(m4)
        end
    })
    ConsumablesGroup:AddDropdown("SelectedFruits", {
        Text = "Fruits",
        Values = xi.FruitValues(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(m6)
            xi.SetSelectedFruits(m6)
        end
    })
    ConsumablesGroup:AddDropdown("SelectedPotions", {
        Text = "Potions",
        Values = xi.PotionValues(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(m8)
            xi.SetSelectedPotions(m8)
        end
    })
    ConsumablesGroup:AddDropdown("UseAmount", {
        Text = "Use Amount",
        Values = xi.UseAmountValues(),
        Default = "1",
        Callback = function(na)
            xi.SetUseAmount(na)
        end
    })
    local CraftGroup = yl.Main:AddLeftGroupbox("Craft", "gem")
    CraftGroup:AddToggle("AutoGoldPets", {
        Text = "Auto Gold Pets",
        Default = false,
        Callback = function(nd)
            xi.SetAutoGoldPets(nd)
        end
    })
    local nf = CraftGroup:AddDependencyBox()
    nf:AddDropdown("GoldPets", {
        Text = "Pets",
        Values = xi.GoldPetValues(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Callback = function(ng)
            xi.SetSelectedGoldPets(ng)
        end
    })
    nf:AddSlider("GoldCraftDelay", {
        Text = "Delay",
        Default = 1,
        Min = yg,
        Max = x9,
        Rounding = 2,
        Suffix = "s",
        Callback = function(nk)
            xi.SetGoldCraftDelay(nk)
        end
    })
    nf:SetupDependencies({ { Toggles.AutoGoldPets, true } })
    CraftGroup:AddToggle("AutoDiamondPets", {
        Text = "Auto Diamond Pets",
        Default = false,
        Callback = function(nn)
            xi.SetAutoDiamondPets(nn)
        end
    })
    local np = CraftGroup:AddDependencyBox()
    np:AddDropdown("DiamondPets", {
        Text = "Pets",
        Values = xi.DiamondPetValues(),
        Default = {},
        Multi = true,
        AllowNull = true,
        Searchable = true,
        Callback = function(nq)
            xi.SetSelectedDiamondPets(nq)
        end
    })
    np:AddSlider("DiamondCraftDelay", {
        Text = "Delay",
        Default = 1,
        Min = yg,
        Max = x9,
        Rounding = 2,
        Suffix = "s",
        Callback = function(ns)
            xi.SetDiamondCraftDelay(ns)
        end
    })
    np:SetupDependencies({ { Toggles.AutoDiamondPets, true } })
end
function fns.fn557(Y)
    local zN = typeof(cloneref) == "function" and typeof(Y) == "Instance"
    if zN then
        return cloneref(Y)
    end
    return Y
end
function fns.fn558()
    return xr
end
function fns.fn584(mg, mh)
    local GD
    if wZ(setclipboard) then
        GD = setclipboard
    elseif wZ(toclipboard) then
        GD = toclipboard
    end
    if not GD then
        Library:Notify("Clipboard unavailable")
        return
    end
    local GE = pcall(GD, mg)
    if GE then
        Library:Notify(mh)
    else
        Library:Notify("Failed to copy")
    end
end
function fns.fn631(ko)
    State.AutoClickBreakable = ko == true
    if State.AutoClickBreakable then
        yx()
    else
        w3 += 1
    end
end
function fns.fn637()
    local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
    local BJ = PlayerGui and PlayerGui:FindFirstChild("UI")
    local BI_1 = BJ
    if BJ then
        BJ = BI_1:FindFirstChild("Base")
    end
    local BI_2 = BJ
    if BJ then
        BJ = BI_2:FindFirstChild("Frames")
    end
    local BI_3 = BJ
    if BJ then
        BJ = BI_3:FindFirstChild("PlaytimeGifts")
    end
    local BI_4 = BJ
    if BJ then
        BJ = BI_4:FindFirstChild("Main")
    end
    local BI_5 = BJ
    if BJ then
        BJ = BI_5:FindFirstChild("Gifts")
    end
    local BI_6 = BJ
    if not BI_6 then
        for k, v in pairs(GiftsTimersModule) do
            local BJ_1 = tonumber(v.Time) or 0
            local BJ_2 = State.PlaytimeSeconds >= BJ_1 * 60
            if BJ_2 then
                local BK_2 = w6[k] or 0
                BJ_2 = BK_2 < os.clock()
            end
            if BJ_2 then
                if xH(xK.ClaimGift, k) then
                    w6[k] = os.clock() + 2
                end
            end
        end
        return
    end
    for k in pairs(GiftsTimersModule) do
        local BJ_3 = BI_6:FindFirstChild(k)
        if BJ_3 then
            local TimeDisplay = BJ_3:FindFirstChild("TimeDisplay")
            local BJ_4 = TimeDisplay and TimeDisplay:IsA("TextLabel") and TimeDisplay.Text == "Ready!"
            if BJ_4 then
                local BK_4 = w6[k] or 0
                BJ_4 = BK_4 < os.clock()
            end
            if BJ_4 then
                if xH(xK.ClaimGift, k) then
                    w6[k] = os.clock() + 2
                end
            end
        end
    end
end
function fns.fn641(b1, ...)
    local AM = type(b1) ~= "table" or type(b1.Fire) ~= "function"
    if AM then
        return false
    end
    local AM_1 = pcall(b1.Fire, b1, ...)
    return AM_1
end
function fns.fn647(e1)
    if not e1 then
        return false
    end
    local CN = e1.detector and wZ(fireclickdetector)
    if CN then
        local CN_1 = pcall(fireclickdetector, e1.detector)
        if CN_1 then
            return true
        end
        return xH(xz.ClaimClickBonus, e1.coinId)
    end
    return xH(xz.ClaimClickBonus, e1.coinId)
end
function fns.fn666()
    local Co_1
    local Cf = yJ()
    local Cg = xZ(Cf)
    if not Cg then
        return nil
    end
    local Ch = xO()
    local Ch_1
    local BreakablePriority = State.BreakablePriority
    local Cj
    local Cm = BreakablePriority == "Coins" or BreakablePriority == "Rubies" or BreakablePriority == "Fruits"
    local Cm_4
    if Cm then
        Cj = BreakablePriority
    end
    local Ck_2 = {}
    for i, child in ipairs(Cg:GetChildren()) do
        if child.Name ~= "AlienEventEgg" then
            local attr = child:GetAttribute("CoinId")
            local Cl_1 = attr ~= ""
            local Cm_1 = typeof(attr) == "string" and Cl_1
            if Cm_1 then
                local Cl_2 = child:IsA("BasePart") and child
                local Cm_2 = Cl_2 or child:FindFirstChildWhichIsA("BasePart", true)
                local Cm_3 = child:FindFirstChild("ClickDetector") or child:FindFirstChildWhichIsA("ClickDetector", true)
                if Cm_2 then
                    Co_1, Cm_4 = yz(Cf, child.Name)
                    local Cq = x1(child.Name)
                    local Cl_4 = Ch and (Cm_2.Position - Ch.Position).Magnitude or 0
                    table.insert(Ck_2, {
                        model = child,
                        coinId = attr,
                        detector = Cm_3,
                        group = Co_1,
                        hp = Cm_4,
                        tierScore = Cq,
                        dist = Cl_4
                    })
                end
            end
        end
    end
    if #Ck_2 == 0 then
        return nil
    end
    if Cj then
        local Cf_1 = {}
        for i, v in ipairs(Ck_2) do
            if v.group == Cj then
                table.insert(Cf_1, v)
            end
        end
        if #Cf_1 > 0 then
            Ck_2 = Cf_1
        end
    end
    local Cf_2 = Ck_2[1]
    local Cg_2 = #Ck_2
    local CK = 2
    while CK <= Cg_2 do
        local Cg_3 = Ck_2[CK]
        if BreakablePriority == "Highest HP" then
            local Cj_1 = Cg_3.hp > Cf_2.hp
            if not Cj_1 then
                Cj_1 = Cg_3.hp == Cf_2.hp and Cg_3.dist < Cf_2.dist
            end
            Ch_1 = Cj_1
        elseif BreakablePriority == "Lowest HP" then
            local Cj_2 = Cg_3.hp < Cf_2.hp
            if not Cj_2 then
                Cj_2 = Cg_3.hp == Cf_2.hp and Cg_3.dist < Cf_2.dist
            end
            Ch_1 = Cj_2
        elseif BreakablePriority == "Highest Tier" then
            local Cj_3 = Cg_3.tierScore > Cf_2.tierScore
            if not Cj_3 then
                Cj_3 = Cg_3.tierScore == Cf_2.tierScore and Cg_3.dist < Cf_2.dist
            end
            Ch_1 = Cj_3
        else
            Ch_1 = Cg_3.dist < Cf_2.dist
        end
        if Ch_1 then
            Cf_2 = Cg_3
        end
        CK += 1
    end
    return Cf_2
end
function fns.fn687()
    return not xi.Unloaded
end
local function fn700(la)
    State.AutoGoldPets = la == true
    if State.AutoGoldPets then
        w7()
    else
        xb += 1
    end
end
local function fn770()
    return xX
end
local function fn771(k5)
    for i, v in ipairs(xB) do
        if v == k5 then
            State.HatchAmount = k5
            return
        end
    end
end
local function fn777(i6)
    local EU = wT()
    local EV = EU and EU:FindFirstChild(i6)
    local EU_1 = EV
    if EV then
        EV = tonumber(EU_1.Value)
    end
    return EV or 0
end
local function fn789()
    connection = xK.Tick:Connect(function(jV)
        if type(jV) == "number" then
            State.PlaytimeSeconds = jV
        end
        local Fm = State.AutoClaimPlaytime and wU()
        if Fm then
            w2()
        end
    end)
end
local function fn796()
    local Gs = yk[State.TeleportWorld]
    if not Gs then
        return false
    end
    return xH(xe.GoTo, Gs.key)
end
local function fn804(gD, gE, gF)
    local Dx_1
    local Dw = HatchFormation and type(HatchFormation.BeginHatch) == "function"
    local Dw_1
    if Dw then
        Dw_1, Dx_1 = pcall(HatchFormation.BeginHatch, gD, gE, gF == true, gF == true)
        if Dw_1 and Dx_1 then
            return true
        end
        return xH(xs.Hatch, gD, gE)
    end
    return xH(xs.Hatch, gD, gE)
end
local function fn805(kO)
    local FL = {}
    for i, v in ipairs(xX) do
        FL[v] = true
    end
    xo(State.SelectedPotions, kO, FL)
end
local function fn842()
    local At = xY()
    local Au = At and At:FindFirstChildOfClass("Humanoid")
    return Au
end
local function fn859(kD)
    State.AutoUseConsumables = kD == true
    if State.AutoUseConsumables then
        wY()
    else
        w4 += 1
    end
end
local function fn886(lK)
    if yk[lK] then
        State.TeleportWorld = lK
    end
end
local function fn887(hB)
    local Ea = (tonumber(hB))
    local Ef = if Ea then 1 else 0
    local Ed = 1713 * Ef + 1715 * (1 - Ef)
    local Ee = 997 * Ef + 2034 * (1 - Ef)
    if not ((Ed * 1267 + Ee * 328 + Ed * Ee) % 16777213 == 4205248) then
        Ea = 1
    end
    local Eb = Ea
    if Eb ~= Eb then
        Eb = 1
    end
    return math.clamp(Eb, yg, x9)
end
local function fn909(ms)
    local DiscordGroup = ms:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = x5,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn944(d5)
    local Worlds = BreakablesConfig.Worlds
    local B3 = Worlds and (Worlds[d5] or Worlds.Spawn)
    local B2_1 = B3
    if B3 then
        B3 = B2_1.Tiers
    end
    return B3 or nil
end
local function fn947(lT)
    State.AutoBuyUpgrades = lT == true
    if State.AutoBuyUpgrades then
        yI()
    else
        wR += 1
    end
end
local function fn976()
    return xf
end
local function fn980(ki)
    State.AutoFarm = ki == true
    if State.AutoFarm then
        x4()
    else
        w8 += 1
        xN()
        wX()
    end
end
local function fn982()
    local EH_1
    local EG_1
    EG_1, EH_1 = pcall(function()
        return PlayerData.WaitForFolder(LocalPlayer, "UpgradesData")
    end)
    return EG_1 and EH_1 or nil
end
local function fn995()
    return yp
end
local function fn1004(ee, ef)
    local B6 = xh(ee)
    local B7 = B6 and B6[ef]
    if type(B7) == "table" then
        local Group = B7.Group
        local B8 = tonumber(B7.HP) or 0
        return Group, B8
    elseif string.find(ef, "^RTier") then
        return "Rubies", 0
    else
        local B6_2 = ef == "Chest"
        local B7_2 = string.find(ef, "^Tier") or B6_2
        if B7_2 then
            return "Coins", 0
        end
        return "Fruits", 0
    end
end
local function fn1011()
    return ym
end
local function fn1026(ab)
    return type(ab) == "function"
end
local function fn1068(kH)
    local FD = {}
    for i, v in ipairs(x6) do
        FD[v] = true
    end
    xo(State.SelectedFruits, kH, FD)
end
local function fn1104(lX)
    local Gv = {}
    for i, v in ipairs(xf) do
        Gv[v] = true
    end
    xo(State.SelectedUpgrades, lX, Gv)
end
local function fn1112()
    return CoreGui
end
local function fn1116()
    w8 += 1
    w3 += 1
    w4 += 1
    x2 += 1
    x_ += 1
    xb += 1
    xD += 1
    wR += 1
    xN()
    wX()
    xU()
end
local function fn1138()
    local BW = yE()
    if BW ~= "" then
        return BW
    end
    local BW_1 = yk[State.FarmZone] or yt[1]
    local BX = BW_1
    if BW_1 then
        BW_1 = BX.area
    end
    return BW_1 or "Spawn"
end
local function fn1156()
    return xn
end
local function fn1197()
    local Aq = xY()
    local Ar = Aq and Aq:FindFirstChild("HumanoidRootPart")
    return Ar
end
local function fn1217()
    if wV then
        pcall(function()
            wV:Cancel()
        end)
        wV = nil
    end
end
local function fn1223(g6)
    local DJ_1
    local DI_1
    DI_1, DJ_1 = pcall(PetDisplay.GetRequired, g6, LocalPlayer)
    local DK = DI_1 and typeof(DJ_1) == "number" and DJ_1 >= 1
    if DK then
        return DJ_1
    end
    return nil
end
local function fn1243(ks)
    for i, v in ipairs(xr) do
        if v == ks then
            State.BreakablePriority = ks
            return
        end
    end
end
local function fn1250(ck)
    local A9 = os.clock() + ck
    while true do
        local Ba = wU() and os.clock() < A9
        if Ba then
            task.wait(0.2)
            continue
        end
        break
    end
    return wU()
end
local function fn1251()
    return LocalPlayer.Character
end
local function fn1259(hk, hl)
    local DT = w_(hk)
    if not DT then
        return {}
    end
    local DV = hk == "Golden" and yq or ym
    local DU_1 = false
    for k in pairs(hl) do
        DU_1 = true
        break
    end
    if not DU_1 then
        return {}
    end
    local DU_2 = {}
    for i, v in ipairs(DV) do
        local DV_1 = hl[v] and ys(v) >= DT
        if DV_1 then
            table.insert(DU_2, v)
            if #DU_2 >= x7 then
                break
            end
        end
    end
    return DU_2
end
local function fn1281(dX)
    local Breakables = yA:FindFirstChild("Breakables")
    if not Breakables then
        return nil
    end
    local B_ = Breakables:FindFirstChild(dX)
    if B_ then
        return B_
    end
    local B__1 = yk[State.FarmZone]
    if B__1 then
        local B0 = Breakables:FindFirstChild(B__1.area) or Breakables:FindFirstChild(B__1.key)
        return B0
    end
    return nil
end
local function fn1297()
    return yp
end
local function fn1335(hd)
    local DN_1
    local DM_1
    DM_1, DN_1 = pcall(PetDisplay.GetAvailable, LocalPlayer, hd)
    local DO = DM_1 and typeof(DN_1) == "number"
    if DO then
        return DN_1
    end
    return 0
end
local function fn1366()
    local Ax_1
    local Aw_1
    Aw_1, Ax_1 = pcall(function()
        return PlayerData.WaitForFolder(LocalPlayer, "BreakableData")
    end)
    return Aw_1 and Ax_1 or nil
end
wQ = nil
wR = nil
HatchFormation = nil
wT = nil
wU = nil
wV = nil
wX = nil
wY = nil
wZ = nil
w_ = nil
connection = nil
w2 = nil
w3 = nil
w4 = nil
UpgradesModule = nil
w6 = nil
w7 = nil
w8 = nil
w9 = nil
xa = nil
xb = nil
xc = nil
xd = nil
xe = nil
xf = nil
xh = nil
xi = nil
Toggles = nil
xn = nil
xo = nil
xr = nil
xs = nil
xt = nil
xv = nil
xy = nil
xz = nil
Library = nil
xB = nil
local Players, wW, w0, Options, xj, xk, xm, xp, SaveManager, ThemeManager, xw, xx
xD = nil
xE = nil
xF = nil
xG = nil
xH = nil
xI = nil
xK = nil
LocalPlayer = nil
xN = nil
xO = nil
PetDisplay = nil
xT = nil
xU = nil
WorldZones = nil
xX = nil
xY = nil
xZ = nil
x_ = nil
x1 = nil
x2 = nil
BreakablesConfig = nil
x4 = nil
x5 = nil
x6 = nil
x7 = nil
x9 = nil
CoreGui = nil
yd = nil
MultiUseModule = nil
yg = nil
yi = nil
yk = nil
yl = nil
ym = nil
GiftsTimersModule = nil
local xC, xJ, xL, TweenService, xR, xS, xW, Lighting, TeleportService, yb, yc, yf, GuiService, PotionsModule, HttpService
yp = nil
yq = nil
ys = nil
yt = nil
PlayerData = nil
State = nil
yx = nil
yz = nil
yA = nil
yC = nil
yE = nil
yG = nil
yI = nil
yJ = nil
local VirtualUser, yy, yB, yD, yF, yH
VirtualUser = nil
local yu
yy = nil
yB = nil
yD = nil
yF = nil
yH = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, yy, yu, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, KO_25, TweenService, LocalPlayer, KO_2, xE = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if ((not LocalPlayer or not TweenService) and (not LocalPlayer and not KO_25) or (TweenService and not KO_2 or (TweenService or not LocalPlayer))) and ((KO_25 or not LocalPlayer or (not KO_2 or not HttpService)) and (not TweenService and not KO_25 and (not LocalPlayer and 21))) or ((LocalPlayer or KO_25) and (not KO_25 or not KO_25) or (not LocalPlayer and false or (KO_2 or not KO_25)) and (HttpService and HttpService or (not LocalPlayer or not KO_2))) or not (((not LocalPlayer or not TweenService) and (not LocalPlayer and not KO_25) or (TweenService and not KO_2 or (TweenService or not LocalPlayer))) and ((KO_25 or not LocalPlayer or (not KO_2 or not HttpService)) and (not TweenService and not KO_25 and (not LocalPlayer and 21))) or ((LocalPlayer or KO_25) and (not KO_25 or not KO_25) or (not LocalPlayer and false or (KO_2 or not KO_25)) and (HttpService and HttpService or (not LocalPlayer or not KO_2)))) then
    KO_14 = game:GetService("ReplicatedStorage")
    yy = game:GetService("RunService")
    yu = game:GetService("UserInputService")
else
    yy = game:GetService("ReplicatedStorage")
    yu = game:GetService("RunService")
    KO_14 = game:GetService("UserInputService")
end
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
KO_25 = game:GetService("Workspace")
TweenService = game:GetService("TweenService")
LocalPlayer = Players.LocalPlayer
KO_2 = "OuroborosPetsUniverse"
xE = fn1112
if getgenv then
    getgenv().gethui = xE
end
xi, yH, yA, PlayerData, GiftsTimersModule, PotionsModule, MultiUseModule, ClickCooldownModule, BreakablesConfig, WorldZones, PetDisplay, wZ, wU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn530)
local function KO_4(u)
    local zz
    local zA
    local zy
    zy = nil
    zz = nil
    zA = nil
    local zB = u ~= ""
    local zC = type(u) == "string" and zB
    assert(zC, "Atypical is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    zz = getgenv()
    assert(type(zz) == "table", "getgenv did not return a table")
    local zB_1 = zz[u]
    if zB_1 ~= nil then
        local zC_1 = type(zB_1) == "table" and type(zB_1.Unload) == "function"
        assert(zC_1, "Namespace is occupied")
        zB_1.Unload()
        assert(zz[u] == nil, "Previous instance did not release its namespace")
    end
    zA = {}
    zy = { State = {}, Unloaded = false }
    zy.Track = function(D)
        assert(type(D) == "function", "Cleanup must be callable")
        if zy.Unloaded then
            D()
        else
            table.insert(zA, D)
        end
        return D
    end
    zy.Unload = function()
        local zr_1
        local zq_1
        if zy.Unloaded then
            return
        end
        zy.Unloaded = true
        local zo = {}
        local zv = #zA
        local zu = -1
        while false and zv <= 1 or true and zv >= 1 do
            local zw = zv
            local zp_1 = table.remove(zA, zw)
            zq_1, zr_1 = pcall(zp_1)
            if not zq_1 then
                table.insert(zo, tostring(zr_1))
            end
            zv += zu
        end
        table.clear(zy.State)
        if #zo > 0 then
            error("Cleanup incomplete: " .. table.concat(zo, "; "), 0)
        end
        if zz[u] == zy then
            zz[u] = nil
        end
    end
    zz[u] = zy
    return zy
end
local function KO_29(Q, R)
    local zI = type(Q) == "table" and type(Q.Track) == "function"
    assert(zI, "FeatureAPI required")
    local zI_1 = type(R) == "table" and type(R.OnUnload) == "function"
    assert(zI_1, "UI library required")
    assert(type(R.Unload) == "function", "UI unload required")
    Q.Track(function()
        if not R.Unloaded then
            R:Unload()
        end
    end)
    R:OnUnload(function()
        Q.Unload()
    end)
end
xi = KO_4(KO_2)
local KO_13 = fns.fn557
wZ = fn1026
wU = fns.fn687
yH = KO_13(KO_14)
yA = KO_13(KO_25)
PlayerData = require(yH:WaitForChild("Modules"):WaitForChild("PlayerData"))
local KO_16 = require(yH.Modules.SafeGetService)
GiftsTimersModule = require(yH.Modules.GiftsTimersModule)
if ((not ClickCooldownModule and ClickCooldownModule or ClickCooldownModule and not KO_16) and ((not ClickCooldownModule or ClickCooldownModule) and (not KO_16 or KO_16)) or (not KO_16 or not KO_16) and (ClickCooldownModule or not KO_16) and ((not KO_16 or KO_16) and (not ClickCooldownModule or not KO_16))) and not ((not ClickCooldownModule and ClickCooldownModule or ClickCooldownModule and not KO_16) and ((not ClickCooldownModule or ClickCooldownModule) and (not KO_16 or KO_16)) or (not KO_16 or not KO_16) and (ClickCooldownModule or not KO_16) and ((not KO_16 or KO_16) and (not ClickCooldownModule or not KO_16))) then
    yH = require(PotionsModule.Modules.PotionsModule)
else
    PotionsModule = require(yH.Modules.PotionsModule)
end
MultiUseModule = require(yH.Modules.MultiUseModule)
ClickCooldownModule = require(yH.Modules.ClickCooldownModule)
BreakablesConfig = require(yH.Modules.BreakablesConfig)
WorldZones = require(yH.Modules.WorldZones)
PetDisplay = require(yH.Modules.PetDisplay)
local Knit = require(yH.Packages.Knit)
Knit.OnStart():await()
xK, xF, xz, xs, xp, xk, xe, w9, UpgradesModule = nil, nil, nil, nil, nil, nil, nil, nil, nil
xK = KO_16.Get("PlaytimeGiftsService")
xF = KO_16.Get("BreakableAreaService")
xz = KO_16.Get("BreakableOrbService")
xs = KO_16.Get("EggHatchService")
xp = KO_16.Get("ConsumablesService")
xk = KO_16.Get("CraftMachinesService", { "CraftGolden", "CraftBulkGolden", "CraftDiamond", "CraftBulkDiamond" })
xe = KO_16.Get("TeleportService", { "GoTo" })
w9 = KO_16.Get("UpgradesService", { "BuyUpgrade" })
UpgradesModule = require(yH.UpgradesModule:WaitForChild("UpgradesModule"))
KO_13 = tonumber(ClickCooldownModule.COOLDOWN) or 0.1
w0, wW, wV, HatchFormation, State, yt, yp, yk = nil, nil, nil, nil, nil, nil, nil, nil
w0 = KO_13
wW = 55
wV = nil
pcall(fns.fn492)
State = xi.State
State.AutoClaimPlaytime = false
State.AutoFarm = false
State.AutoClickBreakable = false
State.BreakablePriority = "Nearest"
State.FarmZone = "Spawn"
State.AutoUseConsumables = false
State.SelectedFruits = {}
State.SelectedPotions = {}
State.UseAmount = 1
State.AutoHatch = false
State.HatchEgg = "Basic Egg"
State.HatchAmount = "Single"
State.PlaytimeSeconds = 0
State.AutoGoldPets = false
State.SelectedGoldPets = {}
State.GoldCraftDelay = 1
State.AutoDiamondPets = false
State.SelectedDiamondPets = {}
State.DiamondCraftDelay = 1
State.TeleportWorld = "Spawn"
State.AutoBuyUpgrades = false
State.SelectedUpgrades = {}
yt = {
    { key = "Spawn", label = "Spawn", area = "Spawn" },
    { key = "BirchForest", label = "Birch Forest", area = "BirchForest" },
    { key = "TreasureDunes", label = "Treasure Dunes", area = "TreasureDunes" },
    { key = "FrozenAlley", label = "Frozen Alley", area = "FrozenAlley" },
    { key = "HauntedHouse", label = "Haunted House", area = "Haunted" },
    { key = "PetKingdom", label = "Pet Kingdom", area = "PetKingdom" },
    { key = "EnchantedGrove", label = "Enchanted Grove", area = "EnchantedGrove" },
    { key = "TheMoon", label = "The Moon", area = "TheMoon" }
}
yp = {}
yk = {}
for i, v in ipairs(yt) do
    table.insert(yp, v.label)
    yk[v.label] = v
end
x6, xX = nil, nil
x6 = { "Apple", "Banana", "Blueberry", "Kiwi", "Mango", "Taco" }
xX = {}
KO_13 = {}
KO_2 = PotionsModule.Tier1Names or KO_13
for i, v in ipairs(KO_2) do
    table.insert(xX, v)
end
KO_13 = {}
KO_2 = PotionsModule.Tier2Names or KO_13
for i, v in ipairs(KO_2) do
    table.insert(xX, v)
end
xB, xt, xr, xm, xf = nil, nil, nil, nil, nil
xB = { "Single", "Half", "Max" }
xt = { "1", "5", "10", "25" }
xr = { "Nearest", "Coins", "Rubies", "Fruits", "Highest HP", "Lowest HP", "Highest Tier" }
xm = {
    { key = "CoinsUpgrades", label = "Coins" },
    { key = "RubiesUpgrades", label = "Rubies" },
    { key = "LuckUpgrades", label = "Luck" },
    { key = "HatchSpeedUpgrades", label = "Hatch Speed" },
    { key = "CriticalUpgrades", label = "Critical" },
    { key = "PetSpeedUpgrades", label = "Pet Speed" }
}
xf = {}
KO_2 = {}
for i, v in ipairs(xm) do
    table.insert(xf, v.label)
    KO_2[v.label] = v.key
end
xn, yq, ym, yg, x9, x7, w6, w8, w3, w4, x2, xb, xD, x_, wR, connection, xY, xO, xw, xc, yE, yb, xH, xo, yF, yc, xN, xy, xG, xC, w2, wX, yJ, xZ, xh, yz, x1, xJ, yB, x4, yx, wY, xU, xx, wQ, w_, ys, xR, yC, yf, w7, xv, xT, wT, yi, xI, xd, yG, yd, xj, yI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
KO_25 = function()
    local zS
    local zT
    local zR
    zR = nil
    zS = nil
    zT = nil
    zT = {}
    zR = {}
    zS = { Particles = true, Sounds = true, EggsPrizes = true, EggHandlerModule = true }
    local function zU(a3)
        local zP = type(a3) == "string" and a3 ~= "" and not zT[a3] and not zS[a3]
        if zP then
            zT[a3] = true
            table.insert(zR, a3)
        end
    end
    local Map = yA:FindFirstChild("Map")
    local zW = Map and Map:FindFirstChild("Eggs")
    if zW then
        for i, child in ipairs(zW:GetChildren()) do
            zU(child.Name)
        end
    end
    local NormalEggs = yH:FindFirstChild("NormalEggs")
    if NormalEggs then
        for i, child in ipairs(NormalEggs:GetChildren()) do
            if child:IsA("Folder") then
                zU(child.Name)
            end
        end
    end
    table.sort(zR)
    if #zR == 0 then
        zR = {
            "Basic Egg",
            "Sprout Egg",
            "Grassy Egg",
            "Dried Egg",
            "Frost Egg",
            "Zombie Egg",
            "Castle Egg",
            "Mushroom Egg",
            "Universe Egg"
        }
    end
    return zR
end
xn = KO_25()
KO_14 = function(bj)
    local Ah_1
    local Ag_1
    local Af = {}
    Ag_1, Ah_1 = pcall(function()
        return PetDisplay.GetCraftablePets(bj)
    end)
    local Ai = Ag_1 and type(Ah_1) == "table"
    if Ai then
        for i, v in ipairs(Ah_1) do
            local Ag_2 = v ~= ""
            local Ah_2 = type(v) == "string" and Ag_2
            if Ah_2 then
                table.insert(Af, v)
            end
        end
    end
    table.sort(Af)
    return Af
end
yq = KO_14("Golden")
ym = KO_14("Diamond")
yg = 0.35
x9 = 5
x7 = 120
xY = fn1251
xO = fn1197
xw = fn842
xc = fn1366
yE = fns.fn231
yb = fns.fn420
xH = fns.fn641
xo = fns.fn538
yF = fns.fn515
yc = fn1250
xN = fn1217
xy = function(cs, ct)
    local Bd
    Bd = nil
    Bd = xO()
    local Be = not Bd
    local Bl = if Be then 1 else 0
    local Bj = 3510 * Bl + 925 * (1 - Bl)
    local Bk = 1553 * Bl + 2389 * (1 - Bl)
    if not ((Bj * 1851 + Bk * 2556 + Bj * Bk) % 16777213 == 15917508) then
        Be = typeof(cs) ~= "CFrame"
    end
    if Be then
        return false
    end
    local Be_1 = ct and not ct()
    if Be_1 then
        return false
    end
    local Magnitude = (cs.Position - Bd.Position).Magnitude
    if Magnitude <= 2 then
        return true
    end
    local Bf = math.clamp(Magnitude / wW, 0.15, 45)
    xN()
    pcall(function()
        Bd.AssemblyLinearVelocity = Vector3.zero
        Bd.AssemblyAngularVelocity = Vector3.zero
    end)
    local Be_3 = TweenService:Create(Bd, TweenInfo.new(Bf, Enum.EasingStyle.Linear), { CFrame = cs })
    wV = Be_3
    Be_3:Play()
    local Bg = os.clock() + Bf + 1
    local Bg_3
    while true do
        local Bf_1 = wU() and wV == Be_3 and os.clock() < Bg
        if not Bf_1 then
            local Bf_2 = false
            Bd = xO()
            local Bg_1 = Bd and wU()
            if Bg_3 then
                local Bh_1 = not ct or ct()
            end
            if Bg_3 then
                Bf_2 = (Bd.Position - cs.Position).Magnitude <= 6
                pcall(function()
                    Bd.AssemblyLinearVelocity = Vector3.zero
                    Bd.AssemblyAngularVelocity = Vector3.zero
                end)
            end
            if wV == Be_3 then
                wV = nil
            end
            return Bf_2
        end
        local Bf_3 = ct and not ct()
        if Bf_3 then
            break
        end
        Bd = xO()
        if not Bd then
            xN()
            return false
        end
        if (Bd.Position - cs.Position).Magnitude <= 3 then
            local Bf_4 = false
            Bd = xO()
            local Bg_2 = Bd and wU()
            if Bg_3 then
                local Bh_2 = not ct or ct()
            end
            if Bg_3 then
                Bf_4 = (Bd.Position - cs.Position).Magnitude <= 6
                pcall(function()
                    Bd.AssemblyLinearVelocity = Vector3.zero
                    Bd.AssemblyAngularVelocity = Vector3.zero
                end)
            end
            if wV == Be_3 then
                wV = nil
            end
            return Bf_4
        end
        if Be_3.PlaybackState ~= Enum.PlaybackState.Playing then
            local Bf_5 = false
            Bd = xO()
            Bg_3 = Bd and wU()
            if Bg_3 then
                local Bh_3 = not ct or ct()
                Bg_3 = Bh_3
            end
            if Bg_3 then
                Bf_5 = (Bd.Position - cs.Position).Magnitude <= 6
                pcall(function()
                    Bd.AssemblyLinearVelocity = Vector3.zero
                    Bd.AssemblyAngularVelocity = Vector3.zero
                end)
            end
            if wV == Be_3 then
                wV = nil
            end
            return Bf_5
        end
        task.wait(0.03)
    end
    xN()
    return false
end
xG = fns.fn74
xC = fns.fn314
w6 = {}
w2 = fns.fn637
w8 = 0
w3 = 0
wX = fns.fn255
yJ = fn1138
xZ = fn1281
xh = fn944
yz = fn1004
x1 = fns.fn524
xJ = fns.fn666
yB = fns.fn647
x4 = function()
    w8 += 1
    local e8 = w8
    task.spawn(function()
        local CX, CY, CZ, C_, C0, C1
        local C4 = false
        repeat
            local CW
            local C3 = 7
            while true do
                if C3 < 20 then
                    if C3 < 10 then
                        if C3 < 5 then
                            if C3 < 2 then
                                if C3 < 1 then
                                    CZ = CY ~= CW.key
                                    C3 = 29
                                else
                                    C3 = 15
                                end
                            elseif C3 < 3 then
                                task.wait(0.35)
                                C3 = 3
                            elseif C3 < 4 then
                                C3 = 19
                            else
                                xH(xF.SetAutoBreaking, true)
                                C3 = 30
                            end
                        elseif C3 < 7 then
                            if C3 < 6 then
                                C3 = if CX then 38 else 33
                            else
                                C_ = CY == CW.key
                                C3 = 25
                            end
                        elseif C3 < 8 then
                            CX = (wU())
                            C3 = if CX then 34 else 31
                        elseif C3 < 9 then
                            CX = yk[State.FarmZone]
                            C3 = if CX then 5 else 22
                        else
                            C3 = if C1 then 17 else 2
                        end
                    elseif C3 < 15 then
                        if C3 < 12 then
                            if C3 < 11 then
                                C3 = 28
                            else
                                C3 = if C_ then 26 else 16
                            end
                        elseif C3 < 13 then
                            pcall(function()
                                xH(xF.SetArea, CW.area)
                            end)
                            C3 = if not yb() then 4 else 30
                        elseif C3 < 14 then
                            C3 = if CZ then 8 else 1
                        else
                            C3 = 20
                        end
                    elseif C3 < 17 then
                        if C3 < 16 then
                            C4 = true
                            C3 = 20
                        else
                            C3 = 10
                        end
                    elseif C3 < 18 then
                        C3 = 10
                    elseif C3 < 19 then
                        xC(CW.key, CX)
                        CZ = os.clock() + 4
                        C3 = 19
                    else
                        C3 = 24
                    end
                elseif C3 < 30 then
                    if C3 < 25 then
                        if C3 < 22 then
                            if C3 < 21 then
                                break
                            end
                            C3 = if not yc(1) then 35 else 23
                        elseif C3 < 23 then
                            CX = yk.Spawn
                            C3 = 5
                        elseif C3 < 24 then
                            C3 = 14
                        else
                            C_ = (CX())
                            C3 = if C_ then 37 else 11
                        end
                    elseif C3 < 27 then
                        if C3 < 26 then
                            C0 = CY ~= ""
                            C1 = C_
                            C3 = if C1 then 9 else 39
                        else
                            CY = yE()
                            C_ = CY == CW.area
                            C3 = if C_ then 25 else 6
                        end
                    elseif C3 < 28 then
                        CZ = CY
                        C3 = 13
                    elseif C3 < 29 then
                        local C7 = if not CX() then 1 else 0
                        local C5 = 25 * C7 + 3563 * (1 - C7)
                        local C6 = 2726 * C7 + 2270 * (1 - C7)
                        C3 = if (C5 * 2920 + C6 * 2762 + C5 * C6) % 16777213 == 7670362 then 36 else 32
                    else
                        C3 = if CZ then 18 else 28
                    end
                elseif C3 < 35 then
                    if C3 < 32 then
                        if C3 < 31 then
                            C3 = 21
                        else
                            CY = e8 == w8
                            CZ = CX
                            C3 = if CZ then 27 else 13
                        end
                    elseif C3 < 33 then
                        C3 = if yE() ~= "" then 12 else 21
                    elseif C3 < 34 then
                        CX = yt[1]
                        C3 = 38
                    else
                        CX = State.AutoFarm
                        C3 = 31
                    end
                elseif C3 < 37 then
                    if C3 < 36 then
                        C3 = 15
                    else
                        C3 = 15
                    end
                elseif C3 < 38 then
                    C_ = os.clock() < CZ
                    C3 = 11
                elseif C3 < 39 then
                    CW = CX
                    CX = function()
                        local CS = wU() and State.AutoFarm
                        return CS and e8 == w8
                    end
                    CY = yE()
                    CZ = CY ~= CW.area
                    C3 = if CZ then 0 else 29
                else
                    C1 = C0
                    C3 = 9
                end
            end
        until C4
        if e8 == w8 then
            wX()
        end
    end)
end
yx = function()
    w3 += 1
    local fN = w3
    task.spawn(function()
        while true do
            local C8 = wU() and State.AutoClickBreakable
            if C8 and fN == w3 then
                local C8_1 = xJ()
                if C8_1 then
                    yB(C8_1)
                end
                if not yc(w0) then
                    break
                end
                continue
            end
            break
        end
    end)
end
w4 = 0
wY = function()
    w4 += 1
    local f5 = w4
    task.spawn(function()
        while true do
            local Dd = wU() and State.AutoUseConsumables
            if Dd and f5 == w4 then
                local Dd_1 = MultiUseModule.Sanitize(State.UseAmount)
                for i, v in ipairs(yF(State.SelectedFruits, x6)) do
                    local De_1 = wU() and State.AutoUseConsumables
                    if not (De_1 and f5 == w4) then
                        break
                    end
                    xH(xp.UseItem, v, Dd_1)
                    if not yc(0.35) then
                        break
                    end
                end
                for i, v in ipairs(yF(State.SelectedPotions, xX)) do
                    local Dc
                    local Dt = v
                    local De_2 = wU() and State.AutoUseConsumables
                    if not (De_2 and f5 == w4) then
                        break
                    end
                    Dc = false
                    pcall(function()
                        Dc = PotionsModule.IsActive(Dt) == true
                    end)
                    if not Dc then
                        xH(xp.UseItem, Dt, Dd_1)
                        if not yc(0.35) then
                            break
                        end
                    end
                end
                if not yc(2) then
                    break
                end
                continue
            end
            break
        end
    end)
end
x2 = 0
xU = fns.fn6
xx = fn804
wQ = function()
    x2 += 1
    local gO = x2
    task.spawn(function()
        while true do
            local DD = wU() and State.AutoHatch
            if DD and gO == x2 then
                local HatchEgg = State.HatchEgg
                local HatchAmount = State.HatchAmount
                local DF_1 = HatchEgg ~= ""
                local DG = type(HatchEgg) == "string" and DF_1
                if DG then
                    local DF_2 = HatchFormation and type(HatchFormation.IsActive) == "function" and HatchFormation.IsActive()
                    if not DF_2 then
                        xx(HatchEgg, HatchAmount, true)
                    end
                end
                if not yc(1.2) then
                    break
                end
                continue
            end
            break
        end
        if gO == x2 then
            xU()
        end
    end)
end
w_ = fn1223
ys = fn1335
xR = fn1259
yC = fn887
yf = function(hG, hH)
    local Ei = type(hG) ~= "table" or type(hG.Fire) ~= "function"
    local En = if Ei then 1 else 0
    local El = 2789 * En + 1433 * (1 - En)
    local Em = 1458 * En + 954 * (1 - En)
    if not ((El * 1185 + Em * 713 + El * Em) % 16777213 == 8410881) then
        Ei = type(hH) ~= "table"
    end
    if not Ei then
        Ei = #hH == 0
    end
    if Ei then
        return false
    end
    local Eg = false
    local connection
    if type(hG.Connect) == "function" then
        connection = hG:Connect(function()
            Eg = true
        end)
    end
    local Ei_1 = pcall(hG.Fire, hG, hH)
    if not Ei_1 then
        if connection then
            pcall(function()
                connection:Disconnect()
            end)
        end
        return false
    end
    local Ei_2 = os.clock() + 5
    while true do
        local Ej = wU() and not Eg and os.clock() < Ei_2
        if Ej then
            task.wait(0.05)
            continue
        end
        break
    end
    if connection then
        pcall(function()
            connection:Disconnect()
        end)
    end
    return true
end
xb = 0
w7 = function()
    xb += 1
    local hV = xb
    task.spawn(function()
        while true do
            local Eo = wU() and State.AutoGoldPets
            if Eo and hV == xb then
                local Eo_1 = xR("Golden", State.SelectedGoldPets)
                if #Eo_1 > 0 then
                    yf(xk.CraftBulkGolden, Eo_1)
                end
                if not yc(State.GoldCraftDelay) then
                    break
                end
                continue
            end
            break
        end
    end)
end
xD = 0
xv = function()
    xD += 1
    local ie = xD
    task.spawn(function()
        while true do
            local Es = wU() and State.AutoDiamondPets
            if Es and ie == xD then
                local Es_1 = xR("Diamond", State.SelectedDiamondPets)
                if #Es_1 > 0 then
                    yf(xk.CraftBulkDiamond, Es_1)
                end
                if not yc(State.DiamondCraftDelay) then
                    break
                end
                continue
            end
            break
        end
    end)
end
x_ = 0
xT = function()
    x_ += 1
    local iA = x_
    task.spawn(function()
        while true do
            local Ez = wU() and State.AutoClaimPlaytime
            if Ez and iA == x_ then
                w2()
                if not yc(1) then
                    break
                end
                continue
            end
            break
        end
    end)
end
wT = fn982
if (false and (false and not xw) or (not xd or not w3) and false or (x7 or not xd) and (not xw and xd) and (not xw and xw and (xd and w3)) or (not xw or false or not xd and not w3) and ((xw or not xd) and (not xd or false)) and ((not xw and not xw or not xw and xd) and (false or not w3 or (x7 or not w3)))) and not (false and (false and not xw) or (not xd or not w3) and false or (x7 or not xd) and (not xw and xd) and (not xw and xw and (xd and w3)) or (not xw or false or not xd and not w3) and ((xw or not xd) and (not xd or false)) and ((not xw and not xw or not xw and xd) and (false or not w3 or (x7 or not w3)))) then
    xd = fns.fn132
    yi = fns.fn254
    xI = fn777
else
    yi = fns.fn132
    xI = fns.fn254
    xd = fn777
end
yG = fns.fn355
yd = fns.fn318
xj = fns.fn89
wR = 0
yI = function()
    wR += 1
    local jz = wR
    task.spawn(function()
        while true do
            local Fb = wU() and State.AutoBuyUpgrades
            if Fb and jz == wR then
                local Fb_1 = false
                for i, v in ipairs(xm) do
                    local Fc_1 = wU() and State.AutoBuyUpgrades
                    if not (Fc_1 and jz == wR) then
                        break
                    end
                    local Fc_2 = State.SelectedUpgrades[v.label] and xj(v.key)
                    if Fc_2 then
                        Fb_1 = true
                        if not yc(0.25) then
                            break
                        end
                    end
                end
                local Fb_2 = Fb_1 and 0.35 or 1
                if not yc(Fb_2) then
                    break
                end
                continue
            end
            break
        end
    end)
end
pcall(fn789)
if connection then
    xi.Track(function()
        connection:Disconnect()
    end)
end
x5, xW, xS, xL, Library, ThemeManager, SaveManager, Toggles, Options, yl, xa, yD = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
xi.Track(fn1116)
xi.SetAutoClaimPlaytime = fns.fn500
xi.SetAutoFarm = fn980
xi.SetAutoClickBreakable = fns.fn631
xi.SetBreakablePriority = fn1243
xi.BreakablePriorityValues = fns.fn558
xi.SetFarmZone = fns.fn172
xi.SetAutoUseConsumables = fn859
xi.SetSelectedFruits = fn1068
xi.SetSelectedPotions = fn805
xi.SetUseAmount = fns.fn93
xi.SetAutoHatch = fns.fn260
xi.SetHatchEgg = fns.fn52
xi.SetHatchAmount = fn771
xi.SetAutoGoldPets = fn700
xi.SetSelectedGoldPets = fns.fn144
xi.SetGoldCraftDelay = fns.fn135
xi.SetAutoDiamondPets = fns.fn204
xi.SetSelectedDiamondPets = fns.fn474
xi.SetDiamondCraftDelay = fns.fn264
xi.FarmZoneValues = fn995
xi.FruitValues = fns.fn440
xi.PotionValues = fn770
xi.EggValues = fn1156
xi.HatchAmountValues = fns.fn433
xi.UseAmountValues = fns.fn458
xi.GoldPetValues = fns.fn166
xi.DiamondPetValues = fn1011
xi.SetTeleportWorld = fn886
xi.TeleportWorldValues = fn1297
xi.TeleportToSelectedWorld = fn796
xi.SetAutoBuyUpgrades = fn947
xi.SetSelectedUpgrades = fn1104
xi.UpgradeValues = fn976
x5 = "https://discord.gg/synapsex"
xW = "https://rscripts.net/@Ouroboros"
xS = "https://ouroboros-hub-rbx.web.app/"
KO_2 = "v0.8"
xL = "Pets Universe"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
KO_29(xi, Library)
xa = fns.fn584
yD = fns.fn398
KO_25 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = x5, Copyable = true }, "|", xL, "|", KO_2 },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
yl = {
    Info = KO_25:AddTab("Info", "info"),
    Main = KO_25:AddTab("Main", "gamepad-2"),
    Player = KO_25:AddTab("Player", "person-standing"),
    Settings = KO_25:AddTab("Settings", "settings")
}
KO_4 = fn909
for k, v in yl do
    if k ~= "Info" then
        KO_4(v)
    end
end
KO_2, KO_16, KO_25 = nil, nil, nil
KO_14 = fns.fn553
KO_14()
KO_13 = function()
    local GY
    local G2
    local G0
    local G9
    local GZ
    GY = nil
    GZ = nil
    G0 = nil
    G2 = nil
    G9 = nil
    local G_, Label2, G3, G4, G5, G6, Label3, Label
    G2 = function(nw)
        return (tostring(nw):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    G0 = function(ny, nz)
        return string.format('<font color="%s">%s</font>', nz, G2(ny))
    end
    G5 = function(nC, nD, nE)
        return string.format("<b>%s</b> %s %s", nC, G0("-", "#5a6070"), G0(nD, nE))
    end
    G_ = "#e8a34d"
    G9 = "Unknown"
    local Hb = "#8b93a3"
    G3 = "#7fd47f"
    pcall(function()
        local GL_1
        local GK_1
        if type(identifyexecutor) == "function" then
            GL_1, GK_1 = identifyexecutor()
            local GM = GL_1 ~= ""
            local GN = type(GL_1) == "string" and GM
            if GN then
                local GM_1 = type(GK_1) == "string" and GK_1 ~= "" and GL_1 .. " " .. GK_1
                G9 = GM_1 or GL_1
            end
        end
    end)
    GY = os.clock()
    G4 = function()
        local GS = math.floor(os.clock() - GY)
        if GS < 60 then
            return GS .. "s"
        elseif GS < 3600 then
            return string.format("%dm %ds", GS // 60, GS % 60)
        else
            return string.format("%dh %dm", GS // 3600, GS % 3600 // 60)
        end
    end
    local UserGroup = yl.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(G5("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, G3), true)
    UserGroup:AddLabel(G5("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(G5("Executor", G9 .. "  Knit remotes", G3), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(G5("Session", G4(), G_), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            xa(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            xa("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = yl.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = x5,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = yl.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(G5("Game", xL, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(G5("Players", "0/0", G3), true)
    G6 = tostring(game.JobId)
    local Ha = #G6 > 18 and string.sub(G6, 1, 18) .. "..."
    local Hd_1 = Ha or G6
    SessionGroup:AddLabel(G5("Job", Hd_1, Hb), true)
    Label = SessionGroup:AddLabel(G5("Ping", "0 ms", G_), true)
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
            xa(G6, "Copied Job ID")
        end
    })
    GZ = task.spawn(function()
        local GV_1
        local GU_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(G5("Session", G4(), G_))
            Label2:SetText(G5("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), G3))
            GU_1, GV_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local GU_2 = GU_1 and GV_1 .. " ms" or "n/a"
            Label:SetText(G5("Ping", GU_2, G_))
        end
    end)
    xi.Track(function()
        pcall(task.cancel, GZ)
    end)
    local SocialsGroup = yl.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = yD })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            xa(xW, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            xa(xS, "Copied website link")
        end
    })
end
if ((not KO_16 or false) and (KO_2 and not KO_25) or not KO_16 and false and false) and not ((not KO_16 or false) and (KO_2 and not KO_25) or not KO_16 and false and false) then
    KO_2()
else
    KO_13()
    KO_2 = function()
        local oQ
        local oO
        local oR
        local oP
        local MovementGroup = yl.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = yl.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        oR = {}
        oP = {}
        local oN = {}
        oQ = {}
        oO = {}
        local function oS()
            for k, v in oO do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(oO)
        end
        local function oW()
            for k, v in oP do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(oP)
        end
        local function o_()
            for k, v in oQ do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(oQ)
        end
        local function o3(o4)
            if not o4:IsA("ProximityPrompt") then
                return
            end
            if oR[o4] == nil then
                oR[o4] = {
                    HoldDuration = o4.HoldDuration,
                    MaxActivationDistance = o4.MaxActivationDistance,
                    RequiresLineOfSight = o4.RequiresLineOfSight
                }
            end
            o4.HoldDuration = 0
            o4.MaxActivationDistance = 50
            o4.RequiresLineOfSight = false
        end
        local function o6()
            for k, v in oR do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(oR)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                o_()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                oW()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                oS()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in yA:QueryDescendants("ProximityPrompt") do
                    pcall(o3, v)
                end
            else
                o6()
            end
        end)
        table.insert(oN, yA.DescendantAdded:Connect(function(po)
            if Toggles.InstantProximityPrompt.Value then
                o3(po)
            end
        end))
        table.insert(oN, yy.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if oO[v] == nil then
                        oO[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(oN, yu.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local H1 = xw()
            if Toggles.InfJump.Value and H1 then
                H1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(oN, yy.RenderStepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local H8 = Character and Character:FindFirstChildOfClass("Humanoid")
            local H9 = Character
            if H9 then
                H9 = Character:FindFirstChild("HumanoidRootPart")
            end
            local H7_1 = H9
            local CurrentCamera = yA.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and H8 then
                if oP[H8] == nil then
                    oP[H8] = H8.WalkSpeed
                end
                H8.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and H7_1 and H8 and CurrentCamera then
                if yu:GetFocusedTextBox() then
                    return
                end
                if oQ[H8] == nil then
                    oQ[H8] = H8.PlatformStand
                end
                H8.PlatformStand = true
                local H9_4 = Vector3.zero
                if yu:IsKeyDown(Enum.KeyCode.W) then
                    H9_4 += CurrentCamera.CFrame.LookVector
                end
                local If = if yu:IsKeyDown(Enum.KeyCode.S) then 1 else 0
                if If == 1 then
                    H9_4 -= CurrentCamera.CFrame.LookVector
                end
                if yu:IsKeyDown(Enum.KeyCode.A) then
                    H9_4 -= CurrentCamera.CFrame.RightVector
                end
                if yu:IsKeyDown(Enum.KeyCode.D) then
                    H9_4 += CurrentCamera.CFrame.RightVector
                end
                if yu:IsKeyDown(Enum.KeyCode.Space) then
                    H9_4 += Vector3.yAxis
                end
                if yu:IsKeyDown(Enum.KeyCode.LeftControl) then
                    H9_4 -= Vector3.yAxis
                end
                if H9_4.Magnitude > 0 then
                    H7_1.AssemblyLinearVelocity = H9_4.Unit * Options.FlySpeed.Value
                else
                    H7_1.AssemblyLinearVelocity = Vector3.zero
                end
            end
        end))
        xi.Track(function()
            for k, v in oN do
                v:Disconnect()
            end
            oS()
            oW()
            o_()
            o6()
        end)
    end
end
KO_2()
KO_16 = function()
    local Jv, Jw, Jx, Jy, Jz, JA, JB, JC, JD, JE, Label, JG, JH, JI
    JG = {}
    JB = {}
    Jv = nil
    JH = 0
    JC = false
    Jx = 0
    JD = os.clock()
    local MenuGroup = yl.Settings:AddLeftGroupbox("Menu", "logs")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    JI = function()
        local CurrentCamera
        CurrentCamera = yA.CurrentCamera
        local Io = not CurrentCamera or not wZ(VirtualUser.CaptureController) or not wZ(VirtualUser.ClickButton2)
        if Io then
            return false
        end
        local Io_1 = pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        end)
        if not Io_1 then
            return false
        end
        Jx += 1
        JD = os.clock()
        pcall(function()
            Label:SetText("AFK triggers: " .. Jx)
        end)
        return true
    end
    Jy = function(qo)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not qo)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not qo
            end
        end)
        if not qo then
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
    JA = function(qC)
        local Ix = qC.ClassName == "ParticleEmitter" or qC.ClassName == "Trail" or qC.ClassName == "Smoke" or qC.ClassName == "Fire" or qC.ClassName == "Sparkles"
        local IB = if Ix then 1 else 0
        local Iz = 2048 * IB + 1031 * (1 - IB)
        local IA = 2987 * IB + 464 * (1 - IB)
        if not ((Iz * 292 + IA * 2593 + Iz * IA) % 16777213 == 14460683) then
            Ix = qC.ClassName == "Explosion"
        end
        if not Ix then
            Ix = qC.ClassName == "Beam"
        end
        if Ix then
            if JG[qC] == nil then
                JG[qC] = qC.Enabled
            end
            pcall(function()
                qC.Enabled = false
            end)
        end
    end
    Jw = function()
        for k, v in JG do
            local IG = k
            local II = v
            if IG.Parent then
                pcall(function()
                    IG.Enabled = II
                end)
            end
        end
        table.clear(JG)
        if Jv then
            pcall(function()
                settings().Rendering.QualityLevel = Jv.Quality
            end)
            Lighting.GlobalShadows = Jv.Shadows
            Lighting.FogEnd = Jv.Fog
            Jv = nil
        end
    end
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", {
        Text = "Disable 3D Rendering",
        Default = false,
        Callback = function(qQ)
            pcall(function()
                yy:Set3dRenderingEnabled(not qQ)
            end)
        end
    })
    MenuGroup:AddToggle("FpsBoost", {
        Text = "FPS Boost",
        Default = false,
        Callback = function(qV)
            if qV then
                if not Jv then
                    Jv = {
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
                for k, v in yA:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                    pcall(JA, v)
                end
            else
                Jw()
            end
        end
    })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    Jy(true)
    local ScriptGroup = yl.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiGameplayPause:OnChanged(function()
        Jy(Toggles.AntiGameplayPause.Value)
    end)
    if Toggles.AntiGameplayPause.Value then
        Jy(true)
    end
    table.insert(JB, LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value and not Library.Unloaded then
            JI()
        end
    end))
    table.insert(JB, yA.DescendantAdded:Connect(function(rd)
        if Toggles.FpsBoost.Value then
            JA(rd)
        end
    end))
    JE = function(rh)
        local I1 = JC
        local I6 = if I1 then 1 else 0
        local I4 = 2646 * I6 + 3999 * (1 - I6)
        local I5 = 3744 * I6 + 1936 * (1 - I6)
        if not ((I4 * 243 + I5 * 3320 + I4 * I5) % 16777213 == 6202469) then
            I1 = Library.Unloaded
        end
        if not I1 then
            I1 = not Toggles.AutoReconnect.Value
        end
        if I1 then
            return
        end
        JC = true
        local I0 = JH
        local I1_1 = pcall(function()
            if rh then
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            else
                TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
            end
        end)
        if not I1_1 then
            JC = false
            if not rh and I0 == JH then
                task.delay(1.5, function()
                    if I0 == JH then
                        JE(true)
                    end
                end)
            end
        end
    end
    table.insert(JB, TeleportService.TeleportInitFailed:Connect(function(rz)
        local I8
        if rz == LocalPlayer and JC then
            JC = false
            I8 = JH
            task.delay(3, function()
                if I8 == JH then
                    JE(true)
                end
            end)
        end
    end))
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local Jd = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if Library.Unloaded or not Jd then
            return
        end
        table.insert(JB, Jd.ChildAdded:Connect(function(rO)
            if rO.Name == "ErrorPrompt" then
                JE(false)
            end
        end))
    end)
    Jz = task.spawn(function()
        while not Library.Unloaded do
            if Toggles.AntiGameplayPause.Value then
                Jy(true)
            end
            local Jj = Toggles.AntiAfk.Value and os.clock() - JD >= 60
            if Jj then
                JI()
            end
            task.wait(1)
        end
    end)
    xi.Track(function()
        JH += 1
        for k, v in JB do
            v:Disconnect()
        end
        pcall(task.cancel, Jz)
        Jy(false)
        Jw()
        pcall(function()
            yy:Set3dRenderingEnabled(true)
        end)
    end)
end
KO_16()
KO_25 = function()
    local KB, KC, KD, KE
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(yl.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/PetsUniverse")
    local KF = SaveManager:BuildConfigSection(yl.Settings)
    KE = function(se, sf)
        local JM_1 = (se == "Toggle" and Toggles or Options)[sf]
        local JL_2 = type(JM_1) == "table" and JM_1.Type == se
        return JL_2 and JM_1 or nil
    end
    KC = function(so, sp)
        local Type = sp.Type
        if Type == "Toggle" then
            return { idx = so, type = "Toggle", value = sp.Value == true }
        elseif Type == "Slider" then
            return { idx = so, type = "Slider", value = tostring(sp.Value) }
        elseif Type == "Dropdown" then
            return { idx = so, type = "Dropdown", multi = sp.Multi == true, value = sp.Value }
        elseif Type == "Input" then
            local JT = sp.Value or ""
            return { idx = so, type = "Input", text = tostring(JT) }
        elseif Type == "ColorPicker" then
            return { idx = so, type = "ColorPicker", value = sp.Value:ToHex(), transparency = sp.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = so,
                type = "KeyPicker",
                mode = sp.Mode,
                key = sp.Value,
                modifiers = sp.Modifiers,
                toggled = sp.Toggled
            }
        else
            return nil
        end
    end
    KB = function()
        local JW = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local JX = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if JX then
                    local JX_1 = KC(k, v)
                    if JX_1 then
                        JW[#JW + 1] = JX_1
                    end
                end
            end
        end
        table.sort(JW, function(sz, sA)
            if sz.type ~= sA.type then
                return sz.type < sA.type
            end
            return sz.idx < sA.idx
        end)
        return { objects = JW }
    end
    KD = function(sC)
        local Kf
        Kf = nil
        local Kg = type(sC) ~= "table" or type(sC.idx) ~= "string"
        local Kk = if Kg then 1 else 0
        local Ki = 2794 * Kk + 861 * (1 - Kk)
        local Kj = 539 * Kk + 2069 * (1 - Kk)
        if not ((Ki * 3179 + Kj * 176 + Ki * Kj) % 16777213 == 10482956) then
            Kg = type(sC.type) ~= "string"
        end
        if not Kg then
            Kg = SaveManager.Ignore[sC.idx]
        end
        if Kg then
            return false
        end
        Kf = KE(sC.type, sC.idx)
        if not Kf then
            return false
        end
        local Kg_1 = pcall(function()
            if sC.type == "Input" then
                if type(sC.text) ~= "string" then
                    return
                end
                Kf:SetValue(sC.text)
            elseif sC.type == "ColorPicker" then
                Kf:SetValueRGB(Color3.fromHex(sC.value), sC.transparency)
            elseif sC.type == "KeyPicker" then
                Kf:SetValue({ sC.key, sC.mode, sC.modifiers })
                if sC.mode == "Toggle" and sC.toggled ~= nil then
                    Kf.Toggled = sC.toggled
                    Kf:Update()
                end
            else
                Kf:SetValue(sC.value)
            end
        end)
        return Kg_1
    end
    KF:AddDivider()
    KF:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    KF:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local Km_1
            local Kl_1
            Kl_1, Km_1 = pcall(HttpService.JSONEncode, HttpService, KB())
            if not Kl_1 then
                Library:Notify("Failed to encode config")
                return
            end
            xa(Km_1, "Copied config")
        end
    })
    KF:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local Kp = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
            local Kp_2
            local Kp_1 = Kp == ""
            local Kq = type(Kp) ~= "string" or Kp_1
            local Kq_1
            if Kq then
                Library:Notify("Paste a config first")
                return
            end
            if #Kp > 262144 then
                Library:Notify("Config too large")
                return
            end
            Kp_2, Kq_1 = pcall(HttpService.JSONDecode, HttpService, Kp)
            local Ko_2 = not Kp_2 or type(Kq_1) ~= "table" or type(Kq_1.objects) ~= "table"
            if Ko_2 then
                Library:Notify("Invalid config")
                return
            end
            local Ko_3 = 0
            for i, v in ipairs(Kq_1.objects) do
                if KD(v) then
                    Ko_3 += 1
                end
            end
            Options.SaveManager_ImportSource:SetValue("")
            Library:Notify("Imported " .. Ko_3 .. " settings")
        end
    })
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
KO_25()
