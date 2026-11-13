local pA
local pW
local pivot2
local pZ
local pG
local p1
local pJ
local p4
local Data
local p7
local pP
local qa
local pS
local qd
local pw
local pz
local pV
local pC
local pY
local pF
local p0
local pI
local p3
local pL
local p6
local pO
local p9
local pR
local qc
local pv
local pU
local py
local Fish
local pX
local pE
local p_
local p2
local pH
local pK
local p5
local p8
local pN
local Fishermen
local pQ
local Rarities
local px
local pT
local function fn57(gl)
    local vJ_1
    local vI = p6.Unloaded or not p6.Enabled[gl]
    local vI_1
    if vI then
        return "Off"
    end
    vI_1, vJ_1 = pcall(pZ[gl])
    if not vI_1 then
        pS()
    end
    local Status = p6.Status
    local vL = p6.Enabled[gl]
    if vL then
        local vM = vI_1 and vJ_1
        local vI_2 = vM or tostring(vJ_1)
        vL = vI_2
    end
    Status[gl] = vL or "Off"
    return p6.Status[gl]
end
local function fn61()
    if pQ then
        return
    end
    pQ = task.spawn(function()
        while not p6.Unloaded do
            for k, v in pw do
                if p6.Unloaded then
                    break
                end
                pT.Step(v)
            end
            for k, v in pC do
                if p6.Unloaded then
                    break
                end
                pT.Step(v)
            end
            task.wait(0.5)
        end
    end)
end
local function fn120(f6, f7)
    local vy = type(f7) == "table" and table.clone(f7)
    p6[f6] = vy or f7
end
local function fn198(br, bs)
    return br[bs] == true
end
local function fn214()
    local u6 = qc()
    local u7 = pL(u6)
    local u8 = {}
    if p6.SellFolders.Fish then
        table.insert(u8, { Folder = "Fish", Definitions = Fish })
    end
    if p6.SellFolders.Fishermen then
        table.insert(u8, { Folder = "Fishermen", Definitions = Fishermen })
    end
    if #u8 == 0 then
        return "Select sell folders"
    end
    for k, v in u8 do
        local u8_1 = pE(u6, "Inventory", v.Folder)
        for k, v2 in p7:Read(u8_1) do
            local u8_2 = v.Definitions:Find(v2.Id)
            local u9 = u8_2 and Rarities:Sellable(u8_2.Rarity) and pJ(p6.SellRarities, u8_2.Rarity)
            if u9 then
                local u9_1 = v.Folder == "Fish" and u7[v2.Id] and p2(u6, v2.Id) - v2.Count < u7[v2.Id]
                if not u9_1 then
                    pO.SellStack:FireServer(v2.Key)
                    task.wait(0.2)
                    local u9_2 = (p7:Find(pE(qc(), "Inventory", v.Folder), v2.Id, v2.Variant)) and "Waiting for sell"
                    local va = u9_2
                    if not va then
                        va = "Sold " .. (u8_2.Name or v2.Id)
                    end
                    return va
                end
            end
        end
    end
    local u6_1 = (next(p6.SellRarities)) and "Waiting for inventory"
    local u7_1 = u6_1
    local ve = if u7_1 then 1 else 0
    local vc = 3653 * ve + 3110 * (1 - ve)
    local vd = 1538 * ve + 3788 * (1 - ve)
    if not ((vc * 973 + vd * 2168 + vc * vd) % 16777213 == 12507067) then
        u7_1 = "Select rarities"
    end
    return u7_1
end
local function fn225()
    if pN then
        pcall(function()
            pN:InputHoldEnd()
        end)
        pN = nil
    end
    pK = nil
    if pG and pG == p1.Character and pG.Parent then
        pG:PivotTo(pivot2)
    end
    pG = nil
    pivot2 = nil
end
local function fn234(cP)
    local sT
    for k, v in p0(cP, "Fishermen") do
        local sU = Fishermen:Find(v.Id)
        if sU then
            local sV = pX(sU)
            if not sT or sV > sT.Score or sV == sT.Score and v.Key < sT.Key then
                sT = { Key = v.Key, Id = v.Id, Definition = sU, Score = sV }
            end
        end
    end
    return sT
end
local function fn252()
    local uY = p_()
    if not uY then
        return "Waiting for base"
    end
    local uZ = p6.Enabled.BuyFisher and pW(uY, qc())
    if uZ then
        return "Waiting for hire"
    end
    local RollButton = uY:FindFirstChild("RollButton")
    local uY_1 = RollButton and RollButton:FindFirstChild("Roll")
    if not uY_1 or not uY_1.Enabled then
        return "Rolling"
    elseif qa(uY_1, "Roll") then
        return "Rolling"
    else
        return "Waiting for roll"
    end
end
local function fn267()
    local qP = qc()
    local qQ = qP and qP:FindFirstChild("Plot")
    local qP_1 = qQ
    if qQ then
        qQ = qP_1.Value
    end
    local qP_2 = qQ
    local qQ_1 = qP_2 == ""
    local qR = type(qP_2) ~= "string"
    local qV = if qR then 1 else 0
    local qT = 1942 * qV + 4053 * (1 - qV)
    local qU = 1412 * qV + 2330 * (1 - qV)
    if not ((qT * 726 + qU * 2768 + qT * qU) % 16777213 == 8060412) then
        qR = qQ_1
    end
    if qR then
        return
    end
    local Scriptable = p5:FindFirstChild("Scriptable")
    local qR_1 = Scriptable and Scriptable:FindFirstChild("Plots")
    local qQ_3 = qR_1
    if qR_1 then
        qR_1 = qQ_3:FindFirstChild("Buildings")
    end
    local qQ_4 = qR_1
    if qR_1 then
        qR_1 = qQ_4:FindFirstChild(qP_2)
    end
    return qR_1
end
local function fn304(bm, bn)
    return p7:Read(pE(bm, "Inventory", bn))
end
local function fn342()
    local vB = qc()
    local vC = pE(vB, "Fishers")
    local vD = pE(vB, "Stands")
    local vE = pU(vB)
    local vF = pV:Level(vB)
    local vG = vC and #vC:GetChildren()
    local vC_1 = vG or 0
    local vG_1 = vD and #vD:GetChildren()
    return { Cash = vE, Rebirths = vF, Fishers = vC_1, Stands = vG_1 or 0, Status = p6.Status }
end
local function fn343(cj)
    local sj = cj
    while sj do
        local attr = sj:GetAttribute("Fisherman")
        local sl = attr ~= ""
        local sm = type(attr) == "string" and sl
        if sm then
            return attr
        end
        sj = sj.Parent
    end
end
local function fn369(bg, ...)
    local rB = bg
    for k, v in { ... } do
        local rC = rB and rB:FindFirstChild(v)
        rB = rC
    end
    return rB
end
local function fn378()
    local tn_1
    local th = qc()
    local ti = p_()
    local ti_3
    local tj = ti and ti:FindFirstChild("MoneyButtons")
    local tk = tj
    if tj then
        tj = tk:FindFirstChild("TopPart")
    end
    local tk_1 = tj
    if not tk_1 then
        return "Waiting for base"
    end
    local tj_1 = pU(th)
    local tl = 0
    local tm = ti.FishStands and ti.FishStands:FindFirstChild("Placements")
    local ti_1 = tm
    if tm then
        tm = #ti_1:GetChildren()
    end
    local ti_2 = tm or p4.Base
    ti_3, tn_1 = pF()
    local ti_4 = tn_1 and tn_1:GetPivot()
    for i, child in tk_1:GetChildren() do
        if p6.Unloaded or not p6.Enabled.CollectCash then
            break
        end
        local ti_6 = tonumber(child.Name)
        local tk_2 = ti_6 and p8(th, ti_6, ti_2)
        if tk_2 then
            local tk_3 = pz(th, ti_6)
            local ti_7 = tk_3 and p4:Pending(tk_3.Id, tk_3.Since, os.time(), tk_3.Variant, th) > 0
            if ti_7 then
                if not pv(child) then
                    break
                end
                tl += 1
                task.wait(0.2)
            end
        end
    end
    if ti_4 and tn_1 and tn_1.Parent and tn_1 == p1.Character then
        tn_1:PivotTo(ti_4)
    end
    if tl == 0 then
        return "Waiting for cash"
    end
    local th_1 = pU(qc()) > tj_1 and "Collected"
    return th_1 or "Waiting for collect"
end
local function fn382()
    p6.Unloaded = true
    if pQ then
        task.cancel(pQ)
        pQ = nil
    end
    pS()
    if getgenv().OuroborosRollAFisher == pT then
        getgenv().OuroborosRollAFisher = nil
    end
end
local function fn386()
    local qN = (p1:FindFirstChild("Data")) or Data
    return qN
end
local function fn394()
    local tY = qc()
    local tZ = p_()
    local t_ = tZ and tZ.FishStands and tZ.FishStands:FindFirstChild("Placements")
    if not t_ then
        return "Waiting for base"
    end
    local t__1 = px(tY)
    if not t__1 then
        return "Waiting for inventory"
    end
    local t0
    local t1 = #t_:GetChildren()
    for i, child in t_:GetChildren() do
        local tZ_2 = tonumber(child.Name)
        local t2 = tZ_2 and p8(tY, tZ_2, t1) and pz(tY, tZ_2)
        if t2 then
            local t2_1 = p3(t2.Id, t2.Variant, tY)
            if t2_1 < t__1.Income and (not t0 or t2_1 < t0.Income) then
                t0 = { Slot = tZ_2, Placement = child, Income = t2_1, Id = t2.Id }
            end
        end
    end
    if not t0 then
        return "Stands are best"
    end
    local tZ_3 = pL(tY)
    local t1_1 = tZ_3[t0.Id] and p2(tY, t0.Id) <= tZ_3[t0.Id] and t0.Id ~= t__1.Id
    if t1_1 then
        return "Keeping rebirth fish"
    end
    local Pick = t0.Placement:FindFirstChild("Pick")
    if not (Pick and Pick.Enabled) then
        return "Waiting for pick"
    elseif not qa(Pick, "ReplaceFish") then
        return "Waiting for replace"
    else
        local tZ_5 = os.clock() + 1.5
        while true do
            local t1_3 = os.clock() < tZ_5 and not p6.Unloaded
            if t1_3 then
                if not pz(qc(), t0.Slot) then
                    break
                end
                task.wait(0.05)
                continue
            end
            break
        end
        if pz(qc(), t0.Slot) then
            return "Waiting for replace"
        end
        local tY_1 = qc()
        local t__2 = px(tY_1)
        if not t__2 then
            return "Picked worse fish"
        elseif not p9(tY_1, t__2.Key) then
            return "Waiting for hold"
        else
            local Place = t0.Placement:FindFirstChild("Place")
            if not Place then
                return "Waiting for placement"
            end
            local tZ_6 = os.clock() + 1.25
            while true do
                local t1_4 = os.clock() < tZ_6 and not p6.Unloaded and not Place.Enabled
                if t1_4 then
                    task.wait(0.05)
                    continue
                end
                break
            end
            if not Place.Enabled then
                return "Waiting for placement"
            elseif qa(Place, "ReplaceFish") then
                local tY_3 = (pz(qc(), t0.Slot))
                if tY_3 then
                    tY_3 = "Replaced with " .. (t__2.Definition.Name or t__2.Id)
                end
                return tY_3 or "Waiting for placement"
            else
                return "Waiting for placement"
            end
        end
    end
end
local function fn400()
    local uT_1
    local uS_1
    local uQ = qc()
    local uR = p_()
    if not uR then
        return "Waiting for base"
    end
    uT_1, uS_1 = pW(uR, uQ)
    if not uT_1 then
        return "Waiting for matching fisher"
    elseif not uS_1 then
        return "Saving for " .. uT_1.Name
    else
        local uR_1 = p7:Total(pE(uQ, "Inventory", "Fishermen"), uT_1.Id)
        local uX = if qa(uS_1, "BuyFisher") then 1 else 0
        if uX == 1 then
            local uQ_1 = p7:Total(pE(qc(), "Inventory", "Fishermen"), uT_1.Id) > uR_1 and "Bought " .. uT_1.Name
            return uQ_1 or "Waiting for purchase"
        end
        return "Waiting for hire"
    end
end
local function fn442(bW, bX, bY)
    local r5 = pE(bW, "Passes", p4.Pass)
    local Rebirths = bW:FindFirstChild("Rebirths")
    local r7 = r5 and r5.Value == true
    local r6_1 = Rebirths and Rebirths.Value or 0
    return not p4:Locked(bX, bY, r7, r6_1)
end
local function fn460(cB, cC)
    local sA
    for k, v in p0(cB, "Fish") do
        if v.Key ~= cC then
            local sB = Fish:Find(v.Id)
            local sC = sB and pJ(p6.PlaceRarities, sB.Rarity)
            if sC then
                local sC_1 = p3(v.Id, v.Variant, cB)
                if not sA or sC_1 > sA.Income or sC_1 == sA.Income and v.Key < sA.Key then
                    sA = { Key = v.Key, Id = v.Id, Variant = v.Variant, Count = v.Count, Definition = sB, Income = sC_1 }
                end
            end
        end
    end
    return sA
end
local function fn515(bL, bM)
    local rW = p7:Total(pE(bL, "Inventory", "Fish"), bM)
    local rX = pE(bL, "Stands")
    if rX then
        for i, child in rX:GetChildren() do
            local Id = child:FindFirstChild("Id")
            if Id and Id.Value == bM then
                rW += 1
            end
        end
    end
    return rW
end
local function fn520(b5, b6)
    local r9 = pE(b5, "Stands", tostring(b6))
    local sa = r9 and r9:FindFirstChild("Id")
    local sb = r9
    if sb then
        sb = sa
    end
    if sb then
        sb = sa.Value ~= ""
    end
    if not sb then
        return
    end
    local Variant = r9:FindFirstChild("Variant")
    local Since = r9:FindFirstChild("Since")
    return {
        Slot = b6,
        Folder = r9,
        Id = sa.Value,
        Variant = Variant and Variant.Value or p7.Default,
        Since = Since and Since.Value or 0
    }
