local oy
local pf
local oX
local pl
local oi
local oK
local op
local UpgradeUtil
local Toggles
local TryUpgrade
local ox
local PLAYER_PICKAXES
local oW
local pD
local Library
local o1
local oJ
local pq
local oo
local o7
local pw
local TryCollectCurrency
local pC
local TryEquip
local pj
local o0
local oI
local pp
local on
local Options
local pv
local pc
local pB
local oB
local ItemUtil
local o_
local oH
local om
local o5
local oN
local pb
local oT
local TryRebirth
local ph
local TrySell
local ol
local o4
local TryPickup
local ot
local pa
local pz
local oz
local pg
local oY
local TryPurchase
local pm
local RebirthUtil
local oL
local ps
local oq
local oR
local py
local function fn39(aZ, a_)
    return aZ.order < a_.order
end
local function fn42(bP, bQ, bR)
    return string.format("<b>%s</b> %s %s", bP, oJ("-", "#5a6070"), oJ(bQ, bR))
end
local function fn97()
    local uY = pv()
    local uZ = not uY or type(uY.StoredItems) ~= "table"
    if uZ then
        return false
    end
    local uZ_1 = false
    for k, v in uY.StoredItems do
        if op(v) then
            local uY_1 = pa(TrySell, k)
            if uY_1 == true then
                uZ_1 = true
                break
            end
        end
    end
    return uZ_1
end
local function fn103(as, at)
    return as.order < at.order
end
local function fn105()
    local tN = pv()
    if not tN then
        return false
    end
    local tO = tN.Rebirth or 0
    if tO >= RebirthUtil.GetNumberOfRebirths() then
        return false
    end
    local tO_1 = RebirthUtil.GetRebirthRequirement(tO)
    if (tN.Cash or 0) < (tO_1 or math.huge) then
        return false
    end
    local tN_2 = pa(TryRebirth)
    return tN_2 == true
end
local function fn116()
    local uq = pv()
    if not uq then
        return false
    end
    local ur = Options.BuyFood and Options.BuyFood.Value
    local us = o_(ur)
    if not next(us) then
        return false
    end
    local ur_1 = uq.Boosts and uq.Boosts.Stock
    if type(ur_1) ~= "table" then
        return false
    end
    local ur_2 = uq.Cash or 0
    local uq_1 = false
    local uu = ur_2
    for k in us do
        local ur_3 = pC[k]
        if ur_3 then
            local us_1 = ur_1[ur_3]
            local uv = 0
            if type(us_1) == "table" then
                local uw_1 = tonumber(us_1.Stock) or tonumber(us_1.Amount)
                uv = uw_1 or 0
            elseif type(us_1) == "number" then
                uv = us_1
            end
            local us_2 = py[ur_3] or 0
            if uv > 0 and uu >= us_2 then
                local us_4 = pa(ps, ur_3)
                if us_4 == true then
                    uq_1 = true
                    uu -= us_2
                end
            end
        end
    end
    return uq_1
end
local function fn132()
    local t4 = pv()
    local t5 = not t4 or type(t4.Pickaxe) ~= "table"
    if t5 then
        return false
    end
    local t6 = t4.Pickaxe.Owned or {}
    local t6_1 = t4.Cash or 0
    local t6_2 = t4.Rebirth or 0
    local name2 = nil
    for k, v in pf do
        local t6_3 = not t6[v.name]
        if t6_3 ~= false then
            t6_3 = t6_2 >= v.rebirth
        end
        if t6_3 then
            t6_3 = t6_1 >= v.required
        end
        if t6_3 then
            local t6_4 = pa(TryPurchase, v.name)
            if t6_4 == true then
                name2 = v.name
                break
            end
        end
    end
    local name = nil
    local t7_1 = pv()
    local t9 = t7_1 and t7_1.Pickaxe and t7_1.Pickaxe.Owned
    local uj = if t9 then 1 else 0
    local uh = 3134 * uj + 2980 * (1 - uj)
    local ui = 2449 * uj + 9 * (1 - uj)
    if not ((uh * 1739 + ui * 3050 + uh * ui) % 16777213 == 3817429) then
        t9 = t6
    end
    local t5_3 = t7_1
    local t8_2 = t9
    if t5_3 then
        t5_3 = t7_1.Pickaxe
    end
    if t5_3 then
        t5_3 = t7_1.Pickaxe.Equipped
    end
    local t7_2 = t5_3
    for k, v in pf do
        if t8_2[v.name] then
            name = v.name
        end
    end
    if name and name ~= t7_2 then
        pa(TryEquip, name)
    end
    return name2 ~= nil
end
local function fn138()
    local rZ = {}
    for i, child in pj:GetChildren() do
        local Spawned = child:FindFirstChild("Spawned")
        if Spawned then
            for i, child2 in Spawned:GetChildren() do
                local r__1 = child2:GetAttribute("Name")
                if type(r__1) == "string" then
                    local r0 = ItemUtil.Get(r__1)
                    local r2 = r0 and r0.Rarity or "Common"
                    local r2_1 = #rZ + 1
                    local Name2 = child2.Name
                    local Name = child.Name
                    local r0_1 = r0 and r0.Display or r__1
                    local r5_1 = pb[r2] or 0
                    local r6 = tonumber(child2:GetAttribute("Health")) or 0
                    rZ[r2_1] = {
                        id = Name2,
                        spawner = Name,
                        name = r__1,
                        display = r0_1,
                        rarity = r2,
                        order = r5_1,
                        health = r6,
                        item = child2
                    }
                end
            end
        end
    end
    return rZ
end
local function fn143()
    local Character = o5.Character
    local rx = Character and Character:FindFirstChildOfClass("Humanoid")
    return rx
end
local function fn149(bM, bN)
    return string.format('<font color="%s">%s</font>', bN, bM)
end
local function worker()
    while Library and not Library.Unloaded do
        oz()
        task.wait(1)
    end
end
local function fn213()
    local dE = pa(TryCollectCurrency)
    return dE == true
end
local function fn225()
    local tj = pv()
    local tk = not tj or type(tj.StoredItems) ~= "table"
    if tk then
        return {}
    end
    local tk_1 = {}
    for k, v in tj.StoredItems do
        if v.Location == "PLOT" then
            local CaculateIncome = ItemUtil.CaculateIncome
            local tl = v.Level or 1
            local tm = CaculateIncome({ Level = tl, Name = v.Name, Mutation = v.Mutation, Traits = v.Traits })
            local tj_2 = #tk_1 + 1
            local Name = v.Name
            local tn = tonumber(tm) or 0
            tk_1[tj_2] = { id = k, name = Name, income = tn }
        end
    end
    return tk_1
end
local function fn254(aD, aE)
    local qW = pb[aD.rarity] or 0
    local qW_1 = pb[aE.rarity] or 0
    if qW ~= qW_1 then
        return qW < qW_1
    end
    return aD.display < aE.display
end
local function onSellNow()
    local vm = o1()
    if vm > 0 then
        local vo = vm == 1 and "" or "s"
        Library:Notify(("Sold %d animal%s"):format(vm, vo))
    else
        Library:Notify("No animals matched sell filters")
    end
end
local function fn365(b5)
    local rm = {}
    if type(b5) == "table" then
        for k, v in b5 do
            if v then
                rm[k] = true
            end
        end
    else
        local rn = b5 ~= ""
        local ro = type(b5) == "string" and rn
        if ro then
            rm[b5] = true
        end
    end
    return rm
end
local function fn384()
    local tR = pv()
    if not tR then
        return false
    end
    local tS = Options.BuyUpgrades and Options.BuyUpgrades.Value
    local tT = o_(tS)
    if not next(tT) then
        return false
    end
    local tS_1 = tR.Cash or 0
    local tU = false
    local tV = tS_1
    for k in tT do
        local tS_2 = oX[k]
        if tS_2 then
            local tW = tR.Upgrades and tR.Upgrades[tS_2] or 0
            local tW_1 = UpgradeUtil.GetMaxLevel(tS_2)
            if tW < tW_1 then
                local tW_2 = UpgradeUtil.GetPrice(tS_2, tW)
                local tT_3 = type(tW_2) == "number" and tV >= tW_2
                if tT_3 then
                    local tT_4 = pa(TryUpgrade, tS_2)
                    if tT_4 == true then
                        tU = true
                        tV -= tW_2
                    end
                end
            end
        end
    end
    return tU
end
local function fn390()
    local rD_1
    local rC_1
    rC_1, rD_1 = pcall(function()
        return pl.GetReplica()
    end)
    local rE = rC_1 and rD_1 and type(rD_1.Data) == "table"
    if rE then
        return rD_1.Data
    end
    return nil
