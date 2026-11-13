local fns = {}
local adC_8, adC_9, adC_10, adC_14, adC_17, adC_21, adC_26, adC_31, adC_34, adC_39, adC_42, adC_47, adC_50, adC_55, adC_58, adC_59, Plots, connection2, adC_65, adC_67, adC_68, adC_69, Label9, adC_72, adC_74, adC_78, adC_81, adC_97, adC_104, adC_112
adC_59 = nil
Plots = nil
fns.adC_3 = nil
fns.adC_5 = nil
connection2 = nil
fns.adC_6 = nil
adC_65 = nil
fns.adC_1 = nil
adC_67 = nil
adC_69 = nil
adC_10 = nil
adC_9 = nil
adC_8 = nil
adC_72 = nil
Label9 = nil
adC_14 = nil
local IW
local HW
local PottedPlants
local Jk
local H1
local Jq
local HJ
local ACTIVE_WEATHERS
local Hq
local HP
local Iw
local Label3
local Hw
local Id
local Hd
local HV
local Jj
local HC
local Ij
local connection4
local Label4
local II
local Jp
local Ip
local Hp
local H6
local IO
local connection5
local Iv
local Jc
local HU
local IB
local Ji
local Ii
local I_
local H_
local Label10
local Hi
local HH
local Io
local I5
local Ho
local IN
local HN
local Iu
local Jb
local Ib
local IT
local Hb
local HT
local IA
local HA
local connection6
local Jh
local IZ
local HZ
local IG
local Hh
local In
local I4
local Toggles
local IM
local connection
local It
local Ja
local HM
local Ha
local Iz
local Jg
local Hz
local connection3
local Hg
local HY
local IF
local IY
local HF
local Im
local Hm
local H3
local IL
local I3
local Is
local Js
local Hs
local H9
local I9
local Iy
local Jf
local Hy
local If
local Hf
local IX
local HX
function fns.worker10()
    while not Ha.Unloaded do
        if Ib("AutoEquipBest") then
            pcall(function()
                HP.EquipBestPlants:FireServer()
            end)
        end
        task.wait(Jb("EquipDelay", 5))
    end
end
function fns.fn33(e2)
    local PD_1
    local PC_1
    local PB_1
    local PA_1
    local Pz_1
    for k, v in HT() do
        if v:GetAttribute("isPlant") then
            PC_1, Pz_1, PB_1, PA_1, PD_1 = Iw(v)
            local PE = PC_1 and IX.BountyData.matches(e2, PC_1, Pz_1, PB_1, PA_1)
            if PE then
                return v, PD_1
            end
        end
    end
end
function fns.fn35(jI, jJ, jK, jL, jM)
    local Td_1
    if not jK then
        return
    end
    jJ[jK] = true
    local Tb = jI[jK]
    local Tc = not Tb or not Tb.gui or not Tb.gui.Parent
    local Tc_2
    if Tc then
        if Tb and Tb.gui then
            Tb.gui:Destroy()
        end
        Tc_2, Td_1 = HZ(jK, jL, jM)
        local Tb_1 = { gui = Tc_2, label = Td_1 }
        jI[jK] = Tb_1
    else
        Tb.label.Text = jL
    end
end
function fns.fn41(it)
    local ServerConfiguration = it:FindFirstChild("ServerConfiguration")
    local Sg = ServerConfiguration and ServerConfiguration:FindFirstChild("Mutations")
    local Sf_1 = Sg
    if Sg then
        Sg = Sf_1.Value
    end
    local Sf_2 = Sg or ""
    return fns.adC_6(Sf_2)
end
function fns.fn45(i5)
    if i5 == "Plot" then
        local SQ_1 = Is()
        local SR_1 = SQ_1 and SQ_1:FindFirstChild("TPPart")
        return SR_1
    end
    local SQ_2 = {
        ["Main Island"] = function()
            return IT.MainIsland:FindFirstChild("TPPart")
        end,
        ["Egg Shop"] = function()
            return IT.EggShop:FindFirstChild("TPPart")
        end,
        ["Gear Shop"] = function()
            return IT.GearShop:FindFirstChild("TPPart")
        end,
        ["Sell Shop"] = function()
            return IT.SellShop:FindFirstChild("TPPart")
        end,
        ["Tree Shop"] = function()
            return IT.TreeShop:FindFirstChild("Part")
        end,
        ["Boss Summoner"] = function()
            return IT.BossSummoner:FindFirstChild("Part")
        end,
        ["Fuse Machine"] = function()
            return IT.FuseMachine:FindFirstChild("BillboardPart")
        end,
        ["Traveling Merchant"] = function()
            return IT.TravelingMerchantShop:FindFirstChild("TPPart")
        end
    }
    local SR_2 = SQ_2[i5]
    local SQ_3 = SR_2 and SR_2()
    return SQ_3
end
function fns.fn70()
    local Character = H3.Character
    local LF = Character and Character:FindFirstChild("HumanoidRootPart")
    return LF
end
function fns.onInputBegan()
    II = tick()
end
function fns.worker2()
    while not Ha.Unloaded do
        if Ib("AutoFavorite") then
            local ZK = Ho("FavoriteTypes")
            local ZL = Ho("FavoriteRarities")
            local ZM = Ib("FavoriteAnyRarity")
            local ZN = Ib("FavoriteRequireMutation")
            local ZO = Ho("FavoriteMutations")
            local ZP = Jb("FavoriteMinSize", 0)
            local ZQ = not Jc(ZK)
            local ZR = ZQ or adC_10(ZK, "Capybaras")
            local ZR_7
            local ZS = ZQ
            if not ZS then
                ZS = adC_10(ZK, "Plants")
            end
            local ZK_1 = ZS
            for k, v in HT() do
                local ZR_1 = not Ib("AutoFavorite") or Ha.Unloaded
                if ZR_1 then
                    break
                elseif not (v:GetAttribute("Favorited") == true) then
                    local ZR_2 = v:GetAttribute("isTower") == true or v:GetAttribute("isEgg") == true
                    local ZR_3 = v:GetAttribute("isPlant") == true
                    if not not (ZR_2 and ZR or ZR_3 and ZK_1) then
                        if not ZM then
                            if not not Jc(ZL) then
                                local ZR_5 = fns.adC_3(v)
                                local ZS_3 = not ZR_5 or not adC_10(ZL, ZR_5)
                                if not ZS_3 then
                                    if ZN then
                                        for k, v in fns.adC_1(v) do
                                            if adC_10(ZO, v) then
                                                break
                                            end
                                        end
                                        if not not ZR_7 then
                                            if not (IY(v) < ZP) then
                                                if HX(v, true) then
                                                    task.wait(0.2)
                                                end
                                            end
                                        end
                                    elseif not (IY(v) < ZP) then
                                        if HX(v, true) then
                                            task.wait(0.2)
                                        end
                                    end
                                end
                            end
                        elseif ZN then
                            ZR_7 = false
                            for k, v in fns.adC_1(v) do
                                if adC_10(ZO, v) then
                                    ZR_7 = true
                                    break
                                end
                            end
                            if not not ZR_7 then
                                if not (IY(v) < ZP) then
                                    if HX(v, true) then
                                        task.wait(0.2)
                                    end
                                end
                            end
                        elseif not (IY(v) < ZP) then
                            if HX(v, true) then
                                task.wait(0.2)
                            end
                        end
                    end
                end
            end
        end
        task.wait(Jb("FavoriteDelay", 10))
    end
end
function fns.fn129(ae)
    local Lb = Toggles[ae]
    return Lb ~= nil and Lb.Value == true
end
function fns.fn132(h9)
    local Garden = h9:FindFirstChild("Garden")
    local R0 = Garden and Garden:FindFirstChild("Pots")
    if not R0 then
        return {}
    end
    local R0_1 = {}
    for i, child in R0:GetChildren() do
        local R__2 = tonumber(child.Name:match("^Pot(%d+)$"))
        if R__2 then
            table.insert(R0_1, {
                model = child,
                number = R__2,
                occupied = child:GetAttribute("Occupied") == true,
                plantID = child:GetAttribute("plantID")
            })
        end
    end
    table.sort(R0_1, function(ii, ij)
        return ii.number < ij.number
    end)
    return R0_1
end
function fns.fn161()
    local PQ = {}
    if HA.Easy and not HA.EasyClaimed then
        table.insert(PQ, HA.Easy)
    end
    if HA.Hard and not HA.HardClaimed then
        table.insert(PQ, HA.Hard)
    end
    return PQ
end
function fns.fn167(d6)
    local OW_1
    local OV_1
    local OU_1
    local attr = d6:GetAttribute("plantID")
    if not attr then
        return nil
    end
    local OS = It(attr)
    local OT = IX.PlantData.getData(OS)
    if not OT then
        return nil
    end
    OU_1, OW_1, OV_1 = IX.ItemNameParser(d6.Name)
    return OS, OT.Rarity.Value, OV_1, fns.adC_6(OW_1), attr
end
function fns.fn179(il)
    local ServerConfiguration = il:FindFirstChild("ServerConfiguration")
    if not ServerConfiguration then
        return 0
    end
    local SizeScaling = ServerConfiguration:FindFirstChild("SizeScaling")
    local R8_1 = It(il.Name)
    local R9_1 = SizeScaling and SizeScaling.Value or 1
    return Ji(R8_1, R9_1)
end
function fns.fn201(ap, aq)
    local Lh = Ja[ap]
    local Li = Lh and Lh.Value
    local Li_1 = type(Li) == "string" and Li
    return Li_1 or aq
end
function fns.fn240(f4, f5)
    local Position2 = f4:GetPivot().Position
    local Qp = Vector3.new(Position2.X, 0, Position2.Z)
    local Qq = 1
    for k, v in f5 do
        local Qr_1 = v.model ~= f4 and v.model.Parent and adC_8(v.model)
        if Qr_1 then
            local Position = v.model:GetPivot().Position
            local Qs = Vector3.new(Position.X, 0, Position.Z)
            if (Qs - Vector3.new(Position2.X, 0, Position2.Z)).Magnitude <= adC_72 then
                Qp += Qs
                Qq += 1
            end
        end
    end
    local Qr_3 = Qp / Qq
    return Vector3.new(Qr_3.X, Position2.Y, Qr_3.Z)
end
function fns.fn257(iA, iB)
    for k, v in Iv(iA) do
        if v == iB then
            return true
        end
    end
    return false
end
function fns.fn263(g2, g3)
    local Q_ = g3 or nil
    Jh[g2] = Q_
end
function fns.onRenderStepped()
    if Ha.Unloaded then
        return
    end
    if Ib("WalkSpeedEnabled") then
        Id(Hw())
    end
    if Ib("JumpPowerEnabled") then
        Jg(Hw())
    end
    if Ib("Noclip") then
        local Character = H3.Character
        if Character then
            for i, descendant in Character:GetDescendants() do
                local acz_1 = descendant:IsA("BasePart") and descendant.CanCollide
                if acz_1 then
                    descendant.CanCollide = false
                    Hd[descendant] = true
                end
            end
        end
    elseif next(Hd) then
        for k in Hd do
            if k.Parent then
                k.CanCollide = true
            end
        end
        table.clear(Hd)
    end
end
function fns.fn280(aw)
    local Ln = Ja[aw]
    local Lo = Ln and Ln.Value
    if type(Lo) ~= "table" then
        return {}
    end
    local Lo_1 = {}
    for k, v in pairs(Lo) do
        if type(v) == "boolean" then
            if v then
                Lo_1[k] = true
            end
        elseif type(v) == "string" then
            Lo_1[v] = true
        else
            local Ln_2 = v ~= nil
            local Lp = type(k) == "number" and Ln_2
            if Lp then
                Lo_1[tostring(v)] = true
            end
        end
    end
    return Lo_1
end
function fns.fn317(bM)
    local L_ = {}
    for i, child in bM:GetChildren() do
        local Rarity = child:FindFirstChild("Rarity")
        if Rarity then
            L_[Rarity.Value] = true
        end
    end
    local L0_2 = {}
    for k, v in IA do
        if L_[v] then
            table.insert(L0_2, v)
        end
    end
    return L0_2
end
function fns.fn389()
    local Mt = {}
    for i, child in H3.Backpack:GetChildren() do
        if child:IsA("Tool") then
            table.insert(Mt, child)
        end
    end
    local Character = H3.Character
    if Character then
        for i, child in Character:GetChildren() do
            if child:IsA("Tool") then
                table.insert(Mt, child)
            end
        end
    end
    return Mt
end
function fns.fn405(cs)
    local ML_2
    local MI = H3.Character
    local MJ = MI and MI:FindFirstChildOfClass("Humanoid")
    local MK = MJ
    if not MK or not cs.Parent then
        return false
    elseif cs.Parent == MI then
        return true
    else
        local MJ_2 = os.clock() + 1.5
        repeat
            if not (os.clock() < MJ_2) then
                return false
            end
            MK:EquipTool(cs)
            task.wait(0.15)
            if cs.Parent == MI then
                return true
            end
            MI = H3.Character
            local ML_1 = MI and MI:FindFirstChildOfClass("Humanoid")
            MK = ML_1
            ML_2 = not MK or not cs.Parent
        until ML_2
        return false
    end
end
function fns.fn411(c8)
    for i, child in c8.TowerArea:GetChildren() do
        for i, child in child:GetChildren() do
            if child:IsA("BasePart") then
                return child.Position.Y + child.Size.Y / 2
            end
        end
    end
end
function fns.fn427(hX)
    local RQ_1
    local RP_1
    local RO_1
    RQ_1, RO_1, RP_1 = Iw(hX)
    if not RQ_1 then
        return 0
    end
    return Ji(RQ_1, RP_1)
end
function fns.worker()
    while not Ha.Unloaded do
        local Q1 = next(Jh) and H6.Visible
        if Q1 then
            local Q1_1 = string.lower(H6.Frame.Action.Text)
            for k in Jh do
                if string.find(Q1_1, k) then
                    pcall(function()
                        firesignal(H6.Yes.Button.Activated)
                    end)
                    H1 += 1
                    break
                end
            end
        end
        task.wait(0.1)
    end
end
function fns.fn486(J, K)
    if setclipboard then
        setclipboard(J)
    elseif toclipboard then
        toclipboard(J)
    end
    Ha:Notify(K)
end
function fns.onTeleportToPlot()
    Hb("Plot")
end
function fns.fn504()
    local QR
    for k, v in HT() do
        if string.find(v.Name, "Shovel") then
            if v.Name == "Rainbow Shovel" then
                return v
            end
            QR = QR or v
        end
    end
    return QR
end
function fns.fn514(eh)
    local O0 = eh:GetAttribute("towerID") or eh:GetAttribute("plantID")
    return O0
end
function fns.fn525()
    if not workspace.CurrentCamera then
        return
    end
    Jj:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    task.wait(0.1)
    Jj:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    Hy = tick()
end
function fns.fn542(yH)
    if not yH then
        return
    end
    local acl = Jb("JumpPower", 50)
    Im = true
    if yH.UseJumpPower then
        if yH.JumpPower ~= acl then
            yH.JumpPower = acl
        end
    elseif yH.JumpHeight ~= acl then
        yH.JumpHeight = acl
    end
    Im = false
end
function fns.worker5()
    while not Ha.Unloaded do
        if Ib("AutoCollectMoney") then
            pcall(function()
                HP.CollectionMachine:FireServer()
            end)
        end
        task.wait(Jb("CollectDelay", 3))
    end
end
function fns.fn568()
    local TQ_1
    local TP_1
    if identifyexecutor then
        TQ_1, TP_1 = identifyexecutor()
        local TR = TQ_1 ~= ""
        local TS = type(TQ_1) == "string" and TR
        if TS then
            local TR_1 = type(TP_1) == "string" and TP_1 ~= "" and TQ_1 .. " " .. TP_1
            Hi = TR_1 or TQ_1
        end
    end
end
function fns.fn594(dR)
    local OE_1
    local OD_1, OD_2
    local OC_1, OC_2
    local OB_1
    if dR:GetAttribute("isTower") then
        OC_1, OB_1, OD_1 = IX.ItemNameParser(dR.Name)
        return HW(It(dR:GetAttribute("towerID")), OC_1, OB_1, OD_1)
    elseif dR:GetAttribute("isEgg") then
        local OB_2 = IX.EggData.getData(dR:GetAttribute("trueName"))
        if OB_2 then
            OE_1, OD_2, OC_2 = IX.ItemNameParser(dR.Name)
            return HW(OB_2.CorrespondingTowerName.Value, OE_1, OD_2, OC_2)
        end
        return 0
    else
        return 0
    end
end
function fns.worker6()
    local X6 = false
    while not Ha.Unloaded do
        if Ib("HideOtherPlots") then
            X6 = true
            adC_65()
        elseif X6 then
            X6 = false
            fns.adC_5()
        end
        task.wait(2)
    end
end
function fns.fn616(eM)
    local Pj_1
    local Pi_1
    local Ph_1
    Ph_1, Pi_1, Pj_1 = IX.ItemNameParser(eM.Name)
    return Pj_1 or 1
end
function fns.onCopyJoinScript_JobID()
    HY(string.format('game:GetService("TeleportService"):TeleportToPlaceInstance(%d, "%s", game:GetService("Players").LocalPlayer)', game.PlaceId, Hq), "Copied join script to clipboard")
end
function fns.fn635(fH, fI)
    local P6 = It(fH.Name)
    local P7 = IX.PlantData.getData(P6)
    if not P7 then
        return false
    end
    local SizeScaling = fI:FindFirstChild("SizeScaling")
    local Mutations = fI:FindFirstChild("Mutations")
    local P9_1 = Mutations and Mutations.Value or ""
    local Qa_1 = fns.adC_6(P9_1)
    for k, v in Jq() do
        local matches = IX.BountyData.matches
        local Value = P7.Rarity.Value
        local Qd = SizeScaling and SizeScaling.Value or 1
        if matches(v, P6, Value, Qd, Qa_1) then
            return true
        end
    end
    return false
end
function fns.fn638()
    connection:Disconnect()
    connection2:Disconnect()
    connection5:Disconnect()
    connection6:Disconnect()
    if connection4 then
        connection4:Disconnect()
        connection4 = nil
    end
    if connection3 then
        connection3:Disconnect()
        connection3 = nil
    end
    for k in Hd do
        if k.Parent then
            k.CanCollide = true
        end
    end
    table.clear(Hd)
    HV()
    fns.adC_5()
    Iy()
    print("Capybaras VS Plants unloaded")
end
function fns.fn743(d2)
    local OJ = {}
    local OL = d2 or ""
    for k in string.gmatch(OL, "[^,]+") do
        table.insert(OJ, string.match(k, "^%s*(.-)%s*$"))
    end
    return OJ
end
function fns.fn766(he, hf)
    local Q7 = I_()
    local Q8 = not Q7 or not he or not he:IsDescendantOf(workspace)
    if Q8 then
        return false
    end
    local Q8_1 = H1
    local CFrame2 = Q7.CFrame
    local Ra = he.Position + Vector3.new(0, 3, 0)
    local Position = Q7.Position
    adC_9(hf, true)
    local Rh = 1
    while Rh <= 25 do
        local Ri = Rh
        Q7.CFrame = CFrame.new(Position:Lerp(Ra, Ri / 25))
        task.wait(0.06)
        Rh += 1
    end
    local Rb_1 = os.clock() + 3
    while true do
        local Rc = H1 == Q8_1
        local Rd = os.clock() < Rb_1 and Rc
        if Rd then
            Q7.CFrame = CFrame.new(Ra)
            task.wait(0.1)
            continue
        end
        break
    end
    task.wait(0.4)
    adC_9(hf, false)
    Q7.CFrame = CFrame2
    return H1 > Q8_1
end
function fns.fn790(hB)
    local Rt = {}
    local Ru = #IX.PurchasablePrices.PotPrices
    local Rz = 1
    while Rz <= Ru do
        local RA = Rz
        local Ru_1 = hB.Garden.Buttons:FindFirstChild("Pot" .. RA .. "Button")
        local Rv = Ru_1 and Ru_1:FindFirstChild("ButtonPart")
        if Rv then
            table.insert(Rt, { part = Rv, price = IX.PurchasablePrices.PotPrices[RA] })
        end
        Rz += 1
    end
    return Rt
end
function fns.worker4()
    local Yc_3
    local Yb_7, Yb_8
    while not Ha.Unloaded do
        Hs(true)
        local X9 = HA.EasyClaimed and "claimed"
        local X9_4
        local Ya = X9
        local Ya_2, Ya_4
        if not Ya then
            local X9_1 = HA.Easy and IX.BountyData.describe(HA.Easy)
            Ya = X9_1 or "none"
        end
        HC:SetText(adC_69("Easy", Ya, Ij))
        local Ya_1 = HA.HardClaimed and "claimed"
        if not Ya_1 then
            local X9_3 = HA.Hard and IX.BountyData.describe(HA.Hard)
            Ya_1 = X9_3 or "none"
        end
        Label10:SetText(adC_69("Hard", Ya_1, If))
        if Ib("AutoTurnInBounty") then
            for k, v in Jq() do
                Ya_2, X9_4 = Jp(v)
                if not not Ya_2 then
                    if Ya_2:GetAttribute("Favorited") == true then
                        if not not HX(Ya_2, false) then
                            task.wait(0.2)
                            local X9_5 = I_()
                            local BountyNPC = IT.NPCs:FindFirstChild("BountyNPC")
                            local Yc_1 = BountyNPC
                            if Yc_3 then
                                local Yd_1 = BountyNPC.PrimaryPart or BountyNPC:FindFirstChildWhichIsA("BasePart", true)
                                Yc_1 = Yd_1
                            end
                            local Yb_4 = X9_5
                            local Yd_2 = Yc_1
                            if Yb_7 then
                                Yb_4 = X9_5.CFrame
                            end
                            local Yc_2 = Yb_4
                            if Yb_8 then
                                X9_5.CFrame = Yd_2.CFrame + Vector3.new(0, 4, 0)
                                task.wait(0.25)
                            end
                            if adC_14(Ya_2) then
                                pcall(function()
                                    HP.TurnInBounty:InvokeServer()
                                end)
                                task.wait(0.4)
                            end
                            if Ya_4 then
                                X9_5.CFrame = Yc_2
                            end
                        end
                    else
                        local X9_6 = I_()
                        local BountyNPC = IT.NPCs:FindFirstChild("BountyNPC")
                        Yc_3 = BountyNPC
                        if Yc_3 then
                            local Yd_3 = BountyNPC.PrimaryPart or BountyNPC:FindFirstChildWhichIsA("BasePart", true)
                            Yc_3 = Yd_3
                        end
                        Yb_7 = X9_6
                        local Yd_4 = Yc_3
                        if Yb_7 then
                            Yb_7 = X9_6.CFrame
                        end
                        local Yc_4 = Yb_7
                        Yb_8 = X9_6 and Yd_4
                        if Yb_8 then
                            X9_6.CFrame = Yd_4.CFrame + Vector3.new(0, 4, 0)
                            task.wait(0.25)
                        end
                        if adC_14(Ya_2) then
                            pcall(function()
                                HP.TurnInBounty:InvokeServer()
                            end)
                            task.wait(0.4)
                        end
                        Ya_4 = X9_6 and Yc_4
                        if Ya_4 then
                            X9_6.CFrame = Yc_4
                        end
                    end
                end
            end
        end
        task.wait(Jb("BountyDelay", 5))
    end
end
function fns.fn838()
    HY(Ii, "Copied Discord invite to clipboard")
end
function fns.worker13()
    while not Ha.Unloaded do
        local acS = {}
        local acT = {}
        local acU = {}
        local acV = {}
        if Ib("WalkingPlantESP") then
            for i, child in Hz.Server:GetChildren() do
                local acW_1 = child:GetAttribute("Owner") == H3.UserId and child.PrimaryPart
                if acW_1 then
                    local acW_2 = I9(child)
                    Hh(HF.WalkingPlant, acU, child.PrimaryPart, string.format("%s | %.1fx", It(child.Name), acW_2), Color3.fromRGB(255, 120, 120))
                end
            end
        end
        if Ib("GardenESP") then
            for k, v in Ip() do
                local acW_3 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart", true)
                if acW_3 then
                    local acW_4 = I9(v)
                    local acY_1 = table.concat(Iv(v), ", ")
                    local acZ_1 = acY_1 ~= "" and string.format("%s | %.1fx | %s", It(v.Name), acW_4, acY_1)
                    local acY_2 = acZ_1 or string.format("%s | %.1fx", It(v.Name), acW_4)
                    Hh(HF.Garden, acS, acW_3, acY_2, Color3.fromRGB(120, 220, 120))
                end
            end
        end
        if Ib("CapybaraESP") then
            for k, v in Js("Tower") do
                local acW_6 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart", true)
                if acW_6 then
                    local acW_7 = I9(v)
                    local acY_3 = table.concat(Iv(v), ", ")
                    local acZ_2 = acY_3 ~= "" and string.format("%s | %.1fx | %s", It(v.Name), acW_7, acY_3)
                    local acY_4 = acZ_2 or string.format("%s | %.1fx", It(v.Name), acW_7)
                    Hh(HF.Capybara, acV, acW_6, acY_4, Color3.fromRGB(110, 180, 255))
                end
            end
        end
        if Ib("TotemESP") then
            for k, v in Js("Totem") do
                local acW_9 = v.PrimaryPart or v:FindFirstChildWhichIsA("BasePart", true)
                if acW_9 then
                    Hh(HF.Totem, acT, acW_9, It(v.Name), Color3.fromRGB(255, 210, 110))
                end
            end
        end
        if Ib("WalkingPlantESP") then
            IZ(HF.WalkingPlant, acU)
        else
            IN(HF.WalkingPlant)
        end
        if Ib("GardenESP") then
            IZ(HF.Garden, acS)
        else
            IN(HF.Garden)
        end
        if Ib("CapybaraESP") then
            IZ(HF.Capybara, acV)
        else
            IN(HF.Capybara)
        end
        if Ib("TotemESP") then
            IZ(HF.Totem, acT)
        else
            IN(HF.Totem)
        end
        task.wait(0.5)
    end
end
function fns.fn918(eG)
    local eI, eJ = IX.ItemNameParser(eG.Name)
    return fns.adC_6(eJ)
end
function fns.worker8()
    while not Ha.Unloaded do
        local XP = not IW
        local XQ = Ib("AutoBuyLane") and XP
        if XQ then
            local XP_1 = Is()
            if XP_1 then
                local XQ_1 = Jb("LaneMoneyReserve", 0)
                for k, v in HU(XP_1) do
                    if IO() - v.price >= XQ_1 then
                        IW = true
                        Iu(v.part, "lane")
                        IW = false
                        break
                    end
                end
            end
        end
        task.wait(Jb("LaneDelay", 20))
    end
end
function fns.fn938(hJ)
    for k, v in HT() do
        if v:GetAttribute("trueName") == hJ then
            return v
        end
    end
end
function fns.fn962(dG)
    local ServerConfiguration = dG:FindFirstChild("ServerConfiguration")
    if not ServerConfiguration then
        return 0
    end
    return HW(It(dG.Name), ServerConfiguration.Variant.Value, ServerConfiguration.Mutations.Value, ServerConfiguration.SizeScaling.Value)
end
function fns.fn973()
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("Owner") == H3.UserId then
            return child
        end
    end
