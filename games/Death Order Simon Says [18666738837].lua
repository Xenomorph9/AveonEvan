local fns = {}
local akp_13, akp_15, Toggles, akp_18, Label3, akp_20, akp_22, akp_23, akp_24, WalkSpeed, akp_26, akp_28, akp_29, connection, akp_33, akp_35, akp_36, akp_38, akp_39, akp_41, akp_42, akp_43, akp_44, akp_47, akp_48, akp_50, akp_51, akp_52, Options, akp_55, akp_56, akp_57, akp_58, akp_60, Label, akp_63, akp_65, Workspace, akp_69, akp_75, akp_77
fns.akp_2 = nil
fns.akp_3 = nil
fns.CFrame2 = nil
fns.akp_5 = nil
fns.akp_7 = nil
fns.akp_8 = nil
fns.akp_10 = nil
fns.akp_11 = nil
akp_13 = nil
akp_15 = nil
Toggles = nil
akp_18 = nil
Label3 = nil
akp_20 = nil
akp_22 = nil
akp_24 = nil
WalkSpeed = nil
akp_26 = nil
akp_29 = nil
connection = nil
akp_33 = nil
akp_35 = nil
akp_36 = nil
akp_38 = nil
akp_39 = nil
akp_41 = nil
akp_43 = nil
akp_44 = nil
akp_47 = nil
akp_48 = nil
akp_50 = nil
akp_51 = nil
akp_52 = nil
Options = nil
akp_55 = nil
akp_57 = nil
akp_58 = nil
akp_60 = nil
Label = nil
akp_63 = nil
akp_65 = nil
Workspace = nil
local Mg
local NF
local MF
local LF
local M3
local Ms
local Label2
local MR
local LR
local Mf
local Lf
local NE
local ME
local M2
local L2
local Nr
local Mr
local MQ
local LQ
local Ne
local Me
local Le
local ND
local MD
local M1
local Library
local VirtualUser
local Lq
local MP
local LP
local Nd
local Md
local Ld
local MC
local LC
local L0
local Np
local Mp
local Lp
local MO
local LO
local Nc
local NB
local MB
local LB
local M_
local L_
local No
local Lo
local MN
local LN
local Nb
local Mb
local Lb
local Label4
local MA
local LA
local MZ
local LZ
local Mn
local Ln
local MM
local LM
local Na
local Ma
local La
local Nz
local Mz
local onJoinDiscordForKeylessScripts
local Mm
local ML
local LL
local LocalPlayer2
local L9
local K9
local Ny
local My
local worker
local LX
local Ml
local Ll
local MK
local LK
local M8
local L8
local Nx
local Mx
function fns.fn5()
    local Yk = if akp_50() == "thirdfloor" then 1 else 0
    if Yk == 1 then
        LB("2ndfloor")
    end
end
function fns.fn19()
    local Pl = akp_35()
    local Pm = Pl and Pl:FindFirstChild("HumanoidRootPart")
    return Pm
end
function fns.fn38(es)
    local et = { es.Size.X, es.Size.Y, es.Size.Z }
    table.sort(et)
    return et[2] * et[3]
end
function fns.fn97()
    if Lf("PoseOrders") then
        fns.akp_3()
    end
end
function fns.fn100()
    if Lf("PoseOrders") then
        Mb(true)
    end
end
function fns.fn122()
    if not Lf("MovementOrders") then
        return
    end
    local Map = Workspace:FindFirstChild("Map")
    local U1 = Map and Map:FindFirstChild("Stairs")
    local U1_1 = akp_13(akp_58(U1))
    local U0_2 = U1_1 or MN("2ndfloor")
    L9(U0_2, 4)
end
function fns.fn175(dC)
    local Q7 = dC.Parent
    while true do
        if not (Q7 and Q7 ~= Workspace) then
            return nil
        end
        if Q7:IsA("BasePart") then
            break
        end
        if Q7:IsA("Model") then
            local BasePart = Q7:FindFirstChildWhichIsA("BasePart", true)
            if BasePart then
                return BasePart
            end
        end
        Q7 = Q7.Parent
    end
    return Q7
end
function fns.fn198()
    local QT_1
    local QS_1
    QT_1, QS_1 = akp_29(), LL()
    if not QT_1 or not QS_1 then
        return
    end
    fns.akp_11()
    QT_1:MoveTo(QS_1.Position + QS_1.CFrame.LookVector * 8)
end
function fns.fn249()
    if Lf("MovementOrders") then
        L9(LK(), 4)
    end
end
function fns.fn256(hm)
    local Ui = not Toggles or not Toggles.MasterEnabled
    local Um = if Ui then 1 else 0
    local Uk = 2155 * Um + 1657 * (1 - Um)
    local Ul = 841 * Um + 721 * (1 - Um)
    if not ((Uk * 2698 + Ul * 3277 + Uk * Ul) % 16777213 == 10382502) then
        Ui = not Toggles.MasterEnabled.Value
    end
    if Ui then
        return false
    end
    return L2(hm)
end
function fns.fn263()
    for i, v in ipairs(Ms) do
        local attr = LocalPlayer2:GetAttribute(v)
        if type(attr) == "number" then
            return attr
        end
        if type(attr) == "string" then
            local Ps = tonumber(attr:match("(%d+)"))
            if Ps then
                return Ps
            end
        end
    end
    return nil
end
function fns.fn269(vD, vE, vF)
    return string.format("<b>%s</b> %s %s", vD, fns.akp_5("-", "#5a6070"), fns.akp_5(vE, vF))
end
function fns.fn318(oX, oY)
    if Library.Unloaded then
        return
    end
    akp_15 = true
    local ZA = os.clock()
    local ZC = tonumber(oY) or 3
    Mm = ZA + math.max(3, ZC + 2)
end
function fns.fn331()
    if not Lf("EventObby") then
        return
    end
    fns.akp_11()
    local WL = if Workspace:GetAttribute("ObbyCourse") == 3 then 1 else 0
    if WL == 1 then
        MR()
    else
        LP()
    end
    Me = nil
end
function fns.fn340()
    local BasementZone = Workspace:FindFirstChild("BasementZone")
    local R2 = LL()
    local R3 = not BasementZone or not BasementZone:IsA("BasePart")
    if R3 or not R2 then
        return false
    end
    local R3_1 = BasementZone.CFrame:PointToObjectSpace(R2.Position)
    local R2_1 = math.abs(R3_1.X) <= BasementZone.Size.X / 2 and math.abs(R3_1.Y) <= BasementZone.Size.Y / 2 and math.abs(R3_1.Z) <= BasementZone.Size.Z / 2
    return R2_1
end
function fns.fn347()
    local Pi = akp_35()
    local Pj = Pi and Pi:FindFirstChildWhichIsA("Humanoid")
    return Pj
end
function fns.fn357()
    local Xo = {}
    local Spawns = Workspace:FindFirstChild("Spawns")
    if Spawns then
        for i, child in ipairs(Spawns:GetChildren()) do
            if child:IsA("BasePart") then
                table.insert(Xo, child.Position + Vector3.new(0, child.Size.Y / 2 + 3, 0))
            end
        end
    end
    for i, v in ipairs({ "1stfloor", "2ndfloor", "3rdfloor" }) do
        local Xp_1 = Nr(v)
        if Xp_1 then
            table.insert(Xo, Xp_1.Position)
        end
    end
    return Xo
end
function fns.fn382()
    if Lf("StateOrders") then
        MQ()
        LM()
    end
end
function fns.fn403()
    local Wx_1
    local Ww_1
    local Wv_1
    Ww_1, Wx_1, Wv_1 = fns.akp_10()
    if not Ww_1 or not Wx_1 or not Wv_1 then
        return
    end
    local Wy_2 = LN(Ww_1, Wx_1, Wv_1)
    if #Wy_2 == 0 then
        return
    end
    local Wv_2 = math.min(Ww_1.Position.Y, Wx_1.Position.Y) - 30
    Lp(fns.akp_7(Ww_1), 6, 0.05, LX)
    for i, v in ipairs(Wy_2) do
        if LX() then
            return
        end
        local Ww_2 = fns.akp_7(v)
        Me = Ww_2
        Lp(Ww_2, 6, 0.05, LX)
        local Wy_3 = LL()
        local Wz_1 = Wy_3 and Wy_3.Position.Y < Wv_2 and not LX()
        if Wz_1 then
            Lp(Ww_2, 6, 0.05, LX)
        end
        task.wait(0.05)
    end
    if not LX() then
        Lp(fns.akp_7(Wx_1), 6, 0.05, LX)
    end
end
function fns.fn442(lY, lZ)
    local XD = math.huge
    for i, v in ipairs(lZ) do
        local XE = (v.pos - lY).Magnitude / v.weight
        if XE < XD then
            XD = XE
        end
    end
    return XD
end
function fns.fn455(cy, cz, cA, cB)
    fns.akp_2 = fns.akp_2 + 1
    local Qu = fns.akp_2
    local Qv = cz or 4
    local Qv_1 = cA or 0.06
    while true do
        local Qv_2 = not Library.Unloaded and Qu == fns.akp_2 and NE()
        if not Qv_2 then
            return false
        end
        local Qv_3 = cB and cB()
        if Qv_3 then
            break
        end
        local Qv_4 = LL()
        local Qy = cy.Position - Qv_4.Position
        if Qy.Magnitude <= Qv then
            Qv_4.CFrame = CFrame.new(cy.Position)
            return true
        end
        Qv_4.CFrame = CFrame.new(Qv_4.Position + Qy.Unit * Qv, cy.Position)
        task.wait(Qv_1)
    end
    return false
end
function fns.fn478()
    if Lf("MovementOrders") then
        LF(Nr("1stfloor"), true)
    end
end
function fns.antiAfkLoop()
    while not Library.Unloaded do
        task.wait(2)
        if Toggles and Toggles.AntiAfk and Toggles.AntiAfk.Value then
            local ai3_1 = tick() - akp_41
            local ai4 = tick() - M3
            if ai3_1 >= 300 and ai4 >= 60 then
                pcall(MF)
            else
                if ai3_1 < 300 and ai4 >= 300 then
                    pcall(MF)
                end
            end
        end
    end
end
function fns.fn491()
    task.spawn(function()
        local QP = 1
        while true do
            if QP <= 3 then
                local QK = akp_29()
                if not QK or Library.Unloaded then
                    break
                end
                QK.Jump = true
                task.wait(0.35)
                QP += 1
                continue
            end
            return
        end
        return
    end)
end
function fns.fn518(j5, j6, j7)
    local Position = j5.Position
    local VX = j6.Position - Position
    local Magnitude = VX.Magnitude
    if Magnitude < 1 then
        return {}
    end
    local Unit = VX.Unit
    local VX_1 = {}
    for i, child in ipairs(j7:GetChildren()) do
        if child:IsA("BasePart") then
            local V_ = (child.Position - Position):Dot(Unit)
            if V_ >= -10 and V_ <= Magnitude + 25 and (child.Position - Position - Unit * V_).Magnitude <= 60 then
                table.insert(VX_1, { part = child, along = V_ })
            end
        end
    end
    table.sort(VX_1, function(ki, kj)
        return ki.along < kj.along
    end)
    local VW_1 = {}
    for i, v in ipairs(VX_1) do
        table.insert(VW_1, v.part)
    end
    return VW_1
end
function fns.onInputBegan()
    akp_41 = tick()
end
function fns.fn544()
    if akp_50() == "secondfloor" then
        LB("1stfloor")
    end
end
function fns.fn565()
    if Lf("MovementOrders") then
        LF(Nr("3rdfloor"), true)
    end
end
function fns.fn572(nO)
    if type(nO) ~= "string" then
        return
    end
    local YL = akp_38(nO)
    local YM = not YL:find("clock", 1, true) and not YL:find("second", 1, true)
    if YM then
        return
    end
    local YM_1 = tonumber(YL:match("(%d+%.?%d*)%s*second")) or tonumber(YL:match("at%s+(%d+%.?%d*)")) or tonumber(YL:match("clock%D+(%d+%.?%d*)"))
    local YL_1 = YM_1
    if YM_1 then
        YM_1 = YL_1 > 0
    end
    if YM_1 then
        YM_1 = YL_1 <= 16
    end
    if YM_1 then
        akp_55 = YL_1
    end
end
function fns.fn578()
    local Tz = akp_35()
    if Tz then
        for i, child in ipairs(Tz:GetChildren()) do
            local Tz_1 = child:IsA("Tool") and string.find(string.lower(child.Name), "knife", 1, true)
            if Tz_1 then
                return child
            end
        end
    end
    local Backpack = LocalPlayer2:FindFirstChildOfClass("Backpack")
    if Backpack then
        for i, child in ipairs(Backpack:GetChildren()) do
            local Tz_3 = child:IsA("Tool") and string.find(string.lower(child.Name), "knife", 1, true)
            if Tz_3 then
                return child
            end
        end
    end
    return nil
end
function fns.fn583()
    local Yl = LK()
    local Ym = LL()
    if not Yl or not Ym then
        return
    end
    local Yn_1 = Vector3.new(Ym.Position.X - Yl.Position.X, 0, Ym.Position.Z - Yl.Position.Z)
    if Yn_1.Magnitude <= Yl.Size.X / 2 + 6 then
        akp_48.circleout()
    end
end
function fns.fn597()
    local Map = Workspace:FindFirstChild("Map")
    local Rq = Map and Map:FindFirstChild("Gates")
    local Rq_1 = Na()
    if not Rq or not Rq_1 then
        return nil
    end
    for i, descendant in ipairs(Rq:GetDescendants()) do
        local Rp_2 = descendant:IsA("ProximityPrompt") and descendant.Name == "CellGatePrompt" and descendant:GetAttribute("CellNumber") == Rq_1
        if Rp_2 then
            return descendant
        end
    end
    return nil
end
function fns.fn601()
    local Pg = MO(Ld, "CustomizationConfig", 5)
    if Pg then
        akp_18 = require(Pg)
    end
end
function fns.fn647()
    if not akp_15 then
        return false
    elseif os.clock() > Mm then
        akp_15 = false
        return false
    else
        return true
    end
end
function fns.fn709()
    local Po = akp_29()
    local Pp = Po ~= nil and Po.Health > 0 and LL() ~= nil
    return Pp
end
function fns.fn710(kz)
    local Obby = Workspace:FindFirstChild("Obby")
    local Wl = Obby and Obby:FindFirstChild("Buttons3")
    local Wk_1 = Wl
    if Wl then
        Wl = Wk_1:FindFirstChild("Button" .. kz)
    end
    local Wk_2 = Wl
    if Wl then
        Wl = Wk_2:FindFirstChild("Button", true)
    end
    return Wl
end
function fns.onUnload()
    Library:Unload()
end
function fns.fn720()
    if Lf("PoseOrders") then
        MB()
    end
end
function fns.fn727()
    local UA = if Lf("StateOrders") then 1 else 0
    if UA == 1 then
        akp_51(false)
    end
end
function fns.fn732(ga)
    local To_1
    local Tn_1
    local Tm = LL()
    if not Tm then
        return nil
    end
    To_1, Tn_1 = nil, math.huge
    for i, player in ipairs(Lo:GetPlayers()) do
        if player ~= LocalPlayer2 and player ~= ga and player.Character then
            local HumanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
            local Humanoid = player.Character:FindFirstChildWhichIsA("Humanoid")
            if HumanoidRootPart and Humanoid and Humanoid.Health > 0 then
                local Magnitude = (HumanoidRootPart.Position - Tm.Position).Magnitude
                if Magnitude < Tn_1 then
                    To_1, Tn_1 = player, Magnitude
                end
            end
        end
    end
    return To_1, Tn_1
end
function fns.fn769()
    if Lf("CellOrders") then
        LZ(Mx())
    end
end
function fns.fn771()
    if not Lf("CellOrders") then
        return
    end
    local Map = Workspace:FindFirstChild("Map")
    local VH = Map and Map:FindFirstChild("CellProps")
    local VG_1 = VH
    if VH then
        VH = VG_1:FindFirstChild("Beds")
    end
    local VG_2 = VH
    local VH_1 = Na()
    local VI = not VH_1
    local VJ = not VG_2
    local VN = if VJ then 1 else 0
    local VL = 1400 * VN + 2570 * (1 - VN)
    local VM = 2661 * VN + 2811 * (1 - VN)
    if not ((VL * 2255 + VM * 1734 + VL * VM) % 16777213 == 11496574) then
        VJ = VI
    end
    if VJ then
        return
    end
    local VI_1 = VG_2:FindFirstChild(string.format("Bed_%02d", VH_1)) or VG_2:FindFirstChild("Bed_" .. VH_1)
    if not VI_1 then
        return
    end
    local BedSleepPrompt = VI_1:FindFirstChild("BedSleepPrompt", true)
    if BedSleepPrompt then
        LZ(BedSleepPrompt)
        return
    end
    local VH_3 = (VI_1:FindFirstChild("Mattress"))
    local VN_1 = if VH_3 then 1 else 0
    local VL_1 = 4001 * VN_1 + 2766 * (1 - VN_1)
    local VM_1 = 603 * VN_1 + 3971 * (1 - VN_1)
    if not ((VL_1 * 299 + VM_1 * 3838 + VL_1 * VM_1) % 16777213 == 5923216) then
        VH_3 = VI_1:FindFirstChildWhichIsA("BasePart", true)
    end
    L9(VH_3, 3)
end
function fns.worker3()
    while not Library.Unloaded do
        task.wait(0.25)
        local aag = Lq and Lf("EventBombPass") and NE() and not No()
        if aag then
            local aag_1 = LL()
            local aah = ND and ND.Character and ND.Character:FindFirstChild("HumanoidRootPart")
            local aai = ND
            local aaj = aah
            if aai then
                aai = ND.Character
            end
            if aai then
                aai = ND.Character:FindFirstChildWhichIsA("Humanoid")
            end
            local aah_1 = not aaj
            local aak = aai
            if not aah_1 then
                aah_1 = not aak
            end
            if not aah_1 then
                aah_1 = aak.Health <= 0
            end
            if aah_1 then
                local aah_2 = akp_52(Le) or akp_52()
                ND = aah_2
                local aah_3 = ND and ND.Character and ND.Character:FindFirstChild("HumanoidRootPart")
                aaj = aah_3
            end
            if aaj then
                local aah_4 = aaj.Position - aag_1.Position
                if aah_4.Magnitude > 4 then
                    local aai_1 = math.min(aah_4.Magnitude - 3, 18)
                    LF(CFrame.new(aag_1.Position + aah_4.Unit * aai_1), true)
                end
            end
        end
    end
end
function fns.fn801()
    local P6 = akp_29()
    if not P6 then
        return
    end
    if P6.Sit or P6.SeatPart then
        P6.Sit = false
        P6.Jump = true
    end
end
function fns.onRscripts()
    Mg(akp_33, "Copied Rscripts profile to clipboard")
end
function fns.fn842(vA, vB)
    return string.format('<font color="%s">%s</font>', vB, vA)
end
function fns.fn843()
    if akp_50() == "firstfloor" then
        LB("2ndfloor")
    end
end
function fns.fn849()
    local OH_1
    local OG_1
    OH_1, OG_1 = Nx()
    local lower = string.lower
    local OJ = OH_1 or ""
    local OK = lower(tostring(OJ))
    for i, v in ipairs(K9) do
        if string.find(OK, v, 1, true) then
            return true, OH_1 or v
        end
    end
    for i, v in ipairs(OG_1) do
        local OG_2 = string.lower(v)
        for i, v2 in ipairs(K9) do
            if string.find(OG_2, v2, 1, true) then
                return true, OH_1 or v
            end
        end
    end
    return false, OH_1
