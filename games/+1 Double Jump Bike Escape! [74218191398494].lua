local md
local Label
local RequestAuraAction
local Toggles
local mj
local m0
local mI
local ItemShopRequest
local connection3
local CoinConfig
local nv
local RequestWorldTeleport
local nc
local mc
local mU
local mB
local VirtualUser
local mi
local m_
local mH
local no
local mo
local m5
local mN
local nu
local mu
local nb
local ProgressionConfig
local mA
local nh
local mh
local mZ
local mG
local nn
local mn
local m4
local mM
local nt
local mt
local na
local mS
local mz
local ng
local Progression
local mY
local RequestRebirth
local StageTrackerData
local m3
local mL
local ns
local ms
local m9
local ny
local my
local nf
local mf
local mX
local mE
local nl
local ml
local connection
local mK
local connection2
local mr
local m8
local mQ
local nx
local RequestTrailAction
local ne
local me
local mW
local mD
local nk
local mk
local m1
local WorldContext
local nq
local mq
local m7
local mP
local Library
local mw
local Options
local function fn14(f3)
    if not f3 or not f3.Part or not f3.Part.Parent then
        return false
    end
    local Position = f3.Part.Position
    nv(Position, nl)
    if not f3.Part.Parent then
        return true
    end
    mM(f3)
    nl = Position
    task.wait(0.18)
    local sh_2 = f3.Part.Parent and ng[f3.Id] and os.clock() - ng[f3.Id] < 2
    if sh_2 then
        nv(f3.Part.Position, nl)
        if f3.Part.Parent then
            mM(f3)
            nl = f3.Part.Position
            task.wait(0.2)
        end
    end
    return not f3.Part.Parent
end
local function worker5()
    while not Library.Unloaded do
        local tw = mq("AutoBuyWinsShop") and not mq("AutoWin") and not mq("AutoTrain") and not mq("AutoCollectCoins")
        if tw then
            pcall(mZ)
        end
        task.wait(1)
    end
end
local function onUnload()
    Library:Unload()
end
local function fn120(bf)
    if string.find(bf, "2xWin", 1, true) then
        return string.gsub(bf, "2xWin$", "Win")
    end
    return bf
end
local function fn134()
    local WinClaimTeleport = ProgressionConfig.WinClaimTeleport
    local pN = WinClaimTeleport and WinClaimTeleport.SpawnPath
    local pO = pN
    if pN then
        pN = m1(pO)
    end
    local pO_1 = WinClaimTeleport
    local pP = pN
    if pO_1 then
        pO_1 = tonumber(WinClaimTeleport.Clearance)
    end
    local pM_1 = pO_1 or 4
    if pN then
        pN = pP:IsA("BasePart")
    end
    if pN then
        return CFrame.new(pP.Position + Vector3.new(0, pM_1, 0))
    end
    local LobbyThings = workspace:FindFirstChild("LobbyThings")
    local pN_1 = LobbyThings and LobbyThings:FindFirstChild("SpawnLocation")
    local pM_3 = pN_1
    if pN_1 then
        pN_1 = pM_3:IsA("BasePart")
    end
    if pN_1 then
        return CFrame.new(pM_3.Position + Vector3.new(0, pM_1, 0))
    end
    return nil
end
local function fn143(L, M)
    return string.format('<font color="%s">%s</font>', M, L)
end
local function worker4()
    while not Library.Unloaded do
        if mq("AutoBuyItemShop") then
            pcall(mr)
        end
        task.wait(2)
    end
end
local function worker9()
    local tj = tonumber(mN("Wins", 0)) or 0
    local tk = tj
    local tj_1 = os.clock()
    local tl = 0
    local tm
    while not Library.Unloaded do
        if mq("AutoWin") then
            local tn_1 = tonumber(mN("Wins", 0)) or 0
            if tn_1 ~= tk then
                tk = tn_1
                tj_1 = os.clock()
                tm = nil
            end
            local tn_2 = m8()
            if tn_2 and tn_2.Position.Y >= 2022.7 then
                local tn_4 = tm or os.clock()
                tm = tn_4
            else
                tm = nil
            end
            local tn_5 = os.clock() - tj_1 >= 5
            local to_3 = tm and os.clock() - tm >= 4
            local tp_1 = tn_5
            if tp_1 then
                tp_1 = to_3
            end
            if tp_1 then
                tp_1 = os.clock() - tl >= 3
            end
            if tp_1 then
                tl = os.clock()
                pcall(mw)
                tj_1 = os.clock()
                tm = nil
                task.wait(0.5)
            else
                pcall(mL)
            end
        elseif mq("AutoTrain") then
            tm = nil
            pcall(mQ)
        elseif mt then
            tm = nil
            mt = nil
        else
            tm = nil
        end
        local wait = task.wait
        local to_4 = (mq("AutoWin"))
        if to_4 then
            local max = math.max
            local tq = tonumber(nx("WinDelay", 0.5)) or 0.5
            to_4 = max(tq, 0)
        end
        local tp_3 = to_4 or 0.05
        wait(tp_3)
    end
end
local function onOnClientEvent(fj)
    local rO = typeof(fj) ~= "table" or typeof(fj.CoinId) ~= "string"
    if rO then
        return
    end
    if fj.Action == "Rejected" then
        ng[fj.CoinId] = os.clock()
    elseif fj.Action == "Collected" then
        ng[fj.CoinId] = nil
        nb[fj.CoinId] = os.clock()
    end
