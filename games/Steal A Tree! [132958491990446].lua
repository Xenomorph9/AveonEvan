local pi
local pH
local qo
local po
local p5
local Workspace
local TrailDictionary
local pu
local pT
local pA
local qh
local RebirthDictionary
local pZ
local pG
local qn
local pn
local pM
local qt
local pt
local qa
local pS
local qg
local pF
local PlaytimeRewardDictionary
local pm
local p3
local qs
local qy
local py
local Library
local pX
local pE
local JuicerUpgradeDictionary
local Toggles
local pK
local qr
local pr
local px
local qe
local Options
local pk
local p1
local pJ
local PetEggDictionary
local pq
local p7
local pP
local pw
local qd
local pV
local pC
local qj
local p0
local LocalPlayer
local pp
local pO
local qv
local pv
local Plots
local function fn11(bW)
    local CollectSaplingPrompt = bW:FindFirstChild("CollectSaplingPrompt", true)
    local r7 = CollectSaplingPrompt and CollectSaplingPrompt:IsA("ProximityPrompt")
    if r7 then
        return CollectSaplingPrompt
    end
    return nil
end
local function fn45(ci, cj)
    if Toggles.StealUseFilters and Toggles.StealUseFilters.Value ~= true then
        return true
    elseif not pi(ci) then
        return true
    else
        return ci.Value[cj] == true
    end
end
local function fn53(aB)
    pk[#pk + 1] = aB
    return aB
end
local function fn67()
    local Character = LocalPlayer.Character
    local rA = Character and Character:FindFirstChild("HumanoidRootPart")
    return rA
end
local function fn73(aV)
    local DiscordGroup = aV:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = py })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = py })
end
local function fn109()
    pZ(pr, pr + Vector3.new(0, 0, -1))
    task.wait(0.35)
    return true
end
local function onOnClientEvent(ga)
    if type(ga) == "table" then
        qn.quest = ga
    end
end
local function onOnClientEvent3(ge, gf, gg)
    local vJ = tonumber(ge) or 1
    qn.dailyDay = math.clamp(math.floor(vJ), 1, 7)
    qn.dailyCanClaim = gg == true
end
local function fn226()
    if pq("CarriedSaplingTemplate") then
        pn()
        qv(2.5)
        if Toggles.AutoPlaceTrees.Value then
            pA()
        end
        return
    end
    local uA = Toggles.AutoClaimTree.Value and pM()
    if uA then
        return
    end
    if Toggles.AutoStealTree.Value then
        local uA_1 = qy()
        if uA_1 then
            qn.lastPickupAt = os.clock()
            if qr(uA_1) then
                pn()
                qv(2.5)
                if Toggles.AutoPlaceTrees.Value then
                    pA()
                end
            end
            return
        end
    end
    if Toggles.AutoPlaceTrees.Value then
        pA()
    end
end
local function onOnClientEvent4(gi, gj)
    local vL = type(gi) == "table" and gi
    local vM = {}
    local vN = vL
    local vR = if vN then 1 else 0
    local vP = 1586 * vR + 1006 * (1 - vR)
    local vQ = 793 * vR + 1141 * (1 - vR)
    if not ((vP * 2885 + vQ * 2988 + vP * vQ) % 16777213 == 8202792) then
        vN = vM
    end
    qn.trailsOwned = vN
    local vL_1 = type(gj) == "string" and gj
    local vM_1 = vL_1
    local vU = if vM_1 then 1 else 0
    local vS = 766 * vU + 2173 * (1 - vU)
    local vT = 3452 * vU + 3967 * (1 - vU)
    if not ((vS * 3013 + vT * 495 + vS * vT) % 16777213 == 6660930) then
        vM_1 = ""
    end
    qn.trailEquipped = vM_1
end
local function fn261()
    local rM = pq("AssignedTycoon")
    if not rM then
        return nil
    end
    return Plots:FindFirstChild(rM)
end
local function fn279(bL)
    local rY = bL + Vector3.new(5, 3, 0)
    if not pZ(rY, bL) then
        return false
    end
    task.wait(0.4)
    local rZ = qg()
    if not rZ then
        return false
    end
    if (rZ.Position - bL).Magnitude > 12 then
        pZ(rY, bL)
        task.wait(0.25)
        rZ = qg()
    end
    return rZ ~= nil and (rZ.Position - bL).Magnitude <= 12
end
local function fn284(cb)
    local sn = cb and cb.Value
    if type(sn) ~= "table" then
        return false
    end
    for k, v in sn do
        if v == true then
            return true
        end
    end
    return false
end
local function fn307(bl)
    local attr = LocalPlayer:GetAttribute(bl)
    local rJ = attr ~= ""
    local rK = type(attr) == "string" and rJ
    if rK then
        return attr
    end
    return nil
end
local function fn377()
    local sy = qt()
    local sz = {}
    if not sy then
        return sz
    end
    local PlantedTreeRuntime = sy:FindFirstChild("PlantedTreeRuntime", true)
    if not PlantedTreeRuntime then
        return sz
    end
    for i, descendant in PlantedTreeRuntime:GetDescendants() do
        local attr = descendant:GetAttribute("PlantZone")
        local sA_1 = attr ~= ""
        local sB = type(attr) == "string" and sA_1
        if sB then
            sz[attr] = true
        end
    end
    return sz
end
local function fn394()
    if not Toggles.AutoClaimRewards.Value then
        return
    end
    if os.clock() - qn.lastRewardAt < 1.2 then
        return
    end
    qn.lastRewardAt = os.clock()
    pK:Fire("GetState")
    pF:Fire("GetState")
    local playtime = qn.playtime
    if type(playtime) == "table" then
        local u5 = tonumber(playtime.AccumulatedSeconds) or 0
        local max = math.max
        local u7 = Workspace:GetServerTimeNow()
        local u8 = (tonumber(playtime.SnapshotAt))
        local vd = if u8 then 1 else 0
        local vb = 2019 * vd + 3556 * (1 - vd)
        local vc = 3092 * vd + 2443 * (1 - vd)
        if not ((vb * 3757 + vc * 2179 + vb * vc) % 16777213 == 3788386) then
            u8 = 0
        end
        local u6_1 = u5 + max(0, u7 - u8)
        local Claimed = playtime.Claimed
        for k, v in po do
            local u4_1 = PlaytimeRewardDictionary.Get(v)
            local u7_1 = type(Claimed) == "table" and Claimed[v] == true
            local u8_1 = u4_1
            if u8_1 then
                u8_1 = not u7_1
            end
            if u8_1 then
                u8_1 = u6_1 >= (u4_1.RequiredSeconds or math.huge)
            end
            if u8_1 then
                pK:Fire("Claim", v)
            end
        end
    end
    local u4_2 = LocalPlayer:GetAttribute("CanClaimDaily") == true or qn.dailyCanClaim
    if u4_2 then
        local u4_3 = math.clamp(math.floor(pH("DailyRewardDay", qn.dailyDay)), 1, 7)
        pF:Fire("Claim", u4_3)
    end
