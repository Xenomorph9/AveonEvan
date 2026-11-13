local fns = {}
local Cr
local C9
local B8
local DR
local Dy
local Cx
local Df
local CX
local DE
local CD
local Dl
local Ck
local C2
local DK
local B1
local CJ
local Dr
local Cq
local C8
local DQ
local B7
local CP
local Dx
local Cw
local De
local Cd
local DD
local C1
local DJ
local B0
local Dq
local Cp
local CI
local DP
local B6
local Cv
local Dd
local Cc
local CV
local CB
local Dj
local Ci
local C0
local B_
local CH
local DI
local Co
local C6
local DO
local CN
local Dv
local Cu
local CoreGui
local Cb
local CU
local DB
local CA
local Di
local Ch
local C_
local DH
local BZ
local PlayerGui
local Cn
local C5
local DN
local B4
local LocalPlayer
local Du
local Ct
local Db
local Ca
local DA
local Dh
local Cg
local CZ
local BY
local CF
local State
local DG
local Cm
local C4
local DM
local B3
local CL
local Cs
local Dt
local Da
local B9
local CR
local Dz
local Cy
local Cf
local CY
local DF
local CE
local Dm
local B2
local DL
local Ds
local CK
function fns.fn10(Z)
    return type(Z) == "function"
end
function fns.fn14()
    local L_ = Cd("GameService")
    if not L_ then
        return
    end
    local L0 = Cs() and B4(L_.GoLobby)
    if L0 then
        pcall(L_.GoLobby, L_)
        return
    end
    local L0_1 = CA(PlayerGui, "Main", "Container", "ReturnLobby")
    local L1 = L0_1 and L0_1.Visible and B4(L_.ReturnLobby)
    if L1 then
        pcall(L_.ReturnLobby, L_)
    end
end
function fns.fn79(ip, iq)
    local K4 = Di()
    local K5 = K4 and K4.Vault and K4.Vault.Blacklist
    if type(K5) ~= "table" then
        return false
    elseif table.find(K5, ip) then
        return true
    else
        local K5_1 = iq and iq.Type and table.find(K5, iq.Type)
        if K5_1 then
            return true
        end
        return false
    end
end
function fns.fn110()
    local PN_1
    local PL = State.Enabled.MobEsp or State.Enabled.ItemEsp
    local PL_1
    local PS = if PL then 1 else 0
    local PQ = 2130 * PS + 3969 * (1 - PS)
    local PR = 2194 * PS + 2573 * (1 - PS)
    if not ((PQ * 2944 + PR * 2087 + PQ * PR) % 16777213 == 15522818) then
        PL = State.Enabled.NpcEsp
    end
    if not PL then
        PL = State.Enabled.BusEsp
    end
    local PM = PL
    local PM_1
    if not PM then
        Cw()
        return
    end
    PM_1, PL_1, PN_1 = CN()
    if not PN_1 then
        Cw()
        return
    end
    local Position = PN_1.Position
    local PM_2 = tonumber(State.EspDistance) or 500
    local PO = Cx(Position, PM_2)
    for k, v in PO do
        local PL_3 = DF[k]
        if not PL_3 or PL_3.kind ~= v.kind then
            if PL_3 then
                CD(PL_3)
                DF[k] = nil
            end
            DL(k, v.part, v.kind, v.label)
            PL_3 = DF[k]
        end
        if PL_3 then
            PL_3.root = v.part
            PL_3.label = v.label
            if PL_3.highlight then
                PL_3.highlight.Adornee = k
            end
            if PL_3.gui then
                PL_3.gui.Adornee = v.part
                B8(PL_3.gui, v.label, v.distance)
            end
        end
    end
    for k, v in DF do
        if not PO[k] then
            CD(v)
            DF[k] = nil
        end
    end
end
function fns.fn136()
    local Hx = B3()
    if (Hx and Hx.Config and Hx.Config.Type) == "Melee" then
        return Hx
    end
    local Hy_1 = Cq("Melee")
    local HA = Cd("ItemService")
    local HB = Hy_1 and HA and B4(HA.ToggleEquip)
    if HB then
        pcall(HA.ToggleEquip, HA, Hy_1)
        task.wait(0.15)
        if not B_() then
            return nil
        end
        local Hx_1 = B3()
        if (Hx_1 and Hx_1.Config and Hx_1.Config.Type) == "Melee" then
            return Hx_1
        end
    end
end
function fns.worker2()
    while B_() do
        if State.Enabled.MobEsp or State.Enabled.ItemEsp or State.Enabled.NpcEsp or State.Enabled.BusEsp then
            BY()
            task.wait(0.2)
        else
            Cw()
            task.wait(0.25)
        end
    end
end
function fns.fn154()
    local MK = CH()
    local ML = MK and tonumber(MK.Slots)
    local ML_1 = Di()
    local MM = ML_1 and ML_1.Vault and tonumber(ML_1.Vault.SlotLimit)
    if ML and MM then
        return ML >= MM
    end
    return false
end
function fns.fn220()
    if not Cs() then
        return
    end
    local LX = Cd("GameService")
    local LY = LX and B4(LX.PlayAgain)
    if LY then
        pcall(LX.PlayAgain, LX)
    end
end
function fns.fn229()
    return { Prey = Db, Recipes = Dh, Mobs = C1, Agencies = CV, BusSkins = CP, Quests = CJ }
end
function fns.fn249(n9, oa, ob, oc)
    local oe = BZ[ob]
    local og = C6()
    local highlight = Instance.new("Highlight")
    highlight.Name = "Esp"
    highlight.Adornee = n9
    highlight.FillColor = oe.fill
    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
    highlight.FillTransparency = 0.65
    highlight.OutlineTransparency = 0.1
    highlight.Parent = og
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "Esp"
    billboardGui.AlwaysOnTop = true
    billboardGui.Size = UDim2.fromOffset(160, 36)
    billboardGui.StudsOffset = Vector3.new(0, oe.offset, 0)
    billboardGui.Adornee = oa
    billboardGui.Parent = og
    local textLabel2 = Instance.new("TextLabel")
    textLabel2.Name = "Name"
    textLabel2.BackgroundTransparency = 1
    textLabel2.Size = UDim2.fromScale(1, 0.55)
    textLabel2.Font = Enum.Font.BuilderSans
    textLabel2.TextColor3 = oe.text
    textLabel2.TextStrokeTransparency = 0.4
    textLabel2.TextScaled = true
    textLabel2.Text = oc
    textLabel2.Parent = billboardGui
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "Dist"
    textLabel.BackgroundTransparency = 1
    textLabel.Position = UDim2.fromScale(0, 0.55)
    textLabel.Size = UDim2.fromScale(1, 0.45)
    textLabel.Font = Enum.Font.BuilderSans
    textLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
    textLabel.TextStrokeTransparency = 0.4
    textLabel.TextScaled = true
    textLabel.Parent = billboardGui
    DF[n9] = { gui = billboardGui, highlight = highlight, root = oa, kind = ob, label = oc }
end
function fns.fn259(mw)
    local N4 = mw ~= ""
    local N5 = type(mw) == "string" and N4
    if N5 then
        State.Quest = mw
    end
end
function fns.fn319(a_)
    local E__1
    local EZ_1
    local EY = Cb()
    if not EY then
        return nil
    end
    EZ_1, E__1 = pcall(EY.GetController, a_)
    if EZ_1 then
        return E__1
    end
end
function fns.worker()
    while B_() do
        if State.Enabled.AutoJoiner or State.Enabled.AutoLobby or State.Enabled.UnlockRecipe or State.Enabled.VaultSell or State.Enabled.BuyVaultSlot or State.Enabled.ClaimQuest or State.Enabled.BuyAgency or State.Enabled.EquipAgency or State.Enabled.UnequipAgency or State.Enabled.UpgradeAgency or State.Enabled.RerollStock or State.Enabled.BuyBusSkin or State.Enabled.EquipBus then
            Cp()
            task.wait(0.8)
        else
            task.wait(0.2)
        end
    end
end
function fns.fn393(fr)
    if typeof(fr) ~= "Instance" then
        return nil
    end
    local IC = fr:FindFirstChild("Handle") or fr.PrimaryPart or fr:FindFirstChildWhichIsA("BasePart", true)
    return IC
end
function fns.fn396()
    local MU = Cd("QuestService")
    local Quest = State.Quest
    local MW = not MU or type(Quest) ~= "string"
    local MX = Quest == ""
    local MX_1
    local MY = MW or MX
    local MY_1
    if MY then
        return
    end
    local MW_1 = false
    if B4(MU.IsQuestCompleted) then
        MX_1, MY_1 = pcall(MU.IsQuestCompleted, MU, Quest)
        MW_1 = MX_1 and MY_1 == true
    end
    local MX_2 = MW_1 and B4(MU.ClaimQuest)
    if MX_2 then
        pcall(MU.ClaimQuest, MU, Quest)
    end
end
function fns.worker5()
    while B_() do
        if State.Enabled.Hunt or State.Enabled.Strike then
            local P5
            if State.Enabled.Hunt then
                P5 = Dr(1000000000)
                if P5 and P5.distance > 8 then
                    B0(P5.part)
                    task.wait(0.05)
                end
            end
            local P4_2 = not P5
            if P4_2 ~= false then
                P4_2 = State.Enabled.Strike
            end
            if P4_2 then
                P5 = CY(State.StrikeRange)[1]
            else
                if P5 and State.Enabled.Strike and P5.distance > State.StrikeRange then
                    P5 = CY(State.StrikeRange)[1]
                end
            end
            local P4_4 = B_() and P5 and (State.Enabled.Strike or State.Enabled.Hunt)
            if P4_4 then
                C9(P5)
            end
            task.wait(0.28)
        else
            task.wait(0.2)
        end
    end
end
function fns.fn443(mg)
    local NV = tonumber(mg) or 15
    State.PickupRange = NV
end
function fns.fn450()
    local Na = Cd("AgencyService")
    local Agency = State.Agency
    local Nc = Na and B4(Na.EquipAgency) and type(Agency) == "string"
    if Nc and Agency ~= "" then
        pcall(Na.EquipAgency, Na, Agency)
    end
end
function fns.fn464()
    BY()
end
function fns.fn470()
    local Np = Dz()
    local Nq = Np and tonumber(Np.ClassReroll)
    local Np_1 = Nq
    local Nu = if Np_1 then 1 else 0
    local Ns = 2329 * Nu + 1960 * (1 - Nu)
    local Nt = 1879 * Nu + 2107 * (1 - Nu)
    if not ((Ns * 1265 + Nt * 2615 + Ns * Nt) % 16777213 == 12235961) then
        Np_1 = 0
    end
    if Np_1 <= 0 then
        return
    end
    local Np_2 = Cd("AgencyService")
    local Nq_2 = Np_2 and B4(Np_2.RerollStock)
    if Nq_2 then
        pcall(Np_2.RerollStock, Np_2)
    end
end
function fns.fn481()
    local ED_1
    if State.Knit then
        return State.Knit
    end
    local EB = CA(DH, "ClientSource", "Mutual", "Packages")
    local EC = EB and EB:FindFirstChild("Knit")
    local EC_1
    if not EC then
        return nil
    end
    EC_1, ED_1 = pcall(require, EC)
    local EB_2 = EC_1 and type(ED_1) == "table" and B4(ED_1.GetService)
    if EB_2 then
        State.Knit = ED_1
        return ED_1
    end
end
function fns.fn495()
    if Cm() then
        return
    end
    local MR = Cd("VaultService")
    local MS = MR and B4(MR.PurchaseSlot)
    if MS then
        pcall(MR.PurchaseSlot, MR)
    end
end
function fns.fn497(aR)
    if type(aR) ~= "table" then
        return false
    end
    local EP = tonumber(aR.WalkSpeed) or 0
    if EP <= 0 then
        return false
    elseif tonumber(aR.Damage) then
        return true
    else
        local EP_1 = type(aR.BTree) == "string" and aR.BTree ~= "NonFlock"
        return EP_1
    end
end
function fns.fn500()
    local Mf = Cd("LobbyService")
    local Mg = Mf and B4(Mf.Play)
    if Mg then
        pcall(Mf.Play, Mf)
    end
end
function fns.worker3()
    while B_() do
        if State.Enabled.Assemble or State.Enabled.LeaveBench or State.Enabled.Deposit or State.Enabled.Withdraw or State.Enabled.Exchange or State.Enabled.Rematch or State.Enabled.ToLobby then
            if State.Enabled.Assemble then
                Dv()
            end
            local Qe_1 = B_() and State.Enabled.LeaveBench
            if Qe_1 then
                C_()
            end
            local Qe_2 = B_() and State.Enabled.Deposit
            if Qe_2 then
                DG()
            end
            local Qe_3 = B_() and State.Enabled.Withdraw
            if Qe_3 then
                Cr()
            end
            local Qe_4 = B_() and State.Enabled.Exchange
            if Qe_4 then
                DI()
            end
            local Qe_5 = B_() and State.Enabled.Rematch
            if Qe_5 then
                B7()
            end
            local Qe_6 = B_() and State.Enabled.ToLobby
            if Qe_6 then
                DB()
            end
            task.wait(0.6)
        else
            task.wait(0.2)
        end
    end
end
function fns.fn508(d0)
    if typeof(d0) ~= "Instance" then
        return nil
    end
    local HG = (d0:FindFirstChild("HumanoidRootPart"))
    local HK = if HG then 1 else 0
    local HI = 4022 * HK + 857 * (1 - HK)
    local HJ = 2515 * HK + 2088 * (1 - HK)
    if not ((HI * 2492 + HJ * 1578 + HI * HJ) % 16777213 == 7329611) then
        HG = d0.PrimaryPart
    end
    return HG
