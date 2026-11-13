local fns = {}
local Remotes, cj_8, PlotService, cj_14, cj_15, cj_16, cj_17, cj_20, cj_21, cj_22, cj_27, cj_28, cj_29, cj_33, UpgradesLibrary, cj_36, cj_38, cj_40, PolisherService, cj_43, NumberUtils, cj_46, DailyLoginService, cj_49, cj_52, IndexRewardsService, cj_54, cj_56, cj_58, cj_60, cj_61, cj_64, cj_66, ObbyBonusLibrary, ClientDataManager, cj_70
local I
local J
local K
local PlaytimeRewardsLibrary
cj_58 = nil
local P
local R
local S
local PlaytimeRewardsService
cj_29 = nil
cj_15 = nil
local U
local V
local Window
local InfinityTowerService
local Y
local Z
local aa
ObbyBonusLibrary = nil
local ab
local TraitService
local ae
local af
Remotes = nil
cj_60 = nil
local ObbyBonusService
local ah
cj_27 = nil
cj_14 = nil
local PlayerUnitService
local aj
local ak
local Workspace
local am
cj_17 = nil
local InventoryService
local ao
cj_22 = nil
local TokensService
cj_70 = nil
local ar
local as
local PlayerUnitsLibrary
local au
local GradeService
local aw
local ax
local ay
cj_16 = nil
local MarketService
cj_33 = nil
local aE
local aF
cj_46 = nil
UpgradesLibrary = nil
local aG
local aH
local aI
local aK
local UpgradesService
cj_28 = nil
local aM
local aN
local aO
cj_54 = nil
local aP
local aQ
PlotService = nil
cj_66 = nil
cj_56 = nil
NumberUtils = nil
local aR
local aS
local State
local BoxesLibrary
local aW
cj_36 = nil
local aX
local BoxService
cj_61 = nil
IndexRewardsService = nil
cj_38 = nil
local a0
local a5
cj_64 = nil
PolisherService = nil
local LocalPlayer
cj_21 = nil
ClientDataManager = nil
local a9
DailyLoginService = nil
local bb
local CurrencyService
cj_49 = nil
function fns.fn1(q)
    local aU, aB, b_
    local ar = 0
    while true do
        ar += 1034
        if ar < 1039 then
            if ar < 1036 then
                if ar < 1035 then
                    if ar == 1034 then
                        aU, aB = pcall(NumberUtils.AbbreviateNumber, q)
                        b_ = aU
                        ar = if b_ then 4 else 2
                    else
                        break
                    end
                elseif ar == 1035 then
                    return aU
                else
                    ar = 6534
                    continue
                end
            elseif ar < 1037 then
                if ar == 1036 then
                    aU = b_
                    ar = if aU then 1 else 3
                else
                    ar = 11939
                    continue
                end
            elseif ar < 1038 then
                if ar == 1037 then
                    aU = tostring(q)
                    ar = 1
                else
                    ar = 16191
                    continue
                end
            else
                b_ = tostring(aB)
                ar = 2
            end
        else
            break
        end
    end
end
function fns.fn2()
    local X_1
    local aM = cj_29()
    if not aM then
        return false
    end
    local aC = tonumber(aM:GetAttribute("PendingBallCount")) or 0
    local aC_1
    if aC <= 0 then
        return false
    end
    aC_1, X_1 = pcall(InventoryService.HasInventorySpace, LocalPlayer, 1)
    if aC_1 and X_1 == false then
        return false
    end
    return ao("PickupCrateBox", aM)
end
function fns.fn30(g)
    local Gens = State.Gens
    local bP = State.Gens[g]
    local bR = if bP then 1 else 0
    local ca = 1850 * bR + 96 * (1 - bR)
    local bD = 2315 * bR + 271 * (1 - bR)
    if not ((ca * 1208 + bD * 748 + ca * bD) % 16777213 == 8249170) then
        bP = 0
    end
    Gens[g] = bP + 1
    return State.Gens[g]
