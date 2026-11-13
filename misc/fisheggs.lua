local ym_2_1, ym_2_3
local ym_8_1, ym_8_2, ym_8_3, ym_8_4
local oM
local Options
local pa
local pz
local oz
local pg
local oY
local EquipBestFish
local oF
local CoreGui
local Bases
local oL
local ps
local o9
local ClaimFishIndex
local oX
local pE
local oE
local pl
local LocalPlayer
local oK
local o8
local oQ
local pe
local SellRequest
local oD
local pk
local Biomes
local oJ
local o7
local Toggles
local oV
local pC
local PlaceEgg
local o0
local Library
local oI
local pp
local PlacedEggs
local oO
local pc
local oU
local pB
local oB
local pi
local o_
local pH
local oH
local po
local oN
local SpawnedEggs
local oT
local HatchEgg
local ph
local oZ
local pG
local oG
local pn
local function fn9()
    local Character = LocalPlayer.Character
    local rr = Character and Character:FindFirstChild("HumanoidRootPart")
    return rr
end
local function fn13()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    for i, child in Character:GetChildren() do
        if oZ(child) then
            return child
        end
    end
    return nil
end
local function fn32(di)
    local sO_1
    local sN_1
    if not next(oD) then
        pG()
    end
    local sK = Options.StealZoneFilter and Options.StealZoneFilter.Value
    local sK_1 = Toggles.AutoStealSelected and Toggles.AutoStealSelected.Value
    local sM = oF
    if sK_1 then
        sK_1 = type(sK) == "table"
    end
    if sK_1 then
        sK_1 = next(sK)
    end
    if sK_1 then
        sO_1, sN_1 = nil, nil
        for k in sK do
            local sK_2 = oD[k]
            if sK_2 then
                local Magnitude = (sK_2 - sM).Magnitude
                local sK_3 = not sN_1
                if not sK_3 then
                    sK_3 = di == "Furthest" and Magnitude > sN_1
                end
                if not sK_3 then
                    sK_3 = di ~= "Furthest" and Magnitude < sN_1
                end
                if sK_3 then
                    sO_1, sN_1 = k, Magnitude
                end
            end
        end
        if sO_1 then
            oX(sO_1)
        end
        return
    end
    local sK_4 = di == "Further"
    local sL_2 = di == "Furthest"
    local s2 = if sL_2 then 1 else 0
    local s0 = 2235 * s2 + 2914 * (1 - s2)
    local s1 = 2853 * s2 + 787 * (1 - s2)
    if not ((s0 * 1183 + s1 * 1540 + s0 * s1) % 16777213 == 13414080) then
        sL_2 = sK_4
    end
    if sL_2 then
        local sK_5 = oB[1]
        if sK_5 then
            oX(sK_5.Name)
        end
    end
end
local function fn108(dJ)
    local s6 = oI[dJ]
    if not s6 then
        return false
    end
    local ta = if os.clock() >= s6 then 1 else 0
    if ta == 1 then
        oI[dJ] = nil
        return false
    end
    return true
end
local function fn118(bv)
    local rz = bv.PrimaryPart or bv:FindFirstChild("PrimaryPart") or bv:FindFirstChildWhichIsA("BasePart")
    return rz
end
local function autoSellLoop()
    while not Library.Unloaded do
        if Toggles.AutoSell and Toggles.AutoSell.Value then
            pcall(pl)
        end
        local wait = task.wait
        local uV = Options.SellDelay and Options.SellDelay.Value or 1
        wait(uV)
    end
end
local function fn157()
    local t0 = false
    for i, child in PlacedEggs:GetChildren() do
        if Library.Unloaded then
            break
        else
            local t1 = child:IsA("Model") and tonumber(child:GetAttribute("OwnerUserId")) == LocalPlayer.UserId and child:GetAttribute("HatchReady") == true
            if t1 then
                HatchEgg:FireServer(child)
                t0 = true
                task.wait(0.2)
            end
        end
    end
    return t0
end
local function fn175()
    local attr = LocalPlayer:GetAttribute("BaseName")
    local qU = attr ~= ""
    local qV = type(attr) == "string" and qU
    if qV then
        return Bases:FindFirstChild(attr)
    end
    for i, child in Bases:GetChildren() do
        if tonumber(child:GetAttribute("OwnerUserId")) == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
local function fn176()
    po(oT, "Copied Discord invite to clipboard")
end
local function fn204(b6)
    for k, v in { "TreadPoolTrainingPosition", "TreadPoolTrainingOrientation" } do
        local rW = b6:FindFirstChild(v)
        if rW and rW.Enabled then
            rW.Enabled = false
        end
    end
end
local function fn211()
    local q2 = oY()
    local q3 = q2 and q2:FindFirstChild("EggPlacementZone")
    return q3
end
local function fn215()
    local Character = LocalPlayer.Character
    local ru = Character and Character:FindFirstChildOfClass("Humanoid")
    return ru
end
local function fn275()
    local tM = oO()
    local tN = oH()
    local tO = pE()
    local tQ = not tM or not tN
    local tN_1 = not tO
    local tP_1 = tQ
    local tU = if tP_1 then 1 else 0
    local tS = 2104 * tU + 2989 * (1 - tU)
    local tT = 695 * tU + 423 * (1 - tU)
    if not ((tS * 2285 + tT * 654 + tS * tT) % 16777213 == 6724450) then
        tP_1 = tN_1
    end
    if tP_1 then
        return false
    end
    local tN_2 = oV()
    if #tN_2 == 0 then
        return false
    end
    local tP_2 = false
    for k, v in tN_2 do
        if Library.Unloaded then
            break
        end
        if v.Parent == LocalPlayer.Backpack then
            tO:EquipTool(v)
            task.wait(0.12)
        end
        if oz() then
            oU(tM.Position + Vector3.new(0, 5, 0))
            local tN_3 = tM.CFrame:PointToWorldSpace(Vector3.new(0, tM.Size.Y * 0.5, 0))
            PlaceEgg:FireServer(tN_3)
            tP_2 = true
            task.wait(0.35)
        end
    end
    return tP_2
end
local function fn301(db)
    if not next(oD) then
        pG()
    end
    local sF = oD[db]
    if not sF then
        return false
    end
    pi(sF, 2)
    oU(sF + Vector3.new(0, 6, 0))
    task.wait(0.2)
    return true
