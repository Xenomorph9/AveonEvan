local fns = {}
local bK_1, bK_2, bK_3, UpgradeTreadmillRequest, bK_5, bK_7, bK_8, PetsInventoryRemote, bK_10, bK_14, bK_16, connection2, UpgradePlotRequest, bK_20, bK_21, bK_22
local v
local x
local TrailsConfig
local z
local y
local w
local A
bK_20 = nil
local B
local C
local D
local E
local F
local G
local H
local I
local J
local L
local M
bK_14 = nil
local TreadmillUpgradeConfig
local R
local S
local T
local U
local W
local X
bK_10 = nil
bK_16 = nil
UpgradeTreadmillRequest = nil
local Y
local Z
local ab
local ac
UpgradePlotRequest = nil
local ad
local ZonesConfig
local af
local ag
local ah
local aj
local ak
local am
bK_21 = nil
local an
local ap
bK_2 = nil
local aq
bK_5 = nil
bK_1 = nil
local at
connection2 = nil
local au
local aw
PetsInventoryRemote = nil
local ax
local ay
bK_7 = nil
local az
local aA
local aB
local Toggles
local aE
bK_3 = nil
local aG
local aH
bK_8 = nil
local aI
local aK
local aL
local aM
local aO
local aP
local aR
local aS
local aT
bK_22 = nil
function fns.fn11()
    local aG = not aT() or not ac.Enabled.GuardESP
    local bB = if aG then 1 else 0
    local V = 781 * bB + 1356 * (1 - bB)
    local bx = 2978 * bB + 928 * (1 - bB)
    if (V * 3995 + bx * 3535 + V * bx) % 16777213 == 15973143 then
        af(ac.GuardHighlights)
        return
    end
    local aG_1 = {}
    local bM = at
    local GetTagged = bM.GetTagged
    for i, v in ipairs(GetTagged(bM, "ZoneGuard")) do
        local attr = v:GetAttribute("ZoneId")
        local E = attr or ""
        if D(tostring(E), ac.GuardEspZoneFilter) then
            aG_1[v] = true
            local E_1 = aE[attr] or "Common"
            local E_2 = aB[E_1] or Color3.fromRGB(255, 80, 80)
            C(ac.GuardHighlights, v, E_2, "OuroborosGuardESP")
        end
    end
    local GuardHighlights = ac.GuardHighlights
    for k, v in pairs(GuardHighlights) do
        if not aG_1[k] or not k.Parent then
            if v and v.Parent then
                v.Destroy(v)
            end
            ac.GuardHighlights[k] = nil
        end
    end
end
function fns.fn14()
    local bB = aM()
    if not bB then
        return nil
    end
    local SpawnPoint = bB:FindFirstChild("SpawnPoint")
    local az = SpawnPoint and SpawnPoint:IsA("BasePart")
    if az then
        return SpawnPoint.CFrame * CFrame.new(0, 3, 0)
    end
    local bk_1 = ab(bB)
    if bk_1 then
        local bW = bk_1.Size.Y / 2 + 3
        return CFrame.new(bk_1.Position + Vector3.new(0, bW, 0))
    end
    return bB:GetPivot() * CFrame.new(0, 5, 0)
