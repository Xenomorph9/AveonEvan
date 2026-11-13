local oj
local n0
local oL
local oq
local o9
local n6
local oR
local pf
local oc
local oX
local Library
local LocalPlayer
local o2
local n_
local op
local o8
local oQ
local ox
local oW
local oh
local o1
local nZ
local n4
local SlotCosts
local pd
local oa
local UpgradeTree
local oC
local og
local oI
local on
local o6
local n3
local PlotLevels
local pc
local n9
local oU
local oB
local of
local o_
local nX
local oH
local o5
local n2
local oN
local ou
local pb
local n8
local StockUpgradeLevels
local Knit
local oZ
local nW
local ForestLevels
local Toggles
local o4
local CFrame2
local oM
local Workspace
local pa
local oS
local oz
local pg
local Options
local nV
local function fn24(db)
    local sK_1
    local sJ_1
    if type(db) ~= "string" then
        return nil
    end
    local sI = string.gsub(db, ",", "")
    sJ_1, sK_1 = string.match(sI, "%$?([%d%.]+)%s*([KkMmBbTtQa]*)")
    local sI_1 = tonumber(sJ_1)
    if not sI_1 then
        return nil
    end
    local sJ_2 = 1
    local sM = sK_1
    local sQ = if sM then 1 else 0
    local sO = 1422 * sQ + 1023 * (1 - sQ)
    local sP = 3169 * sQ + 2668 * (1 - sQ)
    if not ((sO * 1549 + sP * 1625 + sO * sP) % 16777213 == 11858621) then
        sM = ""
    end
    local sK_2 = string.lower(sM)
    if sK_2 == "k" then
        sJ_2 = 1000
    elseif sK_2 == "m" then
        sJ_2 = 1000000
    elseif sK_2 == "b" then
        sJ_2 = 1000000000
    elseif sK_2 == "t" then
        sJ_2 = 1000000000000
    elseif sK_2 == "qa" then
        sJ_2 = 1000000000000000
    end
    return sI_1 * sJ_2
end
local function fn33(bb)
    if not (bb and bb.Parent and bb.Enabled) then
        return false
    elseif oC(bb, "general_lock") then
        return false
    elseif oC(bb, tostring(LocalPlayer.UserId) .. "_locked") then
        return false
    else
        return true
    end
end
local function fn36(br, bs, bt)
    local qK = SlotCosts[br] or SlotCosts[tostring(br)]
    local qK_1 = type(qK) == "table" and qK[bs]
    if type(qK_1) ~= "table" then
        return nil
    end
    return tonumber(qK_1[bt])
end
local function fn48()
    local w1 = oQ()
    if not w1 then
        return
    end
    if Toggles.TpToRoll.Value then
        CFrame2 = w1.CFrame
        w1.CFrame = CFrame.new(109, 6, -180)
        w1.AssemblyLinearVelocity = Vector3.zero
    elseif CFrame2 then
        w1.CFrame = CFrame2
        w1.AssemblyLinearVelocity = Vector3.zero
        CFrame2 = nil
    end
end
local function fn141(bP)
    local q2 = 0
    if bP then
        local q3_1 = tonumber(bP.stockUpgradeLevel) or 0
        q2 = q3_1
        if type(bP.Upgrades) == "table" then
            for k, v in bP.Upgrades do
                if v == true then
                    local q3_2 = UpgradeTree.Nodes[k]
                    local q4 = q3_2 and q3_2.Upgrade == "StockUpgrade" and type(q3_2.Level) == "number"
                    if q4 then
                        q2 = math.max(q2, q3_2.Level)
                    end
                end
            end
        end
    end
    local q3_3 = StockUpgradeLevels[q2] or StockUpgradeLevels[0]
    local q2_1 = q3_3
    if q3_3 then
        q3_3 = tonumber(q2_1.stockCapacity)
    end
    return q3_3 or 5
end
local function fn142()
    local vf = oL()
    if not vf then
        return
    end
    local vg = oq("RollUpgradeList")
    for k, v in o5 do
        if vg[v] then
            local vh = oR[v]
            local vi = vh and o6(vf, vh)
            if vi then
                return
            end
        end
    end
end
local function fn161()
    local sz = oq("RollMutations")
    local sA = {}
    for k, v in nW do
        if sz[v] then
            sA[#sA + 1] = v
        end
    end
    return sA
end
local function fn256(gm, gn, go)
    oN("WorkerActionsService", "RequestCollectSlotCash", gm, gn, go)
end
local function fn294(a7, a8)
    local attr = a7:GetAttribute(a8)
    return attr == true or attr == "true"
end
local function fn301()
    local rn = oc()
    if not rn then
        return {}
    end
    local ro = {}
    local Floors = rn:FindFirstChild("Floors")
    if not Floors then
        return ro
    end
    for i, child in Floors:GetChildren() do
        local Farms = child:FindFirstChild("Farms")
        if Farms then
            for i, child in Farms:GetChildren() do
                for i, child in child:GetChildren() do
                    local rn_2 = child:IsA("Model") and string.find(child.Name, "Forest", 1, true)
                    if rn_2 then
                        local Trees = child:FindFirstChild("Trees")
                        if Trees then
                            for i, child in Trees:GetChildren() do
                                local rn_4 = child:IsA("Model") and child:GetAttribute("TreeOwnerUserId") == LocalPlayer.UserId and child:GetAttribute("PlayerCutAvailable") == true
                                if rn_4 then
                                    local rp_1 = tonumber(child:GetAttribute("PlayerCuttingUserId")) or 0
                                    rn_4 = rp_1 == 0
                                end
                                if rn_4 then
                                    ro[#ro + 1] = child
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    return ro
end
local function fn333()
    local Character = LocalPlayer.Character
    local pQ = Character and Character:FindFirstChildOfClass("Humanoid")
    return pQ
end
local function fn340()
    local Character = LocalPlayer.Character
    local pT = Character and Character:FindFirstChild("HumanoidRootPart")
    return pT
end
local function fn348()
    local qR_1
    local qQ_1
    qQ_1, qR_1 = pcall(function()
        local qN = Knit.GetController("VisualsController")
        if qN and qN.GetWoodSellMultiplier then
            return qN:GetWoodSellMultiplier()
        end
        return nil
    end)
    local qS = qQ_1 and type(qR_1) == "number"
    if qS then
        return qR_1
    end
    local qQ_2 = oc()
    if not qQ_2 then
        return 1
    end
    local SellWoodBuilding = qQ_2:FindFirstChild("SellWoodBuilding")
    if not SellWoodBuilding then
        return 1
    end
    for i, descendant in SellWoodBuilding:GetDescendants() do
        local qQ_3 = descendant:IsA("TextLabel") and descendant.Name == "MultiLabel"
        if qQ_3 then
            local qQ_4 = tonumber(string.match(descendant.Text, "([%d%.]+)"))
            if qQ_4 then
                return qQ_4
            end
        end
    end
    return 1
end
local function fn387()
    local ta = oq("RolledPetRarities")
    local tb = oq("RolledPetMutations")
    local tc = next(ta) == nil or next(tb) == nil
    if tc then
        return
    end
    local tc_1 = oc()
    local td = tc_1 and tc_1:FindFirstChild("spinWorkerModel")
    local tc_2 = td
    if td then
        td = tc_2:FindFirstChild("Roulettes")
    end
    local tc_3 = td
    if not tc_3 then
        return
    end
    local td_1 = oL()
    local te = td_1 and tonumber(td_1.cash)
    local td_2 = te or 0
    local td_3 = n0()
    for i, child in tc_3:GetChildren() do
        local tc_4 = tonumber(child:GetAttribute("rouletteIndex"))
        local tf = tc_4 and td_3[tc_4]
        if tf then
            local attr2 = tf:GetAttribute("rarity")
            local attr = tf:GetAttribute("mutation")
            if ta[attr2] and tb[attr] then
                local BuyPrompt = child:FindFirstChild("BuyPrompt", true)
                if n8(BuyPrompt) then
                    local tg_1 = pd(tf)
                    if tg_1 ~= nil and td_2 >= tg_1 then
                        oz(BuyPrompt)
                    end
                end
            end
        end
    end
end
local function fn419(ak)
    local DiscordGroup = ak:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = o2 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = o2 })