end
local function fn315(cQ)
    local attr3 = cQ:GetAttribute("Biome")
    local attr2 = cQ:GetAttribute("Rarity")
    local attr = cQ:GetAttribute("DisplayName")
    if not (Toggles.AutoStealSelected and Toggles.AutoStealSelected.Value) then
        return true
    end
    local Value3 = Options.StealZoneFilter.Value
    local Value2 = Options.StealRarityFilter.Value
    local Value = Options.StealSpecificEggs.Value
    local sx = type(Value3) == "table" and next(Value3) and not Value3[attr3]
    if sx then
        return false
    end
    local sr_1 = type(Value2) == "table" and next(Value2) and not Value2[attr2]
    if sr_1 then
        return false
    end
    local sr_2 = type(Value) == "table" and next(Value) and not Value[attr]
    if sr_2 then
        return false
    end
    return true
end
local function fn334()
    local TpWalkSpeed = Options.TpWalkSpeed
    local r7 = TpWalkSpeed and tonumber(TpWalkSpeed.Value)
    local r6_1 = r7
    if r7 then
        r7 = math.max(r6_1, 1)
    end
    return r7 or pg
end
local function fn365(by)
    local rB = by:IsA("Tool") and type(by:GetAttribute("EggType")) == "string" and by:GetAttribute("Scale") ~= nil and by:GetAttribute("Kg") ~= nil
    return rB
end
local function fn424()
    local tb = oH()
    if not tb then
        return {}
    end
    local Position = tb.Position
    local tb_1 = {}
    local td = oF
    for i, child in SpawnedEggs:GetChildren() do
        local te = child:IsA("Model") and child:GetAttribute("PromptBusy") ~= true and not oE(child)
        if te then
            local te_1 = pp(child)
            local tf = o8(child)
            local tg = te_1 and te_1.Enabled and tf and oQ(child)
            if tg then
                local tg_1 = #tb_1 + 1
                local Magnitude2 = (tf.Position - Position).Magnitude
                local Magnitude = (tf.Position - td).Magnitude
                local tj = oK[child:GetAttribute("Rarity")] or 0
                tb_1[tg_1] = {
                    Egg = child,
                    Prompt = te_1,
                    Part = tf,
                    Distance = Magnitude2,
                    SafeDistance = Magnitude,
                    RarityRank = tj,
                    Enabled = true,
                    Biome = child:GetAttribute("Biome")
                }
            end
        end
    end
    return tb_1
end
local function onDescendantAdded(f3)
    local uN = f3:IsA("ProximityPrompt") and f3.Name == "EggPrompt"
    if uN then
        pe(f3)
    end
end
local function fn548()
    oU(oF, 20)
    local sn = CFrame.new(oF)
    local so = os.clock() + 6
    while os.clock() < so do
        if not pn() then
            return true
        end
        local sp = Library.Unloaded or not pz(sn)
        if sp then
            return false
        end
        pC.Heartbeat:Wait()
    end
    return not pn()
end
local function fn639(br)
    local EggPrompt = br:FindFirstChild("EggPrompt", true)
    local rx = EggPrompt and EggPrompt:IsA("ProximityPrompt")
    if rx then
        return EggPrompt
    end
    return nil
end
local function fn685()
    return LocalPlayer:GetAttribute("CarryingEgg") == true
end
local function fn689(a2, a3)
    if setclipboard then
        setclipboard(a2)
    elseif toclipboard then
        toclipboard(a2)
    end
    Library:Notify(a3)
end
local function fn708(a9)
    local DiscordGroup = a9:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = o7 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = o7 })
end
local function fn732(bT)
    local rS = not bT or not bT:IsA("ProximityPrompt")
    if rS then
        return
    end
    if bT.HoldDuration < pk then
        bT.HoldDuration = pk
    end
    bT.RequiresLineOfSight = false
end
local function fn767(eh)
    local tD = not eh
    local Prompt
    local tE = not oH() or tD
    local Part
    if tE then
        return false
    elseif pn() then
        return ph()
    else
        Part, Prompt = eh.Part, eh.Prompt
        local tF = not Part
        local tL = if tF then 1 else 0
        local tJ = 3872 * tL + 4069 * (1 - tL)
        local tK = 2543 * tL + 3209 * (1 - tL)
        if not ((tJ * 852 + tK * 2402 + tJ * tK) % 16777213 == 2476513) then
            tF = not Part.Parent
        end
        if not tF then
            tF = not Prompt
        end
        if not tF then
            tF = not Prompt.Parent
        end
        if tF then
            return false
        end
        pi(Part.Position, 1)
        pe(Prompt)
        local tF_1 = Part.CFrame + Vector3.new(0, 4, 0)
        if not oU(tF_1.Position) then
            oI[eh.Egg] = os.clock() + oM
            return false
        end
        o0(Prompt)
        local tG = os.clock() + pk + 3
        while os.clock() < tG do
            if pn() then
                break
            end
            local tH = Library.Unloaded or not Part.Parent or not Prompt.Enabled or not pz(tF_1)
            if tH then
                break
            end
            pC.Heartbeat:Wait()
        end
        if not pn() then
            oI[eh.Egg] = os.clock() + oM
            return false
        end
        return ph()
    end
end
local function autoBuyTrailsLoop()
    while not Library.Unloaded do
        if Toggles.AutoBuyTrails and Toggles.AutoBuyTrails.Value then
            pcall(pH)
        end
        local u__1 = task.wait
        local u1 = Options.TrailBuyDelay and Options.TrailBuyDelay.Value or 2
        u__1(u1)
    end
end
local function fn785()
    return CoreGui
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        local uY = Options.FishActionDelay and Options.FishActionDelay.Value or 1
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
        task.wait(uY)
    end
end
local function fn817(cc)
    local r4 = oH()
    if not r4 then
        return false
    end
    oJ(r4)
    r4.CFrame = cc
    r4.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function autoStealAllLoop()
    while not Library.Unloaded do
        if Toggles.AutoStealAll and Toggles.AutoStealAll.Value or Toggles.AutoStealSelected and Toggles.AutoStealSelected.Value then
            if pn() then
                ph()
            else
                local uH_1 = Options.StealPriority and Options.StealPriority.Value or "Nearest"
                local uH_2 = pB()
                if #uH_2 == 0 then
                    oL(uH_1)
                    uH_2 = pB()
                end
                local uI_1 = oN(uH_2)
                if uI_1 then
                    pa(uI_1)
                else
                    local uH_3 = uH_1 == "Further"
                    local uI_2 = uH_1 == "Furthest"
                    local uM = if uI_2 then 1 else 0
                    local uK = 2762 * uM + 157 * (1 - uM)
                    local uL = 1308 * uM + 355 * (1 - uM)
                    if not ((uK * 446 + uL * 1283 + uK * uL) % 16777213 == 6522712) then
                        uI_2 = uH_3
                    end
                    if uI_2 then
                        oL(uH_1)
                    end
                end
            end
        end
        local uH_4 = Options.StealDelay and Options.StealDelay.Value or 0.05
        if uH_4 > 0 then
            task.wait(uH_4)
        else
            task.wait()
        end
    end
