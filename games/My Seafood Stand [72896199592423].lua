local t0
local Options
local tI
local tL
local tR
local tU
local tB
local tX
local tE
local t_
local Library
local t2
local Toggles
local tK
local LocalPlayer
local tT
local tA
local tW
local tD
local tZ
local UserInputService
local tJ
local t4
local PlayerGui
local tP
local Workspace
local HttpService
local VirtualUser
local tC
local function fn11(l8)
    if t2.claimedPlaytime[l8] then
        return true
    end
    local Main = PlayerGui:FindFirstChild("Main")
    if not Main then
        return false
    end
    for i, descendant in ipairs(Main:GetDescendants()) do
        local Fd_1 = descendant.Name == "Claimed" and descendant:IsA("GuiObject") and descendant.Visible
        if Fd_1 then
            local Parent = descendant.Parent
            local Fe = Parent
            if Fe then
                local Ff = Parent.Name == tostring(l8) or Parent:GetAttribute("Index") == l8 or Parent:GetAttribute("Slot") == l8
                Fe = Ff
            end
            if Fe then
                return true
            end
        end
    end
    return false
end
local function fn14(b4)
    local xn_1
    local xm_1
    if not b4 then
        return nil
    end
    xm_1, xn_1 = pcall(tC.FoodVariants.methodFor, b4.Name)
    if xm_1 then
        return xn_1
    end
    return nil
end
local function fn32()
    if t2.fishermanHired then
        return true
    end
    local AQ = tC.Fisherman.setup and tC.Fisherman.setup.flag
    local AQ_2
    local AR = AQ or "FishermanHired"
    local AR_1
    if LocalPlayer:GetAttribute(AR) == true then
        t2.fishermanHired = true
        return true
    end
    AQ_2, AR_1 = pcall(function()
        return tD.FishermanCatch:InvokeServer("Get")
    end)
    local AS = AQ_2 and type(AR_1) == "table"
    if AS then
        AS = AR_1.Hired == true or AR_1.hired == true or AR_1.Active == true
    end
    if AS then
        t2.fishermanHired = true
        return true
    end
    return false
end
local function fn38()
    local x__1
    local xZ_1
    if identifyexecutor then
        x__1, xZ_1 = identifyexecutor()
        local x0 = x__1 ~= ""
        local x1 = type(x__1) == "string" and x0
        if x1 then
            local x0_1 = type(xZ_1) == "string" and xZ_1 ~= "" and x__1 .. " " .. xZ_1
            local xZ_2 = x0_1
            local x5 = if xZ_2 then 1 else 0
            local x3 = 421 * x5 + 2201 * (1 - x5)
            local x4 = 192 * x5 + 2359 * (1 - x5)
            if not ((x3 * 1549 + x4 * 1552 + x3 * x4) % 16777213 == 1030945) then
                xZ_2 = x__1
            end
            tR = xZ_2
        end
    end
end
local function fn43()
    local Es = t_.getPlot()
    local Et = Es
    if Et then
        local Eu_1 = tonumber(Es:GetAttribute("MaxCustomers")) or 1
        Et = Eu_1
    end
    local Es_1 = Et
    local EA = if Es_1 then 1 else 0
    local Ey = 2396 * EA + 498 * (1 - EA)
    local Ez = 1563 * EA + 3998 * (1 - EA)
    if not ((Ey * 2693 + Ez * 736 + Ey * Ez) % 16777213 == 11347744) then
        Es_1 = 1
    end
    local Et_1 = Es_1
    local CustomerCount = tC.Upgrades.CustomerCount
    local Ev = CustomerCount and CustomerCount.maxValue or 20
    local Eu_3 = CustomerCount and CustomerCount.costs
    local Es_3 = Eu_3
    if Et_1 >= Ev then
        return Et_1, Ev, nil, true
    end
    if Eu_3 then
        Eu_3 = Es_3[Et_1]
    end
    return Et_1, Ev, Eu_3, false
end
local function worker17()
    while not Library.Unloaded do
        pcall(tW.serveOnce)
        task.wait(t_.getNumber("ServeDelay", 0.25))
    end
end
local function fn67()
    local Character = LocalPlayer.Character
    local vP = Character and Character:FindFirstChild("HumanoidRootPart")
    return vP
end
local function fn100()
    local Stands = Workspace:FindFirstChild("Stands")
    local xe = {}
    if not Stands then
        return xe
    end
    for i, child in ipairs(Stands:GetChildren()) do
        if child:GetAttribute("Owner") == LocalPlayer.UserId then
            table.insert(xe, child)
        end
    end
    return xe
end
local function worker4()
    while not Library.Unloaded do
        pcall(tW.seasonPassOnce)
        task.wait(5)
    end
end
local function fn144()
    Library.ScreenGui.Parent = PlayerGui
end
local function onCopyLitecoinAddress()
    t_.copyText(tU.LTC_ADDRESS, "Copied Litecoin address")