end
function fns.worker7()
    while not Ha.Unloaded do
        local XY = not IW
        local XZ = Ib("AutoBuyPot") and XY
        if XZ then
            local XY_1 = Is()
            if XY_1 then
                local XZ_1 = Jb("PotMoneyReserve", 0)
                for k, v in IB(XY_1) do
                    if IO() - v.price >= XZ_1 then
                        IW = true
                        local XY_2 = Iu(v.part, "pot")
                        IW = false
                        if XY_2 then
                            break
                        end
                    end
                end
            end
        end
        task.wait(Jb("PotDelay", 20))
    end
end
function fns.fn995(fw)
    local PW_1
    local PV_1
    local PU_1
    local PT_1
    PT_1, PU_1, PW_1, PV_1 = Iw(fw)
    if not PT_1 then
        return false
    end
    for k, v in Jq() do
        local P5 = if IX.BountyData.matches(v, PT_1, PU_1, PW_1, PV_1) then 1 else 0
        if P5 == 1 then
            return true
        end
    end
    return false
end
function fns.fn998(dL)
    local ServerConfiguration = dL:FindFirstChild("ServerConfiguration")
    local Ox = IX.TowerData.getData(It(dL.Name))
    if not ServerConfiguration or not Ox then
        return nil
    end
    return Ox.Rarity.Value, ServerConfiguration.Variant.Value, ServerConfiguration.Mutations.Value, ServerConfiguration.SizeScaling.Value, ServerConfiguration.Lane.Value
end
function fns.fn1000(b8)
    local Mn = b8:GetAttribute("towerID") or b8:GetAttribute("plantID")
    local Mo = Mn
    if Mn then
        Mn = It(Mo)
    end
    local Mo_1 = Mn
    local Ms = if Mo_1 then 1 else 0
    local Mq = 2022 * Ms + 835 * (1 - Ms)
    local Mr = 2302 * Ms + 334 * (1 - Ms)
    if not ((Mq * 3286 + Mr * 327 + Mq * Mr) % 16777213 == 12051690) then
        Mo_1 = b8:GetAttribute("trueName")
    end
    local Mn_1 = Mo_1
    if not Mn_1 then
        return nil
    end
    local Mo_2 = IX.TowerData.getData(Mn_1) or IX.PlantData.getData(Mn_1) or IX.EggData.getData(Mn_1)
    local Mn_2 = Mo_2
    if Mo_2 then
        Mo_2 = Mn_2.Rarity.Value
    end
    return Mo_2 or nil
end
function fns.fn1033()
    for i, child in Plots:GetChildren() do
        if child:GetAttribute("Owner") ~= H3.UserId then
            IG(child)
        end
    end
    for i, child in Hz.Server:GetChildren() do
        if child:GetAttribute("Owner") ~= H3.UserId then
            IG(child)
        end
    end
    for i, child in IL.Server:GetChildren() do
        if child:GetAttribute("Owner") ~= H3.UserId then
            IG(child)
        end
    end
end
function fns.fn1050(eY)
    local attr = eY:GetAttribute("trueName")
    local Pu = attr and IX.TotemData.getData(attr)
    if Pu then
        return attr
    end
end
function fns.onCharacterAdded(y6)
    local Humanoid = y6:WaitForChild("Humanoid", 10)
    if Humanoid then
        HN(Humanoid)
    end
end
function fns.fn1087(b6)
    return tostring(b6):split(":")[1]
end
function fns.fn1090()
    local leaderstats = H3:FindFirstChild("leaderstats")
    local LI = leaderstats and leaderstats:FindFirstChild("Money")
    local LH_1 = LI
    if LI then
        LI = LH_1.Value
    end
    return LI or 0
end
function fns.fn1106()
    Ha.ScreenGui.Parent = H3:WaitForChild("PlayerGui")
end
function fns.fn1107(cO)
    local M2 = {}
    for i, child in IL.Server:GetChildren() do
        if child.PrimaryPart then
            local Position = child:GetPivot().Position
            table.insert(M2, Vector3.new(Position.X, 0, Position.Z))
        end
    end
    local M3_2 = {}
    for i, child in cO.TowerArea:GetChildren() do
        if not not string.match(child.Name, "^Purchased") then
            local M4 = 0
            local M5 = {}
            for i, child in child:GetChildren() do
                if child:IsA("BasePart") then
                    local M6_1 = child.Position + Vector3.new(0, child.Size.Y / 2, 0)
                    local M7 = Vector3.new(M6_1.X, 0, M6_1.Z)
                    local M8 = false
                    for k, v in M2 do
                        if (v - M7).Magnitude < 3 then
                            M8 = true
                            break
                        end
                    end
                    if M8 then
                        M4 += 1
                    else
                        table.insert(M5, M6_1)
                    end
                end
            end
            local M6_2 = math.min(#M5, HH - M4)
            local NA = 1
            while NA <= M6_2 do
                local NB = NA
                table.insert(M3_2, M5[NB])
                NA += 1
            end
        end
    end
    return M3_2
end
function fns.worker9()
    while not Ha.Unloaded do
        if Ib("AutoSell") then
            local Xw = Ho("SellTypes")
            local Xx = Ho("SellRarities")
            local Xy = Ib("SellAllRarities")
            local Xz = Jb("SellBelowValue", 0)
            local XA = Ib("SellKeepFavorited")
            local XB = Ib("SellKeepBountyPlants")
            local XC = not Jc(Xw)
            local XD = XC or adC_10(Xw, "Capybaras")
            local XE = XC
            local XE_10
            if not XE then
                XE = adC_10(Xw, "Plants")
            end
            local Xw_1 = XE
            if XB then
                Hs()
            end
            local function XD_1(rz)
                if not adC_14(rz) then
                    return
                end
                pcall(function()
                    HP.Sell:FireServer("equippedItem")
                end)
                local Xt = os.clock() + 1
                while true do
                    local Xu = os.clock() < Xt and rz.Parent
                    if Xu then
                        task.wait(0.1)
                        continue
                    end
                    break
                end
            end
            if Xy and Xz <= 0 and XD then
                pcall(function()
                    HP.Sell:FireServer("bulkSell", "Capybara")
                end)
                task.wait(0.5)
            end
            if Xy and Xz <= 0 and Xw_1 and not XB then
                pcall(function()
                    HP.Sell:FireServer("bulkSell", "Plant")
                end)
                task.wait(0.5)
            end
            if not Xy or Xz > 0 or Xw_1 and XB then
                for k, v in HT() do
                    local XE_5 = not Ib("AutoSell") or Ha.Unloaded
                    if XE_5 then
                        break
                    else
                        local XE_6 = v:GetAttribute("isTower") == true or v:GetAttribute("isEgg") == true
                        local XE_7 = v:GetAttribute("isPlant") == true
                        local XH = XE_6 and XD or XE_7 and Xw_1
                        local XF_5 = Xy
                        local XG_3 = XH
                        if XF_5 then
                            XF_5 = Xz <= 0
                        end
                        if XF_5 then
                            XG_3 = XE_7 and Xw_1
                        end
                        if not not XG_3 then
                            local XF_7 = XA and v:GetAttribute("Favorited") == true
                            if not XF_7 then
                                local XF_8 = XB and XE_7 and H_(v)
                                if not XF_8 then
                                    if not Xy then
                                        if not not Jc(Xx) then
                                            local XE_8 = fns.adC_3(v)
                                            local XF_9 = not XE_8 or not adC_10(Xx, XE_8)
                                            if not XF_9 then
                                                local XE_9 = Xz > 0 and adC_67(v) >= Xz
                                                if not XE_10 then
                                                    XD_1(v)
                                                end
                                            end
                                        end
                                    else
                                        XE_10 = Xz > 0 and adC_67(v) >= Xz
                                        if not XE_10 then
                                            XD_1(v)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
        task.wait(Jb("SellDelay", 5))
    end
end
function fns.fn1141(bZ)
    for i, child in bZ:GetChildren() do
        local Rarity = child:FindFirstChild("Rarity")
        if Rarity and not HM[Rarity.Value] then
            HM[Rarity.Value] = true
            table.insert(I3, Rarity.Value)
        end
    end
end
function fns.fn1146(jz)
    for k, v in pairs(jz) do
        if v.gui then
            v.gui:Destroy()
        end
        jz[k] = nil
    end
end
function fns.fn1187(kp)
    local DiscordGroup = kp:AddLeftGroupbox("Discord", "message-circle", true, false, true)
    DiscordGroup:AddButton({ Text = "Join Discord to Make Money", Func = HJ })
    DiscordGroup:AddButton({ Text = "Join Discord for Keyless Scripts", Func = HJ })
end
function fns.fn1189(S, T)
    return string.format('<font color="%s">%s</font>', T, S)
end
function fns.fn1195(js, jt, ju)
    local billboardGui = Instance.new("BillboardGui")
    billboardGui.Name = "_OuroborosESP"
    billboardGui.Adornee = js
    billboardGui.AlwaysOnTop = true
    billboardGui.MaxDistance = 2000
    billboardGui.Size = UDim2.fromOffset(200, 28)
    billboardGui.StudsOffset = Vector3.new(0, 3, 0)
    billboardGui.Parent = js
    local textLabel = Instance.new("TextLabel")
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.fromScale(1, 1)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.Text = jt
    textLabel.TextColor3 = ju
    textLabel.TextSize = 14
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.Parent = billboardGui
    return billboardGui, textLabel
end
function fns.fn1220(hs)
    local Rk = {}
    local Rl = #IX.PurchasablePrices.LanePrices
    local Rq = 1
    while Rq <= Rl do
        local Rr = Rq
        local Rl_1 = hs.LaneButtons:FindFirstChild("Lane" .. Rr .. "Button")
        local Rm = Rl_1 and Rl_1:FindFirstChild("ButtonPart")
        local Rl_2 = Rm
        if Rm then
            Rm = hs.TowerArea:FindFirstChild("Unpurchased" .. Rr)
        end
        if Rm then
            table.insert(Rk, { part = Rl_2, price = IX.PurchasablePrices.LanePrices[Rr] })
        end
        Rq += 1
    end
    return Rk
end
function fns.fn1271(fZ)
    local ServerConfiguration = fZ:FindFirstChild("ServerConfiguration")
    local Qm = ServerConfiguration and ServerConfiguration:FindFirstChild("CurrentHealth")
    return Qm ~= nil and Qm.Value > 0
end
function fns.fn1283()
    for k, v in pairs(HF) do
        IN(v)
    end
end
function fns.fn1293(ex)
    local Pe_1
    local Pd_1
    local Pc_1
    local Pb = Jk(ex)
    if not Pb then
        return 0
    end
    Pd_1, Pc_1, Pe_1 = IX.ItemNameParser(ex.Name)
    local GetItemValue = IX.GetItemValue
    local Pd_2 = It(Pb)
    local Pf = Pe_1 or 1
    return GetItemValue({ itemName = Pd_2, SizeScaling = Pf })
end
function fns.fn1336(dx, dy, dz, dA)
    local Oi = IX.TowerData.getData(dx)
    if not Oi then
        return 0
    end
    local Value2 = Oi.AttackSpeed.Value
    if Value2 <= 0 then
        return 0
    end
    local calculateDamage = IX.MutationData.calculateDamage
    local Value = Oi.Damage.Value
    local Om = dy or ""
    local On = dz
    local Ot = if On then 1 else 0
    local Or = 2544 * Ot + 655 * (1 - Ot)
    local Os = 257 * Ot + 3512 * (1 - Ot)
    if not ((Or * 3829 + Os * 2339 + Or * Os) % 16777213 == 10995907) then
        On = ""
    end
    local Oo = dA or 1
    local Op = calculateDamage(Value, Om, On, Oo)
    return Op / Value2
end
function fns.fn1337(aF, aG)
    return aF[aG] == true
end
function fns.fn1344(jU, jV)
    for k, v in pairs(jU) do
        if not jV[k] then
            if v.gui then
                v.gui:Destroy()
            end
            jU[k] = nil
        end
    end
end
function fns.fn1360()
    local RS = {}
    for i, child in PottedPlants.Server:GetChildren() do
        if child:GetAttribute("Owner") == H3.UserId then
            table.insert(RS, child)
        end
    end
    return RS
end
function fns.fn1371(iM, iN, iO)
    local Sv = {}
    if iM or iN then
        for i, child in IL.Server:GetChildren() do
            local SJ = if child:GetAttribute("Owner") ~= H3.UserId then 1 else 0
            local SH = 2775 * SJ + 3248 * (1 - SJ)
            local SI = 1203 * SJ + 997 * (1 - SJ)
            if not ((SH * 160 + SI * 1750 + SH * SI) % 16777213 == 5887575) then
                local ServerConfiguration = child:FindFirstChild("ServerConfiguration")
                local Sx = ServerConfiguration and ServerConfiguration:FindFirstChild("Type")
                if not not Sx then
                    local Sz = iM and Sx.Value == "Tower"
                    if not Sz then
                        Sz = iN and Sx.Value == "Egg"
                    end
                    if Sz then
                        local HatchPercentage = ServerConfiguration:FindFirstChild("HatchPercentage")
                        if not (HatchPercentage and HatchPercentage.Value < 100) then
                            table.insert(Sv, child)
                        end
                    end
                end
            end
        end
    end
    if iO then
        for k, v in Ip() do
            table.insert(Sv, v)
        end
    end
    return Sv
end
function fns.fn1389(V, W, X)
    return string.format("<b>%s</b> %s %s", V, IM("-", "#5a6070"), IM(W, X))
end
function fns.fn1420(de)
    local NQ = I4(de)
    if not NQ then
        return {}
    end
    local NR = {}
    for i, child in IL.Server:GetChildren() do
        local Position = child:GetPivot().Position
        table.insert(NR, Vector3.new(Position.X, 0, Position.Z))
    end
    local Position = de:GetPivot().Position
    local NT = {}
    local N4 = 1
    while N4 <= 3 do
        local N5 = N4
        local N9 = 1
        while N9 <= 8 do
            local NU = N9 / 8 * math.pi * 2
            local NV = Vector3.new(Position.X + math.cos(NU) * N5 * 4, 0, Position.Z + math.sin(NU) * N5 * 4)
            local NU_1 = false
            for k, v in NR do
                if (v - NV).Magnitude < 4 then
                    NU_1 = true
                    break
                end
            end
            if not NU_1 then
                table.insert(NT, Vector3.new(NV.X, NQ, NV.Z))
            end
            N9 += 1
        end
        N4 += 1
    end
    return NT
end
function fns.onUnload()
    Ha:Unload()
end
function fns.fn1446(gi, gj)
    return gi.Waypoints:FindFirstChild("Finish" .. tostring(gj))
end
function fns.fn1449(jl)
    local ST = I_()
    local SU = I5(jl)
    if not ST or not SU then
        Ha:Notify("Could not teleport to " .. tostring(jl))
        return
    end
    ST.CFrame = CFrame.new(SU.Position + Vector3.new(0, 5, 0))
end
function fns.fn1492(fh)
    local PN_1
    local PM = not fh
    local PM_1
    if PM ~= false then
        PM = os.clock() - IF < 5
    end
    if PM then
        return
    end
    PM_1, PN_1 = pcall(function()
        return HP.RequestBounties:InvokeServer()
    end)
    local PO = PM_1 and type(PN_1) == "table"
    if PO then
        HA = PN_1
        IF = os.clock()
    end
end
function fns.onRscripts()
    HY(Hf, "Copied Rscripts profile to clipboard")
end
function fns.fn1500()
    local Character = H3.Character
    local ach = Character and Character:FindFirstChildOfClass("Humanoid")
    return ach
end
function fns.fn1566(aj, ak)
    local Le = Ja[aj]
    local Lf = Le and tonumber(Le.Value)
    return Lf or ak
end
function fns.fn1612()
    local Pl = {}
    for k, v in fns.adC_6(ACTIVE_WEATHERS.Value) do
        if v ~= "" then
            Pl[v] = true
        end
    end
    return Pl
end
function fns.fn1655(iG)
    local ServerConfiguration = iG:FindFirstChild("ServerConfiguration")
    local St = ServerConfiguration and ServerConfiguration:FindFirstChild("SizeScaling")
    local Ss_1 = St
    if St then
        St = Ss_1.Value
    end
    return St or 1
end
function fns.fn1659(gl, gm, gn, go, gp, gq, gr)
    local QB = {}
    for i, child in Hz.Server:GetChildren() do
        if not (child:GetAttribute("Owner") ~= H3.UserId) then
            local ServerConfiguration = child:FindFirstChild("ServerConfiguration")
            local QC_3
            local QD = ServerConfiguration and ServerConfiguration:FindFirstChild("CurrentHealth")
            if not (not QD or QD.Value <= 0 or not child.PrimaryPart) then
                local Plot = ServerConfiguration:FindFirstChild("Plot")
                local QF = Plot and tostring(Plot.Value) ~= gl.Name
                if not QF then
                    local SizeScaling = ServerConfiguration:FindFirstChild("SizeScaling")
                    local QF_2 = SizeScaling and SizeScaling.Value or 1
                    local QQ = if QF_2 < go or QF_2 > gp then 1 else 0
                    local QO = 1802 * QQ + 3534 * (1 - QQ)
                    local QP = 3996 * QQ + 3270 * (1 - QQ)
                    if not ((QO * 1292 + QP * 4037 + QO * QP) % 16777213 == 8883615) then
                        local Position = child:GetPivot().Position
                        if not ((Position - gm.Position).Magnitude > gn) then
                            local QF_3 = gq and not Iz(child, ServerConfiguration)
                            if not QF_3 then
                                if gr and gr > 1 then
                                    local QF_5 = IX.PlantData.getData(It(child.Name))
                                    if not ((QF_5 and Hp[QF_5.Rarity.Value] or 0) < gr) then
                                        local Lane = ServerConfiguration:FindFirstChild("Lane")
                                        local QC_1 = Lane and Jf(gl, Lane.Value)
                                        local QF_8 = QC_1
                                        if QC_3 then
                                            QC_1 = -(Position - QF_8.Position).Magnitude
                                        end
                                        local QF_9 = QC_1 or 0
                                        table.insert(QB, { model = child, position = Position, threat = QF_9, health = QD.Value })
                                    end
                                else
                                    local Lane = ServerConfiguration:FindFirstChild("Lane")
                                    QC_3 = Lane and Jf(gl, Lane.Value)
                                    local QF_11 = QC_3
                                    if QC_3 then
                                        QC_3 = -(Position - QF_11.Position).Magnitude
                                    end
                                    local QF_12 = QC_3 or 0
                                    table.insert(QB, { model = child, position = Position, threat = QF_12, health = QD.Value })
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(QB, function(gS, gT)
        if gS.threat == gT.threat then
            return gS.health < gT.health
        end
        return gS.threat > gT.threat
    end)
    return QB
end
function fns.worker11()
    local Uo_1
    while true do
        task.wait(1)
        if Ha.Unloaded then
            break
        end
        local Un = math.floor(os.clock() - Io)
        if Un < 60 then
            Uo_1 = Un .. "s"
        elseif Un < 3600 then
            Uo_1 = string.format("%dm %ds", Un // 60, Un % 60)
        else
            Uo_1 = string.format("%dh %dm", Un // 3600, Un % 3600 // 60)
        end
        H9:SetText(adC_69("Session time", Uo_1, If))
        Label9:SetText(adC_69("Money", string.format("%d", math.floor(IO())), Ij))
        local Un_1 = Is()
        local Uo_2 = Un_1 and tostring(Un_1:GetAttribute("BossActive"))
        local Un_2 = Uo_2 or "?"
        Label3:SetText(adC_69("Boss active", Un_2, If))
    end
end
function fns.fn1699()
    HP.GetMouseCF.OnClientInvoke = function()
        return H3:GetMouse().Hit
    end
end
function fns.worker3()
    local YR = {}
    while not Ha.Unloaded do
        local YS = adC_59()
        local YT = {}
        for k in YS do
            table.insert(YT, k)
        end
        table.sort(YT)
        local YS_1 = #YT > 0 and table.concat(YT, ", ")
        local YU = YS_1 or "none"
        Label4:SetText(adC_69("Active", YU, Hg))
        if Ib("NotifyWeather") then
            local YS_2 = Ho("WeatherWatch")
            for k, v in YT do
                if YS_2[v] and not YR[v] then
                    Ha:Notify(v .. " is active")
                end
            end
        end
        table.clear(YR)
        for k, v in YT do
            YR[v] = true
        end
        task.wait(2)
    end
end
function fns.fn1723(aI)
    for k, v in pairs(aI) do
        if v then
            return true
        end
    end
    return false
end
function fns.fn1772(yC)
    if not yC then
        return
    end
    local acj = Jb("WalkSpeed", 50)
    if yC.WalkSpeed == acj then
        return
    end
    Hm = true
    yC.WalkSpeed = acj
    Hm = false
end
function fns.worker12()
    while not Ha.Unloaded do
        task.wait(2)
        if Ib("AntiAfk") then
            local Uj = tick() - II
            local Uk = tick() - Hy
            if Uj >= 300 and Uk >= 60 then
                pcall(In)
            else
                if Uj < 300 and Uk >= 300 then
                    pcall(In)
                end
            end
        end
    end
end
function fns.fn1804(cC)
    local MT = {}
    for i, child in IL.Server:GetChildren() do
        local ServerConfiguration = child:FindFirstChild("ServerConfiguration")
        local MV = ServerConfiguration and ServerConfiguration:FindFirstChild("Type")
        local MU_1 = MV
        if MV then
            MV = MU_1.Value == cC
        end
        if MV then
            MV = child:GetAttribute("Owner") == H3.UserId
        end
        if MV then
            table.insert(MT, child)
        end
    end
    return MT
end
function fns.fn1809(hO, hP)
    local RJ = IX.PlantData.getData(hO)
    if not RJ then
        return 0
    end
    local MoneyPerSecond = RJ:FindFirstChild("MoneyPerSecond")
    return (MoneyPerSecond and MoneyPerSecond.Value or 0) * (hP or 1) + (Hp[RJ.Rarity.Value] or 0) * 0.01
end
function fns.onInputChanged(ma)
    local UserInputType = ma.UserInputType
    if UserInputType == Enum.UserInputType.MouseMovement or UserInputType == Enum.UserInputType.Gamepad1 then
        II = tick()
    end
end
Ha = nil
Hb = nil
Hd = nil
Hf = nil
Hg = nil
Hh = nil
Hi = nil
connection4 = nil
fns.adC_5 = nil
Hm = nil
Ho = nil
Hp = nil
Hq = nil
adC_69 = nil
Hs = nil
Hw = nil
adC_14 = nil
Hy = nil
Hz = nil
HA = nil
HC = nil
Plots = nil
HF = nil
HH = nil
HJ = nil
adC_8 = nil
HM = nil
HN = nil
connection5 = nil
HP = nil
adC_72 = nil
HT = nil
HU = nil
HV = nil
HW = nil
HX = nil
local Hc, He, Hk, Hn, Ht, Hu, HB, HD, HG, HI, HL, Label6, HS
HY = nil
HZ = nil
H_ = nil
Label4 = nil
H1 = nil
connection2 = nil
H3 = nil
Toggles = nil
H6 = nil
adC_10 = nil
H9 = nil
Ib = nil
Id = nil
If = nil
connection3 = nil
connection6 = nil
Ii = nil
Ij = nil
fns.adC_3 = nil
Im = nil
In = nil
Io = nil
Ip = nil
ACTIVE_WEATHERS = nil
adC_67 = nil
Is = nil
It = nil
Iu = nil
Iv = nil
Iw = nil
Iy = nil
Iz = nil
IA = nil
IB = nil
PottedPlants = nil
adC_59 = nil
IF = nil
IG = nil
Label10 = nil
II = nil
fns.adC_6 = nil
local Label2, RunService, Ia, Ic, Ie, Ik, Ix, IC, IJ
IL = nil
IM = nil
IN = nil
IO = nil
Label9 = nil
IT = nil
IW = nil
IX = nil
IY = nil
IZ = nil
I_ = nil
I3 = nil
I4 = nil
I5 = nil
adC_9 = nil
I9 = nil
Ja = nil
Jb = nil
Jc = nil
Label3 = nil
Jf = nil
Jg = nil
Jh = nil
Ji = nil
Jj = nil
Jk = nil
fns.adC_1 = nil
Jp = nil
Jq = nil
adC_65 = nil
Js = nil
connection = nil
local I2, Jn
local IR
local IS
local IU
local Label8
local I0
local Label7
I2 = nil
local Label5
local Je
local Label
Jn = nil
local Jo
local Ju
adC_112, RunService, Jj, H3 = nil, nil, nil, nil
local adC_29 = game:GetService("Players")
local adC_12 = game:GetService("ReplicatedStorage")
if ((H3 or adC_112 or adC_112 and adC_112) and (not adC_112 and adC_112 or (not RunService or not adC_112)) and (not RunService and RunService and (not RunService or not RunService) and (adC_112 or not adC_112 or H3 and not adC_112)) or (not H3 and not adC_112 and (adC_112 or adC_112) and (adC_112 and not H3 or not RunService and not H3) or ((not H3 or not H3) and (not RunService or not H3) or (not RunService and RunService or not adC_112 and RunService)))) and not ((H3 or adC_112 or adC_112 and adC_112) and (not adC_112 and adC_112 or (not RunService or not adC_112)) and (not RunService and RunService and (not RunService or not RunService) and (adC_112 or not adC_112 or H3 and not adC_112)) or (not H3 and not adC_112 and (adC_112 or adC_112) and (adC_112 and not H3 or not RunService and not H3) or ((not H3 or not H3) and (not RunService or not H3) or (not RunService and RunService or not adC_112 and RunService)))) then
    H3 = game:GetService("UserInputService")
    Jj = game:GetService("RunService")
    adC_112 = game:GetService("VirtualUser")
else
    adC_112 = game:GetService("UserInputService")
    RunService = game:GetService("RunService")
    Jj = game:GetService("VirtualUser")
    H3 = adC_29.LocalPlayer
end
if getgenv then
    getgenv().gethui = function()
        return H3:WaitForChild("PlayerGui")
    end
end
adC_104, adC_81, HP, IX, adC_21, IT, Plots, IL, Hz, PottedPlants, Ix, Hn, ACTIVE_WEATHERS, adC_74, Ii, Hf, adC_97, Ha, adC_42, adC_34, Toggles, Ja, Ij, Hg, If, adC_58, Hc, Ic, adC_50, HY, HJ, IM, adC_69, Ib, Jb, IU, Ho, adC_10, Jc, I_, IO, Is = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local adC_89 = 10
repeat
    adC_26 = (adC_89 * 13 + 20) % 22 + 1
    if adC_26 <= 11 then
        if adC_26 <= 6 then
            if adC_26 <= 3 then
                if adC_26 <= 2 then
                    if adC_26 <= 1 then
                        adC_17 = (vector.create((adC_89 * 1 + 2) % 11 + 1, (adC_89 * 6 + 10) % 13 + 1, (adC_89 * 13 + 17) % 17 + 1))
                        local afW = vector.floor(adC_17) + vector.ceil(adC_17 * -1)
                        if vector.dot(afW, afW) == 0 then
                            adC_21 = workspace:WaitForChild("World")
                        else
                            Ix = workspace:WaitForChild("World")
                        end
                        adC_89 = (adC_89 + 149) % 176
                    else
                        if (adC_89 * 2 + 8) * 13 % 3 == ((adC_89 * 2 + 8) * 13 + 2) % 3 then
                            adC_21 = IT:WaitForChild("Map")
                        else
                            IT = adC_21:WaitForChild("Map")
                        end
                        adC_89 = (adC_89 + 83) % 176
                    end
                else
                    adC_17 = {
                        "gvd",
                        "dbwzlcwut",
                        "wufbsiu",
                        "oqxcbpooxmw",
                        "xeabrru",
                        "ldnnmy",
                        "iwtczsu",
                        "ixoh",
                        "vwsugtskzp",
                        "jbdr",
                        "pclpqgq",
                        "rbccffpmeiqi",
                        "rda"
                    }
                    if adC_17[(adC_89 * 38 + 99) % 13 + 1] <= adC_17[(adC_89 * 38 + 99) % 13 + 1] then
                        Plots = IT:WaitForChild("Plots")
                    else
                        IT = Plots:WaitForChild("Plots")
                    end
                    adC_89 = (adC_89 + 83) % 176
                end
            elseif adC_26 <= 5 then
                if adC_26 <= 4 then
                    if ((not IU or IU) and (not IU and not Plots) or (not IO and IO or not Is and Plots) or (not IU or IO) and (not IO and not Plots) and (IO and not IO or Is and Is) or (not Plots and IU and (not Is and not Plots) or (Is and not Plots or Plots and not Is)) and (not IO or Is or Plots and Is or (Is and not IO or not IU and IU))) and not ((not IU or IU) and (not IU and not Plots) or (not IO and IO or not Is and Plots) or (not IU or IO) and (not IO and not Plots) and (IO and not IO or Is and Is) or (not Plots and IU and (not Is and not Plots) or (Is and not Plots or Plots and not Is)) and (not IO or Is or Plots and Is or (Is and not IO or not IU and IU))) then
                        IT = PottedPlants:WaitForChild("PlacedItems")
                        IL = PottedPlants:WaitForChild("Plants")
                        Hz = PottedPlants:WaitForChild("PottedPlants")
                    else
                        IL = IT:WaitForChild("PlacedItems")
                        Hz = IT:WaitForChild("Plants")
                        PottedPlants = IT:WaitForChild("PottedPlants")
                    end
                    adC_89 = (adC_89 + 171) % 176
                else
                    adC_17 = {
                        "jqnzofu",
                        "nzpvkgp",
                        "qrc",
                        "lqmiwkntevx",
                        "wybcqurshed",
                        "nhucfjrj",
                        "aess",
                        "asfqw",
                        "emikbutc",
                        "rih",
                        "yocooekrl",
                        "ylnchn",
                        "etruvhtlhl"
                    }
                    if adC_17[(adC_89 * 52 + 66) % 13 + 1] <= adC_17[(adC_89 * 52 + 66) % 13 + 1] then
                        adC_29 = IT:WaitForChild("FuseMachine")
                        Ix = adC_29:WaitForChild("CapybaraVat")
                        Hn = adC_29:WaitForChild("PlantVat")
                    else
                        Hn = Ix:WaitForChild("FuseMachine")
                        Hn:WaitForChild("CapybaraVat")
                        IT = Hn:WaitForChild("PlantVat")
                    end
                    adC_89 = (adC_89 + 127) % 176
                end
            else
                adC_17 = {
                    "ese",
                    "bjfdizhxwfqp",
                    "ygye",
                    "sak",
                    "jbgcjnpbzg",
                    "uidwkpuhmuh",
                    "ckpgbcfex",
                    "qqeyyudlyf",
                    "brbde",
                    "owtcokqva",
                    "mnessp",
                    "dcqbwmrlcksj",
                    "ckip",
                    "hdbysn",
                    "wrqpzskybe"
                }
                if adC_17[(adC_89 * 91 + 60) % 15 + 1] < adC_17[(adC_89 * 91 + 60) % 15 + 1] then
                    adC_74 = ACTIVE_WEATHERS:WaitForChild("ServerInfo"):WaitForChild("ACTIVE_WEATHERS")
                    adC_12 = "Capybaras VS Plants"
                else
                    ACTIVE_WEATHERS = adC_12:WaitForChild("ServerInfo"):WaitForChild("ACTIVE_WEATHERS")
                    adC_74 = "Capybaras VS Plants"
                end
                adC_89 = (adC_89 + 39) % 176
            end
        elseif adC_26 <= 9 then
            if adC_26 <= 8 then
                if adC_26 <= 7 then
                    adC_17 = { "tqqwmg", "rmh", "rdvqwsm", "uwipfulza", "eyn", "tcmlm", "gzaizw", "llenludnv", "ukvxtrxas" }
                    local agc = adC_89
                    fns.adC_4 = adC_17[agc % 9 + 1]
                    if fns.adC_4:len() >= fns.adC_4:gsub("(.)", "%1%1", agc % 3 % 2 + 1):len() then
                        Hf = "https://discord.gg/ehKVq7pf7v"
                        Ii = "https://rscripts.net/@Ouroboros"
                    else
                        Ii = "https://discord.gg/ehKVq7pf7v"
                        Hf = "https://rscripts.net/@Ouroboros"
                    end
                    adC_89 = (adC_89 + 171) % 176
                else
                    adC_17 = {
                        "olzhfinuewo",
                        "asckkicqhpid",
                        "tpoztkepm",
                        "qgeoezjxeap",
                        "wrggqsf",
                        "frbc",
                        "ehkwpuolc",
                        "yruvsuk"
                    }
                    if adC_17[(adC_89 * 22 + 33) % 8 + 1] < adC_17[(adC_89 * 22 + 33) % 8 + 1] then
                        Ii = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    else
                        adC_97 = "https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/"
                    end
                    adC_89 = (adC_89 + 127) % 176
                end
            else
                local agb = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_89, 23), string.byte(tostring(IT))), 27)
                if bit32.bxor(bit32.lrotate(bit32.bxor(agb, 3360526419), 24), 1405635984) ~= bit32.lrotate(agb, 24) then
                    adC_97 = loadstring(game:HttpGet(Ha .. "Library.lua"))()
                else
                    Ha = loadstring(game:HttpGet(adC_97 .. "Library.lua"))()
                end
                adC_89 = (adC_89 + 149) % 176
            end
        elseif adC_26 <= 10 then
            if adC_89 * 24560389 + 11 + 5 <= adC_89 * 24560389 + 11 + 5 + 3 then
                pcall(fns.fn1106)
                adC_42 = loadstring(game:HttpGet(adC_97 .. "addons/ThemeManager.lua"))()
                adC_34 = loadstring(game:HttpGet(adC_97 .. "addons/SaveManager.lua"))()
            else
                pcall(fns.fn1106)
                adC_97 = loadstring(game:HttpGet(adC_34 .. "addons/ThemeManager.lua"))()
                adC_42 = loadstring(game:HttpGet(adC_34 .. "addons/SaveManager.lua"))()
            end
            adC_89 = (adC_89 + 127) % 176
        else
            local ahN = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_89, 5), string.byte(tostring(IX))), 29)
            if bit32.bxor(bit32.lrotate(bit32.bxor(ahN, 3340535874), 30), 2982617616) ~= bit32.lrotate(ahN, 30) then
                Ha = Toggles.Toggles
            else
                Toggles = Ha.Toggles
            end
            adC_89 = (adC_89 + 105) % 176
        end
    elseif adC_26 <= 17 then
        if adC_26 <= 14 then
            if adC_26 <= 13 then
                if adC_26 <= 12 then
                    local agd = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_89, 14), string.byte(tostring(IM))), 28)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(agd, 1105805878), 24), 910289218) == bit32.lrotate(agd, 24) then
                        Ja = Ha.Options
                        HY = fns.fn486
                    else
                        Ha = HY.Options
                        Ja = fns.fn486
                    end
                    adC_89 = (adC_89 + 83) % 176
                else
                    adC_17 = (vector.create((adC_89 * 3 + 9) % 11 + 1, (adC_89 * 9 + 3) % 13 + 1, (adC_89 * 2 + 3) % 17 + 1))
                    fns.adC_4 = (vector.create((adC_89 * 1 + 1) % 11 + 1, (adC_89 * 6 + 1) % 13 + 1, (adC_89 * 5 + 16) % 17 + 1))
                    local ajO = vector.cross(adC_17, fns.adC_4)
                    local ajP = vector.dot(adC_17, fns.adC_4)
                    if vector.dot(ajO, ajO) + ajP * ajP == vector.dot(adC_17, adC_17) * vector.dot(fns.adC_4, fns.adC_4) + 5 then
                        IM = fns.fn838
                        Hg = fns.fn1189
                        HJ = fns.fn1389
                        adC_69 = "#7fd47f"
                        Ij = "#6ec1ff"
                    else
                        HJ = fns.fn838
                        IM = fns.fn1189
                        adC_69 = fns.fn1389
                        Ij = "#7fd47f"
                        Hg = "#6ec1ff"
                    end
                    adC_89 = (adC_89 + 61) % 176
                end
            else
                if adC_89 * 80129419 + 8 + 1 >= adC_89 * 80129419 + 8 + 1 + 6 then
                    IU = "#e8a34d"
                    Ib = "#8b93a3"
                    If = fns.fn129
                    adC_58 = fns.fn1566
                    Jb = fns.fn201
                else
                    If = "#e8a34d"
                    adC_58 = "#8b93a3"
                    Ib = fns.fn129
                    Jb = fns.fn1566
                    IU = fns.fn201
                end
                adC_89 = (adC_89 + 149) % 176
            end
        elseif adC_26 <= 16 then
            if adC_26 <= 15 then
                adC_17 = {
                    "maqaapqe",
                    "qgey",
                    "sewyw",
                    "wonasfk",
                    "agqjealg",
                    "srxu",
                    "hvdvbzk",
                    "apsyrdmh",
                    "utmfvkzrr",
                    "sia"
                }
                if adC_17[(adC_89 * 55 + 15) % 10 + 1] <= adC_17[(adC_89 * 55 + 15) % 10 + 1] then
                    Ho = fns.fn280
                    adC_10 = fns.fn1337
                else
                    adC_10 = fns.fn280
                    Ho = fns.fn1337
                end
                adC_89 = (adC_89 + 17) % 176
            else
                if (not Jb and HJ or Jb and not adC_104 or adC_104 and not Ib and (Ho or Ib)) and (Jb and Ib or (not Jb or not Ib) or (not Jb and not Ib or (not Jb or not Ib))) and not ((not Jb and HJ or Jb and not adC_104 or adC_104 and not Ib and (Ho or Ib)) and (Jb and Ib or (not Jb or not Ib) or (not Jb and not Ib or (not Jb or not Ib)))) then
                    IO = fns.fn1723
                    Jc = fns.fn70
                    I_ = fns.fn1090
                else
                    Jc = fns.fn1723
                    I_ = fns.fn70
                    IO = fns.fn1090
                end
                adC_89 = (adC_89 + 149) % 176
            end
        else
            if (not Hc and not I_ or Ic and IO) and (not Hn and IL or (not IO or IL)) or (not I_ and not IO or not I_ and not IO or (I_ or Hn) and (IO and not Ic)) or not ((not Hc and not I_ or Ic and IO) and (not Hn and IL or (not IO or IL)) or (not I_ and not IO or not I_ and not IO or (I_ or Hn) and (IO and not Ic))) then
                Is = fns.fn973
                Hc = IX.ShopData.ShopOrders.EggShop
                Ic = IX.ShopData.ShopOrders.GearShop
            else
                Hc = fns.fn973
                Ic = Is.ShopData.ShopOrders.EggShop
                IX = Is.ShopData.ShopOrders.GearShop
            end
            adC_89 = (adC_89 + 105) % 176
        end
    elseif adC_26 <= 20 then
        if adC_26 <= 19 then
            if adC_26 <= 18 then
                adC_17 = (vector.create((adC_89 * 5 + 6) % 11 + 1, (adC_89 * 6 + 6) % 13 + 1, (adC_89 * 2 + 2) % 17 + 1))
                fns.adC_4 = (vector.create((adC_89 * 3 + 6) % 11 + 1, (adC_89 * 8 + 13) % 13 + 1, (adC_89 * 11 + 4) % 17 + 1))
                local afD = vector.cross(adC_17, fns.adC_4)
                local afE = vector.dot(adC_17, fns.adC_4)
                if vector.dot(afD, afD) + afE * afE == vector.dot(adC_17, adC_17) * vector.dot(fns.adC_4, fns.adC_4) then
                    adC_50 = {}
                else
                    IM = {}
                end
                adC_89 = (adC_89 + 83) % 176
            else
                if (ACTIVE_WEATHERS and not Ij and (Ij or Is) or (not Is or Ij) and (adC_89 or not adC_89)) and ((adC_74 or not adC_74) and (not adC_104 and adC_74) and (not adC_89 and not Ij and (adC_74 or adC_89))) or not ((ACTIVE_WEATHERS and not Ij and (Ij or Is) or (not Is or Ij) and (adC_89 or not adC_89)) and ((adC_74 or not adC_74) and (not adC_104 and adC_74) and (not adC_89 and not Ij and (adC_74 or adC_89)))) then
                    adC_104 = adC_12:WaitForChild("Remotes")
                else
                    adC_12 = adC_104:WaitForChild("Remotes")
                end
                adC_89 = (adC_89 + 61) % 176
            end
        else
            if (adC_89 * 3 + 9) * 9 % 4 == ((adC_89 * 3 + 9) * 9 + 2) % 4 then
                adC_12 = adC_81:WaitForChild("Modules")
            else
                adC_81 = adC_12:WaitForChild("Modules")
            end
            adC_89 = (adC_89 + 61) % 176
        end
    elseif adC_26 <= 21 then
        if (adC_89 * 2 + 8) * 7 % 3 == ((adC_89 * 2 + 8) * 7 + 6) % 3 then
            HP = {
                BuyItem = adC_104:WaitForChild("BuyItem"),
                Hatch = adC_104:WaitForChild("Hatch"),
                Sell = adC_104:WaitForChild("Sell"),
                EquipBestPlants = adC_104:WaitForChild("EquipBestPlants"),
                SummonBoss = adC_104:WaitForChild("SummonBoss"),
                RequestGrowth = adC_104:WaitForChild("RequestGrowth"),
                RequestPersonalStock = adC_104:WaitForChild("RequestPersonalStock"),
                BuyTreeUpgrade = adC_104:WaitForChild("BuyTreeUpgrade"),
                GetMouseCF = adC_104:WaitForChild("GetMouseCF"),
                CollectionMachine = adC_104:WaitForChild("CollectionMachine"),
                RequestMerchantStock = adC_104:WaitForChild("RequestMerchantStock"),
                BuyMerchantItem = adC_104:WaitForChild("BuyMerchantItem"),
                RequestDailyRewards = adC_104:WaitForChild("RequestDailyRewards"),
                ClaimDailyReward = adC_104:WaitForChild("ClaimDailyReward"),
                RequestPlaytime = adC_104:WaitForChild("RequestPlaytime"),
                ClaimPlaytimeReward = adC_104:WaitForChild("ClaimPlaytimeReward"),
                RequestQuests = adC_104:WaitForChild("RequestQuests"),
                ClaimQuest = adC_104:WaitForChild("ClaimQuest"),
                RequestBounties = adC_104:WaitForChild("RequestBounties"),
                TurnInBounty = adC_104:WaitForChild("TurnInBounty"),
                ChangeFavoriteStatus = adC_104:WaitForChild("ChangeFavoriteStatus"),
                FuseAction = adC_104:WaitForChild("FuseAction"),
                BuyBountyItem = adC_104:WaitForChild("BuyBountyItem"),
                ChangeAutosellOptions = adC_104:WaitForChild("ChangeAutosellOptions"),
                MutationScroll = adC_104:WaitForChild("MutationScroll"),
                MutationSponge = adC_104:WaitForChild("MutationSponge"),
                PickUpTotem = adC_104:WaitForChild("PickUpTotem"),
                PotInteract = adC_104:WaitForChild("PotInteract"),
                Raygun = adC_104:WaitForChild("Raygun"),
                RedeemCode = adC_104:WaitForChild("RedeemCode"),
                RequestOptions = adC_104:WaitForChild("RequestOptions"),
                PickUp = adC_104:WaitForChild("PickUp")
            }
        else
            adC_104 = {
                FuseAction = HP:WaitForChild("FuseAction"),
                RequestDailyRewards = HP:WaitForChild("RequestDailyRewards"),
                BuyBountyItem = HP:WaitForChild("BuyBountyItem"),
                PickUp = HP:WaitForChild("PickUp"),
                BuyMerchantItem = HP:WaitForChild("BuyMerchantItem"),
                TurnInBounty = HP:WaitForChild("TurnInBounty"),
                Hatch = HP:WaitForChild("Hatch"),
                PotInteract = HP:WaitForChild("PotInteract"),
                ClaimPlaytimeReward = HP:WaitForChild("ClaimPlaytimeReward"),
                SummonBoss = HP:WaitForChild("SummonBoss"),
                EquipBestPlants = HP:WaitForChild("EquipBestPlants"),
                MutationSponge = HP:WaitForChild("MutationSponge"),
                RequestQuests = HP:WaitForChild("RequestQuests"),
                ChangeAutosellOptions = HP:WaitForChild("ChangeAutosellOptions"),
                BuyItem = HP:WaitForChild("BuyItem"),
                RequestBounties = HP:WaitForChild("RequestBounties"),
                BuyTreeUpgrade = HP:WaitForChild("BuyTreeUpgrade"),
                CollectionMachine = HP:WaitForChild("CollectionMachine"),
                RequestMerchantStock = HP:WaitForChild("RequestMerchantStock"),
                ClaimDailyReward = HP:WaitForChild("ClaimDailyReward"),
                RequestPersonalStock = HP:WaitForChild("RequestPersonalStock"),
                ClaimQuest = HP:WaitForChild("ClaimQuest"),
                Sell = HP:WaitForChild("Sell"),
                PickUpTotem = HP:WaitForChild("PickUpTotem"),
                RequestOptions = HP:WaitForChild("RequestOptions"),
                RequestGrowth = HP:WaitForChild("RequestGrowth"),
                RedeemCode = HP:WaitForChild("RedeemCode"),
                Raygun = HP:WaitForChild("Raygun"),
                ChangeFavoriteStatus = HP:WaitForChild("ChangeFavoriteStatus"),
                GetMouseCF = HP:WaitForChild("GetMouseCF"),
                RequestPlaytime = HP:WaitForChild("RequestPlaytime"),
                MutationScroll = HP:WaitForChild("MutationScroll")
            }
        end
        adC_89 = (adC_89 + 149) % 176
    else
        if adC_89 * 80103473 + 12 + 5 <= adC_89 * 80103473 + 12 + 5 + 1 then
            IX = {
                EggData = require(adC_81:WaitForChild("EggData")),
                TowerData = require(adC_81:WaitForChild("TowerData")),
                PlantData = require(adC_81:WaitForChild("PlantData")),
                ShopData = require(adC_81:WaitForChild("ShopData")),
                GearData = require(adC_81:WaitForChild("GearData")),
                TotemData = require(adC_81:WaitForChild("TotemData")),
                BossData = require(adC_81:WaitForChild("BossData")),
                PurchasablePrices = require(adC_81:WaitForChild("PurchasablePrices")),
                MutationData = require(adC_81:WaitForChild("MutationData")),
                ItemNameParser = require(adC_81:WaitForChild("ItemNameParser")),
                QuestData = require(adC_81:WaitForChild("QuestData")),
                BountyData = require(adC_81:WaitForChild("BountyData")),
                GameInfo = require(adC_81:WaitForChild("GameInfo")),
                FusionData = require(adC_81:WaitForChild("FusionData")),
                BountyShopData = require(adC_81:WaitForChild("BountyShopData")),
                GetItemValue = require(adC_81:WaitForChild("GetItemValue")),
                WeatherData = require(adC_81:WaitForChild("WeatherData"))
            }
        else
            adC_81 = {
                MutationData = require(IX:WaitForChild("MutationData")),
                EggData = require(IX:WaitForChild("EggData")),
                GearData = require(IX:WaitForChild("GearData")),
                FusionData = require(IX:WaitForChild("FusionData")),
                BountyShopData = require(IX:WaitForChild("BountyShopData")),
                BossData = require(IX:WaitForChild("BossData")),
                QuestData = require(IX:WaitForChild("QuestData")),
                GameInfo = require(IX:WaitForChild("GameInfo")),
                ItemNameParser = require(IX:WaitForChild("ItemNameParser")),
                TowerData = require(IX:WaitForChild("TowerData")),
                TotemData = require(IX:WaitForChild("TotemData")),
                ShopData = require(IX:WaitForChild("ShopData")),
                PurchasablePrices = require(IX:WaitForChild("PurchasablePrices")),
                BountyData = require(IX:WaitForChild("BountyData")),
                GetItemValue = require(IX:WaitForChild("GetItemValue")),
                PlantData = require(IX:WaitForChild("PlantData")),
                WeatherData = require(IX:WaitForChild("WeatherData"))
            }
        end
        adC_89 = (adC_89 + 171) % 176
    end
