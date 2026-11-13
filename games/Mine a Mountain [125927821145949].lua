local fns = {}
local Label2, G5_6, SortGarden, G5_9, G5_12, G5_13, G5_15, G5_17, G5_18, HttpService, G5_22, G5_23, G5_24, G5_26, G5_28, G5_31, G5_32, connection2, G5_36, G5_38, G5_40, G5_63, G5_68
fns.ToolConfig = nil
fns.G5_3 = nil
Label2 = nil
G5_6 = nil
SortGarden = nil
G5_9 = nil
G5_12 = nil
G5_13 = nil
G5_15 = nil
G5_17 = nil
G5_18 = nil
HttpService = nil
G5_22 = nil
G5_23 = nil
G5_24 = nil
G5_26 = nil
G5_28 = nil
G5_31 = nil
G5_32 = nil
connection2 = nil
G5_36 = nil
G5_38 = nil
G5_40 = nil
local uL
local tL
local u9
local t9
local folder
local tX
local vl
local ul
local ClaimGroupReward
local uK
local connection4
local t8
local ux
local tx
local uW
local tW
local vk
local uk
local connection9
local GoHome
local tJ
local u7
local t7
local uw
local attr4
local RunService
local tV
local vj
local uj
local tj
local uI
local ShopBuy
local u6
local DigRequest
local vv
local uv
local tv
local uU
local tU
local BombActivate
local ShopCatalog
local ti
local UserInputService
local tH
local u5
local t5
local vu
local uu
local tu
local uT
local vh
local uh
local th
local Label
local tG
local connection12
local t4
local VoidRescue
local tS
local vg
local ug
local uF
local tF
local ReviveBase
local t3
local us
local ts
local uR
local tR
local connection7
local uE
local ShopEquip
local connection3
local t2
local vr
local ur
local tr
local uQ
local connection11
local ve
local connection10
local Toggles
local tD
local t1
local connection6
local tq
local TweenService
local ToggleFavorite
local connection5
local hopSellFirstLoop
local uC
local tC
local connection8
local vp
local up
local ClaimTutorialReward
local uO
local tO
local vc
local uc
local VirtualUser
local tB
local u_
local t_
local Library
function fns.fn3()
    local PlayerData = uh:FindFirstChild("PlayerData")
    local xT = PlayerData and PlayerData:FindFirstChild("RealStats")
    local xS_1 = xT
    if xT then
        xT = xS_1:FindFirstChild("Cash")
    end
    local xS_2 = xT
    if xT then
        xT = xS_2.Value
    end
    return xT or 0
end
function fns.fn17(hh)
    local Bo_1
    local Bn_1
    Bn_1, Bo_1 = nil, nil
    for k, v in tB() do
        for i, child in v:GetChildren() do
            if child:IsA("BasePart") then
                local attr = child:GetAttribute(hh)
                if attr and (not Bo_1 or attr > Bo_1) then
                    Bn_1, Bo_1 = child, attr
                end
            end
        end
    end
    return Bn_1, Bo_1
end
function fns.onInputChanged(o3)
    local UserInputType = o3.UserInputType
    local GQ = UserInputType == Enum.UserInputType.MouseMovement
    local GU = if GQ then 1 else 0
    local GS = 1188 * GU + 396 * (1 - GU)
    local GT = 2391 * GU + 1990 * (1 - GU)
    if not ((GS * 2467 + GT * 1770 + GS * GT) % 16777213 == 10003374) then
        GQ = UserInputType == Enum.UserInputType.Gamepad1
    end
    if GQ then
        vh = tick()
    end
end
function fns.crystalEspLoop()
    local D0_1
    local D__1
    while not Library.Unloaded do
        task.wait(0.35)
        D__1, D0_1 = uK()
        if D0_1 then
            local D__2 = Toggles.CrystalEsp.Value and vv(D0_1.Position)
            local D2 = D__2 or {}
            G5_6(ug, D2)
            local D__3 = Toggles.BoulderEsp.Value and G5_26(D0_1.Position)
            local D1_1 = D__3 or {}
            G5_6(uc, D1_1)
        end
    end
end
function fns.onSeller()
    vp(uO("SellProx"), "the seller")
end
function fns.onMyPlot()
    vp(tW(), "your plot")
end
function fns.onUpgrades()
    vp(uO("UpgradesProx"), "the upgrades stand")
end
function fns.fn94()
    local wJ = uK()
    if not wJ then
        return nil
    end
    local Tool = wJ:FindFirstChildWhichIsA("Tool")
    if Tool and fns.ToolConfig.PickaxeNames[Tool.Name] then
        return Tool
    end
    return nil
end
function fns.fn95(iW, iX)
    local CA_1
    local Cz_1
    CA_1, Cz_1 = nil, nil
    for i, descendant in iW:GetDescendants() do
        if descendant:IsA("BasePart") then
            local Magnitude = (descendant.Position - iX).Magnitude
            if not Cz_1 or Magnitude < Cz_1 then
                CA_1, Cz_1 = descendant, Magnitude
            end
        end
    end
    return CA_1
end
function fns.onAntiFallDamage(ny)
    if ny then
        uh:SetAttribute("NoFallDamage", true)
    else
        uh:SetAttribute("NoFallDamage", attr4)
    end
end
function fns.fn113()
    local Things = workspace:FindFirstChild("Things")
    local yq = Things and Things:FindFirstChild("Plots")
    local yp_1 = yq
    if yq then
        yq = yp_1:FindFirstChild("Slots")
    end
    local yp_2 = yq
    if yq then
        yq = yp_2:FindFirstChild(uh.Name)
    end
    local yp_3 = yq
    if yq then
        yq = yp_3:GetPivot().Position
    end
    return yq or nil
end
function fns.onInputBegan()
    vh = tick()
end
function fns.autoArrangeCrystalsLoop()
    while not Library.Unloaded do
        task.wait(6)
        if Toggles.AutoArrangeCrystals.Value and uL.ArrangeBy.Value then
            SortGarden:FireServer(uL.ArrangeBy.Value, Toggles.IncludeBackpackCrystals.Value)
        end
    end
end
function fns.autoFarmBouldersLoop()
    while not Library.Unloaded do
        local CK = not tS
        local CK_1
        local CL = Toggles.AutoFarmBoulders.Value and CK
        local CL_1
        if CL then
            CK_1, CL_1 = uK()
            local CK_2 = CL_1 and tq(CL_1.Position)
            if CK_2 then
                local CK_3 = ts() or u7()
                local CK_4 = uj(CK_2, CL_1.Position)
                if CK_3 and CK_4 then
                    tV(CK_4.Position + Vector3.new(0, 5, 0))
                    DigRequest:FireServer(CK_3.Name, CK_4.Position)
                    task.wait(G5_9(CK_3.Name))
                else
                    task.wait(0.4)
                end
            else
                task.wait(0.5)
            end
        else
            task.wait(0.3)
        end
    end
end
function fns.onJumpRequest()
    local FW_1
    local FV_1
    local FU = Library.Unloaded or not Toggles.InfiniteJump.Value
    local FU_1
    if FU then
        return
    end
    FU_1, FV_1, FW_1 = uK()
    if FW_1 then
        FW_1:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end
function fns.fn206()
    vj(tU)
    Library:Notify("Copied Discord invite to clipboard")
end
function fns.fn226()
    local xn = {}
    for i, child in uh.Backpack:GetChildren() do
        local xo_1 = child:IsA("Tool") and child:GetAttribute("Tier")
        if xo_1 then
            table.insert(xn, child)
        end
    end
    local Character = uh.Character
    if Character then
        for i, child in Character:GetChildren() do
            local xo_3 = child:IsA("Tool") and child:GetAttribute("Tier")
            if xo_3 then
                table.insert(xn, child)
            end
        end
    end
    return xn
end
function fns.autoCollectCrystalsLoop3()
    local C9_1
    while not Library.Unloaded do
        task.wait(0.5)
        local C8 = tS or Toggles.AutoCollectCrystals.Value or Toggles.AutoFarmBoulders.Value
        local C8_1
        if not C8 then
            C8_1, C9_1 = uK()
            if C9_1 and C9_1.Anchored then
                uk()
            end
        end
    end
end
function fns.onStepped()
    if Library.Unloaded or not Toggles.Noclip.Value then
        return
    end
    local FJ_1 = uK()
    if not FJ_1 then
        return
    end
    for i, descendant in FJ_1:GetDescendants() do
        local FJ_2 = descendant:IsA("BasePart") and descendant.CanCollide
        if FJ_2 then
            descendant.CanCollide = false
        end
    end
end
function fns.fn252(kO)
    local DH = G5_18()
    if not DH then
        return {}
    end
    local DI = tonumber(uL.BoulderEspMaximumDistance.Value) or 0
    local DJ = {}
    for i, child in DH:GetChildren() do
        if child:IsA("Model") then
            local DH_1 = child:FindFirstChild("Center") or child:FindFirstChildWhichIsA("BasePart")
            local attr2 = child:GetAttribute("HP")
            if DH_1 and attr2 and attr2 > 0 then
                local Position = child:GetPivot().Position
                local Magnitude = (Position - kO).Magnitude
                if Magnitude <= DI and #DJ < vr then
                    local attr = child:GetAttribute("Rarity")
                    local format = string.format
                    local DP = tostring(child:GetAttribute("BoulderName"))
                    local floor = math.floor
                    local DS = child:GetAttribute("MaxHP") or attr2
                    local DQ_1 = format("%s  %d%%  %dm", DP, floor(attr2 / math.max(DS, 1) * 100), math.floor(Magnitude))
                    local DO_1 = G5_32[attr] or Color3.new(1, 1, 1)
                    table.insert(DJ, { Adornee = DH_1, Text = DQ_1, Color = DO_1 })
                end
            end
        end
    end
    return DJ
end
function fns.fn254(gX)
    local Ba_1
    local A9_1
    local A3 = uU(gX)
    local A3_2
    if A3 then
        t9(A3)
    end
    uk()
    local A4 = gX.Position + Vector3.new(0, 3, 0)
    if not uC(A4) then
        tF[gX] = os.clock() + 5
        return
    end
    local A5 = uQ()
    local A6 = os.clock() + 2.5
    local A8 = 0
    while true do
        if os.clock() < A6 then
            A9_1, Ba_1 = uK()
            if not Ba_1 then
                break
            end
            Ba_1.CFrame = CFrame.new(A4)
            Ba_1.AssemblyLinearVelocity = Vector3.zero
            if not gX.Parent then
                return
            end
            local A9_2 = t1(A4)
            if #A9_2 == 0 then
                local A3_1 = uQ() == A5
                if A3_2 then
                    tF[gX] = os.clock() + 20
                end
                return
            end
            local Ba_2 = os.clock() >= A8 and os.clock() < A6 - 0.8
            if Ba_2 then
                for k, v in A9_2 do
                    local Ba_3 = v == gX and A3 or nil
                    ur(v, Ba_3)
                end
                A8 = os.clock() + 0.3
            end
            RunService.Heartbeat:Wait()
            continue
        end
        A3_2 = uQ() == A5
        if A3_2 then
            tF[gX] = os.clock() + 20
        end
        return
    end
    tF[gX] = os.clock() + 5
    return