end
local function fn411(ei, ej)
    local attr = ei:GetAttribute("LocalSaplingId")
    if type(attr) ~= "string" then
        return false
    end
    local uj = tonumber(string.match(attr, "^(%d+)")) or Workspace:GetAttribute("SaplingPopulationGeneration")
    local uj_1 = tonumber(string.match(attr, ":(%d+)$")) or 1
    p5:Fire({
        Id = attr,
        Generation = uj,
        AreaNumber = ei:GetAttribute("AreaNumber"),
        Index = uj_1,
        Position = ej.Position
    })
    return true
end
local function fn485(bS)
    local Handle = bS:FindFirstChild("Handle", true)
    local r4 = Handle and Handle:IsA("BasePart")
    if r4 then
        return Handle
    elseif bS:IsA("BasePart") then
        return bS
    else
        return bS:FindFirstChildWhichIsA("BasePart", true)
    end
end
local function fn493(eL)
    local ux = os.clock() + eL
    while true do
        local uy = os.clock() < ux and not Library.Unloaded
        if uy then
            if not pq("CarriedSaplingTemplate") then
                return true
            end
            task.wait(0.08)
            continue
        end
        break
    end
    return not pq("CarriedSaplingTemplate")
end
local function fn610()
    if os.clock() - qn.lastPlantAt < 0.35 then
        return false
    end
    local to = not p7() and not pq("CarriedSaplingTemplate")
    if to then
        return false
    end
    local to_1 = pu()
    local tp = to_1[1]
    if not tp then
        return false
    elseif not pm(tp.Part.Position) then
        return false
    else
        qn.lastPlantAt = os.clock()
        p1:Fire(tp.Name, tp.Part.Position, tp.Part)
        return true
    end
end
local function fn731()
    local tE_1
    local tD_1
    if os.clock() - qn.lastClaimTreeAt < 0.35 then
        return false
    elseif pq("CarriedSaplingTemplate") then
        return false
    else
        tE_1, tD_1 = qs()
        if not (tE_1 and tD_1) then
            return false
        end
        local tJ = if not pm(tD_1.Position) then 1 else 0
        if tJ == 1 then
            return false
        end
        qn.lastClaimTreeAt = os.clock()
        local tM = 1
        while tM <= 8 do
            if Library.Unloaded or not Toggles.AutoClaimTree.Value then
                return false
            end
            if not tE_1.Parent then
                return true
            end
            pJ(tE_1)
            local tD_3 = os.clock() + 0.28
            while os.clock() < tD_3 do
                if not tE_1.Parent then
                    return true
                end
                task.wait(0.05)
            end
            tM += 1
        end
        return not tE_1.Parent
    end
end
local function onOnClientEvent2(gc)
    if type(gc) == "table" then
        qn.playtime = gc
    end
end
local function autoStealTreeLoop()
    while not Library.Unloaded do
        if Toggles.AutoStealTree.Value or Toggles.AutoPlaceTrees.Value or Toggles.AutoClaimTree.Value then
            pcall(qa)
        end
        task.wait(0.12)
    end
end
local function worker()
    while not Library.Unloaded do
        pcall(pw)
        pcall(qo)
        pcall(pX)
        pcall(pp)
        pcall(pt)
        pcall(p3)
        task.wait(0.35)
    end
end
local function fn828()
    local tu = qt()
    if not tu then
        return nil
    end
    local PlantedTreeRuntime = tu:FindFirstChild("PlantedTreeRuntime", true)
    local tu_1 = PlantedTreeRuntime and PlantedTreeRuntime:FindFirstChild("_ClaimableTrees")
    if not tu_1 then
        return nil
    end
    for i, descendant in tu_1:GetDescendants() do
        local tu_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "ClaimTreePrompt" and descendant.Enabled
        if tu_2 then
            local Parent = descendant.Parent
            local tv_2 = Parent and Parent:IsA("BasePart")
            if tv_2 then
                return descendant, Parent
            end
        end
    end
    return nil
end
local function fn855()
    local rO = qt()
    local rP = rO and rO:FindFirstChild("GrowLocation", true)
    return rP or nil
end
local function fn863(aO, aP)
    if setclipboard then
        setclipboard(aO)
    elseif toclipboard then
        toclipboard(aO)
    end
    Library:Notify(aP)
end
local function fn873()
    local Character = LocalPlayer.Character
    local rD = Character and Character:FindFirstChildOfClass("Humanoid")
    return rD
end
local function fn926()
    if not Toggles.AutoPetShop.Value then
        return
    end
    local vq = if os.clock() - qn.lastEggAt < 1.5 then 1 else 0
    if vq == 1 then
        return
    end
    local vl = qe[Options.PetEgg.Value]
    local vk_1 = vl and PetEggDictionary.Get(vl)
    if not vk_1 then
        return
    end
    local vk_2 = tonumber(vk_1.TicketPrice) or 0
    if pH("Tickets", 0) < vk_2 then
        return
    end
    qn.lastEggAt = os.clock()
    pE:Fire("Buy", vl)
end
local function fn1003()
    if not Toggles.AutoBuyTrails.Value then
        return
    end
    if os.clock() - qn.lastTrailAt < 1.4 then
        return
    end
    qn.lastTrailAt = os.clock()
    pC:Fire("GetState")
    local vr = pH("Coins", 0)
    local vs = -1
    local vt
    for k, v in TrailDictionary.Order do
        local vu_1 = TrailDictionary.Get(v)
        local vv = vu_1
        if vv then
            local BuyTrails = Options.BuyTrails
            local vx_1 = vu_1.DisplayName or v
            vv = qd(BuyTrails, vx_1)
        end
        if vv then
            local vv_1 = qn.trailsOwned[v] == true
            local vw_2 = not vv_1
            if vw_2 ~= false then
                local vx_2 = tonumber(vu_1.CashPrice) or math.huge
                vw_2 = vr >= vx_2
            end
            if vw_2 then
                pC:Fire("BuyCash", v)
                return
            end
            if vv_1 then
                local vv_2 = tonumber(vu_1.SpeedMultiplier) or 0
                if vv_2 > vs then
                    vs = vv_2
                    vt = v
                end
            end
        end
    end
    if vt and qn.trailEquipped ~= vt then
        pC:Fire("Equip", vt)
    end
end
local function fn1037(bc, bd)
    local attr = LocalPlayer:GetAttribute(bc)
    if type(attr) == "number" then
        return attr
    end
    local PlrValues = LocalPlayer:FindFirstChild("PlrValues")
    local rG = PlrValues and PlrValues:FindFirstChild(bc)
    local rF_2 = rG
    if rG then
        rG = type(rF_2.Value) == "number"
    end
    if rG then
        return rF_2.Value
    end
    return bd or 0
