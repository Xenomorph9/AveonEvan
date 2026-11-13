local screenGui2
local iZ
local jG
local jn
local i4
local jM
local iM
local jt
local ja
local iS
local jz
local jg
local TowerConfig
local Workspace
local i9
local iR
local jf
local iX
local jE
local jl
local PickupCollect
local jK
local iK
local jr
local i8
local iQ
local jx
local je
local jD
local jk
local i1
local jJ
local uIStroke2
local i7
local iP
local jw
local jd
local iV
local jC
local jj
local i0
local jI
local iI
local jp
local i6
local iO
local jv
local iU
local jB
local ji
local i_
local jH
local MergeProgressionConfig
local jo
local i5
local iN
local iT
local jA
local fn282
local function fn55()
    local lu_1
    local lt_1
    if not getgc then
        return nil
    end
    for i, v in ipairs(getgc(true)) do
        if (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_5 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_5 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_6 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_6 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(v), 5, 248602996) then
            lt_1, lu_1 = next(v)
            local lv = (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_3 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_3 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_4 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_4 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(type(lt_1), 6, 2175009567) and #lt_1 >= 30 and (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_1 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_1 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_2 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_2 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(type(lu_1), 5, 248602996) and lu_1.TypeId ~= nil and lu_1.OwnerUserId ~= nil
            if lv then
                return v
            end
        end
    end
    return nil
end
local function fn130()
    local SaveId
    local ms_1
    local mr = not (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_15 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_15 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_16 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_16 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(type(iK), 5, 248602996) or not (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_13 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_13 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_14 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_14 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(type(iK.Towers), 5, 248602996)
    local mr_1
    if mr then
        return nil
    end
    SaveId, mr_1, ms_1 = nil, nil, nil
    for k, v in pairs(iK.Towers) do
        local mu = (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_11 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_11 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_12 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_12 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(v), 5, 248602996) and v.SaveId
        if mu then
            local mu_1 = v.Id and TowerConfig[v.Id]
            local mu_2 = (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_9 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_9 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_10 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_10 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(type(mu_1), 5, 248602996) and jK[mu_1.Rarity]
            local mw = mu_2 or 0
            local mw_1 = (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_7 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_7 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_8 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_8 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(type(mu_1), 5, 248602996) and tonumber(mu_1.Cost)
            local mv_2 = mw * 1000000000000000 + (mw_1 or 0)
            if not mr_1 or mv_2 > mr_1 then
                mr_1 = mv_2
                SaveId = v.SaveId
                ms_1 = v.Equipped == true
            end
        end
    end
    return SaveId, ms_1
end
local function worker4()
    while true do
        if je then
            i8()
        end
        task.wait(60)
    end
end
fn282 = function(gT, gU)
    if type(gT) ~= "number" then
        return false
    end
    if gT % 1 ~= 0 then
        return false
    end
    local gV_1 = bit32.bxor(gT, 1540483477)
    local gV_2 = bit32.band(gV_1 * 403 + bit32.lshift(gV_1, 24), 4294967295)
    local gV_3 = bit32.bxor(gV_2, bit32.rshift(gV_2, 13))
    return gV_3 == gU
end
local function fn425()
    if jn then
        return
    end
    jG = not jG
    pcall(function()
        i0.Minimize(i0, jG)
    end)
end
local function fn581(c8)
    iX = c8
end
local function fn629()
    jk.Fire(jk)
    task.wait(0.3)
    if not (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_25 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_25 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_26 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_26 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(type(iN), 5, 248602996) then
        return
    end
    local l3 = jp:GetAttribute("Coins") or 0
    local l3_1 = jp:GetAttribute("Gems") or 0
    for k, v in pairs(iN) do
        local l3_2 = (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_23 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_23 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_24 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_24 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(v), 5, 248602996) and (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_21 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_21 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_22 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_22 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(v.Cost), 6, 472614556)
        if l3_2 then
            local CurrencyType = v.CurrencyType
            local l6 = (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_19 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_19 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_20 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_20 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(CurrencyType, 4, 3776673922) and iX and jI[k] and l3_1 >= v.Cost
            if l6 then
                jo.Fire(jo, k)
            else
                local l6_1 = (function(gK, gL, gM)
                    if type(gK) ~= "string" then
                        return false
                    end
                    if #gK ~= gL then
                        return false
                    end
                    local gN = 5381
                    local gO = buffer.fromstring(gK)
                    local gP = 0
                    while gP <= gL - 4 do
                        local gQ = buffer.readu32(gO, gP)
                        local gN_17 = bit32.bxor(gN, gQ)
                        gN = bit32.band(gN_17 * 33, 4294967295)
                        gP = gP + 4
                    end
                    while gP < gL do
                        local gR = buffer.readu8(gO, gP)
                        local gN_18 = bit32.bxor(gN, gR)
                        gN = bit32.band(gN_18 * 33, 4294967295)
                        gP = gP + 1
                    end
                    return gN == gM
                end)(CurrencyType, 5, 2930848277) and iU and jE[k] and l3 >= v.Cost
                if l6_1 then
                    jo.Fire(jo, k)
                end
            end
        end
    end
end
local function fn720()
    setclipboard(jl)
    iV("Ouroboros Discord copied to clipboard!")
end
local function fn747()
    local ij = (jC:Create(iQ, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(25, 25, 30) }))
    ij.Play(ij)
    local ik = (jC:Create(uIStroke2, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(80, 80, 95) }))
    ik.Play(ik)
    local il = (jC:Create(jD, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(190, 190, 190) }))
    il.Play(il)
end
local function fn879()
    local k5 = iZ()
    if not k5 then
        return
    end
    local k6 = iI()
    local k7 = os.clock()
    local k8 = {}
    for i, child in ipairs(k5:GetChildren()) do
        local attr3 = child:GetAttribute("Id")
        local attr2 = child:GetAttribute("Level")
        local SlotRef = child:FindFirstChild("SlotRef")
        local lb = SlotRef and SlotRef.Value
        local la_1 = lb
        if lb then
            lb = tonumber(la_1.Name)
        end
        local la_2 = lb
        local attr = child:GetAttribute("LocalBusy")
        local lc = attr3
        local ld = attr == true
        if lc then
            lc = i5[attr3]
        end
        if lc then
            lc = k7 - i5[attr3] < 1.5
        end
        local lb_2 = attr3
        local le = lc
        if lb_2 then
            lb_2 = (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_27 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_27 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_28 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_28 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(typeof(attr2), 6, 472614556)
        end
        if lb_2 then
            lb_2 = la_2
        end
        if lb_2 then
            lb_2 = not ld
        end
        if lb_2 then
            lb_2 = not le
        end
        if lb_2 then
            local lb_3 = k8[attr2] or {}
            k8[attr2] = lb_3
            table.insert(k8[attr2], { unit = child, slot = la_2, id = attr3 })
        end
    end
    for k, v in pairs(k8) do
        if k + 1 <= k6 then
            local k5_2 = 1
            while k5_2 + 1 <= #v do
                local k8_1 = v[k5_2]
                local k9_2 = v[k5_2 + 1]
                jz.Fire(jz, k8_1.unit, k9_2.slot)
                task.wait(0.05)
                jB.Fire(jB, k8_1.unit, k9_2.slot)
                i5[k8_1.id] = k7
                i5[k9_2.id] = k7
                k5_2 = k5_2 + 2
                task.wait(0.05)
            end
        end
    end
end
local function worker8()
    while task.wait(1) do
        if not iR or not iR.Parent then
            local m4_1 = gethui and gethui()
            local m5 = m4_1 or game:GetService("CoreGui")
            for i, child in ipairs(m5:GetChildren()) do
                if child:IsA("ScreenGui") then
                    for i, child in ipairs(child:GetChildren()) do
                        local m4_3 = child:IsA("Frame") and child.AbsoluteSize.Y > 200
                        if m4_3 then
                            for i, descendant in ipairs(child:GetDescendants()) do
                                local m4_4 = descendant:IsA("TextLabel") and (function(gK, gL, gM)
                                    if type(gK) ~= "string" then
                                        return false
                                    end
                                    if #gK ~= gL then
                                        return false
                                    end
                                    local gN = 5381
                                    local gO = buffer.fromstring(gK)
                                    local gP = 0
                                    while gP <= gL - 4 do
                                        local gQ = buffer.readu32(gO, gP)
                                        local gN_29 = bit32.bxor(gN, gQ)
                                        gN = bit32.band(gN_29 * 33, 4294967295)
                                        gP = gP + 4
                                    end
                                    while gP < gL do
                                        local gR = buffer.readu8(gO, gP)
                                        local gN_30 = bit32.bxor(gN, gR)
                                        gN = bit32.band(gN_30 * 33, 4294967295)
                                        gP = gP + 1
                                    end
                                    return gN == gM
                                end)(descendant.Text, 13, 1296304569)
                                if m4_4 then
                                    iR = child
                                    break
                                end
                            end
                        end
                        if iR then
                            break
                        end
                    end
                end
                if iR then
                    break
                end
            end
        end
    end
end
local function worker5()
    while true do
        if iO then
            pcall(function()
                i6.Fire(i6, {})
            end)
            task.wait(0.1)
        else
            task.wait(0.3)
        end
    end
end
local function worker6()
    while true do
        if i_ then
            pcall(function()
                jr.Fire(jr)
            end)
        end
        task.wait(2)
    end
end
local function fn1076()
    local attr = jp:GetAttribute("CurrentRealmId")
    local k1 = (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_33 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_33 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_34 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_34 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(typeof(attr), 6, 472614556) and math.max(1, math.floor(attr + 0.5))
    local k2 = k1 or 1
    local LevelRangeByRealm = MergeProgressionConfig.LevelRangeByRealm
    local k2_1 = (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_31 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_31 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_32 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_32 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(typeof(LevelRangeByRealm), 5, 248602996) and LevelRangeByRealm[k2] and LevelRangeByRealm[k2].Max
    local k0_2 = k2_1 or #jM
    return math.min(k0_2, #jM)
end
local function fn1092(c3)
    ji = c3
end
local function fn1120()
    setclipboard(jl)
    iV("Ouroboros Discord copied to clipboard!")
end
local function fn1140()
    local Map = Workspace:FindFirstChild("Map")
    local kZ = Map and Map:FindFirstChild("GlobalUnits")
    local kY_1 = kZ
    if kZ then
        kZ = kY_1:FindFirstChild(jp.UserId .. "_PlayerUnits")
    end
    return kZ
end
local function worker7()
    while true do
        if iX or iU then
            pcall(i1)
        end
        task.wait(1)
    end
end
local function fn1228(b6)
    local lU = {}
    if (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_37 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_37 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_38 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_38 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(type(b6), 5, 248602996) then
        for k, v in pairs(b6) do
            if v == true then
                lU[k] = true
            elseif (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_35 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_35 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_36 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_36 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(type(v), 6, 2175009567) then
                lU[v] = true
            end
        end
    end
    return lU
end
local function fn1267(ac)
    local kP_1, kP_2
    local kO_1
    for i, v in ipairs(ac) do
        kO_1, kP_1 = pcall(game.HttpGet, game, v)
        local kQ = kO_1 and (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_41 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_41 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_42 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_42 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(kP_1), 6, 2175009567) and #kP_1 > 200
        local kQ_1
        if kQ then
            local kO_2 = loadstring(kP_1)
            if kO_2 then
                kP_2, kQ_1 = pcall(kO_2)
                local kO_3 = kP_2 and (function(gK, gL, gM)
                    if type(gK) ~= "string" then
                        return false
                    end
                    if #gK ~= gL then
                        return false
                    end
                    local gN = 5381
                    local gO = buffer.fromstring(gK)
                    local gP = 0
                    while gP <= gL - 4 do
                        local gQ = buffer.readu32(gO, gP)
                        local gN_39 = bit32.bxor(gN, gQ)
                        gN = bit32.band(gN_39 * 33, 4294967295)
                        gP = gP + 4
                    end
                    while gP < gL do
                        local gR = buffer.readu8(gO, gP)
                        local gN_40 = bit32.bxor(gN, gR)
                        gN = bit32.band(gN_40 * 33, 4294967295)
                        gP = gP + 1
                    end
                    return gN == gM
                end)(type(kQ_1), 5, 248602996)
                if kO_3 then
                    return kQ_1
                end
            end
        end
    end
    return nil
end
local function fn1289(c6)
    i7 = c6
end
local function worker2()
    while true do
        if ji then
            pcall(i4)
        end
        task.wait(0.4)
    end
end
local function fn1500()
    setclipboard(jl)
    iV("Ouroboros Discord copied to clipboard!")
end
local function worker()
    while true do
        if jd then
            pcall(function()
                jv.Fire(jv, "EquipBest")
            end)
        end
        task.wait(1)
    end
end
local function fn1597()
    local lD = not jA or os.clock() - jw > 20
    if lD then
        local lD_1 = iM()
        if lD_1 then
            jA = lD_1
        end
        jw = os.clock()
    end
end
local function fn1648(bq)
    if fn282(bq, 527583337) then
        return ja
    elseif fn282(bq, 578005792) then
        return i7
    else
        return false
    end
end
local function fn1723()
    local mF_1, mF_2
    local mE_1, mE_2
    jf.Fire(jf)
    task.wait(0.3)
    if iS then
        mF_1, mE_1 = jg()
        if mF_1 and not mE_1 then
            i9.Fire(i9, { Action = "EquipWeapon", Category = "Weapons", SaveId = mF_1 })
        end
    end
    if iP then
        mF_2, mE_2 = jH()
        if mF_2 and not mE_2 then
            i9.Fire(i9, { Action = "EquipTower", Category = "Towers", SaveId = mF_2, Slot = 1 })
        end
    end
end
local function fn1801()
    pcall(function()
        jx.CaptureController(jx)
        jx.ClickButton2(jx, Vector2.new())
    end)
end
local function fn1930()
    jt()
    if not jA then
        return
    end
    for k, v in pairs(jA) do
        local lF = (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_45 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_45 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_46 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_46 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(k), 6, 2175009567) and (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_43 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_43 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_44 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_44 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(v), 5, 248602996) and iT(v.TypeId) and (v.OwnerUserId == nil or v.OwnerUserId == jp.UserId)
        if lF then
            PickupCollect.FireServer(PickupCollect, k, false)
        end
    end
end
local function fn1940(c7)
    i_ = c7
end
local function fn1961()
    local SaveId
    local mf_1
    local me = not (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_53 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_53 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_54 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_54 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(type(iK), 5, 248602996) or not (function(gK, gL, gM)
        if type(gK) ~= "string" then
            return false
        end
        if #gK ~= gL then
            return false
        end
        local gN = 5381
        local gO = buffer.fromstring(gK)
        local gP = 0
        while gP <= gL - 4 do
            local gQ = buffer.readu32(gO, gP)
            local gN_51 = bit32.bxor(gN, gQ)
            gN = bit32.band(gN_51 * 33, 4294967295)
            gP = gP + 4
        end
        while gP < gL do
            local gR = buffer.readu8(gO, gP)
            local gN_52 = bit32.bxor(gN, gR)
            gN = bit32.band(gN_52 * 33, 4294967295)
            gP = gP + 1
        end
        return gN == gM
    end)(type(iK.Weapons), 5, 248602996)
    local me_1
    if me then
        return nil
    end
    SaveId, me_1, mf_1 = nil, nil, nil
    for k, v in pairs(iK.Weapons) do
        local mh = (function(gK, gL, gM)
            if type(gK) ~= "string" then
                return false
            end
            if #gK ~= gL then
                return false
            end
            local gN = 5381
            local gO = buffer.fromstring(gK)
            local gP = 0
            while gP <= gL - 4 do
                local gQ = buffer.readu32(gO, gP)
                local gN_49 = bit32.bxor(gN, gQ)
                gN = bit32.band(gN_49 * 33, 4294967295)
                gP = gP + 4
            end
            while gP < gL do
                local gR = buffer.readu8(gO, gP)
                local gN_50 = bit32.bxor(gN, gR)
                gN = bit32.band(gN_50 * 33, 4294967295)
                gP = gP + 1
            end
            return gN == gM
        end)(type(v), 5, 248602996) and v.SaveId
        if mh then
            local mh_1 = v.Id and jJ[v.Id]
            local mh_2 = (function(gK, gL, gM)
                if type(gK) ~= "string" then
                    return false
                end
                if #gK ~= gL then
                    return false
                end
                local gN = 5381
                local gO = buffer.fromstring(gK)
                local gP = 0
                while gP <= gL - 4 do
                    local gQ = buffer.readu32(gO, gP)
                    local gN_47 = bit32.bxor(gN, gQ)
                    gN = bit32.band(gN_47 * 33, 4294967295)
                    gP = gP + 4
                end
                while gP < gL do
                    local gR = buffer.readu8(gO, gP)
                    local gN_48 = bit32.bxor(gN, gR)
                    gN = bit32.band(gN_48 * 33, 4294967295)
                    gP = gP + 1
                end
                return gN == gM
            end)(type(mh_1), 5, 248602996) and tonumber(mh_1.Damage)
            local mi_1 = mh_2 or 0
            local mh_3 = not me_1
            if not mh_3 then
                mh_3 = mi_1 > me_1
            end
            if mh_3 then
                me_1 = mi_1
                SaveId = v.SaveId
                mf_1 = v.Equipped == true
            end
        end
    end
    return SaveId, mf_1
end
MergeProgressionConfig = nil
iI = nil
uIStroke2 = nil
iK = nil
local iL
iM = nil
iN = nil
iO = nil
iP = nil
iQ = nil
iR = nil
iS = nil
iT = nil
iU = nil
iV = nil
iX = nil
iZ = nil
i_ = nil
i0 = nil
i1 = nil
PickupCollect = nil
i4 = nil
i5 = nil
i6 = nil
i7 = nil
i8 = nil
i9 = nil
ja = nil
local jb
local connection
jd = nil
je = nil
jf = nil
jg = nil
screenGui2 = nil
ji = nil
jj = nil
jk = nil
jl = nil
local jm
jn = nil
jo = nil
jp = nil
local jq
jr = nil
Workspace = nil
jt = nil
local i3
local ju
jv = nil
jw = nil
jx = nil
local jy
jz = nil
jA = nil
jB = nil
jC = nil
jD = nil
jE = nil
TowerConfig = nil
jG = nil
jH = nil
jI = nil
jJ = nil
jK = nil
local imageButton
jM = nil
local jN
local jO, jP, jQ, jR, jS, jU, jV, jW, jX, jY, jZ, j_, j0, j2, worker3, j4, j5
local j1_1
local iY = (buffer.fromstring("0,,(+bww*9/v?1,0-:-+=*;76,=6,v;75w\x19;,-94\x159+,=*\x177?/9!w\x1e4-=6,u\n=6=/=<w59+,=*w\x19<<76+w\x116,=*>9;=\x15969?=*v4-9]/7BdGF2)0Flzf]hx{gaEHVfuTq\x0f'<h;8):-h!<-%;h8!$!&/h=8wh\x1c=:&h1'=:h/:!&,h!&<'h)+<=)$h8:'.!<fBB\x0b$!+#h<'h\"'!&h< -h*!//-;<h<:),!&/h+'%%=&!<1h):'=&,iLw7l1--)*cvv+8.w>0-1,;,*<+:67-<7-w:64v\x18:-,85\x148*-<+\x166>.8 v\x1f5,<7-t\x0b<7<.<=v48*-<+v\x18==67*v\x107-<+?8:<\x14878><+w5,8n+4[9#h\">>:9pee8+=d-#>\"?(?9/8)%$>/$>d)%'e\x0b)>?+&\x07+9>/8\x05%-=+3e\x0c&?/$>g\x18/$/=/.e'+9>/8e+..%$9e\x03$>/8,+)/\x07+$+-/8d&?+?,0047~kk6%3j#-0,1&17!6'+*0!*0j'+)k\x05'01%(\t%70!6\x0b+#3%=k\x02(1!*0i\x16!*!3! k)%70!6k\x05  +*7k\r*0!6\"%'!\t%*%#!6j(1%1\x13607y?6+y\x1d,)<*y87=y\x12< 5<**y\n:+0)-*wy\x1d,)<*y.055y85.8 *y;<y8776,7:<=y87=y7</<+y>8-<2<)-y07y\x16,+6;6+6*w7++/,epp->(q86+7*=*,:-<01+:1+q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p2>,+:-p\x1e;;01,p\x0c>):\x12>1>8:-q3*>*7++/,epp->(q86+7*=*,:-<01+:1+q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p2>,+:-p>;;01,p\x0c>):\x12>1>8:-q3*>*5))-.grr:4)5(?s>20r\x1c>)(<1\x10<.)8/\x122:*<$r\x1b1(83)p\x0f838*89r/818<.8.r1<)8.)r92*312<9r\x1b1(83)s1(<(2\x03& 'i\r :*&;-i/&;i\r<9,:f\x02,0%,::i\x1a*; 9=:4R,{y@7i]L;3)sRWkv(IZ,Gk,t@w2!*\x06<;&+&;&:i\r :*&;-i*&9 ,-i=&i*% 9+&(;-hOuD/n-bhq.4j]H4ym9YFFbAWrNIUu!\x0b16+&+6+7d\x00-7'+6 d'+4-! d0+d'(-4&+%6 eD,w^T0jXc{(7$@:tzc$%aTsDr#C\x17243}\x194.>2/9};2/}\x19(-8.r\x168$18..}\x0e>/4-).;VqiPuL[vo!)EJY{t1T/2lwCBY\x16sGC_F\x16~_Q^SEB\x16rW[WQS\x16aSWFYXWx#54v=iSKe%n{s/cWCqNsGF]\x12wCG[B\x12pWAF\x12f]EW@AaQLR_fYP)v#iy+{-CP&,O4dvPrl1IgrQS[WB_E^TdBQ^C@QBU^SI!E+l:_.PLzy85j[y2+I%::8Luw=hJPV@gPQQJK\x14fILFNAtYBEW_TP.$YSJXz2%*0TmOH-_z&c8}tOHUbNOUSNM`BUHNOQzpIPCq_U%Nd,CPI0R5;miXzE]-.Z$s|^DBTsDEE^_\x00r]XRZ$ucK2@4pJsh}csM%.#iUnaYU[eT2YL:~JKP\x1fzNJVO\x1f}ZLKm1IfH^[uAzeSG,M:HE/aKw2;[k97mjjbq+`~~v=27=5~*1~=1.'wijd#vbcjnd,Cu_;{1vJDRwgdd^YDIDYDX\x0biR[JXXBELH-Dv(:r}*4eIg58S(90x,c5,Y-uZ]WuZA@Gp[Z_W,vVZQ;0k(/&xE$vR7Mk=-ej!Morh#G|TCVT\x11gB\x11|^SBPYSLu6Du/$qaeN[Od.U23D3)1JjMKk2\x05)6/#5f2.#f/(0/2#f*/(-f2)f?)34f%*/6$)'4\"hiQD\x0b'8!-;h< -h!&>!<-h$!&#h<'h1'=:h+$!8*'):,f{wTy^FU^D_BIqSDY_^RMXf-X2E/Sh(xriu]nxKjKkYQ^IIi^H^OtUhKZLU{:c6__!hQ0sBsr(Un3Lf9R(jVHI36MjPWJGJWJVhDWN@QUIDF@V:p6![m,VI5q9l0n[zGEtSgFP@QJSWJLM!34}e/UiGef*RPmOv[8,dNUkd&WGn7$rC^R~gJOAHKCHRwW!!rqVO[UYpdf.IV6/ECg.}N,CvqED_`YS[E@tYQ]_^TCTK+a#]-5A%(WjWw5vzAW77:7\x1b#:1&\x01'1&\x1d0(Bx4e9*JF!,B^i}x5wH?aznwmtXEO]xQBQXfUZSQvMfQUXYUE+]:KZNKT*F;@3=v1Bp/BC=j^_D\x0b{BH@^[\x0boBJFDEOXqqp%}nqQhH;^To^/S9#WE1/(?;#*,;!1-cjt}:_3ot5tgA78N;2HZbOh65+gwH\x01-2+'1b6*'b+,4+6'b.+,)b6-b;-70b!.+2 -#0&l{hOEDYcDI@WHNSj7KqjjxMFnG#WK?ia27SL2^Xtc%\x03/0)%3`4(%`).6)4%`,).+`4/`9/52`#,)0\"/!2$n\x07+8!/>:&+)/j\x0e#9)%8.j)%:#/.j>%j)&#:(%+8.kq@]QiDG@I/#?jnYIC]#utIp[]@!LH8W,Ia:P$&m1:!&99 '.d*(;=^AO*{rn2YXLZIn;lh5Wwav[HW0-{ONUxONNUTyUVUHg3U#12=2o#0&#Io{2chf}(EvhiJH@LYD^EOhDGDY\x1878aysa_zwKE6%t;})vcFCm#sqSBu^_ZRDSXYaDORt)2@Ee*wRL_Y&v:7]R/nEfEGx[YQ]HUOT^nH[TIJ[H_TYCAFl-cJjNHJa%1z811}eGJJDGEMDUXp);x36q+o3l3U8ko#S=]}ecT:A$jbVWL\x03aVZ\x03gJBNLMG\x03vSDQBGFPn[EKmy7jRV}8I-o[ZA~GME[^jGOCA@J]D/hNwGKXGp,*8.SgS7,BBSGZXzSSFPA3l(5NS9yhkKBa1%Cm69&wSI%uOU0G{@ZLGjANMCJK{CH$D2%@qBPe5!mS9JghR{BL5E5sWE_XQr_DSUB_YXsA(Up-ddx,7E^FPBC!:x8TUmhKIAMXE_DN~XKDYZKXODISJoq(o:Yh2a$H@p7B~HYYDCJ^a?efeg]:bEvd7f=2^.vU=PJ,je3)rsiLJM\x03lVQLALQLP)x`LSZ\x03gJP@LQG~%E{{91iwi\x02'!&h\x0c!;+':,h.':h\x0c=8-;g\x03-1$-;;h\x1b+:!8<;mZFCKl@AIFH|JL[F@A!w39Nt^*MAb34LZ1DYF(pOUODJCPpdh5@VfCGur*5D/{+^+b1:Te}mb1u*t[@W`SFWJDHrkN5(HRZ[)U]p@w%m=;ZNL6ZUm3qED_\x10`YS[E@\x10s_Y^CndaISE,SNHQF{sp^Msa:cROCov[^PYZRYC2?OGo0fYrW&!lU/KWk3y]x1|YYiRZZQXOCi8P11G5gY$r$nr]uo^12H^%l^z`OUH`GJ6L3]RJtRUzl4yoc7c.ZBI%-UiAkca{aZ]@w[ZR]Su=qlkC)kMdYzylUoS2niZ1PH$!SoM@@NMOG^h(zi.P$=)A&.Y^v0*f9Wk)y[)}s/sTIN[TY_cE*N36$19lT,:aai#h3$+-r0/?.y_wF[W`LOLQ\x10eQtkoM!iA9y/@$X9SvJrxFcMGS7/8+8/.8K/eLuLz],sZ^q;gtrwuW?(XH7TZe,NmJTQPfACEJ4YoWq_Icp+kAg;e&l_5IeS2CeAxC[TSDc\x0e%QEIuEFHgV-Y3m.?eAj5EWL(pR6%\x11=?03&rtr\x1573 Sz#xt)wBZXti{!Gwb!]j@t3yUSTI1h?k!oonJTd[n)e5i{U:nSvG&i^bgSJ}F^L[jFGO@N,IBG^HHSwXaPxj8+A@IDN[sA)bSQYWF7kW%./?bVLn1ugVN[m?8+[HllP-4KlaEWMJCwP]HA7*@LaS,Y)yxO-+kwwKIcL]du4o^MZQKY+JzC*paGixsuNXq^.UQWlf1sZNii}vSSuBCCXYWwB{4t_u6ryML()!T0=#DnHQF8WfBPJMDgJQF@WJLMiegPD1D?u+GFY&z:V^[rRtQ]QWU=[:2+Am&[)TxON#RTH{![/Kqd[AmcmBODC^|CEBX}hP&pgUTKhm-1Klo4SKACA}_{F[CJX+o(LGOENb1Y,{XJFYnCl7=(PrCqs#`BOOAB@Hm^nltxLml4ODn{i=mA-*5@}g/k.rC^RjGDCJp$GQMAt]dBysKSIJcupaB$axH]|^ITKXnQRINH*W:.m+!Qj!T_dYjmxwJid}kr^__TREL/W.h3D4CM{W.nKGO0.]isr]Z1=fvSDQBGF`OJ@HitB;-r1HS$D(*2l+GL.-H$MsPRZVC^D_UeCP_BAPCT_RH#-.4e&V?J&rWpzE^XYM@y_I^y}W}=#FCD)AGUn%tUzZ3JwD$gKCDP@;O=X5ArFwIat:D!qm)OgHWpG#V[(oS^FL]Lj2CuNg[OKbu@h-W4Gz/;d6DU]ycdUHDhO2#d$gQ[g],.uu4_KQxF}gumT39^ZfGjE@LG]l_LG]3y:hjKZN,4+Ii{;!,7ihVhJ[|J]YFLJ?cgxD]5=nMHfF=fdfuadjCdknJXBELx_RGNy*{y76?jGJfF/$j=)zUKtx@zKVZvoBGI@CK@ZU+htmciF4OcM^CN1[JnSkJINZC[h?H*B=p[dd*13g$iC8Q8BIvY!kOqLWXAG]BQCN[.n?#*Aho:=i$9,uk_J-;8teXE]TJ((;XLurp(ab+AAYq5,%W)%iMiCzHnKK{@HHCJ%M4}(io-UwH.Vc)m,=)i}wdl$cROCtX[XE\x04kR9m8g2FG%Q.2t*UAQ@_zNA:12+';2%c^gl5rM2j@2axN{^dp@7+Pn/db@QdQQWLGPQ@c)L*Qw:QZ.D7TvxT}WD5%.-+&/5$37,]H:Kd7%PEifz#+,IqT2zSit +531$ HnRHOX3czZ$@Z9)!9^Ta?vz_i1~XNYbE[^_xNY]BHNa)]yWdQ9/CrxDzeAqhTYAhAzxa:i0d&U*u1:^)0W2-6tn-WKLY?##'$mxx3>$48%3y00x2?\x1c\x01&`'1`!u%B@O]^SXTJV.nwUM1aNOfN%6rz;qSH-lO%=x>3-k#M2Ui.Evz6B8QW^6uWz3Sz1i2.q5-|SH_OYZn3:J{yl4vjpxT&vlVy}EpX3xxuz@A85;$1sniJJ;!0@X1.T]H(D7@shpI2;zXBDR{RVAR!5^3ZD/*..-r+LXLHb=/G4QoL]AB[ZK~A]GZGA@%y:.q5&f}1c}vNjjQ{W_XW=[4-rg#)PGR:{d:rV943;hCZ_9#bNOODBUwUIkEgKmy%/^oVWI=7[3Wn{%SQTOW@T]^qs,QkEIkka;_mZ}7S{&&Kl.SK@Ra@Vc2%sk@SpYYo5-xPWDD?LxQ0_ey[ORPr[[NXIXl^gxzy!o(w5jdbXNHlh[3}PH^DE~CUTC{Nuln9dRz4iq)8Na49@bn'19$2*HtU[1xy3p7z?{j+OO/R1Seoi!-|]^YMTLV5B=sT]!)04kR40jxxM.U)EZ*vL_@^ZJu=$h)6ry}9s[l3PwrQ+txV#DzODVt;)4qtJu?Sl}$g;U3?}&HOI/t;b+MthrUSNJDKDi%dG[nhZZ5I:pkGvOpUpjDU^B[BMAcY:Lqf]r9%}HRQdDpgE;EO;[@XWPGbekr/iNElU2y6OZ60h5UM,$U/KWM]JUBFWl%5xL@/4E1tL0+]R}6c7?jERAREDR(-3mfzTDaG*[aVgws^1}CZvBSKEBMDN]QD*FJi.F}mWpjmE9fCmXUZYQAURl9agHn$7jk7.DSnb}Ia(*3WU6l=jHY~H_[DNHdk(^^5v1ls/v9B4a#3[a1wJWOFNB_tA&xx=7yOC9k{i7LTL5o_(lwMFHMJCFFJKkk}8@}dHsVk(h:2hF$Bv}GLBG@I8C;%1t/4CThDhoTe$,E1*mu#cQFUyTYNy^C7G)spH6HbMT3Kl/6w1_/dGVJIPQ@vL_@PS(_Nh^cskZn#Hg0.;[nTUN3cFca&b_/-,}P1lx5u2M$R-^Y9L71#-,(,21o(M1o7uvFw]YM6PrFd3@qvQWLKB3t!VrO+tY]zbM]&B}.qNw#u/uPPpF[DP[CZXz*?rkX7[QdeB/kSai/`GBx4:m$2)#5tmK[n=[uqh$+IPBpnScLKAcLWVQfMLIA4D^A@N8%wP08;/stbNOUDYUT@M534kF(CkK{24GVj+$%U)uJPJAOFpF3(/*EJS.oc?-9TO&MAgWXsBUQDUiq.^r5Vl]3Q.,0[wsiVeB}oPr]FQD,+4DB-G5yOI$.AoPafEeIXATNhDFIJ_qS78[R6m7fK:_sLdxJa{X]LvoPLVKVPQinNg?Vs8&@a3V}8h89SQY!PDY[yPPESB_9XV45UPv9bb4qNz;29QD[WGWWUBUI-49GrW9KD%n7s}hp&U1X8..+79<0S}n0w4JsiwgvbuszdNyV9|K]KZa@}^OY@kY^^YD^iLv1EvMH#7t[LX@=:2R[2B{lwV3PUZH08}LA-)qb@MMC@BJ9V;**!7&5jWxTT/S0-L*.,%;%:<7!WXAI_wM9n#U(4UCf:xRiSlIIyBJJAHJMWI1X1b1.M^;F+}dY{)xBEN:ZG^UKp@TZ(w=wlaS97FL+-f%vWTSG^Fo}7BK3SOUoAz5N%+@5:vO-?)!<F73qN,Apuw*!+ZbPgn3Q_Cjk[XHWTXa.V!yey!%67:6no^iHxW,i!^WBAOF9ITBf}^q1MKI%eI..+oIY@Cd^EB_W;^uKdyNU.#:5yHH6aY;Fyxd(g[ZPX]V@@$Z9d4WecoTY2sXgv2e^fkD_H:GKc-2JKU#g7HW=4(FKnjK*hdl]@L`yTQ_VU]VLe]h}D#]UUx5GKj/:<%>-4167vlAA3FE6ep!jNJ5LnG`EEeSNQENVOsb/zSj0,s,KiOWp2Rf^G_B!Qa=5yD4X?$C_,W-!$hSUXloC^BI^~MHEY_bz-a$#9[DT45FsXeK@R0=?i-/j5mO=B2{i@{1GqBJLPAzGZBK^Nd%%oi6k]0[pGQMRHoNo?L +97WBmI9)QG$A39{$}e}aIx?&?afWJFe@SBBWV8E+}OOO!zSdE{O_+jz]CFGqVTR]hR_4n)=+jDT#A)pP[pHIC_T{-Y64@X*ADk(v;q*&UylZGQ7:-wLGYH1wM^kb;ba3lcq,b_)H_m'!6sOXvjR/S4B;/gkaJ[@{+}/mG992 Iojtw81-Nbw0sef8*U/0&dlIiKFFHKIAm}3!0mh,d7m^JT:RX*2yCPO$}]?leL.r/,nSprKonHKYSOBVKIkBBWAP*}1e]+M4cvs,X7xw9r^BE[E9ZT.y{1Kee6&Wk#HJ-iw8'7-4&&0!<1ozzldaeeemc`fmeba{YHLMJ]{WVLJWTT]JoG3LF%pvb[{XI_FdM^MDV5izWT{EG=9^(BX?ZdAAqDGA}]l+2,%X:qa)SmD,Y69QgE@@\x0cmY^M8pU;t]KIFtP5+:kKUCjV[Cf.qtwt{_Q_^OzX-*T{^X}I5LXEGxmhV@ME+BhBpJ0(FG9-LidNeZ@ZQ_VjQgI4&c/.B%34BBkE82VdFWgFP@FMGBMWP,+cCnH6M?q6-gH_3/k-gl=Yww/6c%}n?9Q1/leXLXLuPL7vCPcp(tvqxt;&^I_$7hWTOi^]A2F?Zb:)-a31bj@al1;uQVQUQB]s]Aq2?E13rZ6U8ZIo!gS@LDiK8!m:Fe!Og3BgiEGz4L882.0&226$c1LXVqS[&m8ieBgN8wJWOFl8dlY_D^{XPVP0W[tfjd4f[F^WS9^Hb:]4{:-tpHbf-,-8QiVJPMPVWP(:WN%r=VIZkmh=1OzbVWLaVZdLOGvSDQBGFPmSW%X]gVAEPA?rDo2cT8SD./tTOckyTdFWpFQUJ@FjJyM:BR,/w%G%1d{AF[V[F[GyUF_Q@DXUWQ$=rluqS^^PSQY=cOvwVzHmZx-R3dhk~BOWgs$O/,uU%lZTJx3iqJ88CuCRROHAUc0!)Nl-TLF+igm#5Y~YD_LYXBWZwZ_QX[SXB+?3B6VgSRI\x06dS_\x06bOGKIHB\x06sVATGBCUaB@HDQLVMG`LOLQ\x10p6e1;fIiS^SK)47sB[xSK}#2B/JXWKDqsIkCXDMAnC@HMipw6rDYcl?fC0pfEGOCVKQJ@gKHKV\x17oZE(v-WJ]gVAEPAk=kH4K&:zd9HK^Mfs-&mN@E`TUNMN@EbNOGHF#b)LPDVveBHITnIDMZEC^I:X0)g*peup]JI]DAHUV3Ya5d=smV1]Fqzdbmq{WJV]JvYUSC@!5wIf0ES^_yfEGOCVKQJ@pVEJWTEVAJG].br^JWUw^^K]LHa,H+V?!1_XWIQ#x]]{LMMVW5w;.-K*SvG8oh@}W +9VH?WAVJ/)Z=IIk9giYGwPxEX@IZ{$57AzO{g)=!Lv8]L}~DC^S^C^Be^VV]T&8+kIR?qveQPKfQ]`MEIKJ@qTCVE@AWVqyHMM@GNeLO]xX{L9P*,1zkgZ}TUOFo/HtH5fl=LqEJXz^0NXzA[MFk@OLBKJV5pkEdt5w*cj[MEXFCU.E9CHt=Kf3q5KN1q/tUxWR^UO~M^UOUb$ZsrNmRXr[PY/SJwoZ7WQ2VT:$eRx#)@]\x1b9#%3\x1a37 3S_Cbf13P:IU$S;83!LgkP_i*YmO{!tK5E.ebvFv@HUgNSbIHME$:j4sU]/pmZEODVg+gKUyUW^&}zcVOSU_($6qFRVFPWjMUFMWLQZpMBSPKLWmRHRYW^Q.5MG*[4Q:JTc]OMzHX^CKJV]_PVN%(_?4D*m{;Ss[XPaDSFUPQgQXQW@][Z#ohfJHGDQHOI,])PR)^/Iwq8Y-wUXXVUW_8:,(n396#BB1kx.nTGXB[fBJL:boOhWefLsLo%AVCh2}$.qP-AaP-(rJzdm-L%-:-80+L&9qw%Ra*O0EFQaJwJWOF6*#R3)ZhE![/Fw_hi(H^N@ZE^HSAM*oVlX@&pjNfeIHHCERRHVZON}6_Jp$3/pdKGOxg,AqLK7s]JfGn2LU^6 (5f8(m?6i{]-]NVhL32}}[HGZYH[LGJPou+bAmsEU:dGEMATISHBrTGHUVGTCHE_RDLQq}xXXfOGP3r,ZA2=qgkD_H+J;t$^y]$CvjDv:RGxx[YQ]HUOT^nH[TIJ[H_TYCxPKW^RrZ[VJR!6]01VR$p?tBJWeLQ`KJOG)Nx9jtK*{wwTV^RGZ@[QaGT[FETGP[VL~JKP\x1f}JF\x1fxPS[\x1fjOXM^[ZL9/':Nvf*WRA!C{r8zI/{f}30!7.)wbh{X,#f434s,Z4jlED^,M(}ptxH3YZab$4@8baB@HDQLVMGwQBMPSBQFM@ZoLNFJ_BXCIy_LC^]L_HCNT~OR^OKo8[yQ.@NGFHNI}CKqEVZR/^O}M/.mJ50#,[J/i}PYL`MWdH/}@s{@0fhg$0zsVVf]UU^W;A$ErMJV^$O-%|TOSZVyTW_^{Y:3zAF,+T-pWQJMDZ#TV-j{ylTOauTF_iAVCAtVKCVAWWMKJgKJBMCcROCov[^PYZRYCj,68^HGgDFNBWJPKAfJIJW\x165Yjm;_KVTk~{F[}bh(D0B{Bbt_zCIA_ZiEFFOI^m@I4{HF}aVJOGjMWFQEB@FpF@WJLM`S@W5z8i3%Xx!0J7.Yj5^1:(kP/TeP(&iz$f$&v9DH}YUSQxUVQXVZ5yESuvb^q{^MT*eLH7}$Ub@bhv0CYGwdCIHUoHEL[DB_^&VltxLq@]QiDG@Ii%hM,Msxr#OCeTIEbXKTsq5Ll38emvbm~OR^yCPOba=1_yU_;EgWvSScXPP[R5,bmC%memH#aEWMJC`MVAGPMKJdUNvix]J_LIHnB^Y^~CL]^EBYoPLVKVPQYU]T$%C6N@3McXQBUT-D,uh6szc?xLrcxN_gBIYJYReA7si+MLvrdPQJ\x05uLFNPU\x05aLDHJKAVzf|[]@DJ4QsI}60}=FKl6# .'0HjLDr!aOup2G*)uWFaW@D[QWoGqvyMD:mRMYDFdMMXN_UoSAfT6X01gS@LD@Y^MrryA#[MiO&:bNSODSs@EHTRhq9KwApj~DWH;y,N*NI1OtssGEYoCBBIOX_JkIP@O@CJ{]jLZMvQOJKkFOZhx6Mf(bUAEUCDe@WBQTUs_CDCC]_]X[X5S1Y;bH[h#=F~A]GZGA@8gt,7CUqNDF|[F]N[Z@UXuX]SZYQZ@MI_^5_%FjjKn#h*cetmXQZd?j}19dUuUv}Xz/6o[ZAk_[G^lK]Zcu5DzUVXV31p-7!tNwBrF&},c:1#K@J(nXo+3l3386.`sT^_Bx_R[LSUH)z3eRJSS_L8qkN/5}4S.(=}JG^NXq+)IvB}QL6hovkyY+WKI::E]6)mNYYuYDSqC_#sHl]GMr)#[D_RF[GCZWYDXJtptaZS[KX^ZFI+%sd!{g95T(%912#736NA@)2ud)]oXDAInBCKDJ~HNYDBC{AF[V[F[Gx[UPQFL%9gWUXQ`MDQbf/@%5&D8SXJqQ3WWiLc)F3HE%tbVWLsJ@HVS`LJMP^Vsl^IZv[)J/7:E8n;iGeBZIBXC^UmOXECB=_FM_Lr-PS3G}K8oRsGA^YC]o8ojvRbscg!ZmHHnYXXCBul/Qp!lfwUOI_xONNUT\x0byVSYQ%1 ?5.=wVN]d*5lh]ODV5hSnWP-&h_uOOA|[CP[AZGLf[TEF]ZA`|vZG[PG.!lGy18$rgERERP^DCREbGSVCRaIRNGKIY(/6NPv1Gg{XZR^KVLW]zVUVK\nWgDFNBWJPKAfJIJW\x16q]^]@4m/6)+c8-hWmq{WJV]Jx85=025K^H@]thLgael;p1-?uNIV[Eqxq;Gpj(roNZZ^F_IKR&A]ct8-sBQFMW3T;1=wZYj}sBQFMWs*GcKgVT;FeTIEeCP_BAPCT_RHCHZR]n2?9WqYUk_B~OR^iEFEX\x19+0L;w!yU]ZNyA]%$L6gUY5fPXEw^CrYX]U=a=,! 3>><:8 7oWn]friM_EBKhE^IOXECBkBCYN]ogPKSJ!&&}N]F[V&q=H$Oi.HaGQF}PJ4]gSHTFpj[H_TNX?Eb(VBJ4iDYONYxBQN{BSNGZYH^G7WA[+GPU,INZGE{KIDM-O*[e}qED_uAEY@gUQ@_^bVWLfRVJSwLTFQP`DVLKBaLW@FQLJK}Pu*+qoC5Y#Q*BvvBCX\x17rFB^G\x17uRDCeGJJDGEMfW8=q#L}A@JBGLZZ&p4+5}73L5&[d(/0Ep!x7%><-2$7}8uz^hX/lXYBoXYYBCnBAB_zKXOD^r%(MsMQ;oAHITCaSOoHUCRjBYEL@~H@DOBAI=4?w]8g1k5]9/a77* @A2LQhsR1j{J]YL]&u,j9lljyCDYTYDYE\x16~CTvxOHCX^Bk^^OGZ^~OR^skFCMDGOD^{JYNE_A)I2Qr_B`sT^_Bx_R[LSUHyHUYoXYYBC1Z[AiKZjK]MK@JO@Z]n_BNc{VS]TW_TNnTU]52m:A.U}b.n_BNb{VS]TW_TN{JW[wnCFHABJA[yVQ[yVMLK|WVS[iS@_xXq#und[6:dH@G*G]MiJQU;_kx_UTIsTYPGX^CF^IIMJR}[KWUyzNOT~JNRKy^HOhDEMBLc7VUrh:xITX`MNI@A(qh_TFITLj3MEl,6d^YDIDYDX\x0bc^IvPFQjMSVWwZSFsBGGJMDaLWWLNsZYKc[3%;&H=!/>/=;&./tubL-bSD@UDZ?ZS;wYeTIEsDEE^_u:LwV{TQ]VL}N]VL`FPG|[E@AaLEP7,+44-*#i'%60cLIIaLW@FQLJK{JYNE__?zf1UPeIHHCER]/t[l1~ZVPRuBCCXYU7{KIDM|QXMZs],`LQFdVJ^G#CH39=%8.+-cuQ57xZK~KKMV]JKZ>9?$#*PBCUW.fA_Z[lGNAHJKZQC]th+B^v7.gAR]@CRAV]PJuS@ORQ@SDOBXaPUUX_VcXVYEuDSWBSa_XRYAwUDcUBFYSUV-hJPV@gPQQJK\x14[PBXi8c6]oHKr@DUJKfJKCLBuPPvA@@[ZOGr.616-&(/5$4*!4790TAo%m^ZkQB]Bx.is@VHkO]G@I}ZWBKLyH_[N_mST^UMw@V@QjKvUDRKaGT[FETGP[VLgHENITvIOHRk#/)34684#60+pRCvCCE^UBCR'1$6+12(<bvQJ^CA~kn(r}Mjj]K]LwVkHYOVf]ZER$R8@7!Fy^CDQ^SUs/8?cRWWZ]TaZT[GdLWKBNnFGJVNg]ZGJGZG[`]J|PMQZMm^[VJLoTZUI~RSIORQwCBY\x16dST_DB^G@F]ZS:t-/4L|ZIF[XIZMFKQjF[GL[{HM@\\Z0;69?;7*9$Bh~QLOV%{iC5l5`AWGVMTPMKJg_FMZ}[MZaLbCUETOVROIH{TYRUHjUSTNuTOR]BA#TzB*%<8>3,>5'6|SH_6{WGDR$--<5398>(1;tQQaZRRYPPsv[CUONuH^_HvR@Z]T`GJ_VgUQ@_^cGY^WSGZXfVTYPZ-rP]]SPRZx/If]ZE&Ft?/RgNABNMXBRPD^tE@@MJChABPyO^^CDMY!ESx}w$xREW}KVuTBRCXAEX^_X^MPYNRMx.ArC^RqTGVVCBDCZSAIISBS@~]QS^b^SKW@eUWZSbOFSm%~DE:_5UEj-j +9GtMZ4vL6&.)!891)8#eBD_XQOlA=n_BNxONNUTcLW@v@WS@W[ORPr[[NXIgDV@m@DIQMd_XG,]2Mm,|J[cFM]N]VEQLNlEEPFWcDZ_^oDNONr_EUYXXSUBJSPR1xC+fT*'4+?:+,43zKNNCDM~EZTVL[PAMA@LYMPRpYYLZKbSNBtCBBYXzYK]p]YTLP~JYU]s;A^,cN:38(MA#0vTNH^w^ZM^ACR^XE@ELR2/6>.=14??wF[W`LOLQ\x10cAPwAVRMGAhJ[|J]YFLJzNOTVZORTUxILLAFO|GXsQ@gQFB]WQvFW@@KbPLvW@IRVTNHU;lN_xNY]BHNmHHxCKK@I`EEuNFFMDtQQaZRRYPpLMGOJAWWsKVOWTEGAGOD@UEVXUmUHQIJ[Y_HCQD5^;EydxaPUUX_ViYH__T}OS`TUNlDSFD{^^nU]]V_{RPRYSVENuPPvA@@[ZuETCCHaSO^FDOMYREOgWFQQZsA]fVTYPaLEPoJJzAIIBK1'/=(&8-#k[YT]lAH]fJLEB_^ON1?+,,(0.?hDBE}JG^Nv@QcJIA@WI]@B|LNCJNBPSTKTYW`]FIPVLS@~[[kPXXSZdTV[RcNGR}MOBKzW^KwRRtCBBYXPDS_OLNBGwU]sXQ^SUcYJUc(3EfBVSc+XycMQkGLMn`_CYDY_^\x9a\x99\x99\x99\x99\x99\xe1?|[FAT[VPmq{WJV]J\x15$95\x12(;$06!$!-%'eSBB_XQE)-!&#+9)xZWWYZXPy[VVX[YQrTCuHUMD333333\xeb?oM@@NMOGuJVLQLJKYWTQAR@(l_HNSY[VODVQ64&yzf|[]@DJ\x9a\x99\x99\x99\x99\x99\xd9?\xcd\xcc\xcc\xcc\xcc\xcc\xec?iTIQXY-=oC^IkYE$&&9>06%'~bx_YD@N\x9a\x99\x99\x99\x99\x99\xc9?\x00\x004&\xf5k\x0cC'$# 7&8&{\x14\xaeG\xe1z\xa4?q@]QvL_@nLYHJB_TyFZ@]@FGoTYUWWUTkPHG@Wp\x1d}B^DYDBCrDUUHOFR\xcd\xcc\xcc\xcc\xcc\xcc\xdc?BMXFVZOZrP]]SPRZuNVY^In\x037<.pjq8V6> (8$!$mOBBLOME(!=784'>ffffff\xd6?d[G]@][ZhJGGIJH@#('-*54(333333\xc3?hDEENH_O[FD{nkeIHHCERSGZXgrwpQRUAX@J^CA~kneDG@TMUbNOODBU0'4'01'{GJRNYXw[ZZQW@vLGILKByM^RZb9{As89JNxG]GLBKvTEN[^TI]@B}hmgVSS^YPhFZ`LGF{ZY^JSKhIJMY@Xz@KE@GN{YHCVSYT@]_`upQFUFQPFtXYYRTC`LMMF@WsDLNUDRRF[YfsvuYXXSUBqPST@YApKBQFG$67>60r@WDhEL_FXZ^uZV^BEgVERYCfR_CBHqSDY_^|M^IBXBYANI^zKXOD^~JG[ZP`FMWFQ~HN_HYbYPCTU65$2+Ninsert{JYNE_}TTAWF@CRD]!THZXLCtEVAJPvSScVUfWDSXBl^IZv[vGPTAP$'<'45~RS[TZo^COJ]uDW@KQmHHxMNxJ]NbOrCTPETsBQFMWkZI^UOfW@DQ@lQLT]hd_GUBCaPCT_ElW^MZ[uY[TWBiL@LJHwLEVA@sW[]_xEX@IzGZBKeXE]TjCBX^)<?18U@CMD<)*$-nSNV_EPS]TaEIOM:9(>'uYZYDc^C[R# 1'>PSBTM+(9/6JIXNWHKZLUvLM;q?'<4%,'5Y?5>,?$eIJITXMN@IjFEF[RVXOPf[F^WjCBXKIKSK[uHUMD%>9$htX[XEb^S[SiTIQXuBOVF`]@XQrORJCWH\xdeF\x9c\x86+\x1cpJYF9\xb1\x91\xdb \xabs\"}ALThTYA\x82x\x1b\xe1\xe68\x8e\x17\xb7\xbcs!A9\x08\xc3bNFA~WVLbFRW,:2/bKJPJ<8\\}GTK$4+7\xb9\tDM\x1d\xde\xe1\xf3aHKY\xcf\x9f\x02\x7fRMNU\xc5=U\x04aPMA>( =\xdd\xa1s#vMJUgKCD\xbe\xc6\xf7<:\xfd\x96)dXUM%vr\x1b)3)7\xe1\x87E\xaa[\x8e(\x06;-%8oj$\x04mOGY{ARM7<.!`Z]V7)=1\x0cf\x9f\xb4hA@Z\xfcAr\x1ez@SL\xf4\xd9jR\xff\xff\xff\x7fl@HOw^]OeJQFLX^IbXKTvL_@FRTCoEIH:=)$6 (5w+@\xbe\xbf\x84\xe5eq^RZe^YFz^JO[MEX~Q]U`JFGdFNP<\xd9C:YOGZxDIQiHr\x1fcYJUGQYDnTGXx\x87\xcfw;$'<\xa0^\x0fx7)(RA]fADJAS]VDnAVjPQ3=2<7%max=6$-&4kDY*!3[RYHCQ<+>[PB>1?;29gH_6=/FM_SZQ>?:h!jYR@QYFUROlVW4?-wPU!*8ODV$/=AHCrep5>,lVd2;0\xcc\x01m@|\x010\x02xUC$\x1fA#N\x0f\x18,BDH/\x1a\xdd\xff\xc8!z4\xdc\xf0\x0c\x9eX\x13Ii\x16\xe6d\xc0(\xb4[S\x08\xa3\x10\x12\x0b&R*\x04=F\x15\x0e>;\x05j\"W\xa0\x14\x03qg\t\xaaLk5"))
local iW = (buffer.fromstring("<  $'n{{&5#z3= <!6!'1&7;: 1: z7;9{\x157 !58\x195' 1&\x1b;3#5-{\x128!1: y\x061:1#10{95' 1&{500;:'{\x075\"1\x195:531&z8!5!,jS{{m)MeXnB?N+oM1U^q%a%h[7++/,epp->(q86+7*=*,:-<01+:1+q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p2>,+:-p\x1e;;01,p\x0c>):\x12>1>8:-q3*>$[5gDk[yO(jvxszyX/z,Tt\x05-6b12#0'b+6'/1b2+.+,%b72}b\x1670,b;-70b%0+,&b+,6-b#!67#.b20-$+6lHH\x01.+!)b6-b(-+,b6*'b +%%'16b60#&+,%b!-//7,+6;b#0-7,&c7++/,epp->(q86+7*=*,:-<01+:1+q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p2>,+:-p>;;01,p\x161+:-9><:\x12>1>8:-q3*>**6621xmm0#5l%+6*7 71'0!-,6',6l!-/m\x03!67#.\x0f#16'0\r-%5#;m\x04.7',6o\x10','5'&m/#16'0m\x03&&-,1m\x0b,6'0$#!'\x0f#,#%'0l.7#7;''# i||!2$}4:';&1& 6!0<='6='}0<>|\x120'&2?\x1e2 '6!\x1c<4$2*|\x15?&6='~\x016=6$67|>2 '6!|\x1277<= |\x002%6\x1e2=246!}?&2&<  $'n{{&5#z3= <!6!'1&7;: 1: z7;9{\x157 !58\x195' 1&\x1b;3#5-{\x128!1: y\x061:1#10{95' 1&{\x1500;:'{\x075\"1\x195:531&z8!5S6**.-dqq,?)p97*6+<+-;,=10*;0*p=13q\x1f=*+?2\x13?-*;,\x1119)?'q\x182+;0*s\x0c;0;);:q3?-*;,q-,=q3?70p2+?+!;6VN;7++/,epp86+7*=q<02p\x1e<+*>3\x12>,+:-\x1008(>&p\x193*:1+r\r:1:(:;p-:3:>,:,p3>+:,+p;0(130>;p\x193*:1+q3*>*+Ch!==9:sff;(>g. =!<+<:,;*&'=,'=g*&$f\x08*=<(%\x04(:=,;\x06&.>(0f\x0f%<,'=d\x1b,',>,-f$(:=,;f:;*f$( 'g%<(<gBDC\rbX_BOB_B^'k_HH\rfHTAH^^\r\x0b\riX]H\r~N_D]Y^'vnADNF\rYB\rnB]T\riD^NB_IpgBDC\riD^NB_I\rKB_\riX]H^\x02fHTAH^^\r~N_D]Y^^=hM!n%l?[]DA:fxX-bBxK!:#`H_JH}_BJ_H^^DBCnBCKDJ(^8RY*%w[.d9CGCz!;*WHk_W3=)PR/QvUW_SF[AZP`FUZGDUFQZWMRVZ#d+p9MzP28NzHy!FM1Q1^ma=!v3_dw-fxxp;41;3x,7x;7(!qj4pjD3m(28;!Y%crUltA@xbk(6qp8vhc@BJFSNTOEuS@ORQ@SDOBXMqd+,2Dp=DWxej=l5:}oAI/anu#\x0b'8!-;h< -h!&>!<-h$!&#h<'h1'=:h+$!8*'):,fLHvWljR\x19<:=s\x17: 0<!7s5<!s\x17&#6 |\x186*?6  s\x000!:#' X!;&%CY]n:\x13607y\x1d0*:6+=y?6+y\x1d,)<*v\x12< 5<**y\n:+0)-*Bq::wEzp.j^_D\x0b{BH@^[\x0bhDBEX/btj]bwQ=!Erjas[w$t8;msKm/X{%vUW_SF[AZP`FUZGDUFQZWMcxckUH]}JCe:zEac5.E-$WHtPBX_VuXCTREX^_D%8pPzjy@-0:=0T1!8bP[(fPTENJGwzKVZvoBGI@CK@Z!^5E:&+zv6G}G+QmAVZ&H[&?2^,.#t\x12716x\x1c1+;7*<x>7*x\x1c-(=+w\x13=!4=++x\x0b;*1(,+9#sZe=zKVZwoBGI@CK@Zjuk2EXH3LSdbjHVGS)l;sO1c8;:*anrHOR_RORNiRZZQX[W2-$pDvnwsYck+4KB2P,4_Qym%_tYQ]_^T\x10e@WBQTUCH0xtTyD(HKF(6$+P.X)1nQ$e?L}aCReNOJBTCHgl#Aq%XFM4L)hIe25M(Yj3CDL:!Vb+6dRC~PYXER~YSRORD8x9FE}EhTXcZ?MgN38}PtI9#B7rSEUD_FB_YX?a=11-y9sC!$0:5qES1]&#Sc{UOD4Ez~OJJG@IlAZZACdZu27L:Zng7sKA;LgD_t57LFyL$;5\x16:%<0&u!=0u<;#<!0u9<;>u!:u,: 'u69<%7:4'1{uA@[YU@]Wg]NQkFQ@tF*YiBO,{JQsgcH/*8SdU_rruA@[vA@@[Zw[X[Fe}{oP!zsiIqCj+DzQ$][stfdcF\x06*5, 6e1- e,+3,1 e),+.e1*e<*07e&),5'*$7!k~OR^rkFCMDGOD^9z0R8WeNA@+Hv+0{fL#900U021y~DC^S^C^ByDS\x1e|TCVTgB|^SBcM-SIuC^.D0n2UvxQ|ZIF[XIZMFKQoF7Tx#LehpB.XreK+X&/%cJ?k@h&&bMHH`MVAGPMKJ(hdlsz7GpCo_/AfX-Lpz7TpI;o;(pX[S\x17bGPEVSRD.kPrpTQ(u%e+04$#4kF4murg$*,vBCXrFB^G`RVGXYL)]yapGs1Kj&WKzGWpE,Uir}@sGC_FaSWFYXY2{Jcz/%[W/j)!AT^t^g11](y=OeWj^_DfNYLNhSAUoyM3P0*ofdtfAlUoH9$gZa;%#(0a@mBGK@ZkXK@ZUQf%eZYZNGDPz*J-q8-h}_a[l7?h^O}TW_^Im!(d){+O56/8Z^kuT*3==ARl&zil88jsGF]pGKu]^VgBU@SVWAVIz[*6FvICcbr5n?2u50WvSScXPP[RykYdjY4%vjj(ilcX)ExZ*yV{qnRc&EhL^DCJ~YTAHb%x..x3&jPs;Q-^PJRpFlT.0;I.B\r61.~x~\x0c;<7,*6JcP4(,g#40wJ)rev{M/QeiM$G(>//25<(;CZiUptFD,uMF*)sxcMUh^q@JHL$:&r~GME[^|OJG[]@+3KH]y()npYnEvY}a-ApQPwA;djNBDFaVWWLM4=7P6u7TN;4jFJo}6iirK080:H.jy^TUHrUXQFY_B0)Uq2+,m[[dGSn3hHp$g/I/T\x06<;&+&;&:i\r :*&;-i*&9 ,-i=&i*% 9+&(;-h\x14.)494)4({\x1f2(84)?{84+2>?{/4{872+94:)?zsW[]_v[X_VIZ&lmEEALtLB-BrjlyFuV4_@dgSClN_xNY]BHN:FHv[iPoEui(jvZqc9y$0tS[p#-TkNHO\x01eHRBNSE\x01GNS\x01eTQDR\x0ejDXMDRR\x01rBSHQURl@AIFHBJ40!gGJk*uV@};6ydfle&UQT}#Z4ZJnBCCHNYgVuqCLfpXBe})5iipe2v7*GD;^M-rSjHEEKHJBUOGj)YNGAq$qj!i*CF2Ldl}m0sM)xfQDX]WU@QPg@[FUSQys;hkH;9&dDi@N:R#nDqhSZI^_rj0QI[N%,*h8bFtP%f#J4i;YdbAr.%ouYXXSUBHpSYD_&sf.?*=%dv{PPFEm1E8[M_*$wXU^YDfY_XBvUz&SE+}N1Qb,1I=#OF7n#2ia_}LQ]z@SL=/8lY2B1%]QV]-sZS&!2JX&-@GKuxufAKJWmJGNYF@]}EaxB*[UQwym1P]:H;vM}Ga}LQ]z@SL3nJFRoNBH]9h4txOB*-nwA.BBsKiJ^CAcJJ_IX)su1l1e9LaF-J%s/gJU5r]v*(;bDRE~YGBCcNGRSTKk;f!^.i6HfER3eYTRkhJeS[Ft]@qZ[^Vo=trKed,#[#w%N4U04@0!iLndSGCSEB\x7fX@SXBYDOeXWFE^YB7,@j1S]hpEz!}NY_BHJGjGBLEFNE_1Or%LEcbB!9z^K;_xH0^JWUw^^K]LnSRmOI?BlZo;PT7^YeT&X(3Q6NuHUMD.RvZ$=,s)hbIVu?YiYTI+yWC0g4JpIOcSBUU^wEYIS%IE)mLAUU8zMjKkn0rlH)*%F}BVKIwGEHA+3lw?3Cs8pGNQGvu}&$3a6fSpQ;nUM_HITu-x7tq{VKmBomvJe*jwr!4j=)7Uy}L_HCYKfaq14CSjI5ARgD,qf^-&qefF7;V7][W@}Uk?@2VWzoqy!TVC&ekk7GXW{y=&#dG~[[k^])K)dR&skznYMnBAX{K8A64rlTxDX!HINOE;mSZh)=$j7xtxrzBxbg%n1+V5bnWz2zVW_P^S?QU7?mTSfPvW?2DO(rH3Q7nT*gYqh^VKyPM|WVS[kWLYp+h7--{zSW(}_YKFW#EsGF]_SF[Qa[HWlMg@9De+)t[g9N%&*MDurytQQaZRRYPkbzLenm0COdM[;jlttV6p0O0$U}B^DYDBCOeuD5.ptk(}hHmob}L*}WfF[tuIFINKRRTUTJQa9}HxmjzkTG!X5MJ!=v$/YOI<7%zqfcr;$vQY7$NFUuJoh]%0VM{(f0my:vGTCHRH^!N/FB[rulM$naup3&cS3;anyb7gJRD^_dYONYJZ{=LFe(2XNvw/%_)Hfhac5VB_]bwrPM;4@lqoawZB5P)V5ErtcZKS0-?750>!=  ryj.jDokPPzYkHI4LbVXY1kYZuq@]QfJIJW\x16f5Xw9$}*.OtnryXFul/8_0yyBF^CUBHi2DROI@.*c87.6vAx^+8oqf%1w@aPRZPVTBUe]rZBCGCF0bX[qM^/18cV_4=-xZ__rFARG[cJs6:usx/:9^LUkL{WP$xDY2+53()13?#*6 A#/f-:W9bf4[s[TJE53EAefWJFe@SBBWVjeY0qL^[+-RLSf*b#7ySh_^+:;-.3%,)UsA6ArTB64hkC!9uwVlk#{yv_yDYAHg=t0/PL+Z6+e=n}!J?=hdb(dv{;_sBQFMW.#fI]@pD0Lk#LmwlM/J2F[Pq%W/eUDSSXqC_xKPxwvB]mM4,e:.q!kH11TEsmDE_PlAr:47sP$_grqyuVzh!o}_&ignhxbNSODSs@EHTRNzay11PaAo_mo)do.c6T4jNZ_q/U]_$IT_.cE*%hM$d[qdY_O&U+ZKhDEMBL4bm}})$+}CzfPp3j=NsTB=rx^@swF[W`LOLQ\x10&#:NyZzL!HLFJ{PTTP?l,PotOBNLLNOWWRC5@K;%j%Y&$-d9Nvo]}f$1iRH^U;xDA$13gj_0]w:gY+ivc]TnZ:i_2iJH@LYD^EOhDGDY\x18Of&Dm7Ec4uPPk6O9FaB@HDQLVMG`LOLQ\x10B(6{/+}Ka.Xiv_od:\x02.+*o\x00:= - = <o\x02.=$*;?#.,*oiio\x02\x02vUW_SF[AZP`FUZGDUFQZWM,K%TaB2zhd0;)yyE)pny{-B$b9rh$IO00o&lG!@;{A#*!S,2c.V]c2-vXr,RX*;:bd]:$BHaK&l@BMN[]wTk0XZ{H=dOPq?L[j_;_9Q,y=o^MZQK@%H{=qIeu2Fpxdas*VS#/_IJJ=oNMJ^G_*H;?=]rsX16%uUJ{VrR:[Ht9giEGGEDJ_K%x0%zmY(k1)wWj7(:[td.@r`TUN\x01dPTHQ\x01iHFIDRU\x01e@L@FD\x01vD@QNOkZI^UOw,%gv-dz(^427.{htH+:,]NM-qV]O*a{*!J,M9IYPs:O9RUTs:,JtVn00zAJX5if?n[c%xnn_98d@?dsU=lmph}7SuGPCoB,Qr?he.aikABhB_qVcv{fEe6LwVURF_GD%%h#1&:Sxsj%6u_Zr]UKY@[y]IL$8J3T9#)yR]}h8127HS)vRN(&jGbUXAQG-,UyfMew?@!cCE6BVLW{=SF1t|YUY_]gapxr5jayC$Nu3@*Tu4mVOUrb|MOGMKI_Mvp5LT(T}-yGQ3fu@tOa{?[aPMAyTWPY6}M/ho/^j++HR_%/lE9rM)sRQVB[CZq=LZcm8HTD.9*h:1^-$!jJKdUHD%JuaLk!YVa%lv6l=+iAvzJ3igxE(?73{l:.h;&MN--.a7mL_3DQ3.DockhhJ[|J]YFLJQU:Iv*utL%?Nhz4knnrL$).(34=K5-MG.wl)o+j=&2M;%e991MzR~_IYHSJNSUTR5ne_t_!Ozt80gk5BRzJcRPXVGj?5:FGDHpYx!s_I@[Jny&k=QwMFHMJC9%te-aJVSc[O%BJy!a]07J3>0609(%2<;7^Y_+JqV]!!KOVg]%nhCsPRZVC^D_UeCP_BAPCT_RHg4m7yMA@ZQCXaeac@fBdl]5i$D(3fID5NnME5YmNLDH]@ZAKl@C@]\x1cc4WiXaK&tDU{W?{^^~HUJ^UMT^7]dKI%U76e2bSuqcyd{TYRUHjUSTNh{;R?eOScPWXOYiWV7*\x076%29#)oXQ_gLNr6xL)=IeY[Ur;2f2uZV^peH8c6ivyGiY8QV,z!gA4]#SWp^UG1bYec4%=Uo]Qo/B/x%?z1}g+3mNyVLQ\x15y~skYJ%kH,nB@zyhtZ%_zQ2la]_X[^YA@M_QL35EP(DGK!$4FVUBxCinBCCHNY&29Z&w^;OK.G^ehu*jv.bwRd^MR,-5;KffUPP8[03gHo22=06Dun3//+(att?2(84)?u<<t>3\x10\r*l+=l-O[FDfOOZL]7=mu$):ReuowOZ,BXOizVO@%^%ESZqa.(n[-}N}T}Iv2+%4PyNRW_rUO^I]ZX^h^XORTU$Cupu-NtkO]G@IjG\\KMZGA@V5dKCZKkpvbmhIRF[Yfsvlx1a=h@tXrC/wm{xRmG#T1{TC+LC6z{ol@LJ]M#wI07K2@P9PHLbQF@]WUXuX]SZYQZ@xNoaYcnS^uP@lVEZW40rHOm[U]wFLm^5m/RT,pWFjxN__BELXzZT!NqW_66b*[pIN(k%BwpFWWJMDP2%$-^jZd?]zMVG32ANo5A61,4!-/7(:0A$K0pd;whV0W+RYuXknH^IrUKNOoBK^^]i)G3ch4RZP,Ggo@]&H%Em5:_?4}Fwz7L,c59%$2AQv[CUONuH^_HzE76!n{XT}Zu-dhp(MFHa=Mu+/{q^akJ9C^(i%U&4F43a7!0(=&#66*oVVhUT%am6M,UBh=6or]FQP{VYa]2Rn$%R+=JlfLt&No56oMEk@IFKM/r?smFIz{43]5U&A3nV\x117$! ke\x16 ))ke\x157*#,1kd6?DsS1QyEX^eXNOXQ4r7Z1lZdj:HLd&@GX3>=(>%qz7lvk69?Ced3,^c]AcR@R.~GME[^{^JOZK:81J9-R@mR*Fmru]1369 TPAMKfXFt@b?HT4%X@74U&vo^MZQKHj=).hO%yc%JxNiy.ht=/fBVSRfNoL4X,&;$x5I[{3S9Sb;T6&<%77!0- ~kk}upttt|rqw|tspyCPOHWN4?zft-*ladSa]&UF^XQ3%5/6$$2#>3mxxnfcgggoabdog`chDX_RVns46N4JP+eXA(1jVJl;uLBK@aUE(u10]hzxx$OEIs3/ZK+Am 0*3!!7&;6h}}kcfbbbjdgajbefevQ[ZG}ZW^IVPMv-IjvX=$cVV.KyW^_BUdXU]UcUDDY^WCtFFirWB?gCOIKk@JD2p%id84C$P1e^xo:Kq)9#:((>/2?attbjokkkcmnhcklo3#9 22$5(%{nnxpuqqqywtryqvu`JFGi0okx8!zPRC9jT_JE2G6)ck~_r]XT_EtGT_Ep&U#rO=-Xr-.8OTLCDS;Et4C]-qeUl#*SAdEtU(hDUxtdSZmWpZ.!j3O@:k6$Ts^DiYH__T}OSzAxgF(Sw(K{+H%bCgXQZPoKrAs_aoeXYiTpsi=mpbjmuEGJCr_VC3?;iYpV86T8oby$XhsLPJWJLMHT-Ll{?D}KSYx%hpUqYBZURE1NkGpHpq,GtkYx;t*)W/8#++#&02^+cLTyz3bL/=0b;V^{b_BZSlk+d-HtFzqAYIvZ7VBo@!`QBU^DqXuA.o;7!e^b^QGa^55msZ[Azy$BBJZLPX-po&0hdJG((hTYA]JKC#1t!xHF$D}2%m{H&P{WQVKd*jz}PFmk8Lj^$!YZC2kdFWbWWQJAVWF3+RX1@nDv&L^ThtnIORVXF2Db,)l!NaI{H6b_+NIOTSZ!T#uSsCvDhOukCUy^vuosj[^^ST]q+D;gw4(]sDu0L:P`QBU^DS7k=?62@@h@o5;e@y9)yHUY}l=E:d){P0{UX*UlH2^Xd'%888 569!(Fn$k{8}8Y,UQA5mZLZKpQlO^HQwrwi5KB7{NMs?rORJCokL,_oITs{jEqJeQ+a.0$/=wfCy_Wc3h)(?%15cP#P6}Iq@]QgPQQJK7kV_k{^B%h[dM6#N[XV_pi6TO,YqMb#2ELCGY%$LoNMJ^G_B6&dd1p^9:hAhH5],h}KZZG@I]X^BM3Rt7xv^D5}lUH- 3&.*!!3z@.IM(qm6lZa_4^?`QBU^Dl^ZdQFm2Kc:aDKOB##$eFJHEyEHPL[{R&i0p!WRReN=UvYN[LP*,trVrhQRn+i,H%P0IdNBC)aK[&U}{%ctDGqRptUrRbKJP7EqvjD[oA3E-(X2pJQEAkISUCdSRRIH\x17?U%G[H_thpdhveBHITnIDMZEC^(!n:{qyOUKSXJHdnH0M{Gs^Pwpy-dc.olIcNGR~S59EU__+R+j&5^U7K}lbX_BOB_B^\r`L_FHYBlCWKN//GSNLsfc3gt${K)GNNynGRhU#`ZIVGedR0HzyED?Mj3-S)dW-@GHPWEGG+_,O0@%:h-fx6%NDYMPRmx}&ruk7dw$E+L#TwW:*w[ZZQW@GmEg&jg8URbh(8n$N;:3>&j+V&s3Qn#==k)BvdkiWz@GZWZGZF}@W\x1axPGRPcFxZWF[PBQ/O.[zvmj$favcn(#oar3vZd=+,_XAgo_QDHU)2HadE]V[vVZ%DqV3i@NcC!}z3u[X#+>:2*?.7+f6:T@6^;/5p,8rQCCHuCTPOEClnupZSl3N#}hRA^9!!L7r:)*3?bFp:q8{?~S[WUT^oJ]H[^_i_V_YNSUTtYQ]_^Te@WBQTUcU\\USDY_^]QXABc:1yvdI$XCKJsyxt;n}L_HCYvu[yf5=Hg#=kAdjOde8jT5/6TQDu0ae,]l}g9e*hJGGIJH@-m.}tQ-+O[SH%JgSRI\x06dS_\x06aIJB\x06sVATGBCUrQS[WB_E^TdBQ^C@QBU^SIjIXDG^_N{DXB_BDEI_%n_&iJH@LYD^EO\x7fYJEX[JYNEHRkJINZC[majWD,8nonl^6)JmZOSV\\^KZ[lKPM^XZ{#vL7cTBTE~_bAPF_s{[dyF7-()qED_\x10uAEY@\x10rUCD\x10d_GUBCdLOG\x03vSDQBGFPfb7GTfm#v_TF/gC^eQr9vC8a)eM(@o[hKIAMXE_DN~XKDYZKXODISsVATGBCeIURUuHGVUNIRXWhDEENH_BYzKF:3@GJRH,Tu`TUNcTXeH@LNOEtQFS@EDR|oHBC^dCNGPOIT2*Xdg5XsqX[I2Z*u,9K%jbjg5b#rV412)=sRv^m%^zR^O+OA,fywzY[S_JWMV\\lJYVKHYJ]V[A~bgBX_gJRD^_Ek@(i@@B^njIKCOZG]FL|ZIF[XIZMFKQwTEYZCBSe_LS%RrpfKn3Z0mHHxCKK@I(rM4^_}wpP1%`PR_VgJCV$g[k[f+l]z(DlIIyLOJ+Db{$R4o1y%b13uCRoAHITCoHBC^CUCE00soM@@NMOG]T{$=C*HdSz&r\x1d,+8-067*SAl]5pm9Jx[kLSPKi[G!Ti,blnw#q;z?kmVLZQD/pa*{B=Gh5$kN_8~DC^S^C^B\x11|PCZTEazh)(lNTRDdOUDSdO=l_sX-s*#'21?6Ti;-qsRm6Dby_ZrV83!?2uK{e_3k^GO8V3v=ppKLSq?6EMz=Peh1HK[,qa^BXEX^_VCpzrD-FO8!aoI_Hs^ADxWW^C-%@B5IU\x06 367|r\x017>>|r\x02 =4;&|zXI~UTQYOXSTI?Q!2]@,fBEBFBQNb9-.d$;hSyf;C]NC/,.nWx+5TN7Qrz[ce@@pKCCHAgHsV$x+ANX1bU]_DUC@-aZ*.6X$rq/X}LQ]qhE@NGDLG]{O.&VnZYH^GKvHVCl6JGQs-mz[eIAF5%$^}ZpPi1wiu0R/xITX=d[1GHS^*4wDd/mepX[SbGPEVSRdR[RTC^XYz@KE@GN.}6.3k&+v]qm2gVKG`ZIVN9{kQDUh2Ov],'5_pPNX9KG]5hzxGGzbX_BOB_B^\roT]L^^DCJ`sT^_Bx_R[LSUH,h4jO*!3FiyAfnfQATHGxTeKsBQFMW=HP*yK[?TjYJe`QBU^D_gj@LQKZlN,C3q_VWJ]lP]U]k]LLQV_Kg_F^Cg(s!W+ux3S!!1dsDPTDRUtQFS@EDbNRURtXDCi-/&mYGlGG:)$8W|@AKCFM[[:^2nffi7p}YKQV_kLAT]hAxO?*S]ITVi|y4g1CX)2RQYkyFZ@]@FGA76I({Mq=M|G@]jFG][FEhJ]@FGCzrrK]Q/UoGffbNV]!8wF[W`LOLQ\x10:r5/?PQFm_[JUTIZ1c6s*nB,z%kVKSZ^xjQ(s#pAEdTaoJJzAIIBKh&K^}%HM8FM_tC2+C;THES4V{4?tEVAJPonZb_HP}q?LKT_M#yP@vHoDkMrL0@rrFB^GcX@RE{ugOqB@3,7+24 $4!/W.Fkh=|^DBTsDEE^_\x00r]XRZrNNJ}_Natr@F]nB?nJCH2+]4j[mtV[,=F#~_r]XT_EtGT_Ebi?d~YARYCXENdYVGD_XCkZGK|PSPM\x0c];N{L-HbE^cUBFYSUf+&F{6McAVAVTZ@GVAfCWRGVCVU[R-izj-)h]dQyAxk1zddl'+4-! em{SuWMK]zMLLWV\t{TQ[SzL]oFEML[7NKf^Mdld@RHOFrUXMDHtv5}Ps^VZXYS\x17bGPEVSRDFM_Y,[gY7sybs;[#dUHDdBQ^C@QBU^SId@RHOFrUXMD=a@jf,%.))dx@-R:k7eP9o@]OSx:h$#6JmwDC~ZNKJD_)2pBC-3@bbXj,8);e?^(?Ak!ZmN_C@YXI|C_EXECBpJYF1$GWO:BuA4J^xITXum@EKBAIBXlFvPFQjMSVWpFQUJ@F7<.[}(k)DAM_J{WaxTI^|NRJSD.IjPipDE^t@DXAe^FTCBsPA]^GFWa[HWKI(qED_`YS[E@s_Y^CbSSOZpWQLHFnLGF<)*$-5w!7u.KrSyhEXNOXyCPOzCROFcGUOHAbOTCEROIHaEIOMdIJMD95#X;wLKTm#yW^N16DfJqEVZR}wG5AAf2%5gVVJ_uRTIMCkIBC|SH_[Fd,+:;35vGz]XJt[bsIqm-hnIoPLVKVPQZf#_oVhnJXBELoBYNH_BDEk_^Eh_^^EDiEFEXgNOUQlV1!OP,x9yMLWj]ZQJLP/J+}LQ]qhE@NGDLG]uYQVMMu*ys(bz[hJ[|J]YFLJRpDQveBHITnIDMZEC^yO^fCHXKXS2s#8uDYUm@CDMaOL&zvGTCHR8h&I?NZY{hOEDYcDI@WHNSmT^VHM~RQQX^I.eSTTCHRtCGJKoBwF[W{bOJDMNFMWtNITYTITHkITVT70Ca.$r)u&pOW8\x00;<#sus\x0161:!';vAFMVPLePPAITPr]ZPr]FG@w\\]XPuWFaW@D[QWMpxQjPWJGJWJVuWJHJcROCov[^PYZRYCbSNBnwZ_QX[SXBzKVZ}fH$pAd)bjHEEKHJBWXj{TqFMGFQpWFSSFG\x08$&)*?kmk\x0c.*9=6$BEQgdugjkSxITXoC@C^\x1fxCM~DC^S^C^B\x11yDS|M^IBX42CT57fpYXB$3#0t0fXtaGQF}ZDA@`MDQxJN_@Al@AIFHF~RQROnjhkP=CUyCDYTYDYE\x16~CTi^U_^IhO^KK^_u]J_]\x18nK\x18uWZKf@VAz]CFGgJCVo@[L.miFc3NM5rPJLZrPIZRZQKqWAVmJTQPp]TAdPQJ\x05h@WB@bB8tRDShOQTUuXQDlVWB@jMYo;+pOhGBH@i^__DE\x19}DNFX]x]ILYH`MWTHE]kV@AVeLMWd!Y]jLHXq@SDOUC=Ak)FkP^QMzVWMKVUlKUPQ`KA@AHnx^UO^I.pv%owkGZFMZzILA][yUHT_Hh[^SOIf]ZEvf5r^O#&|HIR\x1doX_TOIUhJPV@`KDGI@A`]@XQg.#l/=pfNUI@LlDEHTLr}ALTH_xCDY^tNO8^ew_Krr=mZLZKpQlO^HQ*+;54';(?%8:g]NQ;*uV#nj9nBCCHNY_F*y{dFWbWWQJAVWFnLAAOLNF&8!,{XJJA|J]YFLJk_^ExOHCX^B8RF[Yfsv;@^$mfPXEw^CrYX]UuWFsFF@[PGFW~DC^S^C^ByDSa[HWQcDVr^k_ZGLGZ^LES{%sx_ADErYP_VTUe@WBQTUs\\YS[nUOYR};2,e_ckCXDMAaIHEYA`YS[E@bQTYECi_XXODIS~SZOrHCMHOFYR{aC1<%4#&(3*7!1tFBSLMpTJMDqZYTWZcX_BEcG@GCGTKeKWrJSXOhNXOtYlIIi_B]IBZCeGPMRAwHKPWsWE_XQeBOZSoNXHYB[_BDEgFP@QJSWJLMODV;g%N{,V-hL^DCJ~YTAHO@COGz#O#9u[PB)kR)Gv+N?(:+?'4<57&wHSUT@MtRDSrIQCTeIH@OA5>,LgdFU;X=sHBIuDYUX(IRTS2zcCn]dy[YKDB^P]EXFdUFQZ@5wymDGSNLsfc3=Px}YKQV_kLAT]BVFS=eJ#}t@$+&6&))-$-'fYE_B_YXh+vT@]_}TTAWF}ZA|J]YFLJn_BNyUVUH\tQEXZxQQDRC@TIKi@@UCRtYQXYAf3nYsZYK/KD;S}]ITVt]]H^OXXC@U^W%*Q/$6+/!9W9yvTNH^~UO^IoKGACWoh%U[PY[JMU@NILXEGeLLYO^xCDYnBCKDJqSBeSD@_US6)<97-61>%pRCdREA^TRaTMG-{!uBy~JKPR^KVPQ{%#li}}?1euWMK]}VL]J('$( uK=iCtVG`VAEZPVkZGK|PSPM\x0cfETB[yPCPYeQPK\x04iAVCAs]DCtWWTREaWF~[P@S@KO[FDfOOZL]|^Oh^IMRX^~VMQXT{VU]`QL@w[X[F\x07,GmkhNv/:SGZXgrw!@(==-7>6<$l]@LtYZ]TiJ[MToTSNcADD\x08i]ZI=7  ?!#&:nrhOITP^r~HAHNYyLO,/>(1M_E^uTWPD]EcE}^RP]sDBHaQS^WfKBWwLKTQ=Gr^}TVT_UPCHEQLNp@BOF`TPLUg@VQhXI^^U|NRoSRXPU^HHpUUe^VV]Te@@fQPPKJq@]QiDG@IdUFQZ@{qFuITRiTBCTpUUsDEE^_z@SLQC%{JaPMAyTWPYmAG@xOB[KkNN~EMMFOhMM}FNNELhJ]@_H]LMiVJPMPVWsdXYS[^UCCaWFt]^VW@bSNBzWTSZeJQFqBWFqmgKVJAVo[_CZZONiOXnSNV_`VGGZ]T@$2)>;',:a^BXEX^_mY]AXXMLpFWWJMDP$/=F7-pAkTHRORTU}LQ]z@SL)<+0&&(4BO^}Jc#9#2z]yjp:plvQWJN@zXUU[XZRnrxTIU^I\x9a\x99\x99\x99\x99\x99\xb9?\x00\x00\x00\x00\x00\x00\xd0?ePSfXUEYzXARbY^CvS]RNST]eGJJDGEMmRNTITRScVU`^SC_MFTD9*,Ie^FINY~\x13oPLVKVPQ$9$89#$={YTTZY[SgEHHFEGO\n\xd7\xa3p=\n\xe7?fD]N~EB_WCWCVw%vuWZZTWU]jHMM`TS@`OUH\x0c`gjcROCd^MRvTAPRZGL.8))43:.\x9a\x99\x99\x99\x99\x99\xa9?`|vZG[PG\x00\x00\x00\x00\x00\x00\xf8?9/6+4szwyO^^CDMY\x00\x00\x00\x00\x00\x00\xe0?`GZ]HGJL333333\xd3?~RSIXSI??;,5'-VB_]bwrrSEBDYO<+8+<=+AF^LJAJvWTSG^FjKHO[BZa@CDPIQoCBBIOXnBCKDJWyUTT_YN}OKZEDYNZGEzojiEDDOI^r]GZrUXN[XV_mQwVURF_GbC@GSJRuTWPD]EDYC^NACZM^MZ[MnQKQZT]s_BUwEY]ITVi|yB^E@W_E`ABEQHPnOLK_F^PDY[dqtqCGVIHU{WVV][L_KVTk~{@TIKtad`[RAVWhYJ]VL]AEHKV# 1'>aFTUIDEeBD_XQvZXWTAq@WSFWhYNJ_Nf@VAzWbYASDENJXEPHw[ZR]SlIIyLOxNHYN_`EEu@C+/-/1,NIOTSZxOB[K]%(&%=$l@BMN[rI@SDEnKK{NMdUFQZ@dMMXN_eIKDGRSH_V@PfNUI@L}L_HCYq]_PSFwFQU@QCG_BTCvGTCHRnYTM]KvZXXZ[`QFBWF{WTWJo ;#,+<|TOSZVq@SDOU)664*>kI^CEDqLQI@FPH[[/:97>|D]EX]^OY@oROW^pMPHAoS^V^bRP]TXRXXNbFJLNfloorgZG_VyDYAHyIKFOO@COG\x0b6+3:jNBDF2'$*#@CRD]9=%8.74%3*=(+%,(+:,56# .'b_BZS`LOLQpHQITmIECA{RAR[jMHx1'21?6RQ@VOkVKSZQDGI@uAR^V{F[CJEFWAX\xad\xf7 3(>6+~RNItXPW\x19#0/uONN\x14\xcfr\x0biEMJ\xdfou\x96TBJWuZV^mGKJhSTK{GJR~TXY)/+/d@TQ\x0b&\x95\xadg]NQ\xf3\x99`KqTG^d^MR}FA^{@GXoS^F`ULF\x152\xb1\xaeta\xd1\x0ec\xfa\xb5\x04NXPM\x85\x83\xa0\"cJI[}TUOyU]Z>3)4FPJK\x8b^\xcc\xd9iZI^q@]Qw^_E|UVD`IHRkZGKvYBU\x1a\xb6s iXEI; 52\xe7\xb3'\x02gh\"\x04C[r\x1da]PHnJ^[~OR^\x1e\xa8\xd7\x03uDYUnURM\x0e\x92\x8f\xdesZ[A\xf1mp!jCBXt\xa13&VNMR\x1f\x03\xa4\x81yVZReLMW}W[Zj@LM\x88\xd4\xbfA^\x17s>wXCTeZYB!x\xf9\x00FPXE\xf1RK\x01-*!.5+(/OTSNeYTLSXJ@KY +9:1#7<.d_@+;*g]o2%0vYN%.<n'l1:(5<7>5'0;).%7+ 238*gHUAJXCHZ?4&minyVAmJOQZHjlk92 ,'5HAJZQCOXMDO]K@R8/:XSAT_M%,'V]O/$6~Dv\xb8\x0b,\x01\xa4\x01cN\x8c\x1cxT3O\x01{n,PrYJ\n]7M:^\x96G.f1Q%\xbe\x17\x06)8t\x1d@U\r\xe8Z\x1e\x07-sK_\x1bo2\x00+\x19\x86V6\x02}z?0<Ei9\x11"))
jO, jU, j1_1, jC, j0, jx, Workspace, jp, jl, i3, i0, j_, jP, MergeProgressionConfig, jM, jJ, TowerConfig, jB, jz, jv, jr, jo, jk, jX, jf, jW, i9, i6, jR, jQ, PickupCollect, ji, jd, ja, i7, i5, jA, jw, i_, iX, iU, iS, iP, iO, iN, iK, jV, jZ, jI, jE, jS, jY, iV, iZ, iI, i4, iT, iM, jt, jb = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local jT = 180
local uICorner3
repeat
    j2 = (jT * 21 + 12) % 29 + 1
    if j2 <= 15 then
        if j2 <= 8 then
            if j2 <= 4 then
                if j2 <= 2 then
                    if j2 <= 1 then
                        if ((iP or not jZ) and (not jZ and jU) or (iP and jZ or not jP and iS)) and (iP and not jP and (jP or not jP) and (jZ and not jP or not jP and iS)) or not (((iP or not jZ) and (not jZ and jU) or (iP and jZ or not jP and iS)) and (iP and not jP and (jP or not jP) and (jZ and not jP or not jP and iS))) then
                            i0 = i3:CreateWindow({
                                Title = "Merge Vs Mobs",
                                SubTitle = "Ouroboros Hub",
                                TabWidth = 160,
                                Size = UDim2.fromOffset(560, 380),
                                Acrylic = false,
                                Theme = "Dark",
                                Image = "rbxassetid://91400086538074",
                                MinimizeKey = Enum.KeyCode.RightControl
                            })
                        else
                            i3 = i0:CreateWindow(160)
                        end
                        jT = (jT + 163) % 232
                    else
                        if (iN and not jp or not iN and not jp or (not jC or not jC) and (not i9 or jp) or (not iN or not i9) and (jC or not i9) and ((jp or not i9) and (not jC and not iN))) and not (iN and not jp or not iN and not jp or (not jC or not jC) and (not i9 or jp) or (not iN or not i9) and (jC or not i9) and ((jp or not i9) and (not jC and not iN))) then
                            i0 = "Combat"
                            j_ = function(aq)
                                pcall(function()
                                    i3.Notify(i3, { Title = "Ouroboros Hub", Content = aq, Duration = 4 })
                                end)
                            end
                        else
                            j_ = {
                                Main = i0:AddTab({ Title = "Automation", Icon = "swords" }),
                                Shop = i0:AddTab({ Title = "Shop & Rebirth", Icon = "shopping-cart" }),
                                Combat = i0:AddTab({ Title = "Combat & Gear", Icon = "sword" }),
                                Settings = i0:AddTab({ Title = "Settings", Icon = "settings" })
                            }
                            iV = function(aq)
                                pcall(function()
                                    i3.Notify(i3, { Title = "Ouroboros Hub", Content = aq, Duration = 4 })
                                end)
                            end
                        end
                        jT = (jT + 221) % 232
                    end
                elseif j2 <= 3 then
                    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 30), string.byte(tostring(jY))), 23), 3654049419), 1547189322), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 30), string.byte(tostring(jY))), 23), 640917876), 72695237))), 1547189322), 72695237) == bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 30), string.byte(tostring(jY))), 23) then
                        jP = require(jU.Packages.Packet)
                    else
                        jU = require(jP.Packages)
                    end
                    jT = (jT + 105) % 232
                else
                    worker3 = (vector.create((jT * 7 + 1) % 11 + 1, (jT * 7 + 4) % 13 + 1, (jT * 9 + 9) % 17 + 1))
                    j4 = (vector.create((jT * 1 + 4) % 11 + 1, (jT * 10 + 7) % 13 + 1, (jT * 12 + 6) % 17 + 1))
                    j5 = (vector.create((jT * 7 + 9) % 11 + 1, (jT * 8 + 10) % 13 + 1, (jT * 9 + 3) % 17 + 1))
                    local j6_1 = (vector.create((jT * 2 + 3) % 5 + 1, (jT * 1 + 6) % 7 + 1, (jT * 3 + 7) % 9 + 1))
                    if vector.dot(vector.cross(worker3, (vector.cross(j4, j5))), j6_1) == vector.dot(j4 * vector.dot(worker3, j5) - j5 * vector.dot(worker3, j4), j6_1) then
                        MergeProgressionConfig = require(jU.Shared.Config.MergeProgressionConfig)
                    else
                        jU = require(require)
                    end
                    jT = (jT + 105) % 232
                end
            elseif j2 <= 6 then
                if j2 <= 5 then
                    worker3 = {
                        "xspieyp",
                        "fgwyxkwdsitv",
                        "ksqzxlgpz",
                        "scexpqmfdkm",
                        "zde",
                        "chacrumxvq",
                        "essvjdam",
                        "tkplusgcsfh",
                        "wgxd",
                        "sgvicxk",
                        "merepxc"
                    }
                    if worker3[(jT * 25 + 91) % 11 + 1] < worker3[(jT * 25 + 91) % 11 + 1] then
                        worker3 = TowerConfig.Shared
                        jU = require(worker3.Config)
                        j4 = TowerConfig.Shared
                        j5 = j4.Config
                        local WeaponConfig = j5.WeaponConfig
                        jP = require(worker3)
                        jB = require(TowerConfig.Shared.Config)
                        jJ = jz(WeaponConfig, j4, require)
                        jM = jz(TowerConfig, j5, jz.NumberU8)
                    else
                        jM = require(jU.Shared.Config.UnitConfig)
                        jJ = require(jU.Shared.Config.WeaponConfig)
                        TowerConfig = require(jU.Shared.Config.TowerConfig)
                        jB = jP("MoveUnit", jP.Instance, jP.NumberU8)
                        jz = jP("PreregisterUpdate", jP.Instance, jP.NumberU8)
                    end
                    jT = (jT + 47) % 232
                else
                    worker3 = (vector.create((jT * 4 + 7) % 11 + 1, (jT * 9 + 1) % 13 + 1, (jT * 10 + 2) % 17 + 1))
                    j4 = (vector.create((jT * 3 + 3) % 11 + 1, (jT * 1 + 7) % 13 + 1, (jT * 1 + 7) % 17 + 1))
                    j5 = (vector.create((jT * 6 + 1) % 11 + 1, (jT * 10 + 6) % 13 + 1, (jT * 14 + 17) % 17 + 1))
                    local j6_3 = (vector.create((jT * 4 + 5) % 11 + 1, (jT * 4 + 4) % 13 + 1, (jT * 11 + 3) % 17 + 1))
                    if vector.dot(vector.cross(worker3, j4), (vector.cross(j5, j6_3))) == vector.dot(worker3, j5) * vector.dot(j4, j6_3) - vector.dot(worker3, j6_3) * vector.dot(j4, j5) then
                        jv = jP("UnitControlAction", jP.String)
                    else
                        jP = jv(jv, "UnitControlAction")
                    end
                    jT = (jT + 105) % 232
                end
            elseif j2 <= 7 then
                worker3 = (vector.create((jT * 6 + 1) % 11 + 1, (jT * 8 + 11) % 13 + 1, (jT * 14 + 14) % 17 + 1))
                j4 = (vector.create((jT * 6 + 6) % 11 + 1, (jT * 4 + 12) % 13 + 1, (jT * 1 + 15) % 17 + 1))
                j5 = (vector.create((jT * 4 + 3) % 11 + 1, (jT * 9 + 12) % 13 + 1, (jT * 9 + 4) % 17 + 1))
                if vector.dot(vector.cross(worker3, j4), j5) == vector.dot(vector.cross(j4, j5), worker3) then
                    jr = jP("RebirthAttempt", jP.Nil)
                    jo = jP("UpgradeClick", jP.String)
                    jk = jP("RequestUpgradeCosts", jP.Nil)
                else
                    jP = jk(jk, jk.Nil)
                    jr = jk("UpgradeClick", jk)
                    jo = jk(jk, jk.Nil)
                end
                jT = (jT + 105) % 232
            else
                worker3 = {
                    "koavi",
                    "rlxt",
                    "xmzawwye",
                    "pvzm",
                    "urkbpxxbsbq",
                    "rvtvhu",
                    "rpuzc",
                    "kkoxasy",
                    "ysoqgss",
                    "cer",
                    "apqgdyof"
                }
                j4 = worker3[jT % 11 + 1]
                worker3 = j4:len()
                j5 = (j4:gsub("(.)", "%1%1", jT % 3 % 2 + 1))
                if worker3 <= j5:len() then
                    jX = jP("UpgradeCostsSnapshot", jP.Any)
                else
                    jP = jX("UpgradeCostsSnapshot", jX.Any)
                end
                jT = (jT + 192) % 232
            end
        elseif j2 <= 12 then
            if j2 <= 10 then
                if j2 <= 9 then
                    if (jT * 3 + 4) * 21 % 4 == ((jT * 3 + 4) * 21 + 3) % 4 then
                        i9 = jW(jW.Nil, "RequestInventorySnapshot")
                        jf = jW(jW.Any, jW)
                        i6 = jW(jW, jW)
                        jP = jW(jW, jW)
                    else
                        jf = jP("RequestInventorySnapshot", jP.Nil)
                        jW = jP("InventorySnapshot", jP.Any)
                        i9 = jP("InventoryAction", jP.Any)
                        i6 = jP("WeaponSwing", jP.Any)
                    end
                    jT = (jT + 192) % 232
                else
                    worker3 = (vector.create((jT * 1 + 1) % 11 + 1, (jT * 9 + 4) % 13 + 1, (jT * 11 + 11) % 17 + 1))
                    j4 = (vector.create((jT * 2 + 8) % 11 + 1, (jT * 3 + 2) % 13 + 1, (jT * 7 + 9) % 17 + 1))
                    j5 = (vector.create((jT * 1 + 2) % 11 + 1, (jT * 2 + 5) % 13 + 1, (jT * 6 + 14) % 17 + 1))
                    if vector.dot(vector.cross(worker3, j4), j5) == vector.dot(vector.cross(j4, j5), worker3) then
                        jR = jU:WaitForChild("Remotes")
                    else
                        jU = jR:WaitForChild("Remotes")
                    end
                    jT = (jT + 105) % 232
                end
            elseif j2 <= 11 then
                worker3 = {
                    "xxeo",
                    "yvuyzouegsi",
                    "abwa",
                    "gjr",
                    "vurqfwiw",
                    "nfaipqyapk",
                    "ugfzwv",
                    "xuiabsgc",
                    "zblkdmgtxm",
                    "dpptlucax",
                    "pkfroswncmpl",
                    "freiyzxtq",
                    "pwcn"
                }
                if worker3[(jT * 18 + 105) % 13 + 1] <= worker3[(jT * 18 + 105) % 13 + 1] then
                    jQ = jR:WaitForChild("PickupUpdate")
                else
                    jR = jQ:WaitForChild("PickupUpdate")
                end
                jT = (jT + 192) % 232
            else
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 19), string.byte(tostring(i7))), 24), 3272096065), 857798573), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 19), string.byte(tostring(i7))), 24), 1022871230), 1709540543))), 857798573), 1709540543) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 19), string.byte(tostring(i7))), 24) then
                    iI = PickupCollect:WaitForChild(PickupCollect)
                    jR = fn1140
                    iZ = fn1076
                else
                    PickupCollect = jR:WaitForChild("PickupCollect")
                    iZ = fn1140
                    iI = fn1076
                end
                jT = (jT + 192) % 232
            end
        elseif j2 <= 14 then
            if j2 <= 13 then
                if jT * 69495407 + 7 + 7 <= jT * 69495407 + 7 + 7 + 2 then
                    ji = false
                    jd = false
                else
                    jd = false
                    ji = false
                end
                jT = (jT + 18) % 232
            else
                worker3 = (vector.create((jT * 6 + 5) % 11 + 1, (jT * 5 + 9) % 13 + 1, (jT * 13 + 17) % 17 + 1))
                j4 = (vector.create((jT * 7 + 1) % 11 + 1, (jT * 10 + 8) % 13 + 1, (jT * 10 + 11) % 17 + 1))
                j5 = (vector.create((jT * 3 + 8) % 11 + 1, (jT * 2 + 7) % 13 + 1, (jT * 9 + 12) % 17 + 1))
                local j6_4 = (vector.create((jT * 5 + 7) % 11 + 1, (jT * 6 + 7) % 13 + 1, (jT * 8 + 13) % 17 + 1))
                if vector.dot(vector.cross(worker3, j4), (vector.cross(j5, j6_4))) == vector.dot(worker3, j5) * vector.dot(j4, j6_4) - vector.dot(worker3, j6_4) * vector.dot(j4, j5) + 5 then
                    i7 = false
                    ja = false
                    i4 = {}
                    i5 = fn879
                else
                    ja = false
                    i7 = false
                    i5 = {}
                    i4 = fn879
                end
                jT = (jT + 134) % 232
            end
        else
            worker3 = (vector.create((jT * 4 + 7) % 11 + 1, (jT * 2 + 7) % 13 + 1, (jT * 9 + 6) % 17 + 1))
            j4 = (vector.create((jT * 4 + 4) % 11 + 1, (jT * 5 + 2) % 13 + 1, (jT * 3 + 16) % 17 + 1))
            j5 = (vector.create((jT * 1 + 3) % 11 + 1, (jT * 6 + 4) % 13 + 1, (jT * 1 + 2) % 17 + 1))
            local j6_5 = (vector.create((jT * 7 + 8) % 11 + 1, (jT * 6 + 1) % 13 + 1, (jT * 6 + 7) % 17 + 1))
            if vector.dot(vector.cross(worker3, j4), (vector.cross(j5, j6_5))) == vector.dot(worker3, j5) * vector.dot(j4, j6_5) - vector.dot(worker3, j6_5) * vector.dot(j4, j5) + 5 then
                iM = fn1648
                iT = fn55
            else
                iT = fn1648
                iM = fn55
            end
            jT = (jT + 192) % 232
        end
    elseif j2 <= 22 then
        if j2 <= 19 then
            if j2 <= 17 then
                if j2 <= 16 then
                    if (jT * 2 + 4) * 13 % 3 == ((jT * 2 + 4) * 13 + 2) % 3 then
                        i_ = 0
                        worker3 = fn1597
                        jw = worker3
                        jQ = fn1930
                        j4 = jb.OnClientEvent
                        j4.Connect(j4, jb)
                        task.spawn(worker2)
                        task.spawn(worker3)
                        task.spawn(worker)
                        jt = task[nil]
                    else
                        jw = 0
                        jt = fn1597
                        jb = fn1930
                        worker3 = function(bH, bI, bJ, bK, bL, bM)
                            local lO = not fn282(bH, 527583337) or not (function(gK, gL, gM)
                                if type(gK) ~= "string" then
                                    return false
                                end
                                if #gK ~= gL then
                                    return false
                                end
                                local gN = 5381
                                local gO = buffer.fromstring(gK)
                                local gP = 0
                                while gP <= gL - 4 do
                                    local gQ = buffer.readu32(gO, gP)
                                    local gN_59 = bit32.bxor(gN, gQ)
                                    gN = bit32.band(gN_59 * 33, 4294967295)
                                    gP = gP + 4
                                end
                                while gP < gL do
                                    local gR = buffer.readu8(gO, gP)
                                    local gN_60 = bit32.bxor(gN, gR)
                                    gN = bit32.band(gN_60 * 33, 4294967295)
                                    gP = gP + 1
                                end
                                return gN == gM
                            end)(typeof(bJ), 6, 2175009567) or not (function(gK, gL, gM)
                                if type(gK) ~= "string" then
                                    return false
                                end
                                if #gK ~= gL then
                                    return false
                                end
                                local gN = 5381
                                local gO = buffer.fromstring(gK)
                                local gP = 0
                                while gP <= gL - 4 do
                                    local gQ = buffer.readu32(gO, gP)
                                    local gN_57 = bit32.bxor(gN, gQ)
                                    gN = bit32.band(gN_57 * 33, 4294967295)
                                    gP = gP + 4
                                end
                                while gP < gL do
                                    local gR = buffer.readu8(gO, gP)
                                    local gN_58 = bit32.bxor(gN, gR)
                                    gN = bit32.band(gN_58 * 33, 4294967295)
                                    gP = gP + 1
                                end
                                return gN == gM
                            end)(typeof(bK), 6, 472614556)
                            if lO then
                                return
                            end
                            local lO_1 = (function(gK, gL, gM)
                                if type(gK) ~= "string" then
                                    return false
                                end
                                if #gK ~= gL then
                                    return false
                                end
                                local gN = 5381
                                local gO = buffer.fromstring(gK)
                                local gP = 0
                                while gP <= gL - 4 do
                                    local gQ = buffer.readu32(gO, gP)
                                    local gN_55 = bit32.bxor(gN, gQ)
                                    gN = bit32.band(gN_55 * 33, 4294967295)
                                    gP = gP + 4
                                end
                                while gP < gL do
                                    local gR = buffer.readu8(gO, gP)
                                    local gN_56 = bit32.bxor(gN, gR)
                                    gN = bit32.band(gN_56 * 33, 4294967295)
                                    gP = gP + 1
                                end
                                return gN == gM
                            end)(typeof(bM), 6, 472614556) and bM ~= jp.UserId
                            if lO_1 then
                                return
                            end
                            if iT(bK) then
                                PickupCollect.FireServer(PickupCollect, bJ, false)
                            end
                        end
                        j4 = jQ.OnClientEvent
                        j4.Connect(j4, worker3)
                        task.spawn(worker2)
                        task.spawn(worker)
                        task.spawn(function()
                            while true do
                                if ja or i7 then
                                    pcall(jb)
                                end
                                task.wait(0.25)
                            end
                        end)
                        i_ = false
                    end
                    jT = (jT + 105) % 232
                else
                    worker3 = { "gqkj", "zftvbm", "sdlh", "ztwrbq", "mlfzq", "nehgaeitgz", "clknwwqpqot" }
                    j4 = worker3[jT % 7 + 1]
                    worker3 = jT % 3 + 2
                    j5 = (j4:reverse())
                    local oZ = worker3
                    worker3 = j4:len()
                    local j6_6 = (j5:rep(oZ))
                    if worker3 >= j6_6:len() then
                        i9 = false
                    else
                        iX = false
                    end
                    jT = (jT + 105) % 232
                end
            elseif j2 <= 18 then
                if (jT * 1 + 3) * 9 % 4 == ((jT * 1 + 3) * 9 + 8) % 4 then
                    iU = false
                    iS = false
                else
                    iS = false
                    iU = false
                end
                jT = (jT + 134) % 232
            else
                if (jT * 2 + 7) * 13 % 3 == ((jT * 2 + 7) * 13 + 8) % 3 then
                    iO = false
                    iP = false
                else
                    iP = false
                    iO = false
                end
                jT = (jT + 76) % 232
            end
        elseif j2 <= 21 then
            if j2 <= 20 then
                worker3 = (vector.create((jT * 1 + 4) % 11 + 1, (jT * 7 + 13) % 13 + 1, (jT * 14 + 11) % 17 + 1))
                j4 = (vector.create((jT * 7 + 2) % 11 + 1, (jT * 6 + 3) % 13 + 1, (jT * 1 + 3) % 17 + 1))
                if vector.dot(worker3, j4) * vector.dot(worker3, j4) <= vector.dot(worker3, worker3) * vector.dot(j4, j4) then
                    jV = { "ActiveSlots", "PickupRadius", "FireRate", "Damage", "CoinValue", "GemChance" }
                else
                    iZ = "PickupRadius"
                end
                jT = (jT + 192) % 232
            else
                worker3 = (vector.create((jT * 2 + 9) % 11 + 1, (jT * 8 + 9) % 13 + 1, (jT * 10 + 3) % 17 + 1))
                j4 = (vector.create((jT * 2 + 6) % 11 + 1, (jT * 8 + 1) % 13 + 1, (jT * 5 + 17) % 17 + 1))
                j5 = (vector.create((jT * 4 + 9) % 11 + 1, (jT * 8 + 6) % 13 + 1, (jT * 10 + 16) % 17 + 1))
                if vector.dot(vector.cross(worker3, j4), j5) == vector.dot(vector.cross(j4, j5), worker3) + 1 then
                    jX = { "BaseHealth", "SpawnLevel", "SpawnUnit" }
                else
                    jZ = { "SpawnLevel", "SpawnUnit", "BaseHealth" }
                end
                jT = (jT + 163) % 232
            end
        else
            if jT * 79034979 + 12 + 3 >= jT * 79034979 + 12 + 3 + 1 then
                jE = {}
                jI = {}
            else
                jI = {}
                jE = {}
            end
            jT = (jT + 105) % 232
        end
    elseif j2 <= 26 then
        if j2 <= 24 then
            if j2 <= 23 then
                worker3 = (vector.create((jT * 1 + 5) % 11 + 1, (jT * 6 + 9) % 13 + 1, (jT * 2 + 2) % 17 + 1))
                j4 = (vector.create((jT * 6 + 4) % 11 + 1, (jT * 6 + 8) % 13 + 1, (jT * 5 + 3) % 17 + 1))
                if vector.dot(worker3, j4) * vector.dot(worker3, j4) <= vector.dot(worker3, worker3) * vector.dot(j4, j4) then
                    jO = game:GetService("Players")
                else
                    iT = game:GetService("Players")
                end
                jT = (jT + 221) % 232
            else
                if (jT * 2 + 9) * 10 % 3 == ((jT * 2 + 9) * 10 + 1) % 3 then
                    jE = game:GetService(game)
                else
                    jU = game:GetService("ReplicatedStorage")
                end
                jT = (jT + 221) % 232
            end
        elseif j2 <= 25 then
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 29), string.byte(tostring(jY))), 9), 1264622067), 395196646), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 29), string.byte(tostring(jY))), 9), 3030345228), 3683758393))), 395196646), 3683758393) == bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 29), string.byte(tostring(jY))), 9) then
                j1_1 = game:GetService("RunService")
                jC = game:GetService("TweenService")
                j0 = game:GetService("UserInputService")
            else
                j0 = game:GetService("RunService")
                j1_1 = game:GetService(game)
                jC = game:GetService(game)
            end
            jT = (jT + 18) % 232
        else
            worker3 = { "lcm", "grrbxqysk", "rtgzsdxg", "arkuws", "sugihlhvu", "awgislwazhd", "eawv", "pnlnkhk" }
            j4 = worker3[jT % 8 + 1]
            worker3 = jT % 3 + 2
            j5 = (j4:reverse())
            local o8 = worker3
            worker3 = j4:len()
            local j6_7 = (j5:rep(o8))
            if worker3 >= j6_7:len() then
                jl = game:GetService(game)
                jx = game:GetService("VirtualUser")
                jO = "Workspace"
                jp = "https://discord.gg/ehKVq7pf7v"
            else
                jx = game:GetService("VirtualUser")
                Workspace = game:GetService("Workspace")
                jp = jO.LocalPlayer
                jl = "https://discord.gg/ehKVq7pf7v"
            end
            jT = (jT + 18) % 232
        end
    elseif j2 <= 28 then
        if j2 <= 27 then
            j2 = (vector.create((jT * 1 + 3) % 11 + 1, (jT * 11 + 13) % 13 + 1, (jT * 7 + 11) % 17 + 1))
            worker3 = (vector.create((jT * 3 + 6) % 11 + 1, (jT * 10 + 3) % 13 + 1, (jT * 13 + 4) % 17 + 1))
            if vector.dot(j2, worker3) * vector.dot(j2, worker3) <= vector.dot(j2, j2) * vector.dot(worker3, worker3) then
                jS = function()
                    local frame3, kq, kr, textButton, kt
                    local screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosLoader"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local kw = gethui and gethui()
                    local kx = kw or game:GetService("CoreGui")
                    screenGui.Parent = kx
                    local blurEffect = Instance.new("BlurEffect")
                    blurEffect.Size = 0
                    blurEffect.Parent = game:GetService("Lighting")
                    local frame4 = Instance.new("Frame")
                    frame4.Size = UDim2.fromScale(1, 1)
                    frame4.BackgroundTransparency = 1
                    frame4.Parent = screenGui
                    frame3 = Instance.new("Frame")
                    frame3.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame3.Position = UDim2.fromScale(0.5, 0.5)
                    frame3.Size = UDim2.fromOffset(460, 0)
                    frame3.AutomaticSize = Enum.AutomaticSize.Y
                    frame3.BackgroundTransparency = 1
                    frame3.Parent = frame4
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.FillDirection = Enum.FillDirection.Vertical
                    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Padding = UDim.new(0, 8)
                    uIListLayout.Parent = frame3
                    kr = function(C)
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(0, 0, 0)
                        uIStroke.Thickness = 2
                        uIStroke.Transparency = 0.1
                        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                        uIStroke.Parent = C
                        return uIStroke
                    end
                    local function kx_9(F, G, H, I, J)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.BackgroundTransparency = 1
                        textLabel.Size = UDim2.fromOffset(460, G + 6)
                        textLabel.Font = H
                        textLabel.Text = F
                        textLabel.TextSize = G
                        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        textLabel.TextTransparency = I
                        textLabel.LayoutOrder = J
                        kr(textLabel)
                        textLabel.Parent = frame3
                        return textLabel
                    end
                    kx_9("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                    textButton = Instance.new("TextButton")
                    textButton.BackgroundTransparency = 1
                    textButton.AutoButtonColor = false
                    textButton.Size = UDim2.fromOffset(460, 24)
                    textButton.Font = Enum.Font.GothamSemibold
                    textButton.RichText = true
                    textButton.Text = "<u>" .. jl .. "</u>  (click to copy)"
                    textButton.TextSize = 16
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    textButton.LayoutOrder = 2
                    kr(textButton)
                    textButton.Parent = frame3
                    local function ky()
                        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                    end
                    local MouseEnter = textButton.MouseEnter
                    MouseEnter.Connect(MouseEnter, ky)
                    local function ky_6()
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    end
                    local MouseLeave = textButton.MouseLeave
                    MouseLeave.Connect(MouseLeave, ky_6)
                    local function ky_7()
                        if setclipboard then
                            setclipboard(jl)
                        end
                        textButton.Text = "<u>" .. jl .. "</u>  (copied!)"
                        task.delay(1.5, function()
                            textButton.Text = "<u>" .. jl .. "</u>  (click to copy)"
                        end)
                    end
                    local Activated = textButton.Activated
                    Activated.Connect(Activated, ky_7)
                    local ky_8 = kx_9("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                    ky_8.TextWrapped = true
                    ky_8.Size = UDim2.fromOffset(420, 34)
                    kt = kx_9("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                    kt.Size = UDim2.fromOffset(460, 18)
                    local frame2 = Instance.new("Frame")
                    frame2.LayoutOrder = 5
                    frame2.Size = UDim2.fromOffset(300, 6)
                    frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    frame2.BackgroundTransparency = 0.85
                    frame2.BorderSizePixel = 0
                    frame2.Parent = frame3
                    local uICorner2 = Instance.new("UICorner")
                    uICorner2.CornerRadius = UDim.new(1, 0)
                    uICorner2.Parent = frame2
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.fromScale(0, 1)
                    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    frame.BorderSizePixel = 0
                    frame.Parent = frame2
                    local uICorner = Instance.new("UICorner")
                    uICorner.CornerRadius = UDim.new(1, 0)
                    uICorner.Parent = frame
                    kq = true
                    task.spawn(function()
                        local kn = 0
                        while kq do
                            kn = kn % 3 + 1
                            kt.Text = "Ouroboros Bypassing" .. string.rep(".", kn)
                            task.wait(0.35)
                        end
                    end)
                    local kz_11 = (jC:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                    kz_11.Play(kz_11)
                    local kz_12 = { 0.35, 0.55, 0.72, 0.9, 1 }
                    for i, v in ipairs(kz_12) do
                        local kz_13 = (jC:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                        kz_13.Play(kz_13)
                        task.wait(0.55)
                    end
                    kq = false
                    task.wait(0.25)
                    local kz_14 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                    for i, descendant in ipairs(frame3:GetDescendants()) do
                        local kA_5 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                        if kA_5 then
                            local kA_6 = (jC:Create(descendant, kz_14, { TextTransparency = 1 }))
                            kA_6.Play(kA_6)
                        elseif descendant:IsA("UIStroke") then
                            local kA_7 = (jC:Create(descendant, kz_14, { Transparency = 1 }))
                            kA_7.Play(kA_7)
                        end
                    end
                    local kA_8 = (jC:Create(frame2, kz_14, { BackgroundTransparency = 1 }))
                    kA_8.Play(kA_8)
                    local kx_11 = (jC:Create(frame, kz_14, { BackgroundTransparency = 1 }))
                    kx_11.Play(kx_11)
                    local kx_12 = (jC:Create(blurEffect, kz_14, { Size = 0 }))
                    kx_12.Play(kx_12)
                    task.wait(0.45)
                    blurEffect.Destroy(blurEffect)
                    screenGui.Destroy(screenGui)
                end
            else
                jI = function()
                    local frame3, kq, kr, textButton, kt
                    local screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosLoader"
                    screenGui.ResetOnSpawn = false
                    screenGui.IgnoreGuiInset = true
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    local kw = gethui and gethui()
                    local kx = kw or game:GetService("CoreGui")
                    screenGui.Parent = kx
                    local blurEffect = Instance.new("BlurEffect")
                    blurEffect.Size = 0
                    blurEffect.Parent = game:GetService("Lighting")
                    local frame4 = Instance.new("Frame")
                    frame4.Size = UDim2.fromScale(1, 1)
                    frame4.BackgroundTransparency = 1
                    frame4.Parent = screenGui
                    frame3 = Instance.new("Frame")
                    frame3.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame3.Position = UDim2.fromScale(0.5, 0.5)
                    frame3.Size = UDim2.fromOffset(460, 0)
                    frame3.AutomaticSize = Enum.AutomaticSize.Y
                    frame3.BackgroundTransparency = 1
                    frame3.Parent = frame4
                    local uIListLayout = Instance.new("UIListLayout")
                    uIListLayout.FillDirection = Enum.FillDirection.Vertical
                    uIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    uIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
                    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                    uIListLayout.Padding = UDim.new(0, 8)
                    uIListLayout.Parent = frame3
                    kr = function(C)
                        local uIStroke = Instance.new("UIStroke")
                        uIStroke.Color = Color3.fromRGB(0, 0, 0)
                        uIStroke.Thickness = 2
                        uIStroke.Transparency = 0.1
                        uIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
                        uIStroke.Parent = C
                        return uIStroke
                    end
                    local function kx_3(F, G, H, I, J)
                        local textLabel = Instance.new("TextLabel")
                        textLabel.BackgroundTransparency = 1
                        textLabel.Size = UDim2.fromOffset(460, G + 6)
                        textLabel.Font = H
                        textLabel.Text = F
                        textLabel.TextSize = G
                        textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                        textLabel.TextTransparency = I
                        textLabel.LayoutOrder = J
                        kr(textLabel)
                        textLabel.Parent = frame3
                        return textLabel
                    end
                    kx_3("Made Ouroboros Marketplace && MM", 26, Enum.Font.GothamBold, 0, 1)
                    textButton = Instance.new("TextButton")
                    textButton.BackgroundTransparency = 1
                    textButton.AutoButtonColor = false
                    textButton.Size = UDim2.fromOffset(460, 24)
                    textButton.Font = Enum.Font.GothamSemibold
                    textButton.RichText = true
                    textButton.Text = "<u>" .. jl .. "</u>  (click to copy)"
                    textButton.TextSize = 16
                    textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    textButton.LayoutOrder = 2
                    kr(textButton)
                    textButton.Parent = frame3
                    local function ky()
                        textButton.TextColor3 = Color3.fromRGB(170, 200, 255)
                    end
                    local MouseEnter = textButton.MouseEnter
                    MouseEnter.Connect(MouseEnter, ky)
                    local function ky_1()
                        textButton.TextColor3 = Color3.fromRGB(120, 160, 255)
                    end
                    local MouseLeave = textButton.MouseLeave
                    MouseLeave.Connect(MouseLeave, ky_1)
                    local function ky_2()
                        if setclipboard then
                            setclipboard(jl)
                        end
                        textButton.Text = "<u>" .. jl .. "</u>  (copied!)"
                        task.delay(1.5, function()
                            textButton.Text = "<u>" .. jl .. "</u>  (click to copy)"
                        end)
                    end
                    local Activated = textButton.Activated
                    Activated.Connect(Activated, ky_2)
                    local ky_3 = kx_3("Join for Dupes and Keyless Scripts. Dupes will always be announced and never gatekept in Ouroboros.", 13, Enum.Font.GothamMedium, 0.2, 3)
                    ky_3.TextWrapped = true
                    ky_3.Size = UDim2.fromOffset(420, 34)
                    kt = kx_3("Ouroboros Bypassing", 14, Enum.Font.GothamMedium, 0.05, 4)
                    kt.Size = UDim2.fromOffset(460, 18)
                    local frame2 = Instance.new("Frame")
                    frame2.LayoutOrder = 5
                    frame2.Size = UDim2.fromOffset(300, 6)
                    frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    frame2.BackgroundTransparency = 0.85
                    frame2.BorderSizePixel = 0
                    frame2.Parent = frame3
                    local uICorner2 = Instance.new("UICorner")
                    uICorner2.CornerRadius = UDim.new(1, 0)
                    uICorner2.Parent = frame2
                    local frame = Instance.new("Frame")
                    frame.Size = UDim2.fromScale(0, 1)
                    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    frame.BorderSizePixel = 0
                    frame.Parent = frame2
                    local uICorner = Instance.new("UICorner")
                    uICorner.CornerRadius = UDim.new(1, 0)
                    uICorner.Parent = frame
                    kq = true
                    task.spawn(function()
                        local kn = 0
                        while kq do
                            kn = kn % 3 + 1
                            kt.Text = "Ouroboros Bypassing" .. string.rep(".", kn)
                            task.wait(0.35)
                        end
                    end)
                    local kz_4 = (jC:Create(blurEffect, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 18 }))
                    kz_4.Play(kz_4)
                    local kz_5 = { 0.35, 0.55, 0.72, 0.9, 1 }
                    for i, v in ipairs(kz_5) do
                        local kz_6 = (jC:Create(frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = UDim2.fromScale(v, 1) }))
                        kz_6.Play(kz_6)
                        task.wait(0.55)
                    end
                    kq = false
                    task.wait(0.25)
                    local kz_7 = TweenInfo.new(0.4, Enum.EasingStyle.Quad)
                    for i, descendant in ipairs(frame3:GetDescendants()) do
                        local kA_1 = descendant:IsA("TextLabel") or descendant:IsA("TextButton")
                        if kA_1 then
                            local kA_2 = (jC:Create(descendant, kz_7, { TextTransparency = 1 }))
                            kA_2.Play(kA_2)
                        elseif descendant:IsA("UIStroke") then
                            local kA_3 = (jC:Create(descendant, kz_7, { Transparency = 1 }))
                            kA_3.Play(kA_3)
                        end
                    end
                    local kA_4 = (jC:Create(frame2, kz_7, { BackgroundTransparency = 1 }))
                    kA_4.Play(kA_4)
                    local kx_5 = (jC:Create(frame, kz_7, { BackgroundTransparency = 1 }))
                    kx_5.Play(kx_5)
                    local kx_6 = (jC:Create(blurEffect, kz_7, { Size = 0 }))
                    kx_6.Play(kx_6)
                    task.wait(0.45)
                    blurEffect.Destroy(blurEffect)
                    screenGui.Destroy(screenGui)
                end
            end
            jT = (jT + 221) % 232
        else
            if jT * 69363815 + 12 + 4 <= jT * 69363815 + 12 + 4 + 1 then
                jS()
                jY = fn1267
            else
                jY()
                jS = fn1267
            end
            jT = (jT + 105) % 232
        end
    else
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 17), string.byte(tostring(jC))), 18), 3191876471), 1188972631), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 17), string.byte(tostring(jC))), 18), 1103090824), 580944773))), 1188972631), 580944773) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(jT, 17), string.byte(tostring(jC))), 18) then
            jY = i3("https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/src/main.luau")
        else
            i3 = jY({
                "https://github.com/ActualMasterOogway/Fluent-Renewed/releases/latest/download/Fluent.luau",
                "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/src/main.luau"
            })
        end
        jT = (jT + 105) % 232
    end
