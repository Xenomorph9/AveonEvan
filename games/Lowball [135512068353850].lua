local fns = {}
local sT_2, sT_3, sT_5, sT_6, sT_9, sT_10, sT_11, sT_12, sT_13, sT_15, sT_16, sT_17, sT_19, sT_20, sT_22, sT_23, sT_24, sT_25
local l0
local lI
local mp
local l6
local mO
local lO
local mv
local mc
local mU
local lU
local mB
local lB
local mi
local m_
local l_
local mH
local DealAction
local mo
local l5
local mN
local lN
local Remotes
local mT
local lT
local mA
local lA
local PlayerGui
local lZ
local mG
local lG
local mn
local l4
local mM
local lM
local mt
local ma
local lS
local mz
local lz
local UpgradeConstants
local mY
local lY
local lF
local mm
local l3
local mL
local ms
local l9
local mR
local lR
local my
local ly
local mf
local ItemShop
local lX
local lE
local ml
local l2
local mK
local lK
local mr
local ShopPriceUtil
local mQ
local lQ
local mx
local lx
local lW
local mD
local GameConfig
local m1
local mJ
local lJ
local mq
local l7
local mP
local mw
local md
local mV
local lV
local mC
local lC
local m0
function fns.worker9()
    while not lV.Unloaded do
        if lS("AutoBuyUpgrades") then
            pcall(lX)
        end
        task.wait(lB("UpgradeDelay", 1))
    end
end
function fns.fn24(br)
    local oW = lT()
    local oX = oW and oW.ItemShop
    local oW_1 = oX
    if oX then
        oX = oW_1.Stock
    end
    local oW_2 = oX
    if oX then
        oX = tonumber(oW_2[br])
    end
    return oX or 0
end
function fns.worker3()
    while not lV.Unloaded do
        if lS("AutoNegotiate") then
            pcall(ma)
            pcall(lZ)
        end
        pcall(mU)
        task.wait(0.1)
    end
end
function fns.worker6()
    while not lV.Unloaded do
        if lS("AutoAcceptOffers") then
            pcall(l4)
        end
        task.wait(lB("AcceptDelay", 0.5))
    end
end
function fns.fn29()
    local qB = not lS("AutoLower") or mm.askPrice <= 0
    if qB then
        return false
    elseif mm.lowersRemaining <= 0 then
        return false
    elseif lW() >= lB("LowerAttempts", mV) then
        return false
    else
        local qB_1 = mQ()
        if not qB_1 then
            return true
        end
        return qB_1 > lB("LowerTargetRatio", 95) / 100
    end
end
function fns.fn35(ft)
    local ra = tonumber(ft.profitPercent)
    if ra ~= nil then
        return ra
    end
    return 0
end
function fns.onRscripts()
    m0(mD, "Copied Rscripts profile to clipboard")
end
function fns.fn41()
    local pT_1
    local pS_1
    pS_1, pT_1 = pcall(function()
        return lR:IsPresentationActive()
    end)
    return pS_1 and pT_1 == true
end
function fns.fn82()
    local rW = mN("UpgradeTypes")
    local rX = mH()
    local rY = l5()
    for i, v in ipairs(mx) do
        local rZ = GameConfig.Upgrades[v]
        local r_ = rZ and mc(rW, v)
        if r_ then
            local r__1 = m1(v)
            local r0 = tonumber(rZ.MAX_LEVEL)
            local rZ_1 = not r0 or r__1 < r0
            local r0_1 = rZ_1 and not UpgradeConstants.isLocked(v, rY)
            if r0_1 then
                local rZ_2 = UpgradeConstants.getCost(v, r__1)
                local r__2 = type(rZ_2) == "number" and rZ_2 > 0 and rX >= rZ_2
                if r__2 then
                    mo(mr.PurchaseUpgrade, { UpgradeType = v })
                    return
                end
            end
        end
    end
end
function fns.fn89()
    local ov = lT()
    local ow = ov and type(ov.Cash) == "number"
    if ow then
        return ov.Cash
    end
    local leaderstats = mR:FindFirstChild("leaderstats")
    local ow_1 = leaderstats and leaderstats:FindFirstChild("Money")
    local ov_2 = ow_1
    if ow_1 then
        ow_1 = ov_2.Value
    end
    local ov_3 = ow_1
    local oA = if ov_3 then 1 else 0
    local oy = 1596 * oA + 970 * (1 - oA)
    local oz = 517 * oA + 2522 * (1 - oA)
    if not ((oy * 3964 + oz * 4045 + oy * oz) % 16777213 == 9242941) then
        ov_3 = 0
    end
    return ov_3
end
function fns.fn107(c9)
    if type(c9) ~= "table" then
        return
    end
    local stallIndex = mm.stallIndex
    local p7 = tonumber(c9.stallIndex) or 1
    if stallIndex == p7 then
        l_()
    end
end
function fns.fn116()
    local oN = lT()
    local oO = oN and tonumber(oN.StandLevel)
    return oO or 1
end
function fns.fn136(aa, ab)
    if setclipboard then
        setclipboard(aa)
    elseif toclipboard then
        toclipboard(aa)
    end
    lV:Notify(ab)
end
function fns.fn152()
    local q2 = if not lA() then 1 else 0
    if q2 == 1 then
        l3 = nil
        return
    end
    if mm.stallIndex then
        l3 = nil
        return
    end
    if not l3 then
        l3 = os.clock()
        return
    end
    if os.clock() - l3 >= 6 then
        l3 = nil
        pcall(function()
            lR:AbortDeal()
        end)
    end
end
function fns.fn187()
    local r9_1
    local r8_1
    if identifyexecutor then
        r9_1, r8_1 = identifyexecutor()
        local sa = r9_1 ~= ""
        local sb = type(r9_1) == "string" and sa
        if sb then
            local sa_1 = type(r8_1) == "string" and r8_1 ~= "" and r9_1 .. " " .. r8_1
            lz = sa_1 or r9_1
        end
    end
end
function fns.fn208(dH)
    local qr = type(dH) ~= "table" or not dH.buyerId
    if qr then
        return
    end
    mp[dH.buyerId] = dH
end
function fns.fn212(bN)
    local ph = lG()
    local pi = not ph or typeof(bN) ~= "Vector3"
    if pi then
        return false
    end
    ph.CFrame = CFrame.new(bN + Vector3.new(0, 3, 0))
    return true
end
local function fn252(cc)
    local px = mY(cc)
    local py = px and px:FindFirstChildOfClass("ProximityPrompt")
    return py or nil
end
local function fn263()
    if not workspace.CurrentCamera then
        return
    end
    mT:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    mT:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    l0 = tick()
end
local function fn280(bS, bT)
    local pk = Remotes:FindFirstChild(bS)
    if pk then
        pk:FireServer(bT)
    end
end
local function fn294()
    if getgenv then
        getgenv().Library = nil
    end
end
local function fn297()
    local p4_1
    local p2 = lQ()
    local p3 = p2 > 0 and mm.askPrice > 0
    local p3_1
    if p3 then
        p3_1, p4_1 = pcall(md.getDealTier, mm.askPrice, p2)
        if p3_1 and p4_1 then
            return p4_1
        end
        return mm.serverTier or "Fair"
    end
    return mm.serverTier or "Fair"
end
local function worker5()
    while not lV.Unloaded do
        if lS("AutoPlaceItems") then
            pcall(mA)
        end
        task.wait(lB("PlaceDelay", 1))
    end
end
local function fn305()
    local qD = not lS("AutoDecline")
    local qI = if qD then 1 else 0
    local qG = 3873 * qI + 156 * (1 - qI)
    local qH = 3193 * qI + 146 * (1 - qI)
    if not ((qG * 206 + qH * 2379 + qG * qH) % 16777213 == 3983261) then
        qD = mm.askPrice <= 0
    end
    if qD then
        return false
    end
    local qD_1 = lS("DeclineOnlyWhenOutOfLowers") and lS("AutoLower") and mm.lowersRemaining > 0
    if qD_1 then
        return false
    elseif not mc(mN("DeclineTiers"), mt()) then
        return false
    else
        local qD_2 = lB("DeclineMinPrice", 0)
        if qD_2 > 0 and mm.askPrice < qD_2 then
            return false
        end
        local qD_3 = mQ()
        if not qD_3 then
            return false
        end
        return qD_3 >= lB("DeclineMinRatio", 115) / 100
    end
end
local function fn316(ah, ai)
    return string.format('<font color="%s">%s</font>', ai, ah)
end
local function fn345()
    local oB = lT()
    local oC = oB and type(oB.Diamonds) == "number"
    if oC then
        return oB.Diamonds
    end
    local leaderstats = mR:FindFirstChild("leaderstats")
    local oC_1 = leaderstats and leaderstats:FindFirstChild("Diamonds")
    local oB_2 = oC_1
    if oC_1 then
        oC_1 = oB_2.Value
    end
    local oB_3 = oC_1
    local oG = if oB_3 then 1 else 0
    local oE = 167 * oG + 3878 * (1 - oG)
    local oF = 3126 * oG + 318 * (1 - oG)
    if not ((oE * 3363 + oF * 2265 + oE * oF) % 16777213 == 8164053) then
        oB_3 = 0
    end
    return oB_3
end
local function fn350()
    local q3 = lT()
    local q4 = q3 and q3.AutoSell
    if type(q4) ~= "table" then
        return
    end
    local q4_1 = lS("AutoSellNative")
    if q4.Enabled ~= q4_1 then
        mo(mr.AutoSellUpdate, { enabled = q4_1 })
        return
    end
    if not q4_1 then
        return
    end
    local q4_2 = GameConfig.AutoSell.DEFAULT_MIN_PROFIT_PCT or 10
    local q5 = lB("AutoSellMinProfit", q4_2)
    local q4_3 = l2.sanitize({ Enabled = true, MinProfitPct = q5, AcceptPct = q4.AcceptPct, DeclinePct = q4.DeclinePct })
    if tonumber(q4.MinProfitPct) ~= tonumber(q4_3.MinProfitPct) then
        mo(mr.AutoSellUpdate, { minProfitPct = q4_3.MinProfitPct })
    end
end
local function fn375(dK)
    local qt = type(dK) == "table" and dK.buyerId
    if qt then
        mp[dK.buyerId] = nil
    end
end
local function fn410(dO, dP)
    mo(mr.DealAction, { action = dO, stallIndex = mm.stallIndex, confirmTrap = dP == true })
    mi = os.clock()
end
local function fn414(bX, bY)
    local pm = Remotes:FindFirstChild(bX)
    if pm then
        table.insert(ly, pm.OnClientEvent:Connect(bY))
    end
end
local function fn416()
    local Character = mR.Character
    local pf = Character and Character:FindFirstChildOfClass("Humanoid")
    return pf
end
local function fn434()
    return mm.tierValue > 0 and mm.tierValue or mm.baseValue
