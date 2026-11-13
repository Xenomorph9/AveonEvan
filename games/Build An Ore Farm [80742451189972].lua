local fns = {}
local w5_1, w5_3, w5_11, w5_12, w5_13, w5_20, w5_22, w5_23, w5_25, w5_32, w5_33
local oU
local qi
local connection2
local p_
local o_
local pH
local po
local p5
local o5
local pN
local ResourcesData
local qb
local Client
local qh
local ph
local oZ
local o4
local oM
local pt
local API_TeleportToPlot
local pz
local LocalPlayer
local oY
local pm
local Workspace
local RebirthData
local pL
local oL
local ps
local p9
local pR
local oR
local pX
local oX
local pE
local p2
local o2
local pK
local oK
local VirtualUser
local pQ
local API_PickupPackages
local px
local pW
local connection
local p1
local p7
local o7
local pP
local oP
local qd
local pV
local API_Rebirth
local qj
local pj
local p0
local MutationsData
local pI
local p6
local o6
local oO
local qc
local pU
function fns.fn5(aV, aW)
    local ri = o2[aV]
    if ri == nil then
        return aW
    end
    return ri.Value
end
function fns.fn26(aG, aH, aI)
    return string.format("<b>%s</b> %s %s", aG, qc("-", "#5a6070"), qc(aH, aI))
end
function fns.worker2()
    while not ph.Unloaded do
        local wG = qj("InventoryDelay", 0.5)
        if po("AutoEquipBest") then
            pH()
        end
        if po("AutoPlacePickaxes") then
            qb()
        end
        local wK = if po("AutoTrashWeak") then 1 else 0
        if wK == 1 then
            pj()
        end
        task.wait(wG)
    end
end
function fns.onCopyJoinScript_JobID()
    local iE = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, pt)
    oY(iE, "Copied join script to clipboard")
end
function fns.fn71()
    local ry = o6()
    return ry and ry.Coins or 0
end
function fns.onUnload()
    ph:Unload()
end
function fns.fn175()
    local Character = LocalPlayer.Character
    local rI = Character and Character:FindFirstChildOfClass("Humanoid")
    return rI
end
function fns.fn205()
    local vs = oZ("PlaceCompareBy", "Rarity")
    local vt = qd(vs)
    if vt then
        p7(vt)
    end
end
function fns.fn210()
    local Character = LocalPlayer.Character
    local rF = Character and Character:FindFirstChild("HumanoidRootPart")
    return rF
end
function fns.antiAfkLoop()
    while not ph.Unloaded do
        task.wait(2)
        if o5.AntiAfk.Value then
            local wY = tick() - oP
            local wZ = tick() - oL
            if wY >= 300 and wZ >= 60 then
                pcall(p0)
            else
                if wY < 300 and wZ >= 300 then
                    pcall(p0)
                end
            end
        end
    end
end
function fns.fn235(im)
    local DiscordGroup = im:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = oM })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = oM })
end
function fns.fn260(cC)
    local Backpack = LocalPlayer:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            if child:IsA("Tool") then
                cC(child)
            end
        end
    end
    local Character = LocalPlayer.Character
    if Character then
        local Tool = Character:FindFirstChildOfClass("Tool")
        if Tool then
            cC(Tool)
        end
    end
end
function fns.fn283()
    local sV = {}
    local sW = qh()
    if not (sW and sW.plotFolder) then
        return sV
    end
    local Floors = sW.plotFolder:FindFirstChild("Floors")
    if not Floors then
        return sV
    end
    for i, child in ipairs(Floors:GetChildren()) do
        local Rings = child:FindFirstChild("Rings")
        if Rings then
            for i, child in ipairs(Rings:GetChildren()) do
                for i, child in ipairs(child:GetChildren()) do
                    local attr = child:GetAttribute("SlotId")
                    if attr then
                        table.insert(sV, child)
                    end
                end
            end
        end
    end
    return sV
end
function fns.fn284(cg, ch)
    local r5 = p2("RollTargets")
    local r6 = p2("RollRarities")
    local r7 = next(r5) ~= nil or next(r6) ~= nil
    if ch and not r7 then
        return false
    end
    local r7_2 = next(r5) and not r5[cg]
    if r7_2 then
        return false
    elseif next(r6) then
        if not r6[oR[cg]] then
            return false
        end
        return true
    else
        return true
    end
end
local function fn292()
    local tH = o6()
    local tI = o_()
    local tJ = not tI
    local tK = not tH
    local tO = if tK then 1 else 0
    local tM = 2281 * tO + 2781 * (1 - tO)
    local tN = 533 * tO + 1950 * (1 - tO)
    if not ((tM * 3468 + tN * 685 + tM * tN) % 16777213 == 9491386) then
        tK = tJ
    end
    if tK then
        return
    end
    local tJ_1 = tH.PlotData and tH.PlotData.StoredPackages
    local tH_1 = {}
    local tK_1 = tJ_1
    local tR = if tK_1 then 1 else 0
    local tP = 543 * tR + 74 * (1 - tR)
    local tQ = 3571 * tR + 81 * (1 - tR)
    if not ((tP * 2661 + tQ * 1824 + tP * tQ) % 16777213 == 9897480) then
        tK_1 = tH_1
    end
    local tH_2 = tK_1
    local tJ_2 = not tI.Carrying
    if tJ_2 ~= false then
        tJ_2 = #tH_2 > 0
    end
    if tJ_2 then
        pcall(function()
            API_PickupPackages:InvokeServer()
        end)
        task.wait(0.15)
        tI = o_()
    end
    if tI and tI.Carrying then
        pcall(function()
            oO:InvokeServer()
        end)
    end
end
local function fn293(b_, b0, b1)
    local rY = oU[b_] or 0
    return math.ceil(rY * MutationsData.getValueMultiplier(b0, b1))
end
local function fn322(bQ)
    return p5[oR[bQ] or bQ] or 0
end
local function fn329(bb)
    return next(p2(bb)) ~= nil
end
local function fn331()
    local to = qh()
    if not (to and to.plotFolder) then
        return nil
    end
    local RollStation = to.plotFolder:FindFirstChild("RollStation")
    if not RollStation then
        return nil
    end
    for i, descendant in ipairs(RollStation:GetDescendants()) do
        local to_1 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Roll"
        if to_1 then
            return descendant
        end
    end
    return nil
end
local function onTeleportPlot()
    pcall(function()
        API_TeleportToPlot:FireServer()
    end)
end
local function fn361(cR)
    if not cR then
        return nil
    end
    local attr = cR:GetAttribute("Name")
    local sC = attr ~= ""
    local sD = typeof(attr) == "string" and sC
    if sD then
        return attr
    end
    return nil
end
local function fn366()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    oL = tick()
end
local function fn379(b6, b7, b8, b9)
    local r0 = ResourcesData.getData(b6)
    if not r0 then
        return nil
    end
    local r1 = r0.BaseUpgradeCost or 0
    local r1_1 = r0.UpgradeCostMultiplier or 1
    local max = math.max
    local r3 = b7 or 1
    local r1_3 = r1 * r1_1 ^ max(r3 - 1, 0)
    return math.ceil(r1_3 * MutationsData.getValueMultiplier(b8, b9))
end
local function fn380(a_, a0)
    local rk = tonumber(oZ(a_, a0)) or a0
    return rk