until (adC_89 * 145 + 57) % 176 == 55
adC_26 = {}
for k, v in IX.ShopData.ShopOrders do
    adC_29 = k ~= "GearShop"
    adC_21 = k ~= "EggShop" and adC_29
    if adC_21 then
        for k, v in v do
            if not adC_26[v] then
                adC_26[v] = true
                table.insert(adC_50, v)
            end
        end
    end
end
table.sort(adC_50)
function fns.I6(a8)
    local LU = IX.EggData.getData(a8) or IX.GearData.getData(a8) or IX.TotemData.getData(a8)
    local LV = LU
    if LU then
        LU = LV.Cost.Value
    end
    local LV_1 = LU
    local LZ = if LV_1 then 1 else 0
    local LX = 1911 * LZ + 3082 * (1 - LZ)
    local LY = 3940 * LZ + 1091 * (1 - LZ)
    if not ((LX * 3434 + LY * 1067 + LX * LY) % 16777213 == 1518481) then
        LV_1 = 0
    end
    return LV_1
end
local IP = {}
for k, v in IX.BossData.Bosses do
    table.insert(IP, v.Name)
end
Ht, IA, Hp = nil, nil, nil
Ht = { "HatchTime", "InventorySpace", "Luck", "MoneyGain" }
IA = {
    "Common",
    "Rare",
    "Epic",
    "Legendary",
    "Mythic",
    "Divine",
    "Godly",
    "Secret",
    "Limited",
    "Exclusive",
    "Premium",
    "BOSS"
}
Hp = {}
for k, v in IA do
    Hp[v] = k
end
adC_21, adC_12 = nil, nil
adC_29 = 5
repeat
    adC_104 = (adC_29 * 1 + 1) % 2 + 1
    if adC_104 <= 1 then
        adC_104 = {
            "oojg",
            "uegqx",
            "jswspzpoqit",
            "apeezjuyg",
            "rbxwh",
            "aauw",
            "tmmjhyeu",
            "detwjokt",
            "chfszmwyxdj",
            "mqpefbkqs",
            "qfntisd",
            "akefushs",
            "wcjahtqcj"
        }
        if adC_104[(adC_29 * 12 + 101) % 13 + 1] < adC_104[(adC_29 * 12 + 101) % 13 + 1] then
            adC_12 = { "None", "Radiant", "Rainbow", "Gold" }
        else
            adC_21 = { "None", "Gold", "Rainbow", "Radiant" }
        end
        adC_29 = (adC_29 + 15) % 16
    else
        adC_104 = (vector.create((adC_29 * 7 + 1) % 11 + 1, (adC_29 * 7 + 9) % 13 + 1, (adC_29 * 8 + 6) % 17 + 1))
        adC_97 = (vector.create((adC_29 * 3 + 8) % 11 + 1, (adC_29 * 6 + 4) % 13 + 1, (adC_29 * 9 + 7) % 17 + 1))
        local ajx = vector.dot(adC_104, adC_97)
        if ajx * ajx >= vector.dot(adC_104, adC_104) * vector.dot(adC_97, adC_97) + 1 then
            adC_21 = {}
        else
            adC_12 = {}
        end
        adC_29 = (adC_29 + 15) % 16
    end
until (adC_29 * 9 + 8) % 16 == 3
adC_97 = { Gold = true, Rainbow = true, Radiant = true }
for k, v in pairs(IX.MutationData) do
    adC_29 = type(v) == "number" and not adC_97[k]
    if adC_29 then
        table.insert(adC_12, k)
    end
end
table.sort(adC_12)
adC_29 = {}
for i, child in adC_81.TotemData:GetChildren() do
    table.insert(adC_29, child.Name)
end
Je, adC_97 = nil, nil
adC_104 = 7
repeat
    adC_89 = { "uig", "oltdiughd", "pjwumywwyfe", "zwtadvqy", "dbmky", "eatstcy", "vghovydrf", "gnku" }
    if adC_89[(adC_104 * 1 + 61) % 8 + 1] <= adC_89[(adC_104 * 1 + 61) % 8 + 1] then
        table.sort(adC_29)
        Je = {}
        adC_97 = { "Mutation Sponge", "Raygun" }
    else
        table.sort(adC_97)
        adC_29 = {}
        Je = { "Mutation Sponge", "Raygun" }
    end
    adC_104 = (adC_104 + 5) % 8
until (adC_104 * 7 + 3) % 8 == 7
for i, child in adC_81.GearData:GetChildren() do
    if string.find(child.Name, "Scroll") then
        table.insert(Je, child.Name)
        table.insert(adC_97, child.Name)
    end
end
table.sort(Je)
I2 = nil
I2 = { "UPDATE3", "100KFAVS", "5MVISITS", "250KVISITS", "10KFAVS", "UPDATE2", "RELEASE" }
adC_26 = {
    "Plot",
    "Main Island",
    "Egg Shop",
    "Gear Shop",
    "Sell Shop",
    "Tree Shop",
    "Boss Summoner",
    "Fuse Machine",
    "Traveling Merchant"
}
adC_97 = IX.WeatherData.getAllWeathers()
adC_89 = {}
for k, v in IX.BountyShopData.Items do
    table.insert(adC_89, v.ItemName)
end
local Hv = {}
adC_104 = {}
for k, v in IX.FusionData.Fusions do
    adC_17 = string.format("%s + %s", v.Plant, v.Capybara)
    Hv[adC_17] = k
    table.insert(adC_104, adC_17)
end
adC_17 = {}
fns.adC_4 = #IX.PurchasablePrices.LanePrices
local adC_88 = 1
local adC_103 = fns.adC_4
while adC_88 <= adC_103 do
    local adC_80 = adC_88
    table.insert(adC_17, tostring(adC_80))
    adC_88 += 1