end
function fns.fn854()
    local WM = not akp_43
    local WN = Lf("EventHideSeek") and WM
    if WN then
        L9(ML(), 3)
    end
end
function fns.fn858()
    if Lf("MovementOrders") then
        local U6 = MN("BasementZone")
        if U6 then
            LF(CFrame.new(U6.Position))
        end
    end
end
function fns.fn859()
    local UF_1
    local UD = {}
    local UD_2
    local Map = Workspace:FindFirstChild("Map")
    if Map then
        table.insert(UD, Map:FindFirstChild("Tables"))
    end
    local TwoDoors = Workspace:FindFirstChild("TwoDoors")
    if TwoDoors then
        table.insert(UD, TwoDoors:FindFirstChild("TrialTables"))
    end
    local UE_2 = {}
    for i, v in ipairs(UD) do
        if v then
            for i, descendant in ipairs(v:GetDescendants()) do
                local UD_1 = descendant:IsA("BasePart") and descendant.CanCollide and descendant.CFrame.YVector.Y >= 0.9
                if UD_1 then
                    UD_2, UF_1 = Mz(descendant)
                    local UD_3 = UF_1 <= 1.5 and L0(descendant) >= 20
                    if UD_3 then
                        table.insert(UE_2, descendant)
                    end
                end
            end
        end
    end
    return UE_2