end
local function worker()
    local vV_1
    while true do
        task.wait(1)
        if ph.Unloaded then
            break
        end
        local vU = math.floor(os.clock() - o4)
        if vU < 60 then
            vV_1 = vU .. "s"
        elseif vU < 3600 then
            vV_1 = string.format("%dm %ds", vU // 60, vU % 60)
        else
            vV_1 = string.format("%dh %dm", vU // 3600, vU % 3600 // 60)
        end
        pz:SetText(pV("Session time", vV_1, px))
    end
end
local function fn427()
    oY(pN, "Copied Discord invite to clipboard")
end
local function onTeleportToRoll()
    local vX = pE()
    if vX then
        ps(vX.Parent)
    end
end
local function fn442(aD, aE)
    return string.format('<font color="%s">%s</font>', aE, aD)
end
local function fn459()
    return Client.GetData("GlobalData")
end
local function fn491()
    local vN_1
    local vM_1
    if identifyexecutor then
        vN_1, vM_1 = identifyexecutor()
        local vO = vN_1 ~= ""
        local vP = type(vN_1) == "string" and vO
        if vP then
            local vO_1 = type(vM_1) == "string" and vM_1 ~= "" and vN_1 .. " " .. vM_1
            pX = vO_1 or vN_1
        end
    end
end
local function fn515(cK)
    local ss = not cK or not cK:IsA("Tool")
    if ss then
        return nil
    end
    local ss_1 = (cK:GetAttribute("RealName"))
    local sx = if ss_1 then 1 else 0
    local sv = 2183 * sx + 1303 * (1 - sx)
    local sw = 1025 * sx + 3719 * (1 - sx)
    if not ((sv * 1688 + sw * 2531 + sv * sw) % 16777213 == 8516754) then
        ss_1 = cK:GetAttribute("Name")
    end
    local st = ss_1
    local ss_2 = typeof(st) == "string" and oX[st]
    if ss_2 then
        return st
    end
    return nil
end
local function fn528(a3)
    local rm = oZ(a3, {})
    if typeof(rm) ~= "table" then
        return {}
    end
    local rn = {}
    for k, v in pairs(rm) do
        if v == true then
            rn[k] = true
        else
            local rm_1 = typeof(k) == "number" and typeof(v) == "string"
            if rm_1 then
                rn[v] = true
            end
        end
    end
    return rn
end
local function fn559(cp)
    if not cp or not oX[cp] then
        return false
    end
    local se_1 = oZ("PlaceMinResource", pP)
    local sf = oZ("PlaceCompareBy", "Rarity")
    if pL(cp, sf) < pL(se_1, sf) then
        return false
    end
    local se_2 = p2("PlaceTargets")
    local sf_1 = next(se_2) and not se_2[cp]
    if sf_1 then
        return false
    end
    return true
end
local function fn579(aw, ax)
    if setclipboard then
        setclipboard(aw)
    elseif toclipboard then
        toclipboard(aw)
    end
    ph:Notify(ax)
end
local function fn627()
    local tg = o6()
    return tg and tg.PlotData and tg.PlotData.Placements or {}
end
local function onOnClientEvent(cy)
    local sh = type(cy) == "table" and cy.Uuid
    if sh then
        p6[cy.Uuid] = cy
    end
end
local function fn644()
    return Client.GetData("TempData")
end
local function fn671(di)
    local sN = pI()
    if not sN or not di then
        return false
    end
    local Character2 = LocalPlayer.Character
    local sP_1 = Character2 and Character2:FindFirstChildOfClass("Tool")
    if sP_1 == di then
        return true
    end
    sN:EquipTool(di)
    local sN_1 = os.clock() + 1
    while true do
        if not (os.clock() < sN_1) then
            return false
        end
        local Character = LocalPlayer.Character
        local sP_2 = Character and Character:FindFirstChildOfClass("Tool")
        if sP_2 == di then
            break
        end
        task.wait(0.05)
    end
    return true
end
local function fn680(be)
    return p2("UpgradeTargets")[be] == true
end
local function fn689()
    local rB = Client.getCachedModule("PlotService")
    local rC = rB and rB.getPlot()
    return rC or nil
end
local function worker4()
    while not ph.Unloaded do
        local wy = qj("RollDelay", 0.7)
        if po("AutoSpin") then
            pm()
        end
        if po("AutoBuyAny") then
            p_(true)
        else
            local wz = po("AutoBuyDisplays") or po("AutoSpecificRoll")
            if wz then
                p_(false)
            end
        end
        task.wait(wy)
    end
end
local function fn698()
    local vH = o6()
    if not vH then
        return
    end
    local getPrice = RebirthData.getPrice
    local vJ = vH.Rebirths or 0
    local vK = getPrice(vJ)
    local vI_1 = vK
    if vI_1 then
        vI_1 = (vH.Coins or 0) >= vK
    end
    if vI_1 then
        local isMaxed = RebirthData.isMaxed
        local vK_1 = vH.Rebirths or 0
        vI_1 = not isMaxed(vK_1)
    end
    if vI_1 then
        pcall(function()
            API_Rebirth:InvokeServer()
        end)
    end
end
local function fn701(bB)
    local rK = pW()
    if not rK or not bB then
        return false
    elseif bB:IsA("Model") then
        local pivot = bB:GetPivot()
        rK.CFrame = pivot + Vector3.new(0, 4, 0)
        return true
    elseif bB:IsA("BasePart") then
        local CFrame = bB.CFrame
        rK.CFrame = CFrame + Vector3.new(0, 4, 0)
        return true
    else
        return false
    end
end
local function onInputChanged(jm)
    local UserInputType = jm.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        oP = tick()
    end
end
local function fn759(aP)
    if ph.Unloaded then
        return false
    end
    local rf = o5[aP]
    return rf ~= nil and rf.Value == true
end
local function onInputBegan()
    oP = tick()
end
local function onRscripts()
    oY(pK, "Copied Rscripts profile to clipboard")
end
local function fn776()
    local tT_1
    local tS_1
    if pU then
        return
    end
    pU = true
    tS_1, tT_1 = pcall(function()
        return oK:InvokeServer()
    end)
    local tU = tS_1 and type(tT_1) == "table" and #tT_1 > 0
    if tU then
        p1 = tT_1
        task.wait(1.2)
        pcall(function()
            qi:FireServer()
        end)
    else
        local tS_2 = pE()
        if tS_2 then
            ps(tS_2.Parent)
            task.wait(0.1)
            o7(tS_2)
            task.wait(1.5)
            pcall(function()
                qi:FireServer()
            end)
        end
    end
    pU = false
end
local function fn783()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn795(gK, gL)
    if gL then
        return gL:GetAttribute("Owned") == true
    end
    local uY = pR()
    local uZ = uY[gK]
    local uY_1 = type(uZ) == "table" and uZ.Owned == true
    return uY_1
end
local function fn805()
    local tx = {}
    local ty = qh()
    if not (ty and ty.plotFolder) then
        return tx
    end
    local RollStation = ty.plotFolder:FindFirstChild("RollStation")
    if not RollStation then
        return tx
    end
    for i, descendant in ipairs(RollStation:GetDescendants()) do
        local ty_1 = descendant:IsA("ProximityPrompt") and descendant.ActionText == "Take" and descendant.Enabled
        if ty_1 then
            table.insert(tx, descendant)
        end
    end
    return tx
end
local function fn853()
    local tk = o6()
    return tk and tk.PlotData and tk.PlotData.SlotUnlocks or {}
end
local function worker3()
    while not ph.Unloaded do
        local wE = qj("UpgradeDelay", 0.4)
        if po("AutoUpgrade") then
            pQ()
        end
        task.wait(wE)
    end
end
local function fn861(bV, bW)
    if not bV then
        return -1
    elseif bW == "Money" then
        return oX[bV] or 0
    else
        return p9(bV)
    end
end
oK = nil
oL = nil
oM = nil
oO = nil
oP = nil
API_PickupPackages = nil
oR = nil
oU = nil
oX = nil
oY = nil
oZ = nil
o_ = nil
MutationsData = nil
o2 = nil
RebirthData = nil
o4 = nil
o5 = nil
o6 = nil
o7 = nil
API_TeleportToPlot = nil
ph = nil
connection2 = nil
pj = nil
pm = nil
po = nil
ps = nil
pt = nil
ResourcesData = nil
local oN, oS, RewardsData, SlotsData, oW, o1, RefineryUpgradeData, o9, pb, RollSignData, API_ClaimReward, pe, FloorData, API_ClaimGroupReward, pk, ExpansionData, API_ClaimDailyReward, pp, API_BuyRefineryUpgrade, pr, pv, API_BuyRollSlot
px = nil
pz = nil
Client = nil
API_Rebirth = nil
connection = nil
pE = nil
pH = nil
pI = nil
pK = nil
pL = nil
pN = nil
pP = nil
pQ = nil
pR = nil
pU = nil
pV = nil
pW = nil
pX = nil
LocalPlayer = nil
p_ = nil
p0 = nil
p1 = nil
p2 = nil
Workspace = nil
p5 = nil
p6 = nil
p7 = nil
VirtualUser = nil
p9 = nil
qb = nil
qc = nil
qd = nil
qh = nil
qi = nil
qj = nil
local py, API_BuyLuck, API_ExpandFarm, pG, API_BuyFloor, API_UnlockSlot, API_DisposeResource, API_UpgradeResource, pT, API_RemoveResource, API_PlaceResource, API_BuyRollItem, qe, qf, qg
VirtualUser, Workspace, LocalPlayer, pN, pK, Client, ResourcesData, ExpansionData, FloorData, RollSignData, RefineryUpgradeData, RebirthData, MutationsData, SlotsData, RewardsData, API_PickupPackages, oO, oK, qi, qg, API_BuyRollItem, API_PlaceResource, API_RemoveResource, API_UpgradeResource, API_DisposeResource, API_UnlockSlot, API_BuyFloor, API_ExpandFarm, API_Rebirth, API_BuyLuck, API_BuyRollSlot, API_BuyRefineryUpgrade, API_ClaimDailyReward, API_ClaimGroupReward, API_ClaimReward, API_TeleportToPlot, oX, oU, oR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local w5_14 = game:GetService("Players")
local w5_29 = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = w5_14.LocalPlayer
local w5_19 = "Build An Ore Farm BETA"
pN = "https://discord.gg/ehKVq7pf7v"
pK = "https://rscripts.net/@Ouroboros"
local w5_6 = w5_29:WaitForChild("Events")
local w5_16 = w5_29:WaitForChild("Shared")
local w5_26 = w5_16:WaitForChild("Modules")
Client = require(w5_16:WaitForChild("Client"))
ResourcesData = require(w5_26:WaitForChild("ResourcesData"))
local w5_17 = require(w5_26:WaitForChild("RarityData"))
ExpansionData = require(w5_26:WaitForChild("ExpansionData"))
FloorData = require(w5_26:WaitForChild("FloorData"))
RollSignData = require(w5_26:WaitForChild("RollSignData"))
RefineryUpgradeData = require(w5_26:WaitForChild("RefineryUpgradeData"))
RebirthData = require(w5_26:WaitForChild("RebirthData"))
MutationsData = require(w5_26:WaitForChild("MutationsData"))
SlotsData = require(w5_26:WaitForChild("SlotsData"))
RewardsData = require(w5_26:WaitForChild("RewardsData"))
if (not RollSignData and not API_RemoveResource or (UserInputService or API_PickupPackages)) and ((not API_PickupPackages or API_PickupPackages) and (API_RemoveResource and RollSignData)) or ((not UserInputService or not API_PickupPackages) and (API_PickupPackages or API_PickupPackages) or (not UserInputService or UserInputService) and (not API_PickupPackages and not RollSignData)) or not ((not RollSignData and not API_RemoveResource or (UserInputService or API_PickupPackages)) and ((not API_PickupPackages or API_PickupPackages) and (API_RemoveResource and RollSignData)) or ((not UserInputService or not API_PickupPackages) and (API_PickupPackages or API_PickupPackages) or (not UserInputService or UserInputService) and (not API_PickupPackages and not RollSignData))) then
    API_PickupPackages = w5_6:WaitForChild("API_PickupPackages")
    oO = w5_6:WaitForChild("API_SellPackages")
    oK = w5_6:WaitForChild("API_Roll")
    qi = w5_6:WaitForChild("API_RollFinished")
    qg = w5_6:WaitForChild("API_TakeResource")
else
    oO = API_PickupPackages:WaitForChild("API_PickupPackages")
    qg = API_PickupPackages:WaitForChild("API_SellPackages")
    qi = API_PickupPackages:WaitForChild("API_Roll")
    oK = API_PickupPackages:WaitForChild("API_RollFinished")
    w5_6 = API_PickupPackages:WaitForChild("API_TakeResource")
end
API_BuyRollItem = w5_6:WaitForChild("API_BuyRollItem")
API_PlaceResource = w5_6:WaitForChild("API_PlaceResource")
API_RemoveResource = w5_6:WaitForChild("API_RemoveResource")
API_UpgradeResource = w5_6:WaitForChild("API_UpgradeResource")
API_DisposeResource = w5_6:WaitForChild("API_DisposeResource")
API_UnlockSlot = w5_6:WaitForChild("API_UnlockSlot")
API_BuyFloor = w5_6:WaitForChild("API_BuyFloor")
API_ExpandFarm = w5_6:WaitForChild("API_ExpandFarm")
API_Rebirth = w5_6:WaitForChild("API_Rebirth")
API_BuyLuck = w5_6:WaitForChild("API_BuyLuck")
API_BuyRollSlot = w5_6:WaitForChild("API_BuyRollSlot")
API_BuyRefineryUpgrade = w5_6:WaitForChild("API_BuyRefineryUpgrade")
API_ClaimDailyReward = w5_6:WaitForChild("API_ClaimDailyReward")
API_ClaimGroupReward = w5_6:WaitForChild("API_ClaimGroupReward")
API_ClaimReward = w5_6:WaitForChild("API_ClaimReward")
API_TeleportToPlot = w5_6:WaitForChild("API_TeleportToPlot")
local w5_8 = w5_6:WaitForChild("API_OfferRollPurchase")
local w5_30 = {}
oX = {}
oU = {}
oR = {}
w5_14 = ResourcesData.getAllData()
for k, v in pairs(w5_14) do
    w5_14 = type(v) == "table" and v.CanPlace
    if w5_14 then
        table.insert(w5_30, k)
        w5_14 = v.BaseCoinValue or 0
        oX[k] = w5_14
        w5_14 = v.BasePrice or 0
        oU[k] = w5_14
        w5_14 = v.Rarity or "Common"
        oR[k] = w5_14
    end
end
table.sort(w5_30)
p5 = {}
w5_14 = {}
for i, v in ipairs(w5_17.Order) do
    table.insert(w5_14, v)
    p5[v] = i
end
local w5_4 = w5_30[1] or "Limestone Deposit"
pP = w5_4
w5_4 = math.huge
for i, v in ipairs(w5_30) do
    w5_26 = p5[oR[v]] or math.huge
    w5_16 = w5_26
    if w5_16 < w5_4 then
        w5_4 = w5_16
        pP = v
    end
end
w5_33, w5_16, ph, w5_11, w5_20, o5, o2, w5_1, w5_12, px, w5_22, p6, p1, pU, w5_26, w5_32, oY, oM, qc, pV, po, oZ, qj, p2, py, pk, o6, o_, oS, qh, pW, pI, ps, o7, p9, pL, pv, o1, pT, pe, pG, pb, oN, qd, p7, pr, qe, pR, pE, o9, qf, pm, p_, pQ, oW, qb, pH, pj, pp, w5_17 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
w5_29 = 82
repeat
    w5_4 = (w5_29 * 22 + 4) % 27 + 1
    if w5_4 <= 14 then
        if w5_4 <= 7 then
            if w5_4 <= 4 then
                if w5_4 <= 2 then
                    if w5_4 <= 1 then
                        w5_23 = {
                            "otiqbtlh",
                            "lqjnzsfu",
                            "rhhzdsp",
                            "alyqsvgz",
                            "yjox",
                            "bqkzvlpqzt",
                            "gzsqlwkpki",
                            "ghsfsbdq",
                            "otttwuvpqi",
                            "rbbninvuh"
                        }
                        local yy = w5_29
                        w5_13 = w5_23[yy % 10 + 1]
                        if w5_13:len() >= w5_13:reverse():rep(yy % 3 + 2):len() then
                            qh = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        else
                            w5_16 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        end
                        w5_29 = (w5_29 + 43) % 108
                    else
                        w5_23 = (vector.create((w5_29 * 1 + 8) % 11 + 1, (w5_29 * 4 + 5) % 13 + 1, (w5_29 * 6 + 10) % 17 + 1))
                        w5_13 = (vector.create((w5_29 * 1 + 4) % 11 + 1, (w5_29 * 3 + 12) % 13 + 1, (w5_29 * 2 + 12) % 17 + 1))
                        w5_3 = (vector.create((w5_29 * 6 + 8) % 11 + 1, (w5_29 * 5 + 3) % 13 + 1, (w5_29 * 4 + 15) % 17 + 1))
                        w5_25 = (vector.create((w5_29 * 2 + 6) % 5 + 1, (w5_29 * 5 + 7) % 7 + 1, (w5_29 * 1 + 2) % 9 + 1))
                        if vector.dot(vector.cross(w5_23, (vector.cross(w5_13, w5_3))), w5_25) == vector.dot(w5_13 * vector.dot(w5_23, w5_3) - w5_3 * vector.dot(w5_23, w5_13), w5_25) + 5 then
                            w5_16 = loadstring(game:HttpGet(ph .. "Library.lua"))()
                        else
                            ph = loadstring(game:HttpGet(w5_16 .. "Library.lua"))()
                        end
                        w5_29 = (w5_29 + 43) % 108
                    end
                elseif w5_4 <= 3 then
                    w5_23 = {
                        "puykvdmmrh",
                        "oeqehedautu",
                        "kjfiqnz",
                        "qqioaiiix",
                        "szqckaoxzr",
                        "pqmcppbvlq",
                        "nwabhuiso",
                        "wcxo",
                        "nwqgadl",
                        "cqrctjrxpd",
                        "bfoaziay"
                    }
                    if w5_23[(w5_29 * 42 + 25) % 11 + 1] < w5_23[(w5_29 * 42 + 25) % 11 + 1] then
                        o2 = loadstring(game:HttpGet(w5_20 .. "addons/ThemeManager.lua"))()
                        o5 = loadstring(game:HttpGet(w5_20 .. "addons/SaveManager.lua"))()
                        ph = w5_11.Toggles
                        w5_16 = w5_11.Options
                    else
                        w5_11 = loadstring(game:HttpGet(w5_16 .. "addons/ThemeManager.lua"))()
                        w5_20 = loadstring(game:HttpGet(w5_16 .. "addons/SaveManager.lua"))()
                        o5 = ph.Toggles
                        o2 = ph.Options
                    end
                    w5_29 = (w5_29 + 16) % 108
                else
                    if (w5_29 * 2 + 6) * 4 % 3 == ((w5_29 * 2 + 6) * 4 + 3) % 3 then
                        oY = fn579
                        oM = fn427
                    else
                        oM = fn579
                        oY = fn427
                    end
                    w5_29 = (w5_29 + 97) % 108
                end
            elseif w5_4 <= 6 then
                if w5_4 <= 5 then
                    w5_23 = (vector.create((w5_29 * 1 + 1) % 11 + 1, (w5_29 * 9 + 13) % 13 + 1, (w5_29 * 8 + 3) % 17 + 1))
                    w5_13 = (vector.create((w5_29 * 7 + 9) % 11 + 1, (w5_29 * 2 + 10) % 13 + 1, (w5_29 * 15 + 11) % 17 + 1))
                    w5_3 = (vector.create((w5_29 * 1 + 2) % 5 + 1, (w5_29 * 4 + 6) % 7 + 1, (w5_29 * 1 + 4) % 9 + 1))
                    if math.abs((vector.angle(w5_23, w5_13, w5_3))) - math.abs((vector.angle(w5_13, w5_23, w5_3))) == 0 then
                        qc = fn442
                        pV = fns.fn26
                    else
                        pV = fn442
                        qc = fns.fn26
                    end
                    w5_29 = (w5_29 + 16) % 108
                else
                    w5_23 = (vector.create((w5_29 * 7 + 8) % 11 + 1, (w5_29 * 3 + 7) % 13 + 1, (w5_29 * 7 + 16) % 17 + 1))
                    w5_13 = (vector.create((w5_29 * 7 + 8) % 11 + 1, (w5_29 * 1 + 11) % 13 + 1, (w5_29 * 13 + 15) % 17 + 1))
                    local yA = vector.dot(w5_23, w5_13)
                    if yA * yA >= vector.dot(w5_23, w5_23) * vector.dot(w5_13, w5_13) + 1 then
                        po = "#7fd47f"
                    else
                        w5_1 = "#7fd47f"
                    end
                    w5_29 = (w5_29 + 43) % 108
                end
            else
                local yn = bit32.rrotate(bit32.bxor(bit32.lrotate(w5_29, 2), string.byte(tostring(p7))), 18)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yn, 4021021179), 4093398218), (bit32.bxor(bit32.band(yn, 273946116), 2483584337))), 4093398218), 2483584337) ~= yn then
                    px = "#6ec1ff"
                    w5_12 = "#e8a34d"
                else
                    w5_12 = "#6ec1ff"
                    px = "#e8a34d"
                end
                w5_29 = (w5_29 + 43) % 108
            end
        elseif w5_4 <= 11 then
            if w5_4 <= 9 then
                if w5_4 <= 8 then
                    if (pv and qe and (pI and pI) and (pI and not pI or (not pv or qe)) or (not qe or not pI) and (not pI or qe) and ((pI or qe) and (not qe and qe))) and (pv and not pI or (not pv or not pv) or (not qe or qe) and (not pv or pI) or (not pI and not pI or (pI or qe)) and (not qe and qe or (pI or qe))) or not ((pv and qe and (pI and pI) and (pI and not pI or (not pv or qe)) or (not qe or not pI) and (not pI or qe) and ((pI or qe) and (not qe and qe))) and (pv and not pI or (not pv or not pv) or (not qe or qe) and (not pv or pI) or (not pI and not pI or (pI or qe)) and (not qe and qe or (pI or qe)))) then
                        w5_22 = "#8b93a3"
                        po = fn759
                        oZ = fns.fn5
                    else
                        oZ = "#8b93a3"
                        w5_22 = fn759
                        po = fns.fn5
                    end
                    w5_29 = (w5_29 + 70) % 108
                else
                    if (w5_29 * 2 + 8) * 4 % 3 == ((w5_29 * 2 + 8) * 4 + 1) % 3 then
                        p2 = fn380
                        qj = fn528
                    else
                        qj = fn380
                        p2 = fn528
                    end
                    w5_29 = (w5_29 + 70) % 108
                end
            elseif w5_4 <= 10 then
                w5_23 = {
                    "jayaujenmstv",
                    "lugaolpyddm",
                    "bdyq",
                    "xtikxel",
                    "vezwcyw",
                    "xbgy",
                    "zfz",
                    "bugvye",
                    "yqhjlyabak",
                    "szapwoqhoi",
                    "jnoizqovml"
                }
                if w5_23[(w5_29 * 1 + 45) % 11 + 1] <= w5_23[(w5_29 * 1 + 45) % 11 + 1] then
                    py = fn329
                    pk = fn680
                else
                    pk = fn329
                    py = fn680
                end
                w5_29 = (w5_29 + 70) % 108
            else
                if w5_29 * 55156519 + 8 + 3 <= w5_29 * 55156519 + 8 + 3 + 4 then
                    o6 = fn459
                else
                    pH = fn459
                end
                w5_29 = (w5_29 + 16) % 108
            end
        elseif w5_4 <= 13 then
            if w5_4 <= 12 then
                local yk = bit32.rrotate(bit32.bxor(bit32.lrotate(w5_29, 21), 35), 31)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(yk, 222826917), 250265978), (bit32.bxor(bit32.band(yk, 4072140378), 3132382119))), 250265978), 3132382119) ~= yk then
                    pW = fn644
                    o_ = fns.fn71
                    oS = fn689
                    qh = fns.fn210
                else
                    o_ = fn644
                    oS = fns.fn71
                    qh = fn689
                    pW = fns.fn210
                end
                w5_29 = (w5_29 + 70) % 108
            else
                w5_23 = {
                    "stfoqlebfdh",
                    "gsipyjtk",
                    "crzdvd",
                    "huudbtubwo",
                    "bnewjm",
                    "wlaqpevfkzo",
                    "kyshitoqna",
                    "yloivnsudvi",
                    "cqcqa",
                    "yqmxm",
                    "qyaqban",
                    "mfifvlcn"
                }
                local x2 = w5_29
                w5_13 = w5_23[x2 % 12 + 1]
                if w5_13:len() >= w5_13:reverse():rep(x2 % 3 + 2):len() then
                    p9 = fns.fn175
                    pI = fn701
                    ps = function(bG)
                        local Enabled
                        local HoldDuration
                        HoldDuration = nil
                        Enabled = nil
                        if not bG or not bG.Parent then
                            return false
                        end
                        HoldDuration = bG.HoldDuration
                        Enabled = bG.Enabled
                        local rR_2 = pcall(function()
                            bG.Enabled = true
                            bG.HoldDuration = 0
                            if fireproximityprompt then
                                fireproximityprompt(bG)
                            else
                                bG:InputHoldBegin()
                                bG:InputHoldEnd()
                            end
                        end)
                        pcall(function()
                            bG.HoldDuration = HoldDuration
                            bG.Enabled = Enabled
                        end)
                        return rR_2
                    end
                    o7 = fn322
                else
                    pI = fns.fn175
                    ps = fn701
                    o7 = function(bG)
                        local Enabled
                        local HoldDuration
                        HoldDuration = nil
                        Enabled = nil
                        if not bG or not bG.Parent then
                            return false
                        end
                        HoldDuration = bG.HoldDuration
                        Enabled = bG.Enabled
                        local rR_1 = pcall(function()
                            bG.Enabled = true
                            bG.HoldDuration = 0
                            if fireproximityprompt then
                                fireproximityprompt(bG)
                            else
                                bG:InputHoldBegin()
                                bG:InputHoldEnd()
                            end
                        end)
                        pcall(function()
                            bG.HoldDuration = HoldDuration
                            bG.Enabled = Enabled
                        end)
                        return rR_1
                    end
                    p9 = fn322
                end
                w5_29 = (w5_29 + 43) % 108
            end
        else
            w5_23 = (vector.create((w5_29 * 6 + 4) % 11 + 1, (w5_29 * 11 + 12) % 13 + 1, (w5_29 * 6 + 11) % 17 + 1))
            w5_13 = (vector.create((w5_29 * 5 + 3) % 11 + 1, (w5_29 * 7 + 2) % 13 + 1, (w5_29 * 13 + 12) % 17 + 1))
            local ye = vector.dot(w5_23, w5_13)
            if ye * ye <= vector.dot(w5_23, w5_23) * vector.dot(w5_13, w5_13) then
                pL = fn861
            else
                qh = fn861
            end
            w5_29 = (w5_29 + 43) % 108
        end
    elseif w5_4 <= 21 then
        if w5_4 <= 18 then
            if w5_4 <= 16 then
                if w5_4 <= 15 then
                    if ((pk and not pk or (ps or pI)) and (o_ or not pI or (not pk or not pI)) or (not o_ and pI or pk and not ps or (not o_ or not pI or o_ and not ps))) and ((not ps or o_ or pk and ps or pk and pk and (pI and o_)) and (not pI and o_ and (not o_ and pk) or (ps or o_ or (o_ or o_)))) and not (((pk and not pk or (ps or pI)) and (o_ or not pI or (not pk or not pI)) or (not o_ and pI or pk and not ps or (not o_ or not pI or o_ and not ps))) and ((not ps or o_ or pk and ps or pk and pk and (pI and o_)) and (not pI and o_ and (not o_ and pk) or (ps or o_ or (o_ or o_))))) then
                        p6 = fn293
                        pv = fn379
                        pe = fns.fn284
                        pT = fn559
                        o1 = {}
                    else
                        pv = fn293
                        o1 = fn379
                        pT = fns.fn284
                        pe = fn559
                        p6 = {}
                    end
                    w5_29 = (w5_29 + 97) % 108
                else
                    w5_23 = (vector.create((w5_29 * 1 + 8) % 11 + 1, (w5_29 * 9 + 8) % 13 + 1, (w5_29 * 5 + 17) % 17 + 1))
                    local xB = vector.floor(w5_23) + vector.ceil(w5_23 * -1)
                    if vector.dot(xB, xB) == 0 then
                        p1 = {}
                        pU = false
                    else
                        pU = {}
                        p1 = false
                    end
                    w5_29 = (w5_29 + 97) % 108
                end
            elseif w5_4 <= 17 then
                w5_23 = (vector.create((w5_29 * 2 + 4) % 11 + 1, (w5_29 * 2 + 12) % 13 + 1, (w5_29 * 7 + 7) % 17 + 1))
                w5_13 = (vector.create((w5_29 * 7 + 8) % 11 + 1, (w5_29 * 3 + 13) % 13 + 1, (w5_29 * 3 + 10) % 17 + 1))
                local yc = vector.cross(w5_23, w5_13)
                local yd = vector.dot(w5_23, w5_13)
                if vector.dot(yc, yc) + yd * yd == vector.dot(w5_23, w5_23) * vector.dot(w5_13, w5_13) + 2 then
                    pb.OnClientEvent:Connect(onOnClientEvent)
                    w5_8 = fns.fn260
                    qd = fn515
                    p7 = fn361
                    pG = function(cU, cV)
                        local cX = -1
                        local cW
                        local cY = -1
                        pG(function(c_)
                            local sF = pb(c_)
                            if not sF then
                                return
                            end
                            local sG = cV and not cV(sF)
                            if sG then
                                return
                            end
                            local sG_2 = pL(sF, cU)
                            local sH = oX[sF]
                            local sM = if sH then 1 else 0
                            local sK = 1478 * sM + 1705 * (1 - sM)
                            local sL = 1951 * sM + 3772 * (1 - sM)
                            if not ((sK * 3478 + sL * 3556 + sK * sL) % 16777213 == 14961818) then
                                sH = 0
                            end
                            local sF_2 = sH
                            if sG_2 > cX or sG_2 == cX and sF_2 > cY then
                                cX = sG_2
                                cY = sF_2
                                cW = c_
                            end
                        end)
                        return cW, cX
                    end
                    oN = fn671
                else
                    w5_8.OnClientEvent:Connect(onOnClientEvent)
                    pG = fns.fn260
                    pb = fn515
                    oN = fn361
                    qd = function(cU, cV)
                        local cX = -1
                        local cW
                        local cY = -1
                        pG(function(c_)
                            local sF = pb(c_)
                            if not sF then
                                return
                            end
                            local sG = cV and not cV(sF)
                            if sG then
                                return
                            end
                            local sG_1 = pL(sF, cU)
                            local sH = oX[sF]
                            local sM = if sH then 1 else 0
                            local sK = 1478 * sM + 1705 * (1 - sM)
                            local sL = 1951 * sM + 3772 * (1 - sM)
                            if not ((sK * 3478 + sL * 3556 + sK * sL) % 16777213 == 14961818) then
                                sH = 0
                            end
                            local sF_1 = sH
                            if sG_1 > cX or sG_1 == cX and sF_1 > cY then
                                cX = sG_1
                                cY = sF_1
                                cW = c_
                            end
                        end)
                        return cW, cX
                    end
                    p7 = fn671
                end
                w5_29 = (w5_29 + 70) % 108
            else
                w5_23 = {
                    "tyhl",
                    "hggogbuxmfm",
                    "bblgsixc",
                    "pek",
                    "krrjvwk",
                    "dgvjyc",
                    "mubdr",
                    "ofowbcfuizo",
                    "ppm",
                    "acgjjopu"
                }
                if w5_23[(w5_29 * 56 + 103) % 10 + 1] <= w5_23[(w5_29 * 56 + 103) % 10 + 1] then
                    pr = fns.fn283
                    qe = fn627
                else
                    qe = fns.fn283
                    pr = fn627
                end
                w5_29 = (w5_29 + 43) % 108
            end
        elseif w5_4 <= 20 then
            if w5_4 <= 19 then
                w5_23 = {
                    "myqt",
                    "mesd",
                    "ftlyphs",
                    "xieafn",
                    "estfmwsoubg",
                    "gpusrjl",
                    "vmel",
                    "alqhbiv",
                    "fumgvxktnns",
                    "vmrrfopan"
                }
                if w5_23[(w5_29 * 13 + 74) % 10 + 1] < w5_23[(w5_29 * 13 + 74) % 10 + 1] then
                    o9 = fn853
                    qf = fn331
                    pR = fn805
                    pm = fn292
                    pE = fn776
                else
                    pR = fn853
                    pE = fn331
                    o9 = fn805
                    qf = fn292
                    pm = fn776
                end
                w5_29 = (w5_29 + 70) % 108
            else
                local xS = bit32.rrotate(bit32.bxor(bit32.lrotate(w5_29, 6), string.byte(tostring(p2))), 19)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xS, 682438035), 3854717675), (bit32.bxor(bit32.band(xS, 3612529260), 33316234))), 3854717675), 33316234) == xS then
                    p_ = function(ex)
                        local t_ = oS()
                        local t0 = po("AutoSkipUnaffordable")
                        local t1 = po("AutoSpecificRoll") or po("AutoBuyDisplays")
                        for k, v in pairs(p6) do
                            local ua = k
                            if ph.Unloaded then
                                break
                            end
                            local t3_10 = v.Name or v.Resource or v.name
                            if typeof(t3_10) ~= "string" then
                                t3_10 = nil
                            end
                            local t1_11 = ex
                            if not t1_11 then
                                local t4_8 = t3_10 and pT(t3_10, t1)
                                t1_11 = t4_8
                            end
                            if t1_11 then
                                local t1_12 = t3_10
                                if t1_12 then
                                    local t4_10 = v.Primary or v.primary
                                    local t5 = v.Secondary or v.secondary
                                    t1_12 = pv(t3_10, t4_10, t5)
                                end
                                local t1_13 = t1_12 or 0
                                if t1_13 <= t_ or not t0 then
                                    local t3_13 = pcall(function()
                                        return API_BuyRollItem:InvokeServer(ua)
                                    end)
                                    if t3_13 then
                                        p6[ua] = nil
                                        t_ = math.max(0, t_ - t1_13)
                                        task.wait(0.1)
                                    end
                                end
                            end
                        end
                        for i, v in ipairs(p1) do
                            if ph.Unloaded then
                                break
                            else
                                local name = v.name
                                local uuid = v.uuid
                                local t3_14 = typeof(name) == "string" and typeof(uuid) == "string"
                                if t3_14 then
                                    local t3_15 = ex or pT(name, t1)
                                    if t3_15 then
                                        local t3_16 = pv(name, v.primary, v.secondary)
                                        if t3_16 <= t_ or not t0 then
                                            local t1_16 = pcall(function()
                                                return qg:InvokeServer(uuid)
                                            end)
                                            if t1_16 then
                                                t_ = math.max(0, t_ - t3_16)
                                                task.wait(0.1)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        for i, v in ipairs(o9()) do
                            if ph.Unloaded then
                                break
                            end
                            local ObjectText = v.ObjectText
                            local t3_17 = ex
                            if not t3_17 then
                                local t4_13 = typeof(ObjectText) == "string" and pT(ObjectText, t1)
                                t3_17 = t4_13
                            end
                            if t3_17 then
                                local t3_18 = pv(ObjectText, nil, nil)
                                if t3_18 <= t_ or not t0 then
                                    ps(v.Parent)
                                    task.wait(0.08)
                                    if o7(v) then
                                        t_ = math.max(0, t_ - t3_18)
                                        task.wait(0.15)
                                    end
                                end
                            end
                        end
                    end
                    pQ = function()
                        if not py("UpgradeTargets") then
                            return
                        end
                        local un = o6()
                        if not un then
                            return
                        end
                        local up = un.Coins or 0
                        local ux = if pk("Ore") then 1 else 0
                        if ux == 1 then
                            local uo_26 = qe()
                            for k, v in pairs(uo_26) do
                                local uB = k
                                if ph.Unloaded then
                                    break
                                end
                                local uo_27 = type(v) == "table" and v.Resource
                                if uo_27 then
                                    local uq_20 = v.Data and v.Data.Level or 1
                                    local uq_21 = ResourcesData.getData(v.Resource)
                                    if uq_20 < (uq_21 and uq_21.MaxUpgrade or 100) then
                                        local Resource = v.Resource
                                        local ur_13 = v.Data and v.Data.Primary
                                        local us_6 = v.Data and v.Data.Secondary
                                        local ut_3 = o1(Resource, uq_20, ur_13, us_6)
                                        if ut_3 and up >= ut_3 then
                                            local uo_31 = pcall(function()
                                                return API_UpgradeResource:InvokeServer(uB)
                                            end)
                                            if uo_31 then
                                                up = up - ut_3
                                                task.wait(0.08)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if pk("Luck") then
                            local uo_32 = un.Luck or 0
                            if uo_32 < (RollSignData.MaxLuck or 100) then
                                local uo_34 = RollSignData.getLuckPrice(uo_32)
                                if uo_34 and up >= uo_34 then
                                    pcall(function()
                                        API_BuyLuck:InvokeServer()
                                    end)
                                    up = oS()
                                end
                            end
                        end
                        local ux_4 = if pk("Roll Slots") then 1 else 0
                        if ux_4 == 1 then
                            local uo_35 = un.RollSlots or 1
                            if uo_35 < (RollSignData.MaxRollSlots or 6) then
                                local uo_37 = RollSignData.getRollSlotPrice(uo_35 + 1)
                                if uo_37 and up >= uo_37 then
                                    pcall(function()
                                        API_BuyRollSlot:InvokeServer()
                                    end)
                                    up = oS()
                                end
                            end
                        end
                        local uo_38 = {
                            ["Refinery Value"] = "Value",
                            ["Refinery Storage"] = "Storage",
                            ["Refinery Pack Speed"] = "PackSpeed",
                            ["Refinery Double Pack"] = "DoublePack"
                        }
                        local uq_28 = {}
                        local ur_14 = un.RefineryUpgrades
                        local ux_5 = if ur_14 then 1 else 0
                        local uv = 1615 * ux_5 + 1166 * (1 - ux_5)
                        local uw = 2355 * ux_5 + 2868 * (1 - ux_5)
                        if not ((uv * 843 + uw * 2072 + uv * uw) % 16777213 == 10044330) then
                            ur_14 = uq_28
                        end
                        local uq_29 = ur_14
                        local us_7 = un.UnlockedFloors or {}
                        for k, v in pairs(uo_38) do
                            local uJ = v
                            if pk(k) then
                                local uo_39 = FloorData.MaxFloor or 3
                                for i = 1, uo_39 do
                                    local uN = i
                                    local uo_40 = us_7[uN] or us_7[tostring(uN)]
                                    if uo_40 then
                                        local uo_41 = uq_29[uN] or uq_29[tostring(uN)]
                                        local us_9 = (uo_41 or {})[uJ] or 0
                                        if not RefineryUpgradeData.isMaxed(uJ, us_9) then
                                            local us_10 = RefineryUpgradeData.getPrice(uJ, us_9, uN)
                                            if us_10 and up >= us_10 then
                                                pcall(function()
                                                    API_BuyRefineryUpgrade:InvokeServer(uN, uJ)
                                                end)
                                                up = oS()
                                                task.wait(0.08)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if pk("Expand Farm") then
                            local uo_45 = un.ExpansionStep or 1
                            local uo_46 = ExpansionData.getStep(uo_45)
                            if uo_46 and uo_46.Price and up >= uo_46.Price then
                                pcall(function()
                                    API_ExpandFarm:InvokeServer()
                                end)
                                up = oS()
                            end
                        end
                        local uo_47 = (pk("UnlockSlots"))
                        local ux_6 = if uo_47 then 1 else 0
                        local uv_2 = 3983 * ux_6 + 398 * (1 - ux_6)
                        local uw_2 = 2146 * ux_6 + 911 * (1 - ux_6)
                        if not ((uv_2 * 758 + uw_2 * 3354 + uv_2 * uw_2) % 16777213 == 1987103) then
                            uo_47 = pk("Unlock Slots")
                        end
                        if uo_47 then
                            local uo_48 = pR()
                            local uq_32 = {}
                            for k, v in pairs(uo_48) do
                                local ur_17 = type(v) == "table" and v.Owned ~= true
                                if ur_17 then
                                    local ur_18 = SlotsData.getPriceForSlotId(k, uo_48)
                                    if ur_18 then
                                        table.insert(uq_32, { id = k, price = ur_18 })
                                    end
                                end
                            end
                            table.sort(uq_32, function(gr, gs)
                                return gr.price < gs.price
                            end)
                            for i, v in ipairs(uq_32) do
                                local uV = v
                                if ph.Unloaded then
                                    break
                                elseif up >= uV.price then
                                    pcall(function()
                                        API_UnlockSlot:InvokeServer(uV.id)
                                    end)
                                    up = oS()
                                    task.wait(0.08)
                                else
                                    break
                                end
                            end
                        end
                        if pk("Buy Floors") then
                            local uq_33 = un.UnlockedFloors or {}
                            local uq_34 = un.Rebirths or 0
                            local uq_35 = FloorData.MaxFloor or 3
                            for i = 2, uq_35 do
                                local uX = i
                                local uq_36 = uq_33[uX] or uq_33[tostring(uX)]
                                if not uq_36 then
                                    local uq_37 = FloorData.getRequiredRebirth(uX)
                                    if not uq_37 or uq_34 >= uq_37 then
                                        local uq_38 = FloorData.getPrice(uX)
                                        if uq_38 and up >= uq_38 then
                                            pcall(function()
                                                API_BuyFloor:InvokeServer(uX)
                                            end)
                                            up = oS()
                                            task.wait(0.1)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    oW = fn795
                else
                    oW = function(ex)
                        local t_ = oS()
                        local t0 = po("AutoSkipUnaffordable")
                        local t1 = po("AutoSpecificRoll") or po("AutoBuyDisplays")
                        for k, v in pairs(p6) do
                            local ua = k
                            if ph.Unloaded then
                                break
                            end
                            local t3_1 = v.Name or v.Resource or v.name
                            if typeof(t3_1) ~= "string" then
                                t3_1 = nil
                            end
                            local t1_2 = ex
                            if not t1_2 then
                                local t4_1 = t3_1 and pT(t3_1, t1)
                                t1_2 = t4_1
                            end
                            if t1_2 then
                                local t1_3 = t3_1
                                if t1_3 then
                                    local t4_3 = v.Primary or v.primary
                                    local t5 = v.Secondary or v.secondary
                                    t1_3 = pv(t3_1, t4_3, t5)
                                end
                                local t1_4 = t1_3 or 0
                                if t1_4 <= t_ or not t0 then
                                    local t3_4 = pcall(function()
                                        return API_BuyRollItem:InvokeServer(ua)
                                    end)
                                    if t3_4 then
                                        p6[ua] = nil
                                        t_ = math.max(0, t_ - t1_4)
                                        task.wait(0.1)
                                    end
                                end
                            end
                        end
                        for i, v in ipairs(p1) do
                            if ph.Unloaded then
                                break
                            else
                                local name = v.name
                                local uuid = v.uuid
                                local t3_5 = typeof(name) == "string" and typeof(uuid) == "string"
                                if t3_5 then
                                    local t3_6 = ex or pT(name, t1)
                                    if t3_6 then
                                        local t3_7 = pv(name, v.primary, v.secondary)
                                        if t3_7 <= t_ or not t0 then
                                            local t1_7 = pcall(function()
                                                return qg:InvokeServer(uuid)
                                            end)
                                            if t1_7 then
                                                t_ = math.max(0, t_ - t3_7)
                                                task.wait(0.1)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        for i, v in ipairs(o9()) do
                            if ph.Unloaded then
                                break
                            end
                            local ObjectText = v.ObjectText
                            local t3_8 = ex
                            if not t3_8 then
                                local t4_6 = typeof(ObjectText) == "string" and pT(ObjectText, t1)
                                t3_8 = t4_6
                            end
                            if t3_8 then
                                local t3_9 = pv(ObjectText, nil, nil)
                                if t3_9 <= t_ or not t0 then
                                    ps(v.Parent)
                                    task.wait(0.08)
                                    if o7(v) then
                                        t_ = math.max(0, t_ - t3_9)
                                        task.wait(0.15)
                                    end
                                end
                            end
                        end
                    end
                    p_ = function()
                        if not py("UpgradeTargets") then
                            return
                        end
                        local un = o6()
                        if not un then
                            return
                        end
                        local up = un.Coins or 0
                        local ux = if pk("Ore") then 1 else 0
                        if ux == 1 then
                            local uo_1 = qe()
                            for k, v in pairs(uo_1) do
                                local uB = k
                                if ph.Unloaded then
                                    break
                                end
                                local uo_2 = type(v) == "table" and v.Resource
                                if uo_2 then
                                    local uq_1 = v.Data and v.Data.Level or 1
                                    local uq_2 = ResourcesData.getData(v.Resource)
                                    if uq_1 < (uq_2 and uq_2.MaxUpgrade or 100) then
                                        local Resource = v.Resource
                                        local ur_3 = v.Data and v.Data.Primary
                                        local us_1 = v.Data and v.Data.Secondary
                                        local ut_1 = o1(Resource, uq_1, ur_3, us_1)
                                        if ut_1 and up >= ut_1 then
                                            local uo_6 = pcall(function()
                                                return API_UpgradeResource:InvokeServer(uB)
                                            end)
                                            if uo_6 then
                                                up = up - ut_1
                                                task.wait(0.08)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if pk("Luck") then
                            local uo_7 = un.Luck or 0
                            if uo_7 < (RollSignData.MaxLuck or 100) then
                                local uo_9 = RollSignData.getLuckPrice(uo_7)
                                if uo_9 and up >= uo_9 then
                                    pcall(function()
                                        API_BuyLuck:InvokeServer()
                                    end)
                                    up = oS()
                                end
                            end
                        end
                        local ux_1 = if pk("Roll Slots") then 1 else 0
                        if ux_1 == 1 then
                            local uo_10 = un.RollSlots or 1
                            if uo_10 < (RollSignData.MaxRollSlots or 6) then
                                local uo_12 = RollSignData.getRollSlotPrice(uo_10 + 1)
                                if uo_12 and up >= uo_12 then
                                    pcall(function()
                                        API_BuyRollSlot:InvokeServer()
                                    end)
                                    up = oS()
                                end
                            end
                        end
                        local uo_13 = {
                            ["Refinery Value"] = "Value",
                            ["Refinery Storage"] = "Storage",
                            ["Refinery Pack Speed"] = "PackSpeed",
                            ["Refinery Double Pack"] = "DoublePack"
                        }
                        local uq_9 = {}
                        local ur_4 = un.RefineryUpgrades
                        local ux_2 = if ur_4 then 1 else 0
                        local uv = 1615 * ux_2 + 1166 * (1 - ux_2)
                        local uw = 2355 * ux_2 + 2868 * (1 - ux_2)
                        if not ((uv * 843 + uw * 2072 + uv * uw) % 16777213 == 10044330) then
                            ur_4 = uq_9
                        end
                        local uq_10 = ur_4
                        local us_2 = un.UnlockedFloors or {}
                        for k, v in pairs(uo_13) do
                            local uJ = v
                            if pk(k) then
                                local uo_14 = FloorData.MaxFloor or 3
                                for i = 1, uo_14 do
                                    local uN = i
                                    local uo_15 = us_2[uN] or us_2[tostring(uN)]
                                    if uo_15 then
                                        local uo_16 = uq_10[uN] or uq_10[tostring(uN)]
                                        local us_4 = (uo_16 or {})[uJ] or 0
                                        if not RefineryUpgradeData.isMaxed(uJ, us_4) then
                                            local us_5 = RefineryUpgradeData.getPrice(uJ, us_4, uN)
                                            if us_5 and up >= us_5 then
                                                pcall(function()
                                                    API_BuyRefineryUpgrade:InvokeServer(uN, uJ)
                                                end)
                                                up = oS()
                                                task.wait(0.08)
                                            end
                                        end
                                    end
                                end
                            end
                        end
                        if pk("Expand Farm") then
                            local uo_20 = un.ExpansionStep or 1
                            local uo_21 = ExpansionData.getStep(uo_20)
                            if uo_21 and uo_21.Price and up >= uo_21.Price then
                                pcall(function()
                                    API_ExpandFarm:InvokeServer()
                                end)
                                up = oS()
                            end
                        end
                        local uo_22 = (pk("UnlockSlots"))
                        local ux_3 = if uo_22 then 1 else 0
                        local uv_1 = 3983 * ux_3 + 398 * (1 - ux_3)
                        local uw_1 = 2146 * ux_3 + 911 * (1 - ux_3)
                        if not ((uv_1 * 758 + uw_1 * 3354 + uv_1 * uw_1) % 16777213 == 1987103) then
                            uo_22 = pk("Unlock Slots")
                        end
                        if uo_22 then
                            local uo_23 = pR()
                            local uq_13 = {}
                            for k, v in pairs(uo_23) do
                                local ur_7 = type(v) == "table" and v.Owned ~= true
                                if ur_7 then
                                    local ur_8 = SlotsData.getPriceForSlotId(k, uo_23)
                                    if ur_8 then
                                        table.insert(uq_13, { id = k, price = ur_8 })
                                    end
                                end
                            end
                            table.sort(uq_13, function(gr, gs)
                                return gr.price < gs.price
                            end)
                            for i, v in ipairs(uq_13) do
                                local uV = v
                                if ph.Unloaded then
                                    break
                                elseif up >= uV.price then
                                    pcall(function()
                                        API_UnlockSlot:InvokeServer(uV.id)
                                    end)
                                    up = oS()
                                    task.wait(0.08)
                                else
                                    break
                                end
                            end
                        end
                        if pk("Buy Floors") then
                            local uq_14 = un.UnlockedFloors or {}
                            local uq_15 = un.Rebirths or 0
                            local uq_16 = FloorData.MaxFloor or 3
                            for i = 2, uq_16 do
                                local uX = i
                                local uq_17 = uq_14[uX] or uq_14[tostring(uX)]
                                if not uq_17 then
                                    local uq_18 = FloorData.getRequiredRebirth(uX)
                                    if not uq_18 or uq_15 >= uq_18 then
                                        local uq_19 = FloorData.getPrice(uX)
                                        if uq_19 and up >= uq_19 then
                                            pcall(function()
                                                API_BuyFloor:InvokeServer(uX)
                                            end)
                                            up = oS()
                                            task.wait(0.1)
                                        end
                                    end
                                end
                            end
                        end
                    end
                    pQ = fn795
                end
                w5_29 = (w5_29 + 97) % 108
            end
        else
            if (not pW or not pv) and (not pv or pv) and (not qf or o5 or not qj and pW) and ((pW and o5 or not qj and not pW) and (pv and qj or pW and w5_29)) or not ((not pW or not pv) and (not pv or pv) and (not qf or o5 or not qj and pW) and ((pW and o5 or not qj and not pW) and (pv and qj or pW and w5_29))) then
                qb = function()
                    local u0, u2, u3
                    local u7_2
                    local u6_3
                    local u4 = oZ("PlaceCompareBy", "Rarity")
                    local u5 = oZ("PlacePickaxeMode", "Replace Worse")
                    u7_2, u6_3 = qd(u4, pe)
                    if not u7_2 then
                        return
                    end
                    local u8 = pb(u7_2)
                    u3 = oN(u7_2)
                    if not u8 or not u3 then
                        return
                    end
                    local u9_3 = o_()
                    if u9_3 and u9_3.Carrying then
                        return
                    end
                    local u9_4 = qe()
                    local va_4 = math.huge
                    local vb
                    local u1
                    local vc = math.huge
                    for i, v in ipairs(pr()) do
                        local attr = v:GetAttribute("SlotId")
                        local ve = attr and oW(attr, v)
                        if ve then
                            local ve_3 = u9_4[attr]
                            local vf = type(ve_3) == "table" and typeof(ve_3.Resource) == "string" and ve_3.Resource ~= ""
                            if not vf then
                                vb = vb or attr
                            else
                                local vf_4 = pL(ve_3.Resource, u4)
                                local vg_3 = oX[ve_3.Resource] or 0
                                if vf_4 < vc or vf_4 == vc and vg_3 < va_4 then
                                    vc = vf_4
                                    va_4 = vg_3
                                    u1 = attr
                                end
                            end
                        end
                    end
                    u0 = nil
                    if u5 == "Empty Only" then
                        u0 = vb
                    else
                        u0 = vb
                        local u4_6 = oX[u8] or 0
                        local u4_7 = u6_3 > vc
                        if not u4_7 then
                            u4_7 = u6_3 == vc and u4_6 > va_4
                        end
                        if not u0 and u1 and u4_7 then
                            u2 = false
                            pcall(function()
                                u2 = API_RemoveResource:InvokeServer(u1) == true
                            end)
                            if not u2 then
                                return
                            end
                            task.wait(0.15)
                            u0 = u1
                        end
                    end
                    if not u0 then
                        return
                    end
                    if not p7(u7_2) then
                        return
                    end
                    task.wait(0.1)
                    local u4_9 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    local u4_10 = oN(u4_9)
                    if u4_10 ~= u3 then
                        return
                    end
                    pcall(function()
                        API_PlaceResource:InvokeServer(u0, u3)
                    end)
                end
            else
                p2 = function()
                    local u0, u2, u3
                    local u7_1
                    local u6_1
                    local u4 = oZ("PlaceCompareBy", "Rarity")
                    local u5 = oZ("PlacePickaxeMode", "Replace Worse")
                    u7_1, u6_1 = qd(u4, pe)
                    if not u7_1 then
                        return
                    end
                    local u8 = pb(u7_1)
                    u3 = oN(u7_1)
                    if not u8 or not u3 then
                        return
                    end
                    local u9_1 = o_()
                    if u9_1 and u9_1.Carrying then
                        return
                    end
                    local u9_2 = qe()
                    local va_2 = math.huge
                    local vb
                    local u1
                    local vc = math.huge
                    for i, v in ipairs(pr()) do
                        local attr = v:GetAttribute("SlotId")
                        local ve = attr and oW(attr, v)
                        if ve then
                            local ve_1 = u9_2[attr]
                            local vf = type(ve_1) == "table" and typeof(ve_1.Resource) == "string" and ve_1.Resource ~= ""
                            if not vf then
                                vb = vb or attr
                            else
                                local vf_2 = pL(ve_1.Resource, u4)
                                local vg_1 = oX[ve_1.Resource] or 0
                                if vf_2 < vc or vf_2 == vc and vg_1 < va_2 then
                                    vc = vf_2
                                    va_2 = vg_1
                                    u1 = attr
                                end
                            end
                        end
                    end
                    u0 = nil
                    if u5 == "Empty Only" then
                        u0 = vb
                    else
                        u0 = vb
                        local u4_1 = oX[u8] or 0
                        local u4_2 = u6_1 > vc
                        if not u4_2 then
                            u4_2 = u6_1 == vc and u4_1 > va_2
                        end
                        if not u0 and u1 and u4_2 then
                            u2 = false
                            pcall(function()
                                u2 = API_RemoveResource:InvokeServer(u1) == true
                            end)
                            if not u2 then
                                return
                            end
                            task.wait(0.15)
                            u0 = u1
                        end
                    end
                    if not u0 then
                        return
                    end
                    if not p7(u7_1) then
                        return
                    end
                    task.wait(0.1)
                    local u4_4 = LocalPlayer.Character and LocalPlayer.Character:FindFirstChildOfClass("Tool")
                    local u4_5 = oN(u4_4)
                    if u4_5 ~= u3 then
                        return
                    end
                    pcall(function()
                        API_PlaceResource:InvokeServer(u0, u3)
                    end)
                end
            end
            w5_29 = (w5_29 + 16) % 108
        end
    elseif w5_4 <= 24 then
        if w5_4 <= 23 then
            if w5_4 <= 22 then
                w5_23 = (vector.create((w5_29 * 1 + 6) % 11 + 1, (w5_29 * 6 + 12) % 13 + 1, (w5_29 * 7 + 3) % 17 + 1))
                local x7 = vector.floor(w5_23) + vector.ceil(w5_23 * -1)
                if vector.dot(x7, x7) == 3 then
                else
                    pH = fns.fn205
                end
                w5_29 = (w5_29 + 43) % 108
            else
                local yo = bit32.rrotate(bit32.bxor(bit32.lrotate(w5_29, 30), string.byte(tostring(w5_32))), 31)
                if bit32.bxor(bit32.lrotate(bit32.bxor(yo, 3208168451), 16), 3288579896) == bit32.lrotate(yo, 16) then
                    pj = function()
                        local vD
                        local vE = oZ("TrashBelow", "Common")
                        vD = p5[vE] or 1
                        pG(function(hT)
                            local vw = pb(hT)
                            local vv = oN(hT)
                            if not vw or not vv then
                                return
                            end
                            local vx_2 = p9(vw)
                            if vx_2 > 0 and vx_2 < vD then
                                if p7(hT) then
                                    task.wait(0.1)
                                    pcall(function()
                                        API_DisposeResource:InvokeServer(vv)
                                    end)
                                end
                            end
                        end)
                    end
                    pp = fn698
                else
                    pp = function()
                        local vD
                        local vE = oZ("TrashBelow", "Common")
                        vD = p5[vE] or 1
                        pG(function(hT)
                            local vw = pb(hT)
                            local vv = oN(hT)
                            if not vw or not vv then
                                return
                            end
                            local vx_1 = p9(vw)
                            if vx_1 > 0 and vx_1 < vD then
                                if p7(hT) then
                                    task.wait(0.1)
                                    pcall(function()
                                        API_DisposeResource:InvokeServer(vv)
                                    end)
                                end
                            end
                        end)
                    end
                    pj = fn698
                end
                w5_29 = (w5_29 + 16) % 108
            end
        else
            w5_23 = { "rwwalwzkq", "vjcuiytj", "pjuu", "kuhdxfijbm", "rdbokwpl", "schwkvhotl", "yfomqzkrn" }
            local ya = w5_29
            w5_13 = w5_23[ya % 7 + 1]
            if w5_13:len() >= w5_13:reverse():rep(ya % 3 + 2):len() then
                w5_19 = w5_26:CreateWindow({
                    Title = "Ouroboros Hub",
                    NotifySide = "Right",
                    Icon = 12645376577,
                    CornerRadius = 10,
                    ShowCustomCursor = false,
                    Footer = { { Text = ph, Copyable = true }, pN, "|" }
                })
            else
                w5_26 = ph:CreateWindow({
                    Title = "Ouroboros Hub",
                    Footer = { { Text = pN, Copyable = true }, "|", w5_19 },
                    Icon = 12645376577,
                    NotifySide = "Right",
                    ShowCustomCursor = false,
                    CornerRadius = 10
                })
            end
            w5_29 = (w5_29 + 70) % 108
        end
    elseif w5_4 <= 26 then
        if w5_4 <= 25 then
            if (w5_29 * 2 + 6) * 10 % 3 == ((w5_29 * 2 + 6) * 10 + 7) % 3 then
                w5_26 = {
                    Misc = w5_32:AddTab("Misc", "sparkles"),
                    Settings = w5_32:AddTab("Settings", "settings"),
                    Main = w5_32:AddTab("Main", "pickaxe"),
                    Info = w5_32:AddTab("Info", "info")
                }
            else
                w5_32 = {
                    Info = w5_26:AddTab("Info", "info"),
                    Main = w5_26:AddTab("Main", "pickaxe"),
                    Misc = w5_26:AddTab("Misc", "sparkles"),
                    Settings = w5_26:AddTab("Settings", "settings")
                }
            end
            w5_29 = (w5_29 + 97) % 108
        else
            w5_4 = { "pfpdusditi", "yltx", "tqzgsrta", "unixlcexm", "uqyxlgast", "ufysqadedxv", "xjpkegirurh" }
            local x3 = w5_29
            w5_23 = w5_4[x3 % 7 + 1]
            if w5_23:len() <= w5_23:reverse():rep(x3 % 3 + 2):len() then
                w5_32.Farm = w5_32.Main:AddSubTab("Farm", "factory")
                w5_32.Roll = w5_32.Main:AddSubTab("Roll", "dices")
                w5_32.Upgrades = w5_32.Main:AddSubTab("Upgrades", "arrow-up")
                w5_32.Inventory = w5_32.Main:AddSubTab("Inventory", "backpack")
                w5_17 = fns.fn235
            else
                w5_17.Farm = w5_17.Main:AddSubTab("Farm", "factory")
                w5_17.Roll = w5_17.Main:AddSubTab("Roll", "dices")
                w5_17.Upgrades = w5_17.Main:AddSubTab("Upgrades", "arrow-up")
                w5_17.Inventory = w5_17.Main:AddSubTab("Inventory", "backpack")
                w5_32 = fns.fn235
            end
            w5_29 = (w5_29 + 97) % 108
        end
    else
        local x1 = bit32.rrotate(bit32.bxor(bit32.lrotate(w5_29, 17), string.byte(tostring(w5_12))), 10)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(x1, 1489794591), 683505985), (bit32.bxor(bit32.band(x1, 2805172704), 1842216713))), 683505985), 1842216713) ~= x1 then
            w5_33 = { "Value", "DoublePack", "Storage", "PackSpeed" }
        else
            w5_33 = {
                "Ore",
                "Luck",
                "Roll Slots",
                "Refinery Value",
                "Refinery Storage",
                "Refinery Pack Speed",
                "Refinery Double Pack",
                "Expand Farm",
                "Unlock Slots",
                "Buy Floors"
            }
        end
        w5_29 = (w5_29 + 70) % 108
    end
