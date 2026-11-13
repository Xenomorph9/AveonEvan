local fns = {}
local ReplaceGroup, xf_9, xf_21, SaveManager, xf_25, xf_28, xf_33, xf_37
local oA
local of
local Label
local nX
local oG
local connection
local ol
local o4
local n2
local nK
local ot
local pa
local n8
local oS
local nQ
local oz
local nx
local oe
local oY
local Options
local oF
local ok
local o3
local RequestSpeedBuyMax
local nJ
local oq
local o9
local n7
local oR
local oy
local nw
local od
local VirtualUser
local RequestPowerBuyMax
local nC
local oj
local o2
local n0
local nI
local op
local o8
local oQ
local nO
local ox
local nv
local oc
local oW
local nU
local oD
local nB
local oi
local connection2
local Toggles
local oJ
local nH
local oo
local oP
local nN
local ow
local RequestRebirth
local ob
local RequestCarryUpgrade
local nT
local oC
local nA
local oh
local nG
local on
local o6
local n4
local RequestPowerUpgrade
local nM
local ov
local oa
local oU
local nS
local oB
local DrillConfigurations
local RequestJumpUpgrade
local nY
local RequestCarryBuyMax
local nF
local om
local RequestSpeedUpgrade
local n3
local oN
local ou
local RebirthConfigurations
local Workspace
local nR
function fns.fn9()
    local Character = oN.Character
    local qY = Character and Character:FindFirstChild("HumanoidRootPart")
    return qY
end
function fns.fn39(bP, bQ, bR)
    local rd = ok.GetItemData(bP)
    if not rd then
        return 0
    end
    local GetIncomeAtLevel = ok.GetIncomeAtLevel
    local rf = rd.Income or 0
    local rd_1 = bQ or 1
    return GetIncomeAtLevel(rf, rd_1, nH(bR))
end
function fns.fn45(bc, bd)
    local qL = oR(bc)
    local qP = if not ox(qL) then 1 else 0
    if qP == 1 then
        return true
    end
    return qL[bd] == true
end
function fns.fn61()
    local tc = nx()
    if not tc then
        return false
    end
    return n4(tc)
end
function fns.fn64(aZ, a_)
    local qy = Options[aZ]
    if qy == nil then
        return a_
    end
    return qy.Value
end
function fns.fn77()
    if oF() then
        pcall(function()
            RequestRebirth:FireServer()
        end)
    end
end
function fns.fn79(b6)
    local rv = {}
    if not b6 then
        return rv
    end
    for i, child in ipairs(b6:GetChildren()) do
        if child.Name:match("^Floor%d+$") then
            local Slots = child:FindFirstChild("Slots")
            if Slots then
                for i, child in ipairs(Slots:GetChildren()) do
                    local rw_1 = child:IsA("Model") and child:GetAttribute("IsUnlocked")
                    if rw_1 then
                        table.insert(rv, child)
                    end
                end
            end
        end
    end
    return rv
end
function fns.fn82(bE)
    local q2 = oB()
    if not q2 then
        return false
    end
    q2.CFrame = CFrame.new(bE + Vector3.new(0, 3, 0))
    return true
end
function fns.fn83(c3)
    local attr = c3:GetAttribute("PlacedItem")
    if not attr then
        return 0
    end
    local sv = c3:GetAttribute("ItemLevel") or 1
    local sw = c3:GetAttribute("PlacedMutation") or "Normal"
    return o3(attr, sv, sw)
end
function fns.fn91()
    local ts = if not nI() then 1 else 0
    if ts == 1 then
        nC = 0
        nG = 0
        return false
    end
    if nC == 0 then
        nC = tick()
    end
    local to = tick()
    if to < nG then
        return true
    end
    local ts_1 = if n0() then 1 else 0
    if ts_1 == 1 then
        oj()
        task.wait(0.15)
    end
    oC()
    nG = tick() + math.max(nX("BaseReturnDelay", 1.25), 0.5)
    return true
end
function fns.fn96(T, U)
    local qh = tonumber(string.match(T, "%d+")) or 0
    local qi = (tonumber(string.match(U, "%d+")))
    local qm = if qi then 1 else 0
    local qk = 14 * qm + 2610 * (1 - qm)
    local ql = 874 * qm + 218 * (1 - qm)
    if not ((qk * 4076 + ql * 3964 + qk * ql) % 16777213 == 3533836) then
        qi = 0
    end
    return qh < qi
end
function fns.fn131(cf)
    return "Drill_" .. string.gsub(cf, " ", "_")
end
function fns.fn137(Z, aa)
    return Z.Order < aa.Order
end
function fns.onInputChanged(jE)
    local UserInputType = jE.UserInputType
    local wS = UserInputType == Enum.UserInputType.MouseMovement
    local wW = if wS then 1 else 0
    local wU = 3967 * wW + 3121 * (1 - wW)
    local wV = 3156 * wW + 441 * (1 - wW)
    if not ((wU * 1454 + wV * 2378 + wU * wV) % 16777213 == 9015625) then
        wS = UserInputType == Enum.UserInputType.Gamepad1
    end
    if wS then
        ou = tick()
    end
end
function fns.fn141()
    local rL = oN:GetAttribute("EquippedDrill") or "Default"
    return rL
end
function fns.fn154(aF, aG, aH)
    return string.format("<b>%s</b> %s %s", aF, o6("-", "#5a6070"), o6(aG, aH))
end
function fns.fn184(av, aw)
    if setclipboard then
        setclipboard(av)
    elseif toclipboard then
        toclipboard(av)
    end
    oa:Notify(aw)
end
function fns.fn196(f2)
    local uL = oi()
    if not uL or not f2 then
        return false
    elseif f2.Parent == oN.Character then
        return true
    else
        uL:EquipTool(f2)
        return true
    end
end
function fns.fn203()
    local Character = oN.Character
    if not Character then
        return 0
    end
    local rY = 0
    for i, child in ipairs(Character:GetChildren()) do
        if child.Name == "CarriedLoot" then
            rY = rY + 1
        end
    end
    return rY
end
function fns.onCopyJoinScript_JobID()
    local i_ = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, oU)
    nR(i_, "Copied join script to clipboard")
end
function fns.fn257()
    local sN = oe()
    if #sN == 0 then
        return nil
    end
    local sO = nw("DigMode", "Highest")
    if sO == "Specific" then
        local sP_1 = nw("DigZone", "DrillZone1")
        for i, v in ipairs(sN) do
            if v.Name == sP_1 then
                return v
            end
        end
        return nil
    elseif sO == "Best For Drill" then
        local sO_1 = oh()
        local sP_2 = -1
        local sQ
        for i, v in ipairs(sN) do
            local sR_1 = oA[v.Name] or 0
            local sR_2 = sR_1 / math.max(sO_1, 1)
            local sT = sR_2 <= nX("DigMaxSeconds", 120) and sR_1 > sP_2
            if sT then
                sQ = v
                sP_2 = sR_1
            end
        end
        return sQ or sN[1]
    else
        return sN[1]
    end
end
function fns.fn290(a3)
    local qA = Options[a3]
    return qA and qA.Value or {}
end
function fns.fn296(iJ)
    local DiscordGroup = iJ:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = nA })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = nA })
end
function fns.fn319()
    connection:Disconnect()
    connection2:Disconnect()