end
local function autoEquipBestLoop()
    while not Library.Unloaded do
        task.wait(0.35)
        if Toggles.AutoEquipBest.Value then
            local w4_1 = Options.EquipBestDelay and Options.EquipBestDelay.Value or 1
            if os.clock() - oh >= w4_1 then
                oh = os.clock()
                pcall(oj)
            end
        end
        if Toggles.AutoSellWood.Value then
            pcall(oU)
        end
        if Toggles.AutoCollectMoney.Value then
            pcall(n2)
        end
        if Toggles.AutoBuyRolledPet.Value then
            pcall(op)
        end
        if Toggles.AutoBuySlots.Value then
            pcall(o9)
        end
        if Toggles.AutoBuyRoll.Value then
            pcall(o1)
        end
        if Toggles.AutoBuyUpgrades.Value then
            pcall(pb)
        end
        if Toggles.AutoBuyNodes.Value then
            pcall(o4)
        end
        if Toggles.AutoUpgradeAnimals.Value then
            pcall(ox)
        end
    end
end
local function fn480(ay)
    local pV = Options[ay]
    local pW = pV and pV.Value
    local pV_1 = {}
    if type(pW) ~= "table" then
        return pV_1
    end
    for k, v in pW do
        if v then
            pV_1[k] = true
        end
    end
    return pV_1
end
local function autoFarmTreesLoop()
    while not Library.Unloaded do
        if Toggles.AutoFarmTrees.Value then
            pcall(pf)
        end
        task.wait(0.2)
    end
end
local function fn513(e9)
    local uw_1
    local uv_1
    uv_1, uw_1 = oN("UpgradesService", "RequestUpgrade", e9)
    return uv_1 and uw_1 == true
end
local function fn523()
    local vu_1
    local vt_1
    local vq = oL()
    if not vq then
        return
    end
    local vr = tonumber(vq.cash) or 0
    local Upgrades = vq.Upgrades
    if type(Upgrades) ~= "table" then
        return
    end
    vu_1, vt_1 = nil, nil
    for k, v in UpgradeTree.Nodes do
        local vv = k ~= "Start" and Upgrades[k] ~= true and oW(vq, v) and type(v.Cost) == "table"
        if vv then
            local vv_1 = tonumber(v.Cost.Amount) or 0
            local vv_2 = vr >= vv_1
            if vv_2 then
                local vx = not vt_1
                local vH = if vx then 1 else 0
                local vF = 2575 * vH + 405 * (1 - vH)
                local vG = 3190 * vH + 1406 * (1 - vH)
                if not ((vF * 1869 + vG * 2068 + vF * vG) % 16777213 == 2846632) then
                    vx = vv_1 < vt_1
                end
                vv_2 = vx
            end
            if vv_2 then
                vu_1 = k
                vt_1 = vv_1
            end
        end
    end
    if vu_1 then
        of(vu_1)
    end
end
local function fn571(cr)
    local rS = not cr or not cr.Parent
    local rS_2
    if rS then
        return false
    end
    local rY = if not nZ() then 1 else 0
    if rY == 1 then
        return false
    end
    local rS_1 = oQ()
    local PromptPart = cr:FindFirstChild("PromptPart", true)
    local rT_1
    local rU = rS_1 and PromptPart and PromptPart:IsA("BasePart")
    if rU then
        rS_1.CFrame = PromptPart.CFrame * CFrame.new(0, 3, 0)
        rS_1.AssemblyLinearVelocity = Vector3.zero
    end
    rS_2, rT_1 = oN("TreeCuttingService", "RequestCutTree", cr)
    local rU_1 = not rS_2 or type(rT_1) ~= "table" or rT_1.accepted ~= true
    if rU_1 then
        return false
    end
    local rS_3 = tonumber(rT_1.cuttingTime) or 1
    task.wait(math.max(0.2, rS_3 + 0.15))
    return true
end
local function fn575(e3, e4)
    if type(e4.Requirements) ~= "table" then
        return true
    end
    local Upgrades = e3.Upgrades
    if type(Upgrades) ~= "table" then
        return false
    end
    for k, v in e4.Requirements do
        if Upgrades[v] ~= true then
            return false
        end
    end
    return true
end
local function fn578(Z, aa, ab)
    return string.format("<b>%s</b> %s %s", Z, oI("-", "#5a6070"), oI(aa, ab))
end
local function fn665()
    local r6 = oL()
    if not r6 then
        return false
    end
    local r7 = tonumber(r6.carriedLogsAmount) or 0
    if r7 <= 0 then
        return false
    end
    local r7_1 = nV(r6)
    if r7 >= r7_1 then
        if (Options.SellWoodMode and Options.SellWoodMode.Value or "Anytime") == "Only at 1.5x" then
            return oa() >= 1.5
        end
        return true
    end
    return false
