local pg
local pj
local o0
local CityConfig
local Workspace
local LaunchTeleport
local ps
local o6
local pv
local o9
local DataController
local pc
local pf
local pB
local pi
local pl
local o_
local po
local RollConfig
local o5
local pr
local VariantConfig
local pu
local px
local pb
local RebirthConfig
local ItemsConfig
local ph
local oZ
local AtomConfig
local o1
local pn
local o4
local pq
local o7
local pt
local BuildableAssets
local pw
local pivot2
local pz
local function fn2()
    local p1 = o9()
    local p2 = p1 and p1:FindFirstChild("Machine")
    local p1_1 = p2
    if p2 then
        p2 = p1_1:FindFirstChild(RollConfig.MODEL_NAME)
    end
    return p2
end
local function fn16()
    return oZ(CityConfig, "ownedCities", "equippedCity", pw.City)
end
local function fn84()
    local sA, sB
    local sx = pb()
    if not sx then
        return
    end
    local sy
    local sz = RollConfig.getMaxStands()
    local sG = 1
    local sE = sz
    while true do
        if not (sG <= sE) then
            return sy
        end
        local sH = sG
        sz = sx:GetAttribute("Offer" .. sH)
        sA = sz and pf(sz)
        if sA then
            local sA_1 = sx:GetAttribute("OfferFree" .. sH) == true and 0
            local sB_1 = sA_1 or ItemsConfig.getPrice(sz)
            sA = sB_1
            sB = pn.MaxPrice == 0 or sA <= pn.MaxPrice
            if sB then
                local sB_2 = sx:FindFirstChild(RollConfig.SPAWNER_NAMES[sH])
                local sC = sB_2 and sB_2:FindFirstChild(RollConfig.SPAWNER_NAMES[sH])
                local sB_3 = sC
                if sC then
                    sC = sB_3:FindFirstChild("RollBuyPrompt")
                end
                sB = sC
                if sC then
                    sC = sB.Enabled
                end
                if sC then
                    sC = sA <= math.max(0, pl().cash - pn.CashReserve)
                end
                if sC then
                    break
                end
                if pn.WaitForRoll then
                    sA = sy or sz
                    sy = sA
                end
                sG += 1
                continue
            end
            sG += 1
            continue
        end
        sG += 1
    end
    return sz, sB, sA
end
local function fn95()
    pn.Unloaded = true
    if o0 then
        task.cancel(o0)
        o0 = nil
    end
    pB()
    if getgenv().OuroborosLaunchANuke == o5 then
        getgenv().OuroborosLaunchANuke = nil
    end
end
local function fn106()
    return oZ(pv, "ownedNukes", "equippedNuke", pw.Nuke)
end
local function fn111()
    if o0 then
        return
    end
    o0 = task.spawn(function()
        while not pn.Unloaded do
            for k, v in o1 do
                if pn.Unloaded then
                    break
                end
                o5.Step(v)
            end
            for k, v in o7 do
                if pn.Unloaded then
                    break
                elseif not o6() then
                    o5.Step(v)
                end
            end
            task.wait(0.5)
        end
    end)
end
local function fn162()
    local Character = pi.Character
    local qw = Character and Character:FindFirstChildOfClass("Humanoid")
    local qx = Character
    if qx then
        qx = Character:FindFirstChild("HumanoidRootPart")
    end
    local qw_1 = qx
    if qx then
        qx = qw
    end
    if qx then
        qx = qw.Health > 0
    end
    if qx then
        return qw_1, Character
    end
end
local function fn167()
    if px then
        px:InputHoldEnd()
        px = nil
    end
    pq = nil
    local qb = pj and pj == pi.Character and pj.Parent and not o6()
    if qb then
        pj:PivotTo(pivot2)
    end
    pj = nil
    pivot2 = nil
end
local function fn175()
    if pl().atoms < pn.MinimumAtoms then
        return "Waiting for atoms"
    elseif o6() then
        return "In flight"
    else
        LaunchTeleport.moveToPad()
        task.wait(0.6)
        local tU = pn.Unloaded
        local tZ = if tU then 1 else 0
        local tX = 1175 * tZ + 867 * (1 - tZ)
        local tY = 2440 * tZ + 2025 * (1 - tZ)
        if not ((tX * 3172 + tY * 1420 + tX * tY) % 16777213 == 10058900) then
            tU = not pn.Enabled.Launch
        end
        if tU then
            return "Off"
        end
        pw.Flight:FireServer("launch")
        task.wait(0.35)
        local tU_1 = pi:GetAttribute("NukeFlightActive") == true and "Launched"
        return tU_1 or "Waiting for launch"
    end
end
local function fn203()
    local t6 = if pi:GetAttribute("NukeFlightActive") ~= true then 1 else 0
    if t6 == 1 then
        return "Waiting for flight"
    end
    local DistanceBar = pi.PlayerGui:FindFirstChild("DistanceBar")
    local t0 = DistanceBar and DistanceBar:FindFirstChild("Main")
    local t__1 = t0
    if t0 then
        t0 = t__1:FindFirstChild("Skip")
    end
    local t1 = t__1
    local t2 = t0
    if t1 then
        t1 = t__1.Visible
    end
    if t1 then
        t1 = t2
    end
    if t1 then
        t1 = t2.Visible
    end
    if not t1 then
        return "Waiting for skip"
    elseif not o4(t2) then
        return "Waiting for skip"
    else
        task.wait(0.35)
        local t__2 = pi:GetAttribute("NukeFlightActive") ~= true and "Skipped"
        return t__2 or "Skipping"
    end
end
local function fn360()
    local e8 = pl()
    return {
        Cash = e8.cash,
        Atoms = e8.atoms,
        Rebirths = e8.rebirths,
        Buildings = #e8.plotBuildings,
        Status = pn.Status
    }
end
local function fn383(bc)
    local q0_1
    local q__1
    local qZ_2
    local qY_2
    local qX_2
    local qR = o9()
    local qS = BuildableAssets.get(bc)
    local qT = qR and qR:FindFirstChild("Buildings")
    local qT_3
    local qU = qR
    if qU then
        qU = qR:FindFirstChild("Plots")
    end
    local qT_1 = qU
    if not (qS and qT and qT_1) then
        return
    end
    local pivot = qR:GetPivot()
    local qW_1 = {}
    for i, child in qT:GetChildren() do
        if child:IsA("Model") then
            local qV_1 = pivot:PointToObjectSpace(child:GetPivot().Position)
            local attr2 = child:GetAttribute("FootprintSizeX")
            local attr = child:GetAttribute("FootprintSizeZ")
            if attr2 and attr then
                table.insert(qW_1, { x = qV_1.X, z = qV_1.Z, width = attr2, depth = attr })
            end
        end
    end
    local qV_2 = {}
    for i, child in qT_1:GetChildren() do
        local qT_2 = child:IsA("BasePart") and tonumber(child.Name) and child:GetAttribute("ZoneLocked") ~= true
        if qT_2 then
            table.insert(qV_2, child)
        end
    end
    table.sort(qV_2, function(bw, bx)
        return tonumber(bw.Name) < tonumber(bx.Name)
    end)
    local rl = 0
    while rl <= 1 do
        local rm = rl
        qX_2, qT_3 = pr.GetRotatedFootprint(qS, rm)
        q__1, qZ_2, qY_2, q0_1 = pr.GetPlacementBounds(qX_2, qT_3)
        for k, v in qV_2 do
            local q1 = pivot:PointToObjectSpace(v.Position)
            local q2 = math.max(q__1, pr.SnapToGrid(q1.X - v.Size.X / 2, qX_2))
            local q3 = math.max(qY_2, pr.SnapToGrid(q1.Z - v.Size.Z / 2, qT_3))
            local q4 = math.min(qZ_2, q1.X + v.Size.X / 2)
            local GRID_SIZE2 = pr.GRID_SIZE
            local rw = q2
            while GRID_SIZE2 > 0 and rw <= q4 or GRID_SIZE2 <= 0 and rw >= q4 do
                local rx = rw
                local q2_1 = math.min(q0_1, q1.Z + v.Size.Z / 2)
                local GRID_SIZE = pr.GRID_SIZE
                local rB = q3
                while GRID_SIZE > 0 and rB <= q2_1 or GRID_SIZE <= 0 and rB >= q2_1 do
                    local rC = rB
                    local q2_2 = false
                    for k, v in qW_1 do
                        local q4_2 = math.abs(rx - v.x) < (qX_2 + v.width) / 2 - 0.001
                        if q4_2 then
                            q4_2 = math.abs(rC - v.z) < (qT_3 + v.depth) / 2 - 0.001
                        end
                        if q4_2 then
                            q2_2 = true
                            break
                        end
                    end
                    if not q2_2 then
                        for k, v in pg.getFootprintSamplePoints(rx, rC, qX_2, qT_3) do
                            local q4_3 = pg.getZoneTileAt(qR, pivot:PointToWorldSpace(v))
                            local q5_1 = not q4_3 or q4_3:GetAttribute("ZoneLocked") == true
                            if q5_1 then
                                q2_2 = true
                                break
                            end
                        end
                    end
                    if not q2_2 then
                        return rx, rC, rm
                    end
                    rB += GRID_SIZE
                end
                rw += GRID_SIZE2
            end
        end
        rl += 1
    end
end
local function fn392(fa)
    local uX_1
    local uW = pn.Unloaded or not pn.Enabled[fa]
    local uW_1
    if uW then
        return "Off"
    end
    uW_1, uX_1 = pcall(ph[fa])
    if not uW_1 then
        pB()
    end
    local Status = pn.Status
    local uZ = pn.Enabled[fa]
    if uZ then
        local uW_2 = uW_1 and uX_1
        local u6 = if uW_2 then 1 else 0
        local u4 = 1944 * u6 + 2669 * (1 - u6)
        local u5 = 1461 * u6 + 858 * (1 - u6)
        if not ((u4 * 1554 + u5 * 4001 + u4 * u5) % 16777213 == 11706621) then
            uW_2 = tostring(uX_1)
        end
        uZ = uW_2
    end
    local uW_3 = uZ or "Off"
    Status[fa] = uW_3
    return pn.Status[fa]
end
local function fn459()
    local uh_1
    local uf = o9()
    local ug = uf and uf:FindFirstChild("Buildings")
    local ug_1
    ug_1, uh_1 = o_()
    if not (ug and ug_1) then
        return "Waiting for base"
    elseif o6() then
        return "Waiting for landing"
    else
        local pivot = uh_1:GetPivot()
        local atoms = pl().atoms
        local uk = 0
        for i, child in ug:GetChildren() do
            local uf_2 = pn.Unloaded or not pn.Enabled.Collect or o6()
            if uf_2 then
                break
            else
                local attr = child:GetAttribute("Atoms")
                local ul = type(attr) == "number" and attr > 0
                if ul then
                    uh_1:PivotTo(child:GetPivot() * CFrame.new(0, 3, 0))
                    if firetouchinterest then
                        for k, v in child:QueryDescendants("BasePart") do
                            if v.CanTouch then
                                pcall(firetouchinterest, ug_1, v, 0)
                                pcall(firetouchinterest, ug_1, v, 1)
                                break
                            end
                        end
                    end
                    task.wait(0.35)
                    uk += 1
                end
            end
        end
        local uf_4 = uh_1.Parent and uh_1 == pi.Character and not o6()
        if uf_4 then
            uh_1:PivotTo(pivot)
        end
        if uk == 0 then
            return "Waiting for atoms"
        end
        local uf_5 = pl().atoms > atoms and "Collected"
        return uf_5 or "Waiting for collect"
    end
end
local function fn531()
    local DistanceBar = pi.PlayerGui:FindFirstChild("DistanceBar")
    local p5 = DistanceBar and DistanceBar:FindFirstChild("Main")
    local p5_1 = pi:GetAttribute("NukeFlightActive") == true
    local qa = if p5_1 then 1 else 0
    local p8 = 609 * qa + 3483 * (1 - qa)
    local p9 = 1831 * qa + 3217 * (1 - qa)
    if not ((p8 * 595 + p9 * 2595 + p8 * p9) % 16777213 == 6228879) then
        p5_1 = p5 and p5.Visible == true
    end
    return p5_1
end
local function fn588(aX)
    local qE_1
    local qD_1
    qD_1, qE_1 = o_()
    local qF = aX and aX:IsA("BasePart")
    if not (qF and qD_1) then
        return false
    elseif firetouchinterest then
        pcall(firetouchinterest, qD_1, aX, 0)
        pcall(firetouchinterest, qD_1, aX, 1)
        return true
    elseif o6() then
        return false
    else
        local pivot = qE_1:GetPivot()
        qE_1:PivotTo(aX.CFrame * CFrame.new(0, 3, 0))
        task.wait(0.2)
        local qF_1 = qE_1.Parent and qE_1 == pi.Character and not o6()
        if qF_1 then
            qE_1:PivotTo(pivot)
        end
        return true
    end
end
local function fn694()
    return DataController:GetData()
end
local function fn703()
    local uP = {}
    for k in RollConfig.Drop do
        local uQ = AtomConfig.isGenerator(k) or AtomConfig.isCollector(k)
        if uQ then
            table.insert(uP, ItemsConfig.getDisplayName(k))
        end
    end
    table.sort(uP)
    return {
        Items = uP,
        Rarities = ItemsConfig.RarityOrder,
        Variants = { "Normal", "Gold", "Diamond" },
        Upgrades = pz
    }
end
local function fn707()
    local sZ = pl()
    if not RebirthConfig.canRebirth(sZ) then
        local s__1 = RebirthConfig.getNextLevel(RebirthConfig.getRebirths(sZ)) and "Waiting for requirements"
        return s__1 or "Max rebirth"
    end
    local s__2 = sZ.rebirths
    pw.Rebirth:FireServer()
    task.wait(0.5)
    local sZ_1 = pl().rebirths > s__2 and "Rebirth complete"
    return sZ_1 or "Waiting for rebirth"
end
local function fn758()
    local ua = o9()
    if not ua then
        return "Waiting for base"
    end
    local attr2 = ua:GetAttribute("LockedUntil")
    local uc = type(attr2) == "number" and attr2 > Workspace:GetServerTimeNow()
    if uc then
        return "Locked"
    end
    local Lock = ua:FindFirstChild("Lock")
    local uc_1 = Lock
    if uc_1 then
        local ud = Lock:FindFirstChild("Part") or Lock:FindFirstChild("Red")
        uc_1 = ud
    end
    local ub_2 = uc_1
    if uc_1 then
        uc_1 = ub_2:IsA("BasePart")
    end
    if uc_1 then
        uc_1 = ub_2.CanTouch
    end
    if not uc_1 then
        return "Waiting for lock"
    elseif not pu(ub_2) then
        return "Waiting for lock"
    else
        task.wait(0.35)
        local attr = ua:GetAttribute("LockedUntil")
        local ua_1 = type(attr) == "number" and attr > Workspace:GetServerTimeNow()
        return ua_1 and "Locked" or "Waiting for lock"
    end