end
local function worker()
    local s4_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local s3 = math.floor(os.clock() - mz)
        if s3 < 60 then
            s4_1 = s3 .. "s"
        elseif s3 < 3600 then
            s4_1 = string.format("%dm %ds", s3 // 60, s3 % 60)
        else
            s4_1 = string.format("%dh %dm", s3 // 3600, s3 % 3600 // 60)
        end
        Label:SetText(mU("Session time", s4_1, my))
    end
end
local function fn175()
    local Character = nc.Character
    local oG = Character and Character:FindFirstChildOfClass("Humanoid")
    return oG
end
local function fn184()
    local qz = nh()
    if not qz then
        return
    end
    local qA = m1(qz.Path)
    local qz_1 = not qA or not qA:IsA("BasePart")
    if qz_1 then
        return
    end
    mn = true
    mt = CFrame.new(qA.Position + Vector3.new(0, 3, 0))
    local qz_2 = m_()
    if qz_2 and qz_2.Health > 0 then
        qz_2:Move(Vector3.new(0, 0, -1), false)
    end
end
local function fn192(bY)
    return CFrame.new(bY.X, bY.Y + md, bY.Z)
end
local function fn197(aP, aQ)
    if aP.Amount == aQ.Amount then
        return aP.Name < aQ.Name
    end
    return aP.Amount < aQ.Amount
end
local function fn204(b2)
    return CFrame.new(b2.X, b2.Y + 3.5, b2.Z)
end
local function fn228(X)
    local ot = Toggles[X]
    return ot ~= nil and ot.Value == true
end
local function fn231()
    if WorldContext.GetWorldKey() == "World2" then
        return false
    elseif WorldContext.CanTeleportTo("World2") ~= true then
        return false
    else
        local pF = if os.clock() - ml < 5 then 1 else 0
        if pF == 1 then
            return false
        end
        ml = os.clock()
        RequestWorldTeleport:FireServer("World2")
        return true
    end
end
local function fn245()
    if setclipboard then
        setclipboard(m7)
    elseif toclipboard then
        toclipboard(m7)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
local function fn252(bQ)
    local WinButtons = workspace:FindFirstChild("WinButtons")
    local pH = WinButtons and WinButtons:FindFirstChild(bQ)
    local pG_1 = pH
    if pH then
        pH = pG_1:FindFirstChild("Touch")
    end
    local pG_2 = pH
    if pH then
        pH = pG_2:IsA("BasePart")
    end
    if pH then
        return pG_2
    end
    return nil
end
local function fn264(O, P, Q)
    return string.format("<b>%s</b> %s %s", O, m3("-", "#5a6070"), m3(P, Q))
end
local function fn283()
    local rb = tonumber(mN("Wins", 0)) or 0
    local rb_1 = nk("OwnedBikes")
    local rd = WorldContext.GetConfiguredBikePedestals()
    local re = {}
    for k, v in pairs(rd) do
        if not rb_1[v] then
            local rd_1 = ProgressionConfig.GetBike(v)
            if rd_1 then
                local rf = tonumber(rd_1.CostWins) or 0
                local rf_1 = tonumber(string.match(k, "%d+")) or 0
                re[#re + 1] = { Id = v, Cost = rf, Pedestal = k, Order = rf_1 }
            end
        end
    end
    table.sort(re, function(ep, eq)
        if ep.Cost == eq.Cost then
            return ep.Order < eq.Order
        end
        return ep.Cost < eq.Cost
    end)
    local rb_2 = re[1]
    if not rb_2 or rb < rb_2.Cost then
        return
    end
    local LobbyThings = workspace:FindFirstChild("LobbyThings")
    local rd_4 = LobbyThings and LobbyThings:FindFirstChild("WinsShop")
    local rc_2 = rd_4
    if rd_4 then
        rd_4 = rc_2:FindFirstChild("Pedestals")
    end
    local rc_3 = rd_4
    if rd_4 then
        rd_4 = rc_3:FindFirstChild(rb_2.Pedestal)
    end
    local rb_3 = rd_4
    local rc_4 = rb_3 and rb_3:FindFirstChild("Touch")
    local rc_5 = not rc_4 or not rc_4:IsA("BasePart")
    if rc_5 then
        local rc_6 = WorldContext.CanTeleportTo("World2") == true and WorldContext.GetWorldKey() ~= "World2"
        if rc_6 then
            local rq = if os.clock() - ml >= 5 then 1 else 0
            if rq == 1 then
                ml = os.clock()
                RequestWorldTeleport:FireServer("World2")
            end
        end
        return
    end
    mh(mY(rc_4.Position))
    task.wait(0.05)
    mh(mP(rc_4))
    no(rc_4)
end
local function fn299()
    mt = nil
    connection:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    print("+1 Double Jump Bike Escape unloaded")
end
local function fn310()
    local qe_1
    local qd_1
    local qc = mW[nx("WinPlate", "")]
    if not qc then
        return
    end
    qe_1, qd_1 = mB(qc.Name)
    if not qe_1 then
        mf()
        return
    end
    local qf = qd_1 or nn(qc.Name)
    local qd_2 = qf or mi(qc.Name, qe_1, 2.5)
    if not qd_2 then
        mw()
        return
    end
    mG(qd_2)
end
local function fn333(aq, ar)
    local oI = Progression:FindFirstChild(aq)
    local oJ = oI and oI:IsA("ValueBase")
    if oJ then
        return oI.Value
    end
    return ar
end
local function onInputBegan()
    mH = tick()
end
local function onHeartbeat()
    if not mt then
        return
    end
    local o3 = m8()
    if not o3 then
        return
    end
    if mn and (o3.Position - mt.Position).Magnitude < 8 then
        return
    end
    o3.AssemblyLinearVelocity = Vector3.zero
    o3.AssemblyAngularVelocity = Vector3.zero
    o3.CFrame = mt
end
local function fn401(aw, ax)
    local oL = Progression:FindFirstChild(aw)
    local oM = oL and oL:FindFirstChild(ax)
    local oM_1 = oM ~= nil and oM:IsA("BoolValue") and oM.Value == true
    return oM_1
end
local function fn421()
    local pU = ne()
    if not pU then
        mt = nil
        return
    end
    mh(pU)
    mD(pU.Position)
    task.wait(0.4)
    mt = nil
    local pV = m8()
    if pV then
        pV.AssemblyLinearVelocity = Vector3.zero
        pV.AssemblyAngularVelocity = Vector3.zero
        pV.CFrame = pU
    end
end
local function fn441(ac, ad)
    local ow = Options[ac]
    if ow == nil or ow.Value == nil then
        return ad
    end
    return ow.Value
end
local function worker7()
    while not Library.Unloaded do
        if mq("AutoBuyTrails") then
            pcall(m9)
        end
        if mq("AutoBuyAuras") then
            pcall(mo)
        end
        task.wait(1)
    end
end
local function fn480(bG)
    local pA_1
    local pz_1
    pz_1, pA_1 = m4(bG)
    if pz_1 then
        return pz_1, pA_1
    end
    return mu(bG), nil
end
local function fn509(fE, fF)
    mh(mY(fE))
    mD(fE)
    task.wait(0.08)
    mh(CFrame.new(fE + Vector3.new(0, 4, 0)))
    local r5 = fF and (fE - fF).Magnitude or math.huge
    local max2 = math.max
    local r6 = (tonumber(CoinConfig.MaxCollectionSweepDistance))
    local sc = if r6 then 1 else 0
    local sa = 2074 * sc + 3156 * (1 - sc)
    local sb = 2615 * sc + 3611 * (1 - sc)
    if not ((sa * 1769 + sb * 1165 + sa * sb) % 16777213 == 12138891) then
        r6 = 140
    end
    local r7 = max2(1, r6)
    local r5_2 = 0.35
    if r5 > r7 then
        r5_2 = 0.9
    elseif r5 > r7 * 0.5 then
        r5_2 = 0.6
    end
    local max = math.max
    local r6_1 = (tonumber(CoinConfig.CollectionValidationGraceSeconds))
    local sc_1 = if r6_1 then 1 else 0
    local sa_1 = 1631 * sc_1 + 1307 * (1 - sc_1)
    local sb_1 = 1087 * sc_1 + 529 * (1 - sc_1)
    if not ((sa_1 * 4005 + sb_1 * 740 + sa_1 * sb_1) % 16777213 == 9109432) then
        r6_1 = 0.2
    end
    local r7_1 = max(0.2, r6_1)
    local r6_2 = tonumber(CoinConfig.CollectionValidationWindow) or 0.65
    local r8 = max(0.65, r6_2)
    local r5_3 = math.max(r5_2, r7_1 + r8 * 0.5)
    task.wait(r5_3)
end
local function fn541()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    mE = tick()
end
local function onCopyJoinScript_JobID()
    local s1 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mS)
    if setclipboard then
        setclipboard(s1)
    elseif toclipboard then
        toclipboard(s1)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn566()
    local qZ_1
    local qX = tonumber(mN("Wins", 0)) or 0
    local qX_1
    qZ_1, qX_1 = nil, -1
    for i, v in ipairs(ProgressionConfig.GetOrderedAuras()) do
        local q__1 = v.AuraId
        local q0 = tonumber(v.CostWins) or 0
        local q0_1 = v.Aura and tonumber(v.Aura.WinMultiplier)
        local q0_2 = q0_1 or 0
        if ms("OwnedAuras", q__1) then
            if q0_2 > qX_1 then
                qZ_1, qX_1 = q__1, q0_2
            end
        elseif qX >= q0 then
            RequestAuraAction:FireServer(q__1, "BuyWithWins")
            return
        end
    end
    local qX_2 = mN("EquippedAura", "") or ""
    local qY_1 = tostring(qX_2)
    if qZ_1 and qY_1 ~= qZ_1 then
        RequestAuraAction:FireServer(qZ_1, "ToggleEquip")
    end
end
local function fn577(bh)
    return string.find(bh, "2xWin", 1, true) ~= nil
end
local function onInputChanged(hD)
    local UserInputType = hD.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        mH = tick()
    end
end
local function fn590(gM)
    local DiscordGroup = gM:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = na })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = na })