end
local function fn672()
    local tv_1
    local ts = oL()
    if not ts then
        return
    end
    local tt = tonumber(ts.cash) or 0
    local tt_2
    local tt_1 = oc()
    if not tt_1 then
        return
    end
    local Floors = tt_1:FindFirstChild("Floors")
    if not Floors then
        return
    end
    tv_1, tt_2 = nil, nil
    for i, child in Floors:GetChildren() do
        local Farms = child:FindFirstChild("Farms")
        if Farms then
            for i, child in Farms:GetChildren() do
                local WorkersSlots = child:FindFirstChild("WorkersSlots")
                if WorkersSlots then
                    for i, child in WorkersSlots:GetChildren() do
                        local tu_3 = child:IsA("Model") and child:GetAttribute("IsUnlocked") == false
                        if tu_3 then
                            local tu_4 = tonumber(child:GetAttribute("FloorIndex")) or 1
                            local tu_5 = tonumber(child:GetAttribute("FarmIndex")) or 1
                            local tu_6 = tonumber(child:GetAttribute("SlotIndex")) or 1
                            local tu_7 = pa(tu_4, tu_5, tu_6)
                            local UnlockPrompt = child:FindFirstChild("UnlockPrompt", true)
                            local tx_1 = type(tu_7) == "number" and tu_7 > 0 and tt >= tu_7 and n8(UnlockPrompt)
                            if tx_1 then
                                tx_1 = not tt_2 or tu_7 < tt_2
                            end
                            if tx_1 then
                                tt_2 = tu_7
                                tv_1 = UnlockPrompt
                            end
                        end
                    end
                end
            end
        end
    end
    if tv_1 then
        oS(tv_1)
    end
end
local function fn701(fx)
    local uP = (tonumber(fx.plotLevel))
    local uP_3
    local uW = if uP then 1 else 0
    local uU = 890 * uW + 3156 * (1 - uW)
    local uV = 1240 * uW + 1511 * (1 - uW)
    if not ((uU * 3020 + uV * 2308 + uU * uV) % 16777213 == 6653320) then
        uP = 0
    end
    local uQ = uP
    local uQ_3
    local uP_1 = PlotLevels[uQ + 1]
    if type(uP_1) ~= "table" then
        return false
    end
    local uQ_1 = tonumber(uP_1.upgradeCost) or 0
    local uQ_2 = tonumber(fx.cash) or 0
    if uQ_2 < uQ_1 then
        return false
    end
    uP_3, uQ_3 = oN("UpgradesService", "RequestUpgradePlot")
    return uP_3 and uQ_3 == true
end
local function fn709(dj)
    for i, descendant in dj:GetDescendants() do
        local sR = descendant:IsA("TextLabel") and descendant.Name == "Price"
        if sR then
            return oH(descendant.Text)
        end
    end
    return nil
end
local function fn712(P, Q)
    if setclipboard then
        setclipboard(P)
    elseif toclipboard then
        toclipboard(P)
    end
    Library:Notify(Q)
end
local function fn715()
    if not Toggles.AutoRoll.Value and ou then
        pcall(function()
            oN("AutoRollService", "StopAutoRoll")
        end)
        ou = false
    end
end
local function fn724()
    local Character = LocalPlayer.Character
    local rd = pg()
    if not (Character and rd) then
        return false
    end
    local Tool = Character:FindFirstChildOfClass("Tool")
    local rc_1 = Tool and Tool:GetAttribute("itemType") == "axeItem"
    if rc_1 then
        return true
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return false
    end
    for i, child in Backpack:GetChildren() do
        local rc_3 = child:IsA("Tool") and child:GetAttribute("itemType") == "axeItem"
        if rc_3 then
            rd:EquipTool(child)
            return true
        end
    end
    return false
end
local function fn728(eu)
    local tS = type(eu) == "table" and type(eu.ownedProducts) == "table" and eu.ownedProducts.AUTO_ROLL == true
    return tS
end
local function fn732(fe, ff)
    local uE_1
    local uD_1
    local Level
    local uA = tonumber(fe.cash) or 0
    local Upgrades = fe.Upgrades
    if type(Upgrades) ~= "table" then
        return false
    end
    uE_1, Level, uD_1 = nil, nil, nil
    for k, v in UpgradeTree.Nodes do
        local uF = v.Upgrade == ff and type(v.Level) == "number" and Upgrades[k] ~= true and oW(fe, v)
        if uF then
            local uF_1 = v.Cost and tonumber(v.Cost.Amount)
            local uG = uF_1 or 0
            if uA >= uG then
                if not Level or v.Level < Level or v.Level == Level and uG < uD_1 then
                    uE_1 = k
                    Level = v.Level
                    uD_1 = uG
                end
            end
        end
    end
    if uE_1 then
        return of(uE_1)
    end
    return false
end
local function fn792(fE)
    local uX = (tonumber(fE.forestLevel))
    local uX_3
    local u3 = if uX then 1 else 0
    local u1 = 2031 * u3 + 421 * (1 - u3)
    local u2 = 1991 * u3 + 1634 * (1 - u3)
    if not ((u1 * 109 + u2 * 1873 + u1 * u2) % 16777213 == 7994243) then
        uX = 0
    end
    local uY = uX
    local uY_3
    local uX_1 = ForestLevels[uY + 1]
    if type(uX_1) ~= "table" then
        return false
    end
    local uY_1 = tonumber(uX_1.upgradeCost) or 0
    local uY_2 = tonumber(fE.cash) or 0
    if uY_2 < uY_1 then
        return false
    end
    uX_3, uY_3 = oN("UpgradesService", "RequestUpgradeForest")
    return uX_3 and uY_3 == true
end
local function fn883()
    local s1 = {}
    local workersEntities = Workspace:FindFirstChild("workersEntities")
    if not workersEntities then
        return s1
    end
    for i, child in workersEntities:GetChildren() do
        local s2_1 = child:IsA("Model") and tonumber(child:GetAttribute("rouletteOwnerUserId")) == LocalPlayer.UserId
        if s2_1 then
            local s2_2 = tonumber(child:GetAttribute("rouletteIndex"))
            if s2_2 then
                s1[s2_2] = child
            end
        end
    end
    return s1
