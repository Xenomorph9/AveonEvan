local l6
local lO
local mv
local lv
local mc
local Options
local lB
local ShopType
local shop_restock
local lH
local mo
local l5
local tool_util
local mu
local lu
local default
local gears
local connection
local LocalPlayer
local lZ
local lG
local connection2
local components
local lM
local ToolType
local lt
local ma
local lS
local lz
local mg
local bait
local lF
local mm
local l3
local fish_utils
local ms
local l9
local lR
local BaitMutation
local mf
local lX
local lE
local PlaceableType
local player_data
local lK
local VirtualUser
local World
local lQ
local mx
local lx
local me
local lW
local lD
local mk
local l1
local lJ
local mq
local l7
local lP
local mw
local lw
local md
local lV
local Baits
local mj
local l0
local lI
local mp
local function fn8(ah, ai)
    return ah.order < ai.order
end
local function onPlaceEggs(ec)
    lI = lH(ec, mw)
end
local function fn30(cX, cY)
    local pF = cX[cY]
    if not pF then
        return
    end
    local pG = cY + 1
    local pH = #cX
    local pN = pG
    while pN <= pH do
        local pG_1 = cX[pN]
        local pH_1 = (pF.size.X + pG_1.size.X) / 2 - 0.5
        local pI = (pF.size.Z + pG_1.size.Z) / 2 - 0.5
        local pJ = math.abs(pF.world.X - pG_1.world.X) < pH_1 and math.abs(pF.world.Z - pG_1.world.Z) < pI
        if pJ then
            pG_1.blocked = true
        end
        pN += 1
    end
end
local function fn38(dw)
    local p8 = {}
    for k, v in dw.inventory.baits do
        local p9 = Baits[v.baitType]
        local qa = #p8 + 1
        local baitType = v.baitType
        local qc = v.amount or 0
        local mutation = v.mutation
        local p9_1 = p9 and p9.baseValue or 0
        p8[qa] = { id = k, baitType = baitType, amount = qc, mutation = mutation, value = p9_1 }
    end
    table.sort(p8, function(dF, dG)
        return dF.value > dG.value
    end)
    return p8
end
local function onDeleteBaits(eK)
    mx = lH(eK, lw)
end
local function fn53(da, db, dc)
    local pT = type(db) ~= "number"
    local pX = if pT then 1 else 0
    local pV = 382 * pX + 443 * (1 - pX)
    local pW = 1682 * pX + 1821 * (1 - pX)
    if not ((pV * 493 + pW * 3543 + pV * pW) % 16777213 == 6790176) then
        pT = db ~= db
    end
    if not pT then
        pT = db == math.huge
    end
    if pT then
        return false
    end
    local pT_1 = mf(md(), da)
    if not pT_1 then
        return false
    end
    return pT_1 - db >= dc
end
local function fn59(cp, cq, cr, cs)
    local o2 = lM(cp)
    local o3 = ms(cp)
    local pivot = cp:GetPivot()
    local o5 = {}
    local o6 = {}
    for i, v in ipairs(o2) do
        local Position = v.hitbox.Position
        local o7 = v.hitbox.Size.X / 2
        local o8 = v.hitbox.Size.Z / 2
        local pa = cs and v.origin
        local po = if pa then 1 else 0
        local pm = 1877 * po + 298 * (1 - po)
        local pn = 7 * po + 3739 * (1 - po)
        if not ((pm * 3962 + pn * 1751 + pm * pn) % 16777213 == 7462070) then
            pa = nil
        end
        local o9_1 = pa
        local pr = -o7
        while cr > 0 and pr <= o7 or cr <= 0 and pr >= o7 do
            local ps = pr
            local pw = -o8
            while cr > 0 and pw <= o8 or cr <= 0 and pw >= o8 do
                local px = pw
                local pa_3 = l5(Position + Vector3.new(ps, 0, px), cq, cr, o9_1)
                local pb = string.format("%.2f,%.2f", pa_3.X, pa_3.Z)
                if not o5[pb] then
                    o5[pb] = true
                    local pb_1 = math.abs(pa_3.X - Position.X) <= o7 - cq.X / 2 + 0.6
                    local pc = math.abs(pa_3.Z - Position.Z) <= o8 - cq.Z / 2 + 0.6
                    if pb_1 and pc then
                        local pb_2 = true
                        for i, v in ipairs(o3) do
                            local pc_1 = (v.size.X + cq.X) / 2 - 0.5
                            local pd_1 = (v.size.Z + cq.Z) / 2 - 0.5
                            local pe = math.abs(v.position.X - pa_3.X) < pc_1 and math.abs(v.position.Z - pa_3.Z) < pd_1
                            if pe then
                                pb_2 = false
                                break
                            end
                        end
                        if pb_2 then
                            o6[#o6 + 1] = {
                                position = pivot:ToObjectSpace(CFrame.new(pa_3)).Position,
                                distance = (pa_3 - Position).Magnitude,
                                world = pa_3,
                                size = cq
                            }
                        end
                    end
                end
                pw += cr
            end
            pr += cr
        end
    end
    table.sort(o6, function(cU, cV)
        return cU.distance < cV.distance
    end)
    return o6
end
local function fn86(cg, ch, ci)
    local o0_1
    local oZ = tool_util.getToolPlacementModel(cg, ch, ci)
    if not oZ then
        return nil
    end
    local Hitbox = oZ:FindFirstChild("Hitbox", true)
    local o__1
    if Hitbox then
        return Hitbox.Size
    end
    o__1, o0_1 = oZ:GetBoundingBox()
    return o0_1
end
local function fn87()
    if setclipboard then
        setclipboard(lR)
    elseif toclipboard then
        toclipboard(lR)
    end
    l6:Notify("Copied Discord invite to clipboard")
end
local function onInputChanged(e1)
    local UserInputType = e1.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        l1 = tick()
    end
end
local function fn132()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    lZ = tick()
end
local function fn136(a3)
    local og = 0
    for k in a3 do
        og += 1
    end
    return og
end
local function onDeleteGroups(eG)
    lt = lH(eG, lS)
end
local function onPlacePets(em)
    lB = lH(em, mo)
end
local function onPlaceBaits(dY)
    lK = lH(dY, lw)
end
local function autoHatchLoop()
    while not l6.Unloaded do
        local tZ = Options.HatchLoopDelay and Options.HatchLoopDelay.Value or 5
        task.wait(tZ)
        if l6.Unloaded then
            break
        end
        if lW.AutoHatch.Value then
            pcall(function()
                local tJ = ma(md())
                if not tJ then
                    return
                end
                local Value2 = lW.HatchAnyEgg.Value
                local tL = 0
                local Value = Options.HatchPerCycle.Value
                for k, v in World:query(components.Egg) do
                    if tL >= Value or l6.Unloaded or not lW.AutoHatch.Value then
                        break
                    else
                        local tN_1 = tJ.eggs[v.eggId]
                        local tO = World:has(k, components.CanHatch) and not World:has(k, components.Hatching)
                        local tP = tN_1
                        if tP then
                            tP = tO
                        end
                        if tP then
                            tP = Value2 or lE[v.eggType]
                        end
                        if tP then
                            default.pets.hatchEgg(v.eggId)
                            tL += 1
                            task.wait(Options.HatchStepDelay.Value)
                        end
                    end
                end
            end)
        end
    end
end
local function fn175()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn185(bZ, b_, b0, b1)
    local oT_1, oT_2
    local oS_1, oS_2
    local oP = b1 and b1.X % b0 or 0
    local oO_1 = b1
    if oO_1 then
        oO_1 = b1.Z % b0
    end
    local oP_1 = oO_1 or 0
    local oP_2 = math.round(b_.X / b0) * b0
    local oR = math.round(b_.Z / b0) * b0
    oT_1, oS_1 = bZ.X, bZ.Z
    local oU = oP_2 / 2 % 1
    if oU >= 0.25 and oU <= 0.75 then
        oT_2 = math.floor((oT_1 - oP) / b0) * b0 + b0 / 2 + oP
    else
        oT_2 = math.round((oT_1 - oP) / b0) * b0 + oP
    end
    local oP_4 = oR / 2 % 1
    if oP_4 >= 0.25 and oP_4 <= 0.75 then
        oS_2 = math.floor((oS_1 - oP_1) / b0) * b0 + b0 / 2 + oP_1
    else
        oS_2 = math.round((oS_1 - oP_1) / b0) * b0 + oP_1
    end
    return Vector3.new(oT_2, lz, oS_2)
end
local function fn188(dK)
    local DiscordGroup = dK:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = lO })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = lO })
end
local function onInputBegan()
    l1 = tick()
