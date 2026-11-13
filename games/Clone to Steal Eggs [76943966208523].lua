local fns = {}
local Qz_4, Qz_6, Qz_14, Qz_15, Qz_25, Qz_26
local Aw
local AV
local BC
local AC
local Bj
local A0
local BI
local AI
local Bp
local Ap
local A6
local AO
local Bc
local BB
local AB
local Bi
local Ai
local A_
local BH
local AH
local Bo
local Ao
local A5
local BN
local AN
local Au
local Bb
local BT
local Ah
local AZ
local AG
local Bn
local An
local A4
local BM
local AM
local Bt
local At
local Ba
local AS
local Bz
local Bg
local BF
local AF
local A3
local BL
local AL
local Bs
local As
local BR
local Ay
local Bf
local AX
local BE
local AE
local Bl
local Al
local A2
local AK
local Br
local Ar
local A8
local BQ
local AQ
local Bx
local Ax
local AW
local BD
local AD
local Bk
local Ak
local AJ
local Bq
local LocalPlayer
local BP
local AP
local Bw
function fns.fn44(cR, cS)
    if cR.tier ~= cS.tier then
        return cR.tier < cS.tier
    end
    return cR.id < cS.id
end
function fns.fn49(dL)
    local Fe = AH()
    if not Fe then
        return false
    end
    Fe.AssemblyLinearVelocity = Vector3.zero
    Fe.AssemblyAngularVelocity = Vector3.zero
    Fe.CFrame = dL
    return true
end
function fns.fn57()
    local Mf_4, Mf_5
    At()
    if BH() > 0 then
        local Mf_1 = BP("DepositZone")
        if Mf_1 then
            BT(Mf_1.CFrame + Vector3.new(0, 3, 0))
            return true
        end
        A6("PlotService", "TeleportToPlot")
        if Mf_4 then
            return true
        end
        local Mf_3 = BP("SpawnPad")
        if Mf_5 then
            return BT(Mf_3.CFrame + Vector3.new(0, 3, 0))
        end
        return false
    end
    Mf_4 = A6("PlotService", "TeleportToPlot")
    if Mf_4 then
        return true
    end
    Mf_5 = BP("SpawnPad")
    if Mf_5 then
        return BT(Mf_5.CFrame + Vector3.new(0, 3, 0))
    end
    return false
end
function fns.fn60(nu)
    BI.CloneUpgrades = Bq(nu)
end
function fns.fn61()
    local Plots = BQ:FindFirstChild("Plots")
    if not Plots then
        return nil
    end
    for i, child in ipairs(Plots:GetChildren()) do
        if child:GetAttribute("Owner") == LocalPlayer.UserId then
            return child
        end
    end
    return nil
end
function fns.fn89(nz)
    BI.CloneAutoSellEggs = Bq(nz)
end
function fns.fn92(nQ)
    BI.AutoSellEggs = nQ == true
    A4()
end
function fns.fn107(j7)
    local id
    while true do
        local JQ = Ao() and BC.Sell == j7
        local item
        if JQ then
            JQ = BI.AutoSellBrainrots or BI.AutoSellEggs
        end
        if JQ then
            local JQ_1 = AI()
            local JR_2 = 0
            if not JQ_1 then
                Bw("Sell", "Waiting for data")
            else
                local JS = Ai()
                local JT = A0()
                for i, v in ipairs(AF(JQ_1.Inventory)) do
                    id, item = v.id, v.item
                    local JV = not Ao() or BC.Sell ~= j7
                    if JV then
                        return
                    end
                    local JV_1 = type(item) == "table" and item.innerEntity
                    local JV_2 = type(JV_1) == "table" and JV_1.locked ~= true
                    if JV_2 then
                        if item.itemType == "Brainrot" and BI.AutoSellBrainrots then
                            local JV_4 = JS[JV_1.brainrotType]
                            if JV_4 and BI.SellBrainrotRarities[JV_4.rarity] and not BI.KeepMutations[JV_1.mutation or "NORMAL"] then
                                A6("InventoryService", "SellBrainrot", id)
                                JR_2 += 1
                                if not A3(0.15, "Sell", j7) then
                                    return
                                end
                            end
                        else
                            if item.itemType == "Egg" and BI.AutoSellEggs then
                                local JQ_3 = JT[JV_1.eggType]
                                if JQ_3 and BI.SellEggRarities[JQ_3.rarity] then
                                    A6("InventoryService", "SellEgg", id)
                                    JR_2 += 1
                                    if not A3(0.15, "Sell", j7) then
                                        return
                                    end
                                end
                            end
                        end
                    end
                end
                if JR_2 > 0 then
                    Bw("Sell", "Sold " .. JR_2 .. " items")
                else
                    local JQ_4 = AZ(BI.SellBrainrotRarities) and AZ(BI.SellEggRarities)
                    if JQ_4 then
                        Bw("Sell", "Pick rarities to sell")
                    else
                        Bw("Sell", "Nothing to sell")
                    end
                end
            end
            if not A3(math.max(1, BI.SellInterval), "Sell", j7) then
                return
            end
            continue
        end
        break
    end
end
function fns.fn116()
    local Eh_1
    local Ef = Bk("CloneController")
    local Eg = not Ef
    local Eg_1
    local El = if Eg then 1 else 0
    local Ej = 1684 * El + 3779 * (1 - El)
    local Ek = 3180 * El + 2552 * (1 - El)
    if not ((Ej * 3775 + Ek * 470 + Ej * Ek) % 16777213 == 13206820) then
        Eg = not Aw(Ef.GetData)
    end
    if Eg then
        return nil
    end
    Eg_1, Eh_1 = pcall(Ef.GetData, Ef)
    local Ef_1 = Eg_1 and type(Eh_1) == "table"
    if Ef_1 then
        return Eh_1
    end
    return nil
end
function fns.fn117()
    AJ.Unload()
end
function fns.fn126(oa)
    BI.AutoUpgradeTreadmill = oa == true
    Ay("TreadmillUpgrade", BI.AutoUpgradeTreadmill, AG)
end
function fns.fn129()
    local E8 = AQ()
    local E9 = E8 and E8:FindFirstChild("HumanoidRootPart")
    return E9
end
function fns.fn132(gK)
    local G0 = { LocalPlayer:FindFirstChildOfClass("Backpack"), AQ() }
    for i, v in ipairs(G0) do
        if v then
            for i, child in ipairs(v:GetChildren()) do
                local G0_1 = child:IsA("Tool") and child:GetAttribute("EntityId") == gK
                if G0_1 then
                    return child
                end
            end
        end
    end
    return nil
end
function fns.fn140(jc)
    local I6 = AK()[jc]
    local I7 = I6 and Ax()[I6.bossId]
    local I6_1 = I7
    if I7 then
        I7 = tonumber(I6_1.speed)
    end
    local I6_2 = I7
    local Jb = if I6_2 then 1 else 0
    local I9 = 3536 * Jb + 3140 * (1 - Jb)
    local Ja = 762 * Jb + 2772 * (1 - Jb)
    if not ((I9 * 3349 + Ja * 3284 + I9 * Ja) % 16777213 == 261691) then
        I6_2 = 0
    end
    return I6_2
end
function fns.fn149(iY)
    while true do
        local IU = Ao() and BC.Equip == iY and BI.AutoEquipBest
        if IU then
            local IU_1 = A6("AnimalService", "EquipBest")
            local IU_2 = IU_1 and "Equipped best" or "Equip best failed"
            Bw("Equip", IU_2)
            if not A3(5, "Equip", iY) then
                break
            end
            continue
        end
        return
    end
    return
end
function fns.fn166(nW)
    local L7 = tonumber(nW) or 5
    BI.SellInterval = L7
end
function fns.fn168()
    local Packages = Ah:FindFirstChild("Packages")
    local DH = Packages and Packages:FindFirstChild("_Index")
    local DG_1 = DH
    if DH then
        DH = DG_1:FindFirstChild(BM)
    end
    local DG_2 = DH
    if DH then
        DH = DG_2:FindFirstChild("knit")
    end
    return DH or nil
end
function fns.fn170(kx)
    local J9_1
    while true do
        local J6 = Ao() and BC.Base == kx and BI.AutoUpgradeBase
        local J6_2
        if J6 then
            local J6_1 = AI()
            local J7 = A8("UpgradeConfig")
            local J8 = not J6_1 or not J7 or not Aw(J7.GetPrice)
            if J8 then
                Bw("Base", "Waiting for data")
            else
                local J8_1 = Ba(J6_1, "PlotUpgrade")
                J6_2, J9_1 = pcall(J7.GetPrice, "PlotUpgrade", J8_1 + 1)
                local J7_1 = not J6_2 or type(J9_1) ~= "number"
                if J7_1 then
                    Bw("Base", "Base maxed")
                elseif Bz() < J9_1 then
                    Bw("Base", "Base level " .. J8_1 .. ", need more cash")
                else
                    Bw("Base", "Upgrading base")
                    A6("UpgradesService", "Upgrade", "PlotUpgrade", 1)
                end
            end
            if not A3(1.5, "Base", kx) then
                return
            end
            continue
        end
        break
    end
end
function fns.fn180()
    local EQ = A8("BrainrotsConfig")
    local ER = EQ and type(EQ.CONFIG) == "table" and EQ.CONFIG
    return ER or {}
end
function fns.fn181(iA)
    while true do
        local IF = Ao() and BC.Hatch == iA and BI.AutoHatchEggs
        if IF then
            local IF_1 = As()
            local IG = IF_1 and IF_1:FindFirstChild("Eggs")
            local IF_2 = 0
            local IG_1 = 0
            if IG then
                local II = BQ:GetServerTimeNow()
                for i, child in ipairs(IG:GetChildren()) do
                    local IJ = not Ao() or BC.Hatch ~= iA or not BI.AutoHatchEggs
                    if IJ then
                        return
                    end
                    local attr2 = child:GetAttribute("EggId")
                    local attr = child:GetAttribute("OwnerId")
                    local IL = attr2
                    if IL then
                        IL = attr == nil or attr == LocalPlayer.UserId
                    end
                    if IL then
                        IL = not child:GetAttribute("IsHatching")
                    end
                    if IL then
                        local IK_1 = tonumber(child:GetAttribute("StartTime")) or 0
                        local IL_1 = tonumber(child:GetAttribute("Duration")) or 0
                        if IK_1 + IL_1 - II < 1 then
                            local IK_2 = child:GetAttribute("EggType") or child.Name
                            Bw("Hatch", "Hatching " .. tostring(IK_2))
                            A6("EggService", "HatchEgg", attr2)
                            IF_2 += 1
                            if not A3(0.3, "Hatch", iA) then
                                return
                            end
                        else
                            IG_1 += 1
                        end
                    end
                end
            end
            if IF_2 == 0 then
                local IG_2 = IG and "Waiting on " .. IG_1 .. " eggs" or "Plot not found"
                Bw("Hatch", IG_2)
            end
            if not A3(1, "Hatch", iA) then
                break
            end
            continue
        end
        return
    end
    return
end
function fns.fn183(md)
    while true do
        local Lr = Ao() and BC.Rebirth == md and BI.AutoRebirth
        if Lr then
            local Lr_1 = AI()
            local Ls = A8("RebirthConfig")
            local Lt = Ls and Ls.REBIRTH
            local Ls_1 = not Lr_1
            if not Ls_1 then
                Ls_1 = type(Lt) ~= "table"
            end
            if Ls_1 then
                Bw("Rebirth", "Waiting for data")
            else
                local Ls_2 = tonumber(Lr_1.Rebirth) or 0
                local Ls_3 = Lt[Ls_2 + 1]
                if type(Ls_3) ~= "table" then
                    Bw("Rebirth", "Rebirth maxed")
                else
                    local Lu_1 = type(Lr_1.Currencies) == "table" and Lr_1.Currencies
                    local Lv = Lu_1 or {}
                    local Lr_3 = true
                    local Lv_1 = type(Ls_3.Cost) == "table" and Ls_3.Cost
                    local Lw = Lv_1 or {}
                    for k, v in pairs(Lw) do
                        local Ls_5 = tonumber(Lv[k]) or 0
                        local Lv_2 = tonumber(v) or math.huge
                        if Ls_5 < Lv_2 then
                            Lr_3 = false
                        end
                    end
                    if Lr_3 then
                        Bw("Rebirth", "Rebirthing to " .. Ls_2 + 1)
                        A6("RebirthService", "Rebirth")
                    else
                        Bw("Rebirth", "Rebirth " .. Ls_2 .. ", need more cash")
                    end
                end
            end
            if not A3(2, "Rebirth", md) then
                break
            end
            continue
        end
        return
    end
    return
end
function fns.fn206(lX)
    while true do
        local Ll = Ao() and BC.TreadmillUpgrade == lX and BI.AutoUpgradeTreadmill
        if Ll then
            local Ll_1 = A8("TrainToolConfig")
            local Lm = Ll_1 and Ll_1.TRAIN_TOOLS
            Bj("TreadmillUpgrade", Lm, "OwnedTrainTools", "EquippedTrainTool", "BuyTrainTool", "EquipTrainTool", "gainPerTrain", "TrainingService")
            if not A3(2, "TreadmillUpgrade", lX) then
                return
            end
            continue
        end
        break
    end
end
function fns.fn208(nq)
    local L_ = type(nq) == "string" and nq
    local L0 = L_ or "Best Safe"
    BI.CloneTarget = L0
end
function fns.fn245(ea)
    local Fx = As()
    local Fy = Fx and Fx:FindFirstChild(ea)
    local Fx_1 = Fy
    if Fy then
        Fy = Fx_1:IsA("BasePart")
    end
    return Fy and Fx_1 or nil
end
function fns.fn262(fJ)
    local GB = BP("DepositZone")
    local GC = BP("SpawnPad")
    local GD = {}
    if GB then
        table.insert(GD, GB.CFrame + Vector3.new(0, 3, 0))
    end
    if GC then
        table.insert(GD, GC.CFrame + Vector3.new(0, 3, 0))
    end
    if #GD == 0 then
        return false
    end
    for i, v in ipairs(GD) do
        BT(v)
        if AL(function()
            return BH() == 0
        end, 4, "Steal", fJ) then
            return true
        end
        local GB_1 = not Ao() or BC.Steal ~= fJ
        if GB_1 then
            return false
        end
    end
    return BH() == 0
end
function fns.fn267()
    local L2 = BI.AutoSellBrainrots
    local L6 = if L2 then 1 else 0
    local L4 = 3186 * L6 + 2730 * (1 - L6)
    local L5 = 909 * L6 + 1112 * (1 - L6)
    if not ((L4 * 552 + L5 * 415 + L4 * L5) % 16777213 == 5031981) then
        L2 = BI.AutoSellEggs
    end
    Ay("Sell", L2, Ar)
end
function fns.fn290(cc)
    local Ey_1
    local Ex_1, Ex_3
    local Ew_4
    if An == nil then
        local Modifiers = Ah:FindFirstChild("Modifiers")
        Ex_1, Ey_1 = false, nil
        local Ez = Modifiers and Modifiers:IsA("ModuleScript")
        if Ez then
            Ex_1, Ey_1 = pcall(require, Modifiers)
        end
        local Ew_2 = Ex_1 and type(Ey_1) == "table" and Aw(Ey_1.Get)
        local Ew_3 = Ew_2 and Ey_1
        local ED = if Ew_3 then 1 else 0
        local EB = 1063 * ED + 3645 * (1 - ED)
        local EC = 1076 * ED + 2874 * (1 - ED)
        if not ((EB * 1503 + EC * 646 + EB * EC) % 16777213 == 3436573) then
            Ew_3 = false
        end
        An = Ew_3
    end
    if not An then
        return nil
    end
    Ew_4, Ex_3 = pcall(An.Get, LocalPlayer, cc)
    local Ey_2 = Ew_4 and type(Ex_3) == "number"
    if Ey_2 then
        return Ex_3
    end
    return nil
end
function fns.fn332(i4, i5)
    local I1_1
    local I_ = A8("AreasConfig")
    local I0 = I_ and Aw(I_.IsUnlocked)
    local I0_1
    if I0 then
        I0_1, I1_1 = pcall(I_.IsUnlocked, i4, i5)
        if I0_1 then
            return I1_1 == true
        end
        return i5 == BD[1]
    end
    return i5 == BD[1]