until fn282((jT * 23 + 107) % 232, 2524278751)
for i, v in ipairs(jV) do
    jI[v] = true
end
for i, v in ipairs(jZ) do
    jE[v] = true
end
jK, jQ, jP, je, connection, jm, i1, jg, jH, iL, i8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jO = 13
repeat
    jR = (jO * 5 + 1) % 6 + 1
    if jR <= 3 then
        if jR <= 2 then
            if jR <= 1 then
                if jO * 16349217 + 1 + 4 >= jO * 16349217 + 1 + 4 + 6 then
                    jS = fn1228
                    jg = jS
                    local OnClientEvent = jK.OnClientEvent
                    OnClientEvent.Connect(OnClientEvent, jS)
                    jS = jH.OnClientEvent
                    local jT_2 = jS
                    jT_2.Connect(jT_2, jS)
                    jW = fn629
                    i1 = fn1961
                    jX = "Common"
                    jm = fn130
                else
                    jm = fn1228
                    jS = function(ca)
                        if (function(gK, gL, gM)
                            if type(gK) ~= "string" then
                                return false
                            end
                            if #gK ~= gL then
                                return false
                            end
                            local gN = 5381
                            local gO = buffer.fromstring(gK)
                            local gP = 0
                            while gP <= gL - 4 do
                                local gQ = buffer.readu32(gO, gP)
                                local gN_63 = bit32.bxor(gN, gQ)
                                gN = bit32.band(gN_63 * 33, 4294967295)
                                gP = gP + 4
                            end
                            while gP < gL do
                                local gR = buffer.readu8(gO, gP)
                                local gN_64 = bit32.bxor(gN, gR)
                                gN = bit32.band(gN_64 * 33, 4294967295)
                                gP = gP + 1
                            end
                            return gN == gM
                        end)(type(ca), 5, 248602996) then
                            iN = ca
                        end
                    end
                    local OnClientEvent2 = jX.OnClientEvent
                    OnClientEvent2.Connect(OnClientEvent2, jS)
                    jS = function(cb)
                        if (function(gK, gL, gM)
                            if type(gK) ~= "string" then
                                return false
                            end
                            if #gK ~= gL then
                                return false
                            end
                            local gN = 5381
                            local gO = buffer.fromstring(gK)
                            local gP = 0
                            while gP <= gL - 4 do
                                local gQ = buffer.readu32(gO, gP)
                                local gN_61 = bit32.bxor(gN, gQ)
                                gN = bit32.band(gN_61 * 33, 4294967295)
                                gP = gP + 4
                            end
                            while gP < gL do
                                local gR = buffer.readu8(gO, gP)
                                local gN_62 = bit32.bxor(gN, gR)
                                gN = bit32.band(gN_62 * 33, 4294967295)
                                gP = gP + 1
                            end
                            return gN == gM
                        end)(type(cb), 5, 248602996) then
                            iK = cb
                        end
                    end
                    local OnClientEvent = jW.OnClientEvent
                    OnClientEvent.Connect(OnClientEvent, jS)
                    i1 = fn629
                    jg = fn1961
                    jK = {
                        Common = 1,
                        Uncommon = 2,
                        Rare = 3,
                        Epic = 4,
                        Legendary = 5,
                        Mythic = 6,
                        Secret = 7,
                        Exclusive = 8
                    }
                    jH = fn130
                end
                jO = (jO + 23) % 24
            else
                jS = { "btasntwmy", "ktadjpklcx", "mgppoqsvj", "uujmcevt", "bjziokw", "wxaecnqchzk", "rgaxcpilk" }
                local jT_5 = jS[jO % 7 + 1]
                jS = jO % 3 + 2
                jU = (jT_5:reverse())
                local o7 = jS
                jS = jT_5:len()
                j2 = (jU:rep(o7))
                if jS <= j2:len() then
                    iL = fn1723
                else
                    jH = fn1723
                end
                jO = (jO + 17) % 24
            end
        else
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 11), string.byte(tostring(jm))), 23), 561016305), 2856683489), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 11), string.byte(tostring(jm))), 23), 3733950990), 697761082))), 2856683489), 697761082) == bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 11), string.byte(tostring(jm))), 23) then
                task.spawn(worker6)
                task.spawn(worker7)
                task.spawn(function()
                    while true do
                        if iS or iP then
                            pcall(iL)
                        end
                        task.wait(3)
                    end
                end)
                task.spawn(worker5)
                jS = {
                    Title = "Join Discord for Dupes/Keyless Scripts",
                    Description = "Copies the invite link to your clipboard.",
                    Callback = fn720
                }
                local Main = j_.Main
                Main.AddButton(Main, jS)
                local jT_7 = { Title = "Auto Merge", Default = false, Callback = fn1092 }
                jU = j_.Main
                jU.AddToggle(jU, "AutoMerge", jT_7)
                local jT_8 = {
                    Title = "Auto Equip Best",
                    Default = false,
                    Callback = function(c4)
                        jd = c4
                    end
                }
                jU = j_.Main
                jU.AddToggle(jU, "AutoEquipBest", jT_8)
                local jT_9 = {
                    Title = "Auto Pickup Coins",
                    Default = false,
                    Callback = function(c5)
                        ja = c5
                    end
                }
                jU = j_.Main
                jU.AddToggle(jU, "AutoPickupCoins", jT_9)
                local jT_10 = { Title = "Auto Pickup Diamonds", Default = false, Callback = fn1289 }
                jU = j_.Main
                jU.AddToggle(jU, "AutoPickupDiamonds", jT_10)
                jS = {
                    Title = "Join Discord for Dupes/Keyless Scripts",
                    Description = "Copies the invite link to your clipboard.",
                    Callback = fn1120
                }
                local Shop = j_.Shop
                Shop.AddButton(Shop, jS)
                local jT_12 = { Title = "Auto Rebirth", Default = false, Callback = fn1940 }
                jU = j_.Shop
                jU.AddToggle(jU, "AutoRebirth", jT_12)
                local jT_13 = { Title = "Auto Buy Diamond Upgrades", Default = false, Callback = fn581 }
                jU = j_.Shop
                jU.AddToggle(jU, "AutoBuyDiamondUpgrades", jT_13)
                local jT_14 = {
                    Title = "Diamond Upgrades",
                    Values = jV,
                    Multi = true,
                    Default = jI,
                    Callback = function(c9)
                        jI = jm(c9)
                    end
                }
                jU = j_.Shop
                jU.AddDropdown(jU, "DiamondUpgradeSelection", jT_14)
                local jT_15 = {
                    Title = "Auto Buy Gold Upgrades",
                    Default = false,
                    Callback = function(da)
                        iU = da
                    end
                }
                jU = j_.Shop
                jU.AddToggle(jU, "AutoBuyGoldUpgrades", jT_15)
                local jT_16 = {
                    Title = "Gold Upgrades",
                    Values = jZ,
                    Multi = true,
                    Default = jE,
                    Callback = function(db)
                        jE = jm(db)
                    end
                }
                jU = j_.Shop
                jU.AddDropdown(jU, "GoldUpgradeSelection", jT_16)
                jS = {
                    Title = "Join Discord for Dupes/Keyless Scripts",
                    Description = "Copies the invite link to your clipboard.",
                    Callback = function()
                        setclipboard(jl)
                        iV("Ouroboros Discord copied to clipboard!")
                    end
                }
                local Combat = j_.Combat
                Combat.AddButton(Combat, jS)
                local jT_18 = {
                    Title = "Auto Equip Highest Damage Weapon",
                    Default = false,
                    Callback = function(dc)
                        iS = dc
                    end
                }
                jU = j_.Combat
                jU.AddToggle(jU, "AutoEquipWeapon", jT_18)
                local jT_19 = {
                    Title = "Auto Equip Best Towers",
                    Default = false,
                    Callback = function(dd)
                        iP = dd
                    end
                }
                jU = j_.Combat
                jU.AddToggle(jU, "AutoEquipTowers", jT_19)
                local jT_20 = {
                    Title = "Kill Aura",
                    Default = false,
                    Callback = function(de)
                        iO = de
                    end
                }
                jU = j_.Combat
                jU.AddToggle(jU, "KillAura", jT_20)
                jQ = jY({
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.luau",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/SaveManager.lua",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/addons/SaveManager.luau"
                })
            else
                task.spawn(worker6)
                jS = task.spawn
                jS(task)
                jU = task.spawn
                jU(task)
                task.spawn(worker5)
                worker3 = fn720
                j4 = {
                    Description = "Copies the invite link to your clipboard.",
                    Callback = worker3,
                    Title = "Join Discord for Dupes/Keyless Scripts"
                }
                j5 = jV.Main
                j5.AddButton(j5, worker7)
                local Main2 = jV.Main
                j5 = fn1092
                Main2.AddToggle(Main2, Main2, "Title")
                j2 = jV.Main
                j2.AddToggle(j2, jU, worker3)
                jU = jV.Main
                jU.AddToggle(jU, false, jV)
                worker3 = { Default = false, Title = "Auto Pickup Diamonds", Callback = fn1289 }
                local Main = jV.Main
                Main.AddToggle(Main, "Default", j5)
                j5 = fn1120
                local Shop2 = jV.Shop
                Shop2.AddButton(Shop2, "Title")
                local Shop = jV.Shop
                local j7 = fn1940
                local j8 = Shop
                j8.AddToggle(j8, "Title", "Default")
                j8 = jV.Shop
                j8.AddToggle(j8, j7, j5)
                j7 = jV.Shop
                j7.AddDropdown(j7, jS, "Title")
                jS = jV.Shop
                jS.AddToggle(jS, false, worker3)
                jS = jV.Shop
                jS.AddDropdown(jS, jQ, j4)
                jS = jV.Combat
                jS.AddButton(jS, fn581)
                jS = jV.Combat
                jS.AddToggle(jS, "Description", Shop)
                j2 = jV.Combat
                j2.AddToggle(j2, "Title", "Callback")
                jS = jV.Combat
                jS.AddToggle(jS, false, true)
                jE = jZ("AutoBuyDiamondUpgrades")
            end
            jO = (jO + 23) % 24
        end
    elseif jR <= 5 then
        if jR <= 4 then
            jR = (vector.create((jO * 7 + 8) % 11 + 1, (jO * 7 + 10) % 13 + 1, (jO * 14 + 3) % 17 + 1))
            jS = (vector.create((jO * 6 + 6) % 11 + 1, (jO * 10 + 12) % 13 + 1, (jO * 6 + 14) % 17 + 1))
            local jT_24 = (vector.create((jO * 4 + 6) % 11 + 1, (jO * 1 + 3) % 13 + 1, (jO * 8 + 11) % 17 + 1))
            jU = (vector.create((jO * 3 + 3) % 5 + 1, (jO * 5 + 7) % 7 + 1, (jO * 1 + 4) % 9 + 1))
            if vector.dot(vector.cross(jR, (vector.cross(jS, jT_24))), jU) == vector.dot(jS * vector.dot(jR, jT_24) - jT_24 * vector.dot(jR, jS), jU) then
                jP = jY({
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.luau",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/Addons/InterfaceManager.lua",
                    "https://raw.githubusercontent.com/ActualMasterOogway/Fluent-Renewed/master/addons/InterfaceManager.luau"
                })
            else
                jY = jP(jP)
            end
            jO = (jO + 5) % 24
        else
            jR = {
                "ijqjyx",
                "yowdd",
                "orosrhov",
                "aoiofwzmcdh",
                "aludsvxczgqa",
                "uzoqamxm",
                "cnti",
                "umnq",
                "bqm",
                "ajd"
            }
            if jR[(jO * 63 + 76) % 10 + 1] <= jR[(jO * 63 + 76) % 10 + 1] then
                jR = {
                    Title = "Join Discord for Dupes/Keyless Scripts",
                    Description = "Copies the invite link to your clipboard.",
                    Callback = fn1500
                }
                jS = j_.Settings
                jS.AddButton(jS, jR)
                je = false
                i8 = fn1801
            else
                jR = i8.Settings
                jS = {
                    Description = "Copies the invite link to your clipboard.",
                    Title = "Join Discord for Dupes/Keyless Scripts",
                    Callback = fn1500
                }
                local jT_25 = jR
                jT_25.AddButton(jT_25, jS)
                j_ = jR
                je = fn1801
            end
            jO = (jO + 17) % 24
        end
    else
        jR = (vector.create((jO * 7 + 4) % 11 + 1, (jO * 5 + 12) % 13 + 1, (jO * 13 + 8) % 17 + 1))
        jS = (vector.create((jO * 4 + 5) % 11 + 1, (jO * 11 + 6) % 13 + 1, (jO * 12 + 5) % 17 + 1))
        local jT_26 = (vector.create((jO * 1 + 4) % 11 + 1, (jO * 11 + 7) % 13 + 1, (jO * 1 + 10) % 17 + 1))
        jU = (vector.create((jO * 1 + 3) % 5 + 1, (jO * 1 + 3) % 7 + 1, (jO * 3 + 1) % 9 + 1))
        if vector.dot(vector.cross(jR, (vector.cross(jS, jT_26))), jU) == vector.dot(jS * vector.dot(jR, jT_26) - jT_26 * vector.dot(jR, jS), jU) then
            task.spawn(worker4)
            jS = {
                Title = "Anti-AFK",
                Default = true,
                Callback = function(dk)
                    je = dk
                    if dk then
                        if not connection then
                            local Idled = jp.Idled
                            connection = Idled:Connect(i8)
                        end
                    elseif connection then
                        connection.Disconnect(connection)
                        connection = nil
                    end
                end
            }
            local Settings = j_.Settings
            Settings.AddToggle(Settings, "AntiAfk", jS)
        else
            task.spawn(worker4)
            jS = j_.Settings
            jS.AddToggle(jS, "Anti-AFK", task)
        end
        jO = (jO + 17) % 24
    end