end
local function fn605()
    local Character = nc.Character
    local oD = Character and Character:FindFirstChild("HumanoidRootPart")
    return oD
end
local function fn610()
    local sm = m8()
    if not sm then
        return
    end
    local Position = sm.Position
    local max = math.max
    local so = tonumber(CoinConfig.CollectionHorizontalRadius) or 10
    local sp = max(0.1, so)
    local so_1 = tonumber(CoinConfig.CollectionVerticalRadius) or 12
    local sq = max(0.1, so_1)
    local floor = math.floor
    local sr = tonumber(CoinConfig.MaxCollectionsPerPlayerPerScan) or 6
    local ss = max(1, floor(sr))
    local sm_2 = 0
    for i, v in ipairs(m0()) do
        if sm_2 >= ss then
            break
        end
        if v.Part and v.Part.Parent then
            local so_4 = v.Part.Position - Position
            if (so_4.X / sp) ^ 2 + (so_4.Y / sq) ^ 2 + (so_4.Z / sp) ^ 2 <= 1 then
                mM(v)
                sm_2 = sm_2 + 1
            end
        end
    end
end
local function fn612(b0)
    return CFrame.new(b0.Position.X, b0.Position.Y + b0.Size.Y / 2 + 3.5, b0.Position.Z)
end
local function fn636(cR)
    mh(mY(cR.Position))
    mD(cR.Position)
    task.wait(0.03)
    mh(mP(cR))
    no(cR)
end
local function fn641(ca)
    local pK = m8()
    if not pK then
        return
    end
    mn = false
    mt = ca
    pK.AssemblyLinearVelocity = Vector3.zero
    pK.AssemblyAngularVelocity = Vector3.zero
    pK.CFrame = ca
