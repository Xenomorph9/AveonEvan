local Library
local o4
local pM
local PlacedEggs
local pa
local pz
local pg
local pY
local oY
local pF
local pm
local p3
local o3
local pL
local o9
local SpawnedEggs
local pf
local HatchEgg
local pE
local pl
local p2
local o2
local pK
local o8
local Options
local px
local pW
local oW
local pD
local pk
local EquipBestFish
local o1
local CoreGui
local Bases
local o7
local pP
local Workspace
local ClaimFishIndex
local pj
local p0
local o0
local pI
local LocalPlayer
local o6
local pv
local pc
local pB
local SellRequest
local o_
local pH
local Biomes
local o5
local pu
local Toggles
local ph
local RunService
local PlaceEgg
local pn
local function autoSellLoop()
    while not Library.Unloaded do
        if Toggles.AutoSell and Toggles.AutoSell.Value then
            pcall(pI)
        end
        local wait = task.wait
        local u5 = Options.SellDelay and Options.SellDelay.Value or 1
        wait(u5)
    end
end
local function fn41()
    return CoreGui
end
local function fn44(a2, a3)
    if setclipboard then
        setclipboard(a2)
    elseif toclipboard then
        toclipboard(a2)
    end
    Library:Notify(a3)
end
local function fn77(cc)
    local sr = o3()
    if not sr then
        return false
    end
    o5(sr)
    sr.CFrame = cc
    sr.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function fn126()
    local tm = o3()
    if not tm then
        return {}
    end
    local Position = tm.Position
    local tm_1 = {}
    local to = o1
    for i, child in SpawnedEggs:GetChildren() do
        local tp = child:IsA("Model") and child:GetAttribute("PromptBusy") ~= true and not o0(child)
        if tp then
            local tp_1 = pM(child)
            local tq = pv(child)
            local tr = tp_1 and tp_1.Enabled and tq and pc(child)
            if tr then
                local tr_1 = #tm_1 + 1
                local Magnitude2 = (tq.Position - Position).Magnitude
                local Magnitude = (tq.Position - to).Magnitude
                local tu = o6[child:GetAttribute("Rarity")] or 0
                tm_1[tr_1] = {
                    Egg = child,
                    Prompt = tp_1,
                    Part = tq,
                    Distance = Magnitude2,
                    SafeDistance = Magnitude,
                    RarityRank = tu,
                    Enabled = true,
                    Biome = child:GetAttribute("Biome")
                }
            end
        end
    end
    return tm_1
end
local function autoBuyTrailsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyTrails and Toggles.AutoBuyTrails.Value then
            pcall(p3)
        end
        local wait = task.wait
        local vc = Options.TrailBuyDelay and Options.TrailBuyDelay.Value or 2
        wait(vc)
    end
end
local function fn138(db)
    if not next(o_) then
        p2()
    end
    local s1 = o_[db]
    if not s1 then
        return false
    end
    pF(s1, 2)
    pg(s1 + Vector3.new(0, 6, 0))
    task.wait(0.2)
    return true
end
local function fn174(dJ)
    local tk = o4[dJ]
    if not tk then
        return false
    elseif os.clock() >= tk then
        o4[dJ] = nil
        return false
    else
        return true
    end
end
local function fn191(cQ)
    local attr3 = cQ:GetAttribute("Biome")
    local attr2 = cQ:GetAttribute("Rarity")
    local attr = cQ:GetAttribute("DisplayName")
    if not (Toggles.AutoStealSelected and Toggles.AutoStealSelected.Value) then
        return true
    end
    local Value3 = Options.StealZoneFilter.Value
    local Value2 = Options.StealRarityFilter.Value
    local Value = Options.StealSpecificEggs.Value
    local sU = type(Value3) == "table" and next(Value3) and not Value3[attr3]
    if sU then
        return false
    end
    local sO_1 = type(Value2) == "table" and next(Value2) and not Value2[attr2]
    if sO_1 then
        return false
    end
    local sO_2 = type(Value) == "table" and next(Value) and not Value[attr]
    if sO_2 then
        return false
    end
    return true
end
local function fn241()
    local attr = LocalPlayer:GetAttribute("BaseName")
    local rd = attr ~= ""
    local re = type(attr) == "string" and rd
    if re then
        return Bases:FindFirstChild(attr)
    end
    for i, child in Bases:GetChildren() do
        if tonumber(child:GetAttribute("OwnerUserId")) == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        local u8 = Options.FishActionDelay and Options.FishActionDelay.Value or 1
        if Toggles.AutoEquipBest and Toggles.AutoEquipBest.Value then
            pcall(function()
                EquipBestFish:FireServer()
            end)
        end
        if Toggles.AutoClaimIndex and Toggles.AutoClaimIndex.Value then
            pcall(function()
                ClaimFishIndex:FireServer("ALL")
            end)
        end
        task.wait(u8)
    end
end
local function fn271()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    for i, child in Character:GetChildren() do
        if pl(child) then
            return child
        end
    end
    return nil
end
local function fn321()
    local Value2 = Options.SellMode.Value
    if Value2 == "Inventory" then
        return SellRequest:InvokeServer("SellInventory")
    elseif Value2 == "Equipped" then
        return SellRequest:InvokeServer("SellEquipped")
    else
        local Value = Options.SellRarityFilter.Value
        local ur = p0()
        if not ur then
            return nil
        end
        local us = false
        for k, v in ph() do
            if Library.Unloaded then
                break
            else
                local attr = v:GetAttribute("Rarity")
                local ut_1
                local uu = type(Value) ~= "table" or not next(Value) or Value[attr]
                local uu_1
                if uu then
                    if v.Parent == LocalPlayer.Backpack then
                        ur:EquipTool(v)
                        task.wait(0.12)
                    end
                    ut_1, uu_1 = pcall(function()
                        return SellRequest:InvokeServer("SellEquipped")
                    end)
                    local uv = ut_1 and type(uu_1) == "table" and uu_1.Success
                    if uv then
                        us = true
                    end
                    task.wait(0.2)
                end
            end
        end
        return us
    end