until fn282((jO * 7 + 0) % 24, 594780637)
if jQ then
    jO = 0
    repeat
        jR = (vector.create((jO * 2 + 6) % 11 + 1, (jO * 1 + 9) % 13 + 1, (jO * 9 + 13) % 17 + 1))
        jS = (vector.create((jO * 6 + 1) % 11 + 1, (jO * 11 + 3) % 13 + 1, (jO * 8 + 4) % 17 + 1))
        if vector.dot(vector.cross(jR, jS), (vector.cross(jR, jS))) + vector.dot(jR, jS) * vector.dot(jR, jS) == vector.dot(jR, jR) * vector.dot(jS, jS) then
            jQ.SetLibrary(jQ, i3)
            jQ.IgnoreThemeSettings(jQ)
            jQ.SetIgnoreIndexes(jQ, {})
            jQ.SetFolder(jQ, "OuroborosHub/MergeVsMobs")
            jQ.BuildConfigSection(jQ, j_.Settings)
        else
            j_.SetLibrary(j_, jQ)
            j_.IgnoreThemeSettings(j_)
            j_.SetIgnoreIndexes(j_, j_)
            j_.SetFolder(j_, {})
            j_.BuildConfigSection(j_, j_)
        end
        jO = (jO + 0) % 8
    until fn282((jO * 3 + 3) % 8, 561233079)
