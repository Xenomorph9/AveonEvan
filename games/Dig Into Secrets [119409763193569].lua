local ClientNet
local ms
local lO
local mv
local lR
local my
local UIManager
local lU
local MineClient
local mE
local RebirthConfig
local MessageNames
local ml
local l2
local mo
local l5
local mN
local mr
local lN
local mQ
local mx
local mT
local lT
local mA
local lW
local mD
local mG
local mk
local mJ
local mn
local l4
local mq
local lM
local Options
local TrainClient
local TrainConfig
local ma
local mS
local mV
local mz
local mg
local MineConfig
local lY
local l0
local mm
local open
local l3
local mL
local function worker2()
    while not mA.Unloaded do
        local ss = false
        local st = mx("AutoClick") and mq()
        if st then
            ss = true
        end
        local st_1 = mx("AutoEquipTraining") and mS()
        if st_1 then
            ss = true
        end
        local st_2 = mx("Auto2x") and mm()
        if st_2 then
            ss = true
        end
        local st_3 = mx("AutoSell") and mE()
        if st_3 then
            ss = true
        end
        local st_4 = mx("AutoCollectOre") and my()
        if st_4 then
            ss = true
        end
        local st_5 = mx("AutoRebirth") and lY()
        if st_5 then
            ss = true
        end
        local st_6 = mx("AutoBuyPickaxe") and lT()
        if st_6 then
            ss = true
        end
        local st_7 = mx("AutoBuyTraining") and mG()
        if st_7 then
            ss = true
        end
        local st_8 = mx("AutoBuyUpgrades") and l0()
        if st_8 then
            ss = true
        end
        local st_9 = mx("AutoHatchPets") and lR()
        if st_9 then
            ss = true
        end
        local st_10 = 0.45
        local su = mx("Auto2x") and TrainClient.isInTrain() and not TrainClient.isBoosting()
        if su then
            st_10 = 0.2
        elseif mx("AutoClick") then
            st_10 = math.max(TrainConfig.ClickCooldownSeconds, 0.05)
        elseif ss then
            st_10 = 0.25
        end
        task.wait(st_10)
    end
end
local function fn25(eq)
    local DiscordGroup = eq:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = mL })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = mL })
end
local function fn32()
    return mn
end
local function fn40(aG)
    local nM = mV[aG]
    return nM ~= nil and nM.Value == true
end
local function fn63(ar, as)
    return string.format('<font color="%s">%s</font>', as, ar)
end
local function fn68()
    if TrainClient.isInTrain() then
        return false
    end
    local p2 = os.clock()
    if p2 - mz < TrainConfig.ClickCooldownSeconds then
        return false
    end
    mz = p2
    mv(MessageNames.Train_Click)
    return true
end
local function fn73()
    local Character = l3.Character
    local nT = Character and Character:FindFirstChild("HumanoidRootPart")
    return nT
end
local function fn87()
    local n0 = rawget(_G, "PlayerData")
    local n1 = type(n0) == "table" and n0.Money ~= nil
    if n1 then
        lO = n0
        return n0
    end
    if lO and lO.Money ~= nil then
        return lO
    elseif tick() - mT < 2 then
        return lO
    else
        mT = tick()
        if getgc then
            for k, v in getgc(true) do
                local n0_2 = type(v) == "table" and rawget(v, "Money") ~= nil and rawget(v, "OwnedPickaxes") ~= nil and rawget(v, "RebirthCount") ~= nil
                if n0_2 then
                    lO = v
                    break
                end
            end
        end
        return lO
    end
end
local function fn91()
    if TrainClient.isInTrain() then
        return false
    end
    local qd = if tick() - lM < 1.5 then 1 else 0
    if qd == 1 then
        return false
    end
    local p4 = mN()
    if not p4 then
        return false
    end
    local floor2 = math.floor
    local p6 = tonumber(p4.EquippedTrainStationId) or 0
    local p7 = floor2(p6)
    if p7 <= 0 then
        local p5_1 = TrainConfig.getBestOwnedStation and TrainConfig.getBestOwnedStation(p4.OwnedTrainStations)
        local p6_1 = p5_1
        if p5_1 then
            local floor = math.floor
            local p9 = tonumber(p6_1.id) or 0
            p5_1 = floor(p9)
        end
        p7 = p5_1 or 0
        if p7 <= 0 then
            for k, v in TrainConfig.getOrderedStations() do
                local floor = math.floor
                local p6_3 = tonumber(v.id) or 0
                local p8_2 = floor(p6_3)
                local p5_3 = p8_2 > 0 and TrainConfig.isStationOwned(p4.OwnedTrainStations, p8_2)
                if p5_3 then
                    p7 = p8_2
                end
            end
        end
    end
    local p5_4 = p7 <= 0 or not TrainConfig.isStationOwned(p4.OwnedTrainStations, p7)
    if p5_4 then
        return false
    end
    lM = tick()
    mv(MessageNames.Train_Enter, { trainId = p7 })
    return true
end
local function fn104()
    local pN = mN()
    if not pN then
        return false
    end
    local pO = Options.UpgradeTypes and Options.UpgradeTypes.Value
    if type(pO) ~= "table" then
        return false
    end
    local pO_1 = tonumber(pN.Money) or 0
    local pQ = false
    local pR = pO_1
    for k, v in pO do
        if v == true then
            local pO_2 = mD[k]
            if pO_2 then
                local pP_1 = ml(pO_2, pN)
                if not mo.isMax(pO_2, pP_1) then
                    local pS = mo.getCost(pO_2, pP_1)
                    local pP_2 = type(pS) == "number" and pS > 0 and pR >= pS
                    if pP_2 then
                        mv(MessageNames.MoneyUpgrade_Request, { upgradeType = pO_2 })
                        pR -= pS
                        pQ = true
                        task.wait(0.15)
                    end
                end
            end
        end
    end
    return pQ
