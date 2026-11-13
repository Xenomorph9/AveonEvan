local UpgradeLabels
local sg
local rV
local rC
local rY
local sj
local r0
local rI
local CarryMax
local r3
local rL
local r6
local Toggles
local r9
local rR
local rv
local sc
local rU
local sf
local rB
local rX
local ry
local rE
local r_
local sl
local rH
local so
local r2
local Options
local sr
local r5
local rN
local r8
local si
local ru
local rQ
local rx
local rA
local sh
local rD
local sk
local r1
local LocalPlayer
local rG
local Library
local sq
local rJ
local r7
local rM
local st
local sa
local rP
local rw
local function fn31()
    return ru.CoreGui
end
local function fn33(a3)
    local us_1
    local ur_1
    ur_1, us_1 = pcall(rY.Knit.GetService, a3)
    if ur_1 then
        return us_1
    end
    return nil
end
local function fn48(f6)
    rI("BuyStaff", f6, 2, rM)
end
local function fn49(bQ)
    if type(bQ) ~= "string" then
        return false
    end
    return rU.CollectRarityFilter[bQ] == true
end
local function fn77()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
    local uB_1 = HumanoidRootPart and HumanoidRootPart:IsA("BasePart")
    if uB_1 then
        return HumanoidRootPart
    end
    return nil
end
local function fn83(gX, gY)
    local yM
    if rG(setclipboard) then
        yM = setclipboard
    elseif rG(toclipboard) then
        yM = toclipboard
    end
    if not yM then
        Library:Notify("Clipboard unavailable", 3)
        return
    end
    local yN = pcall(yM, gX)
    if yN then
        local yM_1 = gY or "Copied"
        Library:Notify(yM_1, 3)
    else
        Library:Notify("Copy failed", 3)
    end
end
local function fn131()
    local Character = LocalPlayer.Character
    if not Character then
        return {}
    end
    local uV = {}
    for i, child in ipairs(Character:GetChildren()) do
        if child:HasTag("Pickable") then
            table.insert(uV, child)
        end
    end
    return uV
end
local function fn134(a8)
    local uv_1
    local uu_1
    uu_1, uv_1 = pcall(rY.Knit.GetController, a8)
    if uu_1 then
        return uv_1
    end
    return nil
end
local function fn140(fI, fJ, fK, fL)
    local Enabled = rU.Enabled
    local ye = fJ and true or false
    Enabled[fI] = ye
    if rU.Enabled[fI] then
        r2(fI, fK, fL)
    else
        local Gens = rU.Gens
        local yd_1 = rU.Gens[fI] or 0
        Gens[fI] = yd_1 + 1
    end
end
local function fn145()
    local vj = sc()
    if not vj then
        return nil
    end
    local PlotSurface = vj:FindFirstChild("PlotSurface", true)
    local vj_1 = PlotSurface and PlotSurface:IsA("BasePart")
    if vj_1 then
        return PlotSurface
    end
    return nil
end
local function fn149(g5)
    local DiscordGroup = g5:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = rA,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
local function fn157(N)
    local to = typeof(cloneref) == "function" and typeof(N) == "Instance"
    if to then
        return cloneref(N)
    end
    return N
end
local function fn163()
    return sr(CFrame.new(r3))
end
local function fn166()
    local vP_1
    local vO_1
    local vV = if not LocalPlayer:GetAttribute("IsWaveActive") then 1 else 0
    if vV == 1 then
        return
    end
    local vK = rX("PickupController")
    local SpawnedItems = sa:FindFirstChild("SpawnedItems")
    local vN = not vK or not SpawnedItems
    local vN_1
    if vN then
        return
    end
    local vM_1 = r7()
    if not vM_1 then
        return
    end
    if #rN() >= r5() then
        rP()
        return
    end
    vP_1, vN_1, vO_1 = nil, nil, nil
    for i, child in ipairs(SpawnedItems:GetChildren()) do
        local vL_1 = (child:IsA("Model"))
        if vL_1 then
            local vQ_1 = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")
            vL_1 = vQ_1
        end
        local vQ_2 = vL_1
        if not vQ_2 then
            local vL_2 = child:IsA("BasePart") and child
            vQ_2 = vL_2 or nil
        end
        local vL_3 = vQ_2
        local vQ_3 = child:HasTag("Pickable") and vL_3 and rv(rQ(child))
        if vQ_3 then
            local Magnitude = (vL_3.Position - vM_1.Position).Magnitude
            if not vN_1 or Magnitude < vN_1 then
                vP_1, vN_1, vO_1 = child, Magnitude, vL_3
            end
        end
    end
    if not vP_1 then
        return
    end
    local Position = vO_1.Position
    sr(CFrame.new(Position + Vector3.new(0, 4, 0)))
    task.wait(0.1)
    local vL_5 = not sq()
    local vV_1 = if vL_5 then 1 else 0
    local vT = 125 * vV_1 + 1435 * (1 - vV_1)
    local vU = 4074 * vV_1 + 2471 * (1 - vV_1)
    if not ((vT * 1482 + vU * 3355 + vT * vU) % 16777213 == 14362770) then
        vL_5 = not rU.Enabled.Collect
    end
    if vL_5 then
        return
    end
    if not vP_1.Parent then
        return
    end
    pcall(vK.Pickup, vK, vP_1)
    if #rN() >= r5() then
        rP()
    end
end
local function fn205(gm)
    rI("PlaytimeRewards", gm, 5, so)
end
local function fn228()
    local wV = rB()
    if not wV then
        return
    end
    local wW = type(wV.OwnedPickaxes) == "table" and wV.OwnedPickaxes
    local wY = wW or {}
    local wY_2
    local wX_1 = sl("PickaxeService")
    if not wX_1 then
        return
    end
    local wY_1 = r9()
    local wZ = (tonumber(wV.Rebirth))
    local wZ_2
    local w7 = if wZ then 1 else 0
    local w5 = 1743 * w7 + 1684 * (1 - w7)
    local w6 = 1064 * w7 + 1777 * (1 - w7)
    if not ((w5 * 1914 + w6 * 1178 + w5 * w6) % 16777213 == 6444046) then
        wZ = 0
    end
    local w_ = wZ
    local w0
    for i, v in ipairs(rY.Staffs) do
        local wZ_1 = not wY[v.id]
        if wZ_1 ~= false then
            wZ_1 = v.cost
        end
        if wZ_1 then
            wZ_1 = v.cost <= wY_1
        end
        if wZ_1 then
            wZ_1 = w_ >= v.rebirthRequired
        end
        if wZ_1 then
            w0 = v
        end
    end
    if w0 then
        wY_2, wZ_2 = pcall(wX_1.BuyPickaxe, wX_1, w0.id)
        if wY_2 and wZ_2 then
            wY[w0.id] = true
        end
    end
    local wY_3 = nil
    for i, v in ipairs(rY.Staffs) do
        if wY[v.id] then
            wY_3 = v
        end
    end
    if wY_3 and wV.EquippedPickaxe ~= wY_3.id then
        pcall(wX_1.EquipPickaxe, wX_1, wY_3.id)
    end
end
local function fn235(gd)
    rI("BuyUpgrades", gd, 1.5, sf)
end
local function fn307(fY)
    rI("HatchEgg", fY, 1, rV)
end
local function fn327()
    local wm = sl("EggService")
    if not wm then
        return
    end
    local wn = sa:GetServerTimeNow()
    for i, v in ipairs(r8:GetTagged("PlacedEgg")) do
        local wo = v:GetAttribute("OwnerId") == LocalPlayer.UserId and not v:GetAttribute("IsHatching")
        if wo then
            local attr = v:GetAttribute("EggId")
            local wp = tonumber(v:GetAttribute("StartTime"))
            local wq = tonumber(v:GetAttribute("Duration"))
            if attr and wp and wq and wp + wq - wn <= 0 then
                pcall(wm.HatchEgg, wm, attr)
                task.wait(0.2)
                local wo_2 = not sq() or not rU.Enabled.HatchEgg
                if wo_2 then
                    return
                end
            end
        end
    end
end
local function fn355(fR)
    rI("Collect", fR, 0.15, st)
    if not fR then
        rU.Banking = false
    end
