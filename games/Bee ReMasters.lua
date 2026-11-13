local fns = {}
local TP_3, TP_5, TP_6, TP_7, TP_9, TP_11, TP_12, ReplicatedStorage, Saving, UserInputService, Window, TP_24, TP_25, TP_26, TP_27, TP_38, TP_49, TP_57, TP_60, TP_63, TP_71, TP_74
TP_3 = nil
TP_5 = nil
TP_6 = nil
TP_9 = nil
TP_11 = nil
TP_12 = nil
ReplicatedStorage = nil
Saving = nil
UserInputService = nil
Window = nil
TP_24 = nil
TP_25 = nil
TP_26 = nil
local CO
local Cv
local AO
local Cc
local CB
local Variables
local connection
local Bi
local onPlayerAdded
local Label
local AH
local Directory
local B5
local CN
local BN
local A5
local Bu
local Cb
local BT
local AT
local onOpenPouchesNow
local BA
local AA
local connection6
local CG
local Worlds
local AZ
local Cn
local AG
local Bn
local CM
local onFly
local connection2
local Bt
local connection4
local Library
local BS
local Lighting
local AS
local Bz
local Cg
local Az
local BY
local CF
local BF
local Cm
local Bm
local connection5
local CL
local A3
local BL
local Toggles
local Bs
local Label2
local BR
local AR
local AbuseManager
local Ay
local Bf
local BX
local AX
local AE
local Bl
local A2
local BK
local connection3
local AK
local B8
local A8
local Network
local onCraftNeonNow
local Cx
local Ce
local Bx
local Be
local VirtualUser
local AW
local Ck
local Options
local BearQuests
local CJ
local BJ
local Cq
local AJ
local A1
local LocalPlayer
local A7
local Bq
local RunService
local CP
local Bw
function fns.fn3()
    local P0 = BX()
    local P1 = P0 and P0:FindFirstChild("Targets")
    local P0_1 = P1
    if P1 then
        P1 = P0_1:FindFirstChild("Positions")
    end
    return P1
end
function fns.fn16(nK)
    if nK then
        if not connection then
            AE()
            connection2 = LocalPlayer.CharacterAdded:Connect(function()
                task.wait(0.2)
                AE()
            end)
            connection = RunService.Stepped:Connect(function()
                for i, v in ipairs(AT) do
                    if v.Parent and v.CanCollide then
                        v.CanCollide = false
                    end
                end
            end)
        end
    else
        if connection then
            connection:Disconnect()
            connection = nil
        end
        if connection2 then
            connection2:Disconnect()
            connection2 = nil
        end
    end
end
function fns.fn30(bT)
    local E9_1
    local E7_4
    local E4 = Cc()
    local E5 = bT and Directory.Hives[bT]
    if not (E4 and E5) then
        return 1
    end
    AO()
    local E5_2 = 0
    for k, v in pairs(E4.ActiveBoosts) do
        local E7_1 = (tostring(k):find("ExtraHatch"))
        if E7_1 then
            E7_1 = (v.power or 0) > E5_2
        end
        if E7_1 then
            E5_2 = v.power
        end
    end
    local E7_2 = E4.EventUpgrades and E4.EventUpgrades.Summer2026
    local E8_2 = E7_2
    if E7_2 then
        E7_2 = E8_2["More Hive Slots"]
    end
    if E7_2 then
        E5_2 += E8_2["More Hive Slots"]
    end
    E5_2 += AZ.hatch * 2
    local E8_3 = E4.HiveSlots or 1
    E7_4, E9_1 = pcall(AbuseManager.GetEffectiveStat, E8_3, "HiveSlots")
    local Fa = E7_4 and tonumber(E9_1)
    if Fa then
        E8_3 = tonumber(E9_1)
    end
    local E7_5 = E4[E5.CurrencyType] or 0
    return math.max(math.floor(math.min(E8_3 + E5_2, E7_5 / AK(E4, E5))), 1)
end
function fns.fn31()
    if setclipboard then
        setclipboard(Az)
    elseif toclipboard then
        toclipboard(Az)
    end
    Library:Notify("Copied Discord invite to clipboard")
end
function fns.fn125(lp, lq)
    local MI = lp:lower()
    local MJ = lq or ""
    for k in tostring(MJ):gmatch("[^,%s]+") do
        if k:lower():gsub("^@", "") == MI then
            return true
        end
    end
    return false
end
function fns.fn127()
    if not Variables.Trading or Cq.offerBuilt then
        return
    end
    local NK_1 = BA()
    local NL = Options.TradeItemDelay.Value or 0.2
    local NM = 0
    for i, v in ipairs(NK_1) do
        if Library.Unloaded or not Variables.Trading then
            return
        end
        Network.Send("Bulk Trade Item", v.uid, v.isBee, v.amount, false)
        NM += 1
        task.wait(NL)
    end
    local NK_3 = Options.TradeHoneyAmount.Value or "0"
    local NL_1 = tostring(NK_3)
    local NK_4 = tonumber(NL_1) and tonumber(NL_1) > 0
    if NK_4 then
        Network.Send("Modify Honey", NL_1)
    end
    Cq.offerBuilt = true
    Cq.offerBuiltAt = os.clock()
    Cq.itemsOffered = Cq.itemsOffered + NM
    if Toggles.TradeNotify.Value then
        Library:Notify(("Trade offer ready with %d item stacks"):format(NM))
    end
end
function fns.fn137()
    if not Toggles.TradeRequireOtherOffer.Value then
        return true
    end
    local N5 = #Cq.otherItems
    local N6 = 0
    for i, v in ipairs(Cq.otherItems) do
        local N7_1 = tonumber(v.amount) or 1
        N6 += N7_1
    end
    local N8 = N5 >= (Options.TradeMinimumOtherStacks.Value or 1)
    if N8 then
        N8 = N6 >= (Options.TradeMinimumOtherAmount.Value or 1)
    end
    if N8 then
        local otherHoney = Cq.otherHoney
        local N6_1 = tonumber(Options.TradeMinimumOtherHoney.Value) or 0
        N8 = otherHoney >= N6_1
    end
    return N8
end
function fns.fn139()
    local PE = BX()
    local PF = PE and PE:FindFirstChild("Cannons")
    local PE_1 = {}
    if PF then
        for i, child in ipairs(PF:GetChildren()) do
            local PF_1 = child:IsA("Model") and child:HasTag("CannonSummer2026") and child:FindFirstChild("CameraPos")
            if PF_1 then
                PE_1[#PE_1 + 1] = child
            end
        end
    end
    return PE_1
end
function fns.fn157()
    if TP_12.uid and TP_12.cannon and TP_12.cannon.Parent then
        return true
    end
    local QK_1 = Cb()
    if not QK_1 then
        return false
    end
    local CameraPos = QK_1:FindFirstChild("CameraPos")
    local QM = CM()
    if CameraPos and QM then
        QM.CFrame = CFrame.new(CameraPos.WorldCFrame.Position)
    end
    TP_12.cannon = QK_1
    TP_12.uid = QK_1:GetFullName()
    TP_12.basePivot = QK_1:GetPivot()
    TP_12.enteredAt = os.clock()
    TP_12.lastTargetAt = os.clock()
    Network.Send("Cannon Entered", TP_12.uid)
    local QK_2 = B8()
    if QK_2 then
        pcall(QK_2.gui.Start, A1, TP_12.uid)
        pcall(QK_2.spawner.StartSpawning)
    end
    return true
end
function fns.fn186()
    local Gy_2
    if Variables.LoadingWorld then
        return nil, nil
    end
    local Gu = Worlds.GetCurrentWorld()
    local map = workspace:FindFirstChild("map")
    local Gw = Gu and map
    local Gw_2
    if not Gw then
        return nil, nil
    end
    local FarmingAreas = map:FindFirstChild("FarmingAreas")
    local Teleports = map:FindFirstChild("Teleports")
    local Gx_2
    local Gv_1 = {}
    for i, v in ipairs({ FarmingAreas, Teleports }) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                if child:IsA("BasePart") then
                    local Name = child.Name
                    local Gz_1 = Gv_1[child.Name] or {}
                    Gv_1[Name] = Gz_1
                    if v == FarmingAreas then
                        Gv_1[child.Name].farming = child
                    else
                        Gv_1[child.Name].teleport = child
                    end
                end
            end
        end
    end
    Gx_2, Gy_2, Gw_2 = nil, nil, -math.huge
    for k, v in pairs(Gv_1) do
        local Gv_2 = Directory.Areas[k]
        local Gz_2 = Gv_2 and Gv_2.world == Gu and not Gv_2.isShop and CN(k) and (Gv_2.id or 0) > Gw_2
        if Gz_2 then
            Gx_2 = k
            Gy_2 = v.farming or v.teleport
            Gw_2 = Gv_2.id or 0
        end
    end
    if not (Gx_2 and Gy_2) then
        return nil, nil
    end
    return Gy_2.Position, Gx_2, Gu
end
function fns.fn201()
    local Ou = AS()
    if Ou then
        Ou.WalkSpeed = Options.WalkSpeed.Value
    end
end
function fns.fn276()
    local Hq_1
    if Bz then
        return Bz
    end
    local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
    local Hp = PlayerScripts and PlayerScripts:FindFirstChild("Scripts")
    local Hp_1
    local Ho_1 = Hp
    if Hp then
        Hp = Ho_1:FindFirstChild("Core")
    end
    local Ho_2 = Hp
    if Hp then
        Hp = Ho_2:FindFirstChild("Bees")
    end
    local Ho_3 = Hp
    if Hp then
        Hp = Ho_3:FindFirstChild("BeeController")
    end
    local Ho_4 = Hp
    if Hp then
        Hp = Ho_4:FindFirstChild("BeeManager")
    end
    local Ho_5 = Hp
    if Ho_5 then
        Hp_1, Hq_1 = pcall(require, Ho_5)
        if Hp_1 then
            Bz = Hq_1
        end
    end
    return Bz
end
function fns.fn278()
    Library.ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
end
function fns.fn289()
    local Character = LocalPlayer.Character
    local Os = Character and Character:FindFirstChild("HumanoidRootPart")
    return Os
end
function fns.fn382()
    local Qm = B8()
    if Qm then
        pcall(Qm.gui.Stop)
        pcall(Qm.spawner.StopSpawning)
    end
    if TP_12.uid then
        Network.Send("Cannon Exited", TP_12.uid)
    end
    TP_12.uid = nil
    TP_12.cannon = nil
    TP_12.basePivot = nil
    table.clear(TP_12.targets)
end
function fns.fn402(aF, aG)
    if aF == "Auto (Best)" then
        return true
    elseif aG == "Auto (Best)" then
        return false
    else
        return aF < aG
    end
end
function fns.fn483()
    local Ea_1
    local D9_1
    D9_1, Ea_1 = pcall(Saving.Get)
    if D9_1 then
        return Ea_1
    end
    return nil
end
function fns.fn497(pC, pD)
    local P6 = Bt(pC):PointToObjectSpace(pD)
    if P6.Magnitude < 0.0001 then
        return nil
    end
    local Unit = P6.Unit
    local P6_1 = math.asin(math.clamp(Unit.Y, -1, 1))
    local P8 = math.atan2(-Unit.X, -Unit.Z)
    local P7_1 = P8 < -1.0471975511965976
    local Qc = if P7_1 then 1 else 0
    local Qa = 153 * Qc + 3786 * (1 - Qc)
    local Qb = 1366 * Qc + 425 * (1 - Qc)
    if not ((Qa * 1078 + Qb * 937 + Qa * Qb) % 16777213 == 1653874) then
        P7_1 = P8 > TP_24
    end
    local Qc_1 = if P7_1 then 1 else 0
    local Qa_1 = 1669 * Qc_1 + 2086 * (1 - Qc_1)
    local Qb_1 = 846 * Qc_1 + 861 * (1 - Qc_1)
    if not ((Qa_1 * 17 + Qb_1 * 3054 + Qa_1 * Qb_1) % 16777213 == 4024031) then
        P7_1 = P6_1 < Cn
    end
    if not P7_1 then
        P7_1 = P6_1 > Ce
    end
    if P7_1 then
        return nil
    end
    return P8, P6_1
end
function fns.fn570(py)
    local Position = py.Position
    local P4 = Vector3.new(py.LookVector.X, 0, py.LookVector.Z)
    if P4.Magnitude < 0.0001 then
        P4 = Vector3.new(py.RightVector.X, 0, py.RightVector.Z)
    end
    return CFrame.lookAt(Position, Position + P4.Unit)
end
function fns.fn575()
    local Character = LocalPlayer.Character
    local Op = Character and Character:FindFirstChildOfClass("Humanoid")
    return Op
end
function fns.fn595()
    local PQ_1
    local PP_1
    local PO = CM()
    PQ_1, PP_1 = nil, nil
    for i, v in ipairs(Bw()) do
        local PR = PO and (v:GetPivot().Position - PO.Position).Magnitude
        local PS = PR or 0
        if not PQ_1 or PS < PP_1 then
            PQ_1, PP_1 = v, PS
        end
    end
    return PQ_1
end
function fns.fn605(rg)
    local DiscordGroup = rg:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = CJ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = CJ })
end
function fns.fn625()
    local holder = workspace:FindFirstChild("holder")
    local Pz = holder and holder:FindFirstChild("things")
    local Py_1 = Pz
    if Pz then
        Pz = Py_1:FindFirstChild("Summer2026")
    end
    return Pz