end
function fns.fn341()
    local q7 = oN:GetAttribute("Cash") or 0
    return q7
end
function fns.fn350()
    local rU = oN:GetAttribute("CarryLevel") or 1
    local rU_1 = ob.Carry[rU]
    return rU_1 and rU_1.Capacity or 1
end
function fns.fn358()
    print("Unloaded!")
end
function fns.fn367(cP, cQ, cR, cS)
    local attr = cP:GetAttribute("OriginalName")
    local sh = (cP:GetAttribute("Mutation"))
    local sm = if sh then 1 else 0
    local sk = 2455 * sm + 1177 * (1 - sm)
    local sl = 572 * sm + 2449 * (1 - sm)
    if not ((sk * 2391 + sl * 1947 + sk * sl) % 16777213 == 8387849) then
        sh = "Normal"
    end
    local si = sh
    local sh_1 = oz(attr)
    if not pa(cR, sh_1) then
        return false
    end
    local sm_1 = if not of(cQ, sh_1) then 1 else 0
    if sm_1 == 1 then
        return false
    elseif not nT(cS, si) then
        return false
    else
        return true
    end
end
function fns.worker7()
    while not oa.Unloaded do
        if od("AutoRebirth") then
            pcall(n7)
        end
        if od("AutoBuyDrills") then
            pcall(nS)
        end
        if od("AutoEquipBestDrill") then
            pcall(n8)
        end
        if od("AutoBuyUpgrades") then
            pcall(oG)
        end
        task.wait(nX("ShopDelay", 0.5))
    end
end
function fns.onRscripts()
    nR(oy, "Copied Rscripts profile to clipboard")
end
function fns.onInputBegan()
    ou = tick()
end
function fns.worker2()
    while not oa.Unloaded do
        task.wait(2)
        if od("AntiAfk") then
            local w_ = tick() - ou
            local w0 = tick() - on
            if w_ >= 300 and w0 >= 60 then
                pcall(n2)
            else
                if w_ < 300 and w0 >= 300 then
                    pcall(n2)
                end
            end
        end
    end
end
function fns.fn423()
    local SpawnedItems = Workspace:FindFirstChild("SpawnedItems")
    if not SpawnedItems then
        return nil
    end
    local tO = oB()
    local tP
    local tQ
    local tR = nX("FightMaxDistance", 0)
    for i, child in ipairs(SpawnedItems:GetChildren()) do
        local tN_1 = child:IsA("Model") and ol(child)
        if tN_1 then
            local tN_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
            if tN_2 then
                local tS_1 = tO and (tN_2.Position - tO.Position).Magnitude or 0
                if tR <= 0 or tS_1 <= tR then
                    local tS_3 = child:GetAttribute("ItemName") or child.Name
                    local tT = child:GetAttribute("Mutation") or "Normal"
                    local tU = o3(tS_3, 1, tT)
                    local tS_4 = nw("FightPriority", "Best Income")
                    local tT_1 = tU
                    if tS_4 == "Nearest" and tO then
                        tT_1 = -tS_1
                    elseif tS_4 == "Weakest" then
                        tT_1 = -tU
                    end
                    if tP == nil or tT_1 > tP then
                        tQ = child
                        tP = tT_1
                    end
                end
            end
        end
    end
    return tQ
end
function fns.fn444(c0)
    local attr = c0:GetAttribute("OriginalName")
    local so = c0:GetAttribute("ItemLevel") or 1
    local sp = (c0:GetAttribute("Mutation"))
    local st = if sp then 1 else 0
    local sr = 1572 * st + 2947 * (1 - st)
    local ss = 3348 * st + 3004 * (1 - st)
    if not ((sr * 3758 + ss * 159 + sr * ss) % 16777213 == 11702964) then
        sp = "Normal"
    end
    return o3(attr, so, sp)
end
function fns.fn446()
    if nI() then
        o4()
        return
    end
    local uy = oe()
    if #uy == 0 then
        local uy_1 = ow()
        if uy_1 then
            n4(uy_1.Position)
        end
        return
    end
    local uy_2 = nB()
    if not uy_2 then
        return
    end
    local uz = oB()
    if not uz then
        return
    end
    if (uz.Position - uy_2.Position).Magnitude > 8 then
        n4(uy_2.Position)
    end