end
function fns.fn362(el)
    if Bn == el then
        Bn = nil
    end
end
function fns.fn384(m2)
    BI.StealRarities = Bq(m2)
end
function fns.fn390(ap, aq, ar)
    local Du = os.clock() + ap
    while true do
        local Dv = Ao() and BC[aq] == ar and os.clock() < Du
        if Dv then
            task.wait(0.05)
            continue
        end
        break
    end
    local Du_1 = Ao() and BC[aq] == ar
    return Du_1
end
function fns.fn478()
    local DV_1
    if AB then
        return AB
    end
    local DT = A5()
    local DU = DT and DT:FindFirstChild("KnitClient")
    local DU_2
    local DU_1 = not DU
    local DZ = if DU_1 then 1 else 0
    local DX = 3137 * DZ + 1615 * (1 - DZ)
    local DY = 3867 * DZ + 2103 * (1 - DZ)
    if not ((DX * 1648 + DY * 1790 + DX * DY) % 16777213 == 7445272) then
        DU_1 = not DU:IsA("ModuleScript")
    end
    if DU_1 then
        return nil
    end
    DU_2, DV_1 = pcall(require, DU)
    local DT_2 = not DU_2 or type(DV_1) ~= "table" or not Aw(DV_1.GetControllers)
    if DT_2 then
        return nil
    end
    AB = DV_1
    return DV_1
end
function fns.fn513()
    local Fg = AI()
    local Fh = Fg and Fg.Currencies
    local Fh_1 = type(Fh) == "table" and tonumber(Fh.Cash)
    return Fh_1 or 0
end
function fns.fn519()
    local FN = AQ()
    if not FN then
        return 0
    end
    local FO = 0
    for i, child in ipairs(FN:GetChildren()) do
        if child:HasTag("CarriedEgg") then
            FO += 1
        end
    end
    return FO
end
function fns.fn521(b_)
    local Eo_1
    local En_4
    local Em = Bb[b_]
    if Em ~= nil then
        local Em_1 = Em ~= false and Em
        local Es = if Em_1 then 1 else 0
        local Eq = 2305 * Es + 2099 * (1 - Es)
        local Er = 646 * Es + 1732 * (1 - Es)
        if not ((Eq * 2495 + Er * 1370 + Eq * Er) % 16777213 == 8125025) then
            Em_1 = nil
        end
        return Em_1
    end
    local Configs = Ah:FindFirstChild("Configs")
    local En_2 = Configs and Configs:FindFirstChild(b_)
    local En_3 = not En_2
    local Ev = if En_3 then 1 else 0
    local Et = 1484 * Ev + 1334 * (1 - Ev)
    local Eu = 1069 * Ev + 3074 * (1 - Ev)
    if not ((Et * 3285 + Eu * 2407 + Et * Eu) % 16777213 == 9034419) then
        En_3 = not En_2:IsA("ModuleScript")
    end
    if En_3 then
        Bb[b_] = false
        return nil
    end
    En_4, Eo_1 = pcall(require, En_2)
    local Em_4 = not En_4 or type(Eo_1) ~= "table"
    if Em_4 then
        Bb[b_] = false
        return nil
    end
    Bb[b_] = Eo_1
    return Eo_1
end
function fns.fn539(ni)
    BI.AutoEquipBest = ni == true
    Ay("Equip", BI.AutoEquipBest, Bc)
end
function fns.fn566(i1)
    local IX = i1 and i1.Speed
    local IY = tonumber(IX) or 0
    return IY
end
function fns.fn578(m_)
    BI.StealZones = Bq(m_)
end
function fns.fn585(jk, jl)
    local Jf_1
    local Je_1
    local Jc = jk and jk.AreaSteals
    local CloneTarget = BI.CloneTarget
    Jf_1, Je_1 = nil, nil
    for i, v in ipairs(BD) do
        if Ap(Jc, v) then
            Jf_1 = v
            if Bo(v) <= AC(jl) then
                Je_1 = v
            end
        end
    end
    if CloneTarget == "Best Unlocked" then
        return Jf_1
    elseif CloneTarget == "Best Safe" then
        return Je_1 or BD[1]
    elseif Bx[CloneTarget] then
        if Ap(Jc, CloneTarget) then
            return CloneTarget
        end
        return Jf_1, CloneTarget .. " is locked"
    else
        return Jf_1
    end
end
function fns.fn588(hD)
    local H4 = 0
    local H5 = type(hD) == "table" and hD
    local H7 = H5 or {}
    for k in pairs(H7) do
        H4 += 1
    end
    return H4
end
function fns.fn590()
    local FH_1
    local FF = Bk("TrainingController")
    local FG = not FF or not Aw(FF.IsTraining)
    local FG_1
    if FG then
        return false
    end
    FG_1, FH_1 = pcall(FF.IsTraining, FF)
    return FG_1 and FH_1 == true
end
function fns.fn593(hy)
    local HX = {}
    if type(hy) ~= "table" then
        return HX
    end
    for k, v in pairs(hy) do
        table.insert(HX, { id = k, item = v })
    end
    return HX
end
local function fn604(nN)
    BI.KeepMutations = Bq(nN)
end
local function fn605(W)
    local Dn = typeof(cloneref) == "function" and typeof(W) == "Instance"
    if Dn then
        return cloneref(W)
    end
    return W
end
local function fn621(c5, c6)
    if BE[c5] ~= BE[c6] then
        return BE[c5] < BE[c6]
    end
    return c5 < c6
end
local function fn631(nK)
    BI.SellBrainrotRarities = Bq(nK)
end
local function fn642()
    local Kd_1
    local Kb = As()
    local Kc = Kb and Kb:FindFirstChild("TrainingAreaPlaceholder")
    local Kc_2
    local Kc_1 = not Kc or not Kc:IsA("BasePart")
    if Kc_1 then
        return nil
    end
    Kd_1, Kc_2 = nil, 6
    for i, child in ipairs(BQ:GetChildren()) do
        if child.Name == "TrainingArea" then
            local StandPart = child:FindFirstChild("StandPart")
            local Kf = StandPart and StandPart:IsA("BasePart")
            if Kf then
                local Magnitude = (StandPart.Position - Kc.Position).Magnitude
                if Magnitude < Kc_2 then
                    Kd_1, Kc_2 = StandPart, Magnitude
                end
            end
        end
    end
    return Kd_1
end
local function fn664()
    local EE = A8("EggsConfig")
    local EF = EE and type(EE.EGGS) == "table" and EE.EGGS
    return EF or {}
end
local function fn669(ot)
    local Mc = type(ot) == "string" and ot
    local Md = Mc or nil
    BI.TeleportZone = Md
end
local function fn680(oi)
    BI.AutoRebirth = oi == true
    Ay("Rebirth", BI.AutoRebirth, AV)
end
local function fn694(nm)
    BI.AutoManageClones = nm == true
    Ay("Clones", BI.AutoManageClones, Bi)
end
local function fn695()
    return Bt
end
local function fn705(dz)
    return next(dz) == nil
end
local function fn708(ne)
    BI.AutoHatchEggs = ne == true
    Ay("Hatch", BI.AutoHatchEggs, Bs)
end
local function fn711()
    local Fu = AN()
    local Fv = Fu and Fu:FindFirstChild(Fu.Name)
    return Fv or nil
end
local function fn731(cF, cG)
    return cF.order < cG.order
end
local function fn750()
    local EM = A8("BossConfig")
    local EN = EM and type(EM.BOSSES) == "table" and EM.BOSSES
    return EN or {}
end
local function fn760(n1)
    local L9 = BI.AutoTreadmill == true
    BI.AutoTreadmill = n1 == true
    Ay("Treadmill", BI.AutoTreadmill, AE)
    if L9 and not BI.AutoTreadmill then
        A2("Treadmill")
        At()
        Bw("Treadmill", "Idle")
    end
end
local function fn763(l2)
    while true do
        local Lo = Ao() and BC.Trails == l2 and BI.AutoBuyTrails
        if Lo then
            local Lo_1 = A8("TrailsConfig")
            local Lp = Lo_1 and Lo_1.TRAILS
            Bj("Trails", Lp, "OwnedTrails", "EquippedTrail", "BuyTrail", "EquipTrail", "multi", "TrailService")
            if not A3(2, "Trails", l2) then
                return
            end
            continue
        end
        break
    end
end
local function fn777(oe)
    BI.AutoBuyTrails = oe == true
    Ay("Trails", BI.AutoBuyTrails, BF)
end
local function fn785(m7)
    BI.AutoPlaceEggs = m7 == true
    Ay("Place", BI.AutoPlaceEggs, BN)
end
local function fn796()
    local SpawnedBases = BQ:FindFirstChild("SpawnedBases")
    local F7 = {}
    if not SpawnedBases then
        return F7
    end
    local StealZones = BI.StealZones
    local StealRarities = BI.StealRarities
    local Ga = A0()
    local Gb = os.clock()
    local Gc = AH()
    local Gc_1 = Gc and Gc.Position or Vector3.zero
    for i, child in ipairs(SpawnedBases:GetChildren()) do
        if child:IsA("Model") then
            local F6_1 = Bg(child:GetPivot().Position)
            local Gc_2 = F6_1
            if Gc_2 then
                local Ge_1 = AZ(StealZones) or StealZones[F6_1]
                Gc_2 = Ge_1
            end
            if Gc_2 then
                for i, child2 in ipairs(child:GetChildren()) do
                    local Gc_3 = child2:IsA("Model") and child2:GetAttribute("Placeholder")
                    local Gc_4 = Gc_3 or nil
                    local Ge_3 = Gc_4 ~= nil and child2:GetAttribute("EggHidden") ~= true
                    if Ge_3 then
                        local attr = child2:GetAttribute("EggType")
                        local Gf = Ga[attr]
                        local Gg = Gf and Gf.rarity
                        local Gh = Gf
                        if Gh then
                            local Gg_1 = AZ(StealRarities) or StealRarities[Gg]
                            Gh = Gg_1
                        end
                        if Gh then
                            local Gf_2 = child2:GetAttribute("BaseId") or child:GetAttribute("BaseId") or child.Name
                            local Gf_3 = tostring(Gf_2) .. ":" .. tostring(Gc_4)
                            if (AD[Gf_3] or 0) <= Gb then
                                local Gh_2 = child2:FindFirstChild(tostring(attr)) or child2:FindFirstChildWhichIsA("Model") or child2
                                local Position = Gh_2:GetPivot().Position
                                local insert = table.insert
                                local Gj = AX[attr] or 0
                                local Gk = Bx[F6_1] or 0
                                insert(F7, {
                                    hen = child2,
                                    key = Gf_3,
                                    baseId = Gf_2,
                                    placeholder = Gc_4,
                                    eggType = attr,
                                    tier = Gj,
                                    zoneOrder = Gk,
                                    position = Position,
                                    distance = (Position - Gc_1).Magnitude
                                })
                            end
                        end
                    end
                end
            end
        end
    end
    table.sort(F7, function(fx, fy)
        if fx.tier ~= fy.tier then
            return fx.tier > fy.tier
        elseif fx.zoneOrder ~= fy.zoneOrder then
            return fx.zoneOrder > fy.zoneOrder
        else
            return fx.distance < fy.distance
        end
    end)
    return F7
end
local function fn805(nb)
    BI.PlaceRarities = Bq(nb)
end
local function fn840(m5)
    local LV = (tonumber(m5))
    local LZ = if LV then 1 else 0
    local LX = 2979 * LZ + 628 * (1 - LZ)
    local LY = 4068 * LZ + 1609 * (1 - LZ)
    if not ((LX * 2808 + LY * 427 + LX * LY) % 16777213 == 5443427) then
        LV = 0.5
    end
    BI.StealDelay = LV
end
local function fn866()
    local Hh_1
    local He = {}
    local Hf = As()
    if not Hf then
        return He
    end
    for i, v in ipairs({ "Eggs", "Animals" }) do
        local Hg = Hf:FindFirstChild(v)
        local Hg_1
        if Hg then
            for i, child in ipairs(Hg:GetChildren()) do
                Hg_1, Hh_1 = pcall(child.GetPivot, child)
                if Hg_1 then
                    table.insert(He, Hh_1.Position)
                end
            end
        end
    end
    return He
end
local function fn879(aX, aY, aZ)
    local DJ = A5()
    local DK = DJ and DJ:FindFirstChild("Services")
    local DJ_1 = DK
    if DK then
        DK = DJ_1:FindFirstChild(aX)
    end
    local DJ_2 = DK
    if DK then
        DK = DJ_2:FindFirstChild(aY)
    end
    local DJ_3 = DK
    if DK then
        DK = DJ_3:FindFirstChild(aZ)
    end
    local DJ_4 = DK
    if not DJ_4 then
        return nil
    end
    local DK_1 = aY == "RF" and DJ_4:IsA("RemoteFunction")
    if DK_1 then
        return DJ_4
    end
    local DK_2 = aY == "RE" and DJ_4:IsA("RemoteEvent")
    if DK_2 then
        return DJ_4
    end
    return nil
end
local function fn926(nx)
    BI.SyncCloneAutoSell = nx == true
end
local function fn964(ei)
    if Bn ~= nil and Bn ~= ei then
        return false
    end
    Bn = ei
    return true
end
local function fn966(jC)
    local Jy_1, Jy_2
    while true do
        local Ju = Ao() and BC.Clones == jC and BI.AutoManageClones
        if Ju then
            local Ju_1 = AI()
            local Jv = BL()
            local Jx = not Ju_1 or not Jv
            local Jx_1, Jx_3
            if Jx then
                Bw("Clones", "Waiting for clone data")
            elseif Jv.Unlocked ~= true then
                if os.clock() - Bp > 15 then
                    Bp = os.clock()
                    Bw("Clones", "Unlocking portal")
                    A6("CloneService", "UnlockPortal")
                    if not A3(5.5, "Clones", jC) then
                        return
                    end
                    A6("CloneService", "PortalBuilt")
                else
                    Bw("Clones", "Waiting for portal")
                end
            else
                local Jw_1 = {}
                if BI.CloneTarget == "Game Auto Mode" then
                    if Jv.AutoTarget ~= true then
                        A6("CloneService", "SetAutoTarget", true)
                    end
                    table.insert(Jw_1, "Game auto mode")
                else
                    if Jv.AutoTarget == true then
                        A6("CloneService", "SetAutoTarget", false)
                    end
                    Jx_1, Jy_1 = AO(Ju_1, Jv)
                    if Jx_1 and Jv.Target ~= Jx_1 then
                        A6("CloneService", "SetTarget", Jx_1)
                    end
                    local insert = table.insert
                    local Jz_2 = Jx_1 or "none"
                    insert(Jw_1, "Target " .. tostring(Jz_2))
                    if Jy_1 then
                        table.insert(Jw_1, Jy_1)
                    end
                end
                local Jv_2 = BI.AutoUpgradeClones and not AZ(BI.CloneUpgrades)
                if Jv_2 then
                    local Jv_3 = A8("UpgradeConfig")
                    for i, v in ipairs(BR) do
                        local Jx_2 = BI.CloneUpgrades[v.label] and Jv_3 and Aw(Jv_3.GetPrice)
                        if Jx_2 then
                            Jx_3, Jy_2 = pcall(Jv_3.GetPrice, v.id, Ba(Ju_1, v.id) + 1)
                            local Jz_3 = Jx_3 and type(Jy_2) == "number" and Bz() >= Jy_2
                            if Jz_3 then
                                A6("UpgradesService", "Upgrade", v.id, 1)
                                table.insert(Jw_1, "Upgraded " .. v.label)
                                if not A3(0.4, "Clones", jC) then
                                    return
                                end
                            end
                        end
                    end
                end
                if BI.SyncCloneAutoSell then
                    local Jv_4 = type(Ju_1.AutoSell) == "table" and Ju_1.AutoSell
                    local Jx_4 = Jv_4 or {}
                    for k, v in pairs(AP) do
                        local Jv_5 = BI.CloneAutoSellEggs[k] == true
                        if Jx_4[v] == true ~= Jv_5 then
                            A6("EggService", "SetAutoSell", v, Jv_5)
                            local JP = if not A3(0.2, "Clones", jC) then 1 else 0
                            if JP == 1 then
                                return
                            end
                        end
                    end
                end
                Bw("Clones", table.concat(Jw_1, " | "))
            end
            if not A3(2, "Clones", jC) then
                return
            end
            continue
        end
        break
    end
