local fns = {}
local Window, Modules, FP_6, FP_9, FP_12
local uB
local tB
local LeaveTreadmill
local State
local ti
local t_
local uH
local tH
local uo
local to
local uN
local tN
local tu
local uT
local tT
local uh
local uZ
local tZ
local tG
local un
local tn
local ut
local tt
local ua
local uS
local tS
local QuoteSellCreature
local tz
local ug
local tY
local uF
local TreadmillConfigurations
local tm
local t3
local TrailConfigurations
local us
local ts
local RequestRollerUpgrade
local tR
local uy
local ty
local uX
local tX
local Toggles
local tE
local ul
local u2
local uK
local tK
local ur
local tr
local RequestSell
local EquipBestPets
local ux
local tx
local ue
local tD
local uk
local u1
local tk
local t1
local tJ
local uq
local tq
local t7
local Options
local tw
local ud
local uV
local uC
local tC
local uj
local u0
local tj
local uI
local tI
local RollTreadmillCreature
local tp
local t6
local uO
local tv
local uc
local LocalPlayer
function fns.fn6()
    if uj() then
        if State.AutoPlace then
            tE()
        else
            tG()
        end
    else
        local Bu_1 = tn() and not State.AutoPlace
        if Bu_1 then
            tG()
        end
    end
    local Bu_2 = State.AutoPlace
    if Bu_2 then
        local Bv_1 = (uj())
        local BC_1 = if Bv_1 then 1 else 0
        local BA_1 = 951 * BC_1 + 1827 * (1 - BC_1)
        local BB_1 = 1506 * BC_1 + 3840 * (1 - BC_1)
        if not ((BA_1 * 3031 + BB_1 * 1705 + BA_1 * BB_1) % 16777213 == 6882417) then
            Bv_1 = tS()
        end
        local BC_2 = if Bv_1 then 1 else 0
        local BA_2 = 431 * BC_2 + 48 * (1 - BC_2)
        local BB_2 = 1884 * BC_2 + 278 * (1 - BC_2)
        if not ((BA_2 * 3995 + BB_2 * 704 + BA_2 * BB_2) % 16777213 == 3860185) then
            Bv_1 = t6()
        end
        Bu_2 = Bv_1
    end
    if Bu_2 then
        tE()
    end
    if State.AutoHatch then
        tR()
    end
    if State.AutoSteal then
        if uj() then
            if State.AutoPlace then
                tE()
            else
                tG()
            end
        else
            local BC_3 = if tn() then 1 else 0
            if BC_3 == 1 then
                tG()
            end
        end
        local Bu_3 = not uj() and not tn() and tq()
        if Bu_3 then
            uK()
        end
    end
    if ut() then
        tx()
    else
        local Bu_4 = ty() and not State.AutoTreadmillFull
        if Bu_4 then
            local Bu_5 = State.AutoSteal and tq()
            local Bu_6 = State.AutoPlace
            if Bu_6 then
                local Bw_1 = tS() or t6()
                Bu_6 = Bw_1
            end
            local Bw_2 = Bu_6
            local Bu_7 = State.AutoTreadmillIdle
            if Bu_7 then
                local Bx_1 = tS() or Bw_2
                if not Bx_1 then
                    local By_1 = State.AutoHatch and ux()
                    Bx_1 = By_1
                end
                local By_2 = Bx_1
                local BC_4 = if By_2 then 1 else 0
                local BA_3 = 2673 * BC_4 + 2465 * (1 - BC_4)
                local BB_3 = 1432 * BC_4 + 2121 * (1 - BC_4)
                if not ((BA_3 * 551 + BB_3 * 2985 + BA_3 * BB_3) % 16777213 == 9575079) then
                    By_2 = Bu_5
                end
                Bu_7 = By_2
            end
            if Bu_5 or Bw_2 or Bu_7 then
                uk()
            end
        end
    end
    local Bu_9 = os.clock()
    if State.AutoUpgradeTreadmill and Bu_9 - tz.Treadmill >= 1.5 then
        tz.Treadmill = Bu_9
        to("Treadmill")
    end
    if State.AutoUpgradeLuck and Bu_9 - tz.Luck >= 1.5 then
        tz.Luck = Bu_9
        to("Luck")
    end
    if State.AutoUpgradeSize and Bu_9 - tz.Size >= 1.5 then
        tz.Size = Bu_9
        to("Size")
    end
    if State.AutoUpgradePetSlots and Bu_9 - tz.Slots >= 2 then
        tz.Slots = Bu_9
        uo()
    end
    if State.AutoBuyTrails and Bu_9 - tz.Trails >= 3 then
        tz.Trails = Bu_9
        uV()
    end
    if State.AutoEquipBestTrail and Bu_9 - tz.EquipTrail >= 3 then
        tz.EquipTrail = Bu_9
        uZ()
    end
    if State.AutoEquipBestPets and Bu_9 - tD >= 10 then
        tD = Bu_9
        pcall(function()
            EquipBestPets:FireServer()
        end)
    end
    if State.AutoSellEggs and Bu_9 - tz.SellEggs >= 4 then
        tz.SellEggs = Bu_9
        tN()
    end
    if State.AutoSellPets and Bu_9 - tz.SellPets >= 4 then
        tz.SellPets = Bu_9
        uX()
    end
end
function fns.fn10()
    local Character = LocalPlayer.Character
    local wk = Character and Character:FindFirstChild("HumanoidRootPart")
    return wk
end
function fns.fn28(jw)
    local BM = jw ~= ""
    local BN = type(jw) == "string" and BM
    if BN then
        State.SellEggsMode = jw
    end
end
function fns.fn81(j_)
    local CJ = not j_ or not j_:IsA("ProximityPrompt")
    if CJ then
        return
    end
    if t_[j_] == nil then
        t_[j_] = {
            HoldDuration = j_.HoldDuration,
            MaxActivationDistance = j_.MaxActivationDistance,
            RequiresLineOfSight = j_.RequiresLineOfSight
        }
    end
    if State.InstantPrompt then
        j_.HoldDuration = 0
        j_.MaxActivationDistance = 50
        j_.RequiresLineOfSight = false
    else
        local CJ_1 = t_[j_]
        if CJ_1 then
            j_.HoldDuration = CJ_1.HoldDuration
            j_.MaxActivationDistance = CJ_1.MaxActivationDistance
            j_.RequiresLineOfSight = CJ_1.RequiresLineOfSight
        end
    end
end
function fns.fn83()
    if ty() then
        pcall(function()
            LeaveTreadmill:FireServer()
        end)
        task.wait(0.2)
    end
end
function fns.fn85(jU)
    local Cp = jU and true or false
    State.AutoUpgradePetSlots = Cp
    tm()
end
function fns.fn140()
    local zr = uS()
    if not zr then
        return false
    end
    local EggHatch = zr:FindFirstChild("EggHatch")
    if not EggHatch then
        return false
    end
    for i, child in ipairs(EggHatch:GetChildren()) do
        local zr_1 = child:IsA("Model") and child:GetAttribute("IsEgg") == true and not child:GetAttribute("HatchingStarted")
        if zr_1 then
            local zr_2 = child:GetAttribute("HatchReady") == true
            local zs_1 = tonumber(child:GetAttribute("HatchProgress")) or 0
            local zs_2 = tonumber(child:GetAttribute("HatchDuration")) or 0
            local zu = zr_2
            if not zu then
                zu = zs_2 > 0 and zs_1 >= zs_2
            end
            if zu then
                return true
            end
        end
    end
    return false
end
function fns.fn146(aB)
    for k in pairs(aB) do
        return true
    end
    return false
end
function fns.fn160(jG)
    local BZ = jG and true or false
    State.AutoPlace = BZ
    tm()
end
function fns.fn164()
    local Al = {}
    local Trails = TrailConfigurations.Trails
    if type(Trails) ~= "table" then
        return Al
    end
    for k, v in pairs(Trails) do
        local Am_1 = type(v) == "table" and v.ID and not v.RequiredRolls
        if Am_1 then
            local Am_2 = tonumber(v.Price) or 0
            local insert = table.insert
            local ID = v.ID
            local Ap = v.Name or v.DisplayName or v.ID
            insert(Al, { ID = ID, Price = Am_2, Name = Ap })
        end
    end
    table.sort(Al, function(g2, g3)
        return g2.Price < g3.Price
    end)
    return Al
end
function fns.fn190()
    local Trails = LocalPlayer:FindFirstChild("Trails")
    local Ay = {}
    if not Trails then
        return Ay, nil
    end
    local Equipped = Trails:FindFirstChild("Equipped")
    for i, child in ipairs(Trails:GetChildren()) do
        if child.Name ~= "Equipped" then
            Ay[child.Name] = true
        end
    end
    return Ay, Equipped
end
function fns.fn198(jn)
    local BK = jn and true or false
    State.AutoSteal = BK
    tm()
end
function fns.fn203()
    local wT = {}
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if not Backpack then
        return wT
    end
    for i, child in ipairs(Backpack:GetChildren()) do
        if us(child) then
            table.insert(wT, child)
        end
    end
    return wT
end
function fns.fn213(lp)
    local DT = tonumber(lp) or 60
    State.FlySpeed = DT
end
function fns.fn220()
    return #tj()
end
function fns.fn230()
    local yu = -1
    local yv
    local yw
    local Eggs = tI:FindFirstChild("Eggs")
    if Eggs then
        for i, child in ipairs(Eggs:GetChildren()) do
            if uI(child.Name) then
                for i, child in ipairs(child:GetChildren()) do
                    if child.Name == "EggSpawn" then
                        local SpawnedEgg = child:FindFirstChild("SpawnedEgg")
                        local yy_1 = SpawnedEgg and uc(tw(SpawnedEgg))
                        if yy_1 then
                            local yy_2 = tv(SpawnedEgg)
                            if yy_2 then
                                local yz_1 = tonumber(SpawnedEgg:GetAttribute("WeightKG")) or 0
                                if yz_1 > yu then
                                    yu = yz_1
                                    yv = SpawnedEgg
                                    yw = yy_2
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    local DroppedEggs = tI:FindFirstChild("DroppedEggs")
    if DroppedEggs then
        for i, child in ipairs(DroppedEggs:GetChildren()) do
            if child.Name == "DroppedEgg" then
                local yx_3 = uF(child)
                local yy_3 = yx_3 == nil or uI(yx_3)
                local yx_4 = yy_3 and uc(tw(child))
                if yx_4 then
                    local yx_5 = ul(child)
                    if yx_5 then
                        local yy_4 = tonumber(child:GetAttribute("WeightKG")) or 0
                        if yy_4 > yu then
                            yu = yy_4
                            yv = child
                            yw = yx_5
                        end
                    end
                end
            end
        end
    end
    return yv, yw, yu