end
function fns.worker4()
    local adw_1
    while true do
        task.wait(1)
        if Library.Unloaded then
            break
        end
        local adv = math.floor(os.clock() - Nc)
        if adv < 60 then
            adw_1 = adv .. "s"
        elseif adv < 3600 then
            adw_1 = string.format("%dm %ds", adv // 60, adv % 60)
        else
            adw_1 = string.format("%dh %dm", adv // 3600, adv % 3600 // 60)
        end
        Label:SetText(M2("Session time", adw_1, MA))
    end
end
function fns.fn894()
    if Lf("PoseOrders") then
        MD = true
        local Up = Ma and M1()
        local Uq = Up or akp_22()
        LA(Uq)
    end
end
function fns.fn906()
    local ado_1
    local adn_1
    if identifyexecutor then
        ado_1, adn_1 = identifyexecutor()
        local adp = ado_1 ~= ""
        local adq = type(ado_1) == "string" and adp
        if adq then
            local adp_1 = type(adn_1) == "string" and adn_1 ~= "" and ado_1 .. " " .. adn_1
            Md = adp_1 or ado_1
        end
    end
end
function fns.fn916()
    if not akp_24 then
        return nil
    elseif La then
        local TN = Lo:FindFirstChild(La)
        local TO = TN and not TN:GetAttribute("IsEliminated")
        if TO then
            return TN
        end
        return nil
    else
        return nil
    end
end
function fns.fn934()
    return LocalPlayer2.Character
end
function fns.fn947()
    local QY = akp_18.Emotes or {}
    for i, v in ipairs(QY) do
        if (v.price or 0) <= 0 then
            return v.id
        end
    end
    local Emotes = akp_18.Emotes
    return Emotes and Emotes[1] and Emotes[1].id or nil
end
function fns.fn958()
    local W2 = {}
    for i, player in ipairs(Lo:GetPlayers()) do
        local W3_1 = player ~= LocalPlayer2 and not player:GetAttribute("IsEliminated")
        if W3_1 then
            local Character = player.Character
            local W4_1 = Character and Character:FindFirstChild("HumanoidRootPart")
            local W5 = Character
            local W6 = W4_1
            if W5 then
                W5 = Character:FindFirstChildWhichIsA("Humanoid")
            end
            local W7 = W5
            if W4_1 then
                W4_1 = W7
            end
            if W4_1 then
                W4_1 = W7.Health > 0
            end
            if W4_1 then
                local insert = table.insert
                local Position = W6.Position
                local W7_1 = Lb(Character) and 3
                local W3_3 = W7_1 or 1
                insert(W2, { pos = Position, weight = W3_3 })
            end
        end
    end
    for i, descendant in ipairs(Workspace:GetDescendants()) do
        local W3_4 = descendant:IsA("Humanoid") and descendant.Health > 0
        if W3_4 then
            local Parent = descendant.Parent
            local W4_3 = Parent and Parent:IsA("Model") and not Lo:GetPlayerFromCharacter(Parent)
            if W4_3 then
                local W4_4 = Parent.PrimaryPart or Parent:FindFirstChild("HumanoidRootPart") or Parent:FindFirstChild("Torso") or Parent:FindFirstChild("Head") or Parent:FindFirstChildWhichIsA("BasePart")
                if W4_4 then
                    table.insert(W2, { pos = W4_4.Position, weight = 4 })
                end
            end
        end
    end
    return W2
end
function fns.fn970(ko)
    local kq = Mz(ko)
    return CFrame.new(ko.Position.X, kq + 3.5, ko.Position.Z)
end
function fns.fn987()
    if Lf("MovementOrders") then
        LF(Nr("2ndfloor"), true)
    end
end
function fns.fn989(cr, cs, ct)
    return LF(akp_60(cr, cs), ct)
end
function fns.fn997(bp, bq)
    local PS = {}
    if not bp then
        return PS
    end
    for i, descendant in ipairs(bp:GetDescendants()) do
        local PT = (descendant:IsA("BasePart"))
        if PT then
            local PU = not bq or bq(descendant)
            PT = PU
        end
        if PT then
            table.insert(PS, descendant)
        end
    end
    return PS
end
function fns.fn998()
    if not Lf("EventAvoid") then
        return
    end
    LQ = true
    LC = os.clock() + 120
    akp_57 = math.max(akp_57, os.clock() + 75)
    fns.akp_11()
    Mr()
    task.spawn(worker)
end
function fns.fn1026()
    local Sa = LL()
    if not Sa then
        return nil
    elseif MZ() then
        return "basement"
    else
        local Sb = MN("1stfloor")
        local Sc = MN("2ndfloor")
        local Sd = MN("3rdfloor")
        local Se = Sa.Position.Y
        if Sd and Se >= Sd.Position.Y - 0.5 then
            return "thirdfloor"
        end
        if Sc and Se >= Sc.Position.Y - 0.5 then
            return "secondfloor"
        end
        if Sb and Se < Sb.Position.Y - 0.5 then
            return "basement"
        end
        return "firstfloor"
    end
end
function fns.fn1036()
    if Lf("StateOrders") then
        akp_51(true)
    end
end
function fns.fn1064(hg)
    local Uf = Toggles and Toggles[hg]
    return Uf ~= nil and Uf.Value
end
function fns.fn1098(e_)
    local Sn_1
    local Sl_1
    local Sk_1
    local Sm_1
    local Sg = MN(e_)
    local Sh = LL()
    local Sh_1
    if not Sg or not Sh then
        return nil
    end
    local Si_1 = Sg.Position.Y
    local Sj_1 = Vector3.new(Sh.Position.X, 0, Sh.Position.Z)
    Sk_1, Sh_1, Sl_1 = nil, math.huge, nil
    for i, v in ipairs(akp_39()) do
        Sn_1, Sm_1 = Mz(v)
        if Sm_1 <= 8 and Sn_1 >= Si_1 - 2 and Sn_1 <= Si_1 + 4 then
            local Magnitude = (Vector3.new(v.Position.X, 0, v.Position.Z) - Sj_1).Magnitude
            if Magnitude < Sh_1 then
                Sk_1, Sh_1, Sl_1 = v, Magnitude, Sn_1
            end
        end
    end
    if Sk_1 then
        return CFrame.new(Sk_1.Position.X, Sl_1 + 3.5, Sk_1.Position.Z)
    end
    return CFrame.new(Sg.Position.X, Si_1 + 3.5, Sg.Position.Z)
end
function fns.fn1109()
    local LightSwitches = Workspace:FindFirstChild("LightSwitches")
    local RB = Na()
    local RC = not RB
    local RD = not LightSwitches
    local RH = if RD then 1 else 0
    local RF = 1702 * RH + 1880 * (1 - RH)
    local RG = 2789 * RH + 2445 * (1 - RH)
    if not ((RF * 3245 + RG * 2711 + RF * RG) % 16777213 == 1053634) then
        RD = RC
    end
    if RD then
        return nil
    end
    local RC_1 = LightSwitches:FindFirstChild("LightSwitch" .. RB)
    if not RC_1 then
        return nil
    end
    return RC_1:FindFirstChildWhichIsA("ProximityPrompt", true)
end
function fns.fn1110()
    if MM then
        pcall(function()
            MM:Cancel()
        end)
        MM = nil
    end
end
function fns.fn1159()
    local S7_1
    local S6_1
    local Spawns = Workspace:FindFirstChild("Spawns")
    if not Spawns then
        return nil
    end
    S7_1, S6_1 = nil, -1
    for i, child in ipairs(Spawns:GetChildren()) do
        if child:IsA("BasePart") then
            local S5_1 = math.huge
            for i, player in ipairs(Lo:GetPlayers()) do
                if player ~= LocalPlayer2 and player.Character then
                    local HumanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
                    if HumanoidRootPart then
                        S5_1 = math.min(S5_1, (HumanoidRootPart.Position - child.Position).Magnitude)
                    end
                end
            end
            if S5_1 > S6_1 then
                S7_1, S6_1 = child, S5_1
            end
        end
    end
    return S7_1
end
function fns.fn1197()
    local Spawns = Workspace:FindFirstChild("Spawns")
    local RJ = Na()
    if not Spawns or not RJ then
        return nil
    end
    local RK_1 = Spawns:FindFirstChild(string.format("Spawn_%02d", RJ)) or Spawns:FindFirstChild("Spawn_" .. RJ)
    return RK_1
end
function fns.fn1217()
    local Wf = Library.Unloaded or not Lf("EventObby")
    local Wj = if Wf then 1 else 0
    local Wh = 11 * Wj + 1054 * (1 - Wj)
    local Wi = 897 * Wj + 1289 * (1 - Wj)
    if not ((Wh * 3722 + Wi * 2577 + Wh * Wi) % 16777213 == 2362378) then
        Wf = Workspace:GetAttribute("ObbyActive") ~= true
    end
    local Wj_1 = if Wf then 1 else 0
    local Wh_1 = 2502 * Wj_1 + 698 * (1 - Wj_1)
    local Wi_1 = 3057 * Wj_1 + 3109 * (1 - Wj_1)
    if not ((Wh_1 * 1193 + Wi_1 * 1966 + Wh_1 * Wi_1) % 16777213 == 16643562) then
        Wf = not NE()
    end
    return Wf
end
function fns.fn1307(bc, bd)
    if not bc then
        return nil
    end
    local Position = bc.Position
    local PE = bc.Size.Y / 2
    local PF = bd or 4
    return CFrame.new(Position + Vector3.new(0, PE + PF, 0))
end
function fns.fn1317(en)
    local CFrame, Size = en.CFrame, en.Size
    local eq = 0.5 * (math.abs(CFrame.XVector.Y) * Size.X + math.abs(CFrame.YVector.Y) * Size.Y + math.abs(CFrame.ZVector.Y) * Size.Z)
    return en.Position.Y + eq, eq * 2
end
function fns.fn1321()
    fns.akp_11()
    local QB = akp_29()
    if not QB then
        return
    end
    if WalkSpeed == nil then
        WalkSpeed = QB.WalkSpeed
    end
    QB.WalkSpeed = 0
    QB:Move(Vector3.zero, false)
end
function fns.fn1324()
    local QD = akp_29()
    if QD and WalkSpeed ~= nil then
        QD.WalkSpeed = WalkSpeed
    end
    WalkSpeed = nil
end
function fns.fn1330()
    local ChairRing = Workspace:FindFirstChild("ChairRing")
    if not ChairRing then
        return nil
    end
    local SH = {}
    for i, descendant in ipairs(ChairRing:GetDescendants()) do
        local SG_1 = descendant:IsA("Seat") and descendant.Occupant == nil
        if SG_1 then
            table.insert(SH, descendant)
        end
    end
    return akp_13(SH)
end
function fns.fn1331()
    local YA = akp_29()
    if YA and (YA.Sit or YA.SeatPart) then
        MD = false
        akp_63()
    end
end
function fns.fn1372()
    if Library.Unloaded then
        return
    end
    akp_15 = false
    MD = false
    Me = nil
    MQ()
end
function fns.fn1396(qj)
    if Library.Unloaded then
        return
    end
    local Z7 = qj and true or false
    if Z7 and not Lq then
        Le = akp_52()
        ND = nil
    elseif not Z7 then
        Le = nil
        ND = nil
    end
    Lq = Z7
end
function fns.fn1431()
    return Mn() ~= nil
end
function fns.fn1432(an, ao, ap)
    if not an then
        return nil
    end
    local Pe = an:FindFirstChild(ao)
    if Pe then
        return Pe
    end
    local Pe_1 = ap or 3
    return an:WaitForChild(ao, Pe_1)
end
function fns.fn1437()
    local SP = {}
    for i, descendant in ipairs(Workspace:GetDescendants()) do
        local SQ = descendant:IsA("Seat") and descendant.Occupant == nil
        if SQ then
            table.insert(SP, descendant)
        end
    end
    return akp_13(SP)
end
function fns.worker5()
    while true do
        task.wait(0.25)
        if Library.Unloaded then
            break
        end
        local adz = Ne ~= "" and Ne or "waiting"
        Label2:SetText(M2("Order", adz, Mp))
        local adz_1 = M8 ~= "" and M8 or "idle"
        Label3:SetText(M2("Action", adz_1, MA))
        local ady_2 = Na() or "unknown"
        Label4:SetText(M2("Cell", tostring(ady_2), MC))
    end
end
function fns.fn1475()
    akp_51(false)
end
function fns.fn1495(b_)
    if not b_ then
        return nil
    end
    local P9 = akp_35()
    local Qa_1 = P9 and { P9 } or {}
    ME.FilterDescendantsInstances = Qa_1
    local P9_2 = b_.Position + Vector3.new(0, 12, 0)
    local Qa_2 = Workspace:Raycast(P9_2, Vector3.new(0, -220, 0), ME)
    if not Qa_2 then
        return nil
    end
    return CFrame.new(Qa_2.Position + Vector3.new(0, 3.5, 0))
end
function fns.fn1511(nX)
    for i, v in ipairs(akp_65) do
        local Y_ = if nX:find(v[1], 1, true) then 1 else 0
        if Y_ == 1 then
            return v[2]
        end
    end
    return nil
end
function fns.fn1518()
    local Yb = if not Lf("EventTwoDoors") then 1 else 0
    if Yb == 1 then
        return
    end
    local TwoDoors = Workspace:FindFirstChild("TwoDoors")
    local X6 = Options.DoorChoice and Options.DoorChoice.Value or "Door1"
    local X5_1 = TwoDoors and TwoDoors:FindFirstChild(X6)
    local X4_1 = X5_1
    if X5_1 then
        X5_1 = X4_1:FindFirstChild("Base")
    end
    local X4_2 = X5_1
    if X5_1 then
        X5_1 = X4_2:FindFirstChild("ChoosePrompt")
    end
    local X4_3 = X5_1
    if X4_3 then
        LZ(X4_3)
    end
end
function fns.fn1567()
    local Obby = Workspace:FindFirstChild("Obby")
    if not Obby then
        return nil, nil, nil
    end
    local VP = Workspace:GetAttribute("ObbyCourse") or 1
    local VR = VP > 1 and "Start" .. VP or "Start"
    local VP_2 = Obby:FindFirstChild(VR)
    local VQ_1 = VP > 1 and "Finish" .. VP or "Finish"
    local VR_2 = (Obby:FindFirstChild(VQ_1))
    local VV = if VR_2 then 1 else 0
    local VT = 982 * VV + 137 * (1 - VV)
    local VU = 2669 * VV + 712 * (1 - VV)
    if not ((VT * 2798 + VU * 3830 + VT * VU) % 16777213 == 15590864) then
        VR_2 = Obby:FindFirstChild("Finish")
    end
    local VQ_2 = VR_2
    local Platforms = Obby:FindFirstChild("Platforms")
    return VP_2, VQ_2, Platforms
end
function fns.fn1576(lm)
    for i, child in ipairs(lm:GetChildren()) do
        if child:IsA("Tool") then
            local WP = string.lower(child.Name)
            for i, v in ipairs(Ll) do
                if string.find(WP, v, 1, true) then
                    return true
                end
            end
        end
    end
    return false
end
function fns.fn1606()
    MQ()
end
function fns.fn1622()
    while not LX() do
        local attr = Workspace:GetAttribute("SwitchbackButtonIndex")
        local Ws = type(attr) ~= "number" or attr < 1
        if Ws then
            task.wait(0.15)
            continue
        end
        local Ws_1 = NF(attr)
        if not Ws_1 then
            task.wait(0.15)
            continue
        end
        local Wt = fns.akp_7(Ws_1)
        Me = Wt
        lastActionName = "obby button " .. attr
        Lp(Wt, 5, 0.05, LX)
        if Workspace:GetAttribute("SwitchbackButtonIndex") == attr then
            task.wait(0.2)
        end
    end
end
function fns.fn1631()
    if Lf("CellOrders") then
        LZ(fns.akp_8())
    end
end
function fns.fn1674(jn)
    local Spawns = Workspace:FindFirstChild("Spawns")
    if not Spawns or not jn then
        return nil
    end
    local Vx_1 = Spawns:FindFirstChild(string.format("Spawn_%02d", jn)) or Spawns:FindFirstChild("Spawn_" .. jn)
    return Vx_1
end
function fns.onInputChanged(DQ)
    local UserInputType = DQ.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        akp_41 = tick()
    end
end
function fns.fn1681()
    fns.akp_2 = fns.akp_2 + 1
end
function fns.fn1683(nG)
    for i, v in ipairs(Ln) do
        if nG:find(v, 1, true) then
            return true
        end
    end
    return false
end
function fns.fn1692(ek)
    return Workspace:FindFirstChild(ek)
end
function fns.onCopyJoinScript_JobID()
    local vX = string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, akp_36)
    Mg(vX, "Copied join script to clipboard")
end
function fns.fn1754()
    local U8 = {}
    for i, descendant in ipairs(Workspace:GetDescendants()) do
        local U9 = descendant:IsA("BasePart") and LR[descendant.Name]
        if U9 then
            table.insert(U8, descendant)
        end
    end
    return akp_13(U8)
end
function fns.fn1758()
    if Lf("StateOrders") then
        akp_20()
    end
end
function fns.fn1762()
    if akp_50() == "basement" then
        LB("1stfloor")
    end
end
function fns.masterEnabledLoop()
    while not Library.Unloaded do
        task.wait(0.2)
        local ZJ = Toggles and Toggles.MasterEnabled and Toggles.MasterEnabled.Value == true
        if MP and not ZJ then
            fns.akp_11()
            Mr()
            akp_26 = akp_26 + 1
            LQ = false
            akp_15 = false
            MD = false
            Me = nil
            MQ()
            M8 = "automation off"
        end
        MP = ZJ
    end
end
function fns.fn1793()
    local Map = Workspace:FindFirstChild("Map")
    local RO = Map and Map:FindFirstChild("Structure")
    if not RO then
        return {}
    end
    local RO_1 = {}
    for i, v in ipairs({ RO:FindFirstChild("Floors"), RO:FindFirstChild("Ceilings") }) do
        if v then
            for i, descendant in ipairs(v:GetDescendants()) do
                local RN_2 = descendant:IsA("BasePart") and descendant.CanCollide and L0(descendant) > 100
                if RN_2 then
                    table.insert(RO_1, descendant)
                end
            end
        end
    end
    return RO_1
end
function fns.fn1824()
    local TS_1
    local TR_1
    local TQ = LL()
    if not TQ then
        return nil
    end
    TS_1, TR_1 = nil, math.huge
    for i, player in ipairs(Lo:GetPlayers()) do
        local TT = player ~= LocalPlayer2 and not player:GetAttribute("IsEliminated")
        if TT then
            local Character = player.Character
            local TU = Character and Character:FindFirstChild("HumanoidRootPart")
            local TV = Character
            if TV then
                TV = Character:FindFirstChildWhichIsA("Humanoid")
            end
            local TT_2 = TU
            local TU_1 = TV
            if TT_2 then
                TT_2 = TU_1
            end
            if TT_2 then
                TT_2 = TU_1.Health > 0
            end
            if TT_2 then
                local Magnitude = (TU.Position - TQ.Position).Magnitude
                if Magnitude < TR_1 then
                    TS_1, TR_1 = player, Magnitude
                end
            end
        end
    end
    return TS_1, TR_1
end
function fns.fn1847(oQ, oR)
    if not oQ then
        return
    end
    table.insert(Nb, oQ.OnClientEvent:Connect(oR))
end
function fns.worker2()
    while not Library.Unloaded do
        task.wait(0.35)
        local ZF = Me and No() and NE() and MM == nil and L8 < 3
        if ZF and not LQ then
            local ZF_1 = LL()
            if (Me.Position - ZF_1.Position).Magnitude > 12 then
                L8 = L8 + 1
                LF(Me, true)
            end
        end
    end
end
function fns.fn1856()
    local CurrentCamera = Workspace.CurrentCamera
    if not CurrentCamera then
        return
    end
    VirtualUser:Button2Down(Vector2.new(0, 0), CurrentCamera.CFrame)
    task.wait(0.1)
    VirtualUser:Button2Up(Vector2.new(0, 0), CurrentCamera.CFrame)
    M3 = tick()
end
function fns.fn1871()
    local Circle = Workspace:FindFirstChild("Circle")
    if not Circle then
        return nil
    end
    local SA = Circle:FindFirstChild("LightCore") or Circle:FindFirstChildWhichIsA("BasePart", true)
    return SA
end
function fns.fn1880()
    local Vs = if not Lf("MovementOrders") then 1 else 0
    if Vs == 1 then
        return
    end
    local Vl = LK()
    local Vm = LL()
    if not Vl or not Vm then
        return
    end
    local Vn_1 = Vm.Position - Vl.Position
    if Vn_1.Magnitude < 1 then
        Vn_1 = Vector3.new(1, 0, 0)
    end
    local Unit = Vector3.new(Vn_1.X, 0, Vn_1.Z).Unit
    LF(CFrame.new(Vl.Position + Unit * (Vl.Size.X / 2 + 25) + Vector3.new(0, 4, 0)))
end
function fns.fn1891()
    if Library.Unloaded then
        return
    end
    if Workspace:GetAttribute("ObbyActive") ~= true then
        Mr()
        fns.akp_11()
        Me = nil
        if M8:find("obby") then
            M8 = "obby ended"
        end
    end
end
function fns.fn1893()
    if LocalPlayer2:GetAttribute("IsCrouching") == true then
        Mb(false)
    end
end
function fns.fn1950(tA)
    if connection then
        connection:Disconnect()
    end
    local Humanoid = tA:WaitForChild("Humanoid", 5)
    if not Humanoid then
        return
    end
    connection = Humanoid.Seated:Connect(function(tD)
        local acm = not tD
        local acq = if acm then 1 else 0
        local aco = 3482 * acq + 696 * (1 - acq)
        local acp = 2662 * acq + 1760 * (1 - acq)
        if not ((aco * 4038 + acp * 3781 + aco * acp) % 16777213 == 16617209) then
            acm = Library.Unloaded
        end
        if acm then
            return
        end
        if MD or not Toggles.MasterEnabled or not Toggles.MasterEnabled.Value then
            return
        end
        task.wait(0.1)
        akp_63()
    end)
end
function fns.fn1972(oT, oU)
    if Library.Unloaded then
        return
    end
    LO(oT, oU)
end
function fns.fn1975(ba)
    if not ba then
        return ""
    end
    return (tostring(ba):lower():gsub("^%s+", ""):gsub("%s+$", ""):gsub("[%.%s]+$", ""))
end
function fns.fn2009(bf)
    local PJ_1
    local PI_1
    local PH = LL()
    if not PH then
        return nil
    end
    PJ_1, PI_1 = nil, math.huge
    for i, v in ipairs(bf) do
        local PK = v and v:IsA("BasePart")
        if PK then
            local Magnitude = (v.Position - PH.Position).Magnitude
            if Magnitude < PI_1 then
                PJ_1, PI_1 = v, Magnitude
            end
        end
    end
    return PJ_1
end
K9 = nil
La = nil
Lb = nil
Ld = nil
Le = nil
Lf = nil
akp_51 = nil
akp_36 = nil
akp_24 = nil
fns.akp_8 = nil
Ll = nil
Ln = nil
Lo = nil
Lp = nil
Lq = nil
Label2 = nil
Label = nil
Toggles = nil
fns.akp_2 = nil
worker = nil
LA = nil
LB = nil
LC = nil
LF = nil
Options = nil
akp_39 = nil
akp_26 = nil
LK = nil
LL = nil
LM = nil
LN = nil
LO = nil
LP = nil
LQ = nil
LR = nil
akp_65 = nil
Label3 = nil
fns.CFrame2 = nil
local Lc, Lg, Lm, connection9, Lu, Lv, Lz, LD, LE, LJ, SaveManager, LU
LX = nil
onJoinDiscordForKeylessScripts = nil
LZ = nil
L_ = nil
L0 = nil
Library = nil
L2 = nil
akp_57 = nil
akp_43 = nil
akp_29 = nil
akp_13 = nil
L8 = nil
L9 = nil
Ma = nil
Mb = nil
Md = nil
Me = nil
Mf = nil
Mg = nil
akp_50 = nil
akp_35 = nil
akp_22 = nil
fns.akp_7 = nil
Ml = nil
Mm = nil
Mn = nil
Mp = nil
Mr = nil
Ms = nil
akp_60 = nil
connection = nil
akp_15 = nil
Mx = nil
My = nil
Mz = nil
MA = nil
MB = nil
MC = nil
MD = nil
ME = nil
MF = nil
akp_38 = nil
WalkSpeed = nil
fns.akp_10 = nil
local connection8, Mc, Mo, Mq, Mu, MG
MK = nil
ML = nil
MM = nil
MN = nil
MO = nil
MP = nil
MQ = nil
MR = nil
akp_63 = nil
akp_47 = nil
akp_33 = nil
akp_18 = nil
fns.akp_3 = nil
MZ = nil
M_ = nil
M1 = nil
M2 = nil
M3 = nil
akp_55 = nil
akp_41 = nil
fns.akp_11 = nil
M8 = nil
LocalPlayer2 = nil
Na = nil
Nb = nil
Nc = nil
Nd = nil
Ne = nil
Workspace = nil
akp_48 = nil
akp_20 = nil
fns.akp_5 = nil
No = nil
Np = nil
VirtualUser = nil
Nr = nil
akp_58 = nil
akp_44 = nil
local MX, MY, M0, M6, Nf, Ni, UserInputService, Nm, Nn, Ns, RunService, Nw
Nx = nil
Ny = nil
Nz = nil
Label4 = nil
NB = nil
ND = nil
NE = nil
NF = nil
akp_52 = nil
local TweenService
TweenService = nil
K9, fns.akp_9, akp_75, Nx, akp_23, akp_69 = nil, nil, nil, nil, nil, nil
local akp_37 = 12
repeat
    akp_56 = (akp_37 * 3 + 2) % 4 + 1
    if akp_56 <= 2 then
        if akp_56 <= 1 then
            akp_42 = { "faur", "vsv", "fgtcxiirk", "xpxzejsu", "leehbvtnqq", "ifclddhvlg", "cvn", "ojzbyzv", "fumxjk" }
            local amL = akp_37
            akp_28 = akp_42[amL % 9 + 1]
            if akp_28:len() <= akp_28:reverse():rep(amL % 3 + 2):len() then
                akp_69 = function()
                    local screenGui
                    local O7
                    screenGui = nil
                    O7 = nil
                    local LocalPlayer = game:GetService("Players").LocalPlayer
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosUnsupported"
                    screenGui.IgnoreGuiInset = true
                    screenGui.ResetOnSpawn = false
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    O7 = false
                    pcall(function()
                        if syn and syn.protect_gui then
                            syn.protect_gui(screenGui)
                        end
                        local O3_2 = gethui and gethui()
                        local O4 = O3_2 or game:GetService("CoreGui")
                        screenGui.Parent = O4
                        O7 = true
                    end)
                    if not O7 then
                        pcall(function()
                            screenGui.Parent = game:GetService("CoreGui")
                            O7 = true
                        end)
                    end
                    if not O7 and LocalPlayer then
                        screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
                    end
                    local frame = Instance.new("Frame")
                    frame.Name = "Backdrop"
                    frame.Size = UDim2.fromScale(1, 1)
                    frame.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
                    frame.BackgroundTransparency = 0.06
                    frame.BorderSizePixel = 0
                    frame.ZIndex = 1
                    frame.Parent = screenGui
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "Message"
                    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                    textLabel.Position = UDim2.fromScale(0.5, 0.5)
                    textLabel.Size = UDim2.fromScale(0.9, 0.25)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.TextScaled = true
                    textLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
                    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
                    textLabel.TextStrokeTransparency = 0.4
                    textLabel.Text = "Executor Not Supported, Use Another Executor"
                    textLabel.ZIndex = 2
                    textLabel.Parent = frame
                    local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
                    uITextSizeConstraint.MaxTextSize = 48
                    uITextSizeConstraint.Parent = textLabel
                    return screenGui
                end
            else
                Nx = function()
                    local screenGui
                    local O7
                    screenGui = nil
                    O7 = nil
                    local LocalPlayer = game:GetService("Players").LocalPlayer
                    screenGui = Instance.new("ScreenGui")
                    screenGui.Name = "OuroborosUnsupported"
                    screenGui.IgnoreGuiInset = true
                    screenGui.ResetOnSpawn = false
                    screenGui.DisplayOrder = 2147483647
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    O7 = false
                    pcall(function()
                        if syn and syn.protect_gui then
                            syn.protect_gui(screenGui)
                        end
                        local O3_1 = gethui and gethui()
                        local O4 = O3_1 or game:GetService("CoreGui")
                        screenGui.Parent = O4
                        O7 = true
                    end)
                    if not O7 then
                        pcall(function()
                            screenGui.Parent = game:GetService("CoreGui")
                            O7 = true
                        end)
                    end
                    if not O7 and LocalPlayer then
                        screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
                    end
                    local frame = Instance.new("Frame")
                    frame.Name = "Backdrop"
                    frame.Size = UDim2.fromScale(1, 1)
                    frame.BackgroundColor3 = Color3.fromRGB(8, 8, 10)
                    frame.BackgroundTransparency = 0.06
                    frame.BorderSizePixel = 0
                    frame.ZIndex = 1
                    frame.Parent = screenGui
                    local textLabel = Instance.new("TextLabel")
                    textLabel.Name = "Message"
                    textLabel.AnchorPoint = Vector2.new(0.5, 0.5)
                    textLabel.Position = UDim2.fromScale(0.5, 0.5)
                    textLabel.Size = UDim2.fromScale(0.9, 0.25)
                    textLabel.BackgroundTransparency = 1
                    textLabel.Font = Enum.Font.GothamBold
                    textLabel.TextScaled = true
                    textLabel.TextColor3 = Color3.fromRGB(255, 70, 70)
                    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
                    textLabel.TextStrokeTransparency = 0.4
                    textLabel.Text = "Executor Not Supported, Use Another Executor"
                    textLabel.ZIndex = 2
                    textLabel.Parent = frame
                    local uITextSizeConstraint = Instance.new("UITextSizeConstraint")
                    uITextSizeConstraint.MaxTextSize = 48
                    uITextSizeConstraint.Parent = textLabel
                    return screenGui
                end
            end
            akp_37 = (akp_37 + 11) % 16
        else
            akp_42 = (vector.create((akp_37 * 5 + 8) % 11 + 1, (akp_37 * 9 + 2) % 13 + 1, (akp_37 * 10 + 8) % 17 + 1))
            akp_28 = (vector.create((akp_37 * 6 + 7) % 11 + 1, (akp_37 * 11 + 10) % 13 + 1, (akp_37 * 6 + 5) % 17 + 1))
            fns.akp_12 = (vector.create((akp_37 * 1 + 4) % 11 + 1, (akp_37 * 9 + 11) % 13 + 1, (akp_37 * 9 + 9) % 17 + 1))
            akp_77 = (vector.create((akp_37 * 2 + 3) % 11 + 1, (akp_37 * 6 + 13) % 13 + 1, (akp_37 * 1 + 9) % 17 + 1))
            if vector.dot(vector.cross(akp_42, akp_28), (vector.cross(fns.akp_12, akp_77))) == vector.dot(akp_42, fns.akp_12) * vector.dot(akp_28, akp_77) - vector.dot(akp_42, akp_77) * vector.dot(akp_28, fns.akp_12) + 1 then
                akp_23, fns.akp_9 = akp_75()
            else
                fns.akp_9, akp_75 = akp_23()
            end
            akp_37 = (akp_37 + 15) % 16
        end
    elseif akp_56 <= 3 then
        akp_56 = (vector.create((akp_37 * 3 + 1) % 11 + 1, (akp_37 * 5 + 6) % 13 + 1, (akp_37 * 3 + 13) % 17 + 1))
        akp_42 = (vector.create((akp_37 * 2 + 8) % 11 + 1, (akp_37 * 7 + 8) % 13 + 1, (akp_37 * 4 + 15) % 17 + 1))
        local arx = vector.cross(akp_56, akp_42)
        local ary = vector.dot(akp_56, akp_42)
        if vector.dot(arx, arx) + ary * ary == vector.dot(akp_56, akp_56) * vector.dot(akp_42, akp_42) + 2 then
            Nx = { "xeno", "solara" }
            K9 = function()
                local OE
                local OD
                OD = nil
                OE = nil
                OE = nil
                pcall(function()
                    if identifyexecutor then
                        local Og = identifyexecutor()
                        local Oh = Og ~= ""
                        local Oi = type(Og) == "string" and Oh
                        if Oi then
                            OE = Og
                        end
                    end
                end)
                if not OE then
                    pcall(function()
                        if getexecutorname then
                            local Ok = getexecutorname()
                            local Ol = Ok ~= ""
                            local Om = type(Ok) == "string" and Ol
                            if Om then
                                OE = Ok
                            end
                        end
                    end)
                end
                OD = {}
                pcall(function()
                    local Or = getgenv and getgenv()
                    local Os = Or
                    local Ow = if Os then 1 else 0
                    local Ou = 2870 * Ow + 2974 * (1 - Ow)
                    local Ov = 2671 * Ow + 4034 * (1 - Ow)
                    if not ((Ou * 2262 + Ov * 2173 + Ou * Ov) % 16777213 == 3184580) then
                        Os = _G
                    end
                    local Or_2 = Os
                    for i, v in ipairs({ "Xeno", "xeno", "Solara", "solara", "SolaraExecutor", "XenoAPI" }) do
                        if rawget(Or_2, v) ~= nil then
                            table.insert(OD, v)
                        end
                    end
                end)
                return OE, OD
            end
        else
            K9 = { "xeno", "solara" }
            Nx = function()
                local OE
                local OD
                OD = nil
                OE = nil
                OE = nil
                pcall(function()
                    if identifyexecutor then
                        local Og = identifyexecutor()
                        local Oh = Og ~= ""
                        local Oi = type(Og) == "string" and Oh
                        if Oi then
                            OE = Og
                        end
                    end
                end)
                if not OE then
                    pcall(function()
                        if getexecutorname then
                            local Ok = getexecutorname()
                            local Ol = Ok ~= ""
                            local Om = type(Ok) == "string" and Ol
                            if Om then
                                OE = Ok
                            end
                        end
                    end)
                end
                OD = {}
                pcall(function()
                    local Or = getgenv and getgenv()
                    local Os = Or
                    local Ow = if Os then 1 else 0
                    local Ou = 2870 * Ow + 2974 * (1 - Ow)
                    local Ov = 2671 * Ow + 4034 * (1 - Ow)
                    if not ((Ou * 2262 + Ov * 2173 + Ou * Ov) % 16777213 == 3184580) then
                        Os = _G
                    end
                    local Or_1 = Os
                    for i, v in ipairs({ "Xeno", "xeno", "Solara", "solara", "SolaraExecutor", "XenoAPI" }) do
                        if rawget(Or_1, v) ~= nil then
                            table.insert(OD, v)
                        end
                    end
                end)
                return OE, OD
            end
        end
        akp_37 = (akp_37 + 11) % 16
    else
        if (akp_37 * 2 + 7) * 13 % 3 == ((akp_37 * 2 + 7) * 13 + 8) % 3 then
            akp_69 = fns.fn849
        else
            akp_23 = fns.fn849
        end
        akp_37 = (akp_37 + 15) % 16
    end
until (akp_37 * 9 + 1) % 16 == 1
if fns.akp_9 then
    akp_37 = 4
    repeat
        akp_23 = { "uexmihugvpm", "iosxdx", "ekgnmrgrz", "yqxbaowk", "eouwqfbe", "vdvfqopbzm", "xfm" }
        local aqa = akp_37
        fns.akp_9 = akp_23[aqa % 7 + 1]
        if fns.akp_9:len() <= fns.akp_9:gsub("(.)", "%1%1", aqa % 3 % 2 + 1):len() then
            pcall(akp_69)
            warn("[Ouroboros] Unsupported executor: " .. tostring(akp_75))
        else
            pcall(akp_75)
            warn("[Ouroboros] Unsupported executor: " .. tostring(akp_69))
        end
        akp_37 = (akp_37 + 5) % 8
    until (akp_37 * 1 + 6) % 8 == 7
    return
end
Library, SaveManager, Options, Toggles, Lo, Ld, TweenService, RunService, VirtualUser, UserInputService, Workspace, LocalPlayer2, M_, akp_33, LU, LJ, Lz, Lg, Nw, Nm, Ni, akp_77, MO = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))()
SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))()
Options = Library.Options
Toggles = Library.Toggles
Lo = game:GetService("Players")
Ld = game:GetService("ReplicatedStorage")
TweenService = game:GetService("TweenService")
RunService = game:GetService("RunService")
VirtualUser = game:GetService("VirtualUser")
UserInputService = game:GetService("UserInputService")
Workspace = game:GetService("Workspace")
if (LU or LU) and (LU and akp_77) or (LU or not LU) and (akp_77 and akp_77) or not ((LU or LU) and (LU and akp_77) or (LU or not LU) and (akp_77 and akp_77)) then
    LocalPlayer2 = Lo.LocalPlayer
else
    Lo = LocalPlayer2.LocalPlayer
end
local akp_73 = "Death Order: Simon Says"
M_ = "https://discord.gg/ehKVq7pf7v"
if akp_77 and akp_77 and (not Library and akp_77) and (not akp_77 and akp_77 or not Library and akp_77) or (not akp_77 or not Library) and (not akp_77 and not akp_77) and (not Library and Library or not akp_77 and Library) or not (akp_77 and akp_77 and (not Library and akp_77) and (not akp_77 and akp_77 or not Library and akp_77) or (not akp_77 or not Library) and (not akp_77 and not akp_77) and (not Library and Library or not akp_77 and Library)) then
    akp_33 = "https://rscripts.net/@Ouroboros"
else
    M_ = "https://rscripts.net/@Ouroboros"