end
local function fn965(a2)
    local qq = oQ()
    local qr = qq and a2 and a2:IsA("BasePart")
    if not qr then
        return false
    end
    qq.CFrame = a2.CFrame * CFrame.new(0, 3, 0)
    qq.AssemblyLinearVelocity = Vector3.zero
    return true
end
local function fn980()
    local rZ = oL()
    local rZ_3
    local r_ = not rZ
    local r__3
    if not r_ then
        local r0_1 = tonumber(rZ.carriedLogsAmount) or 0
        r_ = r0_1 <= 0
    end
    if r_ then
        return false
    end
    local r__1 = Options.SellWoodMode and Options.SellWoodMode.Value or "Anytime"
    local r__2 = r__1 == "Only at 1.5x" and oa() < 1.5
    if r__2 then
        return false
    end
    rZ_3, r__3 = oN("SellWoodService", "RequestSellWood")
    return rZ_3 and r__3 ~= nil
end
local function fn982(W, X)
    return string.format('<font color="%s">%s</font>', X, W)
end
local function autoRollLoop()
    while not Library.Unloaded do
        if Toggles.AutoRoll.Value then
            pcall(og)
        elseif ou then
            pcall(function()
                oN("AutoRollService", "StopAutoRoll")
            end)
            ou = false
            task.wait(0.5)
        else
            task.wait(0.5)
        end
    end
end
local function fn998()
    local sj_2
    local si_2
    if o_ then
        return
    end
    local sp = if oZ() then 1 else 0
    if sp == 1 then
        oU()
        return
    end
    local sg = n9()
    if #sg == 0 then
        local sh_1 = oL()
        local si_1 = sh_1
        if si_1 then
            local sj_1 = tonumber(sh_1.carriedLogsAmount) or 0
            si_1 = sj_1 > 0
        end
        if si_1 then
            oU()
        end
        return
    end
    local sh_2 = oQ()
    sj_2, si_2 = nil, nil
    if sh_2 then
        for k, v in sg do
            local sk = v:FindFirstChild("PromptPart", true) or v:FindFirstChildWhichIsA("BasePart", true)
            if sk then
                local Magnitude = (sk.Position - sh_2.Position).Magnitude
                if not si_2 or Magnitude < si_2 then
                    si_2 = Magnitude
                    sj_2 = v
                end
            end
        end
    end
    local sh_3 = sj_2 or sg[1]
    oX(sh_3)
end
local function fn1002()
    local Plots = Workspace:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    return Plots:FindFirstChild("user_" .. LocalPlayer.UserId .. "_plot")
end
local function fn1011()
    n6(n4, "Copied Discord invite to clipboard")
end
local function fn1024()
    local u4 = oL()
    if not u4 then
        return
    end
    local u5 = oq("UpgradeList")
    for k, v in pc do
        if u5[v] then
            if v == "Plot" then
                if on(u4) then
                    return
                end
            elseif v == "Forest" then
                if oM(u4) then
                    return
                end
            else
                local u6 = oR[v]
                local u7 = u6 and o6(u4, u6)
                if u7 then
                    return
                end
            end
        end
    end
end
local function fn1051()
    if ou then
        pcall(function()
            oN("AutoRollService", "StopAutoRoll")
        end)
        ou = false
    end
    n_(false)
    if n3 then
        n3:Disconnect()
    end
    if nX then
        nX:Disconnect()
    end
    local yQ = pg()
    if yQ then
        yQ.PlatformStand = false
        yQ.WalkSpeed = 16
    end
end
local function fn1059()
    local v4 = oL()
    if not v4 then
        return
    end
    local v6 = Options.AnimalMaxLevel and Options.AnimalMaxLevel.Value or 50
    local v6_1 = tonumber(v4.cash) or 0
    local v6_2 = oc()
    if not v6_2 then
        return
    end
    local Floors = v6_2:FindFirstChild("Floors")
    if not Floors then
        return
    end
    for i, child in Floors:GetChildren() do
        local Farms = child:FindFirstChild("Farms")
        if Farms then
            for i, child in Farms:GetChildren() do
                local WorkersSlots = child:FindFirstChild("WorkersSlots")
                if WorkersSlots then
                    for i, child in WorkersSlots:GetChildren() do
                        local v6_5 = child:IsA("Model") and child:GetAttribute("IsUnlocked") == true
                        if v6_5 then
                            local v7_1 = nil
                            for i, child in child:GetChildren() do
                                local v6_6 = child:IsA("Model") and child:GetAttribute("workerUUID")
                                if v6_6 then
                                    v7_1 = child
                                    break
                                end
                            end
                            if v7_1 then
                                local v6_7 = tonumber(v7_1:GetAttribute("level")) or 1
                                if v6_7 < v6 then
                                    local v6_8 = tonumber(child:GetAttribute("FloorIndex")) or 1
                                    local v6_9 = tonumber(child:GetAttribute("FarmIndex")) or 1
                                    local v6_10 = tonumber(child:GetAttribute("SlotIndex")) or 1
                                    local v6_11 = oN("WorkerActionsService", "RequestUpgradeWorker", v6_8, v6_9, v6_10)
                                    if v6_11 then
                                        return
                                    end
                                    if v6_1 <= 0 then
                                        return
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
local function fn1063()
    oN("WorkerActionsService", "RequestEquipBest")
end
local function fn1076()
    local vI = oc()
    if not vI then
        return
    end
    local Floors = vI:FindFirstChild("Floors")
    if not Floors then
        return
    end
    for i, child in Floors:GetChildren() do
        local Farms = child:FindFirstChild("Farms")
        if Farms then
            for i, child in Farms:GetChildren() do
                local WorkersSlots = child:FindFirstChild("WorkersSlots")
                if WorkersSlots then
                    for i, child in WorkersSlots:GetChildren() do
                        local vI_3 = child:IsA("Model") and child:GetAttribute("IsUnlocked") == true
                        if vI_3 then
                            local vJ_1 = tonumber(child:GetAttribute("StoredValue")) or 0
                            vI_3 = vJ_1 > 0
                        end
                        if vI_3 then
                            local vI_4 = child:FindFirstChild("CollectMoneyPart") or child:FindFirstChild("CollectMoneyPartBase")
                            local vJ_2 = vI_4
                            if vI_4 then
                                vI_4 = vJ_2:IsA("BasePart")
                            end
                            if vI_4 then
                                o8(vJ_2)
                                task.wait(0.2)
                            end
                            local vI_5 = tonumber(child:GetAttribute("FloorIndex")) or 1
                            local vI_6 = tonumber(child:GetAttribute("FarmIndex")) or 1
                            local vI_7 = tonumber(child:GetAttribute("SlotIndex")) or 1
                            oB(vI_5, vI_6, vI_7)
                            task.wait(0.15)
                        end
                    end
                end
            end
        end
    end