end
local function fn357()
    local v1 = rB()
    local v2 = not v1 or type(v1.Inventory) ~= "table"
    if v2 then
        return
    end
    local v2_1 = nil
    for k, v in pairs(v1.Inventory) do
        local v1_1 = type(v) == "table" and v.itemType == "Egg"
        if v1_1 then
            v2_1 = k
            break
        end
    end
    if not v2_1 then
        return
    end
    local v1_2 = rL()
    if not v1_2 then
        return
    end
    local v3 = sl("EggService")
    if not v3 then
        return
    end
    local v4 = v1_2.Size.X / 2 - 4
    local v4_4
    local v5 = v1_2.Size.Z / 2 - 4
    local v6 = {}
    local v7 = 7
    local v7_1
    local v8 = -v4
    while v8 <= v4 do
        local v9 = -v5
        while v9 <= v5 do
            table.insert(v6, Vector3.new(v8, v1_2.Size.Y / 2 + 2, v9))
            v9 += v7
        end
        v8 += v7
    end
    if #v6 == 0 then
        return
    end
    local v4_1 = math.min(#v6, 12)
    local wj = 1
    while wj <= v4_1 do
        local v4_2 = not sq() or not rU.Enabled.PlaceEgg
        if v4_2 then
            return
        end
        rU.EggSlot = rU.EggSlot % #v6 + 1
        local v4_3 = v1_2.CFrame:PointToWorldSpace(v6[rU.EggSlot])
        local v5_1 = CFrame.new(v4_3) * CFrame.Angles(0, math.pi / 2, 0)
        v4_4, v7_1 = pcall(v3.PlaceEgg, v3, v2_1, v5_1)
        if v4_4 and v7_1 then
            return
        end
        task.wait(0.1)
        wj += 1
    end
end
local function fn405()
    local u6_1
    local u5_1
    u5_1, u6_1 = pcall(rY.Modifiers.Get, LocalPlayer, "MaxPickup")
    local u7 = u5_1 and tonumber(u6_1)
    if u7 then
        return math.max(1, math.floor(tonumber(u6_1)))
    end
    return 1
end
local function fn435(br)
    local uG = r7()
    if not uG then
        return false
    end
    uG.AssemblyLinearVelocity = Vector3.zero
    uG.AssemblyAngularVelocity = Vector3.zero
    uG.CFrame = br
    return true
end
local function fn451()
    task.spawn(function()
        local xs = sl("TrainingService")
        if xs then
            pcall(xs.StopTraining, xs)
        end
        rU.TrainingStartedAt = 0
    end)
end
local function fn514()
    return math.max(1, math.min(rU.CarryLimit, sh()))
end
local function fn535(f3)
    rI("UpgradeDumbell", f3, 2, si)
end
local function fn547()
    gethui = sg
end
local function fn617(gt)
    table.clear(rU.CollectRarityFilter)
    if type(gt) == "table" then
        for k, v in pairs(gt) do
            local yl = v == true and type(k) == "string"
            if yl then
                rU.CollectRarityFilter[k] = true
            elseif type(v) == "string" then
                rU.CollectRarityFilter[v] = true
            end
        end
    end
end
local function fn643()
    local Training = rU.Enabled.Training
    for k in pairs(rU.Enabled) do
        rU.Enabled[k] = false
        local Gens = rU.Gens
        local yG = rU.Gens[k] or 0
        Gens[k] = yG + 1
    end
    if Training then
        r_()
    end
end
local function fn647()
    local xk = sl("TrainingService")
    if not xk then
        return
    end
    local xl = sk()
    local xl_1
    if not xl then
        return
    end
    local xm = rH()
    local xm_3
    local xm_1 = xm and xm.HipHeight > 0 and xm.HipHeight
    local xr = if xm_1 then 1 else 0
    local xp = 313 * xr + 188 * (1 - xr)
    local xq = 2906 * xr + 1682 * (1 - xr)
    if not ((xp * 3647 + xq * 1423 + xp * xq) % 16777213 == 6186327) then
        xm_1 = 2
    end
    local xn_1 = xm_1
    local xm_2 = CFrame.new(xl.Position + Vector3.new(0, xl.Size.Y / 2 + xn_1 + 1, 0)) * xl.CFrame.Rotation
    sr(xm_2)
    if os.clock() - rU.TrainingStartedAt < 8 then
        return
    end
    xl_1, xm_3 = pcall(xk.StartTraining, xk)
    if xl_1 and xm_3 then
        rU.TrainingStartedAt = os.clock()
    end
end
local function fn655(bL)
    local attr2 = bL:GetAttribute("EggType")
    if type(attr2) == "string" then
        return rY.EggRarity[attr2]
    end
    local attr = bL:GetAttribute("BrainrotType")
    if type(attr) == "string" then
        return rY.BrainrotRarity[attr]
    end
    return nil
end
local function fn670()
    local Character = LocalPlayer.Character
    if not Character then
        return nil
    end
    return Character:FindFirstChildOfClass("Humanoid")
end
local function fn709()
    rJ(rD.Player)
    local MovementGroup = rD.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = rD.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(lU)
        r1.SetWalkSpeedEnabled(lU)
    end)
    Options.WalkSpeed:OnChanged(function(lY)
        r1.SetWalkSpeedValue(lY)
    end)
    Toggles.InfJump:OnChanged(function(l_)
        r1.SetInfJump(l_)
    end)
    Toggles.NoClip:OnChanged(function(l1)
        r1.SetNoClip(l1)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(l3)
        r1.SetInstantProximityPrompt(l3)
    end)
    Toggles.Fly:OnChanged(function(l5)
        r1.SetFly(l5)
    end)
    Options.FlySpeed:OnChanged(function(l7)
        r1.SetFlySpeed(l7)
    end)
end
local function fn717(gj)
    rI("Rebirth", gj, 3, sj)
end
local function fn718()
    local uz_1
    local uy_1
    local ux = rX("ReplicaController")
    if not ux then
        return nil
    end
    uy_1, uz_1 = pcall(ux.GetPlayerData, ux)
    local ux_1 = uy_1 and type(uz_1) == "table"
    if ux_1 then
        return uz_1
    end
    return nil
end
local function fn744(gg)
    rI("BuyPetSlot", gg, 2, ry)
end
local function fn745()
    if LocalPlayer:GetAttribute("IsWaveActive") then
        return
    end
    if #rN() > 0 then
        return
    end
    local SeaEdge = sa:FindFirstChild("SeaEdge")
    local vq = r7()
    if not vq then
        return
    end
    local vr = SeaEdge
    local vs = false
    if vr then
        vr = SeaEdge:IsA("BasePart")
    end
    if vr then
        local vr_1 = SeaEdge.CFrame:PointToObjectSpace(vq.Position)
        local vq_1 = math.abs(vr_1.X) <= SeaEdge.Size.X / 2 and math.abs(vr_1.Y) <= SeaEdge.Size.Y / 2 and math.abs(vr_1.Z) <= SeaEdge.Size.Z / 2
        vs = vq_1
    end
    if not vs then
        sr(CFrame.new(r3))
        task.wait(0.6)
        local vp_1 = not sq() or not rU.Enabled.OpenSea
        if vp_1 then
            return
        end
    end
    local vp_2 = rX("WaveController")
    if not vp_2 then
        return
    end
    pcall(vp_2.Start, vp_2, rY.MaxOpenTime)
end
local function fn828()
    rx("PlotUpgrade")
end
local function fn845(eH)
    local xu = rB()
    local xu_4
    if not xu then
        return
    end
    local xv = rY.UpgradeConfig.Upgrades[eH]
    local xv_2
    if type(xv) ~= "table" then
        return
    end
    local xx = xu.Upgrades or {}
    local xu_1 = tonumber(xx[eH]) or 0
    local xu_2 = tonumber(xv.maxLevel) or 0
    if xu_2 > 0 and xu_1 >= xu_2 then
        return
    end
    xu_4, xv_2 = pcall(rY.UpgradeConfig.GetMaxBuyable, eH, xu_1, r9())
    local xw_2 = xu_4 and tonumber(xv_2)
    local xu_5 = xw_2 or 0
    if xu_5 < 1 then
        return
    end
    local xu_6 = sl("UpgradesService")
    if not xu_6 then
        return
    end
    pcall(xu_6.Upgrade, xu_6, eH, xu_5)
end
local function fn864()
    rw(rA, "Copied Discord invite")
end
local function fn875(fO)
    rI("OpenSea", fO, 1, rC)
end
local function fn880(f0)
    rI("EquipBest", f0, 3, rE)
end
local function fn894()
    local xK = rB()
    if not xK then
        return
    end
    local xL = tonumber(xK.Rebirth) or 0
    local xL_1 = rY.RebirthConfig.REBIRTH[xL + 1]
    local xK_2 = type(xL_1) ~= "table" or type(xL_1.Cost) ~= "table"
    if xK_2 then
        return
    end
    local xK_3 = tonumber(xL_1.Cost.Cash)
    local xL_2 = not xK_3 or r9() < xK_3
    if xL_2 then
        return
    end
    local xK_4 = sl("RebirthService")
    if not xK_4 then
        return
    end
    pcall(xK_4.Rebirth, xK_4)
end
local function fn921(gp)
    local yi = tonumber(gp) or 1
    rU.CarryLimit = math.clamp(math.floor(yi), 1, math.max(1, CarryMax))
end
local function fn942(fV)
    rI("PlaceEgg", fV, 1.5, r0)
end
local function fn945(gy)
    table.clear(rU.UpgradeFilter)
    if type(gy) == "table" then
        for k, v in pairs(gy) do
            local yt = v == true and type(k) == "string"
            if yt then
                rU.UpgradeFilter[k] = true
            elseif type(v) == "string" then
                rU.UpgradeFilter[v] = true
            end
        end
    end
end
local function fn1029()
    for i, v in ipairs(UpgradeLabels) do
        local xC = not sq() or not rU.Enabled.BuyUpgrades
        if xC then
            return
        end
        if rU.UpgradeFilter[v] then
            local xC_1 = rY.UpgradeIdByLabel[v]
            if xC_1 then
                rx(xC_1)
                task.wait(0.2)
            end
        end
    end
end
local function fn1031()
    local vg_1
    local vf_1
    vf_1, vg_1 = pcall(rY.PlotUtils.GetPlayerPlot, LocalPlayer)
    local vh = vf_1 and typeof(vg_1) == "Instance"
    if vh then
        return vg_1
    end
    return nil
end
local function fn1074()
    return not r1.Unloaded
end
local function fn1087()
    local vx = rX("PickupController")
    if not vx then
        return
    end
    rU.Banking = true
    sr(CFrame.new(r3))
    local vy = os.clock() + 4
    local vy_1
    while true do
        local vz = sq() and rU.Enabled.Collect and os.clock() < vy
        local vz_1
        if vz then
            task.wait(0.15)
            if #rN() == 0 then
                break
            end
            sr(CFrame.new(r3))
            continue
        end
        vy_1, vz_1 = pcall(vx.GetItemIds, vx)
        local vx_1 = vy_1 and type(vz_1) == "table" and #vz_1 > 0
        if vx_1 then
            for i, v in ipairs(rN()) do
                v:Destroy()
            end
            local vx_2 = sl("WaveService")
            if vx_2 then
                pcall(vx_2.Finished, vx_2, vz_1)
                rU.Banked = rU.Banked + 1
            end
        end
        rU.Banking = false
        return
    end
    rU.Banked = rU.Banked + 1
    rU.Banking = false
    return
end
local function fn1098()
    local xS_1
    local xR_1, xR_6
    local xQ = rX("PlaytimeRewardController")
    if not xQ then
        return
    end
    xR_1, xS_1 = pcall(xQ.GetSessionTime, xQ)
    local xT = xR_1 and tonumber(xS_1)
    local xT_2
    local xR_2 = xT or 0
    for k, v in pairs(rY.PlaytimeRewardConfig) do
        local xR_3 = not sq() or not rU.Enabled.PlaytimeRewards
        if xR_3 then
            return
        end
        local xR_4 = type(v) == "table" and tonumber(v.time)
        local xT_1 = xR_4 or nil
        local xR_5 = xT_1
        if xT_1 then
            xT_1 = xR_2 >= xR_5
        end
        if xT_1 then
            xR_6, xT_2 = pcall(xQ.IsGiftClaimed, xQ, k)
            if xR_6 and not xT_2 then
                pcall(xQ.ClaimGift, xQ, k)
                task.wait(0.3)
            end
        end
    end
