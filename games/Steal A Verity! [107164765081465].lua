local fns = {}
local TB_1, TB_3, TB_5, TB_6, TB_7, TB_8, TB_9, folder, TB_12, TB_13, TB_14, TB_15, TB_17, TB_18, TB_22, TB_24, TB_33, TB_34, TB_38
TB_3 = nil
TB_5 = nil
TB_6 = nil
TB_8 = nil
TB_9 = nil
folder = nil
TB_12 = nil
TB_13 = nil
TB_14 = nil
TB_15 = nil
TB_17 = nil
TB_18 = nil
local Cj
local Bj
local B0
local A0
local AI
local Bp
local Cp
local B6
local A6
local BO
local AO
local Bv
local Cc
local Cv
local BU
local CB
local AU
local BB
local Bi
local B_
local A_
local Co
local Bo
local AH
local connection3
local BN
local AN
local Bu
local Cu
local Bb
local BT
local CA
local BA
local AT
local Ch
local Bh
local BZ
local AZ
local BG
local Cn
local connection4
local Bn
local A4
local Ct
local AM
local Bt
local Ca
local Ba
local Cz
local AS
local Bz
local Cg
local Bg
local CF
local AY
local connection
local AF
local Cm
local Bm
local B3
local A3
local BL
local Cs
local Bs
local B9
local AL
local A9
local CoreGui
local AR
local LocalPlayer
local Cf
local Cy
local Bf
local AX
local AE
local connection2
local B2
local Cl
local BK
local AK
local Cr
local B8
local Br
local A8
local BQ
local Cx
local AQ
local Bx
local Be
local BW
local CD
local AW
local Ck
local BD
local Bk
local B1
function fns.onOnClientEvent3(g9)
    Cr.Area = tostring(g9)
end
function fns.fn12()
    connection3:Disconnect()
end
function fns.fn30(hM, hN)
    local Jz = {}
    if type(hM) == "table" then
        for k, v in pairs(hM) do
            local JA
            local JB = v == true and type(k) == "string"
            if JB then
                JA = k
            elseif type(v) == "string" then
                JA = v
            end
            if JA then
                local JB_1 = hN and hN(JA)
                local JC = JB_1 or JA
                Jz[JC] = true
            end
        end
    end
    return Jz
end
function fns.fn52()
    for i, v in ipairs({ Cs, Cm, TB_14, B6, B_, TB_17, BO, BK, BG }) do
        Cg(v)
    end
end
function fns.fn67()
    if #A3 >= #A9() then
        return
    end
    if os.clock() - A4 < 3 then
        return
    end
    A4 = os.clock()
    Cz()
end
function fns.fn98()
    Bz = false
end
function fns.fn99()
    connection4:Disconnect()
end
function fns.fn109()
    local Fi = {}
    for i, v in ipairs(BL()) do
        local Fk = v.DisplayName or v.Id
        table.insert(Fi, tostring(Fk))
    end
    return Fi
end
function fns.fn139()
    local J8 = Bb()
    if J8 then
        return J8
    end
    return B2()
end
function fns.fn158()
    if folder and folder.Parent then
        return folder
    end
    folder = Instance.new("Folder")
    folder.Name = "OuroborosVerityBoxEsp"
    folder.Parent = Cp()
    return folder
end
function fns.fn178()
    local BoxRuntime = CA:FindFirstChild("BoxRuntime")
    local Is = {}
    if not BoxRuntime then
        return Is
    end
    for i, child in ipairs(BoxRuntime:GetChildren()) do
        local Core = child:FindFirstChild("Core")
        local It = Core and Core:IsA("BasePart") and Core:GetAttribute("PromptOwnerUserId") == nil
        if It then
            local Steal = Core:FindFirstChild("Steal")
            local Iu = Steal and Steal:IsA("ProximityPrompt")
            if Iu then
                local Iu_1 = Bt(child)
                table.insert(Is, {
                    model = child,
                    core = Core,
                    prompt = Steal,
                    uid = Core:GetAttribute("BoxUid"),
                    boxId = Iu_1,
                    rarity = A0(Iu_1),
                    position = Core.Position,
                    areaId = CB(Core.Position)
                })
            end
        end
    end
    return Is
end
function fns.fn208()
    return not TB_15.Unloaded
end
function fns.fn213()
    local BoxRuntime = CA:FindFirstChild("BoxRuntime")
    if not BoxRuntime then
        return 0
    end
    local Kj = 0
    for i, child in ipairs(BoxRuntime:GetChildren()) do
        local Core = child:FindFirstChild("Core")
        local Kk = Core and Core:GetAttribute("PromptOwnerUserId") == nil and Core:FindFirstChild("Steal")
        if Kk then
            Kj += 1
        end
    end
    return Kj
end
function fns.fn229()
    local FI_1
    local PlayerScripts = LocalPlayer:FindFirstChild("PlayerScripts")
    local FH = PlayerScripts and PlayerScripts:FindFirstChild("Client")
    local FH_2
    local FG_1 = FH
    if FH then
        FH = FG_1:FindFirstChild("ProfileView")
    end
    local FG_2 = FH
    local FH_1 = not FG_2 or not FG_2:IsA("ModuleScript")
    if FH_1 then
        return nil
    end
    FH_2, FI_1 = pcall(require, FG_2)
    local FG_3 = FH_2 and type(FI_1) == "table" and AX(FI_1.Get)
    if FG_3 then
        return FI_1
    end
    return nil
end
function fns.fn232(eV)
    local Hn_1
    local id
    local Hj_1
    local Hi_1
    AY()
    id, Hi_1, Hj_1 = nil, nil, nil
    for i, v in ipairs(A3) do
        local Hl = math.abs(eV.X - v.center.X)
        local Hm = math.abs(eV.Z - v.center.Z)
        if v.halfX then
            Hn_1 = Vector2.new(math.max(Hl - v.halfX, 0), math.max(Hm - v.halfZ, 0)).Magnitude
        else
            Hn_1 = Vector2.new(Hl, Hm).Magnitude
        end
        local Magnitude = Vector2.new(Hl, Hm).Magnitude
        local Hl_1 = not Hi_1
        local Hy = if Hl_1 then 1 else 0
        local Hw = 2073 * Hy + 1006 * (1 - Hy)
        local Hx = 2695 * Hy + 1915 * (1 - Hy)
        if not ((Hw * 1042 + Hx * 1594 + Hw * Hx) % 16777213 == 12042631) then
            Hl_1 = Hn_1 < Hi_1
        end
        if not Hl_1 then
            Hl_1 = Hn_1 == Hi_1 and Magnitude < Hj_1
        end
        if Hl_1 then
            Hi_1 = Hn_1
            Hj_1 = Magnitude
            id = v.id
        end
    end
    return id
end
function fns.fn236()
    local FM_1
    local FL_1
    local FK = BD()
    if not FK then
        return nil
    end
    FL_1, FM_1 = pcall(FK.Get)
    local FK_1 = FL_1 and type(FM_1) == "table"
    if FK_1 then
        return FM_1
    end
    return nil
end
function fns.fn248(b3)
    local FA = TB_8()
    local FB = FA and FA:FindFirstChild(b3)
    local FA_1 = FB
    if FB then
        FB = FA_1:IsA("RemoteEvent")
    end
    if FB then
        return FA_1
    end
    return nil
end
function fns.fn260(fp)
    local HP = Bf(fp)
    if HP then
        return HP
    end
    local HP_1 = AH()
    local HQ = AO()
    if not HP_1 or not HQ then
        return nil
    end
    local CFrame2 = HP_1.CFrame
    local Anchored = HP_1.Anchored
    HP_1.Anchored = true
    local HT = Vector3.new(HQ.center.X, HQ.center.Y + 8, HQ.center.Z)
    local HU
    local HQ_1 = 0
    local H1 = 1
    local H_ = B8
    while H1 <= H_ do
        if not AM() then
            break
        end
        HT = HT + Vector3.new(Cf, 0, 0)
        HP_1.CFrame = CFrame.new(HT)
        task.wait(0.4)
        local HV = #A3
        A4 = 0
        Cz()
        HU = Bf(fp)
        if HU then
            break
        elseif #A3 > HV then
            HQ_1 = 0
            H1 += 1
        else
            HQ_1 += 1
            if HQ_1 >= 6 then
                break
            end
            H1 += 1
        end
    end
    HP_1.Anchored = Anchored
    if not HU then
        HP_1.CFrame = CFrame2
    end
    return HU
end
function fns.fn284(bl)
    if type(bl) ~= "string" then
        return nil
    end
    return A0(AI[bl])
end
function fns.fn292()
    Cj("ManagePets", "EQUIP_BEST")
end
function fns.fn312()
    local rarities = BO.rarities
    local Mf = Bm(rarities) == 0
    local Mm = if Mf then 1 else 0
    local Mk = 2341 * Mm + 234 * (1 - Mm)
    local Ml = 967 * Mm + 1094 * (1 - Mm)
    if not ((Mk * 1231 + Ml * 1017 + Mk * Ml) % 16777213 == 6128957) then
        Mf = Cr.Carrying
    end
    if Mf then
        return
    end
    if BO.unequip then
        local Mf_1 = 0
        for i, v in ipairs(AL()) do
            local Mg_1 = Cv(v.verityId)
            if Mg_1 and rarities[Mg_1] then
                Cj("ManagePets", "UNEQUIP", v.uid)
                Mf_1 += 1
                task.wait(0.2)
            end
        end
        if Mf_1 > 0 then
            task.wait(0.5)
        end
    end
    local Mf_2 = {}
    for i, v in ipairs(Bx("PetUid")) do
        local Mg_2 = Cv(v:GetAttribute("VerityId"))
        if Mg_2 and rarities[Mg_2] then
            table.insert(Mf_2, v:GetAttribute("PetUid"))
        end
    end
    if #Mf_2 == 0 then
        return
    end
    local Me_1 = AZ()
    if not Me_1 then
        Ck("Sell pad not found")
        return
    end
    if not Bv() then
        return
    end
    local Mg_3 = #Mf_2
    local Mi = #Mf_2 == 1 and "" or "s"
    Ck("Selling " .. Mg_3 .. " pet" .. Mi)
    TB_9(Me_1.Position + Vector3.new(0, 4, 0), 0.9)
    local Me_2 = {}
    for i, v in ipairs(Mf_2) do
        table.insert(Me_2, v)
        if #Me_2 >= 100 then
            Cj("SellPets", Me_2)
            Me_2 = {}
            task.wait(0.3)
        end
    end
    if #Me_2 > 0 then
        Cj("SellPets", Me_2)
    end
    task.wait(0.4)
    Bo()
    Cr.Sold = Cr.Sold + #Mf_2
end
function fns.onOnClientEvent2(g4)
    Cr.LastError = tostring(g4)
end
function fns.fn326()
    local DI = BT("AreaConfig")
    local DJ = DI
    local DK = {}
    if DJ then
        DJ = type(DI.Definitions) == "table"
    end
    if DJ then
        for i, v in ipairs(DI.Definitions) do
            if v.IsStealingArea then
                table.insert(DK, v)
            end
        end
    end
    return DK
end
function fns.fn327()
    return AF:FindFirstChild("Remotes")
end
function fns.fn330(cz)
    local FR = cz and tonumber(cz.ServerUnixTime)
    if FR then
        return FR
    end
    return os.time()
end
function fns.onOnClientEvent(gZ)
    Cr.Carrying = type(gZ) == "table"
    local Jm = type(gZ) == "table"
    if Jm then
        local Jn_1 = gZ.BoxId or ""
        Jm = tostring(Jn_1)
    end
    local Jn_2 = Jm or ""
    Cr.CarryBoxId = Jn_2
end
function fns.fn355(bf)
    local EE = bf and AT[bf] or nil
    local ED_1 = EE
    if EE then
        EE = ED_1.RarityId
    end
    return EE or nil
end
function fns.fn406()
    table.clear(A3)
    local Areas = CA:FindFirstChild("Areas")
    if not Areas then
        return
    end
    for i, v in ipairs(A9()) do
        local G1 = Areas:FindFirstChild(tostring(v.Folder))
        local G1_1
        if G1 then
            local G2 = G1:FindFirstChild(tostring(v.FloorPart))
            local G3 = G2 and G2:IsA("BasePart")
            local G3_2
            if G3 then
                local G3_1 = { id = v.Id, center = G2.Position, halfX = G2.Size.X * 0.5, halfZ = G2.Size.Z * 0.5 }
                table.insert(A3, G3_1)
                AW[v.Id] = { center = G3_1.center, halfX = G3_1.halfX, halfZ = G3_1.halfZ }
            else
                local G2_1 = G1:FindFirstChild(tostring(v.BoxesFolder))
                G3_2, G1_1 = Vector3.zero, 0
                if G2_1 then
                    for i, child in ipairs(G2_1:GetChildren()) do
                        if child:IsA("BasePart") then
                            G3_2 = G3_2 + child.Position
                            G1_1 += 1
                        end
                    end
                end
                if G1_1 > 0 then
                    local G2_2 = { id = v.Id, center = G3_2 / G1_1 }
                    table.insert(A3, G2_2)
                    AW[v.Id] = { center = G2_2.center }
                elseif AW[v.Id] then
                    local G1_2 = AW[v.Id]
                    table.insert(A3, { id = v.Id, center = G1_2.center, halfX = G1_2.halfX, halfZ = G1_2.halfZ })
                end
            end
        end
    end
end
function fns.fn416()
    local Gs = Bg()
    local Gt = Gs and Ct(Gs, "PetBounds")
    local Gs_1 = Gt or nil
    if Gs_1 then
        BQ.cframe = Gs_1.CFrame
        BQ.size = Gs_1.Size
        BQ.center = Gs_1.Position
        getgenv()[BW] = { cframe = Gs_1.CFrame, size = Gs_1.Size }
    end
    return Gs_1
end
function fns.fn417()
    if Bz then
        return false
    end
    Bz = true
    return true
end
function fns.fn439()
    local Jg = BT("SellConfig")
    local Jg_1 = Jg and Jg.PAD_NAME or "SellShopPad"
    return Br("Sell Shop", Jg_1)
end
function fns.fn449()
    local LR = AS()
    local LS = not LR or type(LR.Planted) ~= "table"
    if LS then
        return
    end
    local LS_1 = Cl(LR)
    local LT = 0
    for k, v in pairs(LR.Planted) do
        local LR_1 = type(v) == "table" and type(v.Uid) == "string"
        if LR_1 then
            local LR_2 = tonumber(v.UnboxAt) or math.huge
            if LR_2 <= LS_1 then
                Cj("ManageBoxes", "OPEN", v.Uid)
                LT += 1
                task.wait(0.25)
            end
        end
    end
    if LT > 0 then
        Cr.Opened = Cr.Opened + LT
        local LS_2 = LT == 1 and "" or "es"
        Ck("Opened " .. LT .. " box" .. LS_2)
    end