end
local function fn544()
    local tz = p_()
    local tA = tz and tz:FindFirstChild("Dock")
    if not tA then
        return "Waiting for base"
    end
    local tA_1 = qc()
    local tB = p7:Loose(pE(tA_1, "Inventory", "Fish"), pE(tA_1, "Hotbar"))
    local tA_2 = 0
    for k, v in tA:QueryDescendants("ProximityPrompt") do
        if p6.Unloaded or not p6.Enabled.CollectFish then
            break
        end
        if v.Name == "Collect" and v.Enabled then
            if qa(v, "CollectFish") then
                tA_2 += 1
            end
        end
    end
    if tA_2 == 0 then
        return "Waiting for fish"
    end
    local tz_4 = p7:Loose(pE(qc(), "Inventory", "Fish"), pE(qc(), "Hotbar"))
    return tz_4 > tB and "Collected fish" or "Waiting for collect"
end
local function fn548(bD)
    local rM = {}
    local rN = pV:Needs(pV:Level(bD))
    for k, v in rN do
        local rN_1 = v.Kind == "Fish" and type(v.Id) == "string"
        if rN_1 then
            local Id = v.Id
            rM[Id] = (rM[v.Id] or 0) + 1
        end
    end
    return rM
end
local function fn590(a4)
    local rs = a4 and a4:FindFirstChild("Held")
    local rt = rs
    if rs then
        rs = rt.Value
    end
    return rs or ""
end
local function fn592()
    local u3 = qc()
    if pV:Maxed(pV:Level(u3)) then
        return "Max rebirth"
    elseif not pV:Check(u3) then
        return "Waiting for requirements"
    else
        local u4 = pV:Level(u3)
        pO.Rebirth:FireServer()
        task.wait(0.5)
        local u3_1 = pV:Level(qc()) > u4 and "Rebirth complete"
        return u3_1 or "Waiting for rebirth"
    end
end
local function fn614(by, bz, bA)
    return p4:Income(by, bz, bA)
end
local function fn646(cN)
    if not cN then
        return 0
    end
    local sM = (tonumber(cN.Luck)) or 0
    local sN = sM * 1000
    local sO = (tonumber(cN.Capacity))
    local sS = if sO then 1 else 0
    local sQ = 2727 * sS + 3723 * (1 - sS)
    local sR = 4031 * sS + 1160 * (1 - sS)
    if not ((sQ * 1007 + sR * 2997 + sQ * sR) % 16777213 == 9042320) then
        sO = 0
    end
    return sN + sO
end
local function fn672(ae)
    local qZ = ae and ae:FindFirstChild("Cash")
    local q_ = qZ
    if qZ then
        qZ = tonumber(q_.Value)
    end
    return qZ or 0
end
local function fn781()
    local tJ = qc()
    local tK = p_()
    local tL = tK and tK.FishStands and tK.FishStands:FindFirstChild("Placements")
    if not tL then
        return "Waiting for base"
    end
    local tL_1 = px(tJ)
    if not tL_1 then
        return "Waiting for inventory"
    end
    local tM = #tL:GetChildren()
    for i, child in tL:GetChildren() do
        local tK_2 = tonumber(child.Name)
        local tN = tK_2 and p8(tJ, tK_2, tM) and not pz(tJ, tK_2)
        if tN then
            local Place = child:FindFirstChild("Place")
            if Place then
                if not p9(tJ, tL_1.Key) then
                    return "Waiting for hold"
                end
                tJ = qc()
                if not Place.Enabled then
                    task.wait(0.2)
                end
                if qa(Place, "PlaceFish") then
                    local tN_2 = not pz(qc(), tK_2) and "Waiting for placement"
                    local tK_3 = tN_2
                    if not tK_3 then
                        tK_3 = "Placed " .. (tL_1.Definition.Name or tL_1.Id)
                    end
                    return tK_3
                end
            end
        end
    end
    return "No free stands"
end
local function fn782(f4, f5)
    p6.Enabled[f4] = f5
    local Status = p6.Status
    local vt = f5 and "Ready"
    local vx = if vt then 1 else 0
    local vv = 3014 * vx + 545 * (1 - vx)
    local vw = 1667 * vx + 1368 * (1 - vx)
    if not ((vv * 723 + vw * 2412 + vv * vw) % 16777213 == 11224264) then
        vt = "Off"
    end
    Status[f4] = vt
    local vr_1 = pK == f4
    local vs_1 = not f5
    if vs_1 ~= false then
        vs_1 = vr_1
    end
    if vs_1 then
        pS()
    end
end
local function fn804()
    return { Rarities = pH, Fishers = py, SellFolders = { "Fish", "Fishermen" } }
end
local function fn806(c1, c2, c3)
    local FisherPart = c1:FindFirstChild("FisherPart")
    local s5 = pE(c2, "Fishers")
    if not (FisherPart and c3) then
        return
    end
    for k, v in pY:Fields(FisherPart, c3) do
        if pY:Fits(FisherPart, s5, c3, v.X, v.Z) then
            return v.X, v.Z
        end
    end
end
local function fn808(cn, co)
    local so = pU(co)
    local sp
    for k, v in cn:QueryDescendants("ProximityPrompt") do
        if v.Name == "Hire" and v.Enabled then
            local sq_1 = qd(v)
            local sr = sq_1 and Fishermen:Find(sq_1)
            local sq_2 = sr
            if sr then
                sr = pJ(p6.BuyRarities, sq_2.Rarity)
            end
            if sr then
                sr = pA(p6.BuyFishers, sq_2.Name)
            end
            if sr then
                local sr_1 = Fishermen:Price(sq_2)
                if p6.MaxPrice == 0 or sr_1 <= p6.MaxPrice then
                    if sr_1 <= math.max(0, so - p6.CashReserve) then
                        return sq_2, v, sr_1
                    end
                    if p6.WaitForRoll then
                        sp = sp or sq_2
                    end
                end
            end
        end
    end
    return sp
end
local function fn879()
    local uh_1
    local ug_1
    local ud = qc()
    local ue = p_()
    if not ue then
        return "Waiting for base"
    end
    local uf = pR(ud)
    if not uf then
        return "Waiting for fishers"
    end
    uh_1, ug_1 = pP(ue, ud, uf.Id)
    if not uh_1 then
        return "No free dock space"
    elseif not p9(ud, uf.Key) then
        return "Waiting for hold"
    else
        local ud_1 = p7:Count(pE(qc(), "Inventory", "Fishermen"), uf.Id)
        pO.PlaceFisher:FireServer(uh_1, ug_1)
        task.wait(0.35)
        local ue_1 = p7:Count(pE(qc(), "Inventory", "Fishermen"), uf.Id) < ud_1
        if ue_1 then
            ue_1 = "Placed " .. (uf.Definition.Name or uf.Id)
        end
        return ue_1 or "Waiting for placement"
    end
end
local function fn905(bu, bv)
    local rK = not next(bu) or bu[bv] == true
    return rK
end
local function fn922(aW)
    local rl_1
    local rk_1
    rk_1, rl_1 = pF()
    local rm = aW and aW:IsA("BasePart")
    if not (rm and rk_1) then
        return false
    elseif firetouchinterest then
        pcall(firetouchinterest, rk_1, aW, 0)
        pcall(firetouchinterest, rk_1, aW, 1)
        return true
    else
        local pivot = rl_1:GetPivot()
        rl_1:PivotTo(aW.CFrame * CFrame.new(0, 3, 0))
        task.wait(0.2)
        if rl_1.Parent and rl_1 == p1.Character then
            rl_1:PivotTo(pivot)
        end
        return true
    end
end
local function fn985(a9, ba)
    local ry = ba == ""
    local rz = type(ba) ~= "string" or ry
    if rz then
        return false
    elseif pI(a9) == ba then
        return true
    else
        pO.SelectSlot:FireServer(ba)
        local ry_1 = os.clock() + 1.25
        while true do
            local rz_1 = os.clock() < ry_1 and not p6.Unloaded
            if not rz_1 then
                if pI(qc()) ~= ba then
                    pO.SelectSlot:FireServer(ba)
                    task.wait(0.25)
                end
                return pI(qc()) == ba
            end
            if pI(qc()) == ba then
                break
            end
            task.wait(0.05)
        end
        return true
    end
end
local function fn989(ay, az)
    local Character = p1.Character
    local q9 = Character and Character:FindFirstChild("HumanoidRootPart")
    local ra = Character
    if ra then
        ra = Character:FindFirstChildOfClass("Humanoid")
    end
    local q9_1 = ay
    local rc = ra
    if q9_1 then
        q9_1 = ay.Enabled
    end
    if q9_1 then
        q9_1 = q9
    end
    if q9_1 then
        q9_1 = rc
    end
    if q9_1 then
        q9_1 = rc.Health > 0
    end
    if not q9_1 then
        return false
    end
    local Parent = ay.Parent
    local ra_1 = (Parent:IsA("Attachment")) and Parent.WorldCFrame
    local rc_1 = ra_1
    if not rc_1 then
        local ra_2 = (Parent:IsA("BasePart")) and Parent.CFrame
        rc_1 = ra_2
    end
    if not rc_1 then
        local ra_3 = (Parent:IsA("Model")) and Parent:GetPivot()
        rc_1 = ra_3
    end
    local q9_3 = rc_1
    if not q9_3 then
        return false
    end
    if (q9.Position - q9_3.Position).Magnitude > math.max(ay.MaxActivationDistance - 2, 1) then
        pG = Character
        pivot2 = Character:GetPivot()
        Character:PivotTo(q9_3 * CFrame.new(0, 3, 3))
        task.wait(0.35)
    end
    local q8_1 = p6.Unloaded or not p6.Enabled[az] or not ay.Parent
    local rj = if q8_1 then 1 else 0
    local rh = 2795 * rj + 939 * (1 - rj)
    local ri = 61 * rj + 4027 * (1 - rj)
    if not ((rh * 3193 + ri * 189 + rh * ri) % 16777213 == 9106459) then
        q8_1 = not ay.Enabled
    end
    if q8_1 then
        pS()
        return false
    end
    pN = ay
    pK = az
    if fireproximityprompt then
        pcall(fireproximityprompt, ay)
        task.wait(0.2)
    else
        ay:InputHoldBegin()
        task.wait(ay.HoldDuration + 0.15)
        pS()
    end
    if pN then
        pS()
    end
    task.wait(0.25)
    return true
end
local function fn993()
    local Character = p1.Character
    local q2 = Character and Character:FindFirstChildOfClass("Humanoid")
    local q3 = Character
    if q3 then
        q3 = Character:FindFirstChild("HumanoidRootPart")
    end
    local q2_1 = q3
    if q3 then
        q3 = q2
    end
    if q3 then
        q3 = q2.Health > 0
    end
    if q3 then
        return q2_1, Character
    end
end
Fishermen = nil
pv = nil
pw = nil
px = nil
py = nil
pz = nil
pA = nil
Fish = nil
pC = nil
pivot2 = nil
pE = nil
pF = nil
pG = nil
pH = nil
pI = nil
pJ = nil
pK = nil
pL = nil
Data = nil
pN = nil
pO = nil
pP = nil
pQ = nil
pR = nil
pS = nil
pT = nil
pU = nil
pV = nil
pW = nil
pX = nil
pY = nil
pZ = nil
p_ = nil
p0 = nil
p1 = nil
p2 = nil
p3 = nil
p4 = nil
p5 = nil
p6 = nil
p7 = nil
p8 = nil
p9 = nil
qa = nil
Rarities = nil
qc = nil
qd = nil
local pt
local OuroborosRollAFisher, Economy, qf_3
local qj_1
local qi_1
local qh_3, qh_4
local qg_1, qg_2
pt, qg_1, p5, p1, OuroborosRollAFisher = nil, nil, nil, nil, nil
local qe = 15
local qe_1, qe_2
repeat
    if (qe * 1 + 1) % 2 + 1 <= 1 then
        local qh_2 = {
            "nfekhph",
            "cbvnjlu",
            "hehbgjvgydq",
            "jitblnauwilo",
            "zsqh",
            "flvrolzrzm",
            "qtiwpbfhvml",
            "vfdaz",
            "iix",
            "qndzkk"
        }
        if qh_2[(qe * 64 + 2) % 10 + 1] <= qh_2[(qe * 64 + 2) % 10 + 1] then
            pt = game:GetService("Players")
            qg_1 = game:GetService("ReplicatedStorage")
            p5 = game:GetService("Workspace")
            p1 = pt.LocalPlayer
        else
            p5 = game:GetService("Players")
            p1 = game:GetService("ReplicatedStorage")
            qg_1 = game:GetService("Workspace")
            pt = p5.LocalPlayer
        end
        qe = (qe + 9) % 16
    else
        if (qe * 2 + 6) * 7 % 3 == ((qe * 2 + 6) * 7 + 3) % 3 then
            OuroborosRollAFisher = getgenv().OuroborosRollAFisher
        else
            pt = getgenv().OuroborosRollAFisher
        end
        qe = (qe + 13) % 16
    end
until (qe * 5 + 5) % 16 == 14
if OuroborosRollAFisher then
    OuroborosRollAFisher.Unload()
end
repeat
    task.wait()
    qe_1 = p1:GetAttribute("Data") == true and p1:FindFirstChild("Data")