end
local akp_71 = 18666738837
MO = fns.fn1432
akp_42 = MO(Ld, "Remotes", 10)
akp_56 = MO(akp_42, "Simon")
local akp_32 = MO(akp_56, "WardenAnnounce")
local akp_46 = MO(akp_56, "WindowOpen")
local akp_62 = MO(akp_56, "WindowClose")
LU = MO(akp_56, "CrouchState")
LJ = MO(akp_56, "SprintState")
if (Nm or false) and (not LJ or Nm) and (RunService and not RunService or not LJ and false) and ((false or Nm or (Nm or Nm)) and ((false or not LJ) and (RunService or not RunService))) and ((Nm or not LJ or (not LJ or false)) and ((akp_71 or LJ) and LJ) or (false and not LJ or (not Nm or false) or (LJ or LJ) and (not LJ and false))) and not ((Nm or false) and (not LJ or Nm) and (RunService and not RunService or not LJ and false) and ((false or Nm or (Nm or Nm)) and ((false or not LJ) and (RunService or not RunService))) and ((Nm or not LJ or (not LJ or false)) and ((akp_71 or LJ) and LJ) or (false and not LJ or (not Nm or false) or (LJ or LJ) and (not LJ and false)))) then
    Lz(MO, "ReportAction")
else
    Lz = MO(akp_56, "ReportAction")
end
akp_23 = MO(akp_42, "Game")
Lg = MO(akp_23, "EventVote")
local akp_17 = MO(akp_23, "BombHolderChanged")
Nw = MO(akp_23, "TimeClock")
fns.akp_12 = MO(akp_42, "Cafeteria")
Nm = MO(fns.akp_12, "SubmitOrder")
Ni = MO(fns.akp_12, "EatBurger")
akp_77 = (MO(Ld, "Customization"))
if not akp_77 then
    akp_37 = 0
    repeat
        akp_23 = (vector.create((akp_37 * 4 + 2) % 11 + 1, (akp_37 * 1 + 7) % 13 + 1, (akp_37 * 1 + 2) % 17 + 1))
        fns.akp_9 = (vector.create((akp_37 * 4 + 8) % 11 + 1, (akp_37 * 9 + 2) % 13 + 1, (akp_37 * 5 + 9) % 17 + 1))
        local apJ = vector.dot(akp_23, fns.akp_9)
        if apJ * apJ <= vector.dot(akp_23, akp_23) * vector.dot(fns.akp_9, fns.akp_9) then
            akp_77 = MO(Ld, "Emotes")
        else
            Ld = akp_77(MO, "Emotes")
        end
        akp_37 = (akp_37 + 2) % 4
    until (akp_37 * 3 + 1) % 4 == 3