end
local function fn666()
    local rT = CoinConfig.RuntimeFolderName or "Collectibles"
    local rU = workspace:FindFirstChild(tostring(rT))
    if not rU then
        return {}
    end
    local rT_1 = {}
    for i, child in rU:GetChildren() do
        if child:IsA("BasePart") then
            local attr2 = child:GetAttribute("CoinId")
            local attr = child:GetAttribute("PersonalOwnerUserId")
            local rW = typeof(attr2) == "string"
            if rW then
                rW = attr == nil or attr == nc.UserId
            end
            if rW then
                local rV_1 = not nb[attr2] or os.clock() - nb[attr2] > 1
                if rV_1 then
                    local rV_2 = #rT_1 + 1
                    local Position = child.Position
                    local rX_2 = tonumber(child:GetAttribute("CourseProgress")) or 0
                    rT_1[rV_2] = { Part = child, Id = attr2, Position = Position, Progress = rX_2 }
                end
            end
        end
    end
    table.sort(rT_1, function(fB, fC)
        return fB.Progress < fC.Progress
    end)
    return rT_1
end
local function fn672()
    pcall(function()
        ItemShopRequest:InvokeServer("EquipBest", {})
    end)
end
local function fn673(aE)
    local oR = {}
    local oS = Progression:FindFirstChild(aE)
    if not oS then
        return oR
    end
    for i, child in oS:GetChildren() do
        if child:IsA("BoolValue") then
            oR[child.Name] = child.Value == true
        end
    end
    return oR
end
local function fn677()
    local sV_1
    local sU_1
    if identifyexecutor then
        sV_1, sU_1 = identifyexecutor()
        local sW = sV_1 ~= ""
        local sX = type(sV_1) == "string" and sW
        if sX then
            local sW_1 = type(sU_1) == "string" and sU_1 ~= "" and sV_1 .. " " .. sU_1
            nf = sW_1 or sV_1
        end
    end
end
local function fn681(bj)
    local pg = mI(bj)
    local max = math.max
    local pi = math.floor
    local pj = tonumber(StageTrackerData:GetAttribute("ExpectedStageCount")) or 20
    local pk = max(1, pi(pj))
    local po = 1
    while true do
        if not (po <= pk) then
            return nil
        end
        local pp = po
        local attr = StageTrackerData:GetAttribute("Stage" .. pp .. "Name")
        pi = tonumber(StageTrackerData:GetAttribute("Stage" .. pp .. "X"))
        if attr == pg and pi then
            break
        end
        po += 1
    end
    local new = Vector3.new
    local pj_2 = mA(bj) and nq
    local pk_1 = pj_2 or nu
    return new(pi, ny, pk_1)
end
local function worker2()
    while not Library.Unloaded do
        task.wait(2)
        if mq("AntiAfk") then
            local tA = tick() - mH
            local tB = tick() - mE
            if tA >= 300 and tB >= 60 then
                pcall(mk)
            else
                if tA < 300 and tB >= 300 then
                    pcall(mk)
                end
            end
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        if mq("AutoEquipBestItems") then
            pcall(mc)
        end
        task.wait(3)
    end
end
local function fn716()
    local qC = tonumber(mN("RebirthBoostPercent", 0)) or 0
    local qC_1 = (tonumber(mN("Level", 1)))
    local qI = if qC_1 then 1 else 0
    local qG = 4085 * qI + 3178 * (1 - qI)
    local qH = 1277 * qI + 763 * (1 - qI)
    if not ((qG * 2368 + qH * 2148 + qG * qH) % 16777213 == 855608) then
        qC_1 = 1
    end
    local qE = qC_1
    local qC_2 = ProgressionConfig.GetRebirthRequirement(qC)
    if qE < qC_2 then
        return
    end
    RequestRebirth:FireServer()
end
local function fn719()
    local qL_1
    local qJ = tonumber(mN("Wins", 0)) or 0
    local qJ_1
    qL_1, qJ_1 = nil, -1
    for i, v in ipairs(ProgressionConfig.GetOrderedTrails()) do
        local TrailId = v.TrailId
        local qN = tonumber(v.CostWins) or 0
        local qN_1 = v.Trail and tonumber(v.Trail.SpeedMultiplier)
        local qN_2 = qN_1 or 0
        if ms("OwnedTrails", TrailId) then
            if qN_2 > qJ_1 then
                qL_1, qJ_1 = TrailId, qN_2
            end
        elseif qJ >= qN then
            RequestTrailAction:FireServer(TrailId, "BuyWithWins")
            return
        end
    end
    local qJ_2 = mN("EquippedTrail", "") or ""
    local qK_1 = tostring(qJ_2)
    if qL_1 and qK_1 ~= qL_1 then
        RequestTrailAction:FireServer(qL_1, "ToggleEquip")
    end
end
local function worker8()
    while not Library.Unloaded do
        if mq("AutoRebirth") then
            pcall(me)
        end
        task.wait(2)
    end
end
local function onRscripts()
    if setclipboard then
        setclipboard(m5)
    elseif toclipboard then
        toclipboard(m5)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn750(a9)
    local o6 = workspace
    for i, v in ipairs(a9) do
        local o7 = o6 and o6:FindFirstChild(v)
        o6 = o7
    end
    return o6
