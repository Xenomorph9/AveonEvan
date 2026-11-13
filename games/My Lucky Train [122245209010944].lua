local l4
local TrainConfig
local mt
local mS
local mg
local mY
local lY
local mF
local mm
local Library
local mL
local lL
local ms
local l9
local mR
local lR
local mX
local mE
local Options
local l2
local CartsUpdate
local l8
local mQ
local lQ
local mx
local me
local mW
local lW
local mk
local lJ
local mq
local l7
local mP
local mw
local md
local mV
local mj
local m0
local l0
local mI
local lI
local mp
local l6
local Toggles
local ClaimCash
local mU
local lU
local m_
local l_
local mH
local mo
local PurchaseUpgrade
local mN
local lN
local mu
local mb
local mT
local lT
local mA
local mh
local mZ
local lZ
local function fn25(bf)
    local og = not bf or not bf:IsA("ProximityPrompt") or not bf.Enabled
    if og then
        return false
    elseif fireproximityprompt then
        fireproximityprompt(bf)
        return true
    else
        bf:InputHoldBegin()
        task.wait(math.max(0.05, bf.HoldDuration))
        bf:InputHoldEnd()
        return true
    end
end
local function fn51()
    if not mb("AutoSellCart") then
        return
    end
    local qK = os.clock()
    if qK - mp < 0.35 then
        return
    end
    mP()
    for k, v in md.storage do
        local qL = typeof(v) == "table" and typeof(v.uid) == "string" and mg("CartSellRarities", v.rarity, true)
        if qL then
            mp = qK
            mQ:FireServer(v.uid)
            return
        end
    end
end
local function fn69()
    local Character = l0.Character
    local n2 = Character and Character:FindFirstChildOfClass("Humanoid")
    return n2
end
local function worker()
    mP()
    while not Library.Unloaded do
        task.wait(0.05)
        pcall(m_)
        pcall(lJ)
        pcall(mW)
        pcall(mT)
        pcall(lQ)
        pcall(mE)
        pcall(mH)
        pcall(l2)
        pcall(mI)
        pcall(mh)
        pcall(lU)
    end
end
local function fn85(az, aA)
    return string.format('<font color="%s">%s</font>', aA, az)
end
local function fn92()
    mU(lT, "Copied Discord invite to clipboard")
end
local function fn100()
    if not mb("AutoPullLever") then
        return
    end
    local pk = os.clock()
    local pl = tonumber(lI("PullDelay", 0.35)) or 0.35
    if pk - l7 < pl then
        return
    end
    local pl_1 = ms.rollReadyAt > 0 and os.time() < ms.rollReadyAt
    if pl_1 then
        return
    end
    local pl_2 = lY("TestRollButton")
    if not pl_2 then
        return
    end
    local ProximityPrompt = pl_2:FindFirstChildWhichIsA("ProximityPrompt", true)
    if not ProximityPrompt then
        return
    end
    l7 = pk
    mY(ProximityPrompt)
end
local function fn177()
    if not mb("AutoDeposit") then
        return
    end
    local pS = ms.carriedUnits
    local pY = if pS then 1 else 0
    local pW = 3754 * pY + 2740 * (1 - pY)
    local pX = 447 * pY + 1443 * (1 - pY)
    if not ((pW * 617 + pX * 1581 + pW * pX) % 16777213 == 4700963) then
        pS = 0
    end
    if pS <= 0 then
        return
    end
    local pS_1 = os.clock()
    if pS_1 - lR < 0.35 then
        return
    end
    local pT = lY("DepositPad")
    local pU = me(pT)
    if not pU then
        return
    end
    lR = pS_1
    l6(pU)
end
local function onOnClientEvent3(bO)
    if typeof(bO) ~= "table" then
        return
    end
    local oE = typeof(bO.equipped) == "table" and bO.equipped
    local oG = oE or {}
    md.equipped = oG
    local oE_1 = typeof(bO.storage) == "table" and bO.storage
    local oG_1 = oE_1 or {}
    md.storage = oG_1
    local oE_2 = tonumber(bO.maxSlots) or md.maxSlots
    md.maxSlots = oE_2
    local oE_3 = (tonumber(bO.maxCartLevel))
    local oK = if oE_3 then 1 else 0
    local oI = 3679 * oK + 692 * (1 - oK)
    local oJ = 3529 * oK + 769 * (1 - oK)
    if not ((oI * 117 + oJ * 1946 + oI * oJ) % 16777213 == 3503855) then
        oE_3 = md.maxCartLevel
    end
    md.maxCartLevel = oE_3
end
local function fn202(ba)
    local oa = mA()
    local ob = oa and typeof(ba) == "CFrame"
    if ob then
        oa.CFrame = ba + Vector3.new(0, 3, 0)
    end
end
local function onOnClientEvent(bI)
    if typeof(bI) ~= "table" then
        return
    end
    if bI.cash ~= nil then
        local oA_1 = tonumber(bI.cash) or ms.cash
        ms.cash = oA_1
    end
    if bI.rebirths ~= nil then
        local oA_2 = tonumber(bI.rebirths) or ms.rebirths
        ms.rebirths = oA_2
    end
    if bI.carriedUnits ~= nil then
        local oA_3 = tonumber(bI.carriedUnits) or 0
        ms.carriedUnits = oA_3
    end
    if bI.rollReadyAt ~= nil then
        local oA_4 = tonumber(bI.rollReadyAt) or 0
        ms.rollReadyAt = oA_4
    end
    if bI.rollBuyingPower ~= nil then
        local oA_5 = tonumber(bI.rollBuyingPower) or 0
        ms.rollBuyingPower = oA_5
    end
    if typeof(bI.upgrades) == "table" then
        ms.upgrades = bI.upgrades
    end
end
local function fn259(cr)
    return mg("BuyRarities", cr, false)
end
local function fn292(as, at)
    if setclipboard then
        setclipboard(as)
    elseif toclipboard then
        toclipboard(as)
    end
    Library:Notify(at)
end
local function onOnClientEvent2(bM)
    if typeof(bM) ~= "table" then
        return
    end
    local oC = tonumber(bM.value) or 0
    mm.value = oC
    local oC_1 = tonumber(bM.pending) or 0
    mm.pending = oC_1
    local oC_2 = tonumber(bM.units) or 0
    mm.units = oC_2
    local oC_3 = tonumber(bM.carried) or 0
    mm.carried = oC_3
end
local function fn358()
    local oi = l0:GetAttribute("IslandName") or "Island1"
    local oi_1 = l9:FindFirstChild(oi)
    local oj_1 = oi_1 and oi_1:FindFirstChild("IslandPackage")
    return oj_1