end
function fns.onCopyJoinScript_JobID()
    vj(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, us))
    Library:Notify("Copied join script to clipboard")
end
function fns.worker()
    local yH_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local yG = math.floor(os.clock() - tX)
        if yG < 60 then
            yH_1 = yG .. "s"
        elseif yG < 3600 then
            yH_1 = string.format("%dm %ds", yG // 60, yG % 60)
        else
            yH_1 = string.format("%dh %dm", yG // 3600, yG % 3600 // 60)
        end
        ux:SetText(tL("Session time", yH_1, vu))
    end
end
function fns.fn268()
    for k, v in t_() do
        if v:GetAttribute("Favorited") ~= true then
            return true
        end
    end
    return false
end
function fns.fn301()
    local yz_1
    local yy_1
    if identifyexecutor then
        yz_1, yy_1 = identifyexecutor()
        local yA = yz_1 ~= ""
        local yB = type(yz_1) == "string" and yA
        if yB then
            local yA_1 = type(yy_1) == "string" and yy_1 ~= "" and yz_1 .. " " .. yy_1
            vg = yA_1 or yz_1
        end
    end
end
function fns.onHopNow()
    task.spawn(hopSellFirstLoop)
end
function fns.autoDigTerrainLoop()
    while not Library.Unloaded do
        local CW = not tS
        local CW_1
        local CX = Toggles.AutoDigTerrain.Value and CW
        local CX_1
        if CX then
            CW_1, CX_1 = uK()
            local CW_2 = CX_1
            if CW_2 then
                local CY_1 = ts() or u7()
                CW_2 = CY_1
            end
            local CY_2 = CW_2
            if CY_2 then
                local CW_3 = G5_28(CX_1, G5_24(CY_2.Name))
                if CW_3 then
                    DigRequest:FireServer(CY_2.Name, CW_3)
                end
                task.wait(G5_9(CY_2.Name))
            else
                task.wait(0.4)
            end
        else
            task.wait(0.3)
        end
    end
end
function fns.walkSpeedLoop()
    local F__1
    local FZ_1
    local FY_1
    while not Library.Unloaded do
        task.wait(0.3)
        FZ_1, FY_1, F__1 = uK()
        if F__1 then
            local FY_2 = tonumber(uL.WalkSpeed.Value) or 0
            local FY_3 = tonumber(uL.JumpPower.Value) or 0
            if FY_2 > 0 and F__1.WalkSpeed ~= FY_2 then
                F__1.WalkSpeed = FY_2
            end
            if FY_3 > 0 then
                F__1.UseJumpPower = true
                if F__1.JumpPower ~= FY_3 then
                    F__1.JumpPower = FY_3
                end
            end
        end
    end
end
function fns.fn345(aJ)
    local wH_1
    local wG_1
    local wE_1
    local wD_1
    wD_1, wE_1 = uK()
    if not wE_1 then
        return false
    end
    local Position = wE_1.Position
    local wE_2 = math.clamp((aJ - Position).Magnitude / tv, 0.05, 1.5)
    local wF = 0
    while true do
        if not (wF < wE_2) then
            return true
        end
        wF += RunService.Heartbeat:Wait()
        wG_1, wH_1 = uK()
        if not wH_1 then
            break
        end
        local wG_2 = TweenService:GetValue(math.min(wF / wE_2, 1), Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        wH_1.CFrame = CFrame.new(Position:Lerp(aJ, wG_2))
        wH_1.AssemblyLinearVelocity = Vector3.zero
    end
    return false
end
function fns.fn352()
    local Things = workspace:FindFirstChild("Things")
    local xh = Things and Things:FindFirstChild("SellProx")
    local xg_1 = xh
    if xh then
        xh = xg_1:IsA("BasePart")
    end
    return xh and xg_1 or nil
end
function fns.autoServerHopLoop()
    local Ci = os.clock()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoServerHop.Value and not uF and not tS then
            local max = math.max
            local Ck_1 = tonumber(uL.HopMinimumCount.Value) or 1
            local Cl_1 = max(Ck_1, 1)
            local Cj_3 = tonumber(uL.HopEmptyDelay.Value) or 20
            local Cj_4 = G5_12()
            if Cj_4 >= Cl_1 then
                Ci = os.clock()
                Label2:SetText(Cj_4 .. " good crystals")
            else
                local Cj_5 = os.clock() - Ci
                if Cj_5 >= Cj_3 then
                    hopSellFirstLoop()
                    Ci = os.clock()
                else
                    Label2:SetText(string.format("Dry server, hopping in %ds", math.ceil(Cj_3 - Cj_5)))
                end
            end
        else
            Ci = os.clock()
        end
    end
end
function fns.fn409()
    local PlayerData = uh:FindFirstChild("PlayerData")
    local xM = PlayerData and PlayerData:FindFirstChild("RealStats")
    if not xM then
        return math.huge
    end
    local CarryWeight = xM:FindFirstChild("CarryWeight")
    local CarryWeightBonus = xM:FindFirstChild("CarryWeightBonus")
    return (CarryWeight and CarryWeight.Value or 0) + (CarryWeightBonus and CarryWeightBonus.Value or 0)
end
function fns.fn425(f6)
    local Ai_1
    local Ah_1
    local Ag_1
    local Af_1
    local Ae_1
    local Value2 = uL.TargetRarities.Value
    local Aa = tonumber(uL.FarmMinimumValue.Value) or 0
    local Value = uL.CrystalFarmPriority.Value
    local Ac = math.max(G5_15() - th(), 0)
    local Ad = os.clock()
    Ag_1, Ae_1, Af_1 = nil, nil, nil
    Ai_1, Ah_1 = nil, nil
    local Aj = false
    for k, v in tB() do
        for i, child in v:GetChildren() do
            if child:IsA("BasePart") then
                local attr = child:GetAttribute("Value")
                local Al = G5_31(child)
                local Am = tF[child]
                local An = Am and Ad >= Am
                local An_2
                if An then
                    tF[child] = nil
                    Am = nil
                end
                local An_1 = not Am
                if An_1 ~= false then
                    An_1 = attr
                end
                if An_1 then
                    An_1 = attr >= Aa
                end
                if An_1 then
                    An_1 = Al
                end
                if An_1 then
                    An_1 = Value2[Al]
                end
                if An_1 then
                    local Al_1 = child:GetAttribute("WeightKg") or 0
                    if Al_1 > Ac then
                        Aj = true
                    else
                        local Magnitude = (child.Position - f6).Magnitude
                        if Value == "Nearest" then
                            An_2 = -Magnitude
                        elseif Value == "Value / Weight" then
                            An_2 = attr / math.max(Al_1, 0.01)
                        else
                            An_2 = attr
                        end
                        if Magnitude <= tr then
                            local Ak_1 = not Ag_1 or An_2 > Ae_1
                            if not Ak_1 then
                                Ak_1 = An_2 == Ae_1 and Magnitude < Af_1
                            end
                            if Ak_1 then
                                Ag_1, Ae_1, Af_1 = child, An_2, Magnitude
                            end
                        else
                            if not Ai_1 or Magnitude < Ah_1 then
                                Ai_1, Ah_1 = child, Magnitude
                            end
                        end
                    end
                end
            end
        end
    end
    local z9_1 = Ag_1
    local AD = if z9_1 then 1 else 0
    local AB = 642 * AD + 3037 * (1 - AD)
    local AC = 3712 * AD + 599 * (1 - AD)
    if not ((AB * 3056 + AC * 2903 + AB * AC) % 16777213 == 15120992) then
        z9_1 = Ai_1
    end
    return z9_1, Aj
end
function fns.fn437()
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.AlwaysOnTop = true
    billboardGui.LightInfluence = 0
    billboardGui.Size = UDim2.fromOffset(240, 28)
    billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    billboardGui.Enabled = false
    billboardGui.Parent = folder
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 13
    textLabel.TextStrokeTransparency = 0.35
    textLabel.Parent = billboardGui
    return billboardGui
end
function fns.fn470(ke, kf)
    local Db = math.max(#kf, #ke)
    local Di = 1
    while Di <= Db do
        local Dk = Di
        local Db_1 = kf[Dk]
        local Dc = ke[Dk]
        if Db_1 and not Dc then
            Dc = t3()
            ke[Dk] = Dc
        end
        if Dc then
            if Db_1 then
                Dc.Adornee = Db_1.Adornee
                Dc.TextLabel.Text = Db_1.Text
                Dc.TextLabel.TextColor3 = Db_1.Color
                Dc.Enabled = true
            else
                Dc.Adornee = nil
                Dc.Enabled = false
            end
        end
        Di += 1
    end
end
function fns.fn473()
    local Character = uh.Character
    if Character then
        for i, child in Character:GetChildren() do
            local EK_1 = child:IsA("Tool") and child:GetAttribute("BombId")
            if EK_1 then
                return child
            end
        end
    end
    for i, child in uh.Backpack:GetChildren() do
        local EK_2 = child:IsA("Tool") and child:GetAttribute("BombId")
        if EK_2 then
            return child
        end
    end
    return nil
end
function fns.fn477(cv)
    local x7 = tu(cv)
    local x8
    for k, v in ShopCatalog[cv] do
        if x7[v.id] and (not x8 or (v.price or 0) > (x8.price or 0)) then
            x8 = v
        end
    end
    return x8
end
function fns.onOnClientEvent()
    if Library.Unloaded or not Toggles.AutoClaimTutorialReward.Value then
        return
    end
    task.wait(0.5)
    ClaimTutorialReward:FireServer()
end
function fns.fn482(iI)
    local Cq_1
    local Cp_1
    local Cn = G5_18()
    if not Cn then
        return nil
    end
    local Value = uL.BoulderTypes.Value
    Cq_1, Cp_1 = nil, nil
    for i, child in Cn:GetChildren() do
        local Cn_1 = child:IsA("Model") and Value[child:GetAttribute("BoulderName")]
        if Cn_1 then
            local Cr_1 = child:GetAttribute("HP") or 0
            Cn_1 = Cr_1 > 0
        end
        if Cn_1 then
            local BasePart = child:FindFirstChildWhichIsA("BasePart")
            if BasePart then
                local Magnitude = (BasePart.Position - iI).Magnitude
                if not Cp_1 or Magnitude < Cp_1 then
                    Cq_1, Cp_1 = child, Magnitude
                end
            end
        end
    end
    return Cq_1
end
function fns.fn501(c_)
    local yw_1
    local yv = tostring(math.floor(c_))
    repeat
        yv, yw_1 = string.gsub(yv, "^(-?%d+)(%d%d%d)", "%1,%2")
    until yw_1 == 0
    return "$" .. yv
end
function fns.fn514(e5)
    local zk = u6[e5]
    local zk_1
    local zl = zk and zk.Parent
    local zl_1
    if zl then
        return zk
    end
    zk_1, zl_1 = pcall(e5.FindFirstChildOfClass, e5, "ProximityPrompt")
    if not (zk_1 and zl_1) then
        zk_1, zl_1 = pcall(e5.FindFirstChildWhichIsA, e5, "ProximityPrompt", true)
    end
    if zk_1 and zl_1 then
        u6[e5] = zl_1
        return zl_1
    end
    u6[e5] = nil
    return nil
end
function fns.fn525(ad)
    if setclipboard then
        setclipboard(ad)
    elseif toclipboard then
        toclipboard(ad)
    end
end
function fns.fn528()
    local xC = 0
    for k, v in t_() do
        local xD = v:GetAttribute("WeightKg") or 0
        xC += xD
    end
    return xC
end
function fns.fn538(hu, hv, hw)
    local BG_1
    local BF_1
    BG_1, BF_1 = G5_36(hu)
    if not BG_1 then
        Library:Notify("No crystal with " .. hv .. " found")
        return
    end
    uk()
    uC(BG_1.Position + Vector3.new(0, 3, 0))
    Library:Notify(string.format("%s %s - %s", tostring(BG_1:GetAttribute("CrystalName")), hv, hw(BF_1)))
end
function fns.onBackHome()
    uk()
    GoHome:FireServer("home")
end
function fns.fn556()
    local Character = uh.Character
    if not Character then
        return nil, nil, nil
    end
    return Character, Character:FindFirstChild("HumanoidRootPart"), Character:FindFirstChildOfClass("Humanoid")
end
function fns.onOnClientEvent2()
    if Library.Unloaded or not Toggles.AutoTpToPeak.Value then
        return
    end
    task.wait(3)
    local E6_1 = uT()
    if E6_1 then
        tV(E6_1 + Vector3.new(0, 6, 0))
        uk()
    end
end
function fns.fn571()
    local MountainDecorations = workspace:FindFirstChild("MountainDecorations")
    local xe = MountainDecorations and MountainDecorations:FindFirstChild("Boulders")
    return xe
end
function fns.onShop()
    vp(uO("ShopProx"), "the shop")
end
function fns.antiFallDamageLoop()
    while not Library.Unloaded do
        task.wait(2)
        local F3 = Toggles.AntiFallDamage.Value and uh:GetAttribute("NoFallDamage") ~= true
        if F3 then
            uh:SetAttribute("NoFallDamage", true)
        end
    end
end
function fns.onGoToN1Luck()
    t2("LuckKg", "Luck", function(hH)
        return string.format("%.2f", hH)
    end)
end
function fns.fn651(b8)
    local PlayerData = uh:FindFirstChild("PlayerData")
    local xW = PlayerData and PlayerData:FindFirstChild("Inventory")
    local xV_1 = xW
    if xW then
        xW = xV_1:FindFirstChild(b8)
    end
    local xV_2 = xW
    if xW then
        xW = xV_2:FindFirstChild("Owned")
    end
    local xV_3 = {}
    local xX = xW
    if xX then
        for i, child in xX:GetChildren() do
            xV_3[child.Name] = true
        end
    end
    return xV_3
end
function fns.onGoToN1Weight()
    t2("WeightKg", "Weight", function(hJ)
        return string.format("%.2f kg", hJ)
    end)
end
function fns.fn668()
    local BI = tonumber(uL.HopMinimumValue.Value) or 0
    local Value2 = uL.TargetRarities.Value
    local Value = Toggles.HopUseFarmFilters.Value
    local BL = 0
    for k, v in tB() do
        for i, child in v:GetChildren() do
            if child:IsA("BasePart") then
                local attr = child:GetAttribute("Value")
                if attr and attr >= BI then
                    local BM_1 = G5_31(child)
                    if not Value or BM_1 and Value2[BM_1] then
                        BL += 1
                    end
                end
            end
        end
    end
    return BL
end
function fns.fn684(bx)
    local attr2 = bx:GetAttribute("TierName")
    if attr2 then
        return attr2
    end
    local attr = bx:GetAttribute("Tier")
    return attr and tJ[attr] or nil
end
function fns.fn697()
    local Things = workspace:FindFirstChild("Things")
    local yl = Things and Things:FindFirstChild("MountainZones")
    local yk_1 = yl
    if yl then
        yl = yk_1:FindFirstChild("Center")
    end
    local yk_2 = yl
    if not yk_2 then
        return nil
    end
    local yl_1 = yk_2.Position.Y + 400
    local ym = RaycastParams.new()
    ym.FilterType = Enum.RaycastFilterType.Include
    ym.FilterDescendantsInstances = { workspace.Terrain }
    local yn = workspace:Raycast(Vector3.new(yk_2.Position.X, yl_1, yk_2.Position.Z), Vector3.new(0, -(yl_1 * 2), 0), ym)
    return yn and yn.Position
end
function fns.fn720(dg, dh, di)
    return string.format("<b>%s</b> %s %s", dg, G5_17("-", "#5a6070"), G5_17(dh, di))
end
function fns.fn725()
    connection10:Disconnect()
    connection11:Disconnect()
    connection12:Disconnect()
    connection4:Disconnect()
    connection5:Disconnect()
    connection6:Disconnect()
    connection2:Disconnect()
    connection3:Disconnect()
    connection7:Disconnect()
    connection8:Disconnect()
    connection9:Disconnect()
    uR()
    uk()
    tG()
    folder:Destroy()
end
function fns.onHeartbeat()
    local Value = Toggles.AntiFreezeDamage.Value
    if not (Value or Toggles.AntiAirDamage.Value) then
        return
    end
    local PlayerData = uh:FindFirstChild("PlayerData")
    local Gs_1 = PlayerData and PlayerData:FindFirstChild("RealStats")
    local Gr_2 = Gs_1
    if Gs_1 then
        Gs_1 = Gr_2:FindFirstChild("CurrentAir")
    end
    local Gt = Gr_2
    local Gu = Gs_1
    if Gt then
        Gt = Gr_2:FindFirstChild("AirCapacity")
    end
    local Gr_3 = Gt
    if Gs_1 then
        Gs_1 = Gr_3
    end
    if Gs_1 then
        Gu.Value = Gr_3.Value
    end
    uh:SetAttribute("AirDanger", 0)
    uh:SetAttribute("IsFreezing", false)
    if Value then
        uh:SetAttribute("FreezeExposure", 0)
    end
end
function fns.onVoidRescue_Unstuck()
    uk()
    VoidRescue:FireServer()
    Library:Notify("Requested void rescue")
end
function fns.fn749(d0)
    Label:SetText(d0)
end
function fns.fn763()
    local Value = uL.ProtectedRarities.Value
    for k, v in t_() do
        local yM = v:GetAttribute("Tier") or 0
        local yN = tJ[yM]
        local yM_1 = yN and Value[yN] and v:GetAttribute("Favorited") ~= true
        if yM_1 then
            ToggleFavorite:FireServer(v, true)
            task.wait(0.12)
        end
    end
end
function fns.fn787()
    local B3_1
    local B2_1, B2_2
    local B1_1
    B2_1, B1_1 = pcall(game.HttpGet, game, string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100", game.PlaceId))
    if not B2_1 then
        return {}
    end
    B2_2, B3_1 = pcall(HttpService.JSONDecode, HttpService, B1_1)
    local B1_2 = not B2_2 or type(B3_1) ~= "table" or type(B3_1.data) ~= "table"
    if B1_2 then
        return {}
    end
    local B1_3 = {}
    for k, v in B3_1.data do
        local B2_3 = v.id ~= game.JobId
        if B2_3 then
            B2_3 = (v.playing or 0) < (v.maxPlayers or 0)
        end
        if B2_3 then
            table.insert(B1_3, v.id)
        end
    end
    return B1_3
end
function fns.autoReviveAtBaseLoop()
    local Gl_1
    local Gk_1
    local Gj_1
    while not Library.Unloaded do
        task.wait(0.5)
        if Toggles.AutoReviveAtBase.Value then
            Gk_1, Gj_1, Gl_1 = uK()
            if not Gk_1 or not Gl_1 or Gl_1.Health <= 0 then
                uE()
            end
        end
    end
end
function fns.onOnClientEvent3()
    G5_23 = false
end
function fns.fn822()
    if not uW then
        return
    end
    for k, v in uW do
        v:Destroy()
    end
    uW = nil
end
function fns.fn827(kl)
    local Dl = fns.G5_3()
    if not Dl then
        return {}
    end
    local Dm = tonumber(uL.CrystalEspMinimumValue.Value) or 0
    local Dm_1 = tonumber(uL.CrystalEspMaximumDistance.Value) or 0
    local Do = {}
    for i, child in Dl:GetChildren() do
        if child:IsA("BasePart") then
            local attr = child:GetAttribute("Value")
            if attr and attr >= Dm then
                local Magnitude = (child.Position - kl).Magnitude
                if Magnitude <= Dm_1 then
                    table.insert(Do, { Part = child, Distance = Magnitude, Value = attr })
                end
            end
        end
    end
    table.sort(Do, function(ky, kz)
        return ky.Distance < kz.Distance
    end)
    local Dl_2 = {}
    local Dm_4 = math.min(#Do, vr)
    local DE = 1
    while DE <= Dm_4 do
        local Dm_5 = Do[DE]
        local Part = Dm_5.Part
        local attr3 = Part:GetAttribute("TierColorR")
        local attr2 = Part:GetAttribute("TierColorG")
        local attr = Part:GetAttribute("TierColorB")
        local Dt = string.format("%s  %s  %dm", tostring(Part:GetAttribute("CrystalName")), vl(Dm_5.Value), math.floor(Dm_5.Distance))
        local Du = attr3 and Color3.fromRGB(attr3, attr2, attr)
        local Dp_2 = Du or G5_32[G5_31(Part)] or Color3.new(1, 1, 1)
        table.insert(Dl_2, { Adornee = Part, Text = Dt, Color = Dp_2 })
        DE += 1
    end
    return Dl_2
end
function fns.fn830(bh)
    local w4 = fns.ToolConfig.getTool(bh)
    local w4_1 = w4 and w4.maxReach
    local w9 = if w4_1 then 1 else 0
    local w7 = 1572 * w9 + 2347 * (1 - w9)
    local w8 = 1227 * w9 + 1103 * (1 - w9)
    if not ((w7 * 1577 + w8 * 2898 + w7 * w8) % 16777213 == 7963734) then
        w4_1 = 10
    end
    return w4_1 + 4
end
function fns.fn836(ck)
    local PlayerData = uh:FindFirstChild("PlayerData")
    local x5 = PlayerData and PlayerData:FindFirstChild("Inventory")
    local x4_1 = x5
    if x5 then
        x5 = x4_1:FindFirstChild(ck)
    end
    local x4_2 = x5
    if x5 then
        x5 = x4_2:FindFirstChild("Equipped")
    end
    local x4_3 = x5
    if x5 then
        x5 = x4_3.Value
    end
    return x5 or nil
end
function fns.autoClaimTutorialRewardLoop()
    while not Library.Unloaded do
        task.wait(10)
        if Toggles.AutoClaimTutorialReward.Value then
            ClaimTutorialReward:FireServer()
        end
        if Toggles.AutoClaimGroupReward.Value then
            ClaimGroupReward:FireServer()
        end
    end
end
function fns.onRscripts()
    vj(tR)
    Library:Notify("Copied Rscripts profile to clipboard")
end
function fns.fn887(oz)
    local Things = workspace:FindFirstChild("Things")
    local GB = Things and Things:FindFirstChild(oz)
    local GA_1 = GB
    if GB then
        GB = GA_1:IsA("BasePart")
    end
    if GB then
        GB = GA_1.Position
    end
    return GB or nil
end
function fns.fn893(ot, ou)
    if not ot then
        Library:Notify("Could not find " .. ou)
        return
    end
    tV(ot + Vector3.new(0, 5, 0))
    uk()
end
function fns.fn897()
    local Things = workspace:FindFirstChild("Things")
    local xb = Things and Things:FindFirstChild("Crystals")
    return xb
end
function fns.autoThrowBombsLoop()
    local E0_1
    local E__1
    local EZ_1
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoThrowBombs.Value then
            local EY = tC()
            EZ_1, E0_1, E__1 = uK()
            if EY and E0_1 and E__1 then
                if EY.Parent ~= EZ_1 then
                    E__1:EquipTool(EY)
                    task.wait(0.35)
                end
                local EZ_2 = G5_28(E0_1, 120)
                if EZ_2 then
                    BombActivate:FireServer(EY:GetAttribute("BombId"), EZ_2)
                else
                    BombActivate:FireServer(EY:GetAttribute("BombId"))
                end
                task.wait(2)
            end
        end
    end
end
function fns.onGoToN1Value()
    t2("Value", "Value", vl)
end
function fns.fn941()
    local wU_1
    local wT_1
    local wS_1
    wS_1, wT_1, wU_1 = uK()
    if not wU_1 then
        return nil
    end
    for i, child in uh.Backpack:GetChildren() do
        local wS_2 = child:IsA("Tool") and fns.ToolConfig.PickaxeNames[child.Name]
        if wS_2 then
            wU_1:EquipTool(child)
            return child
        end
    end
    return nil
end
function fns.fn946()
    local Fj_1
    local Fi_1
    Fi_1, Fj_1 = uK()
    if not Fj_1 then
        return
    end
    uR()
    local attachment = Instance.new("Attachment")
    attachment.Name = "OuroborosFly"
    attachment.Parent = Fj_1
    local linearVelocity = Instance.new("LinearVelocity")
    linearVelocity.Attachment0 = attachment
    linearVelocity.RelativeTo = Enum.ActuatorRelativeTo.World
    linearVelocity.MaxForce = math.huge
    linearVelocity.VectorVelocity = Vector3.zero
    linearVelocity.Parent = Fj_1
    uW = { linearVelocity, attachment }
end
function fns.fn970(dd, de)
    return string.format('<font color="%s">%s</font>', de, dd)
end
function fns.autoSellAllLoop()
    local C_ = 0
    while not Library.Unloaded do
        task.wait(1)
        local C0 = Toggles.AutoSellAll.Value and not tS and not tD() and os.clock() - C_ >= 3
        if C0 then
            if uu() then
                t8()
                C_ = os.clock()
            end
        end
    end
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local GV = tick() - vh
            local GW = tick() - u9
            if GV >= 300 and GW >= 60 then
                pcall(uI)
            else
                if GV < 300 and GW >= 300 then
                    pcall(uI)
                end
            end
        end
    end
end
function fns.fn1083(c7)
    local DiscordGroup = c7:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = u5 })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = u5 })
end
function fns.autoCollectCrystalsLoop2()
    local Bl_1
    local Bk_1
    local Bj_1
    while not Library.Unloaded do
        task.wait(0.1)
        local Bi = not Toggles.AutoCollectCrystals.Value or tS
        local Bi_1
        if Bi then
            if not tS then
                t4("Idle")
            end
        else
            Bi_1, Bj_1 = uK()
            Bk_1, Bl_1 = nil, nil
            if Bj_1 then
                Bk_1, Bl_1 = tx(Bj_1.Position)
            end
            if Bk_1 then
                t4("Collecting " .. tostring(Bk_1:GetAttribute("CrystalName")))
                uw(Bk_1)
                local Bi_2 = tonumber(uL.CrystalDelay.Value) or 0
                if Bi_2 > 0 then
                    t4(string.format("Waiting %.1fs", Bi_2))
                    task.wait(Bi_2)
                end
            else
                local Bi_3 = Bl_1 and Toggles.AutoSellWhenFull.Value and uu() and not tD()
                if Bi_3 then
                    t4("Selling")
                    t8()
                else
                    local Bj_3 = Bl_1 and "Backpack full" or "No crystals match filters"
                    t4(Bj_3)
                end
            end
        end
    end
end
function fns.onFly(mH)
    if mH then
        G5_38()
    else
        uR()
    end
end
function fns.onUnload()
    Library:Unload()
end
function fns.autoCollectCrystalsLoop()
    local z4_1
    local z3_1
    while not Library.Unloaded do
        task.wait(ve)
        z3_1, z4_1 = uK()
        if Toggles.AutoCollectCrystals.Value and z4_1 then
            G5_22(z4_1.Position)
        elseif next(u_) then
            tG()
        end
    end
end
function fns.fn1154()
    local PlayerData = uh:FindFirstChild("PlayerData")
    local AF = PlayerData and PlayerData:FindFirstChild("Inventory")
    local AE_1 = AF
    if AF then
        AF = AE_1:FindFirstChild("Crystals")
    end
    local AE_2 = AF
    if AF then
        AF = #AE_2:GetChildren()
    end
    local AE_3 = AF
    local AJ = if AE_3 then 1 else 0
    local AH = 3970 * AJ + 1139 * (1 - AJ)
    local AI = 3731 * AJ + 2612 * (1 - AJ)
    if not ((AH * 565 + AI * 3703 + AH * AI) % 16777213 == 14093800) then
        AE_3 = 0
    end
    return AE_3
end
function fns.onRenderStepped()
    if Library.Unloaded or not Toggles.Fly.Value then
        return
    end
    if not uW or not uW[1].Parent then
        G5_38()
        return
    end
    local CurrentCamera = workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    local Fz = Vector3.zero
    for k, v in vc do
        if UserInputService:IsKeyDown(k) then
            Fz += v
        end
    end
    local FA = Vector3.zero
    if Fz.Magnitude > 0 then
        local FB = CurrentCamera.CFrame:VectorToWorldSpace(Vector3.new(Fz.X, 0, Fz.Z))
        local FB_1 = Vector3.new(FB.X, 0, FB.Z)
        if FB_1.Magnitude > 0 then
            FB_1 = FB_1.Unit
        end
        FA = FB_1 + Vector3.new(0, Fz.Y, 0)
        if FA.Magnitude > 0 then
            local Unit = FA.Unit
            local Fz_1 = tonumber(uL.FlySpeed.Value) or 0
            FA = Unit * Fz_1
        end
    end
    uW[1].VectorVelocity = FA
end
function fns.fn1163()
    local wr_1
    local wq_1
    if up then
        up:Cancel()
        up = nil
    end
    wq_1, wr_1 = uK()
    if wr_1 then
        wr_1.Anchored = false
    end
end
function fns.onCharacterAdded()
    up = nil
end
function fns.onMountainPeak()
    vp(uT(), "the peak")
end
function fns.autoFavoriteCrystalsLoop()
    while not Library.Unloaded do
        task.wait(1)
        if Toggles.AutoFavoriteCrystals.Value and not tS then
            ti()
        end
    end
end
function fns.fn1206(gJ)
    local Value = uL.TargetRarities.Value
    local AL = tonumber(uL.FarmMinimumValue.Value) or 0
    local AL_1 = math.max(G5_15() - th(), 0)
    local AN = {}
    for k, v in tB() do
        for i, child in v:GetChildren() do
            local AO = child:IsA("BasePart") and (child.Position - gJ).Magnitude <= G5_40
            if AO then
                local attr = child:GetAttribute("Value")
                local AP = G5_31(child)
                local AQ = attr and AP and attr >= AL and Value[AP]
                if AQ then
                    local AO_2 = child:GetAttribute("WeightKg") or 0
                    AQ = AO_2 <= AL_1
                end
                if AQ then
                    table.insert(AN, child)
                end
            end
        end
    end
    return AN
end
function fns.fn1221(fK)
    for k in u_ do
        if not k.Parent then
            u_[k] = nil
        end
    end
    for k, v in tB() do
        for i, child in v:GetChildren() do
            local zM = child:IsA("BasePart") and (child.Position - fK).Magnitude <= vk
            if zM then
                local zM_1 = uU(child)
                if zM_1 then
                    t9(zM_1)
                end
            end
        end
    end
end
function fns.fn1247(as)
    local wu_1, wu_3
    local wt_1, wt_4
    wt_1, wu_1 = uK()
    if not wu_1 then
        return false
    end
    if up then
        up:Cancel()
        up = nil
    end
    local Magnitude = (wu_1.Position - as).Magnitude
    local wv = math.clamp(Magnitude / tv, 0.06, 4)
    wu_1.Anchored = true
    local wt_3 = TweenService:Create(wu_1, TweenInfo.new(wv, Enum.EasingStyle.Linear), { CFrame = CFrame.new(as) })
    up = wt_3
    wt_3:Play()
    local wu_2 = os.clock() + wv + 1
    while true do
        local wv_1 = wt_3.PlaybackState == Enum.PlaybackState.Playing and os.clock() < wu_2
        if wv_1 then
            RunService.Heartbeat:Wait()
            continue
        end
        break
    end
    if up == wt_3 then
        up = nil
    end
    wt_4, wu_3 = uK()
    return wu_3 ~= nil and (wu_3.Position - as).Magnitude < 8
end
function fns.onNoclip(mK)
    if not mK then
        local Fq = uK()
        if Fq then
            for i, descendant in Fq:GetDescendants() do
                local Fq_1 = descendant:IsA("BasePart") and descendant.Name ~= "HumanoidRootPart"
                if Fq_1 then
                    descendant.CanCollide = true
                end
            end
        end
    end
end
function fns.fn1268()
    local ze = {}
    local zf = fns.G5_3()
    local DroppedCrystals = workspace:FindFirstChild("DroppedCrystals")
    if zf then
        table.insert(ze, zf)
    end
    if DroppedCrystals and DroppedCrystals ~= zf then
        table.insert(ze, DroppedCrystals)
    end
    return ze
end
function fns.fn1270()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    u9 = tick()
end
function fns.autoBuyToolsLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AutoBuyTools.Value then
            for k, v in t7 do
                local D4 = tu(v)
                for k, v in ShopCatalog[v] do
                    local D5 = not D4[v.id]
                    if D5 ~= false then
                        D5 = (v.price or 0) > 0
                    end
                    if D5 then
                        D5 = v.price <= t5()
                    end
                    if D5 then
                        ShopBuy:FireServer(v.id)
                        task.wait(0.35)
                    end
                end
            end
        end
    end
end
function fns.fn1294()
    local Ge = G5_23 or Library.Unloaded
    local Gi = if Ge then 1 else 0
    local Gg = 1718 * Gi + 1281 * (1 - Gi)
    local Gh = 3757 * Gi + 3263 * (1 - Gi)
    if not ((Gg * 168 + Gh * 109 + Gg * Gh) % 16777213 == 7152663) then
        Ge = not Toggles.AutoReviveAtBase.Value
    end
    if Ge then
        return
    end
    G5_23 = true
    uk()
    task.spawn(function()
        local Gb = 1
        while Gb <= 10 do
            local F5 = Library.Unloaded or not Toggles.AutoReviveAtBase.Value
            local F5_1
            local F6 = not G5_23
            local F6_1
            local F7 = F5 or F6
            local F7_1
            if F7 then
                break
            end
            ReviveBase:FireServer()
            task.wait(0.25)
            F5_1, F6_1, F7_1 = uK()
            if F7_1 and F7_1.Health > 0 then
                break
            end
            Gb += 1
        end
        G5_23 = false
    end)
end
function fns.fn1305(jm, jn)
    local CurrentCamera = workspace.CurrentCamera
    local CT = RaycastParams.new()
    CT.FilterType = Enum.RaycastFilterType.Include
    CT.FilterDescendantsInstances = { workspace.Terrain }
    if CurrentCamera then
        local CU = workspace:Raycast(CurrentCamera.CFrame.Position, CurrentCamera.CFrame.LookVector * jn, CT)
        if CU then
            return CU.Position
        end
        local CS_1 = workspace:Raycast(jm.Position + Vector3.new(0, 2, 0), Vector3.new(0, -jn, 0), CT)
        return CS_1 and CS_1.Position
    end
    local CS_2 = workspace:Raycast(jm.Position + Vector3.new(0, 2, 0), Vector3.new(0, -jn, 0), CT)
    return CS_2 and CS_2.Position
end
function fns.autoEquipBestToolsLoop()
    while not Library.Unloaded do
        task.wait(3)
        if Toggles.AutoEquipBestTools.Value then
            for k, v in t7 do
                local Ek = G5_13(v)
                local El = Ek and uv(v) ~= Ek.id
                if El then
                    ShopEquip:FireServer(Ek.id)
                    task.wait(0.35)
                end
            end
        end
    end
end
function fns.fn1345(bc)
    local w1 = fns.ToolConfig.getTool(bc)
    return w1 and w1.cooldown * 0.7142857 or 0.4
end
function fns.autoUpgradeWeightLoop()
    while not Library.Unloaded do
        task.wait(3)
        if Toggles.AutoUpgradeWeight.Value then
            ul("Weight")
        end
        if Toggles.AutoUpgradeAir.Value then
            ul("Air")
        end
    end
end
function fns.fn1347()
    local yJ = os.clock() - tO < 5 or os.clock() - tH < tj
    return yJ
end
th = nil
ti = nil
tj = nil
connection9 = nil
ClaimGroupReward = nil
G5_40 = nil
G5_22 = nil
fns.G5_3 = nil
ClaimTutorialReward = nil
tq = nil
tr = nil
ts = nil
tu = nil
tv = nil
attr4 = nil
tx = nil
G5_32 = nil
G5_13 = nil
tB = nil
tC = nil
tD = nil
ShopEquip = nil
tF = nil
tG = nil
tH = nil
ShopBuy = nil
tJ = nil
connection4 = nil
tL = nil
G5_24 = nil
G5_6 = nil
tO = nil
ToggleFavorite = nil
connection11 = nil
tR = nil
tS = nil
tU = nil
tV = nil
tW = nil
tX = nil
G5_17 = nil
t_ = nil
t1 = nil
t2 = nil
t3 = nil
local UpgradePrices, UpgradeBuy, CrystalHoldComplete, SellResult, SellRequest
t4 = nil
t5 = nil
DigRequest = nil
t7 = nil
t8 = nil
t9 = nil
G5_28 = nil
G5_9 = nil
uc = nil
hopSellFirstLoop = nil
connection10 = nil
ug = nil
uh = nil
ShopCatalog = nil
uj = nil
uk = nil
ul = nil
G5_38 = nil
HttpService = nil
fns.ToolConfig = nil
up = nil
connection6 = nil
ur = nil
us = nil
uu = nil
uv = nil
uw = nil
ux = nil
folder = nil
G5_31 = nil
G5_12 = nil
VirtualUser = nil
uC = nil
Toggles = nil
uE = nil
uF = nil
Label = nil
UserInputService = nil
uI = nil
GoHome = nil
uK = nil
uL = nil
G5_23 = nil
Label2 = nil
uO = nil
TweenService = nil
uQ = nil
uR = nil
local BombShopConfig, TeleportService
VoidRescue = nil
uT = nil
uU = nil
RunService = nil
uW = nil
connection2 = nil
G5_15 = nil
u_ = nil
connection8 = nil
connection3 = nil
ReviveBase = nil
connection12 = nil
u5 = nil
u6 = nil
u7 = nil
u9 = nil
G5_26 = nil
SortGarden = nil
vc = nil
connection5 = nil
ve = nil
connection7 = nil
vg = nil
vh = nil
BombActivate = nil
vj = nil
vk = nil
vl = nil
G5_36 = nil
G5_18 = nil
Library = nil
vp = nil
vr = nil
vu = nil
vv = nil
local u1, u8, BombBuyRequest, vt
local uX
u1 = nil
u8 = nil
BombBuyRequest = nil
local vs
vt = nil
Library, RunService, TweenService, UserInputService, VirtualUser, TeleportService, HttpService, uh, DigRequest, SellRequest, SellResult, CrystalHoldComplete, ToggleFavorite, ShopBuy, ShopEquip, UpgradeBuy, UpgradePrices, ClaimTutorialReward, ClaimGroupReward, BombBuyRequest, BombActivate, SortGarden, ReviveBase, VoidRescue, GoHome, fns.ToolConfig, ShopCatalog, BombShopConfig, t7, tU, tR, tJ, G5_32, tv, tr, G5_40, tj, vr, up, uL, Toggles, vj, u5, uK, uk, tV, uC, ts, u7, G5_9, G5_24, fns.G5_3, G5_18, u1, G5_31, t_, th, G5_15, t5, tu, uv, G5_13, uT, tW, vl = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
local G5_71 = game:GetService("Players")
local G5_10 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
TweenService = game:GetService("TweenService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
TeleportService = game:GetService("TeleportService")
HttpService = game:GetService("HttpService")
uh = G5_71.LocalPlayer
local G5_51 = G5_10:WaitForChild("Remotes")
DigRequest = G5_51:WaitForChild("DigRequest")
SellRequest = G5_51:WaitForChild("SellRequest")
SellResult = G5_51:WaitForChild("SellResult")
CrystalHoldComplete = G5_51:WaitForChild("CrystalHoldComplete")
ToggleFavorite = G5_51:WaitForChild("ToggleFavorite")
ShopBuy = G5_51:WaitForChild("ShopBuy")
ShopEquip = G5_51:WaitForChild("ShopEquip")
UpgradeBuy = G5_51:WaitForChild("UpgradeBuy")
UpgradePrices = G5_51:WaitForChild("UpgradePrices")
ClaimTutorialReward = G5_51:WaitForChild("ClaimTutorialReward")
ClaimGroupReward = G5_51:WaitForChild("ClaimGroupReward")
local ShowTutorialReward = G5_51:WaitForChild("ShowTutorialReward")
BombBuyRequest = G5_51:WaitForChild("BombBuyRequest")
BombActivate = G5_51:WaitForChild("BombActivate")
SortGarden = G5_51:WaitForChild("SortGarden")
ReviveBase = G5_51:WaitForChild("ReviveBase")
local ReviveShow = G5_51:WaitForChild("ReviveShow")
local ReviveResult = G5_51:WaitForChild("ReviveResult")
VoidRescue = G5_51:WaitForChild("VoidRescue")
GoHome = G5_51:WaitForChild("GoHome")
local MountainResetEnd = G5_51:WaitForChild("MountainResetEnd")
local G5_43 = G5_10:WaitForChild("Modules")
fns.ToolConfig = require(G5_43:WaitForChild("Tools"):WaitForChild("ToolConfig"))
ShopCatalog = require(G5_43:WaitForChild("Shop"):WaitForChild("ShopCatalog"))
BombShopConfig = require(G5_43:WaitForChild("BombShopConfig"))
t7 = { "Pickaxes", "Shovels", "Backpacks" }
local G5_74 = { "Best", "Weight", "Value", "Mutations", "Luck", "Rarity" }
local G5_16 = "Mine a Mountain"
tU = "https://discord.gg/ehKVq7pf7v"
tR = "https://rscripts.net/@Ouroboros"
tJ = { "Common", "Uncommon", "Rare", "Epic", "Legendary", "Mythic" }
local G5_46 = { "Mossite", "Voltite", "Gildrite", "Rimeveil", "Nocturnite" }
G5_32 = {
    Common = Color3.fromRGB(200, 200, 200),
    Uncommon = Color3.fromRGB(120, 220, 130),
    Rare = Color3.fromRGB(80, 180, 255),
    Epic = Color3.fromRGB(190, 120, 255),
    Legendary = Color3.fromRGB(255, 170, 60),
    Mythic = Color3.fromRGB(255, 90, 130)
}
tv = 400
tr = 250
G5_40 = 10
tj = 10
vr = 60
vj = fns.fn525
u5 = fns.fn206
uK = fns.fn556
up = nil
uk = fns.fn1163
tV = fns.fn1247
uC = fns.fn345
ts = fns.fn94
u7 = fns.fn941
G5_9 = fns.fn1345
G5_24 = fns.fn830
fns.G5_3 = fns.fn897
G5_18 = fns.fn571
u1 = fns.fn352
G5_31 = fns.fn684
t_ = fns.fn226
th = fns.fn528
G5_15 = fns.fn409
t5 = fns.fn3
tu = fns.fn651
uv = fns.fn836
G5_13 = fns.fn477
uT = fns.fn697
tW = fns.fn113
vl = fns.fn501
local G5_29 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = tU, Copyable = true }, "|", G5_16 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10,
    Size = UDim2.fromOffset(820, 660)
})
local G5_57 = {
    Info = G5_29:AddTab("Info", "info"),
    Main = G5_29:AddTab("Main", "pickaxe"),
    Player = G5_29:AddTab("Player", "user"),
    Settings = G5_29:AddTab("Settings", "settings")
}
G5_57.Farm = G5_57.Main:AddSubTab("Farm", "gem")
G5_57.Automation = G5_57.Main:AddSubTab("Automation", "bot")
G5_57.Plot = G5_57.Main:AddSubTab("Plot", "layout-grid")
uL = Library.Options
Toggles = Library.Toggles
local G5_54 = fns.fn1083
for k, v in G5_57 do
    if v ~= G5_57.Main then
        G5_54(v)
    end
