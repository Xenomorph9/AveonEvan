local oA
local StatePacket
local oD
local oe
local WorldMap
local oh
local ol
local nZ
local Library
local Options
local oM
local n1
local ot
local n4
local n7
local Toggles
local oa
local oz
local nP
local nS
local oC
local od
local connection
local nV
local oF
local nY
local oI
local LaunchZone2
local oL
local on
local n3
local oO
local GameBalance
local ov
local nO
local n9
local oy
local nR
local oc
local nU
local of
local oH
local oi
local n_
local om
local oK
local oN
local n5
local oQ
local ou
local n8
local ox
local ob
local function fn8(N)
    return type(N) == "function"
end
local function fn14()
    local Train = oc.Enabled.Train
    for k in pairs(oc.Enabled) do
        oc.Enabled[k] = false
        local Gens = oc.Gens
        local sF = oc.Gens[k] or 0
        Gens[k] = sF + 1
    end
    if Train then
        nS()
    end
end
local function fn53(fb)
    local DiscordGroup = fb:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = n7,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn61()
    local TrainZoneId = oc.TrainZoneId
    if not n1(TrainZoneId) then
        return
    end
    local rU = od(TrainZoneId)
    if not rU then
        return
    end
    local rT_1 = n9()
    if not rT_1 then
        return
    end
    local rV = rU.Position + Vector3.new(0, 3, 0)
    if (rT_1.Position - rV).Magnitude > 6 then
        oC(rU.CFrame + Vector3.new(0, 3, 0))
    end
end
local function fn71()
    local ru = nP()
    if not ru then
        return nil
    end
    local LaunchZone = ru:FindFirstChild("LaunchZone")
    local ru_1 = LaunchZone and LaunchZone:IsA("BasePart")
    if ru_1 then
        return LaunchZone
    end
    return nil
end
local function fn186()
    gethui = oI
end
local function fn209()
    oi(oa.Main)
    local FarmGroup = oa.Main:AddLeftGroupbox("Farm", "dumbbell")
    FarmGroup:AddToggle("AutoTrain", { Text = "Auto Train", Default = false })
    local tj = oe[oc.TrainZoneId] or ov[1]
    FarmGroup:AddDropdown("TrainZone", { Text = "Train Zone", Values = ov, Default = tj })
    FarmGroup:AddToggle("AutoThrow", { Text = "Auto Throw", Default = false })
    local ProgressGroup = oa.Main:AddRightGroupbox("Progress", "sparkles")
    ProgressGroup:AddToggle("AutoBuyStones", { Text = "Auto Buy Affordable Stones", Default = false })
    ProgressGroup:AddToggle("AutoHatchEgg", { Text = "Auto Hatch Selected Egg", Default = false })
    ProgressGroup:AddDropdown("HatchEgg", { Text = "Egg", Values = oz, Default = oc.HatchEggId })
    ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    ProgressGroup:AddToggle("AutoEquipBestPet", { Text = "Auto Equip Best Pet", Default = false })
    Toggles.AutoTrain:OnChanged(function(gv)
        ol.SetTrain(gv)
    end)
    Options.TrainZone:OnChanged(function(gz)
        ol.SetTrainZone(gz)
    end)
    Toggles.AutoThrow:OnChanged(function(gB)
        ol.SetThrow(gB)
    end)
    Toggles.AutoBuyStones:OnChanged(function(gD)
        ol.SetBuyStones(gD)
    end)
    Toggles.AutoHatchEgg:OnChanged(function(gF)
        ol.SetHatchEgg(gF)
    end)
    Options.HatchEgg:OnChanged(function(gH)
        ol.SetHatchEggId(gH)
    end)
    Toggles.AutoRebirth:OnChanged(function(gJ)
        ol.SetRebirth(gJ)
    end)
    Toggles.AutoEquipBestPet:OnChanged(function(gL)
        ol.SetEquipBestPet(gL)
    end)
end
local function fn214()
    oi(oa.Player)
    local MovementGroup = oa.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = oa.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(iz)
        ol.SetWalkSpeedEnabled(iz)
    end)
    Options.WalkSpeed:OnChanged(function(iD)
        ol.SetWalkSpeedValue(iD)
    end)
    Toggles.InfJump:OnChanged(function(iF)
        ol.SetInfJump(iF)
    end)
    Toggles.NoClip:OnChanged(function(iH)
        ol.SetNoClip(iH)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(iJ)
        ol.SetInstantProximityPrompt(iJ)
    end)
    Toggles.Fly:OnChanged(function(iL)
        ol.SetFly(iL)
    end)
    Options.FlySpeed:OnChanged(function(iN)
        ol.SetFlySpeed(iN)
    end)
end
local function fn322(c6, c7, c8, c9)
    local Enabled = oc.Enabled
    local rO = c7 and true or false
    Enabled[c6] = rO
    if oc.Enabled[c6] then
        oH(c6, c8, c9)
    else
        local Gens = oc.Gens
        local rN_1 = oc.Gens[c6]
        local rS = if rN_1 then 1 else 0
        local rQ = 1971 * rS + 2534 * (1 - rS)
        local rR = 501 * rS + 2484 * (1 - rS)
        if not ((rQ * 720 + rR * 2602 + rQ * rR) % 16777213 == 3710193) then
            rN_1 = 0
        end
        Gens[c6] = rN_1 + 1
    end
end
local function fn330()
    if oc.Enabled.Train then
        return
    end
    local rX = oc.ThrowBusy or of() == "Throw"
    if rX then
        nY(6)
        return
    end
    if of() == "Practice" then
        nS()
        task.wait(0.45)
        local rX_1 = not oQ() or not oc.Enabled.Throw
        if rX_1 then
            return
        end
    end
    if of() ~= "Idle" then
        return
    end
    if os.clock() - oc.LastThrowAt < oO then
        return
    end
    local rX_2 = oy()
    if not rX_2 then
        return
    end
    local rY = n9()
    if not rY then
        return
    end
    if not LaunchZone2.Contains(oL.Character) then
        oC(rX_2.CFrame + Vector3.new(0, 4, 0))
        task.wait(0.3)
        local rX_3 = not oQ() or not oc.Enabled.Throw
        if rX_3 then
            return
        end
        if not LaunchZone2.Contains(oL.Character) then
            return
        end
    end
    local rX_4 = of() ~= "Idle" or oc.ThrowBusy
    if rX_4 then
        return
    end
    oc.LastThrowAt = os.clock()
    if not ou() then
        oc.ThrowHandler = nil
        return
    end
    local rX_5 = os.clock() + 1
    while true do
        local rY_1 = oQ() and oc.Enabled.Throw and os.clock() < rX_5
        if rY_1 then
            local rY_2 = oc.ThrowBusy or of() == "Throw"
            if rY_2 then
                break
            end
            task.wait(0.05)
            continue
        end
        break
    end
    local rX_6 = not oc.ThrowBusy and of() ~= "Throw"
    if rX_6 then
        return
    end
    nY(8)
    local rX_7 = oQ() and oc.Enabled.Throw
    if rX_7 then
        task.wait(oO)
    end