end
local function fn971(nY)
    BI.AutoUpgradeBase = nY == true
    Ay("Base", BI.AutoUpgradeBase, Bl)
end
local function fn1004(ai, aj)
    BI.Status[ai] = tostring(aj)
end
local function fn1026()
    gethui = A_
end
local function fn1033(mV)
    BI.AutoSteal = mV == true
    if not BI.AutoSteal then
        Bw("Steal", "Idle")
    end
    Ay("Steal", BI.AutoSteal, Al)
end
local function fn1047(dt)
    local EW = {}
    if type(dt) ~= "table" then
        return EW
    end
    for k, v in pairs(dt) do
        local EX = v == true
        local EY = type(k) == "string" and EX
        if EY then
            EW[k] = true
        else
            local EX_1 = type(k) == "number" and type(v) == "string"
            if EX_1 then
                EW[v] = true
            end
        end
    end
    return EW
end
local function fn1057(gu)
    local GZ_1
    while true do
        local GY = Ao() and BC.Steal == gu and BI.AutoSteal
        local GY_2
        if GY then
            local GY_1 = not AH() or LocalPlayer:GetAttribute("InRagdoll")
            if GY_1 then
                Bw("Steal", "Waiting for character")
            elseif Bf("Steal") then
                GY_2, GZ_1 = pcall(AM, gu)
                A2("Steal")
                if not GY_2 then
                    Bw("Steal", "Error: " .. tostring(GZ_1))
                end
            end
            if not A3(math.max(0.1, BI.StealDelay), "Steal", gu) then
                return
            end
            continue
        end
        break
    end
end
local function fn1071(nH)
    BI.AutoSellBrainrots = nH == true
    A4()
end
local function fn1078(Z)
    return type(Z) == "function"
end
local function fn1098()
    return LocalPlayer.Character
end
local function fn1104(by)
    local D1_1
    local D0_1
    local D_ = Br[by]
    if D_ then
        return D_
    end
    local D__1 = Au()
    if not D__1 then
        return nil
    end
    D0_1, D1_1 = pcall(D__1.GetControllers)
    local D__2 = not D0_1
    local D5 = if D__2 then 1 else 0
    local D3 = 2830 * D5 + 2449 * (1 - D5)
    local D4 = 599 * D5 + 885 * (1 - D5)
    if not ((D3 * 989 + D4 * 2840 + D3 * D4) % 16777213 == 6195200) then
        D__2 = type(D1_1) ~= "table"
    end
    if not D__2 then
        D__2 = type(D1_1[by]) ~= "table"
    end
    if D__2 then
        return nil
    end
    Br[by] = D1_1[by]
    return D1_1[by]
end
local function fn1135(eH)
    local Areas = BQ:FindFirstChild("Areas")
    if not Areas then
        return nil
    end
    for i, child in ipairs(Areas:GetChildren()) do
        local FW_1 = child:IsA("BasePart") and Bx[child.Name]
        if FW_1 then
            local FW_2 = child.CFrame:PointToObjectSpace(eH)
            local FX = child.Size / 2
            local FY = math.abs(FW_2.X) <= FX.X and math.abs(FW_2.Z) <= FX.Z
            if FY then
                return child.Name
            end
        end
    end
    return nil
end
local function fn1141()
    for k in pairs(BC) do
        BC[k] += 1
    end
    if BI.AutoTreadmill then
        At()
    end
    Bn = nil
end
local function fn1147(dV, dW)
    local Fj = dV and dV.Upgrades
    local Fj_1 = type(Fj) == "table" and tonumber(Fj[dW])
    return Fj_1 or 0
end
local function fn1150()
    local FK = Bk("TrainingController")
    local FL = not FK or not Aw(FK.StopTraining)
    if FL then
        return
    end
    if AS() then
        pcall(FK.StopTraining, FK, true)
    end
end
local function fn1164(ll)
    local KH = {}
    local KI = type(ll) == "table" and ll
    local KK = KI or {}
    for k, v in pairs(KK) do
        if type(v) == "table" then
            table.insert(KH, { id = k, entry = v })
        end
    end
    table.sort(KH, function(lp, lq)
        local KA = tonumber(lp.entry.layoutOrder) or 0
        local KA_1 = (tonumber(lq.entry.layoutOrder))
        local KG = if KA_1 then 1 else 0
        local KE = 1183 * KG + 1808 * (1 - KG)
        local KF = 1667 * KG + 492 * (1 - KG)
        if not ((KE * 1479 + KF * 597 + KE * KF) % 16777213 == 4716917) then
            KA_1 = 0
        end
        local KC = KA_1
        if KA ~= KC then
            return KA < KC
        end
        return tostring(lp.id) < tostring(lq.id)
    end)
    return KH
end
local function fn1170(on)
    BI.AutoClaimPlaytime = on == true
    Ay("Playtime", BI.AutoClaimPlaytime, AW)
end
local function fn1181(kW)
    local Kt = 10
    local Ku = A8("TutorialConfig")
    local Kv = Ku and tonumber(Ku.TREADMILL_UNLOCK_PRICE)
    if Kv then
        Kt = tonumber(Ku.TREADMILL_UNLOCK_PRICE)
    end
    local Ku_1 = Ku and Ku.TREADMILL_UNLOCKED_ATTRIBUTE or "TreadmillUnlocked"
    while true do
        local Ku_2 = Ao() and BC.Treadmill == kW and BI.AutoTreadmill
        if Ku_2 then
            local Ku_3 = Bk("TrainingController")
            local Kw = not Ku_3 or not Aw(Ku_3.StartTraining)
            if Kw then
                Bw("Treadmill", "Training controller unavailable")
            elseif LocalPlayer:GetAttribute(Ku_1) ~= true then
                if Bz() >= Kt then
                    Bw("Treadmill", "Unlocking treadmill")
                    A6("TrainingService", "UnlockTreadmill")
                else
                    Bw("Treadmill", "Need " .. Kt .. " cash to unlock")
                end
            elseif AS() then
                Bw("Treadmill", "Training")
            else
                if Bn ~= nil and Bn ~= "Treadmill" then
                    Bw("Treadmill", "Paused for " .. tostring(Bn))
                else
                    local Kw_2 = BI.AutoSteal
                    if Kw_2 then
                        local Kx_1 = os.clock()
                        local Ky = BI.LastStealActivity or 0
                        Kw_2 = Kx_1 - Ky < math.max(4, BI.StealDelay + 3)
                    end
                    if Kw_2 then
                        Bw("Treadmill", "Paused for Auto Steal")
                    elseif not AH() then
                        Bw("Treadmill", "Waiting for character")
                    else
                        local Kw_3 = BB()
                        if not Kw_3 then
                            Bw("Treadmill", "Treadmill not found")
                        elseif Bf("Treadmill") then
                            Bw("Treadmill", "Starting treadmill")
                            BT(Kw_3.CFrame + Vector3.new(0, Kw_3.Size.Y / 2 + 3, 0))
                            local Kx_2 = A3(0.25, "Treadmill", kW)
                            if Kx_2 then
                                pcall(Ku_3.StartTraining, Ku_3, Kw_3)
                                AL(AS, 2, "Treadmill", kW)
                            end
                            A2("Treadmill")
                            if not Kx_2 then
                                return
                            end
                        end
                    end
                end
            end
            if not A3(1, "Treadmill", kW) then
                return
            end
            continue
        end
        break
    end
end
local function fn1207()
    local Fb = AQ()
    local Fc = Fb and Fb:FindFirstChildOfClass("Humanoid")
    return Fc
end
local function fn1210(mB)
    local LH_1
    while true do
        local LE = Ao() and BC.Playtime == mB and BI.AutoClaimPlaytime
        if LE then
            local LE_1 = Bk("PlaytimeRewardController")
            local LF = A8("PlaytimeRewardConfig")
            local LF_2, LF_4
            local LG = not LE_1 or not Aw(LE_1.ClaimGift) or type(LF) ~= "table"
            local LG_1
            if LG then
                Bw("Playtime", "Playtime rewards unavailable")
            else
                LG_1, LH_1 = pcall(LE_1.GetSessionTime, LE_1)
                local LI = LG_1 and tonumber(LH_1)
                local LI_1, LI_2
                local LG_2 = LI or 0
                local LG_3 = 0
                for i, v in ipairs(LF) do
                    local LF_1 = not Ao() or BC.Playtime ~= mB
                    if LF_1 then
                        return
                    end
                    LF_2, LI_1 = pcall(LE_1.IsGiftClaimed, LE_1, i)
                    local LJ = LF_2 and not LI_1 and type(v) == "table"
                    if LJ then
                        local LF_3 = tonumber(v.time) or math.huge
                        LJ = LG_2 >= LF_3
                    end
                    if LJ then
                        LF_4, LI_2 = pcall(LE_1.ClaimGift, LE_1, i)
                        if LF_4 and LI_2 then
                            LG_3 += 1
                        end
                        if not A3(0.3, "Playtime", mB) then
                            return
                        end
                    end
                end
                local LF_5 = LG_3 > 0 and "Claimed " .. LG_3 .. " rewards" or "Waiting for next reward"
                Bw("Playtime", LF_5)
            end
            if not A3(3, "Playtime", mB) then
                break
            end
            continue
        end
        return
    end
    return
end
local function fn1229()
    local D8_1, D8_2
    local D6 = Bk("ReplicaController")
    local D7 = not D6
    local D7_1, D7_2
    local Ee = if D7 then 1 else 0
    local Ec = 2411 * Ee + 790 * (1 - Ee)
    local Ed = 3028 * Ee + 588 * (1 - Ee)
    if not ((Ec * 1862 + Ed * 888 + Ec * Ed) % 16777213 == 14478654) then
        D7 = not Aw(D6.IsReplicaReady)
    end
    if D7 then
        return nil
    end
    D7_1, D8_1 = pcall(D6.IsReplicaReady, D6)
    if not D7_1 or not D8_1 then
        return nil
    end
    D7_2, D8_2 = pcall(D6.GetPlayerData, D6)
    local D6_1 = D7_2 and type(D8_2) == "table"
    if D6_1 then
        return D8_2
    end
    return nil
end
local function fn1233(lu, lv, lw, lx, ly, lz, lA, lB)
    local K__2
    local KV = AI()
    if not KV then
        Bw(lu, "Waiting for data")
        return
    end
    local KW = type(KV[lw]) == "table" and KV[lw]
    local KX = {}
    local KY = KW
    local KY_2
    local K5 = if KY then 1 else 0
    local K3 = 1364 * K5 + 1608 * (1 - K5)
    local K4 = 2537 * K5 + 1951 * (1 - K5)
    if not ((K3 * 2288 + K4 * 2738 + K3 * K4) % 16777213 == 13527606) then
        KY = KX
    end
    local KW_1 = KY
    local KX_1 = tonumber(KV.Rebirth) or 0
    local KX_2 = Bz()
    local KZ
    for i, v in ipairs(Ak(lv)) do
        local K__1 = v.entry
        local K0_1 = not KW_1[v.id]
        if K0_1 ~= false then
            K0_1 = not K__1.hideIfNotOwned
        end
        if K0_1 then
            K0_1 = type(K__1.cost) == "number"
        end
        if K0_1 then
            local K1_1 = tonumber(K__1.rebirthRequired) or 0
            K0_1 = KX_1 >= K1_1
        end
        if K0_1 then
            KZ = v
            break
        end
    end
    K__2, KY_2 = nil, -math.huge
    for i, v in ipairs(Ak(lv)) do
        local K0_2 = tonumber(v.entry[lA]) or 0
        if KW_1[v.id] and K0_2 > KY_2 then
            K__2, KY_2 = v.id, K0_2
        end
    end
    if KZ and KX_2 >= KZ.entry.cost then
        local KW_2 = KZ.entry.name or KZ.id
        Bw(lu, "Buying " .. tostring(KW_2))
        A6(lB, ly, KZ.id)
        return
    end
    if K__2 and KV[lx] ~= K__2 then
        Bw(lu, "Equipping " .. tostring(K__2))
        A6(lB, lz, K__2)
        return
    end
    if KZ then
        local KV_1 = KZ.entry.name
        local Lk = if KV_1 then 1 else 0
        local Li = 3351 * Lk + 814 * (1 - Lk)
        local Lj = 3765 * Lk + 1531 * (1 - Lk)
        if not ((Li * 2608 + Lj * 714 + Li * Lj) % 16777213 == 7266920) then
            KV_1 = KZ.id
        end
        Bw(lu, "Next: " .. tostring(KV_1))
    else
        Bw(lu, "All available owned")
    end
end
local function fn1241(ns)
    BI.AutoUpgradeClones = ns == true
end
local function fn1247(am)
    return BI.Status[am] or "Idle"
end
local function fn1263()
    return not AJ.Unloaded
end
local function fn1277()
    local TeleportZone = BI.TeleportZone
    local Areas = BQ:FindFirstChild("Areas")
    local Mj = TeleportZone and Areas and Areas:FindFirstChild(TeleportZone)
    local Mi_1 = not Mj or not Mj:IsA("BasePart")
    if Mi_1 then
        return false
    end
    At()
    return BT(CFrame.new(Mj.Position + Vector3.new(0, Mj.Size.Y / 2 + 4, 0)))
end
local function fn1321(fA, fB, fC, fD)
    local Gy = os.clock() + fB
    while true do
        local Gz = Ao() and BC[fC] == fD and os.clock() < Gy
        if not Gz then
            return fA()
        end
        if fA() then
            break
        end
        task.wait(0.05)
    end
    return true
end
local function fn1354()
    local EI = A8("AreasConfig")
    local EJ = EI and type(EI.AREAS) == "table" and EI.AREAS
    return EJ or {}
end
local function fn1385(nT)
    BI.SellEggRarities = Bq(nT)
end
Ah = nil
Ai = nil
Ak = nil
Al = nil
An = nil
Ao = nil
Ap = nil
Ar = nil
As = nil
At = nil
Au = nil
Aw = nil
Ax = nil
Ay = nil
AB = nil
AC = nil
AD = nil
AE = nil
AF = nil
AG = nil
AH = nil
AI = nil
AJ = nil
AK = nil
AL = nil
AM = nil
AN = nil
AO = nil
AP = nil
AQ = nil
AS = nil
AV = nil
AW = nil
AX = nil
AZ = nil
A_ = nil
A0 = nil
A2 = nil
local Players, Aj, Am, Aq, Av, Az, AA, AR, AT, AU, AY, A1
A3 = nil
A4 = nil
A5 = nil
A6 = nil
LocalPlayer = nil
A8 = nil
Ba = nil
Bb = nil
Bc = nil
Bf = nil
Bg = nil
Bi = nil
Bj = nil
Bk = nil
Bl = nil
Bn = nil
Bo = nil
Bp = nil
Bq = nil
Br = nil
Bs = nil
Bt = nil
Bw = nil
Bx = nil
Bz = nil
BB = nil
BC = nil
BD = nil
BE = nil
BF = nil
BH = nil
BI = nil
BL = nil
BM = nil
BN = nil
BP = nil
BQ = nil
local A9, Bd, Lighting, Bh, TeleportService, Bu, Bv, By, BA, UserInputService, BJ, RunService, BO
BR = nil
BT = nil
local BS, B2, B3
BS = nil
if not game:IsLoaded() then
    game.Loaded:Wait()
end
Players, Qz_14, RunService, UserInputService, BA, Bv, Bu, Bt, TeleportService, Lighting, LocalPlayer, A_ = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
if (not Qz_14 and Qz_14 or (not BA or not BA) or (Qz_14 or not Bv or (not BA or not Bv))) and not (not Qz_14 and Qz_14 or (not BA or not BA) or (Qz_14 or not Bv or (not BA or not Bv))) then
    game:GetService("Players")
else
    Players = game:GetService("Players")
end
Qz_14 = game:GetService("ReplicatedStorage")
RunService = game:GetService("RunService")
UserInputService = game:GetService("UserInputService")
if (not Qz_14 or not Lighting or not Qz_14 and Lighting) and (RunService and not Lighting or (not Bu or Lighting)) and (not RunService and not Qz_14 and (not RunService or RunService) and (not RunService and not RunService and (not Qz_14 and not Lighting))) and not ((not Qz_14 or not Lighting or not Qz_14 and Lighting) and (RunService and not Lighting or (not Bu or Lighting)) and (not RunService and not Qz_14 and (not RunService or RunService) and (not RunService and not RunService and (not Qz_14 and not Lighting)))) then
    Bt = game:GetService("VirtualUser")
    BA = game:GetService("HttpService")
    Bv = game:GetService("GuiService")
    Bu = game:GetService("CoreGui")