end
local function autoPlaceEggsLoop()
    while not Library.Unloaded do
        if Toggles.AutoPlaceEggs and Toggles.AutoPlaceEggs.Value then
            ps()
        end
        if Toggles.AutoHatch and Toggles.AutoHatch.Value then
            oG()
        end
        local wait = task.wait
        local uR = Options.EggActionDelay and Options.EggActionDelay.Value or 0.4
        wait(uR)
    end
end
local function fn894()
    table.clear(oD)
    table.clear(oB)
    local q5 = oF
    local q6 = o9:FindFirstChild("Biomes") or Biomes
    if not q6 then
        return
    end
    for i, child in q6:GetChildren() do
        local q6_1 = child:IsA("Folder") and not string.find(child.Name, "IGNORE", 1, true)
        if q6_1 then
            local q7_1 = nil
            local EggSpawns = child:FindFirstChild("EggSpawns")
            if EggSpawns then
                for i, child in EggSpawns:GetChildren() do
                    local q8
                    if child:IsA("BasePart") then
                        q8 = child
                    elseif child:IsA("Model") then
                        local q6_3 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
                        q8 = q6_3
                    end
                    if q8 then
                        q7_1 = q8.Position
                        break
                    end
                end
            end
            if not q7_1 then
                local BasePart = child:FindFirstChildWhichIsA("BasePart", true)
                if BasePart then
                    q7_1 = BasePart.Position
                end
            end
            if q7_1 then
                oD[child.Name] = q7_1
                oB[#oB + 1] = { Name = child.Name, Position = q7_1, SafeDistance = (q7_1 - q5).Magnitude }
            end
        end
    end
    table.sort(oB, function(ar, as)
        return ar.SafeDistance > as.SafeDistance
    end)
end
local function fn906()
    local Value2 = Options.SellMode.Value
    if Value2 == "Inventory" then
        return SellRequest:InvokeServer("SellInventory")
    elseif Value2 == "Equipped" then
        return SellRequest:InvokeServer("SellEquipped")
    else
        local Value = Options.SellRarityFilter.Value
        local ua = pE()
        if not ua then
            return nil
        end
        local ub = false
        for k, v in oV() do
            if Library.Unloaded then
                break
            else
                local attr = v:GetAttribute("Rarity")
                local uc_1
                local ud = type(Value) ~= "table" or not next(Value) or Value[attr]
                local ud_1
                if ud then
                    if v.Parent == LocalPlayer.Backpack then
                        ua:EquipTool(v)
                        task.wait(0.12)
                    end
                    uc_1, ud_1 = pcall(function()
                        return SellRequest:InvokeServer("SellEquipped")
                    end)
                    local ue = uc_1 and type(ud_1) == "table" and ud_1.Success
                    if ue then
                        ub = true
                    end
                    task.wait(0.2)
                end
            end
        end
        return ub
    end
end
local function fn911(cp, cq)
    if typeof(cp) ~= "Vector3" then
        return false
    end
    local sc = os.clock()
    local sd = cq
    local sm = if sd then 1 else 0
    local sk = 179 * sm + 3866 * (1 - sm)
    local sl = 434 * sm + 1683 * (1 - sm)
    if not ((sk * 2777 + sl * 2901 + sk * sl) % 16777213 == 1833803) then
        sd = 15
    end
    local se = sc + sd
    while true do
        if not (os.clock() < se) then
            return false
        end
        if Library.Unloaded then
            return false
        end
        local sc_1 = oH()
        if not sc_1 then
            break
        end
        oJ(sc_1)
        local sd_1 = pc()
        local sf = math.max(2, sd_1 * 0.1)
        local sg = cp - sc_1.Position
        local Magnitude = sg.Magnitude
        if Magnitude <= sf then
            sc_1.CFrame = CFrame.new(cp)
            sc_1.AssemblyLinearVelocity = Vector3.zero
            return true
        end
        local si = pC.Heartbeat:Wait()
        sc_1.CFrame = CFrame.new(sc_1.Position + sg.Unit * math.min(sf, sd_1 * si, Magnitude), cp)
        sc_1.AssemblyLinearVelocity = Vector3.zero
    end
    return false
end
oz = nil
HatchEgg = nil
oB = nil
PlaceEgg = nil
oD = nil
oE = nil
oF = nil
oG = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
oM = nil
oN = nil
oO = nil
oQ = nil
oT = nil
oU = nil
oV = nil
oX = nil
oY = nil
oZ = nil
o_ = nil
o0 = nil
Biomes = nil
LocalPlayer = nil
Bases = nil
PlacedEggs = nil
o7 = nil
o8 = nil
o9 = nil
pa = nil
SpawnedEggs = nil
pc = nil
pe = nil
pg = nil
ph = nil
pi = nil
pk = nil
local Players, oP, oR, oS, oW, o4, Lighting, TeleportService, TrailConfig, GuiService
pl = nil
CoreGui = nil
pn = nil
po = nil
pp = nil
ps = nil
Options = nil
Toggles = nil
ClaimFishIndex = nil
pz = nil
pB = nil
pC = nil
SellRequest = nil
pE = nil
EquipBestFish = nil
pG = nil
pH = nil
Library = nil
local pq, GetTrailShopState, pu, BuyTrailCash, px, pA
local p0_1
local pV_1
local EggConfig
local pT_1, pT_3
pq = nil
GetTrailShopState = nil
pu = nil
BuyTrailCash = nil
px = nil
pA = nil
Players, ym_8_1, pC, px, pu, pq, CoreGui, GuiService, TeleportService, o9, Lighting, LocalPlayer, o_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
if px and LocalPlayer and (not CoreGui or LocalPlayer) and (not CoreGui and not CoreGui and (pC or not LocalPlayer)) and ((pC or CoreGui or px and not o_) and (px and not LocalPlayer or (px or ym_8_1))) or not (px and LocalPlayer and (not CoreGui or LocalPlayer) and (not CoreGui and not CoreGui and (pC or not LocalPlayer)) and ((pC or CoreGui or px and not o_) and (px and not LocalPlayer or (px or ym_8_1)))) then
    ym_8_2 = game:GetService("ReplicatedStorage")
    pC = game:GetService("RunService")
    px = game:GetService("UserInputService")
    pu = game:GetService("VirtualUser")
    pq = game:GetService("HttpService")
else
    pq = game:GetService("ReplicatedStorage")
    px = game:GetService("RunService")
    ym_8_2 = game:GetService("UserInputService")
    pC = game:GetService("VirtualUser")
    pu = game:GetService("HttpService")
end
CoreGui = game:GetService("CoreGui")
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
o9 = game:GetService("Workspace")
Lighting = game:GetService("Lighting")
LocalPlayer = Players.LocalPlayer
o_ = fn785
if getgenv then
    getgenv().gethui = o_
end
pcall(function()
    gethui = o_
end)
if setthreadidentity then
    setthreadidentity(8)
end
oW, oT, oS, oP, ym_2_1, PlaceEgg, HatchEgg, EquipBestFish, SellRequest, ClaimFishIndex, BuyTrailCash, GetTrailShopState, EggConfig, TrailConfig, SpawnedEggs, PlacedEggs, Bases, Biomes, oF, oD, oB, oK, oY, oO, pG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not SellRequest and not SellRequest and (oK or not GetTrailShopState) or (SellRequest and not SellRequest or (not ym_2_1 or oK))) and not (not SellRequest and not SellRequest and (oK or not GetTrailShopState) or (SellRequest and not SellRequest or (not ym_2_1 or oK))) then
    oT = "Steal Fish Eggs"
    oP = "https://discord.gg/synapsex"
    oW = "https://rscripts.net/@Ouroboros"
    oS = "https://ouroboros-hub-rbx.web.app/"