end
local function fn343(av, aw)
    local p9 = type(av) ~= "string" or av == ""
    local qe = if p9 then 1 else 0
    local qc = 1396 * qe + 3028 * (1 - qe)
    local qd = 1124 * qe + 3134 * (1 - qe)
    if not ((qc * 2777 + qd * 1702 + qc * qd) % 16777213 == 7358844) then
        p9 = oh[av]
    end
    if p9 then
        return
    end
    oh[av] = true
    local p9_1 = tonumber(aw) or ot[av]
    local qa = p9_1 or 0
    ot[av] = qa
    table.insert(oz, av)
end
local function fn374(a0)
    local qv = n9()
    if not qv then
        return false
    end
    qv.AssemblyLinearVelocity = Vector3.zero
    qv.AssemblyAngularVelocity = Vector3.zero
    qv.CFrame = a0
    return true
end
local function fn397()
    local sk = ox()
    if not sk then
        return
    end
    local sl = of()
    if sl ~= "Idle" and sl ~= "Practice" then
        return
    end
    local HatchEggId = oc.HatchEggId
    local sm_1 = HatchEggId == ""
    local sn_1 = type(HatchEggId) ~= "string" or sm_1
    if sn_1 then
        return
    end
    local sm_2 = n5(HatchEggId)
    local sn_2 = tonumber(sk.Wins) or 0
    if sm_2 > 0 and sn_2 < sm_2 then
        return
    end
    oc.HatchRequestId = oc.HatchRequestId + 1
    ob("HatchEgg", { EggId = HatchEggId, Count = 1, RequestId = oc.HatchRequestId })
end
local function fn405(eK)
    local sA = eK ~= ""
    local sB = type(eK) == "string" and sA
    if sB then
        oc.HatchEggId = eK
    end
end
local function fn406()
    local rh = ox()
    local ri = rh and type(rh.Activity) == "string"
    if ri then
        return rh.Activity
    end
    local attr = oL:GetAttribute("SkippingActivity")
    if type(attr) == "string" then
        return attr
    end
    return "Idle"
end
local function fn459()
    local qZ_1
    local qY_1
    if type(oc.ThrowHandler) == "function" then
        return oc.ThrowHandler
    elseif type(getconnections) ~= "function" then
        return nil
    else
        local qX = n8()
        if not qX then
            return nil
        end
        qY_1, qZ_1 = pcall(getconnections, qX.InputBegan)
        local qX_1 = not qY_1 or type(qZ_1) ~= "table"
        if qX_1 then
            return nil
        end
        for i, v in ipairs(qZ_1) do
            if type(v.Function) == "function" then
                oc.ThrowHandler = v.Function
                return oc.ThrowHandler
            end
        end
        return nil
    end
end
local function fn478()
    if of() == "Throw" then
        return
    end
    ob("PetEquipment", { Kind = "Best" })
end
local function fn481()
    local sp = ox()
    if not sp then
        return
    end
    local sq = tonumber(sp.Rebirths) or 0
    if sq >= oF then
        return
    end
    local sq_1 = tonumber(sp.Level) or 0
    local sq_2 = tonumber(sp.NextRebirthLevel) or 0
    if sq_2 <= 0 or sq_1 < sq_2 then
        return
    end
    local sp_2 = of()
    if sp_2 ~= "Idle" and sp_2 ~= "Practice" then
        return
    end
    ob("Rebirth", sq)
end
local function fn483()
    connection:Disconnect()
end
local function fn486()
    local q9 = n4()
    if not q9 then
        return false
    end
    local ra = pcall(q9, oc.FakeThrowInput)
    return ra
end
local function fn491()
    return nO.CoreGui
end
local function fn514(eA)
    om("Rebirth", eA, 2, oM)
end
local function fn521(aP, aQ)
    local qi_1
    local qh_1
    local qf = ot[aP]
    local qm = if qf then 1 else 0
    local qk = 1094 * qm + 997 * (1 - qm)
    local ql = 270 * qm + 3679 * (1 - qm)
    if not ((qk * 3813 + ql * 2455 + qk * ql) % 16777213 == 5129652) then
        qf = 0
    end
    local qg = ot[aQ]
    local qp = if qg then 1 else 0
    local qn = 3616 * qp + 2102 * (1 - qp)
    local qo = 1512 * qp + 1970 * (1 - qp)
    if not ((qn * 1235 + qo * 1045 + qn * qo) % 16777213 == 11513192) then
        qg = 0
    end
    qi_1, qh_1 = qf, qg
    if qi_1 == qh_1 then
        return aP < aQ
    end
    return qi_1 < qh_1
end
local function fn531(bd)
    local qA_1
    local qz_1
    if type(bd) ~= "table" then
        return
    end
    qz_1, qA_1 = pcall(StatePacket.Merge, oc.Player, bd)
    if not qz_1 or qA_1 == false then
        ob("Sync", nil)
        return
    end
    oc.Player = bd
    local qz_2 = oc.PendingBuyId and type(oc.Player.OwnedStones) == "table"
    if qz_2 then
        if oc.Player.OwnedStones[oc.PendingBuyId] == true then
            oc.PendingBuyId = nil
        end
    end
end
local function fn545(eD)
    om("EquipBestPet", eD, 3, nR)
end
local function fn585(bV)
    local rc = os.clock()
    local re = rc + (bV or 6)
    while true do
        local rc_1 = oQ() and oc.Enabled.Throw and os.clock() < re
        if not rc_1 then
            oc.ThrowBusy = false
            return false
        end
        local rc_2 = activity()
        if not oc.ThrowBusy and rc_2 ~= "Throw" then
            break
        end
        task.wait(0.1)
    end
    return true
end
local function fn592(e3, e4)
    local sO
    if nU(setclipboard) then
        sO = setclipboard
    elseif nU(toclipboard) then
        sO = toclipboard
    end
    if not sO then
        Library:Notify("Clipboard unavailable", 3)
        return
    end
    local sP = pcall(sO, e3)
    if sP then
        local sO_1 = e4 or "Copied"
        Library:Notify(sO_1, 3)
    else
        Library:Notify("Copy failed", 3)
    end
end
local function fn612()
    n3(n7, "Copied Discord invite")
end
local function onOnClientEvent(bk, bl)
    if bk == "State" then
        oA(bl)
    elseif bk == "ThrowStarted" then
        local qK_1 = type(bl) == "table" and bl.UserId == oL.UserId
        if qK_1 then
            oc.ThrowBusy = true
        end
    else
        local qK_2 = bk == "ThrowCancelled"
        local qL = bk == "ThrowFinished"
        local qQ = if qL then 1 else 0
        local qO = 2879 * qQ + 3301 * (1 - qQ)
        local qP = 959 * qQ + 2511 * (1 - qQ)
        if not ((qO * 2229 + qP * 1985 + qO * qP) % 16777213 == 11081867) then
            qL = qK_2
        end
        if qL or bk == "ThrowRejected" then
            if type(bl) == "table" then
                if bl.UserId == nil or bl.UserId == oL.UserId then
                    oc.ThrowBusy = false
                end
            else
                oc.ThrowBusy = false
            end
        end
    end
end
local function fn634(ep)
    om("Throw", ep, 0.2, nV)
    if not ep then
        oc.ThrowBusy = false
        oc.ThrowHandler = nil
    end