end
local function fn437()
    if mm.lowersStart <= 0 then
        return 0
    end
    return math.max(0, mm.lowersStart - mm.lowersRemaining)
end
local function onInputChanged(hO)
    local UserInputType = hO.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        l6 = tick()
    end
end
local function fn520()
    local qv = not lS("AutoBuy")
    local qA = if qv then 1 else 0
    local qy = 2031 * qA + 2892 * (1 - qA)
    local qz = 617 * qA + 262 * (1 - qA)
    if not ((qy * 1812 + qz * 559 + qy * qz) % 16777213 == 5278202) then
        qv = mm.askPrice <= 0
    end
    if qv then
        return false
    end
    local qA_1 = if mm.askPrice > lJ() then 1 else 0
    if qA_1 == 1 then
        return false
    end
    local qv_1 = lB("BuyMaxPrice", 0)
    if qv_1 > 0 and mm.askPrice > qv_1 then
        return false
    end
    local qv_2 = mQ()
    local qw_1 = not qv_2 or qv_2 > lB("BuyMaxRatio", 110) / 100
    if qw_1 then
        return false
    end
    local qv_3 = mt()
    local qw_2 = qv_3 == "Trap" and not lS("BuyTrapItems")
    if qw_2 then
        return false
    end
    return mc(mN("BuyTiers"), qv_3)
end
local function fn523()
    m0(mJ, "Copied Discord invite to clipboard")
end
local function fn549(aE)
    local n7 = lI[aE]
    local n8 = n7 and n7.Value
    local n7_1 = {}
    if type(n8) ~= "table" then
        return n7_1
    end
    for k, v in pairs(n8) do
        if v == true then
            n7_1[k] = true
        end
    end
    return n7_1
end
local function fn558()
    mm.stallIndex = nil
    mm.askPrice = 0
    mm.baseValue = 0
    mm.tierValue = 0
    mm.lowersRemaining = 0
    mm.lowersStart = 0
    mm.serverTier = nil
end
local function fn569()
    local rB = mN("ShopItems")
    local rC = lJ()
    local rD = l5()
    local rE = lB("ShopMaxPrice", 0)
    for i, v in ipairs(ms) do
        local rF = ItemShop.Items[v]
        local rG = rF and rF.CashPrice and mc(rB, v)
        if rG then
            if (rF.UnlockNetWorth or 0) <= rD then
                local rG_2 = rF.Infinite or mB(v) > 0
                if rG_2 then
                    local rG_3 = ShopPriceUtil.getCashPrice(rF, rD, ItemShop.PriceScaling) or rF.CashPrice
                    if rG_3 <= rC and (rE <= 0 or rG_3 <= rE) then
                        mo(mr.ShopBuy, { itemId = v })
                        return
                    end
                end
            end
        end
    end
end
local function worker2()
    while not lV.Unloaded do
        task.wait(2)
        if lS("AntiAfk") then
            local sF = tick() - l6
            local sG = tick() - l0
            if sF >= 300 and sG >= 60 then
                pcall(lN)
            else
                if sF < 300 and sG >= 300 then
                    pcall(lN)
                end
            end
        end
    end
end
local function fn594()
    return lE and lE.Data or nil
end
local function fn626(ch)
    local pB_1
    local pA_1
    pA_1, pB_1 = pcall(function()
        return lK:GetPlot()
    end)
    if not pA_1 or not pB_1 then
        return nil
    end
    local PlotLogic = pB_1:FindFirstChild("PlotLogic")
    local pB_2 = PlotLogic and PlotLogic:FindFirstChild("CustomerHolder")
    local pA_3 = pB_2
    if pB_2 then
        pB_2 = pA_3:FindFirstChild(ch)
    end
    local pA_4 = pB_2
    if not pA_4 then
        return nil
    end
    local pB_3 = pA_4:FindFirstChild("HumanoidRootPart") or pA_4.PrimaryPart
    return pB_3
end
local function fn632()
    local leaderstats = mR:FindFirstChild("leaderstats")
    local oI = leaderstats and leaderstats:FindFirstChild("NetWorth")
    local oH_1 = oI
    if oI then
        oI = oH_1.Value
    end
    return oI or 0
end
local function fn654()
    local Character = mR.Character
    local pc = Character and Character:FindFirstChild("HumanoidRootPart")
    return pc
end
local function fn658()
    local o1 = lT()
    local o2 = o1 and o1.SellZone
    if type(o2) ~= "table" then
        return 0
    end
    local o2_1 = 0
    for k in pairs(o2) do
        o2_1 = o2_1 + 1
    end
    return o2_1
end
local function fn664(b2)
    local po = lK:GetRef("GroundPart" .. tostring(b2))
    local pp = po and po:IsA("BasePart")
    if pp then
        return po.Position
    end
    return nil
end
local function worker4()
    while not lV.Unloaded do
        pcall(lF)
        task.wait(mM)
    end
end
local function onUnload()
    lV:Unload()
end
local function fn720(ak, al, am)
    return string.format("<b>%s</b> %s %s", ak, my("-", "#5a6070"), my(al, am))
end
local function worker7()
    while not lV.Unloaded do
        if lS("AutoBuyTools") then
            pcall(mC)
        end
        task.wait(lB("ShopDelay", 1))
    end
end
local function worker8()
    while not lV.Unloaded do
        if lS("AutoBuyStands") then
            pcall(mw)
        end
        task.wait(lB("StandDelay", 2))
    end
end
local function fn752()
    local qJ = not mm.stallIndex or not lA()
    if qJ then
        return
    end
    if os.clock() - mi < lB("DealActionDelay", 0.35) then
        return
    end
    if mL() then
        mv(DealAction.Lower, false)
        return
    end
    local qQ = if l7() then 1 else 0
    if qQ == 1 then
        mv(DealAction.Buy, mt() == "Trap")
        return
    end
    local qN = if l9() then 1 else 0
    if qN == 1 then
        mv(DealAction.Pass, false)
    end
end
local function fn755(ay, az)
    local n1 = lI[ay]
    local n2 = n1 and tonumber(n1.Value)
    local n1_1 = n2
    local n6 = if n1_1 then 1 else 0
    local n4 = 1793 * n6 + 1803 * (1 - n6)
    local n5 = 2614 * n6 + 2315 * (1 - n6)
    if not ((n4 * 2413 + n5 * 470 + n4 * n5) % 16777213 == 10241991) then
        n1_1 = az
    end
    return n1_1
end
local function worker()
    local sh_1
    while true do
        task.wait(1)
        if lV.Unloaded then
            break
        end
        local sg = math.floor(os.clock() - mf)
        if sg < 60 then
            sh_1 = sg .. "s"
        elseif sg < 3600 then
            sh_1 = string.format("%dm %ds", sg // 60, sg % 60)
        else
            sh_1 = string.format("%dh %dm", sg // 3600, sg % 3600 // 60)
        end
        mG:SetText(mq("Session time", sh_1, lY))
    end
end
local function fn761(ct)
    local pF = ml(ct)
    if not pF then
        return true
    end
    local pG = lG()
    if not pG then
        return false
    elseif (pG.Position - pF.Position).Magnitude <= mO then
        return true
    else
        mK(pF.Position + Vector3.new(0, 0, 4))
        task.wait(0.25)
        return true
    end
end
local function fn774(b7)
    local pu = lU:GetStallNpc(b7)
    if not pu then
        return nil
    end
    local pv = pu:FindFirstChild("HumanoidRootPart") or pu.PrimaryPart
    return pv
end
local function fn837(bl)
    local oQ = lT()
    local oR = oQ and oQ.Upgrades
    local oQ_1 = oR
    if oR then
        oR = tonumber(oQ_1[bl])
    end
    return oR or 0
end
local function onCopyJoinScript_JobID()
    local g9 = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, mz)
    m0(g9, "Copied join script to clipboard")
end
local function fn879(at)
    local nZ = lM[at]
    return nZ ~= nil and nZ.Value == true
end
local function fn892(aN, aO)
    if next(aN) == nil then
        return true
    end
    return aN[aO] == true
end
local function fn906()
    local nS = getgenv and getgenv().Library and getgenv().Library.Unload
    if nS then
        getgenv().Library:Unload()
    end
end
local function fn919(dz)
    if type(dz) ~= "table" then
        return
    end
    local qk = tonumber(dz.stallIndex)
    if qk and mm.stallIndex and qk ~= mm.stallIndex then
        return
    end
    local result = dz.result
    local ql_1 = (tonumber(dz.newPrice))
    local qq = if ql_1 then 1 else 0
    local qo = 2379 * qq + 309 * (1 - qq)
    local qp = 2886 * qq + 4012 * (1 - qq)
    if not ((qo * 1903 + qp * 873 + qo * qp) % 16777213 == 13912509) then
        ql_1 = tonumber(dz.counterPrice)
    end
    local qm = ql_1
    if qm then
        mm.askPrice = qm
    end
    if dz.lowersRemaining ~= nil then
        local ql_2 = tonumber(dz.lowersRemaining) or 0
        mm.lowersRemaining = ql_2
    end
    if result == mn.DealResult.MaxLowers then
        mm.lowersRemaining = 0
    end
    if result == mn.DealResult.Bought or result == mn.DealResult.Passed or result == mn.DealResult.WalkedAway or result == mn.DealResult.Failed then
        l_()
    end
end
local function fn928()
    local pX = lQ()
    if pX <= 0 or mm.askPrice <= 0 then
        return nil
    end
    return mm.askPrice / pX
end
local function fn933()
    local rP = lO() + 1
    if rP > lC then
        return
    end
    local rQ = lJ()
    if rQ < (lx[rP] or 0) then
        return
    end
    local rQ_1 = l5()
    local rR_1 = m_[rP]
    local rV = if rR_1 then 1 else 0
    local rT = 60 * rV + 2610 * (1 - rV)
    local rU = 3342 * rV + 560 * (1 - rV)
    if not ((rT * 2118 + rU * 2204 + rT * rU) % 16777213 == 7693368) then
        rR_1 = 0
    end
    if rQ_1 < rR_1 then
        return
    end
    mo(mr.UnlockStand, { standLevel = rP })
end
local function fn956()
    local pI = lK:GetRef("SellableZone")
    local pJ = pI and pI:IsA("BasePart")
    if pJ then
        return pI.Position
    end
    return nil
end
local function fn964(gT)
    local DiscordGroup = gT:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mP })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mP })
end
local function onInputBegan()
    l6 = tick()
end
local function fn1036(aP)
    lE = aP
