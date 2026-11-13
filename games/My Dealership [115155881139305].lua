local vy_4, vy_5, vy_11
local vy_6_1, vy_6_2
local nm
local m1
local Toggles
local mJ
local ns
local nR
local mP
local ny
local nf
local ExpansionConfig
local LocalPlayer
local mC
local nK
local mI
local Net
local mO
local nx
local ne
local nW
local mU
local nD
local m_
local nJ
local mH
local nq
local nP
local mN
local nw
local nd
local Library
local mT
local nj
local RebirthConfig
local mG
local np
local nO
local mM
local nv
local connection
local nU
local mS
local nB
local mY
local nH
local mF
local no
local nN
local m9
local nT
local ClientRegistry
local nA
local nh
local Options
local mE
local nn
local m2
local mK
local mQ
local nz
local ng
local connection2
local nF
local function fn10()
    print("Unloaded!")
end
local function fn13(al, am)
    if setclipboard then
        setclipboard(al)
    elseif toclipboard then
        toclipboard(al)
    end
    Library:Notify(am)
end
local function fn34(aU)
    local pg = Options[aU]
    return pg and pg.Value
end
local function fn63()
    local Character = LocalPlayer.Character
    local pN = Character and Character:FindFirstChild("HumanoidRootPart")
    return pN
end
local function fn64(cz, cA, cB)
    for i, v in ipairs(cB) do
        local qL = v.Size.X / 2
        local qM = math.abs(cz - v.Position.X) <= qL and math.abs(cA - v.Position.Z) <= qL
        if qM then
            return true
        end
    end
    return false
end
local function fn65()
    local uY_1
    local uX_1
    if identifyexecutor then
        uY_1, uX_1 = identifyexecutor()
        local uZ = uY_1 ~= ""
        local u_ = type(uY_1) == "string" and uZ
        if u_ then
            local uZ_1 = type(uX_1) == "string" and uX_1 ~= "" and uY_1 .. " " .. uX_1
            nh = uZ_1 or uY_1
        end
    end
end
local function worker2()
    while not Library.Unloaded do
        if mE("AutoBuyStands") then
            pcall(nK)
        end
        if mE("AutoBuyContainers") then
            pcall(mO)
        end
        if mE("AutoBuyDecor") then
            pcall(nd)
        end
        if mE("AutoBuyPlotSlot") then
            pcall(mN)
        end
        if mE("AutoHireEmployees") then
            pcall(m2)
        end
        task.wait(nH("ShopDelay", 0.5))
    end
end
local function fn110(cW)
    return string.format("%.0f:%.0f", cW.X, cW.Z)
end
local function fn115(as, at)
    return string.format('<font color="%s">%s</font>', at, as)
end
local function fn121()
    nB(ny, "Copied Discord invite to clipboard")
end
local function onRscripts()
    if setclipboard then
        setclipboard(nv)
    elseif toclipboard then
        toclipboard(nv)
    end
    Library:Notify("Copied Rscripts profile to clipboard")
end
local function fn216()
    connection:Disconnect()
    connection2:Disconnect()
end
local function fn237(dF, dG, dH)
    local rH = Vector3.new(dF.X, 0, dF.Z)
    for k, v in dG do
        if (rH - Vector3.new(v.X, 0, v.Z)).Magnitude < dH then
            return true
        end
    end
    return false
end
local function onInputBegan()
    nR = tick()
end
local function fn259(cY, cZ, c_, c0, c1)
    local q1, q2, q3, q4, q5, rd, rf, rg, ri, rk, rl
    local q9 = 7
    while true do
        local q9_1 = 12288 - q9
        do
            if q9_1 < 12277 then
                if q9_1 < 12275 then
                    if q9_1 < 12273 then
                        if q9_1 < 7423 then
                            break
                        elseif q9_1 < 12271 then
                            break
                        elseif q9_1 < 12272 then
                            if q9_1 == 12271 then
                                rf += 1
                                q9 = 5
                            else
                                q9 = 12276
                                continue
                            end
                        else
                            q9 = 13
                        end
                    elseif q9_1 < 12274 then
                        q1 = math.rad
                        q2 = cZ
                        q9 = if q2 then 9 else 10
                    else
                        q9 = if rk <= ri then 12 else 1
                    end
                elseif q9_1 < 12276 then
                    if q9_1 == 12275 then
                        rk += 1
                        q9 = 14
                    else
                        q9 = 12283
                        continue
                    end
                elseif q9_1 == 12276 then
                    rl = rk
                    q9 = 6
                else
                    q9 = 13962
                    continue
                end
            elseif q9_1 < 12283 then
                if q9_1 < 12280 then
                    if q9_1 < 12278 then
                        if q9_1 == 12277 then
                            q5 = -c_ + c_ * 2 * (rg / q3)
                            rk = 0
                            ri = q4
                            q9 = 14
                        else
                            q9 = 1764
                            continue
                        end
                    elseif q9_1 < 12279 then
                        q2 = 0
                        q9 = 9
                    else
                        local q3_1 = q1(q2)
                        q1 = math.cos(q3_1)
                        q2 = math.sin(q3_1)
                        q3 = math.max(1, math.ceil(c_ * 2 / 2))
                        q4 = math.max(1, math.ceil(c0 * 2 / 2))
                        rf = 0
                        rd = q3
                        q9 = 5
                    end
                elseif q9_1 < 12281 then
                    return true
                elseif q9_1 < 12282 then
                    if q9_1 == 12281 then
                        local rc = if #c1 == 0 then 1 else 0
                        local ra = 2073 * rc + 1808 * (1 - rc)
                        local rb = 962 * rc + 3458 * (1 - rc)
                        q9 = if (ra * 2398 + rb * 3843 + ra * rb) % 16777213 == 10662246 then 3 else 15
                    else
                        q9 = 2436
                        continue
                    end
                elseif q9_1 == 12282 then
                    local q6 = -c0 + c0 * 2 * (rl / q4)
                    local q7 = cY.X + q5 * q1 + q6 * q2
                    local q8 = cY.Z - q5 * q2 + q6 * q1
                    q9 = if not mJ(q7, q8, c1) then 2 else 16
                else
                    q9 = 12272
                    continue
                end
            elseif q9_1 < 12287 then
                if q9_1 < 12285 then
                    if q9_1 < 12284 then
                        if q9_1 == 12283 then
                            q9 = if rf <= rd then 0 else 8
                        else
                            q9 = 12272
                            continue
                        end
                    else
                        break
                    end
                elseif q9_1 < 12286 then
                    if q9_1 == 12285 then
                        return false
                    end
                    q9 = 13237
                    continue
                elseif q9_1 == 12286 then
                    return false
                else
                    q9 = 12281
                    continue
                end
            elseif q9_1 < 13237 then
                if q9_1 < 12288 then
                    if q9_1 == 12287 then
                        q9 = 17
                    else
                        q9 = 13962
                        continue
                    end
                elseif q9_1 == 12288 then
                    rg = rf
                    q9 = 11
                else
                    break
                end
            else
                break
            end
        end
    end
end
local function fn269(R)
    return R.notForSale == true
end
local function fn277()
    local tM = nD()
    if not tM then
        return
    end
    local tN = tM.rebirths or 0
    if RebirthConfig.isMaxed(tN) then
        return
    end
    local tN_1 = RebirthConfig.requirement(tN)
    local tM_2 = typeof(tN_1) ~= "number"
    local tR = if tM_2 then 1 else 0
    local tP = 3768 * tR + 500 * (1 - tR)
    local tQ = 3432 * tR + 611 * (1 - tR)
    if not ((tP * 2304 + tQ * 321 + tP * tQ) % 16777213 == 5937707) then
        tM_2 = nx() < tN_1
    end
    if tM_2 then
        return
    end
    pcall(function()
        Net:InvokeServer("Rebirth_Do")
    end)