end
local function autoBuyGearLoop()
    while not l6.Unloaded do
        local sa = Options.GearBuyLoopDelay and Options.GearBuyLoopDelay.Value or 5
        task.wait(sa)
        if l6.Unloaded then
            break
        end
        if lW.AutoBuyGear.Value then
            pcall(function()
                local r0, r1, r2
                local rY = md()
                if not rY then
                    return
                end
                local rY_1 = 0
                local Value2 = Options.GearBuyPerCycle.Value
                local Value = Options.GearCoinReserve.Value
                local r5 = false
                for k in mq do
                    local r4 = 7
                    while true do
                        if r4 < 14 then
                            if r4 < 7 then
                                if r4 < 3 then
                                    if r4 < 1 then
                                        r2 = l7(r0.currency, r0.price, Value)
                                        r4 = 18
                                    elseif r4 < 2 then
                                        r2 = rY_1 < Value2
                                        r4 = 10
                                    else
                                        r4 = 11
                                    end
                                elseif r4 < 5 then
                                    if r4 < 4 then
                                        r4 = if r2 then 26 else 6
                                    else
                                        r0 = not lW.AutoBuyGear.Value
                                        r4 = 28
                                    end
                                elseif r4 < 6 then
                                    r2 = r1 > 0
                                    r4 = if r2 then 1 else 10
                                else
                                    default.shop.purchaseGear(k)
                                    r4 = if lW.GearBuyNotify.Value then 9 else 14
                                end
                            elseif r4 < 10 then
                                if r4 < 8 then
                                    r0 = rY_1 >= Value2
                                    r4 = if r0 then 24 else 16
                                elseif r4 < 9 then
                                    r4 = 21
                                else
                                    r2 = r0.name
                                    r4 = if r2 then 25 else 13
                                end
                            elseif r4 < 12 then
                                if r4 < 11 then
                                    r4 = if r2 then 0 else 18
                                else
                                    break
                                end
                            elseif r4 < 13 then
                                r2 = l6.Unloaded
                                r4 = if r2 then 3 else 19
                            else
                                r2 = k
                                r4 = 25
                            end
                        elseif r4 < 21 then
                            if r4 < 17 then
                                if r4 < 15 then
                                    rY_1 += 1
                                    task.wait(Options.GearBuyStepDelay.Value)
                                    r1 = lQ(md(), ShopType.Gear, k)
                                    r4 = 8
                                elseif r4 < 16 then
                                    r1 = lQ(md(), ShopType.Gear, k)
                                    r4 = 21
                                else
                                    r0 = l6.Unloaded
                                    r4 = 24
                                end
                            elseif r4 < 19 then
                                if r4 < 18 then
                                    r4 = 27
                                else
                                    r4 = if r2 then 12 else 23
                                end
                            elseif r4 < 20 then
                                r2 = not lW.AutoBuyGear.Value
                                r4 = 3
                            else
                                r4 = 2
                            end
                        elseif r4 < 25 then
                            if r4 < 23 then
                                if r4 < 22 then
                                    r4 = 5
                                else
                                    r0 = mv[k]
                                    r4 = if r0 then 15 else 2
                                end
                            elseif r4 < 24 then
                                r4 = 20
                            else
                                r4 = if r0 then 28 else 4
                            end
                        elseif r4 < 27 then
                            if r4 < 26 then
                                l6:Notify("Bought " .. r2)
                                r4 = 14
                            else
                                r4 = 20
                            end
                        elseif r4 < 28 then
                            r5 = true
                            r4 = 11
                        else
                            r4 = if r0 then 17 else 22
                        end
                    end
                    if r5 then
                        break
                    end
                end
            end)
        end
    end
end
local function autoCollectLoop()
    while not l6.Unloaded do
        local rH = Options.CollectLoopDelay and Options.CollectLoopDelay.Value or 3
        task.wait(rH)
        if l6.Unloaded then
            break
        end
        if lW.AutoCollect.Value then
            pcall(function()
                local rt = ma(md())
                if not rt then
                    return
                end
                local Value = Options.CollectMinFish.Value
                for k, v in rt.baits do
                    if l6.Unloaded or not lW.AutoCollect.Value then
                        break
                    else
                        local rt_2 = mp(v.fishes)
                        local rv = Baits[v.bait.baitType]
                        local rw = rv and bait.getNetCapacity(rv.netSize)
                        local rv_1 = rw or 0
                        local rv_2 = rt_2 >= Value
                        if lW.CollectOnlyFull.Value then
                            rv_2 = rv_1 > 0 and rt_2 >= rv_1
                        end
                        if rv_2 then
                            default.bait.collectAllFish(k)
                            task.wait(Options.CollectStepDelay.Value)
                        end
                    end
                end
            end)
        end
    end
end
local function autoPlacePetLoop()
    while not l6.Unloaded do
        local ud = Options.PetPlaceLoopDelay and Options.PetPlaceLoopDelay.Value or 5
        task.wait(ud)
        if l6.Unloaded then
            break
        end
        if lW.AutoPlacePet.Value then
            pcall(function()
                local t0 = md()
                if not t0 then
                    return
                end
                local Value2 = lW.PlaceAnyPet.Value
                local t2 = not Value2
                if t2 ~= false then
                    t2 = mp(lB) == 0
                end
                if t2 then
                    return
                end
                local t2_1 = 0
                local Value = Options.PetPlacePerCycle.Value
                for k, v in t0.inventory.pets do
                    if t2_1 >= Value or l6.Unloaded or not lW.AutoPlacePet.Value then
                        break
                    end
                    if Value2 or lB[v.petType] then
                        default.pets.placePetFromInventory(k)
                        t2_1 += 1
                        task.wait(Options.PetPlaceStepDelay.Value)
                    end
                end
            end)
        end
    end
end
local function onBuyGears(er)
    mq = lH(er, lV)
end
local function autoDeleteLoop()
    while not l6.Unloaded do
        local tH = Options.DeleteLoopDelay and Options.DeleteLoopDelay.Value or 10
        task.wait(tH)
        if l6.Unloaded then
            break
        end
        if lW.AutoDelete.Value then
            pcall(function()
                local th = ma(md())
                if not th then
                    return
                end
                local ti = 0
                local Value4 = Options.DeletePerCycle.Value
                local Value3 = lW.DeleteAnyBait.Value
                local Value2 = Options.DeleteBaitBelowValue.Value
                local Value = lW.DeleteOnlyEmpty.Value
                for i, v in ipairs(lX) do
                    if ti >= Value4 or l6.Unloaded or not lW.AutoDelete.Value then
                        break
                    elseif lt[v.key] then
                        for k, v2 in th[v.key] do
                            if ti >= Value4 or l6.Unloaded or not lW.AutoDelete.Value then
                                break
                            end
                            local tn_2 = true
                            if v.key == "baits" then
                                local baitType = v2.bait.baitType
                                local tp = Baits[baitType]
                                local to_1 = Value3 or mx[baitType]
                                if Value2 > 0 and tp and (tp.baseValue or 0) >= Value2 then
                                    to_1 = false
                                end
                                local tp_1 = Value and mp(v2.fishes) > 0
                                if tp_1 then
                                    to_1 = false
                                end
                                tn_2 = to_1
                            end
                            if tn_2 then
                                default.ponds.deleteBuilding(k)
                                ti += 1
                                task.wait(Options.DeleteStepDelay.Value)
                            end
                        end
                    end
                end
            end)
        end
    end
end
local function onScoopBaits(eB)
    lx = lH(eB, lw)
end
local function fn303(aN, aO)
    return aO.source == gears.GearSource.GearShop
end
local function fn308(c5, c6)
    local pQ_1 = c5[c6 or "coins"]
    if type(pQ_1) == "number" then
        return pQ_1
    end
    return nil
end
local function onHatchEggs(eh)
    lE = lH(eh, mw)
end
local function antiAfkLoop()
    while not l6.Unloaded do
        task.wait(2)
        if lW.AntiAfk.Value then
            local qD = tick() - l1
            local qE = tick() - lZ
            if qD >= 300 and qE >= 60 then
                pcall(lP)
            else
                if qD < 300 and qE >= 300 then
                    pcall(lP)
                end
            end
        end
    end
end
local function onBuyBaits(d2)
    mu = lH(d2, lw)
end
local function fn345(di, dj, dk)
    local pY = shop_restock.shopRestock()
    if not pY then
        return 0
    end
    local pZ = pY.availableItems and pY.availableItems[dj]
    local p_ = pZ
    if pZ then
        pZ = p_[dk]
    end
    local pZ_1 = pZ or 0
    local p__2 = di.shopPurchases and di.shopPurchases[dj]
    local p0 = p__2
    if p__2 then
        p__2 = p0.currentTimeSlot == pY.currentTimeSlot
    end
    if p__2 then
        local pY_1 = p0.purchases[dk] or 0
        pZ_1 -= pY_1
    end
    return pZ_1