end
function fns.worker()
    local wG_1
    while true do
        task.wait(1)
        if oa.Unloaded then
            break
        end
        local wF = math.floor(os.clock() - ov)
        if wF < 60 then
            wG_1 = wF .. "s"
        elseif wF < 3600 then
            wG_1 = string.format("%dm %ds", wF // 60, wF % 60)
        else
            wG_1 = string.format("%dh %dm", wF // 3600, wF % 3600 // 60)
        end
        Label:SetText(oQ("Session time", wG_1, oo))
    end
end
function fns.fn454()
    nR(oD, "Copied Discord invite to clipboard")
end
function fns.fn476(bK)
    local rb = ok.Mutations[bK or "Normal"]
    return rb and rb.Multiplier or 1
end
function fns.fn487()
    local wr = nO()
    local ws = od("BuyUpgradeMax")
    if o2("Power") then
        local wt_1 = oN:GetAttribute("PowerLevel") or 1
        local wt_2 = ob.Power[wt_1 + 1]
        if wt_2 then
            if ws then
                pcall(function()
                    RequestPowerBuyMax:FireServer()
                end)
            else
                if wr >= (wt_2.MoneyCost or 0) then
                    pcall(function()
                        RequestPowerUpgrade:FireServer()
                    end)
                end
            end
        end
    end
    if o2("Speed") then
        local wt_3 = oN:GetAttribute("SpeedLevel") or 1
        local wt_4 = ob.Speed[wt_3 + 1]
        if wt_4 then
            if ws then
                pcall(function()
                    RequestSpeedBuyMax:FireServer()
                end)
            else
                if wr >= (wt_4.MoneyCost or 0) then
                    pcall(function()
                        RequestSpeedUpgrade:FireServer()
                    end)
                end
            end
        end
    end
    if o2("Jump") then
        local wt_5 = oN:GetAttribute("JumpLevel") or 1
        local wt_6 = ob.Jump[wt_5 + 1]
        local wu_6 = wt_6
        if wu_6 then
            local wv = wt_6.MoneyCost
            local wz = if wv then 1 else 0
            local wx = 1482 * wz + 3608 * (1 - wz)
            local wy = 3663 * wz + 2473 * (1 - wz)
            if not ((wx * 931 + wy * 759 + wx * wy) % 16777213 == 9588525) then
                wv = 0
            end
            wu_6 = wr >= wv
        end
        if wu_6 then
            pcall(function()
                RequestJumpUpgrade:FireServer()
            end)
        end
    end
    if o2("Carry") then
        local wt_7 = oN:GetAttribute("CarryLevel") or 1
        local wt_8 = ob.Carry[wt_7 + 1]
        if wt_8 then
            if ws then
                pcall(function()
                    RequestCarryBuyMax:FireServer()
                end)
            else
                if wr >= (wt_8.MoneyCost or 0) then
                    pcall(function()
                        RequestCarryUpgrade:FireServer()
                    end)
                end
            end
        end
    end
end
local function fn501(ah, ai)
    local qn = oq[ah.Rarity] or 0
    local qn_1 = oq[ai.Rarity] or 0
    if qn ~= qn_1 then
        return qn < qn_1
    elseif ah.Income ~= ai.Income then
        return ah.Income < ai.Income
    else
        return ah.Name < ai.Name
    end
end
local function worker3()
    while not oa.Unloaded do
        if nI() then
            pcall(o4)
            local w3 = nC > 0 and tick() - nC >= 10
            if w3 then
                pcall(oS)
                nC = tick()
            end
        end
        task.wait(0.25)
    end
end
local function onOnClientEvent(en)
    if en == "start" then
        nY = true
        nJ = tick()
        nN = o9()
    end
end
local function fn536()
    local Character = oN.Character
    local q0 = Character and Character:FindFirstChildOfClass("Humanoid")
    return q0
end
local function fn585()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    on = tick()
end
local function worker6()
    while not oa.Unloaded do
        if od("AutoCollect") then
            pcall(om)
        end
        if od("AutoPlace") then
            pcall(oS)
        end
        if od("AutoReplace") then
            pcall(oY)
        end
        if od("AutoUpgradeItems") then
            pcall(nv)
        end
        task.wait(nX("PlaceDelay", 0.35))
    end
end
local function fn603()
    local te = ow()
    local tf = not te or not te:IsA("BasePart")
    if tf then
        return false
    end
    return n4((te.CFrame * CFrame.new(te.Size.X / 2 + 35, 0, 0)).Position)
end
local function fn635()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        local rn_1 = child:IsA("Model") and child:GetAttribute("Owner") == oN.UserId
        if rn_1 then
            return child
        end
    end
    return nil
end
local function worker4()
    while not oa.Unloaded do
        if od("AutoDig") then
            pcall(n3)
        end
        task.wait(nX("DigDelay", 0.35))
    end
end
local function worker5()
    while not oa.Unloaded do
        if od("AutoFight") then
            pcall(oW)
        else
            local w6 = nY and od("AutoCombatMulti")
            if w6 then
                pcall(o8)
            end
        end
        task.wait(nX("FightDelay", 0.4))
    end
end
local function fn682()
    if not od("AutoReturnBase") then
        return false
    end
    local tm = o9()
    if tm <= 0 then
        return false
    end
    return tm >= nQ()
end
local function fn685()
    local wB_1
    local wA_1
    if identifyexecutor then
        wB_1, wA_1 = identifyexecutor()
        local wC = wB_1 ~= ""
        local wD = type(wB_1) == "string" and wC
        if wD then
            local wC_1 = type(wA_1) == "string" and wA_1 ~= "" and wB_1 .. " " .. wA_1
            nK = wC_1 or wB_1
        end
    end
end
local function fn724(aC, aD)
    return string.format('<font color="%s">%s</font>', aD, aC)
end
local function fn729(bo, bp)
    local qT = nw(bo, "Common")
    return (oq[bp] or 0) >= (oq[qT] or 1)
end
local function fn731()
    nY = false
    nU = nil
    nJ = 0
end
local function fn734(h5)
    local wp = oR("BuyUpgrades")
    if ox(wp) then
        return wp[h5] == true
    end
    return true
end
local function fn740(bW)
    local rk = ok.GetItemData(bW)
    return rk and rk.Rarity or "Common"
end
local function fn746(cn)
    local Drills = DrillConfigurations.Drills
    local rO = cn
    local rT = if rO then 1 else 0
    local rR = 1045 * rT + 291 * (1 - rT)
    local rS = 3628 * rT + 1471 * (1 - rT)
    if not ((rR * 504 + rS * 1090 + rR * rS) % 16777213 == 8272460) then
        rO = ot()
    end
    local rP = Drills[rO]
    return rP and rP.Damage or 1
end
local function fn758()
    local th = oB()
    local ti = nx()
    if not th or not ti then
        return false
    end
    return (th.Position - ti).Magnitude <= 28
end
local function fn815(ch)
    if ch == "Default" then
        return true
    end
    return oN:GetAttribute(oP(ch)) == true
end
local function fn848()
    local s9 = ow()
    local ta = s9 and s9:IsA("BasePart")
    if ta then
        return s9.Position
    end
    local Map = Workspace:FindFirstChild("Map")
    local ta_1 = Map and Map:FindFirstChild("TutorialBack")
    local s9_2 = ta_1
    if ta_1 then
        ta_1 = s9_2:IsA("BasePart")
    end
    if ta_1 then
        return s9_2.Position
    end
    return nil
end
local function fn853(a8)
    for k, v in pairs(a8) do
        if v then
            return true
        end
    end
    return false
end
local function fn857()
    local Map = Workspace:FindFirstChild("Map")
    local sz = Map and Map:FindFirstChild("Claim")
    return sz
end
local function fn872(fg)
    for i, v in ipairs(oJ()) do
        if v:GetAttribute("OriginalName") == fg then
            return true
        end
    end
    local t5 = oc()
    if not t5 then
        return false
    end
    for i, v in ipairs(nM(t5)) do
        if v:GetAttribute("PlacedItem") == fg then
            return true
        end
    end
    return false
end
local function fn875(aT, aU)
    local qv = Options[aT]
    local qw = qv and tonumber(qv.Value)
    return qw or aU
end
local function fn880()
    local DrillZones = Workspace:FindFirstChild("DrillZones")
    local sF = {}
    if not DrillZones then
        return sF
    end
    for i, child in ipairs(DrillZones:GetChildren()) do
        local sE_1 = child:IsA("BasePart") and oA[child.Name]
        if sE_1 then
            table.insert(sF, child)
        end
    end
    table.sort(sF, function(di, dj)
        local sB = tonumber(string.match(di.Name, "%d+")) or 0
        local sC = tonumber(string.match(dj.Name, "%d+")) or 0
        return sB > sC
    end)
    return sF
end
local function fn886()
    local um = (oN:GetAttribute("RebirthLevel"))
    local ur = if um then 1 else 0
    local up = 2225 * ur + 4026 * (1 - ur)
    local uq = 3513 * ur + 584 * (1 - ur)
    if not ((up * 139 + uq * 2808 + up * uq) % 16777213 == 1212991) then
        um = 0
    end
    local um_1 = RebirthConfigurations.Rebirths[um + 1]
    if not um_1 then
        return false
    end
    for i, v in ipairs(um_1.Requirements) do
        if v.Type == "Cash" then
            local um_2 = nO()
            if um_2 < (v.Amount or 0) then
                return false
            end
        elseif v.Type == "Item" then
            if not nF(v.Name) then
                return false
            end
        elseif v.Type == "Power" then
            local um_3 = (oN:GetAttribute("PowerLevel"))
            local ur_1 = if um_3 then 1 else 0
            local up_1 = 3494 * ur_1 + 441 * (1 - ur_1)
            local uq_1 = 1475 * ur_1 + 2088 * (1 - ur_1)
            if not ((up_1 * 2701 + uq_1 * 815 + up_1 * uq_1) % 16777213 == 15793069) then
                um_3 = 1
            end
            if um_3 < (v.PowerLevel or 0) then
                return false
            end
        end
    end
    return true
end
local function onOnClientEvent2()
    op()
    if nI() then
        nC = tick()
        nG = tick() + math.max(nX("BaseReturnDelay", 1.25), 0.5)
        oC()
    end
end
local function onUnload()
    oa:Unload()
end
local function fn916(bi, bj)
    local qQ = oR(bi)
    if not ox(qQ) then
        return true
    end
    return qQ[bj or "Normal"] == true
end
local function fn920(eK)
    local tF = eK:GetAttribute("ItemName") or eK.Name
    local tF_1 = eK:GetAttribute("Rarity") or oz(tF)
    local tF_2 = (eK:GetAttribute("Mutation"))
    local tM = if tF_2 then 1 else 0
    local tK = 3583 * tM + 4008 * (1 - tM)
    local tL = 602 * tM + 603 * (1 - tM)
    if not ((tK * 73 + tL * 3328 + tK * tL) % 16777213 == 4421981) then
        tF_2 = "Normal"
    end
    local tI = tF_2
    if not of("FightCharacters", tF) then
        return false
    elseif not pa("FightMinRarity", tF_1) then
        return false
    elseif not of("FightRarities", tF_1) then
        return false
    elseif not nT("FightMutations", tI) then
        return false
    else
        return true
    end
end
local function fn924(aO)
    local qs = Toggles[aO]
    return qs ~= nil and qs.Value == true
end
RequestRebirth = nil
nv = nil
nw = nil
nx = nil
nA = nil
nB = nil
nC = nil
connection = nil
nF = nil
nG = nil
nH = nil
nI = nil
nJ = nil
nK = nil
nM = nil
nN = nil
nO = nil
nQ = nil
nR = nil
nS = nil
nT = nil
nU = nil
Options = nil
nX = nil
nY = nil
Toggles = nil
n0 = nil
n2 = nil
n3 = nil
n4 = nil
n7 = nil
n8 = nil
RebirthConfigurations = nil
oa = nil
ob = nil
oc = nil
od = nil
oe = nil
of = nil
DrillConfigurations = nil
local ny, CombatMultiplier, nD, StartCombat, CollectCash, EquipDrill, PurchaseDrill, PickupFromSlot, PlaceItem, n6
oh = nil
oi = nil
oj = nil
ok = nil
ol = nil
om = nil
on = nil
oo = nil
op = nil
oq = nil
ot = nil
ou = nil
ov = nil
ow = nil
ox = nil
oy = nil
oz = nil
oA = nil
oB = nil
oC = nil
oD = nil
RequestPowerBuyMax = nil
oF = nil
oG = nil
RequestCarryBuyMax = nil
oJ = nil
RequestSpeedBuyMax = nil
oN = nil
RequestPowerUpgrade = nil
oP = nil
oQ = nil
oR = nil
oS = nil
Workspace = nil
oU = nil
RequestCarryUpgrade = nil
oW = nil
VirtualUser = nil
oY = nil
Label = nil
RequestJumpUpgrade = nil
connection2 = nil
o2 = nil
o3 = nil
o4 = nil
RequestSpeedUpgrade = nil
local oI, PlayerGui, oM, o0
o6 = nil
o8 = nil
o9 = nil
pa = nil
local RequestItemUpgrade
RequestItemUpgrade = nil
VirtualUser, Workspace, oN, PlayerGui, oD, oy, ok, DrillConfigurations, ob, RebirthConfigurations, PlaceItem, PickupFromSlot, PurchaseDrill, EquipDrill, CollectCash, StartCombat, CombatMultiplier, RequestRebirth, RequestItemUpgrade, RequestSpeedUpgrade, RequestJumpUpgrade, RequestCarryUpgrade, RequestPowerUpgrade, RequestSpeedBuyMax, RequestCarryBuyMax, RequestPowerBuyMax, oA, xf_33, oq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local xf_41 = game:GetService("Players")
local xf_30 = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
oN = xf_41.LocalPlayer
PlayerGui = oN:WaitForChild("PlayerGui")
local xf_18 = "Drill for Anime"
oD = "https://discord.gg/ehKVq7pf7v"
oy = "https://rscripts.net/@Ouroboros"
local xf_44 = xf_30:WaitForChild("Modules")
local xf_13 = xf_30:WaitForChild("Events")
if (not RequestPowerUpgrade or xf_33) and ((not PurchaseDrill) and (RequestPowerUpgrade or RequestPowerUpgrade)) and not ((not RequestPowerUpgrade or xf_33) and ((not PurchaseDrill) and (RequestPowerUpgrade or RequestPowerUpgrade))) then
    xf_44 = require(DrillConfigurations:WaitForChild("ItemConfigurations"))
    ob = require(DrillConfigurations:WaitForChild("DrillConfigurations"))
    ok = require(DrillConfigurations:WaitForChild("UpgradeConfigurations"))
else
    ok = require(xf_44:WaitForChild("ItemConfigurations"))
    DrillConfigurations = require(xf_44:WaitForChild("DrillConfigurations"))
    ob = require(xf_44:WaitForChild("UpgradeConfigurations"))
end
RebirthConfigurations = require(xf_44:WaitForChild("RebirthConfigurations"))
PlaceItem = xf_30:WaitForChild("PlaceItem")
PickupFromSlot = xf_30:WaitForChild("PickupFromSlot")
PurchaseDrill = xf_30:WaitForChild("PurchaseDrill")
EquipDrill = xf_30:WaitForChild("EquipDrill")
CollectCash = xf_30:WaitForChild("CollectCash")
StartCombat = xf_13:WaitForChild("StartCombat")
local xf_2 = xf_13:WaitForChild("CombatUpdate")
local xf_15 = xf_13:WaitForChild("CombatEnded")
CombatMultiplier = xf_13:WaitForChild("CombatMultiplier")
RequestRebirth = xf_13:WaitForChild("RequestRebirth")
RequestItemUpgrade = xf_13:WaitForChild("RequestItemUpgrade")
RequestSpeedUpgrade = xf_13:WaitForChild("RequestSpeedUpgrade")
RequestJumpUpgrade = xf_13:WaitForChild("RequestJumpUpgrade")
RequestCarryUpgrade = xf_13:WaitForChild("RequestCarryUpgrade")
RequestPowerUpgrade = xf_13:WaitForChild("RequestPowerUpgrade")
RequestSpeedBuyMax = xf_13:WaitForChild("RequestSpeedBuyMax")
RequestCarryBuyMax = xf_13:WaitForChild("RequestCarryBuyMax")
RequestPowerBuyMax = xf_13:WaitForChild("RequestPowerBuyMax")
oA = {
    DrillZone1 = 20,
    DrillZone2 = 75,
    DrillZone3 = 350,
    DrillZone4 = 500,
    DrillZone5 = 750,
    DrillZone6 = 1250,
    DrillZone7 = 2000,
    DrillZone8 = 3500,
    DrillZone9 = 8000,
    DrillZone10 = 20000,
    DrillZone11 = 35000,
    DrillZone12 = 50000,
    DrillZone13 = 65000,
    DrillZone14 = 100000,
    DrillZone15 = 150000,
    DrillZone16 = 250000,
    DrillZone17 = 375000,
    DrillZone18 = 500000,
    DrillZone19 = 650000,
    DrillZone20 = 800000,
    DrillZone21 = 1000000,
    DrillZone22 = 1250000,
    DrillZone23 = 1500000,
    DrillZone24 = 1750000,
    DrillZone25 = 2000000,
    DrillZone26 = 2500000,
    DrillZone27 = 3000000,
    DrillZone28 = 3750000,
    DrillZone29 = 4500000,
    DrillZone30 = 5500000,
    DrillZone31 = 6500000,
    DrillZone32 = 8000000,
    DrillZone33 = 10000000
}
if not RequestPowerUpgrade and xf_13 and (not DrillConfigurations or not xf_13) and (not RequestCarryBuyMax and DrillConfigurations and "https://rscripts.net/@Ouroboros") and ((not RequestCarryBuyMax or not RequestPowerUpgrade or xf_13 and not RequestPowerUpgrade) and (RequestCarryBuyMax and xf_13 and (not RequestCarryBuyMax or not xf_13))) or xf_33 and not DrillConfigurations and (xf_33 or oy) and (DrillConfigurations or not RequestCarryBuyMax or "https://rscripts.net/@Ouroboros") and (not xf_33 and not xf_33 and (RequestCarryBuyMax or oy) or (xf_13 or false or RequestPowerUpgrade and xf_33)) or not (not RequestPowerUpgrade and xf_13 and (not DrillConfigurations or not xf_13) and (not RequestCarryBuyMax and DrillConfigurations and "https://rscripts.net/@Ouroboros") and ((not RequestCarryBuyMax or not RequestPowerUpgrade or xf_13 and not RequestPowerUpgrade) and (RequestCarryBuyMax and xf_13 and (not RequestCarryBuyMax or not xf_13))) or xf_33 and not DrillConfigurations and (xf_33 or oy) and (DrillConfigurations or not RequestCarryBuyMax or "https://rscripts.net/@Ouroboros") and (not xf_33 and not xf_33 and (RequestCarryBuyMax or oy) or (xf_13 or false or RequestPowerUpgrade and xf_33))) then
    xf_33 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Limited", "Secret", "Godly" }
else
    ok = { "Common", "Rare", "Legendary", "Mythical", "Epic", "Limited", "Secret", "Godly", "Uncommon" }
end
oq = {}
for i, v in ipairs(xf_33) do
    oq[v] = i
end
xf_44, xf_13, xf_28 = nil, nil, nil
if (not xf_28 and xf_13 or xf_28 and 15 or (xf_13 or not xf_13) and (not xf_44 and xf_13)) and ((xf_28 or not xf_13) and (xf_28 and false) or (xf_44 or xf_44) and false) and not ((not xf_28 and xf_13 or xf_28 and 15 or (xf_13 or not xf_13) and (not xf_44 and xf_13)) and ((xf_28 or not xf_13) and (xf_28 and false) or (xf_44 or xf_44) and false)) then
else
    xf_44 = { "Normal", "Golden", "Diamond", "Magma", "Void" }
end
xf_13 = { "Power", "Speed", "Jump", "Carry" }
xf_28 = {}
for k in pairs(oA) do
    table.insert(xf_28, k)
end
xf_30 = nil
xf_41 = 2
repeat
    local yb = bit32.rrotate(bit32.bxor(bit32.lrotate(xf_41, 17), string.byte(tostring(xf_30))), 25)
    if bit32.bxor(bit32.lrotate(bit32.bxor(yb, 864188082), 26), 3368946138) ~= bit32.lrotate(yb, 26) then
        table.sort(xf_30, fns.fn96)
        xf_28 = {}
    else
        table.sort(xf_28, fns.fn96)
        xf_30 = {}
    end
    xf_41 = (xf_41 + 0) % 4
until (xf_41 * 3 + 2) % 4 == 0
local xf_35 = {}
for k, v in pairs(DrillConfigurations.Drills) do
    xf_41 = table.insert
    xf_21 = v.LayoutOrder or 0
    xf_41(xf_35, { Name = k, Order = xf_21 })
end
local xf_7 = 3
repeat
    xf_41 = (vector.create((xf_7 * 1 + 6) % 11 + 1, (xf_7 * 1 + 7) % 13 + 1, (xf_7 * 11 + 7) % 17 + 1))
    xf_21 = (vector.create((xf_7 * 2 + 8) % 11 + 1, (xf_7 * 8 + 3) % 13 + 1, (xf_7 * 11 + 4) % 17 + 1))
    local yl = vector.cross(xf_41, xf_21)
    local ym = vector.dot(xf_41, xf_21)
    if vector.dot(yl, yl) + ym * ym == vector.dot(xf_41, xf_41) * vector.dot(xf_21, xf_21) + 4 then
        table.sort(xf_35, fns.fn137)
    else
        table.sort(xf_35, fns.fn137)
    end
    xf_7 = (xf_7 + 0) % 4
until (xf_7 * 3 + 1) % 4 == 2
for i, v in ipairs(xf_35) do
    table.insert(xf_30, v.Name)
end
xf_41 = {}
xf_35 = {}
for k, v in pairs(ok.Items) do
    xf_21 = table.insert
    xf_7 = v.Income or 0
    xf_37 = v.Rarity or "Common"
    xf_21(xf_35, { Name = k, Income = xf_7, Rarity = xf_37 })
end
table.sort(xf_35, fn501)
for i, v in ipairs(xf_35) do
    table.insert(xf_41, v.Name)
end
oa, SaveManager, Toggles, Options, oo, nY, nU, nN, nJ, nG, nC, nR, nA, o6, oQ, od, nX, nw, oR, ox, of, nT, pa, oB, oi, n4, nO, nH, o3, oz, oc, nM, oP, oI, ot, oh, nQ, o9, oJ, n6, o0, oM, ow, oe, nB, nx, oC, oj, n0, nI, o4, op, o8, ol, nD, nF, oF, n3, oW, ny, oS, oY, om, nv, n7, nS, n8, o2, oG = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oa = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if not n7 and nI and (nI or nX) and ((not nI or nX) and (nX or o6)) or not (not n7 and nI and (nI or nX) and ((not nI or nX) and (nX or o6))) then
    xf_9 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = oa.Toggles
else
    loadstring(game:HttpGet(SaveManager .. "addons/ThemeManager.lua"))()
    oa = loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
    xf_9 = Toggles.Toggles
end
Options = oa.Options
nR = fns.fn184
nA = fns.fn454
o6 = fn724
oQ = fns.fn154
local xf_40 = "#7fd47f"
local xf_10 = "#6ec1ff"
oo = "#e8a34d"
local xf_24 = "#8b93a3"
od = fn924
nX = fn875
nw = fns.fn64
oR = fns.fn290
ox = fn853
of = fns.fn45
nT = fn916
pa = fn729
oB = fns.fn9
oi = fn536
n4 = fns.fn82
nO = fns.fn341
nH = fns.fn476
o3 = fns.fn39
oz = fn740
oc = fn635
nM = fns.fn79
oP = fns.fn131
oI = fn815
if not o2 and oW or (not o2 or false) or (not nO and not of or of and o2) or not (not o2 and oW or (not o2 or false) or (not nO and not of or of and o2)) then
    ot = fns.fn141
    oh = fn746
else
    oh = fns.fn141
    ot = fn746
end
nQ = fns.fn350
o9 = fns.fn203
oJ = function()
    local cG
    cG = {}
    local function cH(cI)
        if not cI then
            return
        end
        for i, child in ipairs(cI:GetChildren()) do
            local r8 = child:IsA("Tool") and child:GetAttribute("OriginalName")
            if r8 then
                table.insert(cG, child)
            end
        end
    end
    cH(oN:FindFirstChildOfClass("Backpack"))
    cH(oN.Character)
    return cG
end
n6 = fns.fn367
o0 = fns.fn444
oM = fns.fn83
ow = fn857
oe = fn880
nB = fns.fn257
nY = false
nU = nil
nN = 0
nJ = 0
nG = 0
nC = 0
nx = fn848
oC = fns.fn61
oj = fn603
if (false or not o0) and (not o0 and o0) or (false or not o0 or not o0 and o0) or not ((false or not o0) and (not o0 and o0) or (false or not o0 or not o0 and o0)) then
    n0 = fn758
    nI = fn682
    o4 = fns.fn91
else
    o4 = fn758
    n0 = fn682
    nI = fns.fn91
end
op = fn731
xf_2.OnClientEvent:Connect(onOnClientEvent)
xf_15.OnClientEvent:Connect(onOnClientEvent2)
o8 = function()
    local MainGui = PlayerGui:FindFirstChild("MainGui")
    if not MainGui then
        return
    end
    local tw = { { Name = "X4Power", Mult = 4 }, { Name = "X3Power", Mult = 3 }, { Name = "X2Power", Mult = 2 } }
    for i, v in ipairs(tw) do
        local tE = v
        local tw_1 = MainGui:FindFirstChild(tE.Name)
        if tw_1 and tw_1.Visible then
            pcall(function()
                CombatMultiplier:FireServer(tE.Mult)
            end)
            return
        end
    end
end
ol = fn920
nD = fns.fn423
nF = fn872
oF = fn886
n3 = fns.fn446
oW = function()
    local uE
    local uF = nY and nJ > 0 and tick() - nJ > 45
    if uF then
        op()
    end
    if nI() then
        o4()
        return
    end
    if nY then
        if od("AutoCombatMulti") then
            o8()
        end
        return
    end
    if o9() >= nQ() then
        if od("AutoReturnBase") then
            o4()
        end
        return
    end
    uE = nD()
    if not uE then
        return
    end
    local uF_1 = uE.PrimaryPart
    local uK = if uF_1 then 1 else 0
    local uI = 2197 * uK + 2527 * (1 - uK)
    local uJ = 144 * uK + 3197 * (1 - uK)
    if not ((uI * 2120 + uJ * 49 + uI * uJ) % 16777213 == 4981064) then
        uF_1 = uE:FindFirstChildWhichIsA("BasePart", true)
    end
    local uG = uF_1
    if uG then
        n4(uG.Position)
    end
    nU = uE
    nN = o9()
    nJ = tick()
    pcall(function()
        StartCombat:FireServer(uE)
    end)
end
ny = fns.fn196
oS = function()
    local uQ = oc()
    if not uQ then
        return
    end
    local uR = {}
    for i, v in ipairs(nM(uQ)) do
        if not v:GetAttribute("PlacedItem") then
            table.insert(uR, v)
        end
    end
    if #uR == 0 then
        return
    end
    local uQ_1 = {}
    for i, v in ipairs(oJ()) do
        if n6(v, "PlaceRarities", "PlaceMinRarity", "PlaceMutations") then
            table.insert(uQ_1, v)
        end
    end
    table.sort(uQ_1, function(gi, gj)
        return o0(gi) > o0(gj)
    end)
    for i, v in ipairs(uQ_1) do
        local uP = uR[i]
        if not uP then
            break
        end
        ny(v)
        task.wait(0.1)
        pcall(function()
            PlaceItem:FireServer(uP)
        end)
        task.wait(nX("PlaceDelay", 0.35))
    end
end
oY = function()
    local u8 = oc()
    if not u8 then
        return
    end
    local u9 = {}
    for i, v in ipairs(oJ()) do
        if n6(v, "ReplaceRarities", "ReplaceMinRarity", "ReplaceMutations") then
            table.insert(u9, v)
        end
    end
    table.sort(u9, function(gC, gD)
        return o0(gC) > o0(gD)
    end)
    if #u9 == 0 then
        return
    end
    local va = {}
    for i, v in ipairs(nM(u8)) do
        local vs = v
        local attr = vs:GetAttribute("PlacedItem")
        if attr then
            local u8_2 = oM(vs)
            local vb = u8_2
            local vc
            for i, v in ipairs(u9) do
                if not va[v] then
                    local vd = o0(v)
                    local ve = nX("ReplaceMinGain", 1)
                    if vd >= u8_2 + ve and vd > vb then
                        vc = v
                        vb = vd
                    end
                end
            end
            if vc then
                va[vc] = true
                pcall(function()
                    PickupFromSlot:FireServer(vs)
                end)
                task.wait(0.2)
                ny(vc)
                task.wait(0.1)
                pcall(function()
                    PlaceItem:FireServer(vs)
                end)
                task.wait(nX("ReplaceDelay", 0.4))
            end
        end
    end
end
om = function()
    local vz = oc()
    if not vz then
        return
    end
    local vA = nX("CollectMinCash", 1)
    for i, v in ipairs(nM(vz)) do
        local vI = v
        local vz_1 = vI:GetAttribute("PendingCash") or 0
        local vz_2 = vI:GetAttribute("PlacedItem") and vz_1 >= vA
        if vz_2 then
            pcall(function()
                CollectCash:FireServer(vI)
            end)
            task.wait(0.05)
        end
    end
end
nv = function()
    local vJ = oc()
    if not vJ then
        return
    end
    local vK = ok.Upgrades.MaxLevel or 50
    for i, v in ipairs(nM(vJ)) do
        local vT = v
        local attr = vT:GetAttribute("PlacedItem")
        if attr then
            local vK_1 = vT:GetAttribute("ItemLevel") or 1
            if vK_1 < vK then
                local vK_2 = ok.GetItemData(attr)
                if vK_2 then
                    local vJ_2 = ok.GetUpgradeCost(vK_2.Income, vK_1)
                    if nO() >= vJ_2 then
                        pcall(function()
                            RequestItemUpgrade:FireServer(vT)
                        end)
                        task.wait(0.05)
                    end
                end
            end
        end
    end
end
n7 = fns.fn77
nS = function()
    local vV = oR("BuyDrills")
    local vW = ox(vV)
    local vX = nO()
    local vY = {}
    for k, v in pairs(DrillConfigurations.Drills) do
        local vZ = k ~= "Default" and not oI(k)
        if vZ then
            if not vW or vV[k] then
                local insert = table.insert
                local v_ = v.CashCost or 0
                local v0 = v.LayoutOrder or 0
                insert(vY, { Name = k, Cost = v_, Order = v0 })
            end
        end
    end
    table.sort(vY, function(hM, hN)
        return hM.Order < hN.Order
    end)
    for i, v in ipairs(vY) do
        local wd = v
        if vX >= wd.Cost then
            pcall(function()
                PurchaseDrill:FireServer(wd.Name)
            end)
            task.wait(0.2)
            vX = nO()
        end
    end
end
n8 = function()
    local wf = -1
    local we = "Default"
    for k, v in pairs(DrillConfigurations.Drills) do
        local wg = oI(k) and (v.Damage or 0) > wf
        if wg then
            we = k
            wf = v.Damage or 0
        end
    end
    if ot() ~= we then
        pcall(function()
            EquipDrill:FireServer(we)
        end)
    end
end
o2 = fn734
oG = fns.fn487
xf_7 = oa:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = oD, Copyable = true }, "|", xf_18 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
local xf_38 = {
    Info = xf_7:AddTab("Info", "info"),
    Main = xf_7:AddTab("Main", "gamepad-2"),
    Settings = xf_7:AddTab("Settings", "settings")
}
xf_38.Dig = xf_38.Main:AddSubTab("Dig", "pickaxe")
xf_38.Fight = xf_38.Main:AddSubTab("Fight", "swords")
xf_38.Place = xf_38.Main:AddSubTab("Place", "hammer")
xf_38.Shop = xf_38.Main:AddSubTab("Shop", "shopping-cart")
xf_37 = fns.fn296
for k, v in xf_38 do
    if v ~= xf_38.Main then
        xf_37(v)
    end
end
nK, xf_2, xf_21, Label, oU, xf_35 = nil, nil, nil, nil, nil, nil
xf_15 = 23
repeat
    xf_7 = (xf_15 * 2 + 1) % 3 + 1
    if xf_7 <= 2 then
        if xf_7 <= 1 then
            if xf_15 * 129523813 + 9 + 7 <= xf_15 * 129523813 + 9 + 7 + 1 then
                oU = tostring(game.JobId)
            else
                nK = tostring(game.JobId)
            end
            xf_15 = (xf_15 + 14) % 24
        else
            xf_7 = {
                "ynxdadxp",
                "rcmknz",
                "eohy",
                "thtwstosvl",
                "erkirnmexgf",
                "payuy",
                "bnqfzyjz",
                "ilnttbklld",
                "alqf",
                "gyzrvez"
            }
            local xP = xf_15
            xf_37 = xf_7[xP % 10 + 1]
            if xf_37:len() <= xf_37:gsub("(.)", "%1%1", xP % 3 % 2 + 1):len() then
                xf_35 = #oU > 18
            else
                oU = #xf_35 > 18
            end
            xf_15 = (xf_15 + 23) % 24
        end
    else
        xf_7 = (vector.create((xf_15 * 1 + 5) % 11 + 1, (xf_15 * 1 + 5) % 13 + 1, (xf_15 * 9 + 5) % 17 + 1))
        xf_37 = (vector.create((xf_15 * 7 + 6) % 11 + 1, (xf_15 * 9 + 9) % 13 + 1, (xf_15 * 10 + 11) % 17 + 1))
        xf_25 = (vector.create((xf_15 * 3 + 7) % 11 + 1, (xf_15 * 3 + 4) % 13 + 1, (xf_15 * 7 + 16) % 17 + 1))
        if vector.dot(vector.cross(xf_7, xf_37), xf_25) == vector.dot(vector.cross(xf_37, xf_25), xf_7) then
            nK = "Unknown"
            pcall(fn685)
            xf_2 = xf_38.Info:AddLeftGroupbox("Account", "circle-user")
            xf_2:AddLabel(oQ("User", oN.Name, xf_40), true)
            xf_2:AddLabel(oQ("Status", "Keyless", xf_40), true)
            xf_2:AddLabel(oQ("Executor", nK, xf_40), true)
            xf_21 = xf_38.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            xf_21:AddLabel(o6(xf_18 .. " [" .. tostring(game.PlaceId) .. "]", xf_10), true)
            xf_21:AddLabel(oQ("Place ID", tostring(game.PlaceId), xf_10), true)
            Label = xf_21:AddLabel(oQ("Session time", "0s", oo), true)
        else
            oN = "Unknown"
            pcall(fn685)
            nK = (nil):AddLeftGroupbox("Account", "circle-user")
            nK:AddLabel(xf_2("User", xf_38.Name, xf_18), true)
            nK:AddLabel(xf_2("Status", "Keyless", xf_18), true)
            nK:AddLabel(xf_2("Executor", oN, xf_18), true)
            xf_10 = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
            xf_10:AddLabel(Label(xf_21 .. " [" .. tostring(game.PlaceId) .. "]", xf_40), true)
            xf_10:AddLabel(xf_2("Place ID", tostring(game.PlaceId), xf_40), true)
            o6 = xf_10:AddLabel(xf_2("Session time", "0s", oQ), true)
        end
        xf_15 = (xf_15 + 20) % 24
    end
until (xf_15 * 17 + 5) % 24 == 21
if xf_35 then
    xf_15 = 3
    repeat
        if xf_15 * 7248303 + 8 + 6 <= xf_15 * 7248303 + 8 + 6 + 1 then
            xf_35 = string.sub(oU, 1, 18) .. "..."
        else
            oU = string.sub(xf_35, 1, 18) .. "..."
        end
        xf_15 = (xf_15 + 1) % 8
    until (xf_15 * 3 + 2) % 8 == 6
end
xf_15 = xf_35 or oU
ov, ReplaceGroup, ou, on, connection, connection2, n2 = nil, nil, nil, nil, nil, nil, nil
local xf_1 = xf_15
xf_21:AddLabel(oQ("Server", xf_1, xf_24), true)
xf_21:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
ov = os.clock()
task.spawn(fns.worker)
local ScriptsGroup = xf_38.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(o6("Included in this hub", xf_24), true)
ScriptsGroup:AddLabel(o6(xf_18, xf_10), true)
xf_25 = xf_38.Info:AddRightGroupbox("Features", "list")
xf_25:AddLabel(o6("Auto Dig", xf_10), true)
xf_25:AddLabel(o6("Auto Fight", oo), true)
xf_25:AddLabel(o6("Auto Place", oo), true)
xf_25:AddLabel(o6("Auto Shop", xf_40), true)
xf_25:AddLabel(o6("Misc Utilities", xf_24), true)
xf_37 = xf_38.Info:AddRightGroupbox("Socials", "link")
xf_37:AddButton({ Text = "Discord", Func = nA })
xf_37:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
xf_7 = xf_38.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
xf_7:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
xf_7:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
xf_7:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
xf_7:AddButton({ Text = "Copy Discord Invite", Func = nA })
xf_35 = xf_38.Info:AddRightGroupbox("FAQ", "circle-help")
xf_35:AddLabel("Where do I get a good config?", true)
xf_35:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
xf_35:AddLabel("How do I import / export configs?", true)
xf_35:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
xf_35:AddLabel("How do I report bugs?", true)
xf_35:AddLabel("Join the Discord and post it in the bugs channel.", true)
xf_35:AddLabel("How do I make suggestions?", true)
xf_35:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
xf_35:AddLabel("How do I get help or updates?", true)
xf_35:AddLabel("Join the Discord, updates and support are posted there first.", true)
xf_2 = xf_38.Dig:AddLeftGroupbox("Dig", "pickaxe")
xf_2:AddToggle("AutoDig", { Text = "Auto Dig", Default = false })
xf_2:AddDropdown("DigMode", { Text = "Dig mode", Values = { "Highest", "Best For Drill", "Specific" }, Default = "Highest" })
xf_2:AddDropdown("DigZone", { Text = "Zone", Values = xf_28, Default = "DrillZone1" })
xf_2:AddSlider("DigMaxSeconds", { Text = "Max dig time", Default = 120, Min = 5, Max = 600, Rounding = 0, Suffix = "s" })
xf_2:AddSlider("DigDelay", { Text = "Dig delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
local FightGroup = xf_38.Fight:AddLeftGroupbox("Fight", "swords")
FightGroup:AddToggle("AutoFight", { Text = "Auto Fight", Default = false })
FightGroup:AddToggle("AutoCombatMulti", { Text = "Auto Multipliers", Default = true })
FightGroup:AddToggle("AutoReturnBase", { Text = "Register Held When Full", Default = true })
FightGroup:AddSlider("BaseReturnDelay", { Text = "Register delay", Default = 1.25, Min = 0.25, Max = 5, Rounding = 2, Suffix = "s" })
FightGroup:AddDropdown("FightPriority", { Text = "Priority", Values = { "Best Income", "Nearest", "Weakest" }, Default = "Best Income" })
FightGroup:AddDropdown("FightMinRarity", { Text = "Min rarity", Values = xf_33, Default = "Common" })
FightGroup:AddDropdown("FightRarities", { Text = "Rarities", Values = xf_33, Multi = true, AllowNull = true, Default = {} })
local FiltersGroup = xf_38.Fight:AddRightGroupbox("Filters", "filter")
FiltersGroup:AddDropdown("FightCharacters", {
    Text = "Characters",
    Values = xf_41,
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Default = {}
})
FiltersGroup:AddDropdown("FightMutations", { Text = "Mutations", Values = xf_44, Multi = true, AllowNull = true, Default = {} })
FiltersGroup:AddSlider("FightMaxDistance", { Text = "Max distance", Default = 0, Min = 0, Max = 2000, Rounding = 0 })
FiltersGroup:AddSlider("FightDelay", { Text = "Fight delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
local PlaceGroup = xf_38.Place:AddLeftGroupbox("Place", "hammer")
if (on and on or (not on or PlaceGroup) or (on or PlaceGroup) and (PlaceGroup and not PlaceGroup)) and (not on and not on and (not PlaceGroup and on) or (PlaceGroup or PlaceGroup or (PlaceGroup or on))) and not ((on and on or (not on or PlaceGroup) or (on or PlaceGroup) and (PlaceGroup and not PlaceGroup)) and (not on and not on and (not PlaceGroup and on) or (PlaceGroup or PlaceGroup or (PlaceGroup or on)))) then
    ReplaceGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
    ReplaceGroup:AddDropdown("PlaceMinRarity", { Default = "Common", Values = xf_44, Text = "Min rarity" })
    ReplaceGroup:AddDropdown("PlaceRarities", { Default = {}, Values = xf_44, Multi = true, AllowNull = true, Text = "Rarities" })
    ReplaceGroup:AddDropdown("PlaceMutations", { Values = xf_33, AllowNull = true, Text = "Mutations", Multi = true, Default = {} })
    ReplaceGroup:AddSlider("PlaceDelay", { Text = "Place delay", Suffix = "s", Default = 0.35, Rounding = 2, Min = 0.1, Max = 3 })
    xf_38 = PlaceGroup.Place:AddRightGroupbox("Replace", "replace")
else
    PlaceGroup:AddToggle("AutoPlace", { Text = "Auto Place", Default = false })
    PlaceGroup:AddDropdown("PlaceMinRarity", { Text = "Min rarity", Values = xf_33, Default = "Common" })
    PlaceGroup:AddDropdown("PlaceRarities", { Text = "Rarities", Values = xf_33, Multi = true, AllowNull = true, Default = {} })
    PlaceGroup:AddDropdown("PlaceMutations", { Text = "Mutations", Values = xf_44, Multi = true, AllowNull = true, Default = {} })
    PlaceGroup:AddSlider("PlaceDelay", { Text = "Place delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
    ReplaceGroup = xf_38.Place:AddRightGroupbox("Replace", "replace")
end
ReplaceGroup:AddToggle("AutoReplace", { Text = "Auto Replace Better", Default = false })
ReplaceGroup:AddDropdown("ReplaceMinRarity", { Text = "Min rarity", Values = xf_33, Default = "Common" })
ReplaceGroup:AddDropdown("ReplaceRarities", { Text = "Rarities", Values = xf_33, Multi = true, AllowNull = true, Default = {} })
ReplaceGroup:AddDropdown("ReplaceMutations", { Text = "Mutations", Values = xf_44, Multi = true, AllowNull = true, Default = {} })
ReplaceGroup:AddSlider("ReplaceMinGain", { Text = "Min income gain", Default = 1, Min = 1, Max = 100000000, Rounding = 0 })
ReplaceGroup:AddSlider("ReplaceDelay", { Text = "Replace delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
local CollectGroup = xf_38.Place:AddLeftGroupbox("Collect", "coins")
CollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
CollectGroup:AddSlider("CollectMinCash", { Text = "Min pending cash", Default = 1, Min = 1, Max = 1000000000, Rounding = 0 })
CollectGroup:AddToggle("AutoUpgradeItems", { Text = "Auto Upgrade Characters", Default = false })
local RebirthGroup = xf_38.Shop:AddLeftGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local DrillsGroup = xf_38.Shop:AddLeftGroupbox("Drills", "pickaxe")
DrillsGroup:AddToggle("AutoBuyDrills", { Text = "Auto Buy Drills", Default = false })
DrillsGroup:AddToggle("AutoEquipBestDrill", { Text = "Auto Equip Best", Default = true })
DrillsGroup:AddDropdown("BuyDrills", { Text = "Drills", Values = xf_30, Multi = true, AllowNull = true, Default = {} })
local UpgradesGroup = xf_38.Shop:AddRightGroupbox("Upgrades", "arrow-big-up")
UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
UpgradesGroup:AddToggle("BuyUpgradeMax", { Text = "Buy Max", Default = false })
UpgradesGroup:AddDropdown("BuyUpgrades", {
    Text = "Upgrades",
    Values = xf_13,
    Multi = true,
    AllowNull = true,
    Default = { Power = true, Speed = true, Jump = true, Carry = true }
})
UpgradesGroup:AddSlider("ShopDelay", { Text = "Shop delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
local MenuGroup = xf_38.Settings:AddLeftGroupbox("Menu", "settings")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
oa.ToggleKeybind = Options.MenuKeybind
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
oa:OnUnload(fns.fn358)
xf_9:SetLibrary(oa)
xf_9:SetFolder("OuroborosHub")
xf_9:SaveDefault("Monochrome")
xf_9:ApplyToTab(xf_38.Settings)
xf_9:LoadDefault()
SaveManager:SetLibrary(oa)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/DrillForAnime")
SaveManager:BuildConfigSection(xf_38.Settings)
SaveManager:LoadAutoloadConfig()
ou = tick()
on = tick()
pcall(function()
    for i, v in ipairs(getconnections(oN.Idled)) do
        local wO = v
        pcall(function()
            wO:Disable()
        end)
    end
end)
n2 = fn585
connection = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection2 = UserInputService.InputChanged:Connect(fns.onInputChanged)
oa:OnUnload(fns.fn319)
task.spawn(fns.worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(fns.worker7)
oa:Notify("Drill for Anime loaded")