end
local function fn282(ib)
    local DiscordGroup = ib:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = ns })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = ns })
end
local function fn284(aJ, aK)
    local o9 = Options[aJ]
    local pa = o9 and tonumber(o9.Value)
    return pa or aK
end
local function fn300(bX)
    if bX == nil then
        return true
    end
    local pZ = tonumber(bX) or bX
    local p_ = nn[pZ]
    if p_ then
        local pZ_1 = tonumber(bX) or bX
        p_ = nn[pZ_1] > os.clock()
    end
    if p_ then
        return true
    end
    local pZ_2 = mY()
    if pZ_2 then
        local p__1 = pZ_2:FindFirstChild("_Crates")
        if p__1 then
            for i, child in p__1:GetChildren() do
                if nT(child:GetAttribute("StandUid"), bX) then
                    return true
                end
            end
        end
        local p__2 = pZ_2:FindFirstChild("_Placed")
        if p__2 then
            for i, child in p__2:GetChildren() do
                if nT(child:GetAttribute("StandUid"), bX) then
                    return true
                end
            end
        end
    end
    local pZ_3 = nD()
    if pZ_3 then
        if type(pZ_3.cratePlacements) == "table" then
            for k, v in pZ_3.cratePlacements do
                local p__3 = type(v) == "table" and nT(v.standUid, bX)
                if p__3 then
                    return true
                end
            end
        end
        if type(pZ_3.placements) == "table" then
            for k, v in pZ_3.placements do
                local pZ_4 = type(v) == "table" and nT(v.standUid, bX)
                if pZ_4 then
                    return true
                end
            end
        end
    end
    return false
end
local function fn302(eu)
    if not eu then
        return nil
    end
    local sn = eu.cost or eu.price
    local sn_1 = type(sn) == "table" and typeof(sn.cash) == "number"
    if sn_1 then
        return sn.cash
    elseif typeof(sn) == "number" then
        return sn
    else
        return nil
    end
end
local function fn306(V)
    return V.robux ~= nil or V.pass ~= nil or V.passId ~= nil
end
local function fn309()
    return mM.getMyPlot()
end
local function fn364()
    local tX = nD()
    if not tX then
        return nil
    end
    local tZ = tX.ownedZones or {}
    local tZ_1 = tX.rebirths or 0
    local tX_1 = nil
    local tZ_2 = ExpansionConfig.TotalZones or 9
    local t7 = 1
    while t7 <= tZ_2 do
        local t8 = t7
        local tZ_3 = tostring(t8)
        if tZ[tZ_3] ~= true then
            local t0 = ExpansionConfig.slotInfo(tZ_3)
            local t1 = t0
            if t1 then
                t1 = (t0.rebirths or 0) <= tZ_1
            end
            if t1 then
                local t1_1 = tonumber(t0.cost) or 0
                local t2_2 = not tX_1
                if not t2_2 then
                    t2_2 = t1_1 < tX_1.cost
                end
                if t2_2 then
                    tX_1 = { id = tZ_3, cost = t1_1, rebirths = t0.rebirths or 0 }
                end
            end
        end
        t7 += 1
    end
    return tX_1
end
local function fn409(a2, a3)
    local pq = nq(a2)
    if not mT(pq) then
        return true
    end
    return pq[a3] == true
end
local function worker3()
    while not Library.Unloaded do
        if mE("AutoPlaceStands") then
            pcall(nF)
        end
        if mE("AutoPlaceContainers") then
            pcall(ne)
        end
        if mE("AutoOpenContainers") then
            pcall(nf)
        end
        if mE("AutoAuction") then
            pcall(nW)
        end
        if mE("AutoRebirth") then
            pcall(nj)
        end
        if mE("AutoCollectMoney") then
            pcall(mH)
        end
        task.wait(nH("FarmDelay", 0.4))
    end