end
if jP then
    jO = 2
    repeat
        jR = {
            "ywy",
            "huldtgknee",
            "sxu",
            "acynetxtuy",
            "wzivbgvqin",
            "vdgjamso",
            "ktxhxxzmzf",
            "zdctphagpjzf",
            "srw",
            "glcinqpl",
            "zaiiadrp",
            "hodk"
        }
        if jR[(jO * 61 + 105) % 12 + 1] <= jR[(jO * 61 + 105) % 12 + 1] then
            jP.SetLibrary(jP, i3)
            jP.SetFolder(jP, "OuroborosHub")
            jP.BuildInterfaceSection(jP, j_.Settings)
        else
            j_.SetLibrary(j_, j_)
            j_.SetFolder(j_, j_)
            j_.BuildInterfaceSection(j_, jP)
        end
        jO = (jO + 2) % 8
    until fn282((jO * 3 + 4) % 8, 544454170)
end
i0.SelectTab(i0, 1)
if jQ then
    jQ.LoadAutoloadConfig(jQ)
end
jP = nil
jO = 6
repeat
    jQ = (jO * 1 + 1) % 2 + 1
    if jQ <= 1 then
        if (jO * 2 + 4) * 13 % 3 == ((jO * 2 + 4) * 13 + 3) % 3 then
            jP.Name = "OuroborosToggle"
            jP.ResetOnSpawn = false
            jP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        else
            jP.Name = jP
            jP.ResetOnSpawn = false
            jP.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        jO = (jO + 13) % 16
    else
        jQ = { "setlybgrrn", "rtcfcoge", "rrcjlfgawnd", "cdkstfdd", "wquq", "qugzow", "gwh", "dkfvfiimdmg" }
        jR = jQ[jO % 8 + 1]
        jQ = jR:len()
        jS = (jR:gsub("(.)", "%1%1", jO % 3 % 2 + 1))
        if jQ <= jS:len() then
            jP = Instance.new("ScreenGui")
        else
            jP = Instance:new()
        end
        jO = (jO + 13) % 16
    end