end
local function fn120(bX, bY)
    if #bX == 0 then
        return nil
    elseif bY == "Random" then
        return bX[math.random(1, #bX)]
    elseif bY == "Best" then
        table.sort(bX, function(bZ, b_)
            if bZ.value ~= b_.value then
                return bZ.value > b_.value
            elseif bZ.rarity ~= b_.rarity then
                return bZ.rarity > b_.rarity
            else
                return bZ.dist < b_.dist
            end
        end)
        return bX[1]
    else
        table.sort(bX, function(b0, b1)
            return b0.dist < b1.dist
        end)
        return bX[1]
    end
end
local function fn177(az, aA)
    if setclipboard then
        setclipboard(az)
    elseif toclipboard then
        toclipboard(az)
    end
    mA:Notify(aA)
end
local function fn287()
    local op = ma:FindFirstChild(MineConfig.GeneratedStagesFolder)
    local op_8
    if not op then
        return {}
    end
    local oq = mQ()
    local ot = oq and oq.Position
    local oq_1 = {}
    for i, child in op:GetChildren() do
        local op_1 = child:FindFirstChild(MineConfig.OreRuntimeFolder)
        if op_1 then
            for i, child in op_1:GetChildren() do
                if child:GetAttribute("SpawnType") == "Ore" then
                    local op_2 = tonumber(child:GetAttribute(MineConfig.OreIdAttribute)) or 0
                    local op_3 = tonumber(child:GetAttribute(MineConfig.OreSlotAttribute)) or 0
                    local op_4 = tonumber(child:GetAttribute("StageDepth")) or 0
                    if op_2 > 0 and op_3 > 0 and op_4 > 0 then
                        local op_6 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                        local ox = math.huge
                        local oy_1
                        if ot and op_6 then
                            ox = (op_6.Position - ot).Magnitude
                        end
                        oy_1, op_8 = mg(op_2)
                        oq_1[#oq_1 + 1] = { ore = child, oreId = op_2, slot = op_3, depth = op_4, dist = ox, value = oy_1, rarity = op_8 }
                    end
                end
            end
        end
    end
    return oq_1
end
local function fn311()
    local Character = l3.Character
    local nQ = Character and Character:FindFirstChildOfClass("Humanoid")
    return nQ
end
local function fn335()
    local oU = MineClient.getState()
    local oV = oU and MineClient.isBackpackFull()
    if oV then
        return false
    end
    local oV_1 = Options.CollectPriority and Options.CollectPriority.Value or "Nearest"
    local oV_2 = l5(lW(), oV_1)
    if not oV_2 then
        return false
    end
    mv(MessageNames.Mine_Collect, { oreId = oV_2.oreId, slot = oV_2.slot, depth = oV_2.depth })
    return true
end
local function fn336()
    local ps = mN()
    if not ps then
        return false
    end
    local pt = (tonumber(ps.Money))
    local pB = if pt then 1 else 0
    local pz = 3474 * pB + 3282 * (1 - pB)
    local pA = 59 * pB + 3355 * (1 - pB)
    if not ((pz * 2183 + pA * 736 + pz * pA) % 16777213 == 7832132) then
        pt = 0
    end
    local pu = pt
    local pt_1 = (tonumber(ps.RebirthCount))
    local pB_1 = if pt_1 then 1 else 0
    local pz_1 = 1393 * pB_1 + 1798 * (1 - pB_1)
    local pA_1 = 3833 * pB_1 + 840 * (1 - pB_1)
    if not ((pz_1 * 1754 + pA_1 * 3560 + pz_1 * pA_1) % 16777213 == 4650958) then
        pt_1 = 0
    end
    local pv = pt_1
    local OwnedTrainStations = ps.OwnedTrainStations
    local pw
    for k, v in TrainConfig.getOrderedStations() do
        local ps_1 = tonumber(v.id) or 0
        local ps_2 = ps_1 > 0 and not TrainConfig.isStationOwned(OwnedTrainStations, ps_1)
        if ps_2 then
            local ps_3 = TrainConfig.resolveCashBuyAction(v, pu, pv)
            if ps_3 == "cash" then
                if not pw or ps_1 < pw.id then
                    pw = { id = ps_1 }
                end
            end
        end
    end
    if not pw then
        return false
    end
    mv(MessageNames.Train_BuyCash, { trainId = pw.id })
    task.wait(0.2)
    mv(MessageNames.Train_Equip, { trainId = pw.id })
    return true
end
local function fn437()
    l4(mk, "Copied Discord invite to clipboard")
end
local function fn451(cT, cU)
    if cT == mo.TypePetEquip then
        local pI_1 = tonumber(cU.CashPetCarryExpandCount) or 0
        return pI_1
    elseif cT == mo.TypeStorage then
        return mo.getStorageLevel(tonumber(cU.MineBackpackCapacity))
    elseif cT == mo.TypeWalkSpeed then
        local pI_2 = tonumber(cU.WalkSpeedUpgradeCount) or 0
        return pI_2
    elseif cT == mo.TypeSellPrice then
        local pI_3 = tonumber(cU.SellPriceUpgradeCount) or 0
        return pI_3
    else
        return 0
    end
end
local function fn574()
    pcall(function()
        if UIManager.isOpen("OpenPetEgg") then
            UIManager.close("OpenPetEgg")
        end
    end)
    mv(MessageNames.Mine_EggOpenFinished)
    pcall(function()
        if _G.ClientEventBus and _G.ClientEventBus.emit then
            _G.ClientEventBus.emit("OpenPetEgg_Closed")
        end
    end)
end
local function fn584()
    local qt = if not TrainClient.isInTrain() then 1 else 0
    if qt == 1 then
        return false
    elseif TrainClient.isBoosting() then
        return false
    elseif tick() - ms < 0.2 then
        return false
    else
        ms = tick()
        mv(MessageNames.Train_ClaimTip)
        return true
    end
end
local function fn612(bw)
    local oj = MineConfig.OreDefs[bw]
    if not oj then
        return 0, 0
    end
    local ol = tonumber(oj.value) or 0
    local om = tonumber(oj.rarity) or 0
    return ol, om
end
local function fn699(au, av, aw)
    return string.format("<b>%s</b> %s %s", au, mJ("-", "#5a6070"), mJ(av, aw))
end
local function fn729()
    local pf = mN()
    if not pf then
        return false
    end
    local pg = tonumber(pf.Money) or 0
    local OwnedPickaxes = pf.OwnedPickaxes
    local pi
    for k, v in MineConfig.PickaxeDefs do
        local pf_1 = tonumber(k) or tonumber(v.id)
        local pj = pf_1
        if pf_1 then
            pf_1 = pj >= 1001
        end
        if pf_1 then
            pf_1 = MineConfig.canBuyPickaxeWithCash(v)
        end
        if pf_1 then
            pf_1 = not l2(OwnedPickaxes, pj)
        end
        if pf_1 then
            local pf_2 = tonumber(v.priceCash) or 0
            if pg >= pf_2 then
                if not pi or pj < pi.id then
                    pi = { id = pj, price = pf_2 }
                end
            end
        end
    end
    if not pi then
        return false
    end
    mv(MessageNames.Pickaxe_BuyCash, { pickaxeId = pi.id })
    task.wait(0.2)
    mv(MessageNames.Pickaxe_Equip, { pickaxeId = pi.id })
    return true
end
local function worker()
    while mA and not mA.Unloaded do
        mr()
        task.wait(1)
    end
end
local function fn747()
    local o8 = mN()
    if not o8 then
        return false
    end
    local o9 = tonumber(o8.TotalExp) or tonumber(o8.Power)
    local pa = o9 or 0
    local pa_1 = select(1, TrainConfig.getLevelProgress(pa))
    local o9_2 = tonumber(o8.RebirthCount) or 0
    local o9_3 = RebirthConfig.getRequiredLevel(o9_2)
    local o8_2 = type(pa_1) ~= "number" or type(o9_3) ~= "number"
    if o8_2 then
        return false
    elseif pa_1 < o9_3 then
        return false
    else
        mv(MessageNames.Rebirth_Request)
        return true
    end
end
local function fn781(ba, bb)
    if type(ba) ~= "table" then
        return false
    end
    for k, v in ba do
        if tonumber(v) == bb then
            return true
        end
    end
    return false
end
local function fn809()
    local o_ = MineClient.getState()
    if not o_ then
        return false
    end
    local o0 = false
    if #(o_.inventory or {}) > 0 then
        mv(MessageNames.Mine_Return)
        o0 = true
        task.wait(0.35)
        o_ = MineClient.getState()
    end
    local o1_1 = o_
    if o1_1 then
        o1_1 = #(o_.voidChestInventory or {}) > 0
    end
    if o1_1 then
        mv(MessageNames.Mine_Sell)
        o0 = true
    end
    return o0
end
local function fn828(dJ, ...)
    if dJ == "OpenPetEgg" and mV.RemoveHatchAnimation and mV.RemoveHatchAnimation.Value then
        task.defer(lU)
        return nil
    end
    return open(dJ, ...)
end
local function fn848(aT, aU, aV)
    local nY = rawget(_G, "ClientNet") or ClientNet
    local nZ = nY
    if nY then
        nY = nZ.send
    end
    if not nY then
        return
    end
    nZ.send(aT, aU, aV)
end
local function fn886(br, bs)
    return br.id < bs.id
end
lM = nil
lN = nil
lO = nil
TrainClient = nil
lR = nil
lT = nil
lU = nil
lW = nil
MineClient = nil
lY = nil
l0 = nil
l2 = nil
l3 = nil
l4 = nil
l5 = nil
ClientNet = nil
ma = nil
mg = nil
RebirthConfig = nil
mk = nil
ml = nil
mm = nil
mn = nil
mo = nil
mq = nil
mr = nil
ms = nil
mv = nil
TrainConfig = nil
local lK, lL, lQ, lS, lV, lZ, l_, l1, l7, l8, l9, mb, mc, md, Pets, mf, mh, mj, mp, mt, mu
mx = nil
my = nil
mz = nil
mA = nil
MineConfig = nil
mD = nil
mE = nil
mG = nil
MessageNames = nil
open = nil
mJ = nil
mL = nil
local mM
mN = nil
Options = nil
mQ = nil
mS = nil
mT = nil
UIManager = nil
mV = nil
local mB, mF, RunService, mO, mR
local ReplicatedStorage, mX_2
local mY_3, mY_4
local mZ_7
lK, ReplicatedStorage, RunService, mF, mB, mu, mn, mh, md, ma, l3, lV, lN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mW = 11
repeat
    local mY_1 = (mW * 5 + 4) % 6 + 1
    if mY_1 <= 3 then
        if mY_1 <= 2 then
            if mY_1 <= 1 then
                local mZ_1 = {
                    "rkyvg",
                    "obu",
                    "cfxtcmlum",
                    "jjfomhmpvwp",
                    "cfuct",
                    "puelroqbhj",
                    "hzwvmvnhym",
                    "nvwqkhr",
                    "zmjcwjfosn",
                    "zuqypbgcykn",
                    "ijrqrigs"
                }
                local uW = mW
                local m__1 = mZ_1[uW % 11 + 1]
                if m__1:len() <= m__1:gsub("(.)", "%1%1", uW % 3 % 2 + 1):len() then
                    ReplicatedStorage = game:GetService("ReplicatedStorage")
                else
                    ma = game:GetService("ReplicatedStorage")
                end
                mW = (mW + 5) % 48
            else
                local mZ_2 = (vector.create((mW * 7 + 3) % 11 + 1, (mW * 7 + 10) % 13 + 1, (mW * 6 + 11) % 17 + 1))
                local m__2 = (vector.create((mW * 7 + 1) % 11 + 1, (mW * 6 + 9) % 13 + 1, (mW * 1 + 11) % 17 + 1))
                local m0_1 = (vector.create((mW * 4 + 2) % 5 + 1, (mW * 2 + 6) % 7 + 1, (mW * 1 + 1) % 9 + 1))
                if math.abs((vector.angle(mZ_2, m__2, m0_1))) - math.abs((vector.angle(m__2, mZ_2, m0_1))) == 0 then
                    RunService = game:GetService("RunService")
                else
                    lV = game:GetService("RunService")
                end
                mW = (mW + 29) % 48
            end
        else
            local mZ_3 = (vector.create((mW * 7 + 9) % 11 + 1, (mW * 11 + 12) % 13 + 1, (mW * 7 + 15) % 17 + 1))
            local m__3 = (vector.create((mW * 3 + 7) % 11 + 1, (mW * 8 + 2) % 13 + 1, (mW * 10 + 2) % 17 + 1))
            local uI = vector.cross(mZ_3, m__3)
            local uJ = vector.dot(mZ_3, m__3)
            if vector.dot(uI, uI) + uJ * uJ == vector.dot(mZ_3, mZ_3) * vector.dot(m__3, m__3) then
                mF = game:GetService("UserInputService")
                mB = game:GetService("VirtualUser")
                mu = game:GetService("HttpService")
                mn = game:GetService("CoreGui")
                mh = game:GetService("GuiService")
            else
                mB = game:GetService("UserInputService")
                mu = game:GetService("VirtualUser")
                mF = game:GetService("HttpService")
                mh = game:GetService("CoreGui")
                mn = game:GetService("GuiService")
            end
            mW = (mW + 23) % 48
        end
    elseif mY_1 <= 5 then
        if mY_1 <= 4 then
            local ul = bit32.rrotate(bit32.bxor(bit32.lrotate(mW, 28), string.byte(tostring(ReplicatedStorage))), 30)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ul, 4113207167), 20), 4160705192) ~= bit32.lrotate(ul, 20) then
                lK = game:GetService("TeleportService")
                md = game:GetService("Workspace")
                lV = ma.LocalPlayer
                l3 = lV:WaitForChild("PlayerGui")
            else
                md = game:GetService("TeleportService")
                ma = game:GetService("Workspace")
                l3 = lK.LocalPlayer
                lV = l3:WaitForChild("PlayerGui")
            end
            mW = (mW + 23) % 48
        else
            local mY_2 = (vector.create((mW * 4 + 3) % 11 + 1, (mW * 1 + 11) % 13 + 1, (mW * 14 + 16) % 17 + 1))
            local t0 = vector.floor(mY_2) + vector.ceil(mY_2 * -1)
            if vector.dot(t0, t0) == 3 then
                mh = fn32
            else
                lN = fn32
            end
            mW = (mW + 17) % 48
        end
    else
        if mW * 63432867 + 10 + 6 <= mW * 63432867 + 10 + 6 + 1 then
            lK = game:GetService("Players")
        else
            mu = game:GetService("Players")
        end
        mW = (mW + 23) % 48
    end