else
    BA = game:GetService("VirtualUser")
    Bv = game:GetService("HttpService")
    Bu = game:GetService("GuiService")
    Bt = game:GetService("CoreGui")
end
TeleportService = game:GetService("TeleportService")
Lighting = game:GetService("Lighting")
local Qz_22 = game:GetService("Workspace")
LocalPlayer = Players.LocalPlayer
local Qz_2 = "OuroborosCloneToStealEggs"
A_ = fn695
if getgenv then
    getgenv().gethui = A_
end
AJ, Ah, BQ, BM, BI, BC, AB, Br, Bb, An, BD, Bx, Qz_25, Bd, Qz_4, Aw, Ao, Bw, Bh, A3, Ay, A5, AA, A6, Au, Bk, AI, BL, A8, Am, A0, AK, Ax, Ai = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
local Qz_11 = 21
repeat
    Qz_15 = (Qz_11 * 8 + 11) % 15 + 1
    if Qz_15 <= 8 then
        if Qz_15 <= 4 then
            if Qz_15 <= 2 then
                if Qz_15 <= 1 then
                    Qz_6 = (vector.create((Qz_11 * 3 + 1) % 11 + 1, (Qz_11 * 4 + 2) % 13 + 1, (Qz_11 * 14 + 2) % 17 + 1))
                    Qz_26 = (vector.create((Qz_11 * 2 + 4) % 11 + 1, (Qz_11 * 7 + 3) % 13 + 1, (Qz_11 * 7 + 17) % 17 + 1))
                    local RA = vector.dot(Qz_6, Qz_26)
                    if RA * RA >= vector.dot(Qz_6, Qz_6) * vector.dot(Qz_26, Qz_26) + 1 then
                        BL = function(O, P)
                            local Di = type(O) == "table" and type(O.Track) == "function"
                            assert(Di, "FeatureAPI required")
                            local Di_2 = type(P) == "table" and type(P.OnUnload) == "function"
                            assert(Di_2, "UI library required")
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
                    else
                        Bd = function(O, P)
                            local Di = type(O) == "table" and type(O.Track) == "function"
                            assert(Di, "FeatureAPI required")
                            local Di_1 = type(P) == "table" and type(P.OnUnload) == "function"
                            assert(Di_1, "UI library required")
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
                    end
                    Qz_11 = (Qz_11 + 17) % 60
                else
                    Qz_6 = {
                        "rtqfpygm",
                        "pqtykdf",
                        "rmkhxhzqy",
                        "kfajmjt",
                        "wuchndfjutdr",
                        "ymqah",
                        "dhojfeh",
                        "gkeehaxdfc",
                        "tzc"
                    }
                    if Qz_6[(Qz_11 * 61 + 48) % 9 + 1] < Qz_6[(Qz_11 * 61 + 48) % 9 + 1] then
                        Qz_2 = AJ(Qz_25)
                    else
                        AJ = Qz_25(Qz_2)
                    end
                    Qz_11 = (Qz_11 + 47) % 60
                end
            elseif Qz_15 <= 3 then
                Qz_6 = (vector.create((Qz_11 * 3 + 3) % 11 + 1, (Qz_11 * 4 + 4) % 13 + 1, (Qz_11 * 8 + 9) % 17 + 1))
                Qz_26 = (vector.create((Qz_11 * 5 + 6) % 11 + 1, (Qz_11 * 2 + 12) % 13 + 1, (Qz_11 * 7 + 12) % 17 + 1))
                B2 = (vector.create((Qz_11 * 4 + 8) % 11 + 1, (Qz_11 * 5 + 5) % 13 + 1, (Qz_11 * 7 + 9) % 17 + 1))
                if vector.dot(vector.cross(Qz_6, Qz_26), B2) == vector.dot(vector.cross(Qz_26, B2), Qz_6) + 2 then
                    Qz_14 = fn605
                    BQ = fn1078
                    Aw = fn1263
                    Ao = Qz_14(Qz_4)
                    Qz_22 = Qz_14(Ah)
                else
                    Qz_4 = fn605
                    Aw = fn1078
                    Ao = fn1263
                    Ah = Qz_4(Qz_14)
                    BQ = Qz_4(Qz_22)
                end
                Qz_11 = (Qz_11 + 32) % 60
            else
                Qz_6 = (vector.create((Qz_11 * 5 + 8) % 11 + 1, (Qz_11 * 10 + 8) % 13 + 1, (Qz_11 * 7 + 1) % 17 + 1))
                Qz_26 = (vector.create((Qz_11 * 5 + 1) % 11 + 1, (Qz_11 * 9 + 13) % 13 + 1, (Qz_11 * 5 + 16) % 17 + 1))
                B2 = (vector.create((Qz_11 * 3 + 3) % 11 + 1, (Qz_11 * 1 + 6) % 13 + 1, (Qz_11 * 12 + 2) % 17 + 1))
                B3 = (vector.create((Qz_11 * 3 + 1) % 11 + 1, (Qz_11 * 3 + 1) % 13 + 1, (Qz_11 * 13 + 10) % 17 + 1))
                if vector.dot(vector.cross(Qz_6, Qz_26), (vector.cross(B2, B3))) == vector.dot(Qz_6, B2) * vector.dot(Qz_26, B3) - vector.dot(Qz_6, B3) * vector.dot(Qz_26, B2) then
                    BM = "sleitnick_knit@1.7.0"
                else
                    A0 = "sleitnick_knit@1.7.0"
                end
                Qz_11 = (Qz_11 + 32) % 60
            end
        elseif Qz_15 <= 6 then
            if Qz_15 <= 5 then
                local SM = bit32.rrotate(bit32.bxor(bit32.lrotate(Qz_11, 20), string.byte(tostring(Qz_25))), 12)
                if bit32.bxor(bit32.lrotate(bit32.bxor(SM, 4033405933), 18), 2411184547) == bit32.lrotate(SM, 18) then
                    BI = AJ.State
                    BI.Status = {}
                    BI.StealZones = {}
                    BI.StealRarities = {}
                    BI.StealDelay = 0.5
                    BI.PlaceRarities = {}
                    BI.CloneTarget = "Best Safe"
                    BI.CloneUpgrades = {}
                    BI.CloneAutoSellEggs = {}
                    BI.SellBrainrotRarities = {}
                    BI.KeepMutations = {}
                    BI.SellEggRarities = {}
                    BI.SellInterval = 5
                    BI.TeleportZone = nil
                    BC = {
                        Steal = 0,
                        Place = 0,
                        Hatch = 0,
                        Equip = 0,
                        Clones = 0,
                        Sell = 0,
                        Base = 0,
                        Treadmill = 0,
                        TreadmillUpgrade = 0,
                        Trails = 0,
                        Rebirth = 0,
                        Playtime = 0
                    }
                    Bw = fn1004
                    Bh = fn1247
                else
                    BC = Bh.State
                    BC.Status = {}
                    BC.StealZones = {}
                    BC.StealRarities = {}
                    BC.StealDelay = 0.5
                    BC.PlaceRarities = {}
                    BC.CloneTarget = "Best Safe"
                    BC.CloneUpgrades = {}
                    BC.CloneAutoSellEggs = {}
                    BC.SellBrainrotRarities = {}
                    BC.KeepMutations = {}
                    BC.SellEggRarities = {}
                    BC.SellInterval = 5
                    BC.TeleportZone = nil
                    Bw = {
                        TreadmillUpgrade = 0,
                        Equip = 0,
                        Steal = 0,
                        Trails = 0,
                        Hatch = 0,
                        Base = 0,
                        Sell = 0,
                        Rebirth = 0,
                        Playtime = 0,
                        Treadmill = 0,
                        Clones = 0,
                        Place = 0
                    }
                    AJ = fn1004
                    BI = fn1247
                end
                Qz_11 = (Qz_11 + 2) % 60
            else
                if Qz_11 * 43137201 + 6 + 1 >= Qz_11 * 43137201 + 6 + 1 + 1 then
                    A5 = fns.fn390
                    A3 = function(ay, az, aA)
                        local DE
                        BC[ay] += 1
                        DE = BC[ay]
                        if not az then
                            return
                        end
                        task.spawn(function()
                            local Dy_2
                            local Dx_2
                            Dx_2, Dy_2 = pcall(aA, DE)
                            local Dz = not Dx_2
                            if Dz ~= false then
                                Dz = Ao()
                            end
                            if Dz then
                                Bw(ay, "Error: " .. tostring(Dy_2))
                                warn("[Ouroboros Clone to Steal Eggs] " .. ay .. ": " .. tostring(Dy_2))
                            end
                        end)
                    end
                    AA = fns.fn168
                    Ay = fn879
                else
                    A3 = fns.fn390
                    Ay = function(ay, az, aA)
                        local DE
                        BC[ay] += 1
                        DE = BC[ay]
                        if not az then
                            return
                        end
                        task.spawn(function()
                            local Dy_1
                            local Dx_1
                            Dx_1, Dy_1 = pcall(aA, DE)
                            local Dz = not Dx_1
                            if Dz ~= false then
                                Dz = Ao()
                            end
                            if Dz then
                                Bw(ay, "Error: " .. tostring(Dy_1))
                                warn("[Ouroboros Clone to Steal Eggs] " .. ay .. ": " .. tostring(Dy_1))
                            end
                        end)
                    end
                    A5 = fns.fn168
                    AA = fn879
                end
                Qz_11 = (Qz_11 + 17) % 60
            end
        elseif Qz_15 <= 7 then
            Qz_6 = { "jgy", "lmqzuv", "slfxf", "utuykacqct", "qlygzxpazi", "akaql", "dwtszl", "wudjln" }
            if Qz_6[(Qz_11 * 83 + 97) % 8 + 1] < Qz_6[(Qz_11 * 83 + 97) % 8 + 1] then
                AB = function(bc, bd, ...)
                    local DM
                    local DN
                    DM = nil
                    DN = nil
                    DM = AA(bc, "RF", bd)
                    if not DM then
                        return false, "missing " .. bc .. "." .. bd
                    end
                    DN = table.pack(...)
                    local DO = table.pack(pcall(function()
                        return DM:InvokeServer(table.unpack(DN, 1, DN.n))
                    end))
                    if not DO[1] then
                        return false, DO[2]
                    end
                    return true, table.unpack(DO, 2, DO.n)
                end
                A6 = nil
                Br = fns.fn478
                Au = {}
            else
                A6 = function(bc, bd, ...)
                    local DM
                    local DN
                    DM = nil
                    DN = nil
                    DM = AA(bc, "RF", bd)
                    if not DM then
                        return false, "missing " .. bc .. "." .. bd
                    end
                    DN = table.pack(...)
                    local DO = table.pack(pcall(function()
                        return DM:InvokeServer(table.unpack(DN, 1, DN.n))
                    end))
                    if not DO[1] then
                        return false, DO[2]
                    end
                    return true, table.unpack(DO, 2, DO.n)
                end
                AB = nil
                Au = fns.fn478
                Br = {}
            end
            Qz_11 = (Qz_11 + 2) % 60
        else
            if (Qz_11 * 2 + 8) * 7 % 3 == ((Qz_11 * 2 + 8) * 7 + 8) % 3 then
                AI = fn1104
                Bk = fn1229
            else
                Bk = fn1104
                AI = fn1229
            end
            Qz_11 = (Qz_11 + 32) % 60
        end
    elseif Qz_15 <= 12 then
        if Qz_15 <= 10 then
            if Qz_15 <= 9 then
                Qz_6 = (vector.create((Qz_11 * 5 + 8) % 11 + 1, (Qz_11 * 7 + 11) % 13 + 1, (Qz_11 * 4 + 10) % 17 + 1))
                Qz_26 = (vector.create((Qz_11 * 2 + 9) % 11 + 1, (Qz_11 * 7 + 12) % 13 + 1, (Qz_11 * 7 + 5) % 17 + 1))
                B2 = (vector.create((Qz_11 * 5 + 3) % 11 + 1, (Qz_11 * 8 + 13) % 13 + 1, (Qz_11 * 14 + 8) % 17 + 1))
                B3 = (vector.create((Qz_11 * 2 + 5) % 11 + 1, (Qz_11 * 10 + 12) % 13 + 1, (Qz_11 * 1 + 16) % 17 + 1))
                if vector.dot(vector.cross(Qz_6, Qz_26), (vector.cross(B2, B3))) == vector.dot(Qz_6, B2) * vector.dot(Qz_26, B3) - vector.dot(Qz_6, B3) * vector.dot(Qz_26, B2) + 2 then
                    Bb = fns.fn116
                    BL = {}
                else
                    BL = fns.fn116
                    Bb = {}
                end
                Qz_11 = (Qz_11 + 47) % 60
            else
                if Qz_11 * 72268749 + 12 + 4 >= Qz_11 * 72268749 + 12 + 4 + 3 then
                    Au = fns.fn521
                else
                    A8 = fns.fn521
                end
                Qz_11 = (Qz_11 + 47) % 60
            end
        elseif Qz_15 <= 11 then
            Qz_6 = {
                "bxzzu",
                "lxys",
                "dvg",
                "evxo",
                "wfocdgcfjy",
                "atrofl",
                "tqbllqyav",
                "fszphuwfny",
                "fmpoeuet",
                "sncvovzyl",
                "jftehutpzoo",
                "wccsrosxjrb"
            }
            if Qz_6[(Qz_11 * 17 + 65) % 12 + 1] < Qz_6[(Qz_11 * 17 + 65) % 12 + 1] then
                AK = nil
                An = fns.fn290
                Am = fn664
                A0 = fn1354
            else
                An = nil
                Am = fns.fn290
                A0 = fn664
                AK = fn1354
            end
            Qz_11 = (Qz_11 + 2) % 60
        else
            if (Qz_11 * 2 + 6) * 16 % 3 == ((Qz_11 * 2 + 6) * 16 + 6) % 3 then
                Ax = fn750
                Ai = fns.fn180
            else
                Ai = fn750
                Ax = fns.fn180
            end
            Qz_11 = (Qz_11 + 32) % 60
        end
    elseif Qz_15 <= 14 then
        if Qz_15 <= 13 then
            Qz_15 = (vector.create((Qz_11 * 6 + 1) % 11 + 1, (Qz_11 * 3 + 10) % 13 + 1, (Qz_11 * 6 + 8) % 17 + 1))
            Qz_6 = (vector.create((Qz_11 * 5 + 1) % 11 + 1, (Qz_11 * 11 + 12) % 13 + 1, (Qz_11 * 1 + 14) % 17 + 1))
            local SG = vector.dot(Qz_15, Qz_6)
            if SG * SG >= vector.dot(Qz_15, Qz_15) * vector.dot(Qz_6, Qz_6) + 1 then
                Ah = {}
            else
                BD = {}
            end
            Qz_11 = (Qz_11 + 17) % 60
        else
            Qz_15 = { "tskybfa", "nwsrjs", "tajfl", "dibqvewkdds", "bbdziwxxq", "efmnkakv", "xada" }
            local SA = Qz_11
            Qz_6 = Qz_15[SA % 7 + 1]
            if Qz_6:len() >= Qz_6:reverse():rep(SA % 3 + 2):len() then
                An = {}
            else
                Bx = {}
            end
            Qz_11 = (Qz_11 + 2) % 60
        end
    else
        if Qz_11 * 118168721 + 12 + 3 >= Qz_11 * 118168721 + 12 + 3 + 1 then
            pcall(fn1026)
            AJ = function(t)
                local Da
                local C8
                local C9
                C8 = nil
                C9 = nil
                Da = nil
                local Db = t ~= ""
                local Dc = type(t) == "string" and Db
                assert(Dc, "Namespace is required")
                assert(type(getgenv) == "function", "getgenv is unavailable")
                C8 = getgenv()
                assert(type(C8) == "table", "getgenv did not return a table")
                local Db_2 = C8[t]
                if Db_2 ~= nil then
                    local Dc_2 = type(Db_2) == "table" and type(Db_2.Unload) == "function"
                    assert(Dc_2, "Namespace is occupied")
                    Db_2.Unload()
                    assert(C8[t] == nil, "Previous instance did not release its namespace")
                end
                C9 = {}
                Da = { State = {}, Unloaded = false }
                Da.Track = function(B)
                    assert(type(B) == "function", "Cleanup must be callable")
                    if Da.Unloaded then
                        B()
                    else
                        table.insert(C9, B)
                    end
                    return B
                end
                Da.Unload = function()
                    local CZ_2
                    local CY_2
                    if Da.Unloaded then
                        return
                    end
                    Da.Unloaded = true
                    local CW = {}
                    local C2 = #C9
                    local C1 = -1
                    while false and C2 <= 1 or true and C2 >= 1 do
                        local C3 = C2
                        local CX_2 = table.remove(C9, C3)
                        CY_2, CZ_2 = pcall(CX_2)
                        if not CY_2 then
                            table.insert(CW, tostring(CZ_2))
                        end
                        C2 += C1
                    end
                    table.clear(Da.State)
                    if #CW > 0 then
                        error("Cleanup incomplete: " .. table.concat(CW, "; "), 0)
                    end
                    if C8[t] == Da then
                        C8[t] = nil
                    end
                end
                C8[t] = Da
                return Da
            end
        else
            pcall(fn1026)
            Qz_25 = function(t)
                local Da
                local C8
                local C9
                C8 = nil
                C9 = nil
                Da = nil
                local Db = t ~= ""
                local Dc = type(t) == "string" and Db
                assert(Dc, "Namespace is required")
                assert(type(getgenv) == "function", "getgenv is unavailable")
                C8 = getgenv()
                assert(type(C8) == "table", "getgenv did not return a table")
                local Db_1 = C8[t]
                if Db_1 ~= nil then
                    local Dc_1 = type(Db_1) == "table" and type(Db_1.Unload) == "function"
                    assert(Dc_1, "Namespace is occupied")
                    Db_1.Unload()
                    assert(C8[t] == nil, "Previous instance did not release its namespace")
                end
                C9 = {}
                Da = { State = {}, Unloaded = false }
                Da.Track = function(B)
                    assert(type(B) == "function", "Cleanup must be callable")
                    if Da.Unloaded then
                        B()
                    else
                        table.insert(C9, B)
                    end
                    return B
                end
                Da.Unload = function()
                    local CZ_1
                    local CY_1
                    if Da.Unloaded then
                        return
                    end
                    Da.Unloaded = true
                    local CW = {}
                    local C2 = #C9
                    local C1 = -1
                    while false and C2 <= 1 or true and C2 >= 1 do
                        local C3 = C2
                        local CX_1 = table.remove(C9, C3)
                        CY_1, CZ_1 = pcall(CX_1)
                        if not CY_1 then
                            table.insert(CW, tostring(CZ_1))
                        end
                        C2 += C1
                    end
                    table.clear(Da.State)
                    if #CW > 0 then
                        error("Cleanup incomplete: " .. table.concat(CW, "; "), 0)
                    end
                    if C8[t] == Da then
                        C8[t] = nil
                    end
                end
                C8[t] = Da
                return Da
            end
        end
        Qz_11 = (Qz_11 + 17) % 60
    end