end
local function worker()
    local u7_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local u6 = math.floor(os.clock() - nP)
        if u6 < 60 then
            u7_1 = u6 .. "s"
        elseif u6 < 3600 then
            u7_1 = string.format("%dm %ds", u6 // 60, u6 % 60)
        else
            u7_1 = string.format("%dh %dm", u6 // 3600, u6 % 3600 // 60)
        end
        mU:SetText(m_("Session time", u7_1, mK))
    end
end
local function fn484(cH)
    local qU = no.get(cH)
    if not qU or not qU.model then
        return nil
    end
    return mG:FindFirstChild(qU.model)
end
local function fn485()
    local tS = nD()
    local tT = tS
    if tT then
        local tU_1 = tonumber(tS.pendingCollect) or 0
        tT = tU_1
    end
    local tU_2 = tT or 0
    local tT_1 = tS
    if tT_1 then
        local tU_3 = tonumber(tS.pendingOffline) or 0
        tT_1 = tU_3
    end
    local tS_1 = tT_1 or 0
    local tS_2 = nH("CollectMinAmount", 1)
    if tU_2 + tS_1 < tS_2 then
        return
    end
    pcall(function()
        Net:FireServer("CollectMoney")
    end)
end
local function fn537(I, J)
    local oQ = {}
    for k, v in I.Order do
        local oR = I.get(v)
        local oS = oR
        if oS then
            local oT = J and J(oR, v)
            oS = not oT
        end
        if oS then
            table.insert(oQ, v)
        end
    end
    return oQ
end
local function fn551(aZ)
    for k, v in pairs(aZ) do
        if v then
            return true
        end
    end
    return false
end
local function fn587(aE)
    local o6 = Toggles[aE]
    return o6 ~= nil and o6.Value == true
end
local function fn601(ci, cj)
    if ci == nil then
        return
    end
    local qo = tonumber(ci) or ci
    local qp = os.clock()
    local qq = cj or 2
    nn[qo] = qp + qq
end
local function fn607()
    return ClientRegistry.TryGet("DataController")
end
local function fn609(av, aw, ax)
    return string.format("<b>%s</b> %s %s", av, nm("-", "#5a6070"), nm(aw, ax))
end
local function fn630(aP)
    local pc = Options[aP]
    return pc and pc.Value or {}
end
local function onCopyJoinScript_JobID()
    local u4 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mQ)
    if setclipboard then
        setclipboard(u4)
    elseif toclipboard then
        toclipboard(u4)
    end
    Library:Notify("Copied join script to clipboard")
end
local function fn664(bS, bT)
    local pU = bT == nil
    local pU_1
    local pV = bS == nil or pU
    local pV_1
    if pV then
        return false
    elseif bS == bT then
        return true
    else
        pV_1, pU_1 = tonumber(bS), tonumber(bT)
        return pV_1 ~= nil and pV_1 == pU_1
    end
end
local function onInputChanged(i8)
    local UserInputType = i8.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        nR = tick()
    end
end
local function worker4()
    while not Library.Unloaded do
        task.wait(2)
        if mE("AntiAfk") then
            local vm = tick() - nR
            local vn = tick() - nO
            if vm >= 300 and vn >= 60 then
                pcall(nw)
            else
                if vm < 300 and vn >= 300 then
                    pcall(nw)
                end
            end
        end
    end
end
local function fn746()
    local CurrentCamera = nJ.CurrentCamera
    if not CurrentCamera then
        return
    end
    nN:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    nN:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    nO = tick()
end
local function onUnload()
    Library:Unload()
end
local function fn769()
    local qs = mY()
    local qt = qs and qs:FindFirstChild("Zones")
    if not qt then
        return {}
    end
    local qt_1 = nD()
    local qv = qt_1 and qt_1.ownedZones or {}
    local qt_3 = false
    for k, v in qv do
        if v then
            qt_3 = true
            break
        end
    end
    local qv_1 = {}
    for i, child in qt:GetChildren() do
        if child:IsA("BasePart") then
            local qs_2 = qv[child.Name] == true
            local qw = not qt_3
            local qx = not qs_2
            if qx ~= false then
                qx = qw
            end
            if qx then
                qs_2 = child.Name == tostring(ExpansionConfig.DefaultSlot)
            end
            if qs_2 then
                table.insert(qv_1, child)
            end
        end
    end
    return qv_1
end
local function fn771()
    local ru = mY()
    local rv = ru and ru:FindFirstChild("_Stands")
    local ru_1 = {}
    if not rv then
        return ru_1
    end
    for i, child in rv:GetChildren() do
        if child:IsA("Model") then
            table.insert(ru_1, child:GetPivot().Position)
        end
    end
    return ru_1
end
local function fn817()
    local sJ_1
    local sH = nD()
    local sI = not sH or type(sH.ownedContainers) ~= "table"
    local sI_1
    if sI then
        return nil
    end
    sJ_1, sI_1 = nil, -1
    for i, v in ipairs(m9) do
        if mF("PlaceContainerItems", v) then
            local sK = sH.ownedContainers[v]
            local sL = typeof(sK) == "number" and sK > 0 and i > sI_1
            if sL then
                sJ_1 = v
                sI_1 = i
            end
        end
    end
    return sJ_1
end
local function fn819(fV)
    local tq = not fV
    local ty = if tq then 1 else 0
    local tw = 2165 * ty + 2931 * (1 - ty)
    local tx = 1415 * ty + 1948 * (1 - ty)
    if not ((tw * 2029 + tx * 237 + tw * tx) % 16777213 == 7791615) then
        tq = fV:GetAttribute("Auctioning") == true
    end
    if tq then
        return false
    elseif fV:GetAttribute("OwnerUserId") ~= LocalPlayer.UserId then
        return false
    else
        local attr2 = fV:GetAttribute("VehicleUid")
        if attr2 == nil then
            return false
        end
        local attr = fV:GetAttribute("Rarity")
        local ts = fV:GetAttribute("Mutation") or "Main"
        local ts_1 = fV:GetAttribute("Value") or 0
        if not mF("AuctionRarities", tostring(attr)) then
            return false
        elseif not mF("AuctionMutations", tostring(ts)) then
            return false
        else
            local tr_1 = typeof(ts_1) == "number" and ts_1 < nH("AuctionMinValue", 0)
            if tr_1 then
                return false
            end
            return true, attr2
        end
    end
end
local function fn823()
    local sd = mY()
    local se = sd and sd:FindFirstChild("_Stands")
    local sd_1 = {}
    if not se then
        return sd_1
    end
    for i, child in se:GetChildren() do
        if child:IsA("Model") then
            local attr = child:GetAttribute("StandUid")
            local sf_1 = attr ~= nil and not nz(attr)
            if sf_1 then
                table.insert(sd_1, child)
            end
        end
    end
    return sd_1
end
local function fn839(dM)
    local rS_1
    local rR_1
    local rP = nA()
    if #rP == 0 then
        return nil
    end
    local rQ = ng()
    rR_1, rS_1 = np(dM)
    local rT = math.max(rR_1, rS_1) + 2
    local rR_2 = math.max(math.ceil(rT), math.floor(nH("StandSpacing", 16)))
    local rS_2 = nU
    for i, v in ipairs(rP) do
        local rP_1 = v.Size.X * 0.5 - rT
        local rU = v.Size.Z * 0.5 - rT
        if rP_1 >= 0 and rU >= 0 then
            local r5 = -rP_1
            while rR_2 > 0 and r5 <= rP_1 or rR_2 <= 0 and r5 >= rP_1 do
                local r6 = r5
                local sa = -rU
                while rR_2 > 0 and sa <= rU or rR_2 <= 0 and sa >= rU do
                    local sb = sa
                    local rP_3 = Vector3.new(v.Position.X + r6, mI.getCanvasTopY() + 2, v.Position.Z + sb)
                    local rV_2 = mI.snapToCanvasGrid(rP_3, 4)
                    local rP_4 = mS(rV_2)
                    local rW = not mC[rP_4] and not mP(rV_2, rQ, rR_2 - 1) and m1(dM, rV_2, rS_2)
                    if rW then
                        return mI.serverCFrame(rV_2, rS_2), rP_4
                    end
                    sa += rR_2
                end
                r5 += rR_2
            end
        end
    end
    return nil
end
mC = nil
mE = nil
mF = nil
mG = nil
mH = nil
mI = nil
mJ = nil
mK = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
ClientRegistry = nil
mS = nil
mT = nil
mU = nil
ExpansionConfig = nil
connection2 = nil
mY = nil
RebirthConfig = nil
m_ = nil
m1 = nil
m2 = nil
m9 = nil
connection = nil
nd = nil
ne = nil
nf = nil
ng = nil
nh = nil
nj = nil
nm = nil
nn = nil
no = nil
np = nil
nq = nil
local mD, mL, mX, m0, m3, m4, m5, m6, m7, m8, ni, nk, nl
Net = nil
ns = nil
nv = nil
nw = nil
nx = nil
ny = nil
nz = nil
nA = nil
nB = nil
nD = nil
LocalPlayer = nil
nF = nil
Options = nil
nH = nil
nJ = nil
nK = nil
Toggles = nil
nN = nil
nO = nil
nP = nil
nR = nil
nT = nil
nU = nil
Library = nil
nW = nil
local nt, nu, nC, nI, nM, nQ, nS, n1, n2, n3, n4, n5, n6, n7, n8, n9, ob, oc, od
nt = nil
nu = nil
nC = nil
nI = nil
nM = nil
nQ = nil
nS = nil
local oe
vy_4, n2, n8, nN, nJ, LocalPlayer, n7, ny, nv, vy_6_1, Net, vy_5, no, nk, m7, m3, RebirthConfig, n4, n3, ExpansionConfig, ClientRegistry, mM, mI, mG, mC, nU, nl, m9, m4, n6, n5, n1 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local vy_10 = 47
repeat
    n9 = (vy_10 * 5 + 2) % 21 + 1
    if n9 <= 11 then
        if n9 <= 6 then
            if n9 <= 3 then
                if n9 <= 2 then
                    if n9 <= 1 then
                        local oa_1 = (vector.create((vy_10 * 3 + 4) % 11 + 1, (vy_10 * 5 + 8) % 13 + 1, (vy_10 * 4 + 10) % 17 + 1))
                        ob = (vector.create((vy_10 * 1 + 8) % 11 + 1, (vy_10 * 3 + 4) % 13 + 1, (vy_10 * 3 + 3) % 17 + 1))
                        oc = (vector.create((vy_10 * 1 + 1) % 11 + 1, (vy_10 * 3 + 5) % 13 + 1, (vy_10 * 2 + 12) % 17 + 1))
                        od = (vector.create((vy_10 * 2 + 1) % 11 + 1, (vy_10 * 1 + 1) % 13 + 1, (vy_10 * 2 + 6) % 17 + 1))
                        if vector.dot(vector.cross(oa_1, ob), (vector.cross(oc, od))) == vector.dot(oa_1, oc) * vector.dot(ob, od) - vector.dot(oa_1, od) * vector.dot(ob, oc) + 2 then
                            vy_5 = require(n3:WaitForChild("RarityConfig"))
                        else
                            n3 = require(vy_5:WaitForChild("RarityConfig"))
                        end
                        vy_10 = (vy_10 + 101) % 168
                    else
                        local oa_2 = (vector.create((vy_10 * 6 + 6) % 11 + 1, (vy_10 * 9 + 2) % 13 + 1, (vy_10 * 10 + 15) % 17 + 1))
                        ob = (vector.create((vy_10 * 6 + 6) % 11 + 1, (vy_10 * 10 + 2) % 13 + 1, (vy_10 * 14 + 8) % 17 + 1))
                        oc = (vector.create((vy_10 * 1 + 7) % 11 + 1, (vy_10 * 4 + 8) % 13 + 1, (vy_10 * 11 + 8) % 17 + 1))
                        od = (vector.create((vy_10 * 6 + 7) % 11 + 1, (vy_10 * 2 + 9) % 13 + 1, (vy_10 * 7 + 1) % 17 + 1))
                        if vector.dot(vector.cross(oa_2, ob), (vector.cross(oc, od))) == vector.dot(oa_2, oc) * vector.dot(ob, od) - vector.dot(oa_2, od) * vector.dot(ob, oc) then
                            ExpansionConfig = require(vy_5:WaitForChild("ExpansionConfig"))
                        else
                            vy_5 = require(ExpansionConfig:WaitForChild("ExpansionConfig"))
                        end
                        vy_10 = (vy_10 + 122) % 168
                    end
                else
                    local v1 = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_10, 3), string.byte(tostring(m3))), 21)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(v1, 1540304222), 12), 4074104252) ~= bit32.lrotate(v1, 12) then
                        n2 = ClientRegistry:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("Lib")
                        mI = require(n2:WaitForChild("ClientRegistry"))
                        require(n2:WaitForChild("PlotUtil"))
                        mG = require(n2:WaitForChild("BuildMode"))
                        mM = LocalPlayer:WaitForChild("Assets"):WaitForChild("Stands")
                    else
                        vy_11 = LocalPlayer:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("Lib")
                        ClientRegistry = require(vy_11:WaitForChild("ClientRegistry"))
                        mM = require(vy_11:WaitForChild("PlotUtil"))
                        mI = require(vy_11:WaitForChild("BuildMode"))
                        mG = n2:WaitForChild("Assets"):WaitForChild("Stands")
                    end
                    vy_10 = (vy_10 + 38) % 168
                end
            elseif n9 <= 5 then
                if n9 <= 4 then
                    local oa_3 = {
                        "abhypullmbut",
                        "fecqqepgu",
                        "ypmcjhq",
                        "nnfy",
                        "kwnbgjthfm",
                        "syjxhl",
                        "cfwmsncovwia",
                        "lfayg",
                        "mvxhtpjw",
                        "ggrvgus"
                    }
                    if oa_3[(vy_10 * 33 + 42) % 10 + 1] < oa_3[(vy_10 * 33 + 42) % 10 + 1] then
                        nU = {}
                        mC = 90
                    else
                        mC = {}
                        nU = 90
                    end
                    vy_10 = (vy_10 + 143) % 168
                else
                    local wn = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_10, 12), string.byte(tostring(nN))), 4)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(wn, 194309554), 24), 2987103469) == bit32.lrotate(wn, 24) then
                        n1 = fn537
                        nl = n1(no, fn269)
                        m9 = n1(nk)
                        m4 = n1(m7)
                        n6 = n1(m3, fn306)
                    else
                        nk = fn537
                        m3 = nk(n6, fn269)
                        no = nk(n1)
                        m7 = nk(nl)
                        m4 = nk(m9, fn306)
                    end
                    vy_10 = (vy_10 + 101) % 168
                end
            else
                if (not Net and not nl or not Net and not vy_6_1 or (not nl or vy_6_1) and (n3 and n2)) and (n1 and not vy_6_1 and (not nl or not n2) and (n1 and not nl or (not n3 or not n1))) and ((not nl and not Net or (Net or n2)) and (n1 and not n3 and (nl and not nl)) or (not n3 and not n3 and (not Net or not n1) or vy_6_1 and not n2 and (vy_6_1 and not vy_6_1))) and not ((not Net and not nl or not Net and not vy_6_1 or (not nl or vy_6_1) and (n3 and n2)) and (n1 and not vy_6_1 and (not nl or not n2) and (n1 and not nl or (not n3 or not n1))) and ((not nl and not Net or (Net or n2)) and (n1 and not n3 and (nl and not nl)) or (not n3 and not n3 and (not Net or not n1) or vy_6_1 and not n2 and (vy_6_1 and not vy_6_1)))) then
                    mG = {}
                else
                    n5 = {}
                end
                vy_10 = (vy_10 + 38) % 168
            end
        elseif n9 <= 9 then
            if n9 <= 8 then
                if n9 <= 7 then
                    if vy_10 * 53967435 + 11 + 6 >= vy_10 * 53967435 + 11 + 6 + 6 then
                        n5 = game:GetService("Players")
                    else
                        vy_4 = game:GetService("Players")
                    end
                    vy_10 = (vy_10 + 17) % 168
                else
                    if (vy_10 * 3 + 4) * 9 % 4 == ((vy_10 * 3 + 4) * 9 + 12) % 4 then
                        n2 = game:GetService("ReplicatedStorage")
                    else
                        vy_4 = game:GetService("ReplicatedStorage")
                    end
                    vy_10 = (vy_10 + 80) % 168
                end
            else
                local wk = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_10, 19), string.byte(tostring(n7))), 3)
                if bit32.bxor(bit32.lrotate(bit32.bxor(wk, 3053199336), 28), 2338308606) ~= bit32.lrotate(wk, 28) then
                    nJ = game:GetService("UserInputService")
                    n8 = game:GetService("VirtualUser")
                    nN = game:GetService("Workspace")
                else
                    n8 = game:GetService("UserInputService")
                    nN = game:GetService("VirtualUser")
                    nJ = game:GetService("Workspace")
                end
                vy_10 = (vy_10 + 59) % 168
            end
        elseif n9 <= 10 then
            local oa_4 = {
                "mwdfcqsz",
                "njtdyhb",
                "kehmqmove",
                "mbktfgr",
                "gzouss",
                "rgpvtt",
                "mpnnzf",
                "emfng",
                "viorwjmm",
                "svsjt",
                "grdhcsdma",
                "jmoacmkays"
            }
            if oa_4[(vy_10 * 33 + 113) % 12 + 1] < oa_4[(vy_10 * 33 + 113) % 12 + 1] then
                vy_4 = LocalPlayer.LocalPlayer
            else
                LocalPlayer = vy_4.LocalPlayer
            end
            vy_10 = (vy_10 + 80) % 168
        else
            local oa_5 = { "cmup", "mvu", "zemi", "qcvtuhjpuejo", "fiorqif", "zshjpnskog", "jswpw", "vyhwfsofuf" }
            if oa_5[(vy_10 * 54 + 50) % 8 + 1] <= oa_5[(vy_10 * 54 + 50) % 8 + 1] then
                n7 = "My Dealership"
                ny = "https://discord.gg/ehKVq7pf7v"
            else
                ny = "My Dealership"
                n7 = "https://discord.gg/ehKVq7pf7v"
            end
            vy_10 = (vy_10 + 59) % 168
        end
    elseif n9 <= 16 then
        if n9 <= 14 then
            if n9 <= 13 then
                if n9 <= 12 then
                    if (vy_6_1 and not ExpansionConfig and (m4 and not Net) or (not ExpansionConfig or ExpansionConfig) and (not m4 and vy_6_1)) and ((not Net and m4 or (not vy_6_1 or not vy_6_1)) and (not m4 and not m4 or no and not ExpansionConfig)) or not ((vy_6_1 and not ExpansionConfig and (m4 and not Net) or (not ExpansionConfig or ExpansionConfig) and (not m4 and vy_6_1)) and ((not Net and m4 or (not vy_6_1 or not vy_6_1)) and (not m4 and not m4 or no and not ExpansionConfig))) then
                        nv = "https://rscripts.net/@Ouroboros"
                    else
                        m7 = "https://rscripts.net/@Ouroboros"
                    end
                    vy_10 = (vy_10 + 164) % 168
                else
                    local wL = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_10, 23), string.byte(tostring(no))), 20)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(wL, 2706988550), 0), 2706988550) == bit32.lrotate(wL, 0) then
                        vy_6_1 = n2:WaitForChild("Shared")
                    else
                        n2 = vy_6_1:WaitForChild("Shared")
                    end
                    vy_10 = (vy_10 + 80) % 168
                end
            else
                local oa_6 = (vector.create((vy_10 * 7 + 3) % 11 + 1, (vy_10 * 2 + 11) % 13 + 1, (vy_10 * 7 + 9) % 17 + 1))
                ob = (vector.create((vy_10 * 2 + 3) % 11 + 1, (vy_10 * 5 + 12) % 13 + 1, (vy_10 * 14 + 14) % 17 + 1))
                oc = (vector.create((vy_10 * 6 + 1) % 11 + 1, (vy_10 * 11 + 5) % 13 + 1, (vy_10 * 1 + 17) % 17 + 1))
                if vector.dot(vector.cross(oa_6, ob), oc) == vector.dot(vector.cross(ob, oc), oa_6) then
                    Net = require(vy_6_1:WaitForChild("Net"))
                else
                    vy_6_1 = require(Net:WaitForChild("Net"))
                end
                vy_10 = (vy_10 + 101) % 168
            end
        elseif n9 <= 15 then
            local oa_7 = (vector.create((vy_10 * 1 + 2) % 11 + 1, (vy_10 * 7 + 2) % 13 + 1, (vy_10 * 8 + 16) % 17 + 1))
            ob = (vector.create((vy_10 * 6 + 5) % 11 + 1, (vy_10 * 11 + 9) % 13 + 1, (vy_10 * 8 + 6) % 17 + 1))
            oc = (vector.create((vy_10 * 3 + 4) % 11 + 1, (vy_10 * 9 + 10) % 13 + 1, (vy_10 * 14 + 16) % 17 + 1))
            if vector.dot(vector.cross(oa_7, ob), oc) == vector.dot(vector.cross(ob, oc), oa_7) then
                vy_5 = vy_6_1:WaitForChild("Configs")
            else
                vy_6_1 = vy_5:WaitForChild("Configs")
            end
            vy_10 = (vy_10 + 122) % 168
        else
            local vW = bit32.rrotate(bit32.bxor(bit32.lrotate(vy_10, 5), string.byte(tostring(nJ))), 15)
            if bit32.bxor(bit32.lrotate(bit32.bxor(vW, 2062929790), 30), 2663216095) == bit32.lrotate(vW, 30) then
                no = require(vy_5:WaitForChild("StandConfig"))
            else
                vy_5 = require(no:WaitForChild("StandConfig"))
            end
            vy_10 = (vy_10 + 38) % 168
        end
    elseif n9 <= 19 then
        if n9 <= 18 then
            if n9 <= 17 then
                local oa_8 = (vector.create((vy_10 * 4 + 8) % 11 + 1, (vy_10 * 2 + 5) % 13 + 1, (vy_10 * 9 + 16) % 17 + 1))
                ob = (vector.create((vy_10 * 4 + 4) % 11 + 1, (vy_10 * 10 + 8) % 13 + 1, (vy_10 * 11 + 10) % 17 + 1))
                local wf = vector.cross(oa_8, ob)
                local wg = vector.dot(oa_8, ob)
                if vector.dot(wf, wf) + wg * wg == vector.dot(oa_8, oa_8) * vector.dot(ob, ob) + 1 then
                    vy_5 = require(nk:WaitForChild("ContainerConfig"))
                else
                    nk = require(vy_5:WaitForChild("ContainerConfig"))
                end
                vy_10 = (vy_10 + 164) % 168
            else
                if (mM and RebirthConfig or RebirthConfig and not RebirthConfig) and (not mM or not mM or (not mM or RebirthConfig)) and not ((mM and RebirthConfig or RebirthConfig and not RebirthConfig) and (not mM or not mM or (not mM or RebirthConfig))) then
                    vy_5 = require(m7:WaitForChild("DecorationConfig"))
                else
                    m7 = require(vy_5:WaitForChild("DecorationConfig"))
                end
                vy_10 = (vy_10 + 17) % 168
            end
        else
            local oa_9 = (vector.create((vy_10 * 6 + 7) % 11 + 1, (vy_10 * 3 + 9) % 13 + 1, (vy_10 * 4 + 12) % 17 + 1))
            local wP = vector.floor(oa_9) + vector.ceil(oa_9 * -1)
            if vector.dot(wP, wP) == 0 then
                m3 = require(vy_5:WaitForChild("ManagerConfig"))
            else
                vy_5 = require(m3:WaitForChild("ManagerConfig"))
            end
            vy_10 = (vy_10 + 17) % 168
        end
    elseif n9 <= 20 then
        n9 = {
            "yyebhd",
            "xvchvejfrl",
            "mld",
            "jruk",
            "wqxfv",
            "thlzroydtqp",
            "onvwllahyg",
            "okeghljnbdb",
            "ftx",
            "lbgdhqh",
            "qklszmqktu"
        }
        local wv = vy_10
        local oa_10 = n9[wv % 11 + 1]
        if oa_10:len() <= oa_10:gsub("(.)", "%1%1", wv % 3 % 2 + 1):len() then
            RebirthConfig = require(vy_5:WaitForChild("RebirthConfig"))
        else
            vy_5 = require(RebirthConfig:WaitForChild("RebirthConfig"))
        end
        vy_10 = (vy_10 + 122) % 168
    else
        if (vy_10 * 3 + 5) * 9 % 4 == ((vy_10 * 3 + 5) * 9 + 13) % 4 then
            vy_5 = require(n4:WaitForChild("MutationConfig"))
        else
            n4 = require(vy_5:WaitForChild("MutationConfig"))
        end
        vy_10 = (vy_10 + 17) % 168
    end