end
G5_10, G5_29, vu, G5_63, vg, G5_51, G5_71, ux, us, G5_43, G5_17, tL = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local G5_60 = 35
repeat
    G5_54 = (G5_60 * 7 + 3) % 9 + 1
    if G5_54 <= 5 then
        if G5_54 <= 3 then
            if G5_54 <= 2 then
                if G5_54 <= 1 then
                    local Kb = bit32.rrotate(bit32.bxor(bit32.lrotate(G5_60, 13), string.byte(tostring(G5_29))), 2)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Kb, 218845986), 14), 3569910594) == bit32.lrotate(Kb, 14) then
                        vu = "#e8a34d"
                    else
                        G5_29 = "#e8a34d"
                    end
                    G5_60 = (G5_60 + 31) % 72
                else
                    local Kx = bit32.rrotate(bit32.bxor(bit32.lrotate(G5_60, 6), string.byte(tostring(ux))), 1)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(Kx, 3063879482), 10), 2086464218) ~= bit32.lrotate(Kx, 10) then
                        G5_43 = "#8b93a3"
                    else
                        G5_63 = "#8b93a3"
                    end
                    G5_60 = (G5_60 + 67) % 72
                end
            else
                local K4 = bit32.rrotate(bit32.bxor(bit32.lrotate(G5_60, 20), string.byte(tostring(us))), 22)
                if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(K4, 2748321991), 3771838682), (bit32.bxor(bit32.band(K4, 1546645304), 3442515662))), 3771838682), 3442515662) == K4 then
                    vg = "Unknown"
                    pcall(fns.fn301)
                    G5_51 = G5_57.Info:AddLeftGroupbox("Account", "circle-user")
                    G5_51:AddLabel(tL("User", uh.Name, G5_10), true)
                    G5_51:AddLabel(tL("Status", "Keyless", G5_10), true)
                    G5_51:AddLabel(tL("Executor", vg, G5_10), true)
                    G5_71 = G5_57.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    G5_71:AddLabel(G5_17(G5_16 .. " [" .. tostring(game.PlaceId) .. "]", G5_29), true)
                    G5_71:AddLabel(tL("Place ID", tostring(game.PlaceId), G5_29), true)
                    ux = G5_71:AddLabel(tL("Session time", "0s", vu), true)
                else
                    G5_57 = "Unknown"
                    pcall(fns.fn301)
                    uh = tL.Info:AddLeftGroupbox("Account", "circle-user")
                    uh:AddLabel(vg("User", G5_71.Name, ux), true)
                    uh:AddLabel(vg("Status", "Keyless", ux), true)
                    uh:AddLabel(vg("Executor", "Unknown", ux), true)
                    G5_10 = tL.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                    G5_10:AddLabel(G5_16(G5_51 .. " [" .. tostring(game.PlaceId) .. "]", G5_17), true)
                    G5_10:AddLabel(vg("Place ID", tostring(game.PlaceId), G5_17), true)
                    vu = G5_10:AddLabel(vg("Session time", "0s", G5_29), true)
                end
                G5_60 = (G5_60 + 67) % 72
            end
        elseif G5_54 <= 4 then
            if (G5_60 * 1 + 5) * 13 % 4 == ((G5_60 * 1 + 5) * 13 + 6) % 4 then
                ux = tostring(game.JobId)
            else
                us = tostring(game.JobId)
            end
            G5_60 = (G5_60 + 31) % 72
        else
            local KM = bit32.rrotate(bit32.bxor(bit32.lrotate(G5_60, 28), string.byte(tostring(G5_43))), 13)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(KM, 377006023), 3513282049), (bit32.bxor(bit32.band(KM, 3917961272), 1995583124))), 3513282049), 1995583124) ~= KM then
                us = #G5_43 > 18
            else
                G5_43 = #us > 18
            end
            G5_60 = (G5_60 + 58) % 72
        end
    elseif G5_54 <= 7 then
        if G5_54 <= 6 then
            local I7 = bit32.rrotate(bit32.bxor(bit32.lrotate(G5_60, 2), string.byte(tostring(G5_71))), 18)
            if bit32.bxor(bit32.lrotate(bit32.bxor(I7, 3776833490), 22), 4105717625) ~= bit32.lrotate(I7, 22) then
                G5_43 = fns.fn970
            else
                G5_17 = fns.fn970
            end
            G5_60 = (G5_60 + 49) % 72
        else
            G5_68 = {
                "zyheahobogpw",
                "jayyrgx",
                "rig",
                "ywvlgw",
                "xscgyqvm",
                "pegvpyd",
                "dcecgwwvnv",
                "vnmqlcs",
                "eldclldk"
            }
            if G5_68[(G5_60 * 76 + 42) % 9 + 1] < G5_68[(G5_60 * 76 + 42) % 9 + 1] then
                G5_51 = fns.fn720
            else
                tL = fns.fn720
            end
            G5_60 = (G5_60 + 67) % 72
        end
    elseif G5_54 <= 8 then
        G5_54 = {
            "xxbrvzzdcrb",
            "sjpdctqji",
            "swybipsuwl",
            "acgfobsezqn",
            "uswlp",
            "mzipttaqmf",
            "stgcq",
            "ajtedocjbdh",
            "ffodbfzc",
            "udscjkdl",
            "asvaxo",
            "pbmo"
        }
        if G5_54[(G5_60 * 14 + 44) % 12 + 1] <= G5_54[(G5_60 * 14 + 44) % 12 + 1] then
            G5_10 = "#7fd47f"
        else
            G5_29 = "#7fd47f"
        end
        G5_60 = (G5_60 + 31) % 72
    else
        G5_54 = (vector.create((G5_60 * 2 + 7) % 11 + 1, (G5_60 * 8 + 8) % 13 + 1, (G5_60 * 6 + 3) % 17 + 1))
        local JG = vector.floor(G5_54) + vector.ceil(G5_54 * -1)
        if vector.dot(JG, JG) == 4 then
            G5_43 = "#6ec1ff"
        else
            G5_29 = "#6ec1ff"
        end
        G5_60 = (G5_60 + 67) % 72
    end
