local m6
local mO
local nc
local mi
local SetupConfig
local mH
local EndStream
local CrateConfig
local PlacementUtil
local mu
local nb
local FoodConfig
local mA
local mZ
local PlotUtil
local nn
local mn
local mM
local mt
local Options
local mz
local mg
local mm
local m3
local mL
local ClaimIndex
local StartStreamAt
local mR
local PlaceSetup
local Toggles
local mX
local nl
local DoRebirth
local m2
local mK
local nr
local mr
local m8
local mQ
local mx
local ne
local mW
local nk
local mk
local m1
local mJ
local nq
local mq
local m7
local mP
local mw
local MysteryBoxLose
local mC
local MysteryBoxBuy
local mj
local m0
local np
local function fn14(fe)
    local rG = fe
    local rH = {}
    if rG then
        rG = fe:FindFirstChild("PlacedSetups")
    end
    local rI = rG
    if not rI then
        return rH
    end
    for i, child in rI:GetChildren() do
        local rG_1 = child:FindFirstChild(PlacementUtil.FOOD_FOLDER)
        if rG_1 then
            for i, child in rG_1:GetChildren() do
                if child:GetAttribute("MysteryBox") == true then
                    rH[#rH + 1] = child
                end
            end
        end
    end
    return rH
end
local function fn51()
    local oH = mq:GetAttribute("Cash") or 0
    return oH
end
local function fn76()
    return mL
end
local function fn168(az, aA, aB)
    return string.format("<b>%s</b> %s %s", az, m0("-", "#5a6070"), m0(aA, aB))
end
local function fn177(aL)
    local oa = Toggles[aL]
    return oa ~= nil and oa.Value == true
end
local function fn181()
    return PlotUtil.FindPlotByOwner(mq.UserId)
end
local function fn185()
    nr(mQ, "Copied Discord invite to clipboard")
end
local function fn196(ek)
    local q6 = ek and ek:FindFirstChild("PlacedSetups")
    if not q6 then
        return nil
    end
    local q6_1 = {}
    for i, child in q6:GetChildren() do
        if child:IsA("Model") then
            local GetById = SetupConfig.GetById
            local q8 = child:GetAttribute("Setup") or child.Name
            local q9 = GetById(q8)
            local q7_2 = #q6_1 + 1
            local q9_1 = q9 and q9.Stretch or 0
            q6_1[q7_2] = { model = child, stretch = q9_1 }
        end
    end
    if #q6_1 == 0 then
        return nil
    end
    local q7_3 = mg("StreamDesk", "Best Placed Desk")
    if q7_3 == "Random Desk" then
        return q6_1[math.random(1, #q6_1)].model
    end
    table.sort(q6_1, function(ew, ex)
        return ew.stretch > ex.stretch
    end)
    return q6_1[1].model
end
local function worker3()
    while not mR.Unloaded do
        if mH("AutoBuyNextCrate") then
            pcall(ne)
        end
        task.wait(0.8)
    end
end
local function fn204(b_)
    local pi = b_ and b_:FindFirstChild("Rolling")
    local pj = pi
    if pi then
        pi = pj:FindFirstChild("Crates")
    end
    local pk = pi
    if pi then
        pi = pk:FindFirstChild("Point")
    end
    local pk_1 = pi
    if pi then
        pi = pk_1:FindFirstChild("Buy")
    end
    local pl = pi
    if pi then
        pi = pl:IsA("ProximityPrompt")
    end
    if pi then
        return pl, pk_1, pj
    end
    return nil
end
local function fn223()
    local Character = mq.Character
    local qi = { mq:FindFirstChild("Backpack"), Character }
    local qj
    local qh_1 = -1
    for k, v in qi do
        if v then
            for i, child in v:GetChildren() do
                if child:IsA("Tool") then
                    local qi_1 = PlacementUtil.PlaceableName(child)
                    local qk = child:GetAttribute("Setup") or qi_1
                    local qk_1 = type(qk) == "string" and SetupConfig.GetById(qk)
                    if qk_1 then
                        local qk_2 = SetupConfig.GetById(qk)
                        local qk_3 = qk_2 and qk_2.Stretch or 0
                        if qk_3 >= qh_1 then
                            qh_1 = qk_3
                            qj = qk
                        end
                    end
                end
            end
        end
    end
    return qj
end
local function worker2()
    while not mR.Unloaded do
        if mH("AutoBuyCrate") then
            pcall(mC)
        end
        task.wait(0.35)
    end
end
local function fn257()
    if os.clock() - m3.LastOpen < 0.55 then
        return
    end
    local qH = mu()
    local qI = qH and qH:FindFirstChild(PlacementUtil.CRATE_FOLDER)
    if not qI then
        return
    end
    for i, child in qI:GetChildren() do
        if child:GetAttribute("Ready") == true then
            local CratePrompt = child:FindFirstChild("CratePrompt", true)
            local qI_1 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
            local qJ = CratePrompt
            if qJ then
                qJ = CratePrompt.Enabled
            end
            if qJ and qI_1 then
                m3.LastOpen = os.clock()
                m6(CratePrompt, qI_1)
                return
            end
        end
    end
end
local function onOnClientEvent()
    m3.Streaming = true
    m3.StreamStartedAt = os.clock()
    m3.StreamFns = nil
    m3.StreamState = nil
end
local function fn372()
    local oV_1
    local oU_1
    local oX_1
    local oT_2
    local oW_1
    local oS = m3.StreamFns and m3.StreamState and typeof(m3.StreamState.Setup) == "Instance"
    if oS then
        return m3.StreamFns, m3.StreamState
    end
    if not getgc or not debug or not debug.getupvalue then
        return nil, nil
    end
    local oS_2 = nil
    for k, v in getgc(true) do
        local oT_1 = type(v) == "table" and rawget(v, "Pulling") ~= nil and typeof(rawget(v, "Setup")) == "Instance"
        if oT_1 then
            oS_2 = v
            break
        end
    end
    if not oS_2 then
        return nil, nil
    end
    oU_1, oV_1, oT_2 = nil, nil, nil
    for k, v in getgc(true) do
        if not (type(v) ~= "function") then
            oW_1, oX_1 = pcall(debug.info, v, "n")
            local oY = oX_1 == "startPulling"
            local oY_3
            local oZ = oX_1 == "pickUp" or oY
            local oZ_1
            if not not (oW_1 and (oZ or oX_1 == "finishPull")) then
                local oW_2 = false
                local pf = 1
                while pf <= 30 do
                    local pg = pf
                    oY_3, oZ_1 = pcall(debug.getupvalue, v, pg)
                    if not oY_3 then
                        break
                    end
                    if oZ_1 == nil and pg > 8 then
                        break
                    elseif oZ_1 == oS_2 then
                        oW_2 = true
                        break
                    else
                        pf += 1
                    end
                end
                if oW_2 then
                    if oX_1 == "pickUp" then
                        oU_1 = v
                    elseif oX_1 == "startPulling" then
                        oV_1 = v
                    elseif oX_1 == "finishPull" then
                        oT_2 = v
                    end
                end
            end
        end
    end
    if not (oU_1 and oV_1 and oT_2) then
        return nil, nil
    end
    m3.StreamFns = { pickUp = oU_1, startPulling = oV_1, finishPull = oT_2 }
    m3.StreamState = oS_2
    return m3.StreamFns, oS_2
end
local function fn381(aE, aF)
    if setclipboard then
        setclipboard(aE)
    elseif toclipboard then
        toclipboard(aE)
    end
    mR:Notify(aF)
end
local function worker7()
    while not mR.Unloaded do
        if mH("AutoMysteryBox") then
            pcall(nq)
        end
        task.wait(0.45)
    end
end
local function fn408()
    local qG = if os.clock() - m3.LastPlaceDesk < 0.45 then 1 else 0
    if qG == 1 then
        return
    end
    local qz = mj()
    if not qz then
        return
    end
    local qA = mu()
    if not qA then
        return
    end
    local qB = mg("PlaceMode", "Random Spot")
    local qC = mA(qA, qz, qB == "Near Desk")
    if not qC then
        return
    end
    m3.LastPlaceDesk = os.clock()
    PlaceSetup:FireServer(qz, qC.area, qC.x, qC.z, qC.rotation, 0)
end
local function fn412()
    local r7 = hookfunction ~= nil
    local r8 = hookmetamethod ~= nil
    local r9 = getrawmetatable ~= nil
    local sa = setrawmetatable ~= nil
    local sb = getgc ~= nil
    local sc = getgenv ~= nil
    local sd = getreg ~= nil
    local se = getconnections ~= nil
    local sf = firesignal ~= nil
    local sg = getcallbackvalue ~= nil
    local sh = setclipboard ~= nil
    local si = getcustomasset ~= nil
    local sj = getnamecallmethod ~= nil
    local sk = isexecutorclosure ~= nil
    local sl = fireproximityprompt ~= nil
    local sm = firetouchinterest ~= nil
    local sn = WebSocket ~= nil
    local so = readfile ~= nil
    local sp = writefile ~= nil
    local sq = request
    local sB = if sq then 1 else 0
    local sz = 4077 * sB + 1921 * (1 - sB)
    local sA = 164 * sB + 3315 * (1 - sB)
    if not ((sz * 1177 + sA * 2665 + sz * sA) % 16777213 == 5904317) then
        sq = http_request
    end
    local sr = sq ~= nil
    local st = (debug and debug.getupvalues) ~= nil
    local sv = (debug and debug.setupvalue) ~= nil
    local sw = 0
    local sx = { r7, r8, r9, sa, sb, sc, sd, se, sf, sg, sh, si, sj, sk, sl, sm, sn, so, sp, sr, st, sv }
    for i, v in ipairs(sx) do
        if v then
            sw += 1
        end
    end
    local r7_1 = sw / #sx
    if r7_1 >= 0.9 then
        return m0("Full Support", mt)
    elseif r7_1 >= 0.6 then
        return m0("Half Support", mm)
    else
        return m0("Low Support", np)
    end
end
local function fn423(aX, aY)
    local ol = Options[aX]
    local ol_1 = ol and ol.Value
    if type(ol_1) == "number" then
        return ol_1
    end
    return aY
end
local function fn431(bi, bj)
    local oC = not bi or not bi:IsA("ProximityPrompt")
    if oC then
        return false
    end
    if bj then
        mi(bj.CFrame + Vector3.new(0, 3, 0))
        task.wait(0.12)
    end
    if fireproximityprompt then
        fireproximityprompt(bi)
        return true
    end
    return false
end
local function fn438()
    if os.clock() - m3.LastIndex < 1.5 then
        return
    end
    m3.LastIndex = os.clock()
    for k, v in FoodConfig.GetAll() do
        local qZ = FoodConfig.AttributeName("Index_", v.Name)
        if mq:GetAttribute(qZ) == "Found" then
            ClaimIndex:FireServer(v.Name)
            task.wait(0.05)
        end
    end
end
local function worker()
    while mR and not mR.Unloaded do
        mJ()
        task.wait(1)
    end
end
local function fn487(cI, cJ, cK)
    local pK_2
    local pE_1
    local pL_3
    local pJ_3
    local pD_1
    local pB = cJ == ""
    local pC = type(cJ) ~= "string" or pB
    local pC_2
    if pC then
        return nil
    end
    local pB_1 = PlacementUtil.GetAreas(cI)
    local pC_1 = type(pB_1) ~= "table" or #pB_1 == 0
    if pC_1 then
        return nil
    end
    pE_1, pC_2, pD_1 = PlacementUtil.Resolve(cJ)
    if not pD_1 then
        return nil
    end
    local pC_3 = PlacementUtil.GetFootprint(pD_1)
    local pF = PlacementUtil.HeightOf(pD_1)
    local GridFor = PlacementUtil.GridFor
    local pG = pE_1 or "Crate"
    local pE_2 = GridFor(pG)
    local pD_3 = math.clamp(math.floor(mM("PlaceRotation", 0) + 0.5), 0, 3)
    local pG_1 = {}
    local pH
    if cK then
        local PlacedSetups = cI:FindFirstChild("PlacedSetups")
        local pJ_1 = nil
        local pK_1 = -1
        if PlacedSetups then
            for i, child in PlacedSetups:GetChildren() do
                local GetById = SetupConfig.GetById
                local pL_1 = child:GetAttribute("Setup") or child.Name
                local pM = GetById(pL_1)
                local pL_2 = pM and pM.Stretch or 0
                if pL_2 >= pK_1 then
                    pK_1 = pL_2
                    pJ_1 = child
                end
            end
        end
        if pJ_1 then
            local pI_5 = pJ_1.PrimaryPart or pJ_1:FindFirstChildWhichIsA("BasePart")
            local pJ_2 = pI_5
            if pI_5 then
                pI_5 = pJ_2.Position
            end
            pH = pI_5
        end
    end
    for i, v in ipairs(pB_1) do
        if v:IsA("BasePart") then
            local CFrame2 = v.CFrame
            local p4 = -6
            while p4 <= 6 do
                local p5 = p4
                local p9 = -6
                while p9 <= 6 do
                    local qa = p9
                    local Position = (CFrame2 * CFrame.new(p5 * pE_2, v.Size.Y / 2, qa * pE_2)).Position
                    pK_2, pJ_3 = PlacementUtil.SnapToGrid(v, pC_3, pD_3, Position, pE_2)
                    local pI_7 = pK_2 and PlacementUtil.IsValidCell(v, pC_3, pD_3, pK_2, pJ_3, pE_2)
                    if pI_7 then
                        local pI_8 = PlacementUtil.ComputeCFrame(v, pK_2, pJ_3, pD_3)
                        if not PlacementUtil.BlockedBy(cI, pC_3, pD_3, pI_8, 0, pF, nil, false) then
                            if pH then
                                pL_3 = -(pI_8.Position - pH).Magnitude
                            else
                                pL_3 = math.random()
                            end
                            pG_1[#pG_1 + 1] = { area = v, x = pK_2, z = pJ_3, rotation = pD_3, score = pL_3 }
                        end
                    end
                    p9 += 1
                end
                p4 += 1
            end
        end
    end
    if #pG_1 == 0 then
        return nil
    end
    table.sort(pG_1, function(di, dj)
        return di.score > dj.score
    end)
    return pG_1[1]
end
local function fn490()
    if os.clock() - m3.LastExpand < 1.4 then
        return
    end
    local ru = mu()
    local rv = ru and ru:FindFirstChild("Expansions")
    if not rv then
        return
    end
    local rv_1 = nil
    local rw = math.huge
    for i, child in rv:GetChildren() do
        local attr = child:GetAttribute("ExpansionPrice")
        local Buy = child:FindFirstChild("Buy")
        local ry = type(attr) == "number" and attr > 0 and attr <= nl() and Buy and Buy:IsA("ProximityPrompt")
        if ry then
            if attr < rw then
                rw = attr
                rv_1 = Buy
            end
        end
    end
    if not rv_1 then
        return
    end
    m3.LastExpand = os.clock()
    local ru_3 = rv_1.Parent
    if ru_3 then
        local rw_1 = rv_1.Parent:IsA("BasePart") and rv_1.Parent
        local rx_2 = rw_1 or rv_1.Parent:FindFirstChildWhichIsA("BasePart")
        ru_3 = rx_2
    end
    local rw_2 = ru_3
    m6(rv_1, rw_2)
end
local function worker4()
    while not mR.Unloaded do
        if mH("AutoPlaceCrate") then
            pcall(nn)
        end
        if mH("AutoPlaceDesk") then
            pcall(mX)
        end
        task.wait(0.3)
    end
end
local function fn495()
    local oL = mq:GetAttribute("CrateLevel") or 1
    return oL
end
local function fn505()
    local rl_2
    local rk_2
    if mK() then
        local rk_1 = mM("AutoFinishMinutes", 5)
        local rl_1 = rk_1 > 0 and m3.StreamStartedAt > 0 and os.clock() - m3.StreamStartedAt >= rk_1 * 60
        if rl_1 then
            EndStream:FireServer()
            m3.Streaming = false
            m3.StreamStartedAt = 0
            m3.StreamFns = nil
            m3.StreamState = nil
            return
        end
        local rq = if os.clock() - m3.LastPull < 0.35 then 1 else 0
        if rq == 1 then
            return
        end
        rl_2, rk_2 = nb()
        if not (rl_2 and rk_2) then
            return
        end
        m3.LastPull = os.clock()
        if rk_2.Held then
            if rk_2.Held.Max and rk_2.Held.Distance and rk_2.Held.Distance >= rk_2.Held.Max * 0.98 then
                pcall(rl_2.finishPull)
            elseif not rk_2.Pulling then
                pcall(rl_2.startPulling)
            end
            return
        end
        local Setup = rk_2.Setup
        local rk_3 = Setup and Setup:FindFirstChild(PlacementUtil.FOOD_FOLDER)
        if not rk_3 then
            return
        end
        local children = rk_3:GetChildren()
        if #children == 0 then
            return
        end
        local rm_5 = children[math.random(1, #children)]
        pcall(rl_2.pickUp, rm_5)
        task.wait(0.15)
        pcall(rl_2.startPulling)
        return
    end
    if os.clock() - m3.LastStreamStart < 2 then
        return
    end
    local rk_5 = mu()
    local rl_3 = m2(rk_5)
    if not rl_3 then
        return
    end
    m3.LastStreamStart = os.clock()
    local rk_6 = rl_3.PrimaryPart or rl_3:FindFirstChildWhichIsA("BasePart")
    if rk_6 then
        mi(rk_6.CFrame + Vector3.new(0, 4, 0))
        task.wait(0.15)
    end
    StartStreamAt:FireServer(rl_3)
end
local function fn516()
    local Character = mq.Character
    local op = Character and Character:FindFirstChild("HumanoidRootPart")
    return op
end
local function fn539()
    local attr = mq:GetAttribute("HeldCrate")
    local qd = attr == ""
    local qe = type(attr) ~= "string" or qd
    if qe then
        return
    end
    if os.clock() - m3.LastPlace < 0.45 then
        return
    end
    local qd_1 = mu()
    if not qd_1 then
        return
    end
    local qe_1 = mg("PlaceMode", "Random Spot")
    local qf = mA(qd_1, attr, qe_1 == "Near Desk")
    if not qf then
        return
    end
    m3.LastPlace = os.clock()
    PlaceSetup:FireServer(attr, qf.area, qf.x, qf.z, qf.rotation, 0)
end
local function fn540(aQ, aR)
    local od = Options[aQ]
    local oe = od and od.Value
    local oe_1 = oe ~= ""
    local of = type(oe) == "string" and oe_1
    if of then
        return oe
    end
    return aR
end
local function fn579(be)
    local ow = nk()
    if ow and be then
        ow.CFrame = be
    end
end
local function fn596()
    local pq_1
    local pp_1
    local po_1
    if mq:GetAttribute("HeldCrate") ~= nil then
        return
    end
    if os.clock() - m3.LastBuy < 0.85 then
        return
    end
    local pn = mu()
    pq_1, pp_1, po_1 = mr(pn)
    if not (pq_1 and pp_1 and po_1) then
        return
    end
    local pn_2 = po_1:GetAttribute("TakeReadyAt") or 0
    if pn_2 > mw:GetServerTimeNow() then
        return
    end
    local attr = po_1:GetAttribute("StandCrate")
    local po_2 = attr and CrateConfig.GetById(attr)
    if not po_2 then
        return
    end
    local po_3 = mq:GetAttribute("NeedsTutorial") == true and 0
    local pr_2 = po_3 or CrateConfig.GetPrice(po_2)
    if nl() < pr_2 then
        return
    end
    if not pq_1.Enabled then
        return
    end
    m3.LastBuy = os.clock()
    m6(pq_1, pp_1)
end
local function worker5()
    while not mR.Unloaded do
        if mH("AutoOpenReadyCrate") then
            pcall(m7)
        end
        task.wait(0.4)
    end
end
local function worker10()
    while not mR.Unloaded do
        if mH("AutoExpandPlot") then
            pcall(mP)
        end
        task.wait(1)
    end
end
local function fn630(aw, ax)
    return string.format('<font color="%s">%s</font>', ax, aw)
end
local function worker9()
    while not mR.Unloaded do
        if mH("AutoClaimIndex") then
            pcall(mx)
        end
        task.wait(1.25)
    end
end
local function fn643()
    if os.clock() - m3.LastNext < 1.2 then
        return
    end
    local pt = CrateConfig.NextLevel(mW())
    if not pt then
        return
    end
    local UnlockSubsFor = CrateConfig.UnlockSubsFor
    local pv = mq:GetAttribute("Rebirths") or 0
    local pw = UnlockSubsFor(pt, pv)
    if m8() < pw then
        return
    end
    local pu_1 = pt.UnlockPrice or 0
    if nl() < pu_1 then
        return
    end
    local pt_2 = mu()
    local pu_2 = pt_2 and pt_2:FindFirstChild("Upgrades")
    local pt_3 = pu_2
    if pu_2 then
        pu_2 = pt_3:FindFirstChild("UpgradeCrate")
    end
    local pt_4 = pu_2
    if pu_2 then
        pu_2 = pt_4:FindFirstChild("ButtonPart")
    end
    local pt_5 = pu_2
    if not pt_5 then
        return
    end
    m3.LastNext = os.clock()
    mz(pt_5)
end
local function onOnClientEvent2()
    m3.Streaming = false
    m3.StreamStartedAt = 0
    m3.StreamFns = nil
    m3.StreamState = nil
end
local function fn660()
    local qY = if os.clock() - m3.LastRebirth < 2 then 1 else 0
    if qY == 1 then
        return
    end
    if mq:GetAttribute("RebirthEligible") ~= true then
        return
    end
    m3.LastRebirth = os.clock()
    DoRebirth:FireServer()
end
local function worker6()
    while not mR.Unloaded do
        if mH("AutoStream") then
            pcall(mO)
            task.wait(0.25)
        else
            task.wait(0.4)
        end
    end
end
local function fn689()
    local oO_1
    local oN_1
    if m3.Streaming then
        return true
    end
    oN_1, oO_1 = pcall(function()
        return mn.UI.Pages.Streaming.Visible
    end)
    return oN_1 and oO_1 == true
end
local function fn730(fD)
    local DiscordGroup = fD:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = m1 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = m1 })
end
local function fn783()
    local oJ = mq:GetAttribute("Subscribers") or 0
    return oJ
end
local function worker8()
    while not mR.Unloaded do
        if mH("AutoRebirth") then
            pcall(mZ)
        end
        task.wait(1)
    end
end
local function fn815()
    local r0 = if os.clock() - m3.LastMysteryBox < 0.6 then 1 else 0
    if r0 == 1 then
        return
    end
    local rW = mu()
    local rX = nc(rW)
    if #rX == 0 then
        return
    end
    m3.LastMysteryBox = os.clock()
    for k, v in rX do
        if v.Parent then
            local rW_1 = v:GetAttribute("BoxPrice") or 0
            if nl() >= rW_1 then
                MysteryBoxBuy:FireServer(v)
            else
                MysteryBoxLose:FireServer(v)
            end
            task.wait(0.15)
        end
    end
end
local function fn889(bn)
    local oE = nk()
    if not (oE and bn) then
        return false
    end
    mi(bn.CFrame + Vector3.new(0, 3, 0))
    task.wait(0.1)
    if firetouchinterest then
        firetouchinterest(oE, bn, 0)
        task.wait(0.08)
        firetouchinterest(oE, bn, 1)
        return true
    end
    return false
end
local function fn910()
    local Character = mq.Character
    local ou = Character and Character:FindFirstChildOfClass("Humanoid")
    return ou
end
mg = nil
mi = nil
mj = nil
mk = nil
DoRebirth = nil
mm = nil
mn = nil
EndStream = nil
mq = nil
mr = nil
StartStreamAt = nil
mt = nil
mu = nil
mw = nil
mx = nil
PlaceSetup = nil
mz = nil
mA = nil
mC = nil
PlotUtil = nil
mH = nil
mJ = nil
mK = nil
mL = nil
mM = nil
PlacementUtil = nil
mO = nil
mP = nil
mQ = nil
mR = nil
FoodConfig = nil
mW = nil
mX = nil
mZ = nil
SetupConfig = nil
m0 = nil
m1 = nil
local mf, mh, mp, mv, mB, mD, mE, TeleportService, mI, GuiService, mU, mV, HttpService
m2 = nil
m3 = nil
CrateConfig = nil
m6 = nil
m7 = nil
m8 = nil
Options = nil
nb = nil
nc = nil
MysteryBoxLose = nil
ne = nil
Toggles = nil
local ni
MysteryBoxBuy = nil
nk = nil
nl = nil
nn = nil
np = nil
nq = nil
nr = nil
ClaimIndex = nil
local m4, m9, ng, nh, nm, no
local nA_1
local nB_1
local nv_3
local ReplicatedStorage, nu_2, nu_4
local nw_7
mf, ReplicatedStorage, ng, m9, m4, HttpService, GuiService, mL, TeleportService, mw, mq, mn, mk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local nt = 17
repeat
    local nv_1 = (nt * 3 + 0) % 7 + 1
    if nv_1 <= 4 then
        if nv_1 <= 2 then
            if nv_1 <= 1 then
                local wd = bit32.rrotate(bit32.bxor(bit32.lrotate(nt, 15), string.byte(tostring(m9))), 29)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wd, 1622873017), 2672700876), (bit32.bxor(bit32.band(wd, 2672094278), 174653083))), 2672700876), 174653083) == wd then
                    mL = game:GetService("CoreGui")
                    TeleportService = game:GetService("TeleportService")
                    mw = game:GetService("Workspace")
                    mq = mf.LocalPlayer
                    mn = mq:WaitForChild("PlayerGui")
                else
                    mf = game:GetService("CoreGui")
                    mw = game:GetService("TeleportService")
                    mn = game:GetService("Workspace")
                    mL = TeleportService.LocalPlayer
                    mq = mL:WaitForChild("PlayerGui")
                end
                nt = (nt + 26) % 28
            else
                local nw_1 = {
                    "riwc",
                    "xuqhgf",
                    "ztrqcr",
                    "vwb",
                    "zywjiqb",
                    "kinqvtubny",
                    "etipeessnuh",
                    "nrqnieuijnil",
                    "tavyhbsfot",
                    "djuezkvvvzbk",
                    "sbqahkyfm",
                    "qxvfguvnp",
                    "obg",
                    "knpoaazyu"
                }
                if nw_1[(nt * 74 + 48) % 14 + 1] <= nw_1[(nt * 74 + 48) % 14 + 1] then
                    mk = fn76
                else
                    mf = fn76
                end
                nt = (nt + 5) % 28
            end
        elseif nv_1 <= 3 then
            if nt * 116330215 + 12 + 3 <= nt * 116330215 + 12 + 3 + 5 then
                mf = game:GetService("Players")
            else
                mk = game:GetService("Players")
            end
            nt = (nt + 19) % 28
        else
            local nw_2 = (vector.create((nt * 5 + 9) % 11 + 1, (nt * 3 + 9) % 13 + 1, (nt * 14 + 12) % 17 + 1))
            local nx_1 = (vector.create((nt * 4 + 5) % 11 + 1, (nt * 7 + 7) % 13 + 1, (nt * 5 + 5) % 17 + 1))
            local ny_1 = (vector.create((nt * 4 + 7) % 5 + 1, (nt * 2 + 4) % 7 + 1, (nt * 3 + 3) % 9 + 1))
            if math.abs((vector.angle(nw_2, nx_1, ny_1))) - math.abs((vector.angle(nx_1, nw_2, ny_1))) == 2 then
                m9 = game:GetService("ReplicatedStorage")
            else
                ReplicatedStorage = game:GetService("ReplicatedStorage")
            end
            nt = (nt + 5) % 28
        end
    elseif nv_1 <= 6 then
        if nv_1 <= 5 then
            if nt * 63709955 + 12 + 4 >= nt * 63709955 + 12 + 4 + 1 then
                m9 = game:GetService("RunService")
                m4 = game:GetService("UserInputService")
                ng = game:GetService("VirtualUser")
            else
                ng = game:GetService("RunService")
                m9 = game:GetService("UserInputService")
                m4 = game:GetService("VirtualUser")
            end
            nt = (nt + 5) % 28
        else
            local nv_2 = (vector.create((nt * 4 + 4) % 11 + 1, (nt * 6 + 7) % 13 + 1, (nt * 6 + 11) % 17 + 1))
            local nw_3 = (vector.create((nt * 4 + 8) % 11 + 1, (nt * 5 + 11) % 13 + 1, (nt * 13 + 1) % 17 + 1))
            local vG = vector.cross(nv_2, nw_3)
            local vH = vector.dot(nv_2, nw_3)
            if vector.dot(vG, vG) + vH * vH == vector.dot(nv_2, nv_2) * vector.dot(nw_3, nw_3) + 1 then
                mf = game:GetService("HttpService")
            else
                HttpService = game:GetService("HttpService")
            end
            nt = (nt + 5) % 28
        end
    else
        local wo = bit32.rrotate(bit32.bxor(bit32.lrotate(nt, 10), string.byte(tostring(HttpService))), 3)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(wo, 692205099), 2600386023), (bit32.bxor(bit32.band(wo, 3602762196), 1607412448))), 2600386023), 1607412448) == wo then
            GuiService = game:GetService("GuiService")
        else
            m9 = game:GetService("GuiService")
        end
        nt = (nt + 19) % 28
    end