end
function fns.fn454(fO)
    local Ib = Cu(fO)
    if not Ib then
        return false
    end
    local Ic = Bn()
    local Id = tonumber(Ib.RequiredSpeed) or 0
    return Ic >= Id
end
function fns.onOnClientEvent4(he)
    if typeof(he) == "Instance" then
        Cr.EquippedTool = he.Name
    elseif type(he) == "string" then
        Cr.EquippedTool = he
    else
        Cr.EquippedTool = ""
    end
end
function fns.fn481()
    local E0 = {}
    for i, v in ipairs(A9()) do
        local E2 = v.DisplayName or v.Id
        table.insert(E0, tostring(E2))
    end
    return E0
end
function fns.fn496()
    local Nt_1
    local Ns_1
    Ns_1, Nt_1 = pcall(function()
        if AX(gethui) then
            return gethui()
        end
        return CoreGui
    end)
    local Nu = Ns_1 and typeof(Nt_1) == "Instance"
    return Nu and Nt_1 or CoreGui
end
function fns.fn534()
    local F1 = AS()
    local F2 = F1 and tonumber(F1.Speed)
    if F2 then
        return F2
    end
    local leaderstats = LocalPlayer:FindFirstChild("leaderstats")
    local F2_1 = leaderstats and leaderstats:FindFirstChild("Speed")
    if F2_1 then
        local F2_2 = tonumber(F2_1.Value) or BN(F2_1.Value)
        return F2_2 or 0
    end
    return 0
end
function fns.fn536()
    return BT("PlotBounds")
end
function fns.fn554(dQ, dR)
    local GA_1
    local Gy = Co()
    local Gz = Gy and AX(Gy.Contains)
    local Gz_1
    if Gz then
        Gz_1, GA_1 = pcall(Gy.Contains, dQ, dR)
        if Gz_1 then
            return GA_1 == true
        end
        local Gy_1 = dQ.CFrame:PointToObjectSpace(dR)
        local Gz_2 = math.abs(Gy_1.X) <= dQ.Size.X * 0.5 and math.abs(Gy_1.Z) <= dQ.Size.Z * 0.5
        return Gz_2
    end
    local Gy_2 = dQ.CFrame:PointToObjectSpace(dR)
    local Gz_3 = math.abs(Gy_2.X) <= dQ.Size.X * 0.5 and math.abs(Gy_2.Z) <= dQ.Size.Z * 0.5
    return Gz_3
end
function fns.fn593(om)
    if om then
        Bi(BO, Bs)
    else
        Cg(BO)
    end
end
function fns.fn595()
    connection:Disconnect()
end
function fns.fn598(nC)
    if nC then
        Bi(Cs, AN)
    else
        Cg(Cs)
        Ck("Idle")
    end
end
function fns.fn631(ox)
    BO.unequip = ox == true
end
function fns.fn632()
    local Or = TB_3()
    if not Or then
        Ck("Base not found")
        return false
    end
    TB_9(Or, 0.4)
    local Os = Bb()
    if Os and (Os - Or).Magnitude > 4 then
        TB_9(Os)
    end
    return true
end
function fns.fn645(nX)
    if nX then
        Bi(Cm, Cn)
    else
        Cg(Cm)
    end
end
function fns.fn651(oz)
    local On = tonumber(oz) or 8
    BO.interval = math.max(On, 1)
end
function fns.worker()
    while true do
        local JT = AM() and not BQ.center
        if JT then
            BA()
            task.wait(1)
            continue
        end
        break
    end
end
function fns.fn675(fa)
    AY()
    for i, v in ipairs(A3) do
        if v.id == fa then
            return v.center + Vector3.new(0, 6, 0)
        end
    end
    return nil
end
function fns.fn681(n1)
    if n1 then
        Bi(TB_14, Cc)
    else
        Cg(TB_14)
    end
end
function fns.fn683()
    local EM = {}
    for i, v in ipairs(TB_6()) do
        table.insert(EM, B3(v.Id))
    end
    return EM
end
function fns.fn718()
    local L8 = Bg()
    local L9 = L8 and Ct(L8, "TreadmillLocation")
    if not L9 or Cr.Carrying then
        return
    end
    if not Bv() then
        return
    end
    Cr.LastError = ""
    TB_9(L9.Position + Vector3.new(0, 4, 0), 0.5)
    Cj("UpgradeTreadmill")
    task.wait(0.5)
    Bo()
    if Cr.LastError == "" then
        Ck("Treadmill upgraded")
    end