end
function fns.fn627(hO)
    local J_ = Cc()
    if not J_ or not J_.Bees then
        return {}
    end
    local Value2 = Options.NeonBeeList.Value
    local Value = Options.NeonRarityList.Value
    local J2 = next(BN(Value2)) == nil
    local J3 = next(BN(Value)) == nil
    local floor = math.floor
    local J5 = tonumber(Options.NeonKeep.Value) or 0
    local J6 = floor(J5)
    local J5_1 = tonumber(Options.NeonMaxPerBee.Value) or 0
    local J7 = floor(J5_1)
    local J4_1 = {}
    for k, v in pairs(J_.Bees) do
        local J__1 = Directory.Items[v.id]
        if J__1 and J__1.Type == "Bees" and J__1.Rarity ~= "Premium" and not v.neon and not v.rainbow then
            local J8 = J2 or Value2[v.id]
            if J8 then
                J8 = J3 or Value[J__1.Rarity]
            end
            if J8 then
                local J5_5 = (v.amount or 1) - J6
                local J__3 = math.floor(J5_5 / hO)
                if J7 > 0 and J__3 > J7 then
                    J__3 = J7
                end
                if J__3 >= 1 then
                    J4_1[#J4_1 + 1] = { uid = k, amount = J__3 }
                end
            end
        end
    end
    return J4_1
end
function fns.fn743(qx, qy)
    local QX_1, QX_2
    local QW_1, QW_2
    local QV_1, QV_2
    local QU_1, QU_2
    local QT_1, QT_2, QT_3
    local QS = qy and qy.Parent
    local QS_1, QS_2, QS_3
    if QS then
        QT_1, QS_1 = A5(qy:GetPivot(), qx)
        if QT_1 then
            return qy, QT_1, QS_1
        end
        QV_1, QX_1, QW_1, QU_1 = nil, nil, nil, nil
        for i, v in ipairs(Bw()) do
            QT_2, QS_2 = A5(v:GetPivot(), qx)
            if QT_2 then
                local QY_1 = math.abs(QT_2) + math.abs(QS_2)
                if not QV_1 or QY_1 < QU_1 then
                    QV_1, QX_1, QW_1, QU_1 = v, QT_2, QS_2, QY_1
                end
            end
        end
        return QV_1, QX_1, QW_1
    end
    QV_2, QX_2, QW_2, QU_2 = nil, nil, nil, nil
    for i, v in ipairs(Bw()) do
        QT_3, QS_3 = A5(v:GetPivot(), qx)
        if QT_3 then
            local QY_2 = math.abs(QT_3) + math.abs(QS_3)
            if not QV_2 or QY_2 < QU_2 then
                QV_2, QX_2, QW_2, QU_2 = v, QT_3, QS_3, QY_2
            end
        end
    end
    return QV_2, QX_2, QW_2
end
function fns.fn758(ly)
    local MT_1
    local MS_1
    local Value = Options.TradeAcceptMode.Value
    if Value == "Everyone" then
        return true
    elseif Value == "Friends Only" then
        MS_1, MT_1 = pcall(LocalPlayer.IsFriendsWith, LocalPlayer, ly.UserId)
        return MS_1 and MT_1
    elseif Value == "Selected Player" then
        return ly == TP_9()
    elseif Value == "User List" then
        return CL(ly.Name, Options.TradeUserList.Value)
    else
        return false
    end
end
function fns.fn795(cc)
    local Value = Options.HiveAmount.Value
    local Fm = type(Value) == "string" and Value:lower():gsub("%s", "") == "max"
    if Fm then
        return Cx(cc)
    end
    local max = math.max
    local Fo = tonumber(Value) or 1
    return max(math.floor(Fo), 1)
end
function fns.fn814(hc)
    local Jr = Cc()
    if not Jr then
        return 0
    end
    local Js = 0
    for k, v in pairs(Jr.ActiveBoosts) do
        if v.sourceName == hc and (v.timeLeft or 0) > Js then
            Js = v.timeLeft
        end
    end
    return Js
end
function fns.fn817()
    local Rf_1
    local Rj = if not Bs() then 1 else 0
    if Rj == 1 then
        return
    end
    local Q9 = BY()
    if not Q9 then
        return
    end
    local cannon = TP_12.cannon
    local Rb = Options.TentacleShootDelay.Value or 0.15
    local Rb_4
    local Rc = {}
    for k, v in pairs(TP_12.targets) do
        Rc[#Rc + 1] = { positionName = k, uid = v }
    end
    for i, v in ipairs(Rc) do
        if Library.Unloaded or not Toggles.AutoShootTentacles.Value then
            return
        end
        if TP_12.targets[v.positionName] == v.uid then
            local Rb_2 = Q9:FindFirstChild(v.positionName)
            if Rb_2 then
                local Rc_1 = Rb_2.Position
                local Rb_3 = Q9.Parent and Q9.Parent:FindFirstChild("Targets")
                local Re = Rb_3
                local Re_2
                if Rb_3 then
                    Rb_3 = Re:FindFirstChild(v.positionName)
                end
                local Re_1 = Rb_3
                if Rb_3 then
                    Rb_3 = Re_1:IsA("Model")
                end
                if Rb_3 then
                    Rc_1 += Vector3.new(0, Re_1:GetExtentsSize().Y * 0.25, 0)
                end
                Rb_4, Rf_1, Re_2 = CG(Rc_1, cannon)
                if Rb_4 then
                    local Rc_2 = Rb_4:GetFullName()
                    Network.Send("Aim Update", Rc_2, Rf_1, Re_2)
                    task.wait()
                    Network.Send("Cannon Shoot Requested", Rc_2)
                    task.wait(Rb)
                end
            end
        end
    end
end
function fns.fn824()
    local G6 = Cc()
    local G6_1
    if not G6 then
        return
    end
    local G7 = G6.Rebirth or 0
    local G7_2
    local G8 = G7 + 1
    local G7_1 = Directory.Rebirths[G8]
    local G9 = not G7_1
    local G9_1
    if not G9 then
        G9 = (G6.Honey or 0) < G7_1.requiredHoney
    end
    if G9 then
        return
    end
    G7_2, G6_1, G9_1 = pcall(function()
        return Network.Query("Rebirth")
    end)
    if G7_2 and G6_1 then
        if Toggles.RebirthNotify.Value then
            Library:Notify(("Rebirthed to %d"):format(G8))
        end
    else
        if G7_2 and Toggles.RebirthNotify.Value and G9_1 then
            Library:Notify(tostring(G9_1))
        end
    end
end
function fns.fn925()
    table.clear(AT)
    local Character = LocalPlayer.Character
    if not Character then
        return
    end
    for i, descendant in ipairs(Character:GetDescendants()) do
        if descendant:IsA("BasePart") then
            AT[#AT + 1] = descendant
        end
    end
end
function fns.fn944(Z, aa)
    return tostring(Z) < tostring(aa)
end
function fns.fn998()
    pcall(function()
        Network.Query("Equip Best Bees")
    end)
end
function fns.fn1002(m0)
    if Variables.Trading then
        Network.Send("Trade Cancel")
    end
    if m0 and Toggles.TradeNotify.Value then
        Library:Notify(m0)
    end
end
function fns.fn1010(eZ)
    local HH_2
    local HG_3
    local HF = {}
    for i, child in ipairs(eZ:GetChildren()) do
        if child:IsA("Folder") then
            local HG_1 = child:GetAttribute("Health") or 0
            if HG_1 > 0 then
                local HG_2 = TP_5(child)
                local HI = HF[HG_2] or 0
                HF[HG_2] = HI + HG_1
            end
        end
    end
    HH_2, HG_3 = nil, -math.huge
    for k, v in pairs(HF) do
        if v > HG_3 then
            HH_2, HG_3 = k, v
        end
    end
    return HH_2
end
function fns.fn1014(eW)
    local Hy = eW:GetAttribute("Area") or "Field"
    return Hy == "Spawn" and "Field" or Hy
end
function fns.fn1018(a6)
    for k, v in pairs(Worlds.GetAllHiveModels()) do
        if v:GetAttribute("ID") == a6 then
            return v
        end
    end
    return nil
end
function fns.fn1093()
    local Nk = Cc()
    if not Nk then
        return {}
    end
    local max2 = math.max
    local floor3 = math.floor
    local Nn = tonumber(Options.TradeKeepAmount.Value) or 0
    local Nm_1 = max2(floor3(Nn), 0)
    local floor2 = math.floor
    local No = tonumber(Options.TradeMaxPerStack.Value) or 0
    local Nn_2 = max2(floor2(No), 0)
    local floor = math.floor
    local Np = tonumber(Options.TradeMaxStacks.Value) or 0
    local No_2 = max2(floor(Np), 0)
    local Nl_1 = {}
    if Toggles.TradeOfferBees.Value then
        local Value3 = Options.TradeBeeList.Value
        local Value2 = Options.TradeBeeRarityList.Value
        local Value = Options.TradeBeeVariants.Value
        local Ns_1 = next(Value) ~= nil
        local Nu_1 = Nk.Bees or {}
        for k, v in pairs(Nu_1) do
            local Nt_2 = Directory.Items[v.id]
            local max = math.max
            local Nv = v.amount or 1
            local Nw = max(Nv - Nm_1, 0)
            local Nu_3 = Nt_2 and Nt_2.tradeable ~= false
            if Nu_3 then
                Nu_3 = Toggles.TradeIncludePaidItems.Value or not Nt_2.IsPaidItem
            end
            if Nu_3 then
                Nu_3 = Cv(v.id, Nt_2.Rarity, Value3, Value2)
            end
            if Nu_3 then
                local Nt_3 = not Ns_1 or Value[CB(v)]
                Nu_3 = Nt_3
            end
            if Nu_3 then
                Nu_3 = Nw > 0
            end
            if Nu_3 then
                if Nn_2 > 0 then
                    Nw = math.min(Nw, Nn_2)
                end
                Nl_1[#Nl_1 + 1] = { uid = k, isBee = true, amount = Nw, name = v.id }
            end
        end
    end
    if Toggles.TradeOfferItems.Value then
        local Value2 = Options.TradeItemList.Value
        local Value = Options.TradeItemRarityList.Value
        local Ns_2 = Nk.Items or {}
        for k, v in pairs(Ns_2) do
            local Nk_1 = Directory.Items[v.id]
            local Nr_3 = Nk_1
            if Nr_3 then
                Nr_3 = Nk_1.rarity or Nk_1.Rarity
            end
            local Ns_4 = Nr_3
            local max = math.max
            local Nt_4 = v.amount or 1
            local Nu_4 = max(Nt_4 - Nm_1, 0)
            local Nr_5 = Nk_1 and Nk_1.tradeable ~= false
            if Nr_5 then
                Nr_5 = Toggles.TradeIncludePaidItems.Value or not Nk_1.IsPaidItem
            end
            if Nr_5 then
                Nr_5 = Cv(v.id, Ns_4, Value2, Value)
            end
            if Nr_5 then
                Nr_5 = Nu_4 > 0
            end
            if Nr_5 then
                if Nn_2 > 0 then
                    Nu_4 = math.min(Nu_4, Nn_2)
                end
                Nl_1[#Nl_1 + 1] = { uid = k, isBee = false, amount = Nu_4, name = v.id }
            end
        end
    end
    table.sort(Nl_1, function(mv, mw)
        if mv.name == mw.name then
            return tostring(mv.uid) < tostring(mw.uid)
        end
        return mv.name < mw.name
    end)
    if No_2 > 0 then
        while #Nl_1 > No_2 do
            table.remove(Nl_1)
        end
    end
    return Nl_1
end
function fns.fn1099(jQ, jR)
    local Lv = BearQuests[jQ]
    local Lw = Lv and Lv.quests and Lv.quests[jR]
    local Lv_1 = Lw
    if Lw then
        Lw = Lv_1.requirementData
    end
    local Lv_2 = Lw
    local LD = if Lv_2 then 1 else 0
    local LB = 770 * LD + 3644 * (1 - LD)
    local LC = 299 * LD + 1583 * (1 - LD)
    if not ((LB * 1591 + LC * 1318 + LB * LC) % 16777213 == 1849382) then
        Lv_2 = nil
    end
    return Lv_2
end
function fns.fn1137(lQ)
    if lQ.rainbow then
        return "Rainbow"
    elseif lQ.neon then
        return "Neon"
    elseif lQ.glossy then
        return "Glossy"
    else
        return "Normal"
    end
end
function fns.fn1204(nv)
    if nv then
        if not connection3 then
            connection3 = RunService.Heartbeat:Connect(BK)
        end
    else
        if connection3 then
            connection3:Disconnect()
            connection3 = nil
        end
        local Ow = AS()
        if Ow then
            Ow.WalkSpeed = 16
        end
    end
end
function fns.fn1251()
    local holder = workspace:FindFirstChild("holder")
    local Hw = holder and holder:FindFirstChild("things")
    local Hv_1 = Hw
    if Hw then
        Hw = Hv_1:FindFirstChild("Flowers")
    end
    return Hw
end
function fns.fn1267()
    local HW = Bq()
    if not HW then
        return {}
    end
    local HX = {}
    for k, v in pairs(HW.GetLoadedBees()) do
        if v.spawned and v.spawned.owner == LocalPlayer then
            HX[#HX + 1] = k
        end
    end
    return HX
end
function fns.fn1271(hk)
    local JB = Cc()
    if not JB then
        return nil
    end
    for k, v in pairs(JB.Items) do
        if v.id == hk and (v.amount or 0) > 0 then
            return k
        end
    end
    return nil
end
function fns.fn1298(nX)
    if nX then
        if not connection4 then
            connection4 = UserInputService.JumpRequest:Connect(function()
                local OP = AS()
                if OP then
                    OP:ChangeState(Enum.HumanoidStateType.Jumping)
                end
            end)
        end
    elseif connection4 then
        connection4:Disconnect()
        connection4 = nil
    end
end
function fns.fn1304(iA)
    local Kv = Cc()
    if not Kv or not Kv.Bees then
        return {}
    end
    local Value2 = Options.RainbowBeeList.Value
    local Value = Options.RainbowRarityList.Value
    local Ky = next(BN(Value2)) == nil
    local Kz = next(BN(Value)) == nil
    local floor = math.floor
    local KB = tonumber(Options.RainbowKeep.Value) or 0
    local KC = floor(KB)
    local KB_1 = (tonumber(Options.RainbowMaxPerBee.Value))
    local KL = if KB_1 then 1 else 0
    local KJ = 2167 * KL + 3100 * (1 - KL)
    local KK = 2694 * KL + 3904 * (1 - KL)
    if not ((KJ * 4085 + KK * 2630 + KJ * KK) % 16777213 == 4998100) then
        KB_1 = 0
    end
    local KD = floor(KB_1)
    local KA_1 = {}
    for k, v in pairs(Kv.Bees) do
        local Kv_1 = Directory.Items[v.id]
        if Kv_1 and Kv_1.Type == "Bees" and Kv_1.Rarity ~= "Premium" and v.neon and not v.rainbow then
            local KE = Ky or Value2[v.id]
            if KE then
                KE = Kz or Value[Kv_1.Rarity]
            end
            if KE then
                local KB_5 = (v.amount or 1) - KC
                local Kv_3 = math.floor(KB_5 / iA)
                if KD > 0 and Kv_3 > KD then
                    Kv_3 = KD
                end
                if Kv_3 >= 1 then
                    KA_1[#KA_1 + 1] = { uid = k, amount = Kv_3 }
                end
            end
        end
    end
    return KA_1
end
function fns.fn1306(M, N)
    local D_ = Directory.Areas[M].id
    local D4 = if D_ then 1 else 0
    local D2 = 3070 * D4 + 1476 * (1 - D4)
    local D3 = 3789 * D4 + 798 * (1 - D4)
    if not ((D2 * 800 + D3 * 2141 + D2 * D3) % 16777213 == 5423266) then
        D_ = 0
    end
    return D_ < (Directory.Areas[N].id or 0)
end
function fns.fn1313(lH, lI)
    if not lH or lH == LocalPlayer then
        if lI then
            Library:Notify("Select a player who is in this server")
        end
        return false
    elseif Variables.OpeningHive > 0 then
        if lI then
            Library:Notify("Finish opening the hive before trading")
        end
        return false
    elseif Variables.Trading then
        if lI then
            Library:Notify("A trade is already open")
        end
        return false
    else
        local MZ_1 = os.clock() - Cq.lastRequestAt
        if MZ_1 < 20 then
            if lI then
                Library:Notify(("Wait %d seconds before sending again"):format(math.ceil(20 - MZ_1)))
            end
            return false
        end
        Cq.partner = lH
        Cq.lastRequestAt = os.clock()
        Cq.requestsSent = Cq.requestsSent + 1
        Network.Send("Trade Request", lH)
        return true
    end
end
function fns.fn1314(lS, lT, lU, lV)
    local M8 = next(lU) ~= nil
    local M9 = next(lV) ~= nil
    local Na = not M9
    local Nb = not M8
    if Nb ~= false then
        Nb = Na
    end
    if Nb then
        return false
    end
    if M8 and not lU[lS] then
        return false
    end
    if M9 and not lV[lT] then
        return false
    end
    return true
end
function fns.fn1326(am, an)
    return tostring(am) < tostring(an)
end
function fns.fn1335(aU)
    local Ek = Bn and Bn.Hives_PlayOpenAnimation
    if type(Ek) ~= "table" then
        return
    end
    if aU then
        if not Bi then
            Bi = table.clone(Ek)
            table.clear(Ek)
        end
    elseif Bi then
        for i, v in ipairs(Bi) do
            Ek[#Ek + 1] = v
        end
        Bi = nil
    end
end
function fns.fn1347(bN, bO)
    local E_ = 0
    if AZ.costIII then
        E_ = 0.15
    elseif AZ.costII then
        E_ = 0.1
    elseif AZ.costI then
        E_ = 0.05
    end
    local E2 = bO.Cost or 1
    return math.max(math.floor(E2 * Bx(bN) * (1 - E_)), 1)
end
function fns.fn1382(bE)
    local EO = Directory.Skills and Directory.Skills.Hives and Directory.Skills.Hives.perks
    if not EO then
        return 1
    end
    local floor = math.floor
    local sqrt = math.sqrt
    local ES = bE.Skills and bE.Skills.Hives
    local EZ = if ES then 1 else 0
    local EX = 1553 * EZ + 873 * (1 - EZ)
    local EY = 3447 * EZ + 733 * (1 - EZ)
    if not ((EX * 113 + EY * 1559 + EX * EY) % 16777213 == 10902553) then
        ES = 0
    end
    local EQ_1 = floor(sqrt(ES + 100) * 10 / 100)
    if EO[6] and EO[6].level <= EQ_1 then
        return 0.8
    end
    if EO[2] and EO[2].level <= EQ_1 then
        return 0.9
    end
    return 1
end
function fns.fn1390()
    local Qs = { "Auto (Nearest)" }
    for i, v in ipairs(Bw()) do
        Qs[#Qs + 1] = v.Name
    end
    table.sort(Qs, function(qa, qb)
        if qa == "Auto (Nearest)" then
            return true
        elseif qb == "Auto (Nearest)" then
            return false
        else
            return qa < qb
        end
    end)
    return Qs
end
function fns.fn1406()
    local QA = Options.TentacleCannon and Options.TentacleCannon.Value
    if QA and QA ~= "Auto (Nearest)" then
        for i, v in ipairs(Bw()) do
            if v.Name == QA then
                return v
            end
        end
    end
    return AJ()
end
function fns.fn1422(aN)
    local Ec = {}
    for k, v in aN do
        if v then
            Ec[#Ec + 1] = k
        end
    end
    table.sort(Ec)
    return Ec
end
function fns.fn1429()
    if Variables.OpeningHive <= 0 then
        return
    end
    VirtualUser:CaptureController()
    VirtualUser:ClickButton1(Vector2.new())
end
function fns.fn1446(jY, jZ, j_)
    local LE = Cc()
    local LF = LE and LE.BearQuests and LE.BearQuests[jY]
    local LE_1 = LF
    if LF then
        LF = LE_1.requirementProgress
    end
    local LE_2 = LF
    if not LE_2 then
        return false
    end
    local LF_1 = LE_2[jZ] or 0
    local LE_3 = tonumber(j_[3]) or 0
    return LF_1 >= LE_3
end
function fns.fn1453(bb)
    local EE = Cm(bb)
    if not EE then
        return false
    end
    local EF = EE:FindFirstChild("Center") or EE.PrimaryPart
    local Character = LocalPlayer.Character
    local EG = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (EF and EG) then
        return false
    end
    if (EG.Position - EF.Position).Magnitude > 12 then
        EG.CFrame = CFrame.new(EF.Position + Vector3.new(0, 4, 6))
    end
    return true
end
function fns.fn1454(oO)
    if oO then
        if not Be then
            Be = {
                QualityLevel = settings().Rendering.QualityLevel,
                GlobalShadows = Lighting.GlobalShadows,
                FogEnd = Lighting.FogEnd
            }
        end
        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
        Lighting.GlobalShadows = false
        Lighting.FogEnd = 1000000000
        for i, child in ipairs(Lighting:GetChildren()) do
            local Pf_1 = child:IsA("PostEffect") and child.Enabled
            if Pf_1 then
                TP_11[child] = true
                child.Enabled = false
            end
        end
        for i, descendant in ipairs(workspace:GetDescendants()) do
            local Pf_2 = descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") or descendant:IsA("Smoke") or descendant:IsA("Fire") or descendant:IsA("Sparkles")
            if Pf_2 then
                if descendant.Enabled then
                    TP_11[descendant] = true
                    descendant.Enabled = false
                end
            end
        end
    elseif Be then
        settings().Rendering.QualityLevel = Be.QualityLevel
        Lighting.GlobalShadows = Be.GlobalShadows
        Lighting.FogEnd = Be.FogEnd
        Be = nil
        for k in pairs(TP_11) do
            if k.Parent then
                k.Enabled = true
            end
        end
        table.clear(TP_11)
    end
end
function fns.fn1463(mP)
    local NV = {}
    for i, v in ipairs(mP) do
        local NW = #NV + 1
        local NX = tostring(v.uid)
        local NY = v.amount or 1
        NV[NW] = NX .. ":" .. tostring(NY)
    end
    table.sort(NV)
    return table.concat(NV, "|")
end
function fns.fn1466(lf)
    if type(lf) ~= "string" then
        return nil
    end
    local My = lf:lower()
    for i, player in ipairs(Ay:GetPlayers()) do
        local Mz = player ~= LocalPlayer
        if Mz then
            local MA = player.Name:lower() == My or player.DisplayName:lower() == My
            Mz = MA
        end
        if Mz then
            return player
        end
    end
    return nil
end
function fns.fn1470()
    local Qh_1
    local Qg_1
    local Qd_5
    if Ck == nil then
        Ck = false
        local LMV = ReplicatedStorage:FindFirstChild("LMV")
        local Qe = LMV and LMV:FindFirstChild("Client")
        local Qe_2
        local Qd_2 = Qe
        if Qe then
            Qe = Qd_2:FindFirstChild("SummerCannons")
        end
        local Qd_3 = Qe
        if Qd_3 then
            local CannonGui = Qd_3:FindFirstChild("CannonGui")
            local TargetSpawnerClient = Qd_3:FindFirstChild("TargetSpawnerClient")
            if CannonGui and TargetSpawnerClient then
                Qd_5, Qg_1 = pcall(require, CannonGui)
                Qe_2, Qh_1 = pcall(require, TargetSpawnerClient)
                if Qd_5 and Qe_2 then
                    Ck = { gui = Qg_1, spawner = Qh_1 }
                end
            end
        end
    end
    return Ck or nil
end
function fns.fn1485()
    Cq.startedAt = 0
    Cq.offerBuilt = false
    Cq.offerBuiltAt = 0
    Cq.readyRequestAt = 0
    Cq.selfReady = false
    Cq.otherReady = false
    Cq.otherItems = {}
    Cq.otherHoney = 0
    Cq.lastOtherOffer = ""
end
local function fn1488()
    if Variables.Trading then
        local Om = Cq.partner and Cq.partner.Name or "another player"
        if Cq.selfReady and Cq.otherReady then
            return "Status: Both players are ready with " .. Om
        elseif Cq.selfReady then
            return "Status: Waiting for " .. Om .. " to be ready"
        elseif not Cq.offerBuilt then
            return "Status: Building your offer for " .. Om
        elseif not AR() then
            return "Status: Waiting for the other offer to meet your rules"
        else
            return "Status: Offer ready for " .. Om
        end
    else
        return "Status: Waiting for a trade"
    end
end
local function fn1498()
    local Mq = {}
    for i, player in ipairs(Ay:GetPlayers()) do
        if player ~= LocalPlayer then
            Mq[#Mq + 1] = player.Name
        end
    end
    table.sort(Mq)
    return Mq
end
local function fn1515()
    local FP_1
    local FO_1
    FP_1, FO_1 = nil, nil
    for k, v in pairs(Worlds.GetAllHiveModels()) do
        local F3 = if v:GetAttribute("Unlocked") then 1 else 0
        if F3 == 1 then
            local attr = v:GetAttribute("ID")
            local FR = attr and Directory.Hives[attr]
            local FS = FR
            if FR then
                FR = FS.Hatchable
            end
            if FR then
                FR = not FO_1 or (FS.Cost or 0) > FO_1
            end
            if FR then
                FP_1 = attr
                FO_1 = FS.Cost or 0
            end
        end
    end
    return FP_1
end
local function fn1527()
    local MP = Options.TradePlayer and Options.TradePlayer.Value
    return Bm(MP)
end
local function fn1540(ao, ap)
    return tostring(ao) < tostring(ap)
end
local function fn1543(ab, ac)
    return tostring(ab) < tostring(ac)
end
local function fn1551()
    if connection5 then
        connection5:Disconnect()
        connection5 = nil
    end
    if connection6 then
        connection6:Disconnect()
        connection6 = nil
    end
    for i, v in ipairs(BT) do
        v:Destroy()
    end
    table.clear(BT)
    local OS = AS()
    if OS then
        OS.PlatformStand = false
    end
end
local function fn1615(a1)
    local Eu_1
    local Et_1
    Et_1, Eu_1 = pcall(Worlds.HasAreaAccess, a1)
    return Et_1 and Eu_1
end
local function fn1620(cg, ch)
    local Fv_1
    local Fu_1
    local Ft_1
    Fu_1, Fv_1, Ft_1 = Network.Query("Buy Hive", cg, ch)
    local Fw = not Fu_1
    if Fw ~= false then
        Fw = type(Ft_1) == "number"
    end
    if Fw then
        Fw = Ft_1 > 0
    end
    if Fw and Ft_1 ~= ch then
        Fu_1, Fv_1 = Network.Query("Buy Hive", cg, Ft_1)
    end
    return Fu_1, Fv_1
end
Ay = nil
Az = nil
AA = nil
Options = nil
AE = nil
AG = nil
AH = nil
Window = nil
AJ = nil
AK = nil
Toggles = nil
connection2 = nil
AO = nil
onCraftNeonNow = nil
AR = nil
AS = nil
AT = nil
AW = nil
AX = nil
AZ = nil
A1 = nil
A2 = nil
A3 = nil
A5 = nil
TP_26 = nil
A7 = nil
A8 = nil
Library = nil
TP_3 = nil
Be = nil
Bf = nil
Bi = nil
TP_11 = nil
BearQuests = nil
local AB, AC, connection7, AN, AP, AU, AV, AY, A_, A0, A4, A9, Bb, Bc, Bh
Bl = nil
Bm = nil
Bn = nil
Directory = nil
TP_25 = nil
Bq = nil
Bs = nil
Bt = nil
Bu = nil
Bw = nil
Bx = nil
AbuseManager = nil
Bz = nil
BA = nil
Variables = nil
TP_6 = nil
BF = nil
Worlds = nil
Saving = nil
BJ = nil
BK = nil
BL = nil
BN = nil
Network = nil
BR = nil
BS = nil
BT = nil
TP_5 = nil
BX = nil
BY = nil
connection6 = nil
TP_12 = nil
connection5 = nil
onFly = nil
B5 = nil
TP_24 = nil
LocalPlayer = nil
local Br, Bv, BD, BE, BH, BM, BO, BP, BU, connection9, connection11, connection10, B2
B8 = nil
Label2 = nil
connection4 = nil
Cb = nil
Cc = nil
Ce = nil
Cg = nil
connection = nil
TP_9 = nil
Ck = nil
Cm = nil
Cn = nil
Label = nil
UserInputService = nil
Cq = nil
connection3 = nil
Cv = nil
RunService = nil
Cx = nil
Lighting = nil
onOpenPouchesNow = nil
CB = nil
VirtualUser = nil
CF = nil
CG = nil
onPlayerAdded = nil
ReplicatedStorage = nil
CJ = nil
CL = nil
CM = nil
CN = nil
CO = nil
CP = nil
local Cd, Ch, Cl, Cs, Ct, Cu, connection8, CC, CE
Cd = nil
local TeleportService
Ch = nil
Cl = nil
Cs = nil
Ct = nil
Cu = nil
connection8 = nil
CC = nil
CE = nil
Ay, ReplicatedStorage, VirtualUser, Lighting, RunService, UserInputService, TeleportService, LocalPlayer = nil, nil, nil, nil, nil, nil, nil, nil
Ay = game:GetService("Players")
ReplicatedStorage = game:GetService("ReplicatedStorage")
VirtualUser = game:GetService("VirtualUser")
Lighting = game:GetService("Lighting")
RunService = game:GetService("RunService")
if ((UserInputService and not LocalPlayer or not Lighting and false) and (UserInputService or LocalPlayer or UserInputService and TeleportService) and (ReplicatedStorage or 6 or (ReplicatedStorage or not UserInputService) or (not Lighting or not TeleportService) and (not ReplicatedStorage or not TeleportService)) or (LocalPlayer and not UserInputService or (not UserInputService or not TeleportService) or (not UserInputService or not Lighting) and ReplicatedStorage) and ((not TeleportService or Lighting) and (UserInputService or Lighting) or (not TeleportService and not LocalPlayer or (TeleportService or UserInputService)))) and not ((UserInputService and not LocalPlayer or not Lighting and false) and (UserInputService or LocalPlayer or UserInputService and TeleportService) and (ReplicatedStorage or 6 or (ReplicatedStorage or not UserInputService) or (not Lighting or not TeleportService) and (not ReplicatedStorage or not TeleportService)) or (LocalPlayer and not UserInputService or (not UserInputService or not TeleportService) or (not UserInputService or not Lighting) and ReplicatedStorage) and ((not TeleportService or Lighting) and (UserInputService or Lighting) or (not TeleportService and not LocalPlayer or (TeleportService or UserInputService)))) then
    Ay = game:GetService("UserInputService")
else
    UserInputService = game:GetService("UserInputService")
end
TeleportService = game:GetService("TeleportService")
LocalPlayer = Ay.LocalPlayer
if getgenv then
    getgenv().gethui = function()
        return LocalPlayer:WaitForChild("PlayerGui")
    end
end
Network, Saving, Worlds, Variables, AbuseManager, Directory, BearQuests, Library, Toggles, Options, Az, CJ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local TP_46 = ReplicatedStorage:WaitForChild("LMV")
Network = require(TP_46.Client.Network)
Saving = require(TP_46.Client.Saving)
Worlds = require(TP_46.Client.Worlds)
Variables = require(TP_46.Client.Variables)
AbuseManager = require(TP_46.Client.AbuseManager)
Directory = require(ReplicatedStorage.Directory.Directory)
BearQuests = require(ReplicatedStorage.Directory.Configs.BearQuests)
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/Library.lua"))()
pcall(fns.fn278)
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/deividcomsono/Obsidian/main/addons/SaveManager.lua"))()
Toggles = Library.Toggles
Options = Library.Options
Az = "https://discord.gg/ehKVq7pf7v"
CJ = fns.fn31
local TP_35 = {}
for k in pairs(Directory.Hives) do
    TP_35[#TP_35 + 1] = k
end
Ch = nil
local TP_68 = 6
repeat
    TP_57 = {
        "wapbrfqgasi",
        "njge",
        "uyvvhotucs",
        "mfoloyd",
        "lrojwyeuf",
        "xqdpajohmj",
        "rxnlroovrnj",
        "dtioy",
        "fhvypgepvl",
        "kmeyseqd",
        "reutfqe"
    }
    local WD = TP_68
    TP_46 = TP_57[WD % 11 + 1]
    if TP_46:len() <= TP_46:gsub("(.)", "%1%1", WD % 3 % 2 + 1):len() then
        table.sort(TP_35)
        Ch = {}
    else
        table.sort(Ch)
        TP_35 = {}
    end
    TP_68 = (TP_68 + 6) % 8
until (TP_68 * 5 + 4) % 8 == 0
for k, v in pairs(Directory.Areas) do
    if not v.unlockedByDefault then
        Ch[#Ch + 1] = k
    end
end
table.sort(Ch, fns.fn1306)
TP_57 = {}
for k, v in pairs(Directory.Items) do
    if v.category == "Fruits" then
        TP_57[#TP_57 + 1] = k
    end
end
TP_71, TP_60, TP_46 = nil, nil, nil
TP_68 = 22
repeat
    TP_49 = (TP_68 * 1 + 2) % 3 + 1
    if TP_49 <= 2 then
        if TP_49 <= 1 then
            if TP_68 * 84733421 + 3 + 2 <= TP_68 * 84733421 + 3 + 2 + 3 then
                table.sort(TP_57)
                TP_71 = {}
            else
                table.sort(TP_71)
                TP_57 = {}
            end
            TP_68 = (TP_68 + 16) % 24
        else
            local VU = bit32.rrotate(bit32.bxor(bit32.lrotate(TP_68, 31), string.byte(tostring(TP_46))), 26)
            if bit32.bxor(bit32.lrotate(bit32.bxor(VU, 646647325), 24), 489065230) ~= bit32.lrotate(VU, 24) then
                TP_46 = {}
            else
                TP_60 = {}
            end
            TP_68 = (TP_68 + 19) % 24
        end
    else
        TP_49 = {
            "twubhuaaqnzl",
            "gjnbsg",
            "bzq",
            "nbddmqgiajuw",
            "owqikbawuja",
            "bpsas",
            "tqw",
            "priymroouo",
            "rbgxk",
            "hqghkaesslxq",
            "zscqa",
            "frae",
            "tulsxrlymmhx"
        }
        if TP_49[(TP_68 * 43 + 17) % 13 + 1] < TP_49[(TP_68 * 43 + 17) % 13 + 1] then
            TP_71 = {}
        else
            TP_46 = {}
        end
        TP_68 = (TP_68 + 19) % 24
    end
until (TP_68 * 5 + 9) % 24 == 5
for k, v in pairs(Directory.Items) do
    TP_68 = v.Type == "Bees" and v.Rarity ~= "Premium"
    if TP_68 then
        TP_71[#TP_71 + 1] = k
        TP_68 = type(v.Rarity) == "string" and not TP_46[v.Rarity]
        if TP_68 then
            TP_46[v.Rarity] = true
            TP_60[#TP_60 + 1] = v.Rarity
        end
    end
end
TP_38, TP_27, TP_49 = nil, nil, nil
TP_68 = 3
repeat
    TP_46 = (TP_68 * 1 + 0) % 3 + 1
    if TP_46 <= 2 then
        if TP_46 <= 1 then
            TP_46 = {
                "izy",
                "gflhugnhu",
                "itkepvbtv",
                "gaak",
                "cuibkodad",
                "xmfoum",
                "fcueczlxsun",
                "lxck",
                "easaeuuahke",
                "tsdhw",
                "pgkzi"
            }
            if TP_46[(TP_68 * 93 + 1) % 11 + 1] <= TP_46[(TP_68 * 93 + 1) % 11 + 1] then
                table.sort(TP_71, fns.fn944)
                table.sort(TP_60, fn1543)
                TP_38 = {}
            else
                table.sort(TP_38, fns.fn944)
                table.sort(TP_71, fn1543)
                TP_60 = {}
            end
            TP_68 = (TP_68 + 1) % 12
        else
            TP_46 = { "hkhyuu", "arsxyrk", "yuerraumj", "hefdeyamjo", "bnu", "tsamqgrr", "mopbmwryl", "qpbobtu" }
            if TP_46[(TP_68 * 37 + 97) % 8 + 1] <= TP_46[(TP_68 * 37 + 97) % 8 + 1] then
                TP_27 = {}
            else
                TP_38 = {}
            end
            TP_68 = (TP_68 + 4) % 12
        end
    else
        TP_46 = (vector.create((TP_68 * 3 + 4) % 11 + 1, (TP_68 * 7 + 7) % 13 + 1, (TP_68 * 4 + 12) % 17 + 1))
        TP_7 = (vector.create((TP_68 * 6 + 7) % 11 + 1, (TP_68 * 7 + 8) % 13 + 1, (TP_68 * 7 + 2) % 17 + 1))
        TP_74 = (vector.create((TP_68 * 1 + 8) % 11 + 1, (TP_68 * 4 + 9) % 13 + 1, (TP_68 * 3 + 1) % 17 + 1))
        TP_63 = (vector.create((TP_68 * 4 + 5) % 11 + 1, (TP_68 * 3 + 12) % 13 + 1, (TP_68 * 12 + 7) % 17 + 1))
        if vector.dot(vector.cross(TP_46, TP_7), (vector.cross(TP_74, TP_63))) == vector.dot(TP_46, TP_74) * vector.dot(TP_7, TP_63) - vector.dot(TP_46, TP_63) * vector.dot(TP_7, TP_74) then
            TP_49 = {}
        else
            TP_27 = {}
        end
        TP_68 = (TP_68 + 7) % 12
    end
until (TP_68 * 11 + 3) % 12 == 0
for k, v in pairs(Directory.Items) do
    TP_68 = v.Type ~= "Bees" and v.tradeable ~= false
    if TP_68 then
        TP_38[#TP_38 + 1] = k
        TP_68 = v.rarity or v.Rarity
        TP_46 = TP_68
        TP_68 = type(TP_46) == "string" and not TP_49[TP_46]
        if TP_68 then
            TP_49[TP_46] = true
            TP_27[#TP_27 + 1] = TP_46
        end
    end
end
table.sort(TP_38, fns.fn1326)
table.sort(TP_27, fn1540)
TP_7 = {}
for k, v in pairs(Directory.Items) do
    if v.category == "Pouches" then
        TP_7[#TP_7 + 1] = k
    end
end
Bh = nil
TP_68 = 1
repeat
    TP_46 = {
        "odsrrmhej",
        "hrvxn",
        "uiycocokt",
        "wxfqc",
        "ezywmbvqtuhh",
        "kibifpjpuv",
        "jsj",
        "qhhtrd",
        "zdgymearowdf",
        "zzchx"
    }
    if TP_46[(TP_68 * 56 + 13) % 10 + 1] < TP_46[(TP_68 * 56 + 13) % 10 + 1] then
        table.sort(Bh)
        TP_7 = {}
    else
        table.sort(TP_7)
        Bh = {}
    end
    TP_68 = (TP_68 + 0) % 8
until (TP_68 * 7 + 6) % 8 == 5
for k in pairs(BearQuests) do
    Bh[#Bh + 1] = k
end
table.sort(Bh)
TP_46 = { "Auto (Best)", "All Fields" }
local onTeleportToSecretArea = {}
TP_74 = workspace:FindFirstChild("holder")
TP_63 = TP_74 and TP_74:FindFirstChild("things")
TP_68 = TP_63
TP_49 = TP_68 and TP_68:FindFirstChild("Flowers")
TP_68 = TP_49
if TP_68 then
    for i, child in ipairs(TP_68:GetChildren()) do
        if child:IsA("Folder") then
            TP_68 = child:GetAttribute("Area") or "Field"
            TP_49 = TP_68
            if TP_49 == "Spawn" then
                TP_49 = "Field"
            end
            if not onTeleportToSecretArea[TP_49] then
                onTeleportToSecretArea[TP_49] = true
                TP_46[#TP_46 + 1] = TP_49
            end
        end
    end
end
table.sort(TP_46, fns.fn402)
Cl, Bn, Bi, AZ, AV, A4, A_, Bz, AN, Cq, Label, Label2, connection10, connection11, connection3, connection, connection4, connection5, connection6, BT, AT, connection2, TP_11, Be, Cn, Ce, TP_24, TP_12, Ck, Window, Cc, BN, Bc, CN, Cm, BP, AO, Bx, AK, Cx, CE, B2, Bl, BM, AG, Bu, TP_3, AP, AW, BJ, Bq, Ct, TP_5, BD, AB, B5, onOpenPouchesNow, CF, Cu, BE, A2, Bv, AU, onCraftNeonNow, A0, AX, AH, BF, CC, BO, AY, Cd, CP, BS, Bm, CL, TP_9, BU, A7, CB, Cv, BA, CO, Bf, AR, Cg, TP_6, TP_25, AS, CM, BK, Br, AE, Cs, Bb, AC, onFly, A9, BX, Bw, AJ, BY, Bt, A5, B8, A1, AA, Cb, Bs, CG, A3, TP_63 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Cl = 12
Cc = fns.fn483
BN = fns.fn1422
Bn = debug.getupvalues(Network.OnPacket)[3]
Bi = nil
Bc = fns.fn1335
CN = fn1615
Cm = fns.fn1018
BP = fns.fn1453
AZ = { costI = false, costII = false, costIII = false, hatch = 0 }
AV = -math.huge
AO = function()
    local EL
    if os.clock() - AV < 3 then
        return
    end
    AV = os.clock()
    EL = { costI = false, costII = false, costIII = false, hatch = 0 }
    local EM = pcall(function()
        Network.InvokeSignal("Has UpgradeTree Upgrade", LocalPlayer, {
            Cost1 = function()
                EL.costI = true
            end,
            Cost2 = function()
                EL.costII = true
            end,
            Cost3 = function()
                EL.costIII = true
            end,
            Cost4 = function() end,
            Hatch = function()
                EL.hatch = EL.hatch + 1
            end,
            Hatch2 = function()
                EL.hatch = EL.hatch + 1
            end,
            Hatch3 = function()
                EL.hatch = EL.hatch + 1
            end,
            Hatch4 = function()
                EL.hatch = EL.hatch + 1
            end
        })
    end)
    if EM then
        AZ = EL
    end
end
Bx = fns.fn1382
AK = fns.fn1347
Cx = fns.fn30
CE = fns.fn795
B2 = fn1620
Bl = function()
    local FF_1
    local FE_1
    local FD = BN(Options.HiveList.Value)
    local FD_3
    if #FD == 0 then
        return
    end
    for i, v in ipairs(FD) do
        local FN = v
        if Library.Unloaded or not Toggles.AutoOpenHives.Value then
            return
        end
        local FD_2 = not Toggles.HiveTeleport.Value or BP(FN)
        if FD_2 then
            FD_3, FE_1, FF_1 = pcall(function()
                return B2(FN, CE(FN))
            end)
            if FD_3 and not FE_1 and Toggles.HiveNotify.Value and FF_1 then
                Library:Notify(("%s: %s"):format(FN, tostring(FF_1)))
            end
        end
        local wait = task.wait
        local FE_2 = Options.HiveDelay.Value or 0.5
        wait(FE_2)
    end
end
BM = fn1515
AG = function()
    local F7_1
    local F6_1
    local F4 = BM()
    if not F4 then
        return
    end
    local F5 = not Toggles.HiveTeleport.Value or BP(F4)
    local F5_1
    if F5 then
        F5_1, F6_1, F7_1 = pcall(function()
            return B2(F4, CE(F4))
        end)
        if F5_1 and not F6_1 and Toggles.HiveNotify.Value and F7_1 then
            Library:Notify(("%s: %s"):format(F4, tostring(F7_1)))
        end
    end
end
Bu = fns.fn1429
TP_3 = function()
    if Variables.LoadingWorld then
        return
    end
    local Ge = Worlds.GetCurrentWorld()
    local map = workspace:FindFirstChild("map")
    local Gf_6
    if not (Ge and map) then
        return
    end
    local FarmingAreas = map:FindFirstChild("FarmingAreas")
    local Teleports = map:FindFirstChild("Teleports")
    for i, v in ipairs(Ch) do
        local Gt = v
        if Library.Unloaded or not Toggles.AutoUnlockZones.Value then
            return
        end
        local Gf_2 = Directory.Areas[Gt]
        local Gi = Gf_2 and Gf_2.world == Ge
        local Gi_2
        local Gf_3 = FarmingAreas
        if Gf_3 then
            Gf_3 = FarmingAreas:FindFirstChild(Gt)
        end
        local Gi_1 = Gf_3
        if not Gi_1 then
            local Gf_4 = Teleports and Teleports:FindFirstChild(Gt)
            Gi_1 = Gf_4
        end
        local Gf_5 = Gi
        local Gj_1 = Gi_1
        if Gf_5 then
            Gf_5 = Gj_1
        end
        if Gf_5 then
            Gf_5 = not CN(Gt)
        end
        if Gf_5 then
            Gf_6, Gi_2 = pcall(function()
                return Network.Query("Buy Area", Gt)
            end)
            if Gf_6 and Gi_2 and Toggles.ZoneNotify.Value then
                Library:Notify(("Unlocked %s"):format(Gt))
            end
            task.wait(0.5)
        end
    end
end
AP = fns.fn186
A4 = nil
A_ = nil
AW = function()
    local G0
    local G2_1
    local G1_1
    G0, G2_1, G1_1 = AP()
    local Character = LocalPlayer.Character
    local G4 = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (G0 and G4) then
        return
    end
    if G1_1 ~= A_ then
        A_ = G1_1
        A4 = nil
    end
    if (G4.Position - G0).Magnitude > 30 then
        pcall(function()
            LocalPlayer:RequestStreamAroundAsync(G0, 8)
        end)
        G4.CFrame = CFrame.new(G0 + Vector3.new(0, 6, 0))
        if Toggles.ZoneNotify.Value and G2_1 ~= A4 then
            A4 = G2_1
            Library:Notify(("Moved to %s"):format(G2_1))
        end
    end
end
BJ = fns.fn824
Bz = nil
Bq = fns.fn276
Ct = fns.fn1251
TP_5 = fns.fn1014
BD = fns.fn1010
AB = fns.fn1267
B5 = function(fi, fj)
    local Ir
    local Iq
    Iq = nil
    Ir = nil
    local Iu = Ct()
    if not Iu then
        return false, "Flowers are not loaded"
    end
    local Iv = AB()
    if #Iv == 0 then
        return false, "No equipped bees are loaded"
    end
    local Iw = fi
    local ID = if Iw then 1 else 0
    local IB = 54 * ID + 1279 * (1 - ID)
    local IC = 3070 * ID + 1363 * (1 - ID)
    if not ((IB * 3827 + IC * 2079 + IB * IC) % 16777213 == 6754968) then
        Iw = Options.PowerFarmArea.Value
    end
    local Ix = Iw
    local Iw_1 = Ix == "All Fields"
    if Ix == "Auto (Best)" then
        Ix = BD(Iu)
    end
    local Iy = not Ix
    local Iz = not Iw_1
    if Iz ~= false then
        Iz = Iy
    end
    if Iz then
        return false, "No live flowers found"
    end
    Iq = {}
    for i, child in ipairs(Iu:GetChildren()) do
        local Iu_1 = (child:IsA("Folder"))
        if Iu_1 then
            local Iy_1 = Iw_1 or TP_5(child) == Ix
            Iu_1 = Iy_1
        end
        if Iu_1 then
            local Iy_2 = child:GetAttribute("Health") or 0
            Iu_1 = Iy_2 > 0
        end
        if Iu_1 then
            Iu_1 = child:GetAttribute("ID")
        end
        if Iu_1 then
            Iq[#Iq + 1] = child
        end
    end
    table.sort(Iq, function(fz, fA)
        local H4 = fz:GetAttribute("Health") or 0
        local H5 = fA:GetAttribute("Health") or 0
        return H4 > H5
    end)
    local floor = math.floor
    local Iw_2 = Options.PowerFarmHits.Value or 3
    local Ip = floor(Iw_2)
    local Iu_3 = Options.PowerFarmSpeed.Value or 0.03
    local Im = 0
    local It = Iu_3
    Ir = 1
    local Iu_4 = math.min(#Iv, #Iq)
    local In = Iu_4
    local function Is()
        local fI = Iq[Ir]
        Ir += 1
        return fI
    end
    for i = 1, Iu_4 do
        local Io
        Io = Iv[i]
        task.spawn(function()
            local Ic_3
            local Ig = false
            repeat
                local H8 = not Library.Unloaded
                if H8 then
                    H8 = fj or Toggles.PowerAutoFarm.Value
                end
                if H8 then
                    local H8_1 = Is()
                    if not H8_1 then
                        Ig = true
                    else
                        local attr = H8_1:GetAttribute("ID")
                        local H9_2 = false
                        local Ia = os.clock() + 15
                        while true do
                            local Ib = H8_1.Parent
                            local Ib_1
                            if Ib then
                                local Ic_1 = H8_1:GetAttribute("Health") or 0
                                Ib = Ic_1 > 0
                            end
                            if Ib then
                                Ib = not Library.Unloaded
                            end
                            if Ib then
                                Ib = os.clock() < Ia
                            end
                            if Ib then
                                Ib = fj or Toggles.PowerAutoFarm.Value
                            end
                            if Ib then
                                if not H9_2 then
                                    Ib_1, Ic_3 = pcall(function()
                                        return Network.Query("Join Flower", attr, { Io })
                                    end)
                                    local Id = Ib_1 and type(Ic_3) == "table" and Ic_3[Io] == true
                                    H9_2 = Id
                                end
                                if H9_2 then
                                    local Ij = 1
                                    while Ij <= Ip do
                                        local Ib_2 = not H8_1.Parent
                                        if not Ib_2 then
                                            local Ic_4 = H8_1:GetAttribute("Health") or 0
                                            Ib_2 = Ic_4 <= 0
                                        end
                                        if Ib_2 then
                                            break
                                        end
                                        Network.Send("Farm Flower", attr, Io)
                                        task.wait(It)
                                        Ij += 1
                                    end
                                else
                                    task.wait(math.max(It, 0.1))
                                end
                                continue
                            end
                            break
                        end
                        local H9_3 = not H8_1.Parent
                        if not H9_3 then
                            local Ia_1 = H8_1:GetAttribute("Health") or 0
                            H9_3 = Ia_1 <= 0
                        end
                        if H9_3 then
                            Im += 1
                        end
                    end
                else
                    Ig = true
                end
            until Ig
            In -= 1
        end)
    end
    while true do
        if In > 0 and not Library.Unloaded then
            task.wait(It)
            continue
        end
        break
    end
    return Im > 0, Ix
end
onTeleportToSecretArea = function()
    local Position
    local map = workspace:FindFirstChild("map")
    local IW = map and map:FindFirstChild("Build")
    local IV_1 = IW
    if IW then
        IW = IV_1:FindFirstChild("AproxCaveSecret")
    end
    local IV_2 = IW
    if IW then
        IW = IV_2:FindFirstChild("GummyBee")
    end
    local IV_3 = IW
    local Character = LocalPlayer.Character
    local IX = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (IV_3 and IX) then
        Library:Notify("Could not find the secret area")
        return
    end
    Position = IV_3:GetPivot().Position
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(Position, 8)
    end)
    IX.CFrame = CFrame.new(Position + Vector3.new(0, 6, 8))
end
local function onTeleportToSummerSecretArea()
    local Position
    local map = workspace:FindFirstChild("map")
    local I3 = map and map:FindFirstChild("Hives")
    local I2_1 = I3
    if I3 then
        I3 = I2_1:FindFirstChild("Bouncy Land")
    end
    local I2_2 = I3
    if I3 then
        I3 = I2_2:FindFirstChild("Bouncy Secret Hive")
    end
    local I2_3 = I3
    local Character = LocalPlayer.Character
    local I4 = Character and Character:FindFirstChild("HumanoidRootPart")
    if not (I2_3 and I4) then
        Library:Notify("Could not find the Summer secret area")
        return
    end
    Position = I2_3:GetPivot().Position
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(Position, 8)
    end)
    I4.CFrame = CFrame.new(Position + Vector3.new(0, 5, 8))
end
onOpenPouchesNow = function()
    local Jc = Cc()
    local Jc_4
    if not Jc then
        return
    end
    local Value = Options.PouchList.Value
    local Je = next(BN(Value)) == nil
    for k, v in pairs(Jc.Items) do
        local Jo = k
        local Jq = v
        if Library.Unloaded or not Toggles.AutoUsePouches.Value then
            return
        end
        local Jc_2 = Directory.Items[Jq.id]
        local Jf = Jc_2 and Jc_2.category == "Pouches"
        local Jf_1
        if Jf then
            Jf = Je or Value[Jq.id]
        end
        if Jf then
            Jc_4, Jf_1 = pcall(function()
                local Query = Network.Query
                local Ja = Jq.amount or 1
                return Query("Open Pouche", Jo, Ja)
            end)
            if Jc_4 and Jf_1 and Toggles.PouchNotify.Value then
                local id = Jq.id
                local Jf_2 = Jq.amount or 1
                Library:Notify(("Opened %s x%d"):format(id, Jf_2))
            end
            local wait = task.wait
            local Jf_3 = Options.PouchDelay.Value or 0.5
            wait(Jf_3)
        end
    end
end
CF = fns.fn998
Cu = fns.fn814
BE = fns.fn1271
A2 = function()
    local JL = BN(Options.FruitList.Value)
    local JL_3
    local JM = tonumber(Options.FruitRefreshBelow.Value) or 0
    local JM_1
    for i, v in ipairs(JL) do
        if Library.Unloaded or not Toggles.AutoUseFruits.Value then
            return
        end
        local JL_2 = not Toggles.FruitKeepActive.Value or Cu(v) <= JM
        if JL_2 then
            local JK = BE(v)
            if JK then
                JL_3, JM_1 = pcall(function()
                    return Network.Query("Use Fruit", JK, 1)
                end)
                if JL_3 and JM_1 and Toggles.FruitNotify.Value then
                    Library:Notify(("Used %s"):format(v))
                end
                task.wait(0.3)
            end
        end
    end
end
Bv = function(hH)
    local JX_1
    local JW_1
    JW_1, JX_1 = pcall(function()
        return Network.Query("Get Fuse Amount", hH == true)
    end)
    if JW_1 then
        local max = math.max
        local JY = tonumber(JX_1) or 10
        return max(JY, 1)
    end
    return 10
end
AU = fns.fn627
onCraftNeonNow = function()
    local Kj_1, Kj_2
    local Ki_1, Ki_4
    local Kh = Bv(false)
    local Kg = AU(Kh)
    if #Kg == 0 then
        return
    end
    local Kh_1 = 0
    if Toggles.NeonBatch.Value then
        Ki_1, Kj_1 = pcall(function()
            return Network.Query("Make Neon Batch", Kg)
        end)
        local Kk_1 = Ki_1 and type(Kj_1) == "table" and Kj_1.success
        if Kk_1 then
            local Ki_2 = Kj_1.crafted
            local Ko = if Ki_2 then 1 else 0
            local Km = 397 * Ko + 2955 * (1 - Ko)
            local Kn = 53 * Ko + 776 * (1 - Ko)
            if not ((Km * 2460 + Kn * 4044 + Km * Kn) % 16777213 == 1211993) then
                Ki_2 = 0
            end
            Kh_1 = Ki_2
        end
    else
        for i, v in ipairs(Kg) do
            local Ku = v
            if Library.Unloaded or not Toggles.AutoNeonPets.Value then
                break
            end
            Ki_4, Kj_2 = pcall(function()
                return Network.Query("Make Neon", Ku.amount, Ku.uid)
            end)
            if Ki_4 and Kj_2 then
                Kh_1 = Kh_1 + Ku.amount
            end
            local wait = task.wait
            local Kj_3 = Options.NeonDelay.Value or 1
            wait(Kj_3)
        end
    end
    if Kh_1 > 0 and Toggles.NeonNotify.Value then
        Library:Notify(("Crafted %d Neon Bees"):format(Kh_1))
    end
end
A0 = fns.fn1304
AX = function(i_)
    local KV_1, KV_3
    local KU_1, KU_4
    local KT = Bv(true)
    local KS = A0(KT)
    if #KS == 0 then
        if i_ and Toggles.RainbowNotify.Value then
            Library:Notify("No Rainbow crafts available")
        end
        return
    end
    local KT_2 = 0
    if Toggles.RainbowBatch.Value then
        KU_1, KV_1 = pcall(function()
            return Network.Query("Make Rainbow Batch", KS)
        end)
        local KW_1 = KU_1 and type(KV_1) == "table" and KV_1.success
        if KW_1 then
            local KU_2 = KV_1.crafted
            local K_ = if KU_2 then 1 else 0
            local KY = 2702 * K_ + 971 * (1 - K_)
            local KZ = 3712 * K_ + 523 * (1 - K_)
            if not ((KY * 1745 + KZ * 2277 + KY * KZ) % 16777213 == 6419825) then
                KU_2 = 0
            end
            KT_2 = KU_2
        end
    else
        for i, v in ipairs(KS) do
            local K5 = v
            local KU_3 = Library.Unloaded
            if not KU_3 then
                local KV_2 = not i_
                if KV_2 ~= false then
                    KV_2 = not Toggles.AutoRainbowPets.Value
                end
                KU_3 = KV_2
            end
            if KU_3 then
                break
            end
            KU_4, KV_3 = pcall(function()
                return Network.Query("Make Rainbow", K5.amount, K5.uid)
            end)
            if KU_4 and KV_3 then
                KT_2 += K5.amount
            end
            local wait = task.wait
            local KV_4 = Options.RainbowDelay.Value or 1
            wait(KV_4)
        end
    end
    if KT_2 > 0 and Toggles.RainbowNotify.Value then
        Library:Notify(("Crafted %d Rainbow Bees"):format(KT_2))
    end
end
AN = {}
AH = function()
    local K9_1
    local K8_1
    for i = 1, Cl do
        local K7 = Library.Unloaded or not Toggles.AutoClaimGifts.Value
        local K7_1
        if K7 then
            return
        end
        local K6 = "Gift" .. i
        if not AN[K6] then
            K8_1, K7_1, K9_1 = pcall(function()
                return Network.Query("Claim Gift", K6)
            end)
            if K8_1 and K7_1 then
                AN[K6] = true
                if Toggles.GiftNotify.Value then
                    Library:Notify(("Claimed %s"):format(K6))
                end
            else
                if K8_1 and K9_1 == "You already claimed this gift!" then
                    AN[K6] = true
                end
            end
            task.wait(0.2)
        end
    end
end
BF = function()
    local Lj = Cc()
    if not Lj then
        return
    end
    for k, v in pairs(Lj.Items) do
        local Lp = k
        local Lr = v
        if Library.Unloaded or not Toggles.AutoOpenGiftItems.Value then
            return
        end
        local Lj_2 = Directory.Items[Lr.id]
        if Lj_2 and Lj_2.category == "PlaytimeGifts" then
            pcall(function()
                local Query = Network.Query
                local Lh = Lr.amount or 1
                Query("Open Pouche", Lp, Lh)
            end)
            task.wait(0.3)
        end
    end
end
CC = fns.fn1099
BO = fns.fn1446
AY = function()
    local LK = Cc()
    if not LK then
        return
    end
    for k, v in pairs(LK.Items) do
        local LQ = k
        local LK_1 = Directory.Items[v.id]
        local LL = LK_1 and LK_1.category == "Fruits"
        if LL then
            LL = (v.amount or 0) > 0
        end
        if LL then
            pcall(function()
                return Network.Query("Use Fruit", LQ, 1)
            end)
            return
        end
    end
end
Cd = function(kh)
    local LU = kh[1]
    local LT = kh[2]
    if LU == "Hives" then
        local LV_1 = type(LT) == "string" and Directory.Hives[LT]
        if LV_1 then
            local LV_2 = not Toggles.HiveTeleport.Value or BP(LT)
            if LV_2 then
                pcall(function()
                    return B2(LT, CE(LT))
                end)
            end
        else
            AG()
        end
    else
        local LV_3 = LU == "Hatch Bee"
        local LW = LU == "Hatch"
        local L_ = if LW then 1 else 0
        local LY = 431 * L_ + 3773 * (1 - L_)
        local LZ = 3046 * L_ + 2834 * (1 - L_)
        if not ((LY * 2026 + LZ * 1279 + LY * LZ) % 16777213 == 6081866) then
            LW = LV_3
        end
        if LW then
            AG()
        elseif LU == "Break Flowers" then
            local LW_1 = LT == "All" and "All Fields" or LT
            pcall(B5, LW_1, true)
        elseif LU == "Collect" then
            if LT == "Pollen" or LT == "Honey" then
                pcall(B5, "All Fields", true)
            end
        elseif LU == "Craft Neon" then
            onCraftNeonNow()
        elseif LU == "Craft Rainbow" then
            AX(true)
        elseif LU == "Eat Fruit" then
            AY()
        end
    end
end
CP = function()
    local L4_1
    local L3_1
    local L1_1
    local L2_2
    local L0 = BN(Options.QuestBearList.Value)
    local L0_2
    if #L0 == 0 then
        L0 = Bh
    end
    for i, v in ipairs(L0) do
        local Me = v
        if Library.Unloaded or not Toggles.AutoQuests.Value then
            return
        end
        L0_2, L1_1 = nil, nil
        local Mh = 1
        while Mh <= 6 do
            if Library.Unloaded or not Toggles.AutoQuests.Value then
                return
            end
            L2_2, L4_1, L3_1 = pcall(function()
                return Network.Query("Get Bear Quest Info", Me)
            end)
            if not L2_2 then
                break
            end
            L0_2, L1_1 = L4_1, L3_1
            if L4_1 == "finished" and Toggles.QuestNotify.Value then
                Library:Notify(("Claimed %s quest reward"):format(Me))
            end
            if L4_1 ~= "new" and L4_1 ~= "finished" then
                break
            end
            task.wait(0.2)
            Mh += 1
        end
        if L0_2 == "unfinished" and L1_1 then
            local L0_3 = CC(Me, L1_1)
            if L0_3 then
                for i, v in ipairs(L0_3) do
                    if Library.Unloaded or not Toggles.AutoQuests.Value then
                        return
                    end
                    local L0_5 = 0
                    while true do
                        local L1_2 = not BO(Me, i, v) and L0_5 < 25 and not Library.Unloaded and Toggles.AutoQuests.Value
                        if L1_2 then
                            Cd(v)
                            L0_5 += 1
                            task.wait(0.1)
                            continue
                        end
                        break
                    end
                    task.wait(0.2)
                end
            end
        end
        task.wait(0.2)
    end
end
Cq = {
    partner = nil,
    startedAt = 0,
    offerBuilt = false,
    offerBuiltAt = 0,
    readyRequestAt = 0,
    selfReady = false,
    otherReady = false,
    otherItems = {},
    otherHoney = 0,
    lastOtherOffer = "",
    lastRequestAt = -math.huge,
    requestsSent = 0,
    tradesCompleted = 0,
    tradesFailed = 0,
    itemsOffered = 0
}
if (not Cq and not CF and (Cq and BN) or (BX or not AA) and (BN and not CF)) and (BN and AA and (AA or not BN) or (not Cq or BN) and (not Cq and not AA)) or (AA or CF or (CF or CF) or (AA or BN) and (not Cq and AA) or ((not BJ or not BN) and (BJ and Cq) or (BN or Cq or CF and not BJ))) or not ((not Cq and not CF and (Cq and BN) or (BX or not AA) and (BN and not CF)) and (BN and AA and (AA or not BN) or (not Cq or BN) and (not Cq and not AA)) or (AA or CF or (CF or CF) or (AA or BN) and (not Cq and AA) or ((not BJ or not BN) and (BJ and Cq) or (BN or Cq or CF and not BJ)))) then
    BS = fn1498
else
    Cv = fn1498
end
Bm = fns.fn1466
CL = fns.fn125
if (AR and not AR or connection3 and AS or (AO or not connection3) and (Bm and AO)) and (not AA or AS or (AS or not Bm) or (not Bm and not AS or not AA and not connection3)) or not ((AR and not AR or connection3 and AS or (AO or not connection3) and (Bm and AO)) and (not AA or AS or (AS or not Bm) or (not Bm and not AS or not AA and not connection3))) then
    TP_9 = fn1527
    BU = fns.fn758
    A7 = fns.fn1313
    CB = fns.fn1137
    Cv = fns.fn1314
else
    BU = fn1527
    TP_9 = fns.fn758
    Cv = fns.fn1313
    A7 = fns.fn1137
    CB = fns.fn1314
end
BA = fns.fn1093
CO = fns.fn127
Bf = fns.fn1463
AR = fns.fn137
Cg = fns.fn1002
TP_6 = fns.fn1485
TP_25 = fn1488
AS = fns.fn575
CM = fns.fn289
BT = {}
BK = fns.fn201
Br = fns.fn1204
if (not BO or not connection10 or BO and AU or (not Bs or BO) and (Bs and TP_63)) and (not BO or not connection10 or (not AU or not Bs) or Label2 and Label2 and (not BO and not Label2)) or not ((not BO or not connection10 or BO and AU or (not Bs or BO) and (Bs and TP_63)) and (not BO or not connection10 or (not AU or not Bs) or Label2 and Label2 and (not BO and not Label2))) then
    AT = {}
    AE = fns.fn925
else
    AE = {}
    AT = fns.fn925
end
Cs = fns.fn16
Bb = fns.fn1298
AC = fn1551
onFly = function(ob)
    local connection
    local O7
    connection = nil
    O7 = nil
    local bodyGyro, bodyVelocity
    if not ob then
        AC()
        return
    end
    local O8 = CM()
    local O9 = AS()
    if not (O8 and O9) then
        return
    end
    AC()
    bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(1000000000, 1000000000, 1000000000)
    bodyVelocity.Velocity = Vector3.zero
    bodyVelocity.Parent = O8
    bodyGyro = Instance.new("BodyGyro")
    bodyGyro.MaxTorque = Vector3.new(1000000000, 1000000000, 1000000000)
    bodyGyro.P = 9000
    bodyGyro.CFrame = O8.CFrame
    bodyGyro.Parent = O8
    BT[#BT + 1] = bodyVelocity
    BT[#BT + 1] = bodyGyro
    O9.PlatformStand = true
    O7 = {}
    connection6 = UserInputService.InputBegan:Connect(function(oo, op)
        if not op then
            O7[oo.KeyCode] = true
        end
    end)
    connection = UserInputService.InputEnded:Connect(function(ot)
        O7[ot.KeyCode] = nil
    end)
    BT[#BT + 1] = {
        Destroy = function()
            connection:Disconnect()
        end
    }
    connection5 = RunService.Heartbeat:Connect(function()
        local O0 = CM()
        local O1 = AS()
        if not (O0 and O1) or not bodyVelocity.Parent then
            return
        end
        O1.PlatformStand = true
        local CurrentCamera = workspace.CurrentCamera
        local O1_1 = Vector3.zero
        if O7[Enum.KeyCode.W] then
            O1_1 = O1_1 + CurrentCamera.CFrame.LookVector
        end
        if O7[Enum.KeyCode.S] then
            O1_1 = O1_1 - CurrentCamera.CFrame.LookVector
        end
        if O7[Enum.KeyCode.A] then
            O1_1 = O1_1 - CurrentCamera.CFrame.RightVector
        end
        if O7[Enum.KeyCode.D] then
            O1_1 = O1_1 + CurrentCamera.CFrame.RightVector
        end
        if O7[Enum.KeyCode.Space] then
            O1_1 = O1_1 + Vector3.yAxis
        end
        if O7[Enum.KeyCode.LeftControl] then
            O1_1 = O1_1 - Vector3.yAxis
        end
        if O1_1.Magnitude > 0 then
            O1_1 = O1_1.Unit * Options.FlySpeed.Value
        end
        bodyVelocity.Velocity = O1_1
        bodyGyro.CFrame = CurrentCamera.CFrame
    end)
end
TP_11 = {}
Be = nil
A9 = fns.fn1454
Cn = -0.3490658503988659
Ce = 1.3089969389957472
TP_24 = 1.0471975511965976
TP_12 = { uid = nil, cannon = nil, basePivot = nil, targets = {}, lastTargetAt = 0, enteredAt = 0 }
BX = fns.fn625
Bw = fns.fn139
AJ = fns.fn595
BY = fns.fn3
Bt = fns.fn570
A5 = fns.fn497
B8 = fns.fn1470
A1 = fns.fn382
AA = fns.fn1390
Cb = fns.fn1406
Bs = fns.fn157
CG = fns.fn743
A3 = fns.fn817
Window = Library:CreateWindow({
    Title = "Bee ReMasters",
    Footer = "Ouroboros Hub",
    Size = UDim2.fromOffset(900, 640),
    ShowCustomCursor = false,
    NotifySide = "Right"
})
local TP_30 = {
    Main = Window:AddTab("Main", "bug"),
    Trading = Window:AddTab("Trading", "arrow-right-left"),
    Player = Window:AddTab("Player", "user"),
    Settings = Window:AddTab("Settings", "settings")
}
TP_63 = fns.fn605
for k, v in TP_30 do
    TP_63(v)
end
TP_68 = TP_30.Main:AddLeftGroupbox("Auto Open Hives", "egg")
TP_68:AddDropdown("HiveList", {
    Values = TP_35,
    Default = "Basic Hive",
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Text = "Hives"
})
TP_68:AddLabel('Enter a number, or "max" to open the most your account can', true)
TP_68:AddInput("HiveAmount", { Text = "Hives Per Open", Default = "max", Placeholder = 'number or "max"' })
TP_68:AddSlider("HiveDelay", { Text = "Open Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
TP_68:AddToggle("HiveTeleport", { Text = "Teleport To Hive", Default = false })
TP_68:AddToggle("HiveNotify", { Text = "Notify On Failure", Default = false })
TP_68:AddToggle("AutoOpenHives", { Text = "Auto Open Hives", Default = false })
TP_68:AddToggle("AutoOpenBestHives", { Text = "Auto Open Best Hives", Default = false })
TP_68:AddToggle("HideHatchAnimation", { Text = "Hide Hatch Animation", Default = false, Callback = Bc })
TP_68 = TP_30.Main:AddLeftGroupbox("Auto Use Fruits", "apple")
TP_68:AddDropdown("FruitList", { Values = TP_57, Multi = true, AllowNull = true, Searchable = true, Text = "Fruits" })
TP_68:AddToggle("FruitKeepActive", { Text = "Only When Expired", Default = true })
TP_68:AddSlider("FruitRefreshBelow", { Text = "Refresh Below", Default = 5, Min = 0, Max = 120, Rounding = 0, Suffix = "s" })
TP_68:AddSlider("FruitDelay", { Text = "Check Delay", Default = 2, Min = 1, Max = 30, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("FruitNotify", { Text = "Notify On Use", Default = false })
TP_68:AddToggle("AutoUseFruits", { Text = "Auto Use Fruits", Default = false })
TP_68 = TP_30.Main:AddLeftGroupbox("Auto Use Pouches", "package-open")
TP_68:AddDropdown("PouchList", { Values = TP_7, Multi = true, AllowNull = true, Searchable = true, Text = "Pouches" })
TP_68:AddSlider("PouchDelay", { Text = "Open Delay", Default = 0.5, Min = 0.1, Max = 5, Rounding = 1, Suffix = "s" })
TP_68:AddSlider("PouchCheckDelay", { Text = "Check Delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("PouchNotify", { Text = "Notify On Open", Default = true })
TP_68:AddToggle("AutoUsePouches", { Text = "Auto Use Pouches", Default = false })
TP_68:AddButton({ Text = "Open Pouches Now", Func = onOpenPouchesNow })
TP_68 = TP_30.Main:AddLeftGroupbox("Auto Neon Pets", "sparkles")
TP_68:AddDropdown("NeonBeeList", { Values = TP_71, Multi = true, AllowNull = true, Searchable = true, Text = "Bees" })
TP_68:AddDropdown("NeonRarityList", { Values = TP_60, Multi = true, AllowNull = true, Text = "Rarities" })
TP_68:AddSlider("NeonKeep", { Text = "Keep Per Bee", Default = 0, Min = 0, Max = 100, Rounding = 0 })
TP_68:AddSlider("NeonMaxPerBee", { Text = "Max Crafts Per Bee", Default = 0, Min = 0, Max = 100, Rounding = 0 })
TP_68:AddSlider("NeonDelay", { Text = "Craft Delay", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
TP_68:AddSlider("NeonCheckDelay", { Text = "Check Delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("NeonBatch", { Text = "Craft All At Once", Default = true })
TP_68:AddToggle("NeonNotify", { Text = "Notify On Craft", Default = true })
TP_68:AddToggle("AutoNeonPets", { Text = "Auto Neon Pets", Default = false })
TP_68:AddButton({ Text = "Craft Neon Now", Func = onCraftNeonNow })
TP_68 = TP_30.Main:AddLeftGroupbox("Auto Rainbow Pets", "rainbow")
TP_68:AddDropdown("RainbowBeeList", { Values = TP_71, Multi = true, AllowNull = true, Searchable = true, Text = "Bees" })
TP_68:AddDropdown("RainbowRarityList", { Values = TP_60, Multi = true, AllowNull = true, Text = "Rarities" })
TP_68:AddSlider("RainbowKeep", { Text = "Keep Neon Per Bee", Default = 0, Min = 0, Max = 100, Rounding = 0 })
TP_68:AddSlider("RainbowMaxPerBee", { Text = "Max Crafts Per Bee", Default = 0, Min = 0, Max = 100, Rounding = 0 })
TP_68:AddSlider("RainbowDelay", { Text = "Craft Delay", Default = 1, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
TP_68:AddSlider("RainbowCheckDelay", { Text = "Check Delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("RainbowBatch", { Text = "Craft All At Once", Default = true })
TP_68:AddToggle("RainbowNotify", { Text = "Notify On Craft", Default = true })
TP_68:AddToggle("AutoRainbowPets", { Text = "Auto Rainbow Pets", Default = false })
TP_68:AddButton({
    Text = "Craft Rainbow Now",
    Func = function()
        AX(true)
    end
})
TP_68 = TP_30.Main:AddRightGroupbox("Fast Farm", "wheat")
TP_68:AddDropdown("PowerFarmArea", { Values = TP_46, Default = "Auto (Best)", Multi = false, Searchable = true, Text = "Field" })
TP_68:AddSlider("PowerFarmHits", { Text = "Hits", Default = 3, Min = 1, Max = 10, Rounding = 0 })
TP_68:AddSlider("PowerFarmSpeed", { Text = "Speed", Default = 0.03, Min = 0.01, Max = 0.5, Rounding = 2, Suffix = "s" })
TP_68:AddToggle("PowerAutoFarm", { Text = "Auto Farm", Default = false })
TP_68 = TP_30.Main:AddRightGroupbox("Tentacle Event", "crosshair")
TP_68:AddDropdown("TentacleCannon", { Values = AA(), Default = "Auto (Nearest)", Multi = false, Searchable = true, Text = "Cannon" })
TP_68:AddButton({
    Text = "Refresh Cannons",
    Func = function()
        Options.TentacleCannon:SetValues(AA())
    end
})
TP_68:AddSlider("TentacleShootDelay", { Text = "Shoot Delay", Default = 0.15, Min = 0.05, Max = 2, Rounding = 2, Suffix = "s" })
TP_68:AddToggle("AutoStartTentacle", { Text = "Auto Start Tentacle Fight", Default = false })
TP_68:AddToggle("AutoShootTentacles", { Text = "Auto Shoot Tentacles", Default = false })
TP_68 = TP_30.Main:AddRightGroupbox("Zones", "map-pin")
TP_68:AddSlider("ZoneDelay", { Text = "Check Delay", Default = 3, Min = 1, Max = 30, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("ZoneNotify", { Text = "Notify On Unlock", Default = true })
TP_68:AddToggle("AutoUnlockZones", { Text = "Auto Unlock Zones", Default = false })
TP_68:AddSlider("BestZoneDelay", { Text = "Best Zone Delay", Default = 0.3, Min = 0.1, Max = 10, Rounding = 1, Suffix = "s" })
TP_68:AddToggle("AutoGoBestZone", { Text = "Auto Go To Best Owned Zone", Default = false })
TP_68:AddButton({ Text = "Teleport To Secret Area", Func = onTeleportToSecretArea })
TP_68:AddButton({ Text = "Teleport To Summer Secret Area", Func = onTeleportToSummerSecretArea })
TP_68 = TP_30.Main:AddRightGroupbox("Bees", "bug")
TP_68:AddSlider("EquipDelay", { Text = "Equip Delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("AutoEquipBest", { Text = "Auto Equip Best Bees", Default = false })
TP_68 = TP_30.Main:AddRightGroupbox("Playtime Gifts", "gift")
TP_68:AddSlider("GiftDelay", { Text = "Check Delay", Default = 30, Min = 5, Max = 120, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("GiftNotify", { Text = "Notify On Claim", Default = true })
TP_68:AddToggle("AutoClaimGifts", { Text = "Auto Claim Playtime Gifts", Default = false })
TP_68:AddToggle("AutoOpenGiftItems", { Text = "Auto Open Gift Items", Default = false })
TP_68 = TP_30.Main:AddRightGroupbox("Auto Complete Quests", "scroll-text")
TP_68:AddDropdown("QuestBearList", { Values = Bh, Multi = true, AllowNull = true, Searchable = true, Text = "Bears" })
TP_68:AddSlider("QuestDelay", { Text = "Check Delay", Default = 5, Min = 1, Max = 60, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("QuestNotify", { Text = "Notify On Turn In", Default = true })
TP_68:AddToggle("AutoQuests", { Text = "Auto Complete Quests", Default = false })
TP_68 = TP_30.Main:AddRightGroupbox("Auto Rebirth", "repeat")
TP_68:AddSlider("RebirthDelay", { Text = "Check Delay", Default = 10, Min = 1, Max = 120, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("RebirthNotify", { Text = "Notify On Rebirth", Default = true })
TP_68:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false })
TP_68:AddButton({ Text = "Rebirth Now", Func = BJ })
TP_68 = TP_30.Trading:AddLeftGroupbox("Players", "users")
TP_68:AddDropdown("TradePlayer", { Values = BS(), AllowNull = true, Searchable = true, Text = "Player" })
TP_68:AddButton({
    Text = "Refresh Player List",
    Func = function()
        Options.TradePlayer:SetValues(BS())
    end
})
TP_68:AddButton({
    Text = "Send Trade Request",
    Func = function()
        A7(TP_9(), true)
    end
})
TP_68:AddSlider("TradeRequestDelay", { Text = "Request Delay", Default = 20, Min = 20, Max = 120, Rounding = 0, Suffix = "s" })
TP_68:AddToggle("TradeAutoRequest", { Text = "Keep Requesting Selected Player", Default = false })
TP_68 = TP_30.Trading:AddLeftGroupbox("Incoming Requests", "inbox")
TP_68:AddToggle("TradeAutoAccept", { Text = "Auto Accept Trades", Default = false })
TP_68:AddDropdown("TradeAcceptMode", {
    Values = { "Off", "Everyone", "Friends Only", "Selected Player", "User List" },
    Default = "Everyone",
    Text = "Accept From"
})
TP_68:AddInput("TradeUserList", { Text = "Allowed Usernames", Default = "", Placeholder = "name1, name2" })
TP_68:AddSlider("TradeAcceptDelay", { Text = "Response Delay", Default = 1, Min = 0, Max = 10, Rounding = 1, Suffix = "s" })
TP_68:AddToggle("TradeAutoDecline", { Text = "Auto Decline Other Requests", Default = false })
TP_68 = TP_30.Trading:AddLeftGroupbox("Bee Offer", "bug")
TP_68:AddDropdown("TradeBeeList", {
    Values = TP_71,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Text = "Bee Names"
})
TP_68:AddDropdown("TradeBeeRarityList", { Values = TP_60, Default = {}, Multi = true, AllowNull = true, Text = "Bee Rarities" })
TP_68:AddDropdown("TradeBeeVariants", {
    Values = { "Normal", "Glossy", "Neon", "Rainbow" },
    Default = {},
    Multi = true,
    AllowNull = true,
    Text = "Bee Variants"
})
TP_68:AddToggle("TradeOfferBees", { Text = "Add Matching Bees", Default = false })
TP_68 = TP_30.Trading:AddLeftGroupbox("Item Offer", "package")
TP_68:AddDropdown("TradeItemList", {
    Values = TP_38,
    Default = {},
    Multi = true,
    AllowNull = true,
    Searchable = true,
    Text = "Item Names"
})
TP_68:AddDropdown("TradeItemRarityList", { Values = TP_27, Default = {}, Multi = true, AllowNull = true, Text = "Item Rarities" })
TP_68:AddToggle("TradeOfferItems", { Text = "Add Matching Items", Default = false })
TP_68 = TP_30.Trading:AddRightGroupbox("Offer Limits", "shield-check")
TP_68:AddSlider("TradeKeepAmount", { Text = "Keep From Every Stack", Default = 1, Min = 0, Max = 100, Rounding = 0 })
TP_68:AddSlider("TradeMaxPerStack", { Text = "Maximum Per Stack", Default = 1, Min = 0, Max = 1000000, Rounding = 0 })
TP_68:AddSlider("TradeMaxStacks", { Text = "Maximum Item Stacks", Default = 9, Min = 1, Max = 50, Rounding = 0 })
TP_68:AddInput("TradeHoneyAmount", { Text = "Honey To Offer", Default = "0", Numeric = true })
TP_68:AddSlider("TradeOfferDelay", { Text = "Wait Before Building Offer", Default = 1, Min = 0, Max = 10, Rounding = 1, Suffix = "s" })
TP_68:AddSlider("TradeItemDelay", { Text = "Delay Between Items", Default = 0.2, Min = 0.1, Max = 3, Rounding = 1, Suffix = "s" })
TP_68:AddToggle("TradeIncludePaidItems", { Text = "Allow Paid Items", Default = false })
TP_68:AddToggle("TradeAutoBuildOffer", { Text = "Auto Build Offer", Default = false })
TP_68:AddButton({ Text = "Build Offer Now", Func = CO })
TP_68 = TP_30.Trading:AddRightGroupbox("Ready Rules", "lock-keyhole")
TP_68:AddToggle("TradeAutoReady", { Text = "Auto Ready Trades", Default = false })
TP_68:AddToggle("TradeRequireOtherOffer", { Text = "Require Items From Other Player", Default = true })
TP_68:AddSlider("TradeMinimumOtherStacks", { Text = "Minimum Other Item Stacks", Default = 1, Min = 0, Max = 50, Rounding = 0 })
TP_68:AddSlider("TradeMinimumOtherAmount", { Text = "Minimum Other Total Items", Default = 1, Min = 0, Max = 1000, Rounding = 0 })
TP_68:AddInput("TradeMinimumOtherHoney", { Text = "Minimum Other Honey", Default = "0", Numeric = true })
TP_68:AddSlider("TradeReadyDelay", { Text = "Wait Before Ready", Default = 2, Min = 0, Max = 15, Rounding = 1, Suffix = "s" })
TP_68:AddToggle("TradeCancelChangedOffer", { Text = "Cancel If Ready Offer Changes", Default = true })
TP_68 = TP_30.Trading:AddRightGroupbox("Trade Status", "activity")
Label = TP_68:AddLabel("Status: Waiting for a trade", true)
Label2 = TP_68:AddLabel("Requests: 0 | Completed: 0 | Failed: 0", true)
TP_68:AddToggle("TradeNotify", { Text = "Trade Notifications", Default = true })
TP_68:AddButton({
    Text = "Cancel Current Trade",
    Func = function()
        Cg("Trade canceled")
    end
})
TP_68 = TP_30.Player:AddLeftGroupbox("Movement", "footprints")
TP_68:AddSlider("WalkSpeed", { Text = "Walkspeed", Default = 16, Min = 16, Max = 250, Rounding = 0 })
TP_68:AddToggle("WalkSpeedEnabled", { Text = "Walkspeed", Default = false, Callback = Br })
TP_68:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 500, Rounding = 0 })
TP_68:AddToggle("Fly", { Text = "Fly", Default = false, Callback = onFly })
TP_68:AddToggle("Noclip", { Text = "Noclip", Default = false, Callback = Cs })
TP_68:AddToggle("InfiniteJump", { Text = "Infinite Jump", Default = false, Callback = Bb })
TP_68 = TP_30.Settings:AddLeftGroupbox("Menu", "menu")
TP_68:AddLabel("UI Keybind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "UI Keybind" })
BR = tick()
BL = tick()
BH = {}
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer.Idled)) do
        local RC = v
        pcall(function()
            RC:Disable()
            table.insert(BH, RC)
        end)
    end
end)
TP_26 = function()
    if not workspace.CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    BL = tick()
end
connection7 = UserInputService.InputBegan:Connect(function()
    BR = tick()
end)
connection8 = UserInputService.InputChanged:Connect(function(r2)
    local UserInputType = r2.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        BR = tick()
    end
end)
TP_68:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(function()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles.AntiAfk.Value then
            local RI = tick() - BR
            local RJ = tick() - BL
            if RI >= 300 and RJ >= 60 then
                pcall(TP_26)
            else
                if RI < 300 and RJ >= 300 then
                    pcall(TP_26)
                end
            end
        end
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        task.wait(600)
        local RM = AS()
        if RM then
            RM:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end
end)
TP_68:AddToggle("AntiRejoin", { Text = "Anti Rejoin", Default = true })
TP_57 = hookmetamethod
local Bg = {
    Teleport = true,
    TeleportAsync = true,
    TeleportPartyAsync = true,
    TeleportToPlaceInstance = true,
    TeleportToPrivateServer = true,
    TeleportToSpawnByName = true
}
if TP_57 then
    TP_57 = getnamecallmethod
end
if TP_57 then
    pcall(function()
        local sl
        sl = hookmetamethod(game, "__namecall", function(sn, ...)
            local RP = getnamecallmethod()
            if not Library.Unloaded and Toggles.AntiRejoin.Value then
                if sn == TeleportService and Bg[RP] then
                    return nil
                end
                local RO = false
                if RP == "FireServer" then
                    pcall(function()
                        RO = sn:IsDescendantOf(ReplicatedStorage)
                    end)
                end
                if RP == "FireServer" and RO then
                    local RP_1 = select(1, ...)
                    if sn.Name == "IdleTeleport" or RP_1 == "IdleTeleport" then
                        return nil
                    end
                    return sl(sn, ...)
                end
                return sl(sn, ...)
            end
            return sl(sn, ...)
        end)
    end)
end
if hookfunction then
    for k in pairs(Bg) do
        local DV = k
        pcall(function()
            local RY
            RY = TeleportService[DV]
            local RZ = newcclosure
            local function R_(...)
                if not Library.Unloaded and Toggles.AntiRejoin.Value then
                    return nil
                end
                return RY(...)
            end
            if RZ then
                RZ = newcclosure(R_)
            end
            local R0 = RZ or R_
            hookfunction(RY, R0)
        end)
    end
end
TP_68:AddToggle("AutoHideUI", {
    Text = "Auto Hide UI",
    Default = false,
    Callback = function(sT)
        if sT then
            Window:Toggle(false)
        end
    end
})
TP_68:AddToggle("FpsBooster", { Text = "FPS Booster", Default = false, Callback = A9 })
TP_68:AddButton("Unload", function()
    Library:Unload()
end)
Library.ToggleKeybind = Options.MenuKeybind
connection9 = LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    if Library.Unloaded then
        return
    end
    if Toggles.Fly.Value then
        onFly(true)
    end
    if TP_12.uid then
        A1()
    end
end)
Library:OnUnload(function()
    Bc(false)
    A9(false)
    Br(false)
    Cs(false)
    Bb(false)
    AC()
    A1()
    connection9:Disconnect()
    connection7:Disconnect()
    connection8:Disconnect()
    for i, v in ipairs(BH) do
        local Sa = v
        pcall(function()
            Sa:Enable()
        end)
    end
    table.clear(BH)
    if connection10 then
        connection10:Disconnect()
        connection10 = nil
    end
    if connection11 then
        connection11:Disconnect()
        connection11 = nil
    end
    print("Bee ReMasters unloaded")
end)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Mint")
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })
SaveManager:SetFolder("OuroborosHub/BeeReMasters")
SaveManager:BuildConfigSection(TP_30.Settings)
ThemeManager:ApplyToTab(TP_30.Settings)
ThemeManager:LoadDefault()
SaveManager:LoadAutoloadConfig()
onPlayerAdded = function()
    if not Library.Unloaded and Options.TradePlayer then
        Options.TradePlayer:SetValues(BS())
    end
end
connection10 = Ay.PlayerAdded:Connect(onPlayerAdded)
connection11 = Ay.PlayerRemoving:Connect(function(tm)
    if Cq.partner == tm then
        Cq.partner = nil
    end
    task.defer(onPlayerAdded)
end)
Network.OnPacket("Trade Request", function(tp)
    if Library.Unloaded or not tp then
        return
    end
    local delay = task.delay
    local Sl_1 = Options.TradeAcceptDelay.Value or 1
    delay(Sl_1, function()
        if Library.Unloaded or not tp.Parent or Variables.Trading or Variables.OpeningHive > 0 then
            return
        end
        local Sh_1 = BU(tp)
        if Sh_1 and Toggles.TradeAutoAccept.Value then
            Cq.partner = tp
            Network.Send("Trade Response", tp, true)
            if Toggles.TradeNotify.Value then
                Library:Notify("Accepted trade from " .. tp.Name)
            end
        else
            local Si_1 = not Sh_1
            if Si_1 ~= false then
                Si_1 = Toggles.TradeAutoDecline.Value
            end
            if Si_1 then
                Network.Send("Trade Response", tp, false)
            end
        end
    end)
end)
Network.OnPacket("Trade Responded", function(tI, tJ)
    if Library.Unloaded then
        return
    end
    if tJ then
        Cq.partner = tI
        TP_6()
        Cq.startedAt = os.clock()
    end
end)
Network.OnPacket("Trade Started", function(tN, tO)
    if Library.Unloaded then
        return
    end
    if tN == LocalPlayer then
        Cq.partner = tO
    elseif tO == LocalPlayer then
        Cq.partner = tN
    end
    TP_6()
    Cq.startedAt = os.clock()
end)
Network.OnPacket("Other Offer Updated", function(tT)
    local Ss = Library.Unloaded or type(tT) ~= "table"
    if Ss then
        return
    end
    local Ss_1 = Bf(tT)
    local St = Cq.selfReady and Cq.lastOtherOffer ~= "" and Ss_1 ~= Cq.lastOtherOffer
    Cq.otherItems = table.clone(tT)
    Cq.lastOtherOffer = Ss_1
    if St and Toggles.TradeCancelChangedOffer.Value then
        Cg("Trade canceled because the other offer changed")
    end
end)
Network.OnPacket("Modify Honey", function(t3, t4)
    if Library.Unloaded or t3 == LocalPlayer.UserId then
        return
    end
    local Sw_1 = tonumber(tostring(t4):gsub(",", "")) or 0
    Cq.otherHoney = Sw_1
end)
Network.OnPacket("Trade Ready Sync", function(t9, ua)
    if Library.Unloaded then
        return
    end
    Cq.selfReady = t9 == true
    Cq.otherReady = ua == true
    if not Cq.selfReady then
        Cq.readyRequestAt = 0
    end
end)
Network.OnPacket("Trade Complete", function()
    if Library.Unloaded then
        return
    end
    Cq.tradesCompleted = Cq.tradesCompleted + 1
    TP_6()
    Cq.partner = nil
end)
Network.OnPacket("Trade Failed", function()
    if Library.Unloaded then
        return
    end
    Cq.tradesFailed = Cq.tradesFailed + 1
    TP_6()
    Cq.partner = nil
end)
Network.OnPacket("Close Trade", function()
    if Library.Unloaded then
        return
    end
    TP_6()
    Cq.partner = nil
end)
A8 = function(un)
    for k, v in pairs(TP_12.targets) do
        if v == un then
            TP_12.targets[k] = nil
            return
        end
    end
end
Network.OnPacket("Target Spawned", function(ur, us)
    local SP = Library.Unloaded or typeof(ur) ~= "string" or typeof(us) ~= "string"
    if SP then
        return
    end
    TP_12.targets[us] = ur
    TP_12.lastTargetAt = os.clock()
end)
Network.OnPacket("Target Despawned", function(uw)
    if typeof(uw) == "string" then
        A8(uw)
    end
end)
Network.OnPacket("Target Hit Confirmed", function(uy)
    if typeof(uy) == "string" then
        A8(uy)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Variables.Trading then
            if Cq.startedAt == 0 then
                Cq.startedAt = os.clock()
            end
            local ST = Toggles.TradeAutoBuildOffer.Value and not Cq.offerBuilt
            if ST then
                local SU_1 = os.clock() - Cq.startedAt
                ST = SU_1 >= (Options.TradeOfferDelay.Value or 1)
            end
            if ST then
                CO()
            end
            local ST_1 = Toggles.TradeAutoReady.Value and Cq.offerBuilt and not Cq.selfReady and Cq.readyRequestAt == 0 and AR()
            if ST_1 then
                local SU_2 = os.clock() - Cq.offerBuiltAt
                ST_1 = SU_2 >= (Options.TradeReadyDelay.Value or 2)
            end
            if ST_1 then
                Cq.readyRequestAt = os.clock()
                Network.Send("Trade Ready")
            end
        elseif Cq.startedAt ~= 0 then
            TP_6()
        end
        if Label then
            Label:SetText(TP_25())
        end
        if Label2 then
            Label2:SetText(("Requests: %d | Completed: %d | Failed: %d | Offered: %d"):format(Cq.requestsSent, Cq.tradesCompleted, Cq.tradesFailed, Cq.itemsOffered))
        end
        task.wait(0.25)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.TradeAutoRequest.Value and not Variables.Trading then
            A7(TP_9(), false)
        end
        local wait = task.wait
        local SY = Options.TradeRequestDelay.Value or 20
        wait(SY)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoOpenHives.Value then
            Bl()
        end
        if Toggles.AutoOpenBestHives.Value then
            AG()
        end
        local S0 = Options.HiveDelay.Value or 0.5
        task.wait(S0)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        Bu()
        task.wait(0.2)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoUnlockZones.Value then
            TP_3()
        end
        local S7 = Options.ZoneDelay.Value or 3
        task.wait(S7)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoGoBestZone.Value then
            AW()
        end
        local Ta = Options.BestZoneDelay.Value or 0.3
        task.wait(Ta)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoUsePouches.Value then
            onOpenPouchesNow()
        end
        local Td = Options.PouchCheckDelay.Value or 5
        task.wait(Td)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoRebirth.Value then
            BJ()
        end
        local Tg = Options.RebirthDelay.Value or 10
        task.wait(Tg)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.PowerAutoFarm.Value then
            B5()
        end
        local Tj = Options.PowerFarmSpeed.Value or 0.03
        task.wait(Tj)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoStartTentacle.Value then
            local Tl_1 = TP_12.uid and os.clock() - TP_12.lastTargetAt > 15 and os.clock() - TP_12.enteredAt > 15
            if Tl_1 then
                pcall(A1)
                task.wait(0.5)
            end
            pcall(Bs)
        else
            if not Toggles.AutoShootTentacles.Value and TP_12.uid then
                pcall(A1)
            end
        end
        task.wait(1)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoShootTentacles.Value then
            pcall(A3)
        end
        local To = Options.TentacleShootDelay.Value or 0.15
        task.wait(To)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoNeonPets.Value then
            onCraftNeonNow()
        end
        local Tr = Options.NeonCheckDelay.Value or 5
        task.wait(Tr)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoRainbowPets.Value then
            AX(false)
        end
        local Tu = Options.RainbowCheckDelay.Value or 5
        task.wait(Tu)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoEquipBest.Value then
            CF()
        end
        local Tx = Options.EquipDelay.Value or 5
        task.wait(Tx)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoUseFruits.Value then
            A2()
        end
        local TA = Options.FruitDelay.Value or 2
        task.wait(TA)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoClaimGifts.Value then
            AH()
        end
        if Toggles.AutoOpenGiftItems.Value then
            BF()
        end
        local TD = Options.GiftDelay.Value or 30
        task.wait(TD)
    end
end)
task.spawn(function()
    while not Library.Unloaded do
        if Toggles.AutoQuests.Value then
            CP()
        end
        local TG = Options.QuestDelay.Value or 5
        task.wait(TG)
    end
end)
Library:Notify("Bee ReMasters loaded")