end
local function fn645()
    local r_ = ox()
    if not r_ then
        return
    end
    if oc.PendingBuyId then
        if os.clock() - oc.LastBuyAt < 2 then
            return
        end
        oc.PendingBuyId = nil
    end
    local r0 = (tonumber(r_.Wins))
    local r7 = if r0 then 1 else 0
    local r5 = 1618 * r7 + 1680 * (1 - r7)
    local r6 = 271 * r7 + 3361 * (1 - r7)
    if not ((r5 * 2081 + r6 * 2965 + r5 * r6) % 16777213 == 4609051) then
        r0 = 0
    end
    local r1 = r0
    local r0_1 = type(r_.OwnedStones) == "table" and r_.OwnedStones
    local r3 = r0_1 or {}
    local r0_2 = nil
    for i, v in ipairs(n_) do
        if r3[v.Id] ~= true and v.Price > 0 and r1 >= v.Price then
            r0_2 = v
        end
    end
    if r0_2 then
        oc.PendingBuyId = r0_2.Id
        oc.LastBuyAt = os.clock()
        ob("Buy", r0_2.Id)
        return
    end
    local r0_3 = nil
    for i, v in ipairs(n_) do
        if r3[v.Id] == true then
            r0_3 = v
        end
    end
    if r0_3 and r_.EquippedStone ~= r0_3.Id then
        ob("Equip", r0_3.Id)
    end
end
local function fn650(ex)
    om("HatchEgg", ex, 1.25, oK)
end
local function fn651(el)
    om("Train", el, 0.75, oN)
    if not el then
        nS()
    end
end
local function fn682(ap, aq)
    if ap.Multiplier == aq.Multiplier then
        return ap.Price < aq.Price
    end
    return ap.Multiplier < aq.Multiplier
end
local function fn690(et)
    om("BuyStones", et, 1.5, nZ)
    if not et then
        oc.PendingBuyId = nil
    end
end
local function fn698()
    local Character = oL.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChildOfClass("Humanoid")
end
local function fn721()
    return oc.Player
end
local function fn773(K)
    local p3 = typeof(cloneref) == "function" and typeof(K) == "Instance"
    if p3 then
        return cloneref(K)
    end
    return K
end
local function fn788()
    local PlayerGui = oL:FindFirstChild("PlayerGui")
    local qS = PlayerGui and PlayerGui:FindFirstChild("SkippingHUD")
    local qR_1 = qS
    if qS then
        qS = qR_1:FindFirstChild("HUD")
    end
    local qR_2 = qS
    if qS then
        qS = qR_2:FindFirstChild("Bottom")
    end
    local qR_3 = qS
    if qS then
        qS = qR_3:FindFirstChild("Progression")
    end
    local qR_4 = qS
    if qS then
        qS = qR_4:FindFirstChild("Throw")
    end
    local qR_5 = qS
    if qS then
        qS = qR_5:IsA("GuiButton")
    end
    if qS then
        return qR_5
    end
    return nil
end
local function fn829(cy)
    local rx = ox()
    if not rx then
        return false
    end
    local ry = GameBalance.Practice and GameBalance.Practice.ZoneRequiredRebirths
    local ry_1 = type(ry) == "table" and tonumber(ry[cy])
    local rz_1 = ry_1 or 0
    local rz_2 = tonumber(rx.Rebirths) or 0
    if rz_2 < rz_1 then
        return false
    end
    if cy == "TrainingZone_Golden" or cy == "TrainingZone_Hacker" then
        local OwnedTrainingZones = rx.OwnedTrainingZones
        local rx_1 = type(OwnedTrainingZones) == "table" and OwnedTrainingZones[cy] == true
        return rx_1
    end
    return true
end
local function fn878()
    local rl_1
    local rk_1
    rk_1, rl_1 = pcall(WorldMap.GetModel, oL)
    if rk_1 and rl_1 then
        return rl_1
    end
    local SkippingWorlds = oD:FindFirstChild("SkippingWorlds")
    if SkippingWorlds then
        return SkippingWorlds:FindFirstChild("World1")
    end
    return nil
end
local function fn890()
    local Character = oL.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local qq_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if qq_1 then
        return HumanoidRootPart
    end
    return nil
end
local function fn899(eG)
    local sy = on[eG]
    if type(sy) == "string" then
        oc.TrainZoneId = sy
    end
end
local function fn916(cj)
    local ro = nP()
    if not ro then
        return nil
    end
    local TrainingZones = ro:FindFirstChild("TrainingZones")
    local ro_1 = TrainingZones and TrainingZones:FindFirstChild(cj)
    local rp_1 = ro_1
    if ro_1 then
        ro_1 = rp_1:IsA("Model")
    end
    if not ro_1 then
        return nil
    end
    local TrainingStand = rp_1:FindFirstChild("TrainingStand")
    local rp_2 = TrainingStand and TrainingStand:IsA("BasePart")
    if rp_2 then
        return TrainingStand
    end
    return nil
end
local function fn951()
    if of() == "Practice" then
        ob("StopPractice", nil)
    end
end
local function fn954(cK)
    local rC = tonumber(ot[cK]) or 0
    return rC
end
local function fn971()
    return not ol.Unloaded
end
nO = nil
nP = nil
nR = nil
nS = nil
StatePacket = nil
nU = nil
nV = nil
WorldMap = nil
nY = nil
nZ = nil
n_ = nil
LaunchZone2 = nil
n1 = nil
n3 = nil
n4 = nil
n5 = nil
GameBalance = nil
n7 = nil
n8 = nil
n9 = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
of = nil
connection = nil
oh = nil
oi = nil
ol = nil
om = nil
on = nil
Options = nil
ot = nil
ou = nil
ov = nil
Toggles = nil
ox = nil
oy = nil
oz = nil
oA = nil
oC = nil
oD = nil
local nQ, nX, n2, oj, op, Request, oB
oF = nil
oH = nil
oI = nil
Library = nil
oK = nil
oL = nil
oM = nil
oN = nil
oO = nil
oQ = nil
local oE, oG, oP, oU, o0
local oX_1
local oW_1
local oT_6
local SkippingWorlds
if not game:IsLoaded() then
    game.Loaded:Wait()
end
nO, oL, oI = nil, nil, nil
local oR = 7
repeat
    local oS_1 = { "djujrodp", "fjrjww", "ejhcwa", "cftne", "kluscgguo", "qqfhcvg", "cghnpedwmeu" }
    local xj = oR
    local oT_1 = oS_1[xj % 7 + 1]
    if oT_1:len() <= oT_1:gsub("(.)", "%1%1", xj % 3 % 2 + 1):len() then
        nO = {}
        nO.Players = game:GetService("Players")
        nO.ReplicatedStorage = game:GetService("ReplicatedStorage")
        nO.RunService = game:GetService("RunService")
        nO.UserInputService = game:GetService("UserInputService")
        nO.VirtualUser = game:GetService("VirtualUser")
        nO.HttpService = game:GetService("HttpService")
        nO.TeleportService = game:GetService("TeleportService")
        nO.Workspace = game:GetService("Workspace")
        nO.Lighting = game:GetService("Lighting")
        nO.Stats = game:GetService("Stats")
        nO.CoreGui = game:GetService("CoreGui")
        oL = nO.Players.LocalPlayer
        oI = fn491
    else
        oL = {}
        oL.Players = game:GetService("Players")
        oL.ReplicatedStorage = game:GetService("ReplicatedStorage")
        oL.RunService = game:GetService("RunService")
        oL.UserInputService = game:GetService("UserInputService")
        oL.VirtualUser = game:GetService("VirtualUser")
        oL.HttpService = game:GetService("HttpService")
        oL.TeleportService = game:GetService("TeleportService")
        oL.Workspace = game:GetService("Workspace")
        oL.Lighting = game:GetService("Lighting")
        oL.Stats = game:GetService("Stats")
        oL.CoreGui = game:GetService("CoreGui")
        oI = oL.Players.LocalPlayer
        nO = fn491
    end
    oR = (oR + 4) % 8