end
lx = nil
ly = nil
lz = nil
lA = nil
lB = nil
lC = nil
lE = nil
lF = nil
lG = nil
DealAction = nil
lI = nil
lJ = nil
lK = nil
lM = nil
lN = nil
lO = nil
lQ = nil
lR = nil
lS = nil
lT = nil
lU = nil
lV = nil
lW = nil
lX = nil
lY = nil
lZ = nil
l_ = nil
l0 = nil
l2 = nil
l3 = nil
l4 = nil
l5 = nil
l6 = nil
l7 = nil
ShopPriceUtil = nil
l9 = nil
ma = nil
mc = nil
md = nil
mf = nil
UpgradeConstants = nil
PlayerGui = nil
mi = nil
local lD, lL, lP, l1, mb, me, mj
GameConfig = nil
ml = nil
mm = nil
mn = nil
mo = nil
mp = nil
mq = nil
mr = nil
ms = nil
mt = nil
Remotes = nil
mv = nil
mw = nil
mx = nil
my = nil
mz = nil
mA = nil
mB = nil
mC = nil
mD = nil
mG = nil
mH = nil
mJ = nil
mK = nil
mL = nil
mM = nil
mN = nil
mO = nil
mP = nil
mQ = nil
mR = nil
mT = nil
mU = nil
mV = nil
ItemShop = nil
mY = nil
m_ = nil
m0 = nil
m1 = nil
local connection2, connection
local mE
local mF
connection2 = nil
local mW
connection = nil
local nl, nm
sT_17, sT_20, sT_6, mT, mR, sT_23, mJ, mD, sT_11, Remotes, mr, mn, GameConfig, UpgradeConstants, md, ShopPriceUtil, l2, sT_13, lU, lR, lP, lK, DealAction = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sT_4 = 50
repeat
    sT_16 = (sT_4 * 13 + 3) % 15 + 1
    if sT_16 <= 8 then
        if sT_16 <= 4 then
            if sT_16 <= 2 then
                if sT_16 <= 1 then
                    sT_25 = (vector.create((sT_4 * 4 + 4) % 11 + 1, (sT_4 * 7 + 5) % 13 + 1, (sT_4 * 3 + 15) % 17 + 1))
                    local tW = vector.floor(sT_25) + vector.ceil(sT_25 * -1)
                    if vector.dot(tW, tW) == 3 then
                        sT_11 = require(mr.Net.Remotes)
                    else
                        mr = require(sT_11.Net.Remotes)
                    end
                    sT_4 = (sT_4 + 7) % 60
                else
                    sT_25 = {
                        "ahoetvd",
                        "ltw",
                        "qpril",
                        "tqocmwuzdo",
                        "elttmqu",
                        "pgq",
                        "xwjuihuq",
                        "acbwaahkuz",
                        "ftvtqjw",
                        "eevvgetnxb"
                    }
                    local tV = sT_4
                    sT_9 = sT_25[tV % 10 + 1]
                    if sT_9:len() <= sT_9:reverse():rep(tV % 3 + 2):len() then
                        mn = require(sT_11.Constants.Enums)
                    else
                        sT_11 = require(mn.Constants.Enums)
                    end
                    sT_4 = (sT_4 + 52) % 60
                end
            elseif sT_16 <= 3 then
                if ((not lU or sT_20) and (not sT_6 and sT_6) or (not DealAction or sT_20) and (DealAction or not sT_20) or (not lU or lU or (not sT_6 or DealAction)) and ((not lU or lU) and (sT_6 or not lU))) and (not lU and DealAction and (DealAction or not md) and (md and sT_20 and (not sT_20 and lU)) or ((md or not lU) and (not DealAction and not lU) or (not md or not DealAction) and (not sT_20 and sT_6))) or not (((not lU or sT_20) and (not sT_6 and sT_6) or (not DealAction or sT_20) and (DealAction or not sT_20) or (not lU or lU or (not sT_6 or DealAction)) and ((not lU or lU) and (sT_6 or not lU))) and (not lU and DealAction and (DealAction or not md) and (md and sT_20 and (not sT_20 and lU)) or ((md or not lU) and (not DealAction and not lU) or (not md or not DealAction) and (not sT_20 and sT_6)))) then
                    GameConfig = require(sT_11.Config.GameConfig)
                else
                    sT_11 = require(GameConfig.Config.GameConfig)
                end
                sT_4 = (sT_4 + 37) % 60
            else
                sT_25 = (vector.create((sT_4 * 1 + 4) % 11 + 1, (sT_4 * 11 + 4) % 13 + 1, (sT_4 * 4 + 4) % 17 + 1))
                sT_9 = (vector.create((sT_4 * 6 + 1) % 11 + 1, (sT_4 * 8 + 3) % 13 + 1, (sT_4 * 5 + 6) % 17 + 1))
                local tL = vector.cross(sT_25, sT_9)
                local tM = vector.dot(sT_25, sT_9)
                if vector.dot(tL, tL) + tM * tM == vector.dot(sT_25, sT_25) * vector.dot(sT_9, sT_9) then
                    UpgradeConstants = require(sT_11.Constants.UpgradeConstants)
                else
                    sT_11 = require(UpgradeConstants.Constants.UpgradeConstants)
                end
                sT_4 = (sT_4 + 52) % 60
            end
        elseif sT_16 <= 6 then
            if sT_16 <= 5 then
                if ((sT_4 and sT_4 or lR and sT_4) and (not sT_4 or not sT_4 or (sT_4 or not sT_4)) or (not sT_4 and lR or not sT_4 and lR) and (sT_4 and not sT_4 and (not sT_4 and sT_4))) and not ((sT_4 and sT_4 or lR and sT_4) and (not sT_4 or not sT_4 or (sT_4 or not sT_4)) or (not sT_4 and lR or not sT_4 and lR) and (sT_4 and not sT_4 and (not sT_4 and sT_4))) then
                    l2 = require(ShopPriceUtil.Modules.DealOutcome)
                    sT_11 = require(ShopPriceUtil.Modules.ShopPriceUtil)
                    md = require(ShopPriceUtil.Modules.AutoSellUtil)
                else
                    md = require(sT_11.Modules.DealOutcome)
                    ShopPriceUtil = require(sT_11.Modules.ShopPriceUtil)
                    l2 = require(sT_11.Modules.AutoSellUtil)
                end
                sT_4 = (sT_4 + 7) % 60
            else
                if (sT_4 * 2 + 4) * 4 % 3 == ((sT_4 * 2 + 4) * 4 + 4) % 3 then
                    sT_20 = require(sT_13.ReplicaClient)
                else
                    sT_13 = require(sT_20.ReplicaClient)
                end
                sT_4 = (sT_4 + 52) % 60
            end
        elseif sT_16 <= 7 then
            sT_25 = {
                "biucsf",
                "fdatr",
                "ifr",
                "gxhwgonouhh",
                "dviiunjofyt",
                "eovlprgdkrs",
                "qog",
                "ehbxlivbfbl",
                "ditiefgbg",
                "ttmbragntkhu",
                "lnfwky",
                "mmbbe",
                "zhuqsoaaji",
                "uxzmjygau",
                "jcgljdr",
                "gouqy"
            }
            if sT_25[(sT_4 * 46 + 13) % 16 + 1] < sT_25[(sT_4 * 46 + 13) % 16 + 1] then
                mR = lU:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("Controllers")
                lK = require(mR.CustomerController)
                lP = require(mR.DealController)
                require(mR.SellController)
                lR = require(mR.PlotController)
            else
                sT_2 = mR:WaitForChild("PlayerScripts"):WaitForChild("Client"):WaitForChild("Controllers")
                lU = require(sT_2.CustomerController)
                lR = require(sT_2.DealController)
                lP = require(sT_2.SellController)
                lK = require(sT_2.PlotController)
            end
            sT_4 = (sT_4 + 52) % 60
        else
            sT_25 = (vector.create((sT_4 * 1 + 4) % 11 + 1, (sT_4 * 2 + 13) % 13 + 1, (sT_4 * 7 + 8) % 17 + 1))
            sT_9 = (vector.create((sT_4 * 3 + 9) % 11 + 1, (sT_4 * 2 + 12) % 13 + 1, (sT_4 * 15 + 17) % 17 + 1))
            local tr = vector.dot(sT_25, sT_9)
            if tr * tr <= vector.dot(sT_25, sT_25) * vector.dot(sT_9, sT_9) then
                DealAction = mn.DealAction
            else
                mn = DealAction.DealAction
            end
            sT_4 = (sT_4 + 7) % 60
        end
    elseif sT_16 <= 12 then
        if sT_16 <= 10 then
            if sT_16 <= 9 then
                local tE = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_4, 25), string.byte(tostring(Remotes))), 26)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tE, 3879830331), 3468593529), (bit32.bxor(bit32.band(tE, 415136964), 974151936))), 3468593529), 974151936) ~= tE then
                    mD = game:GetService("Players")
                else
                    sT_17 = game:GetService("Players")
                end
                sT_4 = (sT_4 + 7) % 60
            else
                sT_25 = (vector.create((sT_4 * 6 + 6) % 11 + 1, (sT_4 * 6 + 7) % 13 + 1, (sT_4 * 15 + 11) % 17 + 1))
                sT_9 = (vector.create((sT_4 * 7 + 1) % 11 + 1, (sT_4 * 6 + 12) % 13 + 1, (sT_4 * 12 + 13) % 17 + 1))
                sT_19 = (vector.create((sT_4 * 5 + 7) % 11 + 1, (sT_4 * 9 + 5) % 13 + 1, (sT_4 * 5 + 6) % 17 + 1))
                sT_3 = (vector.create((sT_4 * 1 + 4) % 5 + 1, (sT_4 * 3 + 4) % 7 + 1, (sT_4 * 5 + 2) % 9 + 1))
                if vector.dot(vector.cross(sT_25, (vector.cross(sT_9, sT_19))), sT_3) == vector.dot(sT_9 * vector.dot(sT_25, sT_19) - sT_19 * vector.dot(sT_25, sT_9), sT_3) then
                    sT_20 = game:GetService("ReplicatedStorage")
                else
                    lU = game:GetService("ReplicatedStorage")
                end
                sT_4 = (sT_4 + 52) % 60
            end
        elseif sT_16 <= 11 then
            if sT_4 * 105073485 + 13 + 6 >= sT_4 * 105073485 + 13 + 6 + 1 then
                mT = game:GetService("UserInputService")
                sT_6 = game:GetService("VirtualUser")
            else
                sT_6 = game:GetService("UserInputService")
                mT = game:GetService("VirtualUser")
            end
            sT_4 = (sT_4 + 37) % 60
        else
            sT_25 = (vector.create((sT_4 * 1 + 4) % 11 + 1, (sT_4 * 3 + 8) % 13 + 1, (sT_4 * 9 + 12) % 17 + 1))
            sT_9 = (vector.create((sT_4 * 7 + 4) % 11 + 1, (sT_4 * 4 + 10) % 13 + 1, (sT_4 * 5 + 4) % 17 + 1))
            sT_19 = (vector.create((sT_4 * 2 + 7) % 5 + 1, (sT_4 * 3 + 4) % 7 + 1, (sT_4 * 5 + 4) % 9 + 1))
            if math.abs((vector.angle(sT_25, sT_9, sT_19))) - math.abs((vector.angle(sT_9, sT_25, sT_19))) == 4 then
                sT_17 = mR.LocalPlayer
            else
                mR = sT_17.LocalPlayer
            end
            sT_4 = (sT_4 + 52) % 60
        end
    elseif sT_16 <= 14 then
        if sT_16 <= 13 then
            if (sT_4 * 1 + 8) * 9 % 4 == ((sT_4 * 1 + 8) * 9 + 14) % 4 then
                mD = "Lowball"
                sT_23 = "https://discord.gg/ehKVq7pf7v"
                mJ = "https://rscripts.net/@Ouroboros"
            else
                sT_23 = "Lowball"
                mJ = "https://discord.gg/ehKVq7pf7v"
                mD = "https://rscripts.net/@Ouroboros"
            end
            sT_4 = (sT_4 + 37) % 60
        else
            local th = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_4, 2), string.byte(tostring(l2))), 16)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(th, 652603401), 1327868372), (bit32.bxor(bit32.band(th, 3642363894), 2460487037))), 1327868372), 2460487037) ~= th then
                sT_20 = sT_11:WaitForChild("Shared")
            else
                sT_11 = sT_20:WaitForChild("Shared")
            end
            sT_4 = (sT_4 + 52) % 60
        end
    else
        sT_16 = { "rcbilugcdd", "ulcqt", "bhhcc", "inocufd", "jaxmmmp", "ovluro", "qndvvnefw", "lqyesy", "wfq" }
        local ty = sT_4
        sT_25 = sT_16[ty % 9 + 1]
        if sT_25:len() <= sT_25:gsub("(.)", "%1%1", ty % 3 % 2 + 1):len() then
            Remotes = sT_20:WaitForChild("Remotes")
        else
            sT_20 = Remotes:WaitForChild("Remotes")
        end
        sT_4 = (sT_4 + 7) % 60
    end