until (nt * 11 + 17) % 28 == 8
if getgenv then
    ni, nv_3 = nil, nil
    local nt_1 = 14
    repeat
        if (nt_1 * 1 + 0) % 2 + 1 <= 1 then
            local nw_5 = (vector.create((nt_1 * 5 + 3) % 11 + 1, (nt_1 * 7 + 8) % 13 + 1, (nt_1 * 4 + 6) % 17 + 1))
            local nx_2 = (vector.create((nt_1 * 7 + 3) % 11 + 1, (nt_1 * 10 + 11) % 13 + 1, (nt_1 * 7 + 6) % 17 + 1))
            local vI = vector.cross(nw_5, nx_2)
            local vJ = vector.dot(nw_5, nx_2)
            if vector.dot(vI, vI) + vJ * vJ == vector.dot(nw_5, nw_5) * vector.dot(nx_2, nx_2) then
                getgenv().gethui = mk
                ni = getgenv().__OuroborosCheesePullLib
            else
                getgenv().gethui = ni
                mk = getgenv().__OuroborosCheesePullLib
            end
            nt_1 = (nt_1 + 3) % 16
        else
            if (nt_1 * 1 + 3) * 13 % 4 == ((nt_1 * 1 + 3) * 13 + 14) % 4 then
                ni = nv_3
            else
                nv_3 = ni
            end
            nt_1 = (nt_1 + 3) % 16
        end
    until (nt_1 * 5 + 9) % 16 == 13
    if nv_3 then
        nv_3 = ni.Unload
    end
    if nv_3 then
        pcall(function()
            ni:Unload()
        end)
    end