end
function fns.fn515()
    return CoreGui
end
function fns.fn519()
    local Mi = Cd("LobbyService")
    local Mj = Mi and B4(Mi.LobbyMethod)
    if Mj then
        pcall(Mi.LobbyMethod, Mi, "Create", CK())
    end
end
function fns.fn527()
    table.clear(Dh)
    table.clear(Dd)
    local Fx = Di()
    local Fy = Fx and Fx.Craft and Fx.Craft.Recipes
    local Fz = {}
    if type(Fy) == "table" then
        for k, v in Fy do
            if type(k) == "string" then
                local insert = table.insert
                local FA_1 = type(v) == "table" and tonumber(v.Order)
                local FB = FA_1 or 0
                insert(Fz, { name = k, order = FB, label = k })
            end
        end
    end
    table.sort(Fz, function(bs, bt)
        if bs.order == bt.order then
            return bs.name < bt.name
        end
        return bs.order < bt.order
    end)
    for k, v in Fz do
        local Fy_2 = v.label
        if Dd[Fy_2] then
            Fy_2 = (("%* (%*)"):format(v.label, v.name))
        end
        table.insert(Dh, Fy_2)
        Dd[Fy_2] = v.name
    end
    if #Dh == 0 then
        table.insert(Dh, "WoodenWall")
        Dd.WoodenWall = "WoodenWall"
    end
    table.clear(Db)
    table.clear(C5)
    table.insert(Db, "Any")
    C5.Any = "Any"
    local Fy_3 = Fx and Fx.Entity and Fx.Entity.Entities
    local Fz_1 = {}
    if type(Fy_3) == "table" then
        for k in Fy_3 do
            if type(k) == "string" then
                table.insert(Fz_1, k)
            end
        end
    end
    table.sort(Fz_1)
    for k, v in Fz_1 do
        table.insert(Db, v)
        C5[v] = v
    end
    table.clear(C1)
    table.insert(C1, "All")
    local Fy_4 = {}
    if type(Fy_3) == "table" then
        for k, v in Fy_3 do
            local Fz_2 = type(k) == "string" and type(v) == "table" and Ct(v)
            if Fz_2 then
                table.insert(Fy_4, k)
            end
        end
    end
    table.sort(Fy_4)
    for k, v in Fy_4 do
        table.insert(C1, v)
    end
    if not table.find(C1, "Zombie") then
        table.insert(C1, "Zombie")
    end
    table.clear(CV)
    local Fy_5 = Fx
    local Fz_3 = {}
    if Fy_5 then
        Fy_5 = Fx.Agency
    end
    if Fy_5 then
        Fy_5 = Fx.Agency.Agencies
    end
    local FA_3 = Fy_5
    if type(FA_3) == "table" then
        for k in FA_3 do
            if type(k) == "string" then
                table.insert(Fz_3, k)
            end
        end
    end
    table.sort(Fz_3)
    for k, v in Fz_3 do
        table.insert(CV, v)
    end
    if #CV == 0 then
        table.insert(CV, "Ghoul")
    end
    table.clear(CP)
    local Fy_6 = Fx
    local Fz_4 = {}
    if Fy_6 then
        Fy_6 = Fx.BusShop
    end
    if Fy_6 then
        Fy_6 = Fx.BusShop.Skins
    end
    local Fx_1 = Fy_6
    if type(Fx_1) == "table" then
        for k in Fx_1 do
            if type(k) == "string" then
                table.insert(Fz_4, k)
            end
        end
    end
    table.sort(Fz_4)
    for k, v in Fz_4 do
        table.insert(CP, v)
    end
    if #CP == 0 then
        table.insert(CP, "DefaultBus")
    end
    table.clear(CJ)
    pcall(function()
        local Fi_1
        local Fh_1
        local Fg = CA(DH, "ClientSource", "Mutual", "Shared", "RoQuest")
        if not Fg then
            return
        end
        Fh_1, Fi_1 = pcall(require, Fg)
        local Fg_1 = Fh_1 and type(Fi_1) == "table" and Fi_1.Client
        local Fg_2 = type(Fg_1) == "table" and B4(Fg_1.GetStaticQuests)
        if not Fg_2 then
            return
        end
        local Fg_3 = Fg_1:GetStaticQuests()
        if type(Fg_3) ~= "table" then
            return
        end
        local Fh_3 = {}
        for k in Fg_3 do
            if type(k) == "string" then
                table.insert(Fh_3, k)
            end
        end
        table.sort(Fh_3)
        for k, v in Fh_3 do
            table.insert(CJ, v)
        end
    end)
    if #CJ == 0 then
        table.insert(CJ, "CullTheHorde")
    end
end
function fns.fn540(ms)
    local N2 = Dd[ms] or ms or State.UnlockRecipe
    State.UnlockRecipe = N2
end
function fns.fn552(ew)
    local Ia_1
    local H9_1
    local H7 = CE()
    local H8 = H7 and H7.Replica
    local H8_1, H8_4
    H8_1, H9_1, Ia_1 = CN()
    local H8_2 = not H8 or not B4(H8.FireServer) or not Ia_1 or not ew or not ew.part
    if H8_2 then
        return false
    end
    local H8_3 = ew.part.Position - Ia_1.Position
    if H8_3.Magnitude < 0.05 then
        H8_4 = Ia_1.CFrame.LookVector
    else
        H8_4 = H8_3.Unit
    end
    local AttackOrder = State.AttackOrder
    State.AttackOrder = AttackOrder % 3 + 1
    local part = ew.part
    pcall(H8.FireServer, H8, "Melee", "Attack", H8_4, AttackOrder)
    task.wait(0.12)
    if not B_() then
        return false
    end
    pcall(H8.FireServer, H8, "Melee", "Hit", part, part.Position, Vector3.yAxis, part.Material)
    return true
end
function fns.fn571(es)
    local H4 = es or 1000000000
    local H5 = CY(H4)
    return H5[1]
end
function fns.fn572(n3, n4, n5)
    local Name = n3:FindFirstChild("Name")
    local Dist = n3:FindFirstChild("Dist")
    if Name then
        Name.Text = n4
    end
    if Dist then
        Dist.Text = string.format("%dm", math.floor(n5 + 0.5))
    end
end
function fns.fn573()
    local Character = LocalPlayer.Character
    local Gr = Character and Character:FindFirstChildOfClass("Humanoid")
    local Gs = Character
    if Gs then
        Gs = Character:FindFirstChild("HumanoidRootPart")
    end
    local Gr_1 = Character
    local Gu = Gs
    if Gr_1 then
        Gr_1 = Gr
    end
    if Gr_1 then
        Gr_1 = Gu
    end
    if Gr_1 then
        Gr_1 = Gr.Health > 0
    end
    if Gr_1 then
        return Character, Gr, Gu
    end
end
function fns.fn583()
    local E9_1
    local E7 = DQ("LobbyController")
    local E8 = E7 and B4(E7.IsInLobby)
    local E8_1
    if E8 then
        E8_1, E9_1 = pcall(E7.IsInLobby, E7)
        return E8_1 and E9_1 == true
    end
    return false
end
function fns.fn624(aU)
    local EW_1
    local EV_1
    local EU = Cb()
    if not EU then
        return nil
    end
    EV_1, EW_1 = pcall(EU.GetService, aU)
    if EV_1 then
        return EW_1
    end
end
function fns.fn643(m7)
    if Ds:HasTag(m7, "Dialogue") then
        return true
    elseif type(m7:GetAttribute("NPC")) == "string" then
        return true
    else
        return not Ct(Dx(m7:GetAttribute("Type")))
    end
end
function fns.fn654()
    if Dl() > 0.8 then
        return
    end
    local JA = B3()
    if JA and JA.Config and JA.Config.Type == "Food" then
        Cf()
        return
    end
    local JA_1 = Cq("Food")
    local JB_1 = Cd("ItemService")
    local JC = JA_1 and JB_1 and B4(JB_1.ToggleEquip)
    if JC then
        pcall(JB_1.ToggleEquip, JB_1, JA_1)
        task.wait(0.05)
        if B_() then
            Cf()
        end
        return
    end
    for k, v in B2() do
        local JA_2 = Cb()
        local JB_2 = JA_2 and JA_2.Components and JA_2.Components.Item
        local JA_3 = JB_2
        if JB_2 then
            JB_2 = B4(JA_3.FromInstance)
        end
        if JB_2 then
            JB_2 = JA_3:FromInstance(v)
        end
        local JA_4 = JB_2
        if JB_2 then
            JB_2 = JA_4.Config
        end
        local JA_5 = JB_2
        if JB_2 then
            JB_2 = JA_5.Type == "Food"
        end
        if JB_2 then
            B1(v)
            return
        end
    end
end
function fns.fn662()
    local NB = Cd("BusShopService")
    local BusSkin = State.BusSkin
    local ND = NB and B4(NB.EquipSkin) and type(BusSkin) == "string"
    if ND and BusSkin ~= "" then
        pcall(NB.EquipSkin, NB, BusSkin)
    end
end
function fns.fn663(dv)
    for k, v in C2() do
        if DK(v) == dv then
            return v
        end
    end
end
function fns.fn670(mA)
    local Od = mA ~= ""
    local Oe = type(mA) == "string" and Od
    if Oe then
        State.BusSkin = mA
    end
end
function fns.fn675()
    local Om = if not De() then 1 else 0
    if Om == 1 then
        return false
    end
    if CL() then
        CR()
    else
        DR()
    end
    return true
end
function fns.fn682()
    local Gz_1
    local Gw = Cb()
    local Gx = not Gw or not Gw.Components
    local Gx_2
    local GD = if Gx then 1 else 0
    local GB = 1686 * GD + 1752 * (1 - GD)
    local GC = 2912 * GD + 2540 * (1 - GD)
    if not ((GB * 2413 + GC * 3723 + GB * GC) % 16777213 == 3042113) then
        Gx = not Gw.Components.Player
    end
    if Gx then
        return nil
    end
    local Gx_1 = Gw.Player or LocalPlayer
    Gx_2, Gz_1 = pcall(Gw.Components.Player.FromInstance, Gw.Components.Player, Gx_1)
    if Gx_2 then
        return Gz_1
    end
end
function fns.fn721(nq)
    local OY_1
    local OW = Cb()
    local OX = OW and OW.Components and OW.Components.Item
    local OX_1
    local OW_1 = OX
    if OX then
        OX = B4(OW_1.FromInstance)
    end
    if OX then
        OX_1, OY_1 = pcall(OW_1.FromInstance, OW_1, nq)
        if OX_1 and OY_1 then
            return OY_1
        end
        local OW_3 = DQ("ItemController")
        local OX_2 = OW_3 and OW_3.Cache
        local OW_4 = OX_2
        if OX_2 then
            OX_2 = OW_4.Items[nq.Name]
        end
        return OX_2 or nil
    end
    local OW_6 = DQ("ItemController")
    local OX_3 = OW_6 and OW_6.Cache
    local OW_7 = OX_3
    if OX_3 then
        OX_3 = OW_7.Items[nq.Name]
    end
    return OX_3 or nil
end
function fns.fn735()
    local Jn = Cd("ItemService")
    local Jo = not Jn or not B4(Jn.Eat)
    if Jo then
        return false
    end
    return pcall(Jn.Eat, Jn)
end
function fns.fn751(nO)
    if typeof(nO) ~= "Instance" then
        return nil
    end
    if nO:IsA("Model") then
        local O9_1 = nO:FindFirstChild("HumanoidRootPart") or nO.PrimaryPart or nO:FindFirstChild("Main") or nO:FindFirstChildWhichIsA("BasePart", true)
        return O9_1
    end
    if nO:IsA("Tool") then
        local O9_2 = nO:FindFirstChild("Handle") or nO:FindFirstChildWhichIsA("BasePart", true)
        return O9_2
    end
    if nO:IsA("BasePart") then
        return nO
    end
end
function fns.fn753(m0)
    local Oy = Di()
    local Oz = Oy and Oy.Entity and Oy.Entity.Entities
    local Oz_1 = type(Oz) == "table" and type(m0) == "string" and Oz[m0]
    return Oz_1 or nil
end
function fns.fn759()
    local IH = Di()
    local II = IH and IH.ClickDetector
    local IH_1 = II
    if II then
        II = IH_1.MaxDistance
    end
    local IH_2 = (tonumber(II))
    local IM = if IH_2 then 1 else 0
    local IK = 3260 * IM + 537 * (1 - IM)
    local IL = 3175 * IM + 3176 * (1 - IM)
    if not ((IK * 2394 + IL * 2647 + IK * IL) % 16777213 == 9781952) then
        IH_2 = 10
    end
    return IH_2
end
function fns.fn778(fW, fX)
    local Jc_1
    local Jb_1
    local Ja_1
    Jb_1, Ja_1, Jc_1 = CN()
    local Ja_2 = not Jc_1 or typeof(fW) ~= "Instance"
    if Ja_2 then
        return false
    end
    local Ja_3 = tonumber(fX) or 8
    local Ja_4 = Jc_1.Position - fW.Position
    if Ja_4.Magnitude <= Ja_3 then
        return true
    end
    local TweenService = game:GetService("TweenService")
    local Je = fW.Position + Ja_4.Unit * Ja_3
    local Jf = math.clamp((Ja_4.Magnitude - Ja_3) / 22, 0.08, 0.85)
    local Ja_5 = TweenService:Create(Jc_1, TweenInfo.new(Jf, Enum.EasingStyle.Linear), { CFrame = CFrame.new(Je, fW.Position) })
    Ja_5:Play()
    Ja_5.Completed:Wait()
    local Ja_6 = not B_() or not fW.Parent
    if Ja_6 then
        return false
    end
    return (Jc_1.Position - fW.Position).Magnitude <= Ja_3 + 2