until (sT_4 * 41 + 21) % 60 == 1
sT_17 = GameConfig.Stands.MAX_STANDS or 3
lC = sT_17
sT_17 = { 0, 5000, 15000 }
sT_2 = GameConfig.Stands.UPGRADE_COSTS or sT_17
lx = sT_2
sT_17 = { 0, 200000, 50000000 }
sT_2 = GameConfig.Stands.NET_WORTH_REQUIREMENTS or sT_17
m_, ItemShop = nil, nil
m_ = sT_2
ItemShop = GameConfig.ItemShop
sT_17 = GameConfig.Deal.MAX_LOWER_ATTEMPTS or 3
mV = sT_17
sT_17 = GameConfig.Deal.NEGOTIATE_MAX_DISTANCE or 14
local mS = sT_17
sT_17 = GameConfig.BuyerOffer.PROXIMITY_RADIUS or 12
sT_2 = GameConfig.BuyerOffer.RESPONSE_RADIUS_SLACK or 2
mO, mM, sT_20, mx = nil, nil, nil, nil
sT_11 = 6
repeat
    sT_4 = (sT_11 * 1 + 0) % 2 + 1
    if sT_4 <= 1 then
        sT_4 = { "gedgkvqer", "copup", "cvu", "ibkxpj", "jswmyddax", "rqpwnwg", "ngy" }
        local tA = sT_11
        sT_16 = sT_4[tA % 7 + 1]
        if sT_16:len() <= sT_16:reverse():rep(tA % 3 + 2):len() then
            mO = sT_17 + sT_2
        else
            sT_2 = sT_17 + mO
        end
        sT_11 = (sT_11 + 1) % 8
    else
        if (sT_11 * 3 + 2) * 9 % 4 == ((sT_11 * 3 + 2) * 9 + 12) % 4 then
            mM = 2
            sT_20 = { "Great", "Fair", "Risky", "Trap" }
            mx = {}
        else
            mx = 2
            mM = { "Great", "Fair", "Trap", "Risky" }
            sT_20 = {}
        end
        sT_11 = (sT_11 + 3) % 8
    end
until (sT_11 * 5 + 6) % 8 == 0
for k in pairs(mn.UpgradeType) do
    table.insert(mx, k)
end
ms = nil
table.sort(mx)
ms = {}
for k in pairs(ItemShop.Items) do
    table.insert(ms, k)
end
PlayerGui = nil
sT_17 = 3
repeat
    sT_2 = { "hkcgwh", "tyacxpfemhp", "pne", "fscr", "ypgdeecloeb", "gdys", "cnqbqw" }
    local t2 = sT_17
    sT_11 = sT_2[t2 % 7 + 1]
    if sT_11:len() >= sT_11:reverse():rep(t2 % 3 + 2):len() then
        table.sort(PlayerGui)
        pcall(fn906)
        pcall(fn294)
        mR = ms:WaitForChild("PlayerGui")
    else
        table.sort(ms)
        pcall(fn906)
        pcall(fn294)
        PlayerGui = mR:WaitForChild("PlayerGui")
    end
    sT_17 = (sT_17 + 0) % 4
until (sT_17 * 1 + 2) % 4 == 1
for i, child in ipairs(PlayerGui:GetChildren()) do
    if child.Name == "Obsidian" then
        child:Destroy()
    end
end
sT_17 = function()
    return PlayerGui
end
if getgenv then
    getgenv().gethui = sT_17