end
pcall(function()
    gethui = mk
end)
if setthreadidentity then
    setthreadidentity(8)
end
mU, mQ, mI, mB, mt, mp, mm, mh, np, CrateConfig, SetupConfig, FoodConfig, PlacementUtil, PlotUtil, PlaceSetup, StartStreamAt, EndStream, DoRebirth, ClaimIndex, MysteryBoxBuy, MysteryBoxLose, mR, nm, mJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mU = "Stream A Cheese Pull!"
mQ = "https://discord.gg/ehKVq7pf7v"
mI = "https://rscripts.net/@Ouroboros"
mB = "https://ouroboros-hub-rbx.web.app/"
mt = "#7fd47f"
mp = "#6ec1ff"
mm = "#e8a34d"
mh = "#8b93a3"
np = "#e05a5a"
local Remotes = ReplicatedStorage:WaitForChild("Remotes")
local nw_6 = ReplicatedStorage:WaitForChild("Modules")
CrateConfig = require(nw_6:WaitForChild("CrateConfig"))
if 63 and (false and nm or (nm or not mR)) or not (63 and (false and nm or (nm or not mR))) then
    SetupConfig = require(nw_6:WaitForChild("SetupConfig"))
else
    nw_6 = require(SetupConfig:WaitForChild("SetupConfig"))
