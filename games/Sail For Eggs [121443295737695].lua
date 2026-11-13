local pi
local p_
local o_
local pH
local po
local pN
local pb
local pT
local oT
local ph
local pZ
local oZ
local pn
local Claim
local oM
local pt
local pa
local pg
local pY
local pm
local o3
local ps
local o9
local SaveManager
local oR
local py
local pf
local Upgrade
local oX
local pE
local pl
local Toggles
local pr
local pQ
local oQ
local PenGeometry
local oW
local pD
local Boats
local Library
local pJ
local o7
local pP
local oP
local pw
local pd
local ThemeManager
local oV
local Options
local pj
local State
local o0
local pI
local pp
local PenProgression
local pO
local Request
local pv
local pc
local LocalPlayer
local function fn88(aD, aE)
    return tonumber(aD.id) < tonumber(aE.id)
end
local function fn220()
    return oM.CoreGui
end
local function fn303()
    gethui = pP
end
local function fn482()
    return not oP.Unloaded
end
local function fn666(V)
    return type(V) == "function"
end
local function fn794(S)
    local q5 = typeof(cloneref) == "function" and typeof(S) == "Instance"
    if q5 then
        return cloneref(S)
    end
    return S
end
oM = nil
Request = nil
oP = nil
oQ = nil
oR = nil
oT = nil
oV = nil
oW = nil
oX = nil
oZ = nil
o_ = nil
o0 = nil
Library = nil
o3 = nil
PenProgression = nil
o7 = nil
o9 = nil
pa = nil
pb = nil
pc = nil
pd = nil
PenGeometry = nil
pf = nil
pg = nil
ph = nil
pi = nil
pj = nil
Boats = nil
pl = nil
pm = nil
pn = nil
po = nil
pp = nil
pr = nil
ps = nil
pt = nil
pv = nil
pw = nil
py = nil
local oN, oS, Activate, oY, o2, o4, o5, o8, pu, Data
Options = nil
pD = nil
pE = nil
pH = nil
pI = nil
pJ = nil
Toggles = nil
Claim = nil
pN = nil
pO = nil
pP = nil
pQ = nil
SaveManager = nil
pT = nil
LocalPlayer = nil
ThemeManager = nil
Upgrade = nil
pY = nil
pZ = nil
p_ = nil
State = nil
local pz, pA, pB, Equip, pG, pL, Request2, pW, p1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
oM, LocalPlayer, pP = nil, nil, nil
oM = {}
oM.Players = game:GetService("Players")
oM.ReplicatedStorage = game:GetService("ReplicatedStorage")
oM.RunService = game:GetService("RunService")
oM.UserInputService = game:GetService("UserInputService")
oM.VirtualUser = game:GetService("VirtualUser")
oM.HttpService = game:GetService("HttpService")
oM.TeleportService = game:GetService("TeleportService")
oM.Workspace = game:GetService("Workspace")
oM.Lighting = game:GetService("Lighting")
oM.Stats = game:GetService("Stats")
oM.CoreGui = game:GetService("CoreGui")
LocalPlayer = oM.Players.LocalPlayer
pP = fn220
if getgenv then
    getgenv().gethui = pP
