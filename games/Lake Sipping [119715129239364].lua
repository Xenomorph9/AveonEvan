local fns = {}
local Qt_6, Qt_8, Qt_9, Qt_11, Qt_12, Qt_13, Qt_15, Qt_16, Qt_19, Qt_23, Qt_29, Qt_33, Qt_39, Qt_43, Qt_49, Qt_53, Qt_59, Qt_68, Qt_71, Qt_77, Qt_86, Qt_95, Qt_104, Qt_113, Qt_122
fns.connection7 = nil
fns.Qt_4 = nil
Qt_6 = nil
Qt_8 = nil
Qt_9 = nil
Qt_11 = nil
Qt_13 = nil
Qt_15 = nil
Qt_16 = nil
local BM
local AM
local Options
local Bz
local Az
local zz
local AY
local zY
local Am
local connection2
local AL
local zL
local z9
local By
local Ay
local zy
local AX
local zX
local Al
local AK
local onDisable3D
local A8
local z8
local Bx
local connection
local AW
local zW
local Bk
local Ak
local AJ
local zJ
local A7
local z7
local Bw
local connection5
local zV
local BI
local AI
local zI
local A6
local z6
local Bv
local Av
local zv
local zU
local Bi
local Ai
local AH
local A5
local z5
local Bu
local Au
local AT
local zT
local Bh
local Ah
local BG
local connection4
local zG
local A4
local Bt
local At
local BS
local AS
local zS
local Bg
local BF
local AF
local zF
local z3
local bodyGyro
local BR
local AR
local zR
local getCurrentLuck
local Af
local BE
local AE
local zE
local A2
local z2
local BQ
local AQ
local Toggles
local connection6
local Ae
local AD
local A1
local z1
local Bq
local Aq
local Flamework
local zP
local Bd
local Ad
local BC
local AC
local A0
local Bp
local Ap
local BO
local AO
local LocalPlayer
local Ac
local BB
local bodyVelocity
local zB
local connection3
local z_
local Bo
local Ao
local BN
function fns.fn5(c6, c7)
    z8 = c6
    pcall(c7)
    z8 = nil
end
function fns.antiAfkLoop()
    while not z6.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            if AL.AfkController then
                pcall(function()
                    AL.AfkController:resetIdle()
                end)
            end
            local Qm = tick() - zY
            local Qn = tick() - zR
            if Qm >= 300 and Qn >= 60 then
                pcall(BO)
            else
                if Qm < 300 and Qn >= 300 then
                    pcall(BO)
                end
            end
        end
    end
end
function fns.fn116()
    local D4_1
    local D3_1
    if identifyexecutor then
        D4_1, D3_1 = identifyexecutor()
        local D5 = D4_1 ~= ""
        local D6 = type(D4_1) == "string" and D5
        if D6 then
            local D5_1 = type(D3_1) == "string" and D3_1 ~= "" and D4_1 .. " " .. D3_1
            AW = D5_1 or D4_1
        end
    end
end
function fns.fn130()
    local G5 = Av()
    if not G5 then
        return nil
    end
    return zB:getClosestSeller(G5.Position)
end
function fns.fn165()
    local Fv_1
    local Fu_1
    local Fs = Av()
    if Fs == nil then
        return nil
    end
    local Ft = zG()
    Fv_1, Fu_1 = nil, math.huge
    for k, v in Ah(AF.LAKE_COMPONENT) do
        local Fw = not v:isEmpty() and v.instance.PrimaryPart and Bh(v, Ft)
        if Fw then
            local Fw_1 = v:getDistanceToPrimary(Fs.Position)
            if Fw_1 < Fu_1 then
                Fv_1, Fu_1 = v, Fw_1
            end
        end
    end
    return Fv_1, Fu_1
end
function fns.fn175(aS, aT)
    return aS.order < aT.order
end
function fns.fn212(dB, dC)
    local E0 = Av()
    if E0 == nil or dB == nil then
        return
    end
    local E1_1 = z3(dB)
    if E1_1 == nil then
        return
    end
    local CFrame2 = E0.CFrame
    if Bx(CFrame.new(E1_1 + Vector3.new(0, 3, 0))) then
        pcall(dC)
        task.wait(0.3)
    end
    Bx(CFrame2)
end
function fns.worker3()
    while not z6.Unloaded do
        task.wait(10)
        Bw("Daily Reward", BB)
        Bw("Achievements", AO)
        Bw("Group Reward", Qt_11)
        Bw("Buy Best Gear", BE)
        Bw("Equip Best Gear", AI)
        Bw("Class Roll", Ad)
        Bw("Zone Unlock", AX)
        Bw("Codes", BQ)
    end
end
function fns.fn219()
    local minSipInterval = require(By.TS.configurations.SippingConfiguration).default.minSipInterval
    local D1 = type(minSipInterval) == "number" and minSipInterval > 0
    if D1 then
        Qt_6 = minSipInterval
    end
end
function fns.fn247()
    local Ha = Av()
    local Hb = Qt_13()
    if Ha == nil or Hb == nil then
        AD()
        task.wait(0.4)
        return
    end
    while Af do
        BR("Auto Sell")
        task.wait(0.2)
    end
    Aq()
    Af = true
    z2 = "Auto Sell"
    AY(Hb.instance, function()
        AD()
        task.wait(0.4)
    end)
    Af = false
    z2 = nil
end
function fns.fn252(dw)
    local EY = 1
    while EY <= 6 do
        local EU = Av()
        if EU == nil then
            return false
        end
        EU.CFrame = dw
        task.wait(0.1)
        EY += 1
    end
    return true
end
function fns.fn258()
    for k, v in Ac do
        v:SetVisible(Options.BaitItems.Value[k] == true)
    end
end
function fns.fn289()
    local Ho = if not Bq() then 1 else 0
    if Ho == 1 then
        return
    end
    Ak()
end
function fns.autoSipLoop()
    while not z6.Unloaded do
        if Toggles.AutoSip and Toggles.AutoSip.Value then
            local PK_1 = pcall(function()
                local PI_1
                if Ae:isSipping() then
                    zF()
                    return
                end
                if Af then
                    BR("Auto Sip")
                    task.wait(0.3)
                    return
                end
                Aq()
                AE()
                if z7:isFull() then
                    task.wait(0.5)
                    return
                end
                AM()
                A1()
                if Toggles.SipAllLakes.Value then
                    PI_1 = zX()
                    if PI_1 == nil then
                        task.wait(0.5)
                        return
                    end
                elseif Toggles.AutoSwapLake.Value then
                    PI_1 = Ay()
                    if PI_1 == nil then
                        task.wait(0.5)
                        return
                    end
                else
                    PI_1 = Qt_8()
                end
                zJ(PI_1)
                Az(PI_1)
                A2()
                Ae:startLoading()
                task.wait(0.1)
                A7 = A7 + 1
                if Ae:launch():await() then
                    zF()
                end
            end)
            if not PK_1 then
                task.wait(0.5)
            end
        end
        task.wait(0.1)
    end
end
function fns.fn316()
    Af = false
    z2 = nil
end
function fns.onPerfectCharge(iu)
    if iu then
        Ae.getCurrentLuck = function()
            return BC
        end
    else
        Ae.getCurrentLuck = getCurrentLuck
    end
end
function fns.onJumpRequest()
    if not Toggles.InfiniteJump.Value then
        return
    end
    local OX = AT()
    if OX then
        OX:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
function fns.fn378()
    if not workspace.CurrentCamera then
        return
    end
    BM:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    BM:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    zR = tick()
end
function fns.fn394()
    local M4_1, M4_4, M4_5, M4_8
    local M3_1, M3_6, M3_8, M3_11
    if AL.LevelController then
        M3_1, M4_1 = pcall(function()
            return AL.LevelController:getLevel()
        end)
        local levelLabel = At.levelLabel
        local M6_1 = M3_1 and tostring(M4_1)
        local M3_2 = M6_1 or "?"
        levelLabel:SetText("Level: " .. M3_2)
    end
    local M3_3 = AL.CurrencyController and typeof(AL.CurrencyController.currenciesValue) == "table"
    if M3_3 then
        local coinsLabel = At.coinsLabel
        local M4_2 = AL.CurrencyController.currenciesValue.coins or 0
        coinsLabel:SetText("Coins: " .. tostring(M4_2))
        local scalesLabel = At.scalesLabel
        local M4_3 = AL.CurrencyController.currenciesValue.scales or 0
        scalesLabel:SetText("Scales: " .. tostring(M4_3))
    end
    if AL.WeatherManager then
        M3_6, M4_4 = pcall(function()
            return AL.WeatherManager:getCurrentWeather()
        end)
        local weatherLabel = At.weatherLabel
        local M6_2 = M3_6 and typeof(M4_4) == "table" and tostring(M4_4.title)
        local M3_7 = M6_2 or "?"
        weatherLabel:SetText("Weather: " .. M3_7)
    end
    if AL.FishEventManager then
        M3_8, M4_5 = pcall(function()
            return AL.FishEventManager:getActiveEvents()
        end)
        local M5_3 = M3_8
        local M3_9 = {}
        if M5_3 then
            M5_3 = typeof(M4_5) == "table"
        end
        if M5_3 then
            for k, v in M4_5 do
                local M4_6 = typeof(v) == "table" and v.title
                if M4_6 then
                    table.insert(M3_9, v.title)
                end
            end
        end
        local eventLabel = At.eventLabel
        local M5_4 = #M3_9 > 0 and table.concat(M3_9, ", ")
        local M3_10 = M5_4 or "None"
        eventLabel:SetText("Event: " .. M3_10)
    end
    if AL.MetricsController then
        M3_11, M4_8 = pcall(function()
            return AL.MetricsController:getMetric("fishCaught")
        end)
        local caughtLabel = At.caughtLabel
        local M6_3 = M3_11 and tostring(M4_8)
        local M3_12 = M6_3 or "?"
        caughtLabel:SetText("Fish Caught: " .. M3_12)
    end
end
function fns.worker()
    while not z6.Unloaded do
        pcall(AJ)
        pcall(zI)
        task.wait(1)
    end
end
function fns.autoWorldLootLoop()
    while not z6.Unloaded do
        task.wait(2)
        local PM = Toggles.AutoWorldLoot and Toggles.AutoWorldLoot.Value and not zU()
        if PM then
            Bw("World Loot", Bo)
        end
    end
end
function fns.fn424()
    return AL.ForgeManager:getAll()
end
function fns.fn428()
    local Lb_1
    local La = not Toggles.AutoGroupReward.Value or AL.GroupController == nil
    local La_1
    if La then
        return
    end
    La_1, Lb_1 = pcall(function()
        return AL.GroupController:isClaimed()
    end)
    if La_1 and Lb_1 then
        return
    end
    Bu(AL.GroupController:claim())
    task.wait(0.4)
end
function fns.fn429(cD)
    for k, v in Ah(cD) do
        return v
    end
    return nil
end
function fns.fn431()
    if not Toggles.AutoForge.Value or AL.ForgeController == nil then
        return
    end
    if AL.ForgeController:canClaim() then
        Bu(AL.ForgeController:claim())
        task.wait(0.3)
    end
    local Ja_1 = Toggles.AutoSkipForge.Value and AL.ForgeController:getActiveForge() ~= nil
    if Ja_1 then
        Bu(AL.ForgeController:skipForge())
        task.wait(0.3)
    end
    local Ja_2 = AL.ForgeController:getActiveForge() ~= nil
    local Je = if Ja_2 then 1 else 0
    local Jc = 1681 * Je + 1804 * (1 - Je)
    local Jd = 1459 * Je + 1960 * (1 - Je)
    if not ((Jc * 2169 + Jd * 188 + Jc * Jd) % 16777213 == 6372960) then
        Ja_2 = AL.ForgeController:isCapped()
    end
    if Ja_2 then
        return
    end
    local Ja_3 = AS[Options.ForgeRecipe.Value]
    if Ja_3 == nil then
        return
    end
    Bu(AL.ForgeController:start(Ja_3))
    task.wait(0.3)
end
function fns.fn433()
    setclipboard(A6)
    z6:Notify("Copied Discord invite to clipboard")
end
function fns.fn450(eU)
    local Water = eU.instance:FindFirstChild("Water")
    if Water == nil then
        return nil
    end
    local F8 = Water.Position.Y + Water.Size.Y / 2
    local F9 = RaycastParams.new()
    F9.FilterType = Enum.RaycastFilterType.Exclude
    F9.FilterDescendantsInstances = { LocalPlayer.Character, Water }
    local Ga = Av()
    local Ga_1 = Ga and Ga.Position or Water.Position
    local Position = nil
    local Ga_2 = math.huge
    for k, v in { 1.5, 3, 5 } do
        local Gp = 0
        while Gp <= 15 do
            local Gd = Gp * math.pi / 8
            local Ge = Water.Position.X + math.cos(Gd) * (Water.Size.X / 2 + v)
            local Gf = Water.Position.Z + math.sin(Gd) * (Water.Size.Z / 2 + v)
            local Gd_1 = workspace:Raycast(Vector3.new(Ge, F8 + 30, Gf), Vector3.new(0, -80, 0), F9)
            if Gd_1 and Gd_1.Position.Y >= F8 - 1 then
                local Magnitude = (Gd_1.Position - Ga_1).Magnitude
                if Magnitude < Ga_2 then
                    Position = Gd_1.Position
                    Ga_2 = Magnitude
                end
            end
            Gp += 1
        end
        if Position then
            break
        end
    end
    if Position then
        return CFrame.new(Position + Vector3.new(0, Bt(), 0))
    end
    return CFrame.new(Water.Position + Vector3.new(0, Water.Size.Y / 2 + Qt_15, 0))
end
function fns.fn458()
    local FE = zG()
    local FF = {}
    for k, v in Ah(AF.LAKE_COMPONENT) do
        local FG = v.instance.PrimaryPart and Bh(v, FE)
        if FG then
            table.insert(FF, v)
        end
    end
    table.sort(FF, function(ex, ey)
        return ex.instance:GetFullName() < ey.instance:GetFullName()
    end)
    return FF
end
function fns.fn470()
    local FO = A0()
    if #FO == 0 then
        return nil
    end
    if A7 >= Options.SipsPerLake.Value then
        Bd = Bd + 1
        A7 = 0
    end
    local FP = #FO - 1
    local FU = 0
    while FU <= FP do
        local FP_1 = (Bd + FU - 1) % #FO + 1
        local FQ = FO[FP_1]
        if not FQ:isEmpty() then
            if FP_1 ~= Bd then
                Bd = FP_1
                A7 = 0
            end
            return FQ
        end
        FU += 1
    end
    return nil
end
function fns.fn530()
    local MP = 0
    local MQ = {}
    for k, v in zP do
        local MR = Toggles[v.toggle]
        if MR and MR.Value then
            local MR_1 = ""
            if z2 == v.name then
                MR_1 = " - running"
            end
            local MS_1 = os.clock()
            if MS_1 - (z_[v.name] or -math.huge) <= 10 then
                MP += 1
                table.insert(MQ, '<font color="#FF4444">' .. v.name .. MR_1 .. " (Overlap)</font>")
            else
                table.insert(MQ, v.name .. MR_1)
            end
        end
    end
    if #MQ == 0 then
        At.statusLabel:SetText("Nothing running")
        return
    end
    if MP > 0 then
        table.insert(MQ, 1, '<font color="#FF4444">' .. MP .. " overlapping</font>")
    end
    At.statusLabel:SetText(table.concat(MQ, "\n"))
end
function fns.onRenderStepped()
    if not Toggles.Fly.Value then
        if bodyVelocity then
            Qt_16()
        end
        return
    end
    local O0 = Av()
    local O1 = AT()
    local O1_1
    if O0 == nil or O1 == nil or workspace.CurrentCamera == nil then
        return
    end
    if bodyVelocity == nil or bodyVelocity.Parent ~= O0 then
        Qt_16()
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Velocity = Vector3.zero
        bodyVelocity.Parent = O0
        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.P = 9000
        bodyGyro.Parent = O0
    end
    O1.PlatformStand = true
    local O0_1 = Vector3.zero
    if BG:IsKeyDown(Enum.KeyCode.W) then
        O0_1 += workspace.CurrentCamera.CFrame.LookVector
    end
    if BG:IsKeyDown(Enum.KeyCode.S) then
        O0_1 -= workspace.CurrentCamera.CFrame.LookVector
    end
    if BG:IsKeyDown(Enum.KeyCode.A) then
        O0_1 -= workspace.CurrentCamera.CFrame.RightVector
    end
    if BG:IsKeyDown(Enum.KeyCode.D) then
        O0_1 += workspace.CurrentCamera.CFrame.RightVector
    end
    if BG:IsKeyDown(Enum.KeyCode.Space) then
        O0_1 += Vector3.yAxis
    end
    local O9 = if BG:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
    if O9 == 1 then
        O0_1 -= Vector3.yAxis
    end
    bodyGyro.CFrame = workspace.CurrentCamera.CFrame
    if O0_1.Magnitude > 0 then
        O1_1 = O0_1.Unit * Options.FlySpeed.Value
    else
        O1_1 = Vector3.zero
    end
    bodyVelocity.Velocity = O1_1
end
function fns.onAutoSip(iq)
    if iq then
        zS:setActive(false)
    else
        Aq()
    end
    Ae:setAutoContext(iq)
end
function fns.fn656(ci)
    local DiscordGroup = ci:AddLeftGroupbox("Discord", nil, true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = zv })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = zv })