end
local function fn363()
    if not mb("AutoBuyLeverResult") then
        return
    end
    local pr = os.clock()
    if pr - l_ < 0.25 then
        return
    end
    local cash = ms.cash
    local UserId = l0.UserId
    for i, child in l9:GetChildren() do
        local pu = child:IsA("Model") and child:GetAttribute("OwnerUserId") == UserId
        if pu then
            local attr = child:GetAttribute("CartId")
            local pv = typeof(attr) == "string" and mS.byId(attr)
            local pw = pv or nil
            local pv_1 = pw
            if pw then
                pw = pv_1.rarity
            end
            local pv_2 = pw or nil
            if l4(pv_2) then
                local claimCost = mS.claimCost
                local rebirths = ms.rebirths
                local px = ms.rollBuyingPower or cash
                local pv_4 = tonumber(claimCost(attr, rebirths, px)) or 0
                if cash >= pv_4 then
                    local ClaimPrompt = child:FindFirstChild("ClaimPrompt", true)
                    local pv_5 = ClaimPrompt and ClaimPrompt:IsA("ProximityPrompt") and ClaimPrompt.Enabled
                    if pv_5 then
                        local pv_6 = me(child)
                        if pv_6 then
                            l6(pv_6)
                        end
                        l_ = pr
                        mY(ClaimPrompt)
                        return
                    end
                end
            end
        end
    end
end
local function fn381()
    if not mb("AutoBuyUpgrades") then
        return
    end
    local qT = os.clock()
    if qT - mR < 0.35 then
        return
    end
    local qU = mw("UpgradeList")
    if next(qU) == nil then
        return
    end
    mR = qT
    for k, v in qU do
        if v then
            local qT_1 = mo[k]
            if qT_1 then
                local qU_1 = tonumber(ms.upgrades[qT_1]) or 0
                local qU_2 = TrainConfig.upgradeMaxLevel(qT_1)
                local qW = typeof(qU_2) ~= "number" or qU_1 < qU_2
                if qW then
                    local qU_3 = TrainConfig.upgradeCost(qT_1, qU_1)
                    local qV_1 = typeof(qU_3) == "number" and ms.cash >= qU_3
                    if qV_1 then
                        mt()
                        PurchaseUpgrade:FireServer(qT_1, 1)
                        return
                    end
                end
            end
        end
    end
end
local function fn403()
    local pG_1
    local pL = if not mb("AutoCollectOre") then 1 else 0
    if pL == 1 then
        return
    end
    local pF = os.clock()
    local pF_1
    if pF - lW < 0.2 then
        return
    end
    lW = pF
    pF_1, pG_1 = pcall(function()
        return mk:InvokeServer()
    end)
    local pH = not pF_1
    local pL_1 = if pH then 1 else 0
    local pJ = 583 * pL_1 + 679 * (1 - pL_1)
    local pK = 3300 * pL_1 + 1819 * (1 - pL_1)
    if not ((pJ * 3080 + pK * 3246 + pJ * pK) % 16777213 == 14431340) then
        pH = typeof(pG_1) ~= "table"
    end
    if pH then
        return
    end
    local pF_2 = 0
    for k, v in pG_1 do
        local pG_2 = tonumber(v) or v
        mq:FireServer(pG_2)
        pF_2 += 1
        if pF_2 >= 40 then
            break
        end
    end
end
local function fn425(aC, aD, aE)
    return string.format("<b>%s</b> %s %s", aC, l8("-", "#5a6070"), l8(aD, aE))
end
local function fn455()
    local pe = lY("UpgradeBoard")
    local pf = me(pe)
    local pe_1 = pf and not lN(pf, 14)
    if pe_1 then
        l6(pf)
    end
end
local function fn474()
    local q3 = ms.rebirths or 0
    local q3_2
    local REBIRTH_COSTS = mF.REBIRTH_COSTS
    local q5 = typeof(REBIRTH_COSTS) == "table" and REBIRTH_COSTS[q3] ~= nil
    local q5_1
    if q5 then
        return tonumber(REBIRTH_COSTS[q3])
    elseif type(mF.rebirthCost) == "function" then
        q3_2, q5_1 = pcall(mF.rebirthCost, q3)
        if q3_2 then
            return tonumber(q5_1)
        end
        local q3_3 = tonumber(mF.REBIRTH_BASE_COST) or 750000
        local q3_4 = tonumber(mF.REBIRTH_COST_SCALE) or 3.5
        return q3_3 * q3_4 ^ q3
    else
        local q3_5 = tonumber(mF.REBIRTH_BASE_COST) or 750000
        local q3_6 = tonumber(mF.REBIRTH_COST_SCALE) or 3.5
        return q3_5 * q3_6 ^ q3
    end
end
local function fn501(aQ, aR)
    local nR = Options[aQ]
    if nR == nil then
        return aR
    end
    return nR.Value
end
local function fn575()
    if not mb("AutoSell") then
        return
    end
    local pZ = os.clock()
    local p_ = tonumber(lI("SellDelay", 0.5)) or 0.5
    if pZ - lL < p_ then
        return
    end
    local p__1 = mm.value
    local p4 = if p__1 then 1 else 0
    local p2 = 3484 * p4 + 1866 * (1 - p4)
    local p3 = 14 * p4 + 2577 * (1 - p4)
    if not ((p2 * 734 + p3 * 2265 + p2 * p3) % 16777213 == 2637742) then
        p__1 = 0
    end
    local p0_1 = p__1 > 0
    if not p0_1 then
        p0_1 = (mm.pending or 0) > 0
    end
    if not p0_1 then
        local p__3 = mm.units
        local p7 = if p__3 then 1 else 0
        local p5 = 3515 * p7 + 3312 * (1 - p7)
        local p6 = 956 * p7 + 3256 * (1 - p7)
        if not ((p5 * 952 + p6 * 1795 + p5 * p6) % 16777213 == 8422640) then
            p__3 = 0
        end
        p0_1 = p__3 > 0
    end
    local p0_2 = not p0_1
    if p0_2 ~= false then
        p0_2 = (ms.carriedUnits or 0) <= 0
    end
    if p0_2 then
        return
    end
    local p__6 = lY("FurnaceCollectCash")
    local p0_3 = me(p__6)
    if not p0_3 then
        return
    end
    lL = pZ
    l6(p0_3)
    ClaimCash:FireServer()
end
local function fn598()
    if not mb("AutoUpgradeCart") then
        return
    end
    local qz = os.clock()
    if qz - mx < 0.35 then
        return
    end
    mP()
    local qA = tonumber(md.maxCartLevel) or TrainConfig.CART_MAX_LEVEL
    local qB = qA or 10
    for k, v in md.equipped do
        local qB_1 = typeof(v) == "table" and typeof(v.uid) == "string" and mg("CartUpgradeRarities", v.rarity, false)
        if qB_1 then
            local qB_2 = tonumber(v.level) or 1
            if qB_2 < qB then
                local qB_3 = TrainConfig.cartUpgradeCost(v.id, qB_2)
                local qC_1 = typeof(qB_3) == "number" and ms.cash >= qB_3
                if qC_1 then
                    mx = qz
                    mX:FireServer(v.uid)
                    return
                end
            end
        end
    end
end
local function fn607(b_, b0, b1)
    local oN = b0 == ""
    local oO = typeof(b0) ~= "string"
    local oS = if oO then 1 else 0
    local oQ = 3743 * oS + 634 * (1 - oS)
    local oR = 3254 * oS + 1387 * (1 - oS)
    if not ((oQ * 1885 + oR * 879 + oQ * oR) % 16777213 == 5318330) then
        oO = oN
    end
    if oO then
        return false
    end
    local oN_1 = mw(b_)
    if next(oN_1) == nil then
        return b1 ~= true
    end
    return oN_1[b0] == true