end
local function fn773(as, at)
    local Character = pi.Character
    local qh = Character and Character:FindFirstChild("HumanoidRootPart")
    local qi = Character
    if qi then
        qi = Character:FindFirstChildOfClass("Humanoid")
    end
    local qh_1 = as
    local qk = qi
    if qh_1 then
        qh_1 = as.Enabled
    end
    if qh_1 then
        qh_1 = qh
    end
    if qh_1 then
        qh_1 = qk
    end
    if qh_1 then
        qh_1 = qk.Health > 0
    end
    local qi_1 = not qh_1 or o6()
    if qi_1 then
        return false
    end
    local Parent = as.Parent
    local qi_2 = Parent:IsA("Attachment") and Parent.WorldCFrame
    local qk_1 = qi_2 or Parent.CFrame
    if (qh.Position - qk_1.Position).Magnitude > as.MaxActivationDistance - 2 then
        pj = Character
        pivot2 = Character:GetPivot()
        Character:PivotTo(qk_1 * CFrame.new(0, 3, 3))
        task.wait(0.35)
    end
    local qg_1 = pn.Unloaded or not pn.Enabled[at] or not as.Parent
    local qu = if qg_1 then 1 else 0
    local qs = 2406 * qu + 3119 * (1 - qu)
    local qt = 565 * qu + 2121 * (1 - qu)
    if not ((qs * 296 + qt * 2811 + qs * qt) % 16777213 == 3659781) then
        qg_1 = not as.Enabled
    end
    if qg_1 then
        pB()
        return false
    end
    px = as
    pq = at
    as:InputHoldBegin()
    task.wait(as.HoldDuration + 0.15)
    pB()
    task.wait(0.25)
    return true
end
local function fn798()
    local s5_1
    local s4_1
    local s2 = pl()
    for k, v in pz do
        if pn.Upgrades[v] then
            local s3_1 = pt[v]
            if s3_1 == "Luck" then
                s5_1 = "rollLuckLevel"
                local LUCK_LEVELS = RollConfig.LUCK_LEVELS
                local s7_1 = s2.rollLuckLevel
                local ti = if s7_1 then 1 else 0
                local tg = 2362 * ti + 311 * (1 - ti)
                local th = 2916 * ti + 1604 * (1 - ti)
                if not ((tg * 3853 + th * 3265 + tg * th) % 16777213 == 8731905) then
                    s7_1 = 0
                end
                local s8 = LUCK_LEVELS[s7_1 + 1]
                s4_1 = s8 and s8.Cost
            elseif s3_1 == "Stands" then
                s5_1 = "rollStands"
                s4_1 = RollConfig.STAND_UPGRADE_COSTS[(s2.rollStands or 0) + 1]
            else
                s5_1 = "rollSpeedLevel"
                s4_1 = RollConfig.SPEED_UPGRADE_COSTS[(s2.rollSpeedLevel or 0) + 1]
            end
            if s4_1 and s4_1 <= s2.cash then
                local s4_2 = s2[s5_1]
                pw.Upgrade:FireServer(s3_1)
                task.wait(0.35)
                local s3_2 = pl()[s5_1] > s4_2 and "Bought " .. v
                return s3_2 or "Waiting for upgrade"
            end
        end
    end
    local s2_1 = next(pn.Upgrades) and "Maxed or waiting for cash"
    return s2_1 or "Select upgrades"
end
local function fn803()
    local tG_1
    local tF_1
    tG_1, tF_1 = pc()
    if not tG_1 then
        return "Waiting for matching roll"
    elseif not tF_1 then
        return "Saving for " .. ItemsConfig.getDisplayName(tG_1)
    else
        local tH = pl().inventory[tG_1] or 0
        if po(tF_1, "BuyRoll") then
            local tF_2 = pl().inventory[tG_1] or 0
            local tH_1 = tF_2 > tH and "Bought " .. ItemsConfig.getDisplayName(tG_1)
            return tH_1 or "Waiting for roll purchase"
        end
        return "Waiting for roll"
    end
end
local function fn807()
    return ps(true)
end
local function fn822(e_, e0)
    local uG = type(e0) == "table" and table.clone(e0)
    local uH = uG
    local uO = if uH then 1 else 0
    local uM = 2453 * uO + 1206 * (1 - uO)
    local uN = 37 * uO + 3079 * (1 - uO)
    if not ((uM * 1406 + uN * 479 + uM * uN) % 16777213 == 3557402) then
        uH = e0
    end
    pn[e_] = uH
end
local function fn867()
    local attr = pi:GetAttribute("PlotId")
    local Plots = Workspace:FindFirstChild("Plots")
    local pX = attr and Plots and Plots:FindFirstChild("Plot" .. attr)
    return pX
end
local function fn885()
    local tj = o9()
    local tk = tj and tj:FindFirstChild("Plots")
    if not tk then
        return "Waiting for base"
    end
    local tk_1 = pl()
    local tl = {}
    for i, child in tk:GetChildren() do
        local tj_2 = child:IsA("BasePart") and tonumber(child.Name) and child:GetAttribute("ZoneLocked") == true
        if tj_2 then
            table.insert(tl, child)
        end
    end
    table.sort(tl, function(dW, dX)
        return tonumber(dW.Name) < tonumber(dX.Name)
    end)
    for k, v in tl do
        local tj_3 = tonumber(v.Name)
        local tm = pg.getRebirthRequirement(tj_3)
        local tn = pg.PRICES[tj_3]
        local tm_1 = tm and tk_1.rebirths >= tm
        if not tm_1 then
            tm_1 = tn and tk_1.cash >= tn
        end
        if tm_1 then
            if po(v:FindFirstChildOfClass("ProximityPrompt"), "BuyZone") then
                local tm_2 = v:GetAttribute("ZoneLocked") ~= true and "Unlocked zone " .. tj_3
                return tm_2 or "Waiting for zone"
            end
        end
    end
    return #tl == 0 and "All zones unlocked" or "Waiting for cash or rebirth"
end
local function fn899(c1, c2, c3, c4)
    local sJ = pl()
    for k, v in c1.Tiers do
        local sK_1 = not sJ[c2][v.key]
        if sK_1 ~= false then
            sK_1 = v.price <= sJ.cash
        end
        if sK_1 then
            c4:FireServer("buy", v.key)
            task.wait(0.35)
            local sK_2 = pl()[c2][v.key] and "Bought " .. v.name
            return sK_2 or "Waiting for purchase"
        end
    end
    local sK_3 = nil
    for k, v in c1.Tiers do
        if sJ[c2][v.key] then
            sK_3 = v
        end
    end
    if sK_3 and sJ[c3] ~= sK_3.key then
        c4:FireServer("equip", sK_3.key)
        task.wait(0.35)
        local sJ_1 = pl()[c3] == sK_3.key and "Equipped " .. sK_3.name
        return sJ_1 or "Waiting for equip"
    end
    return "Waiting for cash"
end
local function fn930(cA)
    local sn = ItemsConfig.get(cA)
    local so = not sn or not pn.Rarities[sn.Rarity]
    if not so then
        local Variants = pn.Variants
        local sp = VariantConfig.getVariantKey(cA) or "Normal"
        so = not Variants[sp]
    end
    if so then
        return false
    end
    local sn_2 = next(pn.Items) and not pn.Items[ItemsConfig.getDisplayName(VariantConfig.getBaseKey(cA))]
    if sn_2 then
        return false
    end
    local sn_3 = pn.RollType == "All"
    if not sn_3 then
        local so_1 = pn.RollType == "Generators" and AtomConfig.isGenerator(cA)
        sn_3 = so_1
    end
    if not sn_3 then
        local so_2 = pn.RollType == "Collectors" and AtomConfig.isCollector(cA)
        sn_3 = so_2
    end
    return sn_3
end
local function fn1002()
    return ps(false)
end
local function fn1041(eY, eZ)
    pn.Enabled[eY] = eZ
    local Status = pn.Status
    local uE = eZ and "Ready" or "Off"
    Status[eY] = uE
    local uC_1 = pq == eY
    local uD_1 = not eZ
    if uD_1 ~= false then
        uD_1 = uC_1
    end
    if uD_1 then
        pB()
    end
end
local function fn1043()
    local tK = pb()
    if not tK then
        return "Waiting for base"
    end
    local tL = pn.Enabled.BuyRoll and pc()
    if tL then
        return "Waiting for roll purchase"
    end
    local tL_1 = tK:FindFirstChild(RollConfig.PROMPT_PART_NAME, true)
    local tM = tL_1 and tL_1:FindFirstChild("RollPrompt")
    local tM_1 = not tM
    local tQ = if tM_1 then 1 else 0
    local tO = 216 * tQ + 2812 * (1 - tQ)
    local tP = 1865 * tQ + 913 * (1 - tQ)
    if not ((tO * 1870 + tP * 3858 + tO * tP) % 16777213 == 8001930) then
        tM_1 = not tM.Enabled
    end
    if tM_1 then
        return "Rolling"
    end
    local attr = tK:GetAttribute("RollId")
    local tT = if po(tM, "Roll") then 1 else 0
    if tT == 1 then
        local tL_3 = tK:GetAttribute("RollId") ~= attr and "Rolling"
        return tL_3 or "Waiting for roll"
    end
    return "Waiting for roll"
end
oZ = nil
o_ = nil
o0 = nil
o1 = nil
RollConfig = nil
LaunchTeleport = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
VariantConfig = nil
o9 = nil
BuildableAssets = nil
pb = nil
pc = nil
pivot2 = nil
ItemsConfig = nil
pf = nil
pg = nil
ph = nil
pi = nil
pj = nil
AtomConfig = nil
pl = nil
CityConfig = nil
pn = nil
po = nil
Workspace = nil
pq = nil
pr = nil
ps = nil
pt = nil
pu = nil
pv = nil
pw = nil
px = nil
DataController = nil
pz = nil
RebirthConfig = nil
pB = nil
local Players
local pF_1, pF_2
local pC_1
local RemoteEvents
Players, Workspace, pi = nil, nil, nil
Players = game:GetService("Players")
local pE = game:GetService("ReplicatedStorage")
local pE_1
Workspace = game:GetService("Workspace")
pi = Players.LocalPlayer
local OuroborosLaunchANuke = getgenv().OuroborosLaunchANuke
local pD_4
if OuroborosLaunchANuke then
    OuroborosLaunchANuke.Unload()