end
function fns.onCharacterAdded()
    task.wait(0.5)
    if not ud() then
        return
    end
    if State.WalkSpeedEnabled then
        ts.SetWalkSpeedEnabled(true)
    end
    if State.Fly then
        ts.SetFly(true)
    end
    if State.NoClip then
        ts.SetNoClip(true)
    end
end
function fns.fn297()
    gethui = tY
end
function fns.fn299(dV)
    if not dV then
        return nil
    end
    local PickupDroppedEgg = dV:FindFirstChild("PickupDroppedEgg", true)
    local ys = PickupDroppedEgg and PickupDroppedEgg:IsA("ProximityPrompt") and PickupDroppedEgg.Enabled
    if ys then
        return PickupDroppedEgg
    end
    return nil
end
function fns.fn301(ib)
    if ug[ib] then
        ug[ib] = nil
    end
end
function fns.fn315(aI)
    if not tt(State.StealRarities) then
        return true
    end
    local v3 = aI ~= nil and State.StealRarities[tostring(aI)] == true
    return v3
end
function fns.fn353()
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local wB = leaderstats and leaderstats:FindFirstChild("Money")
    local wA_1 = wB
    if wB then
        wB = tonumber(wA_1.Value)
    end
    return wB or 0
end
function fns.fn384(bg)
    local ws = not bg
    local ww = if ws then 1 else 0
    local wu = 730 * ww + 51 * (1 - ww)
    local wv = 2623 * ww + 3624 * (1 - ww)
    if not ((wu * 1023 + wv * 3580 + wu * wv) % 16777213 == 12051920) then
        ws = not bg:IsA("BasePart")
    end
    if ws then
        return false
    end
    return tJ(bg.Position)
end
function fns.fn395()
    for k in pairs(ug) do
        ug[k] = nil
    end
    ts.SetInfJump(false)
    ts.SetNoClip(false)
    ts.SetFly(false)
    ts.SetWalkSpeedEnabled(false)
    local DV = tr()
    if DV then
        local OuroFlyBV = DV:FindFirstChild("OuroFlyBV")
        if OuroFlyBV then
            OuroFlyBV:Destroy()
        end
    end
    local DV_1 = uB()
    if DV_1 then
        DV_1.PlatformStand = false
    end
end
function fns.fn400()
    local wR = uj() or tn() ~= nil
    return wR
end
function fns.fn411(jT)
    local Cm = jT and true or false
    State.AutoUpgradeSize = Cm
    tm()
end
function fns.fn412(l_)
    local DiscordGroup = l_:AddLeftGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = un,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    return DiscordGroup
end
function fns.fn459(jW)
    local Cy = jW and true or false
    State.AutoEquipBestTrail = Cy
    tm()
end
function fns.fn475(jV)
    local Cs = jV and true
    local Cw = if Cs then 1 else 0
    local Cu = 1132 * Cw + 3099 * (1 - Cw)
    local Cv = 1855 * Cw + 2290 * (1 - Cw)
    if not ((Cu * 2349 + Cv * 3393 + Cu * Cv) % 16777213 == 11052943) then
        Cs = false
    end
    State.AutoBuyTrails = Cs
    tm()
end
function fns.fn481(jJ)
    local B1 = jJ and true or false
    State.AutoHatch = B1
    tm()
end
function fns.fn503()
    local wP = t3()
    if not wP then
        return false
    elseif wP:GetAttribute("CarryingEgg") == true then
        return true
    else
        return wP:FindFirstChild("CarriedEgg") ~= nil
    end
end
function fns.fn509(kq)
    local C7 = kq and true or false
    State.WalkSpeedEnabled = C7
    local C6_1 = uB()
    if C6_1 then
        if State.WalkSpeedEnabled then
            if State._prevWalkSpeed == nil then
                State._prevWalkSpeed = C6_1.WalkSpeed
            end
            C6_1.WalkSpeed = State.WalkSpeedValue
        elseif State._prevWalkSpeed ~= nil then
            C6_1.WalkSpeed = State._prevWalkSpeed
            State._prevWalkSpeed = nil
        end
    end
end
function fns.fn528()
    uk()
    tX()
    local xS = tT()
    local xT = xS and xS:IsA("BasePart")
    if xT then
        tJ(xS.Position)
        task.wait(0.25)
    end
    return u2()
end
function fns.fn538(k_)
    local DR = k_ and true or false
    State.Fly = DR
    if t7.Fly then
        t7.Fly:Disconnect()
        t7.Fly = nil
    end
    local DQ_1 = tr()
    if DQ_1 then
        local OuroFlyBV = DQ_1:FindFirstChild("OuroFlyBV")
        if OuroFlyBV then
            OuroFlyBV:Destroy()
        end
    end
    local DQ_2 = uB()
    if DQ_2 then
        DQ_2.PlatformStand = false
    end
    if not State.Fly then
        return
    end
    t7.Fly = ti.RunService.RenderStepped:Connect(function()
        local DG = not ud() or not State.Fly
        if DG then
            return
        end
        if ti.UserInputService:GetFocusedTextBox() then
            return
        end
        local DG_1 = tr()
        local DH = uB()
        if not DG_1 or not DH then
            return
        end
        local DI_1 = DG_1:FindFirstChild("OuroFlyBV")
        if not DI_1 then
            DI_1 = Instance.new("BodyVelocity")
            DI_1.Name = "OuroFlyBV"
            DI_1.MaxForce = Vector3.new(100000, 100000, 100000)
            DI_1.Parent = DG_1
        end
        local CurrentCamera = tI.CurrentCamera
        local DJ_1 = Vector3.zero
        if CurrentCamera then
            local LookVector = CurrentCamera.CFrame.LookVector
            local RightVector = CurrentCamera.CFrame.RightVector
            local DK_1 = Vector3.new(LookVector.X, 0, LookVector.Z)
            local DL_1 = Vector3.new(RightVector.X, 0, RightVector.Z)
            if DK_1.Magnitude > 0 then
                DK_1 = DK_1.Unit
            end
            if DL_1.Magnitude > 0 then
                DL_1 = DL_1.Unit
            end
            local DP = if ti.UserInputService:IsKeyDown(Enum.KeyCode.W) then 1 else 0
            if DP == 1 then
                DJ_1 += DK_1
            end
            if ti.UserInputService:IsKeyDown(Enum.KeyCode.S) then
                DJ_1 -= DK_1
            end
            if ti.UserInputService:IsKeyDown(Enum.KeyCode.D) then
                DJ_1 += DL_1
            end
            if ti.UserInputService:IsKeyDown(Enum.KeyCode.A) then
                DJ_1 -= DL_1
            end
        end
        local DG_3 = Vector3.zero
        if DJ_1.Magnitude > 0 then
            DG_3 = DJ_1.Unit * State.FlySpeed
        end
        if ti.UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            DG_3 += Vector3.new(0, State.FlySpeed, 0)
        end
        if ti.UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
            DG_3 -= Vector3.new(0, State.FlySpeed, 0)
        end
        DI_1.Velocity = DG_3
        DH.PlatformStand = true
    end)
end
function fns.fn547(kv)
    local Dc = tonumber(kv) or 32
    State.WalkSpeedValue = Dc
    if State.WalkSpeedEnabled then
        local Dc_1 = uB()
        if Dc_1 then
            Dc_1.WalkSpeed = State.WalkSpeedValue
        end
    end
end
function fns.fn548()
    if not ty() then
        if not tH() then
            return
        end
    end
    pcall(function()
        RollTreadmillCreature:InvokeServer()
    end)
end
local function fn556()
    if State.AutoTreadmillFull then
        return true
    elseif State.AutoTreadmillIdle then
        local zF = uj() or tn()
        if zF then
            return false
        end
        local zF_1 = State.AutoPlace and t6()
        if zF_1 then
            return false
        end
        local zF_2 = State.AutoSteal and tq()
        if zF_2 then
            return false
        end
        local zF_3 = State.AutoHatch and ux()
        if zF_3 then
            return false
        end
        return true
    else
        return false
    end
end
local function fn563(jM)
    local B7 = jM and true
    local Ce = if B7 then 1 else 0
    local Cc = 2631 * Ce + 755 * (1 - Ce)
    local Cd = 596 * Ce + 3905 * (1 - Ce)
    if not ((Cc * 349 + Cd * 768 + Cc * Cd) % 16777213 == 2944023) then
        B7 = false
    end
    State.AutoSellEggs = B7
    tm()
end
local function fn571(bt)
    local wD = not bt or not bt:IsA("Tool")
    if wD then
        return false
    end
    local wD_1 = bt:GetAttribute("OriginalName") or bt.Name
    local Eggs = tZ:FindFirstChild("Eggs")
    local wF = Eggs and Eggs:FindFirstChild(tostring(wD_1))
    if wF then
        return true
    elseif bt:GetAttribute("EggScale") ~= nil then
        return true
    elseif bt:GetAttribute("IsEgg") == true then
        return true
    else
        return false
    end
end
local function fn605()
    return tI:FindFirstChild("Plot_" .. LocalPlayer.Name)
end
local function fn652(lU, lV)
    local D2 = false
    if uq(setclipboard) then
        D2 = pcall(setclipboard, lU)
    elseif uq(toclipboard) then
        D2 = pcall(toclipboard, lU)
    end
    if D2 then
        local D2_1 = lV or "Copied"
        u1:Notify(D2_1, 2)
    else
        u1:Notify("Clipboard unavailable", 2)
    end
end
local function fn681(jy)
    local BP = jy ~= ""
    local BQ = type(jy) == "string" and BP
    if BQ then
        State.SellPetsMode = jy
    end
end
local function fn697(R)
    local vN = typeof(cloneref) == "function" and typeof(R) == "Instance"
    if vN then
        return cloneref(R)
    end
    return R
end
local function fn707()
    local ep = tK()
    return ep ~= nil
end
local function fn710(jA)
    local BT = jA and true or false
    State.AutoTreadmillFull = BT
    if State.AutoTreadmillFull then
        State.AutoTreadmillIdle = false
    end
    tm()
end
local function fn711(jS)
    local Cj = jS and true or false
    State.AutoUpgradeLuck = Cj
    tm()
end
local function fn732()
    local w1 = t3()
    local w2 = w1 ~= nil and w1:GetAttribute("OnTreadmill") == true
    return w2