end
pc, o5, oY, oP, State, pa, Activate, Request, Upgrade, Request2, Claim, Equip, Data, Boats, PenGeometry, PenProgression, o_, oR, pA, ps = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn303)
local function p5(i)
    local qZ
    local qX
    local qY
    qX = nil
    qY = nil
    qZ = nil
    local q_ = i ~= ""
    local q0 = type(i) == "string" and q_
    assert(q0, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    qX = getgenv()
    assert(type(qX) == "table", "getgenv did not return a table")
    local q__1 = qX[i]
    if q__1 ~= nil then
        local q0_1 = type(q__1) == "table" and type(q__1.Unload) == "function"
        assert(q0_1, "Namespace is occupied")
        q__1.Unload()
        assert(qX[i] == nil, "Previous instance did not release its namespace")
    end
    qY = {}
    qZ = { State = {}, Unloaded = false }
    qZ.Track = function(o)
        assert(type(o) == "function", "Cleanup must be callable")
        if qZ.Unloaded then
            o()
        else
            table.insert(qY, o)
        end
        return o
    end
    qZ.Unload = function()
        local qQ_1
        local qP_1
        if qZ.Unloaded then
            return
        end
        qZ.Unloaded = true
        local qN = {}
        local qU = #qY
        local qT = -1
        while false and qU <= 1 or true and qU >= 1 do
            local qV = qU
            local qO_1 = table.remove(qY, qV)
            qP_1, qQ_1 = pcall(qO_1)
            if not qP_1 then
                table.insert(qN, tostring(qQ_1))
            end
            qU += qT
        end
        table.clear(qZ.State)
        if #qN > 0 then
            error("Cleanup incomplete: " .. table.concat(qN, "; "), 0)
        end
        if qX[i] == qZ then
            qX[i] = nil
        end
    end
    qX[i] = qZ
    return qZ
end
local function qa(D, E)
    local q3 = type(D) == "table" and type(D.Track) == "function"
    assert(q3, "FeatureAPI required")
    local q3_1 = type(E) == "table" and type(E.OnUnload) == "function"
    assert(q3_1, "UI library required")
    assert(type(E.Unload) == "function", "UI unload required")
    D.Track(function()
        if not E.Unloaded then
            E:Unload()
        end
    end)
    E:OnUnload(function()
        D.Unload()
    end)
end
local p4 = "OuroborosSailForEggs"
local pq = "Sail For Eggs"
local qb = "v0.4"
pc = "https://discord.gg/synapsex"
o5 = "https://rscripts.net/@Ouroboros"
oY = "https://ouroboros-hub-rbx.web.app/"
oP = p5(p4)
State = oP.State
pA = fn666
ps = fn482
local p3 = fn794(oM.ReplicatedStorage)
local p3_1
pa = fn794(oM.Workspace)
local Events = p3:WaitForChild("Events")
Activate = Events:WaitForChild("Interaction"):WaitForChild("Activate")
Request = Events:WaitForChild("Pen"):WaitForChild("Request")
Upgrade = Events:WaitForChild("Boat"):WaitForChild("Upgrade")
Request2 = Events:WaitForChild("SellPets"):WaitForChild("Request")
Claim = Events:WaitForChild("Index"):WaitForChild("Claim")
Equip = Events:WaitForChild("Inventory"):WaitForChild("Equip")
Data = require(p3.Source.Game.Data)
local p8 = require(p3.Source.Game.Items.Animals)
local Worlds = require(p3.Source.Game.Items.Worlds)
Boats = require(p3.Source.Game.Items.Boats)
PenGeometry = require(p3.Source.Features.Pen.PenGeometry)
PenProgression = require(p3.Source.Features.Pen.PenProgression)
if ((not Data or oY) and (p8 and p8) or Claim and Data and (false or p8) or false or ((p8 or not Claim) and (p8 and false) or 61 or (Claim and false or Data and pq or (Claim or not Data) and (Claim and not Claim)))) and not ((not Data or oY) and (p8 and p8) or Claim and Data and (false or p8) or false or ((p8 or not Claim) and (p8 and false) or 61 or (Claim and false or Data and pq or (Claim or not Data) and (Claim and not Claim)))) then
    p8 = { "Epic", "Arcane", "Rare", "Mythic", "Common", "Uncommon", "Secret", "Etherial", "Legendary" }
else
    o_ = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Secret", "Arcane", "Etherial" }
end
oR = {}
for i, v in ipairs(o_) do
    oR[v] = i
end
pO = {}
for k, v in p8 do
    local p2_1 = type(v) == "table" and type(v.id) == "string"
    if p2_1 then
        pO[v.id] = v
    end
end
p3_1, pn, ph = nil, nil, nil
local p2_2 = 1
repeat
    if (p2_2 * 1 + 1) % 2 + 1 <= 1 then
        if (pn or not p2_2) and (pn and not p2_2) and (not p2_2 and not pn and (not p2_2 and not pn)) or (p2_2 and not pn or p2_2 and not p2_2 or (not pn and not pn or p2_2 and not p2_2)) or not ((pn or not p2_2) and (pn and not p2_2) and (not p2_2 and not pn and (not p2_2 and not pn)) or (p2_2 and not pn or p2_2 and not p2_2 or (not pn and not pn or p2_2 and not p2_2))) then
            p3_1 = {}
        else
            pn = {}
        end
        p2_2 = (p2_2 + 3) % 16
    else
        local ze = bit32.rrotate(bit32.bxor(bit32.lrotate(p2_2, 31), string.byte(tostring(p3_1))), 28)
        if bit32.bxor(bit32.lrotate(bit32.bxor(ze, 1094043637), 4), 324829012) == bit32.lrotate(ze, 4) then
            pn = {}
            ph = {}
        else
            ph = {}
            pn = {}
        end
        p2_2 = (p2_2 + 15) % 16
    end
until (p2_2 * 7 + 0) % 16 == 5
for k, v in Worlds do
    local p2_3 = type(v) == "table" and v.id ~= nil and type(v.displayName) == "string"
    if p2_3 then
        local p2_4 = tostring(v.id)
        local displayName = v.displayName
        table.insert(p3_1, { id = p2_4, label = displayName })
        table.insert(pn, displayName)
        ph[displayName] = p2_4
    end
end
table.sort(p3_1, fn88)
table.clear(pn)
for i, v in ipairs(p3_1) do
    table.insert(pn, v.label)
end
pw = {}
for i, v in ipairs(Boats) do
    local p2_5 = type(v) == "table" and type(v.id) == "string"
    if p2_5 then
        pw[v.id] = { index = i, def = v }
    end
end
o7 = Vector3.new(-16, 3, 66)
State.AutoSteal = false
State.AutoPlace = false
State.AutoHatch = false
State.AutoEquipBest = false
State.AutoSell = false
State.AutoBuyBoat = false
State.AutoRepair = false
State.AutoUpgradeBoat = false
State.AutoUpgradePen = false
State.AutoClaimIndex = false
State.SelectedZones = {}
State.StealRarities = {}
State.SellRarities = {}
State.SellMode = "Animals"
State.StealBusy = false
State.PlaceBusy = false
State.EquipVersion = 0
State.Workers = {}
State.Status = "Idle"
Library = nil
oT = function(aO, aP)
    if Library and Library.Notify then
        local q7_1 = tostring(aO)
        local q8 = aP or 4
        Library:Notify(q7_1, q8)
    end
end
pD = function(aT)
    local ra = State.Workers[aT]
    if ra then
        pcall(task.cancel, ra)
        State.Workers[aT] = nil
    end
end
pj = function(aX, aY, aZ)
    pD(aX)
    State.Workers[aX] = task.spawn(function()
        local rg_1
        local rf_1
        while ps() do
            rf_1, rg_1 = pcall(aZ)
            if not rf_1 then
                warn("[Ouroboros]", aX, rg_1)
            end
            task.wait(aY)
            if not ps() then
                break
            end
        end
    end)
end
pg = function(a9, ba)
    local rj_1
    local ri_1
    ri_1, rj_1 = pcall(function()
        return Data.client[a9]()
    end)
    if ri_1 then
        return rj_1
    end
    return ba
end
pE = function()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if not Humanoid or Humanoid.Health <= 0 then
        return nil
    end
    return Character:FindFirstChild("HumanoidRootPart"), Character, Humanoid
end
pd = function()
    local Plots = pa:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local rs_1 = child:IsA("Model") and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if rs_1 then
            return child
        end
    end
    return nil
end
pJ = function(bt)
    local rA
    local rB
    rA = nil
    rB = nil
    rA = pE()
    if not rA then
        return false
    end
    local rC = typeof(bt) == "Vector3" and bt
    rB = rC or nil
    if not rB then
        return false
    end
    pcall(function()
        rA.AssemblyLinearVelocity = Vector3.zero
        rA.AssemblyAngularVelocity = Vector3.zero
        rA.CFrame = CFrame.new(rB + Vector3.new(0, 3, 0))
    end)
    return true
end
o3 = function(bA)
    local rF = pO[bA]
    return rF and rF.rarity or nil
end
pN = function(bF)
    local rI = {}
    if type(bF) ~= "table" then
        return rI
    end
    for k, v in pairs(bF) do
        if v == true then
            rI[tostring(k)] = true
        else
            local rJ = type(k) == "number" and type(v) == "string"
            if rJ then
                rI[v] = true
            end
        end
    end
    return rI
end
pf = function(bL)
    local SelectedZones = State.SelectedZones
    local rS = false
    for k in pairs(SelectedZones) do
        rS = true
        break
    end
    if not rS then
        return true
    end
    return SelectedZones[tostring(bL)] == true
end
pQ = function(bR, bS)
    local rY = false
    for k in pairs(bS) do
        rY = true
        break
    end
    if not rY then
        return true
    end
    return bR ~= nil and bS[bR] == true
end
pi = function(bX)
    if not bX or not bX.Parent then
        return false
    elseif bX:GetAttribute("Action") ~= "Pickup" then
        return false
    else
        local attr2 = bX:GetAttribute("PersonalOwnerUserId")
        if attr2 ~= nil and attr2 ~= LocalPlayer.UserId then
            return false
        end
        local attr = bX:GetAttribute("worldId")
        if not pf(attr) then
            return false
        end
        local r3_3 = o3(bX:GetAttribute("eggId"))
        if not pQ(r3_3, State.StealRarities) then
            return false
        end
        return true
    end
end
pm = function(b8)
    if b8:IsA("Model") then
        return b8:GetPivot().Position
    end
    local sb = if b8:IsA("BasePart") then 1 else 0
    if sb == 1 then
        return b8.Position
    end
    local BasePart = b8:FindFirstChildWhichIsA("BasePart", true)
    return BasePart and BasePart.Position or nil
end
oV = function()
    local sj_1
    local si_1
    local Terrain = pa:FindFirstChild("Terrain")
    local sg = Terrain and Terrain:FindFirstChild("World")
    local sf_1 = sg
    if sg then
        sg = sf_1:FindFirstChild("Main")
    end
    local sf_2 = sg
    if sg then
        sg = sf_2:FindFirstChild("Worlds")
    end
    local sf_3 = sg
    if not sf_3 then
        return nil
    end
    local sg_1 = pE()
    local sg_2 = sg_1 and sg_1.Position or Vector3.zero
    sj_1, si_1 = nil, nil
    for i, child in ipairs(sf_3:GetChildren()) do
        local SpawnedEggs = child:FindFirstChild("SpawnedEggs")
        if SpawnedEggs then
            for i, child in ipairs(SpawnedEggs:GetChildren()) do
                if pi(child) then
                    local sf_5 = pm(child)
                    if sf_5 then
                        local Magnitude = (sf_5 - sg_2).Magnitude
                        if not si_1 or Magnitude < si_1 then
                            sj_1 = child
                            si_1 = Magnitude
                        end
                    end
                end
            end
        end
    end
    return sj_1, si_1
end
pb = function(cx)
    if not cx or not cx.Parent then
        return false
    end
    local sA_1 = pcall(function()
        Activate:FireServer(cx)
    end)
    return sA_1
end
pG = function(cE)
    State.EquipVersion = State.EquipVersion + 1
    local EquipVersion = State.EquipVersion
    local cL = pcall(function()
        Equip:FireServer(EquipVersion, cE)
    end)
    return cL, EquipVersion
end
oN = function(cN, cO)
    local sC = os.clock()
    local sE = sC + (cO or 3)
    while true do
        local sC_1 = ps() and os.clock() < sE
        if sC_1 then
            local Character = LocalPlayer.Character
            local sD_1 = Character and Character:FindFirstChildOfClass("Tool")
            local sF = sD_1
            if sD_1 then
                sD_1 = sF:GetAttribute("uniqueId") == cN
            end
            if sD_1 then
                return sF
            end
            if LocalPlayer:GetAttribute("ServerEquippedItemId") == cN then
                local sD_2 = Character and Character:FindFirstChildOfClass("Tool")
                local sC_3 = sD_2 and sD_2:GetAttribute("uniqueId") == cN
                if sC_3 then
                    return sD_2
                end
            end
            task.wait(0.1)
            continue
        end
        break
    end
    return nil
end
pZ = function()
    local sH = {}
    local sI = pg("ownedEggs", {})
    local sJ = pg("ownedAnimals", {})
    for k, v in pairs(sI) do
        local placement = v.placement
        if type(placement) == "table" then
            local insert = table.insert
            local sL_1 = placement.x or placement.X
            local sM = placement.z or placement.Z
            insert(sH, { x = sL_1, z = sM, radius = 1.35 })
        end
    end
    for k, v in pairs(sJ) do
        local placement = v.placement
        if type(placement) == "table" then
            local insert = table.insert
            local sK_2 = placement.x or placement.X
            local sL_2 = placement.z or placement.Z
            insert(sH, { x = sK_2, z = sL_2, radius = 1.35 })
        end
    end
    return sH
end
pL = function(de)
    local s_ = de:GetAttribute("PenSizeLevel") or 1
    local s__1 = PenGeometry.bounds(de, s_)
    if not s__1 then
        return nil
    end
    local s0_1 = pZ()
    local minX = s__1.minX
    local maxX = s__1.maxX
    local s6 = minX
    while s6 <= maxX do
        local s7 = s6
        local minZ = s__1.minZ
        local maxZ = s__1.maxZ
        local tb = minZ
        while tb <= maxZ do
            local tc = tb
            local s1_2 = Vector3.new(s7, s__1.y, tc)
            if PenGeometry.fits(s__1, s1_2, 1.35, s0_1) then
                return s1_2
            end
            tb += 1.5
        end
        s6 += 1.5
    end
    return Vector3.new((s__1.minX + s__1.maxX) / 2, s__1.y, (s__1.minZ + s__1.maxZ) / 2)
end
p1 = function()
    local tg_1
    local tf_1
    local te = pg("ownedEggs", {})
    tg_1, tf_1 = nil, nil
    for k, v in pairs(te) do
        local te_1 = type(v) == "table" and type(v.uniqueId) == "string" and not v.placement
        if te_1 then
            local te_2 = o3(v.eggId)
            local th = oR[te_2] or 0
            if not tf_1 or th > tf_1 then
                tg_1 = v
                tf_1 = th
            end
        end
    end
    return tg_1
end
pW = function()
    local tq = workspace:GetServerTimeNow()
    local tr = {}
    local ts = pg("ownedEggs", {})
    for k, v in pairs(ts) do
        local ts_1 = type(v) == "table" and v.placement and type(v.uniqueId) == "string"
        if ts_1 then
            local hatchReadyAt = v.hatchReadyAt
            local tt = typeof(hatchReadyAt) == "number" and hatchReadyAt <= tq
            if tt then
                table.insert(tr, v.uniqueId)
            end
        end
    end
    return tr
end
o0 = function()
    local tB = pg("equippedBoatId", "Rowboat")
    local tC = pw[tB]
    if not tC then
        return nil
    end
    return Boats[tC.index + 1]
end
pB = function(dR)
    local tH = {}
    local SellRarities = State.SellRarities
    local tJ = dR == "Both"
    local tK = dR == "Animals"
    local tO = if tK then 1 else 0
    local tM = 3661 * tO + 1637 * (1 - tO)
    local tN = 1179 * tO + 2042 * (1 - tO)
    if not ((tM * 1895 + tN * 3825 + tM * tN) % 16777213 == 15763589) then
        tK = tJ
    end
    if tK then
        for k, v in pairs(pg("ownedAnimals", {})) do
            local tJ_1 = type(v) == "table" and not v.placement and type(v.uniqueId) == "string"
            if tJ_1 then
                local tJ_2 = o3(v.animalId)
                if pQ(tJ_2, SellRarities) then
                    table.insert(tH, v.uniqueId)
                end
            end
        end
    end
    if dR == "Eggs" or dR == "Both" then
        for k, v in pairs(pg("ownedEggs", {})) do
            local tJ_4 = type(v) == "table" and not v.placement and type(v.uniqueId) == "string"
            if tJ_4 then
                local tJ_5 = o3(v.eggId)
                if pQ(tJ_5, SellRarities) then
                    table.insert(tH, v.uniqueId)
                end
            end
        end
    end
    return tH
end
pl = function()
    State.Status = "Banking"
    local t0 = os.clock() + 8
    while true do
        local t1 = ps() and State.AutoSteal and LocalPlayer:GetAttribute("StealingEgg") == true and os.clock() < t0
        if t1 then
            local t1_1 = pE()
            if t1_1 and (t1_1.Position - o7).Magnitude > 6 then
                pJ(o7)
            end
            task.wait(0.2)
            continue
        end
        break
    end
end
pt = function()
    if not State.AutoSteal or State.StealBusy then
        return
    end
    if LocalPlayer:GetAttribute("StealingEgg") == true then
        State.StealBusy = true
        pl()
        State.StealBusy = false
        return
    end
    local t4_1 = oV()
    if not t4_1 then
        State.Status = "No eggs"
        return
    end
    State.StealBusy = true
    State.Status = "Stealing"
    local t5 = pm(t4_1)
    if t5 then
        pJ(t5)
        task.wait(0.15)
    end
    local t5_1 = ps() and State.AutoSteal and t4_1.Parent and pi(t4_1)
    if t5_1 then
        pb(t4_1)
    end
    local t4_2 = os.clock() + 2.5
    while true do
        local t5_2 = ps() and os.clock() < t4_2
        if t5_2 then
            if LocalPlayer:GetAttribute("StealingEgg") == true then
                break
            end
            task.wait(0.1)
            continue
        end
        break
    end
    local t9 = if LocalPlayer:GetAttribute("StealingEgg") == true then 1 else 0
    if t9 == 1 then
        pl()
    end
    State.StealBusy = false
end
o9 = function()
    if not State.AutoPlace or State.PlaceBusy or State.StealBusy then
        return
    end
    if LocalPlayer:GetAttribute("StealingEgg") == true then
        return
    end
    local uc_1 = pd()
    local ua = p1()
    if not uc_1 or not ua then
        return
    end
    local ub = pL(uc_1)
    if not ub then
        return
    end
    State.PlaceBusy = true
    State.Status = "Placing"
    pG(ua.uniqueId)
    local uc_2 = oN(ua.uniqueId, 3)
    local ud_1 = uc_2 and ps() and State.AutoPlace
    if ud_1 then
        pcall(function()
            Request:FireServer("Place", ua.uniqueId, ub, 0)
        end)
        task.wait(0.35)
    end
    State.PlaceBusy = false
end
pI = function()
    if not State.AutoHatch then
        return
    end
    for i, v in ipairs(pW()) do
        local uq = v
        local uj = not ps() or not State.AutoHatch
        if uj then
            break
        end
        pcall(function()
            Request:FireServer("HatchFromPanel", uq)
        end)
        task.wait(0.2)
    end
end
pY = function()
    if not State.AutoEquipBest then
        return
    end
    pcall(function()
        Request:FireServer("EquipBest")
    end)
end
py = function()
    local SellMode, uu
    if not State.AutoSell then
        return
    end
    SellMode = State.SellMode
    if SellMode == "Both" then
        local us = pB("Animals")
        if #us > 0 then
            pcall(function()
                Request2:FireServer("Animals", us)
            end)
            task.wait(0.4)
        end
        local uv = pB("Eggs")
        if #uv > 0 then
            pcall(function()
                Request2:FireServer("Eggs", uv)
            end)
        end
        return
    end
    uu = pB(SellMode)
    if #uu == 0 then
        return
    end
    pcall(function()
        Request2:FireServer(SellMode, uu)
    end)
end
po = function()
    if not State.AutoBuyBoat and not State.AutoUpgradeBoat then
        return
    end
    local uA_1 = o0()
    if not uA_1 then
        return
    end
    local uB = pg("currency", 0)
    local uC = typeof(uB) ~= "number"
    local uH = if uC then 1 else 0
    local uF = 2943 * uH + 3027 * (1 - uH)
    local uG = 152 * uH + 864 * (1 - uH)
    if not ((uF * 2490 + uG * 253 + uF * uG) % 16777213 == 7813862) then
        uC = uB < (uA_1.price or math.huge)
    end
    if uC then
        return
    end
    local uA_2 = pd()
    if not uA_2 then
        return
    end
    local uB_1 = uA_2:FindFirstChild("Assets") and uA_2.Assets:FindFirstChild("BoatUpgradeSign")
    if uB_1 then
        pJ(uB_1:GetPivot().Position)
        task.wait(0.2)
    end
    pcall(function()
        Upgrade:FireServer()
    end)
end
oW = function()
    local uL = pd()
    if not uL then
        return nil
    end
    local RepairZone = uL:FindFirstChild("RepairZone")
    if not RepairZone then
        return nil
    end
    local Center = RepairZone:FindFirstChild("Center", true)
    local uN = Center and Center:IsA("Attachment")
    if uN then
        return Center.WorldPosition
    end
    local Part = RepairZone:FindFirstChild("Part", true)
    local uN_1 = Part and Part:IsA("BasePart")
    if uN_1 then
        return Part.Position
    end
    return RepairZone:GetPivot().Position
end
pr = function()
    if not State.AutoRepair then
        return
    end
    local uP = State.StealBusy or LocalPlayer:GetAttribute("StealingEgg") == true
    if uP then
        return
    end
    local uP_1 = oW()
    if not uP_1 then
        return
    end
    local uQ = pE()
    if not uQ then
        return
    end
    if (Vector3.new(uQ.Position.X, 0, uQ.Position.Z) - Vector3.new(uP_1.X, 0, uP_1.Z)).Magnitude > 3 then
        pJ(uP_1)
    end
    State.Status = "Repairing"
end
pH = function()
    if not State.AutoUpgradePen then
        return
    end
    local uS = pg("penLevel", 1)
    if typeof(uS) ~= "number" then
        uS = 1
    end
    local uT = PenProgression[uS]
    if not uT or uT.price == nil then
        return
    end
    local uS_2 = pg("currency", 0)
    local uU = typeof(uS_2) ~= "number" or uS_2 < uT.price
    if uU then
        return
    end
    pcall(function()
        Request:FireServer("UpgradeFromPanel")
    end)
end
pT = function()
    if not State.AutoClaimIndex then
        return
    end
    pcall(function()
        Claim:FireServer("All")
    end)
end
oP.SetAutoSteal = function(f3)
    local u0 = f3 and true or false
    State.AutoSteal = u0
    if State.AutoSteal then
        pj("steal", 0.35, pt)
    else
        pD("steal")
        State.StealBusy = false
    end
end
oP.SetAutoPlace = function(f8)
    local u3 = f8 and true or false
    State.AutoPlace = u3
    if State.AutoPlace then
        pj("place", 0.5, o9)
    else
        pD("place")
        State.PlaceBusy = false
    end
end
oP.SetAutoHatch = function(gd)
    local u6 = gd and true or false
    State.AutoHatch = u6
    if State.AutoHatch then
        pj("hatch", 0.75, pI)
    else
        pD("hatch")
    end
end
oP.SetAutoEquipBest = function(gi)
    local vc = gi and true or false
    State.AutoEquipBest = vc
    if State.AutoEquipBest then
        pj("equipBest", 2, pY)
    else
        pD("equipBest")
    end
end
oP.SetAutoSell = function(gn)
    local vi = gn and true or false
    State.AutoSell = vi
    if State.AutoSell then
        pj("sell", 2.5, py)
    else
        pD("sell")
    end
end
oP.SetAutoBuyBoat = function(go)
    local vl = go and true or false
    State.AutoBuyBoat = vl
    if State.AutoBuyBoat or State.AutoUpgradeBoat then
        pj("boatBuy", 2, po)
    else
        pD("boatBuy")
    end
end
oP.SetAutoUpgradeBoat = function(gq)
    local vo = gq and true or false
    State.AutoUpgradeBoat = vo
    if State.AutoBuyBoat or State.AutoUpgradeBoat then
        pj("boatBuy", 2, po)
    else
        pD("boatBuy")
    end
end
oP.SetAutoRepair = function(gs)
    local vu = gs and true or false
    State.AutoRepair = vu
    if State.AutoRepair then
        pj("repair", 0.75, pr)
    else
        pD("repair")
    end
end
oP.SetAutoUpgradePen = function(gt)
    local vx = gt and true or false
    State.AutoUpgradePen = vx
    if State.AutoUpgradePen then
        pj("penUpgrade", 2, pH)
    else
        pD("penUpgrade")
    end
end
oP.SetAutoClaimIndex = function(gu)
    local vA = gu and true or false
    State.AutoClaimIndex = vA
    if State.AutoClaimIndex then
        pj("index", 3, pT)
    else
        pD("index")
    end
end
oP.SetSelectedZones = function(gv)
    local vC = pN(gv)
    local vD = {}
    for k in pairs(vC) do
        local vC_1 = ph[k]
        if vC_1 then
            vD[vC_1] = true
        end
    end
    State.SelectedZones = vD
end
oP.SetStealRarities = function(gB)
    State.StealRarities = pN(gB)
end
oP.SetSellRarities = function(gE)
    State.SellRarities = pN(gE)
end
oP.SetSellMode = function(gH)
    if gH == "Eggs" or gH == "Animals" or gH == "Both" then
        State.SellMode = gH
    end
end
oZ = {
    [1] = false,
    [2] = 32,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = false,
    [7] = 60,
    [8] = {},
    [9] = {}
}
oQ = function(gL)
    local vN = oZ[8][gL]
    if vN then
        vN:Disconnect()
        oZ[8][gL] = nil
    end
end
oP.SetWalkSpeedEnabled = function(gO)
    local vY_1
    local vW = gO and true
    local vW_1
    local vX = vW
    local vX_1
    local v1 = if vX then 1 else 0
    local v_ = 138 * v1 + 1464 * (1 - v1)
    local v0 = 3362 * v1 + 1733 * (1 - v1)
    if not ((v_ * 2982 + v0 * 1387 + v_ * v0) % 16777213 == 5538566) then
        vX = false
    end
    oZ[1] = vX
    oQ("walk")
    if not oZ[1] then
        vX_1, vW_1, vY_1 = pE()
        if vY_1 then
            vY_1.WalkSpeed = 16
        end
        return
    end
    oZ[8].walk = oM.RunService.Heartbeat:Connect(function()
        local vR_1
        local vQ_1
        local vP = not ps() or not oZ[1]
        local vP_1
        if vP then
            return
        end
        vQ_1, vP_1, vR_1 = pE()
        if vR_1 and vR_1.WalkSpeed ~= oZ[2] then
            vR_1.WalkSpeed = oZ[2]
        end
    end)
end
oP.SetWalkSpeedValue = function(g4)
    local v5 = tonumber(g4) or 32
    oZ[2] = v5
end
oP.SetInfJump = function(g6)
    local wf = g6 and true or false
    oZ[3] = wf
    oQ("infJump")
    if not oZ[3] then
        return
    end
    oZ[8].infJump = oM.UserInputService.JumpRequest:Connect(function()
        local v9_1
        local v8_1
        local v7 = not ps() or not oZ[3]
        local v7_1
        if v7 then
            return
        end
        v7_1, v8_1, v9_1 = pE()
        if v9_1 then
            v9_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end
oP.SetNoClip = function(hj)
    local wq = hj and true
    local wu = if wq then 1 else 0
    local ws = 1580 * wu + 404 * (1 - wu)
    local wt = 2882 * wu + 3326 * (1 - wu)
    if not ((ws * 2441 + wt * 3350 + ws * wt) % 16777213 == 1287827) then
        wq = false
    end
    oZ[4] = wq
    oQ("noclip")
    if not oZ[4] then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.CanCollide = true
                end
            end
        end
        return
    end
    oZ[8].noclip = oM.RunService.Stepped:Connect(function()
        local wh = not ps() or not oZ[4]
        if wh then
            return
        end
        local Character = LocalPlayer.Character
        if not Character then
            return
        end
        for i, descendant in ipairs(Character:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.CanCollide = false
            end
        end
    end)
end
oP.SetInstantProximityPrompt = function(hz)
    local wH
    local wJ = hz and true
    local wN = if wJ then 1 else 0
    local wL = 369 * wN + 2766 * (1 - wN)
    local wM = 3942 * wN + 737 * (1 - wN)
    if not ((wL * 1082 + wM * 2457 + wL * wM) % 16777213 == 11539350) then
        wJ = false
    end
    oZ[5] = wJ
    if not oZ[5] then
        for k, v in pairs(oZ[9]) do
            local wR = k
            local wT = v
            if wR and wR.Parent then
                pcall(function()
                    wR.HoldDuration = wT
                end)
            end
        end
        table.clear(oZ[9])
        oQ("prompt")
        return
    end
    wH = function(hI)
        local wB = hI:IsA("ProximityPrompt") and oZ[9][hI] == nil
        if wB then
            oZ[9][hI] = hI.HoldDuration
            hI.HoldDuration = 0
        end
    end
    for i, descendant in ipairs(pa:GetDescendants()) do
        wH(descendant)
    end
    oQ("prompt")
    oZ[8].prompt = pa.DescendantAdded:Connect(function(hO)
        if oZ[5] then
            wH(hO)
        end
    end)
end
oP.SetFly = function(hR)
    local xa = hR and true or false
    oZ[6] = xa
    oQ("fly")
    local w9_1 = pE()
    if w9_1 then
        local OuroFly = w9_1:FindFirstChild("OuroFly")
        if OuroFly then
            OuroFly:Destroy()
        end
    end
    if not oZ[6] then
        return
    end
    oZ[8].fly = oM.RunService.RenderStepped:Connect(function()
        local w_ = not ps() or not oZ[6]
        if w_ then
            return
        end
        local w__1 = pE()
        if not w__1 then
            return
        end
        local w0 = w__1:FindFirstChild("OuroFly")
        if not w0 then
            w0 = Instance.new("BodyVelocity")
            w0.Name = "OuroFly"
            w0.MaxForce = Vector3.new(100000, 100000, 100000)
            w0.Parent = w__1
        end
        local w__2 = Vector3.zero
        local CurrentCamera = pa.CurrentCamera
        if not CurrentCamera then
            return
        end
        if oM.UserInputService:IsKeyDown(Enum.KeyCode.W) then
            w__2 += CurrentCamera.CFrame.LookVector
        end
        if oM.UserInputService:IsKeyDown(Enum.KeyCode.S) then
            w__2 -= CurrentCamera.CFrame.LookVector
        end
        if oM.UserInputService:IsKeyDown(Enum.KeyCode.A) then
            w__2 -= CurrentCamera.CFrame.RightVector
        end
        if oM.UserInputService:IsKeyDown(Enum.KeyCode.D) then
            w__2 += CurrentCamera.CFrame.RightVector
        end
        if oM.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            w__2 += Vector3.yAxis
        end
        if oM.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            w__2 -= Vector3.yAxis
        end
        if w__2.Magnitude > 0 then
            w0.Velocity = w__2.Unit * oZ[7]
        else
            w0.Velocity = Vector3.zero
        end
    end)
end
oP.SetFlySpeed = function(h9)
    local xc = tonumber(h9) or 60
    oZ[7] = xc
end
oP.Track(function()
    for k in pairs(State.Workers) do
        pD(k)
    end
    oP.SetWalkSpeedEnabled(false)
    oP.SetInfJump(false)
    oP.SetNoClip(false)
    oP.SetInstantProximityPrompt(false)
    oP.SetFly(false)
end)
pu = function(ii, ij)
    local xj = false
    if type(setclipboard) == "function" then
        xj = pcall(setclipboard, ii)
    elseif type(toclipboard) == "function" then
        xj = pcall(toclipboard, ii)
    end
    if xj then
        local xj_1 = ij or "Copied"
        oT(xj_1, 3)
    else
        oT("Clipboard unavailable", 3)
    end
end
oX = function(io)
    return (tostring(io):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
p_ = function(iq, ir)
    return string.format('<font color="%s">%s</font>', ir, oX(iq))
end
pz = function(iu, iv, iw)
    return string.format("<b>%s</b> %s %s", iu, '<font color="#5a6070">-</font>', p_(iv, iw))
end
oS = "#e8a34d"
o2 = "#6ec1ff"
o8 = "#7fd47f"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
qa(oP, Library)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pc, Copyable = true }, "|", pq, "|", qb },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
pv = {}
pv[1] = Window:AddTab("Info", "info")
pv[2] = Window:AddTab("Main", "gamepad-2")
pv[3] = Window:AddTab("Player", "person-standing")
pv[4] = Window:AddTab("Settings", "settings")
pp = function(iJ)
    local DiscordGroup = iJ:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = pc,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function p2_7()
    local iS
    local iN
    iN = "Unknown"
    pcall(function()
        local xm_1
        local xl_1
        if type(identifyexecutor) == "function" then
            xm_1, xl_1 = identifyexecutor()
            local xn = xm_1 ~= ""
            local xo = type(xm_1) == "string" and xn
            if xo then
                local xn_1 = type(xl_1) == "string" and xl_1 ~= "" and xm_1 .. " " .. xl_1
                iN = xn_1 or xm_1
            end
        end
    end)
    iS = os.clock()
    local function iT()
        local xq = math.floor(os.clock() - iS)
        if xq < 60 then
            return xq .. "s"
        elseif xq < 3600 then
            return string.format("%dm %ds", xq // 60, xq % 60)
        else
            return string.format("%dh %dm", xq // 3600, xq % 3600 // 60)
        end
    end
    local UserGroup = pv[1]:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(pz("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, o8), true)
    UserGroup:AddLabel(pz("UserId", tostring(LocalPlayer.UserId), o2), true)
    UserGroup:AddLabel(pz("Executor", iN, o8), true)
    UserGroup:AddDivider()
    local Label5 = UserGroup:AddLabel(pz("Session", iT(), oS), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pu(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pu("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = pv[1]:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = pc,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = pv[1]:AddRightGroupbox("Session", "signal")
    local Label4 = SessionGroup:AddLabel('<b>Game</b> <font color="#5a6070">-</font> <font color="#7fd47f">Sail For Eggs</font>', true)
    local Label3 = SessionGroup:AddLabel(pz("Players", tostring(#oM.Players:GetPlayers()), o2), true)
    local Label2 = SessionGroup:AddLabel(pz("Job", string.sub(game.JobId, 1, 8) .. "...", oS), true)
    local Label = SessionGroup:AddLabel('<b>Ping</b> <font color="#5a6070">-</font> <font color="#7fd47f">0 ms</font>', true)
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            pcall(function()
                oM.TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            pu(game.JobId, "Copied Job ID")
        end
    })
    local SocialsGroup = pv[1]:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord",
        Func = function()
            pu(pc, "Copied Discord")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts",
        Func = function()
            pu(o5, "Copied Rscripts")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website",
        Func = function()
            pu(oY, "Copied Website")
        end
    })
    task.spawn(function()
        local xv = false
        repeat
            local xs
            if ps() then
                Label5:SetText(pz("Session", iT(), oS))
                Label3:SetText(pz("Players", tostring(#oM.Players:GetPlayers()), o2))
                xs = 0
                pcall(function()
                    xs = math.floor(oM.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(pz("Ping", tostring(xs) .. " ms", o8))
                Label4:SetText('<b>Game</b> <font color="#5a6070">-</font> <font color="#7fd47f">Sail For Eggs</font>')
                Label2:SetText(pz("Job", string.sub(game.JobId, 1, 8) .. "...", oS))
                task.wait(1)
            else
                xv = true
            end
        until xv
    end)
end
local function p3_2()
    pp(pv[2])
    local StealGroup = pv[2]:AddLeftGroupbox("Steal", "egg")
    StealGroup:AddToggle("AutoStealEgg", { Text = "Auto Steal Egg", Default = false })
    StealGroup:AddDropdown("ZoneFilter", { Text = "Zones", Values = pn, Multi = true, AllowNull = true, Default = pn })
    StealGroup:AddDropdown("StealRarityFilter", { Text = "Steal Rarities", Values = o_, Multi = true, AllowNull = true, Default = o_ })
    local PenGroup = pv[2]:AddLeftGroupbox("Pen", "house")
    PenGroup:AddToggle("AutoPlaceEgg", { Text = "Auto Place Egg", Default = false })
    PenGroup:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
    PenGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    PenGroup:AddToggle("AutoUpgradePen", { Text = "Auto Upgrade Pen", Default = false })
    local EconomyGroup = pv[2]:AddRightGroupbox("Economy", "coins")
    EconomyGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    EconomyGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = { "Animals", "Eggs", "Both" }, Default = "Animals" })
    EconomyGroup:AddDropdown("SellRarityFilter", {
        Text = "Sell Rarities",
        Values = o_,
        Multi = true,
        AllowNull = true,
        Default = { "Common", "Uncommon", "Rare" }
    })
    EconomyGroup:AddToggle("AutoBuyBoat", { Text = "Auto Buy Boat", Default = false })
    EconomyGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
    local BoatGroup = pv[2]:AddRightGroupbox("Boat", "ship")
    BoatGroup:AddToggle("AutoRepair", { Text = "Auto Repair", Default = false })
    BoatGroup:AddToggle("AutoUpgradeBoat", { Text = "Auto Upgrade Boat", Default = false })
    Toggles.AutoStealEgg:OnChanged(function(jW)
        oP.SetAutoSteal(jW)
    end)
    Options.ZoneFilter:OnChanged(function(j_)
        oP.SetSelectedZones(j_)
    end)
    Options.StealRarityFilter:OnChanged(function(j1)
        oP.SetStealRarities(j1)
    end)
    Toggles.AutoPlaceEgg:OnChanged(function(j3)
        oP.SetAutoPlace(j3)
    end)
    Toggles.AutoHatch:OnChanged(function(j5)
        oP.SetAutoHatch(j5)
    end)
    Toggles.AutoEquipBest:OnChanged(function(j7)
        oP.SetAutoEquipBest(j7)
    end)
    Toggles.AutoUpgradePen:OnChanged(function(j9)
        oP.SetAutoUpgradePen(j9)
    end)
    Toggles.AutoSell:OnChanged(function(kb)
        oP.SetAutoSell(kb)
    end)
    Options.SellMode:OnChanged(function(kd)
        oP.SetSellMode(kd)
    end)
    Options.SellRarityFilter:OnChanged(function(kf)
        oP.SetSellRarities(kf)
    end)
    Toggles.AutoBuyBoat:OnChanged(function(kh)
        oP.SetAutoBuyBoat(kh)
    end)
    Toggles.AutoClaimIndex:OnChanged(function(kj)
        oP.SetAutoClaimIndex(kj)
    end)
    Toggles.AutoRepair:OnChanged(function(kl)
        oP.SetAutoRepair(kl)
    end)
    Toggles.AutoUpgradeBoat:OnChanged(function(kn)
        oP.SetAutoUpgradeBoat(kn)
    end)
    oP.SetSelectedZones(Options.ZoneFilter.Value)
    oP.SetStealRarities(Options.StealRarityFilter.Value)
    oP.SetSellRarities(Options.SellRarityFilter.Value)
    oP.SetSellMode(Options.SellMode.Value)
end
local function p4_3()
    pp(pv[3])
    local MovementGroup = pv[3]:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = pv[3]:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(kw)
        oP.SetWalkSpeedEnabled(kw)
    end)
    Options.WalkSpeed:OnChanged(function(kA)
        oP.SetWalkSpeedValue(kA)
    end)
    Toggles.InfJump:OnChanged(function(kC)
        oP.SetInfJump(kC)
    end)
    Toggles.NoClip:OnChanged(function(kE)
        oP.SetNoClip(kE)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(kG)
        oP.SetInstantProximityPrompt(kG)
    end)
    Toggles.Fly:OnChanged(function(kI)
        oP.SetFly(kI)
    end)
    Options.FlySpeed:OnChanged(function(kK)
        oP.SetFlySpeed(kK)
    end)
end
o4 = {
    [1] = true,
    [2] = true,
    [3] = false,
    [4] = false,
    [5] = false,
    [6] = nil,
    [7] = nil,
    [8] = {},
    [9] = {},
    [10] = nil,
    [11] = nil
}
p5 = function()
    local function kO()
        local xw = not pA(oM.VirtualUser.CaptureController) or not pA(oM.VirtualUser.ClickButton2)
        if xw then
            return false
        end
        return pcall(function()
            oM.VirtualUser:CaptureController()
            oM.VirtualUser:ClickButton2(Vector2.new())
        end)
    end
    oP.SetAntiAfk = function(kV)
        local xE = kV and true or false
        o4[1] = xE
        if o4[6] then
            o4[6]:Disconnect()
            o4[6] = nil
        end
        if o4[7] then
            pcall(task.cancel, o4[7])
            o4[7] = nil
        end
        if not o4[1] then
            return
        end
        o4[6] = LocalPlayer.Idled:Connect(function()
            local xy = ps() and o4[1]
            if xy then
                kO()
            end
        end)
        o4[7] = task.spawn(function()
            local xA = os.clock()
            while true do
                local xB = ps() and o4[1]
                if xB then
                    task.wait(1)
                    local xB_1 = not ps() or not o4[1]
                    if xB_1 then
                        break
                    end
                    if os.clock() - xA >= 60 then
                        xA = os.clock()
                        kO()
                    end
                    continue
                end
                break
            end
        end)
    end
    oP.SetNoGameplayPaused = function(ld)
        local xT
        local xV = ld and true or false
        o4[2] = xV
        if o4[11] then
            o4[11]:Disconnect()
            o4[11] = nil
        end
        if not o4[2] then
            return
        end
        xT = function()
            pcall(function()
                local RobloxGui = oM.CoreGui:FindFirstChild("RobloxGui")
                local xH = RobloxGui and RobloxGui:FindFirstChild("Notifications")
                if xH then
                    for i, descendant in ipairs(xH:GetDescendants()) do
                        local xG_2 = descendant:IsA("TextLabel") and string.find(string.lower(descendant.Text), "gameplay paused")
                        if xG_2 then
                            local Frame = descendant:FindFirstAncestorOfClass("Frame")
                            if Frame then
                                Frame.Visible = false
                            end
                        end
                    end
                end
            end)
        end
        xT()
        o4[11] = oM.CoreGui.DescendantAdded:Connect(function()
            if o4[2] then
                xT()
            end
        end)
    end
    oP.SetAutoReconnect = function(ls)
        local x2 = ls and true or false
        o4[3] = x2
        for i, v in ipairs(o4[8]) do
            v:Disconnect()
        end
        table.clear(o4[8])
        if not o4[3] then
            return
        end
        table.insert(o4[8], oM.TeleportService.TeleportInitFailed:Connect(function()
            local x_ = not ps() or not o4[3]
            if x_ then
                return
            end
            task.wait(1)
            local x__1 = ps() and o4[3]
            if x__1 then
                pcall(function()
                    oM.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        end))
    end
    oP.SetDisable3D = function(lH)
        local yb = lH and true or false
        o4[4] = yb
        pcall(function()
            oM.RunService:Set3dRenderingEnabled(not o4[4])
        end)
    end
    oP.SetFpsBoost = function(lM)
        local yx
        local yz = lM and true or false
        o4[5] = yz
        if o4[10] then
            o4[10]:Disconnect()
            o4[10] = nil
        end
        local function yy_1()
            for k, v in pairs(o4[9]) do
                local yi = k
                if yi and yi.Parent then
                    for k, v in pairs(v) do
                        local yo = k
                        local yq = v
                        pcall(function()
                            yi[yo] = yq
                        end)
                    end
                end
            end
            table.clear(o4[9])
        end
        if not o4[5] then
            yy_1()
            return
        end
        yx = function(lZ)
            if o4[9][lZ] then
                return
            end
            local yr = lZ:IsA("ParticleEmitter") or lZ:IsA("Trail") or lZ:IsA("Beam") or lZ:IsA("Fire")
            local yv = if yr then 1 else 0
            local yt = 2284 * yv + 1382 * (1 - yv)
            local yu = 3960 * yv + 2331 * (1 - yv)
            if not ((yt * 1633 + yu * 3160 + yt * yu) % 16777213 == 8510799) then
                yr = lZ:IsA("Smoke")
            end
            if not yr then
                yr = lZ:IsA("Sparkles")
            end
            if yr then
                o4[9][lZ] = { Enabled = lZ.Enabled }
                lZ.Enabled = false
            end
        end
        for i, descendant in ipairs(pa:GetDescendants()) do
            yx(descendant)
        end
        if o4[9][oM.Lighting] == nil then
            o4[9][oM.Lighting] = { GlobalShadows = oM.Lighting.GlobalShadows }
            oM.Lighting.GlobalShadows = false
        end
        o4[10] = pa.DescendantAdded:Connect(function(l6)
            if o4[5] then
                yx(l6)
            end
        end)
    end
    oP.Track(function()
        oP.SetAntiAfk(false)
        oP.SetNoGameplayPaused(false)
        oP.SetAutoReconnect(false)
        oP.SetDisable3D(false)
        oP.SetFpsBoost(false)
    end)
end
local function p6()
    pp(pv[4])
    local MenuGroup = pv[4]:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = pv[4]:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(mj)
        oP.SetAntiAfk(mj)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(mm)
        oP.SetNoGameplayPaused(mm)
    end)
    Toggles.AutoReconnect:OnChanged(function(mo)
        oP.SetAutoReconnect(mo)
    end)
    Toggles.Disable3DRendering:OnChanged(function(mq)
        oP.SetDisable3D(mq)
    end)
    Toggles.FPSBoost:OnChanged(function(ms)
        oP.SetFpsBoost(ms)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(pv[4])
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("OuroborosHub/SailForEggs")
    SaveManager:BuildConfigSection(pv[4])
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
    oP.SetAntiAfk(Toggles.AntiAfk.Value)
    oP.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
    oP.SetAutoReconnect(Toggles.AutoReconnect.Value)
    oP.SetDisable3D(Toggles.Disable3DRendering.Value)
    oP.SetFpsBoost(Toggles.FPSBoost.Value)
    oP.SetSelectedZones(Options.ZoneFilter.Value)
    oP.SetStealRarities(Options.StealRarityFilter.Value)
    oP.SetSellRarities(Options.SellRarityFilter.Value)
    oP.SetSellMode(Options.SellMode.Value)
    oP.SetAutoSteal(Toggles.AutoStealEgg.Value)
    oP.SetAutoPlace(Toggles.AutoPlaceEgg.Value)
    oP.SetAutoHatch(Toggles.AutoHatch.Value)
    oP.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
    oP.SetAutoUpgradePen(Toggles.AutoUpgradePen.Value)
    oP.SetAutoSell(Toggles.AutoSell.Value)
    oP.SetAutoBuyBoat(Toggles.AutoBuyBoat.Value)
    oP.SetAutoClaimIndex(Toggles.AutoClaimIndex.Value)
    oP.SetAutoRepair(Toggles.AutoRepair.Value)
    oP.SetAutoUpgradeBoat(Toggles.AutoUpgradeBoat.Value)
    if Toggles.HideUIOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
p5()
p2_7()
p3_2()
p4_3()
p6()