end
M0, akp_18 = nil, nil
fns.akp_9 = akp_77
M0 = MO(fns.akp_9, "PlayEmote")
akp_18 = { Emotes = {} }
pcall(fns.fn601)
akp_37 = akp_46 == nil
akp_23 = game.PlaceId == akp_71 or akp_37
Ms, MM, WalkSpeed, MD, akp_15, Mm, Me, L8, akp_57, L_, fns.CFrame2, LQ, LC, Lu, akp_24, La, Nz, akp_44, ME, fns.akp_2, Ma, akp_43, akp_48, LR, Ll, akp_26, M6, akp_65, LE, Lv, Ln, Ne, M8, akp_55, Nb, MP, Lq, Le, ND, connection, akp_35, akp_29, LL, NE, Na, akp_38, akp_60, akp_13, akp_58, No, fns.akp_11, akp_63, My, LF, L9, Lp, Mr, Mb, akp_51, akp_20, MQ, MB, LM, Ns, fns.akp_3, Mu, LZ, Mx, fns.akp_8, Nd, MN, Mz, L0, akp_39, MZ, akp_50, Nr, LK, M1, akp_22, LA, ML, akp_52, Mn, Ny, Np, akp_47, NB, L2, Lf, Nn, LD, Lm, fns.akp_10, LN, fns.akp_7, LX, NF, MR, LP, Lb, MX, Nf, Mq, worker, LB, Lc, MY, Mc, LO, Ml = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
akp_56 = akp_23
Ms = { "AssignedCell", "CellNumber", "AssignedSpawn", "SpawnNumber", "Cell" }
akp_35 = fns.fn934
akp_29 = fns.fn347
LL = fns.fn19
NE = fns.fn709
Na = fns.fn263
akp_38 = fns.fn1975
akp_60 = fns.fn1307
akp_13 = fns.fn2009
akp_58 = fns.fn997
MM = nil
WalkSpeed = nil
MD = false
akp_15 = false
Mm = 0
Me = nil
L8 = 0
akp_57 = 0
L_ = false
fns.CFrame2 = nil
LQ = false
LC = 0
Lu = nil
akp_24 = false
La = nil
No = fns.fn647
fns.akp_11 = fns.fn1110
akp_63 = fns.fn801
ME = RaycastParams.new()
ME.FilterType = Enum.RaycastFilterType.Exclude
My = fns.fn1495
LF = function(b7, b8)
    local Qk
    local Ql = not b7 or not NE()
    if Ql then
        return 0
    elseif not b8 then
        b7 = My(b7)
        if not b7 then
            return 0
        end
        local Ql_1 = LL()
        fns.akp_11()
        Me = b7
        local Magnitude = (b7.Position - Ql_1.Position).Magnitude
        local max = math.max
        local Qp_1 = Options and Options.GlideSpeed and Options.GlideSpeed.Value or 60
        local Qo_2 = max(10, Qp_1)
        local Qn_2 = math.clamp(Magnitude / Qo_2, 0.05, 10)
        Qk = TweenService:Create(Ql_1, TweenInfo.new(Qn_2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { CFrame = b7 })
        MM = Qk
        Qk.Completed:Connect(function()
            if MM == Qk then
                MM = nil
            end
        end)
        Qk:Play()
        return Qn_2
    else
        local Ql_2 = LL()
        fns.akp_11()
        Me = b7
        local Magnitude = (b7.Position - Ql_2.Position).Magnitude
        local max = math.max
        local Qp_2 = Options and Options.GlideSpeed and Options.GlideSpeed.Value or 60
        local Qo_4 = max(10, Qp_2)
        local Qn_4 = math.clamp(Magnitude / Qo_4, 0.05, 10)
        Qk = TweenService:Create(Ql_2, TweenInfo.new(Qn_4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { CFrame = b7 })
        MM = Qk
        Qk.Completed:Connect(function()
            if MM == Qk then
                MM = nil
            end
        end)
        Qk:Play()
        return Qn_4
    end
end
L9 = fns.fn989
fns.akp_2 = 0
Lp = fns.fn455
Mr = fns.fn1681
Mb = function(cQ)
    LocalPlayer2:SetAttribute("IsCrouching", cQ)
    pcall(function()
        LU:FireServer(cQ)
    end)
    if cQ then
        pcall(function()
            Lz:FireServer("crouch")
        end)
    end
end
akp_51 = function(cY)
    pcall(function()
        LJ:FireServer(cY)
    end)
end
akp_20 = fns.fn1321
MQ = fns.fn1324
MB = fns.fn491
LM = fns.fn198
Ns = fns.fn947
fns.akp_3 = function()
    local Q5
    Q5 = Ns()
    if not Q5 then
        return
    end
    pcall(function()
        M0:FireServer(Q5)
    end)
end
Mu = fns.fn175
LZ = function(dH)
    local Rf
    if not dH then
        return
    end
    local Rg = Mu(dH)
    if not Rg then
        pcall(function()
            fireproximityprompt(dH)
        end)
        return
    end
    local max = math.max
    local Ri = dH.MaxActivationDistance or 10
    local Rj = max(4, Ri - 4)
    local Rh_1 = LL()
    local Ri_1 = Rg.Position
    if Rh_1 then
        local Rk = Rh_1.Position - Rg.Position
        local Rk_1 = Vector3.new(Rk.X, 0, Rk.Z)
        if Rk_1.Magnitude < 1 then
            Rk_1 = Vector3.new(1, 0, 0)
        end
        Ri_1 = Rg.Position + Rk_1.Unit * math.min(Rj, 5)
    end
    fns.akp_11()
    Rf = CFrame.new(Ri_1)
    Me = Rf
    task.spawn(function()
        Lp(Rf, 6, 0.05)
        task.wait(0.15)
        if Library.Unloaded then
            return
        end
        pcall(function()
            fireproximityprompt(dH)
        end)
    end)
end
Mx = fns.fn597
fns.akp_8 = fns.fn1109
if (not akp_26 and Lp or (not Lp or akp_26)) and (not akp_26 or not akp_26 or not akp_26 and Lp) and not ((not akp_26 and Lp or (not Lp or akp_26)) and (not akp_26 or not akp_26 or not akp_26 and Lp)) then
    MN = fns.fn1197
    Nd = fns.fn1692
    L0 = fns.fn1317
    Mz = fns.fn38
else
    Nd = fns.fn1197
    MN = fns.fn1692
    Mz = fns.fn1317
    L0 = fns.fn38
end
akp_39 = fns.fn1793
MZ = fns.fn340
akp_50 = fns.fn1026
Nr = fns.fn1098
LK = fns.fn1871
M1 = fns.fn1330
akp_22 = fns.fn1437
LA = function(fJ)
    if not fJ then
        return
    end
    MD = true
    local S0 = L9(fJ, 2, true)
    task.delay(S0 + 0.1, function()
        local SY = akp_29()
        if SY and not Library.Unloaded then
            pcall(function()
                fJ:Sit(SY)
            end)
        end
    end)
end
ML = fns.fn1159
akp_52 = fns.fn732
Mn = fns.fn578
Ny = fns.fn1431
Np = fns.fn916
akp_47 = fns.fn1824
NB = function(gZ)
    local T3
    T3 = nil
    local T4 = akp_29()
    T3 = Mn()
    if not T4 or not T3 or not gZ then
        return
    end
    if T3.Parent ~= akp_35() then
        pcall(function()
            T4:EquipTool(T3)
        end)
        T3 = Mn()
    end
    local T5_2 = not T3 or T3.Parent ~= akp_35()
    if T5_2 then
        return
    end
    pcall(function()
        T3:Activate()
    end)
    for i, child in ipairs(T3:GetChildren()) do
        local Ue = child
        if Ue:IsA("RemoteEvent") then
            pcall(function()
                Ue:FireServer("lmb")
            end)
            pcall(function()
                Ue:FireServer("part", gZ, gZ.Position, Vector3.yAxis)
            end)
        end
    end
end
Ma = false
akp_43 = false
L2 = fns.fn1064
Lf = fns.fn256
akp_48 = {}
akp_48.jump = fns.fn720
akp_48.crouch = fns.fn100
akp_48.sit = fns.fn894
akp_48.dance = fns.fn97
akp_48.sprint = fns.fn1036
akp_48.nosprint = fns.fn727
akp_48.dontmove = fns.fn1758
akp_48.walk = fns.fn382
Nn = fns.fn859
akp_48.tables = function()
    local UT
    if not Lf("MovementOrders") then
        return
    end
    local UU = akp_13(Nn())
    if not UU then
        return
    end
    UT = CFrame.new(UU.Position.X, Mz(UU) + 3, UU.Position.Z)
    fns.akp_11()
    Me = UT
    task.spawn(function()
        Lp(UT, 6, 0.05)
    end)
end
akp_48.climb = function()
    local UW, UX
    if not Lf("MovementOrders") then
        return
    end
    local Ladders = Workspace:FindFirstChild("Ladders")
    local UZ = akp_13(akp_58(Ladders, function(ik)
        return ik:IsA("TrussPart")
    end))
    if not UZ then
        return
    end
    local UY_1 = Mz(UZ)
    UX = CFrame.new(UZ.Position.X, UZ.Position.Y - UZ.Size.Y / 2 + 3, UZ.Position.Z)
    UW = CFrame.new(UZ.Position.X, UY_1 + 3, UZ.Position.Z)
    fns.akp_11()
    Me = UW
    task.spawn(function()
        Lp(UX, 6, 0.05)
        Lp(UW, 4, 0.05)
    end)
end
akp_48.stairs = fns.fn122
akp_48.firstfloor = fns.fn478
akp_48.secondfloor = fns.fn987
akp_48.thirdfloor = fns.fn565
akp_48.basement = fns.fn858
LR = { Line = true, TrialLine = true, StartLine = true }
LD = fns.fn1754
akp_48.line = function()
    local Vh
    if not Lf("MovementOrders") then
        return
    end
    local Vi = LD()
    if not Vi then
        return
    end
    Vh = CFrame.new(Vi.Position + Vector3.new(0, Vi.Size.Y / 2 + 3, 0))
    fns.akp_11()
    Me = Vh
    task.spawn(function()
        Lp(Vh, 6, 0.05)
    end)
end
akp_48.circlein = fns.fn249
akp_48.circleout = fns.fn1880
Lm = fns.fn1674
akp_48.cell = function()
    local VA
    if not Lf("CellOrders") then
        return
    end
    local VB = Lm(Lu) or Nd()
    if not VB then
        return
    end
    fns.akp_11()
    VA = CFrame.new(VB.Position + Vector3.new(0, VB.Size.Y / 2 + 3, 0))
    Me = VA
    task.spawn(function()
        Lp(VA, 6, 0.05)
    end)
end
akp_48.gateopen = fns.fn769
akp_48.gateclose = akp_48.gateopen
akp_48.lighton = fns.fn1631
akp_48.lightoff = akp_48.lighton
akp_48.bed = fns.fn771
fns.akp_10 = fns.fn1567
LN = fns.fn518
fns.akp_7 = fns.fn970
LX = fns.fn1217
NF = fns.fn710
MR = fns.fn1622
LP = fns.fn403
akp_48.obby = fns.fn331
akp_48.hide = fns.fn854
Ll = { "knife", "gun", "pistol", "molotov", "taser", "bat", "axe", "sword", "machete" }
Lb = fns.fn1576
MX = fns.fn958
Nf = fns.fn357
Mq = fns.fn442
akp_26 = 0
worker = function()
    local XV_1
    akp_26 = akp_26 + 1
    local XR = akp_26
    while true do
        local XS = not Library.Unloaded and XR == akp_26 and LQ and Lf("EventAvoid") and os.clock() < LC and NE()
        local XS_2
        if XS then
            local XS_1 = LL()
            local XT = MX()
            if #XT == 0 then
                task.wait(0.4)
                continue
            end
            local XU = Mq(XS_1.Position, XT)
            XV_1, XS_2 = nil, XU
            for i, v in ipairs(Nf()) do
                local XW_1 = Mq(v, XT)
                if XW_1 > XS_2 + 10 then
                    XV_1, XS_2 = v, XW_1
                end
            end
            if XV_1 and XU < 55 then
                lastActionName = "survive: relocating"
                Me = CFrame.new(XV_1)
                Lp(CFrame.new(XV_1), 6, 0.04, function()
                    local XM = Library.Unloaded or XR ~= akp_26 or not LQ
                    local XQ = if XM then 1 else 0
                    local XO = 2090 * XQ + 246 * (1 - XQ)
                    local XP = 1299 * XQ + 3678 * (1 - XQ)
                    if not ((XO * 3054 + XP * 3391 + XO * XP) % 16777213 == 13502679) then
                        XM = not Lf("EventAvoid")
                    end
                    return XM
                end)
            else
                lastActionName = "survive: holding"
            end
            task.wait(0.35)
            continue
        end
        break
    end
    if XR == akp_26 then
        LQ = false
        Me = nil
    end
end
akp_48.survive = fns.fn998
akp_48.doors = fns.fn1518
LB = function(mR)
    local Yc
    Yc = Nr(mR)
    if not Yc then
        return
    end
    fns.akp_11()
    Me = Yc
    task.spawn(function()
        Lp(Yc, 6, 0.05)
    end)
end
M6 = {}
M6.basement = fns.fn1762
M6.firstfloor = fns.fn843
M6.secondfloor = fns.fn544
M6.thirdfloor = fns.fn5
M6.circlein = fns.fn583
M6.line = function()
    local Yq
    local Yr = LD()
    local Ys = LL()
    if not Yr or not Ys then
        return
    end
    local Yt_1 = Vector3.new(Ys.Position.X - Yr.Position.X, 0, Ys.Position.Z - Yr.Position.Z)
    if Yt_1.Magnitude > 8 then
        return
    end
    local Yr_1 = Yt_1.Magnitude < 1 and Vector3.new(0, 0, 1)
    local Yu_1 = Yr_1
    local Yy = if Yu_1 then 1 else 0
    local Yw = 2684 * Yy + 3851 * (1 - Yy)
    local Yx = 1296 * Yy + 123 * (1 - Yy)
    if not ((Yw * 3721 + Yx * 2653 + Yw * Yx) % 16777213 == 126703) then
        Yu_1 = Yt_1.Unit
    end
    local Yr_2 = Yu_1
    Yq = CFrame.new(Ys.Position + Yr_2 * 14)
    fns.akp_11()
    Me = Yq
    task.spawn(function()
        Lp(Yq, 6, 0.05)
    end)
end
M6.crouch = fns.fn1893
M6.sprint = fns.fn1475
M6.sit = fns.fn1331
M6.dontmove = fns.fn1606
akp_65 = {
    { "last person to the basement", "basement" },
    { "last person to the 1st floor", "firstfloor" },
    { "last person to the 2nd floor", "secondfloor" },
    { "last person to the 3rd floor", "thirdfloor" },
    { "last person to the cafeteria", "thirdfloor" },
    { "last one to complete the obby", "obby" },
    { "do not sprint", "nosprint" },
    { "don't move", "dontmove" },
    { "reach the red line", "line" },
    { "stand on the line", "line" },
    { "stand on the tables", "tables" },
    { "climb up the ladder", "climb" },
    { "go up the stairs", "stairs" },
    { "open your cell gate", "gateopen" },
    { "close your cell gate", "gateclose" },
    { "turn on your cell light", "lighton" },
    { "turn off your cell light", "lightoff" },
    { "return to your cells", "cell" },
    { "go to any cell", "cell" },
    { "proceed to cell", "cell" },
    { "go to bed", "bed" },
    { "get on the 1st floor", "firstfloor" },
    { "get on the 2nd floor", "secondfloor" },
    { "get on the 3rd floor", "thirdfloor" },
    { "go to the cafeteria", "thirdfloor" },
    { "go to the basement", "basement" },
    { "get in the circle", "circlein" },
    { "stay in the circle", "circlein" },
    { "leave the circle", "circleout" },
    { "complete the obby", "obby" },
    { "choose a door", "doors" },
    { "find a seat", "sit" },
    { "sit down", "sit" },
    { "crouch down", "crouch" },
    { "crouch", "crouch" },
    { "sprint", "sprint" },
    { "dance", "dance" },
    { "jump", "jump" },
    { "walk", "walk" },
    { "hide", "hide" },
    { "survive", "survive" }
}
LE = {
    "simon has released a killer",
    "simon has released the necromancer",
    "murder royale has started",
    "death order has started",
    "simon has given everyone a knife",
    "simon has given everyone a gun",
    "simon has armed the cameras",
    "the seeker has been released",
    "simon says last player standing wins",
    "simon says survive"
}
Lv = { "simon has taken the guns back", "well done", "this concludes", "match over" }
Ln = {
    "when the music stops",
    "only if i say so",
    "is preparing",
    "is beginning",
    "is selecting",
    "is choosing",
    "this concludes",
    "welcome to lockstep",
    "has started",
    "has been released",
    "has released",
    "has given",
    "has taken",
    "has armed",
    "has planted",
    "has placed",
    "has revived",
    "well done",
    "impressive",
    "good luck",
    "you chose well",
    "extra lives have been removed"
}
Lc = fns.fn1683
Ne = ""
M8 = ""
akp_55 = nil
MY = fns.fn572
if (Ny or akp_20) and (not LX or not Ny) or akp_20 and not Mu and (not akp_43 or Ny) or not ((Ny or akp_20) and (not LX or not Ny) or akp_20 and not Mu and (not akp_43 or Ny)) then
    Mc = fns.fn1511
    LO = function(n1, n2)
        local Y6
        local Y9 = akp_38(n1)
        if Y9 == "" then
            return
        end
        Ne = Y9
        Lu = tonumber(Y9:match("cell%s*#?%s*(%d+)"))
        MY(Y9)
        if Y9:find("simon is preparing musical chairs", 1, true) then
            Ma = true
        elseif Y9:find("this concludes musical chairs", 1, true) then
            Ma = false
            MD = false
            akp_63()
        end
        if Y9:find("duel", 1, true) then
            akp_24 = true
            La = nil
            for i, player in ipairs(Lo:GetPlayers()) do
                local Za_7 = player ~= LocalPlayer2 and Y9:find(string.lower(player.Name), 1, true)
                if Za_7 then
                    La = player.Name
                    break
                end
            end
        else
            local Za_8 = Y9:find("this concludes", 1, true) or Y9:find("well done", 1, true) or Y9:find("match over", 1, true)
            if Za_8 then
                akp_24 = false
                La = nil
            end
        end
        if Y9:find("you are the seeker", 1, true) then
            akp_43 = true
        elseif Y9:find("simon is selecting a seeker", 1, true) then
            akp_43 = false
        end
        for i, v in ipairs(LE) do
            if Y9:find(v, 1, true) then
                akp_57 = os.clock() + 90
                break
            end
        end
        for i, v in ipairs(Lv) do
            local Zx = if Y9:find(v, 1, true) then 1 else 0
            if Zx == 1 then
                akp_57 = 0
                break
            end
        end
        if Lc(Y9) then
            M8 = "announcement (no action)"
            return
        end
        local Za_9 = n2
        if Za_9 == nil then
            Za_9 = Y9:find("simon says", 1, true) ~= nil
        end
        if not Za_9 then
            if Toggles and Toggles.TrapCancel and Toggles.TrapCancel.Value then
                fns.akp_11()
                Mr()
            end
            local Y7 = Mc(Y9)
            local Y8 = Y7 and M6[Y7]
            local Za_12 = Y8 and Lf("TrapEscape")
            if Za_12 then
                akp_15 = true
                Mm = os.clock() + 10
                L8 = 0
                M8 = "trap escape: " .. Y7
                task.spawn(function()
                    local Y1_2
                    local Y0_2
                    Y0_2, Y1_2 = pcall(Y8)
                    if not Y0_2 then
                        warn("[Ouroboros] trap escape failed:", Y7, Y1_2)
                    end
                end)
            else
                M8 = "trap ignored"
            end
            return
        end
        Y6 = Mc(Y9)
        if not Y6 then
            M8 = "no handler"
            return
        end
        M8 = Y6
        akp_15 = true
        Mm = os.clock() + 12
        MD = false
        Me = nil
        L8 = 0
        LQ = false
        akp_26 = akp_26 + 1
        Mr()
        MQ()
        fns.akp_11()
        akp_63()
        task.spawn(function()
            local Y4_2
            local Y3_2
            Y3_2, Y4_2 = pcall(akp_48[Y6])
            if not Y3_2 then
                M8 = Y6 .. " failed"
                warn("[Ouroboros] order failed:", Y6, Y4_2)
            end
        end)
    end
else
    LO = fns.fn1511
    Mc = function(n1, n2)
        local Y6
        local Y9 = akp_38(n1)
        if Y9 == "" then
            return
        end
        Ne = Y9
        Lu = tonumber(Y9:match("cell%s*#?%s*(%d+)"))
        MY(Y9)
        if Y9:find("simon is preparing musical chairs", 1, true) then
            Ma = true
        elseif Y9:find("this concludes musical chairs", 1, true) then
            Ma = false
            MD = false
            akp_63()
        end
        if Y9:find("duel", 1, true) then
            akp_24 = true
            La = nil
            for i, player in ipairs(Lo:GetPlayers()) do
                local Za_1 = player ~= LocalPlayer2 and Y9:find(string.lower(player.Name), 1, true)
                if Za_1 then
                    La = player.Name
                    break
                end
            end
        else
            local Za_2 = Y9:find("this concludes", 1, true) or Y9:find("well done", 1, true) or Y9:find("match over", 1, true)
            if Za_2 then
                akp_24 = false
                La = nil
            end
        end
        if Y9:find("you are the seeker", 1, true) then
            akp_43 = true
        elseif Y9:find("simon is selecting a seeker", 1, true) then
            akp_43 = false
        end
        for i, v in ipairs(LE) do
            if Y9:find(v, 1, true) then
                akp_57 = os.clock() + 90
                break
            end
        end
        for i, v in ipairs(Lv) do
            local Zx = if Y9:find(v, 1, true) then 1 else 0
            if Zx == 1 then
                akp_57 = 0
                break
            end
        end
        if Lc(Y9) then
            M8 = "announcement (no action)"
            return
        end
        local Za_3 = n2
        if Za_3 == nil then
            Za_3 = Y9:find("simon says", 1, true) ~= nil
        end
        if not Za_3 then
            if Toggles and Toggles.TrapCancel and Toggles.TrapCancel.Value then
                fns.akp_11()
                Mr()
            end
            local Y7 = Mc(Y9)
            local Y8 = Y7 and M6[Y7]
            local Za_6 = Y8 and Lf("TrapEscape")
            if Za_6 then
                akp_15 = true
                Mm = os.clock() + 10
                L8 = 0
                M8 = "trap escape: " .. Y7
                task.spawn(function()
                    local Y1_1
                    local Y0_1
                    Y0_1, Y1_1 = pcall(Y8)
                    if not Y0_1 then
                        warn("[Ouroboros] trap escape failed:", Y7, Y1_1)
                    end
                end)
            else
                M8 = "trap ignored"
            end
            return
        end
        Y6 = Mc(Y9)
        if not Y6 then
            M8 = "no handler"
            return
        end
        M8 = Y6
        akp_15 = true
        Mm = os.clock() + 12
        MD = false
        Me = nil
        L8 = 0
        LQ = false
        akp_26 = akp_26 + 1
        Mr()
        MQ()
        fns.akp_11()
        akp_63()
        task.spawn(function()
            local Y4_1
            local Y3_1
            Y3_1, Y4_1 = pcall(akp_48[Y6])
            if not Y3_1 then
                M8 = Y6 .. " failed"
                warn("[Ouroboros] order failed:", Y6, Y4_1)
            end
        end)
    end
end
Nb = {}
akp_75 = fns.fn1847
akp_75(akp_32, fns.fn1972)
akp_75(akp_46, fns.fn318)
akp_75(akp_62, fns.fn1372)
task.spawn(fns.worker2)
MP = false
task.spawn(fns.masterEnabledLoop)
table.insert(Nb, Workspace:GetAttributeChangedSignal("ObbyActive"):Connect(fns.fn1891))
akp_75(Lg, function(pC, pD)
    local ZS
    local ZT = Library.Unloaded or pC ~= "start" or not Lf("EventAutoVote")
    if ZT then
        return
    end
    local ZT_1 = Options.VoteChoice and tonumber(Options.VoteChoice.Value:match("(%d+)"))
    ZS = ZT_1 or 1
    local ZT_2 = type(pD) == "table" and #pD > 0
    if ZT_2 then
        ZS = math.clamp(ZS, 1, #pD)
    end
    task.delay(0.6, function()
        if Library.Unloaded then
            return
        end
        M8 = "vote " .. ZS
        pcall(function()
            Lg:FireServer("vote", ZS)
        end)
    end)
end)
akp_75(Nw, function(pT, pU, pV, pW)
    local ZY, ZZ
    if Library.Unloaded then
        return
    end
    if pT == "sub" or pT == "notice" then
        MY(pU)
        MY(pV)
        return
    end
    if pT == "end" then
        akp_55 = nil
        return
    end
    local Z__1 = pT ~= "begin" or not Lf("EventSplitSecond")
    if Z__1 then
        return
    end
    if pV ~= true then
        M8 = "split second: simon did not say"
        return
    end
    local Z__2 = tonumber(pW)
    ZZ = akp_55
    local Z0_1 = not ZZ
    local Z1 = not Z__2
    local Z5 = if Z1 then 1 else 0
    local Z3 = 53 * Z5 + 1679 * (1 - Z5)
    local Z4 = 916 * Z5 + 3480 * (1 - Z5)
    if not ((Z3 * 2297 + Z4 * 3462 + Z3 * Z4) % 16777213 == 3341481) then
        Z1 = Z0_1
    end
    if Z1 then
        M8 = "split second: no number"
        return
    end
    ZY = Z__2 + ZZ
    M8 = string.format("split second %.2f", ZZ)
    task.spawn(function()
        while true do
            local ZW_1 = not Library.Unloaded and Workspace:GetServerTimeNow() < ZY - 0.03
            if ZW_1 then
                task.wait()
                continue
            end
            break
        end
        local ZW_2 = Library.Unloaded or not Lf("EventSplitSecond")
        if ZW_2 then
            return
        end
        pcall(function()
            Nw:FireServer("press", ZY)
        end)
        M8 = string.format("split second pressed %.2f", ZZ)
    end)
end)
Lq = false
Le = nil
ND = nil
akp_75(akp_17, fns.fn1396)
task.spawn(fns.worker3);
(function()
    local qI
    qI = { "cheeseburger", "burger", "coffee", "water", "medkit" }
    local function qJ(qK)
        for i, v in ipairs(qI) do
            if string.find(qK, v, 1, true) then
                return true
            end
        end
        return false
    end
    local function qO(qP)
        if not qP:IsA("Tool") then
            return false
        end
        local Parent = qP.Parent
        local aau = not Parent or Parent:IsA("Backpack")
        if aau then
            return false
        elseif Lo:GetPlayerFromCharacter(Parent) then
            return false
        elseif Parent:FindFirstChildWhichIsA("Humanoid") then
            return false
        else
            return true
        end
    end
    local function qU(qV)
        local aaA = if not qO(qV) then 1 else 0
        if aaA == 1 then
            return false
        end
        local aaD = if L2("AutoCollectTools") then 1 else 0
        if aaD == 1 then
            return true
        end
        local aaw = L2("AutoCollectFood") and qJ(string.lower(qV.Name))
        return aaw
    end
    local function q0(q1)
        local aaH = q1:FindFirstChild("Handle") or q1:FindFirstChildWhichIsA("BasePart")
        return aaH
    end
    local function q3()
        local aaN_1
        local aaM_1
        local aaJ = LL()
        if not aaJ then
            return nil
        end
        local aaL = Options.CollectRange and Options.CollectRange.Value
        local aaL_1
        local aaS = if aaL then 1 else 0
        local aaQ = 3081 * aaS + 1542 * (1 - aaS)
        local aaR = 2314 * aaS + 3815 * (1 - aaS)
        if not ((aaQ * 1830 + aaR * 711 + aaQ * aaR) % 16777213 == 14412918) then
            aaL = 150
        end
        aaM_1, aaL_1, aaN_1 = nil, aaL, nil
        for i, descendant in ipairs(Workspace:GetDescendants()) do
            if qU(descendant) then
                local aaK_2 = q0(descendant)
                if aaK_2 then
                    local Magnitude = (aaK_2.Position - aaJ.Position).Magnitude
                    if Magnitude < aaL_1 then
                        aaM_1, aaL_1, aaN_1 = descendant, Magnitude, aaK_2
                    end
                end
            end
        end
        return aaM_1, aaN_1
    end
    local function rm(rn)
        local Parent = rn.Parent
        if not Parent then
            return true
        end
        local aa_ = Parent:IsA("Backpack") or Parent == akp_35()
        return aa_
    end
    local function rs(rt)
        local aa1 = akp_35()
        local aa2 = not aa1 or type(firetouchinterest) ~= "function"
        if aa2 then
            return
        end
        for i, child in ipairs(aa1:GetChildren()) do
            if child:IsA("BasePart") then
                pcall(firetouchinterest, rt, child, 0)
                pcall(firetouchinterest, rt, child, 1)
            end
        end
    end
    local function rz(rA, rB)
        local abc = LL()
        if not abc then
            return
        end
        M8 = "collecting " .. rA.Name
        Lp(CFrame.new(rB.Position + Vector3.new(0, 2, 0)), 6, 0.04, function()
            local aba = Library.Unloaded or not qU(rA) or No()
            return aba
        end)
        local abj = 1
        while true do
            if abj <= 12 then
                local abc_1 = Library.Unloaded or rm(rA) or not rB.Parent
                if abc_1 then
                    return
                end
                local abc_2 = LL()
                if not abc_2 then
                    break
                end
                abc_2.CFrame = CFrame.new(rB.Position)
                abc_2.AssemblyLinearVelocity = Vector3.zero
                rs(rB)
                task.wait(0.08)
                abj += 1
                continue
            end
            return
        end
        return
    end
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.5)
            local abm = L2("AutoCollectFood") or L2("AutoCollectTools")
            local abm_3
            local abn = abm and NE() and not No()
            local abn_2
            if abn and not LQ and not L_ then
                abn_2, abm_3 = q3()
                if abn_2 and abm_3 then
                    rz(abn_2, abm_3)
                    task.wait(0.2)
                end
            end
        end
    end)
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.25)
            local abq = L2("FoodAura") and NE()
            if abq then
                local abq_1 = LL()
                local abs = Options.AuraRange and Options.AuraRange.Value or 25
                for i, descendant in ipairs(Workspace:GetDescendants()) do
                    local abs_1 = qO(descendant) and qJ(string.lower(descendant.Name))
                    if abs_1 then
                        local abs_2 = q0(descendant)
                        if abs_2 and (abs_2.Position - abq_1.Position).Magnitude <= abs then
                            M8 = "aura pickup " .. descendant.Name
                            rs(abs_2)
                        end
                    end
                end
            end
        end
    end)
    local sp = Color3.fromRGB(255, 200, 90)
    local sq = Color3.fromRGB(255, 80, 80)
    local function sr(ss)
        local abB = ss:IsA("Tool") or ss:IsA("BasePart") or ss:IsA("Model")
        if not abB then
            return false
        end
        return string.find(string.lower(ss.Name), "bomb", 1, true) ~= nil
    end
    local function su(sv)
        local abH
        local abG = sv.Parent
        while true do
            if not (abG and abG ~= Workspace) then
                return "Bomb"
            end
            abH = Lo:GetPlayerFromCharacter(abG)
            if abH then
                break
            end
            abG = abG.Parent
        end
        return "Bomb - " .. abH.Name
    end
    local function sA(sB)
        local abK = sB:IsA("BasePart") or sB:IsA("Model")
        if abK then
            return sB
        end
        return q0(sB)
    end
    local sF = {}
    local folder2
    local function sG()
        if folder2 and folder2.Parent then
            return folder2
        end
        folder2 = Instance.new("Folder")
        folder2.Name = "OuroborosWorldEsp"
        local abP_1 = pcall(function()
            local abM = gethui and gethui()
            local abN = abM or game:GetService("CoreGui")
            folder2.Parent = abN
        end)
        if not abP_1 then
            folder2.Parent = LocalPlayer2:WaitForChild("PlayerGui")
        end
        return folder2
    end
    local function sP()
        for k, v in pairs(sF) do
            local ab_ = v
            pcall(function()
                ab_:Destroy()
            end)
        end
        table.clear(sF)
        if folder2 then
            folder2:Destroy()
            folder2 = nil
        end
    end
    local function sV(sW, sX, sY)
        local folder = Instance.new("Folder")
        folder.Name = "Marker"
        folder.Parent = sG()
        local highlight = Instance.new("Highlight")
        highlight.Name = "Fill"
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.FillColor = sY
        highlight.OutlineColor = sY
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Adornee = sW
        highlight.Parent = folder
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "Tag"
        billboardGui.Adornee = sW
        billboardGui.Size = UDim2.fromOffset(200, 20)
        billboardGui.StudsOffset = Vector3.new(0, 2, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = folder
        local textLabel = Instance.new("TextLabel")
        textLabel.Name = "Name"
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.RobotoMono
        textLabel.TextSize = 14
        textLabel.TextStrokeTransparency = 0.4
        textLabel.TextColor3 = sY
        textLabel.Text = sX
        textLabel.Parent = billboardGui
        return folder
    end
    task.spawn(function()
        local ab4_1
        while not Library.Unloaded do
            task.wait(0.3)
            local ab0 = L2("FoodEsp")
            local ab1 = L2("BombEsp")
            local ab2 = not ab1
            local ab3 = not ab0
            local ab3_1
            if ab3 ~= false then
                ab3 = ab2
            end
            if ab3 then
                if next(sF) then
                    sP()
                end
                continue
            end
            local ab2_1 = {}
            for i, descendant in ipairs(Workspace:GetDescendants()) do
                ab4_1, ab3_1 = nil, nil
                local ab5 = ab0 and qO(descendant) and qJ(string.lower(descendant.Name))
                if ab5 then
                    ab4_1, ab3_1 = sp, descendant.Name
                else
                    local ab5_1 = ab1 and sr(descendant)
                    if ab5_1 then
                        ab4_1, ab3_1 = sq, su(descendant)
                    end
                end
                local ab5_2 = ab4_1 and sA(descendant)
                if ab5_2 then
                    ab2_1[descendant] = true
                    local ab5_3 = sF[descendant]
                    if ab5_3 and not ab5_3.Parent then
                        sF[descendant] = nil
                        ab5_3 = nil
                    end
                    if ab5_3 then
                        local Tag = ab5_3:FindFirstChild("Tag")
                        local ab5_4 = Tag and Tag:FindFirstChild("Name")
                        if ab5_4 then
                            ab5_4.Text = ab3_1
                        end
                    else
                        sF[descendant] = sV(ab5_2, ab3_1, ab4_1)
                    end
                end
            end
            for k, v in pairs(sF) do
                local acl = v
                if not ab2_1[k] then
                    pcall(function()
                        acl:Destroy()
                    end)
                    sF[k] = nil
                end
            end
        end
        sP()
    end)
end)()
connection = nil
Ml = fns.fn1950
if akp_35() then
    Ml(akp_35())
end
table.insert(Nb, LocalPlayer2.CharacterAdded:Connect(function(tO)
    fns.akp_11()
    WalkSpeed = nil
    MD = false
    akp_15 = false
    L_ = false
    fns.CFrame2 = nil
    LQ = false
    akp_24 = false
    La = nil
    Ml(tO)
end))
Mf = function()
    local acv_1
    local Map = Workspace:FindFirstChild("Map")
    local acu = Map and Map:FindFirstChild("Structure")
    local acu_1
    if not acu then
        return nil
    end
    acv_1, acu_1 = nil, -math.huge
    for i, v in ipairs({ acu:FindFirstChild("Ceilings"), acu:FindFirstChild("Architecture"), acu:FindFirstChild("Walls") }) do
        if v then
            for i, descendant in ipairs(v:GetDescendants()) do
                local act_2 = descendant:IsA("BasePart") and descendant.CanCollide and L0(descendant) > 400
                if act_2 then
                    local act_3 = Mz(descendant)
                    if act_3 > acu_1 then
                        acv_1, acu_1 = descendant, act_3
                    end
                end
            end
        end
    end
    if not acv_1 then
        return nil
    end
    return CFrame.new(acv_1.Position.X, acu_1 + 3.5, acv_1.Position.Z)