end
I3 = nil
fns.adC_4 = fns.fn317
local adC_94 = fns.adC_4(adC_81.PlantData)
local adC_101 = fns.adC_4(adC_81.TowerData)
I3 = {}
HM, adC_78 = nil, nil
local adC_86 = 5
repeat
    fns.adC_4 = (adC_86 * 1 + 0) % 3 + 1
    if fns.adC_4 <= 2 then
        if fns.adC_4 <= 1 then
            if ((HM or not HM) and (HM and adC_78) or (not adC_78 or not adC_86 or HM and adC_78)) and ((not adC_78 or not adC_78) and (not adC_78 and adC_78) or (not adC_86 or not HM or (adC_78 or adC_86))) or not (((HM or not HM) and (HM and adC_78) or (not adC_78 or not adC_86 or HM and adC_78)) and ((not adC_78 or not adC_78) and (not adC_78 and adC_78) or (not adC_86 or not HM or (adC_78 or adC_86)))) then
                adC_78 = fns.fn1141
            else
                HM = fns.fn1141
            end
            adC_86 = (adC_86 + 22) % 24
        else
            if (adC_86 and adC_78 and (not adC_86 or adC_78) or (adC_78 and adC_86 or (adC_86 or HM))) and ((not adC_86 and adC_86 or (not adC_86 or not adC_78)) and (not adC_86 or adC_78 or HM and not adC_86)) and (not HM and not adC_86 and (adC_86 and not HM) or (not HM or not HM or adC_78 and adC_78) or (HM or adC_78) and (not adC_86 and not adC_86) and (not HM or HM or not adC_78 and not HM)) and not ((adC_86 and adC_78 and (not adC_86 or adC_78) or (adC_78 and adC_86 or (adC_86 or HM))) and ((not adC_86 and adC_86 or (not adC_86 or not adC_78)) and (not adC_86 or adC_78 or HM and not adC_86)) and (not HM and not adC_86 and (adC_86 and not HM) or (not HM or not HM or adC_78 and adC_78) or (HM or adC_78) and (not adC_86 and not adC_86) and (not HM or HM or not adC_78 and not HM))) then
                I3(adC_78.TowerData)
                I3(adC_78.PlantData)
                table.sort(adC_81)
            else
                adC_78(adC_81.TowerData)
                adC_78(adC_81.PlantData)
                table.sort(I3)
            end
            adC_86 = (adC_86 + 19) % 24
        end
    else
        fns.adC_4 = (vector.create((adC_86 * 5 + 3) % 11 + 1, (adC_86 * 5 + 3) % 13 + 1, (adC_86 * 10 + 13) % 17 + 1))
        local agm = vector.floor(fns.adC_4) + vector.ceil(fns.adC_4 * -1)
        if vector.dot(agm, agm) == 0 then
            HM = {}
        else
            adC_78 = {}
        end
        adC_86 = (adC_86 + 16) % 24
    end
until (adC_86 * 5 + 17) % 24 == 15
HH, HA, IF, adC_72, I0, H6, Jh, H1, HF, HB, fns.adC_4, adC_47, adC_55, It, fns.adC_3, HT, adC_14, Js, IR, I4, IJ, HW, IC, Hk, Jo, fns.adC_6, Iw, Jk, HX, adC_67, fns.adC_1, IY, adC_59, Ik, Jp, Hs, Jq, H_, Iz, adC_8, Hu, Jf, HS, He, adC_9, Iu, HU, IB, Ie, Ji, HD, Ip, Ia, HI, Iv, Ju, I9, IS, I5, Hb, HZ, IN, Iy, Hh, IZ, IG, fns.adC_5, adC_65, adC_68 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local adC_109 = 58
repeat
    adC_81 = (adC_109 * 11 + 23) % 26 + 1
    if adC_81 <= 13 then
        if adC_81 <= 7 then
            if adC_81 <= 4 then
                if adC_81 <= 2 then
                    if adC_81 <= 1 then
                        if adC_109 * 20292983 + 6 + 2 <= adC_109 * 20292983 + 6 + 2 + 3 then
                            HD = fns.fn427
                            Ip = fns.fn1360
                            Ia = fns.fn132
                            HI = fns.fn179
                        else
                            Ip = fns.fn427
                            HD = fns.fn1360
                            HI = fns.fn132
                            Ia = fns.fn179
                        end
                        adC_109 = (adC_109 + 97) % 104
                    else
                        adC_86 = { "oxjqhhu", "qosvpbdoun", "dlwkiv", "pklrjp", "otrebemveha", "skrmd", "smgtrzylx", "mrwc" }
                        local ajD = adC_109
                        adC_78 = adC_86[ajD % 8 + 1]
                        if adC_78:len() <= adC_78:reverse():rep(ajD % 3 + 2):len() then
                            Iv = fns.fn41
                        else
                            IC = fns.fn41
                        end
                        adC_109 = (adC_109 + 71) % 104
                    end
                elseif adC_81 <= 3 then
                    adC_86 = {
                        "xigp",
                        "jgwmtrzxjt",
                        "hgyy",
                        "qwsvt",
                        "xfmwj",
                        "junkh",
                        "yxox",
                        "skvzgqdubkzh",
                        "oagpgxzwzz",
                        "doei",
                        "venaj",
                        "dnnydcjirxzt",
                        "czqtjpqexpkb"
                    }
                    if adC_86[(adC_109 * 59 + 109) % 13 + 1] <= adC_86[(adC_109 * 59 + 109) % 13 + 1] then
                        Ju = fns.fn257
                    else
                        Jo = fns.fn257
                    end
                    adC_109 = (adC_109 + 45) % 104
                else
                    local aft = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_109, 10), string.byte(tostring(I4))), 7)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(aft, 3085782476), 4), 2127879371) == bit32.lrotate(aft, 4) then
                        I9 = fns.fn1655
                    else
                        Iw = fns.fn1655
                    end
                    adC_109 = (adC_109 + 97) % 104
                end
            elseif adC_81 <= 6 then
                if adC_81 <= 5 then
                    local afP = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_109, 19), string.byte(tostring(adC_8))), 8)
                    if bit32.bxor(bit32.lrotate(bit32.bxor(afP, 3825378532), 8), 44360932) == bit32.lrotate(afP, 8) then
                        IS = fns.fn1371
                        I5 = fns.fn45
                        Hb = fns.fn1449
                    else
                        Hb = fns.fn1371
                        IS = fns.fn45
                        I5 = fns.fn1449
                    end
                    adC_109 = (adC_109 + 45) % 104
                else
                    adC_86 = (vector.create((adC_109 * 6 + 9) % 11 + 1, (adC_109 * 4 + 1) % 13 + 1, (adC_109 * 15 + 1) % 17 + 1))
                    adC_78 = (vector.create((adC_109 * 1 + 9) % 11 + 1, (adC_109 * 6 + 4) % 13 + 1, (adC_109 * 12 + 9) % 17 + 1))
                    adC_39 = (vector.create((adC_109 * 3 + 9) % 11 + 1, (adC_109 * 5 + 12) % 13 + 1, (adC_109 * 1 + 14) % 17 + 1))
                    adC_31 = (vector.create((adC_109 * 1 + 1) % 5 + 1, (adC_109 * 1 + 1) % 7 + 1, (adC_109 * 2 + 1) % 9 + 1))
                    if vector.dot(vector.cross(adC_86, (vector.cross(adC_78, adC_39))), adC_31) == vector.dot(adC_78 * vector.dot(adC_86, adC_39) - adC_39 * vector.dot(adC_86, adC_78), adC_31) + 4 then
                        Iy = fns.fn1195
                        HZ = { Garden = {}, Capybara = {}, Totem = {}, WalkingPlant = {} }
                        HF = fns.fn1146
                        IN = fns.fn1283
                    else
                        HZ = fns.fn1195
                        HF = { WalkingPlant = {}, Garden = {}, Capybara = {}, Totem = {} }
                        IN = fns.fn1146
                        Iy = fns.fn1283
                    end
                    adC_109 = (adC_109 + 19) % 104
                end
            else
                adC_86 = (vector.create((adC_109 * 3 + 8) % 11 + 1, (adC_109 * 10 + 8) % 13 + 1, (adC_109 * 9 + 17) % 17 + 1))
                local agn = vector.floor(adC_86) + vector.ceil(adC_86 * -1)
                if vector.dot(agn, agn) == 0 then
                    Hh = fns.fn35
                    IZ = fns.fn1344
                else
                    IZ = fns.fn35
                    Hh = fns.fn1344
                end
                adC_109 = (adC_109 + 45) % 104
            end
        elseif adC_81 <= 10 then
            if adC_81 <= 9 then
                if adC_81 <= 8 then
                    adC_86 = (vector.create((adC_109 * 2 + 7) % 11 + 1, (adC_109 * 5 + 13) % 13 + 1, (adC_109 * 8 + 11) % 17 + 1))
                    adC_78 = (vector.create((adC_109 * 2 + 7) % 11 + 1, (adC_109 * 10 + 5) % 13 + 1, (adC_109 * 4 + 10) % 17 + 1))
                    local ah1 = vector.cross(adC_86, adC_78)
                    local ah2 = vector.dot(adC_86, adC_78)
                    if vector.dot(ah1, ah1) + ah2 * ah2 == vector.dot(adC_86, adC_86) * vector.dot(adC_78, adC_78) + 5 then
                        IG = {}
                        HB = function(j_)
                            if HB[j_] or not j_.Parent then
                                return
                            end
                            HB[j_] = j_.Parent
                            pcall(function()
                                j_.Parent = nil
                            end)
                        end
                        adC_65 = function()
                            for k, v in pairs(HB) do
                                local Tv = k
                                local Tx = v
                                pcall(function()
                                    Tv.Parent = Tx
                                end)
                            end
                            table.clear(HB)
                        end
                        fns.adC_5 = fns.fn1033
                    else
                        HB = {}
                        IG = function(j_)
                            if HB[j_] or not j_.Parent then
                                return
                            end
                            HB[j_] = j_.Parent
                            pcall(function()
                                j_.Parent = nil
                            end)
                        end
                        fns.adC_5 = function()
                            for k, v in pairs(HB) do
                                local Tv = k
                                local Tx = v
                                pcall(function()
                                    Tv.Parent = Tx
                                end)
                            end
                            table.clear(HB)
                        end
                        adC_65 = fns.fn1033
                    end
                    adC_109 = (adC_109 + 97) % 104
                else
                    adC_86 = {
                        "hypas",
                        "gkwluvlepe",
                        "sby",
                        "nnb",
                        "ebwoiwsidj",
                        "wjdzl",
                        "mhffrcp",
                        "biaxtzaoozm",
                        "dro",
                        "cdrlrkyegxz",
                        "arup",
                        "qts"
                    }
                    if adC_86[(adC_109 * 47 + 91) % 12 + 1] < adC_86[(adC_109 * 47 + 91) % 12 + 1] then
                        adC_74 = fns.adC_4:CreateWindow({
                            Footer = { { Text = Ha, Copyable = true }, Ii, "|" },
                            Icon = 12645376577,
                            Title = "Ouroboros Hub",
                            NotifySide = "Right",
                            CornerRadius = 10,
                            ShowCustomCursor = false
                        })
                    else
                        fns.adC_4 = Ha:CreateWindow({
                            Title = "Ouroboros Hub",
                            Footer = { { Text = Ii, Copyable = true }, "|", adC_74 },
                            Icon = 12645376577,
                            NotifySide = "Right",
                            ShowCustomCursor = false,
                            CornerRadius = 10
                        })
                    end
                    adC_109 = (adC_109 + 19) % 104
                end
            else
                if (not Js or Jq) and (Jq and Js) or not Jq and not Iw and (Iw and not Jf) or (not Jf and Js or not Js and not Jq) and (Jf and not Js or (not Jf or not Iw)) or not ((not Js or Jq) and (Jq and Js) or not Jq and not Iw and (Iw and not Jf) or (not Jf and Js or not Js and not Jq) and (Jf and not Js or (not Jf or not Iw))) then
                    adC_47 = {
                        Info = fns.adC_4:AddTab("Info", "info"),
                        Main = fns.adC_4:AddTab("Main", "egg"),
                        Shop = fns.adC_4:AddTab("Shop", "shopping-bag"),
                        Fuse = fns.adC_4:AddTab("Fuse", "flask-conical"),
                        Plot = fns.adC_4:AddTab("Plot", "layout-grid"),
                        Bounty = fns.adC_4:AddTab("Bounty", "target"),
                        Rewards = fns.adC_4:AddTab("Rewards", "gift"),
                        Visuals = fns.adC_4:AddTab("Visuals", "eye"),
                        Settings = fns.adC_4:AddTab("Settings", "settings")
                    }
                else
                    fns.adC_4 = {
                        Settings = adC_47:AddTab("Settings", "settings"),
                        Rewards = adC_47:AddTab("Rewards", "gift"),
                        Info = adC_47:AddTab("Info", "info"),
                        Plot = adC_47:AddTab("Plot", "layout-grid"),
                        Shop = adC_47:AddTab("Shop", "shopping-bag"),
                        Bounty = adC_47:AddTab("Bounty", "target"),
                        Fuse = adC_47:AddTab("Fuse", "flask-conical"),
                        Main = adC_47:AddTab("Main", "egg"),
                        Visuals = adC_47:AddTab("Visuals", "eye")
                    }
                end
                adC_109 = (adC_109 + 71) % 104
            end
        elseif adC_81 <= 12 then
            if adC_81 <= 11 then
                if adC_109 * 49090123 + 3 + 1 <= adC_109 * 49090123 + 3 + 1 + 2 then
                    adC_47.Capybaras = adC_47.Main:AddSubTab("Capybaras", "egg")
                    adC_47.Combat = adC_47.Main:AddSubTab("Combat", "crosshair")
                    adC_47.Buy = adC_47.Shop:AddSubTab("Buy", "shopping-cart")
                    adC_47.Inventory = adC_47.Shop:AddSubTab("Inventory", "backpack")
                    adC_47.Fusion = adC_47.Fuse:AddSubTab("Fusion", "flask-conical")
                    adC_47.Mutations = adC_47.Fuse:AddSubTab("Mutations", "sparkles")
                    adC_47.Growth = adC_47.Plot:AddSubTab("Growth", "sprout")
                    adC_47.Extras = adC_47.Plot:AddSubTab("Extras", "wrench")
                    adC_55 = { [adC_47.Main] = true, [adC_47.Shop] = true, [adC_47.Fuse] = true, [adC_47.Plot] = true }
                    adC_68 = fns.fn1187
                else
                    adC_68.Capybaras = adC_68.Main:AddSubTab("Capybaras", "egg")
                    adC_68.Combat = adC_68.Main:AddSubTab("Combat", "crosshair")
                    adC_68.Buy = adC_68.Shop:AddSubTab("Buy", "shopping-cart")
                    adC_68.Inventory = adC_68.Shop:AddSubTab("Inventory", "backpack")
                    adC_68.Fusion = adC_68.Fuse:AddSubTab("Fusion", "flask-conical")
                    adC_68.Mutations = adC_68.Fuse:AddSubTab("Mutations", "sparkles")
                    adC_68.Growth = adC_68.Plot:AddSubTab("Growth", "sprout")
                    adC_68.Extras = adC_68.Plot:AddSubTab("Extras", "wrench")
                    adC_47 = { [adC_68.Main] = true, [adC_68.Fuse] = true, [adC_68.Shop] = true, [adC_68.Plot] = true }
                    adC_55 = fns.fn1187
                end
                adC_109 = (adC_109 + 45) % 104
            else
                adC_86 = { "fcubxho", "hszheunpiiw", "gdzr", "ziznw", "yokerjzntc", "ssogncivis", "lnspwofnil", "pdhf" }
                local ahR = adC_109
                adC_78 = adC_86[ahR % 8 + 1]
                if adC_78:len() <= adC_78:gsub("(.)", "%1%1", ahR % 3 % 2 + 1):len() then
                    It = fns.fn1087
                else
                    HB = fns.fn1087
                end
                adC_109 = (adC_109 + 71) % 104
            end
        else
            local af0 = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_109, 11), string.byte(tostring(Iu))), 24)
            if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(af0, 442040255), 1776282919), (bit32.bxor(bit32.band(af0, 3852927040), 3495635372))), 1776282919), 3495635372) ~= af0 then
                adC_14 = fns.fn1000
                fns.adC_3 = fns.fn389
                HT = fns.fn405
            else
                fns.adC_3 = fns.fn1000
                HT = fns.fn389
                adC_14 = fns.fn405
            end
            adC_109 = (adC_109 + 45) % 104
        end
    elseif adC_81 <= 20 then
        if adC_81 <= 17 then
            if adC_81 <= 15 then
                if adC_81 <= 14 then
                    if adC_109 * 127613295 + 6 + 6 >= adC_109 * 127613295 + 6 + 6 + 1 then
                        HH = fns.fn1804
                        Js = 5
                        I4 = fns.fn1107
                        IR = fns.fn411
                    else
                        Js = fns.fn1804
                        HH = 5
                        IR = fns.fn1107
                        I4 = fns.fn411
                    end
                    adC_109 = (adC_109 + 45) % 104
                else
                    adC_86 = {
                        "srqpayxrt",
                        "yhnup",
                        "ygvylxnij",
                        "kuokoizujx",
                        "ujzedkr",
                        "cnpnqpent",
                        "jfiemsjwim",
                        "qrkgnksxaov",
                        "mbmxcr",
                        "lfhffdq",
                        "ndrrsix",
                        "fcah",
                        "jbs",
                        "nsy"
                    }
                    if adC_86[(adC_109 * 2 + 99) % 14 + 1] < adC_86[(adC_109 * 2 + 99) % 14 + 1] then
                        Hk = fns.fn1420
                        IJ = fns.fn1336
                        HW = fns.fn962
                        IC = fns.fn998
                    else
                        IJ = fns.fn1420
                        HW = fns.fn1336
                        IC = fns.fn962
                        Hk = fns.fn998
                    end
                    adC_109 = (adC_109 + 97) % 104
                end
            elseif adC_81 <= 16 then
                if adC_109 * 114784579 + 13 + 7 <= adC_109 * 114784579 + 13 + 7 + 3 then
                    Jo = fns.fn594
                    fns.adC_6 = fns.fn743
                else
                    fns.adC_6 = fns.fn594
                    Jo = fns.fn743
                end
                adC_109 = (adC_109 + 71) % 104
            else
                adC_86 = {
                    "nxqsweylb",
                    "fmcl",
                    "sro",
                    "hzjmkb",
                    "equcsocdieqg",
                    "prromvusks",
                    "ukohao",
                    "rdghrikbxp",
                    "eddvqjbezoa",
                    "cuxdjmjx",
                    "zhasqxmqxngs",
                    "eaw"
                }
                if adC_86[(adC_109 * 87 + 26) % 12 + 1] <= adC_86[(adC_109 * 87 + 26) % 12 + 1] then
                    Iw = fns.fn167
                    Jk = fns.fn514
                    HX = function(ek, el)
                        local O4_2
                        local O3_3
                        local O2 = Jk(ek)
                        if not O2 then
                            return false
                        elseif ek:GetAttribute("Favorited") == el then
                            return true
                        else
                            local Pa = if not adC_14(ek) then 1 else 0
                            if Pa == 1 then
                                return false
                            end
                            O3_3, O4_2 = pcall(function()
                                return HP.ChangeFavoriteStatus:InvokeServer(O2, el)
                            end)
                            if not O3_3 or O4_2 ~= true then
                                return false
                            end
                            local O3_4 = os.clock() + 1
                            while os.clock() < O3_4 do
                                if ek:GetAttribute("Favorited") == el then
                                    return true
                                end
                                task.wait(0.05)
                            end
                            return ek:GetAttribute("Favorited") == el
                        end
                    end
                    adC_67 = fns.fn1293
                else
                    HX = fns.fn167
                    adC_67 = fns.fn514
                    Iw = function(ek, el)
                        local O4_1
                        local O3_1
                        local O2 = Jk(ek)
                        if not O2 then
                            return false
                        elseif ek:GetAttribute("Favorited") == el then
                            return true
                        else
                            local Pa = if not adC_14(ek) then 1 else 0
                            if Pa == 1 then
                                return false
                            end
                            O3_1, O4_1 = pcall(function()
                                return HP.ChangeFavoriteStatus:InvokeServer(O2, el)
                            end)
                            if not O3_1 or O4_1 ~= true then
                                return false
                            end
                            local O3_2 = os.clock() + 1
                            while os.clock() < O3_2 do
                                if ek:GetAttribute("Favorited") == el then
                                    return true
                                end
                                task.wait(0.05)
                            end
                            return ek:GetAttribute("Favorited") == el
                        end
                    end
                    Jk = fns.fn1293
                end
                adC_109 = (adC_109 + 71) % 104
            end
        elseif adC_81 <= 19 then
            if adC_81 <= 18 then
                if adC_109 * 42609167 + 10 + 4 >= adC_109 * 42609167 + 10 + 4 + 1 then
                    IY = fns.fn918
                    fns.adC_1 = fns.fn616
                else
                    fns.adC_1 = fns.fn918
                    IY = fns.fn616
                end
                adC_109 = (adC_109 + 71) % 104
            else
                adC_86 = {
                    "uzybptb",
                    "hjeejkqaakxt",
                    "jnnnxt",
                    "zheyznnivbv",
                    "gctehvqdsxrd",
                    "nfqsp",
                    "apvmtc",
                    "ekkkh",
                    "eljkh",
                    "lhhfbfpupgx",
                    "mauvur"
                }
                if adC_86[(adC_109 * 27 + 73) % 11 + 1] <= adC_86[(adC_109 * 27 + 73) % 11 + 1] then
                    adC_59 = fns.fn1612
                    Ik = fns.fn1050
                    Jp = fns.fn33
                else
                    Jp = fns.fn1612
                    adC_59 = fns.fn1050
                    Ik = fns.fn33
                end
                adC_109 = (adC_109 + 45) % 104
            end
        else
            adC_86 = {
                "tvjefzbmba",
                "aspf",
                "qvanrbyu",
                "hieqoarwywv",
                "sbiuzov",
                "rzcr",
                "jhqqsk",
                "igdsdrmuqk",
                "xshmvt",
                "kwouhu"
            }
            if adC_86[(adC_109 * 29 + 16) % 10 + 1] <= adC_86[(adC_109 * 29 + 16) % 10 + 1] then
                HA = {}
                IF = 0
                Hs = fns.fn1492
            else
                Hs = {}
                HA = 0
                IF = fns.fn1492
            end
            adC_109 = (adC_109 + 97) % 104
        end
    elseif adC_81 <= 23 then
        if adC_81 <= 22 then
            if adC_81 <= 21 then
                adC_86 = (vector.create((adC_109 * 6 + 4) % 11 + 1, (adC_109 * 7 + 7) % 13 + 1, (adC_109 * 3 + 16) % 17 + 1))
                adC_78 = (vector.create((adC_109 * 6 + 2) % 11 + 1, (adC_109 * 9 + 10) % 13 + 1, (adC_109 * 3 + 17) % 17 + 1))
                adC_39 = (vector.create((adC_109 * 2 + 7) % 11 + 1, (adC_109 * 6 + 12) % 13 + 1, (adC_109 * 5 + 10) % 17 + 1))
                adC_31 = (vector.create((adC_109 * 3 + 5) % 5 + 1, (adC_109 * 1 + 3) % 7 + 1, (adC_109 * 5 + 1) % 9 + 1))
                if vector.dot(vector.cross(adC_86, (vector.cross(adC_78, adC_39))), adC_31) == vector.dot(adC_78 * vector.dot(adC_86, adC_39) - adC_39 * vector.dot(adC_86, adC_78), adC_31) + 3 then
                    adC_67 = fns.fn161
                else
                    Jq = fns.fn161
                end
                adC_109 = (adC_109 + 45) % 104
            else
                adC_86 = {
                    "xsszwgcoznwt",
                    "obxwuwwevrg",
                    "itfmr",
                    "efglvrmsp",
                    "whiwi",
                    "irrftyobspdw",
                    "pakjeydxqjtp",
                    "wudhac",
                    "kravyu",
                    "clckyl",
                    "owifmpcsdg",
                    "jbrdhgcvmouk",
                    "ysajwk",
                    "tprtnbakmcd",
                    "ccdaubrhjwo",
                    "fvolubrutbsk"
                }
                if adC_86[(adC_109 * 22 + 31) % 16 + 1] < adC_86[(adC_109 * 22 + 31) % 16 + 1] then
                    Iz = fns.fn995
                    H_ = fns.fn635
                else
                    H_ = fns.fn995
                    Iz = fns.fn635
                end
                adC_109 = (adC_109 + 71) % 104
            end
        else
            if (not HT or I5) and (not adC_55 or adC_55) and ((HT or IC) and (HT or not I5)) and not ((not HT or I5) and (not adC_55 or adC_55) and ((HT or IC) and (HT or not I5))) then
                Jf = 8
                Hu = 0.26
                adC_72 = fns.fn1271
                I0 = fns.fn240
                adC_8 = fns.fn1446
            else
                adC_72 = 8
                I0 = 0.26
                adC_8 = fns.fn1271
                Hu = fns.fn240
                Jf = fns.fn1446
            end
            adC_109 = (adC_109 + 19) % 104
        end
    elseif adC_81 <= 25 then
        if adC_81 <= 24 then
            if not HA or not fns.adC_1 or Jk and fns.adC_1 or (Jk and not fns.adC_1 or not fns.adC_1 and not Iy) or not (not HA or not fns.adC_1 or Jk and fns.adC_1 or (Jk and not fns.adC_1 or not fns.adC_1 and not Iy)) then
                HS = fns.fn1659
                He = fns.fn504
                H6 = H3:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Root"):WaitForChild("Frames"):WaitForChild("Confirm")
            else
                H3 = fns.fn1659
                H6 = fns.fn504
                He = HS:WaitForChild("PlayerGui"):WaitForChild("MainGui"):WaitForChild("Root"):WaitForChild("Frames"):WaitForChild("Confirm")
            end
            adC_109 = (adC_109 + 97) % 104
        else
            adC_81 = {
                "ieqhoeevbx",
                "fxlv",
                "rxhwxppt",
                "qlkhvnmzbja",
                "gzxtta",
                "dkscwfjkf",
                "awe",
                "tpk",
                "wvddnbhzm"
            }
            local ah4 = adC_109
            adC_86 = adC_81[ah4 % 9 + 1]
            if adC_86:len() >= adC_86:reverse():rep(ah4 % 3 + 2):len() then
                Iu = {}
                adC_9 = 0
                H1 = fns.fn263
                task.spawn(fns.worker)
                Jh = fns.fn766
            else
                Jh = {}
                H1 = 0
                adC_9 = fns.fn263
                task.spawn(fns.worker)
                Iu = fns.fn766
            end
            adC_109 = (adC_109 + 45) % 104
        end
    else
        adC_81 = {
            "xzanlc",
            "ggxlbqig",
            "jkhhoyw",
            "ttnwwcfmor",
            "ibbjlcjgdz",
            "hldcwspydd",
            "vnyt",
            "rhlvn",
            "lzdd"
        }
        local ahO = adC_109
        adC_86 = adC_81[ahO % 9 + 1]
        if adC_86:len() >= adC_86:reverse():rep(ahO % 3 + 2):len() then
            Ji = fns.fn1220
            Ie = fns.fn790
            HU = fns.fn938
            IB = fns.fn1809
        else
            HU = fns.fn1220
            IB = fns.fn790
            Ie = fns.fn938
            Ji = fns.fn1809
        end
        adC_109 = (adC_109 + 71) % 104
    end
until (adC_109 * 47 + 9) % 104 == 83
for k, v in adC_47 do
    if not adC_55[v] then
        adC_68(v)
    end
end
Hi, H9, Label, Label2, Label3, Label4, Label5, Label6, Label7, HL, Label8, HG, Label9, HC, Label10 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
adC_81 = 10
repeat
    fns.adC_4 = (adC_81 * 1 + 0) % 2 + 1
    if fns.adC_4 <= 1 then
        if (adC_81 * 3 + 5) * 21 % 4 == ((adC_81 * 3 + 5) * 21 + 1) % 4 then
            H9 = "Unknown"
        else
            Hi = "Unknown"
        end
        adC_81 = (adC_81 + 1) % 16
    else
        fns.adC_4 = (vector.create((adC_81 * 5 + 1) % 11 + 1, (adC_81 * 5 + 6) % 13 + 1, (adC_81 * 14 + 9) % 17 + 1))
        adC_109 = (vector.create((adC_81 * 2 + 4) % 11 + 1, (adC_81 * 9 + 1) % 13 + 1, (adC_81 * 10 + 10) % 17 + 1))
        adC_86 = (vector.create((adC_81 * 5 + 1) % 5 + 1, (adC_81 * 1 + 2) % 7 + 1, (adC_81 * 2 + 1) % 9 + 1))
        if math.abs((vector.angle(fns.adC_4, adC_109, adC_86))) - math.abs((vector.angle(adC_109, fns.adC_4, adC_86))) == 0 then
            pcall(fns.fn568)
        else
            pcall(fns.fn568)
        end
        adC_81 = (adC_81 + 11) % 16
    end
