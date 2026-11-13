local fns = {}
local r
local n
local o
local p
local q
local e
local l
local LocalPlayer
local g
local u
local v
local m
local x
local y
local B
local C
local D
local connection
local H
local I
local J
local K
local L
local O
local Q
local R
local S
local U
local V
local W
local X
local CoreGui
local aa
local ab
local ae
local af
local ag
local ah
local ai
local aj
local HttpService
local am
local an
local ao
local aq
local as
local au
local av
local aw
local ax
local aB
local aC
local Library
local aI
local aJ
local aK
local aL
local aM
local aN
local aP
local aQ
local aR
function fns.fn45()
    local ActivityAttributes = B.ActivityAttributes
    local M = {}
    local T = ActivityAttributes
    local ab = if T then 1 else 0
    local S = 912 * ab + 697 * (1 - ab)
    local az = 1447 * ab + 3570 * (1 - ab)
    if not ((S * 2023 + az * 3005 + S * az) % 16777213 == 7512875) then
        T = M
    end
    local M_1 = T
    local T_1 = M_1.ActivityId
    local ab_1 = if T_1 then 1 else 0
    local S_1 = 3198 * ab_1 + 1681 * (1 - ab_1)
    local az_1 = 2871 * ab_1 + 3735 * (1 - ab_1)
    if not ((S_1 * 508 + az_1 * 146 + S_1 * az_1) % 16777213 == 11225208) then
        T_1 = "CurrentActivityId"
    end
    local attr = aN:GetAttribute(T_1)
    local bq = type(attr)
    local bs = (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_3 = bit32.bxor(l, k)
            l = bit32.band(l_3 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_4 = bit32.bxor(l, e)
            l = bit32.band(l_4 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(bq, 6, 2175009567, "string")
    local T_2 = (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_1 = bit32.bxor(l, k)
            l = bit32.band(l_1 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_2 = bit32.bxor(l, e)
            l = bit32.band(l_2 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(attr, 0, 5381, "")
    local a3 = not bs
    local a9 = if a3 then 1 else 0
    local aX = 1365 * a9 + 3127 * (1 - a9)
    local aC = 4030 * a9 + 3068 * (1 - a9)
    if not ((aX * 2914 + aC * 129 + aX * aC) % 16777213 == 9998430) then
        a3 = T_2
    end
    if a3 then
        return nil, 0
    else
        local T_3 = M_1.CountdownSeconds
        local aG = if T_3 then 1 else 0
        local x = 396 * aG + 1662 * (1 - aG)
        local ah = 973 * aG + 2853 * (1 - aG)
        if not ((x * 448 + ah * 2335 + x * ah) % 16777213 == 2834671) then
            T_3 = "CurrentActivityCountdownSeconds"
        end
        local M_2 = tonumber(aN:GetAttribute(T_3)) or 0
        return attr, M_2
    end
end
function fns.fn46()
    return not aq.Unloaded
end
function fns.fn63()
    local State = U.State
    local Y = (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_7 = bit32.bxor(l, k)
            l = bit32.band(l_7 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_8 = bit32.bxor(l, e)
            l = bit32.band(l_8 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(State), 5, 248602996, "table") and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_5 = bit32.bxor(l, k)
            l = bit32.band(l_5 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_6 = bit32.bxor(l, e)
            l = bit32.band(l_6 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(State.status, 5, 41903342, "ready") and B.EventBus
    if Y then
        pcall(B.EventBus.Fire, "DungeonStartRequested")
    end
end
function fns.fn80(k)
    if not k then
        ah("AutoSell")
        return
    end
    C("AutoSell", 2, function()
        local ba_1
        local V_1
        if v.SellAtBuyer then
            V_1, ba_1 = aj()
            local ao_1 = (function(n, p, q, o)
                if type(n) ~= "string" then
                    return false
                end
                if #n ~= p then
                    return false
                end
                local l = 5381
                local j = buffer.fromstring(n)
                local m = 0
                while m <= p - 4 do
                    local k = buffer.readu32(j, m)
                    local l_11 = bit32.bxor(l, k)
                    l = bit32.band(l_11 * 33, 4294967295)
                    m = m + 4
                end
                while m < p do
                    local e = buffer.readu8(j, m)
                    local l_12 = bit32.bxor(l, e)
                    l = bit32.band(l_12 * 33, 4294967295)
                    m = m + 1
                end
                if l ~= q then
                    return false
                end
                return n == o
            end)(V_1, 11, 949875990, "BlackMarket") and ba_1 > 15
            if ao_1 then
                return
            end
        end
        local V_2 = W()
        if V_2 <= 0 then
            return
        end
        if v.SellAtMultiplier then
            local ba_2 = X()
            local av = if not (function(n, p, q, o)
                if type(n) ~= "string" then
                    return false
                end
                if #n ~= p then
                    return false
                end
                local l = 5381
                local j = buffer.fromstring(n)
                local m = 0
                while m <= p - 4 do
                    local k = buffer.readu32(j, m)
                    local l_9 = bit32.bxor(l, k)
                    l = bit32.band(l_9 * 33, 4294967295)
                    m = m + 4
                end
                while m < p do
                    local e = buffer.readu8(j, m)
                    local l_10 = bit32.bxor(l, e)
                    l = bit32.band(l_10 * 33, 4294967295)
                    m = m + 1
                end
                if l ~= q then
                    return false
                end
                return n == o
            end)(type(ba_2), 5, 248602996, "table") then 1 else 0
            local ad = 2090 * av + 1613 * (1 - av)
            local aT = 330 * av + 1170 * (1 - av)
            if (ad * 3541 + aT * 3010 + ad * aT) % 16777213 == 9083690 then
                return
            end
            local ao_2 = tonumber(ba_2.BaseGoldPerFood) or tonumber(ba_2.GoldPerFood)
            local av_1 = if (ao_2 or 0) + 1e-06 < v.SellMultiplier then 1 else 0
            local ad_1 = 3740 * av_1 + 1721 * (1 - av_1)
            local aT_1 = 3890 * av_1 + 579 * (1 - av_1)
            if (ad_1 * 2388 + aT_1 * 1276 + ad_1 * aT_1) % 16777213 == 11666147 then
                return
            end
            local ao_4 = tonumber(ba_2.RemainingSeconds) or 0
            if ao_4 < 1 and not ba_2.IsSellShopVIP then
                return
            end
            V_2 = W()
            if V_2 <= 0 then
                return
            end
        end
        Q("SellPlayerFood", { FoodAmount = V_2 })
    end)
end
function fns.fn131(f)
    local Y = 2
    while true do
        Y += 1650
        if Y < 4861 then
            if Y < 1651 then
                if Y < 1135 then
                    break
                elseif Y < 1650 then
                    break
                else
                    ah("AutoEquipBest")
                    return
                end
            elseif Y < 1653 then
                if Y < 1652 then
                    break
                elseif Y == 1652 then
                    Y = if not f then 0 else 3
                else
                    Y = 1653
                    continue
                end
            elseif Y < 4617 then
                if Y == 1653 then
                    C("AutoEquipBest", 5, function()
                        local R, aq, G, aS
                        local aZ = 9
                        while true do
                            aZ += 4150
                            if aZ < 4157 then
                                if aZ < 4151 then
                                    if aZ < 2466 then
                                        break
                                    elseif aZ < 4063 then
                                        break
                                    elseif aZ < 4150 then
                                        break
                                    else
                                        return
                                    end
                                elseif aZ < 4154 then
                                    if aZ < 4152 then
                                        if aZ == 4151 then
                                            local aA = if aS then 1 else 0
                                            local a7 = 1962 * aA + 1108 * (1 - aA)
                                            local Q = 394 * aA + 516 * (1 - aA)
                                            aZ = if (a7 * 2090 + Q * 4088 + a7 * Q) % 16777213 == 6484280 then 8 else 11
                                        else
                                            aZ = 4161
                                            continue
                                        end
                                    elseif aZ < 4153 then
                                        if aZ == 4152 then
                                            aZ = if aS then 1 else 6
                                        else
                                            aZ = 4155
                                            continue
                                        end
                                    else
                                        aS = not aq
                                        aZ = 2
                                    end
                                elseif aZ < 4155 then
                                    if aZ == 4154 then
                                        G = aq
                                        aZ = if not G then 0 else 7
                                    else
                                        aZ = 4155
                                        continue
                                    end
                                elseif aZ < 4156 then
                                    break
                                elseif aZ == 4156 then
                                    aS = G.Attack > aq
                                    aZ = 1
                                else
                                    aZ = 2228
                                    continue
                                end
                            elseif aZ < 5927 then
                                if aZ < 4159 then
                                    if aZ < 4158 then
                                        aq = O(R)
                                        aS = #n(R) > 0
                                        aZ = if aS then 2 else 3
                                    elseif aZ == 4158 then
                                        aa(av, {})
                                        aZ = 11
                                    else
                                        aZ = 4151
                                        continue
                                    end
                                elseif aZ < 4160 then
                                    R = ao()
                                    aq = R
                                    aZ = if aq then 10 else 4
                                elseif aZ < 4161 then
                                    aq = aI(R)[1]
                                    aZ = 4
                                elseif aZ == 4161 then
                                    aZ = 5
                                else
                                    aZ = 4154
                                    continue
                                end
                            else
                                break
                            end
                        end
                    end)
                    Y = 1
                else
                    break
                end
            else
                break
            end
        else
            break
        end
    end
end
function fns.fn147(l)
    local aP = 0
    while true do
        aP += 5254
        if aP < 6907 then
            if aP < 5255 then
                if aP < 4248 then
                    break
                elseif aP < 5254 then
                    break
                else
                    aP = if not l then 1 else 3
                end
            elseif aP < 5257 then
                if aP < 5256 then
                    ah("AutoIndex")
                    return
                end
                break
            elseif aP < 5502 then
                if aP == 5257 then
                    C("AutoIndex", 5, function(g)
                        local IndexModel = B.IndexModel
                        if not IndexModel then
                            return
                        end
                        IndexModel.Init(IndexModel)
                        if not IndexModel:Load() then
                            return
                        end
                        for i, v in ipairs({ "Ants", "Mutations" }) do
                            local G = 1
                            while G <= 20 do
                                if not g.Running then
                                    return
                                end
                                local aA = IndexModel:GetRewardState(v)
                                local aq = aA and aA.CanClaim
                                local aA_1 = not aq or not IndexModel:ClaimReward(v)
                                if aA_1 then
                                    break
                                end
                                task.wait(0.7)
                                G += 1
                            end
                        end
                    end)
                    aP = 2
                else
                    aP = 14262
                    continue
                end
            else
                break
            end
        else
            break
        end
    end
end
local function fn167()
    return LocalPlayer:GetAttribute("DungeonSessionId") ~= nil
end
local function fn181()
    local Compost = B.Compost
    local I = if not Compost:IsUnlocked() then 1 else 0
    local aO = 3516 * I + 533 * (1 - I)
    local aR = 1996 * I + 966 * (1 - I)
    if (aO * 1487 + aR * 786 + aO * aR) % 16777213 == 13815084 then
        return false
    else
        local PlayerData = B.PlayerData
        local Z = tonumber(PlayerData.GetPlayerCompostLevel(q())) or 1
        local Z_1 = PlayerData.GetCompostTierConfig(B.Context, Z)
        local W = PlayerData.GetCompostTierConfig(B.Context, Z + 1)
        local aC_2 = not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_15 = bit32.bxor(l, k)
                l = bit32.band(l_15 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_16 = bit32.bxor(l, e)
                l = bit32.band(l_16 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(Z_1), 5, 248602996, "table") or not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_13 = bit32.bxor(l, k)
                l = bit32.band(l_13 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_14 = bit32.bxor(l, e)
                l = bit32.band(l_14 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(W), 5, 248602996, "table")
        local I_1 = if aC_2 then 1 else 0
        local aO_1 = 3847 * I_1 + 2736 * (1 - I_1)
        local aR_1 = 3210 * I_1 + 2553 * (1 - I_1)
        if (aO_1 * 550 + aR_1 * 3188 + aO_1 * aR_1) % 16777213 == 7920987 then
            return false
        end
        local aC_3 = aK()
        local F_1 = tonumber(Z_1.UpgradePrice) or math.huge
        if aC_3 < F_1 then
            return false
        end
        return Q("CompostUpgrade", {})
    end
end
local function fn193(e)
    local ak = (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_19 = bit32.bxor(l, k)
            l = bit32.band(l_19 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_20 = bit32.bxor(l, e)
            l = bit32.band(l_20 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(typeof(cloneref), 8, 2851454103, "function") and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_17 = bit32.bxor(l, k)
            l = bit32.band(l_17 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_18 = bit32.bxor(l, e)
            l = bit32.band(l_18 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(typeof(e), 8, 1471340621, "Instance")
    if ak then
        return cloneref(e)
    end
    return e
end
local function fn196()
    return LocalPlayer.UserId
end
local function fn212()
    return LocalPlayer:GetAttribute("Init") == true
end
local function fn243(m)
    e(v.Foods, m)
end
local function fn251(m)
    if not m then
        ah("AutoUnlockSlot")
        return
    end
    C("AutoUnlockSlot", 2, function()
        local aj_1
        local A_1
        A_1, aj_1 = R()
        local U = aJ(A_1)
        local b_ = (function(o, n)
            if type(o) ~= "number" then
                return false
            end
            if o % 1 ~= 0 then
                return false
            end
            local p = o < -2147483648
            if p then
            else
                p = o > 2147483647
            end
            if p then
                return false
            end
            local q_1 = bit32.bxor(o, 1540483477)
            local q_2 = bit32.band(q_1 * 403 + bit32.lshift(q_1, 24), 4294967295)
            local q_3 = bit32.bxor(q_2, bit32.rshift(q_2, 13))
            return q_3 == n
        end)(#U, 544454170)
        if b_ or not aj_1 then
            return
        end
        local A_3 = ao()
        local y_1 = A_3 and aB(A_3)
        local y_2 = not y_1 or aK() < y_1
        if y_2 then
            return
        end
        local bX = U[1]
        Q("AddAntSlot", { Source = "RoomAntInfoGui", RoomIndex = aj_1, SlotIndex = bX })
        task.wait(1.5)
    end)
end
local function fn254()
    local aL = os.clock()
    local b3 = q()
    Q("RequestSellFoodPrice", { Source = "SellShopModel", UserId = b3 })
    local w = aL + 3
    while true do
        local ae = os.clock() < w and ab.ReceivedAt < aL and x()
        if ae then
            task.wait(0.1)
            continue
        end
        break
    end
    return ab.ReceivedAt >= aL and ab.State or nil
end
local function fn292()
    pcall(function()
        ai.Disconnect(ai)
    end)
end
local function fn293(g)
    local ae
    local D = g.EquippedBySlot or {}
    for k2, v in pairs(D) do
        local aM = v
        local I_2 = (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_21 = bit32.bxor(l, k)
                l = bit32.band(l_21 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_22 = bit32.bxor(l, e)
                l = bit32.band(l_22 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(aM), 5, 248602996, "table") and r(aM.V)
        local D_1 = I_2
        if I_2 then
            I_2 = not ae or D_1 < ae
        end
        if I_2 then
            ae = D_1
        end
    end
    return ae
end
local function fn334(m, f)
    table.clear(m)
    if (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_23 = bit32.bxor(l, k)
            l = bit32.band(l_23 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_24 = bit32.bxor(l, e)
            l = bit32.band(l_24 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(f), 5, 248602996, "table") then
        for k, v in pairs(f) do
            if v then
                m[k] = true
            end
        end
    end
end
local function fn349()
    local a7, ak
    local a4 = 2
    while true do
        a4 += 1729
        if a4 < 2251 then
            if a4 < 1732 then
                if a4 < 1730 then
                    if a4 < 1729 then
                        break
                    end
                    ak = a7:FindFirstChild("Sell")
                    a4 = 4
                elseif a4 < 1731 then
                    break
                else
                    a7 = aN:FindFirstChild("BlackMarketEvent")
                    ak = a7
                    local aB = if ak then 1 else 0
                    local Z = 4007 * aB + 569 * (1 - aB)
                    local al = 1400 * aB + 2647 * (1 - aB)
                    a4 = if (Z * 2056 + al * 2214 + Z * al) % 16777213 == 170579 then 0 else 4
                end
            elseif a4 < 1734 then
                if a4 < 1733 then
                    a4 = if ak then 7 else 6
                elseif a4 == 1733 then
                    a7 = ak
                    a4 = if ak then 5 else 3
                else
                    a4 = 1731
                    continue
                end
            elseif a4 < 1735 then
                if a4 == 1734 then
                    ak = a7:IsA("BasePart")
                    a4 = 3
                else
                    a4 = 1733
                    continue
                end
            elseif a4 < 1736 then
                return nil
            elseif a4 == 1736 then
                return a7
            else
                a4 = 6916
                continue
            end
        else
            break
        end
    end
end
local function fn363(k)
    v.AutoBuyAnt = k == true
end
local function fn401(k, e)
    local ai = p()
    if not ai then
        return false
    else
        ai.AssemblyLinearVelocity = Vector3.zero
        local aQ = e or 3
        local ep = k + Vector3.new(0, aQ, 0)
        ai.CFrame = CFrame.new(ep)
        return true
    end
end
local function fn415(j)
    local L = 0
    local aX = j.UnlockedAntSlots or {}
    for k2, v in pairs(aX) do
        local Y_1 = v and tonumber(k2)
        if Y_1 then
            L += 1
        end
    end
    local L_1 = math.max(L, 1)
    local Y_2 = B.NestUnlock[L_1] or B.NestUnlock[tostring(L_1)]
    local L_2 = Y_2
    if Y_2 then
        Y_2 = tonumber(L_2.Price)
    end
    return Y_2 or nil
end
local function fn431(f)
    if not f then
        ah("AutoRoll")
        return
    end
    C("AutoRoll", au, function()
        Q("RollAnt", { Source = "RollModel" })
    end)
end
local function fn444(j)
    local am = tonumber(j) or 1
    v.SellMultiplier = am
end
local function fn477()
    if aw() then
        U.WasIn = true
        K()
        return true
    elseif U.WasIn then
        U.WasIn = false
        task.wait(2.5)
        aL()
        return true
    else
        return false
    end
end
local function fn505(k)
    local aa_1
    local M = v.AutoBuyAnt or v.AutoBuyStar
    local B = not M or not (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_27 = bit32.bxor(l, k)
            l = bit32.band(l_27 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_28 = bit32.bxor(l, e)
            l = bit32.band(l_28 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(k), 5, 248602996, "table")
    local ak = if B then 1 else 0
    local bd = 81 * ak + 526 * (1 - ak)
    local ar = 2051 * ak + 2123 * (1 - ak)
    if not ((bd * 1535 + ar * 1032 + bd * ar) % 16777213 == 2407098) then
        B = not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_25 = bit32.bxor(l, k)
                l = bit32.band(l_25 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_26 = bit32.bxor(l, e)
                l = bit32.band(l_26 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(k.Results), 5, 248602996, "table")
    end
    if B then
        return
    end
    local M_3 = aK()
    local Results = k.Results
    for i, v2 in ipairs(Results) do
        local B_1 = not x()
        if not B_1 then
            B_1 = not (v.AutoBuyAnt or v.AutoBuyStar)
        end
        if B_1 then
            return
        end
        local max = math.max
        local floor = math.floor
        local az = tonumber(v2.Cost) or 0
        local cu = floor(az)
        local ag_3 = max(cu, 0)
        if m(v2) then
            aa_1 = v.AutoBuyStar
        else
            local B_3 = v.AutoBuyAnt and ax(v2)
            aa_1 = B_3
        end
        if aa_1 and M_3 >= ag_3 then
            if Q("ClaimRolledAnt", { ClaimId = v2.ClaimId }) then
                M_3 -= ag_3
            end
        end
    end
end
local function fn525()
    local aE, a9, am, v
    local J = 1
    while true do
        J += 13288
        if J < 13296 then
            if J < 13291 then
                if J < 7968 then
                    break
                elseif J < 13288 then
                    break
                elseif J < 13289 then
                    if J == 13288 then
                        a9 = aE:WaitForChild("EventBus", 30)
                        J = 8
                    else
                        J = 9160
                        continue
                    end
                elseif J < 13290 then
                    aE = o:WaitForChild("Packages", 30)
                    a9 = aE
                    J = if a9 then 0 else 8
                else
                    aE = a9
                    J = if a9 then 4 else 6
                end
            elseif J < 13293 then
                if J < 13292 then
                    if J == 13291 then
                        v = am
                        J = 7
                    else
                        J = 11110
                        continue
                    end
                elseif J == 13292 then
                    a9 = aE:IsA("RemoteEvent")
                    J = 6
                else
                    J = 13297
                    continue
                end
            elseif J < 13294 then
                if J == 13293 then
                    a9 = aE:WaitForChild("RemoteEvent", 30)
                    J = 2
                else
                    J = 1700
                    continue
                end
            elseif J < 13295 then
                assert(a9, "EventBus remote missing")
                B.Remote = aE
                local Battle = (o:WaitForChild("Battle", 30))
                local Game = Battle:WaitForChild("Game", 30)
                local WuKongHooks = o:WaitForChild("WuKongHooks", 30)
                local UI = o:WaitForChild("UI", 30)
                local genConfigs = o:WaitForChild("_genConfigs", 30)
                B.Context = require(Game:WaitForChild("Context", 30))
                local cy = B
                local cz = require
                local Helper3 = (Game:WaitForChild("Helper", 30))
                cy.PlayerData = cz(Helper3:WaitForChild("PlayerDataHelper", 30))
                B.AntFoodStore = require(WuKongHooks:WaitForChild("AntFoodStore", 30))
                B.WuKong = require(o:WaitForChild("WuKong", 30))
                B.BackPackStore = require(WuKongHooks:WaitForChild("BackPackStore", 30))
                local cz_1 = B
                local cy_1 = require
                local Helper2 = (o:WaitForChild("Helper", 30))
                cz_1.AntAttribute = cy_1(Helper2:WaitForChild("AntAttributeHelper", 30))
                local cy_2 = B
                local cz_2 = require
                local GearShop = (UI:WaitForChild("GearShop", 30))
                local Model2 = (GearShop:WaitForChild("Model", 30))
                cy_2.GearShop = cz_2(Model2:WaitForChild("GearShopModel", 30))
                local cz_3 = B
                local cy_3 = require
                local Compost = (UI:WaitForChild("Compost", 30))
                local Model = (Compost:WaitForChild("Model", 30))
                cz_3.Compost = cy_3(Model:WaitForChild("CompostModel", 30))
                local cy_4 = B
                local cz_4 = require
                local Helper = (o:WaitForChild("Helper", 30))
                cy_4.LuckQueen = cz_4(Helper:WaitForChild("LuckQueenProgression", 30))
                B.NestUnlock = require(genConfigs:WaitForChild("battle_tbnestunlock", 30))
                aE = require(genConfigs:WaitForChild("ui_tbbackpackitem", 30))
                a9 = {}
                local TagConfig = B.Context.Config.TagConfig
                am = {}
                v = TagConfig
                J = if v then 7 else 3
            else
                for k2, v2 in pairs(v) do
                    local X = v2
                    local am_2 = (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_39 = bit32.bxor(l, k)
                            l = bit32.band(l_39 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_40 = bit32.bxor(l, e)
                            l = bit32.band(l_40 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(X), 5, 248602996, "table") and X.Id
                    local v_2 = am_2 or k2
                    am = tonumber(v_2)
                    v = am and am > 0 and (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_37 = bit32.bxor(l, k)
                            l = bit32.band(l_37 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_38 = bit32.bxor(l, e)
                            l = bit32.band(l_38 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(X), 5, 248602996, "table") and (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_35 = bit32.bxor(l, k)
                            l = bit32.band(l_35 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_36 = bit32.bxor(l, e)
                            l = bit32.band(l_36 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(X.DisplayName), 6, 2175009567, "string")
                    if v then
                        table.insert(a9, { Id = am, Name = X.DisplayName })
                    end
                end
                table.sort(a9, function(e, c)
                    return e.Id < c.Id
                end)
                local cF = ipairs
                for k, v in cF(a9) do
                    table.insert(B.Mutations, v.Name)
                    B.MutationIds[v.Name] = v.Id
                end
                a9 = {}
                local cF_1 = pairs
                for k2, v2 in cF_1(aE) do
                    local aj = k2
                    local V = v2
                    aE = (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_33 = bit32.bxor(l, k)
                            l = bit32.band(l_33 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_34 = bit32.bxor(l, e)
                            l = bit32.band(l_34 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(aj), 6, 2175009567, "string") and (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_31 = bit32.bxor(l, k)
                            l = bit32.band(l_31 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_32 = bit32.bxor(l, e)
                            l = bit32.band(l_32 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(V), 5, 248602996, "table") and tonumber(V.CoinPrice)
                    if aE then
                        aE = table.insert
                        local am_3 = (function(n, p, q, o)
                            if type(n) ~= "string" then
                                return false
                            end
                            if #n ~= p then
                                return false
                            end
                            local l = 5381
                            local j = buffer.fromstring(n)
                            local m = 0
                            while m <= p - 4 do
                                local k = buffer.readu32(j, m)
                                local l_29 = bit32.bxor(l, k)
                                l = bit32.band(l_29 * 33, 4294967295)
                                m = m + 4
                            end
                            while m < p do
                                local e = buffer.readu8(j, m)
                                local l_30 = bit32.bxor(l, e)
                                l = bit32.band(l_30 * 33, 4294967295)
                                m = m + 1
                            end
                            if l ~= q then
                                return false
                            end
                            return n == o
                        end)(type(V.DisplayName), 6, 2175009567, "string") and V.DisplayName
                        v = am_3 or aj
                        am = V.sort or V.Index
                        local aN_2 = tonumber(am) or math.huge
                        aE(a9, { Id = aj, Name = v, Sort = aN_2, Price = tonumber(V.CoinPrice) })
                    end
                end
                table.sort(a9, function(k, j)
                    if k.Sort == j.Sort then
                        return k.Id < j.Id
                    end
                    return k.Sort < j.Sort
                end)
                local cF_2 = ipairs
                for k, v in cF_2(a9) do
                    table.insert(B.Foods, v.Name)
                    B.FoodIds[v.Name] = v.Id
                    B.FoodPrices[v.Id] = v.Price
                end
                pcall(u)
                J = 9
            end
        elseif J < 14668 then
            if J < 13297 then
                aE = a9
                J = if a9 then 5 else 2
            else
                break
            end
        else
            break
        end
    end
end
local function fn544(k)
    local H = 3
    while true do
        H += 480
        if H < 5924 then
            if H < 482 then
                if H < 481 then
                    if H == 480 then
                        C("AutoSnail", 0.55, function()
                            local an_1
                            local Y_3
                            Y_3, an_1 = aj()
                            local N = not (function(n, p, q, o)
                                if type(n) ~= "string" then
                                    return false
                                end
                                if #n ~= p then
                                    return false
                                end
                                local l = 5381
                                local j = buffer.fromstring(n)
                                local m = 0
                                while m <= p - 4 do
                                    local k = buffer.readu32(j, m)
                                    local l_41 = bit32.bxor(l, k)
                                    l = bit32.band(l_41 * 33, 4294967295)
                                    m = m + 4
                                end
                                while m < p do
                                    local e = buffer.readu8(j, m)
                                    local l_42 = bit32.bxor(l, e)
                                    l = bit32.band(l_42 * 33, 4294967295)
                                    m = m + 1
                                end
                                if l ~= q then
                                    return false
                                end
                                return n == o
                            end)(Y_3, 11, 2765389840, "TravelSnail") or an_1 <= 0
                            if N then
                                return
                            end
                            pcall(function()
                                local cJ = y
                                local WuKong = B.WuKong
                                WuKong.ExecuteAction(WuKong, cJ)
                            end)
                        end)
                        H = 2
                    else
                        break
                    end
                else
                    ah("AutoSnail")
                    return
                end
            elseif H < 483 then
                break
            elseif H == 483 then
                H = if not k then 1 else 0
            else
                break
            end
        else
            break
        end
    end
end
local function fn551(j)
    local X = (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_49 = bit32.bxor(l, k)
            l = bit32.band(l_49 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_50 = bit32.bxor(l, e)
            l = bit32.band(l_50 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(j), 5, 248602996, "table") and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_47 = bit32.bxor(l, k)
            l = bit32.band(l_47 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_48 = bit32.bxor(l, e)
            l = bit32.band(l_48 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(j.ResultType, 4, 437357260, "Item") and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_45 = bit32.bxor(l, k)
            l = bit32.band(l_45 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_46 = bit32.bxor(l, e)
            l = bit32.band(l_46 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(j.PresentationType, 4, 3196947478, "Star") and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_43 = bit32.bxor(l, k)
            l = bit32.band(l_43 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_44 = bit32.bxor(l, e)
            l = bit32.band(l_44 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(j.ClaimId), 6, 2175009567, "string")
    return X
end
local function fn603(j, m)
    local ap_2
    local aa = os.clock() + 4
    local aa_3
    while true do
        local ap_1 = ae.Owner and os.clock() < aa and x()
        if ap_1 then
            task.wait(0.1)
            continue
        end
        break
    end
    local aa_2 = ae.Owner or not x()
    if aa_2 then
        return false
    end
    ae.Owner = j
    ap_2, aa_3 = pcall(m)
    ae.Owner = nil
    if not ap_2 then
        local cO = tostring(aa_3)
        local cN = j .. ": " .. cO
        warn("[Ouroboros] " .. cN)
    end
    return ap_2
end
local function fn627(g)
    if not g then
        ah("AutoCollect")
        ah("AutoHarvest")
        return
    end
    C("AutoHarvest", 3.2, function()
        local a9 = ao()
        if not a9 then
            return
        end
        local aH = {}
        local aU = a9.EquippedBySlot or {}
        for k in pairs(aU) do
            local a9_4 = tonumber(k)
            if a9_4 and a9_4 >= 1 then
                table.insert(aH, math.floor(a9_4))
            end
        end
        table.sort(aH)
        if #aH > 0 then
            Q("ClaimAntReward", { AntIndices = aH })
        end
    end)
    C("AutoCollect", 2, function()
        local aS, M, O, aI
        local aN = 7
        while true do
            aN += 13224
            if aN < 13227 then
                if aN < 13226 then
                    if aN < 13224 then
                        break
                    elseif aN < 13225 then
                        aS = {}
                        aI = O
                        local ao = if aI then 1 else 0
                        local a1 = 1518 * ao + 1162 * (1 - ao)
                        local aF = 1714 * ao + 637 * (1 - ao)
                        aN = if (a1 * 2203 + aF * 3511 + a1 * aF) % 16777213 == 11963860 then 3 else 5
                    else
                        break
                    end
                elseif aN == 13226 then
                    aN = 1
                else
                    aN = 13225
                    continue
                end
            elseif aN < 13230 then
                if aN < 13228 then
                    if aN == 13227 then
                        for k, v in pairs(aI) do
                            aS = tonumber(k)
                            local floor = math.floor
                            aI = tonumber(v) or 0
                            local an = floor(aI)
                            O = aS and aS >= 1 and an > 0
                            if O then
                                table.insert(M, { SlotIndex = math.floor(aS), Amount = an })
                            end
                        end
                        aN = if #M > 0 then 6 else 2
                    else
                        aN = 13229
                        continue
                    end
                elseif aN < 13229 then
                    if aN == 13228 then
                        O = aS.Slots
                        aN = 0
                    else
                        aN = 13231
                        continue
                    end
                else
                    aI = aS
                    aN = 3
                end
            elseif aN < 13231 then
                if aN == 13230 then
                    Q("ClaimWorkerAntFood", { SubmissionId = HttpService:GenerateGUID(false), Claims = M })
                    aN = 2
                else
                    aN = 15284
                    continue
                end
            elseif aN < 15284 then
                if aN == 13231 then
                    aS = B.AntFoodStore.GetClientData()
                    M = {}
                    O = aS
                    aN = if O then 4 else 0
                else
                    break
                end
            else
                break
            end
        end
    end)
end
local function fn631()
    local Rooms = aN:FindFirstChild("Rooms")
    local attr = LocalPlayer:GetAttribute("RoomIndex")
    local a2 = Rooms and attr and Rooms:FindFirstChild(tostring(attr))
    return a2, tonumber(attr)
end
local function fn650(g, m)
    local B = x() and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_53 = bit32.bxor(l, k)
            l = bit32.band(l_53 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_54 = bit32.bxor(l, e)
            l = bit32.band(l_54 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(g, 12, 1773233392, "DungeonState") and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_51 = bit32.bxor(l, k)
            l = bit32.band(l_51 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_52 = bit32.bxor(l, e)
            l = bit32.band(l_52 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(m), 5, 248602996, "table")
    if B then
        U.State = m
    end
end
local function fn687()
    local aD = U.Origin and not aw()
    local Z = if aD then 1 else 0
    local aL = 2828 * Z + 313 * (1 - Z)
    local ab = 1484 * Z + 3792 * (1 - Z)
    if (aL * 359 + ab * 630 + aL * ab) % 16777213 == 6146924 then
        aR(U.Origin)
        U.Origin = nil
    end
end
local function fn713()
    connection.Disconnect(connection)
end
local function fn715(m)
    local aU_1
    local D = tonumber(m)
    local D_4
    if not D or D < 1 then
        return nil
    else
        local aa_4 = math.floor(D) - 1
        local D_2 = math.floor(aa_4 / 512)
        local c5 = math.floor(D_2 / 64) + 1
        local aI = B.Context.Config.UnitConfig["Unit" .. c5]
        local a8 = if not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_55 = bit32.bxor(l, k)
                l = bit32.band(l_55 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_56 = bit32.bxor(l, e)
                l = bit32.band(l_56 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(aI), 5, 248602996, "table") then 1 else 0
        if a8 == 1 then
            return nil
        end
        local ba = B.Context.Config.TagConfig and B.Context.Config.TagConfig[D_2 % 64]
        local GetAttackByExp = B.AntAttribute.GetAttackByExp
        local Attack = aI.Attack
        local bc = aa_4 % 512
        local w = ba and ba.Mul
        D_4, aU_1 = pcall(GetAttackByExp, Attack, bc, w)
        local aa_5 = D_4 and tonumber(aU_1)
        return aa_5 or nil
    end
end
local function fn742()
    V(I, "Copied Discord invite to clipboard")
end
local function fn761(l, j)
    if not B.Remote then
        return false
    end
    return pcall(B.Remote.FireServer, B.Remote, "ECS_COMMAND", l, j)
end
local function fn789(g)
    local au = not (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_59 = bit32.bxor(l, k)
            l = bit32.band(l_59 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_60 = bit32.bxor(l, e)
            l = bit32.band(l_60 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(g), 5, 248602996, "table") or not (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_57 = bit32.bxor(l, k)
            l = bit32.band(l_57 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_58 = bit32.bxor(l, e)
            l = bit32.band(l_58 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(g.ClaimId), 6, 2175009567, "string")
    if au then
        return false
    elseif v.Rarities[tostring(g.Rarity)] then
        return true
    else
        local au_1 = tonumber(g.TagId) or 0
        if au_1 > 0 then
            local Mutations = v.Mutations
            for k in pairs(Mutations) do
                if B.MutationIds[k] == au_1 then
                    return true
                end
            end
        end
        return false
    end
end
local function fn794(l)
    v.AutoBuyStar = l == true
end
local function fn796()
    if not B.Ready then
        local Main = D.Main
        local StatusGroup = Main:AddRightGroupbox("Status", "triangle-alert")
        local dh = tostring(B.Error)
        StatusGroup:AddLabel("Game binding failed: " .. dh, true)
        return
    end
    local Main7 = D.Main
    local RollingGroup = Main7:AddLeftGroupbox("Rolling", "dices")
    RollingGroup:AddToggle("AutoRollAnt", {
        Text = "Auto Roll Ant",
        Default = false,
        Callback = function(l)
            aq.SetAutoRoll(l)
        end
    })
    RollingGroup.AddDivider(RollingGroup, "Buying")
    RollingGroup:AddToggle("AutoBuyAnt", {
        Text = "Auto Buy Ant",
        Default = false,
        Callback = function(f)
            aq.SetAutoBuyAnt(f)
        end
    })
    RollingGroup:AddToggle("AutoBuyStar", {
        Text = "Auto Buy Star",
        Default = false,
        Callback = function(e)
            aq.SetAutoBuyStar(e)
        end
    })
    RollingGroup:AddDropdown("BuyAntRarities", {
        Text = "Buy Rarities",
        Values = S,
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(j)
            aq.SetBuyRarities(j)
        end
    })
    local Mutations = B.Mutations
    local dj = {}
    local function onBuyAntMutations(k)
        aq.SetBuyMutations(k)
    end
    RollingGroup:AddDropdown("BuyAntMutations", {
        Text = "Buy Mutations",
        Values = Mutations,
        Default = dj,
        Multi = true,
        AllowNull = true,
        Callback = onBuyAntMutations
    })
    local Main6 = D.Main
    local AntsGroup = Main6:AddLeftGroupbox("Ants", "bug")
    AntsGroup:AddToggle("AutoPlaceAnt", {
        Text = "Auto Place Ant",
        Default = false,
        Callback = function(c)
            aq.SetAutoPlace(c)
        end
    })
    AntsGroup:AddToggle("AutoEquipBest", {
        Text = "Auto Equip Best",
        Default = false,
        Callback = function(j)
            aq.SetAutoEquipBest(j)
        end
    })
    AntsGroup:AddToggle("AutoUnlockAntHole", {
        Text = "Auto Unlock Ant Hole",
        Default = false,
        Callback = function(e)
            aq.SetAutoUnlockSlot(e)
        end
    })
    local Main5 = D.Main
    local FoodGroup = Main5:AddRightGroupbox("Food", "apple")
    FoodGroup:AddToggle("AutoCollect", {
        Text = "Auto Collect",
        Default = false,
        Callback = function(l)
            aq.SetAutoCollect(l)
        end
    })
    FoodGroup.AddDivider(FoodGroup, "Selling")
    FoodGroup:AddToggle("AutoSell", {
        Text = "Auto Sell",
        Default = false,
        Callback = function(f)
            aq.SetAutoSell(f)
        end
    })
    FoodGroup:AddToggle("SellAtMultiplier", {
        Text = "Sell At Multiplier",
        Default = false,
        Callback = function(k)
            aq.SetSellAtMultiplier(k)
        end
    })
    FoodGroup:AddSlider("SellMultiplier", {
        Text = "Multiplier X",
        Default = 1.5,
        Min = 0.5,
        Max = 2.5,
        Rounding = 2,
        Callback = function(g)
            aq.SetSellMultiplier(g)
        end
    })
    FoodGroup:AddToggle("AutoSellBuyer", {
        Text = "Auto Sell To Food Buyer",
        Default = false,
        Callback = function(m)
            aq.SetAutoSellBuyer(m)
        end
    })
    local Main4 = D.Main
    local EventsGroup = Main4:AddLeftGroupbox("Events", "sparkles")
    EventsGroup:AddToggle("AutoStrawberryCoins", {
        Text = "Auto Pickup Strawberry Coins",
        Default = false,
        Callback = function(j)
            aq.SetAutoStrawberryCoins(j)
        end
    })
    EventsGroup:AddToggle("AutoSnail", {
        Text = "Auto Click Travelling Snail",
        Default = false,
        Callback = function(c)
            aq.SetAutoSnail(c)
        end
    })
    EventsGroup:AddToggle("AutoStarfall", {
        Text = "Auto Starfall Event",
        Default = false,
        Callback = function(g)
            aq.SetAutoStarfall(g)
        end
    })
    EventsGroup:AddToggle("AutoIndex", {
        Text = "Auto Claim Index",
        Default = false,
        Callback = function(l)
            aq.SetAutoIndex(l)
        end
    })
    local Main3 = D.Main
    local DungeonGroup = Main3:AddLeftGroupbox("Dungeon", "swords")
    DungeonGroup:AddToggle("AutoDungeon", {
        Text = "Auto Dungeon",
        Default = false,
        Callback = function(k)
            aq.SetAutoDungeon(k)
        end
    })
    DungeonGroup:AddToggle("AutoAttackSpeed", {
        Text = "Auto 4x Attack Speed",
        Default = false,
        Callback = function(m)
            aq.SetAutoAttackSpeed(m)
        end
    })
    local Main2 = D.Main
    local UpgradesGroup = Main2:AddRightGroupbox("Upgrades", "arrow-up")
    UpgradesGroup:AddToggle("AutoBuyUpgrades", {
        Text = "Auto Buy Upgrades",
        Default = false,
        Callback = function(f)
            aq.SetAutoUpgrades(f)
        end
    })
    local T_11 = {}
    local dk_1 = J
    local dj_1 = ipairs
    for k, v in dj_1(dk_1) do
        table.insert(T_11, v.Label)
    end
    UpgradesGroup:AddDropdown("SelectedUpgrades", {
        Text = "Upgrades",
        Values = T_11,
        Default = {},
        Multi = true,
        AllowNull = true,
        Callback = function(g)
            aq.SetUpgrades(g)
        end
    })
    local Main = D.Main
    local ShopGroup = Main:AddRightGroupbox("Shop", "shopping-cart")
    ShopGroup:AddToggle("AutoBuyFood", {
        Text = "Auto Buy Food",
        Default = false,
        Callback = function(j)
            aq.SetAutoBuyFood(j)
        end
    })
    local Foods = B.Foods
    local dj_2 = {}
    local function onSelectedFoods(j)
        aq.SetFoods(j)
    end
    ShopGroup:AddDropdown("SelectedFoods", {
        Text = "Food",
        Values = Foods,
        Default = dj_2,
        Multi = true,
        AllowNull = true,
        Callback = onSelectedFoods
    })
end
local function fn824()
    return CoreGui
end
local function fn833()
    local aN = "Item:" .. H
    local am = ((function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_61 = bit32.bxor(l, k)
            l = bit32.band(l_61 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_62 = bit32.bxor(l, e)
            l = bit32.band(l_62 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(LocalPlayer:GetAttribute("BackpackHeldKind"), 4, 437357260, "Item"))
    local aZ = if am then 1 else 0
    local aR = 2899 * aZ + 11 * (1 - aZ)
    local a5 = 1691 * aZ + 663 * (1 - aZ)
    if (aR * 1508 + a5 * 773 + aR * a5) % 16777213 == 10581044 then
        am = LocalPlayer:GetAttribute("BackpackHeldItemId") == H
    end
    if am then
        am = LocalPlayer:GetAttribute("BackpackHeldEntryKey") == aN
    end
    return am
end
local function fn841(l)
    local ax, af, an
    local a2 = 2
    while true do
        a2 += 1338
        if a2 < 3254 then
            if a2 < 1340 then
                if a2 < 1339 then
                    if a2 == 1338 then
                        an = af
                        a2 = 3
                    else
                        break
                    end
                else
                    break
                end
            elseif a2 < 1341 then
                if a2 == 1340 then
                    ax = {}
                    local Stacks = l.Stacks
                    af = {}
                    an = Stacks
                    a2 = if an then 3 else 0
                else
                    a2 = 10503
                    continue
                end
            elseif a2 == 1341 then
                for k, v in pairs(an) do
                    local af_1 = tonumber(k)
                    local an_2 = af_1
                    if an_2 then
                        local B_5 = tonumber(v) or 0
                        an_2 = B_5 > 0
                    end
                    if an_2 then
                        an_2 = r(af_1)
                    end
                    local B_6 = an_2
                    if B_6 then
                        table.insert(ax, { V = math.floor(af_1), Attack = B_6 })
                    end
                end
                table.sort(ax, function(l, k)
                    return l.Attack > k.Attack
                end)
                return ax
            else
                a2 = 3254
                continue
            end
        else
            break
        end
    end
end
local function fn851(g)
    if not g then
        ah("AutoAttackSpeed")
        return
    end
    C("AutoAttackSpeed", 0.1, function()
        local State, ak, S, af, ai, G, an, al, bd
        local a6_1
        local a8 = 16
        while true do
            a8 += 1280
            if a8 < 1296 then
                if a8 < 1288 then
                    if a8 < 1284 then
                        if a8 < 1282 then
                            if a8 < 1281 then
                                if a8 == 1280 then
                                    an = State.attackSpeedMultiplier
                                    local s_1 = if an then 1 else 0
                                    local aj_2 = 321 * s_1 + 2784 * (1 - s_1)
                                    local x_1 = 1476 * s_1 + 676 * (1 - s_1)
                                    a8 = if (aj_2 * 2835 + x_1 * 2307 + aj_2 * x_1) % 16777213 == 4788963 then 2 else 21
                                else
                                    break
                                end
                            elseif a8 == 1281 then
                                ak = ((function(n, p, q, o)
                                    if type(n) ~= "string" then
                                        return false
                                    end
                                    if #n ~= p then
                                        return false
                                    end
                                    local l = 5381
                                    local j = buffer.fromstring(n)
                                    local m = 0
                                    while m <= p - 4 do
                                        local k = buffer.readu32(j, m)
                                        local l_69 = bit32.bxor(l, k)
                                        l = bit32.band(l_69 * 33, 4294967295)
                                        m = m + 4
                                    end
                                    while m < p do
                                        local e = buffer.readu8(j, m)
                                        local l_70 = bit32.bxor(l, e)
                                        l = bit32.band(l_70 * 33, 4294967295)
                                        m = m + 1
                                    end
                                    if l ~= q then
                                        return false
                                    end
                                    return n == o
                                end)(State.status, 5, 41903342, "ready"))
                                local s_2 = if ak then 1 else 0
                                local aj_3 = 2924 * s_2 + 546 * (1 - s_2)
                                local x_2 = 874 * s_2 + 3127 * (1 - s_2)
                                a8 = if (aj_3 * 3379 + x_2 * 3171 + aj_3 * x_2) % 16777213 == 15207226 then 3 else 18
                            else
                                a8 = 1285
                                continue
                            end
                        elseif a8 < 1283 then
                            al = math.max
                            bd = State.clickUpdatedAt
                            a8 = if bd then 10 else 17
                        else
                            a8 = if ak then 13 else 23
                        end
                    elseif a8 < 1286 then
                        if a8 < 1285 then
                            S = aN:GetServerTimeNow()
                            ai = ak.Project
                            G = State.clickScore
                            local s_3 = if G then 1 else 0
                            local aj_4 = 3933 * s_3 + 4017 * (1 - s_3)
                            local x_3 = 1224 * s_3 + 206 * (1 - s_3)
                            a8 = if (aj_4 * 1074 + x_3 * 3940 + aj_4 * x_3) % 16777213 == 13860594 then 0 else 25
                        else
                            a8 = 6
                        end
                    elseif a8 < 1287 then
                        break
                    else
                        ak = not (function(n, p, q, o)
                            if type(n) ~= "string" then
                                return false
                            end
                            if #n ~= p then
                                return false
                            end
                            local l = 5381
                            local j = buffer.fromstring(n)
                            local m = 0
                            while m <= p - 4 do
                                local k = buffer.readu32(j, m)
                                local l_67 = bit32.bxor(l, k)
                                l = bit32.band(l_67 * 33, 4294967295)
                                m = m + 4
                            end
                            while m < p do
                                local e = buffer.readu8(j, m)
                                local l_68 = bit32.bxor(l, e)
                                l = bit32.band(l_68 * 33, 4294967295)
                                m = m + 1
                            end
                            if l ~= q then
                                return false
                            end
                            return n == o
                        end)(type(State), 5, 248602996, "table")
                        a8 = 24
                    end
                elseif a8 < 1292 then
                    if a8 < 1290 then
                        if a8 < 1289 then
                            return
                        end
                        a8 = if ai then 12 else 4
                    elseif a8 < 1291 then
                        if a8 == 1290 then
                            local dC = S - bd
                            local dB = al(dC, 0)
                            al, a6_1 = ai(G, an, dB, af)
                            a8 = if a6_1 < 4 then 22 else 5
                        else
                            a8 = 1280
                            continue
                        end
                    elseif a8 == 1291 then
                        S = B.DungeonConfig.ClickBoost
                        a8 = 20
                    else
                        a8 = 4965
                        continue
                    end
                elseif a8 < 1294 then
                    if a8 < 1293 then
                        return
                    end
                    return
                elseif a8 < 1295 then
                    if a8 == 1294 then
                        ai = S
                        a8 = 9
                    else
                        a8 = 1283
                        continue
                    end
                else
                    a8 = if ak then 8 else 1
                end
            elseif a8 < 1304 then
                if a8 < 1300 then
                    if a8 < 1298 then
                        if a8 < 1297 then
                            if a8 == 1296 then
                                State = U.State
                                ak = not aw()
                                a8 = if ak then 24 else 7
                            else
                                a8 = 1301
                                continue
                            end
                        elseif a8 == 1297 then
                            bd = S
                            a8 = 10
                        else
                            a8 = 1291
                            continue
                        end
                    elseif a8 < 1299 then
                        if a8 == 1298 then
                            ak = (function(n, p, q, o)
                                if type(n) ~= "string" then
                                    return false
                                end
                                if #n ~= p then
                                    return false
                                end
                                local l = 5381
                                local j = buffer.fromstring(n)
                                local m = 0
                                while m <= p - 4 do
                                    local k = buffer.readu32(j, m)
                                    local l_65 = bit32.bxor(l, k)
                                    l = bit32.band(l_65 * 33, 4294967295)
                                    m = m + 4
                                end
                                while m < p do
                                    local e = buffer.readu8(j, m)
                                    local l_66 = bit32.bxor(l, e)
                                    l = bit32.band(l_66 * 33, 4294967295)
                                    m = m + 1
                                end
                                if l ~= q then
                                    return false
                                end
                                return n == o
                            end)(State.status, 5, 1349568388, "ended")
                            a8 = 3
                        else
                            a8 = 1302
                            continue
                        end
                    else
                        ak = not (function(n, p, q, o)
                            if type(n) ~= "string" then
                                return false
                            end
                            if #n ~= p then
                                return false
                            end
                            local l = 5381
                            local j = buffer.fromstring(n)
                            local m = 0
                            while m <= p - 4 do
                                local k = buffer.readu32(j, m)
                                local l_63 = bit32.bxor(l, k)
                                l = bit32.band(l_63 * 33, 4294967295)
                                m = m + 4
                            end
                            while m < p do
                                local e = buffer.readu8(j, m)
                                local l_64 = bit32.bxor(l, e)
                                l = bit32.band(l_64 * 33, 4294967295)
                                m = m + 1
                            end
                            if l ~= q then
                                return false
                            end
                            return n == o
                        end)(type(State.sessionId), 6, 2175009567, "string")
                        a8 = 15
                    end
                elseif a8 < 1302 then
                    if a8 < 1301 then
                        if a8 == 1300 then
                            af = S
                            S = not af
                            ai = not ak
                            a8 = if ai then 9 else 14
                        else
                            a8 = 15704
                            continue
                        end
                    elseif a8 == 1301 then
                        an = 1
                        a8 = 2
                    else
                        a8 = 10949
                        continue
                    end
                elseif a8 < 1303 then
                    if a8 == 1302 then
                        local sessionId = State.sessionId
                        local dE = "Click"
                        Q("DungeonCommand", { Action = dE, SessionId = sessionId })
                        a8 = 5
                    else
                        a8 = 1284
                        continue
                    end
                elseif a8 == 1303 then
                    ak = B.ClickBoost
                    S = B.DungeonConfig
                    a8 = if S then 11 else 20
                else
                    a8 = 1296
                    continue
                end
            elseif a8 < 9335 then
                if a8 < 4965 then
                    if a8 < 1305 then
                        if a8 == 1304 then
                            a8 = if ak then 15 else 19
                        else
                            a8 = 1288
                            continue
                        end
                    elseif a8 == 1305 then
                        G = 0
                        a8 = 0
                    else
                        break
                    end
                else
                    break
                end
            else
                break
            end
        end
    end)
end
local function fn854()
    local ah_1
    local L_4
    L_4, ah_1 = pcall(B.PlayerData.GetPlayerFood, q())
    local aZ = L_4
    if aZ then
        local floor = math.floor
        local a4 = tonumber(ah_1) or 0
        aZ = floor(a4)
    end
    return aZ or 0
end
local function fn873(k)
    local a0 = 1
    while true do
        a0 += 7943
        if a0 < 7944 then
            break
        elseif a0 < 9952 then
            if a0 < 7945 then
                a0 = if not k then 3 else 2
            elseif a0 < 7946 then
                if a0 == 7945 then
                    C("AutoPlace", 1.5, function(g)
                        local ab = 1
                        while true do
                            if ab <= 10 then
                                if not g.Running then
                                    return
                                end
                                local aF = ao()
                                local ay = aF and n(aF)
                                local ay_1 = not ay or (function(o, n)
                                    if type(o) ~= "number" then
                                        return false
                                    end
                                    if o % 1 ~= 0 then
                                        return false
                                    end
                                    local p = o < -2147483648
                                    if p then
                                    else
                                        p = o > 2147483647
                                    end
                                    if p then
                                        return false
                                    end
                                    local q_4 = bit32.bxor(o, 1540483477)
                                    local q_5 = bit32.band(q_4 * 403 + bit32.lshift(q_4, 24), 4294967295)
                                    local q_6 = bit32.bxor(q_5, bit32.rshift(q_5, 13))
                                    return q_6 == n
                                end)(#ay, 544454170)
                                if ay_1 then
                                    return
                                end
                                local ay_2 = aI(aF)[1]
                                if not ay_2 then
                                    return
                                end
                                local dI = ay_2.V
                                local dJ = ay[1]
                                local dK = 1
                                local dL = "Stacks"
                                if not aa(aC, { Count = dK, V = dI, Section = dL, SlotIndex = dJ }) then
                                    break
                                end
                                task.wait(0.6)
                                ab += 1
                                continue
                            end
                            return
                        end
                        return
                    end)
                    a0 = 0
                else
                    a0 = 15005
                    continue
                end
            elseif a0 == 7946 then
                ah("AutoPlace")
                return
            else
                break
            end
        else
            break
        end
    end
end
local function fn882()
    local as_1
    local aG_1
    local I_3
    local ab_2
    I_3, aG_1, ab_2, as_1 = pcall(B.BackPackStore.Load, q())
    local ab_3 = I_3 and aG_1 and (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_71 = bit32.bxor(l, k)
            l = bit32.band(l_71 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_72 = bit32.bxor(l, e)
            l = bit32.band(l_72 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(as_1), 5, 248602996, "table")
    if ab_3 then
        return as_1
    end
    return nil
end
local function fn914(c)
    local y = 11
    while true do
        y += 15031
        if y < 15034 then
            if y < 11786 then
                break
            elseif y < 15031 then
                break
            elseif y < 15032 then
                break
            elseif y < 15033 then
                if y == 15032 then
                    y = 8
                else
                    y = 15040
                    continue
                end
            else
                return c.WorldPosition
            end
        elseif y < 15039 then
            if y < 15036 then
                if y < 15035 then
                    y = if c:IsA("Model") then 10 else 5
                elseif y == 15035 then
                    y = if c:IsA("Attachment") then 2 else 3
                else
                    y = 16115
                    continue
                end
            elseif y < 15037 then
                if y == 15036 then
                    y = 1
                else
                    y = 11786
                    continue
                end
            elseif y < 15038 then
                return c.Position
            elseif y == 15038 then
                return nil
            else
                y = 4236
                continue
            end
        elseif y < 15041 then
            if y < 15040 then
                return nil
            elseif y == 15040 then
                y = if c:IsA("BasePart") then 6 else 4
            else
                y = 15039
                continue
            end
        elseif y < 15042 then
            return c:GetPivot().Position
        elseif y < 16115 then
            if y == 15042 then
                y = if not c then 7 else 9
            else
                y = 16115
                continue
            end
        else
            break
        end
    end
end
local function fn934(l)
    e(v.Rarities, l)
end
local function fn957(m)
    if not m then
        ah("AutoDungeon")
        return
    end
    C("AutoDungeon", 1, function()
        local ah = if af() then 1 else 0
        local aa = 3482 * ah + 206 * (1 - ah)
        local ao = 2435 * ah + 3498 * (1 - ah)
        if (aa * 131 + ao * 984 + aa * ao) % 16777213 == 11330852 then
            return
        end
        local DungeonEntrances = aN:FindFirstChild("DungeonEntrances")
        if not DungeonEntrances then
            return
        end
        local ay = aN:GetServerTimeNow()
        local C = "DungeonUsed_" .. LocalPlayer.UserId
        local GetChildren = DungeonEntrances.GetChildren
        for i, v in ipairs(GetChildren(DungeonEntrances)) do
            local ar_1 = v:GetAttribute("DungeonEntranceId") or v.Name
            local be = tostring(ar_1)
            local ar_2 = tonumber(v:GetAttribute("ExpiresAt")) or 0
            local ProximityPrompt = v:FindFirstChildWhichIsA("ProximityPrompt", true)
            local aX = U.Attempts[be] or { Count = 0, At = 0 }
            local av_2 = ProximityPrompt and ProximityPrompt.Enabled and v:GetAttribute(C) ~= true and ar_2 - ay > 8 and aX.Count < 5 and os.clock() - aX.At >= 6
            local ah_2 = if av_2 then 1 else 0
            local aa_6 = 1932 * ah_2 + 2758 * (1 - ah_2)
            local ao_5 = 1618 * ah_2 + 3118 * (1 - ah_2)
            if (aa_6 * 1675 + ao_5 * 3008 + aa_6 * ao_5) % 16777213 == 11229020 then
                aX.Count = aX.Count + 1
                aX.At = os.clock()
                U.Attempts[be] = aX
                local be_1 = as(ProximityPrompt.Parent) or ProximityPrompt.Parent.Position
                g(ProximityPrompt, be_1)
                return
            end
        end
        local ar_4 = U.Origin and os.clock() - U.LastAttemptAt > 8
        local ah_3 = if ar_4 then 1 else 0
        local aa_7 = 2009 * ah_3 + 2271 * (1 - ah_3)
        local ao_6 = 1049 * ah_3 + 426 * (1 - ah_3)
        if (aa_7 * 1261 + ao_6 * 3875 + aa_7 * ao_6) % 16777213 == 8705665 then
            aL()
        end
    end)
end
local function fn968()
    local Character = LocalPlayer.Character
    local aW = Character and Character:FindFirstChild("HumanoidRootPart")
    return aW
end
local function fn981()
    gethui = aQ
end
local function fn1038(j)
    local DiscordGroup = j:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = I,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn1052(f)
    e(v.Mutations, f)
end
local function fn1059(g)
    local H, ba, T, aW
    local aQ = 4
    while true do
        aQ += 12797
        if aQ < 12798 then
            if aQ < 8472 then
                break
            elseif aQ < 12797 then
                break
            else
                for k, v in pairs(aW) do
                    local ba_5 = tonumber(k)
                    local aW_1 = v and ba_5 and not T[tostring(k)]
                    if aW_1 then
                        table.insert(H, math.floor(ba_5))
                    end
                end
                table.sort(H)
                return H
            end
        elseif aQ < 16169 then
            if aQ < 12800 then
                if aQ < 12799 then
                    aW = ba
                    aQ = 0
                elseif aQ == 12799 then
                    H = {}
                    T = ba
                    local UnlockedAntSlots = g.UnlockedAntSlots
                    ba = {}
                    aW = UnlockedAntSlots
                    aQ = if aW then 0 else 1
                else
                    aQ = 12801
                    continue
                end
            elseif aQ < 12801 then
                if aQ == 12800 then
                    ba = H
                    aQ = 2
                else
                    aQ = 7947
                    continue
                end
            elseif aQ < 12802 then
                local EquippedBySlot = g.EquippedBySlot
                H = {}
                ba = EquippedBySlot
                aQ = if ba then 2 else 3
            else
                break
            end
        else
            break
        end
    end
end
local function fn1076()
    local ah_4
    local a2_9
    a2_9, ah_4 = pcall(B.PlayerData.GetPlayerRollInterval, B.Context, q())
    local af = a2_9 and tonumber(ah_4)
    local a2_10 = af or 3
    return math.max(a2_10, 1) + 0.15
end
local function fn1122(m, c)
    local I
    if L(setclipboard) then
        I = setclipboard
    elseif L(toclipboard) then
        I = toclipboard
    end
    if not I then
        Library.Notify(Library, "Clipboard unavailable")
        return
    end
    local aG = pcall(I, m)
    if aG then
        Library.Notify(Library, c)
    else
        Library.Notify(Library, "Failed to copy")
    end
end
local function fn1134()
    local ai_1
    local Z_2
    Z_2, ai_1 = pcall(aP)
    B.Ready = Z_2
    local aW = not Z_2
    if aW ~= false then
        aW = tostring(ai_1)
    end
    local Z_3 = aW or nil
    B.Error = Z_3
    l = true
end
local function fn1143(e)
    return ((function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_73 = bit32.bxor(l, k)
            l = bit32.band(l_73 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_74 = bit32.bxor(l, e)
            l = bit32.band(l_74 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(e), 8, 2851454103, "function"))
end
local function fn1154()
    local be = 0
    while true do
        be += 3624
        if be < 4156 then
            if be < 3625 then
                if be == 3624 then
                    local eh = an
                    for k in pairs(eh) do
                        ah(k)
                    end
                    be = 1
                else
                    break
                end
            else
                break
            end
        else
            break
        end
    end
end
local function fn1176()
    local ar_5
    local aP_1
    aP_1, ar_5 = pcall(B.PlayerData.GetPlayerGold, q())
    local G = aP_1 and tonumber(ar_5)
    return G or 0
end
local function fn1185()
    local Character = LocalPlayer.Character
    local ac = Character and Character:FindFirstChildOfClass("Humanoid")
    return ac
end
local function fn1203(g)
    local a5 = an[g]
    if a5 then
        a5.Running = false
        an[g] = nil
    end
end
local function fn1264(g)
    local PlayerData = B.PlayerData
    local N = PlayerData.GetPlayerUpgradeAttributeInfo(B.Context, q(), g)
    local aY = not (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_75 = bit32.bxor(l, k)
            l = bit32.band(l_75 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_76 = bit32.bxor(l, e)
            l = bit32.band(l_76 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(type(N), 5, 248602996, "table")
    local a_ = if aY then 1 else 0
    local C = 1353 * a_ + 49 * (1 - a_)
    local D = 628 * a_ + 3954 * (1 - a_)
    if not ((C * 4048 + D * 509 + C * D) % 16777213 == 6646280) then
        aY = N.IsMax
    end
    if aY then
        return false
    else
        local aY_1 = aK()
        local a6 = (tonumber(N.Price))
        local a__1 = if a6 then 1 else 0
        local C_1 = 308 * a__1 + 2258 * (1 - a__1)
        local D_6 = 3411 * a__1 + 339 * (1 - a__1)
        if not ((C_1 * 3136 + D_6 * 1009 + C_1 * D_6) % 16777213 == 5458175) then
            a6 = math.huge
        end
        if aY_1 < a6 then
            return false
        elseif g == ag then
            local aY_2 = PlayerData.GetPlayerUpgradeAttributeLevel(q(), am) or 1
            if not B.LuckQueen.CanUpgradeLuck(N.Level, aY_2) then
                return false
            end
            return Q("UpgradePlayerAttribute", { AttributeName = g })
        elseif g == am then
            local aY_3 = PlayerData.GetPlayerUpgradeAttributeLevel(q(), ag) or 1
            if not B.LuckQueen.CanUpgradeQueen(aY_3, N.Level) then
                return false
            end
            return Q("UpgradePlayerAttribute", { AttributeName = g })
        else
            return Q("UpgradePlayerAttribute", { AttributeName = g })
        end
    end
end
local function onOnClientEvent(l, e)
    if not x() then
        return
    end
    if (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_81 = bit32.bxor(l, k)
            l = bit32.band(l_81 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_82 = bit32.bxor(l, e)
            l = bit32.band(l_82 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(l, 13, 2947550375, "RollAntResult") then
        aM(e)
    else
        local a4 = (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_79 = bit32.bxor(l, k)
                l = bit32.band(l_79 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_80 = bit32.bxor(l, e)
                l = bit32.band(l_80 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(l, 19, 3491177365, "SellFoodPriceUpdate") and (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_77 = bit32.bxor(l, k)
                l = bit32.band(l_77 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_78 = bit32.bxor(l, e)
                l = bit32.band(l_78 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(e), 5, 248602996, "table")
        if a4 then
            ab.State = e
            ab.ReceivedAt = os.clock()
        end
    end
end
local function fn1315(f)
    v.SellAtMultiplier = f == true
end
local function fn1318(k)
    e(v.Upgrades, k)
end
local function fn1364(j)
    local a_ = p()
    if a_ and j then
        a_.AssemblyLinearVelocity = Vector3.zero
        a_.CFrame = j
    end
end
r = nil
n = nil
o = nil
p = nil
q = nil
e = nil
l = nil
LocalPlayer = nil
g = nil
u = nil
v = nil
m = nil
x = nil
y = nil
B = nil
C = nil
D = nil
connection = nil
H = nil
I = nil
J = nil
K = nil
L = nil
O = nil
Q = nil
R = nil
S = nil
U = nil
V = nil
W = nil
X = nil
CoreGui = nil
aa = nil
ab = nil
ae = nil
af = nil
local Players, c, j, w, z, A, E, Lighting, TeleportService, N, T, Z, Options, GuiService
ag = nil
ah = nil
ai = nil
aj = nil
HttpService = nil
am = nil
an = nil
ao = nil
aq = nil
as = nil
au = nil
av = nil
aw = nil
ax = nil
aB = nil
aC = nil
Library = nil
aI = nil
aJ = nil
aK = nil
aL = nil
aM = nil
aN = nil
aP = nil
aQ = nil
aR = nil
local Toggles, ap, SaveManager, VirtualUser, ay, ThemeManager, UserInputService, aD, aF, RunService, aH, aO, aS, aT, aU, aW, aX, aY, a_, a0, a1, a3
local a4, a5
a5 = if not game:IsLoaded() then 1 else 0
local ib = 1 - a5
a3 = 17 * a5 + 968 * ib
ib = 1 - a5
a4 = 3137 * a5 + 2163 * ib
ib = 16777213
if (a3 * 2254 + a4 * 1690 + a3 * a4) % ib == 5393177 then
    aT = game.Loaded
    aT.Wait(aT)
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, LocalPlayer, aQ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local kT = game
local aV = kT:GetService("ReplicatedStorage")
kT = game
RunService = kT:GetService("RunService")
kT = game
UserInputService = kT:GetService("UserInputService")
kT = game
VirtualUser = kT:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
local eC = game
GuiService = eC:GetService("GuiService")
eC = game
CoreGui = eC:GetService("CoreGui")
eC = game
TeleportService = eC:GetService("TeleportService")
eC = game
Lighting = eC:GetService("Lighting")
eC = game
aW = eC:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
aU = "OuroborosBuildAnAntEmpire"
aQ = fn824
if getgenv then
    getgenv().gethui = aQ
end
aq, o, aN, am, ag, S, J, B, L, x, u, aP = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn981)
aX = function(c)
    local ae
    local av
    local ay
    local az, aD
    local ac = 2
    while true do
        ac += 9227
        if ac < 9227 then
            break
        elseif ac < 9232 then
            if ac < 9229 then
                if ac < 9228 then
                    break
                elseif ac == 9228 then
                    aD = az
                    ac = 6
                else
                    ac = 13883
                    continue
                end
            elseif ac < 9230 then
                if ac == 9229 then
                    local gV = type(c)
                    local gX = (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_95 = bit32.bxor(l, k)
                            l = bit32.band(l_95 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_96 = bit32.bxor(l, e)
                            l = bit32.band(l_96 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(gV, 6, 2175009567, "string")
                    az = not (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_93 = bit32.bxor(l, k)
                            l = bit32.band(l_93 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_94 = bit32.bxor(l, e)
                            l = bit32.band(l_94 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(c, 0, 5381, "")
                    aD = gX
                    ac = if aD then 1 else 6
                else
                    ac = 9228
                    continue
                end
            elseif ac < 9231 then
                if ac == 9230 then
                    aD = (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_91 = bit32.bxor(l, k)
                            l = bit32.band(l_91 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_92 = bit32.bxor(l, e)
                            l = bit32.band(l_92 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(az.Unload), 8, 2851454103, "function")
                    ac = 4
                else
                    ac = 9231
                    continue
                end
            elseif ac == 9231 then
                assert(aD, "Namespace is occupied")
                az.Unload()
                assert(ae[c] == nil, "Previous instance did not release its namespace")
                ac = 7
            else
                ac = 9234
                continue
            end
        elseif ac < 9234 then
            if ac < 9233 then
                if ac == 9232 then
                    aD = ((function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_89 = bit32.bxor(l, k)
                            l = bit32.band(l_89 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_90 = bit32.bxor(l, e)
                            l = bit32.band(l_90 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(az), 5, 248602996, "table"))
                    ac = if aD then 3 else 4
                else
                    ac = 8540
                    continue
                end
            else
                assert(aD, "Namespace is required")
                assert((function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_87 = bit32.bxor(l, k)
                        l = bit32.band(l_87 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_88 = bit32.bxor(l, e)
                        l = bit32.band(l_88 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(getgenv), 8, 2851454103, "function"), "getgenv is unavailable")
                ae = getgenv()
                assert((function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_85 = bit32.bxor(l, k)
                        l = bit32.band(l_85 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_86 = bit32.bxor(l, e)
                        l = bit32.band(l_86 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(ae), 5, 248602996, "table"), "getgenv did not return a table")
                az = ae[c]
                ac = if az ~= nil then 5 else 7
            end
        elseif ac < 13883 then
            if ac == 9234 then
                av = {}
                ay = { State = {}, Unloaded = false }
                ay.Track = function(c)
                    assert((function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_83 = bit32.bxor(l, k)
                            l = bit32.band(l_83 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_84 = bit32.bxor(l, e)
                            l = bit32.band(l_84 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(c), 8, 2851454103, "function"), "Cleanup must be callable")
                    if ay.Unloaded then
                        c()
                    else
                        table.insert(av, c)
                    end
                    return c
                end
                ay.Unload = function()
                    local aY, at, bd, E, aH, Y, a6, C
                    local aJ_1
                    local a_ = 6
                    while true do
                        a_ += 4455
                        if a_ < 4464 then
                            if a_ < 4459 then
                                if a_ < 4458 then
                                    if a_ < 4457 then
                                        if a_ < 3965 then
                                            break
                                        elseif a_ < 4455 then
                                            break
                                        elseif a_ < 4456 then
                                            if a_ == 4455 then
                                                ae[c] = nil
                                                a_ = 1
                                            else
                                                a_ = 2030
                                                continue
                                            end
                                        else
                                            a_ = if #aY > 0 then 11 else 14
                                        end
                                    else
                                        a_ = if Y > 0 and a6 <= 1 or Y <= 0 and a6 >= 1 then 9 else 10
                                    end
                                elseif a_ == 4458 then
                                    table.insert(aY, tostring(at))
                                    a_ = 5
                                else
                                    a_ = 4460
                                    continue
                                end
                            elseif a_ < 4461 then
                                if a_ < 4460 then
                                    a_ = if (bd * 293 + E * 2175 + bd * E) % 16777213 == 1171077 then 12 else 13
                                else
                                    a_ = 16
                                end
                            elseif a_ < 4462 then
                                aH = if ay.Unloaded then 1 else 0
                                bd = 1413 * aH + 1305 * (1 - aH)
                                a_ = 15
                            elseif a_ < 4463 then
                                break
                            elseif a_ == 4463 then
                                local ad_2 = table.remove(av, C)
                                aJ_1, at = pcall(ad_2)
                                a_ = if not aJ_1 then 3 else 5
                            else
                                a_ = 6292
                                continue
                            end
                        elseif a_ < 4469 then
                            if a_ < 4466 then
                                if a_ < 4465 then
                                    C = a6
                                    a_ = 8
                                elseif a_ == 4465 then
                                    table.clear(ay.State)
                                    a_ = if ae[c] == ay then 0 else 1
                                else
                                    a_ = 6993
                                    continue
                                end
                            elseif a_ < 4467 then
                                if a_ == 4466 then
                                    local g5 = table.concat(aY, "; ")
                                    error("Cleanup incomplete: " .. g5, 0)
                                    a_ = 14
                                else
                                    a_ = 4467
                                    continue
                                end
                            elseif a_ < 4468 then
                                if a_ == 4467 then
                                    return
                                end
                                a_ = 13952
                                continue
                            elseif a_ == 4468 then
                                ay.Unloaded = true
                                aY = {}
                                local ad_3 = #av
                                local aJ_2 = -1
                                a6 = ad_3
                                Y = aJ_2
                                a_ = 2
                            else
                                a_ = 6993
                                continue
                            end
                        elseif a_ < 5203 then
                            if a_ < 4470 then
                                a_ = 7
                            elseif a_ < 4471 then
                                E = 211 * aH + 1890 * (1 - aH)
                                a_ = 4
                            elseif a_ == 4471 then
                                a6 += Y
                                a_ = 2
                            else
                                a_ = 4470
                                continue
                            end
                        else
                            break
                        end
                    end
                end
                ae[c] = ay
                return ay
            end
            ac = 9231
        else
            break
        end
    end
end
a1 = function(c, e)
    local u
    local T = 3
    while true do
        T += 3015
        if T < 3918 then
            if T < 3017 then
                if T < 2877 then
                    break
                elseif T < 3015 then
                    break
                elseif T < 3016 then
                    if T == 3015 then
                        assert(u, "FeatureAPI required")
                        u = ((function(n, p, q, o)
                            if type(n) ~= "string" then
                                return false
                            end
                            if #n ~= p then
                                return false
                            end
                            local l = 5381
                            local j = buffer.fromstring(n)
                            local m = 0
                            while m <= p - 4 do
                                local k = buffer.readu32(j, m)
                                local l_105 = bit32.bxor(l, k)
                                l = bit32.band(l_105 * 33, 4294967295)
                                m = m + 4
                            end
                            while m < p do
                                local e = buffer.readu8(j, m)
                                local l_106 = bit32.bxor(l, e)
                                l = bit32.band(l_106 * 33, 4294967295)
                                m = m + 1
                            end
                            if l ~= q then
                                return false
                            end
                            return n == o
                        end)(type(e), 5, 248602996, "table"))
                        local t = if u then 1 else 0
                        local aR = 2927 * t + 743 * (1 - t)
                        local aL = 4069 * t + 1286 * (1 - t)
                        T = if (aR * 3972 + aL * 692 + aR * aL) % 16777213 == 9574542 then 1 else 4
                    else
                        T = 3286
                        continue
                    end
                elseif T == 3016 then
                    u = (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_103 = bit32.bxor(l, k)
                            l = bit32.band(l_103 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_104 = bit32.bxor(l, e)
                            l = bit32.band(l_104 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(e.OnUnload), 8, 2851454103, "function")
                    T = 4
                else
                    T = 212
                    continue
                end
            elseif T < 3019 then
                if T < 3018 then
                    break
                end
                u = ((function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_101 = bit32.bxor(l, k)
                        l = bit32.band(l_101 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_102 = bit32.bxor(l, e)
                        l = bit32.band(l_102 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(c), 5, 248602996, "table"))
                T = if u then 5 else 0
            elseif T < 3020 then
                assert(u, "UI library required")
                assert((function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_99 = bit32.bxor(l, k)
                        l = bit32.band(l_99 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_100 = bit32.bxor(l, e)
                        l = bit32.band(l_100 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(e.Unload), 8, 2851454103, "function"), "UI unload required")
                c.Track(function()
                    if not e.Unloaded then
                        e.Unload(e)
                    end
                end)
                e:OnUnload(function()
                    c.Unload()
                end)
                T = 2
            elseif T < 3286 then
                if T == 3020 then
                    u = (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_97 = bit32.bxor(l, k)
                            l = bit32.band(l_97 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_98 = bit32.bxor(l, e)
                            l = bit32.band(l_98 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(type(c.Track), 8, 2851454103, "function")
                    T = 0
                else
                    T = 2877
                    continue
                end
            else
                break
            end
        else
            break
        end
    end
end
aq = aX(aU)
aT = fn193
L = fn1143
x = fns.fn46
o = aT(aV)
aN = aT(aW)
a0 = "巢穴层数"
a_ = "蚂蚁移速"
local aZ = "蚂蚁攻击力"
am = "蚁后等级"
ag = "幸运值"
S = {
    "Common",
    "Uncommon",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Exotic",
    "Secret",
    "Divine",
    "OP",
    "Celestial"
}
J = {
    { Label = "Nest Layer", Attr = a0 },
    { Label = "Ant Speed", Attr = a_ },
    { Label = "Ant Attack", Attr = aZ },
    { Label = "Queen Level", Attr = am },
    { Label = "Roll Luck", Attr = ag },
    { Label = "Roll Count", Attr = "单抽数量" },
    { Label = "Compost Machine", Compost = true }
}
B = {
    Ready = false,
    Error = nil,
    Mutations = {},
    MutationIds = {},
    Foods = {},
    FoodIds = {},
    FoodPrices = {}
}
u = function()
    local c
    local function e(e)
        local aq_1
        local aC_4
        aC_4, aq_1 = pcall(e)
        if aC_4 then
            return aq_1
        end
        return nil
    end
    local kJ = "Game"
    local kK = 30
    local Battle = (o:WaitForChild("Battle", 30))
    c = Battle:WaitForChild(kJ, kK)
    B.EventBus = e(function()
        return require(o.Packages.EventBus)
    end)
    B.IndexModel = e(function()
        return require(o.UI.Index.Model.IndexModel)
    end)
    B.DungeonConfig = e(function()
        return require(c.Config.DungeonConfig)
    end)
    B.ClickBoost = e(function()
        return require(c.Dungeon.ClickBoost)
    end)
    B.StarConfig = e(function()
        return require(c.Config.StarRollConfig)
    end)
    B.BlackMarket = e(function()
        return require(c.Helper.Activities.BlackMarket.Config)
    end)
    B.ActivityAttributes = e(function()
        return require(c.Helper.Activities.ActivityScheduleConfig).WorkspaceAttributes
    end)
end
aP = fn525
l = nil
l = false
task.delay(0, fn1134)
aT = os.clock()
while true do
    aU = not l and os.clock() - aT < 60
    if aU then
        task.wait()
        continue
    end
    break
end
if not l then
    B.Error = "Timed out binding game modules"
end
aC, av, an, v, ae, Z, N, H, y, Q, q, aK, W, aO, ao, r, aI, n, O, aa, ah, C, e, au, ax, m, aM, R, aJ, aB, E, c = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Q = fn761
q = fn196
aK = fn1176
W = fn854
aO = fn212
aC = "/背包系统/背包装备单位?购买"
av = "/背包系统/背包装备最佳单位?购买"
ao = fn882
r = fn715
aI = fn841
n = fn1059
O = fn293
aa = function(m, f)
    local aG_2
    local bb_1
    bb_1, aG_2 = pcall(function()
        return B.WuKong:ExecuteAction(m, "__null__", "__null__", { HttpService:JSONEncode(f) })
    end)
    return bb_1 and aG_2 ~= false
end
an = {}
ah = fn1203
C = function(g, k, j)
    local u
    ah(g)
    if not B.Ready then
        return
    end
    u = { Running = true }
    an[g] = u
    task.delay(0, function()
        local av, a3
        local aX = 14
        while true do
            aX += 16118
            if aX < 16127 then
                if aX < 16122 then
                    if aX < 16121 then
                        if aX < 16120 then
                            if aX < 16119 then
                                if aX < 8318 then
                                    break
                                elseif aX < 13113 then
                                    break
                                elseif aX < 16118 then
                                    break
                                else
                                    av = u.Running
                                    aX = if av then 7 else 3
                                end
                            else
                                aX = if av then 8 else 9
                            end
                        elseif aX == 16120 then
                            task.wait(0.1)
                            aX = 27
                        else
                            aX = 2469
                            continue
                        end
                    elseif aX == 16121 then
                        aX = if av then 6 else 10
                    else
                        aX = 16144
                        continue
                    end
                elseif aX < 16125 then
                    if aX < 16123 then
                        aX = 18
                    elseif aX < 16124 then
                        if aX == 16123 then
                            a3 = k
                            aX = 19
                        else
                            aX = 16121
                            continue
                        end
                    else
                        av = os.clock() < a3
                        aX = 10
                    end
                elseif aX < 16126 then
                    if aX == 16125 then
                        av = x()
                        aX = 3
                    else
                        aX = 16143
                        continue
                    end
                else
                    aX = if aO() then 20 else 16
                end
            elseif aX < 16138 then
                if aX < 16134 then
                    if aX < 16129 then
                        if aX < 16128 then
                            aX = 13
                        elseif aX == 16128 then
                            aX = if av then 2 else 23
                        else
                            aX = 16131
                            continue
                        end
                    elseif aX < 16131 then
                        if aX < 16130 then
                            local lW = tostring(a3)
                            local lV = g .. ": " .. lW
                            warn("[Ouroboros] " .. lV)
                            aX = 25
                        else
                            break
                        end
                    elseif aX < 16132 then
                        aX = 12
                    elseif aX < 16133 then
                        aX = 26
                    elseif aX == 16133 then
                        av = k()
                        aX = 21
                    else
                        aX = 16190
                        continue
                    end
                elseif aX < 16136 then
                    if aX < 16135 then
                        if aX == 16134 then
                            av = ((function(n, p, q, o)
                                if type(n) ~= "string" then
                                    return false
                                end
                                if #n ~= p then
                                    return false
                                end
                                local l = 5381
                                local j = buffer.fromstring(n)
                                local m = 0
                                while m <= p - 4 do
                                    local k = buffer.readu32(j, m)
                                    local l_107 = bit32.bxor(l, k)
                                    l = bit32.band(l_107 * 33, 4294967295)
                                    m = m + 4
                                end
                                while m < p do
                                    local e = buffer.readu8(j, m)
                                    local l_108 = bit32.bxor(l, e)
                                    l = bit32.band(l_108 * 33, 4294967295)
                                    m = m + 1
                                end
                                if l ~= q then
                                    return false
                                end
                                return n == o
                            end)(type(k), 8, 2851454103, "function"))
                            aX = if av then 15 else 21
                        else
                            aX = 16129
                            continue
                        end
                    elseif aX == 16135 then
                        aX = 0
                    else
                        aX = 16137
                        continue
                    end
                elseif aX < 16137 then
                    if aX == 16136 then
                        aX = 26
                    else
                        aX = 16138
                        continue
                    end
                else
                    av = a3
                    a3 = os.clock() + av
                    aX = 17
                end
            elseif aX < 16142 then
                if aX < 16140 then
                    if aX < 16139 then
                        av, a3 = pcall(j, u)
                        aX = if not av then 11 else 25
                    else
                        a3 = av
                        aX = if a3 then 19 else 5
                    end
                elseif aX < 16141 then
                    if aX == 16140 then
                        av = u.Running
                        aX = if av then 24 else 1
                    else
                        aX = 16119
                        continue
                    end
                elseif aX == 16141 then
                    aX = 4
                else
                    aX = 16129
                    continue
                end
            elseif aX < 16190 then
                if aX < 16144 then
                    if aX < 16143 then
                        av = x()
                        aX = 1
                    elseif aX == 16143 then
                        aX = 16
                    else
                        aX = 16142
                        continue
                    end
                elseif aX < 16145 then
                    aX = 22
                elseif aX == 16145 then
                    aX = 17
                else
                    break
                end
            else
                break
            end
        end
    end)
end
aq.Track(fn1154)
v = {
    Rarities = {},
    Mutations = {},
    Upgrades = {},
    Foods = {},
    SellMultiplier = 1.5,
    SellAtMultiplier = false,
    AutoBuyAnt = false,
    AutoBuyStar = false,
    SellAtBuyer = false
}
e = fn334
au = fn1076
aq.SetAutoRoll = fn431
ax = fn789
m = fn551
aM = fn505
aq.SetAutoBuyAnt = fn363
aq.SetAutoBuyStar = fn794
aq.SetBuyRarities = fn934
aq.SetBuyMutations = fn1052
aq.SetAutoPlace = fn873
aq.SetAutoEquipBest = fns.fn131
R = fn631
aJ = function(f)
    local ab = f
    local aQ = {}
    if ab then
        ab = f:FindFirstChild("AntPos")
    end
    local a5 = ab
    if not a5 then
        return aQ
    else
        local function ab_4(g)
            local aa = tonumber(g.Name)
            local ag = aa and aa >= 1 and g:GetAttribute("SlotBuyable") == true
            if ag then
                table.insert(aQ, math.floor(aa))
            end
        end
        local GetChildren2 = a5.GetChildren
        for i, v in ipairs(GetChildren2(a5)) do
            ab_4(v)
            local GetChildren = v.GetChildren
            for i, v in ipairs(GetChildren(v)) do
                ab_4(v)
            end
        end
        table.sort(aQ)
        return aQ
    end
end
aB = fn415
aq.SetAutoUnlockSlot = fn251
E = fn1264
c = fn181
aq.SetAutoUpgrades = function(g)
    if not g then
        ah("AutoUpgrades")
        return
    end
    C("AutoUpgrades", 1, function(g)
        local aJ_3
        local aT_2
        local aD = 1
        while true do
            aD += 8523
            if aD < 9563 then
                if aD < 8524 then
                    break
                elseif aD == 8524 then
                    local h_ = J
                    for i, v2 in ipairs(h_) do
                        local a8 = v2
                        if not g.Running then
                            return
                        end
                        if v.Upgrades[a8.Label] then
                            aT_2, aJ_3 = pcall(function()
                                if a8.Compost then
                                    return c()
                                end
                                return E(a8.Attr)
                            end)
                            if aT_2 and aJ_3 then
                                task.wait(0.5)
                            end
                        end
                    end
                    aD = 0
                else
                    aD = 3509
                    continue
                end
            else
                break
            end
        end
    end)
end
aq.SetUpgrades = fn1318
aq.SetAutoCollect = fn627
ae = { Owner = nil }
Z = 300
N = 10
H = "Star"
y = "/功能商人/蜗牛活动抽奖?购买"
if B.BlackMarket then
    aT = tonumber(B.BlackMarket.DurationSeconds) or Z
    Z = aT
    aT = tonumber(B.BlackMarket.SellOpenDelaySeconds) or N
    N = aT
end
aT = B.StarConfig and (function(n, p, q, o)
    if type(n) ~= "string" then
        return false
    end
    if #n ~= p then
        return false
    end
    local l = 5381
    local j = buffer.fromstring(n)
    local m = 0
    while m <= p - 4 do
        local k = buffer.readu32(j, m)
        local l_109 = bit32.bxor(l, k)
        l = bit32.band(l_109 * 33, 4294967295)
        m = m + 4
    end
    while m < p do
        local e = buffer.readu8(j, m)
        local l_110 = bit32.bxor(l, e)
        l = bit32.band(l_110 * 33, 4294967295)
        m = m + 1
    end
    if l ~= q then
        return false
    end
    return n == o
end)(type(B.StarConfig.ItemId), 6, 2175009567, "string")
if aT then
    H = B.StarConfig.ItemId
end
ab, A, U, aD, p, aw, aj, w, T, aR, as, X, aF, K, aL, af, g, ay = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
p = fn968
aw = fn167
aj = fns.fn45
w = fn603
T = fn401
aR = fn1364
as = fn914
ab = { State = nil, ReceivedAt = 0 }
X = fn254
aq.SetAutoSell = fns.fn80
aq.SetSellAtMultiplier = fn1315
aq.SetSellMultiplier = fn444
aq.SetAutoBuyFood = function(g)
    local bc
    local as = if not g then 1 else 0
    local r = 1477 * as + 2733 * (1 - as)
    local aO = 612 * as + 3325 * (1 - as)
    if (r * 1215 + aO * 1586 + r * aO) % 16777213 == 3669111 then
        ah("AutoBuyFood")
        return
    end
    bc = 0
    C("AutoBuyFood", 1.5, function(m)
        local GearShop, be
        local ar = 6
        while true do
            ar += 528
            if ar < 533 then
                if ar < 531 then
                    if ar < 529 then
                        if ar == 528 then
                            be = GearShop:GetRemainingSeconds() <= 0
                            ar = if be then 5 else 7
                        else
                            ar = 3732
                            continue
                        end
                    elseif ar < 530 then
                        if ar == 529 then
                            GearShop.Init(GearShop)
                            bc = os.clock()
                            ar = 0
                        else
                            ar = 1852
                            continue
                        end
                    else
                        local Foods = v.Foods
                        for k in pairs(Foods) do
                            if not m.Running then
                                return
                            end
                            be = B.FoodIds[k]
                            local aJ = be and B.FoodPrices[be]
                            local t = aJ
                            if aJ then
                                aJ = GearShop:GetStock(be) > 0
                            end
                            if aJ then
                                aJ = not GearShop:IsPending(be)
                            end
                            if aJ then
                                aJ = aK() >= t
                            end
                            if aJ then
                                if GearShop:Purchase(be) then
                                    task.wait(0.6)
                                end
                            end
                        end
                        ar = 4
                    end
                elseif ar < 532 then
                    if ar == 531 then
                        bc = os.clock()
                        GearShop.RequestSnapshot(GearShop)
                        task.wait(1)
                        ar = 2
                    else
                        ar = 529
                        continue
                    end
                else
                    break
                end
            elseif ar < 3917 then
                if ar < 1852 then
                    if ar < 535 then
                        if ar < 534 then
                            if ar == 533 then
                                be = os.clock() - bc > 10
                                ar = 7
                            else
                                ar = 3732
                                continue
                            end
                        else
                            GearShop = B.GearShop
                            ar = if not GearShop.Initialized then 1 else 0
                        end
                    elseif ar < 1030 then
                        if ar == 535 then
                            local W = if be then 1 else 0
                            local I = 3074 * W + 1232 * (1 - W)
                            local u = 1214 * W + 748 * (1 - W)
                            ar = if (I * 898 + u * 2908 + I * u) % 16777213 == 10022600 then 3 else 2
                        else
                            ar = 13180
                            continue
                        end
                    else
                        break
                    end
                else
                    break
                end
            else
                break
            end
        end
    end)
end
aq.SetFoods = fn243
aq.SetAutoIndex = fns.fn147
aq.SetAutoSnail = fn544
aF = fn349
aq.SetAutoSellBuyer = function(j)
    v.SellAtBuyer = j == true
    if not j then
        ah("AutoSellBuyer")
        return
    end
    C("AutoSellBuyer", 4, function(e)
        local R, aW, v, O, aM
        local au = 1
        while true do
            au += 9626
            if au < 9630 then
                if au < 9124 then
                    break
                elseif au < 9627 then
                    if au < 9305 then
                        break
                    elseif au < 9626 then
                        break
                    else
                        au = if Z - O < N + 1 then 11 else 2
                    end
                elseif au < 9628 then
                    v, O = aj()
                    aM = not (function(n, p, q, o)
                        if type(n) ~= "string" then
                            return false
                        end
                        if #n ~= p then
                            return false
                        end
                        local l = 5381
                        local j = buffer.fromstring(n)
                        local m = 0
                        while m <= p - 4 do
                            local k = buffer.readu32(j, m)
                            local l_111 = bit32.bxor(l, k)
                            l = bit32.band(l_111 * 33, 4294967295)
                            m = m + 4
                        end
                        while m < p do
                            local e = buffer.readu8(j, m)
                            local l_112 = bit32.bxor(l, e)
                            l = bit32.band(l_112 * 33, 4294967295)
                            m = m + 1
                        end
                        if l ~= q then
                            return false
                        end
                        return n == o
                    end)(v, 11, 949875990, "BlackMarket")
                    au = if aM then 7 else 12
                elseif au < 9629 then
                    aW = W()
                    R = aF()
                    local lf = 0
                    v = not R
                    O = aW <= lf
                    au = if O then 3 else 10
                elseif au == 9629 then
                    au = if O then 13 else 5
                else
                    au = 9632
                    continue
                end
            elseif au < 9636 then
                if au < 9633 then
                    if au < 9631 then
                        if au == 9630 then
                            aM = O <= 1
                            au = 8
                        else
                            au = 7282
                            continue
                        end
                    elseif au < 9632 then
                        if au == 9631 then
                            w("BlackMarket", function()
                                local ac = p()
                                if not ac then
                                    return
                                end
                                local CFrame = ac.CFrame
                                T(R.Position, 3)
                                task.wait(0.6)
                                local ac_1 = e.Running and x()
                                local C = if ac_1 then 1 else 0
                                local aY = 253 * C + 3965 * (1 - C)
                                local aH = 1816 * C + 3529 * (1 - C)
                                if (aY * 2043 + aH * 3380 + aY * aH) % 16777213 == 7114407 then
                                    local ac_2 = W()
                                    local aj = B.BlackMarket and B.BlackMarket.Source or "BlackMarket"
                                    Q("SellPlayerFood", { FoodAmount = ac_2, Source = aj })
                                    local ac_3 = os.clock() + 2.5
                                    while true do
                                        local K_1 = os.clock() < ac_3 and W() >= aW and e.Running and x()
                                        if K_1 then
                                            task.wait(0.1)
                                            continue
                                        end
                                        break
                                    end
                                end
                                aR(CFrame)
                            end)
                            au = 9
                        else
                            au = 9638
                            continue
                        end
                    elseif au == 9632 then
                        return
                    else
                        au = 9629
                        continue
                    end
                elseif au < 9634 then
                    if au == 9633 then
                        au = if aM then 8 else 4
                    else
                        au = 8913
                        continue
                    end
                elseif au < 9635 then
                    au = if aM then 6 else 0
                else
                    break
                end
            elseif au < 9639 then
                if au < 9637 then
                    if au == 9636 then
                        O = v
                        au = 3
                    else
                        au = 9633
                        continue
                    end
                elseif au < 9638 then
                    return
                else
                    aM = aw()
                    au = 7
                end
            elseif au < 14731 then
                if au < 14031 then
                    if au == 9639 then
                        return
                    end
                    break
                end
                break
            else
                break
            end
        end
    end)
end
A = { SeenAt = 0 }
aq.SetAutoStrawberryCoins = function(l)
    if not l then
        ah("AutoStrawberryCoins")
        return
    end
    C("AutoStrawberryCoins", 0.3, function(j)
        local D, ax, aO
        local ae = 0
        while true do
            ae += 7621
            if ae < 7626 then
                if ae < 7625 then
                    if ae < 7623 then
                        if ae < 4339 then
                            break
                        elseif ae < 7621 then
                            break
                        elseif ae < 7622 then
                            if ae == 7621 then
                                ax = (aw())
                                ae = if ax then 1 else 10
                            else
                                ae = 7624
                                continue
                            end
                        elseif ae == 7622 then
                            ae = if ax then 11 else 5
                        else
                            ae = 10554
                            continue
                        end
                    elseif ae < 7624 then
                        aO = os.clock() - A.SeenAt > 65
                        ae = 7
                    else
                        break
                    end
                elseif ae == 7625 then
                    D = {}
                    local ln = aN
                    local QueryDescendants = ln.QueryDescendants
                    local lq = "#ActivityCoinPrompt"
                    for k, v in QueryDescendants(ln, lq) do
                        ax = v:IsA("ProximityPrompt") and v.Enabled and v.Parent
                        if ax then
                            table.insert(D, v)
                        end
                    end
                    ae = if (function(o, n)
                        if type(o) ~= "number" then
                            return false
                        end
                        if o % 1 ~= 0 then
                            return false
                        end
                        local p = o < -2147483648
                        if p then
                        else
                            p = o > 2147483647
                        end
                        if p then
                            return false
                        end
                        local q_7 = bit32.bxor(o, 1540483477)
                        local q_8 = bit32.band(q_7 * 403 + bit32.lshift(q_7, 24), 4294967295)
                        local q_9 = bit32.bxor(q_8, bit32.rshift(q_8, 13))
                        return q_9 == n
                    end)(#D, 544454170) then 8 else 6
                else
                    ae = 7624
                    continue
                end
            elseif ae < 7632 then
                if ae < 7629 then
                    if ae < 7627 then
                        if ae == 7626 then
                            ax = aj()
                            aO = not (function(n, p, q, o)
                                if type(n) ~= "string" then
                                    return false
                                end
                                if #n ~= p then
                                    return false
                                end
                                local l = 5381
                                local j = buffer.fromstring(n)
                                local m = 0
                                while m <= p - 4 do
                                    local k = buffer.readu32(j, m)
                                    local l_113 = bit32.bxor(l, k)
                                    l = bit32.band(l_113 * 33, 4294967295)
                                    m = m + 4
                                end
                                while m < p do
                                    local e = buffer.readu8(j, m)
                                    local l_114 = bit32.bxor(l, e)
                                    l = bit32.band(l_114 * 33, 4294967295)
                                    m = m + 1
                                end
                                if l ~= q then
                                    return false
                                end
                                return n == o
                            end)(ax, 14, 440713466, "StrawberryKing")
                            ae = if aO then 2 else 7
                        else
                            ae = 7627
                            continue
                        end
                    elseif ae < 7628 then
                        if ae == 7627 then
                            A.SeenAt = os.clock()
                            w("StrawberryCoins", function()
                                local B
                                local aJ = 1
                                while true do
                                    aJ += 8595
                                    if aJ < 8598 then
                                        if aJ < 7923 then
                                            break
                                        elseif aJ < 8596 then
                                            if aJ < 8595 then
                                                break
                                            end
                                            return
                                        elseif aJ < 8597 then
                                            if aJ == 8596 then
                                                B = p()
                                                aJ = if not B then 0 else 3
                                            else
                                                aJ = 2352
                                                continue
                                            end
                                        else
                                            break
                                        end
                                    elseif aJ < 12663 then
                                        if aJ == 8598 then
                                            local CFrame = B.CFrame
                                            for i, v in ipairs(D) do
                                                B = not j.Running or not x()
                                                if B then
                                                    break
                                                else
                                                    B = v.Parent and v.Enabled and as(v.Parent)
                                                    local aq = B
                                                    if aq then
                                                        T(aq, 2)
                                                        task.wait(0.05)
                                                        fireproximityprompt(v)
                                                        task.wait(0.15)
                                                    end
                                                end
                                            end
                                            aR(CFrame)
                                            aJ = 2
                                        else
                                            aJ = 2352
                                            continue
                                        end
                                    else
                                        break
                                    end
                                end
                            end)
                            ae = 3
                        else
                            ae = 7625
                            continue
                        end
                    else
                        ae = if aO then 9 else 4
                    end
                elseif ae < 7630 then
                    return
                elseif ae < 7631 then
                    return
                elseif ae == 7631 then
                    ax = not L(fireproximityprompt)
                    ae = 1
                else
                    ae = 7643
                    continue
                end
            elseif ae < 10554 then
                if ae < 7643 then
                    if ae == 7632 then
                        return
                    end
                    ae = 7315
                    continue
                end
                break
            else
                break
            end
        end
    end)
end
U = { State = nil, Origin = nil, WasIn = false, LastAttemptAt = 0, Attempts = {}, EnterTries = 0 }
K = fns.fn63
aL = fn687
af = fn477
g = function(m, f)
    local aP = 0
    while true do
        aP += 1864
        if aP < 5339 then
            if aP < 1866 then
                if aP < 1864 then
                    break
                elseif aP < 1865 then
                    aP = if not L(fireproximityprompt) then 1 else 2
                elseif aP == 1865 then
                    return false
                else
                    aP = 1866
                    continue
                end
            elseif aP < 2504 then
                if aP < 1867 then
                    return w("Dungeon", function()
                        local ag = p()
                        if not ag then
                            return
                        end
                        local aH = U.Origin or ag.CFrame
                        U.Origin = aH
                        U.LastAttemptAt = os.clock()
                        T(f, 3)
                        task.wait(0.5)
                        fireproximityprompt(m)
                    end)
                end
                break
            else
                break
            end
        else
            break
        end
    end
end
aq.SetAutoDungeon = fn957
aq.SetAutoAttackSpeed = fn851
aD = { Origin = nil }
ay = fn833
aq.SetAutoStarfall = function(l)
    if not l then
        ah("AutoStarfall")
        return
    end
    C("AutoStarfall", 0.6, function()
        local X = (af())
        local at = if X then 1 else 0
        local aU = 2060 * at + 4074 * (1 - at)
        local bc = 2179 * at + 2279 * (1 - at)
        if not ((aU * 3072 + bc * 2704 + aU * bc) % 16777213 == 16709076) then
            X = aw()
        end
        if not X then
            X = not L(fireproximityprompt)
        end
        if X then
            return
        end
        local StarEvent = aN:FindFirstChild("StarEvent")
        if not StarEvent then
            return
        end
        local Enterpromt = StarEvent:FindFirstChild("Enterpromt")
        local Flippromt = StarEvent:FindFirstChild("Flippromt")
        local X_2 = Enterpromt and Enterpromt:FindFirstChildWhichIsA("ProximityPrompt", true)
        local ap = Flippromt
        local E = X_2
        if ap then
            ap = Flippromt:FindFirstChildWhichIsA("ProximityPrompt", true)
        end
        local A = ap
        local at_1 = if X_2 then 1 else 0
        local aU_2 = 3300 * at_1 + 3471 * (1 - at_1)
        local bc_1 = 1090 * at_1 + 2625 * (1 - at_1)
        if (aU_2 * 3033 + bc_1 * 1221 + aU_2 * bc_1) % 16777213 == 14936790 then
            X_2 = E.Enabled
        end
        if X_2 then
            local X_3 = U.EnterTries < 4
            local at_2 = if X_3 then 1 else 0
            local aU_3 = 885 * at_2 + 2104 * (1 - at_2)
            local bc_2 = 892 * at_2 + 2534 * (1 - at_2)
            if (aU_3 * 3992 + bc_2 * 1150 + aU_3 * bc_2) % 16777213 == 5348140 then
                X_3 = os.clock() - U.LastAttemptAt >= 5
            end
            if X_3 then
                U.EnterTries = U.EnterTries + 1
                g(E, Enterpromt.Position)
            end
            return
        end
        U.EnterTries = 0
        local X_4 = ao()
        local z_1 = "Item:" .. H
        local ap_3 = X_4 and X_4.ItemStacks and tonumber(X_4.ItemStacks[H])
        local at_3 = if (ap_3 or 0) <= 0 then 1 else 0
        local aU_4 = 1523 * at_3 + 344 * (1 - at_3)
        local bc_3 = 86 * at_3 + 699 * (1 - at_3)
        if (aU_4 * 3831 + bc_3 * 1381 + aU_4 * bc_3) % 16777213 == 6084357 then
            if aD.Origin then
                w("Starfall", function()
                    aR(aD.Origin)
                    aD.Origin = nil
                end)
            end
            return
        end
        if not ay() then
            local FireServer = B.Remote.FireServer
            local Remote = B.Remote
            local t = X_4.Positions and X_4.Positions[z_1]
            pcall(FireServer, Remote, "SetBackpackHeldEntry", { Kind = "Item", EntryKey = z_1, ItemId = H, Pos = t })
            task.wait(0.4)
        end
        if A and A.Enabled then
            w("Starfall", function()
                local L = p()
                if not L then
                    return
                end
                local y = aD.Origin or L.CFrame
                aD.Origin = y
                T(Flippromt.Position, 3)
                task.wait(0.4)
                fireproximityprompt(A)
            end)
        end
    end)
end
if B.Ready then
    connection = nil
    connection = B.Remote.OnClientEvent:Connect(onOnClientEvent)
    aq.Track(fn713)
    aT = B.EventBus and L(B.EventBus.Connect)
    if aT then
        ai = nil
        aU, ai = pcall(B.EventBus.Connect, fn650)
        aT = aU and ai
        if aT then
            aq.Track(fn292)
        end
    end
end
I, z, j, aS, Library, ThemeManager, SaveManager, Toggles, Options, D, V, aH, ap = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
I = "https://discord.gg/synapsex"
z = "https://rscripts.net/@Ouroboros"
j = "https://ouroboros-hub-rbx.web.app/"
aU = "v0.3"
aS = "Build An Ant Empire"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
a1(aq, Library)
V = fn1122
aH = fn742
ap = fn1185
local oU = { { Text = I, Copyable = true }, "|", aS, "|", aU }
local oV = { TabSwitch = true }
aV = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = oU,
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = oV
})
D = {
    Info = aV:AddTab("Info", "info"),
    Main = aV:AddTab("Main", "gamepad-2"),
    Player = aV:AddTab("Player", "person-standing"),
    Settings = aV:AddTab("Settings", "settings")
}
aW = fn1038
for k2, v in D do
    local bd = v
    if not (function(n, p, q, o)
        if type(n) ~= "string" then
            return false
        end
        if #n ~= p then
            return false
        end
        local l = 5381
        local j = buffer.fromstring(n)
        local m = 0
        while m <= p - 4 do
            local k = buffer.readu32(j, m)
            local l_115 = bit32.bxor(l, k)
            l = bit32.band(l_115 * 33, 4294967295)
            m = m + 4
        end
        while m < p do
            local e = buffer.readu8(j, m)
            local l_116 = bit32.bxor(l, e)
            l = bit32.band(l_116 * 33, 4294967295)
            m = m + 1
        end
        if l ~= q then
            return false
        end
        return n == o
    end)(k2, 4, 1547035852, "Info") then
        aW(bd)
    end
end
aT = fn796
aT()
aU = function()
    local aQ
    local am
    local W
    local aB
    local E
    local ad, Label3, a3, bc, A, Label, aU, Label2, as, v, aW, y
    local ah = 2
    while true do
        ah += 9242
        if ah < 9248 then
            if ah < 9243 then
                if ah < 8537 then
                    break
                elseif ah < 9242 then
                    break
                elseif ah == 9242 then
                    v = string.sub(A, 1, 18) .. "..."
                    ah = 9
                else
                    ah = 8537
                    continue
                end
            elseif ah < 9245 then
                if ah < 9244 then
                    if ah == 9243 then
                        local aW_2 = y
                        W = os.clock()
                        ad = function()
                            local av
                            local t = 7
                            while true do
                                t += 11277
                                if t < 11277 then
                                    break
                                elseif t < 11282 then
                                    if t < 11279 then
                                        if t < 11278 then
                                            if t == 11277 then
                                                t = if av < 3600 then 5 else 1
                                            else
                                                t = 6167
                                                continue
                                            end
                                        elseif t == 11278 then
                                            local oc = av // 3600
                                            local od = av % 3600 // 60
                                            local oe = "%dh %dm"
                                            return string.format(oe, oc, od)
                                        else
                                            t = 9059
                                            continue
                                        end
                                    elseif t < 11280 then
                                        if t == 11279 then
                                            return av .. "s"
                                        end
                                        t = 11283
                                        continue
                                    elseif t < 11281 then
                                        if t == 11280 then
                                            t = 6
                                        else
                                            t = 14642
                                            continue
                                        end
                                    elseif t == 11281 then
                                        t = 3
                                    else
                                        t = 11279
                                        continue
                                    end
                                elseif t < 12387 then
                                    if t < 11283 then
                                        local of = av // 60
                                        local og = av % 60
                                        local oh = "%dm %ds"
                                        return string.format(oh, of, og)
                                    elseif t < 11284 then
                                        break
                                    elseif t == 11284 then
                                        av = math.floor(os.clock() - W)
                                        t = if av < 60 then 2 else 0
                                    else
                                        t = 12387
                                        continue
                                    end
                                else
                                    break
                                end
                            end
                        end
                        local Info2 = D.Info
                        local UserGroup = Info2:AddLeftGroupbox("User", "circle-user")
                        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
                        local oi = LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name
                        local om = "User"
                        UserGroup:AddLabel(bc(om, oi, aU), true)
                        local ol_1 = tostring(LocalPlayer.UserId)
                        local oi_1 = v
                        local om_1 = "UserId"
                        UserGroup:AddLabel(bc(om_1, ol_1, oi_1), true)
                        local oi_2 = aB .. "  " .. aW_2
                        local om_2 = "Executor"
                        UserGroup:AddLabel(bc(om_2, oi_2, aU), true)
                        UserGroup.AddDivider(UserGroup)
                        local ol_3 = ad()
                        local om_3 = "Session"
                        Label3 = UserGroup:AddLabel(bc(om_3, ol_3, a3), true)
                        UserGroup.AddDivider(UserGroup)
                        UserGroup:AddButton({
                            Text = "Copy Username",
                            Func = function()
                                V(LocalPlayer.Name, "Copied username")
                            end
                        })
                        UserGroup:AddButton({
                            Text = "Copy Profile Link",
                            Func = function()
                                V("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
                            end
                        })
                        local Info = D.Info
                        local DiscordGroup = Info:AddRightGroupbox("Discord", "message-circle")
                        local oi_4 = Color3.fromRGB(88, 101, 242)
                        local ol_4 = I
                        local om_4 = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                        local oj_1 = 95892854151512
                        local oo = 132608042600488
                        local op = "Ouroboros Hub"
                        local oq = "Dupes, keyless scripts and updates"
                        local ot = "online"
                        DiscordGroup:AddDiscordBox(nil, {
                            Banner = oj_1,
                            Avatar = oo,
                            Title = op,
                            Subtitle = oq,
                            Status = ot,
                            Accent = oi_4,
                            Link = ol_4,
                            Buttons = om_4
                        })
                        aW = D.Info
                        y = aW:AddRightGroupbox("Session", "signal")
                        y:AddLabel(bc("Game", aS, v), true)
                        Label2 = y:AddLabel(bc("Players", "0/0", aU), true)
                        A = tostring(game.JobId)
                        v = #A > 18
                        ah = if v then 0 else 9
                    else
                        ah = 10216
                        continue
                    end
                elseif ah == 9244 then
                    am = function(m)
                        local n = (tostring(m))
                        local o = (n:gsub("&", "&amp;"))
                        local q = (o:gsub("<", "&lt;"))
                        local p = (q:gsub(">", "&gt;"))
                        local c = (p:gsub('"', "&quot;"))
                        return (c:gsub("'", "&apos;"))
                    end
                    E = function(c, g)
                        return string.format('<font color="%s">%s</font>', g, am(c))
                    end
                    bc = function(e, m, k)
                        return string.format("<b>%s</b> %s %s", e, E("-", "#5a6070"), E(m, k))
                    end
                    a3 = "#e8a34d"
                    aU = "#7fd47f"
                    as = "#8b93a3"
                    v = "#6ec1ff"
                    aB = "Unknown"
                    pcall(function()
                        local aY, aq, a6, Q
                        local aK = 8
                        while true do
                            aK += 15466
                            if aK < 15468 then
                                if aK < 8165 then
                                    break
                                elseif aK < 10053 then
                                    break
                                elseif aK < 15466 then
                                    break
                                elseif aK < 15467 then
                                    a6 = aq .. " " .. aY
                                    aK = 5
                                elseif aK == 15467 then
                                    aY = aq
                                    aK = 12
                                else
                                    aK = 10053
                                    continue
                                end
                            elseif aK < 15475 then
                                if aK < 15471 then
                                    if aK < 15469 then
                                        break
                                    elseif aK < 15470 then
                                        if aK == 15469 then
                                            Q = a6
                                            aK = 4
                                        else
                                            aK = 15475
                                            continue
                                        end
                                    elseif aK == 15470 then
                                        aK = if Q then 11 else 6
                                    else
                                        aK = 15912
                                        continue
                                    end
                                elseif aK < 15473 then
                                    if aK < 15472 then
                                        aY = a6
                                        aK = if aY then 12 else 1
                                    else
                                        aK = 13
                                    end
                                elseif aK < 15474 then
                                    if aK == 15473 then
                                        aK = if a6 then 0 else 5
                                    else
                                        aK = 4103
                                        continue
                                    end
                                elseif aK == 15474 then
                                    aK = if (function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_125 = bit32.bxor(l, k)
                                            l = bit32.band(l_125 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_126 = bit32.bxor(l, e)
                                            l = bit32.band(l_126 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(type(identifyexecutor), 8, 2851454103, "function") then 9 else 13
                                else
                                    aK = 15472
                                    continue
                                end
                            elseif aK < 15478 then
                                if aK < 15476 then
                                    if aK == 15475 then
                                        aq, aY = identifyexecutor()
                                        local ow = type(aq)
                                        local oy = (function(n, p, q, o)
                                            if type(n) ~= "string" then
                                                return false
                                            end
                                            if #n ~= p then
                                                return false
                                            end
                                            local l = 5381
                                            local j = buffer.fromstring(n)
                                            local m = 0
                                            while m <= p - 4 do
                                                local k = buffer.readu32(j, m)
                                                local l_123 = bit32.bxor(l, k)
                                                l = bit32.band(l_123 * 33, 4294967295)
                                                m = m + 4
                                            end
                                            while m < p do
                                                local e = buffer.readu8(j, m)
                                                local l_124 = bit32.bxor(l, e)
                                                l = bit32.band(l_124 * 33, 4294967295)
                                                m = m + 1
                                            end
                                            if l ~= q then
                                                return false
                                            end
                                            return n == o
                                        end)(ow, 6, 2175009567, "string")
                                        a6 = not (function(n, p, q, o)
                                            if type(n) ~= "string" then
                                                return false
                                            end
                                            if #n ~= p then
                                                return false
                                            end
                                            local l = 5381
                                            local j = buffer.fromstring(n)
                                            local m = 0
                                            while m <= p - 4 do
                                                local k = buffer.readu32(j, m)
                                                local l_121 = bit32.bxor(l, k)
                                                l = bit32.band(l_121 * 33, 4294967295)
                                                m = m + 4
                                            end
                                            while m < p do
                                                local e = buffer.readu8(j, m)
                                                local l_122 = bit32.bxor(l, e)
                                                l = bit32.band(l_122 * 33, 4294967295)
                                                m = m + 1
                                            end
                                            if l ~= q then
                                                return false
                                            end
                                            return n == o
                                        end)(aq, 0, 5381, "")
                                        Q = oy
                                        aK = if Q then 3 else 4
                                    else
                                        aK = 15466
                                        continue
                                    end
                                elseif aK < 15477 then
                                    a6 = not (function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_119 = bit32.bxor(l, k)
                                            l = bit32.band(l_119 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_120 = bit32.bxor(l, e)
                                            l = bit32.band(l_120 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(aY, 0, 5381, "")
                                    aK = 7
                                else
                                    a6 = ((function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_117 = bit32.bxor(l, k)
                                            l = bit32.band(l_117 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_118 = bit32.bxor(l, e)
                                            l = bit32.band(l_118 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(type(aY), 6, 2175009567, "string"))
                                    aK = if a6 then 10 else 7
                                end
                            elseif aK < 15912 then
                                if aK < 15479 then
                                    if aK == 15478 then
                                        aB = aY
                                        aK = 6
                                    else
                                        aK = 15472
                                        continue
                                    end
                                elseif aK == 15479 then
                                    aK = 2
                                else
                                    break
                                end
                            else
                                break
                            end
                        end
                    end)
                    aW = B.Ready
                    ah = if aW then 4 else 7
                else
                    ah = 10216
                    continue
                end
            elseif ah < 9246 then
                if ah == 9245 then
                    aW = A
                    ah = 5
                else
                    ah = 9242
                    continue
                end
            elseif ah < 9247 then
                if ah == 9246 then
                    aW = "ECS commands"
                    ah = 7
                else
                    ah = 9243
                    continue
                end
            else
                local v_3 = aW
                y:AddLabel(bc("Job", v_3, as), true)
                Label = y:AddLabel(bc("Ping", "0 ms", a3), true)
                y.AddDivider(y)
                y:AddButton({
                    Text = "Rejoin Place",
                    Func = function()
                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                    end
                })
                y:AddButton({
                    Text = "Copy Job ID",
                    Func = function()
                        V(A, "Copied Job ID")
                    end
                })
                aQ = task.spawn(function()
                    local a5_1
                    local G_1
                    while true do
                        task.wait(1)
                        if Library.Unloaded then
                            break
                        else
                            local oG = ad()
                            Label3:SetText(bc("Session", oG, a3))
                            local oG_1 = tostring(Players.MaxPlayers)
                            local oH_1 = #Players:GetPlayers() .. "/" .. oG_1
                            Label2:SetText(bc("Players", oH_1, aU))
                            G_1, a5_1 = pcall(function()
                                local n = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]
                                return math.floor(n:GetValue())
                            end)
                            local G_2 = G_1 and a5_1 .. " ms"
                            local a7 = if G_2 then 1 else 0
                            local bd = 1937 * a7 + 1017 * (1 - a7)
                            local aO = 3656 * a7 + 1602 * (1 - a7)
                            if not ((bd * 421 + aO * 1080 + bd * aO) % 16777213 == 11845629) then
                                G_2 = "n/a"
                            end
                            Label:SetText(bc("Ping", G_2, a3))
                        end
                    end
                end)
                aq.Track(function()
                    pcall(task.cancel, aQ)
                end)
                as = D.Info
                v = as:AddRightGroupbox("Socials", "link")
                v:AddButton({ Text = "Discord", Func = aH })
                v:AddButton({
                    Text = "Rscripts",
                    Func = function()
                        V(z, "Copied Rscripts profile")
                    end
                })
                v:AddButton({
                    Text = "Website",
                    Func = function()
                        V(j, "Copied website link")
                    end
                })
                ah = 6
            end
        elseif ah < 10216 then
            if ah < 9250 then
                if ah < 9249 then
                    break
                elseif ah == 9249 then
                    y = aW
                    ah = if y then 1 else 8
                else
                    ah = 9251
                    continue
                end
            elseif ah < 9251 then
                y = "Binding failed"
                ah = 1
            elseif ah == 9251 then
                aW = v
                ah = if aW then 5 else 3
            else
                break
            end
        else
            break
        end
    end
end
aU()
aV = function()
    local g
    local m
    local e
    local k
    local ja = "Movement"
    local jb = "footprints"
    local Player2 = D.Player
    local Group2 = Player2:AddLeftGroupbox(ja, jb)
    Group2:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    Group2:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    Group2:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    Group2:AddToggle("NoClip", { Text = "NoClip", Default = false })
    Group2:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local jb_1 = "Fly"
    local ja_1 = "feather"
    local Player = D.Player
    local Group = Player:AddRightGroupbox(jb_1, ja_1)
    Group:AddToggle("Fly", { Text = "Fly", Default = false })
    Group:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    g = {}
    local l = {}
    k = {}
    e = {}
    m = {}
    local function c()
        for k, v in g do
            if k.Parent then
                k.CanCollide = v
            end
        end
        table.clear(g)
    end
    local function n()
        for k, v in m do
            if k.Parent then
                k.WalkSpeed = v
            end
        end
        table.clear(m)
    end
    local function o()
        local ba = 1
        while true do
            ba += 8031
            if ba < 8032 then
                break
            elseif ba < 8888 then
                if ba == 8032 then
                    for k, v in e do
                        if k.Parent then
                            k.PlatformStand = v
                        end
                    end
                    table.clear(e)
                    ba = 0
                else
                    ba = 10339
                    continue
                end
            else
                break
            end
        end
    end
    local function p(p)
        if not p:IsA("ProximityPrompt") then
            return
        end
        if k[p] == nil then
            k[p] = {
                HoldDuration = p.HoldDuration,
                MaxActivationDistance = p.MaxActivationDistance,
                RequiresLineOfSight = p.RequiresLineOfSight
            }
        end
        p.HoldDuration = 0
        p.MaxActivationDistance = 50
        p.RequiresLineOfSight = false
    end
    local function q()
        local X = 1
        while true do
            X += 5361
            if X < 5362 then
                break
            elseif X < 5403 then
                if X == 5362 then
                    for k, v in k do
                        if k.Parent then
                            k.HoldDuration = v.HoldDuration
                            k.MaxActivationDistance = v.MaxActivationDistance
                            k.RequiresLineOfSight = v.RequiresLineOfSight
                        end
                    end
                    table.clear(k)
                    X = 0
                else
                    X = 3963
                    continue
                end
            else
                break
            end
        end
    end
    Toggles.Fly:OnChanged(function()
        local aJ = 3
        while true do
            aJ += 11556
            if aJ < 11556 then
                break
            elseif aJ < 11559 then
                if aJ < 11557 then
                    o()
                    aJ = 1
                elseif aJ < 11558 then
                    if aJ == 11557 then
                        aJ = 2
                    else
                        aJ = 7625
                        continue
                    end
                else
                    break
                end
            elseif aJ < 12342 then
                if aJ == 11559 then
                    aJ = if not Toggles.Fly.Value then 0 else 1
                else
                    break
                end
            else
                break
            end
        end
    end)
    Toggles.WalkSpeedEnabled:OnChanged(function()
        local a_ = 2
        while true do
            a_ += 9273
            if a_ < 9275 then
                if a_ < 3142 then
                    break
                elseif a_ < 9273 then
                    break
                elseif a_ < 9274 then
                    break
                else
                    a_ = 0
                end
            elseif a_ < 10519 then
                if a_ < 9276 then
                    a_ = if not Toggles.WalkSpeedEnabled.Value then 3 else 1
                elseif a_ < 9705 then
                    if a_ == 9276 then
                        n()
                        a_ = 1
                    else
                        a_ = 9274
                        continue
                    end
                else
                    break
                end
            else
                break
            end
        end
    end)
    Toggles.NoClip:OnChanged(function()
        local N = if not Toggles.NoClip.Value then 1 else 0
        local w = 2273 * N + 2685 * (1 - N)
        local aX = 1458 * N + 3662 * (1 - N)
        if (w * 3113 + aX * 19 + w * aX) % 16777213 == 10417585 then
            c()
        end
    end)
    Toggles.InstantProximityPrompt:OnChanged(function()
        if Toggles.InstantProximityPrompt.Value then
            local js = aN
            local QueryDescendants = js.QueryDescendants
            for k, v in QueryDescendants(js, "ProximityPrompt") do
                pcall(p, v)
            end
        else
            q()
        end
    end)
    table.insert(l, aN.DescendantAdded:Connect(function(q)
        local aP = 2
        while true do
            aP += 14647
            if aP < 7522 then
                break
            elseif aP < 12700 then
                break
            elseif aP < 14648 then
                if aP < 14647 then
                    break
                elseif aP == 14647 then
                    p(q)
                    aP = 3
                else
                    aP = 839
                    continue
                end
            elseif aP < 14649 then
                break
            elseif aP < 14650 then
                aP = if Toggles.InstantProximityPrompt.Value then 0 else 3
            else
                aP = 1
            end
        end
    end))
    table.insert(l, RunService.Stepped:Connect(function()
        local Character, an
        local aw = 0
        while true do
            aw += 10957
            if aw < 10962 then
                if aw < 10959 then
                    if aw < 8192 then
                        break
                    elseif aw < 9769 then
                        break
                    elseif aw < 10957 then
                        break
                    elseif aw < 10958 then
                        if aw == 10957 then
                            aw = if Library.Unloaded then 3 else 2
                        else
                            aw = 4359
                            continue
                        end
                    elseif aw == 10958 then
                        local QueryDescendants = Character.QueryDescendants
                        local jA = "BasePart"
                        for k, v in QueryDescendants(Character, jA) do
                            if g[v] == nil then
                                g[v] = v.CanCollide
                            end
                            v.CanCollide = false
                        end
                        aw = 5
                    else
                        aw = 10964
                        continue
                    end
                elseif aw < 10960 then
                    Character = LocalPlayer.Character
                    an = Toggles.NoClip.Value
                    aw = if an then 7 else 6
                elseif aw < 10961 then
                    if aw == 10960 then
                        return
                    end
                    aw = 9769
                    continue
                else
                    break
                end
            elseif aw < 10964 then
                if aw < 10963 then
                    aw = 4
                elseif aw == 10963 then
                    aw = if an then 1 else 5
                else
                    aw = 6638
                    continue
                end
            elseif aw < 13241 then
                if aw < 11531 then
                    if aw == 10964 then
                        an = Character
                        aw = 6
                    else
                        aw = 8192
                        continue
                    end
                else
                    break
                end
            else
                break
            end
        end
    end))
    table.insert(l, UserInputService.JumpRequest:Connect(function()
        if Library.Unloaded then
            return
        end
        local aF = ap()
        local U = if Toggles.InfJump.Value and aF then 1 else 0
        local C = 2847 * U + 3520 * (1 - U)
        local aa = 2094 * U + 2387 * (1 - U)
        if (C * 1651 + aa * 3802 + C * aa) % 16777213 == 1846190 then
            aF:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end))
    table.insert(l, RunService.RenderStepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local Character = LocalPlayer.Character
        local aT = Character and Character:FindFirstChildOfClass("Humanoid")
        local as = Character
        if as then
            as = Character:FindFirstChild("HumanoidRootPart")
        end
        local u_1 = as
        local CurrentCamera = aN.CurrentCamera
        if Toggles.WalkSpeedEnabled.Value and aT then
            if m[aT] == nil then
                m[aT] = aT.WalkSpeed
            end
            aT.WalkSpeed = Options.WalkSpeed.Value
        end
        local r = if Toggles.Fly.Value and u_1 and aT and CurrentCamera then 1 else 0
        local Y = 1327 * r + 288 * (1 - r)
        local a1 = 3839 * r + 1421 * (1 - r)
        if (Y * 256 + a1 * 3663 + Y * a1) % 16777213 == 2719109 then
            local r_1 = if UserInputService:GetFocusedTextBox() then 1 else 0
            local Y_4 = 3322 * r_1 + 761 * (1 - r_1)
            local a1_1 = 3777 * r_1 + 1427 * (1 - r_1)
            if (Y_4 * 173 + a1_1 * 2391 + Y_4 * a1_1) % 16777213 == 5375494 then
                return
            end
            if e[aT] == nil then
                e[aT] = aT.PlatformStand
            end
            aT.PlatformStand = true
            local as_5 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                as_5 += CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                as_5 -= CurrentCamera.CFrame.LookVector
            end
            local r_2 = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
            local Y_5 = 3144 * r_2 + 2150 * (1 - r_2)
            local a1_2 = 1822 * r_2 + 663 * (1 - r_2)
            if (Y_5 * 745 + a1_2 * 452 + Y_5 * a1_2) % 16777213 == 8894192 then
                as_5 -= CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                as_5 += CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                as_5 += Vector3.yAxis
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                as_5 -= Vector3.yAxis
            end
            if as_5.Magnitude > 0 then
                u_1.AssemblyLinearVelocity = as_5.Unit * Options.FlySpeed.Value
            else
                u_1.AssemblyLinearVelocity = Vector3.zero
            end
        end
    end))
    aq.Track(function()
        for k, v in l do
            v.Disconnect(v)
        end
        c()
        n()
        o()
        q()
    end)
end
aV()
aX = function()
    local a7, aB, am, be, aT, F, Label, E, aJ, aW, av, aP, bc, ab
    local a4 = 2
    while true do
        a4 += 5526
        if a4 < 5528 then
            if a4 < 4857 then
                break
            elseif a4 < 5526 then
                break
            elseif a4 < 5527 then
                aB(true)
                a4 = 3
            else
                break
            end
        elseif a4 < 13987 then
            if a4 < 5529 then
                E = {}
                a7 = {}
                av = nil
                be = false
                bc = 0
                aJ = 0
                aT = os.clock()
                local Settings2 = D.Settings
                local MenuGroup = Settings2:AddLeftGroupbox("Menu", "logs")
                MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                Label = MenuGroup:AddLabel("AFK triggers: 0")
                aW = function()
                    local CurrentCamera
                    CurrentCamera = aN.CurrentCamera
                    local a8 = not CurrentCamera
                    local aX = if a8 then 1 else 0
                    local s = 2220 * aX + 1001 * (1 - aX)
                    local H = 2816 * aX + 3789 * (1 - aX)
                    if not ((s * 327 + H * 273 + s * H) % 16777213 == 7746228) then
                        a8 = not L(VirtualUser.CaptureController)
                    end
                    if not a8 then
                        a8 = not L(VirtualUser.ClickButton2)
                    end
                    if a8 then
                        return false
                    end
                    local a8_1 = pcall(function()
                        VirtualUser.CaptureController(VirtualUser)
                        VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
                    end)
                    if not a8_1 then
                        return false
                    end
                    bc += 1
                    aT = os.clock()
                    pcall(function()
                        Label:SetText("AFK triggers: " .. bc)
                    end)
                    return true
                end
                aB = function(q)
                    local R = 2
                    while true do
                        R += 1654
                        if R < 4104 then
                            if R < 1657 then
                                if R < 1655 then
                                    break
                                elseif R < 1656 then
                                    return
                                elseif R == 1656 then
                                    pcall(function()
                                        GuiService:SetGameplayPausedNotificationEnabled(not q)
                                    end)
                                    pcall(function()
                                        local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                                        if RobloxNetworkPauseNotificati then
                                            RobloxNetworkPauseNotificati.Enabled = not q
                                        end
                                    end)
                                    R = if not q then 1 else 3
                                else
                                    R = 12670
                                    continue
                                end
                            elseif R < 3179 then
                                if R < 2609 then
                                    if R == 1657 then
                                        pcall(function()
                                            local ai = 0
                                            while true do
                                                ai += 11396
                                                if ai < 9135 then
                                                    break
                                                elseif ai < 11399 then
                                                    if ai < 11397 then
                                                        if ai < 11396 then
                                                            break
                                                        end
                                                        ai = if sethiddenproperty then 1 else 2
                                                    elseif ai < 11398 then
                                                        if ai == 11397 then
                                                            sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                                                            ai = 3
                                                        else
                                                            ai = 4550
                                                            continue
                                                        end
                                                    elseif ai == 11398 then
                                                        LocalPlayer.GameplayPaused = false
                                                        ai = 3
                                                    else
                                                        ai = 7541
                                                        continue
                                                    end
                                                elseif ai < 11933 then
                                                    if ai < 11400 then
                                                        if ai == 11399 then
                                                            ai = 4
                                                        else
                                                            ai = 6882
                                                            continue
                                                        end
                                                    else
                                                        break
                                                    end
                                                else
                                                    break
                                                end
                                            end
                                        end)
                                        R = 0
                                    else
                                        break
                                    end
                                else
                                    break
                                end
                            else
                                break
                            end
                        else
                            break
                        end
                    end
                end
                am = function(n)
                    local a6
                    local a3 = 12
                    while true do
                        a3 += 5297
                        if a3 < 5307 then
                            if a3 < 5301 then
                                if a3 < 5298 then
                                    if a3 < 4209 then
                                        break
                                    elseif a3 < 5297 then
                                        break
                                    else
                                        a6 = (function(n, p, q, o)
                                            if type(n) ~= "string" then
                                                return false
                                            end
                                            if #n ~= p then
                                                return false
                                            end
                                            local l = 5381
                                            local j = buffer.fromstring(n)
                                            local m = 0
                                            while m <= p - 4 do
                                                local k = buffer.readu32(j, m)
                                                local l_141 = bit32.bxor(l, k)
                                                l = bit32.band(l_141 * 33, 4294967295)
                                                m = m + 4
                                            end
                                            while m < p do
                                                local e = buffer.readu8(j, m)
                                                local l_142 = bit32.bxor(l, e)
                                                l = bit32.band(l_142 * 33, 4294967295)
                                                m = m + 1
                                            end
                                            if l ~= q then
                                                return false
                                            end
                                            return n == o
                                        end)(n.ClassName, 4, 331482275, "Fire")
                                        a3 = 9
                                    end
                                elseif a3 < 5299 then
                                    E[n] = n.Enabled
                                    a3 = 3
                                elseif a3 < 5300 then
                                    a6 = (function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_139 = bit32.bxor(l, k)
                                            l = bit32.band(l_139 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_140 = bit32.bxor(l, e)
                                            l = bit32.band(l_140 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(n.ClassName, 8, 2337999901, "Sparkles")
                                    a3 = 17
                                else
                                    pcall(function()
                                        n.Enabled = false
                                    end)
                                    a3 = 10
                                end
                            elseif a3 < 5304 then
                                if a3 < 5302 then
                                    a3 = if E[n] == nil then 1 else 3
                                elseif a3 < 5303 then
                                    if a3 == 5302 then
                                        a3 = if a6 then 14 else 11
                                    else
                                        a3 = 5311
                                        continue
                                    end
                                else
                                    a6 = (function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_137 = bit32.bxor(l, k)
                                            l = bit32.band(l_137 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_138 = bit32.bxor(l, e)
                                            l = bit32.band(l_138 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(n.ClassName, 5, 86962643, "Smoke")
                                    a3 = 13
                                end
                            elseif a3 < 5305 then
                                a3 = if a6 then 13 else 6
                            elseif a3 < 5306 then
                                break
                            elseif a3 == 5306 then
                                a3 = if a6 then 17 else 2
                            else
                                a3 = 5308
                                continue
                            end
                        elseif a3 < 5313 then
                            if a3 < 5310 then
                                if a3 < 5308 then
                                    a3 = 8
                                elseif a3 < 5309 then
                                    a6 = (function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_135 = bit32.bxor(l, k)
                                            l = bit32.band(l_135 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_136 = bit32.bxor(l, e)
                                            l = bit32.band(l_136 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(n.ClassName, 4, 428833063, "Beam")
                                    a3 = 14
                                elseif a3 == 5309 then
                                    a6 = ((function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_133 = bit32.bxor(l, k)
                                            l = bit32.band(l_133 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_134 = bit32.bxor(l, e)
                                            l = bit32.band(l_134 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(n.ClassName, 15, 3648452858, "ParticleEmitter"))
                                    a3 = if a6 then 7 else 15
                                else
                                    a3 = 5302
                                    continue
                                end
                            elseif a3 < 5311 then
                                if a3 == 5310 then
                                    a3 = if a6 then 9 else 0
                                else
                                    a3 = 5309
                                    continue
                                end
                            elseif a3 < 5312 then
                                if a3 == 5311 then
                                    a3 = if a6 then 4 else 10
                                else
                                    a3 = 5314
                                    continue
                                end
                            else
                                a6 = (function(n, p, q, o)
                                    if type(n) ~= "string" then
                                        return false
                                    end
                                    if #n ~= p then
                                        return false
                                    end
                                    local l = 5381
                                    local j = buffer.fromstring(n)
                                    local m = 0
                                    while m <= p - 4 do
                                        local k = buffer.readu32(j, m)
                                        local l_131 = bit32.bxor(l, k)
                                        l = bit32.band(l_131 * 33, 4294967295)
                                        m = m + 4
                                    end
                                    while m < p do
                                        local e = buffer.readu8(j, m)
                                        local l_132 = bit32.bxor(l, e)
                                        l = bit32.band(l_132 * 33, 4294967295)
                                        m = m + 1
                                    end
                                    if l ~= q then
                                        return false
                                    end
                                    return n == o
                                end)(n.ClassName, 5, 1196979389, "Trail")
                                a3 = 7
                            end
                        elseif a3 < 5946 then
                            if a3 < 5314 then
                                if a3 == 5313 then
                                    a6 = (function(n, p, q, o)
                                        if type(n) ~= "string" then
                                            return false
                                        end
                                        if #n ~= p then
                                            return false
                                        end
                                        local l = 5381
                                        local j = buffer.fromstring(n)
                                        local m = 0
                                        while m <= p - 4 do
                                            local k = buffer.readu32(j, m)
                                            local l_129 = bit32.bxor(l, k)
                                            l = bit32.band(l_129 * 33, 4294967295)
                                            m = m + 4
                                        end
                                        while m < p do
                                            local e = buffer.readu8(j, m)
                                            local l_130 = bit32.bxor(l, e)
                                            l = bit32.band(l_130 * 33, 4294967295)
                                            m = m + 1
                                        end
                                        if l ~= q then
                                            return false
                                        end
                                        return n == o
                                    end)(n.ClassName, 9, 948549761, "Explosion")
                                    a3 = 5
                                else
                                    a3 = 4209
                                    continue
                                end
                            elseif a3 < 5480 then
                                if a3 == 5314 then
                                    a3 = if a6 then 5 else 16
                                else
                                    break
                                end
                            else
                                break
                            end
                        else
                            break
                        end
                    end
                end
                aP = function()
                    for k, v in E do
                        local ay = k
                        local al = v
                        if ay.Parent then
                            pcall(function()
                                ay.Enabled = al
                            end)
                        end
                    end
                    table.clear(E)
                    if av then
                        pcall(function()
                            settings().Rendering.QualityLevel = av.Quality
                        end)
                        Lighting.GlobalShadows = av.Shadows
                        Lighting.FogEnd = av.Fog
                        av = nil
                    end
                end
                MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
                MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                MenuGroup:AddToggle("Disable3D", {
                    Text = "Disable 3D Rendering",
                    Default = false,
                    Callback = function(o)
                        pcall(function()
                            RunService:Set3dRenderingEnabled(not o)
                        end)
                    end
                })
                MenuGroup:AddToggle("FpsBoost", {
                    Text = "FPS Boost",
                    Default = false,
                    Callback = function(n)
                        if n then
                            if not av then
                                av = {
                                    Quality = settings().Rendering.QualityLevel,
                                    Shadows = Lighting.GlobalShadows,
                                    Fog = Lighting.FogEnd
                                }
                            end
                            pcall(function()
                                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                            end)
                            Lighting.GlobalShadows = false
                            Lighting.FogEnd = 9000000000
                            local is = aN
                            local QueryDescendants = is.QueryDescendants
                            for k, v in QueryDescendants(is, "ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                                pcall(am, v)
                            end
                        else
                            aP()
                        end
                    end
                })
                MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
                MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                Library.ToggleKeybind = Options.MenuKeybind
                aB(true)
                local Settings = D.Settings
                local a__2 = Settings:AddLeftGroupbox("Script", "terminal")
                a__2:AddButton({
                    Text = "Unload Script",
                    Func = function()
                        Library.Unload(Library)
                    end
                })
                Toggles.AntiGameplayPause:OnChanged(function()
                    aB(Toggles.AntiGameplayPause.Value)
                end)
                local ay = if Toggles.AntiGameplayPause.Value then 1 else 0
                local ae = 2103 * ay + 1141 * (1 - ay)
                local R = 475 * ay + 2502 * (1 - ay)
                a4 = if (ae * 2532 + R * 2725 + ae * R) % 16777213 == 7618096 then 0 else 3
            elseif a4 < 5536 then
                if a4 == 5529 then
                    table.insert(a7, LocalPlayer.Idled:Connect(function()
                        local aK
                        local ah = 2
                        while true do
                            ah += 2867
                            if ah < 6356 then
                                if ah < 2870 then
                                    if ah < 2868 then
                                        if ah == 2867 then
                                            ah = if aK then 5 else 4
                                        else
                                            break
                                        end
                                    elseif ah < 2869 then
                                        break
                                    elseif ah == 2869 then
                                        aK = Toggles.AntiAfk.Value
                                        ah = if aK then 3 else 0
                                    else
                                        ah = 2867
                                        continue
                                    end
                                elseif ah < 2871 then
                                    if ah == 2870 then
                                        aK = not Library.Unloaded
                                        ah = 0
                                    else
                                        ah = 7453
                                        continue
                                    end
                                elseif ah < 2872 then
                                    ah = 1
                                elseif ah == 2872 then
                                    aW()
                                    ah = 4
                                else
                                    break
                                end
                            else
                                break
                            end
                        end
                    end))
                    table.insert(a7, aN.DescendantAdded:Connect(function(n)
                        if Toggles.FpsBoost.Value then
                            am(n)
                        end
                    end))
                    F = function(o)
                        local an = be or Library.Unloaded
                        local bb = if an then 1 else 0
                        local aI = 2615 * bb + 3863 * (1 - bb)
                        local aQ = 3170 * bb + 1772 * (1 - bb)
                        if not ((aI * 543 + aQ * 2172 + aI * aQ) % 16777213 == 16594735) then
                            an = not Toggles.AutoReconnect.Value
                        end
                        if an then
                            return
                        end
                        be = true
                        local a2 = aJ
                        local an_3 = pcall(function()
                            local au, aL, aA
                            local aY = 0
                            while true do
                                aY += 10246
                                if aY < 10246 then
                                    break
                                elseif aY < 10250 then
                                    if aY < 10248 then
                                        if aY < 10247 then
                                            aA = if o then 1 else 0
                                            au = 1363 * aA + 2039 * (1 - aA)
                                            aY = 4
                                        elseif aY == 10247 then
                                            aY = 2
                                        else
                                            aY = 10251
                                            continue
                                        end
                                    elseif aY < 10249 then
                                        break
                                    elseif aY == 10249 then
                                        local iF = LocalPlayer
                                        TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, iF)
                                        aY = 1
                                    else
                                        aY = 1226
                                        continue
                                    end
                                elseif aY < 10252 then
                                    if aY < 10251 then
                                        aL = 1085 * aA + 765 * (1 - aA)
                                        aY = 5
                                    elseif aY == 10251 then
                                        aY = if (au * 3877 + aL * 68 + au * aL) % 16777213 == 6836986 then 6 else 3
                                    else
                                        aY = 884
                                        continue
                                    end
                                elseif aY < 12711 then
                                    if aY == 10252 then
                                        TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                        aY = 1
                                    else
                                        aY = 10247
                                        continue
                                    end
                                else
                                    break
                                end
                            end
                        end)
                        if not an_3 then
                            be = false
                            if not o and a2 == aJ then
                                task.delay(1.5, function()
                                    if a2 == aJ then
                                        F(true)
                                    end
                                end)
                            end
                        end
                    end
                    table.insert(a7, TeleportService.TeleportInitFailed:Connect(function(o)
                        local u, bd
                        local aN = 2
                        while true do
                            aN += 11103
                            if aN < 11104 then
                                if aN < 8952 then
                                    break
                                elseif aN < 10184 then
                                    break
                                elseif aN < 10267 then
                                    break
                                elseif aN < 11103 then
                                    break
                                elseif aN == 11103 then
                                    aN = 3
                                else
                                    aN = 1646
                                    continue
                                end
                            elseif aN < 11108 then
                                if aN < 11106 then
                                    if aN < 11105 then
                                        if aN == 11104 then
                                            be = false
                                            u = aJ
                                            task.delay(3, function()
                                                local ae = 1
                                                while true do
                                                    ae += 14668
                                                    if ae < 13442 then
                                                        break
                                                    elseif ae < 14669 then
                                                        if ae < 14668 then
                                                            break
                                                        end
                                                        ae = 2
                                                    elseif ae < 14670 then
                                                        if ae == 14669 then
                                                            ae = if u == aJ then 3 else 0
                                                        else
                                                            ae = 7070
                                                            continue
                                                        end
                                                    elseif ae < 14671 then
                                                        break
                                                    elseif ae == 14671 then
                                                        F(true)
                                                        ae = 0
                                                    else
                                                        ae = 10140
                                                    end
                                                end
                                            end)
                                            aN = 0
                                        else
                                            aN = 11106
                                            continue
                                        end
                                    elseif aN == 11105 then
                                        bd = o == LocalPlayer
                                        aN = if bd then 5 else 4
                                    else
                                        aN = 3411
                                        continue
                                    end
                                elseif aN < 11107 then
                                    break
                                elseif aN == 11107 then
                                    local ap = if bd then 1 else 0
                                    local ag = 1927 * ap + 2853 * (1 - ap)
                                    local a0 = 1745 * ap + 3703 * (1 - ap)
                                    aN = if (ag * 1348 + a0 * 1514 + ag * a0) % 16777213 == 8602141 then 1 else 0
                                else
                                    aN = 10062
                                    continue
                                end
                            elseif aN < 12572 then
                                if aN < 12130 then
                                    if aN == 11108 then
                                        bd = be
                                        aN = 4
                                    else
                                        break
                                    end
                                else
                                    break
                                end
                            else
                                break
                            end
                        end
                    end))
                    task.spawn(function()
                        local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
                        local N = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
                        if Library.Unloaded or not N then
                            return
                        end
                        table.insert(a7, N.ChildAdded:Connect(function(q)
                            local v = if (function(n, p, q, o)
                                if type(n) ~= "string" then
                                    return false
                                end
                                if #n ~= p then
                                    return false
                                end
                                local l = 5381
                                local j = buffer.fromstring(n)
                                local m = 0
                                while m <= p - 4 do
                                    local k = buffer.readu32(j, m)
                                    local l_127 = bit32.bxor(l, k)
                                    l = bit32.band(l_127 * 33, 4294967295)
                                    m = m + 4
                                end
                                while m < p do
                                    local e = buffer.readu8(j, m)
                                    local l_128 = bit32.bxor(l, e)
                                    l = bit32.band(l_128 * 33, 4294967295)
                                    m = m + 1
                                end
                                if l ~= q then
                                    return false
                                end
                                return n == o
                            end)(q.Name, 11, 94240123, "ErrorPrompt") then 1 else 0
                            local M = 581 * v + 1691 * (1 - v)
                            local aR = 3557 * v + 3981 * (1 - v)
                            if (M * 992 + aR * 641 + M * aR) % 16777213 == 4923006 then
                                F(false)
                            end
                        end))
                    end)
                    ab = task.spawn(function()
                        local aj
                        local T = 12
                        while true do
                            T += 11418
                            if T < 11426 then
                                if T < 11421 then
                                    if T < 11419 then
                                        if T < 11418 then
                                            break
                                        elseif T == 11418 then
                                            T = 4
                                        else
                                            T = 11419
                                            continue
                                        end
                                    elseif T < 11420 then
                                        aj = Toggles.AntiAfk.Value
                                        local at = if aj then 1 else 0
                                        local ba = 473 * at + 2181 * (1 - at)
                                        local X = 1258 * at + 3830 * (1 - at)
                                        T = if (ba * 3177 + X * 3798 + ba * X) % 16777213 == 6875639 then 13 else 11
                                    else
                                        T = 8
                                    end
                                elseif T < 11425 then
                                    if T < 11423 then
                                        if T < 11422 then
                                            if T == 11421 then
                                                T = 2
                                            else
                                                T = 11428
                                                continue
                                            end
                                        elseif T == 11422 then
                                            T = 5
                                        else
                                            T = 280
                                            continue
                                        end
                                    elseif T < 11424 then
                                        break
                                    else
                                        T = if Toggles.AntiGameplayPause.Value then 9 else 1
                                    end
                                else
                                    aW()
                                    T = 10
                                end
                            elseif T < 11429 then
                                if T < 11428 then
                                    if T < 11427 then
                                        T = if not Library.Unloaded then 6 else 0
                                    else
                                        aB(true)
                                        T = 1
                                    end
                                else
                                    task.wait(1)
                                    T = 3
                                end
                            elseif T < 11516 then
                                if T < 11430 then
                                    if T == 11429 then
                                        T = if aj then 7 else 10
                                    else
                                        T = 11419
                                        continue
                                    end
                                elseif T < 11431 then
                                    T = 2
                                elseif T == 11431 then
                                    aj = os.clock() - aT >= 60
                                    T = 11
                                else
                                    break
                                end
                            else
                                break
                            end
                        end
                    end)
                    aq.Track(function()
                        aJ += 1
                        for k, v in a7 do
                            v.Disconnect(v)
                        end
                        pcall(task.cancel, ab)
                        aB(false)
                        aP()
                        pcall(function()
                            RunService.Set3dRenderingEnabled(RunService, true)
                        end)
                    end)
                    a4 = 1
                else
                    break
                end
            else
                break
            end
        else
            break
        end
    end
end
aX()
aY = function()
    local aD, a0, ad, a5
    ThemeManager.SetLibrary(ThemeManager, Library)
    ThemeManager.SetFolder(ThemeManager, "MyScriptHub")
    ThemeManager.SaveDefault(ThemeManager, "Evil Hello Kitty")
    ThemeManager:ApplyToTab(D.Settings)
    SaveManager.SetLibrary(SaveManager, Library)
    SaveManager.IgnoreThemeSettings(SaveManager)
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager.SetFolder(SaveManager, "OuroborosHub/BuildAnAntEmpire")
    local ap = SaveManager:BuildConfigSection(D.Settings)
    a5 = function(n, q)
        local aG = (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_185 = bit32.bxor(l, k)
                l = bit32.band(l_185 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_186 = bit32.bxor(l, e)
                l = bit32.band(l_186 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(n, 6, 3306701528, "Toggle") and Toggles
        local aq_5 = (aG or Options)[q]
        local aG_4 = (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_183 = bit32.bxor(l, k)
                l = bit32.band(l_183 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_184 = bit32.bxor(l, e)
                l = bit32.band(l_184 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(aq_5), 5, 248602996, "table") and aq_5.Type == n
        return aG_4 and aq_5 or nil
    end
    a0 = function(n, p)
        local Type = p.Type
        local a8 = if (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_181 = bit32.bxor(l, k)
                l = bit32.band(l_181 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_182 = bit32.bxor(l, e)
                l = bit32.band(l_182 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(Type, 6, 3306701528, "Toggle") then 1 else 0
        if a8 == 1 then
            return { idx = n, type = "Toggle", value = p.Value == true }
        elseif (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_179 = bit32.bxor(l, k)
                l = bit32.band(l_179 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_180 = bit32.bxor(l, e)
                l = bit32.band(l_180 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(Type, 6, 3126036161, "Slider") then
            local gg = tostring(p.Value)
            return { idx = n, type = "Slider", value = gg }
        elseif (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_177 = bit32.bxor(l, k)
                l = bit32.band(l_177 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_178 = bit32.bxor(l, e)
                l = bit32.band(l_178 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(Type, 8, 361701541, "Dropdown") then
            return { idx = n, type = "Dropdown", multi = p.Multi == true, value = p.Value }
        elseif (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_175 = bit32.bxor(l, k)
                l = bit32.band(l_175 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_176 = bit32.bxor(l, e)
                l = bit32.band(l_176 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(Type, 5, 2474408888, "Input") then
            local aO_2 = p.Value or ""
            local gc = tostring(aO_2)
            return { idx = n, type = "Input", text = gc }
        elseif (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_173 = bit32.bxor(l, k)
                l = bit32.band(l_173 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_174 = bit32.bxor(l, e)
                l = bit32.band(l_174 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(Type, 11, 614915368, "ColorPicker") then
            local Value = p.Value
            local f_ = Value:ToHex()
            return { idx = n, type = "ColorPicker", value = f_, transparency = p.Transparency }
        elseif (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_171 = bit32.bxor(l, k)
                l = bit32.band(l_171 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_172 = bit32.bxor(l, e)
                l = bit32.band(l_172 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(Type, 9, 506989781, "KeyPicker") then
            return {
                idx = n,
                type = "KeyPicker",
                mode = p.Mode,
                key = p.Value,
                modifiers = p.Modifiers,
                toggled = p.Toggled
            }
        else
            return nil
        end
    end
    aD = function()
        local ab = {}
        local gq = Toggles
        local gr = Options
        for i, v in ipairs({ gq, gr }) do
            local ai = v
            for k2, v in pairs(ai) do
                local w = k2
                local B = v
                local O = (function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_169 = bit32.bxor(l, k)
                        l = bit32.band(l_169 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_170 = bit32.bxor(l, e)
                        l = bit32.band(l_170 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(B), 5, 248602996, "table") and (function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_167 = bit32.bxor(l, k)
                        l = bit32.band(l_167 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_168 = bit32.bxor(l, e)
                        l = bit32.band(l_168 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(B.Type), 6, 2175009567, "string") and not SaveManager.Ignore[w]
                if O then
                    local O_2 = a0(w, B)
                    if O_2 then
                        ab[#ab + 1] = O_2
                    end
                end
            end
        end
        table.sort(ab, function(q, n)
            local as = 2
            while true do
                as += 12792
                if as < 12794 then
                    if as < 11309 then
                        break
                    elseif as < 12792 then
                        break
                    elseif as < 12793 then
                        return q.type < n.type
                    elseif as == 12793 then
                        return q.idx < n.idx
                    else
                        as = 14782
                        continue
                    end
                elseif as < 14391 then
                    if as < 12795 then
                        as = if q.type ~= n.type then 0 else 1
                    else
                        break
                    end
                else
                    break
                end
            end
        end)
        return { objects = ab }
    end
    ad = function(n)
        local y
        y = nil
        local a2 = not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_165 = bit32.bxor(l, k)
                l = bit32.band(l_165 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_166 = bit32.bxor(l, e)
                l = bit32.band(l_166 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(n), 5, 248602996, "table") or not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_163 = bit32.bxor(l, k)
                l = bit32.band(l_163 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_164 = bit32.bxor(l, e)
                l = bit32.band(l_164 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(n.idx), 6, 2175009567, "string") or not (function(n, p, q, o)
            if type(n) ~= "string" then
                return false
            end
            if #n ~= p then
                return false
            end
            local l = 5381
            local j = buffer.fromstring(n)
            local m = 0
            while m <= p - 4 do
                local k = buffer.readu32(j, m)
                local l_161 = bit32.bxor(l, k)
                l = bit32.band(l_161 * 33, 4294967295)
                m = m + 4
            end
            while m < p do
                local e = buffer.readu8(j, m)
                local l_162 = bit32.bxor(l, e)
                l = bit32.band(l_162 * 33, 4294967295)
                m = m + 1
            end
            if l ~= q then
                return false
            end
            return n == o
        end)(type(n.type), 6, 2175009567, "string")
        local N = if a2 then 1 else 0
        local al = 1900 * N + 2735 * (1 - N)
        local W = 158 * N + 2347 * (1 - N)
        if not ((al * 755 + W * 458 + al * W) % 16777213 == 1807064) then
            a2 = SaveManager.Ignore[n.idx]
        end
        if a2 then
            return false
        end
        y = a5(n.type, n.idx)
        if not y then
            return false
        end
        local a2_11 = pcall(function()
            local am
            local aR = 16
            while true do
                aR += 10548
                if aR < 10551 then
                    if aR < 8638 then
                        break
                    elseif aR < 10262 then
                        break
                    elseif aR < 10549 then
                        if aR < 10548 then
                            break
                        end
                        am = n.toggled ~= nil
                        aR = 8
                    elseif aR < 10550 then
                        aR = 15
                    elseif aR == 10550 then
                        y:SetValue(n.text)
                        aR = 11
                    else
                        aR = 9635
                        continue
                    end
                elseif aR < 10559 then
                    if aR < 10555 then
                        if aR < 10553 then
                            if aR < 10552 then
                                y:SetValue({ n.key, n.mode, n.modifiers })
                                am = ((function(n, p, q, o)
                                    if type(n) ~= "string" then
                                        return false
                                    end
                                    if #n ~= p then
                                        return false
                                    end
                                    local l = 5381
                                    local j = buffer.fromstring(n)
                                    local m = 0
                                    while m <= p - 4 do
                                        local k = buffer.readu32(j, m)
                                        local l_159 = bit32.bxor(l, k)
                                        l = bit32.band(l_159 * 33, 4294967295)
                                        m = m + 4
                                    end
                                    while m < p do
                                        local e = buffer.readu8(j, m)
                                        local l_160 = bit32.bxor(l, e)
                                        l = bit32.band(l_160 * 33, 4294967295)
                                        m = m + 1
                                    end
                                    if l ~= q then
                                        return false
                                    end
                                    return n == o
                                end)(n.mode, 6, 3306701528, "Toggle"))
                                aR = if am then 0 else 8
                            elseif aR == 10552 then
                                aR = if (function(n, p, q, o)
                                    if type(n) ~= "string" then
                                        return false
                                    end
                                    if #n ~= p then
                                        return false
                                    end
                                    local l = 5381
                                    local j = buffer.fromstring(n)
                                    local m = 0
                                    while m <= p - 4 do
                                        local k = buffer.readu32(j, m)
                                        local l_157 = bit32.bxor(l, k)
                                        l = bit32.band(l_157 * 33, 4294967295)
                                        m = m + 4
                                    end
                                    while m < p do
                                        local e = buffer.readu8(j, m)
                                        local l_158 = bit32.bxor(l, e)
                                        l = bit32.band(l_158 * 33, 4294967295)
                                        m = m + 1
                                    end
                                    if l ~= q then
                                        return false
                                    end
                                    return n == o
                                end)(n.type, 9, 506989781, "KeyPicker") then 3 else 7
                            else
                                aR = 10262
                                continue
                            end
                        elseif aR < 10554 then
                            aR = if not (function(n, p, q, o)
                                if type(n) ~= "string" then
                                    return false
                                end
                                if #n ~= p then
                                    return false
                                end
                                local l = 5381
                                local j = buffer.fromstring(n)
                                local m = 0
                                while m <= p - 4 do
                                    local k = buffer.readu32(j, m)
                                    local l_155 = bit32.bxor(l, k)
                                    l = bit32.band(l_155 * 33, 4294967295)
                                    m = m + 4
                                end
                                while m < p do
                                    local e = buffer.readu8(j, m)
                                    local l_156 = bit32.bxor(l, e)
                                    l = bit32.band(l_156 * 33, 4294967295)
                                    m = m + 1
                                end
                                if l ~= q then
                                    return false
                                end
                                return n == o
                            end)(type(n.text), 6, 2175009567, "string") then 9 else 2
                        else
                            aR = 11
                        end
                    elseif aR < 10557 then
                        if aR < 10556 then
                            y:SetValue(n.value)
                            aR = 15
                        else
                            local aw = if am then 1 else 0
                            local A = 2652 * aw + 2462 * (1 - aw)
                            local aW = 3376 * aw + 137 * (1 - aw)
                            aR = if (A * 1554 + aW * 2747 + A * aW) % 16777213 == 5571019 then 13 else 1
                        end
                    elseif aR < 10558 then
                        if aR == 10557 then
                            return
                        end
                        aR = 10556
                        continue
                    else
                        break
                    end
                elseif aR < 10563 then
                    if aR < 10561 then
                        if aR < 10560 then
                            if aR == 10559 then
                                aR = 10
                            else
                                aR = 10551
                                continue
                            end
                        else
                            y:SetValueRGB(Color3.fromHex(n.value), n.transparency)
                            aR = 6
                        end
                    elseif aR < 10562 then
                        y.Toggled = n.toggled
                        y.Update(y)
                        aR = 1
                    else
                        aR = if (function(n, p, q, o)
                            if type(n) ~= "string" then
                                return false
                            end
                            if #n ~= p then
                                return false
                            end
                            local l = 5381
                            local j = buffer.fromstring(n)
                            local m = 0
                            while m <= p - 4 do
                                local k = buffer.readu32(j, m)
                                local l_153 = bit32.bxor(l, k)
                                l = bit32.band(l_153 * 33, 4294967295)
                                m = m + 4
                            end
                            while m < p do
                                local e = buffer.readu8(j, m)
                                local l_154 = bit32.bxor(l, e)
                                l = bit32.band(l_154 * 33, 4294967295)
                                m = m + 1
                            end
                            if l ~= q then
                                return false
                            end
                            return n == o
                        end)(n.type, 11, 614915368, "ColorPicker") then 12 else 4
                    end
                elseif aR < 12219 then
                    if aR < 10564 then
                        aR = 6
                    elseif aR == 10564 then
                        aR = if (function(n, p, q, o)
                            if type(n) ~= "string" then
                                return false
                            end
                            if #n ~= p then
                                return false
                            end
                            local l = 5381
                            local j = buffer.fromstring(n)
                            local m = 0
                            while m <= p - 4 do
                                local k = buffer.readu32(j, m)
                                local l_151 = bit32.bxor(l, k)
                                l = bit32.band(l_151 * 33, 4294967295)
                                m = m + 4
                            end
                            while m < p do
                                local e = buffer.readu8(j, m)
                                local l_152 = bit32.bxor(l, e)
                                l = bit32.band(l_152 * 33, 4294967295)
                                m = m + 1
                            end
                            if l ~= q then
                                return false
                            end
                            return n == o
                        end)(n.type, 5, 2474408888, "Input") then 5 else 14
                    else
                        aR = 9635
                        continue
                    end
                else
                    break
                end
            end
        end)
        return a2_11
    end
    ap.AddDivider(ap)
    ap:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    ap:AddButton({
        Text = "Export Config to Clipboard",
        Func = function()
            local ba_6
            local Q_1
            Q_1, ba_6 = pcall(HttpService.JSONEncode, HttpService, aD())
            local F = if not Q_1 then 1 else 0
            local bb = 433 * F + 535 * (1 - F)
            local aC = 1968 * F + 2860 * (1 - F)
            if (bb * 3512 + aC * 1820 + bb * aC) % 16777213 == 5954600 then
                Library.Notify(Library, "Failed to encode config")
                return
            end
            V(ba_6, "Copied config")
        end
    })
    ap:AddButton({
        Text = "Import Config from Clipboard Text",
        Func = function()
            local G = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value
            local G_4
            local u = if G then 1 else 0
            local aa = 1278 * u + 2247 * (1 - u)
            local aY = 1450 * u + 2757 * (1 - u)
            if not ((aa * 1165 + aY * 2553 + aa * aY) % 16777213 == 7043820) then
                G = ""
            end
            local aq_2 = G
            local gK = type(aq_2)
            local gM = (function(n, p, q, o)
                if type(n) ~= "string" then
                    return false
                end
                if #n ~= p then
                    return false
                end
                local l = 5381
                local j = buffer.fromstring(n)
                local m = 0
                while m <= p - 4 do
                    local k = buffer.readu32(j, m)
                    local l_149 = bit32.bxor(l, k)
                    l = bit32.band(l_149 * 33, 4294967295)
                    m = m + 4
                end
                while m < p do
                    local e = buffer.readu8(j, m)
                    local l_150 = bit32.bxor(l, e)
                    l = bit32.band(l_150 * 33, 4294967295)
                    m = m + 1
                end
                if l ~= q then
                    return false
                end
                return n == o
            end)(gK, 6, 2175009567, "string")
            local G_3 = (function(n, p, q, o)
                if type(n) ~= "string" then
                    return false
                end
                if #n ~= p then
                    return false
                end
                local l = 5381
                local j = buffer.fromstring(n)
                local m = 0
                while m <= p - 4 do
                    local k = buffer.readu32(j, m)
                    local l_147 = bit32.bxor(l, k)
                    l = bit32.band(l_147 * 33, 4294967295)
                    m = m + 4
                end
                while m < p do
                    local e = buffer.readu8(j, m)
                    local l_148 = bit32.bxor(l, e)
                    l = bit32.band(l_148 * 33, 4294967295)
                    m = m + 1
                end
                if l ~= q then
                    return false
                end
                return n == o
            end)(aq_2, 0, 5381, "")
            local Y = not gM or G_3
            local Y_6
            if Y then
                Library.Notify(Library, "Paste a config first")
                return
            end
            if #aq_2 > 262144 then
                Library.Notify(Library, "Config too large")
                return
            end
            G_4, Y_6 = pcall(HttpService.JSONDecode, HttpService, aq_2)
            local aq_3 = not G_4 or not (function(n, p, q, o)
                if type(n) ~= "string" then
                    return false
                end
                if #n ~= p then
                    return false
                end
                local l = 5381
                local j = buffer.fromstring(n)
                local m = 0
                while m <= p - 4 do
                    local k = buffer.readu32(j, m)
                    local l_145 = bit32.bxor(l, k)
                    l = bit32.band(l_145 * 33, 4294967295)
                    m = m + 4
                end
                while m < p do
                    local e = buffer.readu8(j, m)
                    local l_146 = bit32.bxor(l, e)
                    l = bit32.band(l_146 * 33, 4294967295)
                    m = m + 1
                end
                if l ~= q then
                    return false
                end
                return n == o
            end)(type(Y_6), 5, 248602996, "table")
            local u_2 = if aq_3 then 1 else 0
            local aa_8 = 3452 * u_2 + 1650 * (1 - u_2)
            local aY_4 = 3244 * u_2 + 1993 * (1 - u_2)
            if not ((aa_8 * 23 + aY_4 * 3217 + aa_8 * aY_4) % 16777213 == 4936419) then
                aq_3 = not (function(n, p, q, o)
                    if type(n) ~= "string" then
                        return false
                    end
                    if #n ~= p then
                        return false
                    end
                    local l = 5381
                    local j = buffer.fromstring(n)
                    local m = 0
                    while m <= p - 4 do
                        local k = buffer.readu32(j, m)
                        local l_143 = bit32.bxor(l, k)
                        l = bit32.band(l_143 * 33, 4294967295)
                        m = m + 4
                    end
                    while m < p do
                        local e = buffer.readu8(j, m)
                        local l_144 = bit32.bxor(l, e)
                        l = bit32.band(l_144 * 33, 4294967295)
                        m = m + 1
                    end
                    if l ~= q then
                        return false
                    end
                    return n == o
                end)(type(Y_6.objects), 5, 248602996, "table")
            end
            local u_3 = if aq_3 then 1 else 0
            local aa_9 = 3918 * u_3 + 2248 * (1 - u_3)
            local aY_5 = 3502 * u_3 + 182 * (1 - u_3)
            if (aa_9 * 1364 + aY_5 * 2402 + aa_9 * aY_5) % 16777213 == 10699579 then
                Library.Notify(Library, "Invalid config")
                return
            end
            local aq_4 = 0
            local objects = Y_6.objects
            for i, v in ipairs(objects) do
                if ad(v) then
                    aq_4 += 1
                end
            end
            local SaveManager_ImportSource = Options.SaveManager_ImportSource
            SaveManager_ImportSource.SetValue(SaveManager_ImportSource, "")
            local gF_1 = aq_4 .. " settings"
            Library:Notify("Imported " .. gF_1)
        end
    })
    SaveManager.LoadAutoloadConfig(SaveManager)
    if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
        pcall(function()
            Library.Toggle(Library, false)
        end)
    end
end
aY()