end
function fns.fn66(w)
    local bx = {}
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_1 = bit32.bxor(j, p)
            j = bit32.band(j_1 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_2 = bit32.bxor(j, D)
            j = bit32.band(j_2 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(w), 5, 248602996, "table") then
        for i, v in ipairs(w) do
            table.insert(bx, v)
        end
    end
    return bx
end
function fns.fn108(F, u, x, t)
    local a0 = os.clock() + t
    while true do
        local ch = ay() and os.clock() < a0
        if ch then
            if F:GetAttribute(u) ~= x then
                return true
            end
            task.wait(0.1)
            continue
        end
        break
    end
    return false
end
function fns.fn119()
    local bE_1
    local K_1
    local cx = ar()
    local ap = cx or {}
    local ap_1
    K_1, bE_1, ap_1 = 0, 0, 0
    local bV = {}
    local bV_1
    local PlayerUnits = ap.PlayerUnits
    local bY = {}
    local bY_5
    local bH = PlayerUnits
    local bH_3
    local U = if bH then 1 else 0
    local ac = 2136 * U + 2951 * (1 - U)
    local by = 934 * U + 2988 * (1 - U)
    if not ((ac * 1262 + by * 3664 + ac * by) % 16777213 == 8112832) then
        bH = bY
    end
    for k, v in pairs(bH) do
        K_1 += 1
        table.insert(bV, v)
    end
    local aC = ap.Inventory and ap.Inventory.Boxes or {}
    local aC_2
    for k, v in pairs(aC) do
        for k, v in pairs(v) do
            local bY_2 = tonumber(v.Amount) or 0
            bE_1 += bY_2
        end
    end
    local bH_2 = ap.Crates or {}
    for k in pairs(bH_2) do
        ap_1 += 1
    end
    table.sort(bV, function(p, k)
        local N, bt, a9
        local bd = 0
        while true do
            bd += 1915
            if bd < 1924 then
                if bd < 1919 then
                    if bd < 1917 then
                        if bd < 1916 then
                            if bd == 1915 then
                                N = aM[BoxService.GetBoxForPlayerUnit(p.PlayerUnitName)]
                                bd = if N then 4 else 11
                            else
                                bd = 1918
                                continue
                            end
                        else
                            return bt > a9
                        end
                    elseif bd < 1918 then
                        a9 = N
                        bd = if bt ~= a9 then 1 else 10
                    else
                        N = 1
                        bd = 7
                    end
                elseif bd < 1921 then
                    if bd < 1920 then
                        if bd == 1919 then
                            bt = N
                            N = aM[BoxService.GetBoxForPlayerUnit(k.PlayerUnitName)]
                            local bA = if N then 1 else 0
                            local b0 = 3876 * bA + 1718 * (1 - bA)
                            local ao = 2653 * bA + 2728 * (1 - bA)
                            bd = if (b0 * 2710 + ao * 1975 + b0 * ao) % 16777213 == 9249450 then 2 else 8
                        else
                            bd = 8851
                            continue
                        end
                    else
                        break
                    end
                elseif bd < 1922 then
                    if bd == 1921 then
                        bt = 1
                        bd = 9
                    else
                        bd = 1922
                        continue
                    end
                elseif bd < 1923 then
                    if bd == 1922 then
                        bt = J[k.Variant]
                        bd = if bt then 9 else 6
                    else
                        bd = 14482
                        continue
                    end
                else
                    N = 0
                    bd = 2
                end
            elseif bd < 8851 then
                if bd < 1926 then
                    if bd < 1925 then
                        if bd == 1924 then
                            return N > bt
                        end
                        bd = 1920
                        continue
                    end
                    N = J[p.Variant]
                    bd = if N then 7 else 3
                elseif bd < 7364 then
                    if bd == 1926 then
                        N = 0
                        bd = 4
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
    local aW_2 = {}
    local cJ = #bV
    local bY_4 = math.min(5, cJ)
    local bF = 1
    while bF <= bY_4 do
        local ai = bF
        table.insert(aW_2, ak(bV[ai]))
        bF += 1
    end
    bV_1, bY_5 = pcall(BoxService.GetConveyorTier, LocalPlayer)
    bH_3, aC_2 = pcall(TokensService.GetTokenAmount, LocalPlayer, GradeService.GRADE_TOKEN_NAME)
    local aI = "Stats | " .. LocalPlayer.Name
    local cM = cj_61(R())
    local bo = { name = "Cash", value = "$" .. cM, inline = true }
    local cL_2 = tostring(K_1)
    local a_ = { name = "Units", value = cL_2, inline = true }
    local cL_3 = tostring(bE_1)
    local M = { name = "Lockers", value = cL_3, inline = true }
    local cL_4 = tostring(ap_1)
    local ab = { name = "Crates", value = cL_4, inline = true }
    local bV_2 = bV_1 and bY_5 or "?"
    local cO = tostring(bV_2)
    local bY_6 = { name = "Conveyor Tier", value = cO, inline = true }
    local bH_4 = bH_3 and aC_2 or 0
    local cE = tostring(bH_4)
    local aC_3 = { name = "Rank Tokens", value = cE, inline = true }
    local au_2 = #aW_2 > 0 and table.concat(aW_2, "\n")
    return {
        title = aI,
        color = 5793266,
        fields = { bo, a_, M, ab, bY_6, aC_3, { name = "Best Units", value = au_2 or "None", inline = false } }
    }
end
function fns.fn142()
    local bU_1, bU_2, bU_3
    local aA = false
    local N = tonumber(PlaytimeRewardsLibrary.TotalRewards) or #PlaytimeRewardsLibrary.Rewards
    local N_1, N_2, N_4
    local af = 1
    while af <= N do
        local aw = af
        N_1, bU_1 = pcall(PlaytimeRewardsService.CanClaim, LocalPlayer, aw)
        local bJ_1 = N_1 and bU_1 and ao("ClaimPlaytimeReward", aw)
        if bJ_1 then
            pcall(PlaytimeRewardsService.MarkClaimed, LocalPlayer, aw)
            aA = true
            task.wait(0.3)
        end
        af += 1
    end
    N_2, bU_2 = pcall(DailyLoginService.CanClaim, LocalPlayer)
    if N_2 and bU_2 then
        local N_3 = ao("ClaimDailyReward") or aA
        aA = N_3
        task.wait(0.3)
    end
    N_4, bU_3 = pcall(IndexRewardsService.HasAnyClaimable, LocalPlayer)
    local bF = if N_4 and bU_3 then 1 else 0
    local bW = 2530 * bF + 1058 * (1 - bF)
    local aq = 3853 * bF + 342 * (1 - bF)
    if (bW * 1111 + aq * 3526 + bW * aq) % 16777213 == 9367385 then
        local N_5 = ao("ClaimAllIndexRewards") or aA
        aA = N_5
    end
    return aA
end
function fns.fn152()
    local ce_1
    local ch_1
    ce_1, ch_1 = pcall(PlotService.GetPlot, LocalPlayer)
    local bC = ce_1 and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_3 = bit32.bxor(j, p)
            j = bit32.band(j_3 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_4 = bit32.bxor(j, D)
            j = bit32.band(j_4 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(typeof(ch_1), 8, 1471340621, "Instance")
    if bC then
        return ch_1
    end
    local ce_2 = (Workspace:FindFirstChild("Map"))
    if ce_2 then
        local Map = Workspace.Map
        ce_2 = Map:FindFirstChild("PlotModels")
    end
    local ch_3 = ce_2
    if ce_2 then
        ce_2 = ch_3:FindFirstChild(LocalPlayer.Name)
    end
    return ce_2
end
function fns.fn164(n)
    State.Webhook.DropVariants = cj_27(n, Z)
end
function fns.fn181(F)
    return next(F) ~= nil
end
function fns.fn195(u)
    State.PlaceBoxes = cj_27(u, aR)
end
function fns.fn210()
    return ab("ConveyorLuck")
end
function fns.fn235(x, w)
    return x.Order < w.Order
end
function fns.fn237()
    local aH_1
    local aF_1
    aF_1, aH_1 = pcall(PolisherService.IsUnlocked, LocalPlayer)
    if not aF_1 or not aH_1 then
        return nil
    end
    return cj_21("PolisherCollectPart")[1]
end
function fns.fn238(w, k)
    local aa, Z, bQ, a6, a7, bn
    local bj = 11
    while true do
        bj += 10407
        if bj < 10412 then
            if bj < 7770 then
                break
            elseif bj < 10409 then
                if bj < 10407 then
                    break
                elseif bj < 10408 then
                    local c0 = bQ - aa
                    return Z(0, c0)
                elseif bj == 10408 then
                    Z = math.max
                    bQ = (tonumber(w.Stock))
                    bj = if bQ then 0 else 5
                else
                    bj = 7770
                    continue
                end
            elseif bj < 10410 then
                if bj == 10409 then
                    bQ = (tonumber(Z.AmountPurchased))
                    bn = if bQ then 1 else 0
                    a6 = 1245 * bn + 251 * (1 - bn)
                    bj = 3
                else
                    bj = 10414
                    continue
                end
            elseif bj < 10411 then
                a7 = 556 * bn + 2001 * (1 - bn)
                bj = 13
            elseif bj == 10411 then
                aa = bQ
                bj = 15
            else
                bj = 7476
                continue
            end
        elseif bj < 10418 then
            if bj < 10415 then
                if bj < 10413 then
                    if bj == 10412 then
                        bQ = 0
                        bj = 0
                    else
                        bj = 10417
                        continue
                    end
                elseif bj < 10414 then
                    break
                else
                    Z = aa.Market
                    bj = 12
                end
            elseif bj < 10416 then
                if bj == 10415 then
                    Z = bQ[w.BoxName .. "_" .. w.Variant]
                    bQ = ((function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_7 = bit32.bxor(j, p)
                            j = bit32.band(j_7 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_8 = bit32.bxor(j, D)
                            j = bit32.band(j_8 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(Z), 5, 248602996, "table"))
                    bj = if bQ then 14 else 10
                else
                    bj = 7249
                    continue
                end
            elseif bj < 10417 then
                bQ = 0
                bj = 4
            else
                bj = if bQ then 2 else 15
            end
        elseif bj < 10421 then
            if bj < 10419 then
                if bj == 10418 then
                    aa = ar()
                    Z = aa
                    bj = if Z then 7 else 12
                else
                    bj = 10414
                    continue
                end
            elseif bj < 10420 then
                aa = 0
                bQ = Z
                bj = if (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_5 = bit32.bxor(j, p)
                        j = bit32.band(j_5 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_6 = bit32.bxor(j, D)
                        j = bit32.band(j_6 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(type(bQ), 5, 248602996, "table") then 8 else 1
            elseif bj == 10420 then
                bj = if (a6 * 196 + a7 * 27 + a6 * a7) % 16777213 == 951252 then 4 else 9
            else
                bj = 10422
                continue
            end
        elseif bj < 10422 then
            bQ = Z.Seed == k
            bj = 10
        elseif bj < 15105 then
            if bj == 10422 then
                bj = 1
            else
                bj = 10408
                continue
            end
        else
            break
        end
    end
end
function fns.fn252()
    local bN = false
    local Upgrades = State.Upgrades
    for k in pairs(Upgrades) do
        local ak = not ay() or not State.Enabled.BuyUpgrades
        if ak then
            break
        end
        local ak_1 = ab(k) or bN
        bN = ak_1
    end
    return bN
end
function fns.fn259()
    local aL, bT, Q, bu, be, bB
    local aI = 9
    while true do
        aI += 14212
        if aI < 14222 then
            if aI < 14215 then
                if aI < 13726 then
                    break
                elseif aI < 14213 then
                    break
                elseif aI < 14214 then
                    aI = if bB then 13 else 17
                elseif aI == 14214 then
                    aI = if Q then 14 else 8
                else
                    aI = 14217
                    continue
                end
            elseif aI < 14218 then
                if aI < 14216 then
                    if aI == 14215 then
                        Q, bu = pcall(InfinityTowerService.GetPlayBlockReason, LocalPlayer, aL)
                        be = bu ~= nil
                        bB = Q
                        aI = if bB then 18 else 1
                    else
                        aI = 14216
                        continue
                    end
                elseif aI < 14217 then
                    aI = if Q then 20 else 2
                elseif aI == 14217 then
                    bT = not (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_13 = bit32.bxor(j, p)
                            j = bit32.band(j_13 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_14 = bit32.bxor(j, D)
                            j = bit32.band(j_14 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(bu), 5, 248602996, "table")
                    aI = 12
                else
                    aI = 14220
                    continue
                end
            elseif aI < 14220 then
                if aI < 14219 then
                    Q = not (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_11 = bit32.bxor(j, p)
                            j = bit32.band(j_11 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_12 = bit32.bxor(j, D)
                            j = bit32.band(j_12 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(bT, 0, 5381, "")
                    aI = 4
                else
                    return false
                end
            elseif aI < 14221 then
                if aI == 14220 then
                    return true
                end
                aI = 14232
                continue
            elseif aI == 14221 then
                aL = cj_36()
                aI = if aL then 10 else 19
            else
                aI = 16170
                continue
            end
        elseif aI < 14229 then
            if aI < 14225 then
                if aI < 14223 then
                    if aI == 14222 then
                        bT = aL.TowerName
                        Q = ((function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_9 = bit32.bxor(j, p)
                                j = bit32.band(j_9 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_10 = bit32.bxor(j, D)
                                j = bit32.band(j_10 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(bT), 6, 2175009567, "string"))
                        local bt = if Q then 1 else 0
                        local bR = 2488 * bt + 3807 * (1 - bt)
                        local ar = 1982 * bt + 3157 * (1 - bt)
                        aI = if (bR * 2651 + ar * 1455 + bR * ar) % 16777213 == 14410714 then 6 else 4
                    else
                        aI = 14231
                        continue
                    end
                elseif aI < 14224 then
                    return false
                elseif aI == 14224 then
                    aI = if bT then 7 else 15
                else
                    aI = 14226
                    continue
                end
            elseif aI < 14227 then
                if aI < 14226 then
                    return false
                elseif aI == 14226 then
                    ao("SetInfinityTowerAutoBattle", bT, true)
                    aI = 8
                else
                    aI = 14220
                    continue
                end
            elseif aI < 14228 then
                ao("SetInfinityTowerAutoBattle", aL, true)
                task.wait(0.5)
                return true
            else
                bT = cj_56()
                aI = if (function(f, v)
                    if type(f) ~= "number" then
                        return false
                    end
                    if f % 1 ~= 0 then
                        return false
                    end
                    local z = f < -2147483648
                    if z then
                    else
                        z = f > 2147483647
                    end
                    if z then
                        return false
                    end
                    local F_1 = bit32.bxor(f, 1540483477)
                    local F_2 = bit32.band(F_1 * 403 + bit32.lshift(F_1, 24), 4294967295)
                    local F_3 = bit32.bxor(F_2, bit32.rshift(F_2, 13))
                    return F_3 == v
                end)(#bT, 544454170) then 21 else 3
            end
        elseif aI < 14232 then
            if aI < 14230 then
                if aI == 14229 then
                    Q, bu = aQ("StartInfinityTowerBattle", aL, bT)
                    bT = not Q
                    aI = if bT then 12 else 5
                else
                    aI = 14227
                    continue
                end
            elseif aI < 14231 then
                if aI == 14230 then
                    bB = be
                    aI = 1
                else
                    aI = 14231
                    continue
                end
            else
                aL = cj_22()
                aI = if not aL then 11 else 16
            end
        elseif aI < 15393 then
            if aI < 14233 then
                Q = aL.AutoBattle ~= true
                aI = 2
            elseif aI == 14233 then
                return false
            else
                break
            end
        else
            break
        end
    end
end
function fns.fn284()
    local Character = LocalPlayer.Character
    local ba = Character
    local a9 = if ba then 1 else 0
    local b7 = 3049 * a9 + 4000 * (1 - a9)
    local bx = 3765 * a9 + 2377 * (1 - a9)
    if (b7 * 1553 + bx * 3370 + b7 * bx) % 16777213 == 12125419 then
        ba = Character:FindFirstChildOfClass("Humanoid")
    end
    return ba
end
function fns.fn303()
    local Webhook, aa, aS, b7, bC, a8
    local Z = 20
    while true do
        Z += 7406
        if Z < 7417 then
            if Z < 7410 then
                if Z < 7409 then
                    if Z < 7407 then
                        if Z < 3616 then
                            break
                        elseif Z < 6677 then
                            break
                        elseif Z < 7406 then
                            break
                        else
                            local bW_1 = if Webhook.KnownUnits == nil then 1 else 0
                            local aG_1 = 2032 * bW_1 + 3782 * (1 - bW_1)
                            local ag_1 = 2656 * bW_1 + 1730 * (1 - bW_1)
                            Z = if (aG_1 * 4048 + ag_1 * 147 + aG_1 * ag_1) % 16777213 == 14012960 then 5 else 3
                        end
                    elseif Z < 7408 then
                        aa = Webhook.Stats
                        local bW_2 = if aa then 1 else 0
                        local aG_2 = 168 * bW_2 + 4038 * (1 - bW_2)
                        local ag_2 = 1760 * bW_2 + 1152 * (1 - bW_2)
                        Z = if (aG_2 * 2919 + ag_2 * 692 + aG_2 * ag_2) % 16777213 == 2003992 then 4 else 9
                    elseif Z == 7408 then
                        bC = 881 * a8 + 1813 * (1 - a8)
                        Z = 8
                    else
                        Z = 7406
                        continue
                    end
                else
                    for k2, v in pairs(aa) do
                        local ce = v
                        if not Webhook.KnownUnits[k2] then
                            Webhook.KnownUnits[k2] = true
                            aa = Webhook.Drops and (function(w, o, F, k)
                                if type(w) ~= "string" then
                                    return false
                                end
                                if #w ~= o then
                                    return false
                                end
                                local j = 5381
                                local E = buffer.fromstring(w)
                                local x = 0
                                while x <= o - 4 do
                                    local p = buffer.readu32(E, x)
                                    local j_17 = bit32.bxor(j, p)
                                    j = bit32.band(j_17 * 33, 4294967295)
                                    x = x + 4
                                end
                                while x < o do
                                    local D = buffer.readu8(E, x)
                                    local j_18 = bit32.bxor(j, D)
                                    j = bit32.band(j_18 * 33, 4294967295)
                                    x = x + 1
                                end
                                if j ~= F then
                                    return false
                                end
                                return w == k
                            end)(type(ce), 5, 248602996, "table") and aE(ce)
                            if aa then
                                table.insert(Webhook.Queue, ak(ce))
                                if #Webhook.Queue > 40 then
                                    table.remove(Webhook.Queue, 1)
                                end
                            end
                        end
                    end
                    Z = 17
                end
            elseif Z < 7415 then
                if Z < 7414 then
                    if Z < 7412 then
                        if Z < 7411 then
                            if Z == 7410 then
                                aa = U()
                                Z = 9
                            else
                                Z = 7408
                                continue
                            end
                        elseif Z == 7411 then
                            Webhook.KnownUnits = {}
                            for k in pairs(aa) do
                                Webhook.KnownUnits[k] = true
                            end
                            Z = 17
                        else
                            Z = 7412
                            continue
                        end
                    elseif Z < 7413 then
                        if Z == 7412 then
                            Z = if aa then 12 else 21
                        else
                            Z = 7418
                            continue
                        end
                    elseif Z == 7413 then
                        aa = aS
                        Z = if (function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_15 = bit32.bxor(j, p)
                                j = bit32.band(j_15 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_16 = bit32.bxor(j, D)
                                j = bit32.band(j_16 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(aa), 5, 248602996, "table") then 0 else 10
                    else
                        Z = 7417
                        continue
                    end
                elseif Z == 7414 then
                    Z = if (b7 * 2391 + bC * 2041 + b7 * bC) % 16777213 == 9860329 then 24 else 19
                else
                    Z = 7418
                    continue
                end
            elseif Z < 7416 then
                Z = if aa then 25 else 22
            else
                aa = Webhook.Drops
                a8 = if aa then 1 else 0
                b7 = 2464 * a8 + 1486 * (1 - a8)
                Z = 2
            end
        elseif Z < 7426 then
            if Z < 7424 then
                if Z < 7420 then
                    if Z < 7418 then
                        break
                    elseif Z < 7419 then
                        if Z == 7418 then
                            aa = Webhook.Queue
                            Webhook.Queue = {}
                            local Name = LocalPlayer.Name
                            aX({ title = "New Units | " .. Name, description = table.concat(aa, "\n"), color = 15899332 })
                            Z = 1
                        else
                            Z = 7410
                            continue
                        end
                    else
                        table.clear(Webhook.Queue)
                        Z = 16
                    end
                elseif Z < 7422 then
                    if Z < 7421 then
                        if Z == 7420 then
                            Webhook.LastStats = os.clock()
                            aX(aK())
                            Z = 18
                        else
                            Z = 7421
                            continue
                        end
                    elseif Z == 7421 then
                        aS = aa.PlayerUnits
                        Z = 7
                    else
                        Z = 7416
                        continue
                    end
                elseif Z < 7423 then
                    Z = 1
                else
                    Z = 10
                end
            elseif Z < 7425 then
                Z = 11
            else
                local bW_3 = if aa then 1 else 0
                local aG_3 = 1654 * bW_3 + 2281 * (1 - bW_3)
                local ag_3 = 2071 * bW_3 + 2966 * (1 - bW_3)
                Z = if (aG_3 * 355 + ag_3 * 2077 + aG_3 * ag_3) % 16777213 == 8314071 then 23 else 6
            end
        elseif Z < 7431 then
            if Z < 7428 then
                if Z < 7427 then
                    Webhook = State.Webhook
                    aa = ar()
                    aS = aa
                    Z = if aS then 15 else 7
                elseif Z == 7427 then
                    Z = if not Webhook.Drops then 13 else 16
                else
                    Z = 7408
                    continue
                end
            elseif Z < 7429 then
                Z = if aa then 14 else 18
            elseif Z < 7430 then
                if Z == 7429 then
                    aa = U()
                    Z = 6
                else
                    Z = 7414
                    continue
                end
            elseif Z == 7430 then
                aa = #Webhook.Queue > 0
                Z = 19
            else
                Z = 8304
                continue
            end
        elseif Z < 12679 then
            if Z < 8547 then
                if Z < 8304 then
                    if Z == 7431 then
                        aa = os.clock() - Webhook.LastStats >= Webhook.StatsMinutes * 60
                        Z = 22
                    else
                        Z = 12872
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
end
function fns.fn313(n)
    local bu, aA
    local bj = 2
    while true do
        bj += 12426
        if bj < 12428 then
            if bj < 10546 then
                break
            elseif bj < 12426 then
                break
            elseif bj < 12427 then
                return aA
            else
                break
            end
        elseif bj < 12465 then
            if bj < 12429 then
                bu = cj_28()
                aA = {}
                bj = if not bu then 0 else 3
            elseif bj == 12429 then
                local CollectionService = I.CollectionService
                local GetTagged = CollectionService.GetTagged
                for i, v in ipairs(GetTagged(CollectionService, n)) do
                    if v:IsDescendantOf(bu) then
                        table.insert(aA, v)
                    end
                end
                return aA
            else
                break
            end
        else
            break
        end
    end
end
function fns.fn352()
    local dE = cj_58
    pcall(task.cancel, dE)
end
function fns.fn358()
    local cc = State.SellViaPolisher and cj_70()
    if cc then
        cj_49(cc)
    end
    return cj_64()
end
function fns.fn361()
    local Url = State.Webhook.Url
    if not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_19 = bit32.bxor(j, p)
            j = bit32.band(j_19 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_20 = bit32.bxor(j, D)
            j = bit32.band(j_20 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(Url), 6, 2175009567, "string") then
        return nil
    else
        local au_3 = string.gsub(Url, "%s+", "")
        local aJ = (string.find(au_3, "^https://discord%.com/api/webhooks/"))
        local bg = if aJ then 1 else 0
        local bq = 3064 * bg + 1808 * (1 - bg)
        local br = 902 * bg + 1736 * (1 - bg)
        if not ((bq * 1542 + br * 410 + bq * br) % 16777213 == 7858236) then
            aJ = string.find(au_3, "^https://discordapp%.com/api/webhooks/")
        end
        if not aJ then
            aJ = string.find(au_3, "^https://ptb%.discord%.com/api/webhooks/")
        end
        if not aJ then
            aJ = string.find(au_3, "^https://canary%.discord%.com/api/webhooks/")
        end
        local bg_1 = if aJ then 1 else 0
        local bq_1 = 30 * bg_1 + 3012 * (1 - bg_1)
        local br_1 = 2282 * bg_1 + 2396 * (1 - bg_1)
        if (bq_1 * 3092 + br_1 * 3808 + bq_1 * br_1) % 16777213 == 8851076 then
            return au_3
        end
        return nil
    end
end
function fns.fn416()
    return cj_21("RollConveyorPart")[1]
end
function fns.fn421()
    local aN = ar()
    local bR = aN
    local aL = {}
    local bW = if bR then 1 else 0
    local at = 3592 * bW + 2512 * (1 - bW)
    local aI = 1992 * bW + 4048 * (1 - bW)
    if (at * 3076 + aI * 1463 + at * aI) % 16777213 == 4341339 then
        bR = aN.Inventory
    end
    if bR then
        bR = aN.Inventory.Boxes
    end
    local aN_1 = bR
    if not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_25 = bit32.bxor(j, p)
            j = bit32.band(j_25 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_26 = bit32.bxor(j, D)
            j = bit32.band(j_26 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(aN_1), 5, 248602996, "table") then
        return aL
    end
    for k2, v in pairs(aN_1) do
        local aN_2 = (function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_23 = bit32.bxor(j, p)
                j = bit32.band(j_23 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_24 = bit32.bxor(j, D)
                j = bit32.band(j_24 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(v), 5, 248602996, "table") and BoxesLibrary[k2]
        if aN_2 then
            for k3, v in pairs(v) do
                local aN_3 = (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_21 = bit32.bxor(j, p)
                        j = bit32.band(j_21 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_22 = bit32.bxor(j, D)
                        j = bit32.band(j_22 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(type(v), 5, 248602996, "table") and tonumber(v.Amount)
                local bR_1 = aN_3 or 0
                if bR_1 > 0 then
                    table.insert(aL, { Box = k2, Variant = k3, Amount = bR_1 })
                end
            end
        end
    end
    table.sort(aL, function(C, y)
        local bb_1
        local U_1
        U_1, bb_1 = aM[C.Box] or 0, aM[y.Box] or 0
        if U_1 ~= bb_1 then
            return U_1 > bb_1
        else
            local ai_1 = J[C.Variant]
            local bq = if ai_1 then 1 else 0
            local bd = 990 * bq + 2025 * (1 - bq)
            local V = 1810 * bq + 806 * (1 - bq)
            if not ((bd * 2497 + V * 16 + bd * V) % 16777213 == 4292890) then
                ai_1 = 1
            end
            return ai_1 > (J[y.Variant] or 1)
        end
    end)
    return aL
end
function fns.fn428(q)
    local aZ_1
    local bH = UpgradesLibrary[q]
    local aV = not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_29 = bit32.bxor(j, p)
            j = bit32.band(j_29 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_30 = bit32.bxor(j, D)
            j = bit32.band(j_30 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bH), 5, 248602996, "table") or not aN(bH.GetPrice)
    local aV_1, aV_4, aV_6
    local bt = if aV then 1 else 0
    local bo = 101 * bt + 1482 * (1 - bt)
    local bO = 584 * bt + 2099 * (1 - bt)
    if (bo * 3204 + bO * 859 + bo * bO) % 16777213 == 884244 then
        return false
    else
        aV_1, aZ_1 = pcall(UpgradesService.GetTimesPurchased, LocalPlayer, q)
        local be = aV_1 and tonumber(aZ_1)
        local be_1, be_2
        local aV_2 = be or 0
        local aV_3 = bH.MaxPurchases
        local bt_1 = if aV_3 then 1 else 0
        local bo_1 = 1778 * bt_1 + 3128 * (1 - bt_1)
        local bO_1 = 3765 * bt_1 + 2967 * (1 - bt_1)
        if (bo_1 * 276 + bO_1 * 2655 + bo_1 * bO_1) % 16777213 == 403760 then
            aV_3 = aV_2 >= bH.MaxPurchases
        end
        if aV_3 then
            return false
        else
            aV_4, be_1 = pcall(bH.GetPrice, aV_2)
            local bH_5 = not aV_4
            local bt_2 = if bH_5 then 1 else 0
            local bo_2 = 3699 * bt_2 + 871 * (1 - bt_2)
            local bO_2 = 3353 * bt_2 + 3668 * (1 - bt_2)
            if not ((bo_2 * 2409 + bO_2 * 3089 + bo_2 * bO_2) % 16777213 == 14893842) then
                bH_5 = not (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_27 = bit32.bxor(j, p)
                        j = bit32.band(j_27 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_28 = bit32.bxor(j, D)
                        j = bit32.band(j_28 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(type(be_1), 6, 472614556, "number")
            end
            if not bH_5 then
                bH_5 = be_1 > R()
            end
            if bH_5 then
                return false
            elseif not ao("PurchaseUpgrade", q) then
                return false
            else
                local bH_6 = os.clock() + 1.5
                while true do
                    local aV_5 = ay() and os.clock() < bH_6
                    if not aV_5 then
                        return false
                    end
                    aV_6, be_2 = pcall(UpgradesService.GetTimesPurchased, LocalPlayer, q)
                    local bg = aV_6 and tonumber(be_2) and be_2 > aV_2
                    if bg then
                        break
                    end
                    task.wait(0.1)
                end
                return true
            end
        end
    end
end
function fns.fn429(y, s)
    local bp, cg, aD
    local M = 1
    while true do
        M += 11488
        if M < 11491 then
            if M < 6266 then
                break
            elseif M < 11488 then
                break
            elseif M < 11489 then
                if M == 11488 then
                    cg = aF(bp)
                    M = 5
                else
                    M = 11493
                    continue
                end
            elseif M < 11490 then
                if M == 11489 then
                    bp = State.BoxVariants[y]
                    cg = bp
                    M = if cg then 0 else 5
                else
                    M = 11493
                    continue
                end
            elseif M == 11490 then
                cg = bp
                bp = not aF(cg)
                M = if bp then 7 else 9
            else
                M = 11493
                continue
            end
        elseif M < 11496 then
            if M < 11493 then
                if M < 11492 then
                    aD = bp
                    M = 8
                else
                    break
                end
            elseif M < 11494 then
                if M == 11493 then
                    aD = cg
                    M = if aD then 3 else 8
                else
                    M = 15404
                    continue
                end
            elseif M < 11495 then
                if M == 11494 then
                    bp = State.BuyVariants
                    M = 2
                else
                    M = 13901
                    continue
                end
            else
                return bp
            end
        elseif M < 12609 then
            if M < 11497 then
                bp = aD
                M = if bp then 2 else 6
            elseif M == 11497 then
                bp = cg[s] == true
                M = 7
            else
                M = 11044
                continue
            end
        else
            break
        end
    end
end
function fns.fn469(s)
    local ag = 3
    while true do
        ag += 12630
        if ag < 12630 then
            break
        elseif ag < 12632 then
            if ag < 12631 then
                return s
            end
            return s[1]
        elseif ag < 12633 then
            break
        elseif ag < 15913 then
            if ag == 12633 then
                ag = if (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_31 = bit32.bxor(j, p)
                        j = bit32.band(j_31 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_32 = bit32.bxor(j, D)
                        j = bit32.band(j_32 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(typeof(s), 5, 248602996, "table") then 1 else 0
            else
                ag = 12631
                continue
            end
        else
            break
        end
    end
end
function fns.fn476(D)
    State.SellViaPolisher = D ~= false
end
function fns.fn477()
    local aW = ah()
    local av = not aW or LocalPlayer:GetAttribute("TutorialConveyorLock")
    local av_2
    if av then
        return false
    end
    if State.Enabled.BuyRoll then
        aO(aW)
    end
    local attr2 = aW:GetAttribute("RollCooldownUntil")
    local ce = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_35 = bit32.bxor(j, p)
            j = bit32.band(j_35 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_36 = bit32.bxor(j, D)
            j = bit32.band(j_36 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(attr2), 6, 472614556, "number") and Workspace:GetServerTimeNow() < attr2
    local ce_3
    if ce then
        return false
    end
    av_2, ce_3 = pcall(BoxService.GetConveyorRollCooldown, LocalPlayer)
    local ax = os.clock() - State.LastRollAt
    local bJ = av_2 and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_33 = bit32.bxor(j, p)
            j = bit32.band(j_33 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_34 = bit32.bxor(j, D)
            j = bit32.band(j_34 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(ce_3), 6, 472614556, "number")
    if ax < (bJ and ce_3 or 1) then
        return false
    end
    local attr = aW:GetAttribute("RollCount")
    State.LastRollAt = os.clock()
    if not ao("RequestConveyorRoll") then
        return false
    end
    Y(aW, "RollCount", attr, 2)
    local av_5 = ay() and State.Enabled.BuyRoll
    if av_5 then
        aO(aW)
    end
    return true
end
function fns.fn483(t)
    local Webhook, bo, aC
    local X = 4
    while true do
        X += 3190
        if X < 3579 then
            if X < 3193 then
                if X < 3191 then
                    if X < 3190 then
                        break
                    elseif X == 3190 then
                        bo = true
                        X = 1
                    else
                        X = 3194
                        continue
                    end
                elseif X < 3192 then
                    if X == 3191 then
                        aC = bo
                        X = if aC then 5 else 3
                    else
                        X = 3192
                        continue
                    end
                else
                    break
                end
            elseif X < 3195 then
                if X < 3194 then
                    if X == 3193 then
                        aC = false
                        X = 5
                    else
                        X = 3295
                        continue
                    end
                else
                    Webhook = State.Webhook
                    bo = t
                    X = if bo then 0 else 1
                end
            elseif X < 3295 then
                if X == 3195 then
                    Webhook.Drops = aC
                    X = 2
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
function fns.fn494(z, A)
    local Character2 = LocalPlayer.Character
    local aH = Character2 and Character2:FindFirstChild("HumanoidRootPart")
    local aP_1 = aH
    if aH then
        aH = aP_1:IsA("BasePart")
    end
    if not aH then
        return false
    end
    local CFrame = aP_1.CFrame
    aP_1.AssemblyLinearVelocity = Vector3.zero
    aP_1.CFrame = z
    task.wait(0.25)
    local aP_2 = A()
    task.wait(0.15)
    local L = LocalPlayer.Character
    if L then
        local Character = LocalPlayer.Character
        L = Character:FindFirstChild("HumanoidRootPart")
    end
    local bm_2 = L
    if L then
        L = bm_2:IsA("BasePart")
    end
    if L then
        bm_2.AssemblyLinearVelocity = Vector3.zero
        bm_2.CFrame = CFrame
    end
    return aP_2
end
function fns.fn499(q)
    local Webhook, bP
    local aP = 1
    while true do
        aP += 13601
        if aP < 11221 then
            break
        elseif aP < 13603 then
            if aP < 13601 then
                break
            elseif aP < 13602 then
                break
            elseif aP == 13602 then
                Webhook = State.Webhook
                bP = (tonumber(q))
                aP = if bP then 3 else 2
            else
                aP = 11684
                continue
            end
        elseif aP < 14486 then
            if aP < 13604 then
                if aP == 13603 then
                    bP = 10
                    aP = 3
                else
                    aP = 7304
                    continue
                end
            elseif aP == 13604 then
                Webhook.StatsMinutes = math.max(1, bP)
                aP = 0
            else
                aP = 13603
                continue
            end
        else
            break
        end
    end
end
function fns.fn506(z)
    local ba = PlayerUnitsLibrary[z.PlayerUnitName]
    local ba_1 = ba and ba.DisplayName
    local aZ = if ba_1 then 1 else 0
    local ax = 3136 * aZ + 2329 * (1 - aZ)
    local bO = 549 * aZ + 1673 * (1 - aZ)
    if not ((ax * 1205 + bO * 3212 + ax * bO) % 16777213 == 7263932) then
        ba_1 = tostring(z.PlayerUnitName)
    end
    local R_1 = ba_1
    local ba_2 = z.Variant or "Normal"
    local eg = tostring(ba_2) .. ")"
    local Q = R_1 .. " (" .. eg
    if z.Grade then
        local ef = tostring(z.Grade) .. "]"
        Q = Q .. " [" .. ef
    end
    return Q
end
function fns.fn519(y, E)
    local aQ = tostring(y)
    local P = E
    local am = if P then 1 else 0
    local al = 2717 * am + 789 * (1 - am)
    local aC = 3907 * am + 508 * (1 - am)
    if not ((al * 3826 + aC * 406 + al * aC) % 16777213 == 5819590) then
        P = "Info"
    end
    aj:Notify({ Title = aG, Content = aQ, Type = P, Duration = 4 })
end
function fns.fn538(G)
    local Webhook = State.Webhook
    local bd = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_37 = bit32.bxor(j, p)
            j = bit32.band(j_37 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_38 = bit32.bxor(j, D)
            j = bit32.band(j_38 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(G), 6, 2175009567, "string") and G
    local aU = bd or ""
    Webhook.Url = aU
end
function fns.fn546(m)
    local bk = m and true or false
    State.RankUseMoney = bk
end
function fns.fn548(j)
    State.SellUnitBoxes = cj_27(j, aR)
end
function fns.fn599()
    local aE_1
    local aa_1
    aa_1, aE_1 = pcall(BoxService.HasBoxInventorySpace, LocalPlayer, 1)
    return aa_1 and aE_1 == true
end
function fns.fn611()
    aO()
end
function fns.fn612()
    return not a5.Unloaded
end
function fns.fn646(c)
    local ep = Remotes
    return ep:FindFirstChild(c)
end
function fns.fn672(q, l)
    return q.Mult < l.Mult
end
function fns.fn695(x)
    State.Upgrades = cj_27(x, V)
end
function fns.fn706(G, F)
    local cg = {}
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_43 = bit32.bxor(j, p)
            j = bit32.band(j_43 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_44 = bit32.bxor(j, D)
            j = bit32.band(j_44 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(G), 5, 248602996, "table") then
        for k2, v in pairs(G) do
            local bZ = k2
            local bp
            local bW = v == true and (function(w, o, F, k)
                if type(w) ~= "string" then
                    return false
                end
                if #w ~= o then
                    return false
                end
                local j = 5381
                local E = buffer.fromstring(w)
                local x = 0
                while x <= o - 4 do
                    local p = buffer.readu32(E, x)
                    local j_41 = bit32.bxor(j, p)
                    j = bit32.band(j_41 * 33, 4294967295)
                    x = x + 4
                end
                while x < o do
                    local D = buffer.readu8(E, x)
                    local j_42 = bit32.bxor(j, D)
                    j = bit32.band(j_42 * 33, 4294967295)
                    x = x + 1
                end
                if j ~= F then
                    return false
                end
                return w == k
            end)(type(bZ), 6, 2175009567, "string")
            if bW then
                bp = bZ
            elseif (function(w, o, F, k)
                if type(w) ~= "string" then
                    return false
                end
                if #w ~= o then
                    return false
                end
                local j = 5381
                local E = buffer.fromstring(w)
                local x = 0
                while x <= o - 4 do
                    local p = buffer.readu32(E, x)
                    local j_39 = bit32.bxor(j, p)
                    j = bit32.band(j_39 * 33, 4294967295)
                    x = x + 4
                end
                while x < o do
                    local D = buffer.readu8(E, x)
                    local j_40 = bit32.bxor(j, D)
                    j = bit32.band(j_40 * 33, 4294967295)
                    x = x + 1
                end
                if j ~= F then
                    return false
                end
                return w == k
            end)(type(v), 6, 2175009567, "string") then
                bp = v
            end
            if bp then
                local bW_4 = F[bp] or bp
                cg[bW_4] = true
            end
        end
    end
    return cg
end
function fns.fn774()
    return cj_21("ConveyorCollectPart")[1]
end
function fns.fn789()
    local E = cj_21("DropperBasePart")
    table.sort(E, function(o, D)
        local bD = (tonumber(o.Name))
        local bY = if bD then 1 else 0
        local cb = 2662 * bY + 2704 * (1 - bY)
        local aI = 1452 * bY + 420 * (1 - bY)
        if not ((cb * 124 + aI * 260 + cb * aI) % 16777213 == 4572832) then
            bD = 0
        end
        local bx = tonumber(D.Name) or 0
        return bD < bx
    end)
    return E
end
function fns.fn810()
    local az_1
    local af_1, af_2
    local bE_2, bE_5
    if not aF(State.MarketBoxes) then
        return false
    end
    af_1, az_1 = pcall(MarketService.GetSeed)
    if not af_1 then
        return false
    end
    af_2, bE_2 = pcall(MarketService.GetBoxes, az_1)
    local aM = not af_2 or not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_49 = bit32.bxor(j, p)
            j = bit32.band(j_49 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_50 = bit32.bxor(j, D)
            j = bit32.band(j_50 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bE_2), 5, 248602996, "table")
    local aM_1
    if aM then
        return false
    end
    local af_3 = false
    for i, v in ipairs(bE_2) do
        local bE_3 = not ay() or not State.Enabled.BuyMarket
        if bE_3 then
            break
        end
        local bE_4 = (function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_47 = bit32.bxor(j, p)
                j = bit32.band(j_47 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_48 = bit32.bxor(j, D)
                j = bit32.band(j_48 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(v), 5, 248602996, "table") and State.MarketBoxes[v.BoxName]
        if bE_4 then
            bE_5, aM_1 = pcall(MarketService.GetPrice, v.BoxData, v.Variant)
            local M = bE_5 and (function(w, o, F, k)
                if type(w) ~= "string" then
                    return false
                end
                if #w ~= o then
                    return false
                end
                local j = 5381
                local E = buffer.fromstring(w)
                local x = 0
                while x <= o - 4 do
                    local p = buffer.readu32(E, x)
                    local j_45 = bit32.bxor(j, p)
                    j = bit32.band(j_45 * 33, 4294967295)
                    x = x + 4
                end
                while x < o do
                    local D = buffer.readu8(E, x)
                    local j_46 = bit32.bxor(j, D)
                    j = bit32.band(j_46 * 33, 4294967295)
                    x = x + 1
                end
                if j ~= F then
                    return false
                end
                return w == k
            end)(type(aM_1), 6, 472614556, "number") and aM_1 <= R() and aI(v, az_1) > 0 and ax()
            if M then
                local BoxName = v.BoxName
                local Variant = v.Variant
                local bE_6 = ao("MarketPurchaseCash", BoxName, Variant) or af_3
                af_3 = bE_6
                task.wait(0.5)
            end
        end
    end
    return af_3
end
function fns.fn833(s)
    State.SellUnitVariants = cj_27(s, Z)
end
function fns.fn858()
    local aD = ar()
    local bF = aD and aD.Crates
    if not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_51 = bit32.bxor(j, p)
            j = bit32.band(j_51 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_52 = bit32.bxor(j, D)
            j = bit32.band(j_52 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bF), 5, 248602996, "table") then
        return false
    else
        local bF_1 = {}
        local eD = pairs
        for k in eD(bF) do
            table.insert(bF_1, k)
        end
        local aD_2 = false
        local eD_1 = ipairs
        for k, v in eD_1(bF_1) do
            local bF_2 = not ay() or not State.Enabled.SellBoxes
            if bF_2 then
                break
            end
            local bF_3 = ao("SellCrate", v) or aD_2
            aD_2 = bF_3
            task.wait(0.15)
        end
        return aD_2
    end
end
function fns.fn861(H)
    local T_1
    local aY_1
    aY_1, T_1 = pcall(BoxService.GetBoxForPlayerUnit, H.PlayerUnitName)
    local az = aF(State.Webhook.DropBoxes) and not (aY_1 and State.Webhook.DropBoxes[T_1])
    if az then
        return false
    else
        local aY_2 = (aF(State.Webhook.DropVariants))
        local bn = if aY_2 then 1 else 0
        local aD = 538 * bn + 1128 * (1 - bn)
        local bB = 2085 * bn + 600 * (1 - bn)
        if (aD * 297 + bB * 156 + aD * bB) % 16777213 == 1606776 then
            aY_2 = not State.Webhook.DropVariants[H.Variant or "Normal"]
        end
        if aY_2 then
            return false
        end
        return true
    end
end
function fns.fn863(v)
    State.TraitTargets = cj_27(v, aw)
end
function fns.fn877(g, f)
    return g.Mult < f.Mult
end
function fns.fn922(E)
    State.TraitUnits = cj_27(E, aS)
end
function fns.fn943()
    local bi, bw, bd, aF, bn
    local Systems = Workspace:FindFirstChild("Systems")
    local bS = Systems
    local ca = if bS then 1 else 0
    local bg = 2533 * ca + 1888 * (1 - ca)
    local bz = 2154 * ca + 666 * (1 - ca)
    if (bg * 1676 + bz * 2715 + bg * bz) % 16777213 == 15549500 then
        bS = Systems:FindFirstChild("Obby")
    end
    local bG_1 = bS
    if bS then
        bS = bG_1:FindFirstChild("VictoryParts")
    end
    local bG_2 = bS
    if not bG_2 then
        return false
    else
        local bS_1 = false
        local eK = ObbyBonusLibrary
        local aK = false
        for k2 in pairs(eK) do
            local aZ = k2
            local by = 11
            while true do
                if by < 22 then
                    if by < 11 then
                        if by < 5 then
                            if by < 2 then
                                if by < 1 then
                                    bn = aF > 0
                                    by = 5
                                else
                                    aK = true
                                    by = 44
                                end
                            elseif by < 3 then
                                aF = bd
                                by = if not aF then 28 else 22
                            elseif by < 4 then
                                bw = aF
                                by = if bw then 8 else 14
                            else
                                bS_1 = true
                                by = 25
                            end
                        elseif by < 8 then
                            if by < 6 then
                                by = if bn then 4 else 34
                            elseif by < 7 then
                                by = 1
                            else
                                by = 44
                            end
                        elseif by < 9 then
                            bw = bi
                            by = 14
                        elseif by < 10 then
                            aF = bd:IsA("BasePart")
                            by = 3
                        else
                            bd = LocalPlayer.Character
                            by = if bd then 24 else 2
                        end
                    elseif by < 16 then
                        if by < 13 then
                            if by < 12 then
                                bi = not ay()
                                by = if bi then 33 else 39
                            else
                                by = 36
                            end
                        elseif by < 14 then
                            by = 7
                        elseif by < 15 then
                            by = if bw then 19 else 7
                        else
                            aF = bd
                            by = 43
                        end
                    elseif by < 19 then
                        if by < 17 then
                            task.wait(0.25)
                            by = 40
                        elseif by < 18 then
                            bi, bw = pcall(ObbyBonusService.CanClaimBonus, LocalPlayer, aZ)
                            bd = bG_2:FindFirstChild(aZ)
                            aF = LocalPlayer.Character
                            bn = aF
                            by = if bn then 26 else 18
                        else
                            aF = bi
                            bi = bn
                            by = if aF then 20 else 27
                        end
                    elseif by < 20 then
                        bw = bi.CFrame
                        bi.AssemblyLinearVelocity = Vector3.zero
                        bi.CFrame = bd.CFrame + Vector3.new(0, 3, 0)
                        task.wait(0.4)
                        ao("ClaimObbyBonus", bd)
                        bi = os.clock() + 2
                        by = 12
                    elseif by < 21 then
                        aF = bw
                        by = 27
                    else
                        by = 13
                    end
                elseif by < 33 then
                    if by < 27 then
                        if by < 24 then
                            if by < 23 then
                                by = if (aF.Position - bw.Position).Magnitude > 12 then 35 else 16
                            else
                                bd = os.clock() < bi
                                by = 32
                            end
                        elseif by < 25 then
                            aF = LocalPlayer.Character
                            bd = aF:FindFirstChild("HumanoidRootPart")
                            by = 2
                        elseif by < 26 then
                            task.wait(1)
                            bi = os.clock() + 3
                            by = 31
                        else
                            bn = aF:FindFirstChild("HumanoidRootPart")
                            by = 18
                        end
                    elseif by < 30 then
                        if by < 28 then
                            by = if aF then 15 else 43
                        elseif by < 29 then
                            by = 13
                        else
                            bd, aF = pcall(ObbyBonusService.GetBonusCooldownTimeLeft, LocalPlayer, aZ)
                            bn = bd
                            by = if bn then 37 else 30
                        end
                    elseif by < 31 then
                        by = if bn then 0 else 5
                    elseif by < 32 then
                        by = 38
                    else
                        by = if bd then 29 else 42
                    end
                elseif by < 39 then
                    if by < 36 then
                        if by < 34 then
                            by = if bi then 6 else 17
                        elseif by < 35 then
                            task.wait(0.1)
                            by = 41
                        else
                            aF.AssemblyLinearVelocity = Vector3.zero
                            bd = LocalPlayer.Character
                            bd.PivotTo(bd, bw)
                            by = 16
                        end
                    elseif by < 37 then
                        bd = (ay())
                        by = if bd then 23 else 32
                    elseif by < 38 then
                        bn = (function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_53 = bit32.bxor(j, p)
                                j = bit32.band(j_53 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_54 = bit32.bxor(j, D)
                                j = bit32.band(j_54 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(aF), 6, 472614556, "number")
                        by = 30
                    else
                        by = if os.clock() < bi then 10 else 21
                    end
                elseif by < 42 then
                    if by < 40 then
                        bi = not State.Enabled.Obby
                        by = 33
                    elseif by < 41 then
                        by = 31
                    else
                        by = 12
                    end
                elseif by < 43 then
                    by = 25
                elseif by < 44 then
                    by = if aF then 9 else 3
                else
                    break
                end
            end
            if aK then
                break
            end
        end
        return bS_1
    end
end
function fns.fn1000(l)
    local aT_1
    local L = U()
    local bm = not L or not af
    local bm_3
    if bm then
        return false
    end
    l.footer = { text = "Blue Lock Farm  |  Ouroboros v0.5" }
    local aM_2 = (DateTime.now())
    l.timestamp = aM_2:ToIsoDate()
    local json = I.HttpService:JSONEncode({ username = "Ouroboros", embeds = { l } })
    bm_3, aT_1 = pcall(af, { Url = L, Method = "POST", Headers = { ["Content-Type"] = "application/json" }, Body = json })
    local L_1 = bm_3 and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_55 = bit32.bxor(j, p)
            j = bit32.band(j_55 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_56 = bit32.bxor(j, D)
            j = bit32.band(j_56 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(aT_1), 5, 248602996, "table")
    if L_1 then
        local aM_4 = (tonumber(aT_1.StatusCode))
        local P = if aM_4 then 1 else 0
        local cc = 2541 * P + 1745 * (1 - P)
        local aK = 1866 * P + 1307 * (1 - P)
        if not ((cc * 3581 + aK * 967 + cc * aK) % 16777213 == 15645249) then
            aM_4 = 0
        end
        L_1 = aM_4 < 300
    end
    return L_1
end
function fns.fn1003()
    local aJ = {
        AutoRoll = "Roll",
        AutoBuyRoll = "BuyRoll",
        AutoUpgradeConveyor = "UpgradeConveyor",
        AutoCarryBoxes = "CarryBoxes",
        AutoSellBoxes = "SellBoxes",
        AutoPlaceLockers = "PlaceLockers",
        AutoOpenLockers = "OpenLockers",
        AutoEquipBest = "EquipBest",
        AutoBuyUpgrades = "BuyUpgrades",
        AutoBuyMarket = "BuyMarket",
        AutoRankUnits = "RankUnits",
        AutoTraitUnits = "TraitUnits",
        AutoTower = "Tower",
        AutoCollectDrops = "CollectDrops",
        AutoDoObby = "Obby",
        AutoClaimRewards = "ClaimRewards",
        AutoSell = "Sell"
    }
    local fm = pairs
    for k, v in fm(aJ) do
        local aJ_1 = a9(k)
        if aJ_1 ~= nil then
            a5.SetFeature(v, aJ_1 == true)
        end
    end
    local SetBuyBoxes = a5.SetBuyBoxes
    local fm_1 = a9("BuyRollBoxes")
    local aN = fm_1 or {}
    SetBuyBoxes(aN)
    local SetBuyVariants = a5.SetBuyVariants
    local fF = a9("BuyRollVariants")
    local aN_5 = fF or {}
    SetBuyVariants(aN_5)
    local fg = bb
    for i, v in ipairs(fg) do
        local SetBoxVariants = a5.SetBoxVariants
        local fi = a9("BoxVariants_" .. v)
        local aN_6 = fi or {}
        SetBoxVariants(v, aN_6)
    end
    local SetPlaceBoxes = a5.SetPlaceBoxes
    local fg_1 = a9("PlaceLockerBoxes")
    local aN_7 = fg_1 or {}
    SetPlaceBoxes(aN_7)
    local SetLockerLimit = a5.SetLockerLimit
    local L_5 = a9("LockerLimit") or 30
    SetLockerLimit(L_5)
    a5.SetSellViaPolisher(a9("SellViaPolisher") ~= false)
    local SetUpgrades = a5.SetUpgrades
    local fv = a9("BuyUpgradesList")
    local aN_8 = fv or {}
    SetUpgrades(aN_8)
    local SetMarketBoxes = a5.SetMarketBoxes
    local e4 = a9("BuyMarketBoxes")
    local aN_9 = e4 or {}
    SetMarketBoxes(aN_9)
    local SetRankTargets = a5.SetRankTargets
    local fy = a9("RankTargets")
    local aN_10 = fy or { "S", "SS", "X", "EX", "UR" }
    SetRankTargets(aN_10)
    if not aF(State.RankTargets) then
        State.RankTargets = { S = true, SS = true, X = true, EX = true, UR = true }
    end
    local SetRankUnits = a5.SetRankUnits
    local fC = a9("RankUnitsList")
    local aN_11 = fC or {}
    SetRankUnits(aN_11)
    a5.SetRankUseMoney(a9("RankUseMoney") ~= false)
    a5.SetRankUseTokens(a9("RankUseTokens") == true)
    local SetTraitTargets = a5.SetTraitTargets
    local fI = a9("TraitTargets")
    local aN_12 = fI or {}
    SetTraitTargets(aN_12)
    local SetTraitUnits = a5.SetTraitUnits
    local fd = a9("TraitUnitsList")
    local aN_13 = fd or {}
    SetTraitUnits(aN_13)
    local SetTowerFloor = a5.SetTowerFloor
    local L_12 = S(a9("TowerFloor")) or aW[1]
    SetTowerFloor(L_12)
    a5.SetTowerBestTeam(a9("TowerBestTeam") ~= false)
    local SetSellUnitBoxes = a5.SetSellUnitBoxes
    local e7 = a9("SellUnitBoxes")
    local aN_14 = e7 or {}
    SetSellUnitBoxes(aN_14)
    local SetSellUnitVariants = a5.SetSellUnitVariants
    local fa = a9("SellUnitVariants")
    local aN_15 = fa or {}
    SetSellUnitVariants(aN_15)
    local SetSellKeepRank = a5.SetSellKeepRank
    local L_15 = S(a9("SellKeepRank")) or "S"
    SetSellKeepRank(L_15)
    local SetSellLockerBoxes = a5.SetSellLockerBoxes
    local fs = a9("SellLockerBoxes")
    local L_16 = {}
    local aN_16 = fs
    local a7 = if aN_16 then 1 else 0
    local aY = 2452 * a7 + 3502 * (1 - a7)
    local I = 2943 * a7 + 2951 * (1 - a7)
    if not ((aY * 355 + I * 2310 + aY * I) % 16777213 == 14885026) then
        aN_16 = L_16
    end
    SetSellLockerBoxes(aN_16)
    local SetSellLockerVariants = a5.SetSellLockerVariants
    local fL = a9("SellLockerVariants")
    local aN_17 = fL or {}
    SetSellLockerVariants(aN_17)
    local SetWebhookUrl = a5.SetWebhookUrl
    local L_18 = (a9("WebhookUrl"))
    local bA = if L_18 then 1 else 0
    local bY = 3530 * bA + 1414 * (1 - bA)
    local bS = 795 * bA + 2628 * (1 - bA)
    if not ((bY * 3619 + bS * 585 + bY * bS) % 16777213 == 16046495) then
        L_18 = ""
    end
    SetWebhookUrl(L_18)
    a5.SetWebhookDrops(a9("WebhookDrops") == true)
    local SetWebhookDropBoxes = a5.SetWebhookDropBoxes
    local eZ = a9("WebhookDropBoxes")
    local aN_18 = eZ or {}
    SetWebhookDropBoxes(aN_18)
    local SetWebhookDropVariants = a5.SetWebhookDropVariants
    local e1 = a9("WebhookDropVariants")
    local aN_19 = e1 or {}
    SetWebhookDropVariants(aN_19)
    a5.SetWebhookStats(a9("WebhookStats") == true)
    local SetWebhookStatsMinutes = a5.SetWebhookStatsMinutes
    local L_21 = a9("WebhookStatsMinutes") or 10
    SetWebhookStatsMinutes(L_21)
    a5.SetWalkSpeedEnabled(a9("WalkSpeedEnabled") == true)
    local SetWalkSpeedValue = a5.SetWalkSpeedValue
    local L_22 = a9("WalkSpeed") or 32
    SetWalkSpeedValue(L_22)
    a5.SetInfJump(a9("InfJump") == true)
    a5.SetNoClip(a9("NoClip") == true)
    a5.SetInstantProximityPrompt(a9("InstantProximityPrompt") == true)
    a5.SetFly(a9("Fly") == true)
    local SetFlySpeed = a5.SetFlySpeed
    local L_23 = a9("FlySpeed") or 60
    SetFlySpeed(L_23)
    a5.SetAntiAfk(a9("AntiAfk") ~= false)
    a5.SetNoGameplayPaused(a9("AntiGameplayPause") ~= false)
    a5.SetAutoReconnect(a9("AutoReconnect") == true)
    a5.SetDisable3D(a9("Disable3DRendering") == true)
    a5.SetFpsBoost(a9("FpsBoost") == true)
end
function fns.fn1013(y)
    State.Webhook.DropBoxes = cj_27(y, aR)
end
function fns.fn1015(D)
    local Webhook = State.Webhook
    local b5 = D and true or false
    Webhook.Stats = b5
    State.Webhook.LastStats = 0
end
function fns.fn1028(B)
    local bP, aa
    local ao = 9
    while true do
        ao += 4950
        if ao < 4954 then
            if ao < 3182 then
                break
            elseif ao < 4951 then
                break
            elseif ao < 4952 then
                if ao == 4951 then
                    ao = if bP then 2 else 4
                else
                    ao = 14648
                    continue
                end
            elseif ao < 4953 then
                return false
            elseif ao == 4953 then
                bP = State.SellLockerVariants[aa] == true
                ao = 5
            else
                ao = 4955
                continue
            end
        elseif ao < 10201 then
            if ao < 4957 then
                if ao < 4955 then
                    if ao == 4954 then
                        bP = (B:GetAttribute("Variant"))
                        ao = if bP then 6 else 7
                    else
                        ao = 11380
                        continue
                    end
                elseif ao < 4956 then
                    return bP
                else
                    aa = bP
                    bP = not aF(State.SellLockerVariants)
                    ao = if bP then 5 else 3
                end
            elseif ao < 4958 then
                bP = "Normal"
                ao = 6
            elseif ao < 4959 then
                bP = not State.SellLockerBoxes[B.Name]
                ao = 1
            elseif ao == 4959 then
                bP = not aF(State.SellLockerBoxes)
                ao = if bP then 1 else 8
            else
                ao = 4956
                continue
            end
        else
            break
        end
    end
end
function fns.fn1039(B, t)
    local br = 0
    while true do
        br += 10838
        if br < 10840 then
            if br < 10346 then
                break
            elseif br < 10838 then
                break
            elseif br < 10839 then
                if br == 10838 then
                    br = if B.Rank ~= t.Rank then 1 else 3
                else
                    br = 3422
                    continue
                end
            elseif br == 10839 then
                return B.Rank < t.Rank
            else
                br = 3422
                continue
            end
        elseif br < 13749 then
            if br < 10841 then
                break
            elseif br == 10841 then
                return B.Index < t.Index
            else
                break
            end
        else
            break
        end
    end
end
function fns.fn1045(p, C)
    State.BoxVariants[p] = cj_27(C, Z)
end
function fns.fn1066(A)
    local ae = {}
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_67 = bit32.bxor(j, p)
            j = bit32.band(j_67 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_68 = bit32.bxor(j, D)
            j = bit32.band(j_68 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(A), 5, 248602996, "table") then
        for k2, v in pairs(A) do
            local at_1 = nil
            local X = v == true and (function(w, o, F, k)
                if type(w) ~= "string" then
                    return false
                end
                if #w ~= o then
                    return false
                end
                local j = 5381
                local E = buffer.fromstring(w)
                local x = 0
                while x <= o - 4 do
                    local p = buffer.readu32(E, x)
                    local j_65 = bit32.bxor(j, p)
                    j = bit32.band(j_65 * 33, 4294967295)
                    x = x + 4
                end
                while x < o do
                    local D = buffer.readu8(E, x)
                    local j_66 = bit32.bxor(j, D)
                    j = bit32.band(j_66 * 33, 4294967295)
                    x = x + 1
                end
                if j ~= F then
                    return false
                end
                return w == k
            end)(type(k2), 6, 2175009567, "string")
            if X then
                at_1 = k2
            else
                local bf_1 = if (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_63 = bit32.bxor(j, p)
                        j = bit32.band(j_63 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_64 = bit32.bxor(j, D)
                        j = bit32.band(j_64 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(type(v), 6, 2175009567, "string") then 1 else 0
                local an_1 = 2323 * bf_1 + 2315 * (1 - bf_1)
                local bU_4 = 86 * bf_1 + 3166 * (1 - bf_1)
                if (an_1 * 3218 + bU_4 * 477 + an_1 * bU_4) % 16777213 == 7716214 then
                    at_1 = v
                else
                    local X_2 = (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_61 = bit32.bxor(j, p)
                            j = bit32.band(j_61 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_62 = bit32.bxor(j, D)
                            j = bit32.band(j_62 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(k2), 6, 472614556, "number") and (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_59 = bit32.bxor(j, p)
                            j = bit32.band(j_59 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_60 = bit32.bxor(j, D)
                            j = bit32.band(j_60 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(v), 6, 2175009567, "string")
                    if X_2 then
                        at_1 = v
                    end
                end
            end
            if at_1 and am[at_1] then
                ae[at_1] = true
            end
        end
    else
        local at_2 = ((function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_57 = bit32.bxor(j, p)
                j = bit32.band(j_57 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_58 = bit32.bxor(j, D)
                j = bit32.band(j_58 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(A), 6, 2175009567, "string"))
        local bf_2 = if at_2 then 1 else 0
        local an_2 = 572 * bf_2 + 1989 * (1 - bf_2)
        local bU_5 = 3773 * bf_2 + 1670 * (1 - bf_2)
        if (an_2 * 3430 + bU_5 * 292 + an_2 * bU_5) % 16777213 == 5221832 then
            at_2 = am[A]
        end
        if at_2 then
            ae[A] = true
        end
    end
    State.RankTargets = ae
end
function fns.fn1077()
    local b0_1
    local bZ_1
    local a5_1, a5_8
    if not aF(State.TraitTargets) then
        return false
    end
    a5_1, bZ_1 = pcall(TokensService.GetTokenAmount, LocalPlayer, TraitService.TRAIT_TOKEN_NAME)
    local bI = a5_1
    if bI then
        local a5_2 = tonumber(bZ_1) or 0
        bI = a5_2 >= 1
    end
    if not bI then
        return false
    end
    local a5_3 = ar()
    local bZ_2 = a5_3 and a5_3.PlayerUnits
    if not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_73 = bit32.bxor(j, p)
            j = bit32.band(j_73 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_74 = bit32.bxor(j, D)
            j = bit32.band(j_74 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bZ_2), 5, 248602996, "table") then
        return false
    end
    local bZ_3 = aF(State.TraitUnits)
    for k2, v in pairs(bZ_2) do
        local a5_5 = not ay() or not State.Enabled.TraitUnits
        if a5_5 then
            return false
        end
        local a5_6 = ((function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_71 = bit32.bxor(j, p)
                j = bit32.band(j_71 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_72 = bit32.bxor(j, D)
                j = bit32.band(j_72 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(v), 5, 248602996, "table"))
        local b9 = if a5_6 then 1 else 0
        local by = 33 * b9 + 499 * (1 - b9)
        local aO = 1544 * b9 + 1024 * (1 - b9)
        if (by * 2733 + aO * 3619 + by * aO) % 16777213 == 5728877 then
            a5_6 = not bZ_3 or State.TraitUnits[v.PlayerUnitName]
        end
        if a5_6 then
            local Trait = v.Trait
            local b9_1 = if not (Trait and State.TraitTargets[Trait]) then 1 else 0
            local by_1 = 1842 * b9_1 + 2932 * (1 - b9_1)
            local aO_1 = 2486 * b9_1 + 2712 * (1 - b9_1)
            if (by_1 * 1164 + aO_1 * 2668 + by_1 * aO_1) % 16777213 == 13355948 then
                if ao("RerollPlayerUnitTrait", k2, Trait) then
                    a5_8, b0_1 = pcall(TraitService.GetRerollCooldown, LocalPlayer)
                    local aN = a5_8 and (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_69 = bit32.bxor(j, p)
                            j = bit32.band(j_69 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_70 = bit32.bxor(j, D)
                            j = bit32.band(j_70 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(b0_1), 6, 472614556, "number")
                    local a5_10 = aN and b0_1 or 0.75
                    local b0_3 = os.clock() + math.max(a5_10, 0.75) + 1.5
                    while true do
                        local aN_20 = ay() and os.clock() < b0_3
                        if aN_20 then
                            local aN_21 = ar()
                            local aR = aN_21 and aN_21.PlayerUnits and aN_21.PlayerUnits[k2]
                            if not aR or aR.Trait ~= Trait then
                                break
                            end
                            task.wait(0.1)
                            continue
                        end
                        break
                    end
                    task.wait(math.max(a5_10, 0.75) + 0.05)
                    return true
                end
            end
        end
    end
    return false
end
function fns.fn1079(s)
    local aQ = tonumber(s) or 30
    State.LockerLimit = math.max(1, math.floor(aQ))
end
function fns.fn1094(x)
    local aj = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_75 = bit32.bxor(j, p)
            j = bit32.band(j_75 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_76 = bit32.bxor(j, D)
            j = bit32.band(j_76 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(x), 6, 2175009567, "string") and x
    local bk = aj or "None"
    State.SellKeepRank = bk
end
function fns.fn1116(k)
    State.RankUnits = cj_27(k, aS)
end
function fns.fn1134()
    local Group3 = cj_54:AddLeftGroupbox({ Name = "Webhook", Icon = "webhook" })
    Group3:CreateInput({
        Name = "Webhook URL",
        PlaceholderText = "https://discord.com/api/webhooks/...",
        CurrentValue = "",
        Flag = "WebhookUrl",
        Callback = function(t)
            a5.SetWebhookUrl(t)
        end
    })
    Group3:CreateButton({
        Name = "Send Test",
        Icon = "send",
        Callback = function()
            task.spawn(function()
                local w, D = a5.SendWebhookTest()
                cj_60(D, "Info")
            end)
        end
    })
    local Group2 = cj_54:AddRightGroupbox({ Name = "New Units", Icon = "sparkles" })
    Group2:CreateToggle({
        Name = "Send New Units",
        CurrentValue = false,
        Flag = "WebhookDrops",
        Callback = function(m)
            a5.SetWebhookDrops(m)
        end
    })
    Group2:CreateDropdown({
        Name = "From Lockers",
        Options = as(a0),
        CurrentOption = {},
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "WebhookDropBoxes",
        Callback = function(s)
            a5.SetWebhookDropBoxes(s)
        end
    })
    Group2:CreateDropdown({
        Name = "Variants",
        Options = as(P),
        CurrentOption = {},
        Multi = true,
        AllowNone = true,
        Flag = "WebhookDropVariants",
        Callback = function(k)
            a5.SetWebhookDropVariants(k)
        end
    })
    local Group = cj_54:AddRightGroupbox({ Name = "Stats", Icon = "chart-line" })
    Group:CreateToggle({
        Name = "Send Stats",
        CurrentValue = false,
        Flag = "WebhookStats",
        Callback = function(G)
            a5.SetWebhookStats(G)
        end
    })
    Group:CreateSlider({
        Name = "Every (minutes)",
        Range = { 1, 60 },
        Increment = 1,
        CurrentValue = 10,
        Flag = "WebhookStatsMinutes",
        Callback = function(z)
            a5.SetWebhookStatsMinutes(z)
        end
    })
end
function fns.fn1137()
    local Group = cj_16:AddLeftGroupbox({ Name = "Menu", Icon = "monitor" })
    Group:CreateKeybind({
        Name = "Toggle UI",
        CurrentKeybind = "RightControl",
        Flag = "ToggleUIKey",
        Callback = function() end,
        OnChanged = function(q)
            Window.SetKeybind(Window, q)
        end
    })
    Group:CreateDropdown({
        Name = "Toggle button",
        Options = { "Mobile only", "Mobile & PC" },
        CurrentOption = "Mobile only",
        AllowNone = false,
        Flag = "ToggleButtonPlatform",
        Callback = function(t)
            local bk, bd
            local aT = 1
            while true do
                aT += 480
                if aT < 6216 then
                    if aT < 482 then
                        if aT < 480 then
                            break
                        elseif aT < 481 then
                            if aT == 480 then
                                bk = bd
                                aT = if bk then 3 else 5
                            else
                                aT = 6216
                                continue
                            end
                        elseif aT == 481 then
                            bk = S(t)
                            bd = ((function(w, o, F, k)
                                if type(w) ~= "string" then
                                    return false
                                end
                                if #w ~= o then
                                    return false
                                end
                                local j = 5381
                                local E = buffer.fromstring(w)
                                local x = 0
                                while x <= o - 4 do
                                    local p = buffer.readu32(E, x)
                                    local j_77 = bit32.bxor(j, p)
                                    j = bit32.band(j_77 * 33, 4294967295)
                                    x = x + 4
                                end
                                while x < o do
                                    local D = buffer.readu8(E, x)
                                    local j_78 = bit32.bxor(j, D)
                                    j = bit32.band(j_78 * 33, 4294967295)
                                    x = x + 1
                                end
                                if j ~= F then
                                    return false
                                end
                                return w == k
                            end)(bk, 11, 3530545271, "Mobile & PC"))
                            aT = if bd then 4 else 0
                        else
                            aT = 14177
                            continue
                        end
                    elseif aT < 484 then
                        if aT < 483 then
                            break
                        end
                        Window.SetToggleButtonPlatform(Window, bk)
                        aT = 2
                    elseif aT < 485 then
                        bd = "Both"
                        aT = 0
                    elseif aT == 485 then
                        bk = "Mobile"
                        aT = 3
                    else
                        aT = 481
                        continue
                    end
                else
                    break
                end
            end
        end
    })
    Group:CreateToggle({
        Name = "Anti AFK",
        CurrentValue = true,
        Flag = "AntiAfk",
        Callback = function(H)
            a5.SetAntiAfk(H)
        end
    })
    Group:CreateButton({
        Name = "Unload",
        Icon = "power",
        Callback = function()
            aj:Confirm({
                Title = "Unload?",
                ConfirmText = "Unload",
                Callback = function()
                    Window.Destroy(Window)
                end
            })
        end
    })
    cj_16:CreateConfigManager({ Name = "Configs", Side = "Left" })
    cj_16:CreateThemeManager({ Name = "Themes", Side = "Right" })
end
function fns.fn1157()
    local aE_3
    local bq_4
    local TowerFloor = State.TowerFloor
    local gb = type(TowerFloor)
    local gd = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_81 = bit32.bxor(j, p)
            j = bit32.band(j_81 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_82 = bit32.bxor(j, D)
            j = bit32.band(j_82 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(gb, 6, 2175009567, "string")
    local ae = not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_79 = bit32.bxor(j, p)
            j = bit32.band(j_79 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_80 = bit32.bxor(j, D)
            j = bit32.band(j_80 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(TowerFloor, 0, 5381, "")
    local ae_1, ae_2, ae_3
    local a8 = gd and ae
    local a8_1, a8_2, a8_3
    if a8 then
        ae_1, a8_1 = pcall(InfinityTowerService.GetPlayBlockReason, LocalPlayer, TowerFloor)
        if ae_1 and a8_1 == nil then
            return TowerFloor
        end
        local bj_1 = #aH
        local aE_2 = bj_1
        local Y_1 = -1
        while true do
            if not (false and aE_3 <= 1 or true and aE_3 >= 1) then
                return nil
            end
            bj_1 = aH[aE_2]
            ae_2, a8_2 = pcall(InfinityTowerService.GetPlayBlockReason, LocalPlayer, bj_1)
            if bq_4 then
                break
            end
            aE_2 += Y_1
        end
        return bj_1
    end
    local bj_2 = #aH
    aE_3 = bj_2
    local Y_2 = -1
    while true do
        if not (false and aE_3 <= 1 or true and aE_3 >= 1) then
            return nil
        end
        bj_2 = aH[aE_3]
        ae_3, a8_3 = pcall(InfinityTowerService.GetPlayBlockReason, LocalPlayer, bj_2)
        bq_4 = ae_3 and a8_3 == nil
        if bq_4 then
            break
        end
        aE_3 += Y_2
    end
    return bj_2
end
function fns.fn1163()
    assert(aN(loadstring), "loadstring unavailable")
    return loadstring(game:HttpGet(cj_17))()
end
function fns.fn1170(H)
    local a5, bR, b6
    local aB = 13
    while true do
        aB += 9860
        if aB < 9864 then
            if aB < 4278 then
                break
            elseif aB < 9860 then
                break
            elseif aB < 9862 then
                if aB < 9861 then
                    if aB == 9860 then
                        a5 = (function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_87 = bit32.bxor(j, p)
                                j = bit32.band(j_87 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_88 = bit32.bxor(j, D)
                                j = bit32.band(j_88 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(bR.Get), 8, 2851454103, "function")
                        aB = 6
                    else
                        aB = 1792
                        continue
                    end
                else
                    aB = if a5 then 10 else 5
                end
            elseif aB < 9863 then
                if aB == 9862 then
                    a5, b6 = pcall(bR.Get, bR)
                    aB = if a5 then 11 else 9
                else
                    aB = 9867
                    continue
                end
            elseif aB == 9863 then
                a5 = ((function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_85 = bit32.bxor(j, p)
                        j = bit32.band(j_85 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_86 = bit32.bxor(j, D)
                        j = bit32.band(j_86 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(type(bR), 5, 248602996, "table"))
                aB = if a5 then 0 else 6
            else
                aB = 9864
                continue
            end
        elseif aB < 9871 then
            if aB < 9867 then
                if aB < 9865 then
                    a5 = bR.Value ~= nil
                    aB = 1
                elseif aB < 9866 then
                    return bR
                elseif aB == 9866 then
                    aB = if a5 then 2 else 12
                else
                    aB = 9864
                    continue
                end
            elseif aB < 9869 then
                if aB < 9868 then
                    if aB == 9867 then
                        bR = a5
                        aB = if bR == nil then 14 else 3
                    else
                        aB = 1792
                        continue
                    end
                else
                    break
                end
            elseif aB < 9870 then
                if aB == 9869 then
                    aB = 12
                else
                    aB = 6704
                    continue
                end
            elseif aB == 9870 then
                return bR.Value
            else
                aB = 166
                continue
            end
        elseif aB < 9875 then
            if aB < 9873 then
                if aB < 9872 then
                    return b6
                else
                    a5 = ((function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_83 = bit32.bxor(j, p)
                            j = bit32.band(j_83 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_84 = bit32.bxor(j, D)
                            j = bit32.band(j_84 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(bR), 5, 248602996, "table"))
                    local ak = if a5 then 1 else 0
                    local ca = 2098 * ak + 701 * (1 - ak)
                    local bl = 3341 * ak + 1375 * (1 - ak)
                    aB = if (ca * 3589 + bl * 3090 + ca * bl) % 16777213 == 8085617 then 4 else 1
                end
            elseif aB < 9874 then
                a5 = aj.Flags
                aB = if a5 then 15 else 7
            else
                return nil
            end
        elseif aB < 13482 then
            if aB < 10428 then
                if aB == 9875 then
                    a5 = aj.Flags[H]
                    aB = 7
                else
                    aB = 1764
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
function fns.fn1183(H, v)
    local a7_1
    local bS_2
    local b0_4
    local b__1
    local a5_11
    local bG_3
    local bz_1
    local an_5
    local function ay(A)
        local aU, aG, ak, b7, ap, aK, au
        local ah = 9
        while true do
            ah += 4770
            if ah < 4780 then
                if ah < 4774 then
                    if ah < 4771 then
                        if ah < 3104 then
                            break
                        elseif ah < 4770 then
                            break
                        elseif ah == 4770 then
                            return aU, ak, aG, b7
                        else
                            ah = 4778
                            continue
                        end
                    elseif ah < 4772 then
                        b7 = 0
                        ah = 0
                    elseif ah < 4773 then
                        aU = aM[aG]
                        ah = if aU then 11 else 10
                    else
                        aG = am[A:GetAttribute("PlayerUnitGrade")]
                        ah = if aG then 12 else 14
                    end
                elseif ah < 4777 then
                    if ah < 4775 then
                        aG = aU.BoxName
                        ah = 2
                    elseif ah < 4776 then
                        if ah == 4775 then
                            aG = "Normal"
                            ah = 8
                        else
                            ah = 4784
                            continue
                        end
                    else
                        ah = if (ap * 584 + aK * 334 + ap * aK) % 16777213 == 9455230 then 4 else 2
                    end
                elseif ah < 4778 then
                    if ah == 4777 then
                        ak = 1
                        ah = 3
                    else
                        ah = 4778
                        continue
                    end
                elseif ah < 4779 then
                    if ah == 4778 then
                        ak = J[aG]
                        ah = if ak then 3 else 7
                    else
                        ah = 8724
                        continue
                    end
                elseif ah == 4779 then
                    aU = PlayerUnitsLibrary[A:GetAttribute("PlayerUnitName")]
                    aG = aU
                    au = if aG then 1 else 0
                    ap = 1732 * au + 3393 * (1 - au)
                    ah = 13
                else
                    ah = 4783
                    continue
                end
            elseif ah < 5033 then
                if ah < 4783 then
                    if ah < 4781 then
                        aU = 0
                        ah = 11
                    elseif ah < 4782 then
                        aG = (A:GetAttribute("PlayerUnitVariant"))
                        local bg = if aG then 1 else 0
                        local bQ = 669 * bg + 3967 * (1 - bg)
                        local cf = 868 * bg + 720 * (1 - bg)
                        ah = if (bQ * 1584 + cf * 490 + bQ * cf) % 16777213 == 2065708 then 8 else 5
                    elseif ah == 4782 then
                        b7 = (tonumber(A:GetAttribute("PlayerUnitLevel")))
                        ah = if b7 then 0 else 1
                    else
                        ah = 15596
                        continue
                    end
                elseif ah < 4784 then
                    aK = 4087 * au + 998 * (1 - au)
                    ah = 6
                elseif ah < 4785 then
                    aG = 0
                    ah = 12
                else
                    break
                end
            else
                break
            end
        end
    end
    an_5, bz_1, bG_3, a5_11 = ay(H)
    b__1, b0_4, bS_2, a7_1 = ay(v)
    local bk = if an_5 ~= b__1 then 1 else 0
    local bv = 2096 * bk + 111 * (1 - bk)
    local aT = 2111 * bk + 582 * (1 - bk)
    if (bv * 2203 + aT * 2981 + bv * aT) % 16777213 == 15335035 then
        return an_5 < b__1
    elseif bz_1 ~= b0_4 then
        return bz_1 < b0_4
    elseif bG_3 ~= bS_2 then
        return bG_3 < bS_2
    else
        return a5_11 < a7_1
    end
end
local function fn1197(q)
    local al, bC, as, bx, br, bP, ad, aw, W
    local a6 = 16
    while true do
        a6 += 892
        if a6 < 913 then
            if a6 < 902 then
                if a6 < 896 then
                    if a6 < 893 then
                        if a6 < 892 then
                            break
                        end
                        al = ah()
                        a6 = 13
                    elseif a6 < 894 then
                        if a6 == 893 then
                            a6 = if bx then 2 else 8
                        else
                            a6 = 3990
                            continue
                        end
                    elseif a6 < 895 then
                        return false
                    elseif a6 == 895 then
                        local bm_4 = if not ax() then 1 else 0
                        local bA_1 = 1007 * bm_4 + 2298 * (1 - bm_4)
                        local aJ_25 = 2450 * bm_4 + 2273 * (1 - bm_4)
                        a6 = if (bA_1 * 3763 + aJ_25 * 1438 + bA_1 * aJ_25) % 16777213 == 9779591 then 29 else 30
                    else
                        a6 = 893
                        continue
                    end
                elseif a6 < 899 then
                    if a6 < 897 then
                        as = bC
                        bC = q:GetAttribute("RollId")
                        bx = not (function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_91 = bit32.bxor(j, p)
                                j = bit32.band(j_91 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_92 = bit32.bxor(j, D)
                                j = bit32.band(j_92 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(al), 6, 2175009567, "string")
                        a6 = if bx then 26 else 22
                    elseif a6 < 898 then
                        if a6 == 897 then
                            bP = not (function(w, o, F, k)
                                if type(w) ~= "string" then
                                    return false
                                end
                                if #w ~= o then
                                    return false
                                end
                                local j = 5381
                                local E = buffer.fromstring(w)
                                local x = 0
                                while x <= o - 4 do
                                    local p = buffer.readu32(E, x)
                                    local j_89 = bit32.bxor(j, p)
                                    j = bit32.band(j_89 * 33, 4294967295)
                                    x = x + 4
                                end
                                while x < o do
                                    local D = buffer.readu8(E, x)
                                    local j_90 = bit32.bxor(j, D)
                                    j = bit32.band(j_90 * 33, 4294967295)
                                    x = x + 1
                                end
                                if j ~= F then
                                    return false
                                end
                                return w == k
                            end)(type(br), 6, 472614556, "number")
                            a6 = 9
                        else
                            a6 = 909
                            continue
                        end
                    elseif a6 == 898 then
                        bx, br = pcall(BoxService.GetBoxPrice, al, as)
                        bP = not bx
                        a6 = if bP then 9 else 5
                    else
                        a6 = 913
                        continue
                    end
                elseif a6 < 900 then
                    bC = "Normal"
                    a6 = 4
                elseif a6 < 901 then
                    if a6 == 900 then
                        bx = (aF(State.BuyBoxes))
                        local bm_5 = if bx then 1 else 0
                        local bA_2 = 2239 * bm_5 + 1347 * (1 - bm_5)
                        local aJ_26 = 186 * bm_5 + 3480 * (1 - bm_5)
                        a6 = if (bA_2 * 2099 + aJ_26 * 1540 + bA_2 * aJ_26) % 16777213 == 5402555 then 20 else 28
                    else
                        a6 = 10624
                        continue
                    end
                elseif a6 == 901 then
                    a6 = if bP then 11 else 24
                else
                    a6 = 10624
                    continue
                end
            elseif a6 < 907 then
                if a6 < 904 then
                    if a6 < 903 then
                        aw = 2215 * W + 1841 * (1 - W)
                        a6 = 18
                    else
                        a6 = if bP then 14 else 3
                    end
                elseif a6 < 905 then
                    break
                elseif a6 < 906 then
                    if a6 == 905 then
                        q = al
                        a6 = if not q then 31 else 21
                    else
                        a6 = 919
                        continue
                    end
                elseif a6 == 906 then
                    return false
                else
                    a6 = 914
                    continue
                end
            elseif a6 < 910 then
                if a6 < 908 then
                    return false
                elseif a6 < 909 then
                    if a6 == 908 then
                        al = q
                        a6 = if al then 13 else 0
                    else
                        a6 = 899
                        continue
                    end
                elseif a6 == 909 then
                    return false
                else
                    a6 = 1164
                    continue
                end
            elseif a6 < 911 then
                a6 = if (ad * 2836 + aw * 2781 + ad * aw) % 16777213 == 2091018 then 27 else 19
            elseif a6 < 912 then
                if a6 == 911 then
                    bx = State.LastBoughtRollId ~= nil
                    a6 = if bx then 23 else 1
                else
                    a6 = 916
                    continue
                end
            elseif a6 == 912 then
                bx = not State.BuyBoxes[al]
                a6 = 28
            else
                a6 = 910
                continue
            end
        elseif a6 < 1164 then
            if a6 < 918 then
                if a6 < 915 then
                    if a6 < 914 then
                        if a6 == 913 then
                            al = q:GetAttribute("BoxName")
                            bC = (q:GetAttribute("Variant"))
                            a6 = if bC then 4 else 7
                        else
                            a6 = 903
                            continue
                        end
                    elseif a6 == 914 then
                        bx = not BoxesLibrary[al]
                        a6 = 26
                    else
                        a6 = 913
                        continue
                    end
                elseif a6 < 916 then
                    if a6 == 915 then
                        bx = State.LastBoughtRollId == bC
                        a6 = 1
                    else
                        a6 = 899
                        continue
                    end
                elseif a6 < 917 then
                    bP = br > R()
                    a6 = 11
                elseif a6 == 917 then
                    a6 = if not au(al, as) then 17 else 6
                else
                    a6 = 10793
                    continue
                end
            elseif a6 < 921 then
                if a6 < 919 then
                    W = if bx then 1 else 0
                    ad = 2516 * W + 2454 * (1 - W)
                    a6 = 10
                elseif a6 < 920 then
                    if a6 == 919 then
                        return false
                    end
                    a6 = 2136
                    continue
                elseif a6 == 920 then
                    a6 = if bx then 15 else 25
                else
                    a6 = 901
                    continue
                end
            elseif a6 < 922 then
                return false
            elseif a6 < 923 then
                State.LastBoughtRollId = bC
                return ao("PurchaseConveyorRoll", al, as)
            elseif a6 == 923 then
                return false
            else
                break
            end
        else
            break
        end
    end
end
local function fn1199(C)
    local bT = C and true or false
    State.TowerBestTeam = bT
end
local function fn1230()
    local aW = 2
    while true do
        aW += 11217
        if aW < 11218 then
            if aW < 7668 then
                break
            elseif aW < 9834 then
                break
            elseif aW < 11116 then
                break
            elseif aW < 11217 then
                break
            elseif aW == 11217 then
                aW = if not af then 4 else 7
            else
                aW = 11221
                continue
            end
        elseif aW < 11223 then
            if aW < 11220 then
                if aW < 11219 then
                    return false, "Webhook request failed"
                elseif aW == 11219 then
                    aW = if not U() then 3 else 0
                else
                    aW = 11224
                    continue
                end
            elseif aW < 11221 then
                return false, "Set a valid Discord webhook URL first"
            elseif aW < 11222 then
                if aW == 11221 then
                    return false, "Executor has no HTTP request function"
                end
                aW = 13516
                continue
            elseif aW == 11222 then
                return true, "Webhook sent"
            else
                aW = 4916
                continue
            end
        elseif aW < 11539 then
            if aW < 11224 then
                break
            elseif aW < 11463 then
                if aW == 11224 then
                    aW = if aX(aK()) then 5 else 1
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
local function fn1233(H)
    State.SellLockerBoxes = cj_27(H, aR)
end
local function fn1243(q, n)
    if State.Enabled[q] == nil then
        return
    end
    local Enabled = State.Enabled
    local Y = n and true or false
    Enabled[q] = Y
    if State.Enabled[q] then
        cj_33(q, cj_14[q], cj_15[q])
    else
        cj_38(q)
    end
end
local function fn1257(A)
    local ai = 1
    while true do
        ai += 9213
        if ai < 9214 then
            break
        elseif ai < 9279 then
            if ai == 9214 then
                local Character = LocalPlayer.Character
                local gM = LocalPlayer
                local FindFirstChildOfClass = gM.FindFirstChildOfClass
                local gR = "Backpack"
                for i, v in ipairs({ Character, FindFirstChildOfClass(gM, gR) }) do
                    if v then
                        local GetChildren = v.GetChildren
                        for i, v in ipairs(GetChildren(v)) do
                            local bJ = v
                            local ao = bJ:IsA("Tool") and (function(w, o, F, k)
                                if type(w) ~= "string" then
                                    return false
                                end
                                if #w ~= o then
                                    return false
                                end
                                local j = 5381
                                local E = buffer.fromstring(w)
                                local x = 0
                                while x <= o - 4 do
                                    local p = buffer.readu32(E, x)
                                    local j_93 = bit32.bxor(j, p)
                                    j = bit32.band(j_93 * 33, 4294967295)
                                    x = x + 4
                                end
                                while x < o do
                                    local D = buffer.readu8(E, x)
                                    local j_94 = bit32.bxor(j, D)
                                    j = bit32.band(j_94 * 33, 4294967295)
                                    x = x + 1
                                end
                                if j ~= F then
                                    return false
                                end
                                return w == k
                            end)(bJ:GetAttribute("InventoryType"), 5, 307780803, "Crate") and bJ:GetAttribute("InventoryKey") == A
                            if ao then
                                return bJ
                            end
                        end
                    end
                end
                return nil
            end
            ai = 3301
        else
            break
        end
    end
end
local function fn1294(y)
    State.BuyVariants = cj_27(y, Z)
end
local function fn1305()
    local bZ_4
    local b7_1
    b7_1, bZ_4 = aQ("GetInfinityTowerBattleState")
    local ab = b7_1 and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_95 = bit32.bxor(j, p)
            j = bit32.band(j_95 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_96 = bit32.bxor(j, D)
            j = bit32.band(j_96 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bZ_4), 5, 248602996, "table")
    local aO = if ab then 1 else 0
    local bH = 2339 * aO + 4028 * (1 - aO)
    local aG = 2420 * aO + 25 * (1 - aO)
    if (bH * 3489 + aG * 1477 + bH * aG) % 16777213 == 618278 then
        return bZ_4
    end
    return nil
end
local function fn1322()
    local b_ = 1
    while true do
        b_ += 7226
        if b_ < 7227 then
            break
        elseif b_ < 10816 then
            if b_ == 7227 then
                local Gens2 = State.Gens
                for k in pairs(Gens2) do
                    local Gens = State.Gens
                    local ar = State.Gens[k] or 0
                    Gens[k] = ar + 1
                end
                local Enabled = State.Enabled
                local gZ_1 = pairs
                for k in gZ_1(Enabled) do
                    State.Enabled[k] = false
                end
                b_ = 0
            else
                b_ = 7226
                continue
            end
        else
            break
        end
    end
end
local function fn1329()
    local bN, bH
    local bl = 5
    while true do
        bl += 3843
        if bl < 3849 then
            if bl < 3845 then
                if bl < 3843 then
                    break
                elseif bl < 3844 then
                    return bN
                elseif bl == 3844 then
                    bH = bN.Currency.Cash
                    bl = 2
                else
                    bl = 3843
                    continue
                end
            elseif bl < 3847 then
                if bl < 3846 then
                    if bl == 3845 then
                        bN = bH
                        bH = ((function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_97 = bit32.bxor(j, p)
                                j = bit32.band(j_97 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_98 = bit32.bxor(j, D)
                                j = bit32.band(j_98 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(bN), 6, 472614556, "number"))
                        bl = if bH then 3 else 4
                    else
                        bl = 3843
                        continue
                    end
                else
                    bH = bN
                    bl = 4
                end
            elseif bl < 3848 then
                bN = bH
                bl = if bN then 0 else 8
            elseif bl == 3848 then
                bN = ar()
                bH = bN
                bl = if bH then 9 else 7
            else
                bl = 3851
                continue
            end
        elseif bl < 4789 then
            if bl < 3851 then
                if bl < 3850 then
                    break
                elseif bl == 3850 then
                    bl = if bH then 1 else 2
                else
                    bl = 14870
                    continue
                end
            elseif bl < 3852 then
                if bl == 3851 then
                    bN = 0
                    bl = 0
                else
                    bl = 4789
                    continue
                end
            elseif bl == 3852 then
                bH = bN.Currency
                bl = 7
            else
                break
            end
        else
            break
        end
    end
end
local function fn1339()
    local bK = K("CollectableObjects", "CollectCollectableObject")
    local a7 = K("VariantTokenSpawns", "CollectVariantTokenSpawn")
    return bK or a7
end
local function fn1364()
    local Character = LocalPlayer.Character
    local be = Character and Character:FindFirstChild("HumanoidRootPart")
    local T_3 = be
    if be then
        be = T_3:IsA("BasePart")
    end
    if be then
        return T_3
    end
    return nil
end
local function fn1366()
    local bP, b5
    local bw_1
    local bn = 0
    while true do
        bn += 2003
        if bn < 2006 then
            if bn < 2003 then
                break
            elseif bn < 2004 then
                bw_1, bP = pcall(ClientDataManager.GetData)
                b5 = bw_1
                bn = if b5 then 1 else 2
            elseif bn < 2005 then
                if bn == 2004 then
                    b5 = (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_99 = bit32.bxor(j, p)
                            j = bit32.band(j_99 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_100 = bit32.bxor(j, D)
                            j = bit32.band(j_100 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(bP), 5, 248602996, "table")
                    bn = 2
                else
                    bn = 2007
                    continue
                end
            elseif bn == 2005 then
                bn = if b5 then 3 else 5
            else
                bn = 2008
                continue
            end
        elseif bn < 11274 then
            if bn < 2007 then
                if bn == 2006 then
                    return bP
                end
                bn = 2008
                continue
            elseif bn < 2008 then
                break
            elseif bn == 2008 then
                return nil
            else
                bn = 2006
                continue
            end
        else
            break
        end
    end
end
local function fn1379()
    return ao("EquipBestPlayerUnits")
end
local function fn1388()
    local bM = ar()
    local bV = bM
    local bD = if bV then 1 else 0
    local bN = 838 * bD + 3498 * (1 - bD)
    local cg = 1957 * bD + 3073 * (1 - bD)
    if (bN * 3888 + cg * 2860 + bN * cg) % 16777213 == 10495130 then
        bV = bM.PlayerUnits
    end
    local aT = bV or {}
    local bM_2 = {}
    local aT_2 = { LocalPlayer:FindFirstChildOfClass("Backpack"), LocalPlayer.Character }
    for i, v in ipairs(aT_2) do
        local cb = v
        if cb then
            local GetChildren = cb.GetChildren
            for i, v in ipairs(GetChildren(cb)) do
                local aB = v
                if aB:IsA("Tool") then
                    local attr = aB:GetAttribute("InventoryType")
                    if (function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_103 = bit32.bxor(j, p)
                            j = bit32.band(j_103 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_104 = bit32.bxor(j, D)
                            j = bit32.band(j_104 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(attr, 10, 1687220493, "PlayerUnit") then
                        local a9_1 = aT[aB:GetAttribute("InventoryKey")]
                        local ap = a9_1 and not a9_1.Equipped and ae(a9_1)
                        if ap then
                            table.insert(bM_2, aB)
                        end
                    else
                        local a9_2 = (function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_101 = bit32.bxor(j, p)
                                j = bit32.band(j_101 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_102 = bit32.bxor(j, D)
                                j = bit32.band(j_102 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(attr, 3, 195783984, "Box") and aa(aB)
                        if a9_2 then
                            table.insert(bM_2, aB)
                        end
                    end
                end
            end
        end
    end
    return bM_2
end
local function fn1395(H)
    local bl_1
    local bv = not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_105 = bit32.bxor(j, p)
            j = bit32.band(j_105 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_106 = bit32.bxor(j, D)
            j = bit32.band(j_106 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(H), 5, 248602996, "table") or not aF(State.SellUnitBoxes)
    local bv_1
    if bv then
        return false
    end
    bv_1, bl_1 = pcall(BoxService.GetBoxForPlayerUnit, H.PlayerUnitName)
    if not bv_1 or not State.SellUnitBoxes[bl_1] then
        return false
    end
    local bv_2 = (aF(State.SellUnitVariants))
    if bv_2 then
        local SellUnitVariants = State.SellUnitVariants
        local T_4 = H.Variant
        local ag = if T_4 then 1 else 0
        local ce = 551 * ag + 3080 * (1 - ag)
        local aU = 1867 * ag + 1165 * (1 - ag)
        if not ((ce * 2214 + aU * 3995 + ce * aU) % 16777213 == 9707296) then
            T_4 = "Normal"
        end
        bv_2 = not SellUnitVariants[T_4]
    end
    if bv_2 then
        return false
    end
    local bv_3 = am[State.SellKeepRank]
    local bl_3 = bv_3 and H.Grade
    if bl_3 then
        bl_3 = (am[H.Grade] or 0) >= bv_3
    end
    if bl_3 then
        return false
    end
    return true
end
local function fn1411(u)
    State.SellLockerVariants = cj_27(u, Z)
end
local function fn1426(e)
    return ((function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_107 = bit32.bxor(j, p)
            j = bit32.band(j_107 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_108 = bit32.bxor(j, D)
            j = bit32.band(j_108 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(e), 8, 2851454103, "function"))
end
local function fn1440()
    local Group3 = cj_46:AddLeftGroupbox({ Name = "Movement", Icon = "move" })
    Group3:CreateToggle({
        Name = "WalkSpeed",
        CurrentValue = false,
        Flag = "WalkSpeedEnabled",
        Callback = function(g)
            a5.SetWalkSpeedEnabled(g)
        end
    })
    Group3:CreateSlider({
        Name = "Speed",
        Range = { 16, 250 },
        Increment = 1,
        CurrentValue = 32,
        Flag = "WalkSpeed",
        Callback = function(A)
            a5.SetWalkSpeedValue(A)
        end
    })
    Group3:CreateToggle({
        Name = "Infinite Jump",
        CurrentValue = false,
        Flag = "InfJump",
        Callback = function(D)
            a5.SetInfJump(D)
        end
    })
    Group3:CreateToggle({
        Name = "Noclip",
        CurrentValue = false,
        Flag = "NoClip",
        Callback = function(f)
            a5.SetNoClip(f)
        end
    })
    Group3:CreateToggle({
        Name = "Instant ProximityPrompt",
        CurrentValue = false,
        Flag = "InstantProximityPrompt",
        Callback = function(k)
            a5.SetInstantProximityPrompt(k)
        end
    })
    local Group2 = cj_46:AddRightGroupbox({ Name = "Fly", Icon = "plane" })
    Group2:CreateToggle({
        Name = "Fly",
        CurrentValue = false,
        Flag = "Fly",
        Callback = function(E)
            a5.SetFly(E)
        end
    })
    Group2:CreateSlider({
        Name = "Fly Speed",
        Range = { 10, 400 },
        Increment = 1,
        CurrentValue = 60,
        Flag = "FlySpeed",
        Callback = function(z)
            a5.SetFlySpeed(z)
        end
    })
    local Group = cj_46:AddLeftGroupbox({ Name = "Client", Icon = "monitor" })
    Group:CreateToggle({
        Name = "No Gameplay Paused",
        CurrentValue = true,
        Flag = "AntiGameplayPause",
        Callback = function(s)
            a5.SetNoGameplayPaused(s)
        end
    })
    Group:CreateToggle({
        Name = "Auto Reconnect on Kick",
        CurrentValue = false,
        Flag = "AutoReconnect",
        Callback = function(p)
            a5.SetAutoReconnect(p)
        end
    })
    Group:CreateToggle({
        Name = "Disable 3D Rendering",
        CurrentValue = false,
        Flag = "Disable3DRendering",
        Callback = function(u)
            a5.SetDisable3D(u)
        end
    })
    Group:CreateToggle({
        Name = "FPS Boost",
        CurrentValue = false,
        Flag = "FpsBoost",
        Callback = function(w)
            a5.SetFpsBoost(w)
        end
    })
    Group:CreateToggle({
        Name = "Hide UI On Start",
        CurrentValue = false,
        Flag = "HideUIOnStart",
        Callback = function() end
    })
end
local function fn1457()
    local aL, bc
    local ax_3
    local b__2, b__3
    local aL_4
    local aB_1, aB_4, aB_5, aB_7
    local bC = 3
    while true do
        bC += 4989
        if bC < 5000 then
            if bC < 4997 then
                if bC < 4992 then
                    if bC < 4989 then
                        break
                    elseif bC < 4990 then
                        if bC == 4989 then
                            local aA_1 = if aL then 1 else 0
                            local ab_1 = 1348 * aA_1 + 2332 * (1 - aA_1)
                            local aj_1 = 1250 * aA_1 + 3340 * (1 - aA_1)
                            bC = if (ab_1 * 1123 + aj_1 * 1884 + ab_1 * aj_1) % 16777213 == 5553804 then 5 else 6
                        else
                            bC = 4999
                            continue
                        end
                    elseif bC < 4991 then
                        if bC == 4990 then
                            aL = bc
                            bC = if not (function(w, o, F, k)
                                if type(w) ~= "string" then
                                    return false
                                end
                                if #w ~= o then
                                    return false
                                end
                                local j = 5381
                                local E = buffer.fromstring(w)
                                local x = 0
                                while x <= o - 4 do
                                    local p = buffer.readu32(E, x)
                                    local j_117 = bit32.bxor(j, p)
                                    j = bit32.band(j_117 * 33, 4294967295)
                                    x = x + 4
                                end
                                while x < o do
                                    local D = buffer.readu8(E, x)
                                    local j_118 = bit32.bxor(j, D)
                                    j = bit32.band(j_118 * 33, 4294967295)
                                    x = x + 1
                                end
                                if j ~= F then
                                    return false
                                end
                                return w == k
                            end)(type(aL), 5, 248602996, "table") then 8 else 11
                        else
                            bC = 4991
                            continue
                        end
                    elseif bC == 4991 then
                        aL = not State.RankUseTokens
                        bC = if aL then 9 else 0
                    else
                        bC = 634
                        continue
                    end
                elseif bC < 4994 then
                    if bC < 4993 then
                        bC = if not aF(State.RankTargets) then 4 else 2
                    elseif bC == 4993 then
                        return false
                    else
                        bC = 4992
                        continue
                    end
                elseif bC < 4995 then
                    if bC == 4994 then
                        return false
                    end
                    bC = 11621
                    continue
                elseif bC < 4996 then
                    if bC == 4995 then
                        aL = ar()
                        bc = aL
                        bC = if bc then 7 else 1
                    else
                        bC = 4997
                        continue
                    end
                else
                    bc = aL.PlayerUnits
                    bC = 1
                end
            elseif bC < 4998 then
                return false
            elseif bC < 4999 then
                aL = not State.RankUseMoney
                bC = 0
            else
                break
            end
        elseif bC < 5753 then
            if bC == 5000 then
                local bc_1 = aF(State.RankUnits)
                for k2, v in pairs(aL) do
                    local ca = v
                    local aL_1 = not ay() or not State.Enabled.RankUnits
                    if aL_1 then
                        return false
                    end
                    local aL_2 = ((function(w, o, F, k)
                        if type(w) ~= "string" then
                            return false
                        end
                        if #w ~= o then
                            return false
                        end
                        local j = 5381
                        local E = buffer.fromstring(w)
                        local x = 0
                        while x <= o - 4 do
                            local p = buffer.readu32(E, x)
                            local j_115 = bit32.bxor(j, p)
                            j = bit32.band(j_115 * 33, 4294967295)
                            x = x + 4
                        end
                        while x < o do
                            local D = buffer.readu8(E, x)
                            local j_116 = bit32.bxor(j, D)
                            j = bit32.band(j_116 * 33, 4294967295)
                            x = x + 1
                        end
                        if j ~= F then
                            return false
                        end
                        return w == k
                    end)(type(ca), 5, 248602996, "table"))
                    if aL_2 then
                        aL_2 = not bc_1 or State.RankUnits[ca.PlayerUnitName]
                    end
                    if aL_2 then
                        local Grade = ca.Grade
                        if not (Grade and State.RankTargets[Grade]) then
                            local P_3 = false
                            local bT = false
                            if State.RankUseTokens then
                                aB_1, b__2 = pcall(TokensService.GetTokenAmount, LocalPlayer, GradeService.GRADE_TOKEN_NAME)
                                local ax_1 = aB_1
                                if ax_1 then
                                    local aB_2 = tonumber(b__2) or 0
                                    ax_1 = aB_2 >= 1
                                end
                                if ax_1 then
                                    bT = true
                                    P_3 = true
                                end
                            end
                            local aB_3 = not P_3
                            if aB_3 ~= false then
                                aB_3 = State.RankUseMoney
                            end
                            if aB_3 then
                                aB_4, b__3 = pcall(PlayerUnitService.GetGradeRerollCost, LocalPlayer, { PlayerUnitName = ca.PlayerUnitName, PlayerUnitVariant = ca.Variant, PlayerUnitLevel = ca.Level })
                                local ax_2 = aB_4 and (function(w, o, F, k)
                                    if type(w) ~= "string" then
                                        return false
                                    end
                                    if #w ~= o then
                                        return false
                                    end
                                    local j = 5381
                                    local E = buffer.fromstring(w)
                                    local x = 0
                                    while x <= o - 4 do
                                        local p = buffer.readu32(E, x)
                                        local j_113 = bit32.bxor(j, p)
                                        j = bit32.band(j_113 * 33, 4294967295)
                                        x = x + 4
                                    end
                                    while x < o do
                                        local D = buffer.readu8(E, x)
                                        local j_114 = bit32.bxor(j, D)
                                        j = bit32.band(j_114 * 33, 4294967295)
                                        x = x + 1
                                    end
                                    if j ~= F then
                                        return false
                                    end
                                    return w == k
                                end)(type(b__3), 6, 472614556, "number")
                                local aA_2 = if ax_2 then 1 else 0
                                local ab_2 = 4033 * aA_2 + 2900 * (1 - aA_2)
                                local aj_2 = 3998 * aA_2 + 849 * (1 - aA_2)
                                if (ab_2 * 2146 + aj_2 * 133 + ab_2 * aj_2) % 16777213 == 8533273 then
                                    aB_5, ax_3 = pcall(CurrencyService.CanAfford, LocalPlayer, "Cash", b__3)
                                    local aB_6 = aB_5 and ax_3 == true
                                    if not aB_6 then
                                        local ax_4 = (function(w, o, F, k)
                                            if type(w) ~= "string" then
                                                return false
                                            end
                                            if #w ~= o then
                                                return false
                                            end
                                            local j = 5381
                                            local E = buffer.fromstring(w)
                                            local x = 0
                                            while x <= o - 4 do
                                                local p = buffer.readu32(E, x)
                                                local j_111 = bit32.bxor(j, p)
                                                j = bit32.band(j_111 * 33, 4294967295)
                                                x = x + 4
                                            end
                                            while x < o do
                                                local D = buffer.readu8(E, x)
                                                local j_112 = bit32.bxor(j, D)
                                                j = bit32.band(j_112 * 33, 4294967295)
                                                x = x + 1
                                            end
                                            if j ~= F then
                                                return false
                                            end
                                            return w == k
                                        end)(type(b__3), 6, 472614556, "number") and b__3 <= R()
                                        aB_6 = ax_4
                                    end
                                    P_3 = aB_6
                                    bT = false
                                end
                            end
                            if P_3 then
                                if ao("RerollPlayerUnitGrade", k2, bT, Grade) then
                                    aL_4, aB_7 = pcall(GradeService.GetRerollCooldown, LocalPlayer, bT)
                                    local bT_1 = aL_4 and (function(w, o, F, k)
                                        if type(w) ~= "string" then
                                            return false
                                        end
                                        if #w ~= o then
                                            return false
                                        end
                                        local j = 5381
                                        local E = buffer.fromstring(w)
                                        local x = 0
                                        while x <= o - 4 do
                                            local p = buffer.readu32(E, x)
                                            local j_109 = bit32.bxor(j, p)
                                            j = bit32.band(j_109 * 33, 4294967295)
                                            x = x + 4
                                        end
                                        while x < o do
                                            local D = buffer.readu8(E, x)
                                            local j_110 = bit32.bxor(j, D)
                                            j = bit32.band(j_110 * 33, 4294967295)
                                            x = x + 1
                                        end
                                        if j ~= F then
                                            return false
                                        end
                                        return w == k
                                    end)(type(aB_7), 6, 472614556, "number")
                                    local bT_2 = bT_1 and aB_7 or 0.75
                                    local bT_3 = os.clock() + math.max(bT_2, 0.75) + 1.5
                                    while true do
                                        local aB_8 = ay() and os.clock() < bT_3
                                        if aB_8 then
                                            local aB_9 = ar()
                                            local aB_10 = aB_9 and aB_9.PlayerUnits and aB_9.PlayerUnits[k2]
                                            if not aB_10 or aB_10.Grade ~= Grade then
                                                break
                                            end
                                            task.wait(0.1)
                                            continue
                                        end
                                        break
                                    end
                                    task.wait(math.max(bT_2, 0.75) + 0.05)
                                    return true
                                end
                            end
                        end
                    end
                end
                return false
            end
            bC = 4995
        else
            break
        end
    end
end
local function fn1467(m, k)
    return m.Order < k.Order
end
local function fn1470(m)
    State.BuyBoxes = cj_27(m, aR)
end
local function fn1471(p)
    local b8 = p and true
    local bJ = if b8 then 1 else 0
    local V = 3564 * bJ + 724 * (1 - bJ)
    local bX = 1188 * bJ + 1477 * (1 - bJ)
    if not ((V * 3002 + bX * 4066 + V * bX) % 16777213 == 2986355) then
        b8 = false
    end
    State.RankUseTokens = b8
end
local function worker()
    local W = 6
    while true do
        W += 4214
        if W < 4218 then
            if W < 4216 then
                if W < 4215 then
                    if W < 4119 then
                        break
                    elseif W < 4214 then
                        break
                    elseif W == 4214 then
                        W = 5
                    else
                        W = 4219
                        continue
                    end
                else
                    W = if ay() then 4 else 0
                end
            elseif W < 4217 then
                break
            else
                W = 7
            end
        elseif W < 4411 then
            if W < 4220 then
                if W < 4219 then
                    pcall(cj_66)
                    task.wait(3)
                    W = 3
                else
                    W = 2
                end
            elseif W < 4221 then
                if W == 4220 then
                    W = 7
                else
                    W = 4411
                    continue
                end
            elseif W == 4221 then
                W = 1
            else
                break
            end
        else
            break
        end
    end
end
local function fn1575(f)
    State.MarketBoxes = cj_27(f, aR)
end
local function fn1577(o)
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_119 = bit32.bxor(j, p)
            j = bit32.band(j_119 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_120 = bit32.bxor(j, D)
            j = bit32.band(j_120 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(o), 6, 2175009567, "string") then
        local O = aP[o] or o
        State.TowerFloor = O
    end
end
I = nil
J = nil
K = nil
PlaytimeRewardsLibrary = nil
cj_58 = nil
P = nil
R = nil
S = nil
PlaytimeRewardsService = nil
cj_29 = nil
cj_15 = nil
U = nil
V = nil
Window = nil
InfinityTowerService = nil
Y = nil
Z = nil
aa = nil
ObbyBonusLibrary = nil
ab = nil
TraitService = nil
ae = nil
af = nil
Remotes = nil
cj_60 = nil
ObbyBonusService = nil
ah = nil
cj_27 = nil
cj_14 = nil
PlayerUnitService = nil
aj = nil
ak = nil
Workspace = nil
am = nil
cj_17 = nil
InventoryService = nil
ao = nil
cj_22 = nil
TokensService = nil
cj_70 = nil
ar = nil
as = nil
local M, InfinityTowerBattleService, O, Q, ac, ap
M = nil
InfinityTowerBattleService = nil
O = nil
Q = nil
ac = nil
cj_8 = nil
cj_43 = nil
ap = nil
PlayerUnitsLibrary = nil
au = nil
GradeService = nil
aw = nil
ax = nil
ay = nil
cj_16 = nil
MarketService = nil
cj_33 = nil
aE = nil
aF = nil
cj_46 = nil
UpgradesLibrary = nil
aG = nil
aH = nil
aI = nil
aK = nil
UpgradesService = nil
cj_28 = nil
aM = nil
aN = nil
aO = nil
cj_54 = nil
aP = nil
aQ = nil
PlotService = nil
cj_66 = nil
cj_56 = nil
NumberUtils = nil
aR = nil
aS = nil
State = nil
BoxesLibrary = nil
aW = nil
cj_36 = nil
aX = nil
BoxService = nil
cj_61 = nil
IndexRewardsService = nil
local az, aB, aC, aD, aJ, aV, aY
cj_52 = nil
az = nil
aB = nil
aC = nil
cj_40 = nil
cj_20 = nil
aD = nil
aJ = nil
aV = nil
aY = nil
cj_38 = nil
a0 = nil
a5 = nil
cj_64 = nil
PolisherService = nil
LocalPlayer = nil
cj_21 = nil
ClientDataManager = nil
a9 = nil
DailyLoginService = nil
bb = nil
CurrencyService = nil
cj_49 = nil
local a_, a6, a8, ba, bc, bd, bf, bg, bh, bm
a_ = nil
a6 = nil
a8 = nil
ba = nil
bc = nil
bd = nil
if not game:IsLoaded() then
    bf = game.Loaded
    bf.Wait(bf)
end
I = nil
LocalPlayer = nil
aG = nil
cj_17 = nil
a5 = nil
State = nil
Workspace = nil
Remotes = nil
ClientDataManager = nil
BoxService = nil
PlotService = nil
UpgradesService = nil
MarketService = nil
GradeService = nil
TokensService = nil
InventoryService = nil
PlayerUnitService = nil
TraitService = nil
InfinityTowerService = nil
InfinityTowerBattleService = nil
CurrencyService = nil
PolisherService = nil
BoxesLibrary = nil
UpgradesLibrary = nil
PlayerUnitsLibrary = nil
ObbyBonusService = nil
ObbyBonusLibrary = nil
PlaytimeRewardsService = nil
PlaytimeRewardsLibrary = nil
DailyLoginService = nil
IndexRewardsService = nil
NumberUtils = nil
bb = nil
a0 = nil
aR = nil
aM = nil
aN = nil
ay = nil
aC = nil
ao = nil
aQ = nil
I = {}
local rd = game
I.Players = rd:GetService("Players")
rd = game
I.ReplicatedStorage = rd:GetService("ReplicatedStorage")
rd = game
I.RunService = rd:GetService("RunService")
rd = game
I.UserInputService = rd:GetService("UserInputService")
rd = game
I.VirtualUser = rd:GetService("VirtualUser")
rd = game
I.TeleportService = rd:GetService("TeleportService")
rd = game
I.Workspace = rd:GetService("Workspace")
rd = game
I.Lighting = rd:GetService("Lighting")
rd = game
I.Stats = rd:GetService("Stats")
rd = game
I.CoreGui = rd:GetService("CoreGui")
rd = game
I.GuiService = rd:GetService("GuiService")
rd = game
I.CollectionService = rd:GetService("CollectionService")
rd = game
I.HttpService = rd:GetService("HttpService")
LocalPlayer = I.Players.LocalPlayer
bh = "OuroborosBlueLockFarm"
local cj_39 = "v0.5"
aG = "Blue Lock Farm"
local cj_34 = "https://discord.gg/synapsex"
local cj_45 = "https://ouroboros-hub-rbx.web.app/"
cj_17 = "https://raw.githubusercontent.com/joustingmatch/OuroFlow/main/Source.luau"
bg = function(c)
    local bE
    local bf
    local ai
    bE = nil
    bf = nil
    ai = nil
    local pM = type(c)
    local pO = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_133 = bit32.bxor(j, p)
            j = bit32.band(j_133 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_134 = bit32.bxor(j, D)
            j = bit32.band(j_134 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(pM, 6, 2175009567, "string")
    local bJ = not (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_131 = bit32.bxor(j, p)
            j = bit32.band(j_131 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_132 = bit32.bxor(j, D)
            j = bit32.band(j_132 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(c, 0, 5381, "")
    local bS = pO and bJ
    assert(bS, "Namespace is required")
    assert((function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_129 = bit32.bxor(j, p)
            j = bit32.band(j_129 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_130 = bit32.bxor(j, D)
            j = bit32.band(j_130 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(getgenv), 8, 2851454103, "function"), "getgenv is unavailable")
    bE = getgenv()
    assert((function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_127 = bit32.bxor(j, p)
            j = bit32.band(j_127 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_128 = bit32.bxor(j, D)
            j = bit32.band(j_128 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bE), 5, 248602996, "table"), "getgenv did not return a table")
    local bJ_4 = bE[c]
    if bJ_4 ~= nil then
        local bS_3 = (function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_125 = bit32.bxor(j, p)
                j = bit32.band(j_125 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_126 = bit32.bxor(j, D)
                j = bit32.band(j_126 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(bJ_4), 5, 248602996, "table") and (function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_123 = bit32.bxor(j, p)
                j = bit32.band(j_123 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_124 = bit32.bxor(j, D)
                j = bit32.band(j_124 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(bJ_4.Unload), 8, 2851454103, "function")
        assert(bS_3, "Namespace is occupied")
        bJ_4.Unload()
        assert(bE[c] == nil, "Previous instance did not release its namespace")
    end
    bf = {}
    ai = { State = {}, Unloaded = false }
    ai.Track = function(c)
        local aT = 2
        while true do
            aT += 10272
            if aT < 10276 then
                if aT < 10273 then
                    if aT < 10272 then
                        break
                    elseif aT == 10272 then
                        return c
                    else
                        aT = 15238
                        continue
                    end
                elseif aT < 10274 then
                    if aT == 10273 then
                        table.insert(bf, c)
                        aT = 0
                    else
                        aT = 10272
                        continue
                    end
                elseif aT < 10275 then
                    if aT == 10274 then
                        assert((function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_121 = bit32.bxor(j, p)
                                j = bit32.band(j_121 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_122 = bit32.bxor(j, D)
                                j = bit32.band(j_122 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(c), 8, 2851454103, "function"), "Cleanup must be callable")
                        local bi = if ai.Unloaded then 1 else 0
                        local b8 = 936 * bi + 3209 * (1 - bi)
                        local bt = 2842 * bi + 2107 * (1 - bi)
                        aT = if (b8 * 2000 + bt * 951 + b8 * bt) % 16777213 == 7234854 then 4 else 1
                    else
                        aT = 16094
                        continue
                    end
                else
                    break
                end
            elseif aT < 15238 then
                if aT < 13503 then
                    if aT == 10276 then
                        c()
                        aT = 0
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
    ai.Unload = function()
        local cd, bv, b9, aV, by
        local bs_2
        local a8 = 9
        while true do
            a8 += 1031
            if a8 < 1040 then
                if a8 < 1038 then
                    if a8 < 1035 then
                        if a8 < 1033 then
                            if a8 < 1032 then
                                if a8 == 1031 then
                                    table.insert(cd, tostring(bv))
                                    a8 = 10
                                else
                                    break
                                end
                            else
                                break
                            end
                        elseif a8 < 1034 then
                            bE[c] = nil
                            a8 = 4
                        elseif a8 == 1034 then
                            ai.Unloaded = true
                            cd = {}
                            local a6_1 = #bf
                            local bs_1 = -1
                            aV = a6_1
                            b9 = bs_1
                            a8 = 7
                        else
                            a8 = 1042
                            continue
                        end
                    elseif a8 < 1036 then
                        a8 = if #cd > 0 then 5 else 11
                    elseif a8 < 1037 then
                        local pL = table.concat(cd, "; ")
                        warn("[Ouroboros][BlueLock] Cleanup incomplete: " .. pL)
                        a8 = 11
                    else
                        local a6_2 = table.remove(bf, by)
                        bs_2, bv = pcall(a6_2)
                        a8 = if not bs_2 then 0 else 10
                    end
                elseif a8 < 1039 then
                    if a8 == 1038 then
                        a8 = if b9 > 0 and aV <= 1 or b9 <= 0 and aV >= 1 then 8 else 14
                    else
                        a8 = 10670
                        continue
                    end
                elseif a8 == 1039 then
                    by = aV
                    a8 = 6
                else
                    a8 = 1031
                    continue
                end
            elseif a8 < 1044 then
                if a8 < 1042 then
                    if a8 < 1041 then
                        a8 = if ai.Unloaded then 13 else 3
                    elseif a8 == 1041 then
                        a8 = 12
                    else
                        a8 = 1042
                        continue
                    end
                elseif a8 < 1043 then
                    if a8 == 1042 then
                        a8 = 1
                    else
                        a8 = 1036
                        continue
                    end
                elseif a8 == 1043 then
                    aV += b9
                    a8 = 7
                else
                    a8 = 1040
                    continue
                end
            elseif a8 < 7684 then
                if a8 < 5304 then
                    if a8 < 1045 then
                        return
                    elseif a8 < 1422 then
                        if a8 == 1045 then
                            table.clear(ai.State)
                            a8 = if bE[c] == ai then 2 else 4
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
    bE[c] = ai
    return ai
end
local function cj_10(c, e)
    local connection
    local aG = ((function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_143 = bit32.bxor(j, p)
            j = bit32.band(j_143 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_144 = bit32.bxor(j, D)
            j = bit32.band(j_144 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(c), 5, 248602996, "table"))
    local aL = if aG then 1 else 0
    local b6 = 3229 * aL + 558 * (1 - aL)
    local am = 102 * aL + 2088 * (1 - aL)
    if (b6 * 3723 + am * 3281 + b6 * am) % 16777213 == 12685587 then
        aG = (function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_141 = bit32.bxor(j, p)
                j = bit32.band(j_141 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_142 = bit32.bxor(j, D)
                j = bit32.band(j_142 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(c.Track), 8, 2851454103, "function")
    end
    assert(aG, "FeatureAPI required")
    local aG_4 = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_139 = bit32.bxor(j, p)
            j = bit32.band(j_139 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_140 = bit32.bxor(j, D)
            j = bit32.band(j_140 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(e), 5, 248602996, "table") and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_137 = bit32.bxor(j, p)
            j = bit32.band(j_137 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_138 = bit32.bxor(j, D)
            j = bit32.band(j_138 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(e.Destroy), 8, 2851454103, "function")
    assert(aG_4, "UI window required")
    c.Track(function()
        pcall(function()
            e.Destroy(e)
        end)
    end)
    local Gui = e.Gui
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_135 = bit32.bxor(j, p)
            j = bit32.band(j_135 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_136 = bit32.bxor(j, D)
            j = bit32.band(j_136 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(typeof(Gui), 8, 1471340621, "Instance") then
        connection = Gui.Destroying:Connect(function()
            task.defer(c.Unload)
        end)
        c.Track(function()
            connection.Disconnect(connection)
        end)
    end
end
a5 = bg(bh)
State = a5.State
aN = fn1426
ay = fns.fn612
local bi = I.ReplicatedStorage
Workspace = I.Workspace
Remotes = bi:WaitForChild("Remotes")
local bl = bi:WaitForChild("Shared")
bf = (bl:WaitForChild("Core"))
bg = (bf:WaitForChild("Storage"))
local bj = bg:WaitForChild("Game")
local bk = bl:WaitForChild("Services")
bf = (bi:WaitForChild("Client"))
bg = (bf:WaitForChild("Data"))
ClientDataManager = require(bg:WaitForChild("ClientDataManager"))
BoxService = require(bk:WaitForChild("BoxService"))
PlotService = require(bk:WaitForChild("PlotService"))
UpgradesService = require(bk:WaitForChild("UpgradesService"))
MarketService = require(bk:WaitForChild("MarketService"))
GradeService = require(bk:WaitForChild("GradeService"))
TokensService = require(bk:WaitForChild("TokensService"))
InventoryService = require(bk:WaitForChild("InventoryService"))
PlayerUnitService = require(bk:WaitForChild("PlayerUnitService"))
TraitService = require(bk:WaitForChild("TraitService"))
InfinityTowerService = require(bk:WaitForChild("InfinityTowerService"))
InfinityTowerBattleService = require(bk:WaitForChild("InfinityTowerBattleService"))
CurrencyService = require(bk:WaitForChild("CurrencyService"))
PolisherService = require(bk:WaitForChild("PolisherService"))
BoxesLibrary = require(bj:WaitForChild("BoxesLibrary"))
local cj_31 = require(bj:WaitForChild("VariantsLibrary"))
UpgradesLibrary = require(bj:WaitForChild("UpgradesLibrary"))
local cj_19 = require(bj:WaitForChild("GradesLibrary"))
PlayerUnitsLibrary = require(bj:WaitForChild("PlayerUnitsLibrary"))
bm = require(bj:WaitForChild("TraitsLibrary"))
local cj_67 = require(bj:WaitForChild("InfinityTowerFloorsLibrary"))
ObbyBonusService = require(bk:WaitForChild("ObbyBonusService"))
ObbyBonusLibrary = require(bj:WaitForChild("ObbyBonusLibrary"))
PlaytimeRewardsService = require(bk:WaitForChild("PlaytimeRewardsService"))
PlaytimeRewardsLibrary = require(bj:WaitForChild("PlaytimeRewardsLibrary"))
DailyLoginService = require(bk:WaitForChild("DailyLoginService"))
IndexRewardsService = require(bk:WaitForChild("IndexRewardsService"))
bf = (bl:WaitForChild("Utility"))
NumberUtils = require(bf:WaitForChild("NumberUtils"))
local cj_57 = require(bl:WaitForChild("Constants"))
aC = fns.fn646
ao = function(c, ...)
    local bR
    local bO
    bR = nil
    bO = nil
    bO = aC(c)
    local aW = bO and bO:IsA("RemoteEvent")
    if not aW then
        return false
    end
    bR = table.pack(...)
    return pcall(function()
        bO:FireServer(table.unpack(bR, 1, bR.n))
    end)
end
aQ = function(e, ...)
    local aU
    local bA
    aU = nil
    bA = nil
    local bF_4
    aU = aC(e)
    local aS = aU and aU:IsA("RemoteFunction")
    local aS_1
    if not aS then
        return false, nil
    end
    bA = table.pack(...)
    aS_1, bF_4 = pcall(function()
        return aU:InvokeServer(table.unpack(bA, 1, bA.n))
    end)
    return aS_1, bF_4
end
bb = {}
a0 = {}
aR = {}
aM = {}
local BoxRankOrder = BoxService.BoxRankOrder
for i, v in ipairs(BoxRankOrder) do
    bf = BoxesLibrary[v]
    bg = bf and bf.DisplayName
    bf = bg or v
    bg = bf
    table.insert(bb, v)
    table.insert(a0, bg)
    aR[bg] = v
    aM[v] = i
end
Z, P, J = nil, nil, nil
bf = {}
Z = {}
P = {}
J = {}
bg = {}
local hW = cj_31
for k2, v in pairs(hW) do
    bh = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_147 = bit32.bxor(j, p)
            j = bit32.band(j_147 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_148 = bit32.bxor(j, D)
            j = bit32.band(j_148 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(v), 5, 248602996, "table") and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_145 = bit32.bxor(j, p)
            j = bit32.band(j_145 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_146 = bit32.bxor(j, D)
            j = bit32.band(j_146 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(v.Multiplier), 6, 472614556, "number")
    if bh then
        bh = table.insert
        bi = v.DisplayName or v.Name
        bj = bi or k2
        bh(bg, { Key = k2, Label = bj, Mult = v.Multiplier })
    end
end
table.sort(bg, fns.fn877)
for i, v in ipairs(bg) do
    table.insert(bf, v.Key)
    table.insert(P, v.Label)
    Z[v.Label] = v.Key
    J[v.Key] = v.Mult
end
V = {}
ac = {}
bf = {}
local rq = UpgradesLibrary
for k2, v in pairs(rq) do
    bg = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_149 = bit32.bxor(j, p)
            j = bit32.band(j_149 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_150 = bit32.bxor(j, D)
            j = bit32.band(j_150 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(v), 5, 248602996, "table") and not v.HiddenOnGui and aN(v.GetPrice)
    if bg then
        bg = table.insert
        bh = v.DisplayName or k2
        bi = tonumber(v.LayoutOrder) or 99
        bg(bf, { Key = k2, Label = bh, Order = bi })
    end
end
table.sort(bf, fn1467)
for i, v in ipairs(bf) do
    table.insert(ac, v.Label)
    V[v.Label] = v.Key
end
am = {}
ap = {}
bf = {}
local nK = cj_19
for k2, v in pairs(nK) do
    local bE = k2
    bg = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_153 = bit32.bxor(j, p)
            j = bit32.band(j_153 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_154 = bit32.bxor(j, D)
            j = bit32.band(j_154 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(v), 5, 248602996, "table") and (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_151 = bit32.bxor(j, p)
            j = bit32.band(j_151 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_152 = bit32.bxor(j, D)
            j = bit32.band(j_152 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(v.Multiplier), 6, 472614556, "number")
    if bg then
        table.insert(bf, { Key = bE, Mult = v.Multiplier })
    end
end
table.sort(bf, fns.fn672)
for i, v in ipairs(bf) do
    table.insert(ap, v.Key)
    am[v.Key] = i
end
aw = {}
aB = {}
bf = TraitService.GetSortedTraitNames()
if (function(w, o, F, k)
    if type(w) ~= "string" then
        return false
    end
    if #w ~= o then
        return false
    end
    local j = 5381
    local E = buffer.fromstring(w)
    local x = 0
    while x <= o - 4 do
        local p = buffer.readu32(E, x)
        local j_155 = bit32.bxor(j, p)
        j = bit32.band(j_155 * 33, 4294967295)
        x = x + 4
    end
    while x < o do
        local D = buffer.readu8(E, x)
        local j_156 = bit32.bxor(j, D)
        j = bit32.band(j_156 * 33, 4294967295)
        x = x + 1
    end
    if j ~= F then
        return false
    end
    return w == k
end)(type(bf), 5, 248602996, "table") then
    for i, v in ipairs(bf) do
        bf = bm[v]
        bg = bf
        if bg then
            bh = bf.DisplayName or bf.Name
            bg = bh
        end
        bf = bg or v
        bg = bf
        table.insert(aB, bg)
        aw[bg] = v
    end
end
aW, aP, aH = nil, nil, nil
aW = {}
aP = {}
aH = {}
bf = {}
local iC = cj_67
for k2, v in pairs(iC) do
    local bR = k2
    local bT = v
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_157 = bit32.bxor(j, p)
            j = bit32.band(j_157 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_158 = bit32.bxor(j, D)
            j = bit32.band(j_158 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(bT), 5, 248602996, "table") then
        bg = table.insert
        bh = bT.DisplayName or bT.Name
        bi = bh or bR
        bh = tonumber(bT.LayoutOrder) or 0
        bg(bf, { Key = bR, Label = bi, Order = bh })
    end
end
table.sort(bf, fns.fn235)
for i, v in ipairs(bf) do
    table.insert(aW, v.Label)
    table.insert(aH, v.Key)
    aP[v.Label] = v.Key
end
bf = tonumber(cj_57.InfinityTowerUnitSlots) or 4
ba, a_, aS = nil, nil, nil
ba = bf
a_ = {}
aS = {}
bf = {}
for k2, v in pairs(PlayerUnitsLibrary) do
    if (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_159 = bit32.bxor(j, p)
            j = bit32.band(j_159 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_160 = bit32.bxor(j, D)
            j = bit32.band(j_160 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(v), 5, 248602996, "table") then
        bg = v.BoxName
        bh = bg and BoxesLibrary[bg]
        bi = bh
        if bh then
            bh = bi.DisplayName
        end
        bi = bh or bg
        bh = bi or "?"
        bi = bh
        bh = table.insert
        bj = string.format
        bk = v.DisplayName or k2
        bl = bj("%s [%s]", bk, bi)
        bj = aM[bg] or 999
        bg = tonumber(v.Index) or 0
        bh(bf, { Key = k2, Label = bl, Rank = bj, Index = bg })
    end
end
table.sort(bf, fns.fn1039)
for i, v in ipairs(bf) do
    table.insert(a_, v.Label)
    aS[v.Label] = v.Key
end
aJ = nil
bf = {
    "Roll",
    "BuyRoll",
    "PlaceLockers",
    "OpenLockers",
    "EquipBest",
    "CarryBoxes",
    "SellBoxes",
    "UpgradeConveyor",
    "BuyUpgrades",
    "BuyMarket",
    "RankUnits",
    "TraitUnits",
    "Tower",
    "CollectDrops",
    "Obby",
    "ClaimRewards",
    "Sell"
}
aJ = { "None" }
for i, v in ipairs(ap) do
    table.insert(aJ, v)
end
State.Enabled = {}
State.Gens = {}
for i, v in ipairs(bf) do
    State.Enabled[v] = false
    State.Gens[v] = 0
end
State.BuyBoxes = {}
State.BuyVariants = {}
State.BoxVariants = {}
State.PlaceBoxes = {}
State.LockerLimit = 30
State.LastEquipAt = 0
State.SellViaPolisher = true
State.PolisherDepositAt = 0
State.Upgrades = {}
State.MarketBoxes = {}
State.RankUnits = {}
State.RankTargets = { S = true, SS = true, X = true, EX = true, UR = true }
State.RankUseTokens = false
State.RankUseMoney = true
State.TraitUnits = {}
State.TraitTargets = {}
bf = aH[1] or "Entrance"
cj_27 = nil
aF = nil
ar = nil
R = nil
cj_28 = nil
cj_21 = nil
ah = nil
cj_29 = nil
bc = nil
ax = nil
Y = nil
au = nil
aO = nil
cj_52 = nil
aV = nil
cj_20 = nil
Q = nil
cj_70 = nil
cj_49 = nil
cj_64 = nil
ab = nil
aI = nil
cj_8 = nil
cj_56 = nil
cj_36 = nil
cj_22 = nil
M = nil
K = nil
ae = nil
aa = nil
cj_40 = nil
State.TowerFloor = bf
State.TowerBestTeam = true
State.LastRollAt = 0
State.LastBoughtRollId = nil
State.Opening = {}
State.SellUnitBoxes = {}
State.SellUnitVariants = {}
State.SellKeepRank = "S"
State.SellLockerBoxes = {}
State.SellLockerVariants = {}
State.Webhook = {
    Url = "",
    Drops = false,
    DropBoxes = {},
    DropVariants = {},
    Stats = false,
    StatsMinutes = 10,
    Queue = {},
    LastStats = 0,
    KnownUnits = nil
}
cj_27 = fns.fn706
aF = fns.fn181
ar = fn1366
R = fn1329
cj_28 = fns.fn152
cj_21 = fns.fn313
ah = fns.fn416
cj_29 = fns.fn774
bc = fns.fn789
ax = fns.fn599
Y = fns.fn108
au = fns.fn429
aO = fn1197
bh = fns.fn477
cj_52 = fns.fn421
aV = fn1379
cj_20 = fns.fn1183
cj_57 = function()
    local aA
    local ag, bX
    local ab_3
    local bH_7
    local N = if not aF(State.PlaceBoxes) then 1 else 0
    local S = 3367 * N + 354 * (1 - N)
    local a8 = 2305 * N + 1105 * (1 - N)
    if (S * 2482 + a8 * 3892 + S * a8) % 16777213 == 8311676 then
        return false
    else
        bH_7, ab_3, ag = {}, {}, 0
        local iq = bc
        local ir = ipairs
        for k2, v in ir(iq()) do
            local ae = v
            if ae:GetAttribute("Unlocked") then
                local attr = ae:GetAttribute("Type")
                if attr == nil then
                    table.insert(bH_7, ae)
                elseif (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_163 = bit32.bxor(j, p)
                        j = bit32.band(j_163 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_164 = bit32.bxor(j, D)
                        j = bit32.band(j_164 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(attr, 3, 195783984, "Box") then
                    ag += 1
                elseif (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_161 = bit32.bxor(j, p)
                        j = bit32.band(j_161 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_162 = bit32.bxor(j, D)
                        j = bit32.band(j_162 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(attr, 10, 1687220493, "PlayerUnit") then
                    table.insert(ab_3, ae)
                end
            end
        end
        aA = {}
        local iq_1 = cj_52
        local ir_1 = ipairs
        for k, v in ir_1(iq_1()) do
            local aH_4 = State.PlaceBoxes[v.Box] and au(v.Box, v.Variant)
            if aH_4 then
                table.insert(aA, v)
            end
        end
        bX = function()
            for i, v in ipairs(aA) do
                if v.Amount > 0 then
                    return v
                end
            end
            return nil
        end
        local function aH_5()
            local be = ay() and State.Enabled.PlaceLockers and ag < State.LockerLimit and bX() ~= nil
            return be
        end
        if not bX() then
            local R_2 = #bH_7 > 0 and os.clock() - State.LastEquipAt >= 5
            if R_2 then
                State.LastEquipAt = os.clock()
                aV()
            end
            return false
        end
        local R_3 = false
        local function P(x)
            local cb = bX()
            if not cb then
                return false
            else
                local Box = cb.Box
                local Variant = cb.Variant
                local ih = "PlaceBoxOnDropper"
                if not ao(ih, x, Box, Variant) then
                    return false
                end
                cb.Amount = cb.Amount - 1
                ag += 1
                Y(x, "Type", nil, 1.5)
                task.wait(0.35)
                return true
            end
        end
        for i, v in ipairs(bH_7) do
            if not aH_5() then
                break
            end
            local bH_8 = P(v) or R_3
            R_3 = bH_8
        end
        local bH_9 = aH_5() and #ab_3 > 0
        if bH_9 then
            local bH_10 = (function(f, v)
                if type(f) ~= "number" then
                    return false
                end
                if f % 1 ~= 0 then
                    return false
                end
                local z = f < -2147483648
                if z then
                else
                    z = f > 2147483647
                end
                if z then
                    return false
                end
                local F_4 = bit32.bxor(f, 1540483477)
                local F_5 = bit32.band(F_4 * 403 + bit32.lshift(F_4, 24), 4294967295)
                local F_6 = bit32.bxor(F_5, bit32.rshift(F_5, 13))
                return F_6 == v
            end)(ag, 544454170) and os.clock() - State.LastEquipAt >= 10
            if bH_10 then
                State.LastEquipAt = os.clock()
                aV()
                task.wait(1)
                return R_3
            end
            table.sort(ab_3, cj_20)
            for i, v in ipairs(ab_3) do
                if not aH_5() then
                    break
                end
                ao("RemovePlayerUnitFromDropper", v)
                if not Y(v, "Type", "PlayerUnit", 1.5) then
                    break
                end
                task.wait(0.2)
                local bH_11 = P(v) or R_3
                R_3 = bH_11
            end
            return R_3
        end
        return R_3
    end
end
local function cj_37()
    local aF, ba
    local bi_1
    local by = 0
    while true do
        by += 6634
        if by < 6636 then
            if by < 6627 then
                break
            elseif by < 6634 then
                break
            elseif by < 6635 then
                aF = aC("OpenBoxOnDropper")
                ba = aF
                by = if ba then 5 else 4
            else
                break
            end
        elseif by < 6637 then
            local ba_3 = false
            local iz = bc
            for i, v in ipairs(iz()) do
                local ca = v
                local bL = not ay() or not State.Enabled.OpenLockers
                local bL_2
                if bL then
                    break
                end
                local bL_1 = (function(w, o, F, k)
                    if type(w) ~= "string" then
                        return false
                    end
                    if #w ~= o then
                        return false
                    end
                    local j = 5381
                    local E = buffer.fromstring(w)
                    local x = 0
                    while x <= o - 4 do
                        local p = buffer.readu32(E, x)
                        local j_165 = bit32.bxor(j, p)
                        j = bit32.band(j_165 * 33, 4294967295)
                        x = x + 4
                    end
                    while x < o do
                        local D = buffer.readu8(E, x)
                        local j_166 = bit32.bxor(j, D)
                        j = bit32.band(j_166 * 33, 4294967295)
                        x = x + 1
                    end
                    if j ~= F then
                        return false
                    end
                    return w == k
                end)(ca:GetAttribute("Type"), 3, 195783984, "Box") and not State.Opening[ca]
                if bL_1 then
                    bL_2, bi_1 = pcall(BoxService.IsBoxReady, ca:GetAttribute("BoxName"), ca:GetAttribute("PlacedAt"), ca:GetAttribute("Variant"))
                    if bL_2 and bi_1 then
                        State.Opening[ca] = true
                        local bL_3 = pcall(function()
                            aF.InvokeServer(aF, ca)
                        end)
                        State.Opening[ca] = nil
                        ba_3 = ba_3 or bL_3
                        task.wait(0.3)
                    end
                end
            end
            return ba_3
        elseif by < 6712 then
            if by < 6638 then
                return false
            elseif by < 6639 then
                if by == 6638 then
                    by = if not ba then 3 else 2
                else
                    by = 4860
                    continue
                end
            elseif by == 6639 then
                ba = aF:IsA("RemoteFunction")
                by = 4
            else
                break
            end
        else
            break
        end
    end
end
bm = fns.fn2
Q = fn1257
cj_70 = fns.fn237
cj_49 = function(g)
    local cd = LocalPlayer.Character
    local cd_14
    if cd then
        local Character = LocalPlayer.Character
        cd = Character:FindFirstChildOfClass("Humanoid")
    end
    local bY = cd
    local cd_1 = ar()
    local bK_2 = cd_1 and cd_1.Crates
    local cd_2 = bY
    local bm_9
    local R = if cd_2 then 1 else 0
    local bq = 2062 * R + 1818 * (1 - R)
    local aP = 647 * R + 642 * (1 - R)
    if (bq * 1645 + aP * 2455 + bq * aP) % 16777213 == 6314489 then
        cd_2 = (function(w, o, F, k)
            if type(w) ~= "string" then
                return false
            end
            if #w ~= o then
                return false
            end
            local j = 5381
            local E = buffer.fromstring(w)
            local x = 0
            while x <= o - 4 do
                local p = buffer.readu32(E, x)
                local j_167 = bit32.bxor(j, p)
                j = bit32.band(j_167 * 33, 4294967295)
                x = x + 4
            end
            while x < o do
                local D = buffer.readu8(E, x)
                local j_168 = bit32.bxor(j, D)
                j = bit32.band(j_168 * 33, 4294967295)
                x = x + 1
            end
            if j ~= F then
                return false
            end
            return w == k
        end)(type(bK_2), 5, 248602996, "table")
    end
    if cd_2 then
        local cd_3 = {}
        local rJ = pairs
        for k in rJ(bK_2) do
            table.insert(cd_3, k)
        end
        local rJ_1 = ipairs
        for k, v in rJ_1(cd_3) do
            local cd_4 = not ay() or not State.Enabled.SellBoxes
            if cd_4 then
                return
            end
            local bb = Q(v)
            local cd_5 = bb and not bb:GetAttribute("Shiny")
            if cd_5 then
                pcall(function()
                    bY.EquipTool(bY, bb)
                end)
                local cd_6 = os.clock() + 1
                while true do
                    local bK_3 = ay() and os.clock() < cd_6 and bb.Parent ~= LocalPlayer.Character
                    if bK_3 then
                        task.wait(0.05)
                        continue
                    end
                    break
                end
                local cd_7 = bb.Parent == LocalPlayer.Character and ao("DepositCrate", g)
                if cd_7 then
                    State.PolisherDepositAt = os.clock()
                    local cd_8 = os.clock() + 1.5
                    while true do
                        local bK_4 = ay() and os.clock() < cd_8 and bb.Parent
                        if bK_4 then
                            task.wait(0.05)
                            continue
                        end
                        break
                    end
                end
                task.wait(0.1)
            end
        end
    end
    local cd_9 = tonumber(g:GetAttribute("PolishedBallCount")) or 0
    local cd_10 = ar()
    local bm_6 = cd_10 and cd_10.Polisher
    local R_4 = if bm_6 then 1 else 0
    local bq_5 = 3335 * R_4 + 2318 * (1 - R_4)
    local aP_3 = 3865 * R_4 + 304 * (1 - R_4)
    if (bq_5 * 2419 + aP_3 * 3682 + bq_5 * aP_3) % 16777213 == 1633644 then
        bm_6 = tonumber(cd_10.Polisher.PendingCash)
    end
    local bm_7 = bm_6 or 0
    local cd_12 = bm_7 <= 0 or os.clock() - State.PolisherDepositAt > 90
    if cd_9 > 0 and cd_12 then
        cd_14, bm_9 = pcall(InventoryService.HasInventorySpace, LocalPlayer, 1)
        local cd_15 = not (cd_14 and bm_9 == false)
        if cd_15 ~= false then
            cd_15 = ao("CollectPolisherCrate", g)
        end
        if cd_15 then
            Y(g, "PolishedBallCount", cd_9, 2)
            task.wait(0.4)
        end
    end
end
cj_64 = fns.fn858
cj_67 = fns.fn358
ab = fns.fn428
bl = fns.fn252
aI = fns.fn238
bi = fn1457
bj = fns.fn1077
cj_8 = function()
    local aS, aW, aQ, aY, O
    local bE = 6
    while true do
        bE += 3551
        if bE < 3556 then
            if bE < 3554 then
                if bE < 3552 then
                    if bE < 1579 then
                        break
                    elseif bE < 3551 then
                        break
                    else
                        table.insert(aW, aS[O].Guid)
                        bE = 4
                    end
                elseif bE < 3553 then
                    return aW
                else
                    table.sort(aS, function(o, v)
                        return o.Score > v.Score
                    end)
                    aW = {}
                    local P = math.min(ba, #aS)
                    aY = 1
                    aQ = P
                    bE = 8
                end
            elseif bE < 3555 then
                return {}
            else
                aY += 1
                bE = 8
            end
        elseif bE < 3559 then
            if bE < 3557 then
                O = aY
                bE = 0
            elseif bE < 3558 then
                if bE == 3557 then
                    aS = {}
                    aW = pcall(function()
                        local GetAllPlayerUnits = PlayerUnitService.GetAllPlayerUnits
                        local oL = LocalPlayer
                        for k2 in GetAllPlayerUnits(oL) do
                            local U = k2
                            if (function(w, o, F, k)
                                if type(w) ~= "string" then
                                    return false
                                end
                                if #w ~= o then
                                    return false
                                end
                                local j = 5381
                                local E = buffer.fromstring(w)
                                local x = 0
                                while x <= o - 4 do
                                    local p = buffer.readu32(E, x)
                                    local j_169 = bit32.bxor(j, p)
                                    j = bit32.band(j_169 * 33, 4294967295)
                                    x = x + 4
                                end
                                while x < o do
                                    local D = buffer.readu8(E, x)
                                    local j_170 = bit32.bxor(j, D)
                                    j = bit32.band(j_170 * 33, 4294967295)
                                    x = x + 1
                                end
                                if j ~= F then
                                    return false
                                end
                                return w == k
                            end)(type(U), 6, 2175009567, "string") then
                                local aq = PlayerUnitService.GetDamageBasis(LocalPlayer, U)
                                local ay = PlayerUnitService.GetHealthBasis(LocalPlayer, U)
                                local aT = InfinityTowerBattleService.GetDamageFromCashPerDrop(aq)
                                local aq_1 = InfinityTowerBattleService.GetHealthFromCashPerDrop(ay)
                                local insert = table.insert
                                local aC = tonumber(aT) or 0
                                local aT_4 = tonumber(aq_1) or 0
                                insert(aS, { Guid = U, Score = aC * aT_4 })
                            end
                        end
                    end)
                    bE = if not aW then 3 else 2
                else
                    bE = 3985
                    continue
                end
            else
                break
            end
        elseif bE < 3985 then
            if bE == 3559 then
                bE = if aY <= aQ then 5 else 1
            else
                break
            end
        else
            break
        end
    end
end
cj_56 = function()
    local bA
    if State.TowerBestTeam then
        return cj_8()
    end
    bA = {}
    pcall(function()
        local GetAllPlayerUnits = PlayerUnitService.GetAllPlayerUnits
        local oS = LocalPlayer
        for k2 in GetAllPlayerUnits(oS) do
            if (function(w, o, F, k)
                if type(w) ~= "string" then
                    return false
                end
                if #w ~= o then
                    return false
                end
                local j = 5381
                local E = buffer.fromstring(w)
                local x = 0
                while x <= o - 4 do
                    local p = buffer.readu32(E, x)
                    local j_171 = bit32.bxor(j, p)
                    j = bit32.band(j_171 * 33, 4294967295)
                    x = x + 4
                end
                while x < o do
                    local D = buffer.readu8(E, x)
                    local j_172 = bit32.bxor(j, D)
                    j = bit32.band(j_172 * 33, 4294967295)
                    x = x + 1
                end
                if j ~= F then
                    return false
                end
                return w == k
            end)(type(k2), 6, 2175009567, "string") then
                table.insert(bA, k2)
                if #bA >= ba then
                    break
                end
            end
        end
    end)
    return bA
end
cj_36 = fn1305
cj_22 = fns.fn1157
M = fns.fn494
K = function(j, t)
    local as
    local Systems = Workspace:FindFirstChild("Systems")
    local X = Systems and Systems:FindFirstChild(j)
    local bp_1 = X
    if not bp_1 then
        return false
    else
        local X_4 = false
        local GetChildren = bp_1.GetChildren
        local bc = false
        for i, v in ipairs(GetChildren(bp_1)) do
            local b9 = v
            local bh = 3
            while true do
                if bh < 11 then
                    if bh < 5 then
                        if bh < 2 then
                            if bh < 1 then
                                bh = 10
                            else
                                bp_1 = not State.Enabled.CollectDrops
                                bh = 16
                            end
                        elseif bh < 3 then
                            bp_1 = b9:GetAttribute("Occupied") == true
                            bh = 6
                        elseif bh < 4 then
                            bp_1 = not ay()
                            bh = if bp_1 then 16 else 1
                        else
                            bp_1 = (b9:IsA("BasePart"))
                            bh = if bp_1 then 2 else 6
                        end
                    elseif bh < 8 then
                        if bh < 6 then
                            bh = 14
                        elseif bh < 7 then
                            bh = if bp_1 then 15 else 14
                        else
                            break
                        end
                    elseif bh < 9 then
                        bh = 22
                    elseif bh < 10 then
                        as = (ay())
                        bh = if as then 20 else 12
                    else
                        task.wait(0.1)
                        bh = 5
                    end
                elseif bh < 17 then
                    if bh < 14 then
                        if bh < 12 then
                            bh = 10
                        elseif bh < 13 then
                            bh = if as then 13 else 11
                        else
                            bh = if b9:GetAttribute("Occupied") ~= true then 0 else 21
                        end
                    elseif bh < 15 then
                        bh = 7
                    elseif bh < 16 then
                        bp_1 = M(CFrame.new(b9.Position + Vector3.new(0, 3, 0)), function()
                            return ao(t, b9)
                        end)
                        bh = if bp_1 then 17 else 5
                    else
                        bh = if bp_1 then 8 else 4
                    end
                elseif bh < 20 then
                    if bh < 18 then
                        X_4 = true
                        bp_1 = os.clock() + 2
                        bh = 19
                    elseif bh < 19 then
                        bh = 19
                    else
                        bh = 9
                    end
                elseif bh < 21 then
                    as = os.clock() < bp_1
                    bh = 12
                elseif bh < 22 then
                    task.wait(0.1)
                    bh = 18
                else
                    bc = true
                    bh = 7
                end
            end
            if bc then
                break
            end
        end
        return X_4
    end
end
cj_31 = fn1339
cj_19 = fns.fn142
ae = fn1395
aa = fns.fn1028
cj_40 = fn1388
bk = function()
    local J = LocalPlayer.Character
    if J then
        local Character = LocalPlayer.Character
        J = Character:FindFirstChildOfClass("Humanoid")
    end
    local cd = J
    if not cd then
        return false
    else
        local J_1 = false
        local ny = cj_40
        for i, v in ipairs(ny()) do
            local K = v
            local ah_2 = not ay() or not State.Enabled.Sell
            if ah_2 then
                break
            elseif K.Parent then
                pcall(function()
                    cd.EquipTool(cd, K)
                end)
                local ah_3 = os.clock() + 1
                while true do
                    local bo_3 = ay() and os.clock() < ah_3 and K.Parent ~= LocalPlayer.Character
                    if bo_3 then
                        task.wait(0.05)
                        continue
                    end
                    break
                end
                local ah_4 = K.Parent == LocalPlayer.Character and ao("MerchantSell", "HeldItem")
                if ah_4 then
                    J_1 = true
                    local ah_5 = os.clock() + 1.5
                    while true do
                        local bo_4 = ay() and os.clock() < ah_5 and K.Parent == LocalPlayer.Character
                        if bo_4 then
                            task.wait(0.05)
                            continue
                        end
                        break
                    end
                end
                task.wait(0.2)
            end
        end
        if J_1 then
            pcall(function()
                cd.UnequipTools(cd)
            end)
        end
        return J_1
    end
end
bg = aN(request) and request
bf = bg
if not bf then
    bg = aN(http_request) and http_request
    bf = bg
end
if not bf then
    bg = (function(w, o, F, k)
        if type(w) ~= "string" then
            return false
        end
        if #w ~= o then
            return false
        end
        local j = 5381
        local E = buffer.fromstring(w)
        local x = 0
        while x <= o - 4 do
            local p = buffer.readu32(E, x)
            local j_173 = bit32.bxor(j, p)
            j = bit32.band(j_173 * 33, 4294967295)
            x = x + 4
        end
        while x < o do
            local D = buffer.readu8(E, x)
            local j_174 = bit32.bxor(j, D)
            j = bit32.band(j_174 * 33, 4294967295)
            x = x + 1
        end
        if j ~= F then
            return false
        end
        return w == k
    end)(type(http), 5, 248602996, "table") and aN(http.request)
    local br = if bg then 1 else 0
    local r_ = 1 - br
    local bp = 355 * br + 1231 * r_
    r_ = 1 - br
    local bq = 1427 * br + 2328 * r_
    r_ = 16777213
    if (bp * 1066 + bq * 838 + bp * bq) % r_ == 2080841 then
        bg = http.request
    end
    bf = bg
end
bg = bf or nil
af = nil
U = nil
aX = nil
cj_61 = nil
ak = nil
aK = nil
aE = nil
cj_66 = nil
af = bg
U = fns.fn361
aX = fns.fn1000
cj_61 = fns.fn1
ak = fns.fn506
aK = fns.fn119
aE = fns.fn861
cj_66 = fns.fn303
cj_58 = nil
cj_58 = task.spawn(worker)
a5.Track(fns.fn352)
cj_14 = nil
cj_15 = nil
az = nil
aD = nil
aj = nil
cj_38 = nil
cj_33 = nil
cj_43 = nil
a8 = nil
cj_38 = fns.fn30
cj_33 = function(l, z, o)
    local t = cj_38(l)
    task.spawn(function()
        local aF_2
        while true do
            local bu = ay() and State.Gens[l] == t and State.Enabled[l]
            local bu_1
            if bu then
                bu_1, aF_2 = pcall(o)
                if not bu_1 then
                    local lI = tostring(aF_2)
                    local lH = l .. " error: " .. lI
                    warn("[Ouroboros][BlueLock] " .. lH)
                end
                task.wait(z)
                continue
            end
            break
        end
    end)
end
cj_14 = {
    Roll = 0.2,
    BuyRoll = 0.25,
    PlaceLockers = 1,
    OpenLockers = 1,
    EquipBest = 10,
    CarryBoxes = 2,
    SellBoxes = 2,
    UpgradeConveyor = 2,
    BuyUpgrades = 2,
    BuyMarket = 3,
    RankUnits = 0.2,
    TraitUnits = 0.2,
    Tower = 2,
    CollectDrops = 1.5,
    Obby = 5,
    ClaimRewards = 10,
    Sell = 2
}
cj_15 = {
    Roll = bh,
    BuyRoll = fns.fn611,
    PlaceLockers = cj_57,
    OpenLockers = cj_37,
    EquipBest = aV,
    CarryBoxes = bm,
    SellBoxes = cj_67,
    UpgradeConveyor = fns.fn210,
    BuyUpgrades = bl,
    BuyMarket = fns.fn810,
    RankUnits = bi,
    TraitUnits = bj,
    Tower = fns.fn259,
    CollectDrops = cj_31,
    Obby = fns.fn943,
    ClaimRewards = cj_19,
    Sell = bk
}
a5.SetFeature = fn1243
a5.SetBuyBoxes = fn1470
a5.SetBuyVariants = fn1294
a5.SetBoxVariants = fns.fn1045
a5.SetPlaceBoxes = fns.fn195
a5.SetLockerLimit = fns.fn1079
a5.SetSellViaPolisher = fns.fn476
a5.SetUpgrades = fns.fn695
a5.SetMarketBoxes = fn1575
a5.SetRankUnits = fns.fn1116
a5.SetRankTargets = fns.fn1066
a5.SetRankUseTokens = fn1471
a5.SetRankUseMoney = fns.fn546
a5.SetTraitUnits = fns.fn922
a5.SetTraitTargets = fns.fn863
a5.SetTowerFloor = fn1577
a5.SetTowerBestTeam = fn1199
a5.SetSellUnitBoxes = fns.fn548
a5.SetSellUnitVariants = fns.fn833
a5.SetSellKeepRank = fns.fn1094
a5.SetSellLockerBoxes = fn1233
a5.SetSellLockerVariants = fn1411
a5.SetWebhookUrl = fns.fn538
a5.SetWebhookDrops = fns.fn483
a5.SetWebhookDropBoxes = fns.fn1013
a5.SetWebhookDropVariants = fns.fn164
a5.SetWebhookStats = fns.fn1015
a5.SetWebhookStatsMinutes = fns.fn499
a5.SendWebhookTest = fn1230
a5.Track(fn1322)
cj_43 = fn1364
a8 = fns.fn284
az = {
    WalkSpeedEnabled = false,
    WalkSpeedValue = 32,
    WalkSpeedSnapshots = {},
    InfJump = false,
    InfJumpConn = nil,
    NoClip = false,
    NoClipSnapshots = {},
    NoClipConn = nil,
    Fly = false,
    FlySpeed = 60,
    FlyConn = nil,
    FlyPlatformStand = nil,
    InstantPP = false,
    InstantSnapshots = {},
    InstantConn = nil
}
local function cj_12()
    local connection
    connection = nil
    local bc
    bc = function(k)
        local ag = if not k then 1 else 0
        local bZ = 125 * ag + 3704 * (1 - ag)
        local bC = 2042 * ag + 2929 * (1 - ag)
        if (bZ * 550 + bC * 886 + bZ * bC) % 16777213 == 2133212 then
            return
        end
        if az.WalkSpeedSnapshots[k] == nil then
            az.WalkSpeedSnapshots[k] = k.WalkSpeed
        end
        k.WalkSpeed = az.WalkSpeedValue
    end
    a5.SetWalkSpeedEnabled = function(m)
        local aE = m and true or false
        az.WalkSpeedEnabled = aE
        local bS_4 = a8()
        if az.WalkSpeedEnabled then
            bc(bS_4)
        else
            if bS_4 and az.WalkSpeedSnapshots[bS_4] ~= nil then
                bS_4.WalkSpeed = az.WalkSpeedSnapshots[bS_4]
            end
        end
    end
    a5.SetWalkSpeedValue = function(D)
        local bW = 2
        while true do
            bW += 15422
            if bW < 8359 then
                break
            elseif bW < 15422 then
                break
            elseif bW < 15424 then
                if bW < 15423 then
                    break
                elseif bW == 15423 then
                    bW = 0
                else
                    bW = 9929
                    continue
                end
            elseif bW < 15425 then
                az.WalkSpeedValue = D
                bW = if az.WalkSpeedEnabled then 3 else 1
            else
                bc(a8())
                bW = 1
            end
        end
    end
    a5.SetInfJump = function(l)
        local cf = l and true or false
        az.InfJump = cf
        if az.InfJumpConn then
            local InfJumpConn = az.InfJumpConn
            InfJumpConn.Disconnect(InfJumpConn)
            az.InfJumpConn = nil
        end
        local aH = if not az.InfJump then 1 else 0
        local al = 1137 * aH + 1690 * (1 - aH)
        local b0 = 237 * aH + 1602 * (1 - aH)
        if (al * 979 + b0 * 411 + al * b0) % 16777213 == 1479999 then
            return
        end
        az.InfJumpConn = I.UserInputService.JumpRequest:Connect(function()
            local bT = not ay() or not az.InfJump
            local W = if bT then 1 else 0
            local as = 45 * W + 1486 * (1 - W)
            local aX = 3093 * W + 1295 * (1 - W)
            if (as * 3095 + aX * 574 + as * aX) % 16777213 == 2053842 then
                return
            end
            local bT_4 = a8()
            local W_1 = if bT_4 then 1 else 0
            local as_1 = 2318 * W_1 + 2319 * (1 - W_1)
            local aX_1 = 1657 * W_1 + 2270 * (1 - W_1)
            if (as_1 * 2742 + aX_1 * 158 + as_1 * aX_1) % 16777213 == 10458688 then
                bT_4:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
    a5.SetNoClip = function(C)
        local aN
        local U = C and true
        local aD = if U then 1 else 0
        local bO = 377 * aD + 969 * (1 - aD)
        local bu = 3905 * aD + 1393 * (1 - aD)
        if not ((bO * 4080 + bu * 1428 + bO * bu) % 16777213 == 8586685) then
            U = false
        end
        az.NoClip = U
        if az.NoClipConn then
            local NoClipConn = az.NoClipConn
            NoClipConn.Disconnect(NoClipConn)
            az.NoClipConn = nil
        end
        if not az.NoClip then
            local NoClipSnapshots = az.NoClipSnapshots
            for k, v in pairs(NoClipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(az.NoClipSnapshots)
            return
        end
        aN = function(g)
            if not g then
                return
            end
            local GetDescendants = g.GetDescendants
            for i, v in ipairs(GetDescendants(g)) do
                if v:IsA("BasePart") then
                    if az.NoClipSnapshots[v] == nil then
                        az.NoClipSnapshots[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end
        aN(LocalPlayer.Character)
        az.NoClipConn = I.RunService.Stepped:Connect(function()
            local P = ay() and az.NoClip
            local cc = if P then 1 else 0
            local aQ = 3049 * cc + 3012 * (1 - cc)
            local aI = 2839 * cc + 796 * (1 - cc)
            if (aQ * 3129 + aI * 3769 + aQ * aI) % 16777213 == 12119410 then
                aN(LocalPlayer.Character)
            end
        end)
    end
    a5.SetFly = function(g)
        local b8 = g and true or false
        az.Fly = b8
        if az.FlyConn then
            local FlyConn = az.FlyConn
            FlyConn.Disconnect(FlyConn)
            az.FlyConn = nil
        end
        local bV_5 = a8()
        if not az.Fly then
            if bV_5 and az.FlyPlatformStand ~= nil then
                bV_5.PlatformStand = az.FlyPlatformStand
            end
            az.FlyPlatformStand = nil
            return
        end
        if bV_5 then
            az.FlyPlatformStand = bV_5.PlatformStand
            bV_5.PlatformStand = true
        end
        az.FlyConn = I.RunService.RenderStepped:Connect(function()
            local aM = not ay() or not az.Fly
            if aM then
                return
            end
            local UserInputService = I.UserInputService
            if UserInputService:GetFocusedTextBox() then
                return
            end
            local aM_6 = cj_43()
            local CurrentCamera = Workspace.CurrentCamera
            local a0 = aM_6
            local ae = if a0 then 1 else 0
            local bw = 88 * ae + 720 * (1 - ae)
            local Z = 3049 * ae + 2389 * (1 - ae)
            if (bw * 1536 + Z * 2855 + bw * Z) % 16777213 == 9108375 then
                a0 = CurrentCamera
            end
            if not a0 then
                return
            end
            local a0_1 = Vector3.zero
            if I.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                a0_1 += CurrentCamera.CFrame.LookVector
            end
            if I.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                a0_1 -= CurrentCamera.CFrame.LookVector
            end
            if I.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                a0_1 -= CurrentCamera.CFrame.RightVector
            end
            if I.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                a0_1 += CurrentCamera.CFrame.RightVector
            end
            local ae_4 = if I.UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            local bw_2 = 3045 * ae_4 + 1377 * (1 - ae_4)
            local Z_3 = 3680 * ae_4 + 676 * (1 - ae_4)
            if (bw_2 * 2948 + Z_3 * 693 + bw_2 * Z_3) % 16777213 == 5955287 then
                a0_1 += Vector3.yAxis
            end
            if I.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                a0_1 -= Vector3.yAxis
            end
            if a0_1.Magnitude > 0 then
                aM_6.AssemblyLinearVelocity = a0_1.Unit * az.FlySpeed
            else
                aM_6.AssemblyLinearVelocity = Vector3.zero
            end
        end)
    end
    a5.SetFlySpeed = function(x)
        az.FlySpeed = x
    end
    a5.SetInstantProximityPrompt = function(o)
        local ah, aT, K
        local bH = 1
        while true do
            bH += 7383
            if bH < 7392 then
                if bH < 7389 then
                    if bH < 7384 then
                        if bH < 5558 then
                            break
                        elseif bH < 7383 then
                            break
                        else
                            ah = function(u)
                                if not u:IsA("ProximityPrompt") then
                                    return
                                end
                                if az.InstantSnapshots[u] == nil then
                                    az.InstantSnapshots[u] = {
                                        HoldDuration = u.HoldDuration,
                                        MaxActivationDistance = u.MaxActivationDistance,
                                        RequiresLineOfSight = u.RequiresLineOfSight
                                    }
                                end
                                u.HoldDuration = 0
                                u.MaxActivationDistance = 50
                                u.RequiresLineOfSight = false
                            end
                            local m3 = Workspace
                            local GetDescendants = m3.GetDescendants
                            for i, v in ipairs(GetDescendants(m3)) do
                                ah(v)
                            end
                            az.InstantConn = Workspace.DescendantAdded:Connect(function(m)
                                local O = 1
                                while true do
                                    O += 6810
                                    if O < 6811 then
                                        if O < 5059 then
                                            break
                                        elseif O < 5744 then
                                            break
                                        elseif O < 6810 then
                                            break
                                        else
                                            O = 3
                                        end
                                    elseif O < 7239 then
                                        if O < 6812 then
                                            O = if az.InstantPP then 2 else 0
                                        elseif O < 6813 then
                                            ah(m)
                                            O = 0
                                        else
                                            break
                                        end
                                    else
                                        break
                                    end
                                end
                            end)
                            bH = 8
                        end
                    elseif bH < 7386 then
                        if bH < 7385 then
                            aT = o
                            bH = if aT then 3 else 6
                        elseif bH == 7385 then
                            K = false
                            bH = 4
                        else
                            bH = 7391
                            continue
                        end
                    elseif bH < 7387 then
                        if bH == 7386 then
                            aT = true
                            bH = 6
                        else
                            bH = 15877
                            continue
                        end
                    elseif bH < 7388 then
                        az.InstantPP = K
                        bH = if az.InstantConn then 7 else 9
                    else
                        local InstantSnapshots = az.InstantSnapshots
                        for k, v in pairs(InstantSnapshots) do
                            if k and k.Parent then
                                k.HoldDuration = v.HoldDuration
                                k.MaxActivationDistance = v.MaxActivationDistance
                                k.RequiresLineOfSight = v.RequiresLineOfSight
                            end
                        end
                        table.clear(az.InstantSnapshots)
                        return
                    end
                elseif bH < 7390 then
                    K = aT
                    bH = if K then 4 else 2
                elseif bH < 7391 then
                    if bH == 7390 then
                        aT = az.InstantConn
                        aT.Disconnect(aT)
                        az.InstantConn = nil
                        bH = 9
                    else
                        bH = 7389
                        continue
                    end
                else
                    break
                end
            elseif bH < 8120 then
                if bH == 7392 then
                    bH = if not az.InstantPP then 5 else 0
                else
                    break
                end
            else
                break
            end
        end
    end
    local function bg(q)
        task.defer(function()
            local Humanoid
            local at = 1
            while true do
                at += 3236
                if at < 3242 then
                    if at < 3236 then
                        break
                    elseif at < 3239 then
                        if at < 3237 then
                            at = if az.WalkSpeedEnabled then 6 else 8
                        elseif at < 3238 then
                            if at == 3237 then
                                at = if not ay() then 11 else 10
                            else
                                at = 3244
                                continue
                            end
                        else
                            break
                        end
                    elseif at < 3240 then
                        if at == 3239 then
                            return
                        end
                        at = 15981
                        continue
                    elseif at < 3241 then
                        if at == 3240 then
                            a5.SetFly(true)
                            at = 5
                        else
                            at = 3237
                            continue
                        end
                    else
                        at = 2
                    end
                elseif at < 6278 then
                    if at < 3245 then
                        if at < 3243 then
                            if at == 3242 then
                                bc(Humanoid)
                                at = 8
                            else
                                at = 6278
                                continue
                            end
                        elseif at < 3244 then
                            a5.SetNoClip(true)
                            at = 9
                        elseif at == 3244 then
                            at = if az.NoClip then 7 else 9
                        else
                            at = 15981
                            continue
                        end
                    elseif at < 3246 then
                        if at == 3245 then
                            at = if az.Fly then 4 else 5
                        else
                            at = 976
                            continue
                        end
                    elseif at < 3247 then
                        Humanoid = q:WaitForChild("Humanoid", 10)
                        at = if not Humanoid then 3 else 0
                    elseif at == 3247 then
                        return
                    else
                        at = 3237
                        continue
                    end
                else
                    break
                end
            end
        end)
    end
    if LocalPlayer.Character then
        bg(LocalPlayer.Character)
    end
    local CharacterAdded = LocalPlayer.CharacterAdded
    connection = CharacterAdded:Connect(bg)
    a5.Track(function()
        connection.Disconnect(connection)
    end)
    a5.Track(function()
        a5.SetWalkSpeedEnabled(false)
        a5.SetInfJump(false)
        a5.SetNoClip(false)
        a5.SetFly(false)
        a5.SetInstantProximityPrompt(false)
    end)
end
aD = {
    AntiAfk = true,
    NoGameplayPaused = true,
    AutoReconnect = false,
    Disable3D = false,
    FpsBoost = false,
    AfkConn = nil,
    AfkTask = nil,
    ReconnectConns = {},
    FpsSnapshots = {},
    FpsConn = nil,
    PausedSnapshots = {},
    RejoinHook = nil
}
local function cj_6()
    local C = aC("RejoinRemote")
    local function k()
        return pcall(function()
            local VirtualUser = I.VirtualUser
            VirtualUser.CaptureController(VirtualUser)
            I.VirtualUser:ClickButton2(Vector2.new())
        end)
    end
    local function w()
        local I
        local RejoinHook = aD.RejoinHook
        local bE = not C
        local aK = RejoinHook
        local cd = if aK then 1 else 0
        local bA = 794 * cd + 1840 * (1 - cd)
        local ak = 3261 * cd + 3321 * (1 - cd)
        if not ((bA * 2064 + ak * 1089 + bA * ak) % 16777213 == 7779279) then
            aK = bE
        end
        local cd_16 = if aK then 1 else 0
        local bA_3 = 3452 * cd_16 + 1816 * (1 - cd_16)
        local ak_2 = 2895 * cd_16 + 1557 * (1 - cd_16)
        if (bA_3 * 2353 + ak_2 * 699 + bA_3 * ak_2) % 16777213 == 3362488 then
            return
        end
        local bE_7 = aN(hookfunction) and aN(newcclosure)
        if not bE_7 then
            return
        end
        I = nil
        local bE_8 = pcall(function()
            I = hookfunction(C.FireServer, newcclosure(function(H, ...)
                local AntiAfk = aD.AntiAfk
                local bp = H == C
                local bU = AntiAfk
                local a8 = if bU then 1 else 0
                local ay = 85 * a8 + 2777 * (1 - a8)
                local ad = 2986 * a8 + 2138 * (1 - a8)
                if (ay * 32 + ad * 1266 + ay * ad) % 16777213 == 4036806 then
                    bU = bp
                end
                if bU then
                    return
                end
                return I(H, ...)
            end))
        end)
        if bE_8 and I ~= nil then
            aD.RejoinHook = I
            a5.Track(function()
                if aD.RejoinHook and C then
                    pcall(hookfunction, C.FireServer, aD.RejoinHook)
                    aD.RejoinHook = nil
                end
            end)
        end
    end
    a5.SetAntiAfk = function(B)
        local ap = B and true or false
        aD.AntiAfk = ap
        if aD.AfkConn then
            local AfkConn = aD.AfkConn
            AfkConn.Disconnect(AfkConn)
            aD.AfkConn = nil
        end
        local b_ = if aD.AfkTask then 1 else 0
        local bK = 279 * b_ + 2378 * (1 - b_)
        local a6 = 2260 * b_ + 939 * (1 - b_)
        if (bK * 3092 + a6 * 781 + bK * a6) % 16777213 == 3258268 then
            local AfkTask = aD.AfkTask
            pcall(task.cancel, AfkTask)
            aD.AfkTask = nil
        end
        if not aD.AntiAfk then
            return
        end
        w()
        aD.AfkConn = LocalPlayer.Idled:Connect(function()
            local aB
            local aO = 4
            while true do
                aO += 8694
                if aO < 8696 then
                    if aO < 6532 then
                        break
                    elseif aO < 8694 then
                        break
                    elseif aO < 8695 then
                        if aO == 8694 then
                            aB = aD.AntiAfk
                            aO = 1
                        else
                            aO = 1385
                            continue
                        end
                    else
                        aO = if aB then 5 else 3
                    end
                elseif aO < 8699 then
                    if aO < 8697 then
                        break
                    elseif aO < 8698 then
                        aO = 2
                    else
                        aB = (ay())
                        aO = if aB then 0 else 1
                    end
                elseif aO < 10398 then
                    if aO == 8699 then
                        k()
                        aO = 3
                    else
                        aO = 6532
                        continue
                    end
                else
                    break
                end
            end
        end)
        aD.AfkTask = task.spawn(function()
            local cc = os.clock()
            while true do
                local aP = ay() and aD.AntiAfk
                if aP then
                    task.wait(1)
                    local aP_4 = not ay() or not aD.AntiAfk
                    if aP_4 then
                        break
                    end
                    if os.clock() - cc >= 60 then
                        cc = os.clock()
                        k()
                    end
                    continue
                end
                break
            end
        end)
    end
    a5.SetNoGameplayPaused = function(o)
        local ar = o and true or false
        aD.NoGameplayPaused = ar
        pcall(function()
            local CoreGui = I.CoreGui
            local a8 = (CoreGui:FindFirstChild("GameplayPausedNotification", true))
            local N = if a8 then 1 else 0
            local Y = 3404 * N + 3575 * (1 - N)
            local aa = 3650 * N + 370 * (1 - N)
            if not ((Y * 2423 + aa * 1763 + Y * aa) % 16777213 == 10330229) then
                a8 = CoreGui:FindFirstChild("GameplayPaused", true)
            end
            local bP_1 = a8
            if a8 then
                a8 = bP_1:IsA("GuiObject")
            end
            if a8 then
                if aD.PausedSnapshots[bP_1] == nil then
                    aD.PausedSnapshots[bP_1] = bP_1.Visible
                end
                if aD.NoGameplayPaused then
                    bP_1.Visible = false
                elseif aD.PausedSnapshots[bP_1] ~= nil then
                    bP_1.Visible = aD.PausedSnapshots[bP_1]
                end
            end
        end)
    end
    a5.SetAutoReconnect = function(g)
        local aK
        local bJ, bz
        local bf = 2
        while true do
            bf += 10963
            if bf < 10967 then
                if bf < 10965 then
                    if bf < 7453 then
                        break
                    elseif bf < 9672 then
                        break
                    elseif bf < 10963 then
                        break
                    elseif bf < 10964 then
                        aK = function(m)
                            local at = not ay() or not aD.AutoReconnect
                            if at then
                                return
                            end
                            task.wait(m)
                            local at_3 = ay() and aD.AutoReconnect
                            local bF = if at_3 then 1 else 0
                            local bN = 1334 * bF + 1490 * (1 - bF)
                            local bB = 3027 * bF + 2839 * (1 - bF)
                            if (bN * 17 + bB * 2878 + bN * bB) % 16777213 == 12772402 then
                                pcall(function()
                                    I.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                                end)
                            end
                        end
                        table.insert(aD.ReconnectConns, I.GuiService.ErrorMessageChanged:Connect(function()
                            aK(1.5)
                        end))
                        table.insert(aD.ReconnectConns, I.TeleportService.TeleportInitFailed:Connect(function()
                            aK(1)
                        end))
                        bf = 3
                    elseif bf == 10964 then
                        bz = bJ
                        bf = if bz then 6 else 5
                    else
                        bf = 9672
                        continue
                    end
                elseif bf < 10966 then
                    if bf == 10965 then
                        bJ = g
                        bf = if bJ then 7 else 1
                    else
                        bf = 623
                        continue
                    end
                else
                    break
                end
            elseif bf < 13074 then
                if bf < 10969 then
                    if bf < 10968 then
                        return
                    end
                    bz = false
                    bf = 6
                elseif bf < 10970 then
                    if bf == 10969 then
                        aD.AutoReconnect = bz
                        local ReconnectConns = aD.ReconnectConns
                        for i, v in ipairs(ReconnectConns) do
                            v.Disconnect(v)
                        end
                        table.clear(aD.ReconnectConns)
                        bf = if not aD.AutoReconnect then 4 else 0
                    else
                        bf = 10965
                        continue
                    end
                elseif bf == 10970 then
                    bJ = true
                    bf = 1
                else
                    bf = 16054
                    continue
                end
            else
                break
            end
        end
    end
    a5.SetDisable3D = function(s)
        local aG, bm, K, aw, V
        local Q = 2
        while true do
            Q += 10763
            if Q < 10764 then
                if Q < 3750 then
                    break
                elseif Q < 5061 then
                    break
                elseif Q < 5488 then
                    break
                elseif Q < 10763 then
                    break
                elseif Q == 10763 then
                    bm = aG
                    local bb = if bm then 1 else 0
                    local bM = 2116 * bb + 3890 * (1 - bb)
                    local bg = 1913 * bb + 3691 * (1 - bb)
                    Q = if (bM * 2016 + bg * 1718 + bM * bg) % 16777213 == 11600298 then 6 else 4
                else
                    Q = 1311
                    continue
                end
            elseif Q < 10769 then
                if Q < 10766 then
                    if Q < 10765 then
                        if Q == 10764 then
                            Q = if (K * 633 + aw * 2804 + K * aw) % 16777213 == 8642815 then 5 else 0
                        else
                            Q = 10765
                            continue
                        end
                    else
                        aG = s
                        V = if aG then 1 else 0
                        K = 3816 * V + 3677 * (1 - V)
                        Q = 3
                    end
                elseif Q < 10767 then
                    aw = 3475 * V + 2446 * (1 - V)
                    Q = 1
                elseif Q < 10768 then
                    bm = false
                    Q = 6
                elseif Q == 10768 then
                    aG = true
                    Q = 0
                else
                    Q = 10770
                    continue
                end
            elseif Q < 13526 then
                if Q < 10770 then
                    aD.Disable3D = bm
                    pcall(function()
                        I.RunService:Set3dRenderingEnabled(not aD.Disable3D)
                    end)
                    Q = 7
                else
                    break
                end
            else
                break
            end
        end
    end
    a5.SetFpsBoost = function(y)
        local ae
        local bU = y and true or false
        aD.FpsBoost = bU
        if aD.FpsConn then
            local FpsConn = aD.FpsConn
            FpsConn.Disconnect(FpsConn)
            aD.FpsConn = nil
        end
        if not aD.FpsBoost then
            local FpsSnapshots = aD.FpsSnapshots
            for k2, v in pairs(FpsSnapshots) do
                local b8 = k2
                if b8 and b8.Parent then
                    for k2, v in pairs(v) do
                        local ai = k2
                        local bW = v
                        pcall(function()
                            b8[ai] = bW
                        end)
                    end
                end
            end
            table.clear(aD.FpsSnapshots)
            return
        end
        ae = function(H)
            local bQ
            local ad = 8
            while true do
                ad += 7247
                if ad < 7255 then
                    if ad < 7250 then
                        if ad < 7247 then
                            break
                        elseif ad < 7248 then
                            if ad == 7247 then
                                bQ = H:IsA("Beam")
                                ad = 14
                            else
                                ad = 9337
                                continue
                            end
                        elseif ad < 7249 then
                            bQ = H:IsA("Fire")
                            ad = 2
                        elseif ad == 7249 then
                            ad = if bQ then 3 else 7
                        else
                            ad = 7254
                            continue
                        end
                    elseif ad < 7252 then
                        if ad < 7251 then
                            if ad == 7250 then
                                ad = if bQ then 5 else 9
                            else
                                ad = 7248
                                continue
                            end
                        else
                            ad = 13
                        end
                    elseif ad < 7253 then
                        if ad == 7252 then
                            ad = if bQ then 12 else 4
                        else
                            ad = 14472
                            continue
                        end
                    elseif ad < 7254 then
                        bQ = H:IsA("Trail")
                        ad = 10
                    elseif ad == 7254 then
                        bQ = H:IsA("Smoke")
                        ad = 3
                    else
                        ad = 14472
                        continue
                    end
                elseif ad < 7260 then
                    if ad < 7257 then
                        if ad < 7256 then
                            ad = if aD.FpsSnapshots[H] then 11 else 15
                        else
                            bQ = H:IsA("Sparkles")
                            ad = 5
                        end
                    elseif ad < 7258 then
                        if ad == 7257 then
                            ad = if bQ then 14 else 0
                        else
                            ad = 7255
                            continue
                        end
                    elseif ad < 7259 then
                        return
                    else
                        aD.FpsSnapshots[H] = { Enabled = H.Enabled }
                        H.Enabled = false
                        ad = 4
                    end
                elseif ad < 8480 then
                    if ad < 7261 then
                        break
                    elseif ad < 7262 then
                        ad = if bQ then 2 else 1
                    elseif ad == 7262 then
                        bQ = (H:IsA("ParticleEmitter"))
                        ad = if bQ then 10 else 6
                    else
                        ad = 7257
                        continue
                    end
                else
                    break
                end
            end
        end
        local q5 = Workspace
        local GetDescendants = q5.GetDescendants
        for i, v in ipairs(GetDescendants(q5)) do
            ae(v)
        end
        if aD.FpsSnapshots[I.Lighting] == nil then
            aD.FpsSnapshots[I.Lighting] = { GlobalShadows = I.Lighting.GlobalShadows }
            I.Lighting.GlobalShadows = false
        end
        aD.FpsConn = Workspace.DescendantAdded:Connect(function(u)
            if aD.FpsBoost then
                ae(u)
            end
        end)
    end
    a5.Track(function()
        a5.SetAntiAfk(false)
        a5.SetAutoReconnect(false)
        a5.SetDisable3D(false)
        a5.SetFpsBoost(false)
    end)
end
bf, aj = pcall(fns.fn1163)
bg = not bf or not (function(w, o, F, k)
    if type(w) ~= "string" then
        return false
    end
    if #w ~= o then
        return false
    end
    local j = 5381
    local E = buffer.fromstring(w)
    local x = 0
    while x <= o - 4 do
        local p = buffer.readu32(E, x)
        local j_175 = bit32.bxor(j, p)
        j = bit32.band(j_175 * 33, 4294967295)
        x = x + 4
    end
    while x < o do
        local D = buffer.readu8(E, x)
        local j_176 = bit32.bxor(j, D)
        j = bit32.band(j_176 * 33, 4294967295)
        x = x + 1
    end
    if j ~= F then
        return false
    end
    return w == k
end)(type(aj), 5, 248602996, "table")
if bg then
    local lL = tostring(aj)
    error("failed to load UI library: " .. lL, 0)
end
Window = nil
O = nil
bd = nil
a6 = nil
aY = nil
cj_54 = nil
cj_46 = nil
cj_16 = nil
as = nil
S = nil
a9 = nil
cj_60 = nil
aj:LoadFont({ Name = "ValleySans" })
aj.SetDefaultTheme(aj, "Sakura")
Window = aj:CreateWindow({
    Name = aG,
    LoadingSubtitle = cj_39,
    ToggleUIKeybind = "RightControl",
    ConfigurationSaving = { Enabled = true, FolderName = "Ouroboros/BlueLockFarm", FileName = "default" },
    ToggleButton = { Platform = "Mobile" },
    Home = {
        Title = "Welcome to Blue Lock Farm!",
        Tier = cj_39,
        Discord = cj_34,
        Website = cj_45,
        Stats = { "Players", "Session", "FPS", "Ping" }
    }
})
cj_10(a5, Window)
O = Window:CreateTab({ Name = "Farm", Icon = "gamepad-2" })
bd = Window:CreateTab({ Name = "Economy", Icon = "badge-dollar-sign" })
a6 = Window:CreateTab({ Name = "Units", Icon = "award" })
aY = Window:CreateTab({ Name = "Adventure", Icon = "swords" })
cj_54 = Window:CreateTab({ Name = "Webhook", Icon = "webhook" })
cj_46 = Window:CreateTab({ Name = "Player", Icon = "user" })
cj_16 = Window:CreateTab({ Name = "Settings", Icon = "settings" })
as = fns.fn66
S = fns.fn469
a9 = fns.fn1170
cj_60 = fns.fn519
bf = function()
    local Group10 = O:AddLeftGroupbox({ Name = "Conveyor", Icon = "refresh-cw" })
    Group10:CreateToggle({
        Name = "Auto Roll",
        CurrentValue = false,
        Flag = "AutoRoll",
        Callback = function(k)
            a5.SetFeature("Roll", k)
        end
    })
    Group10:CreateToggle({
        Name = "Auto Buy Roll",
        CurrentValue = false,
        Flag = "AutoBuyRoll",
        Callback = function(D)
            a5.SetFeature("BuyRoll", D)
        end
    })
    local pn = as(a0)
    local po = {}
    local function pp(g)
        a5.SetBuyBoxes(g)
    end
    Group10:CreateDropdown({
        Name = "Buy Lockers",
        Options = pn,
        CurrentOption = po,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "BuyRollBoxes",
        Callback = pp
    })
    local pp_1 = as(P)
    local po_1 = {}
    local function pn_1(n)
        a5.SetBuyVariants(n)
    end
    Group10:CreateDropdown({
        Name = "Buy Variants",
        Options = pp_1,
        CurrentOption = po_1,
        Multi = true,
        AllowNone = true,
        Flag = "BuyRollVariants",
        Callback = pn_1
    })
    Group10:CreateToggle({
        Name = "Auto Upgrade Conveyor",
        CurrentValue = false,
        Flag = "AutoUpgradeConveyor",
        Callback = function(t)
            a5.SetFeature("UpgradeConveyor", t)
        end
    })
    local Group9 = O:AddLeftGroupbox({ Name = "Boxes", Icon = "package" })
    Group9:CreateToggle({
        Name = "Auto Carry Boxes",
        CurrentValue = false,
        Flag = "AutoCarryBoxes",
        Callback = function(f)
            a5.SetFeature("CarryBoxes", f)
        end
    })
    Group9:CreateToggle({
        Name = "Auto Sell Boxes",
        CurrentValue = false,
        Flag = "AutoSellBoxes",
        Callback = function(G)
            a5.SetFeature("SellBoxes", G)
        end
    })
    Group9:CreateToggle({
        Name = "Sell Via Polisher",
        CurrentValue = true,
        Flag = "SellViaPolisher",
        Callback = function(l)
            a5.SetSellViaPolisher(l)
        end
    })
    local Group8 = aY:AddLeftGroupbox({ Name = "Tower", Icon = "swords" })
    Group8:CreateToggle({
        Name = "Auto Tower",
        CurrentValue = false,
        Flag = "AutoTower",
        Callback = function(u)
            a5.SetFeature("Tower", u)
        end
    })
    Group8:CreateToggle({
        Name = "Auto Best Team",
        CurrentValue = true,
        Flag = "TowerBestTeam",
        Callback = function(B)
            a5.SetTowerBestTeam(B)
        end
    })
    local pn_2 = as(aW)
    local po_2 = aW[1]
    local function pp_2(j)
        a5.SetTowerFloor(S(j))
    end
    Group8:CreateDropdown({
        Name = "Tower Floor",
        Options = pn_2,
        CurrentOption = po_2,
        AllowNone = false,
        Flag = "TowerFloor",
        Callback = pp_2
    })
    Group8:CreateToggle({
        Name = "Auto Collect Drops",
        CurrentValue = false,
        Flag = "AutoCollectDrops",
        Callback = function(z)
            a5.SetFeature("CollectDrops", z)
        end
    })
    local Group7 = aY:AddRightGroupbox({ Name = "Obby & Rewards", Icon = "gift" })
    Group7:CreateToggle({
        Name = "Auto Do Obby",
        CurrentValue = false,
        Flag = "AutoDoObby",
        Callback = function(m)
            a5.SetFeature("Obby", m)
        end
    })
    Group7:CreateToggle({
        Name = "Auto Claim Rewards",
        CurrentValue = false,
        Flag = "AutoClaimRewards",
        Callback = function(y)
            a5.SetFeature("ClaimRewards", y)
        end
    })
    local Group6 = bd:AddLeftGroupbox({ Name = "Merchant", Icon = "badge-dollar-sign" })
    Group6:CreateToggle({
        Name = "Auto Sell",
        CurrentValue = false,
        Flag = "AutoSell",
        Callback = function(A)
            a5.SetFeature("Sell", A)
        end
    })
    Group6.CreateDivider(Group6)
    local pp_3 = as(a0)
    local po_3 = {}
    local function pn_3(f)
        a5.SetSellUnitBoxes(f)
    end
    Group6:CreateDropdown({
        Name = "Sell Units From",
        Options = pp_3,
        CurrentOption = po_3,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "SellUnitBoxes",
        Callback = pn_3
    })
    local pn_4 = as(P)
    local po_4 = {}
    local function pp_4(E)
        a5.SetSellUnitVariants(E)
    end
    Group6:CreateDropdown({
        Name = "Unit Variants",
        Options = pn_4,
        CurrentOption = po_4,
        Multi = true,
        AllowNone = true,
        Flag = "SellUnitVariants",
        Callback = pp_4
    })
    local pp_5 = as(aJ)
    local function po_5(w)
        a5.SetSellKeepRank(S(w))
    end
    Group6:CreateDropdown({
        Name = "Keep Rank And Above",
        Options = pp_5,
        CurrentOption = "S",
        AllowNone = false,
        Flag = "SellKeepRank",
        Callback = po_5
    })
    Group6.CreateDivider(Group6)
    local po_6 = as(a0)
    local pp_6 = {}
    local function pq(v)
        a5.SetSellLockerBoxes(v)
    end
    Group6:CreateDropdown({
        Name = "Sell Lockers",
        Options = po_6,
        CurrentOption = pp_6,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "SellLockerBoxes",
        Callback = pq
    })
    local pq_1 = as(P)
    local pp_7 = {}
    local function po_7(t)
        a5.SetSellLockerVariants(t)
    end
    Group6:CreateDropdown({
        Name = "Locker Variants",
        Options = pq_1,
        CurrentOption = pp_7,
        Multi = true,
        AllowNone = true,
        Flag = "SellLockerVariants",
        Callback = po_7
    })
    local Group5 = O:AddLeftGroupbox({ Name = "Lockers", Icon = "archive" })
    Group5:CreateToggle({
        Name = "Auto Place Lockers",
        CurrentValue = false,
        Flag = "AutoPlaceLockers",
        Callback = function(o)
            a5.SetFeature("PlaceLockers", o)
        end
    })
    local po_8 = as(a0)
    local pp_8 = {}
    local function pq_2(k)
        a5.SetPlaceBoxes(k)
    end
    Group5:CreateDropdown({
        Name = "Place Lockers",
        Options = po_8,
        CurrentOption = pp_8,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "PlaceLockerBoxes",
        Callback = pq_2
    })
    Group5:CreateSlider({
        Name = "Max Placed Lockers",
        Range = { 1, 30 },
        Increment = 1,
        CurrentValue = 30,
        Flag = "LockerLimit",
        Callback = function(C)
            a5.SetLockerLimit(C)
        end
    })
    Group5:CreateToggle({
        Name = "Auto Open Lockers",
        CurrentValue = false,
        Flag = "AutoOpenLockers",
        Callback = function(q)
            a5.SetFeature("OpenLockers", q)
        end
    })
    Group5:CreateToggle({
        Name = "Auto Equip Best",
        CurrentValue = false,
        Flag = "AutoEquipBest",
        Callback = function(s)
            a5.SetFeature("EquipBest", s)
        end
    })
    local Group4 = O:AddRightGroupbox({ Name = "Per-Box Variants", Icon = "sliders-horizontal" })
    local pq_3 = bb
    local pp_9 = ipairs
    for k, v in pp_9(pq_3) do
        local bL = v
        Group4:CreateDropdown({
            Name = a0[k],
            Options = as(P),
            CurrentOption = {},
            Multi = true,
            AllowNone = true,
            Flag = "BoxVariants_" .. bL,
            Callback = function(p)
                a5.SetBoxVariants(bL, p)
            end
        })
    end
    local Group3 = bd:AddRightGroupbox({ Name = "Shop", Icon = "shopping-cart" })
    Group3:CreateToggle({
        Name = "Auto Buy Upgrades",
        CurrentValue = false,
        Flag = "AutoBuyUpgrades",
        Callback = function(n)
            a5.SetFeature("BuyUpgrades", n)
        end
    })
    local pq_4 = as(ac)
    local pp_10 = {}
    local function po_9(l)
        a5.SetUpgrades(l)
    end
    Group3:CreateDropdown({
        Name = "Upgrades",
        Options = pq_4,
        CurrentOption = pp_10,
        Multi = true,
        AllowNone = true,
        Flag = "BuyUpgradesList",
        Callback = po_9
    })
    Group3.CreateDivider(Group3)
    Group3:CreateToggle({
        Name = "Auto Buy Market",
        CurrentValue = false,
        Flag = "AutoBuyMarket",
        Callback = function(B)
            a5.SetFeature("BuyMarket", B)
        end
    })
    local po_10 = as(a0)
    local pp_11 = {}
    local function pq_5(y)
        a5.SetMarketBoxes(y)
    end
    Group3:CreateDropdown({
        Name = "Market Lockers",
        Options = po_10,
        CurrentOption = pp_11,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "BuyMarketBoxes",
        Callback = pq_5
    })
    local Group2 = a6:AddLeftGroupbox({ Name = "Rank", Icon = "award" })
    Group2:CreateToggle({
        Name = "Auto Rank Units",
        CurrentValue = false,
        Flag = "AutoRankUnits",
        Callback = function(g)
            a5.SetFeature("RankUnits", g)
        end
    })
    local pq_6 = as(ap)
    local pp_12 = { "S", "SS", "X", "EX", "UR" }
    local function po_11(E)
        local Z
        local aL = 1
        while true do
            aL += 4590
            if aL < 4595 then
                if aL < 4591 then
                    if aL < 4077 then
                        break
                    elseif aL < 4590 then
                        break
                    else
                        Z = next(E) == nil
                        aL = 5
                    end
                elseif aL < 4593 then
                    if aL < 4592 then
                        if aL == 4591 then
                            a5.SetRankTargets(E)
                            Z = not aF(State.RankTargets)
                            aL = if Z then 3 else 4
                        else
                            aL = 4596
                            continue
                        end
                    else
                        State.RankTargets = { S = true, SS = true, X = true, EX = true, UR = true }
                        aL = 7
                    end
                elseif aL < 4594 then
                    if aL == 4593 then
                        Z = (function(w, o, F, k)
                            if type(w) ~= "string" then
                                return false
                            end
                            if #w ~= o then
                                return false
                            end
                            local j = 5381
                            local E = buffer.fromstring(w)
                            local x = 0
                            while x <= o - 4 do
                                local p = buffer.readu32(E, x)
                                local j_177 = bit32.bxor(j, p)
                                j = bit32.band(j_177 * 33, 4294967295)
                                x = x + 4
                            end
                            while x < o do
                                local D = buffer.readu8(E, x)
                                local j_178 = bit32.bxor(j, D)
                                j = bit32.band(j_178 * 33, 4294967295)
                                x = x + 1
                            end
                            if j ~= F then
                                return false
                            end
                            return w == k
                        end)(type(E), 5, 248602996, "table")
                        aL = 4
                    else
                        aL = 4597
                        continue
                    end
                elseif aL == 4594 then
                    aL = if Z then 0 else 5
                else
                    aL = 4595
                    continue
                end
            elseif aL < 7765 then
                if aL < 4597 then
                    if aL < 4596 then
                        if aL == 4595 then
                            aL = if Z then 2 else 7
                        else
                            aL = 7903
                            continue
                        end
                    else
                        break
                    end
                elseif aL < 6354 then
                    if aL == 4597 then
                        aL = 6
                    else
                        aL = 3958
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
    Group2:CreateDropdown({
        Name = "Target Ranks",
        Options = pq_6,
        CurrentOption = pp_12,
        Multi = true,
        AllowNone = true,
        Flag = "RankTargets",
        Callback = po_11
    })
    local po_12 = as(a_)
    local pp_13 = {}
    local function pq_7(o)
        a5.SetRankUnits(o)
    end
    Group2:CreateDropdown({
        Name = "Units",
        Options = po_12,
        CurrentOption = pp_13,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "RankUnitsList",
        Callback = pq_7
    })
    Group2:CreateToggle({
        Name = "Use Money",
        CurrentValue = true,
        Flag = "RankUseMoney",
        Callback = function(j)
            a5.SetRankUseMoney(j)
        end
    })
    Group2:CreateToggle({
        Name = "Use Rank Tokens",
        CurrentValue = false,
        Flag = "RankUseTokens",
        Callback = function(q)
            a5.SetRankUseTokens(q)
        end
    })
    local Group = a6:AddRightGroupbox({ Name = "Trait", Icon = "sparkles" })
    Group:CreateToggle({
        Name = "Auto Trait Units",
        CurrentValue = false,
        Flag = "AutoTraitUnits",
        Callback = function(C)
            a5.SetFeature("TraitUnits", C)
        end
    })
    local pq_8 = as(aB)
    local pp_14 = {}
    local function po_13(p)
        a5.SetTraitTargets(p)
    end
    Group:CreateDropdown({
        Name = "Target Traits",
        Options = pq_8,
        CurrentOption = pp_14,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "TraitTargets",
        Callback = po_13
    })
    local po_14 = as(a_)
    local pp_15 = {}
    local function pq_9(A)
        a5.SetTraitUnits(A)
    end
    Group:CreateDropdown({
        Name = "Units",
        Options = po_14,
        CurrentOption = pp_15,
        Multi = true,
        AllowNone = true,
        Searchable = true,
        Flag = "TraitUnitsList",
        Callback = pq_9
    })
end
bj = fns.fn1134
bi = fn1440
bh = fns.fn1137
bg = fns.fn1003
cj_12()
cj_6()
bf()
bj()
bi()
bh()
a5.SetAntiAfk(true)
a5.SetNoGameplayPaused(true)
a5.SetRankTargets({ "S", "SS", "X", "EX", "UR" })
a5.SetRankUseMoney(true)
a5.SetTowerBestTeam(true)
a5.SetTowerFloor(aW[1])
Window.LoadAutoload(Window)
bg()
if a9("HideUIOnStart") == true then
    Window.Toggle(Window, false)
end
cj_60("v0.5 loaded", "Success")