end
local function fn740(jY)
    local CE = jY and true
    local CI = if CE then 1 else 0
    local CG = 443 * CI + 3800 * (1 - CI)
    local CH = 455 * CI + 1571 * (1 - CI)
    if not ((CG * 213 + CH * 3407 + CG * CH) % 16777213 == 1846109) then
        CE = false
    end
    State.AutoSellPets = CE
    tm()
end
local function fn742()
    return #tj() > 0
end
local function fn743()
    local BD = State.AutoSteal
    local BI = if BD then 1 else 0
    local BG = 1232 * BI + 162 * (1 - BI)
    local BH = 3065 * BI + 1984 * (1 - BI)
    if not ((BG * 162 + BH * 26 + BG * BH) % 16777213 == 4055354) then
        BD = State.AutoTreadmillFull
    end
    if not BD then
        BD = State.AutoTreadmillIdle
    end
    local BI_1 = if BD then 1 else 0
    local BG_1 = 3345 * BI_1 + 2458 * (1 - BI_1)
    local BH_1 = 3479 * BI_1 + 743 * (1 - BI_1)
    if not ((BG_1 * 2931 + BH_1 * 1779 + BG_1 * BH_1) % 16777213 == 10853378) then
        BD = State.AutoPlace
    end
    if not BD then
        BD = State.AutoHatch
    end
    if not BD then
        BD = State.AutoSellEggs
    end
    if not BD then
        BD = State.AutoUpgradeTreadmill
    end
    if not BD then
        BD = State.AutoUpgradeLuck
    end
    local BI_2 = if BD then 1 else 0
    local BG_2 = 2635 * BI_2 + 1532 * (1 - BI_2)
    local BH_2 = 3430 * BI_2 + 2335 * (1 - BI_2)
    if not ((BG_2 * 4012 + BH_2 * 3609 + BG_2 * BH_2) % 16777213 == 15211327) then
        BD = State.AutoUpgradeSize
    end
    if not BD then
        BD = State.AutoUpgradePetSlots
    end
    if not BD then
        BD = State.AutoBuyTrails
    end
    if not BD then
        BD = State.AutoEquipBestTrail
    end
    if not BD then
        BD = State.AutoEquipBestPets
    end
    if not BD then
        BD = State.AutoSellPets
    end
    if BD then
        if not ug.main then
            uC("main", 0.55, ua)
        end
    else
        u0("main")
    end
end
local function fn756(b3)
    if not b3 then
        return nil
    end
    local w4 = b3:FindFirstChild("Root") or b3.PrimaryPart or b3:FindFirstChildWhichIsA("BasePart", true)
    return w4