end
function fns.fn744(gg)
    local IC = {}
    local Backpack = LocalPlayer:FindFirstChild("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local ID_1 = child:IsA("Tool") and child:GetAttribute(gg)
            if ID_1 then
                table.insert(IC, child)
            end
        end
    end
    local Character = LocalPlayer.Character
    if Character then
        for i, child in ipairs(Character:GetChildren()) do
            local ID_3 = child:IsA("Tool") and child:GetAttribute(gg)
            if ID_3 then
                table.insert(IC, child)
            end
        end
    end
    return IC
end
function fns.fn756(fK)
    for i, v in ipairs(A9()) do
        if v.Id == fK then
            return v
        end
    end
    return nil
end
function fns.fn803(X)
    return type(X) == "function"
end
function fns.fn810()
    gethui = Bp
end
function fns.fn811(hZ, h_)
    local JQ = os.clock() + h_
    while true do
        local JR = AM() and os.clock() < JQ
        if not JR then
            return false
        end
        if hZ() then
            break
        end
        task.wait()
    end
    return true
end
function fns.fn816()
    local MD = AS()
    if not MD then
        return
    end
    local ME = type(MD.OwnedTrails) == "table" and MD.OwnedTrails
    local MF = {}
    local MF_6
    local MG = ME
    local MP = if MG then 1 else 0
    local MN = 1013 * MP + 1 * (1 - MP)
    local MO = 2945 * MP + 2786 * (1 - MP)
    if not ((MN * 142 + MO * 2186 + MN * MO) % 16777213 == 9564901) then
        MG = MF
    end
    local ME_1 = MG
    local MF_1 = tonumber(MD.Cash) or 0
    local trails = BK.trails
    local MH = Bm(trails) > 0
    local Id
    local MI
    for i, v in ipairs(BL()) do
        local MJ_1 = tonumber(v.Price) or math.huge
        local MK = not MH
        if not MK then
            MK = trails[v.Id] == true
        end
        if MK then
            MK = not ME_1[v.Id]
        end
        if MK then
            MK = MJ_1 <= MF_1
        end
        if MK then
            local MJ_2 = not MI
            if not MJ_2 then
                local MK_1 = tonumber(MI.Price) or 0
                MJ_2 = MJ_1 > MK_1
            end
            if MJ_2 then
                MI = v
            end
        end
    end
    if MI and not Cr.Carrying then
        local MF_3 = TB_18()
        if not MF_3 then
            Ck("Trail pad not found")
            return
        end
        local MY = if not Bv() then 1 else 0
        if MY == 1 then
            return
        end
        local MG_2 = MI.DisplayName
        local MP_1 = if MG_2 then 1 else 0
        local MN_1 = 2263 * MP_1 + 3675 * (1 - MP_1)
        local MO_1 = 1549 * MP_1 + 1785 * (1 - MP_1)
        if not ((MN_1 * 3156 + MO_1 * 692 + MN_1 * MO_1) % 16777213 == 11719323) then
            MG_2 = MI.Id
        end
        Ck("Buying " .. tostring(MG_2))
        TB_9(MF_3.Position + Vector3.new(0, 4, 0), 0.9)
        Cj("RequestTrailPurchase", MI.Id)
        task.wait(0.6)
        Bo()
        local MF_4 = AS() or MD
        MD = MF_4
        local MF_5 = type(MD.OwnedTrails) == "table" and MD.OwnedTrails
        ME_1 = MF_5 or ME_1
    end
    Id, MF_6 = nil, nil
    for i, v in ipairs(BL()) do
        if ME_1[v.Id] then
            local MG_4 = tonumber(v.Multiplier) or 0
            local MI_1 = not MF_6
            if not MI_1 then
                MI_1 = MG_4 > MF_6
            end
            if MI_1 then
                MF_6 = MG_4
                Id = v.Id
            end
        end
    end
    if Id and MD.EquippedTrailId ~= Id then
        Cj("EquipTrail", Id)
        Ck("Equipped " .. Id)
    end
end
function fns.fn829()
    local Character = LocalPlayer.Character
    local F8 = Character and Character:FindFirstChildOfClass("Humanoid")
    return F8 or nil
end
function fns.fn837(oW)
    local Ov = Cx(oW)
    local Ow = Bf(Ov) or B0(Ov)
    if not Ow then
        Ck("Zone not found")
        return false
    end
    return TB_9(Ow)
end
function fns.fn844(hV)
    local JK = 0
    for k in pairs(hV) do
        JK += 1
    end
    return JK
end
function fns.fn868(cE)
    local FY_1
    local FX_1
    if type(cE) ~= "string" then
        return nil
    end
    FX_1, FY_1 = string.match(cE, "([%d%.]+)%s*(%a?)")
    local FZ = tonumber(FX_1)
    if not FZ then
        return nil
    end
    local upper = string.upper
    local F_ = FY_1 or ""
    local FX_3 = BU[upper(F_)] or 1
    return FZ * FX_3
end
function fns.fn871()
    local M9_1
    local M4 = AS()
    local M4_1
    local M5 = not M4 or type(M4.Collection) ~= "table"
    if M5 then
        return
    end
    local M5_1 = type(M4.IndexClaims) == "table" and M4.IndexClaims
    local M6 = {}
    local M7 = M5_1
    local Ne = if M7 then 1 else 0
    local Nc = 663 * Ne + 1422 * (1 - Ne)
    local Nd = 1855 * Ne + 1771 * (1 - Ne)
    if not ((Nc * 2639 + Nd * 1908 + Nc * Nd) % 16777213 == 6518862) then
        M7 = M6
    end
    local M5_2 = M7
    local M6_1 = type(M4.AreaIndexClaims) == "table" and M4.AreaIndexClaims
    local M8 = M6_1 or {}
    local M6_2 = {}
    local M8_1 = 0
    for k, v in pairs(M4.Collection) do
        if type(v) == "string" then
            M9_1, M4_1 = string.match(v, "^(.-):(.+)$")
            if M9_1 and M4_1 then
                local Na_1 = M6_2[M9_1] or 0
                M6_2[M9_1] = Na_1 + 1
                if not M5_2[v] then
                    Cj("ClaimIndexReward", M9_1, M4_1)
                    M8_1 += 1
                    task.wait(0.25)
                end
            end
        end
    end
    local M4_2 = #CD()
    for k, v in pairs(M6_2) do
        if M4_2 > 0 and v >= M4_2 and not M8[k] then
            Cj("ClaimAreaIndexReward", k)
            task.wait(0.25)
        end
    end
    if M8_1 > 0 then
        local M5_4 = M8_1 == 1 and "" or "s"
        Ck("Claimed " .. M8_1 .. " index reward" .. M5_4)
    end
end
function fns.fn882(oG)
    BK.trails = B1(oG, TB_5)
end
function fns.fn898()
    local Character = LocalPlayer.Character
    local F5 = Character and Character:FindFirstChild("HumanoidRootPart")
    return F5 or nil
end
function fns.fn914()
    if not Cr.BoxEsp then
        local NF_1 = next(CF) ~= nil or folder
        if NF_1 then
            Bh()
        end
        return
    end
    local NF_2 = AH()
    local NF_3 = NF_2 and NF_2.Position or Vector3.zero
    local NG_1 = {}
    for i, v in ipairs(AQ()) do
        local NF_4 = tostring(v.uid)
        local NI = v.rarity and TB_12[v.rarity]
        local NJ = NI or Color3.fromRGB(220, 220, 220)
        NG_1[NF_4] = true
        local NJ_1 = CF[NF_4]
        if NJ_1 and NJ_1.anchor ~= v.core then
            BB(NF_4)
            NJ_1 = nil
        end
        if not NJ_1 then
            NJ_1 = Cy(NF_4, v.core, NJ)
        end
        local NI_2 = v.boxId and AT[v.boxId] or nil
        local label = NJ_1.label
        local format = string.format
        local NL = NI_2 and tostring(NI_2.DisplayName)
        local NF_7 = NL or "Verity Box"
        local NL_1 = v.rarity and B3(v.rarity)
        local NM = NL_1 or "?"
        label.Text = format("%s\n%s  %dm", NF_7, NM, math.floor((v.position - NF_3).Magnitude))
    end
    for k in pairs(CF) do
        if not NG_1[k] then
            BB(k)
        end
    end
end
function fns.fn924()
    table.clear(A_)
    table.clear(AT)
    for i, v in ipairs(CD()) do
        if type(v.Face) == "string" then
            A_[v.Face] = v
        end
        if type(v.Id) == "string" then
            AT[v.Id] = v
        end
    end
    table.clear(TB_12)
    table.clear(AK)
    for i, v in ipairs(TB_6()) do
        if type(v.Id) == "string" then
            local Id2 = v.Id
            local Ek_1 = typeof(v.Color) == "Color3" and v.Color
            local El = Ek_1 or Color3.fromRGB(220, 220, 220)
            TB_12[Id2] = El
            local Id = v.Id
            local Ek_2 = v.DisplayName or v.Id
            AK[Id] = tostring(Ek_2)
        end
    end
    table.clear(AI)
    local Ej_3 = BT("VerityConfig")
    local Ek_3 = Ej_3 and type(Ej_3.Definitions) == "table"
    if Ek_3 then
        for i, v in ipairs(Ej_3.Definitions) do
            if type(v.Id) == "string" then
                AI[v.Id] = v.BoxId
            end
        end
    end
end
function fns.fn927()
    connection2:Disconnect()
end
function fns.fn961()
    local Ka = TB_3()
    if not Ka then
        Ck("Base not found")
        return false
    end
    Ck("Delivering box")
    local Kf = 1
    while Kf <= 4 do
        TB_9(Ka)
        if Ba(function()
            return not Cr.Carrying
        end, 0.5) then
            break
        end
        local Kb = Bb() or Ka
        Ka = Kb
        Kf += 1
    end
    if not Cr.Carrying then
        Cr.Stolen = Cr.Stolen + 1
        Ck("Box banked")
        return true
    end
    return false
end
function fns.fn962(ai)
    local DD_1
    local DC_4
    local DB = BZ[ai]
    if DB ~= nil then
        return DB or nil
    end
    local Shared = AF:FindFirstChild("Shared")
    local DC_2 = Shared and Shared:FindFirstChild(ai)
    local DC_3 = not DC_2 or not DC_2:IsA("ModuleScript")
    if DC_3 then
        BZ[ai] = false
        return nil
    end
    DC_4, DD_1 = pcall(require, DC_2)
    local DB_3 = not DC_4 or type(DD_1) ~= "table"
    if DB_3 then
        BZ[ai] = false
        return nil
    end
    BZ[ai] = DD_1
    return DD_1
end
function fns.fn965()
    local D0 = BT("TrailsConfig")
    local D1 = D0
    local D2 = {}
    if D1 then
        D1 = type(D0.ById) == "table"
    end
    if D1 then
        for k, v in pairs(D0.ById) do
            local D0_1 = {}
            for k, v in pairs(v) do
                D0_1[k] = v
            end
            local D1_1 = D0_1.Id or k
            D0_1.Id = D1_1
            table.insert(D2, D0_1)
        end
    end
    table.sort(D2, function(aS, aT)
        local DY = tonumber(aS.Price) or 0
        local DZ = tonumber(aT.Price) or 0
        return DY < DZ
    end)
    return D2
end
function fns.fn979(og)
    if og then
        Bi(TB_17, AE)
    else
        Cg(TB_17)
    end
end
function fns.fn981(nI)
    local N7 = (tonumber(nI))
    local Ob = if N7 then 1 else 0
    local N9 = 2731 * Ob + 2866 * (1 - Ob)
    local Oa = 2933 * Ob + 254 * (1 - Ob)
    if not ((N9 * 709 + Oa * 3534 + N9 * Oa) % 16777213 == 3534311) then
        N7 = 0.1
    end
    Cs.interval = math.max(N7, 0)
end
function fns.fn983()
    local HG
    for i, v in ipairs(A3) do
        if not HG or v.center.X > HG.center.X then
            HG = v
        end
    end
    return HG
end
function fns.fn998()
    return CoreGui
end
function fns.fn1033()
    local DS = BT("BoxConfig")
    local DT = DS and type(DS.Definitions) == "table"
    if DT then
        return DS.Definitions
    end
    return {}
end
function fns.fn1039()
    local GM = BA()
    local GO = GM and GM.CFrame or BQ.cframe
    local GN_1 = GM
    if GN_1 then
        GN_1 = GM.Size
    end
    local GO_1 = GN_1 or BQ.size
    if not GO or not GO_1 then
        return nil
    end
    local GO_3 = math.max(GO_1.X * 0.5 - 5, 1)
    local GQ_1 = math.max(GO_1.Z * 0.5 - 5, 1)
    local GY = 1
    while GY <= 8 do
        local GN_3 = Vector3.new((math.random() * 2 - 1) * GO_3, 0, (math.random() * 2 - 1) * GQ_1)
        local GR = GO:PointToWorldSpace(GN_3)
        local GR_1 = Vector3.new(GR.X, 0, GR.Z)
        local GN_4 = not GM or Ca(GM, Vector3.new(GR_1.X, GM.Position.Y, GR_1.Z))
        if GN_4 then
            return GR_1
        end
        GY += 1
    end
    local GN_5 = GO.Position
    if GM then
        GN_5 = Bk(GM, GN_5)
    end
    return Vector3.new(GN_5.X, 0, GN_5.Z)
end
function fns.fn1075()
    local JY = if coroutine.status(Ch) ~= "dead" then 1 else 0
    if JY == 1 then
        pcall(task.cancel, Ch)
    end
end
function fns.fn1084(dk, dl)
    local Gp = dk and dk:FindFirstChild(dl)
    if not Gp then
        return nil
    elseif Gp:IsA("BasePart") then
        return Gp
    else
        return Gp:FindFirstChildWhichIsA("BasePart", true)
    end
end
function fns.fn1088(d0, d1)
    local GH_1
    local GF = Co()
    local GG = GF and AX(GF.Clamp)
    local GG_1
    if GG then
        GG_1, GH_1 = pcall(GF.Clamp, d0, d1)
        local GF_1 = GG_1 and typeof(GH_1) == "Vector3"
        if GF_1 then
            return GH_1
        end
        return d1
    end
    return d1
end
local function fn1110(ae)
    Cr.Status = tostring(ae)
end
local function fn1138(bp)
    local EK = AK[bp] or tostring(bp)
    return EK
end
local function fn1146(nK)
    Cs.lockedOnly = nK == true
end
local function fn1173(fU)
    local If = TB_13[fU]
    if If ~= nil then
        return If or nil
    end
    local Id = nil
    for i, descendant in ipairs(fU:GetDescendants()) do
        local Ig_2 = descendant:IsA("ImageLabel") and descendant.Name == "Face"
        if Ig_2 then
            local Ig_3 = A_[descendant.Image]
            if Ig_3 then
                Id = Ig_3.Id
            end
            break
        end
    end
    local Ig_4 = Id
    local Iq = if Ig_4 then 1 else 0
    local Io = 1344 * Iq + 586 * (1 - Iq)
    local Ip = 454 * Iq + 2379 * (1 - Iq)
    if not ((Io * 1745 + Ip * 4029 + Io * Ip) % 16777213 == 4784622) then
        Ig_4 = false
    end
    TB_13[fU] = Ig_4
    return Id
end
local function fn1181(bz)
    for k, v in pairs(AK) do
        if v == bz then
            return k
        end
    end
    return bz
end
local function fn1190(hK)
    hK.stopped = true
    local Jx = hK.generation or 0
    hK.generation = Jx + 1
end
local function fn1195()
    local Gv = BA()
    if Gv then
        return Gv.Position + Vector3.new(0, 4, 0)
    end
    local Gv_1 = Bg()
    local Gw = Gv_1 and Ct(Gv_1, "Origin")
    if Gw then
        return Gw.Position + Vector3.new(0, 4, 0)
    elseif BQ.center then
        return BQ.center + Vector3.new(0, 4, 0)
    else
        return nil
    end
end
local function fn1196(bW)
    for i, v in ipairs(BL()) do
        local Fs = v.DisplayName or v.Id
        if tostring(Fs) == bW then
            return v.Id
        end
    end
    return bW
end
local function fn1199()
    local BaseRuntime = CA:FindFirstChild("BaseRuntime")
    local Bases = CA:FindFirstChild("Bases")
    if not BaseRuntime or not Bases then
        return nil
    end
    for i, child in ipairs(BaseRuntime:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            local Ge_1 = string.match(child.Name, "_(.+)$")
            local Gg_1 = Ge_1 and Bases:FindFirstChild(Ge_1)
            if Gg_1 then
                return Gg_1
            end
        end
    end
    return nil
end
local function fn1211(ot)
    BO.rarities = B1(ot, Bj)
end
local function fn1242(nU)
    Cr.BoxEsp = nU == true
    if not Cr.BoxEsp then
        Bh()
    end
end
local function fn1265(gH, gI)
    local I8 = CA:FindFirstChild(gH)
    if not I8 then
        return nil
    end
    for i, descendant in ipairs(I8:GetDescendants()) do
        local I8_1 = descendant:IsA("BasePart") and descendant.Name == gI
        if I8_1 then
            return descendant
        end
    end
    return nil
end
local function fn1293()
    for k in pairs(CF) do
        BB(k)
    end
    if folder then
        pcall(function()
            folder:Destroy()
        end)
        folder = nil
    end
end
local function fn1300(n6)
    if n6 then
        Bi(B6, A6)
    else
        Cg(B6)
    end
end
local function fn1302(ob)
    if ob then
        Bi(B_, AU)
    else
        Cg(B_)
    end
end
local function fn1310(nQ)
    Cs.rarities = B1(nQ, Bj)
end
local function fn1337(U)
    local Dw = typeof(cloneref) == "function" and typeof(U) == "Instance"
    if Dw then
        return cloneref(U)
    end
    return U
end
local function fn1348(bK)
    for i, v in ipairs(A9()) do
        local Fa = v.DisplayName or v.Id
        if tostring(Fa) == bK then
            return v.Id
        end
    end
    return bK
end
local function fn1358(oK)
    if oK then
        Bi(BG, B9)
    else
        Cg(BG)
    end
end
local function fn1369()
    Cr.LastError = ""
    Cj("ManagePets", "BUY_SLOT")
    task.wait(0.4)
    if Cr.LastError == "" then
        Ck("Bought a pet slot")
    end
end
local function fn1374()
    local DV = BT("RarityConfig")
    local DW = DV and type(DV.Definitions) == "table"
    if DW then
        return DV.Definitions
    end
    return {}
end
local function fn1396()
    local SpawnLocation = CA:FindFirstChild("SpawnLocation")
    local J_ = SpawnLocation and SpawnLocation:IsA("BasePart")
    if J_ then
        return SpawnLocation.Position + Vector3.new(0, 4, 0)
    end
    local JZ_1 = BT("AreaConfig")
    local J__1 = JZ_1 and JZ_1.Definitions
    local J__2 = CA:FindFirstChild("Areas")
    local J0 = type(J__1) == "table" and J__2
    if J0 then
        for i, v in ipairs(J__1) do
            if not v.IsStealingArea then
                local JZ_3 = J__2:FindFirstChild(tostring(v.Folder))
                local J0_1 = JZ_3 and JZ_3:FindFirstChild(tostring(v.FloorPart))
                local JZ_4 = J0_1
                if J0_1 then
                    J0_1 = JZ_4:IsA("BasePart")
                end
                if J0_1 then
                    return JZ_4.Position + Vector3.new(0, 6, 0)
                end
            end
        end
    end
    return nil
end
local function fn1400(oB)
    if oB then
        Bi(BK, Be)
    else
        Cg(BK)
    end
end
local function fn1416(nM)
    Cs.zones = B1(nM, Cx)
end
local function fn1441()
    local N4 = if coroutine.status(A8) ~= "dead" then 1 else 0
    if N4 == 1 then
        pcall(task.cancel, A8)
    end
    Bh()
end
local function worker2()
    while AM() do
        pcall(Bu)
        task.wait(0.6)
    end
end
local function fn1472(mW, mX, mY)
    local m_ = AR()
    local highlight = Instance.new("Highlight")
    highlight.FillColor = mY
    highlight.OutlineColor = mY
    highlight.FillTransparency = 0.6
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Adornee = mX
    highlight.Parent = m_
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "BoxTag"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(230, 40)
    billboardGui.StudsOffsetWorldSpace = Vector3.new(0, 4, 0)
    billboardGui.MaxDistance = math.huge
    billboardGui.Adornee = mX
    billboardGui.Parent = m_
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.BuilderSansBold
    textLabel.TextSize = 15
    textLabel.TextColor3 = mY
    textLabel.TextStrokeTransparency = 0.35
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.Text = ""
    textLabel.Parent = billboardGui
    local m3 = { highlight = highlight, billboard = billboardGui, label = textLabel, anchor = mX }
    CF[mW] = m3
    return m3
end
local function fn1478()
    local Jj = BT("TrailsConfig")
    local Jj_1 = Jj and Jj.PAD_NAME or "TrailShopPad"
    return Br("Trail Shop", Jj_1)
end
local function fn1481()
    local PetRuntime = CA:FindFirstChild("PetRuntime")
    local IS = {}
    if not PetRuntime then
        return IS
    end
    for i, child in ipairs(PetRuntime:GetChildren()) do
        if child:GetAttribute("OwnerUserId") == LocalPlayer.UserId then
            table.insert(IS, {
                uid = child.Name,
                verityId = child:GetAttribute("VerityId"),
                areaId = child:GetAttribute("AreaId")
            })
        end
    end
    return IS
end
AE = nil
AF = nil
connection4 = nil
AH = nil
AI = nil
AK = nil
AL = nil
AM = nil
AN = nil
AO = nil
TB_12 = nil
AQ = nil
AR = nil
AS = nil
AT = nil
AU = nil
AW = nil
AX = nil
AY = nil
AZ = nil
A_ = nil
A0 = nil
TB_3 = nil
A3 = nil
A4 = nil
connection3 = nil
A6 = nil
TB_8 = nil
A8 = nil
A9 = nil
Ba = nil
Bb = nil
TB_15 = nil
Be = nil
Bf = nil
Bg = nil
Bh = nil
Bi = nil
Bj = nil
Bk = nil
connection2 = nil
Bm = nil
Bn = nil
Bo = nil
local Players, AD, AJ, AV, A2, Bc
Bp = nil
TB_5 = nil
Br = nil
Bs = nil
Bt = nil
Bu = nil
Bv = nil
TB_13 = nil
Bx = nil
LocalPlayer = nil
Bz = nil
BA = nil
BB = nil
BD = nil
connection = nil
BG = nil
BK = nil
BL = nil
BN = nil
BO = nil
TB_9 = nil
BQ = nil
CoreGui = nil
BT = nil
BU = nil
TB_17 = nil
BW = nil
BZ = nil
B_ = nil
B0 = nil
B1 = nil
B2 = nil
B3 = nil
B6 = nil
TB_6 = nil
B8 = nil
B9 = nil
Ca = nil
local Workspace, BE, BH, Lighting, BJ, TeleportService, BS, BX, GuiService, HttpService, B5, VirtualUser
Cc = nil
TB_14 = nil
Cf = nil
Cg = nil
Ch = nil
Cj = nil
Ck = nil
Cl = nil
Cm = nil
Cn = nil
Co = nil
Cp = nil
Cr = nil
Cs = nil
Ct = nil
Cu = nil
Cv = nil
folder = nil
Cx = nil
Cy = nil
Cz = nil
CA = nil
CB = nil
TB_18 = nil
CD = nil
CF = nil
local UserInputService, RunService, CE
local Ce
UserInputService = nil
RunService = nil
CE = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, Bp = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local TB_20 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local TB_29 = "OuroborosStealAVerity"
Bp = fns.fn998
if getgenv then
    getgenv().gethui = Bp
end
TB_15, AF, CA, Cr, BZ, A_, AT, TB_12, AK, AI, BU, BW, BQ, TB_1, BE, AX, AM, Ck, BT, A9, CD, TB_6, BL, A0, Cv, B3, BH, Bj, A2, Cx, BS, TB_5, TB_8, AV, Cj, BD, AS, Cl, BN, Bn, AH, Ce, TB_9, Bg, Ct = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local TB_31 = 33
repeat
    local TB_4 = (TB_31 * 5 + 15) % 18 + 1
    if TB_4 <= 9 then
        if TB_4 <= 5 then
            if TB_4 <= 3 then
                if TB_4 <= 2 then
                    if TB_4 <= 1 then
                        TB_33 = {
                            "nzvqrg",
                            "ekm",
                            "nftr",
                            "ukifam",
                            "eduqp",
                            "atspiovueta",
                            "aotox",
                            "zdavqjd",
                            "mbfvbez",
                            "uliuiagpa"
                        }
                        local X8 = TB_31
                        TB_24 = TB_33[X8 % 10 + 1]
                        if TB_24:len() <= TB_24:gsub("(.)", "%1%1", X8 % 3 % 2 + 1):len() then
                            pcall(fns.fn810)
                            TB_1 = function(t)
                                local Dm
                                local Dk
                                local Dl
                                Dk = nil
                                Dl = nil
                                Dm = nil
                                local Dn = t ~= ""
                                local Do = type(t) == "string" and Dn
                                assert(Do, "A namespace is required")
                                assert(type(getgenv) == "function", "getgenv is unavailable")
                                Dk = getgenv()
                                assert(type(Dk) == "table", "getgenv did not return a table")
                                local Dn_2 = Dk[t]
                                if Dn_2 ~= nil then
                                    local Do_2 = type(Dn_2) == "table" and type(Dn_2.Unload) == "function"
                                    assert(Do_2, "Namespace is occupied")
                                    Dn_2.Unload()
                                    assert(Dk[t] == nil, "Previous instance did not release its namespace")
                                end
                                Dl = {}
                                Dm = { State = {}, Unloaded = false }
                                Dm.Track = function(z)
                                    assert(type(z) == "function", "Cleanup must be callable")
                                    if Dm.Unloaded then
                                        z()
                                    else
                                        table.insert(Dl, z)
                                    end
                                    return z
                                end
                                Dm.Unload = function()
                                    local Dd_2
                                    local Dc_2
                                    if Dm.Unloaded then
                                        return
                                    end
                                    Dm.Unloaded = true
                                    local Da = {}
                                    local Dh = #Dl
                                    local Dg = -1
                                    while false and Dh <= 1 or true and Dh >= 1 do
                                        local Di = Dh
                                        local Db_2 = table.remove(Dl, Di)
                                        Dc_2, Dd_2 = pcall(Db_2)
                                        if not Dc_2 then
                                            table.insert(Da, tostring(Dd_2))
                                        end
                                        Dh += Dg
                                    end
                                    table.clear(Dm.State)
                                    if #Da > 0 then
                                        error("Cleanup incomplete: " .. table.concat(Da, "; "), 0)
                                    end
                                    if Dk[t] == Dm then
                                        Dk[t] = nil
                                    end
                                end
                                Dk[t] = Dm
                                return Dm
                            end
                        else
                            pcall(fns.fn810)
                            TB_12 = function(t)
                                local Dm
                                local Dk
                                local Dl
                                Dk = nil
                                Dl = nil
                                Dm = nil
                                local Dn = t ~= ""
                                local Do = type(t) == "string" and Dn
                                assert(Do, "A namespace is required")
                                assert(type(getgenv) == "function", "getgenv is unavailable")
                                Dk = getgenv()
                                assert(type(Dk) == "table", "getgenv did not return a table")
                                local Dn_1 = Dk[t]
                                if Dn_1 ~= nil then
                                    local Do_1 = type(Dn_1) == "table" and type(Dn_1.Unload) == "function"
                                    assert(Do_1, "Namespace is occupied")
                                    Dn_1.Unload()
                                    assert(Dk[t] == nil, "Previous instance did not release its namespace")
                                end
                                Dl = {}
                                Dm = { State = {}, Unloaded = false }
                                Dm.Track = function(z)
                                    assert(type(z) == "function", "Cleanup must be callable")
                                    if Dm.Unloaded then
                                        z()
                                    else
                                        table.insert(Dl, z)
                                    end
                                    return z
                                end
                                Dm.Unload = function()
                                    local Dd_1
                                    local Dc_1
                                    if Dm.Unloaded then
                                        return
                                    end
                                    Dm.Unloaded = true
                                    local Da = {}
                                    local Dh = #Dl
                                    local Dg = -1
                                    while false and Dh <= 1 or true and Dh >= 1 do
                                        local Di = Dh
                                        local Db_1 = table.remove(Dl, Di)
                                        Dc_1, Dd_1 = pcall(Db_1)
                                        if not Dc_1 then
                                            table.insert(Da, tostring(Dd_1))
                                        end
                                        Dh += Dg
                                    end
                                    table.clear(Dm.State)
                                    if #Da > 0 then
                                        error("Cleanup incomplete: " .. table.concat(Da, "; "), 0)
                                    end
                                    if Dk[t] == Dm then
                                        Dk[t] = nil
                                    end
                                end
                                Dk[t] = Dm
                                return Dm
                            end
                        end
                        TB_31 = (TB_31 + 65) % 72
                    else
                        local WU = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_31, 26), string.byte(tostring(BD))), 1)
                        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(WU, 4266363485), 78100259), (bit32.bxor(bit32.band(WU, 28603810), 3231847268))), 78100259), 3231847268) ~= WU then
                            A9 = function(M, N)
                                local Du = type(M) == "table" and type(M.Track) == "function"
                                assert(Du, "FeatureAPI required")
                                local Du_2 = type(N) == "table" and type(N.OnUnload) == "function"
                                assert(Du_2, "UI library required")
                                assert(type(N.Unload) == "function", "UI unload required")
                                M.Track(function()
                                    if not N.Unloaded then
                                        N:Unload()
                                    end
                                end)
                                N:OnUnload(function()
                                    M.Unload()
                                end)
                            end
                        else
                            BE = function(M, N)
                                local Du = type(M) == "table" and type(M.Track) == "function"
                                assert(Du, "FeatureAPI required")
                                local Du_1 = type(N) == "table" and type(N.OnUnload) == "function"
                                assert(Du_1, "UI library required")
                                assert(type(N.Unload) == "function", "UI unload required")
                                M.Track(function()
                                    if not N.Unloaded then
                                        N:Unload()
                                    end
                                end)
                                N:OnUnload(function()
                                    M.Unload()
                                end)
                            end
                        end
                        TB_31 = (TB_31 + 11) % 72
                    end
                else
                    if TB_31 * 93775597 + 3 + 1 >= TB_31 * 93775597 + 3 + 1 + 3 then
                        TB_29 = TB_15(TB_1)
                    else
                        TB_15 = TB_1(TB_29)
                    end
                    TB_31 = (TB_31 + 47) % 72
                end
            elseif TB_4 <= 4 then
                if TB_31 * 26175639 + 6 + 7 <= TB_31 * 26175639 + 6 + 7 + 6 then
                    TB_38 = fn1337
                    AX = fns.fn803
                    AM = fns.fn208
                    AF = TB_38(TB_20)
                    CA = TB_38(Workspace)
                else
                    CA = fn1337
                    TB_20 = fns.fn208
                    AX = CA(Workspace)
                    AM = CA(AF)
                end
                TB_31 = (TB_31 + 65) % 72
            else
                TB_33 = (vector.create((TB_31 * 7 + 4) % 11 + 1, (TB_31 * 3 + 3) % 13 + 1, (TB_31 * 5 + 13) % 17 + 1))
                TB_24 = (vector.create((TB_31 * 2 + 3) % 11 + 1, (TB_31 * 10 + 9) % 13 + 1, (TB_31 * 8 + 16) % 17 + 1))
                local Yb = vector.dot(TB_33, TB_24)
                if Yb * Yb <= vector.dot(TB_33, TB_33) * vector.dot(TB_24, TB_24) then
                    Cr = TB_15.State
                    Cr.Status = "Idle"
                    Cr.Carrying = false
                    Cr.CarryBoxId = ""
                    Cr.BoxEsp = false
                    Cr.LastError = ""
                    Cr.EquippedTool = ""
                    Cr.Area = nil
                    Cr.Stolen = 0
                    Cr.Placed = 0
                    Cr.Opened = 0
                    Cr.Sold = 0
                    Ck = fn1110
                    BZ = {}
                else
                    TB_15 = Cr.State
                    TB_15.Status = "Idle"
                    TB_15.Carrying = false
                    TB_15.CarryBoxId = ""
                    TB_15.BoxEsp = false
                    TB_15.LastError = ""
                    TB_15.EquippedTool = ""
                    TB_15.Area = nil
                    TB_15.Stolen = 0
                    TB_15.Placed = 0
                    TB_15.Opened = 0
                    TB_15.Sold = 0
                    BZ = fn1110
                    Ck = {}
                end
                TB_31 = (TB_31 + 65) % 72
            end
        elseif TB_4 <= 7 then
            if TB_4 <= 6 then
                TB_33 = {
                    "cdaow",
                    "sagiwbajlj",
                    "vyeydmi",
                    "dcnfwafn",
                    "zwgigum",
                    "gjggju",
                    "xrvymayh",
                    "vipkpnmbif",
                    "yqmwa",
                    "mkjvdxy",
                    "ecw",
                    "yrgqxtfxc",
                    "yljpjfp",
                    "liamrknnmpy",
                    "utakghpckd"
                }
                if TB_33[(TB_31 * 68 + 26) % 15 + 1] <= TB_33[(TB_31 * 68 + 26) % 15 + 1] then
                    BT = fns.fn962
                    A9 = fns.fn326
                    CD = fns.fn1033
                    TB_6 = fn1374
                    BL = fns.fn965
                else
                    BL = fns.fn962
                    CD = fns.fn326
                    TB_6 = fns.fn1033
                    BT = fn1374
                    A9 = fns.fn965
                end
                TB_31 = (TB_31 + 65) % 72
            else
                TB_33 = { "inxmzpwiiay", "bnenoz", "duadkch", "wjsolzkdnq", "ufhvaz", "gfeerivyi", "wet" }
                local XZ = TB_31
                TB_24 = TB_33[XZ % 7 + 1]
                if TB_24:len() >= TB_24:reverse():rep(XZ % 3 + 2):len() then
                    Ce = {}
                else
                    A_ = {}
                end
                TB_31 = (TB_31 + 65) % 72
            end
        elseif TB_4 <= 8 then
            if (not Ck or TB_5 or TB_5 and not TB_5) and (Ck and not Ck or (Ck or Ck)) and not ((not Ck or TB_5 or TB_5 and not TB_5) and (Ck and not Ck or (Ck or Ck))) then
                AK = {}
                AT = {}
                TB_12 = {}
            else
                AT = {}
                TB_12 = {}
                AK = {}
            end
            TB_31 = (TB_31 + 47) % 72
        else
            TB_33 = {
                "bxkpkicb",
                "hyuc",
                "jmvuwcwadb",
                "yijkw",
                "gdfpxmxyi",
                "fzzopdnx",
                "llhjl",
                "tyrtnpasfgtj",
                "deghxeg",
                "ymdekvjeot",
                "uyz",
                "yjzstida",
                "cwm",
                "vykpolgocs",
                "xsrsxjtcte"
            }
            if TB_33[(TB_31 * 45 + 24) % 15 + 1] <= TB_33[(TB_31 * 45 + 24) % 15 + 1] then
                AI = {}
            else
                BT = {}
            end
            TB_31 = (TB_31 + 65) % 72
        end
    elseif TB_4 <= 14 then
        if TB_4 <= 12 then
            if TB_4 <= 11 then
                if TB_4 <= 10 then
                    TB_33 = (vector.create((TB_31 * 1 + 3) % 11 + 1, (TB_31 * 3 + 6) % 13 + 1, (TB_31 * 8 + 8) % 17 + 1))
                    TB_24 = (vector.create((TB_31 * 2 + 5) % 11 + 1, (TB_31 * 10 + 5) % 13 + 1, (TB_31 * 8 + 2) % 17 + 1))
                    TB_7 = (vector.create((TB_31 * 3 + 7) % 11 + 1, (TB_31 * 6 + 11) % 13 + 1, (TB_31 * 1 + 10) % 17 + 1))
                    TB_34 = (vector.create((TB_31 * 1 + 4) % 5 + 1, (TB_31 * 1 + 5) % 7 + 1, (TB_31 * 4 + 2) % 9 + 1))
                    if vector.dot(vector.cross(TB_33, (vector.cross(TB_24, TB_7))), TB_34) == vector.dot(TB_24 * vector.dot(TB_33, TB_7) - TB_7 * vector.dot(TB_33, TB_24), TB_34) + 3 then
                        A0 = fns.fn924
                        A0()
                    else
                        TB_22 = fns.fn924
                        TB_22()
                        A0 = fns.fn355
                    end
                    TB_31 = (TB_31 + 29) % 72
                else
                    TB_33 = (vector.create((TB_31 * 7 + 4) % 11 + 1, (TB_31 * 7 + 5) % 13 + 1, (TB_31 * 4 + 10) % 17 + 1))
                    local WO = vector.floor(TB_33) + vector.ceil(TB_33 * -1)
                    if vector.dot(WO, WO) == 1 then
                        AT = fns.fn284
                    else
                        Cv = fns.fn284
                    end
                    TB_31 = (TB_31 + 65) % 72
                end
            else
                TB_33 = (vector.create((TB_31 * 2 + 9) % 11 + 1, (TB_31 * 7 + 2) % 13 + 1, (TB_31 * 11 + 2) % 17 + 1))
                TB_24 = (vector.create((TB_31 * 5 + 7) % 11 + 1, (TB_31 * 11 + 4) % 13 + 1, (TB_31 * 13 + 4) % 17 + 1))
                TB_7 = (vector.create((TB_31 * 3 + 4) % 11 + 1, (TB_31 * 10 + 13) % 13 + 1, (TB_31 * 4 + 8) % 17 + 1))
                TB_34 = (vector.create((TB_31 * 1 + 9) % 11 + 1, (TB_31 * 11 + 9) % 13 + 1, (TB_31 * 9 + 15) % 17 + 1))
                if vector.dot(vector.cross(TB_33, TB_24), (vector.cross(TB_7, TB_34))) == vector.dot(TB_33, TB_7) * vector.dot(TB_24, TB_34) - vector.dot(TB_33, TB_34) * vector.dot(TB_24, TB_7) then
                    B3 = fn1138
                    BH = fns.fn683
                    Bj = fn1181
                    A2 = fns.fn481
                    Cx = fn1348
                else
                    Cx = fn1138
                    B3 = fns.fn683
                    A2 = fn1181
                    Bj = fns.fn481
                    BH = fn1348
                end
                TB_31 = (TB_31 + 47) % 72
            end
        elseif TB_4 <= 13 then
            TB_33 = {
                "ojaiteasy",
                "ylsswsdatlx",
                "aejfaupguxv",
                "wzldvhqxrjlm",
                "dsfupr",
                "urcikjgl",
                "kqbno",
                "mbutqqhf"
            }
            if TB_33[(TB_31 * 31 + 28) % 8 + 1] <= TB_33[(TB_31 * 31 + 28) % 8 + 1] then
                BS = fns.fn109
            else
                Cr = fns.fn109
            end
            TB_31 = (TB_31 + 29) % 72
        else
            local Ye = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_31, 5), string.byte(tostring(TB_8))), 10)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Ye, 710198572), 16), 3308005972) == bit32.lrotate(Ye, 16) then
                TB_5 = fn1196
                TB_8 = fns.fn327
                AV = fns.fn248
                Cj = function(ca, ...)
                    local FD
                    local FE
                    FD = nil
                    FE = nil
                    FD = AV(ca)
                    if not FD then
                        return false
                    end
                    FE = table.pack(...)
                    return (pcall(function()
                        FD.FireServer(FD, table.unpack(FE, 1, FE.n))
                    end))
                end
            else
                Cj = fn1196
                AV = fns.fn327
                TB_5 = fns.fn248
                TB_8 = function(ca, ...)
                    local FD
                    local FE
                    FD = nil
                    FE = nil
                    FD = AV(ca)
                    if not FD then
                        return false
                    end
                    FE = table.pack(...)
                    return (pcall(function()
                        FD.FireServer(FD, table.unpack(FE, 1, FE.n))
                    end))
                end
            end
            TB_31 = (TB_31 + 65) % 72
        end
    elseif TB_4 <= 16 then
        if TB_4 <= 15 then
            TB_33 = (vector.create((TB_31 * 5 + 4) % 11 + 1, (TB_31 * 7 + 11) % 13 + 1, (TB_31 * 4 + 8) % 17 + 1))
            TB_24 = (vector.create((TB_31 * 5 + 1) % 11 + 1, (TB_31 * 11 + 3) % 13 + 1, (TB_31 * 4 + 17) % 17 + 1))
            TB_7 = (vector.create((TB_31 * 6 + 1) % 11 + 1, (TB_31 * 11 + 3) % 13 + 1, (TB_31 * 2 + 6) % 17 + 1))
            TB_34 = (vector.create((TB_31 * 3 + 1) % 11 + 1, (TB_31 * 4 + 12) % 13 + 1, (TB_31 * 10 + 1) % 17 + 1))
            if vector.dot(vector.cross(TB_33, TB_24), (vector.cross(TB_7, TB_34))) == vector.dot(TB_33, TB_7) * vector.dot(TB_24, TB_34) - vector.dot(TB_33, TB_34) * vector.dot(TB_24, TB_7) then
                BD = fns.fn229
                AS = fns.fn236
                Cl = fns.fn330
                BU = { K = 1000, M = 1000000, B = 1000000000, T = 1000000000000, Q = 1000000000000000 }
                BN = fns.fn868
            else
                BN = fns.fn229
                Cl = fns.fn236
                BD = fns.fn330
                AS = { M = 1000000, K = 1000, T = 1000000000000, Q = 1000000000000000, B = 1000000000 }
                BU = fns.fn868
            end
            TB_31 = (TB_31 + 47) % 72
        else
            TB_33 = {
                "slskkwvrlpad",
                "bwd",
                "pzketgkjxfsa",
                "rbhaqrrgtgtx",
                "rsswzj",
                "urt",
                "bwbviog",
                "ijghz",
                "xcodsrggr"
            }
            if TB_33[(TB_31 * 33 + 35) % 9 + 1] < TB_33[(TB_31 * 33 + 35) % 9 + 1] then
                AH = fns.fn534
                Bn = fns.fn898
            else
                Bn = fns.fn534
                AH = fns.fn898
            end
            TB_31 = (TB_31 + 29) % 72
        end
    elseif TB_4 <= 17 then
        TB_4 = {
            "csbywmsjudnl",
            "dqxdfighivf",
            "kpjczacp",
            "lhhfxb",
            "rgtltmy",
            "noclqg",
            "rulfo",
            "mhukoynbe",
            "qbzhlsdk",
            "vrvk"
        }
        if TB_4[(TB_31 * 83 + 41) % 10 + 1] <= TB_4[(TB_31 * 83 + 41) % 10 + 1] then
            Ce = fns.fn829
            TB_9 = function(c2, c3)
                local Ga
                Ga = nil
                Ga = AH()
                local Gb = not Ga or typeof(c2) ~= "Vector3"
                if Gb then
                    return false
                end
                local Gb_2 = pcall(function()
                    Ga.CFrame = CFrame.new(c2)
                end)
                if Gb_2 and c3 then
                    task.wait(c3)
                end
                return Gb_2
            end
            Bg = fn1199
        else
            Bg = fns.fn829
            Ce = function(c2, c3)
                local Ga
                Ga = nil
                Ga = AH()
                local Gb = not Ga or typeof(c2) ~= "Vector3"
                if Gb then
                    return false
                end
                local Gb_1 = pcall(function()
                    Ga.CFrame = CFrame.new(c2)
                end)
                if Gb_1 and c3 then
                    task.wait(c3)
                end
                return Gb_1
            end
            TB_9 = fn1199
        end
        TB_31 = (TB_31 + 11) % 72
    else
        TB_4 = (vector.create((TB_31 * 1 + 5) % 11 + 1, (TB_31 * 11 + 6) % 13 + 1, (TB_31 * 13 + 5) % 17 + 1))
        TB_33 = (vector.create((TB_31 * 5 + 9) % 11 + 1, (TB_31 * 4 + 2) % 13 + 1, (TB_31 * 2 + 4) % 17 + 1))
        local XV = vector.cross(TB_4, TB_33)
        local XW = vector.dot(TB_4, TB_33)
        if vector.dot(XV, XV) + XW * XW == vector.dot(TB_4, TB_4) * vector.dot(TB_33, TB_33) then
            Ct = fns.fn1084
            BW = "OuroborosStealAVerityPlot"
            BQ = {}
        else
            BW = fns.fn1084
            BQ = "OuroborosStealAVerityPlot"
            Ct = {}
        end
        TB_31 = (TB_31 + 29) % 72
    end