until (G5_60 * 7 + 46) % 72 == 39
if G5_43 then
    G5_60 = 3
    repeat
        G5_51 = {
            "rwnni",
            "zesldwn",
            "cexaqqotozu",
            "fjbtyaldsoak",
            "mwecqoblvv",
            "ryyipwa",
            "bufqphfllel",
            "trzcbqqeii",
            "opw",
            "epjezanclpss"
        }
        if G5_51[(G5_60 * 50 + 54) % 10 + 1] <= G5_51[(G5_60 * 50 + 54) % 10 + 1] then
            G5_43 = string.sub(us, 1, 18) .. "..."
        else
            us = string.sub(G5_43, 1, 18) .. "..."
        end
        G5_60 = (G5_60 + 5) % 8
    until (G5_60 * 3 + 0) % 8 == 0
end
G5_60 = G5_43 or us
tX, Label, tS, tO, tH, tF, vs, vk, ve, u6, u_, uX, G5_51, Label2, uF, folder, t4, tD, ti, uu, t8, tB, uU, t9, tG, vt, ur, G5_22, tx, uQ, t1, uw, G5_36, t2, G5_12, u8, hopSellFirstLoop, tq, uj, G5_28 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local G5_59 = G5_60
G5_71:AddLabel(tL("Server", G5_59, G5_63), true)
G5_71:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
tX = os.clock()
task.spawn(fns.worker)
G5_43 = G5_57.Info:AddRightGroupbox("Scripts", "package")
G5_43:AddLabel(G5_17("Included in this hub", G5_63), true)
G5_43:AddLabel(G5_17(G5_16, G5_29), true)
local FeaturesGroup = G5_57.Info:AddRightGroupbox("Features", "list")
FeaturesGroup:AddLabel(G5_17("Crystal Farm", G5_29), true)
FeaturesGroup:AddLabel(G5_17("Boulder Farm", G5_29), true)
FeaturesGroup:AddLabel(G5_17("Sell Protection", vu), true)
FeaturesGroup:AddLabel(G5_17("Crystal and Boulder ESP", G5_10), true)
FeaturesGroup:AddLabel(G5_17("Misc Utilities", G5_63), true)
local SocialsGroup = G5_57.Info:AddRightGroupbox("Socials", "link")
SocialsGroup:AddButton({ Text = "Discord", Func = u5 })
SocialsGroup:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
local OuroborosHubGroup = G5_57.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
OuroborosHubGroup:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
OuroborosHubGroup:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
OuroborosHubGroup:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
OuroborosHubGroup:AddButton({ Text = "Copy Discord Invite", Func = u5 })
local FaqGroup = G5_57.Info:AddRightGroupbox("FAQ", "circle-help")
FaqGroup:AddLabel("Where do I get a good config?", true)
FaqGroup:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
FaqGroup:AddLabel("How do I import / export configs?", true)
FaqGroup:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
FaqGroup:AddLabel("How do I report bugs?", true)
FaqGroup:AddLabel("Join the Discord and post it in the bugs channel.", true)
FaqGroup:AddLabel("How do I make suggestions?", true)
FaqGroup:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
FaqGroup:AddLabel("How do I get help or updates?", true)
FaqGroup:AddLabel("Join the Discord, updates and support are posted there first.", true)
local CrystalFarmGroup = G5_57.Farm:AddLeftGroupbox("Crystal Farm", "gem")
CrystalFarmGroup:AddToggle("AutoCollectCrystals", { Text = "Auto Collect Crystals", Default = false })
CrystalFarmGroup:AddDropdown("TargetRarities", {
    Text = "Target Rarities",
    Values = tJ,
    Default = tJ,
    Multi = true,
    AllowNull = true,
    Searchable = true
})
CrystalFarmGroup:AddDropdown("CrystalFarmPriority", {
    Text = "Farm Priority",
    Values = { "Highest Value", "Value / Weight", "Nearest" },
    Default = "Highest Value",
    AllowNull = true,
    Searchable = true
})
CrystalFarmGroup:AddInput("FarmMinimumValue", { Text = "Minimum Value", Default = "0", Numeric = true, Finished = true })
CrystalFarmGroup:AddSlider("CrystalDelay", { Text = "Crystal To Crystal Delay", Default = 0, Min = 0, Max = 5, Rounding = 2, Suffix = "s" })
CrystalFarmGroup:AddToggle("AutoSellWhenFull", { Text = "Auto Sell When Full", Default = true })
Label = CrystalFarmGroup:AddLabel("Idle")
local SellProtectionGroup = G5_57.Farm:AddLeftGroupbox("Sell Protection", "shield-check")
SellProtectionGroup:AddToggle("AutoFavoriteCrystals", { Text = "Auto Favorite Crystals", Default = false })
SellProtectionGroup:AddDropdown("ProtectedRarities", {
    Text = "Protected Rarities",
    Values = tJ,
    Default = { "Legendary", "Mythic" },
    Multi = true,
    AllowNull = true,
    Searchable = true
})
local MiscGroup = G5_57.Farm:AddLeftGroupbox("Misc", "wrench")
MiscGroup:AddToggle("AutoSellAll", { Text = "Auto Sell All", Default = false })
MiscGroup:AddToggle("AutoDigTerrain", { Text = "Auto Dig Terrain", Default = false })
local BoulderFarmGroup = G5_57.Farm:AddRightGroupbox("Boulder Farm", "mountain")
BoulderFarmGroup:AddToggle("AutoFarmBoulders", { Text = "Auto Farm Boulders", Default = false })
BoulderFarmGroup:AddDropdown("BoulderTypes", {
    Text = "Boulder Types",
    Values = G5_46,
    Default = G5_46,
    Multi = true,
    AllowNull = true,
    Searchable = true
})
local G5_50 = G5_57.Farm:AddRightGroupbox("Crystal ESP", "eye")
G5_50:AddToggle("CrystalEsp", { Text = "Crystal ESP", Default = false })
G5_50:AddInput("CrystalEspMinimumValue", { Text = "Minimum Value", Default = "0", Numeric = true, Finished = true })
G5_50:AddInput("CrystalEspMaximumDistance", { Text = "Maximum Distance", Default = "1200", Numeric = true, Finished = true })
G5_68 = G5_57.Farm:AddRightGroupbox("Boulder ESP", "scan-eye")
G5_68:AddToggle("BoulderEsp", { Text = "Boulder ESP", Default = false })
G5_68:AddInput("BoulderEspMaximumDistance", { Text = "Maximum Distance", Default = "1800", Numeric = true, Finished = true })
t4 = fns.fn749
tS = false
tO = 0
tH = 0
tD = fns.fn1347
ti = fns.fn763
uu = fns.fn268
t8 = function()
    local y1
    local y9_1
    local y4_1
    local y3_1
    local y2 = u1()
    if not y2 then
        return
    end
    tS = true
    if Toggles.AutoFavoriteCrystals.Value then
        ti()
    end
    y3_1, y4_1 = uK()
    local y3_2 = y4_1 and y4_1.Position
    local y3_3 = y2.Position + Vector3.new(0, 4, 0)
    local y2_1 = false
    uk()
    if uC(y3_3) then
        y1 = false
        local connection = SellResult.OnClientEvent:Connect(function()
            y1 = true
        end)
        local y6 = os.clock() + tj + 3
        local y7 = 0
        while true do
            local y8 = os.clock() < y6 and not y1 and not Library.Unloaded
            local y8_1
            if y8 then
                y8_1, y9_1 = uK()
                if not y9_1 then
                    break
                end
                y9_1.CFrame = CFrame.new(y3_3)
                y9_1.AssemblyLinearVelocity = Vector3.zero
                if os.clock() >= y7 then
                    SellRequest:FireServer("all")
                    y7 = os.clock() + 1
                end
                RunService.Heartbeat:Wait()
                continue
            end
            break
        end
        connection:Disconnect()
        y2_1 = y1
    end
    if y2_1 then
        tH = os.clock()
    else
        tO = os.clock()
        Library:Notify("Sell was rejected, pausing auto sell for a moment")
    end
    if y3_2 then
        tV(y3_2)
    end
    uk()
    tS = false
    return y2_1
