local fns = {}
local B4_8, B4_14, B4_18, B4_19, B4_20, B4_22, B4_26, B4_33
local PlotClient
local LocalPlayer
local sl
local rl
local r2
local q2
local Toggles
local sr
local qK
local q8
local rQ
local qQ
local se
local rD
local sk
local r1
local q1
local rJ
local qJ
local r7
local q7
local rP
local qP
local rw
local rd
local rC
local sj
local RacewayPath
local q0
local r6
local q6
local rO
local sc
local rc
local rU
local qU
local SpotConfig
local si
local ri
local Library
local so
local r5
local q5
local qN
local CarEconomy
local rb
local PlotConfig
local qT
local rh
local sn
local rn
local r4
local rM
local qM
local ra
local rz
local sg
local rg
local rY
local Options
local sm
local rm
local RollClock
local qL
local rs
local LuckLadderConfig
local q9
local ry
local CarRarities
function fns.fn13()
    return rJ:FindFirstChild("ParkingLot_" .. tostring(LocalPlayer.UserId))
end
function fns.fn31()
    if rw.raceBound then
        pcall(function()
            sk:UnbindFromRenderStep(rD)
        end)
        rw.raceBound = false
    end
    rw.raceEntered = false
end
function fns.fn35()
    if sm("AutoBuyRoll") then
        sj()
    end
end
function fns.fn55()
    local wH = if not sm("AutoCollectMoney") then 1 else 0
    if wH == 1 then
        return
    end
    if os.clock() - rw.lastCollectAt < PlotConfig.CollectCooldown then
        return
    end
    rw.lastCollectAt = os.clock()
    for k, v in rQ() do
        rc(v)
    end
    if LocalPlayer:GetAttribute("Driving") then
        return
    end
    local wB = rs()
    local wC = wB and wB.Parent
    local wD = wC
    if wC then
        wC = tonumber(wD:GetAttribute("StoredCash"))
    end
    if (wC or 0) < 1 then
        return
    end
    local ManualCollect = wB:FindFirstChild("ManualCollect")
    local wB_1 = ManualCollect and ManualCollect:FindFirstChildWhichIsA("BasePart", true)
    local wB_2 = q1()
    local wD_2 = wB_1 and wB_2 and not sm("AutoFarmRace")
    if wD_2 then
        wB_2.CFrame = wB_1.CFrame + Vector3.new(0, 4, 0)
    end
end
function fns.fn108(P)
    if P == nil then
        return nil
    elseif cloneref then
        return cloneref(P)
    else
        return P
    end
end
function fns.fn124()
    local xg = rd()
    for k, v in r7() do
        xg[#xg + 1] = v
    end
    table.sort(xg, function(gu, gv)
        if gu.oneIn ~= gv.oneIn then
            return gu.oneIn < gv.oneIn
        end
        return (gu.level or 0) < (gv.level or 0)
    end)
    return xg
end
function fns.fn146(a0)
    if typeof(a0) ~= "string" then
        return nil
    end
    local ti = CarRarities.tierOf(a0)
    return ti and ti.name or nil
end
function fns.fn149(cT, cU)
    local ux = q1()
    if not (ux and cT) then
        return false
    end
    local pivot = cT:GetPivot()
    if (ux.Position - pivot.Position).Magnitude <= cU then
        return true
    end
    ux.CFrame = pivot * CFrame.new(0, 4, 0)
    ux.AssemblyLinearVelocity = Vector3.zero
    return true
end
function fns.fn162()
    local tw = tonumber(sc:InvokeServer()) or 0
    rw.cash = tw
end
function fns.fn183()
    local uD = sr()
    local uE = uD and uD:FindFirstChild("RollProximity")
    return uE
end
function fns.fn195()
    local xX = q1()
    local Raceway = rJ:FindFirstChild("Raceway")
    if not (xX and Raceway) then
        return false
    end
    local xZ_1 = RaycastParams.new()
    xZ_1.FilterType = Enum.RaycastFilterType.Include
    xZ_1.FilterDescendantsInstances = { Raceway }
    return rJ:Raycast(xX.Position + Vector3.new(0, 2, 0), Vector3.new(0, -30, 0), xZ_1) ~= nil
end
function fns.fn201(dh)
    if not qU() then
        return
    end
    local uL = qN()
    if dh and not uL then
        pcall(function()
            qK:FireServer(true)
        end)
    else
        local uM_1 = not dh
        if uM_1 ~= false then
            uM_1 = uL
        end
        if uM_1 then
            pcall(function()
                qK:FireServer(false)
            end)
        end
    end
end
function fns.fn208(ck, cl)
    local cn = r4(ck)
    return cn[cl] == true
end
function fns.fn210()
    if not Toggles.AutoFarmRace.Value then
        qJ()
        pcall(function()
            qL:FireServer()
        end)
        pcall(function()
            so:FireServer()
        end)
    end
end
function fns.onOnClientEvent3(bx)
    if typeof(bx) == "table" then
        rw.tree = bx
    end
end
function fns.fn245()
    local ty = tonumber(r1:InvokeServer()) or 0
    rw.trophies = ty
end
function fns.worker()
    while not Library.Unloaded do
        if sm("AutoRoll") then
            pcall(q2)
        end
        if sm("AutoBuyRoll") then
            pcall(rm)
        end
        task.wait(0.2)
    end
end
function fns.fn263(cg)
    local t2 = Options[cg]
    if not t2 then
        return {}
    end
    return t2.Value or {}
end
function fns.worker3()
    while not Library.Unloaded do
        pcall(rP)
        task.wait(0.25)
    end
end
function fns.fn272()
    return LocalPlayer:GetAttribute("PassAutoRoll") == true
end
function fns.onOnClientEvent5(bB, bC, bD, bE, bF, bG)
    local tJ = tonumber(bC) or 1
    local offers = rw.offers
    local tL = bE == true
    local tM = bF == true
    local tN = os.clock()
    local tO = os.clock() + rh()
    local tP = bE
    if tP then
        local goldenExtra = RollClock.goldenExtra
        local tR = tonumber(LocalPlayer:GetAttribute("TreeCooldownDelta")) or 0
        local tS = tonumber(LocalPlayer:GetAttribute("PassRollSpeed")) or 1
        tP = goldenExtra(tR, tS)
    end
    local tP_1 = tO + (tP or 0)
    local tO_1 = tonumber(bG) or 0
    offers[tJ] = { name = bB, variant = bD, golden = tL, free = tM, at = tN, readyAt = tP_1 + tO_1 }
    rw.lastRollAt = os.clock()
end
function fns.fn287(fH)
    local wy = q1()
    if not (wy and fH) then
        return
    end
    if firetouchinterest then
        pcall(firetouchinterest, wy, fH, 0)
        pcall(firetouchinterest, wy, fH, 1)
    end
end
local function fn309()
    local vt_1
    local vs_1
    if os.clock() - rw.lastTreePull < 1.5 then
        return
    end
    rw.lastTreePull = os.clock()
    vs_1, vt_1 = pcall(function()
        return rl:InvokeServer()
    end)
    local vu = vs_1 and typeof(vt_1) == "table"
    if vu then
        rw.tree = vt_1
    end
end
local function fn331()
    local gy = ri()
    return gy[#gy]
end
local function onOnClientEvent4(bz)
    if typeof(bz) == "table" then
        rw.indexData = bz
    end
end
local function worker2()
    while not Library.Unloaded do
        if sm("AutoGear") then
            pcall(sl)
        end
        if sm("AutoUpgrade") then
            pcall(ra)
        end
        if sm("AutoUnlockSpots") then
            pcall(sg)
        end
        if sm("AutoClaimIndex") then
            pcall(q6)
        end
        if sm("AutoCollectMoney") then
            pcall(qT)
        end
        if sm("AutoSell") then
            pcall(se)
        end
        task.wait(0.35)
    end
end
local function fn408()
    local wO = qM()
    local wP = {}
    if not wO then
        return wP
    end
    for i, child in wO:GetChildren() do
        local wO_1 = child.Name == "ParkedCar" and child:GetAttribute("OwnerUserId") == LocalPlayer.UserId
        if wO_1 then
            local attr2 = child:GetAttribute("CarName")
            local attr = child:GetAttribute("ItemId")
            local wR = attr ~= nil
            local wS = typeof(attr2) == "string" and wR
            if wS then
                local wR_1 = #wP + 1
                local wS_1 = tonumber(child:GetAttribute("Level")) or 1
                wP[wR_1] = { source = "parked", id = attr, name = attr2, level = wS_1, oneIn = rY(attr2), tier = si(attr2) }
            end
        end
    end
    return wP
end
local function fn416()
    local vK = qM()
    if not vK then
        return nil
    end
    local vL
    for i, child in vK:GetChildren() do
        if child.Name == "UnlockSpotSign" then
            local vK_1 = tonumber(child:GetAttribute("SpotIndex"))
            if vK_1 then
                local vM = tonumber(child:GetAttribute("Price")) or SpotConfig.priceOf(vK_1)
                if not vL or vK_1 < vL.index then
                    vL = { index = vK_1, price = vM, sign = child }
                end
            end
        end
    end
    return vL
end
local function fn417()
    local tp = (tonumber(LocalPlayer:GetAttribute("TreeCooldownDelta")))
    local tv = if tp then 1 else 0
    local tt = 3487 * tv + 3212 * (1 - tv)
    local tu = 2072 * tv + 957 * (1 - tv)
    if not ((tt * 178 + tu * 4013 + tt * tu) % 16777213 == 16160686) then
        tp = 0
    end
    local tq = tp
    local tp_1 = tonumber(LocalPlayer:GetAttribute("PassRollSpeed")) or 1
    return RollClock.cooldown(tq, tp_1)
end
local function fn435()
    return r2
end
local function fn437()
    local tc_1
    local tb = rw.kit and rw.kit.Parent
    local tb_1
    if tb then
        return rw.kit
    end
    tb_1, tc_1 = pcall(function()
        return PlotClient.waitForKit()
    end)
    if tb_1 and tc_1 then
        rw.kit = tc_1
        return tc_1
    end
    return nil
end
local function fn440(b7, b8, b9)
    return string.format("<b>%s</b> %s %s", b7, q9("-", "#5a6070"), q9(b8, b9))
end
local function fn469(h8)
    local DiscordGroup = h8:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = rn })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = rn })
