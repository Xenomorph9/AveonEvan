local fns = {}
local uE
local vK
local vr
local vQ
local uQ
local vx
local ux
local uW
local vD
local uD
local u1
local vJ
local uJ
local vq
local u7
local vP
local uP
local vV
local uV
local vC
local vj
local u0
local vI
local uI
local vp
local u6
local vO
local uO
local uv
local vc
local vU
local uU
local vB
local uB
local vi
local State
local vH
local uH
local Friends
local vN
local uN
local uu
local vb
local LocalPlayer
local uT
local Options
local uA
local vZ
local uZ
local vG
local uG
local vn
local uM
local vt
local Library
local va
local vS
local uS
local vz
local uz
local vg
local vY
local Toggles
local vm
local u3
local vL
local uL
local vs
local us
local u9
local vR
local uR
local vy
local uy
local vf
local vX
local uX
function fns.fn11()
    local Plots = uV:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local owner = child:FindFirstChild("owner")
        local xB = owner and owner:IsA("StringValue") and owner.Value == LocalPlayer.Name
        if xB then
            return child
        end
    end
    return nil
end
function fns.fn13()
    vN(vm.Main)
    local Walls_CollectGroup = vm.Main:AddLeftGroupbox("Walls & Collect", "hammer")
    Walls_CollectGroup:AddToggle("AutoBreakWalls", { Text = "Auto Break Walls", Default = false })
    Walls_CollectGroup:AddDropdown("BreakThroughStage", { Text = "Break Through Stage", Values = uL, Default = "Forest" })
    Walls_CollectGroup:AddDivider()
    Walls_CollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect & Bank", Default = false })
    Walls_CollectGroup:AddDropdown("CollectStage", { Text = "Collect At Stage", Values = uL, Default = "Forest" })
    Walls_CollectGroup:AddSlider("CarryLimit", {
        Text = "Carry Before Bank",
        Default = math.clamp(uD(), 1, vJ()),
        Min = 1,
        Max = vJ(),
        Rounding = 0
    })
    local FarmGroup = vm.Main:AddRightGroupbox("Farm", "egg")
    FarmGroup:AddToggle("AutoPlace", { Text = "Auto Place Eggs", Default = false })
    FarmGroup:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
    FarmGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    FarmGroup:AddToggle("AutoUpgradeFarm", { Text = "Auto Upgrade Farm", Default = false })
    FarmGroup:AddDivider()
    FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    FarmGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
    local TrainingGroup = vm.Main:AddLeftGroupbox("Training", "activity")
    TrainingGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    TrainingGroup:AddToggle("AutoBuyDumbells", { Text = "Auto Buy Dumbbells", Default = false })
    TrainingGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    TrainingGroup:AddDropdown("UpgradeTarget", { Text = "Upgrade Target", Values = uv, Default = "Both" })
    local SellGroup = vm.Main:AddRightGroupbox("Sell", "badge-dollar-sign")
    SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    SellGroup:AddDropdown("SellFrom", { Text = "Sell From", Values = vX, Default = "Inventory" })
    SellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = vO, Default = "Keep Best N" })
    SellGroup:AddSlider("SellKeepCount", { Text = "Keep Best N", Default = 10, Min = 0, Max = 100, Rounding = 0 })
    SellGroup:AddDropdown("SellRarities", { Text = "Sell Rarities", Values = vG, Multi = true, AllowNull = true, Default = {} })
    Toggles.AutoBreakWalls:OnChanged(function(mC)
        uz.SetAutoBreakWalls(mC)
    end)
    Options.BreakThroughStage:OnChanged(function(mG)
        uz.SetBreakThroughStage(mG)
    end)
    Toggles.AutoCollect:OnChanged(function(mI)
        uz.SetAutoCollect(mI)
    end)
    Options.CollectStage:OnChanged(function(mK)
        uz.SetCollectStage(mK)
    end)
    Options.CarryLimit:OnChanged(function(mM)
        uz.SetCarryLimit(mM)
    end)
    Toggles.AutoPlace:OnChanged(function(mO)
        uz.SetAutoPlace(mO)
    end)
    Toggles.AutoHatch:OnChanged(function(mQ)
        uz.SetAutoHatch(mQ)
    end)
    Toggles.AutoEquipBest:OnChanged(function(mS)
        uz.SetAutoEquipBest(mS)
    end)
    Toggles.AutoUpgradeFarm:OnChanged(function(mU)
        uz.SetAutoUpgradeFarm(mU)
    end)
    Toggles.AutoRebirth:OnChanged(function(mW)
        uz.SetAutoRebirth(mW)
    end)
    Toggles.AutoClaimIndex:OnChanged(function(mY)
        uz.SetAutoClaimIndex(mY)
    end)
    Toggles.AutoTrain:OnChanged(function(m_)
        uz.SetAutoTrain(m_)
    end)
    Toggles.AutoBuyDumbells:OnChanged(function(m1)
        uz.SetAutoBuyDumbells(m1)
    end)
    Toggles.AutoBuyUpgrades:OnChanged(function(m3)
        uz.SetAutoBuyUpgrades(m3)
    end)
    Options.UpgradeTarget:OnChanged(function(m5)
        uz.SetUpgradeTarget(m5)
    end)
    Toggles.AutoSell:OnChanged(function(m7)
        uz.SetAutoSell(m7)
    end)
    Options.SellFrom:OnChanged(function(m9)
        uz.SetSellFrom(m9)
    end)
    Options.SellMode:OnChanged(function(nb)
        uz.SetSellMode(nb)
    end)
    Options.SellKeepCount:OnChanged(function(nd)
        uz.SetSellKeepCount(nd)
    end)
    Options.SellRarities:OnChanged(function(nf)
        uz.SetSellRarities(nf)
    end)
end
function fns.fn21(kB)
    local ET = kB and true or false
    State.AutoUpgradeFarm = ET
end
function fns.fn24()
    local Az = uP()
    local AA = not Az or type(Az.Inventory) ~= "table" or type(Az.Inventory.Friends) ~= "table"
    if AA then
        return nil
    end
    local AA_1 = Az.Inventory.Friends[1]
    local Az_1 = AA_1 and type(AA_1.uid) == "string"
    if Az_1 then
        return AA_1.uid
    end
    return nil
end
function fns.fn31()
    local xN_1
    local xM_1
    if not u0.GateStates then
        return uS
    end
    xM_1, xN_1 = pcall(function()
        return u0.GateStates:Fire()
    end)
    local xO = xM_1 and type(xN_1) == "table"
    if xO then
        uS = xN_1
    end
    return uS
end
function fns.fn55(kM)
    local Fd = type(kM) == "table" and kM
    local Ff = Fd or {}
    State.SellRarities = Ff
end
function fns.fn57()
    local Bo = uP()
    if not Bo then
        return
    end
    local Bp = vB.Database.Rebirths[Bo.Rebirth + 1]
    if not Bp then
        return
    end
    local Bq = Bp.StrengthRequirement or 0
    local Bq_1 = Bo.Strength
    local Bu = if Bq_1 then 1 else 0
    local Bs = 3237 * Bu + 635 * (1 - Bu)
    local Bt = 83 * Bu + 842 * (1 - Bu)
    if not ((Bs * 2613 + Bt * 3784 + Bs * Bt) % 16777213 == 9041024) then
        Bq_1 = 0
    end
    if Bq_1 >= Bq then
        pcall(function()
            u0.Rebirth:Fire()
        end)
    end