until (Qz_11 * 59 + 28) % 60 == 22
Qz_15 = {}
for k, v in pairs(AK()) do
    if type(v) == "table" then
        Qz_11 = table.insert
        Qz_2 = tonumber(v.order) or 0
        Qz_11(Qz_15, { id = k, order = Qz_2 })
    end
end
Qz_22 = 3
repeat
    if (Qz_22 or not Qz_22 or (Qz_22 or not Qz_22)) and ((not Qz_22 or Qz_22) and (Qz_22 or Qz_22)) and (not Qz_22 and not Qz_22 and (not Qz_22 or not Qz_22) or (Qz_22 or Qz_22 or Qz_22 and not Qz_22)) and not ((Qz_22 or not Qz_22 or (Qz_22 or not Qz_22)) and ((not Qz_22 or Qz_22) and (Qz_22 or Qz_22)) and (not Qz_22 and not Qz_22 and (not Qz_22 or not Qz_22) or (Qz_22 or Qz_22 or Qz_22 and not Qz_22))) then
        table.sort(Qz_15, fn731)
    else
        table.sort(Qz_15, fn731)
    end
    Qz_22 = (Qz_22 + 2) % 4
until (Qz_22 * 3 + 0) % 4 == 3
for i, v in ipairs(Qz_15) do
    table.insert(BD, v.id)
    Bx[v.id] = i
end
A1, AX, AU, AP = nil, nil, nil, nil
Qz_11 = 3
repeat
    if Qz_11 * 86521045 + 8 + 6 <= Qz_11 * 86521045 + 8 + 6 + 3 then
        A1 = {}
        AX = {}
        AU = {}
        AP = {}
    else
        AP = {}
        AU = {}
        AX = {}
        A1 = {}
    end
    Qz_11 = (Qz_11 + 1) % 4
until (Qz_11 * 1 + 1) % 4 == 1
Qz_2 = {}
for k, v in pairs(A0()) do
    if type(v) == "table" then
        Qz_11 = tonumber(v.tier) or 0
        AX[k] = Qz_11
        Qz_11 = table.insert
        Qz_22 = AX[k]
        Qz_14 = v.rarity
        Qz_4 = type(v.name) == "string" and v.name
        Qz_25 = Qz_4 or k
        Qz_11(Qz_2, { id = k, tier = Qz_22, rarity = Qz_14, name = Qz_25 })
    end
end
table.sort(Qz_2, fns.fn44)
Qz_14 = {}
for i, v in ipairs(Qz_2) do
    Qz_11 = type(v.rarity) == "string" and not Qz_14[v.rarity]
    if Qz_11 then
        Qz_14[v.rarity] = true
        table.insert(A1, v.rarity)
    end
    Qz_11 = v.name
    if AP[Qz_11] then
        Qz_11 = Qz_11 .. " (" .. v.id .. ")"
    end
    AP[Qz_11] = v.id
    table.insert(AU, Qz_11)
end
BJ = {}
BE = {}
for k, v in pairs(Ai()) do
    Qz_11 = type(v) == "table" and type(v.rarity) == "string"
    if Qz_11 then
        Qz_11 = tonumber(v.cashPerSecond) or 0
        Qz_2 = Qz_11
        Qz_11 = BE[v.rarity] == nil or Qz_2 < BE[v.rarity]
        if Qz_11 then
            BE[v.rarity] = Qz_2
        end
    end
end
for k in pairs(BE) do
    table.insert(BJ, k)
end
table.sort(BJ, fn621)
AY = {}
Qz_2 = { "NORMAL", "GOLD", "DIAMOND", "RADIOACTIVE", "RAINBOW" }
Qz_11 = {}
Qz_22 = A8("MutationConfig") or Qz_11
Qz_11 = {}
Qz_14 = Qz_22
for i, v in ipairs(Qz_2) do
    if Qz_14[v] ~= nil then
        Qz_11[v] = true
        table.insert(AY, v)
    end
end
Qz_22 = {}
for k, v in pairs(Qz_14) do
    Qz_14 = type(k) == "string" and type(v) == "table" and not Qz_11[k]
    if Qz_14 then
        table.insert(Qz_22, k)
    end
end
table.sort(Qz_22)
for i, v in ipairs(Qz_22) do
    table.insert(AY, v)
end
if #AY == 0 then
    AY = Qz_2
end
BR, BO = nil, nil
BR = {
    { label = "Max Clones", id = "MaxClones" },
    { label = "Spawn Speed", id = "CloneCooldown" },
    { label = "Steal Upgrade", id = "CloneMaxSteal" }
}
BO = {}
for i, v in ipairs(BR) do
    table.insert(BO, v.label)
end
By = nil
By = { "Game Auto Mode", "Best Safe", "Best Unlocked" }
for i, v in ipairs(BD) do
    table.insert(By, v)
end
Bn, AD, AR, Bp, Bq, AZ, AQ, AH, Av, BT, Bz, Ba, AN, As, BP, Bf, A2, AS, At, BH, Bg, Az, AL, BS, AM, Al, AT, Aj, A9, AF, Aq, BN, Bs, Bc, AC, Ap, Bo, AO, Bi, Ar, Bl, BB, AE, Ak, Bj, AG, BF, AV, AW, A4 = nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil
Bq = fn1047
AZ = fn705
AQ = fn1098
AH = fns.fn129
Av = fn1207
BT = fns.fn49
Bz = fns.fn513
Ba = fn1147
AN = fns.fn61
As = fn711
BP = fns.fn245
Bn = nil
Bf = fn964
A2 = fns.fn362
AS = fns.fn590
At = fn1150
BH = fns.fn519
Bg = fn1135
AD = {}
Az = fn796
AL = fn1321
BS = fns.fn262
AR = 0
AM = function(fZ)
    local GM = Az()
    local GM_3
    if #GM == 0 then
        if BH() > 0 then
            BI.LastStealActivity = os.clock()
            Bw("Steal", "Returning carried egg")
            BS(fZ)
            return
        end
        Bw("Steal", "No eggs match the filters")
        return
    end
    BI.LastStealActivity = os.clock()
    At()
    local max = math.max
    local floor = math.floor
    local GO_1
    local GP = Am("MaxPickup") or 1
    local GQ = max(1, floor(GP))
    local GN_1 = 0
    for i, v in ipairs(GM) do
        local GM_1 = not Ao() or BC.Steal ~= fZ or not BI.AutoSteal
        if GM_1 then
            break
        elseif BH() >= GQ then
            break
        elseif LocalPlayer:GetAttribute("InRagdoll") then
            break
        else
            local GM_2 = v.hen.Parent and v.hen:GetAttribute("EggHidden") ~= true
            if GM_2 then
                Bw("Steal", "Taking " .. tostring(v.eggType))
                local GL = BH()
                BT(CFrame.new(v.position + Vector3.new(0, 3, 0)))
                if not A3(0.2, "Steal", fZ) then
                    return
                end
                GM_3, GO_1 = A6("AreaService", "PickupEgg", v.baseId, v.placeholder)
                local GP_1 = not Ao() or BC.Steal ~= fZ
                if GP_1 then
                    return
                end
                if GM_3 and GO_1 then
                    GN_1 += 1
                    AL(function()
                        return BH() > GL
                    end, 1.5, "Steal", fZ)
                else
                    AD[v.key] = os.clock() + 15
                end
            end
        end
    end
    if BH() == 0 then
        if GN_1 == 0 then
            Bw("Steal", "Pickup rejected, trying other eggs")
        end
        return
    end
    Bw("Steal", "Returning to base")
    local GM_4 = BH()
    if BS(fZ) then
        AR += GM_4
        Bw("Steal", "Stolen " .. AR .. " eggs")
    else
        local GM_5 = Ao() and BC.Steal == fZ
        if GM_5 then
            Bw("Steal", "Deposit not confirmed")
        end
    end
end
Al = fn1057
AT = fns.fn132
Aj = fn866
A9 = function(g4)
    local HC
    local HD
    local HE
    local HF, HG, HH, HI, HJ, HK, HL
    local HN = 8
    while true do
        local HN_1 = 8714 - HN
        do
            if HN_1 < 8695 then
                if HN_1 < 8689 then
                    if HN_1 < 8686 then
                        if HN_1 < 5743 then
                            break
                        elseif HN_1 < 8646 then
                            break
                        elseif HN_1 < 8684 then
                            if HN_1 < 8683 then
                                break
                            end
                            HN = 9
                        elseif HN_1 < 8685 then
                            return nil
                        else
                            HN = 14
                        end
                    elseif HN_1 < 8687 then
                        if HN_1 == 8686 then
                            HN = 3
                        else
                            HN = 8646
                            continue
                        end
                    elseif HN_1 < 8688 then
                        HJ += HI
                        HN = 7
                    else
                        HK += HI
                        HN = 31
                    end
                elseif HN_1 < 8692 then
                    if HN_1 < 8690 then
                        if HN_1 == 8689 then
                            HN = if not HH then 30 else 2
                        else
                            HN = 8706
                            continue
                        end
                    elseif HN_1 < 8691 then
                        if HN_1 == 8690 then
                            HH = typeof(HG) == "CFrame"
                            HN = 5
                        else
                            HN = 11297
                            continue
                        end
                    elseif HN_1 == 8691 then
                        HN = if HK <= HG.Z - HI / 2 then 11 else 1
                    else
                        HN = 8697
                        continue
                    end
                elseif HN_1 < 8693 then
                    if HN_1 == 8692 then
                        HN = if HL then 17 else 16
                    else
                        HN = 8684
                        continue
                    end
                elseif HN_1 < 8694 then
                    HG = HF:FindFirstChild("EggUtils")
                    HN = 19
                else
                    break
                end
            elseif HN_1 < 8704 then
                if HN_1 < 8703 then
                    if HN_1 < 8699 then
                        if HN_1 < 8698 then
                            if HN_1 < 8696 then
                                HC = HG
                                HF = HC
                                HN = if HF then 4 else 15
                            elseif HN_1 < 8697 then
                                if HN_1 == 8696 then
                                    return HG
                                end
                                HN = 5743
                                continue
                            else
                                HK = -HG.Z + HI / 2
                                HN = 9
                            end
                        elseif HN_1 == 8698 then
                            HN = 25
                        else
                            HN = 8695
                            continue
                        end
                    elseif HN_1 < 8701 then
                        if HN_1 < 8700 then
                            HN = if HF then 13 else 3
                        elseif HN_1 == 8700 then
                            HK = not HH
                            HL = HJ <= HG.X - HI / 2
                            HN = if HL then 10 else 22
                        else
                            HN = 8687
                            continue
                        end
                    elseif HN_1 < 8702 then
                        HF, HG = pcall(function()
                            local Hv = require(HC)
                            local Hx = g4.innerEntity or {}
                            local Hx_1 = Hv.CreateEggModel(Hx.eggType, Hx.mutation, Hx.size)
                            if not Hx_1 then
                                return nil
                            end
                            local Hw_2 = Hv.GetValidEggCFrame(HD, Hx_1, HE)
                            Hx_1:Destroy()
                            return Hw_2
                        end)
                        HH = HF
                        HN = if HH then 24 else 5
                    elseif HN_1 == 8702 then
                        HH = HL
                        HN = 27
                    else
                        HN = 5671
                        continue
                    end
                else
                    HL = HD.CFrame:PointToWorldSpace(Vector3.new(HJ, HG.Y, HK))
                    local HM = true
                    for i, v in ipairs(HF) do
                        if (Vector3.new(v.X, 0, v.Z) - Vector3.new(HL.X, 0, HL.Z)).Magnitude < 5 then
                            HM = false
                            break
                        end
                    end
                    HN = if HM then 12 else 26
                end
            elseif HN_1 < 8708 then
                if HN_1 < 8706 then
                    if HN_1 < 8705 then
                        HL = HK
                        HN = 22
                    elseif HN_1 == 8705 then
                        HN = 23
                    else
                        HN = 11297
                        continue
                    end
                elseif HN_1 < 8707 then
                    HD = BP("PlotSurface")
                    HN = if not HD then 6 else 0
                elseif HN_1 == 8707 then
                    HN = 29
                else
                    HN = 8710
                    continue
                end
            elseif HN_1 < 8714 then
                if HN_1 < 8711 then
                    if HN_1 < 8709 then
                        if HN_1 == 8708 then
                            return nil
                        end
                        HN = 8707
                        continue
                    elseif HN_1 < 8710 then
                        if HN_1 == 8709 then
                            HN = if HH then 18 else 28
                        else
                            HN = 5040
                            continue
                        end
                    else
                        HF = HC:IsA("ModuleScript")
                        HN = 15
                    end
                elseif HN_1 < 8712 then
                    return HE + Vector3.new(0, 1.5, 0)
                elseif HN_1 < 8713 then
                    HE = CFrame.new(HH) * CFrame.Angles(0, math.pi / 2, 0)
                    HF = Ah:FindFirstChild("GameShared")
                    HG = HF
                    local HW = if HG then 1 else 0
                    local HU = 1574 * HW + 2460 * (1 - HW)
                    local HV = 2555 * HW + 1971 * (1 - HW)
                    HN = if (HU * 2124 + HV * 2517 + HU * HV) % 16777213 == 13795681 then 21 else 19
                else
                    HN = 27
                end
            elseif HN_1 < 11297 then
                if HN_1 < 9615 then
                    if HN_1 == 8714 then
                        HF = Aj()
                        HG = HD.Size / 2
                        HH = nil
                        HI = 6
                        HJ = -HG.X + 3
                        HN = 29
                    else
                        HN = 8695
                        continue
                    end
                else
                    break
                end
            else
                break
            end
        end
    end