until (TB_31 * 71 + 54) % 72 == 39
TB_24, TB_33 = nil, nil
if (not TB_24 and TB_33 or 7) and (TB_24 and 7) and ((TB_24 or 7) and (not TB_33 or TB_33) and ((TB_24 or TB_24) and (not TB_33 or 7))) or not ((not TB_24 and TB_33 or 7) and (TB_24 and 7) and ((TB_24 or 7) and (not TB_33 or TB_33) and ((TB_24 or TB_24) and (not TB_33 or 7)))) then
    TB_24 = getgenv()[BW]
else
    BW = getgenv()[TB_24]
end
TB_33 = type(TB_24) == "table"
if TB_33 then
    TB_38 = 7
    repeat
        local Yg = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_38, 8), string.byte(tostring(TB_38))), 11)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(Yg, 3353640397), 4054495836), (bit32.bxor(bit32.band(Yg, 941326898), 1864882648))), 4054495836), 1864882648) == Yg then
            TB_33 = typeof(TB_24.cframe) == "CFrame"
        else
            TB_24 = typeof(TB_33.cframe) == "CFrame"
        end
        TB_38 = (TB_38 + 0) % 8
    until (TB_38 * 7 + 2) % 8 == 3
end
if TB_33 then
    TB_38 = 6
    repeat
        local WQ = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_38, 24), string.byte(tostring(TB_38))), 26)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(WQ, 204443919), 2308885153), (bit32.bxor(bit32.band(WQ, 4090523376), 3068358595))), 2308885153), 3068358595) == WQ then
            TB_33 = typeof(TB_24.size) == "Vector3"
        else
            TB_24 = typeof(TB_33.size) == "Vector3"
        end
        TB_38 = (TB_38 + 5) % 8
    until (TB_38 * 7 + 1) % 8 == 6