end
tF = {}
tB = fns.fn1268
vs = 0.2
vk = 60
if (uQ and not uQ and (uQ or not uQ) and (uQ and not uQ and (FeaturesGroup and uQ)) or (not FeaturesGroup and FeaturesGroup or not FeaturesGroup and FeaturesGroup or (uQ or FeaturesGroup) and (FeaturesGroup and FeaturesGroup))) and ((not FeaturesGroup and FeaturesGroup or (not uQ or uQ) or (not uQ or not FeaturesGroup or not FeaturesGroup and not uQ)) and (FeaturesGroup or not uQ or FeaturesGroup and not FeaturesGroup or (uQ or not uQ or (not FeaturesGroup or not FeaturesGroup)))) or not ((uQ and not uQ and (uQ or not uQ) and (uQ and not uQ and (FeaturesGroup and uQ)) or (not FeaturesGroup and FeaturesGroup or not FeaturesGroup and FeaturesGroup or (uQ or FeaturesGroup) and (FeaturesGroup and FeaturesGroup))) and ((not FeaturesGroup and FeaturesGroup or (not uQ or uQ) or (not uQ or not FeaturesGroup or not FeaturesGroup and not uQ)) and (FeaturesGroup or not uQ or FeaturesGroup and not FeaturesGroup or (uQ or not uQ or (not FeaturesGroup or not FeaturesGroup))))) then
    ve = 0.25
    u6 = setmetatable({}, { __mode = "k" })
    u_ = {}