end
function fns.fn658(dX, dY)
    local lakeName = dX.attributes.lakeName
    local Ff = lakeName == nil or not zz:exists(lakeName)
    if Ff then
        return false
    elseif dY == nil then
        return true
    else
        local name = zz:getByName(lakeName).zone.name
        for k, v in dY do
            local Fg = v.zone == name
            if Fg then
                local Fh = v.prefix == nil or lakeName:sub(1, #v.prefix) == v.prefix
                Fg = Fh
            end
            if Fg then
                return true
            end
        end
        return false
    end
end
function fns.fn668(B, D)
    if B[D] then
        return B[D]
    end
    for k, v in B do
        if k:find(D, 1, true) then
            return v
        end
    end
    return nil
end
function fns.fn680(bK, bL)
    return bK.tier < bL.tier
end
function fns.fn692()
    return zW:getHumanoid()
end
function fns.fn697()
    return AL.MutationManager:getSorted()
end
function fns.onStepped2()
    if not Toggles.NoClip.Value then
        return
    end
    local Character = LocalPlayer.Character
    if Character == nil then
        return
    end
    for i, descendant in Character:GetDescendants() do
        local OM_1 = descendant:IsA("BasePart") and descendant.CanCollide
        if OM_1 then
            descendant.CanCollide = false
        end
    end
end
function fns.fn750()
    local E5 = {}
    for k, v in Options.Areas.Value do
        if v and z9[k] then
            table.insert(E5, z9[k])
        end
    end
    if #E5 == 0 then
        return nil
    end
    return E5
end
function fns.fn810()
    AR = nil
end
function fns.fn824(aB)
    return "ConsumableAmount_" .. aB
end
function fns.fn834()
    local Gw_1
    local Gv_1
    Gw_1, Gv_1 = Qt_8()
    if Gw_1 == nil then
        return nil
    elseif Gv_1 <= Bv then
        return Gw_1
    else
        local Gv_2 = Ao(Gw_1)
        if Gv_2 == nil then
            return nil
        end
        local Gx = Av()
        if Gx == nil then
            return nil
        end
        Gx.CFrame = Gv_2
        task.wait(0.3)
        local Gx_1 = Av()
        if Gx_1 then
            Gx_1.CFrame = Gv_2
        end
        task.wait(0.2)
        return Gw_1
    end
end
function fns.worker2()
    while not z6.Unloaded do
        task.wait(8)
        if not zU() then
            Bw("Map Elements", A5)
            Bw("Treasure Map", Bk)
            Bw("Dispensers", AC)
            Bw("Levers", Qt_9)
            Bw("Composter", zT)
            Bw("Strawberry Machine", AQ)
            Bw("Weird Fish", zE)
        end
    end
end
function fns.onUnload()
    z6:Unload()
end
function fns.fn925()
    pcall(function()
        z1.net:call("sellAll"):await()
    end)
end
function fns.fn941(fr)
    if fr == nil then
        return
    end
    local Gz = Ao(fr)
    if Gz == nil then
        return
    end
    AR = Gz
    task.wait(0.3)
end
function fns.onHeartbeat()
    if AR == nil then
        return
    end
    local Ey = Av()
    if Ey then
        Ey.CFrame = AR
        Ey.AssemblyLinearVelocity = Vector3.zero
    end
end
function fns.fn955()
    local Hp = {}
    for k, v in Ah(AF.LAKE_COMPONENT) do
        local ChestRef = v.instance:FindFirstChild("ChestRef")
        if ChestRef then
            table.insert(Hp, ChestRef.Position - Vector3.new(0, ChestRef.Size.Y / 2, 0))
        end
    end
    return Hp
end
function fns.fn961()
    local NH_1
    local NG = not Toggles.AutoTreasureMap.Value
    local NG_1
    local NM = if NG then 1 else 0
    local NK = 4016 * NM + 353 * (1 - NM)
    local NL = 1703 * NM + 421 * (1 - NM)
    if not ((NK * 1338 + NL * 7 + NK * NL) % 16777213 == 12224577) then
        NG = AL.TreasureMapController == nil
    end
    if NG then
        return
    end
    NG_1, NH_1 = pcall(function()
        return AL.TreasureMapController:isClaimed()
    end)
    if NG_1 and NH_1 then
        return
    end
    Bu(AL.TreasureMapController:claim())
    task.wait(0.4)
end
function fns.onRollOnce()
    task.spawn(function()
        if AL.ClassController then
            Bu(AL.ClassController:rollClass())
        end
    end)
end
function fns.onWalkSpeed(rR)
    local OG = AT()
    if OG and Toggles.WalkSpeedEnabled.Value then
        OG.WalkSpeed = rR
    end
end
function fns.fn981()
    return AL.FishManager:getAllFishes()
end
function fns.fn983()
    if not Toggles.AutoFavorite.Value then
        return
    end
    for k, v in z7:getFishes() do
        if z6.Unloaded or not Toggles.AutoFavorite.Value then
            break
        end
        local Jr_1 = typeof(v) == "table" and v.id and v.locked ~= true and Au(v)
        if Jr_1 then
            Bu(z7:lock(v.id))
            task.wait(0.25)
        end
    end
end
function fns.onTeleport()
    local Pd_1
    local Pc_1
    local Pa = z9[Options.TeleportArea.Value]
    if Pa == nil then
        return
    end
    local Pb = Av()
    if Pb == nil then
        return
    end
    Pd_1, Pc_1 = nil, nil
    for k, v in Ah(AF.LAKE_COMPONENT) do
        local Pe = v.instance.PrimaryPart and Bh(v, { Pa })
        if Pe then
            local Pe_1 = v:getDistanceToPrimary(Pb.Position)
            if Pc_1 == nil or Pe_1 < Pc_1 then
                Pd_1, Pc_1 = v, Pe_1
            end
        end
    end
    if Pd_1 == nil then
        z6:Notify("No lake found in that area")
        return
    end
    local Pa_1 = Ao(Pd_1) or CFrame.new(Pd_1.instance:GetPivot().Position + Vector3.new(0, 6, 0))
    Pb.CFrame = Pa_1
end
function fns.fn1004(c3)
    if c3 then
        z_[c3] = os.clock()
    end
end
function fns.fn1041()
    connection6:Disconnect()
    fns.connection7:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    Qt_16()
    Aq()
    connection:Disconnect()
    onDisable3D(false)
    Ae.getCurrentLuck = getCurrentLuck
    Ae:setAutoContext(false)
end
function fns.fn1048(dK, dL)
    if not A4() then
        return
    end
    AY(dK, dL)
    Ai()
end
function fns.fn1059()
    local EE_1
    local ED_1
    ED_1, EE_1 = pcall(function()
        return Ae:isSipping()
    end)
    return ED_1 and EE_1 == true
end
function fns.fn1062()
    local HF = Al()
    local HG = {}
    for k, v in fns.Qt_4:getChests() do
        local HH = not fns.Qt_4:isOpened(k) and zL(v, HF)
        if HH then
            table.insert(HG, { id = k, chest = v })
        end
    end
    return HG
end
function fns.fn1068()
    while true do
        if not z6.Unloaded and Toggles.AutoSip.Value then
            local activeSipping = Ae.activeSipping
            if activeSipping == nil or activeSipping.done then
                break
            end
            pcall(function()
                Ae:sip()
            end)
            local wait = task.wait
            local IO = Toggles.InstantCatch.Value and Qt_6 or 0.16
            wait(IO)
            continue
        end
        break
    end
end
function fns.fn1107()
    local KZ_1
    local KY = not Toggles.AutoAchievement.Value or AL.AchievementController == nil or AL.AchievementManager == nil
    local KY_1
    if KY then
        return
    end
    KY_1, KZ_1 = pcall(function()
        return AL.AchievementManager:getAll()
    end)
    local K_ = not KY_1 or typeof(KZ_1) ~= "table"
    if K_ then
        return
    end
    for k, v in KZ_1 do
        if z6.Unloaded or not Toggles.AutoAchievement.Value then
            break
        end
        local KY_3 = typeof(v) == "table" and v.name
        if KY_3 then
            Bu(AL.AchievementController:claim(v.name))
            task.wait(0.25)
        end
    end
end
function fns.onInputBegan()
    zY = tick()
end
function fns.fn1144()
    local Hi = Toggles.AutoSell.Value and z7:isFull()
    if Hi then
        return true
    elseif Toggles.AutoSellPercent.Value then
        local Hi_1 = BF()
        local Hj = Hi_1 > 0 and z7:getSize() / Hi_1 * 100 >= Options.SellPercent.Value
        if Hj then
            return true
        end
        return false
    else
        return false
    end
end
function fns.onWalkSpeedEnabled(rM)
    local Oz = AT()
    if Oz then
        local OB = rM and Options.WalkSpeed.Value or 16
        Oz.WalkSpeed = OB
    end
end
function fns.worker4()
    while not z6.Unloaded do
        task.wait(3)
        Bw("Favorite Fish", Ap)
        Bw("Crafting", AK)
        Bw("Forge", zV)
        if not zU() then
            Bw("Stash", zy)
            Bw("Potion Shop", Bg)
            Bw("Fruit Vendor", Bi)
            Bw("Scale Shop", AH)
        end
    end
end
function fns.fn1160(M)
    local DX_1
    local DW_1
    local DV = Am.findId(Am.controllers, M)
    if DV == nil then
        return nil
    end
    DW_1, DX_1 = pcall(Flamework.resolveDependency, DV)
    if DW_1 then
        return DX_1
    end
    return nil
end
function fns.fn1163()
    return AL.CraftingManager:getAll()
end
function fns.fn1179()
    local EJ = Af or zU()
    if EJ then
        BR(z8)
        return false
    end
    Aq()
    Af = true
    z2 = z8
    return true
end
function fns.fn1192()
    local F_ = Av()
    local Character = LocalPlayer.Character
    local F1 = Character and Character:FindFirstChildOfClass("Humanoid")
    local F0_1 = F_
    if F0_1 then
        F0_1 = F_.Size.Y / 2
    end
    local F__1 = F0_1 or 1
    local F0_2 = F1
    if F0_2 then
        F0_2 = F1.HipHeight
    end
    return (F0_2 or 2) + F__1 + 0.5
end
function fns.onSellAllNow()
    task.spawn(Ak)
end
function fns.fn1205(gD, gE)
    for k, v in gE do
        if (gD.cFrame.Position - v).Magnitude <= 1 then
            return true
        end
    end
    return false
end
function fns.onConsumableItems()
    BI()
end
function fns.fn1221()
    return AL.ScaleShopManager:getAll()
end
function fns.onInputChanged(uZ)
    local UserInputType = uZ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        zY = tick()
    end
end
function fns.onBaitItems()
    z5()
end
function fns.fn1265()
    if bodyVelocity then
        bodyVelocity:Destroy()
        bodyVelocity = nil
    end
    if bodyGyro then
        bodyGyro:Destroy()
        bodyGyro = nil
    end
    local OZ = AT()
    if OZ then
        OZ.PlatformStand = false
    end
end
function fns.fn1334()
    local Ma_1, Ma_2
    local L9 = not Toggles.AutoRollClass.Value or AL.ClassController == nil
    local L9_1, L9_3
    if L9 then
        return
    end
    L9_1, Ma_1 = pcall(function()
        return AL.ClassController:getEquippedClassName()
    end)
    if L9_1 and Ma_1 then
        for k, v in Options.TargetClasses.Value do
            if v and Bp[k] == Ma_1 then
                return
            end
        end
    end
    L9_3, Ma_2 = pcall(function()
        return AL.ClassController:getSpins()
    end)
    local Mb_1 = L9_3 and typeof(Ma_2) == "number" and Ma_2 <= 0
    if Mb_1 then
        if not Toggles.AutoBuySpins.Value then
            return
        end
        Bu(AL.ClassController:requestBuySpins(1))
        task.wait(0.5)
    end
    Bu(AL.ClassController:rollClass())
    task.wait(0.5)
end
function fns.fn1353()
    for k, v in BN do
        v:SetVisible(Options.ConsumableItems.Value[k] == true)
    end
end
function fns.fn1360()
    return AL.ClassManager:getSorted()
end
function fns.onStepped()
    if not Toggles.WalkSpeedEnabled.Value then
        return
    end
    local OJ = AT()
    if OJ and OJ.WalkSpeed ~= Options.WalkSpeed.Value then
        OJ.WalkSpeed = Options.WalkSpeed.Value
    end
end
function fns.fn1465()
    return math.floor(Bz:getStat("bucketSize") * Bz:getStat("bucketSizeMult"))
end
function fns.fn1478(T)
    local DZ = A8(T)
    if DZ == nil then
        error("Lake Sipping update broke this script, could not resolve " .. T, 0)
    end
    return DZ
end
function fns.fn1479()
    if not Toggles.AutoCraft.Value or AL.CraftingController == nil then
        return
    end
    if AL.CraftingController:canClaim() then
        Bu(AL.CraftingController:claim())
        task.wait(0.3)
    end
    local I8_1 = Toggles.AutoSkipCraft.Value and AL.CraftingController:getActiveCraft() ~= nil
    if I8_1 then
        Bu(AL.CraftingController:skipCraft())
        task.wait(0.3)
    end
    if AL.CraftingController:getActiveCraft() ~= nil then
        return
    end
    local I8_2 = BS[Options.CraftRecipe.Value]
    if I8_2 == nil then
        return
    end
    if not AL.CraftingController:isUnlocked(I8_2) then
        if not Toggles.AutoUnlockRecipe.Value then
            return
        end
        Bu(AL.CraftingController:buy(I8_2))
        task.wait(0.5)
        if not AL.CraftingController:isUnlocked(I8_2) then
            return
        end
    end
    Bu(AL.CraftingController:start(I8_2, Options.CraftAmount.Value))
    task.wait(0.3)
end
function fns.fn1493(az)
    return "BaitAmount_" .. az
end
function fns.fn1500()
    return zW:getPrimaryPart()
end
function fns.fn1502()
    local KV_1
    local KU = not Toggles.AutoDaily.Value or AL.ForeverPackController == nil
    local KU_1
    if KU then
        return
    end
    KU_1, KV_1 = pcall(function()
        return AL.ForeverPackController:isFreeClaimable()
    end)
    if KU_1 and KV_1 then
        Bu(AL.ForeverPackController:claim())
        task.wait(0.4)
    end
end
function fns.fn1518(H)
    return Am.findId(Am.components, H)
end
zv = nil
zy = nil
zz = nil
Qt_11 = nil
zB = nil
zE = nil
zF = nil
zG = nil
zI = nil
zJ = nil
onDisable3D = nil
zL = nil
Options = nil
fns.Qt_4 = nil
zP = nil
Toggles = nil
zR = nil
zS = nil
zT = nil
zU = nil
zV = nil
zW = nil
zX = nil
zY = nil
z_ = nil
z1 = nil
z2 = nil
z3 = nil
z5 = nil
z6 = nil
z7 = nil
z8 = nil
z9 = nil
Qt_8 = nil
Ac = nil
Ad = nil
Ae = nil
Af = nil
local zu, zw, zx, zC, zD, zH, zO, zZ, z0, z4, Aa, Ag
Ah = nil
Ai = nil
Ak = nil
Al = nil
Am = nil
Qt_16 = nil
Ao = nil
Ap = nil
Aq = nil
bodyGyro = nil
At = nil
Au = nil
Av = nil
connection = nil
Ay = nil
Az = nil
bodyVelocity = nil
AC = nil
AD = nil
AE = nil
AF = nil
connection4 = nil
AH = nil
AI = nil
AJ = nil
AK = nil
AL = nil
AM = nil
fns.connection7 = nil
AO = nil
Flamework = nil
AQ = nil
AR = nil
AS = nil
AT = nil
connection5 = nil
AW = nil
AX = nil
AY = nil
Qt_13 = nil
connection3 = nil
A0 = nil
A1 = nil
A2 = nil
local Aj, Ar, Aw, AA, AU, A3
A4 = nil
A5 = nil
A6 = nil
A7 = nil
A8 = nil
Qt_6 = nil
LocalPlayer = nil
Bd = nil
connection6 = nil
getCurrentLuck = nil
Bg = nil
Bh = nil
Bi = nil
Bk = nil
Qt_15 = nil
Bo = nil
Bp = nil
Bq = nil
Bt = nil
Bu = nil
Bv = nil
Bw = nil
Bx = nil
By = nil
Bz = nil
Qt_9 = nil
BB = nil
BC = nil
BE = nil
BF = nil
BG = nil
BI = nil
connection2 = nil
BM = nil
BN = nil
BO = nil
BQ = nil
BR = nil
local A9, Ba, Bj, Bl, Bm, Br, Bs, BD, BH, BJ, BK, BP
BS = nil
Qt_71, BM, BG, By, Br, Bj, LocalPlayer, A6, Qt_43, Qt_53, Flamework, AL, AF, Qt_33, At, Am = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Qt_63 = 27
repeat
    Qt_23 = (Qt_63 * 1 + 1) % 10 + 1
    if Qt_23 <= 5 then
        if Qt_23 <= 3 then
            if Qt_23 <= 2 then
                if Qt_23 <= 1 then
                    Qt_12 = {
                        "jai",
                        "jxz",
                        "pgjeypurij",
                        "opvjcrew",
                        "vxhz",
                        "raoo",
                        "uxhectfike",
                        "jqhrijfzi",
                        "kozncnj",
                        "unbfflgi",
                        "abpe"
                    }
                    local Vq = Qt_63
                    Qt_122 = Qt_12[Vq % 11 + 1]
                    if Qt_122:len() >= Qt_122:gsub("(.)", "%1%1", Vq % 3 % 2 + 1):len() then
                        AL = game:GetService("ReplicatedStorage")
                    else
                        By = game:GetService("ReplicatedStorage")
                    end
                    Qt_63 = (Qt_63 + 61) % 80
                else
                    local SH = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_63, 9), string.byte(tostring(Qt_43))), 30)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(SH, 4209730405), 4), 2931177055) == bit32.lrotate(SH, 4) then
                        Br = game:GetService("RunService")
                        Bj = game:GetService("HttpService")
                    else
                        Bj = game:GetService("RunService")
                        Br = game:GetService("HttpService")
                    end
                    Qt_63 = (Qt_63 + 1) % 80
                end
            else
                local TA = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_63, 28), string.byte(tostring(BG))), 3)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(TA, 4224388421), 3530912443), (bit32.bxor(bit32.band(TA, 70578874), 3469446073))), 3530912443), 3469446073) == TA then
                    LocalPlayer = Qt_71.LocalPlayer
                    A6 = "https://discord.gg/ehKVq7pf7v"
                    Qt_43 = "Lake Sipping"
                else
                    Qt_71 = LocalPlayer.LocalPlayer
                    Qt_43 = "https://discord.gg/ehKVq7pf7v"
                    A6 = "Lake Sipping"
                end
                Qt_63 = (Qt_63 + 51) % 80
            end
        elseif Qt_23 <= 4 then
            Qt_12 = {
                "qahvykhcyiv",
                "yael",
                "uiilbake",
                "lwnczoddcik",
                "rjewakclcy",
                "aivcr",
                "ird",
                "dulmx",
                "bxqjmntejn",
                "biorkkcnpyn",
                "jhwli",
                "dhapwyu"
            }
            local Tl = Qt_63
            Qt_122 = Qt_12[Tl % 12 + 1]
            if Qt_122:len() <= Qt_122:reverse():rep(Tl % 3 + 2):len() then
                Qt_53 = By:WaitForChild("rbxts_include")
            else
                By = Qt_53:WaitForChild("rbxts_include")
            end
            Qt_63 = (Qt_63 + 51) % 80
        else
            Qt_12 = (vector.create((Qt_63 * 3 + 3) % 11 + 1, (Qt_63 * 4 + 6) % 13 + 1, (Qt_63 * 14 + 6) % 17 + 1))
            Qt_122 = (vector.create((Qt_63 * 3 + 5) % 11 + 1, (Qt_63 * 10 + 1) % 13 + 1, (Qt_63 * 10 + 1) % 17 + 1))
            Qt_113 = (vector.create((Qt_63 * 3 + 9) % 11 + 1, (Qt_63 * 4 + 5) % 13 + 1, (Qt_63 * 6 + 7) % 17 + 1))
            Qt_104 = (vector.create((Qt_63 * 3 + 1) % 11 + 1, (Qt_63 * 9 + 13) % 13 + 1, (Qt_63 * 9 + 13) % 17 + 1))
            if vector.dot(vector.cross(Qt_12, Qt_122), (vector.cross(Qt_113, Qt_104))) == vector.dot(Qt_12, Qt_113) * vector.dot(Qt_122, Qt_104) - vector.dot(Qt_12, Qt_104) * vector.dot(Qt_122, Qt_113) then
                Flamework = require(Qt_53.node_modules["@flamework"].core.out).Flamework
            else
                Qt_53 = require(Flamework.node_modules["@flamework"].core.out).Flamework
            end
            Qt_63 = (Qt_63 + 11) % 80
        end
    elseif Qt_23 <= 8 then
        if Qt_23 <= 7 then
            if Qt_23 <= 6 then
                if (((not Flamework or not Qt_53) and (Qt_53 and not Flamework) or (Qt_53 and not Qt_53 or Qt_63 and not Flamework)) and (Flamework and not Qt_53 and (Qt_53 and not Qt_53) or (Flamework or Qt_63 or (Qt_53 or not Qt_63))) or ((Flamework or not Qt_53) and (not Qt_53 and not Qt_63) or not Qt_53 and not Qt_63 and (not Flamework or Qt_63)) and (Qt_63 and not Flamework and (Flamework and not Qt_53) and (not Qt_53 or Qt_63 or Qt_53 and not Flamework))) and not (((not Flamework or not Qt_53) and (Qt_53 and not Flamework) or (Qt_53 and not Qt_53 or Qt_63 and not Flamework)) and (Flamework and not Qt_53 and (Qt_53 and not Qt_53) or (Flamework or Qt_63 or (Qt_53 or not Qt_63))) or ((Flamework or not Qt_53) and (not Qt_53 and not Qt_63) or not Qt_53 and not Qt_63 and (not Flamework or Qt_63)) and (Qt_63 and not Flamework and (Flamework and not Qt_53) and (not Qt_53 or Qt_63 or Qt_53 and not Flamework))) then
                    Am = {}
                else
                    AL = {}
                end
                Qt_63 = (Qt_63 + 61) % 80
            else
                Qt_12 = (vector.create((Qt_63 * 4 + 6) % 11 + 1, (Qt_63 * 10 + 10) % 13 + 1, (Qt_63 * 9 + 3) % 17 + 1))
                Qt_122 = (vector.create((Qt_63 * 3 + 6) % 11 + 1, (Qt_63 * 11 + 8) % 13 + 1, (Qt_63 * 5 + 7) % 17 + 1))
                Qt_113 = (vector.create((Qt_63 * 3 + 2) % 11 + 1, (Qt_63 * 5 + 10) % 13 + 1, (Qt_63 * 7 + 6) % 17 + 1))
                Qt_104 = (vector.create((Qt_63 * 2 + 4) % 11 + 1, (Qt_63 * 4 + 3) % 13 + 1, (Qt_63 * 15 + 16) % 17 + 1))
                if vector.dot(vector.cross(Qt_12, Qt_122), (vector.cross(Qt_113, Qt_104))) == vector.dot(Qt_12, Qt_113) * vector.dot(Qt_122, Qt_104) - vector.dot(Qt_12, Qt_104) * vector.dot(Qt_122, Qt_113) then
                    AF = {}
                else
                    At = {}
                end
                Qt_63 = (Qt_63 + 71) % 80
            end
        else
            if (Qt_63 * 2 + 5) * 4 % 3 == ((Qt_63 * 2 + 5) * 4 + 3) % 3 then
                Qt_33 = {}
                At = {}
                Am = { controllers = {}, components = {} }
            else
                Am = {}
                Qt_33 = {}
                At = { controllers = {}, components = {} }
            end
            Qt_63 = (Qt_63 + 31) % 80
        end
    elseif Qt_23 <= 9 then
        Qt_23 = (vector.create((Qt_63 * 3 + 5) % 11 + 1, (Qt_63 * 4 + 10) % 13 + 1, (Qt_63 * 2 + 4) % 17 + 1))
        Qt_12 = (vector.create((Qt_63 * 7 + 2) % 11 + 1, (Qt_63 * 10 + 2) % 13 + 1, (Qt_63 * 10 + 9) % 17 + 1))
        Qt_122 = (vector.create((Qt_63 * 2 + 4) % 11 + 1, (Qt_63 * 6 + 3) % 13 + 1, (Qt_63 * 5 + 11) % 17 + 1))
        Qt_113 = (vector.create((Qt_63 * 1 + 6) % 5 + 1, (Qt_63 * 4 + 2) % 7 + 1, (Qt_63 * 5 + 2) % 9 + 1))
        if vector.dot(vector.cross(Qt_23, (vector.cross(Qt_12, Qt_122))), Qt_113) == vector.dot(Qt_12 * vector.dot(Qt_23, Qt_122) - Qt_122 * vector.dot(Qt_23, Qt_12), Qt_113) + 1 then
            AF = game:GetService("Players")
        else
            Qt_71 = game:GetService("Players")
        end
        Qt_63 = (Qt_63 + 51) % 80
    else
        if Qt_63 * 117669521 + 12 + 6 <= Qt_63 * 117669521 + 12 + 6 + 1 then
            BM = game:GetService("VirtualUser")
            BG = game:GetService("UserInputService")
        else
            BG = game:GetService("VirtualUser")
            BM = game:GetService("UserInputService")
        end
        Qt_63 = (Qt_63 + 21) % 80
    end