end
function fns.fn798(ng)
    local attr = ng:GetAttribute("Type")
    if State.MobFilter == "All" then
        return true
    end
    return attr == State.MobFilter
end
function fns.fn849(nF)
    local O2 = Dt(nF)
    local O3 = O2 and O2.Replica and O2.Replica.Tags
    local O2_1 = O3
    if O3 then
        O3 = O2_1.Name
    end
    local O2_2 = O3
    if type(O2_2) == "string" then
        local O3_1 = Ck(O2_2)
        local O4 = O3_1 and type(O3_1.DisplayName) == "string"
        if O4 then
            return O3_1.DisplayName
        end
        return O2_2
    end
    return "Item"
end
function fns.fn861()
    local Ng = Cd("AgencyService")
    local Nh = Ng and B4(Ng.UnequipAgency)
    if Nh then
        pcall(Ng.UnequipAgency, Ng)
    end
end
function fns.fn887(me)
    local NT = tonumber(me) or 15
    State.StrikeRange = NT
end
function fns.fn889(cS)
    local G__2
    local GZ_2
    local GX_1
    if type(cS) ~= "string" then
        return nil
    end
    local GV = Cb()
    local GW = GV and GV.Components and GV.Components.Item
    local GW_1, GW_3
    local GV_1 = GW
    if GW then
        GW = B4(GV_1.FromId)
    end
    if GW then
        GW_1, GX_1 = pcall(GV_1.FromId, GV_1, cS)
        if GW_1 and GX_1 then
            return GX_1
        end
        local GV_3 = DQ("ItemController")
        local GW_2 = GV_3 and GV_3.Cache
        local GV_4 = GW_2
        if GW_3 then
            GW_2 = GV_4.Items[cS] or GV_4.Objects[cS]
        end
        local GV_5 = GW_2
        if not ((GZ_2 * 2988 + G__2 * 1969 + GZ_2 * G__2) % 16777213 == 42615) then
            GV_5 = nil
        end
        return GV_5
    end
    local GV_6 = DQ("ItemController")
    GW_3 = GV_6 and GV_6.Cache
    local GV_7 = GW_3
    if GW_3 then
        GW_3 = GV_7.Items[cS] or GV_7.Objects[cS]
    end
    local GV_8 = GW_3
    local G0_2 = if GV_8 then 1 else 0
    GZ_2 = 3231 * G0_2 + 1866 * (1 - G0_2)
    G__2 = 1378 * G0_2 + 152 * (1 - G0_2)
    if not ((GZ_2 * 2988 + G__2 * 1969 + GZ_2 * G__2) % 16777213 == 42615) then
        GV_8 = nil
    end
    return GV_8
end
function fns.fn899()
    local L9 = Di()
    local Ma = L9 and L9.Lobby
    local L9_1 = 4
    local Ma_1 = "Classic"
    if type(Ma) == "table" then
        local Mc_1 = type(Ma.DefaultLobby) == "table" and type(Ma.DefaultLobby.Mode) == "string"
        if Mc_1 then
            Ma_1 = Ma.DefaultLobby.Mode
        end
        local Modes = Ma.Modes
        local Mb_1 = type(Modes) == "table" and type(Modes[Ma_1]) == "table"
        if Mb_1 then
            local Mb_2 = tonumber(Modes[Ma_1].MaxPlayers) or L9_1
            L9_1 = Mb_2
        end
    end
    local clamp = math.clamp
    local floor = math.floor
    local Md = tonumber(State.MaxPlayers) or 1
    local Mc_4 = clamp(floor(Md), 1, L9_1)
    local L9_2 = State.Private == true
    return { MaxPlayers = Mc_4, Private = L9_2, FriendsAllowed = L9_2, Mode = Ma_1 }
end
function fns.fn905(dg)
    local G4 = Cn(dg)
    local G5 = G4 and Ck(G4)
    local G4_1 = G5
    if G5 then
        G5 = G4_1.Type
    end
    return G5 or nil
end
function fns.fn918()
    local EK_1
    if State.Config then
        return State.Config
    end
    local EI = Cb()
    local EJ = EI and type(EI.Config) == "table"
    local EJ_1
    if EJ then
        State.Config = EI.Config
        return State.Config
    end
    local EI_1 = CA(DH, "ClientSource", "Mutual", "Config")
    if not EI_1 then
        return nil
    end
    EJ_1, EK_1 = pcall(require, EI_1)
    local EI_2 = EJ_1 and type(EK_1) == "table"
    if EI_2 then
        State.Config = EK_1
        return EK_1
    end
end
function fns.fn920()
    local On = DQ("InterfaceController")
    if not On then
        return false
    end
    if B4(On.Open) then
        pcall(On.Open, On, "Settings")
    end
    if B4(On.CallFunction) then
        pcall(On.CallFunction, On, "Settings", "Focus", "CodeRedeem")
    end
    return true
end
function fns.fn936()
    local J7 = Dz()
    local J7_1 = J7 and J7.CardSlots
    if type(J7_1) ~= "table" then
        return 1
    end
    for k, v in J7_1 do
        local J7_2 = type(v) == "table" and v.Item == nil
        if J7_2 then
            return k
        end
    end
    return 1
end
function fns.fn980(aq, ...)
    local Et = aq
    for k, v in { ... } do
        if not Et then
            return nil
        end
        Et = Et:FindFirstChild(v)
    end
    return Et
end
function fns.fn982(cL)
    local GP = Di()
    local GQ = GP and GP.Item and GP.Item.Items
    local GQ_1 = type(GQ) == "table" and GQ[cL]
    return GQ_1 or nil
end
function fns.fn987()
    gethui = Cy
end
function fns.fn991()
    local Nv = Cd("BusShopService")
    local BusSkin = State.BusSkin
    local Nx = Nv and B4(Nv.PurchaseSkin) and type(BusSkin) == "string"
    if Nx and BusSkin ~= "" then
        pcall(Nv.PurchaseSkin, Nv, BusSkin)
    end
end
function fns.fn994(d9)
    local HR_1
    local HS_1
    local HQ_1
    HR_1, HQ_1, HS_1 = CN()
    local ENTITY_CONTAINER = Dy:FindFirstChild("ENTITY_CONTAINER")
    local HR_2 = {}
    if not HS_1 or not ENTITY_CONTAINER then
        return HR_2
    end
    local Position = HS_1.Position
    local HS_2 = (tonumber(d9))
    local HY = if HS_2 then 1 else 0
    local HW = 1178 * HY + 2764 * (1 - HY)
    local HX = 1525 * HY + 2011 * (1 - HY)
    if not ((HW * 1925 + HX * 912 + HW * HX) % 16777213 == 5454900) then
        HS_2 = 15
    end
    local HU_1 = HS_2
    for i, child in ENTITY_CONTAINER:GetChildren() do
        if Dq(child) then
            local HQ_3 = DM(child)
            if HQ_3 then
                local Magnitude = (HQ_3.Position - Position).Magnitude
                if Magnitude <= HU_1 then
                    table.insert(HR_2, { model = child, part = HQ_3, distance = Magnitude })
                end
            end
        end
    end
    table.sort(HR_2, function(ep, eq)
        return ep.distance < eq.distance
    end)
    return HR_2
end
function fns.fn995(f9)
    local Jk = Cd("ItemService")
    local Jl = not Jk or not B4(Jk.EquipItem)
    if Jl then
        return false
    end
    return pcall(Jk.EquipItem, Jk, f9)
end
function fns.fn1002(eZ)
    if eZ == "Spawn" then
        local SpawnLocation = Dy:FindFirstChild("SpawnLocation")
        local Ii_1 = SpawnLocation and SpawnLocation:IsA("BasePart")
        if Ii_1 then
            return SpawnLocation
        end
    elseif eZ == "Bus" then
        local ITEM_CONTAINER = Dy:FindFirstChild("ITEM_CONTAINER")
        local Ii_2 = ITEM_CONTAINER and ITEM_CONTAINER:FindFirstChild("Bus")
        if Ii_2 then
            local Ii_3 = Ii_2:FindFirstChild("SeatPart") or Ii_2.PrimaryPart or Ii_2:FindFirstChild("Main") or Ii_2:FindFirstChildWhichIsA("BasePart", true)
            return Ii_3
        end
    elseif eZ == "ShopKeeper" then
        local ENTITY_CONTAINER = Dy:FindFirstChild("ENTITY_CONTAINER")
        if not ENTITY_CONTAINER then
            return nil
        end
        for i, child in ENTITY_CONTAINER:GetChildren() do
            local Ih_5 = (child:IsA("Model"))
            if Ih_5 then
                local Ii_4 = child:GetAttribute("Type") == "ShopKeeper" or child:GetAttribute("NPC") == "ShopKeeper"
                Ih_5 = Ii_4
            end
            if Ih_5 then
                return DM(child)
            end
        end
    end
end
function fns.fn1012()
    return not Ch.Unloaded
end
function fns.fn1016(gi)
    local Jq = Cd("ItemService")
    local Jr = not Jq or not B4(Jq.Eat)
    if Jr then
        return false
    end
    return pcall(Jq.Eat, Jq, gi)
end
local function fn1030(c8)
    local G1 = DP(c8)
    local G2 = G1 and G1.Replica
    local G1_1 = G2
    if G2 then
        G2 = G1_1.Tags
    end
    local G1_2 = G2
    if G2 then
        G2 = G1_2.Name
    end
    return G2 or nil
end
local function fn1032()
    local K1 = CA(PlayerGui, "Main", "Container", "Craft")
    if not (K1 and K1.Visible) then
        return
    end
    local K1_1 = Cd("CraftService")
    local K2_1 = K1_1 and B4(K1_1.CloseStation)
    if K2_1 then
        pcall(K1_1.CloseStation, K1_1)
    end
end
local function fn1063()
    if DN and DN.Parent then
        return DN
    end
    local folder = Instance.new("Folder")
    folder.Name = "OuroborosLastStopEsp"
    folder.Parent = CoreGui
    DN = folder
    return folder
end
local function fn1072(mi)
    if mi == "Near Item" then
        State.LootMode = "Near Item"
    else
        State.LootMode = "Tween"
    end
end
local function fn1077(nc)
    local OI = typeof(nc) == "Instance" and nc:IsA("Model") and type(nc:GetAttribute("Type")) == "string" and not C0(nc)
    return OI
end
local function fn1081(W)
    local Er = typeof(cloneref) == "function" and typeof(W) == "Instance"
    if Er then
        return cloneref(W)
    end
    return W
end
local function fn1088()
    local Hv_1, Hv_3
    local Ht = DQ("ItemController")
    local Ht_5
    local Hu = Ht and B4(Ht.GetHoldingItem)
    local Hu_1
    if Hu then
        Hu_1, Hv_1 = pcall(Ht.GetHoldingItem, Ht)
        if Hu_1 then
            return Hv_1
        end
        local Ht_1 = CN()
        local Hu_2 = Ht_1 and Ht_1:FindFirstChildOfClass("Tool")
        if not Ht_5 then
            return nil
        end
        local Hu_3 = DQ("ItemController")
        local Hv_2 = Hu_3 and Hu_3.Cache
        local Hu_4 = Hv_2
        if Hv_3 then
            Hv_2 = Hu_4.Items[Hu_2.Name]
        end
        return Hv_2 or nil
    end
    local Ht_4 = CN()
    local Hu_5 = Ht_4 and Ht_4:FindFirstChildOfClass("Tool")
    Ht_5 = Hu_5
    if not Ht_5 then
        return nil
    end
    local Hu_6 = DQ("ItemController")
    Hv_3 = Hu_6 and Hu_6.Cache
    local Hu_7 = Hv_3
    if Hv_3 then
        Hv_3 = Hu_7.Items[Ht_5.Name]
    end
    return Hv_3 or nil
end
local function fn1093(mo)
    local N0 = tonumber(mo) or 1
    State.MaxPlayers = math.max(1, math.floor(N0))
end
local function fn1116()
    local LU = CA(PlayerGui, "Main", "Container", "EndGame")
    return LU and LU.Visible == true