end
local function fn1116()
    local TrainingArea = sa:FindFirstChild("TrainingArea")
    if not TrainingArea then
        return nil
    end
    local StandPart = TrainingArea:FindFirstChild("StandPart", true)
    local vm_1 = StandPart and StandPart:IsA("BasePart")
    if vm_1 then
        return StandPart
    end
    return nil
end
local function fn1142(Q)
    return type(Q) == "function"
end
local function fn1191()
    local uL = rB()
    local uM = not uL or type(uL.Currencies) ~= "table"
    if uM then
        return 0
    end
    local uM_1 = (tonumber(uL.Currencies.Cash))
    local uT = if uM_1 then 1 else 0
    local uR = 3590 * uT + 2456 * (1 - uT)
    local uS = 3752 * uT + 3760 * (1 - uT)
    if not ((uR * 3364 + uS * 29 + uR * uS) % 16777213 == 8878035) then
        uM_1 = 0
    end
    return uM_1
end
local function fn1203()
    local wG_2
    local wB = rB()
    if not wB then
        return
    end
    local wC = type(wB.OwnedTrainTools) == "table" and wB.OwnedTrainTools
    local wE = wC or {}
    local wE_2
    local wD_1 = sl("TrainingService")
    if not wD_1 then
        return
    end
    local wE_1 = r9()
    local wF
    for i, v in ipairs(rY.TrainTools) do
        local wG_1 = not wE[v.id]
        if wG_1 ~= false then
            wG_1 = v.cost <= wE_1
        end
        if wG_1 then
            wF = v
        end
    end
    if wF then
        wE_2, wG_2 = pcall(wD_1.BuyTrainTool, wD_1, wF.id)
        if wE_2 and wG_2 then
            wE[wF.id] = true
        end
    end
    local wE_3 = nil
    for i, v in ipairs(rY.TrainTools) do
        if wE[v.id] then
            wE_3 = v
        end
    end
    if wE_3 and wB.EquippedTrainTool ~= wE_3.id then
        pcall(wD_1.EquipTrainTool, wD_1, wE_3.id)
    end
end
local function fn1213()
    local wz = sl("AnimalService")
    if not wz then
        return
    end
    pcall(wz.EquipBest, wz)
end
local function worker()
    local um_1
    local ul_1
    ul_1, um_1 = pcall(rR)
    if not ul_1 then
        rY.Failed = tostring(um_1)
    end
end
local function fn1246(f9)
    rI("Training", f9, 1, r6)
    if not f9 then
        r_()
    end
end
ru = nil
rv = nil
rw = nil
rx = nil
ry = nil
UpgradeLabels = nil
rA = nil
rB = nil
rC = nil
rD = nil
rE = nil
rG = nil
rH = nil
rI = nil
rJ = nil
Options = nil
rL = nil
rM = nil
rN = nil
Toggles = nil
rP = nil
rQ = nil
rR = nil
rU = nil
rV = nil
rX = nil
rY = nil
r_ = nil
r0 = nil
r1 = nil
r2 = nil
r3 = nil
Library = nil
r5 = nil
r6 = nil
r7 = nil
r8 = nil
r9 = nil
sa = nil
sc = nil
sf = nil
sg = nil
local Rarities, SaveManager, rT, rW, ThemeManager, sb, sd, se
sh = nil
si = nil
sj = nil
sk = nil
sl = nil
LocalPlayer = nil
so = nil
CarryMax = nil
sq = nil
sr = nil
st = nil
local sm, ss
local sx_1
local sw_1
local sy_4
local su_1
if not game:IsLoaded() then
    game.Loaded:Wait()
end
ru, LocalPlayer, sg = nil, nil, nil
ru = {}
ru.Players = game:GetService("Players")
ru.ReplicatedStorage = game:GetService("ReplicatedStorage")
ru.RunService = game:GetService("RunService")
ru.UserInputService = game:GetService("UserInputService")
ru.VirtualUser = game:GetService("VirtualUser")
ru.HttpService = game:GetService("HttpService")
ru.TeleportService = game:GetService("TeleportService")
ru.Workspace = game:GetService("Workspace")
ru.Lighting = game:GetService("Lighting")
ru.Stats = game:GetService("Stats")
ru.CoreGui = game:GetService("CoreGui")
ru.CollectionService = game:GetService("CollectionService")
LocalPlayer = ru.Players.LocalPlayer
sg = fn31
if getgenv then
    getgenv().gethui = sg