until (mW * 13 + 41) % 48 == 16
if getgenv then
    mM, mY_3 = nil, nil
    local mW_1 = 1
    repeat
        if (mW_1 * 1 + 0) % 2 + 1 <= 1 then
            local ub = bit32.rrotate(bit32.bxor(bit32.lrotate(mW_1, 11), string.byte(tostring(mM))), 12)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ub, 206842257), 2651209267), (bit32.bxor(bit32.band(ub, 4088125038), 1322390266))), 2651209267), 1322390266) ~= ub then
                mM = mY_3
            else
                mY_3 = mM
            end
            mW_1 = (mW_1 + 5) % 8
        else
            local mZ_5 = {
                "lkl",
                "jjlijtrj",
                "qzjjdcaf",
                "rpshlf",
                "nthxwsi",
                "nqwfkousbs",
                "hzum",
                "mqxm",
                "gdhykchsnph",
                "qno",
                "fvfth"
            }
            local ui = mW_1
            local m__4 = mZ_5[ui % 11 + 1]
            if m__4:len() <= m__4:reverse():rep(ui % 3 + 2):len() then
                getgenv().gethui = lN
                mM = getgenv().__OuroborosDigIntoSecretsLib
            else
                getgenv().gethui = mM
                lN = getgenv().__OuroborosDigIntoSecretsLib
            end
            mW_1 = (mW_1 + 7) % 8
        end
    until (mW_1 * 7 + 5) % 8 == 0
    if mY_3 then
        mY_3 = mM.Unload
    end
    if mY_3 then
        pcall(function()
            mM:Unload()
        end)
    end