until (oR * 3 + 2) % 8 == 3
if getgenv then
    getgenv().gethui = oI
end
ol, oc, oD, oU, Request, oW_1, nU, oQ = nil, nil, nil, nil, nil, nil, nil, nil
if (oW_1 and not nU or oD and not oU) and (oD and oD or (nU or oW_1)) and not ((oW_1 and not nU or oD and not oU) and (oD and oD or (nU or oW_1))) then
    pcall(fn186)
    oX_1 = function(i)
        local pU
        local pS
        local pT
        pS = nil
        pT = nil
        pU = nil
        local pV = i ~= ""
        local pW = type(i) == "string" and pV
        assert(pW, "Namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        pS = getgenv()
        assert(type(pS) == "table", "getgenv did not return a table")
        local pV_2 = pS[i]
        if pV_2 ~= nil then
            local pW_2 = type(pV_2) == "table" and type(pV_2.Unload) == "function"
            assert(pW_2, "Namespace is occupied")
            pV_2.Unload()
            assert(pS[i] == nil, "Previous instance did not release its namespace")
        end
        pT = {}
        pU = { State = {}, Unloaded = false }
        pU.Track = function(o)
            assert(type(o) == "function", "Cleanup must be callable")
            if pU.Unloaded then
                o()
            else
                table.insert(pT, o)
            end
            return o
        end
        pU.Unload = function()
            local pL_2
            local pK_2
            if pU.Unloaded then
                return
            end
            pU.Unloaded = true
            local pI = {}
            local pP = #pT
            local pO = -1
            while false and pP <= 1 or true and pP >= 1 do
                local pQ = pP
                local pJ_2 = table.remove(pT, pQ)
                pK_2, pL_2 = pcall(pJ_2)
                if not pK_2 then
                    table.insert(pI, tostring(pL_2))
                end
                pP += pO
            end
            table.clear(pU.State)
            if #pI > 0 then
                error("Cleanup incomplete: " .. table.concat(pI, "; "), 0)
            end
            if pS[i] == pU then
                pS[i] = nil
            end
        end
        pS[i] = pU
        return pU
    end
    oc = oX_1("OuroborosPlus1StoneSkipping")
    ol = oc.State
else
    pcall(fn186)
    local function oT_2(i)
        local pU
        local pS
        local pT
        pS = nil
        pT = nil
        pU = nil
        local pV = i ~= ""
        local pW = type(i) == "string" and pV
        assert(pW, "Namespace is required")
        assert(type(getgenv) == "function", "getgenv is unavailable")
        pS = getgenv()
        assert(type(pS) == "table", "getgenv did not return a table")
        local pV_1 = pS[i]
        if pV_1 ~= nil then
            local pW_1 = type(pV_1) == "table" and type(pV_1.Unload) == "function"
            assert(pW_1, "Namespace is occupied")
            pV_1.Unload()
            assert(pS[i] == nil, "Previous instance did not release its namespace")
        end
        pT = {}
        pU = { State = {}, Unloaded = false }
        pU.Track = function(o)
            assert(type(o) == "function", "Cleanup must be callable")
            if pU.Unloaded then
                o()
            else
                table.insert(pT, o)
            end
            return o
        end
        pU.Unload = function()
            local pL_1
            local pK_1
            if pU.Unloaded then
                return
            end
            pU.Unloaded = true
            local pI = {}
            local pP = #pT
            local pO = -1
            while false and pP <= 1 or true and pP >= 1 do
                local pQ = pP
                local pJ_1 = table.remove(pT, pQ)
                pK_1, pL_1 = pcall(pJ_1)
                if not pK_1 then
                    table.insert(pI, tostring(pL_1))
                end
                pP += pO
            end
            table.clear(pU.State)
            if #pI > 0 then
                error("Cleanup incomplete: " .. table.concat(pI, "; "), 0)
            end
            if pS[i] == pU then
                pS[i] = nil
            end
        end
        pS[i] = pU
        return pU
    end
    oX_1 = function(B, C)
        local p1 = type(B) == "table" and type(B.Track) == "function"
        assert(p1, "FeatureAPI required")
        local p1_1 = type(C) == "table" and type(C.OnUnload) == "function"
        assert(p1_1, "UI library required")
        assert(type(C.Unload) == "function", "UI unload required")
        B.Track(function()
            if not C.Unloaded then
                C:Unload()
            end
        end)
        C:OnUnload(function()
            B.Unload()
        end)
    end
    ol = oT_2("OuroborosPlus1StoneSkipping")
    oc = ol.State
end
nU = fn8
oQ = fn971
local oV = fn773(nO.ReplicatedStorage)
oD = fn773(nO.Workspace)
oU = oV:WaitForChild("SkippingNetwork", 30)
assert(oU, "SkippingNetwork missing")
Request = oU:WaitForChild("Request", 10)
local Event = oU:WaitForChild("Event", 10)
local oR_1 = Request and Event
GameBalance, LaunchZone2, WorldMap, StatePacket = nil, nil, nil, nil
assert(oR_1, "Skipping remotes missing")
local Shared = oV:WaitForChild("Shared", 30)
assert(Shared, "Shared folder missing")
GameBalance = require(Shared:WaitForChild("Config"):WaitForChild("GameBalance"))
LaunchZone2 = require(Shared:WaitForChild("Util"):WaitForChild("LaunchZone"))
WorldMap = require(Shared:WaitForChild("Util"):WaitForChild("WorldMap"))
StatePacket = require(Shared:WaitForChild("Util"):WaitForChild("StatePacket"))
local oR_2 = GameBalance.Throw and GameBalance.Throw.Cooldown
local oS_3 = tonumber(oR_2) or 0.8
oO = oS_3
local oR_3 = GameBalance.Rebirth and GameBalance.Rebirth.MaxRebirths
local oS_4 = tonumber(oR_3) or 1000000000
oF, ov, on, oe = nil, nil, nil, nil
oF = oS_4
local oT_4 = {
    { Id = "TrainingZone", Label = "Basic (1x)" },
    { Id = "TrainingZone_RareJade", Label = "Rare Jade (4x)" },
    { Id = "TrainingZone_EpicCrystal", Label = "Epic Crystal (10x)" },
    { Id = "TrainingZone_LegendaryCelestial", Label = "Legendary Celestial (20x)" },
    { Id = "TrainingZone_Golden", Label = "Golden (15x)" },
    { Id = "TrainingZone_Hacker", Label = "Hacker (50x)" }
}
ov = {}
on = {}
oe = {}
for i, v in ipairs(oT_4) do
    table.insert(ov, v.Label)
    on[v.Label] = v.Id
    oe[v.Id] = v.Label
end
n_ = {}
local oS_5 = GameBalance.Stones or {}
for i, v in ipairs(oS_5) do
    local oR_5 = type(v) == "table" and type(v.Id) == "string"
    if oR_5 then
        local insert = table.insert
        local Id = v.Id
        local oT_5 = v.Name or v.Id
        oU = tonumber(v.Price) or 0
        local oV_1 = tonumber(v.Multiplier) or 1
        insert(n_, { Id = Id, Name = oT_5, Price = oU, Multiplier = oV_1 })
    end
end
table.sort(n_, fn682)
ot = {}
oz = {}
oh, SkippingWorlds, oT_6 = nil, nil, nil
local oR_7 = 4
repeat
    oU = (oR_7 * 1 + 0) % 2 + 1
    if oU <= 1 then
        if oR_7 * 15958197 + 2 + 2 >= oR_7 * 15958197 + 2 + 2 + 3 then
            oT_6 = {}
            oh = fn343
        else
            oh = {}
            oT_6 = fn343
        end
        oR_7 = (oR_7 + 5) % 8
    else
        if oR_7 * 41505429 + 5 + 4 <= oR_7 * 41505429 + 5 + 4 + 1 then
            SkippingWorlds = oD:FindFirstChild("SkippingWorlds")
        else
            oD = SkippingWorlds:FindFirstChild("SkippingWorlds")
        end
        oR_7 = (oR_7 + 1) % 8
    end
until (oR_7 * 5 + 2) % 8 == 4
if SkippingWorlds then
    for i, child in ipairs(SkippingWorlds:GetChildren()) do
        local EggShop = child:FindFirstChild("EggShop")
        local oS_8 = EggShop and EggShop:FindFirstChild("Displays")
        if oS_8 then
            for i, child in ipairs(oS_8:GetChildren()) do
                local attr2 = child:GetAttribute("Wins")
                local attr = child:GetAttribute("Currency")
                oU = attr ~= "Robux"
                if attr2 ~= nil and oU then
                    oT_6(child.Name, attr2)
                end
            end
        end
    end
end
if type(GameBalance.EggInventory) == "table" then
    for i, v in ipairs(GameBalance.EggInventory) do
        local oR_11 = type(v) == "table" and type(v.Id) == "string"
        if oR_11 then
            if ot[v.Id] ~= nil then
                oT_6(v.Id, ot[v.Id])
            end
        end
    end
end
local oR_12 = 2
repeat
    local oS_10 = (vector.create((oR_12 * 3 + 9) % 11 + 1, (oR_12 * 11 + 8) % 13 + 1, (oR_12 * 10 + 1) % 17 + 1))
    local oT_7 = (vector.create((oR_12 * 7 + 9) % 11 + 1, (oR_12 * 9 + 11) % 13 + 1, (oR_12 * 8 + 17) % 17 + 1))
    local wE = vector.dot(oS_10, oT_7)
    if wE * wE <= vector.dot(oS_10, oS_10) * vector.dot(oT_7, oT_7) then
        table.sort(oz, fn521)
    else
        table.sort(oz, fn521)
    end
    oR_12 = (oR_12 + 1) % 4
until (oR_12 * 3 + 3) % 4 == 0
if #oz == 0 then
    local oR_13 = 15
    repeat
        if (oR_13 * 1 + 0) % 2 + 1 <= 1 then
            local w2 = bit32.rrotate(bit32.bxor(bit32.lrotate(oR_13, 4), string.byte(tostring(oR_13))), 14)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(w2, 967233611), 1922589186), (bit32.bxor(bit32.band(w2, 3327733684), 2843230843))), 1922589186), 2843230843) ~= w2 then
                ot.Common = 50
            else
                ot.Common = 50
            end
            oR_13 = (oR_13 + 7) % 16
        else
            local oS_12 = (vector.create((oR_13 * 4 + 3) % 11 + 1, (oR_13 * 4 + 10) % 13 + 1, (oR_13 * 10 + 16) % 17 + 1))
            local oT_8 = (vector.create((oR_13 * 4 + 2) % 11 + 1, (oR_13 * 4 + 12) % 13 + 1, (oR_13 * 11 + 12) % 17 + 1))
            oU = (vector.create((oR_13 * 7 + 7) % 11 + 1, (oR_13 * 11 + 7) % 13 + 1, (oR_13 * 1 + 4) % 17 + 1))
            local oV_3 = (vector.create((oR_13 * 3 + 2) % 5 + 1, (oR_13 * 5 + 2) % 7 + 1, (oR_13 * 1 + 3) % 9 + 1))
            if vector.dot(vector.cross(oS_12, (vector.cross(oT_8, oU))), oV_3) == vector.dot(oT_8 * vector.dot(oS_12, oU) - oU * vector.dot(oS_12, oT_8), oV_3) then
                oz = { "Common" }
            else
                oz = { "Common" }
            end
            oR_13 = (oR_13 + 7) % 16
        end
    until (oR_13 * 9 + 10) % 16 == 15