until (w5_29 * 107 + 86) % 108 == 58
for k, v in w5_32 do
    if v ~= w5_32.Main then
        w5_17(v)
    end
end
pX, w5_4, w5_6, pz, pt, w5_16 = nil, nil, nil, nil, nil, nil
w5_26 = 0
repeat
    w5_29 = (w5_26 * 1 + 2) % 3 + 1
    if w5_29 <= 2 then
        if w5_29 <= 1 then
            w5_29 = (vector.create((w5_26 * 6 + 1) % 11 + 1, (w5_26 * 11 + 3) % 13 + 1, (w5_26 * 13 + 9) % 17 + 1))
            local x6 = vector.floor(w5_29) + vector.ceil(w5_29 * -1)
            if vector.dot(x6, x6) == 4 then
                pz = tostring(game.JobId)
            else
                pt = tostring(game.JobId)
            end
            w5_26 = (w5_26 + 22) % 24
        else
            w5_29 = { "hfkjg", "hblcd", "jmpzdnwql", "jlhslkfxdlfz", "hmege", "pvororgrg", "mjddy", "isu", "dkonneo" }
            if w5_29[(w5_26 * 28 + 44) % 9 + 1] <= w5_29[(w5_26 * 28 + 44) % 9 + 1] then
                w5_16 = #pt > 18
            else
                pt = #w5_16 > 18
            end
            w5_26 = (w5_26 + 16) % 24
        end
    else
        local xL = bit32.rrotate(bit32.bxor(bit32.lrotate(w5_26, 20), string.byte(tostring(pX))), 11)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(xL, 911534139), 2199728479), (bit32.bxor(bit32.band(xL, 3383433156), 303188466))), 2199728479), 303188466) ~= xL then
            pV = "Unknown"
            pcall(fn491)
            pX = LocalPlayer.Info:AddLeftGroupbox("Account", "circle-user")
            pX:AddLabel(w5_1("User", w5_12.Name, qc), true)
            pX:AddLabel(w5_1("Status", "Keyless", qc), true)
            pX:AddLabel(w5_1("Executor", pV, qc), true)
            pz = LocalPlayer.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            pz:AddLabel(px(w5_4 .. " [" .. tostring(game.PlaceId) .. "]", w5_19), true)
            pz:AddLabel(w5_1("Place ID", tostring(game.PlaceId), w5_19), true)
            w5_32 = pz:AddLabel(w5_1("Session time", "0s", w5_6), true)
        else
            pX = "Unknown"
            pcall(fn491)
            w5_4 = w5_32.Info:AddLeftGroupbox("Account", "circle-user")
            w5_4:AddLabel(pV("User", LocalPlayer.Name, w5_1), true)
            w5_4:AddLabel(pV("Status", "Keyless", w5_1), true)
            w5_4:AddLabel(pV("Executor", pX, w5_1), true)
            w5_6 = w5_32.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            w5_6:AddLabel(qc(w5_19 .. " [" .. tostring(game.PlaceId) .. "]", w5_12), true)
            w5_6:AddLabel(pV("Place ID", tostring(game.PlaceId), w5_12), true)
            pz = w5_6:AddLabel(pV("Session time", "0s", px), true)
        end
        w5_26 = (w5_26 + 22) % 24
    end