end
local function fn1042(er)
    local un = qj(er)
    if not un then
        return false
    end
    local uo = p0(er)
    local up = uo and uo.Parent
    local uq = up
    if up then
        up = uq:IsA("BasePart")
    end
    if up then
        up = uq.Position
    end
    local uq_1 = up or un.Position
    if not pm(uq_1) then
        return false
    end
    local uu = 1
    while uu <= 10 do
        if Library.Unloaded or not Toggles.AutoStealTree.Value then
            return false
        end
        if pq("CarriedSaplingTemplate") then
            return true
        end
        if not er.Parent then
            return pq("CarriedSaplingTemplate") ~= nil
        end
        if er:GetAttribute("LocalOnlySapling") == true then
            px(er, un)
        end
        pJ(uo)
        local up_3 = os.clock() + 0.28
        while os.clock() < up_3 do
            if pq("CarriedSaplingTemplate") then
                return true
            end
            task.wait(0.05)
        end
        uu += 1
    end
    return pq("CarriedSaplingTemplate") ~= nil
end
local function fn1048()
    if not Toggles.AutoUpgradeJuice.Value then
        return
    end
    if os.clock() - qn.lastJuiceAt < 0.8 then
        return
    end
    local uF = pH("JuicerIncomeUpgradeLevel", 0)
    if uF >= (JuicerUpgradeDictionary.MaxLevel or 20) then
        return
    end
    local uG_1 = JuicerUpgradeDictionary.GetCost(uF)
    if pH("Coins", 0) < uG_1 then
        return
    end
    qn.lastJuiceAt = os.clock()
    pV:Fire("BuyIncome")
end
local function fn1065()
    local Character = LocalPlayer.Character
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    local function s3(c_)
        local sY = not c_ or not c_:IsA("Tool")
        if sY then
            return false
        end
        local attr = c_:GetAttribute("ItemCategory")
        return attr == "Sapling" or attr == "UprootedTree"
    end
    if Character then
        for i, child in Character:GetChildren() do
            if s3(child) then
                return child
            end
        end
    end
    if Backpack then
        for i, child in Backpack:GetChildren() do
            if s3(child) then
                return child
            end
        end
    end
    return nil
end
local function fn1085()
    if not Toggles.AutoRebirth.Value then
        return
    end
    if os.clock() - qn.lastRebirthAt < 3 then
        return
    end
    local uM = pH("RebirthRequirement", RebirthDictionary.GetRequirement(pH("Rebirths", 0)))
    if pH("Coins", 0) < uM then
        return
    end
    qn.lastRebirthAt = os.clock()
    pS:Fire()
end
local function fn1086()
    if not Toggles.AutoClaimQuests.Value then
        return
    end
    if os.clock() - qn.lastQuestAt < 1.2 then
        return
    end
    qn.lastQuestAt = os.clock()
    pO:Fire("GetState")
    local quest = qn.quest
    if type(quest) ~= "table" then
        return
    end
    local Completed = quest.Completed
    local Claimed = quest.Claimed
    if type(Completed) ~= "table" then
        return
    end
    for k, v in pv do
        local uO_1 = Completed[v] == true
        if uO_1 then
            local uR = type(Claimed) ~= "table"
            local u3 = if uR then 1 else 0
            local u1 = 3460 * u3 + 3411 * (1 - u3)
            local u2 = 1664 * u3 + 1037 * (1 - u3)
            if not ((u1 * 1301 + u2 * 3166 + u1 * u2) % 16777213 == 15527124) then
                uR = Claimed[v] ~= true
            end
            uO_1 = uR
        end
        if uO_1 then
            pO:Fire("Claim", v)
        end
    end
end
local function fn1090()
    local sJ = qh()
    local sK = {}
    if not sJ then
        return sK
    end
    local sL = pP()
    for i, child in sJ:GetChildren() do
        local sJ_1 = string.match(child.Name, "^PlantZone") and not sL[child.Name]
        if sJ_1 then
            local sJ_2 = child
            if child:IsA("Model") then
                local sM_1 = child:FindFirstChild(child.Name) or child:FindFirstChildWhichIsA("BasePart", true)
                sJ_2 = sM_1
            end
            local sM_2 = sJ_2 and sJ_2:IsA("BasePart")
            if sM_2 then
                sK[#sK + 1] = { Name = child.Name, Part = sJ_2, Root = child }
            end
        end
    end
    return sK
end
local function fn1134()
    pG(pT, "Copied Discord invite to clipboard")
end
RebirthDictionary = nil
pi = nil
pk = nil
JuicerUpgradeDictionary = nil
pm = nil
pn = nil
po = nil
pp = nil
pq = nil
pr = nil
pt = nil
pu = nil
pv = nil
pw = nil
px = nil
py = nil
pA = nil
local pB
pC = nil
pE = nil
pF = nil
pG = nil
pH = nil
LocalPlayer = nil
pJ = nil
pK = nil
pM = nil
Workspace = nil
pO = nil
pP = nil
pS = nil
pT = nil
pV = nil
Options = nil
pX = nil
pZ = nil
p0 = nil
p1 = nil
Toggles = nil
local pg, pj, ps, pz, pD, pL, pQ, pR, pU, pY, p_
p3 = nil
p5 = nil
p7 = nil
qa = nil
Plots = nil
qd = nil
qe = nil
Library = nil
qg = nil
qh = nil
qj = nil
PlaytimeRewardDictionary = nil
qn = nil
qo = nil
PetEggDictionary = nil
qr = nil
qs = nil
qt = nil
TrailDictionary = nil
qv = nil
qy = nil
local p4, SaveManager, HttpService, ThemeManager, VirtualUser, UserInputService, SkriptF, RunService, Players, qw, qx, qB, qD, qF, qK, qL, qM, qN, qO
local qC_4, qC_5
p4 = nil
SaveManager = nil
HttpService = nil
ThemeManager = nil
VirtualUser = nil
UserInputService = nil
SkriptF = nil
RunService = nil
Players = nil
qw = nil
qx = nil
local zK_4 = 132958491990446
pg = "Steal a Tree"
if game.PlaceId ~= zK_4 then
    error("Ouroboros: this script is only for Steal a Tree")
end
Players, qB, RunService, UserInputService, VirtualUser, HttpService, p4, p_, pU, pR, Workspace, LocalPlayer = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not qB and not UserInputService and (qB and UserInputService) or (UserInputService and qB or not qB and not UserInputService)) and ((not UserInputService or UserInputService) and (UserInputService or not qB) or (not UserInputService and qB or UserInputService and qB)) or (not UserInputService or UserInputService) and (qB and UserInputService) and (not qB and qB or (not UserInputService or UserInputService)) and (not UserInputService and not UserInputService and (not UserInputService and qB) or UserInputService and qB and (not UserInputService or qB)) or not ((not qB and not UserInputService and (qB and UserInputService) or (UserInputService and qB or not qB and not UserInputService)) and ((not UserInputService or UserInputService) and (UserInputService or not qB) or (not UserInputService and qB or UserInputService and qB)) or (not UserInputService or UserInputService) and (qB and UserInputService) and (not qB and qB or (not UserInputService or UserInputService)) and (not UserInputService and not UserInputService and (not UserInputService and qB) or UserInputService and qB and (not UserInputService or qB))) then
    Players = game:GetService("Players")