end
local function fn423()
    local u6 = pv()
    local u7 = not u6 or type(u6.StoredItems) ~= "table"
    if u7 then
        return 0
    end
    local u7_1 = {}
    local u8 = 0
    for k, v in u6.StoredItems do
        if op(v) then
            u7_1[#u7_1 + 1] = k
        end
    end
    for k, v in u7_1 do
        if Library.Unloaded then
            break
        end
        local u6_1 = pa(TrySell, v)
        if u6_1 == true then
            u8 += 1
        end
        task.wait(0.08)
    end
    return u8
end
local function worker3()
    while not Library.Unloaded do
        if o7("AutoCollect") then
            pcall(o4)
        end
        if o7("AutoRebirth") then
            pcall(oH)
        end
        if o7("AutoBuyUpgrades") then
            pcall(pm)
        end
        if o7("AutoBuyPickaxes") then
            pcall(pB)
        end
        if o7("AutoFoodShop") then
            pcall(oo)
        end
        if o7("AutoSell") then
            pcall(pD)
        end
        task.wait(0.45)
    end
end
local function fn475()
    pw(oK, "Copied Discord invite to clipboard")
end
local function fn501(bU, bV)
    if setclipboard then
        setclipboard(bU)
    elseif toclipboard then
        toclipboard(bU)
    end
    Library:Notify(bV)
end
local function fn506()
    local sL = om()
    local sM = {}
    for k, v in sL do
        if oW(v) then
            sM[#sM + 1] = v
        end
    end
    local sL_1 = on(sM)
    if not sL_1 then
        return false
    elseif not pc(sL_1) then
        return false
    else
        local sM_1 = pa(TryPickup, sL_1.spawner, sL_1.id)
        return sM_1 == true
    end
end
local function fn575()
    local sU = pa(ol)
    if sU == true then
        return true
    end
    local Character = o5.Character
    local sV = Character and Character:FindFirstChildOfClass("Humanoid")
    local Backpack = o5:FindFirstChild("Backpack")
    if not (sV and Backpack) then
        return false
    end
    for i, child in Backpack:GetChildren() do
        local sV_2 = child:IsA("Tool") and child:GetAttribute("ItemId")
        if sV_2 then
            sV:EquipTool(child)
            task.wait(0.1)
            local sV_3 = pa(ot)
            return sV_3 == true
        end
    end
    return false
end
local function fn576()
    local Character = o5.Character
    local Backpack
    if Character then
        local Tool = Character:FindFirstChildOfClass("Tool")
        local s6_1 = Tool
        if s6_1 then
            local s8 = (Tool:HasTag("BoostTool"))
            local tc = if s8 then 1 else 0
            local ta = 4001 * tc + 95 * (1 - tc)
            local tb = 130 * tc + 2103 * (1 - tc)
            if not ((ta * 114 + tb * 1724 + ta * tb) % 16777213 == 1200364) then
                s8 = Tool:GetAttribute("BoostId")
            end
            s6_1 = s8
        end
        if s6_1 then
            return Tool
        end
        local Backpack2 = o5:FindFirstChild("Backpack")
        if not Backpack then
            return nil
        end
        for i, child in Backpack2:GetChildren() do
            local s6_3 = (child:IsA("Tool"))
            if s6_3 then
                local s7_2 = child:HasTag("BoostTool") or child:GetAttribute("BoostId")
                s6_3 = s7_2
            end
            if s6_3 then
                return child
            end
        end
        return nil
    end
    Backpack = o5:FindFirstChild("Backpack")
    if not Backpack then
        return nil
    end
    for i, child in Backpack:GetChildren() do
        local s6_5 = (child:IsA("Tool"))
        if s6_5 then
            local s7_3 = child:HasTag("BoostTool") or child:GetAttribute("BoostId")
            s6_5 = s7_3
        end
        if s6_5 then
            return child
        end
    end
    return nil
end
local function fn608(db)
    local sE_1
    local sD_1
    local sC_1
    local sz = oR()
    local sA = math.max(0.28, 0.55 / math.max(#sz, 1))
    local sI = 1
    local sG = 24
    while true do
        if not (sI <= sG) then
            return false
        end
        local sJ = sI
        if not db.item or not db.item.Parent then
            return false
        end
        local sB_1 = sz[(sJ - 1) % #sz + 1]
        sD_1, sE_1, sC_1 = pa(oI, sB_1, db.spawner, db.id)
        if sD_1 and sC_1 then
            break
        end
        local sB_3 = sD_1 and type(sE_1) == "number" and sE_1 <= 0
        if sB_3 then
            return true
        end
        task.wait(sA)
        sI += 1
    end
    return true
end
local function fn642(bb, bc)
    return bb.required < bc.required
end
local function fn658(aO, aP)
    return aO.damage < aP.damage
end
local function fn672(fy)
    if type(fy) ~= "table" then
        return false
    end
    return next(fy) ~= nil
end
local function worker4()
    while not Library.Unloaded do
        if o7("AutoRescue") then
            pcall(ox)
            task.wait(0.2)
        else
            task.wait(0.35)
        end
    end
end
local function fn688(b0)
    local rg = Toggles[b0]
    return rg ~= nil and rg.Value == true
end
local function fn731(fA)
    local uK = type(fA) ~= "table" or fA.Location ~= "TOOLBAR"
    if uK then
        return false
    end
    local uK_1 = ItemUtil.Get(fA.Name)
    local uM = uK_1 and uK_1.Rarity or "Common"
    local uM_1 = fA.Mutation
    local uX = if uM_1 then 1 else 0
    local uV = 3554 * uX + 3117 * (1 - uX)
    local uW = 2420 * uX + 2645 * (1 - uX)
    if not ((uV * 3364 + uW * 3770 + uV * uW) % 16777213 == 12902523) then
        uM_1 = "Normal"
    end
    local uN = uM_1
    local uM_2 = oN[fA.Name]
    local uU = if uM_2 then 1 else 0
    local uS = 1834 * uU + 840 * (1 - uU)
    local uT = 440 * uU + 2274 * (1 - uU)
    if not ((uS * 2398 + uT * 381 + uS * uT) % 16777213 == 5372532) then
        uM_2 = uK_1 and uK_1.Display
    end
    if not uM_2 then
        uM_2 = fA.Name
    end
    local uK_2 = uM_2
    local uM_3 = Options.SellRarity and Options.SellRarity.Value
    local uO_2 = o_(uM_3)
    local uM_4 = Options.SellMutation and Options.SellMutation.Value
    local uP = o_(uM_4)
    local uM_5 = Options.SellAnimals and Options.SellAnimals.Value
    local uQ = o_(uM_5)
    local uM_6 = not next(uO_2) or not uO_2[uM]
    if uM_6 then
        return false
    end
    local uL_2 = not next(uP) or not uP[uN]
    if uL_2 then
        return false
    end
    local uL_3 = next(uQ) and not uQ[uK_2]
    if uL_3 then
        return false
    end
    local uK_3 = o7("SellKeepTraits") and oy(fA.Traits)
    if uK_3 then
        return false
    end
    return true
end
local function fn754()
    return pg
end
local function fn763()
    local tv = pq()
    if not tv then
        return false
    end
    local tw = oL()
    if not tw then
        return false
    end
    if tv.Parent ~= o5.Character then
        tw:EquipTool(tv)
        task.wait(0.1)
    end
    local tv_1 = oT()
    if #tv_1 == 0 then
        return false
    end
    if (Options.FeedPriority and Options.FeedPriority.Value or "Best Earning") == "Random" then
        local tE = #tv_1
        local tD = -1
        while false and tE <= 2 or true and tE >= 2 do
            local tF = tE
            local tw_4 = math.random(tF)
            tv_1[tF], tv_1[tw_4] = tv_1[tw_4], tv_1[tF]
            tE += tD
        end
    else
        table.sort(tv_1, function(ep, eq)
            return ep.income > eq.income
        end)
    end
    for k, v in tv_1 do
        local tv_2 = pa(pp, v.id)
        if tv_2 == true then
            return true
        end
    end
    return false
end
local function worker2()
    while not Library.Unloaded do
        local w3 = false
        if o7("AutoPlace") then
            pcall(oY)
            w3 = true
        end
        if o7("AutoFeed") then
            pcall(oi)
            w3 = true
        end
        local w3_1 = w3 and 1 or 0.5
        task.wait(w3_1)
    end
end
local function fn882(gm)
    local DiscordGroup = gm:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ph })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ph })
end
local function fn897()
    local rN = PLAYER_PICKAXES:FindFirstChild(o5.Name)
    local rO = {}
    if not rN then
        return { 1 }
    end
    for i, child in rN:GetChildren() do
        local attr = child:GetAttribute("index")
        if type(attr) == "number" then
            rO[#rO + 1] = attr
        end
    end
    if #rO == 0 then
        rO[1] = 1
    end
    table.sort(rO)
    return rO
end
local function fn941()
    local vq = hookfunction ~= nil
    local vr = hookmetamethod ~= nil
    local vs = getrawmetatable ~= nil
    local vt = setrawmetatable ~= nil
    local vu = getgc ~= nil
    local vv = getgenv ~= nil
    local vw = getreg ~= nil
    local vx = getconnections ~= nil
    local vy = firesignal ~= nil
    local vz = getcallbackvalue ~= nil
    local vA = setclipboard ~= nil
    local vB = getcustomasset ~= nil
    local vC = getnamecallmethod ~= nil
    local vD = isexecutorclosure ~= nil
    local vE = fireproximityprompt ~= nil
    local vF = firetouchinterest ~= nil
    local vG = WebSocket ~= nil
    local vH = readfile ~= nil
    local vI = writefile ~= nil
    local vK = (request or http_request) ~= nil
    local vM = (debug and debug.getupvalues) ~= nil
    local vO = (debug and debug.setupvalue) ~= nil
    local vP = 0
    local vQ = { vq, vr, vs, vt, vu, vv, vw, vx, vy, vz, vA, vB, vC, vD, vE, vF, vG, vH, vI, vK, vM, vO }
    for i, v in ipairs(vQ) do
        if v then
            vP += 1
        end
    end
    local vq_1 = vP / #vQ
    if vq_1 >= 0.9 then
        return oJ("Full Support", oB)
    elseif vq_1 >= 0.6 then
        return oJ("Half Support", oq)
    else
        return oJ("Low Support", pz)
    end
end
local function fn957()
    local Character = o5.Character
    local rA = Character and Character:FindFirstChild("HumanoidRootPart")
    return rA
end
local function fn967(cU)
    local sk = Options.RescueRarity and Options.RescueRarity.Value
    local sl = o_(sk)
    local sk_1 = Options.RescueAnimals and Options.RescueAnimals.Value
    local sm = o_(sk_1)
    local sk_2 = next(sl) and not sl[cU.rarity]
    if sk_2 then
        return false
    end
    local sk_3 = next(sm) and not sm[cU.display]
    if sk_3 then
        return false
    end
    return true
end
oi = nil
ol = nil
om = nil
on = nil
oo = nil
op = nil
oq = nil
ot = nil
TryCollectCurrency = nil
ox = nil
oy = nil
oz = nil
oB = nil
TryEquip = nil
Library = nil
TryPurchase = nil
oH = nil
oI = nil
oJ = nil
oK = nil
oL = nil
TryPickup = nil
oN = nil
Options = nil
Toggles = nil
oR = nil
oT = nil
oW = nil
oX = nil
oY = nil
local oZ
o_ = nil
o0 = nil
o1 = nil
RebirthUtil = nil
o4 = nil
o5 = nil
local oh, oj, ou, ov, oA, oE, oG, oP, SaveManager, oU, ThemeManager, o2, o6
o7 = nil
UpgradeUtil = nil
pa = nil
pb = nil
pc = nil
PLAYER_PICKAXES = nil
pf = nil
pg = nil
ph = nil
ItemUtil = nil
pj = nil
pl = nil
pm = nil
TrySell = nil
pp = nil
pq = nil
ps = nil
pv = nil
pw = nil
TryUpgrade = nil
py = nil
pz = nil
TryRebirth = nil
pB = nil
pC = nil
pD = nil
local o9, pd, pk, po, pr, pt, pu, pF, pG, pH, pI, pJ, pK, pN, pO, pP, pQ, pR, pS, pT, pU
local pL_1
local pW, pX, pY
oh, pF, pt, pr, po, pk, pg, pd, o9, o6, o5, o2, o0 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pE = 8
repeat
    pG = (pE * 1 + 2) % 4 + 1
    if pG <= 2 then
        if pG <= 1 then
            pH = (vector.create((pE * 4 + 4) % 11 + 1, (pE * 10 + 9) % 13 + 1, (pE * 10 + 8) % 17 + 1))
            pI = (vector.create((pE * 2 + 6) % 11 + 1, (pE * 11 + 4) % 13 + 1, (pE * 8 + 9) % 17 + 1))
            pJ = (vector.create((pE * 4 + 5) % 11 + 1, (pE * 11 + 1) % 13 + 1, (pE * 13 + 6) % 17 + 1))
            pK = (vector.create((pE * 5 + 9) % 11 + 1, (pE * 5 + 8) % 13 + 1, (pE * 11 + 2) % 17 + 1))
            if vector.dot(vector.cross(pH, pI), (vector.cross(pJ, pK))) == vector.dot(pH, pJ) * vector.dot(pI, pK) - vector.dot(pH, pK) * vector.dot(pI, pJ) then
                pg = game:GetService("CoreGui")
                pd = game:GetService("GuiService")
                o9 = game:GetService("TeleportService")
                o6 = game:GetService("Workspace")
            else
                o6 = game:GetService("CoreGui")
                o9 = game:GetService("GuiService")
                pd = game:GetService("TeleportService")
                pg = game:GetService("Workspace")
            end
            pE = (pE + 9) % 16
        else
            if (pE * 2 + 3) * 16 % 3 == ((pE * 2 + 3) * 16 + 5) % 3 then
                o2 = o0.LocalPlayer
                o5 = o2:WaitForChild("PlayerGui")
                oh = fn754
            else
                o5 = oh.LocalPlayer
                o2 = o5:WaitForChild("PlayerGui")
                o0 = fn754
            end
            pE = (pE + 13) % 16
        end
    elseif pG <= 3 then
        pG = (vector.create((pE * 1 + 4) % 11 + 1, (pE * 8 + 10) % 13 + 1, (pE * 2 + 2) % 17 + 1))
        pH = (vector.create((pE * 7 + 2) % 11 + 1, (pE * 3 + 12) % 13 + 1, (pE * 9 + 8) % 17 + 1))
        local ze = vector.dot(pG, pH)
        if ze * ze >= vector.dot(pG, pG) * vector.dot(pH, pH) + 1 then
            pk = game:GetService("Players")
        else
            oh = game:GetService("Players")
        end
        pE = (pE + 9) % 16
    else
        if (pF and pk or (not pF or pk)) and ((not pk or pk) and (pF or pk)) and (pF or pF or (pk or pk) or (pF and not pF or (pk or not pk))) or not ((pF and pk or (not pF or pk)) and ((not pk or pk) and (pF or pk)) and (pF or pF or (pk or pk) or (pF and not pF or (pk or not pk)))) then
            pF = game:GetService("ReplicatedStorage")
            pt = game:GetService("RunService")
            pr = game:GetService("UserInputService")
            po = game:GetService("VirtualUser")
            pk = game:GetService("HttpService")
        else
            pt = game:GetService("ReplicatedStorage")
            po = game:GetService("RunService")
            pk = game:GetService("UserInputService")
            pr = game:GetService("VirtualUser")
            pF = game:GetService("HttpService")
        end
        pE = (pE + 1) % 16
    end
until (pE * 13 + 6) % 16 == 14
if getgenv then
    oZ, pG = nil, nil
    pE = 7
    repeat
        pH = (pE * 1 + 1) % 2 + 1
        if pH <= 1 then
            pH = (vector.create((pE * 6 + 4) % 11 + 1, (pE * 5 + 3) % 13 + 1, (pE * 8 + 12) % 17 + 1))
            pI = (vector.create((pE * 6 + 1) % 11 + 1, (pE * 9 + 13) % 13 + 1, (pE * 8 + 10) % 17 + 1))
            local zd = vector.dot(pH, pI)
            if zd * zd <= vector.dot(pH, pH) * vector.dot(pI, pI) then
                getgenv().gethui = o0
                oZ = getgenv().__OuroborosRescueAnimalsLib
            else
                getgenv().gethui = oZ
                o0 = getgenv().__OuroborosRescueAnimalsLib
            end
            pE = (pE + 3) % 8
        else
            pH = (vector.create((pE * 7 + 4) % 11 + 1, (pE * 7 + 3) % 13 + 1, (pE * 2 + 3) % 17 + 1))
            pI = (vector.create((pE * 6 + 8) % 11 + 1, (pE * 1 + 1) % 13 + 1, (pE * 4 + 13) % 17 + 1))
            pJ = (vector.create((pE * 3 + 3) % 5 + 1, (pE * 4 + 2) % 7 + 1, (pE * 2 + 5) % 9 + 1))
            if math.abs((vector.angle(pH, pI, pJ))) - math.abs((vector.angle(pI, pH, pJ))) == 3 then
                oZ = pG
            else
                pG = oZ
            end
            pE = (pE + 1) % 8
        end
    until (pE * 3 + 3) % 8 == 4
    if pG then
        pG = oZ.Unload
    end
    if pG then
        pcall(function()
            oZ:Unload()
        end)
    end
end
pcall(function()
    gethui = o0
end)
if setthreadidentity then
    setthreadidentity(8)
end
oP, oK, oG, oE, oB, ou, oq, oj, pz, pP, pO, pN, pl, ItemUtil, pR, pS, UpgradeUtil, pQ, RebirthUtil, pL_1, pK, pJ, pI, pH, pG, pE, TryPickup, oI, TryPurchase, TryEquip, TryCollectCurrency, ot, ol, TryRebirth, TryUpgrade, ps, pp, TrySell, pj, PLAYER_PICKAXES, pb, pT = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local pM = 48
repeat
    pU = (pM * 11 + 2) % 24 + 1
    if pU <= 12 then
        if pU <= 6 then
            if pU <= 3 then
                if pU <= 2 then
                    if pU <= 1 then
                        local pV_1 = {
                            "ftljxd",
                            "dqfmqmagf",
                            "hjfx",
                            "cwd",
                            "szd",
                            "ebkrewmtgg",
                            "cxpbng",
                            "wivcz",
                            "qzzwnzyg",
                            "oyqlcops",
                            "ueffxfvskva",
                            "omcduom",
                            "yqr",
                            "mffwigw"
                        }
                        if pV_1[(pM * 57 + 4) % 14 + 1] <= pV_1[(pM * 57 + 4) % 14 + 1] then
                            pb = {}
                        else
                            oB = {}
                        end
                        pM = (pM + 35) % 96
                    else
                        local pV_2 = (vector.create((pM * 2 + 9) % 11 + 1, (pM * 9 + 6) % 13 + 1, (pM * 4 + 8) % 17 + 1))
                        pW = (vector.create((pM * 7 + 3) % 11 + 1, (pM * 6 + 2) % 13 + 1, (pM * 5 + 9) % 17 + 1))
                        local y3 = vector.dot(pV_2, pW)
                        if y3 * y3 <= vector.dot(pV_2, pV_2) * vector.dot(pW, pW) then
                            pT = {}
                        else
                            oj = {}
                        end
                        pM = (pM + 11) % 96
                    end
                else
                    if (pM * 3 + 2) * 21 % 4 == ((pM * 3 + 2) * 21 + 15) % 4 then
                        oK = "Rescue Animals!"
                        oP = "https://discord.gg/ehKVq7pf7v"
                        oE = "https://rscripts.net/@Ouroboros"
                        oG = "https://ouroboros-hub-rbx.web.app/"
                    else
                        oP = "Rescue Animals!"
                        oK = "https://discord.gg/ehKVq7pf7v"
                        oG = "https://rscripts.net/@Ouroboros"
                        oE = "https://ouroboros-hub-rbx.web.app/"
                    end
                    pM = (pM + 35) % 96
                end
            elseif pU <= 5 then
                if pU <= 4 then
                    local pV_3 = (vector.create((pM * 7 + 1) % 11 + 1, (pM * 2 + 9) % 13 + 1, (pM * 12 + 1) % 17 + 1))
                    pW = (vector.create((pM * 6 + 4) % 11 + 1, (pM * 5 + 7) % 13 + 1, (pM * 15 + 4) % 17 + 1))
                    pX = (vector.create((pM * 5 + 7) % 11 + 1, (pM * 8 + 10) % 13 + 1, (pM * 7 + 10) % 17 + 1))
                    pY = (vector.create((pM * 3 + 3) % 5 + 1, (pM * 3 + 3) % 7 + 1, (pM * 5 + 6) % 9 + 1))
                    if vector.dot(vector.cross(pV_3, (vector.cross(pW, pX))), pY) == vector.dot(pW * vector.dot(pV_3, pX) - pX * vector.dot(pV_3, pW), pY) + 1 then
                        pz = "#7fd47f"
                        oq = "#6ec1ff"
                        oj = "#e8a34d"
                        oB = "#8b93a3"
                        ou = "#e05a5a"
                    else
                        oB = "#7fd47f"
                        ou = "#6ec1ff"
                        oq = "#e8a34d"
                        oj = "#8b93a3"
                        pz = "#e05a5a"
                    end
                    pM = (pM + 35) % 96
                else
                    local pV_4 = { "mxrzzeu", "mih", "fjxyn", "hzdox", "pkuydbreo", "lafsf", "hrvthaf", "wuf" }
                    local yr = pM
                    pW = pV_4[yr % 8 + 1]
                    if pW:len() <= pW:gsub("(.)", "%1%1", yr % 3 % 2 + 1):len() then
                        pP = pF:WaitForChild("Library")
                    else
                        pF = pP:WaitForChild("Library")
                    end
                    pM = (pM + 83) % 96
                end
            else
                if (pK or pK or (pl or not pl)) and (not pl and not pK and (not oP and not pl)) and (not pl and pK or oP and not pK or (pK or pK or not pl and not pK)) and not ((pK or pK or (pl or not pl)) and (not pl and not pK and (not oP and not pl)) and (not pl and pK or oP and not pK or (pK or pK or not pl and not pK))) then
                    pP = pO:WaitForChild("Knit"):WaitForChild("Knit"):WaitForChild("Services")
                else
                    pO = pP:WaitForChild("Knit"):WaitForChild("Knit"):WaitForChild("Services")
                end
                pM = (pM + 83) % 96
            end
        elseif pU <= 9 then
            if pU <= 8 then
                if pU <= 7 then
                    if ((TryPurchase or oq or not oq and oq) and (not TryPurchase and not oq and (not oq and not PLAYER_PICKAXES)) or (not TryPurchase or not PLAYER_PICKAXES or (not ol or oq) or (not oq or TryPurchase) and (ol and not ol))) and (TryPurchase or oq or (not TryPurchase or not oq) or (TryPurchase or not TryPurchase or (not oq or ol)) or not oq and not PLAYER_PICKAXES and (not TryPurchase and TryPurchase) and ((oq or not oq) and (not PLAYER_PICKAXES and oq))) and not (((TryPurchase or oq or not oq and oq) and (not TryPurchase and not oq and (not oq and not PLAYER_PICKAXES)) or (not TryPurchase or not PLAYER_PICKAXES or (not ol or oq) or (not oq or TryPurchase) and (ol and not ol))) and (TryPurchase or oq or (not TryPurchase or not oq) or (TryPurchase or not TryPurchase or (not oq or ol)) or not oq and not PLAYER_PICKAXES and (not TryPurchase and TryPurchase) and ((oq or not oq) and (not PLAYER_PICKAXES and oq)))) then
                        pP = pN:WaitForChild("Balancing")
                    else
                        pN = pP:WaitForChild("Balancing")
                    end
                    pM = (pM + 35) % 96
                else
                    local pV_5 = (vector.create((pM * 1 + 9) % 11 + 1, (pM * 5 + 5) % 13 + 1, (pM * 7 + 3) % 17 + 1))
                    pW = (vector.create((pM * 6 + 8) % 11 + 1, (pM * 10 + 1) % 13 + 1, (pM * 12 + 5) % 17 + 1))
                    pX = (vector.create((pM * 3 + 5) % 5 + 1, (pM * 3 + 6) % 7 + 1, (pM * 3 + 6) % 9 + 1))
                    if math.abs((vector.angle(pV_5, pW, pX))) - math.abs((vector.angle(pW, pV_5, pX))) == 0 then
                        pl = require(pP:WaitForChild("Client"):WaitForChild("Saving"))
                        ItemUtil = require(pN:WaitForChild("ItemUtil"))
                        pR = require(pN:WaitForChild("PickaxeUtil"))
                        pS = require(pN:WaitForChild("BoostUtil"))
                    else
                        pR = require(pS:WaitForChild("Client"):WaitForChild("Saving"))
                        pl = require(ItemUtil:WaitForChild("ItemUtil"))
                        pP = require(ItemUtil:WaitForChild("PickaxeUtil"))
                        pN = require(ItemUtil:WaitForChild("BoostUtil"))
                    end
                    pM = (pM + 83) % 96
                end
            else
                local yQ = bit32.rrotate(bit32.bxor(bit32.lrotate(pM, 13), string.byte(tostring(pb))), 21)
                if bit32.bxor(bit32.lrotate(bit32.bxor(yQ, 979004389), 6), 2526738766) ~= bit32.lrotate(yQ, 6) then
                    pN = require(UpgradeUtil:WaitForChild("UpgradeUtil"))
                else
                    UpgradeUtil = require(pN:WaitForChild("UpgradeUtil"))
                end
                pM = (pM + 11) % 96
            end
        elseif pU <= 11 then
            if pU <= 10 then
                if (pM * 1 + 6) * 5 % 4 == ((pM * 1 + 6) * 5 + 8) % 4 then
                    pQ = require(pN:WaitForChild("RarityUtil"))
                else
                    pN = require(pQ:WaitForChild("RarityUtil"))
                end
                pM = (pM + 83) % 96
            else
                local pV_6 = (vector.create((pM * 2 + 8) % 11 + 1, (pM * 9 + 9) % 13 + 1, (pM * 7 + 3) % 17 + 1))
                pW = (vector.create((pM * 3 + 4) % 11 + 1, (pM * 9 + 1) % 13 + 1, (pM * 14 + 7) % 17 + 1))
                pX = (vector.create((pM * 2 + 2) % 5 + 1, (pM * 1 + 4) % 7 + 1, (pM * 1 + 2) % 9 + 1))
                if math.abs((vector.angle(pV_6, pW, pX))) - math.abs((vector.angle(pW, pV_6, pX))) == 0 then
                    RebirthUtil = require(pN:WaitForChild("RebirthUtil"))
                else
                    pN = require(RebirthUtil:WaitForChild("RebirthUtil"))
                end
                pM = (pM + 11) % 96
            end
        else
            local yP = bit32.rrotate(bit32.bxor(bit32.lrotate(pM, 13), string.byte(tostring(pH))), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(yP, 998482324), 6), 3773326606) ~= bit32.lrotate(yP, 6) then
                pO = pL_1:WaitForChild("SpawnerService"):WaitForChild("RF")
            else
                pL_1 = pO:WaitForChild("SpawnerService"):WaitForChild("RF")
            end
            pM = (pM + 83) % 96
        end
    elseif pU <= 18 then
        if pU <= 15 then
            if pU <= 14 then
                if pU <= 13 then
                    if pM * 31460429 + 1 + 1 >= pM * 31460429 + 1 + 1 + 1 then
                        pO = pK:WaitForChild("PickaxeService"):WaitForChild("RF")
                    else
                        pK = pO:WaitForChild("PickaxeService"):WaitForChild("RF")
                    end
                    pM = (pM + 35) % 96
                else
                    local pV_7 = {
                        "hojlh",
                        "stuxfwqln",
                        "iwdomdhehyz",
                        "qmngocauxc",
                        "rufd",
                        "kbfhnxnvcq",
                        "pow",
                        "fmu",
                        "ykzthdk",
                        "muxwicc"
                    }
                    local zt = pM
                    pW = pV_7[zt % 10 + 1]
                    if pW:len() <= pW:gsub("(.)", "%1%1", zt % 3 % 2 + 1):len() then
                        pJ = pO:WaitForChild("SlotService"):WaitForChild("RF")
                    else
                        pO = pJ:WaitForChild("SlotService"):WaitForChild("RF")
                    end
                    pM = (pM + 35) % 96
                end
            else
                local pV_8 = {
                    "ivwsgpabc",
                    "qcdenpdw",
                    "pmji",
                    "dplcvrk",
                    "fyown",
                    "ctzibxetbc",
                    "mfgci",
                    "vljvtgtbm",
                    "quvkxo",
                    "tqnc",
                    "lqukgytrrwun",
                    "hbznlovt"
                }
                if pV_8[(pM * 62 + 100) % 12 + 1] < pV_8[(pM * 62 + 100) % 12 + 1] then
                    pO = pI:WaitForChild("RebirthService"):WaitForChild("RF")
                else
                    pI = pO:WaitForChild("RebirthService"):WaitForChild("RF")
                end
                pM = (pM + 11) % 96
            end
        elseif pU <= 17 then
            if pU <= 16 then
                local pV_9 = { "pgwusjb", "rwnfyp", "oosnfkwyx", "zmmazmi", "izskfvzvqo", "wrgcd", "eurozriwcgb", "cyglmeifiww" }
                local ys = pM
                pW = pV_9[ys % 8 + 1]
                if pW:len() >= pW:gsub("(.)", "%1%1", ys % 3 % 2 + 1):len() then
                    pO = pH:WaitForChild("UpgradeService"):WaitForChild("RF")
                else
                    pH = pO:WaitForChild("UpgradeService"):WaitForChild("RF")
                end
                pM = (pM + 11) % 96
            else
                local pV_10 = (vector.create((pM * 5 + 3) % 11 + 1, (pM * 10 + 12) % 13 + 1, (pM * 9 + 17) % 17 + 1))
                pW = (vector.create((pM * 7 + 2) % 11 + 1, (pM * 7 + 12) % 13 + 1, (pM * 3 + 6) % 17 + 1))
                pX = (vector.create((pM * 2 + 7) % 11 + 1, (pM * 8 + 1) % 13 + 1, (pM * 10 + 14) % 17 + 1))
                pY = (vector.create((pM * 6 + 3) % 11 + 1, (pM * 5 + 5) % 13 + 1, (pM * 13 + 6) % 17 + 1))
                if vector.dot(vector.cross(pV_10, pW), (vector.cross(pX, pY))) == vector.dot(pV_10, pX) * vector.dot(pW, pY) - vector.dot(pV_10, pY) * vector.dot(pW, pX) then
                    pG = pO:WaitForChild("BoostService"):WaitForChild("RF")
                else
                    pO = pG:WaitForChild("BoostService"):WaitForChild("RF")
                end
                pM = (pM + 35) % 96
            end
        else
            local pV_11 = (vector.create((pM * 5 + 4) % 11 + 1, (pM * 3 + 12) % 13 + 1, (pM * 2 + 14) % 17 + 1))
            pW = (vector.create((pM * 4 + 1) % 11 + 1, (pM * 2 + 13) % 13 + 1, (pM * 6 + 14) % 17 + 1))
            pX = (vector.create((pM * 5 + 9) % 11 + 1, (pM * 5 + 9) % 13 + 1, (pM * 2 + 3) % 17 + 1))
            pY = (vector.create((pM * 2 + 5) % 5 + 1, (pM * 1 + 1) % 7 + 1, (pM * 1 + 4) % 9 + 1))
            if vector.dot(vector.cross(pV_11, (vector.cross(pW, pX))), pY) == vector.dot(pW * vector.dot(pV_11, pX) - pX * vector.dot(pV_11, pW), pY) then
                pE = pO:WaitForChild("ItemService"):WaitForChild("RF")
            else
                pO = pE:WaitForChild("ItemService"):WaitForChild("RF")
            end
            pM = (pM + 83) % 96
        end
    elseif pU <= 21 then
        if pU <= 20 then
            if pU <= 19 then
                local pV_12 = {
                    "sspwwyf",
                    "lboduhcbpl",
                    "npwxyrn",
                    "qqlio",
                    "xvlnsgpqe",
                    "lnphymmm",
                    "zehzwltcn",
                    "kelmvuziiqx",
                    "vig"
                }
                local y1 = pM
                pW = pV_12[y1 % 9 + 1]
                if pW:len() >= pW:gsub("(.)", "%1%1", y1 % 3 % 2 + 1):len() then
                    pL_1 = TryPickup:WaitForChild("TryPickup")
                else
                    TryPickup = pL_1:WaitForChild("TryPickup")
                end
                pM = (pM + 83) % 96
            else
                if (ol or not pE or (pE or pE)) and (ol or not ol or (pE or TryEquip)) and ((pE or not TryEquip or not pE and ol) and (ol and pE and (not TryEquip or TryEquip))) and ((pE or pE or (TryEquip or not ol)) and (not TryEquip or pE or (not pE or ol)) and (ol or pE or not TryEquip and pE or (TryEquip and TryEquip or (ol or not pE)))) and not ((ol or not pE or (pE or pE)) and (ol or not ol or (pE or TryEquip)) and ((pE or not TryEquip or not pE and ol) and (ol and pE and (not TryEquip or TryEquip))) and ((pE or pE or (TryEquip or not ol)) and (not TryEquip or pE or (not pE or ol)) and (ol or pE or not TryEquip and pE or (TryEquip and TryEquip or (ol or not pE))))) then
                    pK = TryPurchase:WaitForChild("TryDamage")
                    oI = TryPurchase:WaitForChild("TryPurchase")
                else
                    oI = pK:WaitForChild("TryDamage")
                    TryPurchase = pK:WaitForChild("TryPurchase")
                end
                pM = (pM + 35) % 96
            end
        else
            local pV_13 = {
                "bpap",
                "pwr",
                "akiuqoxqaq",
                "itmtcuwfuq",
                "johblq",
                "afdbnzhdwy",
                "rzwlaie",
                "vmbzxp",
                "urqx",
                "ixenvyy",
                "fdnftxsx"
            }
            local y6 = pM
            pW = pV_13[y6 % 11 + 1]
            if pW:len() <= pW:gsub("(.)", "%1%1", y6 % 3 % 2 + 1):len() then
                TryEquip = pK:WaitForChild("TryEquip")
            else
                pK = TryEquip:WaitForChild("TryEquip")
            end
            pM = (pM + 83) % 96
        end
    elseif pU <= 23 then
        if pU <= 22 then
            pU = (vector.create((pM * 3 + 9) % 11 + 1, (pM * 2 + 2) % 13 + 1, (pM * 7 + 16) % 17 + 1))
            local pV_14 = (vector.create((pM * 3 + 2) % 11 + 1, (pM * 5 + 12) % 13 + 1, (pM * 15 + 15) % 17 + 1))
            local yR = vector.dot(pU, pV_14)
            if yR * yR >= vector.dot(pU, pU) * vector.dot(pV_14, pV_14) + 1 then
                pJ = TryCollectCurrency:WaitForChild("TryCollectCurrency")
                ol = TryCollectCurrency:WaitForChild("TryPlaceItem")
                ot = TryCollectCurrency:WaitForChild("TryPlaceBest")
            else
                TryCollectCurrency = pJ:WaitForChild("TryCollectCurrency")
                ot = pJ:WaitForChild("TryPlaceItem")
                ol = pJ:WaitForChild("TryPlaceBest")
            end
            pM = (pM + 35) % 96
        else
            pU = (vector.create((pM * 3 + 3) % 11 + 1, (pM * 4 + 12) % 13 + 1, (pM * 15 + 5) % 17 + 1))
            local pV_15 = (vector.create((pM * 5 + 8) % 11 + 1, (pM * 5 + 8) % 13 + 1, (pM * 8 + 5) % 17 + 1))
            pW = (vector.create((pM * 5 + 2) % 11 + 1, (pM * 6 + 11) % 13 + 1, (pM * 8 + 14) % 17 + 1))
            if vector.dot(vector.cross(pU, pV_15), pW) == vector.dot(vector.cross(pV_15, pW), pU) + 4 then
                pI = pG:WaitForChild("TryRebirth")
                pp = TryRebirth:WaitForChild("TryUpgrade")
                pH = TryUpgrade:WaitForChild("TryPurchase")
                ps = TryUpgrade:WaitForChild("TryUseBoost")
            else
                TryRebirth = pI:WaitForChild("TryRebirth")
                TryUpgrade = pH:WaitForChild("TryUpgrade")
                ps = pG:WaitForChild("TryPurchase")
                pp = pG:WaitForChild("TryUseBoost")
            end
            pM = (pM + 59) % 96
        end
    else
        if pT and RebirthUtil and (not pT or pK) and ((pK or pK) and (not pQ and not pQ)) or (not pQ and pQ and (pK and not pT) or (not pK or pQ) and (not pH or RebirthUtil)) or not (pT and RebirthUtil and (not pT or pK) and ((pK or pK) and (not pQ and not pQ)) or (not pQ and pQ and (pK and not pT) or (not pK or pQ) and (not pH or RebirthUtil))) then
            TrySell = pE:WaitForChild("TrySell")
            pj = o6:WaitForChild("SPAWNERS")
            PLAYER_PICKAXES = o6:WaitForChild("CASCHES"):WaitForChild("PLAYER_PICKAXES")
        else
            pE = PLAYER_PICKAXES:WaitForChild("TrySell")
            o6 = TrySell:WaitForChild("SPAWNERS")
            pj = TrySell:WaitForChild("CASCHES"):WaitForChild("PLAYER_PICKAXES")
        end
        pM = (pM + 35) % 96
    end
until (pM * 25 + 1) % 96 == 25
pU = {}
for k, v in pQ.Data do
    pE = #pU + 1
    pF = v.Order or 0
    pU[pE] = { name = k, order = pF }
end
pG = 0
repeat
    local yE = bit32.rrotate(bit32.bxor(bit32.lrotate(pG, 14), string.byte(tostring(pG))), 29)
    if bit32.bxor(bit32.lrotate(bit32.bxor(yE, 4008732276), 20), 1733226246) ~= bit32.lrotate(yE, 20) then
        table.sort(pU, fn103)
    else
        table.sort(pU, fn103)
    end
    pG = (pG + 0) % 4
until (pG * 3 + 0) % 4 == 0
for k, v in pU do
    pb[v.name] = v.order
    pT[#pT + 1] = v.name
end
pG, pF, oN = nil, nil, nil
pE = 4
repeat
    pH = (pE * 1 + 0) % 2 + 1
    if pH <= 1 then
        pH = { "ayjokb", "suazz", "ossulafrcwv", "xelio", "udvzllhbjg", "cnhyfuklj", "swyghvmh" }
        local y5 = pE
        pI = pH[y5 % 7 + 1]
        if pI:len() >= pI:reverse():rep(y5 % 3 + 2):len() then
            pF = {}
            pG = {}
        else
            pG = {}
            pF = {}
        end
        pE = (pE + 7) % 8
    else
        if (not oN and not oN or (pG or pG)) and ((pF or not pF) and (not pF or not oN)) and not ((not oN and not oN or (pG or pG)) and ((pF or not pF) and (not pF or not oN))) then
            pF = {}
        else
            oN = {}
        end
        pE = (pE + 3) % 8
    end
until (pE * 3 + 3) % 8 == 5
pH = {}
for k, v in ItemUtil.GetAll() do
    pE = v.Display or k
    pI = pE
    pE = #pH + 1
    pJ = v.Rarity or "Common"
    pK = v.Income or 0
    pH[pE] = { name = k, display = pI, rarity = pJ, income = pK }
    pF[pI] = k
    oN[k] = pI
end
pE = 6
repeat
    pF = {
        "pojz",
        "wodqieljb",
        "vmi",
        "txriglqmng",
        "lqqwtnfrph",
        "fwedtzerzfq",
        "qdenmdkbz",
        "cqbxrybvg",
        "xaas",
        "hzwjsi",
        "qumhw",
        "yjtwx"
    }
    local za = pE
    pI = pF[za % 12 + 1]
    if pI:len() <= pI:gsub("(.)", "%1%1", za % 3 % 2 + 1):len() then
        table.sort(pH, fn254)
    else
        table.sort(pH, fn254)
    end
    pE = (pE + 3) % 8
until (pE * 7 + 6) % 8 == 5
for k, v in pH do
    pG[#pG + 1] = v.display
end
pf = {}
pE = {}
for k, v in pR.GetAll() do
    if type(k) == "string" then
        pF = #pf + 1
        pH = v.Display or k
        pI = v.Required or 0
        pJ = v.Rebirth or 0
        pK = v.Damage or 0
        pf[pF] = { name = k, display = pH, required = pI, rebirth = pJ, damage = pK }
    end
end
local pL_2 = 3
repeat
    local zE = bit32.rrotate(bit32.bxor(bit32.lrotate(pL_2, 16), string.byte(tostring(pL_2))), 30)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(zE, 398533779), 3393778033), (bit32.bxor(bit32.band(zE, 3896433516), 3631300644))), 3393778033), 3631300644) == zE then
        table.sort(pf, fn658)
    else
        table.sort(pf, fn658)
    end
    pL_2 = (pL_2 + 4) % 8