until (Qt_63 * 31 + 21) % 80 == 48
for k, v in require(Qt_53.node_modules["@flamework"].core.out.reflect).Reflect.idToObj do
    local Cn = v
    Qt_71, Qt_63 = pcall(function()
        local DM = Cn.constructor or Cn
        return debug.info(DM, "s")
    end)
    Qt_53 = Qt_71 and type(Qt_63) == "string"
    if Qt_53 then
        Qt_71 = Qt_63:match("([^%.]+)$")
        if Qt_71 then
            Qt_53 = Qt_63:find(".components.", 1, true) and Am.components
            Qt_63 = Qt_53 or Am.controllers
            Qt_53 = Qt_63
            if Qt_53[Qt_71] == nil then
                Qt_53[Qt_71] = k
            end
        end
    end
end
Ae, z7, z1, zW, zS, fns.Qt_4, zH, zB, zw, BP, BJ, Bz, Bm, A9, A8 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Am.findId = fns.fn668
Am.component = fns.fn1518
A8 = fns.fn1160
Am.require = fns.fn1478
Ae = Am.require("SippingController")
z7 = Am.require("FishInventoryController")
z1 = Am.require("SellerController")
zW = Am.require("CharacterController")
zS = Am.require("AutoFishController")
fns.Qt_4 = Am.require("ChestController")
zH = Am.require("WorldChestController")
zB = Am.require("SellerListener")
zw = Am.require("NpcController")
BP = Am.require("ItemsController")
BJ = Am.require("CollectibleController")
Bz = Am.require("StatsController")
AL.CraftingController = A8("CraftingController")
AL.CraftingManager = A8("CraftingManager")
AL.ForgeController = A8("ForgeController")
AL.ForgeManager = A8("ForgeManager")
AL.StashController = A8("StashController")
AL.StashManager = A8("StashManager")
AL.PotionShopController = A8("PotionShopController")
AL.FruitVendorController = A8("FruitVendorController")
AL.ScaleShopController = A8("ScaleShopController")
AL.ScaleShopManager = A8("ScaleShopManager")
AL.ZoneController = A8("ZoneController")
AL.ForeverPackController = A8("ForeverPackController")
AL.AchievementController = A8("AchievementController")
AL.AchievementManager = A8("AchievementManager")
AL.GroupController = A8("GroupController")
AL.CodeController = A8("CodeController")
AL.CodeManager = A8("CodeManager")
AL.ClassController = A8("ClassController")
AL.ClassManager = A8("ClassManager")
AL.EquipmentController = A8("EquipmentController")
AL.EquipmentManager = A8("EquipmentManager")
AL.CurrencyController = A8("CurrencyController")
AL.FishManager = A8("FishManager")
AL.TrapController = A8("TrapController")
AL.PadlockController = A8("PadlockController")
AL.MapElementController = A8("MapElementController")
AL.TreasureMapController = A8("TreasureMapController")
AL.ComposterController = A8("ComposterController")
AL.StrawberryLakeController = A8("StrawberryLakeController")
AL.DispenserController = A8("DispenserController")
AL.WeirdFishController = A8("WeirdFishController")
AL.TeleporterController = A8("TeleporterController")
AL.CannonController = A8("CannonController")
AL.WeatherManager = A8("WeatherManager")
AL.FishEventManager = A8("FishEventManager")
AL.MetricsController = A8("MetricsController")
AL.MutationManager = A8("MutationManager")
AL.LevelController = A8("LevelController")
AL.AfkController = A8("AfkController")
AF.LAKE_COMPONENT = Am.component("Lake")
AF.WORLD_CHEST_COMPONENT = Am.component("WorldChest")
AF.COLLECTIBLE_COMPONENT = Am.component("Collectible")
AF.STASH_COMPONENT = Am.component("Stash")
AF.POTION_SHOP_COMPONENT = Am.component("PotionShop")
AF.FRUIT_VENDOR_COMPONENT = Am.component("FruitVendor")
AF.LEVER_COMPONENT = Am.component("Lever")
AF.PADLOCK_COMPONENT = Am.component("Padlock")
AF.WEIRD_FISH_COMPONENT = Am.component("WeirdFish")
AF.COMPOSTER_COMPONENT = Am.component("Composter")
AF.STRAWBERRY_COMPONENT = Am.component("Strawberry")
AF.DISPENSER_COMPONENT = Am.component("Dispenser")
AF.TELEPORTER_COMPONENT = Am.component("Teleporter")
AF.CANNON_COMPONENT = Am.component("Cannon")
AF.MAP_ELEMENT_COMPONENT = Am.component("MapElement")
AF.SCALE_STAND_COMPONENT = Am.component("ScaleStand")
Qt_23 = {}
Bm = {}
Qt_12 = {}
A9 = {}
for k, v in { "BoostItems", "FruitItems", "PotionItems" } do
    for k, v in require(By.TS.configurations.ItemConfigurations[v]).default do
        Qt_71 = typeof(v) == "table" and v.displayName
        if Qt_71 then
            table.insert(Qt_12, v.displayName)
            A9[v.displayName] = { name = k, type = v.type }
            Qt_23[v.displayName] = k
            Bm[k] = v.displayName
        end
    end
end
Qt_63, Aw = nil, nil
Qt_71 = 2
repeat
    Qt_53 = (Qt_71 * 1 + 1) % 2 + 1
    if Qt_53 <= 1 then
        Qt_53 = (vector.create((Qt_71 * 4 + 5) % 11 + 1, (Qt_71 * 10 + 1) % 13 + 1, (Qt_71 * 1 + 5) % 17 + 1))
        Qt_122 = (vector.create((Qt_71 * 2 + 2) % 11 + 1, (Qt_71 * 1 + 13) % 13 + 1, (Qt_71 * 7 + 7) % 17 + 1))
        Qt_113 = (vector.create((Qt_71 * 3 + 3) % 11 + 1, (Qt_71 * 11 + 9) % 13 + 1, (Qt_71 * 14 + 11) % 17 + 1))
        Qt_104 = (vector.create((Qt_71 * 1 + 5) % 5 + 1, (Qt_71 * 4 + 3) % 7 + 1, (Qt_71 * 1 + 5) % 9 + 1))
        if vector.dot(vector.cross(Qt_53, (vector.cross(Qt_122, Qt_113))), Qt_104) == vector.dot(Qt_122 * vector.dot(Qt_53, Qt_113) - Qt_113 * vector.dot(Qt_53, Qt_122), Qt_104) + 3 then
            Qt_63 = {}
        else
            Aw = {}
        end
        Qt_71 = (Qt_71 + 3) % 16
    else
        Qt_53 = (vector.create((Qt_71 * 6 + 9) % 11 + 1, (Qt_71 * 1 + 12) % 13 + 1, (Qt_71 * 15 + 15) % 17 + 1))
        local Uh = vector.floor(Qt_53) + vector.ceil(Qt_53 * -1)
        if vector.dot(Uh, Uh) == 5 then
            table.sort(Qt_63)
            Qt_12 = {}
        else
            table.sort(Qt_12)
            Qt_63 = {}
        end
        Qt_71 = (Qt_71 + 1) % 16
    end
until (Qt_71 * 1 + 7) % 16 == 13
for k, v in require(By.TS.configurations.ItemConfigurations.BaitItems).default do
    Qt_71 = typeof(v) == "table" and v.displayName
    if Qt_71 then
        table.insert(Qt_63, v.displayName)
        Aw[v.displayName] = k
        Qt_23[v.displayName] = k
        Bm[k] = v.displayName
    end
end
table.sort(Qt_63)
Qt_53 = {}
for k in Qt_23 do
    table.insert(Qt_53, k)
end
zD, zz, Qt_23, BK, BC, Bv, Qt_15, getCurrentLuck, Qt_6, Qt_122, zZ, zO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
table.sort(Qt_53)
zZ = fns.fn1493
zO = fns.fn824
zD = Am.require("AlbumController")
zz = Am.require("LakeManager")
if (not Qt_122 and getCurrentLuck or (Bv or not Qt_6)) and 4 and (not Qt_122 and 4 and (getCurrentLuck or getCurrentLuck) or (8 or Qt_122 and false)) and ((not getCurrentLuck or getCurrentLuck) and (Qt_6 and false) or (not Qt_6 and false or Qt_6) or not Qt_6 and getCurrentLuck and Qt_122 and (not Qt_122 and not Qt_6 and (not Qt_6 and Bv))) or not ((not Qt_122 and getCurrentLuck or (Bv or not Qt_6)) and 4 and (not Qt_122 and 4 and (getCurrentLuck or getCurrentLuck) or (8 or Qt_122 and false)) and ((not getCurrentLuck or getCurrentLuck) and (Qt_6 and false) or (not Qt_6 and false or Qt_6) or not Qt_6 and getCurrentLuck and Qt_122 and (not Qt_122 and not Qt_6 and (not Qt_6 and Bv)))) then
    Qt_23 = Am.require("ZoneManager")
else
    Am = Qt_23.require("ZoneManager")
end
BK = Flamework.resolveDependency("$c:components@Components")
BC = 2
Bv = 8
Qt_15 = 9
getCurrentLuck = Ae.getCurrentLuck
Qt_6 = 0.15
pcall(fns.fn219)
Qt_122 = {}
for k, v in Qt_23:getAllZones() do
    table.insert(Qt_122, v)
end
Qt_113, z9, Qt_23, z0 = nil, nil, nil, nil
Qt_71 = 0
repeat
    Qt_104 = (Qt_71 * 1 + 0) % 2 + 1
    if Qt_104 <= 1 then
        local TW = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_71, 21), string.byte(tostring(z0))), 9)
        if bit32.bxor(bit32.lrotate(bit32.bxor(TW, 1863927988), 10), 1696780732) ~= bit32.lrotate(TW, 10) then
            table.sort(Qt_113, fns.fn175)
            z9 = {}
            Qt_23 = {}
            Qt_122 = {}
        else
            table.sort(Qt_122, fns.fn175)
            Qt_113 = {}
            z9 = {}
            Qt_23 = {}
        end
        Qt_71 = (Qt_71 + 15) % 16
    else
        Qt_104 = (vector.create((Qt_71 * 1 + 6) % 11 + 1, (Qt_71 * 5 + 11) % 13 + 1, (Qt_71 * 10 + 14) % 17 + 1))
        Qt_95 = (vector.create((Qt_71 * 5 + 6) % 11 + 1, (Qt_71 * 10 + 4) % 13 + 1, (Qt_71 * 3 + 1) % 17 + 1))
        local TE = vector.dot(Qt_104, Qt_95)
        if TE * TE <= vector.dot(Qt_104, Qt_104) * vector.dot(Qt_95, Qt_95) then
            z0 = {}
        else
            z9 = {}
        end
        Qt_71 = (Qt_71 + 15) % 16
    end
