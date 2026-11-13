local client
local ul
local t2
local Remotes
local t8
local tQ
local ux
local tx
local ue
local tW
local uD
local tD
local uk
local LocalPlayer
local Options
local IndexRewards
local uP
local Toggles
local uw
local tw
local uC
local tC
local uj
local uI
local tI
local up
local State
local tO
local uv
local uc
local tB
local ui
local t_
local tH
local uo
local t5
local uN
local tN
local ub
local tT
local tA
local uG
local tG
local TrainingProgress
local t4
local uM
local tM
local PlotProgress
local ua
local tS
local uz
local AnimalCatalog
local ug
local uF
local tF
local um
local tL
local us
local Library
local tR
local uy
local ty
local uf
local function fn9(iF)
    local BV = iF and true
    local BZ = if BV then 1 else 0
    local BX = 3858 * BZ + 1771 * (1 - BZ)
    local BY = 3651 * BZ + 3777 * (1 - BZ)
    if not ((BX * 323 + BY * 1280 + BX * BY) % 16777213 == 3227759) then
        BV = false
    end
    State.AutoDaily = BV
    if State.AutoDaily then
        uo("daily", 3, function()
            if State.AutoDaily then
                uG()
            end
        end)
    else
        uP("daily")
    end
end
local function fn16()
    local yU = client:get("TrainingState")
    local yV = TrainingProgress.Price(yU, "Treadmill")
    if not yV or yV <= 0 then
        return
    end
    local yU_2 = client:get("Cash") or 0
    if yU_2 < yV then
        return
    end
    local yU_3 = tC()
    if not yU_3 then
        return
    end
    local UpgradeButton = yU_3:FindFirstChild("UpgradeButton")
    local yU_4 = UpgradeButton and uy(UpgradeButton)
    if not yU_4 then
        return
    end
    local yU_5 = UpgradeButton:IsA("BasePart") and UpgradeButton
    local yX = yU_5 or UpgradeButton:FindFirstChildWhichIsA("BasePart", true)
    if yX then
        tM(yX.Position)
        task.wait(0.2)
    end
    tO(yU_4)
end
local function fn68()
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local w0_1 = child:IsA("Tool") and child:GetAttribute("AnimalItemKind") ~= "Eggs" and child:GetAttribute("AnimalItemId")
            if w0_1 then
                return child
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local w0_3 = child:IsA("Tool") and child:GetAttribute("AnimalItemKind") ~= "Eggs" and child:GetAttribute("AnimalItemId")
            if w0_3 then
                return child
            end
        end
    end
    return nil
end
local function fn76()
    for k in pairs(uc) do
        uc[k] = nil
    end
    tA.SetInfJump(false)
    tA.SetNoClip(false)
    tA.SetFly(false)
    tA.SetWalkSpeedEnabled(false)
    local DZ = uF()
    if DZ then
        local OuroFlyBV = DZ:FindFirstChild("OuroFlyBV")
        if OuroFlyBV then
            OuroFlyBV:Destroy()
        end
    end
    local DZ_1 = uf()
    if DZ_1 then
        DZ_1.PlatformStand = false
    end
end
local function fn95(hN)
    local Br = hN and true or false
    State.AutoTreadmillUpgrade = Br
    if State.AutoTreadmillUpgrade then
        uo("treadUpgrade", 1.5, function()
            if State.AutoTreadmillUpgrade then
                uN()
            end
        end)
    else
        uP("treadUpgrade")
    end
end
local function fn104(ki)
    local De = ki and true or false
    State.InfJump = De
    if tL.InfJump then
        tL.InfJump:Disconnect()
        tL.InfJump = nil
    end
    if not State.InfJump then
        return
    end
    tL.InfJump = tw.UserInputService.JumpRequest:Connect(function()
        local Db = not ub() or not State.InfJump
        if Db then
            return
        end
        local Db_1 = uf()
        if Db_1 then
            Db_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end
local function fn109()
    local xm = uF()
    if xm and (xm.Position - ua).Magnitude > 6 then
        tM(ua)
        task.wait(0.35)
    end
    local xm_1 = os.clock() + 2
    while true do
        local xn_1 = ub() and t4() and os.clock() < xm_1
        if xn_1 then
            task.wait(0.1)
            continue
        end
        break
    end
end
local function fn114()
    uI(ty.Player)
    local MovementGroup = ty.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = ty.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(nX)
        tA.SetWalkSpeedEnabled(nX)
    end)
    Options.WalkSpeed:OnChanged(function(n0)
        tA.SetWalkSpeedValue(n0)
    end)
    Toggles.InfJump:OnChanged(function(n2)
        tA.SetInfJump(n2)
    end)
    Toggles.NoClip:OnChanged(function(n4)
        tA.SetNoClip(n4)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(n6)
        tA.SetInstantProximityPrompt(n6)
    end)
    Toggles.Fly:OnChanged(function(n8)
        tA.SetFly(n8)
    end)
    Options.FlySpeed:OnChanged(function(oa)
        tA.SetFlySpeed(oa)
    end)
end
local function onCharacterAdded()
    task.wait(0.5)
    if not ub() then
        return
    end
    if State.WalkSpeedEnabled then
        tA.SetWalkSpeedEnabled(true)
    end
    if State.Fly then
        tA.SetFly(true)
    end
end
local function fn134(jE)
    local CE = tS(jE)
    if CE then
        tM(CE)
    end
end
local function fn154()
    local Spawn = tR.Map:FindFirstChild("Spawn")
    if not Spawn then
        return
    end
    local Cm = Vector3.zero
    local Cn = 0
    for i, descendant in ipairs(Spawn:GetDescendants()) do
        local Cl_1 = descendant:IsA("BasePart") and math.abs(descendant.Position.Y - 63) < 8
        if Cl_1 then
            Cm += descendant.Position
            Cn += 1
            if Cn >= 40 then
                break
            end
        end
    end
    if Cn > 0 then
        tM(Cm / Cn)
    end
end
local function fn157(hU)
    local Bv = hU and true or false
    State.AutoBuyMotorcycles = Bv
    if State.AutoBuyMotorcycles then
        uo("motos", 2, function()
            if State.AutoBuyMotorcycles then
                us()
            end
        end)
    else
        uP("motos")
    end
end
local function fn183(h0)
    local Bz = h0 and true or false
    State.AutoBuyAuras = Bz
    if State.AutoBuyAuras then
        uo("auras", 2, function()
            if State.AutoBuyAuras then
                uv()
            end
        end)
    else
        uP("auras")
    end
end
local function fn186()
    local Ab = uz() or tF()
    if not Ab then
        return
    end
    uM(Ab)
    task.wait(0.1)
    local SellShop = tR.Map:FindFirstChild("SellShop")
    local Ac_1 = SellShop and SellShop:FindFirstChild("Pad")
    local Ab_2 = Ac_1
    if Ac_1 then
        Ac_1 = Ab_2:FindFirstChild("Part")
    end
    local Ab_3 = Ac_1
    if Ac_1 then
        Ac_1 = uy(Ab_3, function(fT)
            return fT.Name == "SellPrompt" or fT.ActionText == "Sell Held Animal"
        end)
    end
    local Ad = Ac_1
    if Ab_3 then
        tM(Ab_3.Position)
        task.wait(0.2)
    end
    if Ad then
        tO(Ad)
    end
end
local function fn202()
    local ZoneEggs = tR:FindFirstChild("ZoneEggs")
    if not ZoneEggs then
        return {}
    end
    local xG = {}
    for i, child in ipairs(ZoneEggs:GetChildren()) do
        local xF_1 = child:IsA("Model") and not string.find(child.Name, "Dirt", 1, true)
        if xF_1 then
            local attr = child:GetAttribute("Zone")
            local xH = ui(attr) and tQ(t2(child))
            if xH then
                local xH_1 = uy(child, function(c1)
                    return c1.ActionText == "Pick up" or c1.Enabled
                end)
                local xI = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                if xH_1 and xI then
                    local insert = table.insert
                    local xK = tonumber(child:GetAttribute("ItemScale")) or 0
                    insert(xG, { Model = child, Prompt = xH_1, Part = xI, Scale = xK, Zone = attr })
                end
            end
        end
    end
    table.sort(xG, function(c6, c7)
        return c6.Scale > c7.Scale
    end)
    return xG
end
local function fn208()
    if client:get("LeaveRewardClaimed") then
        return
    end
    pcall(function()
        Remotes.ClaimLeaveReward:InvokeServer()
    end)
end
local function fn235()
    local wk = uj()
    if not wk then
        return nil
    end
    local wl = tR:FindFirstChild("Map") and tR.Map:FindFirstChild("Spawn") and tR.Map.Spawn:FindFirstChild("Plots")
    if not wl then
        return nil
    end
    return wl:FindFirstChild(wk)
end
local function fn245(jJ)
    if not jJ:IsA("ProximityPrompt") then
        return
    end
    if t5[jJ] == nil then
        t5[jJ] = jJ.HoldDuration
    end
    if State.InstantPrompt then
        jJ.HoldDuration = 0
    elseif t5[jJ] ~= nil then
        jJ.HoldDuration = t5[jJ]
    end