until (pL_2 * 5 + 5) % 8 == 0
for k, v in pf do
    pE[#pE + 1] = v.display
end
pI, oX, pH = nil, nil, nil
pF = 3
repeat
    pE = (pF * 1 + 1) % 2 + 1
    if pE <= 1 then
        local zc = bit32.rrotate(bit32.bxor(bit32.lrotate(pF, 21), string.byte(tostring(pH))), 29)
        if bit32.bxor(bit32.lrotate(bit32.bxor(zc, 1180229246), 26), 4179190649) == bit32.lrotate(zc, 26) then
            pI = {}
        else
            pH = {}
        end
        pF = (pF + 1) % 8
    else
        pE = {
            "occucf",
            "gpixr",
            "ikbnduukor",
            "xktxxionqj",
            "xgpbnof",
            "ncqenflqfl",
            "dcqciaajokqn",
            "sam",
            "ofptairosi",
            "zjevovtybcpr",
            "ycwxhm",
            "gkssgvwlsub",
            "onzqjzseu",
            "deqtrnusxez"
        }
        if pE[(pF * 20 + 113) % 14 + 1] <= pE[(pF * 20 + 113) % 14 + 1] then
            oX = {}
            pH = {}
        else
            pH = {}
            oX = {}
        end
        pF = (pF + 7) % 8
    end
until (pF * 1 + 6) % 8 == 1
pE = {}
for k, v in UpgradeUtil.GetAll() do
    pF = v.Display or k
    pJ = pF
    pF = #pE + 1
    pK = v.Order or 0
    pE[pF] = { name = k, display = pJ, order = pK }
    oX[pJ] = k
end
pF = 5
repeat
    local zs = bit32.rrotate(bit32.bxor(bit32.lrotate(pF, 2), string.byte(tostring(pF))), 18)
    if bit32.bxor(bit32.lrotate(bit32.bxor(zs, 2273442268), 26), 1914570727) ~= bit32.lrotate(zs, 26) then
        table.sort(pE, fn39)
    else
        table.sort(pE, fn39)
    end
    pF = (pF + 6) % 8
until (pF * 5 + 6) % 8 == 5
for k, v in pE do
    pI[#pI + 1] = v.display
    pH[v.display] = true
end
pF, pC, py, pJ = nil, nil, nil, nil
pE = 3
repeat
    pK = (vector.create((pE * 4 + 7) % 11 + 1, (pE * 11 + 1) % 13 + 1, (pE * 10 + 12) % 17 + 1))
    local pL_3 = (vector.create((pE * 5 + 8) % 11 + 1, (pE * 3 + 9) % 13 + 1, (pE * 3 + 13) % 17 + 1))
    pM = (vector.create((pE * 2 + 7) % 5 + 1, (pE * 2 + 4) % 7 + 1, (pE * 4 + 4) % 9 + 1))
    if math.abs((vector.angle(pK, pL_3, pM))) - math.abs((vector.angle(pL_3, pK, pM))) == 1 then
        py = {}
        pF = {}
        pJ = {}
        pC = {}
    else
        pF = {}
        pC = {}
        py = {}
        pJ = {}
    end
    pE = (pE + 0) % 8
until (pE * 3 + 1) % 8 == 2
pK = {}
for k, v in pS.GetAll() do
    pE = v.Display or k
    local pL_4 = pE
    pE = v.Required or 0
    pM = pE
    pK[#pK + 1] = { name = k, display = pL_4, required = pM }
    pC[pL_4] = k
    py[k] = pM
end
table.sort(pK, fn642)
for k, v in pK do
    pF[#pF + 1] = v.display
    pJ[v.display] = true
end
pP = { "Lowest Rarity", "Highest Rarity", "Random" }
pO = { "Best Earning", "Random" }
pN = { "Normal", "Gold", "Diamond", "Rainbow" }
pM = { Common = true }
local pL_5 = { Normal = true }
pK = {}
for k, v in pT do
    pK[v] = true
end
Library = nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if getgenv then
    getgenv().__OuroborosRescueAnimalsLib = Library
end
ThemeManager, SaveManager, Toggles, Options, pu, oz, oJ, oA, pw, ph, o7, o_, oL, ov, pv, pa, oR, om, oW, on, pc, ox, o4, oY, pq, oT, oi, oH, pm, pB, oo, oy, op, pD, o1, pS = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
oz = function()
    local function q1(br)
        local q_ = not br or not br:IsA("ScreenGui")
        if q_ then
            return
        end
        br.ResetOnSpawn = false
        br.IgnoreGuiInset = true
        br.DisplayOrder = math.max(br.DisplayOrder, 1000)
        pcall(function()
            br.ClipToDeviceSafeArea = false
        end)
        pcall(function()
            br.ScreenInsets = Enum.ScreenInsets.None
        end)
        if br.Parent ~= pg then
            br.Parent = pg
        end
    end
    q1(Library.ScreenGui)
    if Library.ActiveLoading and Library.ActiveLoading.ScreenGui then
        q1(Library.ActiveLoading.ScreenGui)
    end
    for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
        local q2_1 = pg:FindFirstChild(v) or o2:FindFirstChild(v)
        if q2_1 then
            q1(q2_1)
        end
    end
end
oz()
task.spawn(worker)
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
if (o_ or not pc) and (not pq or not o_) and ((not pq or ThemeManager) and (pc and ThemeManager)) and not ((o_ or not pc) and (not pq or not o_) and ((not pq or ThemeManager) and (pc and ThemeManager))) then
    loadstring(game:HttpGet(SaveManager .. "addons/SaveManager.lua"))()
else
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
Toggles = Library.Toggles
Options = Library.Options
oJ = fn149
oA = fn42
pw = fn501
ph = fn475
o7 = fn688
o_ = fn365
oL = fn143
ov = fn957
pv = fn390
if (ph and not ThemeManager or not ph and pS or (not oJ or not pS or (not oo or not oJ))) and not (ph and not ThemeManager or not ph and pS or (not oJ or not pS or (not oo or not oJ))) then
    oR = function(co, ...)
        local rL_2
        local rK_2
        local rJ_2
        local rI_2
        local rH_2
        local rG_2
        rG_2, rL_2, rJ_2, rH_2, rI_2, rK_2 = pcall(function(...)
            return co:InvokeServer(...)
        end, ...)
        if not rG_2 then
            return false, tostring(rL_2)
        end
        return rL_2, rJ_2, rH_2, rI_2, rK_2
    end
    pa = fn897
else
    pa = function(co, ...)
        local rL_1
        local rK_1
        local rJ_1
        local rI_1
        local rH_1
        local rG_1
        rG_1, rL_1, rJ_1, rH_1, rI_1, rK_1 = pcall(function(...)
            return co:InvokeServer(...)
        end, ...)
        if not rG_1 then
            return false, tostring(rL_1)
        end
        return rL_1, rJ_1, rH_1, rI_1, rK_1
    end
    oR = fn897
end
om = fn138
oW = fn967
on = function(c3)
    local ss
    ss = nil
    if #c3 == 0 then
        return nil
    end
    local su = Options.RescuePriority and Options.RescuePriority.Value
    local sy = if su then 1 else 0
    local sw = 3584 * sy + 409 * (1 - sy)
    local sx = 2320 * sy + 2534 * (1 - sy)
    if not ((sw * 3087 + sx * 2223 + sw * sx) % 16777213 == 7758835) then
        su = "Lowest Rarity"
    end
    ss = su
    if ss == "Random" then
        return c3[math.random(1, #c3)]
    end
    table.sort(c3, function(c7, c8)
        if c7.order ~= c8.order then
            if ss == "Highest Rarity" then
                return c7.order > c8.order
            end
            return c7.order < c8.order
        elseif c7.health ~= c8.health then
            return c7.health < c8.health
        else
            return c7.display < c8.display
        end
    end)
    return c3[1]
end
pc = fn608
ox = fn506
o4 = fn213
oY = fn575
pq = fn576
oT = fn225
oi = fn763
oH = fn105
pm = fn384
pB = fn132
oo = fn116
oy = fn672
op = fn731
pD = fn97
o1 = fn423
pR = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = oK, Copyable = true }, "|", oP },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
if ((pq or not oR) and (oR or oR) or (not Toggles or not oR) and (Toggles and not oR)) and (oR and Toggles or not oR and oR or (oW and oW or (not pq or not oR))) or not (((pq or not oR) and (oR or oR) or (not Toggles or not oR) and (Toggles and not oR)) and (oR and Toggles or not oR and oR or (oW and oW or (not pq or not oR)))) then
    pu = {
        Info = pR:AddTab("Info", "info"),
        Main = pR:AddTab("Main", "paw-print"),
        Player = pR:AddTab("Player", "person-standing"),
        Settings = pR:AddTab("Settings", "settings")
    }
else
    pR = {
        Player = pu:AddTab("Player", "person-standing"),
        Settings = pu:AddTab("Settings", "settings"),
        Main = pu:AddTab("Main", "paw-print"),
        Info = pu:AddTab("Info", "info")
    }
end
pS = fn882
for k, v in pu do
    if k ~= "Info" then
        pS(v)
    end
end
oU = nil
pW = pu.Main:AddLeftGroupbox("Rescue", "paw-print")
pW:AddToggle("AutoRescue", { Text = "Auto Rescue Animals", Default = false })
pW:AddDropdown("RescueRarity", { Text = "Rarity Filter", Values = pT, Default = pK, Multi = true, AllowEmpty = true })
pW:AddDropdown("RescueAnimals", {
    Text = "Specific Animals",
    Values = pG,
    Default = {},
    Multi = true,
    AllowEmpty = true,
    Searchable = true
})
pW:AddDropdown("RescuePriority", { Text = "Priority", Values = pP, Default = 1 })
local FarmGroup = pu.Main:AddRightGroupbox("Farm", "coins")
FarmGroup:AddToggle("AutoCollect", { Text = "Auto Collect Money", Default = false })
FarmGroup:AddToggle("AutoPlace", { Text = "Auto Place in Pen", Default = false })
FarmGroup:AddToggle("AutoFeed", { Text = "Auto Feed", Default = false })
FarmGroup:AddDropdown("FeedPriority", { Text = "Feed Priority", Values = pO, Default = 1 })
FarmGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
pU = pu.Main:AddRightGroupbox("Sell", "tags")
pU:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
pU:AddDropdown("SellRarity", { Text = "Sell Rarity", Values = pT, Default = pM, Multi = true, AllowEmpty = true })
pU:AddDropdown("SellMutation", { Text = "Sell Mutation", Values = pN, Default = pL_5, Multi = true, AllowEmpty = true })
pU:AddDropdown("SellAnimals", {
    Text = "Sell Animals",
    Values = pG,
    Default = {},
    Multi = true,
    AllowEmpty = true,
    Searchable = true
})
pU:AddToggle("SellKeepTraits", { Text = "Keep Traits", Default = true })
pU:AddButton({ Text = "Sell Now", Func = onSellNow })
pQ = pu.Main:AddLeftGroupbox("Shop", "shopping-bag")
pQ:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
pQ:AddDropdown("BuyUpgrades", { Text = "Upgrades", Values = pI, Default = pH, Multi = true, AllowEmpty = true })
pQ:AddToggle("AutoBuyPickaxes", { Text = "Auto Buy Pickaxes", Default = false })
pQ:AddToggle("AutoFoodShop", { Text = "Auto Food Shop", Default = false })
pQ:AddDropdown("BuyFood", { Text = "Food Shop", Values = pF, Default = pJ, Multi = true, AllowEmpty = true })
oU = fn941
pY = function()
    local wh
    local wd
    wd = nil
    wh = nil
    local Label, Label2, Label3, wf, wg
    wh = "Unknown"
    pcall(function()
        local vZ_1
        local vY_1
        if identifyexecutor then
            vZ_1, vY_1 = identifyexecutor()
            local v_ = vZ_1 ~= ""
            local v0 = type(vZ_1) == "string" and v_
            if v0 then
                local v__1 = type(vY_1) == "string" and vY_1 ~= "" and vZ_1 .. " " .. vY_1
                wh = v__1 or vZ_1
            end
        end
    end)
    local wi = oU()
    wd = os.clock()
    wg = function()
        local v5 = math.floor(os.clock() - wd)
        if v5 < 60 then
            return v5 .. "s"
        elseif v5 < 3600 then
            return string.format("%dm %ds", v5 // 60, v5 % 60)
        else
            return string.format("%dh %dm", v5 // 3600, v5 % 3600 // 60)
        end
    end
    local UserGroup = pu.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = o5, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(oA("User", o5.DisplayName .. " @" .. o5.Name, oB), true)
    UserGroup:AddLabel(oA("UserId", tostring(o5.UserId), ou), true)
    UserGroup:AddLabel(oA("Executor", wh .. "  " .. wi, oB), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(oA("Session", wg(), oq), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            pw(o5.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            pw("https://www.roblox.com/users/" .. tostring(o5.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = pu.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(oA("Game", oP, ou), true)
    Label2 = SessionGroup:AddLabel(oA("Players", "0/0", oB), true)
    wf = tostring(game.JobId)
    local wj_1 = #wf > 18 and string.sub(wf, 1, 18) .. "..."
    local wj_2 = wj_1 or wf
    SessionGroup:AddLabel(oA("Job", wj_2, oj), true)
    Label = SessionGroup:AddLabel(oA("Ping", "0 ms", oq), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            o9:Teleport(game.PlaceId, o5)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            pw(wf, "Copied Job ID")
        end
    })
    task.spawn(function()
        local v8_1
        local v7_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(oA("Session", wg(), oq))
            Label2:SetText(oA("Players", #oh:GetPlayers() .. "/" .. tostring(oh.MaxPlayers), oB))
            v7_1, v8_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local v7_2 = v7_1 and v8_1 .. " ms" or "n/a"
            Label:SetText(oA("Ping", v7_2, oq))
        end
    end)
    local SocialsGroup = pu.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = ph })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            pw(oG, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            pw(oE, "Copied website link")
        end
    })
end
pR = function()
    local MovementGroup = pu.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = pu.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local connection
    local function hN(hO)
        pcall(function()
            pd:SetGameplayPausedNotificationEnabled(not hO)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = pg:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hO
            end
        end)
        if not hO then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(o5, "GameplayPaused", false)
            else
                o5.GameplayPaused = false
            end
        end)
    end
    local function h0(h1)
        if not h1:IsA("ProximityPrompt") then
            return
        end
        h1.HoldDuration = 0
        h1.MaxActivationDistance = 50
        h1.RequiresLineOfSight = false
    end
    pt.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if o7("NoClip") then
            local Character = o5.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local wr_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if wr_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    pr.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if o7("InfJump") then
            local wz = oL()
            if wz then
                wz:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    pt.RenderStepped:Connect(function(ik)
        if Library.Unloaded then
            return
        end
        if o7("WalkSpeedEnabled") then
            local wB_1 = oL()
            local WalkSpeed = Options.WalkSpeed
            if wB_1 and WalkSpeed then
                wB_1.WalkSpeed = WalkSpeed.Value
            end
        end
        if o7("Fly") then
            local wB_2 = ov()
            local wC_2 = oL()
            local FlySpeed = Options.FlySpeed
            local CurrentCamera = o6.CurrentCamera
            if wB_2 and wC_2 and FlySpeed and CurrentCamera then
                wC_2.PlatformStand = true
                local wC_3 = Vector3.zero
                if pr:IsKeyDown(Enum.KeyCode.W) then
                    wC_3 += CurrentCamera.CFrame.LookVector
                end
                if pr:IsKeyDown(Enum.KeyCode.S) then
                    wC_3 -= CurrentCamera.CFrame.LookVector
                end
                if pr:IsKeyDown(Enum.KeyCode.A) then
                    wC_3 -= CurrentCamera.CFrame.RightVector
                end
                if pr:IsKeyDown(Enum.KeyCode.D) then
                    wC_3 += CurrentCamera.CFrame.RightVector
                end
                if pr:IsKeyDown(Enum.KeyCode.Space) then
                    wC_3 += Vector3.new(0, 1, 0)
                end
                if pr:IsKeyDown(Enum.KeyCode.LeftControl) then
                    wC_3 -= Vector3.new(0, 1, 0)
                end
                wB_2.AssemblyLinearVelocity = Vector3.zero
                if wC_3.Magnitude > 0 then
                    wB_2.CFrame = wB_2.CFrame + wC_3.Unit * FlySpeed.Value * ik
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local wL = oL()
            if wL then
                wL.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local wQ = oL()
            if wQ then
                wQ.WalkSpeed = 16
            end
        end
    end)
    Toggles.AntiGameplayPause:OnChanged(function()
        hN(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hN(true)
            end
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in ipairs(o6:GetDescendants()) do
                pcall(h0, descendant)
            end
            connection = o6.DescendantAdded:Connect(function(iV)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(h0, iV)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        hN(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
do
    pY()
    pR()
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    pX = function()
        local connection
        local MenuGroup = pu.Settings:AddLeftGroupbox("Menu")
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        local jj = 0
        local jk = tick()
        local Label
        local function jm()
            local CurrentCamera = o6.CurrentCamera
            if not CurrentCamera then
                return
            end
            po:CaptureController()
            po:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            jj += 1
            jk = tick()
            if Label then
                pcall(function()
                    Label:SetText("AFK triggers: " .. jj)
                end)
            end
        end
        connection = o5.Idled:Connect(function()
            if o7("AntiAfk") then
                pcall(jm)
            end
        end)
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        MenuGroup:AddButton({
            Text = "Unload UI",
            Func = function()
                Library:Unload()
            end
        })
        task.spawn(function()
            while not Library.Unloaded do
                task.wait(2)
                local xd = o7("AntiAfk") and tick() - jk >= 60
                if xd then
                    pcall(jm)
                end
            end
        end)
        Library:OnUnload(function()
            if connection then
                connection:Disconnect()
            end
            if getgenv then
                getgenv().__OuroborosRescueAnimalsLib = nil
            end
        end)
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(pu.Settings)
        ThemeManager:LoadDefault()
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/RescueAnimals")
        local jJ = SaveManager:BuildConfigSection(pu.Settings)
        local function jK(jL, jM)
            local xh_1 = (jL == "Toggle" and Toggles or Options)[jM]
            local xg_2 = type(xh_1) == "table" and xh_1.Type == jL
            local xg_3 = xg_2 and xh_1
            local xm = if xg_3 then 1 else 0
            local xk = 2136 * xm + 3132 * (1 - xm)
            local xl = 1938 * xm + 2426 * (1 - xm)
            if not ((xk * 2212 + xl * 460 + xk * xl) % 16777213 == 9755880) then
                xg_3 = nil
            end
            return xg_3
        end
        local function jT(jU, jV)
            local Type = jV.Type
            if Type == "Toggle" then
                return { idx = jU, type = "Toggle", value = jV.Value == true }
            elseif Type == "Slider" then
                return { idx = jU, type = "Slider", value = tostring(jV.Value) }
            elseif Type == "Dropdown" then
                return { idx = jU, type = "Dropdown", multi = jV.Multi == true, value = jV.Value }
            elseif Type == "Input" then
                local xo = jV.Value or ""
                return { idx = jU, type = "Input", text = tostring(xo) }
            elseif Type == "ColorPicker" then
                return { idx = jU, type = "ColorPicker", value = jV.Value:ToHex(), transparency = jV.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = jU,
                    type = "KeyPicker",
                    mode = jV.Mode,
                    key = jV.Value,
                    modifiers = jV.Modifiers,
                    toggled = jV.Toggled
                }
            else
                return nil
            end
        end
        local function jX()
            local xu = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local xv = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if xv then
                        local xv_1 = jT(k, v)
                        if xv_1 then
                            xu[#xu + 1] = xv_1
                        end
                    end
                end
            end
            table.sort(xu, function(j6, j7)
                if j6.type ~= j7.type then
                    return j6.type < j7.type
                end
                return j6.idx < j7.idx
            end)
            return { objects = xu }
        end
        local function j8(j9)
            local xL
            xL = nil
            local xM = type(j9) ~= "table" or type(j9.idx) ~= "string"
            local xQ = if xM then 1 else 0
            local xO = 664 * xQ + 148 * (1 - xQ)
            local xP = 805 * xQ + 962 * (1 - xQ)
            if not ((xO * 3373 + xP * 3737 + xO * xP) % 16777213 == 5782477) then
                xM = type(j9.type) ~= "string"
            end
            if not xM then
                xM = SaveManager.Ignore[j9.idx]
            end
            if xM then
                return false
            end
            xL = jK(j9.type, j9.idx)
            if not xL then
                return false
            end
            local xM_1 = pcall(function()
                if j9.type == "Input" then
                    if type(j9.text) ~= "string" then
                        return
                    end
                    xL:SetValue(j9.text)
                elseif j9.type == "ColorPicker" then
                    xL:SetValueRGB(Color3.fromHex(j9.value), j9.transparency)
                elseif j9.type == "KeyPicker" then
                    xL:SetValue({ j9.key, j9.mode, j9.modifiers })
                    if j9.mode == "Toggle" and j9.toggled ~= nil then
                        xL.Toggled = j9.toggled
                        xL:Update()
                    end
                else
                    xL:SetValue(j9.value)
                end
            end)
            return xM_1
        end
        jJ:AddDivider()
        jJ:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        jJ:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local xS_1
                local xR_1
                xR_1, xS_1 = pcall(pk.JSONEncode, pk, jX())
                if not xR_1 then
                    Library:Notify("Failed to encode the config")
                    return
                end
                local xR_2 = setclipboard or toclipboard
                local xR_3 = type(xR_2) ~= "function" or not pcall(xR_2, xS_1)
                if xR_3 then
                    Library:Notify("Your executor does not support copying to the clipboard")
                    return
                end
                Library:Notify("Config copied to clipboard", 6)
            end
        })
        jJ:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local xX_1
                local xV = Options.SaveManager_ImportSource.Value or ""
                local xV_1
                local xW = tostring(xV):match("^%s*(.-)%s*$")
                if xW == "" then
                    Library:Notify("Paste an exported config into the box first")
                    return
                end
                xV_1, xX_1 = pcall(pk.JSONDecode, pk, xW)
                local xW_1 = not xV_1 or type(xX_1) ~= "table" or type(xX_1.objects) ~= "table"
                if xW_1 then
                    Library:Notify("That is not a valid exported config")
                    return
                end
                local xV_2 = 0
                for i, v in ipairs(xX_1.objects) do
                    if j8(v) then
                        xV_2 += 1
                    end
                end
                if xV_2 == 0 then
                    Library:Notify("No settings in that config matched this script")
                    return
                end
                Options.SaveManager_ImportSource:SetValue("")
                local xX_2 = xV_2 == 1 and "" or "s"
                Library:Notify(("Imported %d setting%s"):format(xV_2, xX_2), 6)
            end
        })
        SaveManager:LoadAutoloadConfig()
    end
end
pX()