else
    u_ = 0.25
    ve = setmetatable({}, { __mode = "k" })
    u6 = {}
end
if ((uu or folder) and (not G5_51 and not G5_51) or (not G5_51 and not G5_51 or (uu or not folder))) and ((folder or not uu) and (not G5_51 and G5_51) or (not folder or folder) and (not folder and G5_51)) and ((uu or not folder or not folder and not folder or not folder and folder and (G5_51 or not folder)) and ((folder or not G5_51) and (uu or uu) or (not G5_51 or not uu or uu and uu))) or not (((uu or folder) and (not G5_51 and not G5_51) or (not G5_51 and not G5_51 or (uu or not folder))) and ((folder or not uu) and (not G5_51 and G5_51) or (not folder or folder) and (not folder and G5_51)) and ((uu or not folder or not folder and not folder or not folder and folder and (G5_51 or not folder)) and ((folder or not G5_51) and (uu or uu) or (not G5_51 or not uu or uu and uu)))) then
    uX = {}
    uU = fns.fn514
    t9 = function(fc)
        if u_[fc] or uX[fc] then
            return
        end
        u_[fc] = { hold = fc.HoldDuration, sight = fc.RequiresLineOfSight, enabled = fc.Enabled }
        pcall(function()
            fc.HoldDuration = 0
            fc.RequiresLineOfSight = false
            fc.Enabled = true
        end)
    end
    tG = function()
        for k, v in u_ do
            local zx = k
            local zz = v
            if zx.Parent then
                pcall(function()
                    zx.HoldDuration = zz.hold
                    zx.RequiresLineOfSight = zz.sight
                    zx.Enabled = zz.enabled
                end)
            end
        end
        table.clear(u_)
    end
    vt = function(fn)
        if not uX[fn] then
            uX[fn] = {
                hold = fn.HoldDuration,
                sight = fn.RequiresLineOfSight,
                enabled = fn.Enabled,
                range = fn.MaxActivationDistance
            }
        end
        pcall(function()
            fn.HoldDuration = 0
            fn.RequiresLineOfSight = false
            fn.Enabled = true
            fn.MaxActivationDistance = 1000
        end)
        local zC = false
        if typeof(fireproximityprompt) == "function" then
            zC = pcall(fireproximityprompt, fn, 1) or pcall(fireproximityprompt, fn)
        end
        if not zC then
            zC = pcall(function()
                fn:InputHoldBegin()
                fn:InputHoldEnd()
            end)
        end
        task.delay(vs, function()
            local zA = uX[fn]
            if not zA then
                return
            end
            uX[fn] = nil
            if fn.Parent then
                fn.HoldDuration = zA.hold
                fn.RequiresLineOfSight = zA.sight
                fn.Enabled = zA.enabled
                fn.MaxActivationDistance = zA.range
            end
        end)
        return zC
    end