end
local function fn780()
    local sA = m0()
    if #sA == 0 then
        local sB_1 = not mq("AutoWin") and not mq("AutoTrain")
        if sB_1 then
            mt = nil
        end
        return
    end
    local sB_2 = m8()
    local sC = 1
    if sB_2 then
        local sD = math.huge
        for i, v in ipairs(sA) do
            local Magnitude = (v.Position - sB_2.Position).Magnitude
            if Magnitude < sD then
                sD = Magnitude
                sC = i
            end
        end
    end
    local sB_3 = #sA - 1
    local sR = 0
    while sR <= sB_3 do
        local sS = sR
        local sB_4 = Library.Unloaded or not mq("AutoCollectCoins")
        if sB_4 then
            break
        end
        local sB_5 = mq("AutoWin") or mq("AutoTrain")
        if sB_5 then
            break
        end
        local sB_6 = sA[(sC - 1 + sS) % #sA + 1]
        pcall(ns, sB_6)
        sR += 1
    end
    local sA_1 = not mq("AutoWin") and not mq("AutoTrain")
    if sA_1 then
        mt = nil
    end
end
local function fn833()
    local qk = (tonumber(mN("Rebirths", 0)))
    local qs = if qk then 1 else 0
    local qq = 3880 * qs + 1072 * (1 - qs)
    local qr = 1891 * qs + 3667 * (1 - qs)
    if not ((qq * 2716 + qr * 3088 + qq * qr) % 16777213 == 6937355) then
        qk = 0
    end
    local ql
    local qm = qk
    for i, v in ipairs(ProgressionConfig.Treadmill.Treadmills) do
        local qk_1 = not v.GamePassId
        if qk_1 ~= false then
            qk_1 = qm >= (v.RequiredRebirths or 0)
        end
        if qk_1 then
            local qk_2 = not ql
            if not qk_2 then
                qk_2 = (v.StepMultiplier or 0) > (ql.StepMultiplier or 0)
            end
            if qk_2 then
                ql = v
            end
        end
    end
    return ql
end
local function worker6()
    while not Library.Unloaded do
        if mq("AutoCollectCoins") then
            local tu = mq("AutoWin") or mq("AutoTrain")
            if tu then
                pcall(mX)
                task.wait(0.2)
            else
                pcall(nt)
                task.wait(1)
            end
        else
            task.wait(0.5)
        end
    end
end
local function fn866(cY, cZ, c_)
    local p7 = mY(cZ)
    local p8 = os.clock()
    local qa = p8 + (c_ or 2.5)
    mh(p7)
    mD(cZ)
    while true do
        if not (os.clock() < qa) then
            mh(mK(cZ))
            mD(cZ)
            task.wait(0.2)
            local p8_1 = nn(cY)
            if p8_1 then
                return p8_1
            end
            mh(p7)
            mD(cZ)
            return nn(cY)
        end
        local p8_2 = Library.Unloaded or not mq("AutoWin")
        if p8_2 then
            break
        end
        local p8_3 = nn(cY)
        if p8_3 then
            return p8_3
        end
        mh(p7)
        if os.clock() - mj >= 0.2 then
            mD(cZ)
        end
        task.wait(0.05)
    end
    return nil
end
mc = nil
md = nil
me = nil
mf = nil
Progression = nil
mh = nil
mi = nil
mj = nil
mk = nil
ml = nil
mn = nil
mo = nil
ItemShopRequest = nil
mq = nil
mr = nil
ms = nil
mt = nil
mu = nil
RequestWorldTeleport = nil
mw = nil
RequestTrailAction = nil
my = nil
mz = nil
mA = nil
mB = nil
RequestAuraAction = nil
mD = nil
mE = nil
RequestRebirth = nil
mG = nil
mH = nil
mI = nil
WorldContext = nil
mK = nil
mL = nil
mM = nil
mN = nil
CoinConfig = nil
mP = nil
mQ = nil
mS = nil
ProgressionConfig = nil
mU = nil
Label = nil
mW = nil
mX = nil
mY = nil
mZ = nil
local mm, ItemShopConfig
m_ = nil
m0 = nil
m1 = nil
connection = nil
m3 = nil
m4 = nil
m5 = nil
connection3 = nil
m7 = nil
m8 = nil
m9 = nil
na = nil
nb = nil
nc = nil
Options = nil
ne = nil
nf = nil
ng = nil
nh = nil
VirtualUser = nil
Toggles = nil
nk = nil
nl = nil
StageTrackerData = nil
nn = nil
no = nil
nq = nil
connection2 = nil
ns = nil
nt = nil
nu = nil
nv = nil
Library = nil
nx = nil
ny = nil
local np, nM
np = nil
VirtualUser, nc, m7, m5, ProgressionConfig, ItemShopConfig, CoinConfig, WorldContext, RequestRebirth, RequestAuraAction, RequestTrailAction, RequestWorldTeleport, ItemShopRequest = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local tI_17 = game:GetService("Players")
local tI_1 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
nc = tI_17.LocalPlayer
local tI_15 = "+1 Double Jump Bike Escape"
m7 = "https://discord.gg/ehKVq7pf7v"
m5 = "https://rscripts.net/@Ouroboros"
local tI_4 = tI_1:WaitForChild("GameSystems")
local tI_8 = tI_4:WaitForChild("Remotes")
local tI_6 = tI_4:WaitForChild("Shared")
ProgressionConfig = require(tI_6:WaitForChild("ProgressionConfig"))
ItemShopConfig = require(tI_6:WaitForChild("ItemShopConfig"))
CoinConfig = require(tI_6:WaitForChild("CoinConfig"))
local tI_14 = require(tI_6:WaitForChild("NumberFormatter"))
WorldContext = require(tI_6:WaitForChild("WorldContext"))
RequestRebirth = tI_8:WaitForChild("RequestRebirth")
RequestAuraAction = tI_8:WaitForChild("RequestAuraAction")
RequestTrailAction = tI_8:WaitForChild("RequestTrailAction")
RequestWorldTeleport = tI_8:WaitForChild("RequestWorldTeleport")
ItemShopRequest = tI_8:WaitForChild("ItemShopRequest")
tI_17 = CoinConfig.RequestRemoteName or "CoinRequest"
mm = tI_8:WaitForChild(tI_17)
tI_17 = CoinConfig.StateRemoteName or "CoinState"
Progression, Library, Toggles, Options, my, nM, mW, na, m3, mU, mq, nx, m8, m_, mN, ms, nk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
tI_1 = tI_8:WaitForChild(tI_17)
Progression = nc:WaitForChild("Progression")
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
na = fn245
m3 = fn143
mU = fn264
local tI_11 = "#7fd47f"
local nL = "#6ec1ff"
my = "#e8a34d"
local nK = "#8b93a3"
mq = fn228
if (not nM and SaveManager and (not m_ or false) or (not nM or mq or mq)) and ((SaveManager or nM or not mq and 19) and (not nM or (not SaveManager))) and not ((not nM and SaveManager and (not m_ or false) or (not nM or mq or mq)) and ((SaveManager or nM or not mq and 19) and (not nM or (not SaveManager)))) then
    m_ = fn441
    nx = fn605
    m8 = fn175
else
    nx = fn441
    m8 = fn605
    m_ = fn175
end
mN = fn333
ms = fn401
nk = fn673
nM = {}
mW = {}
local nP = {}
for k, v in pairs(ProgressionConfig.WinButtons) do
    tI_17 = #nP + 1
    tI_6 = tonumber(v) or 0
    nP[tI_17] = { Name = k, Amount = tI_6, Double = string.find(k, "2xWin", 1, true) ~= nil }
end
local tI_13 = 7
repeat
    if tI_13 * 71182539 + 10 + 3 >= tI_13 * 71182539 + 10 + 3 + 1 then
        table.sort(nP, fn197)
    else
        table.sort(nP, fn197)
    end
    tI_13 = (tI_13 + 7) % 8
until (tI_13 * 3 + 1) % 8 == 3
for i, v in ipairs(nP) do
    tI_17 = string.format
    tI_6 = tI_14.Compact(v.Amount)
    tI_13 = v.Name
    tI_8 = v.Double and " [2x]"
    nP = tI_8 or ""
    tI_8 = tI_17("+%s - %s%s", tI_6, tI_13, nP)
    v.Label = tI_8
    nM[#nM + 1] = tI_8
    mW[tI_8] = v
end
mt, mn, ml, mj, md, ny, nu, nq, StageTrackerData, connection, np, nl, ng, nb, m1, mI, mA, mu, m4, mB, mf, nn, mY, mP, mK, mD, mh, ne, mw, no, mG, mi, mL, nh, mQ, me, m9, mo, mZ, mr, mc, m0, nv, mM, ns, mX, nt = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mt = nil
mn = false
ml = 0
mj = 0
md = 400
ny = 1902.7
nu = 5.02
nq = -79.92
StageTrackerData = tI_4:WaitForChild("StageTrackerData")
connection = RunService.Heartbeat:Connect(onHeartbeat)
m1 = fn750
mI = fn120
mA = fn577
mu = fn681
m4 = function(bw)
    local pr
    pr = nil
    local WinButtons = workspace:FindFirstChild("WinButtons")
    local ps_2
    local pt = WinButtons and WinButtons:FindFirstChild(bw)
    local pt_2
    pr = pt
    if not pr then
        return nil
    end
    local Touch = pr:FindFirstChild("Touch")
    local pt_1 = Touch and Touch:IsA("BasePart")
    if pt_1 then
        return Touch.Position, Touch
    end
    ps_2, pt_2 = pcall(function()
        return pr:GetPivot().Position
    end)
    if ps_2 and pt_2 then
        return pt_2, nil
    end
    return nil
end
mB = fn480
mf = fn231
nn = fn252
mY = fn192
mP = fn612
mK = fn204
mD = function(b4)
    if typeof(b4) ~= "Vector3" then
        return
    end
    mj = os.clock()
    pcall(function()
        nc:RequestStreamAroundAsync(b4)
    end)
end
mh = fn641
ne = fn134
mw = fn421
no = function(cD)
    local pX = m8()
    if not pX or not cD or not firetouchinterest then
        return
    end
    local pY_1 = nc.Character and nc.Character:FindFirstChild("BikeCollider")
    local pZ = nc.Character and nc.Character:FindFirstChild("LowerTorso")
    local p_ = { pX, pY_1, pZ }
    for i, v in ipairs(p_) do
        local p6 = v
        local pX_1 = p6 and p6:IsA("BasePart")
        if pX_1 then
            pcall(function()
                firetouchinterest(p6, cD, 0)
                firetouchinterest(p6, cD, 1)
            end)
        end
    end
end
mG = fn636
mi = fn866
mL = fn310
nh = fn833
if mL and not np and (not np or np) and (np and not mL or 131) or (not np and mL and (not np or false) or (mL or not np) and (not m9 or m9)) or ((mL or np) and (mL or not m9 and not np) or (mL or not np) and (not m9 and not np) and (not mL or 131 or mL and np)) or not (mL and not np and (not np or np) and (np and not mL or 131) or (not np and mL and (not np or false) or (mL or not np) and (not m9 or m9)) or ((mL or np) and (mL or not m9 and not np) or (mL or not np) and (not m9 and not np) and (not mL or 131 or mL and np))) then
    mQ = fn184
    me = fn716
    m9 = fn719
else
    m9 = fn184
    mQ = fn716
    me = fn719
end
mo = fn566
mZ = fn283
mr = function()
    local rt_1, rt_5
    local rs_1, rs_5
    rs_1, rt_1 = pcall(function()
        return ItemShopRequest:InvokeServer("GetState", {})
    end)
    local ru = not rs_1 or typeof(rt_1) ~= "table" or rt_1.Success ~= true
    if ru then
        return
    end
    local State = rt_1.State
    local rt_2 = typeof(State) ~= "table" or typeof(State.Stock) ~= "table"
    if rt_2 then
        return
    end
    local rt_3 = tonumber(State.Coins) or tonumber(mN("Coins", 0))
    local ru_1 = rt_3 or 0
    local rt_4 = {}
    local rv = ru_1
    for k, v in pairs(State.Stock) do
        local rs_3 = tonumber(v) or 0
        local rs_4 = ItemShopConfig.Items[k]
        if rs_4 and rs_3 > 0 and rs_4.AdminExclusive ~= true then
            local ru_3 = tonumber(rs_4.CoinsCost) or 0
            if rv >= ru_3 then
                local ru_4 = #rt_4 + 1
                local rx = tonumber(rs_4.SpeedPercent) or 0
                rt_4[ru_4] = { ItemId = k, Cost = ru_3, Speed = rx }
            end
        end
    end
    table.sort(rt_4, function(e2, e3)
        if e2.Speed == e3.Speed then
            return e2.Cost < e3.Cost
        end
        return e2.Speed > e3.Speed
    end)
    for i, v in ipairs(rt_4) do
        local rK = v
        if rv < rK.Cost then
            break
        end
        rs_5, rt_5 = pcall(function()
            return ItemShopRequest:InvokeServer("PurchaseCoins", { ItemId = rK.ItemId })
        end)
        local ru_5 = rs_5 and typeof(rt_5) == "table" and rt_5.Success == true
        if ru_5 then
            rv = rv - rK.Cost
            local rs_6 = typeof(rt_5.State) == "table" and rt_5.State.Coins ~= nil
            if rs_6 then
                local rs_7 = (tonumber(rt_5.State.Coins))
                local rN = if rs_7 then 1 else 0
                local rL = 342 * rN + 3782 * (1 - rN)
                local rM = 2503 * rN + 742 * (1 - rN)
                if not ((rL * 1850 + rM * 1824 + rL * rM) % 16777213 == 6054198) then
                    rs_7 = rv
                end
                rv = rs_7
            end
        end
        task.wait(0.2)
    end
end
mc = fn672
np = 0
nl = nil
ng = {}
nb = {}
tI_1.OnClientEvent:Connect(onOnClientEvent)
m0 = fn666
nv = fn509
mM = function(fS)
    local sd = m8()
    if sd and fS.Part and fS.Part.Parent and firetouchinterest then
        pcall(function()
            firetouchinterest(sd, fS.Part, 0)
            firetouchinterest(sd, fS.Part, 1)
        end)
    end
    local max = math.max
    local sf = tonumber(CoinConfig.MaxCollectionRequestsPerSecond) or 30
    local se_2 = 1 / max(1, sf)
    local sf_1 = os.clock() - np
    if sf_1 < se_2 then
        task.wait(se_2 - sf_1)
    end
    mm:FireServer("Collect", fS.Id)
    np = os.clock()
end
ns = fn14
mX = fn610
nt = fn780
tI_6 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = m7, Copyable = true }, "|", tI_15 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10,
    Size = UDim2.fromOffset(900, 640)
})
nP = {
    Info = tI_6:AddTab("Info", "info"),
    Main = tI_6:AddTab("Main", "gamepad-2"),
    Shop = tI_6:AddTab("Shop", "shopping-cart"),
    Settings = tI_6:AddTab("Settings", "settings")
}
tI_13 = fn590
for k, v in nP do
    tI_13(v)