end
pcall(function()
    gethui = lN
end)
if setthreadidentity then
    setthreadidentity(8)
end
mp, mk, mf, mc, l9, l1, lS, lL, mR, MessageNames, MineConfig, TrainConfig, mo, RebirthConfig, Pets, ClientNet, MineClient, TrainClient, UIManager, mO, open, mA = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not mo or mo) and (not ClientNet or not UIManager) and (UIManager or mo or not UIManager and not UIManager) and (mO and not UIManager or not mO and not mo or (not mO and not mO or (not mo or not UIManager))) and not ((not mo or mo) and (not ClientNet or not UIManager) and (UIManager or mo or not UIManager and not UIManager) and (mO and not UIManager or not mO and not mo or (not mO and not mO or (not mo or not UIManager)))) then
    mk = "Dig Into Secrets!"
    mp = "https://discord.gg/ehKVq7pf7v"
    mc = "https://rscripts.net/@Ouroboros"
    mf = "https://ouroboros-hub-rbx.web.app/"
else
    mp = "Dig Into Secrets!"
    mk = "https://discord.gg/ehKVq7pf7v"
    mf = "https://rscripts.net/@Ouroboros"
    mc = "https://ouroboros-hub-rbx.web.app/"
end
l9 = "#7fd47f"
l1 = "#6ec1ff"
lS = "#e8a34d"
lL = "#8b93a3"
mR = "#e05a5a"
local Shared = ReplicatedStorage:WaitForChild("Shared")
MessageNames = require(Shared:WaitForChild("Net"):WaitForChild("MessageNames"))
MineConfig = require(Shared:WaitForChild("Config"):WaitForChild("MineConfig"))
TrainConfig = require(Shared:WaitForChild("Config"):WaitForChild("TrainConfig"))
mo = require(Shared:WaitForChild("Config"):WaitForChild("UpgradeConfig"))
RebirthConfig = require(Shared:WaitForChild("Config"):WaitForChild("RebirthConfig"))
Pets = require(Shared:WaitForChild("Config"):WaitForChild("Pets"))
local Client = l3:WaitForChild("PlayerScripts"):WaitForChild("Client")
ClientNet = require(Client:WaitForChild("Net"):WaitForChild("ClientNet"))
MineClient = require(Client:WaitForChild("Common"):WaitForChild("MineClient"))
TrainClient = require(Client:WaitForChild("Common"):WaitForChild("TrainClient"))
UIManager = require(Client:WaitForChild("UI"):WaitForChild("Module"):WaitForChild("UIManager"))
mO = {}
open = UIManager.open
local m__5 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
mA = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if getgenv then
    getgenv().__OuroborosDigIntoSecretsLib = mA