end
FoodConfig = require(nw_6:WaitForChild("FoodConfig"))
PlacementUtil = require(nw_6:WaitForChild("PlacementUtil"))
PlotUtil = require(nw_6:WaitForChild("PlotUtil"))
PlaceSetup = Remotes:WaitForChild("PlaceSetup")
StartStreamAt = Remotes:WaitForChild("StartStreamAt")
EndStream = Remotes:WaitForChild("EndStream")
DoRebirth = Remotes:WaitForChild("DoRebirth")
ClaimIndex = Remotes:WaitForChild("ClaimIndex")
MysteryBoxBuy = Remotes:WaitForChild("MysteryBoxBuy")
MysteryBoxLose = Remotes:WaitForChild("MysteryBoxLose")
local StreamStarted = Remotes:WaitForChild("StreamStarted")
local StreamEnded = Remotes:WaitForChild("StreamEnded")
if ((StreamEnded or not StreamEnded) and (false or StreamEnded) or (not StreamEnded or false) and (StreamEnded and not StreamEnded)) and not ((StreamEnded or not StreamEnded) and (false or StreamEnded) or (not StreamEnded or false) and (StreamEnded and not StreamEnded)) then
    mJ = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
    loadstring(game:HttpGet(mJ .. "Library.lua"))()
    mR = function()
        local function nY(aa)
            local nT = not aa
            local nX = if nT then 1 else 0
            local nV = 3671 * nX + 851 * (1 - nX)
            local nW = 484 * nX + 1029 * (1 - nX)
            if not ((nV * 471 + nW * 2600 + nV * nW) % 16777213 == 4764205) then
                nT = not aa:IsA("ScreenGui")
            end
            if nT then
                return
            end
            aa.ResetOnSpawn = false
            aa.IgnoreGuiInset = true
            aa.DisplayOrder = math.max(aa.DisplayOrder, 1000)
            pcall(function()
                aa.ClipToDeviceSafeArea = false
            end)
            pcall(function()
                aa.ScreenInsets = Enum.ScreenInsets.None
            end)
            if aa.Parent ~= mL then
                aa.Parent = mL
            end
        end
        nY(mR.ScreenGui)
        if mR.ActiveLoading and mR.ActiveLoading.ScreenGui then
            nY(mR.ActiveLoading.ScreenGui)
        end
        for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
            local nZ_2 = mL:FindFirstChild(v) or mn:FindFirstChild(v)
            if nZ_2 then
                nY(nZ_2)
            end
        end
    end
    mR()
    task.spawn(worker)
    nm = loadstring(game:HttpGet(mJ .. "addons/ThemeManager.lua"))()
    nA_1 = loadstring(game:HttpGet(mJ .. "addons/SaveManager.lua"))()