until (adC_81 * 13 + 2) % 16 == 0
fns.adC_4 = nil
adC_109 = 2
repeat
    adC_81 = (adC_109 * 1 + 1) % 2 + 1
    if adC_81 <= 1 then
        adC_81 = (vector.create((adC_109 * 5 + 6) % 11 + 1, (adC_109 * 5 + 1) % 13 + 1, (adC_109 * 11 + 1) % 17 + 1))
        adC_86 = (vector.create((adC_109 * 3 + 6) % 11 + 1, (adC_109 * 1 + 3) % 13 + 1, (adC_109 * 7 + 1) % 17 + 1))
        local agi = vector.dot(adC_81, adC_86)
        if agi * agi <= vector.dot(adC_81, adC_81) * vector.dot(adC_86, adC_86) then
            fns.adC_4:AddLabel(adC_69("User", H3.Name, Ij), true)
            fns.adC_4:AddLabel(adC_69("Status", "Keyless", Ij), true)
            fns.adC_4:AddLabel(adC_69("Executor", Hi, Ij), true)
        else
            H3:AddLabel(fns.adC_4("User", Hi.Name, adC_69), true)
            H3:AddLabel(fns.adC_4("Status", "Keyless", adC_69), true)
            H3:AddLabel(fns.adC_4("Executor", Ij, adC_69), true)
        end
        adC_109 = (adC_109 + 13) % 16
    else
        if (adC_109 * 3 + 1) * 21 % 4 == ((adC_109 * 3 + 1) * 21 + 10) % 4 then
            adC_47 = fns.adC_4.Info:AddLeftGroupbox("Account", "circle-user")
        else
            fns.adC_4 = adC_47.Info:AddLeftGroupbox("Account", "circle-user")
        end
        adC_109 = (adC_109 + 7) % 16
    end
until (adC_109 * 11 + 3) % 16 == 5
adC_78, Hq, adC_86 = nil, nil, nil
adC_81 = 22
repeat
    fns.adC_4 = (adC_81 * 2 + 2) % 3 + 1
    if fns.adC_4 <= 2 then
        if fns.adC_4 <= 1 then
            fns.adC_4 = (vector.create((adC_81 * 5 + 8) % 11 + 1, (adC_81 * 2 + 3) % 13 + 1, (adC_81 * 9 + 11) % 17 + 1))
            adC_109 = (vector.create((adC_81 * 2 + 2) % 11 + 1, (adC_81 * 10 + 8) % 13 + 1, (adC_81 * 9 + 7) % 17 + 1))
            adC_68 = (vector.create((adC_81 * 4 + 5) % 11 + 1, (adC_81 * 9 + 1) % 13 + 1, (adC_81 * 13 + 17) % 17 + 1))
            if vector.dot(vector.cross(fns.adC_4, adC_109), adC_68) == vector.dot(vector.cross(adC_109, adC_68), fns.adC_4) + 2 then
                Hq = #adC_86 > 18
            else
                adC_86 = #Hq > 18
            end
            adC_81 = (adC_81 + 20) % 24
        else
            if adC_81 * 92521149 + 3 + 1 >= adC_81 * 92521149 + 3 + 1 + 3 then
                adC_74 = IM.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                adC_74:AddLabel(adC_69(H9 .. " [" .. tostring(game.PlaceId) .. "]", adC_78), true)
                adC_74:AddLabel(If("Place ID", tostring(game.PlaceId), adC_78), true)
                Hg = adC_74:AddLabel(If("Session time", "0s", adC_47), true)
            else
                adC_78 = adC_47.Info:AddLeftGroupbox("Game Info", "gamepad-2")
                adC_78:AddLabel(IM(adC_74 .. " [" .. tostring(game.PlaceId) .. "]", Hg), true)
                adC_78:AddLabel(adC_69("Place ID", tostring(game.PlaceId), Hg), true)
                H9 = adC_78:AddLabel(adC_69("Session time", "0s", If), true)
            end
            adC_81 = (adC_81 + 20) % 24
        end
    else
        local af1 = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_81, 5), string.byte(tostring(adC_78))), 29)
        if bit32.bxor(bit32.lrotate(bit32.bxor(af1, 2185999992), 0), 2185999992) == bit32.lrotate(af1, 0) then
            Hq = tostring(game.JobId)
        else
            adC_78 = tostring(game.JobId)
        end
        adC_81 = (adC_81 + 5) % 24
    end
until (adC_81 * 19 + 15) % 24 == 16
if adC_86 then
    adC_81 = 2
    repeat
        if (adC_81 * 2 + 5) * 16 % 3 == ((adC_81 * 2 + 5) * 16 + 3) % 3 then
            adC_86 = string.sub(Hq, 1, 18) .. "..."
        else
            Hq = string.sub(adC_86, 1, 18) .. "..."
        end
        adC_81 = (adC_81 + 1) % 4
    until (adC_81 * 1 + 1) % 4 == 0
end
adC_81 = adC_86 or Hq
adC_109 = adC_81
adC_78:AddLabel(adC_69("Server", adC_109, adC_58), true)
adC_78:AddButton({ Text = "Copy join script (Job ID)", Func = fns.onCopyJoinScript_JobID })
adC_68 = adC_47.Info:AddLeftGroupbox("Ouroboros Hub", "sparkles")
if (adC_68 and not adC_68 or (not adC_68 or false) or false) and not (adC_68 and not adC_68 or (not adC_68 or false) or false) then
    HJ:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    HJ:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    HJ:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    HJ:AddButton({ Text = "Copy Discord Invite", Func = adC_68 })
else
    adC_68:AddLabel("Every script in the hub is keyless. No key systems, no checkpoints, no linkvertise.", true)
    adC_68:AddLabel("The Discord has ready made configs, dupe methods, giveaways, and early access to new scripts.", true)
    adC_68:AddLabel("Requests get taken seriously. A lot of what is in this script started as a Discord message.", true)
    adC_68:AddButton({ Text = "Copy Discord Invite", Func = HJ })
end
adC_81 = adC_47.Info:AddRightGroupbox("Scripts", "package")
adC_81:AddLabel(IM("Included in this hub", adC_58), true)
adC_81:AddLabel(IM(adC_74, Hg), true)
adC_109 = adC_47.Info:AddRightGroupbox("Features", "list")
adC_109:AddLabel(IM("Auto Buy Pets and Gears", Hg), true)
adC_109:AddLabel(IM("Auto Buy Merchant", Hg), true)
adC_109:AddLabel(IM("Auto Place and Hatch Eggs", Hg), true)
adC_109:AddLabel(IM("Auto Upgrade Placed Capybaras", Hg), true)
adC_109:AddLabel(IM("Auto Pick Up Capybaras", Hg), true)
adC_109:AddLabel(IM("Auto Buy Bounty Shop", Hg), true)
adC_109:AddLabel(IM("Auto Fuse", If), true)
adC_109:AddLabel(IM("Auto Mutations", If), true)
adC_109:AddLabel(IM("Auto Place Totems", Ij), true)
adC_109:AddLabel(IM("Auto Manage Pots", Ij), true)
adC_109:AddLabel(IM("Auto Favorite", adC_58), true)
adC_109:AddLabel(IM("Weather Notifier", adC_58), true)
adC_109:AddLabel(IM("Auto Farm", If), true)
adC_109:AddLabel(IM("Auto Equip Best", If), true)
adC_109:AddLabel(IM("Auto Summon Bosses", If), true)
adC_109:AddLabel(IM("Auto Level Up", Ij), true)
adC_109:AddLabel(IM("Auto Buy Lanes and Pots", Ij), true)
adC_109:AddLabel(IM("Auto Collect Money", Ij), true)
adC_109:AddLabel(IM("Auto Sell", adC_58), true)
adC_109:AddLabel(IM("Auto Bounty Turn In", Ij), true)
adC_109:AddLabel(IM("Hide Other Plots", adC_58), true)
adC_109:AddLabel(IM("Auto Claim Rewards", Ij), true)
adC_109:AddLabel(IM("Visuals and Movement", adC_58), true)
adC_74 = adC_47.Info:AddRightGroupbox("Socials", "link")
adC_74:AddButton({ Text = "Discord", Func = HJ })
adC_74:AddButton({ Text = "Rscripts", Func = fns.onRscripts })
fns.adC_4 = adC_47.Info:AddRightGroupbox("FAQ", "circle-help")
fns.adC_4:AddLabel("Where do I get a good config?", true)
fns.adC_4:AddLabel("Join the Discord, the config channel has configs shared for every script.", true)
fns.adC_4:AddLabel("How do I import / export configs?", true)
fns.adC_4:AddLabel("Join the Discord, the guide is pinned and people share config links daily.", true)
fns.adC_4:AddLabel("How do I report bugs?", true)
fns.adC_4:AddLabel("Join the Discord and post it in the bugs channel.", true)
fns.adC_4:AddLabel("How do I make suggestions?", true)
fns.adC_4:AddLabel("Join the Discord and drop it in suggestions, most of them get added.", true)
fns.adC_4:AddLabel("How do I get help or updates?", true)
fns.adC_4:AddLabel("Join the Discord, updates and support are posted there first.", true)
adC_74 = adC_47.Capybaras:AddLeftGroupbox("Auto Place Eggs", "egg")
adC_74:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false })
adC_74:AddDropdown("PlaceEggs", { Text = "Eggs", Values = Hc, Default = {}, Multi = true })
adC_74:AddToggle("PlaceAnyEgg", { Text = "Place Any Egg", Default = true })
adC_74:AddSlider("PlaceDelay", { Text = "Loop Delay", Default = 1, Min = 0.3, Max = 15, Rounding = 1 })
adC_109 = adC_47.Capybaras:AddLeftGroupbox("Auto Hatch Eggs", "hammer")
adC_109:AddToggle("AutoHatch", { Text = "Auto Hatch Eggs", Default = false })
adC_109:AddSlider("HatchDelay", { Text = "Loop Delay", Default = 2, Min = 0.5, Max = 20, Rounding = 1 })
adC_74 = adC_47.Capybaras:AddLeftGroupbox("Auto Upgrade Placed", "arrow-up-circle")
adC_74:AddToggle("AutoUpgradePlaced", { Text = "Replace Weakest With Better", Default = false })
adC_74:AddToggle("UpgradeUseEggs", { Text = "Allow Eggs As Replacement", Default = true })
adC_74:AddSlider("UpgradeMargin", { Text = "Minimum Improvement %", Default = 20, Min = 0, Max = 200, Rounding = 0 })
adC_74:AddSlider("UpgradeDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
Label = adC_74:AddLabel(adC_69("Weakest placed", "none", If), true)
adC_109 = nil
fns.adC_4 = 3
repeat
    local age = bit32.rrotate(bit32.bxor(bit32.lrotate(fns.adC_4, 16), string.byte(tostring(adC_109))), 26)
    if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(age, 2951678373), 1407551608), (bit32.bxor(bit32.band(age, 1343288922), 3107401699))), 1407551608), 3107401699) == age then
        adC_109 = adC_47.Capybaras:AddLeftGroupbox("Auto Pick Up Capybaras", "hand")
        adC_109:AddToggle("AutoPickUp", { Text = "Auto Pick Up Capybaras", Default = false })
        adC_109:AddDropdown("PickUpRarities", { Text = "Rarities", Values = adC_101, Default = {}, Multi = true })
        adC_109:AddToggle("PickUpAllRarities", { Text = "Any Rarity", Default = false })
        adC_109:AddDropdown("PickUpVariants", { Text = "Variants", Values = adC_21, Default = {}, Multi = true })
        adC_109:AddToggle("PickUpAnyVariant", { Text = "Any Variant", Default = true })
        adC_109:AddToggle("PickUpRequireMutation", { Text = "Require Mutation", Default = false })
        adC_109:AddDropdown("PickUpMutations", { Text = "Mutations", Values = adC_12, Default = {}, Multi = true })
        adC_109:AddDropdown("PickUpLanes", { Text = "Lanes", Values = adC_17, Default = {}, Multi = true })
        adC_109:AddToggle("PickUpAnyLane", { Text = "Any Lane", Default = true })
        adC_109:AddSlider("PickUpMinSize", { Text = "Minimum Size", Default = 0, Min = 0, Max = 10, Rounding = 1 })
        adC_109:AddSlider("PickUpMaxSize", { Text = "Maximum Size", Default = 10, Min = 0, Max = 10, Rounding = 1 })
        adC_109:AddInput("PickUpMaxDps", { Text = "Maximum DPS (0 = off)", Default = "0", Numeric = true, Finished = true })
        adC_109:AddSlider("PickUpKeepBest", { Text = "Keep Strongest", Default = 0, Min = 0, Max = 30, Rounding = 0 })
        adC_109:AddSlider("PickUpPerCycle", { Text = "Pick Ups Per Cycle", Default = 3, Min = 1, Max = 30, Rounding = 0 })
        adC_109:AddSlider("PickUpDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 120, Rounding = 1 })
        Label2 = adC_109:AddLabel(adC_69("Placed capybaras", "0", If), true)
    else
        adC_47 = adC_101.Capybaras:AddLeftGroupbox("Auto Pick Up Capybaras", "hand")
        adC_47:AddToggle("AutoPickUp", { Text = "Auto Pick Up Capybaras", Default = false })
        adC_47:AddDropdown("PickUpRarities", { Values = adC_21, Multi = true, Default = {}, Text = "Rarities" })
        adC_47:AddToggle("PickUpAllRarities", { Text = "Any Rarity", Default = false })
        adC_47:AddDropdown("PickUpVariants", { Text = "Variants", Multi = true, Default = {}, Values = adC_17 })
        adC_47:AddToggle("PickUpAnyVariant", { Text = "Any Variant", Default = true })
        adC_47:AddToggle("PickUpRequireMutation", { Text = "Require Mutation", Default = false })
        adC_47:AddDropdown("PickUpMutations", { Text = "Mutations", Multi = true, Default = {}, Values = adC_109 })
        adC_47:AddDropdown("PickUpLanes", { Values = If, Multi = true, Default = {}, Text = "Lanes" })
        adC_47:AddToggle("PickUpAnyLane", { Text = "Any Lane", Default = true })
        adC_47:AddSlider("PickUpMinSize", { Rounding = 1, Min = 0, Default = 0, Text = "Minimum Size", Max = 10 })
        adC_47:AddSlider("PickUpMaxSize", { Max = 10, Default = 10, Rounding = 1, Min = 0, Text = "Maximum Size" })
        adC_47:AddInput("PickUpMaxDps", { Numeric = true, Finished = true, Text = "Maximum DPS (0 = off)", Default = "0" })
        adC_47:AddSlider("PickUpKeepBest", { Max = 30, Default = 0, Rounding = 0, Text = "Keep Strongest", Min = 0 })
        adC_47:AddSlider("PickUpPerCycle", { Default = 3, Rounding = 0, Text = "Pick Ups Per Cycle", Max = 30, Min = 1 })
        adC_47:AddSlider("PickUpDelay", { Max = 120, Text = "Loop Delay", Rounding = 1, Min = 1, Default = 5 })
        adC_69 = adC_47:AddLabel(adC_12("Placed capybaras", "0", Label2), true)
    end
    fns.adC_4 = (fns.adC_4 + 0) % 8
until (fns.adC_4 * 3 + 1) % 8 == 2
adC_74 = nil
adC_81 = 13
repeat
    adC_21 = (adC_81 * 1 + 0) % 2 + 1
    if adC_21 <= 1 then
        adC_21 = (vector.create((adC_81 * 7 + 3) % 11 + 1, (adC_81 * 9 + 4) % 13 + 1, (adC_81 * 14 + 7) % 17 + 1))
        local agk = vector.floor(adC_21) + vector.ceil(adC_21 * -1)
        if vector.dot(agk, agk) == 0 then
            adC_74:AddToggle("KillAura", { Text = "Auto Farm", Default = false })
            adC_74:AddToggle("FarmBountyOnly", { Text = "Only Farm Bounty Plants", Default = false })
            adC_74:AddDropdown("AuraMinRarity", { Text = "Minimum Rarity", Values = adC_94, Default = 1 })
            adC_74:AddSlider("AuraRange", { Text = "Range", Default = 150, Min = 20, Max = 500, Rounding = 0 })
            adC_74:AddSlider("AuraMinSize", { Text = "Minimum Plant Size", Default = 0, Min = 0, Max = 10, Rounding = 1 })
            adC_74:AddSlider("AuraMaxSize", { Text = "Maximum Plant Size", Default = 10, Min = 0, Max = 10, Rounding = 1 })
            adC_74:AddSlider("AuraFocus", { Text = "Focus Time Per Target", Default = 3, Min = 0.5, Max = 20, Rounding = 1 })
            adC_74:AddSlider("AuraStrafeRadius", { Text = "Strafe Radius", Default = 5, Min = 0, Max = 7, Rounding = 1 })
            adC_74:AddSlider("AuraStrafeSpeed", { Text = "Strafe Speed", Default = 4, Min = 0, Max = 20, Rounding = 1 })
            adC_74:AddSlider("AuraHeight", { Text = "Hover Height", Default = 4, Min = 0, Max = 15, Rounding = 1 })
            adC_74:AddToggle("AuraReturn", { Text = "Return To Position", Default = true })
            adC_74:AddSlider("AuraDelay", { Text = "Loop Delay", Default = 0.5, Min = 0.1, Max = 10, Rounding = 2 })
        else
            adC_94:AddToggle("KillAura", { Text = "Auto Farm", Default = false })
            adC_94:AddToggle("FarmBountyOnly", { Text = "Only Farm Bounty Plants", Default = false })
            adC_94:AddDropdown("AuraMinRarity", { Text = "Minimum Rarity", Default = 1, Values = adC_74 })
            adC_94:AddSlider("AuraRange", { Rounding = 0, Min = 20, Text = "Range", Max = 500, Default = 150 })
            adC_94:AddSlider("AuraMinSize", { Default = 0, Rounding = 1, Max = 10, Text = "Minimum Plant Size", Min = 0 })
            adC_94:AddSlider("AuraMaxSize", { Rounding = 1, Min = 0, Default = 10, Max = 10, Text = "Maximum Plant Size" })
            adC_94:AddSlider("AuraFocus", { Text = "Focus Time Per Target", Rounding = 1, Max = 20, Default = 3, Min = 0.5 })
            adC_94:AddSlider("AuraStrafeRadius", { Default = 5, Min = 0, Rounding = 1, Max = 7, Text = "Strafe Radius" })
            adC_94:AddSlider("AuraStrafeSpeed", { Rounding = 1, Text = "Strafe Speed", Max = 20, Default = 4, Min = 0 })
            adC_94:AddSlider("AuraHeight", { Min = 0, Text = "Hover Height", Rounding = 1, Default = 4, Max = 15 })
            adC_94:AddToggle("AuraReturn", { Text = "Return To Position", Default = true })
            adC_94:AddSlider("AuraDelay", { Rounding = 2, Default = 0.5, Min = 0.1, Max = 10, Text = "Loop Delay" })
        end
        adC_81 = (adC_81 + 3) % 16
    else
        adC_21 = {
            "zfkwr",
            "yjuuihd",
            "mvv",
            "gypqcy",
            "nwhy",
            "mynxyjkx",
            "bmlqm",
            "jimcyshabkb",
            "nnrafdz",
            "xiiipxnurp",
            "orzthqxj",
            "sspdtyaa"
        }
        local afY = adC_81
        adC_17 = adC_21[afY % 12 + 1]
        if adC_17:len() <= adC_17:reverse():rep(afY % 3 + 2):len() then
            adC_74 = adC_47.Combat:AddRightGroupbox("Auto Farm", "crosshair")
        else
            adC_47 = adC_74.Combat:AddRightGroupbox("Auto Farm", "crosshair")
        end
        adC_81 = (adC_81 + 1) % 16
    end
until (adC_81 * 9 + 1) % 16 == 10
adC_17 = nil
adC_21 = 3
repeat
    adC_81 = (adC_21 * 1 + 1) % 2 + 1
    if adC_81 <= 1 then
        adC_81 = {
            "dxxgykrd",
            "olz",
            "vml",
            "wkoo",
            "bejjs",
            "cwde",
            "gyfbxwzk",
            "sczzndok",
            "cbxlx",
            "xmw",
            "eekspwo",
            "xmtaiuk",
            "qlspz",
            "gjzdm",
            "sajggr",
            "wkd"
        }
        if adC_81[(adC_21 * 44 + 50) % 16 + 1] <= adC_81[(adC_21 * 44 + 50) % 16 + 1] then
            adC_17 = adC_47.Capybaras:AddRightGroupbox("Auto Equip Best", "star")
        else
            adC_47 = adC_17.Capybaras:AddRightGroupbox("Auto Equip Best", "star")
        end
        adC_21 = (adC_21 + 7) % 8
    else
        adC_81 = { "lvrxz", "vhwqsuffxx", "hmkrx", "txkwotilnx", "tozg", "vqpaevert", "hepg" }
        local ah8 = adC_21
        adC_74 = adC_81[ah8 % 7 + 1]
        if adC_74:len() <= adC_74:gsub("(.)", "%1%1", ah8 % 3 % 2 + 1):len() then
            adC_17:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
            adC_17:AddSlider("EquipDelay", { Text = "Loop Delay", Default = 5, Min = 3, Max = 60, Rounding = 1 })
        else
            adC_17:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false })
            adC_17:AddSlider("EquipDelay", { Default = 5, Rounding = 1, Text = "Loop Delay", Min = 3, Max = 60 })
        end
        adC_21 = (adC_21 + 7) % 8
    end
until (adC_21 * 7 + 5) % 8 == 4
adC_74 = nil
adC_81 = 2
repeat
    adC_21 = {
        "xebulrahwue",
        "biloqzz",
        "yzuce",
        "iis",
        "jhrjwylq",
        "dytorbz",
        "iyvhtys",
        "jyomxqk",
        "lsquphbry",
        "soxwijuwsjrt",
        "gnwsdj",
        "gsfyd"
    }
    if adC_21[(adC_81 * 57 + 58) % 12 + 1] <= adC_21[(adC_81 * 57 + 58) % 12 + 1] then
        adC_74 = adC_47.Combat:AddRightGroupbox("Auto Summon Bosses", "skull")
        adC_74:AddToggle("AutoSummonBoss", { Text = "Auto Summon Bosses", Default = false })
        adC_74:AddDropdown("BossTargets", { Text = "Bosses", Values = IP, Default = {}, Multi = true })
        adC_74:AddToggle("BossSkipUndefeated", { Text = "Only Undefeated Bosses", Default = false })
        adC_74:AddSlider("BossDelay", { Text = "Loop Delay", Default = 10, Min = 3, Max = 120, Rounding = 1 })
        Label3 = adC_74:AddLabel(adC_69("Boss active", "no", If), true)
    else
        If = adC_74.Combat:AddRightGroupbox("Auto Summon Bosses", "skull")
        If:AddToggle("AutoSummonBoss", { Text = "Auto Summon Bosses", Default = false })
        If:AddDropdown("BossTargets", { Multi = true, Text = "Bosses", Default = {}, Values = adC_47 })
        If:AddToggle("BossSkipUndefeated", { Text = "Only Undefeated Bosses", Default = false })
        If:AddSlider("BossDelay", { Default = 10, Text = "Loop Delay", Max = 120, Min = 3, Rounding = 1 })
        IP = If:AddLabel(Label3("Boss active", "no", adC_69), true)
    end
    adC_81 = (adC_81 + 0) % 4
until (adC_81 * 1 + 3) % 4 == 1
adC_21 = adC_47.Combat:AddRightGroupbox("Weather", "cloud-sun")
Label4 = adC_21:AddLabel(adC_69("Active", "none", Hg), true)
adC_21:AddToggle("NotifyWeather", { Text = "Notify On Weather", Default = false })
adC_21:AddDropdown("WeatherWatch", { Text = "Weathers", Values = adC_97, Default = {}, Multi = true })
adC_21:AddToggle("FarmOnlyDuringWeather", { Text = "Only Farm During Selected", Default = false })
adC_74 = adC_47.Fusion:AddLeftGroupbox("Auto Fuse", "flask-conical")
adC_74:AddToggle("AutoFuse", { Text = "Auto Fuse", Default = false })
adC_74:AddDropdown("FuseRecipe", { Text = "Recipe", Values = adC_104, Default = 1 })
adC_74:AddToggle("FuseCollect", { Text = "Auto Collect Result", Default = true })
adC_74:AddToggle("FuseKeepFavorited", { Text = "Keep Favorited", Default = true })
adC_74:AddToggle("FuseReturn", { Text = "Return To Position", Default = true })
adC_74:AddSlider("FuseDelay", { Text = "Loop Delay", Default = 10, Min = 3, Max = 300, Rounding = 1 })
Label5 = adC_74:AddLabel(adC_69("Machine", "unknown", If), true)
Label6 = adC_74:AddLabel(adC_69("Plant slot", "empty", Ij), true)
Label7 = adC_74:AddLabel(adC_69("Capybara slot", "empty", Ij), true)
adC_97 = nil
adC_21 = 2
repeat
    local afw = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_21, 4), string.byte(tostring(adC_97))), 28)
    if bit32.bxor(bit32.lrotate(bit32.bxor(afw, 646302451), 22), 3167330674) == bit32.lrotate(afw, 22) then
        adC_97 = adC_47.Fusion:AddRightGroupbox("Recipes", "book-open")
    else
        adC_47 = adC_97.Fusion:AddRightGroupbox("Recipes", "book-open")
    end
    adC_21 = (adC_21 + 3) % 4
until (adC_21 * 3 + 2) % 4 == 1
for k, v in IX.FusionData.Fusions do
    adC_21 = {}
    for k, v in v.Outcomes do
        table.insert(adC_21, string.format("%s %d%%", v.Name, v.Weight))
    end
    adC_97:AddLabel(string.format("%d. %s -> %s (%s)", k, IM(v.Plant .. " + " .. v.Capybara, Hg), IM(table.concat(adC_21, ", "), Ij), IM(IX.FusionData.formatTime(v.Time), adC_58)), true)