else
    oW = "Steal Fish Eggs"
    oT = "https://discord.gg/synapsex"
    oS = "https://rscripts.net/@Ouroboros"
    oP = "https://ouroboros-hub-rbx.web.app/"
end
local ym_20 = ym_8_2:WaitForChild("EggSystem")
local ym_20_2
local FishSystem = ym_8_2:WaitForChild("FishSystem")
local ym_9_3
local ym_2_2 = ym_8_2:WaitForChild("SellSystem")
local ym_18 = ym_8_2:WaitForChild("FishIndexSystem")
local TrailSystem = ym_8_2:WaitForChild("TrailSystem")
PlaceEgg = ym_20:WaitForChild("PlaceEgg")
HatchEgg = ym_20:WaitForChild("HatchEgg")
EquipBestFish = FishSystem:WaitForChild("EquipBestFish")
SellRequest = ym_2_2:WaitForChild("SellRequest")
ClaimFishIndex = ym_18:WaitForChild("ClaimFishIndex")
BuyTrailCash = TrailSystem:WaitForChild("BuyTrailCash")
GetTrailShopState = TrailSystem:WaitForChild("GetTrailShopState")
if (Biomes or TrailConfig or (oO or not oO) or (not Biomes and not oO or not oF and TrailConfig)) and (not oO and TrailConfig and (ym_18 or oO) or TrailConfig and oO and (not oO or not oO)) and (not oO and oO and (not TrailConfig or not ym_18) and (not oO and oF and (not TrailConfig and oO)) or (not FishSystem or not FishSystem or (oF or not FishSystem) or (TrailConfig or not oF or not TrailConfig and oO))) or not ((Biomes or TrailConfig or (oO or not oO) or (not Biomes and not oO or not oF and TrailConfig)) and (not oO and TrailConfig and (ym_18 or oO) or TrailConfig and oO and (not oO or not oO)) and (not oO and oO and (not TrailConfig or not ym_18) and (not oO and oF and (not TrailConfig and oO)) or (not FishSystem or not FishSystem or (oF or not FishSystem) or (TrailConfig or not oF or not TrailConfig and oO)))) then
    EggConfig = require(ym_20:WaitForChild("EggConfig"))
else
    ym_20 = require(EggConfig:WaitForChild("EggConfig"))
end
local pQ = require(ym_20:WaitForChild("EggRarityConfig"))
TrailConfig = require(TrailSystem:WaitForChild("TrailConfig"))
if (pG and not pG and (TrailSystem and TrailSystem) and (not TrailSystem or pG or (pG or pG)) or (pG and TrailSystem or (TrailSystem or pG) or TrailSystem and pG and (not TrailSystem or pG))) and (not pG or pG or TrailSystem and not pG or (TrailSystem and pG or (pG or not pG)) or (not pG and not TrailSystem or (not pG or pG) or (TrailSystem or pG or TrailSystem and not TrailSystem))) or not ((pG and not pG and (TrailSystem and TrailSystem) and (not TrailSystem or pG or (pG or pG)) or (pG and TrailSystem or (TrailSystem or pG) or TrailSystem and pG and (not TrailSystem or pG))) and (not pG or pG or TrailSystem and not pG or (TrailSystem and pG or (pG or not pG)) or (not pG and not TrailSystem or (not pG or pG) or (TrailSystem or pG or TrailSystem and not TrailSystem)))) then
    SpawnedEggs = o9:WaitForChild("SpawnedEggs")
else
    o9 = SpawnedEggs:WaitForChild("SpawnedEggs")
end
PlacedEggs = o9:WaitForChild("PlacedEggs")
Bases = o9:WaitForChild("Bases")
Biomes = o9:FindFirstChild("Biomes")
oY = fn175
oO = fn211
oF = Vector3.new(32, 119, -47)
oD = {}
oB = {}
pG = fn894
pG()
local RarityOrder = pQ.RarityOrder
oK = {}
for k, v in RarityOrder do
    oK[v] = k