end
local function fn1105()
    local qi_1
    local qh_1
    qh_1, qi_1 = oN("UserDataService", "RequestData")
    local qj = qh_1 and type(qi_1) == "table"
    if qj then
        return qi_1
    end
    return nil
end
nV = nil
nW = nil
nX = nil
nZ = nil
n_ = nil
n0 = nil
CFrame2 = nil
n2 = nil
n3 = nil
n4 = nil
n6 = nil
n8 = nil
n9 = nil
oa = nil
oc = nil
Options = nil
Knit = nil
of = nil
og = nil
oh = nil
LocalPlayer = nil
oj = nil
Toggles = nil
on = nil
op = nil
oq = nil
Workspace = nil
ou = nil
SlotCosts = nil
ox = nil
oz = nil
StockUpgradeLevels = nil
oB = nil
oC = nil
Library = nil
ForestLevels = nil
oH = nil
oI = nil
local nY, n5, Services, ob, SpinSpeedUtils, oo, SaveManager, CoreGui, GuiService, oF, oJ, HttpService
oL = nil
oM = nil
oN = nil
PlotLevels = nil
oQ = nil
oR = nil
oS = nil
oU = nil
UpgradeTree = nil
oW = nil
oX = nil
oZ = nil
o_ = nil
o1 = nil
o2 = nil
o4 = nil
o5 = nil
o6 = nil
o8 = nil
o9 = nil
pa = nil
pb = nil
pc = nil
pd = nil
pf = nil
pg = nil
local VirtualUser, oT, UserInputService, o0, RunService, o7, pe
local pp_1
RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, Workspace, LocalPlayer, ob, n4, nY, UpgradeTree, PlotLevels, ForestLevels, StockUpgradeLevels, SlotCosts, SpinSpeedUtils, Knit, Services, nW, pc, o5, oR, Library, SaveManager, Toggles, Options, pe, o7, o0, oT, oF, n6, o2, oI, oo, pp_1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
ob = "My Timber Pets!"
n4 = "https://discord.gg/ehKVq7pf7v"
nY = "https://rscripts.net/@Ouroboros"
local Shared = ReplicatedStorage:WaitForChild("Shared")
local GameData = Shared:WaitForChild("GameData")
local Utility = Shared:WaitForChild("Utility")
UpgradeTree = require(GameData:WaitForChild("UpgradeTree"))
PlotLevels = require(GameData:WaitForChild("PlotLevels"))
ForestLevels = require(GameData:WaitForChild("ForestLevels"))
StockUpgradeLevels = require(GameData:WaitForChild("StockUpgradeLevels"))
SlotCosts = require(GameData:WaitForChild("SlotCosts"))
SpinSpeedUtils = require(Utility:WaitForChild("SpinSpeedUtils"))
Knit = require(ReplicatedStorage:WaitForChild("Packages"):WaitForChild("Knit"))
Services = ReplicatedStorage.Packages._Index["sleitnick_knit@1.7.0"].knit.Services
local pq = { "Common", "Rare", "Epic", "Legendary", "Cosmic", "Secret", "God" }
nW = { "normal", "gold", "diamond", "demon", "galaxy" }
pc = { "Axe", "Stock", "Tree Cooldown", "Golden Tree", "Plot", "Forest" }
o5 = {
    "Spin Luck",
    "Spin Count",
    "Spin Speed",
    "Gold Spin",
    "Diamond Spin",
    "Demon Spin",
    "Galaxy Spin"
}
local ps = { "Anytime", "Only at 1.5x" }
oR = {
    Axe = "AxeLevel",
    Stock = "StockUpgrade",
    ["Tree Cooldown"] = "TreeCooldown",
    ["Golden Tree"] = "GoldenTreeChance",
    ["Spin Luck"] = "SpinLuck",
    ["Spin Count"] = "SpinCount",
    ["Spin Speed"] = "SpinSpeed",
    ["Gold Spin"] = "GoldSpin",
    ["Diamond Spin"] = "DiamondSpin",
    ["Demon Spin"] = "DemonSpin",
    ["Galaxy Spin"] = "GalaxySpin"
}
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
n6 = fn712
o2 = fn1011
oI = fn982
oo = fn578
pe = "#7fd47f"
o7 = "#6ec1ff"
o0 = "#e8a34d"
oT = "#8b93a3"
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = n4, Copyable = true }, "|", ob },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
oF = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
if (not LocalPlayer or GuiService or LocalPlayer and Options or (pc or GuiService or (not pc or pc))) and (Options and Options and (not pc and ForestLevels) or not pc and GuiService and (LocalPlayer or not pc)) and not ((not LocalPlayer or GuiService or LocalPlayer and Options or (pc or GuiService or (not pc or pc))) and (Options and Options and (not pc and ForestLevels) or not pc and GuiService and (LocalPlayer or not pc))) then
else
    pp_1 = fn419
end
for k, v in oF do
    pp_1(v)
end
o_, ou, CFrame2, oh, n_, n3, nX, pg, oQ, oq, oN, oL, oc, o8, oC, n8, oS, pa, oa, nV, nZ, n9, oX, oU, oZ, pf, oj, n5, oH, pd, oz, n0, op, o9, oJ, og, oW, of, o6, on, oM, pb, o1, o4, oB, n2, ox = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pg = fn333
oQ = fn340
oq = fn480
oN = function(aH, aI, ...)
    local p7
    p7 = nil
    local qc_1
    local qb_1
    local qa_1
    local p8 = Services:FindFirstChild(aH)
    local p8_1
    local p9 = p8 and p8:FindFirstChild("RF") and p8.RF:FindFirstChild(aI)
    local p9_1
    p7 = p9
    if not p7 then
        return false, nil
    end
    p8_1, qc_1, qb_1, qa_1, p9_1 = pcall(function(...)
        return p7:InvokeServer(...)
    end, ...)
    if not p8_1 then
        return false, nil
    end
    return true, qc_1, qb_1, qa_1, p9_1