until (Qt_71 * 13 + 3) % 16 == 9
for k, v in Qt_122 do
    if v.name == "spawn" then
        z9["Newbie Park"] = { zone = v.name, prefix = "lakeNewbie" }
        z9["Big Cosy Meadow"] = { zone = v.name, prefix = "cosyMeadowLake" }
        table.insert(Qt_113, "Newbie Park")
        table.insert(Qt_113, "Big Cosy Meadow")
    else
        z9[v.displayName] = { zone = v.name }
        table.insert(Qt_113, v.displayName)
    end
    Qt_71 = v.displayName or v.name
    Qt_122 = Qt_71
    if z0[Qt_122] == nil then
        z0[Qt_122] = v.name
        table.insert(Qt_23, Qt_122)
    end
end
BS = {}
Qt_71 = {}
if AL.CraftingManager then
    Qt_104, Qt_86, Qt_95 = nil, nil, nil
    Qt_122 = 3
    repeat
        Qt_77 = (Qt_122 * 1 + 1) % 2 + 1
        if Qt_77 <= 1 then
            if Qt_122 * 55922999 + 8 + 1 >= Qt_122 * 55922999 + 8 + 1 + 1 then
                Qt_86, Qt_104 = pcall(fns.fn1163)
            else
                Qt_104, Qt_86 = pcall(fns.fn1163)
            end
            Qt_122 = (Qt_122 + 3) % 16
        else
            Qt_77 = (vector.create((Qt_122 * 7 + 9) % 11 + 1, (Qt_122 * 10 + 4) % 13 + 1, (Qt_122 * 9 + 17) % 17 + 1))
            Qt_68 = (vector.create((Qt_122 * 1 + 7) % 11 + 1, (Qt_122 * 6 + 7) % 13 + 1, (Qt_122 * 5 + 11) % 17 + 1))
            Qt_59 = (vector.create((Qt_122 * 5 + 7) % 5 + 1, (Qt_122 * 5 + 4) % 7 + 1, (Qt_122 * 5 + 7) % 9 + 1))
            if math.abs((vector.angle(Qt_77, Qt_68, Qt_59))) - math.abs((vector.angle(Qt_68, Qt_77, Qt_59))) == 0 then
                Qt_95 = Qt_104
            else
                Qt_104 = Qt_95
            end
            Qt_122 = (Qt_122 + 3) % 16
        end
    until (Qt_122 * 11 + 1) % 16 == 4
    if Qt_95 then
        Qt_122 = 3
        repeat
            Qt_104 = {
                "kbmraj",
                "jbhdckd",
                "pymqjkpt",
                "hltq",
                "ujmcuo",
                "mtffarllv",
                "xsbdphhkg",
                "cfq",
                "huzi",
                "gdfyqxqkvs",
                "nzvjykmnp"
            }
            local UW = Qt_122
            Qt_77 = Qt_104[UW % 11 + 1]
            if Qt_77:len() >= Qt_77:reverse():rep(UW % 3 + 2):len() then
                Qt_86 = typeof(Qt_95) == "table"
            else
                Qt_95 = typeof(Qt_86) == "table"
            end
            Qt_122 = (Qt_122 + 3) % 8
        until (Qt_122 * 3 + 2) % 8 == 4
    end
    if Qt_95 then
        for k, v in Qt_86 do
            Qt_122 = typeof(v) == "table" and v.displayName
            if Qt_122 then
                table.insert(Qt_71, v.displayName)
                BS[v.displayName] = v.name
            end
        end
    end
end
Qt_104, AS = nil, nil
Qt_122 = 1
repeat
    Qt_95 = (vector.create((Qt_122 * 5 + 9) % 11 + 1, (Qt_122 * 9 + 13) % 13 + 1, (Qt_122 * 7 + 12) % 17 + 1))
    Qt_86 = (vector.create((Qt_122 * 5 + 2) % 11 + 1, (Qt_122 * 4 + 3) % 13 + 1, (Qt_122 * 7 + 16) % 17 + 1))
    Qt_77 = (vector.create((Qt_122 * 5 + 3) % 5 + 1, (Qt_122 * 1 + 2) % 7 + 1, (Qt_122 * 5 + 1) % 9 + 1))
    if math.abs((vector.angle(Qt_95, Qt_86, Qt_77))) - math.abs((vector.angle(Qt_86, Qt_95, Qt_77))) == 0 then
        table.sort(Qt_71)
        Qt_104 = {}
        AS = {}
    else
        table.sort(AS)
        Qt_71 = {}
        Qt_104 = {}
    end
    Qt_122 = (Qt_122 + 4) % 8
until (Qt_122 * 7 + 4) % 8 == 7
if AL.ForgeManager then
    Qt_95, Qt_77, Qt_86 = nil, nil, nil
    Qt_122 = 12
    repeat
        Qt_68 = (Qt_122 * 1 + 0) % 2 + 1
        if Qt_68 <= 1 then
            Qt_68 = {
                "hldmimhipx",
                "gyfb",
                "jsk",
                "fehi",
                "tqmygok",
                "klo",
                "uukcuwdxwc",
                "adthr",
                "hrpeapo",
                "kpolxwrc",
                "ojheilloiv",
                "hyv"
            }
            local TY = Qt_122
            Qt_59 = Qt_68[TY % 12 + 1]
            if Qt_59:len() <= Qt_59:reverse():rep(TY % 3 + 2):len() then
                Qt_95, Qt_77 = pcall(fns.fn424)
            else
                Qt_77, Qt_95 = pcall(fns.fn424)
            end
            Qt_122 = (Qt_122 + 11) % 16
        else
            if (Qt_95 and not Qt_86 or (not Qt_77 or Qt_77)) and (Qt_86 and Qt_95 and (not Qt_95 or Qt_122)) and not ((Qt_95 and not Qt_86 or (not Qt_77 or Qt_77)) and (Qt_86 and Qt_95 and (not Qt_95 or Qt_122))) then
                Qt_95 = Qt_86
            else
                Qt_86 = Qt_95
            end
            Qt_122 = (Qt_122 + 11) % 16
        end
    until (Qt_122 * 9 + 6) % 16 == 8
    if Qt_86 then
        Qt_122 = 3
        repeat
            local Tx = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_122, 25), string.byte(tostring(Qt_122))), 7)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Tx, 2077361487), 3847783965), (bit32.bxor(bit32.band(Tx, 2217605808), 3750602396))), 3847783965), 3750602396) == Tx then
                Qt_86 = typeof(Qt_77) == "table"
            else
                Qt_77 = typeof(Qt_86) == "table"
            end
            Qt_122 = (Qt_122 + 7) % 8
        until (Qt_122 * 1 + 5) % 8 == 7
    end
    if Qt_86 then
        for k, v in Qt_77 do
            Qt_122 = typeof(v) == "table" and v.displayName
            if Qt_122 then
                table.insert(Qt_104, v.displayName)
                AS[v.displayName] = v.name
            end
        end
    end
end
Qt_95, z4 = nil, nil
Qt_122 = 1
repeat
    local Vp = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_122, 17), string.byte(tostring(Qt_95))), 22)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Vp, 2867311423), 3882123143), (bit32.bxor(bit32.band(Vp, 1427655872), 285683219))), 3882123143), 285683219) == Vp then
        table.sort(Qt_104)
        Qt_95 = {}
        z4 = {}
    else
        table.sort(z4)
        Qt_104 = {}
        Qt_95 = {}
    end
    Qt_122 = (Qt_122 + 4) % 8
until (Qt_122 * 3 + 5) % 8 == 4
if AL.ScaleShopManager then
    Qt_86, Qt_68, Qt_77 = nil, nil, nil
    Qt_122 = 0
    repeat
        Qt_59 = (Qt_122 * 1 + 0) % 2 + 1
        if Qt_59 <= 1 then
            if Qt_122 * 77285047 + 10 + 6 <= Qt_122 * 77285047 + 10 + 6 + 2 then
                Qt_86, Qt_68 = pcall(fns.fn1221)
            else
                Qt_68, Qt_86 = pcall(fns.fn1221)
            end
            Qt_122 = (Qt_122 + 5) % 8
        else
            Qt_59 = (vector.create((Qt_122 * 3 + 4) % 11 + 1, (Qt_122 * 6 + 8) % 13 + 1, (Qt_122 * 15 + 11) % 17 + 1))
            local U8 = vector.floor(Qt_59) + vector.ceil(Qt_59 * -1)
            if vector.dot(U8, U8) == 0 then
                Qt_77 = Qt_86
            else
                Qt_86 = Qt_77
            end
            Qt_122 = (Qt_122 + 3) % 8
        end
    until (Qt_122 * 5 + 0) % 8 == 0
    if Qt_77 then
        Qt_122 = 1
        repeat
            local Sm = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_122, 27), string.byte(tostring(Qt_122))), 27)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Sm, 1348501431), 2781725401), (bit32.bxor(bit32.band(Sm, 2946465864), 584508886))), 2781725401), 584508886) == Sm then
                Qt_77 = typeof(Qt_68) == "table"
            else
                Qt_68 = typeof(Qt_77) == "table"
            end
            Qt_122 = (Qt_122 + 6) % 8
        until (Qt_122 * 7 + 3) % 8 == 4
    end
    if Qt_77 then
        for k, v in Qt_68 do
            Qt_122 = typeof(v) == "table" and v.name
            if Qt_122 then
                Qt_122 = v.displayName or Bm[v.name] or v.name
                Qt_86 = Qt_122
                table.insert(Qt_95, Qt_86)
                z4[Qt_86] = v.name
            end
        end
    end
end
Qt_77, Bp = nil, nil
Qt_122 = 0
repeat
    Qt_86 = {
        "ifs",
        "odzu",
        "lzdctqmgy",
        "mqqjcdotda",
        "mxgyducs",
        "cqc",
        "lrf",
        "cyy",
        "fqzxgkj",
        "onzbpudzijtc"
    }
    if Qt_86[(Qt_122 * 33 + 16) % 10 + 1] <= Qt_86[(Qt_122 * 33 + 16) % 10 + 1] then
        table.sort(Qt_95)
        Qt_77 = {}
        Bp = {}
    else
        table.sort(Bp)
        Qt_95 = {}
        Qt_77 = {}
    end
    Qt_122 = (Qt_122 + 7) % 8
until (Qt_122 * 1 + 2) % 8 == 1
if AL.ClassManager then
    Qt_122, Qt_59, Qt_68 = nil, nil, nil
    Qt_86 = 0
    repeat
        Qt_49 = (Qt_86 * 1 + 0) % 2 + 1
        if Qt_49 <= 1 then
            Qt_49 = {
                "jklhdyust",
                "geonbirey",
                "ylym",
                "cssisywxyeo",
                "zekifuevz",
                "hotnusvxy",
                "xdiovzcv",
                "ibofhb",
                "bhswyru",
                "mekcgmk"
            }
            local SB = Qt_86
            Qt_39 = Qt_49[SB % 10 + 1]
            if Qt_39:len() <= Qt_39:gsub("(.)", "%1%1", SB % 3 % 2 + 1):len() then
                Qt_122, Qt_59 = pcall(fns.fn1360)
            else
                Qt_59, Qt_122 = pcall(fns.fn1360)
            end
            Qt_86 = (Qt_86 + 7) % 8
        else
            Qt_49 = {
                "amld",
                "kyt",
                "lylt",
                "xvosn",
                "kxnwmebyexog",
                "cyvjdo",
                "rbfbsry",
                "fgygzgpl",
                "oedysuo",
                "kqy",
                "qgydhhmzs",
                "qgbotkbemd",
                "pebgmngb",
                "sfp"
            }
            if Qt_49[(Qt_86 * 81 + 2) % 14 + 1] <= Qt_49[(Qt_86 * 81 + 2) % 14 + 1] then
                Qt_68 = Qt_122
            else
                Qt_122 = Qt_68
            end
            Qt_86 = (Qt_86 + 7) % 8
        end
    until (Qt_86 * 5 + 2) % 8 == 0
    if Qt_68 then
        Qt_122 = 7
        repeat
            Qt_86 = (vector.create((Qt_122 * 4 + 8) % 11 + 1, (Qt_122 * 5 + 11) % 13 + 1, (Qt_122 * 13 + 11) % 17 + 1))
            local T_ = vector.floor(Qt_86) + vector.ceil(Qt_86 * -1)
            if vector.dot(T_, T_) == 4 then
                Qt_59 = typeof(Qt_68) == "table"
            else
                Qt_68 = typeof(Qt_59) == "table"
            end
            Qt_122 = (Qt_122 + 4) % 8
        until (Qt_122 * 1 + 4) % 8 == 7
    end
    if Qt_68 then
        for k, v in Qt_59 do
            Qt_122 = typeof(v) == "table" and v.displayName
            if Qt_122 then
                table.insert(Qt_77, v.displayName)
                Bp[v.displayName] = v.name
            end
        end
    end
end
Qt_68, AA, Ar, Qt_86 = nil, nil, nil, nil
Qt_122 = 6
repeat
    Qt_59 = (Qt_122 * 1 + 1) % 2 + 1
    if Qt_59 <= 1 then
        if (not Ar or not Qt_68 or (Ar or not Qt_68) or not Qt_68 and not Qt_86 and (Qt_68 and Qt_68)) and ((Qt_68 or not Qt_86 or (Qt_86 or Qt_86)) and ((not Qt_86 or not Ar) and (Qt_68 or not Qt_68))) and (Ar and not Ar or (not Qt_68 or not Qt_86) or (not Qt_68 and Ar or Qt_86 and Qt_68) or (Qt_86 and not Qt_86 or (Qt_68 or not Qt_68) or (Ar or Ar or (Qt_68 or not Ar)))) and not ((not Ar or not Qt_68 or (Ar or not Qt_68) or not Qt_68 and not Qt_86 and (Qt_68 and Qt_68)) and ((Qt_68 or not Qt_86 or (Qt_86 or Qt_86)) and ((not Qt_86 or not Ar) and (Qt_68 or not Qt_68))) and (Ar and not Ar or (not Qt_68 or not Qt_86) or (not Qt_68 and Ar or Qt_86 and Qt_68) or (Qt_86 and not Qt_86 or (Qt_68 or not Qt_68) or (Ar or Ar or (Qt_68 or not Ar))))) then
            AL = Qt_86.StashManager
        else
            Qt_86 = AL.StashManager
        end
        Qt_122 = (Qt_122 + 3) % 16
    else
        local Sn = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_122, 17), string.byte(tostring(AA))), 22)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Sn, 3154021186), 6), 4288860334) ~= bit32.lrotate(Sn, 6) then
            table.sort(AA)
            Qt_77 = {}
            Ar = {}
            Qt_68 = {}
        else
            table.sort(Qt_77)
            Qt_68 = {}
            AA = {}
            Ar = {}
        end
        Qt_122 = (Qt_122 + 7) % 16
    end
until (Qt_122 * 13 + 5) % 16 == 5
if Qt_86 then
    Qt_122 = 3
    repeat
        if Qt_122 * 35483651 + 7 + 2 <= Qt_122 * 35483651 + 7 + 2 + 2 then
            Qt_86 = typeof(AL.StashManager.tierByRarity) == "table"
        else
            AL = typeof(Qt_86.StashManager.tierByRarity) == "table"
        end
        Qt_122 = (Qt_122 + 3) % 8
    until (Qt_122 * 3 + 3) % 8 == 5
end
if Qt_86 then
    Qt_122 = {}
    for k, v in AL.StashManager.tierByRarity do
        table.insert(Qt_122, { rarity = k, tier = v })
    end
    Qt_86 = 3
    repeat
        local UG = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_86, 31), string.byte(tostring(Qt_86))), 11)
        if bit32.bxor(bit32.lrotate(bit32.bxor(UG, 451700723), 18), 2680974257) == bit32.lrotate(UG, 18) then
            table.sort(Qt_122, fns.fn680)
        else
            table.sort(Qt_122, fns.fn680)
        end
        Qt_86 = (Qt_86 + 3) % 4
    until (Qt_86 * 1 + 0) % 4 == 2
    for k, v in Qt_122 do
        Qt_122 = v.rarity:sub(1, 1):upper() .. v.rarity:sub(2)
        table.insert(Qt_68, Qt_122)
        AA[Qt_122] = v.tier
        Ar[v.rarity] = Qt_122
    end