end
n9, oP, oC, ob, oA = nil, nil, nil, nil, nil
oc.Enabled = {
    Train = false,
    Throw = false,
    BuyStones = false,
    HatchEgg = false,
    Rebirth = false,
    EquipBestPet = false
}
oc.Gens = {}
oc.TrainZoneId = "TrainingZone"
oc.HatchEggId = oz[1]
oc.Player = nil
oc.HatchRequestId = 0
oc.LastThrowAt = 0
oc.LastBuyAt = 0
oc.PendingBuyId = nil
oc.ThrowBusy = false
oc.ThrowHandler = nil
oc.FakeThrowInput = {
    UserInputType = Enum.UserInputType.MouseButton1,
    UserInputState = Enum.UserInputState.Begin,
    KeyCode = Enum.KeyCode.Unknown
}
n9 = fn890
oP = fn698
oC = fn374
ob = function(a4, a5)
    if not oQ() then
        return false
    end
    local qx = pcall(function()
        Request:FireServer(a4, a5)
    end)
    return qx
end
oA = fn531
connection = nil
connection = Event.OnClientEvent:Connect(onOnClientEvent)
ol.Track(fn483)
ob("Sync", nil)
n7, n2, nX, nQ, Library, oG, oB, Toggles, Options, oa, oj, op, n8, n4, ou, nY, ox, of, nP, od, oy, n1, n5, nS, oH, om, oN, nV, nZ, oK, oM, nR, n3, oE, oi, o0, oU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
n8 = fn788
n4 = fn459
ou = fn486
nY = fn585
ox = fn721
of = fn406
nP = fn878
od = fn916
oy = fn71
n1 = fn829
n5 = fn954
if ((not n4 and oj and (not n4 or nV) or (not nV or not oj or not oj and not nS)) and ((nV or nS or oj and not n4) and (nS and not n4 or n4 and nV)) or (not nS and nS or (nV or oU)) and ((n4 or nS) and (not oj or oU)) and ((oU or nS) and (n4 and n4) or (not nV or not nV) and (nS or not nV))) and not ((not n4 and oj and (not n4 or nV) or (not nV or not oj or not oj and not nS)) and ((nV or nS or oj and not n4) and (nS and not n4 or n4 and nV)) or (not nS and nS or (nV or oU)) and ((n4 or nS) and (not oj or oU)) and ((oU or nS) and (n4 and n4) or (not nV or not nV) and (nS or not nV))) then
    oH = fn951
    nS = function(cQ, cR, cS)
        local rI
        local Gens = oc.Gens
        local rK = oc.Gens[cQ] or 0
        Gens[cQ] = rK + 1
        rI = oc.Gens[cQ]
        task.spawn(function()
            local rG_2
            while true do
                local rF = oQ() and oc.Enabled[cQ] and oc.Gens[cQ] == rI
                local rF_3
                if rF then
                    rF_3, rG_2 = pcall(cS)
                    if not rF_3 then
                        warn("[Ouroboros] " .. cQ .. ": " .. tostring(rG_2))
                    end
                    local rF_4 = not oQ() or not oc.Enabled[cQ] or oc.Gens[cQ] ~= rI
                    if rF_4 then
                        break
                    end
                    task.wait(cR)
                    continue
                end
                break
            end
        end)
    end