end
ym_18, ym_2_3, ym_8_3 = nil, nil, nil
local ym_23_1 = 13
repeat
    if (ym_23_1 * 1 + 0) % 2 + 1 <= 1 then
        local zU = bit32.rrotate(bit32.bxor(bit32.lrotate(ym_23_1, 28), string.byte(tostring(ym_8_3))), 1)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zU, 2318922669), 1290121753), (bit32.bxor(bit32.band(zU, 1976044626), 3637795571))), 1290121753), 3637795571) == zU then
            ym_2_3 = {}
            ym_8_3 = {}
        else
            ym_8_3 = {}
            ym_2_3 = {}
        end
        ym_23_1 = (ym_23_1 + 13) % 16
    else
        if ((not ym_2_3 and ym_8_3 or (not ym_2_3 or ym_23_1)) and ((ym_2_3 or not ym_23_1) and (ym_2_3 or ym_18)) and (ym_23_1 and ym_8_3 and (not ym_18 or ym_8_3) or (ym_18 and ym_18 or not ym_8_3 and not ym_2_3)) or (ym_2_3 or ym_8_3 or (ym_2_3 or ym_2_3)) and (ym_8_3 or ym_8_3 or ym_8_3 and ym_8_3) and ((ym_2_3 or ym_23_1 or not ym_23_1 and ym_23_1) and (ym_8_3 and not ym_2_3 or (not ym_8_3 or not ym_8_3)))) and not ((not ym_2_3 and ym_8_3 or (not ym_2_3 or ym_23_1)) and ((ym_2_3 or not ym_23_1) and (ym_2_3 or ym_18)) and (ym_23_1 and ym_8_3 and (not ym_18 or ym_8_3) or (ym_18 and ym_18 or not ym_8_3 and not ym_2_3)) or (ym_2_3 or ym_8_3 or (ym_2_3 or ym_2_3)) and (ym_8_3 or ym_8_3 or ym_8_3 and ym_8_3) and ((ym_2_3 or ym_23_1 or not ym_23_1 and ym_23_1) and (ym_8_3 and not ym_2_3 or (not ym_8_3 or not ym_8_3)))) then
            ym_8_3 = {}
        else
            ym_18 = {}
        end
        ym_23_1 = (ym_23_1 + 1) % 16
    end