else
    game:GetService("Players")
end
qB = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
if (not LocalPlayer or not LocalPlayer or (p_ or false)) and (LocalPlayer or (LocalPlayer or not p_)) and not ((not LocalPlayer or not LocalPlayer or (p_ or false)) and (LocalPlayer or (LocalPlayer or not p_))) then
    pR = game:GetService("CoreGui")
    p4 = game:GetService("GuiService")
    p_ = game:GetService("TeleportService")
    pU = game:GetService("Lighting")
else
    p4 = game:GetService("CoreGui")
    p_ = game:GetService("GuiService")
    pU = game:GetService("TeleportService")
    pR = game:GetService("Lighting")
end
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local zK_9 = getgenv and getgenv()
pD = zK_9 or nil
if pD then
    pB, zK_9 = nil, nil
    local zK_4_2 = 5
    repeat
        if (zK_4_2 * 1 + 1) % 2 + 1 <= 1 then
            local qC_2 = (vector.create((zK_4_2 * 2 + 5) % 11 + 1, (zK_4_2 * 8 + 1) % 13 + 1, (zK_4_2 * 3 + 13) % 17 + 1))
            qD = (vector.create((zK_4_2 * 4 + 6) % 11 + 1, (zK_4_2 * 2 + 5) % 13 + 1, (zK_4_2 * 3 + 12) % 17 + 1))
            local qE_1 = (vector.create((zK_4_2 * 2 + 4) % 11 + 1, (zK_4_2 * 7 + 5) % 13 + 1, (zK_4_2 * 8 + 10) % 17 + 1))
            qF = (vector.create((zK_4_2 * 7 + 2) % 11 + 1, (zK_4_2 * 5 + 12) % 13 + 1, (zK_4_2 * 9 + 2) % 17 + 1))
            if vector.dot(vector.cross(qC_2, qD), (vector.cross(qE_1, qF))) == vector.dot(qC_2, qE_1) * vector.dot(qD, qF) - vector.dot(qC_2, qF) * vector.dot(qD, qE_1) then
                pB = pD.__OuroborosStealATreeLib
            else
                pD = pB.__OuroborosStealATreeLib
            end
            zK_4_2 = (zK_4_2 + 7) % 16
        else
            local qC_3 = {
                "tjcgaxmriev",
                "yhsjutvi",
                "lnwvk",
                "zxrxjwgo",
                "qvptestzuv",
                "alnmxiazi",
                "yysqvklsh",
                "syicq",
                "ziiqux",
                "zbrn",
                "jisxamqjgzzk",
                "kqmhnw",
                "zjikh",
                "hebdqedmxtvh",
                "zeu",
                "nvz"
            }
            if qC_3[(zK_4_2 * 1 + 37) % 16 + 1] < qC_3[(zK_4_2 * 1 + 37) % 16 + 1] then
                pB = zK_9
            else
                zK_9 = pB
            end
            zK_4_2 = (zK_4_2 + 9) % 16
        end
    until (zK_4_2 * 11 + 11) % 16 == 2
    if zK_9 then
        zK_9 = pB.Unload
    end
    if zK_9 then
        pcall(function()
            pB:Unload()
        end)
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
JuicerUpgradeDictionary, RebirthDictionary, TrailDictionary, PetEggDictionary, PlaytimeRewardDictionary, SkriptF, Plots, p5, p1, pV, pS, pO, pK, pF, pE, pC, pz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
qD = qB:WaitForChild("Modules")
zK_9 = qD:WaitForChild("Dictionaries")
local zK_4_3 = require(qD:WaitForChild("REConnection"))
local AreaDictionary = require(zK_9:WaitForChild("AreaDictionary"))
qF = require(zK_9:WaitForChild("ItemDictionary"))
JuicerUpgradeDictionary = require(zK_9:WaitForChild("JuicerUpgradeDictionary"))
RebirthDictionary = require(zK_9:WaitForChild("RebirthDictionary"))
TrailDictionary = require(zK_9:WaitForChild("TrailDictionary"))
PetEggDictionary = require(zK_9:WaitForChild("PetEggDictionary"))
local qG = require(zK_9:WaitForChild("QuestDictionary"))
PlaytimeRewardDictionary = require(zK_9:WaitForChild("PlaytimeRewardDictionary"))
SkriptF = Workspace:WaitForChild("SkriptF")
Plots = SkriptF:WaitForChild("Plots")
local Remotes = qD:WaitForChild("REConnection"):WaitForChild("Remotes")
p5 = zK_4_3.RemoteEvent("LocalSaplingPickupRequest")
p1 = zK_4_3.RemoteEvent("RequestPlantSapling")
pV = zK_4_3.RemoteEvent("JuicerUpgradeRequest")
pS = zK_4_3.RemoteEvent("RequestRebirth")
pO = zK_4_3.RemoteEvent("QuestRequest")
pK = zK_4_3.RemoteEvent("PlaytimeRewardRequest")
pF = zK_4_3.RemoteEvent("DailyRewardRequest")
pE = zK_4_3.RemoteEvent("PetEggRequest")
pC = zK_4_3.RemoteEvent("TrailShopRequest")
pz = {
    Common = 1,
    Rare = 2,
    Epic = 3,
    Legendary = 4,
    Mythic = 5,
    Secret = 6,
    Divine = 7,
    Prismatic = 8,
    Cosmic = 9,
    Supreme = 10
}
local qI = {}
local qH = {}
for k, v in AreaDictionary.AreaOrder do
    qI[#qI + 1] = v
    qH[v] = true
end
qC_4, qB, zK_9, pj = nil, nil, nil, nil
if (qC_4 or not qB) and (not pj and 0) and (not zK_9 or zK_9) or not ((qC_4 or not qB) and (not pj and 0) and (not zK_9 or zK_9)) then
    qC_5 = {}
    qB = {}
else
    qB = {}
    qC_5 = {}
end
zK_9 = {}
pj = {}
local zK_4_4 = qF.GetAll()
for k, v in zK_4_4 do
    if v.Category == "Sapling" then
        qD = v.DisplayName or k
        qC_5[#qC_5 + 1] = qD
        qB[qD] = true
        zK_9[qD] = k
        local zK_4_6 = v.Rarity or "Common"
        pj[k] = zK_4_6
    end
end
table.sort(qC_5)
qD, qe, zK_9 = nil, nil, nil
local zK_4_7 = 15
repeat
    if (zK_4_7 * 1 + 1) % 2 + 1 <= 1 then
        local Bf = bit32.rrotate(bit32.bxor(bit32.lrotate(zK_4_7, 12), string.byte(tostring(qD))), 8)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Bf, 664144503), 22), 2647254402) ~= bit32.lrotate(Bf, 22) then
            zK_9 = {}
        else
            qD = {}
        end
        zK_4_7 = (zK_4_7 + 7) % 16
    else
        if zK_4_7 * 123751689 + 1 + 7 <= zK_4_7 * 123751689 + 1 + 7 + 1 then
            qe = {}
            zK_9 = nil
        else
            zK_9 = {}
            qe = nil
        end
        zK_4_7 = (zK_4_7 + 5) % 16
    end