until qe_1
qj_1, qi_1, qh_3, Economy, qe_2, Fish, Fishermen, Rarities, p7, p4, pY, pV, pO, Data, pH = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local ql = 16
repeat
    local qm = (ql * 5 + 3) % 12 + 1
    if qm <= 6 then
        if qm <= 3 then
            if qm <= 2 then
                if qm <= 1 then
                    if (Rarities and not qi_1 or not Rarities and qi_1 or (not Rarities or not Rarities) and (Rarities and Rarities)) and not (Rarities and not qi_1 or not Rarities and qi_1 or (not Rarities or not Rarities) and (Rarities and Rarities)) then
                        qj_1 = qi_1:WaitForChild("Gameplay")
                    else
                        qi_1 = qj_1:WaitForChild("Gameplay")
                    end
                    ql = (ql + 29) % 48
                else
                    local qn_1 = (vector.create((ql * 6 + 4) % 11 + 1, (ql * 2 + 10) % 13 + 1, (ql * 11 + 12) % 17 + 1))
                    local qo_1 = (vector.create((ql * 3 + 2) % 11 + 1, (ql * 10 + 7) % 13 + 1, (ql * 6 + 10) % 17 + 1))
                    local qp = (vector.create((ql * 5 + 5) % 5 + 1, (ql * 4 + 7) % 7 + 1, (ql * 3 + 3) % 9 + 1))
                    if math.abs((vector.angle(qn_1, qo_1, qp))) - math.abs((vector.angle(qo_1, qn_1, qp))) == 0 then
                        qh_3 = qi_1:WaitForChild("Content")
                    else
                        qi_1 = qh_3:WaitForChild("Content")
                    end
                    ql = (ql + 5) % 48
                end
            else
                local qn_2 = {
                    "atoi",
                    "mhsuwrnlki",
                    "fjloxkq",
                    "upxuinxop",
                    "mtzmfabii",
                    "zke",
                    "bkiht",
                    "htsnanq",
                    "jqo",
                    "xreatjqo",
                    "cnm"
                }
                if qn_2[(ql * 2 + 28) % 11 + 1] < qn_2[(ql * 2 + 28) % 11 + 1] then
                    qi_1 = Economy:WaitForChild("Economy")
                else
                    Economy = qi_1:WaitForChild("Economy")
                end
                ql = (ql + 29) % 48
            end
        elseif qm <= 5 then
            if qm <= 4 then
                local qn_3 = (vector.create((ql * 2 + 5) % 11 + 1, (ql * 3 + 8) % 13 + 1, (ql * 7 + 6) % 17 + 1))
                local Be = vector.floor(qn_3) + vector.ceil(qn_3 * -1)
                if vector.dot(Be, Be) == 0 then
                    qe_2 = qi_1:WaitForChild("Progress")
                else
                    qi_1 = qe_2:WaitForChild("Progress")
                end
                ql = (ql + 17) % 48
            else
                if ql * 130556429 + 2 + 2 >= ql * 130556429 + 2 + 2 + 6 then
                    qh_3 = require(Fish:WaitForChild("Fish"))
                else
                    Fish = require(qh_3:WaitForChild("Fish"))
                end
                ql = (ql + 29) % 48
            end
        else
            if ql * 16610637 + 11 + 3 <= ql * 16610637 + 11 + 3 + 1 then
                Fishermen = require(qh_3:WaitForChild("Fishermen"))
            else
                qh_3 = require(Fishermen:WaitForChild("Fishermen"))
            end
            ql = (ql + 41) % 48
        end
    elseif qm <= 9 then
        if qm <= 8 then
            if qm <= 7 then
                local Bf = bit32.rrotate(bit32.bxor(bit32.lrotate(ql, 29), string.byte(tostring(Fish))), 6)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Bf, 2159051687), 2425019660), (bit32.bxor(bit32.band(Bf, 2135915608), 408634797))), 2425019660), 408634797) == Bf then
                    Rarities = require(qh_3:WaitForChild("Rarities"))
                else
                    qh_3 = require(Rarities:WaitForChild("Rarities"))
                end
                ql = (ql + 41) % 48
            else
                local qn_4 = {
                    "qmda",
                    "uqowjcuthtv",
                    "pbfi",
                    "amggarwilfp",
                    "agtkwxhbzh",
                    "dlxfwxof",
                    "wyv",
                    "sur",
                    "ltqlcji",
                    "nbtlrpf"
                }
                local BQ = ql
                local qo_2 = qn_4[BQ % 10 + 1]
                if qo_2:len() >= qo_2:gsub("(.)", "%1%1", BQ % 3 % 2 + 1):len() then
                    qh_3 = require(Economy:WaitForChild("Stacks"))
                    pY = require(p4:WaitForChild("Stands"))
                    p7 = require(p4:WaitForChild("Fishing"))
                else
                    p7 = require(qh_3:WaitForChild("Stacks"))
                    p4 = require(Economy:WaitForChild("Stands"))
                    pY = require(Economy:WaitForChild("Fishing"))
                end
                ql = (ql + 29) % 48
            end
        else
            if (p7 and pO or (not p7 or not pO) or (p7 or pO) and (pO and p4)) and ((not pO or not pO or not p4 and not p7) and ((p4 or p4) and (not p7 or not p7))) or (not pO or p7 or p7 and p4) and (not p7 or p7 or not p7 and pO) and (p4 and p4 and (p4 and pO) or (p7 or not pO or not p7 and pO)) or not ((p7 and pO or (not p7 or not pO) or (p7 or pO) and (pO and p4)) and ((not pO or not pO or not p4 and not p7) and ((p4 or p4) and (not p7 or not p7))) or (not pO or p7 or p7 and p4) and (not p7 or p7 or not p7 and pO) and (p4 and p4 and (p4 and pO) or (p7 or not pO or not p7 and pO))) then
                pV = require(qe_2:WaitForChild("Rebirth"))
                local Net = require(qj_1:WaitForChild("Util"):WaitForChild("Net"))
                pO = {
                    PlaceFisher = Net:Event("PlaceFisher"),
                    RemoveFisher = Net:Event("RemoveFisher"),
                    SelectSlot = Net:Event("SelectSlot"),
                    SellStack = Net:Event("SellStack"),
                    Rebirth = Net:Event("Rebirth")
                }
            else
                require(qj_1:WaitForChild("Rebirth"))
                qe_2 = require(pO:WaitForChild("Util"):WaitForChild("Net"))
                pV = {
                    SellStack = qe_2:Event("SellStack"),
                    PlaceFisher = qe_2:Event("PlaceFisher"),
                    SelectSlot = qe_2:Event("SelectSlot"),
                    Rebirth = qe_2:Event("Rebirth"),
                    RemoveFisher = qe_2:Event("RemoveFisher")
                }
            end
            ql = (ql + 17) % 48
        end
    elseif qm <= 11 then
        if qm <= 10 then
            local qm_1 = (vector.create((ql * 2 + 1) % 11 + 1, (ql * 1 + 13) % 13 + 1, (ql * 11 + 10) % 17 + 1))
            local BV = vector.floor(qm_1) + vector.ceil(qm_1 * -1)
            if vector.dot(BV, BV) == 0 then
                Data = p1:WaitForChild("Data")
            else
                p1 = Data:WaitForChild("Data")
            end
            ql = (ql + 41) % 48
        else
            local qm_2 = (vector.create((ql * 7 + 3) % 11 + 1, (ql * 4 + 2) % 13 + 1, (ql * 3 + 5) % 17 + 1))
            local BP = vector.floor(qm_2) + vector.ceil(qm_2 * -1)
            if vector.dot(BP, BP) == 4 then
                p4 = {}
            else
                pH = {}
            end
            ql = (ql + 5) % 48
        end
    else
        local qm_3 = (vector.create((ql * 4 + 7) % 11 + 1, (ql * 6 + 6) % 13 + 1, (ql * 5 + 16) % 17 + 1))
        local qn_5 = (vector.create((ql * 2 + 8) % 11 + 1, (ql * 1 + 7) % 13 + 1, (ql * 2 + 2) % 17 + 1))
        local qo_3 = (vector.create((ql * 4 + 5) % 11 + 1, (ql * 7 + 6) % 13 + 1, (ql * 7 + 10) % 17 + 1))
        if vector.dot(vector.cross(qm_3, qn_5), qo_3) == vector.dot(vector.cross(qn_5, qo_3), qm_3) + 4 then
            qg_1 = qj_1:WaitForChild("Modules")
        else
            qj_1 = qg_1:WaitForChild("Modules")
        end
        ql = (ql + 29) % 48
    end
until (ql * 11 + 34) % 48 == 42
for k, v in Rarities.List do
    table.insert(pH, v.Key)
end
py = {}
for k, v in Fishermen.List do
    table.insert(py, v.Name)
end
p6 = nil
p6 = {
    Unloaded = false,
    Enabled = {},
    Status = {},
    BuyRarities = {},
    BuyFishers = {},
    PlaceRarities = {},
    SellRarities = {},
    SellFolders = { Fish = true },
    WaitForRoll = false,
    MaxPrice = 0,
    CashReserve = 0
}
for k, v in pH do
    p6.BuyRarities[v] = true
    p6.PlaceRarities[v] = true