end
zu = {}
Qt_122 = {}
if AL.FishManager then
    Qt_59, Qt_39, Qt_49 = nil, nil, nil
    Qt_86 = 6
    repeat
        Qt_29 = (Qt_86 * 1 + 1) % 2 + 1
        if Qt_29 <= 1 then
            Qt_29 = {
                "efhubgfez",
                "yoge",
                "xtwflwirnzp",
                "ercouh",
                "khktq",
                "yadpamviogc",
                "qdruypzmmxs",
                "trlyhi",
                "wgtmdqkrn",
                "ukvnrspr",
                "ndmwj",
                "wbpawufc"
            }
            local Sh = Qt_86
            Qt_19 = Qt_29[Sh % 12 + 1]
            if Qt_19:len() >= Qt_19:gsub("(.)", "%1%1", Sh % 3 % 2 + 1):len() then
                Qt_59 = Qt_49
            else
                Qt_49 = Qt_59
            end
            Qt_86 = (Qt_86 + 13) % 16
        else
            Qt_29 = {
                "xpjodcfyl",
                "wsavr",
                "ossmbv",
                "nyqze",
                "qlute",
                "vdya",
                "qiy",
                "lynblx",
                "hyvgonj",
                "zgewnql",
                "pxovivxszc",
                "wtle"
            }
            local UX = Qt_86
            Qt_19 = Qt_29[UX % 12 + 1]
            if Qt_19:len() >= Qt_19:gsub("(.)", "%1%1", UX % 3 % 2 + 1):len() then
                Qt_39, Qt_59 = pcall(fns.fn981)
            else
                Qt_59, Qt_39 = pcall(fns.fn981)
            end
            Qt_86 = (Qt_86 + 1) % 16
        end
    until (Qt_86 * 13 + 10) % 16 == 14
    if Qt_49 then
        Qt_86 = 3
        repeat
            if (not Qt_86 or not Qt_86) and (Qt_86 and not Qt_86) or (Qt_86 or not Qt_86) and (Qt_86 or Qt_86) or not ((not Qt_86 or not Qt_86) and (Qt_86 and not Qt_86) or (Qt_86 or not Qt_86) and (Qt_86 or Qt_86)) then
                Qt_49 = typeof(Qt_39) == "table"
            else
                Qt_39 = typeof(Qt_49) == "table"
            end
            Qt_86 = (Qt_86 + 3) % 4
        until (Qt_86 * 3 + 0) % 4 == 2
    end
    if Qt_49 then
        for k, v in Qt_39 do
            Qt_86 = typeof(v) == "table" and v.name and v.displayName
            if Qt_86 then
                if zu[v.name] == nil then
                    zu[v.name] = v.displayName
                    table.insert(Qt_122, v.displayName)
                end
            end
        end
    end
end
Qt_59, AU = nil, nil
Qt_86 = 6
repeat
    if (not AU or AU) and (not Qt_59 and AU) and (not Qt_59 and not Qt_59 or (AU or Qt_86)) and not ((not AU or AU) and (not Qt_59 and AU) and (not Qt_59 and not Qt_59 or (AU or Qt_86))) then
        table.sort(AU)
        Qt_122 = {}
        Qt_59 = {}
    else
        table.sort(Qt_122)
        Qt_59 = {}
        AU = {}
    end
    Qt_86 = (Qt_86 + 2) % 8
until (Qt_86 * 7 + 5) % 8 == 5
if AL.MutationManager then
    Qt_49, Qt_29, Qt_39 = nil, nil, nil
    Qt_86 = 6
    repeat
        Qt_19 = (Qt_86 * 1 + 0) % 2 + 1
        if Qt_19 <= 1 then
            Qt_19 = {
                "end",
                "zwja",
                "yrfx",
                "eacl",
                "piiamcck",
                "ecfnkzlstbp",
                "pylmlepfrq",
                "yzgcfgdtdm",
                "xhe",
                "grens"
            }
            local Ut = Qt_86
            fns.Qt_3 = Qt_19[Ut % 10 + 1]
            if fns.Qt_3:len() >= fns.Qt_3:reverse():rep(Ut % 3 + 2):len() then
                Qt_29, Qt_49 = pcall(fns.fn697)
            else
                Qt_49, Qt_29 = pcall(fns.fn697)
            end
            Qt_86 = (Qt_86 + 13) % 16
        else
            if ((not Qt_29 or Qt_39) and (not Qt_29 or Qt_29) and (not Qt_29 and not Qt_29 and (not Qt_29 and not Qt_29)) or not Qt_39 and not Qt_39 and (not Qt_29 and Qt_29) and ((Qt_39 or Qt_29) and (not Qt_39 and Qt_29))) and not ((not Qt_29 or Qt_39) and (not Qt_29 or Qt_29) and (not Qt_29 and not Qt_29 and (not Qt_29 and not Qt_29)) or not Qt_39 and not Qt_39 and (not Qt_29 and Qt_29) and ((Qt_39 or Qt_29) and (not Qt_39 and Qt_29))) then
                Qt_49 = Qt_39
            else
                Qt_39 = Qt_49
            end
            Qt_86 = (Qt_86 + 9) % 16
        end
    until (Qt_86 * 11 + 12) % 16 == 0
    if Qt_39 then
        Qt_86 = 6
        repeat
            local UM = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_86, 13), string.byte(tostring(Qt_86))), 9)
            if bit32.bxor(bit32.lrotate(bit32.bxor(UM, 317980479), 16), 4282323699) ~= bit32.lrotate(UM, 16) then
                Qt_29 = typeof(Qt_39) == "table"
            else
                Qt_39 = typeof(Qt_29) == "table"
            end
            Qt_86 = (Qt_86 + 0) % 8
        until (Qt_86 * 5 + 4) % 8 == 2
    end
    if Qt_39 then
        for k, v in Qt_29 do
            Qt_86 = typeof(v) == "table" and v.name and v.displayName
            if Qt_86 then
                AU[v.name] = v.displayName
                table.insert(Qt_59, v.displayName)
            end
        end
    end
end
z6, Toggles, Options, Qt_19, zv = nil, nil, nil, nil, nil
Qt_49 = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
z6 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
fns.Qt_3 = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
if ((not Qt_19 or not z6) and (false or zv) or Qt_49 and Qt_19 and (z6 or Qt_49)) and ((not z6 or false or (Qt_19 or not zv)) and (z6 or Qt_19 or (Qt_49 or zv))) or (not zv and Qt_49 or (not zv or zv) or (not zv and Qt_49 or (zv or zv))) and (z6 and false and (z6 and Qt_49) and (z6 or false or Qt_19 and zv)) or not (((not Qt_19 or not z6) and (false or zv) or Qt_49 and Qt_19 and (z6 or Qt_49)) and ((not z6 or false or (Qt_19 or not zv)) and (z6 or Qt_19 or (Qt_49 or zv))) or (not zv and Qt_49 or (not zv or zv) or (not zv and Qt_49 or (zv or zv))) and (z6 and false and (z6 and Qt_49) and (z6 or false or Qt_19 and zv))) then
    Toggles = z6.Toggles
else
    z6 = Toggles.Toggles
end
Options = z6.Options
Qt_86 = z6:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = A6 .. " | " .. Qt_43,
    Icon = 18657887261,
    NotifySide = "Right",
    ShowCustomCursor = false
})
Qt_19 = {
    Info = Qt_86:AddTab("Info", "info"),
    Main = Qt_86:AddTab("Main", "cup-soda"),
    Automation = Qt_86:AddTab("Automation", "factory"),
    Progress = Qt_86:AddTab("Progress", "trophy"),
    Objectives = Qt_86:AddTab("Objectives", "map"),
    Player = Qt_86:AddTab("Player", "person-standing"),
    Settings = Qt_86:AddTab("Settings", "settings")
}
zv = fns.fn433
Qt_29 = fns.fn656
for k, v in Qt_19 do
    Qt_29(v)
end
AW, AR, connection, Af, z8, z2, z_, Bd, A7, Ba, Ac, Av, Ah, zC, Bu, Aq, zU, BR, Bw, A4, Ai, z3, Bx, AY, Aa, zG, Bh, Qt_8, A0, zX, Bt, Ao, Ay, zJ, BD, Az, Qt_13, AD, Ak, BF, Bq, AE, Al, zL, BH, AM, A1, A2, Bo, zF, z5 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Qt_33.InfoGroup = Qt_19.Info:AddLeftGroupbox("Basic Info", "circle-user")
AW = "Unknown"
pcall(fns.fn116)
Qt_33.InfoGroup:AddLabel("Executor: " .. AW, true)
Qt_33.InfoGroup:AddLabel("Game: " .. Qt_43, true)
Qt_33.InfoGroup:AddLabel("Player: " .. LocalPlayer.Name, true)
Qt_33.InfoGroup:AddLabel("Status: Keyless", true)
Qt_33.AdGroup = Qt_19.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
Qt_33.AdGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
Qt_33.AdGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
Qt_33.AdGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
Qt_33.AdGroup:AddButton({ Text = "Copy Discord Invite", Func = zv })
Qt_33.FaqGroup = Qt_19.Info:AddRightGroupbox("FAQ", "circle-help")
Qt_33.FaqGroup:AddLabel("Where do I get a good config?", true)
Qt_33.FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
Qt_33.FaqGroup:AddLabel("How do I import / export configs?", true)
Qt_33.FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
Qt_33.FaqGroup:AddLabel("How do I report bugs?", true)
Qt_33.FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
Qt_33.FaqGroup:AddLabel("How do I make suggestions?", true)
Qt_33.FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
Qt_33.FaqGroup:AddLabel("How do I get help or updates?", true)
Qt_33.FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
Av = fns.fn1500
Ah = function(cv)
    local Ef_1
    local Ee_1
    Ee_1, Ef_1 = pcall(function()
        return BK:getAllComponents(cv)
    end)
    local Eg = Ee_1 and typeof(Ef_1) == "table"
    if Eg then
        return Ef_1
    end
    return {}
end
zC = fns.fn429
Bu = function(cI)
    local Et_1
    if cI == nil then
        return nil
    end
    local Es = typeof(cI) == "table" and typeof(cI.await) == "function"
    local Es_1
    if Es then
        Es_1, Et_1 = pcall(function()
            return cI:await()
        end)
        if Es_1 then
            return Et_1
        end
        return nil
    end
    return nil
end
AR = nil
connection = Br.Heartbeat:Connect(fns.onHeartbeat)
Aq = fns.fn810
Af = false
z8 = nil
z2 = nil
z_ = {}
zU = fns.fn1059
BR = fns.fn1004
Bw = fns.fn5
if (Az or not Az) and (not Ay and not Az) or (not Ay or not Ay or (not Ay or Az)) or not ((Az or not Az) and (not Ay and not Az) or (not Ay or not Ay or (not Ay or Az))) then
    A4 = fns.fn1179
    Ai = fns.fn316
    z3 = function(dl)
        local EL_4
        local EM_6
        if dl == nil then
            return nil
        end
        for i, descendant in dl:GetDescendants() do
            if descendant:IsA("ProximityPrompt") then
                local Parent = descendant.Parent
                local EM_4 = Parent and Parent:IsA("BasePart")
                if EM_4 then
                    return Parent.Position
                end
                local EM_5 = Parent and Parent:IsA("Attachment")
                if EM_5 then
                    return Parent.WorldPosition
                end
            end
        end
        EL_4, EM_6 = pcall(function()
            return dl:GetPivot()
        end)
        if EL_4 then
            return EM_6.Position
        end
        return nil
    end
    Bx = fns.fn252
else
    Ai = fns.fn1179
    A4 = fns.fn316
    Bx = function(dl)
        local EL_2
        local EM_3
        if dl == nil then
            return nil
        end
        for i, descendant in dl:GetDescendants() do
            if descendant:IsA("ProximityPrompt") then
                local Parent = descendant.Parent
                local EM_1 = Parent and Parent:IsA("BasePart")
                if EM_1 then
                    return Parent.Position
                end
                local EM_2 = Parent and Parent:IsA("Attachment")
                if EM_2 then
                    return Parent.WorldPosition
                end
            end
        end
        EL_2, EM_3 = pcall(function()
            return dl:GetPivot()
        end)
        if EL_2 then
            return EM_3.Position
        end
        return nil
    end
    z3 = fns.fn252
end
AY = fns.fn212
Aa = fns.fn1048
zG = fns.fn750
Bh = fns.fn658
Qt_8 = fns.fn165
Bd = 1
A7 = 0
A0 = fns.fn458
zX = fns.fn470
Bt = fns.fn1192
Ao = fns.fn450
Ay = fns.fn834
if (Ac or BH or (Ah or AE)) and (Ah and Ac and (false or Ba)) and not ((Ac or BH or (Ah or AE)) and (Ah and Ac and (false or Ba))) then
    Az = fns.fn941
    Qt_13 = function(fw)
        local baits
        local GC = {}
        baits = fw.attributes.baits
        local GD = baits == ""
        local GD_3
        local GE = baits == nil or GD
        local GE_2
        if GE then
            return GC
        end
        GD_3, GE_2 = pcall(function()
            return Bj:JSONDecode(baits)
        end)
        if GD_3 then
            for k, v in GE_2 do
                local GD_4 = GC[v] or 0
                GC[v] = GD_4 + 1
            end
        end
        return GC
    end
    zJ = function(fH)
        if not Toggles.AutoUseItem.Value or fH == nil then
            return
        end
        local GQ_2 = BD(fH)
        for k, v in Options.BaitItems.Value do
            local GP = Aw[k]
            if v and GP then
                local Value = Options[zZ(GP)].Value
                local GT = Value - (GQ_2[GP] or 0)
                local G2 = 1
                while G2 <= GT do
                    local GR_6 = BP:getAmount(GP) <= 0 or z6.Unloaded or not Toggles.AutoUseItem.Value
                    if GR_6 then
                        break
                    end
                    pcall(function()
                        BP.net:call("use", GP, fH.instance):await()
                    end)
                    task.wait(0.25)
                    G2 += 1
                end
            end
        end
    end
    BD = fns.fn130
else
    zJ = fns.fn941
    BD = function(fw)
        local baits
        local GC = {}
        baits = fw.attributes.baits
        local GD = baits == ""
        local GD_1
        local GE = baits == nil or GD
        local GE_1
        if GE then
            return GC
        end
        GD_1, GE_1 = pcall(function()
            return Bj:JSONDecode(baits)
        end)
        if GD_1 then
            for k, v in GE_1 do
                local GD_2 = GC[v] or 0
                GC[v] = GD_2 + 1
            end
        end
        return GC
    end
    Az = function(fH)
        if not Toggles.AutoUseItem.Value or fH == nil then
            return
        end
        local GQ_1 = BD(fH)
        for k, v in Options.BaitItems.Value do
            local GP = Aw[k]
            if v and GP then
                local Value = Options[zZ(GP)].Value
                local GT = Value - (GQ_1[GP] or 0)
                local G2 = 1
                while G2 <= GT do
                    local GR_3 = BP:getAmount(GP) <= 0 or z6.Unloaded or not Toggles.AutoUseItem.Value
                    if GR_3 then
                        break
                    end
                    pcall(function()
                        BP.net:call("use", GP, fH.instance):await()
                    end)
                    task.wait(0.25)
                    G2 += 1
                end
            end
        end
    end
    Qt_13 = fns.fn130
end
AD = fns.fn925
Ak = fns.fn247
BF = fns.fn1465
Bq = fns.fn1144
AE = fns.fn289
Al = fns.fn955
zL = fns.fn1205
BH = fns.fn1062
AM = function()
    if not Toggles.AutoLakeChest.Value then
        return
    end
    local HQ = BH()
    if #HQ == 0 then
        return
    end
    local HR = Av()
    if HR == nil then
        return
    end
    local CFrame = HR.CFrame
    for k, v in HQ do
        local H_ = v
        if z6.Unloaded or not Toggles.AutoLakeChest.Value then
            break
        end
        local HQ_2 = H_.chest.cFrame + Vector3.new(0, 3, 0)
        for i = 1, 3 do
            local HP
            local HR_1 = Av()
            if HR_1 == nil or z6.Unloaded or not Toggles.AutoLakeChest.Value then
                break
            end
            Bx(HQ_2)
            HP = false
            pcall(function()
                HP = fns.Qt_4:open(H_.id, false):await()
            end)
            if HP then
                break
            end
        end
        task.wait(0.3)
    end
    if not Toggles.AutoSwapLake.Value then
        local HQ_3 = Av()
        if HQ_3 then
            HQ_3.CFrame = CFrame
        end
        task.wait(0.3)
    end
end
A1 = function()
    if not Toggles.AutoMapChest.Value then
        return
    end
    local H5 = Av()
    if H5 == nil then
        return
    end
    local CFrame = H5.CFrame
    local H5_1 = false
    for k, v in Ah(AF.WORLD_CHEST_COMPONENT) do
        local If = v
        if z6.Unloaded or not Toggles.AutoMapChest.Value then
            break
        else
            local worldChestName = If.attributes.worldChestName
            local H8 = worldChestName and not zH:hasOpened(worldChestName)
            if H8 then
                for i = 1, 3 do
                    local H4
                    local H7_2 = Av()
                    if H7_2 == nil or z6.Unloaded or not Toggles.AutoMapChest.Value then
                        break
                    end
                    Bx(If.instance:GetPivot() + Vector3.new(0, 4, 0))
                    H4 = false
                    pcall(function()
                        H4 = zH:tryOpen(If.instance):await()
                    end)
                    H5_1 = true
                    if H4 then
                        break
                    end
                end
            end
        end
    end
    if H5_1 then
        local H5_2 = Av()
        if H5_2 then
            H5_2.CFrame = CFrame
        end
        task.wait(0.3)
    end
end
Ba = {}
A2 = function()
    if not Toggles.AutoUseConsumable.Value then
        return
    end
    for k, v in Options.ConsumableItems.Value do
        if z6.Unloaded or not Toggles.AutoUseConsumable.Value then
            break
        else
            local Io = A9[k]
            if v and Io then
                local Value = Options[zO(Io.name)].Value
                local In = BP:getAmount(Io.name)
                local Iq_2 = Ba[Io.name] or 0
                local Ir = Iq_2 <= os.clock()
                if Ir and In > 0 then
                    Ba[Io.name] = os.clock() + Options.ConsumableCooldown.Value
                    if Io.type == "Potion" then
                        pcall(function()
                            BP.net:call("use", Io.name):await()
                        end)
                    else
                        pcall(function()
                            BP.net:call("use", Io.name, math.min(Value, In)):await()
                        end)
                    end
                    task.wait(0.25)
                end
            end
        end
    end