end
local function fn325(bT)
    local se = not bT or not bT:IsA("ProximityPrompt")
    if se then
        return
    end
    if bT.HoldDuration < pH then
        bT.HoldDuration = pH
    end
    bT.RequiresLineOfSight = false
end
local function fn331(a9)
    local DiscordGroup = a9:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = pu })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = pu })
end
local function fn386(b6)
    for k, v in { "TreadPoolTrainingPosition", "TreadPoolTrainingOrientation" } do
        local si = b6:FindFirstChild(v)
        if si and si.Enabled then
            si.Enabled = false
        end
    end
end
local function fn416()
    local Character = LocalPlayer.Character
    local rL = Character and Character:FindFirstChildOfClass("Humanoid")
    return rL
end
local function fn430()
    pg(o1, 20)
    local sK = CFrame.new(o1)
    local sL = os.clock() + 6
    while true do
        if not (os.clock() < sL) then
            return not pK()
        end
        if not pK() then
            break
        end
        local sM = Library.Unloaded or not pW(sK)
        if sM then
            return false
        end
        RunService.Heartbeat:Wait()
    end
    return true
end
local function fn444()
    table.clear(o_)
    table.clear(oY)
    local rp = o1
    local rq = Workspace:FindFirstChild("Biomes") or Biomes
    if not rq then
        return
    end
    for i, child in rq:GetChildren() do
        local rq_1 = child:IsA("Folder") and not string.find(child.Name, "IGNORE", 1, true)
        if rq_1 then
            local rr_1 = nil
            local EggSpawns = child:FindFirstChild("EggSpawns")
            if EggSpawns then
                for i, child in EggSpawns:GetChildren() do
                    local rs
                    if child:IsA("BasePart") then
                        rs = child
                    elseif child:IsA("Model") then
                        local rq_3 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                        rs = rq_3
                    end
                    if rs then
                        rr_1 = rs.Position
                        break
                    end
                end
            end
            if not rr_1 then
                local BasePart = child:FindFirstChildWhichIsA("BasePart", true)
                if BasePart then
                    rr_1 = BasePart.Position
                end
            end
            if rr_1 then
                o_[child.Name] = rr_1
                oY[#oY + 1] = { Name = child.Name, Position = rr_1, SafeDistance = (rr_1 - rp).Magnitude }
            end
        end
    end
    table.sort(oY, function(ar, as)
        return ar.SafeDistance > as.SafeDistance
    end)
end
local function fn507()
    local t2 = pa()
    local t3 = o3()
    local t4 = p0()
    if not t2 or not t3 or not t4 then
        return false
    end
    local t3_2 = ph()
    if #t3_2 == 0 then
        return false
    end
    local t5_2 = false
    for k, v in t3_2 do
        if Library.Unloaded then
            break
        end
        if v.Parent == LocalPlayer.Backpack then
            t4:EquipTool(v)
            task.wait(0.12)
        end
        if oW() then
            pg(t2.Position + Vector3.new(0, 5, 0))
            local t3_3 = t2.CFrame:PointToWorldSpace(Vector3.new(0, t2.Size.Y * 0.5, 0))
            PlaceEgg:FireServer(t3_3)
            t5_2 = true
            task.wait(0.35)
        end
    end
    return t5_2
end
local function fn570()
    local uh = false
    for i, child in PlacedEggs:GetChildren() do
        if Library.Unloaded then
            break
        else
            local ui = child:IsA("Model") and tonumber(child:GetAttribute("OwnerUserId")) == LocalPlayer.UserId and child:GetAttribute("HatchReady") == true
            if ui then
                HatchEgg:FireServer(child)
                uh = true
                task.wait(0.2)
            end
        end
    end
    return uh
end
local function fn633()
    return LocalPlayer:GetAttribute("CarryingEgg") == true
end
local function fn655(di)
    local s7_1
    local s6_1
    if not next(o_) then
        p2()
    end
    local s3 = Options.StealZoneFilter and Options.StealZoneFilter.Value
    local s3_1 = Toggles.AutoStealSelected and Toggles.AutoStealSelected.Value
    local s5 = o1
    if s3_1 then
        s3_1 = type(s3) == "table"
    end
    if s3_1 then
        s3_1 = next(s3)
    end
    if s3_1 then
        s7_1, s6_1 = nil, nil
        for k in s3 do
            local s3_2 = o_[k]
            if s3_2 then
                local Magnitude = (s3_2 - s5).Magnitude
                local s3_3 = not s6_1
                if not s3_3 then
                    s3_3 = di == "Furthest" and Magnitude > s6_1
                end
                if not s3_3 then
                    s3_3 = di ~= "Furthest" and Magnitude < s6_1
                end
                if s3_3 then
                    s7_1, s6_1 = k, Magnitude
                end
            end
        end
        if s7_1 then
            pj(s7_1)
        end
        return
    end
    if di == "Furthest" or di == "Further" then
        local s3_5 = oY[1]
        if s3_5 then
            pj(s3_5.Name)
        end
    end
end
local function fn663(by)
    local rY = by:IsA("Tool") and type(by:GetAttribute("EggType")) == "string" and by:GetAttribute("Scale") ~= nil and by:GetAttribute("Kg") ~= nil
    return rY
end
local function fn691()
    local Character = LocalPlayer.Character
    local rI = Character and Character:FindFirstChild("HumanoidRootPart")
    return rI
end
local function fn714(eh)
    local tU = not eh
    local Prompt
    local tV = not o3() or tU
    local Part
    if tV then
        return false
    elseif pK() then
        return pE()
    else
        Part, Prompt = eh.Part, eh.Prompt
        local tW = not Part
        local t1 = if tW then 1 else 0
        local t_ = 3458 * t1 + 271 * (1 - t1)
        local t0 = 1297 * t1 + 2069 * (1 - t1)
        if not ((t_ * 3746 + t0 * 2488 + t_ * t0) % 16777213 == 3888417) then
            tW = not Part.Parent
        end
        if not tW then
            tW = not Prompt
        end
        local t1_1 = if tW then 1 else 0
        local t__1 = 2179 * t1_1 + 2207 * (1 - t1_1)
        local t0_1 = 3160 * t1_1 + 3603 * (1 - t1_1)
        if not ((t__1 * 996 + t0_1 * 3444 + t__1 * t0_1) % 16777213 == 3161751) then
            tW = not Prompt.Parent
        end
        if tW then
            return false
        end
        pF(Part.Position, 1)
        pB(Prompt)
        local tW_1 = Part.CFrame + Vector3.new(0, 4, 0)
        if not pg(tW_1.Position) then
            o4[eh.Egg] = os.clock() + o8
            return false
        end
        pn(Prompt)
        local tX = os.clock() + pH + 3
        while os.clock() < tX do
            if pK() then
                break
            end
            local tY = Library.Unloaded
            local t1_2 = if tY then 1 else 0
            local t__2 = 4057 * t1_2 + 2227 * (1 - t1_2)
            local t0_2 = 672 * t1_2 + 2427 * (1 - t1_2)
            if not ((t__2 * 2479 + t0_2 * 2875 + t__2 * t0_2) % 16777213 == 14715607) then
                tY = not Part.Parent
            end
            if not tY then
                tY = not Prompt.Enabled
            end
            if not tY then
                tY = not pW(tW_1)
            end
            if tY then
                break
            end
            RunService.Heartbeat:Wait()
        end
        if not pK() then
            o4[eh.Egg] = os.clock() + o8
            return false
        end
        return pE()
    end
end
local function fn756(bv)
    local rT = bv.PrimaryPart
    local rX = if rT then 1 else 0
    local rV = 2123 * rX + 2775 * (1 - rX)
    local rW = 1967 * rX + 1584 * (1 - rX)
    if not ((rV * 1750 + rW * 2711 + rV * rW) % 16777213 == 13223728) then
        rT = bv:FindFirstChild("PrimaryPart")
    end
    if not rT then
        rT = bv:FindFirstChildWhichIsA("BasePart")
    end
    return rT
end
local function fn775(br)
    local EggPrompt = br:FindFirstChild("EggPrompt", true)
    local rR = EggPrompt and EggPrompt:IsA("ProximityPrompt")
    if rR then
        return EggPrompt
    end
    return nil
end
local function fn780()
    local TpWalkSpeed = Options.TpWalkSpeed
    local sx = TpWalkSpeed and tonumber(TpWalkSpeed.Value)
    local sw_1 = sx
    if sx then
        sx = math.max(sw_1, 1)
    end
    local sw_2 = sx
    local sB = if sw_2 then 1 else 0
    local sz = 2638 * sB + 665 * (1 - sB)
    local sA = 272 * sB + 876 * (1 - sB)
    if not ((sz * 1962 + sA * 2291 + sz * sA) % 16777213 == 6516444) then
        sw_2 = pD
    end
    return sw_2
end
local function autoPlaceEggsLoop()
    while not Library.Unloaded do
        if Toggles.AutoPlaceEggs and Toggles.AutoPlaceEggs.Value then
            pP()
        end
        if Toggles.AutoHatch and Toggles.AutoHatch.Value then
            o2()
        end
        local u__2 = task.wait
        local u1 = Options.EggActionDelay and Options.EggActionDelay.Value or 0.4
        u__2(u1)
    end
end
local function onDescendantAdded(f3)
    local uY = f3:IsA("ProximityPrompt") and f3.Name == "EggPrompt"
    if uY then
        pB(f3)
    end
end
local function fn968()
    local rm = pk()
    local rn = rm and rm:FindFirstChild("EggPlacementZone")
    return rn
end
local function autoStealAllLoop()
    while not Library.Unloaded do
        if Toggles.AutoStealAll and Toggles.AutoStealAll.Value or Toggles.AutoStealSelected and Toggles.AutoStealSelected.Value then
            if pK() then
                pE()
            else
                local uV_1 = Options.StealPriority and Options.StealPriority.Value or "Nearest"
                local uV_2 = pY()
                if #uV_2 == 0 then
                    o7(uV_1)
                    uV_2 = pY()
                end
                local uW_1 = o9(uV_2)
                if uW_1 then
                    px(uW_1)
                else
                    if uV_1 == "Furthest" or uV_1 == "Further" then
                        o7(uV_1)
                    end
                end
            end
        end
        local uV_4 = Options.StealDelay and Options.StealDelay.Value or 0.05
        if uV_4 > 0 then
            task.wait(uV_4)
        else
            task.wait()
        end
    end
end
local function fn1009()
    pL(pf, "Copied Discord invite to clipboard")
end
local function fn1023(cp, cq)
    if typeof(cp) ~= "Vector3" then
        return false
    end
    local sC = os.clock()
    local sE = sC + (cq or 15)
    while true do
        if not (os.clock() < sE) then
            return false
        end
        if Library.Unloaded then
            break
        end
        local sC_1 = o3()
        if not sC_1 then
            return false
        end
        o5(sC_1)
        local sD_1 = pz()
        local sF = math.max(2, sD_1 * 0.1)
        local sG = cp - sC_1.Position
        local Magnitude = sG.Magnitude
        if Magnitude <= sF then
            sC_1.CFrame = CFrame.new(cp)
            sC_1.AssemblyLinearVelocity = Vector3.zero
            return true
        end
        local sI = RunService.Heartbeat:Wait()
        sC_1.CFrame = CFrame.new(sC_1.Position + sG.Unit * math.min(sF, sD_1 * sI, Magnitude), cp)
        sC_1.AssemblyLinearVelocity = Vector3.zero
    end
    return false
end
oW = nil
HatchEgg = nil
oY = nil
PlaceEgg = nil
o_ = nil
o0 = nil
o1 = nil
o2 = nil
o3 = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
o8 = nil
o9 = nil
pa = nil
pc = nil
pf = nil
pg = nil
ph = nil
pj = nil
pk = nil
pl = nil
pm = nil
pn = nil
Biomes = nil
LocalPlayer = nil
Bases = nil
PlacedEggs = nil
pu = nil
pv = nil
Workspace = nil
px = nil
SpawnedEggs = nil
pz = nil
pB = nil
pD = nil
pE = nil
pF = nil
pH = nil
local Players, pb, pd, pe, pi, pr, Lighting, TeleportService, TrailConfig, GuiService
pI = nil
CoreGui = nil
pK = nil
pL = nil
pM = nil
pP = nil
Options = nil
Toggles = nil
ClaimFishIndex = nil
pW = nil
pY = nil
RunService = nil
SellRequest = nil
p0 = nil
EquipBestFish = nil
p2 = nil
p3 = nil
Library = nil
local HttpService, GetTrailShopState, VirtualUser, BuyTrailCash, UserInputService, SaveManager
local EggRarityConfig
HttpService = nil
GetTrailShopState = nil
VirtualUser = nil
BuyTrailCash = nil
UserInputService = nil
SaveManager = nil
Players, RunService, UserInputService, VirtualUser, HttpService, CoreGui, GuiService, TeleportService, Workspace, Lighting, LocalPlayer, pm = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local yl_16_1
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
CoreGui = game:GetService("CoreGui")
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
Workspace = game:GetService("Workspace")
Lighting = game:GetService("Lighting")
LocalPlayer = Players.LocalPlayer
pm = fn41
if getgenv then
    getgenv().gethui = pm
end
pcall(function()
    gethui = pm
end)
if setthreadidentity then
    setthreadidentity(8)
end
pi, pf, pe, pb, PlaceEgg, HatchEgg, EquipBestFish, SellRequest, ClaimFishIndex, BuyTrailCash, GetTrailShopState, EggRarityConfig, TrailConfig, SpawnedEggs, PlacedEggs, Bases, Biomes, o1, o_, oY, o6, pk, pa, p2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pi = "Steal Fish Eggs"
pf = "https://discord.gg/synapsex"
pe = "https://rscripts.net/@Ouroboros"
pb = "https://ouroboros-hub-rbx.web.app/"
local EggSystem = ReplicatedStorage:WaitForChild("EggSystem")
local FishSystem = ReplicatedStorage:WaitForChild("FishSystem")
local SellSystem = ReplicatedStorage:WaitForChild("SellSystem")
local yl_11_1
local FishIndexSystem = ReplicatedStorage:WaitForChild("FishIndexSystem")
local yl_5_1
local TrailSystem = ReplicatedStorage:WaitForChild("TrailSystem")
PlaceEgg = EggSystem:WaitForChild("PlaceEgg")
HatchEgg = EggSystem:WaitForChild("HatchEgg")
EquipBestFish = FishSystem:WaitForChild("EquipBestFish")
SellRequest = SellSystem:WaitForChild("SellRequest")
ClaimFishIndex = FishIndexSystem:WaitForChild("ClaimFishIndex")
BuyTrailCash = TrailSystem:WaitForChild("BuyTrailCash")
GetTrailShopState = TrailSystem:WaitForChild("GetTrailShopState")
local EggConfig = require(EggSystem:WaitForChild("EggConfig"))
if (ClaimFishIndex and EggSystem and (pf or FishIndexSystem) and (HatchEgg and pf and (FishIndexSystem and EggSystem)) and (HatchEgg and ClaimFishIndex and (HatchEgg and false) or (not ClaimFishIndex and ClaimFishIndex or not HatchEgg and not ClaimFishIndex)) or (not EggSystem or PlacedEggs) and (not HatchEgg or not EggSystem) and (not ClaimFishIndex or FishIndexSystem or false) and ((pf and not HatchEgg or (FishIndexSystem or FishIndexSystem)) and ((HatchEgg or ClaimFishIndex) and (HatchEgg or ClaimFishIndex)))) and not (ClaimFishIndex and EggSystem and (pf or FishIndexSystem) and (HatchEgg and pf and (FishIndexSystem and EggSystem)) and (HatchEgg and ClaimFishIndex and (HatchEgg and false) or (not ClaimFishIndex and ClaimFishIndex or not HatchEgg and not ClaimFishIndex)) or (not EggSystem or PlacedEggs) and (not HatchEgg or not EggSystem) and (not ClaimFishIndex or FishIndexSystem or false) and ((pf and not HatchEgg or (FishIndexSystem or FishIndexSystem)) and ((HatchEgg or ClaimFishIndex) and (HatchEgg or ClaimFishIndex)))) then
    require(EggRarityConfig:WaitForChild("EggRarityConfig"))
else
    EggRarityConfig = require(EggSystem:WaitForChild("EggRarityConfig"))
end
TrailConfig = require(TrailSystem:WaitForChild("TrailConfig"))
SpawnedEggs = Workspace:WaitForChild("SpawnedEggs")
PlacedEggs = Workspace:WaitForChild("PlacedEggs")
Bases = Workspace:WaitForChild("Bases")
Biomes = Workspace:FindFirstChild("Biomes")
pk = fn241
pa = fn968
o1 = Vector3.new(32, 119, -47)
o_ = {}
oY = {}
p2 = fn444
p2()
local RarityOrder = EggRarityConfig.RarityOrder
o6 = {}
for k, v in RarityOrder do
    o6[v] = k
end
yl_5_1, yl_11_1, yl_16_1 = nil, nil, nil
local yl_9_1 = 16
repeat
    local p9_1 = (yl_9_1 * 1 + 1) % 3 + 1
    if p9_1 <= 2 then
        if p9_1 <= 1 then
            if (yl_9_1 * 3 + 7) * 5 % 4 == ((yl_9_1 * 3 + 7) * 5 + 6) % 4 then
                yl_5_1 = {}
            else
                yl_11_1 = {}
            end
            yl_9_1 = (yl_9_1 + 1) % 24
        else
            if (yl_9_1 * 3 + 8) * 21 % 4 == ((yl_9_1 * 3 + 8) * 21 + 4) % 4 then
                yl_16_1 = {}
            else
                yl_5_1 = {}
            end
            yl_9_1 = (yl_9_1 + 19) % 24
        end
    else
        local z3 = bit32.rrotate(bit32.bxor(bit32.lrotate(yl_9_1, 13), string.byte(tostring(yl_5_1))), 18)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(z3, 4155759181), 2025821220), (bit32.bxor(bit32.band(z3, 139208114), 3157814951))), 2025821220), 3157814951) == z3 then
            yl_5_1 = {}
        else
            yl_16_1 = {}
        end
        yl_9_1 = (yl_9_1 + 1) % 24
    end