end
if TB_33 then
    TB_38 = 3
    repeat
        TB_29 = (vector.create((TB_38 * 7 + 9) % 11 + 1, (TB_38 * 2 + 13) % 13 + 1, (TB_38 * 3 + 5) % 17 + 1))
        TB_20 = (vector.create((TB_38 * 1 + 3) % 11 + 1, (TB_38 * 4 + 9) % 13 + 1, (TB_38 * 10 + 12) % 17 + 1))
        TB_1 = (vector.create((TB_38 * 2 + 2) % 11 + 1, (TB_38 * 8 + 13) % 13 + 1, (TB_38 * 1 + 2) % 17 + 1))
        if vector.dot(vector.cross(TB_29, TB_20), TB_1) == vector.dot(vector.cross(TB_20, TB_1), TB_29) + 1 then
            TB_24.cframe = BQ.cframe
            TB_24.size = BQ.size
            TB_24.center = BQ.cframe.Position
        else
            BQ.cframe = TB_24.cframe
            BQ.size = TB_24.size
            BQ.center = TB_24.cframe.Position
        end
        TB_38 = (TB_38 + 6) % 8
    until (TB_38 * 7 + 0) % 8 == 7
end
A3, AW, BA, Bb, Co, Ca, Bk, AD = nil, nil, nil, nil, nil, nil, nil, nil
BA = fns.fn416
Bb = fn1195
Co = fns.fn536
Ca = fns.fn554
Bk = fns.fn1088
AD = fns.fn1039
TB_20 = "OuroborosStealAVerityAnchors"
A3 = {}
AW = {}
TB_1 = nil
TB_38 = 0
repeat
    if (TB_38 * 2 + 3) * 10 % 3 == ((TB_38 * 2 + 3) * 10 + 0) % 3 then
        TB_1 = getgenv()[TB_20]
    else
        TB_20 = getgenv()[TB_1]
    end
    TB_38 = (TB_38 + 3) % 4
until (TB_38 * 1 + 2) % 4 == 1
if type(TB_1) == "table" then
    for k, v in pairs(TB_1) do
        TB_38 = type(k) == "string" and type(v) == "table" and typeof(v.center) == "Vector3"
        if TB_38 then
            AW[k] = v
        end
    end
end
TB_38 = 7
repeat
    local WC = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_38, 15), string.byte(tostring(TB_38))), 29)
    if bit32.bxor(bit32.lrotate(bit32.bxor(WC, 979813022), 6), 2578491278) == bit32.lrotate(WC, 6) then
        getgenv()[TB_20] = AW
    else
        getgenv()[AW] = TB_20
    end
    TB_38 = (TB_38 + 3) % 8
until (TB_38 * 5 + 5) % 8 == 7
A4, Cf, B8, TB_13, Cz, AY, CB, Bf, AO, B0, Cu, BX, Bt, AQ, Bx, AL, B5, Br, AZ, TB_18 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
TB_29 = 44
repeat
    TB_38 = (TB_29 * 5 + 5) % 8 + 1
    if TB_38 <= 4 then
        if TB_38 <= 2 then
            if TB_38 <= 1 then
                TB_29 = (TB_29 + 53) % 64
            else
                TB_20 = (vector.create((TB_29 * 3 + 3) % 11 + 1, (TB_29 * 8 + 8) % 13 + 1, (TB_29 * 12 + 15) % 17 + 1))
                TB_1 = (vector.create((TB_29 * 4 + 5) % 11 + 1, (TB_29 * 7 + 13) % 13 + 1, (TB_29 * 2 + 4) % 17 + 1))
                TB_31 = (vector.create((TB_29 * 4 + 4) % 11 + 1, (TB_29 * 4 + 4) % 13 + 1, (TB_29 * 7 + 10) % 17 + 1))
                TB_22 = (vector.create((TB_29 * 5 + 6) % 5 + 1, (TB_29 * 2 + 1) % 7 + 1, (TB_29 * 2 + 1) % 9 + 1))
                if vector.dot(vector.cross(TB_20, (vector.cross(TB_1, TB_31))), TB_22) == vector.dot(TB_1 * vector.dot(TB_20, TB_31) - TB_31 * vector.dot(TB_20, TB_1), TB_22) then
                    Cz = fns.fn406
                    Cz()
                    A4 = os.clock()
                    AY = fns.fn67
                    CB = fns.fn232
                else
                    CB = fns.fn406
                    CB()
                    AY = os.clock()
                    Cz = fns.fn67
                    A4 = fns.fn232
                end
                TB_29 = (TB_29 + 37) % 64
            end
        elseif TB_38 <= 3 then
            if (Br or Br or Br and Cz) and (Br or not Br or (Br or not Br)) and not ((Br or Br or Br and Cz) and (Br or not Br or (Br or not Br))) then
                AO = fns.fn675
                Bf = fns.fn983
            else
                Bf = fns.fn675
                AO = fns.fn983
            end
            TB_29 = (TB_29 + 61) % 64
        else
            TB_20 = {
                "blcjxyncr",
                "yaz",
                "dmxlgytgae",
                "ggrv",
                "wqn",
                "glouusoug",
                "brrhiigguf",
                "vsghoplbxrgf",
                "zhctriykal",
                "hxfaec",
                "xmyzr",
                "pnvrq",
                "pxtvbrmdx",
                "psaihcuv",
                "isn"
            }
            if TB_20[(TB_29 * 84 + 113) % 15 + 1] <= TB_20[(TB_29 * 84 + 113) % 15 + 1] then
                Cf = 400
            else
                B5 = 400
            end
            TB_29 = (TB_29 + 37) % 64
        end
    elseif TB_38 <= 6 then
        if TB_38 <= 5 then
            TB_20 = (vector.create((TB_29 * 5 + 1) % 11 + 1, (TB_29 * 11 + 1) % 13 + 1, (TB_29 * 5 + 17) % 17 + 1))
            TB_1 = (vector.create((TB_29 * 6 + 1) % 11 + 1, (TB_29 * 6 + 13) % 13 + 1, (TB_29 * 1 + 10) % 17 + 1))
            TB_31 = (vector.create((TB_29 * 5 + 7) % 11 + 1, (TB_29 * 11 + 2) % 13 + 1, (TB_29 * 14 + 17) % 17 + 1))
            TB_22 = (vector.create((TB_29 * 1 + 1) % 5 + 1, (TB_29 * 3 + 3) % 7 + 1, (TB_29 * 5 + 4) % 9 + 1))
            if vector.dot(vector.cross(TB_20, (vector.cross(TB_1, TB_31))), TB_22) == vector.dot(TB_1 * vector.dot(TB_20, TB_31) - TB_31 * vector.dot(TB_20, TB_1), TB_22) then
                B8 = 24
                B0 = fns.fn260
                Cu = fns.fn756
            else
                Cu = 24
                B8 = fns.fn260
                B0 = fns.fn756
            end
            TB_29 = (TB_29 + 13) % 64
        else
            TB_20 = (vector.create((TB_29 * 3 + 8) % 11 + 1, (TB_29 * 7 + 3) % 13 + 1, (TB_29 * 7 + 8) % 17 + 1))
            TB_1 = (vector.create((TB_29 * 7 + 2) % 11 + 1, (TB_29 * 11 + 10) % 13 + 1, (TB_29 * 13 + 7) % 17 + 1))
            TB_31 = (vector.create((TB_29 * 6 + 9) % 11 + 1, (TB_29 * 3 + 7) % 13 + 1, (TB_29 * 15 + 10) % 17 + 1))
            if vector.dot(vector.cross(TB_20, TB_1), TB_31) == vector.dot(vector.cross(TB_1, TB_31), TB_20) then
                BX = fns.fn454
            else
                Bf = fns.fn454
            end
            TB_29 = (TB_29 + 21) % 64
        end
    elseif TB_38 <= 7 then
        TB_38 = (vector.create((TB_29 * 5 + 8) % 11 + 1, (TB_29 * 4 + 10) % 13 + 1, (TB_29 * 12 + 9) % 17 + 1))
        TB_20 = (vector.create((TB_29 * 5 + 2) % 11 + 1, (TB_29 * 5 + 12) % 13 + 1, (TB_29 * 13 + 10) % 17 + 1))
        TB_1 = (vector.create((TB_29 * 1 + 5) % 11 + 1, (TB_29 * 8 + 10) % 13 + 1, (TB_29 * 4 + 13) % 17 + 1))
        if vector.dot(vector.cross(TB_38, TB_20), TB_1) == vector.dot(vector.cross(TB_20, TB_1), TB_38) then
            TB_13 = setmetatable({}, { __mode = "k" })
            Bt = fn1173
            AQ = fns.fn178
            Bx = fns.fn744
        else
            Bx = setmetatable({}, { __mode = "k" })
            AQ = fn1173
            TB_13 = fns.fn178
            Bt = fns.fn744
        end
        TB_29 = (TB_29 + 37) % 64
    else
        TB_38 = { "idevuerxov", "ggo", "nax", "ibvpw", "qtdcwjqfapa", "yieglrf", "amtxdd", "qavce", "gwxlviqbsk" }
        local Yi = TB_29
        TB_20 = TB_38[Yi % 9 + 1]
        if TB_20:len() >= TB_20:reverse():rep(Yi % 3 + 2):len() then
            Br = fn1481
            TB_18 = function(gz)
                local Character = LocalPlayer.Character
                local I_ = Ce()
                local I1 = not I_
                local I2 = not gz
                local I7 = if I2 then 1 else 0
                local I5 = 2872 * I7 + 1102 * (1 - I7)
                local I6 = 2402 * I7 + 3597 * (1 - I7)
                if not ((I5 * 182 + I6 * 490 + I5 * I6) % 16777213 == 8598228) then
                    I2 = I1
                end
                if I2 or not Character then
                    return false
                elseif gz.Parent == Character then
                    return true
                else
                    return (pcall(function()
                        I_:EquipTool(gz)
                    end))
                end
            end
            B5 = fn1265
            AL = fns.fn439
            AZ = fn1478
        else
            AL = fn1481
            B5 = function(gz)
                local Character = LocalPlayer.Character
                local I_ = Ce()
                local I1 = not I_
                local I2 = not gz
                local I7 = if I2 then 1 else 0
                local I5 = 2872 * I7 + 1102 * (1 - I7)
                local I6 = 2402 * I7 + 3597 * (1 - I7)
                if not ((I5 * 182 + I6 * 490 + I5 * I6) % 16777213 == 8598228) then
                    I2 = I1
                end
                if I2 or not Character then
                    return false
                elseif gz.Parent == Character then
                    return true
                else
                    return (pcall(function()
                        I_:EquipTool(gz)
                    end))
                end
            end
            Br = fn1265
            AZ = fns.fn439
            TB_18 = fn1478
        end
        TB_29 = (TB_29 + 61) % 64
    end