end
sT_2, lV, sT_22, sT_12, lM, lI, lE, ly, sT_3, sT_19, lY, sT_9, mp, mm, mi, me, mb, l3, sT_11, sT_5, m0, mP, my, mq, lS, lB, mN, mc, lT, lJ, mH, l5, lO, m1, mB, l1, lG, mW, mK, mo, sT_4, lL, mY, mE, ml, lD, mF, l_, lW, lQ, lA, mQ, mt, mv, l7, mL, l9, mU, ma, lZ, lF, mj, l4, mA, mC, mw, lX, sT_25 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
sT_16 = 52
repeat
    sT_15 = (sT_16 * 4 + 21) % 27 + 1
    if sT_15 <= 14 then
        if sT_15 <= 7 then
            if sT_15 <= 4 then
                if sT_15 <= 2 then
                    if sT_15 <= 1 then
                        local tz = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 21), string.byte(tostring(lY))), 18)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tz, 851440083), 2392941277), (bit32.bxor(bit32.band(tz, 3443527212), 2987736847))), 2392941277), 2987736847) == tz then
                            mY = fn774
                            mE = fn252
                        else
                            mE = fn774
                            mY = fn252
                        end
                        sT_16 = (sT_16 + 88) % 108
                    else
                        sT_24 = (vector.create((sT_16 * 5 + 6) % 11 + 1, (sT_16 * 2 + 6) % 13 + 1, (sT_16 * 9 + 2) % 17 + 1))
                        sT_10 = (vector.create((sT_16 * 4 + 6) % 11 + 1, (sT_16 * 11 + 11) % 13 + 1, (sT_16 * 4 + 8) % 17 + 1))
                        nl = (vector.create((sT_16 * 6 + 4) % 11 + 1, (sT_16 * 5 + 2) % 13 + 1, (sT_16 * 6 + 12) % 17 + 1))
                        nm = (vector.create((sT_16 * 4 + 5) % 11 + 1, (sT_16 * 1 + 12) % 13 + 1, (sT_16 * 5 + 6) % 17 + 1))
                        if vector.dot(vector.cross(sT_24, sT_10), (vector.cross(nl, nm))) == vector.dot(sT_24, nl) * vector.dot(sT_10, nm) - vector.dot(sT_24, nm) * vector.dot(sT_10, nl) + 5 then
                            ma = fn626
                        else
                            ml = fn626
                        end
                        sT_16 = (sT_16 + 7) % 108
                    end
                elseif sT_15 <= 3 then
                    local tK = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 2), string.byte(tostring(mU))), 24)
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tK, 1689094583), 3271249966), (bit32.bxor(bit32.band(tK, 2605872712), 2019576863))), 3271249966), 2019576863) ~= tK then
                        mF = fn761
                        mp = fn956
                        lD = {}
                    else
                        lD = fn761
                        mF = fn956
                        mp = {}
                    end
                    sT_16 = (sT_16 + 88) % 108
                else
                    if (sT_16 * 2 + 9) * 16 % 3 == ((sT_16 * 2 + 9) * 16 + 4) % 3 then
                        me = {
                            baseValue = 0,
                            serverTier = nil,
                            lowersRemaining = 0,
                            askPrice = 0,
                            stallIndex = nil,
                            lowersStart = 0,
                            tierValue = 0
                        }
                        mm = 0
                        mi = 0
                    else
                        mm = {
                            stallIndex = nil,
                            askPrice = 0,
                            baseValue = 0,
                            tierValue = 0,
                            lowersRemaining = 0,
                            lowersStart = 0,
                            serverTier = nil
                        }
                        mi = 0
                        me = 0
                    end
                    sT_16 = (sT_16 + 61) % 108
                end
            elseif sT_15 <= 6 then
                if sT_15 <= 5 then
                    if sT_16 * 109745357 + 12 + 6 >= sT_16 * 109745357 + 12 + 6 + 1 then
                        lW = false
                        mb = nil
                        l3 = fn558
                        l_ = fn437
                    else
                        mb = false
                        l3 = nil
                        l_ = fn558
                        lW = fn437
                    end
                    sT_16 = (sT_16 + 7) % 108
                else
                    sT_24 = {
                        "uhpcfvcfjr",
                        "eywzafpii",
                        "fhmbki",
                        "srsydddor",
                        "dhsztxqlgy",
                        "kank",
                        "zlxgwtyk",
                        "ugteawasr",
                        "hwqpow"
                    }
                    if sT_24[(sT_16 * 38 + 100) % 9 + 1] < sT_24[(sT_16 * 38 + 100) % 9 + 1] then
                        mv = fn434
                        mQ = fns.fn41
                        mt = fn928
                        lA = fn297
                        lQ(sT_4.CustomerLeave, fns.fn107)
                        lQ(sT_4.BeginNegotiationResult, function(dc)
                            local p9
                            local qb_3
                            local qa = type(dc) ~= "table"
                            local qa_7
                            local qg = if qa then 1 else 0
                            local qe = 2150 * qg + 940 * (1 - qg)
                            local qf = 4026 * qg + 1005 * (1 - qg)
                            if not ((qe * 3699 + qf * 1046 + qe * qf) % 16777213 == 4042733) then
                                qa = dc.success == false
                            end
                            if qa then
                                return
                            end
                            p9 = tonumber(dc.stallIndex)
                            if not p9 then
                                return
                            end
                            qa_7, qb_3 = pcall(function()
                                return lU:GetCurrentOffer(p9)
                            end)
                            if not qa_7 then
                                qb_3 = nil
                            end
                            mm.stallIndex = p9
                            local qa_8 = (tonumber(dc.askPrice))
                            if not qa_8 then
                                local qc_8 = qb_3 and qb_3.askPrice
                                qa_8 = tonumber(qc_8)
                            end
                            local qc_9 = qa_8 or 0
                            mm.askPrice = qc_9
                            local qa_9 = (tonumber(dc.baseValue))
                            if not qa_9 then
                                local qc_10 = qb_3 and qb_3.baseValue
                                qa_9 = tonumber(qc_10)
                            end
                            local qc_11 = qa_9 or 0
                            mm.baseValue = qc_11
                            local qa_10 = (tonumber(dc.tierValue))
                            if not qa_10 then
                                local qc_12 = qb_3 and qb_3.tierValue
                                qa_10 = tonumber(qc_12)
                            end
                            local qc_13 = qa_10 or 0
                            mm.tierValue = qc_13
                            local qa_11 = (tonumber(dc.lowersRemaining))
                            local qj = if qa_11 then 1 else 0
                            local qh = 527 * qj + 3152 * (1 - qj)
                            local qi = 2898 * qj + 733 * (1 - qj)
                            if not ((qh * 2305 + qi * 369 + qh * qi) % 16777213 == 3811343) then
                                qa_11 = mV
                            end
                            mm.lowersRemaining = qa_11
                            mm.lowersStart = mm.lowersRemaining
                            local qa_12 = dc.dealTier
                            if not qa_12 then
                                qa_12 = qb_3 and qb_3.dealTier
                            end
                            local qb_4 = qa_12
                            local qg_2 = if qb_4 then 1 else 0
                            local qe_2 = 2936 * qg_2 + 1723 * (1 - qg_2)
                            local qf_2 = 305 * qg_2 + 677 * (1 - qg_2)
                            if not ((qe_2 * 1135 + qf_2 * 3386 + qe_2 * qf_2) % 16777213 == 5260570) then
                                qb_4 = nil
                            end
                            mm.serverTier = qb_4
                        end)
                        lQ(sT_4.DealResult, fn919)
                        lQ(sT_4.BuyerOffer, fns.fn208)
                        lQ(sT_4.BuyerPurchased, fn375)
                        mr = fn410
                    else
                        lQ = fn434
                        lA = fns.fn41
                        mQ = fn928
                        mt = fn297
                        sT_4(mr.CustomerLeave, fns.fn107)
                        sT_4(mr.BeginNegotiationResult, function(dc)
                            local p9
                            local qb_1
                            local qa = type(dc) ~= "table"
                            local qa_1
                            local qg = if qa then 1 else 0
                            local qe = 2150 * qg + 940 * (1 - qg)
                            local qf = 4026 * qg + 1005 * (1 - qg)
                            if not ((qe * 3699 + qf * 1046 + qe * qf) % 16777213 == 4042733) then
                                qa = dc.success == false
                            end
                            if qa then
                                return
                            end
                            p9 = tonumber(dc.stallIndex)
                            if not p9 then
                                return
                            end
                            qa_1, qb_1 = pcall(function()
                                return lU:GetCurrentOffer(p9)
                            end)
                            if not qa_1 then
                                qb_1 = nil
                            end
                            mm.stallIndex = p9
                            local qa_2 = (tonumber(dc.askPrice))
                            if not qa_2 then
                                local qc_1 = qb_1 and qb_1.askPrice
                                qa_2 = tonumber(qc_1)
                            end
                            local qc_2 = qa_2 or 0
                            mm.askPrice = qc_2
                            local qa_3 = (tonumber(dc.baseValue))
                            if not qa_3 then
                                local qc_3 = qb_1 and qb_1.baseValue
                                qa_3 = tonumber(qc_3)
                            end
                            local qc_4 = qa_3 or 0
                            mm.baseValue = qc_4
                            local qa_4 = (tonumber(dc.tierValue))
                            if not qa_4 then
                                local qc_5 = qb_1 and qb_1.tierValue
                                qa_4 = tonumber(qc_5)
                            end
                            local qc_6 = qa_4 or 0
                            mm.tierValue = qc_6
                            local qa_5 = (tonumber(dc.lowersRemaining))
                            local qj = if qa_5 then 1 else 0
                            local qh = 527 * qj + 3152 * (1 - qj)
                            local qi = 2898 * qj + 733 * (1 - qj)
                            if not ((qh * 2305 + qi * 369 + qh * qi) % 16777213 == 3811343) then
                                qa_5 = mV
                            end
                            mm.lowersRemaining = qa_5
                            mm.lowersStart = mm.lowersRemaining
                            local qa_6 = dc.dealTier
                            if not qa_6 then
                                qa_6 = qb_1 and qb_1.dealTier
                            end
                            local qb_2 = qa_6
                            local qg_1 = if qb_2 then 1 else 0
                            local qe_1 = 2936 * qg_1 + 1723 * (1 - qg_1)
                            local qf_1 = 305 * qg_1 + 677 * (1 - qg_1)
                            if not ((qe_1 * 1135 + qf_1 * 3386 + qe_1 * qf_1) % 16777213 == 5260570) then
                                qb_2 = nil
                            end
                            mm.serverTier = qb_2
                        end)
                        sT_4(mr.DealResult, fn919)
                        sT_4(mr.BuyerOffer, fns.fn208)
                        sT_4(mr.BuyerPurchased, fn375)
                        mv = fn410
                    end
                    sT_16 = (sT_16 + 7) % 108
                end
            else
                sT_24 = {
                    "cuxgolh",
                    "gpileiuxljf",
                    "tectuhohv",
                    "nvwveoig",
                    "ylmotsktbn",
                    "rxriawwquux",
                    "itmqqpltaz",
                    "zlzvft",
                    "uso",
                    "bqbssfiuyks",
                    "zph",
                    "kmuw"
                }
                local tq = sT_16
                sT_10 = sT_24[tq % 12 + 1]
                if sT_10:len() <= sT_10:gsub("(.)", "%1%1", tq % 3 % 2 + 1):len() then
                    l7 = fn520
                    mL = fns.fn29
                    l9 = fn305
                    mU = fn752
                else
                    mL = fn520
                    mU = fns.fn29
                    l7 = fn305
                    l9 = fn752
                end
                sT_16 = (sT_16 + 34) % 108
            end
        elseif sT_15 <= 11 then
            if sT_15 <= 9 then
                if sT_15 <= 8 then
                    if sT_16 * 70783673 + 2 + 6 <= sT_16 * 70783673 + 2 + 6 + 2 then
                        ma = function()
                            local qS_4
                            local qR = mb or lA()
                            local qR_5
                            if qR then
                                return
                            end
                            if os.clock() - me < lB("NegotiateDelay", 0.4) then
                                return
                            end
                            if not fireproximityprompt then
                                return
                            end
                            local qR_4 = math.min(lC, math.max(1, lO()))
                            for i = 1, qR_4 do
                                local qZ = i
                                qR_5, qS_4 = pcall(function()
                                    return lU:GetCurrentOffer(qZ)
                                end)
                                local qT = qR_5 and type(qS_4) == "table"
                                if qT then
                                    local qR_6 = mE(qZ)
                                    local qS_5 = mY(qZ)
                                    if qR_6 and qS_5 then
                                        local qT_5 = lG()
                                        if qT_5 then
                                            local qU = Vector3.new(qT_5.Position.X, 0, qT_5.Position.Z)
                                            local qT_6 = Vector3.new(qS_5.Position.X, 0, qS_5.Position.Z)
                                            if (qU - qT_6).Magnitude > mS - 4 then
                                                local qS_6 = lL(qZ)
                                                if qS_6 then
                                                    mK(qS_6)
                                                    task.wait(0.3)
                                                end
                                            end
                                        end
                                        me = os.clock()
                                        mb = true
                                        pcall(fireproximityprompt, qR_6)
                                        mb = false
                                        return
                                    end
                                end
                            end
                        end
                        lZ = fns.fn152
                        lF = fn350
                        mj = fns.fn35
                    else
                        lZ = function()
                            local qS_1
                            local qR = mb or lA()
                            local qR_2
                            if qR then
                                return
                            end
                            if os.clock() - me < lB("NegotiateDelay", 0.4) then
                                return
                            end
                            if not fireproximityprompt then
                                return
                            end
                            local qR_1 = math.min(lC, math.max(1, lO()))
                            for i = 1, qR_1 do
                                local qZ = i
                                qR_2, qS_1 = pcall(function()
                                    return lU:GetCurrentOffer(qZ)
                                end)
                                local qT = qR_2 and type(qS_1) == "table"
                                if qT then
                                    local qR_3 = mE(qZ)
                                    local qS_2 = mY(qZ)
                                    if qR_3 and qS_2 then
                                        local qT_2 = lG()
                                        if qT_2 then
                                            local qU = Vector3.new(qT_2.Position.X, 0, qT_2.Position.Z)
                                            local qT_3 = Vector3.new(qS_2.Position.X, 0, qS_2.Position.Z)
                                            if (qU - qT_3).Magnitude > mS - 4 then
                                                local qS_3 = lL(qZ)
                                                if qS_3 then
                                                    mK(qS_3)
                                                    task.wait(0.3)
                                                end
                                            end
                                        end
                                        me = os.clock()
                                        mb = true
                                        pcall(fireproximityprompt, qR_3)
                                        mb = false
                                        return
                                    end
                                end
                            end
                        end
                        mj = fns.fn152
                        ma = fn350
                        lF = fns.fn35
                    end
                    sT_16 = (sT_16 + 34) % 108
                else
                    sT_24 = (vector.create((sT_16 * 2 + 4) % 11 + 1, (sT_16 * 5 + 13) % 13 + 1, (sT_16 * 5 + 2) % 17 + 1))
                    sT_10 = (vector.create((sT_16 * 3 + 9) % 11 + 1, (sT_16 * 10 + 11) % 13 + 1, (sT_16 * 11 + 13) % 17 + 1))
                    nl = (vector.create((sT_16 * 4 + 4) % 11 + 1, (sT_16 * 11 + 8) % 13 + 1, (sT_16 * 10 + 1) % 17 + 1))
                    if vector.dot(vector.cross(sT_24, sT_10), nl) == vector.dot(vector.cross(sT_10, nl), sT_24) then
                        l4 = function()
                            for k, v in pairs(mp) do
                                local rk = k
                                if type(v) ~= "table" then
                                    mp[rk] = nil
                                else
                                    local rd = tonumber(v.offerPrice) or 0
                                    local rd_3 = lB("AcceptMinOffer", 0)
                                    local rc = mj(v) >= lB("AcceptMinProfit", 0)
                                    if rd_3 > 0 and rd < rd_3 then
                                        rc = false
                                    end
                                    local rd_4 = rc or lS("DeclineBadOffers")
                                    if rd_4 then
                                        mp[rk] = nil
                                        if lS("WalkToBuyer") then
                                            lD(rk)
                                        end
                                        pcall(function()
                                            lP:_respondToOffer(rk, rc)
                                        end)
                                        return
                                    end
                                end
                            end
                        end
                        mA = function()
                            local Backpack = mR:FindFirstChildOfClass("Backpack")
                            local Character = mR.Character
                            local ro = {}
                            if Backpack then
                                for i, child in ipairs(Backpack:GetChildren()) do
                                    if child:IsA("Tool") then
                                        table.insert(ro, child)
                                    end
                                end
                            end
                            if Character then
                                local Tool = Character:FindFirstChildOfClass("Tool")
                                if Tool then
                                    table.insert(ro, Tool)
                                end
                            end
                            if #ro == 0 then
                                return
                            end
                            local rp_6 = lB("PlaceMaxItems", 0)
                            local rq_3 = rp_6 > 0 and l1() >= rp_6
                            if rq_3 then
                                return
                            end
                            local rp_7 = mF()
                            if not rp_7 then
                                return
                            end
                            mK(rp_7)
                            task.wait(0.15)
                            local rn = mW()
                            if rn then
                                pcall(function()
                                    rn:EquipTool(ro[1])
                                end)
                                task.wait(0.1)
                            end
                            local rp_8 = lG()
                            if not rp_8 then
                                return
                            end
                            local rq_4 = { x = rp_8.Position.X, z = rp_8.Position.Z }
                            if lS("PlaceDropAll") then
                                mo(mr.DropAll, { position = rq_4 })
                                return
                            end
                            mo(mr.DropItem, { position = rq_4 })
                        end
                        mC = fn569
                        mw = fn933
                    else
                        mC = function()
                            for k, v in pairs(mp) do
                                local rk = k
                                if type(v) ~= "table" then
                                    mp[rk] = nil
                                else
                                    local rd = tonumber(v.offerPrice) or 0
                                    local rd_1 = lB("AcceptMinOffer", 0)
                                    local rc = mj(v) >= lB("AcceptMinProfit", 0)
                                    if rd_1 > 0 and rd < rd_1 then
                                        rc = false
                                    end
                                    local rd_2 = rc or lS("DeclineBadOffers")
                                    if rd_2 then
                                        mp[rk] = nil
                                        if lS("WalkToBuyer") then
                                            lD(rk)
                                        end
                                        pcall(function()
                                            lP:_respondToOffer(rk, rc)
                                        end)
                                        return
                                    end
                                end
                            end
                        end
                        l4 = function()
                            local Backpack = mR:FindFirstChildOfClass("Backpack")
                            local Character = mR.Character
                            local ro = {}
                            if Backpack then
                                for i, child in ipairs(Backpack:GetChildren()) do
                                    if child:IsA("Tool") then
                                        table.insert(ro, child)
                                    end
                                end
                            end
                            if Character then
                                local Tool = Character:FindFirstChildOfClass("Tool")
                                if Tool then
                                    table.insert(ro, Tool)
                                end
                            end
                            if #ro == 0 then
                                return
                            end
                            local rp_2 = lB("PlaceMaxItems", 0)
                            local rq_1 = rp_2 > 0 and l1() >= rp_2
                            if rq_1 then
                                return
                            end
                            local rp_3 = mF()
                            if not rp_3 then
                                return
                            end
                            mK(rp_3)
                            task.wait(0.15)
                            local rn = mW()
                            if rn then
                                pcall(function()
                                    rn:EquipTool(ro[1])
                                end)
                                task.wait(0.1)
                            end
                            local rp_4 = lG()
                            if not rp_4 then
                                return
                            end
                            local rq_2 = { x = rp_4.Position.X, z = rp_4.Position.Z }
                            if lS("PlaceDropAll") then
                                mo(mr.DropAll, { position = rq_2 })
                                return
                            end
                            mo(mr.DropItem, { position = rq_2 })
                        end
                        mw = fn569
                        mA = fn933
                    end
                    sT_16 = (sT_16 + 88) % 108
                end
            elseif sT_15 <= 10 then
                sT_24 = (vector.create((sT_16 * 4 + 6) % 11 + 1, (sT_16 * 7 + 5) % 13 + 1, (sT_16 * 13 + 2) % 17 + 1))
                sT_10 = (vector.create((sT_16 * 4 + 5) % 11 + 1, (sT_16 * 4 + 12) % 13 + 1, (sT_16 * 14 + 9) % 17 + 1))
                nl = (vector.create((sT_16 * 3 + 1) % 5 + 1, (sT_16 * 3 + 7) % 7 + 1, (sT_16 * 4 + 3) % 9 + 1))
                if math.abs((vector.angle(sT_24, sT_10, nl))) - math.abs((vector.angle(sT_10, sT_24, nl))) == 0 then
                    lX = fns.fn82
                else
                    mU = fns.fn82
                end
                sT_16 = (sT_16 + 7) % 108
            else
                sT_24 = {
                    "yxjocmxwzurk",
                    "gkd",
                    "lrcwjyo",
                    "oyvfyc",
                    "ioemkyt",
                    "ymklg",
                    "hgin",
                    "hvbkj",
                    "qxamrmoxmj",
                    "ezzqdhf"
                }
                if sT_24[(sT_16 * 46 + 112) % 10 + 1] <= sT_24[(sT_16 * 46 + 112) % 10 + 1] then
                    sT_11 = lV:CreateWindow({
                        Title = "Ouroboros Hub",
                        Footer = { { Text = mJ, Copyable = true }, "|", sT_23 },
                        Icon = 12645376577,
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        CornerRadius = 10,
                        Size = UDim2.fromOffset(880, 700)
                    })
                else
                    sT_23 = mJ:CreateWindow({
                        Footer = { { Text = lV, Copyable = true }, "|", sT_11 },
                        NotifySide = "Right",
                        ShowCustomCursor = false,
                        Icon = 12645376577,
                        CornerRadius = 10,
                        Title = "Ouroboros Hub",
                        Size = UDim2.fromOffset(880, 700)
                    })
                end
                sT_16 = (sT_16 + 88) % 108
            end
        elseif sT_15 <= 13 then
            if sT_15 <= 12 then
                local tt = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 28), string.byte(tostring(l3))), 17)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tt, 2457811053), 2424475612), (bit32.bxor(bit32.band(tt, 1837156242), 2514690223))), 2424475612), 2514690223) ~= tt then
                    sT_11 = {
                        Deals = sT_5:AddTab("Deals", "handshake"),
                        Info = sT_5:AddTab("Info", "info"),
                        Settings = sT_5:AddTab("Settings", "settings"),
                        Shop = sT_5:AddTab("Shop", "shopping-cart"),
                        Sell = sT_5:AddTab("Sell", "hand-coins")
                    }
                else
                    sT_5 = {
                        Info = sT_11:AddTab("Info", "info"),
                        Deals = sT_11:AddTab("Deals", "handshake"),
                        Sell = sT_11:AddTab("Sell", "hand-coins"),
                        Shop = sT_11:AddTab("Shop", "shopping-cart"),
                        Settings = sT_11:AddTab("Settings", "settings")
                    }
                end
                sT_16 = (sT_16 + 88) % 108
            else
                sT_24 = (vector.create((sT_16 * 5 + 9) % 11 + 1, (sT_16 * 2 + 8) % 13 + 1, (sT_16 * 10 + 1) % 17 + 1))
                sT_10 = (vector.create((sT_16 * 1 + 2) % 11 + 1, (sT_16 * 11 + 13) % 13 + 1, (sT_16 * 13 + 8) % 17 + 1))
                nl = (vector.create((sT_16 * 1 + 6) % 5 + 1, (sT_16 * 4 + 3) % 7 + 1, (sT_16 * 4 + 6) % 9 + 1))
                if math.abs((vector.angle(sT_24, sT_10, nl))) - math.abs((vector.angle(sT_10, sT_24, nl))) == 3 then
                    mN = fn964
                else
                    sT_25 = fn964
                end
                sT_16 = (sT_16 + 7) % 108
            end
        else
            if sT_16 * 110015547 + 12 + 5 >= sT_16 * 110015547 + 12 + 5 + 5 then
                gethui = sT_2
                sT_17 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            else
                gethui = sT_17
                sT_2 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
            end
            sT_16 = (sT_16 + 7) % 108
        end
    elseif sT_15 <= 21 then
        if sT_15 <= 18 then
            if sT_15 <= 16 then
                if sT_15 <= 15 then
                    sT_24 = (vector.create((sT_16 * 1 + 5) % 11 + 1, (sT_16 * 4 + 3) % 13 + 1, (sT_16 * 11 + 16) % 17 + 1))
                    sT_10 = (vector.create((sT_16 * 7 + 7) % 11 + 1, (sT_16 * 4 + 12) % 13 + 1, (sT_16 * 15 + 10) % 17 + 1))
                    nl = (vector.create((sT_16 * 4 + 9) % 11 + 1, (sT_16 * 11 + 1) % 13 + 1, (sT_16 * 5 + 12) % 17 + 1))
                    if vector.dot(vector.cross(sT_24, sT_10), nl) == vector.dot(vector.cross(sT_10, nl), sT_24) + 1 then
                        sT_2 = loadstring(game:HttpGet(lV .. "Library.lua"))()
                    else
                        lV = loadstring(game:HttpGet(sT_2 .. "Library.lua"))()
                    end
                    sT_16 = (sT_16 + 34) % 108
                else
                    if (sT_16 * 2 + 3) * 7 % 3 == ((sT_16 * 2 + 3) * 7 + 4) % 3 then
                        sT_2 = loadstring(game:HttpGet(sT_22 .. "addons/ThemeManager.lua"))()
                    else
                        sT_22 = loadstring(game:HttpGet(sT_2 .. "addons/ThemeManager.lua"))()
                    end
                    sT_16 = (sT_16 + 88) % 108
                end
            elseif sT_15 <= 17 then
                local tO = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 4), string.byte(tostring(sT_22))), 4)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tO, 2824909501), 821655357), (bit32.bxor(bit32.band(tO, 1470057794), 2503192946))), 821655357), 2503192946) ~= tO then
                    lM = loadstring(game:HttpGet(sT_12 .. "addons/SaveManager.lua"))()
                    lV = sT_2.Toggles
                else
                    sT_12 = loadstring(game:HttpGet(sT_2 .. "addons/SaveManager.lua"))()
                    lM = lV.Toggles
                end
                sT_16 = (sT_16 + 88) % 108
            else
                if sT_16 * 10891577 + 5 + 7 >= sT_16 * 10891577 + 5 + 7 + 1 then
                    lV = lE.Options
                    ly = nil
                    lI = {}
                else
                    lI = lV.Options
                    lE = nil
                    ly = {}
                end
                sT_16 = (sT_16 + 7) % 108
            end
        elseif sT_15 <= 20 then
            if sT_15 <= 19 then
                sT_24 = (vector.create((sT_16 * 1 + 6) % 11 + 1, (sT_16 * 11 + 3) % 13 + 1, (sT_16 * 8 + 3) % 17 + 1))
                sT_10 = (vector.create((sT_16 * 2 + 2) % 11 + 1, (sT_16 * 6 + 8) % 13 + 1, (sT_16 * 10 + 12) % 17 + 1))
                local tC = vector.cross(sT_24, sT_10)
                local tD = vector.dot(sT_24, sT_10)
                if vector.dot(tC, tC) + tD * tD == vector.dot(sT_24, sT_24) * vector.dot(sT_10, sT_10) + 1 then
                    mP = fns.fn136
                    m0 = fn523
                else
                    m0 = fns.fn136
                    mP = fn523
                end
                sT_16 = (sT_16 + 7) % 108
            else
                sT_24 = (vector.create((sT_16 * 2 + 7) % 11 + 1, (sT_16 * 3 + 3) % 13 + 1, (sT_16 * 14 + 1) % 17 + 1))
                sT_10 = (vector.create((sT_16 * 7 + 4) % 11 + 1, (sT_16 * 8 + 11) % 13 + 1, (sT_16 * 7 + 1) % 17 + 1))
                local tm = vector.dot(sT_24, sT_10)
                if tm * tm >= vector.dot(sT_24, sT_24) * vector.dot(sT_10, sT_10) + 1 then
                    sT_3 = fn316
                    my = fn720
                    mq = "#7fd47f"
                else
                    my = fn316
                    mq = fn720
                    sT_3 = "#7fd47f"
                end
                sT_16 = (sT_16 + 61) % 108
            end
        else
            sT_24 = { "mcbdcnr", "ymw", "buotommd", "ypp", "wtex", "buwrxnj", "hhqpfku", "iggiqvntn" }
            local ti = sT_16
            sT_10 = sT_24[ti % 8 + 1]
            if sT_10:len() >= sT_10:gsub("(.)", "%1%1", ti % 3 % 2 + 1):len() then
                lY = "#6ec1ff"
                lB = "#e8a34d"
                sT_19 = "#8b93a3"
                sT_9 = fn879
                lS = fn755
            else
                sT_19 = "#6ec1ff"
                lY = "#e8a34d"
                sT_9 = "#8b93a3"
                lS = fn879
                lB = fn755
            end
            sT_16 = (sT_16 + 7) % 108
        end
    elseif sT_15 <= 24 then
        if sT_15 <= 23 then
            if sT_15 <= 22 then
                local tp = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 15), string.byte(tostring(mc))), 3)
                if bit32.bxor(bit32.lrotate(bit32.bxor(tp, 1301206299), 26), 1832270676) == bit32.lrotate(tp, 26) then
                    mN = fn549
                    mc = fn892
                else
                    mc = fn549
                    mN = fn892
                end
                sT_16 = (sT_16 + 61) % 108
            else
                local tn = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 28), string.byte(tostring(m1))), 17)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tn, 1482328653), 3605240814), (bit32.bxor(bit32.band(tn, 2812638642), 3960237325))), 3605240814), 3960237325) == tn then
                    sT_13.OnNew("PlayerData", fn1036)
                    lT = fn594
                    lJ = fns.fn89
                    mH = fn345
                    l5 = fn632
                    lO = fns.fn116
                else
                    lO.OnNew("PlayerData", fn1036)
                    lJ = fn594
                    lT = fns.fn89
                    sT_13 = fn345
                    mH = fn632
                    l5 = fns.fn116
                end
                sT_16 = (sT_16 + 7) % 108
            end
        else
            if sT_16 * 85443979 + 5 + 6 >= sT_16 * 85443979 + 5 + 6 + 2 then
                mB = fn837
                lG = fns.fn24
                m1 = fn658
                l1 = fn654
            else
                m1 = fn837
                mB = fns.fn24
                l1 = fn658
                lG = fn654
            end
            sT_16 = (sT_16 + 61) % 108
        end
    elseif sT_15 <= 26 then
        if sT_15 <= 25 then
            sT_15 = {
                "kgaqvkbnff",
                "qwfpbdtuz",
                "nesekruu",
                "aefcazzzcz",
                "mtnjyewa",
                "ighktrxkcm",
                "eqhbbgxtll",
                "scqctlfmg",
                "ympze",
                "ormiijehlhsx",
                "xwhojun",
                "aov",
                "hkyijwodehop",
                "bihrbdw"
            }
            if sT_15[(sT_16 * 14 + 50) % 14 + 1] < sT_15[(sT_16 * 14 + 50) % 14 + 1] then
                mo = fn416
                mW = fns.fn212
                mK = fn280
            else
                mW = fn416
                mK = fns.fn212
                mo = fn280
            end
            sT_16 = (sT_16 + 34) % 108
        else
            sT_15 = {
                "xrjowyu",
                "ollkymzymhei",
                "dowjaifgyh",
                "tekzhw",
                "iksk",
                "voyoftgiao",
                "too",
                "jxzpyuevwiv",
                "kyczhjtfibyz",
                "eigrxvvfy",
                "xrkkdf",
                "nlzu",
                "ikjo"
            }
            if sT_15[(sT_16 * 1 + 21) % 13 + 1] <= sT_15[(sT_16 * 1 + 21) % 13 + 1] then
                sT_4 = fn414
            else
                mm = fn414
            end
            sT_16 = (sT_16 + 34) % 108
        end
    else
        local t1 = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_16, 20), string.byte(tostring(mm))), 5)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(t1, 3621335099), 803525463), (bit32.bxor(bit32.band(t1, 673632196), 3079536845))), 803525463), 3079536845) ~= t1 then
            lW = fn664
        else
            lL = fn664
        end
        sT_16 = (sT_16 + 34) % 108
    end