until (yl_9_1 * 19 + 12) % 24 == 19
local p9_2 = {}
for k, v in EggConfig.Biomes do
    yl_5_1[#yl_5_1 + 1] = k
    if type(v.Eggs) == "table" then
        for k2, v in v.Eggs do
            if type(v) == "table" then
                local yl_9_2 = v.DisplayName or v.ModelName
                local yl_9_3 = type(yl_9_2) == "string" and yl_9_2 ~= "" and not p9_2[yl_9_2]
                if yl_9_3 then
                    p9_2[yl_9_2] = true
                    yl_11_1[#yl_11_1 + 1] = yl_9_2
                    yl_16_1[yl_9_2] = { ModelName = v.ModelName, Rarity = v.Rarity, Biome = k, ToolName = v.ToolName, SaveId = v.SaveId }
                end
            end
        end
    end
end
local yl_9_4 = 0
repeat
    local yl_16_2 = {
        "rfgno",
        "ehyjlvt",
        "hdxbhxxdwf",
        "ksvrpfzoyrx",
        "rcukccxpht",
        "bywjojap",
        "myhms",
        "dqcq",
        "mffjzfgqh",
        "hyun"
    }
    if yl_16_2[(yl_9_4 * 94 + 46) % 10 + 1] <= yl_16_2[(yl_9_4 * 94 + 46) % 10 + 1] then
        table.sort(yl_5_1)
        table.sort(yl_11_1)
    else
        table.sort(yl_11_1)
        table.sort(yl_5_1)
    end
    yl_9_4 = (yl_9_4 + 2) % 4
until (yl_9_4 * 3 + 3) % 4 == 1
pr = {}
for k, v in TrailConfig.RarityOrder do
    pr[#pr + 1] = v
end
local qa_2 = { "Nearest", "Rarest", "Random", "Furthest" }
local p9_3 = { "Inventory", "Equipped", "Filtered Eggs" }
local yl_16_3 = {}
for k, v in RarityOrder do
    yl_16_3[v] = true
end
local yl_9_5 = {}
for k, v in yl_5_1 do
    yl_9_5[v] = true
end
local qb_2 = {}
for k, v in pr do
    qb_2[v] = true
end
Library, SaveManager, Toggles, Options, pd, pL, pu, o3, p0, pM, pv, pl, ph, oW = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
pL = fn44
pu = fn1009
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = pf, Copyable = true }, "|", pi },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
local qf_1
pd = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "egg"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
local ql = pd.Main:AddSubTab("Steal", "swords")
local qk = pd.Main:AddSubTab("Eggs", "egg")
local qj = pd.Main:AddSubTab("Fish", "fish")
local qi = pd.Main:AddSubTab("Shop", "shopping-bag")
fn331(ql)
fn331(qk)
fn331(qj)
fn331(qi)
fn331(pd.Player)
fn331(pd.Settings)
o3 = fn691
p0 = fn416
pM = fn775
pv = fn756
pl = fn663
if (not Toggles or Library or Library and not Toggles) and (not Toggles or false or (Toggles or not Toggles)) or not ((not Toggles or Library or Library and not Toggles) and (not Toggles or false or (Toggles or not Toggles))) then
    ph = function()
        local bB = {}
        local function bC(bD)
            if not bD then
                return
            end
            for i, child in bD:GetChildren() do
                if pl(child) then
                    bB[#bB + 1] = child
                end
            end
        end
        bC(LocalPlayer:FindFirstChild("Backpack"))
        bC(LocalPlayer.Character)
        return bB
    end
else
    qk = function()
        local bB = {}
        local function bC(bD)
            if not bD then
                return
            end
            for i, child in bD:GetChildren() do
                if pl(child) then
                    bB[#bB + 1] = child
                end
            end
        end
        bC(LocalPlayer:FindFirstChild("Backpack"))
        bC(LocalPlayer.Character)
        return bB
    end
end
oW = fn271
local qc = EggConfig.Settings and EggConfig.Settings.PromptHoldDuration
local qd_1 = tonumber(qc) or 1
pH, pD, o8, o4, qf_1, pB, pn, o5, pW, pz, pg, pK, pE, pc, pF, pj, o7, o0, pY, o9, px, pP, o2, pI, p3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pH = qd_1
pB = fn325
pn = function(bX)
    task.spawn(function()
        task.wait(0.25)
        if Library.Unloaded or not bX.Parent then
            return
        end
        pcall(function()
            bX:InputHoldBegin()
            task.wait(math.max(bX.HoldDuration, pH) + 0.35)
            bX:InputHoldEnd()
        end)
    end)
end
o5 = fn386
pW = fn77
pD = 150
pz = fn780
pg = fn1023
pK = fn633
pE = fn430
pc = fn191
pF = function(c4, c5)
    if typeof(c4) ~= "Vector3" then
        return
    end
    pcall(function()
        local sZ = c5 or 2
        LocalPlayer:RequestStreamAroundAsync(c4, sZ)
    end)
end
if (not pj and not o7 and (not pH and o7) or (false and pH or (pz or not o7))) and ((not pz or pF) and (not pH and pj) or (pj or pF or (pF or not qf_1))) and not ((not pj and not o7 and (not pH and o7) or (false and pH or (pz or not o7))) and ((not pz or pF) and (not pH and pj) or (pj or pF or (pF or not qf_1)))) then
    o7 = fn138
    o8 = fn655
    pj = 6
else
    pj = fn138
    o7 = fn655
    o8 = 6
end
if (not o5 or not px or not px and px or o5 and not o5 and (not o5 and o5)) and (not o5 and o5 and (not o5 and not px) or (not o5 or px) and (not px and not px)) and not ((not o5 or not px or not px and px or o5 and not o5 and (not o5 and o5)) and (not o5 and o5 and (not o5 and not px) or (not o5 or px) and (not px and not px))) then
    o0 = {}
    pY = fn174
    o4 = fn126
else
    o4 = {}
    o0 = fn174
    pY = fn126
end
o9 = function(d4)
    local Value
    Value = nil
    if #d4 == 0 then
        return nil
    end
    Value = Options.StealPriority.Value
    if Value == "Random" then
        return d4[math.random(1, #d4)]
    end
    if Value == "Furthest" or Value == "Further" then
        local tH_1 = d4[1]
        local tI_1 = #d4
        local tO = 2
        while tO <= tI_1 do
            local tI_2 = d4[tO]
            if tI_2.SafeDistance > tH_1.SafeDistance or tI_2.SafeDistance == tH_1.SafeDistance and tI_2.RarityRank > tH_1.RarityRank then
                tH_1 = tI_2
            end
            tO += 1
        end
        return tH_1
    end
    table.sort(d4, function(ed, ee)
        if Value == "Rarest" then
            if ed.RarityRank ~= ee.RarityRank then
                return ed.RarityRank > ee.RarityRank
            elseif ed.Enabled ~= ee.Enabled then
                return ed.Enabled
            else
                return ed.Distance < ee.Distance
            end
        elseif ed.Distance ~= ee.Distance then
            return ed.Distance < ee.Distance
        else
            return ed.RarityRank > ee.RarityRank
        end
    end)
    return d4[1]
end
px = fn714
pP = fn507
o2 = fn570
pI = fn321
p3 = function()
    local uH_1
    local uI_1
    local Value = Options.TrailBuyFilter.Value
    uH_1, uI_1 = pcall(function()
        return GetTrailShopState:InvokeServer()
    end)
    local uJ = uH_1 and type(uI_1) == "table" and uI_1.Owned
    local uI_2 = uJ or {}
    local uH_3 = 0
    local Stats = LocalPlayer:FindFirstChild("Stats")
    local uK = Stats and Stats:FindFirstChild("Cash")
    local uK_5
    if uK then
        local uK_1 = tonumber(uK.Value) or 0
        uH_3 = uK_1
    end
    for k, v in pr do
        local uT = v
        if Library.Unloaded then
            break
        else
            local uK_2 = type(Value) ~= "table" or not next(Value) or Value[uT]
            local uL = uK_2 and not uI_2[uT]
            local uL_3
            if uL then
                local uK_3 = TrailConfig.GetShopData(uT)
                local uL_1 = uK_3 and tonumber(uK_3.CashPrice)
                if uH_3 >= (uL_1 or math.huge) then
                    uK_5, uL_3 = pcall(function()
                        return BuyTrailCash:InvokeServer(uT)
                    end)
                    local uM = uK_5 and type(uL_3) == "table"
                    if uM then
                        if uK then
                            local uK_6 = tonumber(uK.Value) or uH_3
                            uH_3 = uK_6
                        end
                    end
                    task.wait(0.25)
                end
            end
        end
    end
end
local AutoStealGroup = ql:AddLeftGroupbox("Auto Steal", "swords")
local qp = AutoStealGroup:AddTabbox()
local Tab = qp:AddTab("", "globe")
Tab:AddToggle("AutoStealAll", { Text = "Auto Steal All", Default = false })
Tab:AddDropdown("StealPriority", { Text = "Priority", Values = qa_2, Default = 1 })
local Tab = qp:AddTab("", "list-filter")
Tab:AddToggle("AutoStealSelected", { Text = "Auto Steal Selected", Default = false })
Tab:AddDropdown("StealZoneFilter", { Text = "Zone Filter", Values = yl_5_1, Multi = true, Default = yl_9_5 })
Tab:AddDropdown("StealRarityFilter", { Text = "Rarity Filter", Values = RarityOrder, Multi = true, Default = yl_16_3 })
Tab:AddDropdown("StealSpecificEggs", { Text = "Specific Eggs", Values = yl_11_1, Multi = true, Default = {}, Searchable = true })
AutoStealGroup:AddSlider("TpWalkSpeed", { Text = "TP Walk Speed", Default = 150, Min = 16, Max = 500, Rounding = 0 })
AutoStealGroup:AddSlider("StealDelay", { Text = "Steal Delay", Default = 0.05, Min = 0, Max = 3, Rounding = 2 })
local EggsGroup = qk:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
EggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
EggsGroup:AddSlider("EggActionDelay", { Text = "Action Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2 })
local SellGroup = qk:AddRightGroupbox("Sell", "badge-dollar-sign")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = p9_3, Default = 1 })
SellGroup:AddDropdown("SellRarityFilter", { Text = "Sell Rarities", Values = RarityOrder, Multi = true, Default = yl_16_3 })
SellGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
local FishGroup = qj:AddLeftGroupbox("Fish", "fish")
FishGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
FishGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
FishGroup:AddSlider("FishActionDelay", { Text = "Action Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
local TrailsGroup = qi:AddLeftGroupbox("Trails", "footprints")
TrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
TrailsGroup:AddDropdown("TrailBuyFilter", { Text = "Trail Rarities", Values = pr, Multi = true, Default = qb_2 })
TrailsGroup:AddSlider("TrailBuyDelay", { Text = "Buy Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 2 })
task.spawn(autoStealAllLoop)
for i, descendant in SpawnedEggs:GetDescendants() do
    local yl_9_6 = descendant:IsA("ProximityPrompt") and descendant.Name == "EggPrompt"
    if yl_9_6 then
        pB(descendant)
    end
end
SpawnedEggs.DescendantAdded:Connect(onDescendantAdded)
task.spawn(autoPlaceEggsLoop)
task.spawn(autoSellLoop)
task.spawn(autoEquipBestLoop)
task.spawn(autoBuyTrailsLoop)
local function yl_5_2()
    local v2
    local v0
    local vX
    local v3
    local v1
    local vY
    vX = nil
    vY = nil
    v0 = nil
    v1 = nil
    v2 = nil
    v3 = nil
    local vZ, Label, v4, v5, Label2, Label3
    v3 = function(gD, gE)
        return string.format('<font color="%s">%s</font>', gE, gD)
    end
    v5 = function(gG, gH, gI)
        return string.format("<b>%s</b> %s %s", gG, v3("-", "#5a6070"), v3(gH, gI))
    end
    v0 = "#e8a34d"
    local v8 = "#8b93a3"
    vX = "#e05a5a"
    v2 = "#7fd47f"
    local function wa()
        local ve = hookfunction ~= nil
        local vf = hookmetamethod ~= nil
        local vg = getrawmetatable ~= nil
        local vh = setrawmetatable ~= nil
        local vi = getgc ~= nil
        local vj = getgenv ~= nil
        local vk = getreg ~= nil
        local vl = getconnections ~= nil
        local vm = firesignal ~= nil
        local vn = getcallbackvalue ~= nil
        local vo = setclipboard ~= nil
        local vp = getcustomasset ~= nil
        local vq = getnamecallmethod ~= nil
        local vr = isexecutorclosure ~= nil
        local vs = fireproximityprompt ~= nil
        local vt = firetouchinterest ~= nil
        local vu = WebSocket ~= nil
        local vv = readfile ~= nil
        local vw = writefile ~= nil
        local vy = (request or http_request) ~= nil
        local vA = (debug and debug.getupvalues) ~= nil
        local vC = (debug and debug.setupvalue) ~= nil
        local vD = 0
        local vE = { ve, vf, vg, vh, vi, vj, vk, vl, vm, vn, vo, vp, vq, vr, vs, vt, vu, vv, vw, vy, vA, vC }
        for i, v in ipairs(vE) do
            if v then
                vD += 1
            end
        end
        local ve_1 = vD / #vE
        if ve_1 >= 0.9 then
            return v3("Full Support", v2)
        elseif ve_1 >= 0.6 then
            return v3("Half Support", v0)
        else
            return v3("Low Support", vX)
        end
    end
    vY = "Unknown"
    pcall(function()
        local vN_1
        local vM_1
        if identifyexecutor then
            vN_1, vM_1 = identifyexecutor()
            local vO = vN_1 ~= ""
            local vP = type(vN_1) == "string" and vO
            if vP then
                local vO_1 = type(vM_1) == "string" and vM_1 ~= "" and vN_1 .. " " .. vM_1
                vY = vO_1 or vN_1
            end
        end
    end)
    local wb = wa()
    v1 = os.clock()
    v4 = function()
        local vR = math.floor(os.clock() - v1)
        if vR < 60 then
            return vR .. "s"
        elseif vR < 3600 then
            return string.format("%dm %ds", vR // 60, vR % 60)
        else
            return string.format("%dh %dm", vR // 3600, vR % 3600 // 60)
        end
    end
    local UserGroup = pd.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(v5("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, v2), true)
    UserGroup:AddLabel(v5("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(v5("Executor", vY .. "  " .. wb, v2), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(v5("Session", v4(), v0), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pL(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pL("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = pd.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(v5("Game", pi, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(v5("Players", "0/0", v2), true)
    vZ = tostring(game.JobId)
    local v9 = #vZ > 18 and string.sub(vZ, 1, 18) .. "..."
    local wb_1 = v9 or vZ
    SessionGroup:AddLabel(v5("Job", wb_1, v8), true)
    Label = SessionGroup:AddLabel(v5("Ping", "0 ms", v0), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            pL(vZ, "Copied Job ID")
        end
    })
    task.spawn(function()
        local vU_1
        local vT_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(v5("Session", v4(), v0))
            Label2:SetText(v5("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), v2))
            vT_1, vU_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local vT_2 = vT_1 and vU_1 .. " ms" or "n/a"
            Label:SetText(v5("Ping", vT_2, v0))
        end
    end)
    local SocialsGroup = pd.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = pu })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            pL(pe, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            pL(pb, "Copied website link")
        end
    })
end
local function yl_9_7()
    local connection
    local MovementGroup = pd.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = pd.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local wd_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if wd_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local wo_1 = p0()
            if wo_1 then
                wo_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(ih)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local wq_1 = p0()
            if wq_1 then
                wq_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local wq_3 = o3()
            local wr = p0()
            if wq_3 and wr then
                wr.PlatformStand = true
                local wr_1 = Vector3.zero
                local ww = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if ww == 1 then
                    wr_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    wr_1 -= CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                    wr_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    wr_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    wr_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    wr_1 -= Vector3.new(0, 1, 0)
                end
                wq_3.AssemblyLinearVelocity = Vector3.zero
                if wr_1.Magnitude > 0 then
                    wq_3.CFrame = wq_3.CFrame + wr_1.Unit * Options.FlySpeed.Value * ih
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local wx = p0()
            if wx then
                wx.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local wz = p0()
            if wz then
                wz.WalkSpeed = 16
            end
        end
    end)
    local function iE(iF)
        if not iF:IsA("ProximityPrompt") then
            return
        end
        if iF.Name == "EggPrompt" then
            return
        end
        iF.HoldDuration = 0
        iF.MaxActivationDistance = 50
        iF.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(iE, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(iN)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(iE, iN)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
local function qa_3()
    local MenuGroup = pd.Settings:AddLeftGroupbox("Menu", "logs")
    local iU = 0
    local iV = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function iX()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        iU += 1
        iV = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. iU)
        end)
    end
    local connection2 = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(iX)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local wR = Toggles.AntiAfk.Value and tick() - iV >= 60
            if wR then
                pcall(iX)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local function jj(jk)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not jk)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not jk
            end
        end)
        if not jk then
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
        jj(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                jj(true)
            end
        end
    end)
    local jB = false
    local function jC()
        local PlaceId, JobId
        if jB then
            return
        end
        jB = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local w2 = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not w2 then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local xa = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not xa then
            return
        end
        xa.ChildAdded:Connect(function(jU)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and jU.Name == "ErrorPrompt" then
                jC()
            end
        end)
    end)
    TeleportService.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            jB = false
            jC()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            RunService:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    local j9 = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    local function ka(kb)
        if j9[kb.ClassName] then
            pcall(function()
                kb.Enabled = false
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
                Lighting.GlobalShadows = false
            end)
            pcall(function()
                Lighting.FogEnd = 9000000000
            end)
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                pcall(ka, descendant)
            end
            connection = Workspace.DescendantAdded:Connect(function(kq)
                if Toggles.FpsBoost.Value then
                    pcall(ka, kq)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                Lighting.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = pd.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        jj(false)
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        local xm = o3()
        if xm then
            xm.Anchored = false
        end
        local xm_1 = p0()
        if xm_1 then
            xm_1.PlatformStand = false
            xm_1.WalkSpeed = 16
        end
    end)
end
local function yl_16_4(kI)
    local function kJ(kK, kL)
        local xs_1 = (kK == "Toggle" and Toggles or Options)[kL]
        local xr_2 = type(xs_1) == "table" and xs_1.Type == kK
        return xr_2 and xs_1 or nil
    end
    local function kT(kU, kV)
        local Type = kV.Type
        if Type == "Toggle" then
            return { idx = kU, type = "Toggle", value = kV.Value == true }
        elseif Type == "Slider" then
            return { idx = kU, type = "Slider", value = tostring(kV.Value) }
        elseif Type == "Dropdown" then
            return { idx = kU, type = "Dropdown", multi = kV.Multi == true, value = kV.Value }
        elseif Type == "Input" then
            local xC = kV.Value or ""
            return { idx = kU, type = "Input", text = tostring(xC) }
        elseif Type == "ColorPicker" then
            return { idx = kU, type = "ColorPicker", value = kV.Value:ToHex(), transparency = kV.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = kU,
                type = "KeyPicker",
                mode = kV.Mode,
                key = kV.Value,
                modifiers = kV.Modifiers,
                toggled = kV.Toggled
            }
        else
            return nil
        end
    end
    local function kX()
        local xF = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local xG = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if xG then
                    local xG_1 = kT(k, v)
                    if xG_1 then
                        xF[#xF + 1] = xG_1
                    end
                end
            end
        end
        table.sort(xF, function(k6, k7)
            if k6.type ~= k7.type then
                return k6.type < k7.type
            end
            return k6.idx < k7.idx
        end)
        return { objects = xF }
    end
    local function k8(k9)
        local xW
        xW = nil
        local xX = type(k9) ~= "table" or type(k9.idx) ~= "string" or type(k9.type) ~= "string" or SaveManager.Ignore[k9.idx]
        if xX then
            return false
        end
        xW = kJ(k9.type, k9.idx)
        if not xW then
            return false
        end
        local xX_1 = pcall(function()
            if k9.type == "Input" then
                if type(k9.text) ~= "string" then
                    return
                end
                xW:SetValue(k9.text)
            elseif k9.type == "ColorPicker" then
                xW:SetValueRGB(Color3.fromHex(k9.value), k9.transparency)
            elseif k9.type == "KeyPicker" then
                xW:SetValue({ k9.key, k9.mode, k9.modifiers })
                if k9.mode == "Toggle" and k9.toggled ~= nil then
                    xW.Toggled = k9.toggled
                    xW:Update()
                end
            else
                xW:SetValue(k9.value)
            end
        end)
        return xX_1
    end
    kI:AddDivider()
    kI:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    kI:AddButton("Export Config to Clipboard", function()
        local x__1
        local xZ_1
        xZ_1, x__1 = pcall(HttpService.JSONEncode, HttpService, kX())
        if not xZ_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local xZ_2 = setclipboard or toclipboard
        local xZ_3 = type(xZ_2) ~= "function"
        local x4 = if xZ_3 then 1 else 0
        local x2 = 537 * x4 + 1894 * (1 - x4)
        local x3 = 2169 * x4 + 3342 * (1 - x4)
        if not ((x2 * 67 + x3 * 3498 + x2 * x3) % 16777213 == 8787894) then
            xZ_3 = not pcall(xZ_2, x__1)
        end
        if xZ_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    kI:AddButton("Import Config from Clipboard Text", function()
        local x7_1
        local x5 = Options.SaveManager_ImportSource.Value or ""
        local x5_1
        local x6 = tostring(x5):match("^%s*(.-)%s*$")
        if x6 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        x5_1, x7_1 = pcall(HttpService.JSONDecode, HttpService, x6)
        local x6_1 = not x5_1 or type(x7_1) ~= "table"
        local yb = if x6_1 then 1 else 0
        local x9 = 951 * yb + 1947 * (1 - yb)
        local ya = 1955 * yb + 3050 * (1 - yb)
        if not ((x9 * 2215 + ya * 2687 + x9 * ya) % 16777213 == 9218755) then
            x6_1 = type(x7_1.objects) ~= "table"
        end
        if x6_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local x5_2 = 0
        for i, v in ipairs(x7_1.objects) do
            if k8(v) then
                x5_2 += 1
            end
        end
        if x5_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local x7_2 = x5_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(x5_2, x7_2), 6)
    end)
end
yl_5_2()
yl_9_7()
qa_3()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(pd.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/StealFishEggs")
local p9_4 = SaveManager:BuildConfigSection(pd.Settings)
yl_16_4(p9_4)
SaveManager:LoadAutoloadConfig()
if Toggles.HideUiOnStart.Value then
    Library:Toggle(false)
end