until (TB_29 * 37 + 50) % 64 == 14
TB_38 = AV("CarryChanged")
if TB_38 then
    connection = nil
    TB_29 = 3
    repeat
        TB_20 = (TB_29 * 1 + 0) % 2 + 1
        if TB_20 <= 1 then
            TB_20 = (vector.create((TB_29 * 1 + 2) % 11 + 1, (TB_29 * 7 + 8) % 13 + 1, (TB_29 * 11 + 6) % 17 + 1))
            TB_1 = (vector.create((TB_29 * 6 + 3) % 11 + 1, (TB_29 * 8 + 2) % 13 + 1, (TB_29 * 11 + 14) % 17 + 1))
            TB_31 = (vector.create((TB_29 * 7 + 7) % 11 + 1, (TB_29 * 10 + 13) % 13 + 1, (TB_29 * 4 + 1) % 17 + 1))
            TB_22 = (vector.create((TB_29 * 3 + 7) % 5 + 1, (TB_29 * 2 + 7) % 7 + 1, (TB_29 * 2 + 1) % 9 + 1))
            if vector.dot(vector.cross(TB_20, (vector.cross(TB_1, TB_31))), TB_22) == vector.dot(TB_1 * vector.dot(TB_20, TB_31) - TB_31 * vector.dot(TB_20, TB_1), TB_22) then
                TB_15.Track(fns.fn595)
            else
                TB_15.Track(fns.fn595)
            end
            TB_29 = (TB_29 + 11) % 16
        else
            local Wy = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_29, 10), string.byte(tostring(connection))), 13)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Wy, 3229684835), 14), 1159262240) ~= bit32.lrotate(Wy, 14) then
                TB_38 = connection.OnClientEvent:Connect(fns.onOnClientEvent)
            else
                connection = TB_38.OnClientEvent:Connect(fns.onOnClientEvent)
            end
            TB_29 = (TB_29 + 13) % 16
        end
    until (TB_29 * 13 + 11) % 16 == 10
end
TB_38 = AV("ErrorMessage")
if TB_38 then
    connection2 = nil
    TB_29 = 13
    repeat
        TB_20 = (TB_29 * 1 + 0) % 2 + 1
        if TB_20 <= 1 then
            local Ya = bit32.rrotate(bit32.bxor(bit32.lrotate(TB_29, 1), string.byte(tostring(connection2))), 2)
            if bit32.bxor(bit32.lrotate(bit32.bxor(Ya, 3481109759), 16), 2231357309) == bit32.lrotate(Ya, 16) then
                TB_15.Track(fns.fn927)
            else
                TB_15.Track(fns.fn927)
            end
            TB_29 = (TB_29 + 9) % 16
        else
            TB_20 = { "ibidt", "robrrsp", "fssxyruzz", "rrhvnx", "hqaydlh", "nizk", "jtsm" }
            local X9 = TB_29
            TB_1 = TB_20[X9 % 7 + 1]
            if TB_1:len() <= TB_1:gsub("(.)", "%1%1", X9 % 3 % 2 + 1):len() then
                connection2 = TB_38.OnClientEvent:Connect(fns.onOnClientEvent2)
            else
                TB_38 = connection2.OnClientEvent:Connect(fns.onOnClientEvent2)
            end
            TB_29 = (TB_29 + 15) % 16
        end
    until (TB_29 * 13 + 10) % 16 == 11
end
TB_38 = AV("AreaEntered")
if TB_38 then
    connection3 = nil
    TB_29 = 0
    repeat
        TB_20 = (TB_29 * 1 + 0) % 2 + 1
        if TB_20 <= 1 then
            if TB_29 * 54336531 + 5 + 6 <= TB_29 * 54336531 + 5 + 6 + 4 then
                connection3 = TB_38.OnClientEvent:Connect(fns.onOnClientEvent3)
            else
                TB_38 = connection3.OnClientEvent:Connect(fns.onOnClientEvent3)
            end
            TB_29 = (TB_29 + 3) % 8
        else
            TB_20 = {
                "zlbacecyak",
                "nowdviyco",
                "karpnzwd",
                "anamxhbsk",
                "wjxzw",
                "ekhkjs",
                "iqtzl",
                "dmlf",
                "cbxyxour",
                "omgxhg"
            }
            if TB_20[(TB_29 * 65 + 68) % 10 + 1] < TB_20[(TB_29 * 65 + 68) % 10 + 1] then
                TB_15.Track(fns.fn12)
            else
                TB_15.Track(fns.fn12)
            end
            TB_29 = (TB_29 + 3) % 8
        end
    until (TB_29 * 3 + 5) % 8 == 7
end
TB_38 = AV("EquipToolConfirmed")
if TB_38 then
    connection4 = nil
    TB_29 = 2
    repeat
        TB_20 = (TB_29 * 1 + 0) % 2 + 1
        if TB_20 <= 1 then
            if (TB_29 * 2 + 9) * 13 % 3 == ((TB_29 * 2 + 9) * 13 + 6) % 3 then
                connection4 = TB_38.OnClientEvent:Connect(fns.onOnClientEvent4)
            else
                TB_38 = connection4.OnClientEvent:Connect(fns.onOnClientEvent4)
            end
            TB_29 = (TB_29 + 3) % 8
        else
            if TB_29 * 94217027 + 7 + 4 >= TB_29 * 94217027 + 7 + 4 + 3 then
                TB_15.Track(fns.fn99)
            else
                TB_15.Track(fns.fn99)
            end
            TB_29 = (TB_29 + 1) % 8
        end
    until (TB_29 * 5 + 5) % 8 == 3
end
Cs, Cm, TB_14, B6, B_, TB_17, BO, BK, BG, Bz, Ch, CF, folder, A8, Bv, Bo, Bi, Cg, B1, Bm, Ba, B2, TB_3, AJ, BJ, Bc, AN, CE, Cn, Cc, A6, AU, AE, Bs, Be, B9, Cp, BB, Bh, AR, Cy, Bu = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Cs = {
    interval = 0.1,
    zones = {},
    rarities = {},
    cooldowns = {},
    areaFails = {},
    areaCooldowns = {},
    lockedOnly = false
}
Cm = { interval = 1 }
TB_14 = { interval = 4 }
B6 = { interval = 15 }
B_ = { interval = 20 }
TB_17 = { interval = 25 }
BO = { interval = 8, rarities = {}, unequip = false }
BK = { interval = 20, trails = {} }
BG = { interval = 10 }
Bz = false
Bv = fns.fn417
Bo = fns.fn98
Bi = function(hx, hy)
    local generation
    local Jv = hx.generation or 0
    hx.generation = Jv + 1
    hx.stopped = false
    generation = hx.generation
    task.spawn(function()
        local Js_1
        while true do
            local Jr = AM() and not hx.stopped and hx.generation == generation
            local Jr_1
            if Jr then
                Jr_1, Js_1 = pcall(hy)
                if not Jr_1 then
                    warn("[Ouroboros] loop error: " .. tostring(Js_1))
                end
                local Jr_2 = not AM() or hx.stopped or hx.generation ~= generation
                if Jr_2 then
                    break
                end
                task.wait(hx.interval)
                continue
            end
            break
        end
    end)
end
Cg = fn1190
B1 = fns.fn30
Bm = fns.fn844
Ba = fns.fn811
Ch = task.spawn(fns.worker)
TB_15.Track(fns.fn1075)
B2 = fn1396
TB_3 = fns.fn139
AJ = fns.fn961
BJ = fns.fn213
Bc = function(iO, iP)
    local Ks
    local Kt = {}
    local Ku = os.clock()
    for i, v in ipairs(A9()) do
        if (not iP or iO[v.Id] == true) and (Cs.areaCooldowns[v.Id] or 0) <= Ku then
            table.insert(Kt, v)
        end
    end
    if #Kt == 0 then
        Ck("No zones selected")
        return false
    end
    local Ku_1 = nil
    local preferred = Cs.preferred
    if preferred then
        for i, v in ipairs(Kt) do
            if v.Id == preferred then
                Ku_1 = v
                break
            end
        end
    end
    if not Ku_1 then
        local Kv_3 = Cs.sweepIndex or 0
        Cs.sweepIndex = Kv_3 % #Kt + 1
        Ku_1 = Kt[Cs.sweepIndex]
    end
    local Kt_1 = Bf(Ku_1.Id)
    if not Kt_1 then
        local Kv_4 = Ku_1.DisplayName or Ku_1.Id
        Ck("Finding " .. tostring(Kv_4))
        Kt_1 = B0(Ku_1.Id)
    end
    if not Kt_1 then
        Cs.areaCooldowns[Ku_1.Id] = os.clock() + 30
        local Kv_5 = Ku_1.DisplayName or Ku_1.Id
        Ck("Could not reach " .. tostring(Kv_5))
        return false
    end
    local Kv_6 = Ku_1.DisplayName or Ku_1.Id
    Ck("Scanning " .. tostring(Kv_6))
    Ks = BJ()
    TB_9(Kt_1)
    local Kt_2 = Ba(function()
        return BJ() > Ks
    end, 1.5)
    local Kv_7 = not Kt_2
    if Kv_7 ~= false then
        Kv_7 = Cs.preferred == Ku_1.Id
    end
    if Kv_7 then
        Cs.preferred = nil
    end
    return Kt_2
end
AN = function()
    local KR
    KR = nil
    local KY_1
    if not AX(fireproximityprompt) then
        Ck("fireproximityprompt is unavailable")
        return
    end
    if Cr.Carrying then
        AJ()
        return
    end
    local zones = Cs.zones
    local rarities = Cs.rarities
    local KU = Bm(zones) > 0
    local KV = Bm(rarities) > 0
    local KW = AH()
    if not KW then
        return
    end
    local Position = KW.Position
    KR, KY_1 = nil, nil
    local KW_1 = os.clock()
    for i, v in ipairs(AQ()) do
        local KZ = tostring(v.uid)
        local KZ_1 = (Cs.cooldowns[KZ] or 0) <= KW_1
        local K__1 = not KU
        if not K__1 then
            K__1 = v.areaId ~= nil and zones[v.areaId] == true
        end
        local K0_2 = not KV
        local K1 = K__1
        if not K0_2 then
            K0_2 = v.rarity ~= nil and rarities[v.rarity] == true
        end
        local K__3 = K0_2
        local K0_3 = not Cs.lockedOnly
        if not K0_3 then
            local K2_1 = v.areaId ~= nil and BX(v.areaId)
            K0_3 = K2_1
        end
        local K2_2 = K0_3
        local K0_4 = v.areaId == nil
        if not K0_4 then
            K0_4 = (Cs.areaCooldowns[v.areaId] or 0) <= KW_1
        end
        if KZ_1 and K1 and K__3 and K2_2 and K0_4 then
            local Magnitude = (v.position - Position).Magnitude
            if not KY_1 or Magnitude < KY_1 then
                KY_1 = Magnitude
                KR = v
            end
        end
    end
    if not KR then
        if not Bv() then
            return
        end
        Bc(zones, KU)
        Bo()
        return
    end
    if not Bv() then
        return
    end
    local KS_1 = KR.boxId or "box"
    Ck("Stealing " .. tostring(KS_1))
    TB_9(KR.position + Vector3.new(0, 3, 0))
    Ba(function()
        return KR.prompt.Parent == nil or KR.prompt.Enabled
    end, 0.35)
    local Ld = 1
    while Ld <= 2 do
        if Cr.Carrying or KR.prompt.Parent == nil then
            break
        end
        pcall(fireproximityprompt, KR.prompt)
        local Li = if Ba(function()
            return Cr.Carrying or KR.prompt.Parent == nil
        end, 0.6) then 1 else 0
        if Li == 1 then
            break
        end
        Ld += 1
    end
    local areaId = KR.areaId
    if Cr.Carrying then
        if AJ() then
            if areaId then
                Cs.areaFails[areaId] = nil
                Cs.preferred = areaId
            end
        elseif areaId then
            local KU_1 = (Cs.areaFails[areaId] or 0) + 1
            Cs.areaFails[areaId] = KU_1
            if KU_1 >= 3 then
                Cs.areaFails[areaId] = nil
                Cs.areaCooldowns[areaId] = os.clock() + 60
                Ck("Losing boxes in " .. areaId .. ", skipping it")
            end
        end
    else
        Cs.cooldowns[tostring(KR.uid)] = os.clock() + 2
    end
    Bo()