until (zK_4_7 * 7 + 5) % 16 == 2
for k, v in PetEggDictionary.Order do
    local zK_4_8 = PetEggDictionary.Get(v)
    if zK_4_8 then
        local qE_4 = zK_4_8.DisplayName or v
        qD[#qD + 1] = qE_4
        qe[qE_4] = v
        if not zK_9 then
            zK_9 = qE_4
        end
    end
end
qL, qK, qF = nil, nil, nil
local qE_5 = 4
repeat
    local zK_4_10 = (vector.create((qE_5 * 6 + 8) % 11 + 1, (qE_5 * 11 + 6) % 13 + 1, (qE_5 * 10 + 14) % 17 + 1))
    qM = (vector.create((qE_5 * 4 + 9) % 11 + 1, (qE_5 * 6 + 10) % 13 + 1, (qE_5 * 9 + 3) % 17 + 1))
    qN = (vector.create((qE_5 * 2 + 4) % 11 + 1, (qE_5 * 9 + 1) % 13 + 1, (qE_5 * 3 + 16) % 17 + 1))
    qO = (vector.create((qE_5 * 5 + 3) % 11 + 1, (qE_5 * 3 + 12) % 13 + 1, (qE_5 * 2 + 7) % 17 + 1))
    if vector.dot(vector.cross(zK_4_10, qM), (vector.cross(qN, qO))) == vector.dot(zK_4_10, qN) * vector.dot(qM, qO) - vector.dot(zK_4_10, qO) * vector.dot(qM, qN) + 4 then
        qF = {}
        qL = {}
        qK = {}
    else
        qL = {}
        qK = {}
        qF = {}
    end
    qE_5 = (qE_5 + 0) % 8
until (qE_5 * 7 + 2) % 8 == 6
for k, v in TrailDictionary.Order do
    local zK_4_11 = TrailDictionary.Get(v)
    if zK_4_11 then
        local qE_6 = zK_4_11.DisplayName or v
        qL[#qL + 1] = qE_6
        qK[qE_6] = true
        qF[qE_6] = v
    end
end
pv = {}
for k, v in qG.Quests do
    local zK_4_13 = type(v) == "table" and type(v.Id) == "string"
    if zK_4_13 then
        pv[#pv + 1] = v.Id
    end
end
po = {}
for k in PlaytimeRewardDictionary.Rewards do
    po[#po + 1] = k
end
pk, qn, Library, qw = nil, nil, nil, nil
table.sort(po)
pk = {}
qw = fn53
if (pk or Library) and (qw or qw or (not Library or false)) and not ((pk or Library) and (qw or qw or (not Library or false))) then
    qw = {
        dailyCanClaim = false,
        lastPickupAt = 0,
        playtime = nil,
        dailyDay = 1,
        lastRebirthAt = 0,
        lastJuiceAt = 0,
        lastRewardAt = 0,
        quest = nil,
        lastEggAt = 0,
        lastPlantAt = 0,
        trailEquipped = "",
        lastTrailAt = 0,
        lastClaimTreeAt = 0,
        trailsOwned = {},
        lastQuestAt = 0
    }
else
    qn = {
        quest = nil,
        playtime = nil,
        dailyDay = 1,
        dailyCanClaim = false,
        trailsOwned = {},
        trailEquipped = "",
        lastPickupAt = 0,
        lastPlantAt = 0,
        lastClaimTreeAt = 0,
        lastJuiceAt = 0,
        lastRebirthAt = 0,
        lastQuestAt = 0,
        lastRewardAt = 0,
        lastEggAt = 0,
        lastTrailAt = 0
    }
end
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if pD then
    pD.__OuroborosStealATreeLib = Library
end
ThemeManager, SaveManager, Toggles, Options, pT, pQ, pL, qx, pG, py = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
pT = "https://discord.gg/ehKVq7pf7v"
pQ = "https://rscripts.net/@Ouroboros"
pL = "https://ouroboros-hub-rbx.web.app/"
pG = fn863
py = fn1134
qG = fn73
local zK_4_14 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pT, Copyable = true }, "|", pg },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
zK_4_14:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
qx = {
    Info = zK_4_14:AddTab("Info", "info"),
    Main = zK_4_14:AddTab("Main", "gamepad-2"),
    Player = zK_4_14:AddTab("Player", "person-standing"),
    Settings = zK_4_14:AddTab("Settings", "settings")
}
qN = qx.Main:AddSubTab("Farm", "sprout")
qM = qx.Main:AddSubTab("Shop", "store")
for k, v in qx do
    if k ~= "Info" and k ~= "Main" then
        qG(v)
    end
end
pr, qg, pY, pH, pq, qt, qh, pZ, pm, qj, p0, pJ, pi, qd, pP, pu, ps, p7, pA, qs, pM, qy, px, qr, pn, qv, qa, pw, qo, pX, pp, pt, p3, qF = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (p0 or p0 or (not p0 or pn) or (not pn or false or qy and not p0)) and (pn and qy or qy and qy or (not pn and p0 or (not p0 or p0))) and (p0 and p0 and (false or not p0) and ((pn or qy) and (p0 or pn)) or (qy and pn and (not pn or false) or (not pn or not p0) and (not pn or false))) and not ((p0 or p0 or (not p0 or pn) or (not pn or false or qy and not p0)) and (pn and qy or qy and qy or (not pn and p0 or (not p0 or p0))) and (p0 and p0 and (false or not p0) and ((pn or qy) and (p0 or pn)) or (qy and pn and (not pn or false) or (not pn or not p0) and (not pn or false)))) then
    qM(pq)
    qM(qN)
    pH = fn67
    qg = fn1037
    pY = fn307
else
    qG(qN)
    qG(qM)
    qg = fn67
    pY = fn873
    pH = fn1037
    pq = fn307
end
qt = fn261
qh = fn855
pZ = function(bx, by)
    local Character
    local rS
    Character = nil
    rS = nil
    Character = LocalPlayer.Character
    local rT = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (Character and rT) then
        return false
    end
    local rT_2 = by and bx
    local rV = rT_2 or bx + Vector3.new(0, 4, 0)
    local rT_3 = by
    if rT_3 then
        rT_3 = CFrame.new(rV, by)
    end
    local rV_1 = rT_3 or CFrame.new(rV)
    rS = rV_1
    pcall(function()
        Character:PivotTo(rS)
    end)
    rT.CFrame = rS
    rT.AssemblyLinearVelocity = Vector3.zero
    rT.AssemblyAngularVelocity = Vector3.zero
    return true
end
pm = fn279
qj = fn485
p0 = fn11
pJ = function(b_)
    local sb_1
    local sa_1
    local r9 = not b_
    local sg = if r9 then 1 else 0
    local se = 3247 * sg + 3457 * (1 - sg)
    local sf = 1778 * sg + 2155 * (1 - sg)
    if not ((se * 3612 + sf * 3919 + se * sf) % 16777213 == 7692099) then
        r9 = not b_.Parent
    end
    if r9 then
        return false
    end
    b_.Enabled = true
    b_.HoldDuration = 0
    b_.MaxActivationDistance = 80
    b_.RequiresLineOfSight = false
    if setproximitypromptduration then
        pcall(setproximitypromptduration, b_, 0)
    end
    local r9_1 = false
    if getconnections then
        sa_1, sb_1 = pcall(getconnections, b_.Triggered)
        local sc = sa_1 and type(sb_1) == "table"
        if sc then
            for k, v in sb_1 do
                local sm = v
                if pcall(function()
                    sm:Fire(LocalPlayer)
                end) then
                    r9_1 = true
                end
            end
        end
    end
    if fireproximityprompt then
        if pcall(fireproximityprompt, b_) then
            r9_1 = true
        end
        if pcall(fireproximityprompt, b_, 0) then
            r9_1 = true
        end
    end
    return r9_1
end
pi = fn284
qd = fn45
pP = fn377
pu = fn1090
ps = fn1065
p7 = function()
    local tn = if pq("CarriedSaplingTemplate") then 1 else 0
    if tn == 1 then
        return true
    end
    local ti = ps()
    local th = pY()
    if not (ti and th) then
        return false
    elseif ti.Parent == LocalPlayer.Character then
        return true
    else
        pcall(function()
            th:EquipTool(ti)
        end)
        return true
    end
end
pA = fn610
qs = fn828
pM = fn731
qy = function()
    local tY, tZ, t_
    local t0 = qg()
    local t1 = t0 and t0.Position
    tZ = nil
    t_ = t1
    tY = -math.huge
    local function t0_1(dX)
        local tP = not dX or dX.Name == "_CarriedSaplingVisual" or string.sub(dX.Name, 1, 1) == "_"
        if tP then
            return
        end
        if dX:GetAttribute("LocalClaimPending") == true then
            return
        end
        local attr3 = dX:GetAttribute("SourceArea")
        local attr2 = dX:GetAttribute("SaplingDisplayName")
        local tR = type(attr3) == "string" and not qd(Options.StealZones, attr3)
        if tR then
            return
        end
        local tP_2 = type(attr2) == "string" and not qd(Options.StealTrees, attr2)
        if tP_2 then
            return
        end
        local tP_3 = qj(dX)
        if not tP_3 then
            return
        end
        local attr = dX:GetAttribute("SaplingItemId")
        local tR_1 = tonumber(dX:GetAttribute("AreaNumber")) or 0
        local tR_3 = pz[pj[attr] or "Common"] or 0
        local tQ_3 = t_
        if tQ_3 then
            tQ_3 = (tP_3.Position - t_).Magnitude
        end
        local tP_4 = tQ_3 or 0
        local tP_5 = string.find(dX.Name, "Dropped_", 1, true) and 5000
        local tR_5 = (tP_5 or 0) + tR_3 * 100 + tR_1 - tP_4 * 0.01
        if tR_5 > tY then
            tY = tR_5
            tZ = dX
        end
    end
    local LocalAreaSaplings = SkriptF:FindFirstChild("_LocalAreaSaplings")
    if LocalAreaSaplings then
        for i, child in LocalAreaSaplings:GetChildren() do
            t0_1(child)
        end
    end
    local SpawnedSaplings = SkriptF:FindFirstChild("SpawnedSaplings")
    if SpawnedSaplings then
        for i, child in SpawnedSaplings:GetChildren() do
            t0_1(child)
        end
    end
    return tZ
end
px = fn411
qr = fn1042
pr = Vector3.new(-297, 18, -44)
pn = fn109
qv = fn493
qa = fn226
pw = fn1048
qo = fn1085
pX = fn1086
pp = fn394
pt = fn926
if not qF and qF and (pn or qh) or (pn and not ps or (not ps or not qh)) or (pi or not qF or p0 and not p0) and (not pn or ps or pn and not pn) or not (not qF and qF and (pn or qh) or (pn and not ps or (not ps or not qh)) or (pi or not qF or p0 and not p0) and (not pn or ps or pn and not pn)) then
    p3 = fn1003
else
    pn = fn1003
end
qw(Remotes:WaitForChild("QuestState").OnClientEvent:Connect(onOnClientEvent))
qw(Remotes:WaitForChild("PlaytimeRewardState").OnClientEvent:Connect(onOnClientEvent2))
qw(Remotes:WaitForChild("DailyRewardState").OnClientEvent:Connect(onOnClientEvent3))
qw(Remotes:WaitForChild("TrailShopState").OnClientEvent:Connect(onOnClientEvent4))
qF = function()
    local wI
    local wT
    local wY
    local wU
    local wL
    local wQ
    wI = nil
    wL = nil
    wQ = nil
    wT = nil
    wU = nil
    wY = nil
    local Label2, wJ, wK, wM, wN, Label3, wP, wR, Label, wV, wW, wX, wZ
    wY = function(gn, go)
        return string.format('<font color="%s">%s</font>', go, gn)
    end
    wZ = function(gq, gr, gs)
        return string.format("<b>%s</b> %s %s", gq, wY("-", "#5a6070"), wY(gr, gs))
    end
    local w_ = "#8b93a3"
    wI = "#e05a5a"
    wT = "#e8a34d"
    local w0 = "#6ec1ff"
    wL = "#7fd47f"
    local function w1()
        local vV = hookfunction ~= nil
        local vW = hookmetamethod ~= nil
        local vX = getrawmetatable ~= nil
        local vY = setrawmetatable ~= nil
        local vZ = getgc ~= nil
        local v_ = getgenv ~= nil
        local v0 = getreg ~= nil
        local v1 = getconnections ~= nil
        local v2 = firesignal ~= nil
        local v3 = getcallbackvalue ~= nil
        local v4 = setclipboard ~= nil
        local v5 = getcustomasset ~= nil
        local v6 = getnamecallmethod ~= nil
        local v7 = isexecutorclosure ~= nil
        local v8 = fireproximityprompt ~= nil
        local v9 = firetouchinterest ~= nil
        local wa = WebSocket ~= nil
        local wb = readfile ~= nil
        local wc = writefile ~= nil
        local we = (request or http_request) ~= nil
        local wg = (debug and debug.getupvalues) ~= nil
        local wi = (debug and debug.setupvalue) ~= nil
        local wj = 0
        local wk = { vV, vW, vX, vY, vZ, v_, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, wa, wb, wc, we, wg, wi }
        for i, v in ipairs(wk) do
            if v then
                wj += 1
            end
        end
        local vV_1 = wj / #wk
        if vV_1 >= 0.9 then
            return wY("Full Support", wL)
        elseif vV_1 >= 0.6 then
            return wY("Half Support", wT)
        else
            return wY("Low Support", wI)
        end
    end
    wQ = "Unknown"
    pcall(function()
        local wt_1
        local ws_1
        if identifyexecutor then
            wt_1, ws_1 = identifyexecutor()
            local wu = wt_1 ~= ""
            local wv = type(wt_1) == "string" and wu
            if wv then
                local wu_1 = type(ws_1) == "string" and ws_1 ~= "" and wt_1 .. " " .. ws_1
                wQ = wu_1 or wt_1
            end
        end
    end)
    local w2 = w1()
    wU = os.clock()
    wM = function()
        local wx = math.floor(os.clock() - wU)
        if wx < 60 then
            return wx .. "s"
        elseif wx < 3600 then
            return string.format("%dm %ds", wx // 60, wx % 60)
        else
            return string.format("%dh %dm", wx // 3600, wx % 3600 // 60)
        end
    end
    local UserGroup = qx.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(wZ("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, wL), true)
    UserGroup:AddLabel(wZ("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(wZ("Executor", wQ .. "  " .. w2, wL), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(wZ("Session", wM(), wT), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pG(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pG("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = qx.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(wZ("Game", pg, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(wZ("Players", "0/0", wL), true)
    wR = tostring(game.JobId)
    local w2_1 = #wR > 18 and string.sub(wR, 1, 18) .. "..."
    local w2_2 = w2_1 or wR
    SessionGroup:AddLabel(wZ("Job", w2_2, w_), true)
    Label = SessionGroup:AddLabel(wZ("Ping", "0 ms", wT), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            pU:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            pG(wR, "Copied Job ID")
        end
    })
    task.spawn(function()
        local wA_1
        local wz_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(wZ("Session", wM(), wT))
            Label2:SetText(wZ("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), wL))
            wz_1, wA_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local wz_2 = wz_1 and wA_1 .. " ms" or "n/a"
            Label:SetText(wZ("Ping", wz_2, wT))
        end
    end)
    local SocialsGroup = qx.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = py })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(pQ)
            elseif toclipboard then
                toclipboard(pQ)
            end
            Library:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            pG(pL, "Copied website link")
        end
    })
    wV = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w"
    wJ = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    wK = "https://paypal.me/TheTruckerGOD"
    wX = "https://venmo.com/u/miserablemusic"
    wN = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99"
    wW = "0xaE95A405D007a6F858E5d35714111B075fEFb40a"
    wP = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp"
    local DonationsGroup = qx.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(wY("All donations are optional but appreciated.", wT), true)
    DonationsGroup:AddLabel(wY("If you donate you get a special role, just PING after you donate.", wL), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(wY("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            pG(wV, "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(wY("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            pG(wN, "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(wY("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            pG(wJ, "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(wY("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            pG(wW, "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(wY("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            pG(wP, "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(wY("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            pG(wK, "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(wY("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            pG(wX, "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(wY("Don't have any of the listed currencies but still wanna donate?", w_), true)
    DonationsGroup:AddLabel(wY("DM me and we'll work something out.", w0), true)
    local w__1 = qx.Info:AddRightGroupbox("FAQ", "circle-help")
    w__1:AddLabel("Where do I get a good config?", true)
    w__1:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
    w__1:AddLabel("How do I import / export configs?", true)
    w__1:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
    w__1:AddLabel("How do I report bugs?", true)
    w__1:AddLabel("Join the Discord and post it in the bugs channel.", true)
    w__1:AddLabel("How do I make suggestions?", true)
    w__1:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
    w__1:AddLabel("How do I get help or updates?", true)
    w__1:AddLabel("Join the Discord, updates and support are posted there first.", true)
end
qF()
local zK_4_16 = qN:AddLeftGroupbox("Steal", "trees")
zK_4_16:AddToggle("AutoStealTree", { Text = "Auto Steal Tree", Default = false })
zK_4_16:AddToggle("StealUseFilters", { Text = "Use Filters", Default = false })
zK_4_16:AddDropdown("StealZones", {
    Text = "Zones",
    Values = qI,
    Default = qH,
    Multi = true,
    Searchable = true,
    Expandable = true,
    SelectAllButtons = true
})
zK_4_16:AddDropdown("StealTrees", {
    Text = "Trees",
    Values = qC_5,
    Default = qB,
    Multi = true,
    Searchable = true,
    Expandable = true,
    SelectAllButtons = true
})
local ClaimsGroup = qN:AddLeftGroupbox("Claims", "gift")
ClaimsGroup:AddToggle("AutoClaimQuests", { Text = "Auto Claim Quests", Default = false })
ClaimsGroup:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
local FarmGroup = qN:AddRightGroupbox("Farm", "sprout")
FarmGroup:AddToggle("AutoPlaceTrees", { Text = "Auto Place Trees", Default = false })
FarmGroup:AddToggle("AutoClaimTree", { Text = "Auto Claim Tree", Default = false })
FarmGroup:AddToggle("AutoUpgradeJuice", { Text = "Auto Upgrade Juice Income", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local PetsGroup = qM:AddLeftGroupbox("Pets", "paw-print")
PetsGroup:AddToggle("AutoPetShop", { Text = "Auto Pet Shop", Default = false })
PetsGroup:AddDropdown("PetEgg", { Text = "Egg", Values = qD, Default = zK_9, Searchable = true })
local TrailsGroup = qM:AddRightGroupbox("Trails", "wind")
TrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
TrailsGroup:AddDropdown("BuyTrails", {
    Text = "Trails",
    Values = qL,
    Default = qK,
    Multi = true,
    Searchable = true,
    Expandable = true,
    SelectAllButtons = true
})
local function qR()
    local MovementGroup = qx.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = qx.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function ig(ih)
        local xd = if not ih:IsA("ProximityPrompt") then 1 else 0
        if xd == 1 then
            return
        end
        ih.HoldDuration = 0
        ih.MaxActivationDistance = 50
        ih.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in Workspace:GetDescendants() do
                pcall(ig, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(is)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(ig, is)
                end
            end)
            qw(connection)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    qw(RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local xp_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if xp_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end))
    qw(UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local xA_1 = pY()
            if xA_1 then
                xA_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end))
    local CurrentCamera = Workspace.CurrentCamera
    qw(RunService.RenderStepped:Connect(function(iQ)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local xF_1 = pY()
            if xF_1 then
                xF_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local xF_3 = qg()
            local xG = pY()
            if xF_3 and xG then
                xG.PlatformStand = true
                local xG_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    xG_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    xG_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    xG_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    xG_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    xG_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    xG_1 -= Vector3.new(0, 1, 0)
                end
                xF_3.AssemblyLinearVelocity = Vector3.zero
                if xG_1.Magnitude > 0 then
                    xF_3.CFrame = xF_3.CFrame + xG_1.Unit * Options.FlySpeed.Value * iQ
                end
            end
        end
    end))
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local xJ = pY()
            if xJ then
                xJ.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local xO = pY()
            if xO then
                xO.WalkSpeed = 16
            end
        end
    end)
end
qR()
qO = function()
    local MenuGroup = qx.Settings:AddLeftGroupbox("Menu", "logs")
    local je = 0
    local jf = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function jh()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        je += 1
        jf = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. je)
        end)
    end
    qw(LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(jh)
        end
    end))
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local xW = Toggles.AntiAfk.Value and tick() - jf >= 60
            if xW then
                pcall(jh)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    local function jD(jE)
        pcall(function()
            p_:SetGameplayPausedNotificationEnabled(not jE)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = p4:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not jE
            end
        end)
        if not jE then
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
    Toggles.AntiGameplayPause:OnChanged(function()
        jD(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                jD(true)
            end
        end
    end)
    local jV = false
    local function jW()
        local JobId, PlaceId
        if jV then
            return
        end
        jV = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local x4 = pcall(function()
            pU:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not x4 then
            pcall(function()
                pU:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = p4:WaitForChild("RobloxPromptGui", 30)
        local yc = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not yc then
            return
        end
        qw(yc.ChildAdded:Connect(function(ke)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and ke.Name == "ErrorPrompt" then
                jW()
            end
        end))
    end)
    qw(pU.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            jV = false
            jW()
        end
    end))
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            RunService:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local kv = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function kw(kx)
        if kv[kx.ClassName] then
            pcall(function()
                kx.Enabled = false
            end)
        end
    end
    local connection
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                pR.GlobalShadows = false
            end)
            pcall(function()
                pR.FogEnd = 9000000000
            end)
            for i, descendant in Workspace:GetDescendants() do
                pcall(kw, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(kM)
                if Toggles.FpsBoost.Value then
                    pcall(kw, kM)
                end
            end)
            qw(connection)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                pR.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = qx.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
end
qO()
local function qE_8()
    local zr, zs, zt, zu
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub/StealATree")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(qx.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/StealATree")
    local zv = SaveManager:BuildConfigSection(qx.Settings)
    zu = function(k_, k0)
        local yv_1 = (k_ == "Toggle" and Toggles or Options)[k0]
        local yu_2 = type(yv_1) == "table" and yv_1.Type == k_
        local yu_3 = yu_2 and yv_1
        local yA = if yu_3 then 1 else 0
        local yy = 3796 * yA + 410 * (1 - yA)
        local yz = 1125 * yA + 1608 * (1 - yA)
        if not ((yy * 2772 + yz * 341 + yy * yz) % 16777213 == 15176637) then
            yu_3 = nil
        end
        return yu_3
    end
    zs = function(k9, la)
        local Type = la.Type
        if Type == "Toggle" then
            return { idx = k9, type = "Toggle", value = la.Value == true }
        elseif Type == "Slider" then
            return { idx = k9, type = "Slider", value = tostring(la.Value) }
        elseif Type == "Dropdown" then
            return { idx = k9, type = "Dropdown", multi = la.Multi == true, value = la.Value }
        elseif Type == "Input" then
            local yC = la.Value or ""
            return { idx = k9, type = "Input", text = tostring(yC) }
        elseif Type == "ColorPicker" then
            return { idx = k9, type = "ColorPicker", value = la.Value:ToHex(), transparency = la.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = k9,
                type = "KeyPicker",
                mode = la.Mode,
                key = la.Value,
                modifiers = la.Modifiers,
                toggled = la.Toggled
            }
        else
            return nil
        end
    end
    zr = function()
        local yL = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local yM = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if yM then
                    local yM_1 = zs(k, v)
                    if yM_1 then
                        yL[#yL + 1] = yM_1
                    end
                end
            end
        end
        table.sort(yL, function(ll, lm)
            if ll.type ~= lm.type then
                return ll.type < lm.type
            end
            return ll.idx < lm.idx
        end)
        return { objects = yL }
    end
    zt = function(lo)
        local y4
        y4 = nil
        local y5 = type(lo) ~= "table" or type(lo.idx) ~= "string" or type(lo.type) ~= "string" or SaveManager.Ignore[lo.idx]
        if y5 then
            return false
        end
        y4 = zu(lo.type, lo.idx)
        if not y4 then
            return false
        end
        local y5_1 = pcall(function()
            if lo.type == "Input" then
                if type(lo.text) ~= "string" then
                    return
                end
                y4:SetValue(lo.text)
            elseif lo.type == "ColorPicker" then
                y4:SetValueRGB(Color3.fromHex(lo.value), lo.transparency)
            elseif lo.type == "KeyPicker" then
                y4:SetValue({ lo.key, lo.mode, lo.modifiers })
                if lo.mode == "Toggle" and lo.toggled ~= nil then
                    y4.Toggled = lo.toggled
                    y4:Update()
                end
            else
                y4:SetValue(lo.value)
            end
        end)
        return y5_1
    end
    zv:AddDivider()
    zv:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    zv:AddButton("Export Config to Clipboard", function()
        local zb_1
        local za_1
        za_1, zb_1 = pcall(HttpService.JSONEncode, HttpService, zr())
        if not za_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local za_2 = setclipboard or toclipboard
        local za_3 = type(za_2) ~= "function" or not pcall(za_2, zb_1)
        if za_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    zv:AddButton("Import Config from Clipboard Text", function()
        local zg_1
        local ze = Options.SaveManager_ImportSource.Value or ""
        local ze_1
        local zf = tostring(ze):match("^%s*(.-)%s*$")
        if zf == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        ze_1, zg_1 = pcall(HttpService.JSONDecode, HttpService, zf)
        local zf_1 = not ze_1 or type(zg_1) ~= "table" or type(zg_1.objects) ~= "table"
        if zf_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local ze_2 = 0
        for i, v in ipairs(zg_1.objects) do
            if zt(v) then
                ze_2 += 1
            end
        end
        if ze_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local zg_2 = ze_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(ze_2, zg_2), 6)
    end)
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
end
qE_8()
Library:OnUnload(function()
    for k, v in pk do
        local zD = v
        pcall(function()
            zD:Disconnect()
        end)
    end
    table.clear(pk)
    pcall(function()
        RunService:Set3dRenderingEnabled(true)
    end)
    if pD then
        pD.__OuroborosStealATreeLib = nil
    end
end)
pO:Fire("GetState")
pK:Fire("GetState")
pF:Fire("GetState")
pC:Fire("GetState")
pV:Fire("GetState")
pE:Fire("GetState")
task.spawn(autoStealTreeLoop)
task.spawn(worker)
