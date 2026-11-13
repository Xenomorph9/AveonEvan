local m
local InventoryServiceUtils
local k
local j
local o
local p
local TeleporterServiceClient
local r
local t
local u
local InventoryServiceClient
local State
local x
local z
local B
local C
local D
local E
local F
local G
local H
local ButtonUtils
local J
local K
local IndexRewardUtils
local UserInputService
local N
local O
local P
local ButtonSlice
local R
local IndexServiceClient
local RunService
local U
local V
local ButtonServiceClient
local X
local Y
local UpgradeTrees
local connection2
local client
local ac
local ad
local LocalPlayer
local Window
local Currencies
local ah
local ai
local UpgradeServiceClient
local ItemVariantUtils
local am
local an
local ButtonInfo
local ap
local aq
local function fn35(j)
    local aJ = tonumber(j) or 32
    State.walkSpeed = math.clamp(aJ, 16, 250)
    if State.walkSpeedEnabled then
        R()
    end
end
local function fn38()
    local aG = 0
    while true do
        aG += 8059
        if aG < 8062 then
            if aG < 8059 then
                break
            elseif aG < 8060 then
                if aG == 8059 then
                    aG = if not IndexRewardUtils.isClaimable(client.index()) then 2 else 1
                else
                    aG = 1510
                    continue
                end
            elseif aG < 8061 then
                return IndexServiceClient:requestClaimReward() == true
            else
                return false
            end
        else
            break
        end
    end
end
local function fn44(j)
    local onDescendantAdded, p
    local aC = 2
    while true do
        aC += 1645
        if aC < 1653 then
            if aC < 1649 then
                if aC < 1647 then
                    if aC < 1646 then
                        if aC == 1645 then
                            p = onDescendantAdded
                            aC = 8
                        else
                            break
                        end
                    elseif aC == 1646 then
                        aC = if State.promptSnapshots then 7 else 4
                    else
                        aC = 14475
                        continue
                    end
                elseif aC < 1648 then
                    if aC == 1647 then
                        State.instantPrompt = j == true
                        aC = if State.promptAdded then 5 else 3
                    else
                        aC = 1645
                        continue
                    end
                else
                    aC = if not State.instantPrompt then 1 else 9
                end
            elseif aC < 1652 then
                if aC < 1650 then
                    if aC == 1649 then
                        return
                    end
                    aC = 1650
                    continue
                elseif aC < 1651 then
                    State.promptAdded:Disconnect()
                    State.promptAdded = nil
                    aC = 3
                else
                    break
                end
            elseif aC == 1652 then
                local promptSnapshots = State.promptSnapshots
                for k, v in promptSnapshots do
                    if k.Parent then
                        k.HoldDuration = v.HoldDuration
                        k.MaxActivationDistance = v.MaxActivationDistance
                        k.RequiresLineOfSight = v.RequiresLineOfSight
                    end
                end
                table.clear(State.promptSnapshots)
                aC = 4
            else
                aC = 2536
                continue
            end
        elseif aC < 7016 then
            if aC < 2084 then
                if aC < 1654 then
                    if aC == 1653 then
                        State.promptSnapshots = p
                        onDescendantAdded = function(j)
                            if not j:IsA("ProximityPrompt") then
                                return
                            end
                            if State.promptSnapshots[j] == nil then
                                State.promptSnapshots[j] = {
                                    HoldDuration = j.HoldDuration,
                                    MaxActivationDistance = j.MaxActivationDistance,
                                    RequiresLineOfSight = j.RequiresLineOfSight
                                }
                            end
                            j.HoldDuration = 0
                            j.MaxActivationDistance = 50
                            j.RequiresLineOfSight = false
                        end
                        for i, descendant in workspace:GetDescendants() do
                            onDescendantAdded(descendant)
                        end
                        State.promptAdded = workspace.DescendantAdded:Connect(onDescendantAdded)
                        J.Track(function()
                            local n = 5
                            while true do
                                n += 6069
                                if n < 6072 then
                                    if n < 6071 then
                                        if n < 2432 then
                                            break
                                        elseif n < 6069 then
                                            break
                                        elseif n < 6070 then
                                            State.promptAdded:Disconnect()
                                            State.promptAdded = nil
                                            n = 2
                                        else
                                            break
                                        end
                                    elseif n == 6071 then
                                        n = if State.promptSnapshots then 3 else 4
                                    else
                                        n = 8432
                                        continue
                                    end
                                elseif n < 6074 then
                                    if n < 6073 then
                                        if n == 6072 then
                                            local promptSnapshots = State.promptSnapshots
                                            for k, v in promptSnapshots do
                                                if k.Parent then
                                                    k.HoldDuration = v.HoldDuration
                                                    k.MaxActivationDistance = v.MaxActivationDistance
                                                    k.RequiresLineOfSight = v.RequiresLineOfSight
                                                end
                                            end
                                            table.clear(State.promptSnapshots)
                                            n = 4
                                        else
                                            n = 6070
                                            continue
                                        end
                                    else
                                        n = 1
                                    end
                                elseif n < 9743 then
                                    if n < 7911 then
                                        if n < 7666 then
                                            if n == 6074 then
                                                n = if State.promptAdded then 0 else 2
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
                        end)
                        aC = 6
                    else
                        aC = 2084
                        continue
                    end
                elseif aC == 1654 then
                    local promptSnapshots = State.promptSnapshots
                    onDescendantAdded = {}
                    p = promptSnapshots
                    local ar = if p then 1 else 0
                    local ak = 1167 * ar + 1011 * (1 - ar)
                    local an = 2656 * ar + 3310 * (1 - ar)
                    aC = if (ak * 3154 + an * 3257 + ak * an) % 16777213 == 15430862 then 8 else 0
                else
                    aC = 9246
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
local function fn74()
    return client.level()
end
local function fn127(l)
    D.setAutoCollectLoot(l)
end
local function fn174()
    local function aW(g)
        if (function(j, c, e, l)
            if type(j) ~= "string" then
                return false
            end
            if #j ~= c then
                return false
            end
            local g = 5381
            local f = buffer.fromstring(j)
            local k = 0
            while k <= c - 4 do
                local m = buffer.readu32(f, k)
                local g_1 = bit32.bxor(g, m)
                g = bit32.band(g_1 * 33, 4294967295)
                k = k + 4
            end
            while k < c do
                local n = buffer.readu8(f, k)
                local g_2 = bit32.bxor(g, n)
                g = bit32.band(g_2 * 33, 4294967295)
                k = k + 1
            end
            if g ~= e then
                return false
            end
            return j == l
        end)(g, 5, 2930881013, "coins") then
            return p()
        end
        local K = Currencies[g]
        if K and K.value then
            return K.value(client)()
        end
        return 0
    end
    local q = {}
    local function z(f, e)
        return am(f, e)
    end
    local bo = k
    for k, v in bo do
        if an(v) then
            local o = UpgradeTrees.lookup[v]
            if o then
                for k, v2 in o do
                    local o_1 = v2.cost and not z(v, k)
                    if o_1 then
                        local o_2 = v2.dependency == UpgradeTrees.enums.rootUpgrade or z(v, v2.dependency)
                        local aV = true
                        local globalDependency = v2.globalDependency
                        if globalDependency then
                            aV = z(globalDependency.buttonId, globalDependency.upgradeId)
                        end
                        local o_4 = o_2 and aV and v2.cost.amount <= aW(v2.cost.currency)
                        if o_4 then
                            table.insert(q, v2)
                        end
                    end
                end
            end
        end
    end
    table.sort(q, function(f, g)
        local C = f.cost and f.cost.amount or math.huge
        local aO = g.cost and g.cost.amount
        local Z = if aO then 1 else 0
        local ak = 3007 * Z + 2151 * (1 - Z)
        local s = 3900 * Z + 1352 * (1 - Z)
        if not ((ak * 497 + s * 3780 + ak * s) % 16777213 == 11186566) then
            aO = math.huge
        end
        local C_2 = aO
        if C == C_2 then
            return tostring(f.id) < tostring(g.id)
        end
        return C < C_2
    end)
    return q
end
local function fn183(j)
    State.upgradeIncludeVariants = j == true
end
local function fn218()
    local Group = E:AddLeftGroupbox({ Name = "Menu", Icon = "monitor" })
    Group:CreateKeybind({
        Name = "Toggle UI",
        CurrentKeybind = "RightControl",
        Flag = "ToggleUIKey",
        Callback = function() end,
        OnChanged = function(f)
            Window:SetKeybind(f)
        end
    })
    Group:CreateDropdown({
        Name = "Toggle button",
        Options = { "Mobile only", "Mobile & PC" },
        CurrentOption = "Mobile only",
        AllowNone = false,
        Flag = "ToggleButtonPlatform",
        Callback = function(j)
            local w = j
            if (function(j, c, e, l)
                if type(j) ~= "string" then
                    return false
                end
                if #j ~= c then
                    return false
                end
                local g = 5381
                local f = buffer.fromstring(j)
                local k = 0
                while k <= c - 4 do
                    local m = buffer.readu32(f, k)
                    local g_5 = bit32.bxor(g, m)
                    g = bit32.band(g_5 * 33, 4294967295)
                    k = k + 4
                end
                while k < c do
                    local n = buffer.readu8(f, k)
                    local g_6 = bit32.bxor(g, n)
                    g = bit32.band(g_6 * 33, 4294967295)
                    k = k + 1
                end
                if g ~= e then
                    return false
                end
                return j == l
            end)(type(j), 5, 248602996, "table") then
                w = j[1]
            end
            local ab = (function(j, c, e, l)
                if type(j) ~= "string" then
                    return false
                end
                if #j ~= c then
                    return false
                end
                local g = 5381
                local f = buffer.fromstring(j)
                local k = 0
                while k <= c - 4 do
                    local m = buffer.readu32(f, k)
                    local g_3 = bit32.bxor(g, m)
                    g = bit32.band(g_3 * 33, 4294967295)
                    k = k + 4
                end
                while k < c do
                    local n = buffer.readu8(f, k)
                    local g_4 = bit32.bxor(g, n)
                    g = bit32.band(g_4 * 33, 4294967295)
                    k = k + 1
                end
                if g ~= e then
                    return false
                end
                return j == l
            end)(w, 11, 3530545271, "Mobile & PC") and "Both"
            local w_1 = ab or "Mobile"
            Window:SetToggleButtonPlatform(w_1)
        end
    })
    Group:CreateToggle({
        Name = "Anti AFK",
        CurrentValue = true,
        Flag = "AntiAfk",
        Callback = function(j)
            x.setAntiAfk(j)
        end
    })
    Group:CreateButton({
        Name = "Unload",
        Icon = "power",
        Callback = function()
            r:Confirm({
                Title = "Unload?",
                ConfirmText = "Unload",
                Callback = function()
                    Window:Destroy()
                end
            })
        end
    })
    E:CreateConfigManager({ Name = "Configs", Side = "Left" })
    E:CreateThemeManager({ Name = "Themes", Side = "Right" })