until (vy_10 * 143 + 75) % 168 == 76
if type(n3.Order) == "table" then
    for k, v in n3.Order do
        table.insert(n5, v)
    end
else
    vy_4 = 2
    repeat
        vy_11 = {
            "vdazkviajz",
            "tjblrjuuknc",
            "drcmczl",
            "nazfdycrk",
            "zgnmjldisfd",
            "sczdceoikt",
            "zzrcyvgjhd",
            "cdclggbe"
        }
        local vX = vy_4
        vy_10 = vy_11[vX % 8 + 1]
        if vy_10:len() >= vy_10:gsub("(.)", "%1%1", vX % 3 % 2 + 1):len() then
            n5 = { "Epic", "Mythic", "Common", "Legendary", "Rare", "Prototype", "Uncommon" }
        else
            n5 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Prototype" }
        end
        vy_4 = (vy_4 + 5) % 8
    until (vy_4 * 3 + 2) % 8 == 7
end
vy_11 = {}
if type(n4.Order) == "table" then
    for k, v in n4.Order do
        table.insert(vy_11, v)
    end
else
    vy_4 = 1
    repeat
        if (vy_4 * 2 + 3) * 10 % 3 == ((vy_4 * 2 + 3) * 10 + 6) % 3 then
            vy_11 = { "Main", "Gold", "Emerald", "Ruby", "Diamond", "Celestial" }
        else
            vy_11 = { "Main", "Ruby", "Celestial", "Emerald", "Gold", "Diamond" }
        end
        vy_4 = (vy_4 + 1) % 8
    until (vy_4 * 1 + 6) % 8 == 0