end
AF = fns.fn593
if ((not Aq or Aq) and (Az and BP) and (not BP and not Bl and (not BP and Aq)) or (BP or not Aq or not Bl and not Aq) and (not Az and Aq and (Az or Aq))) and not ((not Aq or Aq) and (Az and BP) and (not BP and not Bl and (not BP and Aq)) or (BP or not Aq or not Bl and not Aq) and (not Az and Aq and (Az or Aq))) then
    Av = fns.fn588
else
    Aq = fns.fn588
end
if ((Av and AV or not Av and not Aq) and (not Aq or Ak or not Bp and AV) and ((not Av or AD or (Av or AV)) and (not AV or Ak or (not Av or not AD))) or ((not Ak and not Av or Av and Bp) and (Aq and not Bp or (not Bp or not Bp)) or (not Bp or Av or AV and not Ak) and ((Aq or not Av) and (Aq or Av)))) and not ((Av and AV or not Av and not Aq) and (not Aq or Ak or not Bp and AV) and ((not Av or AD or (Av or AV)) and (not AV or Ak or (not Av or not AD))) or ((not Ak and not Av or Av and Bp) and (Aq and not Bp or (not Bp or not Bp)) or (not Bp or Av or AV and not Ak) and ((Aq or not Av) and (Aq or Av)))) then
    Bs = function(hH)
        local item
        local In = {}
        local Iy = false
        repeat
            local Io = Ao() and BC.Place == hH and BI.AutoPlaceEggs
            local id
            if Io then
                local Io_6 = AI()
                if not Io_6 then
                    Bw("Place", "Waiting for data")
                else
                    local Il = Aq(Io_6.PlacedEggs)
                    local Ip = Am("MaxEggs")
                    local Iq = {}
                    for i, v in ipairs(AF(Io_6.Inventory)) do
                        id, item = v.id, v.item
                        local Is = type(item) == "table" and item.itemType == "Egg" and type(item.innerEntity) == "table"
                        if Is then
                            local It_4 = In[id] or 0
                            Is = It_4 <= os.clock()
                        end
                        if Is then
                            local eggType = item.innerEntity.eggType
                            local It_5 = A0()[eggType]
                            local Iu = It_5
                            if Iu then
                                local Iv = AZ(BI.PlaceRarities) or BI.PlaceRarities[It_5.rarity]
                                Iu = Iv
                            end
                            if Iu then
                                local insert = table.insert
                                local Iu_2 = AX[eggType] or 0
                                insert(Iq, { id = id, item = item, tier = Iu_2 })
                            end
                        end
                    end
                    table.sort(Iq, function(h4, h5)
                        return h4.tier > h5.tier
                    end)
                    if Ip and Il >= Ip then
                        Bw("Place", string.format("Egg slots full (%d/%d)", Il, Ip))
                    elseif #Iq == 0 then
                        Bw("Place", "No matching eggs in inventory")
                    else
                        local Ik = Iq[1]
                        local Io_9 = A9(Ik.item)
                        if not Io_9 then
                            Bw("Place", "No free spot on plot")
                        else
                            Bw("Place", "Placing " .. tostring(Ik.item.innerEntity.eggType))
                            local Im = AT(Ik.id)
                            local Ip_2 = Av()
                            local Iq_4 = Im and Ip_2 and Im.Parent ~= AQ()
                            if Iq_4 then
                                pcall(Ip_2.EquipTool, Ip_2, Im)
                                AL(function()
                                    return Im.Parent == AQ()
                                end, 1, "Place", hH)
                            end
                            local Iq_5 = not Ao() or BC.Place ~= hH
                            if Iq_5 then
                                return
                            end
                            A6("EggService", "PlaceEgg", Ik.id, Io_9)
                            local Io_10 = AL(function()
                                local Id = AI()
                                if not Id then
                                    return false
                                end
                                local Inventory = Id.Inventory
                                local If = type(Inventory) ~= "table" or Inventory[Ik.id] == nil
                                local Ij = if If then 1 else 0
                                local Ih = 968 * Ij + 3796 * (1 - Ij)
                                local Ii = 2062 * Ij + 1327 * (1 - Ij)
                                if not ((Ih * 1709 + Ii * 1055 + Ih * Ii) % 16777213 == 5825738) then
                                    If = Aq(Id.PlacedEggs) > Il
                                end
                                return If
                            end, 1.5, "Place", hH)
                            local Iq_6 = Im and Im.Parent == AQ()
                            if Iq_6 and Ip_2 then
                                pcall(Ip_2.UnequipTools, Ip_2)
                            end
                            if not Io_10 then
                                In[Ik.id] = os.clock() + 20
                                Bw("Place", "Placement rejected")
                            end
                        end
                    end
                end
                if not A3(0.75, "Place", hH) then
                    return
                end
            else
                Iy = true
            end
        until Iy
    end
    BN = fns.fn181
else
    BN = function(hH)
        local item
        local In = {}
        local Iy = false
        repeat
            local Io = Ao() and BC.Place == hH and BI.AutoPlaceEggs
            local id
            if Io then
                local Io_1 = AI()
                if not Io_1 then
                    Bw("Place", "Waiting for data")
                else
                    local Il = Aq(Io_1.PlacedEggs)
                    local Ip = Am("MaxEggs")
                    local Iq = {}
                    for i, v in ipairs(AF(Io_1.Inventory)) do
                        id, item = v.id, v.item
                        local Is = type(item) == "table" and item.itemType == "Egg" and type(item.innerEntity) == "table"
                        if Is then
                            local It_1 = In[id] or 0
                            Is = It_1 <= os.clock()
                        end
                        if Is then
                            local eggType = item.innerEntity.eggType
                            local It_2 = A0()[eggType]
                            local Iu = It_2
                            if Iu then
                                local Iv = AZ(BI.PlaceRarities) or BI.PlaceRarities[It_2.rarity]
                                Iu = Iv
                            end
                            if Iu then
                                local insert = table.insert
                                local Iu_1 = AX[eggType] or 0
                                insert(Iq, { id = id, item = item, tier = Iu_1 })
                            end
                        end
                    end
                    table.sort(Iq, function(h4, h5)
                        return h4.tier > h5.tier
                    end)
                    if Ip and Il >= Ip then
                        Bw("Place", string.format("Egg slots full (%d/%d)", Il, Ip))
                    elseif #Iq == 0 then
                        Bw("Place", "No matching eggs in inventory")
                    else
                        local Ik = Iq[1]
                        local Io_4 = A9(Ik.item)
                        if not Io_4 then
                            Bw("Place", "No free spot on plot")
                        else
                            Bw("Place", "Placing " .. tostring(Ik.item.innerEntity.eggType))
                            local Im = AT(Ik.id)
                            local Ip_1 = Av()
                            local Iq_1 = Im and Ip_1 and Im.Parent ~= AQ()
                            if Iq_1 then
                                pcall(Ip_1.EquipTool, Ip_1, Im)
                                AL(function()
                                    return Im.Parent == AQ()
                                end, 1, "Place", hH)
                            end
                            local Iq_2 = not Ao() or BC.Place ~= hH
                            if Iq_2 then
                                return
                            end
                            A6("EggService", "PlaceEgg", Ik.id, Io_4)
                            local Io_5 = AL(function()
                                local Id = AI()
                                if not Id then
                                    return false
                                end
                                local Inventory = Id.Inventory
                                local If = type(Inventory) ~= "table" or Inventory[Ik.id] == nil
                                local Ij = if If then 1 else 0
                                local Ih = 968 * Ij + 3796 * (1 - Ij)
                                local Ii = 2062 * Ij + 1327 * (1 - Ij)
                                if not ((Ih * 1709 + Ii * 1055 + Ih * Ii) % 16777213 == 5825738) then
                                    If = Aq(Id.PlacedEggs) > Il
                                end
                                return If
                            end, 1.5, "Place", hH)
                            local Iq_3 = Im and Im.Parent == AQ()
                            if Iq_3 and Ip_1 then
                                pcall(Ip_1.UnequipTools, Ip_1)
                            end
                            if not Io_5 then
                                In[Ik.id] = os.clock() + 20
                                Bw("Place", "Placement rejected")
                            end
                        end
                    end
                end
                if not A3(0.75, "Place", hH) then
                    return
                end
            else
                Iy = true
            end
        until Iy
    end
    Bs = fns.fn181