end
local function fn377(am, an)
    local nM_1
    local nL_1
    nL_1, nM_1 = {}, {}
    local nN = {}
    for k, v in am do
        local nO = not an or an(k, v)
        if nO then
            local nO_1 = #nN + 1
            local nP = v.name or k
            local nQ = v.price or 0
            nN[nO_1] = { key = k, name = nP, price = nQ }
        end
    end
    table.sort(nN, function(au, av)
        if au.price == av.price then
            return au.key < av.key
        end
        return au.price < av.price
    end)
    for k, v in nN do
        local nN_1 = v.name
        if nM_1[nN_1] then
            nN_1 = nN_1 .. " (" .. v.key .. ")"
        end
        nL_1[#nL_1 + 1] = nN_1
        nM_1[nN_1] = v.key
    end
    return nL_1, nM_1
end
local function fn396(bI)
    local ou = {}
    for k, v, bO, bP in World:query(components.SubPond, components.Hitbox, components.Model) do
        if bO.hitbox:IsDescendantOf(bI) then
            ou[#ou + 1] = { hitbox = bO.hitbox, origin = bP.model:GetPivot().Position }
        end
    end
    return ou
end
local function autoBuyBaitLoop()
    while not l6.Unloaded do
        local rr = Options.BaitBuyLoopDelay and Options.BaitBuyLoopDelay.Value or 5
        task.wait(rr)
        if l6.Unloaded then
            break
        end
        if lW.AutoBuyBait.Value then
            pcall(function()
                local q9, ra
                local q5 = md()
                if not q5 then
                    return
                end
                local q5_1 = 0
                local Value2 = Options.BaitBuyPerCycle.Value
                local Value = Options.BaitCoinReserve.Value
                local q8 = {}
                if lW.BuyAnyAffordableBait.Value then
                    q8 = mj
                else
                    for k in mu do
                        q8[#q8 + 1] = k
                    end
                end
                local rk = false
                for i, v in ipairs(q8) do
                    local rj = 13
                    while true do
                        if rj < 14 then
                            if rj < 7 then
                                if rj < 3 then
                                    if rj < 1 then
                                        q5_1 += 1
                                        task.wait(Options.BaitBuyStepDelay.Value)
                                        q9 = lQ(md(), ShopType.Bait, v)
                                        rj = 8
                                    elseif rj < 2 then
                                        ra = not lW.AutoBuyBait.Value
                                        rj = 6
                                    else
                                        rj = 25
                                    end
                                elseif rj < 5 then
                                    if rj < 4 then
                                        ra = l7(q8.currency, q8.price, Value)
                                        rj = 9
                                    else
                                        rk = true
                                        rj = 16
                                    end
                                elseif rj < 6 then
                                    default.shop.purchaseBait(v)
                                    rj = if lW.BaitBuyNotify.Value then 26 else 0
                                else
                                    rj = if ra then 10 else 5
                                end
                            elseif rj < 10 then
                                if rj < 8 then
                                    rj = 4
                                elseif rj < 9 then
                                    rj = 2
                                else
                                    rj = if ra then 22 else 17
                                end
                            elseif rj < 12 then
                                if rj < 11 then
                                    rj = 15
                                else
                                    q8 = l6.Unloaded
                                    rj = 19
                                end
                            elseif rj < 13 then
                                rj = 16
                            else
                                q8 = q5_1 >= Value2
                                rj = if q8 then 19 else 11
                            end
                        elseif rj < 21 then
                            if rj < 17 then
                                if rj < 15 then
                                    rj = if ra then 3 else 9
                                elseif rj < 16 then
                                    rj = 12
                                else
                                    break
                                end
                            elseif rj < 19 then
                                if rj < 18 then
                                    rj = 15
                                else
                                    ra = q5_1 < Value2
                                    rj = 14
                                end
                            elseif rj < 20 then
                                rj = if q8 then 27 else 24
                            else
                                ra = v
                                rj = 28
                            end
                        elseif rj < 25 then
                            if rj < 23 then
                                if rj < 22 then
                                    q8 = Baits[v]
                                    rj = if q8 then 23 else 12
                                else
                                    ra = l6.Unloaded
                                    rj = if ra then 6 else 1
                                end
                            elseif rj < 24 then
                                q9 = lQ(md(), ShopType.Bait, v)
                                rj = 2
                            else
                                q8 = not lW.AutoBuyBait.Value
                                rj = 27
                            end
                        elseif rj < 27 then
                            if rj < 26 then
                                ra = q9 > 0
                                rj = if ra then 18 else 14
                            else
                                ra = q8.name
                                rj = if ra then 28 else 20
                            end
                        elseif rj < 28 then
                            rj = if q8 then 7 else 21
                        else
                            l6:Notify("Bought " .. ra)
                            rj = 0
                        end
                    end
                    if rk then
                        break
                    end
                end
            end)
        end
    end
end
local function autoScoopLoop()
    while not l6.Unloaded do
        local tf = Options.ScoopLoopDelay and Options.ScoopLoopDelay.Value or 3
        task.wait(tf)
        if l6.Unloaded then
            break
        end
        if lW.AutoScoop.Value then
            pcall(function()
                local sU = md()
                local sV = ma(sU)
                if not sV then
                    return
                end
                local sW = l9[Options.ScoopGear.Value]
                local sX = sW and sU.inventory.gears[sW]
                local sX_1 = not sX
                if not sX_1 then
                    sX_1 = (sX.amount or 0) <= 0
                end
                if sX_1 then
                    return
                end
                local Value2 = lW.ScoopAnyBait.Value
                local sX_2 = 0
                local Value = Options.ScoopPerCycle.Value
                for k, v in sV.baits do
                    if sX_2 >= Value or l6.Unloaded or not lW.AutoScoop.Value then
                        break
                    else
                        local baitType = v.bait.baitType
                        if Value2 or lx[baitType] then
                            local sZ_1 = false
                            if lW.ScoopSkipFull.Value then
                                local s_ = Baits[baitType]
                                local sV_3 = s_ and bait.getNetCapacity(s_.netSize)
                                local s__1 = sV_3 or 0
                                local s__2 = s__1 > 0 and mp(v.fishes) >= s__1
                                sZ_1 = s__2
                            end
                            if not sZ_1 then
                                default.gear.useFishFeeder(sW, k)
                                sX_2 += 1
                                task.wait(Options.ScoopStepDelay.Value)
                            end
                        end
                    end
                end
            end)
        end
    end
end
local function fn548(aS, aT)
    return aT.buildingType ~= nil
end
local function autoPlaceEggLoop()
    while not l6.Unloaded do
        local sS = Options.EggPlaceLoopDelay and Options.EggPlaceLoopDelay.Value or 5
        task.wait(sS)
        if l6.Unloaded then
            break
        end
        if lW.AutoPlaceEgg.Value then
            pcall(function()
                local sA, sB, sC
                local sv = md()
                local sw = l3()
                local sx = not sw
                local sy = not sv
                local sG = if sy then 1 else 0
                local sE = 2754 * sG + 1140 * (1 - sG)
                local sF = 24 * sG + 2456 * (1 - sG)
                if not ((sE * 3939 + sF * 2761 + sE * sF) % 16777213 == 10980366) then
                    sy = sx
                end
                if sy then
                    return
                end
                local Value2 = lW.PlaceAnyEgg.Value
                local sy_1 = not Value2
                if sy_1 ~= false then
                    sy_1 = mp(lI) == 0
                end
                if sy_1 then
                    return
                end
                local sy_2 = 0
                local Value = Options.EggPlacePerCycle.Value
                local sL = false
                for k, v in sv.inventory.eggs do
                    local sK = 5
                    while true do
                        if sK < 17 then
                            if sK < 8 then
                                if sK < 4 then
                                    if sK < 2 then
                                        if sK < 1 then
                                            sB = sy_2 < Value
                                            sK = 27
                                        else
                                            sK = if sv then 3 else 6
                                        end
                                    elseif sK < 3 then
                                        break
                                    else
                                        sv = mm(ToolType.Egg, v.eggType)
                                        sK = if sv then 18 else 13
                                    end
                                elseif sK < 6 then
                                    if sK < 5 then
                                        sv += 1
                                        sK = 22
                                    else
                                        sv = sy_2 >= Value
                                        sK = if sv then 19 else 14
                                    end
                                elseif sK < 7 then
                                    sK = 2
                                else
                                    sK = 13
                                end
                            elseif sK < 12 then
                                if sK < 10 then
                                    if sK < 9 then
                                        sK = 32
                                    else
                                        sB = l6.Unloaded
                                        sK = if sB then 11 else 15
                                    end
                                elseif sK < 11 then
                                    sK = if sv then 8 else 26
                                else
                                    sK = if sB then 12 else 31
                                end
                            elseif sK < 14 then
                                if sK < 13 then
                                    sK = 7
                                else
                                    sK = 6
                                end
                            elseif sK < 15 then
                                sv = l6.Unloaded
                                sK = 19
                            elseif sK < 16 then
                                sB = not lW.AutoPlaceEgg.Value
                                sK = 11
                            else
                                sB = sv <= #sA
                                sK = 17
                            end
                        elseif sK < 25 then
                            if sK < 21 then
                                if sK < 19 then
                                    if sK < 18 then
                                        sK = if sB then 9 else 24
                                    else
                                        sA = l0(sw, sv, lD, false)
                                        sv = 1
                                        sB = v.amount
                                        sK = if sB then 29 else 30
                                    end
                                elseif sK < 20 then
                                    sK = if sv then 10 else 21
                                else
                                    sK = 33
                                end
                            elseif sK < 23 then
                                if sK < 22 then
                                    sv = not lW.AutoPlaceEgg.Value
                                    sK = 10
                                else
                                    sK = 20
                                end
                            elseif sK < 24 then
                                default.ponds.placeBuilding(PlaceableType.Egg, k, sB.position, nil)
                                lG(sA, sv)
                                sv += 1
                                sC -= 1
                                sy_2 += 1
                                task.wait(Options.EggPlaceStepDelay.Value)
                                sK = 22
                            else
                                sK = 7
                            end
                        elseif sK < 29 then
                            if sK < 27 then
                                if sK < 26 then
                                    sB = sC > 0
                                    sK = if sB then 0 else 27
                                else
                                    sv = Value2
                                    sK = if sv then 1 else 28
                                end
                            elseif sK < 28 then
                                sK = if sB then 16 else 17
                            else
                                sv = lI[v.eggType]
                                sK = 1
                            end
                        elseif sK < 31 then
                            if sK < 30 then
                                sC = sB
                                sK = 33
                            else
                                sB = 0
                                sK = 29
                            end
                        elseif sK < 32 then
                            sB = sA[sv]
                            sK = if sB.blocked then 4 else 23
                        elseif sK < 33 then
                            sL = true
                            sK = 2
                        else
                            sK = 25
                        end
                    end
                    if sL then
                        break
                    end
                end
            end)
        end
    end
end
local function autoPlaceGearLoop()
    while not l6.Unloaded do
        local st = Options.GearPlaceLoopDelay and Options.GearPlaceLoopDelay.Value or 5
        task.wait(st)
        if l6.Unloaded then
            break
        end
        if lW.AutoPlaceGear.Value then
            pcall(function()
                local sh, si, sj
                local sc = md()
                local sd = l3()
                if not sc or not sd then
                    return
                end
                local Value2 = lW.PlaceAnyGear.Value
                local sf_1 = not Value2
                if sf_1 ~= false then
                    sf_1 = mp(mk) == 0
                end
                if sf_1 then
                    return
                end
                local sf_2 = 0
                local Value = Options.GearPlacePerCycle.Value
                local sm = false
                for k, v in sc.inventory.gears do
                    local sl = 29
                    while true do
                        if sl < 19 then
                            if sl < 9 then
                                if sl < 4 then
                                    if sl < 2 then
                                        if sl < 1 then
                                            si = not lW.AutoPlaceGear.Value
                                            sl = 11
                                        else
                                            sh = mk[v.gearType]
                                            sl = 9
                                        end
                                    elseif sl < 3 then
                                        si = sc <= #sh
                                        sl = 8
                                    else
                                        sl = if sc then 37 else 21
                                    end
                                elseif sl < 6 then
                                    if sl < 5 then
                                        sl = if si then 2 else 8
                                    else
                                        sl = 30
                                    end
                                elseif sl < 7 then
                                    sl = 28
                                elseif sl < 8 then
                                    default.ponds.placeBuilding(PlaceableType.Booster, k, si.position, nil)
                                    lG(sh, sc)
                                    sc += 1
                                    sj -= 1
                                    sf_2 += 1
                                    task.wait(Options.GearPlaceStepDelay.Value)
                                    sl = 35
                                else
                                    sl = if si then 14 else 36
                                end
                            elseif sl < 14 then
                                if sl < 11 then
                                    if sl < 10 then
                                        si = sc
                                        sj = sh
                                        sl = if si then 18 else 32
                                    else
                                        sl = if sc then 3 else 31
                                    end
                                elseif sl < 12 then
                                    sl = if si then 6 else 27
                                elseif sl < 13 then
                                    sl = 24
                                else
                                    si = sf_2 < Value
                                    sl = 4
                                end
                            elseif sl < 16 then
                                if sl < 15 then
                                    si = l6.Unloaded
                                    sl = if si then 11 else 0
                                else
                                    sl = 5
                                end
                            elseif sl < 17 then
                                sc += 1
                                sl = 35
                            elseif sl < 18 then
                                sl = if sc then 19 else 12
                            else
                                si = sc.buildingType
                                sl = 32
                            end
                        elseif sl < 28 then
                            if sl < 23 then
                                if sl < 21 then
                                    if sl < 20 then
                                        sc = mm(ToolType.Gear, v.gearType)
                                        sl = if sc then 25 else 26
                                    else
                                        sc = l6.Unloaded
                                        sl = 10
                                    end
                                elseif sl < 22 then
                                    sc = mv[v.gearType]
                                    sh = Value2
                                    sl = if sh then 9 else 1
                                else
                                    sm = true
                                    sl = 24
                                end
                            elseif sl < 25 then
                                if sl < 24 then
                                    sj = si
                                    sl = 5
                                else
                                    break
                                end
                            elseif sl < 26 then
                                sh = l0(sd, sc, lD, false)
                                sc = 1
                                si = v.amount
                                sl = if si then 23 else 34
                            elseif sl < 27 then
                                sl = 12
                            else
                                si = sh[sc]
                                sl = if si.blocked then 16 else 7
                            end
                        elseif sl < 33 then
                            if sl < 30 then
                                if sl < 29 then
                                    sl = 26
                                else
                                    sc = sf_2 >= Value
                                    sl = if sc then 10 else 20
                                end
                            elseif sl < 31 then
                                si = sj > 0
                                sl = if si then 13 else 4
                            elseif sl < 32 then
                                sc = not lW.AutoPlaceGear.Value
                                sl = 3
                            else
                                sc = si
                                sl = if sc then 33 else 17
                            end
                        elseif sl < 35 then
                            if sl < 34 then
                                sc = sj
                                sl = 17
                            else
                                si = 0
                                sl = 23
                            end
                        elseif sl < 36 then
                            sl = 15
                        elseif sl < 37 then
                            sl = 28
                        else
                            sl = 22
                        end
                    end
                    if sm then
                        break
                    end
                end
            end)
        end
    end
end
local function fn623()
    local qn_1
    local qm_1
    if identifyexecutor then
        qn_1, qm_1 = identifyexecutor()
        local qo = qn_1 ~= ""
        local qp = type(qn_1) == "string" and qo
        if qp then
            local qo_1 = type(qm_1) == "string" and qm_1 ~= "" and qn_1 .. " " .. qm_1
            lu = qo_1 or qn_1
        end
    end
end
local function fn657()
    return player_data.getPlayerData(LocalPlayer)
end
local function fn660(aX, aY)
    local n6 = {}
    for k, v in aX do
        if v then
            local n8 = aY and aY[k] or k
            n6[n8] = true
        end
    end
    return n6
end
local function onUnload()
    l6:Unload()
end
local function autoSellLoop()
    while not l6.Unloaded do
        local rW = Options.SellLoopDelay and Options.SellLoopDelay.Value or 5
        task.wait(rW)
        if l6.Unloaded then
            break
        end
        if lW.AutoSell.Value then
            pcall(function()
                local rJ = md()
                if not rJ then
                    return
                end
                local fishes = rJ.inventory.fishes
                if mp(fishes) < Options.SellMinHeld.Value then
                    return
                end
                if Options.SellMode.Value == lv then
                    default.sellFish.sellAllFish()
                    return
                end
                local Value2 = Options.SellMaxValue.Value
                local Value = lW.SellKeepLiked.Value
                for k, v in fishes do
                    if l6.Unloaded or not lW.AutoSell.Value then
                        break
                    end
                    if not (Value and v.liked) then
                        local rK_3 = fish_utils.getFishRarity(v.fishType)
                        if mg[rK_3] then
                            local rK_4 = fish_utils.calculateFishValue(v) or 0
                            if rK_4 <= Value2 then
                                default.sellFish.sellFish(k)
                                task.wait(Options.SellStepDelay.Value)
                            end
                        end
                    end
                end
            end)
        end
    end
end
local function fn672(by)
    if not by then
        return nil
    end
    return by.ponds[by.currentPond]
end
local function fn686(bR)
    local oG = {}
    for k in World:query(components.Building) do
        local oH = World:get(k, components.Hitbox)
        local oI = oH and oH.hitbox:IsDescendantOf(bR)
        if oI then
            oG[#oG + 1] = { position = oH.hitbox.Position, size = oH.hitbox.Size }
        end
    end
    return oG
end
local function fn693()
    l6.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
local function fn721()
    if not me then
        return nil
    end
    local on = me.getClientEntity()
    if not on then
        return nil
    end
    local oo = World:target(on, components.OwnsPond)
    if not oo then
        return nil
    end
    local on_1 = World:get(oo, components.Model)
    return on_1 and on_1.model or nil
end
local function onSellRarities(d8)
    mg = lH(d8)
end
local function autoPlaceBaitLoop()
    while not l6.Unloaded do
        local q3 = Options.PlaceLoopDelay and Options.PlaceLoopDelay.Value or 3
        task.wait(q3)
        if l6.Unloaded then
            break
        end
        if lW.AutoPlaceBait.Value then
            pcall(function()
                local qO
                local qN_1
                local qM_1
                local qH = md()
                local qI = l3()
                if not qH or not qI then
                    return
                end
                local Value2 = lW.PlaceAnyBait.Value
                local qK_1 = not Value2
                if qK_1 ~= false then
                    qK_1 = mp(lK) == 0
                end
                if qK_1 then
                    return
                end
                local qK_2 = 0
                local Value = Options.PlacePerCycle.Value
                qM_1, qN_1 = nil, 1
                local qX = false
                for i, v in ipairs(mc(qH)) do
                    local qW = 24
                    while true do
                        if qW < 17 then
                            if qW < 8 then
                                if qW < 4 then
                                    if qW < 2 then
                                        if qW < 1 then
                                            qN_1 += 1
                                            qW = 5
                                        else
                                            break
                                        end
                                    elseif qW < 3 then
                                        qW = if not qM_1 then 20 else 10
                                    else
                                        qW = 22
                                    end
                                elseif qW < 6 then
                                    if qW < 5 then
                                        qO = qH > 0
                                        qW = if qO then 26 else 18
                                    else
                                        qW = 3
                                    end
                                elseif qW < 7 then
                                    qW = 23
                                else
                                    qW = if qH then 21 else 23
                                end
                            elseif qW < 12 then
                                if qW < 10 then
                                    if qW < 9 then
                                        qW = if qH then 33 else 25
                                    else
                                        qH = lK[v.baitType]
                                        qW = 7
                                    end
                                elseif qW < 11 then
                                    qH = v.amount
                                    qW = 22
                                else
                                    qO = qM_1[qN_1]
                                    qW = if qO.blocked then 0 else 31
                                end
                            elseif qW < 14 then
                                if qW < 13 then
                                    qO = l6.Unloaded
                                    qW = if qO then 19 else 28
                                else
                                    qW = if qH then 8 else 17
                                end
                            elseif qW < 15 then
                                qW = 6
                            elseif qW < 16 then
                                qH = l6.Unloaded
                                qW = 13
                            else
                                qW = 14
                            end
                        elseif qW < 25 then
                            if qW < 21 then
                                if qW < 19 then
                                    if qW < 18 then
                                        qH = not lW.AutoPlaceBait.Value
                                        qW = 8
                                    else
                                        qW = if qO then 30 else 29
                                    end
                                elseif qW < 20 then
                                    qW = if qO then 16 else 11
                                else
                                    qM_1 = l0(qI, qH, lF, true)
                                    qW = 10
                                end
                            elseif qW < 23 then
                                if qW < 22 then
                                    qH = mm(ToolType.Bait, v.baitType, { diamond = v.mutation == BaitMutation.Diamond })
                                    qW = if qH then 2 else 6
                                else
                                    qW = 4
                                end
                            elseif qW < 24 then
                                qW = 1
                            else
                                qH = qK_2 >= Value
                                qW = if qH then 13 else 15
                            end
                        elseif qW < 29 then
                            if qW < 27 then
                                if qW < 26 then
                                    qH = Value2
                                    qW = if qH then 7 else 9
                                else
                                    qO = qK_2 < Value
                                    qW = 18
                                end
                            elseif qW < 28 then
                                qX = true
                                qW = 1
                            else
                                qO = not lW.AutoPlaceBait.Value
                                qW = 19
                            end
                        elseif qW < 31 then
                            if qW < 30 then
                                qW = if qO then 12 else 32
                            else
                                qO = qN_1 <= #qM_1
                                qW = 29
                            end
                        elseif qW < 32 then
                            default.ponds.placeBuilding(PlaceableType.Bait, v.id, qO.position, nil)
                            lG(qM_1, qN_1)
                            qN_1 += 1
                            qH -= 1
                            qK_2 += 1
                            task.wait(Options.PlaceStepDelay.Value)
                            qW = 5
                        elseif qW < 33 then
                            qW = 14
                        else
                            qW = 27
                        end
                    end
                    if qX then
                        break
                    end
                end
            end)
        end
    end
end
local function fn782(aI, aJ)
    return (Baits[aI].price or math.huge) > (Baits[aJ].price or math.huge)
end
local function onPlaceGears(ew)
    mk = lH(ew, lJ)
end
lt = nil
lu = nil
lv = nil
lw = nil
lx = nil
BaitMutation = nil
lz = nil
connection = nil
lB = nil
Baits = nil
lD = nil
lE = nil
lF = nil
lG = nil
lH = nil
lI = nil
lJ = nil
lK = nil
fish_utils = nil
lM = nil
tool_util = nil
lO = nil
lP = nil
lQ = nil
lR = nil
lS = nil
gears = nil
Options = nil
lV = nil
lW = nil
lX = nil
bait = nil
lZ = nil
shop_restock = nil
l0 = nil
l1 = nil
player_data = nil
l3 = nil
components = nil
l5 = nil
l6 = nil
l7 = nil
World = nil
l9 = nil
ma = nil
default = nil
mc = nil
md = nil
me = nil
mf = nil
mg = nil
LocalPlayer = nil
ShopType = nil
mj = nil
mk = nil
PlaceableType = nil
mm = nil
connection2 = nil
mo = nil
mp = nil
mq = nil
VirtualUser = nil
ms = nil
ToolType = nil
mu = nil
mv = nil
mw = nil
mx = nil
local mD, mE, mG, mI, mL, mM, mN, AutoCollectGroup, AutoPlaceGearsGroup, AutoPlacePetsGroup
local mK_4
VirtualUser, LocalPlayer = nil, nil
local Players = game:GetService("Players")
local my_9
local mA = game:GetService("ReplicatedStorage")
VirtualUser = game:GetService("VirtualUser")
local UserInputService = game:GetService("UserInputService")
LocalPlayer = Players.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
default, World, components, player_data, shop_restock, bait, mD, gears, mG, tool_util, fish_utils, Baits, BaitMutation, mI, mv, ToolType, PlaceableType, ShopType, me = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mF = mA:WaitForChild("TS")
local mF_6
default = require(mF.remotes).default
World = require(mF.World).World
components = require(mF.components.components)
player_data = require(mF.state["player-data"])
shop_restock = require(mF.state["shop-restock"])
if (mG or (not mI or not bait) or (default and not PlaceableType or default and PlaceableType)) and ((not bait or bait or (mI or bait)) and (not bait or mG or (default or mG))) or (not bait and not bait and (not PlaceableType and not bait) or (not bait or not mG) and (not mI or 55) or (not PlaceableType and 55 or false or mI and not bait and (not PlaceableType and not mG))) or not ((mG or (not mI or not bait) or (default and not PlaceableType or default and PlaceableType)) and ((not bait or bait or (mI or bait)) and (not bait or mG or (default or mG))) or (not bait and not bait and (not PlaceableType and not bait) or (not bait or not mG) and (not mI or 55) or (not PlaceableType and 55 or false or mI and not bait and (not PlaceableType and not mG)))) then
    bait = require(mF.lists.game.bait)
else
    mF = require(bait.lists.game.bait)
end
if (not Baits or World) and (gears or mv) and (gears or World or Baits and gears) and ((not mG or not Baits) and (gears and not Baits) or World and Baits and (not Baits and mv)) and not ((not Baits or World) and (gears or mv) and (gears or World or Baits and gears) and ((not mG or not Baits) and (gears and not Baits) or World and Baits and (not Baits and mv))) then
    mF = require(mD.lists.eggs)
else
    mD = require(mF.lists.eggs)
end
local mC = require(mF.lists.game.pets)
gears = require(mF.lists.game.gears.gears)
mG = require(mF.lists.rarities)
tool_util = require(mF.utils["tool.util"])
fish_utils = require(mF.utils["fish.utils"])
local mz = require(mF.lists.game["tool-meta"])
local placeable_meta = require(mF.lists.game["placeable-meta"])
Baits = bait.Baits
BaitMutation = bait.BaitMutation
mI = mD.Eggs
local mH = mC.Pets
mv = gears.Gears
ToolType = mz.ToolType
PlaceableType = placeable_meta.PlaceableType
ShopType = shop_restock.ShopType
for i, descendant in ipairs(LocalPlayer:WaitForChild("PlayerScripts"):GetDescendants()) do
    local my_2 = descendant:IsA("ModuleScript") and descendant.Name == "assignClient"
    if my_2 then
        me = require(descendant)
        break
    end
end
mz, l6, mD, mC, lW, Options, lR, lF, lD, lz, lv, mA, mE, lO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local my_3 = 2
repeat
    local mF_1 = (my_3 * 5 + 3) % 6 + 1
    if mF_1 <= 3 then
        if mF_1 <= 2 then
            if mF_1 <= 1 then
                if my_3 * 63323711 + 12 + 7 <= my_3 * 63323711 + 12 + 7 + 4 then
                    lv = "All Fish"
                    mA = "Filtered"
                    mE = {}
                else
                    mA = "All Fish"
                    mE = "Filtered"
                    lv = {}
                end
                my_3 = (my_3 + 23) % 24
            else
                if (not mz and Options or lv and false) and (not lv and Options or mA and not Options) and (mz or not lv or false and not mz or Options and Options and (lz and not lv)) or not ((not mz and Options or lv and false) and (not lv and Options or mA and not Options) and (mz or not lv or false and not mz or Options and Options and (lz and not lv))) then
                    mz = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                else
                    mE = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
                end
                my_3 = (my_3 + 11) % 24
            end
        else
            local vm = bit32.rrotate(bit32.bxor(bit32.lrotate(my_3, 18), 49), 1)
            if bit32.bxor(bit32.lrotate(bit32.bxor(vm, 1230971509), 10), 2089407781) ~= bit32.lrotate(vm, 10) then
                mC = loadstring(game:HttpGet(Options .. "Library.lua"))()
                pcall(fn693)
                lW = loadstring(game:HttpGet(Options .. "addons/ThemeManager.lua"))()
                mz = loadstring(game:HttpGet(Options .. "addons/SaveManager.lua"))()
                l6 = mC.Toggles
                mD = mC.Options
            else
                l6 = loadstring(game:HttpGet(mz .. "Library.lua"))()
                pcall(fn693)
                mD = loadstring(game:HttpGet(mz .. "addons/ThemeManager.lua"))()
                mC = loadstring(game:HttpGet(mz .. "addons/SaveManager.lua"))()
                lW = l6.Toggles
                Options = l6.Options
            end
            my_3 = (my_3 + 17) % 24
        end
    elseif mF_1 <= 5 then
        if mF_1 <= 4 then
            local mF_2 = {
                "nvflzlagqogr",
                "ezyilxdplp",
                "uthromrjnys",
                "sefmanpy",
                "jwnimbqbnc",
                "wifzhun",
                "alce",
                "ynirvxz",
                "ssxpmdhn"
            }
            if mF_2[(my_3 * 64 + 42) % 9 + 1] <= mF_2[(my_3 * 64 + 42) % 9 + 1] then
                lR = "https://discord.gg/ehKVq7pf7v"
                lO = fn87
                lF = 5
            else
                lF = "https://discord.gg/ehKVq7pf7v"
                lR = fn87
                lO = 5
            end
            my_3 = (my_3 + 5) % 24
        else
            local mF_3 = (vector.create((my_3 * 6 + 1) % 11 + 1, (my_3 * 6 + 1) % 13 + 1, (my_3 * 7 + 6) % 17 + 1))
            local mK_1 = (vector.create((my_3 * 4 + 1) % 11 + 1, (my_3 * 3 + 12) % 13 + 1, (my_3 * 8 + 10) % 17 + 1))
            mL = (vector.create((my_3 * 6 + 5) % 11 + 1, (my_3 * 3 + 3) % 13 + 1, (my_3 * 13 + 13) % 17 + 1))
            mM = (vector.create((my_3 * 1 + 9) % 11 + 1, (my_3 * 4 + 11) % 13 + 1, (my_3 * 2 + 9) % 17 + 1))
            if vector.dot(vector.cross(mF_3, mK_1), (vector.cross(mL, mM))) == vector.dot(mF_3, mL) * vector.dot(mK_1, mM) - vector.dot(mF_3, mM) * vector.dot(mK_1, mL) then
                lD = 1
            else
                mz = 1
            end
            my_3 = (my_3 + 23) % 24
        end
    else
        local mF_4 = {
            "xdhmpvj",
            "lgsuuiifib",
            "cylqczf",
            "rcwargzre",
            "hocqnszqyl",
            "rpflflrdops",
            "rpikqfpjj",
            "pxneleogrvi",
            "axyh",
            "mcyhotkn",
            "tjnek",
            "aixu"
        }
        local vh = my_3
        local mK_2 = mF_4[vh % 12 + 1]
        local nf = if mK_2:len() <= mK_2:gsub("(.)", "%1%1", vh % 3 % 2 + 1):len() then 1 else 0
        if nf == 1 then
            lz = 4.5
        else
            mE = 4.5
        end
        my_3 = (my_3 + 23) % 24
    end
until (my_3 * 13 + 19) % 24 == 3
local mF_5 = {}
for k, v in mG.Rarity do
    local my_4 = #mF_5 + 1
    mz = mG.RARITY_ORDER[v] or 0
    mF_5[my_4] = { name = k, order = mz }
end
local mK_3 = 0
repeat
    local my_5 = { "tdpaousc", "iwxs", "emx", "hxbi", "justvncios", "tbk", "xax", "wjrxisfisp", "wbkfeobzne" }
    if my_5[(mK_3 * 16 + 73) % 9 + 1] < my_5[(mK_3 * 16 + 73) % 9 + 1] then
        table.sort(mF_5, fn8)
    else
        table.sort(mF_5, fn8)
    end
    mK_3 = (mK_3 + 7) % 8
until (mK_3 * 1 + 7) % 8 == 6
for k, v in mF_5 do
    mE[#mE + 1] = v.name
end
lw, mw, mo, mj = nil, nil, nil, nil
mz = fn377
mG, lw = mz(Baits)
mF_6, mw = mz(mI)
mK_4, mo = mz(mH)
if (not mj and not mK_4) or not mj and mG and false or mG and mG and (not mj and not mG) and (not lw or mo or (not mG or mK_4)) or not ((not mj and not mK_4) or not mj and mG and false or mG and mG and (not mj and not mG) and (not lw or mo or (not mG or mK_4))) then
    mj = {}
else
    lw = {}
end
for k, v in Baits do
    if v.source == bait.BaitSource.BaitShop then
        mj[#mj + 1] = k
    end
end
mL, lV, mI, lJ, mH, mM, l9, lH, mp = nil, nil, nil, nil, nil, nil, nil, nil, nil
local my_6 = 34
repeat
    mN = (my_6 * 1 + 0) % 5 + 1
    if mN <= 3 then
        if mN <= 2 then
            if mN <= 1 then
                local uX = bit32.rrotate(bit32.bxor(bit32.lrotate(my_6, 17), string.byte(tostring(mI))), 15)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uX, 659667551), 676950241), (bit32.bxor(bit32.band(uX, 3635299744), 153913486))), 676950241), 153913486) ~= uX then
                    lH, mv = mI(mz, fn548)
                    lJ = fn660
                else
                    mI, lJ = mz(mv, fn548)
                    lH = fn660
                end
                my_6 = (my_6 + 1) % 40
            else
                if my_6 * 41021143 + 1 + 2 <= my_6 * 41021143 + 1 + 2 + 3 then
                    mp = fn136
                else
                    mL = fn136
                end
                my_6 = (my_6 + 16) % 40
            end
        else
            if (my_6 * 3 + 4) * 5 % 4 == ((my_6 * 3 + 4) * 5 + 12) % 4 then
                mH = { "FoodScoop", "GoldenFoodScoop" }
            else
                lJ = { "FoodScoop", "GoldenFoodScoop" }
            end
            my_6 = (my_6 + 21) % 40
        end
    elseif mN <= 4 then
        mN = {
            "wkknaecc",
            "xht",
            "huufghn",
            "ckiphrc",
            "vvisryhg",
            "vnpnt",
            "kubh",
            "nhgcybuwmjgy",
            "noxluulr",
            "ztkozyxh",
            "adc",
            "otf"
        }
        if mN[(my_6 * 77 + 63) % 12 + 1] < mN[(my_6 * 77 + 63) % 12 + 1] then
            l9 = {}
            mM = {}
        else
            mM = {}
            l9 = {}
        end
        my_6 = (my_6 + 36) % 40
    else
        if ((lJ or not lJ) and (mM or not mL) or (not mL or mL or not mH and not mH)) and ((not lJ or mH or mM and lH) and (not my_6 or my_6 or lJ and not lH)) and (not mM or mH or (mH or not lH) or lH and not mL and (mH and not lJ) or (not my_6 and my_6 and (not my_6 or not mH) or (not my_6 or not lJ) and (not mH or not mL))) or not (((lJ or not lJ) and (mM or not mL) or (not mL or mL or not mH and not mH)) and ((not lJ or mH or mM and lH) and (not my_6 or my_6 or lJ and not lH)) and (not mM or mH or (mH or not lH) or lH and not mL and (mH and not lJ) or (not my_6 and my_6 and (not my_6 or not mH) or (not my_6 or not lJ) and (not mH or not mL)))) then
            table.sort(mj, fn782)
            mL, lV = mz(mv, fn303)
        else
            table.sort(mv, fn782)
            mz, mL = lV(mj, fn303)
        end
        my_6 = (my_6 + 31) % 40
    end
until (my_6 * 27 + 11) % 40 == 4
for i, v in ipairs(mH) do
    local my_7 = mv[v]
    mz = my_7 and my_7.name
    mz = mz or v
    mM[#mM + 1] = mz
    l9[mz] = v
end
lX, lS = nil, nil
lX = {
    { name = "Baits", key = "baits" },
    { name = "Boosters", key = "boosters" },
    { name = "Eggs", key = "eggs" },
    { name = "Machines", key = "machines" },
    { name = "Cosmetics", key = "cosmetics" },
    { name = "Cosmetic Extras", key = "cosmeticsExtra" }
}
mH = {}
lS = {}
for i, v in ipairs(lX) do
    mH[#mH + 1] = v.name
    lS[v.name] = v.key
end
lK, lI, lE, lB, lx, lt, mx, mu, mq, mk, mg, my_9, md, ma, l3, lM, ms, l5, mm, l0, lG, mf, l7, lQ, mc = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
lK = {}
lI = {}
lE = {}
lB = {}
lx = {}
lt = {}
if (my_9 or not my_9 or (l7 or l7) or (not mf or not my_9) and (mf or mf)) and ((not mf or not l7 or my_9 and l7) and ((not l7 or my_9) and (not l7 or l7))) and (my_9 and mf and (not my_9 and not my_9) and (not my_9 and not l7 and (mf and not my_9)) or ((not l7 or l7) and (l7 or my_9) or (not mf and not l7 or (l7 or l7)))) and not ((my_9 or not my_9 or (l7 or l7) or (not mf or not my_9) and (mf or mf)) and ((not mf or not l7 or my_9 and l7) and ((not l7 or my_9) and (not l7 or l7))) and (my_9 and mf and (not my_9 and not my_9) and (not my_9 and not l7 and (mf and not my_9)) or ((not l7 or l7) and (l7 or my_9) or (not mf and not l7 or (l7 or l7))))) then
    mu = {}
    mx = {}
else
    mx = {}
    mu = {}
end
mq = {}
mk = {}
mg = {}
md = fn657
ma = fn672
l3 = fn721
lM = fn396
if lM and lM or (lM or lM) or lM and not lM and (not lG and lM) or not (lM and lM or (lM or lM) or lM and not lM and (not lG and lM)) then
    ms = fn686
    l5 = fn185
    mm = fn86
    l0 = fn59
else
    l5 = fn686
    ms = fn185
    l0 = fn86
    mm = fn59
end
lG = fn30
mf = fn308
l7 = fn53
lQ = fn345
mc = fn38
local Window = l6:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = lR .. " | Farm a Fish",
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
local mO = {
    Info = Window:AddTab("Info", "info"),
    Bait = Window:AddTab("Bait", "worm"),
    Fish = Window:AddTab("Fish", "fish"),
    Eggs = Window:AddTab("Eggs", "egg"),
    Pets = Window:AddTab("Pets", "paw-print"),
    Gear = Window:AddTab("Gear", "wrench"),
    Pond = Window:AddTab("Pond", "droplet"),
    Settings = Window:AddTab("Settings", "settings")
}
mN = fn188
for k, v in mO do
    mN(v)
end
lu, AutoCollectGroup, AutoPlacePetsGroup, AutoPlaceGearsGroup, l1, lZ, connection, connection2, lP = nil, nil, nil, nil, nil, nil, nil, nil, nil
local BasicInfoGroup = mO.Info:AddLeftGroupbox("Basic Info", "circle-user")
lu = "Unknown"
pcall(fn623)
BasicInfoGroup:AddLabel("Executor: " .. lu, true)
BasicInfoGroup:AddLabel("Game: Farm a Fish", true)
BasicInfoGroup:AddLabel("Player: " .. LocalPlayer.Name, true)
BasicInfoGroup:AddLabel("Status: Keyless", true)
local OuroborosHubGroup = mO.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = lO })
local FaqGroup = mO.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoPlaceSeedsGroup = mO.Bait:AddLeftGroupbox("Auto Place Seeds", "sprout")
AutoPlaceSeedsGroup:AddToggle("AutoPlaceBait", { Text = "Auto Place Seeds", Default = false })
AutoPlaceSeedsGroup:AddToggle("PlaceAnyBait", { Text = "Place Any Owned Bait", Default = true })
AutoPlaceSeedsGroup:AddDropdown("PlaceBaits", {
    Text = "Baits To Place",
    Values = mG,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onPlaceBaits
})
AutoPlaceSeedsGroup:AddSlider("PlacePerCycle", { Text = "Place Per Cycle", Default = 5, Min = 1, Max = 25, Rounding = 0 })
AutoPlaceSeedsGroup:AddSlider("PlaceStepDelay", { Text = "Place Step Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
AutoPlaceSeedsGroup:AddSlider("PlaceLoopDelay", { Text = "Place Loop Delay", Default = 3, Min = 1, Max = 30, Rounding = 1 })
local AutoBuyBaitGroup = mO.Bait:AddRightGroupbox("Auto Buy Bait", "shopping-basket")
if (l1 and not lP and (not l1 and AutoPlaceGearsGroup) or not l1 and AutoPlaceGearsGroup and (not l1 and AutoPlaceGearsGroup) or (not AutoPlaceGearsGroup and lP or (l1 or AutoPlaceGearsGroup)) and (lP and l1 or AutoPlaceGearsGroup and not AutoPlaceGearsGroup)) and not (l1 and not lP and (not l1 and AutoPlaceGearsGroup) or not l1 and AutoPlaceGearsGroup and (not l1 and AutoPlaceGearsGroup) or (not AutoPlaceGearsGroup and lP or (l1 or AutoPlaceGearsGroup)) and (lP and l1 or AutoPlaceGearsGroup and not AutoPlaceGearsGroup)) then
    mG:AddToggle("AutoBuyBait", { Text = "Auto Buy Bait", Default = false })
    mG:AddToggle("BuyAnyAffordableBait", { Text = "Buy Any Affordable Bait", Default = false })
    mG:AddDropdown("BuyBaits", {
        Multi = true,
        Values = AutoCollectGroup,
        Text = "Baits To Buy",
        Searchable = true,
        Callback = onBuyBaits,
        Default = {}
    })
    mG:AddSlider("BaitCoinReserve", { Text = "Coin Reserve", Min = 0, Default = 0, Max = 10000000, Rounding = 0 })
    mG:AddSlider("BaitBuyPerCycle", { Text = "Buy Per Cycle", Rounding = 0, Min = 1, Default = 10, Max = 50 })
    mG:AddSlider("BaitBuyStepDelay", { Min = 0.1, Max = 3, Text = "Buy Step Delay", Rounding = 2, Default = 0.3 })
    mG:AddSlider("BaitBuyLoopDelay", { Text = "Buy Loop Delay", Rounding = 1, Min = 1, Max = 60, Default = 5 })
    mG:AddToggle("BaitBuyNotify", { Text = "Notify On Purchase", Default = false })
    mO = AutoBuyBaitGroup.Fish:AddLeftGroupbox("Auto Collect", "hand-grab")
else
    AutoBuyBaitGroup:AddToggle("AutoBuyBait", { Text = "Auto Buy Bait", Default = false })
    AutoBuyBaitGroup:AddToggle("BuyAnyAffordableBait", { Text = "Buy Any Affordable Bait", Default = false })
    AutoBuyBaitGroup:AddDropdown("BuyBaits", {
        Text = "Baits To Buy",
        Values = mG,
        Default = {},
        Multi = true,
        Searchable = true,
        Callback = onBuyBaits
    })
    AutoBuyBaitGroup:AddSlider("BaitCoinReserve", { Text = "Coin Reserve", Default = 0, Min = 0, Max = 10000000, Rounding = 0 })
    AutoBuyBaitGroup:AddSlider("BaitBuyPerCycle", { Text = "Buy Per Cycle", Default = 10, Min = 1, Max = 50, Rounding = 0 })
    AutoBuyBaitGroup:AddSlider("BaitBuyStepDelay", { Text = "Buy Step Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
    AutoBuyBaitGroup:AddSlider("BaitBuyLoopDelay", { Text = "Buy Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
    AutoBuyBaitGroup:AddToggle("BaitBuyNotify", { Text = "Notify On Purchase", Default = false })
    AutoCollectGroup = mO.Fish:AddLeftGroupbox("Auto Collect", "hand-grab")
end
AutoCollectGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
AutoCollectGroup:AddToggle("CollectOnlyFull", { Text = "Only Collect Full Nets", Default = false })
AutoCollectGroup:AddSlider("CollectMinFish", { Text = "Minimum Fish In Net", Default = 1, Min = 1, Max = 10, Rounding = 0 })
AutoCollectGroup:AddSlider("CollectStepDelay", { Text = "Collect Step Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
AutoCollectGroup:AddSlider("CollectLoopDelay", { Text = "Collect Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
local AutoSellGroup = mO.Fish:AddRightGroupbox("Auto Sell", "banknote")
AutoSellGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
AutoSellGroup:AddDropdown("SellMode", { Text = "Sell Mode", Values = { lv, mA }, Default = lv, Multi = false })
AutoSellGroup:AddDropdown("SellRarities", { Text = "Rarities To Sell", Values = mE, Default = {}, Multi = true, Callback = onSellRarities })
AutoSellGroup:AddSlider("SellMaxValue", { Text = "Maximum Fish Value", Default = 1000000, Min = 0, Max = 100000000, Rounding = 0 })
AutoSellGroup:AddToggle("SellKeepLiked", { Text = "Keep Liked Fish", Default = true })
AutoSellGroup:AddSlider("SellMinHeld", { Text = "Sell Above Fish Count", Default = 1, Min = 1, Max = 200, Rounding = 0 })
AutoSellGroup:AddSlider("SellStepDelay", { Text = "Sell Step Delay", Default = 0.2, Min = 0.05, Max = 2, Rounding = 2 })
AutoSellGroup:AddSlider("SellLoopDelay", { Text = "Sell Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
mz = mO.Eggs:AddLeftGroupbox("Auto Place Eggs", "egg")
mz:AddToggle("AutoPlaceEgg", { Text = "Auto Place Eggs", Default = false })
mz:AddToggle("PlaceAnyEgg", { Text = "Place Any Owned Egg", Default = true })
mz:AddDropdown("PlaceEggs", {
    Text = "Eggs To Place",
    Values = mF_6,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onPlaceEggs
})
mz:AddSlider("EggPlacePerCycle", { Text = "Place Per Cycle", Default = 3, Min = 1, Max = 25, Rounding = 0 })
mz:AddSlider("EggPlaceStepDelay", { Text = "Place Step Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
mz:AddSlider("EggPlaceLoopDelay", { Text = "Place Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
local AutoOpenReadyEggsGroup = mO.Eggs:AddRightGroupbox("Auto Open Ready Eggs", "egg-fried")
if AutoPlaceGearsGroup and lP and (lP and AutoPlaceGearsGroup) and (lZ or not AutoPlaceGearsGroup or AutoPlaceGearsGroup and not AutoPlaceGearsGroup) or not (AutoPlaceGearsGroup and lP and (lP and AutoPlaceGearsGroup) and (lZ or not AutoPlaceGearsGroup or AutoPlaceGearsGroup and not AutoPlaceGearsGroup)) then
    AutoOpenReadyEggsGroup:AddToggle("AutoHatch", { Text = "Auto Open Ready Eggs", Default = false })
    AutoOpenReadyEggsGroup:AddToggle("HatchAnyEgg", { Text = "Open Any Ready Egg", Default = true })
    AutoOpenReadyEggsGroup:AddDropdown("HatchEggs", {
        Text = "Eggs To Open",
        Values = mF_6,
        Default = {},
        Multi = true,
        Searchable = true,
        Callback = onHatchEggs
    })
    AutoOpenReadyEggsGroup:AddSlider("HatchPerCycle", { Text = "Open Per Cycle", Default = 5, Min = 1, Max = 50, Rounding = 0 })
    AutoOpenReadyEggsGroup:AddSlider("HatchStepDelay", { Text = "Open Step Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2 })
    AutoOpenReadyEggsGroup:AddSlider("HatchLoopDelay", { Text = "Open Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
    AutoPlacePetsGroup = mO.Pets:AddLeftGroupbox("Auto Place Pets", "paw-print")
else
    mO:AddToggle("AutoHatch", { Text = "Auto Open Ready Eggs", Default = false })
    mO:AddToggle("HatchAnyEgg", { Text = "Open Any Ready Egg", Default = true })
    mO:AddDropdown("HatchEggs", {
        Text = "Eggs To Open",
        Callback = onHatchEggs,
        Values = AutoPlacePetsGroup,
        Default = {},
        Multi = true,
        Searchable = true
    })
    mO:AddSlider("HatchPerCycle", { Rounding = 0, Max = 50, Default = 5, Text = "Open Per Cycle", Min = 1 })
    mO:AddSlider("HatchStepDelay", { Rounding = 2, Max = 3, Min = 0.1, Text = "Open Step Delay", Default = 0.4 })
    mO:AddSlider("HatchLoopDelay", { Text = "Open Loop Delay", Default = 5, Max = 60, Rounding = 1, Min = 1 })
    AutoOpenReadyEggsGroup.Pets:AddLeftGroupbox("Auto Place Pets", "paw-print")
end
AutoPlacePetsGroup:AddToggle("AutoPlacePet", { Text = "Auto Place Pets", Default = false })
AutoPlacePetsGroup:AddToggle("PlaceAnyPet", { Text = "Place Any Owned Pet", Default = true })
AutoPlacePetsGroup:AddDropdown("PlacePets", {
    Text = "Pets To Place",
    Values = mK_4,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onPlacePets
})
AutoPlacePetsGroup:AddSlider("PetPlacePerCycle", { Text = "Place Per Cycle", Default = 3, Min = 1, Max = 25, Rounding = 0 })
AutoPlacePetsGroup:AddSlider("PetPlaceStepDelay", { Text = "Place Step Delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2 })
AutoPlacePetsGroup:AddSlider("PetPlaceLoopDelay", { Text = "Place Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
local AutoBuyGearsGroup = mO.Gear:AddLeftGroupbox("Auto Buy Gears", "shopping-cart")
AutoBuyGearsGroup:AddToggle("AutoBuyGear", { Text = "Auto Buy Gears", Default = false })
AutoBuyGearsGroup:AddDropdown("BuyGears", {
    Text = "Gears To Buy",
    Values = mL,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onBuyGears
})
AutoBuyGearsGroup:AddSlider("GearCoinReserve", { Text = "Coin Reserve", Default = 0, Min = 0, Max = 10000000, Rounding = 0 })
AutoBuyGearsGroup:AddSlider("GearBuyPerCycle", { Text = "Buy Per Cycle", Default = 5, Min = 1, Max = 50, Rounding = 0 })
AutoBuyGearsGroup:AddSlider("GearBuyStepDelay", { Text = "Buy Step Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
AutoBuyGearsGroup:AddSlider("GearBuyLoopDelay", { Text = "Buy Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
AutoBuyGearsGroup:AddToggle("GearBuyNotify", { Text = "Notify On Purchase", Default = false })
AutoPlaceGearsGroup = mO.Gear:AddRightGroupbox("Auto Place Gears", "hammer")
AutoPlaceGearsGroup:AddToggle("AutoPlaceGear", { Text = "Auto Place Gears", Default = false })
AutoPlaceGearsGroup:AddToggle("PlaceAnyGear", { Text = "Place Any Owned Gear", Default = true })
AutoPlaceGearsGroup:AddDropdown("PlaceGears", {
    Text = "Gears To Place",
    Values = mI,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onPlaceGears
})
AutoPlaceGearsGroup:AddSlider("GearPlacePerCycle", { Text = "Place Per Cycle", Default = 3, Min = 1, Max = 25, Rounding = 0 })
AutoPlaceGearsGroup:AddSlider("GearPlaceStepDelay", { Text = "Place Step Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
AutoPlaceGearsGroup:AddSlider("GearPlaceLoopDelay", { Text = "Place Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
local AutoScoopGroup = mO.Pond:AddLeftGroupbox("Auto Scoop", "utensils")
AutoScoopGroup:AddToggle("AutoScoop", { Text = "Auto Scoop", Default = false })
AutoScoopGroup:AddDropdown("ScoopGear", { Text = "Scoop Gear", Values = mM, Default = mM[1], Multi = false })
AutoScoopGroup:AddToggle("ScoopAnyBait", { Text = "Scoop Any Bait", Default = true })
AutoScoopGroup:AddDropdown("ScoopBaits", {
    Text = "Baits To Scoop",
    Values = mG,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onScoopBaits
})
AutoScoopGroup:AddToggle("ScoopSkipFull", { Text = "Skip Full Nets", Default = true })
AutoScoopGroup:AddSlider("ScoopPerCycle", { Text = "Scoops Per Cycle", Default = 10, Min = 1, Max = 100, Rounding = 0 })
AutoScoopGroup:AddSlider("ScoopStepDelay", { Text = "Scoop Step Delay", Default = 0.2, Min = 0.05, Max = 3, Rounding = 2 })
AutoScoopGroup:AddSlider("ScoopLoopDelay", { Text = "Scoop Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
local AutoDeleteBuildingsGroup = mO.Pond:AddRightGroupbox("Auto Delete Buildings", "trash-2")
AutoDeleteBuildingsGroup:AddToggle("AutoDelete", { Text = "Auto Delete Buildings", Default = false })
AutoDeleteBuildingsGroup:AddDropdown("DeleteGroups", {
    Text = "Building Types To Delete",
    Values = mH,
    Default = {},
    Multi = true,
    Callback = onDeleteGroups
})
AutoDeleteBuildingsGroup:AddToggle("DeleteAnyBait", { Text = "Delete Any Bait Type", Default = false })
AutoDeleteBuildingsGroup:AddDropdown("DeleteBaits", {
    Text = "Baits To Delete",
    Values = mG,
    Default = {},
    Multi = true,
    Searchable = true,
    Callback = onDeleteBaits
})
AutoDeleteBuildingsGroup:AddSlider("DeleteBaitBelowValue", { Text = "Delete Baits Below Base Value", Default = 0, Min = 0, Max = 1000000, Rounding = 0 })
AutoDeleteBuildingsGroup:AddToggle("DeleteOnlyEmpty", { Text = "Only Delete Empty Nets", Default = true })
AutoDeleteBuildingsGroup:AddSlider("DeletePerCycle", { Text = "Delete Per Cycle", Default = 5, Min = 1, Max = 50, Rounding = 0 })
AutoDeleteBuildingsGroup:AddSlider("DeleteStepDelay", { Text = "Delete Step Delay", Default = 0.3, Min = 0.1, Max = 3, Rounding = 2 })
AutoDeleteBuildingsGroup:AddSlider("DeleteLoopDelay", { Text = "Delete Loop Delay", Default = 10, Min = 1, Max = 120, Rounding = 1 })
local MenuGroup = mO.Settings:AddLeftGroupbox("Menu", "wrench")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
MenuGroup:AddButton("Unload", onUnload)
l6.ToggleKeybind = Options.MenuKeybind
l1 = tick()
lZ = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local qx = v
        pcall(function()
            qx:Disable()
        end)
    end
end)
lP = fn132
connection = UserInputService.InputBegan:Connect(onInputBegan)
connection2 = UserInputService.InputChanged:Connect(onInputChanged)
l6:OnUnload(fn175)
task.spawn(antiAfkLoop)
task.spawn(autoPlaceBaitLoop)
task.spawn(autoBuyBaitLoop)
task.spawn(autoCollectLoop)
task.spawn(autoSellLoop)
task.spawn(autoBuyGearLoop)
task.spawn(autoPlaceGearLoop)
task.spawn(autoPlaceEggLoop)
task.spawn(autoScoopLoop)
task.spawn(autoDeleteLoop)
task.spawn(autoHatchLoop)
task.spawn(autoPlacePetLoop)
mD:SetLibrary(l6)
mD:SetFolder("OuroborosHub")
mD:SaveDefault("Mint")
mC:SetLibrary(l6)
mC:IgnoreThemeSettings()
mC:SetIgnoreIndexes({ "MenuKeybind" })
mC:SetFolder("OuroborosHub/FarmAFish")
mC:BuildConfigSection(mO.Settings)
mD:ApplyToTab(mO.Settings)
mD:LoadDefault()
mC:LoadAutoloadConfig()