end
local function fn154(jY, jZ, j_)
    local C8 = tC.EquipmentAssets.model(jZ)
    local C9 = jY and jY:FindFirstChild("UnlockedCells")
    if not (C8 and C9) then
        return {}
    end
    local C9_2 = {}
    local Db = {}
    for i, child in ipairs(C9:GetChildren()) do
        if child:IsA("BasePart") then
            local Dp = -12
            while Dp <= 12 do
                local Dq = Dp
                local Du = -12
                while Du <= 12 do
                    local Dv = Du
                    local Da_1 = child.Position + Vector3.new(Dq, 0, Dv)
                    local Dc = tC.PlacementGrid.snap(jY, Da_1, C8, j_)
                    local Da_2 = string.format("%.2f|%.2f", Dc.X, Dc.Z)
                    if not Db[Da_2] then
                        Db[Da_2] = true
                        C9_2[#C9_2 + 1] = Dc
                    end
                    Du += 2
                end
                Dp += 2
            end
        end
    end
    return C9_2
end
local function fn179(en, eo)
    local Type = eo.Type
    if Type == "Toggle" then
        return { idx = en, type = "Toggle", value = eo.Value == true }
    elseif Type == "Slider" then
        return { idx = en, type = "Slider", value = tostring(eo.Value) }
    elseif Type == "Dropdown" then
        return { idx = en, type = "Dropdown", multi = eo.Multi == true, value = eo.Value }
    elseif Type == "Input" then
        local yh = eo.Value or ""
        return { idx = en, type = "Input", text = tostring(yh) }
    elseif Type == "ColorPicker" then
        return { idx = en, type = "ColorPicker", value = eo.Value:ToHex(), transparency = eo.Transparency }
    elseif Type == "KeyPicker" then
        return {
            idx = en,
            type = "KeyPicker",
            mode = eo.Mode,
            key = eo.Value,
            modifiers = eo.Modifiers,
            toggled = eo.Toggled
        }
    else
        return nil
    end
end
local function fn181()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    t2.lastTap = tick()
end
local function worker12()
    while not Library.Unloaded do
        pcall(tW.upgradeFishermanOnce)
        task.wait(t_.getNumber("FishermanUpgradeInterval", 2))
    end
end
local function worker()
    local x7_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local x6 = math.floor(os.clock() - tT.sessionStart)
        if x6 < 60 then
            x7_1 = x6 .. "s"
        elseif x6 < 3600 then
            x7_1 = string.format("%dm %ds", x6 // 60, x6 % 60)
        else
            x7_1 = string.format("%dh %dm", x6 // 3600, x6 % 3600 // 60)
        end
        tT.SessionLabel:SetText(t_.field("Session time", x7_1, t0))
    end
end
local function fn236()
    local DB_2
    table.clear(t2.placePlan)
    local Dx = t_.getPlot()
    if not Dx then
        return t2.placePlan
    end
    local Dy = t_.selectedMap("PlaceEquipment")
    local Dz = tW.listPlacerTools()
    local DA = {}
    local DA_1
    for i, v in ipairs(Dz) do
        local Dz_1 = Dy[v.Name] == true
        if not Dz_1 then
            local DB_1 = false
            for k, v in pairs(Dy) do
                if v == true then
                    DB_1 = true
                    break
                end
            end
            if not DB_1 then
                Dz_1 = true
            end
        end
        if Dz_1 then
            DA[#DA + 1] = v
        end
    end
    local Dz_2 = {}
    for i, v in ipairs(DA) do
        local Dy_1 = tW.resolvePlaceRotation(v.Name)
        DA_1, DB_2 = tW.footprintSize(v.Name, Dy_1)
        local DC
        for i, v in ipairs(tW.collectSnapCandidates(Dx, v.Name, Dy_1)) do
            local DD_1 = false
            if not tW.insideOwnPlot(Dx, v, DA_1, DB_2) then
                DD_1 = true
            elseif tW.overlapsStand(v, DA_1, DB_2) then
                DD_1 = true
            else
                for i, v2 in ipairs(Dz_2) do
                    local DE = math.abs(v2.pos.X - v.X) < (DA_1 + v2.footX) / 2 and math.abs(v2.pos.Z - v.Z) < (DB_2 + v2.footZ) / 2
                    if DE then
                        DD_1 = true
                        break
                    end
                end
            end
            if not DD_1 then
                DC = v
                break
            end
        end
        if DC then
            local DD_2 = { tool = v, name = v.Name, pos = DC, rot = Dy_1, footX = DA_1, footZ = DB_2 }
            t2.placePlan[#t2.placePlan + 1] = DD_2
            Dz_2[#Dz_2 + 1] = DD_2
        end
    end
    return t2.placePlan
end
local function worker14()
    while not Library.Unloaded do
        pcall(tW.hireFishermanOnce)
        task.wait(2)
    end
end
local function worker20()
    pcall(tW.refreshPlaceDropdown)
    pcall(tW.updatePlaceVisualizer)
end
local function fn278()
    if not t_.isOn("PerfectPickup") then
        return
    end
    local zJ = t_.getDropdown("CookerFilter", "All")
    for i, v in ipairs(t_.ownedStands()) do
        if t_.cookerMatchesFilter(v, zJ) then
            t_.eachSlot(v, function(fU)
                local attr2 = fU:GetAttribute("SlotKind")
                local zE = attr2 == "Serve" or attr2 == "Plant" or attr2 == "Pot"
                local zC_2 = attr2 == "Drone"
                local zD_1 = zE
                local zI = if zD_1 then 1 else 0
                local zG = 3453 * zI + 1552 * (1 - zI)
                local zH = 2091 * zI + 819 * (1 - zI)
                if not ((zG * 464 + zH * 1779 + zG * zH) % 16777213 == 12542304) then
                    zD_1 = zC_2
                end
                if zD_1 then
                    return
                end
                if fU:GetAttribute("SlotState") ~= "Collect" then
                    return
                end
                local attr = fU:GetAttribute("CookProgress")
                local zC_3 = fU:GetAttribute("CookBurned") == true
                if not zC_3 then
                    local zD_2 = typeof(attr) == "number" and attr >= tA.BurnStart
                    zC_3 = zD_2
                end
                local zD_3 = zC_3
                if tW.shouldCollectProgress(attr, zD_3) then
                    t_.unequipTools()
                    t_.teleportNear(fU)
                    t_.fireCook(fU, "Collect")
                    t2.foodCollected = t2.foodCollected + 1
                end
            end)
        end
    end
end
local function onCopyEthereumAddress()
    t_.copyText(tU.ETH_ADDRESS, "Copied Ethereum address")
end
local function fn295(cY)
    return t_.findRawSeafood(cY) ~= nil
end
local function onStepped()
    if Library.Unloaded then
        return
    end
    if Toggles.NoClip and Toggles.NoClip.Value then
        local Character = LocalPlayer.Character
        if Character then
            for i, descendant in ipairs(Character:GetDescendants()) do
                local Hr_2 = descendant:IsA("BasePart") and descendant.CanCollide
                if Hr_2 then
                    descendant.CanCollide = false
                end
            end
        end
    end
end
local function onJumpRequest()
    if Library.Unloaded then
        return
    end
    if Toggles.InfJump and Toggles.InfJump.Value then
        local HC_1 = t_.getHumanoid()
        if HC_1 then
            HC_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end
local function fn376(cd)
    if not cd then
        return false
    end
    local xD = if cd.Name:find("Soil Pot", 1, true) then 1 else 0
    if xD == 1 then
        return true
    end
    for i, descendant in ipairs(cd:GetDescendants()) do
        local attr = descendant:GetAttribute("SlotKind")
        if attr == "Pot" or attr == "Plant" then
            return true
        end
    end
    return false
end
local function onCopyUSDTAddress()
    t_.copyText(tU.USDT_ADDRESS, "Copied USDT address")
end
local function fn413(ak, al)
    if setclipboard then
        setclipboard(ak)
    elseif toclipboard then
        toclipboard(ak)
    end
    Library:Notify(al)
end
local function fn419(aB, aC)
    local vy = Options[aB]
    local vz = vy and vy.Value
    local vz_1 = vz ~= ""
    local vA = type(vz) == "string" and vz_1
    if vA then
        return vz
    end
    return aC
end
local function onCopyVenmoLink()
    t_.copyText(tU.VENMO_LINK, "Copied Venmo link")
end
local function fn476(bM, bN)
    if not t_.isCookedSeafood(bM) then
        return false
    end
    local Name = bM.Name
    if bN == "Only Perfect" then
        return Name:find("Perfect", 1, true) ~= nil
    elseif bN == "Exclude Burned" then
        return Name:find("Burned", 1, true) == nil
    else
        return true
    end
end
local function onRenderStepped(pa)
    if Library.Unloaded then
        return
    end
    local CurrentCamera = Workspace.CurrentCamera
    if Toggles.WalkSpeedEnabled and Toggles.WalkSpeedEnabled.Value then
        local HF_1 = t_.getHumanoid()
        if HF_1 then
            HF_1.WalkSpeed = Options.WalkSpeed.Value
        end
    end
    if Toggles.Fly and Toggles.Fly.Value then
        local HF_3 = t_.getRoot()
        local HG = t_.getHumanoid()
        if HF_3 and HG and CurrentCamera then
            HG.PlatformStand = true
            local HG_1 = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                HG_1 = HG_1 + CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                HG_1 = HG_1 - CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                HG_1 = HG_1 - CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                HG_1 = HG_1 + CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                HG_1 = HG_1 + Vector3.new(0, 1, 0)
            end
            local HM = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
            if HM == 1 then
                HG_1 = HG_1 - Vector3.new(0, 1, 0)
            end
            HF_3.AssemblyLinearVelocity = Vector3.zero
            if HG_1.Magnitude > 0 then
                HF_3.CFrame = HF_3.CFrame + HG_1.Unit * Options.FlySpeed.Value * pa
            end
        end
    end
end
local function onInputBegan()
    t2.lastInput = tick()
end
local function onCopyPayPalLink()
    t_.copyText(tU.PAYPAL_LINK, "Copied PayPal link")
end
local function fn526()
    local vR = tonumber(LocalPlayer:GetAttribute("Cash")) or 0
    return vR
end
local function fn569()
    local EE_1
    local ED_1
    local EC_1
    local EB_1
    if not t_.isOn("AutoUpgradeCustomers") then
        return
    end
    EB_1, EC_1, EE_1, ED_1 = tW.customerUpgradeInfo()
    if ED_1 then
        return
    end
    local EB_2 = EE_1 and t_.getCash() >= EE_1
    if EB_2 then
        pcall(function()
            tD.UpgradeBuy:InvokeServer("CustomerCount")
        end)
    end
end
local function fn570(ef, eg)
    local ya_1 = (ef == "Toggle" and Toggles or Options)[eg]
    local x9_2 = type(ya_1) == "table" and ya_1.Type == ef
    return x9_2 and ya_1 or nil
end
local function fn602(fN, fO)
    if fO == true then
        return true
    elseif typeof(fN) ~= "number" then
        return false
    else
        return fN >= tA.PerfectStart
    end
end
local function worker13()
    while not Library.Unloaded do
        pcall(tW.collectFishermanOnce)
        task.wait(t_.getNumber("FishermanCollectInterval", 2))
    end
end
local function fn690(bj)
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local wk_1 = child:IsA("Tool") and bj(child)
            if wk_1 then
                return child
            end
        end
    end
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local wk_3 = child:IsA("Tool") and bj(child)
            if wk_3 then
                return child
            end
        end
    end
    return nil
end
local function fn711(cB, cC, cD)
    return string.format("<b>%s</b> %s %s", cB, t_.colored("-", "#5a6070"), t_.colored(cC, cD))
end
local function fn724()
    local E5_2
    local E4_1, E4_2
    local E3_1, E3_2
    local E2_1, E2_2
    local E1_1, E1_4
    E3_1, E4_1, E2_1, E1_1 = tW.customerUpgradeInfo()
    if E1_1 then
        tT.CustomerStatusLabel:SetText(t_.field("Customer upgrade", string.format("%d/%d maxed", E3_1, E4_1), tX))
    elseif E2_1 then
        local E1_2 = t_.getCash() >= E2_1
        local CustomerStatusLabel = tT.CustomerStatusLabel
        local field = t_.field
        local format = string.format
        local E8_1 = tostring(E2_1)
        local Fa_1 = E1_2 and "affordable" or "cannot afford"
        local E9_2 = format("%d/%d next $%s (%s)", E3_1, E4_1, E8_1, Fa_1)
        local E1_3 = E1_2 and t4 or t0
        CustomerStatusLabel:SetText(field("Customer upgrade", E9_2, E1_3))
    else
        tT.CustomerStatusLabel:SetText(t_.field("Customer upgrade", string.format("%d/%d", E3_1, E4_1), tX))
    end
    E5_2, E4_2, E3_2, E1_4, E2_2 = tW.landExpandInfo()
    if E1_4 then
        tT.LandStatusLabel:SetText(t_.field("Land expand", string.format("%d/%d maxed", E5_2, E4_2), tX))
    else
        if E2_2 and E3_2 then
            local E1_6 = t_.getCash() >= E3_2
            local LandStatusLabel = tT.LandStatusLabel
            local field = t_.field
            local format = string.format
            local E9_3 = tostring(E3_2)
            local Fb = E1_6 and "affordable" or "cannot afford"
            local Fa_3 = format("%d/%d cell %d $%s (%s)", E5_2, E4_2, E2_2, E9_3, Fb)
            local E1_7 = E1_6 and t4 or t0
            LandStatusLabel:SetText(field("Land expand", Fa_3, E1_7))
        else
            tT.LandStatusLabel:SetText(t_.field("Land expand", string.format("%d/%d", E5_2, E4_2), tX))
        end
    end
end
local function fn779(as)
    local vo = Toggles[as]
    return vo ~= nil and vo.Value == true
end
local function fn785(bH)
    local wP = bH and bH:IsA("Tool") and bH:GetAttribute("SeedItem") == true and tC.Plants.byId[bH.Name] ~= nil
    return wP
end
local function fn790(bD)
    local wL = bD and bD:IsA("Tool") and bD:GetAttribute("RawFood") == true
    return wL
end
local function fn795()
    pcall(function()
        t2.perfectConnection:Disconnect()
    end)
    pcall(function()
        t2.noclipConnection:Disconnect()
    end)
    pcall(function()
        t2.jumpConnection:Disconnect()
    end)
    pcall(function()
        t2.renderConnection:Disconnect()
    end)
    pcall(function()
        t2.antiAfkBegan:Disconnect()
    end)
    pcall(function()
        t2.antiAfkChanged:Disconnect()
    end)
    pcall(tW.clearPlaceGhosts)
    pcall(function()
        if t2.placeFolder then
            t2.placeFolder:Destroy()
        end
    end)
    t_.applyAntiGameplayPause(false)
    local HS = t_.getHumanoid()
    if HS then
        HS.PlatformStand = false
        HS.WalkSpeed = 16
    end
end
local function fn808(iP)
    local B8 = t_.getDropdown("PlaceRotation", "Auto")
    if B8 == "Auto" then
        return tW.entranceRotIndex(iP)
    end
    local B9 = tonumber(B8) or 0
    return math.floor(B9 / 90 + 0.5) % 4
end
local function antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local Hf = tick() - t2.lastInput
            local Hg = tick() - t2.lastTap
            if Hf >= 300 and Hg >= 60 then
                pcall(t2.antiAfkTap)
            else
                if Hf < 300 and Hg >= 300 then
                    pcall(t2.antiAfkTap)
                end
            end
        end
    end
end
local function fn817()
    t_.applyAntiGameplayPause(Toggles.AntiGameplayPause.Value)
end
local function fn822()
    if not Toggles.WalkSpeedEnabled.Value then
        local HP = t_.getHumanoid()
        if HP then
            HP.WalkSpeed = 16
        end
    end
end
local function worker3()
    while not Library.Unloaded do
        pcall(tW.promoCodesOnce)
        task.wait(t_.getNumber("PromoCodeInterval", 5))
    end
end
local function onCopyJoinScript_JobID()
    t_.copyText(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, tK), "Copied join script to clipboard")
end
local function fn856()
    if not Toggles.Fly.Value then
        local HN = t_.getHumanoid()
        if HN then
            HN.PlatformStand = false
        end
    end
end
local function worker18()
    while not Library.Unloaded do
        pcall(function()
            local GF = t_.isOn("AutoRestock") and not t_.hasAnyRawSeafood(t_.getDropdown("CookSeafood", "Any Seafood"))
            if GF then
                tW.tryRestockSeafood()
            end
        end)
        task.wait(1)
    end
end
local function fn891()
    local yn = {}
    for i, v in ipairs({ Toggles, Options }) do
        for k, v in pairs(v) do
            local yo = type(v) == "table" and type(v.Type) == "string" and not tB.Ignore[k]
            if yo then
                local yo_1 = tZ(k, v)
                if yo_1 then
                    yn[#yn + 1] = yo_1
                end
            end
        end
    end
    table.sort(yn, function(eB, eC)
        if eB.type ~= eC.type then
            return eB.type < eC.type
        end
        return eB.idx < eC.idx
    end)
    return { objects = yn }
end
local function fn910(jf, jg, jh, ji)
    for i, child in ipairs(Workspace.Stands:GetChildren()) do
        local Position = child:GetPivot().Position
        local Cs_1 = child:GetAttribute("FootX") or 4
        local Cs_2 = child:GetAttribute("FootZ") or 4
        local Cs_3 = math.abs(Position.X - jf.X) < (jg + Cs_1) / 2 and math.abs(Position.Z - jf.Z) < (jh + Cs_2) / 2
        if Cs_3 then
            return true
        end
    end
    for i, v in ipairs(t2.placePlan) do
        if i ~= ji then
            local Cr_2 = v.footX or 4
            local Cr_3 = v.footZ or 4
            local Cr_4 = math.abs(v.pos.X - jf.X) < (jg + Cr_2) / 2 and math.abs(v.pos.Z - jf.Z) < (jh + Cr_3) / 2
            if Cr_4 then
                return true
            end
        end
    end
    return false
end
local function fn916(iY, iZ, i_)
    local Cd = iY and iY:FindFirstChild("UnlockedCells")
    if not Cd then
        return false
    end
    local Cd_1 = tC.PlacementGrid.EDGE_TOLERANCE or 0.5
    for i, child in ipairs(Cd:GetChildren()) do
        if child:IsA("BasePart") then
            local Cd_2 = math.abs(iZ - child.Position.X) <= child.Size.X / 2 + Cd_1 and math.abs(i_ - child.Position.Z) <= child.Size.Z / 2 + Cd_1
            if Cd_2 then
                return true
            end
        end
    end
    return false
end
local function onRscripts()
    t_.copyText(tJ, "Copied Rscripts profile to clipboard")
end
local function fn972()
    local A__1
    local AZ_1
    if not t_.isOn("AutoCollectFisherman") then
        return
    end
    if not tW.isFishermanHired() then
        return
    end
    AZ_1, A__1 = pcall(function()
        return tD.FishermanCatch:InvokeServer("Collect")
    end)
    if AZ_1 then
        local AZ_2 = 0
        if type(A__1) == "number" then
            AZ_2 = A__1
        elseif type(A__1) == "table" then
            local A0 = A__1.Count or A__1.count or A__1.Amount or A__1.n
            local A1 = tonumber(A0) or 0
            AZ_2 = A1
            if AZ_2 == 0 and A__1.ok == true then
                AZ_2 = 1
            end
        elseif A__1 == true then
            AZ_2 = 1
        end
        if AZ_2 > 0 then
            t2.fishermanCaught = t2.fishermanCaught + AZ_2
            tT.FishermanStatsLabel:SetText(t_.field("Catches collected", tostring(t2.fishermanCaught), t0))
        end
    end
end
local function worker19()
    while not Library.Unloaded do
        pcall(tW.cookOnce)
        task.wait(0.35)
    end
end
local function onRefreshPlaceableList()
    tW.refreshPlaceDropdown()
    Library:Notify("Refreshed placeable equipment")
end
local function onHeartbeat()
    if Library.Unloaded then
        return
    end
    pcall(tW.perfectPickup)
end
local function fn1039()
    local vT = tonumber(LocalPlayer:GetAttribute("Shells")) or 0
    return vT
end
local function fn1052()
    if t2.placeFolder and t2.placeFolder.Parent then
        return t2.placeFolder
    end
    local CT_1 = Workspace:FindFirstChild("OuroborosPlaceVisuals")
    if not CT_1 then
        CT_1 = Instance.new("Folder")
        CT_1.Name = "OuroborosPlaceVisuals"
        CT_1.Parent = Workspace
    end
    t2.placeFolder = CT_1
    return CT_1
end
local function fn1090(ap)
    local DiscordGroup = ap:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = t_.copyDiscord })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = t_.copyDiscord })
end
local function antiGameplayPauseLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AntiGameplayPause.Value then
            t_.applyAntiGameplayPause(true)
        end
    end
end
local function worker5()
    while not Library.Unloaded do
        pcall(tW.dailyFreeOnce)
        task.wait(15)
    end
end
local function worker6()
    while not Library.Unloaded do
        pcall(tW.playtimeOnce)
        pcall(tW.questsOnce)
        task.wait(3)
    end
end
local function worker9()
    while not Library.Unloaded do
        pcall(tW.placeEquipmentOnce)
        task.wait(t_.getNumber("PlaceInterval", 0.35))
    end
end
local function worker7()
    while not Library.Unloaded do
        pcall(tW.upgradeCustomersOnce)
        pcall(tW.expandLandOnce)
        pcall(tW.updateUpgradeLabels)
        task.wait(1.5)
    end
end
local function fn1124(aw)
    local vu = Options[aw]
    local vv = vu and vu.Value
    local vv_1 = type(vv) == "table" and vv
    return vv_1 or {}
end
local function fn1130()
    local AV_1
    local AU_1
    if not t_.isOn("AutoHireFisherman") then
        return
    end
    if tW.isFishermanHired() then
        return
    end
    if t_.getCash() < tA.FishermanHireCost then
        return
    end
    AU_1, AV_1 = pcall(function()
        return tD.FishermanCatch:InvokeServer("Hire")
    end)
    if AU_1 and AV_1 ~= false then
        t2.fishermanHired = true
    end
end
local function worker10()
    while not Library.Unloaded do
        pcall(tW.buyEquipmentOnce)
        task.wait(t_.getNumber("BuyEquipmentInterval", 1))
    end
end
local function fn1168()
    if not t_.isOn("AutoPourSoil") then
        return
    end
    local Al = if not t_.findTool(t_.isSoilTool) then 1 else 0
    if Al == 1 then
        return
    end
    for i, v in ipairs(t_.ownedStands()) do
        if t_.isSoilPotModel(v) then
            t_.eachSlot(v, function(gB)
                if gB:GetAttribute("SlotKind") ~= "Pot" then
                    return
                end
                if gB:GetAttribute("SlotState") == "Filled" then
                    return
                end
                local Ag = t_.findTool(t_.isSoilTool)
                if not Ag then
                    return
                end
                t_.teleportNear(gB)
                t_.equipTool(Ag)
                task.wait(0.08)
                t_.firePlant(gB, "PourSoil")
                task.wait(0.12)
            end)
        end
    end
end
local function fn1177(i7, i8, i9, ja)
    if not i7 or not i8 then
        return false
    end
    local Cn_1 = i9 / 2
    local Co_1 = ja / 2
    local Cp = tW.pointCovered(i7, i8.X - Cn_1, i8.Z - Co_1) and tW.pointCovered(i7, i8.X + Cn_1, i8.Z - Co_1) and tW.pointCovered(i7, i8.X - Cn_1, i8.Z + Co_1) and tW.pointCovered(i7, i8.X + Cn_1, i8.Z + Co_1) and tW.pointCovered(i7, i8.X, i8.Z)
    return Cp
end
local function fn1190()
    t_.copyText(tL, "Copied Discord invite to clipboard")
end
local function fn1194()
    tW.clearPlaceGhosts()
    local D7 = not t_.isOn("PlaceVisualizer") and not t_.isOn("AutoPlaceEquipment")
    if D7 then
        if tT.PlaceStatusLabel then
            tT.PlaceStatusLabel:SetText(t_.field("Placement plan", "Off", tX))
        end
        return
    end
    local D7_1 = tW.buildPlacePlan()
    for i, v in ipairs(D7_1) do
        tW.makePlaceGhost(v.name, v.pos, v.rot, true)
    end
    if tT.PlaceStatusLabel then
        if #D7_1 == 0 then
            tT.PlaceStatusLabel:SetText(t_.field("Placement plan", "No free slots / no placer tools", t0))
        else
            tT.PlaceStatusLabel:SetText(t_.field("Placement plan", string.format("%d ready", #D7_1), t4))
        end
    end
end
local function fn1224()
    local attr = LocalPlayer:GetAttribute("PlotId")
    local w1 = Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("Plots")
    local w2 = w1
    if w1 then
        w1 = type(attr) == "string"
    end
    if w1 then
        local w1_1 = w2:FindFirstChild(attr)
        if w1_1 then
            return w1_1
        end
        if w2 then
            for i, child in ipairs(w2:GetChildren()) do
                if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
                    return child
                end
            end
        end
        return nil
    end
    if w2 then
        for i, child in ipairs(w2:GetChildren()) do
            if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
                return child
            end
        end
    end
    return nil
end
local function fn1227(bK)
    local wU = bK and bK:IsA("Tool") and type(bK.Name) == "string" and bK.Name:match("Soil$") ~= nil
    return wU
end
local function fn1258(iD)
    local B0 = t_.getPlot()
    local B1 = 0
    if B0 then
        local Spawns = B0:FindFirstChild("Spawns")
        local B0_1 = Spawns and Spawns:FindFirstChild("Player")
        if B0_1 then
            local LookVector = B0_1.CFrame.LookVector
            B1 = math.floor(math.atan2(-LookVector.X, -LookVector.Z) / 1.5707963267948966 + 0.5) % 4
        end
    end
    local B0_3 = tC.EquipmentAssets.model(iD)
    local B2_3 = B0_3
    if B2_3 then
        local B3 = tonumber(B0_3:GetAttribute("FrontAngle")) or 0
        B2_3 = B3
    end
    local B0_4 = B2_3 or 0
    return (B1 + math.floor(B0_4 / 90 + 0.5)) % 4
end
local function fn1259(nq)
    local Gj = nq:GetAttribute("Owner") or nq:GetAttribute("OwnerUserId") or nq:GetAttribute("DroneOwner") or nq:GetAttribute("UserId")
    if Gj == nil then
        return true
    end
    return Gj == LocalPlayer.UserId or Gj == LocalPlayer.Name or Gj == 0
end
local function fn1266(bA, bB)
    if not bA then
        return false
    end
    if bB == nil or bB == "Any Seafood" or bB == "Any" then
        return true
    end
    return t_.foodBase(bA) == bB
end
local function fn1276(bF)
    local wN = bF and bF:IsA("Tool") and bF:GetAttribute("CookedFood") == true
    return wN
end
local function fn1285(iU, iV)
    local Cb = tC.EquipmentAssets.model(iU)
    if Cb then
        return tC.PlacementGrid.footprint(Cb, iV)
    end
    return 4, 4
end
local function onCopyBitcoinAddress()
    t_.copyText(tU.BTC_ADDRESS, "Copied Bitcoin address")
end
local function worker16()
    while not Library.Unloaded do
        pcall(tW.harvestOnce)
        pcall(tW.pourSoilOnce)
        pcall(tW.plantOnce)
        task.wait(0.4)
    end
end
local function worker11()
    while not Library.Unloaded do
        pcall(tW.buySeafoodOnce)
        task.wait(t_.getNumber("BuySeafoodInterval", 0.75))
    end
end
local function worker8()
    while not Library.Unloaded do
        pcall(tW.updatePlaceVisualizer)
        task.wait(0.75)
    end
end
local function fn1416(b8, b9)
    local xs = t_.cookerMethod(b8)
    if not xs then
        return false
    elseif b9 == "All" then
        return true
    else
        return xs == tA.CookerMethod[b9]
    end
end
local function fn1426(cz, cA)
    return string.format('<font color="%s">%s</font>', cA, cz)
end
local function fn1431(aH, aI)
    local vF = Options[aH]
    local vG = vF and tonumber(vF.Value)
    if vG ~= nil then
        return vG
    end
    return aI
end
local function fn1437()
    local vV = (tonumber(LocalPlayer:GetAttribute("InventoryCap")))
    local vZ = if vV then 1 else 0
    local vX = 3062 * vZ + 1698 * (1 - vZ)
    local vY = 3561 * vZ + 177 * (1 - vZ)
    if not ((vX * 1417 + vY * 3447 + vX * vY) % 16777213 == 10740190) then
        vV = 1250
    end
    return vV
end
local function onCopySolanaAddress()
    t_.copyText(tU.SOL_ADDRESS, "Copied Solana address")
end
local function worker2()
    while not Library.Unloaded do
        pcall(tW.droneCratesOnce)
        task.wait(0.5)
    end
end
local function fn1488(bt)
    local wA_1
    local wy = typeof(bt) == "Instance" and bt.Name
    local wz = wy or bt
    local wz_1
    if type(wz) ~= "string" then
        return nil
    end
    wz_1, wA_1 = pcall(tC.FoodVariants.baseFood, wz)
    local wB = wz_1 and type(wA_1) == "string"
    if wB and wA_1 ~= "" then
        return wA_1
    end
    return wz:gsub("^Burned ", ""):gsub("^Perfect ", ""):gsub("^Grilled ", ""):gsub("^Fried ", ""):gsub("^Boiled ", ""):gsub("^Steamed ", "")
end
local function fn1514()
    local EG = t_.getPlot()
    if not EG then
        return 0, 15, nil, false, nil
    end
    local UnlockedCells = EG:FindFirstChild("UnlockedCells")
    local LockedCells = EG:FindFirstChild("LockedCells")
    local EG_1 = UnlockedCells and #UnlockedCells:GetChildren()
    local EH_1 = EG_1 or 0
    local EG_2 = 15
    if EH_1 >= EG_2 then
        return EH_1, EG_2, nil, true, nil
    end
    local EH_2 = nil
    if LockedCells then
        for i, child in ipairs(LockedCells:GetChildren()) do
            local EI_1 = tonumber(child.Name) or child:GetAttribute("CellNumber")
            local EK_1 = EI_1
            if EI_1 then
                EI_1 = EH_2 == nil or EK_1 < EH_2
            end
            if EI_1 then
                EH_2 = EK_1
            end
        end
    end
    local EI_2 = EH_2 and tC.Cells.costFor(EH_2, EH_1)
    return EH_1, EG_2, EI_2 or nil, false, EH_2
end
local function onExportConfigToClipboard()
    local yI_1
    local yH_1
    yH_1, yI_1 = pcall(HttpService.JSONEncode, HttpService, tP())
    if not yH_1 then
        Library:Notify("Failed to encode the config")
        return
    end
    local yH_2 = setclipboard or toclipboard
    local yH_3 = type(yH_2) ~= "function" or not pcall(yH_2, yI_1)
    if yH_3 then
        Library:Notify("Your executor does not support copying to the clipboard")
        return
    end
    Library:Notify("Config copied to clipboard", 6)
end
local function worker15()
    while not Library.Unloaded do
        pcall(tW.buySeedsOnce)
        task.wait(t_.getNumber("BuySeedInterval", 1))
    end
end
local function fn1546()
    local Character = LocalPlayer.Character
    local vJ = Character and Character:FindFirstChildOfClass("Humanoid")
    return vJ
end
local function onUnload()
    Library:Unload()
end
local function fn1549(ci, cj)
    for i, descendant in ipairs(ci:GetDescendants()) do
        local xK = descendant:IsA("BasePart") and descendant:GetAttribute("SlotState") ~= nil
        if xK then
            cj(descendant)
        end
    end
end
local function onInputChanged(ow)
    local UserInputType = ow.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        t2.lastInput = tick()
    end
end
local function onImportConfigFromClipboardTex()
    local yN_1
    local yL = Options.SaveManager_ImportSource.Value or ""
    local yL_1
    local yM = tostring(yL):match("^%s*(.-)%s*$")
    if yM == "" then
        Library:Notify("Paste an exported config into the box first")
        return
    end
    yL_1, yN_1 = pcall(HttpService.JSONDecode, HttpService, yM)
    local yM_1 = not yL_1 or type(yN_1) ~= "table" or type(yN_1.objects) ~= "table"
    if yM_1 then
        Library:Notify("That is not a valid exported config")
        return
    end
    local yL_2 = 0
    for i, v in ipairs(yN_1.objects) do
        if tE(v) then
            yL_2 += 1
        end
    end
    if yL_2 == 0 then
        Library:Notify("No settings in that config matched this script")
        return
    end
    Options.SaveManager_ImportSource:SetValue("")
    local yN_2 = yL_2 == 1 and "" or "s"
    Library:Notify(("Imported %d setting%s"):format(yL_2, yN_2), 6)
end
tA = nil
tB = nil
tC = nil
tD = nil
tE = nil
Library = nil
tI = nil
tJ = nil
tK = nil
tL = nil
PlayerGui = nil
LocalPlayer = nil
tP = nil
tR = nil
Workspace = nil
tT = nil
tU = nil
HttpService = nil
tW = nil
tX = nil
VirtualUser = nil
tZ = nil
t_ = nil
t0 = nil
UserInputService = nil
t2 = nil
Options = nil
t4 = nil
Toggles = nil
local tF, tG, CoreGui, GuiService
UserInputService, VirtualUser, HttpService, Workspace, GuiService, CoreGui, LocalPlayer, PlayerGui = nil, nil, nil, nil, nil, nil, nil, nil
local t6 = game:GetService("Players")
local t8 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
Workspace = game:GetService("Workspace")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
LocalPlayer = t6.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
if getgenv then
    getgenv().gethui = function()
        return PlayerGui
    end
end
if setthreadidentity then
    setthreadidentity(8)
end
tL, tJ, t6, tG, tD, tC = nil, nil, nil, nil, nil, nil
local uf = "My Seafood Stand"
tL = "https://discord.gg/ehKVq7pf7v"
tJ = "https://rscripts.net/@Ouroboros"
local Remotes = t8:WaitForChild("Remotes")
local ud_1, ud_4
local uc = Remotes:WaitForChild("Events")
local ub = Remotes:WaitForChild("Functions")
local Configs = t8:WaitForChild("Modules"):WaitForChild("Configs")
local t7 = t8.Modules:WaitForChild("BaseModules")
if tC and tC and (tG or not tG) and (tG and not tG or tG and tG) or not (tC and tC and (tG or not tG) and (tG and not tG or tG and tG)) then
    t6 = t8.Modules:WaitForChild("Utility")
else
    t6.Modules:WaitForChild("Utility")
end
tG = {
    CookAction = uc:WaitForChild("CookAction"),
    PlantAction = uc:WaitForChild("PlantAction"),
    DroneGive = uc:WaitForChild("DroneGive"),
    DroneCrate = uc:WaitForChild("DroneCrate"),
    FreeRewardTask = uc:WaitForChild("FreeRewardTask"),
    SeasonPassRequest = uc:WaitForChild("SeasonPassRequest"),
    PlaytimeState = uc:WaitForChild("PlaytimeState"),
    PlaceStand = uc:WaitForChild("PlaceStand")
}
tD = {
    FoodBuy = ub:WaitForChild("FoodBuy"),
    PlantsBuy = ub:WaitForChild("PlantsBuy"),
    EquipmentBuy = ub:WaitForChild("EquipmentBuy"),
    CellBuy = ub:WaitForChild("CellBuy"),
    UpgradeBuy = ub:WaitForChild("UpgradeBuy"),
    FishermanCatch = ub:WaitForChild("FishermanCatch"),
    FishermanUpgrade = ub:WaitForChild("FishermanUpgrade"),
    DailyClaim = ub:WaitForChild("DailyClaim"),
    FreeRewardClaim = ub:WaitForChild("FreeRewardClaim"),
    PlaytimeClaim = ub:WaitForChild("PlaytimeClaim"),
    QuestClaim = ub:WaitForChild("QuestClaim"),
    SeasonPassClaim = ub:WaitForChild("SeasonPassClaim"),
    CodeRedeem = ub:WaitForChild("CodeRedeem")
}
tC = {
    Food = require(Configs:WaitForChild("FoodConfig")),
    Plants = require(Configs:WaitForChild("PlantsConfig")),
    Equipment = require(Configs:WaitForChild("EquipmentConfig")),
    Cooking = require(Configs:WaitForChild("CookingConfig")),
    Cells = require(Configs:WaitForChild("CellsConfig")),
    Upgrades = require(Configs:WaitForChild("UpgradesConfig")),
    Fisherman = require(Configs:WaitForChild("FishermanConfig")),
    Codes = require(Configs:WaitForChild("CodesConfig")),
    FoodVariants = require(t7:WaitForChild("FoodVariants")),
    PlacementGrid = require(t6:WaitForChild("PlacementGrid")),
    EquipmentAssets = require(t6:WaitForChild("EquipmentAssets"))
}
t6 = tC.Cooking.perfectStart or 0.4
t7 = tC.Cooking.perfectEnd or 0.66
t8 = tC.Cooking.burnStart
local uv = if t8 then 1 else 0
local ut = 356 * uv + 2035 * (1 - uv)
local uu = 3875 * uv + 2508 * (1 - uv)
if not ((ut * 2307 + uu * 3517 + ut * uu) % 16777213 == 15829167) then
    t8 = 0.84
end
local ua_1 = tC.Fisherman.setup
if ua_1 then
    ub = 2
    repeat
        if ((ub or not ub or (ub or ub)) and ((ub or ub) and (ub and ub)) or (ub or not ub or not ub and not ub) and ((ub or not ub) and (ub or ub))) and (ub and not ub or not ub and ub or (not ub and ub or (ub or ub)) or (not ub or ub or ub and not ub or (not ub or not ub or (ub or ub)))) and not (((ub or not ub or (ub or ub)) and ((ub or ub) and (ub and ub)) or (ub or not ub or not ub and not ub) and ((ub or not ub) and (ub or ub))) and (ub and not ub or not ub and ub or (not ub and ub or (ub or ub)) or (not ub or ub or ub and not ub or (not ub or not ub or (ub or ub))))) then
            tC = ua_1.Fisherman.setup.cost
        else
            ua_1 = tC.Fisherman.setup.cost
        end
        ub = (ub + 3) % 8
    until (ub * 7 + 4) % 8 == 7
end
ub = ua_1 or 10000
tA = nil
tA = {
    PerfectStart = t6,
    PerfectEnd = t7,
    BurnStart = t8,
    FishermanHireCost = ub,
    FoodNames = { "Any Seafood" },
    FoodPrice = {},
    SeedNames = {},
    SeedPrice = {},
    EquipmentNames = {},
    EquipmentPrice = {},
    EquipmentCategory = {},
    EquipmentByCategory = { All = {}, Tables = {}, Cooking = {}, Soil = {}, PottedSoil = {}, Boosters = {}, Prep = {} },
    FishermanUpgradeNames = {},
    FishermanUpgradeMeta = {},
    PromoCodes = {},
    CookerFilters = { "All", "Grills", "Fryers", "Steamers", "Pots" },
    CookerMethod = { Grills = "Grilled", Fryers = "Fried", Steamers = "Steamed", Pots = "Boiled" }
}
for i, v in ipairs(tC.Food) do
    t6 = type(v) == "table" and type(v.id) == "string"
    if t6 then
        table.insert(tA.FoodNames, v.id)
        t6 = tA.FoodPrice
        t7 = v.id
        t8 = tonumber(v.price) or 0
        t6[t7] = t8
    end
end
for i, v in ipairs(tC.Plants.seeds) do
    t6 = type(v) == "table" and type(v.id) == "string"
    if t6 then
        table.insert(tA.SeedNames, v.id)
        t6 = tA.SeedPrice
        t7 = v.id
        t8 = (tonumber(v.price))
        local uK = if t8 then 1 else 0
        local uI = 2547 * uK + 3081 * (1 - uK)
        local uJ = 1545 * uK + 3336 * (1 - uK)
        if not ((uI * 2964 + uJ * 115 + uI * uJ) % 16777213 == 11662098) then
            t8 = 0
        end
        t6[t7] = t8
    end
end
for i, v in ipairs(tC.Equipment) do
    t6 = type(v) == "table" and type(v.id) == "string"
    if t6 then
        table.insert(tA.EquipmentNames, v.id)
        t6 = tA.EquipmentPrice
        t7 = v.id
        t8 = tonumber(v.price) or 0
        t6[t7] = t8
        t6 = v.category or "All"
        t7 = t6
        tA.EquipmentCategory[v.id] = t7
        table.insert(tA.EquipmentByCategory.All, v.id)
        if tA.EquipmentByCategory[t7] then
            table.insert(tA.EquipmentByCategory[t7], v.id)
        end
    end
end
for i, v in ipairs(tC.Fisherman.upgrades) do
    t6 = type(v) == "table" and type(v.id) == "string"
    if t6 then
        table.insert(tA.FishermanUpgradeNames, v.id)
        tA.FishermanUpgradeMeta[v.id] = v
    end
end
if type(tC.Codes.codes) == "table" then
    for k in pairs(tC.Codes.codes) do
        if type(k) == "string" then
            table.insert(tA.PromoCodes, k)
        end
    end
end
for i, v in ipairs({ "RELEASE", "FISHERMAN", "SHELLS" }) do
    t6 = false
    for i, v2 in ipairs(tA.PromoCodes) do
        if v2 == v then
            t6 = true
            break
        end
    end
    if not t6 then
        table.insert(tA.PromoCodes, v)
    end
end
Library, tB, Toggles, Options, t2, t_, tW, tT, ub = nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
pcall(fn144)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
tB = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
t2 = {
    fishermanCaught = 0,
    foodCollected = 0,
    foodServed = 0,
    seedsPlanted = 0,
    cratesClaimed = 0,
    claimedPlaytime = {},
    claimedQuests = {},
    claimedCrates = {},
    attemptedCodes = {},
    fishermanHired = false,
    lastInput = tick(),
    lastTap = tick(),
    placePlan = {},
    placeGhosts = {}
}
t_ = {}
if ub and not t_ and (t_ and not ub) or (not ub and t_ or t_ and not ub) or not (ub and not t_ and (t_ and not ub) or (not ub and t_ or t_ and not ub)) then
    tW = {}
else
    tB = {}
end
if (ThemeManager and not tW or 24) and ((tW or tT) and false) and not ((ThemeManager and not tW or 24) and ((tW or tT) and false)) then
else
    tT = {}
end
t_.copyText = fn413
t_.copyDiscord = fn1190
t_.addDiscordButton = fn1090
t_.isOn = fn779
t_.selectedMap = fn1124
t_.getDropdown = fn419
t_.getNumber = fn1431
t_.getHumanoid = fn1546
t_.getRoot = fn67
t_.getCash = fn526
t_.getShells = fn1039
t_.getInventoryCap = fn1437
t_.countInventory = function()
    local aW
    aW = 0
    local function aX(aY)
        if not aY then
            return
        end
        for i, child in ipairs(aY:GetChildren()) do
            local v_ = child:IsA("Tool") and child.Name ~= "Remover"
            if v_ then
                aW += 1
            end
        end
    end
    aX(LocalPlayer.Backpack)
    aX(LocalPlayer.Character)
    return aW
end
t_.teleportNear = function(a3)
    local v7 = t_.getRoot()
    local v8 = not a3
    local v8_1
    local v9 = not v7 or v8
    local v9_1
    if v9 then
        return
    end
    v8_1, v9_1 = pcall(function()
        return a3.CFrame
    end)
    local wa = v8_1 and typeof(v9_1) == "CFrame"
    if wa then
        v7.CFrame = v9_1 + Vector3.new(0, 3, 0)
    end
end
t_.unequipTools = function()
    local wf = t_.getHumanoid()
    if wf then
        pcall(function()
            wf:UnequipTools()
        end)
    end
end
t_.equipTool = function(bd)
    local wh = t_.getHumanoid()
    if wh and bd and bd.Parent then
        pcall(function()
            wh:EquipTool(bd)
        end)
        return true
    end
    return false
end
t_.findTool = fn690
t_.foodBase = fn1488
t_.matchesSeafoodFilter = fn1266
t_.isRawSeafood = fn790
t_.isCookedSeafood = fn1276
t_.isSeedTool = fn785
t_.isSoilTool = fn1227
t_.cookedQualityOk = fn476
t_.getPlot = fn1224
t_.ownedStands = fn100
t_.cookerMethod = fn14
t_.cookerMatchesFilter = fn1416
t_.isSoilPotModel = fn376
t_.eachSlot = fn1549
t_.fireCook = function(cn, co)
    pcall(function()
        tG.CookAction:FireServer(cn, co)
    end)
end
t_.firePlant = function(ct, cu)
    pcall(function()
        tG.PlantAction:FireServer(ct, cu)
    end)
end
t_.colored = fn1426
t_.field = fn711
t_.findRawSeafood = function(cF)
    return t_.findTool(function(cH)
        local xS = t_.isRawSeafood(cH) and t_.matchesSeafoodFilter(cH, cF)
        return xS
    end)
end
t_.findCookedSeafood = function(cL, cM)
    return t_.findTool(function(cO)
        local xU = t_.cookedQualityOk(cO, cM) and t_.matchesSeafoodFilter(cO, cL)
        return xU
    end)
end
t_.findSeed = function(cT)
    return t_.findTool(function(cV)
        if not t_.isSeedTool(cV) then
            return false
        end
        if cT == nil or cT == "Any Available" then
            return true
        end
        return cV.Name == cT
    end)
end
t_.hasAnyRawSeafood = fn295
t6 = Library:CreateWindow({
    Title = "Ouroboros",
    Font = Enum.Font.BuilderSans,
    Footer = { { Text = tL, Copyable = true }, "|", uf },
    Icon = 78539693571783,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 0
})
ub = {
    Info = t6:AddTab("Info", "info"),
    Main = t6:AddTab("Main", "flame"),
    Garden = t6:AddTab("Garden", "sprout"),
    Fisherman = t6:AddTab("Fisherman", "fish"),
    Shop = t6:AddTab("Shop", "shopping-cart"),
    Claims = t6:AddTab("Claims", "gift"),
    Player = t6:AddTab("Player", "person-standing"),
    Settings = t6:AddTab("Settings", "settings")
}
for k, v in ub do
    t_.addDiscordButton(v)
end
t4, t7, t0, tX, tU = nil, nil, nil, nil, nil
if not tX and not tU and 5 or (not t7 or false or (tX or t4)) or not (not tX and not tU and 5 or (not t7 or false or (tX or t4))) then
    t4 = "#7fd47f"
    t7 = "#6ec1ff"
    t0 = "#e8a34d"
else
    t0 = "#7fd47f"
    t4 = "#6ec1ff"
    t7 = "#e8a34d"
end
tX = "#8b93a3"
tU = {
    LTC_ADDRESS = "LSZPqKSsD1x6QXea2H8JS17nXMLnmtew3w",
    BTC_ADDRESS = "bc1qwc9exvcn3ykjqnsa0t9gakuccr494ljjuuqj99",
    ETH_ADDRESS = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
    USDT_ADDRESS = "0xaE95A405D007a6F858E5d35714111B075fEFb40a",
    SOL_ADDRESS = "Hq5jPHKDKjyHhccc6UULcbYTK6aKBBbTDmHNRXGKBKGp",
    PAYPAL_LINK = "https://paypal.me/TheTruckerGOD",
    VENMO_LINK = "https://venmo.com/u/miserablemusic",
    LTC = "#345d9d",
    BTC = "#f7931a",
    ETH = "#627eea",
    USDT = "#26a17b",
    SOL = "#14f195",
    PAYPAL = "#0070ba",
    VENMO = "#008cff"
}
tR, tK, ud_1 = nil, nil, nil
tR = "Unknown"
pcall(fn38)
uc = ub.Info:AddLeftGroupbox("Account", "circle-user")
uc:AddLabel(t_.field("User", LocalPlayer.Name, t4), true)
uc:AddLabel(t_.field("Status", "Keyless", t4), true)
uc:AddLabel(t_.field("Executor", tR, t4), true)
local ue = ub.Info:AddLeftGroupbox("Game Info", "gamepad-2")
if not tR and not ue and (not uc and not ue) and (tR and uc or uc and ue) or (not ue and not ud_1 or ud_1 and not ud_1) and ((not ud_1 or not uc) and (uc or ud_1)) or not (not tR and not ue and (not uc and not ue) and (tR and uc or uc and ue) or (not ue and not ud_1 or ud_1 and not ud_1) and ((not ud_1 or not uc) and (uc or ud_1))) then
    ue:AddLabel(t_.colored(uf .. " [" .. tostring(game.PlaceId) .. "]", t7), true)
    ue:AddLabel(t_.field("Place ID", tostring(game.PlaceId), t7), true)
    tT.SessionLabel = ue:AddLabel(t_.field("Session time", "0s", t0), true)
    tK = tostring(game.JobId)
else
    t0:AddLabel((nil)(t7 .. " [" .. tostring(game.PlaceId) .. "]", tT), true)
    t0:AddLabel((nil)("Place ID", tostring(game.PlaceId), tT), true)
    tK.SessionLabel = t0:AddLabel((nil)("Session time", "0s", ue), true)
    t_ = tostring(game.JobId)
end
local ud_2 = #tK > 18
if ud_2 then
    t6 = 0
    repeat
        if (not t6 or t6 or (not t6 or t6)) and ((not t6 or not t6) and (not t6 or not t6)) or (t6 and t6 or not t6 and t6) and (not t6 or not t6 or not t6 and not t6) or not ((not t6 or t6 or (not t6 or t6)) and ((not t6 or not t6) and (not t6 or not t6)) or (t6 and t6 or not t6 and t6) and (not t6 or not t6 or not t6 and not t6)) then
            ud_2 = string.sub(tK, 1, 18) .. "..."
        else
            tK = string.sub(ud_2, 1, 18) .. "..."
        end
        t6 = (t6 + 3) % 4
    until (t6 * 3 + 2) % 4 == 3
end
t6 = ud_2 or tK
local ud_3 = t6
ue:AddLabel(t_.field("Server", ud_3, tX), true)
ue:AddButton({ Text = "Copy join script (Job ID)", Func = onCopyJoinScript_JobID })
tT.sessionStart = os.clock()
task.spawn(worker)
t8 = ub.Info:AddRightGroupbox("Scripts", "package")
t8:AddLabel(t_.colored("Included in this hub", tX), true)
t8:AddLabel(t_.colored(uf, t7), true)
local uk = ub.Info:AddRightGroupbox("Features", "list")
uk:AddLabel(t_.colored("Auto Cook", t7), true)
uk:AddLabel(t_.colored("Auto Garden", t4), true)
uk:AddLabel(t_.colored("Auto Fisherman", t0), true)
uk:AddLabel(t_.colored("Auto Shop", t7), true)
uk:AddLabel(t_.colored("Auto Place", t0), true)
uk:AddLabel(t_.colored("Auto Claims", tX), true)
uk:AddLabel(t_.colored("Misc Utilities", tX), true)
local SocialsGroup = ub.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = t_.copyDiscord })
SocialsGroup:AddButton({ Text = "Rscripts", Func = onRscripts })
local ui = ub.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
ui:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
ui:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
ui:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
ui:AddButton({ Text = "Copy Discord Invite", Func = t_.copyDiscord })
local uh = ub.Info:AddRightGroupbox("Donations", "heart")
uh:AddLabel(t_.colored("All donations are optional but appreciated.", t0), true)
uh:AddLabel(t_.colored("If you donate you get a special role, just PING after you donate.", t4), true)
uh:AddDivider()
uh:AddLabel(t_.colored("LTC / Litecoin", tU.LTC), true)
uh:AddButton({ Text = "Copy Litecoin Address", Func = onCopyLitecoinAddress })
uh:AddLabel(t_.colored("BTC / Bitcoin", tU.BTC), true)
uh:AddButton({ Text = "Copy Bitcoin Address", Func = onCopyBitcoinAddress })
uh:AddLabel(t_.colored("ETH / Ethereum", tU.ETH), true)
uh:AddButton({ Text = "Copy Ethereum Address", Func = onCopyEthereumAddress })
uh:AddLabel(t_.colored("USDT", tU.USDT), true)
uh:AddButton({ Text = "Copy USDT Address", Func = onCopyUSDTAddress })
uh:AddLabel(t_.colored("Solana", tU.SOL), true)
uh:AddButton({ Text = "Copy Solana Address", Func = onCopySolanaAddress })
uh:AddLabel(t_.colored("PayPal", tU.PAYPAL), true)
uh:AddButton({ Text = "Copy PayPal Link", Func = onCopyPayPalLink })
uh:AddLabel(t_.colored("Venmo", tU.VENMO), true)
uh:AddButton({ Text = "Copy Venmo Link", Func = onCopyVenmoLink })
uh:AddDivider()
uh:AddLabel(t_.colored("Don't have any of the listed currencies but still wanna donate?", tX), true)
uh:AddLabel(t_.colored("DM me and we'll work something out.", t7), true)
uc = ub.Info:AddRightGroupbox("FAQ", "circle-help")
uc:AddLabel("Where do I get a good config?", true)
uc:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
uc:AddLabel("How do I import / export configs?", true)
uc:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
uc:AddLabel("How do I report bugs?", true)
uc:AddLabel("Join the Discord and post it in the bugs channel.", true)
uc:AddLabel("How do I make suggestions?", true)
uc:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
uc:AddLabel("How do I get help or updates?", true)
uc:AddLabel("Join the Discord, updates and support are posted there first.", true)
local CookingGroup = ub.Main:AddLeftGroupbox("Cooking", "flame")
CookingGroup:AddToggle("AutoCook", { Text = "Auto Cook", Default = false })
CookingGroup:AddDropdown("CookerFilter", { Text = "Cooker Filter", Values = tA.CookerFilters, Default = "All" })
CookingGroup:AddDropdown("CookSeafood", { Text = "Seafood Type", Values = tA.FoodNames, Default = "Any Seafood" })
CookingGroup:AddToggle("PerfectPickup", { Text = "100% Perfect Cook Auto-Pickup", Default = false })
CookingGroup:AddToggle("AutoRestock", { Text = "Auto Restock Raw Seafood", Default = false })
local ServeGroup = ub.Main:AddRightGroupbox("Serve", "utensils")
ServeGroup:AddToggle("AutoServe", { Text = "Auto Serve / Place on Tables", Default = false })
ServeGroup:AddDropdown("ServeSeafood", { Text = "Food Type", Values = tA.FoodNames, Default = "Any Seafood" })
ServeGroup:AddDropdown("ServeQuality", { Text = "Quality Filter", Values = { "Any", "Only Perfect", "Exclude Burned" }, Default = "Any" })
ServeGroup:AddSlider("ServeDelay", { Text = "Serve Delay", Default = 0.25, Min = 0.05, Max = 2, Rounding = 2 })
local DronesGroup = ub.Main:AddLeftGroupbox("Drones", "plane")
DronesGroup:AddToggle("AutoDroneCrates", { Text = "Auto Collect Drone Crates / Air Drops", Default = false })
local AutoPlaceGroup = ub.Main:AddRightGroupbox("Auto Place", "box")
AutoPlaceGroup:AddToggle("AutoPlaceEquipment", { Text = "Auto Place Equipment", Default = false })
AutoPlaceGroup:AddToggle("PlaceVisualizer", { Text = "Placement Visualizer", Default = true })
AutoPlaceGroup:AddDropdown("PlaceEquipment", { Text = "Place From Backpack", Values = tA.EquipmentNames, Multi = true, Default = {} })
AutoPlaceGroup:AddDropdown("PlaceRotation", { Text = "Rotation", Values = { "Auto", "0", "90", "180", "270" }, Default = "Auto" })
AutoPlaceGroup:AddSlider("PlaceInterval", { Text = "Place Interval", Default = 0.35, Min = 0.1, Max = 3, Rounding = 2 })
AutoPlaceGroup:AddButton({ Text = "Refresh Placeable List", Func = onRefreshPlaceableList })
tT.PlaceStatusLabel = AutoPlaceGroup:AddLabel(t_.field("Placement plan", "Idle", tX), true)
local GardenGroup = ub.Garden:AddLeftGroupbox("Garden", "sprout")
GardenGroup:AddToggle("AutoHarvest", { Text = "Auto Harvest Ripe Crops", Default = false })
GardenGroup:AddToggle("AutoPourSoil", { Text = "Auto Pour Soil", Default = false })
GardenGroup:AddToggle("AutoPlant", { Text = "Auto Plant Seeds", Default = false })
local uq = { "Any Available" }
for i, v in ipairs(tA.SeedNames) do
    table.insert(uq, v)
end
uc, t8, t7, ud_4 = nil, nil, nil, nil
t6 = 4
while true do
    do
        local J9 = bit32.rrotate(bit32.bxor(bit32.lrotate(t6, 30), string.byte(tostring(t7))), 16)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(J9, 1196879379), 2717734945), (bit32.bxor(bit32.band(J9, 3098087916), 3281811321))), 2717734945), 3281811321) == J9 then
            GardenGroup:AddDropdown("PlantSeed", { Text = "Seed Type", Values = uq, Default = "Any Available" })
            uc = ub.Garden:AddRightGroupbox("Buy Seeds", "shopping-bag")
            uc:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false })
            uc:AddDropdown("BuySeeds", { Text = "Seeds", Values = tA.SeedNames, Multi = true, Default = {} })
            uc:AddSlider("BuySeedInterval", { Text = "Buy Interval", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
            t8 = ub.Fisherman:AddLeftGroupbox("Fisherman", "fish")
            t8:AddToggle("AutoHireFisherman", { Text = "Auto Hire Fisherman", Default = false })
            t8:AddToggle("AutoCollectFisherman", { Text = "Auto Collect Fisherman Catches", Default = false })
            t8:AddSlider("FishermanCollectInterval", { Text = "Collect Interval", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
            tT.FishermanStatsLabel = t8:AddLabel(t_.field("Catches collected", "0", t0), true)
            t7 = ub.Fisherman:AddRightGroupbox("Upgrades", "arrow-up")
            t7:AddToggle("AutoUpgradeFisherman", { Text = "Auto Upgrade Fisherman (Shells)", Default = false })
            t7:AddDropdown("FishermanUpgrades", { Text = "Upgrades", Values = tA.FishermanUpgradeNames, Multi = true, Default = {} })
            t7:AddSlider("FishermanUpgradeInterval", { Text = "Upgrade Interval", Default = 2, Min = 0.5, Max = 15, Rounding = 1 })
            ud_4 = {}
        else
            ud_4:AddDropdown("PlantSeed", { Default = "Any Available", Text = "Seed Type", Values = t8 })
            uq = GardenGroup.Garden:AddRightGroupbox("Buy Seeds", "shopping-bag")
            uq:AddToggle("AutoBuySeeds", { Text = "Auto Buy Seeds", Default = false })
            uq:AddDropdown("BuySeeds", { Multi = true, Values = t_.SeedNames, Default = {}, Text = "Seeds" })
            uq:AddSlider("BuySeedInterval", { Min = 0.2, Default = 1, Max = 10, Text = "Buy Interval", Rounding = 1 })
            tA = GardenGroup.Fisherman:AddLeftGroupbox("Fisherman", "fish")
            tA:AddToggle("AutoHireFisherman", { Text = "Auto Hire Fisherman", Default = false })
            tA:AddToggle("AutoCollectFisherman", { Text = "Auto Collect Fisherman Catches", Default = false })
            tA:AddSlider("FishermanCollectInterval", { Min = 0.5, Text = "Collect Interval", Max = 15, Default = 2, Rounding = 1 })
            uc.FishermanStatsLabel = tA:AddLabel(t0.field("Catches collected", "0", tT), true)
            ub = GardenGroup.Fisherman:AddRightGroupbox("Upgrades", "arrow-up")
            ub:AddToggle("AutoUpgradeFisherman", { Text = "Auto Upgrade Fisherman (Shells)", Default = false })
            ub:AddDropdown("FishermanUpgrades", { Values = t_.FishermanUpgradeNames, Text = "Upgrades", Default = {}, Multi = true })
            ub:AddSlider("FishermanUpgradeInterval", { Min = 0.5, Default = 2, Text = "Upgrade Interval", Rounding = 1, Max = 15 })
            t7 = {}
        end
        t6 = (t6 + 1) % 8
        if (t6 * 1 + 7) % 8 == 4 then
            break
        end
        continue
    end
end
t6 = #tA.FoodNames
local vk = 2
local vi = t6
while vk <= vi do
    local vl = vk
    table.insert(ud_4, tA.FoodNames[vl])
    vk += 1
end
ue, t8 = nil, nil
uh = ub.Shop:AddLeftGroupbox("Seafood", "fish")
uh:AddToggle("AutoBuySeafood", { Text = "Auto Buy Seafood", Default = false })
uh:AddDropdown("BuySeafood", { Text = "Seafood", Values = ud_4, Multi = true, Default = { Shrimp = true } })
uh:AddSlider("BuySeafoodInterval", { Text = "Buy Interval", Default = 0.75, Min = 0.2, Max = 10, Rounding = 2 })
uh:AddSlider("MaxInventory", { Text = "Max Inventory", Default = 50, Min = 1, Max = 500, Rounding = 0 })
local EquipmentGroup = ub.Shop:AddRightGroupbox("Equipment", "wrench")
EquipmentGroup:AddToggle("AutoBuyEquipment", { Text = "Auto Buy Equipment", Default = false })
EquipmentGroup:AddDropdown("EquipmentCategory", {
    Text = "Category",
    Values = { "All", "Tables", "Cooking", "Soil", "PottedSoil", "Boosters", "Prep" },
    Default = "All"
})
EquipmentGroup:AddDropdown("BuyEquipment", { Text = "Equipment", Values = tA.EquipmentNames, Multi = true, Default = {} })
EquipmentGroup:AddSlider("BuyEquipmentInterval", { Text = "Buy Interval", Default = 1, Min = 0.2, Max = 10, Rounding = 1 })
local PlotUpgradesGroup = ub.Shop:AddLeftGroupbox("Plot Upgrades", "landmark")
if (not t8 and not t8 and (t8 and t8) or (not t8 and not uh or not t8 and t8) or (not t8 or not uh or not uh and uh) and (uh and t8 or (uh or not t8)) or ((t8 or not t8) and (not uh or t8) and (not t8 and uh and (t8 and t8)) or (not uh and not uh and (uh or not uh) or (not t8 and not t8 or (not uh or not uh))))) and not (not t8 and not t8 and (t8 and t8) or (not t8 and not uh or not t8 and t8) or (not t8 or not uh or not uh and uh) and (uh and t8 or (uh or not t8)) or ((t8 or not t8) and (not uh or t8) and (not t8 and uh and (t8 and t8)) or (not uh and not uh and (uh or not uh) or (not t8 and not t8 or (not uh or not uh))))) then
    t_:AddToggle("AutoUpgradeCustomers", { Text = "Auto Upgrade Customer Capacity", Default = false })
    ue.CustomerStatusLabel = t_:AddLabel(ub.field("Customer upgrade", "Loading...", tT), true)
    t_:AddToggle("AutoExpandLand", { Text = "Auto Expand Plot Land Cells", Default = false })
    ue.LandStatusLabel = t_:AddLabel(ub.field("Land expand", "Loading...", tT), true)
    tX = PlotUpgradesGroup.Claims:AddLeftGroupbox("Rewards", "gift")
else
    PlotUpgradesGroup:AddToggle("AutoUpgradeCustomers", { Text = "Auto Upgrade Customer Capacity", Default = false })
    tT.CustomerStatusLabel = PlotUpgradesGroup:AddLabel(t_.field("Customer upgrade", "Loading...", tX), true)
    PlotUpgradesGroup:AddToggle("AutoExpandLand", { Text = "Auto Expand Plot Land Cells", Default = false })
    tT.LandStatusLabel = PlotUpgradesGroup:AddLabel(t_.field("Land expand", "Loading...", tX), true)
    ue = ub.Claims:AddLeftGroupbox("Rewards", "gift")
end
ue:AddToggle("AutoPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false })
ue:AddToggle("AutoQuests", { Text = "Auto Claim Tasks / Quests", Default = false })
ue:AddToggle("AutoDailyFree", { Text = "Auto Claim Daily & Free Gifts", Default = false })
ue:AddToggle("AutoSeasonPass", { Text = "Auto Claim Season Pass Rewards", Default = false })
uc = ub.Claims:AddRightGroupbox("Codes", "ticket")
uc:AddToggle("AutoPromoCodes", { Text = "Auto Redeem Promo Codes", Default = false })
uc:AddSlider("PromoCodeInterval", { Text = "Check Interval", Default = 5, Min = 2, Max = 30, Rounding = 0 })
t8 = ub.Player:AddLeftGroupbox("Movement", "footprints")
t8:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
t8:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
t8:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
t8:AddToggle("NoClip", { Text = "NoClip", Default = false })
t8:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
t7 = ub.Player:AddRightGroupbox("Fly", "feather")
t7:AddToggle("Fly", { Text = "Fly", Default = false })
t7:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
ui = ub.Settings:AddLeftGroupbox("Menu")
ui:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
ui:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
ui:AddButton("Unload", onUnload)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Evil Hello Kitty")
ThemeManager:ApplyToTab(ub.Settings)
ThemeManager:LoadDefault()
tB:SetLibrary(Library)
tB:IgnoreThemeSettings()
tB:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
tB:SetFolder("OuroborosHub/MySeafoodStand")
uk = tB:BuildConfigSection(ub.Settings)
tF, tZ, tP, tE = nil, nil, nil, nil
t6 = 10
repeat
    t7 = (t6 * 1 + 1) % 2 + 1
    if t7 <= 1 then
        t7 = (vector.create((t6 * 1 + 5) % 11 + 1, (t6 * 6 + 10) % 13 + 1, (t6 * 10 + 9) % 17 + 1))
        t8 = (vector.create((t6 * 5 + 5) % 11 + 1, (t6 * 2 + 9) % 13 + 1, (t6 * 14 + 13) % 17 + 1))
        local Ki = vector.dot(t7, t8)
        if Ki * Ki >= vector.dot(t7, t7) * vector.dot(t8, t8) + 1 then
            uk:AddDivider()
            uk:AddInput("SaveManager_ImportSource", { Finished = true, AllowEmpty = true, Text = "Paste exported config here" })
            uk:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
            uk:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
        else
            uk:AddDivider()
            uk:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
            uk:AddButton("Export Config to Clipboard", onExportConfigToClipboard)
            uk:AddButton("Import Config from Clipboard Text", onImportConfigFromClipboardTex)
        end
        t6 = (t6 + 9) % 16
    else
        local Ko = bit32.rrotate(bit32.bxor(bit32.lrotate(t6, 2), string.byte(tostring(tF))), 11)
        if bit32.bxor(bit32.lrotate(bit32.bxor(Ko, 2597774503), 2), 1801163422) ~= bit32.lrotate(Ko, 2) then
            tP = fn570
            tE = fn179
            tZ = fn891
            tF = function(eE)
                local yE
                yE = nil
                local yF = type(eE) ~= "table" or type(eE.idx) ~= "string" or type(eE.type) ~= "string" or tB.Ignore[eE.idx]
                if yF then
                    return false
                end
                yE = tF(eE.type, eE.idx)
                if not yE then
                    return false
                end
                local yF_2 = pcall(function()
                    if eE.type == "Input" then
                        if type(eE.text) ~= "string" then
                            return
                        end
                        yE:SetValue(eE.text)
                    elseif eE.type == "ColorPicker" then
                        yE:SetValueRGB(Color3.fromHex(eE.value), eE.transparency)
                    elseif eE.type == "KeyPicker" then
                        yE:SetValue({ eE.key, eE.mode, eE.modifiers })
                        if eE.mode == "Toggle" and eE.toggled ~= nil then
                            yE.Toggled = eE.toggled
                            yE:Update()
                        end
                    else
                        yE:SetValue(eE.value)
                    end
                end)
                return yF_2
            end
        else
            tF = fn570
            tZ = fn179
            tP = fn891
            tE = function(eE)
                local yE
                yE = nil
                local yF = type(eE) ~= "table" or type(eE.idx) ~= "string" or type(eE.type) ~= "string" or tB.Ignore[eE.idx]
                if yF then
                    return false
                end
                yE = tF(eE.type, eE.idx)
                if not yE then
                    return false
                end
                local yF_1 = pcall(function()
                    if eE.type == "Input" then
                        if type(eE.text) ~= "string" then
                            return
                        end
                        yE:SetValue(eE.text)
                    elseif eE.type == "ColorPicker" then
                        yE:SetValueRGB(Color3.fromHex(eE.value), eE.transparency)
                    elseif eE.type == "KeyPicker" then
                        yE:SetValue({ eE.key, eE.mode, eE.modifiers })
                        if eE.mode == "Toggle" and eE.toggled ~= nil then
                            yE.Toggled = eE.toggled
                            yE:Update()
                        end
                    else
                        yE:SetValue(eE.value)
                    end
                end)
                return yF_1
            end
        end
        t6 = (t6 + 15) % 16
    end
until (t6 * 3 + 1) % 16 == 7
t7 = 2
repeat
    t6 = {
        "dxmaoh",
        "qnmuxsgppkl",
        "yohlzrpu",
        "ynsxt",
        "bdmrcat",
        "fbirajvq",
        "yyfzpkvdes",
        "xarzigwvfyk",
        "rphbkzqv",
        "ezmr"
    }
    local IR = t7
    t8 = t6[IR % 10 + 1]
    if t8:len() >= t8:gsub("(.)", "%1%1", IR % 3 % 2 + 1):len() then
        Toggles:LoadAutoloadConfig()
        tW.EquipmentCategory:OnChanged(function(e5)
            local yV
            yV = tA.EquipmentByCategory[e5] or tA.EquipmentNames
            pcall(function()
                Options.BuyEquipment:SetValues(yV)
            end)
        end)
        Options.tryRestockSeafood = function()
            local y0_6, y0_8
            local y__6, y__8
            if not t_.isOn("AutoRestock") then
                return false
            end
            local yY = t_.getDropdown("CookSeafood", "Any Seafood")
            if t_.hasAnyRawSeafood(yY) then
                return false
            end
            local yZ = t_.getCash()
            if yY ~= "Any Seafood" then
                local y__5 = tA.FoodPrice[yY]
                local y6 = if y__5 then 1 else 0
                local y4 = 1591 * y6 + 3676 * (1 - y6)
                local y5 = 3808 * y6 + 40 * (1 - y6)
                if not ((y4 * 61 + y5 * 3417 + y4 * y5) % 16777213 == 2390302) then
                    y__5 = 0
                end
                if yZ < y__5 then
                    return false
                end
                y__6, y0_6 = pcall(function()
                    return tD.FoodBuy:InvokeServer(yY)
                end)
                return y__6 and y0_6 == true
            end
            for i, v in ipairs(tA.FoodNames) do
                local zc = v
                if zc ~= "Any Seafood" then
                    if yZ >= (tA.FoodPrice[zc] or 0) then
                        y__8, y0_8 = pcall(function()
                            return tD.FoodBuy:InvokeServer(zc)
                        end)
                        if y__8 and y0_8 == true then
                            return true
                        end
                    end
                end
            end
            return false
        end
        Options.cookOnce = function()
            local zt = if not t_.isOn("AutoCook") then 1 else 0
            if zt == 1 then
                return
            end
            local zo = t_.getDropdown("CookSeafood", "Any Seafood")
            local zp = t_.getDropdown("CookerFilter", "All")
            if not t_.hasAnyRawSeafood(zo) then
                tW.tryRestockSeafood()
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                local zz = v
                if t_.cookerMatchesFilter(zz, zp) then
                    t_.eachSlot(zz, function(fz)
                        local zg = Library.Unloaded or not t_.isOn("AutoCook")
                        if zg then
                            return
                        end
                        local attr = fz:GetAttribute("SlotKind")
                        local zh = attr == "Plant"
                        local zi = attr == "Serve"
                        local zn = if zi then 1 else 0
                        local zl = 3613 * zn + 1139 * (1 - zn)
                        local zm = 3093 * zn + 3544 * (1 - zn)
                        if not ((zl * 2909 + zm * 187 + zl * zm) % 16777213 == 5486404) then
                            zi = zh
                        end
                        local zj = zi or attr == "Pot"
                        local zh_5 = attr == "Drone"
                        local zi_3 = zj
                        local zn_2 = if zi_3 then 1 else 0
                        local zl_2 = 2256 * zn_2 + 585 * (1 - zn_2)
                        local zm_2 = 1289 * zn_2 + 1272 * (1 - zn_2)
                        if not ((zl_2 * 3931 + zm_2 * 232 + zl_2 * zm_2) % 16777213 == 12075368) then
                            zi_3 = zh_5
                        end
                        if zi_3 then
                            return
                        end
                        if fz:GetAttribute("SlotState") ~= "Empty" then
                            return
                        end
                        local zg_4 = t_.findRawSeafood(zo)
                        if not zg_4 then
                            tW.tryRestockSeafood()
                            return
                        end
                        local zh_6 = t_.cookerMethod(zz)
                        local zi_4 = zh_6 and not tC.FoodVariants.allowed(zg_4.Name, zh_6)
                        if zi_4 then
                            return
                        end
                        t_.teleportNear(fz)
                        t_.equipTool(zg_4)
                        task.wait(0.08)
                        t_.fireCook(fz, "Insert")
                        task.wait(0.12)
                    end)
                end
            end
        end
        Options.shouldCollectProgress = fn602
        Options.perfectPickup = fn278
        Options.serveOnce = function()
            if not t_.isOn("AutoServe") then
                return
            end
            local zU = t_.getDropdown("ServeSeafood", "Any Seafood")
            local zT = t_.getDropdown("ServeQuality", "Any")
            if not t_.findCookedSeafood(zU, zT) then
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                t_.eachSlot(v, function(gc)
                    local zR = Library.Unloaded or not t_.isOn("AutoServe")
                    if zR then
                        return
                    end
                    if gc:GetAttribute("SlotKind") ~= "Serve" then
                        return
                    end
                    if gc:GetAttribute("SlotState") ~= "Empty" then
                        return
                    end
                    local zR_2 = t_.findCookedSeafood(zU, zT)
                    if not zR_2 then
                        return
                    end
                    t_.teleportNear(gc)
                    t_.equipTool(zR_2)
                    task.wait(0.08)
                    t_.fireCook(gc, "Serve")
                    t2.foodServed = t2.foodServed + 1
                    task.wait(t_.getNumber("ServeDelay", 0.25))
                end)
            end
        end
        Options.harvestOnce = function()
            if not t_.isOn("AutoHarvest") then
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                local Af = v
                if t_.isSoilPotModel(Af) then
                    t_.eachSlot(Af, function(gp)
                        if gp:GetAttribute("SlotKind") ~= "Plant" then
                            return
                        end
                        local attr = gp:GetAttribute("SlotState")
                        local z2 = gp:GetAttribute("CookProgress") or 0
                        local z2_2 = Af:GetAttribute("Harvestable") == true or Af:GetAttribute("Stage") == "Harvest" or attr == "Grown"
                        if not z2_2 then
                            local z4 = attr == "Growing" and typeof(z2) == "number" and z2 >= 1
                            z2_2 = z4
                        end
                        if z2_2 then
                            t_.teleportNear(gp)
                            t_.firePlant(gp, "HarvestStart")
                            task.wait(0.1)
                        end
                    end)
                end
            end
        end
        Options.pourSoilOnce = fn1168
        Options.plantOnce = function()
            if not t_.isOn("AutoPlant") then
                return
            end
            local Ax = t_.getDropdown("PlantSeed", "Any Available")
            if not t_.findSeed(Ax) then
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                local Ay = t_.isSoilPotModel(v) and v:GetAttribute("PotSoil") ~= nil
                if Ay then
                    t_.eachSlot(v, function(gJ)
                        if gJ:GetAttribute("SlotKind") ~= "Plant" then
                            return
                        end
                        local Aw = if gJ:GetAttribute("SlotState") ~= "Empty" then 1 else 0
                        if Aw == 1 then
                            return
                        end
                        local As = t_.findSeed(Ax)
                        if not As then
                            return
                        end
                        t_.teleportNear(gJ)
                        t_.equipTool(As)
                        task.wait(0.08)
                        t_.firePlant(gJ, "Plant")
                        t2.seedsPlanted = t2.seedsPlanted + 1
                        task.wait(0.12)
                    end)
                end
            end
        end
        Options.buySeedsOnce = function()
            if not t_.isOn("AutoBuySeeds") then
                return
            end
            local AG = t_.selectedMap("BuySeeds")
            local AH = t_.getCash()
            for k, v in pairs(AG) do
                local AN = k
                if v == true then
                    if AH >= (tA.SeedPrice[AN] or 0) then
                        pcall(function()
                            tD.PlantsBuy:InvokeServer(AN)
                        end)
                        AH = t_.getCash()
                        task.wait(0.05)
                    end
                end
            end
        end
        Options.isFishermanHired = fn32
        Options.hireFishermanOnce = fn1130
        Options.collectFishermanOnce = fn972
        Options.upgradeFishermanOnce = function()
            if not t_.isOn("AutoUpgradeFisherman") then
                return
            end
            local A6 = t_.selectedMap("FishermanUpgrades")
            local A7 = t_.getShells()
            for k, v in pairs(A6) do
                local Bf = k
                if v == true then
                    local A6_4 = tA.FishermanUpgradeMeta[Bf]
                    local A8 = A6_4 and A6_4.stat
                    local A9 = A8
                    if A8 then
                        local Ba_3 = tonumber(LocalPlayer:GetAttribute(A9)) or 0
                        A8 = Ba_3
                    end
                    local A9_4 = A8 or 0
                    local A8_4 = A6_4
                    if A8_4 then
                        A8_4 = A6_4.costs
                    end
                    local A6_5 = A8_4
                    if A8_4 then
                        A8_4 = #A6_5
                    end
                    local A9_5 = A8_4 or 0
                    if not (A9_5 > 0 and A9_4 >= A9_5) then
                        local A8_6 = A6_5 and A6_5[A9_4 + 1]
                        local A6_6 = A8_6
                        if A8_6 then
                            A8_6 = A7 >= A6_6
                        end
                        if A8_6 then
                            pcall(function()
                                tD.FishermanUpgrade:InvokeServer(Bf)
                            end)
                            A7 = t_.getShells()
                            task.wait(0.05)
                        elseif A6_6 == nil then
                            pcall(function()
                                tD.FishermanUpgrade:InvokeServer(Bf)
                            end)
                        end
                    end
                end
            end
        end
        Options.buySeafoodOnce = function()
            if not t_.isOn("AutoBuySeafood") then
                return
            end
            if t_.countInventory() >= t_.getNumber("MaxInventory", 50) then
                return
            end
            if t_.countInventory() >= t_.getInventoryCap() then
                return
            end
            local Bl = t_.selectedMap("BuySeafood")
            local Bm = t_.getCash()
            for k, v in pairs(Bl) do
                local Bs = k
                if v == true then
                    if t_.countInventory() >= t_.getNumber("MaxInventory", 50) then
                        return
                    end
                    if Bm >= (tA.FoodPrice[Bs] or 0) then
                        pcall(function()
                            tD.FoodBuy:InvokeServer(Bs)
                        end)
                        Bm = t_.getCash()
                        task.wait(0.05)
                    end
                end
            end
        end
        Options.buyEquipmentOnce = function()
            if not t_.isOn("AutoBuyEquipment") then
                return
            end
            local Bv = t_.selectedMap("BuyEquipment")
            local Bw = t_.getDropdown("EquipmentCategory", "All")
            local Bx = t_.getCash()
            for k, v in pairs(Bv) do
                local BE = k
                if v == true then
                    if Bw == "All" or tA.EquipmentCategory[BE] == Bw then
                        if Bx >= (tA.EquipmentPrice[BE] or 0) then
                            pcall(function()
                                tD.EquipmentBuy:InvokeServer(BE)
                            end)
                            Bx = t_.getCash()
                            task.wait(0.05)
                        end
                    end
                end
            end
        end
        Options.listPlacerTools = function()
            local ii
            local ij
            ij = {}
            ii = {}
            local function ik(il)
                if not il then
                    return
                end
                for i, child in ipairs(il:GetChildren()) do
                    local BH = child:IsA("Tool") and child:FindFirstChild("Placer")
                    if BH then
                        ii[#ii + 1] = child
                        local BH_2 = false
                        for i, v in ipairs(ij) do
                            if v == child.Name then
                                BH_2 = true
                                break
                            end
                        end
                        if not BH_2 then
                            ij[#ij + 1] = child.Name
                        end
                    end
                end
            end
            ik(LocalPlayer.Backpack)
            ik(LocalPlayer.Character)
            table.sort(ij)
            return ii, ij
        end
        Options.refreshPlaceDropdown = function()
            local BY
            local BZ_2
            BZ_2, BY = tW.listPlacerTools()
            if #BY == 0 then
                BY = tA.EquipmentNames
            end
            pcall(function()
                Options.PlaceEquipment:SetValues(BY)
            end)
        end
        Options.entranceRotIndex = fn1258
        Options.resolvePlaceRotation = fn808
        Options.footprintSize = fn1285
        Options.pointCovered = fn916
        Options.insideOwnPlot = fn1177
        Options.overlapsStand = fn910
        Options.clearPlaceGhosts = function()
            for i, v in ipairs(t2.placeGhosts) do
                local CP = v
                pcall(function()
                    CP:Destroy()
                end)
            end
            table.clear(t2.placeGhosts)
            if t2.placeFolder and t2.placeFolder.Parent then
                pcall(function()
                    t2.placeFolder:ClearAllChildren()
                end)
            end
        end
        Options.ensurePlaceFolder = fn1052
        Options.makePlaceGhost = function(jE, jF, jG, jH)
            local CY = tC.EquipmentAssets.model(jE)
            if not CY then
                return nil
            end
            local clone = CY:Clone()
            clone.Name = "PlaceGhost_" .. jE
            for i, descendant in ipairs(clone:GetDescendants()) do
                local C7 = descendant
                if C7:IsA("BasePart") then
                    if C7.Name ~= "Root" and C7.Transparency < 1 then
                        C7.Transparency = 0.55
                    end
                    C7.CanCollide = false
                    C7.CanQuery = false
                    C7.CanTouch = false
                    C7.Anchored = true
                    C7.CastShadow = false
                else
                    local CY_7 = C7:IsA("ParticleEmitter") or C7:IsA("Beam") or C7:IsA("Trail") or C7:IsA("Light") or C7:IsA("ProximityPrompt") or C7:IsA("BillboardGui")
                    if CY_7 then
                        pcall(function()
                            C7.Enabled = false
                        end)
                        local CY_8 = C7:IsA("ProximityPrompt") or C7:IsA("BillboardGui")
                        if CY_8 then
                            C7:Destroy()
                        end
                    else
                        local CY_9 = C7:IsA("Script") or C7:IsA("LocalScript")
                        if CY_9 then
                            C7:Destroy()
                        end
                    end
                end
            end
            local highlight = Instance.new("Highlight")
            local C_ = jH and Color3.fromRGB(0, 255, 100)
            local C0 = C_ or Color3.fromRGB(255, 70, 70)
            highlight.FillColor = C0
            highlight.OutlineColor = C0
            highlight.FillTransparency = 0.6
            highlight.OutlineTransparency = 0
            highlight.Parent = clone
            clone:PivotTo(CFrame.new(jF) * CFrame.Angles(0, math.rad(jG * 90), 0))
            clone.Parent = tW.ensurePlaceFolder()
            t2.placeGhosts[#t2.placeGhosts + 1] = clone
            return clone
        end
        Options.collectSnapCandidates = fn154
        Options.buildPlacePlan = fn236
        Options.updatePlaceVisualizer = fn1194
        Options.placeEquipmentOnce = function()
            if not t_.isOn("AutoPlaceEquipment") then
                return
            end
            local Ek = tW.buildPlacePlan()
            if #Ek == 0 then
                tW.updatePlaceVisualizer()
                return
            end
            for i, v in ipairs(Ek) do
                local Er = v
                local Ek_4 = Library.Unloaded or not t_.isOn("AutoPlaceEquipment")
                if Ek_4 then
                    break
                else
                    local tool = Er.tool
                    if tool and tool.Parent then
                        local Ei = t_.getHumanoid()
                        if Ei then
                            pcall(function()
                                Ei:EquipTool(tool)
                            end)
                        end
                        local Ek_6 = t_.getRoot()
                        if Ek_6 then
                            Ek_6.CFrame = CFrame.new(Er.pos + Vector3.new(0, 4, 0))
                        end
                        task.wait(0.12)
                        pcall(function()
                            tG.PlaceStand:FireServer(Er.name, Er.pos, Er.rot)
                        end)
                        task.wait(t_.getNumber("PlaceInterval", 0.35))
                    end
                end
            end
            tW.updatePlaceVisualizer()
        end
        Options.customerUpgradeInfo = fn43
        Options.upgradeCustomersOnce = fn569
        Options.landExpandInfo = fn1514
        Options.expandLandOnce = function()
            local ET
            local EX_2
            local EW_2
            local EV_3
            local EU_4
            local E0 = if not t_.isOn("AutoExpandLand") then 1 else 0
            if E0 == 1 then
                return
            end
            EV_3, EU_4, EX_2, EW_2, ET = tW.landExpandInfo()
            if EW_2 or not ET then
                return
            end
            local EU_6 = EX_2 and t_.getCash() >= EX_2
            if EU_6 then
                pcall(function()
                    tD.CellBuy:InvokeServer(ET)
                end)
            end
        end
        Options.updateUpgradeLabels = fn724
        Options.playtimeSlotClaimed = fn11
        Options.playtimeOnce = function()
            local Fo_2
            if not t_.isOn("AutoPlaytime") then
                return
            end
            pcall(function()
                tG.PlaytimeState:FireServer()
            end)
            for i = 1, 8 do
                local Fv = i
                local Fn = not t2.claimedPlaytime[Fv] and not tW.playtimeSlotClaimed(Fv)
                local Fn_2
                if Fn then
                    Fn_2, Fo_2 = pcall(function()
                        return tD.PlaytimeClaim:InvokeServer(Fv)
                    end)
                    if Fn_2 and Fo_2 ~= false then
                        t2.claimedPlaytime[Fv] = true
                    end
                    task.wait(0.05)
                end
            end
        end
        Options.questsOnce = function()
            local Fy_2
            if not t_.isOn("AutoQuests") then
                return
            end
            local Main = PlayerGui:FindFirstChild("Main")
            local Fx_4
            if not Main then
                return
            end
            for i, descendant in ipairs(Main:GetDescendants()) do
                local attr = descendant:GetAttribute("QuestId")
                local Fx_3 = type(attr) == "string" and attr ~= "" and not t2.claimedQuests[attr]
                if Fx_3 then
                    local FK = if descendant:GetAttribute("RewardReady") == true then 1 else 0
                    if FK == 1 then
                        Fx_4, Fy_2 = pcall(function()
                            return tD.QuestClaim:InvokeServer(attr)
                        end)
                        if Fx_4 and Fy_2 ~= false then
                            t2.claimedQuests[attr] = true
                        end
                        task.wait(0.05)
                    end
                end
            end
        end
        Options.dailyFreeOnce = function()
            local FL, FM
            local FQ = if not t_.isOn("AutoDailyFree") then 1 else 0
            if FQ == 1 then
                return
            end
            for i = 1, 14 do
                local FU = i
                pcall(function()
                    tD.DailyClaim:InvokeServer(FU)
                end)
            end
            FM = LocalPlayer:GetAttribute("GameFavourited") == true
            FL = LocalPlayer:GetAttribute("InGroup") == true
            pcall(function()
                tD.FreeRewardClaim:InvokeServer(FM, FL)
            end)
            pcall(function()
                tD.FreeRewardClaim:InvokeServer(false, false, "stage2")
            end)
            pcall(function()
                tG.FreeRewardTask:FireServer("opened")
            end)
        end
        Options.seasonPassOnce = function()
            local F1 = if not t_.isOn("AutoSeasonPass") then 1 else 0
            if F1 == 1 then
                return
            end
            pcall(function()
                tG.SeasonPassRequest:FireServer()
            end)
            local FV = tonumber(LocalPlayer:GetAttribute("SeasonTier")) or 0
            local FV_7 = LocalPlayer:GetAttribute("SeasonPremium") == true or LocalPlayer:GetAttribute("SeasonPremiumPlus") == true
            local FV_8 = math.max(FV, 1)
            for i = 1, FV_8 do
                local F5 = i
                if F5 <= FV then
                    pcall(function()
                        tD.SeasonPassClaim:InvokeServer("free", F5)
                    end)
                    if FV_7 then
                        pcall(function()
                            tD.SeasonPassClaim:InvokeServer("premium", F5)
                        end)
                    end
                end
            end
            local Main = PlayerGui:FindFirstChild("Main")
            if Main then
                for i, descendant in ipairs(Main:GetDescendants()) do
                    local Gb = descendant
                    local FV_10 = Gb:IsA("GuiButton") and Gb.Visible and Gb.Active
                    if FV_10 then
                        local TextLabel = Gb:FindFirstChildWhichIsA("TextLabel", true)
                        local FW_3 = TextLabel
                        if FW_3 then
                            local lower = string.lower
                            local FY = TextLabel.Text or ""
                            FW_3 = lower(FY)
                        end
                        local FV_12 = FW_3 or ""
                        if FV_12:find("claim") then
                            pcall(function()
                                firesignal(Gb.Activated)
                            end)
                            pcall(function()
                                firesignal(Gb.MouseButton1Click)
                            end)
                        end
                    end
                end
            end
        end
        Options.promoCodesOnce = function()
            if not t_.isOn("AutoPromoCodes") then
                return
            end
            for i, v in ipairs(tA.PromoCodes) do
                local Gi = v
                if not t2.attemptedCodes[Gi] then
                    t2.attemptedCodes[Gi] = true
                    pcall(function()
                        tD.CodeRedeem:InvokeServer(Gi)
                    end)
                    task.wait(0.15)
                end
            end
        end
        Options.crateOwnedOrPublic = fn1259
        Options.droneCratesOnce = function()
            if not t_.isOn("AutoDroneCrates") then
                return
            end
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                local Gw = descendant
                if Gw:IsA("Model") then
                    local Go = string.lower(Gw.Name)
                    local Gp = Go:find("crate") or Go:find("airdrop") or Go:find("supply") or Go:find("drone")
                    if Gp then
                        local Go_2 = Gw:GetDebugId()
                        local Gp_3 = not t2.claimedCrates[Go_2] and tW.crateOwnedOrPublic(Gw)
                        if Gp_3 then
                            for i, descendant in ipairs(Gw:GetDescendants()) do
                                local GC = descendant
                                if GC:IsA("ProximityPrompt") then
                                    t_.teleportNear(GC.Parent)
                                    pcall(function()
                                        fireproximityprompt(GC)
                                    end)
                                end
                                local Gp_4 = GC:IsA("BasePart") and GC:GetAttribute("DroneReady") == true
                                if Gp_4 then
                                    pcall(function()
                                        tG.DroneGive:FireServer(GC)
                                    end)
                                end
                            end
                            pcall(function()
                                tG.DroneCrate:FireServer(Gw)
                            end)
                            pcall(function()
                                tG.DroneGive:FireServer(Gw)
                            end)
                            t2.claimedCrates[Go_2] = true
                            t2.cratesClaimed = t2.cratesClaimed + 1
                            task.wait(0.05)
                        end
                    end
                end
            end
        end
        t_.perfectConnection = UserInputService.Heartbeat:Connect(onHeartbeat)
        task.spawn(worker19)
        task.spawn(worker18)
        task.spawn(worker17)
        task.spawn(worker16)
        task.spawn(worker15)
        task.spawn(worker14)
        task.spawn(worker13)
        task.spawn(worker12)
        task.spawn(worker11)
        task.spawn(worker10)
        task.spawn(worker9)
        task.spawn(worker8)
        task.spawn(worker7)
        task.spawn(worker6)
        task.spawn(worker5)
        task.spawn(worker4)
        task.spawn(worker3)
        task.spawn(worker2)
        pcall(function()
            for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
                local G9 = v
                pcall(function()
                    G9:Disable()
                end)
            end
        end)
        t_.antiAfkTap = fn181
        t_.antiAfkBegan = RunService.InputBegan:Connect(onInputBegan)
        t_.antiAfkChanged = RunService.InputChanged:Connect(onInputChanged)
        task.spawn(antiAfkLoop)
        tB.applyAntiGameplayPause = function(oJ)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not oJ)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not oJ
                end
            end)
            if not oJ then
                return
            end
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                else
                    LocalPlayer.GameplayPaused = false
                end
            end)
        end
        t2.AntiGameplayPause:OnChanged(fn817)
        task.spawn(antiGameplayPauseLoop)
        t_.noclipConnection = UserInputService.Stepped:Connect(onStepped)
        t_.jumpConnection = RunService.JumpRequest:Connect(onJumpRequest)
        t_.renderConnection = UserInputService.RenderStepped:Connect(onRenderStepped)
        t2.Fly:OnChanged(fn856)
        t2.WalkSpeedEnabled:OnChanged(fn822)
    else
        tB:LoadAutoloadConfig()
        Options.EquipmentCategory:OnChanged(function(e5)
            local yV
            yV = tA.EquipmentByCategory[e5] or tA.EquipmentNames
            pcall(function()
                Options.BuyEquipment:SetValues(yV)
            end)
        end)
        tW.tryRestockSeafood = function()
            local y0_2, y0_4
            local y__2, y__4
            if not t_.isOn("AutoRestock") then
                return false
            end
            local yY = t_.getDropdown("CookSeafood", "Any Seafood")
            if t_.hasAnyRawSeafood(yY) then
                return false
            end
            local yZ = t_.getCash()
            if yY ~= "Any Seafood" then
                local y__1 = tA.FoodPrice[yY]
                local y6 = if y__1 then 1 else 0
                local y4 = 1591 * y6 + 3676 * (1 - y6)
                local y5 = 3808 * y6 + 40 * (1 - y6)
                if not ((y4 * 61 + y5 * 3417 + y4 * y5) % 16777213 == 2390302) then
                    y__1 = 0
                end
                if yZ < y__1 then
                    return false
                end
                y__2, y0_2 = pcall(function()
                    return tD.FoodBuy:InvokeServer(yY)
                end)
                return y__2 and y0_2 == true
            end
            for i, v in ipairs(tA.FoodNames) do
                local zc = v
                if zc ~= "Any Seafood" then
                    if yZ >= (tA.FoodPrice[zc] or 0) then
                        y__4, y0_4 = pcall(function()
                            return tD.FoodBuy:InvokeServer(zc)
                        end)
                        if y__4 and y0_4 == true then
                            return true
                        end
                    end
                end
            end
            return false
        end
        tW.cookOnce = function()
            local zt = if not t_.isOn("AutoCook") then 1 else 0
            if zt == 1 then
                return
            end
            local zo = t_.getDropdown("CookSeafood", "Any Seafood")
            local zp = t_.getDropdown("CookerFilter", "All")
            if not t_.hasAnyRawSeafood(zo) then
                tW.tryRestockSeafood()
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                local zz = v
                if t_.cookerMatchesFilter(zz, zp) then
                    t_.eachSlot(zz, function(fz)
                        local zg = Library.Unloaded or not t_.isOn("AutoCook")
                        if zg then
                            return
                        end
                        local attr = fz:GetAttribute("SlotKind")
                        local zh = attr == "Plant"
                        local zi = attr == "Serve"
                        local zn = if zi then 1 else 0
                        local zl = 3613 * zn + 1139 * (1 - zn)
                        local zm = 3093 * zn + 3544 * (1 - zn)
                        if not ((zl * 2909 + zm * 187 + zl * zm) % 16777213 == 5486404) then
                            zi = zh
                        end
                        local zj = zi or attr == "Pot"
                        local zh_2 = attr == "Drone"
                        local zi_1 = zj
                        local zn_1 = if zi_1 then 1 else 0
                        local zl_1 = 2256 * zn_1 + 585 * (1 - zn_1)
                        local zm_1 = 1289 * zn_1 + 1272 * (1 - zn_1)
                        if not ((zl_1 * 3931 + zm_1 * 232 + zl_1 * zm_1) % 16777213 == 12075368) then
                            zi_1 = zh_2
                        end
                        if zi_1 then
                            return
                        end
                        if fz:GetAttribute("SlotState") ~= "Empty" then
                            return
                        end
                        local zg_2 = t_.findRawSeafood(zo)
                        if not zg_2 then
                            tW.tryRestockSeafood()
                            return
                        end
                        local zh_3 = t_.cookerMethod(zz)
                        local zi_2 = zh_3 and not tC.FoodVariants.allowed(zg_2.Name, zh_3)
                        if zi_2 then
                            return
                        end
                        t_.teleportNear(fz)
                        t_.equipTool(zg_2)
                        task.wait(0.08)
                        t_.fireCook(fz, "Insert")
                        task.wait(0.12)
                    end)
                end
            end
        end
        tW.shouldCollectProgress = fn602
        tW.perfectPickup = fn278
        tW.serveOnce = function()
            if not t_.isOn("AutoServe") then
                return
            end
            local zU = t_.getDropdown("ServeSeafood", "Any Seafood")
            local zT = t_.getDropdown("ServeQuality", "Any")
            if not t_.findCookedSeafood(zU, zT) then
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                t_.eachSlot(v, function(gc)
                    local zR = Library.Unloaded or not t_.isOn("AutoServe")
                    if zR then
                        return
                    end
                    if gc:GetAttribute("SlotKind") ~= "Serve" then
                        return
                    end
                    if gc:GetAttribute("SlotState") ~= "Empty" then
                        return
                    end
                    local zR_1 = t_.findCookedSeafood(zU, zT)
                    if not zR_1 then
                        return
                    end
                    t_.teleportNear(gc)
                    t_.equipTool(zR_1)
                    task.wait(0.08)
                    t_.fireCook(gc, "Serve")
                    t2.foodServed = t2.foodServed + 1
                    task.wait(t_.getNumber("ServeDelay", 0.25))
                end)
            end
        end
        tW.harvestOnce = function()
            if not t_.isOn("AutoHarvest") then
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                local Af = v
                if t_.isSoilPotModel(Af) then
                    t_.eachSlot(Af, function(gp)
                        if gp:GetAttribute("SlotKind") ~= "Plant" then
                            return
                        end
                        local attr = gp:GetAttribute("SlotState")
                        local z2 = gp:GetAttribute("CookProgress") or 0
                        local z2_1 = Af:GetAttribute("Harvestable") == true or Af:GetAttribute("Stage") == "Harvest" or attr == "Grown"
                        if not z2_1 then
                            local z4 = attr == "Growing" and typeof(z2) == "number" and z2 >= 1
                            z2_1 = z4
                        end
                        if z2_1 then
                            t_.teleportNear(gp)
                            t_.firePlant(gp, "HarvestStart")
                            task.wait(0.1)
                        end
                    end)
                end
            end
        end
        tW.pourSoilOnce = fn1168
        tW.plantOnce = function()
            if not t_.isOn("AutoPlant") then
                return
            end
            local Ax = t_.getDropdown("PlantSeed", "Any Available")
            if not t_.findSeed(Ax) then
                return
            end
            for i, v in ipairs(t_.ownedStands()) do
                local Ay = t_.isSoilPotModel(v) and v:GetAttribute("PotSoil") ~= nil
                if Ay then
                    t_.eachSlot(v, function(gJ)
                        if gJ:GetAttribute("SlotKind") ~= "Plant" then
                            return
                        end
                        local Aw = if gJ:GetAttribute("SlotState") ~= "Empty" then 1 else 0
                        if Aw == 1 then
                            return
                        end
                        local As = t_.findSeed(Ax)
                        if not As then
                            return
                        end
                        t_.teleportNear(gJ)
                        t_.equipTool(As)
                        task.wait(0.08)
                        t_.firePlant(gJ, "Plant")
                        t2.seedsPlanted = t2.seedsPlanted + 1
                        task.wait(0.12)
                    end)
                end
            end
        end
        tW.buySeedsOnce = function()
            if not t_.isOn("AutoBuySeeds") then
                return
            end
            local AG = t_.selectedMap("BuySeeds")
            local AH = t_.getCash()
            for k, v in pairs(AG) do
                local AN = k
                if v == true then
                    if AH >= (tA.SeedPrice[AN] or 0) then
                        pcall(function()
                            tD.PlantsBuy:InvokeServer(AN)
                        end)
                        AH = t_.getCash()
                        task.wait(0.05)
                    end
                end
            end
        end
        tW.isFishermanHired = fn32
        tW.hireFishermanOnce = fn1130
        tW.collectFishermanOnce = fn972
        tW.upgradeFishermanOnce = function()
            if not t_.isOn("AutoUpgradeFisherman") then
                return
            end
            local A6 = t_.selectedMap("FishermanUpgrades")
            local A7 = t_.getShells()
            for k, v in pairs(A6) do
                local Bf = k
                if v == true then
                    local A6_1 = tA.FishermanUpgradeMeta[Bf]
                    local A8 = A6_1 and A6_1.stat
                    local A9 = A8
                    if A8 then
                        local Ba_1 = tonumber(LocalPlayer:GetAttribute(A9)) or 0
                        A8 = Ba_1
                    end
                    local A9_1 = A8 or 0
                    local A8_1 = A6_1
                    if A8_1 then
                        A8_1 = A6_1.costs
                    end
                    local A6_2 = A8_1
                    if A8_1 then
                        A8_1 = #A6_2
                    end
                    local A9_2 = A8_1 or 0
                    if not (A9_2 > 0 and A9_1 >= A9_2) then
                        local A8_3 = A6_2 and A6_2[A9_1 + 1]
                        local A6_3 = A8_3
                        if A8_3 then
                            A8_3 = A7 >= A6_3
                        end
                        if A8_3 then
                            pcall(function()
                                tD.FishermanUpgrade:InvokeServer(Bf)
                            end)
                            A7 = t_.getShells()
                            task.wait(0.05)
                        elseif A6_3 == nil then
                            pcall(function()
                                tD.FishermanUpgrade:InvokeServer(Bf)
                            end)
                        end
                    end
                end
            end
        end
        tW.buySeafoodOnce = function()
            if not t_.isOn("AutoBuySeafood") then
                return
            end
            if t_.countInventory() >= t_.getNumber("MaxInventory", 50) then
                return
            end
            if t_.countInventory() >= t_.getInventoryCap() then
                return
            end
            local Bl = t_.selectedMap("BuySeafood")
            local Bm = t_.getCash()
            for k, v in pairs(Bl) do
                local Bs = k
                if v == true then
                    if t_.countInventory() >= t_.getNumber("MaxInventory", 50) then
                        return
                    end
                    if Bm >= (tA.FoodPrice[Bs] or 0) then
                        pcall(function()
                            tD.FoodBuy:InvokeServer(Bs)
                        end)
                        Bm = t_.getCash()
                        task.wait(0.05)
                    end
                end
            end
        end
        tW.buyEquipmentOnce = function()
            if not t_.isOn("AutoBuyEquipment") then
                return
            end
            local Bv = t_.selectedMap("BuyEquipment")
            local Bw = t_.getDropdown("EquipmentCategory", "All")
            local Bx = t_.getCash()
            for k, v in pairs(Bv) do
                local BE = k
                if v == true then
                    if Bw == "All" or tA.EquipmentCategory[BE] == Bw then
                        if Bx >= (tA.EquipmentPrice[BE] or 0) then
                            pcall(function()
                                tD.EquipmentBuy:InvokeServer(BE)
                            end)
                            Bx = t_.getCash()
                            task.wait(0.05)
                        end
                    end
                end
            end
        end
        tW.listPlacerTools = function()
            local ii
            local ij
            ij = {}
            ii = {}
            local function ik(il)
                if not il then
                    return
                end
                for i, child in ipairs(il:GetChildren()) do
                    local BH = child:IsA("Tool") and child:FindFirstChild("Placer")
                    if BH then
                        ii[#ii + 1] = child
                        local BH_1 = false
                        for i, v in ipairs(ij) do
                            if v == child.Name then
                                BH_1 = true
                                break
                            end
                        end
                        if not BH_1 then
                            ij[#ij + 1] = child.Name
                        end
                    end
                end
            end
            ik(LocalPlayer.Backpack)
            ik(LocalPlayer.Character)
            table.sort(ij)
            return ii, ij
        end
        tW.refreshPlaceDropdown = function()
            local BY
            local BZ_1
            BZ_1, BY = tW.listPlacerTools()
            if #BY == 0 then
                BY = tA.EquipmentNames
            end
            pcall(function()
                Options.PlaceEquipment:SetValues(BY)
            end)
        end
        tW.entranceRotIndex = fn1258
        tW.resolvePlaceRotation = fn808
        tW.footprintSize = fn1285
        tW.pointCovered = fn916
        tW.insideOwnPlot = fn1177
        tW.overlapsStand = fn910
        tW.clearPlaceGhosts = function()
            for i, v in ipairs(t2.placeGhosts) do
                local CP = v
                pcall(function()
                    CP:Destroy()
                end)
            end
            table.clear(t2.placeGhosts)
            if t2.placeFolder and t2.placeFolder.Parent then
                pcall(function()
                    t2.placeFolder:ClearAllChildren()
                end)
            end
        end
        tW.ensurePlaceFolder = fn1052
        tW.makePlaceGhost = function(jE, jF, jG, jH)
            local CY = tC.EquipmentAssets.model(jE)
            if not CY then
                return nil
            end
            local clone = CY:Clone()
            clone.Name = "PlaceGhost_" .. jE
            for i, descendant in ipairs(clone:GetDescendants()) do
                local C7 = descendant
                if C7:IsA("BasePart") then
                    if C7.Name ~= "Root" and C7.Transparency < 1 then
                        C7.Transparency = 0.55
                    end
                    C7.CanCollide = false
                    C7.CanQuery = false
                    C7.CanTouch = false
                    C7.Anchored = true
                    C7.CastShadow = false
                else
                    local CY_2 = C7:IsA("ParticleEmitter") or C7:IsA("Beam") or C7:IsA("Trail") or C7:IsA("Light") or C7:IsA("ProximityPrompt") or C7:IsA("BillboardGui")
                    if CY_2 then
                        pcall(function()
                            C7.Enabled = false
                        end)
                        local CY_3 = C7:IsA("ProximityPrompt") or C7:IsA("BillboardGui")
                        if CY_3 then
                            C7:Destroy()
                        end
                    else
                        local CY_4 = C7:IsA("Script") or C7:IsA("LocalScript")
                        if CY_4 then
                            C7:Destroy()
                        end
                    end
                end
            end
            local highlight = Instance.new("Highlight")
            local C_ = jH and Color3.fromRGB(0, 255, 100)
            local C0 = C_ or Color3.fromRGB(255, 70, 70)
            highlight.FillColor = C0
            highlight.OutlineColor = C0
            highlight.FillTransparency = 0.6
            highlight.OutlineTransparency = 0
            highlight.Parent = clone
            clone:PivotTo(CFrame.new(jF) * CFrame.Angles(0, math.rad(jG * 90), 0))
            clone.Parent = tW.ensurePlaceFolder()
            t2.placeGhosts[#t2.placeGhosts + 1] = clone
            return clone
        end
        tW.collectSnapCandidates = fn154
        tW.buildPlacePlan = fn236
        tW.updatePlaceVisualizer = fn1194
        tW.placeEquipmentOnce = function()
            if not t_.isOn("AutoPlaceEquipment") then
                return
            end
            local Ek = tW.buildPlacePlan()
            if #Ek == 0 then
                tW.updatePlaceVisualizer()
                return
            end
            for i, v in ipairs(Ek) do
                local Er = v
                local Ek_1 = Library.Unloaded or not t_.isOn("AutoPlaceEquipment")
                if Ek_1 then
                    break
                else
                    local tool = Er.tool
                    if tool and tool.Parent then
                        local Ei = t_.getHumanoid()
                        if Ei then
                            pcall(function()
                                Ei:EquipTool(tool)
                            end)
                        end
                        local Ek_3 = t_.getRoot()
                        if Ek_3 then
                            Ek_3.CFrame = CFrame.new(Er.pos + Vector3.new(0, 4, 0))
                        end
                        task.wait(0.12)
                        pcall(function()
                            tG.PlaceStand:FireServer(Er.name, Er.pos, Er.rot)
                        end)
                        task.wait(t_.getNumber("PlaceInterval", 0.35))
                    end
                end
            end
            tW.updatePlaceVisualizer()
        end
        tW.customerUpgradeInfo = fn43
        tW.upgradeCustomersOnce = fn569
        tW.landExpandInfo = fn1514
        tW.expandLandOnce = function()
            local ET
            local EX_1
            local EW_1
            local EV_1
            local EU_1
            local E0 = if not t_.isOn("AutoExpandLand") then 1 else 0
            if E0 == 1 then
                return
            end
            EV_1, EU_1, EX_1, EW_1, ET = tW.landExpandInfo()
            if EW_1 or not ET then
                return
            end
            local EU_3 = EX_1 and t_.getCash() >= EX_1
            if EU_3 then
                pcall(function()
                    tD.CellBuy:InvokeServer(ET)
                end)
            end
        end
        tW.updateUpgradeLabels = fn724
        tW.playtimeSlotClaimed = fn11
        tW.playtimeOnce = function()
            local Fo_1
            if not t_.isOn("AutoPlaytime") then
                return
            end
            pcall(function()
                tG.PlaytimeState:FireServer()
            end)
            for i = 1, 8 do
                local Fv = i
                local Fn = not t2.claimedPlaytime[Fv] and not tW.playtimeSlotClaimed(Fv)
                local Fn_1
                if Fn then
                    Fn_1, Fo_1 = pcall(function()
                        return tD.PlaytimeClaim:InvokeServer(Fv)
                    end)
                    if Fn_1 and Fo_1 ~= false then
                        t2.claimedPlaytime[Fv] = true
                    end
                    task.wait(0.05)
                end
            end
        end
        tW.questsOnce = function()
            local Fy_1
            if not t_.isOn("AutoQuests") then
                return
            end
            local Main = PlayerGui:FindFirstChild("Main")
            local Fx_2
            if not Main then
                return
            end
            for i, descendant in ipairs(Main:GetDescendants()) do
                local attr = descendant:GetAttribute("QuestId")
                local Fx_1 = type(attr) == "string" and attr ~= "" and not t2.claimedQuests[attr]
                if Fx_1 then
                    local FK = if descendant:GetAttribute("RewardReady") == true then 1 else 0
                    if FK == 1 then
                        Fx_2, Fy_1 = pcall(function()
                            return tD.QuestClaim:InvokeServer(attr)
                        end)
                        if Fx_2 and Fy_1 ~= false then
                            t2.claimedQuests[attr] = true
                        end
                        task.wait(0.05)
                    end
                end
            end
        end
        tW.dailyFreeOnce = function()
            local FL, FM
            local FQ = if not t_.isOn("AutoDailyFree") then 1 else 0
            if FQ == 1 then
                return
            end
            for i = 1, 14 do
                local FU = i
                pcall(function()
                    tD.DailyClaim:InvokeServer(FU)
                end)
            end
            FM = LocalPlayer:GetAttribute("GameFavourited") == true
            FL = LocalPlayer:GetAttribute("InGroup") == true
            pcall(function()
                tD.FreeRewardClaim:InvokeServer(FM, FL)
            end)
            pcall(function()
                tD.FreeRewardClaim:InvokeServer(false, false, "stage2")
            end)
            pcall(function()
                tG.FreeRewardTask:FireServer("opened")
            end)
        end
        tW.seasonPassOnce = function()
            local F1 = if not t_.isOn("AutoSeasonPass") then 1 else 0
            if F1 == 1 then
                return
            end
            pcall(function()
                tG.SeasonPassRequest:FireServer()
            end)
            local FV = tonumber(LocalPlayer:GetAttribute("SeasonTier")) or 0
            local FV_1 = LocalPlayer:GetAttribute("SeasonPremium") == true or LocalPlayer:GetAttribute("SeasonPremiumPlus") == true
            local FV_2 = math.max(FV, 1)
            for i = 1, FV_2 do
                local F5 = i
                if F5 <= FV then
                    pcall(function()
                        tD.SeasonPassClaim:InvokeServer("free", F5)
                    end)
                    if FV_1 then
                        pcall(function()
                            tD.SeasonPassClaim:InvokeServer("premium", F5)
                        end)
                    end
                end
            end
            local Main = PlayerGui:FindFirstChild("Main")
            if Main then
                for i, descendant in ipairs(Main:GetDescendants()) do
                    local Gb = descendant
                    local FV_4 = Gb:IsA("GuiButton") and Gb.Visible and Gb.Active
                    if FV_4 then
                        local TextLabel = Gb:FindFirstChildWhichIsA("TextLabel", true)
                        local FW_1 = TextLabel
                        if FW_1 then
                            local lower = string.lower
                            local FY = TextLabel.Text or ""
                            FW_1 = lower(FY)
                        end
                        local FV_6 = FW_1 or ""
                        if FV_6:find("claim") then
                            pcall(function()
                                firesignal(Gb.Activated)
                            end)
                            pcall(function()
                                firesignal(Gb.MouseButton1Click)
                            end)
                        end
                    end
                end
            end
        end
        tW.promoCodesOnce = function()
            if not t_.isOn("AutoPromoCodes") then
                return
            end
            for i, v in ipairs(tA.PromoCodes) do
                local Gi = v
                if not t2.attemptedCodes[Gi] then
                    t2.attemptedCodes[Gi] = true
                    pcall(function()
                        tD.CodeRedeem:InvokeServer(Gi)
                    end)
                    task.wait(0.15)
                end
            end
        end
        tW.crateOwnedOrPublic = fn1259
        tW.droneCratesOnce = function()
            if not t_.isOn("AutoDroneCrates") then
                return
            end
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                local Gw = descendant
                if Gw:IsA("Model") then
                    local Go = string.lower(Gw.Name)
                    local Gp = Go:find("crate") or Go:find("airdrop") or Go:find("supply") or Go:find("drone")
                    if Gp then
                        local Go_1 = Gw:GetDebugId()
                        local Gp_1 = not t2.claimedCrates[Go_1] and tW.crateOwnedOrPublic(Gw)
                        if Gp_1 then
                            for i, descendant in ipairs(Gw:GetDescendants()) do
                                local GC = descendant
                                if GC:IsA("ProximityPrompt") then
                                    t_.teleportNear(GC.Parent)
                                    pcall(function()
                                        fireproximityprompt(GC)
                                    end)
                                end
                                local Gp_2 = GC:IsA("BasePart") and GC:GetAttribute("DroneReady") == true
                                if Gp_2 then
                                    pcall(function()
                                        tG.DroneGive:FireServer(GC)
                                    end)
                                end
                            end
                            pcall(function()
                                tG.DroneCrate:FireServer(Gw)
                            end)
                            pcall(function()
                                tG.DroneGive:FireServer(Gw)
                            end)
                            t2.claimedCrates[Go_1] = true
                            t2.cratesClaimed = t2.cratesClaimed + 1
                            task.wait(0.05)
                        end
                    end
                end
            end
        end
        t2.perfectConnection = RunService.Heartbeat:Connect(onHeartbeat)
        task.spawn(worker19)
        task.spawn(worker18)
        task.spawn(worker17)
        task.spawn(worker16)
        task.spawn(worker15)
        task.spawn(worker14)
        task.spawn(worker13)
        task.spawn(worker12)
        task.spawn(worker11)
        task.spawn(worker10)
        task.spawn(worker9)
        task.spawn(worker8)
        task.spawn(worker7)
        task.spawn(worker6)
        task.spawn(worker5)
        task.spawn(worker4)
        task.spawn(worker3)
        task.spawn(worker2)
        pcall(function()
            for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
                local G9 = v
                pcall(function()
                    G9:Disable()
                end)
            end
        end)
        t2.antiAfkTap = fn181
        t2.antiAfkBegan = UserInputService.InputBegan:Connect(onInputBegan)
        t2.antiAfkChanged = UserInputService.InputChanged:Connect(onInputChanged)
        task.spawn(antiAfkLoop)
        t_.applyAntiGameplayPause = function(oJ)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not oJ)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not oJ
                end
            end)
            if not oJ then
                return
            end
            pcall(function()
                if sethiddenproperty then
                    sethiddenproperty(LocalPlayer, "GameplayPaused", false)
                else
                    LocalPlayer.GameplayPaused = false
                end
            end)
        end
        Toggles.AntiGameplayPause:OnChanged(fn817)
        task.spawn(antiGameplayPauseLoop)
        t2.noclipConnection = RunService.Stepped:Connect(onStepped)
        t2.jumpConnection = UserInputService.JumpRequest:Connect(onJumpRequest)
        t2.renderConnection = RunService.RenderStepped:Connect(onRenderStepped)
        Toggles.Fly:OnChanged(fn856)
        Toggles.WalkSpeedEnabled:OnChanged(fn822)
    end
    t7 = (t7 + 0) % 4
until (t7 * 3 + 1) % 4 == 3
if Toggles.AutoPlaceEquipment then
    Toggles.AutoPlaceEquipment:OnChanged(function()
        pcall(tW.updatePlaceVisualizer)
    end)
end
if Toggles.PlaceVisualizer then
    Toggles.PlaceVisualizer:OnChanged(function()
        pcall(tW.updatePlaceVisualizer)
    end)
end
if Options.PlaceEquipment then
    Options.PlaceEquipment:OnChanged(function()
        pcall(tW.updatePlaceVisualizer)
    end)
end
if Options.PlaceRotation then
    Options.PlaceRotation:OnChanged(function()
        pcall(tW.updatePlaceVisualizer)
    end)
end
tI = nil
t6 = 2
repeat
    t7 = {
        "keaziqdfcm",
        "nrzm",
        "amfyopwj",
        "zhjv",
        "ljoolhp",
        "vnbvxdi",
        "yaranpjq",
        "pqxpmztdkee",
        "tstxymruq",
        "sjbskkyn",
        "qijadnc",
        "whv",
        "rwakrc",
        "scxgpxyrwo",
        "xkohihiyb",
        "nrmcpk"
    }
    if t7[(t6 * 50 + 55) % 16 + 1] < t7[(t6 * 50 + 55) % 16 + 1] then
        task.defer(worker20)
        tI = fn795
    else
        task.defer(worker20)
        tI = fn795
    end
    t6 = (t6 + 0) % 4
until (t6 * 3 + 3) % 4 == 1
if getgenv then
    getgenv().__ouroboros_cleanup = tI
end
Library:OnUnload(function()
    tI()
    print("Unloaded!")
end)