end
Bo = function()
    if not Toggles.AutoWorldLoot.Value then
        return
    end
    local IF = if not A4() then 1 else 0
    if IF == 1 then
        return
    end
    local IA = Av()
    if IA == nil then
        Ai()
        return
    end
    local CFrame = IA.CFrame
    for k, v in Ah(AF.COLLECTIBLE_COMPONENT) do
        if z6.Unloaded or not Toggles.AutoWorldLoot.Value then
            break
        else
            local collectibleName = v.attributes.collectibleName
            local IA_2 = collectibleName and BJ:getStateFor(collectibleName) ~= "claimed"
            if IA_2 then
                if not Bx(v.instance.CFrame + Vector3.new(0, 4, 0)) then
                    break
                end
                pcall(function()
                    BJ.net:call("claim", collectibleName):await()
                end)
                task.wait(0.2)
            end
        end
    end
    Bx(CFrame)
    Ai()
end
if not z2 and not Ai or not z2 and not Ai or (not z2 and Af or not Ai and z2) or not (not z2 and not Ai or not z2 and not Ai or (not z2 and Af or not Ai and z2)) then
    zF = fns.fn1068
    Qt_33.SippingGroup = Qt_19.Main:AddLeftGroupbox("Sipping")
    Qt_33.SellingGroup = Qt_19.Main:AddRightGroupbox("Selling")
    Qt_33.ExtrasGroup = Qt_19.Main:AddRightGroupbox("Extras")
    Qt_33.SippingGroup:AddToggle("AutoSip", { Text = "Auto Sip", Default = false, Callback = fns.onAutoSip })
    Qt_33.SippingGroup:AddToggle("PerfectCharge", { Text = "Perfect Charge", Default = false, Callback = fns.onPerfectCharge })
    Qt_33.SippingGroup:AddToggle("InstantCatch", { Text = "Fast Catch", Default = false })
    Qt_33.SippingGroup:AddToggle("AutoSwapLake", { Text = "Auto Swap Lake When Empty", Default = false })
    Qt_33.SippingGroup:AddToggle("SipAllLakes", { Text = "Sip Every Lake In Area", Default = false })
    Qt_33.SippingGroup:AddSlider("SipsPerLake", { Text = "Sips Per Lake", Default = 3, Min = 1, Max = 25, Rounding = 0 })
    Qt_33.SippingGroup:AddDropdown("Areas", { Values = Qt_113, Default = 1, Multi = true, Searchable = true, AllowNull = true, Text = "Areas" })
    Qt_33.FavoriteGroup = Qt_19.Main:AddLeftGroupbox("Favorite Fish")
    Qt_33.FavoriteGroup:AddToggle("AutoFavorite", { Text = "Auto Favorite Fish", Default = false })
    Qt_33.FavoriteGroup:AddToggle("FavoriteByWeight", { Text = "Favorite By Weight", Default = false })
    Qt_33.FavoriteGroup:AddInput("FavoriteMinWeight", {
        Text = "Minimum Weight",
        Default = "5",
        Numeric = true,
        Placeholder = "kg",
        ClearTextOnFocus = false
    })
    Qt_33.FavoriteGroup:AddDropdown("FavoriteRarities", { Values = Qt_68, Multi = true, Searchable = true, AllowNull = true, Text = "Rarities" })
    Qt_33.FavoriteGroup:AddDropdown("FavoriteMutations", { Values = Qt_59, Multi = true, Searchable = true, AllowNull = true, Text = "Mutations" })
    Qt_33.FavoriteGroup:AddDropdown("FavoriteFish", { Values = Qt_122, Multi = true, Searchable = true, AllowNull = true, Text = "Fish" })
    Qt_33.StatusGroup = Qt_19.Main:AddLeftGroupbox("Loop Status")
    At.statusLabel = Qt_33.StatusGroup:AddLabel("Nothing running", true)
    Qt_33.SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell When Full", Default = false })
    Qt_33.SellingGroup:AddToggle("AutoSellPercent", { Text = "Auto Sell At Percent", Default = false })
    Qt_33.SellingGroup:AddSlider("SellPercent", { Text = "Sell At", Default = 80, Min = 1, Max = 100, Rounding = 0, Suffix = "%" })
    Qt_33.SellingGroup:AddButton({ Text = "Sell All Now", Func = fns.onSellAllNow })
    Qt_33.ExtrasGroup:AddToggle("AutoLakeChest", { Text = "Auto Collect Lake Chests", Default = false })
    Qt_33.ExtrasGroup:AddToggle("AutoMapChest", { Text = "Auto Collect Map Chests", Default = false })
    Qt_33.ExtrasGroup:AddToggle("AutoQuest", { Text = "Auto Start / Claim Quests", Default = false })
    Qt_33.ExtrasGroup:AddToggle("AutoUseItem", { Text = "Auto Use Bait Before Sipping", Default = false })
    Ac = {}
    z5 = fns.fn258
else
    Qt_19 = fns.fn1068
    Qt_68.SippingGroup = At.Main:AddLeftGroupbox("Sipping")
    Qt_68.SellingGroup = At.Main:AddRightGroupbox("Selling")
    Qt_68.ExtrasGroup = At.Main:AddRightGroupbox("Extras")
    Qt_68.SippingGroup:AddToggle("AutoSip", { Callback = fns.onAutoSip, Text = "Auto Sip", Default = false })
    Qt_68.SippingGroup:AddToggle("PerfectCharge", { Text = "Perfect Charge", Callback = fns.onPerfectCharge, Default = false })
    Qt_68.SippingGroup:AddToggle("InstantCatch", { Text = "Fast Catch", Default = false })
    Qt_68.SippingGroup:AddToggle("AutoSwapLake", { Text = "Auto Swap Lake When Empty", Default = false })
    Qt_68.SippingGroup:AddToggle("SipAllLakes", { Text = "Sip Every Lake In Area", Default = false })
    Qt_68.SippingGroup:AddSlider("SipsPerLake", { Text = "Sips Per Lake", Max = 25, Default = 3, Min = 1, Rounding = 0 })
    Qt_68.SippingGroup:AddDropdown("Areas", { Searchable = true, AllowNull = true, Text = "Areas", Default = 1, Values = Qt_33, Multi = true })
    Qt_68.FavoriteGroup = At.Main:AddLeftGroupbox("Favorite Fish")
    Qt_68.FavoriteGroup:AddToggle("AutoFavorite", { Text = "Auto Favorite Fish", Default = false })
    Qt_68.FavoriteGroup:AddToggle("FavoriteByWeight", { Text = "Favorite By Weight", Default = false })
    Qt_68.FavoriteGroup:AddInput("FavoriteMinWeight", {
        Numeric = true,
        ClearTextOnFocus = false,
        Placeholder = "kg",
        Default = "5",
        Text = "Minimum Weight"
    })
    Qt_68.FavoriteGroup:AddDropdown("FavoriteRarities", { Values = Qt_113, Multi = true, AllowNull = true, Searchable = true, Text = "Rarities" })
    Qt_68.FavoriteGroup:AddDropdown("FavoriteMutations", { Multi = true, AllowNull = true, Values = zF, Searchable = true, Text = "Mutations" })
    Qt_68.FavoriteGroup:AddDropdown("FavoriteFish", { Multi = true, Values = Qt_59, Searchable = true, AllowNull = true, Text = "Fish" })
    Qt_68.StatusGroup = At.Main:AddLeftGroupbox("Loop Status")
    Qt_122.statusLabel = Qt_68.StatusGroup:AddLabel("Nothing running", true)
    Qt_68.SellingGroup:AddToggle("AutoSell", { Text = "Auto Sell When Full", Default = false })
    Qt_68.SellingGroup:AddToggle("AutoSellPercent", { Text = "Auto Sell At Percent", Default = false })
    Qt_68.SellingGroup:AddSlider("SellPercent", { Min = 1, Text = "Sell At", Rounding = 0, Suffix = "%", Default = 80, Max = 100 })
    Qt_68.SellingGroup:AddButton({ Text = "Sell All Now", Func = fns.onSellAllNow })
    Qt_68.ExtrasGroup:AddToggle("AutoLakeChest", { Text = "Auto Collect Lake Chests", Default = false })
    Qt_68.ExtrasGroup:AddToggle("AutoMapChest", { Text = "Auto Collect Map Chests", Default = false })
    Qt_68.ExtrasGroup:AddToggle("AutoQuest", { Text = "Auto Start / Claim Quests", Default = false })
    Qt_68.ExtrasGroup:AddToggle("AutoUseItem", { Text = "Auto Use Bait Before Sipping", Default = false })
    z5 = {}
    Ac = fns.fn258
end
Qt_33.ExtrasGroup:AddDropdown("BaitItems", {
    Values = Qt_63,
    Multi = true,
    Searchable = true,
    AllowNull = true,
    Text = "Baits",
    Callback = fns.onBaitItems
})
for k, v in Qt_63 do
    Ac[v] = Qt_33.ExtrasGroup:AddSlider(zZ(Aw[v]), { Text = v, Default = 1, Min = 1, Max = 20, Rounding = 0, Visible = false })
end
BN, BI = nil, nil
Qt_63 = 15
repeat
    Qt_43 = (Qt_63 * 1 + 0) % 2 + 1
    if Qt_43 <= 1 then
        Qt_43 = (vector.create((Qt_63 * 1 + 3) % 11 + 1, (Qt_63 * 3 + 5) % 13 + 1, (Qt_63 * 14 + 8) % 17 + 1))
        local Tw = vector.floor(Qt_43) + vector.ceil(Qt_43 * -1)
        if vector.dot(Tw, Tw) == 2 then
            Qt_12.ExtrasGroup:AddToggle("AutoUseConsumable", { Text = "Auto Use Consumables", Default = false })
            Qt_12.ExtrasGroup:AddDropdown("ConsumableItems", {
                Text = "Consumables",
                AllowNull = true,
                Searchable = true,
                Values = Qt_33,
                Multi = true,
                Callback = fns.onConsumableItems
            })
            Qt_12.ExtrasGroup:AddSlider("ConsumableCooldown", { Suffix = "s", Min = 5, Rounding = 0, Max = 600, Default = 30, Text = "Consumable Cooldown" })
        else
            Qt_33.ExtrasGroup:AddToggle("AutoUseConsumable", { Text = "Auto Use Consumables", Default = false })
            Qt_33.ExtrasGroup:AddDropdown("ConsumableItems", {
                Values = Qt_12,
                Multi = true,
                Searchable = true,
                AllowNull = true,
                Text = "Consumables",
                Callback = fns.onConsumableItems
            })
            Qt_33.ExtrasGroup:AddSlider("ConsumableCooldown", { Text = "Consumable Cooldown", Default = 30, Min = 5, Max = 600, Rounding = 0, Suffix = "s" })
        end
        Qt_63 = (Qt_63 + 7) % 16
    else
        local T3 = bit32.rrotate(bit32.bxor(bit32.lrotate(Qt_63, 20), string.byte(tostring(BI))), 24)
        if bit32.bxor(bit32.lrotate(bit32.bxor(T3, 379208899), 2), 1516835596) == bit32.lrotate(T3, 2) then
            BN = {}
            BI = fns.fn1353
        else
            BI = {}
            BN = fns.fn1353
        end
        Qt_63 = (Qt_63 + 15) % 16
    end
until (Qt_63 * 15 + 10) % 16 == 5
for k, v in Qt_12 do
    Qt_63 = A9[v]
    BN[v] = Qt_33.ExtrasGroup:AddSlider(zO(Qt_63.name), { Text = v, Default = 1, Min = 1, Max = 20, Rounding = 0, Visible = false })
end
zx, zP, Aj, connection2, connection3, connection4, bodyVelocity, bodyGyro, connection5, Bs, AK, zV, Bl, Au, Ap, zy, Bg, Bi, AH, BB, AO, Qt_11, A3, BE, AI, Ad, AX, BQ, zI, AJ, A5, Bk, AC, Qt_9, zT, AQ, zE, Ag, onDisable3D, AT, Qt_16 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Qt_33.ExtrasGroup:AddToggle("AutoWorldLoot", { Text = "Auto Grab World Loot", Default = false })
Qt_33.ExtrasGroup:AddToggle("AutoAlbum", { Text = "Auto Claim Album Index", Default = false })
Qt_33.CraftingGroup = Qt_19.Automation:AddLeftGroupbox("Crafting")
Qt_33.ForgeGroup = Qt_19.Automation:AddLeftGroupbox("Forge")
Qt_33.StashGroup = Qt_19.Automation:AddLeftGroupbox("Personal Stash")
Qt_33.PotionShopGroup = Qt_19.Automation:AddRightGroupbox("Potion Shop")
Qt_33.FruitVendorGroup = Qt_19.Automation:AddRightGroupbox("Fruit Vendor")
Qt_33.ScaleShopGroup = Qt_19.Automation:AddRightGroupbox("Scale Shop")
Qt_33.CraftingGroup:AddToggle("AutoCraft", { Text = "Auto Craft", Default = false })
Qt_33.CraftingGroup:AddDropdown("CraftRecipe", { Values = Qt_71, Default = 1, Searchable = true, AllowNull = true, Text = "Recipe" })
Qt_33.CraftingGroup:AddSlider("CraftAmount", { Text = "Craft Amount", Default = 1, Min = 1, Max = 10, Rounding = 0 })
Qt_33.CraftingGroup:AddToggle("AutoUnlockRecipe", { Text = "Auto Unlock Recipe", Default = false })
Qt_33.CraftingGroup:AddToggle("AutoSkipCraft", { Text = "Auto Skip Craft", Default = false })
Qt_33.ForgeGroup:AddToggle("AutoForge", { Text = "Auto Forge", Default = false })
Qt_33.ForgeGroup:AddDropdown("ForgeRecipe", { Values = Qt_104, Default = 1, Searchable = true, AllowNull = true, Text = "Recipe" })
Qt_33.ForgeGroup:AddToggle("AutoSkipForge", { Text = "Auto Skip Forge", Default = false })
Qt_33.StashGroup:AddToggle("AutoStash", { Text = "Auto Stash Fish", Default = false })
Qt_33.StashGroup:AddDropdown("StashMinRarity", { Values = Qt_68, Default = 1, Searchable = true, AllowNull = true, Text = "Minimum Rarity" })
Qt_33.StashGroup:AddToggle("AutoStashSlot", { Text = "Auto Buy Stash Slot", Default = false })
Qt_33.PotionShopGroup:AddToggle("AutoPotionShop", { Text = "Auto Buy Potions", Default = false })
Qt_33.PotionShopGroup:AddDropdown("PotionShopItems", { Values = Qt_53, Multi = true, Searchable = true, AllowNull = true, Text = "Items" })
Qt_33.PotionShopGroup:AddToggle("AutoPotionRestock", { Text = "Auto Instant Restock", Default = false })
Qt_33.FruitVendorGroup:AddToggle("AutoFruitVendor", { Text = "Auto Buy Fruit", Default = false })
Qt_33.FruitVendorGroup:AddDropdown("FruitVendorItems", { Values = Qt_53, Multi = true, Searchable = true, AllowNull = true, Text = "Items" })
Qt_33.FruitVendorGroup:AddToggle("AutoFruitReroll", { Text = "Auto Luck Reroll", Default = false })
Qt_33.ScaleShopGroup:AddToggle("AutoScaleShop", { Text = "Auto Buy With Scales", Default = false })
Qt_33.ScaleShopGroup:AddDropdown("ScaleShopItems", { Values = Qt_95, Multi = true, Searchable = true, AllowNull = true, Text = "Items" })
AK = fns.fn1479
if (not Ap or not AK or false or (Ap and connection4 or AK and false) or not AT and AC and (AC and connection4) and (not connection4 or not connection4 or false)) and not (not Ap or not AK or false or (Ap and connection4 or AK and false) or not AT and AC and (AC and connection4) and (not connection4 or not connection4 or false)) then
    Bl = fns.fn431
    zV = function(jc)
        local Jg_2
        local Jf = AL.FishManager == nil or AL.StashManager == nil
        local Jf_3
        if Jf then
            return 0
        end
        Jf_3, Jg_2 = pcall(function()
            return AL.FishManager:getByName(jc)
        end)
        local Jh = not Jf_3 or typeof(Jg_2) ~= "table" or typeof(Jg_2.rarity) ~= "table"
        if Jh then
            return 0
        end
        return AL.StashManager.tierByRarity[Jg_2.rarity.name] or 0
    end
else
    zV = fns.fn431
    Bl = function(jc)
        local Jg_1
        local Jf = AL.FishManager == nil or AL.StashManager == nil
        local Jf_1
        if Jf then
            return 0
        end
        Jf_1, Jg_1 = pcall(function()
            return AL.FishManager:getByName(jc)
        end)
        local Jh = not Jf_1 or typeof(Jg_1) ~= "table" or typeof(Jg_1.rarity) ~= "table"
        if Jh then
            return 0
        end
        return AL.StashManager.tierByRarity[Jg_1.rarity.name] or 0
    end