end
local function fn231(g)
    local al, z, H, aY, ai
    local E = 0
    while true do
        E += 1640
        if E < 1648 then
            if E < 1647 then
                if E < 1643 then
                    if E < 1641 then
                        if E == 1640 then
                            ai = if not (function(j, c, e, l)
                                if type(j) ~= "string" then
                                    return false
                                end
                                if #j ~= c then
                                    return false
                                end
                                local g = 5381
                                local f = buffer.fromstring(j)
                                local k = 0
                                while k <= c - 4 do
                                    local m = buffer.readu32(f, k)
                                    local g_11 = bit32.bxor(g, m)
                                    g = bit32.band(g_11 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < c do
                                    local n = buffer.readu8(f, k)
                                    local g_12 = bit32.bxor(g, n)
                                    g = bit32.band(g_12 * 33, 4294967295)
                                    k = k + 1
                                end
                                if g ~= e then
                                    return false
                                end
                                return j == l
                            end)(type(g), 6, 2175009567, "string") then 1 else 0
                            H = 3142 * ai + 2731 * (1 - ai)
                            E = 8
                        else
                            break
                        end
                    elseif E < 1642 then
                        if E == 1641 then
                            local bz = (function(j, c, e, l)
                                if type(j) ~= "string" then
                                    return false
                                end
                                if #j ~= c then
                                    return false
                                end
                                local g = 5381
                                local f = buffer.fromstring(j)
                                local k = 0
                                while k <= c - 4 do
                                    local m = buffer.readu32(f, k)
                                    local g_9 = bit32.bxor(g, m)
                                    g = bit32.band(g_9 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < c do
                                    local n = buffer.readu8(f, k)
                                    local g_10 = bit32.bxor(g, n)
                                    g = bit32.band(g_10 * 33, 4294967295)
                                    k = k + 1
                                end
                                if g ~= e then
                                    return false
                                end
                                return j == l
                            end)(g, 7, 2868621577, "Nearest")
                            al = (function(j, c, e, l)
                                if type(j) ~= "string" then
                                    return false
                                end
                                if #j ~= c then
                                    return false
                                end
                                local g = 5381
                                local f = buffer.fromstring(j)
                                local k = 0
                                while k <= c - 4 do
                                    local m = buffer.readu32(f, k)
                                    local g_7 = bit32.bxor(g, m)
                                    g = bit32.band(g_7 * 33, 4294967295)
                                    k = k + 4
                                end
                                while k < c do
                                    local n = buffer.readu8(f, k)
                                    local g_8 = bit32.bxor(g, n)
                                    g = bit32.band(g_8 * 33, 4294967295)
                                    k = k + 1
                                end
                                if g ~= e then
                                    return false
                                end
                                return j == l
                            end)(g, 10, 1249155942, "Best Owned")
                            z = bz
                            E = if z then 2 else 4
                        else
                            E = 3184
                            continue
                        end
                    elseif E == 1642 then
                        E = if z then 3 else 5
                    else
                        E = 1649
                        continue
                    end
                elseif E < 1645 then
                    if E < 1644 then
                        if E == 1643 then
                            return g
                        end
                        E = 4453
                        continue
                    elseif E == 1644 then
                        z = al
                        E = 2
                    else
                        E = 1647
                        continue
                    end
                elseif E < 1646 then
                    local bD = k
                    for k, v in bD do
                        local bE = ac(v)
                        if bE == g or v == g then
                            return v
                        end
                    end
                    return nil
                elseif E == 1646 then
                    return nil
                else
                    E = 1641
                    continue
                end
            else
                break
            end
        elseif E < 4453 then
            if E < 2847 then
                if E < 1649 then
                    aY = 147 * ai + 2462 * (1 - ai)
                    E = 9
                elseif E < 1689 then
                    if E == 1649 then
                        E = if (H * 770 + aY * 1232 + H * aY) % 16777213 == 3062318 then 6 else 1
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
local function fn236(g)
    if not (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_17 = bit32.bxor(g, m)
            g = bit32.band(g_17 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_18 = bit32.bxor(g, n)
            g = bit32.band(g_18 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(g), 6, 2175009567, "string") then
        return false
    end
    local an = ButtonServiceClient:getButtonFromId(g)
    if not an then
        return false
    else
        local t = an:getActiveTargetId()
        local bP = type(t)
        local bR = (function(j, c, e, l)
            if type(j) ~= "string" then
                return false
            end
            if #j ~= c then
                return false
            end
            local g = 5381
            local f = buffer.fromstring(j)
            local k = 0
            while k <= c - 4 do
                local m = buffer.readu32(f, k)
                local g_15 = bit32.bxor(g, m)
                g = bit32.band(g_15 * 33, 4294967295)
                k = k + 4
            end
            while k < c do
                local n = buffer.readu8(f, k)
                local g_16 = bit32.bxor(g, n)
                g = bit32.band(g_16 * 33, 4294967295)
                k = k + 1
            end
            if g ~= e then
                return false
            end
            return j == l
        end)(bP, 6, 2175009567, "string")
        local u = not (function(j, c, e, l)
            if type(j) ~= "string" then
                return false
            end
            if #j ~= c then
                return false
            end
            local g = 5381
            local f = buffer.fromstring(j)
            local k = 0
            while k <= c - 4 do
                local m = buffer.readu32(f, k)
                local g_13 = bit32.bxor(g, m)
                g = bit32.band(g_13 * 33, 4294967295)
                k = k + 4
            end
            while k < c do
                local n = buffer.readu8(f, k)
                local g_14 = bit32.bxor(g, n)
                g = bit32.band(g_14 * 33, 4294967295)
                k = k + 1
            end
            if g ~= e then
                return false
            end
            return j == l
        end)(t, 0, 5381, "")
        if bR and u then
            local aT = if an:click(t) == true then 1 else 0
            if aT == 1 then
                return true
            else
                local modelClients = an.modelClients
                for k in modelClients do
                    local u_1 = k ~= t and an:click(k) == true
                    if u_1 then
                        return true
                    end
                end
                return false
            end
        else
            local modelClients = an.modelClients
            for k in modelClients do
                local u_2 = k ~= t and an:click(k) == true
                if u_2 then
                    return true
                end
            end
            return false
        end
    end
end
local function fn248(j)
    State.autoClaimIndex = j == true
    if State.autoClaimIndex then
        V("autoClaimIndex", function()
            return 2
        end, function()
            if State.autoClaimIndex then
                H()
            end
        end)
    else
        ad("autoClaimIndex")
    end
end
local function fn251(l)
    D.setUpgradeIncludeVariants(l)
end
local function fn263(j)
    local aw
    local O = 2
    while true do
        O += 12868
        if O < 12868 then
            break
        elseif O < 12871 then
            if O < 12869 then
                break
            elseif O < 12870 then
                State.upgradeCoinReserve = math.max(aw, 0)
                O = 0
            elseif O == 12870 then
                aw = (tonumber(j))
                O = if aw then 1 else 3
            else
                O = 9467
                continue
            end
        elseif O < 14210 then
            if O == 12871 then
                aw = 0
                O = 1
            else
                O = 12870
                continue
            end
        else
            break
        end
    end
end
local function fn267(k)
    local aV = 2
    while true do
        aV += 1706
        if aV < 1710 then
            if aV < 1707 then
                if aV < 1706 then
                    break
                end
                V("autoGoBestZone", function()
                    return 2.5
                end, function()
                    if not State.autoGoBestZone then
                        return
                    end
                    local aO = G()
                    if not aO then
                        return
                    end
                    local K = ap()
                    local ay = ButtonServiceClient:getButtonOrigin(aO)
                    if not (K and ay) then
                        return
                    end
                    local Magnitude = (K:GetPivot().Position - ay.Position).Magnitude
                    local K_1 = Magnitude > 40 or client.activeButton() ~= aO
                    if K_1 then
                        O(aO)
                    end
                end)
                aV = 3
            elseif aV < 1708 then
                break
            elseif aV < 1709 then
                State.autoGoBestZone = k == true
                aV = if State.autoGoBestZone then 0 else 4
            elseif aV == 1709 then
                aV = 1
            else
                aV = 1707
                continue
            end
        elseif aV < 12538 then
            if aV < 3499 then
                if aV == 1710 then
                    ad("autoGoBestZone")
                    aV = 3
                else
                    aV = 1708
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
local function fn268(k)
    local an = tonumber(k) or 0
    local b0 = math.floor(an)
    State.upgradeMaxLevel = math.max(b0, 0)
end
local function fn323(j)
    if not j then
        return
    end
    if State.walkSpeedSnapshots == nil then
        State.walkSpeedSnapshots = {}
    end
    if State.walkSpeedSnapshots[j] == nil then
        State.walkSpeedSnapshots[j] = j.WalkSpeed
    end
end
local function fn346(l)
    D.setUpgradeMinKeep(l)
end
local function fn355()
    return InventoryServiceClient:equipBest() == true
end
local function fn364(l)
    D.setAutoClick(l)
end
local function fn366(k)
    local u = 3
    while true do
        u += 4509
        if u < 4510 then
            if u < 3449 then
                break
            elseif u < 3756 then
                break
            elseif u < 4509 then
                break
            else
                u = 4
            end
        elseif u < 4513 then
            if u < 4511 then
                if u == 4510 then
                    V("autoUpgradeItems", function()
                        return 0.45
                    end, function()
                        if State.autoUpgradeItems then
                            N()
                        end
                    end)
                    u = 0
                else
                    u = 2410
                    continue
                end
            elseif u < 4512 then
                if u == 4511 then
                    ad("autoUpgradeItems")
                    u = 0
                else
                    u = 4513
                    continue
                end
            elseif u == 4512 then
                State.autoUpgradeItems = k == true
                local s = if State.autoUpgradeItems then 1 else 0
                local L = 4036 * s + 1223 * (1 - s)
                local y = 3018 * s + 2134 * (1 - s)
                u = if (L * 3727 + y * 3329 + L * y) % 16777213 == 3715316 then 1 else 2
            else
                u = 1238
                continue
            end
        else
            break
        end
    end
end
local function fn369(j)
    local aH, aI
    local aS = 2
    while true do
        aS += 5806
        if aS < 5811 then
            if aS < 5810 then
                if aS < 5809 then
                    if aS < 5276 then
                        break
                    elseif aS < 5807 then
                        if aS < 5806 then
                            break
                        end
                        aS = if State.noclipSnapshots then 7 else 5
                    elseif aS < 5808 then
                        if aS == 5807 then
                            local noclipSnapshots = State.noclipSnapshots
                            aH = {}
                            aI = noclipSnapshots
                            local G = if aI then 1 else 0
                            local Q = 3760 * G + 1152 * (1 - G)
                            local aM = 60 * G + 1360 * (1 - G)
                            aS = if (Q * 1245 + aM * 2828 + Q * aM) % 16777213 == 5076480 then 9 else 6
                        else
                            aS = 5806
                            continue
                        end
                    elseif aS == 5808 then
                        State.noclip = j == true
                        aS = if State.noclipHeartbeat then 8 else 4
                    else
                        aS = 5814
                        continue
                    end
                else
                    break
                end
            elseif aS == 5810 then
                aS = if not State.noclip then 0 else 1
            else
                aS = 5813
                continue
            end
        elseif aS < 5815 then
            if aS < 5813 then
                if aS < 5812 then
                    return
                elseif aS == 5812 then
                    aI = aH
                    aS = 9
                else
                    aS = 5815
                    continue
                end
            elseif aS < 5814 then
                local noclipSnapshots = State.noclipSnapshots
                for k in noclipSnapshots do
                    ai(k)
                end
                table.clear(State.noclipSnapshots)
                aS = 5
            elseif aS == 5814 then
                State.noclipHeartbeat:Disconnect()
                State.noclipHeartbeat = nil
                aS = 4
            else
                aS = 3957
                continue
            end
        elseif aS < 10911 then
            if aS < 10162 then
                if aS == 5815 then
                    State.noclipSnapshots = aI
                    State.noclipHeartbeat = RunService.Stepped:Connect(function()
                        local T
                        local L = 7
                        while true do
                            L += 10998
                            if L < 11001 then
                                if L < 11000 then
                                    if L < 10359 then
                                        break
                                    elseif L < 10998 then
                                        break
                                    elseif L < 10999 then
                                        local V_1 = if T then 1 else 0
                                        local P_1 = 2384 * V_1 + 2195 * (1 - V_1)
                                        local aP_3 = 170 * V_1 + 1487 * (1 - V_1)
                                        L = if (P_1 * 1554 + aP_3 * 2121 + P_1 * aP_3) % 16777213 == 4470586 then 3 else 5
                                    else
                                        break
                                    end
                                elseif L == 11000 then
                                    for i, descendant in T:GetDescendants() do
                                        local V_2 = if descendant:IsA("BasePart") then 1 else 0
                                        local P_2 = 3344 * V_2 + 2718 * (1 - V_2)
                                        local aP_4 = 3005 * V_2 + 1589 * (1 - V_2)
                                        if (P_2 * 376 + aP_4 * 1449 + P_2 * aP_4) % 16777213 == 15660309 then
                                            if State.noclipSnapshots[descendant] == nil then
                                                State.noclipSnapshots[descendant] = descendant.CanCollide
                                            end
                                            descendant.CanCollide = false
                                        end
                                    end
                                    L = 1
                                else
                                    L = 11002
                                    continue
                                end
                            elseif L < 11004 then
                                if L < 11002 then
                                    return
                                elseif L < 11003 then
                                    if L == 11002 then
                                        return
                                    end
                                    L = 2359
                                    continue
                                else
                                    T = ap()
                                    L = if not T then 4 else 2
                                end
                            elseif L < 12807 then
                                if L < 11005 then
                                    T = not State.noclip
                                    L = 0
                                elseif L == 11005 then
                                    T = J.Unloaded
                                    L = if T then 0 else 6
                                else
                                    break
                                end
                            else
                                break
                            end
                        end
                    end)
                    J.Track(function()
                        if State.noclipHeartbeat then
                            State.noclipHeartbeat:Disconnect()
                            State.noclipHeartbeat = nil
                        end
                        if State.noclipSnapshots then
                            local noclipSnapshots = State.noclipSnapshots
                            for k in noclipSnapshots do
                                ai(k)
                            end
                            table.clear(State.noclipSnapshots)
                        end
                    end)
                    aS = 3
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
local function fn374(e)
    local aj_2
    local r = not (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_19 = bit32.bxor(g, m)
            g = bit32.band(g_19 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_20 = bit32.bxor(g, n)
            g = bit32.band(g_20 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(e), 6, 2175009567, "string") or not ButtonInfo[e]
    if r then
        return false, "Unknown zone"
    elseif not an(e) then
        return false, "Zone locked"
    elseif client.teleporterUnlocked() then
        local r_1 = TeleporterServiceClient:teleportToButton(e)
        if r_1 then
            return true
        end
        local r_2 = ButtonServiceClient:getButtonOrigin(e)
        local G_1 = ap()
        if not aj_2 then
            return false, "Character or zone origin unavailable"
        end
        G_1:PivotTo(r_2 + Vector3.new(0, 5, 0))
        z(e)
        return true
    else
        local r_3 = ButtonServiceClient:getButtonOrigin(e)
        local G_2 = ap()
        aj_2 = r_3 and G_2
        if not aj_2 then
            return false, "Character or zone origin unavailable"
        end
        G_2:PivotTo(r_3 + Vector3.new(0, 5, 0))
        z(e)
        return true
    end
end
local function fn385()
    return O(State.teleportZone)
end
local function fn391(k)
    local D = tonumber(k) or 0.12
    State.clickInterval = math.clamp(D, 0.05, 1)
end
local function fn395(g)
    if not (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_21 = bit32.bxor(g, m)
            g = bit32.band(g_21 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_22 = bit32.bxor(g, n)
            g = bit32.band(g_22 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(g), 6, 2175009567, "string") then
        return
    end
    client.activeButton(g)
    ButtonSlice.activeButton(g)
    local D = if ButtonServiceClient.networker then 1 else 0
    local S = 876 * D + 2621 * (1 - D)
    local aL = 692 * D + 811 * (1 - D)
    if (S * 354 + aL * 2949 + S * aL) % 16777213 == 2957004 then
        ButtonServiceClient.networker:fire("setActiveButton", g)
    end
end
local function fn397(j)
    local Z = (m(j))
    local au = if Z then 1 else 0
    local ah = 909 * au + 1303 * (1 - au)
    local aE = 2632 * au + 2777 * (1 - au)
    if not ((ah * 1844 + aE * 1890 + ah * aE) % 16777213 == 9043164) then
        Z = "Nearest"
    end
    local aQ = Z
    State.zoneMode = aQ
end
local function fn418()
    local Flags = r.Flags
    D.setClickInterval(Flags.ClickInterval)
    local setZoneMode = D.setZoneMode
    local aP = (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_25 = bit32.bxor(g, m)
            g = bit32.band(g_25 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_26 = bit32.bxor(g, n)
            g = bit32.band(g_26 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(Flags.ZoneSelector), 5, 248602996, "table") and Flags.ZoneSelector[1]
    local ag = aP or Flags.ZoneSelector
    setZoneMode(ag)
    local setTeleportZone = D.setTeleportZone
    local aP_5 = (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_23 = bit32.bxor(g, m)
            g = bit32.band(g_23 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_24 = bit32.bxor(g, n)
            g = bit32.band(g_24 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(Flags.TeleportZone), 5, 248602996, "table") and Flags.TeleportZone[1]
    local ag_1 = aP_5
    local aM = if ag_1 then 1 else 0
    local aJ = 4001 * aM + 1400 * (1 - aM)
    local U = 3768 * aM + 1017 * (1 - aM)
    if not ((aJ * 4062 + U * 2917 + aJ * U) % 16777213 == 8764660) then
        ag_1 = Flags.TeleportZone
    end
    setTeleportZone(ag_1)
    D.setUpgradeCoinReserve(Flags.UpgradeCoinReserve)
    D.setUpgradeMaxLevel(Flags.UpgradeMaxLevel)
    D.setUpgradeMinKeep(Flags.UpgradeMinKeep)
    D.setUpgradeIncludeVariants(Flags.UpgradeIncludeVariants ~= false)
    D.setAutoClick(Flags.AutoClick == true)
    D.setAutoGoBestZone(Flags.AutoGoBestZone == true)
    D.setAutoEquipBest(Flags.AutoEquipBest == true)
    D.setAutoBuyUpgrades(Flags.AutoBuyUpgrades == true)
    D.setAutoClaimIndex(Flags.AutoClaimIndex == true)
    D.setAutoCollectLoot(Flags.AutoCollectLoot == true)
    D.setAutoUpgradeItems(Flags.AutoUpgradeItems == true)
    u.setWalkSpeed(Flags.WalkSpeed)
    u.setWalkSpeedEnabled(Flags.WalkSpeedEnabled == true)
    u.setInfJump(Flags.InfJump == true)
    u.setNoclip(Flags.NoClip == true)
    u.setInstantPrompt(Flags.InstantProximityPrompt == true)
    u.setFlySpeed(Flags.FlySpeed)
    u.setFly(Flags.Fly == true)
    u.setNoGameplayPaused(Flags.AntiGameplayPause ~= false)
    u.setAutoReconnect(Flags.AutoReconnect == true)
    u.setDisable3D(Flags.Disable3DRendering == true)
    u.setFpsBoost(Flags.FpsBoost == true)
    x.setAntiAfk(Flags.AntiAfk ~= false)
end
local function fn431(k)
    State.infJump = k == true
    if State.infJumpConnection then
        State.infJumpConnection:Disconnect()
        State.infJumpConnection = nil
    end
    if not State.infJump then
        return
    end
    State.infJumpConnection = UserInputService.JumpRequest:Connect(function()
        local aw
        local ah = 3
        while true do
            ah += 12162
            if ah < 12163 then
                if ah < 8273 then
                    break
                elseif ah < 11354 then
                    break
                elseif ah < 11588 then
                    break
                elseif ah < 12162 then
                    break
                else
                    ah = 7
                end
            elseif ah < 12168 then
                if ah < 12165 then
                    if ah < 12164 then
                        ah = if aw then 6 else 2
                    else
                        aw = X()
                        ah = if aw then 5 else 0
                    end
                elseif ah < 12166 then
                    if ah == 12165 then
                        aw = J.Unloaded
                        local r = if aw then 1 else 0
                        local ae = 2077 * r + 3600 * (1 - r)
                        local aA = 666 * r + 866 * (1 - r)
                        ah = if (ae * 3241 + aA * 2133 + ae * aA) % 16777213 == 9535417 then 1 else 4
                    else
                        ah = 12640
                        continue
                    end
                elseif ah < 12167 then
                    if ah == 12166 then
                        aw = not State.infJump
                        ah = 1
                    else
                        ah = 15036
                        continue
                    end
                else
                    aw:ChangeState(Enum.HumanoidStateType.Jumping)
                    ah = 0
                end
            elseif ah < 12640 then
                if ah < 12169 then
                    return
                end
                break
            else
                break
            end
        end
    end)
    J.Track(function()
        if State.infJumpConnection then
            State.infJumpConnection:Disconnect()
            State.infJumpConnection = nil
        end
    end)
end
local function fn432(l)
    D.setUpgradeMaxLevel(l)
end
local function fn440(l)
    D.setAutoUpgradeItems(l)
end
local function fn443()
    local aN = client.inventory()
    local af = p()
    local max2 = math.max
    local X = State.upgradeCoinReserve
    local as = if X then 1 else 0
    local A = 4030 * as + 434 * (1 - as)
    local aj = 3302 * as + 275 * (1 - as)
    if not ((A * 3039 + aj * 1084 + A * aj) % 16777213 == 12356385) then
        X = 0
    end
    local aw = max2(X, 0)
    local y_1 = af - aw
    if y_1 <= 0 then
        return nil
    else
        local af_1 = State.upgradeMaxLevel or 0
        local max = math.max
        local aw_3 = State.upgradeMinKeep
        local U = if aw_3 then 1 else 0
        local aH = 883 * U + 3221 * (1 - U)
        local Q = 2707 * U + 482 * (1 - U)
        if not ((aH * 1592 + Q * 217 + aH * Q) % 16777213 == 4383436) then
            aw_3 = 0
        end
        local a_ = max(aw_3, 0)
        local af_3 = State.upgradeIncludeVariants ~= false
        local aw_4 = {}
        for k2, v in aN do
            local aN_1 = { { itemId = k2, variantId = nil, level = v.level, amt = v.amt } }
            if af_3 then
                local at_3 = v.variants or {}
                for k, v in at_3 do
                    local aR_2 = ItemVariantUtils.isVariantId(k) and ItemVariantUtils.canRoll(k2)
                    if aR_2 then
                        table.insert(aN_1, { itemId = k2, variantId = k, level = v.level, amt = v.amt })
                    end
                end
            end
            for k2, v in aN_1 do
                if af_1 <= 0 or v.level < af_1 then
                    local aN_3 = InventoryServiceUtils.getAmtForLevel(v.level)
                    if v.amt >= aN_3 and v.amt - aN_3 >= a_ then
                        local aN_4 = InventoryServiceUtils.getUpgradeCost(v.itemId, v.level, v.variantId)
                        if aN_4 <= y_1 then
                            table.insert(aw_4, { itemId = v.itemId, variantId = v.variantId, cost = aN_4, level = v.level })
                        end
                    end
                end
            end
        end
        table.sort(aw_4, function(j, k)
            if j.cost == k.cost then
                if j.itemId == k.itemId then
                    local aB = j.variantId
                    local W = if aB then 1 else 0
                    local al = 1024 * W + 817 * (1 - W)
                    local G = 3244 * W + 2301 * (1 - W)
                    if not ((al * 1823 + G * 3979 + al * G) % 16777213 == 1319271) then
                        aB = ""
                    end
                    local M = tostring(aB)
                    local ac = k.variantId or ""
                    return M < tostring(ac)
                end
                return j.itemId < k.itemId
            end
            return j.cost < k.cost
        end)
        return aw_4[1]
    end
end
local function fn446(k)
    local aO, H
    local E = 6
    while true do
        E += 10230
        if E < 10234 then
            if E < 10230 then
                break
            elseif E < 10232 then
                if E < 10231 then
                    if E == 10230 then
                        H = aO
                        aO = H ~= nil
                        E = if aO then 3 else 2
                    else
                        E = 10237
                        continue
                    end
                else
                    State.noclipSnapshots[k] = nil
                    E = 4
                end
            elseif E < 10233 then
                E = if aO then 8 else 5
            elseif E == 10233 then
                aO = k.Parent
                E = 2
            else
                E = 3012
                continue
            end
        elseif E < 10238 then
            if E < 10236 then
                if E < 10235 then
                    if E == 10234 then
                        E = 7
                    else
                        E = 10235
                        continue
                    end
                else
                    E = if State.noclipSnapshots then 1 else 4
                end
            elseif E < 10237 then
                aO = State.noclipSnapshots
                E = if aO then 9 else 0
            else
                break
            end
        elseif E < 11986 then
            if E < 10239 then
                if E == 10238 then
                    k.CanCollide = H
                    E = 5
                else
                    E = 10231
                    continue
                end
            elseif E == 10239 then
                aO = State.noclipSnapshots[k]
                E = 0
            else
                E = 10231
                continue
            end
        else
            break
        end
    end
end
local function fn452()
    local w, G
    local T = 6
    while true do
        T += 7086
        if T < 7090 then
            if T < 5392 then
                break
            elseif T < 7087 then
                if T < 7086 then
                    break
                elseif T == 7086 then
                    local R = InventoryServiceClient:upgradeItem(w.itemId, w.variantId)
                    w = R ~= false
                    G = R ~= nil
                    T = if G then 7 else 2
                else
                    T = 4285
                    continue
                end
            elseif T < 7088 then
                if T == 7087 then
                    w = o()
                    T = if not w then 3 else 0
                else
                    T = 7090
                    continue
                end
            elseif T < 7089 then
                if T == 7088 then
                    return G
                end
                T = 1225
                continue
            elseif T == 7089 then
                return false
            else
                T = 11341
                continue
            end
        elseif T < 8427 then
            if T < 7092 then
                if T < 7091 then
                    break
                elseif T == 7091 then
                    return false
                else
                    T = 7089
                    continue
                end
            elseif T < 7093 then
                local aA = if InventoryServiceClient.upgradingAll then 1 else 0
                local ax = 3604 * aA + 852 * (1 - aA)
                local P = 336 * aA + 1690 * (1 - aA)
                T = if (ax * 1473 + P * 3664 + ax * P) % 16777213 == 7750740 then 5 else 1
            elseif T < 8169 then
                if T == 7093 then
                    G = w
                    T = 2
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
local function fn458()
    connection2:Disconnect()
end
local function fn496(e, c)
    local aZ = 3
    while true do
        aZ += 12104
        if aZ < 12105 then
            if aZ < 11201 then
                break
            elseif aZ < 12028 then
                break
            elseif aZ < 12104 then
                break
            elseif aZ == 12104 then
                return e.id < c.id
            else
                aZ = 12028
                continue
            end
        elseif aZ < 13487 then
            if aZ < 12106 then
                break
            elseif aZ < 12107 then
                if aZ == 12106 then
                    return e.levelReq < c.levelReq
                end
                aZ = 1943
                continue
            elseif aZ == 12107 then
                aZ = if e.levelReq == c.levelReq then 0 else 2
            else
                aZ = 12028
                continue
            end
        else
            break
        end
    end
end
local function fn526(l)
    D.setClickInterval(l)
end
local function fn529(k)
    local J = k .. "Token"
    local aB = State[k .. "Token"]
    local o = if aB then 1 else 0
    local aj = 2109 * o + 2526 * (1 - o)
    local aZ = 1914 * o + 1482 * (1 - o)
    if not ((aj * 1849 + aZ * 548 + aj * aZ) % 16777213 == 8985039) then
        aB = 0
    end
    State[J] = aB + 1
end
local function fn535()
    local J, V, w, aP
    local ac = 11
    while true do
        ac += 10514
        if ac < 10517 then
            if ac < 8945 then
                break
            elseif ac < 10514 then
                break
            elseif ac < 10515 then
                if ac == 10514 then
                    aP = tostring(w)
                    ac = 6
                else
                    ac = 10525
                    continue
                end
            elseif ac < 10516 then
                if ac == 10515 then
                    r:Notify({ Title = ah, Content = aP, Type = V, Duration = 3 })
                    ac = 8
                else
                    ac = 8696
                    continue
                end
            elseif ac == 10516 then
                V = "Warning"
                ac = 1
            else
                ac = 8945
                continue
            end
        elseif ac < 10522 then
            if ac < 10519 then
                if ac < 10518 then
                    aP = w
                    ac = if aP then 6 else 5
                else
                    w = "Teleported."
                    ac = 3
                end
            elseif ac < 10520 then
                if ac == 10519 then
                    w = J
                    ac = if w then 0 else 7
                else
                    ac = 10516
                    continue
                end
            elseif ac < 10521 then
                if ac == 10520 then
                    J = V
                    ac = if J then 9 else 10
                else
                    ac = 10522
                    continue
                end
            else
                w = "Teleport failed."
                ac = 0
            end
        elseif ac < 10524 then
            if ac < 10523 then
                break
            elseif ac == 10523 then
                J = "Success"
                ac = 10
            else
                ac = 10518
                continue
            end
        elseif ac < 10525 then
            V = J
            ac = if V then 1 else 2
        elseif ac < 11026 then
            if ac == 10525 then
                V, J = D.teleportSelectedZone()
                w = V
                ac = if w then 4 else 3
            else
                break
            end
        else
            break
        end
    end
end
local function fn537(l)
    D.setAutoClaimIndex(l)
end
local function fn548(j)
    State.walkSpeedEnabled = j == true
    R()
end
local function fn592()
    local aT = 0
    while true do
        aT += 11918
        if aT < 11919 then
            if aT < 6767 then
                break
            elseif aT < 11889 then
                break
            elseif aT < 11918 then
                break
            else
                local y
                local aV = -math.huge
                local ad = C()
                local c7 = k
                for k, v in c7 do
                    local s = ButtonInfo[v]
                    if s and s.levelReq <= ad and s.levelReq >= aV then
                        aV = s.levelReq
                        y = v
                    end
                end
                return y
            end
        else
            break
        end
    end
end
local function fn603(f)
    local L = {}
    if f then
        table.insert(L, "Nearest")
        table.insert(L, "Best Owned")
    end
    local c9 = k
    for k, v in c9 do
        table.insert(L, ac(v))
    end
    return L
end
local function fn608()
    assert((function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_27 = bit32.bxor(g, m)
            g = bit32.band(g_27 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_28 = bit32.bxor(g, n)
            g = bit32.band(g_28 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(loadstring), 8, 2851454103, "function"), "loadstring unavailable")
    return loadstring(game:HttpGet(j))()
end
local function fn629(l)
    D.setAutoEquipBest(l)
end
local function fn631(g)
    local u = g or ap()
    g = u
    local U = if not g then 1 else 0
    local au = 2827 * U + 707 * (1 - U)
    local o = 470 * U + 2328 * (1 - U)
    if (au * 510 + o * 2547 + au * o) % 16777213 == 3967550 then
        return nil
    end
    return g:FindFirstChildOfClass("Humanoid")
end
local function fn633(j)
    State.autoClick = j == true
    local z = if State.autoClick then 1 else 0
    local ag = 2948 * z + 764 * (1 - z)
    local aK = 2849 * z + 3324 * (1 - z)
    if (ag * 3012 + aK * 2861 + ag * aK) % 16777213 == 8652004 then
        V("autoClick", function()
            local aU = State.clickInterval or 0.12
            return math.max(aU, 0.05)
        end, function()
            if not State.autoClick then
                return
            end
            local aG = U()
            if aG then
                K(aG)
            end
        end)
    else
        ad("autoClick")
    end
end
local function fn641()
    local zoneMode = State.zoneMode
    if (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_35 = bit32.bxor(g, m)
            g = bit32.band(g_35 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_36 = bit32.bxor(g, n)
            g = bit32.band(g_36 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(zoneMode, 10, 1249155942, "Best Owned") then
        return G()
    else
        local W = if (function(j, c, e, l)
            if type(j) ~= "string" then
                return false
            end
            if #j ~= c then
                return false
            end
            local g = 5381
            local f = buffer.fromstring(j)
            local k = 0
            while k <= c - 4 do
                local m = buffer.readu32(f, k)
                local g_33 = bit32.bxor(g, m)
                g = bit32.band(g_33 * 33, 4294967295)
                k = k + 4
            end
            while k < c do
                local n = buffer.readu8(f, k)
                local g_34 = bit32.bxor(g, n)
                g = bit32.band(g_34 * 33, 4294967295)
                k = k + 1
            end
            if g ~= e then
                return false
            end
            return j == l
        end)(zoneMode, 7, 2868621577, "Nearest") then 1 else 0
        local X = 1094 * W + 4079 * (1 - W)
        local aJ = 3625 * W + 2149 * (1 - W)
        if (X * 3428 + aJ * 3884 + X * aJ) % 16777213 == 5018269 then
            local ax_3 = ButtonSlice.activeButton()
            local aE = (function(j, c, e, l)
                if type(j) ~= "string" then
                    return false
                end
                if #j ~= c then
                    return false
                end
                local g = 5381
                local f = buffer.fromstring(j)
                local k = 0
                while k <= c - 4 do
                    local m = buffer.readu32(f, k)
                    local g_31 = bit32.bxor(g, m)
                    g = bit32.band(g_31 * 33, 4294967295)
                    k = k + 4
                end
                while k < c do
                    local n = buffer.readu8(f, k)
                    local g_32 = bit32.bxor(g, n)
                    g = bit32.band(g_32 * 33, 4294967295)
                    k = k + 1
                end
                if g ~= e then
                    return false
                end
                return j == l
            end)(type(ax_3), 6, 2175009567, "string") and an(ax_3)
            if aE then
                return ax_3
            end
            return client.activeButton()
        else
            local ax_4 = ((function(j, c, e, l)
                if type(j) ~= "string" then
                    return false
                end
                if #j ~= c then
                    return false
                end
                local g = 5381
                local f = buffer.fromstring(j)
                local k = 0
                while k <= c - 4 do
                    local m = buffer.readu32(f, k)
                    local g_29 = bit32.bxor(g, m)
                    g = bit32.band(g_29 * 33, 4294967295)
                    k = k + 4
                end
                while k < c do
                    local n = buffer.readu8(f, k)
                    local g_30 = bit32.bxor(g, n)
                    g = bit32.band(g_30 * 33, 4294967295)
                    k = k + 1
                end
                if g ~= e then
                    return false
                end
                return j == l
            end)(type(zoneMode), 6, 2175009567, "string"))
            local W_1 = if ax_4 then 1 else 0
            local X_2 = 462 * W_1 + 988 * (1 - W_1)
            local aJ_1 = 1742 * W_1 + 281 * (1 - W_1)
            if (X_2 * 2443 + aJ_1 * 2230 + X_2 * aJ_1) % 16777213 == 5818130 then
                ax_4 = an(zoneMode)
            end
            if ax_4 then
                return zoneMode
            end
            return nil
        end
    end
end
local function fn648()
    local K = X()
    if not K then
        return
    end
    aq(K)
    if State.walkSpeedEnabled then
        K.WalkSpeed = State.walkSpeed
    elseif State.walkSpeedSnapshots and State.walkSpeedSnapshots[K] ~= nil then
        K.WalkSpeed = State.walkSpeedSnapshots[K]
    end
end
local function fn665(f)
    return ButtonUtils.canAccessButton(f, C())
end
local function onCharacterAdded()
    task.defer(function()
        if J.Unloaded then
            return
        end
        R()
        if State.fly then
            u.setFly(true)
        end
        if State.noclip then
            u.setNoclip(true)
        end
    end)
end
local function fn708()
    local Group3 = P:AddLeftGroupbox({ Name = "Movement", Icon = "move" })
    Group3:CreateToggle({
        Name = "WalkSpeed",
        CurrentValue = false,
        Flag = "WalkSpeedEnabled",
        Callback = function(l)
            u.setWalkSpeedEnabled(l)
        end
    })
    Group3:CreateSlider({
        Name = "Speed",
        Range = { 16, 250 },
        Increment = 1,
        CurrentValue = 32,
        Flag = "WalkSpeed",
        Callback = function(l)
            u.setWalkSpeed(l)
        end
    })
    Group3:CreateToggle({
        Name = "Infinite Jump",
        CurrentValue = false,
        Flag = "InfJump",
        Callback = function(l)
            u.setInfJump(l)
        end
    })
    Group3:CreateToggle({
        Name = "Noclip",
        CurrentValue = false,
        Flag = "NoClip",
        Callback = function(l)
            u.setNoclip(l)
        end
    })
    Group3:CreateToggle({
        Name = "Instant ProximityPrompt",
        CurrentValue = false,
        Flag = "InstantProximityPrompt",
        Callback = function(l)
            u.setInstantPrompt(l)
        end
    })
    local Group2 = P:AddRightGroupbox({ Name = "Fly", Icon = "plane" })
    Group2:CreateToggle({
        Name = "Fly",
        CurrentValue = false,
        Flag = "Fly",
        Callback = function(l)
            u.setFly(l)
        end
    })
    Group2:CreateSlider({
        Name = "Fly Speed",
        Range = { 10, 400 },
        Increment = 1,
        CurrentValue = 60,
        Flag = "FlySpeed",
        Callback = function(l)
            u.setFlySpeed(l)
        end
    })
    local Group = P:AddLeftGroupbox({ Name = "Client", Icon = "monitor" })
    Group:CreateToggle({
        Name = "No Gameplay Paused",
        CurrentValue = true,
        Flag = "AntiGameplayPause",
        Callback = function(l)
            u.setNoGameplayPaused(l)
        end
    })
    Group:CreateToggle({
        Name = "Auto Reconnect on Kick",
        CurrentValue = false,
        Flag = "AutoReconnect",
        Callback = function(l)
            u.setAutoReconnect(l)
        end
    })
    Group:CreateToggle({
        Name = "Disable 3D Rendering",
        CurrentValue = false,
        Flag = "Disable3DRendering",
        Callback = function(l)
            u.setDisable3D(l)
        end
    })
    Group:CreateToggle({
        Name = "FPS Boost",
        CurrentValue = false,
        Flag = "FpsBoost",
        Callback = function(l)
            u.setFpsBoost(l)
        end
    })
    Group:CreateToggle({
        Name = "Hide UI On Start",
        CurrentValue = false,
        Flag = "HideUIOnStart",
        Callback = function() end
    })
end
local function fn736(j)
    State.autoEquipBest = j == true
    if State.autoEquipBest then
        V("autoEquipBest", function()
            return 1.5
        end, function()
            if State.autoEquipBest then
                B()
            end
        end)
    else
        ad("autoEquipBest")
    end
end
local function fn746()
    return LocalPlayer.Character
end
local function fn751(l)
    D.setAutoGoBestZone(l)
end
local function fn759(e)
    local ac
    local M = 5
    while true do
        M += 5639
        if M < 5646 then
            if M < 5641 then
                if M < 5179 then
                    break
                elseif M < 5639 then
                    break
                elseif M < 5640 then
                    return nil
                elseif M == 5640 then
                    ac = (e:FindFirstChild("HumanoidRootPart"))
                    M = if ac then 7 else 4
                else
                    M = 15952
                    continue
                end
            elseif M < 5643 then
                if M < 5642 then
                    e = ac
                    M = if not e then 0 else 1
                else
                    break
                end
            elseif M < 5644 then
                if M == 5643 then
                    ac = e.PrimaryPart
                    M = 7
                else
                    M = 5646
                    continue
                end
            elseif M < 5645 then
                if M == 5644 then
                    ac = e
                    M = if ac then 2 else 6
                else
                    M = 712
                    continue
                end
            else
                ac = ap()
                M = 2
            end
        elseif M < 12235 then
            if M < 5915 then
                if M < 5764 then
                    if M == 5646 then
                        return ac
                    end
                    break
                end
                break
            end
            break
        else
            break
        end
    end
end
local function fn761(f)
    local aC = ButtonInfo[f]
    if not aC then
        return f
    else
        local name = aC.name
        local levelReq = aC.levelReq
        return string.format("%s (Lv %d)", name, levelReq)
    end
end
local function fn788(k)
    State.autoCollectLoot = k == true
    if State.autoCollectLoot then
        V("autoCollectLoot", function()
            return 0.4
        end, function()
            local af = 0
            while true do
                af += 13279
                if af < 10765 then
                    break
                elseif af < 13281 then
                    if af < 13279 then
                        break
                    elseif af < 13280 then
                        if af == 13279 then
                            af = if State.autoCollectLoot then 2 else 3
                        else
                            af = 7695
                            continue
                        end
                    else
                        break
                    end
                elseif af < 13366 then
                    if af < 13282 then
                        if af == 13281 then
                            Y()
                            af = 3
                        else
                            af = 13366
                            continue
                        end
                    elseif af == 13282 then
                        af = 1
                    else
                        af = 7695
                        continue
                    end
                else
                    break
                end
            end
        end)
    else
        ad("autoCollectLoot")
    end
end
local function fn793(e, g)
    return UpgradeServiceClient:ownsUpgrade(e, g)
end
local function fn811(j)
    local ao = tonumber(j) or 60
    State.flySpeed = math.clamp(ao, 10, 400)
end
local function fn813()
    local coins = Currencies.coins
    if coins and coins.value then
        return coins.value(client)()
    end
    return client.coins()
end
local function fn827(f)
    local aQ, N
    local ad = 1
    while true do
        ad += 708
        if ad < 1918 then
            if ad < 714 then
                if ad < 711 then
                    if ad < 709 then
                        if ad == 708 then
                            aQ = Instance.new("ScreenGui")
                            aQ.Name = "OuroborosDisable3DBacking"
                            aQ.IgnoreGuiInset = true
                            aQ.DisplayOrder = -100
                            aQ.ResetOnSpawn = false
                            N = Instance.new("Frame")
                            N.BackgroundColor3 = Color3.new(0, 0, 0)
                            N.Size = UDim2.fromScale(1, 1)
                            N.BorderSizePixel = 0
                            N.Parent = aQ
                            aQ.Parent = LocalPlayer:WaitForChild("PlayerGui")
                            State.disable3DBacking = aQ
                            ad = 8
                        else
                            ad = 12660
                            continue
                        end
                    elseif ad < 710 then
                        State.disable3D = f == true
                        aQ = pcall(function()
                            RunService:Set3dRenderingEnabled(not State.disable3D)
                        end)
                        N = not aQ
                        ad = if N then 5 else 9
                    elseif ad == 710 then
                        N = aQ
                        ad = 7
                    else
                        ad = 3470
                        continue
                    end
                elseif ad < 712 then
                    ad = if State.disable3DBacking then 10 else 4
                elseif ad < 713 then
                    N = State.disable3D
                    ad = if N then 2 else 7
                elseif ad == 713 then
                    N = State.disable3D
                    ad = 9
                else
                    ad = 12660
                    continue
                end
            elseif ad < 717 then
                if ad < 715 then
                    if ad == 714 then
                        warn("Tap Buttons: Set3dRenderingEnabled unavailable")
                        ad = 3
                    else
                        ad = 1918
                        continue
                    end
                elseif ad < 716 then
                    ad = if N then 0 else 8
                else
                    J.Track(function()
                        pcall(function()
                            RunService:Set3dRenderingEnabled(true)
                        end)
                        if State.disable3DBacking then
                            State.disable3DBacking:Destroy()
                            State.disable3DBacking = nil
                        end
                    end)
                    ad = 11
                end
            elseif ad < 718 then
                if ad == 717 then
                    ad = if N then 6 else 3
                else
                    ad = 4858
                    continue
                end
            elseif ad < 719 then
                if ad == 718 then
                    State.disable3DBacking:Destroy()
                    State.disable3DBacking = nil
                    ad = 4
                else
                    ad = 2771
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
local function fn836(l)
    local w = l
    if (function(j, c, e, l)
        if type(j) ~= "string" then
            return false
        end
        if #j ~= c then
            return false
        end
        local g = 5381
        local f = buffer.fromstring(j)
        local k = 0
        while k <= c - 4 do
            local m = buffer.readu32(f, k)
            local g_37 = bit32.bxor(g, m)
            g = bit32.band(g_37 * 33, 4294967295)
            k = k + 4
        end
        while k < c do
            local n = buffer.readu8(f, k)
            local g_38 = bit32.bxor(g, n)
            g = bit32.band(g_38 * 33, 4294967295)
            k = k + 1
        end
        if g ~= e then
            return false
        end
        return j == l
    end)(type(l), 5, 248602996, "table") then
        w = l[1]
    end
    D.setZoneMode(w)
end
local function fn845(l)
    D.setAutoBuyUpgrades(l)
end
local function fn851(k)
    local N, X
    local aN = 5
    while true do
        aN += 13150
        if aN < 13026 then
            break
        elseif aN < 13153 then
            if aN < 13151 then
                if aN < 13150 then
                    break
                end
                State.teleportZone = N
                aN = 2
            elseif aN < 13152 then
                break
            else
                aN = 1
            end
        elseif aN < 13155 then
            if aN < 13154 then
                X = ButtonInfo[N]
                aN = 4
            else
                aN = if X then 0 else 2
            end
        elseif aN < 13190 then
            if aN == 13155 then
                N = m(k)
                X = ((function(j, c, e, l)
                    if type(j) ~= "string" then
                        return false
                    end
                    if #j ~= c then
                        return false
                    end
                    local g = 5381
                    local f = buffer.fromstring(j)
                    local k = 0
                    while k <= c - 4 do
                        local m = buffer.readu32(f, k)
                        local g_39 = bit32.bxor(g, m)
                        g = bit32.band(g_39 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < c do
                        local n = buffer.readu8(f, k)
                        local g_40 = bit32.bxor(g, n)
                        g = bit32.band(g_40 * 33, 4294967295)
                        k = k + 1
                    end
                    if g ~= e then
                        return false
                    end
                    return j == l
                end)(type(N), 6, 2175009567, "string"))
                aN = if X then 3 else 4
            else
                break
            end
        else
            break
        end
    end
end
local function fn854(k)
    State.autoBuyUpgrades = k == true
    if State.autoBuyUpgrades then
        V("autoBuyUpgrades", function()
            return 0.35
        end, function()
            local az = if State.autoBuyUpgrades then 1 else 0
            local E = 1869 * az + 1896 * (1 - az)
            local av = 2932 * az + 963 * (1 - az)
            if (E * 3856 + av * 944 + E * av) % 16777213 == 15454580 then
                t()
            end
        end)
    else
        ad("autoBuyUpgrades")
    end
end
local function fn878()
    if UpgradeServiceClient.purchasePending then
        return false
    end
    local aJ = F()
    local ap = aJ[1]
    if not ap then
        return false
    end
    return UpgradeServiceClient:buyUpgrade(ap) == true
end
local function fn883(l)
    D.setUpgradeCoinReserve(l)
end
local function fn921(l)
    local aO
    local ah = 1
    while true do
        ah += 3502
        if ah < 7865 then
            if ah < 3504 then
                if ah < 3502 then
                    break
                elseif ah < 3503 then
                    break
                elseif ah == 3503 then
                    aO = l
                    ah = if (function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_41 = bit32.bxor(g, m)
                            g = bit32.band(g_41 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_42 = bit32.bxor(g, n)
                            g = bit32.band(g_42 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(type(l), 5, 248602996, "table") then 3 else 2
                else
                    ah = 3504
                    continue
                end
            elseif ah < 3547 then
                if ah < 3505 then
                    D.setTeleportZone(aO)
                    ah = 0
                elseif ah == 3505 then
                    aO = l[1]
                    ah = 2
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
local function fn926(j)
    local Z
    local N = 0
    while true do
        N += 2107
        if N < 6106 then
            if N < 4156 then
                if N < 2109 then
                    if N < 2108 then
                        if N == 2107 then
                            Z = (tonumber(j))
                            N = if Z then 2 else 3
                        else
                            break
                        end
                    else
                        break
                    end
                elseif N < 2110 then
                    if N == 2109 then
                        local dJ = math.floor(Z)
                        State.upgradeMinKeep = math.max(dJ, 0)
                        N = 1
                    else
                        N = 4896
                        continue
                    end
                elseif N == 2110 then
                    Z = 0
                    N = 2
                else
                    N = 15658
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
m = nil
InventoryServiceUtils = nil
k = nil
j = nil
o = nil
p = nil
TeleporterServiceClient = nil
r = nil
t = nil
u = nil
InventoryServiceClient = nil
State = nil
x = nil
z = nil
B = nil
C = nil
D = nil
E = nil
F = nil
G = nil
H = nil
ButtonUtils = nil
J = nil
K = nil
IndexRewardUtils = nil
UserInputService = nil
N = nil
O = nil
P = nil
ButtonSlice = nil
R = nil
IndexServiceClient = nil
RunService = nil
U = nil
V = nil
ButtonServiceClient = nil
X = nil
Y = nil
UpgradeTrees = nil
connection2 = nil
client = nil
ac = nil
ad = nil
LocalPlayer = nil
Window = nil
Currencies = nil
local n, TeleportService, LootServiceClient, GuiService
ah = nil
ai = nil
UpgradeServiceClient = nil
ItemVariantUtils = nil
am = nil
an = nil
ButtonInfo = nil
ap = nil
aq = nil
local Lighting, aC, aD
local Group3
local Group2
local as_2
if not game:IsLoaded() then
    game.Loaded:Wait()
end
ah, j, RunService, UserInputService, GuiService, TeleportService, Lighting, LocalPlayer, ButtonInfo, Currencies, ButtonServiceClient, ButtonSlice, ButtonUtils, InventoryServiceClient, InventoryServiceUtils, UpgradeServiceClient, UpgradeTrees, IndexServiceClient, IndexRewardUtils, LootServiceClient, TeleporterServiceClient, ItemVariantUtils, client, J, State, k = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
aD = "v0.2"
ah = "Tap Buttons"
local ax_1 = "OuroborosTapButtons"
local aA = "https://discord.gg/synapsex"
local az_1 = "https://ouroboros-hub-rbx.web.app/"
j = "https://raw.githubusercontent.com/joustingmatch/OuroFlow/main/Source.luau"
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
GuiService = game:GetService("GuiService")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
LocalPlayer = Players.LocalPlayer
local Source = ReplicatedStorage:WaitForChild("Source")
local Features = Source:WaitForChild("Features")
local Game = Source:WaitForChild("Game")
local Data = require(Game.Data)
ButtonInfo = require(Game.Items.ButtonInfo)
Currencies = require(Game.Items.Currencies)
ButtonServiceClient = require(Features.Buttons.ButtonServiceClient)
ButtonSlice = require(Features.Buttons.ButtonSlice)
ButtonUtils = require(Features.Buttons.ButtonUtils)
InventoryServiceClient = require(Features.Inventory.InventoryServiceClient)
InventoryServiceUtils = require(Features.Inventory.InventoryServiceUtils)
UpgradeServiceClient = require(Features.Upgrades.UpgradeServiceClient)
UpgradeTrees = require(Features.Upgrades.Modules.UpgradeTrees)
IndexServiceClient = require(Features.Index.IndexServiceClient)
IndexRewardUtils = require(Features.Index.IndexRewardUtils)
LootServiceClient = require(Features.Loot.LootServiceClient)
TeleporterServiceClient = require(Features.Teleporter.TeleporterServiceClient)
ItemVariantUtils = require(Features.ItemVariants.ItemVariantUtils)
client = Data.client
local function ay_1(c)
    local aR
    local aQ
    local F
    local aK, av, R, aW, aB, aq
    local am = 0
    while true do
        am += 12548
        if am < 12553 then
            if am < 12548 then
                break
            elseif am < 12550 then
                if am < 12549 then
                    if am == 12548 then
                        local fr = type(c)
                        local ft = (function(j, c, e, l)
                            if type(j) ~= "string" then
                                return false
                            end
                            if #j ~= c then
                                return false
                            end
                            local g = 5381
                            local f = buffer.fromstring(j)
                            local k = 0
                            while k <= c - 4 do
                                local m = buffer.readu32(f, k)
                                local g_55 = bit32.bxor(g, m)
                                g = bit32.band(g_55 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < c do
                                local n = buffer.readu8(f, k)
                                local g_56 = bit32.bxor(g, n)
                                g = bit32.band(g_56 * 33, 4294967295)
                                k = k + 1
                            end
                            if g ~= e then
                                return false
                            end
                            return j == l
                        end)(fr, 6, 2175009567, "string")
                        aK = not (function(j, c, e, l)
                            if type(j) ~= "string" then
                                return false
                            end
                            if #j ~= c then
                                return false
                            end
                            local g = 5381
                            local f = buffer.fromstring(j)
                            local k = 0
                            while k <= c - 4 do
                                local m = buffer.readu32(f, k)
                                local g_53 = bit32.bxor(g, m)
                                g = bit32.band(g_53 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < c do
                                local n = buffer.readu8(f, k)
                                local g_54 = bit32.bxor(g, n)
                                g = bit32.band(g_54 * 33, 4294967295)
                                k = k + 1
                            end
                            if g ~= e then
                                return false
                            end
                            return j == l
                        end)(c, 0, 5381, "")
                        av = ft
                        aq = if av then 1 else 0
                        aW = 2468 * aq + 3403 * (1 - aq)
                        am = 8
                    else
                        am = 12558
                        continue
                    end
                elseif am == 12549 then
                    av = aK
                    am = 7
                else
                    am = 2587
                    continue
                end
            elseif am < 12551 then
                if am == 12550 then
                    local fx = tostring(R)
                    warn("Previous cleanup: " .. fx)
                    am = 6
                else
                    am = 16093
                    continue
                end
            elseif am < 12552 then
                am = if (aW * 1696 + aB * 2225 + aW * aB) % 16777213 == 4340859 then 1 else 7
            else
                break
            end
        elseif am < 12558 then
            if am < 12555 then
                if am < 12554 then
                    if am == 12553 then
                        av = (function(j, c, e, l)
                            if type(j) ~= "string" then
                                return false
                            end
                            if #j ~= c then
                                return false
                            end
                            local g = 5381
                            local f = buffer.fromstring(j)
                            local k = 0
                            while k <= c - 4 do
                                local m = buffer.readu32(f, k)
                                local g_51 = bit32.bxor(g, m)
                                g = bit32.band(g_51 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < c do
                                local n = buffer.readu8(f, k)
                                local g_52 = bit32.bxor(g, n)
                                g = bit32.band(g_52 * 33, 4294967295)
                                k = k + 1
                            end
                            if g ~= e then
                                return false
                            end
                            return j == l
                        end)(type(aK.Unload), 8, 2851454103, "function")
                        am = 10
                    else
                        am = 14950
                        continue
                    end
                elseif am == 12554 then
                    am = 9
                else
                    am = 12557
                    continue
                end
            elseif am < 12556 then
                if am == 12555 then
                    assert(av, "Namespace is required")
                    assert((function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_49 = bit32.bxor(g, m)
                            g = bit32.band(g_49 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_50 = bit32.bxor(g, n)
                            g = bit32.band(g_50 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(type(getgenv), 8, 2851454103, "function"), "getgenv is unavailable")
                    aR = getgenv()
                    assert((function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_47 = bit32.bxor(g, m)
                            g = bit32.band(g_47 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_48 = bit32.bxor(g, n)
                            g = bit32.band(g_48 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(type(aR), 5, 248602996, "table"), "getgenv did not return a table")
                    aK = aR[c]
                    local A = if aK ~= nil then 1 else 0
                    local af = 2116 * A + 3289 * (1 - A)
                    local aG = 354 * A + 1891 * (1 - A)
                    am = if (af * 33 + aG * 503 + af * aG) % 16777213 == 996954 then 11 else 9
                else
                    am = 16093
                    continue
                end
            elseif am < 12557 then
                aB = 3608 * aq + 2587 * (1 - aq)
                am = 3
            else
                aQ = {}
                F = { State = {}, Unloaded = false }
                F.Track = function(c)
                    local v_1
                    local N_2
                    assert((function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_45 = bit32.bxor(g, m)
                            g = bit32.band(g_45 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_46 = bit32.bxor(g, n)
                            g = bit32.band(g_46 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(type(c), 8, 2851454103, "function"), "Cleanup must be callable")
                    if F.Unloaded then
                        N_2, v_1 = pcall(c)
                        if not N_2 then
                            local fE = tostring(v_1)
                            warn("Cleanup: " .. fE)
                        end
                    else
                        table.insert(aQ, c)
                    end
                    return c
                end
                F.Unload = function()
                    local Z, I, as, aS
                    local x_1
                    local ao = 12
                    while true do
                        ao += 6932
                        if ao < 6937 then
                            if ao < 6935 then
                                if ao < 6934 then
                                    if ao < 3698 then
                                        break
                                    elseif ao < 6932 then
                                        break
                                    elseif ao < 6933 then
                                        break
                                    elseif ao == 6933 then
                                        as += I
                                        ao = 5
                                    else
                                        ao = 6937
                                        continue
                                    end
                                else
                                    aS = as
                                    ao = 7
                                end
                            elseif ao < 6936 then
                                local fG = tostring(Z)
                                warn("Cleanup: " .. fG)
                                ao = 4
                            elseif ao == 6936 then
                                ao = 1
                            else
                                ao = 3567
                                continue
                            end
                        elseif ao < 6941 then
                            if ao < 6939 then
                                if ao < 6938 then
                                    ao = if I > 0 and as <= 1 or I <= 0 and as >= 1 then 2 else 10
                                else
                                    return
                                end
                            elseif ao < 6940 then
                                if ao == 6939 then
                                    local az_2 = table.remove(aQ, aS)
                                    x_1, Z = pcall(az_2)
                                    ao = if not x_1 then 3 else 4
                                else
                                    ao = 16177
                                    continue
                                end
                            elseif ao == 6940 then
                                ao = 0
                            else
                                ao = 15195
                                continue
                            end
                        elseif ao < 6944 then
                            if ao < 6942 then
                                aR[c] = nil
                                ao = 8
                            elseif ao < 6943 then
                                table.clear(F.State)
                                ao = if aR[c] == F then 9 else 8
                            else
                                F.Unloaded = true
                                local az_3 = #aQ
                                local x_2 = -1
                                as = az_3
                                I = x_2
                                ao = 5
                            end
                        elseif ao < 14092 then
                            if ao < 9869 then
                                if ao < 8294 then
                                    if ao == 6944 then
                                        ao = if F.Unloaded then 6 else 11
                                    else
                                        ao = 16177
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
                aR[c] = F
                return F
            end
        elseif am < 14950 then
            if am < 12559 then
                assert(av, "Namespace is occupied")
                av, R = pcall(aK.Unload)
                am = if not av then 2 else 6
            elseif am == 12559 then
                av = ((function(j, c, e, l)
                    if type(j) ~= "string" then
                        return false
                    end
                    if #j ~= c then
                        return false
                    end
                    local g = 5381
                    local f = buffer.fromstring(j)
                    local k = 0
                    while k <= c - 4 do
                        local m = buffer.readu32(f, k)
                        local g_43 = bit32.bxor(g, m)
                        g = bit32.band(g_43 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < c do
                        local n = buffer.readu8(f, k)
                        local g_44 = bit32.bxor(g, n)
                        g = bit32.band(g_44 * 33, 4294967295)
                        k = k + 1
                    end
                    if g ~= e then
                        return false
                    end
                    return j == l
                end)(type(aK), 5, 248602996, "table"))
                am = if av then 5 else 10
            else
                break
            end
        else
            break
        end
    end
end
aC = function(c, e)
    local connection
    local aD
    local J = 6
    while true do
        J += 13951
        if J < 13952 then
            if J < 4885 then
                break
            elseif J < 10312 then
                break
            elseif J < 13951 then
                break
            else
                aD = (function(j, c, e, l)
                    if type(j) ~= "string" then
                        return false
                    end
                    if #j ~= c then
                        return false
                    end
                    local g = 5381
                    local f = buffer.fromstring(j)
                    local k = 0
                    while k <= c - 4 do
                        local m = buffer.readu32(f, k)
                        local g_65 = bit32.bxor(g, m)
                        g = bit32.band(g_65 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < c do
                        local n = buffer.readu8(f, k)
                        local g_66 = bit32.bxor(g, n)
                        g = bit32.band(g_66 * 33, 4294967295)
                        k = k + 1
                    end
                    if g ~= e then
                        return false
                    end
                    return j == l
                end)(type(e.Destroy), 8, 2851454103, "function")
                J = 2
            end
        elseif J < 13955 then
            if J < 13953 then
                connection = aD.Destroying:Connect(function()
                    task.defer(c.Unload)
                end)
                c.Track(function()
                    connection:Disconnect()
                end)
                J = 5
            elseif J < 13954 then
                if J == 13953 then
                    assert(aD, "UI window required")
                    c.Track(function()
                        pcall(function()
                            e:Destroy()
                        end)
                    end)
                    aD = e.Gui
                    J = if (function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_63 = bit32.bxor(g, m)
                            g = bit32.band(g_63 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_64 = bit32.bxor(g, n)
                            g = bit32.band(g_64 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(typeof(aD), 8, 1471340621, "Instance") then 1 else 5
                else
                    J = 3537
                    continue
                end
            else
                assert(aD, "FeatureAPI required")
                aD = ((function(j, c, e, l)
                    if type(j) ~= "string" then
                        return false
                    end
                    if #j ~= c then
                        return false
                    end
                    local g = 5381
                    local f = buffer.fromstring(j)
                    local k = 0
                    while k <= c - 4 do
                        local m = buffer.readu32(f, k)
                        local g_61 = bit32.bxor(g, m)
                        g = bit32.band(g_61 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < c do
                        local n = buffer.readu8(f, k)
                        local g_62 = bit32.bxor(g, n)
                        g = bit32.band(g_62 * 33, 4294967295)
                        k = k + 1
                    end
                    if g ~= e then
                        return false
                    end
                    return j == l
                end)(type(e), 5, 248602996, "table"))
                J = if aD then 0 else 2
            end
        elseif J < 13957 then
            if J < 13956 then
                if J == 13955 then
                    aD = (function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_59 = bit32.bxor(g, m)
                            g = bit32.band(g_59 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_60 = bit32.bxor(g, n)
                            g = bit32.band(g_60 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(type(c.Track), 8, 2851454103, "function")
                    J = 3
                else
                    J = 4003
                    continue
                end
            elseif J == 13956 then
                J = 7
            else
                J = 13952
                continue
            end
        elseif J < 13958 then
            if J == 13957 then
                aD = ((function(j, c, e, l)
                    if type(j) ~= "string" then
                        return false
                    end
                    if #j ~= c then
                        return false
                    end
                    local g = 5381
                    local f = buffer.fromstring(j)
                    local k = 0
                    while k <= c - 4 do
                        local m = buffer.readu32(f, k)
                        local g_57 = bit32.bxor(g, m)
                        g = bit32.band(g_57 * 33, 4294967295)
                        k = k + 4
                    end
                    while k < c do
                        local n = buffer.readu8(f, k)
                        local g_58 = bit32.bxor(g, n)
                        g = bit32.band(g_58 * 33, 4294967295)
                        k = k + 1
                    end
                    if g ~= e then
                        return false
                    end
                    return j == l
                end)(type(c), 5, 248602996, "table"))
                J = if aD then 4 else 3
            else
                J = 4003
                continue
            end
        else
            break
        end
    end
end
J = ay_1(ax_1)
State = J.State
State.autoClick = false
State.clickInterval = 0.12
State.zoneMode = "Nearest"
State.teleportZone = "red"
State.autoEquipBest = false
State.autoBuyUpgrades = false
State.autoClaimIndex = false
State.autoCollectLoot = false
State.autoGoBestZone = false
State.autoUpgradeItems = false
State.upgradeCoinReserve = 0
State.upgradeMaxLevel = 0
State.upgradeMinKeep = 0
State.upgradeIncludeVariants = true
State.walkSpeedEnabled = false
State.walkSpeed = 32
State.infJump = false
State.noclip = false
State.instantPrompt = false
State.fly = false
State.flySpeed = 60
State.antiGameplayPause = true
State.autoReconnect = false
State.disable3D = false
State.fpsBoost = false
State.antiAfk = true
k = {}
local ar_2 = {}
for k, v in ButtonInfo do
    table.insert(ar_2, { id = k, levelReq = v.levelReq, name = v.name })
end
table.sort(ar_2, fn496)
for k2, v in ar_2 do
    table.insert(k, v.id)
end
D, u, x, ac, m, p, C, an, G, U, ap, X, n, z, O, K, B, am, F, t, H, Y, o, N, V, ad, aq, R, ai = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
ac = fn761
m = fn231
p = fn813
C = fn74
an = fn665
G = fn592
U = fn641
ap = fn746
X = fn631
n = fn759
z = fn395
O = fn374
K = fn236
B = fn355
am = fn793
F = fn174
t = fn878
H = fn38
Y = function()
    local ai, ar
    local ao_1
    local ag = 5
    while true do
        ag += 10211
        if ag < 10214 then
            if ag < 10213 then
                if ag < 10211 then
                    break
                elseif ag < 10212 then
                    if ag == 10211 then
                        return 0
                    end
                    ag = 10215
                    continue
                else
                    break
                end
            elseif ag == 10213 then
                local ai_1 = 40
                local E = 0
                local aC = #ar
                local aC_4
                local fP = 1
                for i = fP, aC, ai_1 do
                    local S
                    local O = i
                    if J.Unloaded or not State.autoCollectLoot then
                        break
                    else
                        S = table.create(math.min(ai_1, #ar - O + 1))
                        local aC_2 = 39
                        local R = 0
                        while R <= aC_2 do
                            local aC_3 = ar[O + R]
                            if aC_3 then
                                table.insert(S, aC_3)
                            end
                            R += 1
                        end
                        aC_4, ao_1 = pcall(function()
                            return LootServiceClient.networker:fetch("requestClaimLoot", S)
                        end)
                        local aU = aC_4 and (function(j, c, e, l)
                            if type(j) ~= "string" then
                                return false
                            end
                            if #j ~= c then
                                return false
                            end
                            local g = 5381
                            local f = buffer.fromstring(j)
                            local k = 0
                            while k <= c - 4 do
                                local m = buffer.readu32(f, k)
                                local g_71 = bit32.bxor(g, m)
                                g = bit32.band(g_71 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < c do
                                local n = buffer.readu8(f, k)
                                local g_72 = bit32.bxor(g, n)
                                g = bit32.band(g_72 * 33, 4294967295)
                                k = k + 1
                            end
                            if g ~= e then
                                return false
                            end
                            return j == l
                        end)(type(ao_1), 5, 248602996, "table") and (function(j, c, e, l)
                            if type(j) ~= "string" then
                                return false
                            end
                            if #j ~= c then
                                return false
                            end
                            local g = 5381
                            local f = buffer.fromstring(j)
                            local k = 0
                            while k <= c - 4 do
                                local m = buffer.readu32(f, k)
                                local g_69 = bit32.bxor(g, m)
                                g = bit32.band(g_69 * 33, 4294967295)
                                k = k + 4
                            end
                            while k < c do
                                local n = buffer.readu8(f, k)
                                local g_70 = bit32.bxor(g, n)
                                g = bit32.band(g_70 * 33, 4294967295)
                                k = k + 1
                            end
                            if g ~= e then
                                return false
                            end
                            return j == l
                        end)(type(ao_1.claimedUniqueIds), 5, 248602996, "table")
                        if aU then
                            local claimedUniqueIds = ao_1.claimedUniqueIds
                            for k, v in claimedUniqueIds do
                                local aq = v
                                E += 1
                                pcall(function()
                                    LootServiceClient:removeLootRecord(aq)
                                end)
                            end
                        end
                    end
                end
                return E
            else
                ag = 14515
                continue
            end
        elseif ag < 10216 then
            if ag < 10215 then
                return 0
            end
            ar = {}
            for k in ai do
                table.insert(ar, k)
            end
            ag = if (function(m, n)
                if type(m) ~= "number" then
                    return false
                end
                if m % 1 ~= 0 then
                    return false
                end
                local j = m < -2147483648
                if j then
                else
                    j = m > 2147483647
                end
                if j then
                    return false
                end
                local c_1 = bit32.bxor(m, 1540483477)
                local c_2 = bit32.band(c_1 * 403 + bit32.lshift(c_1, 24), 4294967295)
                local c_3 = bit32.bxor(c_2, bit32.rshift(c_2, 13))
                return c_3 == n
            end)(#ar, 544454170) then 0 else 2
        elseif ag < 13514 then
            if ag < 11100 then
                if ag == 10216 then
                    ai = LootServiceClient:getLootRecords()
                    ag = if not (function(j, c, e, l)
                        if type(j) ~= "string" then
                            return false
                        end
                        if #j ~= c then
                            return false
                        end
                        local g = 5381
                        local f = buffer.fromstring(j)
                        local k = 0
                        while k <= c - 4 do
                            local m = buffer.readu32(f, k)
                            local g_67 = bit32.bxor(g, m)
                            g = bit32.band(g_67 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < c do
                            local n = buffer.readu8(f, k)
                            local g_68 = bit32.bxor(g, n)
                            g = bit32.band(g_68 * 33, 4294967295)
                            k = k + 1
                        end
                        if g ~= e then
                            return false
                        end
                        return j == l
                    end)(type(ai), 5, 248602996, "table") then 3 else 4
                else
                    ag = 3355
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
o = fn443
N = fn452
V = function(k, j, e)
    local M
    if State[k .. "Token"] then
        State[k .. "Token"] += 1
    else
        State[k .. "Token"] = 1
    end
    M = State[k .. "Token"]
    task.spawn(function()
        local aM, r
        local F = 4
        while true do
            F += 9242
            if F < 9249 then
                if F < 9245 then
                    if F < 9243 then
                        if F < 9242 then
                            break
                        elseif F == 9242 then
                            F = 9
                        else
                            F = 9211
                            continue
                        end
                    elseif F < 9244 then
                        if F == 9243 then
                            aM = State[k .. "Token"] == M
                            F = 7
                        else
                            F = 9244
                            continue
                        end
                    else
                        break
                    end
                elseif F < 9248 then
                    if F < 9246 then
                        F = 8
                    elseif F < 9247 then
                        F = 9
                    else
                        aM, r = pcall(e)
                        F = if not aM then 11 else 6
                    end
                elseif F == 9248 then
                    task.wait(j())
                    F = 0
                else
                    F = 9246
                    continue
                end
            elseif F < 9253 then
                if F < 9252 then
                    if F < 9250 then
                        if F == 9249 then
                            F = if aM then 5 else 3
                        else
                            F = 9243
                            continue
                        end
                    elseif F < 9251 then
                        F = 2
                    elseif F == 9251 then
                        F = 10
                    else
                        F = 9243
                        continue
                    end
                elseif F == 9252 then
                    aM = not J.Unloaded
                    F = if aM then 1 else 7
                else
                    F = 9243
                    continue
                end
            elseif F < 11946 then
                if F == 9253 then
                    warn(string.format("[%s] %s: %s", ah, k, tostring(r)))
                    F = 6
                else
                    F = 1487
                    continue
                end
            else
                break
            end
        end
    end)
end
ad = fn529
D = {}
D.setAutoClick = fn633
D.setClickInterval = fn391
D.setZoneMode = fn397
D.setTeleportZone = fn851
D.teleportSelectedZone = fn385
D.setAutoEquipBest = fn736
D.setAutoBuyUpgrades = fn854
D.setAutoClaimIndex = fn248
D.setAutoCollectLoot = fn788
D.setAutoGoBestZone = fn267
D.setAutoUpgradeItems = fn366
D.setUpgradeCoinReserve = fn263
D.setUpgradeMaxLevel = fn268
D.setUpgradeMinKeep = fn926
D.setUpgradeIncludeVariants = fn183
u = {}
aq = fn323
R = fn648
u.setWalkSpeedEnabled = fn548
u.setWalkSpeed = fn35
u.setInfJump = fn431
ai = fn446
u.setNoclip = fn369
u.setInstantPrompt = fn44
u.setFly = function(k)
    local bodyVelocity
    State.fly = k == true
    local y = if State.flyHeartbeat then 1 else 0
    local aL = 2213 * y + 1808 * (1 - y)
    local aD = 52 * y + 2450 * (1 - y)
    if (aL * 3462 + aD * 2907 + aL * aD) % 16777213 == 7927646 then
        State.flyHeartbeat:Disconnect()
        State.flyHeartbeat = nil
    end
    local av = ap()
    local am = X(av)
    local ab = n(av)
    local y_2 = if not State.fly then 1 else 0
    local aL_1 = 1017 * y_2 + 2669 * (1 - y_2)
    local aD_1 = 2127 * y_2 + 3215 * (1 - y_2)
    if (aL_1 * 2542 + aD_1 * 639 + aL_1 * aD_1) % 16777213 == 6107526 then
        if am and State.flyPlatformStand ~= nil then
            am.PlatformStand = State.flyPlatformStand
        end
        State.flyPlatformStand = nil
        if ab and State.flyBodyVelocity then
            State.flyBodyVelocity:Destroy()
            State.flyBodyVelocity = nil
        end
        return
    end
    local y_3 = if not (am and ab) then 1 else 0
    local aL_2 = 2508 * y_3 + 3197 * (1 - y_3)
    local aD_2 = 1075 * y_3 + 3726 * (1 - y_3)
    if (aL_2 * 1825 + aD_2 * 2768 + aL_2 * aD_2) % 16777213 == 10248800 then
        return
    end
    State.flyPlatformStand = am.PlatformStand
    am.PlatformStand = true
    if State.flyBodyVelocity then
        State.flyBodyVelocity:Destroy()
    end
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = ab
    State.flyBodyVelocity = bodyVelocity
    State.flyHeartbeat = RunService.RenderStepped:Connect(function()
        if J.Unloaded or not State.fly then
            return
        end
        if UserInputService:GetFocusedTextBox() then
            bodyVelocity.Velocity = Vector3.zero
            return
        end
        local CurrentCamera = workspace.CurrentCamera
        local o = n()
        if not (CurrentCamera and o and bodyVelocity.Parent) then
            return
        end
        local o_5 = Vector3.zero
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            o_5 += CurrentCamera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            o_5 -= CurrentCamera.CFrame.LookVector
        end
        local Y = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
        if Y == 1 then
            o_5 -= CurrentCamera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            o_5 += CurrentCamera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            o_5 += Vector3.yAxis
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            o_5 -= Vector3.yAxis
        end
        if o_5.Magnitude > 0 then
            bodyVelocity.Velocity = o_5.Unit * State.flySpeed
        else
            bodyVelocity.Velocity = Vector3.zero
        end
    end)
    J.Track(function()
        u.setFly(false)
    end)
end
u.setFlySpeed = fn811
u.setNoGameplayPaused = function(k)
    local gameplayPauseToken, aN
    local ax = 4
    while true do
        ax += 4947
        if ax < 4954 then
            if ax < 4948 then
                if ax < 2030 then
                    break
                elseif ax < 3427 then
                    break
                elseif ax < 4947 then
                    break
                elseif ax == 4947 then
                    aN = State.gameplayPauseToken
                    ax = if aN then 2 else 6
                else
                    ax = 11934
                    continue
                end
            elseif ax < 4951 then
                if ax < 4949 then
                    aN = State.gameplayPauseToken
                    local aU = if aN then 1 else 0
                    local U = 2052 * aU + 2206 * (1 - aU)
                    local an = 1100 * aU + 2830 * (1 - aU)
                    ax = if (U * 4063 + an * 2554 + U * an) % 16777213 == 13403876 then 7 else 5
                elseif ax < 4950 then
                    State.gameplayPauseToken = aN + 1
                    State.gameplayPauseThread = nil
                    ax = 8
                else
                    return
                end
            elseif ax < 4952 then
                if ax == 4951 then
                    State.antiGameplayPause = k == true
                    ax = if State.gameplayPauseThread then 0 else 8
                else
                    ax = 11934
                    continue
                end
            elseif ax < 4953 then
                if ax == 4952 then
                    aN = 0
                    ax = 7
                else
                    ax = 4955
                    continue
                end
            elseif ax == 4953 then
                aN = 0
                ax = 2
            else
                ax = 665
                continue
            end
        elseif ax < 9410 then
            if ax < 5309 then
                if ax < 4955 then
                    State.gameplayPauseToken = aN + 1
                    gameplayPauseToken = State.gameplayPauseToken
                    State.gameplayPauseThread = true
                    task.spawn(function()
                        while not J.Unloaded and State.antiGameplayPause and State.gameplayPauseToken == gameplayPauseToken do
                            pcall(function()
                                GuiService:ClearError()
                            end)
                            pcall(function()
                                local J = 1
                                while true do
                                    J += 3450
                                    if J < 4469 then
                                        if J < 3451 then
                                            break
                                        elseif J == 3451 then
                                            local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
                                            for i, child in PlayerGui:GetChildren() do
                                                local w = child.Name:find("Error") or child.Name:find("Prompt")
                                                if w then
                                                    local w_2 = child:IsA("ScreenGui") and child.Enabled
                                                    if w_2 then
                                                        local w_3 = child:FindFirstChild("ErrorTitle", true) or child:FindFirstChild("Title", true)
                                                        local aN = w_3
                                                        if w_3 then
                                                            w_3 = aN:IsA("TextLabel")
                                                        end
                                                        if w_3 then
                                                            w_3 = string.find(string.lower(aN.Text), "paused", 1, true)
                                                        end
                                                        if w_3 then
                                                            child.Enabled = false
                                                        end
                                                    end
                                                end
                                            end
                                            J = 0
                                        else
                                            break
                                        end
                                    else
                                        break
                                    end
                                end
                            end)
                            task.wait(1)
                        end
                    end)
                    ax = 9
                elseif ax < 4956 then
                    ax = if not State.antiGameplayPause then 3 else 1
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
u.setAutoReconnect = function(g)
    local P
    State.autoReconnect = g == true
    local B = if State.reconnectConnections then 1 else 0
    local ac = 276 * B + 421 * (1 - B)
    local aC = 1944 * B + 3888 * (1 - B)
    if (ac * 2821 + aC * 2612 + ac * aC) % 16777213 == 6392868 then
        local reconnectConnections = State.reconnectConnections
        for k, v in reconnectConnections do
            v:Disconnect()
        end
        State.reconnectConnections = nil
    end
    local B_1 = if not State.autoReconnect then 1 else 0
    local ac_1 = 1047 * B_1 + 2374 * (1 - B_1)
    local aC_5 = 2128 * B_1 + 2146 * (1 - B_1)
    if (ac_1 * 97 + aC_5 * 1269 + ac_1 * aC_5) % 16777213 == 5030007 then
        local aS = State.reconnectToken or 0
        State.reconnectToken = aS + 1
        return
    end
    State.reconnectConnections = {}
    P = function()
        local reconnectToken
        if J.Unloaded or not State.autoReconnect or State.reconnectInFlight then
            return
        end
        State.reconnectInFlight = true
        local aw_5 = State.reconnectToken
        local aq = if aw_5 then 1 else 0
        local q = 1949 * aq + 4092 * (1 - aq)
        local r = 1953 * aq + 2542 * (1 - aq)
        if not ((q * 1676 + r * 2893 + q * r) % 16777213 == 12722950) then
            aw_5 = 0
        end
        State.reconnectToken = aw_5 + 1
        reconnectToken = State.reconnectToken
        task.spawn(function()
            local F
            local aK = 1
            while true do
                aK += 4078
                if aK < 4089 then
                    if aK < 4082 then
                        if aK < 4079 then
                            if aK < 2342 then
                                break
                            elseif aK < 4078 then
                                break
                            else
                                State.reconnectInFlight = false
                                return
                            end
                        elseif aK < 4080 then
                            if aK == 4079 then
                                task.wait(1)
                                F = J.Unloaded
                                aK = if F then 15 else 10
                            else
                                aK = 4078
                                continue
                            end
                        elseif aK < 4081 then
                            aK = if F then 0 else 11
                        else
                            F = State.reconnectToken ~= reconnectToken
                            aK = 2
                        end
                    elseif aK < 4085 then
                        if aK < 4083 then
                            aK = if F then 14 else 12
                        elseif aK < 4084 then
                            if aK == 4083 then
                                task.wait(2)
                                F = J.Unloaded
                                local R = if F then 1 else 0
                                local aB = 2901 * R + 2925 * (1 - R)
                                local z = 299 * R + 1992 * (1 - R)
                                aK = if (aB * 2553 + z * 2930 + aB * z) % 16777213 == 9149722 then 8 else 9
                            else
                                aK = 4093
                                continue
                            end
                        else
                            break
                        end
                    elseif aK < 4087 then
                        if aK < 4086 then
                            F = State.reconnectToken ~= reconnectToken
                            aK = 4
                        elseif aK == 4086 then
                            aK = if F then 4 else 7
                        else
                            aK = 4089
                            continue
                        end
                    elseif aK < 4088 then
                        F = not State.autoReconnect
                        aK = 8
                    elseif aK == 4088 then
                        F = not State.autoReconnect
                        aK = 15
                    else
                        aK = 4091
                        continue
                    end
                elseif aK < 7663 then
                    if aK < 4092 then
                        if aK < 4090 then
                            if aK == 4089 then
                                F = pcall(function()
                                    local ix = LocalPlayer
                                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, ix)
                                end)
                                aK = if not F then 5 else 13
                            else
                                aK = 5826
                                continue
                            end
                        elseif aK < 4091 then
                            pcall(function()
                                TeleportService:Teleport(game.PlaceId, LocalPlayer)
                            end)
                            aK = 13
                        else
                            State.reconnectInFlight = false
                            aK = 6
                        end
                    elseif aK < 5826 then
                        if aK < 4093 then
                            State.reconnectInFlight = false
                            return
                        elseif aK == 4093 then
                            aK = if F then 2 else 3
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
    table.insert(State.reconnectConnections, GuiService.ErrorMessageChanged:Connect(function()
        local af = if State.autoReconnect then 1 else 0
        local ap = 2969 * af + 3974 * (1 - af)
        local ar = 1847 * af + 917 * (1 - af)
        if (ap * 521 + ar * 1249 + ap * ar) % 16777213 == 9337495 then
            P()
        end
    end))
    table.insert(State.reconnectConnections, TeleportService.TeleportInitFailed:Connect(function(g)
        if g == LocalPlayer and State.autoReconnect then
            P()
        end
    end))
    J.Track(function()
        u.setAutoReconnect(false)
    end)
end
u.setDisable3D = fn827
u.setFpsBoost = function(j)
    State.fpsBoost = j == true
    if State.fpsBoostAdded then
        State.fpsBoostAdded:Disconnect()
        State.fpsBoostAdded = nil
    end
    if not State.fpsBoost then
        local aD = if State.fpsBoostSnapshots then 1 else 0
        local aT = 1380 * aD + 2404 * (1 - aD)
        local ag = 812 * aD + 3983 * (1 - aD)
        if (aT * 2443 + ag * 3008 + aT * ag) % 16777213 == 6934396 then
            local fpsBoostSnapshots = State.fpsBoostSnapshots
            for k, v in fpsBoostSnapshots do
                local aH = k
                if aH.Parent then
                    for k, v in v do
                        local aL = k
                        local az = v
                        pcall(function()
                            aH[aL] = az
                        end)
                    end
                end
            end
            table.clear(State.fpsBoostSnapshots)
        end
        return
    end
    local aF = State.fpsBoostSnapshots or {}
    State.fpsBoostSnapshots = aF
    local function onDescendantAdded(k)
        if State.fpsBoostSnapshots[k] then
            return
        end
        local au = k:IsA("ParticleEmitter") or k:IsA("Trail") or k:IsA("Beam") or k:IsA("Fire") or k:IsA("Smoke") or k:IsA("Sparkles")
        if au then
            State.fpsBoostSnapshots[k] = { Enabled = k.Enabled }
            k.Enabled = false
        elseif k:IsA("Explosion") then
            State.fpsBoostSnapshots[k] = { Visible = k.Visible }
            k.Visible = false
        end
    end
    if State.fpsBoostSnapshots[Lighting] == nil then
        State.fpsBoostSnapshots[Lighting] = { GlobalShadows = Lighting.GlobalShadows, FogEnd = Lighting.FogEnd }
    end
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 1000000
    for i, descendant in workspace:GetDescendants() do
        onDescendantAdded(descendant)
    end
    State.fpsBoostAdded = workspace.DescendantAdded:Connect(onDescendantAdded)
    J.Track(function()
        u.setFpsBoost(false)
    end)
end
x = {}
x.setAntiAfk = function(l)
    State.antiAfk = l == true
    if State.antiAfkConnection then
        State.antiAfkConnection:Disconnect()
        State.antiAfkConnection = nil
    end
    ad("antiAfk")
    if not State.antiAfk then
        return
    end
    local function onIdled()
        local VirtualUser
        VirtualUser = nil
        if J.Unloaded or not State.antiAfk then
            return
        end
        VirtualUser = game:GetService("VirtualUser")
        pcall(function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.zero)
        end)
    end
    State.antiAfkConnection = LocalPlayer.Idled:Connect(onIdled)
    J.Track(function()
        local ae = 2
        while true do
            ae += 11697
            if ae < 11299 then
                break
            elseif ae < 11700 then
                if ae < 11698 then
                    break
                elseif ae < 11699 then
                    ae = 0
                elseif ae == 11699 then
                    local t = if State.antiAfkConnection then 1 else 0
                    local ao = 392 * t + 1471 * (1 - t)
                    local aE = 539 * t + 715 * (1 - t)
                    ae = if (ao * 2521 + aE * 3538 + ao * aE) % 16777213 == 3106502 then 3 else 1
                else
                    ae = 2895
                    continue
                end
            elseif ae < 14762 then
                if ae < 14604 then
                    if ae == 11700 then
                        State.antiAfkConnection:Disconnect()
                        State.antiAfkConnection = nil
                        ae = 1
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
    V("antiAfk", function()
        return 60
    end, onIdled)
end
connection2 = nil
connection2 = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
J.Track(fn458)
r = nil
J.Automation = D
J.PlayerApi = u
J.MenuApi = x
as_2, r = pcall(fn608)
local at_1 = not as_2 or not (function(j, c, e, l)
    if type(j) ~= "string" then
        return false
    end
    if #j ~= c then
        return false
    end
    local g = 5381
    local f = buffer.fromstring(j)
    local k = 0
    while k <= c - 4 do
        local m = buffer.readu32(f, k)
        local g_73 = bit32.bxor(g, m)
        g = bit32.band(g_73 * 33, 4294967295)
        k = k + 4
    end
    while k < c do
        local n = buffer.readu8(f, k)
        local g_74 = bit32.bxor(g, n)
        g = bit32.band(g_74 * 33, 4294967295)
        k = k + 1
    end
    if g ~= e then
        return false
    end
    return j == l
end)(type(r), 5, 248602996, "table")
if at_1 then
    J.Unload()
    local fg = tostring(r)
    error("failed to load UI library: " .. fg, 0)
end
Window, P, E = nil, nil, nil
r:LoadFont({ Name = "ValleySans" })
r:SetDefaultTheme("Sakura")
Window = r:CreateWindow({
    Name = ah,
    LoadingSubtitle = aD,
    ToggleUIKeybind = "RightControl",
    ConfigurationSaving = { Enabled = true, FolderName = "Ouroboros/TapButtons", FileName = "default" },
    ToggleButton = { Platform = "Mobile" },
    Home = {
        Title = "Welcome to Tap Buttons!",
        Tier = aD,
        Discord = aA,
        Website = az_1,
        Stats = { "Players", "Session", "FPS", "Ping" }
    }
})
aC(J, Window)
local av_2 = Window:CreateTab({ Name = "Main", Icon = "gamepad-2" })
P = Window:CreateTab({ Name = "Player", Icon = "user" })
E = Window:CreateTab({ Name = "Settings", Icon = "settings" })
local Group = av_2:AddLeftGroupbox({ Name = "Farming", Icon = "mouse-pointer-click" })
Group:CreateToggle({ Name = "Auto Click Button", CurrentValue = false, Flag = "AutoClick", Callback = fn364 })
local e3 = { 0.05, 1 }
Group:CreateSlider({
    Name = "Click Interval",
    Range = e3,
    Increment = 0.01,
    CurrentValue = 0.12,
    Flag = "ClickInterval",
    Callback = fn526
})
local e3_1 = fn603(true)
Group:CreateDropdown({
    Name = "Zone Selector",
    Options = e3_1,
    CurrentOption = "Nearest",
    AllowNone = false,
    Flag = "ZoneSelector",
    Callback = fn836
})
Group:CreateToggle({
    Name = "Auto Go Best Owned Zone",
    CurrentValue = false,
    Flag = "AutoGoBestZone",
    Callback = fn751
})
local Group = av_2:AddRightGroupbox({ Name = "Travel", Icon = "map-pin" })
do
    local hE = fn603(false)
    local hF = ac("red")
    Group:CreateDropdown({
        Name = "Teleport Zone",
        Options = hE,
        CurrentOption = hF,
        AllowNone = false,
        Flag = "TeleportZone",
        Callback = fn921
    })
    hF = fn535
    Group:CreateButton({ Name = "Teleport To Zone", Icon = "plane", Callback = hF })
    Group2 = av_2:AddLeftGroupbox({ Name = "Progression", Icon = "trending-up" })
end
do
    local dQ = fn629
    Group2:CreateToggle({ Name = "Auto Equip Best Item", CurrentValue = false, Flag = "AutoEquipBest", Callback = dQ })
    local dS = fn845
    Group2:CreateToggle({ Name = "Auto Buy Upgrade Nodes", CurrentValue = false, Flag = "AutoBuyUpgrades", Callback = dS })
    dQ = fn537
    Group2:CreateToggle({ Name = "Auto Claim Index", CurrentValue = false, Flag = "AutoClaimIndex", Callback = dQ })
    dS = fn127
    Group2:CreateToggle({ Name = "Auto Collect Loot", CurrentValue = false, Flag = "AutoCollectLoot", Callback = dS })
    Group3 = av_2:AddRightGroupbox({ Name = "Item Upgrades", Icon = "sparkles" })
end
Group3:CreateToggle({
    Name = "Auto Upgrade Owned Items",
    CurrentValue = false,
    Flag = "AutoUpgradeItems",
    Callback = fn440
})
local ey = { 0, 1000000 }
local ex = fn883
Group3:CreateSlider({
    Name = "Coin Reserve",
    Range = ey,
    Increment = 100,
    CurrentValue = 0,
    Flag = "UpgradeCoinReserve",
    Callback = ex
})
local ey_1 = { 0, 100 }
Group3:CreateSlider({
    Name = "Max Level (0 = none)",
    Range = ey_1,
    Increment = 1,
    CurrentValue = 0,
    Flag = "UpgradeMaxLevel",
    Callback = fn432
})
local ey_2 = { 0, 1000 }
ex = fn346
Group3:CreateSlider({
    Name = "Min Keep After Upgrade",
    Range = ey_2,
    Increment = 1,
    CurrentValue = 0,
    Flag = "UpgradeMinKeep",
    Callback = ex
})
Group3:CreateToggle({
    Name = "Include Variants",
    CurrentValue = true,
    Flag = "UpgradeIncludeVariants",
    Callback = fn251
})
fn708()
fn218()
Window:LoadAutoload()
fn418()
if r.Flags.HideUIOnStart == true then
    Window:Toggle(false)
end
r:Notify({ Title = ah, Content = "Loaded v0.2", Type = "Success", Duration = 3 })