end
adC_104 = adC_47.Mutations:AddLeftGroupbox("Auto Mutation Sponge", "droplet")
adC_104:AddToggle("AutoMutationSponge", { Text = "Auto Mutation Sponge", Default = false })
adC_104:AddDropdown("SpongeMutations", { Text = "Mutations", Values = adC_12, Default = {}, Multi = true })
adC_104:AddToggle("SpongeOnTowers", { Text = "Capybaras", Default = true })
adC_104:AddToggle("SpongeOnEggs", { Text = "Eggs", Default = false })
adC_104:AddToggle("SpongeOnPlants", { Text = "Garden Plants", Default = true })
adC_104:AddSlider("SpongeDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
adC_97 = nil
adC_21 = 6
repeat
    adC_104 = (adC_21 * 1 + 1) % 2 + 1
    if adC_104 <= 1 then
        adC_104 = {
            "phozafn",
            "hetdoqdj",
            "gszipsk",
            "pfqtua",
            "wwonpmeb",
            "yxmrzxa",
            "jrmp",
            "uwjdahnpp",
            "cgjxcbluf",
            "etwrjnesn",
            "mshgqkxgfay",
            "fgytz",
            "hshj",
            "izzctfebx",
            "mnkgbemlumhh",
            "gjegddxhouz"
        }
        if adC_104[(adC_21 * 25 + 112) % 16 + 1] <= adC_104[(adC_21 * 25 + 112) % 16 + 1] then
            adC_97:AddToggle("AutoMutationScrolls", { Text = "Auto Mutation Scrolls", Default = false })
            adC_97:AddDropdown("UseScrolls", { Text = "Scrolls", Values = Je, Default = {}, Multi = true })
            adC_97:AddToggle("ScrollOnTowers", { Text = "Capybaras", Default = true })
            adC_97:AddToggle("ScrollOnEggs", { Text = "Eggs", Default = false })
            adC_97:AddToggle("ScrollOnPlants", { Text = "Garden Plants", Default = true })
            adC_97:AddSlider("ScrollDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
        else
            Je:AddToggle("AutoMutationScrolls", { Text = "Auto Mutation Scrolls", Default = false })
            Je:AddDropdown("UseScrolls", { Default = {}, Text = "Scrolls", Values = adC_97, Multi = true })
            Je:AddToggle("ScrollOnTowers", { Text = "Capybaras", Default = true })
            Je:AddToggle("ScrollOnEggs", { Text = "Eggs", Default = false })
            Je:AddToggle("ScrollOnPlants", { Text = "Garden Plants", Default = true })
            Je:AddSlider("ScrollDelay", { Text = "Loop Delay", Max = 60, Default = 5, Rounding = 1, Min = 1 })
        end
        adC_21 = (adC_21 + 3) % 8
    else
        adC_104 = {
            "sarahaxs",
            "yhxlrh",
            "yhrlzca",
            "hxqgbcd",
            "ykxwwpdc",
            "xozdkhbydvr",
            "oryvquc",
            "ozevkzbdzov",
            "axyoshnw",
            "khejz",
            "wxhiznso"
        }
        if adC_104[(adC_21 * 14 + 68) % 11 + 1] <= adC_104[(adC_21 * 14 + 68) % 11 + 1] then
            adC_97 = adC_47.Mutations:AddLeftGroupbox("Auto Mutation Scrolls", "scroll")
        else
            adC_47 = adC_97.Mutations:AddLeftGroupbox("Auto Mutation Scrolls", "scroll")
        end
        adC_21 = (adC_21 + 5) % 8
    end
until (adC_21 * 5 + 7) % 8 == 5
adC_81 = nil
adC_104 = 6
repeat
    adC_21 = (adC_104 * 1 + 1) % 2 + 1
    if adC_21 <= 1 then
        adC_21 = (vector.create((adC_104 * 5 + 1) % 11 + 1, (adC_104 * 9 + 1) % 13 + 1, (adC_104 * 10 + 7) % 17 + 1))
        adC_97 = (vector.create((adC_104 * 6 + 2) % 11 + 1, (adC_104 * 4 + 12) % 13 + 1, (adC_104 * 11 + 14) % 17 + 1))
        local af4 = vector.cross(adC_21, adC_97)
        local af5 = vector.dot(adC_21, adC_97)
        if vector.dot(af4, af4) + af5 * af5 == vector.dot(adC_21, adC_21) * vector.dot(adC_97, adC_97) then
            adC_81:AddToggle("AutoRaygun", { Text = "Auto Raygun", Default = false })
            adC_81:AddSlider("RaygunBelowSize", { Text = "Reroll Below Size", Default = 1.5, Min = 1, Max = 10, Rounding = 1 })
            adC_81:AddToggle("RaygunOnTowers", { Text = "Capybaras", Default = true })
            adC_81:AddToggle("RaygunOnEggs", { Text = "Eggs", Default = false })
            adC_81:AddToggle("RaygunOnPlants", { Text = "Garden Plants", Default = true })
            adC_81:AddSlider("RaygunDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
        else
            adC_81:AddToggle("AutoRaygun", { Text = "Auto Raygun", Default = false })
            adC_81:AddSlider("RaygunBelowSize", { Text = "Reroll Below Size", Default = 1.5, Min = 1, Rounding = 1, Max = 10 })
            adC_81:AddToggle("RaygunOnTowers", { Text = "Capybaras", Default = true })
            adC_81:AddToggle("RaygunOnEggs", { Text = "Eggs", Default = false })
            adC_81:AddToggle("RaygunOnPlants", { Text = "Garden Plants", Default = true })
            adC_81:AddSlider("RaygunDelay", { Max = 60, Min = 1, Text = "Loop Delay", Default = 5, Rounding = 1 })
        end
        adC_104 = (adC_104 + 9) % 16
    else
        adC_21 = {
            "ifca",
            "osr",
            "bouu",
            "qyfqh",
            "axupflhw",
            "tcukm",
            "zaj",
            "bldwnv",
            "bieeed",
            "jeaspalkb",
            "vaftzpqweo",
            "lplnchh"
        }
        local afS = adC_104
        adC_97 = adC_21[afS % 12 + 1]
        if adC_97:len() >= adC_97:gsub("(.)", "%1%1", afS % 3 % 2 + 1):len() then
            adC_47 = adC_81.Mutations:AddRightGroupbox("Auto Raygun", "crosshair")
        else
            adC_81 = adC_47.Mutations:AddRightGroupbox("Auto Raygun", "crosshair")
        end
        adC_104 = (adC_104 + 13) % 16
    end
until (adC_104 * 11 + 2) % 16 == 6
adC_21 = nil
adC_97 = 5
repeat
    adC_104 = (adC_97 * 1 + 0) % 2 + 1
    if adC_104 <= 1 then
        adC_104 = {
            "mafr",
            "fzmhhxsqkcy",
            "szxsjl",
            "zfcwuknw",
            "xrcm",
            "nkxxpixowf",
            "nmojhd",
            "zhfmrje",
            "erspfvx",
            "pulxbfvsw",
            "yuusunr",
            "rdx"
        }
        local afF = adC_97
        adC_81 = adC_104[afF % 12 + 1]
        if adC_81:len() >= adC_81:reverse():rep(afF % 3 + 2):len() then
            Hc:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
            Hc:AddDropdown("BuyEggs", { Values = adC_21, Default = {}, Multi = true, Text = "Eggs" })
            Hc:AddInput("EggMoneyReserve", { Default = "0", Numeric = true, Text = "Keep Money Reserve", Finished = true })
            Hc:AddSlider("EggBuyDelay", { Text = "Loop Delay", Rounding = 1, Max = 60, Min = 1, Default = 3 })
        else
            adC_21:AddToggle("AutoBuyEggs", { Text = "Auto Buy Eggs", Default = false })
            adC_21:AddDropdown("BuyEggs", { Text = "Eggs", Values = Hc, Default = {}, Multi = true })
            adC_21:AddInput("EggMoneyReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
            adC_21:AddSlider("EggBuyDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
        end
        adC_97 = (adC_97 + 7) % 16
    else
        local ahP = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_97, 18), string.byte(tostring(adC_21))), 30)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ahP, 4240984059), 575723626), (bit32.bxor(bit32.band(ahP, 53983236), 2857924497))), 575723626), 2857924497) ~= ahP then
            adC_47 = adC_21.Buy:AddLeftGroupbox("Auto Buy Pets", "egg")
        else
            adC_21 = adC_47.Buy:AddLeftGroupbox("Auto Buy Pets", "egg")
        end
        adC_97 = (adC_97 + 7) % 16
    end
until (adC_97 * 15 + 3) % 16 == 0
adC_104 = nil
adC_81 = 15
repeat
    adC_21 = (adC_81 * 1 + 1) % 2 + 1
    if adC_21 <= 1 then
        adC_21 = (vector.create((adC_81 * 7 + 5) % 11 + 1, (adC_81 * 3 + 3) % 13 + 1, (adC_81 * 9 + 9) % 17 + 1))
        local agp = vector.floor(adC_21) + vector.ceil(adC_21 * -1)
        if vector.dot(agp, agp) == 5 then
            adC_47 = adC_104.Buy:AddRightGroupbox("Auto Buy Gears", "wrench")
        else
            adC_104 = adC_47.Buy:AddRightGroupbox("Auto Buy Gears", "wrench")
        end
        adC_81 = (adC_81 + 11) % 16
    else
        adC_21 = { "cspjhvdnxko", "phtjeyfq", "yph", "earbslbcbh", "yvdkif", "ftbdj", "rsg", "ewypr", "gksxij" }
        local ajH = adC_81
        adC_97 = adC_21[ajH % 9 + 1]
        if adC_97:len() <= adC_97:reverse():rep(ajH % 3 + 2):len() then
            adC_104:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
            adC_104:AddDropdown("BuyGears", { Text = "Gears", Values = Ic, Default = {}, Multi = true })
            adC_104:AddInput("GearMoneyReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
            adC_104:AddSlider("GearBuyDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
        else
            Ic:AddToggle("AutoBuyGears", { Text = "Auto Buy Gears", Default = false })
            Ic:AddDropdown("BuyGears", { Default = {}, Text = "Gears", Values = adC_104, Multi = true })
            Ic:AddInput("GearMoneyReserve", { Default = "0", Numeric = true, Text = "Keep Money Reserve", Finished = true })
            Ic:AddSlider("GearBuyDelay", { Default = 3, Text = "Loop Delay", Rounding = 1, Min = 1, Max = 60 })
        end
        adC_81 = (adC_81 + 3) % 16
    end
until (adC_81 * 3 + 12) % 16 == 3
adC_97 = nil
adC_21 = 1
repeat
    adC_104 = {
        "mqyrtkjn",
        "csdtllies",
        "yxkrtvy",
        "xivffhs",
        "ztbn",
        "sddvlww",
        "tngsjqbfh",
        "fotxtiq",
        "vdws",
        "xypujzhp",
        "vlchlafo",
        "hhtzzri"
    }
    local af_ = adC_21
    adC_81 = adC_104[af_ % 12 + 1]
    local adC_30 = if adC_81:len() >= adC_81:gsub("(.)", "%1%1", af_ % 3 % 2 + 1):len() then 1 else 0
    if adC_30 == 1 then
        HL = adC_69.Buy:AddRightGroupbox("Auto Buy Merchant", "store")
        HL:AddToggle("AutoBuyMerchant", { Text = "Auto Buy Merchant", Default = false })
        HL:AddDropdown("BuyMerchantItems", { Default = {}, Text = "Items", Multi = true, Values = adC_47 })
        HL:AddInput("MerchantMoneyReserve", { Numeric = true, Finished = true, Text = "Keep Money Reserve", Default = "0" })
        HL:AddSlider("MerchantBuyDelay", { Max = 60, Min = 1, Rounding = 1, Text = "Loop Delay", Default = 3 })
        If = HL:AddLabel(adC_50("Merchant", "none", adC_97), true)
    else
        adC_97 = adC_47.Buy:AddRightGroupbox("Auto Buy Merchant", "store")
        adC_97:AddToggle("AutoBuyMerchant", { Text = "Auto Buy Merchant", Default = false })
        adC_97:AddDropdown("BuyMerchantItems", { Text = "Items", Values = adC_50, Default = {}, Multi = true })
        adC_97:AddInput("MerchantMoneyReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
        adC_97:AddSlider("MerchantBuyDelay", { Text = "Loop Delay", Default = 3, Min = 1, Max = 60, Rounding = 1 })
        HL = adC_97:AddLabel(adC_69("Merchant", "none", If), true)
    end
    adC_21 = (adC_21 + 1) % 4
until (adC_21 * 3 + 3) % 4 == 1
adC_81 = nil
adC_104 = 1
repeat
    if (adC_104 and not adC_104 and (not adC_81 and not adC_104) or not adC_104 and adC_81 and (adC_81 and adC_81)) and not (adC_104 and not adC_104 and (not adC_81 and not adC_104) or not adC_104 and adC_81 and (adC_81 and adC_81)) then
        adC_69 = adC_81.Buy:AddRightGroupbox("Auto Buy Bounty Shop", "medal")
        adC_69:AddToggle("AutoBuyBountyShop", { Text = "Auto Buy Bounty Shop", Default = false })
        adC_69:AddDropdown("BuyBountyItems", { Values = adC_47, Default = {}, Text = "Items", Multi = true })
        adC_69:AddInput("BountyTokenReserve", { Numeric = true, Finished = true, Text = "Keep Token Reserve", Default = "0" })
        adC_69:AddSlider("BountyShopDelay", { Rounding = 1, Max = 120, Text = "Loop Delay", Min = 3, Default = 10 })
        Ij = adC_69:AddLabel(adC_89("Bounty tokens", "0", Label8), true)
    else
        adC_81 = adC_47.Buy:AddRightGroupbox("Auto Buy Bounty Shop", "medal")
        adC_81:AddToggle("AutoBuyBountyShop", { Text = "Auto Buy Bounty Shop", Default = false })
        adC_81:AddDropdown("BuyBountyItems", { Text = "Items", Values = adC_89, Default = {}, Multi = true })
        adC_81:AddInput("BountyTokenReserve", { Text = "Keep Token Reserve", Default = "0", Numeric = true, Finished = true })
        adC_81:AddSlider("BountyShopDelay", { Text = "Loop Delay", Default = 10, Min = 3, Max = 120, Rounding = 1 })
        Label8 = adC_81:AddLabel(adC_69("Bounty tokens", "0", Ij), true)
    end
    adC_104 = (adC_104 + 3) % 4
until (adC_104 * 1 + 0) % 4 == 0
adC_97 = nil
adC_21 = 10
repeat
    adC_104 = (adC_21 * 1 + 1) % 2 + 1
    if adC_104 <= 1 then
        adC_104 = {
            "gujx",
            "trmjlgohsgfb",
            "qadrr",
            "rcpq",
            "pdkxsbuvj",
            "qggfrnu",
            "jqkjjhtjwtmy",
            "zmqfqfe",
            "cwjtmuf",
            "kuutq",
            "layfboopkw"
        }
        if adC_104[(adC_21 * 39 + 21) % 11 + 1] < adC_104[(adC_21 * 39 + 21) % 11 + 1] then
            adC_12:AddToggle("AutoFavorite", { Text = "Auto Favorite", Default = false })
            adC_12:AddDropdown("FavoriteTypes", {
                Text = "Item Types",
                AllowNull = true,
                Values = { "Capybaras", "Plants" },
                Multi = true,
                Default = {}
            })
            adC_12:AddDropdown("FavoriteRarities", { Default = {}, Values = adC_97, Multi = true, AllowNull = true, Text = "Rarities" })
            adC_12:AddToggle("FavoriteAnyRarity", { Text = "Any Rarity", Default = false })
            adC_12:AddToggle("FavoriteRequireMutation", { Text = "Require Mutation", Default = false })
            adC_12:AddDropdown("FavoriteMutations", { Default = {}, Text = "Mutations", Values = I3, Multi = true })
            adC_12:AddSlider("FavoriteMinSize", { Min = 0, Rounding = 1, Text = "Minimum Size", Max = 10, Default = 0 })
            adC_12:AddSlider("FavoriteDelay", { Max = 120, Text = "Loop Delay", Rounding = 1, Min = 2, Default = 10 })
        else
            adC_97:AddToggle("AutoFavorite", { Text = "Auto Favorite", Default = false })
            adC_97:AddDropdown("FavoriteTypes", {
                Text = "Item Types",
                Values = { "Capybaras", "Plants" },
                Default = {},
                Multi = true,
                AllowNull = true
            })
            adC_97:AddDropdown("FavoriteRarities", { Text = "Rarities", Values = I3, Default = {}, Multi = true, AllowNull = true })
            adC_97:AddToggle("FavoriteAnyRarity", { Text = "Any Rarity", Default = false })
            adC_97:AddToggle("FavoriteRequireMutation", { Text = "Require Mutation", Default = false })
            adC_97:AddDropdown("FavoriteMutations", { Text = "Mutations", Values = adC_12, Default = {}, Multi = true })
            adC_97:AddSlider("FavoriteMinSize", { Text = "Minimum Size", Default = 0, Min = 0, Max = 10, Rounding = 1 })
            adC_97:AddSlider("FavoriteDelay", { Text = "Loop Delay", Default = 10, Min = 2, Max = 120, Rounding = 1 })
        end
        adC_21 = (adC_21 + 3) % 16
    else
        adC_104 = (vector.create((adC_21 * 7 + 7) % 11 + 1, (adC_21 * 1 + 3) % 13 + 1, (adC_21 * 3 + 16) % 17 + 1))
        adC_89 = (vector.create((adC_21 * 3 + 2) % 11 + 1, (adC_21 * 1 + 9) % 13 + 1, (adC_21 * 8 + 1) % 17 + 1))
        adC_81 = (vector.create((adC_21 * 7 + 2) % 11 + 1, (adC_21 * 6 + 1) % 13 + 1, (adC_21 * 11 + 4) % 17 + 1))
        adC_74 = (vector.create((adC_21 * 2 + 5) % 11 + 1, (adC_21 * 3 + 8) % 13 + 1, (adC_21 * 1 + 16) % 17 + 1))
        if vector.dot(vector.cross(adC_104, adC_89), (vector.cross(adC_81, adC_74))) == vector.dot(adC_104, adC_81) * vector.dot(adC_89, adC_74) - vector.dot(adC_104, adC_74) * vector.dot(adC_89, adC_81) + 4 then
            adC_47 = adC_97.Inventory:AddLeftGroupbox("Auto Favorite", "heart")
        else
            adC_97 = adC_47.Inventory:AddLeftGroupbox("Auto Favorite", "heart")
        end
        adC_21 = (adC_21 + 7) % 16
    end
until (adC_21 * 3 + 11) % 16 == 7
adC_89 = nil
adC_104 = 2
repeat
    adC_21 = (adC_104 * 1 + 0) % 2 + 1
    if adC_21 <= 1 then
        if ((adC_104 or not adC_104) and (adC_89 and not adC_104) or (adC_104 or adC_104) and (not adC_89 or adC_104)) and not ((adC_104 or not adC_104) and (adC_89 and not adC_104) or (adC_104 or adC_104) and (not adC_89 or adC_104)) then
            adC_47 = adC_89.Inventory:AddLeftGroupbox("Auto Sell", "banknote")
        else
            adC_89 = adC_47.Inventory:AddLeftGroupbox("Auto Sell", "banknote")
        end
        adC_104 = (adC_104 + 5) % 8
    else
        adC_21 = (vector.create((adC_104 * 3 + 7) % 11 + 1, (adC_104 * 9 + 4) % 13 + 1, (adC_104 * 15 + 4) % 17 + 1))
        adC_12 = (vector.create((adC_104 * 2 + 5) % 11 + 1, (adC_104 * 11 + 2) % 13 + 1, (adC_104 * 8 + 10) % 17 + 1))
        adC_97 = (vector.create((adC_104 * 7 + 3) % 11 + 1, (adC_104 * 1 + 13) % 13 + 1, (adC_104 * 14 + 13) % 17 + 1))
        adC_81 = (vector.create((adC_104 * 7 + 3) % 11 + 1, (adC_104 * 9 + 7) % 13 + 1, (adC_104 * 2 + 13) % 17 + 1))
        if vector.dot(vector.cross(adC_21, adC_12), (vector.cross(adC_97, adC_81))) == vector.dot(adC_21, adC_97) * vector.dot(adC_12, adC_81) - vector.dot(adC_21, adC_81) * vector.dot(adC_12, adC_97) then
            adC_89:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
            adC_89:AddDropdown("SellTypes", {
                Text = "Item Types",
                Values = { "Capybaras", "Plants" },
                Default = {},
                Multi = true,
                AllowNull = true
            })
            adC_89:AddDropdown("SellRarities", { Text = "Rarities", Values = I3, Default = {}, Multi = true, AllowNull = true })
            adC_89:AddToggle("SellAllRarities", { Text = "Sell Every Rarity", Default = false })
            adC_89:AddToggle("SellKeepFavorited", { Text = "Keep Favorited", Default = true })
            adC_89:AddToggle("SellKeepBountyPlants", { Text = "Keep Bounty Plants", Default = true })
            adC_89:AddInput("SellBelowValue", { Text = "Only Sell Below Value (0 = off)", Default = "0", Numeric = true, Finished = true })
            adC_89:AddSlider("SellDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
        else
            I3:AddToggle("AutoSell", { Text = "Auto Sell", Default = false })
            I3:AddDropdown("SellTypes", {
                Multi = true,
                Values = { "Capybaras", "Plants" },
                AllowNull = true,
                Text = "Item Types",
                Default = {}
            })
            I3:AddDropdown("SellRarities", { Default = {}, Values = adC_89, Multi = true, AllowNull = true, Text = "Rarities" })
            I3:AddToggle("SellAllRarities", { Text = "Sell Every Rarity", Default = false })
            I3:AddToggle("SellKeepFavorited", { Text = "Keep Favorited", Default = true })
            I3:AddToggle("SellKeepBountyPlants", { Text = "Keep Bounty Plants", Default = true })
            I3:AddInput("SellBelowValue", { Numeric = true, Text = "Only Sell Below Value (0 = off)", Default = "0", Finished = true })
            I3:AddSlider("SellDelay", { Default = 5, Min = 1, Max = 60, Rounding = 1, Text = "Loop Delay" })
        end
        adC_104 = (adC_104 + 3) % 8
    end
until (adC_104 * 3 + 3) % 8 == 1
adC_12 = nil
adC_21 = 7
repeat
    adC_104 = (adC_21 * 1 + 1) % 2 + 1
    if adC_104 <= 1 then
        if (adC_21 * 2 + 2) * 4 % 3 == ((adC_21 * 2 + 2) * 4 + 2) % 3 then
            adC_47 = adC_12.Inventory:AddRightGroupbox("Auto Sync Auto Sell", "refresh-cw")
        else
            adC_12 = adC_47.Inventory:AddRightGroupbox("Auto Sync Auto Sell", "refresh-cw")
        end
        adC_21 = (adC_21 + 5) % 8
    else
        if (adC_21 * 3 + 7) * 9 % 4 == ((adC_21 * 3 + 7) * 9 + 4) % 4 then
            adC_12:AddToggle("AutoSyncAutoSell", { Text = "Auto Sync Auto Sell", Default = false })
            adC_12:AddSlider("SyncSellDelay", { Text = "Loop Delay", Default = 10, Min = 3, Max = 120, Rounding = 1 })
        else
            adC_12:AddToggle("AutoSyncAutoSell", { Text = "Auto Sync Auto Sell", Default = false })
            adC_12:AddSlider("SyncSellDelay", { Text = "Loop Delay", Default = 10, Max = 120, Rounding = 1, Min = 3 })
        end
        adC_21 = (adC_21 + 5) % 8
    end
until (adC_21 * 7 + 1) % 8 == 0
adC_97 = nil
adC_104 = 7
repeat
    adC_21 = (adC_104 * 1 + 1) % 2 + 1
    if adC_21 <= 1 then
        if ((adC_97 and adC_97 or not adC_97 and not adC_104) and (adC_104 or adC_104 or adC_97 and not adC_104) or ((adC_104 or adC_104) and (not adC_97 and adC_104) or not adC_97 and adC_104 and (not adC_97 or not adC_104))) and ((adC_104 or not adC_104) and (not adC_97 or adC_97) and ((adC_97 or not adC_104) and (adC_104 or not adC_104)) and ((not adC_97 or adC_97 or adC_97 and not adC_104) and (not adC_97 or adC_104 or (adC_97 or adC_97)))) or not (((adC_97 and adC_97 or not adC_97 and not adC_104) and (adC_104 or adC_104 or adC_97 and not adC_104) or ((adC_104 or adC_104) and (not adC_97 and adC_104) or not adC_97 and adC_104 and (not adC_97 or not adC_104))) and ((adC_104 or not adC_104) and (not adC_97 or adC_97) and ((adC_97 or not adC_104) and (adC_104 or not adC_104)) and ((not adC_97 or adC_97 or adC_97 and not adC_104) and (not adC_97 or adC_104 or (adC_97 or adC_97))))) then
            adC_97 = adC_47.Growth:AddLeftGroupbox("Auto Level Up", "trending-up")
        else
            adC_47 = adC_97.Growth:AddLeftGroupbox("Auto Level Up", "trending-up")
        end
        adC_104 = (adC_104 + 5) % 16
    else
        adC_21 = (vector.create((adC_104 * 2 + 7) % 11 + 1, (adC_104 * 10 + 6) % 13 + 1, (adC_104 * 9 + 13) % 17 + 1))
        adC_12 = (vector.create((adC_104 * 3 + 6) % 11 + 1, (adC_104 * 3 + 9) % 13 + 1, (adC_104 * 5 + 11) % 17 + 1))
        local aga = vector.dot(adC_21, adC_12)
        if aga * aga >= vector.dot(adC_21, adC_21) * vector.dot(adC_12, adC_12) + 1 then
            Ht:AddToggle("AutoLevelUp", { Text = "Auto Grow Tree", Default = false })
            Ht:AddToggle("AutoTreeUpgrades", { Text = "Auto Buy Tree Upgrades", Default = false })
            Ht:AddDropdown("TreeUpgrades", { Values = adC_97, Default = {}, Multi = true, Text = "Upgrades" })
            Ht:AddSlider("LevelDelay", { Max = 120, Text = "Loop Delay", Min = 2, Default = 10, Rounding = 1 })
        else
            adC_97:AddToggle("AutoLevelUp", { Text = "Auto Grow Tree", Default = false })
            adC_97:AddToggle("AutoTreeUpgrades", { Text = "Auto Buy Tree Upgrades", Default = false })
            adC_97:AddDropdown("TreeUpgrades", { Text = "Upgrades", Values = Ht, Default = {}, Multi = true })
            adC_97:AddSlider("LevelDelay", { Text = "Loop Delay", Default = 10, Min = 2, Max = 120, Rounding = 1 })
        end
        adC_104 = (adC_104 + 13) % 16
    end
until (adC_104 * 15 + 10) % 16 == 1
adC_12 = nil
adC_21 = 7
repeat
    adC_104 = (adC_21 * 1 + 0) % 2 + 1
    if adC_104 <= 1 then
        if (adC_21 * 2 + 8) * 7 % 3 == ((adC_21 * 2 + 8) * 7 + 8) % 3 then
            adC_12:AddToggle("AutoBuyLane", { Text = "Auto Buy Lane", Default = false })
            adC_12:AddInput("LaneMoneyReserve", { Default = "0", Numeric = true, Finished = true, Text = "Keep Money Reserve" })
            adC_12:AddSlider("LaneDelay", { Min = 5, Default = 20, Rounding = 1, Text = "Loop Delay", Max = 300 })
        else
            adC_12:AddToggle("AutoBuyLane", { Text = "Auto Buy Lane", Default = false })
            adC_12:AddInput("LaneMoneyReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
            adC_12:AddSlider("LaneDelay", { Text = "Loop Delay", Default = 20, Min = 5, Max = 300, Rounding = 1 })
        end
        adC_21 = (adC_21 + 3) % 8
    else
        adC_104 = (vector.create((adC_21 * 3 + 8) % 11 + 1, (adC_21 * 1 + 3) % 13 + 1, (adC_21 * 5 + 17) % 17 + 1))
        adC_97 = (vector.create((adC_21 * 6 + 3) % 11 + 1, (adC_21 * 8 + 6) % 13 + 1, (adC_21 * 6 + 5) % 17 + 1))
        adC_89 = (vector.create((adC_21 * 5 + 1) % 5 + 1, (adC_21 * 5 + 6) % 7 + 1, (adC_21 * 5 + 5) % 9 + 1))
        if math.abs((vector.angle(adC_104, adC_97, adC_89))) - math.abs((vector.angle(adC_97, adC_104, adC_89))) == 1 then
            adC_47 = adC_12.Growth:AddRightGroupbox("Auto Buy Lane", "columns-3")
        else
            adC_12 = adC_47.Growth:AddRightGroupbox("Auto Buy Lane", "columns-3")
        end
        adC_21 = (adC_21 + 3) % 8
    end
until (adC_21 * 5 + 1) % 8 == 2
adC_97 = nil
adC_104 = 3
repeat
    adC_21 = (adC_104 * 1 + 0) % 2 + 1
    if adC_21 <= 1 then
        if (adC_104 * 2 + 8) * 7 % 3 == ((adC_104 * 2 + 8) * 7 + 0) % 3 then
            adC_97:AddToggle("AutoBuyPot", { Text = "Auto Buy Pot", Default = false })
            adC_97:AddInput("PotMoneyReserve", { Text = "Keep Money Reserve", Default = "0", Numeric = true, Finished = true })
            adC_97:AddSlider("PotDelay", { Text = "Loop Delay", Default = 20, Min = 5, Max = 300, Rounding = 1 })
        else
            adC_97:AddToggle("AutoBuyPot", { Text = "Auto Buy Pot", Default = false })
            adC_97:AddInput("PotMoneyReserve", { Finished = true, Text = "Keep Money Reserve", Default = "0", Numeric = true })
            adC_97:AddSlider("PotDelay", { Default = 20, Min = 5, Text = "Loop Delay", Rounding = 1, Max = 300 })
        end
        adC_104 = (adC_104 + 3) % 8
    else
        local ah9 = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_104, 24), string.byte(tostring(adC_97))), 18)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(ah9, 4260908641), 465748558), (bit32.bxor(bit32.band(ah9, 34058654), 1721141753))), 465748558), 1721141753) == ah9 then
            adC_97 = adC_47.Growth:AddRightGroupbox("Auto Buy Pot", "flower-2")
        else
            adC_47 = adC_97.Growth:AddRightGroupbox("Auto Buy Pot", "flower-2")
        end
        adC_104 = (adC_104 + 5) % 8
    end