end
pT, pQ, pN, pK, pG, pivot2, pC, pw, pZ, qg_2, qh_4, qc, p_, pU, pF, pS, qa, pv, pI, p9, pE, p0, pJ, pA, p3, pL, p2, p8, pz, qd, pW, px, pX, pR, pP, qf_3 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local qe_3 = 9
repeat
    local qi_2 = (qe_3 * 3 + 7) % 13 + 1
    if qi_2 <= 7 then
        if qi_2 <= 4 then
            if qi_2 <= 2 then
                if qi_2 <= 1 then
                    local qj_2 = { "mqp", "xqkrkixyxar", "ybuodo", "nwaoxkglad", "qnpieldl", "yzqtad", "yfidnpwx", "vxbnen", "mzpz" }
                    local Bb = qe_3
                    local qk_2 = qj_2[Bb % 9 + 1]
                    if qk_2:len() <= qk_2:gsub("(.)", "%1%1", Bb % 3 % 2 + 1):len() then
                        p9 = fn985
                        pE = fn369
                    else
                        pE = fn985
                        p9 = fn369
                    end
                    qe_3 = (qe_3 + 9) % 52
                else
                    if p8 and p_ and (not p_ and not p_) or (p8 or not qf_3) and (not qf_3 or not p8) or not (p8 and p_ and (not p_ and not p_) or (p8 or not qf_3) and (not qf_3 or not p8)) then
                        p0 = fn304
                        pJ = fn198
                        pA = fn905
                        p3 = fn614
                    else
                        p3 = fn304
                        p0 = fn198
                        pJ = fn905
                        pA = fn614
                    end
                    qe_3 = (qe_3 + 48) % 52
                end
            elseif qi_2 <= 3 then
                local Bg = bit32.rrotate(bit32.bxor(bit32.lrotate(qe_3, 21), string.byte(tostring(p9))), 10)
                if bit32.bxor(bit32.lrotate(bit32.bxor(Bg, 3019754370), 30), 2902422240) == bit32.lrotate(Bg, 30) then
                    pL = fn548
                    p2 = fn515
                    p8 = fn442
                    pz = fn520
                else
                    pz = fn548
                    pL = fn515
                    p2 = fn442
                    p8 = fn520
                end
                qe_3 = (qe_3 + 9) % 52
            else
                local qj_3 = (vector.create((qe_3 * 5 + 8) % 11 + 1, (qe_3 * 3 + 6) % 13 + 1, (qe_3 * 12 + 3) % 17 + 1))
                local qk_3 = (vector.create((qe_3 * 2 + 9) % 11 + 1, (qe_3 * 4 + 11) % 13 + 1, (qe_3 * 14 + 6) % 17 + 1))
                local ql_1 = (vector.create((qe_3 * 2 + 4) % 11 + 1, (qe_3 * 9 + 8) % 13 + 1, (qe_3 * 9 + 12) % 17 + 1))
                if vector.dot(vector.cross(qj_3, qk_3), ql_1) == vector.dot(vector.cross(qk_3, ql_1), qj_3) then
                    qd = fn343
                    pW = fn808
                    px = fn460
                    pX = fn646
                    pR = fn234
                else
                    px = fn343
                    pR = fn808
                    pX = fn460
                    pW = fn646
                    qd = fn234
                end
                qe_3 = (qe_3 + 22) % 52
            end
        elseif qi_2 <= 6 then
            if qi_2 <= 5 then
                local qj_4 = (vector.create((qe_3 * 7 + 8) % 11 + 1, (qe_3 * 1 + 10) % 13 + 1, (qe_3 * 3 + 7) % 17 + 1))
                local qk_4 = (vector.create((qe_3 * 4 + 4) % 11 + 1, (qe_3 * 8 + 3) % 13 + 1, (qe_3 * 8 + 11) % 17 + 1))
                local ql_2 = (vector.create((qe_3 * 3 + 1) % 5 + 1, (qe_3 * 3 + 5) % 7 + 1, (qe_3 * 1 + 2) % 9 + 1))
                if math.abs((vector.angle(qj_4, qk_4, ql_2))) - math.abs((vector.angle(qk_4, qj_4, ql_2))) == 3 then
                    px = fn806
                else
                    pP = fn806
                end
                qe_3 = (qe_3 + 9) % 52
            else
                local qj_5 = { "ylpdnascanf", "wdetb", "ozzyect", "tsvqgwkm", "udnbszfusqk", "cdk", "tzuryqddt" }
                local Bd = qe_3
                local qk_5 = qj_5[Bd % 7 + 1]
                if qk_5:len() >= qk_5:gsub("(.)", "%1%1", Bd % 3 % 2 + 1):len() then
                    p8 = {}
                else
                    pZ = {}
                end
                qe_3 = (qe_3 + 22) % 52
            end
        else
            if (qe_3 * 2 + 8) * 4 % 3 == ((qe_3 * 2 + 8) * 4 + 0) % 3 then
                pZ.CollectCash = fn378
                pZ.CollectFish = fn544
                pZ.PlaceFish = fn781
                pZ.ReplaceFish = fn394
                pZ.PlaceFisher = fn879
                pZ.ReplaceFisher = function()
                    local uo, up
                    local ux_4
                    local uw_12
                    local uq = qc()
                    local ur = p_()
                    local us = ur and ur:FindFirstChild("Dock")
                    local ut_6
                    local us_9 = pE(uq, "Fishers")
                    if not (us and us_9) then
                        return "Waiting for base"
                    end
                    local uu_3 = pR(uq)
                    if not uu_3 then
                        return "Waiting for inventory"
                    end
                    local uv
                    for i, child in us_9:GetChildren() do
                        local Id = child:FindFirstChild("Id")
                        local uw_7 = Id and Fishermen:Find(Id.Value)
                        if uw_7 then
                            local uw_8 = pX(uw_7)
                            local uy_5 = uw_8 < uu_3.Score
                            if uy_5 then
                                uy_5 = not uv or uw_8 < uv.Score
                            end
                            if uy_5 then
                                local X = child:FindFirstChild("X")
                                local Z = child:FindFirstChild("Z")
                                uv = {
                                    Key = child.Name,
                                    Id = Id.Value,
                                    Definition = uw_7,
                                    Score = uw_8,
                                    X = X and X.Value,
                                    Z = Z and Z.Value
                                }
                            end
                        end
                    end
                    if not uv then
                        return "Dock is best"
                    end
                    local uG = if not p9(uq, pY.HammerKey) then 1 else 0
                    if uG == 1 then
                        return "Waiting for pick up"
                    end
                    local us_11 = us:FindFirstChild(uv.Key)
                    local ut_5 = us_11
                    if ut_5 then
                        local uw_9 = us_11.PrimaryPart or us_11:FindFirstChild("HumanoidRootPart")
                        ut_5 = uw_9
                    end
                    local us_12 = ut_5
                    ut_6, up = pF()
                    local ut_7 = up and up:GetPivot()
                    uo = ut_7
                    local function ut_8()
                        if uo and up and up.Parent and up == p1.Character then
                            up:PivotTo(uo)
                        end
                    end
                    if us_12 and up then
                        up:PivotTo(us_12.CFrame * CFrame.new(0, 3, 3))
                        task.wait(0.25)
                    end
                    if p6.Unloaded or not p6.Enabled.ReplaceFisher then
                        ut_8()
                        return "Off"
                    end
                    pO.RemoveFisher:FireServer(uv.Key)
                    local us_14 = os.clock() + 1.5
                    while true do
                        local uw_11 = os.clock() < us_14 and not p6.Unloaded
                        if uw_11 then
                            if not pE(qc(), "Fishers"):FindFirstChild(uv.Key) then
                                break
                            end
                            task.wait(0.05)
                            continue
                        end
                        break
                    end
                    if pE(qc(), "Fishers"):FindFirstChild(uv.Key) then
                        ut_8()
                        return "Waiting for pick up"
                    end
                    local uq_4 = qc()
                    local uu_4 = pR(uq_4)
                    if not uu_4 then
                        ut_8()
                        return "Picked " .. (uv.Definition.Name or uv.Id)
                    end
                    local uG_2 = if not p9(uq_4, uu_4.Key) then 1 else 0
                    if uG_2 == 1 then
                        ut_8()
                        return "Waiting for hold"
                    end
                    local uq_5 = qc()
                    local FisherPart = ur:FindFirstChild("FisherPart")
                    local uy_8 = FisherPart and type(uv.X) == "number" and type(uv.Z) == "number" and pY:Fits(FisherPart, pE(uq_5, "Fishers"), uu_4.Id, uv.X, uv.Z)
                    if uy_8 then
                        ux_4, uw_12 = uv.X, uv.Z
                    else
                        ux_4, uw_12 = pP(ur, uq_5, uu_4.Id)
                    end
                    if not ux_4 then
                        ut_8()
                        return "No free dock space"
                    end
                    local ur_4 = p7:Count(pE(uq_5, "Inventory", "Fishermen"), uu_4.Id)
                    pO.PlaceFisher:FireServer(ux_4, uw_12)
                    task.wait(0.4)
                    ut_8()
                    local uq_6 = p7:Count(pE(qc(), "Inventory", "Fishermen"), uu_4.Id) < ur_4
                    if uq_6 then
                        uq_6 = "Replaced with " .. (uu_4.Definition.Name or uu_4.Id)
                    end
                    return uq_6 or "Waiting for placement"
                end
                pZ.BuyFisher = fn400
                pZ.Roll = fn252
                pZ.Rebirth = fn592
                pZ.Sell = fn214
                pT.SetEnabled = fn782
                pT.Configure = fn120
                pT.GetOptions = fn804
                pT.GetReport = fn342
                pT.Step = fn57
                pT.Start = fn61
                pT.Unload = fn382
                getgenv().OuroborosRollAFisher = pT
                qf_3 = function()
                    local Library
                    local Au
                    local As
                    local Unload
                    Library = nil
                    Unload = nil
                    As = nil
                    Au = nil
                    local UserInputService, Ag, Ah, Ai, ThemeManager, Options, RunService, onDiscord, HttpService, Ao, Toggles, TeleportService, SaveManager
                    HttpService = game:GetService("HttpService")
                    Ag = "Roll a Fisher"
                    Ao = "https://rscripts.net/@Ouroboros"
                    Au = "https://discord.gg/ehKVq7pf7v"
                    RunService = game:GetService("RunService")
                    UserInputService = game:GetService("UserInputService")
                    Ai = "https://ouroboros-hub-rbx.web.app/"
                    TeleportService = game:GetService("TeleportService")
                    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                    Toggles = Library.Toggles
                    Options = Library.Options
                    Unload = pT.Unload
                    pT.Unload = function()
                        if not Library.Unloaded then
                            Library:Unload()
                        else
                            Unload()
                        end
                    end
                    Library:OnUnload(Unload)
                    As = function(gZ, g_)
                        if setclipboard then
                            setclipboard(gZ)
                        elseif toclipboard then
                            toclipboard(gZ)
                        end
                        Library:Notify(g_)
                    end
                    onDiscord = function()
                        As(Au, "Copied Discord invite to clipboard")
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = Au, Copyable = true }, "|", Ag },
                        Icon = 78539693571783,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
                    Ah = {
                        Info = Window:AddTab("Info", "info"),
                        Main = Window:AddTab("Automation", "gamepad-2"),
                        Rolls = Window:AddTab("Rolls", "dices"),
                        Player = Window:AddTab("Player", "person-standing"),
                        Settings = Window:AddTab("Settings", "settings")
                    }
                    for k, v in Ah do
                        if k ~= "Info" then
                            local DiscordGroup = v:AddLeftGroupbox("Discord")
                            DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                            DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                        end
                    end
                    local function Aw_9(ha, hb, hc)
                        ha:AddToggle("Auto" .. hb, {
                            Text = hc,
                            Default = false,
                            Callback = function(hd)
                                pT.SetEnabled(hb, hd)
                            end
                        })
                    end
                    local function Ax(hi, hj, hk, hl, hm)
                        hi:AddInput(hj, {
                            Text = hk,
                            Default = tostring(hl),
                            Numeric = true,
                            Finished = true,
                            AllowEmpty = false,
                            EmptyReset = tostring(hl),
                            VerifyValue = function(hn)
                                local v4 = tonumber(hn)
                                return v4 and v4 >= hm and v4 < math.huge
                            end,
                            Callback = function(hr)
                                local Configure = pT.Configure
                                local v8 = (tonumber(hr)) or hl
                                Configure(hj, v8)
                            end
                        })
                    end
                    local Ay = pT.GetOptions()
                    local FarmGroup = Ah.Main:AddLeftGroupbox("Farm", "fish")
                    Aw_9(FarmGroup, "CollectFish", "Auto Collect Fish")
                    Aw_9(FarmGroup, "CollectCash", "Auto Collect Cash")
                    Aw_9(FarmGroup, "PlaceFish", "Auto Place Fish")
                    Aw_9(FarmGroup, "ReplaceFish", "Auto Replace Fish")
                    Aw_9(FarmGroup, "PlaceFisher", "Auto Place Fisher")
                    Aw_9(FarmGroup, "ReplaceFisher", "Auto Replace Fisher")
                    Aw_9(FarmGroup, "Rebirth", "Auto Rebirth")
                    local SellingGroup = Ah.Main:AddLeftGroupbox("Selling", "banknote")
                    Aw_9(SellingGroup, "Sell", "Auto Sell")
                    SellingGroup:AddDropdown("SellFolders", {
                        Text = "Folders",
                        Values = Ay.SellFolders,
                        Multi = true,
                        Default = { "Fish" },
                        Callback = function(hz)
                            pT.Configure("SellFolders", hz)
                        end
                    })
                    SellingGroup:AddDropdown("SellRarities", {
                        Text = "Rarities",
                        Values = Ay.Rarities,
                        Multi = true,
                        Default = { "Common", "Rare" },
                        Callback = function(hB)
                            pT.Configure("SellRarities", hB)
                        end
                    })
                    local PlaceFiltersGroup = Ah.Main:AddRightGroupbox("Place Filters", "list-filter")
                    PlaceFiltersGroup:AddDropdown("PlaceRarities", {
                        Text = "Fish Rarities",
                        Values = Ay.Rarities,
                        Multi = true,
                        Default = Ay.Rarities,
                        Callback = function(hE)
                            pT.Configure("PlaceRarities", hE)
                        end
                    })
                    local RollingGroup = Ah.Rolls:AddLeftGroupbox("Rolling", "dices")
                    Aw_9(RollingGroup, "Roll", "Auto Roll")
                    Aw_9(RollingGroup, "BuyFisher", "Auto Buy Fisher")
                    RollingGroup:AddToggle("WaitForRoll", {
                        Text = "Wait for Affordable Selected Fishers",
                        Default = false,
                        Callback = function(hH)
                            pT.Configure("WaitForRoll", hH)
                        end
                    })
                    Ax(RollingGroup, "MaxPrice", "Maximum Fisher Price (0 = Unlimited)", 0, 0)
                    Ax(RollingGroup, "CashReserve", "Cash to Keep", 0, 0)
                    local BuyFiltersGroup = Ah.Rolls:AddRightGroupbox("Buy Filters", "list-filter")
                    BuyFiltersGroup:AddDropdown("BuyRarities", {
                        Text = "Rarities",
                        Values = Ay.Rarities,
                        Multi = true,
                        Default = Ay.Rarities,
                        Callback = function(hK)
                            pT.Configure("BuyRarities", hK)
                        end
                    })
                    BuyFiltersGroup:AddDropdown("BuyFishers", {
                        Text = "Fishers (Empty = All)",
                        Values = Ay.Fishers,
                        Multi = true,
                        Default = {},
                        Callback = function(hM)
                            pT.Configure("BuyFishers", hM)
                        end
                    })
                    local function Aw_11()
                        local hS
                        local hQ
                        local hT
                        local hR
                        local hP
                        hS = {}
                        hR = {}
                        hP = {}
                        hT = {}
                        hQ = {}
                        local function hU(hV, hW)
                            table.insert(hP, hV:Connect(hW))
                        end
                        local function hY()
                            for k, v in hQ do
                                if k.Parent then
                                    k.CanCollide = v
                                end
                            end
                            table.clear(hQ)
                        end
                        local function h1()
                            for k, v in hR do
                                if k.Parent then
                                    k.WalkSpeed = v
                                end
                            end
                            table.clear(hR)
                        end
                        local function h5()
                            for k, v in hS do
                                if k.Parent then
                                    k.PlatformStand = v
                                end
                            end
                            table.clear(hS)
                        end
                        local function h9()
                            for k, v in hT do
                                if k.Parent then
                                    k.HoldDuration = v[1]
                                    k.MaxActivationDistance = v[2]
                                    k.RequiresLineOfSight = v[3]
                                end
                            end
                            table.clear(hT)
                        end
                        local function ie(ig)
                            if not ig:IsA("ProximityPrompt") then
                                return
                            end
                            if not hT[ig] then
                                hT[ig] = { ig.HoldDuration, ig.MaxActivationDistance, ig.RequiresLineOfSight }
                            end
                            ig.HoldDuration = 0
                            ig.MaxActivationDistance = 50
                            ig.RequiresLineOfSight = false
                        end
                        local MovementGroup = Ah.Player:AddLeftGroupbox("Movement", "footprints")
                        MovementGroup:AddToggle("WalkSpeedEnabled", {
                            Text = "WalkSpeed",
                            Default = false,
                            Callback = function(ik)
                                if not ik then
                                    h1()
                                end
                            end
                        })
                        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                        MovementGroup:AddToggle("NoClip", {
                            Text = "NoClip",
                            Default = false,
                            Callback = function(im)
                                if not im then
                                    hY()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InstantProximityPrompt", {
                            Text = "Instant ProximityPrompt",
                            Default = false,
                            Callback = function(ip)
                                if ip then
                                    for k, v in p5:QueryDescendants("ProximityPrompt") do
                                        ie(v)
                                    end
                                else
                                    h9()
                                end
                            end
                        })
                        local FlyGroup = Ah.Player:AddRightGroupbox("Fly", "feather")
                        FlyGroup:AddToggle("Fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(iy)
                                if not iy then
                                    h5()
                                end
                            end
                        })
                        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                        hU(p5.DescendantAdded, function(iA)
                            if Toggles.InstantProximityPrompt.Value then
                                ie(iA)
                            end
                        end)
                        hU(RunService.Stepped, function()
                            local Character = p1.Character
                            if Toggles.NoClip.Value and Character then
                                for k, v in Character:QueryDescendants("BasePart") do
                                    if hQ[v] == nil then
                                        hQ[v] = v.CanCollide
                                    end
                                    v.CanCollide = false
                                end
                            end
                        end)
                        hU(UserInputService.JumpRequest, function()
                            local Character = p1.Character
                            local w0 = Character and Character:FindFirstChildOfClass("Humanoid")
                            if Toggles.InfJump.Value and w0 then
                                w0:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end)
                        hU(RunService.RenderStepped, function(iT)
                            local Character = p1.Character
                            local w6 = Character and Character:FindFirstChildOfClass("Humanoid")
                            local w7 = Character
                            if w7 then
                                w7 = Character:FindFirstChild("HumanoidRootPart")
                            end
                            local w5_2 = w7
                            local CurrentCamera = p5.CurrentCamera
                            if Toggles.WalkSpeedEnabled.Value and w6 then
                                if hR[w6] == nil then
                                    hR[w6] = w6.WalkSpeed
                                end
                                w6.WalkSpeed = Options.WalkSpeed.Value
                            end
                            if Toggles.Fly.Value and w5_2 and w6 and CurrentCamera then
                                if hS[w6] == nil then
                                    hS[w6] = w6.PlatformStand
                                end
                                w6.PlatformStand = true
                                local w7_8 = Vector3.zero
                                if not UserInputService:GetFocusedTextBox() then
                                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                        w7_8 += CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                        w7_8 -= CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                        w7_8 -= CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                        w7_8 += CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                        w7_8 += Vector3.new(0, 1, 0)
                                    end
                                    local xj = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                    if xj == 1 then
                                        w7_8 -= Vector3.new(0, 1, 0)
                                    end
                                end
                                w5_2.AssemblyLinearVelocity = Vector3.zero
                                if w7_8.Magnitude > 0 then
                                    w5_2.CFrame = w5_2.CFrame + w7_8.Unit * Options.FlySpeed.Value * iT
                                end
                            end
                        end)
                        Library:OnUnload(function()
                            for k, v in hP do
                                v:Disconnect()
                            end
                            hY()
                            h1()
                            h5()
                            h9()
                        end)
                    end
                    Aw_11()
                    local function Aw_12()
                        local jO
                        local jd
                        jd = {}
                        local jc = {}
                        local Lighting = game:GetService("Lighting")
                        local GuiService = game:GetService("GuiService")
                        local VirtualUser = game:GetService("VirtualUser")
                        local CoreGui = game:GetService("CoreGui")
                        local je
                        local jg = 0
                        local jf = false
                        local jh = os.clock()
                        local MenuGroup = Ah.Settings:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        local Label = MenuGroup:AddLabel("AFK triggers: 0")
                        local function jl()
                            local CurrentCamera = p5.CurrentCamera
                            if not CurrentCamera then
                                return
                            end
                            VirtualUser:CaptureController()
                            VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
                            jg += 1
                            jh = os.clock()
                            Label:SetText("AFK triggers: " .. jg)
                        end
                        local function onAntiGameplayPause(ju)
                            pcall(function()
                                GuiService:SetGameplayPausedNotificationEnabled(not ju)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not ju
                                end
                            end)
                            if ju then
                                pcall(function()
                                    if sethiddenproperty then
                                        sethiddenproperty(p1, "GameplayPaused", false)
                                    else
                                        p1.GameplayPaused = false
                                    end
                                end)
                            end
                        end
                        local function jF()
                            for k, v in jd do
                                local xE = k
                                local xG = v
                                if xE.Parent then
                                    pcall(function()
                                        xE.Enabled = xG
                                    end)
                                end
                            end
                            table.clear(jd)
                            if je then
                                pcall(function()
                                    settings().Rendering.QualityLevel = je.Quality
                                end)
                                Lighting.GlobalShadows = je.Shadows
                                Lighting.FogEnd = je.Fog
                                je = nil
                            end
                        end
                        jO = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
                        local function jP(jQ)
                            if jO[jQ.ClassName] then
                                if jd[jQ] == nil then
                                    jd[jQ] = jQ.Enabled
                                end
                                jQ.Enabled = false
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(jT)
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(not jT)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(jY)
                                if not jY then
                                    jF()
                                    return
                                end
                                je = {
                                    Quality = settings().Rendering.QualityLevel,
                                    Shadows = Lighting.GlobalShadows,
                                    Fog = Lighting.FogEnd
                                }
                                pcall(function()
                                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                                end)
                                Lighting.GlobalShadows = false
                                Lighting.FogEnd = 9000000000
                                for k, v in p5:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                    jP(v)
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        local ScriptGroup = Ah.Settings:AddLeftGroupbox("Script", "terminal")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        table.insert(jc, p1.Idled:Connect(function()
                            if Toggles.AntiAfk.Value then
                                pcall(jl)
                            end
                        end))
                        table.insert(jc, p5.DescendantAdded:Connect(function(kc)
                            if Toggles.FpsBoost.Value then
                                jP(kc)
                            end
                        end))
                        local function kf(kg)
                            local xS = jf or Library.Unloaded
                            local xW = if xS then 1 else 0
                            local xU = 174 * xW + 2895 * (1 - xW)
                            local xV = 1180 * xW + 1904 * (1 - xW)
                            if not ((xU * 3566 + xV * 2693 + xU * xV) % 16777213 == 4003544) then
                                xS = not Toggles.AutoReconnect.Value
                            end
                            if xS then
                                return
                            end
                            jf = true
                            local xS_2 = pcall(function()
                                if kg then
                                    TeleportService:Teleport(game.PlaceId, p1)
                                else
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, p1)
                                end
                            end)
                            if not xS_2 then
                                jf = false
                                if not kg then
                                    kf(true)
                                end
                            end
                        end
                        table.insert(jc, TeleportService.TeleportInitFailed:Connect(function(kt)
                            if kt == p1 and jf then
                                jf = false
                                task.delay(3, function()
                                    kf(true)
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                            local x3 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not x3 then
                                return
                            end
                            table.insert(jc, x3.ChildAdded:Connect(function(kF)
                                if kF.Name == "ErrorPrompt" then
                                    kf(false)
                                end
                            end))
                        end)
                        task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    onAntiGameplayPause(true)
                                end
                                local x6 = Toggles.AntiAfk.Value and os.clock() - jh >= 60
                                if x6 then
                                    pcall(jl)
                                end
                                task.wait(1)
                            end
                        end)
                        Library:OnUnload(function()
                            for k, v in jc do
                                v:Disconnect()
                            end
                            onAntiGameplayPause(false)
                            jF()
                            pcall(function()
                                RunService:Set3dRenderingEnabled(true)
                            end)
                        end)
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("OuroborosHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(Ah.Settings)
                        ThemeManager:LoadDefault()
                    end
                    Aw_12()
                    local function Aw_13()
                        local y8
                        local y6
                        local y2
                        local y9
                        local y7
                        local y3
                        y2 = nil
                        y3 = nil
                        y6 = nil
                        y7 = nil
                        y8 = nil
                        y9 = nil
                        local Label3, y4, Label, za, zb, Label2
                        y9 = function(kY, kZ)
                            return string.format('<font color="%s">%s</font>', kZ, kY)
                        end
                        zb = function(k0, k1, k2)
                            return string.format("<b>%s</b> %s %s", k0, y9("-", "#5a6070"), y9(k1, k2))
                        end
                        y2 = "#e05a5a"
                        local zd = "#8b93a3"
                        y6 = "#e8a34d"
                        y8 = "#7fd47f"
                        local function zf()
                            local yf = hookfunction ~= nil
                            local yg = hookmetamethod ~= nil
                            local yh = getrawmetatable ~= nil
                            local yi = setrawmetatable ~= nil
                            local yj = getgc ~= nil
                            local yk = getgenv ~= nil
                            local yl = getreg ~= nil
                            local ym = getconnections ~= nil
                            local yn = firesignal ~= nil
                            local yo = getcallbackvalue ~= nil
                            local yp = setclipboard ~= nil
                            local yq = getcustomasset ~= nil
                            local yr = getnamecallmethod ~= nil
                            local ys = isexecutorclosure ~= nil
                            local yt = fireproximityprompt ~= nil
                            local yu = firetouchinterest ~= nil
                            local yv = WebSocket ~= nil
                            local yw = readfile ~= nil
                            local yx = writefile ~= nil
                            local yz = (request or http_request) ~= nil
                            local yB = (debug and debug.getupvalues) ~= nil
                            local yD = (debug and debug.setupvalue) ~= nil
                            local yE = 0
                            local yF = { yf, yg, yh, yi, yj, yk, yl, ym, yn, yo, yp, yq, yr, ys, yt, yu, yv, yw, yx, yz, yB, yD }
                            for i, v in ipairs(yF) do
                                if v then
                                    yE += 1
                                end
                            end
                            local yf_2 = yE / #yF
                            if yf_2 >= 0.9 then
                                return y9("Full Support", y8)
                            elseif yf_2 >= 0.6 then
                                return y9("Half Support", y6)
                            else
                                return y9("Low Support", y2)
                            end
                        end
                        y3 = "Unknown"
                        pcall(function()
                            local yO_2
                            local yN_3
                            if identifyexecutor then
                                yO_2, yN_3 = identifyexecutor()
                                local yP = yO_2 ~= ""
                                local yQ = type(yO_2) == "string" and yP
                                if yQ then
                                    local yP_2 = type(yN_3) == "string" and yN_3 ~= "" and yO_2 .. " " .. yN_3
                                    y3 = yP_2 or yO_2
                                end
                            end
                        end)
                        local zg = zf()
                        y7 = os.clock()
                        za = function()
                            local yV = math.floor(os.clock() - y7)
                            if yV < 60 then
                                return yV .. "s"
                            elseif yV < 3600 then
                                return string.format("%dm %ds", yV // 60, yV % 60)
                            else
                                return string.format("%dh %dm", yV // 3600, yV % 3600 // 60)
                            end
                        end
                        local UserGroup = Ah.Info:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = p1, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(zb("User", p1.DisplayName .. " @" .. p1.Name, y8), true)
                        UserGroup:AddLabel(zb("UserId", tostring(p1.UserId), "#6ec1ff"), true)
                        UserGroup:AddLabel(zb("Executor", y3 .. "  " .. zg, y8), true)
                        UserGroup:AddDivider()
                        Label3 = UserGroup:AddLabel(zb("Session", za(), y6), true)
                        UserGroup:AddDivider()
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                As(p1.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                As("https://www.roblox.com/users/" .. tostring(p1.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local SessionGroup = Ah.Info:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddDivider("Server")
                        SessionGroup:AddLabel(zb("Game", Ag, "#6ec1ff"), true)
                        Label2 = SessionGroup:AddLabel(zb("Players", "0/0", y8), true)
                        y4 = tostring(game.JobId)
                        local ze = #y4 > 18 and string.sub(y4, 1, 18) .. "..."
                        local zg_2 = ze
                        local zk = if zg_2 then 1 else 0
                        local zi = 217 * zk + 1802 * (1 - zk)
                        local zj = 1887 * zk + 1950 * (1 - zk)
                        if not ((zi * 1566 + zj * 575 + zi * zj) % 16777213 == 1834326) then
                            zg_2 = y4
                        end
                        local ze_2 = zg_2
                        SessionGroup:AddLabel(zb("Job", ze_2, zd), true)
                        Label = SessionGroup:AddLabel(zb("Ping", "0 ms", y6), true)
                        SessionGroup:AddDivider()
                        SessionGroup:AddButton({
                            Text = "Rejoin Server",
                            Func = function()
                                TeleportService:Teleport(game.PlaceId, p1)
                            end
                        })
                        SessionGroup:AddButton({
                            Text = "Copy Job ID",
                            Func = function()
                                As(y4, "Copied Job ID")
                            end
                        })
                        task.spawn(function()
                            local yY_2
                            local yX_3
                            while true do
                                task.wait(1)
                                if Library.Unloaded then
                                    break
                                end
                                Label3:SetText(zb("Session", za(), y6))
                                Label2:SetText(zb("Players", #pt:GetPlayers() .. "/" .. tostring(pt.MaxPlayers), y8))
                                yX_3, yY_2 = pcall(function()
                                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                end)
                                local yX_4 = yX_3 and yY_2 .. " ms" or "n/a"
                                Label:SetText(zb("Ping", yX_4, y6))
                            end
                        end)
                        local SocialsGroup = Ah.Info:AddRightGroupbox("Socials", "link")
                        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                        SocialsGroup:AddButton({
                            Text = "Rscripts",
                            Func = function()
                                if setclipboard then
                                    setclipboard(Ao)
                                elseif toclipboard then
                                    toclipboard(Ao)
                                end
                                Library:Notify("Copied Rscripts profile to clipboard")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Website",
                            Func = function()
                                As(Ai, "Copied website link")
                            end
                        })
                    end
                    Aw_13()
                    local function Aw_14()
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                        SaveManager:SetFolder("OuroborosHub/RollAFisher")
                        local mh = SaveManager:BuildConfigSection(Ah.Settings)
                        local function mi(mj, mk)
                            local zm_2 = (mj == "Toggle" and Toggles or Options)[mk]
                            local zl_5 = type(zm_2) == "table" and zm_2.Type == mj
                            return zl_5 and zm_2 or nil
                        end
                        local function ms(mt, mu)
                            local Type = mu.Type
                            if Type == "Toggle" then
                                return { idx = mt, type = "Toggle", value = mu.Value == true }
                            elseif Type == "Slider" then
                                return { idx = mt, type = "Slider", value = tostring(mu.Value) }
                            elseif Type == "Dropdown" then
                                return { idx = mt, type = "Dropdown", multi = mu.Multi == true, value = mu.Value }
                            elseif Type == "Input" then
                                local zq = mu.Value
                                local zu = if zq then 1 else 0
                                local zs = 1885 * zu + 830 * (1 - zu)
                                local zt = 2023 * zu + 1224 * (1 - zu)
                                if not ((zs * 74 + zt * 3873 + zs * zt) % 16777213 == 11787924) then
                                    zq = ""
                                end
                                return { idx = mt, type = "Input", text = tostring(zq) }
                            elseif Type == "ColorPicker" then
                                return { idx = mt, type = "ColorPicker", value = mu.Value:ToHex(), transparency = mu.Transparency }
                            elseif Type == "KeyPicker" then
                                return {
                                    idx = mt,
                                    type = "KeyPicker",
                                    mode = mu.Mode,
                                    key = mu.Value,
                                    modifiers = mu.Modifiers,
                                    toggled = mu.Toggled
                                }
                            else
                                return nil
                            end
                        end
                        local function mw()
                            local zz = {}
                            for i, v in ipairs({ Toggles, Options }) do
                                for k, v in pairs(v) do
                                    local zA = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                    if zA then
                                        local zA_2 = ms(k, v)
                                        if zA_2 then
                                            zz[#zz + 1] = zA_2
                                        end
                                    end
                                end
                            end
                            table.sort(zz, function(mE, mF)
                                if mE.type ~= mF.type then
                                    return mE.type < mF.type
                                end
                                return mE.idx < mF.idx
                            end)
                            return { objects = zz }
                        end
                        local function mG(mH)
                            local zT
                            zT = nil
                            local zU = type(mH) ~= "table"
                            local zY = if zU then 1 else 0
                            local zW = 3979 * zY + 2105 * (1 - zY)
                            local zX = 2185 * zY + 170 * (1 - zY)
                            if not ((zW * 3104 + zX * 3866 + zW * zX) % 16777213 == 12714928) then
                                zU = type(mH.idx) ~= "string"
                            end
                            if not zU then
                                zU = type(mH.type) ~= "string"
                            end
                            if not zU then
                                zU = SaveManager.Ignore[mH.idx]
                            end
                            if zU then
                                return false
                            end
                            zT = mi(mH.type, mH.idx)
                            if not zT then
                                return false
                            end
                            local zU_2 = pcall(function()
                                if mH.type == "Input" then
                                    if type(mH.text) ~= "string" then
                                        return
                                    end
                                    zT:SetValue(mH.text)
                                elseif mH.type == "ColorPicker" then
                                    zT:SetValueRGB(Color3.fromHex(mH.value), mH.transparency)
                                elseif mH.type == "KeyPicker" then
                                    zT:SetValue({ mH.key, mH.mode, mH.modifiers })
                                    if mH.mode == "Toggle" and mH.toggled ~= nil then
                                        zT.Toggled = mH.toggled
                                        zT:Update()
                                    end
                                else
                                    zT:SetValue(mH.value)
                                end
                            end)
                            return zU_2
                        end
                        mh:AddDivider()
                        mh:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                        mh:AddButton("Export Config to Clipboard", function()
                            local z__2
                            local zZ_4
                            zZ_4, z__2 = pcall(HttpService.JSONEncode, HttpService, mw())
                            if not zZ_4 then
                                Library:Notify("Failed to encode the config")
                                return
                            end
                            local zZ_5 = setclipboard or toclipboard
                            local zZ_6 = type(zZ_5) ~= "function" or not pcall(zZ_5, z__2)
                            if zZ_6 then
                                Library:Notify("Your executor does not support copying to the clipboard")
                                return
                            end
                            Library:Notify("Config copied to clipboard", 6)
                        end)
                        mh:AddButton("Import Config from Clipboard Text", function()
                            local z4_3
                            local z2 = Options.SaveManager_ImportSource.Value
                            local z2_3
                            local z8 = if z2 then 1 else 0
                            local z6 = 1611 * z8 + 499 * (1 - z8)
                            local z7 = 118 * z8 + 918 * (1 - z8)
                            if not ((z6 * 547 + z7 * 583 + z6 * z7) % 16777213 == 1140109) then
                                z2 = ""
                            end
                            local z3 = tostring(z2):match("^%s*(.-)%s*$")
                            if z3 == "" then
                                Library:Notify("Paste an exported config into the box first")
                                return
                            end
                            z2_3, z4_3 = pcall(HttpService.JSONDecode, HttpService, z3)
                            local z3_3 = not z2_3
                            local z8_2 = if z3_3 then 1 else 0
                            local z6_2 = 972 * z8_2 + 1277 * (1 - z8_2)
                            local z7_2 = 3027 * z8_2 + 2624 * (1 - z8_2)
                            if not ((z6_2 * 346 + z7_2 * 3715 + z6_2 * z7_2) % 16777213 == 14523861) then
                                z3_3 = type(z4_3) ~= "table"
                            end
                            if not z3_3 then
                                z3_3 = type(z4_3.objects) ~= "table"
                            end
                            if z3_3 then
                                Library:Notify("That is not a valid exported config")
                                return
                            end
                            local z2_4 = 0
                            for i, v in ipairs(z4_3.objects) do
                                if mG(v) then
                                    z2_4 += 1
                                end
                            end
                            if z2_4 == 0 then
                                Library:Notify("No settings in that config matched this script")
                                return
                            end
                            Options.SaveManager_ImportSource:SetValue("")
                            local z4_4 = z2_4 == 1 and "" or "s"
                            Library:Notify(("Imported %d setting%s"):format(z2_4, z4_4), 6)
                        end)
                        SaveManager:LoadAutoloadConfig()
                    end
                    Aw_14()
                    if Toggles.HideUiOnStart.Value then
                        Library:Toggle(false)
                    end
                    pT.Start()
                end
            else
                qf_3.CollectCash = fn378
                qf_3.CollectFish = fn544
                qf_3.PlaceFish = fn781
                qf_3.ReplaceFish = fn394
                qf_3.PlaceFisher = fn879
                qf_3.ReplaceFisher = function()
                    local uo, up
                    local ux_2
                    local uw_6
                    local uq = qc()
                    local ur = p_()
                    local us = ur and ur:FindFirstChild("Dock")
                    local ut_2
                    local us_1 = pE(uq, "Fishers")
                    if not (us and us_1) then
                        return "Waiting for base"
                    end
                    local uu_1 = pR(uq)
                    if not uu_1 then
                        return "Waiting for inventory"
                    end
                    local uv
                    for i, child in us_1:GetChildren() do
                        local Id = child:FindFirstChild("Id")
                        local uw_1 = Id and Fishermen:Find(Id.Value)
                        if uw_1 then
                            local uw_2 = pX(uw_1)
                            local uy_1 = uw_2 < uu_1.Score
                            if uy_1 then
                                uy_1 = not uv or uw_2 < uv.Score
                            end
                            if uy_1 then
                                local X = child:FindFirstChild("X")
                                local Z = child:FindFirstChild("Z")
                                uv = {
                                    Key = child.Name,
                                    Id = Id.Value,
                                    Definition = uw_1,
                                    Score = uw_2,
                                    X = X and X.Value,
                                    Z = Z and Z.Value
                                }
                            end
                        end
                    end
                    if not uv then
                        return "Dock is best"
                    end
                    local uG = if not p9(uq, pY.HammerKey) then 1 else 0
                    if uG == 1 then
                        return "Waiting for pick up"
                    end
                    local us_3 = us:FindFirstChild(uv.Key)
                    local ut_1 = us_3
                    if ut_1 then
                        local uw_3 = us_3.PrimaryPart or us_3:FindFirstChild("HumanoidRootPart")
                        ut_1 = uw_3
                    end
                    local us_4 = ut_1
                    ut_2, up = pF()
                    local ut_3 = up and up:GetPivot()
                    uo = ut_3
                    local function ut_4()
                        if uo and up and up.Parent and up == p1.Character then
                            up:PivotTo(uo)
                        end
                    end
                    if us_4 and up then
                        up:PivotTo(us_4.CFrame * CFrame.new(0, 3, 3))
                        task.wait(0.25)
                    end
                    if p6.Unloaded or not p6.Enabled.ReplaceFisher then
                        ut_4()
                        return "Off"
                    end
                    pO.RemoveFisher:FireServer(uv.Key)
                    local us_6 = os.clock() + 1.5
                    while true do
                        local uw_5 = os.clock() < us_6 and not p6.Unloaded
                        if uw_5 then
                            if not pE(qc(), "Fishers"):FindFirstChild(uv.Key) then
                                break
                            end
                            task.wait(0.05)
                            continue
                        end
                        break
                    end
                    if pE(qc(), "Fishers"):FindFirstChild(uv.Key) then
                        ut_4()
                        return "Waiting for pick up"
                    end
                    local uq_1 = qc()
                    local uu_2 = pR(uq_1)
                    if not uu_2 then
                        ut_4()
                        return "Picked " .. (uv.Definition.Name or uv.Id)
                    end
                    local uG_1 = if not p9(uq_1, uu_2.Key) then 1 else 0
                    if uG_1 == 1 then
                        ut_4()
                        return "Waiting for hold"
                    end
                    local uq_2 = qc()
                    local FisherPart = ur:FindFirstChild("FisherPart")
                    local uy_4 = FisherPart and type(uv.X) == "number" and type(uv.Z) == "number" and pY:Fits(FisherPart, pE(uq_2, "Fishers"), uu_2.Id, uv.X, uv.Z)
                    if uy_4 then
                        ux_2, uw_6 = uv.X, uv.Z
                    else
                        ux_2, uw_6 = pP(ur, uq_2, uu_2.Id)
                    end
                    if not ux_2 then
                        ut_4()
                        return "No free dock space"
                    end
                    local ur_1 = p7:Count(pE(uq_2, "Inventory", "Fishermen"), uu_2.Id)
                    pO.PlaceFisher:FireServer(ux_2, uw_6)
                    task.wait(0.4)
                    ut_4()
                    local uq_3 = p7:Count(pE(qc(), "Inventory", "Fishermen"), uu_2.Id) < ur_1
                    if uq_3 then
                        uq_3 = "Replaced with " .. (uu_2.Definition.Name or uu_2.Id)
                    end
                    return uq_3 or "Waiting for placement"
                end
                qf_3.BuyFisher = fn400
                qf_3.Roll = fn252
                qf_3.Rebirth = fn592
                qf_3.Sell = fn214
                pZ.SetEnabled = fn782
                pZ.Configure = fn120
                pZ.GetOptions = fn804
                pZ.GetReport = fn342
                pZ.Step = fn57
                pZ.Start = fn61
                pZ.Unload = fn382
                getgenv().OuroborosRollAFisher = pZ
                pT = function()
                    local Library
                    local Au
                    local As
                    local Unload
                    Library = nil
                    Unload = nil
                    As = nil
                    Au = nil
                    local UserInputService, Ag, Ah, Ai, ThemeManager, Options, RunService, onDiscord, HttpService, Ao, Toggles, TeleportService, SaveManager
                    HttpService = game:GetService("HttpService")
                    Ag = "Roll a Fisher"
                    Ao = "https://rscripts.net/@Ouroboros"
                    Au = "https://discord.gg/ehKVq7pf7v"
                    RunService = game:GetService("RunService")
                    UserInputService = game:GetService("UserInputService")
                    Ai = "https://ouroboros-hub-rbx.web.app/"
                    TeleportService = game:GetService("TeleportService")
                    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
                    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
                    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
                    Toggles = Library.Toggles
                    Options = Library.Options
                    Unload = pT.Unload
                    pT.Unload = function()
                        if not Library.Unloaded then
                            Library:Unload()
                        else
                            Unload()
                        end
                    end
                    Library:OnUnload(Unload)
                    As = function(gZ, g_)
                        if setclipboard then
                            setclipboard(gZ)
                        elseif toclipboard then
                            toclipboard(gZ)
                        end
                        Library:Notify(g_)
                    end
                    onDiscord = function()
                        As(Au, "Copied Discord invite to clipboard")
                    end
                    local Window = Library:CreateWindow({
                        Title = "Ouroboros",
                        Font = Enum.Font.BuilderSans,
                        Footer = { { Text = Au, Copyable = true }, "|", Ag },
                        Icon = 78539693571783,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 0,
                        SidebarCompacted = true,
                        TabSwipeFrom = "bottom",
                        Animations = { TabSwitch = true }
                    })
                    Window:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
                    Ah = {
                        Info = Window:AddTab("Info", "info"),
                        Main = Window:AddTab("Automation", "gamepad-2"),
                        Rolls = Window:AddTab("Rolls", "dices"),
                        Player = Window:AddTab("Player", "person-standing"),
                        Settings = Window:AddTab("Settings", "settings")
                    }
                    for k, v in Ah do
                        if k ~= "Info" then
                            local DiscordGroup = v:AddLeftGroupbox("Discord")
                            DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
                            DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
                        end
                    end
                    local function Aw_2(ha, hb, hc)
                        ha:AddToggle("Auto" .. hb, {
                            Text = hc,
                            Default = false,
                            Callback = function(hd)
                                pT.SetEnabled(hb, hd)
                            end
                        })
                    end
                    local function Ax(hi, hj, hk, hl, hm)
                        hi:AddInput(hj, {
                            Text = hk,
                            Default = tostring(hl),
                            Numeric = true,
                            Finished = true,
                            AllowEmpty = false,
                            EmptyReset = tostring(hl),
                            VerifyValue = function(hn)
                                local v4 = tonumber(hn)
                                return v4 and v4 >= hm and v4 < math.huge
                            end,
                            Callback = function(hr)
                                local Configure = pT.Configure
                                local v8 = (tonumber(hr)) or hl
                                Configure(hj, v8)
                            end
                        })
                    end
                    local Ay = pT.GetOptions()
                    local FarmGroup = Ah.Main:AddLeftGroupbox("Farm", "fish")
                    Aw_2(FarmGroup, "CollectFish", "Auto Collect Fish")
                    Aw_2(FarmGroup, "CollectCash", "Auto Collect Cash")
                    Aw_2(FarmGroup, "PlaceFish", "Auto Place Fish")
                    Aw_2(FarmGroup, "ReplaceFish", "Auto Replace Fish")
                    Aw_2(FarmGroup, "PlaceFisher", "Auto Place Fisher")
                    Aw_2(FarmGroup, "ReplaceFisher", "Auto Replace Fisher")
                    Aw_2(FarmGroup, "Rebirth", "Auto Rebirth")
                    local SellingGroup = Ah.Main:AddLeftGroupbox("Selling", "banknote")
                    Aw_2(SellingGroup, "Sell", "Auto Sell")
                    SellingGroup:AddDropdown("SellFolders", {
                        Text = "Folders",
                        Values = Ay.SellFolders,
                        Multi = true,
                        Default = { "Fish" },
                        Callback = function(hz)
                            pT.Configure("SellFolders", hz)
                        end
                    })
                    SellingGroup:AddDropdown("SellRarities", {
                        Text = "Rarities",
                        Values = Ay.Rarities,
                        Multi = true,
                        Default = { "Common", "Rare" },
                        Callback = function(hB)
                            pT.Configure("SellRarities", hB)
                        end
                    })
                    local PlaceFiltersGroup = Ah.Main:AddRightGroupbox("Place Filters", "list-filter")
                    PlaceFiltersGroup:AddDropdown("PlaceRarities", {
                        Text = "Fish Rarities",
                        Values = Ay.Rarities,
                        Multi = true,
                        Default = Ay.Rarities,
                        Callback = function(hE)
                            pT.Configure("PlaceRarities", hE)
                        end
                    })
                    local RollingGroup = Ah.Rolls:AddLeftGroupbox("Rolling", "dices")
                    Aw_2(RollingGroup, "Roll", "Auto Roll")
                    Aw_2(RollingGroup, "BuyFisher", "Auto Buy Fisher")
                    RollingGroup:AddToggle("WaitForRoll", {
                        Text = "Wait for Affordable Selected Fishers",
                        Default = false,
                        Callback = function(hH)
                            pT.Configure("WaitForRoll", hH)
                        end
                    })
                    Ax(RollingGroup, "MaxPrice", "Maximum Fisher Price (0 = Unlimited)", 0, 0)
                    Ax(RollingGroup, "CashReserve", "Cash to Keep", 0, 0)
                    local BuyFiltersGroup = Ah.Rolls:AddRightGroupbox("Buy Filters", "list-filter")
                    BuyFiltersGroup:AddDropdown("BuyRarities", {
                        Text = "Rarities",
                        Values = Ay.Rarities,
                        Multi = true,
                        Default = Ay.Rarities,
                        Callback = function(hK)
                            pT.Configure("BuyRarities", hK)
                        end
                    })
                    BuyFiltersGroup:AddDropdown("BuyFishers", {
                        Text = "Fishers (Empty = All)",
                        Values = Ay.Fishers,
                        Multi = true,
                        Default = {},
                        Callback = function(hM)
                            pT.Configure("BuyFishers", hM)
                        end
                    })
                    local function Aw_4()
                        local hS
                        local hQ
                        local hT
                        local hR
                        local hP
                        hS = {}
                        hR = {}
                        hP = {}
                        hT = {}
                        hQ = {}
                        local function hU(hV, hW)
                            table.insert(hP, hV:Connect(hW))
                        end
                        local function hY()
                            for k, v in hQ do
                                if k.Parent then
                                    k.CanCollide = v
                                end
                            end
                            table.clear(hQ)
                        end
                        local function h1()
                            for k, v in hR do
                                if k.Parent then
                                    k.WalkSpeed = v
                                end
                            end
                            table.clear(hR)
                        end
                        local function h5()
                            for k, v in hS do
                                if k.Parent then
                                    k.PlatformStand = v
                                end
                            end
                            table.clear(hS)
                        end
                        local function h9()
                            for k, v in hT do
                                if k.Parent then
                                    k.HoldDuration = v[1]
                                    k.MaxActivationDistance = v[2]
                                    k.RequiresLineOfSight = v[3]
                                end
                            end
                            table.clear(hT)
                        end
                        local function ie(ig)
                            if not ig:IsA("ProximityPrompt") then
                                return
                            end
                            if not hT[ig] then
                                hT[ig] = { ig.HoldDuration, ig.MaxActivationDistance, ig.RequiresLineOfSight }
                            end
                            ig.HoldDuration = 0
                            ig.MaxActivationDistance = 50
                            ig.RequiresLineOfSight = false
                        end
                        local MovementGroup = Ah.Player:AddLeftGroupbox("Movement", "footprints")
                        MovementGroup:AddToggle("WalkSpeedEnabled", {
                            Text = "WalkSpeed",
                            Default = false,
                            Callback = function(ik)
                                if not ik then
                                    h1()
                                end
                            end
                        })
                        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
                        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
                        MovementGroup:AddToggle("NoClip", {
                            Text = "NoClip",
                            Default = false,
                            Callback = function(im)
                                if not im then
                                    hY()
                                end
                            end
                        })
                        MovementGroup:AddToggle("InstantProximityPrompt", {
                            Text = "Instant ProximityPrompt",
                            Default = false,
                            Callback = function(ip)
                                if ip then
                                    for k, v in p5:QueryDescendants("ProximityPrompt") do
                                        ie(v)
                                    end
                                else
                                    h9()
                                end
                            end
                        })
                        local FlyGroup = Ah.Player:AddRightGroupbox("Fly", "feather")
                        FlyGroup:AddToggle("Fly", {
                            Text = "Fly",
                            Default = false,
                            Callback = function(iy)
                                if not iy then
                                    h5()
                                end
                            end
                        })
                        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
                        hU(p5.DescendantAdded, function(iA)
                            if Toggles.InstantProximityPrompt.Value then
                                ie(iA)
                            end
                        end)
                        hU(RunService.Stepped, function()
                            local Character = p1.Character
                            if Toggles.NoClip.Value and Character then
                                for k, v in Character:QueryDescendants("BasePart") do
                                    if hQ[v] == nil then
                                        hQ[v] = v.CanCollide
                                    end
                                    v.CanCollide = false
                                end
                            end
                        end)
                        hU(UserInputService.JumpRequest, function()
                            local Character = p1.Character
                            local w0 = Character and Character:FindFirstChildOfClass("Humanoid")
                            if Toggles.InfJump.Value and w0 then
                                w0:ChangeState(Enum.HumanoidStateType.Jumping)
                            end
                        end)
                        hU(RunService.RenderStepped, function(iT)
                            local Character = p1.Character
                            local w6 = Character and Character:FindFirstChildOfClass("Humanoid")
                            local w7 = Character
                            if w7 then
                                w7 = Character:FindFirstChild("HumanoidRootPart")
                            end
                            local w5_1 = w7
                            local CurrentCamera = p5.CurrentCamera
                            if Toggles.WalkSpeedEnabled.Value and w6 then
                                if hR[w6] == nil then
                                    hR[w6] = w6.WalkSpeed
                                end
                                w6.WalkSpeed = Options.WalkSpeed.Value
                            end
                            if Toggles.Fly.Value and w5_1 and w6 and CurrentCamera then
                                if hS[w6] == nil then
                                    hS[w6] = w6.PlatformStand
                                end
                                w6.PlatformStand = true
                                local w7_4 = Vector3.zero
                                if not UserInputService:GetFocusedTextBox() then
                                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                        w7_4 += CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                        w7_4 -= CurrentCamera.CFrame.LookVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                        w7_4 -= CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                        w7_4 += CurrentCamera.CFrame.RightVector
                                    end
                                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                                        w7_4 += Vector3.new(0, 1, 0)
                                    end
                                    local xj = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                    if xj == 1 then
                                        w7_4 -= Vector3.new(0, 1, 0)
                                    end
                                end
                                w5_1.AssemblyLinearVelocity = Vector3.zero
                                if w7_4.Magnitude > 0 then
                                    w5_1.CFrame = w5_1.CFrame + w7_4.Unit * Options.FlySpeed.Value * iT
                                end
                            end
                        end)
                        Library:OnUnload(function()
                            for k, v in hP do
                                v:Disconnect()
                            end
                            hY()
                            h1()
                            h5()
                            h9()
                        end)
                    end
                    Aw_4()
                    local function Aw_5()
                        local jO
                        local jd
                        jd = {}
                        local jc = {}
                        local Lighting = game:GetService("Lighting")
                        local GuiService = game:GetService("GuiService")
                        local VirtualUser = game:GetService("VirtualUser")
                        local CoreGui = game:GetService("CoreGui")
                        local je
                        local jg = 0
                        local jf = false
                        local jh = os.clock()
                        local MenuGroup = Ah.Settings:AddLeftGroupbox("Menu", "logs")
                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                        local Label = MenuGroup:AddLabel("AFK triggers: 0")
                        local function jl()
                            local CurrentCamera = p5.CurrentCamera
                            if not CurrentCamera then
                                return
                            end
                            VirtualUser:CaptureController()
                            VirtualUser:ClickButton2(Vector2.zero, CurrentCamera.CFrame)
                            jg += 1
                            jh = os.clock()
                            Label:SetText("AFK triggers: " .. jg)
                        end
                        local function onAntiGameplayPause(ju)
                            pcall(function()
                                GuiService:SetGameplayPausedNotificationEnabled(not ju)
                            end)
                            pcall(function()
                                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                if RobloxNetworkPauseNotificati then
                                    RobloxNetworkPauseNotificati.Enabled = not ju
                                end
                            end)
                            if ju then
                                pcall(function()
                                    if sethiddenproperty then
                                        sethiddenproperty(p1, "GameplayPaused", false)
                                    else
                                        p1.GameplayPaused = false
                                    end
                                end)
                            end
                        end
                        local function jF()
                            for k, v in jd do
                                local xE = k
                                local xG = v
                                if xE.Parent then
                                    pcall(function()
                                        xE.Enabled = xG
                                    end)
                                end
                            end
                            table.clear(jd)
                            if je then
                                pcall(function()
                                    settings().Rendering.QualityLevel = je.Quality
                                end)
                                Lighting.GlobalShadows = je.Shadows
                                Lighting.FogEnd = je.Fog
                                je = nil
                            end
                        end
                        jO = { ParticleEmitter = true, Trail = true, Smoke = true, Fire = true, Sparkles = true, Beam = true }
                        local function jP(jQ)
                            if jO[jQ.ClassName] then
                                if jd[jQ] == nil then
                                    jd[jQ] = jQ.Enabled
                                end
                                jQ.Enabled = false
                            end
                        end
                        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true, Callback = onAntiGameplayPause })
                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                        MenuGroup:AddToggle("Disable3D", {
                            Text = "Disable 3D Rendering",
                            Default = false,
                            Callback = function(jT)
                                pcall(function()
                                    RunService:Set3dRenderingEnabled(not jT)
                                end)
                            end
                        })
                        MenuGroup:AddToggle("FpsBoost", {
                            Text = "FPS Boost",
                            Default = false,
                            Callback = function(jY)
                                if not jY then
                                    jF()
                                    return
                                end
                                je = {
                                    Quality = settings().Rendering.QualityLevel,
                                    Shadows = Lighting.GlobalShadows,
                                    Fog = Lighting.FogEnd
                                }
                                pcall(function()
                                    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                                end)
                                Lighting.GlobalShadows = false
                                Lighting.FogEnd = 9000000000
                                for k, v in p5:QueryDescendants("ParticleEmitter, Trail, Smoke, Fire, Sparkles, Beam") do
                                    jP(v)
                                end
                            end
                        })
                        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                        Library.ToggleKeybind = Options.MenuKeybind
                        local ScriptGroup = Ah.Settings:AddLeftGroupbox("Script", "terminal")
                        ScriptGroup:AddButton({
                            Text = "Unload Script",
                            Func = function()
                                Library:Unload()
                            end
                        })
                        table.insert(jc, p1.Idled:Connect(function()
                            if Toggles.AntiAfk.Value then
                                pcall(jl)
                            end
                        end))
                        table.insert(jc, p5.DescendantAdded:Connect(function(kc)
                            if Toggles.FpsBoost.Value then
                                jP(kc)
                            end
                        end))
                        local function kf(kg)
                            local xS = jf or Library.Unloaded
                            local xW = if xS then 1 else 0
                            local xU = 174 * xW + 2895 * (1 - xW)
                            local xV = 1180 * xW + 1904 * (1 - xW)
                            if not ((xU * 3566 + xV * 2693 + xU * xV) % 16777213 == 4003544) then
                                xS = not Toggles.AutoReconnect.Value
                            end
                            if xS then
                                return
                            end
                            jf = true
                            local xS_1 = pcall(function()
                                if kg then
                                    TeleportService:Teleport(game.PlaceId, p1)
                                else
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, p1)
                                end
                            end)
                            if not xS_1 then
                                jf = false
                                if not kg then
                                    kf(true)
                                end
                            end
                        end
                        table.insert(jc, TeleportService.TeleportInitFailed:Connect(function(kt)
                            if kt == p1 and jf then
                                jf = false
                                task.delay(3, function()
                                    kf(true)
                                end)
                            end
                        end))
                        task.spawn(function()
                            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                            local x3 = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                            if Library.Unloaded or not x3 then
                                return
                            end
                            table.insert(jc, x3.ChildAdded:Connect(function(kF)
                                if kF.Name == "ErrorPrompt" then
                                    kf(false)
                                end
                            end))
                        end)
                        task.spawn(function()
                            while not Library.Unloaded do
                                if Toggles.AntiGameplayPause.Value then
                                    onAntiGameplayPause(true)
                                end
                                local x6 = Toggles.AntiAfk.Value and os.clock() - jh >= 60
                                if x6 then
                                    pcall(jl)
                                end
                                task.wait(1)
                            end
                        end)
                        Library:OnUnload(function()
                            for k, v in jc do
                                v:Disconnect()
                            end
                            onAntiGameplayPause(false)
                            jF()
                            pcall(function()
                                RunService:Set3dRenderingEnabled(true)
                            end)
                        end)
                        ThemeManager:SetLibrary(Library)
                        ThemeManager:SetFolder("OuroborosHub")
                        ThemeManager:SaveDefault("Evil Hello Kitty")
                        ThemeManager:ApplyToTab(Ah.Settings)
                        ThemeManager:LoadDefault()
                    end
                    Aw_5()
                    local function Aw_6()
                        local y8
                        local y6
                        local y2
                        local y9
                        local y7
                        local y3
                        y2 = nil
                        y3 = nil
                        y6 = nil
                        y7 = nil
                        y8 = nil
                        y9 = nil
                        local Label3, y4, Label, za, zb, Label2
                        y9 = function(kY, kZ)
                            return string.format('<font color="%s">%s</font>', kZ, kY)
                        end
                        zb = function(k0, k1, k2)
                            return string.format("<b>%s</b> %s %s", k0, y9("-", "#5a6070"), y9(k1, k2))
                        end
                        y2 = "#e05a5a"
                        local zd = "#8b93a3"
                        y6 = "#e8a34d"
                        y8 = "#7fd47f"
                        local function zf()
                            local yf = hookfunction ~= nil
                            local yg = hookmetamethod ~= nil
                            local yh = getrawmetatable ~= nil
                            local yi = setrawmetatable ~= nil
                            local yj = getgc ~= nil
                            local yk = getgenv ~= nil
                            local yl = getreg ~= nil
                            local ym = getconnections ~= nil
                            local yn = firesignal ~= nil
                            local yo = getcallbackvalue ~= nil
                            local yp = setclipboard ~= nil
                            local yq = getcustomasset ~= nil
                            local yr = getnamecallmethod ~= nil
                            local ys = isexecutorclosure ~= nil
                            local yt = fireproximityprompt ~= nil
                            local yu = firetouchinterest ~= nil
                            local yv = WebSocket ~= nil
                            local yw = readfile ~= nil
                            local yx = writefile ~= nil
                            local yz = (request or http_request) ~= nil
                            local yB = (debug and debug.getupvalues) ~= nil
                            local yD = (debug and debug.setupvalue) ~= nil
                            local yE = 0
                            local yF = { yf, yg, yh, yi, yj, yk, yl, ym, yn, yo, yp, yq, yr, ys, yt, yu, yv, yw, yx, yz, yB, yD }
                            for i, v in ipairs(yF) do
                                if v then
                                    yE += 1
                                end
                            end
                            local yf_1 = yE / #yF
                            if yf_1 >= 0.9 then
                                return y9("Full Support", y8)
                            elseif yf_1 >= 0.6 then
                                return y9("Half Support", y6)
                            else
                                return y9("Low Support", y2)
                            end
                        end
                        y3 = "Unknown"
                        pcall(function()
                            local yO_1
                            local yN_1
                            if identifyexecutor then
                                yO_1, yN_1 = identifyexecutor()
                                local yP = yO_1 ~= ""
                                local yQ = type(yO_1) == "string" and yP
                                if yQ then
                                    local yP_1 = type(yN_1) == "string" and yN_1 ~= "" and yO_1 .. " " .. yN_1
                                    y3 = yP_1 or yO_1
                                end
                            end
                        end)
                        local zg = zf()
                        y7 = os.clock()
                        za = function()
                            local yV = math.floor(os.clock() - y7)
                            if yV < 60 then
                                return yV .. "s"
                            elseif yV < 3600 then
                                return string.format("%dm %ds", yV // 60, yV % 60)
                            else
                                return string.format("%dh %dm", yV // 3600, yV % 3600 // 60)
                            end
                        end
                        local UserGroup = Ah.Info:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = p1, Title = "User", HeaderIcon = "user", Collapsible = false })
                        UserGroup:AddLabel(zb("User", p1.DisplayName .. " @" .. p1.Name, y8), true)
                        UserGroup:AddLabel(zb("UserId", tostring(p1.UserId), "#6ec1ff"), true)
                        UserGroup:AddLabel(zb("Executor", y3 .. "  " .. zg, y8), true)
                        UserGroup:AddDivider()
                        Label3 = UserGroup:AddLabel(zb("Session", za(), y6), true)
                        UserGroup:AddDivider()
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                As(p1.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                As("https://www.roblox.com/users/" .. tostring(p1.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local SessionGroup = Ah.Info:AddRightGroupbox("Session", "signal")
                        SessionGroup:AddDivider("Server")
                        SessionGroup:AddLabel(zb("Game", Ag, "#6ec1ff"), true)
                        Label2 = SessionGroup:AddLabel(zb("Players", "0/0", y8), true)
                        y4 = tostring(game.JobId)
                        local ze = #y4 > 18 and string.sub(y4, 1, 18) .. "..."
                        local zg_1 = ze
                        local zk = if zg_1 then 1 else 0
                        local zi = 217 * zk + 1802 * (1 - zk)
                        local zj = 1887 * zk + 1950 * (1 - zk)
                        if not ((zi * 1566 + zj * 575 + zi * zj) % 16777213 == 1834326) then
                            zg_1 = y4
                        end
                        local ze_1 = zg_1
                        SessionGroup:AddLabel(zb("Job", ze_1, zd), true)
                        Label = SessionGroup:AddLabel(zb("Ping", "0 ms", y6), true)
                        SessionGroup:AddDivider()
                        SessionGroup:AddButton({
                            Text = "Rejoin Server",
                            Func = function()
                                TeleportService:Teleport(game.PlaceId, p1)
                            end
                        })
                        SessionGroup:AddButton({
                            Text = "Copy Job ID",
                            Func = function()
                                As(y4, "Copied Job ID")
                            end
                        })
                        task.spawn(function()
                            local yY_1
                            local yX_1
                            while true do
                                task.wait(1)
                                if Library.Unloaded then
                                    break
                                end
                                Label3:SetText(zb("Session", za(), y6))
                                Label2:SetText(zb("Players", #pt:GetPlayers() .. "/" .. tostring(pt.MaxPlayers), y8))
                                yX_1, yY_1 = pcall(function()
                                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                                end)
                                local yX_2 = yX_1 and yY_1 .. " ms" or "n/a"
                                Label:SetText(zb("Ping", yX_2, y6))
                            end
                        end)
                        local SocialsGroup = Ah.Info:AddRightGroupbox("Socials", "link")
                        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
                        SocialsGroup:AddButton({
                            Text = "Rscripts",
                            Func = function()
                                if setclipboard then
                                    setclipboard(Ao)
                                elseif toclipboard then
                                    toclipboard(Ao)
                                end
                                Library:Notify("Copied Rscripts profile to clipboard")
                            end
                        })
                        SocialsGroup:AddButton({
                            Text = "Website",
                            Func = function()
                                As(Ai, "Copied website link")
                            end
                        })
                    end
                    Aw_6()
                    local function Aw_7()
                        SaveManager:SetLibrary(Library)
                        SaveManager:IgnoreThemeSettings()
                        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                        SaveManager:SetFolder("OuroborosHub/RollAFisher")
                        local mh = SaveManager:BuildConfigSection(Ah.Settings)
                        local function mi(mj, mk)
                            local zm_1 = (mj == "Toggle" and Toggles or Options)[mk]
                            local zl_2 = type(zm_1) == "table" and zm_1.Type == mj
                            return zl_2 and zm_1 or nil
                        end
                        local function ms(mt, mu)
                            local Type = mu.Type
                            if Type == "Toggle" then
                                return { idx = mt, type = "Toggle", value = mu.Value == true }
                            elseif Type == "Slider" then
                                return { idx = mt, type = "Slider", value = tostring(mu.Value) }
                            elseif Type == "Dropdown" then
                                return { idx = mt, type = "Dropdown", multi = mu.Multi == true, value = mu.Value }
                            elseif Type == "Input" then
                                local zq = mu.Value
                                local zu = if zq then 1 else 0
                                local zs = 1885 * zu + 830 * (1 - zu)
                                local zt = 2023 * zu + 1224 * (1 - zu)
                                if not ((zs * 74 + zt * 3873 + zs * zt) % 16777213 == 11787924) then
                                    zq = ""
                                end
                                return { idx = mt, type = "Input", text = tostring(zq) }
                            elseif Type == "ColorPicker" then
                                return { idx = mt, type = "ColorPicker", value = mu.Value:ToHex(), transparency = mu.Transparency }
                            elseif Type == "KeyPicker" then
                                return {
                                    idx = mt,
                                    type = "KeyPicker",
                                    mode = mu.Mode,
                                    key = mu.Value,
                                    modifiers = mu.Modifiers,
                                    toggled = mu.Toggled
                                }
                            else
                                return nil
                            end
                        end
                        local function mw()
                            local zz = {}
                            for i, v in ipairs({ Toggles, Options }) do
                                for k, v in pairs(v) do
                                    local zA = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                                    if zA then
                                        local zA_1 = ms(k, v)
                                        if zA_1 then
                                            zz[#zz + 1] = zA_1
                                        end
                                    end
                                end
                            end
                            table.sort(zz, function(mE, mF)
                                if mE.type ~= mF.type then
                                    return mE.type < mF.type
                                end
                                return mE.idx < mF.idx
                            end)
                            return { objects = zz }
                        end
                        local function mG(mH)
                            local zT
                            zT = nil
                            local zU = type(mH) ~= "table"
                            local zY = if zU then 1 else 0
                            local zW = 3979 * zY + 2105 * (1 - zY)
                            local zX = 2185 * zY + 170 * (1 - zY)
                            if not ((zW * 3104 + zX * 3866 + zW * zX) % 16777213 == 12714928) then
                                zU = type(mH.idx) ~= "string"
                            end
                            if not zU then
                                zU = type(mH.type) ~= "string"
                            end
                            if not zU then
                                zU = SaveManager.Ignore[mH.idx]
                            end
                            if zU then
                                return false
                            end
                            zT = mi(mH.type, mH.idx)
                            if not zT then
                                return false
                            end
                            local zU_1 = pcall(function()
                                if mH.type == "Input" then
                                    if type(mH.text) ~= "string" then
                                        return
                                    end
                                    zT:SetValue(mH.text)
                                elseif mH.type == "ColorPicker" then
                                    zT:SetValueRGB(Color3.fromHex(mH.value), mH.transparency)
                                elseif mH.type == "KeyPicker" then
                                    zT:SetValue({ mH.key, mH.mode, mH.modifiers })
                                    if mH.mode == "Toggle" and mH.toggled ~= nil then
                                        zT.Toggled = mH.toggled
                                        zT:Update()
                                    end
                                else
                                    zT:SetValue(mH.value)
                                end
                            end)
                            return zU_1
                        end
                        mh:AddDivider()
                        mh:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
                        mh:AddButton("Export Config to Clipboard", function()
                            local z__1
                            local zZ_1
                            zZ_1, z__1 = pcall(HttpService.JSONEncode, HttpService, mw())
                            if not zZ_1 then
                                Library:Notify("Failed to encode the config")
                                return
                            end
                            local zZ_2 = setclipboard or toclipboard
                            local zZ_3 = type(zZ_2) ~= "function" or not pcall(zZ_2, z__1)
                            if zZ_3 then
                                Library:Notify("Your executor does not support copying to the clipboard")
                                return
                            end
                            Library:Notify("Config copied to clipboard", 6)
                        end)
                        mh:AddButton("Import Config from Clipboard Text", function()
                            local z4_1
                            local z2 = Options.SaveManager_ImportSource.Value
                            local z2_1
                            local z8 = if z2 then 1 else 0
                            local z6 = 1611 * z8 + 499 * (1 - z8)
                            local z7 = 118 * z8 + 918 * (1 - z8)
                            if not ((z6 * 547 + z7 * 583 + z6 * z7) % 16777213 == 1140109) then
                                z2 = ""
                            end
                            local z3 = tostring(z2):match("^%s*(.-)%s*$")
                            if z3 == "" then
                                Library:Notify("Paste an exported config into the box first")
                                return
                            end
                            z2_1, z4_1 = pcall(HttpService.JSONDecode, HttpService, z3)
                            local z3_1 = not z2_1
                            local z8_1 = if z3_1 then 1 else 0
                            local z6_1 = 972 * z8_1 + 1277 * (1 - z8_1)
                            local z7_1 = 3027 * z8_1 + 2624 * (1 - z8_1)
                            if not ((z6_1 * 346 + z7_1 * 3715 + z6_1 * z7_1) % 16777213 == 14523861) then
                                z3_1 = type(z4_1) ~= "table"
                            end
                            if not z3_1 then
                                z3_1 = type(z4_1.objects) ~= "table"
                            end
                            if z3_1 then
                                Library:Notify("That is not a valid exported config")
                                return
                            end
                            local z2_2 = 0
                            for i, v in ipairs(z4_1.objects) do
                                if mG(v) then
                                    z2_2 += 1
                                end
                            end
                            if z2_2 == 0 then
                                Library:Notify("No settings in that config matched this script")
                                return
                            end
                            Options.SaveManager_ImportSource:SetValue("")
                            local z4_2 = z2_2 == 1 and "" or "s"
                            Library:Notify(("Imported %d setting%s"):format(z2_2, z4_2), 6)
                        end)
                        SaveManager:LoadAutoloadConfig()
                    end
                    Aw_7()
                    if Toggles.HideUiOnStart.Value then
                        Library:Toggle(false)
                    end
                    pT.Start()
                end
            end
            qe_3 = (qe_3 + 9) % 52
        end
    elseif qi_2 <= 10 then
        if qi_2 <= 9 then
            if qi_2 <= 8 then
                if (qe_3 * 2 + 7) * 10 % 3 == ((qe_3 * 2 + 7) * 10 + 5) % 3 then
                    qh_4, qf_3 = pcall(qg_2)
                else
                    qg_2, qh_4 = pcall(qf_3)
                end
                qe_3 = (qe_3 + 35) % 52
            else
                local BS = bit32.rrotate(bit32.bxor(bit32.lrotate(qe_3, 18), string.byte(tostring(pE))), 18)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BS, 2579669821), 1280086329), (bit32.bxor(bit32.band(BS, 1715297474), 3017906698))), 1280086329), 3017906698) == BS then
                    p6.SellRarities.Common = true
                    p6.SellRarities.Rare = true
                    pT = { State = p6 }
                else
                    pT.SellRarities.Common = true
                    pT.SellRarities.Rare = true
                    p6 = { State = pT }
                end
                qe_3 = (qe_3 + 9) % 52
            end
        else
            if (qe_3 * 3 + 2) * 5 % 4 == ((qe_3 * 3 + 2) * 5 + 4) % 4 then
                pC = {
                    "Rebirth",
                    "PlaceFish",
                    "ReplaceFish",
                    "PlaceFisher",
                    "ReplaceFisher",
                    "BuyFisher",
                    "Roll",
                    "Sell"
                }
                pw = { "CollectCash", "CollectFish" }
                qc = fn386
                p_ = fn267
            else
                p_ = {
                    "Rebirth",
                    "Sell",
                    "ReplaceFisher",
                    "PlaceFish",
                    "PlaceFisher",
                    "BuyFisher",
                    "ReplaceFish",
                    "Roll"
                }
                pC = { "CollectCash", "CollectFish" }
                pw = fn386
                qc = fn267
            end
            qe_3 = (qe_3 + 22) % 52
        end
    elseif qi_2 <= 12 then
        if qi_2 <= 11 then
            local qi_3 = { "ktkxnkocjnab", "kmyy", "zzdjbv", "xmnhnyrpz", "sjip", "qqlsphujs", "qhhzea", "vgtbvjsgzhfy" }
            if qi_3[(qe_3 * 29 + 67) % 8 + 1] < qi_3[(qe_3 * 29 + 67) % 8 + 1] then
                pS = fn672
                pU = fn993
                qa = fn225
                pF = fn989
            else
                pU = fn672
                pF = fn993
                pS = fn225
                qa = fn989
            end
            qe_3 = (qe_3 + 35) % 52
        else
            local BT = bit32.rrotate(bit32.bxor(bit32.lrotate(qe_3, 18), string.byte(tostring(p_))), 7)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(BT, 2035419315), 4132981659), (bit32.bxor(bit32.band(BT, 2259547980), 2849641344))), 4132981659), 2849641344) == BT then
                pv = fn922
            else
                pZ = fn922
            end
            qe_3 = (qe_3 + 22) % 52
        end
    else
        local qi_4 = { "ncia", "omneptc", "tjjo", "xxws", "emaihesku", "irzhfdny", "urgrgczlbp", "kaerfivpq", "bxdo" }
        local Bc = qe_3
        local qj_6 = qi_4[Bc % 9 + 1]
        if qj_6:len() <= qj_6:gsub("(.)", "%1%1", Bc % 3 % 2 + 1):len() then
            pI = fn590
        else
            p2 = fn590
        end
        qe_3 = (qe_3 + 35) % 52
    end
until (qe_3 * 15 + 9) % 52 == 14
if not qg_2 then
    local qe_4 = 7
    repeat
        local qf_4 = (vector.create((qe_4 * 3 + 1) % 11 + 1, (qe_4 * 3 + 7) % 13 + 1, (qe_4 * 4 + 5) % 17 + 1))
        local qg_3 = (vector.create((qe_4 * 7 + 6) % 11 + 1, (qe_4 * 9 + 1) % 13 + 1, (qe_4 * 6 + 4) % 17 + 1))
        local qi_5 = (vector.create((qe_4 * 4 + 6) % 11 + 1, (qe_4 * 1 + 8) % 13 + 1, (qe_4 * 15 + 12) % 17 + 1))
        if vector.dot(vector.cross(qf_4, qg_3), qi_5) == vector.dot(vector.cross(qg_3, qi_5), qf_4) then
            pT.Unload()
            error(qh_4)
        else
            qh_4.Unload()
            error(pT)
        end
        qe_4 = (qe_4 + 5) % 8
    until (qe_4 * 5 + 0) % 8 == 4
end