end
local function fn504(a5)
    local tl = CarRarities.get(a5)
    return tl and tl.oneIn or 2
end
local function fn510(bY, bZ)
    if setclipboard then
        setclipboard(bY)
    elseif toclipboard then
        toclipboard(bY)
    end
    Library:Notify(bZ)
end
local function fn595(ba, bb, bc)
    if bc then
        return 0
    end
    return CarEconomy.valueOf(ba) * CarEconomy.variantValueMult(bb)
end
local function fn663()
    return LocalPlayer:GetAttribute("AutoRollOff") == nil
end
local function fn678()
    rz(q8, "Copied Discord invite to clipboard")
end
local function fn691()
    if sm("AutoBuyRoll") then
        sj()
    end
end
local function onOnClientEvent2(bu)
    local tF = tonumber(bu) or rw.trophies
    rw.trophies = tF
end
local function fn706()
    local Character = LocalPlayer.Character
    local tg = Character and Character:FindFirstChild("HumanoidRootPart")
    return tg
end
local function fn711()
    if not sm("AutoRoll") then
        return
    end
    q7(true)
    local vj = rh()
    if os.clock() - rw.lastRollAt < vj then
        return
    end
    rO()
end
local function fn731()
    local wi = rs()
    if not wi then
        return {}
    end
    local wj = {}
    for k, v in { "ManualCollect", "Autocollect" } do
        local wk = wi:FindFirstChild(v)
        if wk then
            for i, descendant in wk:GetDescendants() do
                if descendant:IsA("BasePart") then
                    wj[#wj + 1] = descendant
                end
            end
        end
    end
    return wj
end
local function fn732()
    local xO = rw.racePath
    local xT = if xO then 1 else 0
    local xR = 2701 * xT + 1223 * (1 - xT)
    local xS = 1349 * xT + 2771 * (1 - xT)
    if not ((xR * 1377 + xS * 3065 + xR * xS) % 16777213 == 11497611) then
        xO = RacewayPath.build()
    end
    local xP = xO
    rw.racePath = xP
    if xP then
        local xO_1 = xP.startS or 0
        return xP:frame(xO_1, 0, 5)
    end
    local Raceway = rJ:FindFirstChild("Raceway")
    local xP_1 = Raceway and Raceway:FindFirstChild("StartLine")
    if xP_1 then
        return xP_1:GetPivot() + Vector3.new(0, 6, 0)
    end
    return CFrame.new(-217.5, 22, 0)
end
local function fn742()
    local uJ = qU() and qN()
    if uJ then
        return
    end
    if sm("AutoRollTeleportNear") then
        local uJ_1 = sr()
        if uJ_1 then
            q5(uJ_1, 6)
            task.wait(0.12)
        end
    end
    local uJ_2 = r6()
    if not uJ_2 then
        return
    end
    if fireproximityprompt then
        pcall(fireproximityprompt, uJ_2)
    end
end
local function fn757()
    if not sm("AutoGear") then
        return
    end
    if os.clock() - rw.lastGearAt < 0.5 then
        return
    end
    local vl = (LocalPlayer:GetAttribute("LadderReqText"))
    local vr = if vl then 1 else 0
    local vp = 3027 * vr + 3927 * (1 - vr)
    local vq = 3512 * vr + 1795 * (1 - vr)
    if not ((vp * 2062 + vq * 3569 + vp * vq) % 16777213 == 12629613) then
        vl = ""
    end
    if vl ~= "" then
        return
    end
    local Tiers = LuckLadderConfig.Tiers
    local vm = tonumber(LocalPlayer:GetAttribute("LadderTiers")) or 0
    local vn = Tiers[vm + 1]
    if not vn then
        return
    end
    if vn.cost > 0 and rw.cash < vn.cost then
        return
    end
    if (vn.trophies or 0) > 0 and rw.trophies < vn.trophies then
        return
    end
    rw.lastGearAt = os.clock()
    pcall(function()
        sn:FireServer()
    end)
end
local function fn799(cc)
    return Toggles[cc] and Toggles[cc].Value == true
end
local function fn870()
    if not sm("AutoFarmRace") then
        if rw.raceEntered or rw.raceBound then
            qJ()
            pcall(function()
                qL:FireServer()
            end)
            pcall(function()
                so:FireServer()
            end)
        end
        return
    end
    local x9 = if LocalPlayer:GetAttribute("Driving") then 1 else 0
    if x9 == 1 then
        r5()
        rw.raceEntered = true
        return
    end
    qJ()
    if not qQ() then
        return
    end
    if rg() then
        return
    end
    if os.clock() - rw.lastRaceTp < 2.5 then
        return
    end
    local x5_2 = q1()
    if not x5_2 then
        return
    end
    rw.lastRaceTp = os.clock()
    x5_2.CFrame = rU()
    x5_2.AssemblyLinearVelocity = Vector3.zero
end
local function fn900()
    local us_1
    local ur_1
    if os.clock() - rw.lastOfferPull < 1.25 then
        return
    end
    rw.lastOfferPull = os.clock()
    ur_1, us_1 = pcall(function()
        return rb:InvokeServer()
    end)
    if ur_1 then
        qP(us_1)
    end
end
local function fn905()
    if Toggles.AutoBuyRoll.Value then
        sj()
    end
end
local function fn922()
    local uA = rs()
    if not uA then
        return nil
    end
    local Pedestal = uA:FindFirstChild("Pedestal")
    local uA_1 = Pedestal and Pedestal:FindFirstChild("Button")
    return uA_1
end
local function fn957(cp)
    local t6 = typeof(cp) ~= "table" or typeof(cp.name) ~= "string"
    if t6 then
        return false
    end
    local t6_1 = cp.variant == "Chroma" and sm("BuyChroma")
    if t6_1 then
        return true
    end
    local t6_2 = si(cp.name)
    local t7 = t6_2 and rM("BuyRarity", t6_2)
    return t7
end
local function onOnClientEvent(br)
    local tA = (tonumber(br))
    local tE = if tA then 1 else 0
    local tC = 302 * tE + 3657 * (1 - tE)
    local tD = 1605 * tE + 1567 * (1 - tE)
    if not ((tC * 3876 + tD * 3045 + tC * tD) % 16777213 == 6542487) then
        tA = rw.cash
    end
    rw.cash = tA
end
local function fn1050()
    local v__1
    local vZ_1
    if os.clock() - rw.lastIndexPull < 1.5 then
        return
    end
    rw.lastIndexPull = os.clock()
    vZ_1, v__1 = pcall(function()
        return q0:InvokeServer()
    end)
    local v0 = vZ_1 and typeof(v__1) == "table"
    if v0 then
        rw.indexData = v__1
    end
end
local function onOnClientEvent6(bN, bO, bP)
    if bP then
        local offers = rw.offers
        local tV = tonumber(bN) or 1
        offers[tV] = nil
    end
end
local function fn1061(b4, b5)
    return string.format('<font color="%s">%s</font>', b5, b4)
end
local function fn1078(cy)
    if typeof(cy) ~= "table" then
        return
    end
    for k, v in cy do
        local uc = tonumber(k)
        local ud = typeof(v) == "string" and uc
        if ud then
            local ud_1 = rw.offers[uc]
            local ue_1 = not ud_1
            local uq = if ue_1 then 1 else 0
            local uo = 2439 * uq + 560 * (1 - uq)
            local up = 1314 * uq + 1316 * (1 - uq)
            if not ((uo * 4041 + up * 2225 + uo * up) % 16777213 == 15984495) then
                ue_1 = ud_1.name ~= v
            end
            if ue_1 then
                local offers = rw.offers
                local uf = ud_1 and ud_1.variant
                local ud_2 = ud_1 and ud_1.free or false
                offers[uc] = { name = v, variant = uf, free = ud_2, at = os.clock(), readyAt = os.clock() }
            end
        elseif typeof(v) == "table" then
            local ud_3 = v.name or v.car or v.landed
            local ue_3 = uc
            if not ue_3 then
                ue_3 = tonumber(v.unit)
            end
            local ud_4 = ue_3 or 1
            if typeof(ud_3) == "string" then
                rw.offers[ud_4] = { name = ud_3, variant = v.variant, free = v.free == true, at = os.clock(), readyAt = os.clock() }
            end
        end
    end
end
local function fn1099()
    local w1_1
    local w0_1
    local w_ = {}
    w0_1, w1_1 = pcall(function()
        return rC:InvokeServer()
    end)
    local w2 = not w0_1 or typeof(w1_1) ~= "table"
    if w2 then
        return w_
    end
    for k, v in w1_1 do
        local w0_2 = typeof(v) == "table" and typeof(v.name) == "string" and v.id ~= nil
        if w0_2 then
            w_[#w_ + 1] = { source = "reserve", id = v.id, name = v.name, xp = v.xp, oneIn = rY(v.name), tier = si(v.name) }
        end
    end
    return w_
end
local function fn1104()
    if Toggles.AutoRoll.Value then
        q7(true)
    else
        q7(false)
    end
end
qJ = nil
qK = nil
qL = nil
qM = nil
qN = nil
qP = nil
qQ = nil
qT = nil
qU = nil
q0 = nil
q1 = nil
q2 = nil
q5 = nil
q6 = nil
q7 = nil
q8 = nil
q9 = nil
ra = nil
rb = nil
rc = nil
rd = nil
rg = nil
rh = nil
ri = nil
rl = nil
rm = nil
rn = nil
local rq
rs = nil
local qG, qH, qI, qO, qR, qS, qV, qW, qX, qY, qZ, q_, q3, q4, re, rf, rj, rk, ro, rp, rr
rw = nil
ry = nil
rz = nil
SpotConfig = nil
rC = nil
rD = nil
LocalPlayer = nil
Options = nil
rJ = nil
Toggles = nil
rM = nil
rO = nil
rP = nil
rQ = nil
PlotConfig = nil
rU = nil
PlotClient = nil
rY = nil
Library = nil
RacewayPath = nil
r1 = nil
r2 = nil
RollClock = nil
r4 = nil
r5 = nil
r6 = nil
r7 = nil
LuckLadderConfig = nil
CarEconomy = nil
sc = nil
se = nil
CarRarities = nil
local rt, ru, rv, rx, rA, IndexConfig, rH, rI, UpgradeConfig, rN, rR, SaveManager, rV, ThemeManager, rZ, r8, sa, sd
sg = nil
si = nil
sj = nil
sk = nil
sl = nil
sm = nil
sn = nil
so = nil
sr = nil
local sh, sp, sq
sh = nil
sp = nil
sq = nil
qG, B4_20, sk, sd, sa, r8, r2, rZ, rV, rR, rJ, LocalPlayer, ry = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local B4_31 = 1
repeat
    B4_8 = (B4_31 * 1 + 1) % 5 + 1
    if B4_8 <= 3 then
        if B4_8 <= 2 then
            if B4_8 <= 1 then
                if not rJ or not r8 or not r8 and not qG or not r8 and r8 and (rJ or not qG) or (not rJ or r8 or not r8 and r8) and ((not rJ or r8) and (not qG or not qG)) or not (not rJ or not r8 or not r8 and not qG or not r8 and r8 and (rJ or not qG) or (not rJ or r8 or not r8 and r8) and ((not rJ or r8) and (not qG or not qG))) then
                    rR = game:GetService("Lighting")
                    rJ = game:GetService("Workspace")
                else
                    rJ = game:GetService("Lighting")
                    rR = game:GetService("Workspace")
                end
                B4_31 = (B4_31 + 21) % 40
            else
                B4_33 = {
                    "aweiosnjajs",
                    "tdb",
                    "ityfmlx",
                    "qcmtwv",
                    "jiawcptzlj",
                    "erebbmdmzy",
                    "vxgp",
                    "cpuyk",
                    "wiasgqzpj",
                    "vdg",
                    "cdnallqlt"
                }
                if B4_33[(B4_31 * 29 + 78) % 11 + 1] <= B4_33[(B4_31 * 29 + 78) % 11 + 1] then
                    LocalPlayer = qG.LocalPlayer
                    ry = fn435
                else
                    ry = LocalPlayer.LocalPlayer
                    qG = fn435
                end
                B4_31 = (B4_31 + 16) % 40
            end
        else
            B4_33 = (vector.create((B4_31 * 5 + 2) % 11 + 1, (B4_31 * 11 + 9) % 13 + 1, (B4_31 * 7 + 12) % 17 + 1))
            B4_22 = (vector.create((B4_31 * 1 + 4) % 11 + 1, (B4_31 * 5 + 12) % 13 + 1, (B4_31 * 6 + 17) % 17 + 1))
            local Dz = vector.dot(B4_33, B4_22)
            if Dz * Dz >= vector.dot(B4_33, B4_33) * vector.dot(B4_22, B4_22) + 1 then
                ry = game:GetService("Players")
            else
                qG = game:GetService("Players")
            end
            B4_31 = (B4_31 + 26) % 40
        end
    elseif B4_8 <= 4 then
        B4_8 = (vector.create((B4_31 * 2 + 4) % 11 + 1, (B4_31 * 4 + 7) % 13 + 1, (B4_31 * 2 + 12) % 17 + 1))
        B4_33 = (vector.create((B4_31 * 3 + 2) % 11 + 1, (B4_31 * 3 + 13) % 13 + 1, (B4_31 * 12 + 17) % 17 + 1))
        local CJ = vector.dot(B4_8, B4_33)
        if CJ * CJ >= vector.dot(B4_8, B4_8) * vector.dot(B4_33, B4_33) + 1 then
            r8 = game:GetService("ReplicatedStorage")
            sd = game:GetService("RunService")
            B4_20 = game:GetService("UserInputService")
            sk = game:GetService("VirtualUser")
            sa = game:GetService("HttpService")
        else
            B4_20 = game:GetService("ReplicatedStorage")
            sk = game:GetService("RunService")
            sd = game:GetService("UserInputService")
            sa = game:GetService("VirtualUser")
            r8 = game:GetService("HttpService")
        end
        B4_31 = (B4_31 + 11) % 40
    else
        B4_8 = {
            "vimsrsgsm",
            "zoyhl",
            "rjooatcce",
            "xehatxkkrw",
            "mtgb",
            "ajiwrewzt",
            "hxvzgtp",
            "lclmo",
            "klj",
            "hqjvmlstec"
        }
        local DP = B4_31
        B4_33 = B4_8[DP % 10 + 1]
        if B4_33:len() >= B4_33:reverse():rep(DP % 3 + 2):len() then
            rV = game:GetService("CoreGui")
            r2 = game:GetService("GuiService")
            rZ = game:GetService("TeleportService")
        else
            r2 = game:GetService("CoreGui")
            rZ = game:GetService("GuiService")
            rV = game:GetService("TeleportService")
        end
        B4_31 = (B4_31 + 1) % 40
    end
until (B4_31 * 9 + 11) % 40 == 15
if getgenv then
    rq, B4_8 = nil, nil
    B4_31 = 3
    repeat
        B4_33 = (B4_31 * 1 + 0) % 2 + 1
        if B4_33 <= 1 then
            B4_33 = (vector.create((B4_31 * 2 + 3) % 11 + 1, (B4_31 * 5 + 6) % 13 + 1, (B4_31 * 1 + 15) % 17 + 1))
            B4_22 = (vector.create((B4_31 * 3 + 1) % 11 + 1, (B4_31 * 1 + 8) % 13 + 1, (B4_31 * 14 + 8) % 17 + 1))
            local C6 = vector.cross(B4_33, B4_22)
            local C7 = vector.dot(B4_33, B4_22)
            if vector.dot(C6, C6) + C7 * C7 == vector.dot(B4_33, B4_33) * vector.dot(B4_22, B4_22) then
                B4_8 = rq
            else
                rq = B4_8
            end
            B4_31 = (B4_31 + 7) % 8
        else
            local CD = bit32.rrotate(bit32.bxor(bit32.lrotate(B4_31, 21), string.byte(tostring(rq))), 25)
            if bit32.bxor(bit32.lrotate(bit32.bxor(CD, 742502630), 26), 2561738435) ~= bit32.lrotate(CD, 26) then
                getgenv().gethui = rq
                ry = getgenv().__OuroborosCollectCarsAndRaceLib
            else
                getgenv().gethui = ry
                rq = getgenv().__OuroborosCollectCarsAndRaceLib
            end
            B4_31 = (B4_31 + 1) % 8
        end
    until (B4_31 * 1 + 1) % 8 == 4
    if B4_8 then
        B4_8 = rq.Unload
    end
    if B4_8 then
        pcall(function()
            rq:Unload()
        end)
    end
end
pcall(function()
    gethui = ry
end)
if setthreadidentity then
    setthreadidentity(8)
end
re, q8, q3, qZ, qV, qR, qO, qI, sq, B4_14, CarRarities, CarEconomy, LuckLadderConfig, RollClock, RacewayPath, PlotClient, PlotConfig, UpgradeConfig, IndexConfig, SpotConfig, rj, B4_18, rb, q4, q_, qX, qS, qK, sn, sc, B4_19, r1, rN, rH, rC, rt, rr, rp, rl, rf, q0, qY, qL, B4_26, so, sh = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
re = "Collect Cars and Race"
q8 = "https://discord.gg/ehKVq7pf7v"
q3 = "https://rscripts.net/@Ouroboros"
qZ = "https://ouroboros-hub-rbx.web.app/"
qV = "#7fd47f"
qR = "#6ec1ff"
qO = "#e8a34d"
qI = "#8b93a3"
sq = "#e05a5a"
if B4_18 and q3 and (not B4_26 and B4_26) or (false or B4_26) and (false or B4_26) or (not B4_18) and (B4_26 or not B4_26) and (not B4_26 and CarRarities or CarRarities and false) or not (B4_18 and q3 and (not B4_26 and B4_26) or (false or B4_26) and (false or B4_26) or (not B4_18) and (B4_26 or not B4_26) and (not B4_26 and CarRarities or CarRarities and false)) then
    B4_14 = B4_20:WaitForChild("Shared")
else
    B4_20 = B4_14:WaitForChild("Shared")
end
if (LuckLadderConfig and B4_19 or not PlotClient and q0) and (LuckLadderConfig or B4_19 or (q0 or not q0)) and ((not PlotClient or not q0) and (LuckLadderConfig or PlotClient) or LuckLadderConfig and not B4_19 and (LuckLadderConfig or not q0)) or ((q0 or LuckLadderConfig) and (PlotClient or LuckLadderConfig) and (q0 and LuckLadderConfig and (B4_19 or B4_19)) or ((B4_19 or LuckLadderConfig) and (not LuckLadderConfig or not PlotClient) or (not PlotClient or LuckLadderConfig) and (PlotClient and PlotClient))) or not ((LuckLadderConfig and B4_19 or not PlotClient and q0) and (LuckLadderConfig or B4_19 or (q0 or not q0)) and ((not PlotClient or not q0) and (LuckLadderConfig or PlotClient) or LuckLadderConfig and not B4_19 and (LuckLadderConfig or not q0)) or ((q0 or LuckLadderConfig) and (PlotClient or LuckLadderConfig) and (q0 and LuckLadderConfig and (B4_19 or B4_19)) or ((B4_19 or LuckLadderConfig) and (not LuckLadderConfig or not PlotClient) or (not PlotClient or LuckLadderConfig) and (PlotClient and PlotClient)))) then
    CarRarities = require(B4_14:WaitForChild("CarRarities"))
else
    B4_14 = require(CarRarities:WaitForChild("CarRarities"))
end
CarEconomy = require(B4_14:WaitForChild("CarEconomy"))
LuckLadderConfig = require(B4_14:WaitForChild("LuckLadderConfig"))
RollClock = require(B4_14:WaitForChild("RollClock"))
RacewayPath = require(B4_14:WaitForChild("RacewayPath"))
PlotClient = require(B4_14:WaitForChild("PlotClient"))
PlotConfig = require(B4_14:WaitForChild("PlotConfig"))
UpgradeConfig = require(B4_14:WaitForChild("UpgradeConfig"))
IndexConfig = require(B4_14:WaitForChild("IndexConfig"))
SpotConfig = require(B4_14:WaitForChild("SpotConfig"))
local B4_10 = fns.fn108(B4_20:WaitForChild("CarRollRemotes"))
local B4_6 = fns.fn108(B4_10:WaitForChild("RollStarted"))
rj = fns.fn108(B4_10:WaitForChild("BuyOffer"))
B4_18 = fns.fn108(B4_10:WaitForChild("OfferResolved"))
rb = fns.fn108(B4_10:WaitForChild("GetOffers"))
q4 = fns.fn108(B4_10:WaitForChild("SetStopTier"))
q_ = fns.fn108(B4_10:WaitForChild("SetStopChroma"))
qX = fns.fn108(B4_10:WaitForChild("ClearSlots"))
qS = fns.fn108(B4_10:WaitForChild("GetAutoRoll"))
B4_31 = fns.fn108(B4_20:WaitForChild("PassRemotes"))
qK = fns.fn108(B4_31:WaitForChild("SetAutoRoll"))
local B4_3 = fns.fn108(B4_20:WaitForChild("LuckRemotes"))
sn = fns.fn108(B4_3:WaitForChild("BuyTier"))
local B4_25 = fns.fn108(B4_20:WaitForChild("CashRemotes"))
sc = fns.fn108(B4_25:WaitForChild("GetCash"))
B4_19 = fns.fn108(B4_25:WaitForChild("CashChanged"))
local B4_2 = fns.fn108(B4_20:WaitForChild("TrophyRemotes"))
r1 = fns.fn108(B4_2:WaitForChild("GetTrophies"))
local B4_29 = fns.fn108(B4_2:WaitForChild("TrophiesChanged"))
local B4_12 = fns.fn108(B4_20:WaitForChild("CarryRemotes"))
rN = fns.fn108(B4_12:WaitForChild("Pickup"))
rH = fns.fn108(B4_12:WaitForChild("SellCar"))
rC = fns.fn108(B4_12:WaitForChild("GetReserve"))
rt = fns.fn108(B4_12:WaitForChild("CarryReserve"))
rr = fns.fn108(B4_12:WaitForChild("SellReserve"))
rp = fns.fn108(B4_12:WaitForChild("BuySpot"))
B4_22 = fns.fn108(B4_20:WaitForChild("UpgradeRemotes"))
rl = fns.fn108(B4_22:WaitForChild("GetTree"))
rf = fns.fn108(B4_22:WaitForChild("BuyNode"))
local B4_28 = fns.fn108(B4_22:WaitForChild("TreeChanged"))
B4_33 = fns.fn108(B4_20:WaitForChild("IndexRemotes"))
q0 = fns.fn108(B4_33:WaitForChild("GetIndexData"))
qY = fns.fn108(B4_33:WaitForChild("ClaimIndexReward"))
local B4_5 = fns.fn108(B4_33:WaitForChild("IndexDataChanged"))
B4_8 = fns.fn108(B4_20:WaitForChild("DriveRemotes"))
qL = fns.fn108(B4_8:WaitForChild("Stop"))
B4_26 = fns.fn108(B4_20:WaitForChild("PlotRemotes"))
so = fns.fn108(B4_26:WaitForChild("TeleportHome"))
sh = {}
local B4_16 = {}
for k, v in CarRarities.Tiers do
    sh[k] = v.name
    B4_16[v.name] = k
end
B4_31 = {}
for k, v in sh do
    B4_31[v] = true
end
rI, rD, rw, Library, ThemeManager, SaveManager, rs, q1, qM, si, rY, rx, rh, qU, qN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
B4_33 = { Stock = true, Street = true }
rI = 80
rD = "OuroborosRaceDrive"
rw = {
    cash = 0,
    trophies = 0,
    kit = nil,
    offers = {},
    lastRollAt = 0,
    lastCollectAt = 0,
    lastGearAt = 0,
    lastSellAt = 0,
    lastBuyAt = {},
    raceBound = false,
    racePath = nil,
    raceS = 0,
    raceEntered = false,
    lastRaceTp = 0,
    lastCarryAttempt = 0,
    lastClearAt = 0,
    lastAutoRollQuery = 0,
    lastOfferPull = 0,
    heldPads = 0,
    tree = {},
    indexData = {},
    lastUpgradeAt = 0,
    lastSpotAt = 0,
    lastIndexAt = 0,
    lastTreePull = 0,
    lastIndexPull = 0
}
rs = fn437
q1 = fn706
qM = fns.fn13
si = fns.fn146
rY = fn504
rx = fn595
rh = fn417
qU = fns.fn272
qN = fn663
pcall(fns.fn162)
pcall(fns.fn245)
B4_19.OnClientEvent:Connect(onOnClientEvent)
B4_29.OnClientEvent:Connect(onOnClientEvent2)
B4_28.OnClientEvent:Connect(fns.onOnClientEvent3)
B4_5.OnClientEvent:Connect(onOnClientEvent4)
B4_6.OnClientEvent:Connect(fns.onOnClientEvent5)
B4_18.OnClientEvent:Connect(onOnClientEvent6)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
if getgenv then
    getgenv().__OuroborosCollectCarsAndRaceLib = Library
end
Toggles, Options, sp, rz, rn, q9, qW, sm, r4, rM, ro, qP, rv, q5, sr, r6, rO, q7, sj, rm, q2, sl, rA, ra, rk, sg, ru, q6, rQ, rc, qT, rd, r7, ri, qH, se, qJ, r5, rU, rg, qQ, rP, B4_22 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Toggles = Library.Toggles
Options = Library.Options
rz = fn510
rn = fn678
q9 = fn1061
qW = fn440
sm = fn799
r4 = fns.fn263
rM = fns.fn208
ro = fn957
qP = fn1078
rv = fn900
q5 = fns.fn149
sr = fn922
if (not q2 and q2 or q2 and not q2) and ((not qT or rk) and false) and (rn and false and (not q2 and 60) or q2 and rk and qT) or (not qT or 60 or q2 and q2) and ((not B4_22 or q2) and (B4_22 or not B4_22)) and ((not B4_22 or 60) and (not q2 or qT) and ((B4_22 or not q2) and (not qT or not rk))) or not ((not q2 and q2 or q2 and not q2) and ((not qT or rk) and false) and (rn and false and (not q2 and 60) or q2 and rk and qT) or (not qT or 60 or q2 and q2) and ((not B4_22 or q2) and (B4_22 or not B4_22)) and ((not B4_22 or 60) and (not q2 or qT) and ((B4_22 or not q2) and (not qT or not rk)))) then
    r6 = fns.fn183
    rO = fn742
    q7 = fns.fn201
else
    q7 = fns.fn183
    r6 = fn742
    rO = fns.fn201
end
sj = function()
    if not sm("AutoBuyRoll") then
        return
    end
    local uS = r4("BuyRarity")
    for k, v in sh do
        local uZ = v
        pcall(function()
            q4:FireServer(uZ, uS[uZ] == true)
        end)
    end
    pcall(function()
        q_:FireServer(sm("BuyChroma"))
    end)
end
rm = function()
    local u1_4
    if not sm("AutoBuyRoll") then
        return
    end
    rv()
    local u_ = os.clock()
    local u__1
    local u0 = false
    for k, v in rw.offers do
        local u7 = k
        local u1_1 = (ro(v))
        if u1_1 then
            u1_1 = u_ >= (v.readyAt or 0)
        end
        if u1_1 then
            if u_ - (rw.lastBuyAt[u7] or 0) >= 0.45 then
                local u1_3 = rx(v.name, v.variant, v.free)
                if rw.cash >= u1_3 then
                    rw.lastBuyAt[u7] = u_
                    pcall(function()
                        rj:FireServer(u7)
                    end)
                    u0 = true
                end
            end
        end
    end
    local vi = if qU() then 1 else 0
    if vi == 1 then
        if os.clock() - rw.lastAutoRollQuery >= 1.5 then
            rw.lastAutoRollQuery = os.clock()
            u__1, u1_4 = pcall(function()
                return qS:InvokeServer()
            end)
            local u2_3 = u__1 and typeof(u1_4) == "table"
            if u2_3 then
                local u__2 = tonumber(u1_4.held) or 0
                rw.heldPads = u__2
            end
        end
        local u__3 = false
        for k, v in rw.offers do
            if ro(v) then
                u__3 = true
                break
            end
        end
        local u1_5 = u0
        if not u1_5 then
            u1_5 = rw.heldPads > 0 and not u__3
        end
        if u1_5 then
            if os.clock() - rw.lastClearAt >= 1 then
                rw.lastClearAt = os.clock()
                task.delay(0.35, function()
                    pcall(function()
                        qX:FireServer()
                    end)
                end)
            end
        end
    end
end
if (Options or not ro or (not Options or ru) or not ru and q9 and (rn and not ro)) and ((not q9 or q9 or ro and not ru) and (rn and not q9 or not q9 and ru)) or not ((Options or not ro or (not Options or ru) or not ru and q9 and (rn and not ro)) and ((not q9 or q9 or ro and not ru) and (rn and not q9 or not q9 and ru))) then
    q2 = fn711
    sl = fn757
    rA = fn309
    ra = function()
        local vw
        local vy_6
        local vx_12
        if not sm("AutoUpgrade") then
            return
        end
        if os.clock() - rw.lastUpgradeAt < 0.45 then
            return
        end
        rA()
        vw = nil
        for k, v in UpgradeConfig.Tracks do
            local vx_7 = tonumber(rw.tree[v.id]) or 0
            local vx_8 = vx_7 + 1
            if vx_8 <= #v.nodes then
                local vy_5 = UpgradeConfig.costOf(v, vx_8)
                local vx_9 = UpgradeConfig.currencyOf(v)
                local vx_11 = vy_5 <= (vx_9 == "trophies" and rw.trophies or rw.cash)
                if vx_11 then
                    vx_11 = not vw or vy_5 < vw.cost
                end
                if vx_11 then
                    vw = { id = v.id, cost = vy_5 }
                end
            end
        end
        if not vw then
            return
        end
        rw.lastUpgradeAt = os.clock()
        vx_12, vy_6 = pcall(function()
            return rf:InvokeServer(vw.id)
        end)
        if vx_12 and vy_6 then
            rw.lastTreePull = 0
            rA()
        end
    end
else
    sl = fn711
    q2 = fn757
    ra = fn309
    rA = function()
        local vw
        local vy_3
        local vx_6
        if not sm("AutoUpgrade") then
            return
        end
        if os.clock() - rw.lastUpgradeAt < 0.45 then
            return
        end
        rA()
        vw = nil
        for k, v in UpgradeConfig.Tracks do
            local vx_1 = tonumber(rw.tree[v.id]) or 0
            local vx_2 = vx_1 + 1
            if vx_2 <= #v.nodes then
                local vy_2 = UpgradeConfig.costOf(v, vx_2)
                local vx_3 = UpgradeConfig.currencyOf(v)
                local vx_5 = vy_2 <= (vx_3 == "trophies" and rw.trophies or rw.cash)
                if vx_5 then
                    vx_5 = not vw or vy_2 < vw.cost
                end
                if vx_5 then
                    vw = { id = v.id, cost = vy_2 }
                end
            end
        end
        if not vw then
            return
        end
        rw.lastUpgradeAt = os.clock()
        vx_6, vy_3 = pcall(function()
            return rf:InvokeServer(vw.id)
        end)
        if vx_6 and vy_3 then
            rw.lastTreePull = 0
            rA()
        end
    end
end
rk = fn416
sg = function()
    local vW
    if not sm("AutoUnlockSpots") then
        return
    end
    if os.clock() - rw.lastSpotAt < 0.6 then
        return
    end
    vW = rk()
    if not vW then
        return
    end
    if rw.cash < vW.price then
        return
    end
    local vX = sm("AutoUnlockTeleportNear") and vW.sign
    if vX then
        q5(vW.sign, 5)
        task.wait(0.12)
    end
    rw.lastSpotAt = os.clock()
    pcall(function()
        rp:FireServer(vW.index)
    end)
end
ru = fn1050
q6 = function()
    if not sm("AutoClaimIndex") then
        return
    end
    local wb = if os.clock() - rw.lastIndexAt < 0.4 then 1 else 0
    if wb == 1 then
        return
    end
    ru()
    for k, v in rw.indexData do
        local wf = k
        local v5 = typeof(wf) == "string" and typeof(v) == "table" and v.claimed ~= true
        if v5 then
            local v5_1 = IndexConfig.GetEntry(wf)
            local v5_2 = v5_1 and v5_1.Required or 1
            local v5_3 = tonumber(v.count) or 0
            if v5_3 >= v5_2 then
                rw.lastIndexAt = os.clock()
                pcall(function()
                    qY:FireServer(wf)
                end)
                return
            end
        end
    end
end
rQ = fn731
rc = fns.fn287
qT = fns.fn55
rd = fn408
r7 = fn1099
ri = fns.fn124
qH = fn331
se = function()
    if not sm("AutoSell") then
        return
    end
    if os.clock() - rw.lastSellAt < 0.8 then
        return
    end
    local xp = ri()
    if #xp <= 1 then
        return
    end
    local xq = sm("AutoFarmRace") or LocalPlayer:GetAttribute("Driving")
    local attr = LocalPlayer:GetAttribute("Carrying")
    rw.lastSellAt = os.clock()
    local xs = #xp - 1
    for i = 1, xs do
        local xo = xp[i]
        local xs_1 = xo.tier and rM("SellRarity", xo.tier)
        if xs_1 then
            if xo.source == "reserve" then
                pcall(function()
                    rr:FireServer(xo.id)
                end)
            else
                local xs_2 = attr == nil
                local xt = not xq
                if xt ~= false then
                    xt = xs_2
                end
                if xt then
                    pcall(function()
                        rN:FireServer(xo.id)
                    end)
                    task.wait(0.25)
                    pcall(function()
                        rH:FireServer(xo.id)
                    end)
                    return
                end
            end
        end
    end
end
qJ = fns.fn31
r5 = function()
    if rw.raceBound then
        return
    end
    rw.racePath = RacewayPath.build()
    if rw.racePath then
        local xM = rw.racePath.startS or 0
        rw.raceS = xM
    end
    sk:BindToRenderStep(rD, Enum.RenderPriority.Last.Value, function(g5)
        local xG = Library.Unloaded or not sm("AutoFarmRace")
        if xG then
            return
        end
        local DriveChassis = rJ:FindFirstChild("DriveChassis")
        local racePath = rw.racePath
        local xG_1 = DriveChassis and DriveChassis:IsA("BasePart")
        if not (xG_1 and racePath) then
            return
        end
        local xG_2 = racePath:sample(rw.raceS)
        if xG_2 and xG_2.pos and (DriveChassis.Position - xG_2.pos).Magnitude > 24 then
            rw.raceS = racePath:nearestS(DriveChassis.Position)
        end
        rw.raceS = (rw.raceS + rI * g5) % racePath.length
        local xF = racePath:sample(rw.raceS)
        if xF and xF.pos and xF.tangent then
            pcall(function()
                DriveChassis.CFrame = racePath:frame(rw.raceS, 0, 2.4)
                DriveChassis.AssemblyLinearVelocity = xF.tangent * rI
            end)
        end
    end)
    rw.raceBound = true
end
rU = fn732
rg = fns.fn195
if (not sm and sm or (sl or sl)) and (sl and not sm and (not sm or not sl)) and not ((not sm and sm or (sl or sl)) and (sl and not sm and (not sm or not sl))) then
    rP = function()
        if typeof(LocalPlayer:GetAttribute("Carrying")) == "string" then
            return true
        end
        local x4 = if os.clock() - rw.lastCarryAttempt < 1.2 then 1 else 0
        if x4 == 1 then
            return false
        end
        rw.lastCarryAttempt = os.clock()
        local x0 = qH()
        if not x0 then
            return false
        end
        if x0.source == "parked" then
            pcall(function()
                rN:FireServer(x0.id)
            end)
        else
            pcall(function()
                rt:FireServer(x0.id)
            end)
        end
        return typeof(LocalPlayer:GetAttribute("Carrying")) == "string"
    end
    qQ = fn870
else
    qQ = function()
        if typeof(LocalPlayer:GetAttribute("Carrying")) == "string" then
            return true
        end
        local x4 = if os.clock() - rw.lastCarryAttempt < 1.2 then 1 else 0
        if x4 == 1 then
            return false
        end
        rw.lastCarryAttempt = os.clock()
        local x0 = qH()
        if not x0 then
            return false
        end
        if x0.source == "parked" then
            pcall(function()
                rN:FireServer(x0.id)
            end)
        else
            pcall(function()
                rt:FireServer(x0.id)
            end)
        end
        return typeof(LocalPlayer:GetAttribute("Carrying")) == "string"
    end
    rP = fn870
end
B4_8 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = q8, Copyable = true }, "|", re },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
B4_8:SetGlow(true, { Color = Color3.fromRGB(242, 154, 196), Radius = 24, Transparency = 0.3 })
sp = {
    Info = B4_8:AddTab("Info", "info"),
    Main = B4_8:AddTab("Main", "gamepad-2"),
    Player = B4_8:AddTab("Player", "person-standing"),
    Settings = B4_8:AddTab("Settings", "settings")
}
B4_22 = fn469
for k, v in sp do
    if k ~= "Info" then
        B4_22(v)
    end