end
r1, rU, se, sa, r8, r3, rY, sw_1, sx_1, su_1, rG, sq, rR = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local sv = 40
repeat
    local sy_1 = (sv * 4 + 4) % 11 + 1
    if sy_1 <= 6 then
        if sy_1 <= 3 then
            if sy_1 <= 2 then
                if sy_1 <= 1 then
                    local sz_1 = (vector.create((sv * 4 + 3) % 11 + 1, (sv * 6 + 8) % 13 + 1, (sv * 2 + 8) % 17 + 1))
                    local sA_1 = (vector.create((sv * 1 + 3) % 11 + 1, (sv * 8 + 13) % 13 + 1, (sv * 6 + 6) % 17 + 1))
                    local sB_1 = (vector.create((sv * 1 + 5) % 11 + 1, (sv * 6 + 5) % 13 + 1, (sv * 8 + 8) % 17 + 1))
                    local sC_1 = (vector.create((sv * 4 + 7) % 5 + 1, (sv * 4 + 7) % 7 + 1, (sv * 3 + 4) % 9 + 1))
                    if vector.dot(vector.cross(sz_1, (vector.cross(sA_1, sB_1))), sC_1) == vector.dot(sA_1 * vector.dot(sz_1, sB_1) - sB_1 * vector.dot(sz_1, sA_1), sC_1) + 5 then
                        sq = function(E, F)
                            local tj = type(E) == "table" and type(E.Track) == "function"
                            assert(tj, "FeatureAPI required")
                            local tj_2 = type(F) == "table" and type(F.OnUnload) == "function"
                            assert(tj_2, "UI library required")
                            assert(type(F.Unload) == "function", "UI unload required")
                            E.Track(function()
                                if not F.Unloaded then
                                    F:Unload()
                                end
                            end)
                            F:OnUnload(function()
                                E.Unload()
                            end)
                        end
                    else
                        sx_1 = function(E, F)
                            local tj = type(E) == "table" and type(E.Track) == "function"
                            assert(tj, "FeatureAPI required")
                            local tj_1 = type(F) == "table" and type(F.OnUnload) == "function"
                            assert(tj_1, "UI library required")
                            assert(type(F.Unload) == "function", "UI unload required")
                            E.Track(function()
                                if not F.Unloaded then
                                    F:Unload()
                                end
                            end)
                            F:OnUnload(function()
                                E.Unload()
                            end)
                        end
                    end
                    sv = (sv + 58) % 88
                else
                    local ER = bit32.rrotate(bit32.bxor(bit32.lrotate(sv, 8), string.byte(tostring(r1))), 18)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(ER, 2958748607), 20), 3153790382) ~= bit32.lrotate(ER, 20) then
                        sw_1 = r1("OuroborosOpenSeaForAnimals")
                    else
                        r1 = sw_1("OuroborosOpenSeaForAnimals")
                    end
                    sv = (sv + 14) % 88
                end
            else
                if sv * 72746549 + 1 + 2 <= sv * 72746549 + 1 + 2 + 5 then
                    rU = r1.State
                else
                    r1 = rU.State
                end
                sv = (sv + 36) % 88
            end
        elseif sy_1 <= 5 then
            if sy_1 <= 4 then
                if sv * 77616941 + 5 + 1 <= sv * 77616941 + 5 + 1 + 1 then
                    su_1 = fn157
                else
                    r3 = fn157
                end
                sv = (sv + 36) % 88
            else
                local sz_2 = {
                    "nvjd",
                    "kte",
                    "llpjfpemlo",
                    "iencyigtoym",
                    "ctbhe",
                    "eobttt",
                    "ugmat",
                    "hidn",
                    "mmnoxhqnkfg",
                    "ypfjsriyea"
                }
                local En = sv
                local sA_2 = sz_2[En % 10 + 1]
                if sA_2:len() <= sA_2:reverse():rep(En % 3 + 2):len() then
                    rG = fn1142
                    sq = fn1074
                else
                    sq = fn1142
                    rG = fn1074
                end
                sv = (sv + 36) % 88
            end
        else
            if (sv * 3 + 4) * 17 % 4 == ((sv * 3 + 4) * 17 + 0) % 4 then
                se = su_1(ru.ReplicatedStorage)
                sa = su_1(ru.Workspace)
                r8 = su_1(ru.CollectionService)
            else
                sa = r8(se.ReplicatedStorage)
                su_1 = r8(se.Workspace)
                ru = r8(se.CollectionService)
            end
            sv = (sv + 58) % 88
        end
    elseif sy_1 <= 9 then
        if sy_1 <= 8 then
            if sy_1 <= 7 then
                local sz_3 = (vector.create((sv * 6 + 6) % 11 + 1, (sv * 11 + 10) % 13 + 1, (sv * 9 + 10) % 17 + 1))
                local sA_3 = (vector.create((sv * 7 + 3) % 11 + 1, (sv * 9 + 4) % 13 + 1, (sv * 11 + 11) % 17 + 1))
                local sB_2 = (vector.create((sv * 5 + 9) % 11 + 1, (sv * 10 + 11) % 13 + 1, (sv * 9 + 10) % 17 + 1))
                local sC_2 = (vector.create((sv * 4 + 3) % 5 + 1, (sv * 2 + 4) % 7 + 1, (sv * 1 + 4) % 9 + 1))
                if vector.dot(vector.cross(sz_3, (vector.cross(sA_3, sB_2))), sC_2) == vector.dot(sA_3 * vector.dot(sz_3, sB_2) - sB_2 * vector.dot(sz_3, sA_3), sC_2) then
                    r3 = Vector3.new(669, 67, 326)
                else
                    sq = Vector3.new(669, 67, 326)
                end
                sv = (sv + 14) % 88
            else
                if (sv * 3 + 1) * 21 % 4 == ((sv * 3 + 1) * 21 + 15) % 4 then
                    se = { Ready = false, Failed = nil }
                else
                    rY = { Ready = false, Failed = nil }
                end
                sv = (sv + 36) % 88
            end
        else
            if (r3 or rR) and (se or rR) or (rR and r3 or false) or ((r3 or rR) and (r3 and not se) or (se or se) and (se or se)) or not ((r3 or rR) and (se or rR) or (rR and r3 or false) or ((r3 or rR) and (r3 and not se) or (se or se) and (se or se))) then
                rR = function()
                    local tA
                    local tB
                    tA = nil
                    tB = nil
                    local Packages = se:WaitForChild("Packages", 30)
                    local tC_16
                    local Configs = se:WaitForChild("Configs", 30)
                    local tD_14
                    local GameShared = se:WaitForChild("GameShared", 30)
                    local tG = Packages and Configs and GameShared
                    assert(tG, "Game folders missing")
                    rY.Knit = require(Packages:WaitForChild("Knit"))
                    rY.Modifiers = require(se:WaitForChild("Modifiers"))
                    rY.WaveConfig = require(Configs:WaitForChild("WaveConfig"))
                    rY.UpgradeConfig = require(Configs:WaitForChild("UpgradeConfig"))
                    rY.RebirthConfig = require(Configs:WaitForChild("RebirthConfig"))
                    rY.TrainToolConfig = require(Configs:WaitForChild("TrainToolConfig"))
                    rY.StaffConfig = require(Configs:WaitForChild("StaffConfig"))
                    rY.EggsConfig = require(Configs:WaitForChild("EggsConfig"))
                    rY.BrainrotsConfig = require(Configs:WaitForChild("BrainrotsConfig"))
                    rY.PlaytimeRewardConfig = require(Configs:WaitForChild("PlaytimeRewardConfig"))
                    rY.PlotUtils = require(GameShared:WaitForChild("PlotUtils"))
                    local tC_10 = tonumber(rY.WaveConfig.MAX_TIME_EXTENSION) or 5
                    rY.MaxOpenTime = tC_10
                    local Carry = rY.UpgradeConfig.Upgrades.Carry
                    local tD_9 = Carry and Carry.maxLevel
                    local tC_12 = tonumber(tD_9) or 1
                    rY.CarryMax = tC_12
                    tA, tB = {}, {}
                    local function tC_13(aj)
                        local tq = type(aj) == "string" and aj ~= "" and not tB[aj]
                        if tq then
                            tB[aj] = true
                            table.insert(tA, aj)
                        end
                    end
                    for k, v in pairs(rY.EggsConfig.EGGS) do
                        local tD_10 = type(v) == "table" and v.rarity
                        local tE_6 = tD_10 or nil
                        tC_13(tE_6)
                    end
                    for k, v in pairs(rY.BrainrotsConfig.CONFIG) do
                        local tD_11 = type(v) == "table" and v.rarity
                        local tE_7 = tD_11 or nil
                        tC_13(tE_7)
                    end
                    table.sort(tA)
                    rY.Rarities = tA
                    local tC_14 = {}
                    for k, v in pairs(rY.EggsConfig.EGGS) do
                        local tD_12 = type(v) == "table" and type(v.rarity) == "string"
                        if tD_12 then
                            tC_14[k] = v.rarity
                        end
                    end
                    rY.EggRarity = tC_14
                    local tC_15 = {}
                    for k, v in pairs(rY.BrainrotsConfig.CONFIG) do
                        local tD_13 = type(v) == "table" and type(v.rarity) == "string"
                        if tD_13 then
                            tC_15[k] = v.rarity
                        end
                    end
                    rY.BrainrotRarity = tC_15
                    tC_16, tD_14 = {}, {}
                    local tE_8 = {}
                    for k, v in pairs(rY.UpgradeConfig.Upgrades) do
                        if type(v) == "table" then
                            local insert = table.insert
                            local tG_3 = v.name or k
                            local tH = tonumber(v.layoutOrder) or 0
                            insert(tE_8, { id = k, name = tG_3, order = tH })
                        end
                    end
                    table.sort(tE_8, function(aG, aH)
                        if aG.order == aH.order then
                            return aG.id < aH.id
                        end
                        return aG.order < aH.order
                    end)
                    for i, v in ipairs(tE_8) do
                        table.insert(tC_16, v.name)
                        tD_14[v.name] = v.id
                    end
                    rY.UpgradeLabels = tC_16
                    rY.UpgradeIdByLabel = tD_14
                    local tC_17 = {}
                    for k, v in pairs(rY.TrainToolConfig.TRAIN_TOOLS) do
                        if type(v) == "table" then
                            local insert = table.insert
                            local tE_9 = tonumber(v.cost) or 0
                            local tF_5 = tonumber(v.layoutOrder) or 0
                            insert(tC_17, { id = k, cost = tE_9, order = tF_5 })
                        end
                    end
                    table.sort(tC_17, function(aN, aO)
                        return aN.order < aO.order
                    end)
                    rY.TrainTools = tC_17
                    local tC_18 = {}
                    for k, v in pairs(rY.StaffConfig) do
                        if type(v) == "table" then
                            local insert = table.insert
                            local tE_10 = tonumber(v.cost)
                            local tF_6 = tonumber(v.layoutOrder) or 0
                            local tG_4 = tonumber(v.rebirthRequired) or 0
                            insert(tC_18, { id = k, cost = tE_10, order = tF_6, rebirthRequired = tG_4 })
                        end
                    end
                    table.sort(tC_18, function(aS, aT)
                        if aS.order == aT.order then
                            return aS.id < aT.id
                        end
                        return aS.order < aT.order
                    end)
                    rY.Staffs = tC_18
                    rY.Ready = true
                end
            else
                sq = function()
                    local tA
                    local tB
                    tA = nil
                    tB = nil
                    local Packages = se:WaitForChild("Packages", 30)
                    local tC_7
                    local Configs = se:WaitForChild("Configs", 30)
                    local tD_6
                    local GameShared = se:WaitForChild("GameShared", 30)
                    local tG = Packages and Configs and GameShared
                    assert(tG, "Game folders missing")
                    rY.Knit = require(Packages:WaitForChild("Knit"))
                    rY.Modifiers = require(se:WaitForChild("Modifiers"))
                    rY.WaveConfig = require(Configs:WaitForChild("WaveConfig"))
                    rY.UpgradeConfig = require(Configs:WaitForChild("UpgradeConfig"))
                    rY.RebirthConfig = require(Configs:WaitForChild("RebirthConfig"))
                    rY.TrainToolConfig = require(Configs:WaitForChild("TrainToolConfig"))
                    rY.StaffConfig = require(Configs:WaitForChild("StaffConfig"))
                    rY.EggsConfig = require(Configs:WaitForChild("EggsConfig"))
                    rY.BrainrotsConfig = require(Configs:WaitForChild("BrainrotsConfig"))
                    rY.PlaytimeRewardConfig = require(Configs:WaitForChild("PlaytimeRewardConfig"))
                    rY.PlotUtils = require(GameShared:WaitForChild("PlotUtils"))
                    local tC_1 = tonumber(rY.WaveConfig.MAX_TIME_EXTENSION) or 5
                    rY.MaxOpenTime = tC_1
                    local Carry = rY.UpgradeConfig.Upgrades.Carry
                    local tD_1 = Carry and Carry.maxLevel
                    local tC_3 = tonumber(tD_1) or 1
                    rY.CarryMax = tC_3
                    tA, tB = {}, {}
                    local function tC_4(aj)
                        local tq = type(aj) == "string" and aj ~= "" and not tB[aj]
                        if tq then
                            tB[aj] = true
                            table.insert(tA, aj)
                        end
                    end
                    for k, v in pairs(rY.EggsConfig.EGGS) do
                        local tD_2 = type(v) == "table" and v.rarity
                        local tE_1 = tD_2 or nil
                        tC_4(tE_1)
                    end
                    for k, v in pairs(rY.BrainrotsConfig.CONFIG) do
                        local tD_3 = type(v) == "table" and v.rarity
                        local tE_2 = tD_3 or nil
                        tC_4(tE_2)
                    end
                    table.sort(tA)
                    rY.Rarities = tA
                    local tC_5 = {}
                    for k, v in pairs(rY.EggsConfig.EGGS) do
                        local tD_4 = type(v) == "table" and type(v.rarity) == "string"
                        if tD_4 then
                            tC_5[k] = v.rarity
                        end
                    end
                    rY.EggRarity = tC_5
                    local tC_6 = {}
                    for k, v in pairs(rY.BrainrotsConfig.CONFIG) do
                        local tD_5 = type(v) == "table" and type(v.rarity) == "string"
                        if tD_5 then
                            tC_6[k] = v.rarity
                        end
                    end
                    rY.BrainrotRarity = tC_6
                    tC_7, tD_6 = {}, {}
                    local tE_3 = {}
                    for k, v in pairs(rY.UpgradeConfig.Upgrades) do
                        if type(v) == "table" then
                            local insert = table.insert
                            local tG_1 = v.name or k
                            local tH = tonumber(v.layoutOrder) or 0
                            insert(tE_3, { id = k, name = tG_1, order = tH })
                        end
                    end
                    table.sort(tE_3, function(aG, aH)
                        if aG.order == aH.order then
                            return aG.id < aH.id
                        end
                        return aG.order < aH.order
                    end)
                    for i, v in ipairs(tE_3) do
                        table.insert(tC_7, v.name)
                        tD_6[v.name] = v.id
                    end
                    rY.UpgradeLabels = tC_7
                    rY.UpgradeIdByLabel = tD_6
                    local tC_8 = {}
                    for k, v in pairs(rY.TrainToolConfig.TRAIN_TOOLS) do
                        if type(v) == "table" then
                            local insert = table.insert
                            local tE_4 = tonumber(v.cost) or 0
                            local tF_2 = tonumber(v.layoutOrder) or 0
                            insert(tC_8, { id = k, cost = tE_4, order = tF_2 })
                        end
                    end
                    table.sort(tC_8, function(aN, aO)
                        return aN.order < aO.order
                    end)
                    rY.TrainTools = tC_8
                    local tC_9 = {}
                    for k, v in pairs(rY.StaffConfig) do
                        if type(v) == "table" then
                            local insert = table.insert
                            local tE_5 = tonumber(v.cost)
                            local tF_3 = tonumber(v.layoutOrder) or 0
                            local tG_2 = tonumber(v.rebirthRequired) or 0
                            insert(tC_9, { id = k, cost = tE_5, order = tF_3, rebirthRequired = tG_2 })
                        end
                    end
                    table.sort(tC_9, function(aS, aT)
                        if aS.order == aT.order then
                            return aS.id < aT.id
                        end
                        return aS.order < aT.order
                    end)
                    rY.Staffs = tC_9
                    rY.Ready = true
                end
            end
            sv = (sv + 3) % 88
        end
    elseif sy_1 <= 10 then
        if sv * 68337665 + 7 + 7 >= sv * 68337665 + 7 + 7 + 3 then
            task.spawn(worker)
        else
            task.spawn(worker)
        end
        sv = (sv + 58) % 88
    else
        local sy_2 = { "whjsgb", "zjp", "tstpit", "kti", "ooj", "ampd", "zyya", "vpwgeaxjtd", "vxttxoiouak" }
        local DB = sv
        local sz_4 = sy_2[DB % 9 + 1]
        if sz_4:len() <= sz_4:gsub("(.)", "%1%1", DB % 3 % 2 + 1):len() then
            pcall(fn547)
            sw_1 = function(i)
                local tc
                local te
                local td
                tc = nil
                td = nil
                te = nil
                local tf = i ~= ""
                local tg = type(i) == "string" and tf
                assert(tg, "Namespace is required")
                assert(type(getgenv) == "function", "getgenv is unavailable")
                tc = getgenv()
                assert(type(tc) == "table", "getgenv did not return a table")
                local tf_2 = tc[i]
                if tf_2 ~= nil then
                    local tg_2 = type(tf_2) == "table" and type(tf_2.Unload) == "function"
                    assert(tg_2, "Namespace is occupied")
                    tf_2.Unload()
                    assert(tc[i] == nil, "Previous instance did not release its namespace")
                end
                td = {}
                te = { State = {}, Unloaded = false }
                te.Track = function(p)
                    assert(type(p) == "function", "Cleanup must be callable")
                    if te.Unloaded then
                        p()
                    else
                        table.insert(td, p)
                    end
                    return p
                end
                te.Unload = function()
                    local s5_2
                    local s4_2
                    if te.Unloaded then
                        return
                    end
                    te.Unloaded = true
                    local s2 = {}
                    local s9 = #td
                    local s8 = -1
                    while false and s9 <= 1 or true and s9 >= 1 do
                        local ta = s9
                        local s3_2 = table.remove(td, ta)
                        s4_2, s5_2 = pcall(s3_2)
                        if not s4_2 then
                            table.insert(s2, tostring(s5_2))
                        end
                        s9 += s8
                    end
                    table.clear(te.State)
                    if #s2 > 0 then
                        error("Cleanup incomplete: " .. table.concat(s2, "; "), 0)
                    end
                    if tc[i] == te then
                        tc[i] = nil
                    end
                end
                tc[i] = te
                return te
            end
        else
            pcall(fn547)
            rU = function(i)
                local tc
                local te
                local td
                tc = nil
                td = nil
                te = nil
                local tf = i ~= ""
                local tg = type(i) == "string" and tf
                assert(tg, "Namespace is required")
                assert(type(getgenv) == "function", "getgenv is unavailable")
                tc = getgenv()
                assert(type(tc) == "table", "getgenv did not return a table")
                local tf_1 = tc[i]
                if tf_1 ~= nil then
                    local tg_1 = type(tf_1) == "table" and type(tf_1.Unload) == "function"
                    assert(tg_1, "Namespace is occupied")
                    tf_1.Unload()
                    assert(tc[i] == nil, "Previous instance did not release its namespace")
                end
                td = {}
                te = { State = {}, Unloaded = false }
                te.Track = function(p)
                    assert(type(p) == "function", "Cleanup must be callable")
                    if te.Unloaded then
                        p()
                    else
                        table.insert(td, p)
                    end
                    return p
                end
                te.Unload = function()
                    local s5_1
                    local s4_1
                    if te.Unloaded then
                        return
                    end
                    te.Unloaded = true
                    local s2 = {}
                    local s9 = #td
                    local s8 = -1
                    while false and s9 <= 1 or true and s9 >= 1 do
                        local ta = s9
                        local s3_1 = table.remove(td, ta)
                        s4_1, s5_1 = pcall(s3_1)
                        if not s4_1 then
                            table.insert(s2, tostring(s5_1))
                        end
                        s9 += s8
                    end
                    table.clear(te.State)
                    if #s2 > 0 then
                        error("Cleanup incomplete: " .. table.concat(s2, "; "), 0)
                    end
                    if tc[i] == te then
                        tc[i] = nil
                    end
                end
                tc[i] = te
                return te
            end
        end
        sv = (sv + 3) % 88
    end