until (sT_16 * 55 + 5) % 108 == 3
for k, v in pairs(sT_5) do
    if v ~= sT_5.Info then
        sT_25(v)
    end
end
lz, sT_2, sT_4, mG, mz, sT_11 = nil, nil, nil, nil, nil, nil
sT_17 = 18
repeat
    sT_13 = (sT_17 * 2 + 2) % 3 + 1
    if sT_13 <= 2 then
        if sT_13 <= 1 then
            sT_13 = { "irhbqbfdtc", "lawkkoyhjw", "fkvtievk", "zmyajnkil", "ibwyabmi", "qtjl", "tqhnjutpchh" }
            local tQ = sT_17
            sT_16 = sT_13[tQ % 7 + 1]
            if sT_16:len() >= sT_16:gsub("(.)", "%1%1", tQ % 3 % 2 + 1):len() then
                sT_4 = tostring(game.JobId)
            else
                mz = tostring(game.JobId)
            end
            sT_17 = (sT_17 + 2) % 24
        else
            sT_13 = {
                "yvqrdgpobbo",
                "supcwqgxb",
                "ohdcitxi",
                "scb",
                "ynzzmu",
                "subsv",
                "uobjgiul",
                "ufp",
                "xwsxufwdoqi"
            }
            local tX = sT_17
            sT_16 = sT_13[tX % 9 + 1]
            if sT_16:len() >= sT_16:gsub("(.)", "%1%1", tX % 3 % 2 + 1):len() then
                mz = #sT_11 > 18
            else
                sT_11 = #mz > 18
            end
            sT_17 = (sT_17 + 23) % 24
        end
    else
        sT_13 = (vector.create((sT_17 * 6 + 8) % 11 + 1, (sT_17 * 4 + 6) % 13 + 1, (sT_17 * 10 + 1) % 17 + 1))
        sT_16 = (vector.create((sT_17 * 3 + 2) % 11 + 1, (sT_17 * 3 + 12) % 13 + 1, (sT_17 * 9 + 11) % 17 + 1))
        sT_25 = (vector.create((sT_17 * 2 + 4) % 11 + 1, (sT_17 * 6 + 4) % 13 + 1, (sT_17 * 4 + 7) % 17 + 1))
        sT_15 = (vector.create((sT_17 * 3 + 6) % 5 + 1, (sT_17 * 4 + 3) % 7 + 1, (sT_17 * 2 + 5) % 9 + 1))
        if vector.dot(vector.cross(sT_13, (vector.cross(sT_16, sT_25))), sT_15) == vector.dot(sT_16 * vector.dot(sT_13, sT_25) - sT_25 * vector.dot(sT_13, sT_16), sT_15) + 2 then
            mG = "Unknown"
            pcall(fns.fn187)
            sT_5 = mq.Info:AddLeftGroupbox("Account", "circle-user")
            sT_5:AddLabel(sT_2("User", lY.Name, sT_23), true)
            sT_5:AddLabel(sT_2("Status", "Keyless", sT_23), true)
            sT_5:AddLabel(sT_2("Executor", mG, sT_23), true)
            sT_19 = mq.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            sT_19:AddLabel(sT_4(my .. " [" .. tostring(game.PlaceId) .. "]", mR), true)
            sT_19:AddLabel(sT_2("Place ID", tostring(game.PlaceId), mR), true)
            lz = sT_19:AddLabel(sT_2("Session time", "0s", sT_3), true)
        else
            lz = "Unknown"
            pcall(fns.fn187)
            sT_2 = sT_5.Info:AddLeftGroupbox("Account", "circle-user")
            sT_2:AddLabel(mq("User", mR.Name, sT_3), true)
            sT_2:AddLabel(mq("Status", "Keyless", sT_3), true)
            sT_2:AddLabel(mq("Executor", lz, sT_3), true)
            sT_4 = sT_5.Info:AddLeftGroupbox("Game Info", "gamepad-2")
            sT_4:AddLabel(my(sT_23 .. " [" .. tostring(game.PlaceId) .. "]", sT_19), true)
            sT_4:AddLabel(mq("Place ID", tostring(game.PlaceId), sT_19), true)
            mG = sT_4:AddLabel(mq("Session time", "0s", lY), true)
        end
        sT_17 = (sT_17 + 20) % 24
    end