end
oL = fn1105
oc = fn1002
o8 = fn965
oC = fn294
n8 = fn33
o_ = false
oS = function(bh)
    local qC
    if not (bh and bh.Parent) then
        return false
    end
    local qD_1 = bh.Parent
    if not qD_1:IsA("BasePart") then
        qD_1 = bh:FindFirstAncestorWhichIsA("BasePart")
    end
    o_ = true
    if qD_1 then
        o8(qD_1)
        task.wait(0.15)
    end
    local max = math.max
    local qE = tonumber(bh.MaxActivationDistance) or 10
    local qF = max(qE, 10)
    if fireproximityprompt then
        pcall(fireproximityprompt, bh, qF)
    else
        local qD_3 = (tonumber(bh.HoldDuration))
        local qJ = if qD_3 then 1 else 0
        local qH = 2877 * qJ + 4076 * (1 - qJ)
        local qI = 2847 * qJ + 320 * (1 - qJ)
        if not ((qH * 1278 + qI * 3632 + qH * qI) % 16777213 == 5430716) then
            qD_3 = 0
        end
        qC = qD_3
        pcall(function()
            bh:InputHoldBegin()
            task.wait(qC + 0.05)
            bh:InputHoldEnd()
        end)
    end
    task.wait(0.15)
    o_ = false
    return true
end
pa = fn36
oa = fn348
nV = fn141
nZ = fn724
n9 = fn301
oX = fn571
oU = fn980
oZ = fn665
pf = fn998
oj = fn1063
n5 = fn161
oH = fn24
pd = fn709
oz = function(dq)
    local sZ
    if fireproximityprompt then
        pcall(fireproximityprompt, dq)
    else
        local s_ = tonumber(dq.HoldDuration) or 0
        sZ = s_
        pcall(function()
            dq:InputHoldBegin()
            task.wait(sZ + 0.05)
            dq:InputHoldEnd()
        end)
    end
end
if not n_ and n_ and (not n9 and n_) or (n_ and n9 or (n9 or n_)) or (not nZ or not nZ or (not n_ or n9)) and (nZ and not n9 and (n_ and not n9)) or not (not n_ and n_ and (not n9 and n_) or (n_ and n9 or (n9 or n_)) or (not nZ or not nZ or (not n_ or n9)) and (nZ and not n9 and (n_ and not n9))) then
    n0 = fn883
    op = fn387
else
    op = fn883
    n0 = fn387
end
if (og or on) and (og and on) or (on or og or on and og) or not ((og or on) and (og and on) or (on or og or on and og)) then
    o9 = fn672
else
    oN = fn672
end
oJ = fn728
ou = false
og = function()
    local t1
    local t6_1, t6_3
    local t3 = Toggles.AutoRoll and Toggles.AutoRoll.Value == true
    local t2 = oL()
    if not t3 then
        if ou then
            oN("AutoRollService", "StopAutoRoll")
            ou = false
        end
        return
    end
    if not oJ(t2) then
        if ou then
            oN("AutoRollService", "StopAutoRoll")
            ou = false
        end
        oN("PlotSpinService", "RequestSpin")
        t1 = 3.5
        pcall(function()
            local tX = (SpinSpeedUtils.getRevealDelay(t2))
            local t0 = if tX then 1 else 0
            local tZ = 2992 * t0 + 1666 * (1 - t0)
            local t_ = 2874 * t0 + 1579 * (1 - t0)
            if not ((tZ * 1380 + t_ * 1996 + tZ * t_) % 16777213 == 1687259) then
                tX = 3.5
            end
            t1 = tX
        end)
        task.wait(math.max(1, t1))
        return
    end
    local t4_1 = Options.RollRarity and Options.RollRarity.Value or "Common"
    local t4_2 = n5()
    local t5 = t4_1 == nil or t4_1 == "" or #t4_2 == 0
    local t5_1, t5_4
    if t5 then
        return
    end
    t5_1, t6_1 = oN("AutoRollService", "GetAutoRollState")
    local t7 = t5_1 and type(t6_1) == "table" and t6_1.enabled == true
    local t5_2 = t7
    if t7 then
        t7 = t6_1.rarityTarget == t4_1
    end
    local t8 = t5_2
    local t9 = t7
    local t7_1 = false
    if t8 then
        t8 = type(t6_1.mutationsTarget) == "table"
    end
    if t8 then
        t7_1 = #t6_1.mutationsTarget == #t4_2
        if t7_1 then
            for k, v in t4_2 do
                if table.find(t6_1.mutationsTarget, v) == nil then
                    t7_1 = false
                    break
                end
            end
        end
    end
    if t5_2 and t9 and t7_1 then
        ou = true
        return
    end
    t5_4, t6_3 = oN("AutoRollService", "StartAutoRoll", t4_1, t4_2)
    ou = t5_4 and t6_3 == true