end
nf, tI_6, tI_8, Label, mS, tI_1 = nil, nil, nil, nil, nil, nil
tI_17 = 7
repeat
    tI_13 = (tI_17 * 1 + 0) % 3 + 1
    if tI_13 <= 2 then
        if tI_13 <= 1 then
            if (tI_17 * 1 + 2) * 9 % 4 == ((tI_17 * 1 + 2) * 9 + 4) % 4 then
                tI_1 = #mS > 18
            else
                mS = #tI_1 > 18
            end
            tI_17 = (tI_17 + 1) % 12
        else
            tI_13 = { "omtllmb", "cltfmz", "rphcn", "lfodkhbskn", "vqhgnueok", "ltsch", "hoj" }
            local ux = tI_17
            tI_14 = tI_13[ux % 7 + 1]
            if tI_14:len() >= tI_14:reverse():rep(ux % 3 + 2):len() then
                nP = "Unknown"
                pcall(fn677)
                nc = (nil):AddLeftGroupbox("Account", "circle-user")
                nc:AddLabel(nL("User", mU.Name, tI_6), true)
                nc:AddLabel(nL("Status", "Keyless", tI_6), true)
                nc:AddLabel(nL("Executor", "Unknown", tI_6), true)
                my = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                my:AddLabel(tI_15(Label .. " [" .. tostring(game.PlaceId) .. "]", tI_8), true)
                my:AddLabel(nL("Place ID", tostring(game.PlaceId), tI_8), true)
                nf = my:AddLabel(nL("Session time", "0s", m3), true)
            else
                nf = "Unknown"
                pcall(fn677)
                tI_6 = nP.Info:AddLeftGroupbox("Account", "circle-user")
                tI_6:AddLabel(mU("User", nc.Name, tI_11), true)
                tI_6:AddLabel(mU("Status", "Keyless", tI_11), true)
                tI_6:AddLabel(mU("Executor", nf, tI_11), true)
                tI_8 = nP.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                tI_8:AddLabel(m3(tI_15 .. " [" .. tostring(game.PlaceId) .. "]", nL), true)
                tI_8:AddLabel(mU("Place ID", tostring(game.PlaceId), nL), true)
                Label = tI_8:AddLabel(mU("Session time", "0s", my), true)
            end
            tI_17 = (tI_17 + 1) % 12
        end
    else
        local ur = bit32.rrotate(bit32.bxor(bit32.lrotate(tI_17, 16), string.byte(tostring(tI_6))), 30)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ur, 1649720057), 1803931135), (bit32.bxor(bit32.band(ur, 2645247238), 2901674489))), 1803931135), 2901674489) == ur then
            mS = tostring(game.JobId)
        else
            tI_8 = tostring(game.JobId)
        end
        tI_17 = (tI_17 + 4) % 12
    end
