local k
local j
local l
local connection4
local o
local Remotes
local q
local r
local s
local connection3
local u
local connection5
local connection8
local Lighting
local y
local Window
local A
local C
local connection6
local E
local Definitions
local G
local H
local J
local K
local L
local UserInputService
local N
local LocalPlayer
local Q
local R
local S
local T
local U
local V
local RunService
local connection
local Z
local Workspace
local ab
local Colors
local ad
local af
local ag
local ah
local ai
local aj
local ak
local connection2
local am
local ao
local ap
local PlotPresence
local function fn20()
    local aV, v
    local aZ = 6
    while true do
        aZ += 6837
        if aZ < 6842 then
            if aZ < 6838 then
                break
            elseif aZ < 6840 then
                if aZ < 6839 then
                    if aZ == 6838 then
                        v = aV > ai
                        aZ = 3
                    else
                        aZ = 12372
                        continue
                    end
                elseif aZ == 6839 then
                    aV = 1
                    aZ = 7
                else
                    aZ = 12372
                    continue
                end
            elseif aZ < 6841 then
                aZ = if v then 2 else 7
            elseif aZ == 6841 then
                aZ = if v then 3 else 1
            else
                aZ = 6838
                continue
            end
        elseif aZ < 11589 then
            if aZ < 6844 then
                if aZ < 6843 then
                    if aZ == 6842 then
                        v = aV < 1
                        aZ = 4
                    else
                        aZ = 1903
                        continue
                    end
                elseif aZ == 6843 then
                    aV = j.BuyNoobIndex
                    v = not (function(f, e, g, c)
                        if type(f) ~= "string" then
                            return false
                        end
                        if #f ~= e then
                            return false
                        end
                        local a = 5381
                        local j = buffer.fromstring(f)
                        local k = 0
                        while k <= e - 4 do
                            local l = buffer.readu32(j, k)
                            local a_1 = bit32.bxor(a, l)
                            a = bit32.band(a_1 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < e do
                            local m = buffer.readu8(j, k)
                            local a_2 = bit32.bxor(a, m)
                            a = bit32.band(a_2 * 33, 4294967295)
                            k = k + 1
                        end
                        if a ~= g then
                            return false
                        end
                        return f == c
                    end)(type(aV), 6, 472614556, "number")
                    aZ = if v then 4 else 5
                else
                    aZ = 6841
                    continue
                end
            elseif aZ < 9091 then
                if aZ == 6844 then
                    ao("Button" .. aV, true)
                    aZ = 0
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
local function fn42()
    connection5:Disconnect()
end
local function fn54(e)
    if U[e] == nil then
        U[e] = {
            HoldDuration = e.HoldDuration,
            MaxActivationDistance = e.MaxActivationDistance,
            RequiresLineOfSight = e.RequiresLineOfSight
        }
    end
    e.HoldDuration = 0
    e.MaxActivationDistance = 50
    e.RequiresLineOfSight = false
end
local function fn61(g)
    S("AutoRebirth", g)
end
local function fn65(f)
    j.Disable3DRendering = f == true
    if j.Disable3DRendering then
        local aC = C == nil and (function(f, e, g, c)
            if type(f) ~= "string" then
                return false
            end
            if #f ~= e then
                return false
            end
            local a = 5381
            local j = buffer.fromstring(f)
            local k = 0
            while k <= e - 4 do
                local l = buffer.readu32(j, k)
                local a_3 = bit32.bxor(a, l)
                a = bit32.band(a_3 * 33, 4294967295)
                k = k + 4
            end
            while k < e do
                local m = buffer.readu8(j, k)
                local a_4 = bit32.bxor(a, m)
                a = bit32.band(a_4 * 33, 4294967295)
                k = k + 1
            end
            if a ~= g then
                return false
            end
            return f == c
        end)(typeof(RunService.Set3dRenderingEnabled), 8, 2851454103, "function")
        if aC then
            C = true
        end
        pcall(function()
            RunService:Set3dRenderingEnabled(false)
        end)
        if not y then
            local screenGui = Instance.new("ScreenGui")
            screenGui.Name = "OuroborosRenderCover"
            screenGui.IgnoreGuiInset = true
            screenGui.DisplayOrder = -100
            screenGui.ResetOnSpawn = false
            local frame = Instance.new("Frame")
            frame.BackgroundColor3 = Color3.new(0, 0, 0)
            frame.Size = UDim2.fromScale(1, 1)
            frame.BorderSizePixel = 0
            frame.Parent = screenGui
            screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
            y = screenGui
            s.Track(function()
                if y then
                    y:Destroy()
                    y = nil
                end
            end)
        end
    else
        pcall(function()
            RunService:Set3dRenderingEnabled(true)
        end)
        if y then
            y:Destroy()
            y = nil
        end
    end
end
local function fn70(e, a)
    j[e] = a == true
end
local function fn136()
    ao("CollectButton", false)
end
local function fn162(a, c)
    local aE = math.abs(a.R - c.R) < 0.02 and math.abs(a.G - c.G) < 0.02 and math.abs(a.B - c.B) < 0.02
    return aE
end
local function fn168()
    return loadstring(game:HttpGet(H))()
end
local function fn181()
    connection6:Disconnect()
end
local function fn183()
    local bj = U
    for k, v in pairs(bj) do
        if k.Parent then
            k.HoldDuration = v.HoldDuration
            k.MaxActivationDistance = v.MaxActivationDistance
            k.RequiresLineOfSight = v.RequiresLineOfSight
        end
        U[k] = nil
    end
end
local function fn190(a)
    return ag(a.Color, Colors.Red)
end
local function fn195(f)
    local aB_1
    local av_4
    local A_1
    j.WalkSpeedEnabled = f == true
    A_1, av_4, aB_1 = V()
    if not aB_1 then
        return
    end
    if j.WalkSpeedEnabled then
        if k[aB_1] == nil then
            k[aB_1] = aB_1.WalkSpeed
        end
        aB_1.WalkSpeed = j.WalkSpeed
    elseif k[aB_1] ~= nil then
        aB_1.WalkSpeed = k[aB_1]
        k[aB_1] = nil
    end
end
local function fn197()
    return PlotPresence.MyPlot()
end
local function fn216(f)
    local a1
    local aQ_1
    local ae_1
    local az = 2
    while true do
        az += 4841
        if az < 4846 then
            if az < 4842 then
                if az < 4019 then
                    break
                elseif az < 4841 then
                    break
                else
                    k[a1] = a1.WalkSpeed
                    az = 3
                end
            elseif az < 4844 then
                if az < 4843 then
                    az = 6
                elseif az == 4843 then
                    j.WalkSpeed = f
                    az = if j.WalkSpeedEnabled then 5 else 1
                else
                    az = 2619
                    continue
                end
            elseif az < 4845 then
                if az == 4844 then
                    a1.WalkSpeed = f
                    az = 7
                else
                    az = 4841
                    continue
                end
            elseif az == 4845 then
                az = if k[a1] == nil then 0 else 3
            else
                az = 3362
                continue
            end
        elseif az < 8849 then
            if az < 4848 then
                if az < 4847 then
                    if az == 4846 then
                        ae_1, aQ_1, a1 = V()
                        az = if a1 then 4 else 7
                    else
                        az = 8849
                        continue
                    end
                else
                    break
                end
            elseif az < 6466 then
                if az == 4848 then
                    az = 1
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
local function fn247(a)
    j.FpsBoost = a == true
    if connection then
        connection:Disconnect()
        connection = nil
    end
    if not j.FpsBoost then
        local bs = J
        for k2, v in pairs(bs) do
            local am = k2
            local A = v
            local z_1 = am.Parent and (function(f, e, g, c)
                if type(f) ~= "string" then
                    return false
                end
                if #f ~= e then
                    return false
                end
                local a = 5381
                local j = buffer.fromstring(f)
                local k = 0
                while k <= e - 4 do
                    local l = buffer.readu32(j, k)
                    local a_5 = bit32.bxor(a, l)
                    a = bit32.band(a_5 * 33, 4294967295)
                    k = k + 4
                end
                while k < e do
                    local m = buffer.readu8(j, k)
                    local a_6 = bit32.bxor(a, m)
                    a = bit32.band(a_6 * 33, 4294967295)
                    k = k + 1
                end
                if a ~= g then
                    return false
                end
                return f == c
            end)(A.kind, 7, 1665381389, "enabled")
            if z_1 then
                am.Enabled = A.value
            end
            J[am] = nil
        end
        if J.lighting then
            local lighting = J.lighting
            Lighting.GlobalShadows = lighting.GlobalShadows
            Lighting.FogEnd = lighting.FogEnd
            J.lighting = nil
        end
        return
    end
    J.lighting = { GlobalShadows = Lighting.GlobalShadows, FogEnd = Lighting.FogEnd }
    Lighting.GlobalShadows = false
    Lighting.FogEnd = 1000000
    local z_3 = 0
    local bu = Workspace
    for i, descendant in ipairs(bu:GetDescendants()) do
        G(descendant)
        z_3 += 1
        if z_3 >= 4000 then
            break
        end
    end
    connection = Workspace.DescendantAdded:Connect(function(g)
        if j.FpsBoost then
            G(g)
        end
    end)
    s.Track(function()
        if connection then
            connection:Disconnect()
            connection = nil
        end
    end)
end
local function onOnClientEvent2(f)
    local R
    local aG = 4
    while true do
        aG += 9190
        if aG < 9191 then
            break
        elseif aG < 9194 then
            if aG < 9192 then
                aj.rebirthReady = R
                aG = 3
            elseif aG < 9193 then
                if aG == 9192 then
                    R = f.ready == true
                    local L = if R then 1 else 0
                    local E = 994 * L + 1359 * (1 - L)
                    local aL = 2111 * L + 3063 * (1 - L)
                    aG = if (E * 1433 + aL * 2601 + E * aL) % 16777213 == 9013447 then 5 else 1
                else
                    aG = 9190
                    continue
                end
            elseif aG == 9193 then
                aG = 0
            else
                aG = 7252
                continue
            end
        elseif aG < 11045 then
            if aG < 9195 then
                if aG == 9194 then
                    aG = if (function(f, e, g, c)
                        if type(f) ~= "string" then
                            return false
                        end
                        if #f ~= e then
                            return false
                        end
                        local a = 5381
                        local j = buffer.fromstring(f)
                        local k = 0
                        while k <= e - 4 do
                            local l = buffer.readu32(j, k)
                            local a_7 = bit32.bxor(a, l)
                            a = bit32.band(a_7 * 33, 4294967295)
                            k = k + 4
                        end
                        while k < e do
                            local m = buffer.readu8(j, k)
                            local a_8 = bit32.bxor(a, m)
                            a = bit32.band(a_8 * 33, 4294967295)
                            k = k + 1
                        end
                        if a ~= g then
                            return false
                        end
                        return f == c
                    end)(type(f), 5, 248602996, "table") then 2 else 3
                else
                    aG = 9191
                    continue
                end
            elseif aG == 9195 then
                R = f.maxed ~= true
                aG = 1
            else
                aG = 11045
                continue
            end
        else
            break
        end
    end
end
local function fn255()
    local E = 1
    while true do
        E += 1202
        if E < 4092 then
            if E < 1203 then
                break
            elseif E == 1203 then
                local bB = ah
                for k, v in pairs(bB) do
                    if k.Parent then
                        k.CanCollide = v
                    end
                    ah[k] = nil
                end
                E = 0
            else
                E = 1178
                continue
            end
        else
            break
        end
    end
end
local function fn289()
    ao("Upgrade1", true)
end
local function fn293(c, a)
    local a4, au, ai
    local a4_1
    local aS = 0
    while true do
        aS += 5961
        if aS < 5970 then
            if aS < 5964 then
                if aS < 5961 then
                    break
                elseif aS < 5962 then
                    aS = if not am then 4 else 5
                elseif aS < 5963 then
                    break
                else
                    return false
                end
            elseif aS < 5967 then
                if aS < 5965 then
                    aS = if not ai then 2 else 12
                elseif aS < 5966 then
                    return false
                else
                    a4_1, au = V()
                    a4 = E(c)
                    ai = au
                    aS = if ai then 9 else 3
                end
            elseif aS < 5968 then
                if aS == 5967 then
                    return false
                end
                aS = 5966
                continue
            elseif aS < 5969 then
                if aS == 5968 then
                    ai = not u(a4)
                    aS = 13
                else
                    aS = 14331
                    continue
                end
            else
                return false
            end
        elseif aS < 10817 then
            if aS < 5973 then
                if aS < 5971 then
                    ai = a4
                    aS = 3
                elseif aS < 5972 then
                    if aS == 5971 then
                        pcall(firetouchinterest, au, a4, 0)
                        task.wait(0.03)
                        pcall(firetouchinterest, au, a4, 1)
                        return true
                    end
                    aS = 5968
                    continue
                elseif aS == 5972 then
                    aS = if N(a4) then 6 else 10
                else
                    aS = 10817
                    continue
                end
            elseif aS < 5974 then
                ai = a
                aS = if ai then 7 else 13
            elseif aS < 6938 then
                if aS == 5974 then
                    aS = if ai then 8 else 11
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
local function fn311(g)
    S("AutoCollectCards", g)
end
local function onOnClientEvent(e, c, a, f)
    local a0 = if (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_11 = bit32.bxor(a, l)
            a = bit32.band(a_11 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_12 = bit32.bxor(a, m)
            a = bit32.band(a_12 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(c), 6, 472614556, "number") then 1 else 0
    if a0 == 1 then
        aj.cash = c
    end
    if (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_9 = bit32.bxor(a, l)
            a = bit32.band(a_9 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_10 = bit32.bxor(a, m)
            a = bit32.band(a_10 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(f), 6, 472614556, "number") then
        aj.gems = f
    end
end
local function fn333()
    ao("Upgrade2", true)
end
local function fn344()
    if aj.rebirthReady then
        Remotes.Rebirth:FireServer(true)
        task.wait(1)
    end
end
local function fn346()
    ao("ConvertButton", false)
end
local function fn349(g)
    local I_1
    if (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_13 = bit32.bxor(a, l)
            a = bit32.band(a_13 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_14 = bit32.bxor(a, m)
            a = bit32.band(a_14 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(g), 5, 248602996, "table") then
        I_1 = g[1]
    else
        I_1 = g
    end
    local I_2 = L[I_1]
    local aG = if I_2 then 1 else 0
    local a1 = 2481 * aG + 3723 * (1 - aG)
    local aB = 741 * aG + 3957 * (1 - aG)
    if not ((a1 * 2117 + aB * 3376 + a1 * aB) % 16777213 == 9592314) then
        I_2 = 1
    end
    j.BuyNoobIndex = I_2
end
local function fn356()
    ao("MergeButton", false)
end
local function worker()
    Remotes.PlotAssigned:FireServer()
    Remotes.Rebirth:FireServer()
    Remotes.RequestSync:FireServer()
    Remotes.Potions:FireServer("sync")
end
local function fn366(f)
    for i, descendant in ipairs(f:GetDescendants()) do
        if descendant:IsA("BasePart") then
            if ah[descendant] == nil then
                ah[descendant] = descendant.CanCollide
            end
            descendant.CanCollide = false
        end
    end
end
local function fn396(g)
    S("AutoBuyNoobs", g)
end
local function fn437(g)
    S("AutoBuyPotions", g)
end
local function fn459()
    local Group = ab:AddLeftGroupbox({ Name = "Menu", Icon = "monitor" })
    Group:CreateKeybind({
        Name = "Toggle UI",
        CurrentKeybind = "RightControl",
        Flag = "ToggleUIKey",
        Callback = function() end,
        OnChanged = function(g)
            Window:SetKeybind(g)
        end
    })
    Group:CreateDropdown({
        Name = "Toggle button",
        Options = { "Mobile only", "Mobile & PC" },
        CurrentOption = "Mobile only",
        AllowNone = false,
        Flag = "ToggleButtonPlatform",
        Callback = function(g)
            local B_1
            if (function(f, e, g, c)
                if type(f) ~= "string" then
                    return false
                end
                if #f ~= e then
                    return false
                end
                local a = 5381
                local j = buffer.fromstring(f)
                local k = 0
                while k <= e - 4 do
                    local l = buffer.readu32(j, k)
                    local a_17 = bit32.bxor(a, l)
                    a = bit32.band(a_17 * 33, 4294967295)
                    k = k + 4
                end
                while k < e do
                    local m = buffer.readu8(j, k)
                    local a_18 = bit32.bxor(a, m)
                    a = bit32.band(a_18 * 33, 4294967295)
                    k = k + 1
                end
                if a ~= g then
                    return false
                end
                return f == c
            end)(type(g), 5, 248602996, "table") then
                B_1 = g[1]
            else
                B_1 = g
            end
            local L = B_1
            local B_2 = (function(f, e, g, c)
                if type(f) ~= "string" then
                    return false
                end
                if #f ~= e then
                    return false
                end
                local a = 5381
                local j = buffer.fromstring(f)
                local k = 0
                while k <= e - 4 do
                    local l = buffer.readu32(j, k)
                    local a_15 = bit32.bxor(a, l)
                    a = bit32.band(a_15 * 33, 4294967295)
                    k = k + 4
                end
                while k < e do
                    local m = buffer.readu8(j, k)
                    local a_16 = bit32.bxor(a, m)
                    a = bit32.band(a_16 * 33, 4294967295)
                    k = k + 1
                end
                if a ~= g then
                    return false
                end
                return f == c
            end)(L, 11, 3530545271, "Mobile & PC") and "Both"
            local L_1 = B_2 or "Mobile"
            Window:SetToggleButtonPlatform(L_1)
        end
    })
    Group:CreateToggle({
        Name = "Anti AFK",
        CurrentValue = true,
        Flag = "AntiAfk",
        Callback = function(c)
            af.setAntiAfk(c)
        end
    })
    Group:CreateButton({
        Name = "Unload",
        Icon = "power",
        Callback = function()
            Q:Confirm({
                Title = "Unload?",
                ConfirmText = "Unload",
                Callback = function()
                    Window:Destroy()
                end
            })
        end
    })
    ab:CreateConfigManager({ Name = "Configs", Side = "Left" })
    ab:CreateThemeManager({ Name = "Themes", Side = "Right" })
end
local function fn466()
    local aC_2
    if A.connection then
        A.connection:Disconnect()
        A.connection = nil
    end
    local m = A.humanoid and A.humanoid.Parent and A.priorPlatformStand ~= nil
    local m_1
    if m then
        A.humanoid.PlatformStand = A.priorPlatformStand
    end
    A.humanoid = nil
    A.priorPlatformStand = nil
    m_1, aC_2 = V()
    if aC_2 then
        aC_2.AssemblyLinearVelocity = Vector3.zero
    end
end
local function fn471()
    local Group3 = ap:AddLeftGroupbox({ Name = "Movement", Icon = "move" })
    Group3:CreateToggle({
        Name = "WalkSpeed",
        CurrentValue = false,
        Flag = "WalkSpeedEnabled",
        Callback = function(g)
            q.setWalkSpeedEnabled(g)
        end
    })
    Group3:CreateSlider({
        Name = "Speed",
        Range = { 16, 250 },
        Increment = 1,
        CurrentValue = 32,
        Flag = "WalkSpeed",
        Callback = function(g)
            q.setWalkSpeed(g)
        end
    })
    Group3:CreateToggle({
        Name = "Infinite Jump",
        CurrentValue = false,
        Flag = "InfJump",
        Callback = function(g)
            q.setInfJump(g)
        end
    })
    Group3:CreateToggle({
        Name = "Noclip",
        CurrentValue = false,
        Flag = "NoClip",
        Callback = function(g)
            q.setNoClip(g)
        end
    })
    Group3:CreateToggle({
        Name = "Instant ProximityPrompt",
        CurrentValue = false,
        Flag = "InstantProximityPrompt",
        Callback = function(g)
            q.setInstantProximityPrompt(g)
        end
    })
    local Group2 = ap:AddRightGroupbox({ Name = "Fly", Icon = "plane" })
    Group2:CreateToggle({
        Name = "Fly",
        CurrentValue = false,
        Flag = "Fly",
        Callback = function(g)
            q.setFly(g)
        end
    })
    Group2:CreateSlider({
        Name = "Fly Speed",
        Range = { 10, 400 },
        Increment = 1,
        CurrentValue = 60,
        Flag = "FlySpeed",
        Callback = function(g)
            q.setFlySpeed(g)
        end
    })
    local Group = ap:AddLeftGroupbox({ Name = "Client", Icon = "monitor" })
    Group:CreateToggle({
        Name = "No Gameplay Paused",
        CurrentValue = true,
        Flag = "AntiGameplayPause",
        Callback = function(g)
            q.setNoGameplayPaused(g)
        end
    })
    Group:CreateToggle({
        Name = "Auto Reconnect on Kick",
        CurrentValue = false,
        Flag = "AutoReconnect",
        Callback = function(g)
            q.setAutoReconnect(g)
        end
    })
    Group:CreateToggle({
        Name = "Disable 3D Rendering",
        CurrentValue = false,
        Flag = "Disable3DRendering",
        Callback = function(g)
            q.setDisable3D(g)
        end
    })
    Group:CreateToggle({
        Name = "FPS Boost",
        CurrentValue = false,
        Flag = "FpsBoost",
        Callback = function(g)
            q.setFpsBoost(g)
        end
    })
    Group:CreateToggle({
        Name = "Hide UI On Start",
        CurrentValue = false,
        Flag = "HideUIOnStart",
        Callback = function() end
    })
end
local function fn481(g)
    S("AutoConvertCards", g)
end
local function fn487(f)
    j.FlySpeed = f
end
local function onCharacterAdded()
    task.wait(0.2)
    if s.Unloaded then
        return
    end
    if j.WalkSpeedEnabled then
        q.setWalkSpeedEnabled(true)
    end
    if j.NoClip then
        q.setNoClip(true)
    end
    if j.Fly then
        q.setFly(true)
    end
end
local function fn495(c)
    return ag(c.Color, Colors.Green)
end
local function fn509()
    local af_1
    local ac_1
    local G = Z()
    local G_3
    ac_1, af_1 = V()
    local ac_2 = G and G:FindFirstChild("Cards")
    local ak = if not (af_1 and ac_2) then 1 else 0
    local ao = 2663 * ak + 1951 * (1 - ak)
    local aP = 1680 * ak + 1718 * (1 - ak)
    if (ao * 1321 + aP * 495 + ao * aP) % 16777213 == 8823263 then
        return
    end
    local CFrame2 = af_1.CFrame
    local t = false
    local bX = ipairs
    for k, v in bX(ac_2:GetChildren()) do
        if not j.AutoCollectCards or s.Unloaded then
            break
        end
        if v:IsA("BasePart") then
            G_3 = v
        else
            local at_4 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart")
            G_3 = at_4
        end
        local at_5 = G_3
        if G_3 then
            G_3 = (at_5.Position - af_1.Position).Magnitude > r
        end
        if G_3 then
            af_1.CFrame = CFrame.new(at_5.Position + Vector3.new(0, 3.5, 0))
            t = true
            task.wait(0.12)
        end
    end
    local G_4 = t
    local ak_1 = if G_4 then 1 else 0
    local ao_1 = 3510 * ak_1 + 1130 * (1 - ak_1)
    local aP_1 = 1060 * ak_1 + 596 * (1 - ak_1)
    if (ao_1 * 3157 + aP_1 * 313 + ao_1 * aP_1) % 16777213 == 15133450 then
        G_4 = af_1.Parent
    end
    if G_4 then
        af_1.CFrame = CFrame2
    end
end
local function fn514()
    local PotionId = j.PotionId
    local H = PotionId and Definitions[PotionId]
    if not H then
        return
    end
    local H_1 = tonumber(H.GemCost) or 0
    if aj.gems < H_1 then
        return
    end
    Remotes.Potions:FireServer("buy", PotionId)
    task.wait(0.35)
end
local function fn520(g)
    S("AutoMerge", g)
end
local function fn540(f)
    j.InstantProximityPrompt = f == true
    local aR = if connection2 then 1 else 0
    local aO = 3952 * aR + 123 * (1 - aR)
    local t = 3986 * aR + 1056 * (1 - aR)
    if (aO * 3280 + t * 1805 + aO * t) % 16777213 == 2355536 then
        connection2:Disconnect()
        connection2 = nil
    end
    if not j.InstantProximityPrompt then
        l()
        return
    end
    local b6 = Workspace
    for i, descendant in ipairs(b6:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            K(descendant)
        end
    end
    connection2 = Workspace.DescendantAdded:Connect(function(f)
        local aU
        local au = 4
        while true do
            au += 5703
            if au < 5707 then
                if au < 5703 then
                    break
                elseif au < 5705 then
                    if au < 5704 then
                        aU = f:IsA("ProximityPrompt")
                        au = 5
                    else
                        break
                    end
                elseif au < 5706 then
                    if au == 5705 then
                        au = 1
                    else
                        au = 5704
                        continue
                    end
                else
                    K(f)
                    au = 2
                end
            elseif au < 13958 then
                if au < 5708 then
                    aU = j.InstantProximityPrompt
                    au = if aU then 0 else 5
                elseif au < 10582 then
                    if au == 5708 then
                        local ap = if aU then 1 else 0
                        local ad = 388 * ap + 1070 * (1 - ap)
                        local S = 3004 * ap + 3583 * (1 - ap)
                        au = if (ad * 3646 + S * 988 + ad * S) % 16777213 == 5548152 then 3 else 2
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
    s.Track(function()
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end
        l()
    end)
end
local function fn560(c)
    if J[c] ~= nil then
        return
    end
    if T[c.ClassName] then
        local Enabled = c.Enabled
        J[c] = { kind = "enabled", value = Enabled }
        c.Enabled = false
    end
end
local function fn574(c)
    local aN = Z()
    if not aN then
        return nil
    else
        local Buttons = aN:FindFirstChild("Buttons")
        local aN_1 = Buttons and Buttons:FindFirstChild(c)
        local aM_1 = aN_1
        local as = if aN_1 then 1 else 0
        local aq = 3017 * as + 3549 * (1 - as)
        local K = 2702 * as + 1769 * (1 - as)
        if (aq * 214 + K * 2827 + aq * K) % 16777213 == 16436126 then
            aN_1 = aM_1:FindFirstChild("TouchPart")
        end
        local aM_2 = aN_1
        if aN_1 then
            aN_1 = aM_2:IsA("BasePart")
        end
        if aN_1 then
            return aM_2
        end
        return nil
    end
end
local function fn578(g)
    local M_1
    if (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_19 = bit32.bxor(a, l)
            a = bit32.band(a_19 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_20 = bit32.bxor(a, m)
            a = bit32.band(a_20 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(g), 5, 248602996, "table") then
        M_1 = g[1]
    else
        M_1 = g
    end
    local M_2 = ad[M_1] or j.PotionId
    j.PotionId = M_2
end
local function fn601()
    local Character = LocalPlayer.Character
    if not Character then
        return nil, nil, nil
    end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    if not (Humanoid and HumanoidRootPart and Humanoid.Health > 0) then
        return nil, nil, nil
    end
    return Character, HumanoidRootPart, Humanoid
end
local function fn611(f)
    j.InfJump = f == true
    if connection3 then
        connection3:Disconnect()
        connection3 = nil
    end
    if not j.InfJump then
        return
    end
    connection3 = UserInputService.JumpRequest:Connect(function()
        local Q, an
        local F_1
        local ad = 6
        while true do
            ad += 14038
            if ad < 14041 then
                if ad < 9816 then
                    break
                elseif ad < 14038 then
                    break
                elseif ad < 14039 then
                    ad = if Q then 2 else 7
                elseif ad < 14040 then
                    break
                else
                    return
                end
            elseif ad < 14045 then
                if ad < 14043 then
                    if ad < 14042 then
                        if ad == 14041 then
                            an:ChangeState(Enum.HumanoidStateType.Jumping)
                            ad = 4
                        else
                            ad = 4682
                            continue
                        end
                    elseif ad == 14042 then
                        ad = 1
                    else
                        ad = 14041
                        continue
                    end
                elseif ad < 14044 then
                    if ad == 14043 then
                        Q = not j.InfJump
                        ad = 0
                    else
                        ad = 15463
                        continue
                    end
                elseif ad == 14044 then
                    Q = s.Unloaded
                    ad = if Q then 0 else 5
                else
                    ad = 14041
                    continue
                end
            elseif ad < 14935 then
                if ad < 14313 then
                    if ad == 14045 then
                        F_1, Q, an = V()
                        ad = if an then 3 else 4
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
    s.Track(function()
        local aa = 3
        while true do
            aa += 2647
            if aa < 4645 then
                if aa < 2647 then
                    break
                elseif aa < 2649 then
                    if aa < 2648 then
                        break
                    elseif aa == 2648 then
                        aa = 0
                    else
                        aa = 4645
                        continue
                    end
                elseif aa < 2650 then
                    connection3:Disconnect()
                    connection3 = nil
                    aa = 1
                elseif aa == 2650 then
                    aa = if connection3 then 2 else 1
                else
                    break
                end
            else
                break
            end
        end
    end)
end
local function fn627(e)
    j.NoClip = e == true
    if connection4 then
        connection4:Disconnect()
        connection4 = nil
    end
    if not j.NoClip then
        ak()
        return
    end
    local Character = LocalPlayer.Character
    if Character then
        R(Character)
    end
    connection4 = RunService.Stepped:Connect(function()
        local ah
        local a_ = 6
        while true do
            a_ += 14538
            if a_ < 12244 then
                break
            elseif a_ < 14541 then
                if a_ < 14538 then
                    break
                elseif a_ < 14539 then
                    ah = LocalPlayer.Character
                    local x_1 = if ah then 1 else 0
                    local aj_1 = 264 * x_1 + 514 * (1 - x_1)
                    local U_1 = 2254 * x_1 + 3173 * (1 - x_1)
                    a_ = if (aj_1 * 3550 + U_1 * 272 + aj_1 * U_1) % 16777213 == 2145344 then 7 else 5
                elseif a_ < 14540 then
                    return
                else
                    local x_2 = if ah then 1 else 0
                    local aj_2 = 2567 * x_2 + 2929 * (1 - x_2)
                    local U_2 = 1479 * x_2 + 2834 * (1 - x_2)
                    a_ = if (aj_2 * 1781 + U_2 * 3030 + aj_2 * U_2) % 16777213 == 12849790 then 1 else 0
                end
            elseif a_ < 14543 then
                if a_ < 14542 then
                    ah = not j.NoClip
                    a_ = 2
                else
                    break
                end
            elseif a_ < 14544 then
                if a_ == 14543 then
                    a_ = 4
                else
                    a_ = 14545
                    continue
                end
            elseif a_ < 14545 then
                if a_ == 14544 then
                    ah = s.Unloaded
                    a_ = if ah then 2 else 3
                else
                    a_ = 14538
                    continue
                end
            else
                R(ah)
                a_ = 5
            end
        end
    end)
    s.Track(function()
        local aT = 2
        while true do
            aT += 5032
            if aT < 7283 then
                if aT < 5033 then
                    break
                elseif aT < 5035 then
                    if aT < 5034 then
                        if aT == 5033 then
                            ak()
                            aT = 0
                        else
                            aT = 3378
                            continue
                        end
                    else
                        aT = if connection4 then 3 else 1
                    end
                elseif aT < 5985 then
                    if aT == 5035 then
                        connection4:Disconnect()
                        connection4 = nil
                        aT = 1
                    else
                        aT = 5034
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
end
local function fn654(e)
    local I_3
    local y_1
    local at_6
    j.Fly = e == true
    o()
    if not j.Fly then
        return
    end
    at_6, y_1, I_3 = V()
    if not (y_1 and I_3) then
        return
    end
    A.humanoid = I_3
    A.priorPlatformStand = I_3.PlatformStand
    I_3.PlatformStand = true
    A.connection = RunService.RenderStepped:Connect(function()
        local aP, a0, R, aN
        local aP_2
        local L = 13
        while true do
            L += 15554
            if L < 15566 then
                if L < 15557 then
                    if L < 11341 then
                        break
                    elseif L < 15554 then
                        break
                    elseif L < 15555 then
                        return
                    elseif L < 15556 then
                        a0.AssemblyLinearVelocity = Vector3.zero
                        L = 4
                    elseif L == 15556 then
                        aP = R
                        L = 25
                    else
                        L = 15575
                        continue
                    end
                elseif L < 15561 then
                    if L < 15559 then
                        if L < 15558 then
                            if L == 15557 then
                                aN += aP.CFrame.LookVector
                                L = 21
                            else
                                L = 2807
                                continue
                            end
                        else
                            R.PlatformStand = true
                            L = 28
                        end
                    elseif L < 15560 then
                        aN = Vector3.zero
                        L = if UserInputService:IsKeyDown(Enum.KeyCode.W) then 3 else 21
                    elseif L == 15560 then
                        aP_2, a0, R = V()
                        aP = a0
                        L = if aP then 2 else 25
                    else
                        L = 11341
                        continue
                    end
                elseif L < 15563 then
                    if L < 15562 then
                        if L == 15561 then
                            return
                        end
                        L = 15566
                        continue
                    else
                        local O_1 = if aP then 1 else 0
                        local aB_2 = 139 * O_1 + 979 * (1 - O_1)
                        local a7_1 = 788 * O_1 + 2294 * (1 - O_1)
                        L = if (aB_2 * 873 + a7_1 * 1552 + aB_2 * a7_1) % 16777213 == 1453855 then 23 else 16
                    end
                elseif L < 15564 then
                    aP = not j.Fly
                    L = 8
                elseif L < 15565 then
                    if L == 15564 then
                        L = if UserInputService:IsKeyDown(Enum.KeyCode.D) then 18 else 17
                    else
                        L = 15555
                        continue
                    end
                elseif L == 15565 then
                    aN += Vector3.yAxis
                    L = 26
                else
                    L = 15559
                    continue
                end
            elseif L < 15575 then
                if L < 15570 then
                    if L < 15568 then
                        if L < 15567 then
                            aP = Workspace.CurrentCamera
                            L = if not aP then 27 else 5
                        else
                            aP = s.Unloaded
                            local O_2 = if aP then 1 else 0
                            local aB_3 = 1182 * O_2 + 1649 * (1 - O_2)
                            local a7_2 = 687 * O_2 + 1451 * (1 - O_2)
                            L = if (aB_3 * 3652 + a7_2 * 2933 + aB_3 * a7_2) % 16777213 == 7143669 then 8 else 9
                        end
                    elseif L < 15569 then
                        if L == 15568 then
                            a0.AssemblyLinearVelocity = aN.Unit * j.FlySpeed
                            L = 4
                        else
                            L = 15572
                            continue
                        end
                    elseif L == 15569 then
                        aN -= aP.CFrame.LookVector
                        L = 24
                    else
                        L = 15582
                        continue
                    end
                elseif L < 15572 then
                    if L < 15571 then
                        if L == 15570 then
                            local O_3 = if UserInputService:GetFocusedTextBox() then 1 else 0
                            local aB_4 = 2617 * O_3 + 4039 * (1 - O_3)
                            local a7_3 = 1588 * O_3 + 3616 * (1 - O_3)
                            L = if (aB_4 * 3559 + a7_3 * 2476 + aB_4 * a7_3) % 16777213 == 624374 then 7 else 6
                        else
                            L = 15560
                            continue
                        end
                    elseif L == 15571 then
                        L = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 11 else 26
                    else
                        L = 15564
                        continue
                    end
                elseif L < 15573 then
                    aN += aP.CFrame.RightVector
                    L = 17
                elseif L < 15574 then
                    if L == 15573 then
                        aN -= Vector3.yAxis
                        L = 22
                    else
                        L = 15554
                        continue
                    end
                elseif L == 15574 then
                    aN -= aP.CFrame.RightVector
                    L = 10
                else
                    L = 1671
                    continue
                end
            elseif L < 15579 then
                if L < 15577 then
                    if L < 15576 then
                        L = if UserInputService:IsKeyDown(Enum.KeyCode.S) then 15 else 24
                    else
                        local O_4 = if aN.Magnitude > 0 then 1 else 0
                        local aB_5 = 3589 * O_4 + 3147 * (1 - O_4)
                        local a7_4 = 1288 * O_4 + 3898 * (1 - O_4)
                        L = if (aB_5 * 2857 + a7_4 * 1469 + aB_5 * a7_4) % 16777213 == 16768477 then 14 else 1
                    end
                elseif L < 15578 then
                    return
                elseif L == 15578 then
                    L = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 20 else 10
                else
                    L = 15558
                    continue
                end
            elseif L < 15581 then
                if L < 15580 then
                    if L == 15579 then
                        L = if not aP then 0 else 12
                    else
                        L = 15564
                        continue
                    end
                else
                    L = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 19 else 22
                end
            elseif L < 15582 then
                if L == 15581 then
                    return
                end
                L = 15580
            else
                break
            end
        end
    end)
    s.Track(o)
end
local function fn707()
    connection8:Disconnect()
end
local function fn710(g)
    S("AutoCollectCash", g)
end
local function fn712(g)
    S("AutoUpgradeConvertSpeed", g)
end
local function fn715(g)
    S("AutoUpgradeBuyTier", g)
end
k = nil
j = nil
l = nil
connection4 = nil
o = nil
Remotes = nil
q = nil
r = nil
s = nil
connection3 = nil
u = nil
connection5 = nil
connection8 = nil
Lighting = nil
y = nil
Window = nil
A = nil
C = nil
connection6 = nil
E = nil
Definitions = nil
G = nil
H = nil
J = nil
K = nil
L = nil
UserInputService = nil
N = nil
LocalPlayer = nil
Q = nil
R = nil
S = nil
T = nil
U = nil
V = nil
RunService = nil
connection = nil
Z = nil
Workspace = nil
ab = nil
Colors = nil
ad = nil
af = nil
local GuiService, p, TeleportService, I, O, connection7, ae
ag = nil
ah = nil
ai = nil
aj = nil
ak = nil
connection2 = nil
am = nil
ao = nil
ap = nil
PlotPresence = nil
local VirtualUser, ax, ay, aE
local ar_8
local aN = if not game:IsLoaded() then 1 else 0
local eX = 1 - aN
local aL = 3492 * aN + 3218 * eX
eX = 1 - aN
local aM = 2964 * aN + 3107 * eX
eX = 16777213
if (aL * 1303 + aM * 4011 + aL * aM) % eX == 10011755 then
    game.Loaded:Wait()
end
ae, H, RunService, UserInputService, TeleportService, Lighting, GuiService, VirtualUser, Workspace, LocalPlayer, Remotes, PlotPresence, Colors, Definitions = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local aw_1 = "v0.2"
ae = "Merge Hackers"
H = "https://raw.githubusercontent.com/joustingmatch/OuroFlow/main/Source.luau"
ay = "https://discord.gg/synapsex"
ax = "https://ouroboros-hub-rbx.web.app/"
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
GuiService = game:GetService("GuiService")
VirtualUser = game:GetService("VirtualUser")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Shared = ReplicatedStorage:WaitForChild("Shared")
local au = require(Shared:WaitForChild("Config"))
Remotes = require(Shared:WaitForChild("Remotes"))
PlotPresence = require(Shared:WaitForChild("PlotPresence"))
Colors = au.Colors
local Economy = au.Economy
Definitions = au.Potions.Definitions
local Order = au.Potions.Order
r = Economy.CollectRadius or 6
local cM = Economy.BulkQuantities
local ar_3 = { 1, 5, 25, 100 }
local as_1 = cM
aN = if as_1 then 1 else 0
cM = 1 - aN
aL = 3255 * aN + 424 * cM
cM = 1 - aN
aM = 1767 * aN + 3135 * cM
cM = 16777213
if not ((aL * 2196 + aM * 521 + aL * aM) % cM == 13820172) then
    as_1 = ar_3
end
ai, L = nil, nil
local at_1 = as_1
ai = #at_1
au = {}
L = {}
for i, v in ipairs(at_1) do
    local ea = tostring(v)
    local ar_4 = "x" .. ea
    table.insert(au, ar_4)
    L[ar_4] = i
end
am, s = nil, nil
am = ((function(f, e, g, c)
    if type(f) ~= "string" then
        return false
    end
    if #f ~= e then
        return false
    end
    local a = 5381
    local j = buffer.fromstring(f)
    local k = 0
    while k <= e - 4 do
        local l = buffer.readu32(j, k)
        local a_21 = bit32.bxor(a, l)
        a = bit32.band(a_21 * 33, 4294967295)
        k = k + 4
    end
    while k < e do
        local m = buffer.readu8(j, k)
        local a_22 = bit32.bxor(a, m)
        a = bit32.band(a_22 * 33, 4294967295)
        k = k + 1
    end
    if a ~= g then
        return false
    end
    return f == c
end)(typeof(firetouchinterest), 8, 2851454103, "function"))
local at_2 = ((function(f, e, g, c)
    if type(f) ~= "string" then
        return false
    end
    if #f ~= e then
        return false
    end
    local a = 5381
    local j = buffer.fromstring(f)
    local k = 0
    while k <= e - 4 do
        local l = buffer.readu32(j, k)
        local a_23 = bit32.bxor(a, l)
        a = bit32.band(a_23 * 33, 4294967295)
        k = k + 4
    end
    while k < e do
        local m = buffer.readu8(j, k)
        local a_24 = bit32.bxor(a, m)
        a = bit32.band(a_24 * 33, 4294967295)
        k = k + 1
    end
    if a ~= g then
        return false
    end
    return f == c
end)(typeof(game.HttpGet), 8, 2851454103, "function"))
local av_2 = ((function(f, e, g, c)
    if type(f) ~= "string" then
        return false
    end
    if #f ~= e then
        return false
    end
    local a = 5381
    local j = buffer.fromstring(f)
    local k = 0
    while k <= e - 4 do
        local l = buffer.readu32(j, k)
        local a_25 = bit32.bxor(a, l)
        a = bit32.band(a_25 * 33, 4294967295)
        k = k + 4
    end
    while k < e do
        local m = buffer.readu8(j, k)
        local a_26 = bit32.bxor(a, m)
        a = bit32.band(a_26 * 33, 4294967295)
        k = k + 1
    end
    if a ~= g then
        return false
    end
    return f == c
end)(typeof(loadstring), 8, 2851454103, "function"))
local function as_2(c)
    local w
    local aO
    local ax
    w = nil
    aO = nil
    ax = nil
    local Z_1
    local et = type(c)
    local ev = (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_39 = bit32.bxor(a, l)
            a = bit32.band(a_39 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_40 = bit32.bxor(a, m)
            a = bit32.band(a_40 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(et, 6, 2175009567, "string")
    local V = not (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_37 = bit32.bxor(a, l)
            a = bit32.band(a_37 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_38 = bit32.bxor(a, m)
            a = bit32.band(a_38 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(c, 0, 5381, "")
    local aW = ev and V
    local aW_2
    assert(aW, "namespace required")
    assert((function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_35 = bit32.bxor(a, l)
            a = bit32.band(a_35 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_36 = bit32.bxor(a, m)
            a = bit32.band(a_36 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(getgenv), 8, 2851454103, "function"), "getgenv unavailable")
    ax = getgenv()
    assert((function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_33 = bit32.bxor(a, l)
            a = bit32.band(a_33 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_34 = bit32.bxor(a, m)
            a = bit32.band(a_34 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(ax), 5, 248602996, "table"), "getgenv did not return a table")
    local V_1 = ax[c]
    if V_1 ~= nil then
        local aW_1 = ((function(f, e, g, c)
            if type(f) ~= "string" then
                return false
            end
            if #f ~= e then
                return false
            end
            local a = 5381
            local j = buffer.fromstring(f)
            local k = 0
            while k <= e - 4 do
                local l = buffer.readu32(j, k)
                local a_31 = bit32.bxor(a, l)
                a = bit32.band(a_31 * 33, 4294967295)
                k = k + 4
            end
            while k < e do
                local m = buffer.readu8(j, k)
                local a_32 = bit32.bxor(a, m)
                a = bit32.band(a_32 * 33, 4294967295)
                k = k + 1
            end
            if a ~= g then
                return false
            end
            return f == c
        end)(type(V_1), 5, 248602996, "table"))
        local r = if aW_1 then 1 else 0
        local T = 432 * r + 529 * (1 - r)
        local a3 = 3925 * r + 3132 * (1 - r)
        if (T * 393 + a3 * 3434 + T * a3) % 16777213 == 15343826 then
            aW_1 = (function(f, e, g, c)
                if type(f) ~= "string" then
                    return false
                end
                if #f ~= e then
                    return false
                end
                local a = 5381
                local j = buffer.fromstring(f)
                local k = 0
                while k <= e - 4 do
                    local l = buffer.readu32(j, k)
                    local a_29 = bit32.bxor(a, l)
                    a = bit32.band(a_29 * 33, 4294967295)
                    k = k + 4
                end
                while k < e do
                    local m = buffer.readu8(j, k)
                    local a_30 = bit32.bxor(a, m)
                    a = bit32.band(a_30 * 33, 4294967295)
                    k = k + 1
                end
                if a ~= g then
                    return false
                end
                return f == c
            end)(type(V_1.Unload), 8, 2851454103, "function")
        end
        assert(aW_1, "namespace occupied")
        aW_2, Z_1 = pcall(V_1.Unload)
        if not aW_2 then
            local eo = tostring(Z_1)
            warn("Previous cleanup: " .. eo)
        end
    end
    w = {}
    aO = { State = {}, Unloaded = false }
    aO.Track = function(c)
        local O_5
        local aU_1
        assert((function(f, e, g, c)
            if type(f) ~= "string" then
                return false
            end
            if #f ~= e then
                return false
            end
            local a = 5381
            local j = buffer.fromstring(f)
            local k = 0
            while k <= e - 4 do
                local l = buffer.readu32(j, k)
                local a_27 = bit32.bxor(a, l)
                a = bit32.band(a_27 * 33, 4294967295)
                k = k + 4
            end
            while k < e do
                local m = buffer.readu8(j, k)
                local a_28 = bit32.bxor(a, m)
                a = bit32.band(a_28 * 33, 4294967295)
                k = k + 1
            end
            if a ~= g then
                return false
            end
            return f == c
        end)(type(c), 8, 2851454103, "function"), "cleanup must be callable")
        if aO.Unloaded then
            aU_1, O_5 = pcall(c)
            if not aU_1 then
                local eq = tostring(O_5)
                warn("Cleanup: " .. eq)
            end
        else
            table.insert(w, c)
        end
        return c
    end
    aO.Unload = function()
        local Y_1
        local o_1
        if aO.Unloaded then
            return
        end
        aO.Unloaded = true
        local aI = #w
        local aD = -1
        while false and aI <= 1 or true and aI >= 1 do
            local n = aI
            local z_4 = table.remove(w, n)
            o_1, Y_1 = pcall(z_4)
            if not o_1 then
                local es = tostring(Y_1)
                warn("Cleanup: " .. es)
            end
            aI += aD
        end
        table.clear(aO.State)
        if ax[c] == aO then
            ax[c] = nil
        end
    end
    ax[c] = aO
    return aO
end
local function aB(c, a)
    local connection
    local aC = (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_49 = bit32.bxor(a, l)
            a = bit32.band(a_49 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_50 = bit32.bxor(a, m)
            a = bit32.band(a_50 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(c), 5, 248602996, "table") and (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_47 = bit32.bxor(a, l)
            a = bit32.band(a_47 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_48 = bit32.bxor(a, m)
            a = bit32.band(a_48 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(c.Track), 8, 2851454103, "function")
    assert(aC, "FeatureAPI required")
    local aC_3 = (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_45 = bit32.bxor(a, l)
            a = bit32.band(a_45 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_46 = bit32.bxor(a, m)
            a = bit32.band(a_46 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(a), 5, 248602996, "table") and (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_43 = bit32.bxor(a, l)
            a = bit32.band(a_43 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_44 = bit32.bxor(a, m)
            a = bit32.band(a_44 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(type(a.Destroy), 8, 2851454103, "function")
    assert(aC_3, "UI window required")
    c.Track(function()
        pcall(function()
            a:Destroy()
        end)
    end)
    local Gui = a.Gui
    if (function(f, e, g, c)
        if type(f) ~= "string" then
            return false
        end
        if #f ~= e then
            return false
        end
        local a = 5381
        local j = buffer.fromstring(f)
        local k = 0
        while k <= e - 4 do
            local l = buffer.readu32(j, k)
            local a_41 = bit32.bxor(a, l)
            a = bit32.band(a_41 * 33, 4294967295)
            k = k + 4
        end
        while k < e do
            local m = buffer.readu8(j, k)
            local a_42 = bit32.bxor(a, m)
            a = bit32.band(a_42 * 33, 4294967295)
            k = k + 1
        end
        if a ~= g then
            return false
        end
        return f == c
    end)(typeof(Gui), 8, 1471340621, "Instance") then
        connection = Gui.Destroying:Connect(function()
            task.defer(c.Unload)
        end)
        c.Track(function()
            connection:Disconnect()
        end)
    end
end
s = as_2("Ouroboros_MergeHackers")
local ar_5 = Order[1] or "Cash1"
j, aj, V, Z, E, ag, u, N, ao, S = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
j = {
    AutoBuyNoobs = false,
    BuyNoobIndex = 1,
    AutoMerge = false,
    AutoCollectCards = false,
    AutoConvertCards = false,
    AutoCollectCash = false,
    AutoUpgradeConvertSpeed = false,
    AutoUpgradeBuyTier = false,
    AutoRebirth = false,
    AutoBuyPotions = false,
    PotionId = ar_5,
    WalkSpeedEnabled = false,
    WalkSpeed = 32,
    InfJump = false,
    NoClip = false,
    InstantProximityPrompt = false,
    Fly = false,
    FlySpeed = 60,
    AntiGameplayPause = true,
    AutoReconnect = false,
    Disable3DRendering = false,
    FpsBoost = false,
    AntiAfk = true
}
aj = { cash = 0, gems = 0, rebirthReady = false }
V = fn601
Z = fn197
E = fn574
ag = fn162
u = fn495
N = fn190
ao = fn293
local function as_3(c, a, e)
    task.spawn(function()
        local u_1
        local I_4
        while not s.Unloaded do
            if j[c] then
                I_4, u_1 = pcall(e)
                if not I_4 then
                    local dT = tostring(u_1)
                    local dR = ae .. "] " .. c .. ": " .. dT
                    warn("[" .. dR)
                end
            end
            task.wait(a)
        end
    end)
end
S = fn70
connection5, connection6 = nil, nil
connection5 = Remotes.CurrencyUpdate.OnClientEvent:Connect(onOnClientEvent)
s.Track(fn42)
connection6 = Remotes.Rebirth.OnClientEvent:Connect(onOnClientEvent2)
s.Track(fn181)
q, k, ah, U, J, A, connection3, connection4, connection2, connection, O, C, y, p, T, af, connection7, I, R, ak, K, l, o, G = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
task.spawn(worker)
aE = fn346
as_3("AutoBuyNoobs", 0.2, fn20)
as_3("AutoMerge", 0.2, fn356)
as_3("AutoCollectCards", 0.25, fn509)
as_3("AutoConvertCards", 0.2, aE)
as_3("AutoCollectCash", 0.25, fn136)
as_3("AutoUpgradeConvertSpeed", 0.35, fn289)
as_3("AutoUpgradeBuyTier", 0.35, fn333)
as_3("AutoRebirth", 0.75, fn344)
as_3("AutoBuyPotions", 0.5, fn514)
q = {}
k = setmetatable({}, { __mode = "k" })
ah = setmetatable({}, { __mode = "k" })
U = setmetatable({}, { __mode = "k" })
J = setmetatable({}, { __mode = "k" })
A = { connection = nil, humanoid = nil, priorPlatformStand = nil }
connection3 = nil
connection4 = nil
connection2 = nil
connection = nil
O = {}
C = nil
y = nil
q.setWalkSpeedEnabled = fn195
q.setWalkSpeed = fn216
q.setInfJump = fn611
R = fn366
ak = fn255
q.setNoClip = fn627
K = fn54
l = fn183
q.setInstantProximityPrompt = fn540
o = fn466
q.setFly = fn654
q.setFlySpeed = fn487
p = 0
q.setNoGameplayPaused = function(e)
    local aa
    local D = 2
    while true do
        D += 13430
        if D < 13430 then
            break
        elseif D < 13432 then
            if D < 13431 then
                if D == 13430 then
                    task.spawn(function()
                        while true do
                            if not s.Unloaded and j.AntiGameplayPause and aa == p then
                                pcall(function()
                                    GuiService:ClearError()
                                end)
                                local PlayerGui = LocalPlayer:FindFirstChild("PlayerGui")
                                if PlayerGui then
                                    local GameplayPaused = PlayerGui:FindFirstChild("GameplayPaused")
                                    local ar_14 = GameplayPaused and GameplayPaused:IsA("GuiObject")
                                    if ar_14 then
                                        GameplayPaused.Enabled = false
                                    end
                                end
                                task.wait(1)
                                continue
                            end
                            break
                        end
                    end)
                    D = 3
                else
                    D = 8182
                    continue
                end
            elseif D == 13431 then
                return
            else
                D = 15216
                continue
            end
        elseif D < 13433 then
            j.AntiGameplayPause = e == true
            p += 1
            aa = p
            D = if not j.AntiGameplayPause then 1 else 0
        else
            break
        end
    end
end
q.setAutoReconnect = function(c)
    local a6, J
    j.AutoReconnect = c == true
    local fd = O
    for i, v in ipairs(fd) do
        v:Disconnect()
    end
    table.clear(O)
    if not j.AutoReconnect then
        return
    end
    a6 = 0
    J = function()
        local ay, a4
        local N = 5
        while true do
            N += 14866
            if N < 14303 then
                break
            elseif N < 14868 then
                if N < 14866 then
                    break
                elseif N < 14867 then
                    a4 = not j.AutoReconnect
                    N = 2
                else
                    return
                end
            elseif N < 14870 then
                if N < 14869 then
                    if N == 14868 then
                        N = if a4 then 1 else 4
                    else
                        N = 14871
                        continue
                    end
                else
                    break
                end
            elseif N < 14871 then
                if N == 14870 then
                    a6 += 1
                    ay = a6
                    task.spawn(function()
                        task.wait(1.5)
                        if s.Unloaded or not j.AutoReconnect or ay ~= a6 then
                            return
                        end
                        pcall(function()
                            local fo = LocalPlayer
                            TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, fo)
                        end)
                        task.wait(4)
                        local v_1 = s.Unloaded or not j.AutoReconnect
                        local aw_2 = ay ~= a6
                        local aX_1 = v_1
                        local K = if aX_1 then 1 else 0
                        local a2 = 291 * K + 4002 * (1 - K)
                        local M = 2927 * K + 961 * (1 - K)
                        if not ((a2 * 2062 + M * 2862 + a2 * M) % 16777213 == 9828873) then
                            aX_1 = aw_2
                        end
                        if aX_1 then
                            return
                        end
                        pcall(function()
                            TeleportService:Teleport(game.PlaceId, LocalPlayer)
                        end)
                    end)
                    N = 3
                else
                    N = 5152
                    continue
                end
            else
                a4 = s.Unloaded
                local aQ = if a4 then 1 else 0
                local al = 4000 * aQ + 4007 * (1 - aQ)
                local G = 872 * aQ + 2969 * (1 - aQ)
                N = if (al * 3273 + G * 3523 + al * G) % 16777213 == 2874843 then 2 else 0
            end
        end
    end
    table.insert(O, GuiService.ErrorMessageChanged:Connect(function()
        local T = 0
        while true do
            T += 8229
            if T < 8438 then
                if T < 8229 then
                    break
                elseif T < 8231 then
                    if T < 8230 then
                        T = if j.AutoReconnect then 1 else 2
                    elseif T == 8230 then
                        J()
                        T = 2
                    else
                        T = 15950
                        continue
                    end
                elseif T < 8232 then
                    T = 3
                else
                    break
                end
            else
                break
            end
        end
    end))
    table.insert(O, TeleportService.TeleportInitFailed:Connect(function(a)
        local ae
        local af = 1
        while true do
            af += 9575
            if af < 9578 then
                if af < 9575 then
                    break
                elseif af < 9576 then
                    break
                elseif af < 9577 then
                    if af == 9576 then
                        ae = a == LocalPlayer
                        local p = if ae then 1 else 0
                        local av = 1613 * p + 1938 * (1 - p)
                        local w = 2832 * p + 1242 * (1 - p)
                        af = if (av * 241 + w * 1271 + av * w) % 16777213 == 8556221 then 3 else 4
                    else
                        af = 15026
                        continue
                    end
                elseif af == 9577 then
                    af = 0
                else
                    af = 9578
                    continue
                end
            elseif af < 10314 then
                if af < 9579 then
                    if af == 9578 then
                        ae = j.AutoReconnect
                        af = 4
                    else
                        af = 13142
                        continue
                    end
                elseif af < 9580 then
                    if af == 9579 then
                        af = if ae then 5 else 2
                    else
                        af = 1257
                        continue
                    end
                elseif af == 9580 then
                    J()
                    af = 2
                else
                    break
                end
            else
                break
            end
        end
    end))
    s.Track(function()
        local fy = O
        for i, v in ipairs(fy) do
            v:Disconnect()
        end
        table.clear(O)
    end)
end
q.setDisable3D = fn65
T = { ParticleEmitter = true, Trail = true, Beam = true, Fire = true, Smoke = true, Sparkles = true }
G = fn560
q.setFpsBoost = fn247
af = {}
connection7 = nil
I = 0
af.setAntiAfk = function(g)
    local aa
    j.AntiAfk = g == true
    I += 1
    aa = I
    if connection7 then
        connection7:Disconnect()
        connection7 = nil
    end
    if not j.AntiAfk then
        return
    end
    connection7 = LocalPlayer.Idled:Connect(function()
        local J
        local ah = 5
        while true do
            ah += 10763
            if ah < 10763 then
                break
            elseif ah < 10767 then
                if ah < 10765 then
                    if ah < 10764 then
                        ah = if J then 3 else 2
                    elseif ah == 10764 then
                        J = not j.AntiAfk
                        ah = 0
                    else
                        ah = 939
                        continue
                    end
                elseif ah < 10766 then
                    if ah == 10765 then
                        pcall(function()
                            VirtualUser:CaptureController()
                            VirtualUser:ClickButton2(Vector2.new())
                        end)
                        ah = 4
                    else
                        ah = 10734
                        continue
                    end
                elseif ah == 10766 then
                    return
                else
                    ah = 15906
                    continue
                end
            elseif ah < 12908 then
                if ah < 10768 then
                    break
                elseif ah == 10768 then
                    J = s.Unloaded
                    ah = if J then 0 else 1
                else
                    break
                end
            else
                break
            end
        end
    end)
    task.spawn(function()
        local aE, w, ak
        local aR = 15
        while true do
            aR += 8676
            if aR < 8684 then
                if aR < 8680 then
                    if aR < 8678 then
                        if aR < 8677 then
                            if aR < 6012 then
                                break
                            elseif aR < 8676 then
                                break
                            elseif aR == 8676 then
                                aR = if ak then 17 else 6
                            else
                                aR = 8682
                                continue
                            end
                        else
                            aR = 3
                        end
                    elseif aR < 8679 then
                        w = aa == I
                        ak = aE
                        aR = if ak then 9 else 0
                    elseif aR == 8679 then
                        aE = not s.Unloaded
                        aR = if aE then 14 else 2
                    else
                        aR = 11304
                        continue
                    end
                elseif aR < 8682 then
                    if aR < 8681 then
                        if aR == 8680 then
                            aR = 1
                        else
                            aR = 8678
                            continue
                        end
                    else
                        aR = 10
                    end
                elseif aR < 8683 then
                    aR = 10
                elseif aR == 8683 then
                    aE = not j.AntiAfk
                    aR = 11
                else
                    aR = 8688
                    continue
                end
            elseif aR < 8690 then
                if aR < 8687 then
                    if aR < 8685 then
                        aR = if ak then 5 else 13
                    elseif aR < 8686 then
                        ak = w
                        aR = 0
                    else
                        aR = 12
                    end
                elseif aR < 8688 then
                    if aR == 8687 then
                        w = aa ~= I
                        ak = aE
                        aR = if ak then 8 else 16
                    else
                        aR = 8690
                        continue
                    end
                elseif aR < 8689 then
                    break
                else
                    pcall(function()
                        VirtualUser:CaptureController()
                        VirtualUser:ClickButton2(Vector2.new())
                    end)
                    aR = 4
                end
            elseif aR < 8693 then
                if aR < 8691 then
                    if aR == 8690 then
                        aE = j.AntiAfk
                        aR = 2
                    else
                        aR = 8676
                        continue
                    end
                elseif aR < 8692 then
                    aR = 1
                elseif aR == 8692 then
                    ak = w
                    aR = 8
                else
                    aR = 14557
                    continue
                end
            elseif aR < 10386 then
                if aR == 8693 then
                    task.wait(60)
                    aE = s.Unloaded
                    aR = if aE then 11 else 7
                else
                    aR = 8677
                    continue
                end
            else
                break
            end
        end
    end)
    s.Track(function()
        if connection7 then
            connection7:Disconnect()
            connection7 = nil
        end
        I += 1
    end)
end
connection8 = nil
connection8 = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
s.Track(fn707)
if not at_2 or not av_2 then
    error("UI load requires HttpGet and loadstring", 0)
end
Q = nil
ar_8, Q = pcall(fn168)
local as_5 = not ar_8 or not (function(f, e, g, c)
    if type(f) ~= "string" then
        return false
    end
    if #f ~= e then
        return false
    end
    local a = 5381
    local j = buffer.fromstring(f)
    local k = 0
    while k <= e - 4 do
        local l = buffer.readu32(j, k)
        local a_51 = bit32.bxor(a, l)
        a = bit32.band(a_51 * 33, 4294967295)
        k = k + 4
    end
    while k < e do
        local m = buffer.readu8(j, k)
        local a_52 = bit32.bxor(a, m)
        a = bit32.band(a_52 * 33, 4294967295)
        k = k + 1
    end
    if a ~= g then
        return false
    end
    return f == c
end)(type(Q), 5, 248602996, "table")
if as_5 then
    local fB = tostring(Q)
    error("failed to load UI library: " .. fB, 0)
end
Window, ap, ab, ad = nil, nil, nil, nil
Q:LoadFont({ Name = "ValleySans" })
Q:SetDefaultTheme("Sakura")
Window = Q:CreateWindow({
    Name = ae,
    LoadingSubtitle = aw_1,
    ToggleUIKeybind = "RightControl",
    ConfigurationSaving = { Enabled = true, FolderName = "Ouroboros/MergeHackers", FileName = "default" },
    ToggleButton = { Platform = "Mobile" },
    Home = {
        Title = "Welcome to Merge Hackers!",
        Tier = aw_1,
        Discord = ay,
        Website = ax,
        Stats = { "Players", "Session", "FPS", "Ping" }
    }
})
aB(s, Window)
local ar_9 = Window:CreateTab({ Name = "Main", Icon = "gamepad-2" })
ap = Window:CreateTab({ Name = "Player", Icon = "user" })
ab = Window:CreateTab({ Name = "Settings", Icon = "settings" })
local Group = ar_9:AddLeftGroupbox({ Name = "Automation", Icon = "bot" })
local Group2 = ar_9:AddRightGroupbox({ Name = "Economy", Icon = "coins" })
local dB = au
local dC = au[1]
Group:CreateDropdown({
    Name = "Buy Amount",
    Options = dB,
    CurrentOption = dC,
    AllowNone = false,
    Flag = "BuyNoobAmount",
    Callback = fn349
})
Group:CreateToggle({ Name = "Auto Buy Noobs", CurrentValue = false, Flag = "AutoBuyNoobs", Callback = fn396 })
local dF = fn520
Group:CreateToggle({ Name = "Auto Merge", CurrentValue = false, Flag = "AutoMerge", Callback = dF })
Group:CreateToggle({ Name = "Auto Collect Cards", CurrentValue = false, Flag = "AutoCollectCards", Callback = fn311 })
dF = fn481
Group:CreateToggle({ Name = "Auto Convert Cards", CurrentValue = false, Flag = "AutoConvertCards", Callback = dF })
Group:CreateToggle({ Name = "Auto Collect Cash", CurrentValue = false, Flag = "AutoCollectCash", Callback = fn710 })
dF = fn712
Group2:CreateToggle({
    Name = "Auto Upgrade Convert Speed",
    CurrentValue = false,
    Flag = "AutoUpgradeConvertSpeed",
    Callback = dF
})
Group2:CreateToggle({
    Name = "Auto Upgrade Buy Tier",
    CurrentValue = false,
    Flag = "AutoUpgradeBuyTier",
    Callback = fn715
})
dF = fn61
Group2:CreateToggle({ Name = "Auto Rebirth", CurrentValue = false, Flag = "AutoRebirth", Callback = dF })
local at_3 = {}
ad = {}
for i, v in ipairs(Order) do
    local ar_10 = Definitions[v]
    local ar_11 = ar_10 and ar_10.Row or v
    table.insert(at_3, ar_11)
    ad[ar_11] = v
end
do
    local dL = at_3[1]
    Group2:CreateDropdown({
        Name = "Potion",
        Options = at_3,
        CurrentOption = dL,
        AllowNone = false,
        Flag = "PotionChoice",
        Callback = fn578
    })
    dL = fn437
    Group2:CreateToggle({ Name = "Auto Buy Potions", CurrentValue = false, Flag = "AutoBuyPotions", Callback = dL })
end
if not am then
    Q:Notify({
        Title = ae,
        Content = "firetouchinterest missing; plot button automation unavailable",
        Type = "Warning",
        Duration = 6
    })
end
fn471()
fn459()
q.setNoGameplayPaused(true)
af.setAntiAfk(true)
Window:LoadAutoload()
if Q.Flags.HideUIOnStart == true then
    Window:Toggle(false)
end