end
Library, Toggles, Options, mK, nn, ni, nB, ns, nm, m_, mE, nH, nq, m0, mT, mF, nD, nx, mY, mX, nI, nu, m6, nT, nz, nQ, nA, mJ, nC, np, mS, mL, m1, ng, mP, nM, m8, mD, nF, nS, ne, nf, m5, nW, nj, mH, nt, mN, nK, mO, nd, m2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
od = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
oc = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
nB = fn13
ns = fn121
nm = fn115
m_ = fn609
n4 = "#7fd47f"
local oa_11 = "#6ec1ff"
mK = "#e8a34d"
n9 = "#8b93a3"
mE = fn587
nH = fn284
nq = fn630
m0 = fn34
mT = fn551
mF = fn409
nD = fn607
nx = function()
    local pu_1
    local ps = nD()
    local pt = ps and typeof(ps.cash) == "number"
    local pt_2
    if pt then
        return ps.cash
    end
    local pt_1 = ps and type(ps.GetCash) == "function"
    if pt_1 then
        pt_2, pu_1 = pcall(function()
            return ps:GetCash()
        end)
        local pv = pt_2 and typeof(pu_1) == "number"
        if pv then
            return pu_1
        end
        return 0
    end
    return 0
end
mY = fn309
mX = function(bl, bm)
    local pG
    pG = nil
    local pI_1
    pG = ClientRegistry.TryGet("StockController")
    local pH = not pG or type(pG.CanBuy) ~= "function"
    local pH_1
    if pH then
        return true
    end
    pH_1, pI_1 = pcall(function()
        return pG:CanBuy(bl, bm)
    end)
    return pH_1 and pI_1 == true