end
Bc = fns.fn149
AC = fns.fn566
Ap = fns.fn332
Bo = fns.fn140
AO = fns.fn585
Bp = 0
Bi = fn966
Ar = fns.fn107
Bl = fns.fn170
BB = fn642
AE = fn1181
Ak = fn1164
Bj = fn1233
AG = fns.fn206
BF = fn763
AV = fns.fn183
AW = fn1210
AJ.SetAutoSteal = fn1033
AJ.SetStealZones = fns.fn578
AJ.SetStealRarities = fns.fn384
AJ.SetStealDelay = fn840
AJ.SetAutoPlaceEggs = fn785
AJ.SetPlaceRarities = fn805
AJ.SetAutoHatchEggs = fn708
AJ.SetAutoEquipBest = fns.fn539
AJ.SetAutoManageClones = fn694
AJ.SetCloneTarget = fns.fn208
AJ.SetAutoUpgradeClones = fn1241
AJ.SetCloneUpgrades = fns.fn60
AJ.SetSyncCloneAutoSell = fn926
AJ.SetCloneAutoSellEggs = fns.fn89
A4 = fns.fn267
AJ.SetAutoSellBrainrots = fn1071
AJ.SetSellBrainrotRarities = fn631
AJ.SetKeepMutations = fn604
AJ.SetAutoSellEggs = fns.fn92
AJ.SetSellEggRarities = fn1385
AJ.SetSellInterval = fns.fn166
AJ.SetAutoUpgradeBase = fn971
AJ.SetAutoTreadmill = fn760
AJ.SetAutoUpgradeTreadmill = fns.fn126
AJ.SetAutoBuyTrails = fn777
AJ.SetAutoRebirth = fn680
AJ.SetAutoClaimPlaytime = fn1170
AJ.SetTeleportZone = fn669
AJ.TeleportToBase = fns.fn57
AJ.TeleportToZone = fn1277
AJ.Track(fn1141)
Qz_11 = function()
    local Qb
    local Library
    Qb = nil
    Library = nil
    local P5, P6, Options, P8, P9, SaveManager, Qd, Qe, Toggles, Qg, ThemeManager
    Qg = "Clone to Steal Eggs"
    Qe = "https://rscripts.net/@Ouroboros"
    Qb = "https://discord.gg/synapsex"
    P8 = "https://ouroboros-hub-rbx.web.app/"
    Library = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/Library.lua"))(), "Library load failed")
    ThemeManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/ThemeManager.lua"))(), "ThemeManager load failed")
    SaveManager = assert(loadstring(game:HttpGet("https://raw.githubusercontent.com/joustingmatch/ObsidianUltra/main/addons/SaveManager.lua"))(), "SaveManager load failed")
    Toggles, Options = Library.Toggles, Library.Options
    Bd(AJ, Library)
    P9 = function(o5, o6)
        local Mq
        if type(setclipboard) == "function" then
            Mq = setclipboard
        elseif type(toclipboard) == "function" then
            Mq = toclipboard
        end
        if not Mq then
            Library:Notify("Clipboard unavailable")
            return
        end
        local Mr = pcall(Mq, tostring(o5))
        if Mr then
            local Mq_1 = o6 or "Copied"
            Library:Notify(Mq_1)
        else
            Library:Notify("Clipboard copy failed")
        end
    end
    local Window = Library:CreateWindow({
        Title = "Ouroboros",
        Font = Enum.Font.BuilderSans,
        Footer = { { Text = Qb, Copyable = true }, "|", Qg, "|", "v0.1" },
        Icon = 132608042600488,
        NotifySide = "Right",
        ShowCustomCursor = false,
        CornerRadius = 0,
        SidebarCompacted = true,
        TabSwipeFrom = "bottom",
        Animations = { TabSwitch = true }
    })
    Qd = {}
    Qd[1] = Window:AddTab("Info", "info")
    Qd[4] = Window:AddTab("Main", "gamepad-2")
    Qd[2] = Window:AddTab("Player", "person-standing")
    Qd[3] = Window:AddTab("Settings", "settings")
    P5 = {
        [1] = Qd[4]:AddSubTab("Steal", "hand"),
        [2] = Qd[4]:AddSubTab("Clones", "users"),
        [3] = Qd[4]:AddSubTab("Eggs", "egg"),
        [4] = Qd[4]:AddSubTab("Sell", "coins"),
        [5] = Qd[4]:AddSubTab("Progress", "trending-up")
    }
    local function Qi(pe)
        local DiscordGroup = pe:AddLeftGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = Qb,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        return DiscordGroup
    end
    Qi(P5[1])
    Qi(P5[2])
    Qi(P5[3])
    Qi(P5[4])
    Qi(P5[5])
    Qi(Qd[2])
    Qi(Qd[3])
    local Qi_1 = { name = "getgenv", ok = Aw(getgenv) }
    local Qj_1 = Aw(game.HttpGet)
    local Qk = {}
    local Qj_2 = { Qi_1, { name = "HttpGet", ok = Qj_1 } }
    for i, v in ipairs(Qj_2) do
        if not v.ok then
            table.insert(Qk, v.name)
        end
    end
    local Qi_2 = #Qk == 0 and "(ready)"
    local Qj_3 = Qi_2 or "(missing " .. table.concat(Qk, ", ") .. ")"
    P6 = Qj_3
    local function Qi_3()
        local qE
        local pJ
        local pE
        local function pp(pq)
            return (tostring(pq):gsub("&", "&amp;"):gsub("<", "&lt;"):gsub(">", "&gt;"):gsub('"', "&quot;"):gsub("'", "&apos;"))
        end
        local function pr(ps, pt)
            return string.format('<font color="%s">%s</font>', pt, pp(ps))
        end
        local function pv(pw, px, py)
            return string.format("<b>%s</b> %s %s", pw, pr("-", "#5a6070"), pr(px, py))
        end
        local pA = "#7fd47f"
        pE = "Unknown"
        local pC = "#e8a34d"
        local pD = "#8b93a3"
        local pB = "#6ec1ff"
        pcall(function()
            local Mu_1
            local Mt_1
            if type(identifyexecutor) == "function" then
                Mu_1, Mt_1 = identifyexecutor()
                local Mv = Mu_1 ~= ""
                local Mw = type(Mu_1) == "string" and Mv
                if Mw then
                    local Mv_1 = type(Mt_1) == "string" and Mt_1 ~= "" and Mu_1 .. " " .. Mt_1
                    pE = Mv_1 or Mu_1
                end
            end
        end)
        pJ = os.clock()
        local function pK()
            local MB = math.floor(os.clock() - pJ)
            if MB < 60 then
                return MB .. "s"
            elseif MB < 3600 then
                return string.format("%dm %ds", MB // 60, MB % 60)
            else
                return string.format("%dh %dm", MB // 3600, MB % 3600 // 60)
            end
        end
        local UserGroup = Qd[1]:AddLeftGroupbox("User", "circle-user")
        UserGroup:AddPlayerInfo("InfoUserCard", { Player = LocalPlayer, Title = "User", HeaderIcon = "user", Collapsible = false })
        UserGroup:AddLabel(pv("User", LocalPlayer.DisplayName .. " @" .. LocalPlayer.Name, pA), true)
        UserGroup:AddLabel(pv("UserId", tostring(LocalPlayer.UserId), pB), true)
        UserGroup:AddLabel(pv("Executor", pE .. "  " .. P6, pA), true)
        UserGroup:AddDivider()
        local Label4 = UserGroup:AddLabel(pv("Session", pK(), pC), true)
        UserGroup:AddDivider()
        UserGroup:AddButton({
            Text = "Copy Username",
            Func = function()
                P9(LocalPlayer.Name, "Copied username")
            end
        })
        UserGroup:AddButton({
            Text = "Copy Profile Link",
            Func = function()
                P9("https://www.roblox.com/users/" .. tostring(LocalPlayer.UserId) .. "/profile", "Copied profile link")
            end
        })
        local DiscordGroup = Qd[1]:AddRightGroupbox("Discord", "message-circle")
        DiscordGroup:AddDiscordBox(nil, {
            Banner = 95892854151512,
            Avatar = 132608042600488,
            Title = "Ouroboros Hub",
            Subtitle = "Dupes, keyless scripts and updates",
            Status = "online",
            Accent = Color3.fromRGB(88, 101, 242),
            Link = Qb,
            Buttons = { { Text = "Copy Discord Invite", Icon = "copy", Copy = true } }
        })
        local SessionGroup = Qd[1]:AddRightGroupbox("Session", "signal")
        SessionGroup:AddLabel(pv("Game", Qg, pA), true)
        local Label3 = SessionGroup:AddLabel(pv("Players", tostring(#Players:GetPlayers()), pB), true)
        local Label2 = SessionGroup:AddLabel(pv("Job", string.sub(game.JobId, 1, 12) .. "...", pD), true)
        local Label = SessionGroup:AddLabel(pv("Ping", "--", pC), true)
        SessionGroup:AddButton({
            Text = "Rejoin Place",
            Func = function()
                pcall(function()
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                end)
            end
        })
        SessionGroup:AddButton({
            Text = "Copy Job ID",
            Func = function()
                P9(game.JobId, "Copied job id")
            end
        })
        local SocialsGroup = Qd[1]:AddRightGroupbox("Socials", "link")
        SocialsGroup:AddButton({
            Text = "Copy Discord",
            Func = function()
                P9(Qb, "Copied discord")
            end
        })
        SocialsGroup:AddButton({
            Text = "Copy Rscripts",
            Func = function()
                P9(Qe, "Copied rscripts")
            end
        })
        SocialsGroup:AddButton({
            Text = "Copy Website",
            Func = function()
                P9(P8, "Copied website")
            end
        })
        qE = task.spawn(function()
            while true do
                local MD = Ao() and not Library.Unloaded
                if MD then
                    Label4:SetText(pv("Session", pK(), pC))
                    Label3:SetText(pv("Players", tostring(#Players:GetPlayers()), pB))
                    Label2:SetText(pv("Job", string.sub(game.JobId, 1, 12) .. "...", pD))
                    local MD_1 = LocalPlayer:GetNetworkPing()
                    Label:SetText(pv("Ping", string.format("%dms", math.floor(MD_1 * 1000)), pC))
                    task.wait(1)
                    continue
                end
                break
            end
        end)
        AJ.Track(function()
            if coroutine.status(qE) ~= "dead" then
                task.cancel(qE)
            end
        end)
    end
    Qi_3()
    local function Qi_4()
        local rr
        local qI = {}
        local function qJ(qK, qL)
            qI[qL] = qK:AddLabel(Bh(qL), true)
        end
        local AutoStealGroup = P5[1]:AddRightGroupbox("Auto Steal", "hand")
        qJ(AutoStealGroup, "Steal")
        AutoStealGroup:AddToggle("AutoSteal", { Text = "Auto Steal", Default = false, Callback = AJ.SetAutoSteal })
        AutoStealGroup:AddDropdown("StealZones", {
            Text = "Zone Filter",
            Values = BD,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetStealZones
        })
        AutoStealGroup:AddDropdown("StealRarities", {
            Text = "Rarity Filter",
            Values = A1,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetStealRarities
        })
        AutoStealGroup:AddSlider("StealDelay", {
            Text = "Delay Between Steals",
            Default = 0.5,
            Min = 0.1,
            Max = 5,
            Rounding = 1,
            Suffix = "s",
            Callback = AJ.SetStealDelay
        })
        local TeleportsGroup = P5[1]:AddLeftGroupbox("Teleports", "map-pin")
        TeleportsGroup:AddButton({
            Text = "Teleport to Base",
            Func = function()
                if not AJ.TeleportToBase() then
                    Library:Notify("Could not find your base")
                end
            end
        })
        TeleportsGroup:AddDropdown("TeleportZone", { Text = "Zone", Values = BD, Default = 1, Callback = AJ.SetTeleportZone })
        TeleportsGroup:AddButton({
            Text = "Teleport to Zone",
            Func = function()
                if not AJ.TeleportToZone() then
                    Library:Notify("Could not find that zone")
                end
            end
        })
        local CloneManagerGroup = P5[2]:AddRightGroupbox("Clone Manager", "users")
        qJ(CloneManagerGroup, "Clones")
        CloneManagerGroup:AddToggle("AutoManageClones", { Text = "Auto Manage Clones", Default = false, Callback = AJ.SetAutoManageClones })
        CloneManagerGroup:AddDropdown("CloneTarget", { Text = "Clone Target", Values = By, Default = "Best Safe", Callback = AJ.SetCloneTarget })
        CloneManagerGroup:AddDivider("Upgrades")
        CloneManagerGroup:AddToggle("AutoUpgradeClones", { Text = "Auto Upgrade Clones", Default = false, Callback = AJ.SetAutoUpgradeClones })
        CloneManagerGroup:AddDropdown("CloneUpgrades", {
            Text = "Clone Upgrades",
            Values = BO,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetCloneUpgrades
        })
        CloneManagerGroup:AddDivider("Clone Auto Sell")
        CloneManagerGroup:AddToggle("SyncCloneAutoSell", { Text = "Apply Clone Auto Sell", Default = false, Callback = AJ.SetSyncCloneAutoSell })
        CloneManagerGroup:AddDropdown("CloneAutoSellEggs", {
            Text = "Auto Sell Stolen Eggs",
            Values = AU,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetCloneAutoSellEggs
        })
        local EggsGroup = P5[3]:AddRightGroupbox("Eggs", "egg")
        qJ(EggsGroup, "Place")
        EggsGroup:AddToggle("AutoPlaceEggs", { Text = "Auto Place Eggs", Default = false, Callback = AJ.SetAutoPlaceEggs })
        EggsGroup:AddDropdown("PlaceRarities", {
            Text = "Place Rarities",
            Values = A1,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetPlaceRarities
        })
        EggsGroup:AddDivider()
        qJ(EggsGroup, "Hatch")
        EggsGroup:AddToggle("AutoHatchEggs", { Text = "Auto Hatch Eggs", Default = false, Callback = AJ.SetAutoHatchEggs })
        EggsGroup:AddToggle("AutoEquipBest", { Text = "Auto Equip Best", Default = false, Callback = AJ.SetAutoEquipBest })
        local AutoSellGroup = P5[4]:AddRightGroupbox("Auto Sell", "coins")
        qJ(AutoSellGroup, "Sell")
        AutoSellGroup:AddToggle("AutoSellBrainrots", { Text = "Auto Sell Animals", Default = false, Callback = AJ.SetAutoSellBrainrots })
        AutoSellGroup:AddDropdown("SellBrainrotRarities", {
            Text = "Sell Animal Rarities",
            Values = BJ,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetSellBrainrotRarities
        })
        AutoSellGroup:AddDropdown("KeepMutations", {
            Text = "Keep Mutations",
            Values = AY,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetKeepMutations
        })
        AutoSellGroup:AddDivider()
        AutoSellGroup:AddToggle("AutoSellEggs", { Text = "Auto Sell Eggs", Default = false, Callback = AJ.SetAutoSellEggs })
        AutoSellGroup:AddDropdown("SellEggRarities", {
            Text = "Sell Egg Rarities",
            Values = A1,
            Multi = true,
            Default = {},
            AllowNull = true,
            Callback = AJ.SetSellEggRarities
        })
        AutoSellGroup:AddDivider()
        AutoSellGroup:AddSlider("SellInterval", {
            Text = "Sell Interval",
            Default = 5,
            Min = 1,
            Max = 60,
            Rounding = 0,
            Suffix = "s",
            Callback = AJ.SetSellInterval
        })
        local UpgradesGroup = P5[5]:AddRightGroupbox("Upgrades", "trending-up")
        qJ(UpgradesGroup, "Base")
        UpgradesGroup:AddToggle("AutoUpgradeBase", { Text = "Auto Upgrade Base", Default = false, Callback = AJ.SetAutoUpgradeBase })
        qJ(UpgradesGroup, "Trails")
        UpgradesGroup:AddToggle("AutoBuyTrails", { Text = "Auto Buy Trails", Default = false, Callback = AJ.SetAutoBuyTrails })
        qJ(UpgradesGroup, "Rebirth")
        UpgradesGroup:AddToggle("AutoRebirth", { Text = "Auto Rebirth", Default = false, Callback = AJ.SetAutoRebirth })
        qJ(UpgradesGroup, "Playtime")
        UpgradesGroup:AddToggle("AutoClaimPlaytime", { Text = "Auto Claim Playtime Rewards", Default = false, Callback = AJ.SetAutoClaimPlaytime })
        local TreadmillGroup = P5[5]:AddLeftGroupbox("Treadmill", "dumbbell")
        qJ(TreadmillGroup, "Treadmill")
        TreadmillGroup:AddToggle("AutoTreadmill", { Text = "Auto Go on Treadmill", Default = false, Callback = AJ.SetAutoTreadmill })
        qJ(TreadmillGroup, "TreadmillUpgrade")
        TreadmillGroup:AddToggle("AutoUpgradeTreadmill", { Text = "Auto Upgrade Treadmill", Default = false, Callback = AJ.SetAutoUpgradeTreadmill })
        rr = task.spawn(function()
            while true do
                local MI = Ao() and not Library.Unloaded
                if MI then
                    for k, v in pairs(qI) do
                        local MN = k
                        local MP = v
                        pcall(function()
                            MP:SetText(Bh(MN))
                        end)
                    end
                    task.wait(0.35)
                    continue
                end
                break
            end
        end)
        AJ.Track(function()
            if coroutine.status(rr) ~= "dead" then
                task.cancel(rr)
            end
        end)
    end
    Qi_4()
    local function Qi_5()
        local rx
        local MovementGroup = Qd[2]:AddLeftGroupbox("Movement", "person-standing")
        local FlightGroup = Qd[2]:AddRightGroupbox("Flight", "plane")
        rx = {
            [1] = false,
            [2] = 32,
            [3] = false,
            [4] = 60,
            [5] = false,
            [6] = false,
            [7] = false,
            [8] = nil,
            [9] = nil,
            [10] = {},
            [11] = nil,
            [12] = nil,
            [13] = nil,
            [14] = {}
        }
        local function ry()
            local MR = Av()
            if not MR then
                return
            end
            if rx[1] then
                if rx[8] == nil then
                    rx[8] = MR.WalkSpeed
                end
                MR.WalkSpeed = rx[2]
            elseif rx[8] ~= nil then
                MR.WalkSpeed = rx[8]
                rx[8] = nil
            end
        end
        local function rE()
            if rx[9] then
                pcall(function()
                    rx[9]:Destroy()
                end)
                rx[9] = nil
            end
            local MT = Av()
            if MT then
                MT.PlatformStand = false
            end
        end
        local function rJ()
            rE()
            local MV = AH()
            local MW = Av()
            local MX = not MW
            local MY = not MV
            local M1 = if MY then 1 else 0
            local M_ = 3208 * M1 + 2057 * (1 - M1)
            local M0 = 726 * M1 + 2024 * (1 - M1)
            if not ((M_ * 3793 + M0 * 223 + M_ * M0) % 16777213 == 14658850) then
                MY = MX
            end
            if MY then
                return
            end
            MW.PlatformStand = true
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
            bodyVelocity.Velocity = Vector3.zero
            bodyVelocity.Parent = MV
            rx[9] = bodyVelocity
        end
        local function rT()
            for k, v in pairs(rx[10]) do
                if k and k.Parent then
                    k.CanCollide = v
                end
            end
            table.clear(rx[10])
        end
        local function rY()
            for k, v in pairs(rx[14]) do
                if k and k.Parent then
                    k.HoldDuration = v.HoldDuration
                    k.MaxActivationDistance = v.MaxActivationDistance
                    k.RequiresLineOfSight = v.RequiresLineOfSight
                end
            end
            table.clear(rx[14])
        end
        local function onDescendantAdded(r3)
            if not r3:IsA("ProximityPrompt") then
                return
            end
            if not rx[14][r3] then
                rx[14][r3] = {
                    HoldDuration = r3.HoldDuration,
                    MaxActivationDistance = r3.MaxActivationDistance,
                    RequiresLineOfSight = r3.RequiresLineOfSight
                }
            end
            r3.HoldDuration = 0
            r3.MaxActivationDistance = 50
            r3.RequiresLineOfSight = false
        end
        MovementGroup:AddToggle("WalkSpeedEnabled", {
            Text = "WalkSpeed",
            Default = false,
            Callback = function(r5)
                rx[1] = r5
                ry()
            end
        })
        MovementGroup:AddSlider("WalkSpeed", {
            Text = "Speed",
            Default = 32,
            Min = 16,
            Max = 250,
            Rounding = 0,
            Callback = function(r8)
                rx[2] = r8
                if rx[1] then
                    ry()
                end
            end
        })
        MovementGroup:AddToggle("InfJump", {
            Text = "Infinite Jump",
            Default = false,
            Callback = function(sb)
                rx[6] = sb
                if rx[12] then
                    rx[12]:Disconnect()
                    rx[12] = nil
                end
                if sb then
                    rx[12] = UserInputService.JumpRequest:Connect(function()
                        local Nk = not Ao() or not rx[6]
                        if Nk then
                            return
                        end
                        local Nk_1 = Av()
                        if Nk_1 then
                            Nk_1:ChangeState(Enum.HumanoidStateType.Jumping)
                        end
                    end)
                end
            end
        })
        MovementGroup:AddToggle("NoClip", {
            Text = "Noclip",
            Default = false,
            Callback = function(so)
                rx[5] = so
                if rx[11] then
                    rx[11]:Disconnect()
                    rx[11] = nil
                end
                if not so then
                    rT()
                    return
                end
                rx[11] = RunService.Stepped:Connect(function()
                    local Nn = not Ao() or not rx[5]
                    if Nn then
                        return
                    end
                    local Nn_1 = AQ()
                    if not Nn_1 then
                        return
                    end
                    for i, descendant in ipairs(Nn_1:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            if rx[10][descendant] == nil then
                                rx[10][descendant] = descendant.CanCollide
                            end
                            descendant.CanCollide = false
                        end
                    end
                end)
            end
        })
        MovementGroup:AddToggle("InstantProximityPrompt", {
            Text = "Instant ProximityPrompt",
            Default = false,
            Callback = function(sF)
                rx[7] = sF
                if rx[13] then
                    rx[13]:Disconnect()
                    rx[13] = nil
                end
                if not sF then
                    rY()
                    return
                end
                for i, descendant in ipairs(BQ:GetDescendants()) do
                    onDescendantAdded(descendant)
                end
                rx[13] = BQ.DescendantAdded:Connect(onDescendantAdded)
            end
        })
        FlightGroup:AddToggle("Fly", {
            Text = "Fly",
            Default = false,
            Callback = function(sO)
                rx[3] = sO
                if sO then
                    rJ()
                else
                    rE()
                end
            end
        })
        FlightGroup:AddSlider("FlySpeed", {
            Text = "Fly Speed",
            Default = 60,
            Min = 10,
            Max = 400,
            Rounding = 0,
            Callback = function(sS)
                rx[4] = sS
            end
        })
        local connection2 = RunService.RenderStepped:Connect(function()
            local NK = not Ao()
            local NP = if NK then 1 else 0
            local NN = 57 * NP + 351 * (1 - NP)
            local NO = 3084 * NP + 3505 * (1 - NP)
            if not ((NN * 3193 + NO * 2630 + NN * NO) % 16777213 == 8468709) then
                NK = not rx[3]
            end
            if not NK then
                NK = not rx[9]
            end
            if NK then
                return
            end
            if UserInputService:GetFocusedTextBox() then
                rx[9].Velocity = Vector3.zero
                return
            end
            local CurrentCamera = BQ.CurrentCamera
            if not CurrentCamera then
                return
            end
            local NL = Vector3.zero
            if UserInputService:IsKeyDown(Enum.KeyCode.W) then
                NL += CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.S) then
                NL -= CurrentCamera.CFrame.LookVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.A) then
                NL -= CurrentCamera.CFrame.RightVector
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.D) then
                NL += CurrentCamera.CFrame.RightVector
            end
            local NP_1 = if UserInputService:IsKeyDown(Enum.KeyCode.Space) then 1 else 0
            if NP_1 == 1 then
                NL += Vector3.yAxis
            end
            if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                NL -= Vector3.yAxis
            end
            if NL.Magnitude > 0 then
                rx[9].Velocity = NL.Unit * rx[4]
            else
                rx[9].Velocity = Vector3.zero
            end
        end)
        local connection = LocalPlayer.CharacterAdded:Connect(function()
            task.wait(0.2)
            if not Ao() then
                return
            end
            ry()
            if rx[3] then
                rJ()
            end
        end)
        AJ.Track(function()
            connection2:Disconnect()
            connection:Disconnect()
            if rx[11] then
                rx[11]:Disconnect()
            end
            if rx[12] then
                rx[12]:Disconnect()
            end
            if rx[13] then
                rx[13]:Disconnect()
            end
            rE()
            rT()
            rY()
            if rx[8] ~= nil then
                local NR = Av()
                if NR then
                    NR.WalkSpeed = rx[8]
                end
            end
        end)
    end
    Qi_5()
    local function Qi_6()
        local OS, OT, OU, OV, OW, Label, OY, OZ, O_, O0, O1, O2, O3, O4
        OZ = {}
        OS = {}
        O2 = nil
        O_ = 0
        O3 = 0
        OU = false
        OV = os.clock()
        local MenuGroup = Qd[3]:AddLeftGroupbox("Menu", "logs")
        MenuGroup:AddToggle("AntiAfk", { Text = "Anti-AFK", Default = true })
        Label = MenuGroup:AddLabel("AFK triggers: 0")
        O0 = function()
            local CurrentCamera
            CurrentCamera = BQ.CurrentCamera
            local NU = not CurrentCamera or not Aw(BA.CaptureController) or not Aw(BA.ClickButton2)
            if NU then
                return false
            end
            local NU_1 = pcall(function()
                BA:CaptureController()
                BA:ClickButton2(Vector2.new(0, 0), CurrentCamera.CFrame)
            end)
            if not NU_1 then
                return false
            end
            O3 += 1
            OV = os.clock()
            pcall(function()
                Label:SetText("AFK triggers: " .. O3)
            end)
            return true
        end
        OW = function(tK)
            pcall(function()
                Bu:SetGameplayPausedNotificationEnabled(not tK)
            end)
            pcall(function()
                local RobloxNetworkPauseNotificati = Bt:FindFirstChild("RobloxNetworkPauseNotification")
                if RobloxNetworkPauseNotificati then
                    RobloxNetworkPauseNotificati.Enabled = not tK
                end
            end)
            if not tK then
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
        OT = function(t_)
            local N_ = t_.ClassName == "ParticleEmitter"
            local N3 = if N_ then 1 else 0
            local N1 = 3849 * N3 + 3596 * (1 - N3)
            local N2 = 772 * N3 + 3680 * (1 - N3)
            if not ((N1 * 3607 + N2 * 1634 + N1 * N2) % 16777213 == 1339006) then
                N_ = t_.ClassName == "Trail"
            end
            if not N_ then
                N_ = t_.ClassName == "Smoke"
            end
            if not N_ then
                N_ = t_.ClassName == "Fire"
            end
            if not N_ then
                N_ = t_.ClassName == "Sparkles"
            end
            if not N_ then
                N_ = t_.ClassName == "Explosion"
            end
            if not N_ then
                N_ = t_.ClassName == "Beam"
            end
            if N_ then
                if OZ[t_] == nil then
                    OZ[t_] = t_.Enabled
                end
                pcall(function()
                    t_.Enabled = false
                end)
            end
        end
        O4 = function()
            for k, v in pairs(OZ) do
                local N8 = k
                local Oa = v
                if N8.Parent then
                    pcall(function()
                        N8.Enabled = Oa
                    end)
                end
            end
            table.clear(OZ)
            if O2 then
                pcall(function()
                    settings().Rendering.QualityLevel = O2.Quality
                end)
                Lighting.GlobalShadows = O2.Shadows
                Lighting.FogEnd = O2.Fog
                O2 = nil
            end
        end
        MenuGroup:AddToggle("AntiGameplayPause", { Text = "No Gameplay Paused", Default = true })
        MenuGroup:AddToggle("AutoReconnect", { Text = "Auto Reconnect on Kick", Default = false })
        MenuGroup:AddToggle("Disable3D", {
            Text = "Disable 3D Rendering",
            Default = false,
            Callback = function(ue)
                pcall(function()
                    RunService:Set3dRenderingEnabled(not ue)
                end)
            end
        })
        MenuGroup:AddToggle("FpsBoost", {
            Text = "FPS Boost",
            Default = false,
            Callback = function(uj)
                if uj then
                    if not O2 then
                        O2 = {
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
                    for i, descendant in ipairs(BQ:GetDescendants()) do
                        pcall(OT, descendant)
                    end
                else
                    O4()
                end
            end
        })
        MenuGroup:AddToggle("HideUiOnStart", { Text = "Hide UI On Start", Default = false })
        MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })
        Library.ToggleKeybind = Options.MenuKeybind
        OW(true)
        local ScriptGroup = Qd[3]:AddLeftGroupbox("Script", "terminal")
        ScriptGroup:AddButton({
            Text = "Unload Script",
            Func = function()
                Library:Unload()
            end
        })
        Toggles.AntiGameplayPause:OnChanged(function()
            OW(Toggles.AntiGameplayPause.Value)
        end)
        if Toggles.AntiGameplayPause.Value then
            OW(true)
        end
        table.insert(OS, LocalPlayer.Idled:Connect(function()
            if Toggles.AntiAfk.Value and not Library.Unloaded then
                O0()
            end
        end))
        table.insert(OS, BQ.DescendantAdded:Connect(function(uC)
            if Toggles.FpsBoost.Value then
                OT(uC)
            end
        end))
        O1 = function(uG)
            if OU or Library.Unloaded or not Toggles.AutoReconnect.Value then
                return
            end
            OU = true
            local Ot = O_
            local Ou_1 = pcall(function()
                if uG then
                    TeleportService:Teleport(game.PlaceId, LocalPlayer)
                else
                    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, LocalPlayer)
                end
            end)
            if not Ou_1 then
                OU = false
                if not uG and Ot == O_ then
                    task.delay(1.5, function()
                        if Ot == O_ then
                            O1(true)
                        end
                    end)
                end
            end
        end
        table.insert(OS, TeleportService.TeleportInitFailed:Connect(function(uY)
            local Oy
            if uY == LocalPlayer and OU then
                OU = false
                Oy = O_
                task.delay(3, function()
                    if Oy == O_ then
                        O1(true)
                    end
                end)
            end
        end))
        task.spawn(function()
            local RobloxPromptGui = Bt:WaitForChild("RobloxPromptGui", 30)
            local OG = RobloxPromptGui and RobloxPromptGui:WaitForChild("promptOverlay", 30)
            if Library.Unloaded or not OG then
                return
            end
            table.insert(OS, OG.ChildAdded:Connect(function(vc)
                if vc.Name == "ErrorPrompt" then
                    O1(false)
                end
            end))
        end)
        OY = task.spawn(function()
            while not Library.Unloaded do
                if Toggles.AntiGameplayPause.Value then
                    OW(true)
                end
                local OJ = Toggles.AntiAfk.Value and os.clock() - OV >= 60
                if OJ then
                    O0()
                end
                task.wait(1)
            end
        end)
        AJ.Track(function()
            O_ += 1
            for i, v in ipairs(OS) do
                v:Disconnect()
            end
            pcall(task.cancel, OY)
            OW(false)
            O4()
            pcall(function()
                RunService:Set3dRenderingEnabled(true)
            end)
        end)
    end
    Qi_6()
    local function Qi_7()
        local PZ, P_, P0, P1
        ThemeManager:SetLibrary(Library)
        ThemeManager:SetFolder("MyScriptHub")
        ThemeManager:SaveDefault("Evil Hello Kitty")
        ThemeManager:ApplyToTab(Qd[3])
        SaveManager:SetLibrary(Library)
        SaveManager:IgnoreThemeSettings()
        SaveManager:SetIgnoreIndexes({ "MenuKeybind", "SaveManager_ImportSource" })
        SaveManager:SetFolder("OuroborosHub/CloneToStealEggs")
        local P2 = SaveManager:BuildConfigSection(Qd[3])
        PZ = function(vD, vE)
            local Pb_1 = (vD == "Toggle" and Toggles or Options)[vE]
            local Pa_2 = type(Pb_1) == "table" and Pb_1.Type == vD
            return Pa_2 and Pb_1 or nil
        end
        P0 = function(vN, vO)
            local Type = vO.Type
            if Type == "Toggle" then
                return { idx = vN, type = "Toggle", value = vO.Value == true }
            elseif Type == "Slider" then
                return { idx = vN, type = "Slider", value = tostring(vO.Value) }
            elseif Type == "Dropdown" then
                return { idx = vN, type = "Dropdown", multi = vO.Multi == true, value = vO.Value }
            elseif Type == "Input" then
                local Pf = vO.Value or ""
                return { idx = vN, type = "Input", text = tostring(Pf) }
            elseif Type == "ColorPicker" then
                return { idx = vN, type = "ColorPicker", value = vO.Value:ToHex(), transparency = vO.Transparency }
            elseif Type == "KeyPicker" then
                return {
                    idx = vN,
                    type = "KeyPicker",
                    mode = vO.Mode,
                    key = vO.Value,
                    modifiers = vO.Modifiers,
                    toggled = vO.Toggled
                }
            else
                return nil
            end
        end
        P_ = function()
            local Pl = {}
            for i, v in ipairs({ Toggles, Options }) do
                for k, v in pairs(v) do
                    local Pm = type(v) == "table" and type(v.Type) == "string" and not SaveManager.Ignore[k]
                    if Pm then
                        local Pm_1 = P0(k, v)
                        if Pm_1 then
                            Pl[#Pl + 1] = Pm_1
                        end
                    end
                end
            end
            table.sort(Pl, function(vY, vZ)
                if vY.type ~= vZ.type then
                    return vY.type < vZ.type
                end
                return vY.idx < vZ.idx
            end)
            return { objects = Pl }
        end
        P1 = function(v0)
            local PC
            PC = nil
            local PD = type(v0) ~= "table" or type(v0.idx) ~= "string" or type(v0.type) ~= "string" or SaveManager.Ignore[v0.idx]
            if PD then
                return false
            end
            PC = PZ(v0.type, v0.idx)
            if not PC then
                return false
            end
            local PD_1 = pcall(function()
                if v0.type == "Input" then
                    if type(v0.text) ~= "string" then
                        return
                    end
                    PC:SetValue(v0.text)
                elseif v0.type == "ColorPicker" then
                    PC:SetValueRGB(Color3.fromHex(v0.value), v0.transparency)
                elseif v0.type == "KeyPicker" then
                    PC:SetValue({ v0.key, v0.mode, v0.modifiers })
                    if v0.mode == "Toggle" and v0.toggled ~= nil then
                        PC.Toggled = v0.toggled
                        PC:Update()
                    end
                else
                    PC:SetValue(v0.value)
                end
            end)
            return PD_1
        end
        P2:AddDivider()
        P2:AddInput("SaveManager_ImportSource", { Text = "Paste exported config here", Finished = true, AllowEmpty = true })
        P2:AddButton("Export Config to Clipboard", function()
            local PG_1
            local PF_1
            PF_1, PG_1 = pcall(Bv.JSONEncode, Bv, P_())
            if PF_1 then
                local PF_2 = Aw(setclipboard) and setclipboard
                local PH = PF_2
                if not PH then
                    local PF_3 = Aw(toclipboard) and toclipboard
                    PH = PF_3 or nil
                end
                local PF_4 = PH
                local PH_1 = type(PF_4) == "function" and pcall(PF_4, PG_1)
                if PH_1 then
                    Library:Notify("Config copied to clipboard", 6)
                    return
                end
                Library:Notify("Your executor does not support copying to the clipboard")
                return
            end
            Library:Notify("Failed to encode the config")
        end)
        P2:AddButton("Import Config from Clipboard Text", function()
            local PM_1
            local PK = Options.SaveManager_ImportSource.Value or ""
            local PK_1
            local PL = tostring(PK):match("^%s*(.-)%s*$")
            if PL == "" then
                Library:Notify("Paste an exported config into the box first")
                return
            end
            if #PL > 262144 then
                Library:Notify("That config is too large")
                return
            end
            PK_1, PM_1 = pcall(Bv.JSONDecode, Bv, PL)
            local PL_1 = not PK_1 or type(PM_1) ~= "table" or type(PM_1.objects) ~= "table"
            if PL_1 then
                Library:Notify("That is not a valid exported config")
                return
            end
            if #PM_1.objects > 2048 then
                Library:Notify("That config has too many records")
                return
            end
            local PK_2 = 0
            for i, v in ipairs(PM_1.objects) do
                if P1(v) then
                    PK_2 += 1
                end
            end
            if PK_2 == 0 then
                Library:Notify("No settings in that config matched this script")
                return
            end
            Options.SaveManager_ImportSource:SetValue("")
            local PM_2 = PK_2 == 1 and "" or "s"
            Library:Notify(("Imported %d setting%s"):format(PK_2, PM_2), 6)
        end)
        local function P2_1(wz, wA)
            if Toggles[wz] then
                wA(Toggles[wz].Value)
            end
        end
        local function P3(wD, wE)
            if Options[wD] then
                wE(Options[wD].Value)
            end
        end
        P3("StealZones", AJ.SetStealZones)
        P3("StealRarities", AJ.SetStealRarities)
        P3("StealDelay", AJ.SetStealDelay)
        P3("TeleportZone", AJ.SetTeleportZone)
        P3("CloneTarget", AJ.SetCloneTarget)
        P3("CloneUpgrades", AJ.SetCloneUpgrades)
        P3("CloneAutoSellEggs", AJ.SetCloneAutoSellEggs)
        P3("PlaceRarities", AJ.SetPlaceRarities)
        P3("SellBrainrotRarities", AJ.SetSellBrainrotRarities)
        P3("KeepMutations", AJ.SetKeepMutations)
        P3("SellEggRarities", AJ.SetSellEggRarities)
        P3("SellInterval", AJ.SetSellInterval)
        P2_1("AutoUpgradeClones", AJ.SetAutoUpgradeClones)
        P2_1("SyncCloneAutoSell", AJ.SetSyncCloneAutoSell)
        P2_1("AutoSteal", AJ.SetAutoSteal)
        P2_1("AutoManageClones", AJ.SetAutoManageClones)
        P2_1("AutoPlaceEggs", AJ.SetAutoPlaceEggs)
        P2_1("AutoHatchEggs", AJ.SetAutoHatchEggs)
        P2_1("AutoEquipBest", AJ.SetAutoEquipBest)
        P2_1("AutoSellBrainrots", AJ.SetAutoSellBrainrots)
        P2_1("AutoSellEggs", AJ.SetAutoSellEggs)
        P2_1("AutoUpgradeBase", AJ.SetAutoUpgradeBase)
        P2_1("AutoTreadmill", AJ.SetAutoTreadmill)
        P2_1("AutoUpgradeTreadmill", AJ.SetAutoUpgradeTreadmill)
        P2_1("AutoBuyTrails", AJ.SetAutoBuyTrails)
        P2_1("AutoRebirth", AJ.SetAutoRebirth)
        P2_1("AutoClaimPlaytime", AJ.SetAutoClaimPlaytime)
        if Toggles.HideUiOnStart and Toggles.HideUiOnStart.Value then
            pcall(function()
                Library:Toggle(false)
            end)
        end
    end
    Qi_7()
end
Qz_22, Qz_14 = pcall(Qz_11)
if not Qz_22 then
    Qz_11 = 5
    repeat
        if Qz_11 * 119599371 + 13 + 6 <= Qz_11 * 119599371 + 13 + 6 + 6 then
            warn("[Ouroboros Clone to Steal Eggs] UI failed: ", Qz_14)
            warn(debug.traceback())
            pcall(fns.fn117)
        else
            warn("[Ouroboros Clone to Steal Eggs] UI failed: ", Qz_14)
            warn(debug.traceback())
            pcall(fns.fn117)
        end
        Qz_11 = (Qz_11 + 0) % 8
    until (Qz_11 * 5 + 7) % 8 == 0
end