end
local function fn677()
    local rh = if not mb("AutoRebirth") then 1 else 0
    if rh == 1 then
        return
    end
    local rb = os.clock()
    if rb - mL < 1 then
        return
    end
    local rc = mV()
    local rd = typeof(rc) == "number" and ms.cash < rc
    if rd then
        return
    end
    mL = rb
    lZ:FireServer()
end
local function fn775(b5)
    local oT = tonumber(b5.boostedOutput) or tonumber(b5.income) or tonumber(b5.baseOutput)
    local oU = oT or 0
    local oU_1 = mN[b5.rarity] or 0
    local oU_2 = typeof(b5.id) == "string" and mS.byId(b5.id)
    local oW = oU_2
    local o_ = if oW then 1 else 0
    local oY = 1614 * o_ + 3832 * (1 - o_)
    local oZ = 370 * o_ + 2839 * (1 - o_)
    if not ((oY * 1399 + oZ * 1887 + oY * oZ) % 16777213 == 3553356) then
        oW = nil
    end
    local oU_3 = oW
    if oW then
        oW = tonumber(oU_3.ladderIndex)
    end
    return oU, oU_1, oW or 0
end
local function fn809(aL)
    local nL = Toggles[aL]
    return nL ~= nil and nL.Value == true
end
local function fn828()
    if not mb("AutoUpgradeSmelt") then
        return
    end
    local p8 = os.clock()
    if p8 - mZ < 0.4 then
        return
    end
    local p9 = tonumber(ms.upgrades.SmeltSpeed) or 0
    local p9_1 = TrainConfig.upgradeMaxLevel("SmeltSpeed")
    local qb = typeof(p9_1) == "number" and p9 >= p9_1
    if qb then
        return
    end
    local p9_2 = TrainConfig.upgradeCost("SmeltSpeed", p9)
    local qa_1 = typeof(p9_2) ~= "number" or ms.cash < p9_2
    if qa_1 then
        return
    end
    mZ = p8
    mt()
    PurchaseUpgrade:FireServer("SmeltSpeed", 1)
end
local function fn842(aV)
    local nT = lI(aV, {})
    if typeof(nT) ~= "table" then
        return {}
    end
    local nU = {}
    for k, v in nT do
        if v == true then
            nU[k] = true
        else
            local nT_1 = typeof(k) == "number" and typeof(v) == "string"
            if nT_1 then
                nU[v] = true
            end
        end
    end
    return nU
end
local function fn862()
    local oL = os.clock()
    if oL - mj < 0.75 then
        return
    end
    mj = oL
    pcall(function()
        CartsUpdate:FireServer()
    end)
end
local function fn897(cu, cv)
    local pa = mA()
    local pb = not pa or typeof(cu) ~= "CFrame"
    if pb then
        return false
    end
    return (pa.Position - cu.Position).Magnitude <= (cv or 12)
end
local function fn912()
    local Character = l0.Character
    local n8 = Character and Character:FindFirstChild("HumanoidRootPart")
    return n8
end
local function fn954(fn)
    local DiscordGroup = fn:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mu })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mu })
end
local function fn960(ch, ci)
    local o5_1
    local o4_1
    local o3_1
    local o2_1
    local o1_1
    local o0_1
    if not ch then
        return false
    elseif not ci then
        return true
    else
        o0_1, o1_1, o2_1 = m0(ch)
        o3_1, o4_1, o5_1 = m0(ci)
        if o0_1 ~= o3_1 then
            return o0_1 > o3_1
        elseif o1_1 ~= o4_1 then
            return o1_1 > o4_1
        else
            return o2_1 > o5_1
        end
    end