until (tI_17 * 1 + 6) % 12 == 7
if tI_1 then
    tI_17 = 2
    repeat
        tI_6 = {
            "xbuwlbqfymz",
            "untjuwb",
            "dxvln",
            "ptem",
            "qabiyfb",
            "drqgpxpqok",
            "izozjimnyf",
            "nmqb",
            "tliu",
            "vyqfpo"
        }
        local uA = tI_17
        tI_13 = tI_6[uA % 10 + 1]
        if tI_13:len() >= tI_13:gsub("(.)", "%1%1", uA % 3 % 2 + 1):len() then
            mS = string.sub(tI_1, 1, 18) .. "..."
        else
            tI_1 = string.sub(mS, 1, 18) .. "..."
        end
        tI_17 = (tI_17 + 3) % 8
    until (tI_17 * 1 + 1) % 8 == 6
end
tI_17 = tI_1 or mS
mz, tI_1, mH, mE, connection2, connection3, mk = nil, nil, nil, nil, nil, nil, nil
tI_13 = tI_17
tI_8:AddLabel(mU("Server", tI_13, nK), true)
tI_8:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
mz = os.clock()
task.spawn(worker)
local ScriptsGroup = nP.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(m3("Included in this hub", nK), true)
ScriptsGroup:AddLabel(m3(tI_15, nL), true)
local FeaturesGroup = nP.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(m3("Auto Farm Wins", nL), true)
FeaturesGroup:AddLabel(m3("Auto Train", nL), true)
FeaturesGroup:AddLabel(m3("Auto Collect Coins", nL), true)
FeaturesGroup:AddLabel(m3("Auto Rebirth", my), true)
FeaturesGroup:AddLabel(m3("Auto Buy Shops", my), true)
FeaturesGroup:AddLabel(m3("Auto Equip Best", nK), true)
local SocialsGroup = nP.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = na })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = nP.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = na })
local FaqGroup = nP.Info:AddRightGroupbox("FAQ", "circle-help")
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
local AutoWinGroup = nP.Main:AddLeftGroupbox("Auto Win", "trophy")
AutoWinGroup:AddToggle("AutoWin", { Text = "Auto Farm Win", Default = false })
AutoWinGroup:AddDropdown("WinPlate", { Text = "Win Plate", Values = nM, Default = nM[1], Searchable = true })
AutoWinGroup:AddSlider("WinDelay", { Text = "Win Delay", Default = 0.5, Min = 0, Max = 10, Rounding = 1 })
AutoWinGroup:AddLabel(m3("The game has a built-in cooldown for win plates, so do not think it is bugged. That short delay comes from the game itself.", "#ff6b6b"), true)
local AutoTrainGroup = nP.Main:AddLeftGroupbox("Auto Train", "footprints")
AutoTrainGroup:AddToggle("AutoTrain", { Text = "Auto Train Speed", Default = false })
tI_11 = nP.Main:AddRightGroupbox("Auto Rebirth", "rotate-ccw")
tI_11:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local tI_10_1 = nP.Main:AddRightGroupbox("Auto Coins", "coins")
tI_10_1:AddToggle("AutoCollectCoins", { Text = "Auto Collect Coins", Default = false })
tI_4 = nP.Shop:AddLeftGroupbox("Wins Shop", "bike")
tI_4:AddToggle("AutoBuyWinsShop", { Text = "Auto Buy Wins Shop", Default = false })
tI_14 = nP.Shop:AddLeftGroupbox("Item Shop", "backpack")
if (tI_4 and not tI_1 and (not mk or not mz) and (not mk and not mk and (not mz or not tI_4)) or (not tI_4 and mz or mk and tI_1 or not mH and mH and (not mH and tI_1))) and (((mz or tI_1) and (not mk or tI_1) or (tI_1 or mz or (tI_1 or mH))) and ((mk and tI_4 or (not tI_1 or tI_4)) and ((mH or not tI_1) and (tI_1 or tI_4)))) and not ((tI_4 and not tI_1 and (not mk or not mz) and (not mk and not mk and (not mz or not tI_4)) or (not tI_4 and mz or mk and tI_1 or not mH and mH and (not mH and tI_1))) and (((mz or tI_1) and (not mk or tI_1) or (tI_1 or mz or (tI_1 or mH))) and ((mk and tI_4 or (not tI_1 or tI_4)) and ((mH or not tI_1) and (tI_1 or tI_4))))) then
    tI_1:AddToggle("AutoBuyItemShop", { Text = "Auto Buy Time Shop", Default = false })
    tI_1:AddToggle("AutoEquipBestItems", { Text = "Auto Equip Best Items", Default = false })
    nP = tI_14.Shop:AddRightGroupbox("Cosmetics", "sparkles")