end
oW = fn575
of = fn513
o6 = fn732
on = fn701
oM = fn792
pb = fn1024
o1 = fn142
o4 = fn523
oB = fn256
n2 = fn1076
ox = fn1059
local function ph_1()
    local wP
    wP = nil
    local wN, wO, Label
    wP = "Unknown"
    pcall(function()
        local wD_1
        local wC_1
        if identifyexecutor then
            wD_1, wC_1 = identifyexecutor()
            local wE = wD_1 ~= ""
            local wF = type(wD_1) == "string" and wE
            if wF then
                local wE_1 = type(wC_1) == "string" and wC_1 ~= "" and wD_1 .. " " .. wC_1
                wP = wE_1 or wD_1
            end
        end
    end)
    local AccountGroup = oF.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(oo("User", LocalPlayer.Name, pe), true)
    AccountGroup:AddLabel(oo("Status", "Keyless", pe), true)
    AccountGroup:AddLabel(oo("Executor", wP, pe), true)
    local GameInfoGroup = oF.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(oI(ob .. " [" .. tostring(game.PlaceId) .. "]", o7), true)
    GameInfoGroup:AddLabel(oo("Place ID", tostring(game.PlaceId), o7), true)
    Label = GameInfoGroup:AddLabel(oo("Session time", "0s", o0), true)
    wO = tostring(game.JobId)
    local wT = #wO > 18 and string.sub(wO, 1, 18) .. "..."
    local wT_1 = wT or wO
    GameInfoGroup:AddLabel(oo("Server", wT_1, oT), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local hl = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, wO)
            n6(hl, "Copied join script to clipboard")
        end
    })
    wN = os.clock()
    task.spawn(function()
        local wL_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local wK = math.floor(os.clock() - wN)
            if wK < 60 then
                wL_1 = wK .. "s"
            elseif wK < 3600 then
                wL_1 = string.format("%dm %ds", wK // 60, wK % 60)
            else
                wL_1 = string.format("%dh %dm", wK // 3600, wK % 3600 // 60)
            end
            Label:SetText(oo("Session time", wL_1, o0))
        end
    end)
    local ScriptsGroup = oF.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(oI("Included in this hub", oT), true)
    ScriptsGroup:AddLabel(oI(ob, o7), true)
    local FeaturesGroup = oF.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(oI("Auto Farm", o7), true)
    FeaturesGroup:AddLabel(oI("Auto Roll", o0), true)
    FeaturesGroup:AddLabel(oI("Auto Upgrades", pe), true)
    FeaturesGroup:AddLabel(oI("Misc Utilities", oT), true)
    local SocialsGroup = oF.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = o2 })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            n6(nY, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = oF.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = o2 })
    local wS_6 = {
        LTC = {
            address = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
            color = "#345d9d",
            label = "LTC / Litecoin",
            button = "Copy Litecoin Address",
            message = "Copied Litecoin address"
        },
        BTC = {
            address = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
            color = "#f7931a",
            label = "BTC / Bitcoin",
            button = "Copy Bitcoin Address",
            message = "Copied Bitcoin address"
        },
        ETH = {
            address = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
            color = "#627eea",
            label = "ETH / Ethereum",
            button = "Copy Ethereum Address",
            message = "Copied Ethereum address"
        },
        USDT = {
            address = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
            color = "#26a17b",
            label = "USDT",
            button = "Copy USDT Address",
            message = "Copied USDT address"
        },
        SOL = {
            address = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
            color = "#14f195",
            label = "Solana",
            button = "Copy Solana Address",
            message = "Copied Solana address"
        },
        PAYPAL = {
            address = "https://paypal.me/TheTruckerGOD",
            color = "#0070ba",
            label = "PayPal",
            button = "Copy PayPal Link",
            message = "Copied PayPal link"
        },
        VENMO = {
            address = "https://venmo.com/u/miserablemusic",
            color = "#008cff",
            label = "Venmo",
            button = "Copy Venmo Link",
            message = "Copied Venmo link"
        }
    }
    local DonationsGroup = oF.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(oI("All donations are optional but appreciated.", o0), true)
    DonationsGroup:AddLabel(oI("If you donate you get a special role, just PING after you donate.", pe), true)
    DonationsGroup:AddDivider()
    for k, v in { "LTC", "BTC", "ETH", "USDT", "SOL", "PAYPAL", "VENMO" } do
        local wQ
        wQ = wS_6[v]
        DonationsGroup:AddLabel(oI(wQ.label, wQ.color), true)
        DonationsGroup:AddButton({
            Text = wQ.button,
            Func = function()
                n6(wQ.address, wQ.message)
            end
        })
    end
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(oI("Don't have any of the listed currencies but still wanna donate?", oT), true)
    DonationsGroup:AddLabel(oI("DM me and we'll work something out.", o7), true)
    local FaqGroup = oF.Info:AddRightGroupbox("FAQ", "circle-help")
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
end
ph_1()
local RollingGroup = oF.Main:AddLeftGroupbox("Rolling", "dices")
RollingGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false })
RollingGroup:AddDropdown("RollRarity", { Text = "Roll Rarity", Values = pq, Default = "Common" })
RollingGroup:AddDropdown("RollMutations", { Text = "Roll Mutations", Values = nW, Default = nW, Multi = true, SelectAllButtons = true })
RollingGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
RollingGroup:AddDropdown("RollUpgradeList", { Text = "Roll Upgrades", Values = o5, Default = o5, Multi = true, SelectAllButtons = true })
RollingGroup:AddToggle("TpToRoll", { Text = "TP to Roll Button", Default = false })
Toggles.TpToRoll:OnChanged(fn48)
local AutomationGroup = oF.Main:AddLeftGroupbox("Automation", "bot")
AutomationGroup:AddToggle("AutoFarmTrees", { Text = "Auto Farm Trees", Default = false })
AutomationGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
AutomationGroup:AddSlider("EquipBestDelay", { Text = "Equip Best Delay", Default = 1, Min = 0.5, Max = 15, Rounding = 1, Suffix = "s" })
AutomationGroup:AddToggle("AutoBuyRolledPet", { Text = "Auto Buy Rolled Pet", Default = false })
AutomationGroup:AddDropdown("RolledPetRarities", { Text = "Rolled Pet Rarities", Values = pq, Default = pq, Multi = true, SelectAllButtons = true })
AutomationGroup:AddDropdown("RolledPetMutations", { Text = "Rolled Pet Mutations", Values = nW, Default = nW, Multi = true, SelectAllButtons = true })
AutomationGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
AutomationGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = pc, Default = pc, Multi = true, SelectAllButtons = true })
local EconomyGroup = oF.Main:AddRightGroupbox("Economy", "coins")
EconomyGroup:AddToggle("AutoSellWood", { Text = "Auto Sell Wood", Default = false })
EconomyGroup:AddDropdown("SellWoodMode", { Text = "Sell Logic", Values = ps, Default = "Anytime" })
EconomyGroup:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
EconomyGroup:AddToggle("AutoBuySlots", { Text = "Auto Buy Slots", Default = false })
EconomyGroup:AddToggle("AutoBuyNodes", { Text = "Auto Buy Nodes", Default = false })
EconomyGroup:AddToggle("AutoUpgradeAnimals", { Text = "Auto Upgrade Animals", Default = false })
EconomyGroup:AddSlider("AnimalMaxLevel", { Text = "Animal Max Level", Default = 50, Min = 1, Max = 50, Rounding = 0 })
task.spawn(autoFarmTreesLoop)
oh = 0
task.spawn(autoEquipBestLoop)
task.spawn(autoRollLoop)
Toggles.AutoRoll:OnChanged(fn715)
local function pk_1()
    local MovementGroup = oF.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    local FlyGroup = oF.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function it(iu)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not iu)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not iu
            end
        end)
        if not iu then
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
    RunService.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local xk_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if xk_2 then
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
            local xs_1 = pg()
            if xs_1 then
                xs_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = Workspace.CurrentCamera
    RunService.RenderStepped:Connect(function(i0)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local xu_1 = pg()
            if xu_1 then
                xu_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local xu_3 = oQ()
            local xv = pg()
            if xu_3 and xv then
                xv.PlatformStand = true
                local xv_1 = Vector3.zero
                if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                    xv_1 += CurrentCamera.CFrame.LookVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                    xv_1 -= CurrentCamera.CFrame.LookVector
                end
                local xA = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if xA == 1 then
                    xv_1 -= CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                    xv_1 += CurrentCamera.CFrame.RightVector
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                    xv_1 += Vector3.new(0, 1, 0)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    xv_1 -= Vector3.new(0, 1, 0)
                end
                xu_3.AssemblyLinearVelocity = Vector3.zero
                if xv_1.Magnitude > 0 then
                    xu_3.CFrame = xu_3.CFrame + xv_1.Unit * Options.FlySpeed.Value * i0
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local xB = pg()
            if xB then
                xB.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local xD = pg()
            if xD then
                xD.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        it(Toggles.AntiGameplayPause.Value)
    end)
    it(true)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                it(true)
            end
        end
    end)
    return it