end
nI = fn63
nu = function(bA)
    if not bA then
        return false
    elseif fireproximityprompt then
        return pcall(function()
            fireproximityprompt(bA)
        end)
    else
        return pcall(function()
            bA:InputHoldBegin()
            task.wait(math.max(0.05, bA.HoldDuration))
            bA:InputHoldEnd()
        end)
    end
end
nn = {}
ni = false
m6 = function()
    if ni then
        return
    end
    ni = true
    pcall(function()
        Net:OnClient("Crate_OpenFX", function(bJ)
            local pQ
            local pR = type(bJ) == "table" and bJ.crateUid
            pQ = pR
            if pQ == nil then
                return
            end
            task.defer(function()
                pcall(function()
                    Net:FireServer("Crate_OpenDone", pQ, 0)
                end)
            end)
        end)
    end)
end
nT = fn664
nz = fn300
nQ = fn601
nA = fn769
mJ = fn64
nC = fn484
np = function(cN)
    local qX
    qX = nil
    local q__1
    local qZ_1
    local qY_1
    qX = nC(cN)
    if not qX then
        return 16, 16
    end
    qZ_1, qY_1, q__1 = pcall(function()
        return qX:GetBoundingBox()
    end)
    local qY_2 = qZ_1 and typeof(q__1) == "Vector3"
    if qY_2 then
        return q__1.X * 0.5, q__1.Z * 0.5
    end
    return 16, 16
end
mS = fn110
mL = fn259
m1 = function(df, dg, dh)
    local rn
    rn = nil
    local rs_1
    local rr_1, rr_2
    local ro = nA()
    if #ro == 0 then
        return false
    end
    local rp = nC(df)
    if not rp then
        return false
    end
    rn = ClientRegistry.TryGet("HotbarController")
    local rq = rn and type(rn._isFootprintPlaceable) == "function"
    local rq_1
    if not rq then
        rq_1, rr_1 = np(df)
        return mL(dg, dh, rq_1, rr_1, ro)
    end
    local clone = rp:Clone()
    clone.Name = "_OuroPlaceProbe"
    mI.makeGhost(clone, nil)
    clone.Parent = nJ
    mI.placeAt(clone, dg, dh)
    local _ghost = rn._ghost
    local _placing = rn._placing
    rn._ghost = clone
    rn._placing = { kind = "stand", standId = df }
    rr_2, rs_1 = pcall(function()
        return rn:_isFootprintPlaceable()
    end)
    rn._ghost = _ghost
    rn._placing = _placing
    clone:Destroy()
    return rr_2 and rs_1 == true
end
ng = fn771
mP = fn237
nM = fn839
m8 = fn823
mD = fn302
nF = function()
    local sy_1
    local sx_1
    local su = nD()
    local sv = not su or type(su.ownedStands) ~= "table"
    local sv_2
    if sv then
        return
    end
    for i, v in ipairs(nl) do
        local st
        local sG = v
        if mF("PlaceStandItems", sG) then
            local sv_1 = su.ownedStands[sG]
            local sw = typeof(sv_1) == "number" and sv_1 > 0
            local sw_1
            if sw then
                st, sv_2 = nM(sG)
                if not st then
                    return
                end
                sw_1, sx_1, sy_1 = pcall(function()
                    return Net:InvokeServer("Stand_Place", sG, st)
                end)
                if sw_1 and sx_1 then
                    if sv_2 then
                        mC[sv_2] = nil
                    end
                    task.wait(0.2)
                    return
                end
                if sv_2 then
                    mC[sv_2] = true
                end
                local sv_3 = type(sy_1) == "string" and string.find(string.lower(sy_1), "lot", 1, true)
                if sv_3 then
                    return
                end
            end
        end
    end
end
nS = fn817
ne = function()
    local sY_1
    local sT = nS()
    if not sT then
        return
    end
    local sV = m8()
    if #sV == 0 then
        return
    end
    for i, v in ipairs(sV) do
        local s8 = v
        local attr = s8:GetAttribute("StandUid")
        local sV_1 = attr ~= nil and not nz(attr)
        if sV_1 then
            local sV_2 = 0
            local sW = mY()
            local sX = sW and sW:FindFirstChild("_Crates")
            local sX_1
            if sX then
                sV_2 = #sX:GetChildren()
            end
            sX_1, sY_1 = pcall(function()
                return Net:InvokeServer("Crate_Place", sT, s8:GetPivot(), attr)
            end)
            if sX_1 and sY_1 then
                nQ(attr, 1.5)
                task.wait(0.25)
                return
            end
            nQ(attr, 3)
            local sX_2 = sX and #sX:GetChildren()
            if (sX_2 or 0) <= sV_2 then
                task.wait(0.15)
            end
        end
    end