end
local function fn770(kz)
    local Dk = kz and true or false
    State.InfJump = Dk
    if t7.InfJump then
        t7.InfJump:Disconnect()
        t7.InfJump = nil
    end
    if not State.InfJump then
        return
    end
    t7.InfJump = ti.UserInputService.JumpRequest:Connect(function()
        local Dh = not ud() or not State.InfJump
        if Dh then
            return
        end
        local Dh_1 = uB()
        if Dh_1 then
            Dh_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
end
local function fn776(lP, lQ, lR)
    return string.format("<b>%s</b> %s %s", lP, tp("-", "#5a6070"), tp(lQ, lR))
end
local function fn780()
    local zX = uH()
    if #zX == 0 then
        return
    end
    local attr = LocalPlayer:GetAttribute("EquippedTreadmill")
    local zZ
    for i, v in ipairs(zX) do
        if v.id == attr then
            zZ = i
            break
        end
    end
    if not zZ or zZ >= #zX then
        return
    end
    local zY_2 = zX[zZ + 1]
    local zX_1 = zY_2.Price > 0 and t1() < zY_2.Price
    if zX_1 then
        return
    end
    pcall(function()
        RequestRollerUpgrade:InvokeServer("Treadmill", "One")
    end)
end
local function fn790(aR)
    local attr = aR:GetAttribute("Zone")
    if type(attr) == "number" then
        return "Zone" .. tostring(attr)
    end
    local wd = attr ~= ""
    local we = type(attr) == "string" and wd
    if we then
        if string.match(attr, "^Zone%d+$") then
            return attr
        elseif tonumber(attr) then
            return "Zone" .. tostring(attr)
        else
            return nil
        end
    else
        return nil
    end
end
local function fn816(dP)
    if not dP then
        return nil
    end
    for i, descendant in ipairs(dP:GetDescendants()) do
        local yh = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if yh then
            local lower = string.lower
            local yi = descendant.ActionText or ""
            local yj = lower(yi)
            if string.find(yj, "steal", 1, true) then
                return descendant
            end
        end
    end
    return dP:FindFirstChildWhichIsA("ProximityPrompt", true)
end
local function fn827()
    local xo = uS()
    if not xo then
        return nil
    end
    local Spawn = xo:FindFirstChild("Spawn")
    local xp_4
    local xq = Spawn and Spawn:IsA("BasePart")
    if xq then
        return Spawn
    end
    local Plots = tI:FindFirstChild("Plots")
    local EggHatch = xo:FindFirstChild("EggHatch")
    local xs = EggHatch
    local xt
    if xs then
        xs = EggHatch:IsA("BasePart")
    end
    if xs then
        xt = EggHatch.Position
    else
        local xs_1 = Spawn and Spawn:IsA("BasePart")
        if xs_1 then
            xt = Spawn.Position
        end
    end
    if Plots and xt then
        local xp_2 = math.huge
        local xs_2 = nil
        for i, child in ipairs(Plots:GetChildren()) do
            if child:IsA("BasePart") then
                local Magnitude = (child.Position - xt).Magnitude
                if Magnitude < xp_2 then
                    xp_2 = Magnitude
                    xs_2 = child
                end
            end
        end
        if xs_2 then
            return xs_2
        end
        local xp_3 = EggHatch and EggHatch:IsA("BasePart")
        if xp_4 then
            return EggHatch
        end
        return xo:FindFirstChildWhichIsA("BasePart", true)
    end
    xp_4 = EggHatch and EggHatch:IsA("BasePart")
    if xp_4 then
        return EggHatch
    end
    return xo:FindFirstChildWhichIsA("BasePart", true)
end
local function fn839()
    local SellNPC = tI:FindFirstChild("SellNPC")
    local A3 = SellNPC and SellNPC:FindFirstChild("ProxPart")
    local A3_1 = not A3 or not A3:IsA("BasePart")
    if A3_1 then
        return false
    end
    tJ(A3.Position)
    task.wait(0.35)
    return true
end
local function fn864()
    local xH = tT()
    local xI = tr()
    local xJ = xH and xH:IsA("BasePart")
    if not (xJ and xI) then
        return false
    end
    local xJ_1 = xH.CFrame:PointToObjectSpace(xI.Position)
    local xI_1 = math.abs(xJ_1.X) <= xH.Size.X / 2 + 16 and math.abs(xJ_1.Z) <= xH.Size.Z / 2 + 16
    return xI_1
end
local function fn871(aN)
    if not aN then
        return nil
    end
    local v5 = aN:GetAttribute("Rarity") or aN:GetAttribute("EggRarity")
    local v5_1 = v5 ~= ""
    local v7 = type(v5) == "string" and v5_1
    if v7 then
        return v5
    elseif aN:GetAttribute("Mystery") == true then
        return "Mystery"
    else
        return nil
    end
end
local function fn874()
    local Bh_1
    if not uN() then
        return
    end
    local SellPetsMode = State.SellPetsMode
    local Bg_1
    if SellPetsMode == "Held Creature" then
        Bg_1, Bh_1 = pcall(function()
            return QuoteSellCreature:InvokeServer()
        end)
        local Bi = not Bg_1
        local Bm = if Bi then 1 else 0
        local Bk = 3684 * Bm + 1016 * (1 - Bm)
        local Bl = 3758 * Bm + 2564 * (1 - Bm)
        if not ((Bk * 3207 + Bl * 609 + Bk * Bl) % 16777213 == 11170469) then
            Bi = type(Bh_1) ~= "table"
        end
        if not Bi then
            Bi = not Bh_1.Success
        end
        if Bi then
            return
        end
        pcall(function()
            RequestSell:FireServer("Equipped")
        end)
        return
    end
    pcall(function()
        RequestSell:FireServer("Inventory")
    end)
end
local function fn879(lJ)
    return (tostring(lJ):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
end
local function fn894(kK)
    local Dv = kK and true or false
    State.NoClip = Dv
    if t7.NoClip then
        t7.NoClip:Disconnect()
        t7.NoClip = nil
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
    t7.NoClip = ti.RunService.Stepped:Connect(function()
        local Dm = not ud() or not State.NoClip
        if Dm then
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
local function fn900()
    local xa = uS()
    if not xa then
        return false
    end
    local TreadmillModel = xa:FindFirstChild("TreadmillModel")
    local xc = TreadmillModel
    if xc then
        local xd = TreadmillModel:FindFirstChild("Touch", true) or TreadmillModel:FindFirstChild("PlayerSpawn", true)
        xc = xd
    end
    local xb_1 = xc or xa:FindFirstChild("TreadmillSpawn", true)
    local xa_1 = not xb_1 or not xb_1:IsA("BasePart")
    if xa_1 then
        return false
    end
    uy(xb_1)
    task.wait(0.35)
    return ty()
end
local function fn914()
    uO(uh.Player)
    local MovementGroup = uh.Player:AddLeftGroupbox("Movement", "person-standing")
    MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    MovementGroup:AddToggle("NoClip", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
    local FlyGroup = uh.Player:AddRightGroupbox("Fly", "plane")
    FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
    FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
    Toggles.WalkSpeedEnabled:OnChanged(function(n_)
        ts.SetWalkSpeedEnabled(n_)
    end)
    Options.WalkSpeed:OnChanged(function(n3)
        ts.SetWalkSpeedValue(n3)
    end)
    Toggles.InfJump:OnChanged(function(n5)
        ts.SetInfJump(n5)
    end)
    Toggles.NoClip:OnChanged(function(n7)
        ts.SetNoClip(n7)
    end)
    Toggles.InstantProximityPrompt:OnChanged(function(n9)
        ts.SetInstantProximityPrompt(n9)
    end)
    Toggles.Fly:OnChanged(function(ob)
        ts.SetFly(ob)
    end)
    Options.FlySpeed:OnChanged(function(od)
        ts.SetFlySpeed(od)
    end)
end
local function fn937(jP)
    local Cg = jP and true or false
    State.AutoUpgradeTreadmill = Cg
    tm()
end
local function fn938(av)
    local vP = {}
    if type(av) ~= "table" then
        return vP
    end
    for k, v in pairs(av) do
        if v == true then
            vP[tostring(k)] = true
        else
            local vQ = type(k) == "number" and type(v) == "string"
            if vQ then
                vP[v] = true
            end
        end
    end
    return vP
end
local function fn966()
    local xE = uS()
    local xF = xE and xE:FindFirstChild("EggHatch")
    return xF
end
local function fn994()
    local Character = LocalPlayer.Character
    local wn = Character and Character:FindFirstChildOfClass("Humanoid")
    return wn
end
local function fn1021()
    return ti.CoreGui
end
local function fn1025(lL, lM)
    return string.format('<font color="%s">%s</font>', lM, tC(lL))
end
local function fn1031()
    return not ts.Unloaded
end
local function fn1086(jt)
    State.StealRarities = ue(jt)
end
local function fn1090()
    uO(uh.Main)
    local EggsGroup = uh.Main:AddLeftGroupbox("Eggs", "egg")
    EggsGroup:AddToggle("AutoSteal", { Text = "Auto Steal Eggs", Default = false })
    EggsGroup:AddDropdown("StealZones", { Text = "Steal Zones", Values = tB, Multi = true, AllowNull = true, Default = tB })
    EggsGroup:AddDropdown("StealRarities", { Text = "Steal Rarities", Values = tu, Multi = true, AllowNull = true, Default = tu })
    EggsGroup:AddToggle("AutoPlace", { Text = "Auto Place Eggs", Default = false })
    EggsGroup:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
    local AutoSellGroup = uh.Main:AddLeftGroupbox("Auto Sell", "circle-dollar-sign")
    AutoSellGroup:AddToggle("AutoSellEggs", { Text = "Auto Sell Eggs", Default = false })
    AutoSellGroup:AddDropdown("SellEggsMode", { Text = "Sell Eggs Mode", Values = tk, Default = "All Eggs" })
    AutoSellGroup:AddToggle("AutoSellPets", { Text = "Auto Sell Pets", Default = false })
    AutoSellGroup:AddDropdown("SellPetsMode", { Text = "Sell Pets Mode", Values = uT, Default = "All Creatures" })
    local TreadmillGroup = uh.Main:AddLeftGroupbox("Treadmill", "activity")
    TreadmillGroup:AddToggle("AutoTreadmillFull", { Text = "Auto Use Treadmill Full Time", Default = false })
    TreadmillGroup:AddToggle("AutoTreadmillIdle", { Text = "Auto Use Treadmill Only When No Egg To Steal", Default = false })
    TreadmillGroup:AddToggle("AutoUpgradeTreadmill", { Text = "Auto Upgrade Treadmill", Default = false })
    TreadmillGroup:AddToggle("AutoUpgradeLuck", { Text = "Auto Upgrade Luck", Default = false })
    TreadmillGroup:AddToggle("AutoUpgradeSize", { Text = "Auto Upgrade Size", Default = false })
    local Pets_TrailsGroup = uh.Main:AddRightGroupbox("Pets & Trails", "paw-print")
    Pets_TrailsGroup:AddToggle("AutoUpgradePetSlots", { Text = "Auto Upgrade Pet Slots", Default = false })
    Pets_TrailsGroup:AddToggle("AutoEquipBestPets", { Text = "Auto Equip Best Pets", Default = false })
    Pets_TrailsGroup:AddDivider()
    Pets_TrailsGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false })
    Pets_TrailsGroup:AddToggle("AutoEquipBestTrail", { Text = "Auto Equip Best Trail", Default = false })
    Toggles.AutoSteal:OnChanged(function(ne)
        ts.SetAutoSteal(ne)
    end)
    Options.StealZones:OnChanged(function(ni)
        ts.SetStealZones(ni)
    end)
    Options.StealRarities:OnChanged(function(nk)
        ts.SetStealRarities(nk)
    end)
    Toggles.AutoPlace:OnChanged(function(nm)
        ts.SetAutoPlace(nm)
    end)
    Toggles.AutoHatch:OnChanged(function(no)
        ts.SetAutoHatch(no)
    end)
    Toggles.AutoSellEggs:OnChanged(function(nq)
        ts.SetAutoSellEggs(nq)
    end)
    Options.SellEggsMode:OnChanged(function(ns)
        ts.SetSellEggsMode(ns)
    end)
    Toggles.AutoSellPets:OnChanged(function(nu)
        ts.SetAutoSellPets(nu)
    end)
    Options.SellPetsMode:OnChanged(function(nw)
        ts.SetSellPetsMode(nw)
    end)
    Toggles.AutoTreadmillFull:OnChanged(function(ny)
        if ny and Toggles.AutoTreadmillIdle.Value then
            Toggles.AutoTreadmillIdle:SetValue(false)
        end
        ts.SetAutoTreadmillFull(ny)
    end)
    Toggles.AutoTreadmillIdle:OnChanged(function(nC)
        if nC and Toggles.AutoTreadmillFull.Value then
            Toggles.AutoTreadmillFull:SetValue(false)
        end
        ts.SetAutoTreadmillIdle(nC)
    end)
    Toggles.AutoUpgradeTreadmill:OnChanged(function(nG)
        ts.SetAutoUpgradeTreadmill(nG)
    end)
    Toggles.AutoUpgradeLuck:OnChanged(function(nI)
        ts.SetAutoUpgradeLuck(nI)
    end)
    Toggles.AutoUpgradeSize:OnChanged(function(nK)
        ts.SetAutoUpgradeSize(nK)
    end)
    Toggles.AutoUpgradePetSlots:OnChanged(function(nM)
        ts.SetAutoUpgradePetSlots(nM)
    end)
    Toggles.AutoEquipBestPets:OnChanged(function(nO)
        ts.SetAutoEquipBestPets(nO)
    end)
    Toggles.AutoBuyTrails:OnChanged(function(nQ)
        ts.SetAutoBuyTrails(nQ)
    end)
    Toggles.AutoEquipBestTrail:OnChanged(function(nS)
        ts.SetAutoEquipBestTrail(nS)
    end)
end
local function fn1101(jD)
    local BW = jD and true or false
    State.AutoTreadmillIdle = BW
    if State.AutoTreadmillIdle then
        State.AutoTreadmillFull = false
    end
    tm()
end
local function fn1104()
    return LocalPlayer.Character
end
local function fn1128()
    local wH = t3()
    if not wH then
        return nil
    end
    for i, child in ipairs(wH:GetChildren()) do
        if us(child) then
            return child
        end
    end
    return nil
end
local function fn1143()
    uk()
    local xP = ur()
    local xQ = not xP or not xP:IsA("BasePart")
    if xQ then
        return false
    end
    tJ(xP.Position)
    task.wait(0.2)
    return true
end
local function fn1163(jq)
    State.StealZones = ue(jq)
end
local function fn1175()
    local zN = {}
    local Treadmills = TreadmillConfigurations.Treadmills
    if type(Treadmills) ~= "table" then
        return zN
    end
    for k, v in pairs(Treadmills) do
        if type(v) == "table" then
            local insert = table.insert
            local zP = tonumber(v.Price) or 0
            insert(zN, { id = k, Price = zP })
        end
    end
    table.sort(zN, function(f6, f7)
        return f6.Price < f7.Price
    end)
    return zN
end
local function fn1176(U)
    return type(U) == "function"
end
local function fn1209(jX)
    local CB = jX and true or false
    State.AutoEquipBestPets = CB
    tm()
end
local function fn1216(aE)
    if not tt(State.StealZones) then
        return true
    end
    return State.StealZones[tostring(aE)] == true
end
ti = nil
tj = nil
tk = nil
tm = nil
tn = nil
to = nil
tp = nil
tq = nil
tr = nil
ts = nil
tt = nil
tu = nil
tv = nil
tw = nil
tx = nil
ty = nil
tz = nil
tB = nil
tC = nil
tD = nil
tE = nil
tG = nil
tH = nil
tI = nil
tJ = nil
tK = nil
tN = nil
EquipBestPets = nil
tR = nil
tS = nil
tT = nil
tX = nil
tY = nil
tZ = nil
t_ = nil
t1 = nil
t3 = nil
local PlaceHeldItem, tA, TrailAction, tL, tM, tO, tP, tU, tV, tW, t0, RequestPlotUpgrade, t4
t6 = nil
t7 = nil
RequestRollerUpgrade = nil
ua = nil
uc = nil
ud = nil
ue = nil
ug = nil
uh = nil
LeaveTreadmill = nil
uj = nil
uk = nil
ul = nil
TreadmillConfigurations = nil
un = nil
uo = nil
RollTreadmillCreature = nil
uq = nil
ur = nil
us = nil
ut = nil
Options = nil
ux = nil
uy = nil
QuoteSellCreature = nil
uB = nil
uC = nil
Toggles = nil
uF = nil
uH = nil
uI = nil
uK = nil
TrailConfigurations = nil
uN = nil
uO = nil
RequestSell = nil
uS = nil
local t5, t8, ub, uf, uu, RollerUpgradeConfigurations, uA, PlotConfigurations, QuoteSellEgg, uJ, uM, uP, uR
uT = nil
LocalPlayer = nil
uV = nil
uX = nil
uZ = nil
State = nil
u0 = nil
u1 = nil
u2 = nil
local uW, RequestHatch
uW = nil
RequestHatch = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
ti, LocalPlayer, uu, un, uf, t5, tY = nil, nil, nil, nil, nil, nil, nil
ti = {}
ti.Players = game:GetService("Players")
ti.ReplicatedStorage = game:GetService("ReplicatedStorage")
ti.RunService = game:GetService("RunService")
ti.UserInputService = game:GetService("UserInputService")
ti.VirtualUser = game:GetService("VirtualUser")
ti.HttpService = game:GetService("HttpService")
ti.TeleportService = game:GetService("TeleportService")
ti.Workspace = game:GetService("Workspace")
ti.Lighting = game:GetService("Lighting")
ti.Stats = game:GetService("Stats")
ti.CoreGui = game:GetService("CoreGui")
LocalPlayer = ti.Players.LocalPlayer
local FP_8 = "OuroborosStealAMysteryEgg"
local FP_11 = "v0.6"
uu = "Steal a Mystery Egg"
un = "https://discord.gg/synapsex"
uf = "https://rscripts.net/@Ouroboros"
t5 = "https://ouroboros-hub-rbx.web.app/"
tY = fn1021
if getgenv then
    getgenv().gethui = tY
end
ts, State, tZ, tI, Modules, PlaceHeldItem, RequestHatch, RequestSell, QuoteSellEgg, QuoteSellCreature, RollTreadmillCreature, LeaveTreadmill, RequestRollerUpgrade, RequestPlotUpgrade, EquipBestPets, TrailAction, tB, tu, tk, uT, TrailConfigurations, PlotConfigurations, RollerUpgradeConfigurations, TreadmillConfigurations, ug, t7, t_, tO, tD, tz, u1, uW, uM, Toggles, Options, Window, uh, t4, tW, tP, ub, FP_12, uq, ud, ue, tt, uI, uc, tw, uF, tr, uB, t3, tJ, uy, t1, uS, us, tn, uj, tS, tj, t6, tM, ty, uJ, uk, tH, t0, ur, tT, u2, tX, uR, tG, uP, tv, ul, tK, tq, uK, tE, tR, tx, ux, ut, uH, tA, to, uo, tV, t8, uV, uZ, uN, tN, uX, u0, uC, ua, tm, tL, tC, tp, uA, tU, uO, FP_6, FP_9 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn297)
local function FP_1(p)
    local vG
    local vE
    local vF
    vE = nil
    vF = nil
    vG = nil
    local vH = p ~= ""
    local vI = type(p) == "string" and vH
    assert(vI, "Namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    vG = getgenv()
    assert(type(vG) == "table", "getgenv did not return a table")
    local vH_1 = vG[p]
    if vH_1 ~= nil then
        local vI_1 = type(vH_1) == "table" and type(vH_1.Unload) == "function"
        assert(vI_1, "Namespace is occupied")
        vH_1.Unload()
        assert(vG[p] == nil, "Previous instance did not release its namespace")
    end
    vE = {}
    vF = { State = {}, Unloaded = false }
    vF.Track = function(v)
        assert(type(v) == "function", "Cleanup must be callable")
        if vF.Unloaded then
            v()
        else
            table.insert(vE, v)
        end
        return v
    end
    vF.Unload = function()
        local vx_1
        local vw_1
        if vF.Unloaded then
            return
        end
        vF.Unloaded = true
        local vu = {}
        local vB = #vE
        local vA = -1
        while false and vB <= 1 or true and vB >= 1 do
            local vC = vB
            local vv_1 = table.remove(vE, vC)
            vw_1, vx_1 = pcall(vv_1)
            if not vw_1 then
                table.insert(vu, tostring(vx_1))
            end
            vB += vA
        end
        table.clear(vF.State)
        if #vu > 0 then
            error("Cleanup incomplete: " .. table.concat(vu, "; "), 0)
        end
        if vG[p] == vF then
            vG[p] = nil
        end
    end
    vG[p] = vF
    return vF
end
if not tO and not tO and (not tO and not FP_9) and ((not tO or tO) and (FP_9 or not tO)) and not (not tO and not tO and (not tO and not FP_9) and ((not tO or tO) and (FP_9 or not tO))) then
    FP_9 = function(I, J)
        local vL = type(I) == "table" and type(I.Track) == "function"
        assert(vL, "FeatureAPI required")
        local vL_2 = type(J) == "table" and type(J.OnUnload) == "function"
        assert(vL_2, "UI library required")
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
else
    FP_12 = function(I, J)
        local vL = type(I) == "table" and type(I.Track) == "function"
        assert(vL, "FeatureAPI required")
        local vL_1 = type(J) == "table" and type(J.OnUnload) == "function"
        assert(vL_1, "UI library required")
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
end
ts = FP_1(FP_8)
State = ts.State
uq = fn1176
ud = fn1031
tZ = fn697(ti.ReplicatedStorage)
if (FP_9 or tA or not FP_9 and uj or (FP_9 or not tA) and (not tA or FP_9)) and (not FP_9 and not uj or (tA or tA) or (not tA or not tA) and (not uj or not FP_9)) and not ((FP_9 or tA or not FP_9 and uj or (FP_9 or not tA) and (not tA or FP_9)) and (not FP_9 and not uj or (tA or tA) or (not tA or not tA) and (not uj or not FP_9))) then
    ti = tI(fn697.Workspace)
else
    tI = fn697(ti.Workspace)
end
local Events = tZ:WaitForChild("Events")
if (false or not tI or (not uF or false)) and (uV or tI or (uF or tI)) or not ((false or not tI or (not uF or false)) and (uV or tI or (uF or tI))) then
    Modules = tZ:WaitForChild("Modules")
else
    tZ = Modules:WaitForChild("Modules")
end
PlaceHeldItem = Events:WaitForChild("PlaceHeldItem")
RequestHatch = Events:WaitForChild("RequestHatch")
RequestSell = Events:WaitForChild("RequestSell")
QuoteSellEgg = Events:WaitForChild("QuoteSellEgg")
QuoteSellCreature = Events:WaitForChild("QuoteSellCreature")
RollTreadmillCreature = Events:WaitForChild("RollTreadmillCreature")
LeaveTreadmill = Events:WaitForChild("LeaveTreadmill")
RequestRollerUpgrade = Events:WaitForChild("RequestRollerUpgrade")
RequestPlotUpgrade = Events:WaitForChild("RequestPlotUpgrade")
EquipBestPets = Events:WaitForChild("EquipBestPets")
TrailAction = Events:WaitForChild("TrailAction")
tB = { "Zone1", "Zone2", "Zone3", "Zone4", "Zone5", "Zone6", "Zone7", "Zone8" }
tu = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythical", "Hacker", "Mystery" }
tk = { "All Eggs", "Held Egg" }
uT = { "All Creatures", "Held Creature" }
TrailConfigurations = require(Modules:WaitForChild("TrailConfigurations"))
PlotConfigurations = require(Modules:WaitForChild("PlotConfigurations"))
RollerUpgradeConfigurations = require(Modules:WaitForChild("RollerUpgradeConfigurations"))
TreadmillConfigurations = require(Modules:WaitForChild("TreadmillConfigurations"))
State.AutoSteal = false
State.AutoTreadmillFull = false
State.AutoTreadmillIdle = false
State.AutoPlace = false
State.AutoHatch = false
State.AutoSellEggs = false
State.AutoUpgradeTreadmill = false
State.AutoUpgradeLuck = false
State.AutoUpgradeSize = false
State.AutoUpgradePetSlots = false
State.AutoBuyTrails = false
State.AutoEquipBestTrail = false
State.AutoEquipBestPets = false
State.AutoSellPets = false
State.StealZones = {}
State.StealRarities = {}
State.SellEggsMode = "All Eggs"
State.SellPetsMode = "All Creatures"
State.InstantPrompt = false
State.WalkSpeedEnabled = false
State.WalkSpeedValue = 32
State.InfJump = false
State.NoClip = false
State.Fly = false
State.FlySpeed = 60
ue = fn938
tt = fns.fn146
uI = fn1216
uc = fns.fn315
tw = fn871
uF = fn790
ug = {}
t7 = {}
t_ = {}
tO = {}
tD = 0
if uN and tG or (not uN or not uM) or (uC or tG) and (uN or uN) or (uC and not uN or (uM or uC)) and (uN and uM and (uC and not uN)) or not (uN and tG or (not uN or not uM) or (uC or tG) and (uN or uN) or (uC and not uN or (uM or uC)) and (uN and uM and (uC and not uN))) then
    tz = {
        Treadmill = 0,
        Luck = 0,
        Size = 0,
        Slots = 0,
        Trails = 0,
        EquipTrail = 0,
        SellEggs = 0,
        SellPets = 0
    }
    tr = fns.fn10
else
    tr = {
        Slots = 0,
        SellPets = 0,
        Trails = 0,
        Luck = 0,
        EquipTrail = 0,
        Treadmill = 0,
        SellEggs = 0,
        Size = 0
    }
    tz = fns.fn10
end
uB = fn994
t3 = fn1104
tJ = function(a9)
    local wp
    wp = nil
    wp = tr()
    local wq = not wp or typeof(a9) ~= "Vector3"
    if wq then
        return false
    end
    return pcall(function()
        wp.CFrame = CFrame.new(a9 + Vector3.new(0, 3, 0))
    end)
end
uy = fns.fn384
t1 = fns.fn353
uS = fn605
us = fn571
tn = fn1128
uj = fns.fn503
tS = fns.fn400
tj = fns.fn203
t6 = fn742
tM = fns.fn220
ty = fn732
uJ = fn756
uk = fns.fn83
tH = fn900
t0 = function(cl)
    local xm = not cl or not cl:IsA("ProximityPrompt") or not cl.Enabled
    if xm then
        return false
    end
    if State.InstantPrompt then
        pcall(function()
            cl.HoldDuration = 0
        end)
    end
    if uq(fireproximityprompt) then
        local xm_1 = pcall(fireproximityprompt, cl)
        if xm_1 then
            return true
        end
        local xm_2 = pcall(function()
            cl:InputHoldBegin()
            local xk = cl.HoldDuration or 0
            task.wait(math.max(0.05, xk + 0.05))
            cl:InputHoldEnd()
        end)
        return xm_2
    end
    local xm_3 = pcall(function()
        cl:InputHoldBegin()
        local xk = cl.HoldDuration or 0
        task.wait(math.max(0.05, xk + 0.05))
        cl:InputHoldEnd()
    end)
    return xm_3
end
ur = fn827
tT = fn966
if QuoteSellEgg and not uj and (not uT or not Window) and (uj or not tu or (uj or not uX)) and ((not uT or not Window or (tu or uT)) and (not uX or tu or QuoteSellEgg and Window)) and ((not uX or QuoteSellEgg) and (tu or uX) or (uj or not uj or Window and not uT) or (not uj and uX or Window and not uT) and ((QuoteSellEgg or not uj) and (uj and not Window))) and not (QuoteSellEgg and not uj and (not uT or not Window) and (uj or not tu or (uj or not uX)) and ((not uT or not Window or (tu or uT)) and (not uX or tu or QuoteSellEgg and Window)) and ((not uX or QuoteSellEgg) and (tu or uX) or (uj or not uj or Window and not uT) or (not uj and uX or Window and not uT) and ((QuoteSellEgg or not uj) and (uj and not Window)))) then
    tX = fn864
    uR = fn1143
    u2 = fns.fn528
else
    u2 = fn864
    tX = fn1143
    uR = fns.fn528
end
tG = function()
    local xX = tn()
    local xY = xX and not uj()
    if xY then
        uk()
        local xW = uB()
        if xW then
            pcall(function()
                xW:UnequipTools()
            end)
        end
        task.wait(0.2)
        return tn() == nil
    elseif not uj() then
        return true
    else
        uk()
        local xX_1 = tM()
        local x7 = 1
        while x7 <= 5 do
            local xY_1 = not ud() or not uj()
            if xY_1 then
                break
            end
            local xY_2 = ur()
            local xZ = xY_2 and xY_2:IsA("BasePart")
            if xZ then
                tJ(xY_2.Position)
            end
            local xZ_1 = os.clock() + 2
            while true do
                local x_ = ud() and uj() and os.clock() < xZ_1
                if x_ then
                    task.wait(0.1)
                    local x__1 = tr()
                    local x0 = x__1 and xY_2 and xY_2:IsA("BasePart") and (x__1.Position - xY_2.Position).Magnitude > 8
                    if x0 then
                        tJ(xY_2.Position)
                    end
                    continue
                end
                break
            end
            if uj() then
                pcall(function()
                    PlaceHeldItem:FireServer()
                end)
                task.wait(0.35)
            end
            local xY_3 = not uj() or tM() > xX_1
            if xY_3 then
                break
            end
            x7 += 1
        end
        local xY_4 = tn()
        local xX_2 = xY_4 and not uj()
        if xX_2 then
            local xV = uB()
            if xV then
                pcall(function()
                    xV:UnequipTools()
                end)
            end
            task.wait(0.15)
        end
        return not uj()
    end
end
uP = function(dF)
    local ya
    ya = nil
    if not dF or not dF.Parent then
        return false
    end
    ya = uB()
    if not ya then
        return false
    end
    local yb_1 = pcall(function()
        ya:EquipTool(dF)
    end)
    task.wait(0.15)
    local yc = yb_1 and tn() ~= nil
    return yc
end
tv = fn816
ul = fns.fn299
tK = fns.fn230
tq = fn707
uK = function()
    local yS
    yS = nil
    local yT = uj() or tn()
    local yT_1
    if yT then
        tG()
    end
    if uj() then
        return false
    end
    yT_1, yS = tK()
    if not yT_1 or not yS then
        return false
    end
    uk()
    local yU_1 = uJ(yT_1)
    if yU_1 then
        tJ(yU_1.Position)
        task.wait(0.2)
    end
    pcall(function()
        yS.HoldDuration = 0
    end)
    t0(yS)
    local yZ = if uq(fireproximityprompt) then 1 else 0
    if yZ == 1 then
        pcall(fireproximityprompt, yS)
    end
    local yT_2 = os.clock() + 2.5
    while true do
        local yU_2 = ud() and not uj() and os.clock() < yT_2
        if yU_2 then
            task.wait(0.1)
            continue
        end
        break
    end
    if uj() then
        tG()
        local yT_3 = not uj()
        local y1 = if yT_3 then 1 else 0
        local y_ = 3305 * y1 + 605 * (1 - y1)
        local y0 = 1349 * y1 + 3417 * (1 - y1)
        if not ((y_ * 831 + y0 * 2481 + y_ * y0) % 16777213 == 10551769) then
            yT_3 = t6()
        end
        return yT_3
    end
    return false
end
tE = function()
    local y4_4
    uk()
    if uj() then
        uR()
        local y3_1 = tT()
        local y4_1 = y3_1 and y3_1:IsA("BasePart")
        if y4_1 then
            tJ(y3_1.Position)
            task.wait(0.25)
        end
        pcall(function()
            PlaceHeldItem:FireServer()
        end)
        task.wait(0.4)
        return not uj()
    end
    local y2 = tn()
    local y3_2 = not y2 and not t6()
    if y3_2 then
        return false
    end
    uR()
    y2 = tn()
    if not y2 then
        local y3_3 = tj()
        if #y3_3 == 0 then
            return false
        elseif not uP(y3_3[1]) then
            return false
        else
            y2 = tn()
            if not y2 then
                return false
            end
            local y3_4 = tT()
            local y4_2 = y3_4 and y3_4:IsA("BasePart")
            if y4_4 then
                tJ(y3_4.Position)
                task.wait(0.2)
            end
            local Name = y2.Name
            pcall(function()
                PlaceHeldItem:FireServer()
            end)
            pcall(function()
                y2:Activate()
            end)
            task.wait(0.35)
            local y4_3 = tn()
            return y4_3 == nil or y4_3.Name ~= Name
        end
    elseif not y2 then
        return false
    else
        local y3_6 = tT()
        y4_4 = y3_6 and y3_6:IsA("BasePart")
        if y4_4 then
            tJ(y3_6.Position)
            task.wait(0.2)
        end
        local Name = y2.Name
        pcall(function()
            PlaceHeldItem:FireServer()
        end)
        pcall(function()
            y2:Activate()
        end)
        task.wait(0.35)
        local y4_5 = tn()
        return y4_5 == nil or y4_5.Name ~= Name
    end
end
tR = function()
    local y7 = uS()
    if not y7 then
        return
    end
    local EggHatch = y7:FindFirstChild("EggHatch")
    if not EggHatch then
        return
    end
    for i, child in ipairs(EggHatch:GetChildren()) do
        local zj = child
        if not ud() then
            return
        end
        local y8_1 = zj:IsA("Model") and zj:GetAttribute("IsEgg") == true and not zj:GetAttribute("HatchingStarted")
        if y8_1 then
            local y8_2 = zj:GetAttribute("HatchReady") == true
            local y9_1 = tonumber(zj:GetAttribute("HatchProgress")) or 0
            local y9_2 = tonumber(zj:GetAttribute("HatchDuration")) or 0
            local zb = y8_2
            if not zb then
                zb = y9_2 > 0 and y9_1 >= y9_2
            end
            if zb then
                uk()
                local y8_4 = uJ(zj)
                if y8_4 then
                    uy(y8_4)
                    task.wait(0.1)
                end
                local ProximityPrompt = zj:FindFirstChildWhichIsA("ProximityPrompt", true)
                local y9_4 = ProximityPrompt
                if y9_4 then
                    local find = string.find
                    local lower = string.lower
                    local zc = ProximityPrompt.ActionText or ""
                    y9_4 = find(lower(zc), "hatch")
                end
                if y9_4 then
                    t0(ProximityPrompt)
                end
                pcall(function()
                    RequestHatch:FireServer(zj)
                end)
                task.wait(0.35)
            end
        end
    end
    for i, descendant in ipairs(y7:GetDescendants()) do
        local y7_1 = descendant:IsA("ProximityPrompt") and descendant.Enabled
        if y7_1 then
            local lower = string.lower
            local y8_6 = descendant.ActionText or ""
            local y9_5 = lower(y8_6)
            if string.find(y9_5, "collect") then
                t0(descendant)
            end
        end
    end
end
tx = fns.fn548
ux = fns.fn140
ut = fn556
uH = fn1175
tA = fn780
to = function(gn)
    local z6, z7
    if gn == "Treadmill" then
        tA()
        return
    end
    local z8 = "Roller" .. gn .. "Level"
    local z9 = tonumber(LocalPlayer:GetAttribute(z8)) or 0
    z6 = z9
    local z8_1 = tonumber(RollerUpgradeConfigurations.MaxLevel) or 50
    if z6 >= z8_1 then
        return
    end
    z7 = nil
    pcall(function()
        z7 = RollerUpgradeConfigurations.Price(gn, z6 + 1)
    end)
    local z8_2 = type(z7) == "number" and t1() < z7
    if z8_2 then
        return
    end
    pcall(function()
        RequestRollerUpgrade:InvokeServer(gn, "One")
    end)
end
uo = function()
    local Af = tonumber(LocalPlayer:GetAttribute("MaxPlotItems")) or 0
    local Ad = Af
    local Af_1 = (tonumber(PlotConfigurations.MaxSlots))
    local Ak = if Af_1 then 1 else 0
    local Ai = 958 * Ak + 1742 * (1 - Ak)
    local Aj = 687 * Ak + 3862 * (1 - Ak)
    if not ((Ai * 932 + Aj * 2012 + Ai * Aj) % 16777213 == 2933246) then
        Af_1 = 14
    end
    if Ad >= Af_1 then
        return
    end
    local Ae
    if PlotConfigurations.Upgrades then
        local Af_2 = PlotConfigurations.Upgrades[Ad + 1] or PlotConfigurations.Upgrades[tostring(Ad + 1)]
        if type(Af_2) == "table" then
            local Af_3 = Af_2.Price
            local Ak_1 = if Af_3 then 1 else 0
            local Ai_1 = 1872 * Ak_1 + 4004 * (1 - Ak_1)
            local Aj_1 = 3127 * Ak_1 + 209 * (1 - Ak_1)
            if not ((Ai_1 * 3808 + Aj_1 * 3791 + Ai_1 * Aj_1) % 16777213 == 8059564) then
                Af_3 = Af_2.Cost
            end
            Ae = Af_3
        elseif type(Af_2) == "number" then
            Ae = Af_2
        end
    end
    if type(PlotConfigurations.GetUpgradePrice) == "function" then
        pcall(function()
            local Ab = PlotConfigurations.GetUpgradePrice(Ad) or Ae
            Ae = Ab
        end)
    end
    local Af_4 = Ae and t1() < Ae
    if Af_4 then
        return
    end
    pcall(function()
        RequestPlotUpgrade:InvokeServer()
    end)
end
tV = fns.fn164
t8 = fns.fn190
uV = function()
    local AH = t1()
    local AI = t8()
    for i, v in ipairs(tV()) do
        local AQ = v
        if not AI[AQ.ID] and AQ.Price > 0 and AH >= AQ.Price then
            pcall(function()
                TrailAction:FireServer("BuyMoney", AQ.ID)
            end)
            task.wait(0.2)
            AH = t1()
            AI = t8()
        end
    end
end
uZ = function()
    local ID
    local AT_1
    local AS_1
    AS_1, AT_1 = t8()
    local AU = -1
    ID = nil
    for i, v in ipairs(tV()) do
        if AS_1[v.ID] and v.Price >= AU then
            AU = v.Price
            ID = v.ID
        end
    end
    if not ID then
        return
    end
    if AT_1 and AT_1.Value == ID then
        return
    end
    pcall(function()
        TrailAction:FireServer("Equip", ID)
    end)
end
uN = fn839
tN = function()
    local A8
    local Ba_1
    local Bf = if not uN() then 1 else 0
    if Bf == 1 then
        return
    end
    local SellEggsMode = State.SellEggsMode
    local A9_2
    A8 = "All"
    if SellEggsMode == "Held Egg" then
        if not tn() then
            local A9_1 = tj()
            if #A9_1 == 0 then
                return
            end
            if not uP(A9_1[1]) then
                return
            end
            task.wait(0.2)
        end
        A8 = nil
    end
    A9_2, Ba_1 = pcall(function()
        return QuoteSellEgg:InvokeServer(A8)
    end)
    local Bb = not A9_2 or type(Ba_1) ~= "table" or not Ba_1.Success
    if Bb then
        return
    end
    pcall(function()
        RequestSell:FireServer("Egg")
    end)
end
uX = fn874
u0 = fns.fn301
uC = function(ig, ih, ii)
    u0(ig)
    ug[ig] = true
    task.spawn(function()
        local Bp_1
        while true do
            local Bo = ud() and ug[ig]
            local Bo_1
            if Bo then
                Bo_1, Bp_1 = pcall(ii)
                if not Bo_1 then
                    warn("[Ouroboros] " .. ig .. ": " .. tostring(Bp_1))
                end
                task.wait(ih)
                local Bo_2 = not ud() or not ug[ig]
                if Bo_2 then
                    break
                end
                continue
            end
            break
        end
    end)
end
ua = fns.fn6
tm = fn743
ts.SetAutoSteal = fns.fn198
ts.SetStealZones = fn1163
ts.SetStealRarities = fn1086
ts.SetSellEggsMode = fns.fn28
ts.SetSellPetsMode = fn681
ts.SetAutoTreadmillFull = fn710
ts.SetAutoTreadmillIdle = fn1101
ts.SetAutoPlace = fns.fn160
ts.SetAutoHatch = fns.fn481
ts.SetAutoSellEggs = fn563
ts.SetAutoUpgradeTreadmill = fn937
ts.SetAutoUpgradeLuck = fn711
ts.SetAutoUpgradeSize = fns.fn411
ts.SetAutoUpgradePetSlots = fns.fn85
ts.SetAutoBuyTrails = fns.fn475
ts.SetAutoEquipBestTrail = fns.fn459
ts.SetAutoEquipBestPets = fn1209
ts.SetAutoSellPets = fn740
tL = fns.fn81
ts.SetInstantProximityPrompt = function(j3)
    local CZ = j3 and true or false
    State.InstantPrompt = CZ
    for i, descendant in ipairs(tI:GetDescendants()) do
        if descendant:IsA("ProximityPrompt") then
            tL(descendant)
        end
    end
    if State.InstantPrompt and not tO._conn then
        tO._conn = tI.DescendantAdded:Connect(function(kb)
            local CO = ud() and State.InstantPrompt and kb:IsA("ProximityPrompt")
            if CO then
                tL(kb)
            end
        end)
        ts.Track(function()
            if tO._conn then
                tO._conn:Disconnect()
                tO._conn = nil
            end
            for k, v in pairs(t_) do
                local CV = k
                local CX = v
                local CQ = CV and CV.Parent and type(CX) == "table"
                if CQ then
                    pcall(function()
                        CV.HoldDuration = CX.HoldDuration
                        CV.MaxActivationDistance = CX.MaxActivationDistance
                        CV.RequiresLineOfSight = CX.RequiresLineOfSight
                    end)
                end
            end
        end)
    end
end
ts.SetWalkSpeedEnabled = fns.fn509
ts.SetWalkSpeedValue = fns.fn547
ts.SetInfJump = fn770
ts.SetNoClip = fn894
ts.SetFly = fns.fn538
ts.SetFlySpeed = fns.fn213
ts.Track(fns.fn395)
LocalPlayer.CharacterAdded:Connect(fns.onCharacterAdded)
u1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
if ((tu or not t_) and (not t_ and not tu) or (TrailConfigurations or false) and (FP_6 or false)) and not ((tu or not t_) and (not t_ and not tu) or (TrailConfigurations or false) and (FP_6 or false)) then
    uM = loadstring(game:HttpGet(Options .. "addons/ThemeManager.lua"))()
    u1 = loadstring(game:HttpGet(Options .. "addons/SaveManager.lua"))()
    uW = Toggles.Toggles
else
    uW = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    uM = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles, Options = u1.Toggles, u1.Options
end
FP_12(ts, u1)
Window = u1:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = un, Copyable = true }, "|", uu, "|", FP_11 },
    Icon = 132608042600488,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0,
    SidebarCompacted = true,
    TabSwipeFrom = "bottom",
    Animations = { TabSwitch = true }
})
uh = {}
uh.Info = Window:AddTab("Info", "info")
uh.Main = Window:AddTab("Main", "gamepad-2")
uh.Player = Window:AddTab("Player", "person-standing")
uh.Settings = Window:AddTab("Settings", "settings")
t4 = "#7fd47f"
tW = "#6ec1ff"
tP = "#e8a34d"
tC = fn879
tp = fn1025
uA = fn776
tU = fn652
uO = fns.fn412
FP_6 = function()
    local l8
    local l3
    l3 = "Unknown"
    pcall(function()
        local D5_1
        local D4_1
        if type(identifyexecutor) == "function" then
            D5_1, D4_1 = identifyexecutor()
            local D6 = D5_1 ~= ""
            local D7 = type(D5_1) == "string" and D6
            if D7 then
                local D6_1 = type(D4_1) == "string" and D4_1 ~= "" and D5_1 .. " " .. D4_1
                l3 = D6_1 or D5_1
            end
        end
    end)
    l8 = os.clock()
    local function l9()
        local D9 = math.floor(os.clock() - l8)
        if D9 < 60 then
            return D9 .. "s"
        elseif D9 < 3600 then
            return string.format("%dm %ds", D9 // 60, D9 % 60)
        else
            return string.format("%dh %dm", D9 // 3600, D9 % 3600 // 60)
        end
    end
    local UserGroup = uh.Info:AddLeftGroupbox("User", "circle-user")
    UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
    UserGroup:AddLabel(uA("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, t4), true)
    UserGroup:AddLabel(uA("UserId", tostring(LocalPlayer.UserId), tW), true)
    UserGroup:AddLabel(uA("Executor", l3, t4), true)
    UserGroup:AddDivider()
    local Label5 = UserGroup:AddLabel(uA("Session", l9(), tP), true)
    UserGroup:AddDivider()
    UserGroup:AddButton({
        Text = "Copy Username",
        Func = function()
            tU(LocalPlayer.Name, "Copied username")
        end
    })
    UserGroup:AddButton({
        Text = "Copy Profile Link",
        Func = function()
            tU("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
        end
    })
    local DiscordGroup = uh.Info:AddRightGroupbox("Discord", "message-circle")
    DiscordGroup:AddDiscordBox(nil, {
        Banner = 95892854151512,
        Avatar = 132608042600488,
        Title = "Ouroboros Hub",
        Subtitle = "Dupes, keyless scripts and updates",
        Status = "online",
        Accent = Color3.fromRGB(88, 101, 242),
        Link = un,
        Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
    })
    local SessionGroup = uh.Info:AddRightGroupbox("Session", "signal")
    local Label4 = SessionGroup:AddLabel(uA("Game", uu, t4), true)
    local Label3 = SessionGroup:AddLabel(uA("Players", tostring(#ti.Players:GetPlayers()), tW), true)
    local Label2 = SessionGroup:AddLabel(uA("Job", string.sub(game.JobId, 1, 8) .. "...", tP), true)
    local Label = SessionGroup:AddLabel(uA("Ping", "0 ms", t4), true)
    SessionGroup:AddButton({
        Text = "Rejoin Place",
        Func = function()
            pcall(function()
                ti.TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end)
        end
    })
    SessionGroup:AddButton({
        Text = "Copy Job ID",
        Func = function()
            tU(game.JobId, "Copied Job ID")
        end
    })
    local SocialsGroup = uh.Info:AddRightGroupbox("Socials", "link")
    SocialsGroup:AddButton({
        Text = "Copy Discord",
        Func = function()
            tU(un, "Copied Discord")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Rscripts",
        Func = function()
            tU(uf, "Copied Rscripts")
        end
    })
    SocialsGroup:AddButton({
        Text = "Copy Website",
        Func = function()
            tU(t5, "Copied Website")
        end
    })
    task.spawn(function()
        local Eh = false
        repeat
            local Ee
            if ud() then
                Label5:SetText(uA("Session", l9(), tP))
                Label3:SetText(uA("Players", tostring(#ti.Players:GetPlayers()), tW))
                Ee = 0
                pcall(function()
                    Ee = math.floor(ti.Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                Label:SetText(uA("Ping", tostring(Ee) .. " ms", t4))
                Label4:SetText(uA("Game", uu, t4))
                Label2:SetText(uA("Job", string.sub(game.JobId, 1, 8) .. "...", tP))
                task.wait(1)
            else
                Eh = true
            end
        until Eh
    end)
end
FP_9 = fn1090
if (not ts and QuoteSellEgg or (not RequestHatch or tO)) and (not QuoteSellEgg and tO and (tP or not ts)) or ((tP or QuoteSellEgg) and (not RequestHatch or not QuoteSellEgg) or (not RequestHatch or not ts) and (ts and not tu)) or ((tP or tu) and (not tu and RequestHatch) and ((not ts or tu) and (tu or ts)) or ((not RequestHatch or tP) and (not RequestHatch or not tO) or (ts and tO or false and tu))) or not ((not ts and QuoteSellEgg or (not RequestHatch or tO)) and (not QuoteSellEgg and tO and (tP or not ts)) or ((tP or QuoteSellEgg) and (not RequestHatch or not QuoteSellEgg) or (not RequestHatch or not ts) and (ts and not tu)) or ((tP or tu) and (not tu and RequestHatch) and ((not ts or tu) and (tu or ts)) or ((not RequestHatch or tP) and (not RequestHatch or not tO) or (ts and tO or false and tu)))) then
    ub = {
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
        PausedConn = nil,
        AfkTriggers = 0
    }
else
    tI = {
        AutoReconnect = false,
        AntiAfk = true,
        FpsBoost = false,
        FpsConn = nil,
        FpsSnapshots = {},
        NoGameplayPaused = true,
        ReconnectConns = {},
        Disable3D = false,
        AfkConn = nil,
        PausedConn = nil,
        AfkTriggers = 0,
        AfkTask = nil
    }
end
local function FP_13()
    local function oh()
        local Em = not uq(ti.VirtualUser.CaptureController)
        local Eq = if Em then 1 else 0
        local Eo = 2368 * Eq + 2719 * (1 - Eq)
        local Ep = 859 * Eq + 3335 * (1 - Eq)
        if not ((Eo * 834 + Ep * 3857 + Eo * Ep) % 16777213 == 7322187) then
            Em = not uq(ti.VirtualUser.ClickButton2)
        end
        if Em then
            return false
        end
        local Em_1 = pcall(function()
            ti.VirtualUser:CaptureController()
            ti.VirtualUser:ClickButton2(Vector2.new())
        end)
        if Em_1 then
            ub.AfkTriggers = ub.AfkTriggers + 1
        end
        return Em_1
    end
    ts.SetAntiAfk = function(ou)
        local Ex = ou and true or false
        ub.AntiAfk = Ex
        if ub.AfkConn then
            ub.AfkConn:Disconnect()
            ub.AfkConn = nil
        end
        if ub.AfkTask then
            pcall(task.cancel, ub.AfkTask)
            ub.AfkTask = nil
        end
        if not ub.AntiAfk then
            return
        end
        ub.AfkConn = LocalPlayer.Idled:Connect(function()
            local Er = ud() and ub.AntiAfk
            if Er then
                oh()
            end
        end)
        ub.AfkTask = task.spawn(function()
            local Et = os.clock()
            while true do
                local Eu = ud() and ub.AntiAfk
                if Eu then
                    task.wait(1)
                    local Eu_1 = not ud() or not ub.AntiAfk
                    if Eu_1 then
                        break
                    end
                    if os.clock() - Et >= 60 then
                        Et = os.clock()
                        oh()
                    end
                    continue
                end
                break
            end
        end)
    end
    ts.SetNoGameplayPaused = function(oM)
        local EJ
        local EL = oM and true or false
        ub.NoGameplayPaused = EL
        if ub.PausedConn then
            ub.PausedConn:Disconnect()
            ub.PausedConn = nil
        end
        if not ub.NoGameplayPaused then
            return
        end
        EJ = function()
            pcall(function()
                local RobloxGui = ti.CoreGui:FindFirstChild("RobloxGui")
                local EA = RobloxGui and RobloxGui:FindFirstChild("Notifications")
                if EA then
                    for i, descendant in ipairs(EA:GetDescendants()) do
                        local Ez_2 = descendant:IsA("TextLabel") and string.find(string.lower(descendant.Text), "gameplay paused")
                        if Ez_2 then
                            local Frame = descendant:FindFirstAncestorOfClass("Frame")
                            if Frame then
                                Frame.Visible = false
                            end
                        end
                    end
                end
            end)
        end
        EJ()
        ub.PausedConn = ti.CoreGui.DescendantAdded:Connect(function()
            if ub.NoGameplayPaused then
                EJ()
            end
        end)
    end
    ts.SetAutoReconnect = function(o0)
        local ET = o0 and true or false
        ub.AutoReconnect = ET
        for i, v in ipairs(ub.ReconnectConns) do
            v:Disconnect()
        end
        table.clear(ub.ReconnectConns)
        if not ub.AutoReconnect then
            return
        end
        table.insert(ub.ReconnectConns, ti.TeleportService.TeleportInitFailed:Connect(function()
            local EQ = not ud() or not ub.AutoReconnect
            if EQ then
                return
            end
            task.wait(1)
            local EQ_1 = ud() and ub.AutoReconnect
            if EQ_1 then
                pcall(function()
                    ti.TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        end))
    end
    ts.SetDisable3D = function(pf)
        local E4 = pf and true
        local E8 = if E4 then 1 else 0
        local E6 = 3590 * E8 + 3591 * (1 - E8)
        local E7 = 1695 * E8 + 213 * (1 - E8)
        if not ((E6 * 395 + E7 * 3199 + E6 * E7) % 16777213 == 12925405) then
            E4 = false
        end
        ub.Disable3D = E4
        pcall(function()
            ti.RunService:Set3dRenderingEnabled(not ub.Disable3D)
        end)
    end
    ts.SetFpsBoost = function(pk)
        local Fq
        local Fs = pk and true
        local Fw = if Fs then 1 else 0
        local Fu = 3845 * Fw + 129 * (1 - Fw)
        local Fv = 79 * Fw + 987 * (1 - Fw)
        if not ((Fu * 1172 + Fv * 117 + Fu * Fv) % 16777213 == 4819338) then
            Fs = false
        end
        ub.FpsBoost = Fs
        if ub.FpsConn then
            ub.FpsConn:Disconnect()
            ub.FpsConn = nil
        end
        local function Fr_1()
            for k, v in pairs(ub.FpsSnapshots) do
                local Fe = k
                if Fe and Fe.Parent then
                    for k, v in pairs(v) do
                        local Fk = k
                        local Fm = v
                        pcall(function()
                            Fe[Fk] = Fm
                        end)
                    end
                end
            end
            table.clear(ub.FpsSnapshots)
        end
        if not ub.FpsBoost then
            Fr_1()
            return
        end
        Fq = function(px)
            if ub.FpsSnapshots[px] then
                return
            end
            local Fn = px:IsA("ParticleEmitter") or px:IsA("Trail") or px:IsA("Beam") or px:IsA("Fire") or px:IsA("Smoke") or px:IsA("Sparkles")
            if Fn then
                ub.FpsSnapshots[px] = { Enabled = px.Enabled }
                px.Enabled = false
            end
        end
        for i, descendant in ipairs(tI:GetDescendants()) do
            Fq(descendant)
        end
        if ub.FpsSnapshots[ti.Lighting] == nil then
            ub.FpsSnapshots[ti.Lighting] = { GlobalShadows = ti.Lighting.GlobalShadows }
            ti.Lighting.GlobalShadows = false
        end
        ub.FpsConn = tI.DescendantAdded:Connect(function(pF)
            if ub.FpsBoost then
                Fq(pF)
            end
        end)
    end
    ts.Track(function()
        ts.SetAntiAfk(false)
        ts.SetNoGameplayPaused(false)
        ts.SetAutoReconnect(false)
        ts.SetDisable3D(false)
        ts.SetFpsBoost(false)
    end)
end
local function FP_3()
    local Label
    uO(uh.Settings)
    local MenuGroup = uh.Settings:AddLeftGroupbox("Menu", "settings")
    MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    Label = MenuGroup:AddLabel(uA("AFK pulses", "0", tP), true)
    MenuGroup:AddToggle("NoGameplayPaused", { Text = "No Gameplay Paused", Default = true })
    MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
    MenuGroup:AddToggle("Disable3DRendering", { Text = "Disable 3D Rendering", Default = false })
    MenuGroup:AddToggle("FPSBoost", { Text = "FPS Boost", Default = false })
    MenuGroup:AddToggle("HideUIOnStart", { Text = "Hide UI On Start", Default = false })
    MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    u1.ToggleKeybind = Options.MenuKeybind
    local ScriptGroup = uh.Settings:AddLeftGroupbox("Script", "scroll-text")
    ScriptGroup:AddButton({
        Text = "Unload Script",
        Func = function()
            u1:Unload()
        end
    })
    Toggles.AntiAfk:OnChanged(function(pV)
        ts.SetAntiAfk(pV)
    end)
    Toggles.NoGameplayPaused:OnChanged(function(pY)
        ts.SetNoGameplayPaused(pY)
    end)
    Toggles.AutoReconnect:OnChanged(function(p_)
        ts.SetAutoReconnect(p_)
    end)
    Toggles.Disable3DRendering:OnChanged(function(p1)
        ts.SetDisable3D(p1)
    end)
    Toggles.FPSBoost:OnChanged(function(p3)
        ts.SetFpsBoost(p3)
    end)
    task.spawn(function()
        while ud() do
            Label:SetText(uA("AFK pulses", tostring(ub.AfkTriggers), tP))
            task.wait(1)
        end
    end)
    uW:SetLibrary(u1)
    uW:SetFolder("MyScriptHub")
    uW:SaveDefault("Evil Hello Kitty")
    uW:ApplyToTab(uh.Settings)
    uM:SetLibrary(u1)
    uM:IgnoreThemeSettings()
    uM:SetIgnoreIndexes({ "MenuKeybind" })
    uM:SetFolder("OuroborosHub/StealAMysteryEgg")
    uM:BuildConfigSection(uh.Settings)
    pcall(function()
        uW:LoadDefault()
    end)
    pcall(function()
        uM:LoadAutoloadConfig()
    end)
    ts.SetAntiAfk(Toggles.AntiAfk.Value)
    ts.SetNoGameplayPaused(Toggles.NoGameplayPaused.Value)
    ts.SetAutoReconnect(Toggles.AutoReconnect.Value)
    ts.SetDisable3D(Toggles.Disable3DRendering.Value)
    ts.SetFpsBoost(Toggles.FPSBoost.Value)
    ts.SetAutoSteal(Toggles.AutoSteal.Value)
    ts.SetStealZones(Options.StealZones.Value)
    ts.SetStealRarities(Options.StealRarities.Value)
    ts.SetAutoPlace(Toggles.AutoPlace.Value)
    ts.SetAutoHatch(Toggles.AutoHatch.Value)
    ts.SetAutoSellEggs(Toggles.AutoSellEggs.Value)
    ts.SetSellEggsMode(Options.SellEggsMode.Value)
    ts.SetAutoSellPets(Toggles.AutoSellPets.Value)
    ts.SetSellPetsMode(Options.SellPetsMode.Value)
    ts.SetAutoTreadmillFull(Toggles.AutoTreadmillFull.Value)
    ts.SetAutoTreadmillIdle(Toggles.AutoTreadmillIdle.Value)
    ts.SetAutoUpgradeTreadmill(Toggles.AutoUpgradeTreadmill.Value)
    ts.SetAutoUpgradeLuck(Toggles.AutoUpgradeLuck.Value)
    ts.SetAutoUpgradeSize(Toggles.AutoUpgradeSize.Value)
    ts.SetAutoUpgradePetSlots(Toggles.AutoUpgradePetSlots.Value)
    ts.SetAutoEquipBestPets(Toggles.AutoEquipBestPets.Value)
    ts.SetAutoBuyTrails(Toggles.AutoBuyTrails.Value)
    ts.SetAutoEquipBestTrail(Toggles.AutoEquipBestTrail.Value)
    ts.SetWalkSpeedEnabled(Toggles.WalkSpeedEnabled.Value)
    ts.SetWalkSpeedValue(Options.WalkSpeed.Value)
    ts.SetInfJump(Toggles.InfJump.Value)
    ts.SetNoClip(Toggles.NoClip.Value)
    ts.SetInstantProximityPrompt(Toggles.InstantProximityPrompt.Value)
    ts.SetFly(Toggles.Fly.Value)
    ts.SetFlySpeed(Options.FlySpeed.Value)
    if Toggles.HideUIOnStart.Value then
        pcall(function()
            u1:Toggle(false)
        end)
    end
end
FP_13()
FP_6()
FP_9()
fn914()
FP_3()