else
    mR = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    mJ = function()
        local function nY(aa)
            local nT = not aa
            local nX = if nT then 1 else 0
            local nV = 3671 * nX + 851 * (1 - nX)
            local nW = 484 * nX + 1029 * (1 - nX)
            if not ((nV * 471 + nW * 2600 + nV * nW) % 16777213 == 4764205) then
                nT = not aa:IsA("ScreenGui")
            end
            if nT then
                return
            end
            aa.ResetOnSpawn = false
            aa.IgnoreGuiInset = true
            aa.DisplayOrder = math.max(aa.DisplayOrder, 1000)
            pcall(function()
                aa.ClipToDeviceSafeArea = false
            end)
            pcall(function()
                aa.ScreenInsets = Enum.ScreenInsets.None
            end)
            if aa.Parent ~= mL then
                aa.Parent = mL
            end
        end
        nY(mR.ScreenGui)
        if mR.ActiveLoading and mR.ActiveLoading.ScreenGui then
            nY(mR.ActiveLoading.ScreenGui)
        end
        for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
            local nZ_1 = mL:FindFirstChild(v) or mn:FindFirstChild(v)
            if nZ_1 then
                nY(nZ_1)
            end
        end
    end
    mJ()
    task.spawn(worker)
    nA_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    nm = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