end
nf = function()
    local te_1
    m6()
    local s9 = nI()
    if not s9 then
        return
    end
    local ta = mY()
    local tb = ta and ta:FindFirstChild("_Crates")
    if not tb then
        return
    end
    local tb_1 = nJ:GetServerTimeNow()
    for i, child in tb:GetChildren() do
        local tp = child
        local ta_2 = tp:IsA("Model") and tp:GetAttribute("CrateUid") ~= nil
        if ta_2 then
            local attr2 = tp:GetAttribute("LockedUntil")
            local tc = typeof(attr2) == "number" and tb_1 < attr2
            local OpenPrompt = tp:FindFirstChild("OpenPrompt", true)
            local td = not tc
            local td_1
            if td ~= false then
                td = OpenPrompt
            end
            if td then
                td = OpenPrompt:IsA("ProximityPrompt")
            end
            if td then
                td = OpenPrompt.Enabled
            end
            if td then
                local attr = tp:GetAttribute("StandUid")
                td_1, te_1 = pcall(function()
                    return tp:GetPivot()
                end)
                if td_1 and te_1 then
                    s9.CFrame = te_1 + Vector3.new(0, 5, 0)
                    task.wait(0.15)
                end
                nu(OpenPrompt)
                local tc_2 = os.clock() + 5
                while true do
                    if not (os.clock() < tc_2) then
                        nQ(attr, 1.5)
                        return
                    end
                    if Library.Unloaded then
                        break
                    end
                    if not tp.Parent then
                        nQ(attr, 1.5)
                        return
                    end
                    task.wait(0.1)
                end
                return
            end
        end
    end
end
m5 = fn819
nW = function()
    local tA = mY()
    local tA_2
    local tB = tA and tA:FindFirstChild("_Placed")
    if not tB then
        return
    end
    for i, child in tB:GetChildren() do
        local tz
        tA_2, tz = m5(child)
        if tA_2 then
            pcall(function()
                Net:FireServer("Auction_Start", tz)
            end)
            task.wait(0.35)
            return
        end
    end
end
nj = fn277
mH = fn485
nt = fn364
mN = function()
    local ud
    ud = nt()
    if not ud then
        return
    end
    if nx() < ud.cost then
        return
    end
    pcall(function()
        Net:InvokeServer("Expansion_BuyZone", ud.id)
    end)
end
nK = function()
    local ui_1
    local uf = nx()
    for i, v in ipairs(nl) do
        local uq = v
        if mF("BuyStandItems", uq) then
            local ug = no.get(uq)
            local ug_2
            local uh = mD(ug)
            local ug_1 = uh and uf >= uh and mX("stand", uq)
            if ug_1 then
                ug_2, ui_1 = pcall(function()
                    return Net:InvokeServer("Stand_Buy", uq)
                end)
                if ug_2 and ui_1 then
                    task.wait(0.15)
                    return
                end
            end
        end
    end
end
mO = function()
    local ur = nx()
    for i, v in ipairs(m9) do
        local uA = v
        if mF("BuyContainerItems", uA) then
            local us = nk.get(uA)
            local ut = mD(us)
            local us_1 = ut and ur >= ut and mX("container", uA)
            if us_1 then
                local us_2 = pcall(function()
                    Net:FireServer("Container_Buy", uA)
                end)
                if us_2 then
                    task.wait(0.15)
                    return
                end
            end
        end
    end
end
nd = function()
    local uB = nD()
    local uC = nx()
    for i, v in ipairs(m4) do
        local uO = v
        if mF("BuyDecorItems", uO) then
            local uD = m7.get(uO)
            local uD_3
            local uE = mD(uD)
            local uF = uB and uB.ownedDecor and uB.ownedDecor[uO]
            local uF_4
            local uG = uF or 0
            local uF_1 = uD
            if uF_1 then
                uF_1 = uD.maxOwned
            end
            local uD_1 = uF_1
            local uF_2 = uD_1 == nil
            if not uF_2 then
                local uG_1 = typeof(uG) == "number" and uG < uD_1
                uF_2 = uG_1
            end
            local uD_2 = uE
            local uG_2 = uF_2
            if uD_2 then
                uD_2 = uC >= uE
            end
            if uD_2 and uG_2 then
                uD_3, uF_4 = pcall(function()
                    return Net:InvokeServer("Decoration_Buy", uO)
                end)
                if uD_3 and uF_4 then
                    task.wait(0.15)
                    return
                end
            end
        end
    end
end
m2 = function()
    local uS
    uS = m0("HireManagerItem")
    local uT = nD()
    if not uS or uS == "" then
        return
    end
    if uT and uT.manager == uS then
        return
    end
    local uT_1 = m3.get(uS)
    local uU_2 = mD(uT_1)
    local uT_2 = uU_2 and nx() < uU_2
    if uT_2 then
        return
    end
    pcall(function()
        Net:InvokeServer("Manager_Hire", uS)
    end)
end
n2 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = ny, Copyable = true }, "|", n7 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
ob = {
    Info = n2:AddTab("Info", "info"),
    Main = n2:AddTab("Main", "car"),
    Settings = n2:AddTab("Settings", "settings")
}
ob.Farm = ob.Main:AddSubTab("Farm", "bot")
ob.Shop = ob.Main:AddSubTab("Shop", "shopping-cart")
n3 = fn282
for k, v in ob do
    if v ~= ob.Main then
        n3(v)
    end
end
nh, vy_4, vy_6_2, mU, mQ, vy_5 = nil, nil, nil, nil, nil, nil
vy_10 = 8
repeat
    n1 = (vy_10 * 1 + 1) % 3 + 1
    if n1 <= 2 then
        if n1 <= 1 then
            n1 = {
                "glpwvt",
                "ebpv",
                "ssutrqsrcgck",
                "etbdwe",
                "ckrqzmjdawyz",
                "xrx",
                "kbeqllpzf",
                "xapiqmubfd",
                "izvd",
                "kri"
            }
            if n1[(vy_10 * 31 + 55) % 10 + 1] <= n1[(vy_10 * 31 + 55) % 10 + 1] then
                nh = "Unknown"
                pcall(fn65)
                vy_4 = ob.Info:AddLeftGroupbox("Account", "circle-user")
                vy_4:AddLabel(m_("User", LocalPlayer.Name, n4), true)
                vy_4:AddLabel(m_("Status", "Keyless", n4), true)
                vy_4:AddLabel(m_("Executor", nh, n4), true)
                vy_6_2 = ob.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                vy_6_2:AddLabel(nm(n7 .. " [" .. tostring(game.PlaceId) .. "]", oa_11), true)
                vy_6_2:AddLabel(m_("Place ID", tostring(game.PlaceId), oa_11), true)
                mU = vy_6_2:AddLabel(m_("Session time", "0s", mK), true)
            else
                vy_6_2 = "Unknown"
                pcall(fn65)
                ob = (nil):AddLeftGroupbox("Account", "circle-user")
                ob:AddLabel(nh("User", vy_4.Name, LocalPlayer), true)
                ob:AddLabel(nh("Status", "Keyless", LocalPlayer), true)
                ob:AddLabel(nh("Executor", "Unknown", LocalPlayer), true)
                mU = (nil):AddLeftGroupbox("Game Info", "gamepad-2")
                mU:AddLabel(n7(nm .. " [" .. tostring(game.PlaceId) .. "]", n4), true)
                mU:AddLabel(nh("Place ID", tostring(game.PlaceId), n4), true)
                m_ = mU:AddLabel(nh("Session time", "0s", oa_11), true)
            end
            vy_10 = (vy_10 + 22) % 24
        else
            n1 = (vector.create((vy_10 * 7 + 2) % 11 + 1, (vy_10 * 4 + 4) % 13 + 1, (vy_10 * 9 + 8) % 17 + 1))
            n2 = (vector.create((vy_10 * 1 + 8) % 11 + 1, (vy_10 * 10 + 8) % 13 + 1, (vy_10 * 4 + 10) % 17 + 1))
            n3 = (vector.create((vy_10 * 5 + 3) % 11 + 1, (vy_10 * 11 + 13) % 13 + 1, (vy_10 * 8 + 5) % 17 + 1))
            oe = (vector.create((vy_10 * 5 + 1) % 5 + 1, (vy_10 * 2 + 3) % 7 + 1, (vy_10 * 3 + 6) % 9 + 1))
            if vector.dot(vector.cross(n1, (vector.cross(n2, n3))), oe) == vector.dot(n2 * vector.dot(n1, n3) - n3 * vector.dot(n1, n2), oe) then
                mQ = tostring(game.JobId)
            else
                vy_6_2 = tostring(game.JobId)
            end
            vy_10 = (vy_10 + 1) % 24
        end
    else
        if (vy_10 * 2 + 1) * 16 % 3 == ((vy_10 * 2 + 1) * 16 + 5) % 3 then
            mQ = #vy_5 > 18
        else
            vy_5 = #mQ > 18
        end
        vy_10 = (vy_10 + 10) % 24
    end