end
Nz = function()
    local acM = LL()
    local acN = not acM
    local acR = if acN then 1 else 0
    local acP = 169 * acR + 3803 * (1 - acR)
    local acQ = 2930 * acR + 228 * (1 - acR)
    if not ((acP * 2957 + acQ * 1177 + acP * acQ) % 16777213 == 4443513) then
        acN = L_
    end
    if acN then
        return
    end
    local acN_1 = Mf()
    if not acN_1 then
        return
    end
    L_ = true
    fns.CFrame2 = acM.CFrame
    fns.akp_11()
    Mr()
    acM.CFrame = acN_1
    acM.AssemblyLinearVelocity = Vector3.zero
    M8 = "on rooftop"
end
MK = function()
    local acS = Nd()
    local Spawns
    if acS then
        return CFrame.new(acS.Position + Vector3.new(0, acS.Size.Y / 2 + 3, 0))
    elseif fns.CFrame2 then
        local acS_1 = My(fns.CFrame2)
        if acS_1 then
            return acS_1
        end
        local Spawns2 = Workspace:FindFirstChild("Spawns")
        if Spawns then
            for i, child in ipairs(Spawns2:GetChildren()) do
                if child:IsA("BasePart") then
                    return CFrame.new(child.Position + Vector3.new(0, child.Size.Y / 2 + 3, 0))
                end
            end
        end
        return Nr("1stfloor")
    else
        Spawns = Workspace:FindFirstChild("Spawns")
        if Spawns then
            for i, child in ipairs(Spawns:GetChildren()) do
                if child:IsA("BasePart") then
                    return CFrame.new(child.Position + Vector3.new(0, child.Size.Y / 2 + 3, 0))
                end
            end
        end
        return Nr("1stfloor")
    end
end
akp_44 = function()
    local ac_ = LL()
    if not ac_ then
        L_ = false
        LQ = false
        fns.CFrame2 = nil
        return
    end
    local ac0 = MK()
    if not ac0 then
        return
    end
    ac_.CFrame = ac0
    ac_.AssemblyLinearVelocity = Vector3.zero
    ac_.Anchored = false
    ac_.CFrame = ac0
    ac_.AssemblyLinearVelocity = Vector3.zero
    L_ = false
    fns.CFrame2 = nil
    Me = nil
    M8 = "returned"
end
task.spawn(function()
    while not Library.Unloaded do
        task.wait(1)
        local ac2 = os.clock() < akp_57
        local ac3 = NE() and not akp_43 and not Ny()
        local ac4 = ac2
        if ac4 then
            ac4 = Lf("EventAvoid")
        end
        local ac3_2 = ac4 and not LQ
        if ac3 then
            local ac2_2 = ac3_2 and not L_ and not No()
            if ac2_2 then
                Nz()
            else
                local ac2_3 = not ac3_2
                if ac2_3 ~= false then
                    ac2_3 = L_
                end
                if ac2_3 then
                    akp_44()
                elseif L_ then
                    local ac2_4 = Mf()
                    local ac3_3 = LL()
                    if ac2_4 and ac3_3 and (ac2_4.Position - ac3_3.Position).Magnitude > 12 then
                        ac3_3.CFrame = ac2_4
                        ac3_3.AssemblyLinearVelocity = Vector3.zero
                    end
                end
            end
        elseif L_ then
            LQ = false
            akp_44()
        end
    end
end)
task.spawn(function()
    local ac8_1
    while not Library.Unloaded do
        local ac7 = not Lf("AutoKill") or not NE() or LocalPlayer2:GetAttribute("IsEliminated") or not Ny() or No()
        if ac7 then
            task.wait(0.25)
        else
            if L_ then
                akp_44()
            end
            local ac7_1 = nil
            if akp_24 then
                ac8_1 = Np()
                if ac8_1 then
                    local ac9_1 = ac8_1.Character and ac8_1.Character:FindFirstChild("HumanoidRootPart")
                    local ac9_2 = LL()
                    ac7_1 = ac9_1 and ac9_2 and (ac9_1.Position - ac9_2.Position).Magnitude or nil
                end
            else
                ac8_1, ac7_1 = akp_47()
            end
            if not ac8_1 then
                task.wait(0.25)
            else
                local ac9_4 = ac8_1.Character and ac8_1.Character:FindFirstChild("HumanoidRootPart")
                if not ac9_4 then
                    task.wait(0.1)
                else
                    if ac7_1 and ac7_1 > 6 then
                        local ac7_2 = LF(CFrame.new(ac9_4.Position + Vector3.new(0, 3, 0)), true)
                        task.wait(math.clamp(ac7_2, 0.05, 1.5))
                    end
                    local adj = 1
                    while adj <= 10 do
                        local ac7_3 = Library.Unloaded or not Lf("AutoKill") or not Ny()
                        if ac7_3 then
                            break
                        elseif ac8_1:GetAttribute("IsEliminated") then
                            break
                        else
                            local ac7_4 = ac8_1.Character and ac8_1.Character:FindFirstChildWhichIsA("Humanoid")
                            local ac7_5 = ac8_1.Character and ac8_1.Character:FindFirstChild("HumanoidRootPart")
                            local ada_3 = not ac7_4
                            if not ada_3 then
                                ada_3 = ac7_4.Health <= 0
                            end
                            if ada_3 or not ac7_5 then
                                break
                            end
                            local ac7_7 = LL()
                            if ac7_7 and (ac7_5.Position - ac7_7.Position).Magnitude > 8 then
                                LF(CFrame.new(ac7_5.Position + Vector3.new(0, 3, 0)), true)
                            end
                            NB(ac7_5)
                            task.wait(0.12)
                            adj += 1
                        end
                    end
                end
            end
        end
    end
end)
akp_37 = Library:CreateWindow({
    Title = "Ouroboros Hub",
    Footer = { { Text = M_, Copyable = true }, "|", akp_73 },
    Icon = 12645376577,
    NotifySide = "Right",
    ShowCustomCursor = false,
    CornerRadius = 10
})
Mo = {
    Info = akp_37:AddTab("Info", "info"),
    Orders = akp_37:AddTab("Orders", "gavel"),
    Events = akp_37:AddTab("Events", "swords"),
    Player = akp_37:AddTab("Player", "user"),
    Settings = akp_37:AddTab("Settings", "settings")
}
Mg = function(vn, vo)
    if setclipboard then
        setclipboard(vn)
    elseif toclipboard then
        toclipboard(vn)
    end
    Library:Notify(vo)
end
onJoinDiscordForKeylessScripts = function()
    Mg(M_, "Copied Discord invite to clipboard")
end
akp_37 = function(vu)
    local DiscordGroup = vu:AddLeftGroupbox("Discord")
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = onJoinDiscordForKeylessScripts })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = onJoinDiscordForKeylessScripts })
end
for k, v in Mo do
    akp_37(v)
end
MC, MA, Mp, Md, akp_75, fns.akp_5, M2 = nil, nil, nil, nil, nil, nil, nil
fns.akp_5 = fns.fn842
if akp_75 and akp_75 or (akp_75 or akp_75) or Mp and fns.akp_5 and (false and akp_75) or (fns.akp_5 and false or not fns.akp_5 and false or not akp_75 and fns.akp_5 and (akp_75 and not fns.akp_5)) or ((fns.akp_5 or not akp_75) and (akp_75 and Mp) or ("#8b93a3" or fns.akp_5 and not akp_75)) and (false and not fns.akp_5 and (not akp_75 and fns.akp_5) or not akp_75 and Mp and (not fns.akp_5 and akp_75)) or not (akp_75 and akp_75 or (akp_75 or akp_75) or Mp and fns.akp_5 and (false and akp_75) or (fns.akp_5 and false or not fns.akp_5 and false or not akp_75 and fns.akp_5 and (akp_75 and not fns.akp_5)) or ((fns.akp_5 or not akp_75) and (akp_75 and Mp) or ("#8b93a3" or fns.akp_5 and not akp_75)) and (false and not fns.akp_5 and (not akp_75 and fns.akp_5) or not akp_75 and Mp and (not fns.akp_5 and akp_75))) then
    M2 = fns.fn269
end
fns.akp_9 = "#7fd47f"
MC = "#6ec1ff"
MA = "#e8a34d"
Mp = "#8b93a3"
Md = "Unknown"
pcall(fns.fn906)
akp_75 = Mo.Info:AddLeftGroupbox("Account", "circle-user")
akp_75:AddLabel(M2("User", LocalPlayer2.Name, fns.akp_9), true)
akp_75:AddLabel(M2("Status", "Keyless", fns.akp_9), true)
akp_75:AddLabel(M2("Executor", Md, fns.akp_9), true)
akp_37 = akp_56 and "Lobby"
akp_23 = akp_37 or "In Game"
akp_37 = akp_56 and MA
akp_69 = akp_37 or fns.akp_9
akp_42, Label, akp_36, akp_56 = nil, nil, nil, nil
akp_37 = 23
repeat
    fns.akp_9 = (akp_37 * 2 + 0) % 3 + 1
    if fns.akp_9 <= 2 then
        if fns.akp_9 <= 1 then
            local am5 = bit32.rrotate(bit32.bxor(bit32.lrotate(akp_37, 17), string.byte(tostring(Label))), 7)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(am5, 2681114447), 3541313198), (bit32.bxor(bit32.band(am5, 1613852848), 1353057593))), 3541313198), 1353057593) ~= am5 then
                akp_36 = #akp_56 > 18
            else
                akp_56 = #akp_36 > 18
            end
            akp_37 = (akp_37 + 11) % 24
        else
            fns.akp_9 = (vector.create((akp_37 * 2 + 8) % 11 + 1, (akp_37 * 3 + 2) % 13 + 1, (akp_37 * 14 + 3) % 17 + 1))
            akp_28 = (vector.create((akp_37 * 7 + 2) % 11 + 1, (akp_37 * 6 + 8) % 13 + 1, (akp_37 * 9 + 10) % 17 + 1))
            local aqb = vector.cross(fns.akp_9, akp_28)
            local aqc = vector.dot(fns.akp_9, akp_28)
            if vector.dot(aqb, aqb) + aqc * aqc == vector.dot(fns.akp_9, fns.akp_9) * vector.dot(akp_28, akp_28) then
                akp_75:AddLabel(M2("Place", akp_23, akp_69), true)
                akp_42 = Mo.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                akp_42:AddLabel(fns.akp_5(akp_73 .. " [" .. tostring(game.PlaceId) .. "]", MC), true)
                akp_42:AddLabel(M2("Place ID", tostring(game.PlaceId), MC), true)
                Label = akp_42:AddLabel(M2("Session time", "0s", MA), true)
            else
                akp_75:AddLabel(M2("Place", akp_23, MC), true)
                fns.akp_5 = Label.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                fns.akp_5:AddLabel(akp_73(M2 .. " [" .. tostring(game.PlaceId) .. "]", akp_69), true)
                fns.akp_5:AddLabel(Mo("Place ID", tostring(game.PlaceId), akp_69), true)
                MA = fns.akp_5:AddLabel(Mo("Session time", "0s", akp_42), true)
            end
            akp_37 = (akp_37 + 8) % 24
        end
    else
        local amG = bit32.rrotate(bit32.bxor(bit32.lrotate(akp_37, 8), string.byte(tostring(akp_36))), 22)
        if bit32.bxor(bit32.lrotate(bit32.bxor(amG, 392843293), 22), 122018452) == bit32.lrotate(amG, 22) then
            akp_36 = tostring(game.JobId)
        else
            akp_42 = tostring(game.JobId)
        end
        akp_37 = (akp_37 + 23) % 24
    end
until (akp_37 * 19 + 12) % 24 == 23
if akp_56 then
    akp_37 = 2
    repeat
        if akp_37 * 110148529 + 4 + 6 >= akp_37 * 110148529 + 4 + 6 + 5 then
            akp_36 = string.sub(akp_56, 1, 18) .. "..."
        else
            akp_56 = string.sub(akp_36, 1, 18) .. "..."
        end
        akp_37 = (akp_37 + 0) % 4
    until (akp_37 * 3 + 0) % 4 == 2
end
akp_37 = akp_56 or akp_36
Nc, akp_62, akp_71, fns.akp_9, Label2, Label3, Label4, MG, akp_41, M3, connection8, connection9, MF = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local akp_49 = akp_37
akp_42:AddLabel(M2("Server", akp_49, Mp), true)
akp_42:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
Nc = os.clock()
if (akp_71 or akp_71) and (Label3 or Label3) and ((not MF or not akp_71) and (MF or not fns.akp_9)) or (Label3 or not akp_71 or fns.akp_9 and not MF or (not Label3 and not MF or akp_71 and Label3)) or not ((akp_71 or akp_71) and (Label3 or Label3) and ((not MF or not akp_71) and (MF or not fns.akp_9)) or (Label3 or not akp_71 or fns.akp_9 and not MF or (not Label3 and not MF or akp_71 and Label3))) then
    task.spawn(fns.worker4)
    akp_62 = Mo.Info:AddRightGroupbox("Scripts", "package")
else
    task.spawn(fns.worker4)
    Mo = akp_62.Info:AddRightGroupbox("Scripts", "package")
end
akp_62:AddLabel(fns.akp_5("Included in this hub", Mp), true)
akp_62:AddLabel(fns.akp_5(akp_73, MC), true)
akp_46 = Mo.Info:AddRightGroupbox("Features", "list")
if (Label3 and akp_46 and (not akp_46 or akp_46) or akp_46 and Label3 and (not akp_46 or not Label3)) and ((akp_46 or not akp_46 or (not Label3 or not Label3)) and (Label3 or not akp_46 or akp_46 and akp_46)) and not ((Label3 and akp_46 and (not akp_46 or akp_46) or akp_46 and Label3 and (not akp_46 or not Label3)) and ((akp_46 or not akp_46 or (not Label3 or not Label3)) and (Label3 or not akp_46 or akp_46 and akp_46))) then
    Mp:AddLabel(akp_71("Auto Simon Orders", Mo), true)
    Mp:AddLabel(akp_71("Trap Detection", fns.akp_5), true)
    Mp:AddLabel(akp_71("Event Automation", Mo), true)
    Mp:AddLabel(akp_71("Food Automation", fns.akp_5), true)
    Mp:AddLabel(akp_71("Misc Utilities", akp_46), true)
    MA = (nil):AddRightGroupbox("Socials", "link")
else
    akp_46:AddLabel(fns.akp_5("Auto Simon Orders", MC), true)
    akp_46:AddLabel(fns.akp_5("Trap Detection", MA), true)
    akp_46:AddLabel(fns.akp_5("Event Automation", MC), true)
    akp_46:AddLabel(fns.akp_5("Food Automation", MA), true)
    akp_46:AddLabel(fns.akp_5("Misc Utilities", Mp), true)
    akp_71 = Mo.Info:AddRightGroupbox("Socials", "link")