until (sT_17 * 17 + 15) % 24 == 6
if sT_11 then
    sT_17 = 0
    repeat
        local tN = bit32.rrotate(bit32.bxor(bit32.lrotate(sT_17, 13), string.byte(tostring(sT_17))), 13)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(tN, 4154348837), 226060414), (bit32.bxor(bit32.band(tN, 140618458), 2935494321))), 226060414), 2935494321) ~= tN then
            mz = string.sub(sT_11, 1, 18) .. "..."
        else
            sT_11 = string.sub(mz, 1, 18) .. "..."
        end
        sT_17 = (sT_17 + 1) % 4
    until (sT_17 * 3 + 0) % 4 == 3
end
sT_17 = sT_11 or mz
mf = nil
sT_16 = sT_17
sT_4:AddLabel(mq("Server", sT_16, sT_9), true)
sT_4:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
mf = os.clock()
task.spawn(worker)
sT_13 = sT_5.Info:AddRightGroupbox("Scripts", "package")
sT_13:AddLabel(my("Included in this hub", sT_9), true)
sT_13:AddLabel(my(sT_23, sT_19), true)
sT_11 = sT_5.Info:AddRightGroupbox("Features", "list")
sT_11:AddLabel(my("Auto Negotiate", sT_19), true)
sT_11:AddLabel(my("Auto Buy / Lower / Decline", lY), true)
sT_11:AddLabel(my("Auto Sell", sT_3), true)
sT_11:AddLabel(my("Auto Place Owned Items", sT_19), true)
sT_11:AddLabel(my("Auto Accept Offers", lY), true)
sT_11:AddLabel(my("Auto Buy Tools", sT_3), true)
sT_11:AddLabel(my("Auto Buy Stands", sT_19), true)
sT_11:AddLabel(my("Auto Buy Upgrades", lY), true)
sT_2 = sT_5.Info:AddRightGroupbox("Socials", "link")
sT_2:AddButton({ Text = "Discord", Func = mP })
sT_2:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = sT_5.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = mP })
nm = sT_5.Info:AddRightGroupbox("FAQ", "circle-help")
nm:AddLabel("Where do I get a good config?", true)
nm:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
nm:AddLabel("How do I import / export configs?", true)
nm:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
nm:AddLabel("How do I report bugs?", true)
nm:AddLabel("Join the Discord and post it in the bugs channel.", true)
nm:AddLabel("How do I make suggestions?", true)
nm:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
nm:AddLabel("How do I get help or updates?", true)
nm:AddLabel("Join the Discord, updates and support are posted there first.", true)
nl = sT_5.Deals:AddLeftGroupbox("Auto Negotiate", "handshake")
nl:AddToggle("AutoNegotiate", { Text = "Auto Negotiate", Default = false })
nl:AddSlider("NegotiateDelay", { Text = "Negotiate Delay", Default = 0.4, Min = 0.15, Max = 5, Rounding = 2 })
nl:AddSlider("DealActionDelay", { Text = "Action Delay", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2 })
sT_10 = sT_5.Deals:AddLeftGroupbox("Auto Lower", "trending-down")
sT_10:AddToggle("AutoLower", { Text = "Auto Lower", Default = false })
sT_10:AddSlider("LowerAttempts", {
    Text = "Ask This Many Times",
    Default = mV,
    Min = 1,
    Max = mV,
    Rounding = 0,
    Tooltip = "How many times to ask for a lower price before settling. Each attempt risks the seller walking away, so fewer is safer. The game allows " .. tostring(mV) .. " per deal."
})
sT_10:AddSlider("LowerTargetRatio", {
    Text = "Stop Asking At % of Value",
    Default = 95,
    Min = 50,
    Max = 200,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Stop asking once the price drops to this percent of the item's real value. 95% means haggle until it is a 5% steal, then hand over to Auto Buy. Lower is greedier and risks the seller walking."
})
sT_24 = sT_5.Deals:AddRightGroupbox("Auto Buy", "shopping-bag")
sT_24:AddToggle("AutoBuy", { Text = "Auto Buy", Default = false })
sT_24:AddToggle("BuyTrapItems", { Text = "Buy Trap Deals", Default = false })
sT_24:AddSlider("BuyMaxRatio", {
    Text = "Max % of Value",
    Default = 110,
    Min = 50,
    Max = 300,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Only buy when the asking price is at or below this percent of the item's real value (mutation and condition included). 100% = pay exactly what it is worth. Lower = only steals. 110% = Fair or better."
})
sT_24:AddInput("BuyMaxPrice", {
    Text = "Max Ask Price",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
sT_24:AddDropdown("BuyTiers", { Text = "Buy Tiers", Values = sT_20, Default = {}, Multi = true })
sT_15 = sT_5.Deals:AddRightGroupbox("Auto Decline", "circle-x")
sT_15:AddToggle("AutoDecline", { Text = "Auto Decline", Default = false })
sT_15:AddToggle("DeclineOnlyWhenOutOfLowers", { Text = "Only After Lowers Run Out", Default = true })
sT_15:AddSlider("DeclineMinRatio", {
    Text = "Decline Above % of Value",
    Default = 115,
    Min = 50,
    Max = 400,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Walk away when the price is still this percent of the item's real value or worse. 100% = anything not profitable. 115% skips Risky and Trap deals. Higher is more forgiving."
})
sT_15:AddInput("DeclineMinPrice", {
    Text = "Decline Above Price",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
sT_15:AddDropdown("DeclineTiers", { Text = "Decline Tiers", Values = sT_20, Default = {}, Multi = true })
local AutoSellGroup = sT_5.Sell:AddLeftGroupbox("Auto Sell", "banknote")
AutoSellGroup:AddToggle("AutoSellNative", { Text = "Auto Sell", Default = false })
sT_17 = GameConfig.AutoSell.DEFAULT_MIN_PROFIT_PCT or 10
sT_13, l6, l0, connection, connection2, lN = nil, nil, nil, nil, nil, nil
AutoSellGroup:AddSlider("AutoSellMinProfit", {
    Text = "Min Profit",
    Default = sT_17,
    Min = 0,
    Max = 200,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "The game's own Auto Sell only accepts buyer offers that beat this profit margin. 10% means sell at a tenth above what you paid. Higher earns more per sale but sells far less often."
})
sT_16 = sT_5.Sell:AddLeftGroupbox("Auto Place Owned Items", "package")
if ((not l0 or l6) and (l0 or not l6) or (l0 or not l6) and (l0 or l6)) and (l6 and l6 and (not l6 or l6) and (not l6 or l6 or not l0 and not l0)) and not (((not l0 or l6) and (l0 or not l6) or (l0 or not l6) and (l0 or l6)) and (l6 and l6 and (not l6 or l6) and (not l6 or l6 or not l0 and not l0))) then
    sT_13:AddToggle("AutoPlaceItems", { Text = "Auto Place Owned Items", Default = false })
    sT_13:AddToggle("PlaceDropAll", { Text = "Drop All", Default = true })
    sT_13:AddInput("PlaceMaxItems", {
        Default = "0",
        Finished = false,
        Text = "Max Items In Zone",
        Numeric = true,
        ClearTextOnFocus = false
    })
    sT_13:AddSlider("PlaceDelay", { Max = 10, Default = 1, Min = 0.2, Text = "Place Delay", Rounding = 1 })
    sT_5 = sT_16.Sell:AddRightGroupbox("Auto Accept Offers", "badge-check")
else
    sT_16:AddToggle("AutoPlaceItems", { Text = "Auto Place Owned Items", Default = false })
    sT_16:AddToggle("PlaceDropAll", { Text = "Drop All", Default = true })
    sT_16:AddInput("PlaceMaxItems", {
        Text = "Max Items In Zone",
        Default = "0",
        Numeric = true,
        Finished = false,
        ClearTextOnFocus = false
    })
    sT_16:AddSlider("PlaceDelay", { Text = "Place Delay", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
    sT_13 = sT_5.Sell:AddRightGroupbox("Auto Accept Offers", "badge-check")
end
sT_13:AddToggle("AutoAcceptOffers", { Text = "Auto Accept Offers", Default = false })
sT_13:AddToggle("DeclineBadOffers", { Text = "Decline Bad Offers", Default = true })
sT_13:AddToggle("WalkToBuyer", {
    Text = "Move To Buyer",
    Default = true,
    Tooltip = "The game only accepts your answer within " .. tostring(mO) .. " studs of the buyer, so this closes the gap before responding. Turn off only if you stay in the sell zone yourself."
})
sT_13:AddSlider("AcceptMinProfit", {
    Text = "Min Profit",
    Default = 0,
    Min = -100,
    Max = 200,
    Rounding = 0,
    Suffix = "%",
    Tooltip = "Accept a buyer only when their offer beats this profit margin, using the profit percent the game sends with the offer. 0% accepts anything at break even or better. Negative values accept losses."
})
sT_13:AddInput("AcceptMinOffer", {
    Text = "Min Offer Amount",
    Default = "0",
    Numeric = true,
    Finished = false,
    ClearTextOnFocus = false
})
sT_13:AddSlider("AcceptDelay", { Text = "Accept Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1 })
sT_4 = sT_5.Shop:AddLeftGroupbox("Auto Buy Tools", "wrench")
sT_4:AddToggle("AutoBuyTools", { Text = "Auto Buy Tools", Default = false })
sT_4:AddDropdown("ShopItems", { Text = "Tools", Values = ms, Default = {}, Multi = true })
sT_4:AddInput("ShopMaxPrice", { Text = "Max Price", Default = "0", Numeric = true, Finished = false, ClearTextOnFocus = false })
sT_4:AddSlider("ShopDelay", { Text = "Buy Delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1 })
sT_20 = sT_5.Shop:AddRightGroupbox("Auto Buy Stands", "store")
sT_20:AddToggle("AutoBuyStands", { Text = "Auto Buy Stands", Default = false })
sT_20:AddSlider("StandDelay", { Text = "Buy Delay", Default = 2, Min = 0.5, Max = 30, Rounding = 1 })
sT_11 = sT_5.Shop:AddRightGroupbox("Auto Buy Upgrades", "arrow-big-up-dash")
sT_11:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
sT_11:AddDropdown("UpgradeTypes", { Text = "Upgrades", Values = mx, Default = {}, Multi = true })
sT_11:AddSlider("UpgradeDelay", { Text = "Buy Delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1 })
sT_2 = sT_5.Settings:AddLeftGroupbox("Menu")
sT_2:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
lV.ToggleKeybind = lI.MenuKeybind
sT_2:AddButton("Unload", onUnload)
l6 = tick()
l0 = tick()
pcall(function()
    for i, v in ipairs(getconnections(mR.Idled)) do
        local sp = v
        pcall(function()
            sp:Disable()
        end)
    end
end)
lN = fn263
connection = sT_6.InputBegan:Connect(onInputBegan)
connection2 = sT_6.InputChanged:Connect(onInputChanged)
sT_2:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
lV:OnUnload(function()
    if connection then
        connection:Disconnect()
    end
    if connection2 then
        connection2:Disconnect()
    end
    for i, v in ipairs(ly) do
        local sE = v
        pcall(function()
            sE:Disconnect()
        end)
    end
end)
sT_22:SetLibrary(lV)
sT_22:SetFolder("OuroborosHub")
sT_22:SaveDefault("Monochrome")
sT_22:ApplyToTab(sT_5.Settings)
sT_22:LoadDefault()
sT_12:SetLibrary(lV)
sT_12:IgnoreThemeSettings()
sT_12:SetIgnoreIndexes({ "MenuKeybind" })
sT_12:SetFolder("OuroborosHub/Lowball")
sT_12:BuildConfigSection(sT_5.Settings)
sT_12:LoadAutoloadConfig()
task.spawn(worker2)
task.spawn(fns.worker3)
task.spawn(worker4)
task.spawn(worker5)
task.spawn(fns.worker6)
task.spawn(worker7)
task.spawn(worker8)
task.spawn(fns.worker9)
lV:Notify("Lowball loaded")