else
    tI_14:AddToggle("AutoBuyItemShop", { Text = "Auto Buy Time Shop", Default = false })
    tI_14:AddToggle("AutoEquipBestItems", { Text = "Auto Equip Best Items", Default = false })
    tI_1 = nP.Shop:AddRightGroupbox("Cosmetics", "sparkles")
end
tI_1:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
tI_1:AddToggle("AutoBuyAuras", { Text = "Auto Buy Auras", Default = false })
tI_6 = nP.Settings:AddLeftGroupbox("Menu")
tI_6:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
mH = tick()
mE = tick()
pcall(function()
    for i, v in ipairs(getconnections(nc.Idled)) do
        local td = v
        pcall(function()
            td:Disable()
        end)
    end
end)
mk = fn541
connection2 = UserInputService.InputBegan:Connect(onInputBegan)
connection3 = UserInputService.InputChanged:Connect(onInputChanged)
do
    tI_6:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    tI_6:AddButton("Unload", onUnload)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Monochrome")
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("OuroborosHub/DoubleJumpBikeEscape")
    SaveManager:BuildConfigSection(nP.Settings)
    ThemeManager:ApplyToTab(nP.Settings)
    ThemeManager:LoadDefault()
    SaveManager:LoadAutoloadConfig()
    Library:OnUnload(fn299)
    task.spawn(worker9)
    task.spawn(worker8)
    task.spawn(worker7)
    task.spawn(worker6)
    task.spawn(worker5)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
end