until (sv * 13 + 16) % 88 == 8
local sz_5 = nil
local sy_3 = 2
while true do
    do
        local su_2 = (vector.create((sy_3 * 4 + 3) % 11 + 1, (sy_3 * 5 + 12) % 13 + 1, (sy_3 * 1 + 1) % 17 + 1))
        local sv_1 = (vector.create((sy_3 * 5 + 7) % 11 + 1, (sy_3 * 1 + 4) % 13 + 1, (sy_3 * 7 + 4) % 17 + 1))
        local EQ = vector.dot(su_2, sv_1)
        if EQ * EQ <= vector.dot(su_2, su_2) * vector.dot(sv_1, sv_1) then
            sz_5 = os.clock() + 30
        else
            sz_5 = os.clock() + 30
        end
        sy_3 = (sy_3 + 0) % 4
        if (sy_3 * 3 + 0) % 4 == 2 then
            break
        end
        continue
    end
end
while true do
    local su_3 = not rY.Ready and not rY.Failed and os.clock() < sz_5
    if su_3 then
        task.wait(0.1)
        continue
    end
    break
end
local Ready = rY.Ready
local sv_2 = rY.Failed
local sN = if sv_2 then 1 else 0
local sL = 2360 * sN + 672 * (1 - sN)
local sM = 3384 * sN + 3883 * (1 - sN)
if not ((sL * 3188 + sM * 2711 + sL * sM) % 16777213 == 7906731) then
    sv_2 = "timed out"
end
Rarities, UpgradeLabels, CarryMax, sl, rX, rB, r7, rH, sr, r9, rN, sh, rQ, rv, sc, rL, sk = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
assert(Ready, "Game data unavailable: " .. tostring(sv_2))
Rarities = rY.Rarities
UpgradeLabels = rY.UpgradeLabels
CarryMax = rY.CarryMax
sl = fn33
if (rN and not rN and (rL and rN) and (Rarities and not rB and (rB or not r7)) and ((rL and not rN or (not rQ or not rN)) and (not rQ and not r7 or not rN and not rQ)) or (rN and rL or not rN and not rQ) and (not rN and rN or (not rL or not Rarities)) and ((not rQ and rQ or (rN or r7)) and (not Rarities and not rL or not rQ and not rB))) and not (rN and not rN and (rL and rN) and (Rarities and not rB and (rB or not r7)) and ((rL and not rN or (not rQ or not rN)) and (not rQ and not r7 or not rN and not rQ)) or (rN and rL or not rN and not rQ) and (not rN and rN or (not rL or not Rarities)) and ((not rQ and rQ or (rN or r7)) and (not Rarities and not rL or not rQ and not rB))) then
    rB = fn134
    rX = fn718
else
    rX = fn134
    rB = fn718
end
r7 = fn77
rH = fn670
sr = fn435
r9 = fn1191
rN = fn131
sh = fn405
rQ = fn655
rv = fn49
sc = fn1031
rL = fn145
sk = fn1116
rU.Enabled = {
    OpenSea = false,
    Collect = false,
    PlaceEgg = false,
    HatchEgg = false,
    EquipBest = false,
    UpgradeDumbell = false,
    BuyStaff = false,
    Training = false,
    BuyUpgrades = false,
    BuyPetSlot = false,
    Rebirth = false,
    PlaytimeRewards = false
}
rU.Gens = {}
for k in pairs(rU.Enabled) do
    rU.Gens[k] = 0
end
rU.CollectRarityFilter = {}
for i, v in ipairs(Rarities) do
    rU.CollectRarityFilter[v] = true
end
rU.UpgradeFilter = {}
for i, v in ipairs(UpgradeLabels) do
    rU.UpgradeFilter[v] = true
end
rA, ss, sm, sb, Library, ThemeManager, SaveManager, Toggles, Options, rD, rT, sd, rC, r5, rP, st, r0, rV, rE, si, rM, r6, r_, rx, sf, ry, sj, so, r2, rI, rw, rW, rJ, sy_4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
rU.CarryLimit = 1
rU.Banking = false
rU.EggSlot = 0
rU.TrainingStartedAt = 0
rU.Banked = 0
rC = fn745
if ((rP or Toggles) and (rP or rP) or (not sj or Toggles or not Toggles and not Toggles)) and ((r0 and not sy_4 or (not Toggles or sd)) and (not sj and sy_4 and (not Toggles and rP))) or not (((rP or Toggles) and (rP or rP) or (not sj or Toggles or not Toggles and not Toggles)) and ((r0 and not sy_4 or (not Toggles or sd)) and (not sj and sy_4 and (not Toggles and rP)))) then
    r5 = fn514
    rP = fn1087
    st = fn166
    r0 = fn357
else
    r0 = fn514
    st = fn1087
    rP = fn166
    r5 = fn357
end
rV = fn327
rE = fn1213
si = fn1203
rM = fn228
r6 = fn647
r_ = fn451
rx = fn845
sf = fn1029
ry = fn828
sj = fn894
so = fn1098
r2 = function(fz, fA, fB)
    local x8
    local Gens = rU.Gens
    local ya = rU.Gens[fz] or 0
    Gens[fz] = ya + 1
    x8 = rU.Gens[fz]
    task.spawn(function()
        local x3_1
        while true do
            local x2 = sq() and rU.Gens[fz] == x8 and rU.Enabled[fz]
            local x2_1
            if x2 then
                x2_1, x3_1 = pcall(fB)
                if not x2_1 then
                    warn("[Ouroboros] " .. fz .. ": " .. tostring(x3_1))
                end
                task.wait(fA)
                local x2_2 = not sq() or rU.Gens[fz] ~= x8 or not rU.Enabled[fz]
                if x2_2 then
                    break
                end
                continue
            end
            break
        end
    end)