end
if getgenv then
    getgenv().__OuroborosCheesePullLib = mR
end
Toggles, Options, m3, nu_2, no, m0, mE, nr, m1, mH, mg, mM, nk, mV, mu, mi, m6, mz, nl, m8, mW, mK, nb, mr, mC, ne, mA, nn, mj, mX, m7, mZ, mx, m2, mO, mP, nc, nq = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = mR.Toggles
Options = mR.Options
m3 = {
    Streaming = false,
    StreamStartedAt = 0,
    LastBuy = 0,
    LastNext = 0,
    LastPlace = 0,
    LastPlaceDesk = 0,
    LastOpen = 0,
    LastExpand = 0,
    LastRebirth = 0,
    LastIndex = 0,
    LastStreamStart = 0,
    LastPull = 0,
    LastMysteryBox = 0,
    StreamFns = nil,
    StreamState = nil
}
m0 = fn630
mE = fn168
nr = fn381
m1 = fn185
mH = fn177
mg = fn540
mM = fn423
nk = fn516
mV = fn910
mu = fn181
mi = fn579
m6 = fn431
mz = fn889
nl = fn51
m8 = fn783
mW = fn495
mK = fn689
StreamStarted.OnClientEvent:Connect(onOnClientEvent)
StreamEnded.OnClientEvent:Connect(onOnClientEvent2)
nb = fn372
mr = fn204
mC = fn596
ne = fn643
mA = fn487
nn = fn539
mj = fn223
mX = fn408
m7 = fn257
mZ = fn660
mx = fn438
if nu_2 and not mj or (not Toggles or mi) or (not mi and mg or (mj or false)) or not (nu_2 and not mj or (not Toggles or mi) or (not mi and mg or (mj or false))) then
    m2 = fn196
    mO = fn505
else
    mO = fn196
    m2 = fn505
end
mP = fn490
nc = fn14
nq = fn815
local Window = mR:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mQ, Copyable = true }, "|", mU },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
no = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
for k, v in no do
    if k ~= "Info" then
        fn730(v)
    end