until fn282((jO * 5 + 0) % 16, 544454170)
jO = gethui and gethui()
jQ = jO or game:GetService("CoreGui")
imageButton, uICorner3, jR, jO, jy, ju, jq, jn, jG, jU = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
jS = 22
repeat
    jV = (jS * 2 + 0) % 3 + 1
    if jV <= 2 then
        if jV <= 1 then
            jV = (vector.create((jS * 4 + 3) % 11 + 1, (jS * 4 + 7) % 13 + 1, (jS * 13 + 3) % 17 + 1))
            jW = (vector.create((jS * 2 + 1) % 11 + 1, (jS * 2 + 2) % 13 + 1, (jS * 5 + 13) % 17 + 1))
            jX = (vector.create((jS * 5 + 8) % 11 + 1, (jS * 9 + 6) % 13 + 1, (jS * 6 + 14) % 17 + 1))
            if vector.dot(vector.cross(jV, jW), jX) == vector.dot(vector.cross(jW, jX), jV) + 2 then
                jV = UDim2.fromOffset
                jO.Size = jV(52, UDim2)
                jW = UDim2.fromScale
                jO.Position = jW(52, jO)
                jX = Vector2.new
                jO.AnchorPoint = jX(Vector2, jO)
                jY = Color3.fromRGB
                jO.BackgroundColor3 = jY(jO, 0.04, 0)
                jO.BackgroundTransparency = jO
                jO.Image = 30
                jO.ScaleType = Enum
                jO.AutoButtonColor = jY
                jO.Parent = jO
                jY = Instance.new
                jy = jY(Color3)
                jZ = UDim.new
                jy.CornerRadius = jZ(25, Instance)
                jy.Parent = 12
                ju = Instance.new(imageButton)
                ju.Color = Color3.fromRGB(true, 0.5, jY)
                ju.Thickness = 0.5
                ju.Transparency = jO
                ju.Parent = UDim
                jq = Instance.new(jV)
                jq.PaddingTop = UDim.new(Color3, UDim2)
                jq.PaddingBottom = UDim.new(jq, jZ)
                jq.PaddingLeft = UDim.new(jO, "UIPadding")
                jV = UDim.new
                jq.PaddingRight = jV(80, jO)
                jq.Parent = jV
                jP, jG, jR, jn = 0.3, 1, jy, jX
                jV = jO.InputBegan
                jV.Connect(jV, jO)
                jV = uICorner3.InputChanged
                jV.Connect(jV, jO)
                jV = uICorner3.InputEnded
                jV.Connect(jV, jW)
                j0 = "UIStroke"
            else
                imageButton.Size = UDim2.fromOffset(52, 52)
                imageButton.Position = UDim2.fromScale(0.5, 0.04)
                imageButton.AnchorPoint = Vector2.new(0.5, 0)
                imageButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
                imageButton.BackgroundTransparency = 0.1
                imageButton.Image = "rbxassetid://91400086538074"
                imageButton.ScaleType = Enum.ScaleType.Fit
                imageButton.AutoButtonColor = true
                imageButton.Parent = jP
                uICorner3 = Instance.new("UICorner")
                uICorner3.CornerRadius = UDim.new(0, 12)
                uICorner3.Parent = imageButton
                jR = Instance.new("UIStroke")
                jR.Color = Color3.fromRGB(80, 80, 95)
                jR.Thickness = 1
                jR.Transparency = 0.3
                jR.Parent = imageButton
                jO = Instance.new("UIPadding")
                jO.PaddingTop = UDim.new(0, 6)
                jO.PaddingBottom = UDim.new(0, 6)
                jO.PaddingLeft = UDim.new(0, 6)
                jO.PaddingRight = UDim.new(0, 6)
                jO.Parent = imageButton
                jy, ju, jq, jn = false, nil, nil, false
                jV = function(dx)
                    if dx.UserInputType == Enum.UserInputType.MouseButton1 or dx.UserInputType == Enum.UserInputType.Touch then
                        jy, jn = true, false
                        ju = dx.Position
                        jq = imageButton.Position
                    end
                end
                jW = imageButton.InputBegan
                jW.Connect(jW, jV)
                jV = function(dz)
                    if jy and (dz.UserInputType == Enum.UserInputType.MouseMovement or dz.UserInputType == Enum.UserInputType.Touch) then
                        local mT_1 = dz.Position - ju
                        if mT_1.Magnitude > 4 then
                            jn = true
                        end
                        imageButton.Position = UDim2.new(jq.X.Scale, jq.X.Offset + mT_1.X, jq.Y.Scale, jq.Y.Offset + mT_1.Y)
                    end
                end
                jW = j0.InputChanged
                jW.Connect(jW, jV)
                jV = function(dD)
                    if dD.UserInputType == Enum.UserInputType.MouseButton1 or dD.UserInputType == Enum.UserInputType.Touch then
                        jy = false
                    end
                end
                jW = j0.InputEnded
                jW.Connect(jW, jV)
                jG = false
            end
            jS = (jS + 11) % 24
        else
            if (ju and not jR and (ju and not ju) and ((not ju or not jR) and (jR or jR)) or (not ju or jR) and (jR or not jR) and (not jR and not jR or ju and jR)) and (ju and jR and (not ju or not ju) or (not jR and not jR or ju and not ju) or (not ju or jR or not ju and not jR or (not ju and not ju or not jR and not jR))) and not ((ju and not jR and (ju and not ju) and ((not ju or not jR) and (jR or jR)) or (not ju or jR) and (jR or not jR) and (not jR and not jR or ju and jR)) and (ju and jR and (not ju or not ju) or (not jR and not jR or ju and not ju) or (not ju or jR or not ju and not jR or (not ju and not ju or not jR and not jR)))) then
                jV = fn425
                jW = jU.MouseButton1Click
                jW.Connect(jW, jV)
                j0 = jU
            else
                jV = fn425
                jW = imageButton.MouseButton1Click
                jW.Connect(jW, jV)
                jU = j0.TouchEnabled
            end
            jS = (jS + 23) % 24
        end
    else
        jV = {
            "hyrnwna",
            "kixtrojofx",
            "yhykmpxy",
            "nvqvmfhoudtj",
            "ahvhwqzl",
            "drkvi",
            "sqiqa",
            "lzavsodr",
            "oshmzrh",
            "jjqrgl"
        }
        if jV[(jS * 79 + 113) % 10 + 1] <= jV[(jS * 79 + 113) % 10 + 1] then
            jP.Parent = jQ
            imageButton = Instance.new("ImageButton")
        else
            jP.Parent = imageButton
            jQ = Instance:new()
        end
        jS = (jS + 14) % 24
    end