end
CE = function(j1, j2)
    local Lq = false
    local Lv = 1
    while Lv <= 2 do
        Cr.LastError = ""
        if B5(j1) then
            Lq = Ba(function()
                return Cr.EquippedTool == j1.Name
            end, 1)
            if Lq then
                break
            end
            task.wait(0.2)
            Lv += 1
            continue
        end
        task.wait(0.2)
        Lv += 1
    end
    if not Lq then
        Ck("Equip failed: " .. j1.Name)
        return false
    end
    local LA = 1
    while true do
        if not (LA <= 3) then
            return false
        end
        local LB = LA
        local Lq_1 = AD()
        if not Lq_1 then
            break
        end
        Cr.LastError = ""
        Cj("PlaceBox", Lq_1)
        local Lq_2 = Ba(function()
            return j1.Parent == nil or Cr.LastError ~= ""
        end, 1)
        if Lq_2 and j1.Parent == nil then
            Cr.Placed = Cr.Placed + 1
            Ck("Box placed")
            Ba(function()
                return Cr.EquippedTool ~= j1.Name
            end, 0.5)
            return true
        end
        if Cr.LastError ~= "" then
            Ck("Place failed: " .. Cr.LastError)
            if Cr.LastError == "ENTER_AREA" then
                TB_9(j2.Position + Vector3.new(0, 4, 0))
                Ba(function()
                    local Lo = Cr.Area == nil or Cu(Cr.Area) == nil
                    return Lo
                end, 1.5)
            end
        end
        if LB == 3 then
            return false
        end
        LA += 1
    end
    return false
end
Cn = function()
    local LG = Bx("BoxUid")
    local LH = #LG == 0
    local LL = if LH then 1 else 0
    local LJ = 3820 * LL + 2791 * (1 - LL)
    local LK = 3475 * LL + 663 * (1 - LL)
    if not ((LJ * 2870 + LK * 2225 + LJ * LK) % 16777213 == 15192562) then
        LH = Cr.Carrying
    end
    if LH then
        return
    end
    local LH_1 = Bb()
    if not LH_1 then
        Ck("Base not found")
        return
    end
    if not Bv() then
        return
    end
    Ck("Placing boxes")
    TB_9(LH_1, 0.15)
    local LF = BA()
    if not LF then
        Ba(function()
            LF = BA()
            return LF ~= nil
        end, 2)
    end
    if not LF then
        Bo()
        Ck("Base not loaded")
        return
    end
    Ba(function()
        local LD = Cr.Area == nil or Cu(Cr.Area) == nil
        return LD
    end, 2)
    local LH_2 = #LG
    local LO = 1
    while LO <= LH_2 do
        local LG_1 = not AM() or Cm.stopped or Cr.Carrying
        if LG_1 then
            break
        end
        local LG_2 = Bx("BoxUid")
        local LH_3 = #LG_2 == 0 or not CE(LG_2[1], LF)
        if LH_3 then
            break
        end
        LO += 1
    end
    Bo()
end
Cc = fns.fn449
A6 = fns.fn292
AU = fn1369
AE = fns.fn718
Bs = fns.fn312
Be = fns.fn816
B9 = fns.fn871
CF = {}
Cp = fns.fn496
BB = function(mG)
    local Nw
    Nw = nil
    Nw = CF[mG]
    if not Nw then
        return
    end
    CF[mG] = nil
    pcall(function()
        Nw.billboard:Destroy()
    end)
    pcall(function()
        Nw.highlight:Destroy()
    end)