end
Au = function(jl)
    local Jm_2
    local Jj = zu[jl.name]
    local Jj_2
    local Jk = Jj and Options.FavoriteFish.Value[Jj] == true
    local Jk_2, Jk_4, Jk_5
    if Jk then
        return true
    end
    local Jj_1 = jl.mutation and AU[jl.mutation]
    local Jk_1 = Jj_1
    if Jj_1 then
        Jj_1 = Options.FavoriteMutations.Value[Jk_1] == true
    end
    if Jj_1 then
        return true
    elseif AL.FishManager then
        Jj_2, Jk_2 = pcall(function()
            return AL.FishManager:getByName(jl.name)
        end)
        local Jl = Jj_2 and typeof(Jk_2) == "table" and typeof(Jk_2.rarity) == "table"
        local Jl_1, Jl_2
        if Jl then
            local Jj_3 = Ar[Jk_2.rarity.name]
            if Jj_3 and Options.FavoriteRarities.Value[Jj_3] == true then
                return true
            elseif Toggles.FavoriteByWeight.Value then
                Jk_4, Jl_1 = pcall(function()
                    return AL.FishManager:getWeight(jl)
                end)
                if Jm_2 then
                    return true
                end
                return false
            else
                return false
            end
        elseif Toggles.FavoriteByWeight.Value then
            local Jj_5 = tonumber(Options.FavoriteMinWeight.Value)
            Jk_5, Jl_2 = pcall(function()
                return AL.FishManager:getWeight(jl)
            end)
            Jm_2 = Jj_5 and Jk_5 and typeof(Jl_2) == "number" and Jl_2 >= Jj_5
            if Jm_2 then
                return true
            end
            return false
        else
            return false
        end
    else
        return false
    end
end
Ap = fns.fn983
zy = function()
    local Jz
    local JB_1
    local JA = not Toggles.AutoStash.Value or AL.StashController == nil
    local JA_1, JA_3
    if JA then
        return
    end
    Jz = zC(AF.STASH_COMPONENT)
    if Jz == nil then
        return
    end
    JA_1, JB_1 = pcall(function()
        return AL.StashController:getData()
    end)
    local JC = not JA_1
    local JC_1
    local JH = if JC then 1 else 0
    local JF = 1895 * JH + 2284 * (1 - JH)
    local JG = 1153 * JH + 2074 * (1 - JH)
    if not ((JF * 2205 + JG * 963 + JF * JG) % 16777213 == 7473749) then
        JC = typeof(JB_1) ~= "table"
    end
    if not JC then
        JC = typeof(JB_1.fishes) ~= "table"
    end
    if JC then
        return
    end
    if #JB_1.fishes >= JB_1.maxSlots then
        if Toggles.AutoStashSlot.Value then
            Aa(Jz.instance, function()
                Bu(AL.StashController:buySlot(Jz.instance))
            end)
        end
        return
    end
    local JA_2 = AA[Options.StashMinRarity.Value] or 0
    JC_1, JA_3 = nil, -1
    for k, v in z7:getFishes() do
        local JD_1 = typeof(v) == "table" and v.name
        if JD_1 then
            local JD_2 = Bl(v.name)
            if JD_2 > JA_3 then
                JC_1, JA_3 = v, JD_2
            end
        end
    end
    if JC_1 == nil or JA_3 < JA_2 then
        return
    end
    Bu(z7:equip(JC_1.id))
    task.wait(0.4)
    Aa(Jz.instance, function()
        Bu(AL.StashController:add(Jz.instance))
    end)
end
Bg = function()
    local JT_1
    if AL.PotionShopController == nil then
        return
    end
    local JS = not Toggles.AutoPotionShop.Value and not Toggles.AutoPotionRestock.Value
    local JS_1
    if JS then
        return
    end
    local JR = zC(AF.POTION_SHOP_COMPONENT)
    if JR == nil then
        return
    end
    JS_1, JT_1 = pcall(function()
        return AL.PotionShopController:getState()
    end)
    local JU = not JS_1 or typeof(JT_1) ~= "table" or typeof(JT_1.slot) ~= "table"
    if JU then
        return
    end
    local JS_2 = Bm[JT_1.slot.itemName]
    local JU_1 = JS_2 ~= nil and Options.PotionShopItems.Value[JS_2] == true
    local JU_2 = Toggles.AutoPotionShop.Value and JU_1
    if JU_2 then
        local JV = JT_1.slot.remaining
        local JZ = if JV then 1 else 0
        local JX = 2235 * JZ + 490 * (1 - JZ)
        local JY = 3366 * JZ + 3365 * (1 - JZ)
        if not ((JX * 3855 + JY * 2197 + JX * JY) % 16777213 == 6756824) then
            JV = 0
        end
        JU_2 = JV > 0
    end
    if JU_2 then
        Aa(JR.instance, function()
            Bu(AL.PotionShopController:buy(JR.instance))
        end)
    else
        if Toggles.AutoPotionRestock.Value and not JU_1 then
            Aa(JR.instance, function()
                Bu(AL.PotionShopController:requestInstantRestock(JR.instance))
            end)
        end
    end
end
Bi = function()
    local J7, J8
    local Ka_1
    if AL.FruitVendorController == nil then
        return
    end
    local J9 = not Toggles.AutoFruitVendor.Value and not Toggles.AutoFruitReroll.Value
    local J9_1
    if J9 then
        return
    end
    J8 = zC(AF.FRUIT_VENDOR_COMPONENT)
    if J8 == nil then
        return
    end
    J9_1, Ka_1 = pcall(function()
        return AL.FruitVendorController:getState()
    end)
    J7 = {}
    local Kb = Toggles.AutoFruitVendor.Value and J9_1 and typeof(Ka_1) == "table" and typeof(Ka_1.slots) == "table"
    if Kb then
        for k, v in Ka_1.slots do
            local J9_2 = typeof(v) == "table" and typeof(v.reward) == "table"
            if J9_2 then
                J9_2 = (v.remaining or 0) > 0
            end
            if J9_2 then
                local J9_3 = Bm[v.reward.name]
                if J9_3 and Options.FruitVendorItems.Value[J9_3] == true then
                    table.insert(J7, k)
                end
            end
        end
    end
    if #J7 == 0 and not Toggles.AutoFruitReroll.Value then
        return
    end
    Aa(J8.instance, function()
        if Toggles.AutoFruitReroll.Value then
            Bu(AL.FruitVendorController:requestLuckReroll(J8.instance))
            task.wait(0.4)
        end
        for k, v in J7 do
            if z6.Unloaded or not Toggles.AutoFruitVendor.Value then
                break
            end
            Bu(AL.FruitVendorController:buy(J8.instance, v, 1))
            task.wait(0.4)
        end
    end)
end
AH = function()
    local Ku_1
    local Kt_1
    local Kq = not Toggles.AutoScaleShop.Value
    local Ky = if Kq then 1 else 0
    local Kw = 945 * Ky + 1464 * (1 - Ky)
    local Kx = 3512 * Ky + 774 * (1 - Ky)
    if not ((Kw * 2477 + Kx * 1571 + Kw * Kx) % 16777213 == 11176957) then
        Kq = AL.ScaleShopController == nil
    end
    if Kq then
        return
    end
    local Kq_1 = {}
    for k, v in Ah(AF.SCALE_STAND_COMPONENT) do
        local Kr_1 = v.attributes and v.attributes.shopItemName
        if Kr_1 then
            Kq_1[Kr_1] = v
        end
    end
    for k, v in Options.ScaleShopItems.Value do
        if z6.Unloaded or not Toggles.AutoScaleShop.Value then
            break
        else
            local Kp = z4[k]
            local Kr_3 = Kp and Kq_1[Kp]
            if v and Kr_3 then
                local Kr_5 = false
                Kt_1, Ku_1 = pcall(function()
                    return AL.ScaleShopController:hasReachedLimit(Kp)
                end)
                if Kt_1 then
                    Kr_5 = Ku_1 == true
                end
                if not Kr_5 then
                    Aa(Kr_3.instance, function()
                        Bu(AL.ScaleShopController:buy(Kp))
                    end)
                end
            end
        end
    end
end
Qt_33.QuestGroup = Qt_19.Progress:AddLeftGroupbox("Quests And Rewards")
Qt_33.ClassGroup = Qt_19.Progress:AddLeftGroupbox("Class")
Qt_33.ZoneGroup = Qt_19.Progress:AddRightGroupbox("Zones")
Qt_33.CodeGroup = Qt_19.Progress:AddRightGroupbox("Codes")
Qt_33.StatsGroup = Qt_19.Progress:AddRightGroupbox("Live Stats")
Qt_33.QuestGroup:AddToggle("AutoDaily", { Text = "Auto Claim Daily Reward", Default = false })
Qt_33.QuestGroup:AddToggle("AutoAchievement", { Text = "Auto Claim Achievements", Default = false })
Qt_33.QuestGroup:AddToggle("AutoGroupReward", { Text = "Auto Claim Group Reward", Default = false })
Qt_33.QuestGroup:AddToggle("AutoBuyBestGear", { Text = "Auto Buy Best Affordable Straw / Bucket", Default = false })
Qt_33.QuestGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Straw / Bucket", Default = false })
Qt_33.ClassGroup:AddToggle("AutoRollClass", { Text = "Auto Roll Class", Default = false })
Qt_33.ClassGroup:AddDropdown("TargetClasses", { Values = Qt_77, Multi = true, Searchable = true, AllowNull = true, Text = "Stop On" })
Qt_33.ClassGroup:AddToggle("AutoBuySpins", { Text = "Auto Buy Spins", Default = false })
Qt_33.ClassGroup:AddButton({ Text = "Roll Once", Func = fns.onRollOnce })
Qt_33.ZoneGroup:AddToggle("AutoUnlockZone", { Text = "Auto Unlock Zones", Default = false })
Qt_33.ZoneGroup:AddDropdown("UnlockZones", { Values = Qt_23, Multi = true, Searchable = true, AllowNull = true, Text = "Zones" })
Qt_33.CodeGroup:AddToggle("AutoRedeemCodes", { Text = "Auto Redeem Known Codes", Default = false })
Qt_33.CodeGroup:AddInput("CustomCode", { Text = "Code", Default = "", Placeholder = "Enter a code", ClearTextOnFocus = false })
Qt_33.CodeGroup:AddButton({
    Text = "Redeem Code",
    Func = function()
        task.spawn(function()
            local Value
            Value = Options.CustomCode.Value
            if AL.CodeController == nil or Value == nil or Value == "" then
                return
            end
            pcall(function()
                AL.CodeController.net:call("redeem", Value):await()
            end)
        end)
    end
})
At.levelLabel = Qt_33.StatsGroup:AddLabel("Level: ...", true)
At.coinsLabel = Qt_33.StatsGroup:AddLabel("Coins: ...", true)
At.scalesLabel = Qt_33.StatsGroup:AddLabel("Scales: ...", true)
At.weatherLabel = Qt_33.StatsGroup:AddLabel("Weather: ...", true)
At.eventLabel = Qt_33.StatsGroup:AddLabel("Event: ...", true)
At.caughtLabel = Qt_33.StatsGroup:AddLabel("Fish Caught: ...", true)
BB = fns.fn1502
AO = fns.fn1107
Qt_11 = fns.fn428
A3 = function()
    local Li_1
    local Lg_1, Lg_2
    local Lf_1, Lf_3
    local Le = {}
    Lf_1, Lg_1 = pcall(function()
        return AL.EquipmentController:getOwned()
    end)
    local Lh = not Lf_1 or typeof(Lg_1) ~= "table"
    local Lh_1
    if Lh then
        return Le
    end
    for k, v in Lg_1 do
        local Lq = v
        local Lf_2 = typeof(Lq) == "table" and Lq.name
        if Lf_2 then
            Lf_3, Lg_2 = pcall(function()
                return AL.EquipmentManager:getByName(Lq.name)
            end)
            Lh_1, Li_1 = pcall(function()
                return AL.EquipmentManager:getSortValue(Lq.name)
            end)
            local Lj = Lf_3 and typeof(Lg_2) == "table" and Lg_2.type and Lh_1 and typeof(Li_1) == "number"
            if Lj then
                if Le[Lg_2.type] == nil or Li_1 > Le[Lg_2.type] then
                    Le[Lg_2.type] = Li_1
                end
            end
        end
    end
    return Le
end
BE = function()
    local Ls_1, Ls_4
    local Lr = not Toggles.AutoBuyBestGear.Value
    local Lr_2
    local LB = if Lr then 1 else 0
    local Lz = 2955 * LB + 567 * (1 - LB)
    local LA = 3108 * LB + 1240 * (1 - LB)
    if not ((Lz * 2019 + LA * 1158 + Lz * LA) % 16777213 == 1972136) then
        Lr = AL.EquipmentController == nil
    end
    if not Lr then
        Lr = AL.EquipmentManager == nil
    end
    if Lr then
        return
    end
    local Lr_1 = AL.CurrencyController == nil or typeof(AL.CurrencyController.currenciesValue) ~= "table"
    if Lr_1 then
        return
    end
    Lr_2, Ls_1 = pcall(function()
        return AL.EquipmentManager:getAll()
    end)
    local Lt = not Lr_2 or typeof(Ls_1) ~= "table"
    if Lt then
        return
    end
    local Lr_3 = A3()
    local Lt_1 = {}
    for k, v in Ls_1 do
        local LH = v
        local Ls_2 = typeof(LH) == "table" and LH.name and LH.type and typeof(LH.price) == "table"
        if Ls_2 then
            local amount = LH.price.amount
            local currency = LH.price.currency
            local Lu_1
            local Lv = AL.CurrencyController.currenciesValue[currency] or 0
            local Lv_2
            local Lw_1
            local Lv_1 = typeof(amount) == "number" and currency and amount <= Lv
            if Lv_1 then
                Ls_4, Lu_1 = pcall(function()
                    return AL.EquipmentController:isUnlocked(LH.name)
                end)
                Lv_2, Lw_1 = pcall(function()
                    return AL.EquipmentManager:getSortValue(LH.name)
                end)
                local Lx = Ls_4 and Lu_1 ~= true and Lv_2 and typeof(Lw_1) == "number"
                if Lx then
                    if Lw_1 > (Lr_3[LH.type] or 0) then
                        local Ls_6 = Lt_1[LH.type]
                        local Lu_2 = Ls_6 == nil
                        local LK = if Lu_2 then 1 else 0
                        local LI = 690 * LK + 3351 * (1 - LK)
                        local LJ = 2344 * LK + 3782 * (1 - LK)
                        if not ((LI * 1554 + LJ * 3891 + LI * LJ) % 16777213 == 11810124) then
                            Lu_2 = Lw_1 > Ls_6.value
                        end
                        if Lu_2 then
                            Lt_1[LH.type] = { name = LH.name, value = Lw_1 }
                        end
                    end
                end
            end
        end
    end
    for k, v in Lt_1 do
        if z6.Unloaded or not Toggles.AutoBuyBestGear.Value then
            break
        end
        Bu(AL.EquipmentController:buy(v.name))
        task.wait(0.5)
    end
end
AI = function()
    local LV_1
    local LU_1
    local LS_1, LS_3, LS_5
    local LR = not Toggles.AutoEquipBest.Value or AL.EquipmentController == nil or AL.EquipmentManager == nil
    local LR_1, LR_3
    if LR then
        return
    end
    LR_1, LS_1 = pcall(function()
        return AL.EquipmentController:getOwned()
    end)
    local LT = not LR_1 or typeof(LS_1) ~= "table"
    local LT_1
    if LT then
        return
    end
    local LR_2 = {}
    for k, v in LS_1 do
        local L2 = v
        local LS_2 = typeof(L2) == "table" and L2.name and L2.id
        if LS_2 then
            LS_3, LT_1 = pcall(function()
                return AL.EquipmentManager:getByName(L2.name)
            end)
            LU_1, LV_1 = pcall(function()
                return AL.EquipmentManager:getSortValue(L2.name)
            end)
            local LW = LS_3 and typeof(LT_1) == "table" and LT_1.type and LU_1 and typeof(LV_1) == "number"
            if LW then
                local LS_4 = LR_2[LT_1.type]
                if LS_4 == nil or LV_1 > LS_4.value then
                    LR_2[LT_1.type] = { id = L2.id, value = LV_1 }
                end
            end
        end
    end
    for k, v in LR_2 do
        local L8 = v
        LR_3, LS_5 = pcall(function()
            return AL.EquipmentController:isEquipped(L8.id)
        end)
        if not LR_3 or LS_5 ~= true then
            Bu(AL.EquipmentController:equip(L8.id))
            task.wait(0.3)
        end
    end
end
Ad = fns.fn1334
AX = function()
    local Mr_1
    local Mq = not Toggles.AutoUnlockZone.Value or AL.ZoneController == nil
    local Mq_3
    if Mq then
        return
    end
    for k, v in Options.UnlockZones.Value do
        if z6.Unloaded or not Toggles.AutoUnlockZone.Value then
            break
        else
            local Mp = z0[k]
            if v and Mp then
                Mq_3, Mr_1 = pcall(function()
                    return AL.ZoneController:hasUnlocked(Mp)
                end)
                if Mq_3 and Mr_1 ~= true then
                    Bu(AL.ZoneController:unlock(Mp))
                    task.wait(0.5)
                end
            end
        end
    end
end
zx = {}
BQ = function()
    local MD_1
    local MC = not Toggles.AutoRedeemCodes.Value or AL.CodeController == nil or AL.CodeManager == nil
    local MC_1
    if MC then
        return
    end
    MC_1, MD_1 = pcall(function()
        return AL.CodeManager:getAll()
    end)
    local ME = not MC_1 or typeof(MD_1) ~= "table"
    if ME then
        return
    end
    for k, v in MD_1 do
        if z6.Unloaded or not Toggles.AutoRedeemCodes.Value then
            break
        else
            local MC_3 = typeof(v) == "table"
            if MC_3 then
                MC_3 = v.name or v.code
            end
            local MD_3 = MC_3 or tostring(k)
            local MB = MD_3
            if MB and not zx[MB] then
                zx[MB] = true
                pcall(function()
                    AL.CodeController.net:call("redeem", MB):await()
                end)
                task.wait(0.4)
            end
        end
    end