end
pF_1, pC_1, DataController, pr, AtomConfig, ItemsConfig, VariantConfig, RollConfig, RebirthConfig, pv, CityConfig, pg, BuildableAssets, LaunchTeleport, RemoteEvents, pw, pn = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pG = 46
repeat
    local pD_1 = (pG * 7 + 7) % 13 + 1
    if pD_1 <= 7 then
        if pD_1 <= 4 then
            if pD_1 <= 2 then
                if pD_1 <= 1 then
                    local pI_1 = {
                        "jopdffwtt",
                        "lnabwhkqdan",
                        "xhlwztayf",
                        "oajwawluqm",
                        "lbvpnyeytv",
                        "iffv",
                        "gmfy",
                        "qgro",
                        "ezpanezp"
                    }
                    local B6 = pG
                    local pJ_1 = pI_1[B6 % 9 + 1]
                    if pJ_1:len() <= pJ_1:reverse():rep(B6 % 3 + 2):len() then
                        pv = require(pF_1:WaitForChild("NukeConfig"))
                    else
                        pF_1 = require(pv:WaitForChild("NukeConfig"))
                    end
                    pG = (pG + 15) % 104
                else
                    if pG and not ItemsConfig and (not ItemsConfig and pG) and (not pv and not pv and (not RebirthConfig or not pG)) or not (pG and not ItemsConfig and (not ItemsConfig and pG) and (not pv and not pv and (not RebirthConfig or not pG))) then
                        CityConfig = require(pF_1:WaitForChild("CityConfig"))
                    else
                        pF_1 = require(CityConfig:WaitForChild("CityConfig"))
                    end
                    pG = (pG + 41) % 104
                end
            elseif pD_1 <= 3 then
                local pI_2 = {
                    "dpxllvb",
                    "sqrxljwmkjd",
                    "yimzjskftqx",
                    "xqg",
                    "kmlb",
                    "tso",
                    "mkc",
                    "nkrzi",
                    "mdkppvqpre",
                    "kyasd",
                    "wekrdv",
                    "xsqamukdah",
                    "ibfguvrqptg",
                    "sxcazu",
                    "gjcgs",
                    "rfo"
                }
                if pI_2[(pG * 84 + 59) % 16 + 1] < pI_2[(pG * 84 + 59) % 16 + 1] then
                    pF_1 = require(RemoteEvents:WaitForChild("ZoneConfig"))
                    pC_1 = require(BuildableAssets:WaitForChild("BuildableAssets"))
                    pg = require(BuildableAssets:WaitForChild("LaunchTeleport"))
                    pE = pw:WaitForChild("RemoteEvents")
                    pr = {
                        City = pE:WaitForChild(RebirthConfig.REMOTE_NAME),
                        Nuke = pE:WaitForChild("NukeShop"),
                        Rebirth = pE:WaitForChild(LaunchTeleport.REMOTE_NAME),
                        Flight = pE:WaitForChild("NukeFlightState"),
                        Place = pE:WaitForChild(CityConfig.PLACE_REMOTE_NAME),
                        Upgrade = pw:WaitForChild("Remotes"):WaitForChild("RollUpgrade")
                    }
                else
                    pg = require(pF_1:WaitForChild("ZoneConfig"))
                    BuildableAssets = require(pC_1:WaitForChild("BuildableAssets"))
                    LaunchTeleport = require(pC_1:WaitForChild("LaunchTeleport"))
                    RemoteEvents = pE:WaitForChild("RemoteEvents")
                    pw = {
                        Place = RemoteEvents:WaitForChild(pr.PLACE_REMOTE_NAME),
                        Rebirth = RemoteEvents:WaitForChild(RebirthConfig.REMOTE_NAME),
                        Flight = RemoteEvents:WaitForChild("NukeFlightState"),
                        Nuke = RemoteEvents:WaitForChild("NukeShop"),
                        City = RemoteEvents:WaitForChild(CityConfig.REMOTE_NAME),
                        Upgrade = pE:WaitForChild("Remotes"):WaitForChild("RollUpgrade")
                    }
                end
                pG = (pG + 28) % 104
            else
                local Cc = bit32.rrotate(bit32.bxor(bit32.lrotate(pG, 18), string.byte(tostring(BuildableAssets))), 24)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Cc, 2543749921), 3164764811), (bit32.bxor(bit32.band(Cc, 1751217374), 3897656770))), 3164764811), 3897656770) == Cc then
                    pn = {
                        Unloaded = false,
                        Enabled = {},
                        Status = {},
                        Rarities = {},
                        Variants = { Normal = true, Gold = true, Diamond = true },
                        Items = {},
                        Upgrades = {},
                        RollType = "All",
                        MaxPrice = 0,
                        CashReserve = 0,
                        MinimumAtoms = pv.MIN_ATOMS_TO_LAUNCH,
                        WaitForRoll = false
                    }
                else
                    pv = {
                        Unloaded = false,
                        Rarities = {},
                        MinimumAtoms = pn.MIN_ATOMS_TO_LAUNCH,
                        CashReserve = 0,
                        RollType = "All",
                        Items = {},
                        Enabled = {},
                        Upgrades = {},
                        Variants = { Gold = true, Diamond = true, Normal = true },
                        WaitForRoll = false,
                        MaxPrice = 0,
                        Status = {}
                    }
                end
                pG = (pG + 41) % 104
            end
        elseif pD_1 <= 6 then
            if pD_1 <= 5 then
                local pI_3 = {
                    "vvfsitmnh",
                    "peltdwidmzw",
                    "plhmbb",
                    "fea",
                    "ljwzy",
                    "hctikmvku",
                    "lwqklueral",
                    "waiauos",
                    "dsgzupx"
                }
                local Cd = pG
                local pJ_2 = pI_3[Cd % 9 + 1]
                if pJ_2:len() <= pJ_2:gsub("(.)", "%1%1", Cd % 3 % 2 + 1):len() then
                    pF_1 = pE:WaitForChild("Shared"):WaitForChild("List")
                else
                    pE = pF_1:WaitForChild("Shared"):WaitForChild("List")
                end
                pG = (pG + 80) % 104
            else
                local B8 = bit32.rrotate(bit32.bxor(bit32.lrotate(pG, 6), string.byte(tostring(pC_1))), 15)
                if bit32.bxor(bit32.lrotate(bit32.bxor(B8, 3598238860), 30), 899559715) == bit32.lrotate(B8, 30) then
                    pC_1 = pE.Shared:WaitForChild("Modules")
                else
                    pE = pC_1.Shared:WaitForChild("Modules")
                end
                pG = (pG + 28) % 104
            end
        else
            local pI_4 = (vector.create((pG * 2 + 6) % 11 + 1, (pG * 6 + 6) % 13 + 1, (pG * 14 + 17) % 17 + 1))
            local pJ_3 = (vector.create((pG * 4 + 9) % 11 + 1, (pG * 9 + 4) % 13 + 1, (pG * 9 + 3) % 17 + 1))
            local pK_1 = (vector.create((pG * 5 + 6) % 5 + 1, (pG * 5 + 1) % 7 + 1, (pG * 5 + 7) % 9 + 1))
            if math.abs((vector.angle(pI_4, pJ_3, pK_1))) - math.abs((vector.angle(pJ_3, pI_4, pK_1))) == 4 then
                pi = require(DataController:WaitForChild("PlayerScripts"):WaitForChild("Controllers"):WaitForChild("Game"):WaitForChild("DataController"))
            else
                DataController = require(pi:WaitForChild("PlayerScripts"):WaitForChild("Controllers"):WaitForChild("Game"):WaitForChild("DataController"))
            end
            pG = (pG + 67) % 104
        end
    elseif pD_1 <= 10 then
        if pD_1 <= 9 then
            if pD_1 <= 8 then
                local Bu = bit32.rrotate(bit32.bxor(bit32.lrotate(pG, 5), string.byte(tostring(pv))), 4)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Bu, 2817265287), 16), 243771372) == bit32.lrotate(Bu, 16) then
                    pr = require(pF_1:WaitForChild("BuildConfig"))
                else
                    pF_1 = require(pr:WaitForChild("BuildConfig"))
                end
                pG = (pG + 67) % 104
            else
                if pG * 127257523 + 1 + 2 >= pG * 127257523 + 1 + 2 + 5 then
                    pF_1 = require(AtomConfig:WaitForChild("AtomConfig"))
                else
                    AtomConfig = require(pF_1:WaitForChild("AtomConfig"))
                end
                pG = (pG + 15) % 104
            end
        else
            local Bt = bit32.rrotate(bit32.bxor(bit32.lrotate(pG, 24), string.byte(tostring(AtomConfig))), 13)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Bt, 3280578689), 2245582312), (bit32.bxor(bit32.band(Bt, 1014388606), 3434867335))), 2245582312), 3434867335) == Bt then
                ItemsConfig = require(pF_1:WaitForChild("ItemsConfig"))
            else
                pF_1 = require(ItemsConfig:WaitForChild("ItemsConfig"))
            end
            pG = (pG + 93) % 104
        end
    elseif pD_1 <= 12 then
        if pD_1 <= 11 then
            local pD_2 = {
                "xhdvwcbwtg",
                "tpodvxlpuar",
                "mrthtmwydryk",
                "udoccx",
                "lkkjnplsczer",
                "dpnj",
                "krtto",
                "gceowoaxqib",
                "etdxqiv",
                "atodsbht",
                "eoifg",
                "jbds",
                "pfhxthsass",
                "pourj"
            }
            if pD_2[(pG * 36 + 98) % 14 + 1] <= pD_2[(pG * 36 + 98) % 14 + 1] then
                VariantConfig = require(pF_1:WaitForChild("VariantConfig"))
            else
                pF_1 = require(VariantConfig:WaitForChild("VariantConfig"))
            end
            pG = (pG + 80) % 104
        else
            local pD_3 = (vector.create((pG * 5 + 7) % 11 + 1, (pG * 1 + 9) % 13 + 1, (pG * 11 + 16) % 17 + 1))
            local pI_5 = (vector.create((pG * 1 + 3) % 11 + 1, (pG * 7 + 12) % 13 + 1, (pG * 5 + 17) % 17 + 1))
            local pJ_4 = (vector.create((pG * 3 + 3) % 11 + 1, (pG * 3 + 9) % 13 + 1, (pG * 8 + 13) % 17 + 1))
            local pK_2 = (vector.create((pG * 5 + 1) % 11 + 1, (pG * 6 + 3) % 13 + 1, (pG * 2 + 10) % 17 + 1))
            if vector.dot(vector.cross(pD_3, pI_5), (vector.cross(pJ_4, pK_2))) == vector.dot(pD_3, pJ_4) * vector.dot(pI_5, pK_2) - vector.dot(pD_3, pK_2) * vector.dot(pI_5, pJ_4) + 5 then
                pF_1 = require(RollConfig:WaitForChild("RollConfig"))
            else
                RollConfig = require(pF_1:WaitForChild("RollConfig"))
            end
            pG = (pG + 28) % 104
        end
    else
        local B7 = bit32.rrotate(bit32.bxor(bit32.lrotate(pG, 20), string.byte(tostring(RollConfig))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(B7, 973579070), 2), 3894316280) ~= bit32.lrotate(B7, 2) then
            pF_1 = require(RebirthConfig:WaitForChild("RebirthConfig"))
        else
            RebirthConfig = require(pF_1:WaitForChild("RebirthConfig"))
        end
        pG = (pG + 15) % 104
    end
until (pG * 43 + 26) % 104 == 54
for k, v in ItemsConfig.RarityOrder do
    pn.Rarities[v] = true