until (ym_23_1 * 13 + 9) % 16 == 8
local ym_9_2 = {}
for k, v in EggConfig.Biomes do
    ym_18[#ym_18 + 1] = k
    if type(v.Eggs) == "table" then
        for k2, v in v.Eggs do
            if type(v) == "table" then
                local ym_23_2 = v.DisplayName or v.ModelName
                local ym_23_3 = type(ym_23_2) == "string" and ym_23_2 ~= "" and not ym_9_2[ym_23_2]
                if ym_23_3 then
                    ym_9_2[ym_23_2] = true
                    ym_2_3[#ym_2_3 + 1] = ym_23_2
                    ym_8_3[ym_23_2] = { ModelName = v.ModelName, Rarity = v.Rarity, Biome = k, ToolName = v.ToolName, SaveId = v.SaveId }
                end
            end
        end
    end
end
table.sort(ym_18)
table.sort(ym_2_3)
o4 = {}
for k, v in TrailConfig.RarityOrder do
    o4[#o4 + 1] = v
end
ym_20_2, ym_9_3, ym_8_4 = nil, nil, nil
local ym_23_4 = 4
repeat
    if ((not ym_20_2 or not ym_8_4 or not ym_20_2 and not ym_23_4) and (ym_9_3 and not ym_23_4 and (ym_20_2 and not ym_9_3)) and (not ym_9_3 and ym_23_4 and (not ym_8_4 and ym_23_4) and ((ym_8_4 or ym_9_3) and (ym_23_4 or not ym_9_3))) or (not ym_20_2 and not ym_20_2 and (ym_20_2 or ym_23_4) and (not ym_9_3 and ym_8_4 and (not ym_9_3 or not ym_20_2)) or ((ym_20_2 or ym_9_3) and (not ym_23_4 or ym_23_4) or (ym_23_4 or not ym_8_4 or not ym_9_3 and ym_20_2)))) and not ((not ym_20_2 or not ym_8_4 or not ym_20_2 and not ym_23_4) and (ym_9_3 and not ym_23_4 and (ym_20_2 and not ym_9_3)) and (not ym_9_3 and ym_23_4 and (not ym_8_4 and ym_23_4) and ((ym_8_4 or ym_9_3) and (ym_23_4 or not ym_9_3))) or (not ym_20_2 and not ym_20_2 and (ym_20_2 or ym_23_4) and (not ym_9_3 and ym_8_4 and (not ym_9_3 or not ym_20_2)) or ((ym_20_2 or ym_9_3) and (not ym_23_4 or ym_23_4) or (ym_23_4 or not ym_8_4 or not ym_9_3 and ym_20_2)))) then
        ym_8_4 = { "Nearest", "Random", "Furthest", "Rarest" }
        ym_20_2 = { "Equipped", "Inventory", "Filtered Eggs" }
        ym_9_3 = {}
    else
        ym_20_2 = { "Nearest", "Rarest", "Random", "Furthest" }
        ym_9_3 = { "Inventory", "Equipped", "Filtered Eggs" }
        ym_8_4 = {}
    end
    ym_23_4 = (ym_23_4 + 0) % 8
until (ym_23_4 * 7 + 1) % 8 == 5
for k, v in RarityOrder do
    ym_8_4[v] = true
end
local ym_23_5 = {}
for k, v in ym_18 do
    ym_23_5[v] = true
end
local ym_4 = {}
for k, v in o4 do
    ym_4[v] = true
end
Library, pA, Toggles, Options, pT_1, oR, po, o7, oH, pE, pp, o8, oZ, oV, oz = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pQ = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
if (not Toggles and Toggles or (po or false) or (not Toggles and pT_1 or (po or Toggles))) and (Toggles and false or Toggles and pE or (Toggles and not oR or 102)) and ((oR or pE) and (not pT_1 or false) and ((not pE or po) and (not po and false)) or (not oR and oR or not pT_1 and false or (not po or po or (not po or 102)))) or not ((not Toggles and Toggles or (po or false) or (not Toggles and pT_1 or (po or Toggles))) and (Toggles and false or Toggles and pE or (Toggles and not oR or 102)) and ((oR or pE) and (not pT_1 or false) and ((not pE or po) and (not po and false)) or (not oR and oR or not pT_1 and false or (not po or po or (not po or 102))))) then
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
else
    pQ = loadstring(game:HttpGet(Library .. "Library.lua"))()
end
local p_ = loadstring(game:HttpGet(pQ .. "addons/ThemeManager.lua"))()
pA = loadstring(game:HttpGet(pQ .. "addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
po = fn689
o7 = fn176
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = oT, Copyable = true }, "|", oW },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
oR = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "egg"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
local pZ = oR.Main:AddSubTab("Steal", "swords")
local pY = oR.Main:AddSubTab("Eggs", "egg")
local pX = oR.Main:AddSubTab("Fish", "fish")
local pW = oR.Main:AddSubTab("Shop", "shopping-bag")
fn708(pZ)
fn708(pY)
fn708(pX)
fn708(pW)
fn708(oR.Player)
fn708(oR.Settings)
oH = fn9
pE = fn215
pp = fn639
o8 = fn118
oZ = fn365
oV = function()
    local bB = {}
    local function bC(bD)
        if not bD then
            return
        end
        for i, child in bD:GetChildren() do
            if oZ(child) then
                bB[#bB + 1] = child
            end
        end
    end
    bC(LocalPlayer:FindFirstChild("Backpack"))
    bC(LocalPlayer.Character)
    return bB
end
oz = fn13
pQ = EggConfig.Settings and EggConfig.Settings.PromptHoldDuration
local pR_2 = tonumber(pQ) or 1
pk, pg, oM, oI, p0_1, pV_1, pT_3, pe, o0, oJ, pz, pc, oU, pn, ph, oQ, pi, oX, oL, oE, pB, oN, pa, ps, oG, pl, pH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pk = pR_2
pe = fn732
o0 = function(bX)
    task.spawn(function()
        task.wait(0.25)
        if Library.Unloaded or not bX.Parent then
            return
        end
        pcall(function()
            bX:InputHoldBegin()
            task.wait(math.max(bX.HoldDuration, pk) + 0.35)
            bX:InputHoldEnd()
        end)
    end)
end
if (not oU and pT_3 or oM and oM or not oU and oU and (oM or p0_1)) and not (not oU and pT_3 or oM and oM or not oU and oU and (oM or p0_1)) then
    pz = fn204
    oJ = fn817
else
    oJ = fn204
    pz = fn817
end
pg = 150
pc = fn334
oU = fn911
pn = fn685
ph = fn548
oQ = fn315
pi = function(c4, c5)
    if typeof(c4) ~= "Vector3" then
        return
    end
    pcall(function()
        local sC = c5 or 2
        LocalPlayer:RequestStreamAroundAsync(c4, sC)
    end)
end
if (pV_1 or pn or not pV_1 and not pc) and (pn and not ps and (not pc and not pV_1)) or (p0_1 or pc) and (p0_1 and not pn) and (p0_1 and not pV_1 and (pc or not p0_1)) or not ((pV_1 or pn or not pV_1 and not pc) and (pn and not ps and (not pc and not pV_1)) or (p0_1 or pc) and (p0_1 and not pn) and (p0_1 and not pV_1 and (pc or not p0_1))) then
    oX = fn301
    oL = fn32
    oM = 6
    oI = {}
else
    oL = fn301
    oM = fn32
    oI = 6
    oX = {}
end
oE = fn108
pB = fn424
oN = function(d4)
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
        local tt_1 = d4[1]
        local tu_1 = #d4
        local tA = 2
        while tA <= tu_1 do
            local tu_2 = d4[tA]
            if tu_2.SafeDistance > tt_1.SafeDistance or tu_2.SafeDistance == tt_1.SafeDistance and tu_2.RarityRank > tt_1.RarityRank then
                tt_1 = tu_2
            end
            tA += 1
        end
        return tt_1
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
pa = fn767
ps = fn275
oG = fn157
pl = fn906
pH = function()
    local uq_1
    local ur_1
    local Value = Options.TrailBuyFilter.Value
    uq_1, ur_1 = pcall(function()
        return GetTrailShopState:InvokeServer()
    end)
    local us = uq_1 and type(ur_1) == "table" and ur_1.Owned
    local ur_2 = us or {}
    local uq_3 = 0
    local Stats = LocalPlayer:FindFirstChild("Stats")
    local ut = Stats and Stats:FindFirstChild("Cash")
    local ut_5
    if ut then
        local ut_1 = tonumber(ut.Value) or 0
        uq_3 = ut_1
    end
    for k, v in o4 do
        local uF = v
        if Library.Unloaded then
            break
        else
            local ut_2 = type(Value) ~= "table" or not next(Value) or Value[uF]
            local uu = ut_2 and not ur_2[uF]
            local uu_3
            if uu then
                local ut_3 = TrailConfig.GetShopData(uF)
                local uu_1 = ut_3 and tonumber(ut_3.CashPrice)
                if uq_3 >= (uu_1 or math.huge) then
                    ut_5, uu_3 = pcall(function()
                        return BuyTrailCash:InvokeServer(uF)
                    end)
                    local uv = ut_5 and type(uu_3) == "table"
                    if uv then
                        if ut then
                            local ut_6 = tonumber(ut.Value) or uq_3
                            uq_3 = ut_6
                        end
                    end
                    task.wait(0.25)
                end
            end
        end
    end
end
local AutoStealGroup = pZ:AddLeftGroupbox("Auto Steal", "swords")
local p3 = AutoStealGroup:AddTabbox()
local Tab = p3:AddTab("", "globe")
Tab:AddToggle("AutoStealAll", { Text = "Auto Steal All", Default = false })
Tab:AddDropdown("StealPriority", { Text = "Priority", Values = ym_20_2, Default = 1 })
local Tab = p3:AddTab("", "list-filter")
Tab:AddToggle("AutoStealSelected", { Text = "Auto Steal Selected", Default = false })
Tab:AddDropdown("StealZoneFilter", { Text = "Zone Filter", Values = ym_18, Multi = true, Default = ym_23_5 })
Tab:AddDropdown("StealRarityFilter", { Text = "Rarity Filter", Values = RarityOrder, Multi = true, Default = ym_8_4 })
Tab:AddDropdown("StealSpecificEggs", { Text = "Specific Eggs", Values = ym_2_3, Multi = true, Default = {}, Searchable = true })
AutoStealGroup:AddSlider("TpWalkSpeed", { Text = "TP Walk Speed", Default = 150, Min = 16, Max = 500, Rounding = 0 })
AutoStealGroup:AddSlider("StealDelay", { Text = "Steal Delay", Default = 0.05, Min = 0, Max = 3, Rounding = 2 })
local EggsGroup = pY:AddLeftGroupbox("Eggs", "egg")
EggsGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
EggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch", Default = false })
EggsGroup:AddSlider("EggActionDelay", { Text = "Action Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2 })
local SellGroup = pY:AddRightGroupbox("Sell", "badge-dollar-sign")
SellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
SellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = ym_9_3, Default = 1 })
SellGroup:AddDropdown("SellRarityFilter", { Text = "Sell Rarities", Values = RarityOrder, Multi = true, Default = ym_8_4 })
SellGroup:AddSlider("SellDelay", { Text = "Sell Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
local FishGroup = pX:AddLeftGroupbox("Fish", "fish")
FishGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
FishGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
FishGroup:AddSlider("FishActionDelay", { Text = "Action Delay", Default = 1, Min = 0.25, Max = 10, Rounding = 2 })
local TrailsGroup = pW:AddLeftGroupbox("Trails", "footprints")
if not oL and not oL and (pc or AutoStealGroup) and (oL or ps or (not oL or pc)) and ((pc and not oL or (not AutoStealGroup or not pc)) and (not pc and not pc or (not AutoStealGroup or oL))) and not (not oL and not oL and (pc or AutoStealGroup) and (oL or ps or (not oL or pc)) and ((pc and not oL or (not AutoStealGroup or not pc)) and (not pc and not pc or (not AutoStealGroup or oL)))) then
    ym_4:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    ym_4:AddDropdown("TrailBuyFilter", { Text = "Trail Rarities", Multi = true, Default = o4, Values = TrailsGroup })
    ym_4:AddSlider("TrailBuyDelay", { Text = "Buy Delay", Max = 15, Rounding = 2, Default = 2, Min = 0.5 })
    task.spawn(autoStealAllLoop)
else
    TrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    TrailsGroup:AddDropdown("TrailBuyFilter", { Text = "Trail Rarities", Values = o4, Multi = true, Default = ym_4 })
    TrailsGroup:AddSlider("TrailBuyDelay", { Text = "Buy Delay", Default = 2, Min = 0.5, Max = 15, Rounding = 2 })
    task.spawn(autoStealAllLoop)
end
for i, descendant in SpawnedEggs:GetDescendants() do
    local ym_23_6 = descendant:IsA("ProximityPrompt") and descendant.Name == "EggPrompt"
    if ym_23_6 then
        pe(descendant)
    end
end
SpawnedEggs.DescendantAdded:Connect(onDescendantAdded)
task.spawn(autoPlaceEggsLoop)
task.spawn(autoSellLoop)
task.spawn(autoEquipBestLoop)
task.spawn(autoBuyTrailsLoop)
ym_18 = function()
    local vV
    local vT
    local vP
    local vW
    local vU
    local vQ
    vP = nil
    vQ = nil
    vT = nil
    vU = nil
    vV = nil
    vW = nil
    local vR, Label, vX, vY, Label2, Label3
    vW = function(gD, gE)
        return string.format('<font color="%s">%s</font>', gE, gD)
    end
    vY = function(gG, gH, gI)
        return string.format("<b>%s</b> %s %s", gG, vW("-", "#5a6070"), vW(gH, gI))
    end
    vV = "#7fd47f"
    local v1 = "#8b93a3"
    vP = "#e05a5a"
    vT = "#e8a34d"
    local function v2()
        local u3 = hookfunction ~= nil
        local u4 = hookmetamethod ~= nil
        local u5 = getrawmetatable ~= nil
        local u6 = setrawmetatable ~= nil
        local u7 = getgc ~= nil
        local u8 = getgenv ~= nil
        local u9 = getreg ~= nil
        local va = getconnections ~= nil
        local vb = firesignal ~= nil
        local vc = getcallbackvalue ~= nil
        local vd = setclipboard ~= nil
        local ve = getcustomasset ~= nil
        local vf = getnamecallmethod ~= nil
        local vg = isexecutorclosure ~= nil
        local vh = fireproximityprompt ~= nil
        local vi = firetouchinterest ~= nil
        local vj = WebSocket ~= nil
        local vk = readfile ~= nil
        local vl = writefile ~= nil
        local vn = (request or http_request) ~= nil
        local vp = (debug and debug.getupvalues) ~= nil
        local vr = (debug and debug.setupvalue) ~= nil
        local vs = 0
        local vt = { u3, u4, u5, u6, u7, u8, u9, va, vb, vc, vd, ve, vf, vg, vh, vi, vj, vk, vl, vn, vp, vr }
        for i, v in ipairs(vt) do
            if v then
                vs += 1
            end
        end
        local u3_1 = vs / #vt
        if u3_1 >= 0.9 then
            return vW("Full Support", vV)
        elseif u3_1 >= 0.6 then
            return vW("Half Support", vT)
        else
            return vW("Low Support", vP)
        end
    end
    vQ = "Unknown"
    pcall(function()
        local vC_1
        local vB_1
        if identifyexecutor then
            vC_1, vB_1 = identifyexecutor()
            local vD = vC_1 ~= ""
            local vE = type(vC_1) == "string" and vD
            if vE then
                local vD_1 = type(vB_1) == "string" and vB_1 ~= "" and vC_1 .. " " .. vB_1
                vQ = vD_1 or vC_1
            end
        end
    end)
    local v3 = v2()
    vU = os.clock()
    vX = function()
        local vJ = math.floor(os.clock() - vU)
        if vJ < 60 then
            return vJ .. "s"
        elseif vJ < 3600 then
            return string.format("%dm %ds", vJ // 60, vJ % 60)
        else
            return string.format("%dh %dm", vJ // 3600, vJ % 3600 // 60)
        end
    end
    local UserGroup = oR.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(vY("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, vV), true)
    UserGroup:AddLabel(vY("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(vY("Executor", vQ .. "  " .. v3, vV), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(vY("Session", vX(), vT), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            po(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            po("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = oR.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(vY("Game", oW, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(vY("Players", "0/0", vV), true)
    vR = tostring(game.JobId)
    local v0 = #vR > 18 and string.sub(vR, 1, 18) .. "..."
    local v3_1 = v0 or vR
    SessionGroup:AddLabel(vY("Job", v3_1, v1), true)
    Label = SessionGroup:AddLabel(vY("Ping", "0 ms", vT), true)
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
            po(vR, "Copied Job ID")
        end
    })
    task.spawn(function()
        local vM_1
        local vL_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(vY("Session", vX(), vT))
            Label2:SetText(vY("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), vV))
            vL_1, vM_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local vL_2 = vL_1 and vM_1 .. " ms" or "n/a"
            Label:SetText(vY("Ping", vL_2, vT))
        end
    end)
    local SocialsGroup = oR.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = o7 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            po(oS, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            po(oP, "Copied website link")
        end
    })
end
local function ym_23_7()
    local connection
    local MovementGroup = oR.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = oR.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    pC.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local v5_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if v5_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    px.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local wg_1 = pE()
            if wg_1 then
                wg_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = o9.CurrentCamera
    pC.RenderStepped:Connect(function(ih)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local wi_1 = pE()
            if wi_1 then
                wi_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local wi_3 = oH()
            local wj = pE()
            if wi_3 and wj then
                wj.PlatformStand = true
                local wj_1 = Vector3.zero
                if px:IsKeyDown(Enum.KeyCode.W) then
                    wj_1 += CurrentCamera.CFrame.LookVector
                end
                if px:IsKeyDown(Enum.KeyCode.S) then
                    wj_1 -= CurrentCamera.CFrame.LookVector
                end
                if px:IsKeyDown(Enum.KeyCode.A) then
                    wj_1 -= CurrentCamera.CFrame.RightVector
                end
                if px:IsKeyDown(Enum.KeyCode.D) then
                    wj_1 += CurrentCamera.CFrame.RightVector
                end
                if px:IsKeyDown(Enum.KeyCode.Space) then
                    wj_1 += Vector3.new(0, 1, 0)
                end
                if px:IsKeyDown(Enum.KeyCode.LeftControl) then
                    wj_1 -= Vector3.new(0, 1, 0)
                end
                wi_3.AssemblyLinearVelocity = Vector3.zero
                if wj_1.Magnitude > 0 then
                    wi_3.CFrame = wi_3.CFrame + wj_1.Unit * Options.FlySpeed.Value * ih
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local wp = pE()
            if wp then
                wp.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local wr = pE()
            if wr then
                wr.WalkSpeed = 16
            end
        end
    end)
    local function iE(iF)
        local ww = if not iF:IsA("ProximityPrompt") then 1 else 0
        if ww == 1 then
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
            for i, descendant in ipairs(o9:GetDescendants()) do
                pcall(iE, descendant)
            end
            connection = o9.DescendantAdded:Connect(function(iN)
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
local function ym_20_3()
    local MenuGroup = oR.Settings:AddLeftGroupbox("Menu", "logs")
    local iU = 0
    local iV = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function iX()
        local CurrentCamera = o9.CurrentCamera
        if not CurrentCamera then
            return
        end
        pu:CaptureController()
        pu:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
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
            local wV = Toggles.AntiAfk.Value and tick() - iV >= 60
            if wV then
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
        local w6 = pcall(function()
            TeleportService:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not w6 then
            pcall(function()
                TeleportService:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
        local xb = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not xb then
            return
        end
        xb.ChildAdded:Connect(function(jU)
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
            pC:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
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
            for i, descendant in ipairs(o9:GetDescendants()) do
                pcall(ka, descendant)
            end
            connection = o9.DescendantAdded:Connect(function(kq)
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
    local ScriptGroup = oR.Settings:AddLeftGroupbox("Script", "terminal")
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
            pC:Set3dRenderingEnabled(true)
        end)
        if connection then
            connection:Disconnect()
        end
        local xq = oH()
        if xq then
            xq.Anchored = false
        end
        local xq_1 = pE()
        if xq_1 then
            xq_1.PlatformStand = false
            xq_1.WalkSpeed = 16
        end
    end)
end
local function ym_8_5(kI)
    local function kJ(kK, kL)
        local xt_1 = (kK == "Toggle" and Toggles or Options)[kL]
        local xs_2 = type(xt_1) == "table" and xt_1.Type == kK
        return xs_2 and xt_1 or nil
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
            local xA = kV.Value or ""
            return { idx = kU, type = "Input", text = tostring(xA) }
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
        local xD = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local xE = type(v) == "table" and type(v.Type) == "string" and not pA.Ignore[k]
                if xE then
                    local xE_1 = kT(k, v)
                    if xE_1 then
                        xD[#xD + 1] = xE_1
                    end
                end
            end
        end
        table.sort(xD, function(k6, k7)
            if k6.type ~= k7.type then
                return k6.type < k7.type
            end
            return k6.idx < k7.idx
        end)
        return { objects = xD }
    end
    local function k8(k9)
        local xX
        xX = nil
        local xY = type(k9) ~= "table" or type(k9.idx) ~= "string" or type(k9.type) ~= "string"
        local x1 = if xY then 1 else 0
        local x_ = 3237 * x1 + 1539 * (1 - x1)
        local x0 = 3517 * x1 + 3967 * (1 - x1)
        if not ((x_ * 1040 + x0 * 3234 + x_ * x0) % 16777213 == 9347774) then
            xY = pA.Ignore[k9.idx]
        end
        if xY then
            return false
        end
        xX = kJ(k9.type, k9.idx)
        if not xX then
            return false
        end
        local xY_1 = pcall(function()
            if k9.type == "Input" then
                if type(k9.text) ~= "string" then
                    return
                end
                xX:SetValue(k9.text)
            elseif k9.type == "ColorPicker" then
                xX:SetValueRGB(Color3.fromHex(k9.value), k9.transparency)
            elseif k9.type == "KeyPicker" then
                xX:SetValue({ k9.key, k9.mode, k9.modifiers })
                if k9.mode == "Toggle" and k9.toggled ~= nil then
                    xX.Toggled = k9.toggled
                    xX:Update()
                end
            else
                xX:SetValue(k9.value)
            end
        end)
        return xY_1
    end
    kI:AddDivider()
    kI:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    kI:AddButton("Export Config to Clipboard", function()
        local x3_1
        local x2_1
        x2_1, x3_1 = pcall(pq.JSONEncode, pq, kX())
        if not x2_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local x2_2 = setclipboard or toclipboard
        local x2_3 = type(x2_2) ~= "function" or not pcall(x2_2, x3_1)
        if x2_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    kI:AddButton("Import Config from Clipboard Text", function()
        local x8_1
        local x6 = Options.SaveManager_ImportSource.Value or ""
        local x6_1
        local x7 = tostring(x6):match("^%s*(.-)%s*$")
        if x7 == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        x6_1, x8_1 = pcall(pq.JSONDecode, pq, x7)
        local x7_1 = not x6_1 or type(x8_1) ~= "table" or type(x8_1.objects) ~= "table"
        if x7_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local x6_2 = 0
        for i, v in ipairs(x8_1.objects) do
            if k8(v) then
                x6_2 += 1
            end
        end
        if x6_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local x8_2 = x6_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(x6_2, x8_2), 6)
    end)
end
ym_18()
ym_23_7()
ym_20_3()
p_:SetLibrary(Library)
p_:SetFolder("OuroborosHub")
p_:SaveDefault("Evil Hello Kitty")
p_:ApplyToTab(oR.Settings)
p_:LoadDefault()
pA:SetLibrary(Library)
pA:IgnoreThemeSettings()
pA:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
pA:SetFolder("OuroborosHub/StealFishEggs")
local ym_9_4 = pA:BuildConfigSection(oR.Settings)
ym_8_5(ym_9_4)
pA:LoadAutoloadConfig()
if Toggles.HideUiOnStart.Value then
    Library:Toggle(false)
end