end
zP = {
    { toggle = "AutoSip", name = "Auto Sip" },
    { toggle = "AutoFavorite", name = "Favorite Fish" },
    { toggle = "AutoSell", name = "Auto Sell" },
    { toggle = "AutoSellPercent", name = "Auto Sell At Percent" },
    { toggle = "AutoLakeChest", name = "Lake Chests" },
    { toggle = "AutoMapChest", name = "Map Chests" },
    { toggle = "AutoWorldLoot", name = "World Loot" },
    { toggle = "AutoQuest", name = "Quests" },
    { toggle = "AutoAlbum", name = "Album" },
    { toggle = "AutoUseItem", name = "Baits" },
    { toggle = "AutoUseConsumable", name = "Consumables" },
    { toggle = "AutoCraft", name = "Crafting" },
    { toggle = "AutoForge", name = "Forge" },
    { toggle = "AutoStash", name = "Stash" },
    { toggle = "AutoPotionShop", name = "Potion Shop" },
    { toggle = "AutoFruitVendor", name = "Fruit Vendor" },
    { toggle = "AutoScaleShop", name = "Scale Shop" },
    { toggle = "AutoDaily", name = "Daily Reward" },
    { toggle = "AutoAchievement", name = "Achievements" },
    { toggle = "AutoGroupReward", name = "Group Reward" },
    { toggle = "AutoBuyBestGear", name = "Buy Best Gear" },
    { toggle = "AutoEquipBest", name = "Equip Best Gear" },
    { toggle = "AutoRollClass", name = "Class Roll" },
    { toggle = "AutoUnlockZone", name = "Zone Unlock" },
    { toggle = "AutoRedeemCodes", name = "Codes" },
    { toggle = "AutoMapElement", name = "Map Elements" },
    { toggle = "AutoTreasureMap", name = "Treasure Map" },
    { toggle = "AutoDispenser", name = "Dispensers" },
    { toggle = "AutoLever", name = "Levers" },
    { toggle = "AutoComposter", name = "Composter" },
    { toggle = "AutoStrawberry", name = "Strawberry Machine" },
    { toggle = "AutoWeirdFish", name = "Weird Fish" }
}
zI = fns.fn530
AJ = fns.fn394
Qt_33.MapGroup = Qt_19.Objectives:AddLeftGroupbox("Map Objectives")
Qt_33.PuzzleGroup = Qt_19.Objectives:AddLeftGroupbox("Puzzles")
Qt_33.FillGroup = Qt_19.Objectives:AddRightGroupbox("Fill And Deposit")
Qt_33.MapGroup:AddToggle("AutoMapElement", { Text = "Auto Interact Map Elements", Default = false })
Qt_33.MapGroup:AddToggle("AutoTreasureMap", { Text = "Auto Claim Treasure Map", Default = false })
Qt_33.MapGroup:AddToggle("AutoDispenser", { Text = "Auto Claim Dispensers", Default = false })
Qt_33.PuzzleGroup:AddToggle("AutoLever", { Text = "Auto Activate Levers", Default = false })
Qt_33.PuzzleGroup:AddInput("PadlockCode", { Text = "Padlock Code", Default = "", Placeholder = "Digits only", ClearTextOnFocus = false })
Qt_33.PuzzleGroup:AddButton({
    Text = "Submit Padlock Code",
    Func = function()
        task.spawn(function()
            local Nh, Ni
            if AL.PadlockController == nil then
                return
            end
            Ni = zC(AF.PADLOCK_COMPONENT)
            if Ni == nil then
                return
            end
            Nh = {}
            for k in tostring(Options.PadlockCode.Value):gmatch("%d") do
                table.insert(Nh, tonumber(k))
            end
            if #Nh == 0 then
                z6:Notify("Enter a numeric padlock code first")
                return
            end
            Aa(Ni.instance, function()
                Bu(AL.PadlockController:submit(Ni.instance, Nh))
            end)
        end)
    end
})
Qt_33.FillGroup:AddToggle("AutoComposter", { Text = "Auto Fill Composter", Default = false })
Qt_33.FillGroup:AddToggle("AutoStrawberry", { Text = "Auto Fill Strawberry Machine", Default = false })
Qt_33.FillGroup:AddSlider("FillAmount", { Text = "Fill Amount", Default = 1, Min = 1, Max = 50, Rounding = 0 })
Qt_33.FillGroup:AddToggle("AutoWeirdFish", { Text = "Auto Deposit Weird Fish", Default = false })
A5 = function()
    local Nt_1
    local Ns = not Toggles.AutoMapElement.Value or AL.MapElementController == nil
    local Ns_3
    if Ns then
        return
    end
    for k, v in Ah(AF.MAP_ELEMENT_COMPONENT) do
        local NF = v
        if z6.Unloaded or not Toggles.AutoMapElement.Value then
            break
        else
            local Nr = NF.attributes and NF.attributes.mapEleName
            if Nr then
                Ns_3, Nt_1 = pcall(function()
                    return AL.MapElementController:areConditionsMet(Nr, NF.instance)
                end)
                if Ns_3 and Nt_1 == true then
                    Aa(NF.instance, function()
                        Bu(AL.MapElementController:interact(Nr, NF.instance))
                    end)
                end
            end
        end
    end
end
Bk = fns.fn961
AC = function()
    if not Toggles.AutoDispenser.Value or AL.DispenserController == nil then
        return
    end
    for k, v in Ah(AF.DISPENSER_COMPONENT) do
        local NU = v
        if z6.Unloaded or not Toggles.AutoDispenser.Value then
            break
        end
        Aa(NU.instance, function()
            Bu(AL.DispenserController:claim(NU.instance))
        end)
    end
end
Qt_9 = function()
    local NW_1
    local NV = not Toggles.AutoLever.Value or AL.TrapController == nil
    local NV_1
    if NV then
        return
    end
    NV_1, NW_1 = pcall(function()
        return AL.TrapController:isOpened()
    end)
    if NV_1 and NW_1 == true then
        return
    end
    for k, v in Ah(AF.LEVER_COMPONENT) do
        local N4 = v
        if z6.Unloaded or not Toggles.AutoLever.Value then
            break
        end
        Aa(N4.instance, function()
            Bu(AL.TrapController:activateLever(N4.instance))
        end)
    end
end
zT = function()
    local N5
    if not Toggles.AutoComposter.Value or AL.ComposterController == nil then
        return
    end
    N5 = zC(AF.COMPOSTER_COMPONENT)
    if N5 == nil then
        return
    end
    Aa(N5.instance, function()
        Bu(AL.ComposterController:fill(N5.instance, Options.FillAmount.Value))
        task.wait(0.4)
        Bu(AL.ComposterController:claim(N5.instance))
    end)
end
AQ = function()
    local N8
    if not Toggles.AutoStrawberry.Value or AL.StrawberryLakeController == nil then
        return
    end
    N8 = zC(AF.STRAWBERRY_COMPONENT)
    if N8 == nil then
        return
    end
    Aa(N8.instance, function()
        Bu(AL.StrawberryLakeController:fill(N8.instance, Options.FillAmount.Value))
        task.wait(0.4)
        Bu(AL.StrawberryLakeController:activate(N8.instance))
    end)
end
zE = function()
    local Ob
    local Oc = not Toggles.AutoWeirdFish.Value
    local Oh = if Oc then 1 else 0
    local Of = 1692 * Oh + 3075 * (1 - Oh)
    local Og = 560 * Oh + 1755 * (1 - Oh)
    if not ((Of * 3506 + Og * 1708 + Of * Og) % 16777213 == 7836152) then
        Oc = AL.WeirdFishController == nil
    end
    if Oc then
        return
    end
    Ob = zC(AF.WEIRD_FISH_COMPONENT)
    if Ob == nil then
        return
    end
    local Oc_1 = nil
    for k, v in z7:getFishes() do
        local Od = typeof(v) == "table" and v.id
        if Od then
            Oc_1 = v
            break
        end
    end
    if Oc_1 == nil then
        return
    end
    Bu(z7:equip(Oc_1.id))
    task.wait(0.4)
    Aa(Ob.instance, function()
        Bu(AL.WeirdFishController:depositEquippedFish(Ob.instance))
    end)
end
Qt_33.MovementGroup = Qt_19.Player:AddLeftGroupbox("Movement")
Qt_33.PerformanceGroup = Qt_19.Player:AddLeftGroupbox("Performance")
Qt_33.TeleportGroup = Qt_19.Player:AddRightGroupbox("Teleport")
Qt_33.TravelGroup = Qt_19.Player:AddRightGroupbox("Travel")
Aj = nil
Ag = function()
    local rt
    rt = 0
    pcall(function()
        for i, child in gethui():GetChildren() do
            local Oo = child:IsA("ScreenGui") and child.DisplayOrder > rt
            if Oo then
                rt = child.DisplayOrder
            end
        end
    end)
    return rt - 1
end
onDisable3D = function(rz)
    local screenGui
    if rz then
        if Aj == nil then
            screenGui = Instance.new("ScreenGui")
            screenGui.Name = "OuroborosBlackout"
            screenGui.IgnoreGuiInset = true
            screenGui.ResetOnSpawn = false
            screenGui.DisplayOrder = Ag()
            local frame = Instance.new("Frame")
            frame.Size = UDim2.fromScale(1, 1)
            frame.Position = UDim2.fromScale(0, 0)
            frame.BackgroundColor3 = Color3.new(0, 0, 0)
            frame.BackgroundTransparency = 0
            frame.BorderSizePixel = 0
            frame.ZIndex = 0
            frame.Parent = screenGui
            local Ox_1 = pcall(function()
                screenGui.Parent = gethui()
            end)
            if not Ox_1 then
                screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
            end
            Aj = screenGui
        end
    elseif Aj then
        Aj:Destroy()
        Aj = nil
    end
    pcall(function()
        Br:Set3dRenderingEnabled(not rz)
    end)
end
Qt_33.PerformanceGroup:AddToggle("Disable3D", { Text = "Disable 3D Rendering", Default = false, Callback = onDisable3D })
AT = fns.fn692
Qt_33.MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "Walk Speed", Default = false, Callback = fns.onWalkSpeedEnabled })
Qt_33.MovementGroup:AddSlider("WalkSpeed", { Text = "Walk Speed", Default = 16, Min = 16, Max = 200, Rounding = 0, Callback = fns.onWalkSpeed })
Qt_33.MovementGroup:AddToggle("NoClip", { Text = "No Clip", Default = false })
Qt_33.MovementGroup:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false })
Qt_33.MovementGroup:AddToggle("Fly", { Text = "Fly", Default = false })
Qt_33.MovementGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 20, Max = 300, Rounding = 0 })
connection2 = Br.Stepped:Connect(fns.onStepped)
connection3 = Br.Stepped:Connect(fns.onStepped2)
connection4 = BG.JumpRequest:Connect(fns.onJumpRequest)
Qt_16 = fns.fn1265
connection5 = Br.RenderStepped:Connect(fns.onRenderStepped)
Qt_33.TeleportGroup:AddDropdown("TeleportArea", { Values = Qt_113, Default = 1, Searchable = true, AllowNull = true, Text = "Area" })
Qt_33.TeleportGroup:AddButton({ Text = "Teleport", Func = fns.onTeleport })
Qt_12 = {}
Bs = {}
for k, v in Ah(AF.TELEPORTER_COMPONENT) do
    Qt_71 = v.instance.Name .. " " .. tostring(k)
    table.insert(Qt_12, Qt_71)
    Bs[Qt_71] = v
end
Qt_63 = 3
repeat
    Qt_71 = { "tqda", "oekpi", "afgepsuptcs", "ifbyccmxzg", "qss", "kjsca", "coxh", "snrztd" }
    local Vh = Qt_63
    Qt_53 = Qt_71[Vh % 8 + 1]
    if Qt_53:len() >= Qt_53:gsub("(.)", "%1%1", Vh % 3 % 2 + 1):len() then
        table.sort(Qt_33)
        Qt_12.TravelGroup:AddDropdown("Teleporter", { Default = 1, Searchable = true, Text = "Teleporter", Values = Qt_33, AllowNull = true })
        Qt_12.TravelGroup:AddButton({
            Text = "Use Teleporter",
            Func = function()
                task.spawn(function()
                    local Pn
                    Pn = Bs[Options.Teleporter.Value]
                    if Pn == nil or AL.TeleporterController == nil then
                        return
                    end
                    Aa(Pn.instance, function()
                        pcall(function()
                            AL.TeleporterController:useTeleporter(Pn.instance)
                        end)
                    end)
                end)
            end
        })
        Qt_12.TravelGroup:AddButton({
            Text = "Use Nearest Cannon",
            Func = function()
                task.spawn(function()
                    local Pq
                    local Ps_2
                    local Pu_3
                    local Pt_3
                    if AL.CannonController == nil then
                        return
                    end
                    local Pr = Av()
                    if Pr == nil then
                        return
                    end
                    Pq, Ps_2 = nil, nil
                    for k, v in Ah(AF.CANNON_COMPONENT) do
                        local PH = v
                        Pt_3, Pu_3 = pcall(function()
                            return PH.instance:GetPivot()
                        end)
                        if Pt_3 then
                            local Magnitude = (Pu_3.Position - Pr.Position).Magnitude
                            if Ps_2 == nil or Magnitude < Ps_2 then
                                Pq, Ps_2 = PH, Magnitude
                            end
                        end
                    end
                    if Pq == nil then
                        z6:Notify("No cannon found")
                        return
                    end
                    Aa(Pq.instance, function()
                        pcall(function()
                            AL.CannonController:useCannon(Pq.instance)
                        end)
                    end)
                end)
            end
        })
    else
        table.sort(Qt_12)
        Qt_33.TravelGroup:AddDropdown("Teleporter", { Values = Qt_12, Default = 1, Searchable = true, AllowNull = true, Text = "Teleporter" })
        Qt_33.TravelGroup:AddButton({
            Text = "Use Teleporter",
            Func = function()
                task.spawn(function()
                    local Pn
                    Pn = Bs[Options.Teleporter.Value]
                    if Pn == nil or AL.TeleporterController == nil then
                        return
                    end
                    Aa(Pn.instance, function()
                        pcall(function()
                            AL.TeleporterController:useTeleporter(Pn.instance)
                        end)
                    end)
                end)
            end
        })
        Qt_33.TravelGroup:AddButton({
            Text = "Use Nearest Cannon",
            Func = function()
                task.spawn(function()
                    local Pq
                    local Ps_1
                    local Pu_1
                    local Pt_1
                    if AL.CannonController == nil then
                        return
                    end
                    local Pr = Av()
                    if Pr == nil then
                        return
                    end
                    Pq, Ps_1 = nil, nil
                    for k, v in Ah(AF.CANNON_COMPONENT) do
                        local PH = v
                        Pt_1, Pu_1 = pcall(function()
                            return PH.instance:GetPivot()
                        end)
                        if Pt_1 then
                            local Magnitude = (Pu_1.Position - Pr.Position).Magnitude
                            if Ps_1 == nil or Magnitude < Ps_1 then
                                Pq, Ps_1 = PH, Magnitude
                            end
                        end
                    end
                    if Pq == nil then
                        z6:Notify("No cannon found")
                        return
                    end
                    Aa(Pq.instance, function()
                        pcall(function()
                            AL.CannonController:useCannon(Pq.instance)
                        end)
                    end)
                end)
            end
        })
    end
    Qt_63 = (Qt_63 + 4) % 8
until (Qt_63 * 3 + 4) % 8 == 1
if Toggles.PerfectCharge.Value then
    Ae.getCurrentLuck = function()
        return BC
    end
end
zY, zR, connection6, fns.connection7, BO = nil, nil, nil, nil, nil
do
    task.spawn(fns.autoSipLoop)
    task.spawn(fns.autoWorldLootLoop)
    task.spawn(function()
        local PS_1
        while not z6.Unloaded do
            task.wait(5)
            local PR = Toggles.AutoQuest and Toggles.AutoQuest.Value
            local PR_1
            if PR then
                for k, v in zw:getAll() do
                    local PY = k
                    if v.quest then
                        pcall(function()
                            zw.net:call("claimQuest", PY):await()
                        end)
                    else
                        PR_1, PS_1 = pcall(function()
                            return zw.net:call("areConditionsMet", PY):await()
                        end)
                        if PR_1 and PS_1 then
                            pcall(function()
                                zw.net:call("startQuest", PY):await()
                            end)
                        end
                    end
                end
            end
            if Toggles.AutoAlbum and Toggles.AutoAlbum.Value then
                for k, v in zD:getEntries() do
                    local P3 = k
                    if v.claimed ~= true then
                        pcall(function()
                            zD:claim(P3):await()
                        end)
                    end
                end
            end
        end
    end)
    task.spawn(fns.worker4)
    task.spawn(fns.worker3)
    task.spawn(fns.worker2)
    task.spawn(fns.worker)
    Qt_33.MenuGroup = Qt_19.Settings:AddLeftGroupbox("Menu")
    zY = tick()
    zR = tick()
    pcall(function()
        for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
            local Qg = v
            pcall(function()
                Qg:Disable()
            end)
        end
    end)
    BO = fns.fn378
end
connection6 = BG.InputBegan:Connect(fns.onInputBegan)
fns.connection7 = BG.InputChanged:Connect(fns.onInputChanged)
Qt_33.MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(fns.antiAfkLoop)
Qt_33.MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Qt_33.MenuGroup:AddButton("Unload", fns.onUnload)
z6.ToggleKeybind = Options.MenuKeybind
z6:OnUnload(fns.fn1041)
ThemeManager:SetLibrary(z6)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
ThemeManager:ApplyToTab(Qt_19.Settings)
ThemeManager:LoadDefault()
fns.Qt_3:SetLibrary(z6)
fns.Qt_3:IgnoreThemeSettings()
fns.Qt_3:SetIgnoreIndexes({ "MenuKeybind" })
fns.Qt_3:SetFolder("OuroborosHub/lake-a-sipping")
fns.Qt_3:BuildConfigSection(Qt_19.Settings)
fns.Qt_3:LoadAutoloadConfig()
z5()
BI()