end
lI = nil
lJ = nil
CartsUpdate = nil
lL = nil
lN = nil
Toggles = nil
lQ = nil
lR = nil
lT = nil
lU = nil
lW = nil
lY = nil
lZ = nil
l_ = nil
l0 = nil
l2 = nil
Library = nil
l4 = nil
PurchaseUpgrade = nil
l6 = nil
l7 = nil
l8 = nil
l9 = nil
mb = nil
ClaimCash = nil
md = nil
me = nil
mg = nil
mh = nil
mj = nil
mk = nil
mm = nil
mo = nil
mp = nil
mq = nil
ms = nil
mt = nil
mu = nil
local lM, lP, lS, SaveManager, lX, l1, Window, CoreGui, mi, ml, mn, mr
mw = nil
mx = nil
mA = nil
mE = nil
mF = nil
mH = nil
mI = nil
mL = nil
TrainConfig = nil
mN = nil
mP = nil
mQ = nil
mR = nil
mS = nil
mT = nil
mU = nil
mV = nil
mW = nil
mX = nil
mY = nil
mZ = nil
m_ = nil
m0 = nil
Options = nil
local mv, my, mz, mB, mC, mD, mG, mJ, SetCartEquipped, mO, m1, m7, m8, na, ne
local m9_1
local m6_1, CartsGroup
local m5_1
local nc_7
local m3_1
m3_1, m5_1, mO, mJ, mB, mv, mn, CoreGui, l9, l0, lX, lT, lM, m6_1, mS, TrainConfig, mF, mz, mq, mk, ClaimCash, PurchaseUpgrade, lZ, m8, m7, CartsUpdate, mX, mQ, SetCartEquipped, na, m9_1, mo = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local m4 = 5
local m4_5
repeat
    local nb_1 = (m4 * 11 + 1) % 14 + 1
    if nb_1 <= 7 then
        if nb_1 <= 4 then
            if nb_1 <= 2 then
                if nb_1 <= 1 then
                    local nc_1 = { "kqemhb", "jqtthnynwna", "zznsgua", "lgccoog", "mwiflgx", "febnjot", "zbeajwzwf", "eeiuo" }
                    if nc_1[(m4 * 6 + 112) % 8 + 1] < nc_1[(m4 * 6 + 112) % 8 + 1] then
                        mB = game:GetService("Players")
                    else
                        m3_1 = game:GetService("Players")
                    end
                    m4 = (m4 + 9) % 56
                else
                    local uN = bit32.rrotate(bit32.bxor(bit32.lrotate(m4, 20), string.byte(tostring(m8))), 25)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(uN, 3356465353), 18), 1663508542) ~= bit32.lrotate(uN, 18) then
                        l9 = game:GetService("ReplicatedStorage")
                    else
                        m5_1 = game:GetService("ReplicatedStorage")
                    end
                    m4 = (m4 + 37) % 56
                end
            elseif nb_1 <= 3 then
                local nc_2 = (vector.create((m4 * 1 + 5) % 11 + 1, (m4 * 5 + 8) % 13 + 1, (m4 * 15 + 2) % 17 + 1))
                local nd_1 = (vector.create((m4 * 6 + 3) % 11 + 1, (m4 * 5 + 2) % 13 + 1, (m4 * 10 + 12) % 17 + 1))
                ne = (vector.create((m4 * 7 + 3) % 11 + 1, (m4 * 4 + 9) % 13 + 1, (m4 * 10 + 16) % 17 + 1))
                local nf = (vector.create((m4 * 1 + 2) % 5 + 1, (m4 * 1 + 3) % 7 + 1, (m4 * 4 + 2) % 9 + 1))
                if vector.dot(vector.cross(nc_2, (vector.cross(nd_1, ne))), nf) == vector.dot(nd_1 * vector.dot(nc_2, ne) - ne * vector.dot(nc_2, nd_1), nf) then
                    mO = game:GetService("RunService")
                    mJ = game:GetService("UserInputService")
                    mB = game:GetService("VirtualUser")
                    mv = game:GetService("HttpService")
                    mn = game:GetService("GuiService")
                else
                    mn = game:GetService("RunService")
                    mO = game:GetService("UserInputService")
                    mJ = game:GetService("VirtualUser")
                    mB = game:GetService("HttpService")
                    mv = game:GetService("GuiService")
                end
                m4 = (m4 + 23) % 56
            else
                if m4 * 96595721 + 7 + 7 <= m4 * 96595721 + 7 + 7 + 1 then
                    CoreGui = game:GetService("CoreGui")
                else
                    mS = game:GetService("CoreGui")
                end
                m4 = (m4 + 9) % 56
            end
        elseif nb_1 <= 6 then
            if nb_1 <= 5 then
                local nc_3 = {
                    "ipnewngkrek",
                    "ahwthmyuqrg",
                    "ckhnlgl",
                    "jcml",
                    "qipc",
                    "ccujrzfkgm",
                    "ypvsptad",
                    "pxiiicv",
                    "fdlsy"
                }
                local ui = m4
                local nd_2 = nc_3[ui % 9 + 1]
                if nd_2:len() <= nd_2:gsub("(.)", "%1%1", ui % 3 % 2 + 1):len() then
                    l9 = game:GetService("Workspace")
                    l0 = m3_1.LocalPlayer
                else
                    l0 = game:GetService("Workspace")
                    m3_1 = l9.LocalPlayer
                end
                m4 = (m4 + 9) % 56
            else
                local nc_4 = (vector.create((m4 * 1 + 1) % 11 + 1, (m4 * 1 + 6) % 13 + 1, (m4 * 14 + 8) % 17 + 1))
                local nd_3 = (vector.create((m4 * 7 + 3) % 11 + 1, (m4 * 2 + 5) % 13 + 1, (m4 * 1 + 4) % 17 + 1))
                local t1 = vector.dot(nc_4, nd_3)
                if t1 * t1 <= vector.dot(nc_4, nc_4) * vector.dot(nd_3, nd_3) then
                    lX = "My Lucky Train"
                    lT = "https://discord.gg/ehKVq7pf7v"
                else
                    lT = "My Lucky Train"
                    lX = "https://discord.gg/ehKVq7pf7v"
                end
                m4 = (m4 + 9) % 56
            end
        else
            local nc_5 = {
                "hekgrcejxk",
                "vyk",
                "huode",
                "eunqemhx",
                "wmbvewxalx",
                "jjjw",
                "esogb",
                "lrndf",
                "xyjqaoqq",
                "vnf",
                "audapnp",
                "tipyzd",
                "vlluuj",
                "ovwysmyl"
            }
            if nc_5[(m4 * 56 + 40) % 14 + 1] < nc_5[(m4 * 56 + 40) % 14 + 1] then
                mF = "https://rscripts.net/@Ouroboros"
            else
                lM = "https://rscripts.net/@Ouroboros"
            end
            m4 = (m4 + 23) % 56
        end
    elseif nb_1 <= 11 then
        if nb_1 <= 9 then
            if nb_1 <= 8 then
                local ue = bit32.rrotate(bit32.bxor(bit32.lrotate(m4, 6), string.byte(tostring(lZ))), 28)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ue, 880532351), 4022730903), (bit32.bxor(bit32.band(ue, 3414434944), 1953730334))), 4022730903), 1953730334) ~= ue then
                    m5_1 = m6_1:WaitForChild("TrainRemotes")
                else
                    m6_1 = m5_1:WaitForChild("TrainRemotes")
                end
                m4 = (m4 + 23) % 56
            else
                if m4 * 124985667 + 9 + 4 >= m4 * 124985667 + 9 + 4 + 3 then
                    m5_1 = require(mS:WaitForChild("CartRegistry"))
                else
                    mS = require(m5_1:WaitForChild("CartRegistry"))
                end
                m4 = (m4 + 37) % 56
            end
        elseif nb_1 <= 10 then
            local uh = bit32.rrotate(bit32.bxor(bit32.lrotate(m4, 27), 104), 14)
            if bit32.bxor(bit32.lrotate(bit32.bxor(uh, 182833353), 6), 3111400002) ~= bit32.lrotate(uh, 6) then
                m5_1 = require(TrainConfig:WaitForChild("TrainConfig"))
            else
                TrainConfig = require(m5_1:WaitForChild("TrainConfig"))
            end
            m4 = (m4 + 37) % 56
        else
            if (m4 * 2 + 7) * 10 % 3 == ((m4 * 2 + 7) * 10 + 4) % 3 then
                mz = require(m6_1:WaitForChild("Progression"))
                m5_1 = require(m6_1:WaitForChild("MyIsland"))
                mF = ClaimCash:WaitForChild("ClaimOre")
                mq = ClaimCash:WaitForChild("OreReconcile")
                mk = ClaimCash:WaitForChild("ClaimCash")
            else
                mF = require(m5_1:WaitForChild("Progression"))
                mz = require(m5_1:WaitForChild("MyIsland"))
                mq = m6_1:WaitForChild("ClaimOre")
                mk = m6_1:WaitForChild("OreReconcile")
                ClaimCash = m6_1:WaitForChild("ClaimCash")
            end
            m4 = (m4 + 37) % 56
        end
    elseif nb_1 <= 13 then
        if nb_1 <= 12 then
            local uf = bit32.rrotate(bit32.bxor(bit32.lrotate(m4, 13), string.byte(tostring(m6_1))), 9)
            if bit32.bxor(bit32.lrotate(bit32.bxor(uf, 2174196302), 20), 2766674297) ~= bit32.lrotate(uf, 20) then
                m6_1 = PurchaseUpgrade:WaitForChild("PurchaseUpgrade")
                m8 = PurchaseUpgrade:WaitForChild("DoRebirth")
                lZ = PurchaseUpgrade:WaitForChild("StateUpdate")
            else
                PurchaseUpgrade = m6_1:WaitForChild("PurchaseUpgrade")
                lZ = m6_1:WaitForChild("DoRebirth")
                m8 = m6_1:WaitForChild("StateUpdate")
            end
            m4 = (m4 + 23) % 56
        else
            local uy = bit32.rrotate(bit32.bxor(bit32.lrotate(m4, 2), 104), 11)
            if bit32.bxor(bit32.lrotate(bit32.bxor(uy, 602471137), 28), 306089902) ~= bit32.lrotate(uy, 28) then
                mX = CartsUpdate:WaitForChild("FurnaceUpdate")
                m7 = CartsUpdate:WaitForChild("CartsUpdate")
                m6_1 = CartsUpdate:WaitForChild("UpgradeCart")
            else
                m7 = m6_1:WaitForChild("FurnaceUpdate")
                CartsUpdate = m6_1:WaitForChild("CartsUpdate")
                mX = m6_1:WaitForChild("UpgradeCart")
            end
            m4 = (m4 + 23) % 56
        end
    else
        local nb_2 = {
            "iuakszih",
            "afqrmrfjmf",
            "awe",
            "kqfvyum",
            "fbzds",
            "eoqszyzwct",
            "uerxi",
            "filslmqh",
            "emfcs",
            "sjbaq",
            "uclew"
        }
        local uE = m4
        local nc_6 = nb_2[uE % 11 + 1]
        local nm = if nc_6:len() >= nc_6:reverse():rep(uE % 3 + 2):len() then 1 else 0
        if nm == 1 then
            mS = mo:WaitForChild("SellCart")
            m6_1 = mo:WaitForChild("SetCartEquipped")
            m9_1 = table.clone(SetCartEquipped.RARITY_ORDER)
            table.insert(m9_1, "Exclusive")
            na = {}
            mQ = {}
        else
            mQ = m6_1:WaitForChild("SellCart")
            SetCartEquipped = m6_1:WaitForChild("SetCartEquipped")
            na = table.clone(mS.RARITY_ORDER)
            table.insert(na, "Exclusive")
            m9_1 = {}
            mo = {}
        end
        m4 = (m4 + 37) % 56
    end