until (w5_26 * 23 + 14) % 24 == 2
if w5_16 then
    w5_4 = 4
    repeat
        w5_26 = {
            "jixgx",
            "dwxszozve",
            "fuyrygbn",
            "njltxqxpr",
            "xkuajvcfl",
            "ymhgafjpxlna",
            "xruflrt",
            "fpfgacirg",
            "oqrovy",
            "jlmpibyhnp",
            "sozdnc",
            "iwawqyj",
            "tql"
        }
        if w5_26[(w5_4 * 89 + 29) % 13 + 1] <= w5_26[(w5_4 * 89 + 29) % 13 + 1] then
            w5_16 = string.sub(pt, 1, 18) .. "..."
        else
            pt = string.sub(w5_16, 1, 18) .. "..."
        end
        w5_4 = (w5_4 + 4) % 8
    until (w5_4 * 3 + 7) % 8 == 7
end
w5_4 = w5_16 or pt
o4, w5_13, w5_29, oP, oL, connection, connection2, p0 = nil, nil, nil, nil, nil, nil, nil, nil
w5_17 = w5_4
w5_6:AddLabel(pV("Server", w5_17, w5_22), true)
w5_6:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
o4 = os.clock()
task.spawn(worker)
local ScriptsGroup = w5_32.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(qc("Included in this hub", w5_22), true)
ScriptsGroup:AddLabel(qc(w5_19, w5_12), true)
local FeaturesGroup = w5_32.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(qc("Auto Farm", w5_12), true)
FeaturesGroup:AddLabel(qc("Auto Roll", px), true)
FeaturesGroup:AddLabel(qc("Auto Upgrades", w5_1), true)
FeaturesGroup:AddLabel(qc("Inventory Tools", w5_22), true)
local SocialsGroup = w5_32.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = oM })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = w5_32.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = oM })
local FaqGroup = w5_32.Info:AddRightGroupbox("FAQ", "circle-help")
FaqGroup:AddLabel("Where do I get a good config?", true)
FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
FaqGroup:AddLabel("How do I import / export configs?", true)
FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
FaqGroup:AddLabel("How do I report bugs?", true)
FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
FaqGroup:AddLabel("How do I make suggestions?", true)
FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
FaqGroup:AddLabel("How do I get help or updates?", true)
FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
local FarmGroup = w5_32.Farm:AddLeftGroupbox("Farm")
FarmGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
FarmGroup:AddSlider("FarmDelay", { Text = "Farm Delay", Default = 0.35, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
local LandGroup = w5_32.Farm:AddRightGroupbox("Land")
LandGroup:AddToggle("AutoExpandFarm", { Text = "Auto Expand Farm", Default = false })
LandGroup:AddToggle("AutoUnlockSlots", { Text = "Auto Unlock Slots", Default = false })
LandGroup:AddToggle("AutoBuyFloors", { Text = "Auto Buy Floors", Default = false })
w5_25 = w5_32.Roll:AddLeftGroupbox("Roll")
w5_25:AddToggle("AutoSpin", { Text = "Auto Roll", Default = false })
w5_25:AddToggle("AutoSpecificRoll", { Text = "Auto Specific Roll", Default = false })
w5_25:AddToggle("AutoBuyAny", { Text = "Auto Buy Any", Default = false })
w5_25:AddToggle("AutoBuyDisplays", { Text = "Auto Buy Selected", Default = false })
w5_25:AddToggle("AutoSkipUnaffordable", { Text = "Auto Skip If Can't Afford", Default = true })
w5_25:AddSlider("RollDelay", { Text = "Roll Delay", Default = 0.7, Min = 0.2, Max = 3, Rounding = 2, Suffix = "s" })
w5_3 = w5_32.Roll:AddRightGroupbox("Targets")
if (not SocialsGroup and w5_29 and (SocialsGroup or not OuroborosHubGroup) and (OuroborosHubGroup and w5_29 or not w5_29 and OuroborosHubGroup) and ((not w5_29 or w5_29) and (not SocialsGroup or SocialsGroup) and (OuroborosHubGroup or OuroborosHubGroup or (OuroborosHubGroup or w5_29))) or (not w5_29 and not OuroborosHubGroup and (FarmGroup or not FarmGroup) or not OuroborosHubGroup and SocialsGroup and (SocialsGroup or not SocialsGroup)) and (not SocialsGroup and not OuroborosHubGroup and (SocialsGroup or not w5_29) or OuroborosHubGroup and SocialsGroup and (SocialsGroup or FarmGroup))) and not (not SocialsGroup and w5_29 and (SocialsGroup or not OuroborosHubGroup) and (OuroborosHubGroup and w5_29 or not w5_29 and OuroborosHubGroup) and ((not w5_29 or w5_29) and (not SocialsGroup or SocialsGroup) and (OuroborosHubGroup or OuroborosHubGroup or (OuroborosHubGroup or w5_29))) or (not w5_29 and not OuroborosHubGroup and (FarmGroup or not FarmGroup) or not OuroborosHubGroup and SocialsGroup and (SocialsGroup or not SocialsGroup)) and (not SocialsGroup and not OuroborosHubGroup and (SocialsGroup or not w5_29) or OuroborosHubGroup and SocialsGroup and (SocialsGroup or FarmGroup))) then
    w5_13:AddDropdown("RollTargets", {
        Searchable = true,
        Values = w5_3,
        Text = "Deposits",
        AllowNull = true,
        Multi = true,
        Default = {}
    })
    w5_13:AddDropdown("RollRarities", {
        Searchable = true,
        Text = "Rarities",
        Values = w5_30,
        AllowNull = true,
        Multi = true,
        Default = {}
    })
    w5_32 = w5_14.Upgrades:AddLeftGroupbox("Upgrades")
else
    w5_3:AddDropdown("RollTargets", {
        Text = "Deposits",
        Values = w5_30,
        Default = {},
        Multi = true,
        Searchable = true,
        AllowNull = true
    })
    w5_3:AddDropdown("RollRarities", {
        Text = "Rarities",
        Values = w5_14,
        Default = {},
        Multi = true,
        Searchable = true,
        AllowNull = true
    })
    w5_13 = w5_32.Upgrades:AddLeftGroupbox("Upgrades")
end
w5_13:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
w5_13:AddDropdown("UpgradeTargets", {
    Text = "Upgradeables",
    Values = w5_33,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
w5_13:AddSlider("UpgradeDelay", { Text = "Upgrade Delay", Default = 0.4, Min = 0.1, Max = 2, Rounding = 2, Suffix = "s" })
w5_23 = w5_32.Inventory:AddLeftGroupbox("Inventory")
w5_23:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
w5_23:AddToggle("AutoPlacePickaxes", { Text = "Auto Place / Replace", Default = false })
w5_23:AddDropdown("PlacePickaxeMode", { Text = "Place Mode", Values = { "Empty Only", "Replace Worse" }, Default = "Replace Worse" })
w5_23:AddDropdown("PlaceCompareBy", { Text = "Compare By", Values = { "Rarity", "Money" }, Default = "Rarity" })
w5_23:AddDropdown("PlaceTargets", {
    Text = "Place Deposits",
    Values = w5_30,
    Default = {},
    Multi = true,
    Searchable = true,
    AllowNull = true
})
w5_23:AddDropdown("PlaceMinResource", { Text = "Minimum", Values = w5_30, Default = pP })
w5_23:AddToggle("AutoTrashWeak", { Text = "Auto Dispose Weak", Default = false })
w5_23:AddDropdown("TrashBelow", { Text = "Dispose Below", Values = w5_14, Default = "Common" })
w5_23:AddSlider("InventoryDelay", { Text = "Inventory Delay", Default = 0.5, Min = 0.2, Max = 3, Rounding = 2, Suffix = "s" })
w5_8 = w5_32.Misc:AddLeftGroupbox("Claims")
w5_8:AddToggle("AutoClaimDaily", { Text = "Auto Claim Daily", Default = false })
w5_8:AddToggle("AutoClaimPlayTime", { Text = "Auto Claim Playtime", Default = false })
w5_8:AddToggle("AutoClaimGroup", { Text = "Auto Claim Group", Default = false })
w5_29 = w5_32.Misc:AddRightGroupbox("Teleport")
w5_29:AddButton({ Text = "Teleport Plot", Func = onTeleportPlot })
w5_29:AddButton({ Text = "Teleport to Roll", Func = onTeleportToRoll })
w5_26 = w5_32.Settings:AddLeftGroupbox("Menu")
w5_26:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
w5_26:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
w5_26:AddButton("Unload", fns.onUnload)
ph.ToggleKeybind = o2.MenuKeybind
w5_11:SetLibrary(ph)
w5_11:SetFolder("OuroborosHub")
w5_11:SaveDefault("Monochrome")
w5_11:ApplyToTab(w5_32.Settings)
w5_11:LoadDefault()
w5_20:SetLibrary(ph)
w5_20:IgnoreThemeSettings()
w5_20:SetIgnoreIndexes({ "MenuKeybind" })
w5_20:SetFolder("OuroborosHub/build-an-ore-farm-beta")
w5_20:BuildConfigSection(w5_32.Settings)
w5_20:LoadAutoloadConfig()
oP = tick()
oL = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local v4 = v
        pcall(function()
            v4:Disable()
        end)
    end
end)
p0 = fn366
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
do
    task.spawn(function()
        while not ph.Unloaded do
            local wa = qj("FarmDelay", 0.35)
            if po("AutoSell") then
                qf()
            end
            if po("AutoRebirth") then
                pp()
            end
            if po("AutoExpandFarm") then
                local wb_1 = o6()
                if wb_1 then
                    local getStep = ExpansionData.getStep
                    local wd_1 = wb_1.ExpansionStep or 1
                    local we_1 = getStep(wd_1)
                    local wc_2 = we_1 and we_1.Price
                    if wc_2 then
                        wc_2 = (wb_1.Coins or 0) >= we_1.Price
                    end
                    if wc_2 then
                        pcall(function()
                            API_ExpandFarm:InvokeServer()
                        end)
                    end
                end
            end
            if po("AutoUnlockSlots") then
                local wb_2 = oS()
                local wc_3 = pR()
                local wd_3 = {}
                for k, v in pairs(wc_3) do
                    local we_2 = type(v) == "table" and v.Owned ~= true
                    if we_2 then
                        local we_3 = SlotsData.getPriceForSlotId(k, wc_3)
                        if we_3 then
                            table.insert(wd_3, { id = k, price = we_3 })
                        end
                    end
                end
                table.sort(wd_3, function(jO, jP)
                    return jO.price < jP.price
                end)
                for i, v in ipairs(wd_3) do
                    local wv = v
                    if wb_2 >= wv.price then
                        pcall(function()
                            API_UnlockSlot:InvokeServer(wv.id)
                        end)
                        wb_2 = oS()
                        task.wait(0.08)
                    else
                        break
                    end
                end
            end
            if po("AutoBuyFloors") then
                local wb_3 = o6()
                if wb_3 then
                    local wd_4 = wb_3.UnlockedFloors or {}
                    local wd_5 = wb_3.Rebirths or 0
                    local wd_6 = wb_3.Coins or 0
                    local wd_7 = FloorData.MaxFloor or 3
                    for i = 2, wd_7 do
                        local wx = i
                        local wd_8 = wd_4[wx] or wd_4[tostring(wx)]
                        if not wd_8 then
                            local wd_9 = FloorData.getRequiredRebirth(wx)
                            if not wd_9 or wd_5 >= wd_9 then
                                local wd_10 = FloorData.getPrice(wx)
                                if wd_10 and wd_6 >= wd_10 then
                                    pcall(function()
                                        API_BuyFloor:InvokeServer(wx)
                                    end)
                                    break
                                end
                            end
                        end
                    end
                end
            end
            task.wait(wa)
        end
    end)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(fns.worker2)
    task.spawn(function()
        while not ph.Unloaded do
            if po("AutoClaimDaily") then
                pcall(function()
                    API_ClaimDailyReward:InvokeServer()
                end)
            end
            if po("AutoClaimPlayTime") then
                local wL_1 = o_()
                local wM_1 = wL_1 and wL_1.Rewards
                if type(wM_1) == "table" then
                    local wN = wM_1.Claimed or {}
                    local wN_1 = wM_1.Playtime or 0
                    local wN_2 = RewardsData.getOrdered and RewardsData.getOrdered()
                    local wP = wN_2 or {}
                    for i, v in ipairs(wP) do
                        local wX = v
                        local wN_4 = wN[wX.Id] or wN[tostring(wX.Id)]
                        if wX.Time and wN_1 >= wX.Time and not wN_4 then
                            pcall(function()
                                API_ClaimReward:InvokeServer(wX.Id)
                            end)
                            task.wait(0.1)
                        end
                    end
                end
            end
            if po("AutoClaimGroup") then
                local wL_4 = o6()
                if wL_4 and not wL_4.GroupRewardClaimed then
                    pcall(function()
                        API_ClaimGroupReward:InvokeServer()
                    end)
                end
            end
            task.wait(2)
        end
    end)
    task.spawn(fns.antiAfkLoop)
    ph:OnUnload(fn783)
end