else
    uU = {}
    vt = fns.fn514
    tG = function(fc)
        if u_[fc] or uX[fc] then
            return
        end
        u_[fc] = { hold = fc.HoldDuration, sight = fc.RequiresLineOfSight, enabled = fc.Enabled }
        pcall(function()
            fc.HoldDuration = 0
            fc.RequiresLineOfSight = false
            fc.Enabled = true
        end)
    end
    uX = function()
        for k, v in u_ do
            local zx = k
            local zz = v
            if zx.Parent then
                pcall(function()
                    zx.HoldDuration = zz.hold
                    zx.RequiresLineOfSight = zz.sight
                    zx.Enabled = zz.enabled
                end)
            end
        end
        table.clear(u_)
    end
    t9 = function(fn)
        if not uX[fn] then
            uX[fn] = {
                hold = fn.HoldDuration,
                sight = fn.RequiresLineOfSight,
                enabled = fn.Enabled,
                range = fn.MaxActivationDistance
            }
        end
        pcall(function()
            fn.HoldDuration = 0
            fn.RequiresLineOfSight = false
            fn.Enabled = true
            fn.MaxActivationDistance = 1000
        end)
        local zC = false
        if typeof(fireproximityprompt) == "function" then
            zC = pcall(fireproximityprompt, fn, 1) or pcall(fireproximityprompt, fn)
        end
        if not zC then
            zC = pcall(function()
                fn:InputHoldBegin()
                fn:InputHoldEnd()
            end)
        end
        task.delay(vs, function()
            local zA = uX[fn]
            if not zA then
                return
            end
            uX[fn] = nil
            if fn.Parent then
                fn.HoldDuration = zA.hold
                fn.RequiresLineOfSight = zA.sight
                fn.Enabled = zA.enabled
                fn.MaxActivationDistance = zA.range
            end
        end)
        return zC
    end
end
ur = function(fx, fy)
    local zG_1
    local zE = pcall(function()
        CrystalHoldComplete:FireServer(fx)
    end)
    if not fy then
        fy = uU(fx)
    end
    local zF = fy and fy.Parent and vt(fy)
    local zF_2
    if zF then
        zE = true
    end
    local zF_1 = not zE
    if zF_1 ~= false then
        zF_1 = typeof(fireclickdetector) == "function"
    end
    if zF_1 then
        zF_2, zG_1 = pcall(fx.FindFirstChildWhichIsA, fx, "ClickDetector", true)
        if zF_2 and zG_1 then
            zE = pcall(fireclickdetector, zG_1, 0)
        end
    end
    return zE