until (m4 * 1 + 24) % 56 == 29
for k, v in TrainConfig.UPGRADE_ORDER do
    local m3_2 = TrainConfig.UPGRADES[v]
    local m3_3 = m3_2 and m3_2.DisplayName or v
    table.insert(m9_1, m3_3)
    mo[m3_3] = v
end
for k, v in TrainConfig.UPGRADES do
    local m3_4 = v.DisplayName or k
    if not mo[m3_4] then
        table.insert(m9_1, m3_4)
        mo[m3_4] = k
    end
end
mN = {}
for k, v in mS.RARITY_ORDER do
    mN[v] = k
end
ms, mm = nil, nil
local m3_5 = 1
repeat
    local uF = bit32.rrotate(bit32.bxor(bit32.lrotate(m3_5, 25), string.byte(tostring(mm))), 28)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(uF, 2023740021), 2616447341), (bit32.bxor(bit32.band(uF, 2271227274), 1700976449))), 2616447341), 1700976449) ~= uF then
        mm.Exclusive = #mN.RARITY_ORDER + 1
        mS = { carriedUnits = 0, upgrades = {}, rollReadyAt = 0, rollBuyingPower = 0, rebirths = 0, cash = 0 }
        ms = { pending = 0, value = 0, units = 0, carried = 0 }
    else
        mN.Exclusive = #mS.RARITY_ORDER + 1
        ms = { cash = 0, rebirths = 0, carriedUnits = 0, rollReadyAt = 0, upgrades = {}, rollBuyingPower = 0 }
        mm = { value = 0, pending = 0, units = 0, carried = 0 }
    end
    m3_5 = (m3_5 + 3) % 4
until (m3_5 * 3 + 2) % 4 == 2
local m4_4 = {}
local m3_6 = {}
local m5_2 = TrainConfig.CART_MAX_LEVEL or 10
md, l7, l_, lW, lR, lL, mZ, mR, mL, mD, mx, mp, mj, Library, SaveManager, Toggles, Options, mG, my, mr, ml, Window, l1, mU, mu, l8, lS, mb, lI, mw, m1, mA, l6, mY, mC, lY, me, mP, mg, m0, lP, l4, lN, mt, m_, lJ, mW, mT, lQ, mI, mE, mH, l2, mh, mV, lU, nc_7 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
md = { equipped = m4_4, storage = m3_6, maxSlots = 0, maxCartLevel = m5_2 }
l7 = 0
l_ = 0
lW = 0
lR = 0
lL = 0
mZ = 0
if ((not lS or mC) and (mr or l2) or (not lS or l2) and (not mP or false)) and not ((not lS or mC) and (mr or l2) or (not lS or l2) and (not mP or false)) then
    mD = 0
    mR = 0
    mL = 0
else
    mR = 0
    mL = 0
    mD = 0
end
mx = 0
mp = 0
mj = 0
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
mU = fn292
mu = fn92
l8 = fn85
lS = fn425
mG = "#7fd47f"
my = "#6ec1ff"
mr = "#e8a34d"
ml = "#8b93a3"
mb = fn809
lI = fn501
if not lI and false and (l7 or lI) or mE and not mR and (not lI or mE) or not (not lI and false and (l7 or lI) or mE and not mR and (not lI or mE)) then
    mw = fn842
    m1 = fn69
    mA = fn912
else
    mA = fn842
    mw = fn69
    m1 = fn912
end
l6 = fn202
mY = fn25
mC = fn358
lY = function(bq)
    local oo_1
    local om_1
    om_1, oo_1 = pcall(function()
        return mz.find(bq, 5)
    end)
    if om_1 and oo_1 then
        return oo_1
    end
    local om_2 = mC()
    local oo_2 = om_2 and om_2:FindFirstChild(bq, true)
    return oo_2
end
me = function(bB)
    local ox_1
    local ow_1
    if not bB then
        return nil
    elseif bB:IsA("BasePart") then
        return bB.CFrame
    else
        ow_1, ox_1 = pcall(function()
            return bB:GetPivot()
        end)
        local oy = ow_1 and typeof(ox_1) == "CFrame"
        if oy then
            return ox_1
        end
        local BasePart = bB:FindFirstChildWhichIsA("BasePart", true)
        return BasePart and BasePart.CFrame or nil
    end
end
m8.OnClientEvent:Connect(onOnClientEvent)
m7.OnClientEvent:Connect(onOnClientEvent2)
CartsUpdate.OnClientEvent:Connect(onOnClientEvent3)
mP = fn862
mg = fn607
m0 = fn775
lP = fn960
l4 = fn259
if (md and ThemeManager and (md or mt) or (md or ThemeManager) and (md and not md) or (ThemeManager or ThemeManager) and (mt or not mt) and (ThemeManager or not md or mt and mt)) and not (md and ThemeManager and (md or mt) or (md or ThemeManager) and (md and not md) or (ThemeManager or ThemeManager) and (mt or not mt) and (ThemeManager or not md or mt and mt)) then
    mt = fn897
    m_ = fn455
    lN = fn100
else
    lN = fn897
    mt = fn455
    m_ = fn100
end
lJ = fn363
mW = fn403
mT = fn177
lQ = fn575
mI = fn828
mE = function()
    if not mb("AutoReplaceCart") then
        return
    end
    local qe = os.clock()
    if qe - mD < 0.6 then
        return
    end
    mP()
    local equipped = md.equipped
    local storage = md.storage
    local qh = typeof(equipped) ~= "table"
    local qm = if qh then 1 else 0
    local qk = 1044 * qm + 2431 * (1 - qm)
    local ql = 105 * qm + 3887 * (1 - qm)
    if not ((qk * 159 + ql * 2390 + qk * ql) % 16777213 == 526566) then
        qh = typeof(storage) ~= "table"
    end
    if qh then
        return
    end
    local qd
    for k, v in storage do
        local qg_1 = typeof(v) == "table" and typeof(v.uid) == "string" and not v.locked
        if qg_1 then
            if lP(v, qd) then
                qd = v
            end
        end
    end
    if not qd then
        return
    end
    local qg_2 = nil
    local qh_1 = 0
    for k, v in equipped do
        local qf_1 = typeof(v) == "table" and typeof(v.uid) == "string"
        if qf_1 then
            qh_1 += 1
            local qf_2 = qg_2 == nil or lP(qg_2, v)
            if qf_2 then
                qg_2 = v
            end
        end
    end
    local qf_3 = tonumber(md.maxSlots) or 0
    if qh_1 < qf_3 then
        mD = qe
        SetCartEquipped:FireServer(qd.uid, true)
        return
    end
    local qf_4 = qg_2 and lP(qd, qg_2) and qd.uid ~= qg_2.uid
    if qf_4 then
        mD = qe
        SetCartEquipped:FireServer(qg_2.uid, false)
        task.defer(function()
            SetCartEquipped:FireServer(qd.uid, true)
        end)
    end