end
lZ, lQ, mV, Options, lO, mT, mZ_7, mD, mY_4, mX_2, mj, mr, mJ, mt, l4, mL, mx, l8, mQ, mv, mN, l2 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local mW_3 = 45
repeat
    local m0_2 = (mW_3 * 3 + 6) % 7 + 1
    if m0_2 <= 4 then
        if m0_2 <= 2 then
            if m0_2 <= 1 then
                local m1_1 = (vector.create((mW_3 * 5 + 7) % 11 + 1, (mW_3 * 11 + 10) % 13 + 1, (mW_3 * 12 + 6) % 17 + 1))
                local m2_1 = (vector.create((mW_3 * 6 + 1) % 11 + 1, (mW_3 * 10 + 11) % 13 + 1, (mW_3 * 8 + 11) % 17 + 1))
                local m3 = (vector.create((mW_3 * 1 + 2) % 11 + 1, (mW_3 * 10 + 13) % 13 + 1, (mW_3 * 10 + 15) % 17 + 1))
                local m4_1 = (vector.create((mW_3 * 7 + 7) % 11 + 1, (mW_3 * 11 + 11) % 13 + 1, (mW_3 * 9 + 5) % 17 + 1))
                if vector.dot(vector.cross(m1_1, m2_1), (vector.cross(m3, m4_1))) == vector.dot(m1_1, m3) * vector.dot(m2_1, m4_1) - vector.dot(m1_1, m4_1) * vector.dot(m2_1, m3) + 3 then
                    mj = { ["Walk Speed"] = true, ["Pet Equip"] = true, ["Sell Price"] = true, Storage = true }
                    mY_4 = {}
                    mX_2 = {}
                else
                    mY_4 = { ["Pet Equip"] = true, Storage = true, ["Walk Speed"] = true, ["Sell Price"] = true }
                    mX_2 = {}
                    mj = {}
                end
                mW_3 = (mW_3 + 47) % 56
            else
                local m1_2 = { "tqsa", "tkggmpqh", "dhtyilhfmqj", "rbsxf", "paxq", "lauuer", "nwh", "lnghr", "iju" }
                local uo = mW_3
                local m2_2 = m1_2[uo % 9 + 1]
                if m2_2:len() <= m2_2:gsub("(.)", "%1%1", uo % 3 % 2 + 1):len() then
                    mr = function()
                        local function nw(W)
                            local nr = not W or not W:IsA("ScreenGui")
                            if nr then
                                return
                            end
                            W.ResetOnSpawn = false
                            W.IgnoreGuiInset = true
                            W.DisplayOrder = math.max(W.DisplayOrder, 1000)
                            pcall(function()
                                W.ClipToDeviceSafeArea = false
                            end)
                            pcall(function()
                                W.ScreenInsets = Enum.ScreenInsets.None
                            end)
                            if W.Parent ~= mn then
                                W.Parent = mn
                            end
                        end
                        nw(mA.ScreenGui)
                        if mA.ActiveLoading and mA.ActiveLoading.ScreenGui then
                            nw(mA.ActiveLoading.ScreenGui)
                        end
                        for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
                            local nx_2 = mn:FindFirstChild(v) or lV:FindFirstChild(v)
                            if nx_2 then
                                nw(nx_2)
                            end
                        end
                    end
                    mr()
                    task.spawn(worker)
                    lZ = loadstring(game:HttpGet(m__5 .. "addons/ThemeManager.lua"))()
                    lQ = loadstring(game:HttpGet(m__5 .. "addons/SaveManager.lua"))()
                else
                    lQ = function()
                        local function nw(W)
                            local nr = not W or not W:IsA("ScreenGui")
                            if nr then
                                return
                            end
                            W.ResetOnSpawn = false
                            W.IgnoreGuiInset = true
                            W.DisplayOrder = math.max(W.DisplayOrder, 1000)
                            pcall(function()
                                W.ClipToDeviceSafeArea = false
                            end)
                            pcall(function()
                                W.ScreenInsets = Enum.ScreenInsets.None
                            end)
                            if W.Parent ~= mn then
                                W.Parent = mn
                            end
                        end
                        nw(mA.ScreenGui)
                        if mA.ActiveLoading and mA.ActiveLoading.ScreenGui then
                            nw(mA.ActiveLoading.ScreenGui)
                        end
                        for i, v in ipairs({ "Obsidian", "ObsidianLoading" }) do
                            local nx_1 = mn:FindFirstChild(v) or lV:FindFirstChild(v)
                            if nx_1 then
                                nw(nx_1)
                            end
                        end
                    end
                    lQ()
                    task.spawn(worker)
                    mr = loadstring(game:HttpGet(lZ .. "addons/ThemeManager.lua"))()
                    m__5 = loadstring(game:HttpGet(lZ .. "addons/SaveManager.lua"))()
                end
                mW_3 = (mW_3 + 12) % 56
            end
        elseif m0_2 <= 3 then
            local m1_3 = {
                "wgnzzeclfg",
                "jhowtujolak",
                "ttcuiknoo",
                "umebnccmug",
                "hybneswzizg",
                "mnmomwvrkv",
                "dkyzwkbhx",
                "mghvz",
                "havqpwnjo"
            }
            local t_ = mW_3
            local m2_3 = m1_3[t_ % 9 + 1]
            if m2_3:len() <= m2_3:gsub("(.)", "%1%1", t_ % 3 % 2 + 1):len() then
                mV = mA.Toggles
                Options = mA.Options
            else
                mA = Options.Toggles
                mV = Options.Options
            end
            mW_3 = (mW_3 + 12) % 56
        else
            local m1_4 = {
                "ossmehysqr",
                "spgnl",
                "gii",
                "qhbzfegnboi",
                "voswhloyhbu",
                "pzmlot",
                "jmhoglfnq",
                "lws",
                "lrsimdzbxx"
            }
            local u4 = mW_3
            local m2_4 = m1_4[u4 % 9 + 1]
            if m2_4:len() <= m2_4:gsub("(.)", "%1%1", u4 % 3 % 2 + 1):len() then
                mJ = fn63
            else
                mY_4 = fn63
            end
            mW_3 = (mW_3 + 26) % 56
        end
    elseif m0_2 <= 6 then
        if m0_2 <= 5 then
            if (mW_3 * 2 + 9) * 7 % 3 == ((mW_3 * 2 + 9) * 7 + 6) % 3 then
                mt = fn699
                l4 = fn177
                mL = fn437
            else
                mL = fn699
                mt = fn177
                l4 = fn437
            end
            mW_3 = (mW_3 + 19) % 56
        else
            if (mW_3 * 1 + 3) * 21 % 4 == ((mW_3 * 1 + 3) * 21 + 5) % 4 then
                lO = fn40
                mx = fn311
                mv = fn73
                mQ = fn848
                l8 = nil
            else
                mx = fn40
                l8 = fn311
                mQ = fn73
                mv = fn848
                lO = nil
            end
            mW_3 = (mW_3 + 5) % 56
        end
    else
        if (not mV or not mV) and (mV or not mV) and (l2 or not mV or (mV or l2)) or not ((not mV or not mV) and (mV or not mV) and (l2 or not mV or (mV or l2))) then
            mT = 0
            mN = fn87
            l2 = fn781
            mZ_7 = { "Pet Equip", "Storage", "Walk Speed", "Sell Price" }
            mD = {
                ["Pet Equip"] = mo.TypePetEquip,
                Storage = mo.TypeStorage,
                ["Walk Speed"] = mo.TypeWalkSpeed,
                ["Sell Price"] = mo.TypeSellPrice
            }
        else
            mD = 0
            l2 = fn87
            mN = fn781
            mo = { "Pet Equip", "Storage", "Sell Price", "Walk Speed" }
            mT = {
                Storage = mZ_7.TypeStorage,
                ["Walk Speed"] = mZ_7.TypeWalkSpeed,
                ["Pet Equip"] = mZ_7.TypePetEquip,
                ["Sell Price"] = mZ_7.TypeSellPrice
            }
        end
        mW_3 = (mW_3 + 26) % 56
    end
until (mW_3 * 55 + 28) % 56 == 4
local m0_3 = {}
for k, v in Pets.getStoreIds() do
    local mW_4 = Pets.getStoreData(v)
    if mW_4 and not mW_4.robuxOnly then
        local m__7 = MineConfig.EggDefs[v]
        local m__8 = m__7 and m__7.name
        if not m__8 then
            if v == 1001 then
                m__8 = "Basic Egg"
            elseif v == 1002 then
                m__8 = "Crystal Egg"
            else
                m__8 = "Egg " .. tostring(v)
            end
        end
        local m1_6 = #m0_3 + 1
        local m2_5 = tonumber(mW_4.price) or 0
        m0_3[m1_6] = { id = v, name = m__8, price = m2_5 }
    end