else
    nS = fn951
    oH = function(cQ, cR, cS)
        local rI
        local Gens = oc.Gens
        local rK = oc.Gens[cQ] or 0
        Gens[cQ] = rK + 1
        rI = oc.Gens[cQ]
        task.spawn(function()
            local rG_1
            while true do
                local rF = oQ() and oc.Enabled[cQ] and oc.Gens[cQ] == rI
                local rF_1
                if rF then
                    rF_1, rG_1 = pcall(cS)
                    if not rF_1 then
                        warn("[Ouroboros] " .. cQ .. ": " .. tostring(rG_1))
                    end
                    local rF_2 = not oQ() or not oc.Enabled[cQ] or oc.Gens[cQ] ~= rI
                    if rF_2 then
                        break
                    end
                    task.wait(cR)
                    continue
                end
                break
            end
        end)
    end
end
om = fn322
oN = fn61
nV = fn330
nZ = fn645
oK = fn397
oM = fn481
nR = fn478
ol.SetTrain = fn651
ol.SetThrow = fn634
ol.SetBuyStones = fn690
ol.SetHatchEgg = fn650
ol.SetRebirth = fn514
ol.SetEquipBestPet = fn545
ol.SetTrainZone = fn899
ol.SetHatchEggId = fn405
ol.Track(fn14)
n7 = "https://discord.gg/synapsex"
n2 = "https://rscripts.net/@Ouroboros"
nX = "https://ouroboros-hub-rbx.web.app/"
local o2 = "v0.2"
nQ = "+1 Stone Skipping"
local o1 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
if (not Options or not oE) and (not oE or Options) and ((o0 or o0) and "https://rscripts.net/@Ouroboros") or not ((not Options or not oE) and (not oE or Options) and ((o0 or o0) and "https://rscripts.net/@Ouroboros")) then
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
else
    o1 = loadstring(game:HttpGet(Library .. "Library.lua"))()
end
if (not n4 and oH or (oH or not n4)) and ((oH or oH) and (n4 or not oH)) or not ((not n4 and oH or (oH or not n4)) and ((oH or oH) and (n4 or not oH))) then
    oG = loadstring(game:HttpGet(o1 .. "addons/ThemeManager.lua"))()
    oB = loadstring(game:HttpGet(o1 .. "addons/SaveManager.lua"))()
else
    loadstring(game:HttpGet(oB .. "addons/ThemeManager.lua"))()
    oG = loadstring(game:HttpGet(oB .. "addons/SaveManager.lua"))()