until (adC_104 * 5 + 3) % 8 == 2
adC_21 = nil
adC_12 = 6
repeat
    adC_104 = (adC_12 * 1 + 1) % 2 + 1
    if adC_104 <= 1 then
        local afl = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_12, 9), string.byte(tostring(adC_21))), 13)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(afl, 1896189545), 1669948350), (bit32.bxor(bit32.band(afl, 2398777750), 3395001706))), 1669948350), 3395001706) ~= afl then
            adC_21:AddToggle("AutoManagePots", { Text = "Auto Manage Pots", Default = false })
            adC_21:AddToggle("ManagePotReplace", { Text = "Replace Weaker Plants", Default = true })
            adC_21:AddToggle("ManagePotKeepBounty", { Text = "Keep Bounty Plants", Default = true })
            adC_21:AddSlider("ManagePotDelay", { Default = 5, Rounding = 1, Text = "Loop Delay", Min = 1, Max = 60 })
        else
            adC_21:AddToggle("AutoManagePots", { Text = "Auto Manage Pots", Default = false })
            adC_21:AddToggle("ManagePotReplace", { Text = "Replace Weaker Plants", Default = true })
            adC_21:AddToggle("ManagePotKeepBounty", { Text = "Keep Bounty Plants", Default = true })
            adC_21:AddSlider("ManagePotDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
        end
        adC_12 = (adC_12 + 5) % 16
    else
        local afJ = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_12, 13), string.byte(tostring(adC_21))), 25)
        if bit32.bxor(bit32.bxor(bit32.bxor(bit32.bxor(bit32.band(afJ, 2404144173), 4209674203), (bit32.bxor(bit32.band(afJ, 1890823122), 376658372))), 4209674203), 376658372) == afJ then
            adC_21 = adC_47.Growth:AddRightGroupbox("Auto Manage Pots", "flower")
        else
            adC_47 = adC_21.Growth:AddRightGroupbox("Auto Manage Pots", "flower")
        end
        adC_12 = (adC_12 + 11) % 16
    end
until (adC_12 * 13 + 0) % 16 == 14
adC_97 = nil
adC_104 = 2
repeat
    adC_21 = (vector.create((adC_104 * 2 + 8) % 11 + 1, (adC_104 * 10 + 4) % 13 + 1, (adC_104 * 4 + 7) % 17 + 1))
    adC_12 = (vector.create((adC_104 * 4 + 6) % 11 + 1, (adC_104 * 6 + 2) % 13 + 1, (adC_104 * 14 + 11) % 17 + 1))
    adC_89 = (vector.create((adC_104 * 1 + 4) % 5 + 1, (adC_104 * 2 + 4) % 7 + 1, (adC_104 * 3 + 5) % 9 + 1))
    if math.abs((vector.angle(adC_21, adC_12, adC_89))) - math.abs((vector.angle(adC_12, adC_21, adC_89))) == 0 then
        adC_97 = adC_47.Extras:AddRightGroupbox("Auto Place Totems", "tent-tree")
        adC_97:AddToggle("AutoPlaceTotems", { Text = "Auto Place Totems", Default = false })
        adC_97:AddDropdown("PlaceTotems", { Text = "Totems", Values = adC_29, Default = {}, Multi = true })
        adC_97:AddToggle("PlaceAnyTotem", { Text = "Place Any Totem", Default = true })
        adC_97:AddSlider("TotemDelay", { Text = "Loop Delay", Default = 10, Min = 2, Max = 120, Rounding = 1 })
        HG = adC_97:AddLabel(adC_69("Placed totems", "0", If), true)
    else
        HG = adC_97.Extras:AddRightGroupbox("Auto Place Totems", "tent-tree")
        HG:AddToggle("AutoPlaceTotems", { Text = "Auto Place Totems", Default = false })
        HG:AddDropdown("PlaceTotems", { Text = "Totems", Values = adC_69, Multi = true, Default = {} })
        HG:AddToggle("PlaceAnyTotem", { Text = "Place Any Totem", Default = true })
        HG:AddSlider("TotemDelay", { Rounding = 1, Min = 2, Max = 120, Default = 10, Text = "Loop Delay" })
        If = HG:AddLabel(adC_29("Placed totems", "0", adC_47), true)
    end
    adC_104 = (adC_104 + 3) % 4
until (adC_104 * 3 + 0) % 4 == 3
adC_21 = nil
adC_12 = 5
repeat
    adC_104 = (adC_12 * 1 + 0) % 2 + 1
    if adC_104 <= 1 then
        adC_104 = {
            "upx",
            "yeaxqksx",
            "qkasrysx",
            "gnzfv",
            "ypk",
            "fwgtp",
            "fzuizhjiwh",
            "rjwbqwyrl",
            "proltfexk",
            "kuhlynaofem"
        }
        local afQ = adC_12
        adC_97 = adC_104[afQ % 10 + 1]
        if adC_97:len() <= adC_97:reverse():rep(afQ % 3 + 2):len() then
            adC_21:AddToggle("AutoRetrieveTotems", { Text = "Auto Retrieve Totems", Default = false })
            adC_21:AddDropdown("RetrieveTotems", { Text = "Totems", Values = adC_29, Default = {}, Multi = true })
            adC_21:AddToggle("RetrieveAnyTotem", { Text = "Retrieve Any Totem", Default = true })
            adC_21:AddSlider("RetrieveTotemDelay", { Text = "Loop Delay", Default = 10, Min = 2, Max = 120, Rounding = 1 })
        else
            adC_29:AddToggle("AutoRetrieveTotems", { Text = "Auto Retrieve Totems", Default = false })
            adC_29:AddDropdown("RetrieveTotems", { Values = adC_21, Default = {}, Text = "Totems", Multi = true })
            adC_29:AddToggle("RetrieveAnyTotem", { Text = "Retrieve Any Totem", Default = true })
            adC_29:AddSlider("RetrieveTotemDelay", { Default = 10, Text = "Loop Delay", Rounding = 1, Min = 2, Max = 120 })
        end
        adC_12 = (adC_12 + 5) % 8
    else
        local afN = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_12, 24), string.byte(tostring(adC_21))), 20)
        if bit32.bxor(bit32.lrotate(bit32.bxor(afN, 1672789698), 8), 3032400483) == bit32.lrotate(afN, 8) then
            adC_21 = adC_47.Extras:AddRightGroupbox("Auto Retrieve Totems", "hand")
        else
            adC_47 = adC_21.Extras:AddRightGroupbox("Auto Retrieve Totems", "hand")
        end
        adC_12 = (adC_12 + 7) % 8
    end
until (adC_12 * 3 + 4) % 8 == 7
adC_97 = nil
adC_104 = 11
repeat
    adC_29 = (adC_104 * 1 + 1) % 2 + 1
    if adC_29 <= 1 then
        local afG = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_104, 20), string.byte(tostring(adC_97))), 6)
        if bit32.bxor(bit32.lrotate(bit32.bxor(afG, 2997352973), 22), 2204936702) == bit32.lrotate(afG, 22) then
            adC_97 = adC_47.Extras:AddRightGroupbox("Utility", "compass")
        else
            adC_47 = adC_97.Extras:AddRightGroupbox("Utility", "compass")
        end
        adC_104 = (adC_104 + 3) % 16
    else
        if (adC_104 and not adC_104 and (adC_97 or not adC_97) or (adC_104 and adC_104 or (adC_97 or adC_104))) and not (adC_104 and not adC_104 and (adC_97 or not adC_97) or (adC_104 and adC_104 or (adC_97 or adC_104))) then
            adC_97:AddButton({ Text = "Teleport To Plot", Func = fns.onTeleportToPlot })
        else
            adC_97:AddButton({ Text = "Teleport To Plot", Func = fns.onTeleportToPlot })
        end
        adC_104 = (adC_104 + 13) % 16
    end
until (adC_104 * 5 + 15) % 16 == 6
adC_29 = 5
repeat
    adC_12 = { "dbfmwac", "ycgne", "wuuxgjpc", "sehzvpfclz", "bcj", "fzbtlqczw", "agohrqtxebh", "fekdkunwi" }
    local af7 = adC_29
    adC_104 = adC_12[af7 % 8 + 1]
    if adC_104:len() <= adC_104:reverse():rep(af7 % 3 + 2):len() then
        adC_21 = adC_47.Extras:AddLeftGroupbox("Auto Collect Money", "coins")
        adC_21:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
        adC_21:AddSlider("CollectDelay", { Text = "Loop Delay", Default = 3, Min = 0.5, Max = 60, Rounding = 1 })
        Label9 = adC_21:AddLabel(adC_69("Money", "0", Ij), true)
    else
        adC_47 = Label9.Extras:AddLeftGroupbox("Auto Collect Money", "coins")
        adC_47:AddToggle("AutoCollectMoney", { Text = "Auto Collect Money", Default = false })
        adC_47:AddSlider("CollectDelay", { Rounding = 1, Min = 0.5, Max = 60, Default = 3, Text = "Loop Delay" })
        adC_47:AddLabel(Ij("Money", "0", adC_69), true)
    end
    adC_29 = (adC_29 + 6) % 8
until (adC_29 * 5 + 0) % 8 == 7
adC_12 = adC_47.Extras:AddLeftGroupbox("Performance", "zap")
adC_12:AddToggle("HideOtherPlots", { Text = "Hide Other Plots", Default = false })
adC_21 = 5
repeat
    adC_12 = {
        "zopbkgrhh",
        "tlzbb",
        "mjozscdctmy",
        "uxwtg",
        "aabqscq",
        "bpqyjedyrx",
        "zcgldwcsyg",
        "tlmlzocshd",
        "qglhnvxigurn",
        "civwheae"
    }
    if adC_12[(adC_21 * 54 + 33) % 10 + 1] < adC_12[(adC_21 * 54 + 33) % 10 + 1] then
        HC = Ij.Bounty:AddLeftGroupbox("Auto Bounty", "target")
        HC:AddToggle("AutoTurnInBounty", { Text = "Auto Turn In Bounty", Default = false })
        HC:AddSlider("BountyDelay", { Rounding = 1, Min = 1, Max = 60, Default = 5, Text = "Loop Delay" })
        HC:AddLabel(adC_47("Easy", "none", Label10), true)
        If = HC:AddLabel(adC_47("Hard", "none", adC_69), true)
    else
        adC_29 = adC_47.Bounty:AddLeftGroupbox("Auto Bounty", "target")
        adC_29:AddToggle("AutoTurnInBounty", { Text = "Auto Turn In Bounty", Default = false })
        adC_29:AddSlider("BountyDelay", { Text = "Loop Delay", Default = 5, Min = 1, Max = 60, Rounding = 1 })
        HC = adC_29:AddLabel(adC_69("Easy", "none", Ij), true)
        Label10 = adC_29:AddLabel(adC_69("Hard", "none", If), true)
    end
    adC_21 = (adC_21 + 0) % 8
until (adC_21 * 5 + 7) % 8 == 0
adC_12 = adC_47.Rewards:AddLeftGroupbox("Auto Claim Rewards", "gift")
adC_12:AddToggle("AutoClaimRewards", { Text = "Auto Claim Rewards", Default = false })
adC_12:AddToggle("ClaimDaily", { Text = "Daily Reward", Default = true })
adC_12:AddToggle("ClaimPlaytime", { Text = "Playtime Rewards", Default = true })
adC_12:AddToggle("ClaimQuests", { Text = "Quest Rewards", Default = true })
adC_12:AddSlider("RewardDelay", { Text = "Loop Delay", Default = 15, Min = 3, Max = 300, Rounding = 1 })
adC_21 = adC_47.Rewards:AddRightGroupbox("Auto Redeem Codes", "ticket")
adC_21:AddToggle("AutoRedeemCodes", { Text = "Auto Redeem Codes", Default = false })
adC_21:AddButton({
    Text = "Redeem All Codes",
    Func = function()
        task.spawn(function()
            local TZ_1
            local TY_1
            local TX = 0
            for k, v in I2 do
                local T6 = v
                TY_1, TZ_1 = pcall(function()
                    return HP.RedeemCode:InvokeServer(T6)
                end)
                local T_ = TY_1 and type(TZ_1) == "table" and TZ_1.Success
                if T_ then
                    TX += 1
                    Ha:Notify("Redeemed " .. T6)
                end
                task.wait(0.4)
            end
            Ha:Notify(string.format("Redeemed %d codes", TX))
        end)
    end
})
adC_104 = adC_47.Visuals:AddLeftGroupbox("Movement", "person-standing")
adC_104:AddToggle("WalkSpeedEnabled", { Text = "Walk Speed", Default = false })
adC_104:AddSlider("WalkSpeed", { Text = "Walk Speed", Default = 50, Min = 16, Max = 500, Rounding = 0 })
adC_104:AddToggle("JumpPowerEnabled", { Text = "Jump Power", Default = false })
adC_104:AddSlider("JumpPower", { Text = "Jump Power", Default = 50, Min = 7, Max = 500, Rounding = 0 })
adC_104:AddToggle("Noclip", { Text = "Noclip", Default = false })
adC_21 = nil
adC_29 = 7
repeat
    local afM = bit32.rrotate(bit32.bxor(bit32.lrotate(adC_29, 15), string.byte(tostring(adC_21))), 7)
    if bit32.bxor(bit32.lrotate(bit32.bxor(afM, 3386660395), 22), 2331146005) == bit32.lrotate(afM, 22) then
        adC_21 = adC_47.Visuals:AddLeftGroupbox("Map Teleports", "map-pin")
    else
        adC_47 = adC_21.Visuals:AddLeftGroupbox("Map Teleports", "map-pin")
    end
    adC_29 = (adC_29 + 6) % 8
until (adC_29 * 7 + 0) % 8 == 3
for k, v in adC_26 do
    local K6 = v
    adC_21:AddButton({
        Text = K6,
        Func = function()
            Hb(K6)
        end
    })