end
mH = fn598
l2 = fn51
mh = fn381
mV = fn474
lU = fn677
task.spawn(worker)
Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = lT, Copyable = true }, "|", lX },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
l1 = {
    Info = Window:AddTab("Info", "info"),
    Main = Window:AddTab("Main", "gamepad-2"),
    Player = Window:AddTab("Player", "person-standing"),
    Settings = Window:AddTab("Settings", "settings")
}
if ((not mw and mH) or (not mw or 0 or (not mw or not mw))) and (mw or 0 or (not mh or not mh) or mx and 0 and (not mh and mh)) and ((mH or (not mH or mH) and 0) and (not mH or mx or (not mH or not mh) or (mx and mh or mw and false))) and not (((not mw and mH) or (not mw or 0 or (not mw or not mw))) and (mw or 0 or (not mh or not mh) or mx and 0 and (not mh and mh)) and ((mH or (not mH or mH) and 0) and (not mH or mx or (not mH or not mh) or (mx and mh or mw and false)))) then
    mG = fn954
else
    nc_7 = fn954
end
for k, v in l1 do
    nc_7(v)
end
local function m3_7()
    local rA
    rA = nil
    local rx, ry, rz, Label
    rA = "Unknown"
    pcall(function()
        local rk_1
        local rj_1
        if identifyexecutor then
            rk_1, rj_1 = identifyexecutor()
            local rl = rk_1 ~= ""
            local rm = type(rk_1) == "string" and rl
            if rm then
                local rl_1 = type(rj_1) == "string" and rj_1 ~= "" and rk_1 .. " " .. rj_1
                rA = rl_1 or rk_1
            end
        end
    end)
    local AccountGroup = l1.Info:AddLeftGroupbox("Account", "circle-user")
    AccountGroup:AddLabel(lS("User", l0.Name, mG), true)
    AccountGroup:AddLabel(lS("Status", "Keyless", mG), true)
    AccountGroup:AddLabel(lS("Executor", rA, mG), true)
    local GameInfoGroup = l1.Info:AddLeftGroupbox("Game Info", "gamepad-2")
    GameInfoGroup:AddLabel(l8(lX .. " [" .. tostring(game.PlaceId) .. "]", my), true)
    GameInfoGroup:AddLabel(lS("Place ID", tostring(game.PlaceId), my), true)
    Label = GameInfoGroup:AddLabel(lS("Session time", "0s", mr), true)
    ry = tostring(game.JobId)
    local rD = #ry > 18 and string.sub(ry, 1, 18) .. "..."
    local rE = rD
    local rI = if rE then 1 else 0
    local rG = 51 * rI + 2554 * (1 - rI)
    local rH = 3549 * rI + 3692 * (1 - rI)
    if not ((rG * 3603 + rH * 1934 + rG * rH) % 16777213 == 7228518) then
        rE = ry
    end
    local rD_1 = rE
    GameInfoGroup:AddLabel(lS("Server", rD_1, ml), true)
    GameInfoGroup:AddButton({
        Text = "Copy join script (Job ID)",
        Func = function()
            local fN = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, ry)
            mU(fN, "Copied join script to clipboard")
        end
    })
    rx = os.clock()
    task.spawn(function()
        local rv_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            local ru = math.floor(os.clock() - rx)
            if ru < 60 then
                rv_1 = ru .. "s"
            elseif ru < 3600 then
                rv_1 = string.format("%dm %ds", ru // 60, ru % 60)
            else
                rv_1 = string.format("%dh %dm", ru // 3600, ru % 3600 // 60)
            end
            Label:SetText(lS("Session time", rv_1, mr))
        end
    end)
    local ScriptsGroup = l1.Info:AddRightGroupbox("Scripts", "package")
    ScriptsGroup:AddLabel(l8("Included in this hub", ml), true)
    ScriptsGroup:AddLabel(l8(lX, my), true)
    local FeaturesGroup = l1.Info:AddRightGroupbox("Features", "list")
    FeaturesGroup:AddLabel(l8("Automation", my), true)
    FeaturesGroup:AddLabel(l8("Misc Utilities", ml), true)
    local SocialsGroup = l1.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = mu })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            mU(lM, "Copied Rscripts profile to clipboard")
        end
    })
    local OuroborosHubGroup = l1.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
    OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mu })
    rz = {
        [1] = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
        [2] = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
        [3] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [4] = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
        [5] = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
        [6] = "https://paypal.me/TheTruckerGOD",
        [7] = "https://venmo.com/u/miserablemusic"
    }
    local DonationsGroup = l1.Info:AddRightGroupbox("Donations", "heart")
    DonationsGroup:AddLabel(l8("All donations are optional but appreciated.", mr), true)
    DonationsGroup:AddLabel(l8("If you donate you get a special role, just PING after you donate.", mG), true)
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(l8("LTC / Litecoin", "#345d9d"), true)
    DonationsGroup:AddButton({
        Text = "Copy Litecoin Address",
        Func = function()
            mU(rz[1], "Copied Litecoin address")
        end
    })
    DonationsGroup:AddLabel(l8("BTC / Bitcoin", "#f7931a"), true)
    DonationsGroup:AddButton({
        Text = "Copy Bitcoin Address",
        Func = function()
            mU(rz[2], "Copied Bitcoin address")
        end
    })
    DonationsGroup:AddLabel(l8("ETH / Ethereum", "#627eea"), true)
    DonationsGroup:AddButton({
        Text = "Copy Ethereum Address",
        Func = function()
            mU(rz[3], "Copied Ethereum address")
        end
    })
    DonationsGroup:AddLabel(l8("USDT", "#26a17b"), true)
    DonationsGroup:AddButton({
        Text = "Copy USDT Address",
        Func = function()
            mU(rz[4], "Copied USDT address")
        end
    })
    DonationsGroup:AddLabel(l8("Solana", "#14f195"), true)
    DonationsGroup:AddButton({
        Text = "Copy Solana Address",
        Func = function()
            mU(rz[5], "Copied Solana address")
        end
    })
    DonationsGroup:AddLabel(l8("PayPal", "#0070ba"), true)
    DonationsGroup:AddButton({
        Text = "Copy PayPal Link",
        Func = function()
            mU(rz[6], "Copied PayPal link")
        end
    })
    DonationsGroup:AddLabel(l8("Venmo", "#008cff"), true)
    DonationsGroup:AddButton({
        Text = "Copy Venmo Link",
        Func = function()
            mU(rz[7], "Copied Venmo link")
        end
    })
    DonationsGroup:AddDivider()
    DonationsGroup:AddLabel(l8("Don't have any of the listed currencies but still wanna donate?", ml), true)
    DonationsGroup:AddLabel(l8("DM me and we'll work something out.", my), true)
    local FaqGroup = l1.Info:AddRightGroupbox("FAQ", "circle-help")
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
m3_7()
CartsGroup, m4_5 = nil, nil
m8 = l1.Main:AddLeftGroupbox("Lever", "dices")
m8:AddToggle("AutoPullLever", { Text = "Auto Pull Lever", Default = false })
m8:AddSlider("PullDelay", { Text = "Pull Delay", Default = 0.35, Min = 0.05, Max = 2, Rounding = 2 })
m8:AddToggle("AutoBuyLeverResult", { Text = "Auto Buy Lever Result", Default = false })
m8:AddDropdown("BuyRarities", { Text = "Buy Rarities", Values = na, Default = {}, Multi = true, AllowNull = true })
Toggles.AutoPullLever:OnChanged(function()
    if not Toggles.AutoPullLever.Value then
        return
    end
    local rJ = Library.Dialogues and Library.Dialogues.PullLeverProximity
    if rJ then
        pcall(function()
            rJ:Dismiss()
        end)
    end
    Window:AddDialog("PullLeverProximity", {
        Title = "Auto Pull Lever",
        Description = "You have to be near it.",
        AutoDismiss = true,
        OutsideClickDismiss = true,
        FooterButtons = { { Id = "ok", Title = "Got it", Variant = "Primary", Order = 1 } }
    })
end)
m7 = l1.Main:AddLeftGroupbox("Ore", "pickaxe")
if ((not m7 or CartsGroup) and (not m4_5 or not CartsGroup) or (m7 or not m4_5) and (not m8) or m8 and m7 and (m4_5 and not m7) and (m7 and not CartsGroup or not m7 and 10) or (m8 and not CartsGroup and (not CartsGroup or not CartsGroup) or m7 and false and (CartsGroup or not m7)) and (not m8 and 10 and (not m4_5 and not CartsGroup) or (m8 or m7))) and not ((not m7 or CartsGroup) and (not m4_5 or not CartsGroup) or (m7 or not m4_5) and (not m8) or m8 and m7 and (m4_5 and not m7) and (m7 and not CartsGroup or not m7 and 10) or (m8 and not CartsGroup and (not CartsGroup or not CartsGroup) or m7 and false and (CartsGroup or not m7)) and (not m8 and 10 and (not m4_5 and not CartsGroup) or (m8 or m7))) then
    CartsGroup:AddToggle("AutoCollectOre", { Text = "Auto Collect Ore", Default = false })
    CartsGroup:AddToggle("AutoDeposit", { Text = "Auto Deposit", Default = false })
    CartsGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    CartsGroup:AddSlider("SellDelay", { Min = 0.1, Max = 5, Default = 0.5, Rounding = 2, Text = "Sell Delay" })
    l1 = m7.Main:AddRightGroupbox("Carts", "box")