end
G5_22 = fns.fn1221
task.spawn(fns.autoCollectCrystalsLoop)
tx = fns.fn425
uQ = fns.fn1154
t1 = fns.fn1206
uw = fns.fn254
task.spawn(fns.autoCollectCrystalsLoop2)
G5_36 = fns.fn17
t2 = fns.fn538
G5_51 = G5_57.Farm:AddLeftGroupbox("Top Crystals", "crosshair")
G5_51:AddButton({ Text = "Go to N1 Value", Func = fns.onGoToN1Value })
G5_51:AddButton({ Text = "Go to N1 Luck", Func = fns.onGoToN1Luck })
G5_51:AddButton({ Text = "Go to N1 Weight", Func = fns.onGoToN1Weight })
local ServerHopGroup = G5_57.Farm:AddRightGroupbox("Server Hop", "server")
ServerHopGroup:AddToggle("AutoServerHop", { Text = "Auto Server Hop", Default = false })
ServerHopGroup:AddInput("HopMinimumValue", { Text = "Good Crystal Value", Default = "50000", Numeric = true, Finished = true })
ServerHopGroup:AddInput("HopMinimumCount", { Text = "Good Crystals To Stay", Default = "1", Numeric = true, Finished = true })
ServerHopGroup:AddInput("HopEmptyDelay", { Text = "Seconds Before Hop", Default = "20", Numeric = true, Finished = true })
ServerHopGroup:AddToggle("HopUseFarmFilters", { Text = "Respect Target Rarities", Default = true })
ServerHopGroup:AddToggle("HopSellFirst", { Text = "Sell Before Hopping", Default = true })
Label2 = ServerHopGroup:AddLabel("Idle")
uF = false
G5_12 = fns.fn668
u8 = fns.fn787
hopSellFirstLoop = function()
    local Cf
    if uF then
        return
    end
    uF = true
    Label2:SetText("Hopping")
    local Cg = Toggles.HopSellFirst.Value and not tS and uu() and not tD()
    if Cg then
        t8()
    end
    uk()
    local Cg_1 = u8()
    if #Cg_1 > 0 then
        Cf = Cg_1[math.random(#Cg_1)]
        pcall(function()
            TeleportService:TeleportToPlaceInstance(game.PlaceId, Cf, uh)
        end)
    else
        Library:Notify("No servers found, retrying teleport")
        pcall(function()
            TeleportService:Teleport(game.PlaceId, uh)
        end)
    end
    task.wait(10)
    Label2:SetText("Idle")
    uF = false
end
ServerHopGroup:AddButton({ Text = "Hop Now", Func = fns.onHopNow })
task.spawn(fns.autoServerHopLoop)
tq = fns.fn482
uj = fns.fn95
task.spawn(fns.autoFarmBouldersLoop)
G5_28 = fns.fn1305
task.spawn(fns.autoDigTerrainLoop)
task.spawn(fns.autoSellAllLoop)
task.spawn(fns.autoFavoriteCrystalsLoop)
task.spawn(fns.autoCollectCrystalsLoop3)
folder = Instance.new("Folder")
folder.Name = "OuroborosMineAMountain"
G5_60 = gethui and gethui()
G5_51 = G5_60 or game:GetService("CoreGui")
ug, uc, connection2, connection3, uW, vc, connection4, connection5, connection6, attr4, G5_23, connection7, connection8, connection9, G5_60, vh, u9, connection10, connection11, connection12, t3, G5_6, vv, G5_26, ul, tC, uR, G5_38, uE, vp, uO, uI = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
folder.Parent = G5_51
ug = {}
uc = {}
t3 = fns.fn437
G5_6 = fns.fn470
vv = fns.fn827
G5_26 = fns.fn252
task.spawn(fns.crystalEspLoop)
G5_68 = G5_57.Automation:AddLeftGroupbox("Tools", "hammer")
G5_68:AddToggle("AutoBuyTools", { Text = "Auto Buy Tools", Default = false })
G5_68:AddToggle("AutoEquipBestTools", { Text = "Auto Equip Best Tools", Default = false })
G5_46 = G5_57.Automation:AddLeftGroupbox("Rewards", "gift")
G5_46:AddToggle("AutoClaimTutorialReward", { Text = "Auto Claim Tutorial Reward", Default = false })
G5_46:AddToggle("AutoClaimGroupReward", { Text = "Auto Claim Group Reward", Default = false })
G5_54 = G5_57.Automation:AddRightGroupbox("Upgrades", "trending-up")
G5_54:AddToggle("AutoUpgradeWeight", { Text = "Auto Upgrade Weight", Default = false })
G5_54:AddToggle("AutoUpgradeAir", { Text = "Auto Upgrade Air", Default = false })
G5_63 = G5_57.Automation:AddRightGroupbox("Bombs", "bomb")
G5_63:AddToggle("AutoBuyBombs", { Text = "Auto Buy Bombs", Default = false })
G5_63:AddToggle("AutoThrowBombs", { Text = "Auto Throw Bombs", Default = false })
task.spawn(fns.autoBuyToolsLoop)
task.spawn(fns.autoEquipBestToolsLoop)
ul = function(lo)
    local Eu_1
    local Et_1
    Et_1, Eu_1 = pcall(function()
        return UpgradePrices:InvokeServer(lo)
    end)
    local Ev = not Et_1 or type(Eu_1) ~= "table"
    if Ev then
        return
    end
    local Et_2 = tonumber(Eu_1[1])
    local Eu_2 = Et_2 and Et_2 > 0 and Et_2 <= t5()
    if Eu_2 then
        UpgradeBuy:FireServer(lo, 1)
    end
end
task.spawn(fns.autoUpgradeWeightLoop)
connection2 = ShowTutorialReward.OnClientEvent:Connect(fns.onOnClientEvent)
task.spawn(fns.autoClaimTutorialRewardLoop)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(4)
        if Toggles.AutoBuyBombs.Value then
            for k, v in BombShopConfig.BOMBS do
                local EH = k
                local EB = type(v) == "table" and (v.cashPrice or 0) > 0 and v.cashPrice <= t5()
                if EB then
                    pcall(function()
                        BombBuyRequest:InvokeServer(EH)
                    end)
                    task.wait(0.35)
                end
            end
        end
    end
end)
tC = fns.fn473
task.spawn(fns.autoThrowBombsLoop)
G5_71 = G5_57.Plot:AddLeftGroupbox("Plot Arrangement", "layout-grid")
G5_71:AddToggle("AutoArrangeCrystals", { Text = "Auto Arrange Best Crystals", Default = false })
G5_71:AddDropdown("ArrangeBy", { Text = "Arrange By", Values = G5_74, Default = "Best", AllowNull = true, Searchable = true })
G5_71:AddToggle("IncludeBackpackCrystals", { Text = "Include Backpack Crystals", Default = true })
G5_10 = G5_57.Plot:AddRightGroupbox("Mountain Reset", "refresh-cw")
G5_10:AddToggle("AutoTpToPeak", { Text = "Auto TP to Peak on Reset", Default = false })
task.spawn(fns.autoArrangeCrystalsLoop)
connection3 = MountainResetEnd.OnClientEvent:Connect(fns.onOnClientEvent2)
G5_59 = G5_57.Player:AddLeftGroupbox("Movement", "move")
uW = nil
uR = fns.fn822
G5_38 = fns.fn946
G5_59:AddToggle("Fly", { Text = "Fly", Default = false, Callback = fns.onFly })
G5_59:AddInput("FlySpeed", { Text = "Fly Speed", Default = "80", Numeric = true, Finished = true })
G5_59:AddToggle("Noclip", { Text = "Noclip", Default = false, Callback = fns.onNoclip })
G5_59:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false })
G5_59:AddInput("WalkSpeed", { Text = "Walk Speed", Default = "0", Numeric = true, Finished = true })
G5_59:AddInput("JumpPower", { Text = "Jump Power", Default = "0", Numeric = true, Finished = true })
vc = {
    [Enum.KeyCode.W] = Vector3.new(0, 0, -1),
    [Enum.KeyCode.S] = Vector3.new(0, 0, 1),
    [Enum.KeyCode.A] = Vector3.new(-1, 0, 0),
    [Enum.KeyCode.D] = Vector3.new(1, 0, 0),
    [Enum.KeyCode.Space] = Vector3.new(0, 1, 0),
    [Enum.KeyCode.LeftControl] = Vector3.new(0, -1, 0)
}
connection4 = RunService.RenderStepped:Connect(fns.onRenderStepped)
connection5 = RunService.Stepped:Connect(fns.onStepped)
connection6 = UserInputService.JumpRequest:Connect(fns.onJumpRequest)
task.spawn(fns.walkSpeedLoop)
G5_29 = G5_57.Player:AddRightGroupbox("Survival", "heart-pulse")
attr4 = uh:GetAttribute("NoFallDamage")
G5_29:AddToggle("AntiFallDamage", { Text = "Anti Fall Damage", Default = false, Callback = fns.onAntiFallDamage })
G5_29:AddToggle("AutoReviveAtBase", { Text = "Auto Revive at Base", Default = false })
G5_29:AddToggle("AntiFreezeDamage", { Text = "Anti-Freeze Damage", Default = false })
G5_29:AddToggle("AntiAirDamage", { Text = "Anti-Air Damage", Default = false })
G5_29:AddButton({ Text = "Void Rescue / Unstuck", Func = fns.onVoidRescue_Unstuck })
task.spawn(fns.antiFallDamageLoop)
G5_23 = false
uE = fns.fn1294
connection7 = ReviveShow.OnClientEvent:Connect(uE)
connection8 = ReviveResult.OnClientEvent:Connect(fns.onOnClientEvent3)
task.spawn(fns.autoReviveAtBaseLoop)
connection9 = RunService.Heartbeat:Connect(fns.onHeartbeat)
if not connection7 and vv and (connection7 and t3) and (not vv or not vv or not vv and not vv) or (connection7 and not vv or (connection7 or not t3)) and (vv and not vv or vv and not connection7) or not (not connection7 and vv and (connection7 and t3) and (not vv or not vv or not vv and not vv) or (connection7 and not vv or (connection7 or not t3)) and (vv and not vv or vv and not connection7)) then
    G5_50 = G5_57.Player:AddLeftGroupbox("Teleports", "map-pin")
    vp = fns.fn893
    uO = fns.fn887
    G5_50:AddButton({ Text = "Seller", Func = fns.onSeller })
    G5_50:AddButton({ Text = "Shop", Func = fns.onShop })
    G5_50:AddButton({ Text = "Upgrades", Func = fns.onUpgrades })
    G5_50:AddButton({ Text = "My Plot", Func = fns.onMyPlot })
    G5_50:AddButton({ Text = "Mountain Peak", Func = fns.onMountainPeak })
    G5_50:AddButton({ Text = "Back Home", Func = fns.onBackHome })
    Library.ToggleKeybind = uL.MenuKeybind
    G5_60 = G5_57.Settings:AddLeftGroupbox("Menu")
    G5_60:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
    G5_60:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    G5_60:AddButton("Unload", fns.onUnload)
    vh = tick()
else
    vp = G5_60.Player:AddLeftGroupbox("Teleports", "map-pin")
    vh = fns.fn887
    vp:AddButton({ Text = "Seller", Func = fns.onSeller })
    vp:AddButton({ Text = "Shop", Func = fns.onShop })
    vp:AddButton({ Text = "Upgrades", Func = fns.onUpgrades })
    vp:AddButton({ Text = "My Plot", Func = fns.onMyPlot })
    vp:AddButton({ Text = "Mountain Peak", Func = fns.onMountainPeak })
    vp:AddButton({ Text = "Back Home", Func = fns.onBackHome })
    uO.ToggleKeybind = Library.MenuKeybind
    G5_57 = G5_60.Settings:AddLeftGroupbox("Menu")
    G5_57:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { NoUI = true, Text = "Menu keybind", Default = "RightShift" })
    G5_57:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
    G5_57:AddButton("Unload", fns.onUnload)
    uL = tick()
end
u9 = tick()
pcall(function()
    for i, v in ipairs(getconnections(uh.Idled)) do
        local GM = v
        pcall(function()
            GM:Disable()
        end)
    end
end)
uI = fns.fn1270
connection10 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection11 = UserInputService.InputChanged:Connect(fns.onInputChanged)
task.spawn(fns.antiAfkLoop)
connection12 = uh.CharacterAdded:Connect(fns.onCharacterAdded)
Library:OnUnload(fns.fn725)
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
SaveManager:SetFolder("OuroborosHub/MineAMountain")
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
ThemeManager:ApplyToTab(G5_57.Settings)
SaveManager:BuildConfigSection(G5_57.Settings)
ThemeManager:SaveDefault("Monochrome")
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
Library:Notify("Ouroboros Hub loaded for Mine a Mountain")