end
adC_12 = adC_47.Visuals:AddRightGroupbox("ESP", "scan-eye")
adC_12:AddToggle("WalkingPlantESP", { Text = "Walking Plant ESP", Default = false })
adC_12:AddToggle("GardenESP", { Text = "Garden ESP", Default = false })
adC_12:AddToggle("CapybaraESP", { Text = "Capybara ESP", Default = false })
adC_12:AddToggle("TotemESP", { Text = "Totem ESP", Default = false })
II, Hy, connection, connection2, Io, IW, Jn, Hm, Im, connection4, connection3, Hd, connection5, connection6, In, HV, Hw, Id, Jg, HN = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
adC_21 = adC_47.Settings:AddLeftGroupbox("Menu", "wrench")
adC_21:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
II = tick()
Hy = tick()
pcall(function()
    for i, v in ipairs(getconnections(H3.Idled)) do
        local Ud = v
        pcall(function()
            Ud:Disable()
        end)
    end
end)
In = fns.fn525
connection = adC_112.InputBegan:Connect(fns.onInputBegan)
connection2 = adC_112.InputChanged:Connect(fns.onInputChanged)
adC_21:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
adC_21:AddButton("Unload", fns.onUnload)
Ha.ToggleKeybind = Ja.MenuKeybind
HV = fns.fn1699
do
    adC_42:SetLibrary(Ha)
    adC_42:SetFolder("OuroborosHub")
    adC_42:SaveDefault("Monochrome")
    adC_34:SetLibrary(Ha)
    adC_34:IgnoreThemeSettings()
    adC_34:SetIgnoreIndexes({ "MenuKeybind" })
    adC_34:SetFolder("OuroborosHub/CapybarasVSPlants")
    adC_34:BuildConfigSection(adC_47.Settings)
    adC_42:ApplyToTab(adC_47.Settings)
    adC_42:LoadDefault()
    adC_34:LoadAutoloadConfig()
    task.spawn(fns.worker12)
    Io = os.clock()
    task.spawn(fns.worker11)
    IW = false
    task.spawn(function()
        local Uu_1
        local Ut_1
        local Us_1
        while not Ha.Unloaded do
            if Ib("AutoBuyEggs") then
                local Uq = Ho("BuyEggs")
                local Ur = Jb("EggMoneyReserve", 0)
                Uu_1, Us_1, Ut_1 = pcall(function()
                    return HP.RequestPersonalStock:InvokeServer()
                end)
                for k, v in Hc do
                    local UH = v
                    if not not Uq[UH] then
                        local Uv = IX.EggData.getData(UH)
                        local Uv_1 = Uv and Uv.Cost.Value or 0
                        local Uw_1 = Uu_1
                        local Uv_2 = 1
                        if Uw_1 then
                            Uw_1 = type(Us_1) == "table"
                        end
                        if Uw_1 then
                            local max = math.max
                            local Uy = Us_1[UH] or 0
                            local Uz_1 = (Ut_1 or {})[UH] or 0
                            Uv_2 = max(0, Uy - Uz_1)
                        end
                        local Uw_3 = Uv_2 > 0 and IO() - Uv_1 >= Ur
                        if Uw_3 then
                            pcall(function()
                                HP.BuyItem:FireServer(UH)
                            end)
                            task.wait(0.2)
                        end
                    end
                end
            end
            task.wait(Jb("EggBuyDelay", 3))
        end
    end)
    task.spawn(function()
        local UP_1
        local UO_1
        local UN_1
        while not Ha.Unloaded do
            if Ib("AutoBuyGears") then
                local UL = Ho("BuyGears")
                local UM = Jb("GearMoneyReserve", 0)
                UP_1, UO_1, UN_1 = pcall(function()
                    return HP.RequestPersonalStock:InvokeServer()
                end)
                for k, v in Ic do
                    local U0 = v
                    if not not UL[U0] then
                        local UQ = UP_1
                        local UR = 1
                        if UQ then
                            UQ = type(UO_1) == "table"
                        end
                        if UQ then
                            local max = math.max
                            local US = UO_1[U0] or 0
                            local UT_1 = (UN_1 or {})[U0] or 0
                            UR = max(0, US - UT_1)
                        end
                        local UQ_2 = UR > 0 and IO() >= UM
                        if UQ_2 then
                            pcall(function()
                                HP.BuyItem:FireServer(U0)
                            end)
                            task.wait(0.2)
                        end
                    end
                end
            end
            task.wait(Jb("GearBuyDelay", 3))
        end
    end)
    task.spawn(function()
        local U6_1
        local U5_1
        local U3_1
        local U4_1
        while not Ha.Unloaded do
            if Ib("AutoBuyMerchant") then
                local U1 = Ho("BuyMerchantItems")
                local U2 = Jb("MerchantMoneyReserve", 0)
                U3_1, U4_1, U5_1, U6_1 = pcall(function()
                    return HP.RequestMerchantStock:InvokeServer()
                end)
                local U7 = U3_1 and type(U4_1) == "string" and IX.ShopData.ShopOrders[U4_1]
                local U3_2 = U7 or nil
                local U7_1 = U3_2
                if U3_2 then
                    U3_2 = U4_1
                end
                local U4_2 = U3_2 or "none"
                HL:SetText(adC_69("Merchant", U4_2, If))
                if U7_1 then
                    for k, v in U7_1 do
                        local Vg = v
                        if not not U1[Vg] then
                            local U3_3 = 1
                            if type(U5_1) == "table" then
                                local max = math.max
                                local U7_2 = U5_1[Vg] or 0
                                local U8_1 = (U6_1 or {})[Vg] or 0
                                U3_3 = max(0, U7_2 - U8_1)
                            end
                            local U4_4 = U3_3 > 0 and IO() - fns.I6(Vg) >= U2
                            if U4_4 then
                                pcall(function()
                                    HP.BuyMerchantItem:FireServer(Vg)
                                end)
                                task.wait(0.6)
                            end
                        end
                    end
                end
            end
            task.wait(Jb("MerchantBuyDelay", 3))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            local Vi = not IW
            local Vj = Ib("AutoPlaceEggs") and Vi
            if Vj then
                local Vi_1 = Is()
                if Vi_1 then
                    IW = true
                    local Vj_1 = Ho("PlaceEggs")
                    local Vk = Ib("PlaceAnyEgg")
                    local Vl = IR(Vi_1)
                    local Vi_2 = 1
                    for k, v in HT() do
                        local Vv = v
                        if Vi_2 > #Vl then
                            break
                        else
                            local attr = Vv:GetAttribute("trueName")
                            local Vn = Vv:GetAttribute("isEgg") and attr and (Vk or Vj_1[attr])
                            if Vn then
                                local Vh = Vl[Vi_2]
                                if adC_14(Vv) then
                                    HP.GetMouseCF.OnClientInvoke = function()
                                        return CFrame.new(Vh)
                                    end
                                    pcall(function()
                                        Vv:Activate()
                                    end)
                                    task.wait(0.4)
                                    HV()
                                    Vi_2 += 1
                                end
                            end
                        end
                    end
                    IW = false
                end
            end
            task.wait(Jb("PlaceDelay", 1))
        end
    end)
    task.spawn(function()
        local VG = false
        repeat
            local Vx, Name
            if not Ha.Unloaded then
                local Vz = not IW
                local VA = Ib("AutoUpgradePlaced") and Vz
                if VA then
                    local Vz_1 = Is()
                    if Vz_1 then
                        local Vz_2 = {}
                        for k, v in Js("Tower") do
                            table.insert(Vz_2, { model = v, score = IC(v) })
                        end
                        table.sort(Vz_2, function(op, oq)
                            return op.score < oq.score
                        end)
                        local VA_1 = Vz_2[1]
                        local Vz_3 = VA_1 and string.format("%s (%d dps)", It(VA_1.model.Name), math.floor(VA_1.score))
                        local VB = Vz_3 or "none"
                        local VB_1
                        Label:SetText(adC_69("Weakest placed", VB, If))
                        local Vz_4 = Ib("UpgradeUseEggs")
                        Vx, VB_1 = nil, 0
                        for k, v in HT() do
                            local VC_1 = (v:GetAttribute("isTower"))
                            if not VC_1 then
                                local VD = Vz_4 and v:GetAttribute("isEgg")
                                VC_1 = VD
                            end
                            if VC_1 then
                                local VC_2 = Jo(v)
                                if VC_2 > VB_1 then
                                    Vx, VB_1 = v, VC_2
                                end
                            end
                        end
                        local Vz_5 = 1 + Jb("UpgradeMargin", 20) / 100
                        if VA_1 and Vx and VB_1 > VA_1.score * Vz_5 then
                            IW = true
                            local Position = VA_1.model:GetPivot().Position
                            Name = VA_1.model.Name
                            pcall(function()
                                HP.PickUp:FireServer(Name)
                            end)
                            local Vz_6 = os.clock() + 3
                            while true do
                                local VB_2 = os.clock() < Vz_6 and VA_1.model.Parent
                                if VB_2 then
                                    task.wait(0.1)
                                    continue
                                end
                                break
                            end
                            local Vz_7 = Vx.Parent and adC_14(Vx)
                            if Vz_7 then
                                HP.GetMouseCF.OnClientInvoke = function()
                                    return CFrame.new(Position)
                                end
                                pcall(function()
                                    Vx:Activate()
                                end)
                                task.wait(0.4)
                                HV()
                            end
                            IW = false
                        end
                    end
                end
                task.wait(Jb("UpgradeDelay", 5))
            else
                VG = true
            end
        until VG
    end)
    task.spawn(function()
        local Wd_1
        local Wc_1
        local Wb_1
        local Wa_1
        while not Ha.Unloaded do
            local VW = not IW
            local VX = Ib("AutoPickUp") and VW
            if VX then
                local VW_1 = Ho("PickUpRarities")
                local VX_1 = Ib("PickUpAllRarities")
                local VY = Ho("PickUpVariants")
                local VZ = Ib("PickUpAnyVariant")
                local V_ = Ib("PickUpRequireMutation")
                local V0 = Ho("PickUpMutations")
                local V1 = Ho("PickUpLanes")
                local V2 = Ib("PickUpAnyLane")
                local V3 = Jb("PickUpMinSize", 0)
                local V4 = Jb("PickUpMaxSize", 10)
                local V5 = Jb("PickUpMaxDps", 0)
                local V6 = Jb("PickUpKeepBest", 0)
                local V7 = Jb("PickUpPerCycle", 3)
                local V8 = {}
                local V8_2, V8_8, V8_9, V8_10
                for k, v in Js("Tower") do
                    table.insert(V8, { model = v, score = IC(v) })
                end
                table.sort(V8, function(pk, pl)
                    return pk.score > pl.score
                end)
                Label2:SetText(adC_69("Placed capybaras", tostring(#V8), If))
                local V9 = 0
                for k, v in V8 do
                    local Ws = v
                    local V8_1 = V9 >= V7 or not Ib("AutoPickUp") or Ha.Unloaded
                    if V8_1 then
                        break
                    elseif not (k <= V6) then
                        V8_2, Wa_1, Wb_1, Wc_1, Wd_1 = Hk(Ws.model)
                        if not not V8_2 then
                            local We = not VX_1
                            if We ~= false then
                                We = not VW_1[V8_2]
                            end
                            if not We then
                                local V8_3 = not VZ
                                if V8_3 ~= false then
                                    V8_3 = not VY[Wa_1 == "" and "None" or Wa_1]
                                end
                                if not V8_3 then
                                    if V_ then
                                        local V8_4 = false
                                        for k, v in fns.adC_6(Wb_1) do
                                            if V0[v] then
                                                V8_4 = true
                                                break
                                            end
                                        end
                                        if not not V8_4 then
                                            if not V8_8 then
                                                if not V8_9 then
                                                    if not V8_10 then
                                                        pcall(function()
                                                            HP.PickUp:FireServer(Ws.model.Name)
                                                        end)
                                                        V9 += 1
                                                        task.wait(0.3)
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        V8_8 = Wc_1 < V3 or Wc_1 > V4
                                        if not V8_8 then
                                            V8_9 = V5 > 0 and Ws.score > V5
                                            if not V8_9 then
                                                V8_10 = not V2
                                                if V8_10 ~= false then
                                                    V8_10 = not V1[tostring(Wd_1)]
                                                end
                                                if not V8_10 then
                                                    pcall(function()
                                                        HP.PickUp:FireServer(Ws.model.Name)
                                                    end)
                                                    V9 += 1
                                                    task.wait(0.3)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            task.wait(Jb("PickUpDelay", 5))
        end
    end)
    task.spawn(function()
        local WG
        local function WH()
            if not Ib("FarmOnlyDuringWeather") then
                return true
            end
            local Wz = Ho("WeatherWatch")
            for k in adC_59() do
                if Wz[k] then
                    return true
                end
            end
            return false
        end
        local WT = false
        repeat
            if not Ha.Unloaded then
                local WI = Ib("KillAura") and not IW and WH()
                if WI then
                    local WI_1 = Is()
                    local WJ_1 = I_()
                    local WF = He()
                    if WI_1 and WJ_1 and WF then
                        WG = WG or WJ_1.CFrame
                        local WK_2 = Ib("FarmBountyOnly")
                        if WK_2 then
                            Hs()
                        end
                        local WL_1 = Jb("AuraRange", 150)
                        local WM = Jb("AuraMinSize", 0)
                        local WN = Jb("AuraMaxSize", 10)
                        local WO = Hp[IU("AuraMinRarity", "Common")] or 1
                        local WP = HS(WI_1, WJ_1, WL_1, WM, WN, WK_2, WO)
                        local WI_2 = WP[1]
                        local WK_3 = WI_2 and adC_14(WF)
                        if WK_3 then
                            local WK_4 = os.clock() + Jb("AuraFocus", 3)
                            local WL_2 = 0
                            local WM_1 = math.random() * math.pi * 2
                            while true do
                                local WN_1 = os.clock() < WK_4 and Ib("KillAura") and not Ha.Unloaded and WI_2.model.Parent and adC_8(WI_2.model)
                                if WN_1 then
                                    local WN_2 = Hu(WI_2.model, WP)
                                    local WO_1 = math.min(Jb("AuraStrafeRadius", 5), adC_72 - 1)
                                    WM_1 += Jb("AuraStrafeSpeed", 4) * RunService.Heartbeat:Wait()
                                    local WQ = Vector3.new(math.cos(WM_1) * WO_1, Jb("AuraHeight", 4), math.sin(WM_1) * WO_1)
                                    local WO_2 = WN_2 + WQ
                                    WJ_1.CFrame = CFrame.lookAt(WO_2, Vector3.new(WN_2.X, WO_2.Y, WN_2.Z))
                                    if os.clock() - WL_2 >= I0 then
                                        WL_2 = os.clock()
                                        pcall(function()
                                            WF:Activate()
                                        end)
                                    end
                                    continue
                                end
                                break
                            end
                        end
                        local WI_3 = Ib("AuraReturn") and WG
                        if WI_3 then
                            WJ_1.CFrame = WG
                        end
                    end
                elseif WG then
                    local WI_4 = I_()
                    local WJ_2 = WI_4 and Ib("AuraReturn")
                    if WJ_2 then
                        WI_4.CFrame = WG
                    end
                    WG = nil
                end
                task.wait(Jb("AuraDelay", 0.5))
            else
                WT = true
            end
        until WT
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            if Ib("AutoHatch") then
                for k, v in Js("Egg") do
                    local W1 = v
                    local HatchPercentage = W1.ServerConfiguration:FindFirstChild("HatchPercentage")
                    if HatchPercentage and HatchPercentage.Value >= 100 then
                        pcall(function()
                            HP.Hatch:FireServer(W1.Name)
                        end)
                        task.wait(0.2)
                    end
                end
            end
            task.wait(Jb("HatchDelay", 2))
        end
    end)
    task.spawn(fns.worker10)
    task.spawn(function()
        while not Ha.Unloaded do
            if Ib("AutoSummonBoss") then
                local W6 = Is()
                local W6_1
                local W7 = Ho("BossTargets")
                local W8 = W6 and W6:GetAttribute("BossActive") ~= true and Jc(W7)
                local W8_1
                if W8 then
                    W6_1, W8_1 = pcall(function()
                        return HP.SummonBoss:InvokeServer("GetState")
                    end)
                    local W9 = W6_1 and type(W8_1) == "table"
                    if W9 then
                        local W9_1 = W8_1.Defeated or {}
                        local Xa = W8_1.Cooldowns or {}
                        for k, v in IP do
                            local Xi = v
                            if not not W7[Xi] then
                                local Xa_1 = Ib("BossSkipUndefeated") and W9_1[Xi] == true
                                if not Xa_1 then
                                    if not ((Xa[Xi] or 0) > 0) then
                                        local meetsRequirements = IX.BossData.meetsRequirements
                                        local Xb = W8_1.TreeLevel or 0
                                        if meetsRequirements(Xi, Xb, W9_1) then
                                            pcall(function()
                                                HP.SummonBoss:InvokeServer("Summon", Xi)
                                            end)
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            task.wait(Jb("BossDelay", 10))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            if Ib("AutoLevelUp") then
                pcall(function()
                    HP.RequestGrowth:InvokeServer()
                end)
            end
            if Ib("AutoTreeUpgrades") then
                local Xj = Ho("TreeUpgrades")
                for k, v in Ht do
                    local Xs = v
                    local Xk = Xj[Xs]
                    if Xk then
                        local Xl = H3:GetAttribute("TreeTokens") or 0
                        Xk = Xl >= 5
                    end
                    if Xk then
                        pcall(function()
                            HP.BuyTreeUpgrade:FireServer(Xs)
                        end)
                        task.wait(0.6)
                    end
                end
            end
            task.wait(Jb("LevelDelay", 10))
        end
    end)
    task.spawn(fns.worker9)
    task.spawn(fns.worker8)
    task.spawn(fns.worker7)
    task.spawn(fns.worker6)
    task.spawn(fns.worker5)
    task.spawn(fns.worker4)
    task.spawn(function()
        local Yn_2
        local Ym_1, Ym_2, Ym_4
        local Yl_1, Yl_2, Yl_4
        while not Ha.Unloaded do
            if Ib("AutoClaimRewards") then
                if Ib("ClaimDaily") then
                    Yl_1, Ym_1 = pcall(function()
                        return HP.RequestDailyRewards:InvokeServer()
                    end)
                    local Yn_1 = Yl_1 and type(Ym_1) == "table" and Ym_1.ClaimedToday ~= true
                    if Yn_1 then
                        pcall(function()
                            HP.ClaimDailyReward:FireServer()
                        end)
                        task.wait(0.4)
                    end
                end
                if Ib("ClaimPlaytime") then
                    Yl_2, Yn_2, Ym_2 = pcall(function()
                        return HP.RequestPlaytime:InvokeServer()
                    end)
                    local Yo_1 = Yl_2 and type(Yn_2) == "number"
                    if Yo_1 then
                        local Yl_3 = {}
                        local Yp_1 = Ym_2 or {}
                        for k, v in Yp_1 do
                            Yl_3[v] = true
                        end
                        for k, v in IX.GameInfo.PlaytimeRewards do
                            local YA = k
                            if not Yl_3[YA] and Yn_2 >= v.timeRequired then
                                pcall(function()
                                    HP.ClaimPlaytimeReward:FireServer(YA)
                                end)
                                task.wait(0.4)
                            end
                        end
                    end
                end
                if Ib("ClaimQuests") then
                    Yl_4, Ym_4 = pcall(function()
                        return HP.RequestQuests:InvokeServer()
                    end)
                    local Yn_3 = Yl_4 and type(Ym_4) == "table" and Ym_4.Daily
                    if Yn_3 then
                        local Yl_5 = Ym_4.TreeLevel or 0
                        for k, v in Ym_4.Daily.Active do
                            local YG = v
                            local Yl_6 = IX.QuestData.getById(YG)
                            local Yo_3 = Yl_6 and not Ym_4.Daily.Claimed[YG]
                            if Yo_3 then
                                local Yp_2 = Ym_4.Daily.Progress[YG] or 0
                                Yo_3 = Yp_2 >= IX.QuestData.getScaledDailyTarget(Yl_6, Yl_5)
                            end
                            if Yo_3 then
                                pcall(function()
                                    HP.ClaimQuest:InvokeServer(YG)
                                end)
                                task.wait(0.4)
                            end
                        end
                        if Ym_4.Bonus and not Ym_4.Bonus.Claimed and Ym_4.DailyClaimedCount >= #Ym_4.Daily.Active then
                            pcall(function()
                                HP.ClaimQuest:InvokeServer("DailyBonus")
                            end)
                            task.wait(0.4)
                        end
                        for k, v in IX.QuestData.Lifetime do
                            local YI = k
                            if not (YI > Yl_5) then
                                local Yl_8 = true
                                for k, v in v.Quests do
                                    local YQ = v
                                    if not Ym_4.LifetimeClaimed[YQ.Id] then
                                        if (Ym_4.LifetimeStats[YQ.Stat] or 0) >= YQ.Target then
                                            pcall(function()
                                                HP.ClaimQuest:InvokeServer(YQ.Id)
                                            end)
                                            task.wait(0.4)
                                        else
                                            Yl_8 = false
                                        end
                                    end
                                end
                                local Yo_5 = Yl_8 and not Ym_4.LevelRewardClaimed[tostring(YI)]
                                if Yo_5 then
                                    pcall(function()
                                        HP.ClaimQuest:InvokeServer("LevelReward:" .. YI)
                                    end)
                                    task.wait(0.4)
                                end
                            end
                        end
                    end
                end
            end
            task.wait(Jb("RewardDelay", 15))
        end
    end)
    task.spawn(fns.worker3)
    task.spawn(function()
        local function Zr(tW, tX)
            local Y9 = Ib("FuseKeepFavorited")
            for k, v in HT() do
                local Za = tX and v:GetAttribute("isTower")
                local Zb = Za
                if not Zb then
                    local Za_1 = not tX
                    if Za_1 ~= false then
                        Za_1 = v:GetAttribute("isPlant")
                    end
                    Zb = Za_1
                end
                if Zb then
                    local Za_2 = Jk(v) or ""
                    Zb = It(Za_2) == tW
                end
                if Zb then
                    local Za_3 = Y9 and v:GetAttribute("Favorited") == true
                    if not Za_3 then
                        return v
                    end
                end
            end
        end
        local function Zs(t8, t9, ua)
            local Zn_1
            local Zm_1
            local Zj = I_()
            if not Zj then
                return false
            end
            local CFrame2 = Zj.CFrame
            Zj.CFrame = CFrame.new(t9:GetPivot().Position + Vector3.new(0, 5, 0))
            task.wait(0.3)
            local Zl = false
            if adC_14(t8) then
                Zm_1, Zn_1 = pcall(function()
                    return HP.FuseAction:InvokeServer("Place", ua)
                end)
                Zl = Zm_1 and Zn_1 ~= false
                task.wait(0.4)
            end
            if Ib("FuseReturn") then
                Zj.CFrame = CFrame2
            end
            return Zl
        end
        while not Ha.Unloaded do
            local Zt = not IW
            local Zt_2, Zt_12
            local Zu = Ib("AutoFuse") and Zt
            local Zu_2, Zu_3
            if Zu then
                local Fusions = IX.FusionData.Fusions
                local Zu_1 = Hv[IU("FuseRecipe", "")] or 0
                local Zv = Fusions[Zu_1]
                Zt_2, Zu_2 = pcall(function()
                    return HP.FuseAction:InvokeServer("GetState")
                end)
                local Zw = Zt_2 and type(Zu_2) == "table"
                if Zw then
                    local Zw_1 = Zu_2.State or "Idle"
                    Label5:SetText(adC_69("Machine", Zw_1, If))
                    local Zx = Zu_2.Plant and Zu_2.Plant.Name or "empty"
                    Label6:SetText(adC_69("Plant slot", Zx, Ij))
                    local Zx_1 = Zu_2.Capybara and Zu_2.Capybara.Name or "empty"
                    Label7:SetText(adC_69("Capybara slot", Zx_1, Ij))
                    local Zt_6 = Zw_1 == "Done" and Ib("FuseCollect")
                    if Zt_6 then
                        pcall(function()
                            HP.FuseAction:InvokeServer("Collect")
                        end)
                    else
                        if Zw_1 == "Idle" and Zv then
                            IW = true
                            if not (Zu_2.Plant and Zu_2.Plant.Name == Zv.Plant) then
                                local Zt_9 = Zr(Zv.Plant, false)
                                if Zt_9 then
                                    Zs(Zt_9, Hn, "Plant")
                                end
                            end
                            if not (Zu_2.Capybara and Zu_2.Capybara.Name == Zv.Capybara) then
                                local Zt_11 = Zr(Zv.Capybara, true)
                                if Zt_11 then
                                    Zs(Zt_11, Ix, "Capybara")
                                end
                            end
                            Zt_12, Zu_3 = pcall(function()
                                return HP.FuseAction:InvokeServer("GetState")
                            end)
                            local Zw_2 = Zt_12 and type(Zu_3) == "table" and Zu_3.Plant and Zu_3.Capybara and Zu_3.Plant.Name == Zv.Plant and Zu_3.Capybara.Name == Zv.Capybara
                            if Zw_2 then
                                pcall(function()
                                    HP.FuseAction:InvokeServer("Fuse", tostring(Hv[IU("FuseRecipe", "")]))
                                end)
                            end
                            IW = false
                        end
                    end
                end
            end
            task.wait(Jb("FuseDelay", 10))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            local Zz = H3:GetAttribute("BountyTokens") or 0
            Label8:SetText(adC_69("Bounty tokens", tostring(Zz), Ij))
            if Ib("AutoBuyBountyShop") then
                local Zz_1 = Ho("BuyBountyItems")
                local ZA_1 = Jb("BountyTokenReserve", 0)
                for k, v in IX.BountyShopData.Items do
                    local ZJ = v
                    if not not Zz_1[ZJ.ItemName] then
                        local ZB = IX.BountyShopData.getCost(ZJ)
                        if not not ZB then
                            local ZC = H3:GetAttribute("BountyTokens") or 0
                            if ZC - ZB >= ZA_1 then
                                pcall(function()
                                    HP.BuyBountyItem:InvokeServer(ZJ.ItemName)
                                end)
                                task.wait(0.5)
                            end
                        end
                    end
                end
            end
            task.wait(Jb("BountyShopDelay", 10))
        end
    end)
    task.spawn(fns.worker2)
    task.spawn(function()
        while not Ha.Unloaded do
            local Z7 = not IW
            local Z8 = Ib("AutoPlaceTotems") and Z7
            if Z8 then
                local Z7_1 = Is()
                if Z7_1 then
                    HG:SetText(adC_69("Placed totems", tostring(#Js("Totem")), If))
                    local Z8_1 = Ho("PlaceTotems")
                    local Z9 = Ib("PlaceAnyTotem")
                    local aaa = IJ(Z7_1)
                    local Z7_2 = 1
                    IW = true
                    for k, v in HT() do
                        local aak = v
                        if Z7_2 > #aaa then
                            break
                        else
                            local aab = Ik(aak)
                            if aab and (Z9 or Z8_1[aab]) then
                                local Z6 = aaa[Z7_2]
                                if adC_14(aak) then
                                    HP.GetMouseCF.OnClientInvoke = function()
                                        return CFrame.new(Z6)
                                    end
                                    pcall(function()
                                        aak:Activate()
                                    end)
                                    task.wait(0.4)
                                    HV()
                                    Z7_2 += 1
                                end
                            end
                        end
                    end
                    IW = false
                end
            end
            task.wait(Jb("TotemDelay", 10))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            if Ib("AutoRetrieveTotems") then
                local aao = Ho("RetrieveTotems")
                local aap = Ib("RetrieveAnyTotem")
                for k, v in Js("Totem") do
                    local aay = v
                    local aaq = It(aay.Name)
                    if aap or aao[aaq] then
                        pcall(function()
                            HP.PickUpTotem:FireServer(aay.Name)
                        end)
                        task.wait(0.35)
                    end
                end
            end
            task.wait(Jb("RetrieveTotemDelay", 10))
        end
    end)
    task.spawn(function()
        local aaX_2
        local aaV_2
        local aaH_2
        local aaF_3
        local aaG_7
        while not Ha.Unloaded do
            local aaz = not IW
            local aaA = Ib("AutoManagePots") and aaz
            if aaA then
                local aaz_1 = Is()
                if aaz_1 then
                    local aaA_1 = Ib("ManagePotKeepBounty")
                    local aaB = Ib("ManagePotReplace")
                    local aaC = Ia(aaz_1)
                    local aaz_2 = {}
                    for k, v in HT() do
                        if v:GetAttribute("isPlant") then
                            local aaD_1 = aaA_1 and H_(v)
                            if not aaD_1 then
                                table.insert(aaz_2, { tool = v, score = HD(v) })
                            end
                        end
                    end
                    table.sort(aaz_2, function(ws, wt)
                        return ws.score > wt.score
                    end)
                    local aaD_2 = 1
                    local aaE = {}
                    IW = true
                    for k, v in aaC do
                        local aaU = v
                        if aaU.occupied then
                            if not not aaB then
                                local aaC_1 = aaU.plantID and PottedPlants.Server:FindFirstChild(aaU.plantID)
                                if not not aaC_1 then
                                    if aaA_1 then
                                        local ServerConfiguration = aaC_1:FindFirstChild("ServerConfiguration")
                                        local aaG_1 = ServerConfiguration and Iz(aaC_1, ServerConfiguration)
                                        if not aaG_1 then
                                            HI(aaC_1)
                                            local aaF_2 = nil
                                            local aaX_1 = aaD_2
                                            while aaX_2 <= aaV_2 do
                                                local aaY_1 = aaX_1
                                                local aaG_3 = aaz_2[aaY_1]
                                                if aaH_2 then
                                                    aaF_2 = aaG_3
                                                    aaD_2 = aaY_1
                                                    break
                                                end
                                                aaX_1 += 1
                                            end
                                            if not not aaF_3 then
                                                local aaC_4 = H3.Character and H3.Character:FindFirstChildOfClass("Humanoid")
                                                if aaG_7 then
                                                    aaC_4:UnequipTools()
                                                    task.wait(0.2)
                                                end
                                                pcall(function()
                                                    HP.PotInteract:FireServer(aaU.number)
                                                end)
                                                task.wait(0.35)
                                                if adC_14(aaF_3.tool) then
                                                    pcall(function()
                                                        HP.PotInteract:FireServer(aaU.number)
                                                    end)
                                                    aaE[aaF_2.tool] = true
                                                    task.wait(0.35)
                                                end
                                            end
                                        end
                                    else
                                        local aaC_5 = HI(aaC_1)
                                        aaF_3 = nil
                                        local aaG_5 = #aaz_2
                                        aaX_2 = aaD_2
                                        aaV_2 = aaG_5
                                        while aaX_2 <= aaV_2 do
                                            local aaY_2 = aaX_2
                                            local aaG_6 = aaz_2[aaY_2]
                                            aaH_2 = not aaE[aaG_6.tool]
                                            if aaH_2 ~= false then
                                                aaH_2 = aaG_6.score > aaC_5
                                            end
                                            if aaH_2 then
                                                aaF_3 = aaG_6
                                                aaD_2 = aaY_2
                                                break
                                            end
                                            aaX_2 += 1
                                        end
                                        if not not aaF_3 then
                                            local aaC_6 = H3.Character and H3.Character:FindFirstChildOfClass("Humanoid")
                                            aaG_7 = aaC_6
                                            if aaG_7 then
                                                aaG_7:UnequipTools()
                                                task.wait(0.2)
                                            end
                                            pcall(function()
                                                HP.PotInteract:FireServer(aaU.number)
                                            end)
                                            task.wait(0.35)
                                            if adC_14(aaF_3.tool) then
                                                pcall(function()
                                                    HP.PotInteract:FireServer(aaU.number)
                                                end)
                                                aaE[aaF_3.tool] = true
                                                task.wait(0.35)
                                            end
                                        end
                                    end
                                end
                            end
                        else
                            local aaC_7 = nil
                            local aaF_4 = #aaz_2
                            local aa1 = aaD_2
                            while aa1 <= aaF_4 do
                                local aa2 = aa1
                                local aaF_5 = aaz_2[aa2]
                                if not aaE[aaF_5.tool] then
                                    aaC_7 = aaF_5
                                    aaD_2 = aa2
                                    break
                                end
                                aa1 += 1
                            end
                            if not aaC_7 then
                                break
                            elseif adC_14(aaC_7.tool) then
                                pcall(function()
                                    HP.PotInteract:FireServer(aaU.number)
                                end)
                                aaE[aaC_7.tool] = true
                                task.wait(0.35)
                            end
                        end
                    end
                    IW = false
                end
            end
            task.wait(Jb("ManagePotDelay", 5))
        end
    end)
    task.spawn(function()
        local aa6_1
        local aa5_1
        while not Ha.Unloaded do
            if Ib("AutoSyncAutoSell") then
                aa5_1, aa6_1 = pcall(function()
                    return HP.RequestOptions:InvokeServer()
                end)
                local aa7 = aa5_1 and type(aa6_1) == "table" and aa6_1.Autosell
                if aa7 then
                    local aa5_2 = {}
                    local aa8 = aa6_1.Autosell.Selected or {}
                    for k, v in aa8 do
                        aa5_2[v] = true
                    end
                    local aa6_2 = Ib("SellAllRarities")
                    local aa7_2 = Ho("SellRarities")
                    for k, v in I3 do
                        local abl = v
                        local aa8_1 = aa6_2 or adC_10(aa7_2, abl)
                        local aa4 = aa8_1
                        if aa4 ~= (aa5_2[abl] == true) then
                            pcall(function()
                                HP.ChangeAutosellOptions:InvokeServer("AutosellRarity", { Rarity = abl, Enabled = aa4 })
                            end)
                            task.wait(0.15)
                        end
                    end
                end
            end
            task.wait(Jb("SyncSellDelay", 10))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            local abE = if Ib("AutoMutationSponge") then 1 else 0
            if abE == 1 then
                local abm = Ie("Mutation Sponge")
                local abn = Ho("SpongeMutations")
                local abo = abm and Jc(abn)
                if abo then
                    local abo_1 = IS(Ib("SpongeOnTowers"), Ib("SpongeOnEggs"), Ib("SpongeOnPlants"))
                    for k, v in abo_1 do
                        local abv = v
                        for k, v in Iv(abv) do
                            local abB = v
                            if abn[abB] then
                                if adC_14(abm) then
                                    pcall(function()
                                        HP.MutationSponge:FireServer(abv, abB)
                                    end)
                                    task.wait(0.35)
                                end
                            end
                        end
                    end
                end
            end
            task.wait(Jb("SpongeDelay", 5))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            if Ib("AutoMutationScrolls") then
                local abG = Ho("UseScrolls")
                local abH = IS(Ib("ScrollOnTowers"), Ib("ScrollOnEggs"), Ib("ScrollOnPlants"))
                for k, v in Je do
                    if abG[v] then
                        local abF = v:split(" ")[1]
                        local abI = Ie(v)
                        if abI then
                            for k, v2 in abH do
                                local abV = v2
                                if not Ju(abV, abF) then
                                    if adC_14(abI) then
                                        pcall(function()
                                            HP.MutationScroll:FireServer(abF, abV)
                                        end)
                                        task.wait(0.35)
                                        abI = Ie(v)
                                        if not abI then
                                            break
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
            task.wait(Jb("ScrollDelay", 5))
        end
    end)
    task.spawn(function()
        while not Ha.Unloaded do
            if Ib("AutoRaygun") then
                local abW = Ie("Raygun")
                local abX = Jb("RaygunBelowSize", 1.5)
                if abW then
                    local abY = IS(Ib("RaygunOnTowers"), Ib("RaygunOnEggs"), Ib("RaygunOnPlants"))
                    for k, v in abY do
                        local ab4 = v
                        if I9(ab4) < abX then
                            if adC_14(abW) then
                                pcall(function()
                                    HP.Raygun:FireServer(ab4)
                                end)
                                task.wait(0.35)
                                abW = Ie("Raygun")
                                if not abW then
                                    break
                                end
                            end
                        end
                    end
                end
            end
            task.wait(Jb("RaygunDelay", 5))
        end
    end)
    Jn = {}
end
task.spawn(function()
    local ab6_1
    local ab5_1
    while not Ha.Unloaded do
        if Ib("AutoRedeemCodes") then
            for k, v in I2 do
                local acf = v
                if not Jn[acf] then
                    ab5_1, ab6_1 = pcall(function()
                        return HP.RedeemCode:InvokeServer(acf)
                    end)
                    Jn[acf] = true
                    local ab7 = ab5_1 and type(ab6_1) == "table" and ab6_1.Success
                    if ab7 then
                        Ha:Notify("Redeemed " .. acf)
                    end
                    task.wait(0.4)
                end
            end
        end
        task.wait(15)
    end
end)
Hw = fns.fn1500
Hm = false
Im = false
connection4 = nil
connection3 = nil
Hd = {}
Id = fns.fn1772
Jg = fns.fn542
HN = function(yM)
    if connection4 then
        connection4:Disconnect()
        connection4 = nil
    end
    if connection3 then
        connection3:Disconnect()
        connection3 = nil
    end
    if not yM then
        return
    end
    connection4 = yM:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
        local acn = Hm or Ha.Unloaded or not Ib("WalkSpeedEnabled")
        if acn then
            return
        end
        Id(yM)
    end)
    local acv = yM.UseJumpPower and "JumpPower" or "JumpHeight"
    connection3 = yM:GetPropertyChangedSignal(acv):Connect(function()
        local acp = Im or Ha.Unloaded or not Ib("JumpPowerEnabled")
        if acp then
            return
        end
        Jg(yM)
    end)
    if Ib("WalkSpeedEnabled") then
        Id(yM)
    end
    if Ib("JumpPowerEnabled") then
        Jg(yM)
    end
end
connection5 = H3.CharacterAdded:Connect(fns.onCharacterAdded)
HN(Hw())
connection6 = RunService.RenderStepped:Connect(fns.onRenderStepped)
if Toggles.WalkSpeedEnabled then
    Toggles.WalkSpeedEnabled:OnChanged(function()
        if Toggles.WalkSpeedEnabled.Value then
            Id(Hw())
        end
    end)
end
if Toggles.JumpPowerEnabled then
    Toggles.JumpPowerEnabled:OnChanged(function()
        if Toggles.JumpPowerEnabled.Value then
            Jg(Hw())
        end
    end)
end
if Toggles.Noclip then
    Toggles.Noclip:OnChanged(function()
        if Toggles.Noclip.Value then
            return
        end
        for k in Hd do
            if k.Parent then
                k.CanCollide = true
            end
        end
        table.clear(Hd)
    end)
end
task.spawn(fns.worker13)
Ha:OnUnload(fns.fn638)
Ha:Notify("Capybaras VS Plants loaded")