end
n_ = pk_1()
local function pu(jt)
    local ju
    ju = tick()
    local jv = tick()
    pcall(function()
        for k, v in getconnections(LocalPlayer.Idled) do
            local xP = v
            pcall(function()
                xP:Disable()
            end)
        end
    end)
    local function jB()
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
        task.wait(0.1)
        VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
        jv = tick()
    end
    local connection2 = UserInputService.InputBegan:Connect(function()
        ju = tick()
    end)
    local connection = UserInputService.InputChanged:Connect(function(jL)
        local UserInputType = jL.UserInputType
        if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
            ju = tick()
        end
    end)
    jt:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            if Toggles.AntiAfk.Value then
                local xV = tick() - ju
                local xW = tick() - jv
                if xV >= 300 and xW >= 60 then
                    pcall(jB)
                else
                    if xV < 300 and xW >= 300 then
                        pcall(jB)
                    end
                end
            end
        end
    end)
    return connection2, connection
end
local MenuGroup = oF.Settings:AddLeftGroupbox("Menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
n3, nX = pu(MenuGroup)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(oF.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MyTimberPets")
local pt = SaveManager:BuildConfigSection(oF.Settings)
SaveManager:LoadAutoloadConfig()
local function po_1(j5)
    local function j6(j7, j8)
        local x__1 = (j7 == "Toggle" and Toggles or Options)[j8]
        local xZ_2 = type(x__1) == "table" and x__1.Type == j7
        return xZ_2 and x__1 or nil
    end
    local function kg(kh, ki)
        local Type = ki.Type
        if Type == "Toggle" then
            return { idx = kh, type = "Toggle", value = ki.Value == true }
        elseif Type == "Slider" then
            return { idx = kh, type = "Slider", value = tostring(ki.Value) }
        elseif Type == "Dropdown" then
            return { idx = kh, type = "Dropdown", multi = ki.Multi == true, value = ki.Value }
        elseif Type == "Input" then
            local x6 = ki.Value or ""
            return { idx = kh, type = "Input", text = tostring(x6) }
        elseif Type == "ColorPicker" then
            return { idx = kh, type = "ColorPicker", value = ki.Value:ToHex(), transparency = ki.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = kh,
                type = "KeyPicker",
                mode = ki.Mode,
                key = ki.Value,
                modifiers = ki.Modifiers,
                toggled = ki.Toggled
            }
        else
            return nil
        end
    end
    local function kk()
        local x9 = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local ya = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if ya then
                    local ya_1 = kg(k, v)
                    if ya_1 then
                        x9[#x9 + 1] = ya_1
                    end
                end
            end
        end
        table.sort(x9, function(kv, kw)
            if kv.type ~= kw.type then
                return kv.type < kw.type
            end
            return kv.idx < kw.idx
        end)
        return { objects = x9 }
    end
    local function kx(ky)
        local yq
        yq = nil
        local yr = type(ky) ~= "table"
        local yv = if yr then 1 else 0
        local yt = 71 * yv + 3561 * (1 - yv)
        local yu = 1381 * yv + 3309 * (1 - yv)
        if not ((yt * 461 + yu * 3427 + yt * yu) % 16777213 == 4863469) then
            yr = type(ky.idx) ~= "string"
        end
        if not yr then
            yr = type(ky.type) ~= "string"
        end
        local yy = if yr then 1 else 0
        local yw = 3109 * yy + 916 * (1 - yy)
        local yx = 314 * yy + 2156 * (1 - yy)
        if not ((yw * 906 + yx * 1345 + yw * yx) % 16777213 == 4215310) then
            yr = SaveManager.Ignore[ky.idx]
        end
        if yr then
            return false
        end
        yq = j6(ky.type, ky.idx)
        if not yq then
            return false
        end
        local yr_1 = pcall(function()
            if ky.type == "Input" then
                if type(ky.text) ~= "string" then
                    return
                end
                yq:SetValue(ky.text)
            elseif ky.type == "ColorPicker" then
                yq:SetValueRGB(Color3.fromHex(ky.value), ky.transparency)
            elseif ky.type == "KeyPicker" then
                yq:SetValue({ ky.key, ky.mode, ky.modifiers })
                if ky.mode == "Toggle" and ky.toggled ~= nil then
                    yq.Toggled = ky.toggled
                    yq:Update()
                end
            else
                yq:SetValue(ky.value)
            end
        end)
        return yr_1
    end
    j5:AddDivider()
    j5:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    j5:AddButton("Export Config to Clipboard", function()
        local yA_1
        local yz_1
        yz_1, yA_1 = pcall(HttpService.JSONEncode, HttpService, kk())
        if not yz_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local yz_2 = setclipboard or toclipboard
        local yz_3 = type(yz_2) ~= "function" or not pcall(yz_2, yA_1)
        if yz_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    j5:AddButton("Import Config from Clipboard Text", function()
        local yF_1
        local yD = Options.SaveManager_ImportSource.Value or ""
        local yD_1
        local yE = tostring(yD):match("^%s*(.-)%s*$")
        if yE == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        yD_1, yF_1 = pcall(HttpService.JSONDecode, HttpService, yE)
        local yE_1 = not yD_1 or type(yF_1) ~= "table" or type(yF_1.objects) ~= "table"
        if yE_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local yD_2 = 0
        for k, v in yF_1.objects do
            if kx(v) then
                yD_2 += 1
            end
        end
        if yD_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local yF_2 = yD_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(yD_2, yF_2), 6)
    end)
end
po_1(pt)
Library:OnUnload(fn1051)