end
table.sort(m0_3, fn886)
for k, v in m0_3 do
    mX_2[#mX_2 + 1] = v.name
    mj[v.name] = v.id
end
mz, lM, ms, l7, l_, mb, mg, lW, l5, my, mE, lY, lT, mG, ml, l0, mq, mS, mm, lU, lR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
mg = fn612
lW = fn287
l5 = fn120
my = fn335
mE = fn809
lY = fn747
lT = fn729
mG = fn336
ml = fn451
l0 = fn104
mz = 0
mq = fn68
lM = 0
mS = fn91
ms = 0
mm = fn584
lU = fn574
UIManager.open = fn828
l7 = false
l_ = 0
lR = function()
    local qD
    if l7 then
        return false
    end
    qD = mx("RemoveHatchAnimation")
    local qF = qD and 0.35 or 1.2
    if tick() - l_ < qF then
        return false
    end
    local qE_2 = mN()
    if not qE_2 then
        return false
    end
    local qF_1 = Options.HatchEgg and Options.HatchEgg.Value
    local qG = qF_1
    if qF_1 then
        qF_1 = mj[qG]
    end
    local qG_1 = qF_1
    if not qG_1 then
        return false
    end
    local qF_2 = Pets.getStoreData(qG_1)
    if not qF_2 or qF_2.robuxOnly then
        return false
    end
    local qH_3 = (Options.HatchAmount and Options.HatchAmount.Value or "1") == "3" and 3 or 1
    local qH_4 = (tonumber(qF_2.price))
    local qM = if qH_4 then 1 else 0
    local qK = 777 * qM + 1912 * (1 - qM)
    local qL = 894 * qM + 4066 * (1 - qM)
    if not ((qK * 2793 + qL * 3041 + qK * qL) % 16777213 == 5583453) then
        qH_4 = 0
    end
    local qF_3 = qH_4
    local qH_5 = tonumber(qE_2.Money) or 0
    if qH_5 < qF_3 * qH_3 then
        return false
    end
    l7 = true
    l_ = tick()
    if qH_3 == 3 then
        mv(MessageNames.BuyEgg, { count = 3, storeId = qG_1, isAuto = true }, true)
    else
        mv(MessageNames.BuyEgg, { storeId = qG_1, isAuto = true }, true)
    end
    local delay = task.delay
    local qG_2 = qD and 0.15 or 0.8
    delay(qG_2, function()
        pcall(function()
            if qD then
                lU()
            else
                mv(MessageNames.Mine_EggOpenFinished)
            end
        end)
        l7 = false
    end)
    return true
end
local m__9 = mA:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = mk, Copyable = true }, "|", mp },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
mb = {
    Info = m__9:AddTab("Info", "info"),
    Main = m__9:AddTab("Main", "pickaxe"),
    Player = m__9:AddTab("Player", "person-standing"),
    Settings = m__9:AddTab("Settings", "settings")
}
for k, v in mb do
    if k ~= "Info" then
        fn25(v)
    end