end
local function fn257(iM)
    local B1 = iM and true or false
    State.AutoPlaytime = B1
    if State.AutoPlaytime then
        uo("playtime", 3, function()
            if State.AutoPlaytime then
                ue()
            end
        end)
    else
        uP("playtime")
    end
end
local function fn291(hs)
    local Bc = hs and true
    local Bg = if Bc then 1 else 0
    local Be = 711 * Bg + 163 * (1 - Bg)
    local Bf = 554 * Bg + 2434 * (1 - Bg)
    if not ((Be * 4003 + Bf * 2706 + Be * Bf) % 16777213 == 4739151) then
        Bc = false
    end
    State.AutoHatch = Bc
    if State.AutoHatch then
        uo("hatch", 1.2, function()
            if State.AutoHatch then
                tD()
            end
        end)
    else
        uP("hatch")
    end
end
local function fn301(i_)
    local B9 = i_ and true or false
    State.AutoGroup = B9
    if State.AutoGroup then
        uo("group", 5, function()
            if State.AutoGroup then
                tx()
            end
        end)
    else
        uP("group")
    end
end
local function fn310(hi)
    State.HarvestRarities = tT(hi)
end
local function fn322(kK)
    local DP = kK and true
    local DT = if DP then 1 else 0
    local DR = 29 * DT + 853 * (1 - DT)
    local DS = 3846 * DT + 276 * (1 - DT)
    if not ((DR * 614 + DS * 2081 + DR * DS) % 16777213 == 8132866) then
        DP = false
    end
    State.Fly = DP
    if tL.Fly then
        tL.Fly:Disconnect()
        tL.Fly = nil
    end
    local DO_1 = uF()
    if DO_1 then
        local OuroFlyBV = DO_1:FindFirstChild("OuroFlyBV")
        if OuroFlyBV then
            OuroFlyBV:Destroy()
        end
    end
    local DO_2 = uf()
    if DO_2 then
        DO_2.PlatformStand = false
    end
    if not State.Fly then
        return
    end
    tL.Fly = tw.RunService.RenderStepped:Connect(function()
        local DG = not ub() or not State.Fly
        if DG then
            return
        end
        local DG_1 = uF()
        local DH = uf()
        local DI = not DH
        local DJ = not DG_1
        local DN = if DJ then 1 else 0
        local DL = 1674 * DN + 3784 * (1 - DN)
        local DM = 2485 * DN + 1510 * (1 - DN)
        if not ((DL * 3104 + DM * 1986 + DL * DM) % 16777213 == 14291196) then
            DJ = DI
        end
        if DJ then
            return
        end
        local DI_1 = DG_1:FindFirstChild("OuroFlyBV")
        if not DI_1 then
            DI_1 = Instance.new("BodyVelocity")
            DI_1.Name = "OuroFlyBV"
            DI_1.MaxForce = Vector3.new(100000, 100000, 100000)
            DI_1.Parent = DG_1
        end
        local MoveDirection = DH.MoveDirection
        local DJ_1 = Vector3.zero
        if MoveDirection.Magnitude > 0 then
            DJ_1 = MoveDirection.Unit * State.FlySpeed
        end
        if tw.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            DJ_1 += Vector3.new(0, State.FlySpeed, 0)
        end
        local DN_1 = if tw.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
        if DN_1 == 1 then
            DJ_1 -= Vector3.new(0, State.FlySpeed, 0)
        end
        DI_1.Velocity = DJ_1
        DH.PlatformStand = true
    end)
end
local function fn337(cK)
    local attr = cK:GetAttribute("Species")
    local xy = attr and AnimalCatalog.Animals[attr]
    local xx_1 = xy
    if xy then
        xy = xx_1.Rarity
    end
    return xy or nil
end
local function fn341(ap, aq)
    return ap.Order < aq.Order
end
local function fn350()
    local Cv = um("Treadmill")
    local Cw = Cv and Cv:IsA("BasePart")
    if Cw then
        tM(Cv.Position)
    end
end
local function fn421()
    local AH = client:get("AnimalState")
    local AI = client:get("IndexClaims")
    local AJ = type(AH) ~= "table" or type(AI) ~= "table"
    if AJ then
        return
    end
    if IndexRewards.Count(AH, AI) > 0 then
        pcall(function()
            Remotes.ClaimIndexReward:InvokeServer("All")
        end)
    end
end
local function fn438(j9)
    local C0 = j9 and true or false
    State.WalkSpeedEnabled = C0
    local C__1 = uf()
    if C__1 then
        local C1 = State.WalkSpeedEnabled and State.WalkSpeedValue
        local C5 = if C1 then 1 else 0
        local C3 = 3342 * C5 + 3189 * (1 - C5)
        local C4 = 3156 * C5 + 3300 * (1 - C5)
        if not ((C3 * 1697 + C4 * 1146 + C3 * C4) % 16777213 == 3058289) then
            C1 = 16
        end
        C__1.WalkSpeed = C1
    end
end
local function fn448(lu, lv)
    local D6 = false
    if up(setclipboard) then
        D6 = pcall(setclipboard, lu)
    elseif up(toclipboard) then
        D6 = pcall(toclipboard, lu)
    end
    if D6 then
        local D6_1 = lv or "Copied"
        Library:Notify(D6_1, 2)
    else
        Library:Notify("Clipboard unavailable", 2)
    end
end
local function fn451()
    local SellShop = tR.Map:FindFirstChild("SellShop")
    local CC = SellShop and SellShop:FindFirstChild("Pad")
    local CB_1 = CC
    if CC then
        CC = CB_1:FindFirstChild("Part")
    end
    local CB_2 = CC
    if CB_2 then
        tM(CB_2.Position)
    end
end
local function fn480(aL)
    if not uC(State.HarvestRarities) then
        return true
    end
    return aL ~= nil and State.HarvestRarities[aL] == true
end
local function fn500(hl)
    local A8 = hl and true or false
    State.AutoPlace = A8
    if State.AutoPlace then
        uo("place", 0.8, function()
            if State.AutoPlace then
                ux()
            end
        end)
    else
        uP("place")
    end
end
local function fn507()
    if LocalPlayer:GetAttribute("CarryingEgg") == true then
        return true
    end
    local Character = LocalPlayer.Character
    local xk = Character ~= nil and Character:GetAttribute("CarryingEgg") == true
    return xk
end
local function fn514(aE)
    for k in pairs(aE) do
        return true
    end
    return false
end
local function fn526(iy)
    local BR = iy and true or false
    State.AutoSell = BR
    if State.AutoSell then
        uo("sell", 1.2, function()
            if State.AutoSell then
                ug()
            end
        end)
    else
        uP("sell")
    end
end
local function fn528(bs, bt)
    if not bs then
        return nil
    end
    for i, descendant in ipairs(bs:GetDescendants()) do
        local ww = (descendant:IsA("ProximityPrompt"))
        if ww then
            local wx = not bt or bt(descendant)
            ww = wx
        end
        if ww then
            return descendant
        end
    end
    return nil
end
local function fn535(i6)
    local Cd = i6 and true or false
    State.AutoIndex = Cd
    if State.AutoIndex then
        uo("index", 4, function()
            if State.AutoIndex then
                ul()
            end
        end)
    else
        uP("index")
    end
end
local function fn571(ay)
    local vH = {}
    if type(ay) ~= "table" then
        return vH
    end
    for k, v in pairs(ay) do
        if v == true then
            vH[tostring(k)] = true
        else
            local vI = type(k) == "number" and type(v) == "string"
            if vI then
                vH[v] = true
            end
        end
    end
    return vH
end
local function fn588()
    if client:get("FreeRewardClaimed") then
        return
    end
    pcall(function()
        Remotes.FreeRewardRequest:InvokeServer("Status")
    end)
    task.wait(0.2)
    pcall(function()
        Remotes.FreeRewardRequest:InvokeServer("Claim")
    end)
end
local function fn590(hG)
    local Bn = hG and true or false
    State.AutoPlotExpand = Bn
    if State.AutoPlotExpand then
        uo("plotExpand", 1.5, function()
            if State.AutoPlotExpand then
                tI()
            end
        end)
    else
        uP("plotExpand")
    end
end
local function fn602(kt)
    local Dv = kt and true or false
    State.NoClip = Dv
    if tL.NoClip then
        tL.NoClip:Disconnect()
        tL.NoClip = nil
    end
    if not State.NoClip then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    descendant.CanCollide = descendant.Name ~= "HumanoidRootPart"
                end
            end
        end
        return
    end
    tL.NoClip = tw.RunService.Stepped:Connect(function()
        local Dj = not ub() or not State.NoClip
        if Dj then
            return
        end
        local Character = LocalPlayer.Character
        if not Character then
            return
        end
        for i, descendant in ipairs(Character:GetDescendants()) do
            if descendant:IsA("BasePart") then
                descendant.CanCollide = false
            end
        end
    end)
end
local function fn613(gL)
    if uc[gL] then
        uc[gL] = nil
    end