until (vy_10 * 19 + 7) % 24 == 18
if vy_5 then
    vy_4 = 3
    repeat
        vy_10 = (vector.create((vy_4 * 5 + 2) % 11 + 1, (vy_4 * 2 + 3) % 13 + 1, (vy_4 * 11 + 14) % 17 + 1))
        n1 = (vector.create((vy_4 * 1 + 5) % 11 + 1, (vy_4 * 4 + 3) % 13 + 1, (vy_4 * 1 + 6) % 17 + 1))
        n2 = (vector.create((vy_4 * 3 + 5) % 11 + 1, (vy_4 * 5 + 5) % 13 + 1, (vy_4 * 8 + 2) % 17 + 1))
        n3 = (vector.create((vy_4 * 5 + 4) % 11 + 1, (vy_4 * 1 + 1) % 13 + 1, (vy_4 * 5 + 3) % 17 + 1))
        if vector.dot(vector.cross(vy_10, n1), (vector.cross(n2, n3))) == vector.dot(vy_10, n2) * vector.dot(n1, n3) - vector.dot(vy_10, n3) * vector.dot(n1, n2) + 3 then
            mQ = string.sub(vy_5, 1, 18) .. "..."
        else
            vy_5 = string.sub(mQ, 1, 18) .. "..."
        end
        vy_4 = (vy_4 + 1) % 4
    until (vy_4 * 1 + 3) % 4 == 3
end
vy_4 = vy_5 or mQ
nP, nR, nO, connection, connection2, nw = nil, nil, nil, nil, nil, nil
n1 = vy_4
vy_6_2:AddLabel(m_("Server", n1, n9), true)
vy_6_2:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
nP = os.clock()
task.spawn(worker)
local ScriptsGroup = ob.Info:AddRightGroupbox("Scripts", "package")
ScriptsGroup:AddLabel(nm("Included in this hub", n9), true)
ScriptsGroup:AddLabel(nm(n7, oa_11), true)
local FeaturesGroup = ob.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(nm("Auto Farm", oa_11), true)
FeaturesGroup:AddLabel(nm("Auto Shop", mK), true)
FeaturesGroup:AddLabel(nm("Plot Expansion", n9), true)
local SocialsGroup = ob.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = ns })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local OuroborosHubGroup = ob.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = ns })
local FaqGroup = ob.Info:AddRightGroupbox("FAQ", "circle-help")
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
local PlacementGroup = ob.Farm:AddLeftGroupbox("Placement", "hammer")
PlacementGroup:AddToggle("AutoPlaceStands", { Text = "Auto Place Stands", Default = false })
PlacementGroup:AddDropdown("PlaceStandItems", { Text = "Stands", Values = nl, Multi = true, AllowNull = true, Default = {} })
PlacementGroup:AddSlider("StandSpacing", { Text = "Stand spacing", Default = 16, Min = 12, Max = 32, Rounding = 0 })
PlacementGroup:AddToggle("AutoPlaceContainers", { Text = "Auto Place Containers", Default = false })
PlacementGroup:AddDropdown("PlaceContainerItems", { Text = "Containers", Values = m9, Multi = true, AllowNull = true, Default = {} })
PlacementGroup:AddToggle("AutoOpenContainers", { Text = "Auto Open Containers", Default = false })
local AuctionGroup = ob.Farm:AddRightGroupbox("Auction", "gavel")
AuctionGroup:AddToggle("AutoAuction", { Text = "Auto Auction Cars", Default = false })
AuctionGroup:AddDropdown("AuctionRarities", { Text = "Rarities", Values = n5, Multi = true, AllowNull = true, Default = {} })
AuctionGroup:AddDropdown("AuctionMutations", { Text = "Mutations", Values = vy_11, Multi = true, AllowNull = true, Default = {} })
AuctionGroup:AddSlider("AuctionMinValue", { Text = "Min value", Default = 0, Min = 0, Max = 1000000000, Rounding = 0 })
local RebirthGroup = ob.Farm:AddRightGroupbox("Rebirth", "refresh-cw")
RebirthGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
oe = ob.Farm:AddRightGroupbox("Collect", "banknote")
oe:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
oe:AddSlider("CollectMinAmount", { Text = "Min amount", Default = 1, Min = 1, Max = 1000000000, Rounding = 0 })
n4 = ob.Farm:AddLeftGroupbox("Timing", "timer")
n4:AddSlider("FarmDelay", { Text = "Farm delay", Default = 0.4, Min = 0.1, Max = 3, Rounding = 2, Suffix = "s" })
n3 = ob.Shop:AddLeftGroupbox("Buy", "shopping-bag")
n3:AddToggle("AutoBuyStands", { Text = "Auto Buy Stands", Default = false })
n3:AddDropdown("BuyStandItems", { Text = "Stands", Values = nl, Multi = true, AllowNull = true, Default = {} })
n3:AddToggle("AutoBuyContainers", { Text = "Auto Buy Containers", Default = false })
n3:AddDropdown("BuyContainerItems", { Text = "Containers", Values = m9, Multi = true, AllowNull = true, Default = {} })
n3:AddToggle("AutoBuyDecor", { Text = "Auto Buy Decor", Default = false })
n3:AddDropdown("BuyDecorItems", { Text = "Decor", Values = m4, Multi = true, AllowNull = true, Default = {} })
n3:AddToggle("AutoBuyPlotSlot", { Text = "Auto Buy Plot Slot", Default = false })
n2 = ob.Shop:AddRightGroupbox("Employees", "users")
n2:AddToggle("AutoHireEmployees", { Text = "Auto Hire Employees", Default = false })
n2:AddDropdown("HireManagerItem", { Text = "Employee", Values = n6, Default = n6[1] })
vy_5 = ob.Shop:AddRightGroupbox("Timing", "timer")
vy_5:AddSlider("ShopDelay", { Text = "Shop delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2, Suffix = "s" })
vy_10 = ob.Settings:AddLeftGroupbox("Menu", "settings")
vy_10:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
vy_10:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
vy_10:AddButton("Unload", onUnload)
Library:OnUnload(fn10)
od:SetLibrary(Library)
od:SetFolder("OuroborosHub")
od:SaveDefault("Monochrome")
od:ApplyToTab(ob.Settings)
od:LoadDefault()
oc:SetLibrary(Library)
oc:IgnoreThemeSettings()
oc:SetIgnoreIndexes({ "MenuKeybind" })
oc:SetFolder("OuroborosHub/MyDealership")
oc:BuildConfigSection(ob.Settings)
oc:LoadAutoloadConfig()
nR = tick()
nO = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local vg = v
        pcall(function()
            vg:Disable()
        end)
    end
end)
nw = fn746
connection = n8.InputBegan:Connect(onInputBegan)
connection2 = n8.InputChanged:Connect(onInputChanged)
do
    Library:OnUnload(fn216)
    task.spawn(worker4)
    task.spawn(worker3)
    task.spawn(worker2)
    Library:Notify("My Dealership loaded")
end