until fn282((jS * 7 + 11) % 24, 192073492)
if jU then
    jU = not j0.MouseEnabled
end
jj, screenGui2 = nil, nil
jO = 0
repeat
    jP = (jO * 1 + 0) % 3 + 1
    if jP <= 2 then
        if jP <= 1 then
            jP = {
                "rpwtqvnobp",
                "brfa",
                "mrrpnz",
                "baz",
                "own",
                "bzmminv",
                "jhzusoaltiw",
                "xnftaoqdj",
                "zrgcksfwnr",
                "lstnp"
            }
            jQ = jP[jO % 10 + 1]
            jP = jO % 3 + 2
            jR = (jQ:reverse())
            local oE = jP
            jP = jQ:len()
            jS = (jR:rep(oE))
            if jP >= jS:len() then
                jU = jj
            else
                jj = jU
            end
            jO = (jO + 10) % 12
        else
            if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 31), string.byte(tostring(jj))), 27), 2010089336), 6), 4091665949) ~= bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 31), string.byte(tostring(jj))), 27), 6) then
                jj = Instance.new(Instance.new)
            else
                screenGui2 = Instance.new("ScreenGui")
            end
            jO = (jO + 1) % 12
        end
    else
        if jO * 103321179 + 6 + 7 >= jO * 103321179 + 6 + 7 + 3 then
            screenGui2.Name = "OuroborosPromo"
            screenGui2.ResetOnSpawn = screenGui2
            screenGui2.ZIndexBehavior = Enum
        else
            screenGui2.Name = "OuroborosPromo"
            screenGui2.ResetOnSpawn = false
            screenGui2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        jO = (jO + 4) % 12
    end