end
local function fn645(lA)
    local DiscordGroup = lA:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = uk,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn647(ke)
    local C6 = tonumber(ke) or 32
    State.WalkSpeedValue = C6
    if State.WalkSpeedEnabled then
        local C6_1 = uf()
        if C6_1 then
            C6_1.WalkSpeed = State.WalkSpeedValue
        end
    end
end
local function fn662()
    local yJ = PlotProgress.Price(client:get("PlotExpansionLevel"))
    if not yJ or yJ <= 0 then
        return
    end
    local yK_1 = client:get("Cash") or 0
    if yK_1 < yJ then
        return
    end
    local yJ_1 = tC()
    if not yJ_1 then
        return
    end
    local FenceUpgrade = yJ_1:FindFirstChild("FenceUpgrade")
    local yJ_2 = FenceUpgrade and uy(FenceUpgrade)
    if not yJ_2 then
        return
    end
    local yJ_3 = FenceUpgrade:IsA("BasePart") and FenceUpgrade
    local yM = yJ_3
    local yQ = if yM then 1 else 0
    local yO = 1160 * yQ + 255 * (1 - yQ)
    local yP = 3111 * yQ + 917 * (1 - yQ)
    if not ((yO * 1641 + yP * 2510 + yO * yP) % 16777213 == 13320930) then
        yM = FenceUpgrade:FindFirstChildWhichIsA("BasePart", true)
    end
    local yJ_4 = yM
    if yJ_4 then
        tM(yJ_4.Position)
        task.wait(0.2)
    end
    tO(yJ_2)
end
local function fn677()
    local Cf = um("TeleportPart")
    local Cg = Cf and Cf:IsA("BasePart")
    if Cg then
        tM(Cf.Position)
    end
end
local function fn681(iT)
    local B5 = iT and true or false
    State.AutoLeave = B5
    if State.AutoLeave then
        uo("leave", 5, function()
            if State.AutoLeave then
                tW()
            end
        end)
    else
        uP("leave")
    end
end
local function fn691(hz)
    local Bj = hz and true or false
    State.AutoEquipBest = Bj
    if State.AutoEquipBest then
        uo("equipBest", 2, function()
            if State.AutoEquipBest then
                tH()
            end
        end)
    else
        uP("equipBest")
    end
end
local function fn713()
    local Character = LocalPlayer.Character
    local v1 = Character and Character:FindFirstChild("HumanoidRootPart")
    return v1
end
local function fn774()
    return not tA.Unloaded
end
local function fn805()
    return tw.CoreGui
end
local function fn811()
    local xp = um("PlacementArea")
    local xq = xp and xp:IsA("BasePart")
    if xq then
        return xp.Position + Vector3.new(0, 1, 0)
    end
    local xp_1 = uF()
    return xp_1 and xp_1.Position
end
local function fn815(U)
    return type(U) == "function"
end
local function fn816()
    local wg_1
    local wf_1
    wf_1, wg_1 = pcall(function()
        return Remotes.GetAssignedPlot:InvokeServer()
    end)
    local wh = wf_1 and type(wg_1) == "string"
    if wh and wg_1 ~= "" then
        return wg_1
    end
    return nil
end
local function fn824()
    local Cy = um("PlacementArea")
    local Cz = Cy and Cy:IsA("BasePart")
    if Cz then
        tM(Cy.Position)
    end
end
local function fn837(k4)
    local DU = (tonumber(k4))
    local DY = if DU then 1 else 0
    local DW = 2147 * DY + 2161 * (1 - DY)
    local DX = 3569 * DY + 2734 * (1 - DY)
    if not ((DW * 263 + DX * 867 + DW * DX) % 16777213 == 11321627) then
        DU = 60
    end
    State.FlySpeed = DU
end
local function fn852(h7)
    local BD = h7 and true or false
    State.AutoTrain = BD
    if State.AutoTrain then
        uo("train", 0.5, function()
            if State.AutoTrain then
                uw()
            end
        end)
    else
        uP("train")
    end
end
local function fn874(ha)
    local A_ = tT(ha)
    local A0 = {}
    for k in pairs(A_) do
        local A__1 = tN[k]
        if A__1 then
            A0[A__1] = true
        end
    end
    State.SelectedZones = A0
end
local function fn876(g3)
    local AV = g3 and true
    local AZ = if AV then 1 else 0
    local AX = 525 * AZ + 3631 * (1 - AZ)
    local AY = 2739 * AZ + 1971 * (1 - AZ)
    if not ((AX * 1137 + AY * 3390 + AX * AY) % 16777213 == 11320110) then
        AV = false
    end
    State.AutoHarvest = AV
    if State.AutoHarvest then
        uo("harvest", 0.75, function()
            if State.AutoHarvest then
                tG()
            end
        end)
    else
        uP("harvest")
    end
end
local function fn934(c9)
    local ZoneEggs = tR:FindFirstChild("ZoneEggs")
    if ZoneEggs then
        for i, child in ipairs(ZoneEggs:GetChildren()) do
            local xS_1 = child:IsA("Model") and child:GetAttribute("Zone") == c9 and not string.find(child.Name, "Dirt", 1, true)
            if xS_1 then
                local xS_2 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart", true)
                if xS_2 then
                    return xS_2.Position + Vector3.new(0, 5, 0)
                end
            end
        end
    end
    local xS_3 = AnimalCatalog.Zones[c9]
    if not xS_3 then
        return nil
    end
    local xT_2 = tR.Map.Zones:FindFirstChild(xS_3.MapName)
    if not xT_2 then
        return nil
    end
    local BasePart = xT_2:FindFirstChildWhichIsA("BasePart", true)
    local xT_3 = BasePart and BasePart.Position + Vector3.new(0, 5, 0)
    return xT_3
end
local function fn968(aH)
    local vY = if not uC(State.SelectedZones) then 1 else 0
    if vY == 1 then
        return true
    end
    return State.SelectedZones[tostring(aH)] == true
end
local function fn974(bh)
    local wo = tC()
    local wp = wo and wo:FindFirstChild(bh)
    return wp
end
local function fn981(lq, lr, ls)
    return string.format('<font color="#%s">%s:</font> %s', ls:ToHex(), lq, lr)
end
local function fn1023()
    local x6 = if t4() then 1 else 0
    if x6 == 1 then
        tB()
        return true
    end
    local x0 = t8()
    local x1 = uD()
    if #x1 == 0 then
        return false
    end
    local x2 = x1[1]
    tM(x2.Part.Position)
    task.wait(0.25)
    tO(x2.Prompt)
    local x1_1 = os.clock() + 3
    while true do
        local x2_1 = ub() and os.clock() < x1_1
        if not x2_1 then
            if t4() then
                tB()
                return true
            end
            return t8() > x0
        end
        if t4() then
            if t4() then
                tB()
                return true
            end
            return t8() > x0
        end
        if t8() > x0 then
            break
        end
        task.wait(0.1)
    end
    return true
end
local function fn1029()
    local Character = LocalPlayer.Character
    local v7 = Character and Character:FindFirstChildOfClass("Humanoid")
    return v7
end
local function fn1090()
    gethui = t_
end
local function fn1113(R)
    local vF = typeof(cloneref) == "function" and typeof(R) == "Instance"
    if vF then
        return cloneref(R)
    end
    return R
end
local function fn1134()
    local function wQ(bC)
        if not bC then
            return nil
        end
        for i, child in ipairs(bC:GetChildren()) do
            local wI = child:IsA("Tool") and child:GetAttribute("AnimalItemKind") == "Eggs"
            if wI then
                return child
            end
        end
        return nil
    end
    local wR = wQ(LocalPlayer:FindFirstChild("Backpack")) or wQ(LocalPlayer.Character)
    return wR
end
tw = nil
tx = nil
ty = nil
AnimalCatalog = nil
tA = nil
tB = nil
tC = nil
tD = nil
client = nil
tF = nil
tG = nil
tH = nil
tI = nil
Options = nil
Remotes = nil
tL = nil
tM = nil
tN = nil
tO = nil
Toggles = nil
tQ = nil
tR = nil
tS = nil
tT = nil
tW = nil
t_ = nil
t2 = nil
t4 = nil
t5 = nil
IndexRewards = nil
t8 = nil
Library = nil
ua = nil
ub = nil
uc = nil
ue = nil
uf = nil
ug = nil
ui = nil
local tU, tV, SaveManager, tY, tZ, t0, t1, ThemeManager, t6, ud, RewardProgress
uj = nil
uk = nil
ul = nil
um = nil
TrainingProgress = nil
uo = nil
up = nil
us = nil
PlotProgress = nil
uv = nil
uw = nil
ux = nil
uy = nil
uz = nil
uC = nil
uD = nil
uF = nil
uG = nil
uI = nil
LocalPlayer = nil
uM = nil
uN = nil
State = nil
uP = nil
local uq, ur, uu, uA, AnimalEconomy, uE, AuraSettings, uK, MotorcycleSettings
if not game:IsLoaded() then
    game.Loaded:Wait()