end
akp_71:AddButton({ Text = "Discord", Func = onJoinDiscordForKeylessScripts })
akp_71:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
fns.akp_12 = Mo.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
fns.akp_12:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
fns.akp_12:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
fns.akp_12:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
fns.akp_12:AddButton({ Text = "Copy Discord Invite", Func = onJoinDiscordForKeylessScripts })
akp_28 = Mo.Info:AddRightGroupbox("FAQ", "circle-help")
akp_28:AddLabel("Where do I get a good config?", true)
akp_28:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
akp_28:AddLabel("How do I import / export configs?", true)
akp_28:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
akp_28:AddLabel("How do I report bugs?", true)
akp_28:AddLabel("Join the Discord and post it in the bugs channel.", true)
akp_28:AddLabel("How do I make suggestions?", true)
akp_28:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
akp_28:AddLabel("How do I get help or updates?", true)
akp_28:AddLabel("Join the Discord, updates and support are posted there first.", true)
akp_69 = Mo.Orders:AddLeftGroupbox("Automation", "zap")
akp_69:AddToggle("MasterEnabled", { Text = "Auto Simon Says", Default = false })
akp_69:AddToggle("MovementOrders", { Text = "Movement Orders", Default = true })
akp_69:AddToggle("PoseOrders", { Text = "Pose Orders", Default = true })
akp_69:AddToggle("StateOrders", { Text = "State Orders", Default = true })
akp_69:AddToggle("CellOrders", { Text = "Cell Orders", Default = true })
akp_69:AddToggle("TrapCancel", { Text = "Cancel Movement On Trap", Default = true })
akp_69:AddToggle("TrapEscape", { Text = "Leave Trap Locations", Default = true })
akp_75 = Mo.Orders:AddLeftGroupbox("Food", "utensils")
akp_75:AddToggle("AutoBuyFood", { Text = "Auto Buy Food", Default = false })
akp_75:AddDropdown("BuyFoodType", { Values = { "Cheeseburger", "Coffee" }, Default = 1, Text = "Buy Food" })
akp_75:AddToggle("AutoUseFood", { Text = "Auto Use Food", Default = false })
akp_75:AddDropdown("UseFoodType", { Values = { "Cheeseburger", "Coffee", "Both" }, Default = 1, Text = "Use Food" })
akp_75:AddToggle("UseFoodOnLowHealth", { Text = "Only Eat On Low Health", Default = false })
akp_75:AddSlider("UseFoodHealthPercent", { Text = "Eat Below Health", Default = 50, Min = 5, Max = 100, Rounding = 0, Suffix = "%" })
akp_75:AddToggle("AutoCollectFood", { Text = "Auto Collect Dropped Food", Default = false })
akp_75:AddToggle("AutoCollectTools", { Text = "Auto Collect Dropped Tools", Default = false })
akp_75:AddToggle("FoodAura", { Text = "Food Aura", Default = false })
akp_75:AddSlider("AuraRange", { Text = "Aura Range", Default = 25, Min = 5, Max = 80, Rounding = 0, Suffix = " studs" })
akp_75:AddSlider("CollectRange", { Text = "Collect Range", Default = 150, Min = 30, Max = 400, Rounding = 0, Suffix = " studs" })
akp_56 = Mo.Orders:AddRightGroupbox("Tuning", "sliders-horizontal")
akp_56:AddSlider("GlideSpeed", { Text = "Glide Speed", Default = 60, Min = 20, Max = 200, Rounding = 0, Suffix = " studs/s" })
fns.akp_9 = Mo.Orders:AddRightGroupbox("Status", "activity")
Label2 = fns.akp_9:AddLabel(M2("Order", "waiting", Mp), true)
Label3 = fns.akp_9:AddLabel(M2("Action", "idle", Mp), true)
Label4 = fns.akp_9:AddLabel(M2("Cell", "unknown", MC), true)
task.spawn(fns.worker5)
akp_32 = Mo.Events:AddLeftGroupbox("Events", "swords")
akp_32:AddToggle("EventObby", { Text = "Auto Obby", Default = true })
akp_32:AddToggle("EventHideSeek", { Text = "Auto Hide And Seek", Default = true })
akp_32:AddToggle("EventAvoid", { Text = "Avoid Killers", Default = false })
akp_32:AddToggle("AutoKill", { Text = "Auto Kill", Default = false })
akp_32:AddToggle("EventBombPass", { Text = "Auto Pass The Bomb", Default = false })
akp_32:AddToggle("EventSplitSecond", { Text = "Auto Split Second", Default = true })
akp_32:AddToggle("EventTwoDoors", { Text = "Auto Two Doors", Default = true })
akp_32:AddToggle("EventAutoVote", { Text = "Auto Vote", Default = true })
akp_17 = Mo.Events:AddRightGroupbox("Event Tuning", "sliders-horizontal")
akp_17:AddSlider("AvoidDistance", { Text = "Avoid Distance", Default = 45, Min = 15, Max = 120, Rounding = 0, Suffix = " studs" })
akp_17:AddDropdown("DoorChoice", { Values = { "Door1", "Door2" }, Default = 1, Text = "Door" })
akp_17:AddDropdown("VoteChoice", { Values = { "1", "2", "3" }, Default = 1, Text = "Vote Slot" })
MG = {}
akp_77 = function()
    local worker
    local bodyVelocity
    local aih
    local ais
    local aio
    local bodyGyro
    local aiy
    local aij
    local aiq
    local ah0
    local aib
    local aim
    local aie
    ah0 = nil
    bodyGyro = nil
    bodyVelocity = nil
    worker = nil
    aib = nil
    aie = nil
    aih = nil
    aij = nil
    aim = nil
    aio = nil
    aiq = nil
    ais = nil
    aiy = nil
    local ahZ, ah_, ah2, ah3, ah4, ah5, ah7, ah8, ah9, aic, aid, aif, aig, aii, aik, ail, ain, air, ait, aiu, GuiService, worker2, folder2, aiz, aiA, aiB, aiC
    ah9 = function(wA)
        local adB = Toggles[wA]
        return adB ~= nil and adB.Value
    end
    local MovementGroup = Mo.Player:AddLeftGroupbox("Movement", "footprints")
    MovementGroup:AddToggle("SpeedEnabled", { Text = "WalkSpeed", Default = false })
    MovementGroup:AddSlider("SpeedValue", { Text = "WalkSpeed Value", Default = 16, Min = 16, Max = 120, Rounding = 0 })
    MovementGroup:AddToggle("FlyEnabled", { Text = "Fly", Default = false })
    MovementGroup:AddSlider("FlySpeed", { Text = "Fly Speed", Default = 60, Min = 10, Max = 250, Rounding = 0 })
    MovementGroup:AddToggle("NoclipEnabled", { Text = "Noclip", Default = false })
    MovementGroup:AddToggle("InfJump", { Text = "Infinite Jump", Default = false })
    local BodyGroup = Mo.Player:AddLeftGroupbox("Body", "heart-pulse")
    BodyGroup:AddToggle("InfStamina", { Text = "Infinite Stamina", Default = false })
    BodyGroup:AddToggle("AntiRagdoll", { Text = "Anti Ragdoll", Default = false })
    GuiService = game:GetService("GuiService")
    local TeleportsGroup = Mo.Player:AddLeftGroupbox("Teleports", "map-pin")
    ail = function(wJ, wK)
        local adH = wJ and wJ:IsA("Model")
        if adH then
            local adH_1 = wJ.PrimaryPart
            local adP_1 = if adH_1 then 1 else 0
            local adN_1 = 443 * adP_1 + 410 * (1 - adP_1)
            local adO_1 = 1493 * adP_1 + 2075 * (1 - adP_1)
            if not ((adN_1 * 581 + adO_1 * 2731 + adN_1 * adO_1) % 16777213 == 4996165) then
                adH_1 = wJ:FindFirstChildWhichIsA("BasePart", true)
            end
            wJ = adH_1
        end
        local adH_2 = not wJ
        local adP_2 = if adH_2 then 1 else 0
        local adN_2 = 1604 * adP_2 + 2406 * (1 - adP_2)
        local adO_2 = 1486 * adP_2 + 2323 * (1 - adP_2)
        if not ((adN_2 * 4043 + adO_2 * 3893 + adN_2 * adO_2) % 16777213 == 14653514) then
            adH_2 = not wJ:IsA("BasePart")
        end
        if adH_2 then
            return nil
        end
        local new = CFrame.new
        local Position = wJ.Position
        local adK = wJ.Size.Y / 2
        local adL = wK or 4
        return new(Position + Vector3.new(0, adK + adL, 0))
    end
    local function aip(wP)
        local adQ = LL()
        if not adQ or not wP then
            Library:Notify("Nothing to teleport to right now")
            return
        end
        fns.akp_11()
        Mr()
        adQ.CFrame = wP
        adQ.AssemblyLinearVelocity = Vector3.zero
        M8 = "teleported"
    end
    local aiE = {
        {
            "Basement",
            function()
                local adU = ail(MN("BasementZone"), 0) or Nr("1stfloor")
                return adU
            end
        },
        {
            "1st Floor",
            function()
                return Nr("1stfloor")
            end
        },
        {
            "2nd Floor",
            function()
                return Nr("2ndfloor")
            end
        },
        {
            "3rd Floor",
            function()
                return Nr("3rdfloor")
            end
        },
        {
            "Cafeteria",
            function()
                local adW = ail(Workspace:FindFirstChild("FoodWindow")) or Nr("3rdfloor")
                return adW
            end
        },
        {
            "Own Cell",
            function()
                return ail(Nd(), 3)
            end
        },
        {
            "Circle",
            function()
                return ail(LK())
            end
        },
        {
            "Obby Start",
            function()
                local xk = fns.akp_10()
                return ail(xk, 3)
            end
        },
        {
            "Two Doors",
            function()
                return ail(Workspace:FindFirstChild("TwoDoors"))
            end
        }
    }
    for i, v in ipairs(aiE) do
        local aiR = v
        TeleportsGroup:AddButton({
            Text = aiR[1],
            Func = function()
                aip(aiR[2]())
            end
        })
    end
    local TpWalkGroup = Mo.Player:AddRightGroupbox("TP Walk", "move")
    TpWalkGroup:AddToggle("TpWalkEnabled", { Text = "TP Walk", Default = false }):AddKeyPicker("TpWalkKey", { Default = "F", Mode = "Toggle", SyncToggleState = true, Text = "TP Walk" })
    TpWalkGroup:AddSlider("TpWalkStep", { Text = "Step Size", Default = 4, Min = 1, Max = 14, Rounding = 0 })
    local CombatGroup = Mo.Player:AddRightGroupbox("Combat", "crosshair")
    CombatGroup:AddToggle("AutoAim", { Text = "Auto Aim", Default = false }):AddKeyPicker("AutoAimKey", { Default = "Q", Mode = "Toggle", SyncToggleState = true, Text = "Auto Aim" })
    CombatGroup:AddToggle("AutoAimFire", { Text = "Auto Fire", Default = false })
    CombatGroup:AddDropdown("AimPart", { Values = { "Head", "HumanoidRootPart" }, Default = 1, Text = "Aim Part" })
    CombatGroup:AddSlider("AimRange", { Text = "Aim Range", Default = 250, Min = 40, Max = 600, Rounding = 0, Suffix = " studs" })
    CombatGroup:AddSlider("AimFov", { Text = "Aim FOV", Default = 140, Min = 20, Max = 600, Rounding = 0, Suffix = " px" })
    CombatGroup:AddSlider("AimSmooth", { Text = "Aim Smoothness", Default = 0, Min = 0, Max = 20, Rounding = 0 })
    ah7 = function()
        local adY = akp_35()
        if not adY then
            return nil
        end
        for i, child in ipairs(adY:GetChildren()) do
            if child:IsA("Tool") then
                local adY_1 = string.lower(child.Name)
                local adZ = string.find(adY_1, "pistol", 1, true) or string.find(adY_1, "gun", 1, true)
                if adZ then
                    return child
                end
            end
        end
        return nil
    end
    ahZ = function()
        local aed_1
        local ad6 = LL()
        local CurrentCamera = Workspace.CurrentCamera
        if not ad6 or not CurrentCamera then
            return nil
        end
        local ad8_1 = "Head"
        if Options.AimPart and Options.AimPart.Value then
            ad8_1 = Options.AimPart.Value
        end
        local aea = Options.AimRange and Options.AimRange.Value or 250
        local aeb = Options.AimFov and Options.AimFov.Value or 140
        local aeb_2
        local aeb_1 = GuiService:GetGuiInset()
        local aec = UserInputService:GetMouseLocation() - Vector2.new(aeb_1.X, aeb_1.Y)
        aed_1, aeb_2 = nil, aeb
        for i, player in ipairs(Lo:GetPlayers()) do
            local aea_3 = player ~= LocalPlayer2 and not player:GetAttribute("IsEliminated")
            if aea_3 then
                local Character = player.Character
                local aee = Character and Character:FindFirstChildWhichIsA("Humanoid")
                local aee_2
                local aef = Character
                local aef_1
                if aef then
                    aef = Character:FindFirstChild(ad8_1)
                end
                local aea_5 = aef
                if aea_5 and aee and aee.Health > 0 and (aea_5.Position - ad6.Position).Magnitude <= aea then
                    aef_1, aee_2 = CurrentCamera:WorldToViewportPoint(aea_5.Position)
                    if aee_2 then
                        local Magnitude = (Vector2.new(aef_1.X, aef_1.Y) - aec).Magnitude
                        if Magnitude < aeb_2 then
                            aed_1, aeb_2 = aea_5, Magnitude
                        end
                    end
                end
            end
        end
        return aed_1
    end
    ah8 = 0
    aiC = 0
    ah2 = nil
    ait = function(ye)
        if not ye or not ye.Parent then
            return false
        end
        local aer_1 = Lo:GetPlayerFromCharacter(ye.Parent)
        local aes = not aer_1 or aer_1:GetAttribute("IsEliminated")
        if aes then
            return false
        end
        local Humanoid = ye.Parent:FindFirstChildWhichIsA("Humanoid")
        return Humanoid ~= nil and Humanoid.Health > 0
    end
    local connection7 = UserInputService.InputChanged:Connect(function(yk)
        if Library.Unloaded or yk.UserInputType ~= Enum.UserInputType.MouseMovement then
            return
        end
        if Vector2.new(yk.Delta.X, yk.Delta.Y).Magnitude > 2 then
            ah2 = nil
            aiC = os.clock() + 0.15
        end
    end)
    local connection6 = RunService.RenderStepped:Connect(function()
        local aew = Library.Unloaded or not ah9("AutoAim") or not NE()
        if aew then
            ah2 = nil
            return
        end
        if not ah7() then
            ah2 = nil
            return
        end
        if os.clock() < aiC then
            return
        end
        if not ait(ah2) then
            ah2 = ahZ()
        end
        local CurrentCamera = Workspace.CurrentCamera
        local aex = ah2
        if not CurrentCamera or not aex then
            return
        end
        local aey_1 = CFrame.new(CurrentCamera.CFrame.Position, aex.Position)
        local aez_1 = Options.AimSmooth and Options.AimSmooth.Value or 0
        if aez_1 > 0 then
            CurrentCamera.CFrame = CurrentCamera.CFrame:Lerp(aey_1, math.clamp(1 - aez_1 / 21, 0.05, 1))
        else
            CurrentCamera.CFrame = aey_1
        end
    end)
    task.spawn(function()
        local aeJ = false
        repeat
            if not Library.Unloaded then
                task.wait(0.1)
                local aeF = ah9("AutoAim") and ah9("AutoAimFire") and NE()
                if aeF then
                    local aeE = ah7()
                    local aeF_1 = aeE
                    local aeG = ah2
                    if aeF_1 then
                        aeF_1 = aeG
                    end
                    if aeF_1 then
                        aeF_1 = ait(aeG)
                    end
                    if aeF_1 then
                        aeF_1 = os.clock() - ah8 > 0.35
                    end
                    if aeF_1 then
                        ah8 = os.clock()
                        pcall(function()
                            aeE:Activate()
                        end)
                    end
                end
            else
                aeJ = true
            end
        until aeJ
    end)
    local EspGroup = Mo.Player:AddRightGroupbox("ESP", "eye")
    EspGroup:AddToggle("EspEnabled", { Text = "Player ESP", Default = false })
    EspGroup:AddToggle("EspNames", { Text = "Show Names", Default = true })
    EspGroup:AddToggle("EspTeamColor", { Text = "Color By Distance", Default = false })
    EspGroup:AddToggle("EspTools", { Text = "Show Player Tools", Default = false })
    EspGroup:AddToggle("FoodEsp", { Text = "Food ESP", Default = false })
    EspGroup:AddToggle("BombEsp", { Text = "Bomb ESP", Default = false })
    aic = false
    ah4 = 0
    aii = { Cheeseburger = "burger", Coffee = "coffee" }
    ah_ = function(yV)
        local aeK = Options[yV]
        return aeK and aeK.Value or "Cheeseburger"
    end
    ah5 = function()
        local FoodWindow = Workspace:FindFirstChild("FoodWindow")
        if not FoodWindow then
            return nil
        end
        local Order = FoodWindow:FindFirstChild("Order")
        local aeP = Order and Order:IsA("BasePart")
        if aeP then
            return Order
        elseif FoodWindow:IsA("BasePart") then
            return FoodWindow
        else
            return FoodWindow:FindFirstChildWhichIsA("BasePart", true)
        end
    end
    aig = function(y4)
        local aeU = akp_35()
        local Backpack, aeU_5
        if aeU then
            local aeV_1 = aeU:FindFirstChild(y4)
            local aeU_1 = aeV_1 and aeV_1:IsA("Tool")
            if aeU_1 then
                return aeV_1
            end
            local Backpack2 = LocalPlayer2:FindFirstChildOfClass("Backpack")
            if Backpack then
                local aeV_2 = Backpack2:FindFirstChild(y4)
                local aeU_3 = aeV_2 and aeV_2:IsA("Tool")
                if aeU_5 then
                    return aeV_2
                end
                return nil
            end
            return nil
        end
        Backpack = LocalPlayer2:FindFirstChildOfClass("Backpack")
        if Backpack then
            local aeV_3 = Backpack:FindFirstChild(y4)
            aeU_5 = aeV_3 and aeV_3:IsA("Tool")
            if aeU_5 then
                return aeV_3
            end
            return nil
        end
        return nil
    end
    aiu = function(ze)
        if not ze then
            return 0
        elseif ze.Name == "Cheeseburger" then
            local ae__1 = tonumber(ze:GetAttribute("Bites")) or 0
            return ae__1
        elseif ze.Name == "Coffee" then
            local ae__2 = tonumber(ze:GetAttribute("Sips")) or 0
            return ae__2
        else
            return 0
        end
    end
    aik = function(zg)
        local ae4 = akp_29()
        if not ae4 or not zg then
            return false
        elseif aiu(zg) <= 0 then
            return false
        else
            if zg.Parent ~= akp_35() then
                pcall(function()
                    ae4:EquipTool(zg)
                end)
                task.wait(0.1)
                zg = aig(zg.Name)
            end
            local ae5_1 = not zg or zg.Parent ~= akp_35()
            if ae5_1 then
                return false
            end
            if zg.Name == "Cheeseburger" then
                pcall(function()
                    Ni:FireServer()
                end)
            else
                pcall(function()
                    zg:Activate()
                end)
            end
            return true
        end
    end
    ah3 = function()
        local ae8 = ah5()
        local ae9 = LL()
        if not ae8 or not ae9 then
            return false
        end
        fns.akp_11()
        Mr()
        local afa_1 = CFrame.new(ae8.Position + Vector3.new(0, 3, 0))
        ae9.Anchored = true
        ae9.CFrame = afa_1
        ae9.AssemblyLinearVelocity = Vector3.zero
        task.wait(0.12)
        ae9.CFrame = afa_1
        ae9.AssemblyLinearVelocity = Vector3.zero
        ae9.Anchored = false
        return (ae9.Position - ae8.Position).Magnitude <= 14
    end
    worker2 = function()
        local afd
        if not ah9("AutoBuyFood") then
            return
        end
        local afe = LocalPlayer2:GetAttribute("IsEliminated") or not NE()
        if afe then
            return
        end
        if Workspace:GetAttribute("LunchActive") ~= true then
            return
        end
        if aic then
            return
        end
        local afe_1 = ah_("BuyFoodType")
        afd = aii[afe_1]
        if not afd then
            return
        end
        local aff = aig(afe_1)
        local afg = aff and aiu(aff) > 0
        if afg then
            aic = true
            return
        end
        ah4 = ah4 + 1
        local aff_1 = ah4
        if not ah3() then
            return
        end
        local afg_1 = aff_1 ~= ah4 or Library.Unloaded or not ah9("AutoBuyFood")
        if afg_1 then
            return
        end
        if Workspace:GetAttribute("LunchActive") ~= true then
            return
        end
        local afg_2 = ah5()
        local afh = afg_2 and afg_2:FindFirstChild("OrderPrompt")
        local afg_3 = afh
        if afh then
            afh = fireproximityprompt
        end
        if afh then
            pcall(fireproximityprompt, afg_3)
            task.wait(0.15)
        end
        if aff_1 ~= ah4 then
            return
        end
        pcall(function()
            Nm:FireServer(afd)
        end)
        M8 = "ordering " .. string.lower(afe_1)
        local afr = 1
        while afr <= 10 do
            task.wait(0.2)
            if aff_1 ~= ah4 or Library.Unloaded then
                return
            end
            local afg_5 = aig(afe_1) and aiu(aig(afe_1)) > 0
            if afg_5 then
                aic = true
                M8 = "bought " .. string.lower(afe_1)
                return
            end
            if Workspace:GetAttribute("LunchActive") ~= true then
                return
            end
            afr += 1
        end
    end
    table.insert(Nb, Workspace:GetAttributeChangedSignal("LunchActive"):Connect(function()
        local afx = if Workspace:GetAttribute("LunchActive") == true then 1 else 0
        if afx == 1 then
            aic = false
            ah4 = ah4 + 1
            task.spawn(worker2)
        else
            aic = false
        end
    end))
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.5)
            local afy = ah9("AutoBuyFood") and Workspace:GetAttribute("LunchActive") == true and not aic and not LocalPlayer2:GetAttribute("IsEliminated") and NE()
            if afy then
                worker2()
            elseif Workspace:GetAttribute("LunchActive") ~= true then
                aic = false
            end
        end
    end)
    task.spawn(function()
        local afB_3, afB_5
        while not Library.Unloaded do
            task.wait(0.35)
            local afA = not ah9("AutoUseFood") or LocalPlayer2:GetAttribute("IsEliminated") or not NE()
            local afA_4
            if afA then
            elseif ah9("UseFoodOnLowHealth") then
                local afA_1 = akp_29()
                local afC = Options.UseFoodHealthPercent and Options.UseFoodHealthPercent.Value or 50
                if not afA_1 or afA_1.MaxHealth <= 0 then
                    continue
                elseif afA_1.Health / afA_1.MaxHealth * 100 > afC then
                    continue
                else
                    local afA_2 = ah_("UseFoodType")
                    if afA_4 == "Both" then
                        afB_3 = { "Cheeseburger", "Coffee" }
                    else
                        afB_3 = { afA_2 }
                    end
                    for i, v in ipairs(afB_3) do
                        local afA_3 = aig(v)
                        local afB_4 = afA_3 and aiu(afA_3) > 0
                        if afB_4 then
                            aik(afA_3)
                            break
                        end
                    end
                    continue
                end
            else
                afA_4 = ah_("UseFoodType")
                if afA_4 == "Both" then
                    afB_5 = { "Cheeseburger", "Coffee" }
                else
                    afB_5 = { afA_4 }
                end
                for i, v in ipairs(afB_5) do
                    local afA_5 = aig(v)
                    local afB_6 = afA_5 and aiu(afA_5) > 0
                    if afB_6 then
                        aik(afA_5)
                        break
                    end
                end
            end
        end
    end)
    aiy = nil
    ais = nil
    aio = 0
    ah0 = nil
    aie = function(AH, AI)
        local afN_1
        local afM_1
        local afL_1
        afL_1, afN_1, afM_1 = pcall(debug.getupvalue, AH, AI)
        if not afL_1 then
            return nil
        end
        local afL_2 = afM_1 ~= nil
        local afO = type(afN_1) == "string" and afL_2
        if afO then
            return afM_1
        end
        return afN_1
    end
    aih = false
    aib = function()
        local afU_1
        local afT = type(filtergc) ~= "function" or type(debug) ~= "table" or type(debug.getupvalue) ~= "function"
        local afT_1
        if afT then
            return {}
        end
        afT_1, afU_1 = pcall(filtergc, "function", { Constants = { "SprintCommandActive" } }, false)
        local afV = not afT_1 or type(afU_1) ~= "table"
        if afV then
            return {}
        end
        return afU_1
    end
    aij = function(AT)
        if typeof(aie(AT, 1)) ~= "Instance" then
            return false
        end
        local afX = aie(AT, 2)
        local afY = type(afX) ~= "number" or afX < 0 or afX > 100
        if afY then
            return false
        end
        local afX_1 = type(aie(AT, 3)) == "boolean" and type(aie(AT, 4)) == "boolean" and type(aie(AT, 5)) == "function"
        return afX_1
    end
    aim = function(AZ)
        local af5
        local af4 = 1
        while true do
            if not (af4 <= 10) then
                return nil
            end
            af5 = af4
            local af_ = aie(AZ, af5)
            local af0 = type(af_) == "number" and af_ >= 0 and af_ <= 100
            if af0 then
                pcall(debug.setupvalue, AZ, af5, 25)
                task.wait(0.25)
                local af0_1 = aie(AZ, af5)
                pcall(debug.setupvalue, AZ, af5, af_)
                local af__1 = type(af0_1) == "number" and af0_1 > 25 and af0_1 <= 100
                if af__1 then
                    break
                end
                af4 += 1
                continue
            end
            af4 += 1
        end
        return af5
    end
    worker = function()
        for i, v in ipairs(aib()) do
            if aij(v) then
                ah0, aiy, ais = v, 2, 3
                aio = os.clock()
                return true
            end
        end
        for i, v in ipairs(aib()) do
            local af7 = aim(v)
            if af7 then
                ah0 = v
                aiy = af7
                local af8 = type(aie(v, af7 + 1)) == "boolean" and af7 + 1
                ais = af8 or nil
                aio = os.clock()
                return true
            end
        end
        return false
    end
    aiA = function()
        if not ah0 then
            local agp = aih
            local agt = if agp then 1 else 0
            local agr = 711 * agt + 480 * (1 - agt)
            local ags = 1113 * agt + 548 * (1 - agt)
            if not ((agr * 1123 + ags * 647 + agr * ags) % 16777213 == 2309907) then
                agp = os.clock() - aio < 3
            end
            if agp then
                return
            end
            aih = true
            task.spawn(function()
                aio = os.clock()
                pcall(worker)
                aih = false
            end)
            return
        end
        pcall(debug.setupvalue, ah0, aiy, 100)
        if ais then
            pcall(debug.setupvalue, ah0, ais, false)
        end
        if type(aie(ah0, aiy)) ~= "number" then
            ah0 = nil
            aiy = nil
            ais = nil
            aio = os.clock()
        end
    end
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.2)
            local agu = akp_29()
            if agu then
                if ah9("SpeedEnabled") then
                    local agw_1 = Options.SpeedValue and Options.SpeedValue.Value or 16
                    if agu.WalkSpeed ~= agw_1 and WalkSpeed == nil then
                        agu.WalkSpeed = agw_1
                    end
                end
                if ah9("AntiRagdoll") then
                    if agu.PlatformStand then
                        agu.PlatformStand = false
                    end
                    local agv_3 = agu:GetState()
                    if agv_3 == Enum.HumanoidStateType.FallingDown or agv_3 == Enum.HumanoidStateType.Ragdoll or agv_3 == Enum.HumanoidStateType.Physics then
                        agu:ChangeState(Enum.HumanoidStateType.GettingUp)
                    end
                end
            end
        end
    end)
    local connection5 = RunService.Heartbeat:Connect(function()
        if Library.Unloaded then
            return
        end
        if ah9("InfStamina") then
            aiA()
        end
    end)
    task.spawn(worker)
    local connection4 = RunService.Stepped:Connect(function()
        local agA = Library.Unloaded or not ah9("NoclipEnabled")
        if agA then
            return
        end
        local agA_1 = akp_35()
        if not agA_1 then
            return
        end
        for i, descendant in ipairs(agA_1:GetDescendants()) do
            local agA_2 = descendant:IsA("BasePart") and descendant.CanCollide
            if agA_2 then
                descendant.CanCollide = false
            end
        end
    end)
    local connection3 = UserInputService.JumpRequest:Connect(function()
        local agI = Library.Unloaded or not ah9("InfJump")
        if agI then
            return
        end
        local agI_1 = akp_29()
        if agI_1 then
            agI_1:ChangeState(Enum.HumanoidStateType.Jumping)
        end
    end)
    bodyVelocity, bodyGyro = nil, nil
    aiB = function()
        if bodyVelocity then
            bodyVelocity:Destroy()
            bodyVelocity = nil
        end
        if bodyGyro then
            bodyGyro:Destroy()
            bodyGyro = nil
        end
    end
    aif = function()
        local agO = LL()
        if not agO or bodyVelocity then
            return
        end
        bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.MaxForce = Vector3.new(1, 1, 1) * 9000000000
        bodyVelocity.Velocity = Vector3.zero
        bodyVelocity.Parent = agO
        bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(1, 1, 1) * 9000000000
        bodyGyro.P = 90000
        bodyGyro.CFrame = agO.CFrame
        bodyGyro.Parent = agO
    end
    local connection2 = RunService.RenderStepped:Connect(function()
        if Library.Unloaded then
            return
        end
        local agR = not ah9("FlyEnabled") or not NE()
        if agR then
            aiB()
            return
        end
        aif()
        if not bodyVelocity then
            return
        end
        local CurrentCamera = Workspace.CurrentCamera
        if not CurrentCamera then
            return
        end
        local agT = Options.FlySpeed and Options.FlySpeed.Value or 60
        local agT_1 = Vector3.zero
        if UserInputService:IsKeyDown(Enum.KeyCode.W) then
            agT_1 += CurrentCamera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.S) then
            agT_1 -= CurrentCamera.CFrame.LookVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.A) then
            agT_1 -= CurrentCamera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.D) then
            agT_1 += CurrentCamera.CFrame.RightVector
        end
        if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
            agT_1 += Vector3.new(0, 1, 0)
        end
        local agY = if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then 1 else 0
        if agY == 1 then
            agT_1 -= Vector3.new(0, 1, 0)
        end
        local agS_2 = agT_1.Magnitude > 0 and agT_1.Unit * agT or Vector3.zero
        bodyVelocity.Velocity = agS_2
        bodyGyro.CFrame = CurrentCamera.CFrame
    end)
    local connection = RunService.Heartbeat:Connect(function()
        local ag__1
        local agZ = Library.Unloaded or not ah9("TpWalkEnabled") or ah9("FlyEnabled")
        local agZ_1
        if agZ then
            return
        end
        agZ_1, ag__1 = akp_29(), LL()
        if not agZ_1 or not ag__1 then
            return
        end
        local MoveDirection = agZ_1.MoveDirection
        if MoveDirection.Magnitude < 0.1 then
            return
        end
        local ag1_1 = Options.TpWalkStep and Options.TpWalkStep.Value or 4
        ag__1.CFrame = ag__1.CFrame + MoveDirection.Unit * ag1_1
    end)
    air = {}
    folder2 = nil
    ain = function()
        for k, v in pairs(air) do
            local ahc = v
            pcall(function()
                ahc:Destroy()
            end)
        end
        air = {}
        if folder2 then
            folder2:Destroy()
            folder2 = nil
        end
    end
    aiq = function()
        if folder2 and folder2.Parent then
            return folder2
        end
        folder2 = Instance.new("Folder")
        folder2.Name = "OuroborosEsp"
        local ahg_1 = pcall(function()
            local ahd = gethui and gethui()
            local ahe = ahd or game:GetService("CoreGui")
            folder2.Parent = ahe
        end)
        if not ahg_1 then
            folder2.Parent = LocalPlayer2:WaitForChild("PlayerGui")
        end
        return folder2
    end
    aid = function(CO, CP)
        local ahi = {}
        for i, child in ipairs(CP:GetChildren()) do
            if child:IsA("Tool") then
                ahi[#ahi + 1] = "*" .. child.Name
            end
        end
        local Backpack = CO:FindFirstChildOfClass("Backpack")
        if Backpack then
            for i, child in ipairs(Backpack:GetChildren()) do
                if child:IsA("Tool") then
                    ahi[#ahi + 1] = child.Name
                end
            end
        end
        return table.concat(ahi, ", ")
    end
    aiz = function(CX)
        local Character = CX.Character
        local ahy = Character and Character:FindFirstChild("Head")
        if not Character or not ahy then
            return nil
        end
        local folder = Instance.new("Folder")
        folder.Name = CX.Name
        folder.Parent = aiq()
        local highlight = Instance.new("Highlight")
        highlight.Name = "Fill"
        highlight.FillTransparency = 0.6
        highlight.OutlineTransparency = 0
        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        highlight.Adornee = Character
        highlight.Parent = folder
        local billboardGui = Instance.new("BillboardGui")
        billboardGui.Name = "Tag"
        billboardGui.Adornee = ahy
        billboardGui.Size = UDim2.fromOffset(200, 20)
        billboardGui.StudsOffset = Vector3.new(0, 2.4, 0)
        billboardGui.AlwaysOnTop = true
        billboardGui.Parent = folder
        local textLabel = Instance.new("TextLabel")
        textLabel.Name = "Name"
        textLabel.Size = UDim2.fromScale(1, 1)
        textLabel.BackgroundTransparency = 1
        textLabel.Font = Enum.Font.RobotoMono
        textLabel.TextSize = 14
        textLabel.TextStrokeTransparency = 0.4
        textLabel.TextColor3 = Color3.new(1, 1, 1)
        textLabel.Text = CX.Name
        textLabel.Parent = billboardGui
        return folder
    end
    task.spawn(function()
        while not Library.Unloaded do
            task.wait(0.3)
            if not ah9("EspEnabled") then
                if next(air) then
                    ain()
                end
            else
                local ahG = LL()
                for i, player in ipairs(Lo:GetPlayers()) do
                    if player ~= LocalPlayer2 then
                        local ahF = air[player]
                        local Character = player.Character
                        local ahI = Character and Character:FindFirstChildWhichIsA("Humanoid")
                        local ahJ = ahI
                        if ahI then
                            ahI = ahJ.Health > 0
                        end
                        local ahJ_1 = ahF
                        local ahK = ahI
                        if ahJ_1 then
                            ahJ_1 = not ahF.Parent or not ahK
                        end
                        if ahJ_1 then
                            pcall(function()
                                ahF:Destroy()
                            end)
                            air[player] = nil
                            ahF = nil
                        end
                        if ahK and not ahF then
                            air[player] = aiz(player)
                            ahF = air[player]
                        end
                        if ahF and ahG and Character then
                            local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
                            local ahI_5 = HumanoidRootPart and (HumanoidRootPart.Position - ahG.Position).Magnitude or 0
                            local ahI_6 = Color3.fromRGB(120, 190, 255)
                            if ah9("EspTeamColor") then
                                ahI_6 = Color3.fromRGB(255, 90, 90):Lerp(Color3.fromRGB(120, 255, 140), math.clamp(ahI_5 / 150, 0, 1))
                            end
                            local Fill = ahF:FindFirstChild("Fill")
                            if Fill then
                                Fill.FillColor = ahI_6
                                Fill.OutlineColor = ahI_6
                            end
                            local Tag = ahF:FindFirstChild("Tag")
                            if Tag then
                                Tag.Enabled = ah9("EspNames")
                                local Name = Tag:FindFirstChild("Name")
                                if Name then
                                    Name.TextColor3 = ahI_6
                                    local ahI_7 = string.format("%s  [%dm]", player.Name, math.floor(ahI_5))
                                    if ah9("EspTools") then
                                        local ahJ_6 = aid(player, Character)
                                        if ahJ_6 ~= "" then
                                            ahI_7 = ahI_7 .. "  " .. ahJ_6
                                        end
                                    end
                                    Name.Text = ahI_7
                                end
                            end
                        end
                    end
                end
                for k, v in pairs(air) do
                    local ahY = v
                    if not k.Parent then
                        pcall(function()
                            ahY:Destroy()
                        end)
                        air[k] = nil
                    end
                end
            end
        end
    end)
    MG.stopFly = aiB
    MG.clearEsp = ain
    MG.defaultWalkSpeed = 16
    table.insert(Nb, connection6)
    table.insert(Nb, connection7)
    table.insert(Nb, connection4)
    table.insert(Nb, connection3)
    table.insert(Nb, connection5)
    table.insert(Nb, connection2)
    table.insert(Nb, connection)
end
akp_77()
local MenuGroup = Mo.Settings:AddLeftGroupbox("Menu", "menu")
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
Library.ToggleKeybind = Options.MenuKeybind
akp_41 = tick()
M3 = tick()
pcall(function()
    for i, v in ipairs(getconnections(LocalPlayer2.Idled)) do
        local aiY = v
        pcall(function()
            aiY:Disable()
        end)
    end
end)
MF = fns.fn1856
connection8 = UserInputService.InputBegan:Connect(fns.onInputBegan)
connection9 = UserInputService.InputChanged:Connect(fns.onInputChanged)
MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
task.spawn(fns.antiAfkLoop)
MenuGroup:AddButton("Unload", fns.onUnload)
Library:OnUnload(function()
    fns.akp_11()
    Mr()
    if MG.stopFly then
        MG.stopFly()
    end
    if MG.clearEsp then
        MG.clearEsp()
    end
    local ai7 = akp_29()
    if ai7 then
        local ai8 = MG.defaultWalkSpeed or 16
        ai7.WalkSpeed = ai8
    end
    if L_ then
        akp_44()
    end
    local ai7_1 = LL()
    if ai7_1 then
        ai7_1.Anchored = false
    end
    MQ()
    akp_63()
    if connection then
        connection:Disconnect()
    end
    connection8:Disconnect()
    connection9:Disconnect()
    for i, v in ipairs(Nb) do
        local aji = v
        pcall(function()
            aji:Disconnect()
        end)
    end
end)
ThemeManager:SetLibrary(Library)
ThemeManager:SetFolder("OuroborosHub")
ThemeManager:SaveDefault("Monochrome")
ThemeManager:ApplyToTab(Mo.Settings)
ThemeManager:LoadDefault()
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
SaveManager:SetFolder("OuroborosHub/death-order");
(function(En)
    local HttpService = game:GetService("HttpService")
    local function Ep(Eq, Er)
        local ajk_1 = (Eq == "Toggle" and Toggles or Options)[Er]
        local ajj_2 = type(ajk_1) == "table" and ajk_1.Type == Eq
        return ajj_2 and ajk_1 or nil
    end
    local function Ez(EA, EB)
        local Type = EB.Type
        if Type == "Toggle" then
            return { idx = EA, type = "Toggle", value = EB.Value == true }
        elseif Type == "Slider" then
            return { idx = EA, type = "Slider", value = tostring(EB.Value) }
        elseif Type == "Dropdown" then
            return { idx = EA, type = "Dropdown", multi = EB.Multi == true, value = EB.Value }
        elseif Type == "Input" then
            local ajo = EB.Value or ""
            return { idx = EA, type = "Input", text = tostring(ajo) }
        elseif Type == "ColorPicker" then
            return { idx = EA, type = "ColorPicker", value = EB.Value:ToHex(), transparency = EB.Transparency }
        elseif Type == "KeyPicker" then
            return {
                idx = EA,
                type = "KeyPicker",
                mode = EB.Mode,
                key = EB.Value,
                modifiers = EB.Modifiers,
                toggled = EB.Toggled
            }
        else
            return nil
        end
    end
    local function ED()
        local ajx = {}
        for i, v in ipairs({ Toggles, Options }) do
            for k, v in pairs(v) do
                local ajy = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                if ajy then
                    local ajy_1 = Ez(k, v)
                    if ajy_1 then
                        ajx[#ajx + 1] = ajy_1
                    end
                end
            end
        end
        table.sort(ajx, function(EN, EO)
            if EN.type ~= EO.type then
                return EN.type < EO.type
            end
            return EN.idx < EO.idx
        end)
        return { objects = ajx }
    end
    local function EP(EQ)
        local ajO
        ajO = nil
        local ajP = type(EQ) ~= "table"
        local ajT = if ajP then 1 else 0
        local ajR = 1812 * ajT + 2847 * (1 - ajT)
        local ajS = 1202 * ajT + 285 * (1 - ajT)
        if not ((ajR * 4021 + ajS * 1344 + ajR * ajS) % 16777213 == 11079564) then
            ajP = type(EQ.idx) ~= "string"
        end
        local ajT_1 = if ajP then 1 else 0
        local ajR_1 = 3220 * ajT_1 + 3721 * (1 - ajT_1)
        local ajS_1 = 2595 * ajT_1 + 657 * (1 - ajT_1)
        if not ((ajR_1 * 3058 + ajS_1 * 3034 + ajR_1 * ajS_1) % 16777213 == 9298677) then
            ajP = type(EQ.type) ~= "string"
        end
        if not ajP then
            ajP = SaveManager.Ignore[EQ.idx]
        end
        if ajP then
            return false
        end
        ajO = Ep(EQ.type, EQ.idx)
        if not ajO then
            return false
        end
        return (pcall(function()
            if EQ.type == "Input" then
                if type(EQ.text) ~= "string" then
                    return
                end
                ajO:SetValue(EQ.text)
            elseif EQ.type == "ColorPicker" then
                ajO:SetValueRGB(Color3.fromHex(EQ.value), EQ.transparency)
            elseif EQ.type == "KeyPicker" then
                ajO:SetValue({ EQ.key, EQ.mode, EQ.modifiers })
                if EQ.mode == "Toggle" and EQ.toggled ~= nil then
                    ajO.Toggled = EQ.toggled
                    ajO:Update()
                end
            else
                ajO:SetValue(EQ.value)
            end
        end))
    end
    En:AddDivider()
    En:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
    En:AddButton("Export Config to Clipboard", function()
        local ajV_1
        local ajU_1
        ajU_1, ajV_1 = pcall(HttpService.JSONEncode, HttpService, ED())
        if not ajU_1 then
            Library:Notify("Failed to encode the config")
            return
        end
        local ajU_2 = setclipboard or toclipboard
        local ajU_3 = type(ajU_2) ~= "function" or not pcall(ajU_2, ajV_1)
        if ajU_3 then
            Library:Notify("Your executor does not support copying to the clipboard")
            return
        end
        Library:Notify("Config copied to clipboard", 6)
    end)
    En:AddButton("Import Config from Clipboard Text", function()
        local aj__1
        local ajY = Options.SaveManager_ImportSource.Value or ""
        local ajY_1
        local ajZ = tostring(ajY):match("^%s*(.-)%s*$")
        if ajZ == "" then
            Library:Notify("Paste an exported config into the box first")
            return
        end
        ajY_1, aj__1 = pcall(HttpService.JSONDecode, HttpService, ajZ)
        local ajZ_1 = not ajY_1 or type(aj__1) ~= "table" or type(aj__1.objects) ~= "table"
        if ajZ_1 then
            Library:Notify("That is not a valid exported config")
            return
        end
        local ajY_2 = 0
        for i, v in ipairs(aj__1.objects) do
            if EP(v) then
                ajY_2 += 1
            end
        end
        if ajY_2 == 0 then
            Library:Notify("No settings in that config matched this script")
            return
        end
        Options.SaveManager_ImportSource:SetValue("")
        local aj__2 = ajY_2 == 1 and "" or "s"
        Library:Notify(("Imported %d setting%s"):format(ajY_2, aj__2), 6)
    end)
end)(SaveManager:BuildConfigSection(Mo.Settings))
SaveManager:LoadAutoloadConfig()