else
    m7:AddToggle("AutoCollectOre", { Text = "Auto Collect Ore", Default = false })
    m7:AddToggle("AutoDeposit", { Text = "Auto Deposit", Default = false })
    m7:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
    m7:AddSlider("SellDelay", { Text = "Sell Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 2 })
    CartsGroup = l1.Main:AddRightGroupbox("Carts", "box")
end
CartsGroup:AddToggle("AutoReplaceCart", { Text = "Auto Replace Better Cart", Default = false })
CartsGroup:AddToggle("AutoUpgradeCart", { Text = "Auto Upgrade Cart", Default = false })
CartsGroup:AddDropdown("CartUpgradeRarities", { Text = "Upgrade Rarities", Values = na, Default = {}, Multi = true, AllowNull = true })
CartsGroup:AddToggle("AutoSellCart", { Text = "Auto Sell Cart", Default = false })
CartsGroup:AddDropdown("CartSellRarities", { Text = "Sell Rarities", Values = na, Default = {}, Multi = true, AllowNull = true })
local UpgradesGroup = l1.Main:AddRightGroupbox("Upgrades", "arrow-big-up")
if (UpgradesGroup and 4 or (not CartsGroup or not CartsGroup) or (UpgradesGroup or CartsGroup) and (not CartsGroup or not CartsGroup)) and not (UpgradesGroup and 4 or (not CartsGroup or not CartsGroup) or (UpgradesGroup or CartsGroup) and (not CartsGroup or not CartsGroup)) then
    m9_1:AddToggle("AutoUpgradeSmelt", { Text = "Auto Upgrade Smelt Speed", Default = false })
    m9_1:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    m9_1:AddDropdown("UpgradeList", { Values = UpgradesGroup, AllowNull = true, Multi = true, Default = {}, Text = "Upgrades" })
    m9_1:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
else
    UpgradesGroup:AddToggle("AutoUpgradeSmelt", { Text = "Auto Upgrade Smelt Speed", Default = false })
    UpgradesGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    UpgradesGroup:AddDropdown("UpgradeList", { Text = "Upgrades", Values = m9_1, Default = {}, Multi = true, AllowNull = true })
    UpgradesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
end
mi = nil
local function m3_8()
    local MovementGroup = l1.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = l1.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    mO.Stepped:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.NoClip and Toggles.NoClip.Value then
            local Character = l0.Character
            if Character then
                for i, descendant in Character:GetDescendants() do
                    local rM_2 = descendant:IsA("BasePart") and descendant.CanCollide
                    if rM_2 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    mJ.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        if Toggles.InfJump and Toggles.InfJump.Value then
            local rX_1 = m1()
            if rX_1 then
                rX_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    local CurrentCamera = l9.CurrentCamera
    mO.RenderStepped:Connect(function(gX)
        if Library.Unloaded then
            return
        end
        if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
            local rZ_1 = m1()
            if rZ_1 then
                rZ_1.WalkSpeed = Options.WalkSpeed.Value
            end
        end
        if Toggles.Fly and Toggles.Fly.Value then
            local rZ_3 = mA()
            local r_ = m1()
            if rZ_3 and r_ then
                r_.PlatformStand = true
                local r__1 = Vector3.zero
                if mJ:IsKeyDown(Enum.KeyCode.W) then
                    r__1 += CurrentCamera.CFrame.LookVector
                end
                if mJ:IsKeyDown(Enum.KeyCode.S) then
                    r__1 -= CurrentCamera.CFrame.LookVector
                end
                local r4 = if mJ:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                if r4 == 1 then
                    r__1 -= CurrentCamera.CFrame.RightVector
                end
                if mJ:IsKeyDown(Enum.KeyCode.D) then
                    r__1 += CurrentCamera.CFrame.RightVector
                end
                local r4_1 = if mJ:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if r4_1 == 1 then
                    r__1 += Vector3.new(0, 1, 0)
                end
                if mJ:IsKeyDown(Enum.KeyCode.LeftControl) then
                    r__1 -= Vector3.new(0, 1, 0)
                end
                rZ_3.AssemblyLinearVelocity = Vector3.zero
                if r__1.Magnitude > 0 then
                    rZ_3.CFrame = rZ_3.CFrame + r__1.Unit * Options.FlySpeed.Value * gX
                end
            end
        end
    end)
    Toggles.Fly:OnChanged(function()
        if not Toggles.Fly.Value then
            local r8 = m1()
            if r8 then
                r8.PlatformStand = false
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if not Toggles.WalkSpeedEnabled.Value then
            local sa = m1()
            if sa then
                sa.WalkSpeed = 16
            end
        end
    end)
    local function hi(hj)
        pcall(function()
            mn:SetGameplayPausedNotificationEnabled(not hj)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not hj
            end
        end)
        if not hj then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(l0, "GameplayPaused", false)
            else
                l0.GameplayPaused = false
            end
        end)
    end
    Toggles.AntiGameplayPause:OnChanged(function()
        hi(Toggles.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(1)
            if Toggles.AntiGameplayPause.Value then
                hi(true)
            end
        end
    end)
    local function hA(hB)
        if not hB:IsA("ProximityPrompt") then
            return
        end
        hB.HoldDuration = 0
        hB.MaxActivationDistance = 50
        hB.RequiresLineOfSight = false
    end
    local connection
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            for i, descendant in l9:GetDescendants() do
                pcall(hA, descendant)
            end
            connection = l9.DescendantAdded:Connect(function(hJ)
                if Toggles.InstantProximityPrompt.Value then
                    pcall(hA, hJ)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    Library:OnUnload(function()
        hi(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
m3_8()
ne = function()
    local connection
    local MenuGroup = l1.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    local hT = 0
    local hU = tick()
    local Label = MenuGroup:AddLabel("AFK triggers: 0")
    local function hW()
        local CurrentCamera = l9.CurrentCamera
        if not CurrentCamera then
            return
        end
        mB:CaptureController()
        mB:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        hT += 1
        hU = tick()
        pcall(function()
            Label:SetText("AFK triggers: " .. hT)
        end)
    end
    connection = l0.Idled:Connect(function()
        if Toggles.AntiAfk.Value then
            pcall(hW)
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(2)
            local sG = Toggles.AntiAfk.Value and tick() - hU >= 60
            if sG then
                pcall(hW)
            end
        end
    end)
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            Library:Unload()
        end
    })
    Library:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
    end)
end
ne()
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(l1.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/MyLuckyTrain")
mi = SaveManager:BuildConfigSection(l1.Settings)
local function nb_3()
    local function im(io, ip)
        local sK_1 = (io == "Toggle" and Toggles or Options)[ip]
        local sJ_2 = type(sK_1) == "table" and sK_1.Type == io
        return sJ_2 and sK_1 or nil
    end
    local function ix(iy, iz)
        local Type = iz.Type
        if Type == "Toggle" then
            return { idx = iy, type = "Toggle", value = iz.Value == true }
        elseif Type == "Slider" then
            return { idx = iy, type = "Slider", value = tostring(iz.Value) }
        elseif Type == "Dropdown" then
            return { idx = iy, type = "Dropdown", multi = iz.Multi == true, value = iz.Value }
        elseif Type == "Input" then
            local sO = iz.Value or ""
            return { idx = iy, type = "Input", text = tostring(sO) }
        elseif Type == "ColorPicker" then
            return { idx = iy, type = "ColorPicker", value = iz.Value:ToHex(), transparency = iz.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = iy,
                type = "KeyPicker",
                mode = iz.Mode,
                key = iz.Value,
                modifiers = iz.Modifiers,
                toggled = iz.Toggled
            }
        else
            return nil
        end
    end
    local function iB()
        local sU = {}
        for k, v in { Toggles, Options } do
            for k, v in v do
                local sV = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if sV then
                    local sV_1 = ix(k, v)
                    if sV_1 then
                        sU[#sU + 1] = sV_1
                    end
                end
            end
        end
        table.sort(sU, function(iL, iM)
            if iL.type ~= iM.type then
                return iL.type < iM.type
            end
            return iL.idx < iM.idx
        end)
        return { objects = sU }
    end
    local function iN(iO)
        local td
        td = nil
        local te = type(iO) ~= "table"
        local ti = if te then 1 else 0
        local tg = 151 * ti + 3912 * (1 - ti)
        local th = 1174 * ti + 2330 * (1 - ti)
        if not ((tg * 3986 + th * 2598 + tg * th) % 16777213 == 3829212) then
            te = type(iO.idx) ~= "string"
        end
        local tl = if te then 1 else 0
        local tj = 142 * tl + 2180 * (1 - tl)
        local tk = 3783 * tl + 1982 * (1 - tl)
        if not ((tj * 2348 + tk * 2336 + tj * tk) % 16777213 == 9707690) then
            te = type(iO.type) ~= "string"
        end
        if not te then
            te = SaveManager.Ignore[iO.idx]
        end
        if te then
            return false
        end
        td = im(iO.type, iO.idx)
        if not td then
            return false
        end
        local te_1 = pcall(function()
            if iO.type == "Input" then
                if type(iO.text) ~= "string" then
                    return
                end
                td:SetValue(iO.text)
            elseif iO.type == "ColorPicker" then
                td:SetValueRGB(Color3.fromHex(iO.value), iO.transparency)
            elseif iO.type == "KeyPicker" then
                td:SetValue({ iO.key, iO.mode, iO.modifiers })
                if iO.mode == "Toggle" and iO.toggled ~= nil then
                    td.Toggled = iO.toggled
                    td:Update()
                end
            else
                td:SetValue(iO.value)
            end
        end)
        return te_1
    end
    mi:AddDivider()
    mi:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    mi:AddButton("Export Config to Clipboard", function()
        local tn_1
        local tm_1
        tm_1, tn_1 = pcall(mv.JSONEncode, mv, iB())
        if not tm_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local tm_2 = setclipboard
        local ts = if tm_2 then 1 else 0
        local tq = 692 * ts + 262 * (1 - ts)
        local tr = 2412 * ts + 3245 * (1 - ts)
        if not ((tq * 3784 + tr * 656 + tq * tr) % 16777213 == 5869904) then
            tm_2 = toclipboard
        end
        local to = tm_2
        local tm_3 = type(to) ~= "function" or not pcall(to, tn_1)
        if tm_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    mi:AddButton("Import Config from Clipboard Text", function()
        local tv_1
        local tt = Options.SaveManager_ImportSource.Value
        local tt_1
        local tz = if tt then 1 else 0
        local tx = 335 * tz + 228 * (1 - tz)
        local ty = 2236 * tz + 3021 * (1 - tz)
        if not ((tx * 2853 + ty * 2838 + tx * ty) % 16777213 == 8050583) then
            tt = ""
        end
        local tu = tostring(tt):match("^%s*(.-)%s*$")
        if tu == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        tt_1, tv_1 = pcall(mv.JSONDecode, mv, tu)
        local tu_1 = not tt_1 or type(tv_1) ~= "table" or type(tv_1.objects) ~= "table"
        if tu_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local tt_2 = 0
        for k, v in tv_1.objects do
            if iN(v) then
                tt_2 += 1
            end
        end
        if tt_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local tv_2 = tt_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(tt_2, tv_2), 6)
    end)
end
nb_3()
SaveManager:LoadAutoloadConfig()