end
local MiningGroup = mb.Main:AddLeftGroupbox("Mining", "mountain")
MiningGroup:AddToggle("AutoCollectOre", { Text = "Auto Collect Ore", Default = false })
MiningGroup:AddDropdown("CollectPriority", { Text = "Priority", Values = { "Nearest", "Random", "Best" }, Default = "Nearest" })
MiningGroup:AddToggle("AutoClick", { Text = "Auto Click", Default = false })
MiningGroup:AddToggle("AutoEquipTraining", { Text = "Auto Equip Training", Default = false })
MiningGroup:AddToggle("Auto2x", { Text = "Auto 2x", Default = false })
local EconomyGroup = mb.Main:AddLeftGroupbox("Economy", "coins")
EconomyGroup:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
EconomyGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
local m__10 = mb.Main:AddRightGroupbox("Shop", "store")
m__10:AddToggle("AutoBuyPickaxe", { Text = "Auto Buy Pickaxe", Default = false })
m__10:AddToggle("AutoBuyTraining", { Text = "Auto Buy Training", Default = false })
m__10:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
m__10:AddDropdown("UpgradeTypes", { Text = "Upgrades", Values = mZ_7, Default = mY_4, Multi = true })
local PetsGroup = mb.Main:AddRightGroupbox("Pets", "paw-print")
PetsGroup:AddToggle("AutoHatchPets", { Text = "Auto Hatch Pets", Default = false })
PetsGroup:AddToggle("RemoveHatchAnimation", { Text = "Remove Hatch Animation", Default = false })
PetsGroup:AddDropdown("HatchEgg", { Text = "Egg", Values = mX_2, Default = mX_2[1] })
PetsGroup:AddDropdown("HatchAmount", { Text = "Amount", Values = { "1", "3" }, Default = "1" })
local function m4_2()
    local rC
    local rw
    rw = nil
    rC = nil
    local Label, Label2, Label3, rA, rB
    local function rD()
        local qN = hookfunction ~= nil
        local qO = hookmetamethod ~= nil
        local qP = getrawmetatable ~= nil
        local qQ = setrawmetatable ~= nil
        local qR = getgc ~= nil
        local qS = getgenv ~= nil
        local qT = getreg ~= nil
        local qU = getconnections ~= nil
        local qV = firesignal ~= nil
        local qW = getcallbackvalue ~= nil
        local qX = setclipboard ~= nil
        local qY = getcustomasset ~= nil
        local qZ = getnamecallmethod ~= nil
        local q_ = isexecutorclosure ~= nil
        local q0 = fireproximityprompt ~= nil
        local q1 = firetouchinterest ~= nil
        local q2 = WebSocket ~= nil
        local q3 = readfile ~= nil
        local q4 = writefile ~= nil
        local q6 = (request or http_request) ~= nil
        local q8 = (debug and debug.getupvalues) ~= nil
        local ra = (debug and debug.setupvalue) ~= nil
        local rb = 0
        local rc = { qN, qO, qP, qQ, qR, qS, qT, qU, qV, qW, qX, qY, qZ, q_, q0, q1, q2, q3, q4, q6, q8, ra }
        for i, v in ipairs(rc) do
            if v then
                rb += 1
            end
        end
        local qN_1 = rb / #rc
        if qN_1 >= 0.9 then
            return mJ("Full Support", l9)
        elseif qN_1 >= 0.6 then
            return mJ("Half Support", lS)
        else
            return mJ("Low Support", mR)
        end
    end
    rC = "Unknown"
    pcall(function()
        local rl_1
        local rk_1
        if identifyexecutor then
            rl_1, rk_1 = identifyexecutor()
            local rm = rl_1 ~= ""
            local rn = type(rl_1) == "string" and rm
            if rn then
                local rm_1 = type(rk_1) == "string" and rk_1 ~= "" and rl_1 .. " " .. rk_1
                rC = rm_1 or rl_1
            end
        end
    end)
    local rE = rD()
    rw = os.clock()
    rA = function()
        local rp = math.floor(os.clock() - rw)
        if rp < 60 then
            return rp .. "s"
        elseif rp < 3600 then
            return string.format("%dm %ds", rp // 60, rp % 60)
        else
            return string.format("%dh %dm", rp // 3600, rp % 3600 // 60)
        end
    end
    local UserGroup = mb.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = l3, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(mt("User", l3.DisplayName .. " @" .. l3.Name, l9), true)
    UserGroup:AddLabel(mt("UserId", tostring(l3.UserId), l1), true)
    UserGroup:AddLabel(mt("Executor", rC .. "  " .. rE, l9), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(mt("Session", rA(), lS), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            l4(l3.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            l4("https://www.roblox.com/users/" .. tostring(l3.UserId) .. "/profile", "Copied profile link")
        end
    })
    local SessionGroup = mb.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddDivider("Server")
    SessionGroup:AddLabel(mt("Game", mp, l1), true)
    Label2 = SessionGroup:AddLabel(mt("Players", "0/0", l9), true)
    rB = tostring(game.JobId)
    local rE_1 = #rB > 18 and string.sub(rB, 1, 18) .. "..."
    local rE_2 = rE_1 or rB
    SessionGroup:AddLabel(mt("Job", rE_2, lL), true)
    Label = SessionGroup:AddLabel(mt("Ping", "0 ms", lS), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Server",
        Func = function()
            md:Teleport(game.PlaceId, l3)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            l4(rB, "Copied Job ID")
        end
    })
    task.spawn(function()
        local rs_1
        local rr_1
        while true do
            task.wait(1)
            if mA.Unloaded then
                break
            end
            Label3:SetText(mt("Session", rA(), lS))
            Label2:SetText(mt("Players", #lK:GetPlayers() .. "/" .. tostring(lK.MaxPlayers), l9))
            rr_1, rs_1 = pcall(function()
                return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local rr_2 = rr_1 and rs_1 .. " ms" or "n/a"
            Label:SetText(mt("Ping", rr_2, lS))
        end
    end)
    local SocialsGroup = mb.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = mL })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            if setclipboard then
                setclipboard(mf)
            elseif toclipboard then
                toclipboard(mf)
            end
            mA:Notify("Copied Rscripts profile to clipboard")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            l4(mc, "Copied website link")
        end
    })
end
local function m5()
    local MovementGroup = mb.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = mb.Player:AddRightGroupbox("Fly", "feather")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    local connection
    local function fR(fS)
        pcall(function()
            mh:SetGameplayPausedNotificationEnabled(not fS)
        end)
        pcall(function()
            local RobloxNetworkPauseNotificati = mn:FindFirstChild("RobloxNetworkPauseNotification")
            if RobloxNetworkPauseNotificati then
                RobloxNetworkPauseNotificati.Enabled = not fS
            end
        end)
        if not fS then
            return
        end
        pcall(function()
            if sethiddenproperty then
                sethiddenproperty(l3, "GameplayPaused", false)
            else
                l3.GameplayPaused = false
            end
        end)
    end
    local function f4(f5)
        if not f5:IsA("ProximityPrompt") then
            return
        end
        f5.HoldDuration = 0
        f5.MaxActivationDistance = 50
        f5.RequiresLineOfSight = false
    end
    RunService.Stepped:Connect(function()
        if mA.Unloaded then
            return
        end
        local rW = if mx("NoClip") then 1 else 0
        if rW == 1 then
            local Character = l3.Character
            if Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    local rM_1 = descendant:IsA("BasePart") and descendant.CanCollide
                    if rM_1 then
                        descendant.CanCollide = false
                    end
                end
            end
        end
    end)
    mF.JumpRequest:Connect(function()
        if mA.Unloaded then
            return
        end
        if mx("InfJump") then
            local rX = l8()
            if rX then
                rX:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end
    end)
    RunService.RenderStepped:Connect(function(gm)
        if mA.Unloaded then
            return
        end
        if mx("WalkSpeedEnabled") then
            local rZ_1 = l8()
            local r__1 = Options.WalkSpeed
            if rZ_1 and r__1 then
                rZ_1.WalkSpeed = r__1.Value
            end
        end
        if mx("Fly") then
            local rZ_2 = mQ()
            local r__2 = l8()
            local FlySpeed = Options.FlySpeed
            local CurrentCamera = ma.CurrentCamera
            if rZ_2 and r__2 and FlySpeed and CurrentCamera then
                r__2.PlatformStand = true
                local r__3 = Vector3.zero
                if mF:IsKeyDown(Enum.KeyCode.W) then
                    r__3 += CurrentCamera.CFrame.LookVector
                end
                if mF:IsKeyDown(Enum.KeyCode.S) then
                    r__3 -= CurrentCamera.CFrame.LookVector
                end
                if mF:IsKeyDown(Enum.KeyCode.A) then
                    r__3 -= CurrentCamera.CFrame.RightVector
                end
                if mF:IsKeyDown(Enum.KeyCode.D) then
                    r__3 += CurrentCamera.CFrame.RightVector
                end
                local r7 = if mF:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                if r7 == 1 then
                    r__3 += Vector3.new(0, 1, 0)
                end
                if mF:IsKeyDown(Enum.KeyCode.LeftControl) then
                    r__3 -= Vector3.new(0, 1, 0)
                end
                rZ_2.Velocity = Vector3.zero
                if r__3.Magnitude > 0 then
                    rZ_2.CFrame = rZ_2.CFrame + r__3.Unit * FlySpeed.Value * gm
                end
            end
        end
    end)
    mV.Fly:OnChanged(function()
        if not mV.Fly.Value then
            local r8 = l8()
            if r8 then
                r8.PlatformStand = false
            end
        end
    end)
    mV.WalkSpeedEnabled:OnChanged(function()
        if not mV.WalkSpeedEnabled.Value then
            local sd = l8()
            if sd then
                sd.WalkSpeed = 16
            end
        end
    end)
    mV.AntiGameplayPause:OnChanged(function()
        fR(mV.AntiGameplayPause.Value)
    end)
    task.spawn(function()
        while not mA.Unloaded do
            task.wait(1)
            if mV.AntiGameplayPause.Value then
                fR(true)
            end
        end
    end)
    mV.InstantProximityPrompt:OnChanged(function()
        if mV.InstantProximityPrompt.Value then
            for i, descendant in ipairs(ma:GetDescendants()) do
                pcall(f4, descendant)
            end
            connection = ma.DescendantAdded:Connect(function(gV)
                if mV.InstantProximityPrompt.Value then
                    pcall(f4, gV)
                end
            end)
        elseif connection then
            connection:Disconnect()
            connection = nil
        end
    end)
    mA:OnUnload(function()
        fR(false)
        if connection then
            connection:Disconnect()
        end
    end)
end
m4_2()
m5()
task.spawn(worker2)
local function m0_5()
    local MenuGroup = mb.Settings:AddLeftGroupbox("Menu")
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    mA.ToggleKeybind = Options.MenuKeybind
    local hs = 0
    local ht = tick()
    local Label
    local function hv()
        local CurrentCamera = ma.CurrentCamera
        if not CurrentCamera then
            return
        end
        mB:CaptureController()
        mB:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
        hs += 1
        ht = tick()
        if Label then
            pcall(function()
                Label:SetText("AFK triggers: " .. hs)
            end)
        end
    end
    local connection = l3.Idled:Connect(function()
        local sE = if mx("AntiAfk") then 1 else 0
        if sE == 1 then
            pcall(hv)
        end
    end)
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel("AFK triggers: 0")
    MenuGroup:AddButton({
        Text = "Unload UI",
        Func = function()
            mA:Unload()
        end
    })
    task.spawn(function()
        while not mA.Unloaded do
            task.wait(2)
            local sF = mx("AntiAfk") and tick() - ht >= 60
            if sF then
                pcall(hv)
            end
        end
    end)
    mA:OnUnload(function()
        if connection then
            connection:Disconnect()
        end
        UIManager.open = open
        for k, v in mO do
            local sN = v
            pcall(function()
                sN:Disconnect()
            end)
        end
        table.clear(mO)
        if getgenv then
            getgenv().__OuroborosDigIntoSecretsLib = nil
        end
    end)
    lZ:SetLibrary(mA)
    lZ:SetFolder("OuroborosHub")
    lZ:SaveDefault("Evil Hello Kitty")
    lZ:ApplyToTab(mb.Settings)
    lZ:LoadDefault()
    lQ:SetLibrary(mA)
    lQ:IgnoreThemeSettings()
    lQ:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    lQ:SetFolder("OuroborosHub/DigIntoSecrets")
    local h2 = lQ:BuildConfigSection(mb.Settings)
    local function h3(h4, h5)
        local sP_1 = (h4 == "Toggle" and mV or Options)[h5]
        local sO_2 = type(sP_1) == "table" and sP_1.Type == h4
        return sO_2 and sP_1 or nil
    end
    local function ic(ie, ig)
        local Type = ig.Type
        if Type == "Toggle" then
            return { idx = ie, type = "Toggle", value = ig.Value == true }
        elseif Type == "Slider" then
            return { idx = ie, type = "Slider", value = tostring(ig.Value) }
        elseif Type == "Dropdown" then
            return { idx = ie, type = "Dropdown", multi = ig.Multi == true, value = ig.Value }
        elseif Type == "Input" then
            local sT = ig.Value
            local sX = if sT then 1 else 0
            local sV = 1117 * sX + 3819 * (1 - sX)
            local sW = 2 * sX + 2843 * (1 - sX)
            if not ((sV * 1915 + sW * 536 + sV * sW) % 16777213 == 2142361) then
                sT = ""
            end
            return { idx = ie, type = "Input", text = tostring(sT) }
        elseif Type == "ColorPicker" then
            return { idx = ie, type = "ColorPicker", value = ig.Value:ToHex(), transparency = ig.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = ie,
                type = "KeyPicker",
                mode = ig.Mode,
                key = ig.Value,
                modifiers = ig.Modifiers,
                toggled = ig.Toggled
            }
        else
            return nil
        end
    end
    local function ii()
        local s1 = {}
        for i, v in ipairs({ mV, Options }) do
            for k, v in pairs(v) do
                local s2 = type(v) == "table" and type(v.Type) == "string" and not lQ.Ignore[k]
                if s2 then
                    local s2_1 = ic(k, v)
                    if s2_1 then
                        s1[#s1 + 1] = s2_1
                    end
                end
            end
        end
        table.sort(s1, function(it, iu)
            if it.type ~= iu.type then
                return it.type < iu.type
            end
            return it.idx < iu.idx
        end)
        return { objects = s1 }
    end
    local function iv(iw)
        local tl
        tl = nil
        local tm = type(iw) ~= "table" or type(iw.idx) ~= "string"
        local tq = if tm then 1 else 0
        local to = 717 * tq + 569 * (1 - tq)
        local tp = 538 * tq + 1911 * (1 - tq)
        if not ((to * 1153 + tp * 3813 + to * tp) % 16777213 == 3263841) then
            tm = type(iw.type) ~= "string"
        end
        if not tm then
            tm = lQ.Ignore[iw.idx]
        end
        if tm then
            return false
        end
        tl = h3(iw.type, iw.idx)
        if not tl then
            return false
        end
        local tm_1 = pcall(function()
            if iw.type == "Input" then
                if type(iw.text) ~= "string" then
                    return
                end
                tl:SetValue(iw.text)
            elseif iw.type == "ColorPicker" then
                tl:SetValueRGB(Color3.fromHex(iw.value), iw.transparency)
            elseif iw.type == "KeyPicker" then
                tl:SetValue({ iw.key, iw.mode, iw.modifiers })
                if iw.mode == "Toggle" and iw.toggled ~= nil then
                    tl.Toggled = iw.toggled
                    tl:Update()
                end
            else
                tl:SetValue(iw.value)
            end
        end)
        return tm_1
    end
    h2:AddDivider()
    h2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    h2:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local ts_1
            local tr_1
            tr_1, ts_1 = pcall(mu.JSONEncode, mu, ii())
            if not tr_1 then
                mA:Notify("Failed to encode the config")
                return
            end
            local tr_2 = setclipboard or toclipboard
            local tr_3 = type(tr_2) ~= "function" or not pcall(tr_2, ts_1)
            if tr_3 then
                mA:Notify("Your executor does not support copying to the clipboard")
                return
            end
            mA:Notify("Config copied to clipboard", 6)
        end
    })
    h2:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local tx_1
            local tv = Options.SaveManager_ImportSource.Value or ""
            local tv_1
            local tw = tostring(tv):match("^%s*(.-)%s*$")
            if tw == "" then
                mA:Notify("Paste an exported config into the box first")
                return
            end
            tv_1, tx_1 = pcall(mu.JSONDecode, mu, tw)
            local tw_1 = not tv_1 or type(tx_1) ~= "table" or type(tx_1.objects) ~= "table"
            if tw_1 then
                mA:Notify("That is not a valid exported config")
                return
            end
            local tv_2 = 0
            for i, v in ipairs(tx_1.objects) do
                if iv(v) then
                    tv_2 += 1
                end
            end
            if tv_2 == 0 then
                mA:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local tx_2 = tv_2 == 1 and "" or "s"
            mA:Notify(("Imported %d setting%s"):format(tv_2, tx_2), 6)
        end
    })
    lQ:LoadAutoloadConfig()
end
m0_5()