end
o5, o0, px, pq, pj, pivot2, o7, o1, pz, pt, ph, pE_1, pF_2, pl, o9, pb, o6, pB, po, o_, pu, o4, ps, pf, pc, oZ, pD_4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pC_2 = 24
repeat
    local pG_1 = (pC_2 * 7 + 2) % 11 + 1
    if pG_1 <= 6 then
        if pG_1 <= 3 then
            if pG_1 <= 2 then
                if pG_1 <= 1 then
                    local pH_2 = {
                        "gflmzh",
                        "cpfjzojhy",
                        "jzvnncegss",
                        "kuppsdzxlwqy",
                        "bnixkn",
                        "blkhouxk",
                        "disqdbwrjd",
                        "bpxbg",
                        "bnpg",
                        "mtydcy",
                        "ikahizcxje",
                        "jxa",
                        "gcmtw",
                        "ifmwow",
                        "rxomswausvwq",
                        "upcjelllwd"
                    }
                    if pH_2[(pC_2 * 16 + 34) % 16 + 1] < pH_2[(pC_2 * 16 + 34) % 16 + 1] then
                        pz = fn930
                    else
                        pf = fn930
                    end
                    pC_2 = (pC_2 + 19) % 88
                else
                    if pC_2 * 78212769 + 13 + 4 <= pC_2 * 78212769 + 13 + 4 + 5 then
                        pc = fn84
                        oZ = fn899
                    else
                        oZ = fn84
                        pc = fn899
                    end
                    pC_2 = (pC_2 + 63) % 88
                end
            else
                if pC_2 * 9139339 + 2 + 1 >= pC_2 * 9139339 + 2 + 1 + 1 then
                    pl = {}
                else
                    ph = {}
                end
                pC_2 = (pC_2 + 74) % 88
            end
        elseif pG_1 <= 5 then
            if pG_1 <= 4 then
                local pH_3 = {
                    "dhnfzeikamnw",
                    "rdephezvqqg",
                    "thkibe",
                    "sdqllrjnsz",
                    "pgseqeytr",
                    "isoyh",
                    "skslpizmifsa",
                    "iusvfiply"
                }
                if pH_3[(pC_2 * 8 + 97) % 8 + 1] < pH_3[(pC_2 * 8 + 97) % 8 + 1] then
                    pD_4.PlaceGenerators = fn807
                    pD_4.PlaceCollectors = fn1002
                    pD_4.Rebirth = fn707
                    pD_4.BuyUpgrades = fn798
                    pD_4.BuyNuke = fn106
                    pD_4.BuyCities = fn16
                    pD_4.BuyZone = fn885
                    pD_4.BuyRoll = fn803
                    pD_4.Roll = fn1043
                    pD_4.Launch = fn175
                    pD_4.Skip = fn203
                    pD_4.Lock = fn758
                    pD_4.Collect = fn459
                    ph.SetEnabled = fn1041
                    ph.Configure = fn822
                    ph.GetOptions = fn703
                    ph.GetReport = fn360
                    ph.Step = fn392
                    ph.Start = fn111
                    ph.Unload = fn95
                    getgenv().OuroborosLaunchANuke = ph
                    o5 = function()
                        local z6
                        local z4
                        local Unload
                        local Library
                        Library = nil
                        Unload = nil
                        z4 = nil
                        z6 = nil
                        local UserInputService, zT, zU, zV, ThemeManager, Options, RunService, onDiscord, HttpService, z0, Toggles, TeleportService, SaveManager
                        zV = "https://ouroboros-hub-rbx.web.app/"
                        RunService = game:GetService("RunService")
                        zU = "Launch A Nuke"
                        z0 = "https://rscripts.net/@Ouroboros"
                        UserInputService = game:GetService("UserInputService")
                        TeleportService = game:GetService("TeleportService")
                        HttpService = game:GetService("HttpService")
                        z6 = "https://discord.gg/ehKVq7pf7v"
                        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                        ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                        Toggles = Library.Toggles
                        Options = Library.Options
                        Unload = o5.Unload
                        o5.Unload = function()
                            if not Library.Unloaded then
                                Library:Unload()
                            else
                                Unload()
                            end
                        end
                        Library:OnUnload(Unload)
                        z4 = function(fX, fY)
                            if setclipboard then
                                setclipboard(fX)
                            elseif toclipboard then
                                toclipboard(fX)
                            end
                            Library:Notify(fY)
                        end
                        onDiscord = function()
                            z4(z6, "Copied Discord invite to clipboard")
                        end
                        local Window = Library:CreateWindow({
                            Title = "Ouroboros",
                            Font = Enum.Font.BuilderSans,
                            Footer = { { Text = z6, Copyable = true }, "|", zU },
                            Icon = 78539693571783,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 0,
                            SidebarCompacted = true,
                            TabSwipeFrom = "bottom",
                            Animations = { TabSwitch = true }
                        })
                        Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
                        zT = {
                            Info = Window:AddTab("Info", "info"),
                            Main = Window:AddTab("Automation", "gamepad-2"),
                            Rolls = Window:AddTab("Rolls", "dices"),
                            Player = Window:AddTab("Player", "person-standing"),
                            Settings = Window:AddTab("Settings", "settings")
                        }
                        for k, v in zT do
                            if k ~= "Info" then
                                local DiscordGroup = v:AddLeftGroupbox("Discord")
                                DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                                DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                            end
                        end
                        local function z8_9(f8, f9, ga)
                            f8:AddToggle("Auto" .. f9, {
                                Text = ga,
                                Default = false,
                                Callback = function(gb)
                                    o5.SetEnabled(f9, gb)
                                end
                            })
                        end
                        local function z9(gg, gh, gi, gj, gk)
                            gg:AddInput(gh, {
                                Text = gi,
                                Default = tostring(gj),
                                Numeric = true,
                                Finished = true,
                                AllowEmpty = false,
                                EmptyReset = tostring(gj),
                                VerifyValue = function(gl)
                                    local vr = tonumber(gl)
                                    return vr and vr >= gk and vr < math.huge
                                end,
                                Callback = function(gp)
                                    local Configure = o5.Configure
                                    local vv = tonumber(gp) or gj
                                    Configure(gh, vv)
                                end
                            })
                        end
                        local Aa = o5.GetOptions()
                        local BaseGroup = zT.Main:AddLeftGroupbox("Base", "house")
                        z8_9(BaseGroup, "PlaceGenerators", "Auto Place Generators")
                        z8_9(BaseGroup, "PlaceCollectors", "Auto Place Collectors")
                        z8_9(BaseGroup, "Collect", "Auto Collect Atoms")
                        z8_9(BaseGroup, "Lock", "Auto Lock")
                        z8_9(BaseGroup, "Rebirth", "Auto Rebirth")
                        local LaunchGroup = zT.Main:AddLeftGroupbox("Launch", "rocket")
                        z8_9(LaunchGroup, "Launch", "Auto Launch")
                        z8_9(LaunchGroup, "Skip", "Auto Skip")
                        z9(LaunchGroup, "MinimumAtoms", "Minimum Launch Atoms", pn.MinimumAtoms, pv.MIN_ATOMS_TO_LAUNCH)
                        local PurchasesGroup = zT.Main:AddRightGroupbox("Purchases", "shopping-cart")
                        z8_9(PurchasesGroup, "BuyNuke", "Auto Buy Nuke")
                        z8_9(PurchasesGroup, "BuyCities", "Auto Buy Cities")
                        z8_9(PurchasesGroup, "BuyZone", "Auto Buy Zone")
                        PurchasesGroup:AddDivider("Upgrades")
                        z8_9(PurchasesGroup, "BuyUpgrades", "Auto Buy Upgrades")
                        PurchasesGroup:AddDropdown("Upgrades", {
                            Text = "Base Upgrades",
                            Values = Aa.Upgrades,
                            Multi = true,
                            Default = {},
                            Callback = function(gA)
                                o5.Configure("Upgrades", gA)
                            end
                        })
                        local RollingGroup = zT.Rolls:AddLeftGroupbox("Rolling", "dices")
                        z8_9(RollingGroup, "Roll", "Auto Roll")
                        z8_9(RollingGroup, "BuyRoll", "Auto Buy Roll")
                        RollingGroup:AddToggle("WaitForRoll", {
                            Text = "Wait for Affordable Selected Rolls",
                            Default = false,
                            Callback = function(gD)
                                o5.Configure("WaitForRoll", gD)
                            end
                        })
                        z9(RollingGroup, "MaxPrice", "Maximum Roll Price (0 = Unlimited)", 0, 0)
                        z9(RollingGroup, "CashReserve", "Cash to Keep", 0, 0)
                        local BuyFiltersGroup = zT.Rolls:AddRightGroupbox("Buy Filters", "list-filter")
                        BuyFiltersGroup:AddDropdown("RollType", {
                            Text = "Item Type",
                            Values = { "All", "Generators", "Collectors" },
                            Default = 1,
                            Callback = function(gG)
                                o5.Configure("RollType", gG)
                            end
                        })
                        for k, v in { "Rarities", "Variants", "Items" } do
                            local Ar = v
                            local z9_3 = "Roll" .. Ar
                            local Ac = Ar == "Items" and "Items (Empty = All)" or Ar
                            local Ab_10 = Aa[Ar]
                            local Ad_2 = Ar == "Items" and {} or Aa[Ar]
                            BuyFiltersGroup:AddDropdown(z9_3, {
                                Text = Ac,
                                Values = Ab_10,
                                Multi = true,
                                Default = Ad_2,
                                Callback = function(gL)
                                    o5.Configure(Ar, gL)
                                end
                            })
                        end
                        local function z9_4()
                            local Label3, vJ, Label4, Label5, Label2
                            local ReportGroup2 = zT.Main:AddRightGroupbox("Report", "chart-no-axes-column")
                            Label5 = ReportGroup2:AddLabel("Cash: 0")
                            Label4 = ReportGroup2:AddLabel("Atoms: 0")
                            Label3 = ReportGroup2:AddLabel("Rebirths: 0")
                            Label2 = ReportGroup2:AddLabel("Buildings: 0")
                            local ReportGroup = zT.Rolls:AddRightGroupbox("Report", "chart-no-axes-column")
                            vJ = {}
                            for k, v in {
                                { "PlaceGenerators", "Generators", ReportGroup2 },
                                { "PlaceCollectors", "Collectors", ReportGroup2 },
                                { "Collect", "Collect", ReportGroup2 },
                                { "Lock", "Lock", ReportGroup2 },
                                { "Rebirth", "Rebirth", ReportGroup2 },
                                { "Launch", "Launch", ReportGroup2 },
                                { "Skip", "Skip", ReportGroup2 },
                                { "BuyNuke", "Nukes", ReportGroup2 },
                                { "BuyCities", "Cities", ReportGroup2 },
                                { "BuyZone", "Zones", ReportGroup2 },
                                { "BuyUpgrades", "Upgrades", ReportGroup2 },
                                { "Roll", "Roll", ReportGroup },
                                { "BuyRoll", "Buy roll", ReportGroup }
                            } do
                                vJ[v[1]] = { Name = v[2], Label = v[3]:AddLabel(v[2] .. ": Off", true) }
                            end
                            task.spawn(function()
                                while not Library.Unloaded do
                                    local vx = o5.GetReport()
                                    Label5:SetText("Cash: " .. tostring(vx.Cash))
                                    Label4:SetText("Atoms: " .. tostring(vx.Atoms))
                                    Label3:SetText("Rebirths: " .. tostring(vx.Rebirths))
                                    Label2:SetText("Buildings: " .. tostring(vx.Buildings))
                                    for k, v in vJ do
                                        local Label = v.Label
                                        local Name = v.Name
                                        local vA = vx.Status[k] or "Off"
                                        Label:SetText(Name .. ": " .. vA)
                                    end
                                    task.wait(1)
                                end
                            end)
                        end
                        z9_4()
                        local function z8_11()
                            local hb
                            local hc
                            local he
                            local hf
                            local hd
                            he = {}
                            hc = {}
                            hb = {}
                            hd = {}
                            hf = {}
                            local function hg(hh, hi)
                                table.insert(hb, hh:Connect(hi))
                            end
                            local function hk()
                                for k, v in hc do
                                    if k.Parent then
                                        k.CanCollide = v
                                    end
                                end
                                table.clear(hc)
                            end
                            local function ho()
                                for k, v in hd do
                                    if k.Parent then
                                        k.WalkSpeed = v
                                    end
                                end
                                table.clear(hd)
                            end
                            local function hs()
                                for k, v in he do
                                    if k.Parent then
                                        k.PlatformStand = v
                                    end
                                end
                                table.clear(he)
                            end
                            local function hw()
                                for k, v in hf do
                                    if k.Parent then
                                        k.HoldDuration = v[1]
                                        k.MaxActivationDistance = v[2]
                                        k.RequiresLineOfSight = v[3]
                                    end
                                end
                                table.clear(hf)
                            end
                            local function hA(hB)
                                if not hB:IsA("ProximityPrompt") then
                                    return
                                end
                                if not hf[hB] then
                                    hf[hB] = { hB.HoldDuration, hB.MaxActivationDistance, hB.RequiresLineOfSight }
                                end
                                hB.HoldDuration = 0
                                hB.MaxActivationDistance = 50
                                hB.RequiresLineOfSight = false
                            end
                            local MovementGroup = zT.Player:AddLeftGroupbox("Movement", "footprints")
                            MovementGroup:AddToggle("WalkSpeedEnabled", {
                                Text = "WalkSpeed",
                                Default = false,
                                Callback = function(hF)
                                    if not hF then
                                        ho()
                                    end
                                end
                            })
                            MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                            MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                            MovementGroup:AddToggle("NoClip", {
                                Text = "NoClip",
                                Default = false,
                                Callback = function(hH)
                                    if not hH then
                                        hk()
                                    end
                                end
                            })
                            MovementGroup:AddToggle("InstantProximityPrompt", {
                                Text = "Instant ProximityPrompt",
                                Default = false,
                                Callback = function(hJ)
                                    if hJ then
                                        for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                                            hA(v)
                                        end
                                    else
                                        hw()
                                    end
                                end
                            })
                            local FlyGroup = zT.Player:AddRightGroupbox("Fly", "feather")
                            FlyGroup:AddToggle("Fly", {
                                Text = "Fly",
                                Default = false,
                                Callback = function(hS)
                                    if not hS then
                                        hs()
                                    end
                                end
                            })
                            FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                            hg(Workspace.DescendantAdded, function(hU)
                                if Toggles.InstantProximityPrompt.Value then
                                    hA(hU)
                                end
                            end)
                            hg(RunService.Stepped, function()
                                local Character = pi.Character
                                if Toggles.NoClip.Value and Character then
                                    for k, v in Character:QueryDescendants("BasePart") do
                                        if hc[v] == nil then
                                            hc[v] = v.CanCollide
                                        end
                                        v.CanCollide = false
                                    end
                                end
                            end)
                            hg(UserInputService.JumpRequest, function()
                                local Character = pi.Character
                                local wM = Character and Character:FindFirstChildOfClass("Humanoid")
                                if Toggles.InfJump.Value and wM then
                                    wM:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end)
                            hg(RunService.RenderStepped, function(ic)
                                local Character = pi.Character
                                local wP = Character and Character:FindFirstChildOfClass("Humanoid")
                                local wQ = Character
                                if wQ then
                                    wQ = Character:FindFirstChild("HumanoidRootPart")
                                end
                                local wO_2 = wQ
                                local CurrentCamera = Workspace.CurrentCamera
                                if Toggles.WalkSpeedEnabled.Value and wP then
                                    if hd[wP] == nil then
                                        hd[wP] = wP.WalkSpeed
                                    end
                                    wP.WalkSpeed = Options.WalkSpeed.Value
                                end
                                if Toggles.Fly.Value and wO_2 and wP and CurrentCamera then
                                    if he[wP] == nil then
                                        he[wP] = wP.PlatformStand
                                    end
                                    wP.PlatformStand = true
                                    local wQ_8 = Vector3.zero
                                    if not UserInputService:GetFocusedTextBox() then
                                        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                            wQ_8 += CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                            wQ_8 -= CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                            wQ_8 -= CurrentCamera.CFrame.RightVector
                                        end
                                        local wW = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                                        if wW == 1 then
                                            wQ_8 += CurrentCamera.CFrame.RightVector
                                        end
                                        local wZ = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                                        if wZ == 1 then
                                            wQ_8 += Vector3.new(0, 1, 0)
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                            wQ_8 -= Vector3.new(0, 1, 0)
                                        end
                                    end
                                    wO_2.AssemblyLinearVelocity = Vector3.zero
                                    if wQ_8.Magnitude > 0 then
                                        wO_2.CFrame = wO_2.CFrame + wQ_8.Unit * Options.FlySpeed.Value * ic
                                    end
                                end
                            end)
                            Library:OnUnload(function()
                                for k, v in hb do
                                    v:Disconnect()
                                end
                                hk()
                                ho()
                                hs()
                                hw()
                            end)
                        end
                        z8_11()
                        local function z8_12()
                            local iA
                            local ja
                            local Lighting = game:GetService("Lighting")
                            local VirtualUser = game:GetService("VirtualUser")
                            local iz = {}
                            iA = {}
                            local CoreGui = game:GetService("CoreGui")
                            local GuiService = game:GetService("GuiService")
                            local iB
                            local iD = 0
                            local iC = false
                            local iE = os.clock()
                            local MenuGroup = zT.Settings:AddLeftGroupbox("Menu", "logs")
                            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                            local Label = MenuGroup:AddLabel("AFK triggers: 0")
                            local function iI()
                                local CurrentCamera = Workspace.CurrentCamera
                                if not CurrentCamera then
                                    return
                                end
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
                                iD += 1
                                iE = os.clock()
                                Label:SetText("AFK triggers: " .. iD)
                            end
                            local function onAntiGameplayPause(iR)
                                pcall(function()
                                    GuiService:SetGameplayPausedNotificationEnabled(not iR)
                                end)
                                pcall(function()
                                    local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                    if RobloxNetworkPauseNotificati then
                                        RobloxNetworkPauseNotificati.Enabled = not iR
                                    end
                                end)
                                if iR then
                                    pcall(function()
                                        if sethiddenproperty then
                                            sethiddenproperty(pi, "GameplayPaused", false)
                                        else
                                            pi.GameplayPaused = false
                                        end
                                    end)
                                end
                            end
                            local function i1()
                                for k, v in iA do
                                    local xj = k
                                    local xl = v
                                    if xj.Parent then
                                        pcall(function()
                                            xj.Enabled = xl
                                        end)
                                    end
                                end
                                table.clear(iA)
                                if iB then
                                    pcall(function()
                                        settings().Rendering.QualityLevel = iB.Quality
                                    end)
                                    Lighting.GlobalShadows = iB.Shadows
                                    Lighting.FogEnd = iB.Fog
                                    iB = nil
                                end
                            end
                            ja = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
                            local function jb(jc)
                                if ja[jc.ClassName] then
                                    if iA[jc] == nil then
                                        iA[jc] = jc.Enabled
                                    end
                                    jc.Enabled = false
                                end
                            end
                            MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
                            MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                            MenuGroup:AddToggle("Disable3D", {
                                Text = "Disable 3D Rendering",
                                Default = false,
                                Callback = function(jf)
                                    pcall(function()
                                        RunService:Set3dRenderingEnabled(not jf)
                                    end)
                                end
                            })
                            MenuGroup:AddToggle("FpsBoost", {
                                Text = "FPS Boost",
                                Default = false,
                                Callback = function(jk)
                                    if not jk then
                                        i1()
                                        return
                                    end
                                    iB = {
                                        Quality = settings().Rendering.QualityLevel,
                                        Shadows = Lighting.GlobalShadows,
                                        Fog = Lighting.FogEnd
                                    }
                                    pcall(function()
                                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                                    end)
                                    Lighting.GlobalShadows = false
                                    Lighting.FogEnd = 9000000000
                                    for k, v in Workspace:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                        jb(v)
                                    end
                                end
                            })
                            MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                            Library.ToggleKeybind = Options.MenuKeybind
                            local ScriptGroup = zT.Settings:AddLeftGroupbox("Script", "terminal")
                            ScriptGroup:AddButton({
                                Text = "Unload Script",
                                Func = function()
                                    Library:Unload()
                                end
                            })
                            table.insert(iz, pi.Idled:Connect(function()
                                if Toggles.AntiAfk.Value then
                                    pcall(iI)
                                end
                            end))
                            table.insert(iz, Workspace.DescendantAdded:Connect(function(jz)
                                if Toggles.FpsBoost.Value then
                                    jb(jz)
                                end
                            end))
                            local function jC(jD)
                                if iC or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                    return
                                end
                                iC = true
                                local xx_2 = pcall(function()
                                    if jD then
                                        TeleportService:Teleport(game.PlaceId, pi)
                                    else
                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, pi)
                                    end
                                end)
                                if not xx_2 then
                                    iC = false
                                    if not jD then
                                        jC(true)
                                    end
                                end
                            end
                            table.insert(iz, TeleportService.TeleportInitFailed:Connect(function(jQ)
                                if jQ == pi and iC then
                                    iC = false
                                    task.delay(3, function()
                                        jC(true)
                                    end)
                                end
                            end))
                            task.spawn(function()
                                local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                                local xD = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                                if Library.Unloaded or not xD then
                                    return
                                end
                                table.insert(iz, xD.ChildAdded:Connect(function(j0)
                                    if j0.Name == "ErrorPrompt" then
                                        jC(false)
                                    end
                                end))
                            end)
                            task.spawn(function()
                                while not Library.Unloaded do
                                    if Toggles.AntiGameplayPause.Value then
                                        onAntiGameplayPause(true)
                                    end
                                    local xG = Toggles.AntiAfk.Value and os.clock() - iE >= 60
                                    if xG then
                                        pcall(iI)
                                    end
                                    task.wait(1)
                                end
                            end)
                            Library:OnUnload(function()
                                for k, v in iz do
                                    v:Disconnect()
                                end
                                onAntiGameplayPause(false)
                                i1()
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(true)
                                end)
                            end)
                            ThemeManager:SetLibrary(Library)
                            ThemeManager:SetFolder("OuroborosHub")
                            ThemeManager:SaveDefault("Evil Hello Kitty")
                            ThemeManager:ApplyToTab(zT.Settings)
                            ThemeManager:LoadDefault()
                        end
                        z8_12()
                        local function z8_13()
                            local yK
                            local yI
                            local yE
                            local yP
                            local yJ
                            local yH
                            yE = nil
                            yH = nil
                            yI = nil
                            yJ = nil
                            yK = nil
                            yP = nil
                            local yF, Label, yL, yM, Label2, Label3
                            yK = function(kj, kk)
                                return string.format('<font color="%s">%s</font>', kk, kj)
                            end
                            yM = function(km, kn, ko)
                                return string.format("<b>%s</b> %s %s", km, yK("-", "#5a6070"), yK(kn, ko))
                            end
                            yH = "#e8a34d"
                            yJ = "#7fd47f"
                            yP = "#e05a5a"
                            local yQ = "#8b93a3"
                            local function yS()
                                local xP = hookfunction ~= nil
                                local xQ = hookmetamethod ~= nil
                                local xR = getrawmetatable ~= nil
                                local xS = setrawmetatable ~= nil
                                local xT = getgc ~= nil
                                local xU = getgenv ~= nil
                                local xV = getreg ~= nil
                                local xW = getconnections ~= nil
                                local xX = firesignal ~= nil
                                local xY = getcallbackvalue ~= nil
                                local xZ = setclipboard ~= nil
                                local x_ = getcustomasset ~= nil
                                local x0 = getnamecallmethod ~= nil
                                local x1 = isexecutorclosure ~= nil
                                local x2 = fireproximityprompt ~= nil
                                local x3 = firetouchinterest ~= nil
                                local x4 = WebSocket ~= nil
                                local x5 = readfile ~= nil
                                local x6 = writefile ~= nil
                                local x7 = request
                                local yi = if x7 then 1 else 0
                                local yg = 3346 * yi + 1900 * (1 - yi)
                                local yh = 1930 * yi + 2485 * (1 - yi)
                                if not ((yg * 2203 + yh * 438 + yg * yh) % 16777213 == 14674358) then
                                    x7 = http_request
                                end
                                local x8 = x7 ~= nil
                                local ya = (debug and debug.getupvalues) ~= nil
                                local yc = (debug and debug.setupvalue) ~= nil
                                local yd = 0
                                local ye = { xP, xQ, xR, xS, xT, xU, xV, xW, xX, xY, xZ, x_, x0, x1, x2, x3, x4, x5, x6, x8, ya, yc }
                                for i, v in ipairs(ye) do
                                    if v then
                                        yd += 1
                                    end
                                end
                                local xP_2 = yd / #ye
                                if xP_2 >= 0.9 then
                                    return yK("Full Support", yJ)
                                elseif xP_2 >= 0.6 then
                                    return yK("Half Support", yH)
                                else
                                    return yK("Low Support", yP)
                                end
                            end
                            yE = "Unknown"
                            pcall(function()
                                local yq_2
                                local yp_3
                                if identifyexecutor then
                                    yq_2, yp_3 = identifyexecutor()
                                    local yr = yq_2 ~= ""
                                    local ys = type(yq_2) == "string" and yr
                                    if ys then
                                        local yr_2 = type(yp_3) == "string" and yp_3 ~= "" and yq_2 .. " " .. yp_3
                                        yE = yr_2 or yq_2
                                    end
                                end
                            end)
                            local yT = yS()
                            yI = os.clock()
                            yL = function()
                                local yx = math.floor(os.clock() - yI)
                                if yx < 60 then
                                    return yx .. "s"
                                elseif yx < 3600 then
                                    return string.format("%dm %ds", yx // 60, yx % 60)
                                else
                                    return string.format("%dh %dm", yx // 3600, yx % 3600 // 60)
                                end
                            end
                            local UserGroup = zT.Info:AddLeftGroupbox("User", "circle-user")
                            UserGroup:AddPlayerInfo("InfoUserCard", { Player = pi, Title = "User", HeaderIcon = "user", Collapsible = false })
                            UserGroup:AddLabel(yM("User", pi.DisplayName .. " @" .. pi.Name, yJ), true)
                            UserGroup:AddLabel(yM("UserId", tostring(pi.UserId), "#6ec1ff"), true)
                            UserGroup:AddLabel(yM("Executor", yE .. "  " .. yT, yJ), true)
                            UserGroup:AddDivider()
                            Label3 = UserGroup:AddLabel(yM("Session", yL(), yH), true)
                            UserGroup:AddDivider()
                            UserGroup:AddButton({
                                Text = "Copy Username",
                                Func = function()
                                    z4(pi.Name, "Copied username")
                                end
                            })
                            UserGroup:AddButton({
                                Text = "Copy Profile Link",
                                Func = function()
                                    z4("https://www.roblox.com/users/" .. tostring(pi.UserId) .. "/profile", "Copied profile link")
                                end
                            })
                            local SessionGroup = zT.Info:AddRightGroupbox("Session", "signal")
                            SessionGroup:AddDivider("Server")
                            SessionGroup:AddLabel(yM("Game", zU, "#6ec1ff"), true)
                            Label2 = SessionGroup:AddLabel(yM("Players", "0/0", yJ), true)
                            yF = tostring(game.JobId)
                            local yR = #yF > 18 and string.sub(yF, 1, 18) .. "..."
                            local yT_2 = yR or yF
                            SessionGroup:AddLabel(yM("Job", yT_2, yQ), true)
                            Label = SessionGroup:AddLabel(yM("Ping", "0 ms", yH), true)
                            SessionGroup:AddDivider()
                            SessionGroup:AddButton({
                                Text = "Rejoin Server",
                                Func = function()
                                    TeleportService:Teleport(game.PlaceId, pi)
                                end
                            })
                            SessionGroup:AddButton({
                                Text = "Copy Job ID",
                                Func = function()
                                    z4(yF, "Copied Job ID")
                                end
                            })
                            task.spawn(function()
                                local yA_2
                                local yz_3
                                while true do
                                    task.wait(1)
                                    if Library.Unloaded then
                                        break
                                    end
                                    Label3:SetText(yM("Session", yL(), yH))
                                    Label2:SetText(yM("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), yJ))
                                    yz_3, yA_2 = pcall(function()
                                        return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                    end)
                                    local yz_4 = yz_3 and yA_2 .. " ms" or "n/a"
                                    Label:SetText(yM("Ping", yz_4, yH))
                                end
                            end)
                            local SocialsGroup = zT.Info:AddRightGroupbox("Socials", "link")
                            SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                            SocialsGroup:AddButton({
                                Text = "Rscripts",
                                Func = function()
                                    if setclipboard then
                                        setclipboard(z0)
                                    elseif toclipboard then
                                        toclipboard(z0)
                                    end
                                    Library:Notify("Copied Rscripts profile to clipboard")
                                end
                            })
                            SocialsGroup:AddButton({
                                Text = "Website",
                                Func = function()
                                    z4(zV, "Copied website link")
                                end
                            })
                        end
                        z8_13()
                        local function z8_14()
                            SaveManager:SetLibrary(Library)
                            SaveManager:IgnoreThemeSettings()
                            SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                            SaveManager:SetFolder("OuroborosHub/LaunchANuke")
                            local lE = SaveManager:BuildConfigSection(zT.Settings)
                            local function lF(lG, lH)
                                local yW_2 = (lG == "Toggle" and Toggles or Options)[lH]
                                local yV_5 = type(yW_2) == "table" and yW_2.Type == lG
                                return yV_5 and yW_2 or nil
                            end
                            local function lP(lQ, lR)
                                local Type = lR.Type
                                if Type == "Toggle" then
                                    return { idx = lQ, type = "Toggle", value = lR.Value == true }
                                elseif Type == "Slider" then
                                    return { idx = lQ, type = "Slider", value = tostring(lR.Value) }
                                elseif Type == "Dropdown" then
                                    return { idx = lQ, type = "Dropdown", multi = lR.Multi == true, value = lR.Value }
                                elseif Type == "Input" then
                                    local y2 = lR.Value
                                    local y6 = if y2 then 1 else 0
                                    local y4 = 957 * y6 + 3302 * (1 - y6)
                                    local y5 = 214 * y6 + 1969 * (1 - y6)
                                    if not ((y4 * 2914 + y5 * 1704 + y4 * y5) % 16777213 == 3358152) then
                                        y2 = ""
                                    end
                                    return { idx = lQ, type = "Input", text = tostring(y2) }
                                elseif Type == "ColorPicker" then
                                    return { idx = lQ, type = "ColorPicker", value = lR.Value:ToHex(), transparency = lR.Transparency }
                                elseif Type == "KeyPicker" then
                                    return {
                                        idx = lQ,
                                        type = "KeyPicker",
                                        mode = lR.Mode,
                                        key = lR.Value,
                                        modifiers = lR.Modifiers,
                                        toggled = lR.Toggled
                                    }
                                else
                                    return nil
                                end
                            end
                            local function lT()
                                local y8 = {}
                                for i, v in ipairs({ Toggles, Options }) do
                                    for k, v in pairs(v) do
                                        local y9 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                        if y9 then
                                            local y9_2 = lP(k, v)
                                            if y9_2 then
                                                y8[#y8 + 1] = y9_2
                                            end
                                        end
                                    end
                                end
                                table.sort(y8, function(l0, l1)
                                    if l0.type ~= l1.type then
                                        return l0.type < l1.type
                                    end
                                    return l0.idx < l1.idx
                                end)
                                return { objects = y8 }
                            end
                            local function l2(l3)
                                local zp
                                zp = nil
                                local zq = type(l3) ~= "table"
                                local zu = if zq then 1 else 0
                                local zs = 1851 * zu + 60 * (1 - zu)
                                local zt = 3916 * zu + 2687 * (1 - zu)
                                if not ((zs * 405 + zt * 2225 + zs * zt) % 16777213 == 16711271) then
                                    zq = type(l3.idx) ~= "string"
                                end
                                if not zq then
                                    zq = type(l3.type) ~= "string"
                                end
                                if not zq then
                                    zq = SaveManager.Ignore[l3.idx]
                                end
                                if zq then
                                    return false
                                end
                                zp = lF(l3.type, l3.idx)
                                if not zp then
                                    return false
                                end
                                local zq_2 = pcall(function()
                                    if l3.type == "Input" then
                                        if type(l3.text) ~= "string" then
                                            return
                                        end
                                        zp:SetValue(l3.text)
                                    elseif l3.type == "ColorPicker" then
                                        zp:SetValueRGB(Color3.fromHex(l3.value), l3.transparency)
                                    elseif l3.type == "KeyPicker" then
                                        zp:SetValue({ l3.key, l3.mode, l3.modifiers })
                                        if l3.mode == "Toggle" and l3.toggled ~= nil then
                                            zp.Toggled = l3.toggled
                                            zp:Update()
                                        end
                                    else
                                        zp:SetValue(l3.value)
                                    end
                                end)
                                return zq_2
                            end
                            lE:AddDivider()
                            lE:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                            lE:AddButton("Export Config to Clipboard", function()
                                local zw_2
                                local zv_4
                                zv_4, zw_2 = pcall(HttpService.JSONEncode, HttpService, lT())
                                if not zv_4 then
                                    Library:Notify("Failed to encode the config")
                                    return
                                end
                                local zv_5 = setclipboard
                                local zB = if zv_5 then 1 else 0
                                local zz = 4092 * zB + 1167 * (1 - zB)
                                local zA = 3882 * zB + 1477 * (1 - zB)
                                if not ((zz * 2227 + zA * 1896 + zz * zA) % 16777213 == 15581087) then
                                    zv_5 = toclipboard
                                end
                                local zx = zv_5
                                local zv_6 = type(zx) ~= "function" or not pcall(zx, zw_2)
                                if zv_6 then
                                    Library:Notify("Your executor does not support copying to the clipboard")
                                    return
                                end
                                Library:Notify("Config copied to clipboard", 6)
                            end)
                            lE:AddButton("Import Config from Clipboard Text", function()
                                local zE_3
                                local zC = Options.SaveManager_ImportSource.Value or ""
                                local zC_3
                                local zD = tostring(zC):match("^%s*(.-)%s*$")
                                if zD == "" then
                                    Library:Notify("Paste an exported config into the box first")
                                    return
                                end
                                zC_3, zE_3 = pcall(HttpService.JSONDecode, HttpService, zD)
                                local zD_3 = not zC_3 or type(zE_3) ~= "table" or type(zE_3.objects) ~= "table"
                                if zD_3 then
                                    Library:Notify("That is not a valid exported config")
                                    return
                                end
                                local zC_4 = 0
                                for i, v in ipairs(zE_3.objects) do
                                    if l2(v) then
                                        zC_4 += 1
                                    end
                                end
                                if zC_4 == 0 then
                                    Library:Notify("No settings in that config matched this script")
                                    return
                                end
                                Options.SaveManager_ImportSource:SetValue("")
                                local zE_4 = zC_4 == 1 and ""
                                local zR = if zE_4 then 1 else 0
                                local zP = 852 * zR + 3812 * (1 - zR)
                                local zQ = 2347 * zR + 1659 * (1 - zR)
                                if not ((zP * 2368 + zQ * 248 + zP * zQ) % 16777213 == 4599236) then
                                    zE_4 = "s"
                                end
                                Library:Notify(("Imported %d setting%s"):format(zC_4, zE_4), 6)
                            end)
                            SaveManager:LoadAutoloadConfig()
                        end
                        z8_14()
                        if Toggles.HideUiOnStart.Value then
                            Library:Toggle(false)
                        end
                        o5.Start()
                    end
                else
                    ph.PlaceGenerators = fn807
                    ph.PlaceCollectors = fn1002
                    ph.Rebirth = fn707
                    ph.BuyUpgrades = fn798
                    ph.BuyNuke = fn106
                    ph.BuyCities = fn16
                    ph.BuyZone = fn885
                    ph.BuyRoll = fn803
                    ph.Roll = fn1043
                    ph.Launch = fn175
                    ph.Skip = fn203
                    ph.Lock = fn758
                    ph.Collect = fn459
                    o5.SetEnabled = fn1041
                    o5.Configure = fn822
                    o5.GetOptions = fn703
                    o5.GetReport = fn360
                    o5.Step = fn392
                    o5.Start = fn111
                    o5.Unload = fn95
                    getgenv().OuroborosLaunchANuke = o5
                    pD_4 = function()
                        local z6
                        local z4
                        local Unload
                        local Library
                        Library = nil
                        Unload = nil
                        z4 = nil
                        z6 = nil
                        local UserInputService, zT, zU, zV, ThemeManager, Options, RunService, onDiscord, HttpService, z0, Toggles, TeleportService, SaveManager
                        zV = "https://ouroboros-hub-rbx.web.app/"
                        RunService = game:GetService("RunService")
                        zU = "Launch A Nuke"
                        z0 = "https://rscripts.net/@Ouroboros"
                        UserInputService = game:GetService("UserInputService")
                        TeleportService = game:GetService("TeleportService")
                        HttpService = game:GetService("HttpService")
                        z6 = "https://discord.gg/ehKVq7pf7v"
                        Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                        ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                        SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                        Toggles = Library.Toggles
                        Options = Library.Options
                        Unload = o5.Unload
                        o5.Unload = function()
                            if not Library.Unloaded then
                                Library:Unload()
                            else
                                Unload()
                            end
                        end
                        Library:OnUnload(Unload)
                        z4 = function(fX, fY)
                            if setclipboard then
                                setclipboard(fX)
                            elseif toclipboard then
                                toclipboard(fX)
                            end
                            Library:Notify(fY)
                        end
                        onDiscord = function()
                            z4(z6, "Copied Discord invite to clipboard")
                        end
                        local Window = Library:CreateWindow({
                            Title = "Ouroboros",
                            Font = Enum.Font.BuilderSans,
                            Footer = { { Text = z6, Copyable = true }, "|", zU },
                            Icon = 78539693571783,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 0,
                            SidebarCompacted = true,
                            TabSwipeFrom = "bottom",
                            Animations = { TabSwitch = true }
                        })
                        Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
                        zT = {
                            Info = Window:AddTab("Info", "info"),
                            Main = Window:AddTab("Automation", "gamepad-2"),
                            Rolls = Window:AddTab("Rolls", "dices"),
                            Player = Window:AddTab("Player", "person-standing"),
                            Settings = Window:AddTab("Settings", "settings")
                        }
                        for k, v in zT do
                            if k ~= "Info" then
                                local DiscordGroup = v:AddLeftGroupbox("Discord")
                                DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                                DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                            end
                        end
                        local function z8_2(f8, f9, ga)
                            f8:AddToggle("Auto" .. f9, {
                                Text = ga,
                                Default = false,
                                Callback = function(gb)
                                    o5.SetEnabled(f9, gb)
                                end
                            })
                        end
                        local function z9(gg, gh, gi, gj, gk)
                            gg:AddInput(gh, {
                                Text = gi,
                                Default = tostring(gj),
                                Numeric = true,
                                Finished = true,
                                AllowEmpty = false,
                                EmptyReset = tostring(gj),
                                VerifyValue = function(gl)
                                    local vr = tonumber(gl)
                                    return vr and vr >= gk and vr < math.huge
                                end,
                                Callback = function(gp)
                                    local Configure = o5.Configure
                                    local vv = tonumber(gp) or gj
                                    Configure(gh, vv)
                                end
                            })
                        end
                        local Aa = o5.GetOptions()
                        local BaseGroup = zT.Main:AddLeftGroupbox("Base", "house")
                        z8_2(BaseGroup, "PlaceGenerators", "Auto Place Generators")
                        z8_2(BaseGroup, "PlaceCollectors", "Auto Place Collectors")
                        z8_2(BaseGroup, "Collect", "Auto Collect Atoms")
                        z8_2(BaseGroup, "Lock", "Auto Lock")
                        z8_2(BaseGroup, "Rebirth", "Auto Rebirth")
                        local LaunchGroup = zT.Main:AddLeftGroupbox("Launch", "rocket")
                        z8_2(LaunchGroup, "Launch", "Auto Launch")
                        z8_2(LaunchGroup, "Skip", "Auto Skip")
                        z9(LaunchGroup, "MinimumAtoms", "Minimum Launch Atoms", pn.MinimumAtoms, pv.MIN_ATOMS_TO_LAUNCH)
                        local PurchasesGroup = zT.Main:AddRightGroupbox("Purchases", "shopping-cart")
                        z8_2(PurchasesGroup, "BuyNuke", "Auto Buy Nuke")
                        z8_2(PurchasesGroup, "BuyCities", "Auto Buy Cities")
                        z8_2(PurchasesGroup, "BuyZone", "Auto Buy Zone")
                        PurchasesGroup:AddDivider("Upgrades")
                        z8_2(PurchasesGroup, "BuyUpgrades", "Auto Buy Upgrades")
                        PurchasesGroup:AddDropdown("Upgrades", {
                            Text = "Base Upgrades",
                            Values = Aa.Upgrades,
                            Multi = true,
                            Default = {},
                            Callback = function(gA)
                                o5.Configure("Upgrades", gA)
                            end
                        })
                        local RollingGroup = zT.Rolls:AddLeftGroupbox("Rolling", "dices")
                        z8_2(RollingGroup, "Roll", "Auto Roll")
                        z8_2(RollingGroup, "BuyRoll", "Auto Buy Roll")
                        RollingGroup:AddToggle("WaitForRoll", {
                            Text = "Wait for Affordable Selected Rolls",
                            Default = false,
                            Callback = function(gD)
                                o5.Configure("WaitForRoll", gD)
                            end
                        })
                        z9(RollingGroup, "MaxPrice", "Maximum Roll Price (0 = Unlimited)", 0, 0)
                        z9(RollingGroup, "CashReserve", "Cash to Keep", 0, 0)
                        local BuyFiltersGroup = zT.Rolls:AddRightGroupbox("Buy Filters", "list-filter")
                        BuyFiltersGroup:AddDropdown("RollType", {
                            Text = "Item Type",
                            Values = { "All", "Generators", "Collectors" },
                            Default = 1,
                            Callback = function(gG)
                                o5.Configure("RollType", gG)
                            end
                        })
                        for k, v in { "Rarities", "Variants", "Items" } do
                            local Ar = v
                            local z9_1 = "Roll" .. Ar
                            local Ac = Ar == "Items" and "Items (Empty = All)" or Ar
                            local Ab_5 = Aa[Ar]
                            local Ad_1 = Ar == "Items" and {} or Aa[Ar]
                            BuyFiltersGroup:AddDropdown(z9_1, {
                                Text = Ac,
                                Values = Ab_5,
                                Multi = true,
                                Default = Ad_1,
                                Callback = function(gL)
                                    o5.Configure(Ar, gL)
                                end
                            })
                        end
                        local function z9_2()
                            local Label3, vJ, Label4, Label5, Label2
                            local ReportGroup2 = zT.Main:AddRightGroupbox("Report", "chart-no-axes-column")
                            Label5 = ReportGroup2:AddLabel("Cash: 0")
                            Label4 = ReportGroup2:AddLabel("Atoms: 0")
                            Label3 = ReportGroup2:AddLabel("Rebirths: 0")
                            Label2 = ReportGroup2:AddLabel("Buildings: 0")
                            local ReportGroup = zT.Rolls:AddRightGroupbox("Report", "chart-no-axes-column")
                            vJ = {}
                            for k, v in {
                                { "PlaceGenerators", "Generators", ReportGroup2 },
                                { "PlaceCollectors", "Collectors", ReportGroup2 },
                                { "Collect", "Collect", ReportGroup2 },
                                { "Lock", "Lock", ReportGroup2 },
                                { "Rebirth", "Rebirth", ReportGroup2 },
                                { "Launch", "Launch", ReportGroup2 },
                                { "Skip", "Skip", ReportGroup2 },
                                { "BuyNuke", "Nukes", ReportGroup2 },
                                { "BuyCities", "Cities", ReportGroup2 },
                                { "BuyZone", "Zones", ReportGroup2 },
                                { "BuyUpgrades", "Upgrades", ReportGroup2 },
                                { "Roll", "Roll", ReportGroup },
                                { "BuyRoll", "Buy roll", ReportGroup }
                            } do
                                vJ[v[1]] = { Name = v[2], Label = v[3]:AddLabel(v[2] .. ": Off", true) }
                            end
                            task.spawn(function()
                                while not Library.Unloaded do
                                    local vx = o5.GetReport()
                                    Label5:SetText("Cash: " .. tostring(vx.Cash))
                                    Label4:SetText("Atoms: " .. tostring(vx.Atoms))
                                    Label3:SetText("Rebirths: " .. tostring(vx.Rebirths))
                                    Label2:SetText("Buildings: " .. tostring(vx.Buildings))
                                    for k, v in vJ do
                                        local Label = v.Label
                                        local Name = v.Name
                                        local vA = vx.Status[k] or "Off"
                                        Label:SetText(Name .. ": " .. vA)
                                    end
                                    task.wait(1)
                                end
                            end)
                        end
                        z9_2()
                        local function z8_4()
                            local hb
                            local hc
                            local he
                            local hf
                            local hd
                            he = {}
                            hc = {}
                            hb = {}
                            hd = {}
                            hf = {}
                            local function hg(hh, hi)
                                table.insert(hb, hh:Connect(hi))
                            end
                            local function hk()
                                for k, v in hc do
                                    if k.Parent then
                                        k.CanCollide = v
                                    end
                                end
                                table.clear(hc)
                            end
                            local function ho()
                                for k, v in hd do
                                    if k.Parent then
                                        k.WalkSpeed = v
                                    end
                                end
                                table.clear(hd)
                            end
                            local function hs()
                                for k, v in he do
                                    if k.Parent then
                                        k.PlatformStand = v
                                    end
                                end
                                table.clear(he)
                            end
                            local function hw()
                                for k, v in hf do
                                    if k.Parent then
                                        k.HoldDuration = v[1]
                                        k.MaxActivationDistance = v[2]
                                        k.RequiresLineOfSight = v[3]
                                    end
                                end
                                table.clear(hf)
                            end
                            local function hA(hB)
                                if not hB:IsA("ProximityPrompt") then
                                    return
                                end
                                if not hf[hB] then
                                    hf[hB] = { hB.HoldDuration, hB.MaxActivationDistance, hB.RequiresLineOfSight }
                                end
                                hB.HoldDuration = 0
                                hB.MaxActivationDistance = 50
                                hB.RequiresLineOfSight = false
                            end
                            local MovementGroup = zT.Player:AddLeftGroupbox("Movement", "footprints")
                            MovementGroup:AddToggle("WalkSpeedEnabled", {
                                Text = "WalkSpeed",
                                Default = false,
                                Callback = function(hF)
                                    if not hF then
                                        ho()
                                    end
                                end
                            })
                            MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                            MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                            MovementGroup:AddToggle("NoClip", {
                                Text = "NoClip",
                                Default = false,
                                Callback = function(hH)
                                    if not hH then
                                        hk()
                                    end
                                end
                            })
                            MovementGroup:AddToggle("InstantProximityPrompt", {
                                Text = "Instant ProximityPrompt",
                                Default = false,
                                Callback = function(hJ)
                                    if hJ then
                                        for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                                            hA(v)
                                        end
                                    else
                                        hw()
                                    end
                                end
                            })
                            local FlyGroup = zT.Player:AddRightGroupbox("Fly", "feather")
                            FlyGroup:AddToggle("Fly", {
                                Text = "Fly",
                                Default = false,
                                Callback = function(hS)
                                    if not hS then
                                        hs()
                                    end
                                end
                            })
                            FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                            hg(Workspace.DescendantAdded, function(hU)
                                if Toggles.InstantProximityPrompt.Value then
                                    hA(hU)
                                end
                            end)
                            hg(RunService.Stepped, function()
                                local Character = pi.Character
                                if Toggles.NoClip.Value and Character then
                                    for k, v in Character:QueryDescendants("BasePart") do
                                        if hc[v] == nil then
                                            hc[v] = v.CanCollide
                                        end
                                        v.CanCollide = false
                                    end
                                end
                            end)
                            hg(UserInputService.JumpRequest, function()
                                local Character = pi.Character
                                local wM = Character and Character:FindFirstChildOfClass("Humanoid")
                                if Toggles.InfJump.Value and wM then
                                    wM:ChangeState(Enum.HumanoidStateType.Jumping)
                                end
                            end)
                            hg(RunService.RenderStepped, function(ic)
                                local Character = pi.Character
                                local wP = Character and Character:FindFirstChildOfClass("Humanoid")
                                local wQ = Character
                                if wQ then
                                    wQ = Character:FindFirstChild("HumanoidRootPart")
                                end
                                local wO_1 = wQ
                                local CurrentCamera = Workspace.CurrentCamera
                                if Toggles.WalkSpeedEnabled.Value and wP then
                                    if hd[wP] == nil then
                                        hd[wP] = wP.WalkSpeed
                                    end
                                    wP.WalkSpeed = Options.WalkSpeed.Value
                                end
                                if Toggles.Fly.Value and wO_1 and wP and CurrentCamera then
                                    if he[wP] == nil then
                                        he[wP] = wP.PlatformStand
                                    end
                                    wP.PlatformStand = true
                                    local wQ_4 = Vector3.zero
                                    if not UserInputService:GetFocusedTextBox() then
                                        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                            wQ_4 += CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                            wQ_4 -= CurrentCamera.CFrame.LookVector
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                            wQ_4 -= CurrentCamera.CFrame.RightVector
                                        end
                                        local wW = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                                        if wW == 1 then
                                            wQ_4 += CurrentCamera.CFrame.RightVector
                                        end
                                        local wZ = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                                        if wZ == 1 then
                                            wQ_4 += Vector3.new(0, 1, 0)
                                        end
                                        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                                            wQ_4 -= Vector3.new(0, 1, 0)
                                        end
                                    end
                                    wO_1.AssemblyLinearVelocity = Vector3.zero
                                    if wQ_4.Magnitude > 0 then
                                        wO_1.CFrame = wO_1.CFrame + wQ_4.Unit * Options.FlySpeed.Value * ic
                                    end
                                end
                            end)
                            Library:OnUnload(function()
                                for k, v in hb do
                                    v:Disconnect()
                                end
                                hk()
                                ho()
                                hs()
                                hw()
                            end)
                        end
                        z8_4()
                        local function z8_5()
                            local iA
                            local ja
                            local Lighting = game:GetService("Lighting")
                            local VirtualUser = game:GetService("VirtualUser")
                            local iz = {}
                            iA = {}
                            local CoreGui = game:GetService("CoreGui")
                            local GuiService = game:GetService("GuiService")
                            local iB
                            local iD = 0
                            local iC = false
                            local iE = os.clock()
                            local MenuGroup = zT.Settings:AddLeftGroupbox("Menu", "logs")
                            MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                            local Label = MenuGroup:AddLabel("AFK triggers: 0")
                            local function iI()
                                local CurrentCamera = Workspace.CurrentCamera
                                if not CurrentCamera then
                                    return
                                end
                                VirtualUser:CaptureController()
                                VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
                                iD += 1
                                iE = os.clock()
                                Label:SetText("AFK triggers: " .. iD)
                            end
                            local function onAntiGameplayPause(iR)
                                pcall(function()
                                    GuiService:SetGameplayPausedNotificationEnabled(not iR)
                                end)
                                pcall(function()
                                    local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                    if RobloxNetworkPauseNotificati then
                                        RobloxNetworkPauseNotificati.Enabled = not iR
                                    end
                                end)
                                if iR then
                                    pcall(function()
                                        if sethiddenproperty then
                                            sethiddenproperty(pi, "GameplayPaused", false)
                                        else
                                            pi.GameplayPaused = false
                                        end
                                    end)
                                end
                            end
                            local function i1()
                                for k, v in iA do
                                    local xj = k
                                    local xl = v
                                    if xj.Parent then
                                        pcall(function()
                                            xj.Enabled = xl
                                        end)
                                    end
                                end
                                table.clear(iA)
                                if iB then
                                    pcall(function()
                                        settings().Rendering.QualityLevel = iB.Quality
                                    end)
                                    Lighting.GlobalShadows = iB.Shadows
                                    Lighting.FogEnd = iB.Fog
                                    iB = nil
                                end
                            end
                            ja = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
                            local function jb(jc)
                                if ja[jc.ClassName] then
                                    if iA[jc] == nil then
                                        iA[jc] = jc.Enabled
                                    end
                                    jc.Enabled = false
                                end
                            end
                            MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
                            MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                            MenuGroup:AddToggle("Disable3D", {
                                Text = "Disable 3D Rendering",
                                Default = false,
                                Callback = function(jf)
                                    pcall(function()
                                        RunService:Set3dRenderingEnabled(not jf)
                                    end)
                                end
                            })
                            MenuGroup:AddToggle("FpsBoost", {
                                Text = "FPS Boost",
                                Default = false,
                                Callback = function(jk)
                                    if not jk then
                                        i1()
                                        return
                                    end
                                    iB = {
                                        Quality = settings().Rendering.QualityLevel,
                                        Shadows = Lighting.GlobalShadows,
                                        Fog = Lighting.FogEnd
                                    }
                                    pcall(function()
                                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                                    end)
                                    Lighting.GlobalShadows = false
                                    Lighting.FogEnd = 9000000000
                                    for k, v in Workspace:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                        jb(v)
                                    end
                                end
                            })
                            MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                            MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                            Library.ToggleKeybind = Options.MenuKeybind
                            local ScriptGroup = zT.Settings:AddLeftGroupbox("Script", "terminal")
                            ScriptGroup:AddButton({
                                Text = "Unload Script",
                                Func = function()
                                    Library:Unload()
                                end
                            })
                            table.insert(iz, pi.Idled:Connect(function()
                                if Toggles.AntiAfk.Value then
                                    pcall(iI)
                                end
                            end))
                            table.insert(iz, Workspace.DescendantAdded:Connect(function(jz)
                                if Toggles.FpsBoost.Value then
                                    jb(jz)
                                end
                            end))
                            local function jC(jD)
                                if iC or Library.Unloaded or not Toggles.AutoReconnect.Value then
                                    return
                                end
                                iC = true
                                local xx_1 = pcall(function()
                                    if jD then
                                        TeleportService:Teleport(game.PlaceId, pi)
                                    else
                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, pi)
                                    end
                                end)
                                if not xx_1 then
                                    iC = false
                                    if not jD then
                                        jC(true)
                                    end
                                end
                            end
                            table.insert(iz, TeleportService.TeleportInitFailed:Connect(function(jQ)
                                if jQ == pi and iC then
                                    iC = false
                                    task.delay(3, function()
                                        jC(true)
                                    end)
                                end
                            end))
                            task.spawn(function()
                                local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                                local xD = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                                if Library.Unloaded or not xD then
                                    return
                                end
                                table.insert(iz, xD.ChildAdded:Connect(function(j0)
                                    if j0.Name == "ErrorPrompt" then
                                        jC(false)
                                    end
                                end))
                            end)
                            task.spawn(function()
                                while not Library.Unloaded do
                                    if Toggles.AntiGameplayPause.Value then
                                        onAntiGameplayPause(true)
                                    end
                                    local xG = Toggles.AntiAfk.Value and os.clock() - iE >= 60
                                    if xG then
                                        pcall(iI)
                                    end
                                    task.wait(1)
                                end
                            end)
                            Library:OnUnload(function()
                                for k, v in iz do
                                    v:Disconnect()
                                end
                                onAntiGameplayPause(false)
                                i1()
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(true)
                                end)
                            end)
                            ThemeManager:SetLibrary(Library)
                            ThemeManager:SetFolder("OuroborosHub")
                            ThemeManager:SaveDefault("Evil Hello Kitty")
                            ThemeManager:ApplyToTab(zT.Settings)
                            ThemeManager:LoadDefault()
                        end
                        z8_5()
                        local function z8_6()
                            local yK
                            local yI
                            local yE
                            local yP
                            local yJ
                            local yH
                            yE = nil
                            yH = nil
                            yI = nil
                            yJ = nil
                            yK = nil
                            yP = nil
                            local yF, Label, yL, yM, Label2, Label3
                            yK = function(kj, kk)
                                return string.format('<font color="%s">%s</font>', kk, kj)
                            end
                            yM = function(km, kn, ko)
                                return string.format("<b>%s</b> %s %s", km, yK("-", "#5a6070"), yK(kn, ko))
                            end
                            yH = "#e8a34d"
                            yJ = "#7fd47f"
                            yP = "#e05a5a"
                            local yQ = "#8b93a3"
                            local function yS()
                                local xP = hookfunction ~= nil
                                local xQ = hookmetamethod ~= nil
                                local xR = getrawmetatable ~= nil
                                local xS = setrawmetatable ~= nil
                                local xT = getgc ~= nil
                                local xU = getgenv ~= nil
                                local xV = getreg ~= nil
                                local xW = getconnections ~= nil
                                local xX = firesignal ~= nil
                                local xY = getcallbackvalue ~= nil
                                local xZ = setclipboard ~= nil
                                local x_ = getcustomasset ~= nil
                                local x0 = getnamecallmethod ~= nil
                                local x1 = isexecutorclosure ~= nil
                                local x2 = fireproximityprompt ~= nil
                                local x3 = firetouchinterest ~= nil
                                local x4 = WebSocket ~= nil
                                local x5 = readfile ~= nil
                                local x6 = writefile ~= nil
                                local x7 = request
                                local yi = if x7 then 1 else 0
                                local yg = 3346 * yi + 1900 * (1 - yi)
                                local yh = 1930 * yi + 2485 * (1 - yi)
                                if not ((yg * 2203 + yh * 438 + yg * yh) % 16777213 == 14674358) then
                                    x7 = http_request
                                end
                                local x8 = x7 ~= nil
                                local ya = (debug and debug.getupvalues) ~= nil
                                local yc = (debug and debug.setupvalue) ~= nil
                                local yd = 0
                                local ye = { xP, xQ, xR, xS, xT, xU, xV, xW, xX, xY, xZ, x_, x0, x1, x2, x3, x4, x5, x6, x8, ya, yc }
                                for i, v in ipairs(ye) do
                                    if v then
                                        yd += 1
                                    end
                                end
                                local xP_1 = yd / #ye
                                if xP_1 >= 0.9 then
                                    return yK("Full Support", yJ)
                                elseif xP_1 >= 0.6 then
                                    return yK("Half Support", yH)
                                else
                                    return yK("Low Support", yP)
                                end
                            end
                            yE = "Unknown"
                            pcall(function()
                                local yq_1
                                local yp_1
                                if identifyexecutor then
                                    yq_1, yp_1 = identifyexecutor()
                                    local yr = yq_1 ~= ""
                                    local ys = type(yq_1) == "string" and yr
                                    if ys then
                                        local yr_1 = type(yp_1) == "string" and yp_1 ~= "" and yq_1 .. " " .. yp_1
                                        yE = yr_1 or yq_1
                                    end
                                end
                            end)
                            local yT = yS()
                            yI = os.clock()
                            yL = function()
                                local yx = math.floor(os.clock() - yI)
                                if yx < 60 then
                                    return yx .. "s"
                                elseif yx < 3600 then
                                    return string.format("%dm %ds", yx // 60, yx % 60)
                                else
                                    return string.format("%dh %dm", yx // 3600, yx % 3600 // 60)
                                end
                            end
                            local UserGroup = zT.Info:AddLeftGroupbox("User", "circle-user")
                            UserGroup:AddPlayerInfo("InfoUserCard", { Player = pi, Title = "User", HeaderIcon = "user", Collapsible = false })
                            UserGroup:AddLabel(yM("User", pi.DisplayName .. " @" .. pi.Name, yJ), true)
                            UserGroup:AddLabel(yM("UserId", tostring(pi.UserId), "#6ec1ff"), true)
                            UserGroup:AddLabel(yM("Executor", yE .. "  " .. yT, yJ), true)
                            UserGroup:AddDivider()
                            Label3 = UserGroup:AddLabel(yM("Session", yL(), yH), true)
                            UserGroup:AddDivider()
                            UserGroup:AddButton({
                                Text = "Copy Username",
                                Func = function()
                                    z4(pi.Name, "Copied username")
                                end
                            })
                            UserGroup:AddButton({
                                Text = "Copy Profile Link",
                                Func = function()
                                    z4("https://www.roblox.com/users/" .. tostring(pi.UserId) .. "/profile", "Copied profile link")
                                end
                            })
                            local SessionGroup = zT.Info:AddRightGroupbox("Session", "signal")
                            SessionGroup:AddDivider("Server")
                            SessionGroup:AddLabel(yM("Game", zU, "#6ec1ff"), true)
                            Label2 = SessionGroup:AddLabel(yM("Players", "0/0", yJ), true)
                            yF = tostring(game.JobId)
                            local yR = #yF > 18 and string.sub(yF, 1, 18) .. "..."
                            local yT_1 = yR or yF
                            SessionGroup:AddLabel(yM("Job", yT_1, yQ), true)
                            Label = SessionGroup:AddLabel(yM("Ping", "0 ms", yH), true)
                            SessionGroup:AddDivider()
                            SessionGroup:AddButton({
                                Text = "Rejoin Server",
                                Func = function()
                                    TeleportService:Teleport(game.PlaceId, pi)
                                end
                            })
                            SessionGroup:AddButton({
                                Text = "Copy Job ID",
                                Func = function()
                                    z4(yF, "Copied Job ID")
                                end
                            })
                            task.spawn(function()
                                local yA_1
                                local yz_1
                                while true do
                                    task.wait(1)
                                    if Library.Unloaded then
                                        break
                                    end
                                    Label3:SetText(yM("Session", yL(), yH))
                                    Label2:SetText(yM("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), yJ))
                                    yz_1, yA_1 = pcall(function()
                                        return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                    end)
                                    local yz_2 = yz_1 and yA_1 .. " ms" or "n/a"
                                    Label:SetText(yM("Ping", yz_2, yH))
                                end
                            end)
                            local SocialsGroup = zT.Info:AddRightGroupbox("Socials", "link")
                            SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                            SocialsGroup:AddButton({
                                Text = "Rscripts",
                                Func = function()
                                    if setclipboard then
                                        setclipboard(z0)
                                    elseif toclipboard then
                                        toclipboard(z0)
                                    end
                                    Library:Notify("Copied Rscripts profile to clipboard")
                                end
                            })
                            SocialsGroup:AddButton({
                                Text = "Website",
                                Func = function()
                                    z4(zV, "Copied website link")
                                end
                            })
                        end
                        z8_6()
                        local function z8_7()
                            SaveManager:SetLibrary(Library)
                            SaveManager:IgnoreThemeSettings()
                            SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                            SaveManager:SetFolder("OuroborosHub/LaunchANuke")
                            local lE = SaveManager:BuildConfigSection(zT.Settings)
                            local function lF(lG, lH)
                                local yW_1 = (lG == "Toggle" and Toggles or Options)[lH]
                                local yV_2 = type(yW_1) == "table" and yW_1.Type == lG
                                return yV_2 and yW_1 or nil
                            end
                            local function lP(lQ, lR)
                                local Type = lR.Type
                                if Type == "Toggle" then
                                    return { idx = lQ, type = "Toggle", value = lR.Value == true }
                                elseif Type == "Slider" then
                                    return { idx = lQ, type = "Slider", value = tostring(lR.Value) }
                                elseif Type == "Dropdown" then
                                    return { idx = lQ, type = "Dropdown", multi = lR.Multi == true, value = lR.Value }
                                elseif Type == "Input" then
                                    local y2 = lR.Value
                                    local y6 = if y2 then 1 else 0
                                    local y4 = 957 * y6 + 3302 * (1 - y6)
                                    local y5 = 214 * y6 + 1969 * (1 - y6)
                                    if not ((y4 * 2914 + y5 * 1704 + y4 * y5) % 16777213 == 3358152) then
                                        y2 = ""
                                    end
                                    return { idx = lQ, type = "Input", text = tostring(y2) }
                                elseif Type == "ColorPicker" then
                                    return { idx = lQ, type = "ColorPicker", value = lR.Value:ToHex(), transparency = lR.Transparency }
                                elseif Type == "KeyPicker" then
                                    return {
                                        idx = lQ,
                                        type = "KeyPicker",
                                        mode = lR.Mode,
                                        key = lR.Value,
                                        modifiers = lR.Modifiers,
                                        toggled = lR.Toggled
                                    }
                                else
                                    return nil
                                end
                            end
                            local function lT()
                                local y8 = {}
                                for i, v in ipairs({ Toggles, Options }) do
                                    for k, v in pairs(v) do
                                        local y9 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                        if y9 then
                                            local y9_1 = lP(k, v)
                                            if y9_1 then
                                                y8[#y8 + 1] = y9_1
                                            end
                                        end
                                    end
                                end
                                table.sort(y8, function(l0, l1)
                                    if l0.type ~= l1.type then
                                        return l0.type < l1.type
                                    end
                                    return l0.idx < l1.idx
                                end)
                                return { objects = y8 }
                            end
                            local function l2(l3)
                                local zp
                                zp = nil
                                local zq = type(l3) ~= "table"
                                local zu = if zq then 1 else 0
                                local zs = 1851 * zu + 60 * (1 - zu)
                                local zt = 3916 * zu + 2687 * (1 - zu)
                                if not ((zs * 405 + zt * 2225 + zs * zt) % 16777213 == 16711271) then
                                    zq = type(l3.idx) ~= "string"
                                end
                                if not zq then
                                    zq = type(l3.type) ~= "string"
                                end
                                if not zq then
                                    zq = SaveManager.Ignore[l3.idx]
                                end
                                if zq then
                                    return false
                                end
                                zp = lF(l3.type, l3.idx)
                                if not zp then
                                    return false
                                end
                                local zq_1 = pcall(function()
                                    if l3.type == "Input" then
                                        if type(l3.text) ~= "string" then
                                            return
                                        end
                                        zp:SetValue(l3.text)
                                    elseif l3.type == "ColorPicker" then
                                        zp:SetValueRGB(Color3.fromHex(l3.value), l3.transparency)
                                    elseif l3.type == "KeyPicker" then
                                        zp:SetValue({ l3.key, l3.mode, l3.modifiers })
                                        if l3.mode == "Toggle" and l3.toggled ~= nil then
                                            zp.Toggled = l3.toggled
                                            zp:Update()
                                        end
                                    else
                                        zp:SetValue(l3.value)
                                    end
                                end)
                                return zq_1
                            end
                            lE:AddDivider()
                            lE:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                            lE:AddButton("Export Config to Clipboard", function()
                                local zw_1
                                local zv_1
                                zv_1, zw_1 = pcall(HttpService.JSONEncode, HttpService, lT())
                                if not zv_1 then
                                    Library:Notify("Failed to encode the config")
                                    return
                                end
                                local zv_2 = setclipboard
                                local zB = if zv_2 then 1 else 0
                                local zz = 4092 * zB + 1167 * (1 - zB)
                                local zA = 3882 * zB + 1477 * (1 - zB)
                                if not ((zz * 2227 + zA * 1896 + zz * zA) % 16777213 == 15581087) then
                                    zv_2 = toclipboard
                                end
                                local zx = zv_2
                                local zv_3 = type(zx) ~= "function" or not pcall(zx, zw_1)
                                if zv_3 then
                                    Library:Notify("Your executor does not support copying to the clipboard")
                                    return
                                end
                                Library:Notify("Config copied to clipboard", 6)
                            end)
                            lE:AddButton("Import Config from Clipboard Text", function()
                                local zE_1
                                local zC = Options.SaveManager_ImportSource.Value or ""
                                local zC_1
                                local zD = tostring(zC):match("^%s*(.-)%s*$")
                                if zD == "" then
                                    Library:Notify("Paste an exported config into the box first")
                                    return
                                end
                                zC_1, zE_1 = pcall(HttpService.JSONDecode, HttpService, zD)
                                local zD_1 = not zC_1 or type(zE_1) ~= "table" or type(zE_1.objects) ~= "table"
                                if zD_1 then
                                    Library:Notify("That is not a valid exported config")
                                    return
                                end
                                local zC_2 = 0
                                for i, v in ipairs(zE_1.objects) do
                                    if l2(v) then
                                        zC_2 += 1
                                    end
                                end
                                if zC_2 == 0 then
                                    Library:Notify("No settings in that config matched this script")
                                    return
                                end
                                Options.SaveManager_ImportSource:SetValue("")
                                local zE_2 = zC_2 == 1 and ""
                                local zR = if zE_2 then 1 else 0
                                local zP = 852 * zR + 3812 * (1 - zR)
                                local zQ = 2347 * zR + 1659 * (1 - zR)
                                if not ((zP * 2368 + zQ * 248 + zP * zQ) % 16777213 == 4599236) then
                                    zE_2 = "s"
                                end
                                Library:Notify(("Imported %d setting%s"):format(zC_2, zE_2), 6)
                            end)
                            SaveManager:LoadAutoloadConfig()
                        end
                        z8_7()
                        if Toggles.HideUiOnStart.Value then
                            Library:Toggle(false)
                        end
                        o5.Start()
                    end
                end
                pC_2 = (pC_2 + 8) % 88
            else
                local pH_4 = (vector.create((pC_2 * 2 + 6) % 11 + 1, (pC_2 * 4 + 2) % 13 + 1, (pC_2 * 6 + 12) % 17 + 1))
                local pI_6 = (vector.create((pC_2 * 5 + 5) % 11 + 1, (pC_2 * 10 + 11) % 13 + 1, (pC_2 * 2 + 2) % 17 + 1))
                local BA = vector.cross(pH_4, pI_6)
                local BB = vector.dot(pH_4, pI_6)
                if vector.dot(BA, BA) + BB * BB == vector.dot(pH_4, pH_4) * vector.dot(pI_6, pI_6) + 2 then
                    pD_4, pE_1 = pcall(pF_2)
                else
                    pE_1, pF_2 = pcall(pD_4)
                end
                pC_2 = (pC_2 + 19) % 88
            end
        else
            local pH_5 = (vector.create((pC_2 * 7 + 1) % 11 + 1, (pC_2 * 6 + 13) % 13 + 1, (pC_2 * 8 + 15) % 17 + 1))
            local pI_7 = (vector.create((pC_2 * 4 + 7) % 11 + 1, (pC_2 * 3 + 3) % 13 + 1, (pC_2 * 15 + 10) % 17 + 1))
            local pJ_5 = (vector.create((pC_2 * 2 + 1) % 5 + 1, (pC_2 * 2 + 3) % 7 + 1, (pC_2 * 1 + 5) % 9 + 1))
            if math.abs((vector.angle(pH_5, pI_7, pJ_5))) - math.abs((vector.angle(pI_7, pH_5, pJ_5))) == 0 then
                o5 = { State = pn }
            else
                pn = { State = o5 }
            end
            pC_2 = (pC_2 + 30) % 88
        end
    elseif pG_1 <= 9 then
        if pG_1 <= 8 then
            if pG_1 <= 7 then
                local pH_6 = (vector.create((pC_2 * 2 + 9) % 11 + 1, (pC_2 * 11 + 3) % 13 + 1, (pC_2 * 1 + 5) % 17 + 1))
                local pI_8 = (vector.create((pC_2 * 5 + 6) % 11 + 1, (pC_2 * 11 + 7) % 13 + 1, (pC_2 * 4 + 4) % 17 + 1))
                local pJ_6 = (vector.create((pC_2 * 3 + 6) % 5 + 1, (pC_2 * 5 + 1) % 7 + 1, (pC_2 * 1 + 1) % 9 + 1))
                if math.abs((vector.angle(pH_6, pI_8, pJ_6))) - math.abs((vector.angle(pI_8, pH_6, pJ_6))) == 2 then
                    pt = {
                        "Rebirth",
                        "BuyRoll",
                        "BuyCities",
                        "BuyUpgrades",
                        "PlaceGenerators",
                        "Launch",
                        "PlaceCollectors",
                        "Roll",
                        "BuyZone",
                        "BuyNuke"
                    }
                else
                    o7 = {
                        "Rebirth",
                        "PlaceCollectors",
                        "PlaceGenerators",
                        "BuyUpgrades",
                        "BuyNuke",
                        "BuyCities",
                        "BuyZone",
                        "BuyRoll",
                        "Roll",
                        "Launch"
                    }
                end
                pC_2 = (pC_2 + 74) % 88
            else
                if (pC_2 * 2 + 6) * 7 % 3 == ((pC_2 * 2 + 6) * 7 + 7) % 3 then
                    pz = { "Collect", "Skip", "Lock" }
                    pl = { "Rolls", "Roll Speed", "Luck Upgrade" }
                    o9 = { Rolls = "Stands", ["Roll Speed"] = "Speed", ["Luck Upgrade"] = "Luck" }
                    pt = fn694
                    o1 = fn867
                else
                    o1 = { "Skip", "Lock", "Collect" }
                    pz = { "Luck Upgrade", "Rolls", "Roll Speed" }
                    pt = { ["Luck Upgrade"] = "Luck", Rolls = "Stands", ["Roll Speed"] = "Speed" }
                    pl = fn694
                    o9 = fn867
                end
                pC_2 = (pC_2 + 85) % 88
            end
        else
            if (pC_2 * 3 + 1) * 21 % 4 == ((pC_2 * 3 + 1) * 21 + 8) % 4 then
                pb = fn2
                o6 = fn531
            else
                o6 = fn2
                pb = fn531
            end
            pC_2 = (pC_2 + 74) % 88
        end
    elseif pG_1 <= 10 then
        local Bw = bit32.rrotate(bit32.bxor(bit32.lrotate(pC_2, 23), string.byte(tostring(px))), 29)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Bw, 1543828331), 26), 2909803469) ~= bit32.lrotate(Bw, 26) then
            pz = fn167
        else
            pB = fn167
        end
        pC_2 = (pC_2 + 74) % 88
    else
        local Bz = bit32.rrotate(bit32.bxor(bit32.lrotate(pC_2, 15), string.byte(tostring(pE_1))), 14)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Bz, 453729953), 962989702), (bit32.bxor(bit32.band(Bz, 3841237342), 4072577182))), 962989702), 4072577182) ~= Bz then
            o5 = fn773
            pu = fn162
            o4 = fn588
            ps = function(a6)
                local qI = a6 and a6:IsA("GuiButton")
                if not qI then
                    return false
                elseif firesignal then
                    return pcall(firesignal, a6.Activated)
                elseif not getconnections then
                    return false
                else
                    local qI_2 = false
                    for k, v in getconnections(a6.Activated) do
                        local qQ = v
                        if qQ.Enabled ~= false then
                            if qQ.Fire then
                                local qJ_3 = pcall(function()
                                    qQ:Fire()
                                end) or qI_2
                                qI_2 = qJ_3
                            elseif qQ.Function then
                                local qJ_4 = pcall(qQ.Function) or qI_2
                                qI_2 = qJ_4
                            end
                        end
                    end
                    return qI_2
                end
            end
            po.FindPlacement = fn383
            o_ = function(bX)
                local r1_4
                local rY = pl()
                local rZ = {}
                local rZ_4
                local r_ = pn.Enabled.Rebirth and RebirthConfig.getNextLevel(RebirthConfig.getRebirths(rY))
                local r0_9
                if r_ then
                    for k, v in r_.requirement.items do
                        rZ[v.key] = v.count
                    end
                end
                local r__2 = {}
                for k, v in rY.inventory do
                    local r1_3 = v > (rZ[k] or 0)
                    if r1_3 then
                        local r0_7 = bX and AtomConfig.isGenerator(k)
                        local r2_3 = r0_7
                        local si = if r2_3 then 1 else 0
                        local sg = 2159 * si + 3449 * (1 - si)
                        local sh = 1191 * si + 3329 * (1 - si)
                        if not ((sg * 1997 + sh * 714 + sg * sh) % 16777213 == 7733266) then
                            local r0_8 = not bX and AtomConfig.isCollector(k)
                            r2_3 = r0_8
                        end
                        r1_3 = r2_3
                    end
                    if r1_3 then
                        table.insert(r__2, k)
                    end
                end
                table.sort(r__2, function(cf, cg)
                    local rQ = bX and AtomConfig.getAtomsPerSecond(cf)
                    local rR = rQ
                    local rX = if rR then 1 else 0
                    local rV = 1646 * rX + 296 * (1 - rX)
                    local rW = 551 * rX + 3231 * (1 - rX)
                    if not ((rV * 3910 + rW * 981 + rV * rW) % 16777213 == 7883337) then
                        rR = AtomConfig.getCapacity(cf)
                    end
                    local rQ_3 = bX
                    local rS = rR
                    if rQ_3 then
                        rQ_3 = AtomConfig.getAtomsPerSecond(cg)
                    end
                    local rR_3 = rQ_3 or AtomConfig.getCapacity(cg)
                    return rS == rR_3 and cf < cg or rS > rR_3
                end)
                for k, v in r__2 do
                    rZ_4, r0_9, r1_4 = o5.FindPlacement(v)
                    if rZ_4 then
                        local r2_4 = rY.inventory[v]
                        pw.Place:FireServer(v, rZ_4, r0_9, r1_4)
                        task.wait(0.35)
                        local rZ_5 = pl().inventory[v] < r2_4 and "Placed " .. ItemsConfig.getDisplayName(v)
                        return rZ_5 or "Waiting for placement"
                    end
                end
                return #r__2 > 0 and "No free space" or "Waiting for inventory"
            end
        else
            po = fn773
            o_ = fn162
            pu = fn588
            o4 = function(a6)
                local qI = a6 and a6:IsA("GuiButton")
                if not qI then
                    return false
                elseif firesignal then
                    return pcall(firesignal, a6.Activated)
                elseif not getconnections then
                    return false
                else
                    local qI_1 = false
                    for k, v in getconnections(a6.Activated) do
                        local qQ = v
                        if qQ.Enabled ~= false then
                            if qQ.Fire then
                                local qJ_1 = pcall(function()
                                    qQ:Fire()
                                end) or qI_1
                                qI_1 = qJ_1
                            elseif qQ.Function then
                                local qJ_2 = pcall(qQ.Function) or qI_1
                                qI_1 = qJ_2
                            end
                        end
                    end
                    return qI_1
                end
            end
            o5.FindPlacement = fn383
            ps = function(bX)
                local r1_2
                local rY = pl()
                local rZ = {}
                local rZ_1
                local r_ = pn.Enabled.Rebirth and RebirthConfig.getNextLevel(RebirthConfig.getRebirths(rY))
                local r0_4
                if r_ then
                    for k, v in r_.requirement.items do
                        rZ[v.key] = v.count
                    end
                end
                local r__1 = {}
                for k, v in rY.inventory do
                    local r1_1 = v > (rZ[k] or 0)
                    if r1_1 then
                        local r0_2 = bX and AtomConfig.isGenerator(k)
                        local r2_1 = r0_2
                        local si = if r2_1 then 1 else 0
                        local sg = 2159 * si + 3449 * (1 - si)
                        local sh = 1191 * si + 3329 * (1 - si)
                        if not ((sg * 1997 + sh * 714 + sg * sh) % 16777213 == 7733266) then
                            local r0_3 = not bX and AtomConfig.isCollector(k)
                            r2_1 = r0_3
                        end
                        r1_1 = r2_1
                    end
                    if r1_1 then
                        table.insert(r__1, k)
                    end
                end
                table.sort(r__1, function(cf, cg)
                    local rQ = bX and AtomConfig.getAtomsPerSecond(cf)
                    local rR = rQ
                    local rX = if rR then 1 else 0
                    local rV = 1646 * rX + 296 * (1 - rX)
                    local rW = 551 * rX + 3231 * (1 - rX)
                    if not ((rV * 3910 + rW * 981 + rV * rW) % 16777213 == 7883337) then
                        rR = AtomConfig.getCapacity(cf)
                    end
                    local rQ_1 = bX
                    local rS = rR
                    if rQ_1 then
                        rQ_1 = AtomConfig.getAtomsPerSecond(cg)
                    end
                    local rR_1 = rQ_1 or AtomConfig.getCapacity(cg)
                    return rS == rR_1 and cf < cg or rS > rR_1
                end)
                for k, v in r__1 do
                    rZ_1, r0_4, r1_2 = o5.FindPlacement(v)
                    if rZ_1 then
                        local r2_2 = rY.inventory[v]
                        pw.Place:FireServer(v, rZ_1, r0_4, r1_2)
                        task.wait(0.35)
                        local rZ_2 = pl().inventory[v] < r2_2 and "Placed " .. ItemsConfig.getDisplayName(v)
                        return rZ_2 or "Waiting for placement"
                    end
                end
                return #r__1 > 0 and "No free space" or "Waiting for inventory"
            end
        end
        pC_2 = (pC_2 + 74) % 88
    end
until (pC_2 * 59 + 87) % 88 == 29
if not pE_1 then
    local pC_3 = 4
    repeat
        if pC_3 * 102776927 + 11 + 2 >= pC_3 * 102776927 + 11 + 2 + 2 then
            pF_2.Unload()
            error(o5)
        else
            o5.Unload()
            error(pF_2)
        end
        pC_3 = (pC_3 + 3) % 8
    until (pC_3 * 5 + 7) % 8 == 2
end