end
tw, LocalPlayer, uq, uk, ud, t6, t_ = nil, nil, nil, nil, nil, nil, nil
tw = {}
tw.Players = game:GetService("Players")
tw.ReplicatedStorage = game:GetService("ReplicatedStorage")
tw.RunService = game:GetService("RunService")
tw.UserInputService = game:GetService("UserInputService")
tw.VirtualUser = game:GetService("VirtualUser")
tw.HttpService = game:GetService("HttpService")
tw.TeleportService = game:GetService("TeleportService")
tw.Workspace = game:GetService("Workspace")
tw.Lighting = game:GetService("Lighting")
tw.Stats = game:GetService("Stats")
tw.CoreGui = game:GetService("CoreGui")
LocalPlayer = tw.Players.LocalPlayer
local uR = "OuroborosMotorcycleForAnimals"
local uS = "v0.5"
uq = "Motorcycle for Animals"
uk = "https://discord.gg/synapsex"
ud = "https://rscripts.net/@Ouroboros"
t6 = "https://ouroboros-hub-rbx.web.app/"
t_ = fn805
if getgenv then
    getgenv().gethui = t_
end
tA, State, tR, Remotes, client, AnimalCatalog, MotorcycleSettings, AuraSettings, AnimalEconomy, PlotProgress, TrainingProgress, RewardProgress, IndexRewards, t1, tV, tN, up, ub = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fn1090)
local function uQ(o)
    local vy
    local vw
    local vx
    vw = nil
    vx = nil
    vy = nil
    local vz = o ~= ""
    local vA = type(o) == "string" and vz
    assert(vA, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    vy = getgenv()
    assert(type(vy) == "table", "getgenv did not return a table")
    local vz_1 = vy[o]
    if vz_1 ~= nil then
        local vA_1 = type(vz_1) == "table" and type(vz_1.Unload) == "function"
        assert(vA_1, "Namespace is occupied")
        vz_1.Unload()
        assert(vy[o] == nil, "Previous instance did not release its namespace")
    end
    vw = {}
    vx = { State = {}, Unloaded = false }
    vx.Track = function(v)
        assert(type(v) == "function", "Cleanup must be callable")
        if vx.Unloaded then
            v()
        else
            table.insert(vw, v)
        end
        return v
    end
    vx.Unload = function()
        local vm_1
        local vl_1
        if vx.Unloaded then
            return
        end
        vx.Unloaded = true
        local vj = {}
        local vq = #vw
        local vp = -1
        while false and vq <= 1 or true and vq >= 1 do
            local vr = vq
            local vk_1 = table.remove(vw, vr)
            vl_1, vm_1 = pcall(vk_1)
            if not vl_1 then
                table.insert(vj, tostring(vm_1))
            end
            vq += vp
        end
        table.clear(vx.State)
        if #vj > 0 then
            error("Cleanup incomplete: " .. table.concat(vj, "; "), 0)
        end
        if vy[o] == vx then
            vy[o] = nil
        end
    end
    vy[o] = vx
    return vx
end
local function uW(I, J)
    local vD = type(I) == "table" and type(I.Track) == "function"
    assert(vD, "FeatureAPI required")
    local vD_1 = type(J) == "table" and type(J.OnUnload) == "function"
    assert(vD_1, "UI library required")
    assert(type(J.Unload) == "function", "UI unload required")
    I.Track(function()
        if not J.Unloaded then
            J:Unload()
        end
    end)
    J:OnUnload(function()
        I.Unload()
    end)
end
tA = uQ(uR)
State = tA.State
up = fn815
ub = fn774
local uT = fn1113(tw.ReplicatedStorage)
local uT_2
tR = fn1113(tw.Workspace)
Remotes = require(uT.Remotes)
client = require(uT.Shared.Data).client
AnimalCatalog = require(uT["Data Modules"].AnimalCatalog)
MotorcycleSettings = require(uT["Data Modules"].MotorcycleSettings)
AuraSettings = require(uT["Data Modules"].AuraSettings)
AnimalEconomy = require(uT.Shared.AnimalEconomy)
PlotProgress = require(uT.Shared.PlotProgress)
TrainingProgress = require(uT.Shared.TrainingProgress)
RewardProgress = require(uT.Shared.RewardProgress)
IndexRewards = require(uT.Shared.IndexRewards)
State.AutoHarvest = false
State.SelectedZones = {}
State.HarvestRarities = {}
State.AutoPlace = false
State.AutoHatch = false
State.AutoEquipBest = false
State.AutoPlotExpand = false
State.AutoTreadmillUpgrade = false
State.AutoBuyMotorcycles = false
State.AutoBuyAuras = false
State.AutoTrain = false
State.AutoClickBonus = false
State.AutoSell = false
State.AutoDaily = false
State.AutoPlaytime = false
State.AutoLeave = false
State.AutoGroup = false
State.AutoIndex = false
State.InstantPrompt = false
State.WalkSpeedEnabled = false
State.WalkSpeedValue = 32
State.InfJump = false
State.NoClip = false
State.Fly = false
State.FlySpeed = 60
t1 = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Godly" }
tV = {}
tN = {}
local uX = {}
for k, v in pairs(AnimalCatalog.Zones) do
    if v.Enabled then
        uQ = table.insert
        local uR_1 = v.Order or 0
        local uT_1 = v.Name or k
        uQ(uX, { Id = k, Order = uR_1, Name = uT_1 })
    end
end
local uU = 1
repeat
    uQ = {
        "zlijwd",
        "dzhxomavvpe",
        "dmvgvdodbec",
        "mbhkkkwkd",
        "dyqrmpywc",
        "flkwtletiv",
        "nkde",
        "dxnuvet",
        "cipgdccyp",
        "kqyzofz",
        "jezkiyqenr",
        "skwqruuay"
    }
    local GG = uU
    local uR_2 = uQ[GG % 12 + 1]
    if uR_2:len() >= uR_2:reverse():rep(GG % 3 + 2):len() then
        table.sort(uX, fn341)
    else
        table.sort(uX, fn341)
    end
    uU = (uU + 0) % 4
until (uU * 3 + 0) % 4 == 3
for i, v in ipairs(uX) do
    uQ = string.format("%d. %s", v.Order, v.Name)
    table.insert(tV, uQ)
    tN[uQ] = v.Id
end
uc, t5, tY, ua, tL, uX, Library, ThemeManager, SaveManager, Toggles, Options, uT_2, ty, uK, uE, uA, uu, tT, uC, ui, tQ, uF, uf, tM, uj, tC, um, tO, uy, tF, t8, uz, uM, t4, tB, tU, ux, t2, uD, tS, tG, tD, tH, tI, uN, us, uv, uw, ug, uG, ue, tW, tx, ul, uP, uo, tZ, ur, t0, uI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
uc = {}
t5 = setmetatable({}, { __mode = "k" })
tY = setmetatable({}, { __mode = "k" })
tT = fn571
uC = fn514
ui = fn968
tQ = fn480
uF = fn713
uf = fn1029
tM = function(aY)
    local v9
    v9 = nil
    v9 = uF()
    local wa = not v9
    local we = if wa then 1 else 0
    local wc = 2536 * we + 1761 * (1 - we)
    local wd = 2184 * we + 1956 * (1 - we)
    if not ((wc * 51 + wd * 1388 + wc * wd) % 16777213 == 8699352) then
        wa = typeof(aY) ~= "Vector3"
    end
    if wa then
        return false
    end
    local wa_1 = pcall(function()
        v9.CFrame = CFrame.new(aY + Vector3.new(0, 4, 0))
    end)
    return wa_1
end
uj = fn816
tC = fn235
um = fn974
tO = function(bm)
    local wu = not bm or not bm:IsA("ProximityPrompt") or not bm.Enabled
    if wu then
        return false
    end
    if State.InstantPrompt then
        pcall(function()
            bm.HoldDuration = 0
        end)
    end
    if up(fireproximityprompt) then
        return pcall(fireproximityprompt, bm)
    end
    return false
end
if ((ux or not tZ) and (tZ and not tZ) or false and not tZ and (not uu or uT_2) or ((not tZ or uT_2) and (ux and not uu) or (ux and uu or tZ and not tZ))) and not ((ux or not tZ) and (tZ and not tZ) or false and not tZ and (not uu or uT_2) or ((not tZ or uT_2) and (ux and not uu) or (ux and uu or tZ and not tZ))) then
    tF = fn528
    t8 = fn1134
    uy = function()
        local bJ
        bJ = 0
        local function bK(bL)
            if not bL then
                return
            end
            for i, child in ipairs(bL:GetChildren()) do
                local wT = child:IsA("Tool") and child:GetAttribute("AnimalItemKind") == "Eggs"
                if wT then
                    bJ += 1
                end
            end
        end
        bK(LocalPlayer:FindFirstChild("Backpack"))
        bK(LocalPlayer.Character)
        return bJ
    end
else
    uy = fn528
    tF = fn1134
    t8 = function()
        local bJ
        bJ = 0
        local function bK(bL)
            if not bL then
                return
            end
            for i, child in ipairs(bL:GetChildren()) do
                local wT = child:IsA("Tool") and child:GetAttribute("AnimalItemKind") == "Eggs"
                if wT then
                    bJ += 1
                end
            end
        end
        bK(LocalPlayer:FindFirstChild("Backpack"))
        bK(LocalPlayer.Character)
        return bJ
    end
end
uz = fn68
uM = function(b1)
    local xe
    xe = nil
    if not b1 then
        return false
    end
    xe = uf()
    if not xe then
        return false
    end
    return pcall(function()
        xe:EquipTool(b1)
    end)
end
ua = Vector3.new(662, 64, -603)
t4 = fn507
tB = fn109
tU = fn811
ux = function()
    local attr, xt
    if t4() then
        tB()
    end
    local xu = tF()
    if not xu then
        return false
    end
    uM(xu)
    task.wait(0.15)
    attr = xu:GetAttribute("AnimalItemId")
    xt = tU()
    if not attr or not xt then
        return false
    end
    local xu_2 = um("PlacementArea")
    local xv_1 = xu_2 and xu_2:IsA("BasePart")
    if xv_1 then
        tM(xu_2.Position)
        task.wait(0.2)
        local xu_3 = tU() or xt
        xt = xu_3
    end
    pcall(function()
        Remotes.AnimalRequest:FireServer("PlaceEgg", attr, xt)
    end)
    return true
end
t2 = fn337
uD = fn202
tS = fn934
tG = fn1023
tD = function()
    local x7 = client:get("AnimalState")
    local x8 = not x7 or type(x7.Eggs) ~= "table"
    if x8 then
        return
    end
    local x8_1 = tR:GetServerTimeNow()
    for k, v in pairs(x7.Eggs) do
        local yg = k
        local x7_1 = v.Placed and typeof(v.ReadyAt) == "number" and v.ReadyAt <= x8_1
        if x7_1 then
            pcall(function()
                Remotes.AnimalRequest:FireServer("Hatch", yg)
            end)
            task.wait(0.2)
        end
    end
end
tH = function()
    local yj = client:get("AnimalState")
    local yk = not yj or type(yj.Pets) ~= "table"
    if yk then
        return
    end
    local yk_1 = PlotProgress.Capacity(client:get("PlotExpansionLevel"))
    local yl = {}
    for k, v in pairs(yj.Pets) do
        table.insert(yl, { Id = k, Income = AnimalEconomy.Income(v, 1), Equipped = v.Equipped == true })
    end
    table.sort(yl, function(dW, dX)
        return dW.Income > dX.Income
    end)
    local yj_1 = {}
    local ym = math.min(yk_1, #yl)
    local yw = 1
    while yw <= ym do
        local yx = yw
        yj_1[yl[yx].Id] = true
        yw += 1
    end
    for i, v in ipairs(yl) do
        local yE = v
        if yE.Equipped and not yj_1[yE.Id] then
            pcall(function()
                Remotes.AnimalRequest:FireServer("Unequip", yE.Id)
            end)
            task.wait(0.15)
        end
    end
    for i, v in ipairs(yl) do
        local yI = v
        if yj_1[yI.Id] and not yI.Equipped then
            pcall(function()
                Remotes.AnimalRequest:FireServer("Equip", yI.Id)
            end)
            task.wait(0.15)
        end
    end
end
tI = fn662
if (t0 and not t0 or not uX and ThemeManager or ThemeManager and not tQ and false or (not ThemeManager and not uX or false) and ((uX or not t0) and (uX or not t0))) and not (t0 and not t0 or not uX and ThemeManager or ThemeManager and not tQ and false or (not ThemeManager and not uX or false) and ((uX or not t0) and (uX or not t0))) then
    uv = fn16
    uN = function()
        local y9 = client:get("MotorcycleState")
        if type(y9) ~= "table" then
            return
        end
        local za = client:get("Cash") or 0
        local zb = za
        local zc = y9.Owned or {}
        local Def
        local za_4 = zc
        local y8 = MotorcycleSettings.DefaultMotorcycle
        local zc_4 = {}
        local zd = -1
        for k, v in pairs(MotorcycleSettings.Motorcycles) do
            table.insert(zc_4, { Id = k, Def = v })
        end
        table.sort(zc_4, function(eL, eM)
            local y1 = eL.Def.Order
            local y6 = if y1 then 1 else 0
            local y4 = 1006 * y6 + 1168 * (1 - y6)
            local y5 = 2372 * y6 + 3019 * (1 - y6)
            if not ((y4 * 3163 + y5 * 3356 + y4 * y5) % 16777213 == 13528642) then
                y1 = 0
            end
            return y1 < (eM.Def.Order or 0)
        end)
        for i, v in ipairs(zc_4) do
            local Id
            Id, Def = v.Id, v.Def
            if Def.PurchaseType == "Cash" then
                local ze_7 = not za_4[Id] and typeof(Def.Price) == "number" and Def.Price > 0 and zb >= Def.Price
                if ze_7 then
                    pcall(function()
                        Remotes.MotorcycleRequest:FireServer("Buy", Id)
                    end)
                    task.wait(0.35)
                    local ze_8 = client:get("MotorcycleState") or y9
                    y9 = ze_8
                    za_4 = y9.Owned or za_4
                    local ze_10 = client:get("Cash") or zb
                    zb = ze_10
                end
            end
            if za_4[Id] and (Def.Speed or 0) > zd then
                zd = Def.Speed or 0
                y8 = Id
            end
        end
        if y8 and y9.Equipped ~= y8 and za_4[y8] then
            pcall(function()
                Remotes.MotorcycleRequest:FireServer("Equip", y8)
            end)
        end
    end
    us = function()
        local zy = client:get("AuraState")
        if type(zy) ~= "table" then
            return
        end
        local zz = client:get("Cash") or 0
        local zA = zz
        local zB = zy.Owned or {}
        local Def
        local zz_4 = -1
        local zx
        local zC = zB
        local zB_4 = {}
        for k, v in pairs(AuraSettings.Auras) do
            table.insert(zB_4, { Id = k, Def = v })
        end
        table.sort(zB_4, function(e9, fa)
            return (e9.Def.Order or 0) < (fa.Def.Order or 0)
        end)
        for i, v in ipairs(zB_4) do
            local Id
            Id, Def = v.Id, v.Def
            local zD = not zC[Id] and typeof(Def.Price) == "number" and Def.Price > 0 and zA >= Def.Price
            if zD then
                pcall(function()
                    Remotes.AuraRequest:FireServer("Buy", Id)
                end)
                task.wait(0.35)
                local zD_6 = client:get("AuraState") or zy
                zy = zD_6
                zC = zy.Owned or zC
                local zD_8 = client:get("Cash") or zA
                zA = zD_8
            end
            if zC[Id] and (Def.Order or 0) > zz_4 then
                zz_4 = Def.Order or 0
                zx = Id
            end
        end
        if zx and zy.Equipped ~= zx then
            pcall(function()
                Remotes.AuraRequest:FireServer("Equip", zx)
            end)
        end
    end
else
    uN = fn16
    us = function()
        local y9 = client:get("MotorcycleState")
        if type(y9) ~= "table" then
            return
        end
        local za = client:get("Cash") or 0
        local zb = za
        local zc = y9.Owned or {}
        local Def
        local za_2 = zc
        local y8 = MotorcycleSettings.DefaultMotorcycle
        local zc_1 = {}
        local zd = -1
        for k, v in pairs(MotorcycleSettings.Motorcycles) do
            table.insert(zc_1, { Id = k, Def = v })
        end
        table.sort(zc_1, function(eL, eM)
            local y1 = eL.Def.Order
            local y6 = if y1 then 1 else 0
            local y4 = 1006 * y6 + 1168 * (1 - y6)
            local y5 = 2372 * y6 + 3019 * (1 - y6)
            if not ((y4 * 3163 + y5 * 3356 + y4 * y5) % 16777213 == 13528642) then
                y1 = 0
            end
            return y1 < (eM.Def.Order or 0)
        end)
        for i, v in ipairs(zc_1) do
            local Id
            Id, Def = v.Id, v.Def
            if Def.PurchaseType == "Cash" then
                local ze_1 = not za_2[Id] and typeof(Def.Price) == "number" and Def.Price > 0 and zb >= Def.Price
                if ze_1 then
                    pcall(function()
                        Remotes.MotorcycleRequest:FireServer("Buy", Id)
                    end)
                    task.wait(0.35)
                    local ze_2 = client:get("MotorcycleState") or y9
                    y9 = ze_2
                    za_2 = y9.Owned or za_2
                    local ze_4 = client:get("Cash") or zb
                    zb = ze_4
                end
            end
            if za_2[Id] and (Def.Speed or 0) > zd then
                zd = Def.Speed or 0
                y8 = Id
            end
        end
        if y8 and y9.Equipped ~= y8 and za_2[y8] then
            pcall(function()
                Remotes.MotorcycleRequest:FireServer("Equip", y8)
            end)
        end
    end
    uv = function()
        local zy = client:get("AuraState")
        if type(zy) ~= "table" then
            return
        end
        local zz = client:get("Cash") or 0
        local zA = zz
        local zB = zy.Owned or {}
        local Def
        local zz_2 = -1
        local zx
        local zC = zB
        local zB_1 = {}
        for k, v in pairs(AuraSettings.Auras) do
            table.insert(zB_1, { Id = k, Def = v })
        end
        table.sort(zB_1, function(e9, fa)
            return (e9.Def.Order or 0) < (fa.Def.Order or 0)
        end)
        for i, v in ipairs(zB_1) do
            local Id
            Id, Def = v.Id, v.Def
            local zD = not zC[Id] and typeof(Def.Price) == "number" and Def.Price > 0 and zA >= Def.Price
            if zD then
                pcall(function()
                    Remotes.AuraRequest:FireServer("Buy", Id)
                end)
                task.wait(0.35)
                local zD_1 = client:get("AuraState") or zy
                zy = zD_1
                zC = zy.Owned or zC
                local zD_3 = client:get("Cash") or zA
                zA = zD_3
            end
            if zC[Id] and (Def.Order or 0) > zz_2 then
                zz_2 = Def.Order or 0
                zx = Id
            end
        end
        if zx and zy.Equipped ~= zx then
            pcall(function()
                Remotes.AuraRequest:FireServer("Equip", zx)
            end)
        end
    end
end
uw = function()
    local zZ = um("Treadmill")
    local z_ = zZ and zZ:IsA("BasePart")
    if z_ then
        tM(zZ.Position)
    end
    local zZ_1 = State.AutoClickBonus and LocalPlayer:GetAttribute("Training") == true
    if zZ_1 then
        local attr = LocalPlayer:GetAttribute("TrainingClickToken")
        local zZ_2 = (LocalPlayer:GetAttribute("TrainingClickOfferEndsAt"))
        local z3 = if zZ_2 then 1 else 0
        local z1 = 20 * z3 + 3371 * (1 - z3)
        local z2 = 3125 * z3 + 173 * (1 - z3)
        if not ((z1 * 1039 + z2 * 3622 + z1 * z2) % 16777213 == 11402030) then
            zZ_2 = 0
        end
        local z__1 = zZ_2
        local zZ_3 = typeof(attr) == "string" and tR:GetServerTimeNow() < z__1
        if zZ_3 then
            pcall(function()
                Remotes.TrainingClick:FireServer(attr)
            end)
        end
    end
end
ug = fn186
uG = function()
    local Ag = client:get("EventRewards")
    local Ag_1
    if type(Ag) ~= "table" then
        return
    end
    local Ah = math.floor(tR:GetServerTimeNow())
    local SyncedAt = Ag.SyncedAt
    local Ai_1
    if typeof(SyncedAt) ~= "number" then
        return
    end
    local Aj = RewardProgress.Advance(Ag, SyncedAt, Ah)
    Ai_1, Ag_1 = RewardProgress.GetDailyIndex(Aj, Ah)
    if Ag_1 then
        local Ag_2 = RewardProgress.GetDefinitions("Daily")
        local Af = Ag_2 and Ag_2[Ai_1]
        if Af and Af.Id then
            pcall(function()
                Remotes.ClaimEventReward:FireServer("Daily", Af.Id)
            end)
        end
    end
end
ue = function()
    local Ar = client:get("EventRewards")
    if type(Ar) ~= "table" then
        return
    end
    local As = math.floor(tR:GetServerTimeNow())
    local SyncedAt = Ar.SyncedAt
    if typeof(SyncedAt) ~= "number" then
        return
    end
    local Au = RewardProgress.Advance(Ar, SyncedAt, As)
    local Ar_1 = RewardProgress.GetDefinitions("Playtime")
    for i, v in ipairs(Ar_1) do
        local AE = v
        local Ar_2 = Au.PlayClaims[AE.Id] ~= true
        if Ar_2 then
            Ar_2 = Au.PlaySeconds >= (AE.Seconds or 0)
        end
        if Ar_2 then
            pcall(function()
                Remotes.ClaimEventReward:FireServer("Playtime", AE.Id)
            end)
            task.wait(0.25)
        end
    end
end
tW = fn208
tx = fn588
ul = fn421
uP = fn613
uo = function(gP, gQ, gR)
    uP(gP)
    uc[gP] = true
    task.spawn(function()
        local AO_1
        while true do
            local AN = ub() and uc[gP]
            local AN_1
            if AN then
                AN_1, AO_1 = pcall(gR)
                if not AN_1 then
                    warn("[Ouroboros] " .. gP .. ": " .. tostring(AO_1))
                end
                task.wait(gQ)
                local AN_2 = not ub() or not uc[gP]
                if AN_2 then
                    break
                end
                continue
            end
            break
        end
    end)
end
tA.SetAutoHarvest = fn876
tA.SetSelectedZones = fn874
tA.SetHarvestRarities = fn310
tA.SetAutoPlace = fn500
tA.SetAutoHatch = fn291
tA.SetAutoEquipBest = fn691
tA.SetAutoPlotExpand = fn590
tA.SetAutoTreadmillUpgrade = fn95
tA.SetAutoBuyMotorcycles = fn157
tA.SetAutoBuyAuras = fn183
tA.SetAutoTrain = fn852
tA.SetAutoClickBonus = function(ig)
    local BN = ig and true or false
    State.AutoClickBonus = BN
    if State.AutoClickBonus and not State.AutoTrain then
        uo("clickBonus", 0.35, function()
            if not State.AutoClickBonus then
                return
            end
            if LocalPlayer:GetAttribute("Training") ~= true then
                return
            end
            local attr = LocalPlayer:GetAttribute("TrainingClickToken")
            local BJ = LocalPlayer:GetAttribute("TrainingClickOfferEndsAt") or 0
            local BJ_1 = typeof(attr) == "string" and tR:GetServerTimeNow() < BJ
            if BJ_1 then
                pcall(function()
                    Remotes.TrainingClick:FireServer(attr)
                end)
            end
        end)
    elseif not State.AutoClickBonus then
        uP("clickBonus")
    end
end
tA.SetAutoSell = fn526
tA.SetAutoDaily = fn9
tA.SetAutoPlaytime = fn257
tA.SetAutoLeave = fn681
tA.SetAutoGroup = fn301
tA.SetAutoIndex = fn535
tA.TeleportMyPlot = fn677
tA.TeleportMainSpawn = fn154
tA.TeleportPlotTreadmill = fn350
tA.TeleportPlotPlacement = fn824
tA.TeleportSellShop = fn451
tA.TeleportAnimalZone = fn134
tZ = fn245
tA.SetInstantProximityPrompt = function(jM)
    local CS = jM and true or false
    State.InstantPrompt = CS
    for i, descendant in ipairs(tR:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            tZ(descendant)
        end
    end
    if State.InstantPrompt and not tY._conn then
        tY._conn = tR.DescendantAdded:Connect(function(jU)
            local CH = ub() and State.InstantPrompt and jU:IsA("ProximityPrompt")
            if CH then
                tZ(jU)
            end
        end)
        tA.Track(function()
            if tY._conn then
                tY._conn:Disconnect()
                tY._conn = nil
            end
            for k, v in pairs(t5) do
                local CO = k
                local CQ = v
                if CO and CO.Parent then
                    pcall(function()
                        CO.HoldDuration = CQ
                    end)
                end
            end
        end)
    end
end
tL = {}
tA.SetWalkSpeedEnabled = fn438
tA.SetWalkSpeedValue = fn647
tA.SetInfJump = fn104
tA.SetNoClip = fn602
tA.SetFly = fn322
tA.SetFlySpeed = fn837
tA.Track(fn76)
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
uW(tA, Library)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = uk, Copyable = true }, "|", uq, "|", uS },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
ty = {}
ty.Info = Window:AddTab("Info", "info")
ty.Main = Window:AddTab("Main", "gamepad-2")
ty.Player = Window:AddTab("Player", "person-standing")
ty.Teleports = Window:AddTab("Teleports", "map-pin")
ty.Settings = Window:AddTab("Settings", "settings")
uK = Color3.fromRGB(80, 220, 120)
uE = Color3.fromRGB(100, 180, 255)
uA = Color3.fromRGB(255, 180, 80)
ur = fn981
t0 = fn448
uI = fn645
local function uZ()
    local lE
    local lJ
    lE = "Unknown"
    pcall(function()
        local D9_1
        local D8_1
        if type(identifyexecutor) == "function" then
            D9_1, D8_1 = identifyexecutor()
            local Ea = D9_1 ~= ""
            local Eb = type(D9_1) == "string" and Ea
            if Eb then
                local Ea_1 = type(D8_1) == "string" and D8_1 ~= "" and D9_1 .. " " .. D8_1
                lE = Ea_1 or D9_1
            end
        end
    end)
    lJ = os.clock()
    local function lK()
        local Eg = math.floor(os.clock() - lJ)
        if Eg < 60 then
            return Eg .. "s"
        elseif Eg < 3600 then
            return string.format("%dm %ds", Eg // 60, Eg % 60)
        else
            return string.format("%dh %dm", Eg // 3600, Eg % 3600 // 60)
        end
    end
    local UserGroup = ty.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(ur("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, uK), true)
    UserGroup:AddLabel(ur("UserId", tostring(LocalPlayer.UserId), uE), true)
    UserGroup:AddLabel(ur("Executor", lE, uK), true)
    UserGroup:AddDivider()
    local Label5 = UserGroup:AddLabel(ur("Session", lK(), uA), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            t0(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            t0("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = ty.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = uk,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = ty.Info:AddRightGroupbox("Session", "signal")
    local Label4 = SessionGroup:AddLabel(ur("Game", uq, uK), true)
    local Label3 = SessionGroup:AddLabel(ur("Players", tostring(#tw.Players:GetPlayers()), uE), true)
    local Label2 = SessionGroup:AddLabel(ur("Job", string.sub(game.JobId, 1, 8) .. "...", uA), true)
    local Label = SessionGroup:AddLabel(ur("Ping", "0 ms", uK), true)
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            pcall(function()
                tw.TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            t0(game.JobId, "Copied Job ID")
        end
    })
    local SocialsGroup = ty.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord",
        Func = function()
            t0(uk, "Copied Discord")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts",
        Func = function()
            t0(ud, "Copied Rscripts")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website",
        Func = function()
            t0(t6, "Copied Website")
        end
    })
    task.spawn(function()
        local El = false
        repeat
            local Ei
            if ub() then
                Label5:SetText(ur("Session", lK(), uA))
                Label3:SetText(ur("Players", tostring(#tw.Players:GetPlayers()), uE))
                Ei = 0
                pcall(function()
                    Ei = math.floor(tw.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(ur("Ping", tostring(Ei) .. " ms", uK))
                Label4:SetText(ur("Game", uq, uK))
                Label2:SetText(ur("Job", string.sub(game.JobId, 1, 8) .. "...", uA))
                task.wait(1)
            else
                El = true
            end
        until El
    end)
end
local function uY()
    uI(ty.Main)
    local AutoHarvest_PlotGroup = ty.Main:AddLeftGroupbox("Auto Harvest & Plot", "egg")
    AutoHarvest_PlotGroup:AddToggle("AutoHarvestEggs", { Text = "Auto Harvest Eggs", Default = false })
    AutoHarvest_PlotGroup:AddDropdown("ZoneFilter", { Text = "Zones", Values = tV, Multi = true, AllowNull = true, Default = tV })
    AutoHarvest_PlotGroup:AddDropdown("HarvestRarityFilter", { Text = "Rarities", Values = t1, Multi = true, AllowNull = true, Default = t1 })
    AutoHarvest_PlotGroup:AddToggle("AutoPlaceStolenEggs", { Text = "Auto Place Stolen Eggs", Default = false })
    AutoHarvest_PlotGroup:AddToggle("AutoHatchReadyEggs", { Text = "Auto Hatch Ready Eggs", Default = false })
    AutoHarvest_PlotGroup:AddToggle("AutoEquipBestAnimals", { Text = "Auto Equip Best Animals", Default = false })
    local Upgrades_GearGroup = ty.Main:AddLeftGroupbox("Upgrades & Gear", "wrench")
    Upgrades_GearGroup:AddToggle("AutoUpgradePlotExpansion", { Text = "Auto Upgrade Plot Expansion", Default = false })
    Upgrades_GearGroup:AddToggle("AutoUpgradeTreadmillTier", { Text = "Auto Upgrade Treadmill Tier", Default = false })
    Upgrades_GearGroup:AddToggle("AutoBuyEquipMotorcycles", { Text = "Auto Buy & Equip Motorcycles", Default = false })
    Upgrades_GearGroup:AddToggle("AutoBuyEquipAuras", { Text = "Auto Buy & Equip Auras", Default = false })
    Upgrades_GearGroup:AddToggle("AutoTreadmillSpeedTraining", { Text = "Auto Treadmill Speed Training", Default = false })
    Upgrades_GearGroup:AddToggle("AutoClickMultiplierBonus", { Text = "Auto Click Multiplier Bonus", Default = false })
    local AutoSellGroup = ty.Main:AddRightGroupbox("Auto Sell", "circle-dollar-sign")
    AutoSellGroup:AddToggle("AutoSellHeldItem", { Text = "Auto Sell Held Item", Default = false })
    local AutoClaimGroup = ty.Main:AddRightGroupbox("Auto Claim", "gift")
    AutoClaimGroup:AddToggle("AutoClaimDailyRewards", { Text = "Auto Claim Daily Rewards", Default = false })
    AutoClaimGroup:AddToggle("AutoClaimPlaytimeRewards", { Text = "Auto Claim Playtime Rewards", Default = false })
    AutoClaimGroup:AddToggle("AutoClaimLeaveReward", { Text = "Auto Claim Leave Reward", Default = false })
    AutoClaimGroup:AddToggle("AutoClaimGroupReward", { Text = "Auto Claim Group Reward", Default = false })
    AutoClaimGroup:AddToggle("AutoClaimAnimalIndexRewards", { Text = "Auto Claim Animal Index Rewards", Default = false })
    local ProtectionGroup = ty.Main:AddRightGroupbox("Protection", "shield")
    ProtectionGroup:AddToggle("AntiAfkProtection", { Text = "Anti-AFK Protection", Default = true })
    Toggles.AutoHarvestEggs:OnChanged(function(mO)
        tA.SetAutoHarvest(mO)
    end)
    Options.ZoneFilter:OnChanged(function(mS)
        tA.SetSelectedZones(mS)
    end)
    Options.HarvestRarityFilter:OnChanged(function(mU)
        tA.SetHarvestRarities(mU)
    end)
    Toggles.AutoPlaceStolenEggs:OnChanged(function(mW)
        tA.SetAutoPlace(mW)
    end)
    Toggles.AutoHatchReadyEggs:OnChanged(function(mY)
        tA.SetAutoHatch(mY)
    end)
    Toggles.AutoEquipBestAnimals:OnChanged(function(m_)
        tA.SetAutoEquipBest(m_)
    end)
    Toggles.AutoUpgradePlotExpansion:OnChanged(function(m1)
        tA.SetAutoPlotExpand(m1)
    end)
    Toggles.AutoUpgradeTreadmillTier:OnChanged(function(m3)
        tA.SetAutoTreadmillUpgrade(m3)
    end)
    Toggles.AutoBuyEquipMotorcycles:OnChanged(function(m5)
        tA.SetAutoBuyMotorcycles(m5)
    end)
    Toggles.AutoBuyEquipAuras:OnChanged(function(m7)
        tA.SetAutoBuyAuras(m7)
    end)
    Toggles.AutoTreadmillSpeedTraining:OnChanged(function(m9)
        tA.SetAutoTrain(m9)
    end)
    Toggles.AutoClickMultiplierBonus:OnChanged(function(nb)
        tA.SetAutoClickBonus(nb)
    end)
    Toggles.AutoSellHeldItem:OnChanged(function(nd)
        tA.SetAutoSell(nd)
    end)
    Toggles.AutoClaimDailyRewards:OnChanged(function(nf)
        tA.SetAutoDaily(nf)
    end)
    Toggles.AutoClaimPlaytimeRewards:OnChanged(function(nh)
        tA.SetAutoPlaytime(nh)
    end)
    Toggles.AutoClaimLeaveReward:OnChanged(function(nj)
        tA.SetAutoLeave(nj)
    end)
    Toggles.AutoClaimGroupReward:OnChanged(function(nl)
        tA.SetAutoGroup(nl)
    end)
    Toggles.AutoClaimAnimalIndexRewards:OnChanged(function(nn)
        tA.SetAutoIndex(nn)
    end)
    Toggles.AntiAfkProtection:OnChanged(function(np)
        tA.SetAntiAfk(np)
        if Toggles.AntiAfk and Toggles.AntiAfk.Value ~= np then
            pcall(function()
                Toggles.AntiAfk:SetValue(np)
            end)
        end
    end)
end
uU = function()
    uI(ty.Teleports)
    local PlotGroup = ty.Teleports:AddLeftGroupbox("Plot", "home")
    PlotGroup:AddButton({
        Text = "Teleport to My Plot",
        Func = function()
            tA.TeleportMyPlot()
        end
    })
    PlotGroup:AddButton({
        Text = "Teleport to Main Spawn",
        Func = function()
            tA.TeleportMainSpawn()
        end
    })
    PlotGroup:AddButton({
        Text = "Teleport to Plot Treadmill",
        Func = function()
            tA.TeleportPlotTreadmill()
        end
    })
    PlotGroup:AddButton({
        Text = "Teleport to Plot Placement Area",
        Func = function()
            tA.TeleportPlotPlacement()
        end
    })
    PlotGroup:AddButton({
        Text = "Teleport to Sell Shop",
        Func = function()
            tA.TeleportSellShop()
        end
    })
    local AnimalZonesGroup = ty.Teleports:AddRightGroupbox("Animal Zones", "map")
    local Eq = {}
    for k, v in pairs(AnimalCatalog.Zones) do
        if v.Enabled then
            local Es = v.Order or 0
            local Et = v.Name or k
            table.insert(Eq, { Id = k, Order = Es, Name = Et })
        end
    end
    table.sort(Eq, function(nK, nL)
        return nK.Order < nL.Order
    end)
    for i, v in ipairs(Eq) do
        local Id
        Id = v.Id
        AnimalZonesGroup:AddButton({
            Text = string.format("Zone %d - %s", v.Order, v.Name),
            Func = function()
                tA.TeleportAnimalZone(Id)
            end
        })
    end
end
uu = {
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
    PausedConn = nil
}
local function u_()
    local function oe()
        local EH = not up(tw.VirtualUser.CaptureController) or not up(tw.VirtualUser.ClickButton2)
        if EH then
            return false
        end
        return pcall(function()
            tw.VirtualUser:CaptureController()
            tw.VirtualUser:ClickButton2(Vector2.new())
        end)
    end
    tA.SetAntiAfk = function(om)
        local ES = om and true or false
        uu.AntiAfk = ES
        if uu.AfkConn then
            uu.AfkConn:Disconnect()
            uu.AfkConn = nil
        end
        if uu.AfkTask then
            pcall(task.cancel, uu.AfkTask)
            uu.AfkTask = nil
        end
        if not uu.AntiAfk then
            return
        end
        uu.AfkConn = LocalPlayer.Idled:Connect(function()
            local EJ = ub() and uu.AntiAfk
            if EJ then
                oe()
            end
        end)
        uu.AfkTask = task.spawn(function()
            local EO = os.clock()
            while true do
                local EP = ub() and uu.AntiAfk
                if EP then
                    task.wait(1)
                    local EP_1 = not ub() or not uu.AntiAfk
                    if EP_1 then
                        break
                    end
                    if os.clock() - EO >= 60 then
                        EO = os.clock()
                        oe()
                    end
                    continue
                end
                break
            end
        end)
    end
    tA.SetNoGameplayPaused = function(oH)
        local E6
        local E8 = oH and true or false
        uu.NoGameplayPaused = E8
        if uu.PausedConn then
            uu.PausedConn:Disconnect()
            uu.PausedConn = nil
        end
        if not uu.NoGameplayPaused then
            return
        end
        E6 = function()
            pcall(function()
                local RobloxGui = tw.CoreGui:FindFirstChild("RobloxGui")
                local EY = RobloxGui and RobloxGui:FindFirstChild("Notifications")
                if EY then
                    for i, descendant in ipairs(EY:GetDescendants()) do
                        local EX_2 = descendant:IsA("TextLabel") and string.find(string.lower(descendant.Text), "gameplay paused")
                        if EX_2 then
                            local Frame = descendant:FindFirstAncestorOfClass("Frame")
                            if Frame then
                                Frame.Visible = false
                            end
                        end
                    end
                end
            end)
        end
        E6()
        uu.PausedConn = tw.CoreGui.DescendantAdded:Connect(function()
            if uu.NoGameplayPaused then
                E6()
            end
        end)
    end
    tA.SetAutoReconnect = function(oW)
        local Fg = oW and true or false
        uu.AutoReconnect = Fg
        for i, v in ipairs(uu.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(uu.ReconnectConns)
        if not uu.AutoReconnect then
            return
        end
        table.insert(uu.ReconnectConns, tw.TeleportService.TeleportInitFailed:Connect(function()
            local Fa = not ub() or not uu.AutoReconnect
            if Fa then
                return
            end
            task.wait(1)
            local Fa_1 = ub() and uu.AutoReconnect
            if Fa_1 then
                pcall(function()
                    tw.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        end))
    end
    tA.SetDisable3D = function(pa)
        local Fs = pa and true or false
        uu.Disable3D = Fs
        pcall(function()
            tw.RunService:Set3dRenderingEnabled(not uu.Disable3D)
        end)
    end
    tA.SetFpsBoost = function(pf)
        local FO
        local FQ = pf and true or false
        uu.FpsBoost = FQ
        if uu.FpsConn then
            uu.FpsConn:Disconnect()
            uu.FpsConn = nil
        end
        local function FP_1()
            for k, v in pairs(uu.FpsSnapshots) do
                local Fz = k
                if Fz and Fz.Parent then
                    for k, v in pairs(v) do
                        local FF = k
                        local FH = v
                        pcall(function()
                            Fz[FF] = FH
                        end)
                    end
                end
            end
            table.clear(uu.FpsSnapshots)
        end
        if not uu.FpsBoost then
            FP_1()
            return
        end
        FO = function(ps)
            if uu.FpsSnapshots[ps] then
                return
            end
            local FI = ps:IsA("ParticleEmitter") or ps:IsA("Trail") or ps:IsA("Beam") or ps:IsA("Fire") or ps:IsA("Smoke") or ps:IsA("Sparkles")
            if FI then
                uu.FpsSnapshots[ps] = { Enabled = ps.Enabled }
                ps.Enabled = false
            end
        end
        for i, descendant in ipairs(tR:GetDescendants()) do
            FO(descendant)
        end
        if uu.FpsSnapshots[tw.Lighting] == nil then
            uu.FpsSnapshots[tw.Lighting] = { GlobalShadows = tw.Lighting.GlobalShadows }
            tw.Lighting.GlobalShadows = false
        end
        uu.FpsConn = tR.DescendantAdded:Connect(function(pA)
            if uu.FpsBoost then
                FO(pA)
            end
        end)
    end
    tA.Track(function()
        tA.SetAntiAfk(false)
        tA.SetNoGameplayPaused(false)
        tA.SetAutoReconnect(false)
        tA.SetDisable3D(false)
        tA.SetFpsBoost(false)
    end)
end
local function u0()
    uI(ty.Settings)
    local MenuGroup = ty.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local F__1 = ty.Settings:AddLeftGroupbox("Script", "scroll-text")
    F__1:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(pN)
        tA.SetAntiAfk(pN)
        if Toggles.AntiAfkProtection and Toggles.AntiAfkProtection.Value ~= pN then
            pcall(function()
                Toggles.AntiAfkProtection:SetValue(pN)
            end)
        end
    end)
    Toggles.NoGameplayPaused:OnChanged(function(pU)
        tA.SetNoGameplayPaused(pU)
    end)
    Toggles.AutoReconnect:OnChanged(function(pW)
        tA.SetAutoReconnect(pW)
    end)
    Toggles.Disable3DRendering:OnChanged(function(pY)
        tA.SetDisable3D(pY)
    end)
    Toggles.FPSBoost:OnChanged(function(p_)
        tA.SetFpsBoost(p_)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(ty.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
    SaveManager:SetFolder("OuroborosHub/MotorcycleForAnimals")
    SaveManager:BuildConfigSection(ty.Settings)
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
    tA.SetAntiAfk(Toggles.AntiAfk.Value)
    tA.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
    tA.SetAutoReconnect(Toggles.AutoReconnect.Value)
    tA.SetDisable3D(Toggles.Disable3DRendering.Value)
    tA.SetFpsBoost(Toggles.FPSBoost.Value)
    tA.SetSelectedZones(Options.ZoneFilter.Value)
    tA.SetHarvestRarities(Options.HarvestRarityFilter.Value)
    tA.SetAutoHarvest(Toggles.AutoHarvestEggs.Value)
    tA.SetAutoPlace(Toggles.AutoPlaceStolenEggs.Value)
    tA.SetAutoHatch(Toggles.AutoHatchReadyEggs.Value)
    tA.SetAutoEquipBest(Toggles.AutoEquipBestAnimals.Value)
    tA.SetAutoPlotExpand(Toggles.AutoUpgradePlotExpansion.Value)
    tA.SetAutoTreadmillUpgrade(Toggles.AutoUpgradeTreadmillTier.Value)
    tA.SetAutoBuyMotorcycles(Toggles.AutoBuyEquipMotorcycles.Value)
    tA.SetAutoBuyAuras(Toggles.AutoBuyEquipAuras.Value)
    tA.SetAutoTrain(Toggles.AutoTreadmillSpeedTraining.Value)
    tA.SetAutoClickBonus(Toggles.AutoClickMultiplierBonus.Value)
    tA.SetAutoSell(Toggles.AutoSellHeldItem.Value)
    tA.SetAutoDaily(Toggles.AutoClaimDailyRewards.Value)
    tA.SetAutoPlaytime(Toggles.AutoClaimPlaytimeRewards.Value)
    tA.SetAutoLeave(Toggles.AutoClaimLeaveReward.Value)
    tA.SetAutoGroup(Toggles.AutoClaimGroupReward.Value)
    tA.SetAutoIndex(Toggles.AutoClaimAnimalIndexRewards.Value)
    tA.SetWalkSpeedEnabled(Toggles.WalkSpeedEnabled.Value)
    tA.SetWalkSpeedValue(Options.WalkSpeed.Value)
    tA.SetInfJump(Toggles.InfJump.Value)
    tA.SetNoClip(Toggles.NoClip.Value)
    tA.SetInstantProximityPrompt(Toggles.InstantProximityPrompt.Value)
    tA.SetFly(Toggles.Fly.Value)
    tA.SetFlySpeed(Options.FlySpeed.Value)
    if Toggles.AntiAfkProtection then
        local F__2 = tA.SetAntiAfk
        local F0 = Toggles.AntiAfk.Value or Toggles.AntiAfkProtection.Value
        F__2(F0)
    end
    if Toggles.HideUIOnStart.Value then
        pcall(function()
            Library:Toggle(false)
        end)
    end
end
u_()
uZ()
uY()
uU()
fn114()
u0()