until fn282((jO * 5 + 2) % 12, 460486181)
jO = gethui and gethui()
jP = jO or game:GetService("CoreGui")
screenGui2.Parent = jP
jO = function(dM, dN)
    local textButton = Instance.new("TextButton")
    local m_ = jj and UDim2.fromOffset(150, 40)
    local m0 = m_ or UDim2.fromOffset(240, 60)
    textButton.Size = m0
    textButton.Position = dM
    textButton.AnchorPoint = dN
    textButton.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    textButton.BackgroundTransparency = 0
    textButton.Text = ""
    textButton.AutoButtonColor = true
    textButton.Parent = screenGui2
    local m__1 = Instance.new("UICorner")
    m__1.CornerRadius = UDim.new(0, 8)
    m__1.Parent = textButton
    local m__2 = Instance.new("UIStroke")
    m__2.Color = Color3.fromRGB(80, 80, 95)
    m__2.Thickness = 1
    m__2.Transparency = 0.3
    m__2.Parent = textButton
    local m0_1 = jj and 24 or 36
    local imageLabel = Instance.new("ImageLabel")
    imageLabel.Size = UDim2.fromOffset(m0_1, m0_1)
    local m__5 = UDim2.new
    local m2 = jj and 8 or 12
    imageLabel.Position = m__5(0, m2, 0.5, 0)
    imageLabel.AnchorPoint = Vector2.new(0, 0.5)
    imageLabel.BackgroundTransparency = 1
    imageLabel.Image = "rbxassetid://91400086538074"
    imageLabel.ScaleType = Enum.ScaleType.Fit
    imageLabel.Parent = textButton
    local m0_3 = jj and 40 or 60
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -m0_3, 1, 0)
    textLabel.Position = UDim2.new(0, m0_3, 0, 0)
    textLabel.BackgroundTransparency = 1
    local m1_1 = jj and "Join Ouroboros\n[Copy Discord]" or "Join Ouroboros\nFree Keyless & Dupe Scripts\n[Click to Copy Discord]"
    textLabel.Text = m1_1
    textLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
    local m1_2 = jj and 10 or 12
    textLabel.TextSize = m1_2
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = textButton
    local function m__10()
        pcall(function()
            setclipboard(jl)
        end)
        iV("Ouroboros Discord copied to clipboard!")
    end
    local MouseButton1Click = textButton.MouseButton1Click
    MouseButton1Click.Connect(MouseButton1Click, m__10)