end
local function fn1134()
    local LA = Cd("VaultService")
    local LB = not LA or not B4(LA.UnstoreItem)
    if LB then
        return
    end
    local LB_1 = CH()
    local LC = LB_1 and LB_1.Items
    local LC_1 = type(LC) ~= "table" or #LC == 0
    if LC_1 then
        return
    end
    pcall(LA.UnstoreItem, LA, #LC)
end
local function fn1145()
    for k, v in DJ do
        pcall(task.cancel, v)
    end
    Cw()
    if DN then
        DN:Destroy()
        DN = nil
    end
end
local function fn1168()
    local G7 = Dz()
    local G8 = {}
    if not G7 then
        return G8
    end
    if type(G7.Inventory) == "table" then
        for k, v in G7.Inventory do
            if type(v) == "string" then
                table.insert(G8, v)
            end
        end
    end
    if type(G7.BackpackStorage) == "table" then
        for k, v in G7.BackpackStorage do
            if type(v) == "string" then
                table.insert(G8, v)
            end
        end
    end
    return G8
end
local function fn1171(mL)
    local Ov = type(mL) == "string"
    if Ov then
        local Ow = mL == "All" or table.find(C1, mL)
        Ov = Ow
    end
    if Ov then
        State.MobFilter = mL
    else
        State.MobFilter = "All"
    end
end
local function fn1174()
    local GK_1
    local GJ_3
    local GH = B9()
    local GI = GH
    if GI then
        GI = GH.DataReplica or GH.Replica
    end
    local GH_1 = GI
    if GI then
        GI = GH_1.Data
    end
    local GH_2 = GI
    if type(GH_2) == "table" then
        return GH_2
    end
    local GI_1 = DQ("DataController")
    local GJ_2 = GI_1 and B4(GI_1.GetReplica)
    if GJ_2 then
        GJ_3, GK_1 = pcall(GI_1.GetReplica, GI_1)
        local GI_2 = GJ_3 and GK_1 and GK_1.Data
        if type(GI_2) == "table" then
            return GI_2
        end
    end
end
local function fn1180(ix)
    local La = Cn(ix)
    local Lb = Ck(La)
    if not La then
        return false
    elseif Cg(La, Lb) then
        return false
    else
        if Lb and Lb.Unstorable then
            return false
        end
        if Lb and (Lb.VaultSell or Lb.VaultStorable) then
            return true
        end
        return Lb ~= nil
    end
end
local function worker4()
    while B_() do
        local P8 = State.Enabled.Feed or State.Enabled.Scavenge
        local Qd = if P8 then 1 else 0
        local Qb = 1045 * Qd + 3231 * (1 - Qd)
        local Qc = 1087 * Qd + 2041 * (1 - Qd)
        if not ((Qb * 1056 + Qc * 2396 + Qb * Qc) % 16777213 == 4843887) then
            P8 = State.Enabled.Armor
        end
        if not P8 then
            P8 = State.Enabled.Cards
        end
        if not P8 then
            P8 = State.Enabled.PackSwap
        end
        if P8 then
            if State.Enabled.Feed then
                CZ()
            end
            local P8_1 = B_() and State.Enabled.Scavenge
            if P8_1 then
                Df()
            end
            local P8_2 = B_() and State.Enabled.Armor
            if P8_2 then
                CU()
            end
            local P8_3 = B_() and State.Enabled.Cards
            if P8_3 then
                DA()
            end
            local P8_4 = B_() and State.Enabled.PackSwap
            if P8_4 then
                Cu()
            end
            if State.Enabled.Feed then
                task.wait(0.08)
            else
                task.wait(0.35)
            end
        else
            task.wait(0.2)
        end
    end
end
local function fn1201()
    local Kg = Cd("InventoryService")
    local Kh = not Kg or not B4(Kg.ToggleCardSlot)
    if Kh then
        return
    end
    for k, v in C2() do
        local Kh_1 = Ck(Cn(v))
        if Kh_1 and Kh_1.Slotable then
            pcall(Kg.ToggleCardSlot, Kg, Cc(), v)
            task.wait(0.05)
            if not B_() then
                return
            end
        end
    end
end
local function fn1227()
    local Mr = Cd("CraftService")
    local Ms = not Mr or not B4(Mr.UnlockRecipe)
    if Ms then
        return
    end
    local UnlockRecipe = State.UnlockRecipe
    local Mt = UnlockRecipe == ""
    local Mu = type(UnlockRecipe) ~= "string" or Mt
    if Mu then
        return
    end
    local Mt_1 = Dz()
    local Mu_1 = Mt_1 and Mt_1.UnlockedRecipes
    local Mu_2 = type(Mu_1) == "table"
    if Mu_2 then
        local Mv = Mu_1[UnlockRecipe] == true
        local Mz = if Mv then 1 else 0
        local Mx = 2603 * Mz + 3375 * (1 - Mz)
        local My = 3264 * Mz + 164 * (1 - Mz)
        if not ((Mx * 2975 + My * 3253 + Mx * My) % 16777213 == 10080696) then
            Mv = table.find(Mu_1, UnlockRecipe)
        end
        Mu_2 = Mv
    end
    if Mu_2 then
        return
    end
    pcall(Mr.UnlockRecipe, Mr, UnlockRecipe)
end
local function fn1249(nX)
    if nX.gui then
        nX.gui:Destroy()
    end
    if nX.highlight then
        nX.highlight:Destroy()
    end
end
local function fn1267()
    local E1 = Di()
    local E1_1 = E1 and E1.Places
    if type(E1_1) == "table" then
        if E1_1.IsLobby == true then
            return true
        elseif E1_1.IsGame == true then
            return false
        elseif tonumber(E1_1.Lobby) == game.PlaceId then
            return true
        else
            return Dy:GetAttribute("Lobby") == true
        end
    else
        return Dy:GetAttribute("Lobby") == true
    end
end
local function fn1275()
    local KS_1
    local KR_2
    local KQ_1, KQ_2
    local KO = Cd("InventoryService")
    local KP = KO and B4(KO.HasInventorySpace)
    local KP_1
    if KP then
        KP_1, KQ_1 = pcall(KO.HasInventorySpace, KO)
        if KP_1 and KQ_1 == false then
            return
        end
    end
    local KO_2 = B2()[1]
    if not KO_2 then
        return
    end
    local KP_2 = CB(KO_2)
    KR_2, KQ_2, KS_1 = CN()
    if not KP_2 or not KS_1 then
        return
    end
    local KQ_4 = math.max(4, Co() - 2)
    local Magnitude = (KP_2.Position - KS_1.Position).Magnitude
    if State.LootMode == "Near Item" then
        if Magnitude > Co() then
            return
        end
    elseif Magnitude > KQ_4 then
        if not B6(KP_2, KQ_4) then
            return
        end
    end
    if not B_() then
        return
    end
    CF(KO_2)
end
local function fn1280()
    local M1 = Cd("AgencyService")
    local Agency = State.Agency
    local M3 = M1 and B4(M1.PurchaseAgency) and type(Agency) == "string"
    if M3 and Agency ~= "" then
        pcall(M1.PurchaseAgency, M1, Agency)
    end
end
local function fn1292()
    local Ml = Cd("LobbyService")
    local Mm = Ml and B4(Ml.LobbyMethod)
    if Mm then
        pcall(Ml.LobbyMethod, Ml, "Start")
    end
end
local function fn1299()
    if State.Enabled.UnlockRecipe then
        Cv()
    end
    local NK = B_() and State.Enabled.VaultSell
    if NK then
        Dm()
    end
    local NK_1 = B_() and State.Enabled.BuyVaultSlot
    if NK_1 then
        DE()
    end
    local NK_2 = B_() and State.Enabled.ClaimQuest
    if NK_2 then
        C8()
    end
    local NK_3 = B_() and State.Enabled.BuyAgency
    if NK_3 then
        Ci()
    end
    local NK_4 = B_() and State.Enabled.EquipAgency
    if NK_4 then
        DO()
    end
    local NK_5 = B_() and State.Enabled.UnequipAgency
    if NK_5 then
        Da()
    end
    local NK_6 = B_() and State.Enabled.UpgradeAgency
    if NK_6 then
        CI()
    end
    local NK_7 = B_() and State.Enabled.RerollStock
    if NK_7 then
        Ca()
    end
    local NK_8 = B_() and State.Enabled.BuyBusSkin
    if NK_8 then
        Du()
    end
    local NK_9 = B_() and State.Enabled.EquipBus
    if NK_9 then
        CX()
    end
    local NK_10 = not B_()
    local NO = if NK_10 then 1 else 0
    local NM = 861 * NO + 2608 * (1 - NO)
    local NN = 2273 * NO + 3709 * (1 - NO)
    if not ((NM * 1652 + NN * 2035 + NM * NN) % 16777213 == 8004980) then
        NK_10 = not De()
    end
    if NK_10 then
        return
    end
    if State.Enabled.AutoLobby then
        if CL() then
            CR()
        else
            Dj()
        end
    else
        local NK_11 = State.Enabled.AutoJoiner and not CL()
        if NK_11 then
            DR()
        end
    end
end
local function fn1324(cc)
    local Tokens = State.Tokens
    local Gl = State.Tokens[cc]
    local Gp = if Gl then 1 else 0
    local Gn = 666 * Gp + 1620 * (1 - Gp)
    local Go = 1696 * Gp + 1754 * (1 - Gp)
    if not ((Gn * 2659 + Go * 2289 + Gn * Go) % 16777213 == 6782574) then
        Gl = 0
    end
    Tokens[cc] = Gl + 1
    return State.Tokens[cc]
end
local function fn1344()
    local Lk_1
    local Lh = B9()
    local Li = Lh and Lh.DataReplica
    local Lh_1 = Li
    if Li then
        Li = Lh_1.Data
    end
    if Li then
        Li = Lh_1.Data.Vault
    end
    local Lh_2 = Li
    if type(Lh_2) == "table" then
        return Lh_2
    end
    local Li_1 = DQ("DataController")
    local Lj = Li_1 and B4(Li_1.GetReplica)
    local Lj_1
    if Lj then
        Lj_1, Lk_1 = pcall(Li_1.GetReplica, Li_1)
        local Li_2 = Lj_1 and Lk_1 and Lk_1.Data and Lk_1.Data.Vault
        if type(Li_2) == "table" then
            return Li_2
        end
    end
end
local function fn1358()
    local LH = Cd("VaultService")
    if not LH then
        return
    end
    local LI = CH()
    local LJ = LI and LI.Items
    local LJ_1 = type(LJ) == "table" and #LJ >= 2 and B4(LH.SwapItems)
    if LJ_1 then
        pcall(LH.SwapItems, LH, 1, #LJ)
        return
    end
    local LJ_2 = B4(LH.StoreItem) and B4(LH.UnstoreItem)
    if LJ_2 then
        for k, v in C2() do
            if DD(v) then
                pcall(LH.StoreItem, LH, v)
                local LJ_3 = type(LJ) == "table" and #LJ > 0
                if LJ_3 then
                    pcall(LH.UnstoreItem, LH, 1)
                end
                return
            end
        end
    end
end
local function fn1391()
    for k, v in DF do
        CD(v)
        DF[k] = nil
    end
end
local function fn1395(mk, ml)
    State.Enabled[mk] = ml == true
    if ml then
        C4(mk)
    end
end
local function fn1402(my)
    local N7 = my ~= ""
    local N8 = type(my) == "string" and N7
    if N8 then
        State.Agency = my
    end
end
local function fn1420()
    local Nj = Cd("AgencyService")
    local Agency = State.Agency
    local Nl = Nj and B4(Nj.UpgradeAgency) and type(Agency) == "string"
    if Nl and Agency ~= "" then
        pcall(Nj.UpgradeAgency, Nj, Agency)
    end
end
local function fn1427()
    local Jt = Dz()
    if not Jt then
        return 1
    end
    local Ju = tonumber(Jt.MaxHunger) or 100
    local Ju_1 = (tonumber(Jt.Hunger))
    local Jz = if Ju_1 then 1 else 0
    local Jx = 3707 * Jz + 742 * (1 - Jz)
    local Jy = 2511 * Jz + 3030 * (1 - Jz)
    if not ((Jx * 1830 + Jy * 605 + Jx * Jy) % 16777213 == 834029) then
        Ju_1 = Ju
    end
    local Jt_1 = Ju_1
    if Ju <= 0 then
        return 1
    end
    return Jt_1 / Ju
end
local function fn1458()
    local JN = Cd("InventoryService")
    local JO = Cd("ItemService")
    local JP = not JN or not B4(JN.ToggleArmor)
    if JP then
        return
    end
    local JP_1 = Dz()
    local JR = JP_1 and JP_1.Armors or {}
    for k, v in C2() do
        local JQ_1 = Ck(Cn(v))
        local JR_1 = JQ_1 and JQ_1.Type == "Armor" and type(JQ_1.ArmorType) == "string"
        if JR_1 then
            if JR[JQ_1.ArmorType] ~= v then
                pcall(JN.ToggleArmor, JN, JQ_1.ArmorType, v)
                task.wait(0.05)
                if not B_() then
                    return
                end
            end
        end
    end
    for k, v in B2() do
        local JP_4 = Cb()
        local JQ_2 = JP_4 and JP_4.Components and JP_4.Components.Item
        local JP_5 = JQ_2
        if JQ_2 then
            JQ_2 = B4(JP_5.FromInstance)
        end
        if JQ_2 then
            JQ_2 = JP_5:FromInstance(v)
        end
        local JP_6 = JQ_2
        if JQ_2 then
            JQ_2 = JP_6.Config
        end
        local JR_2 = JQ_2
        if JQ_2 then
            JQ_2 = JR_2.Type == "Armor"
        end
        if JQ_2 then
            JQ_2 = type(JR_2.ArmorType) == "string"
        end
        if JQ_2 then
            JQ_2 = JO
        end
        if JQ_2 then
            JQ_2 = B4(JO.EquipItem)
        end
        if JQ_2 then
            pcall(JO.EquipItem, JO, v)
            local Replica = JP_6.Replica
            local JP_7 = Replica and Replica.Tags
            local JQ_4 = JP_7
            if JP_7 then
                JP_7 = JQ_4.Id
            end
            if JP_7 then
                pcall(JN.ToggleArmor, JN, JR_2.ArmorType, JQ_4.Id)
            end
            return
        end
    end
end
local function fn1474(d3)
    local HL = typeof(d3) ~= "Instance" or not d3:IsA("Model")
    if HL then
        return false
    end
    local attr = d3:GetAttribute("Type")
    if type(attr) ~= "string" then
        return false
    elseif State.Prey == "Any" then
        local HP = if Ds:HasTag(d3, "Dialogue") then 1 else 0
        if HP == 1 then
            return false
        end
        return true
    else
        return attr == State.Prey
    end
end
local function fn1514(nk)
    local attr = nk:GetAttribute("Type")
    local OT = Dx(attr)
    local OU = type(OT) == "table" and type(OT.DisplayName) == "string"
    if OU then
        return OT.DisplayName
    end
    return attr or "Entity"
end
local function fn1521(mq)
    State.Private = mq == true
end
local function fn1534()
    local MA = Cd("VaultService")
    local MB = not MA or not B4(MA.SellOfferItem)
    if MB then
        return
    end
    local MB_1 = CH()
    local MC = MB_1 and MB_1.Offers and MB_1.Offers.Items
    if type(MC) ~= "table" then
        return
    end
    local MC_1 = #MC
    local MH = 1
    while true do
        if MH <= MC_1 then
            local MI = MH
            if not B_() then
                break
            end
            local MC_2 = MC[MI]
            local MD = type(MC_2) == "table" and MC_2.Name
            if MD then
                pcall(MA.SellOfferItem, MA, MI)
            end
            MH += 1
            continue
        end
        return
    end
    return
end
local function fn1549(ma)
    local NR = Dd[ma] or State.Recipe
    State.Recipe = NR
end
local function fn1563()
    local Lm = Cd("VaultService")
    local Ln = not Lm or not B4(Lm.StoreItem)
    if Ln then
        return
    end
    local Ln_1 = CH()
    if type(Ln_1) == "table" then
        local Lo = type(Ln_1.Items) == "table" and #Ln_1.Items
        local Lp = Lo or 0
        local Lp_1 = (tonumber(Ln_1.Slots))
        local Lt = if Lp_1 then 1 else 0
        local Lr = 1070 * Lt + 2233 * (1 - Lt)
        local Ls = 2937 * Lt + 349 * (1 - Lt)
        if not ((Lr * 594 + Ls * 3055 + Lr * Ls) % 16777213 == 12750705) then
            Lp_1 = 0
        end
        local Ln_2 = Lp_1
        if Ln_2 > 0 and Lp >= Ln_2 then
            return
        end
    end
    for k, v in C2() do
        if DD(v) then
            pcall(Lm.StoreItem, Lm, v)
            return
        end
    end
end
local function fn1578()
    local Kt = Cd("InventoryService")
    local Ku = not Kt or not B4(Kt.SwapBackpackItems)
    if Ku then
        return
    end
    local Ku_1 = Dz()
    local Kv
    local Kw
    local Kx = Ku_1 and type(Ku_1.Inventory) == "table"
    if Kx then
        for k, v in Ku_1.Inventory do
            if type(v) == "string" then
                Kv = v
                break
            end
        end
    end
    local Kx_1 = Ku_1 and type(Ku_1.BackpackStorage) == "table"
    if Kx_1 then
        for k, v in Ku_1.BackpackStorage do
            if type(v) == "string" then
                Kw = v
                break
            end
        end
    end
    if Kv and Kw then
        pcall(Kt.SwapBackpackItems, Kt, Kv, Kw)
    end
end
local function fn1579(mJ)
    local Oq = (tonumber(mJ))
    local Ou = if Oq then 1 else 0
    local Os = 2638 * Ou + 2917 * (1 - Ou)
    local Ot = 418 * Ou + 3758 * (1 - Ou)
    if not ((Os * 3498 + Ot * 2355 + Os * Ot) % 16777213 == 11314798) then
        Oq = 500
    end
    State.EspDistance = math.max(0, Oq)
end
local function fn1581(l7)
    local NP = C5[l7] or "Any"
    State.Prey = NP
end
local function fn1613()
    local KX = Cd("CraftService")
    local KY = not KX or not B4(KX.Craft)
    if KY then
        return
    end
    local Recipe = State.Recipe
    local KZ = Recipe == ""
    local K_ = type(Recipe) ~= "string" or KZ
    if K_ then
        return
    end
    pcall(KX.Craft, KX, Recipe)
end
BY = nil
BZ = nil
B_ = nil
B0 = nil
B1 = nil
B2 = nil
B3 = nil
B4 = nil
B6 = nil
B7 = nil
B8 = nil
B9 = nil
Ca = nil
Cb = nil
Cc = nil
Cd = nil
Cf = nil
Cg = nil
Ch = nil
Ci = nil
Ck = nil
Cm = nil
Cn = nil
Co = nil
Cp = nil
Cq = nil
Cr = nil
Cs = nil
Ct = nil
Cu = nil
Cv = nil
Cw = nil
Cx = nil
Cy = nil
CA = nil
CB = nil
CD = nil
CE = nil
CF = nil
PlayerGui = nil
CH = nil
CI = nil
CJ = nil
local Players, B5, Ce, Cj, Cl, Cz, CC
CK = nil
CL = nil
LocalPlayer = nil
CN = nil
CP = nil
CR = nil
CU = nil
CV = nil
CX = nil
CY = nil
CZ = nil
C_ = nil
C0 = nil
C1 = nil
C2 = nil
C4 = nil
C5 = nil
C6 = nil
C8 = nil
C9 = nil
Da = nil
Db = nil
CoreGui = nil
Dd = nil
De = nil
Df = nil
Dh = nil
Di = nil
Dj = nil
Dl = nil
Dm = nil
State = nil
Dq = nil
Dr = nil
Ds = nil
Dt = nil
Du = nil
Dv = nil
Dx = nil
local CO, CQ, Workspace, CW, Lighting, TeleportService, GuiService, HttpService, Do, VirtualUser, UserInputService
Dy = nil
Dz = nil
DA = nil
DB = nil
DD = nil
DE = nil
DF = nil
DG = nil
DH = nil
DI = nil
DJ = nil
DK = nil
DL = nil
DM = nil
DN = nil
DO = nil
DP = nil
DQ = nil
DR = nil
local RunService
RunService = nil
local D6 = if not game:IsLoaded() then 1 else 0
if D6 == 1 then
    game.Loaded:Wait()
end
Players, RunService, UserInputService, VirtualUser, HttpService, GuiService, CoreGui, TeleportService, Lighting, Workspace, LocalPlayer, PlayerGui, Cy = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
VirtualUser = game:GetService("VirtualUser")
HttpService = game:GetService("HttpService")
GuiService = game:GetService("GuiService")
CoreGui = game:GetService("CoreGui")
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
local CollectionService = game:GetService("CollectionService")
Workspace = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local Vf_7 = "OuroborosLastStop"
Cy = fns.fn515
if getgenv then
    getgenv().gethui = Cy
end
Ch, DH, Dy, Ds, State, Dh, Dd, Db, C5, C1, CV, CP, CJ, CC, CW, BZ, DN, DF, DJ, CO, B4, B_, CA, Cb, Di, Ct, Cd, DQ, De, CL, Ce, C4, CN, B9, Dz, Ck, DP, Cn, DK, C2, Cq, B3, CE, DM, Dq, CY, Dr, C9, B0, CQ, CB, Co, B2, B6, CF, Cf, B1, Dl, CZ, CU, Cc, DA, Cu, Df, Dv, C_, Cg, DD, CH, DG, Cr, DI, Cs, B7, DB, CK, DR, Dj, CR, Cv, Dm, Cm, DE, C8, Ci, DO, Da, CI, Ca, Du, CX, Cp, Dx, C0, Cz, Cj, B5, Dt, Cl, Do, C6, CD, Cw, B8, DL, Cx, BY = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
pcall(fns.fn987)
local function Vf_9(v)
    local Ei
    local Ek
    local Ej
    Ei = nil
    Ej = nil
    Ek = nil
    local El = v ~= ""
    local Em = type(v) == "string" and El
    assert(Em, "A namespace is required")
    assert(type(getgenv) == "function", "getgenv is unavailable")
    Ei = getgenv()
    assert(type(Ei) == "table", "getgenv did not return a table")
    local El_1 = Ei[v]
    if El_1 ~= nil then
        local Em_1 = type(El_1) == "table" and type(El_1.Unload) == "function"
        assert(Em_1, "Namespace is occupied")
        El_1.Unload()
        assert(Ei[v] == nil, "Previous instance did not release its namespace")
    end
    Ej = {}
    Ek = { State = {}, Unloaded = false }
    Ek.Track = function(B)
        assert(type(B) == "function", "Cleanup must be callable")
        if Ek.Unloaded then
            B()
        else
            table.insert(Ej, B)
        end
        return B
    end
    Ek.Unload = function()
        local Eb_1
        local Ea_1
        if Ek.Unloaded then
            return
        end
        Ek.Unloaded = true
        local D8 = {}
        local Ef = #Ej
        local Ee = -1
        while false and Ef <= 1 or true and Ef >= 1 do
            local Eg = Ef
            local D9_1 = table.remove(Ej, Eg)
            Ea_1, Eb_1 = pcall(D9_1)
            if not Ea_1 then
                table.insert(D8, tostring(Eb_1))
            end
            Ef += Ee
        end
        table.clear(Ek.State)
        if #D8 > 0 then
            error("Cleanup incomplete: " .. table.concat(D8, "; "), 0)
        end
        if Ei[v] == Ek then
            Ei[v] = nil
        end
    end
    Ei[v] = Ek
    return Ek
end
CO = function(O, P)
    local Ep = type(O) == "table" and type(O.Track) == "function"
    assert(Ep, "FeatureAPI required")
    local Ep_1 = type(P) == "table" and type(P.OnUnload) == "function"
    assert(Ep_1, "UI library required")
    assert(type(P.Unload) == "function", "UI unload required")
    O.Track(function()
        if not P.Unloaded then
            P:Unload()
        end
    end)
    P:OnUnload(function()
        O.Unload()
    end)
end
Ch = Vf_9(Vf_7)
B4 = fns.fn10
B_ = fns.fn1012
DH = fn1081(ReplicatedStorage)
Dy = fn1081(Workspace)
Ds = fn1081(CollectionService)
State = Ch.State
State.Enabled = {
    Hunt = false,
    Strike = false,
    Feed = false,
    Scavenge = false,
    Armor = false,
    Cards = false,
    PackSwap = false,
    Assemble = false,
    LeaveBench = false,
    Deposit = false,
    Withdraw = false,
    Exchange = false,
    Rematch = false,
    ToLobby = false,
    MobEsp = false,
    ItemEsp = false,
    NpcEsp = false,
    BusEsp = false,
    AutoJoiner = false,
    AutoLobby = false,
    UnlockRecipe = false,
    VaultSell = false,
    BuyVaultSlot = false,
    ClaimQuest = false,
    BuyAgency = false,
    EquipAgency = false,
    UnequipAgency = false,
    UpgradeAgency = false,
    RerollStock = false,
    BuyBusSkin = false,
    EquipBus = false
}
State.Prey = "Any"
State.StrikeRange = 15
State.PickupRange = 15
State.LootMode = "Tween"
State.Recipe = "WoodenWall"
State.UnlockRecipe = "WoodenWall"
State.Quest = "CullTheHorde"
State.Agency = "Ghoul"
State.BusSkin = "DefaultBus"
State.MaxPlayers = 1
State.Private = false
State.EspDistance = 500
State.MobFilter = "All"
State.AttackOrder = 1
State.Knit = nil
State.Config = nil
State.Tokens = {}
Dh = {}
Dd = {}
Db = { "Any" }
C5 = { Any = "Any" }
C1 = { "All" }
CV = {}
CP = {}
CJ = {}
CC = { "Tween", "Near Item" }
CA = fns.fn980
Cb = fns.fn481
Di = fns.fn918
Ct = fns.fn497
Cd = fns.fn624
DQ = fns.fn319
De = fn1267
CL = fns.fn583
Ce = fns.fn527
Ce()
C4 = fn1324
CN = fns.fn573
B9 = fns.fn682
Dz = fn1174
Ck = fns.fn982
DP = fns.fn889
Cn = fn1030
DK = fns.fn905
C2 = fn1168
Cq = fns.fn663
B3 = fn1088
CE = fns.fn136
DM = fns.fn508
Dq = fn1474
CY = fns.fn994
Dr = fns.fn571
C9 = fns.fn552
B0 = function(eN)
    local Ic
    local If_1
    local Ie_1
    local Id_1
    Id_1, Ie_1, If_1 = CN()
    local Id_2 = not If_1 or typeof(eN) ~= "Instance"
    if Id_2 then
        return
    end
    Ic = eN.Position + Vector3.new(0, 2, 0)
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(Ic, 8)
    end)
    If_1.CFrame = CFrame.new(Ic + (If_1.Position - eN.Position).Unit * 4, eN.Position)
    If_1.AssemblyLinearVelocity = Vector3.zero
end
CW = { "Spawn", "Bus", "ShopKeeper" }
CQ = fns.fn1002
Ch.TeleportTo = function(fd)
    local Iw
    local Iz_1
    local Iy_1
    local Ix_1
    Iy_1, Ix_1, Iz_1 = CN()
    local Ix_2 = CQ(fd)
    if not Iz_1 or not Ix_2 then
        return false
    end
    Iw = Ix_2.Position + Vector3.new(0, 5, 0)
    pcall(function()
        LocalPlayer:RequestStreamAroundAsync(Iw, 8)
    end)
    if not B_() then
        return false
    end
    Iz_1.CFrame = CFrame.new(Iw)
    Iz_1.AssemblyLinearVelocity = Vector3.zero
    return true
end
CB = fns.fn393
Co = fns.fn759
B2 = function()
    local Position
    local IV_1
    local IT_1
    local IU_1
    IV_1, IT_1, IU_1 = CN()
    local IT_2 = {}
    if not IU_1 then
        return IT_2
    end
    Position = IU_1.Position
    local IU_2 = tonumber(State.PickupRange) or 15
    for k, v in Ds:GetTagged("Item") do
        local IU_3 = v:IsA("Tool") and v:IsDescendantOf(Dy)
        if IU_3 then
            local IX_1 = IV_1 and v:IsDescendantOf(IV_1)
            IU_3 = not IX_1
        end
        if IU_3 then
            IU_3 = not v.Name:find("^Tutorial")
        end
        if IU_3 then
            IU_3 = not v:GetAttribute("ForSale")
        end
        if IU_3 then
            local IU_4 = CB(v)
            if IU_4 then
                if (IU_4.Position - Position).Magnitude <= IU_2 then
                    table.insert(IT_2, v)
                end
            end
        end
    end
    table.sort(IT_2, function(fR, fS)
        local IN = CB(fR)
        local IO = CB(fS)
        if not IN or not IO then
            return IN ~= nil
        end
        return (IN.Position - Position).Magnitude < (IO.Position - Position).Magnitude
    end)
    return IT_2
end
B6 = fns.fn778
CF = fns.fn995
Cf = fns.fn735
B1 = fns.fn1016
Dl = fn1427
CZ = fns.fn654
CU = fn1458
Cc = fns.fn936
DA = fn1201
Cu = fn1578
Df = fn1275
Dv = fn1613
C_ = fn1032
Cg = fns.fn79
DD = fn1180
CH = fn1344
DG = fn1563
Cr = fn1134
if (Db or CI or Co and not Co or (not Db or not Cm) and (not Cg or Db)) and ((Cg and not CI or (not Co or Db)) and (DA and Co or Co and not Db)) and not ((Db or CI or Co and not Co or (not Db or not Cm) and (not Cg or Db)) and ((Cg and not CI or (not Co or Db)) and (DA and Co or Co and not Db))) then
    Cs = fn1358
    DI = fn1116
else
    DI = fn1358
    Cs = fn1116
end
B7 = fns.fn220
DB = fns.fn14
CK = fns.fn899
DR = fns.fn500
Dj = fns.fn519
CR = fn1292
Cv = fn1227
Dm = fn1534
Cm = fns.fn154
DE = fns.fn495
C8 = fns.fn396
Ci = fn1280
DO = fns.fn450
Da = fns.fn861
CI = fn1420
Ca = fns.fn470
if (not Cb or CA or (not Cl or not Cv)) and (CK or CA or not Cb and CK) and not ((not Cb or CA or (not Cl or not Cv)) and (CK or CA or not Cb and CK)) then
    Ch = fns.fn991
    Du = fns.fn662
    BZ = fn1299
    DF.SetPrey = fn1581
    DF.SetRecipe = fn1549
    DF.SetStrikeRange = fns.fn887
    DF.SetPickupRange = fns.fn443
    DF.SetLootMode = fn1072
    DF.SetEnabled = fn1395
    DF.SetMaxPlayers = fn1093
    DF.SetPrivate = fn1521
    DF.SetUnlockRecipe = fns.fn540
    DF.SetQuest = fns.fn259
    DF.SetAgency = fn1402
    DF.SetBusSkin = fns.fn670
    DF.PlayNow = fns.fn675
    DF.RedeemCodes = fns.fn920
    DF.SetEspDistance = fn1579
    DF.SetMobFilter = fn1171
    DF.Catalog = fns.fn229
    CX = {
        mob = { fill = Color3.fromRGB(255, 70, 70), text = Color3.fromRGB(255, 90, 90), offset = 3.2 },
        npc = { offset = 3.2, text = Color3.fromRGB(90, 200, 255), fill = Color3.fromRGB(70, 180, 255) },
        item = { fill = Color3.fromRGB(255, 210, 70), offset = 2.2, text = Color3.fromRGB(255, 220, 90) },
        bus = { offset = 8, fill = Color3.fromRGB(255, 140, 40), text = Color3.fromRGB(255, 160, 70) }
    }
    Cp = {}
else
    Du = fns.fn991
    CX = fns.fn662
    Cp = fn1299
    Ch.SetPrey = fn1581
    Ch.SetRecipe = fn1549
    Ch.SetStrikeRange = fns.fn887
    Ch.SetPickupRange = fns.fn443
    Ch.SetLootMode = fn1072
    Ch.SetEnabled = fn1395
    Ch.SetMaxPlayers = fn1093
    Ch.SetPrivate = fn1521
    Ch.SetUnlockRecipe = fns.fn540
    Ch.SetQuest = fns.fn259
    Ch.SetAgency = fn1402
    Ch.SetBusSkin = fns.fn670
    Ch.PlayNow = fns.fn675
    Ch.RedeemCodes = fns.fn920
    Ch.SetEspDistance = fn1579
    Ch.SetMobFilter = fn1171
    Ch.Catalog = fns.fn229
    BZ = {
        mob = { fill = Color3.fromRGB(255, 70, 70), text = Color3.fromRGB(255, 90, 90), offset = 3.2 },
        item = { fill = Color3.fromRGB(255, 210, 70), text = Color3.fromRGB(255, 220, 90), offset = 2.2 },
        npc = { fill = Color3.fromRGB(70, 180, 255), text = Color3.fromRGB(90, 200, 255), offset = 3.2 },
        bus = { fill = Color3.fromRGB(255, 140, 40), text = Color3.fromRGB(255, 160, 70), offset = 8 }
    }
    DF = {}
end
Dx = fns.fn753
C0 = fns.fn643
Cz = fn1077
Cj = fns.fn798
B5 = fn1514
Dt = fns.fn721
Cl = fns.fn849
Do = fns.fn751
C6 = fn1063
CD = fn1249
Cw = fn1391
B8 = fns.fn572
DL = fns.fn249
Cx = function(oo, op)
    local Pu
    Pu = {}
    local function Pv(ou, ov, ow)
        local Pr = Do(ou)
        if not Pr then
            return
        end
        local Magnitude = (Pr.Position - oo).Magnitude
        if Magnitude > op then
            return
        end
        Pu[ou] = { part = Pr, kind = ov, label = ow, distance = Magnitude }
    end
    if State.Enabled.MobEsp or State.Enabled.NpcEsp then
        local ENTITY_CONTAINER = Dy:FindFirstChild("ENTITY_CONTAINER")
        if ENTITY_CONTAINER then
            for i, child in ENTITY_CONTAINER:GetChildren() do
                local Pw_2 = child:IsA("Model") and type(child:GetAttribute("Type")) == "string"
                if Pw_2 then
                    local Pw_3 = State.Enabled.NpcEsp and C0(child)
                    if Pw_3 then
                        Pv(child, "npc", B5(child))
                    else
                        local Pw_4 = State.Enabled.MobEsp and Cz(child) and Cj(child)
                        if Pw_4 then
                            Pv(child, "mob", B5(child))
                        end
                    end
                end
            end
        end
    end
    local ITEM_CONTAINER = Dy:FindFirstChild("ITEM_CONTAINER")
    if ITEM_CONTAINER then
        if State.Enabled.ItemEsp then
            for i, child in ITEM_CONTAINER:GetChildren() do
                local Px_1 = child:IsA("Tool") and not child.Name:find("^Tutorial")
                if Px_1 then
                    Pv(child, "item", Cl(child))
                end
            end
        end
        if State.Enabled.BusEsp then
            local Bus = ITEM_CONTAINER:FindFirstChild("Bus")
            local Pw_6 = Bus and Bus:IsA("Model")
            if Pw_6 then
                Pv(Bus, "bus", "Bus")
            end
        end
    end
    return Pu
end
BY = fns.fn110
Ch.UpdateEsp = fns.fn464
DJ = {
    task.spawn(fns.worker5),
    task.spawn(worker4),
    task.spawn(fns.worker3),
    task.spawn(fns.worker2),
    task.spawn(fns.worker)
}
Ch.Track(fn1145)
local function Vf_3()
    local US
    local onDiscord
    local UL
    UL = nil
    onDiscord = nil
    US = nil
    local UH, UI, ThemeManager, Options, UM, UN, Library, Toggles, UR, SaveManager
    US = "https://discord.gg/synapsex"
    UN = "https://rscripts.net/@Ouroboros"
    UH = "https://ouroboros-hub-rbx.web.app/"
    UM = "Last Stop"
    Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
    ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
    SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
    Toggles = Library.Toggles
    Options = Library.Options
    CO(Ch, Library)
    UL = function(qy, qz)
        local Qu = B4(setclipboard) and setclipboard
        local Qv = Qu
        if not Qv then
            local Qu_1 = B4(toclipboard) and toclipboard
            Qv = Qu_1 or nil
        end
        local Qu_2 = Qv
        if not Qu_2 then
            Library:Notify("Clipboard is unavailable")
            return
        end
        local Qv_1 = pcall(Qu_2, qy)
        if Qv_1 then
            Library:Notify(qz)
        else
            Library:Notify("Failed to copy")
        end
    end
    onDiscord = function()
        UL(US, "Copied Discord invite to clipboard")
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = US, Copyable = true }, "|", UM, "|", "v0.9" },
        Icon = 78539693571783,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Window:SetGlow(false)
    UI = {
        Info = Window:AddTab("Info", "info"),
        Main = Window:AddTab("Main", "gamepad-2"),
        Lobby = Window:AddTab("Lobby", "door-open"),
        Player = Window:AddTab("Player", "person-standing"),
        Settings = Window:AddTab("Settings", "settings")
    }
    local function UU_1(qO)
        local DiscordGroup = qO:AddLeftGroupbox("Discord")
        DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onDiscord })
        DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onDiscord })
    end
    for k, v in UI do
        if k ~= "Info" then
            UU_1(v)
        end
    end
    Ce()
    UR = Ch.Catalog()
    local CombatGroup = UI.Main:AddLeftGroupbox("Combat", "swords")
    local Prey = UR.Prey
    local UW = table.find(UR.Prey, "Zombie") or 1
    CombatGroup:AddDropdown("TargetMobs", {
        Text = "Target Mobs",
        Values = Prey,
        Default = UW,
        Callback = function(qW)
            Ch.SetPrey(qW)
        end
    })
    Ch.SetPrey(Options.TargetMobs.Value)
    CombatGroup:AddToggle("AutoFarmMobs", {
        Text = "Auto Farm Mobs",
        Default = false,
        Callback = function(qY)
            Ch.SetEnabled("Hunt", qY)
        end
    })
    CombatGroup:AddSlider("AuraRadius", {
        Text = "Aura Radius",
        Default = 15,
        Min = 5,
        Max = 50,
        Rounding = 0,
        Callback = function(q_)
            Ch.SetStrikeRange(q_)
        end
    })
    CombatGroup:AddToggle("KillAura", {
        Text = "Kill Aura",
        Default = false,
        Callback = function(q1)
            Ch.SetEnabled("Strike", q1)
        end
    })
    local ItemsGroup = UI.Main:AddLeftGroupbox("Items", "package")
    ItemsGroup:AddToggle("AutoEat", {
        Text = "Auto Eat",
        Default = false,
        Callback = function(q4)
            Ch.SetEnabled("Feed", q4)
        end
    })
    ItemsGroup:AddSlider("LootRadius", {
        Text = "Loot Radius",
        Default = 15,
        Min = 5,
        Max = 50,
        Rounding = 0,
        Callback = function(q6)
            Ch.SetPickupRange(q6)
        end
    })
    ItemsGroup:AddToggle("AutoLoot", {
        Text = "Auto Loot",
        Default = false,
        Callback = function(q8)
            Ch.SetEnabled("Scavenge", q8)
        end
    })
    ItemsGroup:AddDropdown("LootMode", {
        Text = "Loot Mode",
        Values = CC,
        Default = "Tween",
        Callback = function(rb)
            Ch.SetLootMode(rb)
        end
    })
    Ch.SetLootMode(Options.LootMode.Value)
    ItemsGroup:AddToggle("AutoToggleArmor", {
        Text = "Auto Toggle Armor",
        Default = false,
        Callback = function(rd)
            Ch.SetEnabled("Armor", rd)
        end
    })
    ItemsGroup:AddToggle("AutoToggleCardSlot", {
        Text = "Auto Toggle Card Slot",
        Default = false,
        Callback = function(rf)
            Ch.SetEnabled("Cards", rf)
        end
    })
    ItemsGroup:AddToggle("AutoSwapBackpack", {
        Text = "Auto Swap Backpack",
        Default = false,
        Callback = function(rh)
            Ch.SetEnabled("PackSwap", rh)
        end
    })
    local RecipesGroup = UI.Main:AddRightGroupbox("Recipes", "hammer")
    local Recipes2 = UR.Recipes
    local UW_1 = table.find(UR.Recipes, "WoodenWall") or 1
    RecipesGroup:AddDropdown("Recipe", {
        Text = "Recipe",
        Values = Recipes2,
        Default = UW_1,
        Callback = function(rk)
            Ch.SetRecipe(rk)
        end
    })
    Ch.SetRecipe(Options.Recipe.Value)
    RecipesGroup:AddToggle("AutoCraft", {
        Text = "Auto Craft",
        Default = false,
        Callback = function(rm)
            Ch.SetEnabled("Assemble", rm)
        end
    })
    RecipesGroup:AddToggle("AutoCloseStation", {
        Text = "Auto Close Station",
        Default = false,
        Callback = function(ro)
            Ch.SetEnabled("LeaveBench", ro)
        end
    })
    RecipesGroup:AddToggle("AutoVaultStore", {
        Text = "Auto Vault Store",
        Default = false,
        Callback = function(rr)
            Ch.SetEnabled("Deposit", rr)
        end
    })
    RecipesGroup:AddToggle("AutoVaultUnstore", {
        Text = "Auto Vault Unstore",
        Default = false,
        Callback = function(rt)
            Ch.SetEnabled("Withdraw", rt)
        end
    })
    RecipesGroup:AddToggle("AutoVaultSwap", {
        Text = "Auto Vault Swap",
        Default = false,
        Callback = function(rv)
            Ch.SetEnabled("Exchange", rv)
        end
    })
    RecipesGroup:AddToggle("AutoPlayAgain", {
        Text = "Auto Play Again",
        Default = false,
        Callback = function(rx)
            Ch.SetEnabled("Rematch", rx)
        end
    })
    RecipesGroup:AddToggle("AutoReturnLobby", {
        Text = "Auto Return Lobby",
        Default = false,
        Callback = function(rz)
            Ch.SetEnabled("ToLobby", rz)
        end
    })
    local EspGroup = UI.Main:AddRightGroupbox("ESP", "eye")
    EspGroup:AddInput("MaxDistance", {
        Text = "Max Distance",
        Default = "500",
        Numeric = true,
        Finished = true,
        Callback = function(rC)
            Ch.SetEspDistance(rC)
        end
    })
    Ch.SetEspDistance(Options.MaxDistance.Value)
    local Mobs = UR.Mobs
    local UW_2 = table.find(UR.Mobs, "All") or 1
    EspGroup:AddDropdown("MobFilter", {
        Text = "Mob Filter",
        Values = Mobs,
        Default = UW_2,
        Searchable = true,
        Callback = function(rE)
            Ch.SetMobFilter(rE)
        end
    })
    Ch.SetMobFilter(Options.MobFilter.Value)
    EspGroup:AddToggle("MobEsp", {
        Text = "Mob ESP",
        Default = false,
        Callback = function(rG)
            Ch.SetEnabled("MobEsp", rG)
        end
    })
    EspGroup:AddToggle("ItemEsp", {
        Text = "Item ESP",
        Default = false,
        Callback = function(rI)
            Ch.SetEnabled("ItemEsp", rI)
        end
    })
    EspGroup:AddToggle("NpcEsp", {
        Text = "NPC ESP",
        Default = false,
        Callback = function(rK)
            Ch.SetEnabled("NpcEsp", rK)
        end
    })
    EspGroup:AddToggle("BusEsp", {
        Text = "Bus ESP",
        Default = false,
        Callback = function(rM)
            Ch.SetEnabled("BusEsp", rM)
        end
    })
    local function UU_6()
        local LobbyGroup = UI.Lobby:AddLeftGroupbox("Lobby", "door-open")
        LobbyGroup:AddToggle("AutoJoiner", {
            Text = "Auto Joiner",
            Default = false,
            Callback = function(rR)
                Ch.SetEnabled("AutoJoiner", rR)
            end
        })
        LobbyGroup:AddInput("LobbyMaxPlayers", {
            Text = "Max Players",
            Default = "1",
            Numeric = true,
            Finished = true,
            Callback = function(rU)
                Ch.SetMaxPlayers(rU)
            end
        })
        Ch.SetMaxPlayers(Options.LobbyMaxPlayers.Value)
        LobbyGroup:AddToggle("LobbyPrivate", {
            Text = "Private",
            Default = false,
            Callback = function(rX)
                Ch.SetPrivate(rX)
            end
        })
        LobbyGroup:AddToggle("AutoLobby", {
            Text = "Auto Lobby",
            Default = false,
            Callback = function(rZ)
                Ch.SetEnabled("AutoLobby", rZ)
            end
        })
        LobbyGroup:AddButton({
            Text = "Play Now",
            Func = function()
                if not Ch.PlayNow() then
                    Library:Notify("Play Now is only available in the lobby")
                end
            end
        })
        local ProgressGroup = UI.Lobby:AddRightGroupbox("Progress", "scroll-text")
        local Recipes = UR.Recipes
        local QF = table.find(UR.Recipes, "WoodenWall") or 1
        ProgressGroup:AddDropdown("RecipeUnlocks", {
            Text = "Recipe Unlocks",
            Values = Recipes,
            Default = QF,
            Searchable = true,
            Callback = function(r5)
                Ch.SetUnlockRecipe(r5)
            end
        })
        Ch.SetUnlockRecipe(Options.RecipeUnlocks.Value)
        ProgressGroup:AddToggle("AutoUnlockRecipe", {
            Text = "Auto Unlock Recipe",
            Default = false,
            Callback = function(r7)
                Ch.SetEnabled("UnlockRecipe", r7)
            end
        })
        local Quests = UR.Quests
        local QF_1 = table.find(UR.Quests, "CullTheHorde") or 1
        ProgressGroup:AddDropdown("Quests", {
            Text = "Quests",
            Values = Quests,
            Default = QF_1,
            Searchable = true,
            Callback = function(r9)
                Ch.SetQuest(r9)
            end
        })
        Ch.SetQuest(Options.Quests.Value)
        ProgressGroup:AddToggle("AutoVaultSellOffer", {
            Text = "Auto Vault Sell Offer",
            Default = false,
            Callback = function(sb)
                Ch.SetEnabled("VaultSell", sb)
            end
        })
        ProgressGroup:AddToggle("AutoBuyVaultSlot", {
            Text = "Auto Buy Vault Slot",
            Default = false,
            Callback = function(sd)
                Ch.SetEnabled("BuyVaultSlot", sd)
            end
        })
        ProgressGroup:AddToggle("AutoClaimQuest", {
            Text = "Auto Claim Quest",
            Default = false,
            Callback = function(sf)
                Ch.SetEnabled("ClaimQuest", sf)
            end
        })
        ProgressGroup:AddButton({
            Text = "Redeem Codes",
            Func = function()
                if not Ch.RedeemCodes() then
                    Library:Notify("Code redeem UI is unavailable")
                end
            end
        })
        local AgencyGroup = UI.Lobby:AddLeftGroupbox("Agency", "user-round")
        local Agencies = UR.Agencies
        local QF_2 = table.find(UR.Agencies, "Ghoul") or 1
        AgencyGroup:AddDropdown("Agencies", {
            Text = "Agencies",
            Values = Agencies,
            Default = QF_2,
            Searchable = true,
            Callback = function(sk)
                Ch.SetAgency(sk)
            end
        })
        Ch.SetAgency(Options.Agencies.Value)
        AgencyGroup:AddToggle("AutoBuyAgency", {
            Text = "Auto Buy Agency",
            Default = false,
            Callback = function(sm)
                Ch.SetEnabled("BuyAgency", sm)
            end
        })
        AgencyGroup:AddToggle("AutoEquipAgency", {
            Text = "Auto Equip Agency",
            Default = false,
            Callback = function(so)
                Ch.SetEnabled("EquipAgency", so)
            end
        })
        AgencyGroup:AddToggle("AutoUnequipAgency", {
            Text = "Auto Unequip Agency",
            Default = false,
            Callback = function(sq)
                Ch.SetEnabled("UnequipAgency", sq)
            end
        })
        AgencyGroup:AddToggle("AutoUpgradeAgency", {
            Text = "Auto Upgrade Agency",
            Default = false,
            Callback = function(ss)
                Ch.SetEnabled("UpgradeAgency", ss)
            end
        })
        AgencyGroup:AddToggle("AutoRerollStock", {
            Text = "Auto Reroll Stock",
            Default = false,
            Callback = function(su)
                Ch.SetEnabled("RerollStock", su)
            end
        })
        local BusGroup = UI.Lobby:AddRightGroupbox("Bus", "bus")
        local BusSkins = UR.BusSkins
        local QF_3 = table.find(UR.BusSkins, "DefaultBus") or 1
        BusGroup:AddDropdown("BusSkins", {
            Text = "Bus Skins",
            Values = BusSkins,
            Default = QF_3,
            Searchable = true,
            Callback = function(sx)
                Ch.SetBusSkin(sx)
            end
        })
        Ch.SetBusSkin(Options.BusSkins.Value)
        BusGroup:AddToggle("AutoBuyBusSkin", {
            Text = "Auto Buy Bus Skin",
            Default = false,
            Callback = function(sz)
                Ch.SetEnabled("BuyBusSkin", sz)
            end
        })
        BusGroup:AddToggle("AutoEquipBus", {
            Text = "Auto Equip Bus",
            Default = false,
            Callback = function(sB)
                Ch.SetEnabled("EquipBus", sB)
            end
        })
    end
    UU_6()
    local function UU_7()
        local Ra
        local Q6
        local Q4
        local Q5
        Q4 = nil
        Q5 = nil
        Q6 = nil
        Ra = nil
        local QZ, Q_, Q0, Label2, Q2, Label3, Q7, Q8, Label
        Q6 = function(sF)
            return (tostring(sF):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        Q5 = function(sH, sI)
            return string.format('<font color="%s">%s</font>', sI, Q6(sH))
        end
        Q0 = function(sL, sM, sN)
            return string.format("<b>%s</b> %s %s", sL, Q5("-", "#5a6070"), Q5(sM, sN))
        end
        local Rb = {}
        Q7 = "#7fd47f"
        Q2 = "#e8a34d"
        local Rc = "#6ec1ff"
        local Rd = "#8b93a3"
        if not Cb() then
            table.insert(Rb, "Knit")
        end
        local Re = #Rb == 0 and "ready"
        local Rf = Re or "limited: " .. table.concat(Rb, ", ")
        Q_ = "Unknown"
        pcall(function()
            local QI_1
            local QH_1
            if B4(identifyexecutor) then
                QI_1, QH_1 = identifyexecutor()
                local QJ = QI_1 ~= ""
                local QK = type(QI_1) == "string" and QJ
                if QK then
                    local QJ_1 = type(QH_1) == "string" and QH_1 ~= "" and QI_1 .. " " .. QH_1
                    Q_ = QJ_1 or QI_1
                end
            end
        end)
        Q4 = os.clock()
        QZ = function()
            local QP = math.floor(os.clock() - Q4)
            if QP < 60 then
                return QP .. "s"
            elseif QP < 3600 then
                return string.format("%dm %ds", QP // 60, QP % 60)
            else
                return string.format("%dh %dm", QP // 3600, QP % 3600 // 60)
            end
        end
        local UserGroup = UI.Info:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(Q0("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, Q7), true)
        UserGroup:AddLabel(Q0("UserId", tostring(LocalPlayer.UserId), Rc), true)
        UserGroup:AddLabel(Q0("Executor", Q_ .. "  " .. Rf, Q7), true)
        UserGroup:AddDivider()
        Label3 = UserGroup:AddLabel(Q0("Session", QZ(), Q2), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                UL(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                UL("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local SessionGroup = UI.Info:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(Q0("Game", UM, Rc), true)
        Label2 = SessionGroup:AddLabel(Q0("Players", "0/0", Q7), true)
        Q8 = tostring(game.JobId)
        local Rc_1 = #Q8 > 18 and string.sub(Q8, 1, 18) .. "..."
        local Re_2 = Rc_1
        local Rj = if Re_2 then 1 else 0
        local Rh = 2163 * Rj + 2470 * (1 - Rj)
        local Ri = 3639 * Rj + 1468 * (1 - Rj)
        if not ((Rh * 2166 + Ri * 3250 + Rh * Ri) % 16777213 == 7605752) then
            Re_2 = Q8
        end
        local Rc_2 = Re_2
        SessionGroup:AddLabel(Q0("Job", Rc_2, Rd), true)
        Label = SessionGroup:AddLabel(Q0("Ping", "0 ms", Q2), true)
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
                UL(Q8, "Copied Job ID")
            end
        })
        Ra = task.spawn(function()
            local QS_1
            local QR_1
            while true do
                task.wait(1)
                if Library.Unloaded then
                    break
                end
                Label3:SetText(Q0("Session", QZ(), Q2))
                Label2:SetText(Q0("Players", #Players:GetPlayers() .. "/" .. tostring(Players.MaxPlayers), Q7))
                QR_1, QS_1 = pcall(function()
                    return math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
                end)
                local QR_2 = QR_1 and QS_1 .. " ms" or "n/a"
                Label:SetText(Q0("Ping", QR_2, Q2))
            end
        end)
        Ch.Track(function()
            local QY = if coroutine.status(Ra) ~= "dead" then 1 else 0
            if QY == 1 then
                task.cancel(Ra)
            end
        end)
        local SocialsGroup = UI.Info:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({ Text = "Discord", Func = onDiscord })
        SocialsGroup:AddButton({
            Text = "Rscripts",
            Func = function()
                UL(UN, "Copied Rscripts profile")
            end
        })
        SocialsGroup:AddButton({
            Text = "Website",
            Func = function()
                UL(UH, "Copied website link")
            end
        })
    end
    UU_7()
    local function UU_8()
        local t8
        local tY
        local ua
        local ub
        local t9
        local MovementGroup = UI.Player:AddLeftGroupbox("Movement", "footprints")
        MovementGroup:AddToggle("WalkSpeedEnabled", { Text = "WalkSpeed", Default = false })
        MovementGroup:AddSlider("WalkSpeed", { Text = "WalkSpeed Amount", Default = 32, Min = 16, Max = 250, Rounding = 0 })
        MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
        MovementGroup:AddToggle("NoClip", { Text = "NoClip", Default = false })
        MovementGroup:AddToggle("InstantProximityPrompt", { Text = "Instant ProximityPrompt", Default = false })
        tY = false
        MovementGroup:AddDropdown("Teleport", { Text = "Teleport", Values = CW, Default = 1 })
        Options.Teleport:OnChanged(function(t1)
            if not tY then
                return
            end
            Ch.TeleportTo(t1)
        end)
        task.defer(function()
            tY = true
        end)
        local FlyGroup = UI.Player:AddRightGroupbox("Fly", "feather")
        FlyGroup:AddToggle("Fly", { Text = "Fly", Default = false })
        FlyGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 400, Rounding = 0 })
        ua = {}
        t8 = {}
        t9 = {}
        ub = {}
        local t7 = {}
        local function uc()
            for k, v in t8 do
                if k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(t8)
        end
        local function ug()
            for k, v in t9 do
                if k.Parent then
                    k.WalkSpeed = v
                end
            end
            table.clear(t9)
        end
        local function uk()
            for k, v in ua do
                if k.Parent then
                    k.PlatformStand = v
                end
            end
            table.clear(ua)
        end
        local function uo(up)
            if not up:IsA("ProximityPrompt") then
                return
            end
            if ub[up] == nil then
                ub[up] = {
                    HoldDuration = up.HoldDuration,
                    MaxActivationDistance = up.MaxActivationDistance,
                    RequiresLineOfSight = up.RequiresLineOfSight
                }
            end
            up.HoldDuration = 0
            up.MaxActivationDistance = 50
            up.RequiresLineOfSight = false
        end
        local function ur()
            for k, v in ub do
                if k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(ub)
        end
        Toggles.Fly:OnChanged(function()
            if not Toggles.Fly.Value then
                uk()
            end
        end)
        Toggles.WalkSpeedEnabled:OnChanged(function()
            if not Toggles.WalkSpeedEnabled.Value then
                ug()
            end
        end)
        Toggles.NoClip:OnChanged(function()
            if not Toggles.NoClip.Value then
                uc()
            end
        end)
        Toggles.InstantProximityPrompt:OnChanged(function()
            if Toggles.InstantProximityPrompt.Value then
                for k, v in Workspace:QueryDescendants("ProximityPrompt") do
                    pcall(uo, v)
                end
            else
                ur()
            end
        end)
        table.insert(t7, Workspace.DescendantAdded:Connect(function(uK)
            if Toggles.InstantProximityPrompt.Value then
                uo(uK)
            end
        end))
        table.insert(t7, RunService.Stepped:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            if Toggles.NoClip.Value and Character then
                for k, v in Character:QueryDescendants("BasePart") do
                    if t8[v] == nil then
                        t8[v] = v.CanCollide
                    end
                    v.CanCollide = false
                end
            end
        end))
        table.insert(t7, UserInputService.JumpRequest:Connect(function()
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Sc = Character and Character:FindFirstChildOfClass("Humanoid")
            if Toggles.InfJump.Value and Sc then
                Sc:ChangeState(Enum.HumanoidStateType.Jumping)
            end
        end))
        table.insert(t7, RunService.RenderStepped:Connect(function(u5)
            if Library.Unloaded then
                return
            end
            local Character = LocalPlayer.Character
            local Sf = Character and Character:FindFirstChildOfClass("Humanoid")
            local Sg = Character
            if Sg then
                Sg = Character:FindFirstChild("HumanoidRootPart")
            end
            local Se_1 = Sg
            local CurrentCamera = Workspace.CurrentCamera
            if Toggles.WalkSpeedEnabled.Value and Sf then
                if t9[Sf] == nil then
                    t9[Sf] = Sf.WalkSpeed
                end
                Sf.WalkSpeed = Options.WalkSpeed.Value
            end
            if Toggles.Fly.Value and Se_1 and Sf and CurrentCamera then
                if ua[Sf] == nil then
                    ua[Sf] = Sf.PlatformStand
                end
                Sf.PlatformStand = true
                local Sg_4 = Vector3.zero
                if not UserInputService:GetFocusedTextBox() then
                    if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                        Sg_4 += CurrentCamera.CFrame.LookVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                        Sg_4 -= CurrentCamera.CFrame.LookVector
                    end
                    local Sm = if UserInputService:IsKeyDown(Enum.KeyCode.A) then 1 else 0
                    if Sm == 1 then
                        Sg_4 -= CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                        Sg_4 += CurrentCamera.CFrame.RightVector
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
                        Sg_4 += Vector3.new(0, 1, 0)
                    end
                    if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                        Sg_4 -= Vector3.new(0, 1, 0)
                    end
                end
                Se_1.AssemblyLinearVelocity = Vector3.zero
                if Sg_4.Magnitude > 0 then
                    Se_1.CFrame = Se_1.CFrame + Sg_4.Unit * Options.FlySpeed.Value * u5
                end
            end
        end))
        Ch.Track(function()
            for k, v in t7 do
                v:Disconnect()
            end
            uc()
            ug()
            uk()
            ur()
        end)
    end
    UU_8()
    local function UU_9()
        local Tq, Tr, Ts, Tt, Tu, Tv, Tw, Tx, Ty, Tz, TA, TB, TC, Label
        Tq = {}
        Ty = {}
        Tv = nil
        TA = false
        Tw = 0
        Ts = 0
        TB = os.clock()
        local MenuGroup = UI.Settings:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        Tt = function()
            local CurrentCamera
            CurrentCamera = Workspace.CurrentCamera
            local Sv = not CurrentCamera or not B4(VirtualUser.CaptureController) or not B4(VirtualUser.ClickButton2)
            if Sv then
                return false
            end
            local Sv_1 = pcall(function()
                VirtualUser:CaptureController()
                VirtualUser:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not Sv_1 then
                return false
            end
            Tw += 1
            TB = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. Tw)
            end)
            return true
        end
        TC = function(vP)
            pcall(function()
                GuiService:SetGameplayPausedNotificationEnabled(not vP)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = CoreGui:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not vP
                end
            end)
            if not vP then
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
        Tz = function(v4)
            local SH = v4.ClassName == "ParticleEmitter" or v4.ClassName == "Trail"
            local SL = if SH then 1 else 0
            local SJ = 1937 * SL + 3732 * (1 - SL)
            local SK = 2878 * SL + 654 * (1 - SL)
            if not ((SJ * 820 + SK * 2706 + SJ * SK) % 16777213 == 14950894) then
                SH = v4.ClassName == "Smoke"
            end
            if not SH then
                SH = v4.ClassName == "Fire"
            end
            if not SH then
                SH = v4.ClassName == "Sparkles"
            end
            if not SH then
                SH = v4.ClassName == "Explosion"
            end
            if not SH then
                SH = v4.ClassName == "Beam"
            end
            if SH then
                if Tq[v4] == nil then
                    Tq[v4] = v4.Enabled
                end
                pcall(function()
                    v4.Enabled = false
                end)
            end
        end
        Tx = function()
            for k, v in Tq do
                local SQ = k
                local SS = v
                if SQ.Parent then
                    pcall(function()
                        SQ.Enabled = SS
                    end)
                end
            end
            table.clear(Tq)
            if Tv then
                pcall(function()
                    settings().Rendering.QualityLevel = Tv.Quality
                end)
                Lighting.GlobalShadows = Tv.Shadows
                Lighting.FogEnd = Tv.Fog
                Tv = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(wj)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not wj)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(wo)
                if wo then
                    if not Tv then
                        Tv = {
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
                    for k, v in Workspace:QueryDescendants("ParticleEmitter,Trail,Smoke,Fire,Sparkles,Beam") do
                        pcall(Tz, v)
                    end
                else
                    Tx()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        TC(true)
        local ScriptGroup = UI.Settings:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            TC(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            TC(true)
        end
        table.insert(Ty, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                Tt()
            end
        end))
        table.insert(Ty, Workspace.DescendantAdded:Connect(function(wH)
            if Toggles.FpsBoost.Value then
                Tz(wH)
            end
        end))
        Tu = function(wL)
            if TA or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            TA = true
            local S4 = Ts
            local S5_1 = pcall(function()
                if wL then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not S5_1 then
                TA = false
                if not wL and S4 == Ts then
                    task.delay(1.5, function()
                        if S4 == Ts then
                            Tu(true)
                        end
                    end)
                end
            end
        end
        table.insert(Ty, TeleportService.TeleportInitFailed:Connect(function(w2)
            local S9
            if w2 == LocalPlayer and TA then
                TA = false
                S9 = Ts
                task.delay(3, function()
                    if S9 == Ts then
                        Tu(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 30)
            local Te = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not Te then
                return
            end
            table.insert(Ty, Te.ChildAdded:Connect(function(xh)
                if xh.Name == "ErrorPrompt" then
                    Tu(false)
                end
            end))
        end)
        Tr = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    TC(true)
                end
                local Th = Toggles.AntiAfk.Value and os.clock() - TB >= 60
                if Th then
                    Tt()
                end
                task.wait(1)
            end
        end)
        Ch.Track(function()
            Ts += 1
            for k, v in Ty do
                v:Disconnect()
            end
            pcall(task.cancel, Tr)
            TC(false)
            Tx()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    UU_9()
    local function UU_10()
        local UB, UC, UD, UE
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("OuroborosHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(UI.Settings)
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/LastStop")
        local UF = SaveManager:BuildConfigSection(UI.Settings)
        UE = function(xI, xJ)
            local TH_1 = (xI == "Toggle" and Toggles or Options)[xJ]
            local TG_2 = type(TH_1) == "table" and TH_1.Type == xI
            return TG_2 and TH_1 or nil
        end
        UC = function(xS, xT)
            local Type = xT.Type
            if Type == "Toggle" then
                return { idx = xS, type = "Toggle", value = xT.Value == true }
            elseif Type == "Slider" then
                return { idx = xS, type = "Slider", value = tostring(xT.Value) }
            elseif Type == "Dropdown" then
                return { idx = xS, type = "Dropdown", multi = xT.Multi == true, value = xT.Value }
            elseif Type == "Input" then
                local TL = xT.Value or ""
                return { idx = xS, type = "Input", text = tostring(TL) }
            elseif Type == "ColorPicker" then
                return { idx = xS, type = "ColorPicker", value = xT.Value:ToHex(), transparency = xT.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = xS,
                    type = "KeyPicker",
                    mode = xT.Mode,
                    key = xT.Value,
                    modifiers = xT.Modifiers,
                    toggled = xT.Toggled
                }
            else
                return nil
            end
        end
        UB = function()
            local TU = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local TV = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if TV then
                        local TV_1 = UC(k, v)
                        if TV_1 then
                            TU[#TU + 1] = TV_1
                        end
                    end
                end
            end
            table.sort(TU, function(x2, x3)
                if x2.type ~= x3.type then
                    return x2.type < x3.type
                end
                return x2.idx < x3.idx
            end)
            return { objects = TU }
        end
        UD = function(x5)
            local Ua
            Ua = nil
            local Ub = type(x5) ~= "table" or type(x5.idx) ~= "string" or type(x5.type) ~= "string"
            local Uf = if Ub then 1 else 0
            local Ud = 1766 * Uf + 480 * (1 - Uf)
            local Ue = 1568 * Uf + 1823 * (1 - Uf)
            if not ((Ud * 2207 + Ue * 3310 + Ud * Ue) % 16777213 == 11856730) then
                Ub = SaveManager.Ignore[x5.idx]
            end
            if Ub then
                return false
            end
            Ua = UE(x5.type, x5.idx)
            if not Ua then
                return false
            end
            local Ub_1 = pcall(function()
                if x5.type == "Input" then
                    if type(x5.text) ~= "string" then
                        return
                    end
                    Ua:SetValue(x5.text)
                elseif x5.type == "ColorPicker" then
                    Ua:SetValueRGB(Color3.fromHex(x5.value), x5.transparency)
                elseif x5.type == "KeyPicker" then
                    Ua:SetValue({ x5.key, x5.mode, x5.modifiers })
                    if x5.mode == "Toggle" and x5.toggled ~= nil then
                        Ua.Toggled = x5.toggled
                        Ua:Update()
                    end
                else
                    Ua:SetValue(x5.value)
                end
            end)
            return Ub_1
        end
        UF:AddDivider()
        UF:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        UF:AddButton("Export Config to Clipboard", function()
            local Uk_1
            local Uj_1
            Uj_1, Uk_1 = pcall(HttpService.JSONEncode, HttpService, UB())
            if Uj_1 then
                local Uj_2 = B4(setclipboard) and setclipboard
                local Ul = Uj_2
                if not Ul then
                    local Uj_3 = B4(toclipboard) and toclipboard
                    Ul = Uj_3 or nil
                end
                local Uj_4 = Ul
                local Ul_1 = type(Uj_4) == "function" and pcall(Uj_4, Uk_1)
                if Ul_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        UF:AddButton("Import Config from Clipboard Text", function()
            local Uq_1
            local Uo = Options.SaveManager_ImportSource.Value
            local Uo_1
            local Uu = if Uo then 1 else 0
            local Us = 2561 * Uu + 792 * (1 - Uu)
            local Ut = 2083 * Uu + 1250 * (1 - Uu)
            if not ((Us * 2865 + Ut * 2938 + Us * Ut) % 16777213 == 2014469) then
                Uo = ""
            end
            local Up = tostring(Uo):match("^%s*(.-)%s*$")
            if Up == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #Up > 262144 then
                Library:Notify("That config is too large")
                return
            end
            Uo_1, Uq_1 = pcall(HttpService.JSONDecode, HttpService, Up)
            local Up_1 = not Uo_1 or type(Uq_1) ~= "table"
            local Uu_1 = if Up_1 then 1 else 0
            local Us_1 = 1321 * Uu_1 + 1586 * (1 - Uu_1)
            local Ut_1 = 3523 * Uu_1 + 2652 * (1 - Uu_1)
            if not ((Us_1 * 2118 + Ut_1 * 3350 + Us_1 * Ut_1) % 16777213 == 2476598) then
                Up_1 = type(Uq_1.objects) ~= "table"
            end
            if Up_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #Uq_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local Uo_2 = 0
            for i, v in ipairs(Uq_1.objects) do
                if UD(v) then
                    Uo_2 += 1
                end
            end
            if Uo_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local Uq_2 = Uo_2 == 1 and ""
            local Uu_2 = if Uq_2 then 1 else 0
            local Us_2 = 3100 * Uu_2 + 3191 * (1 - Uu_2)
            local Ut_2 = 2071 * Uu_2 + 3078 * (1 - Uu_2)
            if not ((Us_2 * 506 + Ut_2 * 3783 + Us_2 * Ut_2) % 16777213 == 15823293) then
                Uq_2 = "s"
            end
            Library:Notify(("Imported %d setting%s"):format(Uo_2, Uq_2), 6)
        end)
        SaveManager:LoadAutoloadConfig()
        if Toggles.HideUiOnStart.Value then
            Library:Toggle(false)
        end
    end
    UU_10()
end
Vf_3()