end
rI = fn140
r1.SetOpenSea = fn875
r1.SetCollect = fn355
r1.SetPlaceEgg = fn942
r1.SetHatchEgg = fn307
r1.SetEquipBest = fn880
r1.SetUpgradeDumbell = fn535
r1.SetBuyStaff = fn48
r1.SetTraining = fn1246
r1.SetBuyUpgrades = fn235
r1.SetBuyPetSlot = fn744
r1.SetRebirth = fn717
r1.SetPlaytimeRewards = fn205
r1.SetCarryLimit = fn921
r1.SetCollectRarityFilter = fn617
r1.SetUpgradeFilter = fn945
r1.TeleportToBank = fn163
r1.Track(fn643)
rA = "https://discord.gg/synapsex"
ss = "https://rscripts.net/@Ouroboros"
sm = "https://ouroboros-hub-rbx.web.app/"
local sE = "v0.2"
sb = "Open Sea For Animals"
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles, Options = Library.Toggles, Library.Options
sx_1(r1, Library)
local Window = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = rA, Copyable = true }, "|", sb, "|", sE },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
rD = {}
rD.Info = Window:AddTab("Info", "info")
rD.Main = Window:AddTab("Main", "gamepad-2")
rD.Player = Window:AddTab("Player", "person-standing")
rD.Settings = Window:AddTab("Settings", "settings")
rw = fn83
rW = fn864
rJ = fn149
local function sD()
    local zf
    local zb
    local y9
    local zk
    local za
    y9 = nil
    za = nil
    zb = nil
    zf = nil
    zk = nil
    local Label2, zd, ze, zg, Label3, Label, zj, zl
    zk = function(ha)
        return (tostring(ha):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    zf = function(hc, hd)
        return string.format('<font color="%s">%s</font>', hd, zk(hc))
    end
    zl = function(hg, hh, hi)
        return string.format("<b>%s</b> %s %s", hg, zf("-", "#5a6070"), zf(hh, hi))
    end
    zj = "#7fd47f"
    local zm = "#8b93a3"
    zb = "Unknown"
    ze = "#e8a34d"
    pcall(function()
        local yQ_1
        local yP_1
        if type(identifyexecutor) == "function" then
            yQ_1, yP_1 = identifyexecutor()
            local yR = yQ_1 ~= ""
            local yS = type(yQ_1) == "string" and yR
            if yS then
                local yR_1 = type(yP_1) == "string" and yP_1 ~= "" and yQ_1 .. " " .. yP_1
                local yP_2 = yR_1
                local yW = if yP_2 then 1 else 0
                local yU = 3441 * yW + 3031 * (1 - yW)
                local yV = 711 * yW + 2221 * (1 - yW)
                if not ((yU * 1800 + yV * 3297 + yU * yV) % 16777213 == 10984518) then
                    yP_2 = yQ_1
                end
                zb = yP_2
            end
        end
    end)
    y9 = os.clock()
    zd = function()
        local y_ = math.floor(os.clock() - y9)
        if y_ < 60 then
            return y_ .. "s"
        elseif y_ < 3600 then
            return string.format("%dm %ds", y_ // 60, y_ % 60)
        else
            return string.format("%dh %dm", y_ // 3600, y_ % 3600 // 60)
        end
    end
    local UserGroup = rD.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(zl("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, zj), true)
    UserGroup:AddLabel(zl("UserId", tostring(LocalPlayer.UserId), "#6ec1ff"), true)
    UserGroup:AddLabel(zl("Executor", zb, zj), true)
    UserGroup:AddDivider()
    Label3 = UserGroup:AddLabel(zl("Session", zd(), ze), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            rw(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            rw("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = rD.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = rA,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = rD.Info:AddRightGroupbox("Session", "signal")
    SessionGroup:AddLabel(zl("Game", sb, "#6ec1ff"), true)
    Label2 = SessionGroup:AddLabel(zl("Players", "0/0", zj), true)
    zg = tostring(game.JobId)
    local zn = #zg > 18 and string.sub(zg, 1, 18) .. "..."
    local zn_1 = zn or zg
    SessionGroup:AddLabel(zl("Job", zn_1, zm), true)
    Label = SessionGroup:AddLabel(zl("Ping", "0 ms", ze), true)
    SessionGroup:AddDivider()
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            ru.TeleportService:Teleport(game.PlaceId, LocalPlayer)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            rw(zg, "Copied Job ID")
        end
    })
    za = task.spawn(function()
        local y5_1
        local y4_1
        while true do
            task.wait(1)
            if Library.Unloaded then
                break
            end
            Label3:SetText(zl("Session", zd(), ze))
            Label2:SetText(zl("Players", #ru.Players:GetPlayers() .. "/" .. tostring(ru.Players.MaxPlayers), zj))
            y4_1, y5_1 = pcall(function()
                return math.floor(ru.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local y4_2 = y4_1 and y5_1 .. " ms" or "n/a"
            Label:SetText(zl("Ping", y4_2, ze))
        end
    end)
    r1.Track(function()
        if coroutine.status(za) ~= "dead" then
            task.cancel(za)
        end
    end)
    local SocialsGroup = rD.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({ Text = "Discord", Func = rW })
    SocialsGroup:AddButton({
        Text = "Rscripts",
        Func = function()
            rw(ss, "Copied Rscripts profile")
        end
    })
    SocialsGroup:AddButton({
        Text = "Website",
        Func = function()
            rw(sm, "Copied website link")
        end
    })
end
local function su_5()
    local jw
    local i1
    local function il(im)
        return (tostring(im):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
    end
    local function io(ip)
        local zr = tostring(ip)
        local zs = Color3.fromRGB(255, 105, 180)
        local zt = Color3.fromRGB(255, 182, 193)
        local zu = {}
        local zv = utf8.len(zr) or #zr
        local zw = 1
        for k, v in utf8.codes(zr) do
            local zr_1 = (zw - 1) / math.max(zv - 1, 1)
            local zv_1 = zs:Lerp(zt, zr_1)
            local zr_2 = string.format("#%02x%02x%02x", math.floor(zv_1.R * 255 + 0.5), math.floor(zv_1.G * 255 + 0.5), math.floor(zv_1.B * 255 + 0.5))
            zu[zw] = string.format('<font color="%s">%s</font>', zr_2, il(utf8.char(v)))
            zw += 1
        end
        return table.concat(zu)
    end
    local function iD(iE)
        local zF = tonumber(iE) or 0
        local zF_1 = math.abs(zF)
        if zF_1 >= 1000000000000000 then
            return string.format("%.2fQ", zF / 1000000000000000)
        elseif zF_1 >= 1000000000000 then
            return string.format("%.2fT", zF / 1000000000000)
        elseif zF_1 >= 1000000000 then
            return string.format("%.2fB", zF / 1000000000)
        elseif zF_1 >= 1000000 then
            return string.format("%.2fM", zF / 1000000)
        elseif zF_1 >= 1000 then
            return string.format("%.2fK", zF / 1000)
        else
            return tostring(math.floor(zF + 0.5))
        end
    end
    rJ(rD.Main)
    local StatusGroup = rD.Main:AddRightGroupbox("Status", "activity")
    local iK = {
        { Text = io("Cash"), Status = io("-") },
        { Text = io("Power"), Status = io("-") },
        { Text = io("Rebirth"), Status = io("-") },
        { Text = io("Sea"), Status = io("Closed") },
        { Text = io("Carrying"), Status = io("0/0") },
        { Text = io("Banked"), Status = io("0") },
        { Text = io("Autos"), Status = io("Off") }
    }
    local iL = StatusGroup:AddStatusLabel("FarmStatus", { MaxHeight = 160, RowHeight = 18, StatusColor = Color3.fromRGB(255, 182, 193), Items = iK })
    local iM = { [1] = 0, [2] = 0, [3] = 0, [4] = 1 }
    i1 = task.spawn(function()
        local zQ_1
        while true do
            local zP = sq() and not Library.Unloaded
            local zP_1
            if zP then
                zP_1, zQ_1 = pcall(function()
                    local zL = rB()
                    if zL then
                        local zN = zL.Currencies or {}
                        local zM_1 = tonumber(zN.Cash) or 0
                        iM[1] = zM_1
                        local zM_2 = tonumber(zL.Power) or 0
                        iM[2] = zM_2
                        local zM_3 = tonumber(zL.Rebirth) or 0
                        iM[3] = zM_3
                    end
                    iM[4] = r5()
                end)
                if not zP_1 then
                    warn("[Ouroboros] Snapshot: " .. tostring(zQ_1))
                end
                task.wait(1)
                continue
            end
            break
        end
    end)
    r1.Track(function()
        if coroutine.status(i1) ~= "dead" then
            pcall(task.cancel, i1)
        end
    end)
    local i5 = {
        "OpenSea",
        "Collect",
        "PlaceEgg",
        "HatchEgg",
        "EquipBest",
        "UpgradeDumbell",
        "BuyStaff",
        "Training",
        "BuyUpgrades",
        "BuyPetSlot",
        "Rebirth",
        "PlaytimeRewards"
    }
    local i4 = {
        OpenSea = "Sea",
        Collect = "Collect",
        PlaceEgg = "Place",
        HatchEgg = "Hatch",
        EquipBest = "Equip",
        UpgradeDumbell = "Dumbell",
        BuyStaff = "Staff",
        Training = "Train",
        BuyUpgrades = "Upgrades",
        BuyPetSlot = "Slots",
        Rebirth = "Rebirth",
        PlaytimeRewards = "Playtime"
    }
    local function worker()
        if Library.Unloaded or not iL then
            return
        end
        local Character = LocalPlayer.Character
        local zU_1 = 0
        if Character then
            for i, child in ipairs(Character:GetChildren()) do
                if child:HasTag("Pickable") then
                    zU_1 += 1
                end
            end
        end
        local zT_2 = {}
        for i, v in ipairs(i5) do
            if rU.Enabled[v] then
                table.insert(zT_2, i4[v])
            end
        end
        iK[1].Status = io(iD(iM[1]))
        iK[2].Status = io(iD(iM[2]))
        iK[3].Status = io(tostring(iM[3]))
        local zV = iK[4]
        local zW = LocalPlayer:GetAttribute("IsWaveActive") and "Open"
        local zX = zW or "Closed"
        zV.Status = io(zX)
        iK[5].Status = io(zU_1 .. "/" .. tostring(iM[4]))
        iK[6].Status = io(tostring(rU.Banked))
        local zU_2 = iK[7]
        local zV_1 = #zT_2 > 0 and table.concat(zT_2, ", ")
        local zT_3 = zV_1 or "Off"
        zU_2.Status = io(zT_3)
        for i, v in ipairs(iK) do
            iL:UpdateItem(v)
        end
    end
    jw = task.spawn(function()
        local Al_1
        while true do
            local Ak = sq() and not Library.Unloaded
            local Ak_1
            if Ak then
                Ak_1, Al_1 = pcall(worker)
                if not Ak_1 then
                    warn("[Ouroboros] Status: " .. tostring(Al_1))
                end
                task.wait(0.5)
                continue
            end
            break
        end
    end)
    r1.Track(function()
        if coroutine.status(jw) ~= "dead" then
            pcall(task.cancel, jw)
        end
    end)
    local SeaGroup = rD.Main:AddLeftGroupbox("Sea", "waves")
    SeaGroup:AddToggle("AutoOpenSea", { Text = "Auto Open Sea (Perfect Charge)", Default = false })
    SeaGroup:AddToggle("AutoCollect", { Text = "Auto Collect", Default = false })
    SeaGroup:AddDropdown("CollectRarityFilter", {
        Text = "Rarity Filter",
        Values = Rarities,
        Default = table.clone(Rarities),
        Multi = true,
        AllowNull = true
    })
    SeaGroup:AddSlider("CarryLimit", { Text = "Carry Limit", Default = 1, Min = 1, Max = math.max(1, CarryMax), Rounding = 0 })
    SeaGroup:AddButton({
        Text = "Teleport to Bank",
        Func = function()
            if not r1.TeleportToBank() then
                Library:Notify("Character not ready", 3)
            end
        end
    })
    local PlotGroup = rD.Main:AddLeftGroupbox("Plot", "house")
    PlotGroup:AddToggle("AutoPlaceEgg", { Text = "Auto Place Egg", Default = false })
    PlotGroup:AddToggle("AutoHatchEgg", { Text = "Auto Hatch Egg", Default = false })
    PlotGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
    local TrainingGroup = rD.Main:AddLeftGroupbox("Training", "dumbbell")
    TrainingGroup:AddToggle("AutoTraining", { Text = "Auto Training", Default = false })
    TrainingGroup:AddToggle("AutoUpgradeDumbell", { Text = "Auto Upgrade Dumbell", Default = false })
    local ShopGroup = rD.Main:AddRightGroupbox("Shop", "shopping-cart")
    ShopGroup:AddToggle("AutoBuyUpgrades", { Text = "Auto Buy Upgrades", Default = false })
    ShopGroup:AddDropdown("UpgradeFilter", {
        Text = "Upgrade Filter",
        Values = UpgradeLabels,
        Default = table.clone(UpgradeLabels),
        Multi = true,
        AllowNull = true
    })
    ShopGroup:AddToggle("AutoBuyPetSlot", { Text = "Auto Buy Pet Slot", Default = false })
    ShopGroup:AddToggle("AutoBuyStaff", { Text = "Auto Buy Staff", Default = false })
    local ProgressGroup = rD.Main:AddRightGroupbox("Progress", "sparkles")
    ProgressGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
    ProgressGroup:AddToggle("AutoPlaytimeRewards", { Text = "Auto Claim Playtime Rewards", Default = false })
    Toggles.AutoOpenSea:OnChanged(function(jJ)
        r1.SetOpenSea(jJ)
    end)
    Toggles.AutoCollect:OnChanged(function(jL)
        r1.SetCollect(jL)
    end)
    Options.CollectRarityFilter:OnChanged(function(jO)
        r1.SetCollectRarityFilter(jO)
    end)
    Options.CarryLimit:OnChanged(function(jQ)
        r1.SetCarryLimit(jQ)
    end)
    Toggles.AutoPlaceEgg:OnChanged(function(jS)
        r1.SetPlaceEgg(jS)
    end)
    Toggles.AutoHatchEgg:OnChanged(function(jU)
        r1.SetHatchEgg(jU)
    end)
    Toggles.AutoEquipBest:OnChanged(function(jW)
        r1.SetEquipBest(jW)
    end)
    Toggles.AutoTraining:OnChanged(function(jY)
        r1.SetTraining(jY)
    end)
    Toggles.AutoUpgradeDumbell:OnChanged(function(j_)
        r1.SetUpgradeDumbell(j_)
    end)
    Toggles.AutoBuyUpgrades:OnChanged(function(j1)
        r1.SetBuyUpgrades(j1)
    end)
    Options.UpgradeFilter:OnChanged(function(j3)
        r1.SetUpgradeFilter(j3)
    end)
    Toggles.AutoBuyPetSlot:OnChanged(function(j5)
        r1.SetBuyPetSlot(j5)
    end)
    Toggles.AutoBuyStaff:OnChanged(function(j7)
        r1.SetBuyStaff(j7)
    end)
    Toggles.AutoRebirth:OnChanged(function(j9)
        r1.SetRebirth(j9)
    end)
    Toggles.AutoPlaytimeRewards:OnChanged(function(kb)
        r1.SetPlaytimeRewards(kb)
    end)
    r1.SetCollectRarityFilter(Options.CollectRarityFilter.Value)
    r1.SetUpgradeFilter(Options.UpgradeFilter.Value)
    r1.SetCarryLimit(Options.CarryLimit.Value)
    task.defer(worker)
end
rT = {
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
local function sy_5()
    local connection, BI
    BI = function(kg)
        if not kg then
            return
        end
        if rT.WalkSnapshots[kg] == nil then
            rT.WalkSnapshots[kg] = kg.WalkSpeed
        end
        if rT.WalkSpeedEnabled then
            kg.WalkSpeed = rT.WalkSpeed
        end
    end
    r1.SetWalkSpeedEnabled = function(kj)
        local Ar = kj and true
        local Av = if Ar then 1 else 0
        local At = 1867 * Av + 2295 * (1 - Av)
        local Au = 582 * Av + 246 * (1 - Av)
        if not ((At * 1833 + Au * 3829 + At * Au) % 16777213 == 6737283) then
            Ar = false
        end
        rT.WalkSpeedEnabled = Ar
        local Aq_1 = rH()
        if not Aq_1 then
            return
        end
        if rT.WalkSpeedEnabled then
            BI(Aq_1)
        elseif rT.WalkSnapshots[Aq_1] ~= nil then
            Aq_1.WalkSpeed = rT.WalkSnapshots[Aq_1]
        end
    end
    r1.SetWalkSpeedValue = function(kq)
        rT.WalkSpeed = kq
        if rT.WalkSpeedEnabled then
            local Az = rH()
            if Az then
                Az.WalkSpeed = kq
            end
        end
    end
    r1.SetInfJump = function(kv)
        local AE = kv and true or false
        rT.InfJump = AE
        if rT.InfJumpConn then
            rT.InfJumpConn:Disconnect()
            rT.InfJumpConn = nil
        end
        if not rT.InfJump then
            return
        end
        rT.InfJumpConn = ru.UserInputService.JumpRequest:Connect(function()
            local AB = not sq() or not rT.InfJump
            if AB then
                return
            end
            local AB_1 = rH()
            if AB_1 then
                AB_1:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end)
    end
    r1.SetNoClip = function(kH)
        local AR = kH and true or false
        rT.NoClip = AR
        if rT.NoClipConn then
            rT.NoClipConn:Disconnect()
            rT.NoClipConn = nil
        end
        local Character = LocalPlayer.Character
        if not rT.NoClip then
            for k, v in pairs(rT.NoClipSnapshots) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(rT.NoClipSnapshots)
            return
        end
        local function AP(kQ)
            local AG = kQ:IsA("BasePart") and rT.NoClipSnapshots[kQ] == nil
            if AG then
                rT.NoClipSnapshots[kQ] = kQ.CanCollide
                kQ.CanCollide = false
            end
        end
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                AP(descendant)
            end
            rT.NoClipConn = Character.DescendantAdded:Connect(function(kV)
                if rT.NoClip then
                    AP(kV)
                end
            end)
        end
    end
    r1.SetFly = function(kY)
        local Bc = kY and true or false
        rT.Fly = Bc
        if rT.FlyConn then
            rT.FlyConn:Disconnect()
            rT.FlyConn = nil
        end
        local Bb_1 = rH()
        local Bc_1 = r7()
        if not rT.Fly then
            if rT.FlySnap and Bb_1 then
                Bb_1.PlatformStand = rT.FlySnap.PlatformStand
            end
            rT.FlySnap = nil
            if Bc_1 then
                Bc_1.AssemblyLinearVelocity = Vector3.zero
            end
            return
        end
        if Bb_1 then
            rT.FlySnap = { PlatformStand = Bb_1.PlatformStand }
            Bb_1.PlatformStand = true
        end
        rT.FlyConn = ru.RunService.RenderStepped:Connect(function()
            local A4 = not sq() or not rT.Fly
            if A4 then
                return
            end
            if ru.UserInputService:GetFocusedTextBox() then
                return
            end
            local A4_1 = r7()
            local CurrentCamera = sa.CurrentCamera
            if not (A4_1 and CurrentCamera) then
                return
            end
            local A6_1 = Vector3.zero
            if ru.UserInputService:IsKeyDown(Enum.KeyCode.W) then
                A6_1 += CurrentCamera.CFrame.LookVector
            end
            if ru.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                A6_1 -= CurrentCamera.CFrame.LookVector
            end
            if ru.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                A6_1 -= CurrentCamera.CFrame.RightVector
            end
            if ru.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                A6_1 += CurrentCamera.CFrame.RightVector
            end
            if ru.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                A6_1 += Vector3.yAxis
            end
            if ru.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                A6_1 -= Vector3.yAxis
            end
            if A6_1.Magnitude > 0 then
                A4_1.AssemblyLinearVelocity = A6_1.Unit * rT.FlySpeed
            else
                A4_1.AssemblyLinearVelocity = Vector3.zero
            end
            A4_1.CFrame = CFrame.new(A4_1.Position, A4_1.Position + CurrentCamera.CFrame.LookVector)
        end)
    end
    r1.SetFlySpeed = function(lh)
        rT.FlySpeed = lh
    end
    r1.SetInstantProximityPrompt = function(lj)
        local Bs
        local Bu = lj and true or false
        rT.InstantPP = Bu
        if rT.InstantConn then
            rT.InstantConn:Disconnect()
            rT.InstantConn = nil
        end
        local function Bt_1()
            for k, v in pairs(rT.InstantSnapshots) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(rT.InstantSnapshots)
        end
        if not rT.InstantPP then
            Bt_1()
            return
        end
        Bs = function(lr)
            if not lr:IsA("ProximityPrompt") then
                return
            end
            if rT.InstantSnapshots[lr] == nil then
                rT.InstantSnapshots[lr] = {
                    HoldDuration = lr.HoldDuration,
                    MaxActivationDistance = lr.MaxActivationDistance,
                    RequiresLineOfSight = lr.RequiresLineOfSight
                }
            end
            lr.HoldDuration = 0
            lr.MaxActivationDistance = 50
            lr.RequiresLineOfSight = false
        end
        for i, descendant in ipairs(sa:GetDescendants()) do
            Bs(descendant)
        end
        rT.InstantConn = sa.DescendantAdded:Connect(function(lw)
            if rT.InstantPP then
                Bs(lw)
            end
        end)
    end
    local function onCharacterAdded(lA)
        task.defer(function()
            if not sq() then
                return
            end
            local Humanoid = lA:WaitForChild("Humanoid", 10)
            if not Humanoid then
                return
            end
            if rT.WalkSpeedEnabled then
                BI(Humanoid)
            end
            if rT.NoClip then
                r1.SetNoClip(true)
            end
            if rT.Fly then
                r1.SetFly(true)
            end
        end)
    end
    if LocalPlayer.Character then
        onCharacterAdded(LocalPlayer.Character)
    end
    connection = LocalPlayer.CharacterAdded:Connect(onCharacterAdded)
    r1.Track(function()
        connection:Disconnect()
        r1.SetInfJump(false)
        r1.SetNoClip(false)
        r1.SetFly(false)
        r1.SetInstantProximityPrompt(false)
        r1.SetWalkSpeedEnabled(false)
    end)
end
sd = {
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
local function sC_3()
    local function mb()
        if not sa.CurrentCamera then
            return false
        end
        local BL_1 = not rG(ru.VirtualUser.CaptureController) or not rG(ru.VirtualUser.ClickButton2)
        if BL_1 then
            return false
        end
        local BL_2 = pcall(function()
            ru.VirtualUser:CaptureController()
            ru.VirtualUser:ClickButton2(Vector2.new())
        end)
        if BL_2 then
            sd.AfkCount = sd.AfkCount + 1
        end
        return BL_2
    end
    r1.SetAntiAfk = function(mo)
        local BZ = mo and true or false
        sd.AntiAfk = BZ
        if sd.AfkConn then
            sd.AfkConn:Disconnect()
            sd.AfkConn = nil
        end
        if sd.AfkTask then
            pcall(task.cancel, sd.AfkTask)
            sd.AfkTask = nil
        end
        if not sd.AntiAfk then
            return
        end
        sd.AfkConn = LocalPlayer.Idled:Connect(function()
            local BQ = sq() and sd.AntiAfk
            if BQ then
                mb()
            end
        end)
        sd.AfkTask = task.spawn(function()
            local BS = os.clock()
            while true do
                local BT = sq() and sd.AntiAfk
                if BT then
                    task.wait(1)
                    local BT_1 = not sq() or not sd.AntiAfk
                    if BT_1 then
                        break
                    end
                    if os.clock() - BS >= 60 then
                        BS = os.clock()
                        mb()
                    end
                    continue
                end
                break
            end
        end)
    end
    r1.SetNoGameplayPaused = function(mG)
        local B1 = mG and true or false
        sd.NoGameplayPaused = B1
    end
    r1.SetAutoReconnect = function(mI)
        local B9 = mI and true or false
        sd.AutoReconnect = B9
        for i, v in ipairs(sd.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(sd.ReconnectConns)
        if not sd.AutoReconnect then
            return
        end
        table.insert(sd.ReconnectConns, ru.TeleportService.TeleportInitFailed:Connect(function()
            local B3 = not sq()
            local B7 = if B3 then 1 else 0
            local B5 = 3114 * B7 + 3838 * (1 - B7)
            local B6 = 1122 * B7 + 1587 * (1 - B7)
            if not ((B5 * 4020 + B6 * 4013 + B5 * B6) % 16777213 == 3737561) then
                B3 = not sd.AutoReconnect
            end
            if B3 then
                return
            end
            task.wait(1)
            local B3_1 = sq() and sd.AutoReconnect
            if B3_1 then
                pcall(function()
                    ru.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        end))
    end
    r1.SetDisable3D = function(mX)
        local Ci = mX and true or false
        sd.Disable3D = Ci
        pcall(function()
            ru.RunService:Set3dRenderingEnabled(not sd.Disable3D)
        end)
    end
    r1.SetFpsBoost = function(m1)
        local CH
        local CJ = m1 and true or false
        sd.FpsBoost = CJ
        if sd.FpsConn then
            sd.FpsConn:Disconnect()
            sd.FpsConn = nil
        end
        local function CI_1()
            for k, v in pairs(sd.FpsSnapshots) do
                local Cs = k
                if Cs and Cs.Parent then
                    for k, v in pairs(v) do
                        local Cy = k
                        local CA = v
                        pcall(function()
                            Cs[Cy] = CA
                        end)
                    end
                end
            end
            table.clear(sd.FpsSnapshots)
        end
        if not sd.FpsBoost then
            CI_1()
            return
        end
        CH = function(ne)
            if sd.FpsSnapshots[ne] then
                return
            end
            local CB = ne:IsA("ParticleEmitter") or ne:IsA("Trail") or ne:IsA("Beam") or ne:IsA("Fire")
            local CF = if CB then 1 else 0
            local CD = 1390 * CF + 75 * (1 - CF)
            local CE = 144 * CF + 3645 * (1 - CF)
            if not ((CD * 956 + CE * 2965 + CD * CE) % 16777213 == 1955960) then
                CB = ne:IsA("Smoke")
            end
            if not CB then
                CB = ne:IsA("Sparkles")
            end
            if CB then
                sd.FpsSnapshots[ne] = { Enabled = ne.Enabled }
                ne.Enabled = false
            end
        end
        for i, descendant in ipairs(sa:GetDescendants()) do
            CH(descendant)
        end
        if sd.FpsSnapshots[ru.Lighting] == nil then
            sd.FpsSnapshots[ru.Lighting] = { GlobalShadows = ru.Lighting.GlobalShadows, FogEnd = ru.Lighting.FogEnd }
            ru.Lighting.GlobalShadows = false
        end
        sd.FpsConn = sa.DescendantAdded:Connect(function(nl)
            if sd.FpsBoost then
                CH(nl)
            end
        end)
    end
    r1.Track(function()
        r1.SetAntiAfk(false)
        r1.SetAutoReconnect(false)
        r1.SetDisable3D(false)
        r1.SetFpsBoost(false)
    end)
end
local function sz_6()
    rJ(rD.Settings)
    local MenuGroup = rD.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    Library.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = rD.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            Library:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(ny)
        r1.SetAntiAfk(ny)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(nB)
        r1.SetNoGameplayPaused(nB)
    end)
    Toggles.AutoReconnect:OnChanged(function(nD)
        r1.SetAutoReconnect(nD)
    end)
    Toggles.Disable3DRendering:OnChanged(function(nF)
        r1.SetDisable3D(nF)
    end)
    Toggles.FPSBoost:OnChanged(function(nH)
        r1.SetFpsBoost(nH)
    end)
    ThemeManager:SetLibrary(Library)
    ThemeManager:SetFolder("MyScriptHub")
    ThemeManager:SaveDefault("Evil Hello Kitty")
    ThemeManager:ApplyToTab(rD.Settings)
    SaveManager:SetLibrary(Library)
    SaveManager:IgnoreThemeSettings()
    SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
    SaveManager:SetFolder("OuroborosHub/OpenSeaForAnimals")
    local C4_2 = SaveManager:BuildConfigSection(rD.Settings)
    if C4_2 then
        C4_2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Default = "", Finished = true, AllowEmpty = true })
        C4_2:AddButton({
            Text = "Export Config to Clipboard",
            Func = function()
                local CU_1
                local CT_1
                CT_1, CU_1 = pcall(function()
                    if rG(SaveManager.ExportConfig) then
                        return SaveManager:ExportConfig()
                    end
                    error("ExportConfig unavailable")
                end)
                local CV = CT_1 and type(CU_1) == "string"
                if CV then
                    rw(CU_1, "Copied config")
                else
                    Library:Notify("Export unavailable", 3)
                end
            end
        })
        C4_2:AddButton({
            Text = "Import Config from Clipboard Text",
            Func = function()
                local CY
                CY = Options.SaveManager_ImportSource and Options.SaveManager_ImportSource.Value or ""
                if CY == "" then
                    Library:Notify("Paste a config first", 3)
                    return
                end
                local CZ_1 = pcall(function()
                    if rG(SaveManager.ImportConfig) then
                        SaveManager:ImportConfig(CY)
                    elseif rG(SaveManager.LoadConfigFromJSON) then
                        SaveManager:LoadConfigFromJSON(CY)
                    else
                        error("Import unavailable")
                    end
                end)
                if CZ_1 then
                    Options.SaveManager_ImportSource:SetValue("")
                    Library:Notify("Imported config", 3)
                else
                    Library:Notify("Import failed", 3)
                end
            end
        })
    end
    pcall(function()
        ThemeManager:LoadDefault()
    end)
    pcall(function()
        SaveManager:LoadAutoloadConfig()
    end)
end
if not rC and (not rC) and (not rC and not sz_6 or (not sz_6 or rC)) and not (not rC and (not rC) and (not rC and not sz_6 or (not sz_6 or rC))) then
    su_5()
    Toggles()
    sC_3()
    sy_5()
    sD()
    r1()
    fn709.SetAntiAfk(sz_6.AntiAfk.Value)
    fn709.SetNoGameplayPaused(sz_6.NoGameplayPaused.Value)
else
    sy_5()
    sC_3()
    sD()
    su_5()
    fn709()
    sz_6()
    r1.SetAntiAfk(Toggles.AntiAfk.Value)
    r1.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
end
if Toggles.HideUIOnStart.Value then
    pcall(function()
        Library:Toggle(false)
    end)
end
Library:Notify("Open Sea For Animals v0.2 loaded", 4)