end
Bh = fn1293
AR = fns.fn158
Cy = fn1472
Bu = fns.fn914
A8 = task.spawn(worker2)
TB_15.Track(fn1441)
TB_15.SetAutoSteal = fns.fn598
TB_15.SetStealDelay = fns.fn981
TB_15.SetStealUnlockedOnly = fn1146
TB_15.SetStealZones = fn1416
TB_15.SetStealRarities = fn1310
TB_15.SetBoxEsp = fn1242
TB_15.SetAutoPlaceBoxes = fns.fn645
TB_15.SetAutoOpenBoxes = fns.fn681
TB_15.SetAutoEquipBest = fn1300
TB_15.SetAutoPetSlots = fn1302
TB_15.SetAutoTreadmill = fns.fn979
TB_15.SetAutoSell = fns.fn593
TB_15.SetSellRarities = fn1211
TB_15.SetSellUnequip = fns.fn631
TB_15.SetSellDelay = fns.fn651
TB_15.SetAutoTrails = fn1400
TB_15.SetTrailChoices = fns.fn882
TB_15.SetAutoIndex = fn1358
TB_15.TeleportToBase = fns.fn632
TB_15.TeleportToZone = fns.fn837
TB_15.Track(fns.fn52)
TB_20 = function()
    local S0
    local onDiscord
    local S1
    S0 = nil
    S1 = nil
    onDiscord = nil
    local S2, SaveManager, S4, S5, Library, S8, Toggles, Ta, Tb, Tc, ThemeManager, Options
    Ta = "https://ouroboros-hub-rbx.web.app/"
    S4 = "Steal A Verity!"
    S5 = "https://rscripts.net/@Ouroboros"
    S0 = "https://discord.gg/synapsex"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    BE(TB_15, Library)
    S1 = function(pv, pw)
        local OI = AX(setclipboard) and setclipboard
        local OJ = OI
        if not OJ then
            local OI_1 = AX(toclipboard) and toclipboard
            OJ = OI_1 or nil
        end
        local OI_2 = OJ
        if not OI_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local OJ_1 = pcall(OI_2, pv)
        if OJ_1 then
            Library:Notify(pw)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        S1(S0, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = S0, Copyable = true }, "|", S4, "|", "v0.3" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    Tc = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function Tf(pL)
        local DiscordGroup = pL:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in Tc do
        if k ~= "Info" then
            Tf(v)
        end
    end
    Tb = A2()
    S8 = BH()
    S2 = BS()
    local function Tf_1()
        local ON
        ON = nil
        local Label
        local StealingGroup = Tc.Main:AddLeftGroupbox("Stealing", "package-open")
        Label = StealingGroup:AddLabel(Cr.Status, true)
        StealingGroup:AddToggle("AutoSteal", {
            Text = "Auto Steal",
            Default = false,
            Callback = function(p1)
                TB_15.SetAutoSteal(p1)
            end
        })
        StealingGroup:AddDropdown("StealZones", {
            Text = "Zone Filter",
            Values = Tb,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(p5)
                TB_15.SetStealZones(p5)
            end
        })
        StealingGroup:AddDropdown("StealRarities", {
            Text = "Rarity Filter",
            Values = S8,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(p8)
                TB_15.SetStealRarities(p8)
            end
        })
        StealingGroup:AddSlider("StealDelay", {
            Text = "Steal Delay",
            Default = 0.1,
            Min = 0,
            Max = 3,
            Rounding = 2,
            Suffix = "s",
            Callback = function(qa)
                TB_15.SetStealDelay(qa)
            end
        })
        StealingGroup:AddToggle("StealUnlockedOnly", {
            Text = "Only Unlocked Zones",
            Default = false,
            Callback = function(qc)
                TB_15.SetStealUnlockedOnly(qc)
            end
        })
        StealingGroup:AddToggle("BoxEsp", {
            Text = "Box ESP",
            Default = false,
            Callback = function(qe)
                TB_15.SetBoxEsp(qe)
            end
        })
        local BaseGroup = Tc.Main:AddLeftGroupbox("Base", "house")
        BaseGroup:AddToggle("AutoPlaceBoxes", {
            Text = "Auto Place Boxes",
            Default = false,
            Callback = function(qh)
                TB_15.SetAutoPlaceBoxes(qh)
            end
        })
        BaseGroup:AddToggle("AutoOpenBoxes", {
            Text = "Auto Open Boxes",
            Default = false,
            Callback = function(qj)
                TB_15.SetAutoOpenBoxes(qj)
            end
        })
        BaseGroup:AddToggle("AutoEquipBest", {
            Text = "Auto Equip Best",
            Default = false,
            Callback = function(ql)
                TB_15.SetAutoEquipBest(ql)
            end
        })
        BaseGroup:AddToggle("AutoPetSlots", {
            Text = "Auto Upgrade Pet Slots",
            Default = false,
            Callback = function(qn)
                TB_15.SetAutoPetSlots(qn)
            end
        })
        BaseGroup:AddToggle("AutoTreadmill", {
            Text = "Auto Upgrade Treadmill",
            Default = false,
            Callback = function(qp)
                TB_15.SetAutoTreadmill(qp)
            end
        })
        local TeleportGroup = Tc.Main:AddLeftGroupbox("Teleport", "map-pin")
        TeleportGroup:AddButton({
            Text = "Teleport to Base",
            Func = function()
                TB_15.TeleportToBase()
            end
        })
        local OQ = Tb[1] or ""
        TeleportGroup:AddDropdown("TeleportZone", { Text = "Zone", Values = Tb, Default = OQ, Multi = false, AllowNull = true })
        TeleportGroup:AddButton({
            Text = "Teleport to Zone",
            Func = function()
                TB_15.TeleportToZone(Options.TeleportZone.Value)
            end
        })
        local SellingGroup = Tc.Main:AddRightGroupbox("Selling", "banknote")
        SellingGroup:AddToggle("AutoSell", {
            Text = "Auto Sell",
            Default = false,
            Callback = function(qx)
                TB_15.SetAutoSell(qx)
            end
        })
        SellingGroup:AddDropdown("SellRarities", {
            Text = "Sell These Rarities",
            Values = S8,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(qz)
                TB_15.SetSellRarities(qz)
            end
        })
        SellingGroup:AddToggle("SellUnequip", {
            Text = "Also Sell Placed Pets",
            Default = false,
            Callback = function(qB)
                TB_15.SetSellUnequip(qB)
            end
        })
        SellingGroup:AddSlider("SellDelay", {
            Text = "Sell Delay",
            Default = 8,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = function(qD)
                TB_15.SetSellDelay(qD)
            end
        })
        local ShopsGroup = Tc.Main:AddRightGroupbox("Shops", "shopping-cart")
        ShopsGroup:AddToggle("AutoTrails", {
            Text = "Auto Buy Trails",
            Default = false,
            Callback = function(qG)
                TB_15.SetAutoTrails(qG)
            end
        })
        ShopsGroup:AddDropdown("TrailChoices", {
            Text = "Trail Filter",
            Values = S2,
            Default = {},
            Multi = true,
            AllowNull = true,
            Callback = function(qJ)
                TB_15.SetTrailChoices(qJ)
            end
        })
        local IndexGroup = Tc.Main:AddRightGroupbox("Index", "book-open")
        IndexGroup:AddToggle("AutoIndex", {
            Text = "Auto Claim Index",
            Default = false,
            Callback = function(qM)
                TB_15.SetAutoIndex(qM)
            end
        })
        ON = task.spawn(function()
            while not Library.Unloaded do
                task.wait(0.5)
                pcall(function()
                    Label:SetText(Cr.Status)
                end)
            end
        end)
        TB_15.Track(function()
            pcall(task.cancel, ON)
        end)
    end
    Tf_1()
    local function Tf_2()
        local O6
        local O1
        O1 = nil
        O6 = nil
        local O2, Label2, O4, Label3, O7, O8, O9, Label
        local Pg_2
        local Pf_1, Pf_2
        local Pe_1
        O9 = Color3.fromRGB(120, 230, 150)
        local Pb = Color3.fromRGB(120, 180, 255)
        O7 = Color3.fromRGB(255, 190, 120)
        local Pc = Color3.fromRGB(180, 180, 180)
        O4 = function(q1, q2, q3)
            return string.format('%s: <font color="#%s">%s</font>', q1, q3:ToHex(), tostring(q2))
        end
        local Pd = "Unknown"
        if AX(identifyexecutor) then
            Pe_1, Pf_1 = pcall(identifyexecutor)
            local Pg_1 = Pe_1 and type(Pf_1) == "string"
            if Pg_1 then
                Pd = Pf_1
            end
        end
        local Pe_2 = 0
        for i, v in ipairs({ "hookfunction", "getconnections", "fireproximityprompt", "setclipboard", "getgenv", "cloneref" }) do
            local Pr = v
            Pf_2, Pg_2 = pcall(function()
                return getgenv()[Pr]
            end)
            local Ph = Pf_2 and AX(Pg_2)
            if Ph then
                Pe_2 += 1
            end
        end
        local Pf_3 = "(" .. Pe_2 .. "/6 globals)"
        O6 = os.clock()
        O2 = function()
            local OS = math.floor(os.clock() - O6)
            if OS < 60 then
                return OS .. "s"
            elseif OS < 3600 then
                return string.format("%dm %ds", OS // 60, OS % 60)
            else
                return string.format("%dh %dm", OS // 3600, OS % 3600 // 60)
            end
        end
        local UserGroup = Tc.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(O4("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, O9), true)
        UserGroup:AddLabel(O4("UserId", tostring(LocalPlayer.UserId), Pb), true)
        UserGroup:AddLabel(O4("Executor", Pd .. "  " .. Pf_3, O9), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(O4("Session", O2(), O7), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                S1(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                S1("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = Tc.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(O4("Game", S4, Pb), true)
        Label2 = SessionGroup:AddLabel(O4("Players", "0/0", O9), true)
        O8 = tostring(game.JobId)
        local Pb_1 = #O8 > 18 and string.sub(O8, 1, 18) .. "..."
        local Pe_4 = Pb_1 or O8
        SessionGroup:AddLabel(O4("Job", Pe_4, Pc), true)
        Label = SessionGroup:AddLabel(O4("Ping", "0 ms", O7), true)
        SessionGroup:AddDivider()
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                TeleportService:Teleport(game.PlaceId, LocalPlayer)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                S1(O8, "Copied Job ID")
            end
        })
        O1 = task.spawn(function()
            local OV_1
            local OU_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(O4("Session", O2(), O7))
                Label2:SetText(O4("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), O9))
                OU_1, OV_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local OU_2 = OU_1 and OV_1 .. " ms" or "n/a"
                Label:SetText(O4("Ping", OU_2, O7))
            end
        end)
        TB_15.Track(function()
            local O0 = if coroutine.status(O1) ~= "dead" then 1 else 0
            if O0 == 1 then
                pcall(task.cancel, O1)
            end
        end)
        local SocialsGroup = Tc.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                S1(S5, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                S1(Ta, "Copied website link")
            end
        })
    end
    Tf_2()
    local function Tf_3()
        local sf
        local sd
        local sc
        local se
        local MovementGroup = Tc.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        local FlyGroup = Tc.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        sc = {}
        local sb = {}
        sd = {}
        sf = {}
        se = {}
        local function sg()
            for k, v in sc do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(sc)
        end
        local function sk()
            for k, v in sd do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(sd)
        end
        local function so()
            for k, v in se do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(se)
        end
        local function ss(st)
            if not st:IsA("ProximityPrompt") then
                return
            end
            if sf[st] == nil then
                sf[st] = {
                    HoldDuration = st.HoldDuration,
                    MaxActivationDistance = st.MaxActivationDistance,
                    RequiresLineOfSight = st.RequiresLineOfSight
                }
            end
            st.HoldDuration = 0
            st.MaxActivationDistance = 50
            st.RequiresLineOfSight = false
        end
        local function sv()
            for k, v in sf do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(sf)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                so()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                sk()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                sg()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    if descendant:IsA("ProximityPrompt") then
                        pcall(ss, descendant)
                    end
                end
            else
                sv()
            end
        end)
        table.insert(sb, Workspace.DescendantAdded:Connect(function(sO)
            local P7 = Toggles.InstantProximityPrompt.Value and sO:IsA("ProximityPrompt")
            if P7 then
                ss(sO)
            end
        end))
        table.insert(sb, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for i, descendant in ipairs(Character:GetDescendants()) do
                    if descendant:IsA("BasePart") then
                        if sc[descendant] == nil then
                            sc[descendant] = descendant.CanCollide
                        end
                        descendant.CanCollide = false
                    end
                end
            end
        end))
        table.insert(sb, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Qm = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Qm then
                Qm:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(sb, RunService.RenderStepped:Connect(function(ta)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Qp = Character and Character:FindFirstChildOfClass("Humanoid")
            local Qq = Character
            if Qq then
                Qq = Character:FindFirstChild("HumanoidRootPart")
            end
            local Qo_1 = Qq
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Qp then
                if sd[Qp] == nil then
                    sd[Qp] = Qp.WalkSpeed
                end
                Qp.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Qo_1 and Qp and CurrentCamera then
                if se[Qp] == nil then
                    se[Qp] = Qp.PlatformStand
                end
                Qp.PlatformStand = true
                local Qq_4 = Vector3.zero
                local Qw = if not UserInputService:GetFocusedTextBox() then 1 else 0
                if Qw == 1 then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Qq_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Qq_4 -= CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                        Qq_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Qq_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Qq_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Qq_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Qo_1.AssemblyLinearVelocity = Vector3.zero
                if Qq_4.Magnitude > 0 then
                    Qo_1.CFrame = Qo_1.CFrame + Qq_4.Unit * Options.FlySpeed.Value * ta
                end
            end
        end))
        TB_15.Track(function()
            for k, v in sb do
                v:Disconnect()
            end
            sg()
            sk()
            so()
            sv()
        end)
    end
    Tf_3()
    local function Tf_4()
        local RD, RE, RF, RG, RH, RI, RJ, RK, RL, RM, Label, RO, RP, RQ
        RO = {}
        RI = {}
        RF = nil
        RQ = 0
        RG = 0
        RK = false
        RL = os.clock()
        local MenuGroup = Tc.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        RD = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local QL = not CurrentCamera or not AX(VirtualUser.CaptureController) or not AX(VirtualUser.ClickButton2)
            if QL then
                return false
            end
            local QL_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not QL_1 then
                return false
            end
            RG += 1
            RL = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. RG)
            end)
            return true
        end
        RM = function(tU)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not tU)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not tU
                end
            end)
            if not tU then
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
        RJ = function(t9)
            if t9.ClassName == "ParticleEmitter" or t9.ClassName == "Trail" or t9.ClassName == "Smoke" or t9.ClassName == "Fire" or t9.ClassName == "Sparkles" or t9.ClassName == "Explosion" or t9.ClassName == "Beam" then
                if RO[t9] == nil then
                    RO[t9] = t9.Enabled
                end
                pcall(function()
                    t9.Enabled = false
                end)
            end
        end
        RH = function()
            for k, v in RO do
                local QX = k
                local QZ = v
                if QX.Parent then
                    pcall(function()
                        QX.Enabled = QZ
                    end)
                end
            end
            table.clear(RO)
            if RF then
                pcall(function()
                    settings().Rendering.QualityLevel = RF.Quality
                end)
                Lighting.GlobalShadows = RF.Shadows
                Lighting.FogEnd = RF.Fog
                RF = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(uo)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not uo)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(ut)
                if ut then
                    if not RF then
                        RF = {
                            Quality = settings().Rendering.QualityLevel,
                            Shadows = Lighting.GlobalShadows,
                            Fog = Lighting.FogEnd
                        }
                    end
                    pcall(function()
                        settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
                    end)
                    Lighting.GlobalShadows = false
                    Lighting.FogEnd = 9000000000
                    for i, descendant in ipairs(Workspace:GetDescendants()) do
                        pcall(RJ, descendant)
                    end
                else
                    RH()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        RM(true)
        local ScriptGroup = Tc.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            RM(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            RM(true)
        end
        table.insert(RI, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                RD()
            end
        end))
        table.insert(RI, Workspace.DescendantAdded:Connect(function(uM)
            if Toggles.FpsBoost.Value then
                RJ(uM)
            end
        end))
        RE = function(uQ)
            local Rf = RK or Library.Unloaded
            local Rk = if Rf then 1 else 0
            local Ri = 1501 * Rk + 2561 * (1 - Rk)
            local Rj = 1111 * Rk + 3484 * (1 - Rk)
            if not ((Ri * 2741 + Rj * 1905 + Ri * Rj) % 16777213 == 7898307) then
                Rf = not Toggles.AutoReconnect.Value
            end
            if Rf then
                return
            end
            RK = true
            local Re = RQ
            local Rf_1 = pcall(function()
                if uQ then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Rf_1 then
                RK = false
                if not uQ and Re == RQ then
                    task.delay(1.5, function()
                        if Re == RQ then
                            RE(true)
                        end
                    end)
                end
            end
        end
        table.insert(RI, TeleportService.TeleportInitFailed:Connect(function(u7)
            local Rm
            if u7 == LocalPlayer and RK then
                RK = false
                Rm = RQ
                task.delay(3, function()
                    if Rm == RQ then
                        RE(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Rr = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Rr then
                return
            end
            table.insert(RI, Rr.ChildAdded:Connect(function(vm)
                if vm.Name == "ErrorPrompt" then
                    RE(false)
                end
            end))
        end)
        RP = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    RM(true)
                end
                local Ru = Toggles.AntiAfk.Value and os.clock() - RL >= 60
                if Ru then
                    RD()
                end
                task.wait(1)
            end
        end)
        TB_15.Track(function()
            RQ += 1
            for k, v in RI do
                v:Disconnect()
            end
            pcall(task.cancel, RP)
            RM(false)
            RH()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Tf_4()
    local function Tf_5()
        local SP, SQ, SR, SS
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Tc.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/StealAVerity")
        local ST = SaveManager:BuildConfigSection(Tc.Settings)
        SS = function(vN, vO)
            local RY_1 = (vN == "Toggle" and Toggles or Options)[vO]
            local RX_2 = type(RY_1) == "table" and RY_1.Type == vN
            return RX_2 and RY_1 or nil
        end
        SQ = function(vX, vY)
            local Type = vY.Type
            if Type == "Toggle" then
                return { idx = vX, type = "Toggle", value = vY.Value == true }
            elseif Type == "Slider" then
                return { idx = vX, type = "Slider", value = tostring(vY.Value) }
            elseif Type == "Dropdown" then
                return { idx = vX, type = "Dropdown", multi = vY.Multi == true, value = vY.Value }
            elseif Type == "Input" then
                local R1 = vY.Value or ""
                return { idx = vX, type = "Input", text = tostring(R1) }
            elseif Type == "ColorPicker" then
                return { idx = vX, type = "ColorPicker", value = vY.Value:ToHex(), transparency = vY.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = vX,
                    type = "KeyPicker",
                    mode = vY.Mode,
                    key = vY.Value,
                    modifiers = vY.Modifiers,
                    toggled = vY.Toggled
                }
            else
                return nil
            end
        end
        SP = function()
            local R7 = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local R8 = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if R8 then
                        local R8_1 = SQ(k, v)
                        if R8_1 then
                            R7[#R7 + 1] = R8_1
                        end
                    end
                end
            end
            table.sort(R7, function(v7, v8)
                if v7.type ~= v8.type then
                    return v7.type < v8.type
                end
                return v7.idx < v8.idx
            end)
            return { objects = R7 }
        end
        SR = function(wa)
            local Sr
            Sr = nil
            local Ss = type(wa) ~= "table" or type(wa.idx) ~= "string" or type(wa.type) ~= "string" or SaveManager.Ignore[wa.idx]
            if Ss then
                return false
            end
            Sr = SS(wa.type, wa.idx)
            if not Sr then
                return false
            end
            local Ss_1 = pcall(function()
                if wa.type == "Input" then
                    if type(wa.text) ~= "string" then
                        return
                    end
                    Sr:SetValue(wa.text)
                elseif wa.type == "ColorPicker" then
                    Sr:SetValueRGB(Color3.fromHex(wa.value), wa.transparency)
                elseif wa.type == "KeyPicker" then
                    Sr:SetValue({ wa.key, wa.mode, wa.modifiers })
                    if wa.mode == "Toggle" and wa.toggled ~= nil then
                        Sr.Toggled = wa.toggled
                        Sr:Update()
                    end
                else
                    Sr:SetValue(wa.value)
                end
            end)
            return Ss_1
        end
        ST:AddDivider()
        ST:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        ST:AddButton("Export Config to Clipboard", function()
            local Sv_1
            local Su_1
            Su_1, Sv_1 = pcall(HttpService.JSONEncode, HttpService, SP())
            if Su_1 then
                local Su_2 = AX(setclipboard) and setclipboard
                local Sw = Su_2
                if not Sw then
                    local Su_3 = AX(toclipboard) and toclipboard
                    local Sx = Su_3
                    local SB = if Sx then 1 else 0
                    local Sz = 3609 * SB + 2968 * (1 - SB)
                    local SA = 1078 * SB + 3252 * (1 - SB)
                    if not ((Sz * 779 + SA * 2277 + Sz * SA) % 16777213 == 9156519) then
                        Sx = nil
                    end
                    Sw = Sx
                end
                local Su_4 = Sw
                local Sw_1 = type(Su_4) == "function" and pcall(Su_4, Sv_1)
                if Sw_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        ST:AddButton("Import Config from Clipboard Text", function()
            local SE_1
            local SC = Options.SaveManager_ImportSource.Value or ""
            local SC_1
            local SD = tostring(SC):match("^%s*(.-)%s*$")
            if SD == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #SD > 262144 then
                Library:Notify("That config is too large")
                return
            end
            SC_1, SE_1 = pcall(HttpService.JSONDecode, HttpService, SD)
            local SD_1 = not SC_1 or type(SE_1) ~= "table" or type(SE_1.objects) ~= "table"
            if SD_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #SE_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local SC_2 = 0
            for i, v in ipairs(SE_1.objects) do
                if SR(v) then
                    SC_2 += 1
                end
            end
            if SC_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local SE_2 = SC_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(SC_2, SE_2), 6)
        end)
        ThemeManager:LoadDefault()
        SaveManager:LoadAutoloadConfig()
        if Options.StealDelay then
            TB_15.SetStealDelay(Options.StealDelay.Value)
        end
        if Toggles.StealUnlockedOnly then
            TB_15.SetStealUnlockedOnly(Toggles.StealUnlockedOnly.Value)
        end
        if Options.StealZones then
            TB_15.SetStealZones(Options.StealZones.Value)
        end
        if Options.StealRarities then
            TB_15.SetStealRarities(Options.StealRarities.Value)
        end
        if Options.SellRarities then
            TB_15.SetSellRarities(Options.SellRarities.Value)
        end
        if Options.SellDelay then
            TB_15.SetSellDelay(Options.SellDelay.Value)
        end
        if Options.TrailChoices then
            TB_15.SetTrailChoices(Options.TrailChoices.Value)
        end
        if Toggles.SellUnequip then
            TB_15.SetSellUnequip(Toggles.SellUnequip.Value)
        end
        if Toggles.BoxEsp then
            TB_15.SetBoxEsp(Toggles.BoxEsp.Value)
        end
        if Toggles.AutoSteal then
            TB_15.SetAutoSteal(Toggles.AutoSteal.Value)
        end
        if Toggles.AutoPlaceBoxes then
            TB_15.SetAutoPlaceBoxes(Toggles.AutoPlaceBoxes.Value)
        end
        if Toggles.AutoOpenBoxes then
            TB_15.SetAutoOpenBoxes(Toggles.AutoOpenBoxes.Value)
        end
        if Toggles.AutoEquipBest then
            TB_15.SetAutoEquipBest(Toggles.AutoEquipBest.Value)
        end
        if Toggles.AutoPetSlots then
            TB_15.SetAutoPetSlots(Toggles.AutoPetSlots.Value)
        end
        if Toggles.AutoTreadmill then
            TB_15.SetAutoTreadmill(Toggles.AutoTreadmill.Value)
        end
        if Toggles.AutoSell then
            TB_15.SetAutoSell(Toggles.AutoSell.Value)
        end
        if Toggles.AutoTrails then
            TB_15.SetAutoTrails(Toggles.AutoTrails.Value)
        end
        if Toggles.AutoIndex then
            TB_15.SetAutoIndex(Toggles.AutoIndex.Value)
        end
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    Tf_5()
end
TB_20()