end
if jj then
    jP = 0
    repeat
        jQ = (vector.create((jP * 6 + 3) % 11 + 1, (jP * 7 + 7) % 13 + 1, (jP * 11 + 12) % 17 + 1))
        jR = (vector.create((jP * 4 + 4) % 11 + 1, (jP * 10 + 8) % 13 + 1, (jP * 15 + 14) % 17 + 1))
        if vector.dot(vector.cross(jQ, jR), (vector.cross(jQ, jR))) + vector.dot(jQ, jR) * vector.dot(jQ, jR) == vector.dot(jQ, jQ) * vector.dot(jR, jR) + 5 then
            jO(0, Vector2.new(Vector2.new, UDim2.new))
        else
            jO(UDim2.new(0, 12, 0, 8), Vector2.new(0, 0))
        end
        jP = (jP + 4) % 8
    until fn282((jP * 5 + 6) % 8, 578005792)
else
    jQ = 6
    repeat
        jP = (vector.create((jQ * 2 + 4) % 11 + 1, (jQ * 3 + 7) % 13 + 1, (jQ * 12 + 16) % 17 + 1))
        jR = (vector.create((jQ * 3 + 2) % 11 + 1, (jQ * 11 + 4) % 13 + 1, (jQ * 7 + 6) % 17 + 1))
        jS = (vector.create((jQ * 4 + 9) % 11 + 1, (jQ * 5 + 2) % 13 + 1, (jQ * 9 + 5) % 17 + 1))
        local jT_29 = (vector.create((jQ * 1 + 4) % 11 + 1, (jQ * 2 + 8) % 13 + 1, (jQ * 14 + 14) % 17 + 1))
        if vector.dot(vector.cross(jP, jR), (vector.cross(jS, jT_29))) == vector.dot(jP, jS) * vector.dot(jR, jT_29) - vector.dot(jP, jT_29) * vector.dot(jR, jS) + 4 then
            jO(20, Vector2:new(UDim2))
            jO(1, Vector2.new(1, Vector2))
        else
            jO(UDim2.new(0, 20, 0, 8), Vector2.new(0, 0))
            jO(UDim2.new(1, -20, 0, 8), Vector2.new(1, 0))
        end
        jQ = (jQ + 2) % 8
    until fn282((jQ * 7 + 1) % 8, 527583337)
end
jR = nil
jP = 6
repeat
    jO = (jP * 1 + 0) % 2 + 1
    if jO <= 1 then
        jO = (vector.create((jP * 6 + 6) % 11 + 1, (jP * 3 + 13) % 13 + 1, (jP * 8 + 17) % 17 + 1))
        jQ = (vector.create((jP * 5 + 9) % 11 + 1, (jP * 7 + 11) % 13 + 1, (jP * 6 + 9) % 17 + 1))
        jS = (vector.create((jP * 4 + 2) % 5 + 1, (jP * 4 + 7) % 7 + 1, (jP * 4 + 4) % 9 + 1))
        if fn282(math.abs((vector.angle(jO, jQ, jS))) - math.abs((vector.angle(jQ, jO, jS))), 544454170) then
            jR = Instance.new("ScreenGui")
        else
            jR = Instance.new(Instance.new)
        end
        jP = (jP + 1) % 8
    else
        if jP * 21713649 + 8 + 7 >= jP * 21713649 + 8 + 7 + 5 then
            jR.Name = jR
            jR.ResetOnSpawn = "OuroborosMarketplace"
            jR.ZIndexBehavior = jR
        else
            jR.Name = "OuroborosMarketplace"
            jR.ResetOnSpawn = false
            jR.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        end
        jP = (jP + 1) % 8
    end
until fn282((jP * 5 + 7) % 8, 494033731)
jO = gethui and gethui()
jP = jO or game:GetService("CoreGui")
iQ = nil
jO = 6
repeat
    jQ = {
        "gzqzgcqxn",
        "howechc",
        "wnmo",
        "isiw",
        "keqvvrjte",
        "psuxqkzmir",
        "zsoejful",
        "relwsqkmp",
        "vql"
    }
    if jQ[(jO * 57 + 18) % 9 + 1] <= jQ[(jO * 57 + 18) % 9 + 1] then
        jR.Parent = jP
        iQ = Instance.new("Frame")
    else
        jR.Parent = iQ
        jP = Instance:new()
    end
    jO = (jO + 6) % 8
until fn282((jO * 5 + 7) % 8, 561233079)
jO = jj
if jO then
    jP = 1
    repeat
        jQ = {
            "jtwp",
            "vtiiiqdghpy",
            "mcl",
            "aeinkcqa",
            "gyjg",
            "yazrc",
            "ocjsp",
            "gwf",
            "qjhyfpc",
            "bpqxpv",
            "qfeqhmdyz"
        }
        jS = jQ[jP % 11 + 1]
        jQ = jP % 3 + 2
        local jT_30 = (jS:reverse())
        local o3 = jQ
        jQ = jS:len()
        jU = (jT_30:rep(o3))
        if jQ >= jU:len() then
            jO = UDim2.fromOffset(UDim2.fromOffset, UDim2)
        else
            jO = UDim2.fromOffset(170, 100)
        end
        jP = (jP + 6) % 8
    until fn282((jP * 1 + 7) % 8, 510804476)
end
jQ = jO
if not jQ then
    jO = 1
    repeat
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 30), string.byte(tostring(jO))), 1), 2912232971), 2130878415), (bit32.bxor(bit32.band(bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 30), string.byte(tostring(jO))), 1), 1382734324), 977525052))), 2130878415), 977525052) ~= bit32.rrotate(bit32.bxor(bit32.lrotate(jO, 30), string.byte(tostring(jO))), 1) then
            jQ = UDim2.fromOffset(140, UDim2.fromOffset)
        else
            jQ = UDim2.fromOffset(240, 140)
        end
        jO = (jO + 3) % 4
    until fn282((jO * 3 + 3) % 4, 561233079)
end
jP, uIStroke2, jN, jD, iR = nil, nil, nil, nil, nil
jS = 30
repeat
    jO = (jS * 1 + 4) % 5 + 1
    if jO <= 3 then
        if jO <= 2 then
            if jO <= 1 then
                if jS * 36156391 + 11 + 4 <= jS * 36156391 + 11 + 4 + 5 then
                    jP.CornerRadius = UDim.new(0, 8)
                    jP.Parent = iQ
                    uIStroke2 = Instance.new("UIStroke")
                else
                    uIStroke2.CornerRadius = UDim.new(8, UDim.new)
                    uIStroke2.Parent = uIStroke2
                    iQ = Instance:new()
                end
                jS = (jS + 1) % 40
            else
                if bit32.bxor(bit32.lrotate(bit32.bxor(bit32.rrotate(bit32.bxor(bit32.lrotate(jS, 19), string.byte(tostring(jP))), 15), 64464926), 26), 2014273184) == bit32.lrotate(bit32.rrotate(bit32.bxor(bit32.lrotate(jS, 19), string.byte(tostring(jP))), 15), 26) then
                    uIStroke2.Color = Color3.fromRGB(80, 80, 95)
                    uIStroke2.Thickness = 1
                    uIStroke2.Transparency = 0.3
                    uIStroke2.Parent = iQ
                    jN = Instance.new("ImageLabel")
                else
                    jW = Color3.fromRGB
                    jN.Color = jW(80, Color3, jN)
                    jN.Thickness = jW
                    jN.Transparency = jN
                    jN.Parent = 95
                    iQ = Instance.new(uIStroke2)
                end
                jS = (jS + 36) % 40
            end
        else
            jW = (vector.create((jS * 7 + 7) % 11 + 1, (jS * 8 + 2) % 13 + 1, (jS * 1 + 4) % 17 + 1))
            jX = (vector.create((jS * 1 + 5) % 11 + 1, (jS * 7 + 1) % 13 + 1, (jS * 12 + 14) % 17 + 1))
            jY = (vector.create((jS * 3 + 9) % 11 + 1, (jS * 5 + 1) % 13 + 1, (jS * 10 + 13) % 17 + 1))
            if vector.dot(vector.cross(jW, jX), jY) == vector.dot(vector.cross(jX, jY), jW) then
                jN.Size = UDim2.fromOffset(40, 40)
                jN.Position = UDim2.new(0, 15, 0, 15)
                jN.BackgroundTransparency = 1
                jN.Image = "rbxassetid://91400086538074"
                jN.ScaleType = Enum.ScaleType.Fit
                jN.Parent = iQ
                jV = Instance.new("TextLabel")
                jV.Size = UDim2.new(1, -70, 0, 20)
                jV.Position = UDim2.new(0, 65, 0, 15)
                jV.BackgroundTransparency = 1
                jV.Text = "Ouroboros Market"
                jV.TextColor3 = Color3.fromRGB(240, 240, 240)
                jV.TextSize = 14
                jV.Font = Enum.Font.GothamBold
                jV.TextXAlignment = Enum.TextXAlignment.Left
                jV.Parent = iQ
                jU = Instance.new("TextLabel")
                jU.Size = UDim2.new(1, -70, 0, 15)
                jU.Position = UDim2.new(0, 65, 0, 35)
                jU.BackgroundTransparency = 1
                jU.Text = "Trade. Sell. Profit."
                jU.TextColor3 = Color3.fromRGB(150, 150, 150)
                jU.TextSize = 11
                jU.Font = Enum.Font.GothamMedium
                jU.TextXAlignment = Enum.TextXAlignment.Left
                jU.Parent = iQ
                jD = Instance.new("TextLabel")
                jD.Size = UDim2.new(1, -30, 0, 60)
                jD.Position = UDim2.new(0, 15, 0, 65)
                jD.BackgroundTransparency = 1
                jD.Text = "Got spare items piling up? Turn your grind into actual profit.\n\nClick to join the biggest trading community around!"
                jD.TextColor3 = Color3.fromRGB(190, 190, 190)
                jD.TextSize = 11
                jD.Font = Enum.Font.Gotham
                jD.TextXAlignment = Enum.TextXAlignment.Left
                jD.TextYAlignment = Enum.TextYAlignment.Top
                jD.TextWrapped = true
                jD.Parent = iQ
                local textButton = Instance.new("TextButton")
                textButton.Size = UDim2.new(1, 0, 1, 0)
                textButton.BackgroundTransparency = 1
                textButton.Text = ""
                textButton.Parent = iQ
                jW = function()
                    local ig = (jC:Create(iQ, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { BackgroundColor3 = Color3.fromRGB(30, 30, 35) }))
                    ig.Play(ig)
                    local ih = (jC:Create(uIStroke2, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Color = Color3.fromRGB(100, 100, 115) }))
                    ih.Play(ih)
                    local ii = (jC:Create(jD, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { TextColor3 = Color3.fromRGB(230, 230, 230) }))
                    ii.Play(ii)
                end
                jX = textButton.MouseEnter
                jX.Connect(jX, jW)
                jW = fn747
                jX = textButton.MouseLeave
                jX.Connect(jX, jW)
                jW = function()
                    task.spawn(function()
                        local im = (jC:Create(jN, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(34, 34), Position = UDim2.new(0, 18, 0, 18) }))
                        im.Play(im)
                        task.wait(0.1)
                        local io = (jC:Create(jN, TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = UDim2.fromOffset(40, 40), Position = UDim2.new(0, 15, 0, 15) }))
                        io.Play(io)
                    end)
                    pcall(function()
                        setclipboard(jl)
                    end)
                    iV("Marketplace Discord copied to clipboard!")
                end
                jX = textButton.MouseButton1Click
                jX.Connect(jX, jW)
                iR = nil
            else
                jW = UDim2.fromOffset
                iQ.Size = jW(UDim2, 40)
                iQ.Position = UDim2.new(15, iQ, UDim2.new, 15)
                iQ.BackgroundTransparency = iQ
                iQ.Image = 0
                jY = Enum.ScaleType
                iQ.ScaleType = iQ
                iQ.Parent = iQ
                jZ = Instance.new
                jD = jZ(Enum)
                jD.Size = UDim2.new(-70, 1, "rbxassetid://91400086538074", iQ)
                jD.Position = UDim2.new(65, iQ, jD, 0)
                jD.BackgroundTransparency = jY
                jD.Text = jW
                jD.TextColor3 = Color3.fromRGB(0, jD, 70)
                jD.TextSize = 14
                jW = Enum.Font
                jD.Font = jW.GothamBold
                jD.TextXAlignment = UDim2
                jD.Parent = jD
                jY = Instance.new
                local jT_32 = jY(240)
                jT_32.Size = UDim2.new(jZ, 15, Enum, 240)
                jZ = UDim2.new
                jT_32.Position = jZ("TextLabel", 240, 15, UDim2)
                jT_32.BackgroundTransparency = 40
                jT_32.Text = iR
                jT_32.TextColor3 = Color3.fromRGB(1, Color3.fromRGB, 0)
                jT_32.TextSize = "TextLabel"
                j_ = Enum.Font
                jT_32.Font = -70
                jT_32.TextXAlignment = 20
                jT_32.Parent = iR
                j0 = Instance.new
                jN = j0(iR)
                j2 = UDim2.new
                jN.Size = j2(j_, Enum, jD, "Ouroboros Market")
                jN.Position = UDim2.new(jT_32, 1, jD, 150)
                jN.BackgroundTransparency = j2
                jN.Text = jN
                jN.TextColor3 = Color3.fromRGB(0, j0, jY)
                jN.TextSize = jT_32
                jN.Font = Enum
                jN.TextXAlignment = -30
                jN.TextYAlignment = jN
                jN.TextWrapped = jD
                jN.Parent = Enum
                jU = Instance.new(jZ)
                jU.Size = UDim2.new(Enum, 0, Color3, 0)
                jU.BackgroundTransparency = 70
                jU.Text = Instance
                jU.Parent = jW
                jW = jU.MouseEnter
                jW.Connect(jW, jT_32)
                jW = fn747
                jY = jU.MouseLeave
                jY.Connect(jY, jD)
                jY = jU.MouseButton1Click
                jY.Connect(jY, jW)
            end
            jS = (jS + 6) % 40
        end
    elseif jO <= 4 then
        jO = {
            "rygacvr",
            "urowbnltkys",
            "ihond",
            "pxswbraob",
            "goqyiupu",
            "wztwov",
            "avduayjbkix",
            "gscv",
            "lwbe",
            "osiynqfbs",
            "dfcmrnss",
            "mfo"
        }
        jW = jO[jS % 12 + 1]
        jO = jS % 3 + 2
        jX = (jW:reverse())
        local pk = jO
        jO = jW:len()
        jY = (jX:rep(pk))
        if jO <= jY:len() then
            task.spawn(worker8)
            jO = function()
                if iR and iR.Parent then
                    local np_1 = false
                    if not iR.Visible then
                        np_1 = true
                    elseif iR.AbsoluteSize.Y < 50 then
                        np_1 = true
                    elseif iR.AbsolutePosition.Y < -3000 then
                        np_1 = true
                    end
                    if np_1 then
                        iQ.Visible = false
                    else
                        iQ.Visible = true
                        iQ.Position = UDim2.fromOffset(iR.AbsolutePosition.X + iR.AbsoluteSize.X + 15, iR.AbsolutePosition.Y)
                    end
                else
                    iQ.Visible = false
                end
            end
            jW = j1_1.RenderStepped
            jW.Connect(jW, jO)
        else
            jO = worker8
            task.spawn(task.spawn)
            jW = j1_1.RenderStepped
            jW.Connect(jW, jO)
        end
        jS = (jS + 26) % 40
    else
        jO = {
            "xtrhomcoxmkp",
            "yealor",
            "kpgnxh",
            "lrtonvtxdmqg",
            "gop",
            "ocqrujuxv",
            "sntiyvt",
            "gbyavbkh",
            "fkxmeajj",
            "tufkkiomu",
            "pzppf"
        }
        if jO[(jS * 1 + 51) % 11 + 1] < jO[(jS * 1 + 51) % 11 + 1] then
            iQ.Size = jP
            jQ.BackgroundColor3 = Color3.fromRGB(25, Color3, 25)
            jQ.BackgroundTransparency = 30
            jQ.Visible = false
            jQ.Parent = jQ
            jR = Instance.new(iQ)
        else
            iQ.Size = jQ
            iQ.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
            iQ.BackgroundTransparency = 0
            iQ.Visible = false
            iQ.Parent = jR
            jP = Instance.new("UICorner")
        end
        jS = (jS + 21) % 40
    end
until fn282((jS * 13 + 38) % 40, 1047730014)