end
function fns.fn28()
    local aJ = {}
    local attr2 = aL:GetAttribute("OwnedPickaxes")
    local bg = if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_3 = bit32.bxor(r, j)
            r = bit32.band(r_3 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_4 = bit32.bxor(r, m)
            r = bit32.band(r_4 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(typeof(attr2), 6, 2175009567, "string") then 1 else 0
    local aE = 4044 * bg + 1518 * (1 - bg)
    local aH = 2199 * bg + 3935 * (1 - bg)
    if (aE * 1214 + aH * 374 + aE * aH) % 16777213 == 14624598 then
        for k in string.gmatch(attr2, "[^,]+") do
            local I_1 = tonumber(k)
            if I_1 then
                aJ[I_1] = true
            end
        end
    end
    local attr = aL:GetAttribute("PickaxeTier")
    if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_1 = bit32.bxor(r, j)
            r = bit32.band(r_1 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_2 = bit32.bxor(r, m)
            r = bit32.band(r_2 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(typeof(attr), 6, 472614556, "number") then
        aJ[attr] = true
    end
    return aJ
end
function fns.fn52(t)
    if not t then
        return nil
    end
    local Hitbox = t:FindFirstChild("Hitbox")
    local aV = Hitbox and Hitbox:IsA("BasePart")
    if aV then
        return Hitbox
    end
    return nil
end
function fns.fn56()
    return not aj.Unloaded
end
function fns.fn82(m)
    table.clear(ac.BreakZoneFilter)
    if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_9 = bit32.bxor(r, j)
            r = bit32.band(r_9 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_10 = bit32.bxor(r, m)
            r = bit32.band(r_10 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(m), 5, 248602996, "table") then
        for k2, v in pairs(m) do
            local be = v
            local bH = be == true and (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_7 = bit32.bxor(r, j)
                    r = bit32.band(r_7 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_8 = bit32.bxor(r, m)
                    r = bit32.band(r_8 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(k2), 6, 2175009567, "string")
            if bH then
                ac.BreakZoneFilter[k2] = true
            elseif (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_5 = bit32.bxor(r, j)
                    r = bit32.band(r_5 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_6 = bit32.bxor(r, m)
                    r = bit32.band(r_6 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(be), 6, 2175009567, "string") then
                ac.BreakZoneFilter[be] = true
            end
        end
    end
end
function fns.fn91(e)
    return ((function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_11 = bit32.bxor(r, j)
            r = bit32.band(r_11 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_12 = bit32.bxor(r, m)
            r = bit32.band(r_12 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(e), 8, 2851454103, "function"))
end
function fns.fn100()
    local Character
    local ay = 0
    while true do
        ay += 675
        if ay < 1839 then
            if ay < 678 then
                if ay < 676 then
                    if ay == 675 then
                        Character = aL.Character
                        ay = if not Character then 1 else 2
                    else
                        break
                    end
                elseif ay < 677 then
                    return nil
                elseif ay == 677 then
                    return Character:FindFirstChildOfClass("Humanoid")
                else
                    ay = 8251
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
function fns.fn129(j)
    local aT = 3
    while true do
        aT += 12680
        if aT < 12681 then
            break
        elseif aT < 12683 then
            if aT < 12682 then
                if aT == 12681 then
                    return false
                end
                aT = 10441
                continue
            elseif aT == 12682 then
                for k, v in pairs(j) do
                    if v then
                        return true
                    end
                end
                return false
            else
                aT = 10342
                continue
            end
        elseif aT < 12998 then
            if aT < 12908 then
                if aT == 12683 then
                    aT = if not (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_13 = bit32.bxor(r, j)
                            r = bit32.band(r_13 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_14 = bit32.bxor(r, m)
                            r = bit32.band(r_14 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(type(j), 5, 248602996, "table") then 1 else 2
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
function fns.fn141()
    local bd = G()
    if not bd then
        return false
    end
    x(bd.Position)
    return U(bd)
end
function fns.fn153()
    local aJ = not aT() or not ac.Enabled.PickUpBank
    if aJ then
        return
    end
    if aw() then
        aG()
        return
    end
    if os.clock() - ac.LastPickUpAt < 0.35 then
        return
    end
    local aJ_1 = ap()
    if (function(j, q)
        if type(j) ~= "number" then
            return false
        end
        if j % 1 ~= 0 then
            return false
        end
        local s = j < -2147483648
        if s then
        else
            s = j > 2147483647
        end
        if s then
            return false
        end
        local o_1 = bit32.bxor(j, 1540483477)
        local o_2 = bit32.band(o_1 * 403 + bit32.lshift(o_1, 24), 4294967295)
        local o_3 = bit32.bxor(o_2, bit32.rshift(o_2, 13))
        return o_3 == q
    end)(#aJ_1, 544454170) then
        return
    end
    local a4 = aJ_1[1]
    x(a4.position)
    U(CFrame.new(a4.position + Vector3.new(0, 3, 0)))
    task.wait(0.05)
    local aJ_2 = not aT() or not ac.Enabled.PickUpBank or aw()
    if aJ_2 then
        return
    end
    local prompt = a4.prompt
    local a4_1 = prompt
    local ae = if a4_1 then 1 else 0
    local aO = 622 * ae + 2581 * (1 - ae)
    local br = 2786 * ae + 1215 * (1 - ae)
    if (aO * 2748 + br * 1939 + aO * br) % 16777213 == 8844202 then
        a4_1 = prompt.Parent
    end
    if a4_1 then
        a4_1 = prompt.Enabled
    end
    if not a4_1 then
        return
    end
    local ae_1 = if J(prompt) then 1 else 0
    local aO_1 = 1863 * ae_1 + 717 * (1 - ae_1)
    local br_1 = 955 * ae_1 + 3348 * (1 - ae_1)
    if (aO_1 * 2932 + br_1 * 2735 + aO_1 * br_1) % 16777213 == 9853406 then
        ac.LastPickUpAt = os.clock()
    end
    local a4_2 = os.clock() + 1.5
    local aC = false
    while true do
        local N = aT() and ac.Enabled.PickUpBank and not aw() and os.clock() < a4_2
        if N then
            local N_1 = not aC
            if N_1 ~= false then
                N_1 = os.clock() - ac.LastPickUpAt >= 0.2
            end
            if N_1 then
                if prompt.Parent and prompt.Enabled then
                    J(prompt)
                end
                aC = true
            end
            task.wait(0.05)
            continue
        end
        break
    end
    if aw() then
        aG()
    end
end
function fns.fn175()
    local aL
    local a1 = 3
    while true do
        a1 += 12221
        if a1 < 12223 then
            if a1 < 3945 then
                break
            elseif a1 < 12221 then
                break
            elseif a1 < 12222 then
                break
            elseif a1 == 12222 then
                return nil
            else
                a1 = 15235
                continue
            end
        elseif a1 < 13866 then
            if a1 < 12224 then
                return CFrame.new(aL.Position + Vector3.new(0, 2, 0))
            elseif a1 == 12224 then
                aL = an()
                a1 = if not aL then 1 else 2
            else
                a1 = 623
                continue
            end
        else
            break
        end
    end
end
function fns.fn247()
    local A, Q, P
    local bh = 5
    while true do
        bh += 13217
        if bh < 13220 then
            if bh < 13217 then
                break
            elseif bh < 13218 then
                if bh == 13217 then
                    Q = P
                    bh = if Q then 4 else 1
                else
                    bh = 13220
                    continue
                end
            elseif bh < 13219 then
                Q = Vector3.zero
                bh = 4
            else
                break
            end
        elseif bh < 13222 then
            if bh < 13221 then
                P = Q.Position
                bh = 0
            else
                local P_1 = Q
                local co = at
                local GetTagged = co.GetTagged
                local cs = "SmartPrompt"
                for i, v in ipairs(GetTagged(co, cs)) do
                    local bI = v
                    local Q_1 = bI:IsA("ProximityPrompt") and (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_15 = bit32.bxor(r, j)
                            r = bit32.band(r_15 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_16 = bit32.bxor(r, m)
                            r = bit32.band(r_16 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(bI.Name, 11, 1889647155, "StealPrompt") and bI.Enabled
                    if Q_1 then
                        local Q_2 = aO(bI)
                        local aG = Q_2 and not Y(Q_2)
                        if aG then
                            local aG_2 = Q_2:GetAttribute("Rarity") or ""
                            local U = tostring(aG_2)
                            local aG_3 = F(Q_2)
                            local bx = Z(U, ac.PickUpRarityFilter) and aI(aG_3, ac.PickUpAnimalFilter)
                            if bx then
                                local Position = Q_2:GetPivot().Position
                                table.insert(A, {
                                    prompt = bI,
                                    animal = Q_2,
                                    name = aG_3,
                                    rarity = U,
                                    position = Position,
                                    distance = (Position - P_1).Magnitude
                                })
                            end
                        end
                    end
                end
                table.sort(A, function(p, m)
                    return p.distance < m.distance
                end)
                return A
            end
        elseif bh == 13222 then
            A = {}
            Q = aS()
            P = Q
            bh = if P then 3 else 0
        else
            bh = 1810
        end
    end
end
function fns.fn248()
    return v.CoreGui
end
function fns.fn261()
    local X
    local aQ = 3
    while true do
        aQ += 6754
        if aQ < 6756 then
            if aQ < 4141 then
                break
            elseif aQ < 6754 then
                break
            elseif aQ < 6755 then
                return false
            else
                break
            end
        elseif aQ < 11798 then
            if aQ < 6757 then
                if aQ == 6756 then
                    return aH(X)
                end
                aQ = 6757
                continue
            elseif aQ == 6757 then
                X = M()
                local K = if not X then 1 else 0
                local bG = 2902 * K + 1370 * (1 - K)
                local W = 1141 * K + 3387 * (1 - K)
                aQ = if (bG * 3093 + W * 2015 + bG * W) % 16777213 == 14586183 then 0 else 2
            else
                aQ = 4141
                continue
            end
        else
            break
        end
    end
end
function fns.fn314(r)
    for k, v in pairs(r) do
        if v and v.Parent then
            v.Destroy(v)
        end
        r[k] = nil
    end
end
function fns.fn324(t)
    local cz = bK_5
    local cA = "EquipBest"
    local cB = 2
    ax(cA, t, cB, cz)
end
function fns.onOnClientEvent(r, j)
    local ak = ((function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_19 = bit32.bxor(r, j)
            r = bit32.band(r_19 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_20 = bit32.bxor(r, m)
            r = bit32.band(r_20 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(r, 5, 306125523, "State"))
    local aV = if ak then 1 else 0
    local bv = 2175 * aV + 158 * (1 - aV)
    local aP = 1189 * aV + 381 * (1 - aV)
    if (bv * 666 + aP * 1657 + bv * aP) % 16777213 == 6004798 then
        ak = (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_17 = bit32.bxor(r, j)
                r = bit32.band(r_17 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_18 = bit32.bxor(r, m)
                r = bit32.band(r_18 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(typeof(j), 5, 248602996, "table")
    end
    if ak then
        table.clear(ac.IndexReady)
        for k, v in pairs(j) do
            ac.IndexReady[tostring(k)] = v
        end
    end
end
function fns.fn330(p)
    local ar = tonumber(p)
    local bF = not ar
    local a0 = if bF then 1 else 0
    local bn = 738 * a0 + 1441 * (1 - a0)
    local bt = 1896 * a0 + 80 * (1 - a0)
    if not ((bn * 4068 + bt * 3685 + bn * bt) % 16777213 == 11388192) then
        bF = ar <= 0
    end
    if bF then
        return true
    end
    return am() >= ar
end
local function fn379(q)
    local DiscordGroup = q:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = ag,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn416()
    local bw = aM()
    if not bw then
        return nil, nil
    else
        local GetChildren = bw.GetChildren
        for i, v in ipairs(GetChildren(bw)) do
            local bw_1 = not (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_21 = bit32.bxor(r, j)
                    r = bit32.band(r_21 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_22 = bit32.bxor(r, m)
                    r = bit32.band(r_22 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(v.Name, 14, 739351151, "TreadmillBoard") and string.find(v.Name, "Treadmill", 1, true)
            if bw_1 then
                local Hitbox = v:FindFirstChild("Hitbox")
                local aE = Hitbox and Hitbox:IsA("BasePart")
                if aE then
                    return Hitbox, v
                end
            end
        end
        return nil, nil
    end
end
local function fn422(s, j, l, k)
    local aV, I, aw, bq, bw, a2
    local aX = 8
    while true do
        aX += 13963
        if aX < 13968 then
            if aX < 13488 then
                break
            elseif aX < 13965 then
                if aX < 13963 then
                    break
                elseif aX < 13964 then
                    aV = ac.Gens
                    I = ac.Gens[s]
                    local aG = if I then 1 else 0
                    local X = 3657 * aG + 2359 * (1 - aG)
                    local bE = 719 * aG + 3517 * (1 - aG)
                    aX = if (X * 2043 + bE * 3534 + X * bE) % 16777213 == 12641580 then 7 else 10
                elseif aX == 13964 then
                    aX = if (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_25 = bit32.bxor(r, j)
                            r = bit32.band(r_25 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_26 = bit32.bxor(r, m)
                            r = bit32.band(r_26 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(s, 8, 3399740070, "GuardESP") then 3 else 12
                else
                    aX = 8765
                    continue
                end
            elseif aX < 13966 then
                aw = I
                aX = if aw then 17 else 16
            elseif aX < 13967 then
                af(ac.GuardHighlights)
                aX = 12
            elseif aX == 13967 then
                w(s, l, k)
                aX = 11
            else
                aX = 13977
                continue
            end
        elseif aX < 13974 then
            if aX < 13971 then
                if aX < 13969 then
                    aX = if (bq * 1721 + bw * 1455 + bq * bw) % 16777213 == 8510841 then 13 else 1
                elseif aX < 13970 then
                    aX = 11
                else
                    aV[s] = I + 1
                    a2 = if (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_23 = bit32.bxor(r, j)
                            r = bit32.band(r_23 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_24 = bit32.bxor(r, m)
                            r = bit32.band(r_24 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(s, 6, 3735847043, "EggESP") then 1 else 0
                    bq = 923 * a2 + 103 * (1 - a2)
                    aX = 9
                end
            elseif aX < 13972 then
                aV = ac.Enabled
                I = j
                aX = if I then 14 else 2
            elseif aX < 13973 then
                if aX == 13972 then
                    bw = 2911 * a2 + 331 * (1 - a2)
                    aX = 5
                else
                    aX = 13976
                    continue
                end
            else
                I = 0
                aX = 7
            end
        elseif aX < 13977 then
            if aX < 13975 then
                aX = 15
            elseif aX < 13976 then
                aX = 6
            elseif aX == 13976 then
                af(ac.EggHighlights)
                aX = 6
            else
                aX = 199
                continue
            end
        elseif aX < 13979 then
            if aX < 13978 then
                if aX == 13977 then
                    I = true
                    aX = 2
                else
                    aX = 13967
                    continue
                end
            else
                break
            end
        elseif aX < 13980 then
            if aX == 13979 then
                aw = false
                aX = 17
            else
                aX = 9284
                continue
            end
        else
            aV[s] = aw
            aX = if ac.Enabled[s] then 4 else 0
        end
    end
end
local function fn429()
    local Enabled = ac.Enabled
    for k in pairs(Enabled) do
        ac.Enabled[k] = false
        local Gens = ac.Gens
        local ar = ac.Gens[k] or 0
        Gens[k] = ar + 1
    end
    af(ac.EggHighlights)
    af(ac.GuardHighlights)
end
local function fn499()
    local attr = aL:GetAttribute("Cash")
    local Z = tonumber(attr) or 0
    return Z
end
local function fn500()
    return aL:GetAttribute("Carrying") ~= nil
end
local function fn540()
    local Character = aL.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local bD_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if bD_1 then
        return HumanoidRootPart
    end
    return nil
end
local function fn567(r)
    if not r then
        return nil
    else
        local B = r:GetAttribute("BrainrotName")
        local c4 = type(B)
        local c6 = (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_29 = bit32.bxor(r, j)
                r = bit32.band(r_29 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_30 = bit32.bxor(r, m)
                r = bit32.band(r_30 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(c4, 6, 2175009567, "string")
        local T = (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_27 = bit32.bxor(r, j)
                r = bit32.band(r_27 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_28 = bit32.bxor(r, m)
                r = bit32.band(r_28 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(B, 0, 5381, "")
        local a7 = not c6
        local aR = if a7 then 1 else 0
        local E = 3373 * aR + 1966 * (1 - aR)
        local aV = 2834 * aR + 3926 * (1 - aR)
        if not ((E * 1199 + aV * 1163 + E * aV) % 16777213 == 122038) then
            a7 = T
        end
        if a7 then
            B = r.Name
        end
        return B
    end
end
local function fn601(f)
    local bm = (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_33 = bit32.bxor(r, j)
            r = bit32.band(r_33 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_34 = bit32.bxor(r, m)
            r = bit32.band(r_34 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(f), 6, 2175009567, "string") and not (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_31 = bit32.bxor(r, j)
            r = bit32.band(r_31 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_32 = bit32.bxor(r, m)
            r = bit32.band(r_32 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(f, 0, 5381, "") and not y[f]
    if bm then
        y[f] = true
        table.insert(E, f)
    end
end
local function fn611(p)
    local dd = bK_20
    local de = "UpgradePen"
    local df = 1.5
    ax(de, p, df, dd)
end
local function fn615()
    local aw = not aT()
    local W = if aw then 1 else 0
    local aa = 3561 * W + 1669 * (1 - W)
    local ay = 3466 * W + 162 * (1 - W)
    if not ((aa * 1175 + ay * 235 + aa * ay) % 16777213 == 563898) then
        aw = not ac.Enabled.UpgradeTreadmill
    end
    if aw then
        return
    end
    if os.clock() - ac.LastUpgradeTreadmillAt < 1.5 then
        return
    end
    local aw_1 = aM()
    if not aw_1 then
        return
    end
    if aw_1:GetAttribute(B.UnlockedAttribute) ~= true then
        local bj_1 = S and T(B.Cost)
        if bj_1 then
            pcall(function()
                S.FireServer(S)
            end)
            ac.LastUpgradeTreadmillAt = os.clock()
        end
        return
    end
    local bj_2 = aw_1:GetAttribute("TreadmillLevel") or TreadmillUpgradeConfig.DefaultLevel
    if bj_2 >= TreadmillUpgradeConfig.MaxLevel then
        return
    end
    local bj_3 = TreadmillUpgradeConfig.UpgradeCost(bj_2)
    local aw_3 = bj_3 == nil or not T(bj_3)
    if aw_3 then
        return
    end
    local aw_4 = pcall(function()
        local dh = UpgradeTreadmillRequest
        dh.FireServer(dh)
    end)
    if aw_4 then
        ac.LastUpgradeTreadmillAt = os.clock()
    end
end
local function fn633()
    local aT_3
    local bq_3
    local Character = aL.Character
    local Backpack, bp_5
    if Character then
        local bz_1 = Character:FindFirstChild(ah)
        local bp_1 = bz_1 and bz_1:IsA("Tool")
        local S_1 = if bp_1 then 1 else 0
        local bq_1 = 3781 * S_1 + 3441 * (1 - S_1)
        local aT_1 = 1334 * S_1 + 4062 * (1 - S_1)
        if (bq_1 * 2869 + aT_1 * 1571 + bq_1 * aT_1) % 16777213 == 1210044 then
            return bz_1
        end
        local Backpack2 = aL:FindFirstChild("Backpack")
        if Backpack then
            local bz_2 = Backpack2:FindFirstChild(ah)
            if (bq_3 * 1807 + aT_3 * 3054 + bq_3 * aT_3) % dn_2 == 5741484 then
                bz_2:IsA("Tool")
            end
            if bp_5 then
                return bz_2
            end
            return nil
        end
        return nil
    end
    Backpack = aL:FindFirstChild("Backpack")
    if Backpack then
        local bz_3 = Backpack:FindFirstChild(ah)
        bp_5 = bz_3
        local S_3 = if bp_5 then 1 else 0
        local dn = 1 - S_3
        local dn_2
        bq_3 = 444 * S_3 + 722 * dn
        aT_3 = 1412 * S_3 + 328 * (1 - S_3)
        dn_2 = 16777213
        if (bq_3 * 1807 + aT_3 * 3054 + bq_3 * aT_3) % dn_2 == 5741484 then
            bp_5 = bz_3:IsA("Tool")
        end
        if bp_5 then
            return bz_3
        end
        return nil
    end
    return nil
end
local function fn645()
    z.Toggle(z, false)
end
local function fn657()
    local a9 = not aT() or not ac.Enabled.EquipBest
    if a9 then
        return
    end
    if os.clock() - ac.LastEquipBestAt < 2 then
        return
    end
    local a9_1 = pcall(function()
        local du = PetsInventoryRemote
        du.FireServer(du, "EquipBest", nil)
    end)
    if a9_1 then
        ac.LastEquipBestAt = os.clock()
    end
end
local function fn662(q)
    table.clear(ac.PickUpAnimalFilter)
    if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_39 = bit32.bxor(r, j)
            r = bit32.band(r_39 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_40 = bit32.bxor(r, m)
            r = bit32.band(r_40 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(q), 5, 248602996, "table") then
        for k2, v in pairs(q) do
            local as = k2
            local S = v
            local T = S == true and (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_37 = bit32.bxor(r, j)
                    r = bit32.band(r_37 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_38 = bit32.bxor(r, m)
                    r = bit32.band(r_38 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(as), 6, 2175009567, "string")
            if T then
                ac.PickUpAnimalFilter[as] = true
            elseif (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_35 = bit32.bxor(r, j)
                    r = bit32.band(r_35 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_36 = bit32.bxor(r, m)
                    r = bit32.band(r_36 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(S), 6, 2175009567, "string") then
                ac.PickUpAnimalFilter[S] = true
            end
        end
    end
end
local function fn688(g)
    local dy = bK_1
    local dz = "Break"
    local dA = 0.05
    ax(dz, g, dA, dy)
end
local function fn696(l)
    local dB = bK_21
    local dC = "EggESP"
    local dD = 0.35
    ax(dC, l, dD, dB)
end
local function fn697(r, f)
    local a0
    local bu = 8
    while true do
        bu += 2813
        if bu < 2822 then
            if bu < 2817 then
                if bu < 2814 then
                    if bu < 2813 then
                        break
                    end
                    z.Notify(z, "Copy failed", 3)
                    bu = 5
                elseif bu < 2815 then
                    z.Notify(z, "Clipboard unavailable", 3)
                    return
                elseif bu < 2816 then
                    local D = pcall(a0, r)
                    bu = if D then 12 else 0
                else
                    bu = if not a0 then 1 else 2
                end
            elseif bu < 2819 then
                if bu < 2818 then
                    if bu == 2817 then
                        a0 = "Copied"
                        bu = 6
                    else
                        bu = 2820
                        continue
                    end
                else
                    bu = 10
                end
            elseif bu < 2820 then
                if bu == 2819 then
                    z.Notify(z, a0, 3)
                    bu = 5
                else
                    bu = 2822
                    continue
                end
            elseif bu < 2821 then
                bu = 3
            elseif bu == 2821 then
                a0 = nil
                bu = if H(setclipboard) then 13 else 9
            else
                bu = 2823
                continue
            end
        elseif bu < 6961 then
            if bu < 2824 then
                if bu < 2823 then
                    if bu == 2822 then
                        bu = if H(toclipboard) then 11 else 7
                    else
                        bu = 2815
                        continue
                    end
                else
                    break
                end
            elseif bu < 2825 then
                if bu == 2824 then
                    a0 = toclipboard
                    bu = 7
                else
                    bu = 2819
                    continue
                end
            elseif bu < 2826 then
                a0 = f
                bu = if a0 then 6 else 4
            elseif bu == 2826 then
                a0 = setclipboard
                bu = 3
            else
                bu = 2821
                continue
            end
        else
            break
        end
    end
end
local function fn744(l)
    if not l then
        return nil
    else
        local a0 = l.Parent
        local a0_4
        local bE = a0 and a0:IsA("BasePart")
        local bE_4
        local aj = if bE then 1 else 0
        local bk = 2636 * aj + 3998 * (1 - aj)
        local bk_5, bk_6
        local aY = 3787 * aj + 1010 * (1 - aj)
        local aY_4, aY_5
        if (bk * 2656 + aY * 3924 + bk * aY) % 16777213 == 15066723 then
            bE = a0.Parent
        end
        if bE then
            local Parent = a0.Parent
            bE = Parent:IsA("Model")
        end
        local aj_1 = if bE then 1 else 0
        local bk_2 = 2441 * aj_1 + 3599 * (1 - aj_1)
        local aY_1 = 121 * aj_1 + 2546 * (1 - aj_1)
        if (bk_2 * 1700 + aY_1 * 2972 + bk_2 * aY_1) % 16777213 == 4804673 then
            local Parent = a0.Parent
            local by_2 = at:HasTag(Parent, "AnimalPickup") or at:HasTag(Parent, "PlacedAnimal")
            if by_2 then
                return Parent
            end
            local bE_2 = a0 and a0:IsA("Model")
            if bE_4 then
                local by_3 = at:HasTag(a0, "AnimalPickup") or at:HasTag(a0, "PlacedAnimal")
            end
            if bE_4 then
                return a0
            else
                local bE_3 = a0
                if (bk_5 * 3029 + aY_4 * 2239 + bk_5 * aY_4) % dU_2 == 14617545 then
                    bE_3:IsA("BasePart")
                end
                if (bk_6 * 41 + aY_5 * 917 + bk_6 * aY_5) % dG_2 == 1454796 then
                    return nil
                else
                    local a0_1 = tonumber(l:GetAttribute("PromptRange")) or l.MaxActivationDistance
                    local by_4 = a0_1 or 10
                    local a0_2 = nil
                    local by_5 = by_4 + 4
                    local dP = at
                    local GetTagged2 = dP.GetTagged
                    for i, v in ipairs(GetTagged2(dP, "AnimalPickup")) do
                        if v.Parent then
                            local Position = v:GetPivot().Position
                            local Magnitude = (Position - bE_3.Position).Magnitude
                            if Magnitude < by_5 then
                                by_5 = Magnitude
                                a0_2 = v
                            end
                        end
                    end
                    if a0_4 then
                        return a0_2
                    else
                        local by_6 = by_4 + 4
                        local dI = at
                        local GetTagged = dI.GetTagged
                        for i, v in ipairs(GetTagged(dI, "PlacedAnimal")) do
                            local aB_2 = v.Parent and not Y(v)
                            if aB_2 then
                                local Position = v:GetPivot().Position
                                local Magnitude = (Position - bE_3.Position).Magnitude
                                if Magnitude < by_6 then
                                    by_6 = Magnitude
                                    a0_2 = v
                                end
                            end
                        end
                        return a0_2
                    end
                end
            end
        else
            bE_4 = a0 and a0:IsA("Model")
            if bE_4 then
                local by_7 = at:HasTag(a0, "AnimalPickup") or at:HasTag(a0, "PlacedAnimal")
                bE_4 = by_7
            end
            if bE_4 then
                return a0
            else
                local bE_5 = a0
                local aj_4 = if a0 then 1 else 0
                local dU = 1 - aj_4
                local dU_2
                bk_5 = 2710 * aj_4 + 2482 * dU
                aY_4 = 1295 * aj_4 + 1064 * (1 - aj_4)
                dU_2 = 16777213
                if (bk_5 * 3029 + aY_4 * 2239 + bk_5 * aY_4) % dU_2 == 14617545 then
                    a0 = bE_5:IsA("BasePart")
                end
                local aj_5 = if not a0 then 1 else 0
                local dG = 1 - aj_5
                local dG_2
                bk_6 = 686 * aj_5 + 3685 * dG
                aY_5 = 890 * aj_5 + 1658 * (1 - aj_5)
                dG_2 = 16777213
                if (bk_6 * 41 + aY_5 * 917 + bk_6 * aY_5) % dG_2 == 1454796 then
                    return nil
                else
                    local a0_3 = tonumber(l:GetAttribute("PromptRange")) or l.MaxActivationDistance
                    local by_8 = a0_3 or 10
                    a0_4 = nil
                    local by_9 = by_8 + 4
                    local dP = at
                    local GetTagged2 = dP.GetTagged
                    for i, v in ipairs(GetTagged2(dP, "AnimalPickup")) do
                        if v.Parent then
                            local Position = v:GetPivot().Position
                            local Magnitude = (Position - bE_5.Position).Magnitude
                            if Magnitude < by_9 then
                                by_9 = Magnitude
                                a0_4 = v
                            end
                        end
                    end
                    if a0_4 then
                        return a0_4
                    else
                        local by_10 = by_8 + 4
                        local dI = at
                        local GetTagged = dI.GetTagged
                        for i, v in ipairs(GetTagged(dI, "PlacedAnimal")) do
                            local aB_5 = v.Parent and not Y(v)
                            if aB_5 then
                                local Position = v:GetPivot().Position
                                local Magnitude = (Position - bE_5.Position).Magnitude
                                if Magnitude < by_10 then
                                    by_10 = Magnitude
                                    a0_4 = v
                                end
                            end
                        end
                        return a0_4
                    end
                end
            end
        end
    end
end
local function fn748()
    au(aq.Player)
    local dZ = "Movement"
    local d_ = "person-standing"
    local Player2 = aq.Player
    local Group2 = Player2:AddLeftGroupbox(dZ, d_)
    Group2:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    Group2:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    Group2:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    Group2:AddToggle("NoClip", { Text = "NoClip", Default = false })
    Group2:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local d__1 = "Fly"
    local dZ_1 = "plane"
    local Player = aq.Player
    local Group = Player:AddRightGroupbox(d__1, dZ_1)
    Group:AddToggle("Fly", { Text = "Fly", Default = false })
    Group:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(l)
        aj.SetWalkSpeedEnabled(l)
    end)
    ay.WalkSpeed:OnChanged(function(t)
        aj.SetWalkSpeedValue(t)
    end)
    Toggles.InfJump:OnChanged(function(m)
        aj.SetInfJump(m)
    end)
    Toggles.NoClip:OnChanged(function(s)
        aj.SetNoClip(s)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(j)
        aj.SetInstantProximityPrompt(j)
    end)
    Toggles.Fly:OnChanged(function(c)
        aj.SetFly(c)
    end)
    ay.FlySpeed:OnChanged(function(k)
        aj.SetFlySpeed(k)
    end)
end
local function fn751(p)
    local K = 0
    while true do
        K += 5340
        if K < 5343 then
            if K < 5342 then
                if K < 5341 then
                    if K < 4474 then
                        break
                    elseif K < 5340 then
                        break
                    elseif K == 5340 then
                        table.clear(ac.PickUpRarityFilter)
                        K = if (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_45 = bit32.bxor(r, j)
                                r = bit32.band(r_45 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_46 = bit32.bxor(r, m)
                                r = bit32.band(r_46 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(type(p), 5, 248602996, "table") then 3 else 1
                    else
                        K = 3510
                        continue
                    end
                elseif K == 5341 then
                    K = 2
                else
                    K = 3510
                    continue
                end
            else
                break
            end
        elseif K < 9594 then
            if K < 9445 then
                if K == 5343 then
                    for k2, v in pairs(p) do
                        local bv = v == true and (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_43 = bit32.bxor(r, j)
                                r = bit32.band(r_43 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_44 = bit32.bxor(r, m)
                                r = bit32.band(r_44 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(type(k2), 6, 2175009567, "string")
                        if bv then
                            ac.PickUpRarityFilter[k2] = true
                        elseif (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_41 = bit32.bxor(r, j)
                                r = bit32.band(r_41 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_42 = bit32.bxor(r, m)
                                r = bit32.band(r_42 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(type(v), 6, 2175009567, "string") then
                            ac.PickUpRarityFilter[v] = true
                        end
                    end
                    K = 1
                else
                    K = 4474
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
local function fn780(p)
    if not p then
        return false
    else
        local au = p.Parent
        while true do
            local aW_1 = au and au.Parent and not (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_49 = bit32.bxor(r, j)
                    r = bit32.band(r_49 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_50 = bit32.bxor(r, m)
                    r = bit32.band(r_50 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(au.Parent.Name, 5, 1311970374, "Plots")
            if aW_1 then
                au = au.Parent
                continue
            end
            break
        end
        local aW_2 = not au or au.Parent == nil or not (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_47 = bit32.bxor(r, j)
                r = bit32.band(r_47 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_48 = bit32.bxor(r, m)
                r = bit32.band(r_48 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(au.Parent.Name, 5, 1311970374, "Plots")
        local av = if aW_2 then 1 else 0
        local aP = 1549 * av + 89 * (1 - av)
        local aA = 1865 * av + 1542 * (1 - av)
        if (aP * 2253 + aA * 2597 + aP * aA) % 16777213 == 11222187 then
            return false
        end
        return au:GetAttribute("OwnerUserId") == aL.UserId
    end
end
local function fn789(r)
    local Zones, bu
    local bn = 3
    while true do
        bn += 15375
        if bn < 15375 then
            break
        elseif bn < 15378 then
            if bn < 15376 then
                if bn == 15375 then
                    bu = Zones[r]
                    bn = if (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_53 = bit32.bxor(r, j)
                            r = bit32.band(r_53 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_54 = bit32.bxor(r, m)
                            r = bit32.band(r_54 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(type(bu), 5, 248602996, "table") then 1 else 4
                else
                    bn = 15389
                    continue
                end
            elseif bn < 15377 then
                return bu.Id, bu.Rarity
            else
                break
            end
        elseif bn < 15380 then
            if bn < 15379 then
                Zones = ZonesConfig.Zones
                bn = if not (function(e, t, c, o)
                    if type(e) ~= "string" then
                        return false
                    end
                    if #e ~= t then
                        return false
                    end
                    local r = 5381
                    local s = buffer.fromstring(e)
                    local k = 0
                    while k <= t - 4 do
                        local j = buffer.readu32(s, k)
                        local r_51 = bit32.bxor(r, j)
                        r = bit32.band(r_51 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < t do
                        local m = buffer.readu8(s, k)
                        local r_52 = bit32.bxor(r, m)
                        r = bit32.band(r_52 * 33, 4294967295)
                        k = k + 1
                    end
                    if r ~= c then
                        return false
                    end
                    return e == o
                end)(type(Zones), 5, 248602996, "table") then 5 else 0
            else
                return nil, nil
            end
        elseif bn < 15389 then
            if bn == 15380 then
                return nil
            end
            break
        else
            break
        end
    end
end
local function fn802(o)
    local d9 = bK_2
    local ea = "PickUpBank"
    local eb = 0.12
    ax(ea, o, eb, d9)
end
local function fn816(r)
    table.clear(ac.BreakRarityFilter)
    if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_59 = bit32.bxor(r, j)
            r = bit32.band(r_59 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_60 = bit32.bxor(r, m)
            r = bit32.band(r_60 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(r), 5, 248602996, "table") then
        for k2, v in pairs(r) do
            local aA = k2
            local F = v == true and (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_57 = bit32.bxor(r, j)
                    r = bit32.band(r_57 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_58 = bit32.bxor(r, m)
                    r = bit32.band(r_58 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(aA), 6, 2175009567, "string")
            if F then
                ac.BreakRarityFilter[aA] = true
            elseif (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_55 = bit32.bxor(r, j)
                    r = bit32.band(r_55 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_56 = bit32.bxor(r, m)
                    r = bit32.band(r_56 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(v), 6, 2175009567, "string") then
                ac.BreakRarityFilter[v] = true
            end
        end
    end
end
local function fn821(g, t, l, p)
    local Y, at
    local ap = 2
    while true do
        ap += 13778
        if ap < 13779 then
            if ap < 9382 then
                break
            elseif ap < 9664 then
                break
            elseif ap < 13778 then
                break
            else
                Y.FillColor = l
                Y.OutlineColor = l
                Y.Enabled = true
                return Y
            end
        elseif ap < 13782 then
            if ap < 13780 then
                if ap == 13779 then
                    local highlight = Instance.new("Highlight")
                    highlight.Name = p
                    highlight.Adornee = t
                    highlight.FillColor = l
                    highlight.OutlineColor = l
                    highlight.FillTransparency = 0.55
                    highlight.OutlineTransparency = 0
                    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                    highlight.Parent = t
                    g[t] = highlight
                    return highlight
                end
                ap = 3901
                continue
            elseif ap < 13781 then
                if ap == 13780 then
                    Y = g[t]
                    at = Y
                    ap = if at then 3 else 5
                else
                    ap = 13782
                    continue
                end
            elseif ap == 13781 then
                at = Y.Parent
                ap = 5
            else
                ap = 9664
                continue
            end
        elseif ap < 13783 then
            break
        elseif ap < 15854 then
            if ap == 13783 then
                ap = if at then 0 else 1
            else
                ap = 15854
                continue
            end
        else
            break
        end
    end
end
local function fn867(f)
    local ed = bK_16
    local ee = "Treadmill"
    local ef = 0.2
    ax(ee, f, ef, ed)
end
local function fn885(p)
    local bG = aS()
    if not bG then
        return false
    end
    bG.AssemblyLinearVelocity = Vector3.zero
    bG.AssemblyAngularVelocity = Vector3.zero
    bG.CFrame = p
    return true
end
local function fn888(k)
    local eh = bK_22
    local ei = "BuyPickaxes"
    local ej = 1
    ax(ei, k, ej, eh)
end
local function fn944()
    local bl, bm, aH
    local G_1
    local bm_1
    local bj = 2
    while true do
        bj += 9198
        if bj < 9203 then
            if bj < 9201 then
                if bj < 8257 then
                    break
                elseif bj < 9199 then
                    if bj < 9198 then
                        break
                    elseif bj == 9198 then
                        bm = aH
                        bj = if bm then 4 else 1
                    else
                        bj = 3266
                        continue
                    end
                elseif bj < 9200 then
                    if bj == 9199 then
                        bm = Vector3.zero
                        bj = 4
                    else
                        bj = 13609
                        continue
                    end
                else
                    bl = {}
                    bm = aS()
                    aH = bm
                    local a2 = if aH then 1 else 0
                    local aF = 4064 * a2 + 2374 * (1 - a2)
                    local ah = 2931 * a2 + 1785 * (1 - a2)
                    bj = if (aF * 956 + ah * 70 + aF * ah) % 16777213 == 16001938 then 3 else 0
                end
            elseif bj < 9202 then
                if bj == 9201 then
                    aH = bm.Position
                    bj = 0
                else
                    bj = 14087
                    continue
                end
            else
                local aH_1 = bm
                local en = at
                local GetTagged = en.GetTagged
                local er = "BreakableEgg"
                for i, v in ipairs(GetTagged(en, er)) do
                    if W(v) then
                        G_1, bm_1 = I(v)
                        local aN = D(G_1, ac.BreakZoneFilter) and Z(bm_1, ac.BreakRarityFilter)
                        if aN then
                            table.insert(bl, {
                                egg = v,
                                zoneId = G_1,
                                rarity = bm_1,
                                position = v.Position,
                                distance = (v.Position - aH_1).Magnitude
                            })
                        end
                    end
                end
                table.sort(bl, function(r, s)
                    return r.distance < s.distance
                end)
                return bl
            end
        else
            break
        end
    end
end
local function fn955(r)
    local ay, R
    local bf = 12
    while true do
        bf += 7648
        if bf < 7654 then
            if bf < 7648 then
                break
            elseif bf < 7651 then
                if bf < 7649 then
                    ay = r:FindFirstAncestorOfClass("Model")
                    R = ay
                    bf = if R then 10 else 4
                elseif bf < 7650 then
                    if bf == 7649 then
                        return nil, nil
                    end
                    bf = 1198
                    continue
                elseif bf == 7650 then
                    return ak(ay)
                else
                    bf = 7649
                    continue
                end
            elseif bf < 7652 then
                if bf == 7651 then
                    R = (function(j, q)
                        if type(j) ~= "number" then
                            return false
                        end
                        if j % 1 ~= 0 then
                            return false
                        end
                        local s = j < -2147483648
                        if s then
                        else
                            s = j > 2147483647
                        end
                        if s then
                            return false
                        end
                        local o_4 = bit32.bxor(j, 1540483477)
                        local o_5 = bit32.band(o_4 * 403 + bit32.lshift(o_4, 24), 4294967295)
                        local o_6 = bit32.bxor(o_5, bit32.rshift(o_5, 13))
                        return o_6 == q
                    end)(string.find(ay.Name, "Zone", 1, true), 527583337)
                    bf = 13
                else
                    bf = 7313
                    continue
                end
            elseif bf < 7653 then
                bf = if R then 6 else 9
            elseif bf == 7653 then
                local Name = ay.Name
                return Name, aE[Name]
            else
                bf = 3952
                continue
            end
        elseif bf < 7660 then
            if bf < 7657 then
                if bf < 7655 then
                    R = ay.Parent.Parent
                    bf = 9
                elseif bf < 7656 then
                    return nil, nil
                else
                    ay = r:GetAttribute("ZoneIndex")
                    bf = if (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_61 = bit32.bxor(r, j)
                            r = bit32.band(r_61 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_62 = bit32.bxor(r, m)
                            r = bit32.band(r_62 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(typeof(ay), 6, 472614556, "number") then 2 else 0
                end
            elseif bf < 7658 then
                if bf == 7657 then
                    ay = R
                    bf = if R then 3 else 13
                else
                    bf = 7613
                    continue
                end
            elseif bf < 7659 then
                R = ay.Parent
                bf = 4
            else
                break
            end
        elseif bf < 10482 then
            if bf < 7661 then
                bf = if not r then 1 else 8
            elseif bf < 8532 then
                if bf == 7661 then
                    bf = if R then 5 else 7
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
local function fn968()
    local a3 = not aT() or not ac.Enabled.UpgradePen
    if a3 then
        return
    end
    if os.clock() - ac.LastUpgradePenAt < 1.5 then
        return
    end
    local a3_1 = aM()
    if not a3_1 then
        return
    end
    local ah = a3_1:GetAttribute("PlotLevel") or R.DefaultLevel
    local ah_1 = R.UpgradeCost(ah)
    local a3_3 = ah_1 == nil or not T(ah_1)
    local bd = if a3_3 then 1 else 0
    local ad = 3774 * bd + 3762 * (1 - bd)
    local J = 1073 * bd + 1799 * (1 - bd)
    if (ad * 353 + J * 367 + ad * J) % 16777213 == 5775515 then
        return
    end
    local a3_4 = pcall(function()
        local eu = UpgradePlotRequest
        eu.FireServer(eu)
    end)
    if a3_4 then
        ac.LastUpgradePenAt = os.clock()
    end
end
local function fn989(l)
    table.clear(ac.EggEspRarityFilter)
    local aD = if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_67 = bit32.bxor(r, j)
            r = bit32.band(r_67 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_68 = bit32.bxor(r, m)
            r = bit32.band(r_68 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(l), 5, 248602996, "table") then 1 else 0
    local ax = 736 * aD + 1333 * (1 - aD)
    local bg = 4044 * aD + 4043 * (1 - aD)
    if (ax * 2545 + bg * 3922 + ax * bg) % 16777213 == 3932859 then
        for k2, v in pairs(l) do
            local bt = k2
            local a5 = v
            local ah = a5 == true and (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_65 = bit32.bxor(r, j)
                    r = bit32.band(r_65 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_66 = bit32.bxor(r, m)
                    r = bit32.band(r_66 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(bt), 6, 2175009567, "string")
            if ah then
                ac.EggEspRarityFilter[bt] = true
            elseif (function(e, t, c, o)
                if type(e) ~= "string" then
                    return false
                end
                if #e ~= t then
                    return false
                end
                local r = 5381
                local s = buffer.fromstring(e)
                local k = 0
                while k <= t - 4 do
                    local j = buffer.readu32(s, k)
                    local r_63 = bit32.bxor(r, j)
                    r = bit32.band(r_63 * 33, 4294967295)
                    k = k + 4
                end
                while k < t do
                    local m = buffer.readu8(s, k)
                    local r_64 = bit32.bxor(r, m)
                    r = bit32.band(r_64 * 33, 4294967295)
                    k = k + 1
                end
                if r ~= c then
                    return false
                end
                return e == o
            end)(type(a5), 6, 2175009567, "string") then
                ac.EggEspRarityFilter[a5] = true
            end
        end
    end
end
local function fn1002()
    local aF = not aT() or not ac.Enabled.Treadmill
    if aF then
        return
    end
    if aw() then
        return
    end
    local aF_1 = aM()
    local aN = aF_1 and aF_1:GetAttribute(B.UnlockedAttribute) ~= true
    if aN then
        return
    end
    local aF_2 = aP()
    if not aF_2 then
        return
    end
    local aN_1 = aS()
    if not aN_1 then
        return
    end
    if (aN_1.Position - aF_2.Position).Magnitude > 3 then
        x(aF_2.Position)
        U(aF_2)
    else
        U(aF_2)
    end
end
local function fn1016(o)
    local eC = bK_14
    local eD = "ClaimIndex"
    local eE = 2
    ax(eD, o, eE, eC)
end
local function fn1027()
    local eF = connection2
    eF.Disconnect(eF)
end
local function fn1076()
    au(aq.Visuals)
    local eG = "Egg ESP"
    local eH = "egg"
    local Visuals2 = aq.Visuals
    local Group2 = Visuals2:AddLeftGroupbox(eG, eH)
    Group2:AddToggle("EggESP", { Text = "Egg ESP", Default = false })
    Group2:AddDropdown("EggEspRarityFilter", { Text = "Rarity Filter", Values = X, Default = table.clone(X), Multi = true, AllowNull = true })
    local eH_1 = "Guard ESP"
    local eG_1 = "shield"
    local Visuals = aq.Visuals
    local Group = Visuals:AddRightGroupbox(eH_1, eG_1)
    Group:AddToggle("GuardESP", { Text = "Guard ESP", Default = false })
    Group:AddDropdown("GuardEspZoneFilter", { Text = "Zone Filter", Values = A, Default = table.clone(A), Multi = true, AllowNull = true })
    Toggles.EggESP:OnChanged(function(m)
        aj.SetEggESP(m)
    end)
    ay.EggEspRarityFilter:OnChanged(function(o)
        aj.SetEggEspRarityFilter(o)
    end)
    Toggles.GuardESP:OnChanged(function(q)
        aj.SetGuardESP(q)
    end)
    ay.GuardEspZoneFilter:OnChanged(function(s)
        aj.SetGuardEspZoneFilter(s)
    end)
    aj.SetEggEspRarityFilter(ay.EggEspRarityFilter.Value)
    aj.SetGuardEspZoneFilter(ay.GuardEspZoneFilter.Value)
end
local function fn1092()
    if not aw() then
        return true
    end
    x(L)
    U(CFrame.new(L))
    local az = os.clock() + 4
    while true do
        local ag = aT() and aw() and os.clock() < az
        if ag then
            U(CFrame.new(L))
            task.wait(0.08)
            continue
        end
        break
    end
    return not aw()
end
local function fn1100(q, o)
    local C, V
    local be = 5
    while true do
        be += 7348
        if be < 7353 then
            if be < 7349 then
                if be < 3792 then
                    break
                elseif be < 7348 then
                    break
                else
                    be = if V then 4 else 1
                end
            elseif be < 7351 then
                if be < 7350 then
                    be = if not aA(o) then 2 else 6
                else
                    return true
                end
            elseif be < 7352 then
                if be == 7351 then
                    V = C
                    be = 0
                else
                    be = 7350
                    continue
                end
            else
                return false
            end
        elseif be < 9266 then
            if be < 7355 then
                if be < 7354 then
                    if be == 7353 then
                        local eL = type(q)
                        local eN = (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_71 = bit32.bxor(r, j)
                                r = bit32.band(r_71 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_72 = bit32.bxor(r, m)
                                r = bit32.band(r_72 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(eL, 6, 2175009567, "string")
                        C = (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_69 = bit32.bxor(r, j)
                                r = bit32.band(r_69 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_70 = bit32.bxor(r, m)
                                r = bit32.band(r_70 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(q, 0, 5381, "")
                        V = not eN
                        be = if V then 0 else 3
                    else
                        be = 9266
                        continue
                    end
                elseif be == 7354 then
                    return o[q] == true
                else
                    be = 9869
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
local function fn1121(m)
    local eS = bK_10
    local eT = "BuyTrails"
    local eU = 1
    ax(eT, m, eU, eS)
end
local function fn1128(e)
    local by = (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_75 = bit32.bxor(r, j)
            r = bit32.band(r_75 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_76 = bit32.bxor(r, m)
            r = bit32.band(r_76 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(typeof(cloneref), 8, 2851454103, "function") and (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_73 = bit32.bxor(r, j)
            r = bit32.band(r_73 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_74 = bit32.bxor(r, m)
            r = bit32.band(r_74 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(typeof(e), 8, 1471340621, "Instance")
    if by then
        return cloneref(e)
    end
    return e
end
local function fn1160(k, m)
    local eX = type(k)
    local eZ = (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_79 = bit32.bxor(r, j)
            r = bit32.band(r_79 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_80 = bit32.bxor(r, m)
            r = bit32.band(r_80 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(eX, 6, 2175009567, "string")
    local ax = (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_77 = bit32.bxor(r, j)
            r = bit32.band(r_77 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_78 = bit32.bxor(r, m)
            r = bit32.band(r_78 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(k, 0, 5381, "")
    if not eZ or ax then
        return false
    elseif not aA(m) then
        return true
    else
        local ax_1 = aK[k]
        if ax_1 and m[ax_1] == true then
            return true
        end
        return m[k] == true
    end
end
local function fn1173(p)
    local aF = 3
    while true do
        aF += 12628
        if aF < 12630 then
            if aF < 12629 then
                break
            end
            for k2, v in pairs(p) do
                local aQ = k2
                local aC = v == true and (function(e, t, c, o)
                    if type(e) ~= "string" then
                        return false
                    end
                    if #e ~= t then
                        return false
                    end
                    local r = 5381
                    local s = buffer.fromstring(e)
                    local k = 0
                    while k <= t - 4 do
                        local j = buffer.readu32(s, k)
                        local r_85 = bit32.bxor(r, j)
                        r = bit32.band(r_85 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < t do
                        local m = buffer.readu8(s, k)
                        local r_86 = bit32.bxor(r, m)
                        r = bit32.band(r_86 * 33, 4294967295)
                        k = k + 1
                    end
                    if r ~= c then
                        return false
                    end
                    return e == o
                end)(type(aQ), 6, 2175009567, "string")
                if aC then
                    ac.GuardEspZoneFilter[aQ] = true
                elseif (function(e, t, c, o)
                    if type(e) ~= "string" then
                        return false
                    end
                    if #e ~= t then
                        return false
                    end
                    local r = 5381
                    local s = buffer.fromstring(e)
                    local k = 0
                    while k <= t - 4 do
                        local j = buffer.readu32(s, k)
                        local r_83 = bit32.bxor(r, j)
                        r = bit32.band(r_83 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < t do
                        local m = buffer.readu8(s, k)
                        local r_84 = bit32.bxor(r, m)
                        r = bit32.band(r_84 * 33, 4294967295)
                        k = k + 1
                    end
                    if r ~= c then
                        return false
                    end
                    return e == o
                end)(type(v), 6, 2175009567, "string") then
                    ac.GuardEspZoneFilter[v] = true
                end
            end
            aF = 2
        elseif aF < 13008 then
            if aF < 12631 then
                if aF == 12630 then
                    aF = 0
                else
                    aF = 9281
                    continue
                end
            elseif aF == 12631 then
                table.clear(ac.GuardEspZoneFilter)
                local Z = if (function(e, t, c, o)
                    if type(e) ~= "string" then
                        return false
                    end
                    if #e ~= t then
                        return false
                    end
                    local r = 5381
                    local s = buffer.fromstring(e)
                    local k = 0
                    while k <= t - 4 do
                        local j = buffer.readu32(s, k)
                        local r_81 = bit32.bxor(r, j)
                        r = bit32.band(r_81 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < t do
                        local m = buffer.readu8(s, k)
                        local r_82 = bit32.bxor(r, m)
                        r = bit32.band(r_82 * 33, 4294967295)
                        k = k + 1
                    end
                    if r ~= c then
                        return false
                    end
                    return e == o
                end)(type(p), 5, 248602996, "table") then 1 else 0
                local aZ = 142 * Z + 936 * (1 - Z)
                local bx = 692 * Z + 1262 * (1 - Z)
                aF = if (aZ * 3536 + bx * 2964 + aZ * bx) % 16777213 == 2651464 then 1 else 2
            else
                aF = 11280
                continue
            end
        else
            break
        end
    end
end
local function fn1176()
    local bs
    local R_2
    local a4_3
    local P = 4
    while true do
        P += 15055
        if P < 15056 then
            break
        elseif P < 15058 then
            if P < 15057 then
                P = if bs then 2 else 5
            elseif P == 15057 then
                af(ac.EggHighlights)
                return
            else
                P = 6905
                continue
            end
        elseif P < 15059 then
            bs = not ac.Enabled.EggESP
            P = 1
        elseif P < 15060 then
            bs = not aT()
            P = if bs then 1 else 3
        else
            bs = {}
            local e7 = at
            local GetTagged = e7.GetTagged
            local fb = "BreakableEgg"
            for i, v in ipairs(GetTagged(e7, fb)) do
                if W(v) then
                    a4_3, R_2 = I(v)
                    if Z(R_2, ac.EggEspRarityFilter) then
                        local a4_4 = v:FindFirstAncestorOfClass("Model") or v
                        bs[a4_4] = true
                        local a4_5 = aB[R_2] or Color3.fromRGB(255, 255, 255)
                        C(ac.EggHighlights, a4_4, a4_5, "OuroborosEggESP")
                    end
                end
            end
            local EggHighlights = ac.EggHighlights
            for k, v in pairs(EggHighlights) do
                if not bs[k] or not k.Parent then
                    if v and v.Parent then
                        v.Destroy(v)
                    end
                    ac.EggHighlights[k] = nil
                end
            end
            P = 0
        end
    end
end
local function fn1211(k)
    local ai
    local bh = 8
    while true do
        bh += 2859
        if bh < 4737 then
            if bh < 2863 then
                if bh < 2860 then
                    if bh < 2859 then
                        break
                    elseif bh == 2859 then
                        bh = if not H(fireproximityprompt) then 3 else 7
                    else
                        bh = 2864
                        continue
                    end
                elseif bh < 2861 then
                    break
                elseif bh < 2862 then
                    bh = if ai then 9 else 4
                else
                    return false
                end
            elseif bh < 2866 then
                if bh < 2864 then
                    ai = not k.Enabled
                    bh = 9
                elseif bh < 2865 then
                    if bh == 2864 then
                        return false
                    end
                    bh = 11381
                    continue
                else
                    ai = not k:IsA("ProximityPrompt")
                    bh = 2
                end
            elseif bh < 2867 then
                if bh == 2866 then
                    local ai_1 = pcall(fireproximityprompt, k)
                    return ai_1
                end
                bh = 2865
                continue
            elseif bh < 2868 then
                if bh == 2867 then
                    ai = not k
                    bh = if ai then 2 else 6
                else
                    bh = 6406
                    continue
                end
            elseif bh == 2868 then
                bh = if ai then 5 else 0
            else
                break
            end
        else
            break
        end
    end
end
local function fn1215(f)
    if not (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_91 = bit32.bxor(r, j)
            r = bit32.band(r_91 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_92 = bit32.bxor(r, m)
            r = bit32.band(r_92 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(type(f), 5, 248602996, "table") then
        return
    end
    for i, v in ipairs(f) do
        local bj = v
        if (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_89 = bit32.bxor(r, j)
                r = bit32.band(r_89 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_90 = bit32.bxor(r, m)
                r = bit32.band(r_90 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(type(bj), 5, 248602996, "table") then
            local bo = bj.Name or bj.Id or bj.BrainrotName
            aR(bo)
        elseif (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_87 = bit32.bxor(r, j)
                r = bit32.band(r_87 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_88 = bit32.bxor(r, m)
                r = bit32.band(r_88 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(type(bj), 6, 2175009567, "string") then
            aR(bj)
        end
    end
end
local function fn1245(q)
    local fg = bK_7
    local fh = "GuardESP"
    local fi = 0.35
    ax(fh, q, fi, fg)
end
local function fn1257()
    ad(ag, "Copied Discord invite")
end
local function fn1272()
    gethui = bK_3
end
local function fn1282(q)
    local a8 = q and q.Parent
    local a3 = if a8 then 1 else 0
    local bt = 3680 * a3 + 2025 * (1 - a3)
    local ax = 3279 * a3 + 726 * (1 - a3)
    if (bt * 671 + ax * 2608 + bt * ax) % 16777213 == 6310419 then
        a8 = q:IsA("BasePart")
    end
    local a3_5 = if not a8 then 1 else 0
    local bt_1 = 3249 * a3_5 + 1645 * (1 - a3_5)
    local ax_2 = 1376 * a3_5 + 1597 * (1 - a3_5)
    if (bt_1 * 2942 + ax_2 * 1676 + bt_1 * ax_2) % 16777213 == 16335358 then
        return false
    else
        local a8_1 = q:GetAttribute("Broken") or q:GetAttribute("Hatching")
        local a3_6 = if a8_1 then 1 else 0
        local bt_2 = 576 * a3_6 + 2666 * (1 - a3_6)
        local ax_3 = 3802 * a3_6 + 4001 * (1 - a3_6)
        if not ((bt_2 * 2164 + ax_3 * 2932 + bt_2 * ax_3) % 16777213 == 14583880) then
            a8_1 = q:GetAttribute("Despawning")
        end
        if a8_1 then
            return false
        end
        local attr = q:GetAttribute("Health")
        local bi = (function(e, t, c, o)
            if type(e) ~= "string" then
                return false
            end
            if #e ~= t then
                return false
            end
            local r = 5381
            local s = buffer.fromstring(e)
            local k = 0
            while k <= t - 4 do
                local j = buffer.readu32(s, k)
                local r_93 = bit32.bxor(r, j)
                r = bit32.band(r_93 * 33, 4294967295)
                k = k + 4
            end
            while k < t do
                local m = buffer.readu8(s, k)
                local r_94 = bit32.bxor(r, m)
                r = bit32.band(r_94 * 33, 4294967295)
                k = k + 1
            end
            if r ~= c then
                return false
            end
            return e == o
        end)(typeof(attr), 6, 472614556, "number") and attr <= 0
        if bi then
            return false
        end
        return true
    end
end
local function fn1300(q, m)
    local fu = type(q)
    local fw = (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_97 = bit32.bxor(r, j)
            r = bit32.band(r_97 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_98 = bit32.bxor(r, m)
            r = bit32.band(r_98 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(fu, 6, 2175009567, "string")
    local bA = (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_95 = bit32.bxor(r, j)
            r = bit32.band(r_95 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_96 = bit32.bxor(r, m)
            r = bit32.band(r_96 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(q, 0, 5381, "")
    local bb = not fw
    local aa = if bb then 1 else 0
    local aL = 2981 * aa + 3099 * (1 - aa)
    local aD = 1314 * aa + 617 * (1 - aa)
    if not ((aL * 2134 + aD * 3265 + aL * aD) % 16777213 == 14568698) then
        bb = bA
    end
    local aa_1 = if bb then 1 else 0
    local aL_1 = 5 * aa_1 + 74 * (1 - aa_1)
    local aD_1 = 2518 * aa_1 + 4066 * (1 - aa_1)
    if (aL_1 * 249 + aD_1 * 2924 + aL_1 * aD_1) % 16777213 == 7376467 then
        return false
    elseif not aA(m) then
        return true
    elseif m[q] == true then
        return true
    else
        local bA_1 = string.gsub(q, "%s+", "")
        if bA_1 ~= q and m[bA_1] == true then
            return true
        end
        return false
    end
end
local function fn1313()
    local aZ = {}
    local bD = TrailsConfig.ClampEquipped(aL:GetAttribute(TrailsConfig.EquippedAttribute))
    if not (function(j, q)
        if type(j) ~= "number" then
            return false
        end
        if j % 1 ~= 0 then
            return false
        end
        local s = j < -2147483648
        if s then
        else
            s = j > 2147483647
        end
        if s then
            return false
        end
        local o_7 = bit32.bxor(j, 1540483477)
        local o_8 = bit32.band(o_7 * 403 + bit32.lshift(o_7, 24), 4294967295)
        local o_9 = bit32.bxor(o_8, bit32.rshift(o_8, 13))
        return o_9 == q
    end)(bD, 544454170) then
        aZ[bD] = true
    end
    local attr = aL:GetAttribute(TrailsConfig.OwnedAttribute)
    if (function(e, t, c, o)
        if type(e) ~= "string" then
            return false
        end
        if #e ~= t then
            return false
        end
        local r = 5381
        local s = buffer.fromstring(e)
        local k = 0
        while k <= t - 4 do
            local j = buffer.readu32(s, k)
            local r_99 = bit32.bxor(r, j)
            r = bit32.band(r_99 * 33, 4294967295)
            k = k + 4
        end
        while k < t do
            local m = buffer.readu8(s, k)
            local r_100 = bit32.bxor(r, m)
            r = bit32.band(r_100 * 33, 4294967295)
            k = k + 1
        end
        if r ~= c then
            return false
        end
        return e == o
    end)(typeof(attr), 6, 2175009567, "string") then
        for k in string.gmatch(attr, "[^,]+") do
            local bD_3 = tonumber(k)
            if bD_3 then
                aZ[bD_3] = true
            end
        end
    end
    return aZ
end
local function fn1322()
    local Plots = az:FindFirstChild("Plots")
    if not Plots then
        return nil
    else
        local GetChildren = Plots.GetChildren
        for i, v in ipairs(GetChildren(Plots)) do
            if v:GetAttribute("OwnerUserId") == aL.UserId then
                return v
            end
        end
        return nil
    end
end
local function fn1329(t)
    local fM = bK_8
    local fN = "UpgradeTreadmill"
    local fO = 1.5
    ax(fN, t, fO, fM)
end
v = nil
x = nil
TrailsConfig = nil
z = nil
y = nil
w = nil
A = nil
bK_20 = nil
B = nil
C = nil
D = nil
E = nil
F = nil
G = nil
H = nil
I = nil
J = nil
L = nil
M = nil
bK_14 = nil
TreadmillUpgradeConfig = nil
R = nil
S = nil
T = nil
U = nil
W = nil
X = nil
bK_10 = nil
bK_16 = nil
UpgradeTreadmillRequest = nil
Y = nil
Z = nil
ab = nil
ac = nil
UpgradePlotRequest = nil
ad = nil
ZonesConfig = nil
af = nil
ag = nil
ah = nil
aj = nil
local O, P, Q, PickaxeConfig, aa, ai
local K
O = nil
P = nil
Q = nil
PickaxeConfig = nil
local bK_13
local bK_6
aa = nil
ai = nil
ak = nil
am = nil
bK_21 = nil
an = nil
ap = nil
bK_2 = nil
aq = nil
bK_5 = nil
bK_1 = nil
at = nil
connection2 = nil
au = nil
aw = nil
PetsInventoryRemote = nil
ax = nil
ay = nil
bK_7 = nil
az = nil
aA = nil
aB = nil
Toggles = nil
aE = nil
bK_3 = nil
aG = nil
aH = nil
bK_8 = nil
aI = nil
aK = nil
aL = nil
aM = nil
aO = nil
aP = nil
aR = nil
aS = nil
aT = nil
bK_22 = nil
local PickaxeShopRequest, ao, ar, TrailShopRequest, av, EggHitRequest, aF, aJ, aN, aQ, aU, aV, aW, aX
local aY, aZ, a_, a1, a2, a6, a7, a8, bH
aY = nil
aZ = nil
a_ = nil
local a0
a1 = nil
local bK_11
local bK_23
a2 = nil
bH = nil
local bI
local bK_15
local a3
a3 = 138
while true do
    a3 += 9870
    if a3 < 10006 then
        if a3 < 9935 then
            if a3 < 9900 then
                if a3 < 9882 then
                    if a3 < 9873 then
                        if a3 < 8186 then
                            break
                        elseif a3 < 9871 then
                            if a3 < 9870 then
                                break
                            end
                            aV = loadstring(game:HttpGet(z .. "Library.lua"))()
                            a3 = 222
                        elseif a3 < 9872 then
                            a2 = "v0.6"
                            a3 = 62
                        elseif a3 == 9872 then
                            ao.Gens = {
                                GuardESP = 0,
                                EquipBest = 0,
                                EggESP = 0,
                                BuyPickaxes = 0,
                                PickUpBank = 0,
                                Treadmill = 0,
                                UpgradeTreadmill = 0,
                                BuyTrails = 0,
                                UpgradePen = 0,
                                ClaimIndex = 0,
                                Break = 0
                            }
                            ao.LastBreakAt = 0
                            ao.LastPickUpAt = 0
                            ao.LastBuyTrailsAt = 0
                            ao.LastEquipBestAt = 0
                            ao.LastUpgradePenAt = 0
                            ao.LastUpgradeTreadmillAt = 0
                            ao.LastBuyPickaxeAt = 0
                            ao.LastClaimIndexAt = 0
                            ao.IndexReady = {}
                            ao.EggHighlights = {}
                            ao.GuardHighlights = {}
                            ac = fn540
                            aS = fns.fn100
                            a3 = 28
                        else
                            a3 = 9898
                            continue
                        end
                    elseif a3 < 9877 then
                        if a3 < 9875 then
                            if a3 < 9874 then
                                if a3 == 9873 then
                                    local fR = Color3.fromRGB(180, 180, 180)
                                    local fS = Color3.fromRGB(80, 200, 80)
                                    local fT = Color3.fromRGB(70, 140, 255)
                                    local fU = Color3.fromRGB(180, 70, 255)
                                    local fV = Color3.fromRGB(255, 180, 40)
                                    local fW = Color3.fromRGB(255, 70, 120)
                                    local fX = Color3.fromRGB(255, 240, 140)
                                    local fY = Color3.fromRGB(120, 220, 255)
                                    local fZ = Color3.fromRGB(40, 40, 40)
                                    local f_ = Color3.fromRGB(255, 255, 255)
                                    aB = {
                                        Epic = fU,
                                        Rare = fT,
                                        Divine = fX,
                                        Secret = fZ,
                                        Legendary = fV,
                                        Mythic = fW,
                                        Uncommon = fS,
                                        Cosmic = fY,
                                        Celestial = f_,
                                        Common = fR
                                    }
                                    a3 = 129
                                else
                                    a3 = 11298
                                    continue
                                end
                            else
                                a0 = require(aX:WaitForChild("EggConfig"))
                                a3 = 89
                            end
                        elseif a3 < 9876 then
                            if a3 == 9875 then
                                PickaxeShopRequest = aY:WaitForChild("PickaxeShopRequest", 30)
                                a3 = 160
                            else
                                a3 = 9970
                                continue
                            end
                        elseif a3 == 9876 then
                            a3 = 120
                        else
                            a3 = 10028
                            continue
                        end
                    elseif a3 < 9879 then
                        if a3 < 9878 then
                            a3 = 30
                        else
                            ap = function()
                                local egg, be, bH
                                local H = 2
                                while true do
                                    H += 2943
                                    if H < 2960 then
                                        if H < 2950 then
                                            if H < 2945 then
                                                if H < 2943 then
                                                    break
                                                elseif H < 2944 then
                                                    break
                                                else
                                                    be = not ac.Enabled.Break
                                                    H = 18
                                                end
                                            elseif H < 2947 then
                                                if H < 2946 then
                                                    be = not aT()
                                                    H = if be then 18 else 1
                                                elseif H == 2946 then
                                                    x(egg.Position)
                                                    bH = be.Position - egg.Position
                                                    H = if bH.Magnitude < 0.1 then 21 else 10
                                                else
                                                    H = 2952
                                                    continue
                                                end
                                            elseif H < 2948 then
                                                if H == 2947 then
                                                    be = not ac.Enabled.Break
                                                    H = 20
                                                else
                                                    H = 2970
                                                    continue
                                                end
                                            elseif H < 2949 then
                                                return
                                            elseif H == 2949 then
                                                return
                                            else
                                                H = 2955
                                                continue
                                            end
                                        elseif H < 2955 then
                                            if H < 2952 then
                                                if H < 2951 then
                                                    return
                                                elseif H == 2951 then
                                                    aa()
                                                    be = pcall(function()
                                                        EggHitRequest.FireServer(EggHitRequest, egg)
                                                    end)
                                                    H = if be then 13 else 23
                                                else
                                                    H = 2949
                                                    continue
                                                end
                                            elseif H < 2953 then
                                                if H == 2952 then
                                                    return
                                                end
                                                H = 7723
                                                continue
                                            elseif H < 2954 then
                                                if H == 2953 then
                                                    local f2 = bH.X
                                                    local f3 = bH.Z
                                                    local f4 = 0
                                                    local Unit = Vector3.new(f2, f4, f3).Unit
                                                    local f3_1 = av * 0.45
                                                    local f4_1 = 2
                                                    bH = egg.Position + Unit * math.max(f4_1, f3_1) + Vector3.new(0, 3, 0)
                                                    U(CFrame.new(bH, egg.Position))
                                                    task.wait(0.04)
                                                    be = not aT()
                                                    H = if be then 20 else 4
                                                else
                                                    H = 2960
                                                    continue
                                                end
                                            elseif H == 2954 then
                                                bH = (egg.Position - be.Position).Magnitude
                                                H = if bH > av - 0.5 then 3 else 8
                                            else
                                                H = 2691
                                                continue
                                            end
                                        elseif H < 2957 then
                                            if H < 2956 then
                                                H = if os.clock() - ac.LastBreakAt < ar then 14 else 24
                                            else
                                                ac.LastBreakAt = os.clock()
                                                H = 23
                                            end
                                        elseif H < 2958 then
                                            if H == 2957 then
                                                return
                                            end
                                            H = 3387
                                            continue
                                        elseif H < 2959 then
                                            if H == 2958 then
                                                H = 8
                                            else
                                                H = 2964
                                                continue
                                            end
                                        elseif H == 2959 then
                                            local at = if be then 1 else 0
                                            local am = 1161 * at + 2246 * (1 - at)
                                            local bv = 3882 * at + 1790 * (1 - at)
                                            H = if (am * 2206 + bv * 1280 + am * bv) % 16777213 == 12037128 then 27 else 15
                                        else
                                            H = 4380
                                            continue
                                        end
                                    elseif H < 2969 then
                                        if H < 2964 then
                                            if H < 2962 then
                                                if H < 2961 then
                                                    bH = be[1]
                                                    egg = bH.egg
                                                    H = if not W(egg) then 6 else 22
                                                else
                                                    H = if be then 25 else 19
                                                end
                                            elseif H < 2963 then
                                                if H == 2962 then
                                                    H = if aw() then 5 else 12
                                                else
                                                    H = 2955
                                                    continue
                                                end
                                            else
                                                H = if be then 16 else 26
                                            end
                                        elseif H < 2966 then
                                            if H < 2965 then
                                                bH = Vector3.new(0, 0, 1)
                                                H = 10
                                            else
                                                aa()
                                                be = aS()
                                                H = if not be then 7 else 11
                                            end
                                        elseif H < 2967 then
                                            if H == 2966 then
                                                H = 0
                                            else
                                                H = 2944
                                                continue
                                            end
                                        elseif H < 2968 then
                                            be = P()
                                            H = if (function(j, q)
                                                if type(j) ~= "number" then
                                                    return false
                                                end
                                                if j % 1 ~= 0 then
                                                    return false
                                                end
                                                local s = j < -2147483648
                                                if s then
                                                else
                                                    s = j > 2147483647
                                                end
                                                if s then
                                                    return false
                                                end
                                                local o_16 = bit32.bxor(j, 1540483477)
                                                local o_17 = bit32.band(o_16 * 403 + bit32.lshift(o_16, 24), 4294967295)
                                                local o_18 = bit32.bxor(o_17, bit32.rshift(o_17, 13))
                                                return o_18 == q
                                            end)(#be, 544454170) then 9 else 17
                                        elseif H == 2968 then
                                            return
                                        else
                                            H = 2956
                                            continue
                                        end
                                    elseif H < 8854 then
                                        if H < 3387 then
                                            if H < 2970 then
                                                if H == 2969 then
                                                    be = not W(egg)
                                                    H = 16
                                                else
                                                    H = 2943
                                                    continue
                                                end
                                            elseif H == 2970 then
                                                return
                                            else
                                                H = 2957
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
                            bK_1 = fns.fn247
                            a3 = 257
                        end
                    elseif a3 < 9880 then
                        if a3 == 9879 then
                            bK_14 = fn615
                            bK_8 = fn1002
                            bK_16 = function()
                                local D = not aT() or not ac.Enabled.ClaimIndex
                                if D then
                                    return
                                end
                                if os.clock() - ac.LastClaimIndexAt < 2 then
                                    return
                                end
                                pcall(function()
                                    Q.FireServer(Q, "Get", nil)
                                end)
                                task.wait(0.35)
                                local D_9 = not aT() or not ac.Enabled.ClaimIndex
                                if D_9 then
                                    return
                                end
                                local D_10 = false
                                local IndexReady = ac.IndexReady
                                for k2, v in pairs(IndexReady) do
                                    local bu = v
                                    local aq = k2
                                    if (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_215 = bit32.bxor(r, j)
                                            r = bit32.band(r_215 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_216 = bit32.bxor(r, m)
                                            r = bit32.band(r_216 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(bu, 5, 41870606, "Ready") then
                                        local bm = pcall(function()
                                            Q.FireServer(Q, "Claim", aq)
                                        end)
                                        if bm then
                                            D_10 = true
                                        end
                                    end
                                end
                                if D_10 then
                                    ac.LastClaimIndexAt = os.clock()
                                else
                                    ac.LastClaimIndexAt = os.clock()
                                end
                            end
                            a3 = 7
                        else
                            a3 = 10071
                            continue
                        end
                    elseif a3 < 9881 then
                        if a3 == 9880 then
                            aK = {}
                            aE = {}
                            aV = {}
                            a3 = 199
                        else
                            a3 = 9886
                            continue
                        end
                    elseif a3 == 9881 then
                        a3 = 246
                    else
                        a3 = 10044
                        continue
                    end
                elseif a3 < 9891 then
                    if a3 < 9886 then
                        if a3 < 9884 then
                            if a3 < 9883 then
                                a3 = 218
                            elseif a3 == 9883 then
                                au = fn1257
                                aN = fn379
                                a3 = 260
                            else
                                a3 = 10025
                                continue
                            end
                        elseif a3 < 9885 then
                            X = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic", "Divine", "Cosmic" }
                            a3 = 6
                        elseif a3 == 9885 then
                            assert(L, "Shop remotes missing")
                            local gj = -67
                            local gk = -26
                            local gl = 3
                            aW = Vector3.new(gj, gl, gk)
                            a3 = 80
                        else
                            a3 = 9879
                            continue
                        end
                    elseif a3 < 9888 then
                        if a3 < 9887 then
                            X = { "Mythic", "Divine", "Epic", "Legendary", "Common", "Rare", "Cosmic", "Uncommon" }
                            a3 = 6
                        else
                            aQ = loadstring(game:HttpGet(aV .. "addons/ThemeManager.lua"))()
                            aJ = loadstring(game:HttpGet(aV .. "addons/SaveManager.lua"))()
                            a3 = 170
                        end
                    elseif a3 < 9889 then
                        Z = fn1211
                        D = fns.fn129
                        aA = fn1100
                        J = fn1160
                        a3 = 39
                    elseif a3 < 9890 then
                        if a3 == 9889 then
                            a3 = 188
                        else
                            a3 = 9900
                            continue
                        end
                    else
                        aY = TrailShopRequest:WaitForChild("TrailShopRequest", 30)
                        a3 = 253
                    end
                elseif a3 < 9895 then
                    if a3 < 9893 then
                        if a3 < 9892 then
                            if a3 == 9891 then
                                bK_5 = fn657
                                bK_20 = fn968
                                a3 = 19
                            else
                                a3 = 9955
                                continue
                            end
                        elseif a3 == 9892 then
                            aW = UpgradePlotRequest
                            a3 = 176
                        else
                            a3 = 10010
                            continue
                        end
                    elseif a3 < 9894 then
                        if a3 == 9893 then
                            aV = ah
                            a3 = 97
                        else
                            a3 = 9872
                            continue
                        end
                    else
                        a3 = 209
                    end
                elseif a3 < 9897 then
                    if a3 < 9896 then
                        aV = UpgradeTreadmillRequest
                        a3 = 157
                    else
                        UpgradePlotRequest = aY:WaitForChild("UpgradePlotRequest", 30)
                        a3 = 127
                    end
                elseif a3 < 9898 then
                    if a3 == 9897 then
                        aX = aY:WaitForChild("Shared", 30)
                        a3 = 53
                    else
                        a3 = 9899
                        continue
                    end
                elseif a3 < 9899 then
                    a3 = 256
                elseif a3 == 9899 then
                    X = {}
                    a3 = 117
                else
                    a3 = 10002
                    continue
                end
            elseif a3 < 9917 then
                if a3 < 9908 then
                    if a3 < 9904 then
                        if a3 < 9902 then
                            if a3 < 9901 then
                                if a3 == 9900 then
                                    connection2 = nil
                                    a3 = 91
                                else
                                    a3 = 9963
                                    continue
                                end
                            else
                                a2 = function()
                                    local connection, bw, Q
                                    local ba = 4
                                    while true do
                                        ba += 16310
                                        if ba < 15493 then
                                            break
                                        elseif ba < 16312 then
                                            if ba < 16310 then
                                                break
                                            elseif ba < 16311 then
                                                break
                                            else
                                                Q(aL.Character)
                                                ba = 5
                                            end
                                        elseif ba < 16314 then
                                            if ba < 16313 then
                                                local CharacterAdded = aL.CharacterAdded
                                                connection = CharacterAdded:Connect(Q)
                                                aj.Track(function()
                                                    connection.Disconnect(connection)
                                                    aj.SetInfJump(false)
                                                    aj.SetNoClip(false)
                                                    aj.SetFly(false)
                                                    aj.SetInstantProximityPrompt(false)
                                                    aj.SetWalkSpeedEnabled(false)
                                                end)
                                                ba = 3
                                            else
                                                ba = 0
                                            end
                                        elseif ba < 16315 then
                                            if ba == 16314 then
                                                bw = function(c)
                                                    local ab = 0
                                                    while true do
                                                        ab += 3141
                                                        if ab < 3148 then
                                                            if ab < 3144 then
                                                                if ab < 3142 then
                                                                    if ab == 3141 then
                                                                        ab = if not c then 1 else 2
                                                                    else
                                                                        break
                                                                    end
                                                                elseif ab < 3143 then
                                                                    if ab == 3142 then
                                                                        return
                                                                    end
                                                                    ab = 3147
                                                                    continue
                                                                elseif ab == 3143 then
                                                                    local av = if aF.WalkSnapshots[c] == nil then 1 else 0
                                                                    local aY = 3305 * av + 3669 * (1 - av)
                                                                    local L = 2815 * av + 762 * (1 - av)
                                                                    ab = if (aY * 3562 + L * 3380 + aY * L) % 16777213 == 13813472 then 4 else 7
                                                                else
                                                                    ab = 3142
                                                                    continue
                                                                end
                                                            elseif ab < 3146 then
                                                                if ab < 3145 then
                                                                    if ab == 3144 then
                                                                        ab = 6
                                                                    else
                                                                        ab = 3145
                                                                        continue
                                                                    end
                                                                elseif ab == 3145 then
                                                                    aF.WalkSnapshots[c] = c.WalkSpeed
                                                                    ab = 7
                                                                else
                                                                    ab = 15252
                                                                    continue
                                                                end
                                                            elseif ab < 3147 then
                                                                if ab == 3146 then
                                                                    c.WalkSpeed = aF.WalkSpeed
                                                                    ab = 3
                                                                else
                                                                    ab = 15252
                                                                    continue
                                                                end
                                                            else
                                                                break
                                                            end
                                                        elseif ab < 11670 then
                                                            if ab < 7216 then
                                                                if ab < 6020 then
                                                                    if ab == 3148 then
                                                                        ab = if aF.WalkSpeedEnabled then 5 else 3
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
                                                aj.SetWalkSpeedEnabled = function(t)
                                                    local bd = t and true or false
                                                    aF.WalkSpeedEnabled = bd
                                                    local E_4 = ao()
                                                    if not E_4 then
                                                        return
                                                    end
                                                    if aF.WalkSpeedEnabled then
                                                        bw(E_4)
                                                    elseif aF.WalkSnapshots[E_4] ~= nil then
                                                        E_4.WalkSpeed = aF.WalkSnapshots[E_4]
                                                    end
                                                end
                                                aj.SetWalkSpeedValue = function(g)
                                                    local ac
                                                    local aW = 5
                                                    while true do
                                                        aW += 2858
                                                        if aW < 2863 then
                                                            if aW < 2859 then
                                                                if aW < 2693 then
                                                                    break
                                                                elseif aW < 2858 then
                                                                    break
                                                                else
                                                                    ac = ao()
                                                                    aW = if ac then 1 else 2
                                                                end
                                                            elseif aW < 2861 then
                                                                if aW < 2860 then
                                                                    ac.WalkSpeed = g
                                                                    aW = 2
                                                                elseif aW == 2860 then
                                                                    aW = 3
                                                                else
                                                                    aW = 2861
                                                                    continue
                                                                end
                                                            elseif aW < 2862 then
                                                                aW = 4
                                                            else
                                                                break
                                                            end
                                                        elseif aW < 10924 then
                                                            if aW < 5032 then
                                                                if aW == 2863 then
                                                                    aF.WalkSpeed = g
                                                                    aW = if aF.WalkSpeedEnabled then 0 else 3
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
                                                aj.SetInfJump = function(e)
                                                    local a6, bD
                                                    local bl = 8
                                                    while true do
                                                        bl += 8568
                                                        if bl < 8573 then
                                                            if bl < 8569 then
                                                                if bl < 4536 then
                                                                    break
                                                                elseif bl < 8568 then
                                                                    break
                                                                elseif bl == 8568 then
                                                                    aF.InfJump = bD
                                                                    bl = if aF.InfJumpConn then 9 else 3
                                                                else
                                                                    bl = 8573
                                                                    continue
                                                                end
                                                            elseif bl < 8571 then
                                                                if bl < 8570 then
                                                                    break
                                                                elseif bl == 8570 then
                                                                    aF.InfJumpConn = v.UserInputService.JumpRequest:Connect(function()
                                                                        local bp = not aT() or not aF.InfJump
                                                                        if bp then
                                                                            return
                                                                        end
                                                                        local bp_9 = ao()
                                                                        if bp_9 then
                                                                            bp_9:ChangeState(Enum.HumanoidStateType.Jumping)
                                                                        end
                                                                    end)
                                                                    bl = 1
                                                                else
                                                                    bl = 8568
                                                                    continue
                                                                end
                                                            elseif bl < 8572 then
                                                                bl = if not aF.InfJump then 5 else 2
                                                            elseif bl == 8572 then
                                                                bD = a6
                                                                bl = if bD then 0 else 7
                                                            else
                                                                bl = 9920
                                                                continue
                                                            end
                                                        elseif bl < 8577 then
                                                            if bl < 8575 then
                                                                if bl < 8574 then
                                                                    if bl == 8573 then
                                                                        return
                                                                    end
                                                                    bl = 4536
                                                                    continue
                                                                end
                                                                a6 = true
                                                                bl = 4
                                                            elseif bl < 8576 then
                                                                bD = false
                                                                bl = 0
                                                            elseif bl == 8576 then
                                                                a6 = e
                                                                bl = if a6 then 6 else 4
                                                            else
                                                                bl = 8575
                                                                continue
                                                            end
                                                        elseif bl < 12076 then
                                                            if bl < 9920 then
                                                                if bl == 8577 then
                                                                    a6 = aF.InfJumpConn
                                                                    a6.Disconnect(a6)
                                                                    aF.InfJumpConn = nil
                                                                    bl = 3
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
                                                aj.SetNoClip = function(k)
                                                    local C, R, ay
                                                    local A = 9
                                                    while true do
                                                        A += 16354
                                                        if A < 16358 then
                                                            if A < 16354 then
                                                                break
                                                            elseif A < 16356 then
                                                                if A < 16355 then
                                                                    if A == 16354 then
                                                                        C = function(c)
                                                                            local ao = (c:IsA("BasePart"))
                                                                            local bF = if ao then 1 else 0
                                                                            local z = 3436 * bF + 2500 * (1 - bF)
                                                                            local aO = 448 * bF + 824 * (1 - bF)
                                                                            if (z * 1111 + aO * 1895 + z * aO) % 16777213 == 6205684 then
                                                                                ao = aF.NoClipSnapshots[c] == nil
                                                                            end
                                                                            if ao then
                                                                                aF.NoClipSnapshots[c] = c.CanCollide
                                                                                c.CanCollide = false
                                                                            end
                                                                        end
                                                                        A = if R then 2 else 8
                                                                    else
                                                                        A = 1511
                                                                        continue
                                                                    end
                                                                elseif A == 16355 then
                                                                    R = aF.NoClipConn
                                                                    R.Disconnect(R)
                                                                    aF.NoClipConn = nil
                                                                    A = 4
                                                                else
                                                                    A = 6078
                                                                    continue
                                                                end
                                                            elseif A < 16357 then
                                                                local GetDescendants = R.GetDescendants
                                                                for i, v in ipairs(GetDescendants(R)) do
                                                                    C(v)
                                                                end
                                                                aF.NoClipConn = R.DescendantAdded:Connect(function(p)
                                                                    local bb = 1
                                                                    while true do
                                                                        bb += 14303
                                                                        if bb < 8600 then
                                                                            break
                                                                        elseif bb < 14303 then
                                                                            break
                                                                        elseif bb < 14305 then
                                                                            if bb < 14304 then
                                                                                bb = 2
                                                                            elseif bb == 14304 then
                                                                                bb = if aF.NoClip then 3 else 0
                                                                            else
                                                                                bb = 7542
                                                                                continue
                                                                            end
                                                                        elseif bb < 14306 then
                                                                            break
                                                                        else
                                                                            C(p)
                                                                            bb = 0
                                                                        end
                                                                    end
                                                                end)
                                                                A = 8
                                                            else
                                                                break
                                                            end
                                                        elseif A < 16359 then
                                                            if A == 16358 then
                                                                R = aL.Character
                                                                A = if not aF.NoClip then 5 else 0
                                                            else
                                                                A = 16364
                                                                continue
                                                            end
                                                        elseif A < 16362 then
                                                            if A < 16360 then
                                                                if A == 16359 then
                                                                    local NoClipSnapshots = aF.NoClipSnapshots
                                                                    for k, v in pairs(NoClipSnapshots) do
                                                                        if k and k.Parent then
                                                                            k.CanCollide = v
                                                                        end
                                                                    end
                                                                    table.clear(aF.NoClipSnapshots)
                                                                    return
                                                                end
                                                                A = 4569
                                                                continue
                                                            elseif A < 16361 then
                                                                if A == 16360 then
                                                                    ay = R
                                                                    A = if ay then 11 else 10
                                                                else
                                                                    A = 16359
                                                                    continue
                                                                end
                                                            elseif A == 16361 then
                                                                R = true
                                                                A = 6
                                                            else
                                                                A = 91
                                                                continue
                                                            end
                                                        elseif A < 16364 then
                                                            if A < 16363 then
                                                                A = 3
                                                            else
                                                                R = k
                                                                A = if R then 7 else 6
                                                            end
                                                        elseif A < 16365 then
                                                            if A == 16364 then
                                                                ay = false
                                                                A = 11
                                                            else
                                                                A = 16355
                                                                continue
                                                            end
                                                        elseif A == 16365 then
                                                            aF.NoClip = ay
                                                            A = if aF.NoClipConn then 1 else 4
                                                        else
                                                            A = 5609
                                                        end
                                                    end
                                                end
                                                aj.SetFly = function(t)
                                                    local aJ, aj, u
                                                    local bz = 17
                                                    while true do
                                                        bz += 15778
                                                        if bz < 15782 then
                                                            if bz < 15209 then
                                                                break
                                                            elseif bz < 15778 then
                                                                break
                                                            elseif bz < 15780 then
                                                                if bz < 15779 then
                                                                    aj = aJ
                                                                    bz = if aj then 2 else 12
                                                                else
                                                                    aF.FlySnap = nil
                                                                    bz = if aj then 9 else 4
                                                                end
                                                            elseif bz < 15781 then
                                                                if bz == 15780 then
                                                                    aF.Fly = aj
                                                                    bz = if aF.FlyConn then 5 else 15
                                                                else
                                                                    bz = 15787
                                                                    continue
                                                                end
                                                            elseif bz == 15781 then
                                                                aF.FlySnap = { PlatformStand = aJ.PlatformStand }
                                                                aJ.PlatformStand = true
                                                                bz = 13
                                                            else
                                                                bz = 15795
                                                                continue
                                                            end
                                                        elseif bz < 15789 then
                                                            if bz < 15785 then
                                                                if bz < 15783 then
                                                                    if bz == 15782 then
                                                                        return
                                                                    end
                                                                    bz = 15778
                                                                    continue
                                                                elseif bz < 15784 then
                                                                    aJ = aF.FlyConn
                                                                    aJ.Disconnect(aJ)
                                                                    aF.FlyConn = nil
                                                                    bz = 15
                                                                elseif bz == 15784 then
                                                                    u = aF.FlySnap
                                                                    bz = if u then 10 else 11
                                                                else
                                                                    bz = 15209
                                                                    continue
                                                                end
                                                            elseif bz < 15787 then
                                                                if bz < 15786 then
                                                                    if bz == 15785 then
                                                                        aJ.PlatformStand = aF.FlySnap.PlatformStand
                                                                        bz = 1
                                                                    else
                                                                        bz = 15792
                                                                        continue
                                                                    end
                                                                else
                                                                    break
                                                                end
                                                            elseif bz < 15788 then
                                                                aj.AssemblyLinearVelocity = Vector3.zero
                                                                bz = 4
                                                            elseif bz == 15788 then
                                                                u = aJ
                                                                bz = 11
                                                            else
                                                                bz = 15590
                                                                continue
                                                            end
                                                        elseif bz < 15792 then
                                                            if bz < 15790 then
                                                                bz = if u then 7 else 1
                                                            elseif bz < 15791 then
                                                                aj = false
                                                                bz = 2
                                                            else
                                                                aF.FlyConn = v.RunService.RenderStepped:Connect(function()
                                                                    local T = not aT() or not aF.Fly
                                                                    if T then
                                                                        return
                                                                    end
                                                                    local UserInputService = v.UserInputService
                                                                    if UserInputService:GetFocusedTextBox() then
                                                                        return
                                                                    end
                                                                    local T_4 = aS()
                                                                    local CurrentCamera = az.CurrentCamera
                                                                    if not (T_4 and CurrentCamera) then
                                                                        return
                                                                    end
                                                                    local V_2 = Vector3.zero
                                                                    if v.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                                        V_2 += CurrentCamera.CFrame.LookVector
                                                                    end
                                                                    if v.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                                        V_2 -= CurrentCamera.CFrame.LookVector
                                                                    end
                                                                    if v.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                                        V_2 -= CurrentCamera.CFrame.RightVector
                                                                    end
                                                                    if v.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                                        V_2 += CurrentCamera.CFrame.RightVector
                                                                    end
                                                                    local aK = if v.UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                                                                    local bA = 3958 * aK + 1807 * (1 - aK)
                                                                    local a2 = 789 * aK + 1086 * (1 - aK)
                                                                    if (bA * 3482 + a2 * 3152 + bA * a2) % 16777213 == 2614333 then
                                                                        V_2 += Vector3.yAxis
                                                                    end
                                                                    local N = if v.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                                                    if N == 1 then
                                                                        V_2 -= Vector3.yAxis
                                                                    end
                                                                    if V_2.Magnitude > 0 then
                                                                        T_4.AssemblyLinearVelocity = V_2.Unit * aF.FlySpeed
                                                                    else
                                                                        T_4.AssemblyLinearVelocity = Vector3.zero
                                                                    end
                                                                    T_4.CFrame = CFrame.new(T_4.Position, T_4.Position + CurrentCamera.CFrame.LookVector)
                                                                end)
                                                                bz = 8
                                                            end
                                                        elseif bz < 15794 then
                                                            if bz < 15793 then
                                                                local Z = if aJ then 1 else 0
                                                                local bH = 3441 * Z + 4 * (1 - Z)
                                                                local bG = 1929 * Z + 1023 * (1 - Z)
                                                                bz = if (bH * 3407 + bG * 2214 + bH * bG) % 16777213 == 5854769 then 3 else 13
                                                            else
                                                                aJ = ao()
                                                                aj = aS()
                                                                bz = if not aF.Fly then 6 else 14
                                                            end
                                                        elseif bz < 15795 then
                                                            if bz == 15794 then
                                                                aJ = true
                                                                bz = 0
                                                            else
                                                                bz = 15786
                                                                continue
                                                            end
                                                        else
                                                            aJ = t
                                                            bz = if aJ then 16 else 0
                                                        end
                                                    end
                                                end
                                                aj.SetFlySpeed = function(m)
                                                    aF.FlySpeed = m
                                                end
                                                aj.SetInstantProximityPrompt = function(e)
                                                    local bx
                                                    local ae = e and true or false
                                                    aF.InstantPP = ae
                                                    if aF.InstantConn then
                                                        local InstantConn = aF.InstantConn
                                                        InstantConn.Disconnect(InstantConn)
                                                        aF.InstantConn = nil
                                                    end
                                                    local function bi_4()
                                                        local InstantSnapshots = aF.InstantSnapshots
                                                        for k, v in pairs(InstantSnapshots) do
                                                            if k and k.Parent then
                                                                k.HoldDuration = v.HoldDuration
                                                                k.MaxActivationDistance = v.MaxActivationDistance
                                                                k.RequiresLineOfSight = v.RequiresLineOfSight
                                                            end
                                                        end
                                                        table.clear(aF.InstantSnapshots)
                                                    end
                                                    if not aF.InstantPP then
                                                        bi_4()
                                                        return
                                                    end
                                                    bx = function(j)
                                                        if not j:IsA("ProximityPrompt") then
                                                            return
                                                        end
                                                        if aF.InstantSnapshots[j] == nil then
                                                            aF.InstantSnapshots[j] = {
                                                                HoldDuration = j.HoldDuration,
                                                                MaxActivationDistance = j.MaxActivationDistance,
                                                                RequiresLineOfSight = j.RequiresLineOfSight
                                                            }
                                                        end
                                                        j.HoldDuration = 0
                                                        j.MaxActivationDistance = 50
                                                        j.RequiresLineOfSight = false
                                                    end
                                                    local g_ = az
                                                    local GetDescendants = g_.GetDescendants
                                                    for i, v in ipairs(GetDescendants(g_)) do
                                                        bx(v)
                                                    end
                                                    aF.InstantConn = az.DescendantAdded:Connect(function(k)
                                                        local be = 0
                                                        while true do
                                                            be += 5131
                                                            if be < 5751 then
                                                                if be < 5131 then
                                                                    break
                                                                elseif be < 5133 then
                                                                    if be < 5132 then
                                                                        be = if aF.InstantPP then 3 else 1
                                                                    else
                                                                        be = 2
                                                                    end
                                                                elseif be < 5134 then
                                                                    break
                                                                elseif be == 5134 then
                                                                    bx(k)
                                                                    be = 1
                                                                else
                                                                    be = 4226
                                                                    continue
                                                                end
                                                            else
                                                                break
                                                            end
                                                        end
                                                    end)
                                                end
                                                Q = function(g)
                                                    task.defer(function()
                                                        if not aT() then
                                                            return
                                                        end
                                                        local Humanoid = g:WaitForChild("Humanoid", 10)
                                                        if not Humanoid then
                                                            return
                                                        end
                                                        if aF.WalkSpeedEnabled then
                                                            bw(Humanoid)
                                                        end
                                                        if aF.NoClip then
                                                            aj.SetNoClip(true)
                                                        end
                                                        if aF.Fly then
                                                            aj.SetFly(true)
                                                        end
                                                    end)
                                                end
                                                ba = if aL.Character then 1 else 5
                                            else
                                                ba = 7540
                                                continue
                                            end
                                        elseif ba == 16315 then
                                            ba = 2
                                        else
                                            ba = 15493
                                        end
                                    end
                                end
                                a3 = 259
                            end
                        elseif a3 < 9903 then
                            if a3 == 9902 then
                                a3 = 103
                            else
                                a3 = 10109
                                continue
                            end
                        else
                            a_ = function()
                                local p
                                local function j(l)
                                    local q = (tostring(l))
                                    local r = (q:gsub("&", "&amp;"))
                                    local k = (r:gsub("<", "&lt;"))
                                    local p = (k:gsub(">", "&gt;"))
                                    local t = (p:gsub('"', "&quot;"))
                                    return (t:gsub("'", "&apos;"))
                                end
                                local function f(m)
                                    local ak = tostring(m)
                                    local bc = Color3.fromRGB(255, 105, 180)
                                    local bC = Color3.fromRGB(255, 182, 193)
                                    local O = {}
                                    local z = utf8.len(ak) or #ak
                                    local aE = 1
                                    for k, v in utf8.codes(ak) do
                                        local ak_3 = (aE - 1) / math.max(z - 1, 1)
                                        local z_2 = bc:Lerp(bC, ak_3)
                                        local hh = math.floor(z_2.R * 255 + 0.5)
                                        local hi = math.floor(z_2.G * 255 + 0.5)
                                        local ak_4 = string.format("#%02x%02x%02x", hh, hi, math.floor(z_2.B * 255 + 0.5))
                                        O[aE] = string.format('<font color="%s">%s</font>', ak_4, j(utf8.char(v)))
                                        aE += 1
                                    end
                                    return table.concat(O)
                                end
                                local function g(q)
                                    local bh = tonumber(q) or 0
                                    local bh_2 = math.abs(bh)
                                    if bh_2 >= 1000000000000000 then
                                        local ht = bh / 1000000000000000
                                        return string.format("%.2fQ", ht)
                                    elseif bh_2 >= 1000000000000 then
                                        local hn = bh / 1000000000000
                                        return string.format("%.2fT", hn)
                                    elseif bh_2 >= 1000000000 then
                                        local hl = bh / 1000000000
                                        return string.format("%.2fB", hl)
                                    elseif bh_2 >= 1000000 then
                                        local hp = bh / 1000000
                                        return string.format("%.2fM", hp)
                                    elseif bh_2 >= 1000 then
                                        local hr = bh / 1000
                                        return string.format("%.2fK", hr)
                                    else
                                        return tostring(math.floor(bh + 0.5))
                                    end
                                end
                                au(aq.Main)
                                local hv = "Status"
                                local hw = "activity"
                                local Main6 = aq.Main
                                local Group6 = Main6:AddRightGroupbox(hv, hw)
                                local c = {
                                    { Text = f("Cash"), Status = f("-") },
                                    { Text = f("Speed"), Status = f("-") },
                                    { Text = f("Pickaxe"), Status = f("-") },
                                    { Text = f("Plot"), Status = f("-") },
                                    { Text = f("Carrying"), Status = f("No") },
                                    { Text = f("Autos"), Status = f("Off") },
                                    { Text = f("Pickups"), Status = f("0") }
                                }
                                local s = Group6:AddStatusLabel("FarmStatus", { MaxHeight = 160, RowHeight = 18, StatusColor = Color3.fromRGB(255, 182, 193), Items = c })
                                local function worker()
                                    local Unloaded = z.Unloaded
                                    local aC = not s
                                    local a_ = Unloaded
                                    local y = if a_ then 1 else 0
                                    local aP = 1613 * y + 2947 * (1 - y)
                                    local a5 = 2230 * y + 2986 * (1 - y)
                                    if not ((aP * 2049 + a5 * 702 + aP * a5) % 16777213 == 8467487) then
                                        a_ = aC
                                    end
                                    if a_ then
                                        return
                                    end
                                    local aC_6 = aM()
                                    local a__8 = aL:GetAttribute("PickaxeTier") or 1
                                    local a3 = PickaxeConfig.Tiers[a__8] and PickaxeConfig.Tiers[a__8].Name
                                    if not a3 then
                                        local hB = tostring(a__8)
                                        a3 = "Tier " .. hB
                                    end
                                    local a__10 = aC_6
                                    local aA_3 = a3
                                    if a__10 then
                                        local a3_15 = aC_6:GetAttribute("AnimalsPlaced") or 0
                                        a__10 = a3_15
                                    end
                                    local a3_16 = a__10 or 0
                                    local a__11 = aC_6
                                    if a__11 then
                                        local a3_17 = aC_6:GetAttribute("MaxAnimals") or 0
                                        a__11 = a3_17
                                    end
                                    local a3_18 = a__11 or 0
                                    local a__12 = aC_6
                                    local bq = if a__12 then 1 else 0
                                    local ah = 417 * bq + 477 * (1 - bq)
                                    local aD = 3382 * bq + 303 * (1 - bq)
                                    if (ah * 2586 + aD * 2272 + ah * aD) % 16777213 == 10172560 then
                                        local a3_19 = (aC_6:GetAttribute("PlotLevel"))
                                        local bq_5 = if a3_19 then 1 else 0
                                        local ah_5 = 1588 * bq_5 + 475 * (1 - bq_5)
                                        local aD_3 = 3012 * bq_5 + 3734 * (1 - bq_5)
                                        if not ((ah_5 * 3505 + aD_3 * 2743 + ah_5 * aD_3) % 16777213 == 1833699) then
                                            a3_19 = 1
                                        end
                                        a__12 = a3_19
                                    end
                                    local aC_7 = a__12 or 0
                                    local aC_8 = aw() and "Yes"
                                    local a3_20 = aC_8 or "No"
                                    local aC_9 = {}
                                    local Enabled = ac.Enabled
                                    if Enabled.Break then
                                        table.insert(aC_9, "Break")
                                    end
                                    if Enabled.PickUpBank then
                                        table.insert(aC_9, "PickUp")
                                    end
                                    if Enabled.Treadmill then
                                        table.insert(aC_9, "Tread")
                                    end
                                    if Enabled.BuyTrails then
                                        table.insert(aC_9, "Trails")
                                    end
                                    if Enabled.BuyPickaxes then
                                        table.insert(aC_9, "Pickaxes")
                                    end
                                    if Enabled.UpgradePen then
                                        table.insert(aC_9, "Pen")
                                    end
                                    if Enabled.UpgradeTreadmill then
                                        table.insert(aC_9, "TreadUp")
                                    end
                                    if Enabled.EquipBest then
                                        table.insert(aC_9, "Equip")
                                    end
                                    if Enabled.ClaimIndex then
                                        table.insert(aC_9, "Index")
                                    end
                                    local a3_22 = 0
                                    local hG = at
                                    local GetTagged = hG.GetTagged
                                    for i, v in ipairs(GetTagged(hG, "SmartPrompt")) do
                                        local bv = v
                                        local D_7 = bv:IsA("ProximityPrompt") and (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_213 = bit32.bxor(r, j)
                                                r = bit32.band(r_213 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_214 = bit32.bxor(r, m)
                                                r = bit32.band(r_214 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(bv.Name, 11, 1889647155, "StealPrompt") and bv.Enabled
                                        if D_7 then
                                            a3_22 += 1
                                        end
                                    end
                                    c[1].Status = f(g(am()))
                                    local D_8 = c[2]
                                    local bj = aL:GetAttribute("SpeedPower") or 0
                                    D_8.Status = f(g(bj))
                                    c[3].Status = f(tostring(aA_3))
                                    local hM = tostring(aC_7)
                                    local hN = tostring(a3_16)
                                    c[4].Status = f(string.format("Lv%s %s/%s", hM, hN, tostring(a3_18)))
                                    c[5].Status = f(a3_20)
                                    local a__14 = c[6]
                                    local aA_4 = #aC_9 > 0 and table.concat(aC_9, ", ")
                                    local aC_10 = aA_4 or "Off"
                                    a__14.Status = f(aC_10)
                                    c[7].Status = f(tostring(a3_22))
                                    for i, v in ipairs(c) do
                                        s.UpdateItem(s, v)
                                    end
                                end
                                p = task.spawn(function()
                                    local bg_4
                                    while true do
                                        local x = aT() and not z.Unloaded
                                        local x_2
                                        if x then
                                            x_2, bg_4 = pcall(worker)
                                            if not x_2 then
                                                local hV = tostring(bg_4)
                                                warn("[Ouroboros] Status: " .. hV)
                                            end
                                            task.wait(0.5)
                                            continue
                                        end
                                        break
                                    end
                                end)
                                aj.Track(function()
                                    if not (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_211 = bit32.bxor(r, j)
                                            r = bit32.band(r_211 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_212 = bit32.bxor(r, m)
                                            r = bit32.band(r_212 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(coroutine.status(p), 4, 4035935361, "dead") then
                                        pcall(task.cancel, p)
                                    end
                                end)
                                local hw_1 = "Break"
                                local hv_1 = "hammer"
                                local Main5 = aq.Main
                                local Group5 = Main5:AddLeftGroupbox(hw_1, hv_1)
                                Group5:AddToggle("AutoBreak", { Text = "Auto Break", Default = false })
                                Group5:AddDropdown("BreakRarityFilter", { Text = "Rarity Filter", Values = X, Default = table.clone(X), Multi = true, AllowNull = true })
                                Group5:AddDropdown("BreakZoneFilter", { Text = "Zone Filter", Values = A, Default = table.clone(A), Multi = true, AllowNull = true })
                                local hv_2 = "Farm"
                                local hw_2 = "rabbit"
                                local Main4 = aq.Main
                                local Group4 = Main4:AddLeftGroupbox(hv_2, hw_2)
                                Group4:AddToggle("AutoPickUpBank", { Text = "Auto Pick Up & Bank", Default = false })
                                Group4:AddDropdown("PickUpRarityFilter", { Text = "Rarity Filter", Values = X, Default = table.clone(X), Multi = true, AllowNull = true })
                                Group4:AddDropdown("PickUpAnimalFilter", { Text = "Animal Filter", Values = E, Default = table.clone(E), Multi = true, AllowNull = true })
                                Group4:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
                                Group4:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
                                local hw_3 = "Teleport"
                                local hv_3 = "map-pin"
                                local Main3 = aq.Main
                                local Group3 = Main3:AddLeftGroupbox(hw_3, hv_3)
                                Group3:AddButton({
                                    Text = "Teleport to Base",
                                    Func = function()
                                        if not aj.TeleportToBase() then
                                            z.Notify(z, "Base not found", 3)
                                        end
                                    end
                                })
                                local hv_4 = "Shop"
                                local hw_4 = "shopping-cart"
                                local Main2 = aq.Main
                                local Group2 = Main2:AddRightGroupbox(hv_4, hw_4)
                                Group2:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
                                Group2:AddToggle("AutoBuyPickaxes", { Text = "Auto Buy Pickaxes", Default = false })
                                local hw_5 = "Plot"
                                local hv_5 = "house"
                                local Main = aq.Main
                                local Group = Main:AddRightGroupbox(hw_5, hv_5)
                                Group:AddToggle("AutoUpgradePen", { Text = "Auto Upgrade Pen", Default = false })
                                Group:AddToggle("AutoUpgradeTreadmill", { Text = "Auto Upgrade Treadmill", Default = false })
                                Group:AddToggle("AutoTreadmill", { Text = "Auto Go on Treadmill", Default = false })
                                Toggles.AutoBreak:OnChanged(function(c)
                                    aj.SetBreak(c)
                                end)
                                ay.BreakRarityFilter:OnChanged(function(s)
                                    aj.SetBreakRarityFilter(s)
                                end)
                                ay.BreakZoneFilter:OnChanged(function(e)
                                    aj.SetBreakZoneFilter(e)
                                end)
                                Toggles.AutoPickUpBank:OnChanged(function(m)
                                    aj.SetPickUpBank(m)
                                end)
                                ay.PickUpRarityFilter:OnChanged(function(p)
                                    aj.SetPickUpRarityFilter(p)
                                end)
                                ay.PickUpAnimalFilter:OnChanged(function(s)
                                    aj.SetPickUpAnimalFilter(s)
                                end)
                                Toggles.AutoEquipBest:OnChanged(function(g)
                                    aj.SetEquipBest(g)
                                end)
                                Toggles.AutoClaimIndex:OnChanged(function(c)
                                    aj.SetClaimIndex(c)
                                end)
                                Toggles.AutoBuyTrails:OnChanged(function(k)
                                    aj.SetBuyTrails(k)
                                end)
                                Toggles.AutoBuyPickaxes:OnChanged(function(r)
                                    aj.SetBuyPickaxes(r)
                                end)
                                Toggles.AutoUpgradePen:OnChanged(function(t)
                                    aj.SetUpgradePen(t)
                                end)
                                Toggles.AutoUpgradeTreadmill:OnChanged(function(l)
                                    aj.SetUpgradeTreadmill(l)
                                end)
                                Toggles.AutoTreadmill:OnChanged(function(q)
                                    aj.SetTreadmill(q)
                                end)
                                aj.SetBreakRarityFilter(ay.BreakRarityFilter.Value)
                                aj.SetBreakZoneFilter(ay.BreakZoneFilter.Value)
                                aj.SetPickUpRarityFilter(ay.PickUpRarityFilter.Value)
                                aj.SetPickUpAnimalFilter(ay.PickUpAnimalFilter.Value)
                                task.defer(worker)
                            end
                            a3 = 32
                        end
                    elseif a3 < 9906 then
                        if a3 < 9905 then
                            if a3 == 9904 then
                                Q = aY:WaitForChild("IndexRemote", 30)
                                a3 = 102
                            else
                                a3 = 10103
                                continue
                            end
                        elseif a3 == 9905 then
                            local h0 = z .. " loaded"
                            a2:Notify("Break and Steal an Egg " .. h0, 4)
                            a3 = 109
                        else
                            a3 = 9911
                            continue
                        end
                    elseif a3 < 9907 then
                        aY = EggHitRequest:WaitForChild("EggHitRequest", 30)
                        a3 = 74
                    elseif a3 == 9907 then
                        ah = nil
                        a3 = 137
                    else
                        a3 = 10110
                        continue
                    end
                elseif a3 < 9912 then
                    if a3 < 9910 then
                        if a3 < 9909 then
                            a3 = 255
                        elseif a3 == 9909 then
                            a3 = 150
                        else
                            a3 = 9900
                            continue
                        end
                    elseif a3 < 9911 then
                        T = fn499
                        am = fns.fn330
                        a3 = 100
                    else
                        aV = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                        a3 = 244
                    end
                elseif a3 < 9914 then
                    if a3 < 9913 then
                        if a3 == 9912 then
                            a3 = 142
                        else
                            a3 = 10086
                            continue
                        end
                    elseif a3 == 9913 then
                        pcall(fn1272)
                        a1 = function(c)
                            local bb
                            local br
                            local bE
                            bb = nil
                            br = nil
                            bE = nil
                            local h9 = type(c)
                            local ib = (function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_209 = bit32.bxor(r, j)
                                    r = bit32.band(r_209 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_210 = bit32.bxor(r, m)
                                    r = bit32.band(r_210 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(h9, 6, 2175009567, "string")
                            local bp = not (function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_207 = bit32.bxor(r, j)
                                    r = bit32.band(r_207 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_208 = bit32.bxor(r, m)
                                    r = bit32.band(r_208 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(c, 0, 5381, "")
                            local U = ib and bp
                            assert(U, "Namespace is required")
                            assert((function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_205 = bit32.bxor(r, j)
                                    r = bit32.band(r_205 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_206 = bit32.bxor(r, m)
                                    r = bit32.band(r_206 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(type(getgenv), 8, 2851454103, "function"), "getgenv is unavailable")
                            bb = getgenv()
                            assert((function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_203 = bit32.bxor(r, j)
                                    r = bit32.band(r_203 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_204 = bit32.bxor(r, m)
                                    r = bit32.band(r_204 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(type(bb), 5, 248602996, "table"), "getgenv did not return a table")
                            local bp_8 = bb[c]
                            local I = if bp_8 ~= nil then 1 else 0
                            local a5 = 925 * I + 1543 * (1 - I)
                            local aa = 2136 * I + 4057 * (1 - I)
                            if (a5 * 3304 + aa * 2131 + a5 * aa) % 16777213 == 9583816 then
                                local U_2 = (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_201 = bit32.bxor(r, j)
                                        r = bit32.band(r_201 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_202 = bit32.bxor(r, m)
                                        r = bit32.band(r_202 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(bp_8), 5, 248602996, "table") and (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_199 = bit32.bxor(r, j)
                                        r = bit32.band(r_199 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_200 = bit32.bxor(r, m)
                                        r = bit32.band(r_200 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(bp_8.Unload), 8, 2851454103, "function")
                                assert(U_2, "Namespace is occupied")
                                bp_8.Unload()
                                assert(bb[c] == nil, "Previous instance did not release its namespace")
                            end
                            br = {}
                            bE = { State = {}, Unloaded = false }
                            bE.Track = function(c)
                                assert((function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_197 = bit32.bxor(r, j)
                                        r = bit32.band(r_197 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_198 = bit32.bxor(r, m)
                                        r = bit32.band(r_198 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(c), 8, 2851454103, "function"), "Cleanup must be callable")
                                if bE.Unloaded then
                                    c()
                                else
                                    table.insert(br, c)
                                end
                                return c
                            end
                            bE.Unload = function()
                                local bc_2
                                local ao_2
                                if bE.Unloaded then
                                    return
                                end
                                bE.Unloaded = true
                                local bs = {}
                                local J = #br
                                local a4 = -1
                                while true do
                                    local aQ = if false and J <= 1 or true and J >= 1 then 1 else 0
                                    local aj = 1486 * aQ + 3934 * (1 - aQ)
                                    local aU = 1699 * aQ + 2942 * (1 - aQ)
                                    if (aj * 938 + aU * 1929 + aj * aU) % 16777213 == 7195953 then
                                        local a7 = J
                                        local aq_2 = table.remove(br, a7)
                                        ao_2, bc_2 = pcall(aq_2)
                                        if not ao_2 then
                                            table.insert(bs, tostring(bc_2))
                                        end
                                        J += a4
                                        continue
                                    end
                                    break
                                end
                                table.clear(bE.State)
                                if #bs > 0 then
                                    local il = table.concat(bs, "; ")
                                    error("Cleanup incomplete: " .. il, 0)
                                end
                                if bb[c] == bE then
                                    bb[c] = nil
                                end
                            end
                            bb[c] = bE
                            return bE
                        end
                        aV = function(c, e)
                            local bz
                            local aZ = 0
                            while true do
                                aZ += 6941
                                if aZ < 6946 then
                                    if aZ < 6941 then
                                        break
                                    elseif aZ < 6943 then
                                        if aZ < 6942 then
                                            bz = ((function(e, t, c, o)
                                                if type(e) ~= "string" then
                                                    return false
                                                end
                                                if #e ~= t then
                                                    return false
                                                end
                                                local r = 5381
                                                local s = buffer.fromstring(e)
                                                local k = 0
                                                while k <= t - 4 do
                                                    local j = buffer.readu32(s, k)
                                                    local r_195 = bit32.bxor(r, j)
                                                    r = bit32.band(r_195 * 33, 4294967295)
                                                    k = k + 4
                                                end
                                                while k < t do
                                                    local m = buffer.readu8(s, k)
                                                    local r_196 = bit32.bxor(r, m)
                                                    r = bit32.band(r_196 * 33, 4294967295)
                                                    k = k + 1
                                                end
                                                if r ~= c then
                                                    return false
                                                end
                                                return e == o
                                            end)(type(c), 5, 248602996, "table"))
                                            aZ = if bz then 3 else 4
                                        else
                                            break
                                        end
                                    elseif aZ < 6944 then
                                        assert(bz, "UI library required")
                                        assert((function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_193 = bit32.bxor(r, j)
                                                r = bit32.band(r_193 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_194 = bit32.bxor(r, m)
                                                r = bit32.band(r_194 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(e.Unload), 8, 2851454103, "function"), "UI unload required")
                                        c.Track(function()
                                            if not e.Unloaded then
                                                e.Unload(e)
                                            end
                                        end)
                                        e:OnUnload(function()
                                            c.Unload()
                                        end)
                                        aZ = 1
                                    elseif aZ < 6945 then
                                        bz = (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_191 = bit32.bxor(r, j)
                                                r = bit32.band(r_191 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_192 = bit32.bxor(r, m)
                                                r = bit32.band(r_192 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(c.Track), 8, 2851454103, "function")
                                        aZ = 4
                                    elseif aZ == 6945 then
                                        assert(bz, "FeatureAPI required")
                                        bz = ((function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_189 = bit32.bxor(r, j)
                                                r = bit32.band(r_189 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_190 = bit32.bxor(r, m)
                                                r = bit32.band(r_190 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(e), 5, 248602996, "table"))
                                        aZ = if bz then 5 else 2
                                    else
                                        aZ = 8185
                                        continue
                                    end
                                elseif aZ < 12946 then
                                    if aZ < 10876 then
                                        if aZ < 8185 then
                                            if aZ == 6946 then
                                                bz = (function(e, t, c, o)
                                                    if type(e) ~= "string" then
                                                        return false
                                                    end
                                                    if #e ~= t then
                                                        return false
                                                    end
                                                    local r = 5381
                                                    local s = buffer.fromstring(e)
                                                    local k = 0
                                                    while k <= t - 4 do
                                                        local j = buffer.readu32(s, k)
                                                        local r_187 = bit32.bxor(r, j)
                                                        r = bit32.band(r_187 * 33, 4294967295)
                                                        k = k + 4
                                                    end
                                                    while k < t do
                                                        local m = buffer.readu8(s, k)
                                                        local r_188 = bit32.bxor(r, m)
                                                        r = bit32.band(r_188 * 33, 4294967295)
                                                        k = k + 1
                                                    end
                                                    if r ~= c then
                                                        return false
                                                    end
                                                    return e == o
                                                end)(type(e.OnUnload), 8, 2851454103, "function")
                                                aZ = 2
                                            else
                                                aZ = 6943
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
                        ac = a1("OuroborosBreakAndStealAnEgg")
                        aj = ac.State
                        a3 = 116
                    else
                        a3 = 10109
                        continue
                    end
                elseif a3 < 9915 then
                    aV = 0.35
                    a3 = 151
                elseif a3 < 9916 then
                    if a3 == 9915 then
                        a3 = 110
                    else
                        a3 = 10095
                        continue
                    end
                else
                    bK_3 = fns.fn248
                    a3 = 251
                end
            elseif a3 < 9926 then
                if a3 < 9921 then
                    if a3 < 9919 then
                        if a3 < 9918 then
                            a3 = if (bH * 2895 + bI * 1958 + bH * bI) % 16777213 == 9249924 then 108 else 111
                        elseif a3 == 9918 then
                            a3 = 158
                        else
                            a3 = 11838
                            continue
                        end
                    elseif a3 < 9920 then
                        if a3 == 9919 then
                            a3 = 141
                        else
                            a3 = 9920
                            continue
                        end
                    else
                        aZ = function()
                            local ba
                            local bB
                            local aa
                            local B
                            local bl
                            ba = nil
                            bB = nil
                            aa = nil
                            B = nil
                            bl = nil
                            local bj, bs, Label3, Label, a6, H, Label2, W
                            bB = function(m)
                                local f = (tostring(m))
                                local c = (f:gsub("&", "&amp;"))
                                local p = (c:gsub("<", "&lt;"))
                                local e = (p:gsub(">", "&gt;"))
                                local t = (e:gsub('"', "&quot;"))
                                return (t:gsub("'", "&apos;"))
                            end
                            ba = function(e, t)
                                return string.format('<font color="%s">%s</font>', t, bB(e))
                            end
                            H = function(l, o, r)
                                return string.format("<b>%s</b> %s %s", l, ba("-", "#5a6070"), ba(o, r))
                            end
                            bl = "Unknown"
                            a6 = "#7fd47f"
                            bj = "#e8a34d"
                            local a4 = "#8b93a3"
                            pcall(function()
                                local bD_5
                                local ac_3
                                if (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_185 = bit32.bxor(r, j)
                                        r = bit32.band(r_185 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_186 = bit32.bxor(r, m)
                                        r = bit32.band(r_186 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(identifyexecutor), 8, 2851454103, "function") then
                                    bD_5, ac_3 = identifyexecutor()
                                    local iA = type(bD_5)
                                    local iC = (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_183 = bit32.bxor(r, j)
                                            r = bit32.band(r_183 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_184 = bit32.bxor(r, m)
                                            r = bit32.band(r_184 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(iA, 6, 2175009567, "string")
                                    local al = not (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_181 = bit32.bxor(r, j)
                                            r = bit32.band(r_181 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_182 = bit32.bxor(r, m)
                                            r = bit32.band(r_182 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(bD_5, 0, 5381, "")
                                    if iC and al then
                                        local al_2 = (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_179 = bit32.bxor(r, j)
                                                r = bit32.band(r_179 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_180 = bit32.bxor(r, m)
                                                r = bit32.band(r_180 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(ac_3), 6, 2175009567, "string") and not (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_177 = bit32.bxor(r, j)
                                                r = bit32.band(r_177 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_178 = bit32.bxor(r, m)
                                                r = bit32.band(r_178 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(ac_3, 0, 5381, "") and bD_5 .. " " .. ac_3
                                        bl = al_2 or bD_5
                                    end
                                end
                            end)
                            aa = os.clock()
                            W = function()
                                local an
                                local aK = 3
                                while true do
                                    aK += 3962
                                    if aK < 3966 then
                                        if aK < 3480 then
                                            break
                                        elseif aK < 3963 then
                                            break
                                        elseif aK < 3964 then
                                            local iH = an // 3600
                                            local iI = an % 3600 // 60
                                            local iJ = "%dh %dm"
                                            return string.format(iJ, iH, iI)
                                        elseif aK < 3965 then
                                            if aK == 3964 then
                                                local iK = an // 60
                                                local iL = an % 60
                                                local iM = "%dm %ds"
                                                return string.format(iM, iK, iL)
                                            end
                                            aK = 3962
                                            continue
                                        elseif aK == 3965 then
                                            an = math.floor(os.clock() - aa)
                                            aK = if an < 60 then 5 else 7
                                        else
                                            aK = 3963
                                            continue
                                        end
                                    elseif aK < 6180 then
                                        if aK < 3968 then
                                            if aK < 3967 then
                                                if aK == 3966 then
                                                    aK = 6
                                                else
                                                    aK = 423
                                                    continue
                                                end
                                            else
                                                return an .. "s"
                                            end
                                        elseif aK < 3969 then
                                            aK = 0
                                        elseif aK < 5651 then
                                            if aK == 3969 then
                                                aK = if an < 3600 then 2 else 1
                                            else
                                                aK = 11049
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
                            local Info4 = aq.Info
                            local UserGroup = Info4:AddLeftGroupbox("User", "circle-user")
                            UserGroup:AddPlayerInfo("InfoUserCard", { Player = aL, Title = "User", HeaderIcon = "user", Collapsible = false })
                            local iN = aL.DisplayName .. " @" .. aL.Name
                            UserGroup:AddLabel(H("User", iN, a6), true)
                            local iP_1 = tostring(aL.UserId)
                            UserGroup:AddLabel(H("UserId", iP_1, "#6ec1ff"), true)
                            UserGroup:AddLabel(H("Executor", bl, a6), true)
                            UserGroup.AddDivider(UserGroup)
                            local iN_1 = W()
                            Label3 = UserGroup:AddLabel(H("Session", iN_1, bj), true)
                            UserGroup.AddDivider(UserGroup)
                            UserGroup:AddButton({
                                Text = "Copy Username",
                                Func = function()
                                    ad(aL.Name, "Copied username")
                                end
                            })
                            UserGroup:AddButton({
                                Text = "Copy Profile Link",
                                Func = function()
                                    ad("https://www.roblox.com/users/" .. tostring(aL.UserId) .. "/profile", "Copied profile link")
                                end
                            })
                            local Info3 = aq.Info
                            local DiscordGroup = Info3:AddRightGroupbox("Discord", "message-circle")
                            local iP_3 = Color3.fromRGB(88, 101, 242)
                            local iN_2 = ag
                            local iQ = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                            DiscordGroup:AddDiscordBox(nil, {
                                Banner = 95892854151512,
                                Avatar = 132608042600488,
                                Title = "Ouroboros Hub",
                                Subtitle = "Dupes, keyless scripts and updates",
                                Status = "online",
                                Accent = iP_3,
                                Link = iN_2,
                                Buttons = iQ
                            })
                            local Info2 = aq.Info
                            local SessionGroup = Info2:AddRightGroupbox("Session", "signal")
                            SessionGroup:AddLabel(H("Game", O, "#6ec1ff"), true)
                            Label2 = SessionGroup:AddLabel(H("Players", "0/0", a6), true)
                            bs = tostring(game.JobId)
                            local P = #bs > 18 and string.sub(bs, 1, 18) .. "..."
                            local by_16 = P or bs
                            SessionGroup:AddLabel(H("Job", by_16, a4), true)
                            Label = SessionGroup:AddLabel(H("Ping", "0 ms", bj), true)
                            SessionGroup.AddDivider(SessionGroup)
                            SessionGroup:AddButton({
                                Text = "Rejoin Place",
                                Func = function()
                                    v.TeleportService:Teleport(game.PlaceId, aL)
                                end
                            })
                            SessionGroup:AddButton({
                                Text = "Copy Job ID",
                                Func = function()
                                    ad(bs, "Copied Job ID")
                                end
                            })
                            B = task.spawn(function()
                                local ab_2
                                while true do
                                    task.wait(1)
                                    if z.Unloaded then
                                        break
                                    else
                                        local i0 = W()
                                        Label3:SetText(H("Session", i0, bj))
                                        local Players = v.Players
                                        local ay_4
                                        local i3 = tostring(v.Players.MaxPlayers)
                                        local i2 = #Players:GetPlayers() .. "/" .. i3
                                        Label2:SetText(H("Players", i2, a6))
                                        ay_4, ab_2 = pcall(function()
                                            local g = v.Stats.Network.ServerStatsItem["Data Ping"]
                                            return math.floor(g:GetValue())
                                        end)
                                        local ay_5 = ay_4 and ab_2 .. " ms" or "n/a"
                                        Label:SetText(H("Ping", ay_5, bj))
                                    end
                                end
                            end)
                            aj.Track(function()
                                if not (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_175 = bit32.bxor(r, j)
                                        r = bit32.band(r_175 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_176 = bit32.bxor(r, m)
                                        r = bit32.band(r_176 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(coroutine.status(B), 4, 4035935361, "dead") then
                                    task.cancel(B)
                                end
                            end)
                            local Info = aq.Info
                            local SocialsGroup = Info:AddRightGroupbox("Socials", "link")
                            SocialsGroup:AddButton({ Text = "Discord", Func = aN })
                            SocialsGroup:AddButton({
                                Text = "Rscripts",
                                Func = function()
                                    ad(bK_6, "Copied Rscripts profile")
                                end
                            })
                            SocialsGroup:AddButton({
                                Text = "Website",
                                Func = function()
                                    ad(bK_13, "Copied website link")
                                end
                            })
                        end
                        a3 = 135
                    end
                elseif a3 < 9923 then
                    if a3 < 9922 then
                        v = {}
                        local je = game
                        v.Players = je:GetService("Players")
                        je = game
                        v.ReplicatedStorage = je:GetService("ReplicatedStorage")
                        je = game
                        v.RunService = je:GetService("RunService")
                        je = game
                        v.UserInputService = je:GetService("UserInputService")
                        je = game
                        v.VirtualUser = je:GetService("VirtualUser")
                        je = game
                        v.HttpService = je:GetService("HttpService")
                        je = game
                        v.TeleportService = je:GetService("TeleportService")
                        je = game
                        v.Workspace = je:GetService("Workspace")
                        je = game
                        v.Lighting = je:GetService("Lighting")
                        je = game
                        v.Stats = je:GetService("Stats")
                        je = game
                        v.CoreGui = je:GetService("CoreGui")
                        je = game
                        v.CollectionService = je:GetService("CollectionService")
                        je = game
                        v.ProximityPromptService = je:GetService("ProximityPromptService")
                        aL = v.Players.LocalPlayer
                        a3 = 45
                    elseif a3 == 9922 then
                        O = "Break and Steal an Egg"
                        a3 = 133
                    else
                        a3 = 10033
                        continue
                    end
                elseif a3 < 9924 then
                    a3 = 172
                elseif a3 < 9925 then
                    if a3 == 9924 then
                        Q = connection2.OnClientEvent:Connect(fns.onOnClientEvent)
                        a3 = 112
                    else
                        a3 = 10075
                        continue
                    end
                elseif a3 == 9925 then
                    av = aV
                    aV = (tonumber(a0.HitCooldown))
                    a3 = if aV then 151 else 44
                else
                    a3 = 10050
                    continue
                end
            elseif a3 < 9930 then
                if a3 < 9928 then
                    if a3 < 9927 then
                        if a3 == 9926 then
                            aW = v(aY.ReplicatedStorage)
                            a3 = 132
                        else
                            a3 = 9905
                            continue
                        end
                    else
                        R = require(aX:WaitForChild("PlotUpgradeConfig"))
                        TreadmillUpgradeConfig = require(aX:WaitForChild("TreadmillUpgradeConfig"))
                        a3 = 38
                    end
                elseif a3 < 9929 then
                    a3 = 183
                elseif a3 == 9929 then
                    aX = require(B:WaitForChild("TreadmillUnlockConfig"))
                    a3 = 49
                else
                    a3 = 10131
                    continue
                end
            elseif a3 < 9932 then
                if a3 < 9931 then
                    if a3 == 9930 then
                        aX = require(PickaxeConfig:WaitForChild("PickaxeConfig"))
                        a3 = 99
                    else
                        a3 = 10086
                        continue
                    end
                elseif a3 == 9931 then
                    a3 = 24
                else
                    a3 = 9915
                    continue
                end
            elseif a3 < 9933 then
                if a3 == 9932 then
                    a3 = 52
                else
                    a3 = 10133
                    continue
                end
            elseif a3 < 9934 then
                if a3 == 9933 then
                    aY = aW(v.ReplicatedStorage)
                    a3 = 132
                else
                    a3 = 10122
                    continue
                end
            else
                ag = nil
                bK_6 = nil
                bK_13 = nil
                a2 = nil
                O = nil
                aV = nil
                z = nil
                aQ = nil
                aJ = nil
                Toggles = nil
                ay = nil
                aW = nil
                aq = nil
                aF = nil
                K = nil
                af = nil
                C = nil
                bK_21 = nil
                bK_7 = nil
                w = nil
                ax = nil
                ad = nil
                aN = nil
                au = nil
                aZ = nil
                a_ = nil
                a0 = nil
                aX = nil
                bK_11 = nil
                aY = nil
                bK_23 = nil
                a3 = 245
            end
        elseif a3 < 9970 then
            if a3 < 9952 then
                if a3 < 9943 then
                    if a3 < 9939 then
                        if a3 < 9937 then
                            if a3 < 9936 then
                                if a3 == 9935 then
                                    local Zones = ZonesConfig.Zones
                                    for i, v in ipairs(Zones) do
                                        local bd = v
                                        aW = (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_173 = bit32.bxor(r, j)
                                                r = bit32.band(r_173 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_174 = bit32.bxor(r, m)
                                                r = bit32.band(r_174 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(bd), 5, 248602996, "table") and (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_171 = bit32.bxor(r, j)
                                                r = bit32.band(r_171 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_172 = bit32.bxor(r, m)
                                                r = bit32.band(r_172 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(bd.Id), 6, 2175009567, "string")
                                        if aW then
                                            aW = bd.Id
                                            aX = bd.Rarity or bd.Id
                                            local jl = tostring(aX)
                                            aY = aW .. " - " .. jl
                                            table.insert(A, aY)
                                            aV[aY] = bd.Id
                                            aK[bd.Id] = aY
                                            aE[bd.Id] = bd.Rarity
                                        end
                                    end
                                    a3 = 29
                                else
                                    a3 = 9890
                                    continue
                                end
                            else
                                a3 = 63
                            end
                        elseif a3 < 9938 then
                            ag.SetBreak = fn688
                            ag.SetPickUpBank = fn802
                            ag.SetBuyTrails = fn1121
                            ag.SetEquipBest = fns.fn324
                            ag.SetUpgradePen = fn611
                            ag.SetUpgradeTreadmill = fn1329
                            ag.SetTreadmill = fn867
                            ag.SetBuyPickaxes = fn888
                            ag.SetClaimIndex = fn1016
                            ag.SetEggESP = fn696
                            ag.SetGuardESP = fn1245
                            ag.SetBreakRarityFilter = fn816
                            ag.SetBreakZoneFilter = fns.fn82
                            ag.SetPickUpRarityFilter = fn751
                            ag.SetPickUpAnimalFilter = fn662
                            ag.SetEggEspRarityFilter = fn989
                            ag.SetGuardEspZoneFilter = fn1173
                            ag.TeleportToBase = fns.fn141
                            ag.Track(fn429)
                            aj = "https://discord.gg/synapsex"
                            a3 = 207
                        else
                            ab = fn1322
                            G = fns.fn52
                            aM = fns.fn14
                            a3 = 11
                        end
                    elseif a3 < 9941 then
                        if a3 < 9940 then
                            if a3 == 9939 then
                                UpgradeTreadmillRequest = aY:WaitForChild("UpgradeTreadmillRequest", 30)
                                a3 = 140
                            else
                                a3 = 10033
                                continue
                            end
                        elseif a3 == 9940 then
                            aX = require(TreadmillUpgradeConfig:WaitForChild("PlotUpgradeConfig"))
                            R = require(TreadmillUpgradeConfig:WaitForChild("TreadmillUpgradeConfig"))
                            a3 = 38
                        else
                            a3 = 9968
                            continue
                        end
                    elseif a3 < 9942 then
                        aL = {}
                        local jq = game
                        aL.Players = jq:GetService("Players")
                        jq = game
                        aL.ReplicatedStorage = jq:GetService("ReplicatedStorage")
                        jq = game
                        aL.RunService = jq:GetService("RunService")
                        jq = game
                        aL.UserInputService = jq:GetService("UserInputService")
                        jq = game
                        aL.VirtualUser = jq:GetService("VirtualUser")
                        jq = game
                        aL.HttpService = jq:GetService("HttpService")
                        jq = game
                        aL.TeleportService = jq:GetService("TeleportService")
                        jq = game
                        aL.Workspace = jq:GetService("Workspace")
                        jq = game
                        aL.Lighting = jq:GetService("Lighting")
                        jq = game
                        aL.Stats = jq:GetService("Stats")
                        jq = game
                        aL.CoreGui = jq:GetService("CoreGui")
                        jq = game
                        aL.CollectionService = jq:GetService("CollectionService")
                        jq = game
                        aL.ProximityPromptService = jq:GetService("ProximityPromptService")
                        v = aL.Players.LocalPlayer
                        a3 = 45
                    elseif a3 == 9942 then
                        bK_20 = fn657
                        bK_5 = fn968
                        a3 = 19
                    else
                        a3 = 9937
                        continue
                    end
                elseif a3 < 9947 then
                    if a3 < 9945 then
                        if a3 < 9944 then
                            aI = function(t)
                                local O = if not (t and t.Parent) then 1 else 0
                                local aK = 2107 * O + 137 * (1 - O)
                                local L = 3066 * O + 1618 * (1 - O)
                                if (aK * 1365 + L * 2455 + aK * L) % 16777213 == 85934 then
                                    return false
                                else
                                    local V = ao()
                                    local O_2 = if not V then 1 else 0
                                    local aK_10 = 1369 * O_2 + 3051 * (1 - O_2)
                                    local L_2 = 79 * O_2 + 1054 * (1 - O_2)
                                    if (aK_10 * 4063 + L_2 * 55 + aK_10 * L_2) % 16777213 == 5674743 then
                                        return false
                                    elseif t.Parent == aL.Character then
                                        return true
                                    else
                                        local bo_2 = pcall(function()
                                            V.EquipTool(V, t)
                                        end)
                                        return bo_2
                                    end
                                end
                            end
                            F = fn633
                            M = fns.fn261
                            aH = fn567
                            aa = fn1300
                            a3 = 92
                        elseif a3 == 9944 then
                            a3 = 177
                        else
                            a3 = 10097
                            continue
                        end
                    elseif a3 < 9946 then
                        assert(ZonesConfig, "Shared folder missing")
                        aX = require(ZonesConfig:WaitForChild("ZonesConfig"))
                        a3 = 205
                    else
                        a3 = 225
                    end
                elseif a3 < 9949 then
                    if a3 < 9948 then
                        aM = function()
                            local F
                            local N = not aT() or not ac.Enabled.BuyPickaxes
                            if N then
                                return
                            end
                            if os.clock() - ac.LastBuyPickaxeAt < 1 then
                                return
                            end
                            local N_6 = ai()
                            F = nil
                            local S = #PickaxeConfig.Tiers
                            local bi = 1
                            while bi <= S do
                                local a2 = bi
                                if not N_6[a2] then
                                    F = a2
                                    break
                                end
                                bi += 1
                            end
                            if not F then
                                return
                            end
                            local N_7 = PickaxeConfig.GetPrice(F)
                            if not T(N_7) then
                                return
                            end
                            local N_8 = pcall(function()
                                PickaxeShopRequest.FireServer(PickaxeShopRequest, "Buy", F)
                            end)
                            if N_8 then
                                ac.LastBuyPickaxeAt = os.clock()
                                pcall(function()
                                    PickaxeShopRequest.FireServer(PickaxeShopRequest, "Equip", F)
                                end)
                            end
                        end
                        a3 = 159
                    elseif a3 == 9948 then
                        aV = PickaxeShopRequest
                        a3 = 113
                    else
                        a3 = 9915
                        continue
                    end
                elseif a3 < 9950 then
                    L, A, aV, aK, aE = nil, nil, nil, nil, nil
                    a3 = 130
                elseif a3 < 9951 then
                    a3 = 226
                else
                    aY()
                    a_()
                    bK_11()
                    bK_23()
                    Toggles()
                    a0()
                    aj()
                    aZ.SetAntiAfk(aX.AntiAfk.Value)
                    aZ.SetNoGameplayPaused(aX.NoGameplayPaused.Value)
                    a3 = 162
                end
            elseif a3 < 9961 then
                if a3 < 9956 then
                    if a3 < 9954 then
                        if a3 < 9953 then
                            if a3 == 9952 then
                                bI = 378 * bK_15 + 3231 * (1 - bK_15)
                                a3 = 47
                            else
                                a3 = 10001
                                continue
                            end
                        else
                            ac.Gens = {
                                Break = 0,
                                PickUpBank = 0,
                                BuyTrails = 0,
                                EquipBest = 0,
                                UpgradePen = 0,
                                UpgradeTreadmill = 0,
                                Treadmill = 0,
                                BuyPickaxes = 0,
                                ClaimIndex = 0,
                                EggESP = 0,
                                GuardESP = 0
                            }
                            ac.LastBreakAt = 0
                            ac.LastPickUpAt = 0
                            ac.LastBuyTrailsAt = 0
                            ac.LastEquipBestAt = 0
                            ac.LastUpgradePenAt = 0
                            ac.LastUpgradeTreadmillAt = 0
                            ac.LastBuyPickaxeAt = 0
                            ac.LastClaimIndexAt = 0
                            ac.IndexReady = {}
                            ac.EggHighlights = {}
                            ac.GuardHighlights = {}
                            aS = fn540
                            ao = fns.fn100
                            a3 = 28
                        end
                    elseif a3 < 9955 then
                        a3 = 61
                    else
                        az = aW(v.Workspace)
                        at = aW(v.CollectionService)
                        a3 = 143
                    end
                elseif a3 < 9958 then
                    if a3 < 9957 then
                        aX = require(a0:WaitForChild("EggConfig"))
                        a3 = 89
                    else
                        a3 = 178
                    end
                elseif a3 < 9959 then
                    w = function(j, l, p)
                        local bG
                        local Gens = ac.Gens
                        local A = ac.Gens[j]
                        local au = if A then 1 else 0
                        local af_2 = 3942 * au + 3160 * (1 - au)
                        local U = 3129 * au + 1748 * (1 - au)
                        if not ((af_2 * 469 + U * 314 + af_2 * U) % 16777213 == 15165822) then
                            A = 0
                        end
                        Gens[j] = A + 1
                        bG = ac.Gens[j]
                        task.spawn(function()
                            local af, aB
                            local Z = 4
                            while true do
                                Z += 13565
                                if Z < 13576 then
                                    if Z < 13571 then
                                        if Z < 13567 then
                                            if Z < 13566 then
                                                if Z < 13565 then
                                                    break
                                                elseif Z == 13565 then
                                                    Z = if af then 11 else 12
                                                else
                                                    Z = 13574
                                                    continue
                                                end
                                            elseif Z == 13566 then
                                                Z = if af then 10 else 6
                                            else
                                                Z = 13574
                                                continue
                                            end
                                        elseif Z < 13569 then
                                            if Z < 13568 then
                                                if Z == 13567 then
                                                    af = not ac.Enabled[j]
                                                    Z = 0
                                                else
                                                    Z = 15484
                                                    continue
                                                end
                                            else
                                                Z = 19
                                            end
                                        elseif Z < 13570 then
                                            if Z == 13569 then
                                                Z = 9
                                            else
                                                Z = 13568
                                                continue
                                            end
                                        else
                                            local jU = tostring(aB)
                                            local jT = j .. ": " .. jU
                                            warn("[Ouroboros] " .. jT)
                                            Z = 16
                                        end
                                    elseif Z < 13574 then
                                        if Z < 13573 then
                                            if Z < 13572 then
                                                if Z == 13571 then
                                                    Z = 3
                                                else
                                                    Z = 13575
                                                    continue
                                                end
                                            else
                                                af = (aT())
                                                Z = if af then 15 else 14
                                            end
                                        else
                                            Z = if af then 0 else 2
                                        end
                                    elseif Z < 13575 then
                                        Z = 7
                                    elseif Z == 13575 then
                                        af, aB = pcall(p)
                                        Z = if not af then 5 else 16
                                    else
                                        Z = 13577
                                        continue
                                    end
                                elseif Z < 13581 then
                                    if Z < 13579 then
                                        if Z < 13578 then
                                            if Z < 13577 then
                                                if Z == 13576 then
                                                    Z = 3
                                                else
                                                    Z = 13581
                                                    continue
                                                end
                                            elseif Z == 13577 then
                                                Z = 17
                                            else
                                                Z = 12939
                                                continue
                                            end
                                        elseif Z == 13578 then
                                            af = ac.Enabled[j]
                                            Z = 1
                                        else
                                            Z = 13584
                                            continue
                                        end
                                    elseif Z < 13580 then
                                        Z = if af then 13 else 1
                                    elseif Z == 13580 then
                                        af = ac.Gens[j] == bG
                                        Z = 14
                                    else
                                        Z = 13579
                                        continue
                                    end
                                elseif Z < 13583 then
                                    if Z < 13582 then
                                        if Z == 13581 then
                                            task.wait(l)
                                            af = not aT()
                                            Z = if af then 8 else 18
                                        else
                                            Z = 7135
                                            continue
                                        end
                                    elseif Z == 13582 then
                                        Z = 9
                                    else
                                        Z = 13575
                                        continue
                                    end
                                elseif Z < 13584 then
                                    if Z == 13583 then
                                        af = ac.Gens[j] ~= bG
                                        Z = 8
                                    else
                                        Z = 13578
                                        continue
                                    end
                                else
                                    break
                                end
                            end
                        end)
                    end
                    ax = fn422
                    a3 = 247
                elseif a3 < 9960 then
                    a3 = 198
                else
                    a3 = if (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_169 = bit32.bxor(r, j)
                            r = bit32.band(r_169 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_170 = bit32.bxor(r, m)
                            r = bit32.band(r_170 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(type(a_.Zones), 5, 248602996, "table") then 263 else 98
                end
            elseif a3 < 9965 then
                if a3 < 9963 then
                    if a3 < 9962 then
                        connection2 = Q.OnClientEvent:Connect(fns.onOnClientEvent)
                        a3 = 112
                    elseif a3 == 9962 then
                        a3 = 197
                    else
                        a3 = 9976
                        continue
                    end
                elseif a3 < 9964 then
                    if a3 == 9963 then
                        aE = {}
                        a3 = 87
                    else
                        a3 = 9970
                        continue
                    end
                elseif a3 == 9964 then
                    aW = at(az.Workspace)
                    v = at(az.CollectionService)
                    a3 = 143
                else
                    a3 = 9888
                    continue
                end
            elseif a3 < 9967 then
                if a3 < 9966 then
                    if a3 == 9965 then
                        ac = fn1128
                        a3 = 76
                    else
                        a3 = 9872
                        continue
                    end
                elseif a3 == 9966 then
                    a3 = 64
                else
                    a3 = 9919
                    continue
                end
            elseif a3 < 9968 then
                a3 = 186
            elseif a3 < 9969 then
                if a3 == 9968 then
                    a3 = if (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_167 = bit32.bxor(r, j)
                            r = bit32.band(r_167 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_168 = bit32.bxor(r, m)
                            r = bit32.band(r_168 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(type(a_.Extras), 5, 248602996, "table") then 166 else 183
                else
                    a3 = 9971
                    continue
                end
            elseif a3 == 9969 then
                a3 = 57
            else
                a3 = 10116
                continue
            end
        elseif a3 < 9988 then
            if a3 < 9979 then
                if a3 < 9974 then
                    if a3 < 9972 then
                        if a3 < 9971 then
                            if a3 == 9970 then
                                a3 = 252
                            else
                                a3 = 10011
                                continue
                            end
                        else
                            EggHitRequest = aY:WaitForChild("EggHitRequest", 30)
                            a3 = 74
                        end
                    elseif a3 < 9973 then
                        aV = EggHitRequest
                        a3 = if aV then 163 else 201
                    elseif a3 == 9973 then
                        a0 = fn1076
                        a3 = 229
                    else
                        a3 = 10124
                        continue
                    end
                elseif a3 < 9976 then
                    if a3 < 9975 then
                        if a3 == 9974 then
                            aL = fns.fn248
                            a3 = 251
                        else
                            a3 = 10134
                            continue
                        end
                    else
                        bK_21 = function()
                            local ba
                            local bB
                            local aa
                            local B
                            local bl
                            ba = nil
                            bB = nil
                            aa = nil
                            B = nil
                            bl = nil
                            local bj, bs, Label3, Label, a6, H, Label2, W
                            bB = function(m)
                                local f = (tostring(m))
                                local c = (f:gsub("&", "&amp;"))
                                local p = (c:gsub("<", "&lt;"))
                                local e = (p:gsub(">", "&gt;"))
                                local t = (e:gsub('"', "&quot;"))
                                return (t:gsub("'", "&apos;"))
                            end
                            ba = function(e, t)
                                return string.format('<font color="%s">%s</font>', t, bB(e))
                            end
                            H = function(l, o, r)
                                return string.format("<b>%s</b> %s %s", l, ba("-", "#5a6070"), ba(o, r))
                            end
                            bl = "Unknown"
                            a6 = "#7fd47f"
                            bj = "#e8a34d"
                            local a4 = "#8b93a3"
                            pcall(function()
                                local bD_4
                                local ac_1
                                if (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_165 = bit32.bxor(r, j)
                                        r = bit32.band(r_165 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_166 = bit32.bxor(r, m)
                                        r = bit32.band(r_166 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(identifyexecutor), 8, 2851454103, "function") then
                                    bD_4, ac_1 = identifyexecutor()
                                    local j_ = type(bD_4)
                                    local j1 = (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_163 = bit32.bxor(r, j)
                                            r = bit32.band(r_163 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_164 = bit32.bxor(r, m)
                                            r = bit32.band(r_164 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(j_, 6, 2175009567, "string")
                                    local al = not (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_161 = bit32.bxor(r, j)
                                            r = bit32.band(r_161 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_162 = bit32.bxor(r, m)
                                            r = bit32.band(r_162 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(bD_4, 0, 5381, "")
                                    if j1 and al then
                                        local al_1 = (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_159 = bit32.bxor(r, j)
                                                r = bit32.band(r_159 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_160 = bit32.bxor(r, m)
                                                r = bit32.band(r_160 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(ac_1), 6, 2175009567, "string") and not (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_157 = bit32.bxor(r, j)
                                                r = bit32.band(r_157 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_158 = bit32.bxor(r, m)
                                                r = bit32.band(r_158 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(ac_1, 0, 5381, "") and bD_4 .. " " .. ac_1
                                        bl = al_1 or bD_4
                                    end
                                end
                            end)
                            aa = os.clock()
                            W = function()
                                local an
                                local aK = 3
                                while true do
                                    aK += 3962
                                    if aK < 3966 then
                                        if aK < 3480 then
                                            break
                                        elseif aK < 3963 then
                                            break
                                        elseif aK < 3964 then
                                            local j6 = an // 3600
                                            local j7 = an % 3600 // 60
                                            local j8 = "%dh %dm"
                                            return string.format(j8, j6, j7)
                                        elseif aK < 3965 then
                                            if aK == 3964 then
                                                local j9 = an // 60
                                                local ka = an % 60
                                                local kb = "%dm %ds"
                                                return string.format(kb, j9, ka)
                                            end
                                            aK = 3962
                                            continue
                                        elseif aK == 3965 then
                                            an = math.floor(os.clock() - aa)
                                            aK = if an < 60 then 5 else 7
                                        else
                                            aK = 3963
                                            continue
                                        end
                                    elseif aK < 6180 then
                                        if aK < 3968 then
                                            if aK < 3967 then
                                                if aK == 3966 then
                                                    aK = 6
                                                else
                                                    aK = 423
                                                    continue
                                                end
                                            else
                                                return an .. "s"
                                            end
                                        elseif aK < 3969 then
                                            aK = 0
                                        elseif aK < 5651 then
                                            if aK == 3969 then
                                                aK = if an < 3600 then 2 else 1
                                            else
                                                aK = 11049
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
                            local Info4 = aq.Info
                            local UserGroup = Info4:AddLeftGroupbox("User", "circle-user")
                            UserGroup:AddPlayerInfo("InfoUserCard", { Player = aL, Title = "User", HeaderIcon = "user", Collapsible = false })
                            local kc = aL.DisplayName .. " @" .. aL.Name
                            UserGroup:AddLabel(H("User", kc, a6), true)
                            local ke_1 = tostring(aL.UserId)
                            UserGroup:AddLabel(H("UserId", ke_1, "#6ec1ff"), true)
                            UserGroup:AddLabel(H("Executor", bl, a6), true)
                            UserGroup.AddDivider(UserGroup)
                            local kc_1 = W()
                            Label3 = UserGroup:AddLabel(H("Session", kc_1, bj), true)
                            UserGroup.AddDivider(UserGroup)
                            UserGroup:AddButton({
                                Text = "Copy Username",
                                Func = function()
                                    ad(aL.Name, "Copied username")
                                end
                            })
                            UserGroup:AddButton({
                                Text = "Copy Profile Link",
                                Func = function()
                                    ad("https://www.roblox.com/users/" .. tostring(aL.UserId) .. "/profile", "Copied profile link")
                                end
                            })
                            local Info3 = aq.Info
                            local DiscordGroup = Info3:AddRightGroupbox("Discord", "message-circle")
                            local ke_3 = Color3.fromRGB(88, 101, 242)
                            local kc_2 = ag
                            local kf = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
                            DiscordGroup:AddDiscordBox(nil, {
                                Banner = 95892854151512,
                                Avatar = 132608042600488,
                                Title = "Ouroboros Hub",
                                Subtitle = "Dupes, keyless scripts and updates",
                                Status = "online",
                                Accent = ke_3,
                                Link = kc_2,
                                Buttons = kf
                            })
                            local Info2 = aq.Info
                            local SessionGroup = Info2:AddRightGroupbox("Session", "signal")
                            SessionGroup:AddLabel(H("Game", O, "#6ec1ff"), true)
                            Label2 = SessionGroup:AddLabel(H("Players", "0/0", a6), true)
                            bs = tostring(game.JobId)
                            local P = #bs > 18 and string.sub(bs, 1, 18) .. "..."
                            local by_13 = P or bs
                            SessionGroup:AddLabel(H("Job", by_13, a4), true)
                            Label = SessionGroup:AddLabel(H("Ping", "0 ms", bj), true)
                            SessionGroup.AddDivider(SessionGroup)
                            SessionGroup:AddButton({
                                Text = "Rejoin Place",
                                Func = function()
                                    v.TeleportService:Teleport(game.PlaceId, aL)
                                end
                            })
                            SessionGroup:AddButton({
                                Text = "Copy Job ID",
                                Func = function()
                                    ad(bs, "Copied Job ID")
                                end
                            })
                            B = task.spawn(function()
                                local ab_1
                                while true do
                                    task.wait(1)
                                    if z.Unloaded then
                                        break
                                    else
                                        local kq = W()
                                        Label3:SetText(H("Session", kq, bj))
                                        local Players = v.Players
                                        local ay_2
                                        local kt = tostring(v.Players.MaxPlayers)
                                        local ks = #Players:GetPlayers() .. "/" .. kt
                                        Label2:SetText(H("Players", ks, a6))
                                        ay_2, ab_1 = pcall(function()
                                            local g = v.Stats.Network.ServerStatsItem["Data Ping"]
                                            return math.floor(g:GetValue())
                                        end)
                                        local ay_3 = ay_2 and ab_1 .. " ms" or "n/a"
                                        Label:SetText(H("Ping", ay_3, bj))
                                    end
                                end
                            end)
                            aj.Track(function()
                                if not (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_155 = bit32.bxor(r, j)
                                        r = bit32.band(r_155 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_156 = bit32.bxor(r, m)
                                        r = bit32.band(r_156 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(coroutine.status(B), 4, 4035935361, "dead") then
                                    task.cancel(B)
                                end
                            end)
                            local Info = aq.Info
                            local SocialsGroup = Info:AddRightGroupbox("Socials", "link")
                            SocialsGroup:AddButton({ Text = "Discord", Func = aN })
                            SocialsGroup:AddButton({
                                Text = "Rscripts",
                                Func = function()
                                    ad(bK_6, "Copied Rscripts profile")
                                end
                            })
                            SocialsGroup:AddButton({
                                Text = "Website",
                                Func = function()
                                    ad(bK_13, "Copied website link")
                                end
                            })
                        end
                        a3 = 135
                    end
                elseif a3 < 9977 then
                    if a3 == 9976 then
                        aZ = function()
                            local function m()
                                if not az.CurrentCamera then
                                    return false
                                end
                                local F_3 = not H(v.VirtualUser.CaptureController) or not H(v.VirtualUser.ClickButton2)
                                if F_3 then
                                    return false
                                else
                                    local F_4 = pcall(function()
                                        local VirtualUser = v.VirtualUser
                                        VirtualUser.CaptureController(VirtualUser)
                                        v.VirtualUser:ClickButton2(Vector2.new())
                                    end)
                                    local G = if F_4 then 1 else 0
                                    local aL = 4075 * G + 2635 * (1 - G)
                                    local aX = 3978 * G + 2970 * (1 - G)
                                    if (aL * 3912 + aX * 2107 + aL * aX) % 16777213 == 6978970 then
                                        K.AfkCount = K.AfkCount + 1
                                    end
                                    return F_4
                                end
                            end
                            aj.SetAntiAfk = function(f)
                                local aX = f
                                local aP = if aX then 1 else 0
                                local ah = 2634 * aP + 2067 * (1 - aP)
                                local am = 995 * aP + 3129 * (1 - aP)
                                if (ah * 746 + am * 1518 + ah * am) % 16777213 == 6096204 then
                                    aX = true
                                end
                                local U = aX or false
                                K.AntiAfk = U
                                if K.AfkConn then
                                    local AfkConn = K.AfkConn
                                    AfkConn.Disconnect(AfkConn)
                                    K.AfkConn = nil
                                end
                                if K.AfkTask then
                                    local AfkTask = K.AfkTask
                                    pcall(task.cancel, AfkTask)
                                    K.AfkTask = nil
                                end
                                local aP_2 = if not K.AntiAfk then 1 else 0
                                local ah_4 = 1829 * aP_2 + 3557 * (1 - aP_2)
                                local am_2 = 25 * aP_2 + 1842 * (1 - aP_2)
                                if (ah_4 * 3157 + am_2 * 859 + ah_4 * am_2) % 16777213 == 5841353 then
                                    return
                                end
                                K.AfkConn = aL.Idled:Connect(function()
                                    local aE = aT() and K.AntiAfk
                                    if aE then
                                        m()
                                    end
                                end)
                                K.AfkTask = task.spawn(function()
                                    local bE, I
                                    local N = 0
                                    while true do
                                        N += 12082
                                        if N < 12089 then
                                            if N < 12086 then
                                                if N < 12084 then
                                                    if N < 11789 then
                                                        break
                                                    elseif N < 12082 then
                                                        break
                                                    elseif N < 12083 then
                                                        if N == 12082 then
                                                            bE = os.clock()
                                                            N = 2
                                                        else
                                                            N = 6885
                                                            continue
                                                        end
                                                    else
                                                        I = not K.AntiAfk
                                                        N = 11
                                                    end
                                                elseif N < 12085 then
                                                    N = 14
                                                elseif N == 12085 then
                                                    N = 15
                                                else
                                                    N = 12094
                                                    continue
                                                end
                                            elseif N < 12088 then
                                                if N < 12087 then
                                                    N = if I then 13 else 3
                                                elseif N == 12087 then
                                                    N = 2
                                                else
                                                    N = 3004
                                                    continue
                                                end
                                            elseif N == 12088 then
                                                N = if os.clock() - bE >= 60 then 8 else 9
                                            else
                                                N = 6673
                                                continue
                                            end
                                        elseif N < 12094 then
                                            if N < 12091 then
                                                if N < 12090 then
                                                    N = 15
                                                elseif N == 12090 then
                                                    bE = os.clock()
                                                    m()
                                                    N = 9
                                                else
                                                    N = 12082
                                                    continue
                                                end
                                            elseif N < 12092 then
                                                if N == 12091 then
                                                    N = 5
                                                else
                                                    N = 12004
                                                    continue
                                                end
                                            elseif N < 12093 then
                                                break
                                            else
                                                N = if I then 7 else 6
                                            end
                                        elseif N < 12096 then
                                            if N < 12095 then
                                                I = K.AntiAfk
                                                N = 4
                                            else
                                                task.wait(1)
                                                I = not aT()
                                                N = if I then 11 else 1
                                            end
                                        elseif N < 12097 then
                                            I = (aT())
                                            N = if I then 12 else 4
                                        elseif N < 13010 then
                                            if N == 12097 then
                                                N = 10
                                            else
                                                break
                                            end
                                        else
                                            break
                                        end
                                    end
                                end)
                            end
                            aj.SetNoGameplayPaused = function(c)
                                local J, X
                                local bA = 0
                                while true do
                                    bA += 10411
                                    if bA < 10416 then
                                        if bA < 10412 then
                                            if bA < 7093 then
                                                break
                                            elseif bA < 10411 then
                                                break
                                            else
                                                J = c
                                                bA = if J then 5 else 1
                                            end
                                        elseif bA < 10414 then
                                            if bA < 10413 then
                                                if bA == 10412 then
                                                    X = J
                                                    bA = if X then 4 else 3
                                                else
                                                    bA = 10415
                                                    continue
                                                end
                                            else
                                                break
                                            end
                                        elseif bA < 10415 then
                                            X = false
                                            bA = 4
                                        else
                                            K.NoGameplayPaused = X
                                            bA = 2
                                        end
                                    elseif bA < 14772 then
                                        if bA < 12753 then
                                            if bA < 10938 then
                                                if bA == 10416 then
                                                    J = true
                                                    bA = 1
                                                else
                                                    bA = 16115
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
                            aj.SetAutoReconnect = function(p)
                                local bx = p and true or false
                                K.AutoReconnect = bx
                                local ReconnectConns = K.ReconnectConns
                                for i, v in ipairs(ReconnectConns) do
                                    v.Disconnect(v)
                                end
                                table.clear(K.ReconnectConns)
                                if not K.AutoReconnect then
                                    return
                                end
                                table.insert(K.ReconnectConns, v.TeleportService.TeleportInitFailed:Connect(function()
                                    local aF = not aT() or not K.AutoReconnect
                                    if aF then
                                        return
                                    end
                                    task.wait(1)
                                    local aF_4 = aT() and K.AutoReconnect
                                    if aF_4 then
                                        pcall(function()
                                            v.TeleportService:Teleport(game.PlaceId, aL)
                                        end)
                                    end
                                end))
                            end
                            aj.SetDisable3D = function(l)
                                local bF, x
                                local aY = 4
                                while true do
                                    aY += 15359
                                    if aY < 13592 then
                                        break
                                    elseif aY < 15362 then
                                        if aY < 15360 then
                                            if aY < 15359 then
                                                break
                                            elseif aY == 15359 then
                                                K.Disable3D = x
                                                pcall(function()
                                                    v.RunService:Set3dRenderingEnabled(not K.Disable3D)
                                                end)
                                                aY = 1
                                            else
                                                aY = 15361
                                                continue
                                            end
                                        elseif aY < 15361 then
                                            break
                                        else
                                            x = false
                                            aY = 0
                                        end
                                    elseif aY < 15364 then
                                        if aY < 15363 then
                                            bF = true
                                            aY = 5
                                        elseif aY == 15363 then
                                            bF = l
                                            aY = if bF then 3 else 5
                                        else
                                            aY = 2351
                                            continue
                                        end
                                    elseif aY < 15923 then
                                        if aY == 15364 then
                                            x = bF
                                            aY = if x then 0 else 2
                                        else
                                            break
                                        end
                                    else
                                        break
                                    end
                                end
                            end
                            aj.SetFpsBoost = function(s)
                                local a3
                                local a7 = s and true or false
                                K.FpsBoost = a7
                                if K.FpsConn then
                                    local FpsConn = K.FpsConn
                                    FpsConn.Disconnect(FpsConn)
                                    K.FpsConn = nil
                                end
                                local function G_5()
                                    local FpsSnapshots = K.FpsSnapshots
                                    for k, v in pairs(FpsSnapshots) do
                                        local at = k
                                        if at and at.Parent then
                                            for k, v in pairs(v) do
                                                local bk = k
                                                local aV = v
                                                pcall(function()
                                                    at[bk] = aV
                                                end)
                                            end
                                        end
                                    end
                                    table.clear(K.FpsSnapshots)
                                end
                                if not K.FpsBoost then
                                    G_5()
                                    return
                                end
                                a3 = function(f)
                                    if K.FpsSnapshots[f] then
                                        return
                                    end
                                    local bu = f:IsA("ParticleEmitter") or f:IsA("Trail") or f:IsA("Beam") or f:IsA("Fire")
                                    local bD = if bu then 1 else 0
                                    local bq = 1692 * bD + 1151 * (1 - bD)
                                    local aD = 1893 * bD + 1102 * (1 - bD)
                                    if not ((bq * 3007 + aD * 2164 + bq * aD) % 16777213 == 12387252) then
                                        bu = f:IsA("Smoke")
                                    end
                                    if not bu then
                                        bu = f:IsA("Sparkles")
                                    end
                                    if bu then
                                        K.FpsSnapshots[f] = { Enabled = f.Enabled }
                                        f.Enabled = false
                                    end
                                end
                                local k7 = az
                                local GetDescendants = k7.GetDescendants
                                for i, v in ipairs(GetDescendants(k7)) do
                                    a3(v)
                                end
                                if K.FpsSnapshots[v.Lighting] == nil then
                                    K.FpsSnapshots[v.Lighting] = { GlobalShadows = v.Lighting.GlobalShadows, FogEnd = v.Lighting.FogEnd }
                                    v.Lighting.GlobalShadows = false
                                end
                                K.FpsConn = az.DescendantAdded:Connect(function(q)
                                    if K.FpsBoost then
                                        a3(q)
                                    end
                                end)
                            end
                            aj.Track(function()
                                aj.SetAntiAfk(false)
                                aj.SetAutoReconnect(false)
                                aj.SetDisable3D(false)
                                aj.SetFpsBoost(false)
                            end)
                        end
                        a3 = 12
                    else
                        a3 = 9985
                        continue
                    end
                elseif a3 < 9978 then
                    if a3 == 9977 then
                        a3 = 46
                    else
                        a3 = 10043
                        continue
                    end
                elseif a3 == 9978 then
                    pcall(fn645)
                    a3 = 111
                else
                    a3 = 10068
                    continue
                end
            elseif a3 < 9983 then
                if a3 < 9981 then
                    if a3 < 9980 then
                        if a3 == 9979 then
                            a3 = 231
                        else
                            a3 = 9879
                            continue
                        end
                    elseif a3 == 9980 then
                        a3 = 107
                    else
                        a3 = 9974
                        continue
                    end
                elseif a3 < 9982 then
                    if a3 == 9981 then
                        a3 = 146
                    else
                        a3 = 10026
                        continue
                    end
                else
                    a3 = 164
                end
            elseif a3 < 9985 then
                if a3 < 9984 then
                    aW = aV
                    a3 = if aW then 22 else 176
                else
                    a3 = 122
                end
            elseif a3 < 9986 then
                if a3 == 9985 then
                    aW = fn1128
                    a3 = 76
                else
                    a3 = 10050
                    continue
                end
            elseif a3 < 9987 then
                a3 = 115
            elseif a3 == 9987 then
                a3 = if (function(e, t, c, o)
                    if type(e) ~= "string" then
                        return false
                    end
                    if #e ~= t then
                        return false
                    end
                    local r = 5381
                    local s = buffer.fromstring(e)
                    local k = 0
                    while k <= t - 4 do
                        local j = buffer.readu32(s, k)
                        local r_153 = bit32.bxor(r, j)
                        r = bit32.band(r_153 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < t do
                        local m = buffer.readu8(s, k)
                        local r_154 = bit32.bxor(r, m)
                        r = bit32.band(r_154 * 33, 4294967295)
                        k = k + 1
                    end
                    if r ~= c then
                        return false
                    end
                    return e == o
                end)(type(aZ.RarityOrder), 5, 248602996, "table") then 195 else 179
            else
                a3 = 10120
                continue
            end
        elseif a3 < 9997 then
            if a3 < 9992 then
                if a3 < 9990 then
                    if a3 < 9989 then
                        aj.Track(fn1027)
                        a3 = 96
                    else
                        aU = fns.fn153
                        ai = fn1313
                        bK_2 = function()
                            local J, a6, bw, ai, bn
                            local H = 6
                            while true do
                                H += 3348
                                if H < 3358 then
                                    if H < 3353 then
                                        if H < 3350 then
                                            if H < 3349 then
                                                if H == 3348 then
                                                    H = 11
                                                else
                                                    break
                                                end
                                            elseif H == 3349 then
                                                local U = if a6 then 1 else 0
                                                local bk = 3673 * U + 571 * (1 - U)
                                                local ao = 3298 * U + 1526 * (1 - U)
                                                H = if (bk * 3533 + ao * 3056 + bk * ao) % 16777213 == 1614525 then 3 else 10
                                            else
                                                H = 9236
                                                continue
                                            end
                                        elseif H < 3351 then
                                            if H == 3350 then
                                                pcall(function()
                                                    local Id = J.Id
                                                    local lu = "Equip"
                                                    TrailShopRequest:FireServer(lu, Id)
                                                end)
                                                H = 7
                                            else
                                                H = 10026
                                                continue
                                            end
                                        elseif H < 3352 then
                                            return
                                        else
                                            a6 = not ac.Enabled.BuyTrails
                                            H = 1
                                        end
                                    elseif H < 3356 then
                                        if H < 3354 then
                                            if H == 3353 then
                                                H = if (bw * 1087 + ai * 3175 + bw * ai) % 16777213 == 9201959 then 13 else 9
                                            else
                                                H = 3358
                                                continue
                                            end
                                        elseif H < 3355 then
                                            a6 = not aT()
                                            H = if a6 then 1 else 4
                                        else
                                            H = 0
                                        end
                                    elseif H < 3357 then
                                        if H == 3356 then
                                            ai = 1569 * bn + 3855 * (1 - bn)
                                            H = 5
                                        else
                                            H = 3354
                                            continue
                                        end
                                    elseif H == 3357 then
                                        a6 = aU()
                                        local bf = am()
                                        J = nil
                                        local bz = false
                                        local Trails = TrailsConfig.Trails
                                        for i, v in ipairs(Trails) do
                                            local C = v
                                            local aK = (function(e, t, c, o)
                                                if type(e) ~= "string" then
                                                    return false
                                                end
                                                if #e ~= t then
                                                    return false
                                                end
                                                local r = 5381
                                                local s = buffer.fromstring(e)
                                                local k = 0
                                                while k <= t - 4 do
                                                    local j = buffer.readu32(s, k)
                                                    local r_151 = bit32.bxor(r, j)
                                                    r = bit32.band(r_151 * 33, 4294967295)
                                                    k = k + 4
                                                end
                                                while k < t do
                                                    local m = buffer.readu8(s, k)
                                                    local r_152 = bit32.bxor(r, m)
                                                    r = bit32.band(r_152 * 33, 4294967295)
                                                    k = k + 1
                                                end
                                                if r ~= c then
                                                    return false
                                                end
                                                return e == o
                                            end)(type(C), 5, 248602996, "table") and (function(e, t, c, o)
                                                if type(e) ~= "string" then
                                                    return false
                                                end
                                                if #e ~= t then
                                                    return false
                                                end
                                                local r = 5381
                                                local s = buffer.fromstring(e)
                                                local k = 0
                                                while k <= t - 4 do
                                                    local j = buffer.readu32(s, k)
                                                    local r_149 = bit32.bxor(r, j)
                                                    r = bit32.band(r_149 * 33, 4294967295)
                                                    k = k + 4
                                                end
                                                while k < t do
                                                    local m = buffer.readu8(s, k)
                                                    local r_150 = bit32.bxor(r, m)
                                                    r = bit32.band(r_150 * 33, 4294967295)
                                                    k = k + 1
                                                end
                                                if r ~= c then
                                                    return false
                                                end
                                                return e == o
                                            end)(typeof(C.Id), 6, 472614556, "number")
                                            if aK then
                                                if a6[C.Id] then
                                                    local aK_6 = J == nil
                                                    if not aK_6 then
                                                        local a1_4 = tonumber(C.Multiplier) or 0
                                                        local au_3 = tonumber(J.Multiplier) or 0
                                                        aK_6 = a1_4 > au_3
                                                    end
                                                    if aK_6 then
                                                        J = C
                                                    end
                                                else
                                                    local aK_7 = tonumber(C.Price) or 0
                                                    if bf >= aK_7 then
                                                        local aK_8 = pcall(function()
                                                            local Id = C.Id
                                                            local lD = "Buy"
                                                            TrailShopRequest:FireServer(lD, Id)
                                                        end)
                                                        if aK_8 then
                                                            bz = true
                                                            a6[C.Id] = true
                                                            bf -= aK_7
                                                            local aK_9 = J == nil
                                                            if not aK_9 then
                                                                local a1_6 = tonumber(C.Multiplier) or 0
                                                                local au_4 = tonumber(J.Multiplier) or 0
                                                                aK_9 = a1_6 > au_4
                                                            end
                                                            if aK_9 then
                                                                J = C
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        H = if bz then 12 else 0
                                    else
                                        H = 10026
                                        continue
                                    end
                                elseif H < 3361 then
                                    if H < 3360 then
                                        if H < 3359 then
                                            bn = if os.clock() - ac.LastBuyTrailsAt < 1 then 1 else 0
                                            bw = 1589 * bn + 859 * (1 - bn)
                                            H = 8
                                        else
                                            break
                                        end
                                    elseif H == 3360 then
                                        ac.LastBuyTrailsAt = os.clock()
                                        H = if J then 2 else 7
                                    else
                                        H = 3356
                                        continue
                                    end
                                elseif H < 9236 then
                                    if H < 5184 then
                                        if H == 3361 then
                                            return
                                        end
                                        break
                                    end
                                    break
                                else
                                    break
                                end
                            end
                        end
                        bK_10 = fns.fn28
                        a3 = 213
                    end
                elseif a3 < 9991 then
                    if a3 == 9990 then
                        a3 = 161
                    else
                        a3 = 10070
                        continue
                    end
                elseif a3 == 9991 then
                    aV = 8
                    a3 = 55
                else
                    a3 = 10005
                    continue
                end
            elseif a3 < 9994 then
                if a3 < 9993 then
                    if a3 == 9992 then
                        aX = function()
                            local connection, bw, Q
                            local ba = 4
                            while true do
                                ba += 16310
                                if ba < 15493 then
                                    break
                                elseif ba < 16312 then
                                    if ba < 16310 then
                                        break
                                    elseif ba < 16311 then
                                        break
                                    else
                                        Q(aL.Character)
                                        ba = 5
                                    end
                                elseif ba < 16314 then
                                    if ba < 16313 then
                                        local CharacterAdded = aL.CharacterAdded
                                        connection = CharacterAdded:Connect(Q)
                                        aj.Track(function()
                                            connection.Disconnect(connection)
                                            aj.SetInfJump(false)
                                            aj.SetNoClip(false)
                                            aj.SetFly(false)
                                            aj.SetInstantProximityPrompt(false)
                                            aj.SetWalkSpeedEnabled(false)
                                        end)
                                        ba = 3
                                    else
                                        ba = 0
                                    end
                                elseif ba < 16315 then
                                    if ba == 16314 then
                                        bw = function(c)
                                            local ab = 0
                                            while true do
                                                ab += 3141
                                                if ab < 3148 then
                                                    if ab < 3144 then
                                                        if ab < 3142 then
                                                            if ab == 3141 then
                                                                ab = if not c then 1 else 2
                                                            else
                                                                break
                                                            end
                                                        elseif ab < 3143 then
                                                            if ab == 3142 then
                                                                return
                                                            end
                                                            ab = 3147
                                                            continue
                                                        elseif ab == 3143 then
                                                            local av = if aF.WalkSnapshots[c] == nil then 1 else 0
                                                            local aY = 3305 * av + 3669 * (1 - av)
                                                            local L = 2815 * av + 762 * (1 - av)
                                                            ab = if (aY * 3562 + L * 3380 + aY * L) % 16777213 == 13813472 then 4 else 7
                                                        else
                                                            ab = 3142
                                                            continue
                                                        end
                                                    elseif ab < 3146 then
                                                        if ab < 3145 then
                                                            if ab == 3144 then
                                                                ab = 6
                                                            else
                                                                ab = 3145
                                                                continue
                                                            end
                                                        elseif ab == 3145 then
                                                            aF.WalkSnapshots[c] = c.WalkSpeed
                                                            ab = 7
                                                        else
                                                            ab = 15252
                                                            continue
                                                        end
                                                    elseif ab < 3147 then
                                                        if ab == 3146 then
                                                            c.WalkSpeed = aF.WalkSpeed
                                                            ab = 3
                                                        else
                                                            ab = 15252
                                                            continue
                                                        end
                                                    else
                                                        break
                                                    end
                                                elseif ab < 11670 then
                                                    if ab < 7216 then
                                                        if ab < 6020 then
                                                            if ab == 3148 then
                                                                ab = if aF.WalkSpeedEnabled then 5 else 3
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
                                        aj.SetWalkSpeedEnabled = function(t)
                                            local bd = t and true or false
                                            aF.WalkSpeedEnabled = bd
                                            local E_3 = ao()
                                            if not E_3 then
                                                return
                                            end
                                            if aF.WalkSpeedEnabled then
                                                bw(E_3)
                                            elseif aF.WalkSnapshots[E_3] ~= nil then
                                                E_3.WalkSpeed = aF.WalkSnapshots[E_3]
                                            end
                                        end
                                        aj.SetWalkSpeedValue = function(g)
                                            local ac
                                            local aW = 5
                                            while true do
                                                aW += 2858
                                                if aW < 2863 then
                                                    if aW < 2859 then
                                                        if aW < 2693 then
                                                            break
                                                        elseif aW < 2858 then
                                                            break
                                                        else
                                                            ac = ao()
                                                            aW = if ac then 1 else 2
                                                        end
                                                    elseif aW < 2861 then
                                                        if aW < 2860 then
                                                            ac.WalkSpeed = g
                                                            aW = 2
                                                        elseif aW == 2860 then
                                                            aW = 3
                                                        else
                                                            aW = 2861
                                                            continue
                                                        end
                                                    elseif aW < 2862 then
                                                        aW = 4
                                                    else
                                                        break
                                                    end
                                                elseif aW < 10924 then
                                                    if aW < 5032 then
                                                        if aW == 2863 then
                                                            aF.WalkSpeed = g
                                                            aW = if aF.WalkSpeedEnabled then 0 else 3
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
                                        aj.SetInfJump = function(e)
                                            local a6, bD
                                            local bl = 8
                                            while true do
                                                bl += 8568
                                                if bl < 8573 then
                                                    if bl < 8569 then
                                                        if bl < 4536 then
                                                            break
                                                        elseif bl < 8568 then
                                                            break
                                                        elseif bl == 8568 then
                                                            aF.InfJump = bD
                                                            bl = if aF.InfJumpConn then 9 else 3
                                                        else
                                                            bl = 8573
                                                            continue
                                                        end
                                                    elseif bl < 8571 then
                                                        if bl < 8570 then
                                                            break
                                                        elseif bl == 8570 then
                                                            aF.InfJumpConn = v.UserInputService.JumpRequest:Connect(function()
                                                                local bp = not aT() or not aF.InfJump
                                                                if bp then
                                                                    return
                                                                end
                                                                local bp_7 = ao()
                                                                if bp_7 then
                                                                    bp_7:ChangeState(Enum.HumanoidStateType.Jumping)
                                                                end
                                                            end)
                                                            bl = 1
                                                        else
                                                            bl = 8568
                                                            continue
                                                        end
                                                    elseif bl < 8572 then
                                                        bl = if not aF.InfJump then 5 else 2
                                                    elseif bl == 8572 then
                                                        bD = a6
                                                        bl = if bD then 0 else 7
                                                    else
                                                        bl = 9920
                                                        continue
                                                    end
                                                elseif bl < 8577 then
                                                    if bl < 8575 then
                                                        if bl < 8574 then
                                                            if bl == 8573 then
                                                                return
                                                            end
                                                            bl = 4536
                                                            continue
                                                        end
                                                        a6 = true
                                                        bl = 4
                                                    elseif bl < 8576 then
                                                        bD = false
                                                        bl = 0
                                                    elseif bl == 8576 then
                                                        a6 = e
                                                        bl = if a6 then 6 else 4
                                                    else
                                                        bl = 8575
                                                        continue
                                                    end
                                                elseif bl < 12076 then
                                                    if bl < 9920 then
                                                        if bl == 8577 then
                                                            a6 = aF.InfJumpConn
                                                            a6.Disconnect(a6)
                                                            aF.InfJumpConn = nil
                                                            bl = 3
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
                                        aj.SetNoClip = function(k)
                                            local C, R, ay
                                            local A = 9
                                            while true do
                                                A += 16354
                                                if A < 16358 then
                                                    if A < 16354 then
                                                        break
                                                    elseif A < 16356 then
                                                        if A < 16355 then
                                                            if A == 16354 then
                                                                C = function(c)
                                                                    local ao = (c:IsA("BasePart"))
                                                                    local bF = if ao then 1 else 0
                                                                    local z = 3436 * bF + 2500 * (1 - bF)
                                                                    local aO = 448 * bF + 824 * (1 - bF)
                                                                    if (z * 1111 + aO * 1895 + z * aO) % 16777213 == 6205684 then
                                                                        ao = aF.NoClipSnapshots[c] == nil
                                                                    end
                                                                    if ao then
                                                                        aF.NoClipSnapshots[c] = c.CanCollide
                                                                        c.CanCollide = false
                                                                    end
                                                                end
                                                                A = if R then 2 else 8
                                                            else
                                                                A = 1511
                                                                continue
                                                            end
                                                        elseif A == 16355 then
                                                            R = aF.NoClipConn
                                                            R.Disconnect(R)
                                                            aF.NoClipConn = nil
                                                            A = 4
                                                        else
                                                            A = 6078
                                                            continue
                                                        end
                                                    elseif A < 16357 then
                                                        local GetDescendants = R.GetDescendants
                                                        for i, v in ipairs(GetDescendants(R)) do
                                                            C(v)
                                                        end
                                                        aF.NoClipConn = R.DescendantAdded:Connect(function(p)
                                                            local bb = 1
                                                            while true do
                                                                bb += 14303
                                                                if bb < 8600 then
                                                                    break
                                                                elseif bb < 14303 then
                                                                    break
                                                                elseif bb < 14305 then
                                                                    if bb < 14304 then
                                                                        bb = 2
                                                                    elseif bb == 14304 then
                                                                        bb = if aF.NoClip then 3 else 0
                                                                    else
                                                                        bb = 7542
                                                                        continue
                                                                    end
                                                                elseif bb < 14306 then
                                                                    break
                                                                else
                                                                    C(p)
                                                                    bb = 0
                                                                end
                                                            end
                                                        end)
                                                        A = 8
                                                    else
                                                        break
                                                    end
                                                elseif A < 16359 then
                                                    if A == 16358 then
                                                        R = aL.Character
                                                        A = if not aF.NoClip then 5 else 0
                                                    else
                                                        A = 16364
                                                        continue
                                                    end
                                                elseif A < 16362 then
                                                    if A < 16360 then
                                                        if A == 16359 then
                                                            local NoClipSnapshots = aF.NoClipSnapshots
                                                            for k, v in pairs(NoClipSnapshots) do
                                                                if k and k.Parent then
                                                                    k.CanCollide = v
                                                                end
                                                            end
                                                            table.clear(aF.NoClipSnapshots)
                                                            return
                                                        end
                                                        A = 4569
                                                        continue
                                                    elseif A < 16361 then
                                                        if A == 16360 then
                                                            ay = R
                                                            A = if ay then 11 else 10
                                                        else
                                                            A = 16359
                                                            continue
                                                        end
                                                    elseif A == 16361 then
                                                        R = true
                                                        A = 6
                                                    else
                                                        A = 91
                                                        continue
                                                    end
                                                elseif A < 16364 then
                                                    if A < 16363 then
                                                        A = 3
                                                    else
                                                        R = k
                                                        A = if R then 7 else 6
                                                    end
                                                elseif A < 16365 then
                                                    if A == 16364 then
                                                        ay = false
                                                        A = 11
                                                    else
                                                        A = 16355
                                                        continue
                                                    end
                                                elseif A == 16365 then
                                                    aF.NoClip = ay
                                                    A = if aF.NoClipConn then 1 else 4
                                                else
                                                    A = 5609
                                                end
                                            end
                                        end
                                        aj.SetFly = function(t)
                                            local aJ, aj, u
                                            local bz = 17
                                            while true do
                                                bz += 15778
                                                if bz < 15782 then
                                                    if bz < 15209 then
                                                        break
                                                    elseif bz < 15778 then
                                                        break
                                                    elseif bz < 15780 then
                                                        if bz < 15779 then
                                                            aj = aJ
                                                            bz = if aj then 2 else 12
                                                        else
                                                            aF.FlySnap = nil
                                                            bz = if aj then 9 else 4
                                                        end
                                                    elseif bz < 15781 then
                                                        if bz == 15780 then
                                                            aF.Fly = aj
                                                            bz = if aF.FlyConn then 5 else 15
                                                        else
                                                            bz = 15787
                                                            continue
                                                        end
                                                    elseif bz == 15781 then
                                                        aF.FlySnap = { PlatformStand = aJ.PlatformStand }
                                                        aJ.PlatformStand = true
                                                        bz = 13
                                                    else
                                                        bz = 15795
                                                        continue
                                                    end
                                                elseif bz < 15789 then
                                                    if bz < 15785 then
                                                        if bz < 15783 then
                                                            if bz == 15782 then
                                                                return
                                                            end
                                                            bz = 15778
                                                            continue
                                                        elseif bz < 15784 then
                                                            aJ = aF.FlyConn
                                                            aJ.Disconnect(aJ)
                                                            aF.FlyConn = nil
                                                            bz = 15
                                                        elseif bz == 15784 then
                                                            u = aF.FlySnap
                                                            bz = if u then 10 else 11
                                                        else
                                                            bz = 15209
                                                            continue
                                                        end
                                                    elseif bz < 15787 then
                                                        if bz < 15786 then
                                                            if bz == 15785 then
                                                                aJ.PlatformStand = aF.FlySnap.PlatformStand
                                                                bz = 1
                                                            else
                                                                bz = 15792
                                                                continue
                                                            end
                                                        else
                                                            break
                                                        end
                                                    elseif bz < 15788 then
                                                        aj.AssemblyLinearVelocity = Vector3.zero
                                                        bz = 4
                                                    elseif bz == 15788 then
                                                        u = aJ
                                                        bz = 11
                                                    else
                                                        bz = 15590
                                                        continue
                                                    end
                                                elseif bz < 15792 then
                                                    if bz < 15790 then
                                                        bz = if u then 7 else 1
                                                    elseif bz < 15791 then
                                                        aj = false
                                                        bz = 2
                                                    else
                                                        aF.FlyConn = v.RunService.RenderStepped:Connect(function()
                                                            local T = not aT() or not aF.Fly
                                                            if T then
                                                                return
                                                            end
                                                            local UserInputService = v.UserInputService
                                                            if UserInputService:GetFocusedTextBox() then
                                                                return
                                                            end
                                                            local T_2 = aS()
                                                            local CurrentCamera = az.CurrentCamera
                                                            if not (T_2 and CurrentCamera) then
                                                                return
                                                            end
                                                            local V_1 = Vector3.zero
                                                            if v.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                                                                V_1 += CurrentCamera.CFrame.LookVector
                                                            end
                                                            if v.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                                                                V_1 -= CurrentCamera.CFrame.LookVector
                                                            end
                                                            if v.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                                                                V_1 -= CurrentCamera.CFrame.RightVector
                                                            end
                                                            if v.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                                                                V_1 += CurrentCamera.CFrame.RightVector
                                                            end
                                                            local aK = if v.UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
                                                            local bA = 3958 * aK + 1807 * (1 - aK)
                                                            local a2 = 789 * aK + 1086 * (1 - aK)
                                                            if (bA * 3482 + a2 * 3152 + bA * a2) % 16777213 == 2614333 then
                                                                V_1 += Vector3.yAxis
                                                            end
                                                            local N = if v.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
                                                            if N == 1 then
                                                                V_1 -= Vector3.yAxis
                                                            end
                                                            if V_1.Magnitude > 0 then
                                                                T_2.AssemblyLinearVelocity = V_1.Unit * aF.FlySpeed
                                                            else
                                                                T_2.AssemblyLinearVelocity = Vector3.zero
                                                            end
                                                            T_2.CFrame = CFrame.new(T_2.Position, T_2.Position + CurrentCamera.CFrame.LookVector)
                                                        end)
                                                        bz = 8
                                                    end
                                                elseif bz < 15794 then
                                                    if bz < 15793 then
                                                        local Z = if aJ then 1 else 0
                                                        local bH = 3441 * Z + 4 * (1 - Z)
                                                        local bG = 1929 * Z + 1023 * (1 - Z)
                                                        bz = if (bH * 3407 + bG * 2214 + bH * bG) % 16777213 == 5854769 then 3 else 13
                                                    else
                                                        aJ = ao()
                                                        aj = aS()
                                                        bz = if not aF.Fly then 6 else 14
                                                    end
                                                elseif bz < 15795 then
                                                    if bz == 15794 then
                                                        aJ = true
                                                        bz = 0
                                                    else
                                                        bz = 15786
                                                        continue
                                                    end
                                                else
                                                    aJ = t
                                                    bz = if aJ then 16 else 0
                                                end
                                            end
                                        end
                                        aj.SetFlySpeed = function(m)
                                            aF.FlySpeed = m
                                        end
                                        aj.SetInstantProximityPrompt = function(e)
                                            local bx
                                            local ae = e and true or false
                                            aF.InstantPP = ae
                                            if aF.InstantConn then
                                                local InstantConn = aF.InstantConn
                                                InstantConn.Disconnect(InstantConn)
                                                aF.InstantConn = nil
                                            end
                                            local function bi_2()
                                                local InstantSnapshots = aF.InstantSnapshots
                                                for k, v in pairs(InstantSnapshots) do
                                                    if k and k.Parent then
                                                        k.HoldDuration = v.HoldDuration
                                                        k.MaxActivationDistance = v.MaxActivationDistance
                                                        k.RequiresLineOfSight = v.RequiresLineOfSight
                                                    end
                                                end
                                                table.clear(aF.InstantSnapshots)
                                            end
                                            if not aF.InstantPP then
                                                bi_2()
                                                return
                                            end
                                            bx = function(j)
                                                if not j:IsA("ProximityPrompt") then
                                                    return
                                                end
                                                if aF.InstantSnapshots[j] == nil then
                                                    aF.InstantSnapshots[j] = {
                                                        HoldDuration = j.HoldDuration,
                                                        MaxActivationDistance = j.MaxActivationDistance,
                                                        RequiresLineOfSight = j.RequiresLineOfSight
                                                    }
                                                end
                                                j.HoldDuration = 0
                                                j.MaxActivationDistance = 50
                                                j.RequiresLineOfSight = false
                                            end
                                            local ma = az
                                            local GetDescendants = ma.GetDescendants
                                            for i, v in ipairs(GetDescendants(ma)) do
                                                bx(v)
                                            end
                                            aF.InstantConn = az.DescendantAdded:Connect(function(k)
                                                local be = 0
                                                while true do
                                                    be += 5131
                                                    if be < 5751 then
                                                        if be < 5131 then
                                                            break
                                                        elseif be < 5133 then
                                                            if be < 5132 then
                                                                be = if aF.InstantPP then 3 else 1
                                                            else
                                                                be = 2
                                                            end
                                                        elseif be < 5134 then
                                                            break
                                                        elseif be == 5134 then
                                                            bx(k)
                                                            be = 1
                                                        else
                                                            be = 4226
                                                            continue
                                                        end
                                                    else
                                                        break
                                                    end
                                                end
                                            end)
                                        end
                                        Q = function(g)
                                            task.defer(function()
                                                if not aT() then
                                                    return
                                                end
                                                local Humanoid = g:WaitForChild("Humanoid", 10)
                                                if not Humanoid then
                                                    return
                                                end
                                                if aF.WalkSpeedEnabled then
                                                    bw(Humanoid)
                                                end
                                                if aF.NoClip then
                                                    aj.SetNoClip(true)
                                                end
                                                if aF.Fly then
                                                    aj.SetFly(true)
                                                end
                                            end)
                                        end
                                        ba = if aL.Character then 1 else 5
                                    else
                                        ba = 7540
                                        continue
                                    end
                                elseif ba == 16315 then
                                    ba = 2
                                else
                                    ba = 15493
                                end
                            end
                        end
                        a3 = 259
                    else
                        a3 = 9999
                        continue
                    end
                elseif a3 == 9993 then
                    ax = function(j, l, p)
                        local bG
                        local Gens = ac.Gens
                        local A = ac.Gens[j]
                        local au = if A then 1 else 0
                        local af_1 = 3942 * au + 3160 * (1 - au)
                        local U = 3129 * au + 1748 * (1 - au)
                        if not ((af_1 * 469 + U * 314 + af_1 * U) % 16777213 == 15165822) then
                            A = 0
                        end
                        Gens[j] = A + 1
                        bG = ac.Gens[j]
                        task.spawn(function()
                            local af, aB
                            local Z = 4
                            while true do
                                Z += 13565
                                if Z < 13576 then
                                    if Z < 13571 then
                                        if Z < 13567 then
                                            if Z < 13566 then
                                                if Z < 13565 then
                                                    break
                                                elseif Z == 13565 then
                                                    Z = if af then 11 else 12
                                                else
                                                    Z = 13574
                                                    continue
                                                end
                                            elseif Z == 13566 then
                                                Z = if af then 10 else 6
                                            else
                                                Z = 13574
                                                continue
                                            end
                                        elseif Z < 13569 then
                                            if Z < 13568 then
                                                if Z == 13567 then
                                                    af = not ac.Enabled[j]
                                                    Z = 0
                                                else
                                                    Z = 15484
                                                    continue
                                                end
                                            else
                                                Z = 19
                                            end
                                        elseif Z < 13570 then
                                            if Z == 13569 then
                                                Z = 9
                                            else
                                                Z = 13568
                                                continue
                                            end
                                        else
                                            local ms = tostring(aB)
                                            local mr = j .. ": " .. ms
                                            warn("[Ouroboros] " .. mr)
                                            Z = 16
                                        end
                                    elseif Z < 13574 then
                                        if Z < 13573 then
                                            if Z < 13572 then
                                                if Z == 13571 then
                                                    Z = 3
                                                else
                                                    Z = 13575
                                                    continue
                                                end
                                            else
                                                af = (aT())
                                                Z = if af then 15 else 14
                                            end
                                        else
                                            Z = if af then 0 else 2
                                        end
                                    elseif Z < 13575 then
                                        Z = 7
                                    elseif Z == 13575 then
                                        af, aB = pcall(p)
                                        Z = if not af then 5 else 16
                                    else
                                        Z = 13577
                                        continue
                                    end
                                elseif Z < 13581 then
                                    if Z < 13579 then
                                        if Z < 13578 then
                                            if Z < 13577 then
                                                if Z == 13576 then
                                                    Z = 3
                                                else
                                                    Z = 13581
                                                    continue
                                                end
                                            elseif Z == 13577 then
                                                Z = 17
                                            else
                                                Z = 12939
                                                continue
                                            end
                                        elseif Z == 13578 then
                                            af = ac.Enabled[j]
                                            Z = 1
                                        else
                                            Z = 13584
                                            continue
                                        end
                                    elseif Z < 13580 then
                                        Z = if af then 13 else 1
                                    elseif Z == 13580 then
                                        af = ac.Gens[j] == bG
                                        Z = 14
                                    else
                                        Z = 13579
                                        continue
                                    end
                                elseif Z < 13583 then
                                    if Z < 13582 then
                                        if Z == 13581 then
                                            task.wait(l)
                                            af = not aT()
                                            Z = if af then 8 else 18
                                        else
                                            Z = 7135
                                            continue
                                        end
                                    elseif Z == 13582 then
                                        Z = 9
                                    else
                                        Z = 13575
                                        continue
                                    end
                                elseif Z < 13584 then
                                    if Z == 13583 then
                                        af = ac.Gens[j] ~= bG
                                        Z = 8
                                    else
                                        Z = 13578
                                        continue
                                    end
                                else
                                    break
                                end
                            end
                        end)
                    end
                    w = fn422
                    a3 = 247
                else
                    a3 = 9972
                    continue
                end
            elseif a3 < 9995 then
                a3 = 196
            elseif a3 < 9996 then
                if a3 == 9995 then
                    a3 = 34
                else
                    a3 = 9873
                    continue
                end
            elseif a3 == 9996 then
                bK_13 = "https://ouroboros-hub-rbx.web.app/"
                a3 = 233
            else
                a3 = 10088
                continue
            end
        elseif a3 < 10001 then
            if a3 < 9999 then
                if a3 < 9998 then
                    if a3 == 9997 then
                        a3 = 69
                    else
                        a3 = 10004
                        continue
                    end
                elseif a3 == 9998 then
                    aN = fn1257
                    au = fn379
                    a3 = 260
                else
                    a3 = 9895
                    continue
                end
            elseif a3 < 10000 then
                aV = (tonumber(a0.HitRange))
                a3 = if aV then 55 else 121
            elseif a3 == 10000 then
                assert(aW, "Shop remotes missing")
                local mw = -67
                local mx = -26
                local my = 3
                L = Vector3.new(mw, my, mx)
                a3 = 80
            else
                a3 = 9909
                continue
            end
        elseif a3 < 10003 then
            if a3 < 10002 then
                if a3 == 10001 then
                    af = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    a3 = 244
                else
                    a3 = 10034
                    continue
                end
            elseif a3 == 10002 then
                a3 = 85
            else
                a3 = 10103
                continue
            end
        elseif a3 < 10004 then
            a3 = 41
        elseif a3 < 10005 then
            if a3 == 10004 then
                aV = game.Loaded
                aV.Wait(aV)
                a3 = 219
            else
                a3 = 9926
                continue
            end
        elseif a3 == 10005 then
            a3 = 33
        else
            a3 = 10057
            continue
        end
    elseif a3 < 10076 then
        if a3 < 10041 then
            if a3 < 10023 then
                if a3 < 10014 then
                    if a3 < 10010 then
                        if a3 < 10008 then
                            if a3 < 10007 then
                                ay, z = Toggles.Toggles, Toggles.Options
                                a3 = 124
                            else
                                ah = aV
                                a3 = 97
                            end
                        elseif a3 < 10009 then
                            if a3 == 10008 then
                                a3 = if not game:IsLoaded() then 134 else 219
                            else
                                a3 = 9873
                                continue
                            end
                        elseif a3 == 10009 then
                            a3 = 224
                        else
                            a3 = 9870
                            continue
                        end
                    elseif a3 < 10012 then
                        if a3 < 10011 then
                            if a3 == 10010 then
                                a3 = 200
                            else
                                a3 = 10047
                                continue
                            end
                        else
                            TrailsConfig = require(aX:WaitForChild("TrailsConfig"))
                            aZ = require(aX:WaitForChild("IndexConfig"))
                            a_ = require(aX:WaitForChild("ZoneAnimalsConfig"))
                            a3 = 234
                        end
                    elseif a3 < 10013 then
                        aH = function(t)
                            local O = if not (t and t.Parent) then 1 else 0
                            local aK = 2107 * O + 137 * (1 - O)
                            local L = 3066 * O + 1618 * (1 - O)
                            if (aK * 1365 + L * 2455 + aK * L) % 16777213 == 85934 then
                                return false
                            else
                                local V = ao()
                                local O_1 = if not V then 1 else 0
                                local aK_5 = 1369 * O_1 + 3051 * (1 - O_1)
                                local L_1 = 79 * O_1 + 1054 * (1 - O_1)
                                if (aK_5 * 4063 + L_1 * 55 + aK_5 * L_1) % 16777213 == 5674743 then
                                    return false
                                elseif t.Parent == aL.Character then
                                    return true
                                else
                                    local bo_1 = pcall(function()
                                        V.EquipTool(V, t)
                                    end)
                                    return bo_1
                                end
                            end
                        end
                        M = fn633
                        aa = fns.fn261
                        F = fn567
                        aI = fn1300
                        a3 = 92
                    elseif a3 == 10013 then
                        a3 = 27
                    else
                        a3 = 9984
                        continue
                    end
                elseif a3 < 10018 then
                    if a3 < 10016 then
                        if a3 < 10015 then
                            if a3 == 10014 then
                                aV = loadstring(game:HttpGet(aJ .. "addons/ThemeManager.lua"))()
                                aQ = loadstring(game:HttpGet(aJ .. "addons/SaveManager.lua"))()
                                a3 = 170
                            else
                                a3 = 9981
                                continue
                            end
                        elseif a3 == 10015 then
                            bK_22 = function()
                                local F
                                local N = not aT() or not ac.Enabled.BuyPickaxes
                                if N then
                                    return
                                end
                                if os.clock() - ac.LastBuyPickaxeAt < 1 then
                                    return
                                end
                                local N_3 = ai()
                                F = nil
                                local S = #PickaxeConfig.Tiers
                                local bi = 1
                                while bi <= S do
                                    local a2 = bi
                                    if not N_3[a2] then
                                        F = a2
                                        break
                                    end
                                    bi += 1
                                end
                                if not F then
                                    return
                                end
                                local N_4 = PickaxeConfig.GetPrice(F)
                                if not T(N_4) then
                                    return
                                end
                                local N_5 = pcall(function()
                                    PickaxeShopRequest.FireServer(PickaxeShopRequest, "Buy", F)
                                end)
                                if N_5 then
                                    ac.LastBuyPickaxeAt = os.clock()
                                    pcall(function()
                                        PickaxeShopRequest.FireServer(PickaxeShopRequest, "Equip", F)
                                    end)
                                end
                            end
                            a3 = 159
                        else
                            a3 = 10054
                            continue
                        end
                    elseif a3 < 10017 then
                        local mN = a2 .. " loaded"
                        z:Notify("Break and Steal an Egg " .. mN, 4)
                        a3 = 109
                    elseif a3 == 10017 then
                        pcall(fn1272)
                        aV = function(c)
                            local bb
                            local br
                            local bE
                            bb = nil
                            br = nil
                            bE = nil
                            local mS = type(c)
                            local mU = (function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_147 = bit32.bxor(r, j)
                                    r = bit32.band(r_147 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_148 = bit32.bxor(r, m)
                                    r = bit32.band(r_148 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(mS, 6, 2175009567, "string")
                            local bp = not (function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_145 = bit32.bxor(r, j)
                                    r = bit32.band(r_145 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_146 = bit32.bxor(r, m)
                                    r = bit32.band(r_146 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(c, 0, 5381, "")
                            local U = mU and bp
                            assert(U, "Namespace is required")
                            assert((function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_143 = bit32.bxor(r, j)
                                    r = bit32.band(r_143 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_144 = bit32.bxor(r, m)
                                    r = bit32.band(r_144 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(type(getgenv), 8, 2851454103, "function"), "getgenv is unavailable")
                            bb = getgenv()
                            assert((function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_141 = bit32.bxor(r, j)
                                    r = bit32.band(r_141 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_142 = bit32.bxor(r, m)
                                    r = bit32.band(r_142 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(type(bb), 5, 248602996, "table"), "getgenv did not return a table")
                            local bp_6 = bb[c]
                            local I = if bp_6 ~= nil then 1 else 0
                            local a5 = 925 * I + 1543 * (1 - I)
                            local aa = 2136 * I + 4057 * (1 - I)
                            if (a5 * 3304 + aa * 2131 + a5 * aa) % 16777213 == 9583816 then
                                local U_1 = (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_139 = bit32.bxor(r, j)
                                        r = bit32.band(r_139 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_140 = bit32.bxor(r, m)
                                        r = bit32.band(r_140 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(bp_6), 5, 248602996, "table") and (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_137 = bit32.bxor(r, j)
                                        r = bit32.band(r_137 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_138 = bit32.bxor(r, m)
                                        r = bit32.band(r_138 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(bp_6.Unload), 8, 2851454103, "function")
                                assert(U_1, "Namespace is occupied")
                                bp_6.Unload()
                                assert(bb[c] == nil, "Previous instance did not release its namespace")
                            end
                            br = {}
                            bE = { State = {}, Unloaded = false }
                            bE.Track = function(c)
                                assert((function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_135 = bit32.bxor(r, j)
                                        r = bit32.band(r_135 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_136 = bit32.bxor(r, m)
                                        r = bit32.band(r_136 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(type(c), 8, 2851454103, "function"), "Cleanup must be callable")
                                if bE.Unloaded then
                                    c()
                                else
                                    table.insert(br, c)
                                end
                                return c
                            end
                            bE.Unload = function()
                                local bc_1
                                local ao_1
                                if bE.Unloaded then
                                    return
                                end
                                bE.Unloaded = true
                                local bs = {}
                                local J = #br
                                local a4 = -1
                                while true do
                                    local aQ = if false and J <= 1 or true and J >= 1 then 1 else 0
                                    local aj = 1486 * aQ + 3934 * (1 - aQ)
                                    local aU = 1699 * aQ + 2942 * (1 - aQ)
                                    if (aj * 938 + aU * 1929 + aj * aU) % 16777213 == 7195953 then
                                        local a7 = J
                                        local aq_1 = table.remove(br, a7)
                                        ao_1, bc_1 = pcall(aq_1)
                                        if not ao_1 then
                                            table.insert(bs, tostring(bc_1))
                                        end
                                        J += a4
                                        continue
                                    end
                                    break
                                end
                                table.clear(bE.State)
                                if #bs > 0 then
                                    local m1 = table.concat(bs, "; ")
                                    error("Cleanup incomplete: " .. m1, 0)
                                end
                                if bb[c] == bE then
                                    bb[c] = nil
                                end
                            end
                            bb[c] = bE
                            return bE
                        end
                        a1 = function(c, e)
                            local bz
                            local aZ = 0
                            while true do
                                aZ += 6941
                                if aZ < 6946 then
                                    if aZ < 6941 then
                                        break
                                    elseif aZ < 6943 then
                                        if aZ < 6942 then
                                            bz = ((function(e, t, c, o)
                                                if type(e) ~= "string" then
                                                    return false
                                                end
                                                if #e ~= t then
                                                    return false
                                                end
                                                local r = 5381
                                                local s = buffer.fromstring(e)
                                                local k = 0
                                                while k <= t - 4 do
                                                    local j = buffer.readu32(s, k)
                                                    local r_133 = bit32.bxor(r, j)
                                                    r = bit32.band(r_133 * 33, 4294967295)
                                                    k = k + 4
                                                end
                                                while k < t do
                                                    local m = buffer.readu8(s, k)
                                                    local r_134 = bit32.bxor(r, m)
                                                    r = bit32.band(r_134 * 33, 4294967295)
                                                    k = k + 1
                                                end
                                                if r ~= c then
                                                    return false
                                                end
                                                return e == o
                                            end)(type(c), 5, 248602996, "table"))
                                            aZ = if bz then 3 else 4
                                        else
                                            break
                                        end
                                    elseif aZ < 6944 then
                                        assert(bz, "UI library required")
                                        assert((function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_131 = bit32.bxor(r, j)
                                                r = bit32.band(r_131 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_132 = bit32.bxor(r, m)
                                                r = bit32.band(r_132 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(e.Unload), 8, 2851454103, "function"), "UI unload required")
                                        c.Track(function()
                                            if not e.Unloaded then
                                                e.Unload(e)
                                            end
                                        end)
                                        e:OnUnload(function()
                                            c.Unload()
                                        end)
                                        aZ = 1
                                    elseif aZ < 6945 then
                                        bz = (function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_129 = bit32.bxor(r, j)
                                                r = bit32.band(r_129 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_130 = bit32.bxor(r, m)
                                                r = bit32.band(r_130 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(c.Track), 8, 2851454103, "function")
                                        aZ = 4
                                    elseif aZ == 6945 then
                                        assert(bz, "FeatureAPI required")
                                        bz = ((function(e, t, c, o)
                                            if type(e) ~= "string" then
                                                return false
                                            end
                                            if #e ~= t then
                                                return false
                                            end
                                            local r = 5381
                                            local s = buffer.fromstring(e)
                                            local k = 0
                                            while k <= t - 4 do
                                                local j = buffer.readu32(s, k)
                                                local r_127 = bit32.bxor(r, j)
                                                r = bit32.band(r_127 * 33, 4294967295)
                                                k = k + 4
                                            end
                                            while k < t do
                                                local m = buffer.readu8(s, k)
                                                local r_128 = bit32.bxor(r, m)
                                                r = bit32.band(r_128 * 33, 4294967295)
                                                k = k + 1
                                            end
                                            if r ~= c then
                                                return false
                                            end
                                            return e == o
                                        end)(type(e), 5, 248602996, "table"))
                                        aZ = if bz then 5 else 2
                                    else
                                        aZ = 8185
                                        continue
                                    end
                                elseif aZ < 12946 then
                                    if aZ < 10876 then
                                        if aZ < 8185 then
                                            if aZ == 6946 then
                                                bz = (function(e, t, c, o)
                                                    if type(e) ~= "string" then
                                                        return false
                                                    end
                                                    if #e ~= t then
                                                        return false
                                                    end
                                                    local r = 5381
                                                    local s = buffer.fromstring(e)
                                                    local k = 0
                                                    while k <= t - 4 do
                                                        local j = buffer.readu32(s, k)
                                                        local r_125 = bit32.bxor(r, j)
                                                        r = bit32.band(r_125 * 33, 4294967295)
                                                        k = k + 4
                                                    end
                                                    while k < t do
                                                        local m = buffer.readu8(s, k)
                                                        local r_126 = bit32.bxor(r, m)
                                                        r = bit32.band(r_126 * 33, 4294967295)
                                                        k = k + 1
                                                    end
                                                    if r ~= c then
                                                        return false
                                                    end
                                                    return e == o
                                                end)(type(e.OnUnload), 8, 2851454103, "function")
                                                aZ = 2
                                            else
                                                aZ = 6943
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
                        aj = aV("OuroborosBreakAndStealAnEgg")
                        ac = aj.State
                        a3 = 116
                    else
                        a3 = 9895
                        continue
                    end
                elseif a3 < 10020 then
                    if a3 < 10019 then
                        if a3 == 10018 then
                            aj = nil
                            ac = nil
                            aY = nil
                            az = nil
                            at = nil
                            aX = nil
                            ZonesConfig = nil
                            a0 = nil
                            PickaxeConfig = nil
                            R = nil
                            TreadmillUpgradeConfig = nil
                            B = nil
                            TrailsConfig = nil
                            aZ = nil
                            a_ = nil
                            EggHitRequest = nil
                            PetsInventoryRemote = nil
                            TrailShopRequest = nil
                            PickaxeShopRequest = nil
                            UpgradePlotRequest = nil
                            UpgradeTreadmillRequest = nil
                            S = nil
                            Q = nil
                            aV = nil
                            a1 = nil
                            aW = nil
                            H = nil
                            aT = nil
                            a3 = 147
                        else
                            a3 = 9870
                            continue
                        end
                    elseif a3 == 10019 then
                        aY = Q:WaitForChild("IndexRemote", 30)
                        a3 = 102
                    else
                        a3 = 10090
                        continue
                    end
                elseif a3 < 10021 then
                    if a3 == 10020 then
                        am = fn499
                        T = fns.fn330
                        a3 = 100
                    else
                        a3 = 9958
                        continue
                    end
                elseif a3 < 10022 then
                    if a3 == 10021 then
                        ar = aV
                        aV = PickaxeConfig.ToolName
                        a8 = if aV then 1 else 0
                        local m6 = 1 - a8
                        a6 = 3008 * a8 + 2538 * m6
                        m6 = 1 - a8
                        a7 = 3374 * a8 + 3810 * m6
                        m6 = 16777213
                        a3 = if (a6 * 760 + a7 * 115 + a6 * a7) % m6 == 12823082 then 37 else 241
                    else
                        a3 = 9872
                        continue
                    end
                else
                    au = "https://ouroboros-hub-rbx.web.app/"
                    a3 = 233
                end
            elseif a3 < 10032 then
                if a3 < 10027 then
                    if a3 < 10025 then
                        if a3 < 10024 then
                            aF = {
                                WalkSpeedEnabled = false,
                                WalkSpeed = 32,
                                InfJump = false,
                                NoClip = false,
                                Fly = false,
                                FlySpeed = 60,
                                InstantPP = false,
                                WalkSnapshots = {},
                                NoClipSnapshots = {},
                                FlySnap = nil,
                                InfJumpConn = nil,
                                NoClipConn = nil,
                                FlyConn = nil,
                                InstantConn = nil,
                                InstantSnapshots = {}
                            }
                            a3 = 114
                        else
                            w = fn1076
                            a3 = 229
                        end
                    elseif a3 < 10026 then
                        aT = fns.fn91
                        H = fns.fn56
                        a3 = 66
                    elseif a3 == 10026 then
                        a3 = 264
                    else
                        a3 = 9894
                        continue
                    end
                elseif a3 < 10029 then
                    if a3 < 10028 then
                        if a3 == 10027 then
                            aW = aV
                            a8 = if aW then 1 else 0
                            local na = 1 - a8
                            a6 = 744 * a8 + 706 * na
                            na = 1 - a8
                            a7 = 3552 * a8 + 2084 * na
                            na = 16777213
                            a3 = if (a6 * 656 + a7 * 3370 + a6 * a7) % na == 15100992 then 189 else 79
                        else
                            a3 = 10018
                            continue
                        end
                    elseif a3 == 10028 then
                        K = {
                            AntiAfk = true,
                            NoGameplayPaused = true,
                            AutoReconnect = false,
                            Disable3D = false,
                            FpsBoost = false,
                            AfkConn = nil,
                            AfkTask = nil,
                            AfkCount = 0,
                            ReconnectConns = {},
                            FpsSnapshots = {},
                            FpsConn = nil
                        }
                        a3 = 156
                    else
                        a3 = 9889
                        continue
                    end
                elseif a3 < 10030 then
                    a3 = 21
                elseif a3 < 10031 then
                    a3 = 26
                else
                    E = {}
                    a3 = 167
                end
            elseif a3 < 10036 then
                if a3 < 10034 then
                    if a3 < 10033 then
                        bK_15 = if Toggles.HideUIOnStart.Value then 1 else 0
                        bH = 2600 * bK_15 + 315 * (1 - bK_15)
                        a3 = 82
                    else
                        aV = PetsInventoryRemote
                        a3 = 201
                    end
                elseif a3 < 10035 then
                    if a3 == 10034 then
                        aj.Track(fn1027)
                        a3 = 96
                    else
                        a3 = 10067
                        continue
                    end
                else
                    aZ = {
                        NoClip = false,
                        FlySnap = nil,
                        WalkSnapshots = {},
                        NoClipConn = nil,
                        InstantPP = false,
                        InstantConn = nil,
                        WalkSpeedEnabled = false,
                        NoClipSnapshots = {},
                        InfJump = false,
                        InstantSnapshots = {},
                        FlySpeed = 60,
                        FlyConn = nil,
                        WalkSpeed = 32,
                        Fly = false,
                        InfJumpConn = nil
                    }
                    a3 = 114
                end
            elseif a3 < 10038 then
                if a3 < 10037 then
                    a3 = if a_.Extras[1] ~= nil then 190 else 240
                elseif a3 == 10037 then
                    y, aR, aV = nil, nil, nil
                    a3 = 192
                else
                    a3 = 10102
                    continue
                end
            elseif a3 < 10039 then
                ac.Enabled = {
                    UpgradeTreadmill = false,
                    PickUpBank = false,
                    UpgradePen = false,
                    BuyPickaxes = false,
                    Break = false,
                    GuardESP = false,
                    EquipBest = false,
                    ClaimIndex = false,
                    EggESP = false,
                    BuyTrails = false,
                    Treadmill = false
                }
                ac.BreakRarityFilter = {}
                ac.BreakZoneFilter = {}
                ac.PickUpRarityFilter = {}
                ac.PickUpAnimalFilter = {}
                ac.EggEspRarityFilter = {}
                ac.GuardEspZoneFilter = {}
                a3 = 242
            elseif a3 < 10040 then
                local ng = PetsInventoryRemote
                aY = ng:WaitForChild("PetsInventoryRemote", 30)
                a3 = 139
            else
                a3 = 232
            end
        elseif a3 < 10058 then
            if a3 < 10049 then
                if a3 < 10045 then
                    if a3 < 10043 then
                        if a3 < 10042 then
                            if a3 == 10041 then
                                W = fn789
                                ak = fn955
                                I = fn1282
                                a3 = 42
                            else
                                a3 = 10116
                                continue
                            end
                        else
                            assert(aX, "Shared folder missing")
                            ZonesConfig = require(aX:WaitForChild("ZonesConfig"))
                            a3 = 205
                        end
                    elseif a3 < 10044 then
                        a3 = 228
                    elseif a3 == 10044 then
                        aB = nil
                        a3 = 202
                    else
                        a3 = 9893
                        continue
                    end
                elseif a3 < 10047 then
                    if a3 < 10046 then
                        J = fn500
                        a3 = 258
                    else
                        aV = aW
                        a8 = if aV then 1 else 0
                        local nk = 1 - a8
                        a6 = 1943 * a8 + 619 * nk
                        nk = 1 - a8
                        a7 = 315 * a8 + 1301 * nk
                        nk = 16777213
                        a3 = if (a6 * 834 + a7 * 2277 + a6 * a7) % nk == 2949762 then 25 else 157
                    end
                elseif a3 < 10048 then
                    if a3 == 10047 then
                        PetsInventoryRemote = aY:WaitForChild("PetsInventoryRemote", 30)
                        a3 = 139
                    else
                        a3 = 9966
                        continue
                    end
                elseif a3 == 10048 then
                    aV = {}
                    aK = {}
                    aE = {}
                    a3 = 199
                else
                    a3 = 9886
                    continue
                end
            elseif a3 < 10053 then
                if a3 < 10051 then
                    if a3 < 10050 then
                        a3 = if (function(j, q)
                            if type(j) ~= "number" then
                                return false
                            end
                            if j % 1 ~= 0 then
                                return false
                            end
                            local s = j < -2147483648
                            if s then
                            else
                                s = j > 2147483647
                            end
                            if s then
                                return false
                            end
                            local o_13 = bit32.bxor(j, 1540483477)
                            local o_14 = bit32.band(o_13 * 403 + bit32.lshift(o_13, 24), 4294967295)
                            local o_15 = bit32.bxor(o_14, bit32.rshift(o_14, 13))
                            return o_15 == q
                        end)(#X, 544454170) then 248 else 120
                    else
                        a3 = 203
                    end
                elseif a3 < 10052 then
                    if a3 == 10051 then
                        local nm = UpgradePlotRequest
                        aY = nm:WaitForChild("UpgradePlotRequest", 30)
                        a3 = 127
                    else
                        a3 = 9884
                        continue
                    end
                elseif a3 == 10052 then
                    aP = fn416
                    an = fns.fn175
                    a3 = 180
                else
                    a3 = 10089
                    continue
                end
            elseif a3 < 10055 then
                if a3 < 10054 then
                    if a3 == 10053 then
                        table.sort(E)
                        a3 = 174
                    else
                        a3 = 9898
                        continue
                    end
                elseif a3 == 10054 then
                    B = S:FindFirstChild(aY.UnlockRemote)
                    a3 = 125
                else
                    a3 = 9919
                    continue
                end
            elseif a3 < 10056 then
                if a3 == 10055 then
                    x = fn885
                    U = function(o)
                        local a8 = if not (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_123 = bit32.bxor(r, j)
                                r = bit32.band(r_123 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_124 = bit32.bxor(r, m)
                                r = bit32.band(r_124 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(typeof(o), 7, 3733919613, "Vector3") then 1 else 0
                        local a2 = 2853 * a8 + 796 * (1 - a8)
                        local aw = 1545 * a8 + 1212 * (1 - a8)
                        if (a2 * 1086 + aw * 217 + a2 * aw) % 16777213 == 7841508 then
                            return
                        end
                        pcall(function()
                            if H(aL.RequestStreamAroundAsync) then
                                task.defer(function()
                                    pcall(function()
                                        aL.RequestStreamAroundAsync(aL, o)
                                    end)
                                end)
                            end
                        end)
                    end
                    a3 = 84
                else
                    a3 = 13010
                    continue
                end
            elseif a3 < 10057 then
                if a3 == 10056 then
                    ac.Enabled = {
                        Break = false,
                        PickUpBank = false,
                        BuyTrails = false,
                        EquipBest = false,
                        UpgradePen = false,
                        UpgradeTreadmill = false,
                        Treadmill = false,
                        BuyPickaxes = false,
                        ClaimIndex = false,
                        EggESP = false,
                        GuardESP = false
                    }
                    ac.BreakRarityFilter = {}
                    ac.BreakZoneFilter = {}
                    ac.PickUpRarityFilter = {}
                    ac.PickUpAnimalFilter = {}
                    ac.EggEspRarityFilter = {}
                    ac.GuardEspZoneFilter = {}
                    a3 = 242
                else
                    a3 = 10119
                    continue
                end
            else
                bK_11 = fn748
                a3 = 48
            end
        elseif a3 < 10067 then
            if a3 < 10062 then
                if a3 < 10060 then
                    if a3 < 10059 then
                        bK_8 = fn615
                        bK_16 = fn1002
                        bK_14 = function()
                            local D = not aT() or not ac.Enabled.ClaimIndex
                            if D then
                                return
                            end
                            if os.clock() - ac.LastClaimIndexAt < 2 then
                                return
                            end
                            pcall(function()
                                Q.FireServer(Q, "Get", nil)
                            end)
                            task.wait(0.35)
                            local D_5 = not aT() or not ac.Enabled.ClaimIndex
                            if D_5 then
                                return
                            end
                            local D_6 = false
                            local IndexReady = ac.IndexReady
                            for k2, v in pairs(IndexReady) do
                                local bu = v
                                local aq = k2
                                if (function(e, t, c, o)
                                    if type(e) ~= "string" then
                                        return false
                                    end
                                    if #e ~= t then
                                        return false
                                    end
                                    local r = 5381
                                    local s = buffer.fromstring(e)
                                    local k = 0
                                    while k <= t - 4 do
                                        local j = buffer.readu32(s, k)
                                        local r_121 = bit32.bxor(r, j)
                                        r = bit32.band(r_121 * 33, 4294967295)
                                        k = k + 4
                                    end
                                    while k < t do
                                        local m = buffer.readu8(s, k)
                                        local r_122 = bit32.bxor(r, m)
                                        r = bit32.band(r_122 * 33, 4294967295)
                                        k = k + 1
                                    end
                                    if r ~= c then
                                        return false
                                    end
                                    return e == o
                                end)(bu, 5, 41870606, "Ready") then
                                    local bm = pcall(function()
                                        Q.FireServer(Q, "Claim", aq)
                                    end)
                                    if bm then
                                        D_6 = true
                                    end
                                end
                            end
                            if D_6 then
                                ac.LastClaimIndexAt = os.clock()
                            else
                                ac.LastClaimIndexAt = os.clock()
                            end
                        end
                        a3 = 7
                    elseif a3 == 10059 then
                        aW = Q
                        a3 = 79
                    else
                        a3 = 10017
                        continue
                    end
                elseif a3 < 10061 then
                    aV(a_.Extras)
                    a3 = 58
                elseif a3 == 10061 then
                    bK_21 = fns.fn314
                    af = fn821
                    C = fn1176
                    a3 = 173
                else
                    a3 = 10064
                    continue
                end
            elseif a3 < 10064 then
                if a3 < 10063 then
                    y = {}
                    aR = fn601
                    aV = fn1215
                    a3 = 90
                elseif a3 == 10063 then
                    getgenv().gethui = bK_3
                    a3 = 148
                else
                    a3 = 9959
                    continue
                end
            elseif a3 < 10065 then
                if a3 == 10064 then
                    a3 = 239
                else
                    a3 = 9930
                    continue
                end
            elseif a3 < 10066 then
                if a3 == 10065 then
                    local RarityOrder = aZ.RarityOrder
                    for i, v in ipairs(RarityOrder) do
                        if (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_119 = bit32.bxor(r, j)
                                r = bit32.band(r_119 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_120 = bit32.bxor(r, m)
                                r = bit32.band(r_120 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(type(v), 6, 2175009567, "string") then
                            table.insert(X, v)
                        end
                    end
                    a3 = 179
                else
                    a3 = 10091
                    continue
                end
            else
                a1(aj, z)
                local nL = { { Text = ag, Copyable = true }, "|", O, "|", a2 }
                local nM = { TabSwitch = true }
                local nN = "Ouroboros"
                local nO = 132608042600488
                local nP = "Right"
                local nQ = 0
                local nR = "bottom"
                aW = z:CreateWindow({
                    Title = nN,
                    Font = Enum.Font.BuilderSans,
                    Footer = nL,
                    Icon = nO,
                    NotifySide = nP,
                    ShowCustomCursor = false,
                    CornerRadius = nQ,
                    SidebarCompacted = true,
                    TabSwipeFrom = nR,
                    Animations = nM
                })
                aq = {}
                aq.Info = aW:AddTab("Info", "info")
                aq.Main = aW:AddTab("Main", "gamepad-2")
                aq.Visuals = aW:AddTab("Visuals", "eye")
                aq.Player = aW:AddTab("Player", "person-standing")
                aq.Settings = aW:AddTab("Settings", "settings")
                ad = fn697
                a3 = 221
            end
        elseif a3 < 10071 then
            if a3 < 10069 then
                if a3 < 10068 then
                    Y = fn780
                    aO = fn744
                    aG = fn1092
                    P = fn944
                    a3 = 237
                elseif a3 == 10068 then
                    PickaxeConfig = require(aX:WaitForChild("PickaxeConfig"))
                    a3 = 99
                else
                    a3 = 9953
                    continue
                end
            elseif a3 < 10070 then
                a3 = 65
            else
                S = aY:FindFirstChild(B.UnlockRemote)
                a3 = 125
            end
        elseif a3 < 10073 then
            if a3 < 10072 then
                assert(aV, "Core remotes missing")
                aV = TrailShopRequest
                a3 = if aV then 78 else 113
            elseif a3 == 10072 then
                aB = {
                    Common = Color3.fromRGB(180, 180, 180),
                    Uncommon = Color3.fromRGB(80, 200, 80),
                    Rare = Color3.fromRGB(70, 140, 255),
                    Epic = Color3.fromRGB(180, 70, 255),
                    Legendary = Color3.fromRGB(255, 180, 40),
                    Mythic = Color3.fromRGB(255, 70, 120),
                    Divine = Color3.fromRGB(255, 240, 140),
                    Cosmic = Color3.fromRGB(120, 220, 255),
                    Secret = Color3.fromRGB(40, 40, 40),
                    Celestial = Color3.fromRGB(255, 255, 255)
                }
                a3 = 129
            else
                a3 = 10027
                continue
            end
        elseif a3 < 10074 then
            aw = fn500
            a3 = 258
        elseif a3 < 10075 then
            local nU = UpgradeTreadmillRequest
            aY = nU:WaitForChild("UpgradeTreadmillRequest", 30)
            a3 = 140
        else
            a3 = 4
        end
    elseif a3 < 10104 then
        if a3 < 10093 then
            if a3 < 10084 then
                if a3 < 10080 then
                    if a3 < 10078 then
                        if a3 < 10077 then
                            aO = fn780
                            Y = fn744
                            P = fn1092
                            aG = fn944
                            a3 = 237
                        elseif a3 == 10077 then
                            a3 = 217
                        else
                            a3 = 10064
                            continue
                        end
                    elseif a3 < 10079 then
                        a_ = require(TrailsConfig:WaitForChild("TrailsConfig"))
                        aX = require(TrailsConfig:WaitForChild("IndexConfig"))
                        aZ = require(TrailsConfig:WaitForChild("ZoneAnimalsConfig"))
                        a3 = 234
                    else
                        J = fn1211
                        aA = fns.fn129
                        Z = fn1100
                        D = fn1160
                        a3 = 39
                    end
                elseif a3 < 10082 then
                    if a3 < 10081 then
                        if a3 == 10080 then
                            aX = "v0.6"
                            a3 = 62
                        else
                            a3 = 10081
                            continue
                        end
                    else
                        aY = aX:WaitForChild("Shared", 30)
                        a3 = 53
                    end
                elseif a3 < 10083 then
                    if a3 == 10082 then
                        aN = "https://rscripts.net/@Ouroboros"
                        a3 = 215
                    else
                        a3 = 9922
                        continue
                    end
                elseif a3 == 10083 then
                    a3 = 145
                else
                    a3 = 10008
                    continue
                end
            elseif a3 < 10088 then
                if a3 < 10086 then
                    if a3 < 10085 then
                        ad = fns.fn11
                        a3 = 249
                    elseif a3 == 10085 then
                        a3 = 126
                    else
                        a3 = 9998
                        continue
                    end
                elseif a3 < 10087 then
                    if a3 == 10086 then
                        O(a1, aj)
                        local n_ = { "|", aW, z, "|", { Text = a2, Copyable = true } }
                        local n0 = { TabSwitch = true }
                        local n1 = 0
                        local n2 = "bottom"
                        local n3 = "Ouroboros"
                        local n4 = "Right"
                        local n5 = 132608042600488
                        ad = aj:CreateWindow({
                            CornerRadius = n1,
                            ShowCustomCursor = false,
                            Footer = n_,
                            TabSwipeFrom = n2,
                            Title = n3,
                            Animations = n0,
                            NotifySide = n4,
                            SidebarCompacted = true,
                            Icon = n5,
                            Font = Enum.Font.BuilderSans
                        })
                        ag = {}
                        ag.Info = ad:AddTab("Info", "info")
                        ag.Main = ad:AddTab("Main", "gamepad-2")
                        ag.Visuals = ad:AddTab("Visuals", "eye")
                        ag.Player = ad:AddTab("Player", "person-standing")
                        ag.Settings = ad:AddTab("Settings", "settings")
                        aq = fn697
                        a3 = 221
                    else
                        a3 = 1507
                        continue
                    end
                else
                    bK_6 = "https://rscripts.net/@Ouroboros"
                    a3 = 215
                end
            elseif a3 < 10090 then
                if a3 < 10089 then
                    if a3 == 10088 then
                        bK_23 = function()
                            local aW
                            local E = 3
                            while true do
                                E += 6661
                                if E < 6661 then
                                    break
                                elseif E < 7269 then
                                    if E < 6663 then
                                        if E < 6662 then
                                            pcall(function()
                                                aQ.LoadDefault(aQ)
                                            end)
                                            pcall(function()
                                                aJ.LoadAutoloadConfig(aJ)
                                            end)
                                            E = 2
                                        elseif E == 6662 then
                                            aW:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                                            aW:AddButton({
                                                Text = "Export Config to Clipboard",
                                                Func = function()
                                                    local br_3
                                                    local B_2
                                                    B_2, br_3 = pcall(function()
                                                        if H(aJ.ExportConfig) then
                                                            return aJ:ExportConfig()
                                                        end
                                                        error("ExportConfig unavailable")
                                                    end)
                                                    local bm = B_2 and (function(e, t, c, o)
                                                        if type(e) ~= "string" then
                                                            return false
                                                        end
                                                        if #e ~= t then
                                                            return false
                                                        end
                                                        local r = 5381
                                                        local s = buffer.fromstring(e)
                                                        local k = 0
                                                        while k <= t - 4 do
                                                            local j = buffer.readu32(s, k)
                                                            local r_117 = bit32.bxor(r, j)
                                                            r = bit32.band(r_117 * 33, 4294967295)
                                                            k = k + 4
                                                        end
                                                        while k < t do
                                                            local m = buffer.readu8(s, k)
                                                            local r_118 = bit32.bxor(r, m)
                                                            r = bit32.band(r_118 * 33, 4294967295)
                                                            k = k + 1
                                                        end
                                                        if r ~= c then
                                                            return false
                                                        end
                                                        return e == o
                                                    end)(type(br_3), 6, 2175009567, "string")
                                                    if bm then
                                                        ad(br_3, "Copied config")
                                                    else
                                                        z.Notify(z, "Export unavailable", 3)
                                                    end
                                                end
                                            })
                                            aW:AddButton({
                                                Text = "Import Config from Clipboard Text",
                                                Func = function()
                                                    local a1
                                                    a1 = ay.SaveManager_ImportSource and ay.SaveManager_ImportSource.Value or ""
                                                    if (function(e, t, c, o)
                                                        if type(e) ~= "string" then
                                                            return false
                                                        end
                                                        if #e ~= t then
                                                            return false
                                                        end
                                                        local r = 5381
                                                        local s = buffer.fromstring(e)
                                                        local k = 0
                                                        while k <= t - 4 do
                                                            local j = buffer.readu32(s, k)
                                                            local r_115 = bit32.bxor(r, j)
                                                            r = bit32.band(r_115 * 33, 4294967295)
                                                            k = k + 4
                                                        end
                                                        while k < t do
                                                            local m = buffer.readu8(s, k)
                                                            local r_116 = bit32.bxor(r, m)
                                                            r = bit32.band(r_116 * 33, 4294967295)
                                                            k = k + 1
                                                        end
                                                        if r ~= c then
                                                            return false
                                                        end
                                                        return e == o
                                                    end)(a1, 0, 5381, "") then
                                                        z.Notify(z, "Paste a config first", 3)
                                                        return
                                                    end
                                                    local Y_4 = pcall(function()
                                                        local aN = 6
                                                        while true do
                                                            aN += 14855
                                                            if aN < 14856 then
                                                                if aN < 6928 then
                                                                    break
                                                                elseif aN < 12403 then
                                                                    break
                                                                elseif aN < 14855 then
                                                                    break
                                                                elseif aN == 14855 then
                                                                    aN = 3
                                                                else
                                                                    aN = 14858
                                                                    continue
                                                                end
                                                            elseif aN < 14860 then
                                                                if aN < 14858 then
                                                                    if aN < 14857 then
                                                                        error("Import unavailable")
                                                                        aN = 4
                                                                    else
                                                                        aJ.LoadConfigFromJSON(aJ, a1)
                                                                        aN = 4
                                                                    end
                                                                elseif aN < 14859 then
                                                                    break
                                                                elseif aN == 14859 then
                                                                    aN = 0
                                                                else
                                                                    aN = 481
                                                                    continue
                                                                end
                                                            elseif aN < 14862 then
                                                                if aN < 14861 then
                                                                    if aN == 14860 then
                                                                        aJ.ImportConfig(aJ, a1)
                                                                        aN = 0
                                                                    else
                                                                        aN = 2863
                                                                        continue
                                                                    end
                                                                elseif aN == 14861 then
                                                                    aN = if H(aJ.ImportConfig) then 5 else 7
                                                                else
                                                                    aN = 14858
                                                                    continue
                                                                end
                                                            elseif aN < 15654 then
                                                                if aN == 14862 then
                                                                    aN = if H(aJ.LoadConfigFromJSON) then 2 else 1
                                                                else
                                                                    break
                                                                end
                                                            else
                                                                break
                                                            end
                                                        end
                                                    end)
                                                    if Y_4 then
                                                        local SaveManager_ImportSource = ay.SaveManager_ImportSource
                                                        SaveManager_ImportSource.SetValue(SaveManager_ImportSource, "")
                                                        z.Notify(z, "Imported config", 3)
                                                    else
                                                        z.Notify(z, "Import failed", 3)
                                                    end
                                                end
                                            })
                                            E = 0
                                        else
                                            E = 13269
                                            continue
                                        end
                                    elseif E < 6664 then
                                        break
                                    elseif E == 6664 then
                                        au(aq.Settings)
                                        local Settings2 = aq.Settings
                                        local MenuGroup = Settings2:AddLeftGroupbox("Menu", "settings")
                                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                        MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
                                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                        MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
                                        MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
                                        MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
                                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                        z.ToggleKeybind = ay.MenuKeybind
                                        local Settings = aq.Settings
                                        local ScriptGroup = Settings:AddLeftGroupbox("Script", "scroll-text")
                                        ScriptGroup:AddButton({
                                            Text = "Unload Script",
                                            Func = function()
                                                z.Unload(z)
                                            end
                                        })
                                        Toggles.AntiAfk:OnChanged(function(e)
                                            aj.SetAntiAfk(e)
                                        end)
                                        Toggles.NoGameplayPaused:OnChanged(function(m)
                                            aj.SetNoGameplayPaused(m)
                                        end)
                                        Toggles.AutoReconnect:OnChanged(function(o)
                                            aj.SetAutoReconnect(o)
                                        end)
                                        Toggles.Disable3DRendering:OnChanged(function(c)
                                            aj.SetDisable3D(c)
                                        end)
                                        Toggles.FPSBoost:OnChanged(function(f)
                                            aj.SetFpsBoost(f)
                                        end)
                                        aQ.SetLibrary(aQ, z)
                                        aQ.SetFolder(aQ, "MyScriptHub")
                                        aQ.SaveDefault(aQ, "Evil Hello Kitty")
                                        aQ:ApplyToTab(aq.Settings)
                                        aJ.SetLibrary(aJ, z)
                                        aJ.IgnoreThemeSettings(aJ)
                                        aJ:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                        aJ.SetFolder(aJ, "OuroborosHub/BreakAndStealAnEgg")
                                        aW = aJ:BuildConfigSection(aq.Settings)
                                        E = if aW then 1 else 0
                                    else
                                        E = 6663
                                        continue
                                    end
                                else
                                    break
                                end
                            end
                        end
                        a3 = 194
                    else
                        a3 = 10098
                        continue
                    end
                elseif a3 == 10089 then
                    v = nil
                    aL = nil
                    bK_3 = nil
                    a3 = 51
                else
                    a3 = 9986
                    continue
                end
            elseif a3 < 10091 then
                aY = PickaxeShopRequest:WaitForChild("PickaxeShopRequest", 30)
                a3 = 160
            elseif a3 < 10092 then
                a3 = 128
            else
                a3 = 17
            end
        elseif a3 < 10102 then
            if a3 < 10101 then
                if a3 < 10097 then
                    if a3 < 10095 then
                        if a3 < 10094 then
                            if a3 == 10093 then
                                aj.SetBreak = fn688
                                aj.SetPickUpBank = fn802
                                aj.SetBuyTrails = fn1121
                                aj.SetEquipBest = fns.fn324
                                aj.SetUpgradePen = fn611
                                aj.SetUpgradeTreadmill = fn1329
                                aj.SetTreadmill = fn867
                                aj.SetBuyPickaxes = fn888
                                aj.SetClaimIndex = fn1016
                                aj.SetEggESP = fn696
                                aj.SetGuardESP = fn1245
                                aj.SetBreakRarityFilter = fn816
                                aj.SetBreakZoneFilter = fns.fn82
                                aj.SetPickUpRarityFilter = fn751
                                aj.SetPickUpAnimalFilter = fn662
                                aj.SetEggEspRarityFilter = fn989
                                aj.SetGuardEspZoneFilter = fn1173
                                aj.TeleportToBase = fns.fn141
                                aj.Track(fn429)
                                ag = "https://discord.gg/synapsex"
                                a3 = 207
                            else
                                a3 = 9903
                                continue
                            end
                        else
                            TrailShopRequest = aY:WaitForChild("TrailShopRequest", 30)
                            a3 = 253
                        end
                    elseif a3 < 10096 then
                        H = fns.fn91
                        aT = fns.fn56
                        a3 = 66
                    else
                        A = {}
                        a3 = 87
                    end
                elseif a3 < 10099 then
                    if a3 < 10098 then
                        bK_11 = function()
                            local aW
                            local E = 3
                            while true do
                                E += 6661
                                if E < 6661 then
                                    break
                                elseif E < 7269 then
                                    if E < 6663 then
                                        if E < 6662 then
                                            pcall(function()
                                                aQ.LoadDefault(aQ)
                                            end)
                                            pcall(function()
                                                aJ.LoadAutoloadConfig(aJ)
                                            end)
                                            E = 2
                                        elseif E == 6662 then
                                            aW:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
                                            aW:AddButton({
                                                Text = "Export Config to Clipboard",
                                                Func = function()
                                                    local br_2
                                                    local B_1
                                                    B_1, br_2 = pcall(function()
                                                        if H(aJ.ExportConfig) then
                                                            return aJ:ExportConfig()
                                                        end
                                                        error("ExportConfig unavailable")
                                                    end)
                                                    local bm = B_1 and (function(e, t, c, o)
                                                        if type(e) ~= "string" then
                                                            return false
                                                        end
                                                        if #e ~= t then
                                                            return false
                                                        end
                                                        local r = 5381
                                                        local s = buffer.fromstring(e)
                                                        local k = 0
                                                        while k <= t - 4 do
                                                            local j = buffer.readu32(s, k)
                                                            local r_113 = bit32.bxor(r, j)
                                                            r = bit32.band(r_113 * 33, 4294967295)
                                                            k = k + 4
                                                        end
                                                        while k < t do
                                                            local m = buffer.readu8(s, k)
                                                            local r_114 = bit32.bxor(r, m)
                                                            r = bit32.band(r_114 * 33, 4294967295)
                                                            k = k + 1
                                                        end
                                                        if r ~= c then
                                                            return false
                                                        end
                                                        return e == o
                                                    end)(type(br_2), 6, 2175009567, "string")
                                                    if bm then
                                                        ad(br_2, "Copied config")
                                                    else
                                                        z.Notify(z, "Export unavailable", 3)
                                                    end
                                                end
                                            })
                                            aW:AddButton({
                                                Text = "Import Config from Clipboard Text",
                                                Func = function()
                                                    local a1
                                                    a1 = ay.SaveManager_ImportSource and ay.SaveManager_ImportSource.Value or ""
                                                    if (function(e, t, c, o)
                                                        if type(e) ~= "string" then
                                                            return false
                                                        end
                                                        if #e ~= t then
                                                            return false
                                                        end
                                                        local r = 5381
                                                        local s = buffer.fromstring(e)
                                                        local k = 0
                                                        while k <= t - 4 do
                                                            local j = buffer.readu32(s, k)
                                                            local r_111 = bit32.bxor(r, j)
                                                            r = bit32.band(r_111 * 33, 4294967295)
                                                            k = k + 4
                                                        end
                                                        while k < t do
                                                            local m = buffer.readu8(s, k)
                                                            local r_112 = bit32.bxor(r, m)
                                                            r = bit32.band(r_112 * 33, 4294967295)
                                                            k = k + 1
                                                        end
                                                        if r ~= c then
                                                            return false
                                                        end
                                                        return e == o
                                                    end)(a1, 0, 5381, "") then
                                                        z.Notify(z, "Paste a config first", 3)
                                                        return
                                                    end
                                                    local Y_2 = pcall(function()
                                                        local aN = 6
                                                        while true do
                                                            aN += 14855
                                                            if aN < 14856 then
                                                                if aN < 6928 then
                                                                    break
                                                                elseif aN < 12403 then
                                                                    break
                                                                elseif aN < 14855 then
                                                                    break
                                                                elseif aN == 14855 then
                                                                    aN = 3
                                                                else
                                                                    aN = 14858
                                                                    continue
                                                                end
                                                            elseif aN < 14860 then
                                                                if aN < 14858 then
                                                                    if aN < 14857 then
                                                                        error("Import unavailable")
                                                                        aN = 4
                                                                    else
                                                                        aJ.LoadConfigFromJSON(aJ, a1)
                                                                        aN = 4
                                                                    end
                                                                elseif aN < 14859 then
                                                                    break
                                                                elseif aN == 14859 then
                                                                    aN = 0
                                                                else
                                                                    aN = 481
                                                                    continue
                                                                end
                                                            elseif aN < 14862 then
                                                                if aN < 14861 then
                                                                    if aN == 14860 then
                                                                        aJ.ImportConfig(aJ, a1)
                                                                        aN = 0
                                                                    else
                                                                        aN = 2863
                                                                        continue
                                                                    end
                                                                elseif aN == 14861 then
                                                                    aN = if H(aJ.ImportConfig) then 5 else 7
                                                                else
                                                                    aN = 14858
                                                                    continue
                                                                end
                                                            elseif aN < 15654 then
                                                                if aN == 14862 then
                                                                    aN = if H(aJ.LoadConfigFromJSON) then 2 else 1
                                                                else
                                                                    break
                                                                end
                                                            else
                                                                break
                                                            end
                                                        end
                                                    end)
                                                    if Y_2 then
                                                        local SaveManager_ImportSource = ay.SaveManager_ImportSource
                                                        SaveManager_ImportSource.SetValue(SaveManager_ImportSource, "")
                                                        z.Notify(z, "Imported config", 3)
                                                    else
                                                        z.Notify(z, "Import failed", 3)
                                                    end
                                                end
                                            })
                                            E = 0
                                        else
                                            E = 13269
                                            continue
                                        end
                                    elseif E < 6664 then
                                        break
                                    elseif E == 6664 then
                                        au(aq.Settings)
                                        local Settings2 = aq.Settings
                                        local MenuGroup = Settings2:AddLeftGroupbox("Menu", "settings")
                                        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
                                        MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
                                        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
                                        MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
                                        MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
                                        MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
                                        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
                                        z.ToggleKeybind = ay.MenuKeybind
                                        local Settings = aq.Settings
                                        local ScriptGroup = Settings:AddLeftGroupbox("Script", "scroll-text")
                                        ScriptGroup:AddButton({
                                            Text = "Unload Script",
                                            Func = function()
                                                z.Unload(z)
                                            end
                                        })
                                        Toggles.AntiAfk:OnChanged(function(e)
                                            aj.SetAntiAfk(e)
                                        end)
                                        Toggles.NoGameplayPaused:OnChanged(function(m)
                                            aj.SetNoGameplayPaused(m)
                                        end)
                                        Toggles.AutoReconnect:OnChanged(function(o)
                                            aj.SetAutoReconnect(o)
                                        end)
                                        Toggles.Disable3DRendering:OnChanged(function(c)
                                            aj.SetDisable3D(c)
                                        end)
                                        Toggles.FPSBoost:OnChanged(function(f)
                                            aj.SetFpsBoost(f)
                                        end)
                                        aQ.SetLibrary(aQ, z)
                                        aQ.SetFolder(aQ, "MyScriptHub")
                                        aQ.SaveDefault(aQ, "Evil Hello Kitty")
                                        aQ:ApplyToTab(aq.Settings)
                                        aJ.SetLibrary(aJ, z)
                                        aJ.IgnoreThemeSettings(aJ)
                                        aJ:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
                                        aJ.SetFolder(aJ, "OuroborosHub/BreakAndStealAnEgg")
                                        aW = aJ:BuildConfigSection(aq.Settings)
                                        E = if aW then 1 else 0
                                    else
                                        E = 6663
                                        continue
                                    end
                                else
                                    break
                                end
                            end
                        end
                        a3 = 194
                    elseif a3 == 10098 then
                        bK_7 = fns.fn11
                        a3 = 249
                    else
                        a3 = 10042
                        continue
                    end
                elseif a3 < 10100 then
                    if a3 == 10099 then
                        a3 = 153
                    else
                        a3 = 10129
                        continue
                    end
                else
                    z = loadstring(game:HttpGet(aV .. "Library.lua"))()
                    a3 = 222
                end
            else
                break
            end
        elseif a3 < 10103 then
            Toggles, ay = z.Toggles, z.Options
            a3 = 124
        elseif a3 == 10103 then
            a3 = 1
        else
            a3 = 10085
            continue
        end
    elseif a3 < 10122 then
        if a3 < 10113 then
            if a3 < 10108 then
                if a3 < 10106 then
                    if a3 < 10105 then
                        if a3 == 10104 then
                            a3 = 101
                        else
                            a3 = 10018
                            continue
                        end
                    else
                        bK_1 = function()
                            local egg, be, bH
                            local H = 2
                            while true do
                                H += 2943
                                if H < 2960 then
                                    if H < 2950 then
                                        if H < 2945 then
                                            if H < 2943 then
                                                break
                                            elseif H < 2944 then
                                                break
                                            else
                                                be = not ac.Enabled.Break
                                                H = 18
                                            end
                                        elseif H < 2947 then
                                            if H < 2946 then
                                                be = not aT()
                                                H = if be then 18 else 1
                                            elseif H == 2946 then
                                                x(egg.Position)
                                                bH = be.Position - egg.Position
                                                H = if bH.Magnitude < 0.1 then 21 else 10
                                            else
                                                H = 2952
                                                continue
                                            end
                                        elseif H < 2948 then
                                            if H == 2947 then
                                                be = not ac.Enabled.Break
                                                H = 20
                                            else
                                                H = 2970
                                                continue
                                            end
                                        elseif H < 2949 then
                                            return
                                        elseif H == 2949 then
                                            return
                                        else
                                            H = 2955
                                            continue
                                        end
                                    elseif H < 2955 then
                                        if H < 2952 then
                                            if H < 2951 then
                                                return
                                            elseif H == 2951 then
                                                aa()
                                                be = pcall(function()
                                                    EggHitRequest.FireServer(EggHitRequest, egg)
                                                end)
                                                H = if be then 13 else 23
                                            else
                                                H = 2949
                                                continue
                                            end
                                        elseif H < 2953 then
                                            if H == 2952 then
                                                return
                                            end
                                            H = 7723
                                            continue
                                        elseif H < 2954 then
                                            if H == 2953 then
                                                local ov = bH.X
                                                local ow = bH.Z
                                                local ox = 0
                                                local Unit = Vector3.new(ov, ox, ow).Unit
                                                local ow_1 = av * 0.45
                                                local ox_1 = 2
                                                bH = egg.Position + Unit * math.max(ox_1, ow_1) + Vector3.new(0, 3, 0)
                                                U(CFrame.new(bH, egg.Position))
                                                task.wait(0.04)
                                                be = not aT()
                                                H = if be then 20 else 4
                                            else
                                                H = 2960
                                                continue
                                            end
                                        elseif H == 2954 then
                                            bH = (egg.Position - be.Position).Magnitude
                                            H = if bH > av - 0.5 then 3 else 8
                                        else
                                            H = 2691
                                            continue
                                        end
                                    elseif H < 2957 then
                                        if H < 2956 then
                                            H = if os.clock() - ac.LastBreakAt < ar then 14 else 24
                                        else
                                            ac.LastBreakAt = os.clock()
                                            H = 23
                                        end
                                    elseif H < 2958 then
                                        if H == 2957 then
                                            return
                                        end
                                        H = 3387
                                        continue
                                    elseif H < 2959 then
                                        if H == 2958 then
                                            H = 8
                                        else
                                            H = 2964
                                            continue
                                        end
                                    elseif H == 2959 then
                                        local at = if be then 1 else 0
                                        local am = 1161 * at + 2246 * (1 - at)
                                        local bv = 3882 * at + 1790 * (1 - at)
                                        H = if (am * 2206 + bv * 1280 + am * bv) % 16777213 == 12037128 then 27 else 15
                                    else
                                        H = 4380
                                        continue
                                    end
                                elseif H < 2969 then
                                    if H < 2964 then
                                        if H < 2962 then
                                            if H < 2961 then
                                                bH = be[1]
                                                egg = bH.egg
                                                H = if not W(egg) then 6 else 22
                                            else
                                                H = if be then 25 else 19
                                            end
                                        elseif H < 2963 then
                                            if H == 2962 then
                                                H = if aw() then 5 else 12
                                            else
                                                H = 2955
                                                continue
                                            end
                                        else
                                            H = if be then 16 else 26
                                        end
                                    elseif H < 2966 then
                                        if H < 2965 then
                                            bH = Vector3.new(0, 0, 1)
                                            H = 10
                                        else
                                            aa()
                                            be = aS()
                                            H = if not be then 7 else 11
                                        end
                                    elseif H < 2967 then
                                        if H == 2966 then
                                            H = 0
                                        else
                                            H = 2944
                                            continue
                                        end
                                    elseif H < 2968 then
                                        be = P()
                                        H = if (function(j, q)
                                            if type(j) ~= "number" then
                                                return false
                                            end
                                            if j % 1 ~= 0 then
                                                return false
                                            end
                                            local s = j < -2147483648
                                            if s then
                                            else
                                                s = j > 2147483647
                                            end
                                            if s then
                                                return false
                                            end
                                            local o_10 = bit32.bxor(j, 1540483477)
                                            local o_11 = bit32.band(o_10 * 403 + bit32.lshift(o_10, 24), 4294967295)
                                            local o_12 = bit32.bxor(o_11, bit32.rshift(o_11, 13))
                                            return o_12 == q
                                        end)(#be, 544454170) then 9 else 17
                                    elseif H == 2968 then
                                        return
                                    else
                                        H = 2956
                                        continue
                                    end
                                elseif H < 8854 then
                                    if H < 3387 then
                                        if H < 2970 then
                                            if H == 2969 then
                                                be = not W(egg)
                                                H = 16
                                            else
                                                H = 2943
                                                continue
                                            end
                                        elseif H == 2970 then
                                            return
                                        else
                                            H = 2957
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
                        ap = fns.fn247
                        a3 = 257
                    end
                elseif a3 < 10107 then
                    aZ = {
                        AntiAfk = true,
                        AfkTask = nil,
                        FpsBoost = false,
                        FpsSnapshots = {},
                        Disable3D = false,
                        AfkCount = 0,
                        AfkConn = nil,
                        FpsConn = nil,
                        NoGameplayPaused = true,
                        AutoReconnect = false,
                        ReconnectConns = {}
                    }
                    a3 = 156
                else
                    a3 = 235
                end
            elseif a3 < 10110 then
                if a3 < 10109 then
                    if a3 == 10108 then
                        aQ = fn748
                        a3 = 48
                    else
                        a3 = 10027
                        continue
                    end
                elseif a3 == 10109 then
                    aX()
                    aY()
                    aZ()
                    a_()
                    a0()
                    bK_11()
                    bK_23()
                    aj.SetAntiAfk(Toggles.AntiAfk.Value)
                    aj.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
                    a3 = 162
                else
                    a3 = 10008
                    continue
                end
            elseif a3 < 10111 then
                local Extras = a_.Extras
                for k, v in pairs(Extras) do
                    aV(v)
                end
                a3 = 58
            elseif a3 < 10112 then
                if a3 == 10111 then
                    aV = "Pickaxe"
                    a3 = 37
                else
                    a3 = 9996
                    continue
                end
            elseif a3 == 10112 then
                local oH = ipairs
                for k, v in oH(X) do
                    ac.BreakRarityFilter[v] = true
                    ac.PickUpRarityFilter[v] = true
                    ac.EggEspRarityFilter[v] = true
                end
                oH = ipairs
                for k, v in oH(A) do
                    ac.BreakZoneFilter[v] = true
                    ac.GuardEspZoneFilter[v] = true
                end
                oH = ipairs
                for k, v in oH(E) do
                    ac.PickUpAnimalFilter[v] = true
                end
                aS = nil
                ao = nil
                U = nil
                x = nil
                J = nil
                aA = nil
                Z = nil
                D = nil
                am = nil
                T = nil
                aM = nil
                ab = nil
                G = nil
                an = nil
                aP = nil
                aw = nil
                ak = nil
                I = nil
                W = nil
                aH = nil
                M = nil
                aa = nil
                F = nil
                aI = nil
                Y = nil
                aO = nil
                aG = nil
                P = nil
                bK_1 = nil
                ap = nil
                bK_2 = nil
                aU = nil
                bK_10 = nil
                ai = nil
                bK_22 = nil
                bK_5 = nil
                bK_20 = nil
                bK_8 = nil
                bK_16 = nil
                bK_14 = nil
                a3 = 83
            else
                a3 = 9877
                continue
            end
        elseif a3 < 10117 then
            if a3 < 10115 then
                if a3 < 10114 then
                    if a3 == 10113 then
                        aR = {}
                        aV = fn601
                        y = fn1215
                        a3 = 90
                    else
                        a3 = 9943
                        continue
                    end
                else
                    a3 = 230
                end
            elseif a3 < 10116 then
                af = fns.fn314
                C = fn821
                bK_21 = fn1176
                a3 = 173
            elseif a3 == 10116 then
                an = fn416
                aP = fns.fn175
                a3 = 180
            else
                a3 = 9965
                continue
            end
        elseif a3 < 10119 then
            if a3 < 10118 then
                a3 = 223
            elseif a3 == 10118 then
                a3 = 14
            else
                a3 = 10085
                continue
            end
        elseif a3 < 10120 then
            a3 = 88
        elseif a3 < 10121 then
            if a3 == 10120 then
                bK_2 = fns.fn153
                aU = fn1313
                bK_10 = function()
                    local J, a6, bw, ai, bn
                    local H = 6
                    while true do
                        H += 3348
                        if H < 3358 then
                            if H < 3353 then
                                if H < 3350 then
                                    if H < 3349 then
                                        if H == 3348 then
                                            H = 11
                                        else
                                            break
                                        end
                                    elseif H == 3349 then
                                        local U = if a6 then 1 else 0
                                        local bk = 3673 * U + 571 * (1 - U)
                                        local ao = 3298 * U + 1526 * (1 - U)
                                        H = if (bk * 3533 + ao * 3056 + bk * ao) % 16777213 == 1614525 then 3 else 10
                                    else
                                        H = 9236
                                        continue
                                    end
                                elseif H < 3351 then
                                    if H == 3350 then
                                        pcall(function()
                                            local Id = J.Id
                                            local oU = "Equip"
                                            TrailShopRequest:FireServer(oU, Id)
                                        end)
                                        H = 7
                                    else
                                        H = 10026
                                        continue
                                    end
                                elseif H < 3352 then
                                    return
                                else
                                    a6 = not ac.Enabled.BuyTrails
                                    H = 1
                                end
                            elseif H < 3356 then
                                if H < 3354 then
                                    if H == 3353 then
                                        H = if (bw * 1087 + ai * 3175 + bw * ai) % 16777213 == 9201959 then 13 else 9
                                    else
                                        H = 3358
                                        continue
                                    end
                                elseif H < 3355 then
                                    a6 = not aT()
                                    H = if a6 then 1 else 4
                                else
                                    H = 0
                                end
                            elseif H < 3357 then
                                if H == 3356 then
                                    ai = 1569 * bn + 3855 * (1 - bn)
                                    H = 5
                                else
                                    H = 3354
                                    continue
                                end
                            elseif H == 3357 then
                                a6 = aU()
                                local bf = am()
                                J = nil
                                local bz = false
                                local Trails = TrailsConfig.Trails
                                for i, v in ipairs(Trails) do
                                    local C = v
                                    local aK = (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_109 = bit32.bxor(r, j)
                                            r = bit32.band(r_109 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_110 = bit32.bxor(r, m)
                                            r = bit32.band(r_110 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(type(C), 5, 248602996, "table") and (function(e, t, c, o)
                                        if type(e) ~= "string" then
                                            return false
                                        end
                                        if #e ~= t then
                                            return false
                                        end
                                        local r = 5381
                                        local s = buffer.fromstring(e)
                                        local k = 0
                                        while k <= t - 4 do
                                            local j = buffer.readu32(s, k)
                                            local r_107 = bit32.bxor(r, j)
                                            r = bit32.band(r_107 * 33, 4294967295)
                                            k = k + 4
                                        end
                                        while k < t do
                                            local m = buffer.readu8(s, k)
                                            local r_108 = bit32.bxor(r, m)
                                            r = bit32.band(r_108 * 33, 4294967295)
                                            k = k + 1
                                        end
                                        if r ~= c then
                                            return false
                                        end
                                        return e == o
                                    end)(typeof(C.Id), 6, 472614556, "number")
                                    if aK then
                                        if a6[C.Id] then
                                            local aK_1 = J == nil
                                            if not aK_1 then
                                                local a1_1 = tonumber(C.Multiplier) or 0
                                                local au_1 = tonumber(J.Multiplier) or 0
                                                aK_1 = a1_1 > au_1
                                            end
                                            if aK_1 then
                                                J = C
                                            end
                                        else
                                            local aK_2 = tonumber(C.Price) or 0
                                            if bf >= aK_2 then
                                                local aK_3 = pcall(function()
                                                    local Id = C.Id
                                                    local o2 = "Buy"
                                                    TrailShopRequest:FireServer(o2, Id)
                                                end)
                                                if aK_3 then
                                                    bz = true
                                                    a6[C.Id] = true
                                                    bf -= aK_2
                                                    local aK_4 = J == nil
                                                    if not aK_4 then
                                                        local a1_3 = tonumber(C.Multiplier) or 0
                                                        local au_2 = tonumber(J.Multiplier) or 0
                                                        aK_4 = a1_3 > au_2
                                                    end
                                                    if aK_4 then
                                                        J = C
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                                H = if bz then 12 else 0
                            else
                                H = 10026
                                continue
                            end
                        elseif H < 3361 then
                            if H < 3360 then
                                if H < 3359 then
                                    bn = if os.clock() - ac.LastBuyTrailsAt < 1 then 1 else 0
                                    bw = 1589 * bn + 859 * (1 - bn)
                                    H = 8
                                else
                                    break
                                end
                            elseif H == 3360 then
                                ac.LastBuyTrailsAt = os.clock()
                                H = if J then 2 else 7
                            else
                                H = 3356
                                continue
                            end
                        elseif H < 9236 then
                            if H < 5184 then
                                if H == 3361 then
                                    return
                                end
                                break
                            end
                            break
                        else
                            break
                        end
                    end
                end
                ai = fns.fn28
                a3 = 213
            else
                a3 = 9888
                continue
            end
        elseif a3 == 10121 then
            a3 = if getgenv then 193 else 148
        else
            a3 = 9995
            continue
        end
    elseif a3 < 10131 then
        if a3 < 10126 then
            if a3 < 10124 then
                if a3 < 10123 then
                    aM = fn1322
                    ab = fns.fn52
                    G = fns.fn14
                    a3 = 11
                elseif a3 == 10123 then
                    a3 = 5
                else
                    a3 = 10061
                    continue
                end
            elseif a3 < 10125 then
                ak = fn789
                I = fn955
                W = fn1282
                a3 = 42
            else
                B = require(aX:WaitForChild("TreadmillUnlockConfig"))
                a3 = 49
            end
        elseif a3 < 10128 then
            if a3 < 10127 then
                U = fn885
                x = function(o)
                    local a8 = if not (function(e, t, c, o)
                        if type(e) ~= "string" then
                            return false
                        end
                        if #e ~= t then
                            return false
                        end
                        local r = 5381
                        local s = buffer.fromstring(e)
                        local k = 0
                        while k <= t - 4 do
                            local j = buffer.readu32(s, k)
                            local r_105 = bit32.bxor(r, j)
                            r = bit32.band(r_105 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < t do
                            local m = buffer.readu8(s, k)
                            local r_106 = bit32.bxor(r, m)
                            r = bit32.band(r_106 * 33, 4294967295)
                            k = k + 1
                        end
                        if r ~= c then
                            return false
                        end
                        return e == o
                    end)(typeof(o), 7, 3733919613, "Vector3") then 1 else 0
                    local a2 = 2853 * a8 + 796 * (1 - a8)
                    local aw = 1545 * a8 + 1212 * (1 - a8)
                    if (a2 * 1086 + aw * 217 + a2 * aw) % 16777213 == 7841508 then
                        return
                    end
                    pcall(function()
                        if H(aL.RequestStreamAroundAsync) then
                            task.defer(function()
                                pcall(function()
                                    aL.RequestStreamAroundAsync(aL, o)
                                end)
                            end)
                        end
                    end)
                end
                a3 = 84
            elseif a3 == 10127 then
                a3 = 250
            else
                a3 = 10095
                continue
            end
        elseif a3 < 10129 then
            if a3 == 10128 then
                a3 = 254
            else
                a3 = 9938
                continue
            end
        elseif a3 < 10130 then
            if a3 == 10129 then
                a3 = 187
            else
                a3 = 9880
                continue
            end
        elseif a3 == 10130 then
            a3 = 50
        else
            a3 = 10030
            continue
        end
    elseif a3 < 11298 then
        if a3 < 10133 then
            if a3 < 10132 then
                z = "Break and Steal an Egg"
                a3 = 133
            else
                K = function()
                    local p
                    local function j(l)
                        local q = (tostring(l))
                        local r = (q:gsub("&", "&amp;"))
                        local k = (r:gsub("<", "&lt;"))
                        local p = (k:gsub(">", "&gt;"))
                        local t = (p:gsub('"', "&quot;"))
                        return (t:gsub("'", "&apos;"))
                    end
                    local function f(m)
                        local ak = tostring(m)
                        local bc = Color3.fromRGB(255, 105, 180)
                        local bC = Color3.fromRGB(255, 182, 193)
                        local O = {}
                        local z = utf8.len(ak) or #ak
                        local aE = 1
                        for k, v in utf8.codes(ak) do
                            local ak_1 = (aE - 1) / math.max(z - 1, 1)
                            local z_1 = bc:Lerp(bC, ak_1)
                            local pk = math.floor(z_1.R * 255 + 0.5)
                            local pl = math.floor(z_1.G * 255 + 0.5)
                            local ak_2 = string.format("#%02x%02x%02x", pk, pl, math.floor(z_1.B * 255 + 0.5))
                            O[aE] = string.format('<font color="%s">%s</font>', ak_2, j(utf8.char(v)))
                            aE += 1
                        end
                        return table.concat(O)
                    end
                    local function g(q)
                        local bh = tonumber(q) or 0
                        local bh_1 = math.abs(bh)
                        if bh_1 >= 1000000000000000 then
                            local pw = bh / 1000000000000000
                            return string.format("%.2fQ", pw)
                        elseif bh_1 >= 1000000000000 then
                            local pq = bh / 1000000000000
                            return string.format("%.2fT", pq)
                        elseif bh_1 >= 1000000000 then
                            local po = bh / 1000000000
                            return string.format("%.2fB", po)
                        elseif bh_1 >= 1000000 then
                            local ps = bh / 1000000
                            return string.format("%.2fM", ps)
                        elseif bh_1 >= 1000 then
                            local pu = bh / 1000
                            return string.format("%.2fK", pu)
                        else
                            return tostring(math.floor(bh + 0.5))
                        end
                    end
                    au(aq.Main)
                    local py = "Status"
                    local pz = "activity"
                    local Main6 = aq.Main
                    local Group6 = Main6:AddRightGroupbox(py, pz)
                    local c = {
                        { Text = f("Cash"), Status = f("-") },
                        { Text = f("Speed"), Status = f("-") },
                        { Text = f("Pickaxe"), Status = f("-") },
                        { Text = f("Plot"), Status = f("-") },
                        { Text = f("Carrying"), Status = f("No") },
                        { Text = f("Autos"), Status = f("Off") },
                        { Text = f("Pickups"), Status = f("0") }
                    }
                    local s = Group6:AddStatusLabel("FarmStatus", { MaxHeight = 160, RowHeight = 18, StatusColor = Color3.fromRGB(255, 182, 193), Items = c })
                    local function worker()
                        local Unloaded = z.Unloaded
                        local aC = not s
                        local a_ = Unloaded
                        local y = if a_ then 1 else 0
                        local aP = 1613 * y + 2947 * (1 - y)
                        local a5 = 2230 * y + 2986 * (1 - y)
                        if not ((aP * 2049 + a5 * 702 + aP * a5) % 16777213 == 8467487) then
                            a_ = aC
                        end
                        if a_ then
                            return
                        end
                        local aC_1 = aM()
                        local a__1 = aL:GetAttribute("PickaxeTier") or 1
                        local a3 = PickaxeConfig.Tiers[a__1] and PickaxeConfig.Tiers[a__1].Name
                        if not a3 then
                            local pE = tostring(a__1)
                            a3 = "Tier " .. pE
                        end
                        local a__3 = aC_1
                        local aA_1 = a3
                        if a__3 then
                            local a3_7 = aC_1:GetAttribute("AnimalsPlaced") or 0
                            a__3 = a3_7
                        end
                        local a3_8 = a__3 or 0
                        local a__4 = aC_1
                        if a__4 then
                            local a3_9 = aC_1:GetAttribute("MaxAnimals") or 0
                            a__4 = a3_9
                        end
                        local a3_10 = a__4 or 0
                        local a__5 = aC_1
                        local bq = if a__5 then 1 else 0
                        local ah = 417 * bq + 477 * (1 - bq)
                        local aD = 3382 * bq + 303 * (1 - bq)
                        if (ah * 2586 + aD * 2272 + ah * aD) % 16777213 == 10172560 then
                            local a3_11 = (aC_1:GetAttribute("PlotLevel"))
                            local bq_4 = if a3_11 then 1 else 0
                            local ah_3 = 1588 * bq_4 + 475 * (1 - bq_4)
                            local aD_2 = 3012 * bq_4 + 3734 * (1 - bq_4)
                            if not ((ah_3 * 3505 + aD_2 * 2743 + ah_3 * aD_2) % 16777213 == 1833699) then
                                a3_11 = 1
                            end
                            a__5 = a3_11
                        end
                        local aC_2 = a__5 or 0
                        local aC_3 = aw() and "Yes"
                        local a3_12 = aC_3 or "No"
                        local aC_4 = {}
                        local Enabled = ac.Enabled
                        if Enabled.Break then
                            table.insert(aC_4, "Break")
                        end
                        if Enabled.PickUpBank then
                            table.insert(aC_4, "PickUp")
                        end
                        if Enabled.Treadmill then
                            table.insert(aC_4, "Tread")
                        end
                        if Enabled.BuyTrails then
                            table.insert(aC_4, "Trails")
                        end
                        if Enabled.BuyPickaxes then
                            table.insert(aC_4, "Pickaxes")
                        end
                        if Enabled.UpgradePen then
                            table.insert(aC_4, "Pen")
                        end
                        if Enabled.UpgradeTreadmill then
                            table.insert(aC_4, "TreadUp")
                        end
                        if Enabled.EquipBest then
                            table.insert(aC_4, "Equip")
                        end
                        if Enabled.ClaimIndex then
                            table.insert(aC_4, "Index")
                        end
                        local a3_14 = 0
                        local pJ = at
                        local GetTagged = pJ.GetTagged
                        for i, v in ipairs(GetTagged(pJ, "SmartPrompt")) do
                            local bv = v
                            local D_3 = bv:IsA("ProximityPrompt") and (function(e, t, c, o)
                                if type(e) ~= "string" then
                                    return false
                                end
                                if #e ~= t then
                                    return false
                                end
                                local r = 5381
                                local s = buffer.fromstring(e)
                                local k = 0
                                while k <= t - 4 do
                                    local j = buffer.readu32(s, k)
                                    local r_103 = bit32.bxor(r, j)
                                    r = bit32.band(r_103 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < t do
                                    local m = buffer.readu8(s, k)
                                    local r_104 = bit32.bxor(r, m)
                                    r = bit32.band(r_104 * 33, 4294967295)
                                    k = k + 1
                                end
                                if r ~= c then
                                    return false
                                end
                                return e == o
                            end)(bv.Name, 11, 1889647155, "StealPrompt") and bv.Enabled
                            if D_3 then
                                a3_14 += 1
                            end
                        end
                        c[1].Status = f(g(am()))
                        local D_4 = c[2]
                        local bj = aL:GetAttribute("SpeedPower") or 0
                        D_4.Status = f(g(bj))
                        c[3].Status = f(tostring(aA_1))
                        local pP = tostring(aC_2)
                        local pQ = tostring(a3_8)
                        c[4].Status = f(string.format("Lv%s %s/%s", pP, pQ, tostring(a3_10)))
                        c[5].Status = f(a3_12)
                        local a__7 = c[6]
                        local aA_2 = #aC_4 > 0 and table.concat(aC_4, ", ")
                        local aC_5 = aA_2 or "Off"
                        a__7.Status = f(aC_5)
                        c[7].Status = f(tostring(a3_14))
                        for i, v in ipairs(c) do
                            s.UpdateItem(s, v)
                        end
                    end
                    p = task.spawn(function()
                        local bg_3
                        while true do
                            local x = aT() and not z.Unloaded
                            local x_1
                            if x then
                                x_1, bg_3 = pcall(worker)
                                if not x_1 then
                                    local pY = tostring(bg_3)
                                    warn("[Ouroboros] Status: " .. pY)
                                end
                                task.wait(0.5)
                                continue
                            end
                            break
                        end
                    end)
                    aj.Track(function()
                        if not (function(e, t, c, o)
                            if type(e) ~= "string" then
                                return false
                            end
                            if #e ~= t then
                                return false
                            end
                            local r = 5381
                            local s = buffer.fromstring(e)
                            local k = 0
                            while k <= t - 4 do
                                local j = buffer.readu32(s, k)
                                local r_101 = bit32.bxor(r, j)
                                r = bit32.band(r_101 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < t do
                                local m = buffer.readu8(s, k)
                                local r_102 = bit32.bxor(r, m)
                                r = bit32.band(r_102 * 33, 4294967295)
                                k = k + 1
                            end
                            if r ~= c then
                                return false
                            end
                            return e == o
                        end)(coroutine.status(p), 4, 4035935361, "dead") then
                            pcall(task.cancel, p)
                        end
                    end)
                    local pz_1 = "Break"
                    local py_1 = "hammer"
                    local Main5 = aq.Main
                    local Group5 = Main5:AddLeftGroupbox(pz_1, py_1)
                    Group5:AddToggle("AutoBreak", { Text = "Auto Break", Default = false })
                    Group5:AddDropdown("BreakRarityFilter", { Text = "Rarity Filter", Values = X, Default = table.clone(X), Multi = true, AllowNull = true })
                    Group5:AddDropdown("BreakZoneFilter", { Text = "Zone Filter", Values = A, Default = table.clone(A), Multi = true, AllowNull = true })
                    local py_2 = "Farm"
                    local pz_2 = "rabbit"
                    local Main4 = aq.Main
                    local Group4 = Main4:AddLeftGroupbox(py_2, pz_2)
                    Group4:AddToggle("AutoPickUpBank", { Text = "Auto Pick Up & Bank", Default = false })
                    Group4:AddDropdown("PickUpRarityFilter", { Text = "Rarity Filter", Values = X, Default = table.clone(X), Multi = true, AllowNull = true })
                    Group4:AddDropdown("PickUpAnimalFilter", { Text = "Animal Filter", Values = E, Default = table.clone(E), Multi = true, AllowNull = true })
                    Group4:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
                    Group4:AddToggle("AutoClaimIndex", { Text = "Auto Claim Index", Default = false })
                    local pz_3 = "Teleport"
                    local py_3 = "map-pin"
                    local Main3 = aq.Main
                    local Group3 = Main3:AddLeftGroupbox(pz_3, py_3)
                    Group3:AddButton({
                        Text = "Teleport to Base",
                        Func = function()
                            if not aj.TeleportToBase() then
                                z.Notify(z, "Base not found", 3)
                            end
                        end
                    })
                    local py_4 = "Shop"
                    local pz_4 = "shopping-cart"
                    local Main2 = aq.Main
                    local Group2 = Main2:AddRightGroupbox(py_4, pz_4)
                    Group2:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
                    Group2:AddToggle("AutoBuyPickaxes", { Text = "Auto Buy Pickaxes", Default = false })
                    local pz_5 = "Plot"
                    local py_5 = "house"
                    local Main = aq.Main
                    local Group = Main:AddRightGroupbox(pz_5, py_5)
                    Group:AddToggle("AutoUpgradePen", { Text = "Auto Upgrade Pen", Default = false })
                    Group:AddToggle("AutoUpgradeTreadmill", { Text = "Auto Upgrade Treadmill", Default = false })
                    Group:AddToggle("AutoTreadmill", { Text = "Auto Go on Treadmill", Default = false })
                    Toggles.AutoBreak:OnChanged(function(c)
                        aj.SetBreak(c)
                    end)
                    ay.BreakRarityFilter:OnChanged(function(s)
                        aj.SetBreakRarityFilter(s)
                    end)
                    ay.BreakZoneFilter:OnChanged(function(e)
                        aj.SetBreakZoneFilter(e)
                    end)
                    Toggles.AutoPickUpBank:OnChanged(function(m)
                        aj.SetPickUpBank(m)
                    end)
                    ay.PickUpRarityFilter:OnChanged(function(p)
                        aj.SetPickUpRarityFilter(p)
                    end)
                    ay.PickUpAnimalFilter:OnChanged(function(s)
                        aj.SetPickUpAnimalFilter(s)
                    end)
                    Toggles.AutoEquipBest:OnChanged(function(g)
                        aj.SetEquipBest(g)
                    end)
                    Toggles.AutoClaimIndex:OnChanged(function(c)
                        aj.SetClaimIndex(c)
                    end)
                    Toggles.AutoBuyTrails:OnChanged(function(k)
                        aj.SetBuyTrails(k)
                    end)
                    Toggles.AutoBuyPickaxes:OnChanged(function(r)
                        aj.SetBuyPickaxes(r)
                    end)
                    Toggles.AutoUpgradePen:OnChanged(function(t)
                        aj.SetUpgradePen(t)
                    end)
                    Toggles.AutoUpgradeTreadmill:OnChanged(function(l)
                        aj.SetUpgradeTreadmill(l)
                    end)
                    Toggles.AutoTreadmill:OnChanged(function(q)
                        aj.SetTreadmill(q)
                    end)
                    aj.SetBreakRarityFilter(ay.BreakRarityFilter.Value)
                    aj.SetBreakZoneFilter(ay.BreakZoneFilter.Value)
                    aj.SetPickUpRarityFilter(ay.PickUpRarityFilter.Value)
                    aj.SetPickUpAnimalFilter(ay.PickUpAnimalFilter.Value)
                    task.defer(worker)
                end
                a3 = 32
            end
        elseif a3 < 10134 then
            if a3 == 10133 then
                local Zones = a_.Zones
                for k2, v in pairs(Zones) do
                    aV(v)
                end
                a3 = 98
            else
                a3 = 10072
                continue
            end
        elseif a3 == 10134 then
            aY = function()
                local function m()
                    if not az.CurrentCamera then
                        return false
                    end
                    local F_1 = not H(v.VirtualUser.CaptureController) or not H(v.VirtualUser.ClickButton2)
                    if F_1 then
                        return false
                    else
                        local F_2 = pcall(function()
                            local VirtualUser = v.VirtualUser
                            VirtualUser.CaptureController(VirtualUser)
                            v.VirtualUser:ClickButton2(Vector2.new())
                        end)
                        local G = if F_2 then 1 else 0
                        local aL = 4075 * G + 2635 * (1 - G)
                        local aX = 3978 * G + 2970 * (1 - G)
                        if (aL * 3912 + aX * 2107 + aL * aX) % 16777213 == 6978970 then
                            K.AfkCount = K.AfkCount + 1
                        end
                        return F_2
                    end
                end
                aj.SetAntiAfk = function(f)
                    local aX = f
                    local aP = if aX then 1 else 0
                    local ah = 2634 * aP + 2067 * (1 - aP)
                    local am = 995 * aP + 3129 * (1 - aP)
                    if (ah * 746 + am * 1518 + ah * am) % 16777213 == 6096204 then
                        aX = true
                    end
                    local U = aX or false
                    K.AntiAfk = U
                    if K.AfkConn then
                        local AfkConn = K.AfkConn
                        AfkConn.Disconnect(AfkConn)
                        K.AfkConn = nil
                    end
                    if K.AfkTask then
                        local AfkTask = K.AfkTask
                        pcall(task.cancel, AfkTask)
                        K.AfkTask = nil
                    end
                    local aP_1 = if not K.AntiAfk then 1 else 0
                    local ah_2 = 1829 * aP_1 + 3557 * (1 - aP_1)
                    local am_1 = 25 * aP_1 + 1842 * (1 - aP_1)
                    if (ah_2 * 3157 + am_1 * 859 + ah_2 * am_1) % 16777213 == 5841353 then
                        return
                    end
                    K.AfkConn = aL.Idled:Connect(function()
                        local aE = aT() and K.AntiAfk
                        if aE then
                            m()
                        end
                    end)
                    K.AfkTask = task.spawn(function()
                        local bE, I
                        local N = 0
                        while true do
                            N += 12082
                            if N < 12089 then
                                if N < 12086 then
                                    if N < 12084 then
                                        if N < 11789 then
                                            break
                                        elseif N < 12082 then
                                            break
                                        elseif N < 12083 then
                                            if N == 12082 then
                                                bE = os.clock()
                                                N = 2
                                            else
                                                N = 6885
                                                continue
                                            end
                                        else
                                            I = not K.AntiAfk
                                            N = 11
                                        end
                                    elseif N < 12085 then
                                        N = 14
                                    elseif N == 12085 then
                                        N = 15
                                    else
                                        N = 12094
                                        continue
                                    end
                                elseif N < 12088 then
                                    if N < 12087 then
                                        N = if I then 13 else 3
                                    elseif N == 12087 then
                                        N = 2
                                    else
                                        N = 3004
                                        continue
                                    end
                                elseif N == 12088 then
                                    N = if os.clock() - bE >= 60 then 8 else 9
                                else
                                    N = 6673
                                    continue
                                end
                            elseif N < 12094 then
                                if N < 12091 then
                                    if N < 12090 then
                                        N = 15
                                    elseif N == 12090 then
                                        bE = os.clock()
                                        m()
                                        N = 9
                                    else
                                        N = 12082
                                        continue
                                    end
                                elseif N < 12092 then
                                    if N == 12091 then
                                        N = 5
                                    else
                                        N = 12004
                                        continue
                                    end
                                elseif N < 12093 then
                                    break
                                else
                                    N = if I then 7 else 6
                                end
                            elseif N < 12096 then
                                if N < 12095 then
                                    I = K.AntiAfk
                                    N = 4
                                else
                                    task.wait(1)
                                    I = not aT()
                                    N = if I then 11 else 1
                                end
                            elseif N < 12097 then
                                I = (aT())
                                N = if I then 12 else 4
                            elseif N < 13010 then
                                if N == 12097 then
                                    N = 10
                                else
                                    break
                                end
                            else
                                break
                            end
                        end
                    end)
                end
                aj.SetNoGameplayPaused = function(c)
                    local J, X
                    local bA = 0
                    while true do
                        bA += 10411
                        if bA < 10416 then
                            if bA < 10412 then
                                if bA < 7093 then
                                    break
                                elseif bA < 10411 then
                                    break
                                else
                                    J = c
                                    bA = if J then 5 else 1
                                end
                            elseif bA < 10414 then
                                if bA < 10413 then
                                    if bA == 10412 then
                                        X = J
                                        bA = if X then 4 else 3
                                    else
                                        bA = 10415
                                        continue
                                    end
                                else
                                    break
                                end
                            elseif bA < 10415 then
                                X = false
                                bA = 4
                            else
                                K.NoGameplayPaused = X
                                bA = 2
                            end
                        elseif bA < 14772 then
                            if bA < 12753 then
                                if bA < 10938 then
                                    if bA == 10416 then
                                        J = true
                                        bA = 1
                                    else
                                        bA = 16115
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
                aj.SetAutoReconnect = function(p)
                    local bx = p and true or false
                    K.AutoReconnect = bx
                    local ReconnectConns = K.ReconnectConns
                    for i, v in ipairs(ReconnectConns) do
                        v.Disconnect(v)
                    end
                    table.clear(K.ReconnectConns)
                    if not K.AutoReconnect then
                        return
                    end
                    table.insert(K.ReconnectConns, v.TeleportService.TeleportInitFailed:Connect(function()
                        local aF = not aT() or not K.AutoReconnect
                        if aF then
                            return
                        end
                        task.wait(1)
                        local aF_3 = aT() and K.AutoReconnect
                        if aF_3 then
                            pcall(function()
                                v.TeleportService:Teleport(game.PlaceId, aL)
                            end)
                        end
                    end))
                end
                aj.SetDisable3D = function(l)
                    local bF, x
                    local aY = 4
                    while true do
                        aY += 15359
                        if aY < 13592 then
                            break
                        elseif aY < 15362 then
                            if aY < 15360 then
                                if aY < 15359 then
                                    break
                                elseif aY == 15359 then
                                    K.Disable3D = x
                                    pcall(function()
                                        v.RunService:Set3dRenderingEnabled(not K.Disable3D)
                                    end)
                                    aY = 1
                                else
                                    aY = 15361
                                    continue
                                end
                            elseif aY < 15361 then
                                break
                            else
                                x = false
                                aY = 0
                            end
                        elseif aY < 15364 then
                            if aY < 15363 then
                                bF = true
                                aY = 5
                            elseif aY == 15363 then
                                bF = l
                                aY = if bF then 3 else 5
                            else
                                aY = 2351
                                continue
                            end
                        elseif aY < 15923 then
                            if aY == 15364 then
                                x = bF
                                aY = if x then 0 else 2
                            else
                                break
                            end
                        else
                            break
                        end
                    end
                end
                aj.SetFpsBoost = function(s)
                    local a3
                    local a7 = s and true or false
                    K.FpsBoost = a7
                    if K.FpsConn then
                        local FpsConn = K.FpsConn
                        FpsConn.Disconnect(FpsConn)
                        K.FpsConn = nil
                    end
                    local function G_3()
                        local FpsSnapshots = K.FpsSnapshots
                        for k, v in pairs(FpsSnapshots) do
                            local at = k
                            if at and at.Parent then
                                for k, v in pairs(v) do
                                    local bk = k
                                    local aV = v
                                    pcall(function()
                                        at[bk] = aV
                                    end)
                                end
                            end
                        end
                        table.clear(K.FpsSnapshots)
                    end
                    if not K.FpsBoost then
                        G_3()
                        return
                    end
                    a3 = function(f)
                        if K.FpsSnapshots[f] then
                            return
                        end
                        local bu = f:IsA("ParticleEmitter") or f:IsA("Trail") or f:IsA("Beam") or f:IsA("Fire")
                        local bD = if bu then 1 else 0
                        local bq = 1692 * bD + 1151 * (1 - bD)
                        local aD = 1893 * bD + 1102 * (1 - bD)
                        if not ((bq * 3007 + aD * 2164 + bq * aD) % 16777213 == 12387252) then
                            bu = f:IsA("Smoke")
                        end
                        if not bu then
                            bu = f:IsA("Sparkles")
                        end
                        if bu then
                            K.FpsSnapshots[f] = { Enabled = f.Enabled }
                            f.Enabled = false
                        end
                    end
                    local qA = az
                    local GetDescendants = qA.GetDescendants
                    for i, v in ipairs(GetDescendants(qA)) do
                        a3(v)
                    end
                    if K.FpsSnapshots[v.Lighting] == nil then
                        K.FpsSnapshots[v.Lighting] = { GlobalShadows = v.Lighting.GlobalShadows, FogEnd = v.Lighting.FogEnd }
                        v.Lighting.GlobalShadows = false
                    end
                    K.FpsConn = az.DescendantAdded:Connect(function(q)
                        if K.FpsBoost then
                            a3(q)
                        end
                    end)
                end
                aj.Track(function()
                    aj.SetAntiAfk(false)
                    aj.SetAutoReconnect(false)
                    aj.SetDisable3D(false)
                    aj.SetFpsBoost(false)
                end)
            end
            a3 = 12
        else
            break
        end
    else
        break
    end
end