end
local RollGroup = sp.Main:AddLeftGroupbox("Roll", "dices")
RollGroup:AddToggle("AutoRoll", { Text = "Auto Roll", Default = false, Tooltip = "You have to be near" })
RollGroup:AddToggle("AutoRollTeleportNear", { Text = "Teleport Near", Default = false })
RollGroup:AddDivider("Buy")
RollGroup:AddToggle("AutoBuyRoll", { Text = "Auto Buy Roll", Default = false })
RollGroup:AddDropdown("BuyRarity", {
    Text = "Rarity",
    Values = sh,
    Default = B4_31,
    Multi = true,
    AllowEmpty = true,
    Searchable = true,
    SelectAllButtons = true,
    Expandable = true,
    ExpandColumns = 2
})
RollGroup:AddToggle("BuyChroma", { Text = "Buy Chroma", Default = true })
B4_10 = sp.Main:AddLeftGroupbox("Sell", "banknote")
B4_10:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
B4_10:AddDropdown("SellRarity", {
    Text = "Rarity",
    Values = sh,
    Default = B4_33,
    Multi = true,
    AllowEmpty = true,
    Searchable = true,
    SelectAllButtons = true,
    Expandable = true,
    ExpandColumns = 2
})
B4_8 = sp.Main:AddRightGroupbox("Farm", "gauge")
B4_8:AddToggle("AutoGear", { Text = "Auto Gear", Default = false })
B4_8:AddToggle("AutoUpgrade", { Text = "Auto Upgrade", Default = false })
B4_8:AddToggle("AutoUnlockSpots", { Text = "Auto Unlock Spots", Default = false, Tooltip = "You have to be near" })
B4_8:AddToggle("AutoUnlockTeleportNear", { Text = "Teleport Near", Default = false })
B4_8:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
B4_8:AddDivider("Track")
B4_8:AddToggle("AutoFarmRace", { Text = "Auto Farm Race Track", Default = false })
B4_8:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false, Tooltip = "will teleport you" })
Toggles.AutoRoll:OnChanged(fn1104)
Toggles.AutoBuyRoll:OnChanged(fn905)
Options.BuyRarity:OnChanged(fn691)
Toggles.BuyChroma:OnChanged(fns.fn35)
Toggles.AutoFarmRace:OnChanged(fns.fn210)
B4_2 = function()
    local y8
    local y9
    y8 = nil
    y9 = nil
    local y6, y7, Label, Label2, Label3
    local function zd()
        local yi = hookfunction ~= nil
        local yj = hookmetamethod ~= nil
        local yk = getrawmetatable ~= nil
        local yl = setrawmetatable ~= nil
        local ym = getgc ~= nil
        local yn = getgenv ~= nil
        local yo = getreg ~= nil
        local yp = getconnections ~= nil
        local yq = firesignal ~= nil
        local yr = getcallbackvalue ~= nil
        local ys = setclipboard ~= nil
        local yt = getcustomasset ~= nil
        local yu = getnamecallmethod ~= nil
        local yv = isexecutorclosure ~= nil
        local yw = fireproximityprompt ~= nil
        local yx = firetouchinterest ~= nil
        local yy = WebSocket ~= nil
        local yz = readfile ~= nil
        local yA = writefile ~= nil
        local yC = (request or http_request) ~= nil
        local yE = (debug and debug.getupvalues) ~= nil
        local yG = (debug and debug.setupvalue) ~= nil
        local yH = 0
        local yI = { yi, yj, yk, yl, ym, yn, yo, yp, yq, yr, ys, yt, yu, yv, yw, yx, yy, yz, yA, yC, yE, yG }
        for i, v in ipairs(yI) do
            if v then
                yH += 1
            end
        end
        local yi_1 = yH / #yI
        if yi_1 >= 0.9 then
            return q9("Full Support", qV)
        elseif yi_1 >= 0.6 then
            return q9("Half Support", qO)
        else
            return q9("Low Support", sq)
        end
    end
    y8 = "Unknown"
    pcall(function()
        local yR_1
        local yQ_1
        if identifyexecutor then
            yR_1, yQ_1 = identifyexecutor()
            local yS = yR_1 ~= ""
            local yT = type(yR_1) == "string" and yS
            if yT then
                local yS_1 = type(yQ_1) == "string" and yQ_1 ~= "" and yR_1 .. " " .. yQ_1
                local yQ_2 = yS_1
                local yX = if yQ_2 then 1 else 0
                local yV = 605 * yX + 1674 * (1 - yX)
                local yW = 1048 * yX + 3946 * (1 - yX)
                if not ((yV * 3634 + yW * 1567 + yV * yW) % 16777213 == 4474826) then
                    yQ_2 = yR_1
                end
                y8 = yQ_2
            end
        end
    end)
    local ze = zd()
    y9 = os.clock()
    y6 = function()
        local y0 = math.floor(os.clock() - y9)
        if y0 < 60 then
            return y0 .. "s"
        elseif y0 < 3600 then
            return string.format("%dm %ds", y0 // 60, y0 % 60)
        else
            return string.format("%dh %dm", y0 // 3600, y0 % 3600 // 60)
        end
    end
    local UserGroup = sp.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(qW("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, qV), true)
    UserGroup:AddLabel(qW("UserId", tostring(LocalPlayer.UserId), qR), true)
    UserGroup:AddLabel(qW("Executor", y8 .. "  " .. ze, qV), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(qW("Session", y6(), qO), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            rz(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            rz("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = sp.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(qW("Game", re, qR), true)
    Label2 = SessionGroup:AddLabel(qW("Players", "0/0", qV), true)
    y7 = tostring(game.JobId)
    local ze_1 = #y7 > 18 and string.sub(y7, 1, 18) .. "..."
    local ze_2 = ze_1 or y7
    SessionGroup:AddLabel(qW("Job", ze_2, qI), true)
    Label = SessionGroup:AddLabel(qW("Ping", "0 ms", qO), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            rV:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            rz(y7, "Copied Job ID")
        end
    })
    task.spawn(function()
        local y3_1
        local y2_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(qW("Session", y6(), qO))
            Label2:SetText(qW("Players", #qG:GetPlayers() .. "/" .. tostring(qG.MaxPlayers), qV))
            y2_1, y3_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local y2_2 = y2_1 and y3_1 .. " ms" or "n/a"
            Label:SetText(qW("Ping", y2_2, qO))
        end
    end)
    local SocialsGroup = sp.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = rn })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            rz(q3, "Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            rz(qZ, "Copied website link")
        end
    })
end
B4_20 = function()
    local connection
    local MovementGroup = sp.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = sp.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local function jM()
        local Character = LocalPlayer.Character
        local zi = Character and Character:FindFirstChildOfClass("Humanoid")
        return zi
    end
    local function jR()
        local Character = LocalPlayer.Character
        local zl = Character and Character:FindFirstChild("HumanoidRootPart")
        return zl
    end
    sk.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = LocalPlayer.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local zn_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if zn_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    sd.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local zB_1 = jM()
            if zB_1 then
                zB_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = rJ.CurrentCamera
    sk.RenderStepped:Connect(function(kd)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local zG_1 = jM()
            if zG_1 then
                zG_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local zG_3 = jR()
            local zH = jM()
            if zG_3 and zH then
                zH.PlatformStand = true
                local zH_1 = Vector3.zero
                if sd:IsKeyDown(Enum.KeyCode.W) then
                    zH_1 += CurrentCamera.CFrame.LookVector
                end
                if sd:IsKeyDown(Enum.KeyCode.S) then
                    zH_1 -= CurrentCamera.CFrame.LookVector
                end
                if sd:IsKeyDown(Enum.KeyCode.A) then
                    zH_1 -= CurrentCamera.CFrame.RightVector
                end
                if sd:IsKeyDown(Enum.KeyCode.D) then
                    zH_1 += CurrentCamera.CFrame.RightVector
                end
                if sd:IsKeyDown(Enum.KeyCode.Space) then
                    zH_1 += Vector3.new(0, 1, 0)
                end
                if sd:IsKeyDown(Enum.KeyCode.LeftControl) then
                    zH_1 -= Vector3.new(0, 1, 0)
                end
                zG_3.AssemblyLinearVelocity = Vector3.zero
                if zH_1.Magnitude > 0 then
                    zG_3.CFrame = zG_3.CFrame + zH_1.Unit * Options.FlySpeed.Value * kd
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local zQ = jM()
            if zQ then
                zQ.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local zV = jM()
            if zV then
                zV.WalkSpeed = 16
            end
        end
    end)
    local function kz(kA)
        if not kA:IsA("ProximityPrompt") then
            return
        end
        kA.HoldDuration = 0
        kA.MaxActivationDistance = 50
        kA.RequiresLineOfSight = false
    end
    connection = nil
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in rJ:GetDescendants() do
                pcall(kz, descendant)
            end
            connection = rJ.DescendantAdded:Connect(function(kI)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(kz, kI)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
B4_2()
B4_20()
task.spawn(fns.worker)
task.spawn(worker2)
task.spawn(fns.worker3)
B4_12 = function()
    local BM, BN, BO, BP, BQ, BR, BS, BT, BU, connection2, connection, BX, Label, BZ, B_
    local MenuGroup = sp.Settings:AddLeftGroupbox("Menu", "logs")
    BM = 0
    BS = tick()
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    BO = function()
        local CurrentCamera = rJ.CurrentCamera
        if not CurrentCamera then
            return
        end
        sa:CaptureController()
        sa:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        BM += 1
        BS = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. BM)
        end)
    end
    connection2 = LocalPlayer.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(BO)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local Ai = Toggles.AntiAfk.Value and tick() - BS >= 60
            if Ai then
                pcall(BO)
            end
        end
    end)
    MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FpsBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    BU = function(lr)
        pcall(function()
            rZ:SetGameplayPausedNotificationEnabled(not lr)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = r2:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not lr
            end
        end)
        if not lr then
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
    Toggles.AntiGameplayPause:OnChanged(function()
        BU(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                BU(true)
            end
        end
    end)
    BN = false
    BT = function()
        local PlaceId, JobId
        if BN then
            return
        end
        BN = true
        PlaceId, JobId = game.PlaceId, game.JobId
        local Ax = pcall(function()
            rV:TeleportToPlaceInstance(PlaceId, JobId, LocalPlayer)
        end)
        if not Ax then
            pcall(function()
                rV:Teleport(PlaceId, LocalPlayer)
            end)
        end
    end
    task.spawn(function()
        local RobloxPromptGui = r2:WaitForChild("RobloxPromptGui", 30)
        local AC = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
        if not AC then
            return
        end
        AC.ChildAdded:Connect(function(l0)
            if Library.Unloaded then
                return
            end
            if Toggles.AutoReconnect.Value and l0.Name == "ErrorPrompt" then
                BT()
            end
        end)
    end)
    rV.TeleportInitFailed:Connect(function()
        if Toggles.AutoReconnect.Value then
            BN = false
            BT()
        end
    end)
    Toggles.Disable3D:OnChanged(function()
        pcall(function()
            sk:Set3dRenderingEnabled(not Toggles.Disable3D.Value)
        end)
    end)
    B_ = {
        ParticleEmitter = true,
        Trail = true,
        Smoke = true,
        Fire = true,
        Sparkles = true,
        Explosion = true,
        Beam = true
    }
    BP = function(mi)
        if B_[mi.ClassName] then
            pcall(function()
                mi.Enabled = false
            end)
        end
    end
    connection = nil
    Toggles.FpsBoost:OnChanged(function()
        if Toggles.FpsBoost.Value then
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end)
            pcall(function()
                rR.GlobalShadows = false
            end)
            pcall(function()
                rR.FogEnd = 9000000000
            end)
            for i, descendant in rJ:GetDescendants() do
                pcall(BP, descendant)
            end
            connection = rJ.DescendantAdded:Connect(function(mx)
                if Toggles.FpsBoost.Value then
                    pcall(BP, mx)
                end
            end)
        else
            pcall(function()
                settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic
            end)
            pcall(function()
                rR.GlobalShadows = true
            end)
            if connection then
                connection:Disconnect()
                connection = nil
            end
        end
    end)
    local ScriptGroup = sp.Settings:AddLeftGroupbox("Script", "terminal")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection2 then
            connection2:Disconnect()
        end
        if connection then
            connection:Disconnect()
        end
        qJ()
        pcall(function()
            qL:FireServer()
        end)
        q7(false)
        BU(false)
        pcall(function()
            sk:Set3dRenderingEnabled(true)
        end)
        if getgenv then
            getgenv().__OuroborosCollectCarsAndRaceLib = nil
        end
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("OuroborosHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(sp.Settings)
    ThemeManager:LoadDefault()
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/CollectCarsAndRace")
    local B0_2 = SaveManager:BuildConfigSection(sp.Settings)
    BR = function(mS, mT)
        local AW_1 = (mS == "Toggle" and Toggles or Options)[mT]
        local AV_2 = type(AW_1) == "table" and AW_1.Type == mS
        return AV_2 and AW_1 or nil
    end
    BQ = function(m_, m0)
        local Type = m0.Type
        if Type == "Toggle" then
            return { idx = m_, type = "Toggle", value = m0.Value == true }
        elseif Type == "Slider" then
            return { idx = m_, type = "Slider", value = tostring(m0.Value) }
        elseif Type == "Dropdown" then
            return { idx = m_, type = "Dropdown", multi = m0.Multi == true, value = m0.Value }
        elseif Type == "Input" then
            local A2 = m0.Value or ""
            return { idx = m_, type = "Input", text = tostring(A2) }
        elseif Type == "ColorPicker" then
            return { idx = m_, type = "ColorPicker", value = m0.Value:ToHex(), transparency = m0.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = m_,
                type = "KeyPicker",
                mode = m0.Mode,
                key = m0.Value,
                modifiers = m0.Modifiers,
                toggled = m0.Toggled
            }
        else
            return nil
        end
    end
    BX = function()
        local A5 = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local A6 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if A6 then
                    local A6_1 = BQ(k, v)
                    if A6_1 then
                        A5[#A5 + 1] = A6_1
                    end
                end
            end
        end
        table.sort(A5, function(na, nb)
            if na.type ~= nb.type then
                return na.type < nb.type
            end
            return na.idx < nb.idx
        end)
        return { objects = A5 }
    end
    BZ = function(nd)
        local Bp
        Bp = nil
        local Bq = type(nd) ~= "table" or type(nd.idx) ~= "string" or type(nd.type) ~= "string" or SaveManager.Ignore[nd.idx]
        if Bq then
            return false
        end
        Bp = BR(nd.type, nd.idx)
        if not Bp then
            return false
        end
        local Bq_1 = pcall(function()
            if nd.type == "Input" then
                if type(nd.text) ~= "string" then
                    return
                end
                Bp:SetValue(nd.text)
            elseif nd.type == "ColorPicker" then
                Bp:SetValueRGB(Color3.fromHex(nd.value), nd.transparency)
            elseif nd.type == "KeyPicker" then
                Bp:SetValue({ nd.key, nd.mode, nd.modifiers })
                if nd.mode == "Toggle" and nd.toggled ~= nil then
                    Bp.Toggled = nd.toggled
                    Bp:Update()
                end
            else
                Bp:SetValue(nd.value)
            end
        end)
        return Bq_1
    end
    B0_2:AddDivider()
    B0_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    B0_2:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local Bt_1
            local Bs_1
            Bs_1, Bt_1 = pcall(r8.JSONEncode, r8, BX())
            if not Bs_1 then
                Library:Notify("Failed to encode the config")
                return
            end
            local Bs_2 = setclipboard or toclipboard
            local Bs_3 = type(Bs_2) ~= "function" or not pcall(Bs_2, Bt_1)
            if Bs_3 then
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Config copied to clipboard", 6)
        end
    })
    B0_2:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local By_1
            local Bw = Options.SaveManager_ImportSource.Value
            local Bw_1
            local BC = if Bw then 1 else 0
            local BA = 3240 * BC + 3446 * (1 - BC)
            local BB = 2388 * BC + 900 * (1 - BC)
            if not ((BA * 1725 + BB * 347 + BA * BB) % 16777213 == 14154756) then
                Bw = ""
            end
            local Bx = tostring(Bw):match("^%s*(.-)%s*$")
            if Bx == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            Bw_1, By_1 = pcall(r8.JSONDecode, r8, Bx)
            local Bx_1 = not Bw_1 or type(By_1) ~= "table" or type(By_1.objects) ~= "table"
            if Bx_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            local Bw_2 = 0
            for i, v in ipairs(By_1.objects) do
                if BZ(v) then
                    Bw_2 += 1
                end
            end
            if Bw_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local By_2 = Bw_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(Bw_2, By_2), 6)
        end
    })
    SaveManager:LoadAutoloadConfig()
    if Toggles.HideUiOnStart.Value then
        Library:Toggle(false)
    end
end
B4_12()