end
Toggles, Options = Library.Toggles, Library.Options
oX_1(ol, Library)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = n7, Copyable = true }, "|", nQ, "|", o2 },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
oa = {}
oa.Info = Window:AddTab("Info", "info")
oa.Main = Window:AddTab("Main", "gamepad-2")
oa.Player = Window:AddTab("Player", "person-standing")
oa.Settings = Window:AddTab("Settings", "settings")
n3 = fn592
oE = fn612
oi = fn53
local function oS_13()
    local s4
    local s9
    local tb
    local s3
    s3 = nil
    s4 = nil
    s9 = nil
    tb = nil
    local s1, s2, Label2, s6, s7, Label3, Label
    tb = function(fg)
        return (tostring(fg):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    s9 = function(fi, fj)
        return string.format('<font color="%s">%s</font>', fj, tb(fi))
    end
    s2 = function(fm, fo, fp)
        return string.format("<b>%s</b> %s %s", fm, s9("-", "#5a6070"), s9(fo, fp))
    end
    local tc = "#8b93a3"
    s1 = "#7fd47f"
    s7 = "#e8a34d"
    s4 = "Unknown"
    pcall(function()
        local sS_1
        local sR_1
        if type(identifyexecutor) == "function" then
            sS_1, sR_1 = identifyexecutor()
            local sT = sS_1 ~= ""
            local sU = type(sS_1) == "string" and sT
            if sU then
                local sT_1 = type(sR_1) == "string" and sR_1 ~= "" and sS_1 .. " " .. sR_1
                s4 = sT_1 or sS_1
            end
        end
    end)
    s3 = os.clock()
    s6 = function()
        local sW = math.floor(os.clock() - s3)
        if sW < 60 then
            return sW .. "s"
        elseif sW < 3600 then
            return string.format("%dm %ds", sW // 60, sW % 60)
        else
            return string.format("%dh %dm", sW // 3600, sW % 3600 // 60)
        end
    end
    local UserGroup = oa.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = oL, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(s2("User", oL.DisplayName .. " @" .. oL.Name, s1), true)
    UserGroup:AddLabel(s2("UserId", tostring(oL.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(s2("Executor", s4, s1), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(s2("Session", s6(), s7), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            n3(oL.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            n3("https://www.roblox.com/users/" .. tostring(oL.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = oa.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = n7,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = oa.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(s2("Game", nQ, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(s2("Players", "0/0", s1), true)
    local td = tostring(game.JobId)
    local tf = #td > 18 and string.sub(td, 1, 18) .. "..."
    local td_1 = tf or td
    SessionGroup:AddLabel(s2("Job", td_1, tc), true)
    Label = SessionGroup:AddLabel(s2("Ping", "0 ms", s7), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            nO.TeleportService:Teleport(game.PlaceId, oL)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            n3(tostring(game.JobId), "Copied Job ID")
        end
    })
    local SocialsGroup = oa.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Copy Discord Invite", Func = oE })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts Link",
        Func = function()
            n3(n2, "Copied Rscripts link")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website Link",
        Func = function()
            n3(nX, "Copied website link")
        end
    })
    task.spawn(function()
        local s0 = false
        repeat
            local sY
            if oQ() then
                Label3:SetText(s2("Session", s6(), s7))
                Label2:SetText(s2("Players", tostring(#nO.Players:GetPlayers()) .. "/" .. tostring(nO.Players.MaxPlayers), s1))
                sY = 0
                pcall(function()
                    sY = math.floor(nO.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(s2("Ping", tostring(sY) .. " ms", s7))
                task.wait(1)
            else
                s0 = true
            end
        until s0
    end)
end
o0 = fn209
oj = {
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    WalkSnapshots = {},
    InfJump = false,
    InfJumpConn = nil,
    NoClip = false,
    NoClipSnapshots = {},
    NoClipConn = nil,
    Fly = false,
    FlySpeed = 60,
    FlyConn = nil,
    FlySnap = nil,
    InstantPP = false,
    InstantSnapshots = {},
    InstantConn = nil
}
local function oV_4()
    local connection, uM
    uM = function(gQ)
        if not gQ then
            return
        end
        if oj.WalkSnapshots[gQ] == nil then
            oj.WalkSnapshots[gQ] = gQ.WalkSpeed
        end
        gQ.WalkSpeed = oj.WalkSpeed
    end
    ol.SetWalkSpeedEnabled = function(gT)
        local tq = gT and true
        local tu = if tq then 1 else 0
        local ts = 8 * tu + 265 * (1 - tu)
        local tt = 3189 * tu + 1917 * (1 - tu)
        if not ((ts * 3685 + tt * 2633 + ts * tt) % 16777213 == 8451629) then
            tq = false
        end
        oj.WalkSpeedEnabled = tq
        local tp_1 = oP()
        if not tp_1 then
            return
        end
        if oj.WalkSpeedEnabled then
            uM(tp_1)
        elseif oj.WalkSnapshots[tp_1] ~= nil then
            tp_1.WalkSpeed = oj.WalkSnapshots[tp_1]
        end
    end
    ol.SetWalkSpeedValue = function(g_)
        oj.WalkSpeed = g_
        if oj.WalkSpeedEnabled then
            local tv = oP()
            if tv then
                tv.WalkSpeed = oj.WalkSpeed
            end
        end
    end
    ol.SetInfJump = function(g3)
        local tD = g3 and true or false
        oj.InfJump = tD
        if oj.InfJumpConn then
            oj.InfJumpConn:Disconnect()
            oj.InfJumpConn = nil
        end
        if not oj.InfJump then
            return
        end
        oj.InfJumpConn = nO.UserInputService.JumpRequest:Connect(function()
            local tA = not oQ() or not oj.InfJump
            if tA then
                return
            end
            local tA_1 = oP()
            if tA_1 then
                tA_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
    ol.SetNoClip = function(hf)
        local tZ
        local t0 = hf and true
        local t4 = if t0 then 1 else 0
        local t2 = 1286 * t4 + 3354 * (1 - t4)
        local t3 = 1743 * t4 + 3183 * (1 - t4)
        if not ((t2 * 3252 + t3 * 231 + t2 * t3) % 16777213 == 6826203) then
            t0 = false
        end
        oj.NoClip = t0
        if oj.NoClipConn then
            oj.NoClipConn:Disconnect()
            oj.NoClipConn = nil
        end
        local function t__1()
            for k, v in pairs(oj.NoClipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(oj.NoClipSnapshots)
        end
        if not oj.NoClip then
            t__1()
            return
        end
        tZ = function(hn)
            if not hn then
                return
            end
            for i, descendant in ipairs(hn:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    if oj.NoClipSnapshots[descendant] == nil then
                        oj.NoClipSnapshots[descendant] = descendant.CanCollide
                    end
                    descendant.CanCollide = false
                end
            end
        end
        tZ(oL.Character)
        oj.NoClipConn = nO.RunService.Stepped:Connect(function()
            local tX = not oQ() or not oj.NoClip
            if tX then
                return
            end
            tZ(oL.Character)
        end)
    end
    ol.SetFly = function(hA)
        local ua = hA and true
        local uf = if ua then 1 else 0
        local ud = 3057 * uf + 325 * (1 - uf)
        local ue = 3261 * uf + 1678 * (1 - uf)
        if not ((ud * 98 + ue * 225 + ud * ue) % 16777213 == 11002188) then
            ua = false
        end
        oj.Fly = ua
        if oj.FlyConn then
            oj.FlyConn:Disconnect()
            oj.FlyConn = nil
        end
        local t9_1 = oP()
        local ua_1 = n9()
        if not oj.Fly then
            if oj.FlySnap and t9_1 then
                t9_1.PlatformStand = oj.FlySnap.PlatformStand
            end
            oj.FlySnap = nil
            if ua_1 then
                ua_1.AssemblyLinearVelocity = Vector3.zero
            end
            return
        end
        if t9_1 then
            oj.FlySnap = { PlatformStand = t9_1.PlatformStand }
            t9_1.PlatformStand = true
        end
        oj.FlyConn = nO.RunService.RenderStepped:Connect(function()
            local t5 = not oQ() or not oj.Fly
            if t5 then
                return
            end
            if nO.UserInputService:GetFocusedTextBox() then
                return
            end
            local t5_1 = n9()
            local CurrentCamera = oD.CurrentCamera
            if not (t5_1 and CurrentCamera) then
                return
            end
            local t7_1 = Vector3.zero
            if nO.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                t7_1 += CurrentCamera.CFrame.LookVector
            end
            if nO.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                t7_1 -= CurrentCamera.CFrame.LookVector
            end
            if nO.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                t7_1 -= CurrentCamera.CFrame.RightVector
            end
            if nO.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                t7_1 += CurrentCamera.CFrame.RightVector
            end
            if nO.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                t7_1 += Vector3.yAxis
            end
            if nO.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                t7_1 -= Vector3.yAxis
            end
            if t7_1.Magnitude > 0 then
                t5_1.AssemblyLinearVelocity = t7_1.Unit * oj.FlySpeed
            else
                t5_1.AssemblyLinearVelocity = Vector3.zero
            end
            t5_1.CFrame = CFrame.new(t5_1.Position, t5_1.Position + CurrentCamera.CFrame.LookVector)
        end)
    end
    ol.SetFlySpeed = function(hU)
        oj.FlySpeed = hU
    end
    ol.SetInstantProximityPrompt = function(hW)
        local uw
        local uy = hW and true or false
        oj.InstantPP = uy
        if oj.InstantConn then
            oj.InstantConn:Disconnect()
            oj.InstantConn = nil
        end
        local function ux_1()
            for k, v in pairs(oj.InstantSnapshots) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(oj.InstantSnapshots)
        end
        if not oj.InstantPP then
            ux_1()
            return
        end
        uw = function(h3)
            if not h3:IsA("ProximityPrompt") then
                return
            end
            if oj.InstantSnapshots[h3] == nil then
                oj.InstantSnapshots[h3] = {
                    HoldDuration = h3.HoldDuration,
                    MaxActivationDistance = h3.MaxActivationDistance,
                    RequiresLineOfSight = h3.RequiresLineOfSight
                }
            end
            h3.HoldDuration = 0
            h3.MaxActivationDistance = 50
            h3.RequiresLineOfSight = false
        end
        for i, descendant in ipairs(oD:GetDescendants()) do
            uw(descendant)
        end
        oj.InstantConn = oD.DescendantAdded:Connect(function(h8)
            if oj.InstantPP then
                uw(h8)
            end
        end)
    end
    local function onCharacterAdded(ic)
        task.defer(function()
            local uK = if not oQ() then 1 else 0
            if uK == 1 then
                return
            end
            local Humanoid = ic:WaitForChild("Humanoid", 10)
            if not Humanoid then
                return
            end
            if oj.WalkSpeedEnabled then
                uM(Humanoid)
            end
            if oj.NoClip then
                ol.SetNoClip(true)
            end
            if oj.Fly then
                ol.SetFly(true)
            end
        end)
    end
    if oL.Character then
        onCharacterAdded(oL.Character)
    end
    connection = oL.CharacterAdded:Connect(onCharacterAdded)
    ol.Track(function()
        connection:Disconnect()
        ol.SetInfJump(false)
        ol.SetNoClip(false)
        ol.SetFly(false)
        ol.SetInstantProximityPrompt(false)
        ol.SetWalkSpeedEnabled(false)
    end)
end
oU = fn214
op = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    AfkCount = 0,
    ReconnectConns = {},
    FpsSnapshots = {},
    FpsConn = nil
}
local function oZ()
    local function iR()
        if not oD.CurrentCamera then
            return false
        end
        local uS_1 = not nU(nO.VirtualUser.CaptureController) or not nU(nO.VirtualUser.ClickButton2)
        if uS_1 then
            return false
        end
        local uS_2 = pcall(function()
            nO.VirtualUser:CaptureController()
            nO.VirtualUser:ClickButton2(Vector2.new())
        end)
        if uS_2 then
            op.AfkCount = op.AfkCount + 1
        end
        return uS_2
    end
    ol.SetAntiAfk = function(i3)
        local u2 = i3 and true or false
        op.AntiAfk = u2
        if op.AfkConn then
            op.AfkConn:Disconnect()
            op.AfkConn = nil
        end
        if op.AfkTask then
            pcall(task.cancel, op.AfkTask)
            op.AfkTask = nil
        end
        if not op.AntiAfk then
            return
        end
        op.AfkConn = oL.Idled:Connect(function()
            local uU = oQ() and op.AntiAfk
            if uU then
                iR()
            end
        end)
        op.AfkTask = task.spawn(function()
            local uW = os.clock()
            while true do
                local uX = oQ() and op.AntiAfk
                if uX then
                    task.wait(1)
                    local uX_1 = not oQ() or not op.AntiAfk
                    if uX_1 then
                        break
                    end
                    if os.clock() - uW >= 60 then
                        uW = os.clock()
                        iR()
                    end
                    continue
                end
                break
            end
        end)
    end
    ol.SetNoGameplayPaused = function(jl)
        local u5 = jl and true or false
        op.NoGameplayPaused = u5
    end
    ol.SetAutoReconnect = function(jn)
        local va = jn and true or false
        op.AutoReconnect = va
        for i, v in ipairs(op.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(op.ReconnectConns)
        if not op.AutoReconnect then
            return
        end
        table.insert(op.ReconnectConns, nO.TeleportService.TeleportInitFailed:Connect(function()
            local u7 = not oQ() or not op.AutoReconnect
            if u7 then
                return
            end
            task.wait(1)
            local u7_1 = oQ() and op.AutoReconnect
            if u7_1 then
                pcall(function()
                    nO.TeleportService:Teleport(game.PlaceId, oL)
                end)
            end
        end))
    end
    ol.SetDisable3D = function(jC)
        local vj = jC and true or false
        op.Disable3D = vj
        pcall(function()
            nO.RunService:Set3dRenderingEnabled(not op.Disable3D)
        end)
    end
    ol.SetFpsBoost = function(jH)
        local vC
        local vE = jH and true or false
        op.FpsBoost = vE
        if op.FpsConn then
            op.FpsConn:Disconnect()
            op.FpsConn = nil
        end
        local function vD_1()
            for k, v in pairs(op.FpsSnapshots) do
                local vq = k
                if vq and vq.Parent then
                    for k, v in pairs(v) do
                        local vw = k
                        local vy = v
                        pcall(function()
                            vq[vw] = vy
                        end)
                    end
                end
            end
            table.clear(op.FpsSnapshots)
        end
        if not op.FpsBoost then
            vD_1()
            return
        end
        vC = function(jU)
            if op.FpsSnapshots[jU] then
                return
            end
            local vz = jU:IsA("ParticleEmitter") or jU:IsA("Trail") or jU:IsA("Beam") or jU:IsA("Fire") or jU:IsA("Smoke") or jU:IsA("Sparkles")
            if vz then
                op.FpsSnapshots[jU] = { Enabled = jU.Enabled }
                jU.Enabled = false
            end
        end
        for i, descendant in ipairs(oD:GetDescendants()) do
            vC(descendant)
        end
        if op.FpsSnapshots[nO.Lighting] == nil then
            op.FpsSnapshots[nO.Lighting] = { GlobalShadows = nO.Lighting.GlobalShadows, FogEnd = nO.Lighting.FogEnd }
            nO.Lighting.GlobalShadows = false
        end
        op.FpsConn = oD.DescendantAdded:Connect(function(j0)
            if op.FpsBoost then
                vC(j0)
            end
        end)
    end
    ol.Track(function()
        ol.SetAntiAfk(false)
        ol.SetAutoReconnect(false)
        ol.SetDisable3D(false)
        ol.SetFpsBoost(false)
    end)
end
local function oT_9()
    oi(oa.Settings)
    local MenuGroup = oa.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = oa.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(kd)
        ol.SetAntiAfk(kd)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(kg)
        ol.SetNoGameplayPaused(kg)
    end)
    Toggles.AutoReconnect:OnChanged(function(ki)
        ol.SetAutoReconnect(ki)
    end)
    Toggles.Disable3DRendering:OnChanged(function(kk)
        ol.SetDisable3D(kk)
    end)
    Toggles.FPSBoost:OnChanged(function(km)
        ol.SetFpsBoost(km)
    end)
    oG:SetLibrary(Library)
    oG:SetFolder("MyScriptHub")
    oG:SaveDefault("Evil Hello Kitty")
    oG:ApplyToTab(oa.Settings)
    oB:SetLibrary(Library)
    oB:IgnoreThemeSettings()
    oB:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    oB:SetFolder("OuroborosHub/Plus1StoneSkipping")
    local v4_2 = oB:BuildConfigSection(oa.Settings)
    if v4_2 then
        v4_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
        v4_2:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local vR_1
                local vQ_1
                vQ_1, vR_1 = pcall(function()
                    if nU(oB.ExportConfig) then
                        return oB:ExportConfig()
                    end
                    error("ExportConfig unavailable")
                end)
                local vS = vQ_1 and type(vR_1) == "string"
                if vS then
                    n3(vR_1, "Copied config")
                else
                    Library:Notify("Export unavailable", 3)
                end
            end
        })
        v4_2:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local vY
                vY = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                if vY == "" then
                    Library:Notify("Paste a config first", 3)
                    return
                end
                local vZ_1 = pcall(function()
                    if nU(oB.ImportConfig) then
                        oB:ImportConfig(vY)
                    elseif nU(oB.LoadConfigFromJSON) then
                        oB:LoadConfigFromJSON(vY)
                    else
                        error("Import unavailable")
                    end
                end)
                if vZ_1 then
                    Options.SaveManager_ImportSource:SetValue("")
                    Library:Notify("Imported config", 3)
                else
                    Library:Notify("Import failed", 3)
                end
            end
        })
    end
    pcall(function()
        oG:LoadDefault()
    end)
    pcall(function()
        oB:LoadAutoloadConfig()
    end)
end
oV_4()
oZ()
oS_13()
o0()
oU()
oT_9()
ol.SetAntiAfk(Toggles.AntiAfk.Value)
ol.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
if Toggles.HideUIOnStart.Value then
    pcall(function()
        Library:Toggle(false)
    end)
end
Library:Notify("+1 Stone Skipping v0.2 loaded", 4)