end
function fns.fn75(iO)
    local Dm = uP()
    if not Dm then
        return {}
    end
    local Dn = {}
    if iO == "Inventory" or iO == "Both" then
        local Dq = Dm.Inventory and Dm.Inventory.Friends or {}
        for i, v in ipairs(Dq) do
            local Do_2 = Friends and Friends[v.id]
            local Dp_2 = Do_2
            if Do_2 then
                Do_2 = Dp_2.Type ~= "Lucky Block"
            end
            if Do_2 then
                Do_2 = ux(Dp_2.Rarity)
            end
            if Do_2 then
                Dn[#Dn + 1] = { uid = v.uid, mps = vp(v), from = "Inventory" }
            end
        end
    end
    local Do_3 = iO == "Both"
    local Dp_3 = iO == "Plot"
    local DA = if Dp_3 then 1 else 0
    local Dy = 176 * DA + 78 * (1 - DA)
    local Dz = 2017 * DA + 3201 * (1 - DA)
    if not ((Dy * 3876 + Dz * 211 + Dy * Dz) % 16777213 == 1462755) then
        Dp_3 = Do_3
    end
    if Dp_3 then
        local Dp_4 = Dm.PlotFriends or {}
        for k, v in pairs(Dp_4) do
            local Dm_1 = Friends and Friends[v.id]
            local Do_5 = Dm_1
            if Dm_1 then
                Dm_1 = Do_5.Type ~= "Lucky Block"
            end
            if Dm_1 then
                Dm_1 = not v.incubating
            end
            if Dm_1 then
                Dm_1 = ux(Do_5.Rarity)
            end
            if Dm_1 then
                Dn[#Dn + 1] = { uid = k, mps = vp(v), from = "Plot" }
            end
        end
    end
    return Dn
end
function fns.fn92()
    if u7() then
        return
    end
    local CR = vR()
    if not CR then
        return
    end
    uJ(CR.CFrame + Vector3.new(0, 3, 0))
    task.wait(0.25)
    if LocalPlayer:GetAttribute("InTrainingZone") ~= true then
        uJ(CR.CFrame)
        task.wait(0.2)
    end
    if LocalPlayer:GetAttribute("InTrainingZone") ~= true then
        return
    end
    if not uZ() then
        return
    end
    if u0.ActivateDumbell then
        pcall(function()
            u0.ActivateDumbell:Fire()
        end)
    end
end
function fns.fn103()
    local CC = vI()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local function CE(hO)
        if not hO then
            return nil
        end
        for i, child in ipairs(hO:GetChildren()) do
            local Cq = (child:IsA("Tool"))
            if Cq then
                local Cr = child.Name == "-DUMBELL-" or child:GetAttribute("Type") == "Dumbell"
                Cq = Cr
            end
            if Cq then
                return child
            end
        end
        return nil
    end
    local CF = CE(CC) or CE(Backpack)
    return CF
end
function fns.fn164()
    local Character = LocalPlayer.Character
    if Character and Character.Parent then
        return Character
    end
    return nil
end
function fns.fn165(kp)
    local En = kp and true or false
    State.AutoCollect = En
    if not State.AutoCollect then
        State.CarriedThisTrip = 0
    end
end
function fns.fn188()
    vN(vm.Player)
    local MovementGroup = vm.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = vm.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(oS)
        uz.SetWalkSpeedEnabled(oS)
    end)
    Options.WalkSpeed:OnChanged(function(oW)
        uz.SetWalkSpeedValue(oW)
    end)
    Toggles.InfJump:OnChanged(function(oY)
        uz.SetInfJump(oY)
    end)
    Toggles.NoClip:OnChanged(function(o_)
        uz.SetNoClip(o_)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(o1)
        uz.SetInstantProximityPrompt(o1)
    end)
    Toggles.Fly:OnChanged(function(o3)
        uz.SetFly(o3)
    end)
    Options.FlySpeed:OnChanged(function(o5)
        uz.SetFlySpeed(o5)
    end)
end
function fns.fn191(bi, bj)
    local xw = vx(bi)
    local xx = vx(bj)
    if xw <= 0 or xx <= 0 then
        return false
    end
    return xw <= xx
end
function fns.fn197(kn)
    local Eh = kn and true or false
    State.AutoBreakWalls = Eh
end
function fns.fn223()
    local z7 = not u7() and State.CarriedThisTrip <= 0
    if z7 then
        return false
    elseif not u7() then
        State.CarriedThisTrip = 0
        return false
    else
        local z7_1 = uW()
        uJ(uE)
        local z8 = os.clock() + 5
        while true do
            local z9 = vj() and os.clock() < z8
            if z9 then
                local z9_1 = vi()
                if z9_1 and (z9_1.Position - uE.Position).Magnitude > 8 then
                    uJ(uE)
                end
                if not u7() then
                    uH = nil
                    State.HeldUid = nil
                    State.CarriedThisTrip = 0
                    return true
                end
                local z9_2 = uW() > z7_1 and not u7()
                if z9_2 then
                    uH = nil
                    State.HeldUid = nil
                    State.CarriedThisTrip = 0
                    return true
                end
                task.wait(0.1)
                continue
            end
            break
        end
        local z7_2 = not u7()
        if z7_2 then
            uH = nil
            State.HeldUid = nil
            State.CarriedThisTrip = 0
        end
        return z7_2
    end
end
function fns.fn294(k9, la)
    return string.format('<font color="%s">%s</font>', la, uQ(k9))
end
function fns.fn297(kC)
    local EW = kC and true or false
    State.AutoEquipBest = EW
end
local function fn313(kI)
    if type(kI) == "string" then
        State.SellMode = kI
    end
end
local function fn341()
    return us.CoreGui
end
local function fn343(kK)
    local Fb = tonumber(kK) or 10
    State.SellKeepCount = math.clamp(math.floor(Fb), 0, 200)
end
local function fn396()
    gethui = u6
end
local function fn418(dK)
    local zz_1
    local zy_1
    local zw = not dK or not vq(dK)
    if zw then
        return nil
    end
    local Live = uV:FindFirstChild("Live")
    local zx = Live and Live:FindFirstChild("Friends")
    if not zx then
        return nil
    end
    local zx_1 = vi()
    zz_1, zy_1 = nil, nil
    for i, child in ipairs(zx:GetChildren()) do
        if child:IsA("Model") then
            local zw_3 = vC(child)
            if zw_3 == dK then
                local StealPrompt = child:FindFirstChild("StealPrompt", true)
                local zA = child:FindFirstChild("RootPart") or child.PrimaryPart
                local zB = StealPrompt
                if zB then
                    zB = StealPrompt:IsA("ProximityPrompt")
                end
                if zB then
                    zB = StealPrompt.Enabled
                end
                if zB and zA then
                    local zA_1 = zx_1 and (zA.Position - zx_1.Position).Magnitude or math.huge
                    local zw_7 = not zy_1
                    if not zw_7 then
                        zw_7 = zA_1 < zy_1
                    end
                    if zw_7 then
                        zz_1 = child
                        zy_1 = zA_1
                    end
                end
            end
        end
    end
    return zz_1
end
local function fn428(kv)
    local Ey = kv and true or false
    State.AutoHatch = Ey
end
local function fn438(ap)
    local wM = os.clock()
    local wM_2, wM_3
    local wN = ap or 20
    local wN_1, wN_2
    local wO = wM + wN
    while true do
        local wM_1 = vj() and os.clock() < wO
        if wM_1 then
            wM_2, wN_1 = pcall(function()
                return rawget(_G, "_Lib")
            end)
            local wP = wM_2 and type(wN_1) == "table" and wN_1.Network and wN_1.Data
            if wP then
                return wN_1
            end
            if getrenv then
                wM_3, wN_2 = pcall(getrenv)
                local wP_1 = wM_3 and type(wN_2) == "table" and type(wN_2._G) == "table" and type(wN_2._G._Lib) == "table"
                if wP_1 then
                    return wN_2._G._Lib
                end
            end
            task.wait(0.1)
            continue
        end
        break
    end
    return nil
end
local function fn446(iC)
    local Dc = vs()
    local Dd = false
    for k in pairs(Dc) do
        Dd = true
        break
    end
    if not Dd then
        return true
    end
    local Dd_1 = iC or ""
    return Dc[tostring(Dd_1)] == true
end
local function fn515()
    local ze = uD()
    local zg = tonumber(State.CarryLimit) or 1
    local zh = math.floor(zg)
    return math.clamp(zh, 1, ze)
end
local function fn527(cc)
    if not cc then
        return nil
    end
    local yc = uT(cc.Name)
    local yd = type(yc) == "table" and tonumber(yc.CurrentLayer)
    local yd_3, yd_4
    local yc_1 = yd or nil
    local Blocks = cc:FindFirstChild("Blocks")
    local ye = Blocks and Blocks:FindFirstChild("Generated")
    local ye_2, ye_3
    if not ye then
        return nil
    elseif yc_1 then
        local ye_1 = ye:FindFirstChild("Layer_" .. tostring(yc_1))
        local yd_2 = ye_1 and ye_1:IsA("BasePart")
        if yd_2 then
            return ye_1
        end
        ye_2, yd_3 = nil, -1
        for i, child in ipairs(ye:GetChildren()) do
            if child:IsA("BasePart") then
                local yc_4 = tonumber(string.match(child.Name, "^Layer_(%d+)$"))
                if yc_4 and yc_4 >= yd_3 then
                    ye_2 = child
                    yd_3 = yc_4
                end
            end
        end
        return ye_2
    else
        ye_3, yd_4 = nil, -1
        for i, child in ipairs(ye:GetChildren()) do
            if child:IsA("BasePart") then
                local yc_5 = tonumber(string.match(child.Name, "^Layer_(%d+)$"))
                if yc_5 and yc_5 >= yd_4 then
                    ye_3 = child
                    yd_4 = yc_5
                end
            end
        end
        return ye_3
    end
end
local function fn531(kx)
    local EE = kx and true
    local EI = if EE then 1 else 0
    local EG = 3915 * EI + 3723 * (1 - EI)
    local EH = 2427 * EI + 1801 * (1 - EI)
    if not ((EG * 3834 + EH * 1210 + EG * EH) % 16777213 == 10671272) then
        EE = false
    end
    State.AutoClaimIndex = EE
end
local function fn541()
    if not u0.ClaimAllIndex then
        return
    end
    pcall(function()
        u0.ClaimAllIndex:Fire()
    end)
end
local function fn542(eq)
    if not eq or not eq.Parent then
        return false
    end
    local zZ_1 = vC(eq)
    local z_ = not zZ_1 or zZ_1 ~= State.CollectStage or not vq(zZ_1)
    if z_ then
        return false
    end
    local z__1 = eq:FindFirstChild("RootPart") or eq.PrimaryPart
    local z__2 = eq:FindFirstChild("StealPrompt", true)
    if not z__1 or not z__2 then
        return false
    end
    local z1_1 = u7()
    vD(zZ_1, false)
    uJ(CFrame.new(z__1.Position + Vector3.new(0, 3, 0)))
    task.wait(0.2)
    if not vj() then
        return false
    elseif not vq(zZ_1) then
        return false
    else
        vZ(z__2)
        local zZ_2 = os.clock() + 2.5
        while true do
            local z__3 = vj() and os.clock() < zZ_2
            if z__3 then
                if u7() then
                    local z__4 = uR()
                    if z__4 then
                        uH = z__4
                    end
                    if z1_1 then
                        task.wait(0.15)
                    end
                    return true
                end
                local z__5 = vI() and vI():FindFirstChildWhichIsA("Tool")
                local z0_1 = z__5
                if z__5 then
                    z__5 = z0_1:GetAttribute("friendUID")
                end
                if z__5 then
                    uH = z0_1:GetAttribute("friendUID")
                    return true
                end
                task.wait(0.05)
                continue
            end
            break
        end
        return u7()
    end
end
local function fn567(cu)
    local yq = cu and cu:FindFirstChild("Main")
    local yq_1 = vP(cu) or yq
    local yq_2 = not yq_1 or not yq_1:IsA("BasePart")
    if yq_2 then
        return nil
    end
    local yq_3 = Vector3.new(0, 0, 1)
    local yt = yq and yq:IsA("BasePart")
    if yt then
        local yt_1 = Vector3.new(yq.CFrame.LookVector.X, 0, yq.CFrame.LookVector.Z)
        if yt_1.Magnitude > 0.05 then
            yq_3 = yt_1.Unit
        end
    end
    local yr_1 = math.max(3, yq_1.Size.Z * 0.5 + 2.5)
    local yt_2 = yq_1.Position + yq_3 * yr_1 + Vector3.new(0, 2, 0)
    local yq_4 = Vector3.new(yq_1.Position.X, yt_2.Y, yq_1.Position.Z)
    return CFrame.lookAt(yt_2, yq_4), yq_1
end
local function fn569()
    local w5_1
    local w4_1
    w4_1, w5_1 = pcall(function()
        return vB.Data:Get()
    end)
    if w4_1 then
        return w5_1
    end
    return nil
end
local function fn576()
    local zS = uH ~= ""
    local zS_6
    local zT = type(uH) == "string" and zS
    local zT_5
    if zT then
        return uH
    end
    local zS_1 = vI()
    if not zS_1 then
        return nil
    end
    local Tool = zS_1:FindFirstChildWhichIsA("Tool")
    if Tool then
        local attr = Tool:GetAttribute("friendUID")
        local zT_2 = attr ~= ""
        local zU = type(attr) == "string" and zT_2
        if zU then
            uH = attr
            return attr
        end
        local zS_3 = uP()
        if zT_5 then
            local zT_4 = zS_3.Inventory.Friends[1]
            if zS_6 then
                return zT_4.uid
            end
            return nil
        end
        return nil
    end
    local zS_5 = uP()
    zT_5 = zS_5 and zS_5.Inventory and type(zS_5.Inventory.Friends) == "table"
    if zT_5 then
        local zT_6 = zS_5.Inventory.Friends[1]
        zS_6 = zT_6 and type(zT_6.uid) == "string"
        if zS_6 then
            return zT_6.uid
        end
        return nil
    end
    return nil
end
local function fn593(ld, le, lf)
    return string.format("<b>%s</b> %s %s", ld, uy("-", "#5a6070"), uy(le, lf))
end
local function fn642(bS)
    if not bS or bS == "" then
        return false
    end
    vH()
    local xZ = if not vQ(bS) then 1 else 0
    if xZ == 1 then
        return false
    end
    local xZ_1 = if LocalPlayer:GetAttribute("GateAccess_" .. bS) == false then 1 else 0
    if xZ_1 == 1 then
        return false
    end
    return true
end
local function fn658(bO)
    local xS = uT(bO)
    if type(xS) ~= "table" then
        return false
    end
    return xS.Finished == true
end
local function fn669()
    local z4 = uP()
    local z5 = not z4 or type(z4.Inventory) ~= "table" or type(z4.Inventory.Friends) ~= "table"
    if z5 then
        return 0
    end
    return #z4.Inventory.Friends
end
local function fn675(kD)
    local EZ = kD and true
    local E2 = if EZ then 1 else 0
    local E0 = 2387 * E2 + 570 * (1 - E2)
    local E1 = 30 * E2 + 1501 * (1 - E2)
    if not ((E0 * 1003 + E1 * 25 + E0 * E1) % 16777213 == 2466521) then
        EZ = false
    end
    State.AutoSell = EZ
end
local function fn687(kG)
    if type(kG) == "string" then
        State.SellFrom = kG
    end
end
local function fn725(bX)
    vH()
    local x_ = uT(bX)
    if type(x_) ~= "table" then
        return true
    end
    return x_.Finished ~= true
end
local function fn730(cX)
    if not cX then
        return nil
    end
    local yN = va[cX.Name]
    if yN then
        return yN
    end
    local attr = cX:GetAttribute("Zone")
    if type(attr) == "string" then
        return attr
    end
    return nil
end
local function fn738(kS)
    local Fm = type(kS) == "string" and vg[kS]
    if Fm then
        State.BreakThroughStage = kS
    end
end
local function fn743()
    if not u0.EquipBest then
        return
    end
    pcall(function()
        u0.EquipBest:Fire()
    end)
end
local function fn761(li, lj)
    local Fr = false
    if vy(setclipboard) then
        Fr = pcall(setclipboard, li)
    elseif vy(toclipboard) then
        Fr = pcall(toclipboard, li)
    end
    if Fr then
        local Fr_1 = lj or "Copied"
        Library:Notify(Fr_1, 2)
    else
        Library:Notify("Clipboard unavailable", 2)
    end
end
local function fn773()
    return vB.Database.UpgradeTracks and vB.Database.UpgradeTracks.Carry
end
local function fn777()
    local y8 = u1()
    if not y8 then
        return 1
    end
    local y9 = (tonumber(y8.MaxLevel))
    local zd = if y9 then 1 else 0
    local zb = 3633 * zd + 194 * (1 - zd)
    local zc = 412 * zd + 2976 * (1 - zd)
    if not ((zb * 3145 + zc * 3059 + zb * zc) % 16777213 == 14182889) then
        y9 = 0
    end
    local y8_1 = y9
    return uD({ CarryLevel = y8_1 })
end
local function fn782(jp)
    vH()
    for i, v in ipairs(uL) do
        local DX = u9(v, jp) and uG(v)
        if DX then
            return v
        end
    end
    return nil
end
local function fn794(lo)
    local DiscordGroup = lo:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = vt,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn825(bJ)
    local xQ = uS[bJ]
    if type(xQ) == "table" then
        return xQ
    end
    return vH()[bJ]
end
local function fn826(b8)
    local ya = vi()
    if not ya then
        return false
    end
    ya.AssemblyLinearVelocity = Vector3.zero
    ya.AssemblyAngularVelocity = Vector3.zero
    ya.CFrame = b8
    return true
end
local function fn862(kw)
    local EB = kw and true or false
    State.AutoRebirth = EB
end
local function fn869()
    local xd = vI()
    local xe = xd and xd:FindFirstChild("HumanoidRootPart")
    return xe
end
local function fn886()
    return LocalPlayer:GetAttribute("holdingFriend") == true
end
local function fn897(iI)
    if type(iI) ~= "table" then
        return 0
    end
    local Dj = Friends and Friends[iI.id]
    local Dk = Dj
    if Dj then
        Dj = Dk.MoneyPerSecond
    end
    return Dj or 0
end
local function fn918(b1, b2)
    local x1 = uN(b1)
    if not x1 then
        return
    end
    for i, descendant in ipairs(x1:GetDescendants()) do
        if descendant:IsA("BasePart") then
            local x2 = b2 and true or false
            descendant.CanCollide = x2
        end
    end
end
local function fn936(kr)
    local Ep = vJ()
    local Es = tonumber(kr) or 1
    State.CarryLimit = math.clamp(math.floor(Es), 1, Ep)
end
local function fn958(k7)
    return (tostring(k7):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn965(bx)
    local xJ = uV:FindFirstChild("Map") and uV.Map:FindFirstChild("Gates")
    if not xJ then
        return nil
    end
    return xJ:FindFirstChild(bx)
end
local function fn966(kE)
    if type(kE) == "string" then
        State.UpgradeTarget = kE
    end
end
local function fn974()
    local C3 = {}
    local SellRarities = State.SellRarities
    if type(SellRarities) ~= "table" then
        return C3
    end
    for k, v in pairs(SellRarities) do
        if v == true then
            C3[tostring(k)] = true
        else
            local C4_1 = type(k) == "number" and type(v) == "string"
            if C4_1 then
                C3[v] = true
            end
        end
    end
    return C3
end
local function fn1034()
    return not uz.Unloaded
end
local function fn1041(S)
    local wK = typeof(cloneref) == "function" and typeof(S) == "Instance"
    if wK then
        return cloneref(S)
    end
    return S
end
local function fn1061(dw)
    local zj = not dw
    local zp = if zj then 1 else 0
    local zn = 2566 * zp + 793 * (1 - zp)
    local zo = 131 * zp + 3452 * (1 - zp)
    if not ((zn * 698 + zo * 3139 + zn * zo) % 16777213 == 2538423) then
        zj = not vq(dw)
    end
    if zj then
        return 0
    end
    local Live = uV:FindFirstChild("Live")
    local zk = Live and Live:FindFirstChild("Friends")
    if not zk then
        return 0
    end
    local zk_1 = 0
    for i, child in ipairs(zk:GetChildren()) do
        local zj_3 = child:IsA("Model") and vC(child) == dw
        if zj_3 then
            local StealPrompt = child:FindFirstChild("StealPrompt", true)
            local zl = StealPrompt and StealPrompt:IsA("ProximityPrompt") and StealPrompt.Enabled
            if zl then
                zk_1 += 1
            end
        end
    end
    return zk_1
end
local function fn1066()
    local xg = vI()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if not xg or not Backpack then
        return
    end
    for i, child in ipairs(xg:GetChildren()) do
        if child:IsA("Tool") then
            child.Parent = Backpack
        end
    end
end
local function fn1072(bf)
    return vg[bf] or 0
end
local function fn1075(V)
    return type(V) == "function"
end
local function fn1078(gM)
    local Bw = gM
    local Bx = {}
    if Bw then
        Bw = type(gM.UnlockedDumbells) == "table"
    end
    if Bw then
        for i, v in ipairs(gM.UnlockedDumbells) do
            Bx[v] = true
        end
    end
    return Bx
end
local function fn1081(cH, cI)
    if not cH or not cI then
        return false
    end
    local yv_1 = Vector3.new(cI.Position.X - cH.Position.X, 0, cI.Position.Z - cH.Position.Z)
    if yv_1.Magnitude < 0.5 then
        return false
    end
    local yw_1 = Vector3.new(cH.CFrame.LookVector.X, 0, cH.CFrame.LookVector.Z)
    if yw_1.Magnitude < 0.05 then
        return false
    end
    return yw_1.Unit:Dot(yv_1.Unit) >= 0.75
end
local function fn1104(kt)
    local Ev = kt and true or false
    State.AutoPlace = Ev
end
local function fn1105(kz)
    local EN = kz and true or false
    State.AutoBuyUpgrades = EN
end
local function fn1106()
    local UpgradeTarget = State.UpgradeTarget
    if UpgradeTarget == "Carry" or UpgradeTarget == "Both" then
        uX("Carry")
    end
    if UpgradeTarget == "Speed" or UpgradeTarget == "Both" then
        uX("Speed")
    end
end
local function fn1111()
    local Cm = vL()
    if not Cm then
        return nil
    end
    local LevelUpTouchZone = Cm:FindFirstChild("LevelUpTouchZone")
    if not LevelUpTouchZone then
        return nil
    end
    local Corners = LevelUpTouchZone:FindFirstChild("Corners")
    local Co = Corners and Corners:FindFirstChild("Zone")
    local Cm_2 = Co
    if Co then
        Co = Cm_2:IsA("BasePart")
    end
    if Co then
        return Cm_2
    end
    return LevelUpTouchZone:FindFirstChildWhichIsA("BasePart", true)
end
local function fn1201(ky)
    local EK = ky and true or false
    State.AutoBuyDumbells = EK
end
local function fn1213(kO)
    local Fh = type(kO) == "string" and vg[kO]
    if Fh then
        State.CollectStage = kO
    end
end
local function fn1238(kA)
    local EQ = kA and true or false
    State.AutoTrain = EQ
end
local function fn1272()
    local AX_3
    local AW_4
    local CollectStage = State.CollectStage
    local AS_2
    local AT = vc()
    vH()
    local A3 = if not vq(CollectStage) then 1 else 0
    if A3 == 1 then
        local AU_1 = (u7())
        local A0_1 = if AU_1 then 1 else 0
        local AZ_1 = 1011 * A0_1 + 1006 * (1 - A0_1)
        local A__1 = 3288 * A0_1 + 1924 * (1 - A0_1)
        if not ((AZ_1 * 34 + A__1 * 3878 + AZ_1 * A__1) % 16777213 == 16109406) then
            AU_1 = State.CarriedThisTrip > 0
        end
        if AU_1 then
            return vY()
        end
        return false
    end
    local AU_2 = uu(CollectStage)
    local AV = (u7())
    local AV_4, AV_5
    local A6 = if AV then 1 else 0
    local A4 = 2038 * A6 + 2952 * (1 - A6)
    local A5 = 795 * A6 + 1163 * (1 - A6)
    if not ((A4 * 521 + A5 * 4083 + A4 * A5) % 16777213 == 5927993) then
        AV = State.CarriedThisTrip > 0
    end
    if AV then
        local AV_1 = State.CarriedThisTrip >= AT
        local AW_1 = AU_2 <= 0
        local AX_1 = AV_1
        local A9 = if AX_1 then 1 else 0
        local A7 = 3572 * A9 + 1808 * (1 - A9)
        local A8 = 3186 * A9 + 3814 * (1 - A9)
        if not ((A7 * 128 + A8 * 1622 + A7 * A8) % 16777213 == 228087) then
            AX_1 = AW_1
        end
        if AX_1 then
            return vY()
        elseif State.CarriedThisTrip >= AT then
            if u7() then
                return vY()
            end
            State.CarriedThisTrip = 0
            return false
        else
            local AV_2 = vK(CollectStage)
            if not AV_2 then
                local AW_2 = u7() or State.CarriedThisTrip > 0
                if AW_4 then
                    return vY()
                end
                return false
            elseif vC(AV_4) ~= CollectStage then
                return false
            else
                u7()
                u3(AV_2)
                if not AX_3 then
                    if AV_5 then
                        return vY()
                    end
                    return false
                end
                State.CarriedThisTrip = math.min(AT, State.CarriedThisTrip + 1)
                uu(CollectStage)
                if AS_2 then
                    return vY()
                end
                return true
            end
        end
    elseif State.CarriedThisTrip >= AT then
        if u7() then
            return vY()
        end
        State.CarriedThisTrip = 0
        return false
    else
        AV_4 = vK(CollectStage)
        if not AV_4 then
            AW_4 = u7() or State.CarriedThisTrip > 0
            if AW_4 then
                return vY()
            end
            return false
        elseif vC(AV_4) ~= CollectStage then
            return false
        else
            local AW_5 = u7()
            AX_3 = u3(AV_4)
            if not AX_3 then
                AV_5 = AW_5
                local A0_3 = if AV_5 then 1 else 0
                local AZ_3 = 3936 * A0_3 + 1487 * (1 - A0_3)
                local A__3 = 2502 * A0_3 + 3597 * (1 - A0_3)
                if not ((AZ_3 * 3273 + A__3 * 1956 + AZ_3 * A__3) % 16777213 == 10847099) then
                    AV_5 = State.CarriedThisTrip > 0
                end
                if AV_5 then
                    return vY()
                end
                return false
            end
            State.CarriedThisTrip = math.min(AT, State.CarriedThisTrip + 1)
            local AU_4 = uu(CollectStage)
            AS_2 = State.CarriedThisTrip >= AT or AU_4 <= 0
            if AS_2 then
                return vY()
            end
            return true
        end
    end
end
local function fn1305()
    uz.Track(function()
        State.AutoBreakWalls = false
        State.AutoCollect = false
        State.AutoPlace = false
        State.AutoHatch = false
        State.AutoRebirth = false
        State.AutoClaimIndex = false
        State.AutoBuyDumbells = false
        State.AutoBuyUpgrades = false
        State.AutoTrain = false
        State.AutoUpgradeFarm = false
        State.AutoEquipBest = false
        State.AutoSell = false
        State.CarriedThisTrip = 0
    end)
    task.spawn(function()
        while vj() do
            local D4 = State.AutoBreakWalls and not u7()
            if D4 then
                local D4_1 = vz(State.BreakThroughStage)
                if D4_1 then
                    uB(D4_1)
                end
            end
            task.wait(0.35)
        end
    end)
    task.spawn(function()
        while vj() do
            if State.AutoCollect then
                uA()
            end
            task.wait(0.35)
        end
    end)
    task.spawn(function()
        while vj() do
            local D7 = State.AutoPlace and not u7() and vb()
            if D7 then
                vV()
            end
            task.wait(0.4)
        end
    end)
    task.spawn(function()
        while true do
            local Ec = if vj() then 1 else 0
            if Ec == 1 then
                if State.AutoHatch then
                    vU()
                end
                task.wait(0.75)
                continue
            end
            break
        end
    end)
    task.spawn(function()
        while vj() do
            local Ed = State.AutoTrain and not u7()
            if Ed then
                uM()
            end
            task.wait(0.55)
        end
    end)
    task.spawn(function()
        while vj() do
            if State.AutoBuyDumbells then
                vn()
            end
            if State.AutoBuyUpgrades then
                uO()
            end
            if State.AutoUpgradeFarm then
                vf()
            end
            if State.AutoEquipBest then
                uI()
            end
            if State.AutoSell then
                vr()
            end
            if State.AutoRebirth then
                vS()
            end
            if State.AutoClaimIndex then
                uU()
            end
            task.wait(1.25)
        end
    end)
end
us = nil
Library = nil
uu = nil
uv = nil
ux = nil
uy = nil
uz = nil
uA = nil
uB = nil
uD = nil
uE = nil
uG = nil
uH = nil
uI = nil
uJ = nil
uL = nil
uM = nil
uN = nil
uO = nil
uP = nil
uQ = nil
uR = nil
uS = nil
uT = nil
uU = nil
uV = nil
uW = nil
uX = nil
uZ = nil
u0 = nil
u1 = nil
u3 = nil
u6 = nil
u7 = nil
u9 = nil
va = nil
vb = nil
vc = nil
local uw, uC, uF, uK, uY, u_, u2, u4, u5, u8, vd, ve
vf = nil
vg = nil
vi = nil
vj = nil
vm = nil
vn = nil
Friends = nil
vp = nil
vq = nil
vr = nil
vs = nil
vt = nil
vx = nil
vy = nil
vz = nil
Options = nil
vB = nil
vC = nil
vD = nil
Toggles = nil
vG = nil
vH = nil
vI = nil
vJ = nil
vK = nil
vL = nil
vN = nil
vO = nil
vP = nil
vQ = nil
vR = nil
vS = nil
LocalPlayer = nil
vU = nil
vV = nil
vX = nil
vY = nil
vZ = nil
State = nil
local vh, vk, vl, vu, vv, SharedVariables, vE, SaveManager, ThemeManager
local v4, wc
if not game:IsLoaded() then
    game.Loaded:Wait()
end
us, LocalPlayer, vt, vl, vd, u6 = nil, nil, nil, nil, nil, nil
us = {}
us.Players = game:GetService("Players")
us.ReplicatedStorage = game:GetService("ReplicatedStorage")
us.RunService = game:GetService("RunService")
us.UserInputService = game:GetService("UserInputService")
us.VirtualUser = game:GetService("VirtualUser")
us.HttpService = game:GetService("HttpService")
us.TeleportService = game:GetService("TeleportService")
us.Workspace = game:GetService("Workspace")
us.Lighting = game:GetService("Lighting")
us.Stats = game:GetService("Stats")
us.CoreGui = game:GetService("CoreGui")
LocalPlayer = us.Players.LocalPlayer
local v3 = "OuroborosPlus1StrengthForEggs"
local v2 = "v0.8"
local v1 = "+1 Strength for Eggs"
vt = "https://discord.gg/synapsex"
vl = "https://rscripts.net/@Ouroboros"
vd = "https://ouroboros-hub-rbx.web.app/"
u6 = fn341
if getgenv then
    getgenv().gethui = u6
end
uz, State, u5, uV, uL, uE, uv, vX, vO, vG, vB, SharedVariables, Friends, vg, va, u0, uS, uH, Library, ThemeManager, SaveManager, Toggles, Options, vm, ve, u8, u_, u2, vv, v4, wc, vy, vj, uF, uP, vI, vi, uK, vx, u9, vL, uN, vH, uT, vQ, vq, uG, vD, uJ, vP, vk, vh, uB, vC, u1, uD, vJ, vc, uu, vK, vZ, u7, uR, u3, uW, vY, vu, vb, vV, uA, uI, vU, vS, uU, uw, vn, uX, uO, vR, uY, uZ, uM, vf, vs, ux, vp, uC, vr, vz, uQ, uy, vE, u4, vN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not vP or false) and (vr or vP) and (not vP or false or false and vP) or not ((not vP or false) and (vr or vP) and (not vP or false or false and vP)) then
    pcall(fn396)
    v4 = function(o)
        local wD
        local wB
        local wC
        wB = nil
        wC = nil
        wD = nil
        local wE = o ~= ""
        local wF = type(o) == "string" and wE
        assert(wF, "Namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        wD = getgenv()
        assert(type(wD) == "table", "getgenv did not return a table")
        local wE_2 = wD[o]
        if wE_2 ~= nil then
            local wF_2 = type(wE_2) == "table" and type(wE_2.Unload) == "function"
            assert(wF_2, "Namespace is occupied")
            wE_2.Unload()
            assert(wD[o] == nil, "Previous instance did not release its namespace")
        end
        wB = {}
        wC = { State = {}, Unloaded = false }
        wC.Track = function(u)
            assert(type(u) == "function", "Cleanup must be callable")
            if wC.Unloaded then
                u()
            else
                table.insert(wB, u)
            end
            return u
        end
        wC.Unload = function()
            local wu_2
            local wt_2
            if wC.Unloaded then
                return
            end
            wC.Unloaded = true
            local wr = {}
            local wy = #wB
            local wx = -1
            while false and wy <= 1 or true and wy >= 1 do
                local wz = wy
                local ws_2 = table.remove(wB, wz)
                wt_2, wu_2 = pcall(ws_2)
                if not wt_2 then
                    table.insert(wr, tostring(wu_2))
                end
                wy += wx
            end
            table.clear(wC.State)
            if #wr > 0 then
                error("Cleanup incomplete: " .. table.concat(wr, "; "), 0)
            end
            if wD[o] == wC then
                wD[o] = nil
            end
        end
        wD[o] = wC
        return wC
    end
else
    pcall(fn396)
    uG = function(o)
        local wD
        local wB
        local wC
        wB = nil
        wC = nil
        wD = nil
        local wE = o ~= ""
        local wF = type(o) == "string" and wE
        assert(wF, "Namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        wD = getgenv()
        assert(type(wD) == "table", "getgenv did not return a table")
        local wE_1 = wD[o]
        if wE_1 ~= nil then
            local wF_1 = type(wE_1) == "table" and type(wE_1.Unload) == "function"
            assert(wF_1, "Namespace is occupied")
            wE_1.Unload()
            assert(wD[o] == nil, "Previous instance did not release its namespace")
        end
        wB = {}
        wC = { State = {}, Unloaded = false }
        wC.Track = function(u)
            assert(type(u) == "function", "Cleanup must be callable")
            if wC.Unloaded then
                u()
            else
                table.insert(wB, u)
            end
            return u
        end
        wC.Unload = function()
            local wu_1
            local wt_1
            if wC.Unloaded then
                return
            end
            wC.Unloaded = true
            local wr = {}
            local wy = #wB
            local wx = -1
            while false and wy <= 1 or true and wy >= 1 do
                local wz = wy
                local ws_1 = table.remove(wB, wz)
                wt_1, wu_1 = pcall(ws_1)
                if not wt_1 then
                    table.insert(wr, tostring(wu_1))
                end
                wy += wx
            end
            table.clear(wC.State)
            if #wr > 0 then
                error("Cleanup incomplete: " .. table.concat(wr, "; "), 0)
            end
            if wD[o] == wC then
                wD[o] = nil
            end
        end
        wD[o] = wC
        return wC
    end
end
if ((not uz or uz) and (Friends and uz) or (not Friends and not uz or (uz or Friends))) and (not Friends or uz or (not Friends or uz) or (Friends and not Friends or not Friends and Friends)) and (Friends or Friends or Friends and not Friends or (not uz or uz) and (Friends or uz) or ((not Friends or Friends) and (not Friends or not uz) or (uz or Friends) and (not uz or Friends))) or not (((not uz or uz) and (Friends and uz) or (not Friends and not uz or (uz or Friends))) and (not Friends or uz or (not Friends or uz) or (Friends and not Friends or not Friends and Friends)) and (Friends or Friends or Friends and not Friends or (not uz or uz) and (Friends or uz) or ((not Friends or Friends) and (not Friends or not uz) or (uz or Friends) and (not uz or Friends)))) then
    wc = function(J, K)
        local wI = type(J) == "table" and type(J.Track) == "function"
        assert(wI, "FeatureAPI required")
        local wI_2 = type(K) == "table" and type(K.OnUnload) == "function"
        assert(wI_2, "UI library required")
        assert(type(K.Unload) == "function", "UI unload required")
        J.Track(function()
            if not K.Unloaded then
                K:Unload()
            end
        end)
        K:OnUnload(function()
            J.Unload()
        end)
    end
else
    vR = function(J, K)
        local wI = type(J) == "table" and type(J.Track) == "function"
        assert(wI, "FeatureAPI required")
        local wI_1 = type(K) == "table" and type(K.OnUnload) == "function"
        assert(wI_1, "UI library required")
        assert(type(K.Unload) == "function", "UI unload required")
        J.Track(function()
            if not K.Unloaded then
                K:Unload()
            end
        end)
        K:OnUnload(function()
            J.Unload()
        end)
    end
end
uz = v4(v3)
State = uz.State
vy = fn1075
vj = fn1034
u5 = fn1041(us.ReplicatedStorage)
uV = fn1041(us.Workspace)
uL = { "Forest", "Beach", "Desert", "Arctic", "Volcano", "Void", "Cloudlands", "Deep Ocean" }
uE = CFrame.new(219, 3, 451)
uv = { "Carry", "Speed", "Both" }
vX = { "Inventory", "Plot", "Both" }
vO = { "Sell All", "Keep Best N" }
vG = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Brainrot God",
    "Secret",
    "Cosmic",
    "Divine",
    "Eternal",
    "Exclusive",
    "OG"
}
State.AutoBreakWalls = false
State.AutoCollect = false
State.AutoPlace = false
State.AutoHatch = false
State.AutoRebirth = false
State.AutoClaimIndex = false
State.AutoBuyDumbells = false
State.AutoBuyUpgrades = false
State.AutoTrain = false
State.AutoUpgradeFarm = false
State.AutoEquipBest = false
State.AutoSell = false
State.UpgradeTarget = "Both"
State.SellFrom = "Inventory"
State.SellMode = "Keep Best N"
State.SellKeepCount = 10
State.SellRarities = {}
State.CollectStage = "Forest"
State.BreakThroughStage = "Forest"
State.CarryLimit = 1
State.CarriedThisTrip = 0
State.HeldUid = nil
State.InstantPrompt = false
State.WalkSpeedEnabled = false
State.WalkSpeedValue = 32
State.InfJump = false
State.NoClip = false
State.Fly = false
State.FlySpeed = 60
vB = nil
SharedVariables = nil
Friends = nil
vg = {}
va = {}
u0 = {}
uS = {}
uH = nil
uF = fn438
local function v5()
    local connection
    vB = uF(25)
    assert(vB, "Game library not ready")
    SharedVariables = require(u5.SharedModules.Shared.SharedVariables)
    Friends = vB.Database.Friends
    vg = SharedVariables.ZONE_ORDERS or {}
    table.clear(va)
    for k, v in pairs(Friends) do
        local wW_1 = type(v) == "table" and type(v.Zone) == "string" and type(v.Name) == "string"
        if wW_1 then
            va[v.Name] = v.Zone
            if not string.find(v.Name, "Egg", 1, true) then
                va[v.Name .. " Egg"] = v.Zone
            end
        end
    end
    u0.DamageGate = vB.Network.new("Damage Gate", "RemoteEvent")
    u0.GateStates = vB.Network.new("Gate States", "RemoteFunction")
    u0.PlaceFriend = vB.Network.new("Place Friend", "RemoteEvent")
    u0.OpenLuckyBlock = vB.Network.new("Open Lucky Block", "RemoteEvent")
    u0.Rebirth = vB.Network.new("Rebirth", "RemoteEvent")
    u0.ClaimAllIndex = vB.Network.new("Claim All Index Rewards", "RemoteFunction")
    u0.BuyDumbell = vB.Network.new("Buy Dumbell", "RemoteEvent")
    u0.EquipDumbell = vB.Network.new("Equip Dumbell", "RemoteEvent")
    u0.ActivateDumbell = vB.Network.new("Activate Dumbell", "RemoteEvent")
    u0.BuyUpgrade = vB.Network.new("Buy Upgrade", "RemoteEvent")
    u0.PurchaseFloor = vB.Network.new("Purchase Floor", "RemoteFunction")
    u0.SellInventory = vB.Network.new("Sell Friend From Inventory", "RemoteEvent")
    u0.SellAllInventory = vB.Network.new("Sell All Friends", "RemoteEvent")
    u0.SellStand = vB.Network.new("Sell Friend From Stand", "RemoteEvent")
    u0.EquipBest = vB.Network.new("Equip Best", "RemoteEvent")
    u0.HoldingFriend = vB.Network.new("Holding Friend", "RemoteEvent")
    local wW_2 = u0.DamageGate and u0.PlaceFriend and u0.OpenLuckyBlock and u0.Rebirth
    assert(wW_2, "Missing remotes")
    if u0.HoldingFriend and u0.HoldingFriend.Connect then
        connection = u0.HoldingFriend:Connect(function(aN, aO)
            local wR = aN and type(aO) == "string"
            if wR and aO ~= "" then
                uH = aO
                State.HeldUid = aO
            elseif not aN then
                uH = nil
                State.HeldUid = nil
            end
        end)
        uz.Track(function()
            pcall(function()
                connection:Disconnect()
            end)
        end)
    end
end
v5()
uP = fn569
vI = fns.fn164
vi = fn869
uK = fn1066
vx = fn1072
u9 = fns.fn191
vL = fns.fn11
uN = fn965
vH = fns.fn31
uT = fn825
vQ = fn658
vq = fn642
uG = fn725
vD = fn918
uJ = fn826
vP = fn527
vk = fn567
vh = fn1081
uB = function(cM)
    local yB_1
    local yA_1
    if not u0.DamageGate then
        return
    end
    uK()
    local yy = uN(cM)
    local yz = vi()
    yA_1, yB_1 = vk(yy)
    if yz and yA_1 and yB_1 then
        local Magnitude = (yz.Position - yA_1.Position).Magnitude
        local yC_1 = Magnitude > 3.5 or not vh(yz, yB_1)
        if yC_1 then
            uJ(yA_1)
        else
            yz.CFrame = CFrame.lookAt(yz.Position, Vector3.new(yB_1.Position.X, yz.Position.Y, yB_1.Position.Z))
        end
    end
    pcall(function()
        u0.DamageGate:Fire(cM)
    end)
end
vC = fn730
u1 = fn773
uD = function(c4)
    local yU, yV
    local yX_1
    yU = u1()
    if not yU then
        return 1
    end
    local yW = c4 or uP()
    local yW_1
    yV = yW
    if not yV then
        return 1
    end
    yW_1, yX_1 = pcall(function()
        return vB.Shared.getUpgradeStatValue(yU, yV)
    end)
    local yY = yW_1 and tonumber(yX_1)
    local yW_2 = yY
    local y4 = if yW_2 then 1 else 0
    local y2 = 2486 * y4 + 2404 * (1 - y4)
    local y3 = 285 * y4 + 2776 * (1 - y4)
    if not ((y2 * 3391 + y3 * 2694 + y2 * y3) % 16777213 == 9906326) then
        yW_2 = tonumber(yV.CarryLevel)
    end
    local yX_2 = yW_2 or 0
    local max = math.max
    local yY_1 = (tonumber(yU.DisplayOffset))
    local y7 = if yY_1 then 1 else 0
    local y5 = 3560 * y7 + 2734 * (1 - y7)
    local y6 = 1854 * y7 + 2231 * (1 - y7)
    if not ((y5 * 3827 + y6 * 2972 + y5 * y6) % 16777213 == 8957235) then
        yY_1 = 0
    end
    return max(1, yX_2 + yY_1)
end
vJ = fn777
vc = fn515
uu = fn1061
vK = fn418
vZ = function(d7)
    local zN = not d7 or not d7:IsA("ProximityPrompt")
    if zN then
        return false
    end
    local zR = if vy(fireproximityprompt) then 1 else 0
    if zR == 1 then
        local zN_1 = pcall(fireproximityprompt, d7)
        if zN_1 then
            return true
        end
        local zN_2 = pcall(function()
            d7:InputHoldBegin()
            task.wait(math.max(d7.HoldDuration, 0.05) + 0.05)
            d7:InputHoldEnd()
        end)
        return zN_2
    end
    local zN_3 = pcall(function()
        d7:InputHoldBegin()
        task.wait(math.max(d7.HoldDuration, 0.05) + 0.05)
        d7:InputHoldEnd()
    end)
    return zN_3
end
u7 = fn886
uR = fn576
u3 = fn542
uW = fn669
vY = fns.fn223
vu = function(e2)
    local Aj = vI()
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    local function Al(e8)
        local Af = not e8 or not e8:IsA("Tool")
        if Af then
            return false
        end
        local attr = e8:GetAttribute("friendUID")
        if e2 then
            return attr == e2
        end
        local Ag = attr ~= ""
        local Ah = type(attr) == "string" and Ag
        return Ah
    end
    if Aj then
        for i, child in ipairs(Aj:GetChildren()) do
            if Al(child) then
                return child
            end
        end
    end
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            if Al(child) then
                return child
            end
        end
    end
    return nil
end
vb = fns.fn24
vV = function()
    local AH, AI, AJ
    if u7() then
        return false
    end
    local AK = vb()
    if not AK then
        return false
    end
    local AL = vL()
    local AM = AL and AL:FindFirstChild("Base")
    local AM_1 = not AM or not AM:IsA("BasePart")
    if AM_1 then
        return false
    end
    local AM_2 = vu(AK) or vu(nil)
    local AG = AM_2
    local AF = vI()
    if AG and AF and AG.Parent ~= AF then
        pcall(function()
            AG.Parent = AF
        end)
        task.wait(0.1)
    end
    local AM_4 = AG
    AI = AK
    if AM_4 then
        AM_4 = AG:GetAttribute("friendUID")
    end
    if AM_4 then
        AI = AG:GetAttribute("friendUID")
    end
    uJ(AM.CFrame * CFrame.new(0, 5, 0))
    task.wait(0.2)
    if not vj() then
        return false
    end
    local CFrame = AM.CFrame
    local AM_5 = vi() and vi().Position
    local AN = AM_5 or AM.Position
    local AM_6 = CFrame:PointToObjectSpace(AN)
    AH = math.clamp(AM_6.X, -AM.Size.X * 0.35, AM.Size.X * 0.35)
    AJ = math.clamp(AM_6.Z, -AM.Size.Z * 0.35, AM.Size.Z * 0.35)
    local AK_2 = uW()
    pcall(function()
        u0.PlaceFriend:Fire(AI, AH, AJ)
    end)
    local AL_2 = os.clock() + 2.5
    while true do
        local AM_7 = vj() and os.clock() < AL_2
        if AM_7 then
            if uW() < AK_2 then
                return true
            end
            task.wait(0.05)
            continue
        end
        break
    end
    return uW() < AK_2
end
uA = fn1272
uI = fn743
vU = function()
    local Bb = uP()
    local Bc = not Bb
    local Bh = if Bc then 1 else 0
    local Bf = 2551 * Bh + 651 * (1 - Bh)
    local Bg = 3664 * Bh + 1598 * (1 - Bh)
    if not ((Bf * 1208 + Bg * 223 + Bf * Bg) % 16777213 == 13245544) then
        Bc = type(Bb.PlotFriends) ~= "table"
    end
    if Bc then
        return
    end
    local Bc_1 = os.time()
    for k, v in pairs(Bb.PlotFriends) do
        local Bl = k
        if not vj() then
            return
        end
        local Bb_1 = type(v) == "table" and v.incubating
        if Bb_1 then
            if (v.finishTime or 0) <= Bc_1 then
                pcall(function()
                    u0.OpenLuckyBlock:Fire(Bl)
                end)
                task.wait(0.15)
            end
        end
    end
end
vS = fns.fn57
uU = fn541
uw = fn1078
vn = function()
    local id
    local BM_2
    local BJ = uP()
    if not BJ or not u0.BuyDumbell then
        return
    end
    local BK_1 = uw(BJ)
    local BL = {}
    for k, v in pairs(vB.Database.Dumbells) do
        local BM_1 = type(v) == "table" and v.Price and v.RobuxOnly ~= true and v.DisplayInShop ~= false
        if BM_1 then
            BL[#BL + 1] = { id = k, price = v.Price, name = v.Name }
        end
    end
    table.sort(BL, function(g2, g3)
        return g2.price < g3.price
    end)
    id, BM_2 = nil, -1
    for i, v in ipairs(BL) do
        if BK_1[v.id] and v.price > BM_2 then
            id = v.id
            BM_2 = v.price
        end
    end
    for i, v in ipairs(BL) do
        local B3 = v
        local BL_1 = not BK_1[B3.id]
        if BL_1 then
            BL_1 = (BJ.Cash or 0) >= B3.price
        end
        if BL_1 then
            pcall(function()
                u0.BuyDumbell:Fire(B3.id)
            end)
            task.wait(0.2)
            if u0.EquipDumbell then
                pcall(function()
                    u0.EquipDumbell:Fire(B3.id)
                end)
            end
            return
        end
    end
    if id and BJ.EquippedDumbell ~= id and u0.EquipDumbell then
        pcall(function()
            u0.EquipDumbell:Fire(id)
        end)
    end
end
uX = function(hk)
    local B7 = uP()
    if not B7 or not u0.BuyUpgrade then
        return
    end
    local B8_1 = vB.Database.UpgradeTracks and vB.Database.UpgradeTracks[hk]
    if not B8_1 then
        return
    end
    local B8_2 = vB.Shared.getNextUpgradePrice(B8_1, B7)
    local B9_1 = type(B8_2) == "number" and (B7.Cash or 0) >= B8_2
    if B9_1 then
        pcall(function()
            u0.BuyUpgrade:Fire(hk)
        end)
    end
end
uO = fn1106
vR = fn1111
uY = fns.fn103
uZ = function()
    local CI
    local CH
    CH = nil
    CI = nil
    local CJ = vI()
    local CK = CJ and CJ:FindFirstChildOfClass("Humanoid")
    CH = CK
    local CK_1 = not CH
    local CL = not CJ
    local CQ = if CL then 1 else 0
    local CO = 650 * CQ + 1545 * (1 - CQ)
    local CP = 3414 * CQ + 688 * (1 - CQ)
    if not ((CO * 180 + CP * 1207 + CO * CP) % 16777213 == 6456798) then
        CL = CK_1
    end
    if CL then
        return false
    end
    local Tool = CJ:FindFirstChildWhichIsA("Tool")
    local CL_1 = Tool
    if CL_1 then
        local CM = Tool.Name == "-DUMBELL-" or Tool:GetAttribute("Type") == "Dumbell"
        CL_1 = CM
    end
    if CL_1 then
        return true
    end
    CI = uY()
    if not CI then
        return false
    end
    pcall(function()
        CH:EquipTool(CI)
    end)
    task.wait(0.1)
    return CJ:FindFirstChildWhichIsA("Tool") ~= nil
end
uM = fns.fn92
vf = function()
    local CW
    local CX = uP()
    if not CX or not u0.PurchaseFloor then
        return
    end
    CW = (CX.BaseLevel or 0) + 1
    local CY_2 = vB.Database.BaseLevelPrices and vB.Database.BaseLevelPrices[CW]
    if type(CY_2) ~= "number" then
        return
    end
    local CY_3 = CX.Cash
    local C2 = if CY_3 then 1 else 0
    local C0 = 2780 * C2 + 1237 * (1 - C2)
    local C1 = 2196 * C2 + 2053 * (1 - C2)
    if not ((C0 * 1007 + C1 * 414 + C0 * C1) % 16777213 == 9813484) then
        CY_3 = 0
    end
    if CY_3 < CY_2 then
        return
    end
    pcall(function()
        u0.PurchaseFloor:Fire(CW)
    end)
end
vs = fn974
ux = fn446
vp = fn897
uC = fns.fn75
vr = function()
    local DH = uC(State.SellFrom)
    if #DH == 0 then
        return
    end
    if State.SellMode == "Sell All" and State.SellFrom == "Inventory" then
        local DI_1 = vs()
        local DJ_1 = false
        for k in pairs(DI_1) do
            DJ_1 = true
            break
        end
        local DI_2 = not DJ_1
        if DI_2 ~= false then
            DI_2 = u0.SellAllInventory
        end
        if DI_2 then
            pcall(function()
                u0.SellAllInventory:Fire()
            end)
            return
        end
    end
    table.sort(DH, function(jc, jd)
        return jc.mps > jd.mps
    end)
    local DI_3 = 0
    if State.SellMode == "Keep Best N" then
        local max = math.max
        local DL = tonumber(State.SellKeepCount) or 0
        DI_3 = max(0, math.floor(DL))
    end
    for i, v in ipairs(DH) do
        local DW = v
        if not (i <= DI_3) then
            if not vj() then
                return
            end
            if DW.from == "Inventory" and u0.SellInventory then
                pcall(function()
                    u0.SellInventory:Fire(DW.uid)
                end)
            else
                if DW.from == "Plot" and u0.SellStand then
                    pcall(function()
                        u0.SellStand:Fire(DW.uid)
                    end)
                end
            end
            task.wait(0.12)
        end
    end
end
vz = fn782
uz.SetAutoBreakWalls = fns.fn197
uz.SetAutoCollect = fns.fn165
uz.SetCarryLimit = fn936
uz.SetAutoPlace = fn1104
uz.SetAutoHatch = fn428
uz.SetAutoRebirth = fn862
uz.SetAutoClaimIndex = fn531
uz.SetAutoBuyDumbells = fn1201
uz.SetAutoBuyUpgrades = fn1105
uz.SetAutoTrain = fn1238
uz.SetAutoUpgradeFarm = fns.fn21
uz.SetAutoEquipBest = fns.fn297
uz.SetAutoSell = fn675
uz.SetUpgradeTarget = fn966
uz.SetSellFrom = fn687
uz.SetSellMode = fn313
uz.SetSellKeepCount = fn343
uz.SetSellRarities = fns.fn55
uz.SetCollectStage = fn1213
uz.SetBreakThroughStage = fn738
fn1305()
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
wc(uz, Library)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = vt, Copyable = true }, "|", v1, "|", v2 },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
vm = {}
vm.Info = Window:AddTab("Info", "info")
vm.Main = Window:AddTab("Main", "gamepad-2")
vm.Player = Window:AddTab("Player", "person-standing")
vm.Settings = Window:AddTab("Settings", "settings")
ve = "#7fd47f"
u8 = "#6ec1ff"
u_ = "#e8a34d"
uQ = fn958
uy = fns.fn294
vE = fn593
u4 = fn761
vN = fn794
local function v9()
    local lx
    local ls
    ls = "Unknown"
    pcall(function()
        local Fu_1
        local Ft_1
        if type(identifyexecutor) == "function" then
            Fu_1, Ft_1 = identifyexecutor()
            local Fv = Fu_1 ~= ""
            local Fw = type(Fu_1) == "string" and Fv
            if Fw then
                local Fv_1 = type(Ft_1) == "string" and Ft_1 ~= "" and Fu_1 .. " " .. Ft_1
                ls = Fv_1 or Fu_1
            end
        end
    end)
    lx = os.clock()
    local function ly()
        local FB = math.floor(os.clock() - lx)
        if FB < 60 then
            return FB .. "s"
        elseif FB < 3600 then
            return string.format("%dm %ds", FB // 60, FB % 60)
        else
            return string.format("%dh %dm", FB // 3600, FB % 3600 // 60)
        end
    end
    local UserGroup = vm.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(vE("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, ve), true)
    UserGroup:AddLabel(vE("UserId", tostring(LocalPlayer.UserId), u8), true)
    UserGroup:AddLabel(vE("Executor", ls, ve), true)
    UserGroup:AddDivider()
    local Label4 = UserGroup:AddLabel(vE("Session", ly(), u_), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            u4(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            u4("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = vm.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = vt,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = vm.Info:AddRightGroupbox("Session", "signal")
    local Label3 = SessionGroup:AddLabel(vE("Players", tostring(#us.Players:GetPlayers()), u8), true)
    local Label2 = SessionGroup:AddLabel(vE("Job", string.sub(game.JobId, 1, 8) .. "...", u_), true)
    local Label = SessionGroup:AddLabel(vE("Ping", "0 ms", ve), true)
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            pcall(function()
                us.TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            u4(game.JobId, "Copied Job ID")
        end
    })
    local SocialsGroup = vm.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord",
        Func = function()
            u4(vt, "Copied Discord")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts",
        Func = function()
            u4(vl, "Copied Rscripts")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website",
        Func = function()
            u4(vd, "Copied Website")
        end
    })
    task.spawn(function()
        local FG = false
        repeat
            local FD
            if vj() then
                Label4:SetText(vE("Session", ly(), u_))
                Label3:SetText(vE("Players", tostring(#us.Players:GetPlayers()), u8))
                FD = 0
                pcall(function()
                    FD = math.floor(us.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(vE("Ping", tostring(FD) .. " ms", ve))
                Label2:SetText(vE("Job", string.sub(game.JobId, 1, 8) .. "...", u_))
                task.wait(1)
            else
                FG = true
            end
        until FG
    end)
end
u2 = {
    WalkSnapshots = {},
    NoclipSnapshots = {},
    InfJumpConn = nil,
    NoclipConn = nil,
    FlyConn = nil,
    PromptSnapshots = {},
    PromptConn = nil,
    FlyPlatformStand = nil
}
local function v6()
    uz.SetWalkSpeedEnabled = function(nj)
        local FI = nj and true or false
        State.WalkSpeedEnabled = FI
        local FH_1 = vI()
        local FI_1 = FH_1 and FH_1:FindFirstChildOfClass("Humanoid")
        if not FI_1 then
            return
        end
        if State.WalkSpeedEnabled then
            if u2.WalkSnapshots[FI_1] == nil then
                u2.WalkSnapshots[FI_1] = FI_1.WalkSpeed
            end
            FI_1.WalkSpeed = State.WalkSpeedValue
        elseif u2.WalkSnapshots[FI_1] ~= nil then
            FI_1.WalkSpeed = u2.WalkSnapshots[FI_1]
            u2.WalkSnapshots[FI_1] = nil
        end
    end
    uz.SetWalkSpeedValue = function(nu)
        local FU = tonumber(nu) or 32
        State.WalkSpeedValue = math.clamp(FU, 16, 250)
        if State.WalkSpeedEnabled then
            uz.SetWalkSpeedEnabled(true)
        end
    end
    uz.SetInfJump = function(nx)
        local F2 = nx and true or false
        State.InfJump = F2
        if u2.InfJumpConn then
            u2.InfJumpConn:Disconnect()
            u2.InfJumpConn = nil
        end
        if not State.InfJump then
            return
        end
        u2.InfJumpConn = us.UserInputService.JumpRequest:Connect(function()
            local FW = not vj()
            local F0 = if FW then 1 else 0
            local FZ = 359 * F0 + 1028 * (1 - F0)
            local F_ = 2914 * F0 + 3873 * (1 - F0)
            if not ((FZ * 4050 + F_ * 2887 + FZ * F_) % 16777213 == 10912794) then
                FW = not State.InfJump
            end
            if FW then
                return
            end
            local FW_1 = vI()
            local FX = FW_1 and FW_1:FindFirstChildOfClass("Humanoid")
            if FX then
                FX:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
    uz.SetNoClip = function(nH)
        local Gl = nH and true or false
        State.NoClip = Gl
        if u2.NoclipConn then
            u2.NoclipConn:Disconnect()
            u2.NoclipConn = nil
        end
        local function Gk_1()
            for k, v in pairs(u2.NoclipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(u2.NoclipSnapshots)
        end
        if not State.NoClip then
            Gk_1()
            return
        end
        u2.NoclipConn = us.RunService.Stepped:Connect(function()
            local Gc = not vj() or not State.NoClip
            if Gc then
                return
            end
            local Gc_1 = vI()
            if not Gc_1 then
                return
            end
            for i, descendant in ipairs(Gc_1:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if u2.NoclipSnapshots[descendant] == nil then
                        u2.NoclipSnapshots[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end)
    end
    uz.SetFly = function(n_)
        local Gw = n_ and true or false
        State.Fly = Gw
        if u2.FlyConn then
            u2.FlyConn:Disconnect()
            u2.FlyConn = nil
        end
        local Gv_1 = vI()
        local Gw_1 = Gv_1 and Gv_1:FindFirstChildOfClass("Humanoid")
        vi()
        if not State.Fly then
            if Gw_1 and u2.FlyPlatformStand ~= nil then
                Gw_1.PlatformStand = u2.FlyPlatformStand
                u2.FlyPlatformStand = nil
            end
            return
        end
        if Gw_1 then
            u2.FlyPlatformStand = Gw_1.PlatformStand
            Gw_1.PlatformStand = true
        end
        u2.FlyConn = us.RunService.RenderStepped:Connect(function(ob)
            local Gq = not vj() or not State.Fly
            if Gq then
                return
            end
            if us.UserInputService:GetFocusedTextBox() then
                return
            end
            local Gq_1 = vi()
            local CurrentCamera = uV.CurrentCamera
            if not Gq_1 or not CurrentCamera then
                return
            end
            local Gs_1 = Vector3.zero
            if us.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                Gs_1 += CurrentCamera.CFrame.LookVector
            end
            if us.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                Gs_1 -= CurrentCamera.CFrame.LookVector
            end
            if us.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                Gs_1 -= CurrentCamera.CFrame.RightVector
            end
            if us.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                Gs_1 += CurrentCamera.CFrame.RightVector
            end
            if us.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                Gs_1 += Vector3.yAxis
            end
            if us.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                Gs_1 -= Vector3.yAxis
            end
            if Gs_1.Magnitude > 0 then
                Gq_1.CFrame = Gq_1.CFrame + Gs_1.Unit * State.FlySpeed * ob
            end
            Gq_1.AssemblyLinearVelocity = Vector3.zero
        end)
    end
    uz.SetFlySpeed = function(op)
        local GC = tonumber(op) or 60
        State.FlySpeed = math.clamp(GC, 10, 400)
    end
    uz.SetInstantProximityPrompt = function(oq)
        local GP
        local GR = oq and true
        local GV = if GR then 1 else 0
        local GT = 3254 * GV + 2416 * (1 - GV)
        local GU = 1178 * GV + 3837 * (1 - GV)
        if not ((GT * 1506 + GU * 1556 + GT * GU) % 16777213 == 10566704) then
            GR = false
        end
        State.InstantPrompt = GR
        if u2.PromptConn then
            u2.PromptConn:Disconnect()
            u2.PromptConn = nil
        end
        local function GQ_1()
            for k, v in pairs(u2.PromptSnapshots) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(u2.PromptSnapshots)
        end
        if not State.InstantPrompt then
            GQ_1()
            return
        end
        GP = function(oy)
            local GM = not oy:IsA("ProximityPrompt") or u2.PromptSnapshots[oy]
            if GM then
                return
            end
            u2.PromptSnapshots[oy] = {
                HoldDuration = oy.HoldDuration,
                MaxActivationDistance = oy.MaxActivationDistance,
                RequiresLineOfSight = oy.RequiresLineOfSight
            }
            oy.HoldDuration = 0
            oy.MaxActivationDistance = 50
            oy.RequiresLineOfSight = false
        end
        for i, descendant in ipairs(uV:GetDescendants()) do
            GP(descendant)
        end
        u2.PromptConn = uV.DescendantAdded:Connect(function(oE)
            if State.InstantPrompt then
                GP(oE)
            end
        end)
    end
    uz.Track(function()
        uz.SetWalkSpeedEnabled(false)
        uz.SetInfJump(false)
        uz.SetNoClip(false)
        uz.SetFly(false)
        uz.SetInstantProximityPrompt(false)
    end)
    LocalPlayer.CharacterAdded:Connect(function()
        task.wait(0.2)
        if not vj() then
            return
        end
        if State.WalkSpeedEnabled then
            uz.SetWalkSpeedEnabled(true)
        end
        if State.Fly then
            uz.SetFly(true)
        end
    end)
end
vv = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    ReconnectConns = {},
    FpsSnapshots = {},
    FpsConn = nil,
    PausedConn = nil,
    AfkTriggers = 0
}
local function wa()
    local function o9()
        local G2 = not vy(us.VirtualUser.CaptureController) or not vy(us.VirtualUser.ClickButton2)
        if G2 then
            return false
        end
        local G2_1 = pcall(function()
            us.VirtualUser:CaptureController()
            us.VirtualUser:ClickButton2(Vector2.new())
        end)
        if G2_1 then
            vv.AfkTriggers = vv.AfkTriggers + 1
        end
        return G2_1
    end
    uz.SetAntiAfk = function(pj)
        local Hd = pj and true or false
        vv.AntiAfk = Hd
        if vv.AfkConn then
            vv.AfkConn:Disconnect()
            vv.AfkConn = nil
        end
        if vv.AfkTask then
            pcall(task.cancel, vv.AfkTask)
            vv.AfkTask = nil
        end
        if not vv.AntiAfk then
            return
        end
        vv.AfkConn = LocalPlayer.Idled:Connect(function()
            local G4 = vj() and vv.AntiAfk
            if G4 then
                o9()
            end
        end)
        vv.AfkTask = task.spawn(function()
            local G6 = os.clock()
            while true do
                local G7 = vj() and vv.AntiAfk
                if G7 then
                    task.wait(1)
                    local G7_1 = not vj() or not vv.AntiAfk
                    if G7_1 then
                        break
                    end
                    if os.clock() - G6 >= 60 then
                        G6 = os.clock()
                        o9()
                    end
                    continue
                end
                break
            end
        end)
    end
    uz.SetNoGameplayPaused = function(pB)
        local Hp
        local Hr = pB and true or false
        vv.NoGameplayPaused = Hr
        if vv.PausedConn then
            vv.PausedConn:Disconnect()
            vv.PausedConn = nil
        end
        if not vv.NoGameplayPaused then
            return
        end
        Hp = function()
            pcall(function()
                local RobloxGui = us.CoreGui:FindFirstChild("RobloxGui")
                local Hg = RobloxGui and RobloxGui:FindFirstChild("Notifications")
                if Hg then
                    for i, descendant in ipairs(Hg:GetDescendants()) do
                        local Hf_2 = descendant:IsA("TextLabel") and string.find(string.lower(descendant.Text), "gameplay paused")
                        if Hf_2 then
                            local Frame = descendant:FindFirstAncestorOfClass("Frame")
                            if Frame then
                                Frame.Visible = false
                            end
                        end
                    end
                end
            end)
        end
        Hp()
        vv.PausedConn = us.CoreGui.DescendantAdded:Connect(function()
            if vv.NoGameplayPaused then
                Hp()
            end
        end)
    end
    uz.SetAutoReconnect = function(pQ)
        local HC = pQ and true or false
        vv.AutoReconnect = HC
        for i, v in ipairs(vv.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(vv.ReconnectConns)
        if not vv.AutoReconnect then
            return
        end
        table.insert(vv.ReconnectConns, us.TeleportService.TeleportInitFailed:Connect(function()
            local Hw = not vj()
            local HA = if Hw then 1 else 0
            local Hy = 1039 * HA + 530 * (1 - HA)
            local Hz = 2828 * HA + 937 * (1 - HA)
            if not ((Hy * 3934 + Hz * 1387 + Hy * Hz) % 16777213 == 10948154) then
                Hw = not vv.AutoReconnect
            end
            if Hw then
                return
            end
            task.wait(1)
            local Hw_1 = vj() and vv.AutoReconnect
            if Hw_1 then
                pcall(function()
                    us.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        end))
    end
    uz.SetDisable3D = function(p4)
        local HL = p4 and true or false
        vv.Disable3D = HL
        pcall(function()
            us.RunService:Set3dRenderingEnabled(not vv.Disable3D)
        end)
    end
    uz.SetFpsBoost = function(p9)
        local H6
        local H8 = p9 and true or false
        vv.FpsBoost = H8
        if vv.FpsConn then
            vv.FpsConn:Disconnect()
            vv.FpsConn = nil
        end
        local function H7_1()
            for k, v in pairs(vv.FpsSnapshots) do
                local HS = k
                if HS and HS.Parent then
                    for k, v in pairs(v) do
                        local HY = k
                        local H_ = v
                        pcall(function()
                            HS[HY] = H_
                        end)
                    end
                end
            end
            table.clear(vv.FpsSnapshots)
        end
        if not vv.FpsBoost then
            H7_1()
            return
        end
        H6 = function(qm)
            if vv.FpsSnapshots[qm] then
                return
            end
            local H0 = qm:IsA("ParticleEmitter") or qm:IsA("Trail") or qm:IsA("Beam")
            local H4 = if H0 then 1 else 0
            local H2 = 2770 * H4 + 3404 * (1 - H4)
            local H3 = 997 * H4 + 2245 * (1 - H4)
            if not ((H2 * 4045 + H3 * 2622 + H2 * H3) % 16777213 == 16580474) then
                H0 = qm:IsA("Fire")
            end
            if not H0 then
                H0 = qm:IsA("Smoke")
            end
            if not H0 then
                H0 = qm:IsA("Sparkles")
            end
            if H0 then
                vv.FpsSnapshots[qm] = { Enabled = qm.Enabled }
                qm.Enabled = false
            end
        end
        for i, descendant in ipairs(uV:GetDescendants()) do
            H6(descendant)
        end
        if vv.FpsSnapshots[us.Lighting] == nil then
            vv.FpsSnapshots[us.Lighting] = { GlobalShadows = us.Lighting.GlobalShadows }
            us.Lighting.GlobalShadows = false
        end
        vv.FpsConn = uV.DescendantAdded:Connect(function(qu)
            if vv.FpsBoost then
                H6(qu)
            end
        end)
    end
    uz.Track(function()
        uz.SetAntiAfk(false)
        uz.SetNoGameplayPaused(false)
        uz.SetAutoReconnect(false)
        uz.SetDisable3D(false)
        uz.SetFpsBoost(false)
    end)
end
local function v8()
    local Label
    vN(vm.Settings)
    local MenuGroup = vm.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel(vE("AFK pulses", "0", u_), true)
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = vm.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(qK)
        uz.SetAntiAfk(qK)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(qN)
        uz.SetNoGameplayPaused(qN)
    end)
    Toggles.AutoReconnect:OnChanged(function(qP)
        uz.SetAutoReconnect(qP)
    end)
    Toggles.Disable3DRendering:OnChanged(function(qR)
        uz.SetDisable3D(qR)
    end)
    Toggles.FPSBoost:OnChanged(function(qT)
        uz.SetFpsBoost(qT)
    end)
    task.spawn(function()
        while vj() do
            Label:SetText(vE("AFK pulses", tostring(vv.AfkTriggers), u_))
            task.wait(1)
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(vm.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("OuroborosHub/Plus1StrengthForEggs")
    SaveManager:BuildConfigSection(vm.Settings)
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
    uz.SetAntiAfk(Toggles.AntiAfk.Value)
    uz.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
    uz.SetAutoReconnect(Toggles.AutoReconnect.Value)
    uz.SetDisable3D(Toggles.Disable3DRendering.Value)
    uz.SetFpsBoost(Toggles.FPSBoost.Value)
    uz.SetAutoBreakWalls(Toggles.AutoBreakWalls.Value)
    uz.SetBreakThroughStage(Options.BreakThroughStage.Value)
    uz.SetAutoCollect(Toggles.AutoCollect.Value)
    uz.SetCollectStage(Options.CollectStage.Value)
    uz.SetCarryLimit(Options.CarryLimit.Value)
    uz.SetAutoPlace(Toggles.AutoPlace.Value)
    uz.SetAutoHatch(Toggles.AutoHatch.Value)
    uz.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
    uz.SetAutoUpgradeFarm(Toggles.AutoUpgradeFarm.Value)
    uz.SetAutoRebirth(Toggles.AutoRebirth.Value)
    uz.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
    uz.SetAutoTrain(Toggles.AutoTrain.Value)
    uz.SetAutoBuyDumbells(Toggles.AutoBuyDumbells.Value)
    uz.SetAutoBuyUpgrades(Toggles.AutoBuyUpgrades.Value)
    uz.SetUpgradeTarget(Options.UpgradeTarget.Value)
    uz.SetAutoSell(Toggles.AutoSell.Value)
    uz.SetSellFrom(Options.SellFrom.Value)
    uz.SetSellMode(Options.SellMode.Value)
    uz.SetSellKeepCount(Options.SellKeepCount.Value)
    uz.SetSellRarities(Options.SellRarities.Value)
    uz.SetWalkSpeedEnabled(Toggles.WalkSpeedEnabled.Value)
    uz.SetWalkSpeedValue(Options.WalkSpeed.Value)
    uz.SetInfJump(Toggles.InfJump.Value)
    uz.SetNoClip(Toggles.NoClip.Value)
    uz.SetInstantProximityPrompt(Toggles.InstantProximityPrompt.Value)
    uz.SetFly(Toggles.Fly.Value)
    uz.SetFlySpeed(Options.FlySpeed.Value)
    if Toggles.HideUIOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
v6()
wa()
v9()
fns.fn13()
fns.fn188()
v8()