end
nB_1, mv, nh, mD, nw_7, nu_4 = nil, nil, nil, nil, nil, nil
mD = fn412
if (not nB_1 and nu_4 or not nB_1 and nB_1) and (nu_4 and not nB_1 and (not nu_4 or nw_7)) or (not nw_7 or nw_7 or (nw_7 or not nw_7)) and (nw_7 or nu_4 or nu_4 and not nB_1) or (not nB_1 or nw_7 or not nB_1 and nB_1 or nu_4 and not nw_7 and (nw_7 and not nu_4)) and ((not nu_4 and nw_7 or (nB_1 or nw_7)) and ((not nB_1 or not nw_7) and (not nu_4 and not nw_7))) or not ((not nB_1 and nu_4 or not nB_1 and nB_1) and (nu_4 and not nB_1 and (not nu_4 or nw_7)) or (not nw_7 or nw_7 or (nw_7 or not nw_7)) and (nw_7 or nu_4 or nu_4 and not nB_1) or (not nB_1 or nw_7 or not nB_1 and nB_1 or nu_4 and not nw_7 and (nw_7 and not nu_4)) and ((not nu_4 and nw_7 or (nB_1 or nw_7)) and ((not nB_1 or not nw_7) and (not nu_4 and not nw_7)))) then
    nw_7 = function()
        local s4
        local s0
        s0 = nil
        s4 = nil
        local Label, Label2, Label3, s2, s3
        s4 = "Unknown"
        pcall(function()
            local sJ_2
            local sI_3
            if identifyexecutor then
                sJ_2, sI_3 = identifyexecutor()
                local sK = sJ_2 ~= ""
                local sL = type(sJ_2) == "string" and sK
                if sL then
                    local sK_2 = type(sI_3) == "string" and sI_3 ~= "" and sJ_2 .. " " .. sI_3
                    s4 = sK_2 or sJ_2
                end
            end
        end)
        local s5 = mD()
        s0 = os.clock()
        s3 = function()
            local sQ = math.floor(os.clock() - s0)
            if sQ < 60 then
                return sQ .. "s"
            elseif sQ < 3600 then
                return string.format("%dm %ds", sQ // 60, sQ % 60)
            else
                return string.format("%dh %dm", sQ // 3600, sQ % 3600 // 60)
            end
        end
        local UserGroup = no.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = mq, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(mE("User", mq.DisplayName .. " @" .. mq.Name, mt), true)
        UserGroup:AddLabel(mE("UserId", tostring(mq.UserId), mp), true)
        UserGroup:AddLabel(mE("Executor", s4 .. "  " .. s5, mt), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(mE("Session", s3(), mm), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                nr(mq.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                nr("https://www.roblox.com/users/" .. tostring(mq.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = no.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddDivider("Server")
        SessionGroup:AddLabel(mE("Game", mU, mp), true)
        Label2 = SessionGroup:AddLabel(mE("Players", "0/0", mt), true)
        s2 = tostring(game.JobId)
        local s6_3 = #s2 > 18 and string.sub(s2, 1, 18) .. "..."
        local s6_4 = s6_3 or s2
        SessionGroup:AddLabel(mE("Job", s6_4, mh), true)
        Label = SessionGroup:AddLabel(mE("Ping", "0 ms", mm), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Server",
            Func = function()
                TeleportService:Teleport(game.PlaceId, mq)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                nr(s2, "Copied Job ID")
            end
        })
        task.spawn(function()
            local sW_2
            local sV_3
            while true do
                task.wait(1)
                if mR.Unloaded then
                    break
                end
                Label3:SetText(mE("Session", s3(), mm))
                Label2:SetText(mE("Players", #mf:GetPlayers() .. "/" .. tostring(mf.MaxPlayers), mt))
                sV_3, sW_2 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local sV_4 = sV_3 and sW_2 .. " ms" or "n/a"
                Label:SetText(mE("Ping", sV_4, mm))
            end
        end)
        local SocialsGroup = no.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = m1 })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                nr(mI, "Copied Rscripts profile to clipboard")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                nr(mB, "Copied website link")
            end
        })
    end
else
    mv = function()
        local s4
        local s0
        s0 = nil
        s4 = nil
        local Label, Label2, Label3, s2, s3
        s4 = "Unknown"
        pcall(function()
            local sJ_1
            local sI_1
            if identifyexecutor then
                sJ_1, sI_1 = identifyexecutor()
                local sK = sJ_1 ~= ""
                local sL = type(sJ_1) == "string" and sK
                if sL then
                    local sK_1 = type(sI_1) == "string" and sI_1 ~= "" and sJ_1 .. " " .. sI_1
                    s4 = sK_1 or sJ_1
                end
            end
        end)
        local s5 = mD()
        s0 = os.clock()
        s3 = function()
            local sQ = math.floor(os.clock() - s0)
            if sQ < 60 then
                return sQ .. "s"
            elseif sQ < 3600 then
                return string.format("%dm %ds", sQ // 60, sQ % 60)
            else
                return string.format("%dh %dm", sQ // 3600, sQ % 3600 // 60)
            end
        end
        local UserGroup = no.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = mq, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(mE("User", mq.DisplayName .. " @" .. mq.Name, mt), true)
        UserGroup:AddLabel(mE("UserId", tostring(mq.UserId), mp), true)
        UserGroup:AddLabel(mE("Executor", s4 .. "  " .. s5, mt), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(mE("Session", s3(), mm), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                nr(mq.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                nr("https://www.roblox.com/users/" .. tostring(mq.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = no.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddDivider("Server")
        SessionGroup:AddLabel(mE("Game", mU, mp), true)
        Label2 = SessionGroup:AddLabel(mE("Players", "0/0", mt), true)
        s2 = tostring(game.JobId)
        local s6_1 = #s2 > 18 and string.sub(s2, 1, 18) .. "..."
        local s6_2 = s6_1 or s2
        SessionGroup:AddLabel(mE("Job", s6_2, mh), true)
        Label = SessionGroup:AddLabel(mE("Ping", "0 ms", mm), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Server",
            Func = function()
                TeleportService:Teleport(game.PlaceId, mq)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                nr(s2, "Copied Job ID")
            end
        })
        task.spawn(function()
            local sW_1
            local sV_1
            while true do
                task.wait(1)
                if mR.Unloaded then
                    break
                end
                Label3:SetText(mE("Session", s3(), mm))
                Label2:SetText(mE("Players", #mf:GetPlayers() .. "/" .. tostring(mf.MaxPlayers), mt))
                sV_1, sW_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local sV_2 = sV_1 and sW_1 .. " ms" or "n/a"
                Label:SetText(mE("Ping", sV_2, mm))
            end
        end)
        local SocialsGroup = no.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = m1 })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                nr(mI, "Copied Rscripts profile to clipboard")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                nr(mB, "Copied website link")
            end
        })
    end
end
nw_7()
local CratesGroup = no.Main:AddLeftGroupbox("Crates", "package")
CratesGroup:AddToggle("AutoBuyCrate", { Text = "Auto Buy Crate", Default = false })
CratesGroup:AddToggle("AutoBuyNextCrate", { Text = "Auto Buy Next Crate", Default = false })
CratesGroup:AddToggle("AutoOpenReadyCrate", { Text = "Auto Open Ready Crate", Default = false })
CratesGroup:AddDivider("Place")
CratesGroup:AddToggle("AutoPlaceCrate", { Text = "Auto Place Crate", Default = false })
CratesGroup:AddToggle("AutoPlaceDesk", { Text = "Auto Place Desk", Default = false })
CratesGroup:AddDropdown("PlaceMode", { Text = "Place Mode", Values = { "Random Spot", "Near Desk" }, Default = "Random Spot" })
CratesGroup:AddSlider("PlaceRotation", { Text = "Place Rotation", Default = 0, Min = 0, Max = 3, Rounding = 0 })
local StreamGroup = no.Main:AddRightGroupbox("Stream", "radio")
StreamGroup:AddToggle("AutoStream", { Text = "Auto Stream", Default = false })
StreamGroup:AddDropdown("StreamDesk", { Text = "Desk", Values = { "Best Placed Desk", "Random Desk" }, Default = "Best Placed Desk" })
StreamGroup:AddSlider("AutoFinishMinutes", { Text = "Auto Finish After Minutes", Default = 5, Min = 1, Max = 60, Rounding = 0 })
StreamGroup:AddToggle("AutoMysteryBox", { Text = "Auto Mystery Box", Default = false })
local ProgressGroup = no.Main:AddLeftGroupbox("Progress", "trending-up")
ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
ProgressGroup:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
ProgressGroup:AddToggle("AutoExpandPlot", { Text = "Auto Expand Plot", Default = false })
local function nu_5()
    local MovementGroup = no.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = no.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    m9.JumpRequest:Connect(function()
        if mR.Unloaded then
            return
        end
        if not mH("InfJump") then
            return
        end
        local s9 = mV()
        if s9 then
            s9:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
    ng.Stepped:Connect(function()
        if mR.Unloaded then
            return
        end
        if mH("NoClip") then
            local Character = mq.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local tb_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if tb_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    ng.RenderStepped:Connect(function(hf)
        if mR.Unloaded then
            return
        end
        if mH("WalkSpeedEnabled") then
            local tm_1 = mV()
            if tm_1 then
                tm_1.WalkSpeed = mM("WalkSpeed", 32)
            end
        end
        if mH("Fly") then
            local tm_2 = nk()
            local tn = mV()
            local CurrentCamera = mw.CurrentCamera
            if tm_2 and tn and CurrentCamera then
                tn.PlatformStand = true
                local tn_1 = Vector3.zero
                local tu = if m9:IsKeyDown(Enum.KeyCode.W) then 1 else 0
                if tu == 1 then
                    tn_1 += CurrentCamera.CFrame.LookVector
                end
                if m9:IsKeyDown(Enum.KeyCode.S) then
                    tn_1 -= CurrentCamera.CFrame.LookVector
                end
                if m9:IsKeyDown(Enum.KeyCode.A) then
                    tn_1 -= CurrentCamera.CFrame.RightVector
                end
                local tu_1 = if m9:IsKeyDown(Enum.KeyCode.D) then 1 else 0
                if tu_1 == 1 then
                    tn_1 += CurrentCamera.CFrame.RightVector
                end
                if m9:IsKeyDown(Enum.KeyCode.Space) then
                    tn_1 += Vector3.yAxis
                end
                if m9:IsKeyDown(Enum.KeyCode.LeftControl) then
                    tn_1 -= Vector3.yAxis
                end
                if tn_1.Magnitude > 0 then
                    tm_2.CFrame = tm_2.CFrame + tn_1.Unit * mM("FlySpeed", 60) * hf
                end
                tm_2.AssemblyLinearVelocity = Vector3.zero
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local tv = mV()
            if tv then
                tv.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local tA = mV()
            if tA then
                tA.WalkSpeed = 16
            end
        end
    end)
    local function hC(hD)
        pcall(function()
            GuiService:SetGameplayPausedNotificationEnabled(not hD)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = mL:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hD
            end
        end)
        if not hD then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(mq, "GameplayPaused", false)
            else
                mq.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        hC(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not mR.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hC(true)
            end
        end
    end)
    local function hU(hV)
        if not hV:IsA("ProximityPrompt") then
            return
        end
        hV.HoldDuration = 0
        hV.MaxActivationDistance = 50
        hV.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in mw:GetDescendants() do
                pcall(hU, descendant)
            end
            connection = mw.DescendantAdded:Connect(function(h2)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(hU, h2)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    mR:OnUnload(function()
        hC(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
nu_5()
mv = no.Settings:AddLeftGroupbox("Menu")
mv:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
mR.ToggleKeybind = Options.MenuKeybind
local function nt_2()
    local connection
    local h9 = 0
    local ia = tick()
    mv:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local Label = mv:AddLabel("AFK triggers: 0")
    local function id()
        local CurrentCamera = mw.CurrentCamera
        if not CurrentCamera then
            return
        end
        m4:CaptureController()
        m4:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        h9 += 1
        ia = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. h9)
        end)
    end
    connection = mq.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(id)
        end
    end)
    task.spawn(function()
        while not mR.Unloaded do
            task.wait(2)
            local tX = Toggles.AntiAfk.Value and tick() - ia >= 60
            if tX then
                pcall(id)
            end
        end
    end)
    mv:AddButton({
        Text = "Unload UI",
        Func = function()
            mR:Unload()
        end
    })
    mR:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
nt_2()
nA_1:SetLibrary(mR)
nA_1:SetFolder("OuroborosHub")
nA_1:SaveDefault("Evil Hello Kitty")
nm:SetLibrary(mR)
nm:IgnoreThemeSettings()
nm:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
nm:SetFolder("OuroborosHub/StreamACheesePull")
nh = nm:BuildConfigSection(no.Settings)
local function nC()
    local function iH(iI, iJ)
        local t0 = iI == "Toggle" and Toggles
        local t5 = if t0 then 1 else 0
        local t3 = 1317 * t5 + 2196 * (1 - t5)
        local t4 = 3124 * t5 + 776 * (1 - t5)
        if not ((t3 * 2651 + t4 * 304 + t3 * t4) % 16777213 == 8555371) then
            t0 = Options
        end
        local t0_1 = t0[iJ]
        local t__2 = type(t0_1) == "table" and t0_1.Type == iI
        return t__2 and t0_1 or nil
    end
    local function iR(iS, iT)
        local Type = iT.Type
        if Type == "Toggle" then
            return { idx = iS, type = "Toggle", value = iT.Value == true }
        elseif Type == "Slider" then
            return { idx = iS, type = "Slider", value = tostring(iT.Value) }
        elseif Type == "Dropdown" then
            return { idx = iS, type = "Dropdown", multi = iT.Multi == true, value = iT.Value }
        elseif Type == "Input" then
            local t7 = iT.Value or ""
            return { idx = iS, type = "Input", text = tostring(t7) }
        elseif Type == "ColorPicker" then
            return { idx = iS, type = "ColorPicker", value = iT.Value:ToHex(), transparency = iT.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = iS,
                type = "KeyPicker",
                mode = iT.Mode,
                key = iT.Value,
                modifiers = iT.Modifiers,
                toggled = iT.Toggled
            }
        else
            return nil
        end
    end
    local function iV()
        local ua = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local ub = type(v) == "table" and type(v.Type) == "string" and not nm.Ignore[k]
                if ub then
                    local ub_1 = iR(k, v)
                    if ub_1 then
                        ua[#ua + 1] = ub_1
                    end
                end
            end
        end
        table.sort(ua, function(i4, i5)
            if i4.type ~= i5.type then
                return i4.type < i5.type
            end
            return i4.idx < i5.idx
        end)
        return { objects = ua }
    end
    local function i6(i7)
        local uu
        uu = nil
        local uw = type(i7) ~= "table" or type(i7.idx) ~= "string" or type(i7.type) ~= "string"
        local uA = if uw then 1 else 0
        local uy = 784 * uA + 335 * (1 - uA)
        local uz = 3851 * uA + 253 * (1 - uA)
        if not ((uy * 3444 + uz * 3944 + uy * uz) % 16777213 == 4130411) then
            uw = nm.Ignore[i7.idx]
        end
        if uw then
            return false
        end
        uu = iH(i7.type, i7.idx)
        if not uu then
            return false
        end
        local uw_1 = pcall(function()
            if i7.type == "Input" then
                if type(i7.text) ~= "string" then
                    return
                end
                uu:SetValue(i7.text)
            elseif i7.type == "ColorPicker" then
                uu:SetValueRGB(Color3.fromHex(i7.value), i7.transparency)
            elseif i7.type == "KeyPicker" then
                uu:SetValue({ i7.key, i7.mode, i7.modifiers })
                if i7.mode == "Toggle" and i7.toggled ~= nil then
                    uu.Toggled = i7.toggled
                    uu:Update()
                end
            else
                uu:SetValue(i7.value)
            end
        end)
        return uw_1
    end
    nh:AddDivider()
    nh:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    nh:AddButton("Export Config to Clipboard", function()
        local uC_1
        local uB_1
        uB_1, uC_1 = pcall(HttpService.JSONEncode, HttpService, iV())
        if not uB_1 then
            mR:Notify("Failed to encode the config")
            return
        end
        local uB_2 = setclipboard or toclipboard
        local uB_3 = type(uB_2) ~= "function" or not pcall(uB_2, uC_1)
        if uB_3 then
            mR:Notify("Your executor does not support copying to the clipboard")
            return
        end
        mR:Notify("Config copied to clipboard", 6)
    end)
    nh:AddButton("Import Config from Clipboard Text", function()
        local uK_1
        local uI = Options.SaveManager_ImportSource.Value or ""
        local uI_1
        local uJ = tostring(uI):match("^%s*(.-)%s*$")
        if uJ == "" then
            mR:Notify("Paste an exported config into the box first")
            return
        end
        uI_1, uK_1 = pcall(HttpService.JSONDecode, HttpService, uJ)
        local uJ_1 = not uI_1 or type(uK_1) ~= "table"
        local uR = if uJ_1 then 1 else 0
        local uP = 132 * uR + 2536 * (1 - uR)
        local uQ = 1727 * uR + 649 * (1 - uR)
        if not ((uP * 1018 + uQ * 786 + uP * uQ) % 16777213 == 1719762) then
            uJ_1 = type(uK_1.objects) ~= "table"
        end
        if uJ_1 then
            mR:Notify("That is not a valid exported config")
            return
        end
        local uI_2 = 0
        for i, v in ipairs(uK_1.objects) do
            if i6(v) then
                uI_2 += 1
            end
        end
        if uI_2 == 0 then
            mR:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local uK_2 = uI_2 == 1 and "" or "s"
        mR:Notify(("Imported %d setting%s"):format(uI_2, uK_2), 6)
    end)
end
nC()
nA_1:ApplyToTab(no.Settings)
nA_1:LoadDefault()
nm:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(worker9)
task.spawn(worker10)
